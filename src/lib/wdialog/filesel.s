
fsmesshndler:
[0005ff64] 2f02                      move.l     d2,-(a7)
[0005ff66] 206f 0008                 movea.l    8(a7),a0
[0005ff6a] 4eb9 0005 3ade            jsr        Aev_message
[0005ff70] 241f                      move.l     (a7)+,d2
[0005ff72] 4e75                      rts

Af_select:
[0005ff74] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0005ff78] 4fef ffbe                 lea.l      -66(a7),a7
[0005ff7c] 2c48                      movea.l    a0,a6
[0005ff7e] 2649                      movea.l    a1,a3
[0005ff80] 4eb9 0004 63f4            jsr        Aev_unhidepointer
[0005ff86] 41d7                      lea.l      (a7),a0
[0005ff88] 4eb9 0004 99ce            jsr        Amo_restart
[0005ff8e] 3600                      move.w     d0,d3
[0005ff90] 45f9 000d 58d8            lea.l      multi_cook,a2
[0005ff96] 2012                      move.l     (a2),d0
[0005ff98] 6614                      bne.s      Af_select_1
[0005ff9a] 204a                      movea.l    a2,a0
[0005ff9c] 203c 4653 454c            move.l     #$4653454C,d0
[0005ffa2] 4eb9 0007 2bf4            jsr        Ash_getcookie
[0005ffa8] 4a40                      tst.w      d0
[0005ffaa] 6602                      bne.s      Af_select_1
[0005ffac] 4292                      clr.l      (a2)
Af_select_1:
[0005ffae] 202a 000c                 move.l     12(a2),d0
[0005ffb2] 6618                      bne.s      Af_select_2
[0005ffb4] 41ea 000c                 lea.l      12(a2),a0
[0005ffb8] 203c 4842 4653            move.l     #$48424653,d0
[0005ffbe] 4eb9 0007 2bf4            jsr        Ash_getcookie
[0005ffc4] 4a40                      tst.w      d0
[0005ffc6] 6604                      bne.s      Af_select_2
[0005ffc8] 42aa 000c                 clr.l      12(a2)
Af_select_2:
[0005ffcc] 705c                      moveq.l    #92,d0
[0005ffce] 204b                      movea.l    a3,a0
[0005ffd0] 4eb9 0007 68e2            jsr        strrchr
[0005ffd6] 2848                      movea.l    a0,a4
[0005ffd8] 1013                      move.b     (a3),d0
[0005ffda] 6704                      beq.s      Af_select_3
[0005ffdc] 220c                      move.l     a4,d1
[0005ffde] 661e                      bne.s      Af_select_4
Af_select_3:
[0005ffe0] 42a7                      clr.l      -(a7)
[0005ffe2] 42a7                      clr.l      -(a7)
[0005ffe4] 93c9                      suba.l     a1,a1
[0005ffe6] 70ff                      moveq.l    #-1,d0
[0005ffe8] 204b                      movea.l    a3,a0
[0005ffea] 4eb9 0004 72d6            jsr        Af_buildname
[0005fff0] 504f                      addq.w     #8,a7
[0005fff2] 705c                      moveq.l    #92,d0
[0005fff4] 204b                      movea.l    a3,a0
[0005fff6] 4eb9 0007 68e2            jsr        strrchr
[0005fffc] 2848                      movea.l    a0,a4
Af_select_4:
[0005fffe] 4bef 0006                 lea.l      6(a7),a5
[00060002] 224c                      movea.l    a4,a1
[00060004] 204d                      movea.l    a5,a0
[00060006] 4eb9 0004 7246            jsr        Af_2fullname
[0006000c] 0c15 002a                 cmpi.b     #$2A,(a5)
[00060010] 6602                      bne.s      Af_select_5
[00060012] 4215                      clr.b      (a5)
Af_select_5:
[00060014] 7002                      moveq.l    #2,d0
[00060016] 43f9 000d 5baa            lea.l      $000D5BAA,a1
[0006001c] 206f 0062                 movea.l    98(a7),a0
[00060020] 4eb9 0004 3980            jsr        Ast_incmp
[00060026] 4a40                      tst.w      d0
[00060028] 6712                      beq.s      Af_select_6
[0006002a] 43f9 000d 5baa            lea.l      $000D5BAA,a1
[00060030] 41ec 0001                 lea.l      1(a4),a0
[00060034] 4eb9 0007 6950            jsr        strcpy
[0006003a] 6004                      bra.s      Af_select_7
Af_select_6:
[0006003c] 422c 0001                 clr.b      1(a4)
Af_select_7:
[00060040] 226f 0062                 movea.l    98(a7),a1
[00060044] 204c                      movea.l    a4,a0
[00060046] 4eb9 0007 6886            jsr        strcat
[0006004c] 202a 000c                 move.l     12(a2),d0
[00060050] 6724                      beq.s      Af_select_8
[00060052] 2f39 000d 99d6            move.l     _globl,-(a7)
[00060058] 487a ff0a                 pea.l      fsmesshndler(pc)
[0006005c] 2f0e                      move.l     a6,-(a7)
[0006005e] 486f 004c                 pea.l      76(a7)
[00060062] 224d                      movea.l    a5,a1
[00060064] 204b                      movea.l    a3,a0
[00060066] 4eb9 0006 ccbe            jsr        mt_fsel_boxinput
[0006006c] 4fef 0010                 lea.l      16(a7),a7
[00060070] 3800                      move.w     d0,d4
[00060072] 6000 0088                 bra        Af_select_9
Af_select_8:
[00060076] 7001                      moveq.l    #1,d0
[00060078] 4eb9 0005 1e1c            jsr        Awi_update
[0006007e] 2012                      move.l     (a2),d0
[00060080] 670a                      beq.s      Af_select_10
[00060082] 2040                      movea.l    d0,a0
[00060084] 0c68 0200 0004            cmpi.w     #$0200,4(a0)
[0006008a] 6408                      bcc.s      Af_select_11
Af_select_10:
[0006008c] 7003                      moveq.l    #3,d0
[0006008e] 4eb9 0005 1e1c            jsr        Awi_update
Af_select_11:
[00060094] 2079 0010 1f12            movea.l    ACSblk,a0
[0006009a] 2268 0280                 movea.l    640(a0),a1
[0006009e] 0c51 0140                 cmpi.w     #$0140,(a1)
[000600a2] 6c04                      bge.s      Af_select_12
[000600a4] 2012                      move.l     (a2),d0
[000600a6] 671e                      beq.s      Af_select_13
Af_select_12:
[000600a8] 2f39 000d 99d6            move.l     _globl,-(a7)
[000600ae] 2f0e                      move.l     a6,-(a7)
[000600b0] 486f 0048                 pea.l      72(a7)
[000600b4] 224d                      movea.l    a5,a1
[000600b6] 204b                      movea.l    a3,a0
[000600b8] 4eb9 0006 cc10            jsr        mt_fsel_exinput
[000600be] 4fef 000c                 lea.l      12(a7),a7
[000600c2] 3800                      move.w     d0,d4
[000600c4] 6018                      bra.s      Af_select_14
Af_select_13:
[000600c6] 2f39 000d 99d6            move.l     _globl,-(a7)
[000600cc] 486f 0044                 pea.l      68(a7)
[000600d0] 224d                      movea.l    a5,a1
[000600d2] 204b                      movea.l    a3,a0
[000600d4] 4eb9 0006 cba2            jsr        mt_fsel_input
[000600da] 504f                      addq.w     #8,a7
[000600dc] 3800                      move.w     d0,d4
Af_select_14:
[000600de] 2012                      move.l     (a2),d0
[000600e0] 670a                      beq.s      Af_select_15
[000600e2] 2040                      movea.l    d0,a0
[000600e4] 0c68 0200 0004            cmpi.w     #$0200,4(a0)
[000600ea] 6408                      bcc.s      Af_select_16
Af_select_15:
[000600ec] 7002                      moveq.l    #2,d0
[000600ee] 4eb9 0005 1e1c            jsr        Awi_update
Af_select_16:
[000600f4] 4240                      clr.w      d0
[000600f6] 4eb9 0005 1e1c            jsr        Awi_update
Af_select_9:
[000600fc] 4a44                      tst.w      d4
[000600fe] 6700 007a                 beq.w      Af_select_17
[00060102] 302f 0040                 move.w     64(a7),d0
[00060106] 6772                      beq.s      Af_select_17
[00060108] 0c2b 003a 0001            cmpi.b     #$3A,1(a3)
[0006010e] 666a                      bne.s      Af_select_17
[00060110] 1215                      move.b     (a5),d1
[00060112] 674a                      beq.s      Af_select_18
[00060114] 204d                      movea.l    a5,a0
[00060116] 4eb9 0007 69b0            jsr        strlen
[0006011c] 7209                      moveq.l    #9,d1
[0006011e] b280                      cmp.l      d0,d1
[00060120] 6614                      bne.s      Af_select_19
[00060122] 0c2d 002e 0008            cmpi.b     #$2E,8(a5)
[00060128] 660c                      bne.s      Af_select_19
[0006012a] 226f 0062                 movea.l    98(a7),a1
[0006012e] 204d                      movea.l    a5,a0
[00060130] 4eb9 0007 6886            jsr        strcat
Af_select_19:
[00060136] 702e                      moveq.l    #46,d0
[00060138] 204d                      movea.l    a5,a0
[0006013a] 4eb9 0007 68ce            jsr        strchr
[00060140] 2008                      move.l     a0,d0
[00060142] 661a                      bne.s      Af_select_18
[00060144] 43f9 000d 5bab            lea.l      $000D5BAB,a1
[0006014a] 204d                      movea.l    a5,a0
[0006014c] 4eb9 0007 6886            jsr        strcat
[00060152] 226f 0062                 movea.l    98(a7),a1
[00060156] 204d                      movea.l    a5,a0
[00060158] 4eb9 0007 6886            jsr        strcat
Af_select_18:
[0006015e] 705c                      moveq.l    #92,d0
[00060160] 204b                      movea.l    a3,a0
[00060162] 4eb9 0007 68e2            jsr        strrchr
[00060168] 2848                      movea.l    a0,a4
[0006016a] 224d                      movea.l    a5,a1
[0006016c] 41ec 0001                 lea.l      1(a4),a0
[00060170] 4eb9 0007 6950            jsr        strcpy
[00060176] 2c4b                      movea.l    a3,a6
[00060178] 6002                      bra.s      Af_select_20
Af_select_17:
[0006017a] 9dce                      suba.l     a6,a6
Af_select_20:
[0006017c] 41d7                      lea.l      (a7),a0
[0006017e] 3003                      move.w     d3,d0
[00060180] 4eb9 0004 9a14            jsr        Amo_return
[00060186] 4eb9 0004 6d70            jsr        Aev_mess
[0006018c] 204e                      movea.l    a6,a0
[0006018e] 4fef 0042                 lea.l      66(a7),a7
[00060192] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00060196] 4e75                      rts

free_multidata:
[00060198] 3f03                      move.w     d3,-(a7)
[0006019a] 2f0a                      move.l     a2,-(a7)
[0006019c] 4243                      clr.w      d3
[0006019e] 45f9 000d 58dc            lea.l      multi_files,a2
[000601a4] 6018                      bra.s      free_multidata_1
free_multidata_3:
[000601a6] 3003                      move.w     d3,d0
[000601a8] 48c0                      ext.l      d0
[000601aa] e588                      lsl.l      #2,d0
[000601ac] 2052                      movea.l    (a2),a0
[000601ae] 2230 0800                 move.l     0(a0,d0.l),d1
[000601b2] 6708                      beq.s      free_multidata_2
[000601b4] 2041                      movea.l    d1,a0
[000601b6] 4eb9 0004 7fa6            jsr        Ax_glfree
free_multidata_2:
[000601bc] 5243                      addq.w     #1,d3
free_multidata_1:
[000601be] b66a 0004                 cmp.w      4(a2),d3
[000601c2] 6de2                      blt.s      free_multidata_3
[000601c4] 2052                      movea.l    (a2),a0
[000601c6] 4eb9 0004 7fa6            jsr        Ax_glfree
[000601cc] 4292                      clr.l      (a2)
[000601ce] 42b9 0010 7674            clr.l      multi_pathend
[000601d4] 4240                      clr.w      d0
[000601d6] 3540 0004                 move.w     d0,4(a2)
[000601da] 3540 0006                 move.w     d0,6(a2)
[000601de] 4239 0010 75f4            clr.b      multi_opath
[000601e4] 245f                      movea.l    (a7)+,a2
[000601e6] 361f                      move.w     (a7)+,d3
[000601e8] 4e75                      rts

Af_first_fsel:
[000601ea] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[000601ee] 2848                      movea.l    a0,a4
[000601f0] 2a49                      movea.l    a1,a5
[000601f2] 47f9 000d 58dc            lea.l      multi_files,a3
[000601f8] 426b 0006                 clr.w      6(a3)
[000601fc] 45eb fffc                 lea.l      -4(a3),a2
[00060200] 2012                      move.l     (a2),d0
[00060202] 660e                      bne.s      Af_first_fsel_1
[00060204] 204a                      movea.l    a2,a0
[00060206] 203c 4653 454c            move.l     #$4653454C,d0
[0006020c] 4eb9 0007 2bf4            jsr        Ash_getcookie
Af_first_fsel_1:
[00060212] 2012                      move.l     (a2),d0
[00060214] 6700 0080                 beq        Af_first_fsel_2
[00060218] 2213                      move.l     (a3),d1
[0006021a] 6704                      beq.s      Af_first_fsel_3
[0006021c] 6100 ff7a                 bsr        free_multidata
Af_first_fsel_3:
[00060220] 2079 0010 1f12            movea.l    ACSblk,a0
[00060226] 0c68 0001 03e4            cmpi.w     #$0001,996(a0)
[0006022c] 6c04                      bge.s      Af_first_fsel_4
[0006022e] 7601                      moveq.l    #1,d3
[00060230] 600a                      bra.s      Af_first_fsel_5
Af_first_fsel_4:
[00060232] 2079 0010 1f12            movea.l    ACSblk,a0
[00060238] 3628 03e4                 move.w     996(a0),d3
Af_first_fsel_5:
[0006023c] 3003                      move.w     d3,d0
[0006023e] 48c0                      ext.l      d0
[00060240] e588                      lsl.l      #2,d0
[00060242] 4eb9 0004 7f44            jsr        Ax_glmalloc
[00060248] 2688                      move.l     a0,(a3)
[0006024a] 2008                      move.l     a0,d0
[0006024c] 6748                      beq.s      Af_first_fsel_2
[0006024e] 3203                      move.w     d3,d1
[00060250] 48c1                      ext.l      d1
[00060252] e589                      lsl.l      #2,d1
[00060254] 4240                      clr.w      d0
[00060256] 4eb9 0007 712e            jsr        memset
[0006025c] 3743 0004                 move.w     d3,4(a3)
[00060260] 4244                      clr.w      d4
[00060262] 602e                      bra.s      Af_first_fsel_6
Af_first_fsel_8:
[00060264] 7024                      moveq.l    #36,d0
[00060266] 4eb9 0004 7f44            jsr        Ax_glmalloc
[0006026c] 3004                      move.w     d4,d0
[0006026e] 48c0                      ext.l      d0
[00060270] e588                      lsl.l      #2,d0
[00060272] 2253                      movea.l    (a3),a1
[00060274] 2388 0800                 move.l     a0,0(a1,d0.l)
[00060278] 2208                      move.l     a0,d1
[0006027a] 6606                      bne.s      Af_first_fsel_7
[0006027c] 6100 ff1a                 bsr        free_multidata
[00060280] 6014                      bra.s      Af_first_fsel_2
Af_first_fsel_7:
[00060282] 3004                      move.w     d4,d0
[00060284] 48c0                      ext.l      d0
[00060286] e588                      lsl.l      #2,d0
[00060288] 2053                      movea.l    (a3),a0
[0006028a] 2270 0800                 movea.l    0(a0,d0.l),a1
[0006028e] 4211                      clr.b      (a1)
[00060290] 5244                      addq.w     #1,d4
Af_first_fsel_6:
[00060292] b644                      cmp.w      d4,d3
[00060294] 6ece                      bgt.s      Af_first_fsel_8
Af_first_fsel_2:
[00060296] 2012                      move.l     (a2),d0
[00060298] 672e                      beq.s      Af_first_fsel_9
[0006029a] 2213                      move.l     (a3),d1
[0006029c] 6716                      beq.s      Af_first_fsel_10
[0006029e] 2040                      movea.l    d0,a0
[000602a0] 317c 0001 0016            move.w     #$0001,22(a0)
[000602a6] 2052                      movea.l    (a2),a0
[000602a8] 3143 001e                 move.w     d3,30(a0)
[000602ac] 2052                      movea.l    (a2),a0
[000602ae] 2153 0020                 move.l     (a3),32(a0)
[000602b2] 6014                      bra.s      Af_first_fsel_9
Af_first_fsel_10:
[000602b4] 4240                      clr.w      d0
[000602b6] 2052                      movea.l    (a2),a0
[000602b8] 3140 001e                 move.w     d0,30(a0)
[000602bc] 2052                      movea.l    (a2),a0
[000602be] 3140 0016                 move.w     d0,22(a0)
[000602c2] 2052                      movea.l    (a2),a0
[000602c4] 42a8 0020                 clr.l      32(a0)
Af_first_fsel_9:
[000602c8] 2f2f 001c                 move.l     28(a7),-(a7)
[000602cc] 224d                      movea.l    a5,a1
[000602ce] 204c                      movea.l    a4,a0
[000602d0] 6100 fca2                 bsr        Af_select
[000602d4] 584f                      addq.w     #4,a7
[000602d6] 2848                      movea.l    a0,a4
[000602d8] 200c                      move.l     a4,d0
[000602da] 6700 0086                 beq        Af_first_fsel_11
[000602de] 4bf9 0010 75f4            lea.l      multi_opath,a5
[000602e4] 224c                      movea.l    a4,a1
[000602e6] 204d                      movea.l    a5,a0
[000602e8] 4eb9 0007 6950            jsr        strcpy
[000602ee] 2012                      move.l     (a2),d0
[000602f0] 6770                      beq.s      Af_first_fsel_11
[000602f2] 2213                      move.l     (a3),d1
[000602f4] 676c                      beq.s      Af_first_fsel_11
[000602f6] 2041                      movea.l    d1,a0
[000602f8] 2250                      movea.l    (a0),a1
[000602fa] 1411                      move.b     (a1),d2
[000602fc] 6764                      beq.s      Af_first_fsel_11
[000602fe] 204d                      movea.l    a5,a0
[00060300] 4eb9 0007 69b0            jsr        strlen
[00060306] 41f5 0000                 lea.l      0(a5,d0.w),a0
[0006030a] 2b48 0080                 move.l     a0,128(a5)
[0006030e] 705c                      moveq.l    #92,d0
[00060310] 204d                      movea.l    a5,a0
[00060312] 4eb9 0007 68e2            jsr        strrchr
[00060318] 2848                      movea.l    a0,a4
[0006031a] 200c                      move.l     a4,d0
[0006031c] 6726                      beq.s      Af_first_fsel_12
[0006031e] 122c 0001                 move.b     1(a4),d1
[00060322] 6618                      bne.s      Af_first_fsel_13
[00060324] 0c10 003a                 cmpi.b     #$3A,(a0)
[00060328] 671a                      beq.s      Af_first_fsel_12
[0006032a] 4210                      clr.b      (a0)
[0006032c] 204d                      movea.l    a5,a0
[0006032e] 705c                      moveq.l    #92,d0
[00060330] 4eb9 0007 68e2            jsr        strrchr
[00060336] 2848                      movea.l    a0,a4
[00060338] 200c                      move.l     a4,d0
[0006033a] 6708                      beq.s      Af_first_fsel_12
Af_first_fsel_13:
[0006033c] 41ec 0001                 lea.l      1(a4),a0
[00060340] 2b48 0080                 move.l     a0,128(a5)
Af_first_fsel_12:
[00060344] 302b 0006                 move.w     6(a3),d0
[00060348] 48c0                      ext.l      d0
[0006034a] e588                      lsl.l      #2,d0
[0006034c] 2053                      movea.l    (a3),a0
[0006034e] 2270 0800                 movea.l    0(a0,d0.l),a1
[00060352] 206d 0080                 movea.l    128(a5),a0
[00060356] 4eb9 0007 6950            jsr        strcpy
[0006035c] 284d                      movea.l    a5,a4
[0006035e] 526b 0006                 addq.w     #1,6(a3)
Af_first_fsel_11:
[00060362] 204c                      movea.l    a4,a0
[00060364] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00060368] 4e75                      rts

Af_next_fsel:
[0006036a] 2f0a                      move.l     a2,-(a7)
[0006036c] 2f0b                      move.l     a3,-(a7)
[0006036e] 95ca                      suba.l     a2,a2
[00060370] 47f9 000d 58e2            lea.l      multi_idx,a3
[00060376] 202b fffa                 move.l     -6(a3),d0
[0006037a] 6750                      beq.s      Af_next_fsel_1
[0006037c] 3213                      move.w     (a3),d1
[0006037e] b26b fffe                 cmp.w      -2(a3),d1
[00060382] 6c48                      bge.s      Af_next_fsel_1
[00060384] 1439 0010 75f4            move.b     multi_opath,d2
[0006038a] 6740                      beq.s      Af_next_fsel_1
[0006038c] 206b fff6                 movea.l    -10(a3),a0
[00060390] b268 001e                 cmp.w      30(a0),d1
[00060394] 6c0e                      bge.s      Af_next_fsel_2
[00060396] 48c1                      ext.l      d1
[00060398] e589                      lsl.l      #2,d1
[0006039a] 2240                      movea.l    d0,a1
[0006039c] 2071 1800                 movea.l    0(a1,d1.l),a0
[000603a0] 1410                      move.b     (a0),d2
[000603a2] 6606                      bne.s      Af_next_fsel_3
Af_next_fsel_2:
[000603a4] 6100 fdf2                 bsr        free_multidata
[000603a8] 6022                      bra.s      Af_next_fsel_1
Af_next_fsel_3:
[000603aa] 3013                      move.w     (a3),d0
[000603ac] 48c0                      ext.l      d0
[000603ae] e588                      lsl.l      #2,d0
[000603b0] 206b fffa                 movea.l    -6(a3),a0
[000603b4] 2270 0800                 movea.l    0(a0,d0.l),a1
[000603b8] 2079 0010 7674            movea.l    multi_pathend,a0
[000603be] 4eb9 0007 6950            jsr        strcpy
[000603c4] 45f9 0010 75f4            lea.l      multi_opath,a2
[000603ca] 5253                      addq.w     #1,(a3)
Af_next_fsel_1:
[000603cc] 204a                      movea.l    a2,a0
[000603ce] 265f                      movea.l    (a7)+,a3
[000603d0] 245f                      movea.l    (a7)+,a2
[000603d2] 4e75                      rts

Ash_fileSetIcon:
[000603d4] 43f9 000d 5836            lea.l      WI_FILESEL,a1
[000603da] 2348 005a                 move.l     a0,90(a1)
[000603de] 2208                      move.l     a0,d1
[000603e0] 6608                      bne.s      Ash_fileSetIcon_1
[000603e2] 0269 fffc 0054            andi.w     #$FFFC,84(a1)
[000603e8] 4e75                      rts
Ash_fileSetIcon_1:
[000603ea] 0069 0001 0054            ori.w      #$0001,84(a1)
[000603f0] 4a40                      tst.w      d0
[000603f2] 6708                      beq.s      Ash_fileSetIcon_2
[000603f4] 0069 0002 0054            ori.w      #$0002,84(a1)
[000603fa] 4e75                      rts
Ash_fileSetIcon_2:
[000603fc] 0269 fffd 0054            andi.w     #$FFFD,84(a1)
[00060402] 4e75                      rts

Ash_fileselect:
[00060404] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00060408] 514f                      subq.w     #8,a7
[0006040a] 2f48 0004                 move.l     a0,4(a7)
[0006040e] 3600                      move.w     d0,d3
[00060410] 3801                      move.w     d1,d4
[00060412] 2e89                      move.l     a1,(a7)
[00060414] 3a02                      move.w     d2,d5
[00060416] 2a6f 003a                 movea.l    58(a7),a5
[0006041a] 95ca                      suba.l     a2,a2
[0006041c] 264a                      movea.l    a2,a3
[0006041e] 4eb9 0006 0906            jsr        hasFslx
[00060424] 4a40                      tst.w      d0
[00060426] 670e                      beq.s      Ash_fileselect_1
[00060428] 703e                      moveq.l    #62,d0
[0006042a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00060430] 2848                      movea.l    a0,a4
[00060432] 200c                      move.l     a4,d0
[00060434] 6606                      bne.s      Ash_fileselect_2
Ash_fileselect_1:
[00060436] 91c8                      suba.l     a0,a0
[00060438] 6000 0152                 bra        Ash_fileselect_3
Ash_fileselect_2:
[0006043c] 723e                      moveq.l    #62,d1
[0006043e] 4240                      clr.w      d0
[00060440] 204c                      movea.l    a4,a0
[00060442] 4eb9 0007 712e            jsr        memset
[00060448] 28af 0004                 move.l     4(a7),(a4)
[0006044c] 3943 0004                 move.w     d3,4(a4)
[00060450] 3944 0006                 move.w     d4,6(a4)
[00060454] 2957 000c                 move.l     (a7),12(a4)
[00060458] 397c 0080 0010            move.w     #$0080,16(a4)
[0006045e] 296f 0028 0012            move.l     40(a7),18(a4)
[00060464] 397c 0080 0016            move.w     #$0080,22(a4)
[0006046a] 296f 002c 0018            move.l     44(a7),24(a4)
[00060470] 296f 0030 001c            move.l     48(a7),28(a4)
[00060476] 296f 0034 0020            move.l     52(a7),32(a4)
[0006047c] 3945 0024                 move.w     d5,36(a4)
[00060480] 396f 0038 0026            move.w     56(a7),38(a4)
[00060486] 294d 0032                 move.l     a5,50(a4)
[0006048a] 204c                      movea.l    a4,a0
[0006048c] 2279 000d 583e            movea.l    $000D583E,a1
[00060492] 4e91                      jsr        (a1)
[00060494] 2448                      movea.l    a0,a2
[00060496] 200a                      move.l     a2,d0
[00060498] 667a                      bne.s      Ash_fileselect_4
[0006049a] 220d                      move.l     a5,d1
[0006049c] 6600 00a0                 bne        Ash_fileselect_5
[000604a0] 204c                      movea.l    a4,a0
[000604a2] 4eb9 0006 0a34            jsr        fslxCreate
[000604a8] 4a40                      tst.w      d0
[000604aa] 6700 0092                 beq        Ash_fileselect_5
[000604ae] 2f39 000d 99d6            move.l     _globl,-(a7)
[000604b4] 486c 0018                 pea.l      24(a4)
[000604b8] 486c 0030                 pea.l      48(a4)
[000604bc] 486c 002e                 pea.l      46(a4)
[000604c0] 486c 0024                 pea.l      36(a4)
[000604c4] 2f2c 0020                 move.l     32(a4),-(a7)
[000604c8] 2f2c 001c                 move.l     28(a4),-(a7)
[000604cc] 2f2c 0018                 move.l     24(a4),-(a7)
[000604d0] 2f2c 0012                 move.l     18(a4),-(a7)
[000604d4] 342c 0026                 move.w     38(a4),d2
[000604d8] 322c 0016                 move.w     22(a4),d1
[000604dc] 302c 0010                 move.w     16(a4),d0
[000604e0] 226c 000c                 movea.l    12(a4),a1
[000604e4] 2054                      movea.l    (a4),a0
[000604e6] 4eb9 0006 cf80            jsr        mt_fslx_do
[000604ec] 4fef 0024                 lea.l      36(a7),a7
[000604f0] 2948 0028                 move.l     a0,40(a4)
[000604f4] 204c                      movea.l    a4,a0
[000604f6] 4eb9 0006 095e            jsr        fslxMakeListe
[000604fc] 2648                      movea.l    a0,a3
[000604fe] 294b 003a                 move.l     a3,58(a4)
[00060502] 2279 000d 99d6            movea.l    _globl,a1
[00060508] 206c 0028                 movea.l    40(a4),a0
[0006050c] 4eb9 0006 ce22            jsr        mt_fslx_close
[00060512] 602a                      bra.s      Ash_fileselect_5
Ash_fileselect_4:
[00060514] 200d                      move.l     a5,d0
[00060516] 6604                      bne.s      Ash_fileselect_6
[00060518] 7201                      moveq.l    #1,d1
[0006051a] 6002                      bra.s      Ash_fileselect_7
Ash_fileselect_6:
[0006051c] 4241                      clr.w      d1
Ash_fileselect_7:
[0006051e] 3941 002c                 move.w     d1,44(a4)
[00060522] 4a41                      tst.w      d1
[00060524] 6742                      beq.s      Ash_fileselect_8
[00060526] 204a                      movea.l    a2,a0
[00060528] 4eb9 0005 1292            jsr        Awi_dialog
[0006052e] 266c 003a                 movea.l    58(a4),a3
[00060532] 93c9                      suba.l     a1,a1
[00060534] 7002                      moveq.l    #2,d0
[00060536] 204a                      movea.l    a2,a0
[00060538] 2a6a 0004                 movea.l    4(a2),a5
[0006053c] 4e95                      jsr        (a5)
Ash_fileselect_5:
[0006053e] 206c 0018                 movea.l    24(a4),a0
[00060542] 4eb9 0004 7e26            jsr        Ax_free
[00060548] 206c 0012                 movea.l    18(a4),a0
[0006054c] 4eb9 0004 7e26            jsr        Ax_free
[00060552] 206c 000c                 movea.l    12(a4),a0
[00060556] 4eb9 0004 7e26            jsr        Ax_free
[0006055c] 703e                      moveq.l    #62,d0
[0006055e] 204c                      movea.l    a4,a0
[00060560] 4eb9 0004 8140            jsr        Ax_recycle
[00060566] 6022                      bra.s      Ash_fileselect_9
Ash_fileselect_8:
[00060568] 204a                      movea.l    a2,a0
[0006056a] 226a 000c                 movea.l    12(a2),a1
[0006056e] 4e91                      jsr        (a1)
[00060570] 4a40                      tst.w      d0
[00060572] 660a                      bne.s      Ash_fileselect_10
[00060574] 4eb9 0006 2a5e            jsr        Alu_create
[0006057a] 2648                      movea.l    a0,a3
[0006057c] 600c                      bra.s      Ash_fileselect_9
Ash_fileselect_10:
[0006057e] 93c9                      suba.l     a1,a1
[00060580] 7002                      moveq.l    #2,d0
[00060582] 204a                      movea.l    a2,a0
[00060584] 286a 0004                 movea.l    4(a2),a4
[00060588] 4e94                      jsr        (a4)
Ash_fileselect_9:
[0006058a] 204b                      movea.l    a3,a0
Ash_fileselect_3:
[0006058c] 504f                      addq.w     #8,a7
[0006058e] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[00060592] 4e75                      rts

ConvertExt4Use:
[00060594] 48e7 1f36                 movem.l    d3-d7/a2-a3/a5-a6,-(a7)
[00060598] 4fef fefc                 lea.l      -260(a7),a7
[0006059c] 2448                      movea.l    a0,a2
[0006059e] 2c49                      movea.l    a1,a6
[000605a0] 1c00                      move.b     d0,d6
[000605a2] 3801                      move.w     d1,d4
[000605a4] 3a02                      move.w     d2,d5
[000605a6] 3e2f 012c                 move.w     300(a7),d7
[000605aa] 4243                      clr.w      d3
[000605ac] 2049                      movea.l    a1,a0
[000605ae] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000605b4] 4a40                      tst.w      d0
[000605b6] 6730                      beq.s      ConvertExt4Use_1
[000605b8] 4a44                      tst.w      d4
[000605ba] 6610                      bne.s      ConvertExt4Use_2
[000605bc] 14bc 002a                 move.b     #$2A,(a2)
[000605c0] 422a 0001                 clr.b      1(a2)
[000605c4] 422a 0002                 clr.b      2(a2)
[000605c8] 6000 0134                 bra        ConvertExt4Use_3
ConvertExt4Use_2:
[000605cc] 14bc 002a                 move.b     #$2A,(a2)
[000605d0] 157c 002e 0001            move.b     #$2E,1(a2)
[000605d6] 157c 002a 0002            move.b     #$2A,2(a2)
[000605dc] 422a 0003                 clr.b      3(a2)
[000605e0] 422a 0004                 clr.b      4(a2)
[000605e4] 6000 0118                 bra        ConvertExt4Use_3
ConvertExt4Use_1:
[000605e8] 4212                      clr.b      (a2)
[000605ea] 2a4e                      movea.l    a6,a5
[000605ec] 264a                      movea.l    a2,a3
[000605ee] 2f4b 0100                 move.l     a3,256(a7)
[000605f2] 6000 00c8                 bra        ConvertExt4Use_4
ConvertExt4Use_21:
[000605f6] 702c                      moveq.l    #44,d0
[000605f8] 204d                      movea.l    a5,a0
[000605fa] 4eb9 0007 68ce            jsr        strchr
[00060600] 2c48                      movea.l    a0,a6
[00060602] 200e                      move.l     a6,d0
[00060604] 6702                      beq.s      ConvertExt4Use_5
[00060606] 4210                      clr.b      (a0)
ConvertExt4Use_5:
[00060608] 4a44                      tst.w      d4
[0006060a] 670e                      beq.s      ConvertExt4Use_6
[0006060c] 702e                      moveq.l    #46,d0
[0006060e] 204d                      movea.l    a5,a0
[00060610] 4eb9 0007 68ce            jsr        strchr
[00060616] 2008                      move.l     a0,d0
[00060618] 6616                      bne.s      ConvertExt4Use_7
ConvertExt4Use_6:
[0006061a] 2f0d                      move.l     a5,-(a7)
[0006061c] 43f9 000d 5bad            lea.l      $000D5BAD,a1
[00060622] 41ef 0004                 lea.l      4(a7),a0
[00060626] 4eb9 0007 5680            jsr        sprintf
[0006062c] 584f                      addq.w     #4,a7
[0006062e] 600a                      bra.s      ConvertExt4Use_8
ConvertExt4Use_7:
[00060630] 224d                      movea.l    a5,a1
[00060632] 41d7                      lea.l      (a7),a0
[00060634] 4eb9 0007 6950            jsr        strcpy
ConvertExt4Use_8:
[0006063a] 4a45                      tst.w      d5
[0006063c] 6610                      bne.s      ConvertExt4Use_9
[0006063e] 43d7                      lea.l      (a7),a1
[00060640] 206f 0100                 movea.l    256(a7),a0
[00060644] 4eb9 0004 39fe            jsr        Ast_istr
[0006064a] 2008                      move.l     a0,d0
[0006064c] 6622                      bne.s      ConvertExt4Use_10
ConvertExt4Use_9:
[0006064e] 43d7                      lea.l      (a7),a1
[00060650] 204b                      movea.l    a3,a0
[00060652] 4eb9 0007 6950            jsr        strcpy
[00060658] 43f9 000d 5bb2            lea.l      $000D5BB2,a1
[0006065e] 204d                      movea.l    a5,a0
[00060660] 4eb9 0004 3856            jsr        Ast_cmp
[00060666] 4a40                      tst.w      d0
[00060668] 6606                      bne.s      ConvertExt4Use_10
[0006066a] 7601                      moveq.l    #1,d3
[0006066c] 6002                      bra.s      ConvertExt4Use_10
ConvertExt4Use_11:
[0006066e] 524b                      addq.w     #1,a3
ConvertExt4Use_10:
[00060670] 1013                      move.b     (a3),d0
[00060672] 66fa                      bne.s      ConvertExt4Use_11
[00060674] 0c2b 002c ffff            cmpi.b     #$2C,-1(a3)
[0006067a] 6602                      bne.s      ConvertExt4Use_12
[0006067c] 534b                      subq.w     #1,a3
ConvertExt4Use_12:
[0006067e] 200e                      move.l     a6,d0
[00060680] 6708                      beq.s      ConvertExt4Use_13
[00060682] 16fc 002c                 move.b     #$2C,(a3)+
[00060686] 4213                      clr.b      (a3)
[00060688] 600a                      bra.s      ConvertExt4Use_14
ConvertExt4Use_13:
[0006068a] 16c6                      move.b     d6,(a3)+
[0006068c] 4a06                      tst.b      d6
[0006068e] 6604                      bne.s      ConvertExt4Use_14
[00060690] 2f4b 0100                 move.l     a3,256(a7)
ConvertExt4Use_14:
[00060694] 200e                      move.l     a6,d0
[00060696] 670a                      beq.s      ConvertExt4Use_15
[00060698] 1cbc 002c                 move.b     #$2C,(a6)
[0006069c] 2a4e                      movea.l    a6,a5
[0006069e] 6006                      bra.s      ConvertExt4Use_16
ConvertExt4Use_17:
[000606a0] 524d                      addq.w     #1,a5
ConvertExt4Use_15:
[000606a2] 1015                      move.b     (a5),d0
[000606a4] 66fa                      bne.s      ConvertExt4Use_17
ConvertExt4Use_16:
[000606a6] 4a47                      tst.w      d7
[000606a8] 6710                      beq.s      ConvertExt4Use_18
[000606aa] 6002                      bra.s      ConvertExt4Use_19
ConvertExt4Use_20:
[000606ac] 524d                      addq.w     #1,a5
ConvertExt4Use_19:
[000606ae] 1015                      move.b     (a5),d0
[000606b0] 66fa                      bne.s      ConvertExt4Use_20
[000606b2] 122d 0001                 move.b     1(a5),d1
[000606b6] 66f4                      bne.s      ConvertExt4Use_20
[000606b8] 534d                      subq.w     #1,a5
ConvertExt4Use_18:
[000606ba] 524d                      addq.w     #1,a5
ConvertExt4Use_4:
[000606bc] 1015                      move.b     (a5),d0
[000606be] 6600 ff36                 bne        ConvertExt4Use_21
[000606c2] 122d 0001                 move.b     1(a5),d1
[000606c6] 6600 ff2e                 bne        ConvertExt4Use_21
[000606ca] 0c2b 002c ffff            cmpi.b     #$2C,-1(a3)
[000606d0] 6602                      bne.s      ConvertExt4Use_22
[000606d2] 4223                      clr.b      -(a3)
ConvertExt4Use_22:
[000606d4] 4a43                      tst.w      d3
[000606d6] 6622                      bne.s      ConvertExt4Use_23
[000606d8] 4a44                      tst.w      d4
[000606da] 670c                      beq.s      ConvertExt4Use_24
[000606dc] 204a                      movea.l    a2,a0
[000606de] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000606e4] 4a40                      tst.w      d0
[000606e6] 6712                      beq.s      ConvertExt4Use_23
ConvertExt4Use_24:
[000606e8] 16fc 002a                 move.b     #$2A,(a3)+
[000606ec] 4a44                      tst.w      d4
[000606ee] 6708                      beq.s      ConvertExt4Use_25
[000606f0] 16fc 002e                 move.b     #$2E,(a3)+
[000606f4] 16fc 002a                 move.b     #$2A,(a3)+
ConvertExt4Use_25:
[000606f8] 421b                      clr.b      (a3)+
ConvertExt4Use_23:
[000606fa] 421b                      clr.b      (a3)+
[000606fc] 421b                      clr.b      (a3)+
ConvertExt4Use_3:
[000606fe] 204a                      movea.l    a2,a0
[00060700] 4fef 0104                 lea.l      260(a7),a7
[00060704] 4cdf 6cf8                 movem.l    (a7)+,d3-d7/a2-a3/a5-a6
[00060708] 4e75                      rts

ConvertExt2MagiC:
[0006070a] 4267                      clr.w      -(a7)
[0006070c] 7401                      moveq.l    #1,d2
[0006070e] 4241                      clr.w      d1
[00060710] 4200                      clr.b      d0
[00060712] 6100 fe80                 bsr        ConvertExt4Use
[00060716] 544f                      addq.w     #2,a7
[00060718] 4e75                      rts

ConvertExt2TOS:
[0006071a] 2f03                      move.l     d3,-(a7)
[0006071c] 3f04                      move.w     d4,-(a7)
[0006071e] 7601                      moveq.l    #1,d3
[00060720] 4244                      clr.w      d4
[00060722] 3f03                      move.w     d3,-(a7)
[00060724] 3404                      move.w     d4,d2
[00060726] 3203                      move.w     d3,d1
[00060728] 702c                      moveq.l    #44,d0
[0006072a] 6100 fe68                 bsr        ConvertExt4Use
[0006072e] 544f                      addq.w     #2,a7
[00060730] 381f                      move.w     (a7)+,d4
[00060732] 261f                      move.l     (a7)+,d3
[00060734] 4e75                      rts

SingleSelect:
[00060736] 48e7 0038                 movem.l    a2-a4,-(a7)
[0006073a] 4fef ff80                 lea.l      -128(a7),a7
[0006073e] 2848                      movea.l    a0,a4
[00060740] 2649                      movea.l    a1,a3
[00060742] 4eb9 0006 2a5e            jsr        Alu_create
[00060748] 2448                      movea.l    a0,a2
[0006074a] 200a                      move.l     a2,d0
[0006074c] 6738                      beq.s      SingleSelect_1
[0006074e] 226f 0090                 movea.l    144(a7),a1
[00060752] 41d7                      lea.l      (a7),a0
[00060754] 6100 ffc4                 bsr.w      ConvertExt2TOS
[00060758] 4857                      pea.l      (a7)
[0006075a] 224b                      movea.l    a3,a1
[0006075c] 204c                      movea.l    a4,a0
[0006075e] 6100 f814                 bsr        Af_select
[00060762] 584f                      addq.w     #4,a7
[00060764] 2008                      move.l     a0,d0
[00060766] 671e                      beq.s      SingleSelect_1
[00060768] 204b                      movea.l    a3,a0
[0006076a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00060770] 4a40                      tst.w      d0
[00060772] 6612                      bne.s      SingleSelect_1
[00060774] 204b                      movea.l    a3,a0
[00060776] 4eb9 0004 36d6            jsr        Ast_create
[0006077c] 2248                      movea.l    a0,a1
[0006077e] 204a                      movea.l    a2,a0
[00060780] 286a 000c                 movea.l    12(a2),a4
[00060784] 4e94                      jsr        (a4)
SingleSelect_1:
[00060786] 204a                      movea.l    a2,a0
[00060788] 4fef 0080                 lea.l      128(a7),a7
[0006078c] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00060790] 4e75                      rts

MultiSelect:
[00060792] 48e7 0038                 movem.l    a2-a4,-(a7)
[00060796] 4fef ff80                 lea.l      -128(a7),a7
[0006079a] 2848                      movea.l    a0,a4
[0006079c] 2649                      movea.l    a1,a3
[0006079e] 4eb9 0006 2a5e            jsr        Alu_create
[000607a4] 2448                      movea.l    a0,a2
[000607a6] 200a                      move.l     a2,d0
[000607a8] 6742                      beq.s      MultiSelect_1
[000607aa] 226f 0090                 movea.l    144(a7),a1
[000607ae] 41d7                      lea.l      (a7),a0
[000607b0] 6100 ff68                 bsr        ConvertExt2TOS
[000607b4] 4857                      pea.l      (a7)
[000607b6] 224b                      movea.l    a3,a1
[000607b8] 204c                      movea.l    a4,a0
[000607ba] 6100 fa2e                 bsr        Af_first_fsel
[000607be] 584f                      addq.w     #4,a7
[000607c0] 2848                      movea.l    a0,a4
[000607c2] 6024                      bra.s      MultiSelect_2
MultiSelect_4:
[000607c4] 204c                      movea.l    a4,a0
[000607c6] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000607cc] 4a40                      tst.w      d0
[000607ce] 6612                      bne.s      MultiSelect_3
[000607d0] 204c                      movea.l    a4,a0
[000607d2] 4eb9 0004 36d6            jsr        Ast_create
[000607d8] 2248                      movea.l    a0,a1
[000607da] 204a                      movea.l    a2,a0
[000607dc] 266a 000c                 movea.l    12(a2),a3
[000607e0] 4e93                      jsr        (a3)
MultiSelect_3:
[000607e2] 6100 fb86                 bsr        Af_next_fsel
[000607e6] 2848                      movea.l    a0,a4
MultiSelect_2:
[000607e8] 200c                      move.l     a4,d0
[000607ea] 66d8                      bne.s      MultiSelect_4
MultiSelect_1:
[000607ec] 204a                      movea.l    a2,a0
[000607ee] 4fef 0080                 lea.l      128(a7),a7
[000607f2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000607f6] 4e75                      rts

MagiCSelect:
[000607f8] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[000607fc] 4fef fe80                 lea.l      -384(a7),a7
[00060800] 2c48                      movea.l    a0,a6
[00060802] 2a49                      movea.l    a1,a5
[00060804] 3800                      move.w     d0,d4
[00060806] 3601                      move.w     d1,d3
[00060808] 95ca                      suba.l     a2,a2
[0006080a] 47ef 0100                 lea.l      256(a7),a3
[0006080e] 43f9 000d 5bb4            lea.l      $000D5BB4,a1
[00060814] 204b                      movea.l    a3,a0
[00060816] 4eb9 0007 6950            jsr        strcpy
[0006081c] 204d                      movea.l    a5,a0
[0006081e] 4eb9 0004 70f8            jsr        Af_2drv
[00060824] d113                      add.b      d0,(a3)
[00060826] 224d                      movea.l    a5,a1
[00060828] 41eb 0002                 lea.l      2(a3),a0
[0006082c] 4eb9 0004 712c            jsr        Af_2path
[00060832] 49ef 0080                 lea.l      128(a7),a4
[00060836] 224d                      movea.l    a5,a1
[00060838] 204c                      movea.l    a4,a0
[0006083a] 4eb9 0004 7246            jsr        Af_2fullname
[00060840] 43f9 000d 5bb2            lea.l      $000D5BB2,a1
[00060846] 204c                      movea.l    a4,a0
[00060848] 4eb9 0004 38ac            jsr        Ast_icmp
[0006084e] 4a40                      tst.w      d0
[00060850] 6602                      bne.s      MagiCSelect_1
[00060852] 4214                      clr.b      (a4)
MagiCSelect_1:
[00060854] 226f 01a0                 movea.l    416(a7),a1
[00060858] 41d7                      lea.l      (a7),a0
[0006085a] 6100 feae                 bsr        ConvertExt2MagiC
[0006085e] 2a48                      movea.l    a0,a5
[00060860] 2f2f 01a4                 move.l     420(a7),-(a7)
[00060864] 4a43                      tst.w      d3
[00060866] 6704                      beq.s      MagiCSelect_2
[00060868] 7008                      moveq.l    #8,d0
[0006086a] 6002                      bra.s      MagiCSelect_3
MagiCSelect_2:
[0006086c] 4240                      clr.w      d0
MagiCSelect_3:
[0006086e] 3f00                      move.w     d0,-(a7)
[00060870] 42a7                      clr.l      -(a7)
[00060872] 42a7                      clr.l      -(a7)
[00060874] 2f0d                      move.l     a5,-(a7)
[00060876] 4854                      pea.l      (a4)
[00060878] b87c ffff                 cmp.w      #$FFFF,d4
[0006087c] 6d0a                      blt.s      MagiCSelect_4
[0006087e] b87c 0004                 cmp.w      #$0004,d4
[00060882] 6c04                      bge.s      MagiCSelect_4
[00060884] 3404                      move.w     d4,d2
[00060886] 6002                      bra.s      MagiCSelect_5
MagiCSelect_4:
[00060888] 4242                      clr.w      d2
MagiCSelect_5:
[0006088a] 224b                      movea.l    a3,a1
[0006088c] 72ff                      moveq.l    #-1,d1
[0006088e] 70ff                      moveq.l    #-1,d0
[00060890] 204e                      movea.l    a6,a0
[00060892] 6100 fb70                 bsr        Ash_fileselect
[00060896] 4fef 0016                 lea.l      22(a7),a7
[0006089a] 2448                      movea.l    a0,a2
[0006089c] 4fef 0180                 lea.l      384(a7),a7
[000608a0] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[000608a4] 4e75                      rts

Af_fileselect:
[000608a6] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[000608aa] 2a48                      movea.l    a0,a5
[000608ac] 2849                      movea.l    a1,a4
[000608ae] 266f 001c                 movea.l    28(a7),a3
[000608b2] 3800                      move.w     d0,d4
[000608b4] 3601                      move.w     d1,d3
[000608b6] 95ca                      suba.l     a2,a2
[000608b8] 4eb9 0006 0906            jsr        hasFslx
[000608be] 4a40                      tst.w      d0
[000608c0] 6716                      beq.s      Af_fileselect_1
[000608c2] 2f2f 0020                 move.l     32(a7),-(a7)
[000608c6] 2f0b                      move.l     a3,-(a7)
[000608c8] 3203                      move.w     d3,d1
[000608ca] 3004                      move.w     d4,d0
[000608cc] 224c                      movea.l    a4,a1
[000608ce] 204d                      movea.l    a5,a0
[000608d0] 6100 ff26                 bsr        MagiCSelect
[000608d4] 504f                      addq.w     #8,a7
[000608d6] 2448                      movea.l    a0,a2
Af_fileselect_1:
[000608d8] 200a                      move.l     a2,d0
[000608da] 6622                      bne.s      Af_fileselect_2
[000608dc] 4a43                      tst.w      d3
[000608de] 6710                      beq.s      Af_fileselect_3
[000608e0] 2f0b                      move.l     a3,-(a7)
[000608e2] 224c                      movea.l    a4,a1
[000608e4] 204d                      movea.l    a5,a0
[000608e6] 6100 feaa                 bsr        MultiSelect
[000608ea] 584f                      addq.w     #4,a7
[000608ec] 2448                      movea.l    a0,a2
[000608ee] 600e                      bra.s      Af_fileselect_2
Af_fileselect_3:
[000608f0] 2f0b                      move.l     a3,-(a7)
[000608f2] 224c                      movea.l    a4,a1
[000608f4] 204d                      movea.l    a5,a0
[000608f6] 6100 fe3e                 bsr        SingleSelect
[000608fa] 584f                      addq.w     #4,a7
[000608fc] 2448                      movea.l    a0,a2
Af_fileselect_2:
[000608fe] 204a                      movea.l    a2,a0
[00060900] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00060904] 4e75                      rts

hasFslx:
[00060906] 2f0a                      move.l     a2,-(a7)
[00060908] 514f                      subq.w     #8,a7
[0006090a] 45f9 000d 58e8            lea.l      vorhanden,a2
[00060910] 3012                      move.w     (a2),d0
[00060912] 6a3a                      bpl.s      hasFslx_1
[00060914] 2f39 000d 99d6            move.l     _globl,-(a7)
[0006091a] 486f 0004                 pea.l      4(a7)
[0006091e] 486f 000a                 pea.l      10(a7)
[00060922] 43ef 0010                 lea.l      16(a7),a1
[00060926] 41ef 0012                 lea.l      18(a7),a0
[0006092a] 7007                      moveq.l    #7,d0
[0006092c] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[00060932] 4fef 000c                 lea.l      12(a7),a7
[00060936] 4a40                      tst.w      d0
[00060938] 6712                      beq.s      hasFslx_2
[0006093a] 7008                      moveq.l    #8,d0
[0006093c] c06f 0006                 and.w      6(a7),d0
[00060940] 6704                      beq.s      hasFslx_3
[00060942] 7201                      moveq.l    #1,d1
[00060944] 6002                      bra.s      hasFslx_4
hasFslx_3:
[00060946] 4241                      clr.w      d1
hasFslx_4:
[00060948] 3481                      move.w     d1,(a2)
[0006094a] 6002                      bra.s      hasFslx_1
hasFslx_2:
[0006094c] 4252                      clr.w      (a2)
hasFslx_1:
[0006094e] 3012                      move.w     (a2),d0
[00060950] 6704                      beq.s      hasFslx_5
[00060952] 7001                      moveq.l    #1,d0
[00060954] 6002                      bra.s      hasFslx_6
hasFslx_5:
[00060956] 4240                      clr.w      d0
hasFslx_6:
[00060958] 504f                      addq.w     #8,a7
[0006095a] 245f                      movea.l    (a7)+,a2
[0006095c] 4e75                      rts

fslxMakeListe:
[0006095e] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00060962] 2448                      movea.l    a0,a2
[00060964] 202a 003a                 move.l     58(a2),d0
[00060968] 6706                      beq.s      fslxMakeListe_1
[0006096a] 2040                      movea.l    d0,a0
[0006096c] 6000 00c0                 bra        fslxMakeListe_2
fslxMakeListe_1:
[00060970] 4eb9 0006 2a5e            jsr        Alu_create
[00060976] 2648                      movea.l    a0,a3
[00060978] 2548 003a                 move.l     a0,58(a2)
[0006097c] 200b                      move.l     a3,d0
[0006097e] 6700 00ac                 beq        fslxMakeListe_3
[00060982] 322a 002e                 move.w     46(a2),d1
[00060986] 6700 00a4                 beq        fslxMakeListe_3
[0006098a] 4243                      clr.w      d3
[0006098c] 6000 0098                 bra        fslxMakeListe_4
fslxMakeListe_9:
[00060990] 206a 0012                 movea.l    18(a2),a0
[00060994] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0006099a] 4a40                      tst.w      d0
[0006099c] 6660                      bne.s      fslxMakeListe_5
[0006099e] 206a 000c                 movea.l    12(a2),a0
[000609a2] 4eb9 0007 69b0            jsr        strlen
[000609a8] 2800                      move.l     d0,d4
[000609aa] 206a 0012                 movea.l    18(a2),a0
[000609ae] 4eb9 0007 69b0            jsr        strlen
[000609b4] d880                      add.l      d0,d4
[000609b6] 7002                      moveq.l    #2,d0
[000609b8] d084                      add.l      d4,d0
[000609ba] 4eb9 0004 7cc8            jsr        Ax_malloc
[000609c0] 2848                      movea.l    a0,a4
[000609c2] 200c                      move.l     a4,d0
[000609c4] 660a                      bne.s      fslxMakeListe_6
[000609c6] 204b                      movea.l    a3,a0
[000609c8] 4eb9 0006 2aa6            jsr        Alu_delete
[000609ce] 605c                      bra.s      fslxMakeListe_3
fslxMakeListe_6:
[000609d0] 226a 000c                 movea.l    12(a2),a1
[000609d4] 204c                      movea.l    a4,a0
[000609d6] 4eb9 0007 6950            jsr        strcpy
[000609dc] 226a 0012                 movea.l    18(a2),a1
[000609e0] 204c                      movea.l    a4,a0
[000609e2] 4eb9 0007 6886            jsr        strcat
[000609e8] 204c                      movea.l    a4,a0
[000609ea] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000609f0] 4a40                      tst.w      d0
[000609f2] 660a                      bne.s      fslxMakeListe_5
[000609f4] 224c                      movea.l    a4,a1
[000609f6] 204b                      movea.l    a3,a0
[000609f8] 2a6b 000c                 movea.l    12(a3),a5
[000609fc] 4e95                      jsr        (a5)
fslxMakeListe_5:
[000609fe] 0c6a 0001 0030            cmpi.w     #$0001,48(a2)
[00060a04] 6d1a                      blt.s      fslxMakeListe_7
[00060a06] 2f39 000d 99d6            move.l     _globl,-(a7)
[00060a0c] 226a 0012                 movea.l    18(a2),a1
[00060a10] 206a 0028                 movea.l    40(a2),a0
[00060a14] 4eb9 0006 ce7c            jsr        mt_fslx_getnxtfile
[00060a1a] 584f                      addq.w     #4,a7
[00060a1c] 4a40                      tst.w      d0
[00060a1e] 6604                      bne.s      fslxMakeListe_8
fslxMakeListe_7:
[00060a20] 7601                      moveq.l    #1,d3
[00060a22] 6002                      bra.s      fslxMakeListe_4
fslxMakeListe_8:
[00060a24] 4243                      clr.w      d3
fslxMakeListe_4:
[00060a26] 4a43                      tst.w      d3
[00060a28] 6700 ff66                 beq        fslxMakeListe_9
fslxMakeListe_3:
[00060a2c] 204b                      movea.l    a3,a0
fslxMakeListe_2:
[00060a2e] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00060a32] 4e75                      rts

fslxCreate:
[00060a34] 2f0a                      move.l     a2,-(a7)
[00060a36] 2448                      movea.l    a0,a2
[00060a38] 2f39 000d 99d6            move.l     _globl,-(a7)
[00060a3e] 3f2a 0026                 move.w     38(a2),-(a7)
[00060a42] 3f2a 0024                 move.w     36(a2),-(a7)
[00060a46] 2f2a 0020                 move.l     32(a2),-(a7)
[00060a4a] 2f2a 001c                 move.l     28(a2),-(a7)
[00060a4e] 2f2a 0018                 move.l     24(a2),-(a7)
[00060a52] 3f2a 0016                 move.w     22(a2),-(a7)
[00060a56] 2f2a 0012                 move.l     18(a2),-(a7)
[00060a5a] 2f2a 000c                 move.l     12(a2),-(a7)
[00060a5e] 342a 0010                 move.w     16(a2),d2
[00060a62] 226a 0008                 movea.l    8(a2),a1
[00060a66] 322a 0006                 move.w     6(a2),d1
[00060a6a] 302a 0004                 move.w     4(a2),d0
[00060a6e] 2050                      movea.l    (a0),a0
[00060a70] 4eb9 0006 cd6c            jsr        mt_fslx_open
[00060a76] 4fef 001e                 lea.l      30(a7),a7
[00060a7a] 2548 0028                 move.l     a0,40(a2)
[00060a7e] 2008                      move.l     a0,d0
[00060a80] 6704                      beq.s      fslxCreate_1
[00060a82] 7001                      moveq.l    #1,d0
[00060a84] 6002                      bra.s      fslxCreate_2
fslxCreate_1:
[00060a86] 4240                      clr.w      d0
fslxCreate_2:
[00060a88] 245f                      movea.l    (a7)+,a2
[00060a8a] 4e75                      rts

fslxClose:
[00060a8c] 2f0a                      move.l     a2,-(a7)
[00060a8e] 2f0b                      move.l     a3,-(a7)
[00060a90] 2448                      movea.l    a0,a2
[00060a92] 6100 feca                 bsr        fslxMakeListe
[00060a96] 202a 0028                 move.l     40(a2),d0
[00060a9a] 6724                      beq.s      fslxClose_1
[00060a9c] 2279 000d 99d6            movea.l    _globl,a1
[00060aa2] 2040                      movea.l    d0,a0
[00060aa4] 4eb9 0006 ce22            jsr        mt_fslx_close
[00060aaa] 202a 0036                 move.l     54(a2),d0
[00060aae] 6708                      beq.s      fslxClose_2
[00060ab0] 2040                      movea.l    d0,a0
[00060ab2] 4eb9 0005 013e            jsr        Awi_closed
fslxClose_2:
[00060ab8] 42aa 0036                 clr.l      54(a2)
[00060abc] 42aa 0028                 clr.l      40(a2)
fslxClose_1:
[00060ac0] 202a 0032                 move.l     50(a2),d0
[00060ac4] 6722                      beq.s      fslxClose_3
[00060ac6] 226a 003a                 movea.l    58(a2),a1
[00060aca] 2040                      movea.l    d0,a0
[00060acc] 2640                      movea.l    d0,a3
[00060ace] 266b 0004                 movea.l    4(a3),a3
[00060ad2] 7030                      moveq.l    #48,d0
[00060ad4] 4e93                      jsr        (a3)
[00060ad6] 202a 003a                 move.l     58(a2),d0
[00060ada] 670c                      beq.s      fslxClose_3
[00060adc] 2040                      movea.l    d0,a0
[00060ade] 4eb9 0006 2aa6            jsr        Alu_delete
[00060ae4] 42aa 003a                 clr.l      58(a2)
fslxClose_3:
[00060ae8] 7001                      moveq.l    #1,d0
[00060aea] 265f                      movea.l    (a7)+,a3
[00060aec] 245f                      movea.l    (a7)+,a2
[00060aee] 4e75                      rts

fslxMessage:
[00060af0] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00060af4] 554f                      subq.w     #2,a7
[00060af6] 2448                      movea.l    a0,a2
[00060af8] 2649                      movea.l    a1,a3
[00060afa] 226a 0008                 movea.l    8(a2),a1
[00060afe] 3751 0026                 move.w     (a1),38(a3)
[00060b02] 7010                      moveq.l    #16,d0
[00060b04] 4eb9 0005 1e1c            jsr        Awi_update
[00060b0a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00060b10] 486a 0018                 pea.l      24(a2)
[00060b14] 486a 0024                 pea.l      36(a2)
[00060b18] 486f 000c                 pea.l      12(a7)
[00060b1c] 486a 002e                 pea.l      46(a2)
[00060b20] 2f2a 0012                 move.l     18(a2),-(a7)
[00060b24] 2f2a 000c                 move.l     12(a2),-(a7)
[00060b28] 224b                      movea.l    a3,a1
[00060b2a] 206a 0028                 movea.l    40(a2),a0
[00060b2e] 4eb9 0006 cedc            jsr        mt_fslx_evnt
[00060b34] 4fef 001c                 lea.l      28(a7),a7
[00060b38] 3600                      move.w     d0,d3
[00060b3a] 7020                      moveq.l    #32,d0
[00060b3c] 4eb9 0005 1e1c            jsr        Awi_update
[00060b42] 4a43                      tst.w      d3
[00060b44] 660a                      bne.s      fslxMessage_1
[00060b46] 3557 0030                 move.w     (a7),48(a2)
[00060b4a] 204a                      movea.l    a2,a0
[00060b4c] 6100 ff3e                 bsr        fslxClose
fslxMessage_1:
[00060b50] 3003                      move.w     d3,d0
[00060b52] 544f                      addq.w     #2,a7
[00060b54] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00060b58] 4e75                      rts

FileCreate:
[00060b5a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00060b5e] 2448                      movea.l    a0,a2
[00060b60] 97cb                      suba.l     a3,a3
[00060b62] 2008                      move.l     a0,d0
[00060b64] 6700 00d6                 beq        FileCreate_1
[00060b68] 286a 000c                 movea.l    12(a2),a4
[00060b6c] 357c 0080 0010            move.w     #$0080,16(a2)
[00060b72] 302a 0010                 move.w     16(a2),d0
[00060b76] 48c0                      ext.l      d0
[00060b78] 4eb9 0004 7cc8            jsr        Ax_malloc
[00060b7e] 2548 000c                 move.l     a0,12(a2)
[00060b82] 2008                      move.l     a0,d0
[00060b84] 6700 00b6                 beq        FileCreate_1
[00060b88] 224c                      movea.l    a4,a1
[00060b8a] 4eb9 0007 6950            jsr        strcpy
[00060b90] 286a 0012                 movea.l    18(a2),a4
[00060b94] 357c 0080 0016            move.w     #$0080,22(a2)
[00060b9a] 302a 0016                 move.w     22(a2),d0
[00060b9e] 48c0                      ext.l      d0
[00060ba0] 4eb9 0004 7cc8            jsr        Ax_malloc
[00060ba6] 2548 0012                 move.l     a0,18(a2)
[00060baa] 2008                      move.l     a0,d0
[00060bac] 6754                      beq.s      FileCreate_2
[00060bae] 224c                      movea.l    a4,a1
[00060bb0] 4eb9 0007 6950            jsr        strcpy
[00060bb6] 206a 0018                 movea.l    24(a2),a0
[00060bba] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00060bc0] 4a40                      tst.w      d0
[00060bc2] 661c                      bne.s      FileCreate_3
[00060bc4] 7602                      moveq.l    #2,d3
[00060bc6] 286a 0018                 movea.l    24(a2),a4
[00060bca] 6004                      bra.s      FileCreate_4
FileCreate_5:
[00060bcc] 5283                      addq.l     #1,d3
[00060bce] 524c                      addq.w     #1,a4
FileCreate_4:
[00060bd0] 1014                      move.b     (a4),d0
[00060bd2] 66f8                      bne.s      FileCreate_5
[00060bd4] 122c 0001                 move.b     1(a4),d1
[00060bd8] 66f2                      bne.s      FileCreate_5
[00060bda] 286a 0018                 movea.l    24(a2),a4
[00060bde] 6008                      bra.s      FileCreate_6
FileCreate_3:
[00060be0] 7603                      moveq.l    #3,d3
[00060be2] 49f9 000d 5bb7            lea.l      $000D5BB7,a4
FileCreate_6:
[00060be8] 2003                      move.l     d3,d0
[00060bea] 4eb9 0004 7cc8            jsr        Ax_malloc
[00060bf0] 2548 0018                 move.l     a0,24(a2)
[00060bf4] 2008                      move.l     a0,d0
[00060bf6] 6616                      bne.s      FileCreate_7
[00060bf8] 206a 0012                 movea.l    18(a2),a0
[00060bfc] 4eb9 0004 7e26            jsr        Ax_free
FileCreate_2:
[00060c02] 206a 000c                 movea.l    12(a2),a0
[00060c06] 4eb9 0004 7e26            jsr        Ax_free
[00060c0c] 602e                      bra.s      FileCreate_1
FileCreate_7:
[00060c0e] 206a 0018                 movea.l    24(a2),a0
[00060c12] 6006                      bra.s      FileCreate_8
FileCreate_9:
[00060c14] 1094                      move.b     (a4),(a0)
[00060c16] 524c                      addq.w     #1,a4
[00060c18] 5248                      addq.w     #1,a0
FileCreate_8:
[00060c1a] 1014                      move.b     (a4),d0
[00060c1c] 66f6                      bne.s      FileCreate_9
[00060c1e] 122c 0001                 move.b     1(a4),d1
[00060c22] 66f0                      bne.s      FileCreate_9
[00060c24] 4210                      clr.b      (a0)
[00060c26] 4228 0001                 clr.b      1(a0)
[00060c2a] 41f9 000d 5836            lea.l      WI_FILESEL,a0
[00060c30] 4eb9 0004 f41a            jsr        Awi_create
[00060c36] 2648                      movea.l    a0,a3
[00060c38] 200b                      move.l     a3,d0
[00060c3a] 6604                      bne.s      FileCreate_10
FileCreate_1:
[00060c3c] 91c8                      suba.l     a0,a0
[00060c3e] 6030                      bra.s      FileCreate_11
FileCreate_10:
[00060c40] 2052                      movea.l    (a2),a0
[00060c42] 4eb9 0004 36d6            jsr        Ast_create
[00060c48] 2848                      movea.l    a0,a4
[00060c4a] 200c                      move.l     a4,d0
[00060c4c] 670e                      beq.s      FileCreate_12
[00060c4e] 206b 004a                 movea.l    74(a3),a0
[00060c52] 4eb9 0004 371c            jsr        Ast_delete
[00060c58] 274c 004a                 move.l     a4,74(a3)
FileCreate_12:
[00060c5c] 42aa 0028                 clr.l      40(a2)
[00060c60] 41eb 0020                 lea.l      32(a3),a0
[00060c64] 2548 0008                 move.l     a0,8(a2)
[00060c68] 268a                      move.l     a2,(a3)
[00060c6a] 254b 0036                 move.l     a3,54(a2)
[00060c6e] 204b                      movea.l    a3,a0
FileCreate_11:
[00060c70] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00060c74] 4e75                      rts

FileService:
[00060c76] 2f0a                      move.l     a2,-(a7)
[00060c78] 2f0b                      move.l     a3,-(a7)
[00060c7a] 2448                      movea.l    a0,a2
[00060c7c] 2650                      movea.l    (a0),a3
[00060c7e] 3200                      move.w     d0,d1
[00060c80] 5541                      subq.w     #2,d1
[00060c82] 6702                      beq.s      FileService_1
[00060c84] 6062                      bra.s      FileService_2
FileService_1:
[00060c86] 302a 0056                 move.w     86(a2),d0
[00060c8a] c07c 0200                 and.w      #$0200,d0
[00060c8e] 6654                      bne.s      FileService_3
[00060c90] 006a 0200 0056            ori.w      #$0200,86(a2)
[00060c96] 204a                      movea.l    a2,a0
[00060c98] 4eb9 0005 0330            jsr        Awi_delete
[00060c9e] 42ab 0036                 clr.l      54(a3)
[00060ca2] 204b                      movea.l    a3,a0
[00060ca4] 6100 fde6                 bsr        fslxClose
[00060ca8] 302b 002c                 move.w     44(a3),d0
[00060cac] 6636                      bne.s      FileService_3
[00060cae] 222b 003a                 move.l     58(a3),d1
[00060cb2] 6708                      beq.s      FileService_4
[00060cb4] 2041                      movea.l    d1,a0
[00060cb6] 4eb9 0006 2aa6            jsr        Alu_delete
FileService_4:
[00060cbc] 206b 0018                 movea.l    24(a3),a0
[00060cc0] 4eb9 0004 7e26            jsr        Ax_free
[00060cc6] 206b 0012                 movea.l    18(a3),a0
[00060cca] 4eb9 0004 7e26            jsr        Ax_free
[00060cd0] 206b 000c                 movea.l    12(a3),a0
[00060cd4] 4eb9 0004 7e26            jsr        Ax_free
[00060cda] 703e                      moveq.l    #62,d0
[00060cdc] 204b                      movea.l    a3,a0
[00060cde] 4eb9 0004 8140            jsr        Ax_recycle
FileService_3:
[00060ce4] 7001                      moveq.l    #1,d0
[00060ce6] 6002                      bra.s      FileService_5
FileService_2:
[00060ce8] 4240                      clr.w      d0
FileService_5:
[00060cea] 265f                      movea.l    (a7)+,a3
[00060cec] 245f                      movea.l    (a7)+,a2
[00060cee] 4e75                      rts

FileOpen:
[00060cf0] 2f0a                      move.l     a2,-(a7)
[00060cf2] 2f0b                      move.l     a3,-(a7)
[00060cf4] 2448                      movea.l    a0,a2
[00060cf6] 2650                      movea.l    (a0),a3
[00060cf8] 204b                      movea.l    a3,a0
[00060cfa] 6100 fd38                 bsr        fslxCreate
[00060cfe] 4a40                      tst.w      d0
[00060d00] 6770                      beq.s      FileOpen_1
[00060d02] 486a 002a                 pea.l      42(a2)
[00060d06] 486a 0028                 pea.l      40(a2)
[00060d0a] 486a 0026                 pea.l      38(a2)
[00060d0e] 486a 0024                 pea.l      36(a2)
[00060d12] 7205                      moveq.l    #5,d1
[00060d14] 302a 0020                 move.w     32(a2),d0
[00060d18] 4eb9 0007 14ea            jsr        wind_get
[00060d1e] 4fef 0010                 lea.l      16(a7),a7
[00060d22] 486a 003a                 pea.l      58(a2)
[00060d26] 486a 0038                 pea.l      56(a2)
[00060d2a] 486a 0036                 pea.l      54(a2)
[00060d2e] 486a 0034                 pea.l      52(a2)
[00060d32] 7204                      moveq.l    #4,d1
[00060d34] 302a 0020                 move.w     32(a2),d0
[00060d38] 4eb9 0007 14ea            jsr        wind_get
[00060d3e] 4fef 0010                 lea.l      16(a7),a7
[00060d42] 206a 0014                 movea.l    20(a2),a0
[00060d46] 4268 0010                 clr.w      16(a0)
[00060d4a] 206a 0014                 movea.l    20(a2),a0
[00060d4e] 4268 0012                 clr.w      18(a0)
[00060d52] 206a 0014                 movea.l    20(a2),a0
[00060d56] 316a 0038 0014            move.w     56(a2),20(a0)
[00060d5c] 206a 0014                 movea.l    20(a2),a0
[00060d60] 316a 003a 0016            move.w     58(a2),22(a0)
[00060d66] 204a                      movea.l    a2,a0
[00060d68] 4eb9 0004 f9dc            jsr        Awi_register
[00060d6e] 4240                      clr.w      d0
[00060d70] 6002                      bra.s      FileOpen_2
FileOpen_1:
[00060d72] 70ff                      moveq.l    #-1,d0
FileOpen_2:
[00060d74] 265f                      movea.l    (a7)+,a3
[00060d76] 245f                      movea.l    (a7)+,a2
[00060d78] 4e75                      rts

FileClosed:
[00060d7a] 2f0a                      move.l     a2,-(a7)
[00060d7c] 2f0c                      move.l     a4,-(a7)
[00060d7e] 4fef ffc0                 lea.l      -64(a7),a7
[00060d82] 2450                      movea.l    (a0),a2
[00060d84] 41f9 000d 58ea            lea.l      $000D58EA,a0
[00060d8a] 43d7                      lea.l      (a7),a1
[00060d8c] 700f                      moveq.l    #15,d0
FileClosed_1:
[00060d8e] 22d8                      move.l     (a0)+,(a1)+
[00060d90] 51c8 fffc                 dbf        d0,FileClosed_1
[00060d94] 49f9 0010 1f12            lea.l      ACSblk,a4
[00060d9a] 2054                      movea.l    (a4),a0
[00060d9c] 3f68 0262 0002            move.w     610(a0),2(a7)
[00060da2] 3f68 0264 0004            move.w     612(a0),4(a7)
[00060da8] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00060dae] 3028 02ce                 move.w     718(a0),d0
[00060db2] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00060db8] 3f40 0008                 move.w     d0,8(a7)
[00060dbc] 2054                      movea.l    (a4),a0
[00060dbe] 3028 02ce                 move.w     718(a0),d0
[00060dc2] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00060dc8] 3f40 000a                 move.w     d0,10(a7)
[00060dcc] 2054                      movea.l    (a4),a0
[00060dce] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00060dd4] 43d7                      lea.l      (a7),a1
[00060dd6] 204a                      movea.l    a2,a0
[00060dd8] 6100 fd16                 bsr        fslxMessage
[00060ddc] 4fef 0040                 lea.l      64(a7),a7
[00060de0] 285f                      movea.l    (a7)+,a4
[00060de2] 245f                      movea.l    (a7)+,a2
[00060de4] 4e75                      rts

FileRedraw:
[00060de6] 48e7 002c                 movem.l    a2/a4-a5,-(a7)
[00060dea] 4fef ffc0                 lea.l      -64(a7),a7
[00060dee] 2a49                      movea.l    a1,a5
[00060df0] 2450                      movea.l    (a0),a2
[00060df2] 41f9 000d 592a            lea.l      $000D592A,a0
[00060df8] 43d7                      lea.l      (a7),a1
[00060dfa] 700f                      moveq.l    #15,d0
FileRedraw_1:
[00060dfc] 22d8                      move.l     (a0)+,(a1)+
[00060dfe] 51c8 fffc                 dbf        d0,FileRedraw_1
[00060e02] 49f9 0010 1f12            lea.l      ACSblk,a4
[00060e08] 2054                      movea.l    (a4),a0
[00060e0a] 3f68 0262 0002            move.w     610(a0),2(a7)
[00060e10] 3f68 0264 0004            move.w     612(a0),4(a7)
[00060e16] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00060e1c] 3028 02ce                 move.w     718(a0),d0
[00060e20] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00060e26] 3f40 0008                 move.w     d0,8(a7)
[00060e2a] 2054                      movea.l    (a4),a0
[00060e2c] 3028 02ce                 move.w     718(a0),d0
[00060e30] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00060e36] 3f40 000a                 move.w     d0,10(a7)
[00060e3a] 2054                      movea.l    (a4),a0
[00060e3c] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00060e42] 3f55 0028                 move.w     (a5),40(a7)
[00060e46] 3f6d 0002 002a            move.w     2(a5),42(a7)
[00060e4c] 3f6d 0004 002c            move.w     4(a5),44(a7)
[00060e52] 3f6d 0006 002e            move.w     6(a5),46(a7)
[00060e58] 43d7                      lea.l      (a7),a1
[00060e5a] 204a                      movea.l    a2,a0
[00060e5c] 6100 fc92                 bsr        fslxMessage
[00060e60] 4fef 0040                 lea.l      64(a7),a7
[00060e64] 4cdf 3400                 movem.l    (a7)+,a2/a4-a5
[00060e68] 4e75                      rts

FileArrowed:
[00060e6a] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[00060e6e] 4fef ffc0                 lea.l      -64(a7),a7
[00060e72] 3600                      move.w     d0,d3
[00060e74] 2450                      movea.l    (a0),a2
[00060e76] 41f9 000d 596a            lea.l      $000D596A,a0
[00060e7c] 43d7                      lea.l      (a7),a1
[00060e7e] 720f                      moveq.l    #15,d1
FileArrowed_1:
[00060e80] 22d8                      move.l     (a0)+,(a1)+
[00060e82] 51c9 fffc                 dbf        d1,FileArrowed_1
[00060e86] 49f9 0010 1f12            lea.l      ACSblk,a4
[00060e8c] 2054                      movea.l    (a4),a0
[00060e8e] 3f68 0262 0002            move.w     610(a0),2(a7)
[00060e94] 3f68 0264 0004            move.w     612(a0),4(a7)
[00060e9a] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00060ea0] 3028 02ce                 move.w     718(a0),d0
[00060ea4] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00060eaa] 3f40 0008                 move.w     d0,8(a7)
[00060eae] 2054                      movea.l    (a4),a0
[00060eb0] 3028 02ce                 move.w     718(a0),d0
[00060eb4] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00060eba] 3f40 000a                 move.w     d0,10(a7)
[00060ebe] 2054                      movea.l    (a4),a0
[00060ec0] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00060ec6] 3f43 0028                 move.w     d3,40(a7)
[00060eca] 43d7                      lea.l      (a7),a1
[00060ecc] 204a                      movea.l    a2,a0
[00060ece] 6100 fc20                 bsr        fslxMessage
[00060ed2] 4fef 0040                 lea.l      64(a7),a7
[00060ed6] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[00060eda] 4e75                      rts

FileChange:
[00060edc] 2f0a                      move.l     a2,-(a7)
[00060ede] 2f0b                      move.l     a3,-(a7)
[00060ee0] 2448                      movea.l    a0,a2
[00060ee2] 43ea 0034                 lea.l      52(a2),a1
[00060ee6] 266a 006a                 movea.l    106(a2),a3
[00060eea] 4e93                      jsr        (a3)
[00060eec] 265f                      movea.l    (a7)+,a3
[00060eee] 245f                      movea.l    (a7)+,a2
[00060ef0] 4e75                      rts

FileFulled:
[00060ef2] 2f0a                      move.l     a2,-(a7)
[00060ef4] 2f0c                      move.l     a4,-(a7)
[00060ef6] 4fef ffc0                 lea.l      -64(a7),a7
[00060efa] 2450                      movea.l    (a0),a2
[00060efc] 41f9 000d 59aa            lea.l      $000D59AA,a0
[00060f02] 43d7                      lea.l      (a7),a1
[00060f04] 700f                      moveq.l    #15,d0
FileFulled_1:
[00060f06] 22d8                      move.l     (a0)+,(a1)+
[00060f08] 51c8 fffc                 dbf        d0,FileFulled_1
[00060f0c] 49f9 0010 1f12            lea.l      ACSblk,a4
[00060f12] 2054                      movea.l    (a4),a0
[00060f14] 3f68 0262 0002            move.w     610(a0),2(a7)
[00060f1a] 3f68 0264 0004            move.w     612(a0),4(a7)
[00060f20] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00060f26] 3028 02ce                 move.w     718(a0),d0
[00060f2a] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00060f30] 3f40 0008                 move.w     d0,8(a7)
[00060f34] 2054                      movea.l    (a4),a0
[00060f36] 3028 02ce                 move.w     718(a0),d0
[00060f3a] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00060f40] 3f40 000a                 move.w     d0,10(a7)
[00060f44] 2054                      movea.l    (a4),a0
[00060f46] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00060f4c] 43d7                      lea.l      (a7),a1
[00060f4e] 204a                      movea.l    a2,a0
[00060f50] 6100 fb9e                 bsr        fslxMessage
[00060f54] 4fef 0040                 lea.l      64(a7),a7
[00060f58] 285f                      movea.l    (a7)+,a4
[00060f5a] 245f                      movea.l    (a7)+,a2
[00060f5c] 4e75                      rts

FileInit:
[00060f5e] 4240                      clr.w      d0
[00060f60] 4e75                      rts

FileHSlide:
[00060f62] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[00060f66] 4fef ffc0                 lea.l      -64(a7),a7
[00060f6a] 3600                      move.w     d0,d3
[00060f6c] 2450                      movea.l    (a0),a2
[00060f6e] 41f9 000d 59ea            lea.l      $000D59EA,a0
[00060f74] 43d7                      lea.l      (a7),a1
[00060f76] 720f                      moveq.l    #15,d1
FileHSlide_1:
[00060f78] 22d8                      move.l     (a0)+,(a1)+
[00060f7a] 51c9 fffc                 dbf        d1,FileHSlide_1
[00060f7e] 49f9 0010 1f12            lea.l      ACSblk,a4
[00060f84] 2054                      movea.l    (a4),a0
[00060f86] 3f68 0262 0002            move.w     610(a0),2(a7)
[00060f8c] 3f68 0264 0004            move.w     612(a0),4(a7)
[00060f92] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00060f98] 3028 02ce                 move.w     718(a0),d0
[00060f9c] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00060fa2] 3f40 0008                 move.w     d0,8(a7)
[00060fa6] 2054                      movea.l    (a4),a0
[00060fa8] 3028 02ce                 move.w     718(a0),d0
[00060fac] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00060fb2] 3f40 000a                 move.w     d0,10(a7)
[00060fb6] 2054                      movea.l    (a4),a0
[00060fb8] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00060fbe] 3f43 0028                 move.w     d3,40(a7)
[00060fc2] 43d7                      lea.l      (a7),a1
[00060fc4] 204a                      movea.l    a2,a0
[00060fc6] 6100 fb28                 bsr        fslxMessage
[00060fca] 4fef 0040                 lea.l      64(a7),a7
[00060fce] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[00060fd2] 4e75                      rts

FileVSlide:
[00060fd4] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[00060fd8] 4fef ffc0                 lea.l      -64(a7),a7
[00060fdc] 3600                      move.w     d0,d3
[00060fde] 2450                      movea.l    (a0),a2
[00060fe0] 41f9 000d 5a2a            lea.l      $000D5A2A,a0
[00060fe6] 43d7                      lea.l      (a7),a1
[00060fe8] 720f                      moveq.l    #15,d1
FileVSlide_1:
[00060fea] 22d8                      move.l     (a0)+,(a1)+
[00060fec] 51c9 fffc                 dbf        d1,FileVSlide_1
[00060ff0] 49f9 0010 1f12            lea.l      ACSblk,a4
[00060ff6] 2054                      movea.l    (a4),a0
[00060ff8] 3f68 0262 0002            move.w     610(a0),2(a7)
[00060ffe] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061004] 3f68 02ca 0006            move.w     714(a0),6(a7)
[0006100a] 3028 02ce                 move.w     718(a0),d0
[0006100e] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00061014] 3f40 0008                 move.w     d0,8(a7)
[00061018] 2054                      movea.l    (a4),a0
[0006101a] 3028 02ce                 move.w     718(a0),d0
[0006101e] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00061024] 3f40 000a                 move.w     d0,10(a7)
[00061028] 2054                      movea.l    (a4),a0
[0006102a] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061030] 3f43 0028                 move.w     d3,40(a7)
[00061034] 43d7                      lea.l      (a7),a1
[00061036] 204a                      movea.l    a2,a0
[00061038] 6100 fab6                 bsr        fslxMessage
[0006103c] 4fef 0040                 lea.l      64(a7),a7
[00061040] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[00061044] 4e75                      rts

FileKeys:
[00061046] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[0006104a] 4fef ffc0                 lea.l      -64(a7),a7
[0006104e] 3601                      move.w     d1,d3
[00061050] 2450                      movea.l    (a0),a2
[00061052] 41f9 000d 5a6a            lea.l      $000D5A6A,a0
[00061058] 43d7                      lea.l      (a7),a1
[0006105a] 700f                      moveq.l    #15,d0
FileKeys_1:
[0006105c] 22d8                      move.l     (a0)+,(a1)+
[0006105e] 51c8 fffc                 dbf        d0,FileKeys_1
[00061062] 49f9 0010 1f12            lea.l      ACSblk,a4
[00061068] 2054                      movea.l    (a4),a0
[0006106a] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061070] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061076] 3f68 02ca 0006            move.w     714(a0),6(a7)
[0006107c] 3003                      move.w     d3,d0
[0006107e] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00061084] 3f40 0008                 move.w     d0,8(a7)
[00061088] 3003                      move.w     d3,d0
[0006108a] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00061090] 3f40 000a                 move.w     d0,10(a7)
[00061094] 2054                      movea.l    (a4),a0
[00061096] 3f68 02cc 000c            move.w     716(a0),12(a7)
[0006109c] 43d7                      lea.l      (a7),a1
[0006109e] 204a                      movea.l    a2,a0
[000610a0] 6100 fa4e                 bsr        fslxMessage
[000610a4] 4240                      clr.w      d0
[000610a6] 4fef 0040                 lea.l      64(a7),a7
[000610aa] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[000610ae] 4e75                      rts

FileTopped:
[000610b0] 2f0a                      move.l     a2,-(a7)
[000610b2] 2f0c                      move.l     a4,-(a7)
[000610b4] 4fef ffc0                 lea.l      -64(a7),a7
[000610b8] 2450                      movea.l    (a0),a2
[000610ba] 41f9 000d 5aaa            lea.l      $000D5AAA,a0
[000610c0] 43d7                      lea.l      (a7),a1
[000610c2] 700f                      moveq.l    #15,d0
FileTopped_1:
[000610c4] 22d8                      move.l     (a0)+,(a1)+
[000610c6] 51c8 fffc                 dbf        d0,FileTopped_1
[000610ca] 49f9 0010 1f12            lea.l      ACSblk,a4
[000610d0] 2054                      movea.l    (a4),a0
[000610d2] 3f68 0262 0002            move.w     610(a0),2(a7)
[000610d8] 3f68 0264 0004            move.w     612(a0),4(a7)
[000610de] 3f68 02ca 0006            move.w     714(a0),6(a7)
[000610e4] 3028 02ce                 move.w     718(a0),d0
[000610e8] 4eb9 0004 1ede            jsr        nkc_n2kstate
[000610ee] 3f40 0008                 move.w     d0,8(a7)
[000610f2] 2054                      movea.l    (a4),a0
[000610f4] 3028 02ce                 move.w     718(a0),d0
[000610f8] 4eb9 0004 1ec2            jsr        nkc_n2gem
[000610fe] 3f40 000a                 move.w     d0,10(a7)
[00061102] 2054                      movea.l    (a4),a0
[00061104] 3f68 02cc 000c            move.w     716(a0),12(a7)
[0006110a] 43d7                      lea.l      (a7),a1
[0006110c] 204a                      movea.l    a2,a0
[0006110e] 6100 f9e0                 bsr        fslxMessage
[00061112] 4fef 0040                 lea.l      64(a7),a7
[00061116] 285f                      movea.l    (a7)+,a4
[00061118] 245f                      movea.l    (a7)+,a2
[0006111a] 4e75                      rts

FileMoved:
[0006111c] 48e7 0036                 movem.l    a2-a3/a5-a6,-(a7)
[00061120] 4fef ffc0                 lea.l      -64(a7),a7
[00061124] 2448                      movea.l    a0,a2
[00061126] 2c49                      movea.l    a1,a6
[00061128] 2650                      movea.l    (a0),a3
[0006112a] 43f9 000d 5aea            lea.l      $000D5AEA,a1
[00061130] 41d7                      lea.l      (a7),a0
[00061132] 700f                      moveq.l    #15,d0
FileMoved_1:
[00061134] 20d9                      move.l     (a1)+,(a0)+
[00061136] 51c8 fffc                 dbf        d0,FileMoved_1
[0006113a] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00061140] 2055                      movea.l    (a5),a0
[00061142] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061148] 3f68 0264 0004            move.w     612(a0),4(a7)
[0006114e] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061154] 3028 02ce                 move.w     718(a0),d0
[00061158] 4eb9 0004 1ede            jsr        nkc_n2kstate
[0006115e] 3f40 0008                 move.w     d0,8(a7)
[00061162] 2055                      movea.l    (a5),a0
[00061164] 3028 02ce                 move.w     718(a0),d0
[00061168] 4eb9 0004 1ec2            jsr        nkc_n2gem
[0006116e] 3f40 000a                 move.w     d0,10(a7)
[00061172] 2055                      movea.l    (a5),a0
[00061174] 3f68 02cc 000c            move.w     716(a0),12(a7)
[0006117a] 3f56 0028                 move.w     (a6),40(a7)
[0006117e] 3f6e 0002 002a            move.w     2(a6),42(a7)
[00061184] 3f6e 0004 002c            move.w     4(a6),44(a7)
[0006118a] 3f6e 0006 002e            move.w     6(a6),46(a7)
[00061190] 43d7                      lea.l      (a7),a1
[00061192] 204b                      movea.l    a3,a0
[00061194] 6100 f95a                 bsr        fslxMessage
[00061198] 486a 002a                 pea.l      42(a2)
[0006119c] 486a 0028                 pea.l      40(a2)
[000611a0] 486a 0026                 pea.l      38(a2)
[000611a4] 486a 0024                 pea.l      36(a2)
[000611a8] 7205                      moveq.l    #5,d1
[000611aa] 302a 0020                 move.w     32(a2),d0
[000611ae] 4eb9 0007 14ea            jsr        wind_get
[000611b4] 4fef 0010                 lea.l      16(a7),a7
[000611b8] 486a 003a                 pea.l      58(a2)
[000611bc] 486a 0038                 pea.l      56(a2)
[000611c0] 486a 0036                 pea.l      54(a2)
[000611c4] 486a 0034                 pea.l      52(a2)
[000611c8] 7204                      moveq.l    #4,d1
[000611ca] 302a 0020                 move.w     32(a2),d0
[000611ce] 4eb9 0007 14ea            jsr        wind_get
[000611d4] 4fef 0010                 lea.l      16(a7),a7
[000611d8] 206a 0014                 movea.l    20(a2),a0
[000611dc] 316a 0038 0014            move.w     56(a2),20(a0)
[000611e2] 206a 0014                 movea.l    20(a2),a0
[000611e6] 316a 003a 0016            move.w     58(a2),22(a0)
[000611ec] 4fef 0040                 lea.l      64(a7),a7
[000611f0] 4cdf 6c00                 movem.l    (a7)+,a2-a3/a5-a6
[000611f4] 4e75                      rts

FileSized:
[000611f6] 48e7 0036                 movem.l    a2-a3/a5-a6,-(a7)
[000611fa] 4fef ffc0                 lea.l      -64(a7),a7
[000611fe] 2448                      movea.l    a0,a2
[00061200] 2c49                      movea.l    a1,a6
[00061202] 2650                      movea.l    (a0),a3
[00061204] 43f9 000d 5b2a            lea.l      $000D5B2A,a1
[0006120a] 41d7                      lea.l      (a7),a0
[0006120c] 700f                      moveq.l    #15,d0
FileSized_1:
[0006120e] 20d9                      move.l     (a1)+,(a0)+
[00061210] 51c8 fffc                 dbf        d0,FileSized_1
[00061214] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0006121a] 2055                      movea.l    (a5),a0
[0006121c] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061222] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061228] 3f68 02ca 0006            move.w     714(a0),6(a7)
[0006122e] 3028 02ce                 move.w     718(a0),d0
[00061232] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00061238] 3f40 0008                 move.w     d0,8(a7)
[0006123c] 2055                      movea.l    (a5),a0
[0006123e] 3028 02ce                 move.w     718(a0),d0
[00061242] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00061248] 3f40 000a                 move.w     d0,10(a7)
[0006124c] 2055                      movea.l    (a5),a0
[0006124e] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061254] 3f56 0028                 move.w     (a6),40(a7)
[00061258] 3f6e 0002 002a            move.w     2(a6),42(a7)
[0006125e] 3f6e 0004 002c            move.w     4(a6),44(a7)
[00061264] 3f6e 0006 002e            move.w     6(a6),46(a7)
[0006126a] 43d7                      lea.l      (a7),a1
[0006126c] 204b                      movea.l    a3,a0
[0006126e] 6100 f880                 bsr        fslxMessage
[00061272] 486a 002a                 pea.l      42(a2)
[00061276] 486a 0028                 pea.l      40(a2)
[0006127a] 486a 0026                 pea.l      38(a2)
[0006127e] 486a 0024                 pea.l      36(a2)
[00061282] 7205                      moveq.l    #5,d1
[00061284] 302a 0020                 move.w     32(a2),d0
[00061288] 4eb9 0007 14ea            jsr        wind_get
[0006128e] 4fef 0010                 lea.l      16(a7),a7
[00061292] 486a 003a                 pea.l      58(a2)
[00061296] 486a 0038                 pea.l      56(a2)
[0006129a] 486a 0036                 pea.l      54(a2)
[0006129e] 486a 0034                 pea.l      52(a2)
[000612a2] 7204                      moveq.l    #4,d1
[000612a4] 302a 0020                 move.w     32(a2),d0
[000612a8] 4eb9 0007 14ea            jsr        wind_get
[000612ae] 4fef 0010                 lea.l      16(a7),a7
[000612b2] 206a 0014                 movea.l    20(a2),a0
[000612b6] 316a 0038 0014            move.w     56(a2),20(a0)
[000612bc] 206a 0014                 movea.l    20(a2),a0
[000612c0] 316a 003a 0016            move.w     58(a2),22(a0)
[000612c6] 4fef 0040                 lea.l      64(a7),a7
[000612ca] 4cdf 6c00                 movem.l    (a7)+,a2-a3/a5-a6
[000612ce] 4e75                      rts

FileIconify:
[000612d0] 4eb9 0005 0f9c            jsr        Awi_iconify
[000612d6] 4e75                      rts

FileUniconify:
[000612d8] 4eb9 0005 117c            jsr        Awi_uniconify
[000612de] 4e75                      rts

FileGEMScript:
[000612e0] 2f2f 0004                 move.l     4(a7),-(a7)
[000612e4] 4eb9 0005 2328            jsr        Awi_gemscript
[000612ea] 584f                      addq.w     #4,a7
[000612ec] 4e75                      rts

FileClicked:
[000612ee] 2f0a                      move.l     a2,-(a7)
[000612f0] 2f0b                      move.l     a3,-(a7)
[000612f2] 4fef ffc0                 lea.l      -64(a7),a7
[000612f6] 45f9 0010 1f12            lea.l      ACSblk,a2
[000612fc] 2052                      movea.l    (a2),a0
[000612fe] 2268 0258                 movea.l    600(a0),a1
[00061302] 2651                      movea.l    (a1),a3
[00061304] 41f9 000d 5b6a            lea.l      $000D5B6A,a0
[0006130a] 43d7                      lea.l      (a7),a1
[0006130c] 700f                      moveq.l    #15,d0
FileClicked_1:
[0006130e] 22d8                      move.l     (a0)+,(a1)+
[00061310] 51c8 fffc                 dbf        d0,FileClicked_1
[00061314] 2052                      movea.l    (a2),a0
[00061316] 3f68 0262 0002            move.w     610(a0),2(a7)
[0006131c] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061322] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061328] 3028 02ce                 move.w     718(a0),d0
[0006132c] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00061332] 3f40 0008                 move.w     d0,8(a7)
[00061336] 2052                      movea.l    (a2),a0
[00061338] 3028 02ce                 move.w     718(a0),d0
[0006133c] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00061342] 3f40 000a                 move.w     d0,10(a7)
[00061346] 2052                      movea.l    (a2),a0
[00061348] 3f68 02cc 000c            move.w     716(a0),12(a7)
[0006134e] 43d7                      lea.l      (a7),a1
[00061350] 204b                      movea.l    a3,a0
[00061352] 6100 f79c                 bsr        fslxMessage
[00061356] 4fef 0040                 lea.l      64(a7),a7
[0006135a] 265f                      movea.l    (a7)+,a3
[0006135c] 245f                      movea.l    (a7)+,a2
[0006135e] 4e75                      rts

		.data

TEXT_01:
[000d5188]                           dc.b $00
TEXT_02:
[000d5189]                           dc.b $00
TEXT_04:
[000d518a]                           dc.b 'Selector',0
[000d5193]                           dc.b $00
DATAS_03:
[000d5194]                           dc.b $00
[000d5195]                           dc.b $00
[000d5196]                           dc.b $00
[000d5197]                           dc.b $00
[000d5198]                           dc.w $0488
[000d519a]                           dc.w $0fff
[000d519c]                           dc.w $ffff
[000d519e]                           dc.w $fff0
[000d51a0]                           dc.w $0800
[000d51a2]                           dc.b $00
[000d51a3]                           dc.b $00
[000d51a4]                           dc.b $00
[000d51a5]                           dc.b $10
[000d51a6]                           dc.w $0bff
[000d51a8]                           dc.w $ffff
[000d51aa]                           dc.w $ffd0
[000d51ac]                           dc.w $0a00
[000d51ae]                           dc.b $00
[000d51af]                           dc.b $00
[000d51b0]                           dc.b $00
[000d51b1]                           dc.b $50
[000d51b2]                           dc.w $0aff
[000d51b4]                           dc.w $ffff
[000d51b6]                           dc.w $ff50
[000d51b8]                           dc.w $0a00
[000d51ba]                           dc.b $00
[000d51bb]                           dc.b $00
[000d51bc]                           dc.b $00
[000d51bd]                           dc.b $50
[000d51be]                           dc.w $0bff
[000d51c0]                           dc.w $ffff
[000d51c2]                           dc.w $ffd0
[000d51c4]                           dc.w $0a00
[000d51c6]                           dc.b $00
[000d51c7]                           dc.b $00
[000d51c8]                           dc.b $00
[000d51c9]                           dc.b $50
[000d51ca]                           dc.w $0aff
[000d51cc]                           dc.w $ffff
[000d51ce]                           dc.w $ff50
[000d51d0]                           dc.w $0aff
[000d51d2]                           dc.w $ffff
[000d51d4]                           dc.w $ff50
[000d51d6]                           dc.w $0aff
[000d51d8]                           dc.w $ffff
[000d51da]                           dc.w $ff50
[000d51dc]                           dc.w $0aff
[000d51de]                           dc.w $ffff
[000d51e0]                           dc.w $ff50
[000d51e2]                           dc.w $0aff
[000d51e4]                           dc.w $ffff
[000d51e6]                           dc.w $ff50
[000d51e8]                           dc.w $0aff
[000d51ea]                           dc.w $ffff
[000d51ec]                           dc.w $ff50
[000d51ee]                           dc.w $0aff
[000d51f0]                           dc.w $ffff
[000d51f2]                           dc.w $ff50
[000d51f4]                           dc.w $0aff
[000d51f6]                           dc.w $ffff
[000d51f8]                           dc.w $ff50
[000d51fa]                           dc.w $0a00
[000d51fc]                           dc.b $00
[000d51fd]                           dc.b $00
[000d51fe]                           dc.b $00
[000d51ff]                           dc.b $50
[000d5200]                           dc.w $0bff
[000d5202]                           dc.w $ffff
[000d5204]                           dc.w $ffd0
[000d5206]                           dc.w $0bff
[000d5208]                           dc.w $fff0
[000d520a]                           dc.w $2050
[000d520c]                           dc.w $0bff
[000d520e]                           dc.w $fff7
[000d5210]                           dc.w $af50
[000d5212]                           dc.w $0bff
[000d5214]                           dc.w $fff0
[000d5216]                           dc.w $2050
[000d5218]                           dc.w $0bff
[000d521a]                           dc.w $ffff
[000d521c]                           dc.w $ffd0
[000d521e]                           dc.w $0800
[000d5220]                           dc.b $00
[000d5221]                           dc.b $00
[000d5222]                           dc.b $00
[000d5223]                           dc.b $10
[000d5224]                           dc.w $0fff
[000d5226]                           dc.w $ffff
[000d5228]                           dc.w $fff0
[000d522a]                           dc.w $0fff
[000d522c]                           dc.w $ffff
[000d522e]                           dc.w $fff0
[000d5230]                           dc.w $0800
[000d5232]                           dc.b $00
[000d5233]                           dc.b $00
[000d5234]                           dc.b $00
[000d5235]                           dc.b $10
[000d5236]                           dc.w $0bff
[000d5238]                           dc.w $ffff
[000d523a]                           dc.w $ffd0
[000d523c]                           dc.w $0a00
[000d523e]                           dc.b $00
[000d523f]                           dc.b $00
[000d5240]                           dc.b $00
[000d5241]                           dc.b $50
[000d5242]                           dc.w $0aff
[000d5244]                           dc.w $ffff
[000d5246]                           dc.w $ff50
[000d5248]                           dc.w $0a00
[000d524a]                           dc.b $00
[000d524b]                           dc.b $00
[000d524c]                           dc.b $00
[000d524d]                           dc.b $50
[000d524e]                           dc.w $0bff
[000d5250]                           dc.w $ffff
[000d5252]                           dc.w $ffd0
[000d5254]                           dc.w $0a00
[000d5256]                           dc.b $00
[000d5257]                           dc.b $00
[000d5258]                           dc.b $00
[000d5259]                           dc.b $50
[000d525a]                           dc.w $0aff
[000d525c]                           dc.w $ffff
[000d525e]                           dc.w $ff50
[000d5260]                           dc.w $0aff
[000d5262]                           dc.w $ffff
[000d5264]                           dc.w $ff50
[000d5266]                           dc.w $0aff
[000d5268]                           dc.w $ffff
[000d526a]                           dc.w $ff50
[000d526c]                           dc.w $0aff
[000d526e]                           dc.w $ffff
[000d5270]                           dc.w $ff50
[000d5272]                           dc.w $0aff
[000d5274]                           dc.w $ffff
[000d5276]                           dc.w $ff50
[000d5278]                           dc.w $0aff
[000d527a]                           dc.w $ffff
[000d527c]                           dc.w $ff50
[000d527e]                           dc.w $0aff
[000d5280]                           dc.w $ffff
[000d5282]                           dc.w $ff50
[000d5284]                           dc.w $0aff
[000d5286]                           dc.w $ffff
[000d5288]                           dc.w $ff50
[000d528a]                           dc.w $0a00
[000d528c]                           dc.b $00
[000d528d]                           dc.b $00
[000d528e]                           dc.b $00
[000d528f]                           dc.b $50
[000d5290]                           dc.w $0bff
[000d5292]                           dc.w $ffff
[000d5294]                           dc.w $ffd0
[000d5296]                           dc.w $0bff
[000d5298]                           dc.w $fff0
[000d529a]                           dc.w $2050
[000d529c]                           dc.w $0bff
[000d529e]                           dc.w $fff7
[000d52a0]                           dc.w $af50
[000d52a2]                           dc.w $0bff
[000d52a4]                           dc.w $fff0
[000d52a6]                           dc.w $2050
[000d52a8]                           dc.w $0bff
[000d52aa]                           dc.w $ffff
[000d52ac]                           dc.w $ffd0
[000d52ae]                           dc.w $0800
[000d52b0]                           dc.b $00
[000d52b1]                           dc.b $00
[000d52b2]                           dc.b $00
[000d52b3]                           dc.b $10
[000d52b4]                           dc.w $0fff
[000d52b6]                           dc.w $ffff
[000d52b8]                           dc.w $fff0
[000d52ba]                           dc.w $0fff
[000d52bc]                           dc.w $ffff
[000d52be]                           dc.w $fff0
[000d52c0]                           dc.w $0800
[000d52c2]                           dc.b $00
[000d52c3]                           dc.b $00
[000d52c4]                           dc.b $00
[000d52c5]                           dc.b $10
[000d52c6]                           dc.w $0bff
[000d52c8]                           dc.w $ffff
[000d52ca]                           dc.w $ffd0
[000d52cc]                           dc.w $0a00
[000d52ce]                           dc.b $00
[000d52cf]                           dc.b $00
[000d52d0]                           dc.b $00
[000d52d1]                           dc.b $50
[000d52d2]                           dc.w $0aff
[000d52d4]                           dc.w $ffff
[000d52d6]                           dc.w $ff50
[000d52d8]                           dc.w $0a00
[000d52da]                           dc.b $00
[000d52db]                           dc.b $00
[000d52dc]                           dc.b $00
[000d52dd]                           dc.b $50
[000d52de]                           dc.w $0bff
[000d52e0]                           dc.w $ffff
[000d52e2]                           dc.w $ffd0
[000d52e4]                           dc.w $0a00
[000d52e6]                           dc.b $00
[000d52e7]                           dc.b $00
[000d52e8]                           dc.b $00
[000d52e9]                           dc.b $50
[000d52ea]                           dc.w $0aff
[000d52ec]                           dc.w $ffff
[000d52ee]                           dc.w $ff50
[000d52f0]                           dc.w $0aff
[000d52f2]                           dc.w $ffff
[000d52f4]                           dc.w $ff50
[000d52f6]                           dc.w $0aff
[000d52f8]                           dc.w $ffff
[000d52fa]                           dc.w $ff50
[000d52fc]                           dc.w $0aff
[000d52fe]                           dc.w $ffff
[000d5300]                           dc.w $ff50
[000d5302]                           dc.w $0aff
[000d5304]                           dc.w $ffff
[000d5306]                           dc.w $ff50
[000d5308]                           dc.w $0aff
[000d530a]                           dc.w $ffff
[000d530c]                           dc.w $ff50
[000d530e]                           dc.w $0aff
[000d5310]                           dc.w $ffff
[000d5312]                           dc.w $ff50
[000d5314]                           dc.w $0aff
[000d5316]                           dc.w $ffff
[000d5318]                           dc.w $ff50
[000d531a]                           dc.w $0a00
[000d531c]                           dc.b $00
[000d531d]                           dc.b $00
[000d531e]                           dc.b $00
[000d531f]                           dc.b $50
[000d5320]                           dc.w $0bff
[000d5322]                           dc.w $ffff
[000d5324]                           dc.w $ffd0
[000d5326]                           dc.w $0bff
[000d5328]                           dc.w $fff0
[000d532a]                           dc.w $2050
[000d532c]                           dc.w $0bff
[000d532e]                           dc.w $fff7
[000d5330]                           dc.w $af50
[000d5332]                           dc.w $0bff
[000d5334]                           dc.w $fff0
[000d5336]                           dc.w $2050
[000d5338]                           dc.w $0bff
[000d533a]                           dc.w $ffff
[000d533c]                           dc.w $ffd0
[000d533e]                           dc.w $0800
[000d5340]                           dc.b $00
[000d5341]                           dc.b $00
[000d5342]                           dc.b $00
[000d5343]                           dc.b $10
[000d5344]                           dc.w $0fff
[000d5346]                           dc.w $ffff
[000d5348]                           dc.w $fff0
[000d534a]                           dc.w $0fff
[000d534c]                           dc.w $ffff
[000d534e]                           dc.w $fff0
[000d5350]                           dc.w $0800
[000d5352]                           dc.b $00
[000d5353]                           dc.b $00
[000d5354]                           dc.b $00
[000d5355]                           dc.b $10
[000d5356]                           dc.w $0800
[000d5358]                           dc.b $00
[000d5359]                           dc.b $00
[000d535a]                           dc.b $00
[000d535b]                           dc.b $30
[000d535c]                           dc.w $09ff
[000d535e]                           dc.w $ffff
[000d5360]                           dc.w $ffb0
[000d5362]                           dc.w $096d
[000d5364]                           dc.w $b000
[000d5366]                           dc.b $00
[000d5367]                           dc.b $30
[000d5368]                           dc.w $0900
[000d536a]                           dc.b $00
[000d536b]                           dc.b $00
[000d536c]                           dc.b $00
[000d536d]                           dc.b $30
[000d536e]                           dc.w $0800
[000d5370]                           dc.b $00
[000d5371]                           dc.b $00
[000d5372]                           dc.b $00
[000d5373]                           dc.b $30
[000d5374]                           dc.w $09ff
[000d5376]                           dc.w $ffff
[000d5378]                           dc.w $ffb0
[000d537a]                           dc.w $0900
[000d537c]                           dc.b $00
[000d537d]                           dc.b $00
[000d537e]                           dc.b $00
[000d537f]                           dc.b $30
[000d5380]                           dc.w $097f
[000d5382]                           dc.w $f9c6
[000d5384]                           dc.w $de30
[000d5386]                           dc.w $0900
[000d5388]                           dc.b $00
[000d5389]                           dc.b $00
[000d538a]                           dc.b $00
[000d538b]                           dc.b $30
[000d538c]                           dc.w $097f
[000d538e]                           dc.w $e1c6
[000d5390]                           dc.w $de30
[000d5392]                           dc.w $0900
[000d5394]                           dc.b $00
[000d5395]                           dc.b $00
[000d5396]                           dc.b $00
[000d5397]                           dc.b $30
[000d5398]                           dc.w $097f
[000d539a]                           dc.w $f186
[000d539c]                           dc.w $de30
[000d539e]                           dc.w $0900
[000d53a0]                           dc.b $00
[000d53a1]                           dc.b $00
[000d53a2]                           dc.b $00
[000d53a3]                           dc.b $30
[000d53a4]                           dc.w $0900
[000d53a6]                           dc.b $00
[000d53a7]                           dc.b $00
[000d53a8]                           dc.b $00
[000d53a9]                           dc.b $30
[000d53aa]                           dc.w $0900
[000d53ac]                           dc.b $00
[000d53ad]                           dc.b $00
[000d53ae]                           dc.b $00
[000d53af]                           dc.b $30
[000d53b0]                           dc.w $0800
[000d53b2]                           dc.b $00
[000d53b3]                           dc.b $00
[000d53b4]                           dc.b $00
[000d53b5]                           dc.b $30
[000d53b6]                           dc.w $0800
[000d53b8]                           dc.b $00
[000d53b9]                           dc.b $00
[000d53ba]                           dc.b $00
[000d53bb]                           dc.b $30
[000d53bc]                           dc.w $0800
[000d53be]                           dc.b $00
[000d53bf]                           dc.b $03
[000d53c0]                           dc.w $46b0
[000d53c2]                           dc.w $0800
[000d53c4]                           dc.b $00
[000d53c5]                           dc.b $07
[000d53c6]                           dc.w $cfb0
[000d53c8]                           dc.w $0800
[000d53ca]                           dc.b $00
[000d53cb]                           dc.b $00
[000d53cc]                           dc.b $00
[000d53cd]                           dc.b $30
[000d53ce]                           dc.w $0bff
[000d53d0]                           dc.w $ffff
[000d53d2]                           dc.w $fff0
[000d53d4]                           dc.w $0fff
[000d53d6]                           dc.w $ffff
[000d53d8]                           dc.w $fff0
[000d53da]                           dc.w $0fff
[000d53dc]                           dc.w $ffff
[000d53de]                           dc.w $fff0
[000d53e0]                           dc.w $0800
[000d53e2]                           dc.b $00
[000d53e3]                           dc.b $00
[000d53e4]                           dc.b $00
[000d53e5]                           dc.b $10
[000d53e6]                           dc.w $0800
[000d53e8]                           dc.b $00
[000d53e9]                           dc.b $00
[000d53ea]                           dc.b $00
[000d53eb]                           dc.b $10
[000d53ec]                           dc.w $0800
[000d53ee]                           dc.b $00
[000d53ef]                           dc.b $00
[000d53f0]                           dc.b $00
[000d53f1]                           dc.b $10
[000d53f2]                           dc.w $086d
[000d53f4]                           dc.w $b000
[000d53f6]                           dc.b $00
[000d53f7]                           dc.b $10
[000d53f8]                           dc.w $0800
[000d53fa]                           dc.b $00
[000d53fb]                           dc.b $00
[000d53fc]                           dc.b $00
[000d53fd]                           dc.b $10
[000d53fe]                           dc.w $0800
[000d5400]                           dc.b $00
[000d5401]                           dc.b $00
[000d5402]                           dc.b $00
[000d5403]                           dc.b $10
[000d5404]                           dc.w $0800
[000d5406]                           dc.b $00
[000d5407]                           dc.b $00
[000d5408]                           dc.b $00
[000d5409]                           dc.b $10
[000d540a]                           dc.w $0800
[000d540c]                           dc.b $00
[000d540d]                           dc.b $00
[000d540e]                           dc.b $00
[000d540f]                           dc.b $10
[000d5410]                           dc.w $087f
[000d5412]                           dc.w $f9c6
[000d5414]                           dc.w $de10
[000d5416]                           dc.w $0800
[000d5418]                           dc.b $00
[000d5419]                           dc.b $00
[000d541a]                           dc.b $00
[000d541b]                           dc.b $10
[000d541c]                           dc.w $087f
[000d541e]                           dc.w $e1c6
[000d5420]                           dc.w $de10
[000d5422]                           dc.w $0800
[000d5424]                           dc.b $00
[000d5425]                           dc.b $00
[000d5426]                           dc.b $00
[000d5427]                           dc.b $10
[000d5428]                           dc.w $087f
[000d542a]                           dc.w $f186
[000d542c]                           dc.w $de10
[000d542e]                           dc.w $0800
[000d5430]                           dc.b $00
[000d5431]                           dc.b $00
[000d5432]                           dc.b $00
[000d5433]                           dc.b $10
[000d5434]                           dc.w $0800
[000d5436]                           dc.b $00
[000d5437]                           dc.b $00
[000d5438]                           dc.b $00
[000d5439]                           dc.b $10
[000d543a]                           dc.w $0800
[000d543c]                           dc.b $00
[000d543d]                           dc.b $00
[000d543e]                           dc.b $00
[000d543f]                           dc.b $10
[000d5440]                           dc.w $0800
[000d5442]                           dc.b $00
[000d5443]                           dc.b $00
[000d5444]                           dc.b $00
[000d5445]                           dc.b $10
[000d5446]                           dc.w $0800
[000d5448]                           dc.b $00
[000d5449]                           dc.b $00
[000d544a]                           dc.b $00
[000d544b]                           dc.b $10
[000d544c]                           dc.w $0800
[000d544e]                           dc.b $00
[000d544f]                           dc.b $03
[000d5450]                           dc.w $0610
[000d5452]                           dc.w $0800
[000d5454]                           dc.b $00
[000d5455]                           dc.b $00
[000d5456]                           dc.b $00
[000d5457]                           dc.b $10
[000d5458]                           dc.w $0800
[000d545a]                           dc.b $00
[000d545b]                           dc.b $00
[000d545c]                           dc.b $00
[000d545d]                           dc.b $10
[000d545e]                           dc.w $0800
[000d5460]                           dc.b $00
[000d5461]                           dc.b $00
[000d5462]                           dc.b $00
[000d5463]                           dc.b $10
[000d5464]                           dc.w $0fff
[000d5466]                           dc.w $ffff
[000d5468]                           dc.w $fff0
[000d546a]                           dc.w $0fff
[000d546c]                           dc.w $ffff
[000d546e]                           dc.w $fff0
[000d5470]                           dc.w $0800
[000d5472]                           dc.b $00
[000d5473]                           dc.b $00
[000d5474]                           dc.b $00
[000d5475]                           dc.b $10
[000d5476]                           dc.w $0800
[000d5478]                           dc.b $00
[000d5479]                           dc.b $00
[000d547a]                           dc.b $00
[000d547b]                           dc.b $10
[000d547c]                           dc.w $0800
[000d547e]                           dc.b $00
[000d547f]                           dc.b $00
[000d5480]                           dc.b $00
[000d5481]                           dc.b $10
[000d5482]                           dc.w $086d
[000d5484]                           dc.w $b000
[000d5486]                           dc.b $00
[000d5487]                           dc.b $10
[000d5488]                           dc.w $0800
[000d548a]                           dc.b $00
[000d548b]                           dc.b $00
[000d548c]                           dc.b $00
[000d548d]                           dc.b $10
[000d548e]                           dc.w $0800
[000d5490]                           dc.b $00
[000d5491]                           dc.b $00
[000d5492]                           dc.b $00
[000d5493]                           dc.b $10
[000d5494]                           dc.w $0800
[000d5496]                           dc.b $00
[000d5497]                           dc.b $00
[000d5498]                           dc.b $00
[000d5499]                           dc.b $10
[000d549a]                           dc.w $0800
[000d549c]                           dc.b $00
[000d549d]                           dc.b $00
[000d549e]                           dc.b $00
[000d549f]                           dc.b $10
[000d54a0]                           dc.w $087f
[000d54a2]                           dc.w $f9c6
[000d54a4]                           dc.w $de10
[000d54a6]                           dc.w $0800
[000d54a8]                           dc.b $00
[000d54a9]                           dc.b $00
[000d54aa]                           dc.b $00
[000d54ab]                           dc.b $10
[000d54ac]                           dc.w $087f
[000d54ae]                           dc.w $e1c6
[000d54b0]                           dc.w $de10
[000d54b2]                           dc.w $0800
[000d54b4]                           dc.b $00
[000d54b5]                           dc.b $00
[000d54b6]                           dc.b $00
[000d54b7]                           dc.b $10
[000d54b8]                           dc.w $087f
[000d54ba]                           dc.w $f186
[000d54bc]                           dc.w $de10
[000d54be]                           dc.w $0800
[000d54c0]                           dc.b $00
[000d54c1]                           dc.b $00
[000d54c2]                           dc.b $00
[000d54c3]                           dc.b $10
[000d54c4]                           dc.w $0800
[000d54c6]                           dc.b $00
[000d54c7]                           dc.b $00
[000d54c8]                           dc.b $00
[000d54c9]                           dc.b $10
[000d54ca]                           dc.w $0800
[000d54cc]                           dc.b $00
[000d54cd]                           dc.b $00
[000d54ce]                           dc.b $00
[000d54cf]                           dc.b $10
[000d54d0]                           dc.w $0800
[000d54d2]                           dc.b $00
[000d54d3]                           dc.b $00
[000d54d4]                           dc.b $00
[000d54d5]                           dc.b $10
[000d54d6]                           dc.w $0800
[000d54d8]                           dc.b $00
[000d54d9]                           dc.b $00
[000d54da]                           dc.b $00
[000d54db]                           dc.b $10
[000d54dc]                           dc.w $0800
[000d54de]                           dc.b $00
[000d54df]                           dc.b $03
[000d54e0]                           dc.w $0610
[000d54e2]                           dc.w $0800
[000d54e4]                           dc.b $00
[000d54e5]                           dc.b $00
[000d54e6]                           dc.b $00
[000d54e7]                           dc.b $10
[000d54e8]                           dc.w $0800
[000d54ea]                           dc.b $00
[000d54eb]                           dc.b $00
[000d54ec]                           dc.b $00
[000d54ed]                           dc.b $10
[000d54ee]                           dc.w $0800
[000d54f0]                           dc.b $00
[000d54f1]                           dc.b $00
[000d54f2]                           dc.b $00
[000d54f3]                           dc.b $10
[000d54f4]                           dc.w $0fff
[000d54f6]                           dc.w $ffff
[000d54f8]                           dc.w $fff0
[000d54fa]                           dc.w $0fff
[000d54fc]                           dc.w $ffff
[000d54fe]                           dc.w $fff0
[000d5500]                           dc.w $0800
[000d5502]                           dc.b $00
[000d5503]                           dc.b $00
[000d5504]                           dc.b $00
[000d5505]                           dc.b $10
[000d5506]                           dc.w $0800
[000d5508]                           dc.b $00
[000d5509]                           dc.b $00
[000d550a]                           dc.b $00
[000d550b]                           dc.b $10
[000d550c]                           dc.w $0800
[000d550e]                           dc.b $00
[000d550f]                           dc.b $00
[000d5510]                           dc.b $00
[000d5511]                           dc.b $10
[000d5512]                           dc.w $086d
[000d5514]                           dc.w $b000
[000d5516]                           dc.b $00
[000d5517]                           dc.b $10
[000d5518]                           dc.w $0800
[000d551a]                           dc.b $00
[000d551b]                           dc.b $00
[000d551c]                           dc.b $00
[000d551d]                           dc.b $10
[000d551e]                           dc.w $0800
[000d5520]                           dc.b $00
[000d5521]                           dc.b $00
[000d5522]                           dc.b $00
[000d5523]                           dc.b $10
[000d5524]                           dc.w $0800
[000d5526]                           dc.b $00
[000d5527]                           dc.b $00
[000d5528]                           dc.b $00
[000d5529]                           dc.b $10
[000d552a]                           dc.w $0800
[000d552c]                           dc.b $00
[000d552d]                           dc.b $00
[000d552e]                           dc.b $00
[000d552f]                           dc.b $10
[000d5530]                           dc.w $087f
[000d5532]                           dc.w $f9c6
[000d5534]                           dc.w $de10
[000d5536]                           dc.w $0800
[000d5538]                           dc.b $00
[000d5539]                           dc.b $00
[000d553a]                           dc.b $00
[000d553b]                           dc.b $10
[000d553c]                           dc.w $087f
[000d553e]                           dc.w $e1c6
[000d5540]                           dc.w $de10
[000d5542]                           dc.w $0800
[000d5544]                           dc.b $00
[000d5545]                           dc.b $00
[000d5546]                           dc.b $00
[000d5547]                           dc.b $10
[000d5548]                           dc.w $087f
[000d554a]                           dc.w $f186
[000d554c]                           dc.w $de10
[000d554e]                           dc.w $0800
[000d5550]                           dc.b $00
[000d5551]                           dc.b $00
[000d5552]                           dc.b $00
[000d5553]                           dc.b $10
[000d5554]                           dc.w $0800
[000d5556]                           dc.b $00
[000d5557]                           dc.b $00
[000d5558]                           dc.b $00
[000d5559]                           dc.b $10
[000d555a]                           dc.w $0800
[000d555c]                           dc.b $00
[000d555d]                           dc.b $00
[000d555e]                           dc.b $00
[000d555f]                           dc.b $10
[000d5560]                           dc.w $0800
[000d5562]                           dc.b $00
[000d5563]                           dc.b $00
[000d5564]                           dc.b $00
[000d5565]                           dc.b $10
[000d5566]                           dc.w $0800
[000d5568]                           dc.b $00
[000d5569]                           dc.b $00
[000d556a]                           dc.b $00
[000d556b]                           dc.b $10
[000d556c]                           dc.w $0800
[000d556e]                           dc.b $00
[000d556f]                           dc.b $03
[000d5570]                           dc.w $0610
[000d5572]                           dc.w $0800
[000d5574]                           dc.b $00
[000d5575]                           dc.b $00
[000d5576]                           dc.b $00
[000d5577]                           dc.b $10
[000d5578]                           dc.w $0800
[000d557a]                           dc.b $00
[000d557b]                           dc.b $00
[000d557c]                           dc.b $00
[000d557d]                           dc.b $10
[000d557e]                           dc.w $0800
[000d5580]                           dc.b $00
[000d5581]                           dc.b $00
[000d5582]                           dc.b $00
[000d5583]                           dc.b $10
[000d5584]                           dc.w $0fff
[000d5586]                           dc.w $ffff
[000d5588]                           dc.w $fff0
[000d558a]                           dc.w $0fff
[000d558c]                           dc.w $ffff
[000d558e]                           dc.w $fff0
[000d5590]                           dc.w $0800
[000d5592]                           dc.b $00
[000d5593]                           dc.b $00
[000d5594]                           dc.b $00
[000d5595]                           dc.b $10
[000d5596]                           dc.w $0800
[000d5598]                           dc.b $00
[000d5599]                           dc.b $00
[000d559a]                           dc.b $00
[000d559b]                           dc.b $10
[000d559c]                           dc.w $0800
[000d559e]                           dc.b $00
[000d559f]                           dc.b $00
[000d55a0]                           dc.b $00
[000d55a1]                           dc.b $10
[000d55a2]                           dc.w $086d
[000d55a4]                           dc.w $b000
[000d55a6]                           dc.b $00
[000d55a7]                           dc.b $10
[000d55a8]                           dc.w $0800
[000d55aa]                           dc.b $00
[000d55ab]                           dc.b $00
[000d55ac]                           dc.b $00
[000d55ad]                           dc.b $10
[000d55ae]                           dc.w $0800
[000d55b0]                           dc.b $00
[000d55b1]                           dc.b $00
[000d55b2]                           dc.b $00
[000d55b3]                           dc.b $10
[000d55b4]                           dc.w $0800
[000d55b6]                           dc.b $00
[000d55b7]                           dc.b $00
[000d55b8]                           dc.b $00
[000d55b9]                           dc.b $10
[000d55ba]                           dc.w $0800
[000d55bc]                           dc.b $00
[000d55bd]                           dc.b $00
[000d55be]                           dc.b $00
[000d55bf]                           dc.b $10
[000d55c0]                           dc.w $087f
[000d55c2]                           dc.w $f9c6
[000d55c4]                           dc.w $de10
[000d55c6]                           dc.w $0800
[000d55c8]                           dc.b $00
[000d55c9]                           dc.b $00
[000d55ca]                           dc.b $00
[000d55cb]                           dc.b $10
[000d55cc]                           dc.w $087f
[000d55ce]                           dc.w $e1c6
[000d55d0]                           dc.w $de10
[000d55d2]                           dc.w $0800
[000d55d4]                           dc.b $00
[000d55d5]                           dc.b $00
[000d55d6]                           dc.b $00
[000d55d7]                           dc.b $10
[000d55d8]                           dc.w $087f
[000d55da]                           dc.w $f186
[000d55dc]                           dc.w $de10
[000d55de]                           dc.w $0800
[000d55e0]                           dc.b $00
[000d55e1]                           dc.b $00
[000d55e2]                           dc.b $00
[000d55e3]                           dc.b $10
[000d55e4]                           dc.w $0800
[000d55e6]                           dc.b $00
[000d55e7]                           dc.b $00
[000d55e8]                           dc.b $00
[000d55e9]                           dc.b $10
[000d55ea]                           dc.w $0800
[000d55ec]                           dc.b $00
[000d55ed]                           dc.b $00
[000d55ee]                           dc.b $00
[000d55ef]                           dc.b $10
[000d55f0]                           dc.w $0800
[000d55f2]                           dc.b $00
[000d55f3]                           dc.b $00
[000d55f4]                           dc.b $00
[000d55f5]                           dc.b $10
[000d55f6]                           dc.w $0800
[000d55f8]                           dc.b $00
[000d55f9]                           dc.b $00
[000d55fa]                           dc.b $00
[000d55fb]                           dc.b $10
[000d55fc]                           dc.w $0800
[000d55fe]                           dc.b $00
[000d55ff]                           dc.b $03
[000d5600]                           dc.w $0610
[000d5602]                           dc.w $0800
[000d5604]                           dc.b $00
[000d5605]                           dc.b $00
[000d5606]                           dc.b $00
[000d5607]                           dc.b $10
[000d5608]                           dc.w $0800
[000d560a]                           dc.b $00
[000d560b]                           dc.b $00
[000d560c]                           dc.b $00
[000d560d]                           dc.b $10
[000d560e]                           dc.w $0800
[000d5610]                           dc.b $00
[000d5611]                           dc.b $00
[000d5612]                           dc.b $00
[000d5613]                           dc.b $10
[000d5614]                           dc.w $0fff
[000d5616]                           dc.w $ffff
[000d5618]                           dc.w $fff0
DATAS_04:
[000d561a]                           dc.w $0fff
[000d561c]                           dc.w $ffff
[000d561e]                           dc.w $fff0
[000d5620]                           dc.w $0fff
[000d5622]                           dc.w $ffff
[000d5624]                           dc.w $fff0
[000d5626]                           dc.w $0fff
[000d5628]                           dc.w $ffff
[000d562a]                           dc.w $fff0
[000d562c]                           dc.w $0fff
[000d562e]                           dc.w $ffff
[000d5630]                           dc.w $fff0
[000d5632]                           dc.w $0fff
[000d5634]                           dc.w $ffff
[000d5636]                           dc.w $fff0
[000d5638]                           dc.w $0fff
[000d563a]                           dc.w $ffff
[000d563c]                           dc.w $fff0
[000d563e]                           dc.w $0fff
[000d5640]                           dc.w $ffff
[000d5642]                           dc.w $fff0
[000d5644]                           dc.w $0fff
[000d5646]                           dc.w $ffff
[000d5648]                           dc.w $fff0
[000d564a]                           dc.w $0fff
[000d564c]                           dc.w $ffff
[000d564e]                           dc.w $fff0
[000d5650]                           dc.w $0fff
[000d5652]                           dc.w $ffff
[000d5654]                           dc.w $fff0
[000d5656]                           dc.w $0fff
[000d5658]                           dc.w $ffff
[000d565a]                           dc.w $fff0
[000d565c]                           dc.w $0fff
[000d565e]                           dc.w $ffff
[000d5660]                           dc.w $fff0
[000d5662]                           dc.w $0fff
[000d5664]                           dc.w $ffff
[000d5666]                           dc.w $fff0
[000d5668]                           dc.w $0fff
[000d566a]                           dc.w $ffff
[000d566c]                           dc.w $fff0
[000d566e]                           dc.w $0fff
[000d5670]                           dc.w $ffff
[000d5672]                           dc.w $fff0
[000d5674]                           dc.w $0fff
[000d5676]                           dc.w $ffff
[000d5678]                           dc.w $fff0
[000d567a]                           dc.w $0fff
[000d567c]                           dc.w $ffff
[000d567e]                           dc.w $fff0
[000d5680]                           dc.w $0fff
[000d5682]                           dc.w $ffff
[000d5684]                           dc.w $fff0
[000d5686]                           dc.w $0fff
[000d5688]                           dc.w $ffff
[000d568a]                           dc.w $fff0
[000d568c]                           dc.w $0fff
[000d568e]                           dc.w $ffff
[000d5690]                           dc.w $fff0
[000d5692]                           dc.w $0fff
[000d5694]                           dc.w $ffff
[000d5696]                           dc.w $fff0
[000d5698]                           dc.w $0fff
[000d569a]                           dc.w $ffff
[000d569c]                           dc.w $fff0
[000d569e]                           dc.w $0fff
[000d56a0]                           dc.w $ffff
[000d56a2]                           dc.w $fff0
[000d56a4]                           dc.w $0fff
[000d56a6]                           dc.w $ffff
[000d56a8]                           dc.w $fff0
_C8_IC_FILESEL:
[000d56aa]                           dc.b $00
[000d56ab]                           dc.b $08
[000d56ac] 000d519a                  dc.l $000d519a ; no symbol found
[000d56b0] 000d561a                  dc.l DATAS_04
[000d56b4]                           dc.b $00
[000d56b5]                           dc.b $00
[000d56b6]                           dc.b $00
[000d56b7]                           dc.b $00
[000d56b8]                           dc.b $00
[000d56b9]                           dc.b $00
[000d56ba]                           dc.b $00
[000d56bb]                           dc.b $00
[000d56bc]                           dc.b $00
[000d56bd]                           dc.b $00
[000d56be]                           dc.b $00
[000d56bf]                           dc.b $00
_MSK_IC_FILESEL:
[000d56c0]                           dc.w $0fff
[000d56c2]                           dc.w $ffff
[000d56c4]                           dc.w $ffe0
[000d56c6]                           dc.w $0fff
[000d56c8]                           dc.w $ffff
[000d56ca]                           dc.w $fff0
[000d56cc]                           dc.w $0fff
[000d56ce]                           dc.w $ffff
[000d56d0]                           dc.w $fff0
[000d56d2]                           dc.w $0fff
[000d56d4]                           dc.w $ffff
[000d56d6]                           dc.w $fff0
[000d56d8]                           dc.w $0fff
[000d56da]                           dc.w $ffff
[000d56dc]                           dc.w $fff0
[000d56de]                           dc.w $0fff
[000d56e0]                           dc.w $ffff
[000d56e2]                           dc.w $fff0
[000d56e4]                           dc.w $0fff
[000d56e6]                           dc.w $ffff
[000d56e8]                           dc.w $fff0
[000d56ea]                           dc.w $0fff
[000d56ec]                           dc.w $ffff
[000d56ee]                           dc.w $fff0
[000d56f0]                           dc.w $0fff
[000d56f2]                           dc.w $ffff
[000d56f4]                           dc.w $fff0
[000d56f6]                           dc.w $0fff
[000d56f8]                           dc.w $ffff
[000d56fa]                           dc.w $fff0
[000d56fc]                           dc.w $0fff
[000d56fe]                           dc.w $ffff
[000d5700]                           dc.w $fff0
[000d5702]                           dc.w $0fff
[000d5704]                           dc.w $ffff
[000d5706]                           dc.w $fff0
[000d5708]                           dc.w $0fff
[000d570a]                           dc.w $ffff
[000d570c]                           dc.w $fff0
[000d570e]                           dc.w $0fff
[000d5710]                           dc.w $ffff
[000d5712]                           dc.w $fff0
[000d5714]                           dc.w $0fff
[000d5716]                           dc.w $ffff
[000d5718]                           dc.w $fff0
[000d571a]                           dc.w $0fff
[000d571c]                           dc.w $ffff
[000d571e]                           dc.w $fff0
[000d5720]                           dc.w $0fff
[000d5722]                           dc.w $ffff
[000d5724]                           dc.w $fff0
[000d5726]                           dc.w $0fff
[000d5728]                           dc.w $ffff
[000d572a]                           dc.w $fff0
[000d572c]                           dc.w $0fff
[000d572e]                           dc.w $ffff
[000d5730]                           dc.w $fff0
[000d5732]                           dc.w $0fff
[000d5734]                           dc.w $ffff
[000d5736]                           dc.w $fff0
[000d5738]                           dc.w $0fff
[000d573a]                           dc.w $ffff
[000d573c]                           dc.w $fff0
[000d573e]                           dc.w $0fff
[000d5740]                           dc.w $ffff
[000d5742]                           dc.w $fff0
[000d5744]                           dc.w $0fff
[000d5746]                           dc.w $ffff
[000d5748]                           dc.w $fff0
[000d574a]                           dc.w $07ff
[000d574c]                           dc.w $ffff
[000d574e]                           dc.w $fff0
_DAT_IC_FILESEL:
[000d5750]                           dc.w $0fff
[000d5752]                           dc.w $ffff
[000d5754]                           dc.w $ffe0
[000d5756]                           dc.w $0800
[000d5758]                           dc.b $00
[000d5759]                           dc.b $00
[000d575a]                           dc.b $00
[000d575b]                           dc.b $30
[000d575c]                           dc.w $0bff
[000d575e]                           dc.w $ffff
[000d5760]                           dc.w $ffb0
[000d5762]                           dc.w $0adb
[000d5764]                           dc.b $00
[000d5765]                           dc.b $00
[000d5766]                           dc.b $00
[000d5767]                           dc.b $b0
[000d5768]                           dc.w $0bff
[000d576a]                           dc.w $ffff
[000d576c]                           dc.w $ffb0
[000d576e]                           dc.w $0800
[000d5770]                           dc.b $00
[000d5771]                           dc.b $00
[000d5772]                           dc.b $00
[000d5773]                           dc.b $30
[000d5774]                           dc.w $0bff
[000d5776]                           dc.w $ffff
[000d5778]                           dc.w $ffb0
[000d577a]                           dc.w $0a00
[000d577c]                           dc.b $00
[000d577d]                           dc.b $00
[000d577e]                           dc.b $00
[000d577f]                           dc.b $b0
[000d5780]                           dc.w $0aff
[000d5782]                           dc.w $f386
[000d5784]                           dc.w $deb0
[000d5786]                           dc.w $0a00
[000d5788]                           dc.b $00
[000d5789]                           dc.b $00
[000d578a]                           dc.b $00
[000d578b]                           dc.b $b0
[000d578c]                           dc.w $0aff
[000d578e]                           dc.w $c386
[000d5790]                           dc.w $deb0
[000d5792]                           dc.w $0a00
[000d5794]                           dc.b $00
[000d5795]                           dc.b $00
[000d5796]                           dc.b $00
[000d5797]                           dc.b $b0
[000d5798]                           dc.w $0aff
[000d579a]                           dc.w $e306
[000d579c]                           dc.w $deb0
[000d579e]                           dc.w $0a00
[000d57a0]                           dc.b $00
[000d57a1]                           dc.b $00
[000d57a2]                           dc.b $00
[000d57a3]                           dc.b $b0
[000d57a4]                           dc.w $0af7
[000d57a6]                           dc.w $8386
[000d57a8]                           dc.w $deb0
[000d57aa]                           dc.w $0a00
[000d57ac]                           dc.b $00
[000d57ad]                           dc.b $00
[000d57ae]                           dc.b $00
[000d57af]                           dc.b $b0
[000d57b0]                           dc.w $0bff
[000d57b2]                           dc.w $ffff
[000d57b4]                           dc.w $ffb0
[000d57b6]                           dc.w $0800
[000d57b8]                           dc.b $00
[000d57b9]                           dc.b $00
[000d57ba]                           dc.b $00
[000d57bb]                           dc.b $30
[000d57bc]                           dc.w $0800
[000d57be]                           dc.b $00
[000d57bf]                           dc.b $0f
[000d57c0]                           dc.w $dfb0
[000d57c2]                           dc.w $0800
[000d57c4]                           dc.b $00
[000d57c5]                           dc.b $0b
[000d57c6]                           dc.w $56b0
[000d57c8]                           dc.w $0800
[000d57ca]                           dc.b $00
[000d57cb]                           dc.b $0f
[000d57cc]                           dc.w $dfb0
[000d57ce]                           dc.w $0800
[000d57d0]                           dc.b $00
[000d57d1]                           dc.b $00
[000d57d2]                           dc.b $00
[000d57d3]                           dc.b $30
[000d57d4]                           dc.w $0fff
[000d57d6]                           dc.w $ffff
[000d57d8]                           dc.w $fff0
[000d57da]                           dc.w $07ff
[000d57dc]                           dc.w $ffff
[000d57de]                           dc.w $fff0
IC_FILESEL:
[000d57e0] 000d56c0                  dc.l _MSK_IC_FILESEL
[000d57e4] 000d5750                  dc.l _DAT_IC_FILESEL
[000d57e8] 000d518a                  dc.l TEXT_04
[000d57ec]                           dc.w $1000
[000d57ee]                           dc.b $00
[000d57ef]                           dc.b $00
[000d57f0]                           dc.b $00
[000d57f1]                           dc.b $00
[000d57f2]                           dc.b $00
[000d57f3]                           dc.b $00
[000d57f4]                           dc.b $00
[000d57f5]                           dc.b $00
[000d57f6]                           dc.b $00
[000d57f7]                           dc.b $30
[000d57f8]                           dc.b $00
[000d57f9]                           dc.b $18
[000d57fa]                           dc.b $00
[000d57fb]                           dc.b $00
[000d57fc]                           dc.b $00
[000d57fd]                           dc.b $18
[000d57fe]                           dc.b $00
[000d57ff]                           dc.b $30
[000d5800]                           dc.b $00
[000d5801]                           dc.b $08
[000d5802] 000d56aa                  dc.l _C8_IC_FILESEL
OB_FILESEL:
[000d5806]                           dc.w $ffff
[000d5808]                           dc.w $ffff
[000d580a]                           dc.w $ffff
[000d580c]                           dc.b $00
[000d580d]                           dc.b $14
[000d580e]                           dc.b $00
[000d580f]                           dc.b $40
[000d5810]                           dc.b $00
[000d5811]                           dc.b $00
[000d5812]                           dc.b $00
[000d5813]                           dc.b $02
[000d5814]                           dc.w $1100
[000d5816]                           dc.b $00
[000d5817]                           dc.b $00
[000d5818]                           dc.b $00
[000d5819]                           dc.b $00
[000d581a]                           dc.b $00
[000d581b]                           dc.b $28
[000d581c]                           dc.b $00
[000d581d]                           dc.b $17
_00aOB_FILESEL:
[000d581e] 000612ee                  dc.l FileClicked
[000d5822]                           dc.b $00
[000d5823]                           dc.b $00
[000d5824]                           dc.b $00
[000d5825]                           dc.b $00
[000d5826]                           dc.w $8020
[000d5828]                           dc.b $00
[000d5829]                           dc.b $00
[000d582a]                           dc.b $00
[000d582b]                           dc.b $00
[000d582c]                           dc.b $00
[000d582d]                           dc.b $00
[000d582e]                           dc.b $00
[000d582f]                           dc.b $00
[000d5830]                           dc.b $00
[000d5831]                           dc.b $00
[000d5832]                           dc.b $00
[000d5833]                           dc.b $00
[000d5834]                           dc.b $00
[000d5835]                           dc.b $00
WI_FILESEL:
[000d5836]                           dc.b $00
[000d5837]                           dc.b $00
[000d5838]                           dc.b $00
[000d5839]                           dc.b $00
[000d583a] 00060c76                  dc.l FileService
[000d583e] 00060b5a                  dc.l FileCreate
[000d5842] 00060cf0                  dc.l FileOpen
[000d5846] 00060f5e                  dc.l FileInit
[000d584a] 000d5806                  dc.l OB_FILESEL
[000d584e]                           dc.b $00
[000d584f]                           dc.b $00
[000d5850]                           dc.b $00
[000d5851]                           dc.b $00
[000d5852]                           dc.b $00
[000d5853]                           dc.b $00
[000d5854]                           dc.b $00
[000d5855]                           dc.b $00
[000d5856]                           dc.w $ffff
[000d5858]                           dc.w $2009
[000d585a]                           dc.b $00
[000d585b]                           dc.b $00
[000d585c]                           dc.b $00
[000d585d]                           dc.b $00
[000d585e]                           dc.b $00
[000d585f]                           dc.b $78
[000d5860]                           dc.b $00
[000d5861]                           dc.b $32
[000d5862]                           dc.b $00
[000d5863]                           dc.b $00
[000d5864]                           dc.b $00
[000d5865]                           dc.b $00
[000d5866]                           dc.b $00
[000d5867]                           dc.b $00
[000d5868]                           dc.b $00
[000d5869]                           dc.b $00
[000d586a]                           dc.b $00
[000d586b]                           dc.b $00
[000d586c]                           dc.b $00
[000d586d]                           dc.b $00
[000d586e]                           dc.b $00
[000d586f]                           dc.b $00
[000d5870]                           dc.b $00
[000d5871]                           dc.b $00
[000d5872]                           dc.w $ffff
[000d5874]                           dc.w $ffff
[000d5876]                           dc.w $ffff
[000d5878]                           dc.w $ffff
[000d587a]                           dc.b $00
[000d587b]                           dc.b $00
[000d587c]                           dc.b $00
[000d587d]                           dc.b $00
[000d587e]                           dc.w $f8f8
[000d5880] 000d5188                  dc.l TEXT_01
[000d5884] 000d5189                  dc.l TEXT_02
[000d5888]                           dc.b $00
[000d5889]                           dc.b $00
[000d588a]                           dc.b $00
[000d588b]                           dc.b $00
[000d588c]                           dc.b $00
[000d588d]                           dc.b $00
[000d588e]                           dc.w $ffff
[000d5890] 000d57e0                  dc.l IC_FILESEL
[000d5894]                           dc.b $00
[000d5895]                           dc.b $00
[000d5896]                           dc.b $00
[000d5897]                           dc.b $00
[000d5898] 00061046                  dc.l FileKeys
[000d589c] 00060edc                  dc.l FileChange
[000d58a0] 00060de6                  dc.l FileRedraw
[000d58a4] 000610b0                  dc.l FileTopped
[000d58a8] 00060d7a                  dc.l FileClosed
[000d58ac] 00060ef2                  dc.l FileFulled
[000d58b0] 00060e6a                  dc.l FileArrowed
[000d58b4] 00060f62                  dc.l FileHSlide
[000d58b8] 00060fd4                  dc.l FileVSlide
[000d58bc] 000611f6                  dc.l FileSized
[000d58c0] 0006111c                  dc.l FileMoved
[000d58c4] 000612d0                  dc.l FileIconify
[000d58c8] 000612d8                  dc.l FileUniconify
[000d58cc] 000612e0                  dc.l FileGEMScript
[000d58d0]                           dc.b $00
[000d58d1]                           dc.b $00
[000d58d2]                           dc.b $00
[000d58d3]                           dc.b $00
[000d58d4]                           dc.b $00
[000d58d5]                           dc.b $00
[000d58d6]                           dc.b $00
[000d58d7]                           dc.b $00
multi_cook:
[000d58d8]                           dc.b $00
[000d58d9]                           dc.b $00
[000d58da]                           dc.b $00
[000d58db]                           dc.b $00
multi_files:
[000d58dc]                           dc.b $00
[000d58dd]                           dc.b $00
[000d58de]                           dc.b $00
[000d58df]                           dc.b $00
multi_count:
[000d58e0]                           dc.b $00
[000d58e1]                           dc.b $00
multi_idx:
[000d58e2]                           dc.b $00
[000d58e3]                           dc.b $00
bkhndler:
[000d58e4]                           dc.b $00
[000d58e5]                           dc.b $00
[000d58e6]                           dc.b $00
[000d58e7]                           dc.b $00
vorhanden:
[000d58e8]                           dc.w $ffff
[000d58ea]                           dc.b $00
[000d58eb]                           dc.b $10
[000d58ec]                           dc.b $00
[000d58ed]                           dc.b $00
[000d58ee]                           dc.b $00
[000d58ef]                           dc.b $00
[000d58f0]                           dc.b $00
[000d58f1]                           dc.b $00
[000d58f2]                           dc.b $00
[000d58f3]                           dc.b $00
[000d58f4]                           dc.b $00
[000d58f5]                           dc.b $00
[000d58f6]                           dc.b $00
[000d58f7]                           dc.b $00
[000d58f8]                           dc.b $00
[000d58f9]                           dc.b $00
[000d58fa]                           dc.b $00
[000d58fb]                           dc.b $00
[000d58fc]                           dc.b $00
[000d58fd]                           dc.b $00
[000d58fe]                           dc.b $00
[000d58ff]                           dc.b $00
[000d5900]                           dc.b $00
[000d5901]                           dc.b $00
[000d5902]                           dc.b $00
[000d5903]                           dc.b $00
[000d5904]                           dc.b $00
[000d5905]                           dc.b $00
[000d5906]                           dc.b $00
[000d5907]                           dc.b $00
[000d5908]                           dc.b $00
[000d5909]                           dc.b $00
[000d590a]                           dc.b $00
[000d590b]                           dc.b $16
[000d590c]                           dc.b $00
[000d590d]                           dc.b $01
[000d590e]                           dc.b $00
[000d590f]                           dc.b $00
[000d5910]                           dc.b $00
[000d5911]                           dc.b $00
[000d5912]                           dc.b $00
[000d5913]                           dc.b $00
[000d5914]                           dc.b $00
[000d5915]                           dc.b $00
[000d5916]                           dc.b $00
[000d5917]                           dc.b $00
[000d5918]                           dc.b $00
[000d5919]                           dc.b $00
[000d591a]                           dc.b $00
[000d591b]                           dc.b $00
[000d591c]                           dc.b $00
[000d591d]                           dc.b $00
[000d591e]                           dc.b $00
[000d591f]                           dc.b $00
[000d5920]                           dc.b $00
[000d5921]                           dc.b $00
[000d5922]                           dc.b $00
[000d5923]                           dc.b $00
[000d5924]                           dc.b $00
[000d5925]                           dc.b $00
[000d5926]                           dc.b $00
[000d5927]                           dc.b $00
[000d5928]                           dc.b $00
[000d5929]                           dc.b $00
[000d592a]                           dc.b $00
[000d592b]                           dc.b $10
[000d592c]                           dc.b $00
[000d592d]                           dc.b $00
[000d592e]                           dc.b $00
[000d592f]                           dc.b $00
[000d5930]                           dc.b $00
[000d5931]                           dc.b $00
[000d5932]                           dc.b $00
[000d5933]                           dc.b $00
[000d5934]                           dc.b $00
[000d5935]                           dc.b $00
[000d5936]                           dc.b $00
[000d5937]                           dc.b $00
[000d5938]                           dc.b $00
[000d5939]                           dc.b $00
[000d593a]                           dc.b $00
[000d593b]                           dc.b $00
[000d593c]                           dc.b $00
[000d593d]                           dc.b $00
[000d593e]                           dc.b $00
[000d593f]                           dc.b $00
[000d5940]                           dc.b $00
[000d5941]                           dc.b $00
[000d5942]                           dc.b $00
[000d5943]                           dc.b $00
[000d5944]                           dc.b $00
[000d5945]                           dc.b $00
[000d5946]                           dc.b $00
[000d5947]                           dc.b $00
[000d5948]                           dc.b $00
[000d5949]                           dc.b $00
[000d594a]                           dc.b $00
[000d594b]                           dc.b $14
[000d594c]                           dc.b $00
[000d594d]                           dc.b $01
[000d594e]                           dc.b $00
[000d594f]                           dc.b $00
[000d5950]                           dc.b $00
[000d5951]                           dc.b $00
[000d5952]                           dc.b $00
[000d5953]                           dc.b $00
[000d5954]                           dc.b $00
[000d5955]                           dc.b $00
[000d5956]                           dc.b $00
[000d5957]                           dc.b $00
[000d5958]                           dc.b $00
[000d5959]                           dc.b $00
[000d595a]                           dc.b $00
[000d595b]                           dc.b $00
[000d595c]                           dc.b $00
[000d595d]                           dc.b $00
[000d595e]                           dc.b $00
[000d595f]                           dc.b $00
[000d5960]                           dc.b $00
[000d5961]                           dc.b $00
[000d5962]                           dc.b $00
[000d5963]                           dc.b $00
[000d5964]                           dc.b $00
[000d5965]                           dc.b $00
[000d5966]                           dc.b $00
[000d5967]                           dc.b $00
[000d5968]                           dc.b $00
[000d5969]                           dc.b $00
[000d596a]                           dc.b $00
[000d596b]                           dc.b $10
[000d596c]                           dc.b $00
[000d596d]                           dc.b $00
[000d596e]                           dc.b $00
[000d596f]                           dc.b $00
[000d5970]                           dc.b $00
[000d5971]                           dc.b $00
[000d5972]                           dc.b $00
[000d5973]                           dc.b $00
[000d5974]                           dc.b $00
[000d5975]                           dc.b $00
[000d5976]                           dc.b $00
[000d5977]                           dc.b $00
[000d5978]                           dc.b $00
[000d5979]                           dc.b $00
[000d597a]                           dc.b $00
[000d597b]                           dc.b $00
[000d597c]                           dc.b $00
[000d597d]                           dc.b $00
[000d597e]                           dc.b $00
[000d597f]                           dc.b $00
[000d5980]                           dc.b $00
[000d5981]                           dc.b $00
[000d5982]                           dc.b $00
[000d5983]                           dc.b $00
[000d5984]                           dc.b $00
[000d5985]                           dc.b $00
[000d5986]                           dc.b $00
[000d5987]                           dc.b $00
[000d5988]                           dc.b $00
[000d5989]                           dc.b $00
[000d598a]                           dc.b $00
[000d598b]                           dc.b $18
[000d598c]                           dc.b $00
[000d598d]                           dc.b $01
[000d598e]                           dc.b $00
[000d598f]                           dc.b $00
[000d5990]                           dc.b $00
[000d5991]                           dc.b $00
[000d5992]                           dc.b $00
[000d5993]                           dc.b $00
[000d5994]                           dc.b $00
[000d5995]                           dc.b $00
[000d5996]                           dc.b $00
[000d5997]                           dc.b $00
[000d5998]                           dc.b $00
[000d5999]                           dc.b $00
[000d599a]                           dc.b $00
[000d599b]                           dc.b $00
[000d599c]                           dc.b $00
[000d599d]                           dc.b $00
[000d599e]                           dc.b $00
[000d599f]                           dc.b $00
[000d59a0]                           dc.b $00
[000d59a1]                           dc.b $00
[000d59a2]                           dc.b $00
[000d59a3]                           dc.b $00
[000d59a4]                           dc.b $00
[000d59a5]                           dc.b $00
[000d59a6]                           dc.b $00
[000d59a7]                           dc.b $00
[000d59a8]                           dc.b $00
[000d59a9]                           dc.b $00
[000d59aa]                           dc.b $00
[000d59ab]                           dc.b $10
[000d59ac]                           dc.b $00
[000d59ad]                           dc.b $00
[000d59ae]                           dc.b $00
[000d59af]                           dc.b $00
[000d59b0]                           dc.b $00
[000d59b1]                           dc.b $00
[000d59b2]                           dc.b $00
[000d59b3]                           dc.b $00
[000d59b4]                           dc.b $00
[000d59b5]                           dc.b $00
[000d59b6]                           dc.b $00
[000d59b7]                           dc.b $00
[000d59b8]                           dc.b $00
[000d59b9]                           dc.b $00
[000d59ba]                           dc.b $00
[000d59bb]                           dc.b $00
[000d59bc]                           dc.b $00
[000d59bd]                           dc.b $00
[000d59be]                           dc.b $00
[000d59bf]                           dc.b $00
[000d59c0]                           dc.b $00
[000d59c1]                           dc.b $00
[000d59c2]                           dc.b $00
[000d59c3]                           dc.b $00
[000d59c4]                           dc.b $00
[000d59c5]                           dc.b $00
[000d59c6]                           dc.b $00
[000d59c7]                           dc.b $00
[000d59c8]                           dc.b $00
[000d59c9]                           dc.b $00
[000d59ca]                           dc.b $00
[000d59cb]                           dc.b $17
[000d59cc]                           dc.b $00
[000d59cd]                           dc.b $01
[000d59ce]                           dc.b $00
[000d59cf]                           dc.b $00
[000d59d0]                           dc.b $00
[000d59d1]                           dc.b $00
[000d59d2]                           dc.b $00
[000d59d3]                           dc.b $00
[000d59d4]                           dc.b $00
[000d59d5]                           dc.b $00
[000d59d6]                           dc.b $00
[000d59d7]                           dc.b $00
[000d59d8]                           dc.b $00
[000d59d9]                           dc.b $00
[000d59da]                           dc.b $00
[000d59db]                           dc.b $00
[000d59dc]                           dc.b $00
[000d59dd]                           dc.b $00
[000d59de]                           dc.b $00
[000d59df]                           dc.b $00
[000d59e0]                           dc.b $00
[000d59e1]                           dc.b $00
[000d59e2]                           dc.b $00
[000d59e3]                           dc.b $00
[000d59e4]                           dc.b $00
[000d59e5]                           dc.b $00
[000d59e6]                           dc.b $00
[000d59e7]                           dc.b $00
[000d59e8]                           dc.b $00
[000d59e9]                           dc.b $00
[000d59ea]                           dc.b $00
[000d59eb]                           dc.b $10
[000d59ec]                           dc.b $00
[000d59ed]                           dc.b $00
[000d59ee]                           dc.b $00
[000d59ef]                           dc.b $00
[000d59f0]                           dc.b $00
[000d59f1]                           dc.b $00
[000d59f2]                           dc.b $00
[000d59f3]                           dc.b $00
[000d59f4]                           dc.b $00
[000d59f5]                           dc.b $00
[000d59f6]                           dc.b $00
[000d59f7]                           dc.b $00
[000d59f8]                           dc.b $00
[000d59f9]                           dc.b $00
[000d59fa]                           dc.b $00
[000d59fb]                           dc.b $00
[000d59fc]                           dc.b $00
[000d59fd]                           dc.b $00
[000d59fe]                           dc.b $00
[000d59ff]                           dc.b $00
[000d5a00]                           dc.b $00
[000d5a01]                           dc.b $00
[000d5a02]                           dc.b $00
[000d5a03]                           dc.b $00
[000d5a04]                           dc.b $00
[000d5a05]                           dc.b $00
[000d5a06]                           dc.b $00
[000d5a07]                           dc.b $00
[000d5a08]                           dc.b $00
[000d5a09]                           dc.b $00
[000d5a0a]                           dc.b $00
[000d5a0b]                           dc.b $19
[000d5a0c]                           dc.b $00
[000d5a0d]                           dc.b $01
[000d5a0e]                           dc.b $00
[000d5a0f]                           dc.b $00
[000d5a10]                           dc.b $00
[000d5a11]                           dc.b $00
[000d5a12]                           dc.b $00
[000d5a13]                           dc.b $00
[000d5a14]                           dc.b $00
[000d5a15]                           dc.b $00
[000d5a16]                           dc.b $00
[000d5a17]                           dc.b $00
[000d5a18]                           dc.b $00
[000d5a19]                           dc.b $00
[000d5a1a]                           dc.b $00
[000d5a1b]                           dc.b $00
[000d5a1c]                           dc.b $00
[000d5a1d]                           dc.b $00
[000d5a1e]                           dc.b $00
[000d5a1f]                           dc.b $00
[000d5a20]                           dc.b $00
[000d5a21]                           dc.b $00
[000d5a22]                           dc.b $00
[000d5a23]                           dc.b $00
[000d5a24]                           dc.b $00
[000d5a25]                           dc.b $00
[000d5a26]                           dc.b $00
[000d5a27]                           dc.b $00
[000d5a28]                           dc.b $00
[000d5a29]                           dc.b $00
[000d5a2a]                           dc.b $00
[000d5a2b]                           dc.b $10
[000d5a2c]                           dc.b $00
[000d5a2d]                           dc.b $00
[000d5a2e]                           dc.b $00
[000d5a2f]                           dc.b $00
[000d5a30]                           dc.b $00
[000d5a31]                           dc.b $00
[000d5a32]                           dc.b $00
[000d5a33]                           dc.b $00
[000d5a34]                           dc.b $00
[000d5a35]                           dc.b $00
[000d5a36]                           dc.b $00
[000d5a37]                           dc.b $00
[000d5a38]                           dc.b $00
[000d5a39]                           dc.b $00
[000d5a3a]                           dc.b $00
[000d5a3b]                           dc.b $00
[000d5a3c]                           dc.b $00
[000d5a3d]                           dc.b $00
[000d5a3e]                           dc.b $00
[000d5a3f]                           dc.b $00
[000d5a40]                           dc.b $00
[000d5a41]                           dc.b $00
[000d5a42]                           dc.b $00
[000d5a43]                           dc.b $00
[000d5a44]                           dc.b $00
[000d5a45]                           dc.b $00
[000d5a46]                           dc.b $00
[000d5a47]                           dc.b $00
[000d5a48]                           dc.b $00
[000d5a49]                           dc.b $00
[000d5a4a]                           dc.b $00
[000d5a4b]                           dc.b $1a
[000d5a4c]                           dc.b $00
[000d5a4d]                           dc.b $01
[000d5a4e]                           dc.b $00
[000d5a4f]                           dc.b $00
[000d5a50]                           dc.b $00
[000d5a51]                           dc.b $00
[000d5a52]                           dc.b $00
[000d5a53]                           dc.b $00
[000d5a54]                           dc.b $00
[000d5a55]                           dc.b $00
[000d5a56]                           dc.b $00
[000d5a57]                           dc.b $00
[000d5a58]                           dc.b $00
[000d5a59]                           dc.b $00
[000d5a5a]                           dc.b $00
[000d5a5b]                           dc.b $00
[000d5a5c]                           dc.b $00
[000d5a5d]                           dc.b $00
[000d5a5e]                           dc.b $00
[000d5a5f]                           dc.b $00
[000d5a60]                           dc.b $00
[000d5a61]                           dc.b $00
[000d5a62]                           dc.b $00
[000d5a63]                           dc.b $00
[000d5a64]                           dc.b $00
[000d5a65]                           dc.b $00
[000d5a66]                           dc.b $00
[000d5a67]                           dc.b $00
[000d5a68]                           dc.b $00
[000d5a69]                           dc.b $00
[000d5a6a]                           dc.b $00
[000d5a6b]                           dc.b $01
[000d5a6c]                           dc.b $00
[000d5a6d]                           dc.b $00
[000d5a6e]                           dc.b $00
[000d5a6f]                           dc.b $00
[000d5a70]                           dc.b $00
[000d5a71]                           dc.b $00
[000d5a72]                           dc.b $00
[000d5a73]                           dc.b $00
[000d5a74]                           dc.b $00
[000d5a75]                           dc.b $00
[000d5a76]                           dc.b $00
[000d5a77]                           dc.b $00
[000d5a78]                           dc.b $00
[000d5a79]                           dc.b $00
[000d5a7a]                           dc.b $00
[000d5a7b]                           dc.b $00
[000d5a7c]                           dc.b $00
[000d5a7d]                           dc.b $00
[000d5a7e]                           dc.b $00
[000d5a7f]                           dc.b $00
[000d5a80]                           dc.b $00
[000d5a81]                           dc.b $00
[000d5a82]                           dc.b $00
[000d5a83]                           dc.b $00
[000d5a84]                           dc.b $00
[000d5a85]                           dc.b $00
[000d5a86]                           dc.b $00
[000d5a87]                           dc.b $00
[000d5a88]                           dc.b $00
[000d5a89]                           dc.b $00
[000d5a8a]                           dc.b $00
[000d5a8b]                           dc.b $00
[000d5a8c]                           dc.b $00
[000d5a8d]                           dc.b $00
[000d5a8e]                           dc.b $00
[000d5a8f]                           dc.b $00
[000d5a90]                           dc.b $00
[000d5a91]                           dc.b $00
[000d5a92]                           dc.b $00
[000d5a93]                           dc.b $00
[000d5a94]                           dc.b $00
[000d5a95]                           dc.b $00
[000d5a96]                           dc.b $00
[000d5a97]                           dc.b $00
[000d5a98]                           dc.b $00
[000d5a99]                           dc.b $00
[000d5a9a]                           dc.b $00
[000d5a9b]                           dc.b $00
[000d5a9c]                           dc.b $00
[000d5a9d]                           dc.b $00
[000d5a9e]                           dc.b $00
[000d5a9f]                           dc.b $00
[000d5aa0]                           dc.b $00
[000d5aa1]                           dc.b $00
[000d5aa2]                           dc.b $00
[000d5aa3]                           dc.b $00
[000d5aa4]                           dc.b $00
[000d5aa5]                           dc.b $00
[000d5aa6]                           dc.b $00
[000d5aa7]                           dc.b $00
[000d5aa8]                           dc.b $00
[000d5aa9]                           dc.b $00
[000d5aaa]                           dc.b $00
[000d5aab]                           dc.b $10
[000d5aac]                           dc.b $00
[000d5aad]                           dc.b $00
[000d5aae]                           dc.b $00
[000d5aaf]                           dc.b $00
[000d5ab0]                           dc.b $00
[000d5ab1]                           dc.b $00
[000d5ab2]                           dc.b $00
[000d5ab3]                           dc.b $00
[000d5ab4]                           dc.b $00
[000d5ab5]                           dc.b $00
[000d5ab6]                           dc.b $00
[000d5ab7]                           dc.b $00
[000d5ab8]                           dc.b $00
[000d5ab9]                           dc.b $00
[000d5aba]                           dc.b $00
[000d5abb]                           dc.b $00
[000d5abc]                           dc.b $00
[000d5abd]                           dc.b $00
[000d5abe]                           dc.b $00
[000d5abf]                           dc.b $00
[000d5ac0]                           dc.b $00
[000d5ac1]                           dc.b $00
[000d5ac2]                           dc.b $00
[000d5ac3]                           dc.b $00
[000d5ac4]                           dc.b $00
[000d5ac5]                           dc.b $00
[000d5ac6]                           dc.b $00
[000d5ac7]                           dc.b $00
[000d5ac8]                           dc.b $00
[000d5ac9]                           dc.b $00
[000d5aca]                           dc.b $00
[000d5acb]                           dc.b $15
[000d5acc]                           dc.b $00
[000d5acd]                           dc.b $01
[000d5ace]                           dc.b $00
[000d5acf]                           dc.b $00
[000d5ad0]                           dc.b $00
[000d5ad1]                           dc.b $00
[000d5ad2]                           dc.b $00
[000d5ad3]                           dc.b $00
[000d5ad4]                           dc.b $00
[000d5ad5]                           dc.b $00
[000d5ad6]                           dc.b $00
[000d5ad7]                           dc.b $00
[000d5ad8]                           dc.b $00
[000d5ad9]                           dc.b $00
[000d5ada]                           dc.b $00
[000d5adb]                           dc.b $00
[000d5adc]                           dc.b $00
[000d5add]                           dc.b $00
[000d5ade]                           dc.b $00
[000d5adf]                           dc.b $00
[000d5ae0]                           dc.b $00
[000d5ae1]                           dc.b $00
[000d5ae2]                           dc.b $00
[000d5ae3]                           dc.b $00
[000d5ae4]                           dc.b $00
[000d5ae5]                           dc.b $00
[000d5ae6]                           dc.b $00
[000d5ae7]                           dc.b $00
[000d5ae8]                           dc.b $00
[000d5ae9]                           dc.b $00
[000d5aea]                           dc.b $00
[000d5aeb]                           dc.b $10
[000d5aec]                           dc.b $00
[000d5aed]                           dc.b $00
[000d5aee]                           dc.b $00
[000d5aef]                           dc.b $00
[000d5af0]                           dc.b $00
[000d5af1]                           dc.b $00
[000d5af2]                           dc.b $00
[000d5af3]                           dc.b $00
[000d5af4]                           dc.b $00
[000d5af5]                           dc.b $00
[000d5af6]                           dc.b $00
[000d5af7]                           dc.b $00
[000d5af8]                           dc.b $00
[000d5af9]                           dc.b $00
[000d5afa]                           dc.b $00
[000d5afb]                           dc.b $00
[000d5afc]                           dc.b $00
[000d5afd]                           dc.b $00
[000d5afe]                           dc.b $00
[000d5aff]                           dc.b $00
[000d5b00]                           dc.b $00
[000d5b01]                           dc.b $00
[000d5b02]                           dc.b $00
[000d5b03]                           dc.b $00
[000d5b04]                           dc.b $00
[000d5b05]                           dc.b $00
[000d5b06]                           dc.b $00
[000d5b07]                           dc.b $00
[000d5b08]                           dc.b $00
[000d5b09]                           dc.b $00
[000d5b0a]                           dc.b $00
[000d5b0b]                           dc.b $1c
[000d5b0c]                           dc.b $00
[000d5b0d]                           dc.b $01
[000d5b0e]                           dc.b $00
[000d5b0f]                           dc.b $00
[000d5b10]                           dc.b $00
[000d5b11]                           dc.b $00
[000d5b12]                           dc.b $00
[000d5b13]                           dc.b $00
[000d5b14]                           dc.b $00
[000d5b15]                           dc.b $00
[000d5b16]                           dc.b $00
[000d5b17]                           dc.b $00
[000d5b18]                           dc.b $00
[000d5b19]                           dc.b $00
[000d5b1a]                           dc.b $00
[000d5b1b]                           dc.b $00
[000d5b1c]                           dc.b $00
[000d5b1d]                           dc.b $00
[000d5b1e]                           dc.b $00
[000d5b1f]                           dc.b $00
[000d5b20]                           dc.b $00
[000d5b21]                           dc.b $00
[000d5b22]                           dc.b $00
[000d5b23]                           dc.b $00
[000d5b24]                           dc.b $00
[000d5b25]                           dc.b $00
[000d5b26]                           dc.b $00
[000d5b27]                           dc.b $00
[000d5b28]                           dc.b $00
[000d5b29]                           dc.b $00
[000d5b2a]                           dc.b $00
[000d5b2b]                           dc.b $10
[000d5b2c]                           dc.b $00
[000d5b2d]                           dc.b $00
[000d5b2e]                           dc.b $00
[000d5b2f]                           dc.b $00
[000d5b30]                           dc.b $00
[000d5b31]                           dc.b $00
[000d5b32]                           dc.b $00
[000d5b33]                           dc.b $00
[000d5b34]                           dc.b $00
[000d5b35]                           dc.b $00
[000d5b36]                           dc.b $00
[000d5b37]                           dc.b $00
[000d5b38]                           dc.b $00
[000d5b39]                           dc.b $00
[000d5b3a]                           dc.b $00
[000d5b3b]                           dc.b $00
[000d5b3c]                           dc.b $00
[000d5b3d]                           dc.b $00
[000d5b3e]                           dc.b $00
[000d5b3f]                           dc.b $00
[000d5b40]                           dc.b $00
[000d5b41]                           dc.b $00
[000d5b42]                           dc.b $00
[000d5b43]                           dc.b $00
[000d5b44]                           dc.b $00
[000d5b45]                           dc.b $00
[000d5b46]                           dc.b $00
[000d5b47]                           dc.b $00
[000d5b48]                           dc.b $00
[000d5b49]                           dc.b $00
[000d5b4a]                           dc.b $00
[000d5b4b]                           dc.b $1b
[000d5b4c]                           dc.b $00
[000d5b4d]                           dc.b $01
[000d5b4e]                           dc.b $00
[000d5b4f]                           dc.b $00
[000d5b50]                           dc.b $00
[000d5b51]                           dc.b $00
[000d5b52]                           dc.b $00
[000d5b53]                           dc.b $00
[000d5b54]                           dc.b $00
[000d5b55]                           dc.b $00
[000d5b56]                           dc.b $00
[000d5b57]                           dc.b $00
[000d5b58]                           dc.b $00
[000d5b59]                           dc.b $00
[000d5b5a]                           dc.b $00
[000d5b5b]                           dc.b $00
[000d5b5c]                           dc.b $00
[000d5b5d]                           dc.b $00
[000d5b5e]                           dc.b $00
[000d5b5f]                           dc.b $00
[000d5b60]                           dc.b $00
[000d5b61]                           dc.b $00
[000d5b62]                           dc.b $00
[000d5b63]                           dc.b $00
[000d5b64]                           dc.b $00
[000d5b65]                           dc.b $00
[000d5b66]                           dc.b $00
[000d5b67]                           dc.b $00
[000d5b68]                           dc.b $00
[000d5b69]                           dc.b $00
[000d5b6a]                           dc.b $00
[000d5b6b]                           dc.b $02
[000d5b6c]                           dc.b $00
[000d5b6d]                           dc.b $00
[000d5b6e]                           dc.b $00
[000d5b6f]                           dc.b $00
[000d5b70]                           dc.b $00
[000d5b71]                           dc.b $00
[000d5b72]                           dc.b $00
[000d5b73]                           dc.b $00
[000d5b74]                           dc.b $00
[000d5b75]                           dc.b $00
[000d5b76]                           dc.b $00
[000d5b77]                           dc.b $00
[000d5b78]                           dc.b $00
[000d5b79]                           dc.b $00
[000d5b7a]                           dc.b $00
[000d5b7b]                           dc.b $00
[000d5b7c]                           dc.b $00
[000d5b7d]                           dc.b $00
[000d5b7e]                           dc.b $00
[000d5b7f]                           dc.b $00
[000d5b80]                           dc.b $00
[000d5b81]                           dc.b $00
[000d5b82]                           dc.b $00
[000d5b83]                           dc.b $00
[000d5b84]                           dc.b $00
[000d5b85]                           dc.b $00
[000d5b86]                           dc.b $00
[000d5b87]                           dc.b $00
[000d5b88]                           dc.b $00
[000d5b89]                           dc.b $00
[000d5b8a]                           dc.b $00
[000d5b8b]                           dc.b $00
[000d5b8c]                           dc.b $00
[000d5b8d]                           dc.b $00
[000d5b8e]                           dc.b $00
[000d5b8f]                           dc.b $00
[000d5b90]                           dc.b $00
[000d5b91]                           dc.b $00
[000d5b92]                           dc.b $00
[000d5b93]                           dc.b $00
[000d5b94]                           dc.b $00
[000d5b95]                           dc.b $00
[000d5b96]                           dc.b $00
[000d5b97]                           dc.b $00
[000d5b98]                           dc.b $00
[000d5b99]                           dc.b $00
[000d5b9a]                           dc.b $00
[000d5b9b]                           dc.b $00
[000d5b9c]                           dc.b $00
[000d5b9d]                           dc.b $00
[000d5b9e]                           dc.b $00
[000d5b9f]                           dc.b $00
[000d5ba0]                           dc.b $00
[000d5ba1]                           dc.b $00
[000d5ba2]                           dc.b $00
[000d5ba3]                           dc.b $00
[000d5ba4]                           dc.b $00
[000d5ba5]                           dc.b $00
[000d5ba6]                           dc.b $00
[000d5ba7]                           dc.b $00
[000d5ba8]                           dc.b $00
[000d5ba9]                           dc.b $00
[000d5baa]                           dc.w $2a2e
[000d5bac]                           dc.b $00
[000d5bad]                           dc.b '*.%s',0
[000d5bb2]                           dc.w $2a00
[000d5bb4]                           dc.w $413a
[000d5bb6]                           dc.b $00
[000d5bb7]                           dc.b $2a
[000d5bb8]                           dc.b $00
[000d5bb9]                           dc.b $00
[000d5bba]                           dc.b $00
[000d5bbb]                           dc.b $00
