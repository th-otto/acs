
make_a_window:
[0002a0aa] 4eb9 0004 f41a            jsr        Awi_create
[0002a0b0] 2008                      move.l     a0,d0
[0002a0b2] 6604                      bne.s      make_a_window_1
[0002a0b4] 91c8                      suba.l     a0,a0
[0002a0b6] 4e71                      nop
make_a_window_1:
[0002a0b8] 4e75                      rts

close_uc:
[0002a0ba] 2f0a                      move.l     a2,-(a7)
[0002a0bc] 2448                      movea.l    a0,a2
[0002a0be] 5379 000b cca2            subq.w     #1,visible_editors
[0002a0c4] 3039 000b cca2            move.w     visible_editors,d0
[0002a0ca] 6e18                      bgt.s      close_uc_1
[0002a0cc] 2279 000a f0de            movea.l    parts_window,a1
[0002a0d2] 3229 0020                 move.w     32(a1),d1
[0002a0d6] 6b0c                      bmi.s      close_uc_1
[0002a0d8] 2269 0072                 movea.l    114(a1),a1
[0002a0dc] 2079 000a f0de            movea.l    parts_window,a0
[0002a0e2] 4e91                      jsr        (a1)
close_uc_1:
[0002a0e4] 302a 0020                 move.w     32(a2),d0
[0002a0e8] 6b08                      bmi.s      close_uc_2
[0002a0ea] 204a                      movea.l    a2,a0
[0002a0ec] 4eb9 0005 013e            jsr        Awi_closed
close_uc_2:
[0002a0f2] 245f                      movea.l    (a7)+,a2
[0002a0f4] 4e75                      rts

close_me:
[0002a0f6] 2f0a                      move.l     a2,-(a7)
[0002a0f8] 2f0b                      move.l     a3,-(a7)
[0002a0fa] 2448                      movea.l    a0,a2
[0002a0fc] 2650                      movea.l    (a0),a3
[0002a0fe] 0c6b 0001 0008            cmpi.w     #$0001,8(a3)
[0002a104] 6706                      beq.s      close_me_1
[0002a106] 202a 0014                 move.l     20(a2),d0
[0002a10a] 6608                      bne.s      close_me_2
close_me_1:
[0002a10c] 204a                      movea.l    a2,a0
[0002a10e] 6100 ffaa                 bsr.w      close_uc
[0002a112] 6010                      bra.s      close_me_3
close_me_2:
[0002a114] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a11a] 214a 0258                 move.l     a2,600(a0)
[0002a11e] 206b 001a                 movea.l    26(a3),a0
[0002a122] 4e90                      jsr        (a0)
close_me_3:
[0002a124] 265f                      movea.l    (a7)+,a3
[0002a126] 245f                      movea.l    (a7)+,a2
[0002a128] 4e75                      rts

open_me:
[0002a12a] 2f0a                      move.l     a2,-(a7)
[0002a12c] 2448                      movea.l    a0,a2
[0002a12e] 3039 000b cca2            move.w     visible_editors,d0
[0002a134] 6616                      bne.s      open_me_1
[0002a136] 2279 000a f0de            movea.l    parts_window,a1
[0002a13c] 2269 000c                 movea.l    12(a1),a1
[0002a140] 2079 000a f0de            movea.l    parts_window,a0
[0002a146] 4e91                      jsr        (a1)
[0002a148] 4a40                      tst.w      d0
[0002a14a] 6618                      bne.s      open_me_2
open_me_1:
[0002a14c] 5279 000b cca2            addq.w     #1,visible_editors
[0002a152] 204a                      movea.l    a2,a0
[0002a154] 4eb9 0004 f69e            jsr        Awi_open
[0002a15a] 5240                      addq.w     #1,d0
[0002a15c] 660a                      bne.s      open_me_3
[0002a15e] 204a                      movea.l    a2,a0
[0002a160] 6100 ff58                 bsr        close_uc
open_me_2:
[0002a164] 70ff                      moveq.l    #-1,d0
[0002a166] 600a                      bra.s      open_me_4
open_me_3:
[0002a168] 204a                      movea.l    a2,a0
[0002a16a] 4eb9 0002 3714            jsr        glue_parts
[0002a170] 4240                      clr.w      d0
open_me_4:
[0002a172] 245f                      movea.l    (a7)+,a2
[0002a174] 4e75                      rts

top_me:
[0002a176] 2f0a                      move.l     a2,-(a7)
[0002a178] 2448                      movea.l    a0,a2
[0002a17a] 3039 000b cca2            move.w     visible_editors,d0
[0002a180] 6714                      beq.s      top_me_1
[0002a182] 2079 000a f0de            movea.l    parts_window,a0
[0002a188] 4eb9 0004 f0ca            jsr        Awi_show
[0002a18e] 204a                      movea.l    a2,a0
[0002a190] 4eb9 0002 3714            jsr        glue_parts
top_me_1:
[0002a196] 204a                      movea.l    a2,a0
[0002a198] 4eb9 0005 0454            jsr        Awi_topped
[0002a19e] 245f                      movea.l    (a7)+,a2
[0002a1a0] 4e75                      rts

move_me:
[0002a1a2] 2f0b                      move.l     a3,-(a7)
[0002a1a4] 2648                      movea.l    a0,a3
[0002a1a6] 4eb9 0005 07bc            jsr        Awi_moved
[0002a1ac] 204b                      movea.l    a3,a0
[0002a1ae] 4eb9 0002 3714            jsr        glue_parts
[0002a1b4] 265f                      movea.l    (a7)+,a3
[0002a1b6] 4e75                      rts

key_me:
[0002a1b8] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0002a1bc] 2448                      movea.l    a0,a2
[0002a1be] 3800                      move.w     d0,d4
[0002a1c0] 3601                      move.w     d1,d3
[0002a1c2] 2050                      movea.l    (a0),a0
[0002a1c4] 2408                      move.l     a0,d2
[0002a1c6] 6700 0090                 beq        key_me_1
[0002a1ca] 0c68 0001 0008            cmpi.w     #$0001,8(a0)
[0002a1d0] 6600 0086                 bne        key_me_1
[0002a1d4] 72ff                      moveq.l    #-1,d1
[0002a1d6] c203                      and.b      d3,d1
[0002a1d8] b23c 000e                 cmp.b      #$0E,d1
[0002a1dc] 675a                      beq.s      key_me_2
[0002a1de] 4a43                      tst.w      d3
[0002a1e0] 6f60                      ble.s      key_me_3
[0002a1e2] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a1e8] 214a 0258                 move.l     a2,600(a0)
[0002a1ec] 1001                      move.b     d1,d0
[0002a1ee] 4eb9 0004 372c            jsr        Ach_toupper
[0002a1f4] 4880                      ext.w      d0
[0002a1f6] b07c 0050                 cmp.w      #$0050,d0
[0002a1fa] 6734                      beq.s      key_me_4
[0002a1fc] 6e0e                      bgt.s      key_me_5
[0002a1fe] 907c 000e                 sub.w      #$000E,d0
[0002a202] 6734                      beq.s      key_me_2
[0002a204] 907c 0038                 sub.w      #$0038,d0
[0002a208] 6716                      beq.s      key_me_6
[0002a20a] 6044                      bra.s      key_me_7
key_me_5:
[0002a20c] 907c 0052                 sub.w      #$0052,d0
[0002a210] 6706                      beq.s      key_me_8
[0002a212] 5340                      subq.w     #1,d0
[0002a214] 6712                      beq.s      key_me_9
[0002a216] 6038                      bra.s      key_me_7
key_me_8:
[0002a218] 4eb9 0002 dac2            jsr        edob_refs
[0002a21e] 6034                      bra.s      key_me_10
key_me_6:
[0002a220] 4eb9 0002 ddaa            jsr        edob_aflags
[0002a226] 602c                      bra.s      key_me_10
key_me_9:
[0002a228] 4eb9 0002 def8            jsr        edob_specs
[0002a22e] 6024                      bra.s      key_me_10
key_me_4:
[0002a230] 4eb9 0002 ec5e            jsr        edob_pos
[0002a236] 601c                      bra.s      key_me_10
key_me_2:
[0002a238] 204a                      movea.l    a2,a0
[0002a23a] 4eb9 0004 c8b2            jsr        Awi_help
[0002a240] 6012                      bra.s      key_me_10
key_me_3:
[0002a242] b63c 0009                 cmp.b      #$09,d3
[0002a246] 6608                      bne.s      key_me_7
[0002a248] 4eb9 0002 ccd4            jsr        edob_next
[0002a24e] 6004                      bra.s      key_me_10
key_me_7:
[0002a250] 70ff                      moveq.l    #-1,d0
[0002a252] 6010                      bra.s      key_me_11
key_me_10:
[0002a254] 4240                      clr.w      d0
[0002a256] 600c                      bra.s      key_me_11
key_me_1:
[0002a258] 3203                      move.w     d3,d1
[0002a25a] 3004                      move.w     d4,d0
[0002a25c] 204a                      movea.l    a2,a0
[0002a25e] 4eb9 0005 ef2c            jsr        Awi_keys
key_me_11:
[0002a264] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[0002a268] 4e75                      rts

eded_info:
[0002a26a] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a270] 2068 0258                 movea.l    600(a0),a0
[0002a274] 4eb9 0002 a28a            jsr        ed_info
[0002a27a] 4e75                      rts

eded_parts:
[0002a27c] 2079 000a f0de            movea.l    parts_window,a0
[0002a282] 4eb9 0004 f0ca            jsr        Awi_show
[0002a288] 4e75                      rts

ed_info:
[0002a28a] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002a28e] 4fef fff6                 lea.l      -10(a7),a7
[0002a292] 2450                      movea.l    (a0),a2
[0002a294] 266a 0004                 movea.l    4(a2),a3
[0002a298] 41f9 000b c834            lea.l      WI_INFO,a0
[0002a29e] 2279 000b c83c            movea.l    $000BC83C,a1
[0002a2a4] 4e91                      jsr        (a1)
[0002a2a6] 2848                      movea.l    a0,a4
[0002a2a8] 200c                      move.l     a4,d0
[0002a2aa] 6760                      beq.s      ed_info_1
[0002a2ac] 2252                      movea.l    (a2),a1
[0002a2ae] 2269 0008                 movea.l    8(a1),a1
[0002a2b2] 206c 0014                 movea.l    20(a4),a0
[0002a2b6] 7004                      moveq.l    #4,d0
[0002a2b8] 4eb9 0004 afe0            jsr        Aob_puttext
[0002a2be] 43eb 0016                 lea.l      22(a3),a1
[0002a2c2] 7005                      moveq.l    #5,d0
[0002a2c4] 206c 0014                 movea.l    20(a4),a0
[0002a2c8] 4eb9 0004 afe0            jsr        Aob_puttext
[0002a2ce] 202b 000e                 move.l     14(a3),d0
[0002a2d2] 7238                      moveq.l    #56,d1
[0002a2d4] 4eb9 0007 769e            jsr        _uldiv
[0002a2da] 2f00                      move.l     d0,-(a7)
[0002a2dc] 43f9 000b cd44            lea.l      $000BCD44,a1
[0002a2e2] 41ef 0004                 lea.l      4(a7),a0
[0002a2e6] 4eb9 0007 5680            jsr        sprintf
[0002a2ec] 584f                      addq.w     #4,a7
[0002a2ee] 43d7                      lea.l      (a7),a1
[0002a2f0] 7006                      moveq.l    #6,d0
[0002a2f2] 206c 0014                 movea.l    20(a4),a0
[0002a2f6] 4eb9 0004 afe0            jsr        Aob_puttext
[0002a2fc] 204c                      movea.l    a4,a0
[0002a2fe] 4eb9 0005 1292            jsr        Awi_dialog
[0002a304] 204c                      movea.l    a4,a0
[0002a306] 4eb9 0005 0330            jsr        Awi_delete
ed_info_1:
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
[0002a33e] 4eb9 0007 769e            jsr        _uldiv
[0002a344] 2600                      move.l     d0,d3
[0002a346] 4244                      clr.w      d4
[0002a348] 6000 00ce                 bra        eded_keys_1
eded_keys_12:
[0002a34c] 102b 000f                 move.b     15(a3),d0
[0002a350] 4880                      ext.w      d0
[0002a352] 907c 0015                 sub.w      #$0015,d0
[0002a356] b07c 000b                 cmp.w      #$000B,d0
[0002a35a] 6234                      bhi.s      eded_keys_2
[0002a35c] d040                      add.w      d0,d0
[0002a35e] 303b 0006                 move.w     $0002A366(pc,d0.w),d0
[0002a362] 4efb 0002                 jmp        $0002A366(pc,d0.w)
J15:
[0002a366] 001e                      dc.w $001e   ; eded_keys_3-J15
[0002a368] 001e                      dc.w $001e   ; eded_keys_3-J15
[0002a36a] 002a                      dc.w $002a   ; eded_keys_2-J15
[0002a36c] 002a                      dc.w $002a   ; eded_keys_2-J15
[0002a36e] 002a                      dc.w $002a   ; eded_keys_2-J15
[0002a370] 0018                      dc.w $0018   ; eded_keys_4-J15
[0002a372] 002a                      dc.w $002a   ; eded_keys_2-J15
[0002a374] 0018                      dc.w $0018   ; eded_keys_4-J15
[0002a376] 002a                      dc.w $002a   ; eded_keys_2-J15
[0002a378] 002a                      dc.w $002a   ; eded_keys_2-J15
[0002a37a] 002a                      dc.w $002a   ; eded_keys_2-J15
[0002a37c] 0018                      dc.w $0018   ; eded_keys_4-J15
eded_keys_4:
[0002a37e] 286b 0014                 movea.l    20(a3),a4
[0002a382] 600e                      bra.s      eded_keys_5
eded_keys_3:
[0002a384] 206b 0014                 movea.l    20(a3),a0
[0002a388] 2068 0004                 movea.l    4(a0),a0
[0002a38c] 2850                      movea.l    (a0),a4
[0002a38e] 6002                      bra.s      eded_keys_5
eded_keys_2:
[0002a390] 99cc                      suba.l     a4,a4
eded_keys_5:
[0002a392] 200c                      move.l     a4,d0
[0002a394] 6700 007c                 beq.w      eded_keys_6
[0002a398] 246c 0004                 movea.l    4(a4),a2
[0002a39c] 204a                      movea.l    a2,a0
[0002a39e] 4eb9 0007 69b0            jsr        strlen
[0002a3a4] 2a00                      move.l     d0,d5
[0002a3a6] ba7c 001e                 cmp.w      #$001E,d5
[0002a3aa] 6f06                      ble.s      eded_keys_7
[0002a3ac] 9a7c 001e                 sub.w      #$001E,d5
[0002a3b0] 6002                      bra.s      eded_keys_8
eded_keys_7:
[0002a3b2] 4245                      clr.w      d5
eded_keys_8:
[0002a3b4] 4217                      clr.b      (a7)
[0002a3b6] 701e                      moveq.l    #30,d0
[0002a3b8] 43f2 5000                 lea.l      0(a2,d5.w),a1
[0002a3bc] 41d7                      lea.l      (a7),a0
[0002a3be] 4eb9 0007 69da            jsr        strncat
[0002a3c4] 4eb9 0007 69b0            jsr        strlen
[0002a3ca] 3a00                      move.w     d0,d5
[0002a3cc] 6002                      bra.s      eded_keys_9
eded_keys_11:
[0002a3ce] 5345                      subq.w     #1,d5
eded_keys_9:
[0002a3d0] 4a45                      tst.w      d5
[0002a3d2] 6f08                      ble.s      eded_keys_10
[0002a3d4] 0c37 0020 50ff            cmpi.b     #$20,-1(a7,d5.w)
[0002a3da] 67f2                      beq.s      eded_keys_11
eded_keys_10:
[0002a3dc] 4a45                      tst.w      d5
[0002a3de] 6732                      beq.s      eded_keys_6
[0002a3e0] 4237 5000                 clr.b      0(a7,d5.w)
[0002a3e4] 7020                      moveq.l    #32,d0
[0002a3e6] 41d7                      lea.l      (a7),a0
[0002a3e8] 4eb9 0007 68e2            jsr        strrchr
[0002a3ee] 2448                      movea.l    a0,a2
[0002a3f0] 200a                      move.l     a2,d0
[0002a3f2] 671e                      beq.s      eded_keys_6
[0002a3f4] 41ea 0001                 lea.l      1(a2),a0
[0002a3f8] 4eb9 0003 1908            jsr        key_code
[0002a3fe] 3a00                      move.w     d0,d5
[0002a400] 6710                      beq.s      eded_keys_6
[0002a402] 206f 0020                 movea.l    32(a7),a0
[0002a406] 2250                      movea.l    (a0),a1
[0002a408] 0069 0001 0006            ori.w      #$0001,6(a1)
[0002a40e] 3740 002a                 move.w     d0,42(a3)
eded_keys_6:
[0002a412] 47eb 0038                 lea.l      56(a3),a3
[0002a416] 5244                      addq.w     #1,d4
eded_keys_1:
[0002a418] b644                      cmp.w      d4,d3
[0002a41a] 6e00 ff30                 bgt        eded_keys_12
[0002a41e] 4fef 0024                 lea.l      36(a7),a7
[0002a422] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0002a426] 4e75                      rts

click_ans:
[0002a428] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002a42c] 3600                      move.w     d0,d3
[0002a42e] 2650                      movea.l    (a0),a3
[0002a430] 41f9 000b cb5e            lea.l      WI_TRYCLICK,a0
[0002a436] 2279 000b cb66            movea.l    $000BCB66,a1
[0002a43c] 4e91                      jsr        (a1)
[0002a43e] 2448                      movea.l    a0,a2
[0002a440] 200a                      move.l     a2,d0
[0002a442] 6606                      bne.s      click_ans_1
[0002a444] 4240                      clr.w      d0
[0002a446] 6000 00c4                 bra        click_ans_2
click_ans_1:
[0002a44a] 705c                      moveq.l    #92,d0
[0002a44c] 2053                      movea.l    (a3),a0
[0002a44e] 2068 0008                 movea.l    8(a0),a0
[0002a452] 4eb9 0007 68e2            jsr        strrchr
[0002a458] 2248                      movea.l    a0,a1
[0002a45a] 5249                      addq.w     #1,a1
[0002a45c] 7003                      moveq.l    #3,d0
[0002a45e] 206a 0014                 movea.l    20(a2),a0
[0002a462] 4eb9 0004 afe0            jsr        Aob_puttext
[0002a468] 226b 0004                 movea.l    4(a3),a1
[0002a46c] 43e9 0016                 lea.l      22(a1),a1
[0002a470] 7005                      moveq.l    #5,d0
[0002a472] 206a 0014                 movea.l    20(a2),a0
[0002a476] 4eb9 0004 afe0            jsr        Aob_puttext
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
[0002a498] 6614                      bne.s      click_ans_3
[0002a49a] 43f9 000b cd49            lea.l      $000BCD49,a1
[0002a4a0] 206a 0014                 movea.l    20(a2),a0
[0002a4a4] 7007                      moveq.l    #7,d0
[0002a4a6] 4eb9 0004 afe0            jsr        Aob_puttext
[0002a4ac] 6010                      bra.s      click_ans_4
click_ans_3:
[0002a4ae] 43ec 0016                 lea.l      22(a4),a1
[0002a4b2] 7007                      moveq.l    #7,d0
[0002a4b4] 206a 0014                 movea.l    20(a2),a0
[0002a4b8] 4eb9 0004 afe0            jsr        Aob_puttext
click_ans_4:
[0002a4be] 3203                      move.w     d3,d1
[0002a4c0] e241                      asr.w      #1,d1
[0002a4c2] 48c1                      ext.l      d1
[0002a4c4] 2001                      move.l     d1,d0
[0002a4c6] e788                      lsl.l      #3,d0
[0002a4c8] 9081                      sub.l      d1,d0
[0002a4ca] e788                      lsl.l      #3,d0
[0002a4cc] 2873 0800                 movea.l    0(a3,d0.l),a4
[0002a4d0] 240c                      move.l     a4,d2
[0002a4d2] 6614                      bne.s      click_ans_5
[0002a4d4] 43f9 000b cd49            lea.l      $000BCD49,a1
[0002a4da] 206a 0014                 movea.l    20(a2),a0
[0002a4de] 7009                      moveq.l    #9,d0
[0002a4e0] 4eb9 0004 afe0            jsr        Aob_puttext
[0002a4e6] 6010                      bra.s      click_ans_6
click_ans_5:
[0002a4e8] 43ec 0016                 lea.l      22(a4),a1
[0002a4ec] 7009                      moveq.l    #9,d0
[0002a4ee] 206a 0014                 movea.l    20(a2),a0
[0002a4f2] 4eb9 0004 afe0            jsr        Aob_puttext
click_ans_6:
[0002a4f8] 204a                      movea.l    a2,a0
[0002a4fa] 4eb9 0005 1292            jsr        Awi_dialog
[0002a500] 3600                      move.w     d0,d3
[0002a502] 204a                      movea.l    a2,a0
[0002a504] 4eb9 0005 0330            jsr        Awi_delete
[0002a50a] 3003                      move.w     d3,d0
click_ans_2:
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
[0002a52c] 6100 fefa                 bsr        click_ans
[0002a530] b07c 000a                 cmp.w      #$000A,d0
[0002a534] 671c                      beq.s      try_click_1
[0002a536] b9eb 0014                 cmpa.l     20(a3),a4
[0002a53a] 6706                      beq.s      try_click_2
[0002a53c] b9eb 005e                 cmpa.l     94(a3),a4
[0002a540] 6608                      bne.s      try_click_3
try_click_2:
[0002a542] 4eb9 0002 d91e            jsr        ed_abort
[0002a548] 6008                      bra.s      try_click_1
try_click_3:
[0002a54a] 2052                      movea.l    (a2),a0
[0002a54c] 317c 0001 0268            move.w     #$0001,616(a0)
try_click_1:
[0002a552] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002a556] 4e75                      rts

try_drag:
[0002a558] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002a55c] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a562] 2268 0258                 movea.l    600(a0),a1
[0002a566] 2651                      movea.l    (a1),a3
[0002a568] 3628 0260                 move.w     608(a0),d3
[0002a56c] 41f9 000b cc00            lea.l      WI_TRYDRAG,a0
[0002a572] 2279 000b cc08            movea.l    $000BCC08,a1
[0002a578] 4e91                      jsr        (a1)
[0002a57a] 2448                      movea.l    a0,a2
[0002a57c] 200a                      move.l     a2,d0
[0002a57e] 6700 00e0                 beq        try_drag_1
[0002a582] 705c                      moveq.l    #92,d0
[0002a584] 2253                      movea.l    (a3),a1
[0002a586] 2069 0008                 movea.l    8(a1),a0
[0002a58a] 4eb9 0007 68e2            jsr        strrchr
[0002a590] 2248                      movea.l    a0,a1
[0002a592] 5249                      addq.w     #1,a1
[0002a594] 7003                      moveq.l    #3,d0
[0002a596] 206a 0014                 movea.l    20(a2),a0
[0002a59a] 4eb9 0004 afe0            jsr        Aob_puttext
[0002a5a0] 226b 0004                 movea.l    4(a3),a1
[0002a5a4] 43e9 0016                 lea.l      22(a1),a1
[0002a5a8] 7005                      moveq.l    #5,d0
[0002a5aa] 206a 0014                 movea.l    20(a2),a0
[0002a5ae] 4eb9 0004 afe0            jsr        Aob_puttext
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
[0002a5d0] 6614                      bne.s      try_drag_2
[0002a5d2] 43f9 000b cd49            lea.l      $000BCD49,a1
[0002a5d8] 206a 0014                 movea.l    20(a2),a0
[0002a5dc] 7007                      moveq.l    #7,d0
[0002a5de] 4eb9 0004 afe0            jsr        Aob_puttext
[0002a5e4] 6010                      bra.s      try_drag_3
try_drag_2:
[0002a5e6] 43ec 0016                 lea.l      22(a4),a1
[0002a5ea] 7007                      moveq.l    #7,d0
[0002a5ec] 206a 0014                 movea.l    20(a2),a0
[0002a5f0] 4eb9 0004 afe0            jsr        Aob_puttext
try_drag_3:
[0002a5f6] 3203                      move.w     d3,d1
[0002a5f8] e241                      asr.w      #1,d1
[0002a5fa] 48c1                      ext.l      d1
[0002a5fc] 2001                      move.l     d1,d0
[0002a5fe] e788                      lsl.l      #3,d0
[0002a600] 9081                      sub.l      d1,d0
[0002a602] e788                      lsl.l      #3,d0
[0002a604] 2873 0800                 movea.l    0(a3,d0.l),a4
[0002a608] 240c                      move.l     a4,d2
[0002a60a] 6614                      bne.s      try_drag_4
[0002a60c] 43f9 000b cd49            lea.l      $000BCD49,a1
[0002a612] 206a 0014                 movea.l    20(a2),a0
[0002a616] 7009                      moveq.l    #9,d0
[0002a618] 4eb9 0004 afe0            jsr        Aob_puttext
[0002a61e] 6010                      bra.s      try_drag_5
try_drag_4:
[0002a620] 43ec 0016                 lea.l      22(a4),a1
[0002a624] 7009                      moveq.l    #9,d0
[0002a626] 206a 0014                 movea.l    20(a2),a0
[0002a62a] 4eb9 0004 afe0            jsr        Aob_puttext
try_drag_5:
[0002a630] 204a                      movea.l    a2,a0
[0002a632] 4eb9 0005 1292            jsr        Awi_dialog
[0002a638] 3600                      move.w     d0,d3
[0002a63a] 204a                      movea.l    a2,a0
[0002a63c] 4eb9 0005 0330            jsr        Awi_delete
[0002a642] b67c 000a                 cmp.w      #$000A,d3
[0002a646] 6612                      bne.s      try_drag_6
[0002a648] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a64e] 4268 024a                 clr.w      586(a0)
[0002a652] 4eb9 0004 4a26            jsr        Adr_unselect
[0002a658] 6006                      bra.s      try_drag_1
try_drag_6:
[0002a65a] 4eb9 0002 d91e            jsr        ed_abort
try_drag_1:
[0002a660] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002a664] 4e75                      rts

fix_cicon:
[0002a666] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002a66a] 2648                      movea.l    a0,a3
[0002a66c] 7052                      moveq.l    #82,d0
[0002a66e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002a674] 2448                      movea.l    a0,a2
[0002a676] 200a                      move.l     a2,d0
[0002a678] 6700 008a                 beq        fix_cicon_1
[0002a67c] 224b                      movea.l    a3,a1
[0002a67e] 7052                      moveq.l    #82,d0
[0002a680] 4eb9 0007 6f44            jsr        memcpy
[0002a686] 200b                      move.l     a3,d0
[0002a688] d192                      add.l      d0,(a2)
[0002a68a] d1aa 0004                 add.l      d0,4(a2)
[0002a68e] 206a 0008                 movea.l    8(a2),a0
[0002a692] 2068 0004                 movea.l    4(a0),a0
[0002a696] 4eb9 0004 36d6            jsr        Ast_create
[0002a69c] 2548 0008                 move.l     a0,8(a2)
[0002a6a0] 99cc                      suba.l     a4,a4
[0002a6a2] 302b 0026                 move.w     38(a3),d0
[0002a6a6] 6712                      beq.s      fix_cicon_2
[0002a6a8] 2279 0010 1f12            movea.l    ACSblk,a1
[0002a6ae] 0c69 0004 001c            cmpi.w     #$0004,28(a1)
[0002a6b4] 6d04                      blt.s      fix_cicon_2
[0002a6b6] 49ea 0026                 lea.l      38(a2),a4
fix_cicon_2:
[0002a6ba] 302b 003c                 move.w     60(a3),d0
[0002a6be] 6712                      beq.s      fix_cicon_3
[0002a6c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a6c6] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[0002a6cc] 6d04                      blt.s      fix_cicon_3
[0002a6ce] 49ea 003c                 lea.l      60(a2),a4
fix_cicon_3:
[0002a6d2] 254c 0022                 move.l     a4,34(a2)
[0002a6d6] 200c                      move.l     a4,d0
[0002a6d8] 6772                      beq.s      fix_cicon_4
[0002a6da] 206c 0006                 movea.l    6(a4),a0
[0002a6de] 2968 0004 0006            move.l     4(a0),6(a4)
[0002a6e4] 2f0a                      move.l     a2,-(a7)
[0002a6e6] 3014                      move.w     (a4),d0
[0002a6e8] 226c 0006                 movea.l    6(a4),a1
[0002a6ec] 206c 0002                 movea.l    2(a4),a0
[0002a6f0] 2068 0004                 movea.l    4(a0),a0
[0002a6f4] 4eb9 0001 4a3e            jsr        to_cicon
[0002a6fa] 584f                      addq.w     #4,a7
[0002a6fc] 2948 0002                 move.l     a0,2(a4)
[0002a700] 2008                      move.l     a0,d0
[0002a702] 6604                      bne.s      fix_cicon_5
fix_cicon_1:
[0002a704] 91c8                      suba.l     a0,a0
[0002a706] 6046                      bra.s      fix_cicon_6
fix_cicon_5:
[0002a708] 202c 000a                 move.l     10(a4),d0
[0002a70c] 6734                      beq.s      fix_cicon_7
[0002a70e] 2f0a                      move.l     a2,-(a7)
[0002a710] 3014                      move.w     (a4),d0
[0002a712] 206c 000e                 movea.l    14(a4),a0
[0002a716] 2268 0004                 movea.l    4(a0),a1
[0002a71a] 266c 000a                 movea.l    10(a4),a3
[0002a71e] 206b 0004                 movea.l    4(a3),a0
[0002a722] 4eb9 0001 4a3e            jsr        to_cicon
[0002a728] 584f                      addq.w     #4,a7
[0002a72a] 2948 000a                 move.l     a0,10(a4)
[0002a72e] 2008                      move.l     a0,d0
[0002a730] 670c                      beq.s      fix_cicon_8
[0002a732] 226c 000e                 movea.l    14(a4),a1
[0002a736] 2969 0004 000e            move.l     4(a1),14(a4)
[0002a73c] 6004                      bra.s      fix_cicon_7
fix_cicon_8:
[0002a73e] 42ac 000e                 clr.l      14(a4)
fix_cicon_7:
[0002a742] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a748] 38a8 001c                 move.w     28(a0),(a4)
fix_cicon_4:
[0002a74c] 204a                      movea.l    a2,a0
fix_cicon_6:
[0002a74e] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002a752] 4e75                      rts

try:
[0002a754] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0002a758] 4fef ffe4                 lea.l      -28(a7),a7
[0002a75c] 2a48                      movea.l    a0,a5
[0002a75e] 2f49 0018                 move.l     a1,24(a7)
[0002a762] 202d 000e                 move.l     14(a5),d0
[0002a766] 7238                      moveq.l    #56,d1
[0002a768] 4eb9 0007 769e            jsr        _uldiv
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
[0002a78a] 6700 01c4                 beq        try_1
[0002a78e] 4eb9 0004 4a26            jsr        Adr_unselect
[0002a794] 226f 0018                 movea.l    24(a7),a1
[0002a798] 204d                      movea.l    a5,a0
[0002a79a] 4eb9 0002 b1f0            jsr        reorg
[0002a7a0] 2f6d 0004 000a            move.l     4(a5),10(a7)
[0002a7a6] 4244                      clr.w      d4
[0002a7a8] 6000 01be                 bra        try_2
try_14:
[0002a7ac] 7030                      moveq.l    #48,d0
[0002a7ae] 226f 000a                 movea.l    10(a7),a1
[0002a7b2] 5049                      addq.w     #8,a1
[0002a7b4] 204a                      movea.l    a2,a0
[0002a7b6] 4eb9 0007 6f44            jsr        memcpy
[0002a7bc] 026a dfff 000a            andi.w     #$DFFF,10(a2)
[0002a7c2] 3012                      move.w     (a2),d0
[0002a7c4] 6b02                      bmi.s      try_3
[0002a7c6] e3d2                      lsl.w      (a2)
try_3:
[0002a7c8] 302a 0002                 move.w     2(a2),d0
[0002a7cc] 6b04                      bmi.s      try_4
[0002a7ce] e3ea 0002                 lsl.w      2(a2)
try_4:
[0002a7d2] 302a 0004                 move.w     4(a2),d0
[0002a7d6] 6b04                      bmi.s      try_5
[0002a7d8] e3ea 0004                 lsl.w      4(a2)
try_5:
[0002a7dc] 47ea 0018                 lea.l      24(a2),a3
[0002a7e0] 26bc 0002 a512            move.l     #try_click,(a3)
[0002a7e6] 277c 0002 a558 0004       move.l     #try_drag,4(a3)
[0002a7ee] 102a 0007                 move.b     7(a2),d0
[0002a7f2] 4880                      ext.w      d0
[0002a7f4] 907c 0015                 sub.w      #$0015,d0
[0002a7f8] b07c 000c                 cmp.w      #$000C,d0
[0002a7fc] 6200 015c                 bhi        try_6
[0002a800] d040                      add.w      d0,d0
[0002a802] 303b 0006                 move.w     $0002A80A(pc,d0.w),d0
[0002a806] 4efb 0002                 jmp        $0002A80A(pc,d0.w)
J16:
[0002a80a] 001a                      dc.w $001a   ; try_7-J16
[0002a80c] 001a                      dc.w $001a   ; try_7-J16
[0002a80e] 0092                      dc.w $0092   ; try_8-J16
[0002a810] 00c4                      dc.w $00c4   ; try_9-J16
[0002a812] 0150                      dc.w $0150   ; try_6-J16
[0002a814] 011e                      dc.w $011e   ; try_10-J16
[0002a816] 0150                      dc.w $0150   ; try_6-J16
[0002a818] 011e                      dc.w $011e   ; try_10-J16
[0002a81a] 001a                      dc.w $001a   ; try_7-J16
[0002a81c] 001a                      dc.w $001a   ; try_7-J16
[0002a81e] 0132                      dc.w $0132   ; try_11-J16
[0002a820] 011e                      dc.w $011e   ; try_10-J16
[0002a822] 0132                      dc.w $0132   ; try_11-J16
try_7:
[0002a824] 286a 000c                 movea.l    12(a2),a4
[0002a828] 701c                      moveq.l    #28,d0
[0002a82a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002a830] 2a48                      movea.l    a0,a5
[0002a832] 200d                      move.l     a5,d0
[0002a834] 6700 011a                 beq        try_1
[0002a838] 226c 0004                 movea.l    4(a4),a1
[0002a83c] 701c                      moveq.l    #28,d0
[0002a83e] 4eb9 0007 6f44            jsr        memcpy
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
[0002a878] 4eb9 0007 69b0            jsr        strlen
[0002a87e] 5240                      addq.w     #1,d0
[0002a880] 3b40 0018                 move.w     d0,24(a5)
[0002a884] 206d 0004                 movea.l    4(a5),a0
[0002a888] 4eb9 0007 69b0            jsr        strlen
[0002a88e] 5240                      addq.w     #1,d0
[0002a890] 3b40 001a                 move.w     d0,26(a5)
[0002a894] 254d 000c                 move.l     a5,12(a2)
[0002a898] 6000 00c0                 bra        try_6
try_8:
[0002a89c] 286a 000c                 movea.l    12(a2),a4
[0002a8a0] 700e                      moveq.l    #14,d0
[0002a8a2] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002a8a8] 2a48                      movea.l    a0,a5
[0002a8aa] 200d                      move.l     a5,d0
[0002a8ac] 6700 00a2                 beq        try_1
[0002a8b0] 226c 0004                 movea.l    4(a4),a1
[0002a8b4] 700e                      moveq.l    #14,d0
[0002a8b6] 4eb9 0007 6f44            jsr        memcpy
[0002a8bc] 206c 0004                 movea.l    4(a4),a0
[0002a8c0] 41e8 000e                 lea.l      14(a0),a0
[0002a8c4] 2a88                      move.l     a0,(a5)
[0002a8c6] 254d 000c                 move.l     a5,12(a2)
[0002a8ca] 6000 008e                 bra        try_6
try_9:
[0002a8ce] 286a 000c                 movea.l    12(a2),a4
[0002a8d2] 7020                      moveq.l    #32,d0
[0002a8d4] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002a8da] 2a48                      movea.l    a0,a5
[0002a8dc] 200d                      move.l     a5,d0
[0002a8de] 6770                      beq.s      try_1
[0002a8e0] 224d                      movea.l    a5,a1
[0002a8e2] 204c                      movea.l    a4,a0
[0002a8e4] 4eb9 0002 b184            jsr        map_user
[0002a8ea] 254d 000c                 move.l     a5,12(a2)
[0002a8ee] 202d 0008                 move.l     8(a5),d0
[0002a8f2] 6766                      beq.s      try_6
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
[0002a926] 6032                      bra.s      try_6
try_10:
[0002a928] 286a 000c                 movea.l    12(a2),a4
[0002a92c] 206c 0004                 movea.l    4(a4),a0
[0002a930] 4eb9 0004 36d6            jsr        Ast_create
[0002a936] 2548 000c                 move.l     a0,12(a2)
[0002a93a] 601e                      bra.s      try_6
try_11:
[0002a93c] 286a 000c                 movea.l    12(a2),a4
[0002a940] 206c 0004                 movea.l    4(a4),a0
[0002a944] 6100 fd20                 bsr        fix_cicon
[0002a948] 2f48 0004                 move.l     a0,4(a7)
[0002a94c] 2008                      move.l     a0,d0
[0002a94e] 6604                      bne.s      try_12
try_1:
[0002a950] 91c8                      suba.l     a0,a0
[0002a952] 602e                      bra.s      try_13
try_12:
[0002a954] 256f 0004 000c            move.l     4(a7),12(a2)
try_6:
[0002a95a] 45ea 0030                 lea.l      48(a2),a2
[0002a95e] 06af 0000 0038 000a       addi.l     #$00000038,10(a7)
[0002a966] 5244                      addq.w     #1,d4
try_2:
[0002a968] b644                      cmp.w      d4,d3
[0002a96a] 6e00 fe40                 bgt        try_14
[0002a96e] 45ea ffe8                 lea.l      -24(a2),a2
[0002a972] 006a 0020 0008            ori.w      #$0020,8(a2)
[0002a978] 2057                      movea.l    (a7),a0
[0002a97a] 4eb9 0004 a25e            jsr        Aob_fix
[0002a980] 2057                      movea.l    (a7),a0
try_13:
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
[0002a9ac] 6100 fda6                 bsr        try
[0002a9b0] 2a48                      movea.l    a0,a5
[0002a9b2] 200d                      move.l     a5,d0
[0002a9b4] 6700 011c                 beq        eded_try_1
[0002a9b8] 43ec 0016                 lea.l      22(a4),a1
[0002a9bc] 206f 0004                 movea.l    4(a7),a0
[0002a9c0] 2068 0018                 movea.l    24(a0),a0
[0002a9c4] 4eb9 0003 1a5c            jsr        find_entry
[0002a9ca] b9c8                      cmpa.l     a0,a4
[0002a9cc] 666e                      bne.s      eded_try_2
[0002a9ce] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002a9d4] 486f 0006                 pea.l      6(a7)
[0002a9d8] 486f 0008                 pea.l      8(a7)
[0002a9dc] 43ef 000c                 lea.l      12(a7),a1
[0002a9e0] 41ef 000c                 lea.l      12(a7),a0
[0002a9e4] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0002a9ea] 4fef 000c                 lea.l      12(a7),a7
[0002a9ee] 7004                      moveq.l    #4,d0
[0002a9f0] c06f 0002                 and.w      2(a7),d0
[0002a9f4] 671c                      beq.s      eded_try_3
[0002a9f6] 204a                      movea.l    a2,a0
[0002a9f8] 226a 0010                 movea.l    16(a2),a1
[0002a9fc] 4e91                      jsr        (a1)
[0002a9fe] 204d                      movea.l    a5,a0
[0002aa00] 4eb9 0005 f8ee            jsr        A_dialog
[0002aa06] 204d                      movea.l    a5,a0
[0002aa08] 4eb9 0004 9b7c            jsr        Aob_delete
[0002aa0e] 6000 00c2                 bra        eded_try_1
eded_try_3:
[0002aa12] 42a7                      clr.l      -(a7)
[0002aa14] 42a7                      clr.l      -(a7)
[0002aa16] 42a7                      clr.l      -(a7)
[0002aa18] 4879 0004 9b7c            pea.l      Aob_delete
[0002aa1e] 4879 0002 d91e            pea.l      ed_abort
[0002aa24] 4879 000b 89cb            pea.l      testmode
[0002aa2a] 224d                      movea.l    a5,a1
[0002aa2c] 204a                      movea.l    a2,a0
[0002aa2e] 4eb9 0002 db2a            jsr        change_work
[0002aa34] 4fef 0018                 lea.l      24(a7),a7
[0002aa38] 6000 0098                 bra        eded_try_1
eded_try_2:
[0002aa3c] 43ec 0016                 lea.l      22(a4),a1
[0002aa40] 206f 0004                 movea.l    4(a7),a0
[0002aa44] 2068 001c                 movea.l    28(a0),a0
[0002aa48] 4eb9 0003 1a5c            jsr        find_entry
[0002aa4e] b9c8                      cmpa.l     a0,a4
[0002aa50] 6648                      bne.s      eded_try_4
[0002aa52] 41f9 000b c57c            lea.l      MINIOB,a0
[0002aa58] 4eb9 0004 9a5c            jsr        Aob_create
[0002aa5e] 2648                      movea.l    a0,a3
[0002aa60] 376a 0038 0014            move.w     56(a2),20(a3)
[0002aa66] 376a 003a 0016            move.w     58(a2),22(a3)
[0002aa6c] 006b 8000 000a            ori.w      #$8000,10(a3)
[0002aa72] 42a7                      clr.l      -(a7)
[0002aa74] 42a7                      clr.l      -(a7)
[0002aa76] 2f0d                      move.l     a5,-(a7)
[0002aa78] 4879 0004 9b7c            pea.l      Aob_delete
[0002aa7e] 4879 0002 d91e            pea.l      ed_abort
[0002aa84] 4879 000b 89cb            pea.l      testmode
[0002aa8a] 224b                      movea.l    a3,a1
[0002aa8c] 204a                      movea.l    a2,a0
[0002aa8e] 4eb9 0002 db2a            jsr        change_work
[0002aa94] 4fef 0018                 lea.l      24(a7),a7
[0002aa98] 6038                      bra.s      eded_try_1
eded_try_4:
[0002aa9a] 43ec 0016                 lea.l      22(a4),a1
[0002aa9e] 206f 0004                 movea.l    4(a7),a0
[0002aaa2] 2068 0020                 movea.l    32(a0),a0
[0002aaa6] 4eb9 0003 1a5c            jsr        find_entry
[0002aaac] b9c8                      cmpa.l     a0,a4
[0002aaae] 6622                      bne.s      eded_try_1
[0002aab0] 204a                      movea.l    a2,a0
[0002aab2] 226a 0010                 movea.l    16(a2),a1
[0002aab6] 4e91                      jsr        (a1)
[0002aab8] 4eb9 0004 9940            jsr        Amo_unbusy
[0002aabe] 72ff                      moveq.l    #-1,d1
[0002aac0] 70ff                      moveq.l    #-1,d0
[0002aac2] 224d                      movea.l    a5,a1
[0002aac4] 204a                      movea.l    a2,a0
[0002aac6] 4eb9 0004 948a            jsr        Ame_popup
[0002aacc] 4eb9 0004 9902            jsr        Amo_busy
eded_try_1:
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
[0002aaf4] 6606                      bne.s      ed_init_1
[0002aaf6] 4eb9 0004 4a26            jsr        Adr_unselect
ed_init_1:
[0002aafc] 206f 0018                 movea.l    24(a7),a0
[0002ab00] 2f50 000a                 move.l     (a0),10(a7)
[0002ab04] 226f 000a                 movea.l    10(a7),a1
[0002ab08] 2869 0004                 movea.l    4(a1),a4
[0002ab0c] 2f6c 0004 0006            move.l     4(a4),6(a7)
[0002ab12] 202c 000e                 move.l     14(a4),d0
[0002ab16] 7238                      moveq.l    #56,d1
[0002ab18] 4eb9 0007 769e            jsr        _uldiv
[0002ab1e] 2600                      move.l     d0,d3
[0002ab20] 206f 0018                 movea.l    24(a7),a0
[0002ab24] 2a68 0014                 movea.l    20(a0),a5
[0002ab28] 4244                      clr.w      d4
[0002ab2a] 3a04                      move.w     d4,d5
[0002ab2c] 200d                      move.l     a5,d0
[0002ab2e] 6710                      beq.s      ed_init_2
[0002ab30] 3a2d 0010                 move.w     16(a5),d5
[0002ab34] 382d 0012                 move.w     18(a5),d4
[0002ab38] 204d                      movea.l    a5,a0
[0002ab3a] 4eb9 0004 9b7c            jsr        Aob_delete
ed_init_2:
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
[0002ab6e] 6700 01b8                 beq        ed_init_3
[0002ab72] 43f9 000b cd2c            lea.l      deskob,a1
[0002ab78] 204d                      movea.l    a5,a0
[0002ab7a] 7018                      moveq.l    #24,d0
[0002ab7c] 4eb9 0007 6f44            jsr        memcpy
[0002ab82] 47ed 0018                 lea.l      24(a5),a3
[0002ab86] 23cc 000b cd00            move.l     a4,$000BCD00
[0002ab8c] 4246                      clr.w      d6
[0002ab8e] 6000 024a                 bra        ed_init_4
ed_init_17:
[0002ab92] 3006                      move.w     d6,d0
[0002ab94] 48c0                      ext.l      d0
[0002ab96] 23c0 000b cd04            move.l     d0,$000BCD04
[0002ab9c] 43f9 000b ccc4            lea.l      entry,a1
[0002aba2] 204b                      movea.l    a3,a0
[0002aba4] 7048                      moveq.l    #72,d0
[0002aba6] 4eb9 0007 6f44            jsr        memcpy
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
[0002abc4] 4eb9 0007 6f44            jsr        memcpy
[0002abca] 102b 0007                 move.b     7(a3),d0
[0002abce] 4880                      ext.w      d0
[0002abd0] 907c 0015                 sub.w      #$0015,d0
[0002abd4] b07c 000c                 cmp.w      #$000C,d0
[0002abd8] 6200 0158                 bhi        ed_init_5
[0002abdc] d040                      add.w      d0,d0
[0002abde] 303b 0006                 move.w     $0002ABE6(pc,d0.w),d0
[0002abe2] 4efb 0002                 jmp        $0002ABE6(pc,d0.w)
J17:
[0002abe6] 001a                      dc.w $001a   ; ed_init_6-J17
[0002abe8] 001a                      dc.w $001a   ; ed_init_6-J17
[0002abea] 0092                      dc.w $0092   ; ed_init_7-J17
[0002abec] 00c4                      dc.w $00c4   ; ed_init_8-J17
[0002abee] 014c                      dc.w $014c   ; ed_init_5-J17
[0002abf0] 011e                      dc.w $011e   ; ed_init_9-J17
[0002abf2] 014c                      dc.w $014c   ; ed_init_5-J17
[0002abf4] 011e                      dc.w $011e   ; ed_init_9-J17
[0002abf6] 001a                      dc.w $001a   ; ed_init_6-J17
[0002abf8] 001a                      dc.w $001a   ; ed_init_6-J17
[0002abfa] 0132                      dc.w $0132   ; ed_init_10-J17
[0002abfc] 011e                      dc.w $011e   ; ed_init_9-J17
[0002abfe] 0132                      dc.w $0132   ; ed_init_10-J17
ed_init_6:
[0002ac00] 246b 000c                 movea.l    12(a3),a2
[0002ac04] 701c                      moveq.l    #28,d0
[0002ac06] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002ac0c] 2848                      movea.l    a0,a4
[0002ac0e] 200c                      move.l     a4,d0
[0002ac10] 6700 0116                 beq        ed_init_3
[0002ac14] 226a 0004                 movea.l    4(a2),a1
[0002ac18] 701c                      moveq.l    #28,d0
[0002ac1a] 4eb9 0007 6f44            jsr        memcpy
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
[0002ac54] 4eb9 0007 69b0            jsr        strlen
[0002ac5a] 5240                      addq.w     #1,d0
[0002ac5c] 3940 0018                 move.w     d0,24(a4)
[0002ac60] 206c 0004                 movea.l    4(a4),a0
[0002ac64] 4eb9 0007 69b0            jsr        strlen
[0002ac6a] 5240                      addq.w     #1,d0
[0002ac6c] 3940 001a                 move.w     d0,26(a4)
[0002ac70] 274c 000c                 move.l     a4,12(a3)
[0002ac74] 6000 00bc                 bra        ed_init_5
ed_init_7:
[0002ac78] 246b 000c                 movea.l    12(a3),a2
[0002ac7c] 700e                      moveq.l    #14,d0
[0002ac7e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002ac84] 2848                      movea.l    a0,a4
[0002ac86] 200c                      move.l     a4,d0
[0002ac88] 6700 009e                 beq        ed_init_3
[0002ac8c] 226a 0004                 movea.l    4(a2),a1
[0002ac90] 700e                      moveq.l    #14,d0
[0002ac92] 4eb9 0007 6f44            jsr        memcpy
[0002ac98] 206a 0004                 movea.l    4(a2),a0
[0002ac9c] 41e8 000e                 lea.l      14(a0),a0
[0002aca0] 2888                      move.l     a0,(a4)
[0002aca2] 274c 000c                 move.l     a4,12(a3)
[0002aca6] 6000 008a                 bra        ed_init_5
ed_init_8:
[0002acaa] 246b 000c                 movea.l    12(a3),a2
[0002acae] 7020                      moveq.l    #32,d0
[0002acb0] 4eb9 0004 7cc8            jsr        Ax_malloc
[0002acb6] 2848                      movea.l    a0,a4
[0002acb8] 200c                      move.l     a4,d0
[0002acba] 676c                      beq.s      ed_init_3
[0002acbc] 224c                      movea.l    a4,a1
[0002acbe] 204a                      movea.l    a2,a0
[0002acc0] 4eb9 0002 b184            jsr        map_user
[0002acc6] 274c 000c                 move.l     a4,12(a3)
[0002acca] 202c 0008                 move.l     8(a4),d0
[0002acce] 6762                      beq.s      ed_init_5
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
[0002ad02] 602e                      bra.s      ed_init_5
ed_init_9:
[0002ad04] 246b 000c                 movea.l    12(a3),a2
[0002ad08] 206a 0004                 movea.l    4(a2),a0
[0002ad0c] 4eb9 0004 36d6            jsr        Ast_create
[0002ad12] 2748 000c                 move.l     a0,12(a3)
[0002ad16] 601a                      bra.s      ed_init_5
ed_init_10:
[0002ad18] 246b 000c                 movea.l    12(a3),a2
[0002ad1c] 206a 0004                 movea.l    4(a2),a0
[0002ad20] 6100 f944                 bsr        fix_cicon
[0002ad24] 2e88                      move.l     a0,(a7)
[0002ad26] 6606                      bne.s      ed_init_11
ed_init_3:
[0002ad28] 70ff                      moveq.l    #-1,d0
[0002ad2a] 6000 011a                 bra        ed_init_12
ed_init_11:
[0002ad2e] 2757 000c                 move.l     (a7),12(a3)
ed_init_5:
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
[0002ad54] 6604                      bne.s      ed_init_13
[0002ad56] 526b 0018                 addq.w     #1,24(a3)
ed_init_13:
[0002ad5a] 302b 0002                 move.w     2(a3),d0
[0002ad5e] 6b26                      bmi.s      ed_init_14
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
ed_init_14:
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
[0002adb0] 6706                      beq.s      ed_init_15
[0002adb2] 006b 0080 0020            ori.w      #$0080,32(a3)
ed_init_15:
[0002adb8] 302b 000a                 move.w     10(a3),d0
[0002adbc] c07c 1000                 and.w      #$1000,d0
[0002adc0] 6706                      beq.s      ed_init_16
[0002adc2] 006b 1000 0022            ori.w      #$1000,34(a3)
ed_init_16:
[0002adc8] 026b 06d7 0008            andi.w     #$06D7,8(a3)
[0002adce] 026b 0f3f 000a            andi.w     #$0F3F,10(a3)
[0002add4] 5246                      addq.w     #1,d6
[0002add6] 47eb 0048                 lea.l      72(a3),a3
ed_init_4:
[0002adda] b646                      cmp.w      d6,d3
[0002addc] 6e00 fdb4                 bgt        ed_init_17
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
[0002ae22] 6b10                      bmi.s      ed_init_18
[0002ae24] 48c0                      ext.l      d0
[0002ae26] 2200                      move.l     d0,d1
[0002ae28] d281                      add.l      d1,d1
[0002ae2a] d280                      add.l      d0,d1
[0002ae2c] e789                      lsl.l      #3,d1
[0002ae2e] 0075 1800 1808            ori.w      #$1800,8(a5,d1.l)
ed_init_18:
[0002ae34] 204d                      movea.l    a5,a0
[0002ae36] 4eb9 0004 a25e            jsr        Aob_fix
[0002ae3c] 3b45 0010                 move.w     d5,16(a5)
[0002ae40] 3b44 0012                 move.w     d4,18(a5)
[0002ae44] 4240                      clr.w      d0
ed_init_12:
[0002ae46] 4fef 001c                 lea.l      28(a7),a7
[0002ae4a] 4cdf 7c78                 movem.l    (a7)+,d3-d6/a2-a6
[0002ae4e] 4e75                      rts

ed_service_9:
ed_service:
[0002ae50] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002ae54] 2448                      movea.l    a0,a2
[0002ae56] 3600                      move.w     d0,d3
[0002ae58] 2849                      movea.l    a1,a4
[0002ae5a] 2650                      movea.l    (a0),a3
[0002ae5c] b07c 0012                 cmp.w      #$0012,d0
[0002ae60] 6762                      beq.s      ed_service_1
[0002ae62] 6e32                      bgt.s      ed_service_2
[0002ae64] b07c 000f                 cmp.w      #$000F,d0
[0002ae68] 6200 00ea                 bhi        ed_service_3
[0002ae6c] d040                      add.w      d0,d0
[0002ae6e] 303b 0006                 move.w     $0002AE76(pc,d0.w),d0
[0002ae72] 4efb 0002                 jmp        $0002AE76(pc,d0.w)
J18:
[0002ae76] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae78] 00ca                      dc.w $00ca   ; ed_service_4-J18
[0002ae7a] 00a0                      dc.w $00a0   ; ed_service_5-J18
[0002ae7c] 00aa                      dc.w $00aa   ; ed_service_6-J18
[0002ae7e] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae80] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae82] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae84] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae86] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae88] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae8a] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae8c] 00c0                      dc.w $00c0   ; ed_service_7-J18
[0002ae8e] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae90] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae92] 00de                      dc.w $00de   ; ed_service_3-J18
[0002ae94] 00d2                      dc.w $00d2   ; ed_service_8-J18
ed_service_2:
[0002ae96] 907c                      dc.w $907c   ; ed_service_9-J18
[0002ae98] 0024                      dc.w $0024   ; ed_service_10-J18
ed_service_10:
[0002ae9a] 6720                      beq.s      ed_service_11
[0002ae9c] 5340                      subq.w     #1,d0
[0002ae9e] 6714                      beq.s      ed_service_12
[0002aea0] 907c 03d2                 sub.w      #$03D2,d0
[0002aea4] 6700 00aa                 beq        ed_service_13
[0002aea8] 907c 2319                 sub.w      #$2319,d0
[0002aeac] 6700 007a                 beq.w      ed_service_14
[0002aeb0] 6000 00a2                 bra        ed_service_3
ed_service_12:
[0002aeb4] 42ac 0002                 clr.l      2(a4)
[0002aeb8] 6000 00a8                 bra        ed_service_15
ed_service_11:
[0002aebc] 38bc 0001                 move.w     #$0001,(a4)
[0002aec0] 6000 00a0                 bra        ed_service_15
ed_service_1:
[0002aec4] 204c                      movea.l    a4,a0
[0002aec6] 3039 0007 824a            move.w     snapping,d0
[0002aecc] 6716                      beq.s      ed_service_16
[0002aece] 2279 0010 1f12            movea.l    ACSblk,a1
[0002aed4] 30a9 0012                 move.w     18(a1),(a0)
[0002aed8] 2279 0010 1f12            movea.l    ACSblk,a1
[0002aede] 3169 0014 0002            move.w     20(a1),2(a0)
ed_service_16:
[0002aee4] 317c 0003 000c            move.w     #$0003,12(a0)
[0002aeea] 317c 000b 000e            move.w     #$000B,14(a0)
[0002aef0] 317c 0003 0010            move.w     #$0003,16(a0)
[0002aef6] 317c 000c 0012            move.w     #$000C,18(a0)
[0002aefc] 317c 0003 0014            move.w     #$0003,20(a0)
[0002af02] 317c 000b 0016            move.w     #$000B,22(a0)
[0002af08] 317c 0003 0018            move.w     #$0003,24(a0)
[0002af0e] 317c 000c 001a            move.w     #$000C,26(a0)
[0002af14] 604c                      bra.s      ed_service_15
ed_service_5:
[0002af16] 204a                      movea.l    a2,a0
[0002af18] 4eb9 0002 af6a            jsr        ed_term
[0002af1e] 6042                      bra.s      ed_service_15
ed_service_6:
[0002af20] 204a                      movea.l    a2,a0
[0002af22] 6100 f196                 bsr        close_uc
[0002af26] 603a                      bra.s      ed_service_15
ed_service_14:
[0002af28] 226b 0004                 movea.l    4(a3),a1
[0002af2c] 204a                      movea.l    a2,a0
[0002af2e] 4eb9 0001 45a2            jsr        new_name
[0002af34] 602c                      bra.s      ed_service_15
ed_service_7:
[0002af36] 204a                      movea.l    a2,a0
[0002af38] 4eb9 0002 c0f8            jsr        ed_delete
[0002af3e] 6022                      bra.s      ed_service_15
ed_service_4:
[0002af40] 4279 000b cca2            clr.w      visible_editors
[0002af46] 601a                      bra.s      ed_service_15
ed_service_8:
[0002af48] 204a                      movea.l    a2,a0
[0002af4a] 6100 f33e                 bsr        ed_info
[0002af4e] 6012                      bra.s      ed_service_15
ed_service_13:
[0002af50] 288a                      move.l     a2,(a4)
[0002af52] 600e                      bra.s      ed_service_15
ed_service_3:
[0002af54] 224c                      movea.l    a4,a1
[0002af56] 3003                      move.w     d3,d0
[0002af58] 204a                      movea.l    a2,a0
[0002af5a] 4eb9 0005 1276            jsr        Awi_service
[0002af60] 6002                      bra.s      ed_service_17
ed_service_15:
[0002af62] 7001                      moveq.l    #1,d0
ed_service_17:
[0002af64] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002af68] 4e75                      rts

ed_term:
[0002af6a] 2f0a                      move.l     a2,-(a7)
[0002af6c] 2f0b                      move.l     a3,-(a7)
[0002af6e] 2448                      movea.l    a0,a2
[0002af70] 2650                      movea.l    (a0),a3
[0002af72] 006a 0100 0056            ori.w      #$0100,86(a2)
[0002af78] 200b                      move.l     a3,d0
[0002af7a] 6772                      beq.s      ed_term_1
[0002af7c] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[0002af82] 6610                      bne.s      ed_term_2
[0002af84] 2279 0010 1f12            movea.l    ACSblk,a1
[0002af8a] 2348 0258                 move.l     a0,600(a1)
[0002af8e] 206b 001a                 movea.l    26(a3),a0
[0002af92] 4e90                      jsr        (a0)
ed_term_2:
[0002af94] 206b 001e                 movea.l    30(a3),a0
[0002af98] 4eb9 0004 7e26            jsr        Ax_free
[0002af9e] 224a                      movea.l    a2,a1
[0002afa0] 206b 0004                 movea.l    4(a3),a0
[0002afa4] 4eb9 0002 b1f0            jsr        reorg
[0002afaa] 302a 0056                 move.w     86(a2),d0
[0002afae] c07c 0800                 and.w      #$0800,d0
[0002afb2] 6716                      beq.s      ed_term_3
[0002afb4] 43ea 002c                 lea.l      44(a2),a1
[0002afb8] 206b 0004                 movea.l    4(a3),a0
[0002afbc] 41e8 003a                 lea.l      58(a0),a0
[0002afc0] 7008                      moveq.l    #8,d0
[0002afc2] 4eb9 0007 6f44            jsr        memcpy
[0002afc8] 6014                      bra.s      ed_term_4
ed_term_3:
[0002afca] 7008                      moveq.l    #8,d0
[0002afcc] 43ea 0024                 lea.l      36(a2),a1
[0002afd0] 206b 0004                 movea.l    4(a3),a0
[0002afd4] 41e8 003a                 lea.l      58(a0),a0
[0002afd8] 4eb9 0007 6f44            jsr        memcpy
ed_term_4:
[0002afde] 206b 0004                 movea.l    4(a3),a0
[0002afe2] 42a8 0012                 clr.l      18(a0)
[0002afe6] 204b                      movea.l    a3,a0
[0002afe8] 4eb9 0004 7e26            jsr        Ax_free
ed_term_1:
[0002afee] 204a                      movea.l    a2,a0
[0002aff0] 4eb9 0005 0330            jsr        Awi_delete
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
[0002b020] 6606                      bne.s      set_userdef_1
[0002b022] 0268 fffc 0038            andi.w     #$FFFC,56(a0)
set_userdef_1:
[0002b028] 202a 0010                 move.l     16(a2),d0
[0002b02c] 6606                      bne.s      set_userdef_2
[0002b02e] 0268 fff3 0038            andi.w     #$FFF3,56(a0)
set_userdef_2:
[0002b034] 202a 0014                 move.l     20(a2),d0
[0002b038] 6606                      bne.s      set_userdef_3
[0002b03a] 0268 ffcf 0038            andi.w     #$FFCF,56(a0)
set_userdef_3:
[0002b040] 7003                      moveq.l    #3,d0
[0002b042] c068 0038                 and.w      56(a0),d0
[0002b046] 3740 0008                 move.w     d0,8(a3)
[0002b04a] 4a40                      tst.w      d0
[0002b04c] 670e                      beq.s      set_userdef_4
[0002b04e] 5340                      subq.w     #1,d0
[0002b050] 6710                      beq.s      set_userdef_5
[0002b052] 5340                      subq.w     #1,d0
[0002b054] 671a                      beq.s      set_userdef_6
[0002b056] 5340                      subq.w     #1,d0
[0002b058] 6726                      beq.s      set_userdef_7
[0002b05a] 6038                      bra.s      set_userdef_8
set_userdef_4:
[0002b05c] 42ab 000a                 clr.l      10(a3)
[0002b060] 6018                      bra.s      set_userdef_9
set_userdef_5:
[0002b062] 226a 000c                 movea.l    12(a2),a1
[0002b066] 43e9 0016                 lea.l      22(a1),a1
[0002b06a] 2749 000a                 move.l     a1,10(a3)
[0002b06e] 600a                      bra.s      set_userdef_9
set_userdef_6:
[0002b070] 226a 000c                 movea.l    12(a2),a1
[0002b074] 2769 0004 000a            move.l     4(a1),10(a3)
set_userdef_9:
[0002b07a] 42ab 000e                 clr.l      14(a3)
[0002b07e] 6014                      bra.s      set_userdef_8
set_userdef_7:
[0002b080] 226a 000c                 movea.l    12(a2),a1
[0002b084] 2769 0004 000a            move.l     4(a1),10(a3)
[0002b08a] 226a 000c                 movea.l    12(a2),a1
[0002b08e] 2769 000e 000e            move.l     14(a1),14(a3)
set_userdef_8:
[0002b094] 3028 0038                 move.w     56(a0),d0
[0002b098] e440                      asr.w      #2,d0
[0002b09a] c07c 0003                 and.w      #$0003,d0
[0002b09e] 3740 0012                 move.w     d0,18(a3)
[0002b0a2] 4a40                      tst.w      d0
[0002b0a4] 670e                      beq.s      set_userdef_10
[0002b0a6] 5340                      subq.w     #1,d0
[0002b0a8] 6710                      beq.s      set_userdef_11
[0002b0aa] 5340                      subq.w     #1,d0
[0002b0ac] 671a                      beq.s      set_userdef_12
[0002b0ae] 5340                      subq.w     #1,d0
[0002b0b0] 6726                      beq.s      set_userdef_13
[0002b0b2] 6038                      bra.s      set_userdef_14
set_userdef_10:
[0002b0b4] 42ab 0014                 clr.l      20(a3)
[0002b0b8] 6018                      bra.s      set_userdef_15
set_userdef_11:
[0002b0ba] 226a 0010                 movea.l    16(a2),a1
[0002b0be] 43e9 0016                 lea.l      22(a1),a1
[0002b0c2] 2749 0014                 move.l     a1,20(a3)
[0002b0c6] 600a                      bra.s      set_userdef_15
set_userdef_12:
[0002b0c8] 226a 0010                 movea.l    16(a2),a1
[0002b0cc] 2769 0004 0014            move.l     4(a1),20(a3)
set_userdef_15:
[0002b0d2] 42ab 0018                 clr.l      24(a3)
[0002b0d6] 6014                      bra.s      set_userdef_14
set_userdef_13:
[0002b0d8] 226a 0010                 movea.l    16(a2),a1
[0002b0dc] 2769 0004 0014            move.l     4(a1),20(a3)
[0002b0e2] 226a 0010                 movea.l    16(a2),a1
[0002b0e6] 2769 000e 0018            move.l     14(a1),24(a3)
set_userdef_14:
[0002b0ec] 3028 0038                 move.w     56(a0),d0
[0002b0f0] e840                      asr.w      #4,d0
[0002b0f2] c07c 0003                 and.w      #$0003,d0
[0002b0f6] 3740 001c                 move.w     d0,28(a3)
[0002b0fa] 4a40                      tst.w      d0
[0002b0fc] 670e                      beq.s      set_userdef_16
[0002b0fe] 5340                      subq.w     #1,d0
[0002b100] 6710                      beq.s      set_userdef_17
[0002b102] 5340                      subq.w     #1,d0
[0002b104] 671a                      beq.s      set_userdef_18
[0002b106] 5340                      subq.w     #1,d0
[0002b108] 6726                      beq.s      set_userdef_19
[0002b10a] 6038                      bra.s      set_userdef_20
set_userdef_16:
[0002b10c] 42ab 001e                 clr.l      30(a3)
[0002b110] 6018                      bra.s      set_userdef_21
set_userdef_17:
[0002b112] 206a 0014                 movea.l    20(a2),a0
[0002b116] 41e8 0016                 lea.l      22(a0),a0
[0002b11a] 2748 001e                 move.l     a0,30(a3)
[0002b11e] 600a                      bra.s      set_userdef_21
set_userdef_18:
[0002b120] 206a 0014                 movea.l    20(a2),a0
[0002b124] 2768 0004 001e            move.l     4(a0),30(a3)
set_userdef_21:
[0002b12a] 42ab 0022                 clr.l      34(a3)
[0002b12e] 6014                      bra.s      set_userdef_20
set_userdef_19:
[0002b130] 206a 0014                 movea.l    20(a2),a0
[0002b134] 2768 0004 001e            move.l     4(a0),30(a3)
[0002b13a] 206a 0014                 movea.l    20(a2),a0
[0002b13e] 2768 000e 0022            move.l     14(a0),34(a3)
set_userdef_20:
[0002b144] 202a 0018                 move.l     24(a2),d0
[0002b148] 6604                      bne.s      set_userdef_22
[0002b14a] 91c8                      suba.l     a0,a0
[0002b14c] 600e                      bra.s      set_userdef_23
set_userdef_22:
[0002b14e] 206a 0018                 movea.l    24(a2),a0
[0002b152] 2068 0004                 movea.l    4(a0),a0
[0002b156] 4eb9 0004 36d6            jsr        Ast_create
set_userdef_23:
[0002b15c] 2748 0026                 move.l     a0,38(a3)
[0002b160] 202a 001c                 move.l     28(a2),d0
[0002b164] 6604                      bne.s      set_userdef_24
[0002b166] 93c9                      suba.l     a1,a1
[0002b168] 6010                      bra.s      set_userdef_25
set_userdef_24:
[0002b16a] 206a 001c                 movea.l    28(a2),a0
[0002b16e] 2068 0004                 movea.l    4(a0),a0
[0002b172] 4eb9 0004 36d6            jsr        Ast_create
[0002b178] 2248                      movea.l    a0,a1
set_userdef_25:
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
[0002b196] 4eb9 0007 712e            jsr        memset
[0002b19c] 286b 0004                 movea.l    4(a3),a4
[0002b1a0] 2054                      movea.l    (a4),a0
[0002b1a2] 41e8 0016                 lea.l      22(a0),a0
[0002b1a6] 4eb9 0002 34bc            jsr        part_get
[0002b1ac] 2a48                      movea.l    a0,a5
[0002b1ae] 200d                      move.l     a5,d0
[0002b1b0] 6714                      beq.s      map_user_1
[0002b1b2] 43d7                      lea.l      (a7),a1
[0002b1b4] 204b                      movea.l    a3,a0
[0002b1b6] 6100 fe44                 bsr        set_userdef
[0002b1ba] 224a                      movea.l    a2,a1
[0002b1bc] 41d7                      lea.l      (a7),a0
[0002b1be] 266d 0024                 movea.l    36(a5),a3
[0002b1c2] 4e93                      jsr        (a3)
[0002b1c4] 6020                      bra.s      map_user_2
map_user_1:
[0002b1c6] 24bc 0002 b50c            move.l     #user_dummy,(a2)
[0002b1cc] 486a 0004                 pea.l      4(a2)
[0002b1d0] 43f9 000b cd52            lea.l      $000BCD52,a1
[0002b1d6] 206c 0004                 movea.l    4(a4),a0
[0002b1da] 41e8 0016                 lea.l      22(a0),a0
[0002b1de] 4eb9 0007 594a            jsr        sscanf
[0002b1e4] 584f                      addq.w     #4,a7
map_user_2:
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
[0002b20a] 673e                      beq.s      reorg_1
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
[0002b22e] 4eb9 0002 b252            jsr        subtree
[0002b234] 4fef 000e                 lea.l      14(a7),a7
[0002b238] 254b 0004                 move.l     a3,4(a2)
[0002b23c] 256a 000e 000a            move.l     14(a2),10(a2)
[0002b242] 204c                      movea.l    a4,a0
[0002b244] 4eb9 0004 7e26            jsr        Ax_free
reorg_1:
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
subtree_5:
[0002b274] 3612                      move.w     (a2),d3
[0002b276] 3004                      move.w     d4,d0
[0002b278] d040                      add.w      d0,d0
[0002b27a] d044                      add.w      d4,d0
[0002b27c] 5440                      addq.w     #2,d0
[0002b27e] 3217                      move.w     (a7),d1
[0002b280] b240                      cmp.w      d0,d1
[0002b282] 660a                      bne.s      subtree_1
[0002b284] 3403                      move.w     d3,d2
[0002b286] d442                      add.w      d2,d2
[0002b288] d443                      add.w      d3,d2
[0002b28a] 5442                      addq.w     #2,d2
[0002b28c] 3682                      move.w     d2,(a3)
subtree_1:
[0002b28e] b846                      cmp.w      d6,d4
[0002b290] 6602                      bne.s      subtree_2
[0002b292] 3883                      move.w     d3,(a4)
subtree_2:
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
[0002b2b6] 4eb9 0007 6f44            jsr        memcpy
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
[0002b2d4] 6b3e                      bmi.s      subtree_3
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
[0002b2fa] 6100 ff56                 bsr        subtree
[0002b2fe] 4fef 000e                 lea.l      14(a7),a7
[0002b302] 3a00                      move.w     d0,d5
[0002b304] 3403                      move.w     d3,d2
[0002b306] 48c2                      ext.l      d2
[0002b308] 2202                      move.l     d2,d1
[0002b30a] e789                      lsl.l      #3,d1
[0002b30c] 9282                      sub.l      d2,d1
[0002b30e] e789                      lsl.l      #3,d1
[0002b310] 3d80 180c                 move.w     d0,12(a6,d1.l)
subtree_3:
[0002b314] 4a47                      tst.w      d7
[0002b316] 6b28                      bmi.s      subtree_4
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
[0002b338] 6706                      beq.s      subtree_4
[0002b33a] 3807                      move.w     d7,d4
[0002b33c] 6000 ff36                 bra        subtree_5
subtree_4:
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
[0002b36a] 660a                      bne.s      user_control_1
[0002b36c] 7201                      moveq.l    #1,d1
[0002b36e] c26a 0006                 and.w      6(a2),d1
[0002b372] 6700 0190                 beq        user_control_2
user_control_1:
[0002b376] 47f9 000f f64a            lea.l      pxy,a3
[0002b37c] 376a 0016 0004            move.w     22(a2),4(a3)
[0002b382] 376a 0018 0006            move.w     24(a2),6(a3)
[0002b388] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002b38e] 302b 0004                 move.w     4(a3),d0
[0002b392] 6606                      bne.s      user_control_3
[0002b394] 322b 0006                 move.w     6(a3),d1
[0002b398] 672c                      beq.s      user_control_4
user_control_3:
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
[0002b3c0] 4eb9 0006 3f60            jsr        vs_clip
user_control_4:
[0002b3c6] 7203                      moveq.l    #3,d1
[0002b3c8] 2054                      movea.l    (a4),a0
[0002b3ca] 3028 0010                 move.w     16(a0),d0
[0002b3ce] 4eb9 0006 4da0            jsr        vswr_mode
[0002b3d4] 7201                      moveq.l    #1,d1
[0002b3d6] 2054                      movea.l    (a4),a0
[0002b3d8] 3028 0010                 move.w     16(a0),d0
[0002b3dc] 4eb9 0006 4e9a            jsr        vsl_width
[0002b3e2] 4242                      clr.w      d2
[0002b3e4] 4241                      clr.w      d1
[0002b3e6] 2054                      movea.l    (a4),a0
[0002b3e8] 3028 0010                 move.w     16(a0),d0
[0002b3ec] 4eb9 0006 4f44            jsr        vsl_ends
[0002b3f2] 7207                      moveq.l    #7,d1
[0002b3f4] 2054                      movea.l    (a4),a0
[0002b3f6] 3028 0010                 move.w     16(a0),d0
[0002b3fa] 4eb9 0006 4df4            jsr        vsl_type
[0002b400] 7201                      moveq.l    #1,d1
[0002b402] 2054                      movea.l    (a4),a0
[0002b404] 3028 0010                 move.w     16(a0),d0
[0002b408] 4eb9 0006 4ef0            jsr        vsl_color
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
[0002b43c] 4eb9 0004 4386            jsr        xline2
[0002b442] 342b 0006                 move.w     6(a3),d2
[0002b446] 322b 0004                 move.w     4(a3),d1
[0002b44a] 3013                      move.w     (a3),d0
[0002b44c] 4eb9 0004 4386            jsr        xline2
[0002b452] 3413                      move.w     (a3),d2
[0002b454] 322b 0006                 move.w     6(a3),d1
[0002b458] 302b 0002                 move.w     2(a3),d0
[0002b45c] 4eb9 0004 4426            jsr        yline2
[0002b462] 342b 0004                 move.w     4(a3),d2
[0002b466] 322b 0006                 move.w     6(a3),d1
[0002b46a] 302b 0002                 move.w     2(a3),d0
[0002b46e] 4eb9 0004 4426            jsr        yline2
[0002b474] 302a 000e                 move.w     14(a2),d0
[0002b478] e640                      asr.w      #3,d0
[0002b47a] 5140                      subq.w     #8,d0
[0002b47c] 6f10                      ble.s      user_control_5
[0002b47e] 322b 0004                 move.w     4(a3),d1
[0002b482] 342a 000e                 move.w     14(a2),d2
[0002b486] e642                      asr.w      #3,d2
[0002b488] 9242                      sub.w      d2,d1
[0002b48a] 3681                      move.w     d1,(a3)
[0002b48c] 6008                      bra.s      user_control_6
user_control_5:
[0002b48e] 70f8                      moveq.l    #-8,d0
[0002b490] d06b 0004                 add.w      4(a3),d0
[0002b494] 3680                      move.w     d0,(a3)
user_control_6:
[0002b496] 302a 0010                 move.w     16(a2),d0
[0002b49a] e640                      asr.w      #3,d0
[0002b49c] 5140                      subq.w     #8,d0
[0002b49e] 6f12                      ble.s      user_control_7
[0002b4a0] 322b 0006                 move.w     6(a3),d1
[0002b4a4] 342a 0010                 move.w     16(a2),d2
[0002b4a8] e642                      asr.w      #3,d2
[0002b4aa] 9242                      sub.w      d2,d1
[0002b4ac] 3741 0002                 move.w     d1,2(a3)
[0002b4b0] 600a                      bra.s      user_control_8
user_control_7:
[0002b4b2] 70f8                      moveq.l    #-8,d0
[0002b4b4] d06b 0006                 add.w      6(a3),d0
[0002b4b8] 3740 0002                 move.w     d0,2(a3)
user_control_8:
[0002b4bc] 7201                      moveq.l    #1,d1
[0002b4be] 2054                      movea.l    (a4),a0
[0002b4c0] 3028 0010                 move.w     16(a0),d0
[0002b4c4] 4eb9 0006 5390            jsr        vsf_interior
[0002b4ca] 7201                      moveq.l    #1,d1
[0002b4cc] 2054                      movea.l    (a4),a0
[0002b4ce] 3028 0010                 move.w     16(a0),d0
[0002b4d2] 4eb9 0006 5438            jsr        vsf_color
[0002b4d8] 4241                      clr.w      d1
[0002b4da] 2054                      movea.l    (a4),a0
[0002b4dc] 3028 0010                 move.w     16(a0),d0
[0002b4e0] 4eb9 0006 548c            jsr        vsf_perimeter
[0002b4e6] 204b                      movea.l    a3,a0
[0002b4e8] 2254                      movea.l    (a4),a1
[0002b4ea] 3029 0010                 move.w     16(a1),d0
[0002b4ee] 4eb9 0006 455e            jsr        v_bar
[0002b4f4] 204b                      movea.l    a3,a0
[0002b4f6] 4241                      clr.w      d1
[0002b4f8] 2254                      movea.l    (a4),a1
[0002b4fa] 3029 0010                 move.w     16(a1),d0
[0002b4fe] 4eb9 0006 3f60            jsr        vs_clip
user_control_2:
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
[0002b52c] 6606                      bne.s      user_dummy_1
[0002b52e] 322f 0006                 move.w     6(a7),d1
[0002b532] 672c                      beq.s      user_dummy_2
user_dummy_1:
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
[0002b55a] 4eb9 0006 3f60            jsr        vs_clip
user_dummy_2:
[0002b560] 7001                      moveq.l    #1,d0
[0002b562] c06a 0008                 and.w      8(a2),d0
[0002b566] 6664                      bne.s      user_dummy_3
[0002b568] 7201                      moveq.l    #1,d1
[0002b56a] c26a 0006                 and.w      6(a2),d1
[0002b56e] 665c                      bne.s      user_dummy_3
[0002b570] 2054                      movea.l    (a4),a0
[0002b572] 3028 0010                 move.w     16(a0),d0
[0002b576] 7203                      moveq.l    #3,d1
[0002b578] 4eb9 0006 4da0            jsr        vswr_mode
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
[0002b5aa] 4eb9 0006 5390            jsr        vsf_interior
[0002b5b0] 7201                      moveq.l    #1,d1
[0002b5b2] 2054                      movea.l    (a4),a0
[0002b5b4] 3028 0010                 move.w     16(a0),d0
[0002b5b8] 4eb9 0006 5438            jsr        vsf_color
[0002b5be] 41d7                      lea.l      (a7),a0
[0002b5c0] 2254                      movea.l    (a4),a1
[0002b5c2] 3029 0010                 move.w     16(a1),d0
[0002b5c6] 4eb9 0006 455e            jsr        v_bar
user_dummy_3:
[0002b5cc] 41d7                      lea.l      (a7),a0
[0002b5ce] 4241                      clr.w      d1
[0002b5d0] 2254                      movea.l    (a4),a1
[0002b5d2] 3029 0010                 move.w     16(a1),d0
[0002b5d6] 4eb9 0006 3f60            jsr        vs_clip
[0002b5dc] 70fe                      moveq.l    #-2,d0
[0002b5de] c06a 0008                 and.w      8(a2),d0
[0002b5e2] 504f                      addq.w     #8,a7
[0002b5e4] 4cdf 1404                 movem.l    (a7)+,d2/a2/a4
[0002b5e8] 4e75                      rts

	.data

NEW_POPUP:
[000b8518]                           dc.b '[2][ Wollen Sie ein neues | PopUp-MenÅ erzeugen? ][OK| Abbruch ]',0
WARN_SAME:
[000b8559]                           dc.b '[2][| Das Objekt soll auf sich| selbst kopiert werden!| Operation abbrechen?][ JA | NEIN ]',0
WARN_XSHRINK:
[000b85b4]                           dc.b '[2][| Kindobjekt ist breiter | als das Elternobjekt.| Kind verkleinern ?][ JA | NEIN ]',0
WARN_YSHRINK:
[000b860b]                           dc.b '[2][| Kindobjekt ist hîher| als das Elternobjekt. | Kind verkleinern ?][ JA | NEIN ]',0
STGUIDE_01:
[000b8660]                           dc.b 'Der Objektbaum-Editor',0
STGUIDE_02:
[000b8676]                           dc.b 'Der MenÅ-Editor',0
STGUIDE_03:
[000b8686]                           dc.b 'Der Popup-Editor',0
STGUIDE_04:
[000b8697]                           dc.b 'Eingabe der Objekt-Position',0
TEXT_002:
[000b86b3]                           dc.b $00
TEXT_003:
[000b86b4]                           dc.w $4f4b
[000b86b6]                           dc.b $00
TEXT_006:
[000b86b7]                           dc.b '1234567890123456789012345678901',0
TEXT_01:
[000b86d7]                           dc.b 'Subobj:',0
TEXT_010:
[000b86df]                           dc.b ' MENö EDITOR ',0
TEXT_011:
[000b86ed]                           dc.b ' OBJEKTBAUM EDITOR ',0
TEXT_012:
[000b8701]                           dc.b ' POPUP EDITOR ',0
TEXT_02:
[000b8710]                           dc.b 'MENöS',0
TEXT_03:
[000b8716]                           dc.b '  Objekt-Editor...',0
TEXT_04:
[000b8729]                           dc.b '  Lerne Tasten       '
[000b873e]                           dc.w $074c
[000b8740]                           dc.b $00
TEXT_05:
[000b8741]                           dc.b '  Referenzen...',0
TEXT_06:
[000b8751]                           dc.b '  Information...     ^I',0
TEXT_069:
[000b8769]                           dc.b 'Datei:',0
TEXT_07:
[000b8770]                           dc.b '  Referenzen lîschen',0
TEXT_071:
[000b8785]                           dc.b 'Objekt:',0
TEXT_08:
[000b878d]                           dc.b 'Char:',0
TEXT_086:
[000b8793]                           dc.b '  Verstecke',0
TEXT_087:
[000b879f]                           dc.b '  Decke auf',0
TEXT_088:
[000b87ab]                           dc.b '  Verriegeln',0
TEXT_089:
[000b87b8]                           dc.b '  Entriegeln',0
TEXT_09:
[000b87c5]                           dc.b '  Test...            '
[000b87da]                           dc.w $0754
[000b87dc]                           dc.b $00
TEXT_090:
[000b87dd]                           dc.b '  Rechts',0
TEXT_091:
[000b87e6]                           dc.b '  Mitte',0
TEXT_092:
[000b87ee]                           dc.b '  Links',0
TEXT_093:
[000b87f6]                           dc.b '  Oben',0
TEXT_094:
[000b87fd]                           dc.b '-Vertikal-',0
TEXT_095:
[000b8808]                           dc.b '  Unten',0
TEXT_097:
[000b8810]                           dc.b '  Nach oben',0
TEXT_098:
[000b881c]                           dc.b '  Nach unten',0
TEXT_099:
[000b8829]                           dc.b 'Horizontal',0
TEXT_10:
[000b8834]                           dc.b 'Pixel:',0
TEXT_100:
[000b883b]                           dc.b '  FÅllen',0
TEXT_11:
[000b8844]                           dc.b '  Sichtbarkeit    '
[000b8856]                           dc.w $0300
TEXT_13:
[000b8858]                           dc.b 'Ob_Y:',0
TEXT_133:
[000b885e]                           dc.b '123456',0
TEXT_14:
[000b8865]                           dc.b 'Ob_Width:',0
TEXT_15:
[000b886f]                           dc.b 'Ob_Height:',0
TEXT_16:
[000b887a]                           dc.b ' Objekt(e) angewÑhlt ',0
TEXT_17:
[000b8890]                           dc.b 'POPUP',0
TEXT_170:
[000b8896]                           dc.b '  öber mich ...     ',0
TEXT_171:
[000b88ab]                           dc.b '--------------------',0
TEXT_18:
[000b88c0]                           dc.b '  Kontroll-Fenster    K',0
TEXT_19:
[000b88d8]                           dc.b '  Position...',0
TEXT_20:
[000b88e6]                           dc.b '  Ausrichtung     '
[000b88f8]                           dc.w $0300
TEXT_21:
[000b88fa]                           dc.b 'Ob_X:',0
TEXT_22:
[000b8900]                           dc.b ' Information ',0
TEXT_23:
[000b890e]                           dc.b ' Position ',0
TEXT_239:
[000b8919]                           dc.b 'Aufruf:',0
TEXT_24:
[000b8921]                           dc.b 'Aufdecken',0
TEXT_245:
[000b892b]                           dc.b 'Index:',0
TEXT_25:
[000b8932]                           dc.b ' Objekt(e) empfangen ',0
TEXT_26:
[000b8948]                           dc.b '  Status...',0
TEXT_27:
[000b8954]                           dc.b 'OBJEKTE',0
TEXT_28:
[000b895c]                           dc.b '  Reihenfolge     '
[000b896e]                           dc.w $0300
TEXT_29:
[000b8970]                           dc.b 'Verriegeln',0
TEXT_30:
[000b897b]                           dc.b 'vertikal:',0
TEXT_301:
[000b8985]                           dc.b 'Abbruch',0
TEXT_31:
[000b898d]                           dc.b 'horizontal:',0
TEXT_32:
[000b8999]                           dc.b 'nach Unten',0
TEXT_339:
[000b89a4]                           dc.b ' Baum ',0
TEXT_34:
[000b89ab]                           dc.b 'Verstecken',0
TEXT_35:
[000b89b6]                           dc.b 'Entriegeln',0
TEXT_36:
[000b89c1]                           dc.b 'nach Oben',0
testmode:
[000b89cb]                           dc.b ' TESTMODE -',0
[000b89d7]                           dc.b $00
DATAS_01:
[000b89d8]                           dc.b $00
[000b89d9]                           dc.b $00
[000b89da]                           dc.b $00
[000b89db]                           dc.b $00
[000b89dc]                           dc.w $02f0
[000b89de]                           dc.b $00
[000b89df]                           dc.b $00
[000b89e0]                           dc.b $00
[000b89e1]                           dc.b $00
[000b89e2]                           dc.b $00
[000b89e3]                           dc.b $00
[000b89e4]                           dc.w $7fff
[000b89e6]                           dc.w $ffff
[000b89e8]                           dc.w $fffe
[000b89ea]                           dc.w $4000
[000b89ec]                           dc.b $00
[000b89ed]                           dc.b $00
[000b89ee]                           dc.b $00
[000b89ef]                           dc.b $02
[000b89f0]                           dc.w $5fff
[000b89f2]                           dc.w $ffff
[000b89f4]                           dc.w $fffa
[000b89f6]                           dc.w $5800
[000b89f8]                           dc.w $03ff
[000b89fa]                           dc.w $fffa
[000b89fc]                           dc.w $5800
[000b89fe]                           dc.w $038f
[000b8a00]                           dc.w $f81a
[000b8a02]                           dc.w $58ef
[000b8a04]                           dc.w $63bf
[000b8a06]                           dc.w $ffda
[000b8a08]                           dc.w $5800
[000b8a0a]                           dc.w $03bf
[000b8a0c]                           dc.w $ffda
[000b8a0e]                           dc.w $5800
[000b8a10]                           dc.w $03bf
[000b8a12]                           dc.w $ffda
[000b8a14]                           dc.w $5fff
[000b8a16]                           dc.w $ffbf
[000b8a18]                           dc.w $ffda
[000b8a1a]                           dc.w $5fff
[000b8a1c]                           dc.w $ffbf
[000b8a1e]                           dc.w $ffda
[000b8a20]                           dc.w $5800
[000b8a22]                           dc.w $03bf
[000b8a24]                           dc.w $ffda
[000b8a26]                           dc.w $5800
[000b8a28]                           dc.w $03bf
[000b8a2a]                           dc.w $ffda
[000b8a2c]                           dc.w $58f6
[000b8a2e]                           dc.w $e3bf
[000b8a30]                           dc.w $ffda
[000b8a32]                           dc.w $5800
[000b8a34]                           dc.w $03bf
[000b8a36]                           dc.w $ffda
[000b8a38]                           dc.w $5800
[000b8a3a]                           dc.w $0380
[000b8a3c]                           dc.b $00
[000b8a3d]                           dc.b $1a
[000b8a3e]                           dc.w $5fff
[000b8a40]                           dc.w $ffff
[000b8a42]                           dc.w $fffa
[000b8a44]                           dc.w $5fff
[000b8a46]                           dc.w $ffff
[000b8a48]                           dc.w $fffa
[000b8a4a]                           dc.b $5f
[000b8a4b]                           dc.b $ff
[000b8a4c]                           dc.w $ffff
[000b8a4e]                           dc.w $fffa
[000b8a50]                           dc.w $5fff
[000b8a52]                           dc.w $ffff
[000b8a54]                           dc.w $fffa
[000b8a56]                           dc.w $5fff
[000b8a58]                           dc.w $ffff
[000b8a5a]                           dc.w $fffa
[000b8a5c]                           dc.w $5fc0
[000b8a5e]                           dc.w $07c0
[000b8a60]                           dc.w $01fa
[000b8a62]                           dc.w $5fdf
[000b8a64]                           dc.w $f7df
[000b8a66]                           dc.w $fdfa
[000b8a68]                           dc.w $5fdf
[000b8a6a]                           dc.w $f7df
[000b8a6c]                           dc.w $fdfa
[000b8a6e]                           dc.w $5fdf
[000b8a70]                           dc.w $f7df
[000b8a72]                           dc.w $fdfa
[000b8a74]                           dc.w $5fc0
[000b8a76]                           dc.w $07c0
[000b8a78]                           dc.w $01fa
[000b8a7a]                           dc.w $5fff
[000b8a7c]                           dc.w $ffff
[000b8a7e]                           dc.w $fffa
[000b8a80]                           dc.w $5fff
[000b8a82]                           dc.w $ffff
[000b8a84]                           dc.w $fffa
[000b8a86]                           dc.w $4000
[000b8a88]                           dc.b $00
[000b8a89]                           dc.b $00
[000b8a8a]                           dc.b $00
[000b8a8b]                           dc.b $02
[000b8a8c]                           dc.w $7fff
[000b8a8e]                           dc.w $ffff
[000b8a90]                           dc.w $fffe
[000b8a92]                           dc.b $00
[000b8a93]                           dc.b $00
[000b8a94]                           dc.b $00
[000b8a95]                           dc.b $00
[000b8a96]                           dc.b $00
[000b8a97]                           dc.b $00
[000b8a98]                           dc.b $00
[000b8a99]                           dc.b $00
[000b8a9a]                           dc.b $00
[000b8a9b]                           dc.b $00
[000b8a9c]                           dc.b $00
[000b8a9d]                           dc.b $00
[000b8a9e]                           dc.w $7fff
[000b8aa0]                           dc.w $ffff
[000b8aa2]                           dc.w $fffe
[000b8aa4]                           dc.w $4000
[000b8aa6]                           dc.b $00
[000b8aa7]                           dc.b $00
[000b8aa8]                           dc.b $00
[000b8aa9]                           dc.b $02
[000b8aaa]                           dc.w $5fff
[000b8aac]                           dc.w $ffff
[000b8aae]                           dc.w $fffa
[000b8ab0]                           dc.w $5800
[000b8ab2]                           dc.w $03ff
[000b8ab4]                           dc.w $fffa
[000b8ab6]                           dc.w $5800
[000b8ab8]                           dc.w $038f
[000b8aba]                           dc.w $f81a
[000b8abc]                           dc.w $58ef
[000b8abe]                           dc.w $63bf
[000b8ac0]                           dc.w $ffda
[000b8ac2]                           dc.w $5800
[000b8ac4]                           dc.w $03bf
[000b8ac6]                           dc.w $ffda
[000b8ac8]                           dc.w $5800
[000b8aca]                           dc.w $03bf
[000b8acc]                           dc.w $ffda
[000b8ace]                           dc.w $5fff
[000b8ad0]                           dc.w $ffbf
[000b8ad2]                           dc.w $ffda
[000b8ad4]                           dc.w $5fff
[000b8ad6]                           dc.w $ffbf
[000b8ad8]                           dc.w $ffda
[000b8ada]                           dc.w $5800
[000b8adc]                           dc.w $03bf
[000b8ade]                           dc.w $ffda
[000b8ae0]                           dc.w $5800
[000b8ae2]                           dc.w $03bf
[000b8ae4]                           dc.w $ffda
[000b8ae6]                           dc.w $58f6
[000b8ae8]                           dc.w $e3bf
[000b8aea]                           dc.w $ffda
[000b8aec]                           dc.w $5800
[000b8aee]                           dc.w $03bf
[000b8af0]                           dc.w $ffda
[000b8af2]                           dc.w $5800
[000b8af4]                           dc.w $0380
[000b8af6]                           dc.b $00
[000b8af7]                           dc.b $1a
[000b8af8]                           dc.w $5fff
[000b8afa]                           dc.w $ffff
[000b8afc]                           dc.w $fffa
[000b8afe]                           dc.w $5fff
[000b8b00]                           dc.w $ffff
[000b8b02]                           dc.w $fffa
[000b8b04]                           dc.w $5fff
[000b8b06]                           dc.w $ffff
[000b8b08]                           dc.w $fffa
[000b8b0a]                           dc.b $5f
[000b8b0b]                           dc.b $ff
[000b8b0c]                           dc.w $ffff
[000b8b0e]                           dc.w $fffa
[000b8b10]                           dc.w $5fff
[000b8b12]                           dc.w $ffff
[000b8b14]                           dc.w $fffa
[000b8b16]                           dc.w $5fc0
[000b8b18]                           dc.w $07c0
[000b8b1a]                           dc.w $01fa
[000b8b1c]                           dc.w $5fdf
[000b8b1e]                           dc.w $f7df
[000b8b20]                           dc.w $fdfa
[000b8b22]                           dc.w $5fdf
[000b8b24]                           dc.w $f7df
[000b8b26]                           dc.w $fdfa
[000b8b28]                           dc.w $5fdf
[000b8b2a]                           dc.w $f7df
[000b8b2c]                           dc.w $fdfa
[000b8b2e]                           dc.w $5fc0
[000b8b30]                           dc.w $07c0
[000b8b32]                           dc.w $01fa
[000b8b34]                           dc.w $5fff
[000b8b36]                           dc.w $ffff
[000b8b38]                           dc.w $fffa
[000b8b3a]                           dc.w $5fff
[000b8b3c]                           dc.w $ffff
[000b8b3e]                           dc.w $fffa
[000b8b40]                           dc.w $4000
[000b8b42]                           dc.b $00
[000b8b43]                           dc.b $00
[000b8b44]                           dc.b $00
[000b8b45]                           dc.b $02
[000b8b46]                           dc.w $7fff
[000b8b48]                           dc.w $ffff
[000b8b4a]                           dc.w $fffe
[000b8b4c]                           dc.b $00
[000b8b4d]                           dc.b $00
[000b8b4e]                           dc.b $00
[000b8b4f]                           dc.b $00
[000b8b50]                           dc.b $00
[000b8b51]                           dc.b $00
[000b8b52]                           dc.b $00
[000b8b53]                           dc.b $00
[000b8b54]                           dc.b $00
[000b8b55]                           dc.b $00
[000b8b56]                           dc.b $00
[000b8b57]                           dc.b $00
[000b8b58]                           dc.w $7fff
[000b8b5a]                           dc.w $ffff
[000b8b5c]                           dc.w $fffe
[000b8b5e]                           dc.w $4000
[000b8b60]                           dc.b $00
[000b8b61]                           dc.b $00
[000b8b62]                           dc.b $00
[000b8b63]                           dc.b $02
[000b8b64]                           dc.w $5fff
[000b8b66]                           dc.w $ffff
[000b8b68]                           dc.w $fffa
[000b8b6a]                           dc.w $5800
[000b8b6c]                           dc.w $03ff
[000b8b6e]                           dc.w $fffa
[000b8b70]                           dc.w $5800
[000b8b72]                           dc.w $038f
[000b8b74]                           dc.w $f81a
[000b8b76]                           dc.w $58ef
[000b8b78]                           dc.w $63bf
[000b8b7a]                           dc.w $ffda
[000b8b7c]                           dc.w $5800
[000b8b7e]                           dc.w $03bf
[000b8b80]                           dc.w $ffda
[000b8b82]                           dc.w $5800
[000b8b84]                           dc.w $03bf
[000b8b86]                           dc.w $ffda
[000b8b88]                           dc.w $5fff
[000b8b8a]                           dc.w $ffbf
[000b8b8c]                           dc.w $ffda
[000b8b8e]                           dc.w $5fff
[000b8b90]                           dc.w $ffbf
[000b8b92]                           dc.w $ffda
[000b8b94]                           dc.w $5800
[000b8b96]                           dc.w $03bf
[000b8b98]                           dc.w $ffda
[000b8b9a]                           dc.w $5800
[000b8b9c]                           dc.w $03bf
[000b8b9e]                           dc.w $ffda
[000b8ba0]                           dc.w $58f6
[000b8ba2]                           dc.w $e3bf
[000b8ba4]                           dc.w $ffda
[000b8ba6]                           dc.w $5800
[000b8ba8]                           dc.w $03bf
[000b8baa]                           dc.w $ffda
[000b8bac]                           dc.w $5800
[000b8bae]                           dc.w $0380
[000b8bb0]                           dc.b $00
[000b8bb1]                           dc.b $1a
[000b8bb2]                           dc.w $5fff
[000b8bb4]                           dc.w $ffff
[000b8bb6]                           dc.w $fffa
[000b8bb8]                           dc.w $5fff
[000b8bba]                           dc.w $ffff
[000b8bbc]                           dc.w $fffa
[000b8bbe]                           dc.w $5fff
[000b8bc0]                           dc.w $ffff
[000b8bc2]                           dc.w $fffa
[000b8bc4]                           dc.w $5fff
[000b8bc6]                           dc.w $ffff
[000b8bc8]                           dc.w $fffa
[000b8bca]                           dc.w $5fff
[000b8bcc]                           dc.w $ffff
[000b8bce]                           dc.w $fffa
[000b8bd0]                           dc.w $5fc0
[000b8bd2]                           dc.w $07c0
[000b8bd4]                           dc.w $01fa
[000b8bd6]                           dc.w $5fdf
[000b8bd8]                           dc.w $f7df
[000b8bda]                           dc.w $fdfa
[000b8bdc]                           dc.w $5fdf
[000b8bde]                           dc.w $f7df
[000b8be0]                           dc.w $fdfa
[000b8be2]                           dc.w $5fdf
[000b8be4]                           dc.w $f7df
[000b8be6]                           dc.w $fdfa
[000b8be8]                           dc.w $5fc0
[000b8bea]                           dc.w $07c0
[000b8bec]                           dc.w $01fa
[000b8bee]                           dc.w $5fff
[000b8bf0]                           dc.w $ffff
[000b8bf2]                           dc.w $fffa
[000b8bf4]                           dc.w $5fff
[000b8bf6]                           dc.w $ffff
[000b8bf8]                           dc.w $fffa
[000b8bfa]                           dc.w $4000
[000b8bfc]                           dc.b $00
[000b8bfd]                           dc.b $00
[000b8bfe]                           dc.b $00
[000b8bff]                           dc.b $02
[000b8c00]                           dc.w $7fff
[000b8c02]                           dc.w $ffff
[000b8c04]                           dc.w $fffe
[000b8c06]                           dc.b $00
[000b8c07]                           dc.b $00
[000b8c08]                           dc.b $00
[000b8c09]                           dc.b $00
[000b8c0a]                           dc.b $00
[000b8c0b]                           dc.b $00
[000b8c0c]                           dc.b $00
[000b8c0d]                           dc.b $00
[000b8c0e]                           dc.b $00
[000b8c0f]                           dc.b $00
[000b8c10]                           dc.b $00
[000b8c11]                           dc.b $00
[000b8c12]                           dc.w $7fff
[000b8c14]                           dc.w $ffff
[000b8c16]                           dc.w $fffe
[000b8c18]                           dc.w $4000
[000b8c1a]                           dc.b $00
[000b8c1b]                           dc.b $00
[000b8c1c]                           dc.b $00
[000b8c1d]                           dc.b $06
[000b8c1e]                           dc.w $4000
[000b8c20]                           dc.b $00
[000b8c21]                           dc.b $00
[000b8c22]                           dc.b $00
[000b8c23]                           dc.b $06
[000b8c24]                           dc.w $47ff
[000b8c26]                           dc.w $fc07
[000b8c28]                           dc.w $f006
[000b8c2a]                           dc.w $4400
[000b8c2c]                           dc.w $0470
[000b8c2e]                           dc.w $07e6
[000b8c30]                           dc.w $44ef
[000b8c32]                           dc.w $6440
[000b8c34]                           dc.b $00
[000b8c35]                           dc.b $26
[000b8c36]                           dc.w $4400
[000b8c38]                           dc.w $0453
[000b8c3a]                           dc.w $dfa6
[000b8c3c]                           dc.w $47ff
[000b8c3e]                           dc.w $fc40
[000b8c40]                           dc.b $00
[000b8c41]                           dc.b $26
[000b8c42]                           dc.w $4000
[000b8c44]                           dc.b $00
[000b8c45]                           dc.b $40
[000b8c46]                           dc.b $00
[000b8c47]                           dc.b $26
[000b8c48]                           dc.w $4000
[000b8c4a]                           dc.b $00
[000b8c4b]                           dc.b $53
[000b8c4c]                           dc.w $f7a6
[000b8c4e]                           dc.w $47ff
[000b8c50]                           dc.w $fc40
[000b8c52]                           dc.b $00
[000b8c53]                           dc.b $26
[000b8c54]                           dc.w $4400
[000b8c56]                           dc.w $0440
[000b8c58]                           dc.b $00
[000b8c59]                           dc.b $26
[000b8c5a]                           dc.w $44f6
[000b8c5c]                           dc.w $e453
[000b8c5e]                           dc.w $bfa6
[000b8c60]                           dc.w $4400
[000b8c62]                           dc.w $0440
[000b8c64]                           dc.b $00
[000b8c65]                           dc.b $26
[000b8c66]                           dc.w $47ff
[000b8c68]                           dc.w $fc7f
[000b8c6a]                           dc.w $ffe6
[000b8c6c]                           dc.w $4000
[000b8c6e]                           dc.b $00
[000b8c6f]                           dc.b $00
[000b8c70]                           dc.b $00
[000b8c71]                           dc.b $06
[000b8c72]                           dc.w $4000
[000b8c74]                           dc.b $00
[000b8c75]                           dc.b $00
[000b8c76]                           dc.b $00
[000b8c77]                           dc.b $06
[000b8c78]                           dc.w $4000
[000b8c7a]                           dc.b $00
[000b8c7b]                           dc.b $00
[000b8c7c]                           dc.b $00
[000b8c7d]                           dc.b $06
[000b8c7e]                           dc.w $4000
[000b8c80]                           dc.b $00
[000b8c81]                           dc.b $00
[000b8c82]                           dc.b $00
[000b8c83]                           dc.b $06
[000b8c84]                           dc.w $407f
[000b8c86]                           dc.w $fc7f
[000b8c88]                           dc.w $ff06
[000b8c8a]                           dc.w $4040
[000b8c8c]                           dc.w $0c40
[000b8c8e]                           dc.w $0306
[000b8c90]                           dc.w $4040
[000b8c92]                           dc.w $0c40
[000b8c94]                           dc.w $0306
[000b8c96]                           dc.w $4047
[000b8c98]                           dc.w $cc47
[000b8c9a]                           dc.w $f306
[000b8c9c]                           dc.w $4040
[000b8c9e]                           dc.w $0c40
[000b8ca0]                           dc.w $0306
[000b8ca2]                           dc.w $407f
[000b8ca4]                           dc.w $fc7f
[000b8ca6]                           dc.w $ff06
[000b8ca8]                           dc.w $407f
[000b8caa]                           dc.w $fc7f
[000b8cac]                           dc.w $ff06
[000b8cae]                           dc.w $4000
[000b8cb0]                           dc.b $00
[000b8cb1]                           dc.b $00
[000b8cb2]                           dc.b $00
[000b8cb3]                           dc.b $06
[000b8cb4]                           dc.w $7fff
[000b8cb6]                           dc.w $ffff
[000b8cb8]                           dc.w $fffe
[000b8cba]                           dc.w $7fff
[000b8cbc]                           dc.w $ffff
[000b8cbe]                           dc.w $fffe
[000b8cc0]                           dc.b $00
[000b8cc1]                           dc.b $00
[000b8cc2]                           dc.b $00
[000b8cc3]                           dc.b $00
[000b8cc4]                           dc.b $00
[000b8cc5]                           dc.b $00
DATAS_02:
[000b8cc6]                           dc.b $00
[000b8cc7]                           dc.b $00
[000b8cc8]                           dc.b $00
[000b8cc9]                           dc.b $00
[000b8cca]                           dc.b $00
[000b8ccb]                           dc.b $00
[000b8ccc]                           dc.w $7fff
[000b8cce]                           dc.w $ffff
[000b8cd0]                           dc.w $fffe
[000b8cd2]                           dc.w $7fff
[000b8cd4]                           dc.w $ffff
[000b8cd6]                           dc.w $fffe
[000b8cd8]                           dc.w $7fff
[000b8cda]                           dc.w $ffff
[000b8cdc]                           dc.w $fffe
[000b8cde]                           dc.w $7fff
[000b8ce0]                           dc.w $ffff
[000b8ce2]                           dc.w $fffe
[000b8ce4]                           dc.w $7fff
[000b8ce6]                           dc.w $ffff
[000b8ce8]                           dc.w $fffe
[000b8cea]                           dc.w $7fff
[000b8cec]                           dc.w $ffff
[000b8cee]                           dc.w $fffe
[000b8cf0]                           dc.w $7fff
[000b8cf2]                           dc.w $ffff
[000b8cf4]                           dc.w $fffe
[000b8cf6]                           dc.w $7fff
[000b8cf8]                           dc.w $ffff
[000b8cfa]                           dc.w $fffe
[000b8cfc]                           dc.w $7fff
[000b8cfe]                           dc.w $ffff
[000b8d00]                           dc.w $fffe
[000b8d02]                           dc.w $7fff
[000b8d04]                           dc.w $ffff
[000b8d06]                           dc.w $fffe
[000b8d08]                           dc.w $7fff
[000b8d0a]                           dc.w $ffff
[000b8d0c]                           dc.w $fffe
[000b8d0e]                           dc.w $7fff
[000b8d10]                           dc.w $ffff
[000b8d12]                           dc.w $fffe
[000b8d14]                           dc.w $7fff
[000b8d16]                           dc.w $ffff
[000b8d18]                           dc.w $fffe
[000b8d1a]                           dc.w $7fff
[000b8d1c]                           dc.w $ffff
[000b8d1e]                           dc.w $fffe
[000b8d20]                           dc.w $7fff
[000b8d22]                           dc.w $ffff
[000b8d24]                           dc.w $fffe
[000b8d26]                           dc.w $7fff
[000b8d28]                           dc.w $ffff
[000b8d2a]                           dc.w $fffe
[000b8d2c]                           dc.w $7fff
[000b8d2e]                           dc.w $ffff
[000b8d30]                           dc.w $fffe
[000b8d32]                           dc.w $7fff
[000b8d34]                           dc.w $ffff
[000b8d36]                           dc.w $fffe
[000b8d38]                           dc.w $7fff
[000b8d3a]                           dc.w $ffff
[000b8d3c]                           dc.w $fffe
[000b8d3e]                           dc.w $7fff
[000b8d40]                           dc.w $ffff
[000b8d42]                           dc.w $fffe
[000b8d44]                           dc.w $7fff
[000b8d46]                           dc.w $ffff
[000b8d48]                           dc.w $fffe
[000b8d4a]                           dc.w $7fff
[000b8d4c]                           dc.w $ffff
[000b8d4e]                           dc.w $fffe
[000b8d50]                           dc.w $7fff
[000b8d52]                           dc.w $ffff
[000b8d54]                           dc.w $fffe
[000b8d56]                           dc.w $7fff
[000b8d58]                           dc.w $ffff
[000b8d5a]                           dc.w $fffe
[000b8d5c]                           dc.w $7fff
[000b8d5e]                           dc.w $ffff
[000b8d60]                           dc.w $fffe
[000b8d62]                           dc.w $7fff
[000b8d64]                           dc.w $ffff
[000b8d66]                           dc.w $fffe
[000b8d68]                           dc.w $7fff
[000b8d6a]                           dc.w $ffff
[000b8d6c]                           dc.w $fffe
[000b8d6e]                           dc.w $7fff
[000b8d70]                           dc.w $ffff
[000b8d72]                           dc.w $fffe
[000b8d74]                           dc.w $7fff
[000b8d76]                           dc.w $ffff
[000b8d78]                           dc.w $fffe
[000b8d7a]                           dc.b $00
[000b8d7b]                           dc.b $00
[000b8d7c]                           dc.b $00
[000b8d7d]                           dc.b $00
[000b8d7e]                           dc.b $00
[000b8d7f]                           dc.b $00
DATAS_03:
[000b8d80]                           dc.b $00
[000b8d81]                           dc.b $00
[000b8d82]                           dc.b $00
[000b8d83]                           dc.b $00
[000b8d84]                           dc.w $02c0
[000b8d86]                           dc.b $00
[000b8d87]                           dc.b $00
[000b8d88]                           dc.b $00
[000b8d89]                           dc.b $00
[000b8d8a]                           dc.b $00
[000b8d8b]                           dc.b $00
[000b8d8c]                           dc.b $00
[000b8d8d]                           dc.b $00
[000b8d8e]                           dc.b $00
[000b8d8f]                           dc.b $00
[000b8d90]                           dc.b $00
[000b8d91]                           dc.b $00
[000b8d92]                           dc.b $00
[000b8d93]                           dc.b $00
[000b8d94]                           dc.b $00
[000b8d95]                           dc.b $00
[000b8d96]                           dc.b $00
[000b8d97]                           dc.b $00
[000b8d98]                           dc.b $00
[000b8d99]                           dc.b $00
[000b8d9a]                           dc.b $00
[000b8d9b]                           dc.b $00
[000b8d9c]                           dc.b $00
[000b8d9d]                           dc.b $00
[000b8d9e]                           dc.b $00
[000b8d9f]                           dc.b $00
[000b8da0]                           dc.b $00
[000b8da1]                           dc.b $00
[000b8da2]                           dc.b $00
[000b8da3]                           dc.b $00
[000b8da4]                           dc.b $00
[000b8da5]                           dc.b $00
[000b8da6]                           dc.b $00
[000b8da7]                           dc.b $00
[000b8da8]                           dc.b $00
[000b8da9]                           dc.b $00
[000b8daa]                           dc.w $1fff
[000b8dac]                           dc.w $ffff
[000b8dae]                           dc.w $fff0
[000b8db0]                           dc.w $101f
[000b8db2]                           dc.w $f000
[000b8db4]                           dc.b $00
[000b8db5]                           dc.b $10
[000b8db6]                           dc.w $1798
[000b8db8]                           dc.w $33e0
[000b8dba]                           dc.b $00
[000b8dbb]                           dc.b $10
[000b8dbc]                           dc.w $101f
[000b8dbe]                           dc.w $f000
[000b8dc0]                           dc.b $00
[000b8dc1]                           dc.b $10
[000b8dc2]                           dc.w $1fff
[000b8dc4]                           dc.w $ffff
[000b8dc6]                           dc.w $fff0
[000b8dc8]                           dc.b $00
[000b8dc9]                           dc.b $10
[000b8dca]                           dc.b $00
[000b8dcb]                           dc.b $40
[000b8dcc]                           dc.b $00
[000b8dcd]                           dc.b $00
[000b8dce]                           dc.b $00
[000b8dcf]                           dc.b $17
[000b8dd0]                           dc.w $ff40
[000b8dd2]                           dc.b $00
[000b8dd3]                           dc.b $00
[000b8dd4]                           dc.b $00
[000b8dd5]                           dc.b $10
[000b8dd6]                           dc.b $00
[000b8dd7]                           dc.b $40
[000b8dd8]                           dc.b $00
[000b8dd9]                           dc.b $00
[000b8dda]                           dc.b $00
[000b8ddb]                           dc.b $10
[000b8ddc]                           dc.b $00
[000b8ddd]                           dc.b $40
[000b8dde]                           dc.b $00
[000b8ddf]                           dc.b $00
[000b8de0]                           dc.b $00
[000b8de1]                           dc.b $15
[000b8de2]                           dc.w $5540
[000b8de4]                           dc.b $00
[000b8de5]                           dc.b $00
[000b8de6]                           dc.b $00
[000b8de7]                           dc.b $10
[000b8de8]                           dc.b $00
[000b8de9]                           dc.b $40
[000b8dea]                           dc.b $00
[000b8deb]                           dc.b $00
[000b8dec]                           dc.b $00
[000b8ded]                           dc.b $1f
[000b8dee]                           dc.w $ffc0
[000b8df0]                           dc.b $00
[000b8df1]                           dc.b $00
[000b8df2]                           dc.b $00
[000b8df3]                           dc.b $18
[000b8df4]                           dc.b $00
[000b8df5]                           dc.b $c0
[000b8df6]                           dc.b $00
[000b8df7]                           dc.b $00
[000b8df8]                           dc.b $00
[000b8df9]                           dc.b $1f
[000b8dfa]                           dc.w $ffc0
[000b8dfc]                           dc.b $00
[000b8dfd]                           dc.b $00
[000b8dfe]                           dc.b $00
[000b8dff]                           dc.b $10
[000b8e00]                           dc.b $00
[000b8e01]                           dc.b $40
[000b8e02]                           dc.b $00
[000b8e03]                           dc.b $00
[000b8e04]                           dc.b $00
[000b8e05]                           dc.b $17
[000b8e06]                           dc.w $fe40
[000b8e08]                           dc.b $00
[000b8e09]                           dc.b $00
[000b8e0a]                           dc.b $00
[000b8e0b]                           dc.b $10
[000b8e0c]                           dc.b $00
[000b8e0d]                           dc.b $40
[000b8e0e]                           dc.b $00
[000b8e0f]                           dc.b $00
[000b8e10]                           dc.b $00
[000b8e11]                           dc.b $1f
[000b8e12]                           dc.w $ffc0
[000b8e14]                           dc.b $00
[000b8e15]                           dc.b $00
[000b8e16]                           dc.b $00
[000b8e17]                           dc.b $00
[000b8e18]                           dc.b $00
[000b8e19]                           dc.b $00
[000b8e1a]                           dc.b $00
[000b8e1b]                           dc.b $00
[000b8e1c]                           dc.b $00
[000b8e1d]                           dc.b $00
[000b8e1e]                           dc.b $00
[000b8e1f]                           dc.b $00
[000b8e20]                           dc.b $00
[000b8e21]                           dc.b $00
[000b8e22]                           dc.b $00
[000b8e23]                           dc.b $00
[000b8e24]                           dc.b $00
[000b8e25]                           dc.b $00
[000b8e26]                           dc.b $00
[000b8e27]                           dc.b $00
[000b8e28]                           dc.b $00
[000b8e29]                           dc.b $00
[000b8e2a]                           dc.b $00
[000b8e2b]                           dc.b $00
[000b8e2c]                           dc.b $00
[000b8e2d]                           dc.b $00
[000b8e2e]                           dc.b $00
[000b8e2f]                           dc.b $00
[000b8e30]                           dc.b $00
[000b8e31]                           dc.b $00
[000b8e32]                           dc.b $00
[000b8e33]                           dc.b $00
[000b8e34]                           dc.b $00
[000b8e35]                           dc.b $00
[000b8e36]                           dc.b $00
[000b8e37]                           dc.b $00
[000b8e38]                           dc.b $00
[000b8e39]                           dc.b $00
[000b8e3a]                           dc.b $00
[000b8e3b]                           dc.b $00
[000b8e3c]                           dc.b $00
[000b8e3d]                           dc.b $00
[000b8e3e]                           dc.b $00
[000b8e3f]                           dc.b $00
[000b8e40]                           dc.b $00
[000b8e41]                           dc.b $00
[000b8e42]                           dc.b $00
[000b8e43]                           dc.b $00
[000b8e44]                           dc.b $00
[000b8e45]                           dc.b $00
[000b8e46]                           dc.b $00
[000b8e47]                           dc.b $00
[000b8e48]                           dc.b $00
[000b8e49]                           dc.b $00
[000b8e4a]                           dc.b $00
[000b8e4b]                           dc.b $00
[000b8e4c]                           dc.b $00
[000b8e4d]                           dc.b $00
[000b8e4e]                           dc.b $00
[000b8e4f]                           dc.b $00
[000b8e50]                           dc.b $00
[000b8e51]                           dc.b $00
[000b8e52]                           dc.b $00
[000b8e53]                           dc.b $00
[000b8e54]                           dc.b $00
[000b8e55]                           dc.b $00
[000b8e56]                           dc.b $00
[000b8e57]                           dc.b $00
[000b8e58]                           dc.w $1fff
[000b8e5a]                           dc.w $ffff
[000b8e5c]                           dc.w $fff0
[000b8e5e]                           dc.w $101f
[000b8e60]                           dc.w $f000
[000b8e62]                           dc.b $00
[000b8e63]                           dc.b $10
[000b8e64]                           dc.w $1798
[000b8e66]                           dc.w $33e0
[000b8e68]                           dc.b $00
[000b8e69]                           dc.b $10
[000b8e6a]                           dc.w $101f
[000b8e6c]                           dc.w $f000
[000b8e6e]                           dc.b $00
[000b8e6f]                           dc.b $10
[000b8e70]                           dc.w $1fff
[000b8e72]                           dc.w $ffff
[000b8e74]                           dc.w $fff0
[000b8e76]                           dc.b $00
[000b8e77]                           dc.b $10
[000b8e78]                           dc.b $00
[000b8e79]                           dc.b $40
[000b8e7a]                           dc.b $00
[000b8e7b]                           dc.b $00
[000b8e7c]                           dc.b $00
[000b8e7d]                           dc.b $17
[000b8e7e]                           dc.w $ff40
[000b8e80]                           dc.b $00
[000b8e81]                           dc.b $00
[000b8e82]                           dc.b $00
[000b8e83]                           dc.b $10
[000b8e84]                           dc.b $00
[000b8e85]                           dc.b $40
[000b8e86]                           dc.b $00
[000b8e87]                           dc.b $00
[000b8e88]                           dc.b $00
[000b8e89]                           dc.b $10
[000b8e8a]                           dc.b $00
[000b8e8b]                           dc.b $40
[000b8e8c]                           dc.b $00
[000b8e8d]                           dc.b $00
[000b8e8e]                           dc.b $00
[000b8e8f]                           dc.b $15
[000b8e90]                           dc.w $5540
[000b8e92]                           dc.b $00
[000b8e93]                           dc.b $00
[000b8e94]                           dc.b $00
[000b8e95]                           dc.b $10
[000b8e96]                           dc.b $00
[000b8e97]                           dc.b $40
[000b8e98]                           dc.b $00
[000b8e99]                           dc.b $00
[000b8e9a]                           dc.b $00
[000b8e9b]                           dc.b $1f
[000b8e9c]                           dc.w $ffc0
[000b8e9e]                           dc.b $00
[000b8e9f]                           dc.b $00
[000b8ea0]                           dc.b $00
[000b8ea1]                           dc.b $18
[000b8ea2]                           dc.b $00
[000b8ea3]                           dc.b $c0
[000b8ea4]                           dc.b $00
[000b8ea5]                           dc.b $00
[000b8ea6]                           dc.b $00
[000b8ea7]                           dc.b $1f
[000b8ea8]                           dc.w $ffc0
[000b8eaa]                           dc.b $00
[000b8eab]                           dc.b $00
[000b8eac]                           dc.b $00
[000b8ead]                           dc.b $10
[000b8eae]                           dc.b $00
[000b8eaf]                           dc.b $40
[000b8eb0]                           dc.b $00
[000b8eb1]                           dc.b $00
[000b8eb2]                           dc.b $00
[000b8eb3]                           dc.b $17
[000b8eb4]                           dc.w $fe40
[000b8eb6]                           dc.b $00
[000b8eb7]                           dc.b $00
[000b8eb8]                           dc.b $00
[000b8eb9]                           dc.b $10
[000b8eba]                           dc.b $00
[000b8ebb]                           dc.b $40
[000b8ebc]                           dc.b $00
[000b8ebd]                           dc.b $00
[000b8ebe]                           dc.b $00
[000b8ebf]                           dc.b $1f
[000b8ec0]                           dc.w $ffc0
[000b8ec2]                           dc.b $00
[000b8ec3]                           dc.b $00
[000b8ec4]                           dc.b $00
[000b8ec5]                           dc.b $00
[000b8ec6]                           dc.b $00
[000b8ec7]                           dc.b $00
[000b8ec8]                           dc.b $00
[000b8ec9]                           dc.b $00
[000b8eca]                           dc.b $00
[000b8ecb]                           dc.b $00
[000b8ecc]                           dc.b $00
[000b8ecd]                           dc.b $00
[000b8ece]                           dc.b $00
[000b8ecf]                           dc.b $00
[000b8ed0]                           dc.b $00
[000b8ed1]                           dc.b $00
[000b8ed2]                           dc.b $00
[000b8ed3]                           dc.b $00
[000b8ed4]                           dc.b $00
[000b8ed5]                           dc.b $00
[000b8ed6]                           dc.b $00
[000b8ed7]                           dc.b $00
[000b8ed8]                           dc.b $00
[000b8ed9]                           dc.b $00
[000b8eda]                           dc.b $00
[000b8edb]                           dc.b $00
[000b8edc]                           dc.b $00
[000b8edd]                           dc.b $00
[000b8ede]                           dc.b $00
[000b8edf]                           dc.b $00
[000b8ee0]                           dc.b $00
[000b8ee1]                           dc.b $00
[000b8ee2]                           dc.b $00
[000b8ee3]                           dc.b $00
[000b8ee4]                           dc.b $00
[000b8ee5]                           dc.b $00
[000b8ee6]                           dc.b $00
[000b8ee7]                           dc.b $00
[000b8ee8]                           dc.b $00
[000b8ee9]                           dc.b $00
[000b8eea]                           dc.b $00
[000b8eeb]                           dc.b $00
[000b8eec]                           dc.b $00
[000b8eed]                           dc.b $00
[000b8eee]                           dc.b $00
[000b8eef]                           dc.b $00
[000b8ef0]                           dc.b $00
[000b8ef1]                           dc.b $00
[000b8ef2]                           dc.b $00
[000b8ef3]                           dc.b $00
[000b8ef4]                           dc.b $00
[000b8ef5]                           dc.b $00
[000b8ef6]                           dc.b $00
[000b8ef7]                           dc.b $00
[000b8ef8]                           dc.b $00
[000b8ef9]                           dc.b $00
[000b8efa]                           dc.b $00
[000b8efb]                           dc.b $00
[000b8efc]                           dc.b $00
[000b8efd]                           dc.b $00
[000b8efe]                           dc.b $00
[000b8eff]                           dc.b $00
[000b8f00]                           dc.b $00
[000b8f01]                           dc.b $00
[000b8f02]                           dc.b $00
[000b8f03]                           dc.b $00
[000b8f04]                           dc.b $00
[000b8f05]                           dc.b $00
[000b8f06]                           dc.w $1fff
[000b8f08]                           dc.w $ffff
[000b8f0a]                           dc.w $fff0
[000b8f0c]                           dc.w $101f
[000b8f0e]                           dc.w $f000
[000b8f10]                           dc.b $00
[000b8f11]                           dc.b $10
[000b8f12]                           dc.w $1798
[000b8f14]                           dc.w $33e0
[000b8f16]                           dc.b $00
[000b8f17]                           dc.b $10
[000b8f18]                           dc.w $101f
[000b8f1a]                           dc.w $f000
[000b8f1c]                           dc.b $00
[000b8f1d]                           dc.b $10
[000b8f1e]                           dc.w $1fff
[000b8f20]                           dc.w $ffff
[000b8f22]                           dc.w $fff0
[000b8f24]                           dc.b $00
[000b8f25]                           dc.b $10
[000b8f26]                           dc.b $00
[000b8f27]                           dc.b $40
[000b8f28]                           dc.b $00
[000b8f29]                           dc.b $00
[000b8f2a]                           dc.b $00
[000b8f2b]                           dc.b $17
[000b8f2c]                           dc.w $ff40
[000b8f2e]                           dc.b $00
[000b8f2f]                           dc.b $00
[000b8f30]                           dc.b $00
[000b8f31]                           dc.b $10
[000b8f32]                           dc.b $00
[000b8f33]                           dc.b $40
[000b8f34]                           dc.b $00
[000b8f35]                           dc.b $00
[000b8f36]                           dc.b $00
[000b8f37]                           dc.b $10
[000b8f38]                           dc.b $00
[000b8f39]                           dc.b $40
[000b8f3a]                           dc.b $00
[000b8f3b]                           dc.b $00
[000b8f3c]                           dc.b $00
[000b8f3d]                           dc.b $15
[000b8f3e]                           dc.w $5540
[000b8f40]                           dc.b $00
[000b8f41]                           dc.b $00
[000b8f42]                           dc.b $00
[000b8f43]                           dc.b $10
[000b8f44]                           dc.b $00
[000b8f45]                           dc.b $40
[000b8f46]                           dc.b $00
[000b8f47]                           dc.b $00
[000b8f48]                           dc.b $00
[000b8f49]                           dc.b $1f
[000b8f4a]                           dc.w $ffc0
[000b8f4c]                           dc.b $00
[000b8f4d]                           dc.b $00
[000b8f4e]                           dc.b $00
[000b8f4f]                           dc.b $18
[000b8f50]                           dc.b $00
[000b8f51]                           dc.b $c0
[000b8f52]                           dc.b $00
[000b8f53]                           dc.b $00
[000b8f54]                           dc.b $00
[000b8f55]                           dc.b $1f
[000b8f56]                           dc.w $ffc0
[000b8f58]                           dc.b $00
[000b8f59]                           dc.b $00
[000b8f5a]                           dc.b $00
[000b8f5b]                           dc.b $10
[000b8f5c]                           dc.b $00
[000b8f5d]                           dc.b $40
[000b8f5e]                           dc.b $00
[000b8f5f]                           dc.b $00
[000b8f60]                           dc.b $00
[000b8f61]                           dc.b $17
[000b8f62]                           dc.w $fe40
[000b8f64]                           dc.b $00
[000b8f65]                           dc.b $00
[000b8f66]                           dc.b $00
[000b8f67]                           dc.b $10
[000b8f68]                           dc.b $00
[000b8f69]                           dc.b $40
[000b8f6a]                           dc.b $00
[000b8f6b]                           dc.b $00
[000b8f6c]                           dc.b $00
[000b8f6d]                           dc.b $1f
[000b8f6e]                           dc.w $ffc0
[000b8f70]                           dc.b $00
[000b8f71]                           dc.b $00
[000b8f72]                           dc.b $00
[000b8f73]                           dc.b $00
[000b8f74]                           dc.b $00
[000b8f75]                           dc.b $00
[000b8f76]                           dc.b $00
[000b8f77]                           dc.b $00
[000b8f78]                           dc.b $00
[000b8f79]                           dc.b $00
[000b8f7a]                           dc.b $00
[000b8f7b]                           dc.b $00
[000b8f7c]                           dc.b $00
[000b8f7d]                           dc.b $00
[000b8f7e]                           dc.b $00
[000b8f7f]                           dc.b $00
[000b8f80]                           dc.b $00
[000b8f81]                           dc.b $00
[000b8f82]                           dc.b $00
[000b8f83]                           dc.b $00
[000b8f84]                           dc.b $00
[000b8f85]                           dc.b $00
[000b8f86]                           dc.b $00
[000b8f87]                           dc.b $00
[000b8f88]                           dc.b $00
[000b8f89]                           dc.b $00
[000b8f8a]                           dc.b $00
[000b8f8b]                           dc.b $00
[000b8f8c]                           dc.b $00
[000b8f8d]                           dc.b $00
[000b8f8e]                           dc.b $00
[000b8f8f]                           dc.b $00
[000b8f90]                           dc.b $00
[000b8f91]                           dc.b $00
[000b8f92]                           dc.b $00
[000b8f93]                           dc.b $00
[000b8f94]                           dc.b $00
[000b8f95]                           dc.b $00
[000b8f96]                           dc.b $00
[000b8f97]                           dc.b $00
[000b8f98]                           dc.b $00
[000b8f99]                           dc.b $00
[000b8f9a]                           dc.b $00
[000b8f9b]                           dc.b $00
[000b8f9c]                           dc.b $00
[000b8f9d]                           dc.b $00
[000b8f9e]                           dc.b $00
[000b8f9f]                           dc.b $00
[000b8fa0]                           dc.b $00
[000b8fa1]                           dc.b $00
[000b8fa2]                           dc.b $00
[000b8fa3]                           dc.b $00
[000b8fa4]                           dc.b $00
[000b8fa5]                           dc.b $00
[000b8fa6]                           dc.b $00
[000b8fa7]                           dc.b $00
[000b8fa8]                           dc.b $00
[000b8fa9]                           dc.b $00
[000b8faa]                           dc.b $00
[000b8fab]                           dc.b $00
[000b8fac]                           dc.b $00
[000b8fad]                           dc.b $00
[000b8fae]                           dc.b $00
[000b8faf]                           dc.b $00
[000b8fb0]                           dc.b $00
[000b8fb1]                           dc.b $00
[000b8fb2]                           dc.b $00
[000b8fb3]                           dc.b $00
[000b8fb4]                           dc.w $1fff
[000b8fb6]                           dc.w $ffff
[000b8fb8]                           dc.w $fff0
[000b8fba]                           dc.w $101f
[000b8fbc]                           dc.w $f000
[000b8fbe]                           dc.b $00
[000b8fbf]                           dc.b $18
[000b8fc0]                           dc.w $1798
[000b8fc2]                           dc.w $33e0
[000b8fc4]                           dc.b $00
[000b8fc5]                           dc.b $18
[000b8fc6]                           dc.w $101f
[000b8fc8]                           dc.w $f000
[000b8fca]                           dc.b $00
[000b8fcb]                           dc.b $18
[000b8fcc]                           dc.w $1fff
[000b8fce]                           dc.w $ffff
[000b8fd0]                           dc.w $fff8
[000b8fd2]                           dc.w $0ff0
[000b8fd4]                           dc.b $00
[000b8fd5]                           dc.b $7f
[000b8fd6]                           dc.w $fff8
[000b8fd8]                           dc.b $00
[000b8fd9]                           dc.b $17
[000b8fda]                           dc.w $ff60
[000b8fdc]                           dc.b $00
[000b8fdd]                           dc.b $00
[000b8fde]                           dc.b $00
[000b8fdf]                           dc.b $10
[000b8fe0]                           dc.b $00
[000b8fe1]                           dc.b $60
[000b8fe2]                           dc.b $00
[000b8fe3]                           dc.b $00
[000b8fe4]                           dc.b $00
[000b8fe5]                           dc.b $10
[000b8fe6]                           dc.b $00
[000b8fe7]                           dc.b $60
[000b8fe8]                           dc.b $00
[000b8fe9]                           dc.b $00
[000b8fea]                           dc.b $00
[000b8feb]                           dc.b $15
[000b8fec]                           dc.w $5560
[000b8fee]                           dc.b $00
[000b8fef]                           dc.b $00
[000b8ff0]                           dc.b $00
[000b8ff1]                           dc.b $10
[000b8ff2]                           dc.b $00
[000b8ff3]                           dc.b $60
[000b8ff4]                           dc.b $00
[000b8ff5]                           dc.b $00
[000b8ff6]                           dc.b $00
[000b8ff7]                           dc.b $1f
[000b8ff8]                           dc.w $ffe0
[000b8ffa]                           dc.b $00
[000b8ffb]                           dc.b $00
[000b8ffc]                           dc.b $00
[000b8ffd]                           dc.b $18
[000b8ffe]                           dc.b $00
[000b8fff]                           dc.b $e0
[000b9000]                           dc.b $00
[000b9001]                           dc.b $00
[000b9002]                           dc.b $00
[000b9003]                           dc.b $1f
[000b9004]                           dc.w $ffe0
[000b9006]                           dc.b $00
[000b9007]                           dc.b $00
[000b9008]                           dc.b $00
[000b9009]                           dc.b $10
[000b900a]                           dc.b $00
[000b900b]                           dc.b $60
[000b900c]                           dc.b $00
[000b900d]                           dc.b $00
[000b900e]                           dc.b $00
[000b900f]                           dc.b $17
[000b9010]                           dc.w $fe60
[000b9012]                           dc.b $00
[000b9013]                           dc.b $00
[000b9014]                           dc.b $00
[000b9015]                           dc.b $10
[000b9016]                           dc.b $00
[000b9017]                           dc.b $60
[000b9018]                           dc.b $00
[000b9019]                           dc.b $00
[000b901a]                           dc.b $00
[000b901b]                           dc.b $1f
[000b901c]                           dc.w $ffe0
[000b901e]                           dc.b $00
[000b901f]                           dc.b $00
[000b9020]                           dc.b $00
[000b9021]                           dc.b $0f
[000b9022]                           dc.w $ffe0
[000b9024]                           dc.b $00
[000b9025]                           dc.b $00
[000b9026]                           dc.b $00
[000b9027]                           dc.b $00
[000b9028]                           dc.b $00
[000b9029]                           dc.b $00
[000b902a]                           dc.b $00
[000b902b]                           dc.b $00
[000b902c]                           dc.b $00
[000b902d]                           dc.b $00
[000b902e]                           dc.b $00
[000b902f]                           dc.b $00
[000b9030]                           dc.b $00
[000b9031]                           dc.b $00
[000b9032]                           dc.b $00
[000b9033]                           dc.b $00
[000b9034]                           dc.b $00
[000b9035]                           dc.b $00
[000b9036]                           dc.b $00
[000b9037]                           dc.b $00
[000b9038]                           dc.b $00
[000b9039]                           dc.b $00
[000b903a]                           dc.b $00
[000b903b]                           dc.b $00
[000b903c]                           dc.b $00
[000b903d]                           dc.b $00
DATAS_04:
[000b903e]                           dc.b $00
[000b903f]                           dc.b $00
[000b9040]                           dc.b $00
[000b9041]                           dc.b $00
[000b9042]                           dc.b $00
[000b9043]                           dc.b $00
[000b9044]                           dc.b $00
[000b9045]                           dc.b $00
[000b9046]                           dc.b $00
[000b9047]                           dc.b $00
[000b9048]                           dc.b $00
[000b9049]                           dc.b $00
[000b904a]                           dc.b $00
[000b904b]                           dc.b $00
[000b904c]                           dc.b $00
[000b904d]                           dc.b $00
[000b904e]                           dc.b $00
[000b904f]                           dc.b $00
[000b9050]                           dc.b $00
[000b9051]                           dc.b $00
[000b9052]                           dc.b $00
[000b9053]                           dc.b $00
[000b9054]                           dc.b $00
[000b9055]                           dc.b $00
[000b9056]                           dc.b $00
[000b9057]                           dc.b $00
[000b9058]                           dc.b $00
[000b9059]                           dc.b $00
[000b905a]                           dc.b $00
[000b905b]                           dc.b $00
[000b905c]                           dc.b $00
[000b905d]                           dc.b $00
[000b905e]                           dc.b $00
[000b905f]                           dc.b $00
[000b9060]                           dc.b $00
[000b9061]                           dc.b $00
[000b9062]                           dc.w $1fff
[000b9064]                           dc.w $ffff
[000b9066]                           dc.w $fff0
[000b9068]                           dc.w $1fff
[000b906a]                           dc.w $ffff
[000b906c]                           dc.w $fff8
[000b906e]                           dc.w $1fff
[000b9070]                           dc.w $ffff
[000b9072]                           dc.w $fff8
[000b9074]                           dc.w $1fff
[000b9076]                           dc.w $ffff
[000b9078]                           dc.w $fff8
[000b907a]                           dc.w $1fff
[000b907c]                           dc.w $ffff
[000b907e]                           dc.w $fff8
[000b9080]                           dc.w $0fff
[000b9082]                           dc.w $ffff
[000b9084]                           dc.w $fff8
[000b9086]                           dc.b $00
[000b9087]                           dc.b $1f
[000b9088]                           dc.w $ffe0
[000b908a]                           dc.b $00
[000b908b]                           dc.b $00
[000b908c]                           dc.b $00
[000b908d]                           dc.b $1f
[000b908e]                           dc.w $ffe0
[000b9090]                           dc.b $00
[000b9091]                           dc.b $00
[000b9092]                           dc.b $00
[000b9093]                           dc.b $1f
[000b9094]                           dc.w $ffe0
[000b9096]                           dc.b $00
[000b9097]                           dc.b $00
[000b9098]                           dc.b $00
[000b9099]                           dc.b $1f
[000b909a]                           dc.w $ffe0
[000b909c]                           dc.b $00
[000b909d]                           dc.b $00
[000b909e]                           dc.b $00
[000b909f]                           dc.b $1f
[000b90a0]                           dc.w $ffe0
[000b90a2]                           dc.b $00
[000b90a3]                           dc.b $00
[000b90a4]                           dc.b $00
[000b90a5]                           dc.b $1f
[000b90a6]                           dc.w $ffe0
[000b90a8]                           dc.b $00
[000b90a9]                           dc.b $00
[000b90aa]                           dc.b $00
[000b90ab]                           dc.b $1f
[000b90ac]                           dc.w $ffe0
[000b90ae]                           dc.b $00
[000b90af]                           dc.b $00
[000b90b0]                           dc.b $00
[000b90b1]                           dc.b $1f
[000b90b2]                           dc.w $ffe0
[000b90b4]                           dc.b $00
[000b90b5]                           dc.b $00
[000b90b6]                           dc.b $00
[000b90b7]                           dc.b $1f
[000b90b8]                           dc.w $ffe0
[000b90ba]                           dc.b $00
[000b90bb]                           dc.b $00
[000b90bc]                           dc.b $00
[000b90bd]                           dc.b $1f
[000b90be]                           dc.w $ffe0
[000b90c0]                           dc.b $00
[000b90c1]                           dc.b $00
[000b90c2]                           dc.b $00
[000b90c3]                           dc.b $1f
[000b90c4]                           dc.w $ffe0
[000b90c6]                           dc.b $00
[000b90c7]                           dc.b $00
[000b90c8]                           dc.b $00
[000b90c9]                           dc.b $1f
[000b90ca]                           dc.w $ffe0
[000b90cc]                           dc.b $00
[000b90cd]                           dc.b $00
[000b90ce]                           dc.b $00
[000b90cf]                           dc.b $0f
[000b90d0]                           dc.w $ffe0
[000b90d2]                           dc.b $00
[000b90d3]                           dc.b $00
[000b90d4]                           dc.b $00
[000b90d5]                           dc.b $00
[000b90d6]                           dc.b $00
[000b90d7]                           dc.b $00
[000b90d8]                           dc.b $00
[000b90d9]                           dc.b $00
[000b90da]                           dc.b $00
[000b90db]                           dc.b $00
[000b90dc]                           dc.b $00
[000b90dd]                           dc.b $00
[000b90de]                           dc.b $00
[000b90df]                           dc.b $00
[000b90e0]                           dc.b $00
[000b90e1]                           dc.b $00
[000b90e2]                           dc.b $00
[000b90e3]                           dc.b $00
[000b90e4]                           dc.b $00
[000b90e5]                           dc.b $00
[000b90e6]                           dc.b $00
[000b90e7]                           dc.b $00
[000b90e8]                           dc.b $00
[000b90e9]                           dc.b $00
[000b90ea]                           dc.b $00
[000b90eb]                           dc.b $00
DATAS_05:
[000b90ec]                           dc.b $00
[000b90ed]                           dc.b $00
[000b90ee]                           dc.b $00
[000b90ef]                           dc.b $00
[000b90f0]                           dc.w $02c0
[000b90f2]                           dc.b $00
[000b90f3]                           dc.b $00
[000b90f4]                           dc.b $00
[000b90f5]                           dc.b $00
[000b90f6]                           dc.b $00
[000b90f7]                           dc.b $00
[000b90f8]                           dc.b $00
[000b90f9]                           dc.b $00
[000b90fa]                           dc.b $00
[000b90fb]                           dc.b $00
[000b90fc]                           dc.b $00
[000b90fd]                           dc.b $00
[000b90fe]                           dc.b $00
[000b90ff]                           dc.b $00
[000b9100]                           dc.b $00
[000b9101]                           dc.b $00
[000b9102]                           dc.b $00
[000b9103]                           dc.b $00
[000b9104]                           dc.b $00
[000b9105]                           dc.b $00
[000b9106]                           dc.b $00
[000b9107]                           dc.b $00
[000b9108]                           dc.b $00
[000b9109]                           dc.b $00
[000b910a]                           dc.b $00
[000b910b]                           dc.b $00
[000b910c]                           dc.b $00
[000b910d]                           dc.b $00
[000b910e]                           dc.b $00
[000b910f]                           dc.b $00
[000b9110]                           dc.b $00
[000b9111]                           dc.b $00
[000b9112]                           dc.b $00
[000b9113]                           dc.b $00
[000b9114]                           dc.b $00
[000b9115]                           dc.b $00
[000b9116]                           dc.w $1fff
[000b9118]                           dc.w $ffff
[000b911a]                           dc.w $fff0
[000b911c]                           dc.w $101f
[000b911e]                           dc.w $f000
[000b9120]                           dc.b $00
[000b9121]                           dc.b $10
[000b9122]                           dc.w $1798
[000b9124]                           dc.w $33e0
[000b9126]                           dc.b $00
[000b9127]                           dc.b $10
[000b9128]                           dc.w $101f
[000b912a]                           dc.w $f000
[000b912c]                           dc.b $00
[000b912d]                           dc.b $10
[000b912e]                           dc.w $1fff
[000b9130]                           dc.w $ffff
[000b9132]                           dc.w $fff0
[000b9134]                           dc.b $00
[000b9135]                           dc.b $10
[000b9136]                           dc.b $00
[000b9137]                           dc.b $40
[000b9138]                           dc.b $00
[000b9139]                           dc.b $00
[000b913a]                           dc.b $00
[000b913b]                           dc.b $17
[000b913c]                           dc.w $ff40
[000b913e]                           dc.b $00
[000b913f]                           dc.b $00
[000b9140]                           dc.b $00
[000b9141]                           dc.b $10
[000b9142]                           dc.b $00
[000b9143]                           dc.b $40
[000b9144]                           dc.b $00
[000b9145]                           dc.b $00
[000b9146]                           dc.b $00
[000b9147]                           dc.b $10
[000b9148]                           dc.b $00
[000b9149]                           dc.b $40
[000b914a]                           dc.b $00
[000b914b]                           dc.b $00
[000b914c]                           dc.b $00
[000b914d]                           dc.b $15
[000b914e]                           dc.w $5540
[000b9150]                           dc.b $00
[000b9151]                           dc.b $00
[000b9152]                           dc.b $00
[000b9153]                           dc.b $10
[000b9154]                           dc.b $00
[000b9155]                           dc.b $40
[000b9156]                           dc.b $00
[000b9157]                           dc.b $00
[000b9158]                           dc.b $00
[000b9159]                           dc.b $1f
[000b915a]                           dc.w $ffc0
[000b915c]                           dc.b $00
[000b915d]                           dc.b $00
[000b915e]                           dc.b $00
[000b915f]                           dc.b $18
[000b9160]                           dc.b $00
[000b9161]                           dc.b $c0
[000b9162]                           dc.b $00
[000b9163]                           dc.b $00
[000b9164]                           dc.b $00
[000b9165]                           dc.b $1f
[000b9166]                           dc.w $ffc0
[000b9168]                           dc.b $00
[000b9169]                           dc.b $00
[000b916a]                           dc.b $00
[000b916b]                           dc.b $10
[000b916c]                           dc.b $00
[000b916d]                           dc.b $40
[000b916e]                           dc.b $00
[000b916f]                           dc.b $00
[000b9170]                           dc.b $00
[000b9171]                           dc.b $17
[000b9172]                           dc.w $fe40
[000b9174]                           dc.b $00
[000b9175]                           dc.b $00
[000b9176]                           dc.b $00
[000b9177]                           dc.b $10
[000b9178]                           dc.b $00
[000b9179]                           dc.b $40
[000b917a]                           dc.b $00
[000b917b]                           dc.b $00
[000b917c]                           dc.b $00
[000b917d]                           dc.b $1f
[000b917e]                           dc.w $ffc0
[000b9180]                           dc.b $00
[000b9181]                           dc.b $00
[000b9182]                           dc.b $00
[000b9183]                           dc.b $00
[000b9184]                           dc.b $00
[000b9185]                           dc.b $00
[000b9186]                           dc.b $00
[000b9187]                           dc.b $00
[000b9188]                           dc.b $00
[000b9189]                           dc.b $00
[000b918a]                           dc.b $00
[000b918b]                           dc.b $00
[000b918c]                           dc.b $00
[000b918d]                           dc.b $00
[000b918e]                           dc.b $00
[000b918f]                           dc.b $00
[000b9190]                           dc.b $00
[000b9191]                           dc.b $00
[000b9192]                           dc.b $00
[000b9193]                           dc.b $00
[000b9194]                           dc.b $00
[000b9195]                           dc.b $00
[000b9196]                           dc.b $00
[000b9197]                           dc.b $00
[000b9198]                           dc.b $00
[000b9199]                           dc.b $00
[000b919a]                           dc.b $00
[000b919b]                           dc.b $00
[000b919c]                           dc.b $00
[000b919d]                           dc.b $00
[000b919e]                           dc.b $00
[000b919f]                           dc.b $00
[000b91a0]                           dc.b $00
[000b91a1]                           dc.b $00
[000b91a2]                           dc.b $00
[000b91a3]                           dc.b $00
[000b91a4]                           dc.b $00
[000b91a5]                           dc.b $00
[000b91a6]                           dc.b $00
[000b91a7]                           dc.b $00
[000b91a8]                           dc.b $00
[000b91a9]                           dc.b $00
[000b91aa]                           dc.b $00
[000b91ab]                           dc.b $00
[000b91ac]                           dc.b $00
[000b91ad]                           dc.b $00
[000b91ae]                           dc.b $00
[000b91af]                           dc.b $00
[000b91b0]                           dc.b $00
[000b91b1]                           dc.b $00
[000b91b2]                           dc.b $00
[000b91b3]                           dc.b $00
[000b91b4]                           dc.b $00
[000b91b5]                           dc.b $00
[000b91b6]                           dc.b $00
[000b91b7]                           dc.b $00
[000b91b8]                           dc.b $00
[000b91b9]                           dc.b $00
[000b91ba]                           dc.b $00
[000b91bb]                           dc.b $00
[000b91bc]                           dc.b $00
[000b91bd]                           dc.b $00
[000b91be]                           dc.b $00
[000b91bf]                           dc.b $00
[000b91c0]                           dc.b $00
[000b91c1]                           dc.b $00
[000b91c2]                           dc.b $00
[000b91c3]                           dc.b $00
[000b91c4]                           dc.w $1fff
[000b91c6]                           dc.w $ffff
[000b91c8]                           dc.w $fff0
[000b91ca]                           dc.w $101f
[000b91cc]                           dc.w $f000
[000b91ce]                           dc.b $00
[000b91cf]                           dc.b $10
[000b91d0]                           dc.w $1798
[000b91d2]                           dc.w $33e0
[000b91d4]                           dc.b $00
[000b91d5]                           dc.b $10
[000b91d6]                           dc.w $101f
[000b91d8]                           dc.w $f000
[000b91da]                           dc.b $00
[000b91db]                           dc.b $10
[000b91dc]                           dc.w $1fff
[000b91de]                           dc.w $ffff
[000b91e0]                           dc.w $fff0
[000b91e2]                           dc.b $00
[000b91e3]                           dc.b $10
[000b91e4]                           dc.b $00
[000b91e5]                           dc.b $40
[000b91e6]                           dc.b $00
[000b91e7]                           dc.b $00
[000b91e8]                           dc.b $00
[000b91e9]                           dc.b $17
[000b91ea]                           dc.w $ff40
[000b91ec]                           dc.b $00
[000b91ed]                           dc.b $00
[000b91ee]                           dc.b $00
[000b91ef]                           dc.b $10
[000b91f0]                           dc.b $00
[000b91f1]                           dc.b $40
[000b91f2]                           dc.b $00
[000b91f3]                           dc.b $00
[000b91f4]                           dc.b $00
[000b91f5]                           dc.b $10
[000b91f6]                           dc.b $00
[000b91f7]                           dc.b $40
[000b91f8]                           dc.b $00
[000b91f9]                           dc.b $00
[000b91fa]                           dc.b $00
[000b91fb]                           dc.b $15
[000b91fc]                           dc.w $5540
[000b91fe]                           dc.b $00
[000b91ff]                           dc.b $00
[000b9200]                           dc.b $00
[000b9201]                           dc.b $10
[000b9202]                           dc.b $00
[000b9203]                           dc.b $40
[000b9204]                           dc.b $00
[000b9205]                           dc.b $00
[000b9206]                           dc.b $00
[000b9207]                           dc.b $1f
[000b9208]                           dc.w $ffc0
[000b920a]                           dc.b $00
[000b920b]                           dc.b $00
[000b920c]                           dc.b $00
[000b920d]                           dc.b $18
[000b920e]                           dc.b $00
[000b920f]                           dc.b $c0
[000b9210]                           dc.b $00
[000b9211]                           dc.b $00
[000b9212]                           dc.b $00
[000b9213]                           dc.b $1f
[000b9214]                           dc.w $ffc0
[000b9216]                           dc.b $00
[000b9217]                           dc.b $00
[000b9218]                           dc.b $00
[000b9219]                           dc.b $10
[000b921a]                           dc.b $00
[000b921b]                           dc.b $40
[000b921c]                           dc.b $00
[000b921d]                           dc.b $00
[000b921e]                           dc.b $00
[000b921f]                           dc.b $17
[000b9220]                           dc.w $fe40
[000b9222]                           dc.b $00
[000b9223]                           dc.b $00
[000b9224]                           dc.b $00
[000b9225]                           dc.b $10
[000b9226]                           dc.b $00
[000b9227]                           dc.b $40
[000b9228]                           dc.b $00
[000b9229]                           dc.b $00
[000b922a]                           dc.b $00
[000b922b]                           dc.b $1f
[000b922c]                           dc.w $ffc0
[000b922e]                           dc.b $00
[000b922f]                           dc.b $00
[000b9230]                           dc.b $00
[000b9231]                           dc.b $00
[000b9232]                           dc.b $00
[000b9233]                           dc.b $00
[000b9234]                           dc.b $00
[000b9235]                           dc.b $00
[000b9236]                           dc.b $00
[000b9237]                           dc.b $00
[000b9238]                           dc.b $00
[000b9239]                           dc.b $00
[000b923a]                           dc.b $00
[000b923b]                           dc.b $00
[000b923c]                           dc.b $00
[000b923d]                           dc.b $00
[000b923e]                           dc.b $00
[000b923f]                           dc.b $00
[000b9240]                           dc.b $00
[000b9241]                           dc.b $00
[000b9242]                           dc.b $00
[000b9243]                           dc.b $00
[000b9244]                           dc.b $00
[000b9245]                           dc.b $00
[000b9246]                           dc.b $00
[000b9247]                           dc.b $00
[000b9248]                           dc.b $00
[000b9249]                           dc.b $00
[000b924a]                           dc.b $00
[000b924b]                           dc.b $00
[000b924c]                           dc.b $00
[000b924d]                           dc.b $00
[000b924e]                           dc.b $00
[000b924f]                           dc.b $00
[000b9250]                           dc.b $00
[000b9251]                           dc.b $00
[000b9252]                           dc.b $00
[000b9253]                           dc.b $00
[000b9254]                           dc.b $00
[000b9255]                           dc.b $00
[000b9256]                           dc.b $00
[000b9257]                           dc.b $00
[000b9258]                           dc.b $00
[000b9259]                           dc.b $00
[000b925a]                           dc.b $00
[000b925b]                           dc.b $00
[000b925c]                           dc.b $00
[000b925d]                           dc.b $00
[000b925e]                           dc.b $00
[000b925f]                           dc.b $00
[000b9260]                           dc.b $00
[000b9261]                           dc.b $00
[000b9262]                           dc.b $00
[000b9263]                           dc.b $00
[000b9264]                           dc.b $00
[000b9265]                           dc.b $00
[000b9266]                           dc.b $00
[000b9267]                           dc.b $00
[000b9268]                           dc.b $00
[000b9269]                           dc.b $00
[000b926a]                           dc.b $00
[000b926b]                           dc.b $00
[000b926c]                           dc.b $00
[000b926d]                           dc.b $00
[000b926e]                           dc.b $00
[000b926f]                           dc.b $00
[000b9270]                           dc.b $00
[000b9271]                           dc.b $00
[000b9272]                           dc.w $1fff
[000b9274]                           dc.w $ffff
[000b9276]                           dc.w $fff0
[000b9278]                           dc.w $101f
[000b927a]                           dc.w $f000
[000b927c]                           dc.b $00
[000b927d]                           dc.b $10
[000b927e]                           dc.w $1798
[000b9280]                           dc.w $33e0
[000b9282]                           dc.b $00
[000b9283]                           dc.b $10
[000b9284]                           dc.w $101f
[000b9286]                           dc.w $f000
[000b9288]                           dc.b $00
[000b9289]                           dc.b $10
[000b928a]                           dc.w $1fff
[000b928c]                           dc.w $ffff
[000b928e]                           dc.w $fff0
[000b9290]                           dc.b $00
[000b9291]                           dc.b $10
[000b9292]                           dc.b $00
[000b9293]                           dc.b $40
[000b9294]                           dc.b $00
[000b9295]                           dc.b $00
[000b9296]                           dc.b $00
[000b9297]                           dc.b $17
[000b9298]                           dc.w $ff40
[000b929a]                           dc.b $00
[000b929b]                           dc.b $00
[000b929c]                           dc.b $00
[000b929d]                           dc.b $10
[000b929e]                           dc.b $00
[000b929f]                           dc.b $40
[000b92a0]                           dc.b $00
[000b92a1]                           dc.b $00
[000b92a2]                           dc.b $00
[000b92a3]                           dc.b $10
[000b92a4]                           dc.b $00
[000b92a5]                           dc.b $40
[000b92a6]                           dc.b $00
[000b92a7]                           dc.b $00
[000b92a8]                           dc.b $00
[000b92a9]                           dc.b $15
[000b92aa]                           dc.w $5540
[000b92ac]                           dc.b $00
[000b92ad]                           dc.b $00
[000b92ae]                           dc.b $00
[000b92af]                           dc.b $10
[000b92b0]                           dc.b $00
[000b92b1]                           dc.b $40
[000b92b2]                           dc.b $00
[000b92b3]                           dc.b $00
[000b92b4]                           dc.b $00
[000b92b5]                           dc.b $1f
[000b92b6]                           dc.w $ffc0
[000b92b8]                           dc.b $00
[000b92b9]                           dc.b $00
[000b92ba]                           dc.b $00
[000b92bb]                           dc.b $18
[000b92bc]                           dc.b $00
[000b92bd]                           dc.b $c0
[000b92be]                           dc.b $00
[000b92bf]                           dc.b $00
[000b92c0]                           dc.b $00
[000b92c1]                           dc.b $1f
[000b92c2]                           dc.w $ffc0
[000b92c4]                           dc.b $00
[000b92c5]                           dc.b $00
[000b92c6]                           dc.b $00
[000b92c7]                           dc.b $10
[000b92c8]                           dc.b $00
[000b92c9]                           dc.b $40
[000b92ca]                           dc.b $00
[000b92cb]                           dc.b $00
[000b92cc]                           dc.b $00
[000b92cd]                           dc.b $17
[000b92ce]                           dc.w $fe40
[000b92d0]                           dc.b $00
[000b92d1]                           dc.b $00
[000b92d2]                           dc.b $00
[000b92d3]                           dc.b $10
[000b92d4]                           dc.b $00
[000b92d5]                           dc.b $40
[000b92d6]                           dc.b $00
[000b92d7]                           dc.b $00
[000b92d8]                           dc.b $00
[000b92d9]                           dc.b $1f
[000b92da]                           dc.w $ffc0
[000b92dc]                           dc.b $00
[000b92dd]                           dc.b $00
[000b92de]                           dc.b $00
[000b92df]                           dc.b $00
[000b92e0]                           dc.b $00
[000b92e1]                           dc.b $00
[000b92e2]                           dc.b $00
[000b92e3]                           dc.b $00
[000b92e4]                           dc.b $00
[000b92e5]                           dc.b $00
[000b92e6]                           dc.b $00
[000b92e7]                           dc.b $00
[000b92e8]                           dc.b $00
[000b92e9]                           dc.b $00
[000b92ea]                           dc.b $00
[000b92eb]                           dc.b $00
[000b92ec]                           dc.b $00
[000b92ed]                           dc.b $00
[000b92ee]                           dc.b $00
[000b92ef]                           dc.b $00
[000b92f0]                           dc.b $00
[000b92f1]                           dc.b $00
[000b92f2]                           dc.b $00
[000b92f3]                           dc.b $00
[000b92f4]                           dc.b $00
[000b92f5]                           dc.b $00
[000b92f6]                           dc.b $00
[000b92f7]                           dc.b $00
[000b92f8]                           dc.b $00
[000b92f9]                           dc.b $00
[000b92fa]                           dc.b $00
[000b92fb]                           dc.b $00
[000b92fc]                           dc.b $00
[000b92fd]                           dc.b $00
[000b92fe]                           dc.b $00
[000b92ff]                           dc.b $00
[000b9300]                           dc.b $00
[000b9301]                           dc.b $00
[000b9302]                           dc.b $00
[000b9303]                           dc.b $00
[000b9304]                           dc.b $00
[000b9305]                           dc.b $00
[000b9306]                           dc.b $00
[000b9307]                           dc.b $00
[000b9308]                           dc.b $00
[000b9309]                           dc.b $00
[000b930a]                           dc.b $00
[000b930b]                           dc.b $00
[000b930c]                           dc.b $00
[000b930d]                           dc.b $00
[000b930e]                           dc.b $00
[000b930f]                           dc.b $00
[000b9310]                           dc.b $00
[000b9311]                           dc.b $00
[000b9312]                           dc.b $00
[000b9313]                           dc.b $00
[000b9314]                           dc.b $00
[000b9315]                           dc.b $00
[000b9316]                           dc.b $00
[000b9317]                           dc.b $00
[000b9318]                           dc.b $00
[000b9319]                           dc.b $00
[000b931a]                           dc.b $00
[000b931b]                           dc.b $00
[000b931c]                           dc.b $00
[000b931d]                           dc.b $00
[000b931e]                           dc.b $00
[000b931f]                           dc.b $00
[000b9320]                           dc.w $1fff
[000b9322]                           dc.w $ffff
[000b9324]                           dc.w $fff0
[000b9326]                           dc.w $101f
[000b9328]                           dc.w $f000
[000b932a]                           dc.b $00
[000b932b]                           dc.b $18
[000b932c]                           dc.w $1798
[000b932e]                           dc.w $33e0
[000b9330]                           dc.b $00
[000b9331]                           dc.b $18
[000b9332]                           dc.w $101f
[000b9334]                           dc.w $f000
[000b9336]                           dc.b $00
[000b9337]                           dc.b $18
[000b9338]                           dc.w $1fff
[000b933a]                           dc.w $ffff
[000b933c]                           dc.w $fff8
[000b933e]                           dc.w $0ff0
[000b9340]                           dc.b $00
[000b9341]                           dc.b $7f
[000b9342]                           dc.w $fff8
[000b9344]                           dc.b $00
[000b9345]                           dc.b $17
[000b9346]                           dc.w $ff60
[000b9348]                           dc.b $00
[000b9349]                           dc.b $00
[000b934a]                           dc.b $00
[000b934b]                           dc.b $10
[000b934c]                           dc.b $00
[000b934d]                           dc.b $60
[000b934e]                           dc.b $00
[000b934f]                           dc.b $00
[000b9350]                           dc.b $00
[000b9351]                           dc.b $10
[000b9352]                           dc.b $00
[000b9353]                           dc.b $60
[000b9354]                           dc.b $00
[000b9355]                           dc.b $00
[000b9356]                           dc.b $00
[000b9357]                           dc.b $15
[000b9358]                           dc.w $5560
[000b935a]                           dc.b $00
[000b935b]                           dc.b $00
[000b935c]                           dc.b $00
[000b935d]                           dc.b $10
[000b935e]                           dc.b $00
[000b935f]                           dc.b $60
[000b9360]                           dc.b $00
[000b9361]                           dc.b $00
[000b9362]                           dc.b $00
[000b9363]                           dc.b $1f
[000b9364]                           dc.w $ffe0
[000b9366]                           dc.b $00
[000b9367]                           dc.b $00
[000b9368]                           dc.b $00
[000b9369]                           dc.b $18
[000b936a]                           dc.b $00
[000b936b]                           dc.b $e0
[000b936c]                           dc.b $00
[000b936d]                           dc.b $00
[000b936e]                           dc.b $00
[000b936f]                           dc.b $1f
[000b9370]                           dc.w $ffe0
[000b9372]                           dc.b $00
[000b9373]                           dc.b $00
[000b9374]                           dc.b $00
[000b9375]                           dc.b $10
[000b9376]                           dc.b $00
[000b9377]                           dc.b $60
[000b9378]                           dc.b $00
[000b9379]                           dc.b $00
[000b937a]                           dc.b $00
[000b937b]                           dc.b $17
[000b937c]                           dc.w $fe60
[000b937e]                           dc.b $00
[000b937f]                           dc.b $00
[000b9380]                           dc.b $00
[000b9381]                           dc.b $10
[000b9382]                           dc.b $00
[000b9383]                           dc.b $60
[000b9384]                           dc.b $00
[000b9385]                           dc.b $00
[000b9386]                           dc.b $00
[000b9387]                           dc.b $1f
[000b9388]                           dc.w $ffe0
[000b938a]                           dc.b $00
[000b938b]                           dc.b $00
[000b938c]                           dc.b $00
[000b938d]                           dc.b $0f
[000b938e]                           dc.w $ffe0
[000b9390]                           dc.b $00
[000b9391]                           dc.b $00
[000b9392]                           dc.b $00
[000b9393]                           dc.b $00
[000b9394]                           dc.b $00
[000b9395]                           dc.b $00
[000b9396]                           dc.b $00
[000b9397]                           dc.b $00
[000b9398]                           dc.b $00
[000b9399]                           dc.b $00
[000b939a]                           dc.b $00
[000b939b]                           dc.b $00
[000b939c]                           dc.b $00
[000b939d]                           dc.b $00
[000b939e]                           dc.b $00
[000b939f]                           dc.b $00
[000b93a0]                           dc.b $00
[000b93a1]                           dc.b $00
[000b93a2]                           dc.b $00
[000b93a3]                           dc.b $00
[000b93a4]                           dc.b $00
[000b93a5]                           dc.b $00
[000b93a6]                           dc.b $00
[000b93a7]                           dc.b $00
[000b93a8]                           dc.b $00
[000b93a9]                           dc.b $00
DATAS_06:
[000b93aa]                           dc.b $00
[000b93ab]                           dc.b $00
[000b93ac]                           dc.b $00
[000b93ad]                           dc.b $00
[000b93ae]                           dc.b $00
[000b93af]                           dc.b $00
[000b93b0]                           dc.b $00
[000b93b1]                           dc.b $00
[000b93b2]                           dc.b $00
[000b93b3]                           dc.b $00
[000b93b4]                           dc.b $00
[000b93b5]                           dc.b $00
[000b93b6]                           dc.b $00
[000b93b7]                           dc.b $00
[000b93b8]                           dc.b $00
[000b93b9]                           dc.b $00
[000b93ba]                           dc.b $00
[000b93bb]                           dc.b $00
[000b93bc]                           dc.b $00
[000b93bd]                           dc.b $00
[000b93be]                           dc.b $00
[000b93bf]                           dc.b $00
[000b93c0]                           dc.b $00
[000b93c1]                           dc.b $00
[000b93c2]                           dc.b $00
[000b93c3]                           dc.b $00
[000b93c4]                           dc.b $00
[000b93c5]                           dc.b $00
[000b93c6]                           dc.b $00
[000b93c7]                           dc.b $00
[000b93c8]                           dc.b $00
[000b93c9]                           dc.b $00
[000b93ca]                           dc.b $00
[000b93cb]                           dc.b $00
[000b93cc]                           dc.b $00
[000b93cd]                           dc.b $00
[000b93ce]                           dc.w $1fff
[000b93d0]                           dc.w $ffff
[000b93d2]                           dc.w $fff0
[000b93d4]                           dc.w $1fff
[000b93d6]                           dc.w $ffff
[000b93d8]                           dc.w $fff8
[000b93da]                           dc.w $1fff
[000b93dc]                           dc.w $ffff
[000b93de]                           dc.w $fff8
[000b93e0]                           dc.w $1fff
[000b93e2]                           dc.w $ffff
[000b93e4]                           dc.w $fff8
[000b93e6]                           dc.w $1fff
[000b93e8]                           dc.w $ffff
[000b93ea]                           dc.w $fff8
[000b93ec]                           dc.w $0fff
[000b93ee]                           dc.w $ffff
[000b93f0]                           dc.w $fff8
[000b93f2]                           dc.b $00
[000b93f3]                           dc.b $1f
[000b93f4]                           dc.w $ffe0
[000b93f6]                           dc.b $00
[000b93f7]                           dc.b $00
[000b93f8]                           dc.b $00
[000b93f9]                           dc.b $1f
[000b93fa]                           dc.w $ffe0
[000b93fc]                           dc.b $00
[000b93fd]                           dc.b $00
[000b93fe]                           dc.b $00
[000b93ff]                           dc.b $1f
[000b9400]                           dc.w $ffe0
[000b9402]                           dc.b $00
[000b9403]                           dc.b $00
[000b9404]                           dc.b $00
[000b9405]                           dc.b $1f
[000b9406]                           dc.w $ffe0
[000b9408]                           dc.b $00
[000b9409]                           dc.b $00
[000b940a]                           dc.b $00
[000b940b]                           dc.b $1f
[000b940c]                           dc.w $ffe0
[000b940e]                           dc.b $00
[000b940f]                           dc.b $00
[000b9410]                           dc.b $00
[000b9411]                           dc.b $1f
[000b9412]                           dc.w $ffe0
[000b9414]                           dc.b $00
[000b9415]                           dc.b $00
[000b9416]                           dc.b $00
[000b9417]                           dc.b $1f
[000b9418]                           dc.w $ffe0
[000b941a]                           dc.b $00
[000b941b]                           dc.b $00
[000b941c]                           dc.b $00
[000b941d]                           dc.b $1f
[000b941e]                           dc.w $ffe0
[000b9420]                           dc.b $00
[000b9421]                           dc.b $00
[000b9422]                           dc.b $00
[000b9423]                           dc.b $1f
[000b9424]                           dc.w $ffe0
[000b9426]                           dc.b $00
[000b9427]                           dc.b $00
[000b9428]                           dc.b $00
[000b9429]                           dc.b $1f
[000b942a]                           dc.w $ffe0
[000b942c]                           dc.b $00
[000b942d]                           dc.b $00
[000b942e]                           dc.b $00
[000b942f]                           dc.b $1f
[000b9430]                           dc.w $ffe0
[000b9432]                           dc.b $00
[000b9433]                           dc.b $00
[000b9434]                           dc.b $00
[000b9435]                           dc.b $1f
[000b9436]                           dc.w $ffe0
[000b9438]                           dc.b $00
[000b9439]                           dc.b $00
[000b943a]                           dc.b $00
[000b943b]                           dc.b $0f
[000b943c]                           dc.w $ffe0
[000b943e]                           dc.b $00
[000b943f]                           dc.b $00
[000b9440]                           dc.b $00
[000b9441]                           dc.b $00
[000b9442]                           dc.b $00
[000b9443]                           dc.b $00
[000b9444]                           dc.b $00
[000b9445]                           dc.b $00
[000b9446]                           dc.b $00
[000b9447]                           dc.b $00
[000b9448]                           dc.b $00
[000b9449]                           dc.b $00
[000b944a]                           dc.b $00
[000b944b]                           dc.b $00
[000b944c]                           dc.b $00
[000b944d]                           dc.b $00
[000b944e]                           dc.b $00
[000b944f]                           dc.b $00
[000b9450]                           dc.b $00
[000b9451]                           dc.b $00
[000b9452]                           dc.b $00
[000b9453]                           dc.b $00
[000b9454]                           dc.b $00
[000b9455]                           dc.b $00
[000b9456]                           dc.b $00
[000b9457]                           dc.b $00
DATAS_07:
[000b9458]                           dc.b $00
[000b9459]                           dc.b $00
[000b945a]                           dc.b $00
[000b945b]                           dc.b $00
[000b945c]                           dc.w $02c0
[000b945e]                           dc.b $00
[000b945f]                           dc.b $00
[000b9460]                           dc.b $00
[000b9461]                           dc.b $00
[000b9462]                           dc.b $00
[000b9463]                           dc.b $00
[000b9464]                           dc.b $00
[000b9465]                           dc.b $00
[000b9466]                           dc.b $00
[000b9467]                           dc.b $00
[000b9468]                           dc.b $00
[000b9469]                           dc.b $00
[000b946a]                           dc.b $00
[000b946b]                           dc.b $00
[000b946c]                           dc.b $00
[000b946d]                           dc.b $00
[000b946e]                           dc.b $00
[000b946f]                           dc.b $00
[000b9470]                           dc.b $00
[000b9471]                           dc.b $00
[000b9472]                           dc.b $00
[000b9473]                           dc.b $00
[000b9474]                           dc.b $00
[000b9475]                           dc.b $00
[000b9476]                           dc.b $00
[000b9477]                           dc.b $00
[000b9478]                           dc.b $00
[000b9479]                           dc.b $00
[000b947a]                           dc.b $00
[000b947b]                           dc.b $00
[000b947c]                           dc.b $00
[000b947d]                           dc.b $00
[000b947e]                           dc.b $00
[000b947f]                           dc.b $00
[000b9480]                           dc.b $00
[000b9481]                           dc.b $00
[000b9482]                           dc.b $00
[000b9483]                           dc.b $7f
[000b9484]                           dc.w $ff00
[000b9486]                           dc.b $00
[000b9487]                           dc.b $00
[000b9488]                           dc.b $00
[000b9489]                           dc.b $7f
[000b948a]                           dc.w $ff00
[000b948c]                           dc.b $00
[000b948d]                           dc.b $00
[000b948e]                           dc.b $00
[000b948f]                           dc.b $7f
[000b9490]                           dc.w $ff00
[000b9492]                           dc.b $00
[000b9493]                           dc.b $00
[000b9494]                           dc.b $00
[000b9495]                           dc.b $7f
[000b9496]                           dc.w $ff00
[000b9498]                           dc.b $00
[000b9499]                           dc.b $00
[000b949a]                           dc.b $00
[000b949b]                           dc.b $7f
[000b949c]                           dc.w $ff00
[000b949e]                           dc.b $00
[000b949f]                           dc.b $00
[000b94a0]                           dc.b $00
[000b94a1]                           dc.b $7f
[000b94a2]                           dc.w $ff00
[000b94a4]                           dc.b $00
[000b94a5]                           dc.b $00
[000b94a6]                           dc.b $00
[000b94a7]                           dc.b $7f
[000b94a8]                           dc.w $ff00
[000b94aa]                           dc.b $00
[000b94ab]                           dc.b $00
[000b94ac]                           dc.b $00
[000b94ad]                           dc.b $7f
[000b94ae]                           dc.w $ffff
[000b94b0]                           dc.w $f000
[000b94b2]                           dc.b $00
[000b94b3]                           dc.b $70
[000b94b4]                           dc.w $07ff
[000b94b6]                           dc.w $f000
[000b94b8]                           dc.b $00
[000b94b9]                           dc.b $7f
[000b94ba]                           dc.w $ffff
[000b94bc]                           dc.w $f000
[000b94be]                           dc.b $00
[000b94bf]                           dc.b $7f
[000b94c0]                           dc.w $ffff
[000b94c2]                           dc.w $f000
[000b94c4]                           dc.b $00
[000b94c5]                           dc.b $7f
[000b94c6]                           dc.w $ffff
[000b94c8]                           dc.w $f000
[000b94ca]                           dc.b $00
[000b94cb]                           dc.b $7f
[000b94cc]                           dc.w $ffc0
[000b94ce]                           dc.w $7000
[000b94d0]                           dc.b $00
[000b94d1]                           dc.b $7f
[000b94d2]                           dc.w $ffff
[000b94d4]                           dc.w $f000
[000b94d6]                           dc.b $00
[000b94d7]                           dc.b $7f
[000b94d8]                           dc.w $ffff
[000b94da]                           dc.w $f000
[000b94dc]                           dc.b $00
[000b94dd]                           dc.b $7f
[000b94de]                           dc.w $ff00
[000b94e0]                           dc.b $00
[000b94e1]                           dc.b $00
[000b94e2]                           dc.b $00
[000b94e3]                           dc.b $7f
[000b94e4]                           dc.w $ff00
[000b94e6]                           dc.b $00
[000b94e7]                           dc.b $00
[000b94e8]                           dc.b $00
[000b94e9]                           dc.b $00
[000b94ea]                           dc.b $00
[000b94eb]                           dc.b $00
[000b94ec]                           dc.b $00
[000b94ed]                           dc.b $00
[000b94ee]                           dc.b $00
[000b94ef]                           dc.b $00
[000b94f0]                           dc.b $00
[000b94f1]                           dc.b $00
[000b94f2]                           dc.b $00
[000b94f3]                           dc.b $00
[000b94f4]                           dc.b $00
[000b94f5]                           dc.b $00
[000b94f6]                           dc.b $00
[000b94f7]                           dc.b $00
[000b94f8]                           dc.b $00
[000b94f9]                           dc.b $00
[000b94fa]                           dc.b $00
[000b94fb]                           dc.b $00
[000b94fc]                           dc.b $00
[000b94fd]                           dc.b $00
[000b94fe]                           dc.b $00
[000b94ff]                           dc.b $00
[000b9500]                           dc.b $00
[000b9501]                           dc.b $00
[000b9502]                           dc.b $00
[000b9503]                           dc.b $00
[000b9504]                           dc.b $00
[000b9505]                           dc.b $00
[000b9506]                           dc.b $00
[000b9507]                           dc.b $00
[000b9508]                           dc.b $00
[000b9509]                           dc.b $00
[000b950a]                           dc.b $00
[000b950b]                           dc.b $00
[000b950c]                           dc.b $00
[000b950d]                           dc.b $00
[000b950e]                           dc.b $00
[000b950f]                           dc.b $00
[000b9510]                           dc.b $00
[000b9511]                           dc.b $00
[000b9512]                           dc.b $00
[000b9513]                           dc.b $00
[000b9514]                           dc.b $00
[000b9515]                           dc.b $00
[000b9516]                           dc.b $00
[000b9517]                           dc.b $00
[000b9518]                           dc.b $00
[000b9519]                           dc.b $00
[000b951a]                           dc.b $00
[000b951b]                           dc.b $00
[000b951c]                           dc.b $00
[000b951d]                           dc.b $00
[000b951e]                           dc.b $00
[000b951f]                           dc.b $00
[000b9520]                           dc.b $00
[000b9521]                           dc.b $00
[000b9522]                           dc.b $00
[000b9523]                           dc.b $00
[000b9524]                           dc.b $00
[000b9525]                           dc.b $00
[000b9526]                           dc.b $00
[000b9527]                           dc.b $00
[000b9528]                           dc.b $00
[000b9529]                           dc.b $00
[000b952a]                           dc.b $00
[000b952b]                           dc.b $00
[000b952c]                           dc.b $00
[000b952d]                           dc.b $00
[000b952e]                           dc.b $00
[000b952f]                           dc.b $00
[000b9530]                           dc.b $00
[000b9531]                           dc.b $7f
[000b9532]                           dc.w $ff00
[000b9534]                           dc.b $00
[000b9535]                           dc.b $00
[000b9536]                           dc.b $00
[000b9537]                           dc.b $7f
[000b9538]                           dc.w $ff00
[000b953a]                           dc.b $00
[000b953b]                           dc.b $00
[000b953c]                           dc.b $00
[000b953d]                           dc.b $7f
[000b953e]                           dc.b $ff
[000b953f]                           dc.b $00
[000b9540]                           dc.b $00
[000b9541]                           dc.b $00
[000b9542]                           dc.b $00
[000b9543]                           dc.b $7f
[000b9544]                           dc.w $ff00
[000b9546]                           dc.b $00
[000b9547]                           dc.b $00
[000b9548]                           dc.b $00
[000b9549]                           dc.b $7f
[000b954a]                           dc.w $ff00
[000b954c]                           dc.b $00
[000b954d]                           dc.b $00
[000b954e]                           dc.b $00
[000b954f]                           dc.b $7f
[000b9550]                           dc.w $ff00
[000b9552]                           dc.b $00
[000b9553]                           dc.b $00
[000b9554]                           dc.b $00
[000b9555]                           dc.b $7f
[000b9556]                           dc.w $ff00
[000b9558]                           dc.b $00
[000b9559]                           dc.b $00
[000b955a]                           dc.b $00
[000b955b]                           dc.b $7f
[000b955c]                           dc.w $ffff
[000b955e]                           dc.w $f000
[000b9560]                           dc.b $00
[000b9561]                           dc.b $70
[000b9562]                           dc.w $07ff
[000b9564]                           dc.w $f000
[000b9566]                           dc.b $00
[000b9567]                           dc.b $7f
[000b9568]                           dc.w $ffff
[000b956a]                           dc.w $f000
[000b956c]                           dc.b $00
[000b956d]                           dc.b $7f
[000b956e]                           dc.w $ffff
[000b9570]                           dc.b $f0
[000b9571]                           dc.b $00
[000b9572]                           dc.b $00
[000b9573]                           dc.b $7f
[000b9574]                           dc.w $ffff
[000b9576]                           dc.w $f000
[000b9578]                           dc.b $00
[000b9579]                           dc.b $7f
[000b957a]                           dc.w $ffc0
[000b957c]                           dc.w $7000
[000b957e]                           dc.b $00
[000b957f]                           dc.b $7f
[000b9580]                           dc.w $ffff
[000b9582]                           dc.w $f000
[000b9584]                           dc.b $00
[000b9585]                           dc.b $7f
[000b9586]                           dc.w $ffff
[000b9588]                           dc.w $f000
[000b958a]                           dc.b $00
[000b958b]                           dc.b $7f
[000b958c]                           dc.w $ff00
[000b958e]                           dc.b $00
[000b958f]                           dc.b $00
[000b9590]                           dc.b $00
[000b9591]                           dc.b $7f
[000b9592]                           dc.w $ff00
[000b9594]                           dc.b $00
[000b9595]                           dc.b $00
[000b9596]                           dc.b $00
[000b9597]                           dc.b $00
[000b9598]                           dc.b $00
[000b9599]                           dc.b $00
[000b959a]                           dc.b $00
[000b959b]                           dc.b $00
[000b959c]                           dc.b $00
[000b959d]                           dc.b $00
[000b959e]                           dc.b $00
[000b959f]                           dc.b $00
[000b95a0]                           dc.b $00
[000b95a1]                           dc.b $00
[000b95a2]                           dc.b $00
[000b95a3]                           dc.b $00
[000b95a4]                           dc.b $00
[000b95a5]                           dc.b $00
[000b95a6]                           dc.b $00
[000b95a7]                           dc.b $00
[000b95a8]                           dc.b $00
[000b95a9]                           dc.b $00
[000b95aa]                           dc.b $00
[000b95ab]                           dc.b $00
[000b95ac]                           dc.b $00
[000b95ad]                           dc.b $00
[000b95ae]                           dc.b $00
[000b95af]                           dc.b $00
[000b95b0]                           dc.b $00
[000b95b1]                           dc.b $00
[000b95b2]                           dc.b $00
[000b95b3]                           dc.b $00
[000b95b4]                           dc.b $00
[000b95b5]                           dc.b $00
[000b95b6]                           dc.b $00
[000b95b7]                           dc.b $00
[000b95b8]                           dc.b $00
[000b95b9]                           dc.b $00
[000b95ba]                           dc.b $00
[000b95bb]                           dc.b $00
[000b95bc]                           dc.b $00
[000b95bd]                           dc.b $00
[000b95be]                           dc.b $00
[000b95bf]                           dc.b $00
[000b95c0]                           dc.b $00
[000b95c1]                           dc.b $00
[000b95c2]                           dc.b $00
[000b95c3]                           dc.b $00
[000b95c4]                           dc.b $00
[000b95c5]                           dc.b $00
[000b95c6]                           dc.b $00
[000b95c7]                           dc.b $00
[000b95c8]                           dc.b $00
[000b95c9]                           dc.b $00
[000b95ca]                           dc.b $00
[000b95cb]                           dc.b $00
[000b95cc]                           dc.b $00
[000b95cd]                           dc.b $00
[000b95ce]                           dc.b $00
[000b95cf]                           dc.b $00
[000b95d0]                           dc.b $00
[000b95d1]                           dc.b $00
[000b95d2]                           dc.b $00
[000b95d3]                           dc.b $00
[000b95d4]                           dc.b $00
[000b95d5]                           dc.b $00
[000b95d6]                           dc.b $00
[000b95d7]                           dc.b $00
[000b95d8]                           dc.b $00
[000b95d9]                           dc.b $00
[000b95da]                           dc.b $00
[000b95db]                           dc.b $00
[000b95dc]                           dc.b $00
[000b95dd]                           dc.b $00
[000b95de]                           dc.b $00
[000b95df]                           dc.b $7f
[000b95e0]                           dc.w $ff00
[000b95e2]                           dc.b $00
[000b95e3]                           dc.b $00
[000b95e4]                           dc.b $00
[000b95e5]                           dc.b $7f
[000b95e6]                           dc.w $ff00
[000b95e8]                           dc.b $00
[000b95e9]                           dc.b $00
[000b95ea]                           dc.b $00
[000b95eb]                           dc.b $7f
[000b95ec]                           dc.w $ff00
[000b95ee]                           dc.b $00
[000b95ef]                           dc.b $00
[000b95f0]                           dc.b $00
[000b95f1]                           dc.b $7f
[000b95f2]                           dc.b $ff
[000b95f3]                           dc.b $00
[000b95f4]                           dc.b $00
[000b95f5]                           dc.b $00
[000b95f6]                           dc.b $00
[000b95f7]                           dc.b $7f
[000b95f8]                           dc.b $ff
[000b95f9]                           dc.b $00
[000b95fa]                           dc.b $00
[000b95fb]                           dc.b $00
[000b95fc]                           dc.b $00
[000b95fd]                           dc.b $7f
[000b95fe]                           dc.b $ff
[000b95ff]                           dc.b $00
[000b9600]                           dc.b $00
[000b9601]                           dc.b $00
[000b9602]                           dc.b $00
[000b9603]                           dc.b $7f
[000b9604]                           dc.b $ff
[000b9605]                           dc.b $00
[000b9606]                           dc.b $00
[000b9607]                           dc.b $00
[000b9608]                           dc.b $00
[000b9609]                           dc.b $7f
[000b960a]                           dc.w $ffff
[000b960c]                           dc.w $f000
[000b960e]                           dc.b $00
[000b960f]                           dc.b $70
[000b9610]                           dc.w $07ff
[000b9612]                           dc.w $f000
[000b9614]                           dc.b $00
[000b9615]                           dc.b $7f
[000b9616]                           dc.w $ffff
[000b9618]                           dc.w $f000
[000b961a]                           dc.b $00
[000b961b]                           dc.b $7f
[000b961c]                           dc.w $ffff
[000b961e]                           dc.w $f000
[000b9620]                           dc.b $00
[000b9621]                           dc.b $7f
[000b9622]                           dc.w $ffff
[000b9624]                           dc.w $f000
[000b9626]                           dc.b $00
[000b9627]                           dc.b $7f
[000b9628]                           dc.w $ffc0
[000b962a]                           dc.w $7000
[000b962c]                           dc.b $00
[000b962d]                           dc.b $7f
[000b962e]                           dc.w $ffff
[000b9630]                           dc.w $f000
[000b9632]                           dc.b $00
[000b9633]                           dc.b $7f
[000b9634]                           dc.w $ffff
[000b9636]                           dc.b $f0
[000b9637]                           dc.b $00
[000b9638]                           dc.b $00
[000b9639]                           dc.b $7f
[000b963a]                           dc.w $ff00
[000b963c]                           dc.b $00
[000b963d]                           dc.b $00
[000b963e]                           dc.b $00
[000b963f]                           dc.b $7f
[000b9640]                           dc.w $ff00
[000b9642]                           dc.b $00
[000b9643]                           dc.b $00
[000b9644]                           dc.b $00
[000b9645]                           dc.b $00
[000b9646]                           dc.b $00
[000b9647]                           dc.b $00
[000b9648]                           dc.b $00
[000b9649]                           dc.b $00
[000b964a]                           dc.b $00
[000b964b]                           dc.b $00
[000b964c]                           dc.b $00
[000b964d]                           dc.b $00
[000b964e]                           dc.b $00
[000b964f]                           dc.b $00
[000b9650]                           dc.b $00
[000b9651]                           dc.b $00
[000b9652]                           dc.b $00
[000b9653]                           dc.b $00
[000b9654]                           dc.b $00
[000b9655]                           dc.b $00
[000b9656]                           dc.b $00
[000b9657]                           dc.b $00
[000b9658]                           dc.b $00
[000b9659]                           dc.b $00
[000b965a]                           dc.b $00
[000b965b]                           dc.b $00
[000b965c]                           dc.b $00
[000b965d]                           dc.b $00
[000b965e]                           dc.b $00
[000b965f]                           dc.b $00
[000b9660]                           dc.b $00
[000b9661]                           dc.b $00
[000b9662]                           dc.b $00
[000b9663]                           dc.b $00
[000b9664]                           dc.b $00
[000b9665]                           dc.b $00
[000b9666]                           dc.b $00
[000b9667]                           dc.b $00
[000b9668]                           dc.b $00
[000b9669]                           dc.b $00
[000b966a]                           dc.b $00
[000b966b]                           dc.b $00
[000b966c]                           dc.b $00
[000b966d]                           dc.b $00
[000b966e]                           dc.b $00
[000b966f]                           dc.b $00
[000b9670]                           dc.b $00
[000b9671]                           dc.b $00
[000b9672]                           dc.b $00
[000b9673]                           dc.b $00
[000b9674]                           dc.b $00
[000b9675]                           dc.b $00
[000b9676]                           dc.b $00
[000b9677]                           dc.b $00
[000b9678]                           dc.b $00
[000b9679]                           dc.b $00
[000b967a]                           dc.b $00
[000b967b]                           dc.b $00
[000b967c]                           dc.b $00
[000b967d]                           dc.b $00
[000b967e]                           dc.b $00
[000b967f]                           dc.b $00
[000b9680]                           dc.b $00
[000b9681]                           dc.b $00
[000b9682]                           dc.b $00
[000b9683]                           dc.b $00
[000b9684]                           dc.b $00
[000b9685]                           dc.b $00
[000b9686]                           dc.b $00
[000b9687]                           dc.b $00
[000b9688]                           dc.b $00
[000b9689]                           dc.b $00
[000b968a]                           dc.b $00
[000b968b]                           dc.b $00
[000b968c]                           dc.b $00
[000b968d]                           dc.b $7f
[000b968e]                           dc.w $ff00
[000b9690]                           dc.b $00
[000b9691]                           dc.b $00
[000b9692]                           dc.b $00
[000b9693]                           dc.b $40
[000b9694]                           dc.w $0180
[000b9696]                           dc.b $00
[000b9697]                           dc.b $00
[000b9698]                           dc.b $00
[000b9699]                           dc.b $4f
[000b969a]                           dc.w $f980
[000b969c]                           dc.b $00
[000b969d]                           dc.b $00
[000b969e]                           dc.b $00
[000b969f]                           dc.b $40
[000b96a0]                           dc.b $01
[000b96a1]                           dc.b $80
[000b96a2]                           dc.b $00
[000b96a3]                           dc.b $00
[000b96a4]                           dc.b $00
[000b96a5]                           dc.b $40
[000b96a6]                           dc.w $0180
[000b96a8]                           dc.b $00
[000b96a9]                           dc.b $00
[000b96aa]                           dc.b $00
[000b96ab]                           dc.b $55
[000b96ac]                           dc.w $5580
[000b96ae]                           dc.b $00
[000b96af]                           dc.b $00
[000b96b0]                           dc.b $00
[000b96b1]                           dc.b $40
[000b96b2]                           dc.b $01
[000b96b3]                           dc.b $80
[000b96b4]                           dc.b $00
[000b96b5]                           dc.b $00
[000b96b6]                           dc.b $00
[000b96b7]                           dc.b $7f
[000b96b8]                           dc.w $ffff
[000b96ba]                           dc.w $f000
[000b96bc]                           dc.b $00
[000b96bd]                           dc.b $70
[000b96be]                           dc.w $0700
[000b96c0]                           dc.b $18
[000b96c1]                           dc.b $00
[000b96c2]                           dc.b $00
[000b96c3]                           dc.b $7f
[000b96c4]                           dc.w $ff3f
[000b96c6]                           dc.w $9800
[000b96c8]                           dc.b $00
[000b96c9]                           dc.b $40
[000b96ca]                           dc.w $0100
[000b96cc]                           dc.w $1800
[000b96ce]                           dc.b $00
[000b96cf]                           dc.b $4f
[000b96d0]                           dc.w $f9ff
[000b96d2]                           dc.w $f800
[000b96d4]                           dc.b $00
[000b96d5]                           dc.b $40
[000b96d6]                           dc.b $01
[000b96d7]                           dc.b $c0
[000b96d8]                           dc.b $78
[000b96d9]                           dc.b $00
[000b96da]                           dc.b $00
[000b96db]                           dc.b $40
[000b96dc]                           dc.w $01ff
[000b96de]                           dc.w $f800
[000b96e0]                           dc.b $00
[000b96e1]                           dc.b $4f
[000b96e2]                           dc.w $f9ff
[000b96e4]                           dc.w $f800
[000b96e6]                           dc.b $00
[000b96e7]                           dc.b $40
[000b96e8]                           dc.w $01ff
[000b96ea]                           dc.w $f800
[000b96ec]                           dc.b $00
[000b96ed]                           dc.b $7f
[000b96ee]                           dc.w $ff80
[000b96f0]                           dc.b $00
[000b96f1]                           dc.b $00
[000b96f2]                           dc.b $00
[000b96f3]                           dc.b $3f
[000b96f4]                           dc.w $ff80
[000b96f6]                           dc.b $00
[000b96f7]                           dc.b $00
[000b96f8]                           dc.b $00
[000b96f9]                           dc.b $00
[000b96fa]                           dc.b $00
[000b96fb]                           dc.b $00
[000b96fc]                           dc.b $00
[000b96fd]                           dc.b $00
[000b96fe]                           dc.b $00
[000b96ff]                           dc.b $00
[000b9700]                           dc.b $00
[000b9701]                           dc.b $00
[000b9702]                           dc.b $00
[000b9703]                           dc.b $00
[000b9704]                           dc.b $00
[000b9705]                           dc.b $00
[000b9706]                           dc.b $00
[000b9707]                           dc.b $00
[000b9708]                           dc.b $00
[000b9709]                           dc.b $00
[000b970a]                           dc.b $00
[000b970b]                           dc.b $00
[000b970c]                           dc.b $00
[000b970d]                           dc.b $00
[000b970e]                           dc.b $00
[000b970f]                           dc.b $00
[000b9710]                           dc.b $00
[000b9711]                           dc.b $00
[000b9712]                           dc.b $00
[000b9713]                           dc.b $00
[000b9714]                           dc.b $00
[000b9715]                           dc.b $00
DATAS_08:
[000b9716]                           dc.b $00
[000b9717]                           dc.b $00
[000b9718]                           dc.b $00
[000b9719]                           dc.b $00
[000b971a]                           dc.b $00
[000b971b]                           dc.b $00
[000b971c]                           dc.b $00
[000b971d]                           dc.b $00
[000b971e]                           dc.b $00
[000b971f]                           dc.b $00
[000b9720]                           dc.b $00
[000b9721]                           dc.b $00
[000b9722]                           dc.b $00
[000b9723]                           dc.b $00
[000b9724]                           dc.b $00
[000b9725]                           dc.b $00
[000b9726]                           dc.b $00
[000b9727]                           dc.b $00
[000b9728]                           dc.b $00
[000b9729]                           dc.b $00
[000b972a]                           dc.b $00
[000b972b]                           dc.b $00
[000b972c]                           dc.b $00
[000b972d]                           dc.b $00
[000b972e]                           dc.b $00
[000b972f]                           dc.b $00
[000b9730]                           dc.b $00
[000b9731]                           dc.b $00
[000b9732]                           dc.b $00
[000b9733]                           dc.b $00
[000b9734]                           dc.b $00
[000b9735]                           dc.b $00
[000b9736]                           dc.b $00
[000b9737]                           dc.b $00
[000b9738]                           dc.b $00
[000b9739]                           dc.b $00
[000b973a]                           dc.b $00
[000b973b]                           dc.b $7f
[000b973c]                           dc.w $ff00
[000b973e]                           dc.b $00
[000b973f]                           dc.b $00
[000b9740]                           dc.b $00
[000b9741]                           dc.b $7f
[000b9742]                           dc.w $ff80
[000b9744]                           dc.b $00
[000b9745]                           dc.b $00
[000b9746]                           dc.b $00
[000b9747]                           dc.b $7f
[000b9748]                           dc.w $ff80
[000b974a]                           dc.b $00
[000b974b]                           dc.b $00
[000b974c]                           dc.b $00
[000b974d]                           dc.b $7f
[000b974e]                           dc.w $ff80
[000b9750]                           dc.b $00
[000b9751]                           dc.b $00
[000b9752]                           dc.b $00
[000b9753]                           dc.b $7f
[000b9754]                           dc.w $ff80
[000b9756]                           dc.b $00
[000b9757]                           dc.b $00
[000b9758]                           dc.b $00
[000b9759]                           dc.b $7f
[000b975a]                           dc.w $ff80
[000b975c]                           dc.b $00
[000b975d]                           dc.b $00
[000b975e]                           dc.b $00
[000b975f]                           dc.b $7f
[000b9760]                           dc.w $ff80
[000b9762]                           dc.b $00
[000b9763]                           dc.b $00
[000b9764]                           dc.b $00
[000b9765]                           dc.b $7f
[000b9766]                           dc.w $ffff
[000b9768]                           dc.w $f000
[000b976a]                           dc.b $00
[000b976b]                           dc.b $7f
[000b976c]                           dc.w $ffff
[000b976e]                           dc.w $f800
[000b9770]                           dc.b $00
[000b9771]                           dc.b $7f
[000b9772]                           dc.w $ffff
[000b9774]                           dc.w $f800
[000b9776]                           dc.b $00
[000b9777]                           dc.b $7f
[000b9778]                           dc.w $ffff
[000b977a]                           dc.w $f800
[000b977c]                           dc.b $00
[000b977d]                           dc.b $7f
[000b977e]                           dc.w $ffff
[000b9780]                           dc.w $f800
[000b9782]                           dc.b $00
[000b9783]                           dc.b $7f
[000b9784]                           dc.w $ffff
[000b9786]                           dc.w $f800
[000b9788]                           dc.b $00
[000b9789]                           dc.b $7f
[000b978a]                           dc.w $ffff
[000b978c]                           dc.w $f800
[000b978e]                           dc.b $00
[000b978f]                           dc.b $7f
[000b9790]                           dc.w $ffff
[000b9792]                           dc.w $f800
[000b9794]                           dc.b $00
[000b9795]                           dc.b $7f
[000b9796]                           dc.w $ffff
[000b9798]                           dc.w $f800
[000b979a]                           dc.b $00
[000b979b]                           dc.b $7f
[000b979c]                           dc.w $ff80
[000b979e]                           dc.b $00
[000b979f]                           dc.b $00
[000b97a0]                           dc.b $00
[000b97a1]                           dc.b $3f
[000b97a2]                           dc.w $ff80
[000b97a4]                           dc.b $00
[000b97a5]                           dc.b $00
[000b97a6]                           dc.b $00
[000b97a7]                           dc.b $00
[000b97a8]                           dc.b $00
[000b97a9]                           dc.b $00
[000b97aa]                           dc.b $00
[000b97ab]                           dc.b $00
[000b97ac]                           dc.b $00
[000b97ad]                           dc.b $00
[000b97ae]                           dc.b $00
[000b97af]                           dc.b $00
[000b97b0]                           dc.b $00
[000b97b1]                           dc.b $00
[000b97b2]                           dc.b $00
[000b97b3]                           dc.b $00
[000b97b4]                           dc.b $00
[000b97b5]                           dc.b $00
[000b97b6]                           dc.b $00
[000b97b7]                           dc.b $00
[000b97b8]                           dc.b $00
[000b97b9]                           dc.b $00
[000b97ba]                           dc.b $00
[000b97bb]                           dc.b $00
[000b97bc]                           dc.b $00
[000b97bd]                           dc.b $00
[000b97be]                           dc.b $00
[000b97bf]                           dc.b $00
[000b97c0]                           dc.b $00
[000b97c1]                           dc.b $00
[000b97c2]                           dc.b $00
[000b97c3]                           dc.b $00
DATAS_09:
[000b97c4]                           dc.b $00
[000b97c5]                           dc.b $00
[000b97c6]                           dc.b $00
[000b97c7]                           dc.b $00
[000b97c8]                           dc.w $02c0
[000b97ca]                           dc.b $00
[000b97cb]                           dc.b $00
[000b97cc]                           dc.b $00
[000b97cd]                           dc.b $00
[000b97ce]                           dc.b $00
[000b97cf]                           dc.b $00
[000b97d0]                           dc.b $00
[000b97d1]                           dc.b $00
[000b97d2]                           dc.b $00
[000b97d3]                           dc.b $00
[000b97d4]                           dc.b $00
[000b97d5]                           dc.b $00
[000b97d6]                           dc.b $00
[000b97d7]                           dc.b $00
[000b97d8]                           dc.b $00
[000b97d9]                           dc.b $00
[000b97da]                           dc.b $00
[000b97db]                           dc.b $00
[000b97dc]                           dc.b $00
[000b97dd]                           dc.b $00
[000b97de]                           dc.b $00
[000b97df]                           dc.b $00
[000b97e0]                           dc.b $00
[000b97e1]                           dc.b $00
[000b97e2]                           dc.b $00
[000b97e3]                           dc.b $00
[000b97e4]                           dc.b $00
[000b97e5]                           dc.b $00
[000b97e6]                           dc.b $00
[000b97e7]                           dc.b $00
[000b97e8]                           dc.b $00
[000b97e9]                           dc.b $00
[000b97ea]                           dc.b $00
[000b97eb]                           dc.b $00
[000b97ec]                           dc.b $00
[000b97ed]                           dc.b $00
[000b97ee]                           dc.b $00
[000b97ef]                           dc.b $7f
[000b97f0]                           dc.w $ff00
[000b97f2]                           dc.b $00
[000b97f3]                           dc.b $00
[000b97f4]                           dc.b $00
[000b97f5]                           dc.b $7f
[000b97f6]                           dc.w $ff00
[000b97f8]                           dc.b $00
[000b97f9]                           dc.b $00
[000b97fa]                           dc.b $00
[000b97fb]                           dc.b $7f
[000b97fc]                           dc.w $ff00
[000b97fe]                           dc.b $00
[000b97ff]                           dc.b $00
[000b9800]                           dc.b $00
[000b9801]                           dc.b $7f
[000b9802]                           dc.w $ff00
[000b9804]                           dc.b $00
[000b9805]                           dc.b $00
[000b9806]                           dc.b $00
[000b9807]                           dc.b $7f
[000b9808]                           dc.w $ff00
[000b980a]                           dc.b $00
[000b980b]                           dc.b $00
[000b980c]                           dc.b $00
[000b980d]                           dc.b $7f
[000b980e]                           dc.w $ff00
[000b9810]                           dc.b $00
[000b9811]                           dc.b $00
[000b9812]                           dc.b $00
[000b9813]                           dc.b $7f
[000b9814]                           dc.w $ff00
[000b9816]                           dc.b $00
[000b9817]                           dc.b $00
[000b9818]                           dc.b $00
[000b9819]                           dc.b $7f
[000b981a]                           dc.w $ffff
[000b981c]                           dc.w $f000
[000b981e]                           dc.b $00
[000b981f]                           dc.b $70
[000b9820]                           dc.w $07ff
[000b9822]                           dc.w $f000
[000b9824]                           dc.b $00
[000b9825]                           dc.b $7f
[000b9826]                           dc.w $ffff
[000b9828]                           dc.w $f000
[000b982a]                           dc.b $00
[000b982b]                           dc.b $7f
[000b982c]                           dc.w $ffff
[000b982e]                           dc.w $f000
[000b9830]                           dc.b $00
[000b9831]                           dc.b $7f
[000b9832]                           dc.w $ffff
[000b9834]                           dc.w $f000
[000b9836]                           dc.b $00
[000b9837]                           dc.b $7f
[000b9838]                           dc.w $ffc0
[000b983a]                           dc.w $7000
[000b983c]                           dc.b $00
[000b983d]                           dc.b $7f
[000b983e]                           dc.w $ffff
[000b9840]                           dc.w $f000
[000b9842]                           dc.b $00
[000b9843]                           dc.b $7f
[000b9844]                           dc.w $ffff
[000b9846]                           dc.w $f000
[000b9848]                           dc.b $00
[000b9849]                           dc.b $7f
[000b984a]                           dc.w $ff00
[000b984c]                           dc.b $00
[000b984d]                           dc.b $00
[000b984e]                           dc.b $00
[000b984f]                           dc.b $7f
[000b9850]                           dc.w $ff00
[000b9852]                           dc.b $00
[000b9853]                           dc.b $00
[000b9854]                           dc.b $00
[000b9855]                           dc.b $00
[000b9856]                           dc.b $00
[000b9857]                           dc.b $00
[000b9858]                           dc.b $00
[000b9859]                           dc.b $00
[000b985a]                           dc.b $00
[000b985b]                           dc.b $00
[000b985c]                           dc.b $00
[000b985d]                           dc.b $00
[000b985e]                           dc.b $00
[000b985f]                           dc.b $00
[000b9860]                           dc.b $00
[000b9861]                           dc.b $00
[000b9862]                           dc.b $00
[000b9863]                           dc.b $00
[000b9864]                           dc.b $00
[000b9865]                           dc.b $00
[000b9866]                           dc.b $00
[000b9867]                           dc.b $00
[000b9868]                           dc.b $00
[000b9869]                           dc.b $00
[000b986a]                           dc.b $00
[000b986b]                           dc.b $00
[000b986c]                           dc.b $00
[000b986d]                           dc.b $00
[000b986e]                           dc.b $00
[000b986f]                           dc.b $00
[000b9870]                           dc.b $00
[000b9871]                           dc.b $00
[000b9872]                           dc.b $00
[000b9873]                           dc.b $00
[000b9874]                           dc.b $00
[000b9875]                           dc.b $00
[000b9876]                           dc.b $00
[000b9877]                           dc.b $00
[000b9878]                           dc.b $00
[000b9879]                           dc.b $00
[000b987a]                           dc.b $00
[000b987b]                           dc.b $00
[000b987c]                           dc.b $00
[000b987d]                           dc.b $00
[000b987e]                           dc.b $00
[000b987f]                           dc.b $00
[000b9880]                           dc.b $00
[000b9881]                           dc.b $00
[000b9882]                           dc.b $00
[000b9883]                           dc.b $00
[000b9884]                           dc.b $00
[000b9885]                           dc.b $00
[000b9886]                           dc.b $00
[000b9887]                           dc.b $00
[000b9888]                           dc.b $00
[000b9889]                           dc.b $00
[000b988a]                           dc.b $00
[000b988b]                           dc.b $00
[000b988c]                           dc.b $00
[000b988d]                           dc.b $00
[000b988e]                           dc.b $00
[000b988f]                           dc.b $00
[000b9890]                           dc.b $00
[000b9891]                           dc.b $00
[000b9892]                           dc.b $00
[000b9893]                           dc.b $00
[000b9894]                           dc.b $00
[000b9895]                           dc.b $00
[000b9896]                           dc.b $00
[000b9897]                           dc.b $00
[000b9898]                           dc.b $00
[000b9899]                           dc.b $00
[000b989a]                           dc.b $00
[000b989b]                           dc.b $00
[000b989c]                           dc.b $00
[000b989d]                           dc.b $7f
[000b989e]                           dc.w $ff00
[000b98a0]                           dc.b $00
[000b98a1]                           dc.b $00
[000b98a2]                           dc.b $00
[000b98a3]                           dc.b $7f
[000b98a4]                           dc.w $ff00
[000b98a6]                           dc.b $00
[000b98a7]                           dc.b $00
[000b98a8]                           dc.b $00
[000b98a9]                           dc.b $7f
[000b98aa]                           dc.w $ff00
[000b98ac]                           dc.b $00
[000b98ad]                           dc.b $00
[000b98ae]                           dc.b $00
[000b98af]                           dc.b $7f
[000b98b0]                           dc.w $ff00
[000b98b2]                           dc.b $00
[000b98b3]                           dc.b $00
[000b98b4]                           dc.b $00
[000b98b5]                           dc.b $7f
[000b98b6]                           dc.w $ff00
[000b98b8]                           dc.b $00
[000b98b9]                           dc.b $00
[000b98ba]                           dc.b $00
[000b98bb]                           dc.b $7f
[000b98bc]                           dc.w $ff00
[000b98be]                           dc.b $00
[000b98bf]                           dc.b $00
[000b98c0]                           dc.b $00
[000b98c1]                           dc.b $7f
[000b98c2]                           dc.w $ff00
[000b98c4]                           dc.b $00
[000b98c5]                           dc.b $00
[000b98c6]                           dc.b $00
[000b98c7]                           dc.b $7f
[000b98c8]                           dc.w $ffff
[000b98ca]                           dc.w $f000
[000b98cc]                           dc.b $00
[000b98cd]                           dc.b $70
[000b98ce]                           dc.w $07ff
[000b98d0]                           dc.w $f000
[000b98d2]                           dc.b $00
[000b98d3]                           dc.b $7f
[000b98d4]                           dc.w $ffff
[000b98d6]                           dc.w $f000
[000b98d8]                           dc.b $00
[000b98d9]                           dc.b $7f
[000b98da]                           dc.w $ffff
[000b98dc]                           dc.w $f000
[000b98de]                           dc.b $00
[000b98df]                           dc.b $7f
[000b98e0]                           dc.w $ffff
[000b98e2]                           dc.w $f000
[000b98e4]                           dc.b $00
[000b98e5]                           dc.b $7f
[000b98e6]                           dc.w $ffc0
[000b98e8]                           dc.w $7000
[000b98ea]                           dc.b $00
[000b98eb]                           dc.b $7f
[000b98ec]                           dc.w $ffff
[000b98ee]                           dc.w $f000
[000b98f0]                           dc.b $00
[000b98f1]                           dc.b $7f
[000b98f2]                           dc.w $ffff
[000b98f4]                           dc.w $f000
[000b98f6]                           dc.b $00
[000b98f7]                           dc.b $7f
[000b98f8]                           dc.w $ff00
[000b98fa]                           dc.b $00
[000b98fb]                           dc.b $00
[000b98fc]                           dc.b $00
[000b98fd]                           dc.b $7f
[000b98fe]                           dc.w $ff00
[000b9900]                           dc.b $00
[000b9901]                           dc.b $00
[000b9902]                           dc.b $00
[000b9903]                           dc.b $00
[000b9904]                           dc.b $00
[000b9905]                           dc.b $00
[000b9906]                           dc.b $00
[000b9907]                           dc.b $00
[000b9908]                           dc.b $00
[000b9909]                           dc.b $00
[000b990a]                           dc.b $00
[000b990b]                           dc.b $00
[000b990c]                           dc.b $00
[000b990d]                           dc.b $00
[000b990e]                           dc.b $00
[000b990f]                           dc.b $00
[000b9910]                           dc.b $00
[000b9911]                           dc.b $00
[000b9912]                           dc.b $00
[000b9913]                           dc.b $00
[000b9914]                           dc.b $00
[000b9915]                           dc.b $00
[000b9916]                           dc.b $00
[000b9917]                           dc.b $00
[000b9918]                           dc.b $00
[000b9919]                           dc.b $00
[000b991a]                           dc.b $00
[000b991b]                           dc.b $00
[000b991c]                           dc.b $00
[000b991d]                           dc.b $00
[000b991e]                           dc.b $00
[000b991f]                           dc.b $00
[000b9920]                           dc.b $00
[000b9921]                           dc.b $00
[000b9922]                           dc.b $00
[000b9923]                           dc.b $00
[000b9924]                           dc.b $00
[000b9925]                           dc.b $00
[000b9926]                           dc.b $00
[000b9927]                           dc.b $00
[000b9928]                           dc.b $00
[000b9929]                           dc.b $00
[000b992a]                           dc.b $00
[000b992b]                           dc.b $00
[000b992c]                           dc.b $00
[000b992d]                           dc.b $00
[000b992e]                           dc.b $00
[000b992f]                           dc.b $00
[000b9930]                           dc.b $00
[000b9931]                           dc.b $00
[000b9932]                           dc.b $00
[000b9933]                           dc.b $00
[000b9934]                           dc.b $00
[000b9935]                           dc.b $00
[000b9936]                           dc.b $00
[000b9937]                           dc.b $00
[000b9938]                           dc.b $00
[000b9939]                           dc.b $00
[000b993a]                           dc.b $00
[000b993b]                           dc.b $00
[000b993c]                           dc.b $00
[000b993d]                           dc.b $00
[000b993e]                           dc.b $00
[000b993f]                           dc.b $00
[000b9940]                           dc.b $00
[000b9941]                           dc.b $00
[000b9942]                           dc.b $00
[000b9943]                           dc.b $00
[000b9944]                           dc.b $00
[000b9945]                           dc.b $00
[000b9946]                           dc.b $00
[000b9947]                           dc.b $00
[000b9948]                           dc.b $00
[000b9949]                           dc.b $00
[000b994a]                           dc.b $00
[000b994b]                           dc.b $7f
[000b994c]                           dc.w $ff00
[000b994e]                           dc.b $00
[000b994f]                           dc.b $00
[000b9950]                           dc.b $00
[000b9951]                           dc.b $7f
[000b9952]                           dc.w $ff00
[000b9954]                           dc.b $00
[000b9955]                           dc.b $00
[000b9956]                           dc.b $00
[000b9957]                           dc.b $7f
[000b9958]                           dc.w $ff00
[000b995a]                           dc.b $00
[000b995b]                           dc.b $00
[000b995c]                           dc.b $00
[000b995d]                           dc.b $7f
[000b995e]                           dc.w $ff00
[000b9960]                           dc.b $00
[000b9961]                           dc.b $00
[000b9962]                           dc.b $00
[000b9963]                           dc.b $7f
[000b9964]                           dc.w $ff00
[000b9966]                           dc.b $00
[000b9967]                           dc.b $00
[000b9968]                           dc.b $00
[000b9969]                           dc.b $7f
[000b996a]                           dc.w $ff00
[000b996c]                           dc.b $00
[000b996d]                           dc.b $00
[000b996e]                           dc.b $00
[000b996f]                           dc.b $7f
[000b9970]                           dc.w $ff00
[000b9972]                           dc.b $00
[000b9973]                           dc.b $00
[000b9974]                           dc.b $00
[000b9975]                           dc.b $7f
[000b9976]                           dc.w $ffff
[000b9978]                           dc.w $f000
[000b997a]                           dc.b $00
[000b997b]                           dc.b $70
[000b997c]                           dc.w $07ff
[000b997e]                           dc.w $f000
[000b9980]                           dc.b $00
[000b9981]                           dc.b $7f
[000b9982]                           dc.w $ffff
[000b9984]                           dc.w $f000
[000b9986]                           dc.b $00
[000b9987]                           dc.b $7f
[000b9988]                           dc.w $ffff
[000b998a]                           dc.w $f000
[000b998c]                           dc.b $00
[000b998d]                           dc.b $7f
[000b998e]                           dc.w $ffff
[000b9990]                           dc.w $f000
[000b9992]                           dc.b $00
[000b9993]                           dc.b $7f
[000b9994]                           dc.w $ffc0
[000b9996]                           dc.w $7000
[000b9998]                           dc.b $00
[000b9999]                           dc.b $7f
[000b999a]                           dc.w $ffff
[000b999c]                           dc.w $f000
[000b999e]                           dc.b $00
[000b999f]                           dc.b $7f
[000b99a0]                           dc.w $ffff
[000b99a2]                           dc.w $f000
[000b99a4]                           dc.b $00
[000b99a5]                           dc.b $7f
[000b99a6]                           dc.w $ff00
[000b99a8]                           dc.b $00
[000b99a9]                           dc.b $00
[000b99aa]                           dc.b $00
[000b99ab]                           dc.b $7f
[000b99ac]                           dc.w $ff00
[000b99ae]                           dc.b $00
[000b99af]                           dc.b $00
[000b99b0]                           dc.b $00
[000b99b1]                           dc.b $00
[000b99b2]                           dc.b $00
[000b99b3]                           dc.b $00
[000b99b4]                           dc.b $00
[000b99b5]                           dc.b $00
[000b99b6]                           dc.b $00
[000b99b7]                           dc.b $00
[000b99b8]                           dc.b $00
[000b99b9]                           dc.b $00
[000b99ba]                           dc.b $00
[000b99bb]                           dc.b $00
[000b99bc]                           dc.b $00
[000b99bd]                           dc.b $00
[000b99be]                           dc.b $00
[000b99bf]                           dc.b $00
[000b99c0]                           dc.b $00
[000b99c1]                           dc.b $00
[000b99c2]                           dc.b $00
[000b99c3]                           dc.b $00
[000b99c4]                           dc.b $00
[000b99c5]                           dc.b $00
[000b99c6]                           dc.b $00
[000b99c7]                           dc.b $00
[000b99c8]                           dc.b $00
[000b99c9]                           dc.b $00
[000b99ca]                           dc.b $00
[000b99cb]                           dc.b $00
[000b99cc]                           dc.b $00
[000b99cd]                           dc.b $00
[000b99ce]                           dc.b $00
[000b99cf]                           dc.b $00
[000b99d0]                           dc.b $00
[000b99d1]                           dc.b $00
[000b99d2]                           dc.b $00
[000b99d3]                           dc.b $00
[000b99d4]                           dc.b $00
[000b99d5]                           dc.b $00
[000b99d6]                           dc.b $00
[000b99d7]                           dc.b $00
[000b99d8]                           dc.b $00
[000b99d9]                           dc.b $00
[000b99da]                           dc.b $00
[000b99db]                           dc.b $00
[000b99dc]                           dc.b $00
[000b99dd]                           dc.b $00
[000b99de]                           dc.b $00
[000b99df]                           dc.b $00
[000b99e0]                           dc.b $00
[000b99e1]                           dc.b $00
[000b99e2]                           dc.b $00
[000b99e3]                           dc.b $00
[000b99e4]                           dc.b $00
[000b99e5]                           dc.b $00
[000b99e6]                           dc.b $00
[000b99e7]                           dc.b $00
[000b99e8]                           dc.b $00
[000b99e9]                           dc.b $00
[000b99ea]                           dc.b $00
[000b99eb]                           dc.b $00
[000b99ec]                           dc.b $00
[000b99ed]                           dc.b $00
[000b99ee]                           dc.b $00
[000b99ef]                           dc.b $00
[000b99f0]                           dc.b $00
[000b99f1]                           dc.b $00
[000b99f2]                           dc.b $00
[000b99f3]                           dc.b $00
[000b99f4]                           dc.b $00
[000b99f5]                           dc.b $00
[000b99f6]                           dc.b $00
[000b99f7]                           dc.b $00
[000b99f8]                           dc.b $00
[000b99f9]                           dc.b $7f
[000b99fa]                           dc.w $ff00
[000b99fc]                           dc.b $00
[000b99fd]                           dc.b $00
[000b99fe]                           dc.b $00
[000b99ff]                           dc.b $40
[000b9a00]                           dc.w $0180
[000b9a02]                           dc.b $00
[000b9a03]                           dc.b $00
[000b9a04]                           dc.b $00
[000b9a05]                           dc.b $4f
[000b9a06]                           dc.w $f980
[000b9a08]                           dc.b $00
[000b9a09]                           dc.b $00
[000b9a0a]                           dc.b $00
[000b9a0b]                           dc.b $40
[000b9a0c]                           dc.w $0180
[000b9a0e]                           dc.b $00
[000b9a0f]                           dc.b $00
[000b9a10]                           dc.b $00
[000b9a11]                           dc.b $40
[000b9a12]                           dc.w $0180
[000b9a14]                           dc.b $00
[000b9a15]                           dc.b $00
[000b9a16]                           dc.b $00
[000b9a17]                           dc.b $55
[000b9a18]                           dc.w $5580
[000b9a1a]                           dc.b $00
[000b9a1b]                           dc.b $00
[000b9a1c]                           dc.b $00
[000b9a1d]                           dc.b $40
[000b9a1e]                           dc.w $0180
[000b9a20]                           dc.b $00
[000b9a21]                           dc.b $00
[000b9a22]                           dc.b $00
[000b9a23]                           dc.b $7f
[000b9a24]                           dc.w $ffff
[000b9a26]                           dc.w $f000
[000b9a28]                           dc.b $00
[000b9a29]                           dc.b $70
[000b9a2a]                           dc.w $0700
[000b9a2c]                           dc.w $1800
[000b9a2e]                           dc.b $00
[000b9a2f]                           dc.b $7f
[000b9a30]                           dc.w $ff3f
[000b9a32]                           dc.w $9800
[000b9a34]                           dc.b $00
[000b9a35]                           dc.b $40
[000b9a36]                           dc.w $0100
[000b9a38]                           dc.w $1800
[000b9a3a]                           dc.b $00
[000b9a3b]                           dc.b $4f
[000b9a3c]                           dc.w $f9ff
[000b9a3e]                           dc.w $f800
[000b9a40]                           dc.b $00
[000b9a41]                           dc.b $40
[000b9a42]                           dc.w $01c0
[000b9a44]                           dc.w $7800
[000b9a46]                           dc.b $00
[000b9a47]                           dc.b $40
[000b9a48]                           dc.w $01ff
[000b9a4a]                           dc.w $f800
[000b9a4c]                           dc.b $00
[000b9a4d]                           dc.b $4f
[000b9a4e]                           dc.w $f9ff
[000b9a50]                           dc.w $f800
[000b9a52]                           dc.b $00
[000b9a53]                           dc.b $40
[000b9a54]                           dc.w $01ff
[000b9a56]                           dc.w $f800
[000b9a58]                           dc.b $00
[000b9a59]                           dc.b $7f
[000b9a5a]                           dc.w $ff80
[000b9a5c]                           dc.b $00
[000b9a5d]                           dc.b $00
[000b9a5e]                           dc.b $00
[000b9a5f]                           dc.b $3f
[000b9a60]                           dc.w $ff80
[000b9a62]                           dc.b $00
[000b9a63]                           dc.b $00
[000b9a64]                           dc.b $00
[000b9a65]                           dc.b $00
[000b9a66]                           dc.b $00
[000b9a67]                           dc.b $00
[000b9a68]                           dc.b $00
[000b9a69]                           dc.b $00
[000b9a6a]                           dc.b $00
[000b9a6b]                           dc.b $00
[000b9a6c]                           dc.b $00
[000b9a6d]                           dc.b $00
[000b9a6e]                           dc.b $00
[000b9a6f]                           dc.b $00
[000b9a70]                           dc.b $00
[000b9a71]                           dc.b $00
[000b9a72]                           dc.b $00
[000b9a73]                           dc.b $00
[000b9a74]                           dc.b $00
[000b9a75]                           dc.b $00
[000b9a76]                           dc.b $00
[000b9a77]                           dc.b $00
[000b9a78]                           dc.b $00
[000b9a79]                           dc.b $00
[000b9a7a]                           dc.b $00
[000b9a7b]                           dc.b $00
[000b9a7c]                           dc.b $00
[000b9a7d]                           dc.b $00
[000b9a7e]                           dc.b $00
[000b9a7f]                           dc.b $00
[000b9a80]                           dc.b $00
[000b9a81]                           dc.b $00
DATAS_10:
[000b9a82]                           dc.b $00
[000b9a83]                           dc.b $00
[000b9a84]                           dc.b $00
[000b9a85]                           dc.b $00
[000b9a86]                           dc.b $00
[000b9a87]                           dc.b $00
[000b9a88]                           dc.b $00
[000b9a89]                           dc.b $00
[000b9a8a]                           dc.b $00
[000b9a8b]                           dc.b $00
[000b9a8c]                           dc.b $00
[000b9a8d]                           dc.b $00
[000b9a8e]                           dc.b $00
[000b9a8f]                           dc.b $00
[000b9a90]                           dc.b $00
[000b9a91]                           dc.b $00
[000b9a92]                           dc.b $00
[000b9a93]                           dc.b $00
[000b9a94]                           dc.b $00
[000b9a95]                           dc.b $00
[000b9a96]                           dc.b $00
[000b9a97]                           dc.b $00
[000b9a98]                           dc.b $00
[000b9a99]                           dc.b $00
[000b9a9a]                           dc.b $00
[000b9a9b]                           dc.b $00
[000b9a9c]                           dc.b $00
[000b9a9d]                           dc.b $00
[000b9a9e]                           dc.b $00
[000b9a9f]                           dc.b $00
[000b9aa0]                           dc.b $00
[000b9aa1]                           dc.b $00
[000b9aa2]                           dc.b $00
[000b9aa3]                           dc.b $00
[000b9aa4]                           dc.b $00
[000b9aa5]                           dc.b $00
[000b9aa6]                           dc.b $00
[000b9aa7]                           dc.b $7f
[000b9aa8]                           dc.w $ff00
[000b9aaa]                           dc.b $00
[000b9aab]                           dc.b $00
[000b9aac]                           dc.b $00
[000b9aad]                           dc.b $7f
[000b9aae]                           dc.w $ff80
[000b9ab0]                           dc.b $00
[000b9ab1]                           dc.b $00
[000b9ab2]                           dc.b $00
[000b9ab3]                           dc.b $7f
[000b9ab4]                           dc.w $ff80
[000b9ab6]                           dc.b $00
[000b9ab7]                           dc.b $00
[000b9ab8]                           dc.b $00
[000b9ab9]                           dc.b $7f
[000b9aba]                           dc.w $ff80
[000b9abc]                           dc.b $00
[000b9abd]                           dc.b $00
[000b9abe]                           dc.b $00
[000b9abf]                           dc.b $7f
[000b9ac0]                           dc.w $ff80
[000b9ac2]                           dc.b $00
[000b9ac3]                           dc.b $00
[000b9ac4]                           dc.b $00
[000b9ac5]                           dc.b $7f
[000b9ac6]                           dc.w $ff80
[000b9ac8]                           dc.b $00
[000b9ac9]                           dc.b $00
[000b9aca]                           dc.b $00
[000b9acb]                           dc.b $7f
[000b9acc]                           dc.w $ff80
[000b9ace]                           dc.b $00
[000b9acf]                           dc.b $00
[000b9ad0]                           dc.b $00
[000b9ad1]                           dc.b $7f
[000b9ad2]                           dc.w $ffff
[000b9ad4]                           dc.w $f000
[000b9ad6]                           dc.b $00
[000b9ad7]                           dc.b $7f
[000b9ad8]                           dc.w $ffff
[000b9ada]                           dc.w $f800
[000b9adc]                           dc.b $00
[000b9add]                           dc.b $7f
[000b9ade]                           dc.w $ffff
[000b9ae0]                           dc.w $f800
[000b9ae2]                           dc.b $00
[000b9ae3]                           dc.b $7f
[000b9ae4]                           dc.w $ffff
[000b9ae6]                           dc.w $f800
[000b9ae8]                           dc.b $00
[000b9ae9]                           dc.b $7f
[000b9aea]                           dc.w $ffff
[000b9aec]                           dc.w $f800
[000b9aee]                           dc.b $00
[000b9aef]                           dc.b $7f
[000b9af0]                           dc.w $ffff
[000b9af2]                           dc.w $f800
[000b9af4]                           dc.b $00
[000b9af5]                           dc.b $7f
[000b9af6]                           dc.w $ffff
[000b9af8]                           dc.w $f800
[000b9afa]                           dc.b $00
[000b9afb]                           dc.b $7f
[000b9afc]                           dc.w $ffff
[000b9afe]                           dc.w $f800
[000b9b00]                           dc.b $00
[000b9b01]                           dc.b $7f
[000b9b02]                           dc.w $ffff
[000b9b04]                           dc.w $f800
[000b9b06]                           dc.b $00
[000b9b07]                           dc.b $7f
[000b9b08]                           dc.w $ff80
[000b9b0a]                           dc.b $00
[000b9b0b]                           dc.b $00
[000b9b0c]                           dc.b $00
[000b9b0d]                           dc.b $3f
[000b9b0e]                           dc.w $ff80
[000b9b10]                           dc.b $00
[000b9b11]                           dc.b $00
[000b9b12]                           dc.b $00
[000b9b13]                           dc.b $00
[000b9b14]                           dc.b $00
[000b9b15]                           dc.b $00
[000b9b16]                           dc.b $00
[000b9b17]                           dc.b $00
[000b9b18]                           dc.b $00
[000b9b19]                           dc.b $00
[000b9b1a]                           dc.b $00
[000b9b1b]                           dc.b $00
[000b9b1c]                           dc.b $00
[000b9b1d]                           dc.b $00
[000b9b1e]                           dc.b $00
[000b9b1f]                           dc.b $00
[000b9b20]                           dc.b $00
[000b9b21]                           dc.b $00
[000b9b22]                           dc.b $00
[000b9b23]                           dc.b $00
[000b9b24]                           dc.b $00
[000b9b25]                           dc.b $00
[000b9b26]                           dc.b $00
[000b9b27]                           dc.b $00
[000b9b28]                           dc.b $00
[000b9b29]                           dc.b $00
[000b9b2a]                           dc.b $00
[000b9b2b]                           dc.b $00
[000b9b2c]                           dc.b $00
[000b9b2d]                           dc.b $00
[000b9b2e]                           dc.b $00
[000b9b2f]                           dc.b $00
DATAS_11:
[000b9b30]                           dc.b $00
[000b9b31]                           dc.b $00
[000b9b32]                           dc.b $00
[000b9b33]                           dc.b $00
[000b9b34]                           dc.w $02f0
[000b9b36]                           dc.b $00
[000b9b37]                           dc.b $00
[000b9b38]                           dc.b $00
[000b9b39]                           dc.b $00
[000b9b3a]                           dc.b $00
[000b9b3b]                           dc.b $00
[000b9b3c]                           dc.w $7fff
[000b9b3e]                           dc.w $ffff
[000b9b40]                           dc.w $fffe
[000b9b42]                           dc.w $4000
[000b9b44]                           dc.b $00
[000b9b45]                           dc.b $00
[000b9b46]                           dc.b $00
[000b9b47]                           dc.b $02
[000b9b48]                           dc.w $5fff
[000b9b4a]                           dc.w $ffff
[000b9b4c]                           dc.w $fffa
[000b9b4e]                           dc.w $5800
[000b9b50]                           dc.w $03ff
[000b9b52]                           dc.w $fffa
[000b9b54]                           dc.w $5800
[000b9b56]                           dc.w $038f
[000b9b58]                           dc.w $f81a
[000b9b5a]                           dc.w $58ef
[000b9b5c]                           dc.w $63bf
[000b9b5e]                           dc.w $ffda
[000b9b60]                           dc.w $5800
[000b9b62]                           dc.w $03bf
[000b9b64]                           dc.w $ffda
[000b9b66]                           dc.w $5800
[000b9b68]                           dc.w $03bf
[000b9b6a]                           dc.w $ffda
[000b9b6c]                           dc.w $5fff
[000b9b6e]                           dc.w $ffbf
[000b9b70]                           dc.w $ffda
[000b9b72]                           dc.w $5fff
[000b9b74]                           dc.w $ffbf
[000b9b76]                           dc.w $ffda
[000b9b78]                           dc.w $5800
[000b9b7a]                           dc.w $03bf
[000b9b7c]                           dc.w $ffda
[000b9b7e]                           dc.w $5800
[000b9b80]                           dc.w $03bf
[000b9b82]                           dc.w $ffda
[000b9b84]                           dc.w $58f6
[000b9b86]                           dc.w $e3bf
[000b9b88]                           dc.w $ffda
[000b9b8a]                           dc.w $5800
[000b9b8c]                           dc.w $03bf
[000b9b8e]                           dc.w $ffda
[000b9b90]                           dc.w $5800
[000b9b92]                           dc.w $0380
[000b9b94]                           dc.b $00
[000b9b95]                           dc.b $1a
[000b9b96]                           dc.w $5fff
[000b9b98]                           dc.w $ffff
[000b9b9a]                           dc.w $fffa
[000b9b9c]                           dc.w $5fff
[000b9b9e]                           dc.w $ffff
[000b9ba0]                           dc.w $fffa
[000b9ba2]                           dc.w $5fff
[000b9ba4]                           dc.w $ffff
[000b9ba6]                           dc.w $fffa
[000b9ba8]                           dc.w $5fff
[000b9baa]                           dc.w $ffff
[000b9bac]                           dc.w $fffa
[000b9bae]                           dc.w $5fff
[000b9bb0]                           dc.w $ffff
[000b9bb2]                           dc.w $fffa
[000b9bb4]                           dc.w $5fc0
[000b9bb6]                           dc.w $07c0
[000b9bb8]                           dc.w $01fa
[000b9bba]                           dc.w $5fdf
[000b9bbc]                           dc.w $f7df
[000b9bbe]                           dc.w $fdfa
[000b9bc0]                           dc.w $5fdf
[000b9bc2]                           dc.w $f7df
[000b9bc4]                           dc.w $fdfa
[000b9bc6]                           dc.w $5fdf
[000b9bc8]                           dc.w $f7df
[000b9bca]                           dc.w $fdfa
[000b9bcc]                           dc.w $5fc0
[000b9bce]                           dc.w $07c0
[000b9bd0]                           dc.w $01fa
[000b9bd2]                           dc.w $5fff
[000b9bd4]                           dc.w $ffff
[000b9bd6]                           dc.w $fffa
[000b9bd8]                           dc.w $5fff
[000b9bda]                           dc.w $ffff
[000b9bdc]                           dc.w $fffa
[000b9bde]                           dc.w $4000
[000b9be0]                           dc.b $00
[000b9be1]                           dc.b $00
[000b9be2]                           dc.b $00
[000b9be3]                           dc.b $02
[000b9be4]                           dc.w $7fff
[000b9be6]                           dc.w $ffff
[000b9be8]                           dc.w $fffe
[000b9bea]                           dc.b $00
[000b9beb]                           dc.b $00
[000b9bec]                           dc.b $00
[000b9bed]                           dc.b $00
[000b9bee]                           dc.b $00
[000b9bef]                           dc.b $00
[000b9bf0]                           dc.b $00
[000b9bf1]                           dc.b $00
[000b9bf2]                           dc.b $00
[000b9bf3]                           dc.b $00
[000b9bf4]                           dc.b $00
[000b9bf5]                           dc.b $00
[000b9bf6]                           dc.w $7fff
[000b9bf8]                           dc.w $ffff
[000b9bfa]                           dc.w $fffe
[000b9bfc]                           dc.w $4000
[000b9bfe]                           dc.b $00
[000b9bff]                           dc.b $00
[000b9c00]                           dc.b $00
[000b9c01]                           dc.b $02
[000b9c02]                           dc.w $5fff
[000b9c04]                           dc.w $ffff
[000b9c06]                           dc.w $fffa
[000b9c08]                           dc.w $5800
[000b9c0a]                           dc.w $03ff
[000b9c0c]                           dc.w $fffa
[000b9c0e]                           dc.w $5800
[000b9c10]                           dc.w $038f
[000b9c12]                           dc.w $f81a
[000b9c14]                           dc.w $58ef
[000b9c16]                           dc.w $63bf
[000b9c18]                           dc.w $ffda
[000b9c1a]                           dc.w $5800
[000b9c1c]                           dc.w $03bf
[000b9c1e]                           dc.w $ffda
[000b9c20]                           dc.w $5800
[000b9c22]                           dc.w $03bf
[000b9c24]                           dc.w $ffda
[000b9c26]                           dc.w $5fff
[000b9c28]                           dc.w $ffbf
[000b9c2a]                           dc.w $ffda
[000b9c2c]                           dc.w $5fff
[000b9c2e]                           dc.w $ffbf
[000b9c30]                           dc.w $ffda
[000b9c32]                           dc.w $5800
[000b9c34]                           dc.w $03bf
[000b9c36]                           dc.w $ffda
[000b9c38]                           dc.w $5800
[000b9c3a]                           dc.w $03bf
[000b9c3c]                           dc.w $ffda
[000b9c3e]                           dc.w $58f6
[000b9c40]                           dc.w $e3bf
[000b9c42]                           dc.w $ffda
[000b9c44]                           dc.w $5800
[000b9c46]                           dc.w $03bf
[000b9c48]                           dc.w $ffda
[000b9c4a]                           dc.w $5800
[000b9c4c]                           dc.w $0380
[000b9c4e]                           dc.b $00
[000b9c4f]                           dc.b $1a
[000b9c50]                           dc.w $5fff
[000b9c52]                           dc.w $ffff
[000b9c54]                           dc.w $fffa
[000b9c56]                           dc.w $5fff
[000b9c58]                           dc.w $ffff
[000b9c5a]                           dc.w $fffa
[000b9c5c]                           dc.w $5fff
[000b9c5e]                           dc.w $ffff
[000b9c60]                           dc.w $fffa
[000b9c62]                           dc.w $5fff
[000b9c64]                           dc.w $ffff
[000b9c66]                           dc.w $fffa
[000b9c68]                           dc.w $5fff
[000b9c6a]                           dc.w $ffff
[000b9c6c]                           dc.w $fffa
[000b9c6e]                           dc.w $5fc0
[000b9c70]                           dc.w $07c0
[000b9c72]                           dc.w $01fa
[000b9c74]                           dc.w $5fdf
[000b9c76]                           dc.w $f7df
[000b9c78]                           dc.w $fdfa
[000b9c7a]                           dc.w $5fdf
[000b9c7c]                           dc.w $f7df
[000b9c7e]                           dc.w $fdfa
[000b9c80]                           dc.w $5fdf
[000b9c82]                           dc.w $f7df
[000b9c84]                           dc.w $fdfa
[000b9c86]                           dc.w $5fc0
[000b9c88]                           dc.w $07c0
[000b9c8a]                           dc.w $01fa
[000b9c8c]                           dc.w $5fff
[000b9c8e]                           dc.w $ffff
[000b9c90]                           dc.w $fffa
[000b9c92]                           dc.w $5fff
[000b9c94]                           dc.w $ffff
[000b9c96]                           dc.w $fffa
[000b9c98]                           dc.w $4000
[000b9c9a]                           dc.b $00
[000b9c9b]                           dc.b $00
[000b9c9c]                           dc.b $00
[000b9c9d]                           dc.b $02
[000b9c9e]                           dc.w $7fff
[000b9ca0]                           dc.w $ffff
[000b9ca2]                           dc.w $fffe
[000b9ca4]                           dc.b $00
[000b9ca5]                           dc.b $00
[000b9ca6]                           dc.b $00
[000b9ca7]                           dc.b $00
[000b9ca8]                           dc.b $00
[000b9ca9]                           dc.b $00
[000b9caa]                           dc.b $00
[000b9cab]                           dc.b $00
[000b9cac]                           dc.b $00
[000b9cad]                           dc.b $00
[000b9cae]                           dc.b $00
[000b9caf]                           dc.b $00
[000b9cb0]                           dc.w $7fff
[000b9cb2]                           dc.w $ffff
[000b9cb4]                           dc.w $fffe
[000b9cb6]                           dc.w $4000
[000b9cb8]                           dc.b $00
[000b9cb9]                           dc.b $00
[000b9cba]                           dc.b $00
[000b9cbb]                           dc.b $02
[000b9cbc]                           dc.w $5fff
[000b9cbe]                           dc.w $ffff
[000b9cc0]                           dc.w $fffa
[000b9cc2]                           dc.w $5800
[000b9cc4]                           dc.w $03ff
[000b9cc6]                           dc.w $fffa
[000b9cc8]                           dc.w $5800
[000b9cca]                           dc.w $038f
[000b9ccc]                           dc.w $f81a
[000b9cce]                           dc.w $58ef
[000b9cd0]                           dc.w $63bf
[000b9cd2]                           dc.w $ffda
[000b9cd4]                           dc.w $5800
[000b9cd6]                           dc.w $03bf
[000b9cd8]                           dc.w $ffda
[000b9cda]                           dc.w $5800
[000b9cdc]                           dc.w $03bf
[000b9cde]                           dc.w $ffda
[000b9ce0]                           dc.w $5fff
[000b9ce2]                           dc.w $ffbf
[000b9ce4]                           dc.w $ffda
[000b9ce6]                           dc.w $5fff
[000b9ce8]                           dc.w $ffbf
[000b9cea]                           dc.w $ffda
[000b9cec]                           dc.w $5800
[000b9cee]                           dc.w $03bf
[000b9cf0]                           dc.w $ffda
[000b9cf2]                           dc.w $5800
[000b9cf4]                           dc.w $03bf
[000b9cf6]                           dc.w $ffda
[000b9cf8]                           dc.w $58f6
[000b9cfa]                           dc.w $e3bf
[000b9cfc]                           dc.w $ffda
[000b9cfe]                           dc.w $5800
[000b9d00]                           dc.w $03bf
[000b9d02]                           dc.w $ffda
[000b9d04]                           dc.w $5800
[000b9d06]                           dc.w $0380
[000b9d08]                           dc.b $00
[000b9d09]                           dc.b $1a
[000b9d0a]                           dc.w $5fff
[000b9d0c]                           dc.w $ffff
[000b9d0e]                           dc.w $fffa
[000b9d10]                           dc.w $5fff
[000b9d12]                           dc.w $ffff
[000b9d14]                           dc.w $fffa
[000b9d16]                           dc.w $5fff
[000b9d18]                           dc.w $ffff
[000b9d1a]                           dc.w $fffa
[000b9d1c]                           dc.w $5fff
[000b9d1e]                           dc.w $ffff
[000b9d20]                           dc.w $fffa
[000b9d22]                           dc.w $5fff
[000b9d24]                           dc.w $ffff
[000b9d26]                           dc.w $fffa
[000b9d28]                           dc.w $5fc0
[000b9d2a]                           dc.w $07c0
[000b9d2c]                           dc.w $01fa
[000b9d2e]                           dc.w $5fdf
[000b9d30]                           dc.w $f7df
[000b9d32]                           dc.w $fdfa
[000b9d34]                           dc.w $5fdf
[000b9d36]                           dc.w $f7df
[000b9d38]                           dc.w $fdfa
[000b9d3a]                           dc.w $5fdf
[000b9d3c]                           dc.w $f7df
[000b9d3e]                           dc.w $fdfa
[000b9d40]                           dc.w $5fc0
[000b9d42]                           dc.w $07c0
[000b9d44]                           dc.w $01fa
[000b9d46]                           dc.w $5fff
[000b9d48]                           dc.w $ffff
[000b9d4a]                           dc.w $fffa
[000b9d4c]                           dc.w $5fff
[000b9d4e]                           dc.w $ffff
[000b9d50]                           dc.w $fffa
[000b9d52]                           dc.w $4000
[000b9d54]                           dc.b $00
[000b9d55]                           dc.b $00
[000b9d56]                           dc.b $00
[000b9d57]                           dc.b $02
[000b9d58]                           dc.w $7fff
[000b9d5a]                           dc.w $ffff
[000b9d5c]                           dc.w $fffe
[000b9d5e]                           dc.b $00
[000b9d5f]                           dc.b $00
[000b9d60]                           dc.b $00
[000b9d61]                           dc.b $00
[000b9d62]                           dc.b $00
[000b9d63]                           dc.b $00
[000b9d64]                           dc.b $00
[000b9d65]                           dc.b $00
[000b9d66]                           dc.b $00
[000b9d67]                           dc.b $00
[000b9d68]                           dc.b $00
[000b9d69]                           dc.b $00
[000b9d6a]                           dc.w $7fff
[000b9d6c]                           dc.w $ffff
[000b9d6e]                           dc.w $fffe
[000b9d70]                           dc.w $4000
[000b9d72]                           dc.b $00
[000b9d73]                           dc.b $00
[000b9d74]                           dc.b $00
[000b9d75]                           dc.b $06
[000b9d76]                           dc.w $4000
[000b9d78]                           dc.b $00
[000b9d79]                           dc.b $00
[000b9d7a]                           dc.b $00
[000b9d7b]                           dc.b $06
[000b9d7c]                           dc.w $47ff
[000b9d7e]                           dc.w $fc07
[000b9d80]                           dc.w $f006
[000b9d82]                           dc.w $4400
[000b9d84]                           dc.w $0470
[000b9d86]                           dc.w $07e6
[000b9d88]                           dc.w $44ef
[000b9d8a]                           dc.w $6440
[000b9d8c]                           dc.b $00
[000b9d8d]                           dc.b $26
[000b9d8e]                           dc.w $4400
[000b9d90]                           dc.w $0453
[000b9d92]                           dc.w $dfa6
[000b9d94]                           dc.w $47ff
[000b9d96]                           dc.w $fc40
[000b9d98]                           dc.b $00
[000b9d99]                           dc.b $26
[000b9d9a]                           dc.w $4000
[000b9d9c]                           dc.b $00
[000b9d9d]                           dc.b $40
[000b9d9e]                           dc.b $00
[000b9d9f]                           dc.b $26
[000b9da0]                           dc.w $4000
[000b9da2]                           dc.b $00
[000b9da3]                           dc.b $53
[000b9da4]                           dc.w $f7a6
[000b9da6]                           dc.w $47ff
[000b9da8]                           dc.w $fc40
[000b9daa]                           dc.b $00
[000b9dab]                           dc.b $26
[000b9dac]                           dc.w $4400
[000b9dae]                           dc.w $0440
[000b9db0]                           dc.b $00
[000b9db1]                           dc.b $26
[000b9db2]                           dc.w $44f6
[000b9db4]                           dc.w $e453
[000b9db6]                           dc.w $bfa6
[000b9db8]                           dc.w $4400
[000b9dba]                           dc.w $0440
[000b9dbc]                           dc.b $00
[000b9dbd]                           dc.b $26
[000b9dbe]                           dc.w $47ff
[000b9dc0]                           dc.w $fc7f
[000b9dc2]                           dc.w $ffe6
[000b9dc4]                           dc.w $4000
[000b9dc6]                           dc.b $00
[000b9dc7]                           dc.b $00
[000b9dc8]                           dc.b $00
[000b9dc9]                           dc.b $06
[000b9dca]                           dc.w $4000
[000b9dcc]                           dc.b $00
[000b9dcd]                           dc.b $00
[000b9dce]                           dc.b $00
[000b9dcf]                           dc.b $06
[000b9dd0]                           dc.w $4000
[000b9dd2]                           dc.b $00
[000b9dd3]                           dc.b $00
[000b9dd4]                           dc.b $00
[000b9dd5]                           dc.b $06
[000b9dd6]                           dc.w $4000
[000b9dd8]                           dc.b $00
[000b9dd9]                           dc.b $00
[000b9dda]                           dc.b $00
[000b9ddb]                           dc.b $06
[000b9ddc]                           dc.w $407f
[000b9dde]                           dc.w $fc7f
[000b9de0]                           dc.w $ff06
[000b9de2]                           dc.w $4040
[000b9de4]                           dc.w $0c40
[000b9de6]                           dc.w $0306
[000b9de8]                           dc.w $4040
[000b9dea]                           dc.w $0c40
[000b9dec]                           dc.w $0306
[000b9dee]                           dc.w $4047
[000b9df0]                           dc.w $cc47
[000b9df2]                           dc.w $f306
[000b9df4]                           dc.w $4040
[000b9df6]                           dc.w $0c40
[000b9df8]                           dc.w $0306
[000b9dfa]                           dc.w $407f
[000b9dfc]                           dc.w $fc7f
[000b9dfe]                           dc.w $ff06
[000b9e00]                           dc.w $407f
[000b9e02]                           dc.w $fc7f
[000b9e04]                           dc.w $ff06
[000b9e06]                           dc.w $4000
[000b9e08]                           dc.b $00
[000b9e09]                           dc.b $00
[000b9e0a]                           dc.b $00
[000b9e0b]                           dc.b $06
[000b9e0c]                           dc.w $7fff
[000b9e0e]                           dc.w $ffff
[000b9e10]                           dc.w $fffe
[000b9e12]                           dc.w $7fff
[000b9e14]                           dc.w $ffff
[000b9e16]                           dc.w $fffe
[000b9e18]                           dc.b $00
[000b9e19]                           dc.b $00
[000b9e1a]                           dc.b $00
[000b9e1b]                           dc.b $00
[000b9e1c]                           dc.b $00
[000b9e1d]                           dc.b $00
DATAS_12:
[000b9e1e]                           dc.b $00
[000b9e1f]                           dc.b $00
[000b9e20]                           dc.b $00
[000b9e21]                           dc.b $00
[000b9e22]                           dc.b $00
[000b9e23]                           dc.b $00
[000b9e24]                           dc.w $7fff
[000b9e26]                           dc.w $ffff
[000b9e28]                           dc.w $fffe
[000b9e2a]                           dc.w $7fff
[000b9e2c]                           dc.w $ffff
[000b9e2e]                           dc.w $fffe
[000b9e30]                           dc.w $7fff
[000b9e32]                           dc.w $ffff
[000b9e34]                           dc.w $fffe
[000b9e36]                           dc.w $7fff
[000b9e38]                           dc.w $ffff
[000b9e3a]                           dc.w $fffe
[000b9e3c]                           dc.w $7fff
[000b9e3e]                           dc.w $ffff
[000b9e40]                           dc.w $fffe
[000b9e42]                           dc.w $7fff
[000b9e44]                           dc.w $ffff
[000b9e46]                           dc.w $fffe
[000b9e48]                           dc.w $7fff
[000b9e4a]                           dc.w $ffff
[000b9e4c]                           dc.w $fffe
[000b9e4e]                           dc.w $7fff
[000b9e50]                           dc.w $ffff
[000b9e52]                           dc.w $fffe
[000b9e54]                           dc.w $7fff
[000b9e56]                           dc.w $ffff
[000b9e58]                           dc.w $fffe
[000b9e5a]                           dc.w $7fff
[000b9e5c]                           dc.w $ffff
[000b9e5e]                           dc.w $fffe
[000b9e60]                           dc.w $7fff
[000b9e62]                           dc.w $ffff
[000b9e64]                           dc.w $fffe
[000b9e66]                           dc.w $7fff
[000b9e68]                           dc.w $ffff
[000b9e6a]                           dc.w $fffe
[000b9e6c]                           dc.w $7fff
[000b9e6e]                           dc.w $ffff
[000b9e70]                           dc.w $fffe
[000b9e72]                           dc.w $7fff
[000b9e74]                           dc.w $ffff
[000b9e76]                           dc.w $fffe
[000b9e78]                           dc.w $7fff
[000b9e7a]                           dc.w $ffff
[000b9e7c]                           dc.w $fffe
[000b9e7e]                           dc.w $7fff
[000b9e80]                           dc.w $ffff
[000b9e82]                           dc.w $fffe
[000b9e84]                           dc.w $7fff
[000b9e86]                           dc.w $ffff
[000b9e88]                           dc.w $fffe
[000b9e8a]                           dc.w $7fff
[000b9e8c]                           dc.w $ffff
[000b9e8e]                           dc.w $fffe
[000b9e90]                           dc.w $7fff
[000b9e92]                           dc.w $ffff
[000b9e94]                           dc.w $fffe
[000b9e96]                           dc.w $7fff
[000b9e98]                           dc.w $ffff
[000b9e9a]                           dc.w $fffe
[000b9e9c]                           dc.w $7fff
[000b9e9e]                           dc.w $ffff
[000b9ea0]                           dc.w $fffe
[000b9ea2]                           dc.w $7fff
[000b9ea4]                           dc.w $ffff
[000b9ea6]                           dc.w $fffe
[000b9ea8]                           dc.w $7fff
[000b9eaa]                           dc.w $ffff
[000b9eac]                           dc.w $fffe
[000b9eae]                           dc.w $7fff
[000b9eb0]                           dc.w $ffff
[000b9eb2]                           dc.w $fffe
[000b9eb4]                           dc.w $7fff
[000b9eb6]                           dc.w $ffff
[000b9eb8]                           dc.w $fffe
[000b9eba]                           dc.w $7fff
[000b9ebc]                           dc.w $ffff
[000b9ebe]                           dc.w $fffe
[000b9ec0]                           dc.w $7fff
[000b9ec2]                           dc.w $ffff
[000b9ec4]                           dc.w $fffe
[000b9ec6]                           dc.w $7fff
[000b9ec8]                           dc.w $ffff
[000b9eca]                           dc.w $fffe
[000b9ecc]                           dc.w $7fff
[000b9ece]                           dc.w $ffff
[000b9ed0]                           dc.w $fffe
[000b9ed2]                           dc.b $00
[000b9ed3]                           dc.b $00
[000b9ed4]                           dc.b $00
[000b9ed5]                           dc.b $00
[000b9ed6]                           dc.b $00
[000b9ed7]                           dc.b $00
DATAS_13:
[000b9ed8]                           dc.b $00
[000b9ed9]                           dc.b $00
[000b9eda]                           dc.b $00
[000b9edb]                           dc.b $00
[000b9edc]                           dc.w $02f0
[000b9ede]                           dc.b $00
[000b9edf]                           dc.b $00
[000b9ee0]                           dc.b $00
[000b9ee1]                           dc.b $00
[000b9ee2]                           dc.b $00
[000b9ee3]                           dc.b $00
[000b9ee4]                           dc.w $7fff
[000b9ee6]                           dc.w $ffff
[000b9ee8]                           dc.w $fffe
[000b9eea]                           dc.w $4000
[000b9eec]                           dc.b $00
[000b9eed]                           dc.b $00
[000b9eee]                           dc.b $00
[000b9eef]                           dc.b $02
[000b9ef0]                           dc.w $5fff
[000b9ef2]                           dc.w $ffff
[000b9ef4]                           dc.w $fffa
[000b9ef6]                           dc.w $5800
[000b9ef8]                           dc.w $03ff
[000b9efa]                           dc.w $fffa
[000b9efc]                           dc.w $5800
[000b9efe]                           dc.w $038f
[000b9f00]                           dc.w $f81a
[000b9f02]                           dc.w $58ef
[000b9f04]                           dc.w $63bf
[000b9f06]                           dc.w $ffda
[000b9f08]                           dc.w $5800
[000b9f0a]                           dc.w $03bf
[000b9f0c]                           dc.w $ffda
[000b9f0e]                           dc.w $5800
[000b9f10]                           dc.w $03bf
[000b9f12]                           dc.w $ffda
[000b9f14]                           dc.w $5fff
[000b9f16]                           dc.w $ffbf
[000b9f18]                           dc.w $ffda
[000b9f1a]                           dc.w $5fff
[000b9f1c]                           dc.w $ffbf
[000b9f1e]                           dc.w $ffda
[000b9f20]                           dc.w $5800
[000b9f22]                           dc.w $03bf
[000b9f24]                           dc.w $ffda
[000b9f26]                           dc.w $5800
[000b9f28]                           dc.w $03bf
[000b9f2a]                           dc.w $ffda
[000b9f2c]                           dc.w $58f6
[000b9f2e]                           dc.w $e3bf
[000b9f30]                           dc.w $ffda
[000b9f32]                           dc.w $5800
[000b9f34]                           dc.w $03bf
[000b9f36]                           dc.w $ffda
[000b9f38]                           dc.w $5800
[000b9f3a]                           dc.w $0380
[000b9f3c]                           dc.b $00
[000b9f3d]                           dc.b $1a
[000b9f3e]                           dc.w $5fff
[000b9f40]                           dc.w $ffff
[000b9f42]                           dc.w $fffa
[000b9f44]                           dc.w $5fff
[000b9f46]                           dc.w $ffff
[000b9f48]                           dc.w $fffa
[000b9f4a]                           dc.w $5fff
[000b9f4c]                           dc.w $ffff
[000b9f4e]                           dc.w $fffa
[000b9f50]                           dc.w $5fff
[000b9f52]                           dc.w $ffff
[000b9f54]                           dc.w $fffa
[000b9f56]                           dc.w $5fff
[000b9f58]                           dc.w $ffff
[000b9f5a]                           dc.w $fffa
[000b9f5c]                           dc.w $5fc0
[000b9f5e]                           dc.w $07c0
[000b9f60]                           dc.w $01fa
[000b9f62]                           dc.w $5fdf
[000b9f64]                           dc.w $f7df
[000b9f66]                           dc.w $fdfa
[000b9f68]                           dc.w $5fdf
[000b9f6a]                           dc.w $f7df
[000b9f6c]                           dc.w $fdfa
[000b9f6e]                           dc.w $5fdf
[000b9f70]                           dc.w $f7df
[000b9f72]                           dc.w $fdfa
[000b9f74]                           dc.w $5fc0
[000b9f76]                           dc.w $07c0
[000b9f78]                           dc.w $01fa
[000b9f7a]                           dc.w $5fff
[000b9f7c]                           dc.w $ffff
[000b9f7e]                           dc.w $fffa
[000b9f80]                           dc.w $5fff
[000b9f82]                           dc.w $ffff
[000b9f84]                           dc.w $fffa
[000b9f86]                           dc.w $4000
[000b9f88]                           dc.b $00
[000b9f89]                           dc.b $00
[000b9f8a]                           dc.b $00
[000b9f8b]                           dc.b $02
[000b9f8c]                           dc.w $7fff
[000b9f8e]                           dc.w $ffff
[000b9f90]                           dc.w $fffe
[000b9f92]                           dc.b $00
[000b9f93]                           dc.b $00
[000b9f94]                           dc.b $00
[000b9f95]                           dc.b $00
[000b9f96]                           dc.b $00
[000b9f97]                           dc.b $00
[000b9f98]                           dc.b $00
[000b9f99]                           dc.b $00
[000b9f9a]                           dc.b $00
[000b9f9b]                           dc.b $00
[000b9f9c]                           dc.b $00
[000b9f9d]                           dc.b $00
[000b9f9e]                           dc.w $7fff
[000b9fa0]                           dc.w $ffff
[000b9fa2]                           dc.w $fffe
[000b9fa4]                           dc.w $4000
[000b9fa6]                           dc.b $00
[000b9fa7]                           dc.b $00
[000b9fa8]                           dc.b $00
[000b9fa9]                           dc.b $02
[000b9faa]                           dc.w $5fff
[000b9fac]                           dc.w $ffff
[000b9fae]                           dc.w $fffa
[000b9fb0]                           dc.w $5800
[000b9fb2]                           dc.w $03ff
[000b9fb4]                           dc.w $fffa
[000b9fb6]                           dc.w $5800
[000b9fb8]                           dc.w $038f
[000b9fba]                           dc.w $f81a
[000b9fbc]                           dc.w $58ef
[000b9fbe]                           dc.w $63bf
[000b9fc0]                           dc.w $ffda
[000b9fc2]                           dc.w $5800
[000b9fc4]                           dc.w $03bf
[000b9fc6]                           dc.w $ffda
[000b9fc8]                           dc.w $5800
[000b9fca]                           dc.w $03bf
[000b9fcc]                           dc.w $ffda
[000b9fce]                           dc.w $5fff
[000b9fd0]                           dc.w $ffbf
[000b9fd2]                           dc.w $ffda
[000b9fd4]                           dc.w $5fff
[000b9fd6]                           dc.w $ffbf
[000b9fd8]                           dc.w $ffda
[000b9fda]                           dc.w $5800
[000b9fdc]                           dc.w $03bf
[000b9fde]                           dc.w $ffda
[000b9fe0]                           dc.w $5800
[000b9fe2]                           dc.w $03bf
[000b9fe4]                           dc.w $ffda
[000b9fe6]                           dc.w $58f6
[000b9fe8]                           dc.w $e3bf
[000b9fea]                           dc.w $ffda
[000b9fec]                           dc.w $5800
[000b9fee]                           dc.w $03bf
[000b9ff0]                           dc.w $ffda
[000b9ff2]                           dc.w $5800
[000b9ff4]                           dc.w $0380
[000b9ff6]                           dc.b $00
[000b9ff7]                           dc.b $1a
[000b9ff8]                           dc.w $5fff
[000b9ffa]                           dc.w $ffff
[000b9ffc]                           dc.w $fffa
[000b9ffe]                           dc.w $5fff
[000ba000]                           dc.w $ffff
[000ba002]                           dc.w $fffa
[000ba004]                           dc.w $5fff
[000ba006]                           dc.w $ffff
[000ba008]                           dc.w $fffa
[000ba00a]                           dc.w $5fff
[000ba00c]                           dc.w $ffff
[000ba00e]                           dc.w $fffa
[000ba010]                           dc.w $5fff
[000ba012]                           dc.w $ffff
[000ba014]                           dc.w $fffa
[000ba016]                           dc.w $5fc0
[000ba018]                           dc.w $07c0
[000ba01a]                           dc.w $01fa
[000ba01c]                           dc.w $5fdf
[000ba01e]                           dc.w $f7df
[000ba020]                           dc.w $fdfa
[000ba022]                           dc.w $5fdf
[000ba024]                           dc.w $f7df
[000ba026]                           dc.w $fdfa
[000ba028]                           dc.w $5fdf
[000ba02a]                           dc.w $f7df
[000ba02c]                           dc.w $fdfa
[000ba02e]                           dc.w $5fc0
[000ba030]                           dc.w $07c0
[000ba032]                           dc.w $01fa
[000ba034]                           dc.w $5fff
[000ba036]                           dc.w $ffff
[000ba038]                           dc.w $fffa
[000ba03a]                           dc.w $5fff
[000ba03c]                           dc.w $ffff
[000ba03e]                           dc.w $fffa
[000ba040]                           dc.w $4000
[000ba042]                           dc.b $00
[000ba043]                           dc.b $00
[000ba044]                           dc.b $00
[000ba045]                           dc.b $02
[000ba046]                           dc.w $7fff
[000ba048]                           dc.w $ffff
[000ba04a]                           dc.w $fffe
[000ba04c]                           dc.b $00
[000ba04d]                           dc.b $00
[000ba04e]                           dc.b $00
[000ba04f]                           dc.b $00
[000ba050]                           dc.b $00
[000ba051]                           dc.b $00
[000ba052]                           dc.b $00
[000ba053]                           dc.b $00
[000ba054]                           dc.b $00
[000ba055]                           dc.b $00
[000ba056]                           dc.b $00
[000ba057]                           dc.b $00
[000ba058]                           dc.w $7fff
[000ba05a]                           dc.w $ffff
[000ba05c]                           dc.w $fffe
[000ba05e]                           dc.w $4000
[000ba060]                           dc.b $00
[000ba061]                           dc.b $00
[000ba062]                           dc.b $00
[000ba063]                           dc.b $02
[000ba064]                           dc.w $5fff
[000ba066]                           dc.w $ffff
[000ba068]                           dc.w $fffa
[000ba06a]                           dc.w $5800
[000ba06c]                           dc.w $03ff
[000ba06e]                           dc.w $fffa
[000ba070]                           dc.w $5800
[000ba072]                           dc.w $038f
[000ba074]                           dc.w $f81a
[000ba076]                           dc.w $58ef
[000ba078]                           dc.w $63bf
[000ba07a]                           dc.w $ffda
[000ba07c]                           dc.w $5800
[000ba07e]                           dc.w $03bf
[000ba080]                           dc.w $ffda
[000ba082]                           dc.w $5800
[000ba084]                           dc.w $03bf
[000ba086]                           dc.w $ffda
[000ba088]                           dc.w $5fff
[000ba08a]                           dc.w $ffbf
[000ba08c]                           dc.w $ffda
[000ba08e]                           dc.w $5fff
[000ba090]                           dc.w $ffbf
[000ba092]                           dc.w $ffda
[000ba094]                           dc.w $5800
[000ba096]                           dc.w $03bf
[000ba098]                           dc.w $ffda
[000ba09a]                           dc.w $5800
[000ba09c]                           dc.w $03bf
[000ba09e]                           dc.w $ffda
[000ba0a0]                           dc.w $58f6
[000ba0a2]                           dc.w $e3bf
[000ba0a4]                           dc.w $ffda
[000ba0a6]                           dc.w $5800
[000ba0a8]                           dc.w $03bf
[000ba0aa]                           dc.w $ffda
[000ba0ac]                           dc.w $5800
[000ba0ae]                           dc.w $0380
[000ba0b0]                           dc.b $00
[000ba0b1]                           dc.b $1a
[000ba0b2]                           dc.w $5fff
[000ba0b4]                           dc.w $ffff
[000ba0b6]                           dc.w $fffa
[000ba0b8]                           dc.w $5fff
[000ba0ba]                           dc.w $ffff
[000ba0bc]                           dc.w $fffa
[000ba0be]                           dc.w $5fff
[000ba0c0]                           dc.w $ffff
[000ba0c2]                           dc.w $fffa
[000ba0c4]                           dc.w $5fff
[000ba0c6]                           dc.w $ffff
[000ba0c8]                           dc.w $fffa
[000ba0ca]                           dc.w $5fff
[000ba0cc]                           dc.w $ffff
[000ba0ce]                           dc.w $fffa
[000ba0d0]                           dc.w $5fc0
[000ba0d2]                           dc.w $07c0
[000ba0d4]                           dc.w $01fa
[000ba0d6]                           dc.w $5fdf
[000ba0d8]                           dc.w $f7df
[000ba0da]                           dc.w $fdfa
[000ba0dc]                           dc.w $5fdf
[000ba0de]                           dc.w $f7df
[000ba0e0]                           dc.w $fdfa
[000ba0e2]                           dc.w $5fdf
[000ba0e4]                           dc.w $f7df
[000ba0e6]                           dc.w $fdfa
[000ba0e8]                           dc.w $5fc0
[000ba0ea]                           dc.w $07c0
[000ba0ec]                           dc.w $01fa
[000ba0ee]                           dc.w $5fff
[000ba0f0]                           dc.w $ffff
[000ba0f2]                           dc.w $fffa
[000ba0f4]                           dc.w $5fff
[000ba0f6]                           dc.w $ffff
[000ba0f8]                           dc.w $fffa
[000ba0fa]                           dc.w $4000
[000ba0fc]                           dc.b $00
[000ba0fd]                           dc.b $00
[000ba0fe]                           dc.b $00
[000ba0ff]                           dc.b $02
[000ba100]                           dc.w $7fff
[000ba102]                           dc.w $ffff
[000ba104]                           dc.w $fffe
[000ba106]                           dc.b $00
[000ba107]                           dc.b $00
[000ba108]                           dc.b $00
[000ba109]                           dc.b $00
[000ba10a]                           dc.b $00
[000ba10b]                           dc.b $00
[000ba10c]                           dc.b $00
[000ba10d]                           dc.b $00
[000ba10e]                           dc.b $00
[000ba10f]                           dc.b $00
[000ba110]                           dc.b $00
[000ba111]                           dc.b $00
[000ba112]                           dc.w $7fff
[000ba114]                           dc.w $ffff
[000ba116]                           dc.w $fffe
[000ba118]                           dc.w $4000
[000ba11a]                           dc.b $00
[000ba11b]                           dc.b $00
[000ba11c]                           dc.b $00
[000ba11d]                           dc.b $06
[000ba11e]                           dc.w $4000
[000ba120]                           dc.b $00
[000ba121]                           dc.b $00
[000ba122]                           dc.b $00
[000ba123]                           dc.b $06
[000ba124]                           dc.w $47ff
[000ba126]                           dc.w $fc07
[000ba128]                           dc.w $f006
[000ba12a]                           dc.w $4400
[000ba12c]                           dc.w $0470
[000ba12e]                           dc.w $07e6
[000ba130]                           dc.w $44ef
[000ba132]                           dc.w $6440
[000ba134]                           dc.b $00
[000ba135]                           dc.b $26
[000ba136]                           dc.w $4400
[000ba138]                           dc.w $0453
[000ba13a]                           dc.w $dfa6
[000ba13c]                           dc.w $47ff
[000ba13e]                           dc.w $fc40
[000ba140]                           dc.b $00
[000ba141]                           dc.b $26
[000ba142]                           dc.w $4000
[000ba144]                           dc.b $00
[000ba145]                           dc.b $40
[000ba146]                           dc.b $00
[000ba147]                           dc.b $26
[000ba148]                           dc.w $4000
[000ba14a]                           dc.b $00
[000ba14b]                           dc.b $53
[000ba14c]                           dc.w $f7a6
[000ba14e]                           dc.w $47ff
[000ba150]                           dc.w $fc40
[000ba152]                           dc.b $00
[000ba153]                           dc.b $26
[000ba154]                           dc.w $4400
[000ba156]                           dc.w $0440
[000ba158]                           dc.b $00
[000ba159]                           dc.b $26
[000ba15a]                           dc.w $44f6
[000ba15c]                           dc.w $e453
[000ba15e]                           dc.w $bfa6
[000ba160]                           dc.w $4400
[000ba162]                           dc.w $0440
[000ba164]                           dc.b $00
[000ba165]                           dc.b $26
[000ba166]                           dc.w $47ff
[000ba168]                           dc.w $fc7f
[000ba16a]                           dc.w $ffe6
[000ba16c]                           dc.w $4000
[000ba16e]                           dc.b $00
[000ba16f]                           dc.b $00
[000ba170]                           dc.b $00
[000ba171]                           dc.b $06
[000ba172]                           dc.w $4000
[000ba174]                           dc.b $00
[000ba175]                           dc.b $00
[000ba176]                           dc.b $00
[000ba177]                           dc.b $06
[000ba178]                           dc.w $4000
[000ba17a]                           dc.b $00
[000ba17b]                           dc.b $00
[000ba17c]                           dc.b $00
[000ba17d]                           dc.b $06
[000ba17e]                           dc.w $4000
[000ba180]                           dc.b $00
[000ba181]                           dc.b $00
[000ba182]                           dc.b $00
[000ba183]                           dc.b $06
[000ba184]                           dc.w $407f
[000ba186]                           dc.w $fc7f
[000ba188]                           dc.w $ff06
[000ba18a]                           dc.w $4040
[000ba18c]                           dc.w $0c40
[000ba18e]                           dc.w $0306
[000ba190]                           dc.w $4040
[000ba192]                           dc.w $0c40
[000ba194]                           dc.w $0306
[000ba196]                           dc.w $4047
[000ba198]                           dc.w $cc47
[000ba19a]                           dc.w $f306
[000ba19c]                           dc.w $4040
[000ba19e]                           dc.w $0c40
[000ba1a0]                           dc.w $0306
[000ba1a2]                           dc.w $407f
[000ba1a4]                           dc.w $fc7f
[000ba1a6]                           dc.w $ff06
[000ba1a8]                           dc.w $407f
[000ba1aa]                           dc.w $fc7f
[000ba1ac]                           dc.w $ff06
[000ba1ae]                           dc.w $4000
[000ba1b0]                           dc.b $00
[000ba1b1]                           dc.b $00
[000ba1b2]                           dc.b $00
[000ba1b3]                           dc.b $06
[000ba1b4]                           dc.w $7fff
[000ba1b6]                           dc.w $ffff
[000ba1b8]                           dc.w $fffe
[000ba1ba]                           dc.w $7fff
[000ba1bc]                           dc.w $ffff
[000ba1be]                           dc.w $fffe
[000ba1c0]                           dc.b $00
[000ba1c1]                           dc.b $00
[000ba1c2]                           dc.b $00
[000ba1c3]                           dc.b $00
[000ba1c4]                           dc.b $00
[000ba1c5]                           dc.b $00
DATAS_14:
[000ba1c6]                           dc.b $00
[000ba1c7]                           dc.b $00
[000ba1c8]                           dc.b $00
[000ba1c9]                           dc.b $00
[000ba1ca]                           dc.b $00
[000ba1cb]                           dc.b $00
[000ba1cc]                           dc.w $7fff
[000ba1ce]                           dc.w $ffff
[000ba1d0]                           dc.w $fffe
[000ba1d2]                           dc.w $7fff
[000ba1d4]                           dc.w $ffff
[000ba1d6]                           dc.w $fffe
[000ba1d8]                           dc.w $7fff
[000ba1da]                           dc.w $ffff
[000ba1dc]                           dc.w $fffe
[000ba1de]                           dc.w $7fff
[000ba1e0]                           dc.w $ffff
[000ba1e2]                           dc.w $fffe
[000ba1e4]                           dc.w $7fff
[000ba1e6]                           dc.w $ffff
[000ba1e8]                           dc.w $fffe
[000ba1ea]                           dc.w $7fff
[000ba1ec]                           dc.w $ffff
[000ba1ee]                           dc.w $fffe
[000ba1f0]                           dc.w $7fff
[000ba1f2]                           dc.w $ffff
[000ba1f4]                           dc.w $fffe
[000ba1f6]                           dc.w $7fff
[000ba1f8]                           dc.w $ffff
[000ba1fa]                           dc.w $fffe
[000ba1fc]                           dc.w $7fff
[000ba1fe]                           dc.w $ffff
[000ba200]                           dc.w $fffe
[000ba202]                           dc.w $7fff
[000ba204]                           dc.w $ffff
[000ba206]                           dc.w $fffe
[000ba208]                           dc.w $7fff
[000ba20a]                           dc.w $ffff
[000ba20c]                           dc.w $fffe
[000ba20e]                           dc.w $7fff
[000ba210]                           dc.w $ffff
[000ba212]                           dc.w $fffe
[000ba214]                           dc.w $7fff
[000ba216]                           dc.w $ffff
[000ba218]                           dc.w $fffe
[000ba21a]                           dc.w $7fff
[000ba21c]                           dc.w $ffff
[000ba21e]                           dc.w $fffe
[000ba220]                           dc.w $7fff
[000ba222]                           dc.w $ffff
[000ba224]                           dc.w $fffe
[000ba226]                           dc.w $7fff
[000ba228]                           dc.w $ffff
[000ba22a]                           dc.w $fffe
[000ba22c]                           dc.w $7fff
[000ba22e]                           dc.w $ffff
[000ba230]                           dc.w $fffe
[000ba232]                           dc.w $7fff
[000ba234]                           dc.w $ffff
[000ba236]                           dc.w $fffe
[000ba238]                           dc.w $7fff
[000ba23a]                           dc.w $ffff
[000ba23c]                           dc.w $fffe
[000ba23e]                           dc.w $7fff
[000ba240]                           dc.w $ffff
[000ba242]                           dc.w $fffe
[000ba244]                           dc.w $7fff
[000ba246]                           dc.w $ffff
[000ba248]                           dc.w $fffe
[000ba24a]                           dc.w $7fff
[000ba24c]                           dc.w $ffff
[000ba24e]                           dc.w $fffe
[000ba250]                           dc.w $7fff
[000ba252]                           dc.w $ffff
[000ba254]                           dc.w $fffe
[000ba256]                           dc.w $7fff
[000ba258]                           dc.w $ffff
[000ba25a]                           dc.w $fffe
[000ba25c]                           dc.w $7fff
[000ba25e]                           dc.w $ffff
[000ba260]                           dc.w $fffe
[000ba262]                           dc.w $7fff
[000ba264]                           dc.w $ffff
[000ba266]                           dc.w $fffe
[000ba268]                           dc.w $7fff
[000ba26a]                           dc.w $ffff
[000ba26c]                           dc.w $fffe
[000ba26e]                           dc.w $7fff
[000ba270]                           dc.w $ffff
[000ba272]                           dc.w $fffe
[000ba274]                           dc.w $7fff
[000ba276]                           dc.w $ffff
[000ba278]                           dc.w $fffe
[000ba27a]                           dc.b $00
[000ba27b]                           dc.b $00
[000ba27c]                           dc.b $00
[000ba27d]                           dc.b $00
[000ba27e]                           dc.b $00
[000ba27f]                           dc.b $00
DATAS_17:
[000ba280]                           dc.b $00
[000ba281]                           dc.b $00
[000ba282]                           dc.b $00
[000ba283]                           dc.b $00
[000ba284]                           dc.w $02c0
[000ba286]                           dc.b $00
[000ba287]                           dc.b $00
[000ba288]                           dc.b $00
[000ba289]                           dc.b $00
[000ba28a]                           dc.b $00
[000ba28b]                           dc.b $00
[000ba28c]                           dc.b $00
[000ba28d]                           dc.b $00
[000ba28e]                           dc.b $00
[000ba28f]                           dc.b $00
[000ba290]                           dc.b $00
[000ba291]                           dc.b $00
[000ba292]                           dc.b $00
[000ba293]                           dc.b $00
[000ba294]                           dc.b $00
[000ba295]                           dc.b $00
[000ba296]                           dc.b $00
[000ba297]                           dc.b $00
[000ba298]                           dc.b $00
[000ba299]                           dc.b $00
[000ba29a]                           dc.b $00
[000ba29b]                           dc.b $00
[000ba29c]                           dc.b $00
[000ba29d]                           dc.b $00
[000ba29e]                           dc.b $00
[000ba29f]                           dc.b $00
[000ba2a0]                           dc.b $00
[000ba2a1]                           dc.b $00
[000ba2a2]                           dc.b $00
[000ba2a3]                           dc.b $00
[000ba2a4]                           dc.b $00
[000ba2a5]                           dc.b $00
[000ba2a6]                           dc.b $00
[000ba2a7]                           dc.b $00
[000ba2a8]                           dc.b $00
[000ba2a9]                           dc.b $00
[000ba2aa]                           dc.w $1fff
[000ba2ac]                           dc.w $ffff
[000ba2ae]                           dc.w $fff0
[000ba2b0]                           dc.w $101f
[000ba2b2]                           dc.w $f000
[000ba2b4]                           dc.b $00
[000ba2b5]                           dc.b $10
[000ba2b6]                           dc.w $1798
[000ba2b8]                           dc.w $33e0
[000ba2ba]                           dc.b $00
[000ba2bb]                           dc.b $10
[000ba2bc]                           dc.w $101f
[000ba2be]                           dc.w $f000
[000ba2c0]                           dc.b $00
[000ba2c1]                           dc.b $10
[000ba2c2]                           dc.w $1fff
[000ba2c4]                           dc.w $ffff
[000ba2c6]                           dc.w $fff0
[000ba2c8]                           dc.b $00
[000ba2c9]                           dc.b $10
[000ba2ca]                           dc.b $00
[000ba2cb]                           dc.b $40
[000ba2cc]                           dc.b $00
[000ba2cd]                           dc.b $00
[000ba2ce]                           dc.b $00
[000ba2cf]                           dc.b $17
[000ba2d0]                           dc.w $ff40
[000ba2d2]                           dc.b $00
[000ba2d3]                           dc.b $00
[000ba2d4]                           dc.b $00
[000ba2d5]                           dc.b $10
[000ba2d6]                           dc.b $00
[000ba2d7]                           dc.b $40
[000ba2d8]                           dc.b $00
[000ba2d9]                           dc.b $00
[000ba2da]                           dc.b $00
[000ba2db]                           dc.b $10
[000ba2dc]                           dc.b $00
[000ba2dd]                           dc.b $40
[000ba2de]                           dc.b $00
[000ba2df]                           dc.b $00
[000ba2e0]                           dc.b $00
[000ba2e1]                           dc.b $15
[000ba2e2]                           dc.w $5540
[000ba2e4]                           dc.b $00
[000ba2e5]                           dc.b $00
[000ba2e6]                           dc.b $00
[000ba2e7]                           dc.b $10
[000ba2e8]                           dc.b $00
[000ba2e9]                           dc.b $40
[000ba2ea]                           dc.b $00
[000ba2eb]                           dc.b $00
[000ba2ec]                           dc.b $00
[000ba2ed]                           dc.b $1f
[000ba2ee]                           dc.w $ffc0
[000ba2f0]                           dc.b $00
[000ba2f1]                           dc.b $00
[000ba2f2]                           dc.b $00
[000ba2f3]                           dc.b $18
[000ba2f4]                           dc.b $00
[000ba2f5]                           dc.b $c0
[000ba2f6]                           dc.b $00
[000ba2f7]                           dc.b $00
[000ba2f8]                           dc.b $00
[000ba2f9]                           dc.b $1f
[000ba2fa]                           dc.w $ffc0
[000ba2fc]                           dc.b $00
[000ba2fd]                           dc.b $00
[000ba2fe]                           dc.b $00
[000ba2ff]                           dc.b $10
[000ba300]                           dc.b $00
[000ba301]                           dc.b $40
[000ba302]                           dc.b $00
[000ba303]                           dc.b $00
[000ba304]                           dc.b $00
[000ba305]                           dc.b $17
[000ba306]                           dc.w $fe40
[000ba308]                           dc.b $00
[000ba309]                           dc.b $00
[000ba30a]                           dc.b $00
[000ba30b]                           dc.b $10
[000ba30c]                           dc.b $00
[000ba30d]                           dc.b $40
[000ba30e]                           dc.b $00
[000ba30f]                           dc.b $00
[000ba310]                           dc.b $00
[000ba311]                           dc.b $1f
[000ba312]                           dc.w $ffc0
[000ba314]                           dc.b $00
[000ba315]                           dc.b $00
[000ba316]                           dc.b $00
[000ba317]                           dc.b $00
[000ba318]                           dc.b $00
[000ba319]                           dc.b $00
[000ba31a]                           dc.b $00
[000ba31b]                           dc.b $00
[000ba31c]                           dc.b $00
[000ba31d]                           dc.b $00
[000ba31e]                           dc.b $00
[000ba31f]                           dc.b $00
[000ba320]                           dc.b $00
[000ba321]                           dc.b $00
[000ba322]                           dc.b $00
[000ba323]                           dc.b $00
[000ba324]                           dc.b $00
[000ba325]                           dc.b $00
[000ba326]                           dc.b $00
[000ba327]                           dc.b $00
[000ba328]                           dc.b $00
[000ba329]                           dc.b $00
[000ba32a]                           dc.b $00
[000ba32b]                           dc.b $00
[000ba32c]                           dc.b $00
[000ba32d]                           dc.b $00
[000ba32e]                           dc.b $00
[000ba32f]                           dc.b $00
[000ba330]                           dc.b $00
[000ba331]                           dc.b $00
[000ba332]                           dc.b $00
[000ba333]                           dc.b $00
[000ba334]                           dc.b $00
[000ba335]                           dc.b $00
[000ba336]                           dc.b $00
[000ba337]                           dc.b $00
[000ba338]                           dc.b $00
[000ba339]                           dc.b $00
[000ba33a]                           dc.b $00
[000ba33b]                           dc.b $00
[000ba33c]                           dc.b $00
[000ba33d]                           dc.b $00
[000ba33e]                           dc.b $00
[000ba33f]                           dc.b $00
[000ba340]                           dc.b $00
[000ba341]                           dc.b $00
[000ba342]                           dc.b $00
[000ba343]                           dc.b $00
[000ba344]                           dc.b $00
[000ba345]                           dc.b $00
[000ba346]                           dc.b $00
[000ba347]                           dc.b $00
[000ba348]                           dc.b $00
[000ba349]                           dc.b $00
[000ba34a]                           dc.b $00
[000ba34b]                           dc.b $00
[000ba34c]                           dc.b $00
[000ba34d]                           dc.b $00
[000ba34e]                           dc.b $00
[000ba34f]                           dc.b $00
[000ba350]                           dc.b $00
[000ba351]                           dc.b $00
[000ba352]                           dc.b $00
[000ba353]                           dc.b $00
[000ba354]                           dc.b $00
[000ba355]                           dc.b $00
[000ba356]                           dc.b $00
[000ba357]                           dc.b $00
[000ba358]                           dc.w $1fff
[000ba35a]                           dc.w $ffff
[000ba35c]                           dc.w $fff0
[000ba35e]                           dc.w $101f
[000ba360]                           dc.w $f000
[000ba362]                           dc.b $00
[000ba363]                           dc.b $10
[000ba364]                           dc.w $1798
[000ba366]                           dc.w $33e0
[000ba368]                           dc.b $00
[000ba369]                           dc.b $10
[000ba36a]                           dc.w $101f
[000ba36c]                           dc.w $f000
[000ba36e]                           dc.b $00
[000ba36f]                           dc.b $10
[000ba370]                           dc.w $1fff
[000ba372]                           dc.w $ffff
[000ba374]                           dc.w $fff0
[000ba376]                           dc.b $00
[000ba377]                           dc.b $10
[000ba378]                           dc.b $00
[000ba379]                           dc.b $40
[000ba37a]                           dc.b $00
[000ba37b]                           dc.b $00
[000ba37c]                           dc.b $00
[000ba37d]                           dc.b $17
[000ba37e]                           dc.w $ff40
[000ba380]                           dc.b $00
[000ba381]                           dc.b $00
[000ba382]                           dc.b $00
[000ba383]                           dc.b $10
[000ba384]                           dc.b $00
[000ba385]                           dc.b $40
[000ba386]                           dc.b $00
[000ba387]                           dc.b $00
[000ba388]                           dc.b $00
[000ba389]                           dc.b $10
[000ba38a]                           dc.b $00
[000ba38b]                           dc.b $40
[000ba38c]                           dc.b $00
[000ba38d]                           dc.b $00
[000ba38e]                           dc.b $00
[000ba38f]                           dc.b $15
[000ba390]                           dc.w $5540
[000ba392]                           dc.b $00
[000ba393]                           dc.b $00
[000ba394]                           dc.b $00
[000ba395]                           dc.b $10
[000ba396]                           dc.b $00
[000ba397]                           dc.b $40
[000ba398]                           dc.b $00
[000ba399]                           dc.b $00
[000ba39a]                           dc.b $00
[000ba39b]                           dc.b $1f
[000ba39c]                           dc.w $ffc0
[000ba39e]                           dc.b $00
[000ba39f]                           dc.b $00
[000ba3a0]                           dc.b $00
[000ba3a1]                           dc.b $18
[000ba3a2]                           dc.b $00
[000ba3a3]                           dc.b $c0
[000ba3a4]                           dc.b $00
[000ba3a5]                           dc.b $00
[000ba3a6]                           dc.b $00
[000ba3a7]                           dc.b $1f
[000ba3a8]                           dc.w $ffc0
[000ba3aa]                           dc.b $00
[000ba3ab]                           dc.b $00
[000ba3ac]                           dc.b $00
[000ba3ad]                           dc.b $10
[000ba3ae]                           dc.b $00
[000ba3af]                           dc.b $40
[000ba3b0]                           dc.b $00
[000ba3b1]                           dc.b $00
[000ba3b2]                           dc.b $00
[000ba3b3]                           dc.b $17
[000ba3b4]                           dc.w $fe40
[000ba3b6]                           dc.b $00
[000ba3b7]                           dc.b $00
[000ba3b8]                           dc.b $00
[000ba3b9]                           dc.b $10
[000ba3ba]                           dc.b $00
[000ba3bb]                           dc.b $40
[000ba3bc]                           dc.b $00
[000ba3bd]                           dc.b $00
[000ba3be]                           dc.b $00
[000ba3bf]                           dc.b $1f
[000ba3c0]                           dc.w $ffc0
[000ba3c2]                           dc.b $00
[000ba3c3]                           dc.b $00
[000ba3c4]                           dc.b $00
[000ba3c5]                           dc.b $00
[000ba3c6]                           dc.b $00
[000ba3c7]                           dc.b $00
[000ba3c8]                           dc.b $00
[000ba3c9]                           dc.b $00
[000ba3ca]                           dc.b $00
[000ba3cb]                           dc.b $00
[000ba3cc]                           dc.b $00
[000ba3cd]                           dc.b $00
[000ba3ce]                           dc.b $00
[000ba3cf]                           dc.b $00
[000ba3d0]                           dc.b $00
[000ba3d1]                           dc.b $00
[000ba3d2]                           dc.b $00
[000ba3d3]                           dc.b $00
[000ba3d4]                           dc.b $00
[000ba3d5]                           dc.b $00
[000ba3d6]                           dc.b $00
[000ba3d7]                           dc.b $00
[000ba3d8]                           dc.b $00
[000ba3d9]                           dc.b $00
[000ba3da]                           dc.b $00
[000ba3db]                           dc.b $00
[000ba3dc]                           dc.b $00
[000ba3dd]                           dc.b $00
[000ba3de]                           dc.b $00
[000ba3df]                           dc.b $00
[000ba3e0]                           dc.b $00
[000ba3e1]                           dc.b $00
[000ba3e2]                           dc.b $00
[000ba3e3]                           dc.b $00
[000ba3e4]                           dc.b $00
[000ba3e5]                           dc.b $00
[000ba3e6]                           dc.b $00
[000ba3e7]                           dc.b $00
[000ba3e8]                           dc.b $00
[000ba3e9]                           dc.b $00
[000ba3ea]                           dc.b $00
[000ba3eb]                           dc.b $00
[000ba3ec]                           dc.b $00
[000ba3ed]                           dc.b $00
[000ba3ee]                           dc.b $00
[000ba3ef]                           dc.b $00
[000ba3f0]                           dc.b $00
[000ba3f1]                           dc.b $00
[000ba3f2]                           dc.b $00
[000ba3f3]                           dc.b $00
[000ba3f4]                           dc.b $00
[000ba3f5]                           dc.b $00
[000ba3f6]                           dc.b $00
[000ba3f7]                           dc.b $00
[000ba3f8]                           dc.b $00
[000ba3f9]                           dc.b $00
[000ba3fa]                           dc.b $00
[000ba3fb]                           dc.b $00
[000ba3fc]                           dc.b $00
[000ba3fd]                           dc.b $00
[000ba3fe]                           dc.b $00
[000ba3ff]                           dc.b $00
[000ba400]                           dc.b $00
[000ba401]                           dc.b $00
[000ba402]                           dc.b $00
[000ba403]                           dc.b $00
[000ba404]                           dc.b $00
[000ba405]                           dc.b $00
[000ba406]                           dc.w $1fff
[000ba408]                           dc.w $ffff
[000ba40a]                           dc.w $fff0
[000ba40c]                           dc.w $101f
[000ba40e]                           dc.w $f000
[000ba410]                           dc.b $00
[000ba411]                           dc.b $10
[000ba412]                           dc.w $1798
[000ba414]                           dc.w $33e0
[000ba416]                           dc.b $00
[000ba417]                           dc.b $10
[000ba418]                           dc.w $101f
[000ba41a]                           dc.w $f000
[000ba41c]                           dc.b $00
[000ba41d]                           dc.b $10
[000ba41e]                           dc.w $1fff
[000ba420]                           dc.w $ffff
[000ba422]                           dc.w $fff0
[000ba424]                           dc.b $00
[000ba425]                           dc.b $10
[000ba426]                           dc.b $00
[000ba427]                           dc.b $40
[000ba428]                           dc.b $00
[000ba429]                           dc.b $00
[000ba42a]                           dc.b $00
[000ba42b]                           dc.b $17
[000ba42c]                           dc.w $ff40
[000ba42e]                           dc.b $00
[000ba42f]                           dc.b $00
[000ba430]                           dc.b $00
[000ba431]                           dc.b $10
[000ba432]                           dc.b $00
[000ba433]                           dc.b $40
[000ba434]                           dc.b $00
[000ba435]                           dc.b $00
[000ba436]                           dc.b $00
[000ba437]                           dc.b $10
[000ba438]                           dc.b $00
[000ba439]                           dc.b $40
[000ba43a]                           dc.b $00
[000ba43b]                           dc.b $00
[000ba43c]                           dc.b $00
[000ba43d]                           dc.b $15
[000ba43e]                           dc.w $5540
[000ba440]                           dc.b $00
[000ba441]                           dc.b $00
[000ba442]                           dc.b $00
[000ba443]                           dc.b $10
[000ba444]                           dc.b $00
[000ba445]                           dc.b $40
[000ba446]                           dc.b $00
[000ba447]                           dc.b $00
[000ba448]                           dc.b $00
[000ba449]                           dc.b $1f
[000ba44a]                           dc.w $ffc0
[000ba44c]                           dc.b $00
[000ba44d]                           dc.b $00
[000ba44e]                           dc.b $00
[000ba44f]                           dc.b $18
[000ba450]                           dc.b $00
[000ba451]                           dc.b $c0
[000ba452]                           dc.b $00
[000ba453]                           dc.b $00
[000ba454]                           dc.b $00
[000ba455]                           dc.b $1f
[000ba456]                           dc.w $ffc0
[000ba458]                           dc.b $00
[000ba459]                           dc.b $00
[000ba45a]                           dc.b $00
[000ba45b]                           dc.b $10
[000ba45c]                           dc.b $00
[000ba45d]                           dc.b $40
[000ba45e]                           dc.b $00
[000ba45f]                           dc.b $00
[000ba460]                           dc.b $00
[000ba461]                           dc.b $17
[000ba462]                           dc.w $fe40
[000ba464]                           dc.b $00
[000ba465]                           dc.b $00
[000ba466]                           dc.b $00
[000ba467]                           dc.b $10
[000ba468]                           dc.b $00
[000ba469]                           dc.b $40
[000ba46a]                           dc.b $00
[000ba46b]                           dc.b $00
[000ba46c]                           dc.b $00
[000ba46d]                           dc.b $1f
[000ba46e]                           dc.w $ffc0
[000ba470]                           dc.b $00
[000ba471]                           dc.b $00
[000ba472]                           dc.b $00
[000ba473]                           dc.b $00
[000ba474]                           dc.b $00
[000ba475]                           dc.b $00
[000ba476]                           dc.b $00
[000ba477]                           dc.b $00
[000ba478]                           dc.b $00
[000ba479]                           dc.b $00
[000ba47a]                           dc.b $00
[000ba47b]                           dc.b $00
[000ba47c]                           dc.b $00
[000ba47d]                           dc.b $00
[000ba47e]                           dc.b $00
[000ba47f]                           dc.b $00
[000ba480]                           dc.b $00
[000ba481]                           dc.b $00
[000ba482]                           dc.b $00
[000ba483]                           dc.b $00
[000ba484]                           dc.b $00
[000ba485]                           dc.b $00
[000ba486]                           dc.b $00
[000ba487]                           dc.b $00
[000ba488]                           dc.b $00
[000ba489]                           dc.b $00
[000ba48a]                           dc.b $00
[000ba48b]                           dc.b $00
[000ba48c]                           dc.b $00
[000ba48d]                           dc.b $00
[000ba48e]                           dc.b $00
[000ba48f]                           dc.b $00
[000ba490]                           dc.b $00
[000ba491]                           dc.b $00
[000ba492]                           dc.b $00
[000ba493]                           dc.b $00
[000ba494]                           dc.b $00
[000ba495]                           dc.b $00
[000ba496]                           dc.b $00
[000ba497]                           dc.b $00
[000ba498]                           dc.b $00
[000ba499]                           dc.b $00
[000ba49a]                           dc.b $00
[000ba49b]                           dc.b $00
[000ba49c]                           dc.b $00
[000ba49d]                           dc.b $00
[000ba49e]                           dc.b $00
[000ba49f]                           dc.b $00
[000ba4a0]                           dc.b $00
[000ba4a1]                           dc.b $00
[000ba4a2]                           dc.b $00
[000ba4a3]                           dc.b $00
[000ba4a4]                           dc.b $00
[000ba4a5]                           dc.b $00
[000ba4a6]                           dc.b $00
[000ba4a7]                           dc.b $00
[000ba4a8]                           dc.b $00
[000ba4a9]                           dc.b $00
[000ba4aa]                           dc.b $00
[000ba4ab]                           dc.b $00
[000ba4ac]                           dc.b $00
[000ba4ad]                           dc.b $00
[000ba4ae]                           dc.b $00
[000ba4af]                           dc.b $00
[000ba4b0]                           dc.b $00
[000ba4b1]                           dc.b $00
[000ba4b2]                           dc.b $00
[000ba4b3]                           dc.b $00
[000ba4b4]                           dc.w $1fff
[000ba4b6]                           dc.w $ffff
[000ba4b8]                           dc.w $fff0
[000ba4ba]                           dc.w $101f
[000ba4bc]                           dc.w $f000
[000ba4be]                           dc.b $00
[000ba4bf]                           dc.b $18
[000ba4c0]                           dc.w $1798
[000ba4c2]                           dc.w $33e0
[000ba4c4]                           dc.b $00
[000ba4c5]                           dc.b $18
[000ba4c6]                           dc.w $101f
[000ba4c8]                           dc.w $f000
[000ba4ca]                           dc.b $00
[000ba4cb]                           dc.b $18
[000ba4cc]                           dc.w $1fff
[000ba4ce]                           dc.w $ffff
[000ba4d0]                           dc.w $fff8
[000ba4d2]                           dc.w $0ff0
[000ba4d4]                           dc.b $00
[000ba4d5]                           dc.b $7f
[000ba4d6]                           dc.w $fff8
[000ba4d8]                           dc.b $00
[000ba4d9]                           dc.b $17
[000ba4da]                           dc.w $ff60
[000ba4dc]                           dc.b $00
[000ba4dd]                           dc.b $00
[000ba4de]                           dc.b $00
[000ba4df]                           dc.b $10
[000ba4e0]                           dc.b $00
[000ba4e1]                           dc.b $60
[000ba4e2]                           dc.b $00
[000ba4e3]                           dc.b $00
[000ba4e4]                           dc.b $00
[000ba4e5]                           dc.b $10
[000ba4e6]                           dc.b $00
[000ba4e7]                           dc.b $60
[000ba4e8]                           dc.b $00
[000ba4e9]                           dc.b $00
[000ba4ea]                           dc.b $00
[000ba4eb]                           dc.b $15
[000ba4ec]                           dc.w $5560
[000ba4ee]                           dc.b $00
[000ba4ef]                           dc.b $00
[000ba4f0]                           dc.b $00
[000ba4f1]                           dc.b $10
[000ba4f2]                           dc.b $00
[000ba4f3]                           dc.b $60
[000ba4f4]                           dc.b $00
[000ba4f5]                           dc.b $00
[000ba4f6]                           dc.b $00
[000ba4f7]                           dc.b $1f
[000ba4f8]                           dc.w $ffe0
[000ba4fa]                           dc.b $00
[000ba4fb]                           dc.b $00
[000ba4fc]                           dc.b $00
[000ba4fd]                           dc.b $18
[000ba4fe]                           dc.b $00
[000ba4ff]                           dc.b $e0
[000ba500]                           dc.b $00
[000ba501]                           dc.b $00
[000ba502]                           dc.b $00
[000ba503]                           dc.b $1f
[000ba504]                           dc.w $ffe0
[000ba506]                           dc.b $00
[000ba507]                           dc.b $00
[000ba508]                           dc.b $00
[000ba509]                           dc.b $10
[000ba50a]                           dc.b $00
[000ba50b]                           dc.b $60
[000ba50c]                           dc.b $00
[000ba50d]                           dc.b $00
[000ba50e]                           dc.b $00
[000ba50f]                           dc.b $17
[000ba510]                           dc.w $fe60
[000ba512]                           dc.b $00
[000ba513]                           dc.b $00
[000ba514]                           dc.b $00
[000ba515]                           dc.b $10
[000ba516]                           dc.b $00
[000ba517]                           dc.b $60
[000ba518]                           dc.b $00
[000ba519]                           dc.b $00
[000ba51a]                           dc.b $00
[000ba51b]                           dc.b $1f
[000ba51c]                           dc.w $ffe0
[000ba51e]                           dc.b $00
[000ba51f]                           dc.b $00
[000ba520]                           dc.b $00
[000ba521]                           dc.b $0f
[000ba522]                           dc.w $ffe0
[000ba524]                           dc.b $00
[000ba525]                           dc.b $00
[000ba526]                           dc.b $00
[000ba527]                           dc.b $00
[000ba528]                           dc.b $00
[000ba529]                           dc.b $00
[000ba52a]                           dc.b $00
[000ba52b]                           dc.b $00
[000ba52c]                           dc.b $00
[000ba52d]                           dc.b $00
[000ba52e]                           dc.b $00
[000ba52f]                           dc.b $00
[000ba530]                           dc.b $00
[000ba531]                           dc.b $00
[000ba532]                           dc.b $00
[000ba533]                           dc.b $00
[000ba534]                           dc.b $00
[000ba535]                           dc.b $00
[000ba536]                           dc.b $00
[000ba537]                           dc.b $00
[000ba538]                           dc.b $00
[000ba539]                           dc.b $00
[000ba53a]                           dc.b $00
[000ba53b]                           dc.b $00
[000ba53c]                           dc.b $00
[000ba53d]                           dc.b $00
DATAS_18:
[000ba53e]                           dc.b $00
[000ba53f]                           dc.b $00
[000ba540]                           dc.b $00
[000ba541]                           dc.b $00
[000ba542]                           dc.b $00
[000ba543]                           dc.b $00
[000ba544]                           dc.b $00
[000ba545]                           dc.b $00
[000ba546]                           dc.b $00
[000ba547]                           dc.b $00
[000ba548]                           dc.b $00
[000ba549]                           dc.b $00
[000ba54a]                           dc.b $00
[000ba54b]                           dc.b $00
[000ba54c]                           dc.b $00
[000ba54d]                           dc.b $00
[000ba54e]                           dc.b $00
[000ba54f]                           dc.b $00
[000ba550]                           dc.b $00
[000ba551]                           dc.b $00
[000ba552]                           dc.b $00
[000ba553]                           dc.b $00
[000ba554]                           dc.b $00
[000ba555]                           dc.b $00
[000ba556]                           dc.b $00
[000ba557]                           dc.b $00
[000ba558]                           dc.b $00
[000ba559]                           dc.b $00
[000ba55a]                           dc.b $00
[000ba55b]                           dc.b $00
[000ba55c]                           dc.b $00
[000ba55d]                           dc.b $00
[000ba55e]                           dc.b $00
[000ba55f]                           dc.b $00
[000ba560]                           dc.b $00
[000ba561]                           dc.b $00
[000ba562]                           dc.w $1fff
[000ba564]                           dc.w $ffff
[000ba566]                           dc.w $fff0
[000ba568]                           dc.w $1fff
[000ba56a]                           dc.w $ffff
[000ba56c]                           dc.w $fff8
[000ba56e]                           dc.w $1fff
[000ba570]                           dc.w $ffff
[000ba572]                           dc.w $fff8
[000ba574]                           dc.w $1fff
[000ba576]                           dc.w $ffff
[000ba578]                           dc.w $fff8
[000ba57a]                           dc.w $1fff
[000ba57c]                           dc.w $ffff
[000ba57e]                           dc.w $fff8
[000ba580]                           dc.w $0fff
[000ba582]                           dc.w $ffff
[000ba584]                           dc.w $fff8
[000ba586]                           dc.b $00
[000ba587]                           dc.b $1f
[000ba588]                           dc.w $ffe0
[000ba58a]                           dc.b $00
[000ba58b]                           dc.b $00
[000ba58c]                           dc.b $00
[000ba58d]                           dc.b $1f
[000ba58e]                           dc.w $ffe0
[000ba590]                           dc.b $00
[000ba591]                           dc.b $00
[000ba592]                           dc.b $00
[000ba593]                           dc.b $1f
[000ba594]                           dc.w $ffe0
[000ba596]                           dc.b $00
[000ba597]                           dc.b $00
[000ba598]                           dc.b $00
[000ba599]                           dc.b $1f
[000ba59a]                           dc.w $ffe0
[000ba59c]                           dc.b $00
[000ba59d]                           dc.b $00
[000ba59e]                           dc.b $00
[000ba59f]                           dc.b $1f
[000ba5a0]                           dc.w $ffe0
[000ba5a2]                           dc.b $00
[000ba5a3]                           dc.b $00
[000ba5a4]                           dc.b $00
[000ba5a5]                           dc.b $1f
[000ba5a6]                           dc.w $ffe0
[000ba5a8]                           dc.b $00
[000ba5a9]                           dc.b $00
[000ba5aa]                           dc.b $00
[000ba5ab]                           dc.b $1f
[000ba5ac]                           dc.w $ffe0
[000ba5ae]                           dc.b $00
[000ba5af]                           dc.b $00
[000ba5b0]                           dc.b $00
[000ba5b1]                           dc.b $1f
[000ba5b2]                           dc.w $ffe0
[000ba5b4]                           dc.b $00
[000ba5b5]                           dc.b $00
[000ba5b6]                           dc.b $00
[000ba5b7]                           dc.b $1f
[000ba5b8]                           dc.w $ffe0
[000ba5ba]                           dc.b $00
[000ba5bb]                           dc.b $00
[000ba5bc]                           dc.b $00
[000ba5bd]                           dc.b $1f
[000ba5be]                           dc.w $ffe0
[000ba5c0]                           dc.b $00
[000ba5c1]                           dc.b $00
[000ba5c2]                           dc.b $00
[000ba5c3]                           dc.b $1f
[000ba5c4]                           dc.w $ffe0
[000ba5c6]                           dc.b $00
[000ba5c7]                           dc.b $00
[000ba5c8]                           dc.b $00
[000ba5c9]                           dc.b $1f
[000ba5ca]                           dc.w $ffe0
[000ba5cc]                           dc.b $00
[000ba5cd]                           dc.b $00
[000ba5ce]                           dc.b $00
[000ba5cf]                           dc.b $0f
[000ba5d0]                           dc.w $ffe0
[000ba5d2]                           dc.b $00
[000ba5d3]                           dc.b $00
[000ba5d4]                           dc.b $00
[000ba5d5]                           dc.b $00
[000ba5d6]                           dc.b $00
[000ba5d7]                           dc.b $00
[000ba5d8]                           dc.b $00
[000ba5d9]                           dc.b $00
[000ba5da]                           dc.b $00
[000ba5db]                           dc.b $00
[000ba5dc]                           dc.b $00
[000ba5dd]                           dc.b $00
[000ba5de]                           dc.b $00
[000ba5df]                           dc.b $00
[000ba5e0]                           dc.b $00
[000ba5e1]                           dc.b $00
[000ba5e2]                           dc.b $00
[000ba5e3]                           dc.b $00
[000ba5e4]                           dc.b $00
[000ba5e5]                           dc.b $00
[000ba5e6]                           dc.b $00
[000ba5e7]                           dc.b $00
[000ba5e8]                           dc.b $00
[000ba5e9]                           dc.b $00
[000ba5ea]                           dc.b $00
[000ba5eb]                           dc.b $00
DATAS_19:
[000ba5ec]                           dc.b $00
[000ba5ed]                           dc.b $00
[000ba5ee]                           dc.b $00
[000ba5ef]                           dc.b $00
[000ba5f0]                           dc.w $02c0
[000ba5f2]                           dc.b $00
[000ba5f3]                           dc.b $00
[000ba5f4]                           dc.b $00
[000ba5f5]                           dc.b $00
[000ba5f6]                           dc.b $00
[000ba5f7]                           dc.b $00
[000ba5f8]                           dc.b $00
[000ba5f9]                           dc.b $00
[000ba5fa]                           dc.b $00
[000ba5fb]                           dc.b $00
[000ba5fc]                           dc.b $00
[000ba5fd]                           dc.b $00
[000ba5fe]                           dc.b $00
[000ba5ff]                           dc.b $00
[000ba600]                           dc.b $00
[000ba601]                           dc.b $00
[000ba602]                           dc.b $00
[000ba603]                           dc.b $00
[000ba604]                           dc.b $00
[000ba605]                           dc.b $00
[000ba606]                           dc.b $00
[000ba607]                           dc.b $00
[000ba608]                           dc.b $00
[000ba609]                           dc.b $00
[000ba60a]                           dc.b $00
[000ba60b]                           dc.b $00
[000ba60c]                           dc.b $00
[000ba60d]                           dc.b $00
[000ba60e]                           dc.b $00
[000ba60f]                           dc.b $00
[000ba610]                           dc.b $00
[000ba611]                           dc.b $00
[000ba612]                           dc.b $00
[000ba613]                           dc.b $00
[000ba614]                           dc.b $00
[000ba615]                           dc.b $00
[000ba616]                           dc.b $00
[000ba617]                           dc.b $7f
[000ba618]                           dc.w $ff00
[000ba61a]                           dc.b $00
[000ba61b]                           dc.b $00
[000ba61c]                           dc.b $00
[000ba61d]                           dc.b $7f
[000ba61e]                           dc.w $ff00
[000ba620]                           dc.b $00
[000ba621]                           dc.b $00
[000ba622]                           dc.b $00
[000ba623]                           dc.b $7f
[000ba624]                           dc.w $ff00
[000ba626]                           dc.b $00
[000ba627]                           dc.b $00
[000ba628]                           dc.b $00
[000ba629]                           dc.b $7f
[000ba62a]                           dc.w $ff00
[000ba62c]                           dc.b $00
[000ba62d]                           dc.b $00
[000ba62e]                           dc.b $00
[000ba62f]                           dc.b $7f
[000ba630]                           dc.w $ff00
[000ba632]                           dc.b $00
[000ba633]                           dc.b $00
[000ba634]                           dc.b $00
[000ba635]                           dc.b $7f
[000ba636]                           dc.w $ff00
[000ba638]                           dc.b $00
[000ba639]                           dc.b $00
[000ba63a]                           dc.b $00
[000ba63b]                           dc.b $7f
[000ba63c]                           dc.w $ff00
[000ba63e]                           dc.b $00
[000ba63f]                           dc.b $00
[000ba640]                           dc.b $00
[000ba641]                           dc.b $7f
[000ba642]                           dc.w $ffff
[000ba644]                           dc.w $f000
[000ba646]                           dc.b $00
[000ba647]                           dc.b $70
[000ba648]                           dc.w $07ff
[000ba64a]                           dc.w $f000
[000ba64c]                           dc.b $00
[000ba64d]                           dc.b $7f
[000ba64e]                           dc.w $ffff
[000ba650]                           dc.w $f000
[000ba652]                           dc.b $00
[000ba653]                           dc.b $7f
[000ba654]                           dc.w $ffff
[000ba656]                           dc.w $f000
[000ba658]                           dc.b $00
[000ba659]                           dc.b $7f
[000ba65a]                           dc.w $ffff
[000ba65c]                           dc.w $f000
[000ba65e]                           dc.b $00
[000ba65f]                           dc.b $7f
[000ba660]                           dc.w $ffc0
[000ba662]                           dc.w $7000
[000ba664]                           dc.b $00
[000ba665]                           dc.b $7f
[000ba666]                           dc.w $ffff
[000ba668]                           dc.w $f000
[000ba66a]                           dc.b $00
[000ba66b]                           dc.b $7f
[000ba66c]                           dc.w $ffff
[000ba66e]                           dc.w $f000
[000ba670]                           dc.b $00
[000ba671]                           dc.b $7f
[000ba672]                           dc.w $ff00
[000ba674]                           dc.b $00
[000ba675]                           dc.b $00
[000ba676]                           dc.b $00
[000ba677]                           dc.b $7f
[000ba678]                           dc.w $ff00
[000ba67a]                           dc.b $00
[000ba67b]                           dc.b $00
[000ba67c]                           dc.b $00
[000ba67d]                           dc.b $00
[000ba67e]                           dc.b $00
[000ba67f]                           dc.b $00
[000ba680]                           dc.b $00
[000ba681]                           dc.b $00
[000ba682]                           dc.b $00
[000ba683]                           dc.b $00
[000ba684]                           dc.b $00
[000ba685]                           dc.b $00
[000ba686]                           dc.b $00
[000ba687]                           dc.b $00
[000ba688]                           dc.b $00
[000ba689]                           dc.b $00
[000ba68a]                           dc.b $00
[000ba68b]                           dc.b $00
[000ba68c]                           dc.b $00
[000ba68d]                           dc.b $00
[000ba68e]                           dc.b $00
[000ba68f]                           dc.b $00
[000ba690]                           dc.b $00
[000ba691]                           dc.b $00
[000ba692]                           dc.b $00
[000ba693]                           dc.b $00
[000ba694]                           dc.b $00
[000ba695]                           dc.b $00
[000ba696]                           dc.b $00
[000ba697]                           dc.b $00
[000ba698]                           dc.b $00
[000ba699]                           dc.b $00
[000ba69a]                           dc.b $00
[000ba69b]                           dc.b $00
[000ba69c]                           dc.b $00
[000ba69d]                           dc.b $00
[000ba69e]                           dc.b $00
[000ba69f]                           dc.b $00
[000ba6a0]                           dc.b $00
[000ba6a1]                           dc.b $00
[000ba6a2]                           dc.b $00
[000ba6a3]                           dc.b $00
[000ba6a4]                           dc.b $00
[000ba6a5]                           dc.b $00
[000ba6a6]                           dc.b $00
[000ba6a7]                           dc.b $00
[000ba6a8]                           dc.b $00
[000ba6a9]                           dc.b $00
[000ba6aa]                           dc.b $00
[000ba6ab]                           dc.b $00
[000ba6ac]                           dc.b $00
[000ba6ad]                           dc.b $00
[000ba6ae]                           dc.b $00
[000ba6af]                           dc.b $00
[000ba6b0]                           dc.b $00
[000ba6b1]                           dc.b $00
[000ba6b2]                           dc.b $00
[000ba6b3]                           dc.b $00
[000ba6b4]                           dc.b $00
[000ba6b5]                           dc.b $00
[000ba6b6]                           dc.b $00
[000ba6b7]                           dc.b $00
[000ba6b8]                           dc.b $00
[000ba6b9]                           dc.b $00
[000ba6ba]                           dc.b $00
[000ba6bb]                           dc.b $00
[000ba6bc]                           dc.b $00
[000ba6bd]                           dc.b $00
[000ba6be]                           dc.b $00
[000ba6bf]                           dc.b $00
[000ba6c0]                           dc.b $00
[000ba6c1]                           dc.b $00
[000ba6c2]                           dc.b $00
[000ba6c3]                           dc.b $00
[000ba6c4]                           dc.b $00
[000ba6c5]                           dc.b $7f
[000ba6c6]                           dc.w $ff00
[000ba6c8]                           dc.b $00
[000ba6c9]                           dc.b $00
[000ba6ca]                           dc.b $00
[000ba6cb]                           dc.b $7f
[000ba6cc]                           dc.w $ff00
[000ba6ce]                           dc.b $00
[000ba6cf]                           dc.b $00
[000ba6d0]                           dc.b $00
[000ba6d1]                           dc.b $7f
[000ba6d2]                           dc.w $ff00
[000ba6d4]                           dc.b $00
[000ba6d5]                           dc.b $00
[000ba6d6]                           dc.b $00
[000ba6d7]                           dc.b $7f
[000ba6d8]                           dc.w $ff00
[000ba6da]                           dc.b $00
[000ba6db]                           dc.b $00
[000ba6dc]                           dc.b $00
[000ba6dd]                           dc.b $7f
[000ba6de]                           dc.w $ff00
[000ba6e0]                           dc.b $00
[000ba6e1]                           dc.b $00
[000ba6e2]                           dc.b $00
[000ba6e3]                           dc.b $7f
[000ba6e4]                           dc.w $ff00
[000ba6e6]                           dc.b $00
[000ba6e7]                           dc.b $00
[000ba6e8]                           dc.b $00
[000ba6e9]                           dc.b $7f
[000ba6ea]                           dc.w $ff00
[000ba6ec]                           dc.b $00
[000ba6ed]                           dc.b $00
[000ba6ee]                           dc.b $00
[000ba6ef]                           dc.b $7f
[000ba6f0]                           dc.w $ffff
[000ba6f2]                           dc.w $f000
[000ba6f4]                           dc.b $00
[000ba6f5]                           dc.b $70
[000ba6f6]                           dc.w $07ff
[000ba6f8]                           dc.w $f000
[000ba6fa]                           dc.b $00
[000ba6fb]                           dc.b $7f
[000ba6fc]                           dc.w $ffff
[000ba6fe]                           dc.w $f000
[000ba700]                           dc.b $00
[000ba701]                           dc.b $7f
[000ba702]                           dc.w $ffff
[000ba704]                           dc.w $f000
[000ba706]                           dc.b $00
[000ba707]                           dc.b $7f
[000ba708]                           dc.w $ffff
[000ba70a]                           dc.w $f000
[000ba70c]                           dc.b $00
[000ba70d]                           dc.b $7f
[000ba70e]                           dc.w $ffc0
[000ba710]                           dc.w $7000
[000ba712]                           dc.b $00
[000ba713]                           dc.b $7f
[000ba714]                           dc.w $ffff
[000ba716]                           dc.w $f000
[000ba718]                           dc.b $00
[000ba719]                           dc.b $7f
[000ba71a]                           dc.w $ffff
[000ba71c]                           dc.w $f000
[000ba71e]                           dc.b $00
[000ba71f]                           dc.b $7f
[000ba720]                           dc.w $ff00
[000ba722]                           dc.b $00
[000ba723]                           dc.b $00
[000ba724]                           dc.b $00
[000ba725]                           dc.b $7f
[000ba726]                           dc.w $ff00
[000ba728]                           dc.b $00
[000ba729]                           dc.b $00
[000ba72a]                           dc.b $00
[000ba72b]                           dc.b $00
[000ba72c]                           dc.b $00
[000ba72d]                           dc.b $00
[000ba72e]                           dc.b $00
[000ba72f]                           dc.b $00
[000ba730]                           dc.b $00
[000ba731]                           dc.b $00
[000ba732]                           dc.b $00
[000ba733]                           dc.b $00
[000ba734]                           dc.b $00
[000ba735]                           dc.b $00
[000ba736]                           dc.b $00
[000ba737]                           dc.b $00
[000ba738]                           dc.b $00
[000ba739]                           dc.b $00
[000ba73a]                           dc.b $00
[000ba73b]                           dc.b $00
[000ba73c]                           dc.b $00
[000ba73d]                           dc.b $00
[000ba73e]                           dc.b $00
[000ba73f]                           dc.b $00
[000ba740]                           dc.b $00
[000ba741]                           dc.b $00
[000ba742]                           dc.b $00
[000ba743]                           dc.b $00
[000ba744]                           dc.b $00
[000ba745]                           dc.b $00
[000ba746]                           dc.b $00
[000ba747]                           dc.b $00
[000ba748]                           dc.b $00
[000ba749]                           dc.b $00
[000ba74a]                           dc.b $00
[000ba74b]                           dc.b $00
[000ba74c]                           dc.b $00
[000ba74d]                           dc.b $00
[000ba74e]                           dc.b $00
[000ba74f]                           dc.b $00
[000ba750]                           dc.b $00
[000ba751]                           dc.b $00
[000ba752]                           dc.b $00
[000ba753]                           dc.b $00
[000ba754]                           dc.b $00
[000ba755]                           dc.b $00
[000ba756]                           dc.b $00
[000ba757]                           dc.b $00
[000ba758]                           dc.b $00
[000ba759]                           dc.b $00
[000ba75a]                           dc.b $00
[000ba75b]                           dc.b $00
[000ba75c]                           dc.b $00
[000ba75d]                           dc.b $00
[000ba75e]                           dc.b $00
[000ba75f]                           dc.b $00
[000ba760]                           dc.b $00
[000ba761]                           dc.b $00
[000ba762]                           dc.b $00
[000ba763]                           dc.b $00
[000ba764]                           dc.b $00
[000ba765]                           dc.b $00
[000ba766]                           dc.b $00
[000ba767]                           dc.b $00
[000ba768]                           dc.b $00
[000ba769]                           dc.b $00
[000ba76a]                           dc.b $00
[000ba76b]                           dc.b $00
[000ba76c]                           dc.b $00
[000ba76d]                           dc.b $00
[000ba76e]                           dc.b $00
[000ba76f]                           dc.b $00
[000ba770]                           dc.b $00
[000ba771]                           dc.b $00
[000ba772]                           dc.b $00
[000ba773]                           dc.b $7f
[000ba774]                           dc.w $ff00
[000ba776]                           dc.b $00
[000ba777]                           dc.b $00
[000ba778]                           dc.b $00
[000ba779]                           dc.b $7f
[000ba77a]                           dc.w $ff00
[000ba77c]                           dc.b $00
[000ba77d]                           dc.b $00
[000ba77e]                           dc.b $00
[000ba77f]                           dc.b $7f
[000ba780]                           dc.w $ff00
[000ba782]                           dc.b $00
[000ba783]                           dc.b $00
[000ba784]                           dc.b $00
[000ba785]                           dc.b $7f
[000ba786]                           dc.w $ff00
[000ba788]                           dc.b $00
[000ba789]                           dc.b $00
[000ba78a]                           dc.b $00
[000ba78b]                           dc.b $7f
[000ba78c]                           dc.w $ff00
[000ba78e]                           dc.b $00
[000ba78f]                           dc.b $00
[000ba790]                           dc.b $00
[000ba791]                           dc.b $7f
[000ba792]                           dc.w $ff00
[000ba794]                           dc.b $00
[000ba795]                           dc.b $00
[000ba796]                           dc.b $00
[000ba797]                           dc.b $7f
[000ba798]                           dc.w $ff00
[000ba79a]                           dc.b $00
[000ba79b]                           dc.b $00
[000ba79c]                           dc.b $00
[000ba79d]                           dc.b $7f
[000ba79e]                           dc.w $ffff
[000ba7a0]                           dc.w $f000
[000ba7a2]                           dc.b $00
[000ba7a3]                           dc.b $70
[000ba7a4]                           dc.w $07ff
[000ba7a6]                           dc.w $f000
[000ba7a8]                           dc.b $00
[000ba7a9]                           dc.b $7f
[000ba7aa]                           dc.w $ffff
[000ba7ac]                           dc.w $f000
[000ba7ae]                           dc.b $00
[000ba7af]                           dc.b $7f
[000ba7b0]                           dc.w $ffff
[000ba7b2]                           dc.w $f000
[000ba7b4]                           dc.b $00
[000ba7b5]                           dc.b $7f
[000ba7b6]                           dc.w $ffff
[000ba7b8]                           dc.w $f000
[000ba7ba]                           dc.b $00
[000ba7bb]                           dc.b $7f
[000ba7bc]                           dc.w $ffc0
[000ba7be]                           dc.w $7000
[000ba7c0]                           dc.b $00
[000ba7c1]                           dc.b $7f
[000ba7c2]                           dc.w $ffff
[000ba7c4]                           dc.w $f000
[000ba7c6]                           dc.b $00
[000ba7c7]                           dc.b $7f
[000ba7c8]                           dc.w $ffff
[000ba7ca]                           dc.w $f000
[000ba7cc]                           dc.b $00
[000ba7cd]                           dc.b $7f
[000ba7ce]                           dc.w $ff00
[000ba7d0]                           dc.b $00
[000ba7d1]                           dc.b $00
[000ba7d2]                           dc.b $00
[000ba7d3]                           dc.b $7f
[000ba7d4]                           dc.w $ff00
[000ba7d6]                           dc.b $00
[000ba7d7]                           dc.b $00
[000ba7d8]                           dc.b $00
[000ba7d9]                           dc.b $00
[000ba7da]                           dc.b $00
[000ba7db]                           dc.b $00
[000ba7dc]                           dc.b $00
[000ba7dd]                           dc.b $00
[000ba7de]                           dc.b $00
[000ba7df]                           dc.b $00
[000ba7e0]                           dc.b $00
[000ba7e1]                           dc.b $00
[000ba7e2]                           dc.b $00
[000ba7e3]                           dc.b $00
[000ba7e4]                           dc.b $00
[000ba7e5]                           dc.b $00
[000ba7e6]                           dc.b $00
[000ba7e7]                           dc.b $00
[000ba7e8]                           dc.b $00
[000ba7e9]                           dc.b $00
[000ba7ea]                           dc.b $00
[000ba7eb]                           dc.b $00
[000ba7ec]                           dc.b $00
[000ba7ed]                           dc.b $00
[000ba7ee]                           dc.b $00
[000ba7ef]                           dc.b $00
[000ba7f0]                           dc.b $00
[000ba7f1]                           dc.b $00
[000ba7f2]                           dc.b $00
[000ba7f3]                           dc.b $00
[000ba7f4]                           dc.b $00
[000ba7f5]                           dc.b $00
[000ba7f6]                           dc.b $00
[000ba7f7]                           dc.b $00
[000ba7f8]                           dc.b $00
[000ba7f9]                           dc.b $00
[000ba7fa]                           dc.b $00
[000ba7fb]                           dc.b $00
[000ba7fc]                           dc.b $00
[000ba7fd]                           dc.b $00
[000ba7fe]                           dc.b $00
[000ba7ff]                           dc.b $00
[000ba800]                           dc.b $00
[000ba801]                           dc.b $00
[000ba802]                           dc.b $00
[000ba803]                           dc.b $00
[000ba804]                           dc.b $00
[000ba805]                           dc.b $00
[000ba806]                           dc.b $00
[000ba807]                           dc.b $00
[000ba808]                           dc.b $00
[000ba809]                           dc.b $00
[000ba80a]                           dc.b $00
[000ba80b]                           dc.b $00
[000ba80c]                           dc.b $00
[000ba80d]                           dc.b $00
[000ba80e]                           dc.b $00
[000ba80f]                           dc.b $00
[000ba810]                           dc.b $00
[000ba811]                           dc.b $00
[000ba812]                           dc.b $00
[000ba813]                           dc.b $00
[000ba814]                           dc.b $00
[000ba815]                           dc.b $00
[000ba816]                           dc.b $00
[000ba817]                           dc.b $00
[000ba818]                           dc.b $00
[000ba819]                           dc.b $00
[000ba81a]                           dc.b $00
[000ba81b]                           dc.b $00
[000ba81c]                           dc.b $00
[000ba81d]                           dc.b $00
[000ba81e]                           dc.b $00
[000ba81f]                           dc.b $00
[000ba820]                           dc.b $00
[000ba821]                           dc.b $7f
[000ba822]                           dc.w $ff00
[000ba824]                           dc.b $00
[000ba825]                           dc.b $00
[000ba826]                           dc.b $00
[000ba827]                           dc.b $40
[000ba828]                           dc.w $0180
[000ba82a]                           dc.b $00
[000ba82b]                           dc.b $00
[000ba82c]                           dc.b $00
[000ba82d]                           dc.b $4f
[000ba82e]                           dc.w $f980
[000ba830]                           dc.b $00
[000ba831]                           dc.b $00
[000ba832]                           dc.b $00
[000ba833]                           dc.b $40
[000ba834]                           dc.w $0180
[000ba836]                           dc.b $00
[000ba837]                           dc.b $00
[000ba838]                           dc.b $00
[000ba839]                           dc.b $40
[000ba83a]                           dc.w $0180
[000ba83c]                           dc.b $00
[000ba83d]                           dc.b $00
[000ba83e]                           dc.b $00
[000ba83f]                           dc.b $55
[000ba840]                           dc.w $5580
[000ba842]                           dc.b $00
[000ba843]                           dc.b $00
[000ba844]                           dc.b $00
[000ba845]                           dc.b $40
[000ba846]                           dc.w $0180
[000ba848]                           dc.b $00
[000ba849]                           dc.b $00
[000ba84a]                           dc.b $00
[000ba84b]                           dc.b $7f
[000ba84c]                           dc.w $ffff
[000ba84e]                           dc.w $f000
[000ba850]                           dc.b $00
[000ba851]                           dc.b $70
[000ba852]                           dc.w $0700
[000ba854]                           dc.w $1800
[000ba856]                           dc.b $00
[000ba857]                           dc.b $7f
[000ba858]                           dc.w $ff3f
[000ba85a]                           dc.w $9800
[000ba85c]                           dc.b $00
[000ba85d]                           dc.b $40
[000ba85e]                           dc.w $0100
[000ba860]                           dc.w $1800
[000ba862]                           dc.b $00
[000ba863]                           dc.b $4f
[000ba864]                           dc.w $f9ff
[000ba866]                           dc.w $f800
[000ba868]                           dc.b $00
[000ba869]                           dc.b $40
[000ba86a]                           dc.w $01c0
[000ba86c]                           dc.w $7800
[000ba86e]                           dc.b $00
[000ba86f]                           dc.b $40
[000ba870]                           dc.w $01ff
[000ba872]                           dc.w $f800
[000ba874]                           dc.b $00
[000ba875]                           dc.b $4f
[000ba876]                           dc.w $f9ff
[000ba878]                           dc.w $f800
[000ba87a]                           dc.b $00
[000ba87b]                           dc.b $40
[000ba87c]                           dc.w $01ff
[000ba87e]                           dc.w $f800
[000ba880]                           dc.b $00
[000ba881]                           dc.b $7f
[000ba882]                           dc.w $ff80
[000ba884]                           dc.b $00
[000ba885]                           dc.b $00
[000ba886]                           dc.b $00
[000ba887]                           dc.b $3f
[000ba888]                           dc.w $ff80
[000ba88a]                           dc.b $00
[000ba88b]                           dc.b $00
[000ba88c]                           dc.b $00
[000ba88d]                           dc.b $00
[000ba88e]                           dc.b $00
[000ba88f]                           dc.b $00
[000ba890]                           dc.b $00
[000ba891]                           dc.b $00
[000ba892]                           dc.b $00
[000ba893]                           dc.b $00
[000ba894]                           dc.b $00
[000ba895]                           dc.b $00
[000ba896]                           dc.b $00
[000ba897]                           dc.b $00
[000ba898]                           dc.b $00
[000ba899]                           dc.b $00
[000ba89a]                           dc.b $00
[000ba89b]                           dc.b $00
[000ba89c]                           dc.b $00
[000ba89d]                           dc.b $00
[000ba89e]                           dc.b $00
[000ba89f]                           dc.b $00
[000ba8a0]                           dc.b $00
[000ba8a1]                           dc.b $00
[000ba8a2]                           dc.b $00
[000ba8a3]                           dc.b $00
[000ba8a4]                           dc.b $00
[000ba8a5]                           dc.b $00
[000ba8a6]                           dc.b $00
[000ba8a7]                           dc.b $00
[000ba8a8]                           dc.b $00
[000ba8a9]                           dc.b $00
DATAS_20:
[000ba8aa]                           dc.b $00
[000ba8ab]                           dc.b $00
[000ba8ac]                           dc.b $00
[000ba8ad]                           dc.b $00
[000ba8ae]                           dc.b $00
[000ba8af]                           dc.b $00
[000ba8b0]                           dc.b $00
[000ba8b1]                           dc.b $00
[000ba8b2]                           dc.b $00
[000ba8b3]                           dc.b $00
[000ba8b4]                           dc.b $00
[000ba8b5]                           dc.b $00
[000ba8b6]                           dc.b $00
[000ba8b7]                           dc.b $00
[000ba8b8]                           dc.b $00
[000ba8b9]                           dc.b $00
[000ba8ba]                           dc.b $00
[000ba8bb]                           dc.b $00
[000ba8bc]                           dc.b $00
[000ba8bd]                           dc.b $00
[000ba8be]                           dc.b $00
[000ba8bf]                           dc.b $00
[000ba8c0]                           dc.b $00
[000ba8c1]                           dc.b $00
[000ba8c2]                           dc.b $00
[000ba8c3]                           dc.b $00
[000ba8c4]                           dc.b $00
[000ba8c5]                           dc.b $00
[000ba8c6]                           dc.b $00
[000ba8c7]                           dc.b $00
[000ba8c8]                           dc.b $00
[000ba8c9]                           dc.b $00
[000ba8ca]                           dc.b $00
[000ba8cb]                           dc.b $00
[000ba8cc]                           dc.b $00
[000ba8cd]                           dc.b $00
[000ba8ce]                           dc.b $00
[000ba8cf]                           dc.b $7f
[000ba8d0]                           dc.w $ff00
[000ba8d2]                           dc.b $00
[000ba8d3]                           dc.b $00
[000ba8d4]                           dc.b $00
[000ba8d5]                           dc.b $7f
[000ba8d6]                           dc.w $ff80
[000ba8d8]                           dc.b $00
[000ba8d9]                           dc.b $00
[000ba8da]                           dc.b $00
[000ba8db]                           dc.b $7f
[000ba8dc]                           dc.w $ff80
[000ba8de]                           dc.b $00
[000ba8df]                           dc.b $00
[000ba8e0]                           dc.b $00
[000ba8e1]                           dc.b $7f
[000ba8e2]                           dc.w $ff80
[000ba8e4]                           dc.b $00
[000ba8e5]                           dc.b $00
[000ba8e6]                           dc.b $00
[000ba8e7]                           dc.b $7f
[000ba8e8]                           dc.w $ff80
[000ba8ea]                           dc.b $00
[000ba8eb]                           dc.b $00
[000ba8ec]                           dc.b $00
[000ba8ed]                           dc.b $7f
[000ba8ee]                           dc.w $ff80
[000ba8f0]                           dc.b $00
[000ba8f1]                           dc.b $00
[000ba8f2]                           dc.b $00
[000ba8f3]                           dc.b $7f
[000ba8f4]                           dc.w $ff80
[000ba8f6]                           dc.b $00
[000ba8f7]                           dc.b $00
[000ba8f8]                           dc.b $00
[000ba8f9]                           dc.b $7f
[000ba8fa]                           dc.w $ffff
[000ba8fc]                           dc.w $f000
[000ba8fe]                           dc.b $00
[000ba8ff]                           dc.b $7f
[000ba900]                           dc.w $ffff
[000ba902]                           dc.w $f800
[000ba904]                           dc.b $00
[000ba905]                           dc.b $7f
[000ba906]                           dc.w $ffff
[000ba908]                           dc.w $f800
[000ba90a]                           dc.b $00
[000ba90b]                           dc.b $7f
[000ba90c]                           dc.w $ffff
[000ba90e]                           dc.w $f800
[000ba910]                           dc.b $00
[000ba911]                           dc.b $7f
[000ba912]                           dc.w $ffff
[000ba914]                           dc.w $f800
[000ba916]                           dc.b $00
[000ba917]                           dc.b $7f
[000ba918]                           dc.w $ffff
[000ba91a]                           dc.w $f800
[000ba91c]                           dc.b $00
[000ba91d]                           dc.b $7f
[000ba91e]                           dc.w $ffff
[000ba920]                           dc.w $f800
[000ba922]                           dc.b $00
[000ba923]                           dc.b $7f
[000ba924]                           dc.w $ffff
[000ba926]                           dc.w $f800
[000ba928]                           dc.b $00
[000ba929]                           dc.b $7f
[000ba92a]                           dc.w $ffff
[000ba92c]                           dc.w $f800
[000ba92e]                           dc.b $00
[000ba92f]                           dc.b $7f
[000ba930]                           dc.w $ff80
[000ba932]                           dc.b $00
[000ba933]                           dc.b $00
[000ba934]                           dc.b $00
[000ba935]                           dc.b $3f
[000ba936]                           dc.w $ff80
[000ba938]                           dc.b $00
[000ba939]                           dc.b $00
[000ba93a]                           dc.b $00
[000ba93b]                           dc.b $00
[000ba93c]                           dc.b $00
[000ba93d]                           dc.b $00
[000ba93e]                           dc.b $00
[000ba93f]                           dc.b $00
[000ba940]                           dc.b $00
[000ba941]                           dc.b $00
[000ba942]                           dc.b $00
[000ba943]                           dc.b $00
[000ba944]                           dc.b $00
[000ba945]                           dc.b $00
[000ba946]                           dc.b $00
[000ba947]                           dc.b $00
[000ba948]                           dc.b $00
[000ba949]                           dc.b $00
[000ba94a]                           dc.b $00
[000ba94b]                           dc.b $00
[000ba94c]                           dc.b $00
[000ba94d]                           dc.b $00
[000ba94e]                           dc.b $00
[000ba94f]                           dc.b $00
[000ba950]                           dc.b $00
[000ba951]                           dc.b $00
[000ba952]                           dc.b $00
[000ba953]                           dc.b $00
[000ba954]                           dc.b $00
[000ba955]                           dc.b $00
[000ba956]                           dc.b $00
[000ba957]                           dc.b $00
DATAS_21:
[000ba958]                           dc.b $00
[000ba959]                           dc.b $00
[000ba95a]                           dc.b $00
[000ba95b]                           dc.b $00
[000ba95c]                           dc.w $02f0
[000ba95e]                           dc.b $00
[000ba95f]                           dc.b $00
[000ba960]                           dc.b $00
[000ba961]                           dc.b $00
[000ba962]                           dc.b $00
[000ba963]                           dc.b $00
[000ba964]                           dc.w $7fff
[000ba966]                           dc.w $ffff
[000ba968]                           dc.w $fffe
[000ba96a]                           dc.w $4000
[000ba96c]                           dc.b $00
[000ba96d]                           dc.b $00
[000ba96e]                           dc.b $00
[000ba96f]                           dc.b $02
[000ba970]                           dc.w $5fff
[000ba972]                           dc.w $ffff
[000ba974]                           dc.w $fffa
[000ba976]                           dc.w $5800
[000ba978]                           dc.w $03ff
[000ba97a]                           dc.w $fffa
[000ba97c]                           dc.w $5800
[000ba97e]                           dc.w $038f
[000ba980]                           dc.w $f81a
[000ba982]                           dc.w $58ef
[000ba984]                           dc.w $63bf
[000ba986]                           dc.w $ffda
[000ba988]                           dc.w $5800
[000ba98a]                           dc.w $03bf
[000ba98c]                           dc.w $ffda
[000ba98e]                           dc.w $5800
[000ba990]                           dc.w $03bf
[000ba992]                           dc.w $ffda
[000ba994]                           dc.w $5fff
[000ba996]                           dc.w $ffbf
[000ba998]                           dc.w $ffda
[000ba99a]                           dc.w $5fff
[000ba99c]                           dc.w $ffbf
[000ba99e]                           dc.w $ffda
[000ba9a0]                           dc.w $5800
[000ba9a2]                           dc.w $03bf
[000ba9a4]                           dc.w $ffda
[000ba9a6]                           dc.w $5800
[000ba9a8]                           dc.w $03bf
[000ba9aa]                           dc.w $ffda
[000ba9ac]                           dc.w $58f6
[000ba9ae]                           dc.w $e3bf
[000ba9b0]                           dc.w $ffda
[000ba9b2]                           dc.w $5800
[000ba9b4]                           dc.w $03bf
[000ba9b6]                           dc.w $ffda
[000ba9b8]                           dc.w $5800
[000ba9ba]                           dc.w $0380
[000ba9bc]                           dc.b $00
[000ba9bd]                           dc.b $1a
[000ba9be]                           dc.w $5fff
[000ba9c0]                           dc.w $ffff
[000ba9c2]                           dc.w $fffa
[000ba9c4]                           dc.w $5fff
[000ba9c6]                           dc.w $ffff
[000ba9c8]                           dc.w $fffa
[000ba9ca]                           dc.w $5fff
[000ba9cc]                           dc.w $ffff
[000ba9ce]                           dc.w $fffa
[000ba9d0]                           dc.w $5fff
[000ba9d2]                           dc.w $ffff
[000ba9d4]                           dc.w $fffa
[000ba9d6]                           dc.w $5fff
[000ba9d8]                           dc.w $ffff
[000ba9da]                           dc.w $fffa
[000ba9dc]                           dc.w $5fc0
[000ba9de]                           dc.w $07c0
[000ba9e0]                           dc.w $01fa
[000ba9e2]                           dc.w $5fdf
[000ba9e4]                           dc.w $f7df
[000ba9e6]                           dc.w $fdfa
[000ba9e8]                           dc.w $5fdf
[000ba9ea]                           dc.w $f7df
[000ba9ec]                           dc.w $fdfa
[000ba9ee]                           dc.w $5fdf
[000ba9f0]                           dc.w $f7df
[000ba9f2]                           dc.w $fdfa
[000ba9f4]                           dc.w $5fc0
[000ba9f6]                           dc.w $07c0
[000ba9f8]                           dc.w $01fa
[000ba9fa]                           dc.w $5fff
[000ba9fc]                           dc.w $ffff
[000ba9fe]                           dc.w $fffa
[000baa00]                           dc.w $5fff
[000baa02]                           dc.w $ffff
[000baa04]                           dc.w $fffa
[000baa06]                           dc.w $4000
[000baa08]                           dc.b $00
[000baa09]                           dc.b $00
[000baa0a]                           dc.b $00
[000baa0b]                           dc.b $02
[000baa0c]                           dc.w $7fff
[000baa0e]                           dc.w $ffff
[000baa10]                           dc.w $fffe
[000baa12]                           dc.b $00
[000baa13]                           dc.b $00
[000baa14]                           dc.b $00
[000baa15]                           dc.b $00
[000baa16]                           dc.b $00
[000baa17]                           dc.b $00
[000baa18]                           dc.b $00
[000baa19]                           dc.b $00
[000baa1a]                           dc.b $00
[000baa1b]                           dc.b $00
[000baa1c]                           dc.b $00
[000baa1d]                           dc.b $00
[000baa1e]                           dc.w $7fff
[000baa20]                           dc.w $ffff
[000baa22]                           dc.w $fffe
[000baa24]                           dc.w $4000
[000baa26]                           dc.b $00
[000baa27]                           dc.b $00
[000baa28]                           dc.b $00
[000baa29]                           dc.b $02
[000baa2a]                           dc.w $5fff
[000baa2c]                           dc.w $ffff
[000baa2e]                           dc.w $fffa
[000baa30]                           dc.w $5800
[000baa32]                           dc.w $03ff
[000baa34]                           dc.w $fffa
[000baa36]                           dc.w $5800
[000baa38]                           dc.w $038f
[000baa3a]                           dc.w $f81a
[000baa3c]                           dc.w $58ef
[000baa3e]                           dc.w $63bf
[000baa40]                           dc.w $ffda
[000baa42]                           dc.w $5800
[000baa44]                           dc.w $03bf
[000baa46]                           dc.w $ffda
[000baa48]                           dc.w $5800
[000baa4a]                           dc.w $03bf
[000baa4c]                           dc.w $ffda
[000baa4e]                           dc.w $5fff
[000baa50]                           dc.w $ffbf
[000baa52]                           dc.w $ffda
[000baa54]                           dc.w $5fff
[000baa56]                           dc.w $ffbf
[000baa58]                           dc.w $ffda
[000baa5a]                           dc.w $5800
[000baa5c]                           dc.w $03bf
[000baa5e]                           dc.w $ffda
[000baa60]                           dc.w $5800
[000baa62]                           dc.w $03bf
[000baa64]                           dc.w $ffda
[000baa66]                           dc.w $58f6
[000baa68]                           dc.w $e3bf
[000baa6a]                           dc.w $ffda
[000baa6c]                           dc.w $5800
[000baa6e]                           dc.w $03bf
[000baa70]                           dc.w $ffda
[000baa72]                           dc.w $5800
[000baa74]                           dc.w $0380
[000baa76]                           dc.b $00
[000baa77]                           dc.b $1a
[000baa78]                           dc.w $5fff
[000baa7a]                           dc.w $ffff
[000baa7c]                           dc.w $fffa
[000baa7e]                           dc.w $5fff
[000baa80]                           dc.w $ffff
[000baa82]                           dc.w $fffa
[000baa84]                           dc.w $5fff
[000baa86]                           dc.w $ffff
[000baa88]                           dc.w $fffa
[000baa8a]                           dc.w $5fff
[000baa8c]                           dc.w $ffff
[000baa8e]                           dc.w $fffa
[000baa90]                           dc.w $5fff
[000baa92]                           dc.w $ffff
[000baa94]                           dc.w $fffa
[000baa96]                           dc.w $5fc0
[000baa98]                           dc.w $07c0
[000baa9a]                           dc.w $01fa
[000baa9c]                           dc.w $5fdf
[000baa9e]                           dc.w $f7df
[000baaa0]                           dc.w $fdfa
[000baaa2]                           dc.w $5fdf
[000baaa4]                           dc.w $f7df
[000baaa6]                           dc.w $fdfa
[000baaa8]                           dc.w $5fdf
[000baaaa]                           dc.w $f7df
[000baaac]                           dc.w $fdfa
[000baaae]                           dc.w $5fc0
[000baab0]                           dc.w $07c0
[000baab2]                           dc.w $01fa
[000baab4]                           dc.w $5fff
[000baab6]                           dc.w $ffff
[000baab8]                           dc.w $fffa
[000baaba]                           dc.w $5fff
[000baabc]                           dc.w $ffff
[000baabe]                           dc.w $fffa
[000baac0]                           dc.w $4000
[000baac2]                           dc.b $00
[000baac3]                           dc.b $00
[000baac4]                           dc.b $00
[000baac5]                           dc.b $02
[000baac6]                           dc.w $7fff
[000baac8]                           dc.w $ffff
[000baaca]                           dc.w $fffe
[000baacc]                           dc.b $00
[000baacd]                           dc.b $00
[000baace]                           dc.b $00
[000baacf]                           dc.b $00
[000baad0]                           dc.b $00
[000baad1]                           dc.b $00
[000baad2]                           dc.b $00
[000baad3]                           dc.b $00
[000baad4]                           dc.b $00
[000baad5]                           dc.b $00
[000baad6]                           dc.b $00
[000baad7]                           dc.b $00
[000baad8]                           dc.w $7fff
[000baada]                           dc.w $ffff
[000baadc]                           dc.w $fffe
[000baade]                           dc.w $4000
[000baae0]                           dc.b $00
[000baae1]                           dc.b $00
[000baae2]                           dc.b $00
[000baae3]                           dc.b $02
[000baae4]                           dc.w $5fff
[000baae6]                           dc.w $ffff
[000baae8]                           dc.w $fffa
[000baaea]                           dc.w $5800
[000baaec]                           dc.w $03ff
[000baaee]                           dc.w $fffa
[000baaf0]                           dc.w $5800
[000baaf2]                           dc.w $038f
[000baaf4]                           dc.w $f81a
[000baaf6]                           dc.w $58ef
[000baaf8]                           dc.w $63bf
[000baafa]                           dc.w $ffda
[000baafc]                           dc.w $5800
[000baafe]                           dc.w $03bf
[000bab00]                           dc.w $ffda
[000bab02]                           dc.w $5800
[000bab04]                           dc.w $03bf
[000bab06]                           dc.w $ffda
[000bab08]                           dc.w $5fff
[000bab0a]                           dc.w $ffbf
[000bab0c]                           dc.w $ffda
[000bab0e]                           dc.w $5fff
[000bab10]                           dc.w $ffbf
[000bab12]                           dc.w $ffda
[000bab14]                           dc.w $5800
[000bab16]                           dc.w $03bf
[000bab18]                           dc.w $ffda
[000bab1a]                           dc.w $5800
[000bab1c]                           dc.w $03bf
[000bab1e]                           dc.w $ffda
[000bab20]                           dc.w $58f6
[000bab22]                           dc.w $e3bf
[000bab24]                           dc.w $ffda
[000bab26]                           dc.w $5800
[000bab28]                           dc.w $03bf
[000bab2a]                           dc.w $ffda
[000bab2c]                           dc.w $5800
[000bab2e]                           dc.w $0380
[000bab30]                           dc.b $00
[000bab31]                           dc.b $1a
[000bab32]                           dc.w $5fff
[000bab34]                           dc.w $ffff
[000bab36]                           dc.w $fffa
[000bab38]                           dc.w $5fff
[000bab3a]                           dc.w $ffff
[000bab3c]                           dc.w $fffa
[000bab3e]                           dc.w $5fff
[000bab40]                           dc.w $ffff
[000bab42]                           dc.w $fffa
[000bab44]                           dc.w $5fff
[000bab46]                           dc.w $ffff
[000bab48]                           dc.w $fffa
[000bab4a]                           dc.w $5fff
[000bab4c]                           dc.w $ffff
[000bab4e]                           dc.w $fffa
[000bab50]                           dc.w $5fc0
[000bab52]                           dc.w $07c0
[000bab54]                           dc.w $01fa
[000bab56]                           dc.w $5fdf
[000bab58]                           dc.w $f7df
[000bab5a]                           dc.w $fdfa
[000bab5c]                           dc.w $5fdf
[000bab5e]                           dc.w $f7df
[000bab60]                           dc.w $fdfa
[000bab62]                           dc.w $5fdf
[000bab64]                           dc.w $f7df
[000bab66]                           dc.w $fdfa
[000bab68]                           dc.w $5fc0
[000bab6a]                           dc.w $07c0
[000bab6c]                           dc.w $01fa
[000bab6e]                           dc.w $5fff
[000bab70]                           dc.w $ffff
[000bab72]                           dc.w $fffa
[000bab74]                           dc.w $5fff
[000bab76]                           dc.w $ffff
[000bab78]                           dc.w $fffa
[000bab7a]                           dc.w $4000
[000bab7c]                           dc.b $00
[000bab7d]                           dc.b $00
[000bab7e]                           dc.b $00
[000bab7f]                           dc.b $02
[000bab80]                           dc.w $7fff
[000bab82]                           dc.w $ffff
[000bab84]                           dc.w $fffe
[000bab86]                           dc.b $00
[000bab87]                           dc.b $00
[000bab88]                           dc.b $00
[000bab89]                           dc.b $00
[000bab8a]                           dc.b $00
[000bab8b]                           dc.b $00
[000bab8c]                           dc.b $00
[000bab8d]                           dc.b $00
[000bab8e]                           dc.b $00
[000bab8f]                           dc.b $00
[000bab90]                           dc.b $00
[000bab91]                           dc.b $00
[000bab92]                           dc.w $7fff
[000bab94]                           dc.w $ffff
[000bab96]                           dc.w $fffe
[000bab98]                           dc.w $4000
[000bab9a]                           dc.b $00
[000bab9b]                           dc.b $00
[000bab9c]                           dc.b $00
[000bab9d]                           dc.b $06
[000bab9e]                           dc.w $4000
[000baba0]                           dc.b $00
[000baba1]                           dc.b $00
[000baba2]                           dc.b $00
[000baba3]                           dc.b $06
[000baba4]                           dc.w $47ff
[000baba6]                           dc.w $fc07
[000baba8]                           dc.w $f006
[000babaa]                           dc.w $4400
[000babac]                           dc.w $0470
[000babae]                           dc.w $07e6
[000babb0]                           dc.w $44ef
[000babb2]                           dc.w $6440
[000babb4]                           dc.b $00
[000babb5]                           dc.b $26
[000babb6]                           dc.w $4400
[000babb8]                           dc.w $0453
[000babba]                           dc.w $dfa6
[000babbc]                           dc.w $47ff
[000babbe]                           dc.w $fc40
[000babc0]                           dc.b $00
[000babc1]                           dc.b $26
[000babc2]                           dc.w $4000
[000babc4]                           dc.b $00
[000babc5]                           dc.b $40
[000babc6]                           dc.b $00
[000babc7]                           dc.b $26
[000babc8]                           dc.w $4000
[000babca]                           dc.b $00
[000babcb]                           dc.b $53
[000babcc]                           dc.w $f7a6
[000babce]                           dc.w $47ff
[000babd0]                           dc.w $fc40
[000babd2]                           dc.b $00
[000babd3]                           dc.b $26
[000babd4]                           dc.w $4400
[000babd6]                           dc.w $0440
[000babd8]                           dc.b $00
[000babd9]                           dc.b $26
[000babda]                           dc.w $44f6
[000babdc]                           dc.w $e453
[000babde]                           dc.w $bfa6
[000babe0]                           dc.w $4400
[000babe2]                           dc.w $0440
[000babe4]                           dc.b $00
[000babe5]                           dc.b $26
[000babe6]                           dc.w $47ff
[000babe8]                           dc.w $fc7f
[000babea]                           dc.w $ffe6
[000babec]                           dc.w $4000
[000babee]                           dc.b $00
[000babef]                           dc.b $00
[000babf0]                           dc.b $00
[000babf1]                           dc.b $06
[000babf2]                           dc.w $4000
[000babf4]                           dc.b $00
[000babf5]                           dc.b $00
[000babf6]                           dc.b $00
[000babf7]                           dc.b $06
[000babf8]                           dc.w $4000
[000babfa]                           dc.b $00
[000babfb]                           dc.b $00
[000babfc]                           dc.b $00
[000babfd]                           dc.b $06
[000babfe]                           dc.w $4000
[000bac00]                           dc.b $00
[000bac01]                           dc.b $00
[000bac02]                           dc.b $00
[000bac03]                           dc.b $06
[000bac04]                           dc.w $407f
[000bac06]                           dc.w $fc7f
[000bac08]                           dc.w $ff06
[000bac0a]                           dc.w $4040
[000bac0c]                           dc.w $0c40
[000bac0e]                           dc.w $0306
[000bac10]                           dc.w $4040
[000bac12]                           dc.w $0c40
[000bac14]                           dc.w $0306
[000bac16]                           dc.w $4047
[000bac18]                           dc.w $cc47
[000bac1a]                           dc.w $f306
[000bac1c]                           dc.w $4040
[000bac1e]                           dc.w $0c40
[000bac20]                           dc.w $0306
[000bac22]                           dc.w $407f
[000bac24]                           dc.w $fc7f
[000bac26]                           dc.w $ff06
[000bac28]                           dc.w $407f
[000bac2a]                           dc.w $fc7f
[000bac2c]                           dc.w $ff06
[000bac2e]                           dc.w $4000
[000bac30]                           dc.b $00
[000bac31]                           dc.b $00
[000bac32]                           dc.b $00
[000bac33]                           dc.b $06
[000bac34]                           dc.w $7fff
[000bac36]                           dc.w $ffff
[000bac38]                           dc.w $fffe
[000bac3a]                           dc.w $7fff
[000bac3c]                           dc.w $ffff
[000bac3e]                           dc.w $fffe
[000bac40]                           dc.b $00
[000bac41]                           dc.b $00
[000bac42]                           dc.b $00
[000bac43]                           dc.b $00
[000bac44]                           dc.b $00
[000bac45]                           dc.b $00
DATAS_22:
[000bac46]                           dc.b $00
[000bac47]                           dc.b $00
[000bac48]                           dc.b $00
[000bac49]                           dc.b $00
[000bac4a]                           dc.b $00
[000bac4b]                           dc.b $00
[000bac4c]                           dc.w $7fff
[000bac4e]                           dc.w $ffff
[000bac50]                           dc.w $fffe
[000bac52]                           dc.w $7fff
[000bac54]                           dc.w $ffff
[000bac56]                           dc.w $fffe
[000bac58]                           dc.w $7fff
[000bac5a]                           dc.w $ffff
[000bac5c]                           dc.w $fffe
[000bac5e]                           dc.w $7fff
[000bac60]                           dc.w $ffff
[000bac62]                           dc.w $fffe
[000bac64]                           dc.w $7fff
[000bac66]                           dc.w $ffff
[000bac68]                           dc.w $fffe
[000bac6a]                           dc.w $7fff
[000bac6c]                           dc.w $ffff
[000bac6e]                           dc.w $fffe
[000bac70]                           dc.w $7fff
[000bac72]                           dc.w $ffff
[000bac74]                           dc.w $fffe
[000bac76]                           dc.w $7fff
[000bac78]                           dc.w $ffff
[000bac7a]                           dc.w $fffe
[000bac7c]                           dc.w $7fff
[000bac7e]                           dc.w $ffff
[000bac80]                           dc.w $fffe
[000bac82]                           dc.w $7fff
[000bac84]                           dc.w $ffff
[000bac86]                           dc.w $fffe
[000bac88]                           dc.w $7fff
[000bac8a]                           dc.w $ffff
[000bac8c]                           dc.w $fffe
[000bac8e]                           dc.w $7fff
[000bac90]                           dc.w $ffff
[000bac92]                           dc.w $fffe
[000bac94]                           dc.w $7fff
[000bac96]                           dc.w $ffff
[000bac98]                           dc.w $fffe
[000bac9a]                           dc.w $7fff
[000bac9c]                           dc.w $ffff
[000bac9e]                           dc.w $fffe
[000baca0]                           dc.w $7fff
[000baca2]                           dc.w $ffff
[000baca4]                           dc.w $fffe
[000baca6]                           dc.w $7fff
[000baca8]                           dc.w $ffff
[000bacaa]                           dc.w $fffe
[000bacac]                           dc.w $7fff
[000bacae]                           dc.w $ffff
[000bacb0]                           dc.w $fffe
[000bacb2]                           dc.w $7fff
[000bacb4]                           dc.w $ffff
[000bacb6]                           dc.w $fffe
[000bacb8]                           dc.w $7fff
[000bacba]                           dc.w $ffff
[000bacbc]                           dc.w $fffe
[000bacbe]                           dc.w $7fff
[000bacc0]                           dc.w $ffff
[000bacc2]                           dc.w $fffe
[000bacc4]                           dc.w $7fff
[000bacc6]                           dc.w $ffff
[000bacc8]                           dc.w $fffe
[000bacca]                           dc.w $7fff
[000baccc]                           dc.w $ffff
[000bacce]                           dc.w $fffe
[000bacd0]                           dc.w $7fff
[000bacd2]                           dc.w $ffff
[000bacd4]                           dc.w $fffe
[000bacd6]                           dc.w $7fff
[000bacd8]                           dc.w $ffff
[000bacda]                           dc.w $fffe
[000bacdc]                           dc.w $7fff
[000bacde]                           dc.w $ffff
[000bace0]                           dc.w $fffe
[000bace2]                           dc.w $7fff
[000bace4]                           dc.w $ffff
[000bace6]                           dc.w $fffe
[000bace8]                           dc.w $7fff
[000bacea]                           dc.w $ffff
[000bacec]                           dc.w $fffe
[000bacee]                           dc.w $7fff
[000bacf0]                           dc.w $ffff
[000bacf2]                           dc.w $fffe
[000bacf4]                           dc.w $7fff
[000bacf6]                           dc.w $ffff
[000bacf8]                           dc.w $fffe
[000bacfa]                           dc.b $00
[000bacfb]                           dc.b $00
[000bacfc]                           dc.b $00
[000bacfd]                           dc.b $00
[000bacfe]                           dc.b $00
[000bacff]                           dc.b $00
TEDI_001:
[000bad00] 000b86b7                  dc.l TEXT_006
[000bad04] 000b86b3                  dc.l TEXT_002
[000bad08] 000b86b3                  dc.l TEXT_002
[000bad0c]                           dc.b $00
[000bad0d]                           dc.b $03
[000bad0e]                           dc.b $00
[000bad0f]                           dc.b $06
[000bad10]                           dc.b $00
[000bad11]                           dc.b $00
[000bad12]                           dc.w $1180
[000bad14]                           dc.b $00
[000bad15]                           dc.b $00
[000bad16]                           dc.b $00
[000bad17]                           dc.b $00
[000bad18]                           dc.b $00
[000bad19]                           dc.b $20
[000bad1a]                           dc.b $00
[000bad1b]                           dc.b $01
TEDI_042:
[000bad1c] 000b885e                  dc.l TEXT_133
[000bad20] 000b86b3                  dc.l TEXT_002
[000bad24] 000b86b3                  dc.l TEXT_002
[000bad28]                           dc.b $00
[000bad29]                           dc.b $03
[000bad2a]                           dc.b $00
[000bad2b]                           dc.b $06
[000bad2c]                           dc.b $00
[000bad2d]                           dc.b $01
[000bad2e]                           dc.w $1180
[000bad30]                           dc.b $00
[000bad31]                           dc.b $00
[000bad32]                           dc.b $00
[000bad33]                           dc.b $00
[000bad34]                           dc.b $00
[000bad35]                           dc.b $07
[000bad36]                           dc.b $00
[000bad37]                           dc.b $01
A_3DBUTTON01:
[000bad38] 0005a4e2                  dc.l A_3Dbutton
[000bad3c]                           dc.w $2011
[000bad3e]                           dc.w $9178
[000bad40] 00059318                  dc.l Auo_string
[000bad44]                           dc.b $00
[000bad45]                           dc.b $00
[000bad46]                           dc.b $00
[000bad47]                           dc.b $00
[000bad48]                           dc.b $00
[000bad49]                           dc.b $00
[000bad4a]                           dc.b $00
[000bad4b]                           dc.b $00
[000bad4c]                           dc.b $00
[000bad4d]                           dc.b $00
[000bad4e]                           dc.b $00
[000bad4f]                           dc.b $00
[000bad50]                           dc.b $00
[000bad51]                           dc.b $00
[000bad52]                           dc.b $00
[000bad53]                           dc.b $00
[000bad54]                           dc.b $00
[000bad55]                           dc.b $00
[000bad56]                           dc.b $00
[000bad57]                           dc.b $00
A_3DBUTTON02:
[000bad58] 0005a4e2                  dc.l A_3Dbutton
[000bad5c]                           dc.w $29f1
[000bad5e]                           dc.w $01f8
[000bad60] 00059318                  dc.l Auo_string
[000bad64]                           dc.b $00
[000bad65]                           dc.b $00
[000bad66]                           dc.b $00
[000bad67]                           dc.b $00
[000bad68]                           dc.b $00
[000bad69]                           dc.b $00
[000bad6a]                           dc.b $00
[000bad6b]                           dc.b $00
[000bad6c]                           dc.b $00
[000bad6d]                           dc.b $00
[000bad6e]                           dc.b $00
[000bad6f]                           dc.b $00
[000bad70]                           dc.b $00
[000bad71]                           dc.b $00
[000bad72]                           dc.b $00
[000bad73]                           dc.b $00
[000bad74]                           dc.b $00
[000bad75]                           dc.b $00
[000bad76]                           dc.b $00
[000bad77]                           dc.b $00
A_3DBUTTON03:
[000bad78] 0005a4e2                  dc.l A_3Dbutton
[000bad7c]                           dc.w $29c1
[000bad7e]                           dc.w $0178
[000bad80] 00059318                  dc.l Auo_string
[000bad84] 000b86b4                  dc.l TEXT_003
[000bad88]                           dc.b $00
[000bad89]                           dc.b $00
[000bad8a]                           dc.b $00
[000bad8b]                           dc.b $00
[000bad8c]                           dc.b $00
[000bad8d]                           dc.b $00
[000bad8e]                           dc.b $00
[000bad8f]                           dc.b $00
[000bad90]                           dc.b $00
[000bad91]                           dc.b $00
[000bad92]                           dc.b $00
[000bad93]                           dc.b $00
[000bad94]                           dc.b $00
[000bad95]                           dc.b $00
[000bad96]                           dc.b $00
[000bad97]                           dc.b $00
A_3DBUTTON04:
[000bad98] 0005a4e2                  dc.l A_3Dbutton
[000bad9c]                           dc.w $09f1
[000bad9e]                           dc.w $0178
[000bada0] 00059318                  dc.l Auo_string
[000bada4] 000b8741                  dc.l TEXT_05
[000bada8]                           dc.b $00
[000bada9]                           dc.b $00
[000badaa]                           dc.b $00
[000badab]                           dc.b $00
[000badac]                           dc.b $00
[000badad]                           dc.b $00
[000badae]                           dc.b $00
[000badaf]                           dc.b $00
[000badb0]                           dc.b $00
[000badb1]                           dc.b $00
[000badb2]                           dc.b $00
[000badb3]                           dc.b $00
[000badb4]                           dc.b $00
[000badb5]                           dc.b $00
[000badb6]                           dc.b $00
[000badb7]                           dc.b $00
A_3DBUTTON05:
[000badb8] 0005a4e2                  dc.l A_3Dbutton
[000badbc]                           dc.w $29c1
[000badbe]                           dc.w $0178
[000badc0] 00059318                  dc.l Auo_string
[000badc4] 000b8985                  dc.l TEXT_301
[000badc8]                           dc.b $00
[000badc9]                           dc.b $00
[000badca]                           dc.b $00
[000badcb]                           dc.b $00
[000badcc]                           dc.b $00
[000badcd]                           dc.b $00
[000badce]                           dc.b $00
[000badcf]                           dc.b $00
[000badd0]                           dc.b $00
[000badd1]                           dc.b $00
[000badd2]                           dc.b $00
[000badd3]                           dc.b $00
[000badd4]                           dc.b $00
[000badd5]                           dc.b $00
[000badd6]                           dc.b $00
[000badd7]                           dc.b $00
A_3DBUTTON06:
[000badd8] 0005a4e2                  dc.l A_3Dbutton
[000baddc]                           dc.w $09f1
[000badde]                           dc.w $0178
[000bade0] 00059318                  dc.l Auo_string
[000bade4] 000b8716                  dc.l TEXT_03
[000bade8]                           dc.b $00
[000bade9]                           dc.b $00
[000badea]                           dc.b $00
[000badeb]                           dc.b $00
[000badec]                           dc.b $00
[000baded]                           dc.b $00
[000badee]                           dc.b $00
[000badef]                           dc.b $00
[000badf0]                           dc.b $00
[000badf1]                           dc.b $00
[000badf2]                           dc.b $00
[000badf3]                           dc.b $00
[000badf4]                           dc.b $00
[000badf5]                           dc.b $00
[000badf6]                           dc.b $00
[000badf7]                           dc.b $00
A_3DBUTTON07:
[000badf8] 0005a4e2                  dc.l A_3Dbutton
[000badfc]                           dc.w $09f1
[000badfe]                           dc.w $0178
[000bae00] 00059318                  dc.l Auo_string
[000bae04] 000b8844                  dc.l TEXT_11
[000bae08]                           dc.b $00
[000bae09]                           dc.b $00
[000bae0a]                           dc.b $00
[000bae0b]                           dc.b $00
[000bae0c]                           dc.b $00
[000bae0d]                           dc.b $00
[000bae0e]                           dc.b $00
[000bae0f]                           dc.b $00
[000bae10]                           dc.b $00
[000bae11]                           dc.b $00
[000bae12]                           dc.b $00
[000bae13]                           dc.b $00
[000bae14]                           dc.b $00
[000bae15]                           dc.b $00
[000bae16]                           dc.b $00
[000bae17]                           dc.b $00
A_3DBUTTON08:
[000bae18] 0005a4e2                  dc.l A_3Dbutton
[000bae1c]                           dc.w $29f1
[000bae1e]                           dc.w $0178
[000bae20] 00059318                  dc.l Auo_string
[000bae24]                           dc.b $00
[000bae25]                           dc.b $00
[000bae26]                           dc.b $00
[000bae27]                           dc.b $00
[000bae28]                           dc.b $00
[000bae29]                           dc.b $00
[000bae2a]                           dc.b $00
[000bae2b]                           dc.b $00
[000bae2c]                           dc.b $00
[000bae2d]                           dc.b $00
[000bae2e]                           dc.b $00
[000bae2f]                           dc.b $00
[000bae30]                           dc.b $00
[000bae31]                           dc.b $00
[000bae32]                           dc.b $00
[000bae33]                           dc.b $00
[000bae34]                           dc.b $00
[000bae35]                           dc.b $00
[000bae36]                           dc.b $00
[000bae37]                           dc.b $00
A_3DBUTTON09:
[000bae38] 0005a4e2                  dc.l A_3Dbutton
[000bae3c]                           dc.w $09f1
[000bae3e]                           dc.w $0178
[000bae40] 00059318                  dc.l Auo_string
[000bae44] 000b88d8                  dc.l TEXT_19
[000bae48]                           dc.b $00
[000bae49]                           dc.b $00
[000bae4a]                           dc.b $00
[000bae4b]                           dc.b $00
[000bae4c]                           dc.b $00
[000bae4d]                           dc.b $00
[000bae4e]                           dc.b $00
[000bae4f]                           dc.b $00
[000bae50]                           dc.b $00
[000bae51]                           dc.b $00
[000bae52]                           dc.b $00
[000bae53]                           dc.b $00
[000bae54]                           dc.b $00
[000bae55]                           dc.b $00
[000bae56]                           dc.b $00
[000bae57]                           dc.b $00
A_3DBUTTON10:
[000bae58] 0005a4e2                  dc.l A_3Dbutton
[000bae5c]                           dc.w $09f1
[000bae5e]                           dc.w $0178
[000bae60] 00059318                  dc.l Auo_string
[000bae64] 000b88e6                  dc.l TEXT_20
[000bae68]                           dc.b $00
[000bae69]                           dc.b $00
[000bae6a]                           dc.b $00
[000bae6b]                           dc.b $00
[000bae6c]                           dc.b $00
[000bae6d]                           dc.b $00
[000bae6e]                           dc.b $00
[000bae6f]                           dc.b $00
[000bae70]                           dc.b $00
[000bae71]                           dc.b $00
[000bae72]                           dc.b $00
[000bae73]                           dc.b $00
[000bae74]                           dc.b $00
[000bae75]                           dc.b $00
[000bae76]                           dc.b $00
[000bae77]                           dc.b $00
A_3DBUTTON11:
[000bae78] 0005a4e2                  dc.l A_3Dbutton
[000bae7c]                           dc.w $09f1
[000bae7e]                           dc.w $0178
[000bae80] 00059318                  dc.l Auo_string
[000bae84] 000b87ee                  dc.l TEXT_092
[000bae88]                           dc.b $00
[000bae89]                           dc.b $00
[000bae8a]                           dc.b $00
[000bae8b]                           dc.b $00
[000bae8c]                           dc.b $00
[000bae8d]                           dc.b $00
[000bae8e]                           dc.b $00
[000bae8f]                           dc.b $00
[000bae90]                           dc.b $00
[000bae91]                           dc.b $00
[000bae92]                           dc.b $00
[000bae93]                           dc.b $00
[000bae94]                           dc.b $00
[000bae95]                           dc.b $00
[000bae96]                           dc.b $00
[000bae97]                           dc.b $00
A_3DBUTTON12:
[000bae98] 0005a4e2                  dc.l A_3Dbutton
[000bae9c]                           dc.w $29f1
[000bae9e]                           dc.w $01f8
[000baea0] 00059318                  dc.l Auo_string
[000baea4]                           dc.b $00
[000baea5]                           dc.b $00
[000baea6]                           dc.b $00
[000baea7]                           dc.b $00
[000baea8]                           dc.b $00
[000baea9]                           dc.b $00
[000baeaa]                           dc.b $00
[000baeab]                           dc.b $00
[000baeac]                           dc.b $00
[000baead]                           dc.b $00
[000baeae]                           dc.b $00
[000baeaf]                           dc.b $00
[000baeb0]                           dc.b $00
[000baeb1]                           dc.b $00
[000baeb2]                           dc.b $00
[000baeb3]                           dc.b $00
[000baeb4]                           dc.b $00
[000baeb5]                           dc.b $00
[000baeb6]                           dc.b $00
[000baeb7]                           dc.b $00
A_3DBUTTON13:
[000baeb8] 0005a4e2                  dc.l A_3Dbutton
[000baebc]                           dc.w $09f1
[000baebe]                           dc.w $0178
[000baec0] 00059318                  dc.l Auo_string
[000baec4] 000b8948                  dc.l TEXT_26
[000baec8]                           dc.b $00
[000baec9]                           dc.b $00
[000baeca]                           dc.b $00
[000baecb]                           dc.b $00
[000baecc]                           dc.b $00
[000baecd]                           dc.b $00
[000baece]                           dc.b $00
[000baecf]                           dc.b $00
[000baed0]                           dc.b $00
[000baed1]                           dc.b $00
[000baed2]                           dc.b $00
[000baed3]                           dc.b $00
[000baed4]                           dc.b $00
[000baed5]                           dc.b $00
[000baed6]                           dc.b $00
[000baed7]                           dc.b $00
A_3DBUTTON14:
[000baed8] 0005a4e2                  dc.l A_3Dbutton
[000baedc]                           dc.w $09f1
[000baede]                           dc.w $0178
[000baee0] 00059318                  dc.l Auo_string
[000baee4] 000b895c                  dc.l TEXT_28
[000baee8]                           dc.b $00
[000baee9]                           dc.b $00
[000baeea]                           dc.b $00
[000baeeb]                           dc.b $00
[000baeec]                           dc.b $00
[000baeed]                           dc.b $00
[000baeee]                           dc.b $00
[000baeef]                           dc.b $00
[000baef0]                           dc.b $00
[000baef1]                           dc.b $00
[000baef2]                           dc.b $00
[000baef3]                           dc.b $00
[000baef4]                           dc.b $00
[000baef5]                           dc.b $00
[000baef6]                           dc.b $00
[000baef7]                           dc.b $00
A_3DBUTTON15:
[000baef8] 0005a4e2                  dc.l A_3Dbutton
[000baefc]                           dc.w $09f1
[000baefe]                           dc.w $0178
[000baf00] 00059318                  dc.l Auo_string
[000baf04] 000b87e6                  dc.l TEXT_091
[000baf08]                           dc.b $00
[000baf09]                           dc.b $00
[000baf0a]                           dc.b $00
[000baf0b]                           dc.b $00
[000baf0c]                           dc.b $00
[000baf0d]                           dc.b $00
[000baf0e]                           dc.b $00
[000baf0f]                           dc.b $00
[000baf10]                           dc.b $00
[000baf11]                           dc.b $00
[000baf12]                           dc.b $00
[000baf13]                           dc.b $00
[000baf14]                           dc.b $00
[000baf15]                           dc.b $00
[000baf16]                           dc.b $00
[000baf17]                           dc.b $00
A_3DBUTTON16:
[000baf18] 0005a4e2                  dc.l A_3Dbutton
[000baf1c]                           dc.w $09f1
[000baf1e]                           dc.w $0178
[000baf20] 00059318                  dc.l Auo_string
[000baf24] 000b87dd                  dc.l TEXT_090
[000baf28]                           dc.b $00
[000baf29]                           dc.b $00
[000baf2a]                           dc.b $00
[000baf2b]                           dc.b $00
[000baf2c]                           dc.b $00
[000baf2d]                           dc.b $00
[000baf2e]                           dc.b $00
[000baf2f]                           dc.b $00
[000baf30]                           dc.b $00
[000baf31]                           dc.b $00
[000baf32]                           dc.b $00
[000baf33]                           dc.b $00
[000baf34]                           dc.b $00
[000baf35]                           dc.b $00
[000baf36]                           dc.b $00
[000baf37]                           dc.b $00
A_3DBUTTON17:
[000baf38] 0005a4e2                  dc.l A_3Dbutton
[000baf3c]                           dc.w $09f1
[000baf3e]                           dc.w $0178
[000baf40] 00059318                  dc.l Auo_string
[000baf44] 000b883b                  dc.l TEXT_100
[000baf48]                           dc.b $00
[000baf49]                           dc.b $00
[000baf4a]                           dc.b $00
[000baf4b]                           dc.b $00
[000baf4c]                           dc.b $00
[000baf4d]                           dc.b $00
[000baf4e]                           dc.b $00
[000baf4f]                           dc.b $00
[000baf50]                           dc.b $00
[000baf51]                           dc.b $00
[000baf52]                           dc.b $00
[000baf53]                           dc.b $00
[000baf54]                           dc.b $00
[000baf55]                           dc.b $00
[000baf56]                           dc.b $00
[000baf57]                           dc.b $00
A_3DBUTTON18:
[000baf58] 0005a4e2                  dc.l A_3Dbutton
[000baf5c]                           dc.w $09f1
[000baf5e]                           dc.w $0178
[000baf60] 00059318                  dc.l Auo_string
[000baf64] 000b87f6                  dc.l TEXT_093
[000baf68]                           dc.b $00
[000baf69]                           dc.b $00
[000baf6a]                           dc.b $00
[000baf6b]                           dc.b $00
[000baf6c]                           dc.b $00
[000baf6d]                           dc.b $00
[000baf6e]                           dc.b $00
[000baf6f]                           dc.b $00
[000baf70]                           dc.b $00
[000baf71]                           dc.b $00
[000baf72]                           dc.b $00
[000baf73]                           dc.b $00
[000baf74]                           dc.b $00
[000baf75]                           dc.b $00
[000baf76]                           dc.b $00
[000baf77]                           dc.b $00
A_3DBUTTON19:
[000baf78] 0005a4e2                  dc.l A_3Dbutton
[000baf7c]                           dc.w $09f1
[000baf7e]                           dc.w $0178
[000baf80] 00059318                  dc.l Auo_string
[000baf84] 000b8808                  dc.l TEXT_095
[000baf88]                           dc.b $00
[000baf89]                           dc.b $00
[000baf8a]                           dc.b $00
[000baf8b]                           dc.b $00
[000baf8c]                           dc.b $00
[000baf8d]                           dc.b $00
[000baf8e]                           dc.b $00
[000baf8f]                           dc.b $00
[000baf90]                           dc.b $00
[000baf91]                           dc.b $00
[000baf92]                           dc.b $00
[000baf93]                           dc.b $00
[000baf94]                           dc.b $00
[000baf95]                           dc.b $00
[000baf96]                           dc.b $00
[000baf97]                           dc.b $00
A_3DBUTTON20:
[000baf98] 0005a4e2                  dc.l A_3Dbutton
[000baf9c]                           dc.w $6800
[000baf9e]                           dc.w $8178
[000bafa0] 00059318                  dc.l Auo_string
[000bafa4] 000b897b                  dc.l TEXT_30
[000bafa8]                           dc.b $00
[000bafa9]                           dc.b $00
[000bafaa]                           dc.b $00
[000bafab]                           dc.b $00
[000bafac]                           dc.b $00
[000bafad]                           dc.b $00
[000bafae]                           dc.b $00
[000bafaf]                           dc.b $00
[000bafb0]                           dc.b $00
[000bafb1]                           dc.b $00
[000bafb2]                           dc.b $00
[000bafb3]                           dc.b $00
[000bafb4]                           dc.b $00
[000bafb5]                           dc.b $00
[000bafb6]                           dc.b $00
[000bafb7]                           dc.b $00
A_3DBUTTON21:
[000bafb8] 0005a4e2                  dc.l A_3Dbutton
[000bafbc]                           dc.w $29f1
[000bafbe]                           dc.w $0178
[000bafc0] 00059318                  dc.l Auo_string
[000bafc4] 000b8921                  dc.l TEXT_24
[000bafc8]                           dc.b $00
[000bafc9]                           dc.b $00
[000bafca]                           dc.b $00
[000bafcb]                           dc.b $00
[000bafcc]                           dc.b $00
[000bafcd]                           dc.b $00
[000bafce]                           dc.b $00
[000bafcf]                           dc.b $00
[000bafd0]                           dc.b $00
[000bafd1]                           dc.b $00
[000bafd2]                           dc.b $00
[000bafd3]                           dc.b $00
[000bafd4]                           dc.b $00
[000bafd5]                           dc.b $00
[000bafd6]                           dc.b $00
[000bafd7]                           dc.b $00
A_3DBUTTON22:
[000bafd8] 0005a4e2                  dc.l A_3Dbutton
[000bafdc]                           dc.w $6800
[000bafde]                           dc.w $8178
[000bafe0] 00059318                  dc.l Auo_string
[000bafe4] 000b898d                  dc.l TEXT_31
[000bafe8]                           dc.b $00
[000bafe9]                           dc.b $00
[000bafea]                           dc.b $00
[000bafeb]                           dc.b $00
[000bafec]                           dc.b $00
[000bafed]                           dc.b $00
[000bafee]                           dc.b $00
[000bafef]                           dc.b $00
[000baff0]                           dc.b $00
[000baff1]                           dc.b $00
[000baff2]                           dc.b $00
[000baff3]                           dc.b $00
[000baff4]                           dc.b $00
[000baff5]                           dc.b $00
[000baff6]                           dc.b $00
[000baff7]                           dc.b $00
A_3DBUTTON23:
[000baff8] 0005a4e2                  dc.l A_3Dbutton
[000baffc]                           dc.w $29f1
[000baffe]                           dc.w $0178
[000bb000] 00059318                  dc.l Auo_string
[000bb004] 000b8970                  dc.l TEXT_29
[000bb008]                           dc.b $00
[000bb009]                           dc.b $00
[000bb00a]                           dc.b $00
[000bb00b]                           dc.b $00
[000bb00c]                           dc.b $00
[000bb00d]                           dc.b $00
[000bb00e]                           dc.b $00
[000bb00f]                           dc.b $00
[000bb010]                           dc.b $00
[000bb011]                           dc.b $00
[000bb012]                           dc.b $00
[000bb013]                           dc.b $00
[000bb014]                           dc.b $00
[000bb015]                           dc.b $00
[000bb016]                           dc.b $00
[000bb017]                           dc.b $00
A_3DBUTTON24:
[000bb018] 0005a4e2                  dc.l A_3Dbutton
[000bb01c]                           dc.w $29f1
[000bb01e]                           dc.w $0178
[000bb020] 00059318                  dc.l Auo_string
[000bb024] 000b89b6                  dc.l TEXT_35
[000bb028]                           dc.b $00
[000bb029]                           dc.b $00
[000bb02a]                           dc.b $00
[000bb02b]                           dc.b $00
[000bb02c]                           dc.b $00
[000bb02d]                           dc.b $00
[000bb02e]                           dc.b $00
[000bb02f]                           dc.b $00
[000bb030]                           dc.b $00
[000bb031]                           dc.b $00
[000bb032]                           dc.b $00
[000bb033]                           dc.b $00
[000bb034]                           dc.b $00
[000bb035]                           dc.b $00
[000bb036]                           dc.b $00
[000bb037]                           dc.b $00
A_3DBUTTON25:
[000bb038] 0005a4e2                  dc.l A_3Dbutton
[000bb03c]                           dc.w $29f1
[000bb03e]                           dc.w $0178
[000bb040] 00059318                  dc.l Auo_string
[000bb044] 000b89c1                  dc.l TEXT_36
[000bb048]                           dc.b $00
[000bb049]                           dc.b $00
[000bb04a]                           dc.b $00
[000bb04b]                           dc.b $00
[000bb04c]                           dc.b $00
[000bb04d]                           dc.b $00
[000bb04e]                           dc.b $00
[000bb04f]                           dc.b $00
[000bb050]                           dc.b $00
[000bb051]                           dc.b $00
[000bb052]                           dc.b $00
[000bb053]                           dc.b $00
[000bb054]                           dc.b $00
[000bb055]                           dc.b $00
[000bb056]                           dc.b $00
[000bb057]                           dc.b $00
A_3DBUTTON26:
[000bb058] 0005a4e2                  dc.l A_3Dbutton
[000bb05c]                           dc.w $29f1
[000bb05e]                           dc.w $0178
[000bb060] 00059318                  dc.l Auo_string
[000bb064] 000b8999                  dc.l TEXT_32
[000bb068]                           dc.b $00
[000bb069]                           dc.b $00
[000bb06a]                           dc.b $00
[000bb06b]                           dc.b $00
[000bb06c]                           dc.b $00
[000bb06d]                           dc.b $00
[000bb06e]                           dc.b $00
[000bb06f]                           dc.b $00
[000bb070]                           dc.b $00
[000bb071]                           dc.b $00
[000bb072]                           dc.b $00
[000bb073]                           dc.b $00
[000bb074]                           dc.b $00
[000bb075]                           dc.b $00
[000bb076]                           dc.b $00
[000bb077]                           dc.b $00
A_3DBUTTON28:
[000bb078] 0005a4e2                  dc.l A_3Dbutton
[000bb07c]                           dc.w $29f1
[000bb07e]                           dc.w $0178
[000bb080] 00059318                  dc.l Auo_string
[000bb084] 000b89ab                  dc.l TEXT_34
[000bb088]                           dc.b $00
[000bb089]                           dc.b $00
[000bb08a]                           dc.b $00
[000bb08b]                           dc.b $00
[000bb08c]                           dc.b $00
[000bb08d]                           dc.b $00
[000bb08e]                           dc.b $00
[000bb08f]                           dc.b $00
[000bb090]                           dc.b $00
[000bb091]                           dc.b $00
[000bb092]                           dc.b $00
[000bb093]                           dc.b $00
[000bb094]                           dc.b $00
[000bb095]                           dc.b $00
[000bb096]                           dc.b $00
[000bb097]                           dc.b $00
A_ARROWS02:
[000bb098] 0005b212                  dc.l A_arrows
[000bb09c]                           dc.w $2209
[000bb09e]                           dc.b $00
[000bb09f]                           dc.b $01
[000bb0a0]                           dc.b $00
[000bb0a1]                           dc.b $00
[000bb0a2]                           dc.b $00
[000bb0a3]                           dc.b $00
[000bb0a4]                           dc.b $00
[000bb0a5]                           dc.b $00
[000bb0a6]                           dc.b $00
[000bb0a7]                           dc.b $00
[000bb0a8]                           dc.b $00
[000bb0a9]                           dc.b $00
[000bb0aa]                           dc.b $00
[000bb0ab]                           dc.b $00
[000bb0ac]                           dc.b $00
[000bb0ad]                           dc.b $00
[000bb0ae]                           dc.b $00
[000bb0af]                           dc.b $00
[000bb0b0]                           dc.b $00
[000bb0b1]                           dc.b $00
[000bb0b2]                           dc.b $00
[000bb0b3]                           dc.b $00
[000bb0b4]                           dc.b $00
[000bb0b5]                           dc.b $00
[000bb0b6]                           dc.b $00
[000bb0b7]                           dc.b $00
A_ARROWS03:
[000bb0b8] 0005b212                  dc.l A_arrows
[000bb0bc]                           dc.b $00
[000bb0bd]                           dc.b $01
[000bb0be]                           dc.b $00
[000bb0bf]                           dc.b $01
[000bb0c0]                           dc.b $00
[000bb0c1]                           dc.b $00
[000bb0c2]                           dc.b $00
[000bb0c3]                           dc.b $00
[000bb0c4]                           dc.b $00
[000bb0c5]                           dc.b $00
[000bb0c6]                           dc.b $00
[000bb0c7]                           dc.b $00
[000bb0c8]                           dc.b $00
[000bb0c9]                           dc.b $00
[000bb0ca]                           dc.b $00
[000bb0cb]                           dc.b $00
[000bb0cc]                           dc.b $00
[000bb0cd]                           dc.b $00
[000bb0ce]                           dc.b $00
[000bb0cf]                           dc.b $00
[000bb0d0]                           dc.b $00
[000bb0d1]                           dc.b $00
[000bb0d2]                           dc.b $00
[000bb0d3]                           dc.b $00
[000bb0d4]                           dc.b $00
[000bb0d5]                           dc.b $00
[000bb0d6]                           dc.b $00
[000bb0d7]                           dc.b $00
A_BOXED01:
[000bb0d8] 0005e9d2                  dc.l A_boxed
[000bb0dc]                           dc.w $9078
[000bb0de]                           dc.w $0412
[000bb0e0] 0005e010                  dc.l Auo_boxed
[000bb0e4]                           dc.b $00
[000bb0e5]                           dc.b $00
[000bb0e6]                           dc.b $00
[000bb0e7]                           dc.b $00
[000bb0e8]                           dc.b $00
[000bb0e9]                           dc.b $00
[000bb0ea]                           dc.b $00
[000bb0eb]                           dc.b $00
[000bb0ec]                           dc.b $00
[000bb0ed]                           dc.b $00
[000bb0ee]                           dc.b $00
[000bb0ef]                           dc.b $00
[000bb0f0]                           dc.b $00
[000bb0f1]                           dc.b $00
[000bb0f2]                           dc.b $00
[000bb0f3]                           dc.b $00
[000bb0f4]                           dc.b $00
[000bb0f5]                           dc.b $00
[000bb0f6]                           dc.b $00
[000bb0f7]                           dc.b $00
A_BOXED02:
[000bb0f8] 0005e9d2                  dc.l A_boxed
[000bb0fc]                           dc.w $9078
[000bb0fe]                           dc.w $0412
[000bb100] 0005e010                  dc.l Auo_boxed
[000bb104]                           dc.b $00
[000bb105]                           dc.b $00
[000bb106]                           dc.b $00
[000bb107]                           dc.b $00
[000bb108]                           dc.b $00
[000bb109]                           dc.b $00
[000bb10a]                           dc.b $00
[000bb10b]                           dc.b $00
[000bb10c]                           dc.b $00
[000bb10d]                           dc.b $00
[000bb10e]                           dc.b $00
[000bb10f]                           dc.b $00
[000bb110]                           dc.b $00
[000bb111]                           dc.b $00
[000bb112]                           dc.b $00
[000bb113]                           dc.b $00
[000bb114]                           dc.b $00
[000bb115]                           dc.b $00
[000bb116]                           dc.b $00
[000bb117]                           dc.b $00
A_BOXED03:
[000bb118] 0005e9d2                  dc.l A_boxed
[000bb11c]                           dc.w $9078
[000bb11e]                           dc.w $0412
[000bb120] 0005e010                  dc.l Auo_boxed
[000bb124]                           dc.b $00
[000bb125]                           dc.b $00
[000bb126]                           dc.b $00
[000bb127]                           dc.b $00
[000bb128]                           dc.b $00
[000bb129]                           dc.b $00
[000bb12a]                           dc.b $00
[000bb12b]                           dc.b $00
[000bb12c]                           dc.b $00
[000bb12d]                           dc.b $00
[000bb12e]                           dc.b $00
[000bb12f]                           dc.b $00
[000bb130]                           dc.b $00
[000bb131]                           dc.b $00
[000bb132]                           dc.b $00
[000bb133]                           dc.b $00
[000bb134]                           dc.b $00
[000bb135]                           dc.b $00
[000bb136]                           dc.b $00
[000bb137]                           dc.b $00
_C4_IC_MENU:
[000bb138]                           dc.b $00
[000bb139]                           dc.b $04
[000bb13a] 000ba286                  dc.l $000ba286 ; no symbol found
[000bb13e] 000ba53e                  dc.l DATAS_18
[000bb142]                           dc.b $00
[000bb143]                           dc.b $00
[000bb144]                           dc.b $00
[000bb145]                           dc.b $00
[000bb146]                           dc.b $00
[000bb147]                           dc.b $00
[000bb148]                           dc.b $00
[000bb149]                           dc.b $00
[000bb14a]                           dc.b $00
[000bb14b]                           dc.b $00
[000bb14c]                           dc.b $00
[000bb14d]                           dc.b $00
_MSK_IC_MENU:
[000bb14e]                           dc.b $00
[000bb14f]                           dc.b $00
[000bb150]                           dc.b $00
[000bb151]                           dc.b $00
[000bb152]                           dc.b $00
[000bb153]                           dc.b $00
[000bb154]                           dc.b $00
[000bb155]                           dc.b $00
[000bb156]                           dc.b $00
[000bb157]                           dc.b $00
[000bb158]                           dc.b $00
[000bb159]                           dc.b $00
[000bb15a]                           dc.b $00
[000bb15b]                           dc.b $00
[000bb15c]                           dc.b $00
[000bb15d]                           dc.b $00
[000bb15e]                           dc.b $00
[000bb15f]                           dc.b $00
[000bb160]                           dc.b $00
[000bb161]                           dc.b $00
[000bb162]                           dc.b $00
[000bb163]                           dc.b $00
[000bb164]                           dc.b $00
[000bb165]                           dc.b $00
[000bb166]                           dc.b $00
[000bb167]                           dc.b $00
[000bb168]                           dc.b $00
[000bb169]                           dc.b $00
[000bb16a]                           dc.b $00
[000bb16b]                           dc.b $00
[000bb16c]                           dc.b $00
[000bb16d]                           dc.b $00
[000bb16e]                           dc.b $00
[000bb16f]                           dc.b $00
[000bb170]                           dc.b $00
[000bb171]                           dc.b $00
[000bb172]                           dc.w $1fff
[000bb174]                           dc.w $ffff
[000bb176]                           dc.w $fff0
[000bb178]                           dc.w $1fff
[000bb17a]                           dc.w $ffff
[000bb17c]                           dc.w $fff8
[000bb17e]                           dc.w $1fff
[000bb180]                           dc.w $ffff
[000bb182]                           dc.w $fff8
[000bb184]                           dc.w $1fff
[000bb186]                           dc.w $ffff
[000bb188]                           dc.w $fff8
[000bb18a]                           dc.w $1fff
[000bb18c]                           dc.w $ffff
[000bb18e]                           dc.w $fff8
[000bb190]                           dc.w $0fff
[000bb192]                           dc.w $ffff
[000bb194]                           dc.w $fff8
[000bb196]                           dc.b $00
[000bb197]                           dc.b $1f
[000bb198]                           dc.w $ffe0
[000bb19a]                           dc.b $00
[000bb19b]                           dc.b $00
[000bb19c]                           dc.b $00
[000bb19d]                           dc.b $1f
[000bb19e]                           dc.w $ffe0
[000bb1a0]                           dc.b $00
[000bb1a1]                           dc.b $00
[000bb1a2]                           dc.b $00
[000bb1a3]                           dc.b $1f
[000bb1a4]                           dc.w $ffe0
[000bb1a6]                           dc.b $00
[000bb1a7]                           dc.b $00
[000bb1a8]                           dc.b $00
[000bb1a9]                           dc.b $1f
[000bb1aa]                           dc.w $ffe0
[000bb1ac]                           dc.b $00
[000bb1ad]                           dc.b $00
[000bb1ae]                           dc.b $00
[000bb1af]                           dc.b $1f
[000bb1b0]                           dc.w $ffe0
[000bb1b2]                           dc.b $00
[000bb1b3]                           dc.b $00
[000bb1b4]                           dc.b $00
[000bb1b5]                           dc.b $1f
[000bb1b6]                           dc.w $ffe0
[000bb1b8]                           dc.b $00
[000bb1b9]                           dc.b $00
[000bb1ba]                           dc.b $00
[000bb1bb]                           dc.b $1f
[000bb1bc]                           dc.w $ffe0
[000bb1be]                           dc.b $00
[000bb1bf]                           dc.b $00
[000bb1c0]                           dc.b $00
[000bb1c1]                           dc.b $1f
[000bb1c2]                           dc.w $ffe0
[000bb1c4]                           dc.b $00
[000bb1c5]                           dc.b $00
[000bb1c6]                           dc.b $00
[000bb1c7]                           dc.b $1f
[000bb1c8]                           dc.w $ffe0
[000bb1ca]                           dc.b $00
[000bb1cb]                           dc.b $00
[000bb1cc]                           dc.b $00
[000bb1cd]                           dc.b $1f
[000bb1ce]                           dc.w $ffe0
[000bb1d0]                           dc.b $00
[000bb1d1]                           dc.b $00
[000bb1d2]                           dc.b $00
[000bb1d3]                           dc.b $1f
[000bb1d4]                           dc.w $ffe0
[000bb1d6]                           dc.b $00
[000bb1d7]                           dc.b $00
[000bb1d8]                           dc.b $00
[000bb1d9]                           dc.b $1f
[000bb1da]                           dc.w $ffe0
[000bb1dc]                           dc.b $00
[000bb1dd]                           dc.b $00
[000bb1de]                           dc.b $00
[000bb1df]                           dc.b $0f
[000bb1e0]                           dc.w $ffe0
[000bb1e2]                           dc.b $00
[000bb1e3]                           dc.b $00
[000bb1e4]                           dc.b $00
[000bb1e5]                           dc.b $00
[000bb1e6]                           dc.b $00
[000bb1e7]                           dc.b $00
[000bb1e8]                           dc.b $00
[000bb1e9]                           dc.b $00
[000bb1ea]                           dc.b $00
[000bb1eb]                           dc.b $00
[000bb1ec]                           dc.b $00
[000bb1ed]                           dc.b $00
[000bb1ee]                           dc.b $00
[000bb1ef]                           dc.b $00
[000bb1f0]                           dc.b $00
[000bb1f1]                           dc.b $00
[000bb1f2]                           dc.b $00
[000bb1f3]                           dc.b $00
[000bb1f4]                           dc.b $00
[000bb1f5]                           dc.b $00
[000bb1f6]                           dc.b $00
[000bb1f7]                           dc.b $00
[000bb1f8]                           dc.b $00
[000bb1f9]                           dc.b $00
[000bb1fa]                           dc.b $00
[000bb1fb]                           dc.b $00
_DAT_IC_MENU:
[000bb1fc]                           dc.b $00
[000bb1fd]                           dc.b $00
[000bb1fe]                           dc.b $00
[000bb1ff]                           dc.b $00
[000bb200]                           dc.b $00
[000bb201]                           dc.b $00
[000bb202]                           dc.b $00
[000bb203]                           dc.b $00
[000bb204]                           dc.b $00
[000bb205]                           dc.b $00
[000bb206]                           dc.b $00
[000bb207]                           dc.b $00
[000bb208]                           dc.b $00
[000bb209]                           dc.b $00
[000bb20a]                           dc.b $00
[000bb20b]                           dc.b $00
[000bb20c]                           dc.b $00
[000bb20d]                           dc.b $00
[000bb20e]                           dc.b $00
[000bb20f]                           dc.b $00
[000bb210]                           dc.b $00
[000bb211]                           dc.b $00
[000bb212]                           dc.b $00
[000bb213]                           dc.b $00
[000bb214]                           dc.b $00
[000bb215]                           dc.b $00
[000bb216]                           dc.b $00
[000bb217]                           dc.b $00
[000bb218]                           dc.b $00
[000bb219]                           dc.b $00
[000bb21a]                           dc.b $00
[000bb21b]                           dc.b $00
[000bb21c]                           dc.b $00
[000bb21d]                           dc.b $00
[000bb21e]                           dc.b $00
[000bb21f]                           dc.b $00
[000bb220]                           dc.w $1fff
[000bb222]                           dc.w $ffff
[000bb224]                           dc.w $fff0
[000bb226]                           dc.w $101f
[000bb228]                           dc.w $f000
[000bb22a]                           dc.b $00
[000bb22b]                           dc.b $18
[000bb22c]                           dc.w $1798
[000bb22e]                           dc.w $33e0
[000bb230]                           dc.b $00
[000bb231]                           dc.b $18
[000bb232]                           dc.w $101f
[000bb234]                           dc.w $f000
[000bb236]                           dc.b $00
[000bb237]                           dc.b $18
[000bb238]                           dc.w $1fff
[000bb23a]                           dc.w $ffff
[000bb23c]                           dc.w $fff8
[000bb23e]                           dc.w $0ff0
[000bb240]                           dc.b $00
[000bb241]                           dc.b $7f
[000bb242]                           dc.w $fff8
[000bb244]                           dc.b $00
[000bb245]                           dc.b $17
[000bb246]                           dc.w $ff60
[000bb248]                           dc.b $00
[000bb249]                           dc.b $00
[000bb24a]                           dc.b $00
[000bb24b]                           dc.b $10
[000bb24c]                           dc.b $00
[000bb24d]                           dc.b $60
[000bb24e]                           dc.b $00
[000bb24f]                           dc.b $00
[000bb250]                           dc.b $00
[000bb251]                           dc.b $10
[000bb252]                           dc.b $00
[000bb253]                           dc.b $60
[000bb254]                           dc.b $00
[000bb255]                           dc.b $00
[000bb256]                           dc.b $00
[000bb257]                           dc.b $15
[000bb258]                           dc.w $5560
[000bb25a]                           dc.b $00
[000bb25b]                           dc.b $00
[000bb25c]                           dc.b $00
[000bb25d]                           dc.b $10
[000bb25e]                           dc.b $00
[000bb25f]                           dc.b $60
[000bb260]                           dc.b $00
[000bb261]                           dc.b $00
[000bb262]                           dc.b $00
[000bb263]                           dc.b $1f
[000bb264]                           dc.w $ffe0
[000bb266]                           dc.b $00
[000bb267]                           dc.b $00
[000bb268]                           dc.b $00
[000bb269]                           dc.b $18
[000bb26a]                           dc.b $00
[000bb26b]                           dc.b $e0
[000bb26c]                           dc.b $00
[000bb26d]                           dc.b $00
[000bb26e]                           dc.b $00
[000bb26f]                           dc.b $1f
[000bb270]                           dc.w $ffe0
[000bb272]                           dc.b $00
[000bb273]                           dc.b $00
[000bb274]                           dc.b $00
[000bb275]                           dc.b $10
[000bb276]                           dc.b $00
[000bb277]                           dc.b $60
[000bb278]                           dc.b $00
[000bb279]                           dc.b $00
[000bb27a]                           dc.b $00
[000bb27b]                           dc.b $17
[000bb27c]                           dc.w $fe60
[000bb27e]                           dc.b $00
[000bb27f]                           dc.b $00
[000bb280]                           dc.b $00
[000bb281]                           dc.b $10
[000bb282]                           dc.b $00
[000bb283]                           dc.b $60
[000bb284]                           dc.b $00
[000bb285]                           dc.b $00
[000bb286]                           dc.b $00
[000bb287]                           dc.b $1f
[000bb288]                           dc.w $ffe0
[000bb28a]                           dc.b $00
[000bb28b]                           dc.b $00
[000bb28c]                           dc.b $00
[000bb28d]                           dc.b $0f
[000bb28e]                           dc.w $ffe0
[000bb290]                           dc.b $00
[000bb291]                           dc.b $00
[000bb292]                           dc.b $00
[000bb293]                           dc.b $00
[000bb294]                           dc.b $00
[000bb295]                           dc.b $00
[000bb296]                           dc.b $00
[000bb297]                           dc.b $00
[000bb298]                           dc.b $00
[000bb299]                           dc.b $00
[000bb29a]                           dc.b $00
[000bb29b]                           dc.b $00
[000bb29c]                           dc.b $00
[000bb29d]                           dc.b $00
[000bb29e]                           dc.b $00
[000bb29f]                           dc.b $00
[000bb2a0]                           dc.b $00
[000bb2a1]                           dc.b $00
[000bb2a2]                           dc.b $00
[000bb2a3]                           dc.b $00
[000bb2a4]                           dc.b $00
[000bb2a5]                           dc.b $00
[000bb2a6]                           dc.b $00
[000bb2a7]                           dc.b $00
[000bb2a8]                           dc.b $00
[000bb2a9]                           dc.b $00
IC_MENU:
[000bb2aa] 000bb14e                  dc.l _MSK_IC_MENU
[000bb2ae] 000bb1fc                  dc.l _DAT_IC_MENU
[000bb2b2] 000b8710                  dc.l TEXT_02
[000bb2b6]                           dc.w $1000
[000bb2b8]                           dc.b $00
[000bb2b9]                           dc.b $00
[000bb2ba]                           dc.b $00
[000bb2bb]                           dc.b $00
[000bb2bc]                           dc.b $00
[000bb2bd]                           dc.b $0c
[000bb2be]                           dc.b $00
[000bb2bf]                           dc.b $00
[000bb2c0]                           dc.b $00
[000bb2c1]                           dc.b $30
[000bb2c2]                           dc.b $00
[000bb2c3]                           dc.b $1d
[000bb2c4]                           dc.b $00
[000bb2c5]                           dc.b $00
[000bb2c6]                           dc.b $00
[000bb2c7]                           dc.b $20
[000bb2c8]                           dc.b $00
[000bb2c9]                           dc.b $48
[000bb2ca]                           dc.b $00
[000bb2cb]                           dc.b $08
[000bb2cc] 000bb138                  dc.l _C4_IC_MENU
_C4_IC_OBJECT:
[000bb2d0]                           dc.b $00
[000bb2d1]                           dc.b $04
[000bb2d2] 000ba95e                  dc.l $000ba95e ; no symbol found
[000bb2d6] 000bac46                  dc.l DATAS_22
[000bb2da]                           dc.b $00
[000bb2db]                           dc.b $00
[000bb2dc]                           dc.b $00
[000bb2dd]                           dc.b $00
[000bb2de]                           dc.b $00
[000bb2df]                           dc.b $00
[000bb2e0]                           dc.b $00
[000bb2e1]                           dc.b $00
[000bb2e2]                           dc.b $00
[000bb2e3]                           dc.b $00
[000bb2e4]                           dc.b $00
[000bb2e5]                           dc.b $00
_MSK_IC_OBJECT:
[000bb2e6]                           dc.b $00
[000bb2e7]                           dc.b $00
[000bb2e8]                           dc.b $00
[000bb2e9]                           dc.b $00
[000bb2ea]                           dc.b $00
[000bb2eb]                           dc.b $00
[000bb2ec]                           dc.w $7fff
[000bb2ee]                           dc.w $ffff
[000bb2f0]                           dc.w $fffe
[000bb2f2]                           dc.w $7fff
[000bb2f4]                           dc.w $ffff
[000bb2f6]                           dc.w $fffe
[000bb2f8]                           dc.w $7fff
[000bb2fa]                           dc.w $ffff
[000bb2fc]                           dc.w $fffe
[000bb2fe]                           dc.w $7fff
[000bb300]                           dc.w $ffff
[000bb302]                           dc.w $fffe
[000bb304]                           dc.w $7fff
[000bb306]                           dc.w $ffff
[000bb308]                           dc.w $fffe
[000bb30a]                           dc.w $7fff
[000bb30c]                           dc.w $ffff
[000bb30e]                           dc.w $fffe
[000bb310]                           dc.w $7fff
[000bb312]                           dc.w $ffff
[000bb314]                           dc.w $fffe
[000bb316]                           dc.w $7fff
[000bb318]                           dc.w $ffff
[000bb31a]                           dc.w $fffe
[000bb31c]                           dc.w $7fff
[000bb31e]                           dc.w $ffff
[000bb320]                           dc.w $fffe
[000bb322]                           dc.w $7fff
[000bb324]                           dc.w $ffff
[000bb326]                           dc.w $fffe
[000bb328]                           dc.w $7fff
[000bb32a]                           dc.w $ffff
[000bb32c]                           dc.w $fffe
[000bb32e]                           dc.w $7fff
[000bb330]                           dc.w $ffff
[000bb332]                           dc.w $fffe
[000bb334]                           dc.w $7fff
[000bb336]                           dc.w $ffff
[000bb338]                           dc.w $fffe
[000bb33a]                           dc.w $7fff
[000bb33c]                           dc.w $ffff
[000bb33e]                           dc.w $fffe
[000bb340]                           dc.w $7fff
[000bb342]                           dc.w $ffff
[000bb344]                           dc.w $fffe
[000bb346]                           dc.w $7fff
[000bb348]                           dc.w $ffff
[000bb34a]                           dc.w $fffe
[000bb34c]                           dc.w $7fff
[000bb34e]                           dc.w $ffff
[000bb350]                           dc.w $fffe
[000bb352]                           dc.w $7fff
[000bb354]                           dc.w $ffff
[000bb356]                           dc.w $fffe
[000bb358]                           dc.w $7fff
[000bb35a]                           dc.w $ffff
[000bb35c]                           dc.w $fffe
[000bb35e]                           dc.w $7fff
[000bb360]                           dc.w $ffff
[000bb362]                           dc.w $fffe
[000bb364]                           dc.w $7fff
[000bb366]                           dc.w $ffff
[000bb368]                           dc.w $fffe
[000bb36a]                           dc.w $7fff
[000bb36c]                           dc.w $ffff
[000bb36e]                           dc.w $fffe
[000bb370]                           dc.w $7fff
[000bb372]                           dc.w $ffff
[000bb374]                           dc.w $fffe
[000bb376]                           dc.w $7fff
[000bb378]                           dc.w $ffff
[000bb37a]                           dc.w $fffe
[000bb37c]                           dc.w $7fff
[000bb37e]                           dc.w $ffff
[000bb380]                           dc.w $fffe
[000bb382]                           dc.w $7fff
[000bb384]                           dc.w $ffff
[000bb386]                           dc.w $fffe
[000bb388]                           dc.w $7fff
[000bb38a]                           dc.w $ffff
[000bb38c]                           dc.w $fffe
[000bb38e]                           dc.w $7fff
[000bb390]                           dc.w $ffff
[000bb392]                           dc.w $fffe
[000bb394]                           dc.w $7fff
[000bb396]                           dc.w $ffff
[000bb398]                           dc.w $fffe
[000bb39a]                           dc.b $00
[000bb39b]                           dc.b $00
[000bb39c]                           dc.b $00
[000bb39d]                           dc.b $00
[000bb39e]                           dc.b $00
[000bb39f]                           dc.b $00
_DAT_IC_OBJECT:
[000bb3a0]                           dc.b $00
[000bb3a1]                           dc.b $00
[000bb3a2]                           dc.b $00
[000bb3a3]                           dc.b $00
[000bb3a4]                           dc.b $00
[000bb3a5]                           dc.b $00
[000bb3a6]                           dc.w $7fff
[000bb3a8]                           dc.w $ffff
[000bb3aa]                           dc.w $fffe
[000bb3ac]                           dc.w $4000
[000bb3ae]                           dc.b $00
[000bb3af]                           dc.b $00
[000bb3b0]                           dc.b $00
[000bb3b1]                           dc.b $02
[000bb3b2]                           dc.w $4000
[000bb3b4]                           dc.b $00
[000bb3b5]                           dc.b $03
[000bb3b6]                           dc.w $fe02
[000bb3b8]                           dc.w $47ff
[000bb3ba]                           dc.w $fc78
[000bb3bc]                           dc.b $00
[000bb3bd]                           dc.b $f2
[000bb3be]                           dc.w $4400
[000bb3c0]                           dc.w $0440
[000bb3c2]                           dc.b $00
[000bb3c3]                           dc.b $12
[000bb3c4]                           dc.w $44ef
[000bb3c6]                           dc.w $6440
[000bb3c8]                           dc.b $00
[000bb3c9]                           dc.b $12
[000bb3ca]                           dc.w $4400
[000bb3cc]                           dc.w $0453
[000bb3ce]                           dc.w $df92
[000bb3d0]                           dc.w $47ff
[000bb3d2]                           dc.w $fc40
[000bb3d4]                           dc.b $00
[000bb3d5]                           dc.b $12
[000bb3d6]                           dc.w $4000
[000bb3d8]                           dc.b $00
[000bb3d9]                           dc.b $40
[000bb3da]                           dc.b $00
[000bb3db]                           dc.b $12
[000bb3dc]                           dc.w $4000
[000bb3de]                           dc.b $00
[000bb3df]                           dc.b $53
[000bb3e0]                           dc.w $f792
[000bb3e2]                           dc.w $47ff
[000bb3e4]                           dc.w $fc40
[000bb3e6]                           dc.b $00
[000bb3e7]                           dc.b $12
[000bb3e8]                           dc.w $4400
[000bb3ea]                           dc.w $0440
[000bb3ec]                           dc.b $00
[000bb3ed]                           dc.b $12
[000bb3ee]                           dc.w $44f6
[000bb3f0]                           dc.w $e453
[000bb3f2]                           dc.w $bf92
[000bb3f4]                           dc.w $4400
[000bb3f6]                           dc.w $0440
[000bb3f8]                           dc.b $00
[000bb3f9]                           dc.b $12
[000bb3fa]                           dc.w $47ff
[000bb3fc]                           dc.w $fc7f
[000bb3fe]                           dc.w $fff2
[000bb400]                           dc.w $4000
[000bb402]                           dc.b $00
[000bb403]                           dc.b $00
[000bb404]                           dc.b $00
[000bb405]                           dc.b $02
[000bb406]                           dc.w $4000
[000bb408]                           dc.b $00
[000bb409]                           dc.b $00
[000bb40a]                           dc.b $00
[000bb40b]                           dc.b $02
[000bb40c]                           dc.w $4000
[000bb40e]                           dc.b $00
[000bb40f]                           dc.b $00
[000bb410]                           dc.b $00
[000bb411]                           dc.b $02
[000bb412]                           dc.w $4000
[000bb414]                           dc.b $00
[000bb415]                           dc.b $00
[000bb416]                           dc.b $00
[000bb417]                           dc.b $02
[000bb418]                           dc.w $407f
[000bb41a]                           dc.w $fc00
[000bb41c]                           dc.b $00
[000bb41d]                           dc.b $02
[000bb41e]                           dc.w $407f
[000bb420]                           dc.w $fc3f
[000bb422]                           dc.w $fe02
[000bb424]                           dc.w $4060
[000bb426]                           dc.w $0c20
[000bb428]                           dc.w $0202
[000bb42a]                           dc.w $4067
[000bb42c]                           dc.w $cc27
[000bb42e]                           dc.w $f202
[000bb430]                           dc.w $4060
[000bb432]                           dc.w $0c20
[000bb434]                           dc.w $0202
[000bb436]                           dc.w $407f
[000bb438]                           dc.w $fc3f
[000bb43a]                           dc.w $fe02
[000bb43c]                           dc.w $407f
[000bb43e]                           dc.w $fc00
[000bb440]                           dc.b $00
[000bb441]                           dc.b $02
[000bb442]                           dc.w $4000
[000bb444]                           dc.b $00
[000bb445]                           dc.b $00
[000bb446]                           dc.b $00
[000bb447]                           dc.b $02
[000bb448]                           dc.w $4000
[000bb44a]                           dc.b $00
[000bb44b]                           dc.b $00
[000bb44c]                           dc.b $00
[000bb44d]                           dc.b $02
[000bb44e]                           dc.w $7fff
[000bb450]                           dc.w $ffff
[000bb452]                           dc.w $fffe
[000bb454]                           dc.b $00
[000bb455]                           dc.b $00
[000bb456]                           dc.b $00
[000bb457]                           dc.b $00
[000bb458]                           dc.b $00
[000bb459]                           dc.b $00
IC_OBJECT:
[000bb45a] 000bb2e6                  dc.l _MSK_IC_OBJECT
[000bb45e] 000bb3a0                  dc.l _DAT_IC_OBJECT
[000bb462] 000b8954                  dc.l TEXT_27
[000bb466]                           dc.w $1000
[000bb468]                           dc.b $00
[000bb469]                           dc.b $00
[000bb46a]                           dc.b $00
[000bb46b]                           dc.b $00
[000bb46c]                           dc.b $00
[000bb46d]                           dc.b $0c
[000bb46e]                           dc.b $00
[000bb46f]                           dc.b $00
[000bb470]                           dc.b $00
[000bb471]                           dc.b $30
[000bb472]                           dc.b $00
[000bb473]                           dc.b $1f
[000bb474]                           dc.b $00
[000bb475]                           dc.b $00
[000bb476]                           dc.b $00
[000bb477]                           dc.b $20
[000bb478]                           dc.b $00
[000bb479]                           dc.b $48
[000bb47a]                           dc.b $00
[000bb47b]                           dc.b $08
[000bb47c] 000bb2d0                  dc.l _C4_IC_OBJECT
_C4_IC_POPUP:
[000bb480]                           dc.b $00
[000bb481]                           dc.b $04
[000bb482] 000ba5f2                  dc.l $000ba5f2 ; no symbol found
[000bb486] 000ba8aa                  dc.l DATAS_20
[000bb48a]                           dc.b $00
[000bb48b]                           dc.b $00
[000bb48c]                           dc.b $00
[000bb48d]                           dc.b $00
[000bb48e]                           dc.b $00
[000bb48f]                           dc.b $00
[000bb490]                           dc.b $00
[000bb491]                           dc.b $00
[000bb492]                           dc.b $00
[000bb493]                           dc.b $00
[000bb494]                           dc.b $00
[000bb495]                           dc.b $00
_MSK_IC_POPUP:
[000bb496]                           dc.b $00
[000bb497]                           dc.b $00
[000bb498]                           dc.b $00
[000bb499]                           dc.b $00
[000bb49a]                           dc.b $00
[000bb49b]                           dc.b $00
[000bb49c]                           dc.b $00
[000bb49d]                           dc.b $00
[000bb49e]                           dc.b $00
[000bb49f]                           dc.b $00
[000bb4a0]                           dc.b $00
[000bb4a1]                           dc.b $00
[000bb4a2]                           dc.b $00
[000bb4a3]                           dc.b $00
[000bb4a4]                           dc.b $00
[000bb4a5]                           dc.b $00
[000bb4a6]                           dc.b $00
[000bb4a7]                           dc.b $00
[000bb4a8]                           dc.b $00
[000bb4a9]                           dc.b $00
[000bb4aa]                           dc.b $00
[000bb4ab]                           dc.b $00
[000bb4ac]                           dc.b $00
[000bb4ad]                           dc.b $00
[000bb4ae]                           dc.b $00
[000bb4af]                           dc.b $00
[000bb4b0]                           dc.b $00
[000bb4b1]                           dc.b $00
[000bb4b2]                           dc.b $00
[000bb4b3]                           dc.b $00
[000bb4b4]                           dc.b $00
[000bb4b5]                           dc.b $00
[000bb4b6]                           dc.b $00
[000bb4b7]                           dc.b $00
[000bb4b8]                           dc.b $00
[000bb4b9]                           dc.b $00
[000bb4ba]                           dc.b $00
[000bb4bb]                           dc.b $7f
[000bb4bc]                           dc.w $ff00
[000bb4be]                           dc.b $00
[000bb4bf]                           dc.b $00
[000bb4c0]                           dc.b $00
[000bb4c1]                           dc.b $7f
[000bb4c2]                           dc.w $ff80
[000bb4c4]                           dc.b $00
[000bb4c5]                           dc.b $00
[000bb4c6]                           dc.b $00
[000bb4c7]                           dc.b $7f
[000bb4c8]                           dc.w $ff80
[000bb4ca]                           dc.b $00
[000bb4cb]                           dc.b $00
[000bb4cc]                           dc.b $00
[000bb4cd]                           dc.b $7f
[000bb4ce]                           dc.w $ff80
[000bb4d0]                           dc.b $00
[000bb4d1]                           dc.b $00
[000bb4d2]                           dc.b $00
[000bb4d3]                           dc.b $7f
[000bb4d4]                           dc.w $ff80
[000bb4d6]                           dc.b $00
[000bb4d7]                           dc.b $00
[000bb4d8]                           dc.b $00
[000bb4d9]                           dc.b $7f
[000bb4da]                           dc.w $ff80
[000bb4dc]                           dc.b $00
[000bb4dd]                           dc.b $00
[000bb4de]                           dc.b $00
[000bb4df]                           dc.b $7f
[000bb4e0]                           dc.w $ff80
[000bb4e2]                           dc.b $00
[000bb4e3]                           dc.b $00
[000bb4e4]                           dc.b $00
[000bb4e5]                           dc.b $7f
[000bb4e6]                           dc.w $ffff
[000bb4e8]                           dc.w $f000
[000bb4ea]                           dc.b $00
[000bb4eb]                           dc.b $7f
[000bb4ec]                           dc.w $ffff
[000bb4ee]                           dc.w $f800
[000bb4f0]                           dc.b $00
[000bb4f1]                           dc.b $7f
[000bb4f2]                           dc.w $ffff
[000bb4f4]                           dc.w $f800
[000bb4f6]                           dc.b $00
[000bb4f7]                           dc.b $7f
[000bb4f8]                           dc.w $ffff
[000bb4fa]                           dc.w $f800
[000bb4fc]                           dc.b $00
[000bb4fd]                           dc.b $7f
[000bb4fe]                           dc.w $ffff
[000bb500]                           dc.w $f800
[000bb502]                           dc.b $00
[000bb503]                           dc.b $7f
[000bb504]                           dc.w $ffff
[000bb506]                           dc.w $f800
[000bb508]                           dc.b $00
[000bb509]                           dc.b $7f
[000bb50a]                           dc.w $ffff
[000bb50c]                           dc.w $f800
[000bb50e]                           dc.b $00
[000bb50f]                           dc.b $7f
[000bb510]                           dc.w $ffff
[000bb512]                           dc.w $f800
[000bb514]                           dc.b $00
[000bb515]                           dc.b $7f
[000bb516]                           dc.w $ffff
[000bb518]                           dc.w $f800
[000bb51a]                           dc.b $00
[000bb51b]                           dc.b $7f
[000bb51c]                           dc.w $ff80
[000bb51e]                           dc.b $00
[000bb51f]                           dc.b $00
[000bb520]                           dc.b $00
[000bb521]                           dc.b $3f
[000bb522]                           dc.w $ff80
[000bb524]                           dc.b $00
[000bb525]                           dc.b $00
[000bb526]                           dc.b $00
[000bb527]                           dc.b $00
[000bb528]                           dc.b $00
[000bb529]                           dc.b $00
[000bb52a]                           dc.b $00
[000bb52b]                           dc.b $00
[000bb52c]                           dc.b $00
[000bb52d]                           dc.b $00
[000bb52e]                           dc.b $00
[000bb52f]                           dc.b $00
[000bb530]                           dc.b $00
[000bb531]                           dc.b $00
[000bb532]                           dc.b $00
[000bb533]                           dc.b $00
[000bb534]                           dc.b $00
[000bb535]                           dc.b $00
[000bb536]                           dc.b $00
[000bb537]                           dc.b $00
[000bb538]                           dc.b $00
[000bb539]                           dc.b $00
[000bb53a]                           dc.b $00
[000bb53b]                           dc.b $00
[000bb53c]                           dc.b $00
[000bb53d]                           dc.b $00
[000bb53e]                           dc.b $00
[000bb53f]                           dc.b $00
[000bb540]                           dc.b $00
[000bb541]                           dc.b $00
[000bb542]                           dc.b $00
[000bb543]                           dc.b $00
_DAT_IC_POPUP:
[000bb544]                           dc.b $00
[000bb545]                           dc.b $00
[000bb546]                           dc.b $00
[000bb547]                           dc.b $00
[000bb548]                           dc.b $00
[000bb549]                           dc.b $00
[000bb54a]                           dc.b $00
[000bb54b]                           dc.b $00
[000bb54c]                           dc.b $00
[000bb54d]                           dc.b $00
[000bb54e]                           dc.b $00
[000bb54f]                           dc.b $00
[000bb550]                           dc.b $00
[000bb551]                           dc.b $00
[000bb552]                           dc.b $00
[000bb553]                           dc.b $00
[000bb554]                           dc.b $00
[000bb555]                           dc.b $00
[000bb556]                           dc.b $00
[000bb557]                           dc.b $00
[000bb558]                           dc.b $00
[000bb559]                           dc.b $00
[000bb55a]                           dc.b $00
[000bb55b]                           dc.b $00
[000bb55c]                           dc.b $00
[000bb55d]                           dc.b $00
[000bb55e]                           dc.b $00
[000bb55f]                           dc.b $00
[000bb560]                           dc.b $00
[000bb561]                           dc.b $00
[000bb562]                           dc.b $00
[000bb563]                           dc.b $00
[000bb564]                           dc.b $00
[000bb565]                           dc.b $00
[000bb566]                           dc.b $00
[000bb567]                           dc.b $00
[000bb568]                           dc.b $00
[000bb569]                           dc.b $7f
[000bb56a]                           dc.w $ff00
[000bb56c]                           dc.b $00
[000bb56d]                           dc.b $00
[000bb56e]                           dc.b $00
[000bb56f]                           dc.b $40
[000bb570]                           dc.w $0180
[000bb572]                           dc.b $00
[000bb573]                           dc.b $00
[000bb574]                           dc.b $00
[000bb575]                           dc.b $4f
[000bb576]                           dc.w $f980
[000bb578]                           dc.b $00
[000bb579]                           dc.b $00
[000bb57a]                           dc.b $00
[000bb57b]                           dc.b $40
[000bb57c]                           dc.w $0180
[000bb57e]                           dc.b $00
[000bb57f]                           dc.b $00
[000bb580]                           dc.b $00
[000bb581]                           dc.b $40
[000bb582]                           dc.w $0180
[000bb584]                           dc.b $00
[000bb585]                           dc.b $00
[000bb586]                           dc.b $00
[000bb587]                           dc.b $55
[000bb588]                           dc.w $5580
[000bb58a]                           dc.b $00
[000bb58b]                           dc.b $00
[000bb58c]                           dc.b $00
[000bb58d]                           dc.b $40
[000bb58e]                           dc.w $0180
[000bb590]                           dc.b $00
[000bb591]                           dc.b $00
[000bb592]                           dc.b $00
[000bb593]                           dc.b $7f
[000bb594]                           dc.w $ffff
[000bb596]                           dc.w $f000
[000bb598]                           dc.b $00
[000bb599]                           dc.b $70
[000bb59a]                           dc.w $0700
[000bb59c]                           dc.w $1800
[000bb59e]                           dc.b $00
[000bb59f]                           dc.b $7f
[000bb5a0]                           dc.w $ff3f
[000bb5a2]                           dc.w $9800
[000bb5a4]                           dc.b $00
[000bb5a5]                           dc.b $40
[000bb5a6]                           dc.w $0100
[000bb5a8]                           dc.w $1800
[000bb5aa]                           dc.b $00
[000bb5ab]                           dc.b $4f
[000bb5ac]                           dc.w $f9ff
[000bb5ae]                           dc.w $f800
[000bb5b0]                           dc.b $00
[000bb5b1]                           dc.b $40
[000bb5b2]                           dc.w $01c0
[000bb5b4]                           dc.w $7800
[000bb5b6]                           dc.b $00
[000bb5b7]                           dc.b $40
[000bb5b8]                           dc.w $01ff
[000bb5ba]                           dc.w $f800
[000bb5bc]                           dc.b $00
[000bb5bd]                           dc.b $4f
[000bb5be]                           dc.w $f9ff
[000bb5c0]                           dc.w $f800
[000bb5c2]                           dc.b $00
[000bb5c3]                           dc.b $40
[000bb5c4]                           dc.w $01ff
[000bb5c6]                           dc.w $f800
[000bb5c8]                           dc.b $00
[000bb5c9]                           dc.b $7f
[000bb5ca]                           dc.w $ff80
[000bb5cc]                           dc.b $00
[000bb5cd]                           dc.b $00
[000bb5ce]                           dc.b $00
[000bb5cf]                           dc.b $3f
[000bb5d0]                           dc.w $ff80
[000bb5d2]                           dc.b $00
[000bb5d3]                           dc.b $00
[000bb5d4]                           dc.b $00
[000bb5d5]                           dc.b $00
[000bb5d6]                           dc.b $00
[000bb5d7]                           dc.b $00
[000bb5d8]                           dc.b $00
[000bb5d9]                           dc.b $00
[000bb5da]                           dc.b $00
[000bb5db]                           dc.b $00
[000bb5dc]                           dc.b $00
[000bb5dd]                           dc.b $00
[000bb5de]                           dc.b $00
[000bb5df]                           dc.b $00
[000bb5e0]                           dc.b $00
[000bb5e1]                           dc.b $00
[000bb5e2]                           dc.b $00
[000bb5e3]                           dc.b $00
[000bb5e4]                           dc.b $00
[000bb5e5]                           dc.b $00
[000bb5e6]                           dc.b $00
[000bb5e7]                           dc.b $00
[000bb5e8]                           dc.b $00
[000bb5e9]                           dc.b $00
[000bb5ea]                           dc.b $00
[000bb5eb]                           dc.b $00
[000bb5ec]                           dc.b $00
[000bb5ed]                           dc.b $00
[000bb5ee]                           dc.b $00
[000bb5ef]                           dc.b $00
[000bb5f0]                           dc.b $00
[000bb5f1]                           dc.b $00
IC_POPUP:
[000bb5f2] 000bb496                  dc.l _MSK_IC_POPUP
[000bb5f6] 000bb544                  dc.l _DAT_IC_POPUP
[000bb5fa] 000b8890                  dc.l TEXT_17
[000bb5fe]                           dc.w $1000
[000bb600]                           dc.b $00
[000bb601]                           dc.b $00
[000bb602]                           dc.b $00
[000bb603]                           dc.b $00
[000bb604]                           dc.b $00
[000bb605]                           dc.b $0c
[000bb606]                           dc.b $00
[000bb607]                           dc.b $00
[000bb608]                           dc.b $00
[000bb609]                           dc.b $30
[000bb60a]                           dc.b $00
[000bb60b]                           dc.b $1d
[000bb60c]                           dc.b $00
[000bb60d]                           dc.b $00
[000bb60e]                           dc.b $00
[000bb60f]                           dc.b $20
[000bb610]                           dc.b $00
[000bb611]                           dc.b $48
[000bb612]                           dc.b $00
[000bb613]                           dc.b $08
[000bb614] 000bb480                  dc.l _C4_IC_POPUP
_IMG_IM_SORT_XY:
[000bb618]                           dc.b $00
[000bb619]                           dc.b $00
[000bb61a]                           dc.b $00
[000bb61b]                           dc.b $00
[000bb61c]                           dc.b $00
[000bb61d]                           dc.b $00
[000bb61e]                           dc.b $00
[000bb61f]                           dc.b $00
[000bb620]                           dc.b $00
[000bb621]                           dc.b $00
[000bb622]                           dc.b $00
[000bb623]                           dc.b $00
[000bb624]                           dc.w $08ff
[000bb626]                           dc.w $e04f
[000bb628]                           dc.w $fe38
[000bb62a]                           dc.w $08ff
[000bb62c]                           dc.w $e02f
[000bb62e]                           dc.w $fe08
[000bb630]                           dc.w $08ff
[000bb632]                           dc.w $ffff
[000bb634]                           dc.w $fe38
[000bb636]                           dc.w $08ff
[000bb638]                           dc.w $e02f
[000bb63a]                           dc.w $fe20
[000bb63c]                           dc.w $08ff
[000bb63e]                           dc.w $e04f
[000bb640]                           dc.w $fe38
[000bb642]                           dc.b $00
[000bb643]                           dc.b $00
[000bb644]                           dc.b $00
[000bb645]                           dc.b $00
[000bb646]                           dc.w $4000
[000bb648]                           dc.b $00
[000bb649]                           dc.b $00
[000bb64a]                           dc.b $00
[000bb64b]                           dc.b $00
[000bb64c]                           dc.w $4000
[000bb64e]                           dc.b $00
[000bb64f]                           dc.b $07
[000bb650]                           dc.w $ffff
[000bb652]                           dc.w $c000
[000bb654]                           dc.b $00
[000bb655]                           dc.b $15
[000bb656]                           dc.b $00
[000bb657]                           dc.b $00
[000bb658]                           dc.b $00
[000bb659]                           dc.b $00
[000bb65a]                           dc.b $00
[000bb65b]                           dc.b $0e
[000bb65c]                           dc.b $00
[000bb65d]                           dc.b $00
[000bb65e]                           dc.b $00
[000bb65f]                           dc.b $00
[000bb660]                           dc.b $00
[000bb661]                           dc.b $04
[000bb662]                           dc.b $00
[000bb663]                           dc.b $00
[000bb664]                           dc.b $00
[000bb665]                           dc.b $00
[000bb666]                           dc.w $1cff
[000bb668]                           dc.w $e04f
[000bb66a]                           dc.w $fe20
[000bb66c]                           dc.w $04ff
[000bb66e]                           dc.w $e02f
[000bb670]                           dc.w $fe28
[000bb672]                           dc.w $0cff
[000bb674]                           dc.w $ffff
[000bb676]                           dc.w $fe38
[000bb678]                           dc.w $04ff
[000bb67a]                           dc.w $e02f
[000bb67c]                           dc.w $fe08
[000bb67e]                           dc.w $1cff
[000bb680]                           dc.w $e04f
[000bb682]                           dc.w $fe08
[000bb684]                           dc.b $00
[000bb685]                           dc.b $00
[000bb686]                           dc.b $00
[000bb687]                           dc.b $00
[000bb688]                           dc.w $4000
[000bb68a]                           dc.b $00
[000bb68b]                           dc.b $00
[000bb68c]                           dc.b $00
[000bb68d]                           dc.b $00
[000bb68e]                           dc.w $4000
[000bb690]                           dc.b $00
[000bb691]                           dc.b $07
[000bb692]                           dc.w $ffff
[000bb694]                           dc.w $c000
[000bb696]                           dc.b $00
[000bb697]                           dc.b $15
[000bb698]                           dc.b $00
[000bb699]                           dc.b $00
[000bb69a]                           dc.b $00
[000bb69b]                           dc.b $00
[000bb69c]                           dc.b $00
[000bb69d]                           dc.b $0e
[000bb69e]                           dc.b $00
[000bb69f]                           dc.b $00
[000bb6a0]                           dc.b $00
[000bb6a1]                           dc.b $00
[000bb6a2]                           dc.b $00
[000bb6a3]                           dc.b $04
[000bb6a4]                           dc.b $00
[000bb6a5]                           dc.b $00
[000bb6a6]                           dc.b $00
[000bb6a7]                           dc.b $00
[000bb6a8]                           dc.w $1cff
[000bb6aa]                           dc.w $e04f
[000bb6ac]                           dc.w $fe10
[000bb6ae]                           dc.w $10ff
[000bb6b0]                           dc.w $e02f
[000bb6b2]                           dc.w $fe20
[000bb6b4]                           dc.w $1cff
[000bb6b6]                           dc.w $ffff
[000bb6b8]                           dc.w $fe38
[000bb6ba]                           dc.w $04ff
[000bb6bc]                           dc.w $e02f
[000bb6be]                           dc.w $fe28
[000bb6c0]                           dc.w $1cff
[000bb6c2]                           dc.b $e0
[000bb6c3]                           dc.b $4f
[000bb6c4]                           dc.w $fe38
[000bb6c6]                           dc.b $00
[000bb6c7]                           dc.b $00
[000bb6c8]                           dc.b $00
[000bb6c9]                           dc.b $00
[000bb6ca]                           dc.b $00
[000bb6cb]                           dc.b $00
[000bb6cc]                           dc.b $00
[000bb6cd]                           dc.b $00
[000bb6ce]                           dc.b $00
[000bb6cf]                           dc.b $00
[000bb6d0]                           dc.b $00
[000bb6d1]                           dc.b $00
[000bb6d2]                           dc.b $00
[000bb6d3]                           dc.b $00
[000bb6d4]                           dc.b $00
[000bb6d5]                           dc.b $00
[000bb6d6]                           dc.b $00
[000bb6d7]                           dc.b $00
IM_SORT_XY:
[000bb6d8] 000bb618                  dc.l _IMG_IM_SORT_XY
[000bb6dc]                           dc.b $00
[000bb6dd]                           dc.b $06
[000bb6de]                           dc.b $00
[000bb6df]                           dc.b $20
[000bb6e0]                           dc.b $00
[000bb6e1]                           dc.b $00
[000bb6e2]                           dc.b $00
[000bb6e3]                           dc.b $00
[000bb6e4]                           dc.b $00
[000bb6e5]                           dc.b $01
_IMG_IM_SORT_YX:
[000bb6e6]                           dc.b $00
[000bb6e7]                           dc.b $00
[000bb6e8]                           dc.b $00
[000bb6e9]                           dc.b $00
[000bb6ea]                           dc.b $00
[000bb6eb]                           dc.b $00
[000bb6ec]                           dc.b $00
[000bb6ed]                           dc.b $00
[000bb6ee]                           dc.b $00
[000bb6ef]                           dc.b $00
[000bb6f0]                           dc.b $00
[000bb6f1]                           dc.b $00
[000bb6f2]                           dc.b $08
[000bb6f3]                           dc.b $ff
[000bb6f4]                           dc.w $e04f
[000bb6f6]                           dc.w $fe20
[000bb6f8]                           dc.w $08ff
[000bb6fa]                           dc.w $e02f
[000bb6fc]                           dc.w $fe28
[000bb6fe]                           dc.b $08
[000bb6ff]                           dc.b $ff
[000bb700]                           dc.w $e1ff
[000bb702]                           dc.w $fe38
[000bb704]                           dc.w $08ff
[000bb706]                           dc.w $e12f
[000bb708]                           dc.w $fe08
[000bb70a]                           dc.w $08ff
[000bb70c]                           dc.w $e14f
[000bb70e]                           dc.w $fe08
[000bb710]                           dc.b $00
[000bb711]                           dc.b $04
[000bb712]                           dc.w $0100
[000bb714]                           dc.w $4000
[000bb716]                           dc.b $00
[000bb717]                           dc.b $04
[000bb718]                           dc.b $01
[000bb719]                           dc.b $00
[000bb71a]                           dc.w $4000
[000bb71c]                           dc.b $00
[000bb71d]                           dc.b $04
[000bb71e]                           dc.w $0100
[000bb720]                           dc.w $4000
[000bb722]                           dc.b $00
[000bb723]                           dc.b $15
[000bb724]                           dc.w $0101
[000bb726]                           dc.w $5000
[000bb728]                           dc.b $00
[000bb729]                           dc.b $0e
[000bb72a]                           dc.w $0100
[000bb72c]                           dc.w $e000
[000bb72e]                           dc.b $00
[000bb72f]                           dc.b $04
[000bb730]                           dc.w $0100
[000bb732]                           dc.w $4000
[000bb734]                           dc.w $1cff
[000bb736]                           dc.w $e10f
[000bb738]                           dc.w $fe38
[000bb73a]                           dc.w $04ff
[000bb73c]                           dc.w $e10f
[000bb73e]                           dc.w $fe20
[000bb740]                           dc.w $1cff
[000bb742]                           dc.w $e10f
[000bb744]                           dc.w $fe38
[000bb746]                           dc.w $10ff
[000bb748]                           dc.w $e10f
[000bb74a]                           dc.w $fe08
[000bb74c]                           dc.w $1cff
[000bb74e]                           dc.w $e10f
[000bb750]                           dc.w $fe38
[000bb752]                           dc.b $00
[000bb753]                           dc.b $04
[000bb754]                           dc.w $0100
[000bb756]                           dc.w $4000
[000bb758]                           dc.b $00
[000bb759]                           dc.b $04
[000bb75a]                           dc.w $0100
[000bb75c]                           dc.w $4000
[000bb75e]                           dc.b $00
[000bb75f]                           dc.b $04
[000bb760]                           dc.w $0100
[000bb762]                           dc.w $4000
[000bb764]                           dc.b $00
[000bb765]                           dc.b $15
[000bb766]                           dc.w $0101
[000bb768]                           dc.w $5000
[000bb76a]                           dc.b $00
[000bb76b]                           dc.b $0e
[000bb76c]                           dc.w $0100
[000bb76e]                           dc.w $e000
[000bb770]                           dc.b $00
[000bb771]                           dc.b $04
[000bb772]                           dc.w $0100
[000bb774]                           dc.w $4000
[000bb776]                           dc.w $1cff
[000bb778]                           dc.w $e10f
[000bb77a]                           dc.w $fe10
[000bb77c]                           dc.w $04ff
[000bb77e]                           dc.w $e10f
[000bb780]                           dc.w $fe20
[000bb782]                           dc.w $0cff
[000bb784]                           dc.w $ff0f
[000bb786]                           dc.w $fe38
[000bb788]                           dc.w $04ff
[000bb78a]                           dc.w $e00f
[000bb78c]                           dc.w $fe28
[000bb78e]                           dc.w $1cff
[000bb790]                           dc.w $e00f
[000bb792]                           dc.w $fe38
[000bb794]                           dc.b $00
[000bb795]                           dc.b $00
[000bb796]                           dc.b $00
[000bb797]                           dc.b $00
[000bb798]                           dc.b $00
[000bb799]                           dc.b $00
[000bb79a]                           dc.b $00
[000bb79b]                           dc.b $00
[000bb79c]                           dc.b $00
[000bb79d]                           dc.b $00
[000bb79e]                           dc.b $00
[000bb79f]                           dc.b $00
[000bb7a0]                           dc.b $00
[000bb7a1]                           dc.b $00
[000bb7a2]                           dc.b $00
[000bb7a3]                           dc.b $00
[000bb7a4]                           dc.b $00
[000bb7a5]                           dc.b $00
IM_SORT_YX:
[000bb7a6] 000bb6e6                  dc.l _IMG_IM_SORT_YX
[000bb7aa]                           dc.b $00
[000bb7ab]                           dc.b $06
[000bb7ac]                           dc.b $00
[000bb7ad]                           dc.b $20
[000bb7ae]                           dc.b $00
[000bb7af]                           dc.b $00
[000bb7b0]                           dc.b $00
[000bb7b1]                           dc.b $00
[000bb7b2]                           dc.b $00
[000bb7b3]                           dc.b $01
MEN_EDIT:
[000bb7b4]                           dc.w $ffff
[000bb7b6]                           dc.b $00
[000bb7b7]                           dc.b $01
[000bb7b8]                           dc.b $00
[000bb7b9]                           dc.b $05
[000bb7ba]                           dc.b $00
[000bb7bb]                           dc.b $19
[000bb7bc]                           dc.b $00
[000bb7bd]                           dc.b $00
[000bb7be]                           dc.b $00
[000bb7bf]                           dc.b $00
[000bb7c0]                           dc.b $00
[000bb7c1]                           dc.b $00
[000bb7c2]                           dc.b $00
[000bb7c3]                           dc.b $00
[000bb7c4]                           dc.b $00
[000bb7c5]                           dc.b $00
[000bb7c6]                           dc.b $00
[000bb7c7]                           dc.b $00
[000bb7c8]                           dc.b $00
[000bb7c9]                           dc.b $5a
[000bb7ca]                           dc.b $00
[000bb7cb]                           dc.b $19
_01_MEN_EDIT:
[000bb7cc]                           dc.b $00
[000bb7cd]                           dc.b $05
[000bb7ce]                           dc.b $00
[000bb7cf]                           dc.b $02
[000bb7d0]                           dc.b $00
[000bb7d1]                           dc.b $02
[000bb7d2]                           dc.b $00
[000bb7d3]                           dc.b $14
[000bb7d4]                           dc.b $00
[000bb7d5]                           dc.b $00
[000bb7d6]                           dc.b $00
[000bb7d7]                           dc.b $00
[000bb7d8]                           dc.b $00
[000bb7d9]                           dc.b $00
[000bb7da]                           dc.w $1100
[000bb7dc]                           dc.b $00
[000bb7dd]                           dc.b $00
[000bb7de]                           dc.b $00
[000bb7df]                           dc.b $00
[000bb7e0]                           dc.b $00
[000bb7e1]                           dc.b $5a
[000bb7e2]                           dc.w $0201
_02_MEN_EDIT:
[000bb7e4]                           dc.b $00
[000bb7e5]                           dc.b $01
[000bb7e6]                           dc.b $00
[000bb7e7]                           dc.b $03
[000bb7e8]                           dc.b $00
[000bb7e9]                           dc.b $04
[000bb7ea]                           dc.b $00
[000bb7eb]                           dc.b $19
[000bb7ec]                           dc.b $00
[000bb7ed]                           dc.b $00
[000bb7ee]                           dc.b $00
[000bb7ef]                           dc.b $00
[000bb7f0]                           dc.b $00
[000bb7f1]                           dc.b $00
[000bb7f2]                           dc.b $00
[000bb7f3]                           dc.b $00
[000bb7f4]                           dc.b $00
[000bb7f5]                           dc.b $02
[000bb7f6]                           dc.b $00
[000bb7f7]                           dc.b $00
[000bb7f8]                           dc.b $00
[000bb7f9]                           dc.b $0c
[000bb7fa]                           dc.w $0301
_03_MEN_EDIT:
[000bb7fc]                           dc.b $00
[000bb7fd]                           dc.b $04
[000bb7fe]                           dc.w $ffff
[000bb800]                           dc.w $ffff
[000bb802]                           dc.b $00
[000bb803]                           dc.b $20
[000bb804]                           dc.b $00
[000bb805]                           dc.b $00
[000bb806]                           dc.b $00
[000bb807]                           dc.b $00
[000bb808] 000b86b3                  dc.l TEXT_002
[000bb80c]                           dc.b $00
[000bb80d]                           dc.b $00
[000bb80e]                           dc.b $00
[000bb80f]                           dc.b $00
[000bb810]                           dc.b $00
[000bb811]                           dc.b $06
[000bb812]                           dc.w $0301
_04_MEN_EDIT:
[000bb814]                           dc.b $00
[000bb815]                           dc.b $02
[000bb816]                           dc.w $ffff
[000bb818]                           dc.w $ffff
[000bb81a]                           dc.b $00
[000bb81b]                           dc.b $20
[000bb81c]                           dc.b $00
[000bb81d]                           dc.b $00
[000bb81e]                           dc.b $00
[000bb81f]                           dc.b $00
[000bb820] 000b89a4                  dc.l TEXT_339
[000bb824]                           dc.b $00
[000bb825]                           dc.b $06
[000bb826]                           dc.b $00
[000bb827]                           dc.b $00
[000bb828]                           dc.b $00
[000bb829]                           dc.b $06
[000bb82a]                           dc.w $0301
_05_MEN_EDIT:
[000bb82c]                           dc.b $00
[000bb82d]                           dc.b $00
[000bb82e]                           dc.b $00
[000bb82f]                           dc.b $06
[000bb830]                           dc.b $00
[000bb831]                           dc.b $0f
[000bb832]                           dc.b $00
[000bb833]                           dc.b $19
[000bb834]                           dc.b $00
[000bb835]                           dc.b $00
[000bb836]                           dc.b $00
[000bb837]                           dc.b $00
[000bb838]                           dc.b $00
[000bb839]                           dc.b $00
[000bb83a]                           dc.b $00
[000bb83b]                           dc.b $00
[000bb83c]                           dc.b $00
[000bb83d]                           dc.b $00
[000bb83e]                           dc.w $0301
[000bb840]                           dc.b $00
[000bb841]                           dc.b $50
[000bb842]                           dc.b $00
[000bb843]                           dc.b $13
_06_MEN_EDIT:
[000bb844]                           dc.b $00
[000bb845]                           dc.b $0f
[000bb846]                           dc.b $00
[000bb847]                           dc.b $07
[000bb848]                           dc.b $00
[000bb849]                           dc.b $0e
[000bb84a]                           dc.b $00
[000bb84b]                           dc.b $14
[000bb84c]                           dc.b $00
[000bb84d]                           dc.b $00
[000bb84e]                           dc.b $00
[000bb84f]                           dc.b $00
[000bb850]                           dc.b $00
[000bb851]                           dc.b $ff
[000bb852]                           dc.w $1100
[000bb854]                           dc.b $00
[000bb855]                           dc.b $02
[000bb856]                           dc.b $00
[000bb857]                           dc.b $00
[000bb858]                           dc.b $00
[000bb859]                           dc.b $14
[000bb85a]                           dc.b $00
[000bb85b]                           dc.b $08
_07_MEN_EDIT:
[000bb85c]                           dc.b $00
[000bb85d]                           dc.b $08
[000bb85e]                           dc.w $ffff
[000bb860]                           dc.w $ffff
[000bb862]                           dc.b $00
[000bb863]                           dc.b $1c
[000bb864]                           dc.b $00
[000bb865]                           dc.b $00
[000bb866]                           dc.w $2000
[000bb868] 000b8896                  dc.l TEXT_170
[000bb86c]                           dc.b $00
[000bb86d]                           dc.b $00
[000bb86e]                           dc.b $00
[000bb86f]                           dc.b $00
[000bb870]                           dc.b $00
[000bb871]                           dc.b $14
[000bb872]                           dc.b $00
[000bb873]                           dc.b $01
_08_MEN_EDIT:
[000bb874]                           dc.b $00
[000bb875]                           dc.b $09
[000bb876]                           dc.w $ffff
[000bb878]                           dc.w $ffff
[000bb87a]                           dc.b $00
[000bb87b]                           dc.b $1c
[000bb87c]                           dc.b $00
[000bb87d]                           dc.b $00
[000bb87e]                           dc.w $2000
[000bb880] 000b88ab                  dc.l TEXT_171
[000bb884]                           dc.b $00
[000bb885]                           dc.b $00
[000bb886]                           dc.b $00
[000bb887]                           dc.b $01
[000bb888]                           dc.b $00
[000bb889]                           dc.b $14
[000bb88a]                           dc.b $00
[000bb88b]                           dc.b $01
_09_MEN_EDIT:
[000bb88c]                           dc.b $00
[000bb88d]                           dc.b $0a
[000bb88e]                           dc.w $ffff
[000bb890]                           dc.w $ffff
[000bb892]                           dc.b $00
[000bb893]                           dc.b $1c
[000bb894]                           dc.b $00
[000bb895]                           dc.b $00
[000bb896]                           dc.w $2000
[000bb898] 000b86b3                  dc.l TEXT_002
[000bb89c]                           dc.b $00
[000bb89d]                           dc.b $00
[000bb89e]                           dc.b $00
[000bb89f]                           dc.b $02
[000bb8a0]                           dc.b $00
[000bb8a1]                           dc.b $14
[000bb8a2]                           dc.b $00
[000bb8a3]                           dc.b $01
_10_MEN_EDIT:
[000bb8a4]                           dc.b $00
[000bb8a5]                           dc.b $0b
[000bb8a6]                           dc.w $ffff
[000bb8a8]                           dc.w $ffff
[000bb8aa]                           dc.b $00
[000bb8ab]                           dc.b $1c
[000bb8ac]                           dc.b $00
[000bb8ad]                           dc.b $00
[000bb8ae]                           dc.w $2000
[000bb8b0] 000b86b3                  dc.l TEXT_002
[000bb8b4]                           dc.b $00
[000bb8b5]                           dc.b $00
[000bb8b6]                           dc.b $00
[000bb8b7]                           dc.b $03
[000bb8b8]                           dc.b $00
[000bb8b9]                           dc.b $14
[000bb8ba]                           dc.b $00
[000bb8bb]                           dc.b $01
_11_MEN_EDIT:
[000bb8bc]                           dc.b $00
[000bb8bd]                           dc.b $0c
[000bb8be]                           dc.w $ffff
[000bb8c0]                           dc.w $ffff
[000bb8c2]                           dc.b $00
[000bb8c3]                           dc.b $1c
[000bb8c4]                           dc.b $00
[000bb8c5]                           dc.b $00
[000bb8c6]                           dc.w $2000
[000bb8c8] 000b86b3                  dc.l TEXT_002
[000bb8cc]                           dc.b $00
[000bb8cd]                           dc.b $00
[000bb8ce]                           dc.b $00
[000bb8cf]                           dc.b $04
[000bb8d0]                           dc.b $00
[000bb8d1]                           dc.b $14
[000bb8d2]                           dc.b $00
[000bb8d3]                           dc.b $01
_12_MEN_EDIT:
[000bb8d4]                           dc.b $00
[000bb8d5]                           dc.b $0d
[000bb8d6]                           dc.w $ffff
[000bb8d8]                           dc.w $ffff
[000bb8da]                           dc.b $00
[000bb8db]                           dc.b $1c
[000bb8dc]                           dc.b $00
[000bb8dd]                           dc.b $00
[000bb8de]                           dc.w $2000
[000bb8e0] 000b86b3                  dc.l TEXT_002
[000bb8e4]                           dc.b $00
[000bb8e5]                           dc.b $00
[000bb8e6]                           dc.b $00
[000bb8e7]                           dc.b $05
[000bb8e8]                           dc.b $00
[000bb8e9]                           dc.b $14
[000bb8ea]                           dc.b $00
[000bb8eb]                           dc.b $01
_13_MEN_EDIT:
[000bb8ec]                           dc.b $00
[000bb8ed]                           dc.b $0e
[000bb8ee]                           dc.w $ffff
[000bb8f0]                           dc.w $ffff
[000bb8f2]                           dc.b $00
[000bb8f3]                           dc.b $1c
[000bb8f4]                           dc.b $00
[000bb8f5]                           dc.b $00
[000bb8f6]                           dc.w $2000
[000bb8f8] 000b86b3                  dc.l TEXT_002
[000bb8fc]                           dc.b $00
[000bb8fd]                           dc.b $00
[000bb8fe]                           dc.b $00
[000bb8ff]                           dc.b $06
[000bb900]                           dc.b $00
[000bb901]                           dc.b $14
[000bb902]                           dc.b $00
[000bb903]                           dc.b $01
_14_MEN_EDIT:
[000bb904]                           dc.b $00
[000bb905]                           dc.b $06
[000bb906]                           dc.w $ffff
[000bb908]                           dc.w $ffff
[000bb90a]                           dc.b $00
[000bb90b]                           dc.b $1c
[000bb90c]                           dc.b $00
[000bb90d]                           dc.b $00
[000bb90e]                           dc.w $2000
[000bb910] 000b86b3                  dc.l TEXT_002
[000bb914]                           dc.b $00
[000bb915]                           dc.b $00
[000bb916]                           dc.b $00
[000bb917]                           dc.b $07
[000bb918]                           dc.b $00
[000bb919]                           dc.b $14
[000bb91a]                           dc.b $00
[000bb91b]                           dc.b $01
_15_MEN_EDIT:
[000bb91c]                           dc.b $00
[000bb91d]                           dc.b $05
[000bb91e]                           dc.b $00
[000bb91f]                           dc.b $10
[000bb920]                           dc.b $00
[000bb921]                           dc.b $1a
[000bb922]                           dc.b $00
[000bb923]                           dc.b $14
[000bb924]                           dc.b $00
[000bb925]                           dc.b $00
[000bb926]                           dc.b $00
[000bb927]                           dc.b $00
[000bb928]                           dc.b $00
[000bb929]                           dc.b $ff
[000bb92a]                           dc.w $1101
[000bb92c]                           dc.b $00
[000bb92d]                           dc.b $08
[000bb92e]                           dc.b $00
[000bb92f]                           dc.b $00
[000bb930]                           dc.b $00
[000bb931]                           dc.b $18
[000bb932]                           dc.b $00
[000bb933]                           dc.b $07
_16_MEN_EDIT:
[000bb934]                           dc.b $00
[000bb935]                           dc.b $12
[000bb936]                           dc.w $ffff
[000bb938]                           dc.w $ffff
[000bb93a]                           dc.b $00
[000bb93b]                           dc.b $1c
[000bb93c]                           dc.b $00
[000bb93d]                           dc.b $00
[000bb93e]                           dc.w $0100
[000bb940] 000b8729                  dc.l TEXT_04
[000bb944]                           dc.b $00
[000bb945]                           dc.b $00
[000bb946]                           dc.b $00
[000bb947]                           dc.b $00
[000bb948]                           dc.b $00
[000bb949]                           dc.b $18
[000bb94a]                           dc.b $00
[000bb94b]                           dc.b $01
_16aMEN_EDIT:
[000bb94c] 0002a316                  dc.l eded_keys
[000bb950]                           dc.b $00
[000bb951]                           dc.b $00
[000bb952]                           dc.b $00
[000bb953]                           dc.b $00
[000bb954]                           dc.w $8000
[000bb956]                           dc.w $884c
[000bb958]                           dc.b $00
[000bb959]                           dc.b $00
[000bb95a]                           dc.b $00
[000bb95b]                           dc.b $00
[000bb95c]                           dc.b $00
[000bb95d]                           dc.b $00
[000bb95e]                           dc.b $00
[000bb95f]                           dc.b $00
[000bb960]                           dc.b $00
[000bb961]                           dc.b $00
[000bb962]                           dc.b $00
[000bb963]                           dc.b $00
_18_MEN_EDIT:
[000bb964]                           dc.b $00
[000bb965]                           dc.b $14
[000bb966]                           dc.w $ffff
[000bb968]                           dc.w $ffff
[000bb96a]                           dc.b $00
[000bb96b]                           dc.b $1c
[000bb96c]                           dc.b $00
[000bb96d]                           dc.b $00
[000bb96e]                           dc.w $0100
[000bb970] 000b87c5                  dc.l TEXT_09
[000bb974]                           dc.b $00
[000bb975]                           dc.b $00
[000bb976]                           dc.b $00
[000bb977]                           dc.b $01
[000bb978]                           dc.b $00
[000bb979]                           dc.b $18
[000bb97a]                           dc.b $00
[000bb97b]                           dc.b $01
_18aMEN_EDIT:
[000bb97c] 0002a98c                  dc.l eded_try
[000bb980]                           dc.b $00
[000bb981]                           dc.b $00
[000bb982]                           dc.b $00
[000bb983]                           dc.b $00
[000bb984]                           dc.w $8000
[000bb986]                           dc.w $8854
[000bb988]                           dc.b $00
[000bb989]                           dc.b $00
[000bb98a]                           dc.b $00
[000bb98b]                           dc.b $00
[000bb98c]                           dc.b $00
[000bb98d]                           dc.b $00
[000bb98e]                           dc.b $00
[000bb98f]                           dc.b $00
[000bb990]                           dc.b $00
[000bb991]                           dc.b $00
[000bb992]                           dc.b $00
[000bb993]                           dc.b $00
_20_MEN_EDIT:
[000bb994]                           dc.b $00
[000bb995]                           dc.b $15
[000bb996]                           dc.w $ffff
[000bb998]                           dc.w $ffff
[000bb99a]                           dc.b $00
[000bb99b]                           dc.b $18
[000bb99c]                           dc.b $00
[000bb99d]                           dc.b $00
[000bb99e]                           dc.w $0108
[000bb9a0] 000bb098                  dc.l A_ARROWS02
[000bb9a4]                           dc.b $00
[000bb9a5]                           dc.b $00
[000bb9a6]                           dc.b $00
[000bb9a7]                           dc.b $02
[000bb9a8]                           dc.b $00
[000bb9a9]                           dc.b $18
[000bb9aa]                           dc.b $00
[000bb9ab]                           dc.b $01
_21_MEN_EDIT:
[000bb9ac]                           dc.b $00
[000bb9ad]                           dc.b $17
[000bb9ae]                           dc.w $ffff
[000bb9b0]                           dc.w $ffff
[000bb9b2]                           dc.b $00
[000bb9b3]                           dc.b $1c
[000bb9b4]                           dc.b $00
[000bb9b5]                           dc.b $00
[000bb9b6]                           dc.w $0100
[000bb9b8] 000b8751                  dc.l TEXT_06
[000bb9bc]                           dc.b $00
[000bb9bd]                           dc.b $00
[000bb9be]                           dc.b $00
[000bb9bf]                           dc.b $03
[000bb9c0]                           dc.b $00
[000bb9c1]                           dc.b $18
[000bb9c2]                           dc.b $00
[000bb9c3]                           dc.b $01
_21aMEN_EDIT:
[000bb9c4] 0002a26a                  dc.l eded_info
[000bb9c8]                           dc.b $00
[000bb9c9]                           dc.b $00
[000bb9ca]                           dc.b $00
[000bb9cb]                           dc.b $00
[000bb9cc]                           dc.w $8000
[000bb9ce]                           dc.w $8449
[000bb9d0]                           dc.b $00
[000bb9d1]                           dc.b $00
[000bb9d2]                           dc.b $00
[000bb9d3]                           dc.b $00
[000bb9d4]                           dc.b $00
[000bb9d5]                           dc.b $00
[000bb9d6]                           dc.b $00
[000bb9d7]                           dc.b $00
[000bb9d8]                           dc.b $00
[000bb9d9]                           dc.b $00
[000bb9da]                           dc.b $00
[000bb9db]                           dc.b $00
_23_MEN_EDIT:
[000bb9dc]                           dc.b $00
[000bb9dd]                           dc.b $18
[000bb9de]                           dc.w $ffff
[000bb9e0]                           dc.w $ffff
[000bb9e2]                           dc.b $00
[000bb9e3]                           dc.b $18
[000bb9e4]                           dc.b $00
[000bb9e5]                           dc.b $00
[000bb9e6]                           dc.w $0108
[000bb9e8] 000bb098                  dc.l A_ARROWS02
[000bb9ec]                           dc.b $00
[000bb9ed]                           dc.b $00
[000bb9ee]                           dc.b $00
[000bb9ef]                           dc.b $04
[000bb9f0]                           dc.b $00
[000bb9f1]                           dc.b $18
[000bb9f2]                           dc.b $00
[000bb9f3]                           dc.b $01
_24_MEN_EDIT:
[000bb9f4]                           dc.b $00
[000bb9f5]                           dc.b $1a
[000bb9f6]                           dc.w $ffff
[000bb9f8]                           dc.w $ffff
[000bb9fa]                           dc.b $00
[000bb9fb]                           dc.b $1c
[000bb9fc]                           dc.b $00
[000bb9fd]                           dc.b $00
[000bb9fe]                           dc.w $0100
[000bba00] 000b8770                  dc.l TEXT_07
[000bba04]                           dc.b $00
[000bba05]                           dc.b $00
[000bba06]                           dc.b $00
[000bba07]                           dc.b $05
[000bba08]                           dc.b $00
[000bba09]                           dc.b $18
[000bba0a]                           dc.b $00
[000bba0b]                           dc.b $01
_24aMEN_EDIT:
[000bba0c] 0002f150                  dc.l edob_resetref
[000bba10]                           dc.b $00
[000bba11]                           dc.b $00
[000bba12]                           dc.b $00
[000bba13]                           dc.b $00
[000bba14]                           dc.w $8000
[000bba16]                           dc.b $00
[000bba17]                           dc.b $00
[000bba18]                           dc.b $00
[000bba19]                           dc.b $00
[000bba1a]                           dc.b $00
[000bba1b]                           dc.b $00
[000bba1c]                           dc.b $00
[000bba1d]                           dc.b $00
[000bba1e]                           dc.b $00
[000bba1f]                           dc.b $00
[000bba20]                           dc.b $00
[000bba21]                           dc.b $00
[000bba22]                           dc.b $00
[000bba23]                           dc.b $00
_26_MEN_EDIT:
[000bba24]                           dc.b $00
[000bba25]                           dc.b $0f
[000bba26]                           dc.w $ffff
[000bba28]                           dc.w $ffff
[000bba2a]                           dc.b $00
[000bba2b]                           dc.b $1c
[000bba2c]                           dc.b $00
[000bba2d]                           dc.b $00
[000bba2e]                           dc.w $0100
[000bba30] 000b88c0                  dc.l TEXT_18
[000bba34]                           dc.b $00
[000bba35]                           dc.b $00
[000bba36]                           dc.b $00
[000bba37]                           dc.b $06
[000bba38]                           dc.b $00
[000bba39]                           dc.b $18
[000bba3a]                           dc.b $00
[000bba3b]                           dc.b $01
_26aMEN_EDIT:
[000bba3c] 0002a27c                  dc.l eded_parts
[000bba40]                           dc.b $00
[000bba41]                           dc.b $00
[000bba42]                           dc.b $00
[000bba43]                           dc.b $00
[000bba44]                           dc.w $8020
[000bba46]                           dc.b $00
[000bba47]                           dc.b $4b
[000bba48]                           dc.b $00
[000bba49]                           dc.b $00
[000bba4a]                           dc.b $00
[000bba4b]                           dc.b $00
[000bba4c]                           dc.b $00
[000bba4d]                           dc.b $00
[000bba4e]                           dc.b $00
[000bba4f]                           dc.b $00
[000bba50]                           dc.b $00
[000bba51]                           dc.b $00
[000bba52]                           dc.b $00
[000bba53]                           dc.b $00
OBJ_POPUP:
[000bba54]                           dc.w $ffff
[000bba56]                           dc.b $00
[000bba57]                           dc.b $01
[000bba58]                           dc.b $00
[000bba59]                           dc.b $52
[000bba5a]                           dc.b $00
[000bba5b]                           dc.b $14
[000bba5c]                           dc.b $00
[000bba5d]                           dc.b $00
[000bba5e]                           dc.b $00
[000bba5f]                           dc.b $20
[000bba60]                           dc.b $00
[000bba61]                           dc.b $ff
[000bba62]                           dc.w $1100
[000bba64]                           dc.b $00
[000bba65]                           dc.b $00
[000bba66]                           dc.b $00
[000bba67]                           dc.b $00
[000bba68]                           dc.b $00
[000bba69]                           dc.b $14
[000bba6a]                           dc.b $00
[000bba6b]                           dc.b $07
_01_OBJ_POPUP:
[000bba6c]                           dc.b $00
[000bba6d]                           dc.b $03
[000bba6e]                           dc.w $ffff
[000bba70]                           dc.w $ffff
[000bba72]                           dc.b $00
[000bba73]                           dc.b $18
[000bba74]                           dc.b $00
[000bba75]                           dc.b $41
[000bba76]                           dc.b $00
[000bba77]                           dc.b $00
[000bba78] 000badd8                  dc.l A_3DBUTTON06
[000bba7c]                           dc.b $00
[000bba7d]                           dc.b $00
[000bba7e]                           dc.b $00
[000bba7f]                           dc.b $00
[000bba80]                           dc.b $00
[000bba81]                           dc.b $14
[000bba82]                           dc.b $00
[000bba83]                           dc.b $01
_01aOBJ_POPUP:
[000bba84] 0002def8                  dc.l edob_specs
[000bba88]                           dc.b $00
[000bba89]                           dc.b $00
[000bba8a]                           dc.b $00
[000bba8b]                           dc.b $00
[000bba8c]                           dc.w $8000
[000bba8e]                           dc.b $00
[000bba8f]                           dc.b $00
[000bba90]                           dc.b $00
[000bba91]                           dc.b $00
[000bba92]                           dc.b $00
[000bba93]                           dc.b $00
[000bba94]                           dc.b $00
[000bba95]                           dc.b $00
[000bba96]                           dc.b $00
[000bba97]                           dc.b $00
[000bba98]                           dc.b $00
[000bba99]                           dc.b $00
[000bba9a]                           dc.b $00
[000bba9b]                           dc.b $00
_03_OBJ_POPUP:
[000bba9c]                           dc.b $00
[000bba9d]                           dc.b $05
[000bba9e]                           dc.w $ffff
[000bbaa0]                           dc.w $ffff
[000bbaa2]                           dc.b $00
[000bbaa3]                           dc.b $18
[000bbaa4]                           dc.b $00
[000bbaa5]                           dc.b $41
[000bbaa6]                           dc.b $00
[000bbaa7]                           dc.b $00
[000bbaa8] 000baeb8                  dc.l A_3DBUTTON13
[000bbaac]                           dc.b $00
[000bbaad]                           dc.b $00
[000bbaae]                           dc.b $00
[000bbaaf]                           dc.b $01
[000bbab0]                           dc.b $00
[000bbab1]                           dc.b $14
[000bbab2]                           dc.b $00
[000bbab3]                           dc.b $01
_03aOBJ_POPUP:
[000bbab4] 0002ddaa                  dc.l edob_aflags
[000bbab8]                           dc.b $00
[000bbab9]                           dc.b $00
[000bbaba]                           dc.b $00
[000bbabb]                           dc.b $00
[000bbabc]                           dc.w $8000
[000bbabe]                           dc.b $00
[000bbabf]                           dc.b $00
[000bbac0]                           dc.b $00
[000bbac1]                           dc.b $00
[000bbac2]                           dc.b $00
[000bbac3]                           dc.b $00
[000bbac4]                           dc.b $00
[000bbac5]                           dc.b $00
[000bbac6]                           dc.b $00
[000bbac7]                           dc.b $00
[000bbac8]                           dc.b $00
[000bbac9]                           dc.b $00
[000bbaca]                           dc.b $00
[000bbacb]                           dc.b $00
_05_OBJ_POPUP:
[000bbacc]                           dc.b $00
[000bbacd]                           dc.b $07
[000bbace]                           dc.w $ffff
[000bbad0]                           dc.w $ffff
[000bbad2]                           dc.b $00
[000bbad3]                           dc.b $18
[000bbad4]                           dc.b $00
[000bbad5]                           dc.b $41
[000bbad6]                           dc.b $00
[000bbad7]                           dc.b $00
[000bbad8] 000bad98                  dc.l A_3DBUTTON04
[000bbadc]                           dc.b $00
[000bbadd]                           dc.b $00
[000bbade]                           dc.b $00
[000bbadf]                           dc.b $02
[000bbae0]                           dc.b $00
[000bbae1]                           dc.b $14
[000bbae2]                           dc.b $00
[000bbae3]                           dc.b $01
_05aOBJ_POPUP:
[000bbae4] 0002dac2                  dc.l edob_refs
[000bbae8]                           dc.b $00
[000bbae9]                           dc.b $00
[000bbaea]                           dc.b $00
[000bbaeb]                           dc.b $00
[000bbaec]                           dc.w $8000
[000bbaee]                           dc.b $00
[000bbaef]                           dc.b $00
[000bbaf0]                           dc.b $00
[000bbaf1]                           dc.b $00
[000bbaf2]                           dc.b $00
[000bbaf3]                           dc.b $00
[000bbaf4]                           dc.b $00
[000bbaf5]                           dc.b $00
[000bbaf6]                           dc.b $00
[000bbaf7]                           dc.b $00
[000bbaf8]                           dc.b $00
[000bbaf9]                           dc.b $00
[000bbafa]                           dc.b $00
[000bbafb]                           dc.b $00
_07_OBJ_POPUP:
[000bbafc]                           dc.b $00
[000bbafd]                           dc.b $09
[000bbafe]                           dc.w $ffff
[000bbb00]                           dc.w $ffff
[000bbb02]                           dc.b $00
[000bbb03]                           dc.b $18
[000bbb04]                           dc.b $00
[000bbb05]                           dc.b $41
[000bbb06]                           dc.b $00
[000bbb07]                           dc.b $00
[000bbb08] 000bae38                  dc.l A_3DBUTTON09
[000bbb0c]                           dc.b $00
[000bbb0d]                           dc.b $00
[000bbb0e]                           dc.b $00
[000bbb0f]                           dc.b $03
[000bbb10]                           dc.b $00
[000bbb11]                           dc.b $14
[000bbb12]                           dc.b $00
[000bbb13]                           dc.b $01
_07aOBJ_POPUP:
[000bbb14] 0002ec5e                  dc.l edob_pos
[000bbb18]                           dc.b $00
[000bbb19]                           dc.b $00
[000bbb1a]                           dc.b $00
[000bbb1b]                           dc.b $00
[000bbb1c]                           dc.w $8000
[000bbb1e]                           dc.b $00
[000bbb1f]                           dc.b $00
[000bbb20]                           dc.b $00
[000bbb21]                           dc.b $00
[000bbb22]                           dc.b $00
[000bbb23]                           dc.b $00
[000bbb24]                           dc.b $00
[000bbb25]                           dc.b $00
[000bbb26]                           dc.b $00
[000bbb27]                           dc.b $00
[000bbb28]                           dc.b $00
[000bbb29]                           dc.b $00
[000bbb2a]                           dc.b $00
[000bbb2b]                           dc.b $00
_09_OBJ_POPUP:
[000bbb2c]                           dc.b $00
[000bbb2d]                           dc.b $1c
[000bbb2e]                           dc.b $00
[000bbb2f]                           dc.b $0a
[000bbb30]                           dc.b $00
[000bbb31]                           dc.b $1a
[000bbb32]                           dc.b $00
[000bbb33]                           dc.b $14
[000bbb34]                           dc.b $00
[000bbb35]                           dc.b $80
[000bbb36]                           dc.b $00
[000bbb37]                           dc.b $20
[000bbb38]                           dc.b $00
[000bbb39]                           dc.b $ff
[000bbb3a]                           dc.w $1101
[000bbb3c]                           dc.b $00
[000bbb3d]                           dc.b $00
[000bbb3e]                           dc.b $00
[000bbb3f]                           dc.b $04
[000bbb40]                           dc.b $00
[000bbb41]                           dc.b $0a
[000bbb42]                           dc.b $00
[000bbb43]                           dc.b $0a
_10_OBJ_POPUP:
[000bbb44]                           dc.b $00
[000bbb45]                           dc.b $0b
[000bbb46]                           dc.w $ffff
[000bbb48]                           dc.w $ffff
[000bbb4a]                           dc.b $00
[000bbb4b]                           dc.b $1c
[000bbb4c]                           dc.b $00
[000bbb4d]                           dc.b $00
[000bbb4e]                           dc.w $2008
[000bbb50] 000b8829                  dc.l TEXT_099
[000bbb54]                           dc.b $00
[000bbb55]                           dc.b $00
[000bbb56]                           dc.b $00
[000bbb57]                           dc.b $00
[000bbb58]                           dc.b $00
[000bbb59]                           dc.b $0a
[000bbb5a]                           dc.b $00
[000bbb5b]                           dc.b $01
_11_OBJ_POPUP:
[000bbb5c]                           dc.b $00
[000bbb5d]                           dc.b $0d
[000bbb5e]                           dc.w $ffff
[000bbb60]                           dc.w $ffff
[000bbb62]                           dc.b $00
[000bbb63]                           dc.b $1c
[000bbb64]                           dc.b $00
[000bbb65]                           dc.b $01
[000bbb66]                           dc.b $00
[000bbb67]                           dc.b $00
[000bbb68] 000b87ee                  dc.l TEXT_092
[000bbb6c]                           dc.b $00
[000bbb6d]                           dc.b $00
[000bbb6e]                           dc.b $00
[000bbb6f]                           dc.b $01
[000bbb70]                           dc.b $00
[000bbb71]                           dc.b $0a
[000bbb72]                           dc.b $00
[000bbb73]                           dc.b $01
_11aOBJ_POPUP:
[000bbb74] 0002e200                  dc.l edob_left
[000bbb78]                           dc.b $00
[000bbb79]                           dc.b $00
[000bbb7a]                           dc.b $00
[000bbb7b]                           dc.b $00
[000bbb7c]                           dc.w $8000
[000bbb7e]                           dc.b $00
[000bbb7f]                           dc.b $00
[000bbb80]                           dc.b $00
[000bbb81]                           dc.b $00
[000bbb82]                           dc.b $00
[000bbb83]                           dc.b $00
[000bbb84]                           dc.b $00
[000bbb85]                           dc.b $00
[000bbb86]                           dc.b $00
[000bbb87]                           dc.b $00
[000bbb88]                           dc.b $00
[000bbb89]                           dc.b $00
[000bbb8a]                           dc.b $00
[000bbb8b]                           dc.b $00
_13_OBJ_POPUP:
[000bbb8c]                           dc.b $00
[000bbb8d]                           dc.b $0f
[000bbb8e]                           dc.w $ffff
[000bbb90]                           dc.w $ffff
[000bbb92]                           dc.b $00
[000bbb93]                           dc.b $1c
[000bbb94]                           dc.b $00
[000bbb95]                           dc.b $01
[000bbb96]                           dc.b $00
[000bbb97]                           dc.b $00
[000bbb98] 000b87e6                  dc.l TEXT_091
[000bbb9c]                           dc.b $00
[000bbb9d]                           dc.b $00
[000bbb9e]                           dc.b $00
[000bbb9f]                           dc.b $02
[000bbba0]                           dc.b $00
[000bbba1]                           dc.b $0a
[000bbba2]                           dc.b $00
[000bbba3]                           dc.b $01
_13aOBJ_POPUP:
[000bbba4] 0002e31c                  dc.l edob_center
[000bbba8]                           dc.b $00
[000bbba9]                           dc.b $00
[000bbbaa]                           dc.b $00
[000bbbab]                           dc.b $00
[000bbbac]                           dc.w $8000
[000bbbae]                           dc.b $00
[000bbbaf]                           dc.b $00
[000bbbb0]                           dc.b $00
[000bbbb1]                           dc.b $00
[000bbbb2]                           dc.b $00
[000bbbb3]                           dc.b $00
[000bbbb4]                           dc.b $00
[000bbbb5]                           dc.b $00
[000bbbb6]                           dc.b $00
[000bbbb7]                           dc.b $00
[000bbbb8]                           dc.b $00
[000bbbb9]                           dc.b $00
[000bbbba]                           dc.b $00
[000bbbbb]                           dc.b $00
_15_OBJ_POPUP:
[000bbbbc]                           dc.b $00
[000bbbbd]                           dc.b $11
[000bbbbe]                           dc.w $ffff
[000bbbc0]                           dc.w $ffff
[000bbbc2]                           dc.b $00
[000bbbc3]                           dc.b $1c
[000bbbc4]                           dc.b $00
[000bbbc5]                           dc.b $01
[000bbbc6]                           dc.b $00
[000bbbc7]                           dc.b $00
[000bbbc8] 000b87dd                  dc.l TEXT_090
[000bbbcc]                           dc.b $00
[000bbbcd]                           dc.b $00
[000bbbce]                           dc.b $00
[000bbbcf]                           dc.b $03
[000bbbd0]                           dc.b $00
[000bbbd1]                           dc.b $0a
[000bbbd2]                           dc.b $00
[000bbbd3]                           dc.b $01
_15aOBJ_POPUP:
[000bbbd4] 0002e27a                  dc.l edob_right
[000bbbd8]                           dc.b $00
[000bbbd9]                           dc.b $00
[000bbbda]                           dc.b $00
[000bbbdb]                           dc.b $00
[000bbbdc]                           dc.w $8000
[000bbbde]                           dc.b $00
[000bbbdf]                           dc.b $00
[000bbbe0]                           dc.b $00
[000bbbe1]                           dc.b $00
[000bbbe2]                           dc.b $00
[000bbbe3]                           dc.b $00
[000bbbe4]                           dc.b $00
[000bbbe5]                           dc.b $00
[000bbbe6]                           dc.b $00
[000bbbe7]                           dc.b $00
[000bbbe8]                           dc.b $00
[000bbbe9]                           dc.b $00
[000bbbea]                           dc.b $00
[000bbbeb]                           dc.b $00
_17_OBJ_POPUP:
[000bbbec]                           dc.b $00
[000bbbed]                           dc.b $13
[000bbbee]                           dc.w $ffff
[000bbbf0]                           dc.w $ffff
[000bbbf2]                           dc.b $00
[000bbbf3]                           dc.b $1c
[000bbbf4]                           dc.b $00
[000bbbf5]                           dc.b $01
[000bbbf6]                           dc.b $00
[000bbbf7]                           dc.b $00
[000bbbf8] 000b883b                  dc.l TEXT_100
[000bbbfc]                           dc.b $00
[000bbbfd]                           dc.b $00
[000bbbfe]                           dc.b $00
[000bbbff]                           dc.b $04
[000bbc00]                           dc.b $00
[000bbc01]                           dc.b $0a
[000bbc02]                           dc.b $00
[000bbc03]                           dc.b $01
_17aOBJ_POPUP:
[000bbc04] 0002e3c0                  dc.l edob_horfill
[000bbc08]                           dc.b $00
[000bbc09]                           dc.b $00
[000bbc0a]                           dc.b $00
[000bbc0b]                           dc.b $00
[000bbc0c]                           dc.w $8000
[000bbc0e]                           dc.b $00
[000bbc0f]                           dc.b $00
[000bbc10]                           dc.b $00
[000bbc11]                           dc.b $00
[000bbc12]                           dc.b $00
[000bbc13]                           dc.b $00
[000bbc14]                           dc.b $00
[000bbc15]                           dc.b $00
[000bbc16]                           dc.b $00
[000bbc17]                           dc.b $00
[000bbc18]                           dc.b $00
[000bbc19]                           dc.b $00
[000bbc1a]                           dc.b $00
[000bbc1b]                           dc.b $00
_19_OBJ_POPUP:
[000bbc1c]                           dc.b $00
[000bbc1d]                           dc.b $14
[000bbc1e]                           dc.w $ffff
[000bbc20]                           dc.w $ffff
[000bbc22]                           dc.b $00
[000bbc23]                           dc.b $1c
[000bbc24]                           dc.b $00
[000bbc25]                           dc.b $00
[000bbc26]                           dc.w $2008
[000bbc28] 000b87fd                  dc.l TEXT_094
[000bbc2c]                           dc.b $00
[000bbc2d]                           dc.b $00
[000bbc2e]                           dc.b $00
[000bbc2f]                           dc.b $05
[000bbc30]                           dc.b $00
[000bbc31]                           dc.b $0a
[000bbc32]                           dc.b $00
[000bbc33]                           dc.b $01
_20_OBJ_POPUP:
[000bbc34]                           dc.b $00
[000bbc35]                           dc.b $16
[000bbc36]                           dc.w $ffff
[000bbc38]                           dc.w $ffff
[000bbc3a]                           dc.b $00
[000bbc3b]                           dc.b $1c
[000bbc3c]                           dc.b $00
[000bbc3d]                           dc.b $01
[000bbc3e]                           dc.b $00
[000bbc3f]                           dc.b $00
[000bbc40] 000b87f6                  dc.l TEXT_093
[000bbc44]                           dc.b $00
[000bbc45]                           dc.b $00
[000bbc46]                           dc.b $00
[000bbc47]                           dc.b $06
[000bbc48]                           dc.b $00
[000bbc49]                           dc.b $0a
[000bbc4a]                           dc.b $00
[000bbc4b]                           dc.b $01
_20aOBJ_POPUP:
[000bbc4c] 0002e49a                  dc.l edob_top
[000bbc50]                           dc.b $00
[000bbc51]                           dc.b $00
[000bbc52]                           dc.b $00
[000bbc53]                           dc.b $00
[000bbc54]                           dc.w $8000
[000bbc56]                           dc.b $00
[000bbc57]                           dc.b $00
[000bbc58]                           dc.b $00
[000bbc59]                           dc.b $00
[000bbc5a]                           dc.b $00
[000bbc5b]                           dc.b $00
[000bbc5c]                           dc.b $00
[000bbc5d]                           dc.b $00
[000bbc5e]                           dc.b $00
[000bbc5f]                           dc.b $00
[000bbc60]                           dc.b $00
[000bbc61]                           dc.b $00
[000bbc62]                           dc.b $00
[000bbc63]                           dc.b $00
_22_OBJ_POPUP:
[000bbc64]                           dc.b $00
[000bbc65]                           dc.b $18
[000bbc66]                           dc.w $ffff
[000bbc68]                           dc.w $ffff
[000bbc6a]                           dc.b $00
[000bbc6b]                           dc.b $1c
[000bbc6c]                           dc.b $00
[000bbc6d]                           dc.b $01
[000bbc6e]                           dc.b $00
[000bbc6f]                           dc.b $00
[000bbc70] 000b87e6                  dc.l TEXT_091
[000bbc74]                           dc.b $00
[000bbc75]                           dc.b $00
[000bbc76]                           dc.b $00
[000bbc77]                           dc.b $07
[000bbc78]                           dc.b $00
[000bbc79]                           dc.b $0a
[000bbc7a]                           dc.b $00
[000bbc7b]                           dc.b $01
_22aOBJ_POPUP:
[000bbc7c] 0002e5b4                  dc.l edob_mid
[000bbc80]                           dc.b $00
[000bbc81]                           dc.b $00
[000bbc82]                           dc.b $00
[000bbc83]                           dc.b $00
[000bbc84]                           dc.w $8000
[000bbc86]                           dc.b $00
[000bbc87]                           dc.b $00
[000bbc88]                           dc.b $00
[000bbc89]                           dc.b $00
[000bbc8a]                           dc.b $00
[000bbc8b]                           dc.b $00
[000bbc8c]                           dc.b $00
[000bbc8d]                           dc.b $00
[000bbc8e]                           dc.b $00
[000bbc8f]                           dc.b $00
[000bbc90]                           dc.b $00
[000bbc91]                           dc.b $00
[000bbc92]                           dc.b $00
[000bbc93]                           dc.b $00
_24_OBJ_POPUP:
[000bbc94]                           dc.b $00
[000bbc95]                           dc.b $1a
[000bbc96]                           dc.w $ffff
[000bbc98]                           dc.w $ffff
[000bbc9a]                           dc.b $00
[000bbc9b]                           dc.b $1c
[000bbc9c]                           dc.b $00
[000bbc9d]                           dc.b $01
[000bbc9e]                           dc.b $00
[000bbc9f]                           dc.b $00
[000bbca0] 000b8808                  dc.l TEXT_095
[000bbca4]                           dc.b $00
[000bbca5]                           dc.b $00
[000bbca6]                           dc.b $00
[000bbca7]                           dc.b $08
[000bbca8]                           dc.b $00
[000bbca9]                           dc.b $0a
[000bbcaa]                           dc.b $00
[000bbcab]                           dc.b $01
_24aOBJ_POPUP:
[000bbcac] 0002e512                  dc.l edob_bottom
[000bbcb0]                           dc.b $00
[000bbcb1]                           dc.b $00
[000bbcb2]                           dc.b $00
[000bbcb3]                           dc.b $00
[000bbcb4]                           dc.w $8000
[000bbcb6]                           dc.b $00
[000bbcb7]                           dc.b $00
[000bbcb8]                           dc.b $00
[000bbcb9]                           dc.b $00
[000bbcba]                           dc.b $00
[000bbcbb]                           dc.b $00
[000bbcbc]                           dc.b $00
[000bbcbd]                           dc.b $00
[000bbcbe]                           dc.b $00
[000bbcbf]                           dc.b $00
[000bbcc0]                           dc.b $00
[000bbcc1]                           dc.b $00
[000bbcc2]                           dc.b $00
[000bbcc3]                           dc.b $00
_26_OBJ_POPUP:
[000bbcc4]                           dc.b $00
[000bbcc5]                           dc.b $09
[000bbcc6]                           dc.w $ffff
[000bbcc8]                           dc.w $ffff
[000bbcca]                           dc.b $00
[000bbccb]                           dc.b $1c
[000bbccc]                           dc.b $00
[000bbccd]                           dc.b $01
[000bbcce]                           dc.b $00
[000bbccf]                           dc.b $00
[000bbcd0] 000b883b                  dc.l TEXT_100
[000bbcd4]                           dc.b $00
[000bbcd5]                           dc.b $00
[000bbcd6]                           dc.b $00
[000bbcd7]                           dc.b $09
[000bbcd8]                           dc.b $00
[000bbcd9]                           dc.b $0a
[000bbcda]                           dc.b $00
[000bbcdb]                           dc.b $01
_26aOBJ_POPUP:
[000bbcdc] 0002e658                  dc.l edob_verfill
[000bbce0]                           dc.b $00
[000bbce1]                           dc.b $00
[000bbce2]                           dc.b $00
[000bbce3]                           dc.b $00
[000bbce4]                           dc.w $8000
[000bbce6]                           dc.b $00
[000bbce7]                           dc.b $00
[000bbce8]                           dc.b $00
[000bbce9]                           dc.b $00
[000bbcea]                           dc.b $00
[000bbceb]                           dc.b $00
[000bbcec]                           dc.b $00
[000bbced]                           dc.b $00
[000bbcee]                           dc.b $00
[000bbcef]                           dc.b $00
[000bbcf0]                           dc.b $00
[000bbcf1]                           dc.b $00
[000bbcf2]                           dc.b $00
[000bbcf3]                           dc.b $00
_28_OBJ_POPUP:
[000bbcf4]                           dc.b $00
[000bbcf5]                           dc.b $30
[000bbcf6]                           dc.b $00
[000bbcf7]                           dc.b $1d
[000bbcf8]                           dc.b $00
[000bbcf9]                           dc.b $1d
[000bbcfa]                           dc.b $00
[000bbcfb]                           dc.b $18
[000bbcfc]                           dc.b $00
[000bbcfd]                           dc.b $41
[000bbcfe]                           dc.b $00
[000bbcff]                           dc.b $00
[000bbd00] 000bae58                  dc.l A_3DBUTTON10
[000bbd04]                           dc.b $00
[000bbd05]                           dc.b $00
[000bbd06]                           dc.b $00
[000bbd07]                           dc.b $04
[000bbd08]                           dc.b $00
[000bbd09]                           dc.b $14
[000bbd0a]                           dc.b $00
[000bbd0b]                           dc.b $01
_29_OBJ_POPUP:
[000bbd0c]                           dc.b $00
[000bbd0d]                           dc.b $1c
[000bbd0e]                           dc.b $00
[000bbd0f]                           dc.b $1e
[000bbd10]                           dc.b $00
[000bbd11]                           dc.b $2e
[000bbd12]                           dc.b $00
[000bbd13]                           dc.b $14
[000bbd14]                           dc.b $00
[000bbd15]                           dc.b $80
[000bbd16]                           dc.b $00
[000bbd17]                           dc.b $20
[000bbd18]                           dc.b $00
[000bbd19]                           dc.b $ff
[000bbd1a]                           dc.w $1101
[000bbd1c]                           dc.b $00
[000bbd1d]                           dc.b $00
[000bbd1e]                           dc.b $00
[000bbd1f]                           dc.b $00
[000bbd20]                           dc.b $00
[000bbd21]                           dc.b $0d
[000bbd22]                           dc.b $00
[000bbd23]                           dc.b $0a
_30_OBJ_POPUP:
[000bbd24]                           dc.b $00
[000bbd25]                           dc.b $1f
[000bbd26]                           dc.w $ffff
[000bbd28]                           dc.w $ffff
[000bbd2a]                           dc.b $00
[000bbd2b]                           dc.b $18
[000bbd2c]                           dc.b $00
[000bbd2d]                           dc.b $00
[000bbd2e]                           dc.b $00
[000bbd2f]                           dc.b $00
[000bbd30] 000bafd8                  dc.l A_3DBUTTON22
[000bbd34]                           dc.b $00
[000bbd35]                           dc.b $00
[000bbd36]                           dc.b $00
[000bbd37]                           dc.b $00
[000bbd38]                           dc.b $00
[000bbd39]                           dc.b $0d
[000bbd3a]                           dc.b $00
[000bbd3b]                           dc.b $01
_31_OBJ_POPUP:
[000bbd3c]                           dc.b $00
[000bbd3d]                           dc.b $21
[000bbd3e]                           dc.w $ffff
[000bbd40]                           dc.w $ffff
[000bbd42]                           dc.b $00
[000bbd43]                           dc.b $18
[000bbd44]                           dc.b $00
[000bbd45]                           dc.b $41
[000bbd46]                           dc.b $00
[000bbd47]                           dc.b $00
[000bbd48] 000bae78                  dc.l A_3DBUTTON11
[000bbd4c]                           dc.b $00
[000bbd4d]                           dc.b $00
[000bbd4e]                           dc.b $00
[000bbd4f]                           dc.b $01
[000bbd50]                           dc.b $00
[000bbd51]                           dc.b $0d
[000bbd52]                           dc.b $00
[000bbd53]                           dc.b $01
_31aOBJ_POPUP:
[000bbd54] 0002e200                  dc.l edob_left
[000bbd58]                           dc.b $00
[000bbd59]                           dc.b $00
[000bbd5a]                           dc.b $00
[000bbd5b]                           dc.b $00
[000bbd5c]                           dc.w $8000
[000bbd5e]                           dc.b $00
[000bbd5f]                           dc.b $00
[000bbd60]                           dc.b $00
[000bbd61]                           dc.b $00
[000bbd62]                           dc.b $00
[000bbd63]                           dc.b $00
[000bbd64]                           dc.b $00
[000bbd65]                           dc.b $00
[000bbd66]                           dc.b $00
[000bbd67]                           dc.b $00
[000bbd68]                           dc.b $00
[000bbd69]                           dc.b $00
[000bbd6a]                           dc.b $00
[000bbd6b]                           dc.b $00
_33_OBJ_POPUP:
[000bbd6c]                           dc.b $00
[000bbd6d]                           dc.b $23
[000bbd6e]                           dc.w $ffff
[000bbd70]                           dc.w $ffff
[000bbd72]                           dc.b $00
[000bbd73]                           dc.b $18
[000bbd74]                           dc.b $00
[000bbd75]                           dc.b $41
[000bbd76]                           dc.b $00
[000bbd77]                           dc.b $00
[000bbd78] 000baef8                  dc.l A_3DBUTTON15
[000bbd7c]                           dc.b $00
[000bbd7d]                           dc.b $00
[000bbd7e]                           dc.b $00
[000bbd7f]                           dc.b $02
[000bbd80]                           dc.b $00
[000bbd81]                           dc.b $0d
[000bbd82]                           dc.b $00
[000bbd83]                           dc.b $01
_33aOBJ_POPUP:
[000bbd84] 0002e31c                  dc.l edob_center
[000bbd88]                           dc.b $00
[000bbd89]                           dc.b $00
[000bbd8a]                           dc.b $00
[000bbd8b]                           dc.b $00
[000bbd8c]                           dc.w $8000
[000bbd8e]                           dc.b $00
[000bbd8f]                           dc.b $00
[000bbd90]                           dc.b $00
[000bbd91]                           dc.b $00
[000bbd92]                           dc.b $00
[000bbd93]                           dc.b $00
[000bbd94]                           dc.b $00
[000bbd95]                           dc.b $00
[000bbd96]                           dc.b $00
[000bbd97]                           dc.b $00
[000bbd98]                           dc.b $00
[000bbd99]                           dc.b $00
[000bbd9a]                           dc.b $00
[000bbd9b]                           dc.b $00
_35_OBJ_POPUP:
[000bbd9c]                           dc.b $00
[000bbd9d]                           dc.b $25
[000bbd9e]                           dc.w $ffff
[000bbda0]                           dc.w $ffff
[000bbda2]                           dc.b $00
[000bbda3]                           dc.b $18
[000bbda4]                           dc.b $00
[000bbda5]                           dc.b $41
[000bbda6]                           dc.b $00
[000bbda7]                           dc.b $00
[000bbda8] 000baf18                  dc.l A_3DBUTTON16
[000bbdac]                           dc.b $00
[000bbdad]                           dc.b $00
[000bbdae]                           dc.b $00
[000bbdaf]                           dc.b $03
[000bbdb0]                           dc.b $00
[000bbdb1]                           dc.b $0d
[000bbdb2]                           dc.b $00
[000bbdb3]                           dc.b $01
_35aOBJ_POPUP:
[000bbdb4] 0002e27a                  dc.l edob_right
[000bbdb8]                           dc.b $00
[000bbdb9]                           dc.b $00
[000bbdba]                           dc.b $00
[000bbdbb]                           dc.b $00
[000bbdbc]                           dc.w $8000
[000bbdbe]                           dc.b $00
[000bbdbf]                           dc.b $00
[000bbdc0]                           dc.b $00
[000bbdc1]                           dc.b $00
[000bbdc2]                           dc.b $00
[000bbdc3]                           dc.b $00
[000bbdc4]                           dc.b $00
[000bbdc5]                           dc.b $00
[000bbdc6]                           dc.b $00
[000bbdc7]                           dc.b $00
[000bbdc8]                           dc.b $00
[000bbdc9]                           dc.b $00
[000bbdca]                           dc.b $00
[000bbdcb]                           dc.b $00
_37_OBJ_POPUP:
[000bbdcc]                           dc.b $00
[000bbdcd]                           dc.b $27
[000bbdce]                           dc.w $ffff
[000bbdd0]                           dc.w $ffff
[000bbdd2]                           dc.b $00
[000bbdd3]                           dc.b $18
[000bbdd4]                           dc.b $00
[000bbdd5]                           dc.b $41
[000bbdd6]                           dc.b $00
[000bbdd7]                           dc.b $00
[000bbdd8] 000baf38                  dc.l A_3DBUTTON17
[000bbddc]                           dc.b $00
[000bbddd]                           dc.b $00
[000bbdde]                           dc.b $00
[000bbddf]                           dc.b $04
[000bbde0]                           dc.b $00
[000bbde1]                           dc.b $0d
[000bbde2]                           dc.b $00
[000bbde3]                           dc.b $01
_37aOBJ_POPUP:
[000bbde4] 0002e3c0                  dc.l edob_horfill
[000bbde8]                           dc.b $00
[000bbde9]                           dc.b $00
[000bbdea]                           dc.b $00
[000bbdeb]                           dc.b $00
[000bbdec]                           dc.w $8000
[000bbdee]                           dc.b $00
[000bbdef]                           dc.b $00
[000bbdf0]                           dc.b $00
[000bbdf1]                           dc.b $00
[000bbdf2]                           dc.b $00
[000bbdf3]                           dc.b $00
[000bbdf4]                           dc.b $00
[000bbdf5]                           dc.b $00
[000bbdf6]                           dc.b $00
[000bbdf7]                           dc.b $00
[000bbdf8]                           dc.b $00
[000bbdf9]                           dc.b $00
[000bbdfa]                           dc.b $00
[000bbdfb]                           dc.b $00
_39_OBJ_POPUP:
[000bbdfc]                           dc.b $00
[000bbdfd]                           dc.b $28
[000bbdfe]                           dc.w $ffff
[000bbe00]                           dc.w $ffff
[000bbe02]                           dc.b $00
[000bbe03]                           dc.b $18
[000bbe04]                           dc.b $00
[000bbe05]                           dc.b $00
[000bbe06]                           dc.b $00
[000bbe07]                           dc.b $00
[000bbe08] 000baf98                  dc.l A_3DBUTTON20
[000bbe0c]                           dc.b $00
[000bbe0d]                           dc.b $00
[000bbe0e]                           dc.b $00
[000bbe0f]                           dc.b $05
[000bbe10]                           dc.b $00
[000bbe11]                           dc.b $0d
[000bbe12]                           dc.b $00
[000bbe13]                           dc.b $01
_40_OBJ_POPUP:
[000bbe14]                           dc.b $00
[000bbe15]                           dc.b $2a
[000bbe16]                           dc.w $ffff
[000bbe18]                           dc.w $ffff
[000bbe1a]                           dc.b $00
[000bbe1b]                           dc.b $18
[000bbe1c]                           dc.b $00
[000bbe1d]                           dc.b $41
[000bbe1e]                           dc.b $00
[000bbe1f]                           dc.b $00
[000bbe20] 000baf58                  dc.l A_3DBUTTON18
[000bbe24]                           dc.b $00
[000bbe25]                           dc.b $00
[000bbe26]                           dc.b $00
[000bbe27]                           dc.b $06
[000bbe28]                           dc.b $00
[000bbe29]                           dc.b $0d
[000bbe2a]                           dc.b $00
[000bbe2b]                           dc.b $01
_40aOBJ_POPUP:
[000bbe2c] 0002e49a                  dc.l edob_top
[000bbe30]                           dc.b $00
[000bbe31]                           dc.b $00
[000bbe32]                           dc.b $00
[000bbe33]                           dc.b $00
[000bbe34]                           dc.w $8000
[000bbe36]                           dc.b $00
[000bbe37]                           dc.b $00
[000bbe38]                           dc.b $00
[000bbe39]                           dc.b $00
[000bbe3a]                           dc.b $00
[000bbe3b]                           dc.b $00
[000bbe3c]                           dc.b $00
[000bbe3d]                           dc.b $00
[000bbe3e]                           dc.b $00
[000bbe3f]                           dc.b $00
[000bbe40]                           dc.b $00
[000bbe41]                           dc.b $00
[000bbe42]                           dc.b $00
[000bbe43]                           dc.b $00
_42_OBJ_POPUP:
[000bbe44]                           dc.b $00
[000bbe45]                           dc.b $2c
[000bbe46]                           dc.w $ffff
[000bbe48]                           dc.w $ffff
[000bbe4a]                           dc.b $00
[000bbe4b]                           dc.b $18
[000bbe4c]                           dc.b $00
[000bbe4d]                           dc.b $41
[000bbe4e]                           dc.b $00
[000bbe4f]                           dc.b $00
[000bbe50] 000baef8                  dc.l A_3DBUTTON15
[000bbe54]                           dc.b $00
[000bbe55]                           dc.b $00
[000bbe56]                           dc.b $00
[000bbe57]                           dc.b $07
[000bbe58]                           dc.b $00
[000bbe59]                           dc.b $0d
[000bbe5a]                           dc.b $00
[000bbe5b]                           dc.b $01
_42aOBJ_POPUP:
[000bbe5c] 0002e5b4                  dc.l edob_mid
[000bbe60]                           dc.b $00
[000bbe61]                           dc.b $00
[000bbe62]                           dc.b $00
[000bbe63]                           dc.b $00
[000bbe64]                           dc.w $8000
[000bbe66]                           dc.b $00
[000bbe67]                           dc.b $00
[000bbe68]                           dc.b $00
[000bbe69]                           dc.b $00
[000bbe6a]                           dc.b $00
[000bbe6b]                           dc.b $00
[000bbe6c]                           dc.b $00
[000bbe6d]                           dc.b $00
[000bbe6e]                           dc.b $00
[000bbe6f]                           dc.b $00
[000bbe70]                           dc.b $00
[000bbe71]                           dc.b $00
[000bbe72]                           dc.b $00
[000bbe73]                           dc.b $00
_44_OBJ_POPUP:
[000bbe74]                           dc.b $00
[000bbe75]                           dc.b $2e
[000bbe76]                           dc.w $ffff
[000bbe78]                           dc.w $ffff
[000bbe7a]                           dc.b $00
[000bbe7b]                           dc.b $18
[000bbe7c]                           dc.b $00
[000bbe7d]                           dc.b $41
[000bbe7e]                           dc.b $00
[000bbe7f]                           dc.b $00
[000bbe80] 000baf78                  dc.l A_3DBUTTON19
[000bbe84]                           dc.b $00
[000bbe85]                           dc.b $00
[000bbe86]                           dc.b $00
[000bbe87]                           dc.b $08
[000bbe88]                           dc.b $00
[000bbe89]                           dc.b $0d
[000bbe8a]                           dc.b $00
[000bbe8b]                           dc.b $01
_44aOBJ_POPUP:
[000bbe8c] 0002e512                  dc.l edob_bottom
[000bbe90]                           dc.b $00
[000bbe91]                           dc.b $00
[000bbe92]                           dc.b $00
[000bbe93]                           dc.b $00
[000bbe94]                           dc.w $8000
[000bbe96]                           dc.b $00
[000bbe97]                           dc.b $00
[000bbe98]                           dc.b $00
[000bbe99]                           dc.b $00
[000bbe9a]                           dc.b $00
[000bbe9b]                           dc.b $00
[000bbe9c]                           dc.b $00
[000bbe9d]                           dc.b $00
[000bbe9e]                           dc.b $00
[000bbe9f]                           dc.b $00
[000bbea0]                           dc.b $00
[000bbea1]                           dc.b $00
[000bbea2]                           dc.b $00
[000bbea3]                           dc.b $00
_46_OBJ_POPUP:
[000bbea4]                           dc.b $00
[000bbea5]                           dc.b $1d
[000bbea6]                           dc.w $ffff
[000bbea8]                           dc.w $ffff
[000bbeaa]                           dc.b $00
[000bbeab]                           dc.b $18
[000bbeac]                           dc.b $00
[000bbead]                           dc.b $41
[000bbeae]                           dc.b $00
[000bbeaf]                           dc.b $00
[000bbeb0] 000baf38                  dc.l A_3DBUTTON17
[000bbeb4]                           dc.b $00
[000bbeb5]                           dc.b $00
[000bbeb6]                           dc.b $00
[000bbeb7]                           dc.b $09
[000bbeb8]                           dc.b $00
[000bbeb9]                           dc.b $0d
[000bbeba]                           dc.b $00
[000bbebb]                           dc.b $01
_46aOBJ_POPUP:
[000bbebc] 0002e658                  dc.l edob_verfill
[000bbec0]                           dc.b $00
[000bbec1]                           dc.b $00
[000bbec2]                           dc.b $00
[000bbec3]                           dc.b $00
[000bbec4]                           dc.w $8000
[000bbec6]                           dc.b $00
[000bbec7]                           dc.b $00
[000bbec8]                           dc.b $00
[000bbec9]                           dc.b $00
[000bbeca]                           dc.b $00
[000bbecb]                           dc.b $00
[000bbecc]                           dc.b $00
[000bbecd]                           dc.b $00
[000bbece]                           dc.b $00
[000bbecf]                           dc.b $00
[000bbed0]                           dc.b $00
[000bbed1]                           dc.b $00
[000bbed2]                           dc.b $00
[000bbed3]                           dc.b $00
_48_OBJ_POPUP:
[000bbed4]                           dc.b $00
[000bbed5]                           dc.b $3f
[000bbed6]                           dc.b $00
[000bbed7]                           dc.b $31
[000bbed8]                           dc.b $00
[000bbed9]                           dc.b $3e
[000bbeda]                           dc.b $00
[000bbedb]                           dc.b $14
[000bbedc]                           dc.b $00
[000bbedd]                           dc.b $80
[000bbede]                           dc.b $00
[000bbedf]                           dc.b $20
[000bbee0]                           dc.b $00
[000bbee1]                           dc.b $ff
[000bbee2]                           dc.w $1101
[000bbee4]                           dc.b $00
[000bbee5]                           dc.b $00
[000bbee6]                           dc.b $00
[000bbee7]                           dc.b $05
[000bbee8]                           dc.b $00
[000bbee9]                           dc.b $0e
[000bbeea]                           dc.b $00
[000bbeeb]                           dc.b $08
_49_OBJ_POPUP:
[000bbeec]                           dc.b $00
[000bbeed]                           dc.b $33
[000bbeee]                           dc.w $ffff
[000bbef0]                           dc.w $ffff
[000bbef2]                           dc.b $00
[000bbef3]                           dc.b $1c
[000bbef4]                           dc.b $00
[000bbef5]                           dc.b $01
[000bbef6]                           dc.w $2000
[000bbef8] 000b8793                  dc.l TEXT_086
[000bbefc]                           dc.b $00
[000bbefd]                           dc.b $00
[000bbefe]                           dc.b $00
[000bbeff]                           dc.b $00
[000bbf00]                           dc.b $00
[000bbf01]                           dc.b $0e
[000bbf02]                           dc.b $00
[000bbf03]                           dc.b $01
_49aOBJ_POPUP:
[000bbf04] 0002de06                  dc.l edob_hide
[000bbf08]                           dc.b $00
[000bbf09]                           dc.b $00
[000bbf0a]                           dc.b $00
[000bbf0b]                           dc.b $00
[000bbf0c]                           dc.w $8000
[000bbf0e]                           dc.b $00
[000bbf0f]                           dc.b $00
[000bbf10]                           dc.b $00
[000bbf11]                           dc.b $00
[000bbf12]                           dc.b $00
[000bbf13]                           dc.b $00
[000bbf14]                           dc.b $00
[000bbf15]                           dc.b $00
[000bbf16]                           dc.b $00
[000bbf17]                           dc.b $00
[000bbf18]                           dc.b $00
[000bbf19]                           dc.b $00
[000bbf1a]                           dc.b $00
[000bbf1b]                           dc.b $00
_51_OBJ_POPUP:
[000bbf1c]                           dc.b $00
[000bbf1d]                           dc.b $35
[000bbf1e]                           dc.w $ffff
[000bbf20]                           dc.w $ffff
[000bbf22]                           dc.b $00
[000bbf23]                           dc.b $1c
[000bbf24]                           dc.b $00
[000bbf25]                           dc.b $01
[000bbf26]                           dc.w $2000
[000bbf28] 000b879f                  dc.l TEXT_087
[000bbf2c]                           dc.b $00
[000bbf2d]                           dc.b $00
[000bbf2e]                           dc.b $00
[000bbf2f]                           dc.b $01
[000bbf30]                           dc.b $00
[000bbf31]                           dc.b $0e
[000bbf32]                           dc.b $00
[000bbf33]                           dc.b $01
_51aOBJ_POPUP:
[000bbf34] 0002eba2                  dc.l edob_unhide
[000bbf38]                           dc.b $00
[000bbf39]                           dc.b $00
[000bbf3a]                           dc.b $00
[000bbf3b]                           dc.b $00
[000bbf3c]                           dc.w $8000
[000bbf3e]                           dc.b $00
[000bbf3f]                           dc.b $00
[000bbf40]                           dc.b $00
[000bbf41]                           dc.b $00
[000bbf42]                           dc.b $00
[000bbf43]                           dc.b $00
[000bbf44]                           dc.b $00
[000bbf45]                           dc.b $00
[000bbf46]                           dc.b $00
[000bbf47]                           dc.b $00
[000bbf48]                           dc.b $00
[000bbf49]                           dc.b $00
[000bbf4a]                           dc.b $00
[000bbf4b]                           dc.b $00
_53_OBJ_POPUP:
[000bbf4c]                           dc.b $00
[000bbf4d]                           dc.b $37
[000bbf4e]                           dc.w $ffff
[000bbf50]                           dc.w $ffff
[000bbf52]                           dc.b $00
[000bbf53]                           dc.b $1c
[000bbf54]                           dc.b $00
[000bbf55]                           dc.b $01
[000bbf56]                           dc.b $00
[000bbf57]                           dc.b $00
[000bbf58] 000b87ab                  dc.l TEXT_088
[000bbf5c]                           dc.b $00
[000bbf5d]                           dc.b $00
[000bbf5e]                           dc.b $00
[000bbf5f]                           dc.b $03
[000bbf60]                           dc.b $00
[000bbf61]                           dc.b $0e
[000bbf62]                           dc.b $00
[000bbf63]                           dc.b $01
_53aOBJ_POPUP:
[000bbf64] 0002eae2                  dc.l edob_lock
[000bbf68]                           dc.b $00
[000bbf69]                           dc.b $00
[000bbf6a]                           dc.b $00
[000bbf6b]                           dc.b $00
[000bbf6c]                           dc.w $8000
[000bbf6e]                           dc.b $00
[000bbf6f]                           dc.b $00
[000bbf70]                           dc.b $00
[000bbf71]                           dc.b $00
[000bbf72]                           dc.b $00
[000bbf73]                           dc.b $00
[000bbf74]                           dc.b $00
[000bbf75]                           dc.b $00
[000bbf76]                           dc.b $00
[000bbf77]                           dc.b $00
[000bbf78]                           dc.b $00
[000bbf79]                           dc.b $00
[000bbf7a]                           dc.b $00
[000bbf7b]                           dc.b $00
_55_OBJ_POPUP:
[000bbf7c]                           dc.b $00
[000bbf7d]                           dc.b $39
[000bbf7e]                           dc.w $ffff
[000bbf80]                           dc.w $ffff
[000bbf82]                           dc.b $00
[000bbf83]                           dc.b $1c
[000bbf84]                           dc.b $00
[000bbf85]                           dc.b $01
[000bbf86]                           dc.b $00
[000bbf87]                           dc.b $00
[000bbf88] 000b87b8                  dc.l TEXT_089
[000bbf8c]                           dc.b $00
[000bbf8d]                           dc.b $00
[000bbf8e]                           dc.b $00
[000bbf8f]                           dc.b $04
[000bbf90]                           dc.b $00
[000bbf91]                           dc.b $0e
[000bbf92]                           dc.b $00
[000bbf93]                           dc.b $01
_55aOBJ_POPUP:
[000bbf94] 0002eb42                  dc.l edob_unlock
[000bbf98]                           dc.b $00
[000bbf99]                           dc.b $00
[000bbf9a]                           dc.b $00
[000bbf9b]                           dc.b $00
[000bbf9c]                           dc.w $8000
[000bbf9e]                           dc.b $00
[000bbf9f]                           dc.b $00
[000bbfa0]                           dc.b $00
[000bbfa1]                           dc.b $00
[000bbfa2]                           dc.b $00
[000bbfa3]                           dc.b $00
[000bbfa4]                           dc.b $00
[000bbfa5]                           dc.b $00
[000bbfa6]                           dc.b $00
[000bbfa7]                           dc.b $00
[000bbfa8]                           dc.b $00
[000bbfa9]                           dc.b $00
[000bbfaa]                           dc.b $00
[000bbfab]                           dc.b $00
_57_OBJ_POPUP:
[000bbfac]                           dc.b $00
[000bbfad]                           dc.b $3b
[000bbfae]                           dc.w $ffff
[000bbfb0]                           dc.w $ffff
[000bbfb2]                           dc.b $00
[000bbfb3]                           dc.b $1c
[000bbfb4]                           dc.b $00
[000bbfb5]                           dc.b $01
[000bbfb6]                           dc.b $00
[000bbfb7]                           dc.b $00
[000bbfb8] 000b8810                  dc.l TEXT_097
[000bbfbc]                           dc.b $00
[000bbfbd]                           dc.b $00
[000bbfbe]                           dc.b $00
[000bbfbf]                           dc.b $06
[000bbfc0]                           dc.b $00
[000bbfc1]                           dc.b $0e
[000bbfc2]                           dc.b $00
[000bbfc3]                           dc.b $01
_57aOBJ_POPUP:
[000bbfc4] 0002e732                  dc.l edob_up
[000bbfc8]                           dc.b $00
[000bbfc9]                           dc.b $00
[000bbfca]                           dc.b $00
[000bbfcb]                           dc.b $00
[000bbfcc]                           dc.w $8000
[000bbfce]                           dc.b $00
[000bbfcf]                           dc.b $00
[000bbfd0]                           dc.b $00
[000bbfd1]                           dc.b $00
[000bbfd2]                           dc.b $00
[000bbfd3]                           dc.b $00
[000bbfd4]                           dc.b $00
[000bbfd5]                           dc.b $00
[000bbfd6]                           dc.b $00
[000bbfd7]                           dc.b $00
[000bbfd8]                           dc.b $00
[000bbfd9]                           dc.b $00
[000bbfda]                           dc.b $00
[000bbfdb]                           dc.b $00
_59_OBJ_POPUP:
[000bbfdc]                           dc.b $00
[000bbfdd]                           dc.b $3d
[000bbfde]                           dc.w $ffff
[000bbfe0]                           dc.w $ffff
[000bbfe2]                           dc.b $00
[000bbfe3]                           dc.b $1c
[000bbfe4]                           dc.b $00
[000bbfe5]                           dc.b $01
[000bbfe6]                           dc.b $00
[000bbfe7]                           dc.b $00
[000bbfe8] 000b881c                  dc.l TEXT_098
[000bbfec]                           dc.b $00
[000bbfed]                           dc.b $00
[000bbfee]                           dc.b $00
[000bbfef]                           dc.b $07
[000bbff0]                           dc.b $00
[000bbff1]                           dc.b $0e
[000bbff2]                           dc.b $00
[000bbff3]                           dc.b $01
_59aOBJ_POPUP:
[000bbff4] 0002e814                  dc.l edob_down
[000bbff8]                           dc.b $00
[000bbff9]                           dc.b $00
[000bbffa]                           dc.b $00
[000bbffb]                           dc.b $00
[000bbffc]                           dc.w $8000
[000bbffe]                           dc.b $00
[000bbfff]                           dc.b $00
[000bc000]                           dc.b $00
[000bc001]                           dc.b $00
[000bc002]                           dc.b $00
[000bc003]                           dc.b $00
[000bc004]                           dc.b $00
[000bc005]                           dc.b $00
[000bc006]                           dc.b $00
[000bc007]                           dc.b $00
[000bc008]                           dc.b $00
[000bc009]                           dc.b $00
[000bc00a]                           dc.b $00
[000bc00b]                           dc.b $00
_61_OBJ_POPUP:
[000bc00c]                           dc.b $00
[000bc00d]                           dc.b $3e
[000bc00e]                           dc.w $ffff
[000bc010]                           dc.w $ffff
[000bc012]                           dc.b $00
[000bc013]                           dc.b $18
[000bc014]                           dc.b $00
[000bc015]                           dc.b $00
[000bc016]                           dc.b $00
[000bc017]                           dc.b $08
[000bc018] 000bb098                  dc.l A_ARROWS02
[000bc01c]                           dc.b $00
[000bc01d]                           dc.b $00
[000bc01e]                           dc.b $00
[000bc01f]                           dc.b $02
[000bc020]                           dc.b $00
[000bc021]                           dc.b $0e
[000bc022]                           dc.b $00
[000bc023]                           dc.b $01
_62_OBJ_POPUP:
[000bc024]                           dc.b $00
[000bc025]                           dc.b $30
[000bc026]                           dc.w $ffff
[000bc028]                           dc.w $ffff
[000bc02a]                           dc.b $00
[000bc02b]                           dc.b $18
[000bc02c]                           dc.b $00
[000bc02d]                           dc.b $00
[000bc02e]                           dc.b $00
[000bc02f]                           dc.b $08
[000bc030] 000bb098                  dc.l A_ARROWS02
[000bc034]                           dc.b $00
[000bc035]                           dc.b $00
[000bc036]                           dc.b $00
[000bc037]                           dc.b $05
[000bc038]                           dc.b $00
[000bc039]                           dc.b $0e
[000bc03a]                           dc.b $00
[000bc03b]                           dc.b $01
_63_OBJ_POPUP:
[000bc03c]                           dc.b $00
[000bc03d]                           dc.b $4d
[000bc03e]                           dc.b $00
[000bc03f]                           dc.b $40
[000bc040]                           dc.b $00
[000bc041]                           dc.b $40
[000bc042]                           dc.b $00
[000bc043]                           dc.b $18
[000bc044]                           dc.b $00
[000bc045]                           dc.b $41
[000bc046]                           dc.b $00
[000bc047]                           dc.b $00
[000bc048] 000badf8                  dc.l A_3DBUTTON07
[000bc04c]                           dc.b $00
[000bc04d]                           dc.b $00
[000bc04e]                           dc.b $00
[000bc04f]                           dc.b $05
[000bc050]                           dc.b $00
[000bc051]                           dc.b $14
[000bc052]                           dc.b $00
[000bc053]                           dc.b $01
_64_OBJ_POPUP:
[000bc054]                           dc.b $00
[000bc055]                           dc.b $3f
[000bc056]                           dc.b $00
[000bc057]                           dc.b $41
[000bc058]                           dc.b $00
[000bc059]                           dc.b $4b
[000bc05a]                           dc.b $00
[000bc05b]                           dc.b $14
[000bc05c]                           dc.b $00
[000bc05d]                           dc.b $80
[000bc05e]                           dc.b $00
[000bc05f]                           dc.b $20
[000bc060]                           dc.b $00
[000bc061]                           dc.b $ff
[000bc062]                           dc.w $1101
[000bc064]                           dc.b $00
[000bc065]                           dc.b $00
[000bc066]                           dc.b $00
[000bc067]                           dc.b $00
[000bc068]                           dc.b $00
[000bc069]                           dc.b $24
[000bc06a]                           dc.b $00
[000bc06b]                           dc.b $02
_65_OBJ_POPUP:
[000bc06c]                           dc.b $00
[000bc06d]                           dc.b $43
[000bc06e]                           dc.w $ffff
[000bc070]                           dc.w $ffff
[000bc072]                           dc.b $00
[000bc073]                           dc.b $18
[000bc074]                           dc.b $00
[000bc075]                           dc.b $41
[000bc076]                           dc.b $00
[000bc077]                           dc.b $00
[000bc078] 000bb078                  dc.l A_3DBUTTON28
[000bc07c]                           dc.b $00
[000bc07d]                           dc.b $00
[000bc07e]                           dc.b $00
[000bc07f]                           dc.b $00
[000bc080]                           dc.b $00
[000bc081]                           dc.b $0c
[000bc082]                           dc.b $00
[000bc083]                           dc.b $01
_65aOBJ_POPUP:
[000bc084] 0002de06                  dc.l edob_hide
[000bc088]                           dc.b $00
[000bc089]                           dc.b $00
[000bc08a]                           dc.b $00
[000bc08b]                           dc.b $00
[000bc08c]                           dc.w $8000
[000bc08e]                           dc.b $00
[000bc08f]                           dc.b $00
[000bc090]                           dc.b $00
[000bc091]                           dc.b $00
[000bc092]                           dc.b $00
[000bc093]                           dc.b $00
[000bc094]                           dc.b $00
[000bc095]                           dc.b $00
[000bc096]                           dc.b $00
[000bc097]                           dc.b $00
[000bc098]                           dc.b $00
[000bc099]                           dc.b $00
[000bc09a]                           dc.b $00
[000bc09b]                           dc.b $00
_67_OBJ_POPUP:
[000bc09c]                           dc.b $00
[000bc09d]                           dc.b $45
[000bc09e]                           dc.w $ffff
[000bc0a0]                           dc.w $ffff
[000bc0a2]                           dc.b $00
[000bc0a3]                           dc.b $18
[000bc0a4]                           dc.b $00
[000bc0a5]                           dc.b $41
[000bc0a6]                           dc.b $00
[000bc0a7]                           dc.b $00
[000bc0a8] 000bafb8                  dc.l A_3DBUTTON21
[000bc0ac]                           dc.b $00
[000bc0ad]                           dc.b $00
[000bc0ae]                           dc.b $00
[000bc0af]                           dc.b $01
[000bc0b0]                           dc.b $00
[000bc0b1]                           dc.b $0c
[000bc0b2]                           dc.b $00
[000bc0b3]                           dc.b $01
_67aOBJ_POPUP:
[000bc0b4] 0002eba2                  dc.l edob_unhide
[000bc0b8]                           dc.b $00
[000bc0b9]                           dc.b $00
[000bc0ba]                           dc.b $00
[000bc0bb]                           dc.b $00
[000bc0bc]                           dc.w $8000
[000bc0be]                           dc.b $00
[000bc0bf]                           dc.b $00
[000bc0c0]                           dc.b $00
[000bc0c1]                           dc.b $00
[000bc0c2]                           dc.b $00
[000bc0c3]                           dc.b $00
[000bc0c4]                           dc.b $00
[000bc0c5]                           dc.b $00
[000bc0c6]                           dc.b $00
[000bc0c7]                           dc.b $00
[000bc0c8]                           dc.b $00
[000bc0c9]                           dc.b $00
[000bc0ca]                           dc.b $00
[000bc0cb]                           dc.b $00
_69_OBJ_POPUP:
[000bc0cc]                           dc.b $00
[000bc0cd]                           dc.b $47
[000bc0ce]                           dc.w $ffff
[000bc0d0]                           dc.w $ffff
[000bc0d2]                           dc.b $00
[000bc0d3]                           dc.b $18
[000bc0d4]                           dc.b $00
[000bc0d5]                           dc.b $41
[000bc0d6]                           dc.b $00
[000bc0d7]                           dc.b $00
[000bc0d8] 000baff8                  dc.l A_3DBUTTON23
[000bc0dc]                           dc.b $00
[000bc0dd]                           dc.b $0c
[000bc0de]                           dc.b $00
[000bc0df]                           dc.b $00
[000bc0e0]                           dc.b $00
[000bc0e1]                           dc.b $0c
[000bc0e2]                           dc.b $00
[000bc0e3]                           dc.b $01
_69aOBJ_POPUP:
[000bc0e4] 0002eae2                  dc.l edob_lock
[000bc0e8]                           dc.b $00
[000bc0e9]                           dc.b $00
[000bc0ea]                           dc.b $00
[000bc0eb]                           dc.b $00
[000bc0ec]                           dc.w $8000
[000bc0ee]                           dc.b $00
[000bc0ef]                           dc.b $00
[000bc0f0]                           dc.b $00
[000bc0f1]                           dc.b $00
[000bc0f2]                           dc.b $00
[000bc0f3]                           dc.b $00
[000bc0f4]                           dc.b $00
[000bc0f5]                           dc.b $00
[000bc0f6]                           dc.b $00
[000bc0f7]                           dc.b $00
[000bc0f8]                           dc.b $00
[000bc0f9]                           dc.b $00
[000bc0fa]                           dc.b $00
[000bc0fb]                           dc.b $00
_71_OBJ_POPUP:
[000bc0fc]                           dc.b $00
[000bc0fd]                           dc.b $49
[000bc0fe]                           dc.w $ffff
[000bc100]                           dc.w $ffff
[000bc102]                           dc.b $00
[000bc103]                           dc.b $18
[000bc104]                           dc.b $00
[000bc105]                           dc.b $41
[000bc106]                           dc.b $00
[000bc107]                           dc.b $00
[000bc108] 000bb018                  dc.l A_3DBUTTON24
[000bc10c]                           dc.b $00
[000bc10d]                           dc.b $0c
[000bc10e]                           dc.b $00
[000bc10f]                           dc.b $01
[000bc110]                           dc.b $00
[000bc111]                           dc.b $0c
[000bc112]                           dc.b $00
[000bc113]                           dc.b $01
_71aOBJ_POPUP:
[000bc114] 0002eb42                  dc.l edob_unlock
[000bc118]                           dc.b $00
[000bc119]                           dc.b $00
[000bc11a]                           dc.b $00
[000bc11b]                           dc.b $00
[000bc11c]                           dc.w $8000
[000bc11e]                           dc.b $00
[000bc11f]                           dc.b $00
[000bc120]                           dc.b $00
[000bc121]                           dc.b $00
[000bc122]                           dc.b $00
[000bc123]                           dc.b $00
[000bc124]                           dc.b $00
[000bc125]                           dc.b $00
[000bc126]                           dc.b $00
[000bc127]                           dc.b $00
[000bc128]                           dc.b $00
[000bc129]                           dc.b $00
[000bc12a]                           dc.b $00
[000bc12b]                           dc.b $00
_73_OBJ_POPUP:
[000bc12c]                           dc.b $00
[000bc12d]                           dc.b $4b
[000bc12e]                           dc.w $ffff
[000bc130]                           dc.w $ffff
[000bc132]                           dc.b $00
[000bc133]                           dc.b $18
[000bc134]                           dc.b $00
[000bc135]                           dc.b $41
[000bc136]                           dc.b $00
[000bc137]                           dc.b $00
[000bc138] 000bb038                  dc.l A_3DBUTTON25
[000bc13c]                           dc.b $00
[000bc13d]                           dc.b $18
[000bc13e]                           dc.b $00
[000bc13f]                           dc.b $00
[000bc140]                           dc.b $00
[000bc141]                           dc.b $0c
[000bc142]                           dc.b $00
[000bc143]                           dc.b $01
_73aOBJ_POPUP:
[000bc144] 0002e732                  dc.l edob_up
[000bc148]                           dc.b $00
[000bc149]                           dc.b $00
[000bc14a]                           dc.b $00
[000bc14b]                           dc.b $00
[000bc14c]                           dc.w $8000
[000bc14e]                           dc.b $00
[000bc14f]                           dc.b $00
[000bc150]                           dc.b $00
[000bc151]                           dc.b $00
[000bc152]                           dc.b $00
[000bc153]                           dc.b $00
[000bc154]                           dc.b $00
[000bc155]                           dc.b $00
[000bc156]                           dc.b $00
[000bc157]                           dc.b $00
[000bc158]                           dc.b $00
[000bc159]                           dc.b $00
[000bc15a]                           dc.b $00
[000bc15b]                           dc.b $00
_75_OBJ_POPUP:
[000bc15c]                           dc.b $00
[000bc15d]                           dc.b $40
[000bc15e]                           dc.w $ffff
[000bc160]                           dc.w $ffff
[000bc162]                           dc.b $00
[000bc163]                           dc.b $18
[000bc164]                           dc.b $00
[000bc165]                           dc.b $41
[000bc166]                           dc.b $00
[000bc167]                           dc.b $00
[000bc168] 000bb058                  dc.l A_3DBUTTON26
[000bc16c]                           dc.b $00
[000bc16d]                           dc.b $18
[000bc16e]                           dc.b $00
[000bc16f]                           dc.b $01
[000bc170]                           dc.b $00
[000bc171]                           dc.b $0c
[000bc172]                           dc.b $00
[000bc173]                           dc.b $01
_75aOBJ_POPUP:
[000bc174] 0002e814                  dc.l edob_down
[000bc178]                           dc.b $00
[000bc179]                           dc.b $00
[000bc17a]                           dc.b $00
[000bc17b]                           dc.b $00
[000bc17c]                           dc.w $8000
[000bc17e]                           dc.b $00
[000bc17f]                           dc.b $00
[000bc180]                           dc.b $00
[000bc181]                           dc.b $00
[000bc182]                           dc.b $00
[000bc183]                           dc.b $00
[000bc184]                           dc.b $00
[000bc185]                           dc.b $00
[000bc186]                           dc.b $00
[000bc187]                           dc.b $00
[000bc188]                           dc.b $00
[000bc189]                           dc.b $00
[000bc18a]                           dc.b $00
[000bc18b]                           dc.b $00
_77_OBJ_POPUP:
[000bc18c]                           dc.b $00
[000bc18d]                           dc.b $52
[000bc18e]                           dc.b $00
[000bc18f]                           dc.b $4e
[000bc190]                           dc.b $00
[000bc191]                           dc.b $50
[000bc192]                           dc.b $00
[000bc193]                           dc.b $14
[000bc194]                           dc.b $00
[000bc195]                           dc.b $80
[000bc196]                           dc.b $00
[000bc197]                           dc.b $20
[000bc198]                           dc.b $00
[000bc199]                           dc.b $ff
[000bc19a]                           dc.w $1101
[000bc19c]                           dc.b $00
[000bc19d]                           dc.b $00
[000bc19e]                           dc.b $00
[000bc19f]                           dc.b $06
[000bc1a0]                           dc.b $00
[000bc1a1]                           dc.b $0c
[000bc1a2]                           dc.b $00
[000bc1a3]                           dc.b $02
_78_OBJ_POPUP:
[000bc1a4]                           dc.b $00
[000bc1a5]                           dc.b $50
[000bc1a6]                           dc.w $ffff
[000bc1a8]                           dc.w $ffff
[000bc1aa]                           dc.b $00
[000bc1ab]                           dc.b $17
[000bc1ac]                           dc.b $00
[000bc1ad]                           dc.b $01
[000bc1ae]                           dc.b $00
[000bc1af]                           dc.b $00
[000bc1b0] 000bb7a6                  dc.l IM_SORT_YX
[000bc1b4]                           dc.b $00
[000bc1b5]                           dc.b $00
[000bc1b6]                           dc.b $00
[000bc1b7]                           dc.b $00
[000bc1b8]                           dc.b $00
[000bc1b9]                           dc.b $06
[000bc1ba]                           dc.b $00
[000bc1bb]                           dc.b $02
_78aOBJ_POPUP:
[000bc1bc] 0002ead0                  dc.l edob_sortyx
[000bc1c0]                           dc.b $00
[000bc1c1]                           dc.b $00
[000bc1c2]                           dc.b $00
[000bc1c3]                           dc.b $00
[000bc1c4]                           dc.w $8000
[000bc1c6]                           dc.b $00
[000bc1c7]                           dc.b $00
[000bc1c8]                           dc.b $00
[000bc1c9]                           dc.b $00
[000bc1ca]                           dc.b $00
[000bc1cb]                           dc.b $00
[000bc1cc]                           dc.b $00
[000bc1cd]                           dc.b $00
[000bc1ce]                           dc.b $00
[000bc1cf]                           dc.b $00
[000bc1d0]                           dc.b $00
[000bc1d1]                           dc.b $00
[000bc1d2]                           dc.b $00
[000bc1d3]                           dc.b $00
_80_OBJ_POPUP:
[000bc1d4]                           dc.b $00
[000bc1d5]                           dc.b $4d
[000bc1d6]                           dc.w $ffff
[000bc1d8]                           dc.w $ffff
[000bc1da]                           dc.b $00
[000bc1db]                           dc.b $17
[000bc1dc]                           dc.b $00
[000bc1dd]                           dc.b $01
[000bc1de]                           dc.b $00
[000bc1df]                           dc.b $00
[000bc1e0] 000bb6d8                  dc.l IM_SORT_XY
[000bc1e4]                           dc.b $00
[000bc1e5]                           dc.b $06
[000bc1e6]                           dc.b $00
[000bc1e7]                           dc.b $00
[000bc1e8]                           dc.b $00
[000bc1e9]                           dc.b $06
[000bc1ea]                           dc.b $00
[000bc1eb]                           dc.b $02
_80aOBJ_POPUP:
[000bc1ec] 0002eabe                  dc.l edob_sortxy
[000bc1f0]                           dc.b $00
[000bc1f1]                           dc.b $00
[000bc1f2]                           dc.b $00
[000bc1f3]                           dc.b $00
[000bc1f4]                           dc.w $8000
[000bc1f6]                           dc.b $00
[000bc1f7]                           dc.b $00
[000bc1f8]                           dc.b $00
[000bc1f9]                           dc.b $00
[000bc1fa]                           dc.b $00
[000bc1fb]                           dc.b $00
[000bc1fc]                           dc.b $00
[000bc1fd]                           dc.b $00
[000bc1fe]                           dc.b $00
[000bc1ff]                           dc.b $00
[000bc200]                           dc.b $00
[000bc201]                           dc.b $00
[000bc202]                           dc.b $00
[000bc203]                           dc.b $00
_82_OBJ_POPUP:
[000bc204]                           dc.b $00
[000bc205]                           dc.b $00
[000bc206]                           dc.b $00
[000bc207]                           dc.b $53
[000bc208]                           dc.b $00
[000bc209]                           dc.b $53
[000bc20a]                           dc.b $00
[000bc20b]                           dc.b $18
[000bc20c]                           dc.b $00
[000bc20d]                           dc.b $41
[000bc20e]                           dc.b $00
[000bc20f]                           dc.b $00
[000bc210] 000baed8                  dc.l A_3DBUTTON14
[000bc214]                           dc.b $00
[000bc215]                           dc.b $00
[000bc216]                           dc.b $00
[000bc217]                           dc.b $06
[000bc218]                           dc.b $00
[000bc219]                           dc.b $14
[000bc21a]                           dc.b $00
[000bc21b]                           dc.b $01
_83_OBJ_POPUP:
[000bc21c]                           dc.b $00
[000bc21d]                           dc.b $52
[000bc21e]                           dc.b $00
[000bc21f]                           dc.b $54
[000bc220]                           dc.b $00
[000bc221]                           dc.b $56
[000bc222]                           dc.b $00
[000bc223]                           dc.b $14
[000bc224]                           dc.b $00
[000bc225]                           dc.b $80
[000bc226]                           dc.b $00
[000bc227]                           dc.b $20
[000bc228]                           dc.b $00
[000bc229]                           dc.b $ff
[000bc22a]                           dc.w $1101
[000bc22c]                           dc.b $00
[000bc22d]                           dc.b $00
[000bc22e]                           dc.b $00
[000bc22f]                           dc.b $00
[000bc230]                           dc.b $00
[000bc231]                           dc.b $0c
[000bc232]                           dc.b $00
[000bc233]                           dc.b $02
_84_OBJ_POPUP:
[000bc234]                           dc.b $00
[000bc235]                           dc.b $56
[000bc236]                           dc.w $ffff
[000bc238]                           dc.w $ffff
[000bc23a]                           dc.b $00
[000bc23b]                           dc.b $17
[000bc23c]                           dc.b $00
[000bc23d]                           dc.b $41
[000bc23e]                           dc.b $00
[000bc23f]                           dc.b $00
[000bc240] 000bb7a6                  dc.l IM_SORT_YX
[000bc244]                           dc.b $00
[000bc245]                           dc.b $00
[000bc246]                           dc.b $00
[000bc247]                           dc.b $00
[000bc248]                           dc.b $00
[000bc249]                           dc.b $06
[000bc24a]                           dc.b $00
[000bc24b]                           dc.b $02
_84aOBJ_POPUP:
[000bc24c] 0002ead0                  dc.l edob_sortyx
[000bc250]                           dc.b $00
[000bc251]                           dc.b $00
[000bc252]                           dc.b $00
[000bc253]                           dc.b $00
[000bc254]                           dc.w $8000
[000bc256]                           dc.b $00
[000bc257]                           dc.b $00
[000bc258]                           dc.b $00
[000bc259]                           dc.b $00
[000bc25a]                           dc.b $00
[000bc25b]                           dc.b $00
[000bc25c]                           dc.b $00
[000bc25d]                           dc.b $00
[000bc25e]                           dc.b $00
[000bc25f]                           dc.b $00
[000bc260]                           dc.b $00
[000bc261]                           dc.b $00
[000bc262]                           dc.b $00
[000bc263]                           dc.b $00
_86_OBJ_POPUP:
[000bc264]                           dc.b $00
[000bc265]                           dc.b $53
[000bc266]                           dc.w $ffff
[000bc268]                           dc.w $ffff
[000bc26a]                           dc.b $00
[000bc26b]                           dc.b $17
[000bc26c]                           dc.b $00
[000bc26d]                           dc.b $41
[000bc26e]                           dc.b $00
[000bc26f]                           dc.b $00
[000bc270] 000bb6d8                  dc.l IM_SORT_XY
[000bc274]                           dc.b $00
[000bc275]                           dc.b $06
[000bc276]                           dc.b $00
[000bc277]                           dc.b $00
[000bc278]                           dc.b $00
[000bc279]                           dc.b $06
[000bc27a]                           dc.b $00
[000bc27b]                           dc.b $02
_86aOBJ_POPUP:
[000bc27c] 0002eabe                  dc.l edob_sortxy
[000bc280]                           dc.b $00
[000bc281]                           dc.b $00
[000bc282]                           dc.b $00
[000bc283]                           dc.b $00
[000bc284]                           dc.w $8020
[000bc286]                           dc.b $00
[000bc287]                           dc.b $00
[000bc288]                           dc.b $00
[000bc289]                           dc.b $00
[000bc28a]                           dc.b $00
[000bc28b]                           dc.b $00
[000bc28c]                           dc.b $00
[000bc28d]                           dc.b $00
[000bc28e]                           dc.b $00
[000bc28f]                           dc.b $00
[000bc290]                           dc.b $00
[000bc291]                           dc.b $00
[000bc292]                           dc.b $00
[000bc293]                           dc.b $00
FINE_POS:
[000bc294]                           dc.w $ffff
[000bc296]                           dc.b $00
[000bc297]                           dc.b $01
[000bc298]                           dc.b $00
[000bc299]                           dc.b $01
[000bc29a]                           dc.b $00
[000bc29b]                           dc.b $19
[000bc29c]                           dc.b $00
[000bc29d]                           dc.b $40
[000bc29e]                           dc.b $00
[000bc29f]                           dc.b $00
[000bc2a0]                           dc.b $00
[000bc2a1]                           dc.b $ff
[000bc2a2]                           dc.w $1178
[000bc2a4]                           dc.b $00
[000bc2a5]                           dc.b $00
[000bc2a6]                           dc.b $00
[000bc2a7]                           dc.b $00
[000bc2a8]                           dc.b $00
[000bc2a9]                           dc.b $1a
[000bc2aa]                           dc.b $00
[000bc2ab]                           dc.b $0a
_01_FINE_POS:
[000bc2ac]                           dc.b $00
[000bc2ad]                           dc.b $00
[000bc2ae]                           dc.b $00
[000bc2af]                           dc.b $02
[000bc2b0]                           dc.b $00
[000bc2b1]                           dc.b $15
[000bc2b2]                           dc.b $00
[000bc2b3]                           dc.b $18
[000bc2b4]                           dc.b $00
[000bc2b5]                           dc.b $40
[000bc2b6]                           dc.w $0510
[000bc2b8] 000bae18                  dc.l A_3DBUTTON08
[000bc2bc]                           dc.b $00
[000bc2bd]                           dc.b $00
[000bc2be]                           dc.b $00
[000bc2bf]                           dc.b $00
[000bc2c0]                           dc.b $00
[000bc2c1]                           dc.b $1a
[000bc2c2]                           dc.b $00
[000bc2c3]                           dc.b $0a
_02_FINE_POS:
[000bc2c4]                           dc.b $00
[000bc2c5]                           dc.b $03
[000bc2c6]                           dc.w $ffff
[000bc2c8]                           dc.w $ffff
[000bc2ca]                           dc.b $00
[000bc2cb]                           dc.b $1c
[000bc2cc]                           dc.b $00
[000bc2cd]                           dc.b $40
[000bc2ce]                           dc.b $00
[000bc2cf]                           dc.b $00
[000bc2d0] 000b878d                  dc.l TEXT_08
[000bc2d4]                           dc.b $00
[000bc2d5]                           dc.b $0c
[000bc2d6]                           dc.b $00
[000bc2d7]                           dc.b $01
[000bc2d8]                           dc.b $00
[000bc2d9]                           dc.b $05
[000bc2da]                           dc.b $00
[000bc2db]                           dc.b $01
_03_FINE_POS:
[000bc2dc]                           dc.b $00
[000bc2dd]                           dc.b $04
[000bc2de]                           dc.w $ffff
[000bc2e0]                           dc.w $ffff
[000bc2e2]                           dc.b $00
[000bc2e3]                           dc.b $1c
[000bc2e4]                           dc.b $00
[000bc2e5]                           dc.b $40
[000bc2e6]                           dc.b $00
[000bc2e7]                           dc.b $00
[000bc2e8] 000b8834                  dc.l TEXT_10
[000bc2ec]                           dc.b $00
[000bc2ed]                           dc.b $12
[000bc2ee]                           dc.b $00
[000bc2ef]                           dc.b $01
[000bc2f0]                           dc.b $00
[000bc2f1]                           dc.b $06
[000bc2f2]                           dc.b $00
[000bc2f3]                           dc.b $01
_04_FINE_POS:
[000bc2f4]                           dc.b $00
[000bc2f5]                           dc.b $05
[000bc2f6]                           dc.w $ffff
[000bc2f8]                           dc.w $ffff
[000bc2fa]                           dc.b $00
[000bc2fb]                           dc.b $1c
[000bc2fc]                           dc.b $00
[000bc2fd]                           dc.b $40
[000bc2fe]                           dc.b $00
[000bc2ff]                           dc.b $00
[000bc300] 000b88fa                  dc.l TEXT_21
[000bc304]                           dc.b $00
[000bc305]                           dc.b $06
[000bc306]                           dc.b $00
[000bc307]                           dc.b $02
[000bc308]                           dc.b $00
[000bc309]                           dc.b $05
[000bc30a]                           dc.b $00
[000bc30b]                           dc.b $01
_05_FINE_POS:
[000bc30c]                           dc.b $00
[000bc30d]                           dc.b $10
[000bc30e]                           dc.b $00
[000bc30f]                           dc.b $06
[000bc310]                           dc.b $00
[000bc311]                           dc.b $06
[000bc312]                           dc.b $00
[000bc313]                           dc.b $18
[000bc314]                           dc.b $00
[000bc315]                           dc.b $40
[000bc316]                           dc.b $00
[000bc317]                           dc.b $00
[000bc318] 000bad38                  dc.l A_3DBUTTON01
[000bc31c]                           dc.b $00
[000bc31d]                           dc.b $0c
[000bc31e]                           dc.b $00
[000bc31f]                           dc.b $02
[000bc320]                           dc.b $00
[000bc321]                           dc.b $0c
[000bc322]                           dc.b $00
[000bc323]                           dc.b $04
_06_FINE_POS:
[000bc324]                           dc.b $00
[000bc325]                           dc.b $05
[000bc326]                           dc.b $00
[000bc327]                           dc.b $07
[000bc328]                           dc.b $00
[000bc329]                           dc.b $0f
[000bc32a]                           dc.b $00
[000bc32b]                           dc.b $14
[000bc32c]                           dc.b $00
[000bc32d]                           dc.b $40
[000bc32e]                           dc.b $00
[000bc32f]                           dc.b $00
[000bc330]                           dc.b $00
[000bc331]                           dc.b $ff
[000bc332]                           dc.w $0101
[000bc334]                           dc.b $00
[000bc335]                           dc.b $00
[000bc336]                           dc.b $00
[000bc337]                           dc.b $00
[000bc338]                           dc.b $00
[000bc339]                           dc.b $0c
[000bc33a]                           dc.b $00
[000bc33b]                           dc.b $04
_07_FINE_POS:
[000bc33c]                           dc.b $00
[000bc33d]                           dc.b $08
[000bc33e]                           dc.w $ffff
[000bc340]                           dc.w $ffff
[000bc342]                           dc.b $00
[000bc343]                           dc.b $18
[000bc344]                           dc.b $00
[000bc345]                           dc.b $08
[000bc346]                           dc.b $00
[000bc347]                           dc.b $00
[000bc348] 000bb118                  dc.l A_BOXED03
[000bc34c]                           dc.b $00
[000bc34d]                           dc.b $00
[000bc34e]                           dc.b $00
[000bc34f]                           dc.b $00
[000bc350]                           dc.b $00
[000bc351]                           dc.b $05
[000bc352]                           dc.b $00
[000bc353]                           dc.b $01
_08_FINE_POS:
[000bc354]                           dc.b $00
[000bc355]                           dc.b $09
[000bc356]                           dc.w $ffff
[000bc358]                           dc.w $ffff
[000bc35a]                           dc.b $00
[000bc35b]                           dc.b $18
[000bc35c]                           dc.b $00
[000bc35d]                           dc.b $08
[000bc35e]                           dc.b $00
[000bc35f]                           dc.b $00
[000bc360] 000bb0f8                  dc.l A_BOXED02
[000bc364]                           dc.b $00
[000bc365]                           dc.b $00
[000bc366]                           dc.b $00
[000bc367]                           dc.b $01
[000bc368]                           dc.b $00
[000bc369]                           dc.b $05
[000bc36a]                           dc.b $00
[000bc36b]                           dc.b $01
_09_FINE_POS:
[000bc36c]                           dc.b $00
[000bc36d]                           dc.b $0a
[000bc36e]                           dc.w $ffff
[000bc370]                           dc.w $ffff
[000bc372]                           dc.b $00
[000bc373]                           dc.b $18
[000bc374]                           dc.b $00
[000bc375]                           dc.b $08
[000bc376]                           dc.b $00
[000bc377]                           dc.b $00
[000bc378] 000bb0d8                  dc.l A_BOXED01
[000bc37c]                           dc.b $00
[000bc37d]                           dc.b $00
[000bc37e]                           dc.b $00
[000bc37f]                           dc.b $02
[000bc380]                           dc.b $00
[000bc381]                           dc.b $05
[000bc382]                           dc.b $00
[000bc383]                           dc.b $01
_10_FINE_POS:
[000bc384]                           dc.b $00
[000bc385]                           dc.b $0b
[000bc386]                           dc.w $ffff
[000bc388]                           dc.w $ffff
[000bc38a]                           dc.b $00
[000bc38b]                           dc.b $18
[000bc38c]                           dc.b $00
[000bc38d]                           dc.b $08
[000bc38e]                           dc.b $00
[000bc38f]                           dc.b $00
[000bc390] 000bb0d8                  dc.l A_BOXED01
[000bc394]                           dc.b $00
[000bc395]                           dc.b $00
[000bc396]                           dc.b $00
[000bc397]                           dc.b $03
[000bc398]                           dc.b $00
[000bc399]                           dc.b $05
[000bc39a]                           dc.b $00
[000bc39b]                           dc.b $01
_11_FINE_POS:
[000bc39c]                           dc.b $00
[000bc39d]                           dc.b $0c
[000bc39e]                           dc.w $ffff
[000bc3a0]                           dc.w $ffff
[000bc3a2]                           dc.b $00
[000bc3a3]                           dc.b $18
[000bc3a4]                           dc.b $00
[000bc3a5]                           dc.b $00
[000bc3a6]                           dc.b $00
[000bc3a7]                           dc.b $00
[000bc3a8] 000bb0b8                  dc.l A_ARROWS03
[000bc3ac]                           dc.b $00
[000bc3ad]                           dc.b $05
[000bc3ae]                           dc.b $00
[000bc3af]                           dc.b $00
[000bc3b0]                           dc.b $00
[000bc3b1]                           dc.b $02
[000bc3b2]                           dc.b $00
[000bc3b3]                           dc.b $04
_12_FINE_POS:
[000bc3b4]                           dc.b $00
[000bc3b5]                           dc.b $0d
[000bc3b6]                           dc.w $ffff
[000bc3b8]                           dc.w $ffff
[000bc3ba]                           dc.b $00
[000bc3bb]                           dc.b $18
[000bc3bc]                           dc.b $00
[000bc3bd]                           dc.b $08
[000bc3be]                           dc.b $00
[000bc3bf]                           dc.b $00
[000bc3c0] 000bb0d8                  dc.l A_BOXED01
[000bc3c4]                           dc.b $00
[000bc3c5]                           dc.b $07
[000bc3c6]                           dc.b $00
[000bc3c7]                           dc.b $00
[000bc3c8]                           dc.b $00
[000bc3c9]                           dc.b $05
[000bc3ca]                           dc.b $00
[000bc3cb]                           dc.b $01
_13_FINE_POS:
[000bc3cc]                           dc.b $00
[000bc3cd]                           dc.b $0e
[000bc3ce]                           dc.w $ffff
[000bc3d0]                           dc.w $ffff
[000bc3d2]                           dc.b $00
[000bc3d3]                           dc.b $18
[000bc3d4]                           dc.b $00
[000bc3d5]                           dc.b $08
[000bc3d6]                           dc.b $00
[000bc3d7]                           dc.b $00
[000bc3d8] 000bb0d8                  dc.l A_BOXED01
[000bc3dc]                           dc.b $00
[000bc3dd]                           dc.b $07
[000bc3de]                           dc.b $00
[000bc3df]                           dc.b $01
[000bc3e0]                           dc.b $00
[000bc3e1]                           dc.b $05
[000bc3e2]                           dc.b $00
[000bc3e3]                           dc.b $01
_14_FINE_POS:
[000bc3e4]                           dc.b $00
[000bc3e5]                           dc.b $0f
[000bc3e6]                           dc.w $ffff
[000bc3e8]                           dc.w $ffff
[000bc3ea]                           dc.b $00
[000bc3eb]                           dc.b $18
[000bc3ec]                           dc.b $00
[000bc3ed]                           dc.b $08
[000bc3ee]                           dc.b $00
[000bc3ef]                           dc.b $00
[000bc3f0] 000bb0d8                  dc.l A_BOXED01
[000bc3f4]                           dc.b $00
[000bc3f5]                           dc.b $07
[000bc3f6]                           dc.b $00
[000bc3f7]                           dc.b $02
[000bc3f8]                           dc.b $00
[000bc3f9]                           dc.b $05
[000bc3fa]                           dc.b $00
[000bc3fb]                           dc.b $01
_15_FINE_POS:
[000bc3fc]                           dc.b $00
[000bc3fd]                           dc.b $06
[000bc3fe]                           dc.w $ffff
[000bc400]                           dc.w $ffff
[000bc402]                           dc.b $00
[000bc403]                           dc.b $18
[000bc404]                           dc.b $00
[000bc405]                           dc.b $08
[000bc406]                           dc.b $00
[000bc407]                           dc.b $00
[000bc408] 000bb0d8                  dc.l A_BOXED01
[000bc40c]                           dc.b $00
[000bc40d]                           dc.b $07
[000bc40e]                           dc.b $00
[000bc40f]                           dc.b $03
[000bc410]                           dc.b $00
[000bc411]                           dc.b $05
[000bc412]                           dc.b $00
[000bc413]                           dc.b $01
_16_FINE_POS:
[000bc414]                           dc.b $00
[000bc415]                           dc.b $11
[000bc416]                           dc.w $ffff
[000bc418]                           dc.w $ffff
[000bc41a]                           dc.b $00
[000bc41b]                           dc.b $1c
[000bc41c]                           dc.b $00
[000bc41d]                           dc.b $40
[000bc41e]                           dc.b $00
[000bc41f]                           dc.b $00
[000bc420] 000b8858                  dc.l TEXT_13
[000bc424]                           dc.b $00
[000bc425]                           dc.b $06
[000bc426]                           dc.b $00
[000bc427]                           dc.b $03
[000bc428]                           dc.b $00
[000bc429]                           dc.b $05
[000bc42a]                           dc.b $00
[000bc42b]                           dc.b $01
_17_FINE_POS:
[000bc42c]                           dc.b $00
[000bc42d]                           dc.b $12
[000bc42e]                           dc.w $ffff
[000bc430]                           dc.w $ffff
[000bc432]                           dc.b $00
[000bc433]                           dc.b $1c
[000bc434]                           dc.b $00
[000bc435]                           dc.b $40
[000bc436]                           dc.b $00
[000bc437]                           dc.b $00
[000bc438] 000b8865                  dc.l TEXT_14
[000bc43c]                           dc.b $00
[000bc43d]                           dc.b $02
[000bc43e]                           dc.b $00
[000bc43f]                           dc.b $04
[000bc440]                           dc.b $00
[000bc441]                           dc.b $09
[000bc442]                           dc.b $00
[000bc443]                           dc.b $01
_18_FINE_POS:
[000bc444]                           dc.b $00
[000bc445]                           dc.b $13
[000bc446]                           dc.w $ffff
[000bc448]                           dc.w $ffff
[000bc44a]                           dc.b $00
[000bc44b]                           dc.b $1c
[000bc44c]                           dc.b $00
[000bc44d]                           dc.b $40
[000bc44e]                           dc.b $00
[000bc44f]                           dc.b $00
[000bc450] 000b886f                  dc.l TEXT_15
[000bc454]                           dc.b $00
[000bc455]                           dc.b $01
[000bc456]                           dc.b $00
[000bc457]                           dc.b $05
[000bc458]                           dc.b $00
[000bc459]                           dc.b $0a
[000bc45a]                           dc.b $00
[000bc45b]                           dc.b $01
_19_FINE_POS:
[000bc45c]                           dc.b $00
[000bc45d]                           dc.b $15
[000bc45e]                           dc.w $ffff
[000bc460]                           dc.w $ffff
[000bc462]                           dc.b $00
[000bc463]                           dc.b $18
[000bc464]                           dc.w $4007
[000bc466]                           dc.b $00
[000bc467]                           dc.b $10
[000bc468] 000bad78                  dc.l A_3DBUTTON03
[000bc46c]                           dc.b $00
[000bc46d]                           dc.b $02
[000bc46e]                           dc.b $00
[000bc46f]                           dc.b $07
[000bc470]                           dc.b $00
[000bc471]                           dc.b $0a
[000bc472]                           dc.b $00
[000bc473]                           dc.b $02
_19aFINE_POS:
[000bc474]                           dc.b $00
[000bc475]                           dc.b $00
[000bc476]                           dc.b $00
[000bc477]                           dc.b $00
[000bc478]                           dc.b $00
[000bc479]                           dc.b $00
[000bc47a]                           dc.b $00
[000bc47b]                           dc.b $00
[000bc47c]                           dc.w $8000
[000bc47e]                           dc.w $884f
[000bc480]                           dc.b $00
[000bc481]                           dc.b $00
[000bc482]                           dc.b $00
[000bc483]                           dc.b $00
[000bc484]                           dc.b $00
[000bc485]                           dc.b $00
[000bc486]                           dc.b $00
[000bc487]                           dc.b $00
[000bc488]                           dc.b $00
[000bc489]                           dc.b $00
[000bc48a]                           dc.b $00
[000bc48b]                           dc.b $00
_21_FINE_POS:
[000bc48c]                           dc.b $00
[000bc48d]                           dc.b $01
[000bc48e]                           dc.w $ffff
[000bc490]                           dc.w $ffff
[000bc492]                           dc.b $00
[000bc493]                           dc.b $18
[000bc494]                           dc.w $4005
[000bc496]                           dc.b $00
[000bc497]                           dc.b $10
[000bc498] 000badb8                  dc.l A_3DBUTTON05
[000bc49c]                           dc.b $00
[000bc49d]                           dc.b $0e
[000bc49e]                           dc.b $00
[000bc49f]                           dc.b $07
[000bc4a0]                           dc.b $00
[000bc4a1]                           dc.b $0a
[000bc4a2]                           dc.b $00
[000bc4a3]                           dc.b $02
_21aFINE_POS:
[000bc4a4]                           dc.b $00
[000bc4a5]                           dc.b $00
[000bc4a6]                           dc.b $00
[000bc4a7]                           dc.b $00
[000bc4a8]                           dc.b $00
[000bc4a9]                           dc.b $00
[000bc4aa]                           dc.b $00
[000bc4ab]                           dc.b $00
[000bc4ac]                           dc.w $8020
[000bc4ae]                           dc.w $8841
[000bc4b0]                           dc.b $00
[000bc4b1]                           dc.b $00
[000bc4b2]                           dc.b $00
[000bc4b3]                           dc.b $00
[000bc4b4]                           dc.b $00
[000bc4b5]                           dc.b $00
[000bc4b6]                           dc.b $00
[000bc4b7]                           dc.b $00
[000bc4b8]                           dc.b $00
[000bc4b9]                           dc.b $00
[000bc4ba]                           dc.b $00
[000bc4bb]                           dc.b $00
INFO_EDIT:
[000bc4bc]                           dc.w $ffff
[000bc4be]                           dc.b $00
[000bc4bf]                           dc.b $01
[000bc4c0]                           dc.b $00
[000bc4c1]                           dc.b $01
[000bc4c2]                           dc.b $00
[000bc4c3]                           dc.b $19
[000bc4c4]                           dc.b $00
[000bc4c5]                           dc.b $40
[000bc4c6]                           dc.b $00
[000bc4c7]                           dc.b $00
[000bc4c8]                           dc.b $00
[000bc4c9]                           dc.b $ff
[000bc4ca]                           dc.w $1141
[000bc4cc]                           dc.b $00
[000bc4cd]                           dc.b $00
[000bc4ce]                           dc.b $00
[000bc4cf]                           dc.b $00
[000bc4d0]                           dc.b $00
[000bc4d1]                           dc.b $28
[000bc4d2]                           dc.b $00
[000bc4d3]                           dc.b $05
_01_INFO_EDIT:
[000bc4d4]                           dc.b $00
[000bc4d5]                           dc.b $00
[000bc4d6]                           dc.b $00
[000bc4d7]                           dc.b $02
[000bc4d8]                           dc.b $00
[000bc4d9]                           dc.b $07
[000bc4da]                           dc.b $00
[000bc4db]                           dc.b $18
[000bc4dc]                           dc.b $00
[000bc4dd]                           dc.b $40
[000bc4de]                           dc.b $00
[000bc4df]                           dc.b $10
[000bc4e0] 000bae98                  dc.l A_3DBUTTON12
[000bc4e4]                           dc.b $00
[000bc4e5]                           dc.b $00
[000bc4e6]                           dc.b $00
[000bc4e7]                           dc.b $00
[000bc4e8]                           dc.b $00
[000bc4e9]                           dc.b $28
[000bc4ea]                           dc.b $00
[000bc4eb]                           dc.b $05
_02_INFO_EDIT:
[000bc4ec]                           dc.b $00
[000bc4ed]                           dc.b $03
[000bc4ee]                           dc.w $ffff
[000bc4f0]                           dc.w $ffff
[000bc4f2]                           dc.b $00
[000bc4f3]                           dc.b $1c
[000bc4f4]                           dc.b $00
[000bc4f5]                           dc.b $40
[000bc4f6]                           dc.b $00
[000bc4f7]                           dc.b $00
[000bc4f8] 000b86d7                  dc.l TEXT_01
[000bc4fc]                           dc.b $00
[000bc4fd]                           dc.b $01
[000bc4fe]                           dc.b $00
[000bc4ff]                           dc.b $03
[000bc500]                           dc.b $00
[000bc501]                           dc.b $07
[000bc502]                           dc.b $00
[000bc503]                           dc.b $01
_03_INFO_EDIT:
[000bc504]                           dc.b $00
[000bc505]                           dc.b $04
[000bc506]                           dc.w $ffff
[000bc508]                           dc.w $ffff
[000bc50a]                           dc.b $00
[000bc50b]                           dc.b $1c
[000bc50c]                           dc.b $00
[000bc50d]                           dc.b $40
[000bc50e]                           dc.b $00
[000bc50f]                           dc.b $00
[000bc510] 000b8785                  dc.l TEXT_071
[000bc514]                           dc.b $00
[000bc515]                           dc.b $01
[000bc516]                           dc.b $00
[000bc517]                           dc.b $02
[000bc518]                           dc.b $00
[000bc519]                           dc.b $07
[000bc51a]                           dc.b $00
[000bc51b]                           dc.b $01
_04_INFO_EDIT:
[000bc51c]                           dc.b $00
[000bc51d]                           dc.b $05
[000bc51e]                           dc.w $ffff
[000bc520]                           dc.w $ffff
[000bc522]                           dc.b $00
[000bc523]                           dc.b $16
[000bc524]                           dc.b $00
[000bc525]                           dc.b $40
[000bc526]                           dc.b $00
[000bc527]                           dc.b $00
[000bc528] 000bad00                  dc.l TEDI_001
[000bc52c]                           dc.b $00
[000bc52d]                           dc.b $08
[000bc52e]                           dc.b $00
[000bc52f]                           dc.b $01
[000bc530]                           dc.b $00
[000bc531]                           dc.b $1f
[000bc532]                           dc.b $00
[000bc533]                           dc.b $01
_05_INFO_EDIT:
[000bc534]                           dc.b $00
[000bc535]                           dc.b $06
[000bc536]                           dc.w $ffff
[000bc538]                           dc.w $ffff
[000bc53a]                           dc.b $00
[000bc53b]                           dc.b $16
[000bc53c]                           dc.b $00
[000bc53d]                           dc.b $40
[000bc53e]                           dc.b $00
[000bc53f]                           dc.b $00
[000bc540] 000bad00                  dc.l TEDI_001
[000bc544]                           dc.b $00
[000bc545]                           dc.b $08
[000bc546]                           dc.b $00
[000bc547]                           dc.b $02
[000bc548]                           dc.b $00
[000bc549]                           dc.b $1f
[000bc54a]                           dc.b $00
[000bc54b]                           dc.b $01
_06_INFO_EDIT:
[000bc54c]                           dc.b $00
[000bc54d]                           dc.b $07
[000bc54e]                           dc.w $ffff
[000bc550]                           dc.w $ffff
[000bc552]                           dc.b $00
[000bc553]                           dc.b $16
[000bc554]                           dc.b $00
[000bc555]                           dc.b $40
[000bc556]                           dc.b $00
[000bc557]                           dc.b $00
[000bc558] 000bad1c                  dc.l TEDI_042
[000bc55c]                           dc.b $00
[000bc55d]                           dc.b $08
[000bc55e]                           dc.b $00
[000bc55f]                           dc.b $03
[000bc560]                           dc.b $00
[000bc561]                           dc.b $06
[000bc562]                           dc.b $00
[000bc563]                           dc.b $01
_07_INFO_EDIT:
[000bc564]                           dc.b $00
[000bc565]                           dc.b $01
[000bc566]                           dc.w $ffff
[000bc568]                           dc.w $ffff
[000bc56a]                           dc.b $00
[000bc56b]                           dc.b $1c
[000bc56c]                           dc.b $00
[000bc56d]                           dc.b $60
[000bc56e]                           dc.b $00
[000bc56f]                           dc.b $00
[000bc570] 000b8769                  dc.l TEXT_069
[000bc574]                           dc.b $00
[000bc575]                           dc.b $02
[000bc576]                           dc.b $00
[000bc577]                           dc.b $01
[000bc578]                           dc.b $00
[000bc579]                           dc.b $06
[000bc57a]                           dc.b $00
[000bc57b]                           dc.b $01
MINIOB:
[000bc57c]                           dc.w $ffff
[000bc57e]                           dc.w $ffff
[000bc580]                           dc.w $ffff
[000bc582]                           dc.b $00
[000bc583]                           dc.b $18
[000bc584]                           dc.b $00
[000bc585]                           dc.b $60
[000bc586]                           dc.b $00
[000bc587]                           dc.b $10
[000bc588] 000bad58                  dc.l A_3DBUTTON02
[000bc58c]                           dc.b $00
[000bc58d]                           dc.b $00
[000bc58e]                           dc.b $00
[000bc58f]                           dc.b $00
[000bc590]                           dc.b $00
[000bc591]                           dc.b $1c
[000bc592]                           dc.b $00
[000bc593]                           dc.b $0b
TRY_CLICK:
[000bc594]                           dc.w $ffff
[000bc596]                           dc.b $00
[000bc597]                           dc.b $01
[000bc598]                           dc.b $00
[000bc599]                           dc.b $01
[000bc59a]                           dc.b $00
[000bc59b]                           dc.b $19
[000bc59c]                           dc.b $00
[000bc59d]                           dc.b $40
[000bc59e]                           dc.b $00
[000bc59f]                           dc.b $00
[000bc5a0]                           dc.b $00
[000bc5a1]                           dc.b $ff
[000bc5a2]                           dc.w $1178
[000bc5a4]                           dc.b $00
[000bc5a5]                           dc.b $00
[000bc5a6]                           dc.b $00
[000bc5a7]                           dc.b $00
[000bc5a8]                           dc.b $00
[000bc5a9]                           dc.b $28
[000bc5aa]                           dc.b $00
[000bc5ab]                           dc.b $09
_01_TRY_CLICK:
[000bc5ac]                           dc.b $00
[000bc5ad]                           dc.b $00
[000bc5ae]                           dc.b $00
[000bc5af]                           dc.b $02
[000bc5b0]                           dc.b $00
[000bc5b1]                           dc.b $0c
[000bc5b2]                           dc.b $00
[000bc5b3]                           dc.b $18
[000bc5b4]                           dc.b $00
[000bc5b5]                           dc.b $40
[000bc5b6]                           dc.b $00
[000bc5b7]                           dc.b $10
[000bc5b8] 000bae18                  dc.l A_3DBUTTON08
[000bc5bc]                           dc.b $00
[000bc5bd]                           dc.b $00
[000bc5be]                           dc.b $00
[000bc5bf]                           dc.b $00
[000bc5c0]                           dc.b $00
[000bc5c1]                           dc.b $28
[000bc5c2]                           dc.b $00
[000bc5c3]                           dc.b $09
_02_TRY_CLICK:
[000bc5c4]                           dc.b $00
[000bc5c5]                           dc.b $03
[000bc5c6]                           dc.w $ffff
[000bc5c8]                           dc.w $ffff
[000bc5ca]                           dc.b $00
[000bc5cb]                           dc.b $1c
[000bc5cc]                           dc.b $00
[000bc5cd]                           dc.b $40
[000bc5ce]                           dc.b $00
[000bc5cf]                           dc.b $00
[000bc5d0] 000b8769                  dc.l TEXT_069
[000bc5d4]                           dc.b $00
[000bc5d5]                           dc.b $02
[000bc5d6]                           dc.b $00
[000bc5d7]                           dc.b $01
[000bc5d8]                           dc.b $00
[000bc5d9]                           dc.b $06
[000bc5da]                           dc.b $00
[000bc5db]                           dc.b $01
_03_TRY_CLICK:
[000bc5dc]                           dc.b $00
[000bc5dd]                           dc.b $04
[000bc5de]                           dc.w $ffff
[000bc5e0]                           dc.w $ffff
[000bc5e2]                           dc.b $00
[000bc5e3]                           dc.b $16
[000bc5e4]                           dc.b $00
[000bc5e5]                           dc.b $40
[000bc5e6]                           dc.b $00
[000bc5e7]                           dc.b $00
[000bc5e8] 000bad00                  dc.l TEDI_001
[000bc5ec]                           dc.b $00
[000bc5ed]                           dc.b $08
[000bc5ee]                           dc.b $00
[000bc5ef]                           dc.b $01
[000bc5f0]                           dc.b $00
[000bc5f1]                           dc.b $1f
[000bc5f2]                           dc.b $00
[000bc5f3]                           dc.b $01
_04_TRY_CLICK:
[000bc5f4]                           dc.b $00
[000bc5f5]                           dc.b $05
[000bc5f6]                           dc.w $ffff
[000bc5f8]                           dc.w $ffff
[000bc5fa]                           dc.b $00
[000bc5fb]                           dc.b $1c
[000bc5fc]                           dc.b $00
[000bc5fd]                           dc.b $40
[000bc5fe]                           dc.b $00
[000bc5ff]                           dc.b $00
[000bc600] 000b8785                  dc.l TEXT_071
[000bc604]                           dc.b $00
[000bc605]                           dc.b $01
[000bc606]                           dc.b $00
[000bc607]                           dc.b $02
[000bc608]                           dc.b $00
[000bc609]                           dc.b $07
[000bc60a]                           dc.b $00
[000bc60b]                           dc.b $01
_05_TRY_CLICK:
[000bc60c]                           dc.b $00
[000bc60d]                           dc.b $06
[000bc60e]                           dc.w $ffff
[000bc610]                           dc.w $ffff
[000bc612]                           dc.b $00
[000bc613]                           dc.b $16
[000bc614]                           dc.b $00
[000bc615]                           dc.b $40
[000bc616]                           dc.b $00
[000bc617]                           dc.b $00
[000bc618] 000bad00                  dc.l TEDI_001
[000bc61c]                           dc.b $00
[000bc61d]                           dc.b $08
[000bc61e]                           dc.b $00
[000bc61f]                           dc.b $02
[000bc620]                           dc.b $00
[000bc621]                           dc.b $1f
[000bc622]                           dc.b $00
[000bc623]                           dc.b $01
_06_TRY_CLICK:
[000bc624]                           dc.b $00
[000bc625]                           dc.b $07
[000bc626]                           dc.w $ffff
[000bc628]                           dc.w $ffff
[000bc62a]                           dc.b $00
[000bc62b]                           dc.b $1c
[000bc62c]                           dc.b $00
[000bc62d]                           dc.b $40
[000bc62e]                           dc.b $00
[000bc62f]                           dc.b $00
[000bc630] 000b8919                  dc.l TEXT_239
[000bc634]                           dc.b $00
[000bc635]                           dc.b $01
[000bc636]                           dc.b $00
[000bc637]                           dc.b $03
[000bc638]                           dc.b $00
[000bc639]                           dc.b $07
[000bc63a]                           dc.b $00
[000bc63b]                           dc.b $01
_07_TRY_CLICK:
[000bc63c]                           dc.b $00
[000bc63d]                           dc.b $08
[000bc63e]                           dc.w $ffff
[000bc640]                           dc.w $ffff
[000bc642]                           dc.b $00
[000bc643]                           dc.b $16
[000bc644]                           dc.b $00
[000bc645]                           dc.b $40
[000bc646]                           dc.b $00
[000bc647]                           dc.b $00
[000bc648] 000bad00                  dc.l TEDI_001
[000bc64c]                           dc.b $00
[000bc64d]                           dc.b $08
[000bc64e]                           dc.b $00
[000bc64f]                           dc.b $03
[000bc650]                           dc.b $00
[000bc651]                           dc.b $1f
[000bc652]                           dc.b $00
[000bc653]                           dc.b $01
_08_TRY_CLICK:
[000bc654]                           dc.b $00
[000bc655]                           dc.b $09
[000bc656]                           dc.w $ffff
[000bc658]                           dc.w $ffff
[000bc65a]                           dc.b $00
[000bc65b]                           dc.b $1c
[000bc65c]                           dc.b $00
[000bc65d]                           dc.b $40
[000bc65e]                           dc.b $00
[000bc65f]                           dc.b $00
[000bc660] 000b892b                  dc.l TEXT_245
[000bc664]                           dc.b $00
[000bc665]                           dc.b $02
[000bc666]                           dc.b $00
[000bc667]                           dc.b $04
[000bc668]                           dc.b $00
[000bc669]                           dc.b $06
[000bc66a]                           dc.b $00
[000bc66b]                           dc.b $01
_09_TRY_CLICK:
[000bc66c]                           dc.b $00
[000bc66d]                           dc.b $0a
[000bc66e]                           dc.w $ffff
[000bc670]                           dc.w $ffff
[000bc672]                           dc.b $00
[000bc673]                           dc.b $16
[000bc674]                           dc.b $00
[000bc675]                           dc.b $40
[000bc676]                           dc.b $00
[000bc677]                           dc.b $00
[000bc678] 000bad00                  dc.l TEDI_001
[000bc67c]                           dc.b $00
[000bc67d]                           dc.b $08
[000bc67e]                           dc.b $00
[000bc67f]                           dc.b $04
[000bc680]                           dc.b $00
[000bc681]                           dc.b $1f
[000bc682]                           dc.b $00
[000bc683]                           dc.b $01
_10_TRY_CLICK:
[000bc684]                           dc.b $00
[000bc685]                           dc.b $0c
[000bc686]                           dc.w $ffff
[000bc688]                           dc.w $ffff
[000bc68a]                           dc.b $00
[000bc68b]                           dc.b $18
[000bc68c]                           dc.w $4007
[000bc68e]                           dc.b $00
[000bc68f]                           dc.b $10
[000bc690] 000bad78                  dc.l A_3DBUTTON03
[000bc694]                           dc.b $00
[000bc695]                           dc.b $07
[000bc696]                           dc.b $00
[000bc697]                           dc.b $06
[000bc698]                           dc.b $00
[000bc699]                           dc.b $0c
[000bc69a]                           dc.b $00
[000bc69b]                           dc.b $02
_10aTRY_CLICK:
[000bc69c]                           dc.b $00
[000bc69d]                           dc.b $00
[000bc69e]                           dc.b $00
[000bc69f]                           dc.b $00
[000bc6a0]                           dc.b $00
[000bc6a1]                           dc.b $00
[000bc6a2]                           dc.b $00
[000bc6a3]                           dc.b $00
[000bc6a4]                           dc.w $8000
[000bc6a6]                           dc.w $884f
[000bc6a8]                           dc.b $00
[000bc6a9]                           dc.b $00
[000bc6aa]                           dc.b $00
[000bc6ab]                           dc.b $00
[000bc6ac]                           dc.b $00
[000bc6ad]                           dc.b $00
[000bc6ae]                           dc.b $00
[000bc6af]                           dc.b $00
[000bc6b0]                           dc.b $00
[000bc6b1]                           dc.b $00
[000bc6b2]                           dc.b $00
[000bc6b3]                           dc.b $00
_12_TRY_CLICK:
[000bc6b4]                           dc.b $00
[000bc6b5]                           dc.b $01
[000bc6b6]                           dc.w $ffff
[000bc6b8]                           dc.w $ffff
[000bc6ba]                           dc.b $00
[000bc6bb]                           dc.b $18
[000bc6bc]                           dc.w $4005
[000bc6be]                           dc.b $00
[000bc6bf]                           dc.b $10
[000bc6c0] 000badb8                  dc.l A_3DBUTTON05
[000bc6c4]                           dc.b $00
[000bc6c5]                           dc.b $15
[000bc6c6]                           dc.b $00
[000bc6c7]                           dc.b $06
[000bc6c8]                           dc.b $00
[000bc6c9]                           dc.b $0c
[000bc6ca]                           dc.b $00
[000bc6cb]                           dc.b $02
_12aTRY_CLICK:
[000bc6cc]                           dc.b $00
[000bc6cd]                           dc.b $00
[000bc6ce]                           dc.b $00
[000bc6cf]                           dc.b $00
[000bc6d0]                           dc.b $00
[000bc6d1]                           dc.b $00
[000bc6d2]                           dc.b $00
[000bc6d3]                           dc.b $00
[000bc6d4]                           dc.w $8020
[000bc6d6]                           dc.w $8841
[000bc6d8]                           dc.b $00
[000bc6d9]                           dc.b $00
[000bc6da]                           dc.b $00
[000bc6db]                           dc.b $00
[000bc6dc]                           dc.b $00
[000bc6dd]                           dc.b $00
[000bc6de]                           dc.b $00
[000bc6df]                           dc.b $00
[000bc6e0]                           dc.b $00
[000bc6e1]                           dc.b $00
[000bc6e2]                           dc.b $00
[000bc6e3]                           dc.b $00
TRY_DRAG:
[000bc6e4]                           dc.w $ffff
[000bc6e6]                           dc.b $00
[000bc6e7]                           dc.b $01
[000bc6e8]                           dc.b $00
[000bc6e9]                           dc.b $01
[000bc6ea]                           dc.b $00
[000bc6eb]                           dc.b $19
[000bc6ec]                           dc.b $00
[000bc6ed]                           dc.b $40
[000bc6ee]                           dc.b $00
[000bc6ef]                           dc.b $00
[000bc6f0]                           dc.b $00
[000bc6f1]                           dc.b $ff
[000bc6f2]                           dc.w $1178
[000bc6f4]                           dc.b $00
[000bc6f5]                           dc.b $00
[000bc6f6]                           dc.b $00
[000bc6f7]                           dc.b $00
[000bc6f8]                           dc.b $00
[000bc6f9]                           dc.b $28
[000bc6fa]                           dc.b $00
[000bc6fb]                           dc.b $09
_01_TRY_DRAG:
[000bc6fc]                           dc.b $00
[000bc6fd]                           dc.b $00
[000bc6fe]                           dc.b $00
[000bc6ff]                           dc.b $02
[000bc700]                           dc.b $00
[000bc701]                           dc.b $0c
[000bc702]                           dc.b $00
[000bc703]                           dc.b $18
[000bc704]                           dc.b $00
[000bc705]                           dc.b $40
[000bc706]                           dc.b $00
[000bc707]                           dc.b $10
[000bc708] 000bae18                  dc.l A_3DBUTTON08
[000bc70c]                           dc.b $00
[000bc70d]                           dc.b $00
[000bc70e]                           dc.b $00
[000bc70f]                           dc.b $00
[000bc710]                           dc.b $00
[000bc711]                           dc.b $28
[000bc712]                           dc.b $00
[000bc713]                           dc.b $09
_02_TRY_DRAG:
[000bc714]                           dc.b $00
[000bc715]                           dc.b $03
[000bc716]                           dc.w $ffff
[000bc718]                           dc.w $ffff
[000bc71a]                           dc.b $00
[000bc71b]                           dc.b $1c
[000bc71c]                           dc.b $00
[000bc71d]                           dc.b $40
[000bc71e]                           dc.b $00
[000bc71f]                           dc.b $00
[000bc720] 000b8769                  dc.l TEXT_069
[000bc724]                           dc.b $00
[000bc725]                           dc.b $02
[000bc726]                           dc.b $00
[000bc727]                           dc.b $01
[000bc728]                           dc.b $00
[000bc729]                           dc.b $06
[000bc72a]                           dc.b $00
[000bc72b]                           dc.b $01
_03_TRY_DRAG:
[000bc72c]                           dc.b $00
[000bc72d]                           dc.b $04
[000bc72e]                           dc.w $ffff
[000bc730]                           dc.w $ffff
[000bc732]                           dc.b $00
[000bc733]                           dc.b $16
[000bc734]                           dc.b $00
[000bc735]                           dc.b $40
[000bc736]                           dc.b $00
[000bc737]                           dc.b $00
[000bc738] 000bad00                  dc.l TEDI_001
[000bc73c]                           dc.b $00
[000bc73d]                           dc.b $08
[000bc73e]                           dc.b $00
[000bc73f]                           dc.b $01
[000bc740]                           dc.b $00
[000bc741]                           dc.b $1f
[000bc742]                           dc.b $00
[000bc743]                           dc.b $01
_04_TRY_DRAG:
[000bc744]                           dc.b $00
[000bc745]                           dc.b $05
[000bc746]                           dc.w $ffff
[000bc748]                           dc.w $ffff
[000bc74a]                           dc.b $00
[000bc74b]                           dc.b $1c
[000bc74c]                           dc.b $00
[000bc74d]                           dc.b $40
[000bc74e]                           dc.b $00
[000bc74f]                           dc.b $00
[000bc750] 000b8785                  dc.l TEXT_071
[000bc754]                           dc.b $00
[000bc755]                           dc.b $01
[000bc756]                           dc.b $00
[000bc757]                           dc.b $02
[000bc758]                           dc.b $00
[000bc759]                           dc.b $07
[000bc75a]                           dc.b $00
[000bc75b]                           dc.b $01
_05_TRY_DRAG:
[000bc75c]                           dc.b $00
[000bc75d]                           dc.b $06
[000bc75e]                           dc.w $ffff
[000bc760]                           dc.w $ffff
[000bc762]                           dc.b $00
[000bc763]                           dc.b $16
[000bc764]                           dc.b $00
[000bc765]                           dc.b $40
[000bc766]                           dc.b $00
[000bc767]                           dc.b $00
[000bc768] 000bad00                  dc.l TEDI_001
[000bc76c]                           dc.b $00
[000bc76d]                           dc.b $08
[000bc76e]                           dc.b $00
[000bc76f]                           dc.b $02
[000bc770]                           dc.b $00
[000bc771]                           dc.b $1f
[000bc772]                           dc.b $00
[000bc773]                           dc.b $01
_06_TRY_DRAG:
[000bc774]                           dc.b $00
[000bc775]                           dc.b $07
[000bc776]                           dc.w $ffff
[000bc778]                           dc.w $ffff
[000bc77a]                           dc.b $00
[000bc77b]                           dc.b $1c
[000bc77c]                           dc.b $00
[000bc77d]                           dc.b $40
[000bc77e]                           dc.b $00
[000bc77f]                           dc.b $00
[000bc780] 000b8919                  dc.l TEXT_239
[000bc784]                           dc.b $00
[000bc785]                           dc.b $01
[000bc786]                           dc.b $00
[000bc787]                           dc.b $03
[000bc788]                           dc.b $00
[000bc789]                           dc.b $07
[000bc78a]                           dc.b $00
[000bc78b]                           dc.b $01
_07_TRY_DRAG:
[000bc78c]                           dc.b $00
[000bc78d]                           dc.b $08
[000bc78e]                           dc.w $ffff
[000bc790]                           dc.w $ffff
[000bc792]                           dc.b $00
[000bc793]                           dc.b $16
[000bc794]                           dc.b $00
[000bc795]                           dc.b $40
[000bc796]                           dc.b $00
[000bc797]                           dc.b $00
[000bc798] 000bad00                  dc.l TEDI_001
[000bc79c]                           dc.b $00
[000bc79d]                           dc.b $08
[000bc79e]                           dc.b $00
[000bc79f]                           dc.b $03
[000bc7a0]                           dc.b $00
[000bc7a1]                           dc.b $1f
[000bc7a2]                           dc.b $00
[000bc7a3]                           dc.b $01
_08_TRY_DRAG:
[000bc7a4]                           dc.b $00
[000bc7a5]                           dc.b $09
[000bc7a6]                           dc.w $ffff
[000bc7a8]                           dc.w $ffff
[000bc7aa]                           dc.b $00
[000bc7ab]                           dc.b $1c
[000bc7ac]                           dc.b $00
[000bc7ad]                           dc.b $40
[000bc7ae]                           dc.b $00
[000bc7af]                           dc.b $00
[000bc7b0] 000b892b                  dc.l TEXT_245
[000bc7b4]                           dc.b $00
[000bc7b5]                           dc.b $02
[000bc7b6]                           dc.b $00
[000bc7b7]                           dc.b $04
[000bc7b8]                           dc.b $00
[000bc7b9]                           dc.b $06
[000bc7ba]                           dc.b $00
[000bc7bb]                           dc.b $01
_09_TRY_DRAG:
[000bc7bc]                           dc.b $00
[000bc7bd]                           dc.b $0a
[000bc7be]                           dc.w $ffff
[000bc7c0]                           dc.w $ffff
[000bc7c2]                           dc.b $00
[000bc7c3]                           dc.b $16
[000bc7c4]                           dc.b $00
[000bc7c5]                           dc.b $40
[000bc7c6]                           dc.b $00
[000bc7c7]                           dc.b $00
[000bc7c8] 000bad00                  dc.l TEDI_001
[000bc7cc]                           dc.b $00
[000bc7cd]                           dc.b $08
[000bc7ce]                           dc.b $00
[000bc7cf]                           dc.b $04
[000bc7d0]                           dc.b $00
[000bc7d1]                           dc.b $1f
[000bc7d2]                           dc.b $00
[000bc7d3]                           dc.b $01
_10_TRY_DRAG:
[000bc7d4]                           dc.b $00
[000bc7d5]                           dc.b $0c
[000bc7d6]                           dc.w $ffff
[000bc7d8]                           dc.w $ffff
[000bc7da]                           dc.b $00
[000bc7db]                           dc.b $18
[000bc7dc]                           dc.w $4007
[000bc7de]                           dc.b $00
[000bc7df]                           dc.b $10
[000bc7e0] 000bad78                  dc.l A_3DBUTTON03
[000bc7e4]                           dc.b $00
[000bc7e5]                           dc.b $07
[000bc7e6]                           dc.b $00
[000bc7e7]                           dc.b $06
[000bc7e8]                           dc.b $00
[000bc7e9]                           dc.b $0c
[000bc7ea]                           dc.b $00
[000bc7eb]                           dc.b $02
_10aTRY_DRAG:
[000bc7ec]                           dc.b $00
[000bc7ed]                           dc.b $00
[000bc7ee]                           dc.b $00
[000bc7ef]                           dc.b $00
[000bc7f0]                           dc.b $00
[000bc7f1]                           dc.b $00
[000bc7f2]                           dc.b $00
[000bc7f3]                           dc.b $00
[000bc7f4]                           dc.w $8000
[000bc7f6]                           dc.w $884f
[000bc7f8]                           dc.b $00
[000bc7f9]                           dc.b $00
[000bc7fa]                           dc.b $00
[000bc7fb]                           dc.b $00
[000bc7fc]                           dc.b $00
[000bc7fd]                           dc.b $00
[000bc7fe]                           dc.b $00
[000bc7ff]                           dc.b $00
[000bc800]                           dc.b $00
[000bc801]                           dc.b $00
[000bc802]                           dc.b $00
[000bc803]                           dc.b $00
_12_TRY_DRAG:
[000bc804]                           dc.b $00
[000bc805]                           dc.b $01
[000bc806]                           dc.w $ffff
[000bc808]                           dc.w $ffff
[000bc80a]                           dc.b $00
[000bc80b]                           dc.b $18
[000bc80c]                           dc.w $4005
[000bc80e]                           dc.b $00
[000bc80f]                           dc.b $10
[000bc810] 000badb8                  dc.l A_3DBUTTON05
[000bc814]                           dc.b $00
[000bc815]                           dc.b $15
[000bc816]                           dc.b $00
[000bc817]                           dc.b $06
[000bc818]                           dc.b $00
[000bc819]                           dc.b $0c
[000bc81a]                           dc.b $00
[000bc81b]                           dc.b $02
_12aTRY_DRAG:
[000bc81c]                           dc.b $00
[000bc81d]                           dc.b $00
[000bc81e]                           dc.b $00
[000bc81f]                           dc.b $00
[000bc820]                           dc.b $00
[000bc821]                           dc.b $00
[000bc822]                           dc.b $00
[000bc823]                           dc.b $00
[000bc824]                           dc.w $8020
[000bc826]                           dc.w $8841
[000bc828]                           dc.b $00
[000bc829]                           dc.b $00
[000bc82a]                           dc.b $00
[000bc82b]                           dc.b $00
[000bc82c]                           dc.b $00
[000bc82d]                           dc.b $00
[000bc82e]                           dc.b $00
[000bc82f]                           dc.b $00
[000bc830]                           dc.b $00
[000bc831]                           dc.b $00
[000bc832]                           dc.b $00
[000bc833]                           dc.b $00
WI_INFO:
[000bc834]                           dc.b $00
[000bc835]                           dc.b $00
[000bc836]                           dc.b $00
[000bc837]                           dc.b $00
[000bc838] 00051276                  dc.l Awi_service
[000bc83c] 0002a0aa                  dc.l make_a_window
[000bc840] 0004f69e                  dc.l Awi_open
[000bc844] 0004e610                  dc.l Awi_init
[000bc848] 000bc4bc                  dc.l INFO_EDIT
[000bc84c]                           dc.b $00
[000bc84d]                           dc.b $00
[000bc84e]                           dc.b $00
[000bc84f]                           dc.b $00
[000bc850]                           dc.b $00
[000bc851]                           dc.b $00
[000bc852]                           dc.b $00
[000bc853]                           dc.b $00
[000bc854]                           dc.w $ffff
[000bc856]                           dc.b $00
[000bc857]                           dc.b $0b
[000bc858]                           dc.b $00
[000bc859]                           dc.b $00
[000bc85a]                           dc.b $00
[000bc85b]                           dc.b $00
[000bc85c]                           dc.b $00
[000bc85d]                           dc.b $78
[000bc85e]                           dc.b $00
[000bc85f]                           dc.b $32
[000bc860]                           dc.b $00
[000bc861]                           dc.b $00
[000bc862]                           dc.b $00
[000bc863]                           dc.b $00
[000bc864]                           dc.b $00
[000bc865]                           dc.b $00
[000bc866]                           dc.b $00
[000bc867]                           dc.b $00
[000bc868]                           dc.b $00
[000bc869]                           dc.b $00
[000bc86a]                           dc.b $00
[000bc86b]                           dc.b $00
[000bc86c]                           dc.b $00
[000bc86d]                           dc.b $00
[000bc86e]                           dc.b $00
[000bc86f]                           dc.b $00
[000bc870]                           dc.w $ffff
[000bc872]                           dc.w $ffff
[000bc874]                           dc.w $ffff
[000bc876]                           dc.w $ffff
[000bc878]                           dc.b $00
[000bc879]                           dc.b $00
[000bc87a]                           dc.b $00
[000bc87b]                           dc.b $00
[000bc87c]                           dc.w $fcf8
[000bc87e] 000b8900                  dc.l TEXT_22
[000bc882] 000b86b3                  dc.l TEXT_002
[000bc886]                           dc.w $2710
[000bc888]                           dc.b $00
[000bc889]                           dc.b $00
[000bc88a]                           dc.b $00
[000bc88b]                           dc.b $00
[000bc88c]                           dc.w $ffff
[000bc88e]                           dc.b $00
[000bc88f]                           dc.b $00
[000bc890]                           dc.b $00
[000bc891]                           dc.b $00
[000bc892]                           dc.b $00
[000bc893]                           dc.b $00
[000bc894]                           dc.b $00
[000bc895]                           dc.b $00
[000bc896] 0005ef2c                  dc.l Awi_keys
[000bc89a] 0004b600                  dc.l Awi_obchange
[000bc89e] 0004b8cc                  dc.l Awi_redraw
[000bc8a2] 00050454                  dc.l Awi_topped
[000bc8a6] 0005013e                  dc.l Awi_closed
[000bc8aa] 00050496                  dc.l Awi_fulled
[000bc8ae] 0004bcc8                  dc.l Awi_arrowed
[000bc8b2] 0004beea                  dc.l Awi_hslid
[000bc8b6] 0004bf56                  dc.l Awi_vslid
[000bc8ba] 000506ca                  dc.l Awi_sized
[000bc8be] 000507bc                  dc.l Awi_moved
[000bc8c2] 00050f9c                  dc.l Awi_iconify
[000bc8c6] 0005117c                  dc.l Awi_uniconify
[000bc8ca] 00052328                  dc.l Awi_gemscript
[000bc8ce]                           dc.b $00
[000bc8cf]                           dc.b $00
[000bc8d0]                           dc.b $00
[000bc8d1]                           dc.b $00
[000bc8d2]                           dc.b $00
[000bc8d3]                           dc.b $00
[000bc8d4]                           dc.b $00
[000bc8d5]                           dc.b $00
WI_MENU:
[000bc8d6]                           dc.b $00
[000bc8d7]                           dc.b $00
[000bc8d8]                           dc.b $00
[000bc8d9]                           dc.b $00
[000bc8da] 0002453a                  dc.l me_service
[000bc8de] 00023fb8                  dc.l me_make
[000bc8e2] 0002a12a                  dc.l open_me
[000bc8e6] 00023d3c                  dc.l me_init
[000bc8ea]                           dc.b $00
[000bc8eb]                           dc.b $00
[000bc8ec]                           dc.b $00
[000bc8ed]                           dc.b $00
[000bc8ee]                           dc.b $00
[000bc8ef]                           dc.b $00
[000bc8f0]                           dc.b $00
[000bc8f1]                           dc.b $00
[000bc8f2]                           dc.b $00
[000bc8f3]                           dc.b $00
[000bc8f4]                           dc.b $00
[000bc8f5]                           dc.b $00
[000bc8f6]                           dc.w $ffff
[000bc8f8]                           dc.w $4fff
[000bc8fa]                           dc.b $00
[000bc8fb]                           dc.b $00
[000bc8fc]                           dc.b $00
[000bc8fd]                           dc.b $00
[000bc8fe]                           dc.b $00
[000bc8ff]                           dc.b $23
[000bc900]                           dc.b $00
[000bc901]                           dc.b $0e
[000bc902]                           dc.b $00
[000bc903]                           dc.b $00
[000bc904]                           dc.b $00
[000bc905]                           dc.b $00
[000bc906]                           dc.b $00
[000bc907]                           dc.b $00
[000bc908]                           dc.b $00
[000bc909]                           dc.b $00
[000bc90a]                           dc.b $00
[000bc90b]                           dc.b $00
[000bc90c]                           dc.b $00
[000bc90d]                           dc.b $00
[000bc90e]                           dc.b $00
[000bc90f]                           dc.b $00
[000bc910]                           dc.b $00
[000bc911]                           dc.b $00
[000bc912]                           dc.w $ffff
[000bc914]                           dc.w $ffff
[000bc916]                           dc.w $ffff
[000bc918]                           dc.w $ffff
[000bc91a]                           dc.b $00
[000bc91b]                           dc.b $00
[000bc91c]                           dc.b $00
[000bc91d]                           dc.b $00
[000bc91e]                           dc.w $f8f8
[000bc920] 000b86df                  dc.l TEXT_010
[000bc924] 000b86b3                  dc.l TEXT_002
[000bc928]                           dc.w $2710
[000bc92a]                           dc.w $0100
[000bc92c]                           dc.b $00
[000bc92d]                           dc.b $00
[000bc92e]                           dc.w $ffff
[000bc930] 000bb2aa                  dc.l IC_MENU
[000bc934] 000bb7b4                  dc.l MEN_EDIT
[000bc938] 0002a1b8                  dc.l key_me
[000bc93c] 0004b600                  dc.l Awi_obchange
[000bc940] 0004b8cc                  dc.l Awi_redraw
[000bc944] 0002a176                  dc.l top_me
[000bc948] 0002a0f6                  dc.l close_me
[000bc94c] 00050496                  dc.l Awi_fulled
[000bc950] 0004bcc8                  dc.l Awi_arrowed
[000bc954] 0004beea                  dc.l Awi_hslid
[000bc958] 0004bf56                  dc.l Awi_vslid
[000bc95c] 000506ca                  dc.l Awi_sized
[000bc960] 0002a1a2                  dc.l move_me
[000bc964] 00050f9c                  dc.l Awi_iconify
[000bc968] 0005117c                  dc.l Awi_uniconify
[000bc96c] 00052328                  dc.l Awi_gemscript
[000bc970] 000b8676                  dc.l STGUIDE_02
[000bc974]                           dc.b $00
[000bc975]                           dc.b $00
[000bc976]                           dc.b $00
[000bc977]                           dc.b $00
WI_OBJECT:
[000bc978]                           dc.b $00
[000bc979]                           dc.b $00
[000bc97a]                           dc.b $00
[000bc97b]                           dc.b $00
[000bc97c] 0002ae50                  dc.l ed_service
[000bc980] 0002385c                  dc.l ob_make
[000bc984] 0002a12a                  dc.l open_me
[000bc988] 0002aada                  dc.l ed_init
[000bc98c]                           dc.b $00
[000bc98d]                           dc.b $00
[000bc98e]                           dc.b $00
[000bc98f]                           dc.b $00
[000bc990]                           dc.b $00
[000bc991]                           dc.b $00
[000bc992]                           dc.b $00
[000bc993]                           dc.b $00
[000bc994]                           dc.b $00
[000bc995]                           dc.b $00
[000bc996]                           dc.b $00
[000bc997]                           dc.b $00
[000bc998]                           dc.w $ffff
[000bc99a]                           dc.w $4fff
[000bc99c]                           dc.b $00
[000bc99d]                           dc.b $00
[000bc99e]                           dc.b $00
[000bc99f]                           dc.b $00
[000bc9a0]                           dc.b $00
[000bc9a1]                           dc.b $63
[000bc9a2]                           dc.b $00
[000bc9a3]                           dc.b $63
[000bc9a4]                           dc.b $00
[000bc9a5]                           dc.b $00
[000bc9a6]                           dc.b $00
[000bc9a7]                           dc.b $00
[000bc9a8]                           dc.b $00
[000bc9a9]                           dc.b $00
[000bc9aa]                           dc.b $00
[000bc9ab]                           dc.b $00
[000bc9ac]                           dc.b $00
[000bc9ad]                           dc.b $00
[000bc9ae]                           dc.b $00
[000bc9af]                           dc.b $00
[000bc9b0]                           dc.b $00
[000bc9b1]                           dc.b $00
[000bc9b2]                           dc.b $00
[000bc9b3]                           dc.b $00
[000bc9b4]                           dc.w $ffff
[000bc9b6]                           dc.w $ffff
[000bc9b8]                           dc.w $ffff
[000bc9ba]                           dc.w $ffff
[000bc9bc]                           dc.b $00
[000bc9bd]                           dc.b $00
[000bc9be]                           dc.b $00
[000bc9bf]                           dc.b $00
[000bc9c0]                           dc.w $f8f8
[000bc9c2] 000b86ed                  dc.l TEXT_011
[000bc9c6] 000b86b3                  dc.l TEXT_002
[000bc9ca]                           dc.w $2710
[000bc9cc]                           dc.w $0100
[000bc9ce]                           dc.b $00
[000bc9cf]                           dc.b $00
[000bc9d0]                           dc.w $ffff
[000bc9d2] 000bb45a                  dc.l IC_OBJECT
[000bc9d6] 000bb7b4                  dc.l MEN_EDIT
[000bc9da] 0002a1b8                  dc.l key_me
[000bc9de] 0004b600                  dc.l Awi_obchange
[000bc9e2] 0004b8cc                  dc.l Awi_redraw
[000bc9e6] 0002a176                  dc.l top_me
[000bc9ea] 0002a0f6                  dc.l close_me
[000bc9ee] 00050496                  dc.l Awi_fulled
[000bc9f2] 0004bcc8                  dc.l Awi_arrowed
[000bc9f6] 0004beea                  dc.l Awi_hslid
[000bc9fa] 0004bf56                  dc.l Awi_vslid
[000bc9fe] 000506ca                  dc.l Awi_sized
[000bca02] 0002a1a2                  dc.l move_me
[000bca06] 00050f9c                  dc.l Awi_iconify
[000bca0a] 0005117c                  dc.l Awi_uniconify
[000bca0e] 00052328                  dc.l Awi_gemscript
[000bca12] 000b8660                  dc.l STGUIDE_01
[000bca16]                           dc.b $00
[000bca17]                           dc.b $00
[000bca18]                           dc.b $00
[000bca19]                           dc.b $00
WI_POPUP:
[000bca1a]                           dc.b $00
[000bca1b]                           dc.b $00
[000bca1c]                           dc.b $00
[000bca1d]                           dc.b $00
[000bca1e] 0002ae50                  dc.l ed_service
[000bca22] 00024bce                  dc.l pu_make
[000bca26] 0002a12a                  dc.l open_me
[000bca2a] 00024b4e                  dc.l pu_init
[000bca2e]                           dc.b $00
[000bca2f]                           dc.b $00
[000bca30]                           dc.b $00
[000bca31]                           dc.b $00
[000bca32]                           dc.b $00
[000bca33]                           dc.b $00
[000bca34]                           dc.b $00
[000bca35]                           dc.b $00
[000bca36]                           dc.b $00
[000bca37]                           dc.b $00
[000bca38]                           dc.b $00
[000bca39]                           dc.b $00
[000bca3a]                           dc.w $ffff
[000bca3c]                           dc.w $4fff
[000bca3e]                           dc.b $00
[000bca3f]                           dc.b $00
[000bca40]                           dc.b $00
[000bca41]                           dc.b $00
[000bca42]                           dc.b $00
[000bca43]                           dc.b $20
[000bca44]                           dc.b $00
[000bca45]                           dc.b $10
[000bca46]                           dc.b $00
[000bca47]                           dc.b $00
[000bca48]                           dc.b $00
[000bca49]                           dc.b $00
[000bca4a]                           dc.b $00
[000bca4b]                           dc.b $00
[000bca4c]                           dc.b $00
[000bca4d]                           dc.b $00
[000bca4e]                           dc.b $00
[000bca4f]                           dc.b $00
[000bca50]                           dc.b $00
[000bca51]                           dc.b $00
[000bca52]                           dc.b $00
[000bca53]                           dc.b $00
[000bca54]                           dc.b $00
[000bca55]                           dc.b $00
[000bca56]                           dc.w $ffff
[000bca58]                           dc.w $ffff
[000bca5a]                           dc.w $ffff
[000bca5c]                           dc.w $ffff
[000bca5e]                           dc.b $00
[000bca5f]                           dc.b $00
[000bca60]                           dc.b $00
[000bca61]                           dc.b $00
[000bca62]                           dc.w $f8f8
[000bca64] 000b8701                  dc.l TEXT_012
[000bca68] 000b86b3                  dc.l TEXT_002
[000bca6c]                           dc.w $2710
[000bca6e]                           dc.w $0100
[000bca70]                           dc.b $00
[000bca71]                           dc.b $00
[000bca72]                           dc.w $ffff
[000bca74] 000bb5f2                  dc.l IC_POPUP
[000bca78] 000bb7b4                  dc.l MEN_EDIT
[000bca7c] 0002a1b8                  dc.l key_me
[000bca80] 0004b600                  dc.l Awi_obchange
[000bca84] 0004b8cc                  dc.l Awi_redraw
[000bca88] 0002a176                  dc.l top_me
[000bca8c] 0002a0f6                  dc.l close_me
[000bca90] 00050496                  dc.l Awi_fulled
[000bca94] 0004bcc8                  dc.l Awi_arrowed
[000bca98] 0004beea                  dc.l Awi_hslid
[000bca9c] 0004bf56                  dc.l Awi_vslid
[000bcaa0] 000506ca                  dc.l Awi_sized
[000bcaa4] 0002a1a2                  dc.l move_me
[000bcaa8] 00050f9c                  dc.l Awi_iconify
[000bcaac] 0005117c                  dc.l Awi_uniconify
[000bcab0] 00052328                  dc.l Awi_gemscript
[000bcab4] 000b8686                  dc.l STGUIDE_03
[000bcab8]                           dc.b $00
[000bcab9]                           dc.b $00
[000bcaba]                           dc.b $00
[000bcabb]                           dc.b $00
WI_POSITION:
[000bcabc]                           dc.b $00
[000bcabd]                           dc.b $00
[000bcabe]                           dc.b $00
[000bcabf]                           dc.b $00
[000bcac0] 00051276                  dc.l Awi_service
[000bcac4] 0004f0ee                  dc.l Awi_selfcreate
[000bcac8] 0004f69e                  dc.l Awi_open
[000bcacc] 0004e610                  dc.l Awi_init
[000bcad0] 000bc294                  dc.l FINE_POS
[000bcad4]                           dc.b $00
[000bcad5]                           dc.b $00
[000bcad6]                           dc.b $00
[000bcad7]                           dc.b $00
[000bcad8]                           dc.b $00
[000bcad9]                           dc.b $00
[000bcada]                           dc.b $00
[000bcadb]                           dc.b $00
[000bcadc]                           dc.w $ffff
[000bcade]                           dc.b $00
[000bcadf]                           dc.b $0b
[000bcae0]                           dc.b $00
[000bcae1]                           dc.b $00
[000bcae2]                           dc.b $00
[000bcae3]                           dc.b $00
[000bcae4]                           dc.b $00
[000bcae5]                           dc.b $78
[000bcae6]                           dc.b $00
[000bcae7]                           dc.b $32
[000bcae8]                           dc.b $00
[000bcae9]                           dc.b $00
[000bcaea]                           dc.b $00
[000bcaeb]                           dc.b $00
[000bcaec]                           dc.b $00
[000bcaed]                           dc.b $00
[000bcaee]                           dc.b $00
[000bcaef]                           dc.b $00
[000bcaf0]                           dc.b $00
[000bcaf1]                           dc.b $00
[000bcaf2]                           dc.b $00
[000bcaf3]                           dc.b $00
[000bcaf4]                           dc.b $00
[000bcaf5]                           dc.b $00
[000bcaf6]                           dc.b $00
[000bcaf7]                           dc.b $00
[000bcaf8]                           dc.w $ffff
[000bcafa]                           dc.w $ffff
[000bcafc]                           dc.w $ffff
[000bcafe]                           dc.w $ffff
[000bcb00]                           dc.b $00
[000bcb01]                           dc.b $00
[000bcb02]                           dc.b $00
[000bcb03]                           dc.b $00
[000bcb04]                           dc.w $fcf8
[000bcb06] 000b890e                  dc.l TEXT_23
[000bcb0a] 000b86b3                  dc.l TEXT_002
[000bcb0e]                           dc.w $2710
[000bcb10]                           dc.b $00
[000bcb11]                           dc.b $00
[000bcb12]                           dc.b $00
[000bcb13]                           dc.b $00
[000bcb14]                           dc.w $ffff
[000bcb16]                           dc.b $00
[000bcb17]                           dc.b $00
[000bcb18]                           dc.b $00
[000bcb19]                           dc.b $00
[000bcb1a]                           dc.b $00
[000bcb1b]                           dc.b $00
[000bcb1c]                           dc.b $00
[000bcb1d]                           dc.b $00
[000bcb1e] 0005ef2c                  dc.l Awi_keys
[000bcb22] 0004b600                  dc.l Awi_obchange
[000bcb26] 0004b8cc                  dc.l Awi_redraw
[000bcb2a] 00050454                  dc.l Awi_topped
[000bcb2e] 0005013e                  dc.l Awi_closed
[000bcb32] 00050496                  dc.l Awi_fulled
[000bcb36] 0004bcc8                  dc.l Awi_arrowed
[000bcb3a] 0004beea                  dc.l Awi_hslid
[000bcb3e] 0004bf56                  dc.l Awi_vslid
[000bcb42] 000506ca                  dc.l Awi_sized
[000bcb46] 000507bc                  dc.l Awi_moved
[000bcb4a] 00050f9c                  dc.l Awi_iconify
[000bcb4e] 0005117c                  dc.l Awi_uniconify
[000bcb52] 00052328                  dc.l Awi_gemscript
[000bcb56] 000b8697                  dc.l STGUIDE_04
[000bcb5a]                           dc.b $00
[000bcb5b]                           dc.b $00
[000bcb5c]                           dc.b $00
[000bcb5d]                           dc.b $00
WI_TRYCLICK:
[000bcb5e]                           dc.b $00
[000bcb5f]                           dc.b $00
[000bcb60]                           dc.b $00
[000bcb61]                           dc.b $00
[000bcb62] 00051276                  dc.l Awi_service
[000bcb66] 0002a0aa                  dc.l make_a_window
[000bcb6a] 0004f69e                  dc.l Awi_open
[000bcb6e] 0004e610                  dc.l Awi_init
[000bcb72] 000bc594                  dc.l TRY_CLICK
[000bcb76]                           dc.b $00
[000bcb77]                           dc.b $00
[000bcb78]                           dc.b $00
[000bcb79]                           dc.b $00
[000bcb7a]                           dc.b $00
[000bcb7b]                           dc.b $00
[000bcb7c]                           dc.b $00
[000bcb7d]                           dc.b $00
[000bcb7e]                           dc.w $ffff
[000bcb80]                           dc.b $00
[000bcb81]                           dc.b $0b
[000bcb82]                           dc.b $00
[000bcb83]                           dc.b $00
[000bcb84]                           dc.b $00
[000bcb85]                           dc.b $00
[000bcb86]                           dc.b $00
[000bcb87]                           dc.b $78
[000bcb88]                           dc.b $00
[000bcb89]                           dc.b $32
[000bcb8a]                           dc.b $00
[000bcb8b]                           dc.b $00
[000bcb8c]                           dc.b $00
[000bcb8d]                           dc.b $00
[000bcb8e]                           dc.b $00
[000bcb8f]                           dc.b $00
[000bcb90]                           dc.b $00
[000bcb91]                           dc.b $00
[000bcb92]                           dc.b $00
[000bcb93]                           dc.b $00
[000bcb94]                           dc.b $00
[000bcb95]                           dc.b $00
[000bcb96]                           dc.b $00
[000bcb97]                           dc.b $00
[000bcb98]                           dc.b $00
[000bcb99]                           dc.b $00
[000bcb9a]                           dc.w $ffff
[000bcb9c]                           dc.w $ffff
[000bcb9e]                           dc.w $ffff
[000bcba0]                           dc.w $ffff
[000bcba2]                           dc.b $00
[000bcba3]                           dc.b $00
[000bcba4]                           dc.b $00
[000bcba5]                           dc.b $00
[000bcba6]                           dc.w $fcf8
[000bcba8] 000b887a                  dc.l TEXT_16
[000bcbac] 000b86b3                  dc.l TEXT_002
[000bcbb0]                           dc.w $2710
[000bcbb2]                           dc.b $00
[000bcbb3]                           dc.b $00
[000bcbb4]                           dc.b $00
[000bcbb5]                           dc.b $00
[000bcbb6]                           dc.w $ffff
[000bcbb8]                           dc.b $00
[000bcbb9]                           dc.b $00
[000bcbba]                           dc.b $00
[000bcbbb]                           dc.b $00
[000bcbbc]                           dc.b $00
[000bcbbd]                           dc.b $00
[000bcbbe]                           dc.b $00
[000bcbbf]                           dc.b $00
[000bcbc0] 0005ef2c                  dc.l Awi_keys
[000bcbc4] 0004b600                  dc.l Awi_obchange
[000bcbc8] 0004b8cc                  dc.l Awi_redraw
[000bcbcc] 00050454                  dc.l Awi_topped
[000bcbd0] 0005013e                  dc.l Awi_closed
[000bcbd4] 00050496                  dc.l Awi_fulled
[000bcbd8] 0004bcc8                  dc.l Awi_arrowed
[000bcbdc] 0004beea                  dc.l Awi_hslid
[000bcbe0] 0004bf56                  dc.l Awi_vslid
[000bcbe4] 000506ca                  dc.l Awi_sized
[000bcbe8] 000507bc                  dc.l Awi_moved
[000bcbec] 00050f9c                  dc.l Awi_iconify
[000bcbf0] 0005117c                  dc.l Awi_uniconify
[000bcbf4] 00052328                  dc.l Awi_gemscript
[000bcbf8]                           dc.b $00
[000bcbf9]                           dc.b $00
[000bcbfa]                           dc.b $00
[000bcbfb]                           dc.b $00
[000bcbfc]                           dc.b $00
[000bcbfd]                           dc.b $00
[000bcbfe]                           dc.b $00
[000bcbff]                           dc.b $00
WI_TRYDRAG:
[000bcc00]                           dc.b $00
[000bcc01]                           dc.b $00
[000bcc02]                           dc.b $00
[000bcc03]                           dc.b $00
[000bcc04] 00051276                  dc.l Awi_service
[000bcc08] 0002a0aa                  dc.l make_a_window
[000bcc0c] 0004f69e                  dc.l Awi_open
[000bcc10] 0004e610                  dc.l Awi_init
[000bcc14] 000bc6e4                  dc.l TRY_DRAG
[000bcc18]                           dc.b $00
[000bcc19]                           dc.b $00
[000bcc1a]                           dc.b $00
[000bcc1b]                           dc.b $00
[000bcc1c]                           dc.b $00
[000bcc1d]                           dc.b $00
[000bcc1e]                           dc.b $00
[000bcc1f]                           dc.b $00
[000bcc20]                           dc.w $ffff
[000bcc22]                           dc.b $00
[000bcc23]                           dc.b $0b
[000bcc24]                           dc.b $00
[000bcc25]                           dc.b $00
[000bcc26]                           dc.b $00
[000bcc27]                           dc.b $00
[000bcc28]                           dc.b $00
[000bcc29]                           dc.b $78
[000bcc2a]                           dc.b $00
[000bcc2b]                           dc.b $32
[000bcc2c]                           dc.b $00
[000bcc2d]                           dc.b $00
[000bcc2e]                           dc.b $00
[000bcc2f]                           dc.b $00
[000bcc30]                           dc.b $00
[000bcc31]                           dc.b $00
[000bcc32]                           dc.b $00
[000bcc33]                           dc.b $00
[000bcc34]                           dc.b $00
[000bcc35]                           dc.b $00
[000bcc36]                           dc.b $00
[000bcc37]                           dc.b $00
[000bcc38]                           dc.b $00
[000bcc39]                           dc.b $00
[000bcc3a]                           dc.b $00
[000bcc3b]                           dc.b $00
[000bcc3c]                           dc.w $ffff
[000bcc3e]                           dc.w $ffff
[000bcc40]                           dc.w $ffff
[000bcc42]                           dc.w $ffff
[000bcc44]                           dc.b $00
[000bcc45]                           dc.b $00
[000bcc46]                           dc.b $00
[000bcc47]                           dc.b $00
[000bcc48]                           dc.w $fcf8
[000bcc4a] 000b8932                  dc.l TEXT_25
[000bcc4e] 000b86b3                  dc.l TEXT_002
[000bcc52]                           dc.w $2710
[000bcc54]                           dc.b $00
[000bcc55]                           dc.b $00
[000bcc56]                           dc.b $00
[000bcc57]                           dc.b $00
[000bcc58]                           dc.w $ffff
[000bcc5a]                           dc.b $00
[000bcc5b]                           dc.b $00
[000bcc5c]                           dc.b $00
[000bcc5d]                           dc.b $00
[000bcc5e]                           dc.b $00
[000bcc5f]                           dc.b $00
[000bcc60]                           dc.b $00
[000bcc61]                           dc.b $00
[000bcc62] 0005ef2c                  dc.l Awi_keys
[000bcc66] 0004b600                  dc.l Awi_obchange
[000bcc6a] 0004b8cc                  dc.l Awi_redraw
[000bcc6e] 00050454                  dc.l Awi_topped
[000bcc72] 0005013e                  dc.l Awi_closed
[000bcc76] 00050496                  dc.l Awi_fulled
[000bcc7a] 0004bcc8                  dc.l Awi_arrowed
[000bcc7e] 0004beea                  dc.l Awi_hslid
[000bcc82] 0004bf56                  dc.l Awi_vslid
[000bcc86] 000506ca                  dc.l Awi_sized
[000bcc8a] 000507bc                  dc.l Awi_moved
[000bcc8e] 00050f9c                  dc.l Awi_iconify
[000bcc92] 0005117c                  dc.l Awi_uniconify
[000bcc96] 00052328                  dc.l Awi_gemscript
[000bcc9a]                           dc.b $00
[000bcc9b]                           dc.b $00
[000bcc9c]                           dc.b $00
[000bcc9d]                           dc.b $00
[000bcc9e]                           dc.b $00
[000bcc9f]                           dc.b $00
[000bcca0]                           dc.b $00
[000bcca1]                           dc.b $00
visible_editors:
[000bcca2]                           dc.b $00
[000bcca3]                           dc.b $00
control:
[000bcca4] 0002b35c                  dc.l user_control
[000bcca8]                           dc.b $00
[000bcca9]                           dc.b $00
[000bccaa]                           dc.b $00
[000bccab]                           dc.b $00
[000bccac]                           dc.b $00
[000bccad]                           dc.b $00
[000bccae]                           dc.b $00
[000bccaf]                           dc.b $00
[000bccb0]                           dc.b $00
[000bccb1]                           dc.b $00
[000bccb2]                           dc.b $00
[000bccb3]                           dc.b $00
[000bccb4]                           dc.b $00
[000bccb5]                           dc.b $00
[000bccb6]                           dc.b $00
[000bccb7]                           dc.b $00
[000bccb8]                           dc.b $00
[000bccb9]                           dc.b $00
[000bccba]                           dc.b $00
[000bccbb]                           dc.b $00
[000bccbc]                           dc.b $00
[000bccbd]                           dc.b $00
[000bccbe]                           dc.b $00
[000bccbf]                           dc.b $00
[000bccc0]                           dc.b $00
[000bccc1]                           dc.b $00
[000bccc2]                           dc.b $00
[000bccc3]                           dc.b $00
entry:
[000bccc4]                           dc.w $ffff
[000bccc6]                           dc.w $ffff
[000bccc8]                           dc.w $ffff
[000bccca]                           dc.b $00
[000bcccb]                           dc.b $00
[000bcccc]                           dc.b $00
[000bcccd]                           dc.b $00
[000bccce]                           dc.b $00
[000bcccf]                           dc.b $00
[000bccd0]                           dc.b $00
[000bccd1]                           dc.b $00
[000bccd2]                           dc.b $00
[000bccd3]                           dc.b $00
[000bccd4]                           dc.b $00
[000bccd5]                           dc.b $00
[000bccd6]                           dc.b $00
[000bccd7]                           dc.b $00
[000bccd8]                           dc.b $00
[000bccd9]                           dc.b $00
[000bccda]                           dc.b $00
[000bccdb]                           dc.b $00
ent01:
[000bccdc]                           dc.w $ffff
[000bccde]                           dc.w $ffff
[000bcce0]                           dc.w $ffff
[000bcce2]                           dc.b $00
[000bcce3]                           dc.b $18
[000bcce4]                           dc.b $00
[000bcce5]                           dc.b '@ 0',0
[000bcce9]                           dc.b $0b
[000bccea]                           dc.w $cca4
[000bccec]                           dc.b $00
[000bcced]                           dc.b $00
[000bccee]                           dc.b $00
[000bccef]                           dc.b $00
[000bccf0]                           dc.b $00
[000bccf1]                           dc.b $00
[000bccf2]                           dc.b $00
[000bccf3]                           dc.b $00
ent02:
[000bccf4] 0002c55a                  dc.l ed_edit
[000bccf8] 0002c1cc                  dc.l ed_dragged
[000bccfc]                           dc.w $8000
[000bccfe]                           dc.b $00
[000bccff]                           dc.b $00
[000bcd00]                           dc.b $00
[000bcd01]                           dc.b $00
[000bcd02]                           dc.b $00
[000bcd03]                           dc.b $00
[000bcd04]                           dc.b $00
[000bcd05]                           dc.b $00
[000bcd06]                           dc.b $00
[000bcd07]                           dc.b $00
[000bcd08]                           dc.b $00
[000bcd09]                           dc.b $00
[000bcd0a]                           dc.w $2af8
dither:
[000bcd0c] 0005a4e2                  dc.l A_3Dbutton
[000bcd10]                           dc.b $00
[000bcd11]                           dc.b $00
[000bcd12]                           dc.b $00
[000bcd13]                           dc.b $78
[000bcd14]                           dc.b $00
[000bcd15]                           dc.b $00
[000bcd16]                           dc.b $00
[000bcd17]                           dc.b $00
[000bcd18]                           dc.b $00
[000bcd19]                           dc.b $00
[000bcd1a]                           dc.b $00
[000bcd1b]                           dc.b $00
[000bcd1c]                           dc.b $00
[000bcd1d]                           dc.b $00
[000bcd1e]                           dc.b $00
[000bcd1f]                           dc.b $00
[000bcd20]                           dc.b $00
[000bcd21]                           dc.b $00
[000bcd22]                           dc.b $00
[000bcd23]                           dc.b $00
[000bcd24]                           dc.b $00
[000bcd25]                           dc.b $00
[000bcd26]                           dc.b $00
[000bcd27]                           dc.b $00
[000bcd28]                           dc.b $00
[000bcd29]                           dc.b $00
[000bcd2a]                           dc.b $00
[000bcd2b]                           dc.b $00
deskob:
[000bcd2c]                           dc.w $ffff
[000bcd2e]                           dc.b $00
[000bcd2f]                           dc.b $01
[000bcd30]                           dc.b $00
[000bcd31]                           dc.b $02
[000bcd32]                           dc.b $00
[000bcd33]                           dc.b $18
[000bcd34]                           dc.b $00
[000bcd35]                           dc.b $40
[000bcd36]                           dc.w $2000
[000bcd38] 000bcd0c                  dc.l dither
[000bcd3c]                           dc.b $00
[000bcd3d]                           dc.b $00
[000bcd3e]                           dc.b $00
[000bcd3f]                           dc.b $00
[000bcd40]                           dc.b $00
[000bcd41]                           dc.b $04
[000bcd42]                           dc.b $00
[000bcd43]                           dc.b $02
[000bcd44]                           dc.b '%4ld',0
[000bcd49]                           dc.b '- NULL -',0
[000bcd52]                           dc.b '0x%lx',0

	.bss

pxy: ds.w 4 
