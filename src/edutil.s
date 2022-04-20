set_flag:
[00013f6e] 4a40                      tst.w      d0
[00013f70] 6708                      beq.s      set_flag_1
[00013f72] 0068 0001 000a            ori.w      #$0001,10(a0)
[00013f78] 4e75                      rts
set_flag_1:
[00013f7a] 0268 fffe 000a            andi.w     #$FFFE,10(a0)
[00013f80] 4e75                      rts

mod_ref:
[00013f82] 48e7 003c                 movem.l    a2-a5,-(a7)
[00013f86] 2a48                      movea.l    a0,a5
[00013f88] 2449                      movea.l    a1,a2
[00013f8a] 286f 0014                 movea.l    20(a7),a4
[00013f8e] 2651                      movea.l    (a1),a3
[00013f90] 1214                      move.b     (a4),d1
[00013f92] 670c                      beq.s      mod_ref_1
[00013f94] 224c                      movea.l    a4,a1
[00013f96] 4eb9 0003 44c0            jsr        dup_ref
[00013f9c] 2488                      move.l     a0,(a2)
[00013f9e] 6002                      bra.s      mod_ref_2
mod_ref_1:
[00013fa0] 4292                      clr.l      (a2)
mod_ref_2:
[00013fa2] 200b                      move.l     a3,d0
[00013fa4] 670a                      beq.s      mod_ref_3
[00013fa6] 224b                      movea.l    a3,a1
[00013fa8] 204d                      movea.l    a5,a0
[00013faa] 4eb9 0003 448e            jsr        del_ref
mod_ref_3:
[00013fb0] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00013fb4] 4e75                      rts

set_ref:
[00013fb6] 2f0a                      move.l     a2,-(a7)
[00013fb8] 2f0b                      move.l     a3,-(a7)
[00013fba] 2448                      movea.l    a0,a2
[00013fbc] 2649                      movea.l    a1,a3
[00013fbe] 200a                      move.l     a2,d0
[00013fc0] 6604                      bne.s      set_ref_1
[00013fc2] 4211                      clr.b      (a1)
[00013fc4] 600c                      bra.s      set_ref_2
set_ref_1:
[00013fc6] 43ea 0016                 lea.l      22(a2),a1
[00013fca] 204b                      movea.l    a3,a0
[00013fcc] 4eb9 0007 6950            jsr        strcpy
set_ref_2:
[00013fd2] 265f                      movea.l    (a7)+,a3
[00013fd4] 245f                      movea.l    (a7)+,a2
[00013fd6] 4e75                      rts

set_val:
[00013fd8] 2f0a                      move.l     a2,-(a7)
[00013fda] 2f0b                      move.l     a3,-(a7)
[00013fdc] 2448                      movea.l    a0,a2
[00013fde] 2649                      movea.l    a1,a3
[00013fe0] 200a                      move.l     a2,d0
[00013fe2] 6604                      bne.s      set_val_1
[00013fe4] 4211                      clr.b      (a1)
[00013fe6] 600c                      bra.s      set_val_2
set_val_1:
[00013fe8] 226a 0004                 movea.l    4(a2),a1
[00013fec] 204b                      movea.l    a3,a0
[00013fee] 4eb9 0007 6950            jsr        strcpy
set_val_2:
[00013ff4] 265f                      movea.l    (a7)+,a3
[00013ff6] 245f                      movea.l    (a7)+,a2
[00013ff8] 4e75                      rts

A_rubberbox:
[00013ffa] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00013ffe] 4fef ffb8                 lea.l      -72(a7),a7
[00014002] 3600                      move.w     d0,d3
[00014004] 3801                      move.w     d1,d4
[00014006] 3f42 0046                 move.w     d2,70(a7)
[0001400a] 2f48 0042                 move.l     a0,66(a7)
[0001400e] 2f49 003e                 move.l     a1,62(a7)
[00014012] 49ef 0010                 lea.l      16(a7),a4
[00014016] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0001401c] 41f9 0009 b8be            lea.l      INFO_OB_WH,a0
[00014022] 4eb9 0004 9a5c            jsr        Aob_create
[00014028] 2448                      movea.l    a0,a2
[0001402a] 200a                      move.l     a2,d0
[0001402c] 6700 00a6                 beq        A_rubberbox_1
[00014030] 4eb9 0004 a25e            jsr        Aob_fix
[00014036] 3003                      move.w     d3,d0
[00014038] 906a 0014                 sub.w      20(a2),d0
[0001403c] 3540 0010                 move.w     d0,16(a2)
[00014040] 3204                      move.w     d4,d1
[00014042] 926a 0016                 sub.w      22(a2),d1
[00014046] 3541 0012                 move.w     d1,18(a2)
[0001404a] 302a 0010                 move.w     16(a2),d0
[0001404e] 6b04                      bmi.s      A_rubberbox_2
[00014050] 4a41                      tst.w      d1
[00014052] 6a0c                      bpl.s      A_rubberbox_3
A_rubberbox_2:
[00014054] 204a                      movea.l    a2,a0
[00014056] 4eb9 0004 9b7c            jsr        Aob_delete
[0001405c] 95ca                      suba.l     a2,a2
[0001405e] 6074                      bra.s      A_rubberbox_1
A_rubberbox_3:
[00014060] 322a 0016                 move.w     22(a2),d1
[00014064] 302a 0014                 move.w     20(a2),d0
[00014068] 4eb9 0004 d928            jsr        Abp_create
[0001406e] 2f48 000c                 move.l     a0,12(a7)
[00014072] 6760                      beq.s      A_rubberbox_1
[00014074] 302a 0010                 move.w     16(a2),d0
[00014078] 3880                      move.w     d0,(a4)
[0001407a] 72ff                      moveq.l    #-1,d1
[0001407c] d26a 0014                 add.w      20(a2),d1
[00014080] 3941 000c                 move.w     d1,12(a4)
[00014084] d041                      add.w      d1,d0
[00014086] 3940 0004                 move.w     d0,4(a4)
[0001408a] 322a 0012                 move.w     18(a2),d1
[0001408e] 3941 0002                 move.w     d1,2(a4)
[00014092] 70ff                      moveq.l    #-1,d0
[00014094] d06a 0016                 add.w      22(a2),d0
[00014098] 3940 000e                 move.w     d0,14(a4)
[0001409c] d240                      add.w      d0,d1
[0001409e] 3941 0006                 move.w     d1,6(a4)
[000140a2] 4240                      clr.w      d0
[000140a4] 3940 000a                 move.w     d0,10(a4)
[000140a8] 3940 0008                 move.w     d0,8(a4)
[000140ac] 4eb9 0004 9970            jsr        Amo_hide
[000140b2] 2f2f 000c                 move.l     12(a7),-(a7)
[000140b6] 2255                      movea.l    (a5),a1
[000140b8] 43e9 026a                 lea.l      618(a1),a1
[000140bc] 204c                      movea.l    a4,a0
[000140be] 7203                      moveq.l    #3,d1
[000140c0] 2655                      movea.l    (a5),a3
[000140c2] 302b 0010                 move.w     16(a3),d0
[000140c6] 4eb9 0006 65ce            jsr        vro_cpyfm
[000140cc] 584f                      addq.w     #4,a7
[000140ce] 4eb9 0004 9994            jsr        Amo_show
A_rubberbox_1:
[000140d4] 3a39 0007 824c            move.w     imagesnap,d5
[000140da] e245                      asr.w      #1,d5
[000140dc] 4a45                      tst.w      d5
[000140de] 6602                      bne.s      A_rubberbox_4
[000140e0] 7a01                      moveq.l    #1,d5
A_rubberbox_4:
[000140e2] 70ff                      moveq.l    #-1,d0
[000140e4] d079 0007 824c            add.w      imagesnap,d0
[000140ea] 4640                      not.w      d0
[000140ec] 3f40 0030                 move.w     d0,48(a7)
[000140f0] 2055                      movea.l    (a5),a0
[000140f2] 2068 023c                 movea.l    572(a0),a0
[000140f6] 41e8 0044                 lea.l      68(a0),a0
[000140fa] 4eb9 0004 9898            jsr        Amo_new
[00014100] 4240                      clr.w      d0
[00014102] 3f40 0022                 move.w     d0,34(a7)
[00014106] 3f40 0020                 move.w     d0,32(a7)
[0001410a] 2055                      movea.l    (a5),a0
[0001410c] 3228 0008                 move.w     8(a0),d1
[00014110] d268 000c                 add.w      12(a0),d1
[00014114] 3f41 0024                 move.w     d1,36(a7)
[00014118] 3028 000a                 move.w     10(a0),d0
[0001411c] d068 000e                 add.w      14(a0),d0
[00014120] 3f40 0026                 move.w     d0,38(a7)
[00014124] 41ef 0020                 lea.l      32(a7),a0
[00014128] 2255                      movea.l    (a5),a1
[0001412a] 3029 0010                 move.w     16(a1),d0
[0001412e] 7201                      moveq.l    #1,d1
[00014130] 4eb9 0006 3f60            jsr        vs_clip
[00014136] 3003                      move.w     d3,d0
[00014138] d06f 0076                 add.w      118(a7),d0
[0001413c] 5340                      subq.w     #1,d0
[0001413e] 3f40 0038                 move.w     d0,56(a7)
[00014142] 3204                      move.w     d4,d1
[00014144] d26f 0078                 add.w      120(a7),d1
[00014148] 5341                      subq.w     #1,d1
[0001414a] 3f41 0036                 move.w     d1,54(a7)
[0001414e] 3403                      move.w     d3,d2
[00014150] d46f 0046                 add.w      70(a7),d2
[00014154] 5342                      subq.w     #1,d2
[00014156] 3f42 003c                 move.w     d2,60(a7)
[0001415a] 3004                      move.w     d4,d0
[0001415c] d06f 0074                 add.w      116(a7),d0
[00014160] 5340                      subq.w     #1,d0
[00014162] 3f40 003a                 move.w     d0,58(a7)
[00014166] 47ef 0034                 lea.l      52(a7),a3
[0001416a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00014170] 486f 0036                 pea.l      54(a7)
[00014174] 4853                      pea.l      (a3)
[00014176] 43ef 0034                 lea.l      52(a7),a1
[0001417a] 41ef 0036                 lea.l      54(a7),a0
[0001417e] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00014184] 4fef 000c                 lea.l      12(a7),a7
A_rubberbox_19:
[00014188] 4def 002c                 lea.l      44(a7),a6
[0001418c] 302f 002a                 move.w     42(a7),d0
[00014190] 9043                      sub.w      d3,d0
[00014192] d045                      add.w      d5,d0
[00014194] c06f 0030                 and.w      48(a7),d0
[00014198] d043                      add.w      d3,d0
[0001419a] 5340                      subq.w     #1,d0
[0001419c] 3f40 002a                 move.w     d0,42(a7)
[000141a0] 322f 0028                 move.w     40(a7),d1
[000141a4] 9244                      sub.w      d4,d1
[000141a6] d245                      add.w      d5,d1
[000141a8] c26f 0030                 and.w      48(a7),d1
[000141ac] d244                      add.w      d4,d1
[000141ae] 5341                      subq.w     #1,d1
[000141b0] 3f41 0028                 move.w     d1,40(a7)
[000141b4] 3e00                      move.w     d0,d7
[000141b6] 3c01                      move.w     d1,d6
[000141b8] be6f 0038                 cmp.w      56(a7),d7
[000141bc] 6f04                      ble.s      A_rubberbox_5
[000141be] 3e2f 0038                 move.w     56(a7),d7
A_rubberbox_5:
[000141c2] bc6f 0036                 cmp.w      54(a7),d6
[000141c6] 6f04                      ble.s      A_rubberbox_6
[000141c8] 3c2f 0036                 move.w     54(a7),d6
A_rubberbox_6:
[000141cc] be6f 003c                 cmp.w      60(a7),d7
[000141d0] 6c04                      bge.s      A_rubberbox_7
[000141d2] 3e2f 003c                 move.w     60(a7),d7
A_rubberbox_7:
[000141d6] bc6f 003a                 cmp.w      58(a7),d6
[000141da] 6c04                      bge.s      A_rubberbox_8
[000141dc] 3c2f 003a                 move.w     58(a7),d6
A_rubberbox_8:
[000141e0] 7001                      moveq.l    #1,d0
[000141e2] c053                      and.w      (a3),d0
[000141e4] 6708                      beq.s      A_rubberbox_9
[000141e6] 7202                      moveq.l    #2,d1
[000141e8] c253                      and.w      (a3),d1
[000141ea] 6700 0116                 beq        A_rubberbox_10
A_rubberbox_9:
[000141ee] 41ef 0020                 lea.l      32(a7),a0
[000141f2] 4241                      clr.w      d1
[000141f4] 2255                      movea.l    (a5),a1
[000141f6] 3029 0010                 move.w     16(a1),d0
[000141fa] 4eb9 0006 3f60            jsr        vs_clip
[00014200] 3007                      move.w     d7,d0
[00014202] 9043                      sub.w      d3,d0
[00014204] 5240                      addq.w     #1,d0
[00014206] 206f 0042                 movea.l    66(a7),a0
[0001420a] 3080                      move.w     d0,(a0)
[0001420c] 3206                      move.w     d6,d1
[0001420e] 9244                      sub.w      d4,d1
[00014210] 5241                      addq.w     #1,d1
[00014212] 226f 003e                 movea.l    62(a7),a1
[00014216] 3281                      move.w     d1,(a1)
[00014218] 2055                      movea.l    (a5),a0
[0001421a] 2068 023c                 movea.l    572(a0),a0
[0001421e] 41e8 0038                 lea.l      56(a0),a0
[00014222] 4eb9 0004 9898            jsr        Amo_new
[00014228] 200a                      move.l     a2,d0
[0001422a] 6700 00be                 beq        A_rubberbox_11
[0001422e] 222f 000c                 move.l     12(a7),d1
[00014232] 6770                      beq.s      A_rubberbox_12
[00014234] 342a 0010                 move.w     16(a2),d2
[00014238] 3942 0008                 move.w     d2,8(a4)
[0001423c] 70ff                      moveq.l    #-1,d0
[0001423e] d06a 0014                 add.w      20(a2),d0
[00014242] 3940 0004                 move.w     d0,4(a4)
[00014246] d440                      add.w      d0,d2
[00014248] 3942 000c                 move.w     d2,12(a4)
[0001424c] 302a 0012                 move.w     18(a2),d0
[00014250] 3940 000a                 move.w     d0,10(a4)
[00014254] 74ff                      moveq.l    #-1,d2
[00014256] d46a 0016                 add.w      22(a2),d2
[0001425a] 3942 0006                 move.w     d2,6(a4)
[0001425e] d042                      add.w      d2,d0
[00014260] 3940 000e                 move.w     d0,14(a4)
[00014264] 4242                      clr.w      d2
[00014266] 3942 0002                 move.w     d2,2(a4)
[0001426a] 3882                      move.w     d2,(a4)
[0001426c] 4eb9 0004 9970            jsr        Amo_hide
[00014272] 2055                      movea.l    (a5),a0
[00014274] 4868 026a                 pea.l      618(a0)
[00014278] 226f 0010                 movea.l    16(a7),a1
[0001427c] 204c                      movea.l    a4,a0
[0001427e] 7203                      moveq.l    #3,d1
[00014280] 2f09                      move.l     a1,-(a7)
[00014282] 2255                      movea.l    (a5),a1
[00014284] 3029 0010                 move.w     16(a1),d0
[00014288] 225f                      movea.l    (a7)+,a1
[0001428a] 4eb9 0006 65ce            jsr        vro_cpyfm
[00014290] 584f                      addq.w     #4,a7
[00014292] 4eb9 0004 9994            jsr        Amo_show
[00014298] 206f 000c                 movea.l    12(a7),a0
[0001429c] 4eb9 0004 d996            jsr        Abp_delete
[000142a2] 603e                      bra.s      A_rubberbox_13
A_rubberbox_12:
[000142a4] 302a 0012                 move.w     18(a2),d0
[000142a8] d06a 0016                 add.w      22(a2),d0
[000142ac] 5340                      subq.w     #1,d0
[000142ae] 3f00                      move.w     d0,-(a7)
[000142b0] 322a 0010                 move.w     16(a2),d1
[000142b4] d26a 0014                 add.w      20(a2),d1
[000142b8] 5341                      subq.w     #1,d1
[000142ba] 3f01                      move.w     d1,-(a7)
[000142bc] 3f2a 0012                 move.w     18(a2),-(a7)
[000142c0] 3f2a 0010                 move.w     16(a2),-(a7)
[000142c4] 3f00                      move.w     d0,-(a7)
[000142c6] 3f01                      move.w     d1,-(a7)
[000142c8] 2079 000d 99d6            movea.l    _globl,a0
[000142ce] 342a 0012                 move.w     18(a2),d2
[000142d2] 322a 0010                 move.w     16(a2),d1
[000142d6] 7003                      moveq.l    #3,d0
[000142d8] 4eb9 0006 bde4            jsr        mt_form_dial
[000142de] 4fef 000c                 lea.l      12(a7),a7
A_rubberbox_13:
[000142e2] 204a                      movea.l    a2,a0
[000142e4] 4eb9 0004 9b7c            jsr        Aob_delete
A_rubberbox_11:
[000142ea] 4eb9 0004 ad60            jsr        Aev_release
[000142f0] 7002                      moveq.l    #2,d0
[000142f2] c053                      and.w      (a3),d0
[000142f4] 6706                      beq.s      A_rubberbox_14
[000142f6] 4240                      clr.w      d0
[000142f8] 6000 01ee                 bra        A_rubberbox_15
A_rubberbox_14:
[000142fc] 7001                      moveq.l    #1,d0
[000142fe] 6000 01e8                 bra        A_rubberbox_15
A_rubberbox_10:
[00014302] 2279 000d 99d6            movea.l    _globl,a1
[00014308] 91c8                      suba.l     a0,a0
[0001430a] 303c 0100                 move.w     #$0100,d0
[0001430e] 4eb9 0006 c914            jsr        mt_graf_mouse
[00014314] 7203                      moveq.l    #3,d1
[00014316] 2055                      movea.l    (a5),a0
[00014318] 3028 0010                 move.w     16(a0),d0
[0001431c] 4eb9 0006 4da0            jsr        vswr_mode
[00014322] 7201                      moveq.l    #1,d1
[00014324] 2055                      movea.l    (a5),a0
[00014326] 3028 0010                 move.w     16(a0),d0
[0001432a] 4eb9 0006 4ef0            jsr        vsl_color
[00014330] 3404                      move.w     d4,d2
[00014332] 3207                      move.w     d7,d1
[00014334] 3003                      move.w     d3,d0
[00014336] 4eb9 0004 4242            jsr        dotted_xline
[0001433c] 3406                      move.w     d6,d2
[0001433e] 3207                      move.w     d7,d1
[00014340] 3003                      move.w     d3,d0
[00014342] 4eb9 0004 4242            jsr        dotted_xline
[00014348] 3403                      move.w     d3,d2
[0001434a] 3206                      move.w     d6,d1
[0001434c] 3004                      move.w     d4,d0
[0001434e] 4eb9 0004 42e2            jsr        dotted_yline
[00014354] 3407                      move.w     d7,d2
[00014356] 3206                      move.w     d6,d1
[00014358] 3004                      move.w     d4,d0
[0001435a] 4eb9 0004 42e2            jsr        dotted_yline
[00014360] 200a                      move.l     a2,d0
[00014362] 6700 00a0                 beq        A_rubberbox_16
[00014366] 3206                      move.w     d6,d1
[00014368] 9244                      sub.w      d4,d1
[0001436a] 5241                      addq.w     #1,d1
[0001436c] 48c1                      ext.l      d1
[0001436e] 2055                      movea.l    (a5),a0
[00014370] 83e8 0014                 divs.w     20(a0),d1
[00014374] 3f01                      move.w     d1,-(a7)
[00014376] 3407                      move.w     d7,d2
[00014378] 9443                      sub.w      d3,d2
[0001437a] 5242                      addq.w     #1,d2
[0001437c] 48c2                      ext.l      d2
[0001437e] 85e8 0012                 divs.w     18(a0),d2
[00014382] 3f02                      move.w     d2,-(a7)
[00014384] 43f9 0009 7ec6            lea.l      $00097EC6,a1
[0001438a] 41ef 0004                 lea.l      4(a7),a0
[0001438e] 4eb9 0007 5680            jsr        sprintf
[00014394] 584f                      addq.w     #4,a7
[00014396] 43d7                      lea.l      (a7),a1
[00014398] 7001                      moveq.l    #1,d0
[0001439a] 204a                      movea.l    a2,a0
[0001439c] 4eb9 0004 afe0            jsr        Aob_puttext
[000143a2] 3006                      move.w     d6,d0
[000143a4] 9044                      sub.w      d4,d0
[000143a6] 5240                      addq.w     #1,d0
[000143a8] 3f00                      move.w     d0,-(a7)
[000143aa] 3207                      move.w     d7,d1
[000143ac] 9243                      sub.w      d3,d1
[000143ae] 5241                      addq.w     #1,d1
[000143b0] 3f01                      move.w     d1,-(a7)
[000143b2] 43f9 0009 7ec6            lea.l      $00097EC6,a1
[000143b8] 41ef 0004                 lea.l      4(a7),a0
[000143bc] 4eb9 0007 5680            jsr        sprintf
[000143c2] 584f                      addq.w     #4,a7
[000143c4] 43d7                      lea.l      (a7),a1
[000143c6] 7002                      moveq.l    #2,d0
[000143c8] 204a                      movea.l    a2,a0
[000143ca] 4eb9 0004 afe0            jsr        Aob_puttext
[000143d0] 302a 0012                 move.w     18(a2),d0
[000143d4] d06a 0016                 add.w      22(a2),d0
[000143d8] 5340                      subq.w     #1,d0
[000143da] 3f00                      move.w     d0,-(a7)
[000143dc] 322a 0010                 move.w     16(a2),d1
[000143e0] d26a 0014                 add.w      20(a2),d1
[000143e4] 5341                      subq.w     #1,d1
[000143e6] 3f01                      move.w     d1,-(a7)
[000143e8] 3f2a 0012                 move.w     18(a2),-(a7)
[000143ec] 2279 000d 99d6            movea.l    _globl,a1
[000143f2] 342a 0010                 move.w     16(a2),d2
[000143f6] 204a                      movea.l    a2,a0
[000143f8] 4240                      clr.w      d0
[000143fa] 7202                      moveq.l    #2,d1
[000143fc] 4eb9 0006 b93c            jsr        mt_objc_draw
[00014402] 5c4f                      addq.w     #6,a7
A_rubberbox_16:
[00014404] 2279 000d 99d6            movea.l    _globl,a1
[0001440a] 91c8                      suba.l     a0,a0
[0001440c] 303c 0101                 move.w     #$0101,d0
[00014410] 4eb9 0006 c914            jsr        mt_graf_mouse
A_rubberbox_18:
[00014416] 2f39 000d 99d6            move.l     _globl,-(a7)
[0001441c] 486f 0036                 pea.l      54(a7)
[00014420] 4853                      pea.l      (a3)
[00014422] 224e                      movea.l    a6,a1
[00014424] 41ef 003a                 lea.l      58(a7),a0
[00014428] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0001442e] 4fef 000c                 lea.l      12(a7),a7
[00014432] 7001                      moveq.l    #1,d0
[00014434] c053                      and.w      (a3),d0
[00014436] 6732                      beq.s      A_rubberbox_17
[00014438] 7202                      moveq.l    #2,d1
[0001443a] c253                      and.w      (a3),d1
[0001443c] 662c                      bne.s      A_rubberbox_17
[0001443e] 342f 002e                 move.w     46(a7),d2
[00014442] 946f 002a                 sub.w      42(a7),d2
[00014446] ba42                      cmp.w      d2,d5
[00014448] 6d20                      blt.s      A_rubberbox_17
[0001444a] 306f 002a                 movea.w    42(a7),a0
[0001444e] 90ef 002e                 suba.w     46(a7),a0
[00014452] ba48                      cmp.w      a0,d5
[00014454] 6d14                      blt.s      A_rubberbox_17
[00014456] 3256                      movea.w    (a6),a1
[00014458] 92ef 0028                 suba.w     40(a7),a1
[0001445c] ba49                      cmp.w      a1,d5
[0001445e] 6d0a                      blt.s      A_rubberbox_17
[00014460] 302f 0028                 move.w     40(a7),d0
[00014464] 9056                      sub.w      (a6),d0
[00014466] ba40                      cmp.w      d0,d5
[00014468] 6cac                      bge.s      A_rubberbox_18
A_rubberbox_17:
[0001446a] 2279 000d 99d6            movea.l    _globl,a1
[00014470] 91c8                      suba.l     a0,a0
[00014472] 303c 0100                 move.w     #$0100,d0
[00014476] 4eb9 0006 c914            jsr        mt_graf_mouse
[0001447c] 7203                      moveq.l    #3,d1
[0001447e] 2055                      movea.l    (a5),a0
[00014480] 3028 0010                 move.w     16(a0),d0
[00014484] 4eb9 0006 4da0            jsr        vswr_mode
[0001448a] 7201                      moveq.l    #1,d1
[0001448c] 2055                      movea.l    (a5),a0
[0001448e] 3028 0010                 move.w     16(a0),d0
[00014492] 4eb9 0006 4ef0            jsr        vsl_color
[00014498] 3404                      move.w     d4,d2
[0001449a] 3207                      move.w     d7,d1
[0001449c] 3003                      move.w     d3,d0
[0001449e] 4eb9 0004 4242            jsr        dotted_xline
[000144a4] 3406                      move.w     d6,d2
[000144a6] 3207                      move.w     d7,d1
[000144a8] 3003                      move.w     d3,d0
[000144aa] 4eb9 0004 4242            jsr        dotted_xline
[000144b0] 3403                      move.w     d3,d2
[000144b2] 3206                      move.w     d6,d1
[000144b4] 3004                      move.w     d4,d0
[000144b6] 4eb9 0004 42e2            jsr        dotted_yline
[000144bc] 3407                      move.w     d7,d2
[000144be] 3206                      move.w     d6,d1
[000144c0] 3004                      move.w     d4,d0
[000144c2] 4eb9 0004 42e2            jsr        dotted_yline
[000144c8] 2279 000d 99d6            movea.l    _globl,a1
[000144ce] 91c8                      suba.l     a0,a0
[000144d0] 303c 0101                 move.w     #$0101,d0
[000144d4] 4eb9 0006 c914            jsr        mt_graf_mouse
[000144da] 3f6f 002e 002a            move.w     46(a7),42(a7)
[000144e0] 3f56 0028                 move.w     (a6),40(a7)
[000144e4] 6000 fca2                 bra        A_rubberbox_19
A_rubberbox_15:
[000144e8] 4fef 0048                 lea.l      72(a7),a7
[000144ec] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[000144f0] 4e75                      rts

view_grow:
[000144f2] 2f0a                      move.l     a2,-(a7)
[000144f4] 2f0b                      move.l     a3,-(a7)
[000144f6] 2448                      movea.l    a0,a2
[000144f8] 7002                      moveq.l    #2,d0
[000144fa] 2279 0010 1f12            movea.l    ACSblk,a1
[00014500] 2069 023c                 movea.l    572(a1),a0
[00014504] c068 000e                 and.w      14(a0),d0
[00014508] 6728                      beq.s      view_grow_1
[0001450a] 3f2a 002a                 move.w     42(a2),-(a7)
[0001450e] 3f2a 0028                 move.w     40(a2),-(a7)
[00014512] 3f2a 0026                 move.w     38(a2),-(a7)
[00014516] 3f2a 0024                 move.w     36(a2),-(a7)
[0001451a] 4267                      clr.w      -(a7)
[0001451c] 4242                      clr.w      d2
[0001451e] 4241                      clr.w      d1
[00014520] 4240                      clr.w      d0
[00014522] 2079 000d 99d6            movea.l    _globl,a0
[00014528] 4eb9 0006 c564            jsr        mt_graf_growbox
[0001452e] 4fef 000a                 lea.l      10(a7),a7
view_grow_1:
[00014532] 006a 0010 0056            ori.w      #$0010,86(a2)
[00014538] 43ea 0024                 lea.l      36(a2),a1
[0001453c] 204a                      movea.l    a2,a0
[0001453e] 266a 0086                 movea.l    134(a2),a3
[00014542] 4e93                      jsr        (a3)
[00014544] 265f                      movea.l    (a7)+,a3
[00014546] 245f                      movea.l    (a7)+,a2
[00014548] 4e75                      rts

view_shrink:
[0001454a] 2f0a                      move.l     a2,-(a7)
[0001454c] 2f0b                      move.l     a3,-(a7)
[0001454e] 2448                      movea.l    a0,a2
[00014550] 7002                      moveq.l    #2,d0
[00014552] 2279 0010 1f12            movea.l    ACSblk,a1
[00014558] 2069 023c                 movea.l    572(a1),a0
[0001455c] c068 000e                 and.w      14(a0),d0
[00014560] 6728                      beq.s      view_shrink_1
[00014562] 3f2a 002a                 move.w     42(a2),-(a7)
[00014566] 3f2a 0028                 move.w     40(a2),-(a7)
[0001456a] 3f2a 0026                 move.w     38(a2),-(a7)
[0001456e] 3f2a 0024                 move.w     36(a2),-(a7)
[00014572] 4267                      clr.w      -(a7)
[00014574] 4242                      clr.w      d2
[00014576] 4241                      clr.w      d1
[00014578] 4240                      clr.w      d0
[0001457a] 2079 000d 99d6            movea.l    _globl,a0
[00014580] 4eb9 0006 c5f0            jsr        mt_graf_shrinkbox
[00014586] 4fef 000a                 lea.l      10(a7),a7
view_shrink_1:
[0001458a] 006a 0010 0056            ori.w      #$0010,86(a2)
[00014590] 43ea 0024                 lea.l      36(a2),a1
[00014594] 204a                      movea.l    a2,a0
[00014596] 266a 0086                 movea.l    134(a2),a3
[0001459a] 4e93                      jsr        (a3)
[0001459c] 265f                      movea.l    (a7)+,a3
[0001459e] 245f                      movea.l    (a7)+,a2
[000145a0] 4e75                      rts

new_name:
[000145a2] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[000145a6] 2448                      movea.l    a0,a2
[000145a8] 2649                      movea.l    a1,a3
[000145aa] 226a 005a                 movea.l    90(a2),a1
[000145ae] 2069 0008                 movea.l    8(a1),a0
[000145b2] 4eb9 0004 371c            jsr        Ast_delete
[000145b8] 206a 004e                 movea.l    78(a2),a0
[000145bc] 4eb9 0004 371c            jsr        Ast_delete
[000145c2] 41eb 0016                 lea.l      22(a3),a0
[000145c6] 4eb9 0004 36d6            jsr        Ast_create
[000145cc] 226a 005a                 movea.l    90(a2),a1
[000145d0] 2348 0008                 move.l     a0,8(a1)
[000145d4] 41eb 0016                 lea.l      22(a3),a0
[000145d8] 4eb9 0004 36d6            jsr        Ast_create
[000145de] 2548 004e                 move.l     a0,78(a2)
[000145e2] 362a 0020                 move.w     32(a2),d3
[000145e6] 4a43                      tst.w      d3
[000145e8] 6b12                      bmi.s      new_name_1
[000145ea] 4267                      clr.w      -(a7)
[000145ec] 4267                      clr.w      -(a7)
[000145ee] 2f08                      move.l     a0,-(a7)
[000145f0] 7203                      moveq.l    #3,d1
[000145f2] 3003                      move.w     d3,d0
[000145f4] 4eb9 0007 1656            jsr        wind_set
[000145fa] 504f                      addq.w     #8,a7
new_name_1:
[000145fc] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00014600] 4e75                      rts

chk_new_label:
[00014602] 4fef ff80                 lea.l      -128(a7),a7
[00014606] 43d7                      lea.l      (a7),a1
[00014608] 7002                      moveq.l    #2,d0
[0001460a] 2079 0010 1f12            movea.l    ACSblk,a0
[00014610] 2068 025c                 movea.l    604(a0),a0
[00014614] 4eb9 0004 b154            jsr        Aob_gettext
[0001461a] 1017                      move.b     (a7),d0
[0001461c] 670c                      beq.s      chk_new_label_1
[0001461e] 2079 0010 1f12            movea.l    ACSblk,a0
[00014624] 317c 0001 0268            move.w     #$0001,616(a0)
chk_new_label_1:
[0001462a] 4fef 0080                 lea.l      128(a7),a7
[0001462e] 4e75                      rts

newlabel:
[00014630] 48e7 0034                 movem.l    a2-a3/a5,-(a7)
[00014634] 4fef ff80                 lea.l      -128(a7),a7
[00014638] 2a48                      movea.l    a0,a5
[0001463a] 2649                      movea.l    a1,a3
[0001463c] 41f9 0009 bc00            lea.l      WI_NEW_LABEL,a0
[00014642] 2279 0009 bc08            movea.l    $0009BC08,a1
[00014648] 4e91                      jsr        (a1)
[0001464a] 2448                      movea.l    a0,a2
[0001464c] 200a                      move.l     a2,d0
[0001464e] 6768                      beq.s      newlabel_1
[00014650] 206a 004a                 movea.l    74(a2),a0
[00014654] 4eb9 0004 371c            jsr        Ast_delete
[0001465a] 206f 0090                 movea.l    144(a7),a0
[0001465e] 4eb9 0004 36d6            jsr        Ast_create
[00014664] 2548 004a                 move.l     a0,74(a2)
[00014668] 43eb 0016                 lea.l      22(a3),a1
[0001466c] 7002                      moveq.l    #2,d0
[0001466e] 206a 0014                 movea.l    20(a2),a0
[00014672] 4eb9 0004 afe0            jsr        Aob_puttext
newlabel_2:
[00014678] 204a                      movea.l    a2,a0
[0001467a] 4eb9 0005 1292            jsr        Awi_dialog
[00014680] 43d7                      lea.l      (a7),a1
[00014682] 7002                      moveq.l    #2,d0
[00014684] 206a 0014                 movea.l    20(a2),a0
[00014688] 4eb9 0004 b154            jsr        Aob_gettext
[0001468e] 1017                      move.b     (a7),d0
[00014690] 67e6                      beq.s      newlabel_2
[00014692] 322d 0006                 move.w     6(a5),d1
[00014696] c27c 4000                 and.w      #$4000,d1
[0001469a] 6708                      beq.s      newlabel_3
[0001469c] 41d7                      lea.l      (a7),a0
[0001469e] 4eb9 0007 6bc4            jsr        strupr
newlabel_3:
[000146a4] 43d7                      lea.l      (a7),a1
[000146a6] 41eb 0016                 lea.l      22(a3),a0
[000146aa] 4eb9 0007 6950            jsr        strcpy
[000146b0] 204a                      movea.l    a2,a0
[000146b2] 4eb9 0005 0330            jsr        Awi_delete
newlabel_1:
[000146b8] 4fef 0080                 lea.l      128(a7),a7
[000146bc] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[000146c0] 4e75                      rts

new2label:
[000146c2] 48e7 1034                 movem.l    d3/a2-a3/a5,-(a7)
[000146c6] 4fef ff80                 lea.l      -128(a7),a7
[000146ca] 2a48                      movea.l    a0,a5
[000146cc] 2649                      movea.l    a1,a3
[000146ce] 41f9 0009 bb5e            lea.l      WI_NEW2_LABEL,a0
[000146d4] 2279 0009 bb66            movea.l    $0009BB66,a1
[000146da] 4e91                      jsr        (a1)
[000146dc] 2448                      movea.l    a0,a2
[000146de] 200a                      move.l     a2,d0
[000146e0] 6774                      beq.s      new2label_1
[000146e2] 206a 004a                 movea.l    74(a2),a0
[000146e6] 4eb9 0004 371c            jsr        Ast_delete
[000146ec] 206f 0094                 movea.l    148(a7),a0
[000146f0] 4eb9 0004 36d6            jsr        Ast_create
[000146f6] 2548 004a                 move.l     a0,74(a2)
[000146fa] 43eb 0016                 lea.l      22(a3),a1
[000146fe] 7002                      moveq.l    #2,d0
[00014700] 206a 0014                 movea.l    20(a2),a0
[00014704] 4eb9 0004 afe0            jsr        Aob_puttext
[0001470a] 204a                      movea.l    a2,a0
[0001470c] 4eb9 0005 1292            jsr        Awi_dialog
[00014712] 3600                      move.w     d0,d3
[00014714] 43d7                      lea.l      (a7),a1
[00014716] 206a 0014                 movea.l    20(a2),a0
[0001471a] 7002                      moveq.l    #2,d0
[0001471c] 4eb9 0004 b154            jsr        Aob_gettext
[00014722] 204a                      movea.l    a2,a0
[00014724] 4eb9 0005 0330            jsr        Awi_delete
[0001472a] b67c 0003                 cmp.w      #$0003,d3
[0001472e] 6626                      bne.s      new2label_1
[00014730] 1017                      move.b     (a7),d0
[00014732] 6722                      beq.s      new2label_1
[00014734] 322d 0006                 move.w     6(a5),d1
[00014738] c27c 4000                 and.w      #$4000,d1
[0001473c] 6708                      beq.s      new2label_2
[0001473e] 41d7                      lea.l      (a7),a0
[00014740] 4eb9 0007 6bc4            jsr        strupr
new2label_2:
[00014746] 43d7                      lea.l      (a7),a1
[00014748] 41eb 0016                 lea.l      22(a3),a0
[0001474c] 4eb9 0007 6950            jsr        strcpy
[00014752] 7001                      moveq.l    #1,d0
[00014754] 6002                      bra.s      new2label_3
new2label_1:
[00014756] 4240                      clr.w      d0
new2label_3:
[00014758] 4fef 0080                 lea.l      128(a7),a7
[0001475c] 4cdf 2c08                 movem.l    (a7)+,d3/a2-a3/a5
[00014760] 4e75                      rts

wicalc_pos:
[00014762] 48e7 1f00                 movem.l    d3-d7,-(a7)
[00014766] 594f                      subq.w     #4,a7
[00014768] 2800                      move.l     d0,d4
[0001476a] 2601                      move.l     d1,d3
[0001476c] 2e82                      move.l     d2,(a7)
[0001476e] 3e2f 001c                 move.w     28(a7),d7
[00014772] 3c2f 001e                 move.w     30(a7),d6
[00014776] 4a81                      tst.l      d1
[00014778] 6604                      bne.s      wicalc_pos_1
[0001477a] 3a04                      move.w     d4,d5
[0001477c] 6014                      bra.s      wicalc_pos_2
wicalc_pos_1:
[0001477e] 2004                      move.l     d4,d0
[00014780] 2217                      move.l     (a7),d1
[00014782] 4eb9 0007 76f0            jsr        _lmul
[00014788] 2203                      move.l     d3,d1
[0001478a] 4eb9 0007 773a            jsr        _ldiv
[00014790] 2a00                      move.l     d0,d5
wicalc_pos_2:
[00014792] be45                      cmp.w      d5,d7
[00014794] 6f02                      ble.s      wicalc_pos_3
[00014796] 3a07                      move.w     d7,d5
wicalc_pos_3:
[00014798] bc45                      cmp.w      d5,d6
[0001479a] 6c02                      bge.s      wicalc_pos_4
[0001479c] 3a06                      move.w     d6,d5
wicalc_pos_4:
[0001479e] 3005                      move.w     d5,d0
[000147a0] 584f                      addq.w     #4,a7
[000147a2] 4cdf 00f8                 movem.l    (a7)+,d3-d7
[000147a6] 4e75                      rts

wi_pos:
[000147a8] 48e7 003c                 movem.l    a2-a5,-(a7)
[000147ac] 2a48                      movea.l    a0,a5
[000147ae] 2449                      movea.l    a1,a2
[000147b0] 286f 0014                 movea.l    20(a7),a4
[000147b4] 302a 0004                 move.w     4(a2),d0
[000147b8] 6700 00e0                 beq        wi_pos_1
[000147bc] 47f9 0010 1f12            lea.l      ACSblk,a3
[000147c2] 2053                      movea.l    (a3),a0
[000147c4] 3028 0008                 move.w     8(a0),d0
[000147c8] d068 000c                 add.w      12(a0),d0
[000147cc] 3f00                      move.w     d0,-(a7)
[000147ce] 3f28 0008                 move.w     8(a0),-(a7)
[000147d2] 3428 0008                 move.w     8(a0),d2
[000147d6] 48c2                      ext.l      d2
[000147d8] 3214                      move.w     (a4),d1
[000147da] 48c1                      ext.l      d1
[000147dc] 3012                      move.w     (a2),d0
[000147de] 48c0                      ext.l      d0
[000147e0] 6100 ff80                 bsr.w      wicalc_pos
[000147e4] 584f                      addq.w     #4,a7
[000147e6] 3b40 0024                 move.w     d0,36(a5)
[000147ea] 2053                      movea.l    (a3),a0
[000147ec] 3228 000a                 move.w     10(a0),d1
[000147f0] d268 000e                 add.w      14(a0),d1
[000147f4] 3f01                      move.w     d1,-(a7)
[000147f6] 3f28 000a                 move.w     10(a0),-(a7)
[000147fa] 3428 000a                 move.w     10(a0),d2
[000147fe] 48c2                      ext.l      d2
[00014800] 322c 0002                 move.w     2(a4),d1
[00014804] 48c1                      ext.l      d1
[00014806] 302a 0002                 move.w     2(a2),d0
[0001480a] 48c0                      ext.l      d0
[0001480c] 6100 ff54                 bsr        wicalc_pos
[00014810] 584f                      addq.w     #4,a7
[00014812] 3b40 0026                 move.w     d0,38(a5)
[00014816] 322d 0022                 move.w     34(a5),d1
[0001481a] c27c 0e20                 and.w      #$0E20,d1
[0001481e] 6730                      beq.s      wi_pos_2
[00014820] 2053                      movea.l    (a3),a0
[00014822] 3428 000c                 move.w     12(a0),d2
[00014826] d442                      add.w      d2,d2
[00014828] 3f02                      move.w     d2,-(a7)
[0001482a] 3028 0004                 move.w     4(a0),d0
[0001482e] e548                      lsl.w      #2,d0
[00014830] 3f00                      move.w     d0,-(a7)
[00014832] 3428 000c                 move.w     12(a0),d2
[00014836] 48c2                      ext.l      d2
[00014838] 322c 0004                 move.w     4(a4),d1
[0001483c] 48c1                      ext.l      d1
[0001483e] 302a 0004                 move.w     4(a2),d0
[00014842] 48c0                      ext.l      d0
[00014844] 6100 ff1c                 bsr        wicalc_pos
[00014848] 584f                      addq.w     #4,a7
[0001484a] 3b40 0028                 move.w     d0,40(a5)
[0001484e] 6008                      bra.s      wi_pos_3
wi_pos_2:
[00014850] 2053                      movea.l    (a3),a0
[00014852] 3b68 000c 0028            move.w     12(a0),40(a5)
wi_pos_3:
[00014858] 302d 0022                 move.w     34(a5),d0
[0001485c] c07c 01e0                 and.w      #$01E0,d0
[00014860] 6730                      beq.s      wi_pos_4
[00014862] 2053                      movea.l    (a3),a0
[00014864] 3228 000e                 move.w     14(a0),d1
[00014868] d241                      add.w      d1,d1
[0001486a] 3f01                      move.w     d1,-(a7)
[0001486c] 3428 0006                 move.w     6(a0),d2
[00014870] e54a                      lsl.w      #2,d2
[00014872] 3f02                      move.w     d2,-(a7)
[00014874] 3428 000e                 move.w     14(a0),d2
[00014878] 48c2                      ext.l      d2
[0001487a] 322c 0006                 move.w     6(a4),d1
[0001487e] 48c1                      ext.l      d1
[00014880] 302a 0006                 move.w     6(a2),d0
[00014884] 48c0                      ext.l      d0
[00014886] 6100 feda                 bsr        wicalc_pos
[0001488a] 584f                      addq.w     #4,a7
[0001488c] 3b40 002a                 move.w     d0,42(a5)
[00014890] 6008                      bra.s      wi_pos_1
wi_pos_4:
[00014892] 2053                      movea.l    (a3),a0
[00014894] 3b68 000e 002a            move.w     14(a0),42(a5)
wi_pos_1:
[0001489a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0001489e] 4e75                      rts

convert:
[000148a0] 48e7 1f34                 movem.l    d3-d7/a2-a3/a5,-(a7)
[000148a4] 4fef fff0                 lea.l      -16(a7),a7
[000148a8] 2648                      movea.l    a0,a3
[000148aa] 2449                      movea.l    a1,a2
[000148ac] 2079 0010 1f12            movea.l    ACSblk,a0
[000148b2] 7001                      moveq.l    #1,d0
[000148b4] 2279 0010 1f12            movea.l    ACSblk,a1
[000148ba] 1229 001d                 move.b     29(a1),d1
[000148be] e368                      lsl.w      d1,d0
[000148c0] b068 001a                 cmp.w      26(a0),d0
[000148c4] 6700 015a                 beq        convert_1
[000148c8] 362b 0008                 move.w     8(a3),d3
[000148cc] c7eb 0006                 muls.w     6(a3),d3
[000148d0] 48c3                      ext.l      d3
[000148d2] 4242                      clr.w      d2
[000148d4] 3f42 0006                 move.w     d2,6(a7)
[000148d8] 3f42 0004                 move.w     d2,4(a7)
[000148dc] 3f42 0002                 move.w     d2,2(a7)
[000148e0] 3e82                      move.w     d2,(a7)
[000148e2] 4244                      clr.w      d4
[000148e4] 6000 0130                 bra        convert_2
convert_16:
[000148e8] 3f44 000e                 move.w     d4,14(a7)
[000148ec] 3f44 000a                 move.w     d4,10(a7)
[000148f0] 3a04                      move.w     d4,d5
[000148f2] cbeb 0008                 muls.w     8(a3),d5
[000148f6] 48c5                      ext.l      d5
[000148f8] 4246                      clr.w      d6
[000148fa] 6000 0110                 bra        convert_3
convert_15:
[000148fe] 3006                      move.w     d6,d0
[00014900] e840                      asr.w      #4,d0
[00014902] 48c0                      ext.l      d0
[00014904] d085                      add.l      d5,d0
[00014906] 2200                      move.l     d0,d1
[00014908] d281                      add.l      d1,d1
[0001490a] 206f 0034                 movea.l    52(a7),a0
[0001490e] d1c1                      adda.l     d1,a0
[00014910] 2a53                      movea.l    (a3),a5
[00014912] dbc1                      adda.l     d1,a5
[00014914] 3f46 000c                 move.w     d6,12(a7)
[00014918] 3f46 0008                 move.w     d6,8(a7)
[0001491c] 203c 0000 8000            move.l     #$00008000,d0
[00014922] 740f                      moveq.l    #15,d2
[00014924] c406                      and.b      d6,d2
[00014926] e4a0                      asr.l      d2,d0
[00014928] 3210                      move.w     (a0),d1
[0001492a] c240                      and.w      d0,d1
[0001492c] 6700 009e                 beq        convert_4
[00014930] 4247                      clr.w      d7
[00014932] 3415                      move.w     (a5),d2
[00014934] c440                      and.w      d0,d2
[00014936] 6702                      beq.s      convert_5
[00014938] 5247                      addq.w     #1,d7
convert_5:
[0001493a] 2203                      move.l     d3,d1
[0001493c] d281                      add.l      d1,d1
[0001493e] dbc1                      adda.l     d1,a5
[00014940] 3415                      move.w     (a5),d2
[00014942] c440                      and.w      d0,d2
[00014944] 6702                      beq.s      convert_6
[00014946] 5447                      addq.w     #2,d7
convert_6:
[00014948] 2203                      move.l     d3,d1
[0001494a] d281                      add.l      d1,d1
[0001494c] dbc1                      adda.l     d1,a5
[0001494e] 3415                      move.w     (a5),d2
[00014950] c440                      and.w      d0,d2
[00014952] 6702                      beq.s      convert_7
[00014954] 5847                      addq.w     #4,d7
convert_7:
[00014956] 2203                      move.l     d3,d1
[00014958] d281                      add.l      d1,d1
[0001495a] dbc1                      adda.l     d1,a5
[0001495c] 3415                      move.w     (a5),d2
[0001495e] c440                      and.w      d0,d2
[00014960] 6702                      beq.s      convert_8
[00014962] 5047                      addq.w     #8,d7
convert_8:
[00014964] 2203                      move.l     d3,d1
[00014966] d281                      add.l      d1,d1
[00014968] dbc1                      adda.l     d1,a5
[0001496a] 3415                      move.w     (a5),d2
[0001496c] c440                      and.w      d0,d2
[0001496e] 6704                      beq.s      convert_9
[00014970] de7c 0010                 add.w      #$0010,d7
convert_9:
[00014974] 2203                      move.l     d3,d1
[00014976] d281                      add.l      d1,d1
[00014978] dbc1                      adda.l     d1,a5
[0001497a] 3415                      move.w     (a5),d2
[0001497c] c440                      and.w      d0,d2
[0001497e] 6704                      beq.s      convert_10
[00014980] de7c 0020                 add.w      #$0020,d7
convert_10:
[00014984] 2203                      move.l     d3,d1
[00014986] d281                      add.l      d1,d1
[00014988] dbc1                      adda.l     d1,a5
[0001498a] 3415                      move.w     (a5),d2
[0001498c] c440                      and.w      d0,d2
[0001498e] 6704                      beq.s      convert_11
[00014990] de7c 0040                 add.w      #$0040,d7
convert_11:
[00014994] 2203                      move.l     d3,d1
[00014996] d281                      add.l      d1,d1
[00014998] dbc1                      adda.l     d1,a5
[0001499a] 3415                      move.w     (a5),d2
[0001499c] c440                      and.w      d0,d2
[0001499e] 6704                      beq.s      convert_12
[000149a0] de7c 0080                 add.w      #$0080,d7
convert_12:
[000149a4] 2079 0010 1f12            movea.l    ACSblk,a0
[000149aa] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[000149b0] 6c04                      bge.s      convert_13
[000149b2] ce7c 000f                 and.w      #$000F,d7
convert_13:
[000149b6] be7c 0010                 cmp.w      #$0010,d7
[000149ba] 6c1c                      bge.s      convert_14
[000149bc] 3007                      move.w     d7,d0
[000149be] d040                      add.w      d0,d0
[000149c0] 41f9 0009 7e90            lea.l      map,a0
[000149c6] 3e30 0000                 move.w     0(a0,d0.w),d7
[000149ca] 600c                      bra.s      convert_14
convert_4:
[000149cc] 7eff                      moveq.l    #-1,d7
[000149ce] 2079 0010 1f12            movea.l    ACSblk,a0
[000149d4] de68 001a                 add.w      26(a0),d7
convert_14:
[000149d8] 33c7 000d a7ea            move.w     d7,col
[000149de] 33c7 000d a7ec            move.w     d7,$000DA7EC
[000149e4] 4879 000d a7ea            pea.l      col
[000149ea] 2f0a                      move.l     a2,-(a7)
[000149ec] 43f9 0009 7eb2            lea.l      punkt,a1
[000149f2] 41ef 0008                 lea.l      8(a7),a0
[000149f6] 7201                      moveq.l    #1,d1
[000149f8] 2a79 0010 1f12            movea.l    ACSblk,a5
[000149fe] 302d 0010                 move.w     16(a5),d0
[00014a02] 4eb9 0006 6632            jsr        vrt_cpyfm
[00014a08] 504f                      addq.w     #8,a7
[00014a0a] 5246                      addq.w     #1,d6
convert_3:
[00014a0c] bc6a 0004                 cmp.w      4(a2),d6
[00014a10] 6d00 feec                 blt        convert_15
[00014a14] 5244                      addq.w     #1,d4
convert_2:
[00014a16] b86a 0006                 cmp.w      6(a2),d4
[00014a1a] 6d00 fecc                 blt        convert_16
[00014a1e] 6014                      bra.s      convert_17
convert_1:
[00014a20] 224a                      movea.l    a2,a1
[00014a22] 204b                      movea.l    a3,a0
[00014a24] 2a79 0010 1f12            movea.l    ACSblk,a5
[00014a2a] 302d 0010                 move.w     16(a5),d0
[00014a2e] 4eb9 0006 66a8            jsr        vr_trnfm
convert_17:
[00014a34] 4fef 0010                 lea.l      16(a7),a7
[00014a38] 4cdf 2cf8                 movem.l    (a7)+,d3-d7/a2-a3/a5
[00014a3c] 4e75                      rts

to_cicon:
[00014a3e] 48e7 1e3a                 movem.l    d3-d6/a2-a4/a6,-(a7)
[00014a42] 4fef ffd0                 lea.l      -48(a7),a7
[00014a46] 2f48 002c                 move.l     a0,44(a7)
[00014a4a] 2f49 0028                 move.l     a1,40(a7)
[00014a4e] 246f 0054                 movea.l    84(a7),a2
[00014a52] 3c00                      move.w     d0,d6
[00014a54] 760f                      moveq.l    #15,d3
[00014a56] d66a 0016                 add.w      22(a2),d3
[00014a5a] c67c fff0                 and.w      #$FFF0,d3
[00014a5e] 3803                      move.w     d3,d4
[00014a60] c9ea 0018                 muls.w     24(a2),d4
[00014a64] e644                      asr.w      #3,d4
[00014a66] 48c4                      ext.l      d4
[00014a68] 47f9 0010 1f12            lea.l      ACSblk,a3
[00014a6e] 2053                      movea.l    (a3),a0
[00014a70] bc68 001c                 cmp.w      28(a0),d6
[00014a74] 6f0e                      ble.s      to_cicon_1
[00014a76] 41f9 0009 7e6b            lea.l      a_planemess,a0
[00014a7c] 7001                      moveq.l    #1,d0
[00014a7e] 4eb9 0005 17fe            jsr        Awi_alert
to_cicon_1:
[00014a84] 2004                      move.l     d4,d0
[00014a86] 2053                      movea.l    (a3),a0
[00014a88] 3228 001c                 move.w     28(a0),d1
[00014a8c] 48c1                      ext.l      d1
[00014a8e] 4eb9 0007 76f0            jsr        _lmul
[00014a94] 2a00                      move.l     d0,d5
[00014a96] 5c85                      addq.l     #6,d5
[00014a98] 2004                      move.l     d4,d0
[00014a9a] 3206                      move.w     d6,d1
[00014a9c] 48c1                      ext.l      d1
[00014a9e] 4eb9 0007 76f0            jsr        _lmul
[00014aa4] 2c00                      move.l     d0,d6
[00014aa6] 49ef 0014                 lea.l      20(a7),a4
[00014aaa] 426c 000a                 clr.w      10(a4)
[00014aae] 3f7c 0001 000a            move.w     #$0001,10(a7)
[00014ab4] 3f43 0004                 move.w     d3,4(a7)
[00014ab8] 3943 0004                 move.w     d3,4(a4)
[00014abc] 302a 0018                 move.w     24(a2),d0
[00014ac0] 3f40 0006                 move.w     d0,6(a7)
[00014ac4] 3940 0006                 move.w     d0,6(a4)
[00014ac8] 3203                      move.w     d3,d1
[00014aca] e841                      asr.w      #4,d1
[00014acc] 3f41 0008                 move.w     d1,8(a7)
[00014ad0] 3941 0008                 move.w     d1,8(a4)
[00014ad4] 2053                      movea.l    (a3),a0
[00014ad6] 3028 001c                 move.w     28(a0),d0
[00014ada] 3f40 000c                 move.w     d0,12(a7)
[00014ade] 3940 000c                 move.w     d0,12(a4)
[00014ae2] 4241                      clr.w      d1
[00014ae4] 3f41 0012                 move.w     d1,18(a7)
[00014ae8] 3f41 0010                 move.w     d1,16(a7)
[00014aec] 3f41 000e                 move.w     d1,14(a7)
[00014af0] 3941 0012                 move.w     d1,18(a4)
[00014af4] 3941 0010                 move.w     d1,16(a4)
[00014af8] 3941 000e                 move.w     d1,14(a4)
[00014afc] 2005                      move.l     d5,d0
[00014afe] 4eb9 0004 7cc8            jsr        Ax_malloc
[00014b04] 2c48                      movea.l    a0,a6
[00014b06] 200e                      move.l     a6,d0
[00014b08] 6732                      beq.s      to_cicon_2
[00014b0a] 2e88                      move.l     a0,(a7)
[00014b0c] 2205                      move.l     d5,d1
[00014b0e] 4240                      clr.w      d0
[00014b10] 4eb9 0007 712e            jsr        memset
[00014b16] 2006                      move.l     d6,d0
[00014b18] 226f 002c                 movea.l    44(a7),a1
[00014b1c] 5c49                      addq.w     #6,a1
[00014b1e] 2057                      movea.l    (a7),a0
[00014b20] 4eb9 0007 6f44            jsr        memcpy
[00014b26] 2005                      move.l     d5,d0
[00014b28] 4eb9 0004 7cc8            jsr        Ax_malloc
[00014b2e] 2c48                      movea.l    a0,a6
[00014b30] 200e                      move.l     a6,d0
[00014b32] 6610                      bne.s      to_cicon_3
[00014b34] 2057                      movea.l    (a7),a0
[00014b36] 4eb9 0004 7d6c            jsr        Ax_ifree
to_cicon_2:
[00014b3c] 42aa 0022                 clr.l      34(a2)
[00014b40] 91c8                      suba.l     a0,a0
[00014b42] 6042                      bra.s      to_cicon_4
to_cicon_3:
[00014b44] 41ee 0006                 lea.l      6(a6),a0
[00014b48] 2888                      move.l     a0,(a4)
[00014b4a] 3cbc 0001                 move.w     #$0001,(a6)
[00014b4e] 2253                      movea.l    (a3),a1
[00014b50] 2469 023c                 movea.l    572(a1),a2
[00014b54] 302a 000e                 move.w     14(a2),d0
[00014b58] c07c 0800                 and.w      #$0800,d0
[00014b5c] 670e                      beq.s      to_cicon_5
[00014b5e] 2054                      movea.l    (a4),a0
[00014b60] 2257                      movea.l    (a7),a1
[00014b62] 2006                      move.l     d6,d0
[00014b64] 4eb9 0007 6f44            jsr        memcpy
[00014b6a] 6010                      bra.s      to_cicon_6
to_cicon_5:
[00014b6c] 2f2f 0028                 move.l     40(a7),-(a7)
[00014b70] 224c                      movea.l    a4,a1
[00014b72] 41ef 0004                 lea.l      4(a7),a0
[00014b76] 6100 fd28                 bsr        convert
[00014b7a] 584f                      addq.w     #4,a7
to_cicon_6:
[00014b7c] 2057                      movea.l    (a7),a0
[00014b7e] 4eb9 0004 7d6c            jsr        Ax_ifree
[00014b84] 2054                      movea.l    (a4),a0
to_cicon_4:
[00014b86] 4fef 0030                 lea.l      48(a7),a7
[00014b8a] 4cdf 5c78                 movem.l    (a7)+,d3-d6/a2-a4/a6
[00014b8e] 4e75                      rts

	.data

hex:
[00097e5a]                           dc.b '0123456789ABCDEF',0
a_planemess:
[00097e6b]                           dc.b '[1][ |planes > nplanes!| ][   OK   ]',0
map:
[00097e90]                           dc.b $00
[00097e91]                           dc.b $00
[00097e92]                           dc.b $00
[00097e93]                           dc.b $02
[00097e94]                           dc.b $00
[00097e95]                           dc.b $03
[00097e96]                           dc.b $00
[00097e97]                           dc.b $06
[00097e98]                           dc.b $00
[00097e99]                           dc.b $04
[00097e9a]                           dc.b $00
[00097e9b]                           dc.b $07
[00097e9c]                           dc.b $00
[00097e9d]                           dc.b $05
[00097e9e]                           dc.b $00
[00097e9f]                           dc.b $08
[00097ea0]                           dc.b $00
[00097ea1]                           dc.b $09
[00097ea2]                           dc.b $00
[00097ea3]                           dc.b $0a
[00097ea4]                           dc.b $00
[00097ea5]                           dc.b $0b
[00097ea6]                           dc.b $00
[00097ea7]                           dc.b $0e
[00097ea8]                           dc.b $00
[00097ea9]                           dc.b $0c
[00097eaa]                           dc.b $00
[00097eab]                           dc.b $0f
[00097eac]                           dc.b $00
[00097ead]                           dc.b $0d
[00097eae]                           dc.b $00
[00097eaf]                           dc.b $01
xff:
[00097eb0]                           dc.w $ffff
punkt:
[00097eb2] 00097eb0                  dc.l xff
[00097eb6]                           dc.b $00
[00097eb7]                           dc.b $01
[00097eb8]                           dc.b $00
[00097eb9]                           dc.b $01
[00097eba]                           dc.b $00
[00097ebb]                           dc.b $01
[00097ebc]                           dc.b $00
[00097ebd]                           dc.b $00
[00097ebe]                           dc.b $00
[00097ebf]                           dc.b $01
[00097ec0]                           dc.b $00
[00097ec1]                           dc.b $00
[00097ec2]                           dc.b $00
[00097ec3]                           dc.b $00
[00097ec4]                           dc.b $00
[00097ec5]                           dc.b $00
[00097ec6]                           dc.b '%d*%d',0

	.bss
col: ds.l 1
