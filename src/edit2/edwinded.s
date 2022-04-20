
edwi_tme:
[00021cfe] 2f0a                      move.l     a2,-(a7)
[00021d00] 2f0b                      move.l     a3,-(a7)
[00021d02] 2079 0010 1f12            movea.l    ACSblk,a0
[00021d08] 2468 0258                 movea.l    600(a0),a2
[00021d0c] 2052                      movea.l    (a2),a0
[00021d0e] 006a 0004 0054            ori.w      #$0004,84(a2)
[00021d14] 47f9 000c 2814            lea.l      list_menu,a3
[00021d1a] 2690                      move.l     (a0),(a3)
[00021d1c] 2250                      movea.l    (a0),a1
[00021d1e] 2769 001c 0004            move.l     28(a1),4(a3)
[00021d24] 204b                      movea.l    a3,a0
[00021d26] 2279 000c 1880            movea.l    $000C1880,a1
[00021d2c] 4e91                      jsr        (a1)
[00021d2e] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[00021d34] 265f                      movea.l    (a7)+,a3
[00021d36] 245f                      movea.l    (a7)+,a2
[00021d38] 4e75                      rts

edwi_two:
[00021d3a] 2f0a                      move.l     a2,-(a7)
[00021d3c] 2f0b                      move.l     a3,-(a7)
[00021d3e] 2079 0010 1f12            movea.l    ACSblk,a0
[00021d44] 2468 0258                 movea.l    600(a0),a2
[00021d48] 2052                      movea.l    (a2),a0
[00021d4a] 006a 0004 0054            ori.w      #$0004,84(a2)
[00021d50] 47f9 000c 296e            lea.l      list_object,a3
[00021d56] 2690                      move.l     (a0),(a3)
[00021d58] 2250                      movea.l    (a0),a1
[00021d5a] 2769 0018 0004            move.l     24(a1),4(a3)
[00021d60] 204b                      movea.l    a3,a0
[00021d62] 2279 000c 1880            movea.l    $000C1880,a1
[00021d68] 4e91                      jsr        (a1)
[00021d6a] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[00021d70] 265f                      movea.l    (a7)+,a3
[00021d72] 245f                      movea.l    (a7)+,a2
[00021d74] 4e75                      rts

edwi_tic:
[00021d76] 2f0a                      move.l     a2,-(a7)
[00021d78] 2f0b                      move.l     a3,-(a7)
[00021d7a] 2079 0010 1f12            movea.l    ACSblk,a0
[00021d80] 2468 0258                 movea.l    600(a0),a2
[00021d84] 2052                      movea.l    (a2),a0
[00021d86] 006a 0004 0054            ori.w      #$0004,84(a2)
[00021d8c] 47f9 000c 1f14            lea.l      list_icon,a3
[00021d92] 2690                      move.l     (a0),(a3)
[00021d94] 2250                      movea.l    (a0),a1
[00021d96] 2769 002c 0004            move.l     44(a1),4(a3)
[00021d9c] 204b                      movea.l    a3,a0
[00021d9e] 2279 000c 1880            movea.l    $000C1880,a1
[00021da4] 4e91                      jsr        (a1)
[00021da6] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[00021dac] 265f                      movea.l    (a7)+,a3
[00021dae] 245f                      movea.l    (a7)+,a2
[00021db0] 4e75                      rts

edwi_ref:
[00021db2] 2f0a                      move.l     a2,-(a7)
[00021db4] 2f0b                      move.l     a3,-(a7)
[00021db6] 2079 0010 1f12            movea.l    ACSblk,a0
[00021dbc] 2468 0258                 movea.l    600(a0),a2
[00021dc0] 2052                      movea.l    (a2),a0
[00021dc2] 006a 0004 0054            ori.w      #$0004,84(a2)
[00021dc8] 47f9 000c 2ade            lea.l      list_reference,a3
[00021dce] 2690                      move.l     (a0),(a3)
[00021dd0] 2250                      movea.l    (a0),a1
[00021dd2] 2769 003c 0004            move.l     60(a1),4(a3)
[00021dd8] 204b                      movea.l    a3,a0
[00021dda] 2279 000c 1880            movea.l    $000C1880,a1
[00021de0] 4e91                      jsr        (a1)
[00021de2] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[00021de8] 265f                      movea.l    (a7)+,a3
[00021dea] 245f                      movea.l    (a7)+,a2
[00021dec] 4e75                      rts

edwi_ok:
[00021dee] 4240                      clr.w      d0
[00021df0] 2079 0010 1f12            movea.l    ACSblk,a0
[00021df6] 2068 0258                 movea.l    600(a0),a0
[00021dfa] 4eb9 0002 1ecc            jsr        acc_window
[00021e00] 2079 0010 1f12            movea.l    ACSblk,a0
[00021e06] 2068 0258                 movea.l    600(a0),a0
[00021e0a] 4eb9 0002 2ee4            jsr        term
[00021e10] 4e75                      rts

edwi_abort:
[00021e12] 2079 0010 1f12            movea.l    ACSblk,a0
[00021e18] 2068 0258                 movea.l    600(a0),a0
[00021e1c] 4eb9 0002 2ee4            jsr        term
[00021e22] 4e75                      rts

edwi_acc:
[00021e24] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00021e28] 594f                      subq.w     #4,a7
[00021e2a] 45f9 0010 1f12            lea.l      ACSblk,a2
[00021e30] 2052                      movea.l    (a2),a0
[00021e32] 2668 0258                 movea.l    600(a0),a3
[00021e36] 286b 0014                 movea.l    20(a3),a4
[00021e3a] 4268 0248                 clr.w      584(a0)
[00021e3e] 4eb9 0004 484c            jsr        Adr_next
[00021e44] 3600                      move.w     d0,d3
[00021e46] 6b00 007c                 bmi.w      edwi_acc_1
[00021e4a] 48c0                      ext.l      d0
[00021e4c] 2200                      move.l     d0,d1
[00021e4e] d281                      add.l      d1,d1
[00021e50] d280                      add.l      d0,d1
[00021e52] e789                      lsl.l      #3,d1
[00021e54] 2052                      movea.l    (a2),a0
[00021e56] 2268 0240                 movea.l    576(a0),a1
[00021e5a] 2069 0014                 movea.l    20(a1),a0
[00021e5e] 41f0 1818                 lea.l      24(a0,d1.l),a0
[00021e62] 2ea8 000c                 move.l     12(a0),(a7)
[00021e66] 0c68 2710 0016            cmpi.w     #$2710,22(a0)
[00021e6c] 6718                      beq.s      edwi_acc_2
[00021e6e] 0c68 2711 0016            cmpi.w     #$2711,22(a0)
[00021e74] 6710                      beq.s      edwi_acc_2
[00021e76] 0c68 2720 0016            cmpi.w     #$2720,22(a0)
[00021e7c] 6708                      beq.s      edwi_acc_2
[00021e7e] 0c68 271c 0016            cmpi.w     #$271C,22(a0)
[00021e84] 663e                      bne.s      edwi_acc_1
edwi_acc_2:
[00021e86] 4eb9 0004 b286            jsr        Awi_diaend
[00021e8c] 2257                      movea.l    (a7),a1
[00021e8e] 43e9 0016                 lea.l      22(a1),a1
[00021e92] 2052                      movea.l    (a2),a0
[00021e94] 3028 0260                 move.w     608(a0),d0
[00021e98] 204c                      movea.l    a4,a0
[00021e9a] 4eb9 0004 afe0            jsr        Aob_puttext
[00021ea0] 72ff                      moveq.l    #-1,d1
[00021ea2] 2052                      movea.l    (a2),a0
[00021ea4] 3028 0260                 move.w     608(a0),d0
[00021ea8] 226b 0066                 movea.l    102(a3),a1
[00021eac] 204b                      movea.l    a3,a0
[00021eae] 4e91                      jsr        (a1)
[00021eb0] 4eb9 0004 b33c            jsr        Awi_diastart
[00021eb6] 3003                      move.w     d3,d0
[00021eb8] 2052                      movea.l    (a2),a0
[00021eba] 2068 0240                 movea.l    576(a0),a0
[00021ebe] 4eb9 0004 492a            jsr        Adr_del
edwi_acc_1:
[00021ec4] 584f                      addq.w     #4,a7
[00021ec6] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00021eca] 4e75                      rts

acc_window:
[00021ecc] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00021ed0] 4fef ff64                 lea.l      -156(a7),a7
[00021ed4] 2f48 0098                 move.l     a0,152(a7)
[00021ed8] 3600                      move.w     d0,d3
[00021eda] 43f9 000a b5ac            lea.l      $000AB5AC,a1
[00021ee0] 41ef 0042                 lea.l      66(a7),a0
[00021ee4] 720f                      moveq.l    #15,d1
acc_window_1:
[00021ee6] 20d9                      move.l     (a1)+,(a0)+
[00021ee8] 51c9 fffc                 dbf        d1,acc_window_1
[00021eec] 30d9                      move.w     (a1)+,(a0)+
[00021eee] 41f9 000a b5ee            lea.l      $000AB5EE,a0
[00021ef4] 43d7                      lea.l      (a7),a1
[00021ef6] 720f                      moveq.l    #15,d1
acc_window_2:
[00021ef8] 22d8                      move.l     (a0)+,(a1)+
[00021efa] 51c9 fffc                 dbf        d1,acc_window_2
[00021efe] 32d8                      move.w     (a0)+,(a1)+
[00021f00] 206f 0098                 movea.l    152(a7),a0
[00021f04] 2050                      movea.l    (a0),a0
[00021f06] 2a50                      movea.l    (a0),a5
[00021f08] 2268 0004                 movea.l    4(a0),a1
[00021f0c] 2469 0004                 movea.l    4(a1),a2
[00021f10] 206f 0098                 movea.l    152(a7),a0
[00021f14] 2668 0014                 movea.l    20(a0),a3
[00021f18] 49ef 0088                 lea.l      136(a7),a4
[00021f1c] 224c                      movea.l    a4,a1
[00021f1e] 7003                      moveq.l    #3,d0
[00021f20] 41eb 0948                 lea.l      2376(a3),a0
[00021f24] 4eb9 0005 e010            jsr        Auo_boxed
[00021f2a] 2054                      movea.l    (a4),a0
[00021f2c] 1010                      move.b     (a0),d0
[00021f2e] 6612                      bne.s      acc_window_3
[00021f30] 4a43                      tst.w      d3
[00021f32] 660e                      bne.s      acc_window_3
[00021f34] 41f9 000a 7a79            lea.l      WARN_CREATE,a0
[00021f3a] 7001                      moveq.l    #1,d0
[00021f3c] 4eb9 0005 17fe            jsr        Awi_alert
acc_window_3:
[00021f42] 006d 0001 0006            ori.w      #$0001,6(a5)
[00021f48] 4240                      clr.w      d0
[00021f4a] 7201                      moveq.l    #1,d1
[00021f4c] c26b 0232                 and.w      562(a3),d1
[00021f50] 6704                      beq.s      acc_window_4
[00021f52] 807c 0002                 or.w       #$0002,d0
acc_window_4:
[00021f56] 7201                      moveq.l    #1,d1
[00021f58] c26b 03ca                 and.w      970(a3),d1
[00021f5c] 6704                      beq.s      acc_window_5
[00021f5e] 807c 1000                 or.w       #$1000,d0
acc_window_5:
[00021f62] 7201                      moveq.l    #1,d1
[00021f64] c26b 03b2                 and.w      946(a3),d1
[00021f68] 6704                      beq.s      acc_window_6
[00021f6a] 807c 0008                 or.w       #$0008,d0
acc_window_6:
[00021f6e] 7201                      moveq.l    #1,d1
[00021f70] c26b 039a                 and.w      922(a3),d1
[00021f74] 6704                      beq.s      acc_window_7
[00021f76] 807c 0001                 or.w       #$0001,d0
acc_window_7:
[00021f7a] 7201                      moveq.l    #1,d1
[00021f7c] c26b 024a                 and.w      586(a3),d1
[00021f80] 6704                      beq.s      acc_window_8
[00021f82] 807c 0010                 or.w       #$0010,d0
acc_window_8:
[00021f86] 7201                      moveq.l    #1,d1
[00021f88] c26b 0352                 and.w      850(a3),d1
[00021f8c] 6704                      beq.s      acc_window_9
[00021f8e] 807c 0004                 or.w       #$0004,d0
acc_window_9:
[00021f92] 7201                      moveq.l    #1,d1
[00021f94] c26b 02da                 and.w      730(a3),d1
[00021f98] 6704                      beq.s      acc_window_10
[00021f9a] 807c 0020                 or.w       #$0020,d0
acc_window_10:
[00021f9e] 7201                      moveq.l    #1,d1
[00021fa0] c26b 033a                 and.w      826(a3),d1
[00021fa4] 6704                      beq.s      acc_window_11
[00021fa6] 807c 0040                 or.w       #$0040,d0
acc_window_11:
[00021faa] 7201                      moveq.l    #1,d1
[00021fac] c26b 02f2                 and.w      754(a3),d1
[00021fb0] 6704                      beq.s      acc_window_12
[00021fb2] 807c 0080                 or.w       #$0080,d0
acc_window_12:
[00021fb6] 7201                      moveq.l    #1,d1
[00021fb8] c26b 02c2                 and.w      706(a3),d1
[00021fbc] 6704                      beq.s      acc_window_13
[00021fbe] 807c 0400                 or.w       #$0400,d0
acc_window_13:
[00021fc2] 7201                      moveq.l    #1,d1
[00021fc4] c26b 02aa                 and.w      682(a3),d1
[00021fc8] 6704                      beq.s      acc_window_14
[00021fca] 807c 0200                 or.w       #$0200,d0
acc_window_14:
[00021fce] 7201                      moveq.l    #1,d1
[00021fd0] c26b 0292                 and.w      658(a3),d1
[00021fd4] 6704                      beq.s      acc_window_15
[00021fd6] 807c 0800                 or.w       #$0800,d0
acc_window_15:
[00021fda] 7201                      moveq.l    #1,d1
[00021fdc] c26b 0322                 and.w      802(a3),d1
[00021fe0] 6704                      beq.s      acc_window_16
[00021fe2] 807c 0100                 or.w       #$0100,d0
acc_window_16:
[00021fe6] 7201                      moveq.l    #1,d1
[00021fe8] c26b 036a                 and.w      874(a3),d1
[00021fec] 6704                      beq.s      acc_window_17
[00021fee] 807c 4000                 or.w       #$4000,d0
acc_window_17:
[00021ff2] 7201                      moveq.l    #1,d1
[00021ff4] c26b 0382                 and.w      898(a3),d1
[00021ff8] 6704                      beq.s      acc_window_18
[00021ffa] 807c 2000                 or.w       #$2000,d0
acc_window_18:
[00021ffe] 3540 0022                 move.w     d0,34(a2)
[00022002] 4240                      clr.w      d0
[00022004] 7201                      moveq.l    #1,d1
[00022006] c26b 03fa                 and.w      1018(a3),d1
[0002200a] 6704                      beq.s      acc_window_19
[0002200c] 807c 0008                 or.w       #$0008,d0
acc_window_19:
[00022010] 7201                      moveq.l    #1,d1
[00022012] c26b 042a                 and.w      1066(a3),d1
[00022016] 6704                      beq.s      acc_window_20
[00022018] 807c 0004                 or.w       #$0004,d0
acc_window_20:
[0002201c] 7201                      moveq.l    #1,d1
[0002201e] c26b 045a                 and.w      1114(a3),d1
[00022022] 6704                      beq.s      acc_window_21
[00022024] 807c 0001                 or.w       #$0001,d0
acc_window_21:
[00022028] 7201                      moveq.l    #1,d1
[0002202a] c26b 048a                 and.w      1162(a3),d1
[0002202e] 6704                      beq.s      acc_window_22
[00022030] 807c 0002                 or.w       #$0002,d0
acc_window_22:
[00022034] 7201                      moveq.l    #1,d1
[00022036] c26b 04ba                 and.w      1210(a3),d1
[0002203a] 6704                      beq.s      acc_window_23
[0002203c] 807c 0010                 or.w       #$0010,d0
acc_window_23:
[00022040] 7201                      moveq.l    #1,d1
[00022042] c26b 04ea                 and.w      1258(a3),d1
[00022046] 6704                      beq.s      acc_window_24
[00022048] 807c 0100                 or.w       #$0100,d0
acc_window_24:
[0002204c] 3540 0054                 move.w     d0,84(a2)
[00022050] 206f 0098                 movea.l    152(a7),a0
[00022054] 2268 0014                 movea.l    20(a0),a1
[00022058] 43e9 0150                 lea.l      336(a1),a1
[0002205c] 2f49 008c                 move.l     a1,140(a7)
[00022060] 224c                      movea.l    a4,a1
[00022062] 206f 008c                 movea.l    140(a7),a0
[00022066] 7003                      moveq.l    #3,d0
[00022068] 4eb9 0003 589a            jsr        Auo_slider
[0002206e] 486f 0086                 pea.l      134(a7)
[00022072] 43f9 000a b630            lea.l      $000AB630,a1
[00022078] 2054                      movea.l    (a4),a0
[0002207a] 4eb9 0007 594a            jsr        sscanf
[00022080] 584f                      addq.w     #4,a7
[00022082] 206f 0098                 movea.l    152(a7),a0
[00022086] 2268 0014                 movea.l    20(a0),a1
[0002208a] 43e9 0198                 lea.l      408(a1),a1
[0002208e] 2f49 008c                 move.l     a1,140(a7)
[00022092] 224c                      movea.l    a4,a1
[00022094] 7003                      moveq.l    #3,d0
[00022096] 206f 008c                 movea.l    140(a7),a0
[0002209a] 4eb9 0003 589a            jsr        Auo_slider
[000220a0] 486f 0084                 pea.l      132(a7)
[000220a4] 43f9 000a b630            lea.l      $000AB630,a1
[000220aa] 2054                      movea.l    (a4),a0
[000220ac] 4eb9 0007 594a            jsr        sscanf
[000220b2] 584f                      addq.w     #4,a7
[000220b4] 302f 0086                 move.w     134(a7),d0
[000220b8] 4440                      neg.w      d0
[000220ba] 322f 0084                 move.w     132(a7),d1
[000220be] 4441                      neg.w      d1
[000220c0] e149                      lsl.w      #8,d1
[000220c2] 827c 00ff                 or.w       #$00FF,d1
[000220c6] c041                      and.w      d1,d0
[000220c8] 3540 0048                 move.w     d0,72(a2)
[000220cc] 486a 0024                 pea.l      36(a2)
[000220d0] 43f9 000a b630            lea.l      $000AB630,a1
[000220d6] 204b                      movea.l    a3,a0
[000220d8] 7003                      moveq.l    #3,d0
[000220da] 4eb9 0004 b0b2            jsr        Aob_scanf
[000220e0] 584f                      addq.w     #4,a7
[000220e2] 486a 0026                 pea.l      38(a2)
[000220e6] 43f9 000a b630            lea.l      $000AB630,a1
[000220ec] 7005                      moveq.l    #5,d0
[000220ee] 204b                      movea.l    a3,a0
[000220f0] 4eb9 0004 b0b2            jsr        Aob_scanf
[000220f6] 584f                      addq.w     #4,a7
[000220f8] 486a 0028                 pea.l      40(a2)
[000220fc] 43f9 000a b630            lea.l      $000AB630,a1
[00022102] 7007                      moveq.l    #7,d0
[00022104] 204b                      movea.l    a3,a0
[00022106] 4eb9 0004 b0b2            jsr        Aob_scanf
[0002210c] 584f                      addq.w     #4,a7
[0002210e] 486a 002a                 pea.l      42(a2)
[00022112] 43f9 000a b630            lea.l      $000AB630,a1
[00022118] 7009                      moveq.l    #9,d0
[0002211a] 204b                      movea.l    a3,a0
[0002211c] 4eb9 0004 b0b2            jsr        Aob_scanf
[00022122] 584f                      addq.w     #4,a7
[00022124] 224c                      movea.l    a4,a1
[00022126] 7003                      moveq.l    #3,d0
[00022128] 41eb 0570                 lea.l      1392(a3),a0
[0002212c] 4eb9 0005 e010            jsr        Auo_boxed
[00022132] 2f14                      move.l     (a4),-(a7)
[00022134] 226a 004a                 movea.l    74(a2),a1
[00022138] 204d                      movea.l    a5,a0
[0002213a] 4eb9 0003 475a            jsr        change_string
[00022140] 584f                      addq.w     #4,a7
[00022142] 224c                      movea.l    a4,a1
[00022144] 7003                      moveq.l    #3,d0
[00022146] 41eb 0588                 lea.l      1416(a3),a0
[0002214a] 4eb9 0005 e010            jsr        Auo_boxed
[00022150] 2f14                      move.l     (a4),-(a7)
[00022152] 226a 004e                 movea.l    78(a2),a1
[00022156] 204d                      movea.l    a5,a0
[00022158] 4eb9 0003 475a            jsr        change_string
[0002215e] 584f                      addq.w     #4,a7
[00022160] 2f6a 0014 0094            move.l     20(a2),148(a7)
[00022166] 224c                      movea.l    a4,a1
[00022168] 7003                      moveq.l    #3,d0
[0002216a] 41eb 0750                 lea.l      1872(a3),a0
[0002216e] 4eb9 0005 e010            jsr        Auo_boxed
[00022174] 2054                      movea.l    (a4),a0
[00022176] 1010                      move.b     (a0),d0
[00022178] 672e                      beq.s      acc_window_25
[0002217a] 2248                      movea.l    a0,a1
[0002217c] 206d 0018                 movea.l    24(a5),a0
[00022180] 4eb9 0003 1a5c            jsr        find_entry
[00022186] 2f48 0090                 move.l     a0,144(a7)
[0002218a] 2008                      move.l     a0,d0
[0002218c] 6610                      bne.s      acc_window_26
[0002218e] 2254                      movea.l    (a4),a1
[00022190] 41f9 000a 7a2a            lea.l      ERR_OB_DEL,a0
[00022196] 4eb9 0005 ef8c            jsr        alert_str
[0002219c] 600e                      bra.s      acc_window_27
acc_window_26:
[0002219e] 206f 0090                 movea.l    144(a7),a0
[000221a2] 5268 0036                 addq.w     #1,54(a0)
[000221a6] 6004                      bra.s      acc_window_27
acc_window_25:
[000221a8] 42af 0090                 clr.l      144(a7)
acc_window_27:
[000221ac] 202f 0094                 move.l     148(a7),d0
[000221b0] 670a                      beq.s      acc_window_28
[000221b2] 2240                      movea.l    d0,a1
[000221b4] 204d                      movea.l    a5,a0
[000221b6] 4eb9 0003 4182            jsr        del_object
acc_window_28:
[000221bc] 256f 0090 0014            move.l     144(a7),20(a2)
[000221c2] 2f6a 0018 0094            move.l     24(a2),148(a7)
[000221c8] 224c                      movea.l    a4,a1
[000221ca] 7003                      moveq.l    #3,d0
[000221cc] 41eb 0720                 lea.l      1824(a3),a0
[000221d0] 4eb9 0005 e010            jsr        Auo_boxed
[000221d6] 2054                      movea.l    (a4),a0
[000221d8] 1010                      move.b     (a0),d0
[000221da] 672e                      beq.s      acc_window_29
[000221dc] 2248                      movea.l    a0,a1
[000221de] 206d 0018                 movea.l    24(a5),a0
[000221e2] 4eb9 0003 1a5c            jsr        find_entry
[000221e8] 2f48 0090                 move.l     a0,144(a7)
[000221ec] 2008                      move.l     a0,d0
[000221ee] 6610                      bne.s      acc_window_30
[000221f0] 2254                      movea.l    (a4),a1
[000221f2] 41f9 000a 7a2a            lea.l      ERR_OB_DEL,a0
[000221f8] 4eb9 0005 ef8c            jsr        alert_str
[000221fe] 600e                      bra.s      acc_window_31
acc_window_30:
[00022200] 206f 0090                 movea.l    144(a7),a0
[00022204] 5268 0036                 addq.w     #1,54(a0)
[00022208] 6004                      bra.s      acc_window_31
acc_window_29:
[0002220a] 42af 0090                 clr.l      144(a7)
acc_window_31:
[0002220e] 202f 0094                 move.l     148(a7),d0
[00022212] 670a                      beq.s      acc_window_32
[00022214] 2240                      movea.l    d0,a1
[00022216] 204d                      movea.l    a5,a0
[00022218] 4eb9 0003 4182            jsr        del_object
acc_window_32:
[0002221e] 256f 0090 0018            move.l     144(a7),24(a2)
[00022224] 2f6a 005e 0094            move.l     94(a2),148(a7)
[0002222a] 224c                      movea.l    a4,a1
[0002222c] 7003                      moveq.l    #3,d0
[0002222e] 41eb 06f0                 lea.l      1776(a3),a0
[00022232] 4eb9 0005 e010            jsr        Auo_boxed
[00022238] 2054                      movea.l    (a4),a0
[0002223a] 1010                      move.b     (a0),d0
[0002223c] 672e                      beq.s      acc_window_33
[0002223e] 2248                      movea.l    a0,a1
[00022240] 206d 001c                 movea.l    28(a5),a0
[00022244] 4eb9 0003 1a5c            jsr        find_entry
[0002224a] 2f48 0090                 move.l     a0,144(a7)
[0002224e] 2008                      move.l     a0,d0
[00022250] 6610                      bne.s      acc_window_34
[00022252] 2254                      movea.l    (a4),a1
[00022254] 41f9 000a 79e1            lea.l      ERR_ME_DEL,a0
[0002225a] 4eb9 0005 ef8c            jsr        alert_str
[00022260] 600e                      bra.s      acc_window_35
acc_window_34:
[00022262] 206f 0090                 movea.l    144(a7),a0
[00022266] 5268 0036                 addq.w     #1,54(a0)
[0002226a] 6004                      bra.s      acc_window_35
acc_window_33:
[0002226c] 42af 0090                 clr.l      144(a7)
acc_window_35:
[00022270] 202f 0094                 move.l     148(a7),d0
[00022274] 670a                      beq.s      acc_window_36
[00022276] 2240                      movea.l    d0,a1
[00022278] 204d                      movea.l    a5,a0
[0002227a] 4eb9 0003 3f14            jsr        del_men
acc_window_36:
[00022280] 256f 0090 005e            move.l     144(a7),94(a2)
[00022286] 2f6a 005a 0094            move.l     90(a2),148(a7)
[0002228c] 224c                      movea.l    a4,a1
[0002228e] 7003                      moveq.l    #3,d0
[00022290] 41eb 0780                 lea.l      1920(a3),a0
[00022294] 4eb9 0005 e010            jsr        Auo_boxed
[0002229a] 2054                      movea.l    (a4),a0
[0002229c] 1010                      move.b     (a0),d0
[0002229e] 672e                      beq.s      acc_window_37
[000222a0] 2248                      movea.l    a0,a1
[000222a2] 206d 002c                 movea.l    44(a5),a0
[000222a6] 4eb9 0003 1a5c            jsr        find_entry
[000222ac] 2f48 0090                 move.l     a0,144(a7)
[000222b0] 2008                      move.l     a0,d0
[000222b2] 6610                      bne.s      acc_window_38
[000222b4] 2254                      movea.l    (a4),a1
[000222b6] 41f9 000a 7998            lea.l      ERR_IC_DEL,a0
[000222bc] 4eb9 0005 ef8c            jsr        alert_str
[000222c2] 600e                      bra.s      acc_window_39
acc_window_38:
[000222c4] 206f 0090                 movea.l    144(a7),a0
[000222c8] 5268 0036                 addq.w     #1,54(a0)
[000222cc] 6004                      bra.s      acc_window_39
acc_window_37:
[000222ce] 42af 0090                 clr.l      144(a7)
acc_window_39:
[000222d2] 202f 0094                 move.l     148(a7),d0
[000222d6] 670a                      beq.s      acc_window_40
[000222d8] 2240                      movea.l    d0,a1
[000222da] 204d                      movea.l    a5,a0
[000222dc] 4eb9 0003 3220            jsr        del_icon
acc_window_40:
[000222e2] 256f 0090 005a            move.l     144(a7),90(a2)
[000222e8] 224c                      movea.l    a4,a1
[000222ea] 7003                      moveq.l    #3,d0
[000222ec] 41eb 07b0                 lea.l      1968(a3),a0
[000222f0] 4eb9 0005 e010            jsr        Auo_boxed
[000222f6] 2f14                      move.l     (a4),-(a7)
[000222f8] 4240                      clr.w      d0
[000222fa] 224a                      movea.l    a2,a1
[000222fc] 204d                      movea.l    a5,a0
[000222fe] 4eb9 0001 3f82            jsr        mod_ref
[00022304] 584f                      addq.w     #4,a7
[00022306] 224c                      movea.l    a4,a1
[00022308] 7003                      moveq.l    #3,d0
[0002230a] 41eb 0918                 lea.l      2328(a3),a0
[0002230e] 4eb9 0005 e010            jsr        Auo_boxed
[00022314] 2f14                      move.l     (a4),-(a7)
[00022316] 7006                      moveq.l    #6,d0
[00022318] 43ea 000c                 lea.l      12(a2),a1
[0002231c] 204d                      movea.l    a5,a0
[0002231e] 4eb9 0001 3f82            jsr        mod_ref
[00022324] 584f                      addq.w     #4,a7
[00022326] 224c                      movea.l    a4,a1
[00022328] 7003                      moveq.l    #3,d0
[0002232a] 41eb 0948                 lea.l      2376(a3),a0
[0002232e] 4eb9 0005 e010            jsr        Auo_boxed
[00022334] 2f14                      move.l     (a4),-(a7)
[00022336] 7007                      moveq.l    #7,d0
[00022338] 43ea 0008                 lea.l      8(a2),a1
[0002233c] 204d                      movea.l    a5,a0
[0002233e] 4eb9 0001 3f82            jsr        mod_ref
[00022344] 584f                      addq.w     #4,a7
[00022346] 224c                      movea.l    a4,a1
[00022348] 7003                      moveq.l    #3,d0
[0002234a] 41eb 0978                 lea.l      2424(a3),a0
[0002234e] 4eb9 0005 e010            jsr        Auo_boxed
[00022354] 2f14                      move.l     (a4),-(a7)
[00022356] 7015                      moveq.l    #21,d0
[00022358] 43ea 0004                 lea.l      4(a2),a1
[0002235c] 204d                      movea.l    a5,a0
[0002235e] 4eb9 0001 3f82            jsr        mod_ref
[00022364] 584f                      addq.w     #4,a7
[00022366] 224c                      movea.l    a4,a1
[00022368] 7003                      moveq.l    #3,d0
[0002236a] 41eb 09a8                 lea.l      2472(a3),a0
[0002236e] 4eb9 0005 e010            jsr        Auo_boxed
[00022374] 2f14                      move.l     (a4),-(a7)
[00022376] 7008                      moveq.l    #8,d0
[00022378] 43ea 0010                 lea.l      16(a2),a1
[0002237c] 204d                      movea.l    a5,a0
[0002237e] 4eb9 0001 3f82            jsr        mod_ref
[00022384] 584f                      addq.w     #4,a7
[00022386] 224c                      movea.l    a4,a1
[00022388] 7003                      moveq.l    #3,d0
[0002238a] 41eb 09d8                 lea.l      2520(a3),a0
[0002238e] 4eb9 0005 e010            jsr        Auo_boxed
[00022394] 2f14                      move.l     (a4),-(a7)
[00022396] 7009                      moveq.l    #9,d0
[00022398] 43ea 0062                 lea.l      98(a2),a1
[0002239c] 204d                      movea.l    a5,a0
[0002239e] 4eb9 0001 3f82            jsr        mod_ref
[000223a4] 584f                      addq.w     #4,a7
[000223a6] 224c                      movea.l    a4,a1
[000223a8] 7003                      moveq.l    #3,d0
[000223aa] 41eb 0a08                 lea.l      2568(a3),a0
[000223ae] 4eb9 0005 e010            jsr        Auo_boxed
[000223b4] 2f14                      move.l     (a4),-(a7)
[000223b6] 700a                      moveq.l    #10,d0
[000223b8] 43ea 0066                 lea.l      102(a2),a1
[000223bc] 204d                      movea.l    a5,a0
[000223be] 4eb9 0001 3f82            jsr        mod_ref
[000223c4] 584f                      addq.w     #4,a7
[000223c6] 224c                      movea.l    a4,a1
[000223c8] 7003                      moveq.l    #3,d0
[000223ca] 41eb 0a38                 lea.l      2616(a3),a0
[000223ce] 4eb9 0005 e010            jsr        Auo_boxed
[000223d4] 2f14                      move.l     (a4),-(a7)
[000223d6] 700b                      moveq.l    #11,d0
[000223d8] 43ea 006a                 lea.l      106(a2),a1
[000223dc] 204d                      movea.l    a5,a0
[000223de] 4eb9 0001 3f82            jsr        mod_ref
[000223e4] 584f                      addq.w     #4,a7
[000223e6] 224c                      movea.l    a4,a1
[000223e8] 7003                      moveq.l    #3,d0
[000223ea] 41eb 0a68                 lea.l      2664(a3),a0
[000223ee] 4eb9 0005 e010            jsr        Auo_boxed
[000223f4] 2f14                      move.l     (a4),-(a7)
[000223f6] 700c                      moveq.l    #12,d0
[000223f8] 43ea 006e                 lea.l      110(a2),a1
[000223fc] 204d                      movea.l    a5,a0
[000223fe] 4eb9 0001 3f82            jsr        mod_ref
[00022404] 584f                      addq.w     #4,a7
[00022406] 224c                      movea.l    a4,a1
[00022408] 7003                      moveq.l    #3,d0
[0002240a] 41eb 0a98                 lea.l      2712(a3),a0
[0002240e] 4eb9 0005 e010            jsr        Auo_boxed
[00022414] 2f14                      move.l     (a4),-(a7)
[00022416] 700e                      moveq.l    #14,d0
[00022418] 43ea 0072                 lea.l      114(a2),a1
[0002241c] 204d                      movea.l    a5,a0
[0002241e] 4eb9 0001 3f82            jsr        mod_ref
[00022424] 584f                      addq.w     #4,a7
[00022426] 224c                      movea.l    a4,a1
[00022428] 7003                      moveq.l    #3,d0
[0002242a] 41eb 0ac8                 lea.l      2760(a3),a0
[0002242e] 4eb9 0005 e010            jsr        Auo_boxed
[00022434] 2f14                      move.l     (a4),-(a7)
[00022436] 7014                      moveq.l    #20,d0
[00022438] 43ea 0076                 lea.l      118(a2),a1
[0002243c] 204d                      movea.l    a5,a0
[0002243e] 4eb9 0001 3f82            jsr        mod_ref
[00022444] 584f                      addq.w     #4,a7
[00022446] 224c                      movea.l    a4,a1
[00022448] 7003                      moveq.l    #3,d0
[0002244a] 41eb 0af8                 lea.l      2808(a3),a0
[0002244e] 4eb9 0005 e010            jsr        Auo_boxed
[00022454] 2f14                      move.l     (a4),-(a7)
[00022456] 700f                      moveq.l    #15,d0
[00022458] 43ea 007a                 lea.l      122(a2),a1
[0002245c] 204d                      movea.l    a5,a0
[0002245e] 4eb9 0001 3f82            jsr        mod_ref
[00022464] 584f                      addq.w     #4,a7
[00022466] 224c                      movea.l    a4,a1
[00022468] 7003                      moveq.l    #3,d0
[0002246a] 41eb 0b28                 lea.l      2856(a3),a0
[0002246e] 4eb9 0005 e010            jsr        Auo_boxed
[00022474] 2f14                      move.l     (a4),-(a7)
[00022476] 7010                      moveq.l    #16,d0
[00022478] 43ea 007e                 lea.l      126(a2),a1
[0002247c] 204d                      movea.l    a5,a0
[0002247e] 4eb9 0001 3f82            jsr        mod_ref
[00022484] 584f                      addq.w     #4,a7
[00022486] 224c                      movea.l    a4,a1
[00022488] 7003                      moveq.l    #3,d0
[0002248a] 41eb 0b58                 lea.l      2904(a3),a0
[0002248e] 4eb9 0005 e010            jsr        Auo_boxed
[00022494] 2f14                      move.l     (a4),-(a7)
[00022496] 7011                      moveq.l    #17,d0
[00022498] 43ea 0082                 lea.l      130(a2),a1
[0002249c] 204d                      movea.l    a5,a0
[0002249e] 4eb9 0001 3f82            jsr        mod_ref
[000224a4] 584f                      addq.w     #4,a7
[000224a6] 224c                      movea.l    a4,a1
[000224a8] 7003                      moveq.l    #3,d0
[000224aa] 41eb 0bb8                 lea.l      3000(a3),a0
[000224ae] 4eb9 0005 e010            jsr        Auo_boxed
[000224b4] 2f14                      move.l     (a4),-(a7)
[000224b6] 7013                      moveq.l    #19,d0
[000224b8] 43ea 0086                 lea.l      134(a2),a1
[000224bc] 204d                      movea.l    a5,a0
[000224be] 4eb9 0001 3f82            jsr        mod_ref
[000224c4] 584f                      addq.w     #4,a7
[000224c6] 224c                      movea.l    a4,a1
[000224c8] 7003                      moveq.l    #3,d0
[000224ca] 41eb 0b88                 lea.l      2952(a3),a0
[000224ce] 4eb9 0005 e010            jsr        Auo_boxed
[000224d4] 2f14                      move.l     (a4),-(a7)
[000224d6] 7012                      moveq.l    #18,d0
[000224d8] 43ea 008a                 lea.l      138(a2),a1
[000224dc] 204d                      movea.l    a5,a0
[000224de] 4eb9 0001 3f82            jsr        mod_ref
[000224e4] 584f                      addq.w     #4,a7
[000224e6] 224c                      movea.l    a4,a1
[000224e8] 7003                      moveq.l    #3,d0
[000224ea] 41eb 0be8                 lea.l      3048(a3),a0
[000224ee] 4eb9 0005 e010            jsr        Auo_boxed
[000224f4] 2f14                      move.l     (a4),-(a7)
[000224f6] 7016                      moveq.l    #22,d0
[000224f8] 43ea 008e                 lea.l      142(a2),a1
[000224fc] 204d                      movea.l    a5,a0
[000224fe] 4eb9 0001 3f82            jsr        mod_ref
[00022504] 584f                      addq.w     #4,a7
[00022506] 224c                      movea.l    a4,a1
[00022508] 7003                      moveq.l    #3,d0
[0002250a] 41eb 0c18                 lea.l      3096(a3),a0
[0002250e] 4eb9 0005 e010            jsr        Auo_boxed
[00022514] 2f14                      move.l     (a4),-(a7)
[00022516] 7017                      moveq.l    #23,d0
[00022518] 43ea 0092                 lea.l      146(a2),a1
[0002251c] 204d                      movea.l    a5,a0
[0002251e] 4eb9 0001 3f82            jsr        mod_ref
[00022524] 584f                      addq.w     #4,a7
[00022526] 224c                      movea.l    a4,a1
[00022528] 7003                      moveq.l    #3,d0
[0002252a] 41eb 0c48                 lea.l      3144(a3),a0
[0002252e] 4eb9 0005 e010            jsr        Auo_boxed
[00022534] 2f14                      move.l     (a4),-(a7)
[00022536] 7018                      moveq.l    #24,d0
[00022538] 43ea 0096                 lea.l      150(a2),a1
[0002253c] 204d                      movea.l    a5,a0
[0002253e] 4eb9 0001 3f82            jsr        mod_ref
[00022544] 584f                      addq.w     #4,a7
[00022546] 2f6a 009e 0094            move.l     158(a2),148(a7)
[0002254c] 43ef 0004                 lea.l      4(a7),a1
[00022550] 7003                      moveq.l    #3,d0
[00022552] 41eb 0648                 lea.l      1608(a3),a0
[00022556] 4eb9 0005 e010            jsr        Auo_boxed
[0002255c] 206f 0004                 movea.l    4(a7),a0
[00022560] 4eb9 0007 69b0            jsr        strlen
[00022566] 5280                      addq.l     #1,d0
[00022568] 2f40 000a                 move.l     d0,10(a7)
[0002256c] 2f40 000e                 move.l     d0,14(a7)
[00022570] 206f 0004                 movea.l    4(a7),a0
[00022574] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002257a] 4a40                      tst.w      d0
[0002257c] 662e                      bne.s      acc_window_41
[0002257e] 202f 0094                 move.l     148(a7),d0
[00022582] 6610                      bne.s      acc_window_42
[00022584] 43d7                      lea.l      (a7),a1
[00022586] 204d                      movea.l    a5,a0
[00022588] 4eb9 0003 461e            jsr        add_string
[0002258e] 2f48 0090                 move.l     a0,144(a7)
[00022592] 601c                      bra.s      acc_window_43
acc_window_42:
[00022594] 2f2f 0004                 move.l     4(a7),-(a7)
[00022598] 226f 0098                 movea.l    152(a7),a1
[0002259c] 204d                      movea.l    a5,a0
[0002259e] 4eb9 0003 475a            jsr        change_string
[000225a4] 584f                      addq.w     #4,a7
[000225a6] 2f48 0090                 move.l     a0,144(a7)
[000225aa] 6004                      bra.s      acc_window_43
acc_window_41:
[000225ac] 42af 0090                 clr.l      144(a7)
acc_window_43:
[000225b0] 202f 0094                 move.l     148(a7),d0
[000225b4] 6710                      beq.s      acc_window_44
[000225b6] b0af 0090                 cmp.l      144(a7),d0
[000225ba] 670a                      beq.s      acc_window_44
[000225bc] 2240                      movea.l    d0,a1
[000225be] 204d                      movea.l    a5,a0
[000225c0] 4eb9 0003 47e8            jsr        del_string
acc_window_44:
[000225c6] 256f 0090 009e            move.l     144(a7),158(a2)
[000225cc] 2f6a 009a 0094            move.l     154(a2),148(a7)
[000225d2] 43ef 0046                 lea.l      70(a7),a1
[000225d6] 7003                      moveq.l    #3,d0
[000225d8] 41eb 0630                 lea.l      1584(a3),a0
[000225dc] 4eb9 0005 e010            jsr        Auo_boxed
[000225e2] 206f 0046                 movea.l    70(a7),a0
[000225e6] 4eb9 0007 69b0            jsr        strlen
[000225ec] 5280                      addq.l     #1,d0
[000225ee] 2f40 004c                 move.l     d0,76(a7)
[000225f2] 2f40 0050                 move.l     d0,80(a7)
[000225f6] 206f 0046                 movea.l    70(a7),a0
[000225fa] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00022600] 4a40                      tst.w      d0
[00022602] 6630                      bne.s      acc_window_45
[00022604] 202f 0094                 move.l     148(a7),d0
[00022608] 6612                      bne.s      acc_window_46
[0002260a] 43ef 0042                 lea.l      66(a7),a1
[0002260e] 204d                      movea.l    a5,a0
[00022610] 4eb9 0003 461e            jsr        add_string
[00022616] 2f48 0090                 move.l     a0,144(a7)
[0002261a] 601c                      bra.s      acc_window_47
acc_window_46:
[0002261c] 2f2f 0046                 move.l     70(a7),-(a7)
[00022620] 226f 0098                 movea.l    152(a7),a1
[00022624] 204d                      movea.l    a5,a0
[00022626] 4eb9 0003 475a            jsr        change_string
[0002262c] 584f                      addq.w     #4,a7
[0002262e] 2f48 0090                 move.l     a0,144(a7)
[00022632] 6004                      bra.s      acc_window_47
acc_window_45:
[00022634] 42af 0090                 clr.l      144(a7)
acc_window_47:
[00022638] 202f 0094                 move.l     148(a7),d0
[0002263c] 6710                      beq.s      acc_window_48
[0002263e] b0af 0090                 cmp.l      144(a7),d0
[00022642] 670a                      beq.s      acc_window_48
[00022644] 2240                      movea.l    d0,a1
[00022646] 204d                      movea.l    a5,a0
[00022648] 4eb9 0003 47e8            jsr        del_string
acc_window_48:
[0002264e] 256f 0090 009a            move.l     144(a7),154(a2)
[00022654] 4fef 009c                 lea.l      156(a7),a7
[00022658] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0002265c] 4e75                      rts

wi_make:
[0002265e] 48e7 0038                 movem.l    a2-a4,-(a7)
[00022662] 594f                      subq.w     #4,a7
[00022664] 2e88                      move.l     a0,(a7)
[00022666] 2668 0004                 movea.l    4(a0),a3
[0002266a] 286b 0012                 movea.l    18(a3),a4
[0002266e] 200c                      move.l     a4,d0
[00022670] 670c                      beq.s      wi_make_1
[00022672] 204c                      movea.l    a4,a0
[00022674] 4eb9 0004 f0ca            jsr        Awi_show
[0002267a] 6000 0086                 bra        wi_make_2
wi_make_1:
[0002267e] 7008                      moveq.l    #8,d0
[00022680] 4eb9 0004 7cc8            jsr        Ax_malloc
[00022686] 2448                      movea.l    a0,a2
[00022688] 200a                      move.l     a2,d0
[0002268a] 6772                      beq.s      wi_make_3
[0002268c] 2257                      movea.l    (a7),a1
[0002268e] 2091                      move.l     (a1),(a0)
[00022690] 2569 0004 0004            move.l     4(a1),4(a2)
[00022696] 41eb 0016                 lea.l      22(a3),a0
[0002269a] 23c8 000a b558            move.l     a0,$000AB558
[000226a0] 2279 000a b564            movea.l    $000AB564,a1
[000226a6] 2348 0008                 move.l     a0,8(a1)
[000226aa] 41f9 000a b50a            lea.l      WI_WINDOW,a0
[000226b0] 4eb9 0004 f41a            jsr        Awi_create
[000226b6] 2848                      movea.l    a0,a4
[000226b8] 200c                      move.l     a4,d0
[000226ba] 660a                      bne.s      wi_make_4
[000226bc] 204a                      movea.l    a2,a0
[000226be] 4eb9 0004 7e26            jsr        Ax_free
[000226c4] 6038                      bra.s      wi_make_3
wi_make_4:
[000226c6] 2057                      movea.l    (a7),a0
[000226c8] 2250                      movea.l    (a0),a1
[000226ca] 4869 0168                 pea.l      360(a1)
[000226ce] 43eb 003a                 lea.l      58(a3),a1
[000226d2] 204c                      movea.l    a4,a0
[000226d4] 4eb9 0001 47a8            jsr        wi_pos
[000226da] 584f                      addq.w     #4,a7
[000226dc] 288a                      move.l     a2,(a4)
[000226de] 274c 0012                 move.l     a4,18(a3)
[000226e2] 204c                      movea.l    a4,a0
[000226e4] 4eb9 0002 27ea            jsr        set_window
[000226ea] 204c                      movea.l    a4,a0
[000226ec] 226c 000c                 movea.l    12(a4),a1
[000226f0] 4e91                      jsr        (a1)
[000226f2] 4a40                      tst.w      d0
[000226f4] 670c                      beq.s      wi_make_2
[000226f6] 204c                      movea.l    a4,a0
[000226f8] 4eb9 0002 2ee4            jsr        term
wi_make_3:
[000226fe] 91c8                      suba.l     a0,a0
[00022700] 6002                      bra.s      wi_make_5
wi_make_2:
[00022702] 204c                      movea.l    a4,a0
wi_make_5:
[00022704] 584f                      addq.w     #4,a7
[00022706] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002270a] 4e75                      rts

wi_service:
[0002270c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00022710] 2448                      movea.l    a0,a2
[00022712] 3600                      move.w     d0,d3
[00022714] 2849                      movea.l    a1,a4
[00022716] 2650                      movea.l    (a0),a3
[00022718] b07c 0024                 cmp.w      #$0024,d0
[0002271c] 672a                      beq.s      wi_service_1
[0002271e] 6e0e                      bgt.s      wi_service_2
[00022720] 5540                      subq.w     #2,d0
[00022722] 6700 0090                 beq        wi_service_3
[00022726] 5f40                      subq.w     #7,d0
[00022728] 6726                      beq.s      wi_service_4
[0002272a] 6000 00a8                 bra        wi_service_5
wi_service_2:
[0002272e] 907c 0025                 sub.w      #$0025,d0
[00022732] 670c                      beq.s      wi_service_6
[00022734] 907c 26eb                 sub.w      #$26EB,d0
[00022738] 6700 008c                 beq        wi_service_7
[0002273c] 6000 0096                 bra        wi_service_5
wi_service_6:
[00022740] 42ac 0002                 clr.l      2(a4)
[00022744] 6000 009c                 bra        wi_service_8
wi_service_1:
[00022748] 38bc 0001                 move.w     #$0001,(a4)
[0002274c] 6000 0094                 bra        wi_service_8
wi_service_4:
[00022750] 2079 0010 1f12            movea.l    ACSblk,a0
[00022756] 2268 0254                 movea.l    596(a0),a1
[0002275a] 3211                      move.w     (a1),d1
[0002275c] 48c1                      ext.l      d1
[0002275e] 2001                      move.l     d1,d0
[00022760] d080                      add.l      d0,d0
[00022762] d081                      add.l      d1,d0
[00022764] e788                      lsl.l      #3,d0
[00022766] 2268 0240                 movea.l    576(a0),a1
[0002276a] 2069 0014                 movea.l    20(a1),a0
[0002276e] 41f0 0818                 lea.l      24(a0,d0.l),a0
[00022772] 3414                      move.w     (a4),d2
[00022774] 947c 004a                 sub.w      #$004A,d2
[00022778] 6718                      beq.s      wi_service_9
[0002277a] 5542                      subq.w     #2,d2
[0002277c] 670a                      beq.s      wi_service_10
[0002277e] 5542                      subq.w     #2,d2
[00022780] 6706                      beq.s      wi_service_10
[00022782] 5542                      subq.w     #2,d2
[00022784] 6716                      beq.s      wi_service_11
[00022786] 6022                      bra.s      wi_service_12
wi_service_10:
[00022788] 0c68 2710 0016            cmpi.w     #$2710,22(a0)
[0002278e] 6752                      beq.s      wi_service_8
[00022790] 6012                      bra.s      wi_service_13
wi_service_9:
[00022792] 0c68 2711 0016            cmpi.w     #$2711,22(a0)
[00022798] 6748                      beq.s      wi_service_8
[0002279a] 6008                      bra.s      wi_service_13
wi_service_11:
[0002279c] 0c68 2720 0016            cmpi.w     #$2720,22(a0)
[000227a2] 673e                      beq.s      wi_service_8
wi_service_13:
[000227a4] 426c 0002                 clr.w      2(a4)
[000227a8] 6038                      bra.s      wi_service_8
wi_service_12:
[000227aa] 0c68 271c 0016            cmpi.w     #$271C,22(a0)
[000227b0] 6730                      beq.s      wi_service_8
[000227b2] 60f0                      bra.s      wi_service_13
wi_service_3:
[000227b4] 7001                      moveq.l    #1,d0
[000227b6] 204a                      movea.l    a2,a0
[000227b8] 6100 f712                 bsr        acc_window
[000227bc] 204a                      movea.l    a2,a0
[000227be] 4eb9 0002 2ee4            jsr        term
[000227c4] 601c                      bra.s      wi_service_8
wi_service_7:
[000227c6] 226b 0004                 movea.l    4(a3),a1
[000227ca] 204a                      movea.l    a2,a0
[000227cc] 4eb9 0001 45a2            jsr        new_name
[000227d2] 600e                      bra.s      wi_service_8
wi_service_5:
[000227d4] 224c                      movea.l    a4,a1
[000227d6] 3003                      move.w     d3,d0
[000227d8] 204a                      movea.l    a2,a0
[000227da] 4eb9 0005 1276            jsr        Awi_service
[000227e0] 6002                      bra.s      wi_service_14
wi_service_8:
[000227e2] 7001                      moveq.l    #1,d0
wi_service_14:
[000227e4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000227e8] 4e75                      rts

set_window:
[000227ea] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[000227ee] 4fef ffc2                 lea.l      -62(a7),a7
[000227f2] 2a48                      movea.l    a0,a5
[000227f4] 2050                      movea.l    (a0),a0
[000227f6] 2268 0004                 movea.l    4(a0),a1
[000227fa] 2469 0004                 movea.l    4(a1),a2
[000227fe] 266d 0014                 movea.l    20(a5),a3
[00022802] 362a 0022                 move.w     34(a2),d3
[00022806] 41eb 0228                 lea.l      552(a3),a0
[0002280a] 7002                      moveq.l    #2,d0
[0002280c] c043                      and.w      d3,d0
[0002280e] 4eb9 0001 3f6e            jsr        set_flag
[00022814] 41eb 03c0                 lea.l      960(a3),a0
[00022818] 3003                      move.w     d3,d0
[0002281a] c07c 1000                 and.w      #$1000,d0
[0002281e] 4eb9 0001 3f6e            jsr        set_flag
[00022824] 41eb 03a8                 lea.l      936(a3),a0
[00022828] 7008                      moveq.l    #8,d0
[0002282a] c043                      and.w      d3,d0
[0002282c] 4eb9 0001 3f6e            jsr        set_flag
[00022832] 41eb 0390                 lea.l      912(a3),a0
[00022836] 7001                      moveq.l    #1,d0
[00022838] c043                      and.w      d3,d0
[0002283a] 4eb9 0001 3f6e            jsr        set_flag
[00022840] 41eb 0240                 lea.l      576(a3),a0
[00022844] 7010                      moveq.l    #16,d0
[00022846] c043                      and.w      d3,d0
[00022848] 4eb9 0001 3f6e            jsr        set_flag
[0002284e] 41eb 0348                 lea.l      840(a3),a0
[00022852] 7004                      moveq.l    #4,d0
[00022854] c043                      and.w      d3,d0
[00022856] 4eb9 0001 3f6e            jsr        set_flag
[0002285c] 41eb 02d0                 lea.l      720(a3),a0
[00022860] 7020                      moveq.l    #32,d0
[00022862] c043                      and.w      d3,d0
[00022864] 4eb9 0001 3f6e            jsr        set_flag
[0002286a] 41eb 0330                 lea.l      816(a3),a0
[0002286e] 7040                      moveq.l    #64,d0
[00022870] c043                      and.w      d3,d0
[00022872] 4eb9 0001 3f6e            jsr        set_flag
[00022878] 41eb 02e8                 lea.l      744(a3),a0
[0002287c] 303c 0080                 move.w     #$0080,d0
[00022880] c043                      and.w      d3,d0
[00022882] 4eb9 0001 3f6e            jsr        set_flag
[00022888] 41eb 02b8                 lea.l      696(a3),a0
[0002288c] 3003                      move.w     d3,d0
[0002288e] c07c 0400                 and.w      #$0400,d0
[00022892] 4eb9 0001 3f6e            jsr        set_flag
[00022898] 41eb 02a0                 lea.l      672(a3),a0
[0002289c] 3003                      move.w     d3,d0
[0002289e] c07c 0200                 and.w      #$0200,d0
[000228a2] 4eb9 0001 3f6e            jsr        set_flag
[000228a8] 41eb 0318                 lea.l      792(a3),a0
[000228ac] 3003                      move.w     d3,d0
[000228ae] c07c 0100                 and.w      #$0100,d0
[000228b2] 4eb9 0001 3f6e            jsr        set_flag
[000228b8] 41eb 0288                 lea.l      648(a3),a0
[000228bc] 3003                      move.w     d3,d0
[000228be] c07c 0800                 and.w      #$0800,d0
[000228c2] 4eb9 0001 3f6e            jsr        set_flag
[000228c8] 41eb 0360                 lea.l      864(a3),a0
[000228cc] 3003                      move.w     d3,d0
[000228ce] c07c 4000                 and.w      #$4000,d0
[000228d2] 4eb9 0001 3f6e            jsr        set_flag
[000228d8] 41eb 0378                 lea.l      888(a3),a0
[000228dc] 3003                      move.w     d3,d0
[000228de] c07c 2000                 and.w      #$2000,d0
[000228e2] 4eb9 0001 3f6e            jsr        set_flag
[000228e8] 362a 0054                 move.w     84(a2),d3
[000228ec] 41eb 03f0                 lea.l      1008(a3),a0
[000228f0] 7008                      moveq.l    #8,d0
[000228f2] c043                      and.w      d3,d0
[000228f4] 4eb9 0001 3f6e            jsr        set_flag
[000228fa] 41eb 0420                 lea.l      1056(a3),a0
[000228fe] 7004                      moveq.l    #4,d0
[00022900] c043                      and.w      d3,d0
[00022902] 4eb9 0001 3f6e            jsr        set_flag
[00022908] 41eb 0450                 lea.l      1104(a3),a0
[0002290c] 7001                      moveq.l    #1,d0
[0002290e] c043                      and.w      d3,d0
[00022910] 4eb9 0001 3f6e            jsr        set_flag
[00022916] 41eb 0480                 lea.l      1152(a3),a0
[0002291a] 7002                      moveq.l    #2,d0
[0002291c] c043                      and.w      d3,d0
[0002291e] 4eb9 0001 3f6e            jsr        set_flag
[00022924] 41eb 04b0                 lea.l      1200(a3),a0
[00022928] 7010                      moveq.l    #16,d0
[0002292a] c043                      and.w      d3,d0
[0002292c] 4eb9 0001 3f6e            jsr        set_flag
[00022932] 41eb 04e0                 lea.l      1248(a3),a0
[00022936] 3003                      move.w     d3,d0
[00022938] c07c 0100                 and.w      #$0100,d0
[0002293c] 4eb9 0001 3f6e            jsr        set_flag
[00022942] 2f4d 0034                 move.l     a5,52(a7)
[00022946] 4beb 0150                 lea.l      336(a3),a5
[0002294a] 2f4d 0038                 move.l     a5,56(a7)
[0002294e] 3f7c 000e 003c            move.w     #$000E,60(a7)
[00022954] 43ef 0034                 lea.l      52(a7),a1
[00022958] 7009                      moveq.l    #9,d0
[0002295a] 204d                      movea.l    a5,a0
[0002295c] 4eb9 0003 589a            jsr        Auo_slider
[00022962] 2f7c 0000 0007 002c       move.l     #$00000007,44(a7)
[0002296a] 43ef 002c                 lea.l      44(a7),a1
[0002296e] 7064                      moveq.l    #100,d0
[00022970] 204d                      movea.l    a5,a0
[00022972] 4eb9 0003 589a            jsr        Auo_slider
[00022978] 2f7c 0000 0001 002c       move.l     #$00000001,44(a7)
[00022980] 43ef 002c                 lea.l      44(a7),a1
[00022984] 7065                      moveq.l    #101,d0
[00022986] 204d                      movea.l    a5,a0
[00022988] 4eb9 0003 589a            jsr        Auo_slider
[0002298e] 302a 0048                 move.w     72(a2),d0
[00022992] 807c ff00                 or.w       #$FF00,d0
[00022996] 4440                      neg.w      d0
[00022998] b07c 0008                 cmp.w      #$0008,d0
[0002299c] 673e                      beq.s      set_window_1
[0002299e] 6e0e                      bgt.s      set_window_2
[000229a0] 5340                      subq.w     #1,d0
[000229a2] 671e                      beq.s      set_window_3
[000229a4] 5340                      subq.w     #1,d0
[000229a6] 6720                      beq.s      set_window_4
[000229a8] 5540                      subq.w     #2,d0
[000229aa] 6726                      beq.s      set_window_5
[000229ac] 6054                      bra.s      set_window_6
set_window_2:
[000229ae] 907c 0010                 sub.w      #$0010,d0
[000229b2] 6732                      beq.s      set_window_7
[000229b4] 907c 0010                 sub.w      #$0010,d0
[000229b8] 6736                      beq.s      set_window_8
[000229ba] 907c 0020                 sub.w      #$0020,d0
[000229be] 673a                      beq.s      set_window_9
[000229c0] 6040                      bra.s      set_window_6
set_window_3:
[000229c2] 42af 002c                 clr.l      44(a7)
[000229c6] 603a                      bra.s      set_window_6
set_window_4:
[000229c8] 2f7c 0000 0001 002c       move.l     #$00000001,44(a7)
[000229d0] 6030                      bra.s      set_window_6
set_window_5:
[000229d2] 2f7c 0000 0002 002c       move.l     #$00000002,44(a7)
[000229da] 6026                      bra.s      set_window_6
set_window_1:
[000229dc] 2f7c 0000 0003 002c       move.l     #$00000003,44(a7)
[000229e4] 601c                      bra.s      set_window_6
set_window_7:
[000229e6] 2f7c 0000 0004 002c       move.l     #$00000004,44(a7)
[000229ee] 6012                      bra.s      set_window_6
set_window_8:
[000229f0] 2f7c 0000 0005 002c       move.l     #$00000005,44(a7)
[000229f8] 6008                      bra.s      set_window_6
set_window_9:
[000229fa] 2f7c 0000 0006 002c       move.l     #$00000006,44(a7)
set_window_6:
[00022a02] 43ef 002c                 lea.l      44(a7),a1
[00022a06] 7011                      moveq.l    #17,d0
[00022a08] 204d                      movea.l    a5,a0
[00022a0a] 4eb9 0003 589a            jsr        Auo_slider
[00022a10] 49ef 0008                 lea.l      8(a7),a4
[00022a14] 302a 0048                 move.w     72(a2),d0
[00022a18] 807c ff00                 or.w       #$FF00,d0
[00022a1c] 4440                      neg.w      d0
[00022a1e] 3f00                      move.w     d0,-(a7)
[00022a20] 43f9 000a b630            lea.l      $000AB630,a1
[00022a26] 204c                      movea.l    a4,a0
[00022a28] 4eb9 0007 5680            jsr        sprintf
[00022a2e] 544f                      addq.w     #2,a7
[00022a30] 224c                      movea.l    a4,a1
[00022a32] 7004                      moveq.l    #4,d0
[00022a34] 204d                      movea.l    a5,a0
[00022a36] 4eb9 0003 589a            jsr        Auo_slider
[00022a3c] 2ebc 0002 2e94            move.l     #live_snap,(a7)
[00022a42] 2f4d 0004                 move.l     a5,4(a7)
[00022a46] 43d7                      lea.l      (a7),a1
[00022a48] 7067                      moveq.l    #103,d0
[00022a4a] 204d                      movea.l    a5,a0
[00022a4c] 4eb9 0003 589a            jsr        Auo_slider
[00022a52] 4beb 0198                 lea.l      408(a3),a5
[00022a56] 2f4d 0038                 move.l     a5,56(a7)
[00022a5a] 3f7c 0011 003c            move.w     #$0011,60(a7)
[00022a60] 43ef 0034                 lea.l      52(a7),a1
[00022a64] 7009                      moveq.l    #9,d0
[00022a66] 204d                      movea.l    a5,a0
[00022a68] 4eb9 0003 589a            jsr        Auo_slider
[00022a6e] 2f7c 0000 0007 002c       move.l     #$00000007,44(a7)
[00022a76] 43ef 002c                 lea.l      44(a7),a1
[00022a7a] 7064                      moveq.l    #100,d0
[00022a7c] 204d                      movea.l    a5,a0
[00022a7e] 4eb9 0003 589a            jsr        Auo_slider
[00022a84] 2f7c 0000 0001 002c       move.l     #$00000001,44(a7)
[00022a8c] 43ef 002c                 lea.l      44(a7),a1
[00022a90] 7065                      moveq.l    #101,d0
[00022a92] 204d                      movea.l    a5,a0
[00022a94] 4eb9 0003 589a            jsr        Auo_slider
[00022a9a] 302a 0048                 move.w     72(a2),d0
[00022a9e] e040                      asr.w      #8,d0
[00022aa0] 4440                      neg.w      d0
[00022aa2] b07c 0008                 cmp.w      #$0008,d0
[00022aa6] 673e                      beq.s      set_window_10
[00022aa8] 6e0e                      bgt.s      set_window_11
[00022aaa] 5340                      subq.w     #1,d0
[00022aac] 671e                      beq.s      set_window_12
[00022aae] 5340                      subq.w     #1,d0
[00022ab0] 6720                      beq.s      set_window_13
[00022ab2] 5540                      subq.w     #2,d0
[00022ab4] 6726                      beq.s      set_window_14
[00022ab6] 6054                      bra.s      set_window_15
set_window_11:
[00022ab8] 907c 0010                 sub.w      #$0010,d0
[00022abc] 6732                      beq.s      set_window_16
[00022abe] 907c 0010                 sub.w      #$0010,d0
[00022ac2] 6736                      beq.s      set_window_17
[00022ac4] 907c 0020                 sub.w      #$0020,d0
[00022ac8] 673a                      beq.s      set_window_18
[00022aca] 6040                      bra.s      set_window_15
set_window_12:
[00022acc] 42af 002c                 clr.l      44(a7)
[00022ad0] 603a                      bra.s      set_window_15
set_window_13:
[00022ad2] 2f7c 0000 0001 002c       move.l     #$00000001,44(a7)
[00022ada] 6030                      bra.s      set_window_15
set_window_14:
[00022adc] 2f7c 0000 0002 002c       move.l     #$00000002,44(a7)
[00022ae4] 6026                      bra.s      set_window_15
set_window_10:
[00022ae6] 2f7c 0000 0003 002c       move.l     #$00000003,44(a7)
[00022aee] 601c                      bra.s      set_window_15
set_window_16:
[00022af0] 2f7c 0000 0004 002c       move.l     #$00000004,44(a7)
[00022af8] 6012                      bra.s      set_window_15
set_window_17:
[00022afa] 2f7c 0000 0005 002c       move.l     #$00000005,44(a7)
[00022b02] 6008                      bra.s      set_window_15
set_window_18:
[00022b04] 2f7c 0000 0006 002c       move.l     #$00000006,44(a7)
set_window_15:
[00022b0c] 43ef 002c                 lea.l      44(a7),a1
[00022b10] 7011                      moveq.l    #17,d0
[00022b12] 204d                      movea.l    a5,a0
[00022b14] 4eb9 0003 589a            jsr        Auo_slider
[00022b1a] 302a 0048                 move.w     72(a2),d0
[00022b1e] e040                      asr.w      #8,d0
[00022b20] 4440                      neg.w      d0
[00022b22] 3f00                      move.w     d0,-(a7)
[00022b24] 43f9 000a b630            lea.l      $000AB630,a1
[00022b2a] 204c                      movea.l    a4,a0
[00022b2c] 4eb9 0007 5680            jsr        sprintf
[00022b32] 544f                      addq.w     #2,a7
[00022b34] 224c                      movea.l    a4,a1
[00022b36] 7004                      moveq.l    #4,d0
[00022b38] 204d                      movea.l    a5,a0
[00022b3a] 4eb9 0003 589a            jsr        Auo_slider
[00022b40] 2ebc 0002 2e94            move.l     #live_snap,(a7)
[00022b46] 2f4d 0004                 move.l     a5,4(a7)
[00022b4a] 43d7                      lea.l      (a7),a1
[00022b4c] 7067                      moveq.l    #103,d0
[00022b4e] 204d                      movea.l    a5,a0
[00022b50] 4eb9 0003 589a            jsr        Auo_slider
[00022b56] 3f2a 0024                 move.w     36(a2),-(a7)
[00022b5a] 43f9 000a b630            lea.l      $000AB630,a1
[00022b60] 7003                      moveq.l    #3,d0
[00022b62] 204b                      movea.l    a3,a0
[00022b64] 4eb9 0004 afac            jsr        Aob_printf
[00022b6a] 544f                      addq.w     #2,a7
[00022b6c] 3f2a 0026                 move.w     38(a2),-(a7)
[00022b70] 43f9 000a b630            lea.l      $000AB630,a1
[00022b76] 7005                      moveq.l    #5,d0
[00022b78] 204b                      movea.l    a3,a0
[00022b7a] 4eb9 0004 afac            jsr        Aob_printf
[00022b80] 544f                      addq.w     #2,a7
[00022b82] 3f2a 0028                 move.w     40(a2),-(a7)
[00022b86] 43f9 000a b630            lea.l      $000AB630,a1
[00022b8c] 7007                      moveq.l    #7,d0
[00022b8e] 204b                      movea.l    a3,a0
[00022b90] 4eb9 0004 afac            jsr        Aob_printf
[00022b96] 544f                      addq.w     #2,a7
[00022b98] 3f2a 002a                 move.w     42(a2),-(a7)
[00022b9c] 43f9 000a b630            lea.l      $000AB630,a1
[00022ba2] 7009                      moveq.l    #9,d0
[00022ba4] 204b                      movea.l    a3,a0
[00022ba6] 4eb9 0004 afac            jsr        Aob_printf
[00022bac] 544f                      addq.w     #2,a7
[00022bae] 2f6a 004a 0030            move.l     74(a2),48(a7)
[00022bb4] 206f 0030                 movea.l    48(a7),a0
[00022bb8] 2268 0004                 movea.l    4(a0),a1
[00022bbc] 703a                      moveq.l    #58,d0
[00022bbe] 204b                      movea.l    a3,a0
[00022bc0] 4eb9 0004 afe0            jsr        Aob_puttext
[00022bc6] 2f6a 004e 0030            move.l     78(a2),48(a7)
[00022bcc] 206f 0030                 movea.l    48(a7),a0
[00022bd0] 2268 0004                 movea.l    4(a0),a1
[00022bd4] 703b                      moveq.l    #59,d0
[00022bd6] 204b                      movea.l    a3,a0
[00022bd8] 4eb9 0004 afe0            jsr        Aob_puttext
[00022bde] 224c                      movea.l    a4,a1
[00022be0] 206a 0014                 movea.l    20(a2),a0
[00022be4] 4eb9 0001 3fb6            jsr        set_ref
[00022bea] 224c                      movea.l    a4,a1
[00022bec] 7004                      moveq.l    #4,d0
[00022bee] 41eb 0750                 lea.l      1872(a3),a0
[00022bf2] 4eb9 0005 e010            jsr        Auo_boxed
[00022bf8] 224c                      movea.l    a4,a1
[00022bfa] 206a 0018                 movea.l    24(a2),a0
[00022bfe] 4eb9 0001 3fb6            jsr        set_ref
[00022c04] 224c                      movea.l    a4,a1
[00022c06] 7004                      moveq.l    #4,d0
[00022c08] 41eb 0720                 lea.l      1824(a3),a0
[00022c0c] 4eb9 0005 e010            jsr        Auo_boxed
[00022c12] 224c                      movea.l    a4,a1
[00022c14] 206a 005e                 movea.l    94(a2),a0
[00022c18] 4eb9 0001 3fb6            jsr        set_ref
[00022c1e] 224c                      movea.l    a4,a1
[00022c20] 7004                      moveq.l    #4,d0
[00022c22] 41eb 06f0                 lea.l      1776(a3),a0
[00022c26] 4eb9 0005 e010            jsr        Auo_boxed
[00022c2c] 224c                      movea.l    a4,a1
[00022c2e] 206a 005a                 movea.l    90(a2),a0
[00022c32] 4eb9 0001 3fb6            jsr        set_ref
[00022c38] 224c                      movea.l    a4,a1
[00022c3a] 7004                      moveq.l    #4,d0
[00022c3c] 41eb 0780                 lea.l      1920(a3),a0
[00022c40] 4eb9 0005 e010            jsr        Auo_boxed
[00022c46] 224c                      movea.l    a4,a1
[00022c48] 2052                      movea.l    (a2),a0
[00022c4a] 4eb9 0001 3fb6            jsr        set_ref
[00022c50] 224c                      movea.l    a4,a1
[00022c52] 7004                      moveq.l    #4,d0
[00022c54] 41eb 07b0                 lea.l      1968(a3),a0
[00022c58] 4eb9 0005 e010            jsr        Auo_boxed
[00022c5e] 224c                      movea.l    a4,a1
[00022c60] 206a 000c                 movea.l    12(a2),a0
[00022c64] 4eb9 0001 3fb6            jsr        set_ref
[00022c6a] 224c                      movea.l    a4,a1
[00022c6c] 7004                      moveq.l    #4,d0
[00022c6e] 41eb 0918                 lea.l      2328(a3),a0
[00022c72] 4eb9 0005 e010            jsr        Auo_boxed
[00022c78] 224c                      movea.l    a4,a1
[00022c7a] 206a 0008                 movea.l    8(a2),a0
[00022c7e] 4eb9 0001 3fb6            jsr        set_ref
[00022c84] 224c                      movea.l    a4,a1
[00022c86] 7004                      moveq.l    #4,d0
[00022c88] 41eb 0948                 lea.l      2376(a3),a0
[00022c8c] 4eb9 0005 e010            jsr        Auo_boxed
[00022c92] 224c                      movea.l    a4,a1
[00022c94] 206a 0004                 movea.l    4(a2),a0
[00022c98] 4eb9 0001 3fb6            jsr        set_ref
[00022c9e] 224c                      movea.l    a4,a1
[00022ca0] 7004                      moveq.l    #4,d0
[00022ca2] 41eb 0978                 lea.l      2424(a3),a0
[00022ca6] 4eb9 0005 e010            jsr        Auo_boxed
[00022cac] 224c                      movea.l    a4,a1
[00022cae] 206a 0010                 movea.l    16(a2),a0
[00022cb2] 4eb9 0001 3fb6            jsr        set_ref
[00022cb8] 224c                      movea.l    a4,a1
[00022cba] 7004                      moveq.l    #4,d0
[00022cbc] 41eb 09a8                 lea.l      2472(a3),a0
[00022cc0] 4eb9 0005 e010            jsr        Auo_boxed
[00022cc6] 224c                      movea.l    a4,a1
[00022cc8] 206a 0062                 movea.l    98(a2),a0
[00022ccc] 4eb9 0001 3fb6            jsr        set_ref
[00022cd2] 224c                      movea.l    a4,a1
[00022cd4] 7004                      moveq.l    #4,d0
[00022cd6] 41eb 09d8                 lea.l      2520(a3),a0
[00022cda] 4eb9 0005 e010            jsr        Auo_boxed
[00022ce0] 224c                      movea.l    a4,a1
[00022ce2] 206a 0066                 movea.l    102(a2),a0
[00022ce6] 4eb9 0001 3fb6            jsr        set_ref
[00022cec] 224c                      movea.l    a4,a1
[00022cee] 7004                      moveq.l    #4,d0
[00022cf0] 41eb 0a08                 lea.l      2568(a3),a0
[00022cf4] 4eb9 0005 e010            jsr        Auo_boxed
[00022cfa] 224c                      movea.l    a4,a1
[00022cfc] 206a 006a                 movea.l    106(a2),a0
[00022d00] 4eb9 0001 3fb6            jsr        set_ref
[00022d06] 224c                      movea.l    a4,a1
[00022d08] 7004                      moveq.l    #4,d0
[00022d0a] 41eb 0a38                 lea.l      2616(a3),a0
[00022d0e] 4eb9 0005 e010            jsr        Auo_boxed
[00022d14] 224c                      movea.l    a4,a1
[00022d16] 206a 006e                 movea.l    110(a2),a0
[00022d1a] 4eb9 0001 3fb6            jsr        set_ref
[00022d20] 224c                      movea.l    a4,a1
[00022d22] 7004                      moveq.l    #4,d0
[00022d24] 41eb 0a68                 lea.l      2664(a3),a0
[00022d28] 4eb9 0005 e010            jsr        Auo_boxed
[00022d2e] 224c                      movea.l    a4,a1
[00022d30] 206a 0072                 movea.l    114(a2),a0
[00022d34] 4eb9 0001 3fb6            jsr        set_ref
[00022d3a] 224c                      movea.l    a4,a1
[00022d3c] 7004                      moveq.l    #4,d0
[00022d3e] 41eb 0a98                 lea.l      2712(a3),a0
[00022d42] 4eb9 0005 e010            jsr        Auo_boxed
[00022d48] 224c                      movea.l    a4,a1
[00022d4a] 206a 0076                 movea.l    118(a2),a0
[00022d4e] 4eb9 0001 3fb6            jsr        set_ref
[00022d54] 224c                      movea.l    a4,a1
[00022d56] 7004                      moveq.l    #4,d0
[00022d58] 41eb 0ac8                 lea.l      2760(a3),a0
[00022d5c] 4eb9 0005 e010            jsr        Auo_boxed
[00022d62] 224c                      movea.l    a4,a1
[00022d64] 206a 007a                 movea.l    122(a2),a0
[00022d68] 4eb9 0001 3fb6            jsr        set_ref
[00022d6e] 224c                      movea.l    a4,a1
[00022d70] 7004                      moveq.l    #4,d0
[00022d72] 41eb 0af8                 lea.l      2808(a3),a0
[00022d76] 4eb9 0005 e010            jsr        Auo_boxed
[00022d7c] 224c                      movea.l    a4,a1
[00022d7e] 206a 007e                 movea.l    126(a2),a0
[00022d82] 4eb9 0001 3fb6            jsr        set_ref
[00022d88] 224c                      movea.l    a4,a1
[00022d8a] 7004                      moveq.l    #4,d0
[00022d8c] 41eb 0b28                 lea.l      2856(a3),a0
[00022d90] 4eb9 0005 e010            jsr        Auo_boxed
[00022d96] 224c                      movea.l    a4,a1
[00022d98] 206a 0082                 movea.l    130(a2),a0
[00022d9c] 4eb9 0001 3fb6            jsr        set_ref
[00022da2] 224c                      movea.l    a4,a1
[00022da4] 7004                      moveq.l    #4,d0
[00022da6] 41eb 0b58                 lea.l      2904(a3),a0
[00022daa] 4eb9 0005 e010            jsr        Auo_boxed
[00022db0] 224c                      movea.l    a4,a1
[00022db2] 206a 0086                 movea.l    134(a2),a0
[00022db6] 4eb9 0001 3fb6            jsr        set_ref
[00022dbc] 224c                      movea.l    a4,a1
[00022dbe] 7004                      moveq.l    #4,d0
[00022dc0] 41eb 0bb8                 lea.l      3000(a3),a0
[00022dc4] 4eb9 0005 e010            jsr        Auo_boxed
[00022dca] 224c                      movea.l    a4,a1
[00022dcc] 206a 008a                 movea.l    138(a2),a0
[00022dd0] 4eb9 0001 3fb6            jsr        set_ref
[00022dd6] 224c                      movea.l    a4,a1
[00022dd8] 7004                      moveq.l    #4,d0
[00022dda] 41eb 0b88                 lea.l      2952(a3),a0
[00022dde] 4eb9 0005 e010            jsr        Auo_boxed
[00022de4] 224c                      movea.l    a4,a1
[00022de6] 206a 008e                 movea.l    142(a2),a0
[00022dea] 4eb9 0001 3fb6            jsr        set_ref
[00022df0] 224c                      movea.l    a4,a1
[00022df2] 7004                      moveq.l    #4,d0
[00022df4] 41eb 0be8                 lea.l      3048(a3),a0
[00022df8] 4eb9 0005 e010            jsr        Auo_boxed
[00022dfe] 224c                      movea.l    a4,a1
[00022e00] 206a 0092                 movea.l    146(a2),a0
[00022e04] 4eb9 0001 3fb6            jsr        set_ref
[00022e0a] 224c                      movea.l    a4,a1
[00022e0c] 7004                      moveq.l    #4,d0
[00022e0e] 41eb 0c18                 lea.l      3096(a3),a0
[00022e12] 4eb9 0005 e010            jsr        Auo_boxed
[00022e18] 224c                      movea.l    a4,a1
[00022e1a] 206a 0096                 movea.l    150(a2),a0
[00022e1e] 4eb9 0001 3fb6            jsr        set_ref
[00022e24] 224c                      movea.l    a4,a1
[00022e26] 7004                      moveq.l    #4,d0
[00022e28] 41eb 0c48                 lea.l      3144(a3),a0
[00022e2c] 4eb9 0005 e010            jsr        Auo_boxed
[00022e32] 202a 009e                 move.l     158(a2),d0
[00022e36] 6716                      beq.s      set_window_19
[00022e38] 2f40 0030                 move.l     d0,48(a7)
[00022e3c] 2040                      movea.l    d0,a0
[00022e3e] 2268 0004                 movea.l    4(a0),a1
[00022e42] 204b                      movea.l    a3,a0
[00022e44] 7043                      moveq.l    #67,d0
[00022e46] 4eb9 0004 afe0            jsr        Aob_puttext
[00022e4c] 6010                      bra.s      set_window_20
set_window_19:
[00022e4e] 43f9 000a b632            lea.l      $000AB632,a1
[00022e54] 7043                      moveq.l    #67,d0
[00022e56] 204b                      movea.l    a3,a0
[00022e58] 4eb9 0004 afe0            jsr        Aob_puttext
set_window_20:
[00022e5e] 202a 009a                 move.l     154(a2),d0
[00022e62] 6716                      beq.s      set_window_21
[00022e64] 2f40 0030                 move.l     d0,48(a7)
[00022e68] 2040                      movea.l    d0,a0
[00022e6a] 2268 0004                 movea.l    4(a0),a1
[00022e6e] 204b                      movea.l    a3,a0
[00022e70] 7042                      moveq.l    #66,d0
[00022e72] 4eb9 0004 afe0            jsr        Aob_puttext
[00022e78] 6010                      bra.s      set_window_22
set_window_21:
[00022e7a] 43f9 000a b632            lea.l      $000AB632,a1
[00022e80] 7042                      moveq.l    #66,d0
[00022e82] 204b                      movea.l    a3,a0
[00022e84] 4eb9 0004 afe0            jsr        Aob_puttext
set_window_22:
[00022e8a] 4fef 003e                 lea.l      62(a7),a7
[00022e8e] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00022e92] 4e75                      rts

live_snap:
[00022e94] 2f03                      move.l     d3,-(a7)
[00022e96] 5d4f                      subq.w     #6,a7
[00022e98] 3200                      move.w     d0,d1
[00022e9a] b27c 0006                 cmp.w      #$0006,d1
[00022e9e] 6232                      bhi.s      live_snap_1
[00022ea0] d241                      add.w      d1,d1
[00022ea2] 323b 1006                 move.w     $00022EAA(pc,d1.w),d1
[00022ea6] 4efb 1002                 jmp        $00022EAA(pc,d1.w)
J9:
[00022eaa] 000e                      dc.w $000e   ; live_snap_2-J9
[00022eac] 0012                      dc.w $0012   ; live_snap_3-J9
[00022eae] 0016                      dc.w $0016   ; live_snap_4-J9
[00022eb0] 001a                      dc.w $001a   ; live_snap_5-J9
[00022eb2] 001e                      dc.w $001e   ; live_snap_6-J9
[00022eb4] 0022                      dc.w $0022   ; live_snap_7-J9
[00022eb6] 0026                      dc.w $0026   ; live_snap_8-J9
live_snap_2:
[00022eb8] 7601                      moveq.l    #1,d3
[00022eba] 6016                      bra.s      live_snap_1
live_snap_3:
[00022ebc] 7602                      moveq.l    #2,d3
[00022ebe] 6012                      bra.s      live_snap_1
live_snap_4:
[00022ec0] 7604                      moveq.l    #4,d3
[00022ec2] 600e                      bra.s      live_snap_1
live_snap_5:
[00022ec4] 7608                      moveq.l    #8,d3
[00022ec6] 600a                      bra.s      live_snap_1
live_snap_6:
[00022ec8] 7610                      moveq.l    #16,d3
[00022eca] 6006                      bra.s      live_snap_1
live_snap_7:
[00022ecc] 7620                      moveq.l    #32,d3
[00022ece] 6002                      bra.s      live_snap_1
live_snap_8:
[00022ed0] 7640                      moveq.l    #64,d3
live_snap_1:
[00022ed2] 720a                      moveq.l    #10,d1
[00022ed4] 41d7                      lea.l      (a7),a0
[00022ed6] 3003                      move.w     d3,d0
[00022ed8] 4eb9 0007 6804            jsr        itoa
[00022ede] 5c4f                      addq.w     #6,a7
[00022ee0] 261f                      move.l     (a7)+,d3
[00022ee2] 4e75                      rts

term:
[00022ee4] 2f0a                      move.l     a2,-(a7)
[00022ee6] 2f0b                      move.l     a3,-(a7)
[00022ee8] 2448                      movea.l    a0,a2
[00022eea] 2650                      movea.l    (a0),a3
[00022eec] 226b 0004                 movea.l    4(a3),a1
[00022ef0] 42a9 0012                 clr.l      18(a1)
[00022ef4] 302a 0056                 move.w     86(a2),d0
[00022ef8] c07c 0800                 and.w      #$0800,d0
[00022efc] 6716                      beq.s      term_1
[00022efe] 43ea 002c                 lea.l      44(a2),a1
[00022f02] 206b 0004                 movea.l    4(a3),a0
[00022f06] 41e8 003a                 lea.l      58(a0),a0
[00022f0a] 7008                      moveq.l    #8,d0
[00022f0c] 4eb9 0007 6f44            jsr        memcpy
[00022f12] 6014                      bra.s      term_2
term_1:
[00022f14] 7008                      moveq.l    #8,d0
[00022f16] 43ea 0024                 lea.l      36(a2),a1
[00022f1a] 206b 0004                 movea.l    4(a3),a0
[00022f1e] 41e8 003a                 lea.l      58(a0),a0
[00022f22] 4eb9 0007 6f44            jsr        memcpy
term_2:
[00022f28] 204b                      movea.l    a3,a0
[00022f2a] 4eb9 0004 7e26            jsr        Ax_free
[00022f30] 204a                      movea.l    a2,a0
[00022f32] 4eb9 0005 0330            jsr        Awi_delete
[00022f38] 265f                      movea.l    (a7)+,a3
[00022f3a] 245f                      movea.l    (a7)+,a2
[00022f3c] 4e75                      rts

edwi_tme:
[00021cfe] 2f0a                      move.l     a2,-(a7)
[00021d00] 2f0b                      move.l     a3,-(a7)
[00021d02] 2079 0010 1f12            movea.l    ACSblk,a0
[00021d08] 2468 0258                 movea.l    600(a0),a2
[00021d0c] 2052                      movea.l    (a2),a0
[00021d0e] 006a 0004 0054            ori.w      #$0004,84(a2)
[00021d14] 47f9 000c 2814            lea.l      list_menu,a3
[00021d1a] 2690                      move.l     (a0),(a3)
[00021d1c] 2250                      movea.l    (a0),a1
[00021d1e] 2769 001c 0004            move.l     28(a1),4(a3)
[00021d24] 204b                      movea.l    a3,a0
[00021d26] 2279 000c 1880            movea.l    $000C1880,a1
[00021d2c] 4e91                      jsr        (a1)
[00021d2e] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[00021d34] 265f                      movea.l    (a7)+,a3
[00021d36] 245f                      movea.l    (a7)+,a2
[00021d38] 4e75                      rts

edwi_two:
[00021d3a] 2f0a                      move.l     a2,-(a7)
[00021d3c] 2f0b                      move.l     a3,-(a7)
[00021d3e] 2079 0010 1f12            movea.l    ACSblk,a0
[00021d44] 2468 0258                 movea.l    600(a0),a2
[00021d48] 2052                      movea.l    (a2),a0
[00021d4a] 006a 0004 0054            ori.w      #$0004,84(a2)
[00021d50] 47f9 000c 296e            lea.l      list_object,a3
[00021d56] 2690                      move.l     (a0),(a3)
[00021d58] 2250                      movea.l    (a0),a1
[00021d5a] 2769 0018 0004            move.l     24(a1),4(a3)
[00021d60] 204b                      movea.l    a3,a0
[00021d62] 2279 000c 1880            movea.l    $000C1880,a1
[00021d68] 4e91                      jsr        (a1)
[00021d6a] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[00021d70] 265f                      movea.l    (a7)+,a3
[00021d72] 245f                      movea.l    (a7)+,a2
[00021d74] 4e75                      rts

edwi_tic:
[00021d76] 2f0a                      move.l     a2,-(a7)
[00021d78] 2f0b                      move.l     a3,-(a7)
[00021d7a] 2079 0010 1f12            movea.l    ACSblk,a0
[00021d80] 2468 0258                 movea.l    600(a0),a2
[00021d84] 2052                      movea.l    (a2),a0
[00021d86] 006a 0004 0054            ori.w      #$0004,84(a2)
[00021d8c] 47f9 000c 1f14            lea.l      list_icon,a3
[00021d92] 2690                      move.l     (a0),(a3)
[00021d94] 2250                      movea.l    (a0),a1
[00021d96] 2769 002c 0004            move.l     44(a1),4(a3)
[00021d9c] 204b                      movea.l    a3,a0
[00021d9e] 2279 000c 1880            movea.l    $000C1880,a1
[00021da4] 4e91                      jsr        (a1)
[00021da6] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[00021dac] 265f                      movea.l    (a7)+,a3
[00021dae] 245f                      movea.l    (a7)+,a2
[00021db0] 4e75                      rts

edwi_ref:
[00021db2] 2f0a                      move.l     a2,-(a7)
[00021db4] 2f0b                      move.l     a3,-(a7)
[00021db6] 2079 0010 1f12            movea.l    ACSblk,a0
[00021dbc] 2468 0258                 movea.l    600(a0),a2
[00021dc0] 2052                      movea.l    (a2),a0
[00021dc2] 006a 0004 0054            ori.w      #$0004,84(a2)
[00021dc8] 47f9 000c 2ade            lea.l      list_reference,a3
[00021dce] 2690                      move.l     (a0),(a3)
[00021dd0] 2250                      movea.l    (a0),a1
[00021dd2] 2769 003c 0004            move.l     60(a1),4(a3)
[00021dd8] 204b                      movea.l    a3,a0
[00021dda] 2279 000c 1880            movea.l    $000C1880,a1
[00021de0] 4e91                      jsr        (a1)
[00021de2] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[00021de8] 265f                      movea.l    (a7)+,a3
[00021dea] 245f                      movea.l    (a7)+,a2
[00021dec] 4e75                      rts

edwi_ok:
[00021dee] 4240                      clr.w      d0
[00021df0] 2079 0010 1f12            movea.l    ACSblk,a0
[00021df6] 2068 0258                 movea.l    600(a0),a0
[00021dfa] 4eb9 0002 1ecc            jsr        acc_window
[00021e00] 2079 0010 1f12            movea.l    ACSblk,a0
[00021e06] 2068 0258                 movea.l    600(a0),a0
[00021e0a] 4eb9 0002 2ee4            jsr        term
[00021e10] 4e75                      rts

edwi_abort:
[00021e12] 2079 0010 1f12            movea.l    ACSblk,a0
[00021e18] 2068 0258                 movea.l    600(a0),a0
[00021e1c] 4eb9 0002 2ee4            jsr        term
[00021e22] 4e75                      rts

edwi_acc:
[00021e24] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00021e28] 594f                      subq.w     #4,a7
[00021e2a] 45f9 0010 1f12            lea.l      ACSblk,a2
[00021e30] 2052                      movea.l    (a2),a0
[00021e32] 2668 0258                 movea.l    600(a0),a3
[00021e36] 286b 0014                 movea.l    20(a3),a4
[00021e3a] 4268 0248                 clr.w      584(a0)
[00021e3e] 4eb9 0004 484c            jsr        Adr_next
[00021e44] 3600                      move.w     d0,d3
[00021e46] 6b00 007c                 bmi.w      edwi_acc_1
[00021e4a] 48c0                      ext.l      d0
[00021e4c] 2200                      move.l     d0,d1
[00021e4e] d281                      add.l      d1,d1
[00021e50] d280                      add.l      d0,d1
[00021e52] e789                      lsl.l      #3,d1
[00021e54] 2052                      movea.l    (a2),a0
[00021e56] 2268 0240                 movea.l    576(a0),a1
[00021e5a] 2069 0014                 movea.l    20(a1),a0
[00021e5e] 41f0 1818                 lea.l      24(a0,d1.l),a0
[00021e62] 2ea8 000c                 move.l     12(a0),(a7)
[00021e66] 0c68 2710 0016            cmpi.w     #$2710,22(a0)
[00021e6c] 6718                      beq.s      edwi_acc_2
[00021e6e] 0c68 2711 0016            cmpi.w     #$2711,22(a0)
[00021e74] 6710                      beq.s      edwi_acc_2
[00021e76] 0c68 2720 0016            cmpi.w     #$2720,22(a0)
[00021e7c] 6708                      beq.s      edwi_acc_2
[00021e7e] 0c68 271c 0016            cmpi.w     #$271C,22(a0)
[00021e84] 663e                      bne.s      edwi_acc_1
edwi_acc_2:
[00021e86] 4eb9 0004 b286            jsr        Awi_diaend
[00021e8c] 2257                      movea.l    (a7),a1
[00021e8e] 43e9 0016                 lea.l      22(a1),a1
[00021e92] 2052                      movea.l    (a2),a0
[00021e94] 3028 0260                 move.w     608(a0),d0
[00021e98] 204c                      movea.l    a4,a0
[00021e9a] 4eb9 0004 afe0            jsr        Aob_puttext
[00021ea0] 72ff                      moveq.l    #-1,d1
[00021ea2] 2052                      movea.l    (a2),a0
[00021ea4] 3028 0260                 move.w     608(a0),d0
[00021ea8] 226b 0066                 movea.l    102(a3),a1
[00021eac] 204b                      movea.l    a3,a0
[00021eae] 4e91                      jsr        (a1)
[00021eb0] 4eb9 0004 b33c            jsr        Awi_diastart
[00021eb6] 3003                      move.w     d3,d0
[00021eb8] 2052                      movea.l    (a2),a0
[00021eba] 2068 0240                 movea.l    576(a0),a0
[00021ebe] 4eb9 0004 492a            jsr        Adr_del
edwi_acc_1:
[00021ec4] 584f                      addq.w     #4,a7
[00021ec6] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00021eca] 4e75                      rts

acc_window:
[00021ecc] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00021ed0] 4fef ff64                 lea.l      -156(a7),a7
[00021ed4] 2f48 0098                 move.l     a0,152(a7)
[00021ed8] 3600                      move.w     d0,d3
[00021eda] 43f9 000a b5ac            lea.l      $000AB5AC,a1
[00021ee0] 41ef 0042                 lea.l      66(a7),a0
[00021ee4] 720f                      moveq.l    #15,d1
acc_window_1:
[00021ee6] 20d9                      move.l     (a1)+,(a0)+
[00021ee8] 51c9 fffc                 dbf        d1,acc_window_1
[00021eec] 30d9                      move.w     (a1)+,(a0)+
[00021eee] 41f9 000a b5ee            lea.l      $000AB5EE,a0
[00021ef4] 43d7                      lea.l      (a7),a1
[00021ef6] 720f                      moveq.l    #15,d1
acc_window_2:
[00021ef8] 22d8                      move.l     (a0)+,(a1)+
[00021efa] 51c9 fffc                 dbf        d1,acc_window_2
[00021efe] 32d8                      move.w     (a0)+,(a1)+
[00021f00] 206f 0098                 movea.l    152(a7),a0
[00021f04] 2050                      movea.l    (a0),a0
[00021f06] 2a50                      movea.l    (a0),a5
[00021f08] 2268 0004                 movea.l    4(a0),a1
[00021f0c] 2469 0004                 movea.l    4(a1),a2
[00021f10] 206f 0098                 movea.l    152(a7),a0
[00021f14] 2668 0014                 movea.l    20(a0),a3
[00021f18] 49ef 0088                 lea.l      136(a7),a4
[00021f1c] 224c                      movea.l    a4,a1
[00021f1e] 7003                      moveq.l    #3,d0
[00021f20] 41eb 0948                 lea.l      2376(a3),a0
[00021f24] 4eb9 0005 e010            jsr        Auo_boxed
[00021f2a] 2054                      movea.l    (a4),a0
[00021f2c] 1010                      move.b     (a0),d0
[00021f2e] 6612                      bne.s      acc_window_3
[00021f30] 4a43                      tst.w      d3
[00021f32] 660e                      bne.s      acc_window_3
[00021f34] 41f9 000a 7a79            lea.l      WARN_CREATE,a0
[00021f3a] 7001                      moveq.l    #1,d0
[00021f3c] 4eb9 0005 17fe            jsr        Awi_alert
acc_window_3:
[00021f42] 006d 0001 0006            ori.w      #$0001,6(a5)
[00021f48] 4240                      clr.w      d0
[00021f4a] 7201                      moveq.l    #1,d1
[00021f4c] c26b 0232                 and.w      562(a3),d1
[00021f50] 6704                      beq.s      acc_window_4
[00021f52] 807c 0002                 or.w       #$0002,d0
acc_window_4:
[00021f56] 7201                      moveq.l    #1,d1
[00021f58] c26b 03ca                 and.w      970(a3),d1
[00021f5c] 6704                      beq.s      acc_window_5
[00021f5e] 807c 1000                 or.w       #$1000,d0
acc_window_5:
[00021f62] 7201                      moveq.l    #1,d1
[00021f64] c26b 03b2                 and.w      946(a3),d1
[00021f68] 6704                      beq.s      acc_window_6
[00021f6a] 807c 0008                 or.w       #$0008,d0
acc_window_6:
[00021f6e] 7201                      moveq.l    #1,d1
[00021f70] c26b 039a                 and.w      922(a3),d1
[00021f74] 6704                      beq.s      acc_window_7
[00021f76] 807c 0001                 or.w       #$0001,d0
acc_window_7:
[00021f7a] 7201                      moveq.l    #1,d1
[00021f7c] c26b 024a                 and.w      586(a3),d1
[00021f80] 6704                      beq.s      acc_window_8
[00021f82] 807c 0010                 or.w       #$0010,d0
acc_window_8:
[00021f86] 7201                      moveq.l    #1,d1
[00021f88] c26b 0352                 and.w      850(a3),d1
[00021f8c] 6704                      beq.s      acc_window_9
[00021f8e] 807c 0004                 or.w       #$0004,d0
acc_window_9:
[00021f92] 7201                      moveq.l    #1,d1
[00021f94] c26b 02da                 and.w      730(a3),d1
[00021f98] 6704                      beq.s      acc_window_10
[00021f9a] 807c 0020                 or.w       #$0020,d0
acc_window_10:
[00021f9e] 7201                      moveq.l    #1,d1
[00021fa0] c26b 033a                 and.w      826(a3),d1
[00021fa4] 6704                      beq.s      acc_window_11
[00021fa6] 807c 0040                 or.w       #$0040,d0
acc_window_11:
[00021faa] 7201                      moveq.l    #1,d1
[00021fac] c26b 02f2                 and.w      754(a3),d1
[00021fb0] 6704                      beq.s      acc_window_12
[00021fb2] 807c 0080                 or.w       #$0080,d0
acc_window_12:
[00021fb6] 7201                      moveq.l    #1,d1
[00021fb8] c26b 02c2                 and.w      706(a3),d1
[00021fbc] 6704                      beq.s      acc_window_13
[00021fbe] 807c 0400                 or.w       #$0400,d0
acc_window_13:
[00021fc2] 7201                      moveq.l    #1,d1
[00021fc4] c26b 02aa                 and.w      682(a3),d1
[00021fc8] 6704                      beq.s      acc_window_14
[00021fca] 807c 0200                 or.w       #$0200,d0
acc_window_14:
[00021fce] 7201                      moveq.l    #1,d1
[00021fd0] c26b 0292                 and.w      658(a3),d1
[00021fd4] 6704                      beq.s      acc_window_15
[00021fd6] 807c 0800                 or.w       #$0800,d0
acc_window_15:
[00021fda] 7201                      moveq.l    #1,d1
[00021fdc] c26b 0322                 and.w      802(a3),d1
[00021fe0] 6704                      beq.s      acc_window_16
[00021fe2] 807c 0100                 or.w       #$0100,d0
acc_window_16:
[00021fe6] 7201                      moveq.l    #1,d1
[00021fe8] c26b 036a                 and.w      874(a3),d1
[00021fec] 6704                      beq.s      acc_window_17
[00021fee] 807c 4000                 or.w       #$4000,d0
acc_window_17:
[00021ff2] 7201                      moveq.l    #1,d1
[00021ff4] c26b 0382                 and.w      898(a3),d1
[00021ff8] 6704                      beq.s      acc_window_18
[00021ffa] 807c 2000                 or.w       #$2000,d0
acc_window_18:
[00021ffe] 3540 0022                 move.w     d0,34(a2)
[00022002] 4240                      clr.w      d0
[00022004] 7201                      moveq.l    #1,d1
[00022006] c26b 03fa                 and.w      1018(a3),d1
[0002200a] 6704                      beq.s      acc_window_19
[0002200c] 807c 0008                 or.w       #$0008,d0
acc_window_19:
[00022010] 7201                      moveq.l    #1,d1
[00022012] c26b 042a                 and.w      1066(a3),d1
[00022016] 6704                      beq.s      acc_window_20
[00022018] 807c 0004                 or.w       #$0004,d0
acc_window_20:
[0002201c] 7201                      moveq.l    #1,d1
[0002201e] c26b 045a                 and.w      1114(a3),d1
[00022022] 6704                      beq.s      acc_window_21
[00022024] 807c 0001                 or.w       #$0001,d0
acc_window_21:
[00022028] 7201                      moveq.l    #1,d1
[0002202a] c26b 048a                 and.w      1162(a3),d1
[0002202e] 6704                      beq.s      acc_window_22
[00022030] 807c 0002                 or.w       #$0002,d0
acc_window_22:
[00022034] 7201                      moveq.l    #1,d1
[00022036] c26b 04ba                 and.w      1210(a3),d1
[0002203a] 6704                      beq.s      acc_window_23
[0002203c] 807c 0010                 or.w       #$0010,d0
acc_window_23:
[00022040] 7201                      moveq.l    #1,d1
[00022042] c26b 04ea                 and.w      1258(a3),d1
[00022046] 6704                      beq.s      acc_window_24
[00022048] 807c 0100                 or.w       #$0100,d0
acc_window_24:
[0002204c] 3540 0054                 move.w     d0,84(a2)
[00022050] 206f 0098                 movea.l    152(a7),a0
[00022054] 2268 0014                 movea.l    20(a0),a1
[00022058] 43e9 0150                 lea.l      336(a1),a1
[0002205c] 2f49 008c                 move.l     a1,140(a7)
[00022060] 224c                      movea.l    a4,a1
[00022062] 206f 008c                 movea.l    140(a7),a0
[00022066] 7003                      moveq.l    #3,d0
[00022068] 4eb9 0003 589a            jsr        Auo_slider
[0002206e] 486f 0086                 pea.l      134(a7)
[00022072] 43f9 000a b630            lea.l      $000AB630,a1
[00022078] 2054                      movea.l    (a4),a0
[0002207a] 4eb9 0007 594a            jsr        sscanf
[00022080] 584f                      addq.w     #4,a7
[00022082] 206f 0098                 movea.l    152(a7),a0
[00022086] 2268 0014                 movea.l    20(a0),a1
[0002208a] 43e9 0198                 lea.l      408(a1),a1
[0002208e] 2f49 008c                 move.l     a1,140(a7)
[00022092] 224c                      movea.l    a4,a1
[00022094] 7003                      moveq.l    #3,d0
[00022096] 206f 008c                 movea.l    140(a7),a0
[0002209a] 4eb9 0003 589a            jsr        Auo_slider
[000220a0] 486f 0084                 pea.l      132(a7)
[000220a4] 43f9 000a b630            lea.l      $000AB630,a1
[000220aa] 2054                      movea.l    (a4),a0
[000220ac] 4eb9 0007 594a            jsr        sscanf
[000220b2] 584f                      addq.w     #4,a7
[000220b4] 302f 0086                 move.w     134(a7),d0
[000220b8] 4440                      neg.w      d0
[000220ba] 322f 0084                 move.w     132(a7),d1
[000220be] 4441                      neg.w      d1
[000220c0] e149                      lsl.w      #8,d1
[000220c2] 827c 00ff                 or.w       #$00FF,d1
[000220c6] c041                      and.w      d1,d0
[000220c8] 3540 0048                 move.w     d0,72(a2)
[000220cc] 486a 0024                 pea.l      36(a2)
[000220d0] 43f9 000a b630            lea.l      $000AB630,a1
[000220d6] 204b                      movea.l    a3,a0
[000220d8] 7003                      moveq.l    #3,d0
[000220da] 4eb9 0004 b0b2            jsr        Aob_scanf
[000220e0] 584f                      addq.w     #4,a7
[000220e2] 486a 0026                 pea.l      38(a2)
[000220e6] 43f9 000a b630            lea.l      $000AB630,a1
[000220ec] 7005                      moveq.l    #5,d0
[000220ee] 204b                      movea.l    a3,a0
[000220f0] 4eb9 0004 b0b2            jsr        Aob_scanf
[000220f6] 584f                      addq.w     #4,a7
[000220f8] 486a 0028                 pea.l      40(a2)
[000220fc] 43f9 000a b630            lea.l      $000AB630,a1
[00022102] 7007                      moveq.l    #7,d0
[00022104] 204b                      movea.l    a3,a0
[00022106] 4eb9 0004 b0b2            jsr        Aob_scanf
[0002210c] 584f                      addq.w     #4,a7
[0002210e] 486a 002a                 pea.l      42(a2)
[00022112] 43f9 000a b630            lea.l      $000AB630,a1
[00022118] 7009                      moveq.l    #9,d0
[0002211a] 204b                      movea.l    a3,a0
[0002211c] 4eb9 0004 b0b2            jsr        Aob_scanf
[00022122] 584f                      addq.w     #4,a7
[00022124] 224c                      movea.l    a4,a1
[00022126] 7003                      moveq.l    #3,d0
[00022128] 41eb 0570                 lea.l      1392(a3),a0
[0002212c] 4eb9 0005 e010            jsr        Auo_boxed
[00022132] 2f14                      move.l     (a4),-(a7)
[00022134] 226a 004a                 movea.l    74(a2),a1
[00022138] 204d                      movea.l    a5,a0
[0002213a] 4eb9 0003 475a            jsr        change_string
[00022140] 584f                      addq.w     #4,a7
[00022142] 224c                      movea.l    a4,a1
[00022144] 7003                      moveq.l    #3,d0
[00022146] 41eb 0588                 lea.l      1416(a3),a0
[0002214a] 4eb9 0005 e010            jsr        Auo_boxed
[00022150] 2f14                      move.l     (a4),-(a7)
[00022152] 226a 004e                 movea.l    78(a2),a1
[00022156] 204d                      movea.l    a5,a0
[00022158] 4eb9 0003 475a            jsr        change_string
[0002215e] 584f                      addq.w     #4,a7
[00022160] 2f6a 0014 0094            move.l     20(a2),148(a7)
[00022166] 224c                      movea.l    a4,a1
[00022168] 7003                      moveq.l    #3,d0
[0002216a] 41eb 0750                 lea.l      1872(a3),a0
[0002216e] 4eb9 0005 e010            jsr        Auo_boxed
[00022174] 2054                      movea.l    (a4),a0
[00022176] 1010                      move.b     (a0),d0
[00022178] 672e                      beq.s      acc_window_25
[0002217a] 2248                      movea.l    a0,a1
[0002217c] 206d 0018                 movea.l    24(a5),a0
[00022180] 4eb9 0003 1a5c            jsr        find_entry
[00022186] 2f48 0090                 move.l     a0,144(a7)
[0002218a] 2008                      move.l     a0,d0
[0002218c] 6610                      bne.s      acc_window_26
[0002218e] 2254                      movea.l    (a4),a1
[00022190] 41f9 000a 7a2a            lea.l      ERR_OB_DEL,a0
[00022196] 4eb9 0005 ef8c            jsr        alert_str
[0002219c] 600e                      bra.s      acc_window_27
acc_window_26:
[0002219e] 206f 0090                 movea.l    144(a7),a0
[000221a2] 5268 0036                 addq.w     #1,54(a0)
[000221a6] 6004                      bra.s      acc_window_27
acc_window_25:
[000221a8] 42af 0090                 clr.l      144(a7)
acc_window_27:
[000221ac] 202f 0094                 move.l     148(a7),d0
[000221b0] 670a                      beq.s      acc_window_28
[000221b2] 2240                      movea.l    d0,a1
[000221b4] 204d                      movea.l    a5,a0
[000221b6] 4eb9 0003 4182            jsr        del_object
acc_window_28:
[000221bc] 256f 0090 0014            move.l     144(a7),20(a2)
[000221c2] 2f6a 0018 0094            move.l     24(a2),148(a7)
[000221c8] 224c                      movea.l    a4,a1
[000221ca] 7003                      moveq.l    #3,d0
[000221cc] 41eb 0720                 lea.l      1824(a3),a0
[000221d0] 4eb9 0005 e010            jsr        Auo_boxed
[000221d6] 2054                      movea.l    (a4),a0
[000221d8] 1010                      move.b     (a0),d0
[000221da] 672e                      beq.s      acc_window_29
[000221dc] 2248                      movea.l    a0,a1
[000221de] 206d 0018                 movea.l    24(a5),a0
[000221e2] 4eb9 0003 1a5c            jsr        find_entry
[000221e8] 2f48 0090                 move.l     a0,144(a7)
[000221ec] 2008                      move.l     a0,d0
[000221ee] 6610                      bne.s      acc_window_30
[000221f0] 2254                      movea.l    (a4),a1
[000221f2] 41f9 000a 7a2a            lea.l      ERR_OB_DEL,a0
[000221f8] 4eb9 0005 ef8c            jsr        alert_str
[000221fe] 600e                      bra.s      acc_window_31
acc_window_30:
[00022200] 206f 0090                 movea.l    144(a7),a0
[00022204] 5268 0036                 addq.w     #1,54(a0)
[00022208] 6004                      bra.s      acc_window_31
acc_window_29:
[0002220a] 42af 0090                 clr.l      144(a7)
acc_window_31:
[0002220e] 202f 0094                 move.l     148(a7),d0
[00022212] 670a                      beq.s      acc_window_32
[00022214] 2240                      movea.l    d0,a1
[00022216] 204d                      movea.l    a5,a0
[00022218] 4eb9 0003 4182            jsr        del_object
acc_window_32:
[0002221e] 256f 0090 0018            move.l     144(a7),24(a2)
[00022224] 2f6a 005e 0094            move.l     94(a2),148(a7)
[0002222a] 224c                      movea.l    a4,a1
[0002222c] 7003                      moveq.l    #3,d0
[0002222e] 41eb 06f0                 lea.l      1776(a3),a0
[00022232] 4eb9 0005 e010            jsr        Auo_boxed
[00022238] 2054                      movea.l    (a4),a0
[0002223a] 1010                      move.b     (a0),d0
[0002223c] 672e                      beq.s      acc_window_33
[0002223e] 2248                      movea.l    a0,a1
[00022240] 206d 001c                 movea.l    28(a5),a0
[00022244] 4eb9 0003 1a5c            jsr        find_entry
[0002224a] 2f48 0090                 move.l     a0,144(a7)
[0002224e] 2008                      move.l     a0,d0
[00022250] 6610                      bne.s      acc_window_34
[00022252] 2254                      movea.l    (a4),a1
[00022254] 41f9 000a 79e1            lea.l      ERR_ME_DEL,a0
[0002225a] 4eb9 0005 ef8c            jsr        alert_str
[00022260] 600e                      bra.s      acc_window_35
acc_window_34:
[00022262] 206f 0090                 movea.l    144(a7),a0
[00022266] 5268 0036                 addq.w     #1,54(a0)
[0002226a] 6004                      bra.s      acc_window_35
acc_window_33:
[0002226c] 42af 0090                 clr.l      144(a7)
acc_window_35:
[00022270] 202f 0094                 move.l     148(a7),d0
[00022274] 670a                      beq.s      acc_window_36
[00022276] 2240                      movea.l    d0,a1
[00022278] 204d                      movea.l    a5,a0
[0002227a] 4eb9 0003 3f14            jsr        del_men
acc_window_36:
[00022280] 256f 0090 005e            move.l     144(a7),94(a2)
[00022286] 2f6a 005a 0094            move.l     90(a2),148(a7)
[0002228c] 224c                      movea.l    a4,a1
[0002228e] 7003                      moveq.l    #3,d0
[00022290] 41eb 0780                 lea.l      1920(a3),a0
[00022294] 4eb9 0005 e010            jsr        Auo_boxed
[0002229a] 2054                      movea.l    (a4),a0
[0002229c] 1010                      move.b     (a0),d0
[0002229e] 672e                      beq.s      acc_window_37
[000222a0] 2248                      movea.l    a0,a1
[000222a2] 206d 002c                 movea.l    44(a5),a0
[000222a6] 4eb9 0003 1a5c            jsr        find_entry
[000222ac] 2f48 0090                 move.l     a0,144(a7)
[000222b0] 2008                      move.l     a0,d0
[000222b2] 6610                      bne.s      acc_window_38
[000222b4] 2254                      movea.l    (a4),a1
[000222b6] 41f9 000a 7998            lea.l      ERR_IC_DEL,a0
[000222bc] 4eb9 0005 ef8c            jsr        alert_str
[000222c2] 600e                      bra.s      acc_window_39
acc_window_38:
[000222c4] 206f 0090                 movea.l    144(a7),a0
[000222c8] 5268 0036                 addq.w     #1,54(a0)
[000222cc] 6004                      bra.s      acc_window_39
acc_window_37:
[000222ce] 42af 0090                 clr.l      144(a7)
acc_window_39:
[000222d2] 202f 0094                 move.l     148(a7),d0
[000222d6] 670a                      beq.s      acc_window_40
[000222d8] 2240                      movea.l    d0,a1
[000222da] 204d                      movea.l    a5,a0
[000222dc] 4eb9 0003 3220            jsr        del_icon
acc_window_40:
[000222e2] 256f 0090 005a            move.l     144(a7),90(a2)
[000222e8] 224c                      movea.l    a4,a1
[000222ea] 7003                      moveq.l    #3,d0
[000222ec] 41eb 07b0                 lea.l      1968(a3),a0
[000222f0] 4eb9 0005 e010            jsr        Auo_boxed
[000222f6] 2f14                      move.l     (a4),-(a7)
[000222f8] 4240                      clr.w      d0
[000222fa] 224a                      movea.l    a2,a1
[000222fc] 204d                      movea.l    a5,a0
[000222fe] 4eb9 0001 3f82            jsr        mod_ref
[00022304] 584f                      addq.w     #4,a7
[00022306] 224c                      movea.l    a4,a1
[00022308] 7003                      moveq.l    #3,d0
[0002230a] 41eb 0918                 lea.l      2328(a3),a0
[0002230e] 4eb9 0005 e010            jsr        Auo_boxed
[00022314] 2f14                      move.l     (a4),-(a7)
[00022316] 7006                      moveq.l    #6,d0
[00022318] 43ea 000c                 lea.l      12(a2),a1
[0002231c] 204d                      movea.l    a5,a0
[0002231e] 4eb9 0001 3f82            jsr        mod_ref
[00022324] 584f                      addq.w     #4,a7
[00022326] 224c                      movea.l    a4,a1
[00022328] 7003                      moveq.l    #3,d0
[0002232a] 41eb 0948                 lea.l      2376(a3),a0
[0002232e] 4eb9 0005 e010            jsr        Auo_boxed
[00022334] 2f14                      move.l     (a4),-(a7)
[00022336] 7007                      moveq.l    #7,d0
[00022338] 43ea 0008                 lea.l      8(a2),a1
[0002233c] 204d                      movea.l    a5,a0
[0002233e] 4eb9 0001 3f82            jsr        mod_ref
[00022344] 584f                      addq.w     #4,a7
[00022346] 224c                      movea.l    a4,a1
[00022348] 7003                      moveq.l    #3,d0
[0002234a] 41eb 0978                 lea.l      2424(a3),a0
[0002234e] 4eb9 0005 e010            jsr        Auo_boxed
[00022354] 2f14                      move.l     (a4),-(a7)
[00022356] 7015                      moveq.l    #21,d0
[00022358] 43ea 0004                 lea.l      4(a2),a1
[0002235c] 204d                      movea.l    a5,a0
[0002235e] 4eb9 0001 3f82            jsr        mod_ref
[00022364] 584f                      addq.w     #4,a7
[00022366] 224c                      movea.l    a4,a1
[00022368] 7003                      moveq.l    #3,d0
[0002236a] 41eb 09a8                 lea.l      2472(a3),a0
[0002236e] 4eb9 0005 e010            jsr        Auo_boxed
[00022374] 2f14                      move.l     (a4),-(a7)
[00022376] 7008                      moveq.l    #8,d0
[00022378] 43ea 0010                 lea.l      16(a2),a1
[0002237c] 204d                      movea.l    a5,a0
[0002237e] 4eb9 0001 3f82            jsr        mod_ref
[00022384] 584f                      addq.w     #4,a7
[00022386] 224c                      movea.l    a4,a1
[00022388] 7003                      moveq.l    #3,d0
[0002238a] 41eb 09d8                 lea.l      2520(a3),a0
[0002238e] 4eb9 0005 e010            jsr        Auo_boxed
[00022394] 2f14                      move.l     (a4),-(a7)
[00022396] 7009                      moveq.l    #9,d0
[00022398] 43ea 0062                 lea.l      98(a2),a1
[0002239c] 204d                      movea.l    a5,a0
[0002239e] 4eb9 0001 3f82            jsr        mod_ref
[000223a4] 584f                      addq.w     #4,a7
[000223a6] 224c                      movea.l    a4,a1
[000223a8] 7003                      moveq.l    #3,d0
[000223aa] 41eb 0a08                 lea.l      2568(a3),a0
[000223ae] 4eb9 0005 e010            jsr        Auo_boxed
[000223b4] 2f14                      move.l     (a4),-(a7)
[000223b6] 700a                      moveq.l    #10,d0
[000223b8] 43ea 0066                 lea.l      102(a2),a1
[000223bc] 204d                      movea.l    a5,a0
[000223be] 4eb9 0001 3f82            jsr        mod_ref
[000223c4] 584f                      addq.w     #4,a7
[000223c6] 224c                      movea.l    a4,a1
[000223c8] 7003                      moveq.l    #3,d0
[000223ca] 41eb 0a38                 lea.l      2616(a3),a0
[000223ce] 4eb9 0005 e010            jsr        Auo_boxed
[000223d4] 2f14                      move.l     (a4),-(a7)
[000223d6] 700b                      moveq.l    #11,d0
[000223d8] 43ea 006a                 lea.l      106(a2),a1
[000223dc] 204d                      movea.l    a5,a0
[000223de] 4eb9 0001 3f82            jsr        mod_ref
[000223e4] 584f                      addq.w     #4,a7
[000223e6] 224c                      movea.l    a4,a1
[000223e8] 7003                      moveq.l    #3,d0
[000223ea] 41eb 0a68                 lea.l      2664(a3),a0
[000223ee] 4eb9 0005 e010            jsr        Auo_boxed
[000223f4] 2f14                      move.l     (a4),-(a7)
[000223f6] 700c                      moveq.l    #12,d0
[000223f8] 43ea 006e                 lea.l      110(a2),a1
[000223fc] 204d                      movea.l    a5,a0
[000223fe] 4eb9 0001 3f82            jsr        mod_ref
[00022404] 584f                      addq.w     #4,a7
[00022406] 224c                      movea.l    a4,a1
[00022408] 7003                      moveq.l    #3,d0
[0002240a] 41eb 0a98                 lea.l      2712(a3),a0
[0002240e] 4eb9 0005 e010            jsr        Auo_boxed
[00022414] 2f14                      move.l     (a4),-(a7)
[00022416] 700e                      moveq.l    #14,d0
[00022418] 43ea 0072                 lea.l      114(a2),a1
[0002241c] 204d                      movea.l    a5,a0
[0002241e] 4eb9 0001 3f82            jsr        mod_ref
[00022424] 584f                      addq.w     #4,a7
[00022426] 224c                      movea.l    a4,a1
[00022428] 7003                      moveq.l    #3,d0
[0002242a] 41eb 0ac8                 lea.l      2760(a3),a0
[0002242e] 4eb9 0005 e010            jsr        Auo_boxed
[00022434] 2f14                      move.l     (a4),-(a7)
[00022436] 7014                      moveq.l    #20,d0
[00022438] 43ea 0076                 lea.l      118(a2),a1
[0002243c] 204d                      movea.l    a5,a0
[0002243e] 4eb9 0001 3f82            jsr        mod_ref
[00022444] 584f                      addq.w     #4,a7
[00022446] 224c                      movea.l    a4,a1
[00022448] 7003                      moveq.l    #3,d0
[0002244a] 41eb 0af8                 lea.l      2808(a3),a0
[0002244e] 4eb9 0005 e010            jsr        Auo_boxed
[00022454] 2f14                      move.l     (a4),-(a7)
[00022456] 700f                      moveq.l    #15,d0
[00022458] 43ea 007a                 lea.l      122(a2),a1
[0002245c] 204d                      movea.l    a5,a0
[0002245e] 4eb9 0001 3f82            jsr        mod_ref
[00022464] 584f                      addq.w     #4,a7
[00022466] 224c                      movea.l    a4,a1
[00022468] 7003                      moveq.l    #3,d0
[0002246a] 41eb 0b28                 lea.l      2856(a3),a0
[0002246e] 4eb9 0005 e010            jsr        Auo_boxed
[00022474] 2f14                      move.l     (a4),-(a7)
[00022476] 7010                      moveq.l    #16,d0
[00022478] 43ea 007e                 lea.l      126(a2),a1
[0002247c] 204d                      movea.l    a5,a0
[0002247e] 4eb9 0001 3f82            jsr        mod_ref
[00022484] 584f                      addq.w     #4,a7
[00022486] 224c                      movea.l    a4,a1
[00022488] 7003                      moveq.l    #3,d0
[0002248a] 41eb 0b58                 lea.l      2904(a3),a0
[0002248e] 4eb9 0005 e010            jsr        Auo_boxed
[00022494] 2f14                      move.l     (a4),-(a7)
[00022496] 7011                      moveq.l    #17,d0
[00022498] 43ea 0082                 lea.l      130(a2),a1
[0002249c] 204d                      movea.l    a5,a0
[0002249e] 4eb9 0001 3f82            jsr        mod_ref
[000224a4] 584f                      addq.w     #4,a7
[000224a6] 224c                      movea.l    a4,a1
[000224a8] 7003                      moveq.l    #3,d0
[000224aa] 41eb 0bb8                 lea.l      3000(a3),a0
[000224ae] 4eb9 0005 e010            jsr        Auo_boxed
[000224b4] 2f14                      move.l     (a4),-(a7)
[000224b6] 7013                      moveq.l    #19,d0
[000224b8] 43ea 0086                 lea.l      134(a2),a1
[000224bc] 204d                      movea.l    a5,a0
[000224be] 4eb9 0001 3f82            jsr        mod_ref
[000224c4] 584f                      addq.w     #4,a7
[000224c6] 224c                      movea.l    a4,a1
[000224c8] 7003                      moveq.l    #3,d0
[000224ca] 41eb 0b88                 lea.l      2952(a3),a0
[000224ce] 4eb9 0005 e010            jsr        Auo_boxed
[000224d4] 2f14                      move.l     (a4),-(a7)
[000224d6] 7012                      moveq.l    #18,d0
[000224d8] 43ea 008a                 lea.l      138(a2),a1
[000224dc] 204d                      movea.l    a5,a0
[000224de] 4eb9 0001 3f82            jsr        mod_ref
[000224e4] 584f                      addq.w     #4,a7
[000224e6] 224c                      movea.l    a4,a1
[000224e8] 7003                      moveq.l    #3,d0
[000224ea] 41eb 0be8                 lea.l      3048(a3),a0
[000224ee] 4eb9 0005 e010            jsr        Auo_boxed
[000224f4] 2f14                      move.l     (a4),-(a7)
[000224f6] 7016                      moveq.l    #22,d0
[000224f8] 43ea 008e                 lea.l      142(a2),a1
[000224fc] 204d                      movea.l    a5,a0
[000224fe] 4eb9 0001 3f82            jsr        mod_ref
[00022504] 584f                      addq.w     #4,a7
[00022506] 224c                      movea.l    a4,a1
[00022508] 7003                      moveq.l    #3,d0
[0002250a] 41eb 0c18                 lea.l      3096(a3),a0
[0002250e] 4eb9 0005 e010            jsr        Auo_boxed
[00022514] 2f14                      move.l     (a4),-(a7)
[00022516] 7017                      moveq.l    #23,d0
[00022518] 43ea 0092                 lea.l      146(a2),a1
[0002251c] 204d                      movea.l    a5,a0
[0002251e] 4eb9 0001 3f82            jsr        mod_ref
[00022524] 584f                      addq.w     #4,a7
[00022526] 224c                      movea.l    a4,a1
[00022528] 7003                      moveq.l    #3,d0
[0002252a] 41eb 0c48                 lea.l      3144(a3),a0
[0002252e] 4eb9 0005 e010            jsr        Auo_boxed
[00022534] 2f14                      move.l     (a4),-(a7)
[00022536] 7018                      moveq.l    #24,d0
[00022538] 43ea 0096                 lea.l      150(a2),a1
[0002253c] 204d                      movea.l    a5,a0
[0002253e] 4eb9 0001 3f82            jsr        mod_ref
[00022544] 584f                      addq.w     #4,a7
[00022546] 2f6a 009e 0094            move.l     158(a2),148(a7)
[0002254c] 43ef 0004                 lea.l      4(a7),a1
[00022550] 7003                      moveq.l    #3,d0
[00022552] 41eb 0648                 lea.l      1608(a3),a0
[00022556] 4eb9 0005 e010            jsr        Auo_boxed
[0002255c] 206f 0004                 movea.l    4(a7),a0
[00022560] 4eb9 0007 69b0            jsr        strlen
[00022566] 5280                      addq.l     #1,d0
[00022568] 2f40 000a                 move.l     d0,10(a7)
[0002256c] 2f40 000e                 move.l     d0,14(a7)
[00022570] 206f 0004                 movea.l    4(a7),a0
[00022574] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002257a] 4a40                      tst.w      d0
[0002257c] 662e                      bne.s      acc_window_41
[0002257e] 202f 0094                 move.l     148(a7),d0
[00022582] 6610                      bne.s      acc_window_42
[00022584] 43d7                      lea.l      (a7),a1
[00022586] 204d                      movea.l    a5,a0
[00022588] 4eb9 0003 461e            jsr        add_string
[0002258e] 2f48 0090                 move.l     a0,144(a7)
[00022592] 601c                      bra.s      acc_window_43
acc_window_42:
[00022594] 2f2f 0004                 move.l     4(a7),-(a7)
[00022598] 226f 0098                 movea.l    152(a7),a1
[0002259c] 204d                      movea.l    a5,a0
[0002259e] 4eb9 0003 475a            jsr        change_string
[000225a4] 584f                      addq.w     #4,a7
[000225a6] 2f48 0090                 move.l     a0,144(a7)
[000225aa] 6004                      bra.s      acc_window_43
acc_window_41:
[000225ac] 42af 0090                 clr.l      144(a7)
acc_window_43:
[000225b0] 202f 0094                 move.l     148(a7),d0
[000225b4] 6710                      beq.s      acc_window_44
[000225b6] b0af 0090                 cmp.l      144(a7),d0
[000225ba] 670a                      beq.s      acc_window_44
[000225bc] 2240                      movea.l    d0,a1
[000225be] 204d                      movea.l    a5,a0
[000225c0] 4eb9 0003 47e8            jsr        del_string
acc_window_44:
[000225c6] 256f 0090 009e            move.l     144(a7),158(a2)
[000225cc] 2f6a 009a 0094            move.l     154(a2),148(a7)
[000225d2] 43ef 0046                 lea.l      70(a7),a1
[000225d6] 7003                      moveq.l    #3,d0
[000225d8] 41eb 0630                 lea.l      1584(a3),a0
[000225dc] 4eb9 0005 e010            jsr        Auo_boxed
[000225e2] 206f 0046                 movea.l    70(a7),a0
[000225e6] 4eb9 0007 69b0            jsr        strlen
[000225ec] 5280                      addq.l     #1,d0
[000225ee] 2f40 004c                 move.l     d0,76(a7)
[000225f2] 2f40 0050                 move.l     d0,80(a7)
[000225f6] 206f 0046                 movea.l    70(a7),a0
[000225fa] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00022600] 4a40                      tst.w      d0
[00022602] 6630                      bne.s      acc_window_45
[00022604] 202f 0094                 move.l     148(a7),d0
[00022608] 6612                      bne.s      acc_window_46
[0002260a] 43ef 0042                 lea.l      66(a7),a1
[0002260e] 204d                      movea.l    a5,a0
[00022610] 4eb9 0003 461e            jsr        add_string
[00022616] 2f48 0090                 move.l     a0,144(a7)
[0002261a] 601c                      bra.s      acc_window_47
acc_window_46:
[0002261c] 2f2f 0046                 move.l     70(a7),-(a7)
[00022620] 226f 0098                 movea.l    152(a7),a1
[00022624] 204d                      movea.l    a5,a0
[00022626] 4eb9 0003 475a            jsr        change_string
[0002262c] 584f                      addq.w     #4,a7
[0002262e] 2f48 0090                 move.l     a0,144(a7)
[00022632] 6004                      bra.s      acc_window_47
acc_window_45:
[00022634] 42af 0090                 clr.l      144(a7)
acc_window_47:
[00022638] 202f 0094                 move.l     148(a7),d0
[0002263c] 6710                      beq.s      acc_window_48
[0002263e] b0af 0090                 cmp.l      144(a7),d0
[00022642] 670a                      beq.s      acc_window_48
[00022644] 2240                      movea.l    d0,a1
[00022646] 204d                      movea.l    a5,a0
[00022648] 4eb9 0003 47e8            jsr        del_string
acc_window_48:
[0002264e] 256f 0090 009a            move.l     144(a7),154(a2)
[00022654] 4fef 009c                 lea.l      156(a7),a7
[00022658] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0002265c] 4e75                      rts

wi_make:
[0002265e] 48e7 0038                 movem.l    a2-a4,-(a7)
[00022662] 594f                      subq.w     #4,a7
[00022664] 2e88                      move.l     a0,(a7)
[00022666] 2668 0004                 movea.l    4(a0),a3
[0002266a] 286b 0012                 movea.l    18(a3),a4
[0002266e] 200c                      move.l     a4,d0
[00022670] 670c                      beq.s      wi_make_1
[00022672] 204c                      movea.l    a4,a0
[00022674] 4eb9 0004 f0ca            jsr        Awi_show
[0002267a] 6000 0086                 bra        wi_make_2
wi_make_1:
[0002267e] 7008                      moveq.l    #8,d0
[00022680] 4eb9 0004 7cc8            jsr        Ax_malloc
[00022686] 2448                      movea.l    a0,a2
[00022688] 200a                      move.l     a2,d0
[0002268a] 6772                      beq.s      wi_make_3
[0002268c] 2257                      movea.l    (a7),a1
[0002268e] 2091                      move.l     (a1),(a0)
[00022690] 2569 0004 0004            move.l     4(a1),4(a2)
[00022696] 41eb 0016                 lea.l      22(a3),a0
[0002269a] 23c8 000a b558            move.l     a0,$000AB558
[000226a0] 2279 000a b564            movea.l    $000AB564,a1
[000226a6] 2348 0008                 move.l     a0,8(a1)
[000226aa] 41f9 000a b50a            lea.l      WI_WINDOW,a0
[000226b0] 4eb9 0004 f41a            jsr        Awi_create
[000226b6] 2848                      movea.l    a0,a4
[000226b8] 200c                      move.l     a4,d0
[000226ba] 660a                      bne.s      wi_make_4
[000226bc] 204a                      movea.l    a2,a0
[000226be] 4eb9 0004 7e26            jsr        Ax_free
[000226c4] 6038                      bra.s      wi_make_3
wi_make_4:
[000226c6] 2057                      movea.l    (a7),a0
[000226c8] 2250                      movea.l    (a0),a1
[000226ca] 4869 0168                 pea.l      360(a1)
[000226ce] 43eb 003a                 lea.l      58(a3),a1
[000226d2] 204c                      movea.l    a4,a0
[000226d4] 4eb9 0001 47a8            jsr        wi_pos
[000226da] 584f                      addq.w     #4,a7
[000226dc] 288a                      move.l     a2,(a4)
[000226de] 274c 0012                 move.l     a4,18(a3)
[000226e2] 204c                      movea.l    a4,a0
[000226e4] 4eb9 0002 27ea            jsr        set_window
[000226ea] 204c                      movea.l    a4,a0
[000226ec] 226c 000c                 movea.l    12(a4),a1
[000226f0] 4e91                      jsr        (a1)
[000226f2] 4a40                      tst.w      d0
[000226f4] 670c                      beq.s      wi_make_2
[000226f6] 204c                      movea.l    a4,a0
[000226f8] 4eb9 0002 2ee4            jsr        term
wi_make_3:
[000226fe] 91c8                      suba.l     a0,a0
[00022700] 6002                      bra.s      wi_make_5
wi_make_2:
[00022702] 204c                      movea.l    a4,a0
wi_make_5:
[00022704] 584f                      addq.w     #4,a7
[00022706] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002270a] 4e75                      rts

wi_service:
[0002270c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00022710] 2448                      movea.l    a0,a2
[00022712] 3600                      move.w     d0,d3
[00022714] 2849                      movea.l    a1,a4
[00022716] 2650                      movea.l    (a0),a3
[00022718] b07c 0024                 cmp.w      #$0024,d0
[0002271c] 672a                      beq.s      wi_service_1
[0002271e] 6e0e                      bgt.s      wi_service_2
[00022720] 5540                      subq.w     #2,d0
[00022722] 6700 0090                 beq        wi_service_3
[00022726] 5f40                      subq.w     #7,d0
[00022728] 6726                      beq.s      wi_service_4
[0002272a] 6000 00a8                 bra        wi_service_5
wi_service_2:
[0002272e] 907c 0025                 sub.w      #$0025,d0
[00022732] 670c                      beq.s      wi_service_6
[00022734] 907c 26eb                 sub.w      #$26EB,d0
[00022738] 6700 008c                 beq        wi_service_7
[0002273c] 6000 0096                 bra        wi_service_5
wi_service_6:
[00022740] 42ac 0002                 clr.l      2(a4)
[00022744] 6000 009c                 bra        wi_service_8
wi_service_1:
[00022748] 38bc 0001                 move.w     #$0001,(a4)
[0002274c] 6000 0094                 bra        wi_service_8
wi_service_4:
[00022750] 2079 0010 1f12            movea.l    ACSblk,a0
[00022756] 2268 0254                 movea.l    596(a0),a1
[0002275a] 3211                      move.w     (a1),d1
[0002275c] 48c1                      ext.l      d1
[0002275e] 2001                      move.l     d1,d0
[00022760] d080                      add.l      d0,d0
[00022762] d081                      add.l      d1,d0
[00022764] e788                      lsl.l      #3,d0
[00022766] 2268 0240                 movea.l    576(a0),a1
[0002276a] 2069 0014                 movea.l    20(a1),a0
[0002276e] 41f0 0818                 lea.l      24(a0,d0.l),a0
[00022772] 3414                      move.w     (a4),d2
[00022774] 947c 004a                 sub.w      #$004A,d2
[00022778] 6718                      beq.s      wi_service_9
[0002277a] 5542                      subq.w     #2,d2
[0002277c] 670a                      beq.s      wi_service_10
[0002277e] 5542                      subq.w     #2,d2
[00022780] 6706                      beq.s      wi_service_10
[00022782] 5542                      subq.w     #2,d2
[00022784] 6716                      beq.s      wi_service_11
[00022786] 6022                      bra.s      wi_service_12
wi_service_10:
[00022788] 0c68 2710 0016            cmpi.w     #$2710,22(a0)
[0002278e] 6752                      beq.s      wi_service_8
[00022790] 6012                      bra.s      wi_service_13
wi_service_9:
[00022792] 0c68 2711 0016            cmpi.w     #$2711,22(a0)
[00022798] 6748                      beq.s      wi_service_8
[0002279a] 6008                      bra.s      wi_service_13
wi_service_11:
[0002279c] 0c68 2720 0016            cmpi.w     #$2720,22(a0)
[000227a2] 673e                      beq.s      wi_service_8
wi_service_13:
[000227a4] 426c 0002                 clr.w      2(a4)
[000227a8] 6038                      bra.s      wi_service_8
wi_service_12:
[000227aa] 0c68 271c 0016            cmpi.w     #$271C,22(a0)
[000227b0] 6730                      beq.s      wi_service_8
[000227b2] 60f0                      bra.s      wi_service_13
wi_service_3:
[000227b4] 7001                      moveq.l    #1,d0
[000227b6] 204a                      movea.l    a2,a0
[000227b8] 6100 f712                 bsr        acc_window
[000227bc] 204a                      movea.l    a2,a0
[000227be] 4eb9 0002 2ee4            jsr        term
[000227c4] 601c                      bra.s      wi_service_8
wi_service_7:
[000227c6] 226b 0004                 movea.l    4(a3),a1
[000227ca] 204a                      movea.l    a2,a0
[000227cc] 4eb9 0001 45a2            jsr        new_name
[000227d2] 600e                      bra.s      wi_service_8
wi_service_5:
[000227d4] 224c                      movea.l    a4,a1
[000227d6] 3003                      move.w     d3,d0
[000227d8] 204a                      movea.l    a2,a0
[000227da] 4eb9 0005 1276            jsr        Awi_service
[000227e0] 6002                      bra.s      wi_service_14
wi_service_8:
[000227e2] 7001                      moveq.l    #1,d0
wi_service_14:
[000227e4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000227e8] 4e75                      rts

set_window:
[000227ea] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[000227ee] 4fef ffc2                 lea.l      -62(a7),a7
[000227f2] 2a48                      movea.l    a0,a5
[000227f4] 2050                      movea.l    (a0),a0
[000227f6] 2268 0004                 movea.l    4(a0),a1
[000227fa] 2469 0004                 movea.l    4(a1),a2
[000227fe] 266d 0014                 movea.l    20(a5),a3
[00022802] 362a 0022                 move.w     34(a2),d3
[00022806] 41eb 0228                 lea.l      552(a3),a0
[0002280a] 7002                      moveq.l    #2,d0
[0002280c] c043                      and.w      d3,d0
[0002280e] 4eb9 0001 3f6e            jsr        set_flag
[00022814] 41eb 03c0                 lea.l      960(a3),a0
[00022818] 3003                      move.w     d3,d0
[0002281a] c07c 1000                 and.w      #$1000,d0
[0002281e] 4eb9 0001 3f6e            jsr        set_flag
[00022824] 41eb 03a8                 lea.l      936(a3),a0
[00022828] 7008                      moveq.l    #8,d0
[0002282a] c043                      and.w      d3,d0
[0002282c] 4eb9 0001 3f6e            jsr        set_flag
[00022832] 41eb 0390                 lea.l      912(a3),a0
[00022836] 7001                      moveq.l    #1,d0
[00022838] c043                      and.w      d3,d0
[0002283a] 4eb9 0001 3f6e            jsr        set_flag
[00022840] 41eb 0240                 lea.l      576(a3),a0
[00022844] 7010                      moveq.l    #16,d0
[00022846] c043                      and.w      d3,d0
[00022848] 4eb9 0001 3f6e            jsr        set_flag
[0002284e] 41eb 0348                 lea.l      840(a3),a0
[00022852] 7004                      moveq.l    #4,d0
[00022854] c043                      and.w      d3,d0
[00022856] 4eb9 0001 3f6e            jsr        set_flag
[0002285c] 41eb 02d0                 lea.l      720(a3),a0
[00022860] 7020                      moveq.l    #32,d0
[00022862] c043                      and.w      d3,d0
[00022864] 4eb9 0001 3f6e            jsr        set_flag
[0002286a] 41eb 0330                 lea.l      816(a3),a0
[0002286e] 7040                      moveq.l    #64,d0
[00022870] c043                      and.w      d3,d0
[00022872] 4eb9 0001 3f6e            jsr        set_flag
[00022878] 41eb 02e8                 lea.l      744(a3),a0
[0002287c] 303c 0080                 move.w     #$0080,d0
[00022880] c043                      and.w      d3,d0
[00022882] 4eb9 0001 3f6e            jsr        set_flag
[00022888] 41eb 02b8                 lea.l      696(a3),a0
[0002288c] 3003                      move.w     d3,d0
[0002288e] c07c 0400                 and.w      #$0400,d0
[00022892] 4eb9 0001 3f6e            jsr        set_flag
[00022898] 41eb 02a0                 lea.l      672(a3),a0
[0002289c] 3003                      move.w     d3,d0
[0002289e] c07c 0200                 and.w      #$0200,d0
[000228a2] 4eb9 0001 3f6e            jsr        set_flag
[000228a8] 41eb 0318                 lea.l      792(a3),a0
[000228ac] 3003                      move.w     d3,d0
[000228ae] c07c 0100                 and.w      #$0100,d0
[000228b2] 4eb9 0001 3f6e            jsr        set_flag
[000228b8] 41eb 0288                 lea.l      648(a3),a0
[000228bc] 3003                      move.w     d3,d0
[000228be] c07c 0800                 and.w      #$0800,d0
[000228c2] 4eb9 0001 3f6e            jsr        set_flag
[000228c8] 41eb 0360                 lea.l      864(a3),a0
[000228cc] 3003                      move.w     d3,d0
[000228ce] c07c 4000                 and.w      #$4000,d0
[000228d2] 4eb9 0001 3f6e            jsr        set_flag
[000228d8] 41eb 0378                 lea.l      888(a3),a0
[000228dc] 3003                      move.w     d3,d0
[000228de] c07c 2000                 and.w      #$2000,d0
[000228e2] 4eb9 0001 3f6e            jsr        set_flag
[000228e8] 362a 0054                 move.w     84(a2),d3
[000228ec] 41eb 03f0                 lea.l      1008(a3),a0
[000228f0] 7008                      moveq.l    #8,d0
[000228f2] c043                      and.w      d3,d0
[000228f4] 4eb9 0001 3f6e            jsr        set_flag
[000228fa] 41eb 0420                 lea.l      1056(a3),a0
[000228fe] 7004                      moveq.l    #4,d0
[00022900] c043                      and.w      d3,d0
[00022902] 4eb9 0001 3f6e            jsr        set_flag
[00022908] 41eb 0450                 lea.l      1104(a3),a0
[0002290c] 7001                      moveq.l    #1,d0
[0002290e] c043                      and.w      d3,d0
[00022910] 4eb9 0001 3f6e            jsr        set_flag
[00022916] 41eb 0480                 lea.l      1152(a3),a0
[0002291a] 7002                      moveq.l    #2,d0
[0002291c] c043                      and.w      d3,d0
[0002291e] 4eb9 0001 3f6e            jsr        set_flag
[00022924] 41eb 04b0                 lea.l      1200(a3),a0
[00022928] 7010                      moveq.l    #16,d0
[0002292a] c043                      and.w      d3,d0
[0002292c] 4eb9 0001 3f6e            jsr        set_flag
[00022932] 41eb 04e0                 lea.l      1248(a3),a0
[00022936] 3003                      move.w     d3,d0
[00022938] c07c 0100                 and.w      #$0100,d0
[0002293c] 4eb9 0001 3f6e            jsr        set_flag
[00022942] 2f4d 0034                 move.l     a5,52(a7)
[00022946] 4beb 0150                 lea.l      336(a3),a5
[0002294a] 2f4d 0038                 move.l     a5,56(a7)
[0002294e] 3f7c 000e 003c            move.w     #$000E,60(a7)
[00022954] 43ef 0034                 lea.l      52(a7),a1
[00022958] 7009                      moveq.l    #9,d0
[0002295a] 204d                      movea.l    a5,a0
[0002295c] 4eb9 0003 589a            jsr        Auo_slider
[00022962] 2f7c 0000 0007 002c       move.l     #$00000007,44(a7)
[0002296a] 43ef 002c                 lea.l      44(a7),a1
[0002296e] 7064                      moveq.l    #100,d0
[00022970] 204d                      movea.l    a5,a0
[00022972] 4eb9 0003 589a            jsr        Auo_slider
[00022978] 2f7c 0000 0001 002c       move.l     #$00000001,44(a7)
[00022980] 43ef 002c                 lea.l      44(a7),a1
[00022984] 7065                      moveq.l    #101,d0
[00022986] 204d                      movea.l    a5,a0
[00022988] 4eb9 0003 589a            jsr        Auo_slider
[0002298e] 302a 0048                 move.w     72(a2),d0
[00022992] 807c ff00                 or.w       #$FF00,d0
[00022996] 4440                      neg.w      d0
[00022998] b07c 0008                 cmp.w      #$0008,d0
[0002299c] 673e                      beq.s      set_window_1
[0002299e] 6e0e                      bgt.s      set_window_2
[000229a0] 5340                      subq.w     #1,d0
[000229a2] 671e                      beq.s      set_window_3
[000229a4] 5340                      subq.w     #1,d0
[000229a6] 6720                      beq.s      set_window_4
[000229a8] 5540                      subq.w     #2,d0
[000229aa] 6726                      beq.s      set_window_5
[000229ac] 6054                      bra.s      set_window_6
set_window_2:
[000229ae] 907c 0010                 sub.w      #$0010,d0
[000229b2] 6732                      beq.s      set_window_7
[000229b4] 907c 0010                 sub.w      #$0010,d0
[000229b8] 6736                      beq.s      set_window_8
[000229ba] 907c 0020                 sub.w      #$0020,d0
[000229be] 673a                      beq.s      set_window_9
[000229c0] 6040                      bra.s      set_window_6
set_window_3:
[000229c2] 42af 002c                 clr.l      44(a7)
[000229c6] 603a                      bra.s      set_window_6
set_window_4:
[000229c8] 2f7c 0000 0001 002c       move.l     #$00000001,44(a7)
[000229d0] 6030                      bra.s      set_window_6
set_window_5:
[000229d2] 2f7c 0000 0002 002c       move.l     #$00000002,44(a7)
[000229da] 6026                      bra.s      set_window_6
set_window_1:
[000229dc] 2f7c 0000 0003 002c       move.l     #$00000003,44(a7)
[000229e4] 601c                      bra.s      set_window_6
set_window_7:
[000229e6] 2f7c 0000 0004 002c       move.l     #$00000004,44(a7)
[000229ee] 6012                      bra.s      set_window_6
set_window_8:
[000229f0] 2f7c 0000 0005 002c       move.l     #$00000005,44(a7)
[000229f8] 6008                      bra.s      set_window_6
set_window_9:
[000229fa] 2f7c 0000 0006 002c       move.l     #$00000006,44(a7)
set_window_6:
[00022a02] 43ef 002c                 lea.l      44(a7),a1
[00022a06] 7011                      moveq.l    #17,d0
[00022a08] 204d                      movea.l    a5,a0
[00022a0a] 4eb9 0003 589a            jsr        Auo_slider
[00022a10] 49ef 0008                 lea.l      8(a7),a4
[00022a14] 302a 0048                 move.w     72(a2),d0
[00022a18] 807c ff00                 or.w       #$FF00,d0
[00022a1c] 4440                      neg.w      d0
[00022a1e] 3f00                      move.w     d0,-(a7)
[00022a20] 43f9 000a b630            lea.l      $000AB630,a1
[00022a26] 204c                      movea.l    a4,a0
[00022a28] 4eb9 0007 5680            jsr        sprintf
[00022a2e] 544f                      addq.w     #2,a7
[00022a30] 224c                      movea.l    a4,a1
[00022a32] 7004                      moveq.l    #4,d0
[00022a34] 204d                      movea.l    a5,a0
[00022a36] 4eb9 0003 589a            jsr        Auo_slider
[00022a3c] 2ebc 0002 2e94            move.l     #live_snap,(a7)
[00022a42] 2f4d 0004                 move.l     a5,4(a7)
[00022a46] 43d7                      lea.l      (a7),a1
[00022a48] 7067                      moveq.l    #103,d0
[00022a4a] 204d                      movea.l    a5,a0
[00022a4c] 4eb9 0003 589a            jsr        Auo_slider
[00022a52] 4beb 0198                 lea.l      408(a3),a5
[00022a56] 2f4d 0038                 move.l     a5,56(a7)
[00022a5a] 3f7c 0011 003c            move.w     #$0011,60(a7)
[00022a60] 43ef 0034                 lea.l      52(a7),a1
[00022a64] 7009                      moveq.l    #9,d0
[00022a66] 204d                      movea.l    a5,a0
[00022a68] 4eb9 0003 589a            jsr        Auo_slider
[00022a6e] 2f7c 0000 0007 002c       move.l     #$00000007,44(a7)
[00022a76] 43ef 002c                 lea.l      44(a7),a1
[00022a7a] 7064                      moveq.l    #100,d0
[00022a7c] 204d                      movea.l    a5,a0
[00022a7e] 4eb9 0003 589a            jsr        Auo_slider
[00022a84] 2f7c 0000 0001 002c       move.l     #$00000001,44(a7)
[00022a8c] 43ef 002c                 lea.l      44(a7),a1
[00022a90] 7065                      moveq.l    #101,d0
[00022a92] 204d                      movea.l    a5,a0
[00022a94] 4eb9 0003 589a            jsr        Auo_slider
[00022a9a] 302a 0048                 move.w     72(a2),d0
[00022a9e] e040                      asr.w      #8,d0
[00022aa0] 4440                      neg.w      d0
[00022aa2] b07c 0008                 cmp.w      #$0008,d0
[00022aa6] 673e                      beq.s      set_window_10
[00022aa8] 6e0e                      bgt.s      set_window_11
[00022aaa] 5340                      subq.w     #1,d0
[00022aac] 671e                      beq.s      set_window_12
[00022aae] 5340                      subq.w     #1,d0
[00022ab0] 6720                      beq.s      set_window_13
[00022ab2] 5540                      subq.w     #2,d0
[00022ab4] 6726                      beq.s      set_window_14
[00022ab6] 6054                      bra.s      set_window_15
set_window_11:
[00022ab8] 907c 0010                 sub.w      #$0010,d0
[00022abc] 6732                      beq.s      set_window_16
[00022abe] 907c 0010                 sub.w      #$0010,d0
[00022ac2] 6736                      beq.s      set_window_17
[00022ac4] 907c 0020                 sub.w      #$0020,d0
[00022ac8] 673a                      beq.s      set_window_18
[00022aca] 6040                      bra.s      set_window_15
set_window_12:
[00022acc] 42af 002c                 clr.l      44(a7)
[00022ad0] 603a                      bra.s      set_window_15
set_window_13:
[00022ad2] 2f7c 0000 0001 002c       move.l     #$00000001,44(a7)
[00022ada] 6030                      bra.s      set_window_15
set_window_14:
[00022adc] 2f7c 0000 0002 002c       move.l     #$00000002,44(a7)
[00022ae4] 6026                      bra.s      set_window_15
set_window_10:
[00022ae6] 2f7c 0000 0003 002c       move.l     #$00000003,44(a7)
[00022aee] 601c                      bra.s      set_window_15
set_window_16:
[00022af0] 2f7c 0000 0004 002c       move.l     #$00000004,44(a7)
[00022af8] 6012                      bra.s      set_window_15
set_window_17:
[00022afa] 2f7c 0000 0005 002c       move.l     #$00000005,44(a7)
[00022b02] 6008                      bra.s      set_window_15
set_window_18:
[00022b04] 2f7c 0000 0006 002c       move.l     #$00000006,44(a7)
set_window_15:
[00022b0c] 43ef 002c                 lea.l      44(a7),a1
[00022b10] 7011                      moveq.l    #17,d0
[00022b12] 204d                      movea.l    a5,a0
[00022b14] 4eb9 0003 589a            jsr        Auo_slider
[00022b1a] 302a 0048                 move.w     72(a2),d0
[00022b1e] e040                      asr.w      #8,d0
[00022b20] 4440                      neg.w      d0
[00022b22] 3f00                      move.w     d0,-(a7)
[00022b24] 43f9 000a b630            lea.l      $000AB630,a1
[00022b2a] 204c                      movea.l    a4,a0
[00022b2c] 4eb9 0007 5680            jsr        sprintf
[00022b32] 544f                      addq.w     #2,a7
[00022b34] 224c                      movea.l    a4,a1
[00022b36] 7004                      moveq.l    #4,d0
[00022b38] 204d                      movea.l    a5,a0
[00022b3a] 4eb9 0003 589a            jsr        Auo_slider
[00022b40] 2ebc 0002 2e94            move.l     #live_snap,(a7)
[00022b46] 2f4d 0004                 move.l     a5,4(a7)
[00022b4a] 43d7                      lea.l      (a7),a1
[00022b4c] 7067                      moveq.l    #103,d0
[00022b4e] 204d                      movea.l    a5,a0
[00022b50] 4eb9 0003 589a            jsr        Auo_slider
[00022b56] 3f2a 0024                 move.w     36(a2),-(a7)
[00022b5a] 43f9 000a b630            lea.l      $000AB630,a1
[00022b60] 7003                      moveq.l    #3,d0
[00022b62] 204b                      movea.l    a3,a0
[00022b64] 4eb9 0004 afac            jsr        Aob_printf
[00022b6a] 544f                      addq.w     #2,a7
[00022b6c] 3f2a 0026                 move.w     38(a2),-(a7)
[00022b70] 43f9 000a b630            lea.l      $000AB630,a1
[00022b76] 7005                      moveq.l    #5,d0
[00022b78] 204b                      movea.l    a3,a0
[00022b7a] 4eb9 0004 afac            jsr        Aob_printf
[00022b80] 544f                      addq.w     #2,a7
[00022b82] 3f2a 0028                 move.w     40(a2),-(a7)
[00022b86] 43f9 000a b630            lea.l      $000AB630,a1
[00022b8c] 7007                      moveq.l    #7,d0
[00022b8e] 204b                      movea.l    a3,a0
[00022b90] 4eb9 0004 afac            jsr        Aob_printf
[00022b96] 544f                      addq.w     #2,a7
[00022b98] 3f2a 002a                 move.w     42(a2),-(a7)
[00022b9c] 43f9 000a b630            lea.l      $000AB630,a1
[00022ba2] 7009                      moveq.l    #9,d0
[00022ba4] 204b                      movea.l    a3,a0
[00022ba6] 4eb9 0004 afac            jsr        Aob_printf
[00022bac] 544f                      addq.w     #2,a7
[00022bae] 2f6a 004a 0030            move.l     74(a2),48(a7)
[00022bb4] 206f 0030                 movea.l    48(a7),a0
[00022bb8] 2268 0004                 movea.l    4(a0),a1
[00022bbc] 703a                      moveq.l    #58,d0
[00022bbe] 204b                      movea.l    a3,a0
[00022bc0] 4eb9 0004 afe0            jsr        Aob_puttext
[00022bc6] 2f6a 004e 0030            move.l     78(a2),48(a7)
[00022bcc] 206f 0030                 movea.l    48(a7),a0
[00022bd0] 2268 0004                 movea.l    4(a0),a1
[00022bd4] 703b                      moveq.l    #59,d0
[00022bd6] 204b                      movea.l    a3,a0
[00022bd8] 4eb9 0004 afe0            jsr        Aob_puttext
[00022bde] 224c                      movea.l    a4,a1
[00022be0] 206a 0014                 movea.l    20(a2),a0
[00022be4] 4eb9 0001 3fb6            jsr        set_ref
[00022bea] 224c                      movea.l    a4,a1
[00022bec] 7004                      moveq.l    #4,d0
[00022bee] 41eb 0750                 lea.l      1872(a3),a0
[00022bf2] 4eb9 0005 e010            jsr        Auo_boxed
[00022bf8] 224c                      movea.l    a4,a1
[00022bfa] 206a 0018                 movea.l    24(a2),a0
[00022bfe] 4eb9 0001 3fb6            jsr        set_ref
[00022c04] 224c                      movea.l    a4,a1
[00022c06] 7004                      moveq.l    #4,d0
[00022c08] 41eb 0720                 lea.l      1824(a3),a0
[00022c0c] 4eb9 0005 e010            jsr        Auo_boxed
[00022c12] 224c                      movea.l    a4,a1
[00022c14] 206a 005e                 movea.l    94(a2),a0
[00022c18] 4eb9 0001 3fb6            jsr        set_ref
[00022c1e] 224c                      movea.l    a4,a1
[00022c20] 7004                      moveq.l    #4,d0
[00022c22] 41eb 06f0                 lea.l      1776(a3),a0
[00022c26] 4eb9 0005 e010            jsr        Auo_boxed
[00022c2c] 224c                      movea.l    a4,a1
[00022c2e] 206a 005a                 movea.l    90(a2),a0
[00022c32] 4eb9 0001 3fb6            jsr        set_ref
[00022c38] 224c                      movea.l    a4,a1
[00022c3a] 7004                      moveq.l    #4,d0
[00022c3c] 41eb 0780                 lea.l      1920(a3),a0
[00022c40] 4eb9 0005 e010            jsr        Auo_boxed
[00022c46] 224c                      movea.l    a4,a1
[00022c48] 2052                      movea.l    (a2),a0
[00022c4a] 4eb9 0001 3fb6            jsr        set_ref
[00022c50] 224c                      movea.l    a4,a1
[00022c52] 7004                      moveq.l    #4,d0
[00022c54] 41eb 07b0                 lea.l      1968(a3),a0
[00022c58] 4eb9 0005 e010            jsr        Auo_boxed
[00022c5e] 224c                      movea.l    a4,a1
[00022c60] 206a 000c                 movea.l    12(a2),a0
[00022c64] 4eb9 0001 3fb6            jsr        set_ref
[00022c6a] 224c                      movea.l    a4,a1
[00022c6c] 7004                      moveq.l    #4,d0
[00022c6e] 41eb 0918                 lea.l      2328(a3),a0
[00022c72] 4eb9 0005 e010            jsr        Auo_boxed
[00022c78] 224c                      movea.l    a4,a1
[00022c7a] 206a 0008                 movea.l    8(a2),a0
[00022c7e] 4eb9 0001 3fb6            jsr        set_ref
[00022c84] 224c                      movea.l    a4,a1
[00022c86] 7004                      moveq.l    #4,d0
[00022c88] 41eb 0948                 lea.l      2376(a3),a0
[00022c8c] 4eb9 0005 e010            jsr        Auo_boxed
[00022c92] 224c                      movea.l    a4,a1
[00022c94] 206a 0004                 movea.l    4(a2),a0
[00022c98] 4eb9 0001 3fb6            jsr        set_ref
[00022c9e] 224c                      movea.l    a4,a1
[00022ca0] 7004                      moveq.l    #4,d0
[00022ca2] 41eb 0978                 lea.l      2424(a3),a0
[00022ca6] 4eb9 0005 e010            jsr        Auo_boxed
[00022cac] 224c                      movea.l    a4,a1
[00022cae] 206a 0010                 movea.l    16(a2),a0
[00022cb2] 4eb9 0001 3fb6            jsr        set_ref
[00022cb8] 224c                      movea.l    a4,a1
[00022cba] 7004                      moveq.l    #4,d0
[00022cbc] 41eb 09a8                 lea.l      2472(a3),a0
[00022cc0] 4eb9 0005 e010            jsr        Auo_boxed
[00022cc6] 224c                      movea.l    a4,a1
[00022cc8] 206a 0062                 movea.l    98(a2),a0
[00022ccc] 4eb9 0001 3fb6            jsr        set_ref
[00022cd2] 224c                      movea.l    a4,a1
[00022cd4] 7004                      moveq.l    #4,d0
[00022cd6] 41eb 09d8                 lea.l      2520(a3),a0
[00022cda] 4eb9 0005 e010            jsr        Auo_boxed
[00022ce0] 224c                      movea.l    a4,a1
[00022ce2] 206a 0066                 movea.l    102(a2),a0
[00022ce6] 4eb9 0001 3fb6            jsr        set_ref
[00022cec] 224c                      movea.l    a4,a1
[00022cee] 7004                      moveq.l    #4,d0
[00022cf0] 41eb 0a08                 lea.l      2568(a3),a0
[00022cf4] 4eb9 0005 e010            jsr        Auo_boxed
[00022cfa] 224c                      movea.l    a4,a1
[00022cfc] 206a 006a                 movea.l    106(a2),a0
[00022d00] 4eb9 0001 3fb6            jsr        set_ref
[00022d06] 224c                      movea.l    a4,a1
[00022d08] 7004                      moveq.l    #4,d0
[00022d0a] 41eb 0a38                 lea.l      2616(a3),a0
[00022d0e] 4eb9 0005 e010            jsr        Auo_boxed
[00022d14] 224c                      movea.l    a4,a1
[00022d16] 206a 006e                 movea.l    110(a2),a0
[00022d1a] 4eb9 0001 3fb6            jsr        set_ref
[00022d20] 224c                      movea.l    a4,a1
[00022d22] 7004                      moveq.l    #4,d0
[00022d24] 41eb 0a68                 lea.l      2664(a3),a0
[00022d28] 4eb9 0005 e010            jsr        Auo_boxed
[00022d2e] 224c                      movea.l    a4,a1
[00022d30] 206a 0072                 movea.l    114(a2),a0
[00022d34] 4eb9 0001 3fb6            jsr        set_ref
[00022d3a] 224c                      movea.l    a4,a1
[00022d3c] 7004                      moveq.l    #4,d0
[00022d3e] 41eb 0a98                 lea.l      2712(a3),a0
[00022d42] 4eb9 0005 e010            jsr        Auo_boxed
[00022d48] 224c                      movea.l    a4,a1
[00022d4a] 206a 0076                 movea.l    118(a2),a0
[00022d4e] 4eb9 0001 3fb6            jsr        set_ref
[00022d54] 224c                      movea.l    a4,a1
[00022d56] 7004                      moveq.l    #4,d0
[00022d58] 41eb 0ac8                 lea.l      2760(a3),a0
[00022d5c] 4eb9 0005 e010            jsr        Auo_boxed
[00022d62] 224c                      movea.l    a4,a1
[00022d64] 206a 007a                 movea.l    122(a2),a0
[00022d68] 4eb9 0001 3fb6            jsr        set_ref
[00022d6e] 224c                      movea.l    a4,a1
[00022d70] 7004                      moveq.l    #4,d0
[00022d72] 41eb 0af8                 lea.l      2808(a3),a0
[00022d76] 4eb9 0005 e010            jsr        Auo_boxed
[00022d7c] 224c                      movea.l    a4,a1
[00022d7e] 206a 007e                 movea.l    126(a2),a0
[00022d82] 4eb9 0001 3fb6            jsr        set_ref
[00022d88] 224c                      movea.l    a4,a1
[00022d8a] 7004                      moveq.l    #4,d0
[00022d8c] 41eb 0b28                 lea.l      2856(a3),a0
[00022d90] 4eb9 0005 e010            jsr        Auo_boxed
[00022d96] 224c                      movea.l    a4,a1
[00022d98] 206a 0082                 movea.l    130(a2),a0
[00022d9c] 4eb9 0001 3fb6            jsr        set_ref
[00022da2] 224c                      movea.l    a4,a1
[00022da4] 7004                      moveq.l    #4,d0
[00022da6] 41eb 0b58                 lea.l      2904(a3),a0
[00022daa] 4eb9 0005 e010            jsr        Auo_boxed
[00022db0] 224c                      movea.l    a4,a1
[00022db2] 206a 0086                 movea.l    134(a2),a0
[00022db6] 4eb9 0001 3fb6            jsr        set_ref
[00022dbc] 224c                      movea.l    a4,a1
[00022dbe] 7004                      moveq.l    #4,d0
[00022dc0] 41eb 0bb8                 lea.l      3000(a3),a0
[00022dc4] 4eb9 0005 e010            jsr        Auo_boxed
[00022dca] 224c                      movea.l    a4,a1
[00022dcc] 206a 008a                 movea.l    138(a2),a0
[00022dd0] 4eb9 0001 3fb6            jsr        set_ref
[00022dd6] 224c                      movea.l    a4,a1
[00022dd8] 7004                      moveq.l    #4,d0
[00022dda] 41eb 0b88                 lea.l      2952(a3),a0
[00022dde] 4eb9 0005 e010            jsr        Auo_boxed
[00022de4] 224c                      movea.l    a4,a1
[00022de6] 206a 008e                 movea.l    142(a2),a0
[00022dea] 4eb9 0001 3fb6            jsr        set_ref
[00022df0] 224c                      movea.l    a4,a1
[00022df2] 7004                      moveq.l    #4,d0
[00022df4] 41eb 0be8                 lea.l      3048(a3),a0
[00022df8] 4eb9 0005 e010            jsr        Auo_boxed
[00022dfe] 224c                      movea.l    a4,a1
[00022e00] 206a 0092                 movea.l    146(a2),a0
[00022e04] 4eb9 0001 3fb6            jsr        set_ref
[00022e0a] 224c                      movea.l    a4,a1
[00022e0c] 7004                      moveq.l    #4,d0
[00022e0e] 41eb 0c18                 lea.l      3096(a3),a0
[00022e12] 4eb9 0005 e010            jsr        Auo_boxed
[00022e18] 224c                      movea.l    a4,a1
[00022e1a] 206a 0096                 movea.l    150(a2),a0
[00022e1e] 4eb9 0001 3fb6            jsr        set_ref
[00022e24] 224c                      movea.l    a4,a1
[00022e26] 7004                      moveq.l    #4,d0
[00022e28] 41eb 0c48                 lea.l      3144(a3),a0
[00022e2c] 4eb9 0005 e010            jsr        Auo_boxed
[00022e32] 202a 009e                 move.l     158(a2),d0
[00022e36] 6716                      beq.s      set_window_19
[00022e38] 2f40 0030                 move.l     d0,48(a7)
[00022e3c] 2040                      movea.l    d0,a0
[00022e3e] 2268 0004                 movea.l    4(a0),a1
[00022e42] 204b                      movea.l    a3,a0
[00022e44] 7043                      moveq.l    #67,d0
[00022e46] 4eb9 0004 afe0            jsr        Aob_puttext
[00022e4c] 6010                      bra.s      set_window_20
set_window_19:
[00022e4e] 43f9 000a b632            lea.l      $000AB632,a1
[00022e54] 7043                      moveq.l    #67,d0
[00022e56] 204b                      movea.l    a3,a0
[00022e58] 4eb9 0004 afe0            jsr        Aob_puttext
set_window_20:
[00022e5e] 202a 009a                 move.l     154(a2),d0
[00022e62] 6716                      beq.s      set_window_21
[00022e64] 2f40 0030                 move.l     d0,48(a7)
[00022e68] 2040                      movea.l    d0,a0
[00022e6a] 2268 0004                 movea.l    4(a0),a1
[00022e6e] 204b                      movea.l    a3,a0
[00022e70] 7042                      moveq.l    #66,d0
[00022e72] 4eb9 0004 afe0            jsr        Aob_puttext
[00022e78] 6010                      bra.s      set_window_22
set_window_21:
[00022e7a] 43f9 000a b632            lea.l      $000AB632,a1
[00022e80] 7042                      moveq.l    #66,d0
[00022e82] 204b                      movea.l    a3,a0
[00022e84] 4eb9 0004 afe0            jsr        Aob_puttext
set_window_22:
[00022e8a] 4fef 003e                 lea.l      62(a7),a7
[00022e8e] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00022e92] 4e75                      rts

live_snap:
[00022e94] 2f03                      move.l     d3,-(a7)
[00022e96] 5d4f                      subq.w     #6,a7
[00022e98] 3200                      move.w     d0,d1
[00022e9a] b27c 0006                 cmp.w      #$0006,d1
[00022e9e] 6232                      bhi.s      live_snap_1
[00022ea0] d241                      add.w      d1,d1
[00022ea2] 323b 1006                 move.w     $00022EAA(pc,d1.w),d1
[00022ea6] 4efb 1002                 jmp        $00022EAA(pc,d1.w)
J9:
[00022eaa] 000e                      dc.w $000e   ; live_snap_2-J9
[00022eac] 0012                      dc.w $0012   ; live_snap_3-J9
[00022eae] 0016                      dc.w $0016   ; live_snap_4-J9
[00022eb0] 001a                      dc.w $001a   ; live_snap_5-J9
[00022eb2] 001e                      dc.w $001e   ; live_snap_6-J9
[00022eb4] 0022                      dc.w $0022   ; live_snap_7-J9
[00022eb6] 0026                      dc.w $0026   ; live_snap_8-J9
live_snap_2:
[00022eb8] 7601                      moveq.l    #1,d3
[00022eba] 6016                      bra.s      live_snap_1
live_snap_3:
[00022ebc] 7602                      moveq.l    #2,d3
[00022ebe] 6012                      bra.s      live_snap_1
live_snap_4:
[00022ec0] 7604                      moveq.l    #4,d3
[00022ec2] 600e                      bra.s      live_snap_1
live_snap_5:
[00022ec4] 7608                      moveq.l    #8,d3
[00022ec6] 600a                      bra.s      live_snap_1
live_snap_6:
[00022ec8] 7610                      moveq.l    #16,d3
[00022eca] 6006                      bra.s      live_snap_1
live_snap_7:
[00022ecc] 7620                      moveq.l    #32,d3
[00022ece] 6002                      bra.s      live_snap_1
live_snap_8:
[00022ed0] 7640                      moveq.l    #64,d3
live_snap_1:
[00022ed2] 720a                      moveq.l    #10,d1
[00022ed4] 41d7                      lea.l      (a7),a0
[00022ed6] 3003                      move.w     d3,d0
[00022ed8] 4eb9 0007 6804            jsr        itoa
[00022ede] 5c4f                      addq.w     #6,a7
[00022ee0] 261f                      move.l     (a7)+,d3
[00022ee2] 4e75                      rts

term:
[00022ee4] 2f0a                      move.l     a2,-(a7)
[00022ee6] 2f0b                      move.l     a3,-(a7)
[00022ee8] 2448                      movea.l    a0,a2
[00022eea] 2650                      movea.l    (a0),a3
[00022eec] 226b 0004                 movea.l    4(a3),a1
[00022ef0] 42a9 0012                 clr.l      18(a1)
[00022ef4] 302a 0056                 move.w     86(a2),d0
[00022ef8] c07c 0800                 and.w      #$0800,d0
[00022efc] 6716                      beq.s      term_1
[00022efe] 43ea 002c                 lea.l      44(a2),a1
[00022f02] 206b 0004                 movea.l    4(a3),a0
[00022f06] 41e8 003a                 lea.l      58(a0),a0
[00022f0a] 7008                      moveq.l    #8,d0
[00022f0c] 4eb9 0007 6f44            jsr        memcpy
[00022f12] 6014                      bra.s      term_2
term_1:
[00022f14] 7008                      moveq.l    #8,d0
[00022f16] 43ea 0024                 lea.l      36(a2),a1
[00022f1a] 206b 0004                 movea.l    4(a3),a0
[00022f1e] 41e8 003a                 lea.l      58(a0),a0
[00022f22] 4eb9 0007 6f44            jsr        memcpy
term_2:
[00022f28] 204b                      movea.l    a3,a0
[00022f2a] 4eb9 0004 7e26            jsr        Ax_free
[00022f30] 204a                      movea.l    a2,a0
[00022f32] 4eb9 0005 0330            jsr        Awi_delete
[00022f38] 265f                      movea.l    (a7)+,a3
[00022f3a] 245f                      movea.l    (a7)+,a2
[00022f3c] 4e75                      rts

	.data
ERR_IC_DEL:
[000a7998]                           dc.b '[3][ Die Ikone| ',$27,'%s',$27,' | ist nicht (mehr) Teil | dieser Datei][    OK    ]',0
ERR_ME_DEL:
[000a79e1]                           dc.b '[3][ Das MenÅ| ',$27,'%s',$27,' | ist nicht (mehr) Teil | dieser Datei.][    OK    ]',0
ERR_OB_DEL:
[000a7a2a]                           dc.b '[3][ Der Objektbaum| ',$27,'%s',$27,' | ist nicht (mehr) Teil | dieser Datei.][    OK    ]',0
WARN_CREATE:
[000a7a79]                           dc.b '[1][ Die ',$27,'create',$27,'-Routine wurde| nicht definiert. Es wird| ',$27,'Awi_selfcreate',$27,' eingesetzt! ][   OK   ]',0
BUBBLE_01:
[000a7add]                           dc.b 'Hier kann der Dateinamen des ST-Guide-Hypertextes angeben werden, der fÅr die Anzeige der Hilfe verwendet werden soll.',0
BUBBLE_02:
[000a7b54]                           dc.b 'Hier kann die Infozeile des Fensters angegeben werden.',0
BUBBLE_03:
[000a7b8b]                           dc.b 'Bei dem Fenster handlet es sich um ein Listenfenster.',0
BUBBLE_04:
[000a7bc1]                           dc.b 'Das Fenster kann nicht automatisch von ACS geschlossen werden.',0
BUBBLE_05:
[000a7c00]                           dc.b 'Das Fenster kann im Hintergrund wie ein Werkzeug-Fenster bedient werden.',0
BUBBLE_06:
[000a7c49]                           dc.b 'Das offene Fenster wird durch ein grau schattiertes Icon auf dem Desktop reprÑsentiert.',0
BUBBLE_07:
[000a7ca1]                           dc.b 'Das geschlossene Fenster wird auf dem Desktop durch ein Icon dargestellt.|ACHTUNG: Beim Schlieûen des Fensters ohne dieses Flag wird das Fenster gelîscht!',0
BUBBLE_08:
[000a7d3c]                           dc.b 'Das Fenster akzeptiert Objekte, die auf das Icon des Fensters auf dem Desktop gezogen werden.',0
BUBBLE_09:
[000a7d9a]                           dc.b 'Hier kann der Namen des Fensters angegeben werden, der in der Titelzeile erscheinen soll.',0
BUBBLE_10:
[000a7df4]                           dc.b 'Hier kann das Thema der Hilfe angegeben werden. Das Thema wird als Referenz an ST-Guide Åbergeben.',0
BUBBLE_11:
[000a7e57]                           dc.b 'Hier kann dem Fenster ein Fenster-MenÅ zugeordnet werden. Der Name des MenÅ-Baumes kann eingegeben werden oder per Drag&Drop aus der MenÅ-Liste Åbergeben werden.',0
BUBBLE_12:
[000a7ef9]                           dc.b 'Hier kann dem Fenster eine Toolbar zugeordnet werden. Der Name des Objekt-Baumes kann eingegeben werden oder per Drag&Drop aus der Objekt-Liste Åbergeben werden.',0
BUBBLE_13:
[000a7f9b]                           dc.b 'Hier wird dem Fenster das Arbeits-Objekt, das sog. Work-Objekt, zugeordnet. Der Name des Objekt-Baumes kann eingegeben werden oder per Drag&Drop aus der Objekt-Liste Åbergeben werden.',0
BUBBLE_14:
[000a8053]                           dc.b 'Hier kann dem Fenster ein Icon zugeordnet werden. Der Name des Icons kann eingegeben werden oder per Drag&Drop aus der Icon-Liste Åbergeben werden.',0
BUBBLE_15:
[000a80e7]                           dc.b 'Hier kann der user-Zeiger des Fensters, in die Daten des Fensters abgelegt sind, vorbelegt werden (s. Online-Hilfe). Sinnvoll ist dies z.B. fÅr eine statische Struktur, die Åber ein Fenster editiert werden soll.',0
BUBBLE_16:
[000a81bb]                           dc.b 'Die Schrittweite bei Scroll-Operationen in X- und Y-Richtung wird hier angegeben.|Tip: Schneller wird es ab 8 Pixeln, da dann im VDI immer Wort-Grenzen getroffen werden',0
BUBBLE_17:
[000a8264]                           dc.b 'Hier wird die X-Position des Fensters eingegeben. Falls die Y-Position 0 ist, wird beim ôffnen des Fensters die X-Position bestimmt.',0
BUBBLE_18:
[000a82e9]                           dc.b 'Hier wird die Y-Position des Fensters eingegeben. Falls die Y-Position 0 ist, wird beim ôffnen des Fensters die Y-Position bestimmt.',0
BUBBLE_19:
[000a836e]                           dc.b 'Hier wird die Breite des Fensters eingegeben. Falls die Y-Position 0 ist, wird beim ôffnen des Fensters die Breite automatisch bestimmt.',0
BUBBLE_20:
[000a83f7]                           dc.b 'Hier wird die Hîhe des Fensters eingegeben. Falls die Y-Position 0 ist, wird beim ôffnen des Fensters die Hîhe automatisch bestimmt werden.',0
BUBBLE_21:
[000a8483]                           dc.b 'Einstellung, ob das Fenster einen CLOSER hat.',0
BUBBLE_22:
[000a84b1]                           dc.b 'Einstellung, ob das Fenster einen MOVER hat.',0
BUBBLE_23:
[000a84de]                           dc.b 'Einstellung, ob das Fenster eine Titelzeile hat - ggf. muû die Titelzeile NAME unten angegeben werden.',0
BUBBLE_24:
[000a8545]                           dc.b 'Einstellung, ob das Fenster eine Infozeile hat - ggf. muû die Infozeile unten angegeben werden.',0
BUBBLE_25:
[000a85a5]                           dc.b 'Einstellung, ob das Fenster einen FULLER hat.',0
BUBBLE_26:
[000a85d3]                           dc.b 'Einstellung, ob das Fenster ICONIFY hat.',0
BUBBLE_27:
[000a85fc]                           dc.b 'Einstellung, ob das Fenster BACKDROP selbst Åbernimmt (sollte eigentlich immer eingeschaltet sein).',0
BUBBLE_28:
[000a8660]                           dc.b 'Einstellung, ob das Fenster einen Up-Scrollpfeil UPARROW hat.',0
BUBBLE_29:
[000a869e]                           dc.b 'Einstellung, ob das Fenster einen Down-Scrollpfeil DNARROW hat.',0
BUBBLE_30:
[000a86de]                           dc.b 'Einstellung, ob das Fenster einen Rechts-Scrollpfeil RTARROW hat.',0
BUBBLE_31:
[000a8720]                           dc.b 'Einstellung, ob das Fenster einen Links-Scrollpfeil LFARROW hat.',0
BUBBLE_32:
[000a8761]                           dc.b 'Einstellung, ob das Fenster einen SIZER hat.',0
BUBBLE_33:
[000a878e]                           dc.b 'Einstellung, ob das Fenster einen vertikalen Scrollbalken VSLIDE hat.',0
BUBBLE_34:
[000a87d4]                           dc.b 'Einstellung, ob das Fenster einen horizontalen Scrollbalken HSLIDE hat.',0
BUBBLE_35:
[000a881c]                           dc.b 'Hier sollte dem Fenster eine Create-Routine zugeordnet werden - ansonsten wird Awi_selfcreate verwendet. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_36:
[000a88ed]                           dc.b 'Hier kann dem Fenster eine Open-Routine zugeordnet werden - Default ist Awi_open. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_37:
[000a89a7]                           dc.b 'Hier kann dem Fenster eine Service-Routine zugeordnet werden - Default ist Awi_service. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_38:
[000a8a67]                           dc.b 'Hier kann dem Fenster eine Change-Routine zugeordnet werden - Default ist Awi_obchange. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_39:
[000a8b27]                           dc.b 'Hier kann dem Fenster eine Key-Routine zugeordnet werden - Default ist Awi_keys. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_40:
[000a8be0]                           dc.b 'Hier kann dem Fenster eine Init-Routine zugeordnet werden - Default ist Awi_init. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_41:
[000a8c9a]                           dc.b 'Hier kann dem Fenster eine Redraw-Routine zugeordnet werden - Default ist Awi_redraw. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_42:
[000a8d58]                           dc.b 'Hier kann dem Fenster eine Topped-Routine zugeordnet werden - Default ist Awi_topped. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_43:
[000a8e16]                           dc.b 'Hier kann dem Fenster eine Closed-Routine zugeordnet werden - Default ist Awi_closed. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_44:
[000a8ed4]                           dc.b 'Hier kann dem Fenster eine Fulled-Routine zugeordnet werden - Default ist Awi_fulled. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_45:
[000a8f92]                           dc.b 'Hier kann dem Fenster eine Arrowed-Routine zugeordnet werden - Default ist Awi_arrowed. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben werden.',0
BUBBLE_46:
[000a9052]                           dc.b 'Hier kann dem Fenster eine HSlide-Routine zugeordnet werden - Default ist Awi_hslid. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben ',0
BUBBLE_47:
[000a9108]                           dc.b 'Hier kann dem Fenster eine VSlide-Routine zugeordnet werden - Default ist Awi_vslid. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben ',0
BUBBLE_48:
[000a91be]                           dc.b 'Hier kann dem Fenster eine Moved-Routine zugeordnet werden - Default ist Awi_moved. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben ',0
BUBBLE_49:
[000a9273]                           dc.b 'Hier kann dem Fenster eine Sized-Routine zugeordnet werden - Default ist Awi_sized. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben ',0
BUBBLE_50:
[000a9328]                           dc.b 'Hier kann dem Fenster eine Iconify-Routine zugeordnet werden - Default ist Awi_iconify. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben ',0
BUBBLE_51:
[000a93e1]                           dc.b 'Hier kann dem Fenster eine Uniconify-Routine zugeordnet werden - Default ist Awi_uniconify. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben ',0
BUBBLE_52:
[000a949e]                           dc.b 'Hier kann dem Fenster eine GEMScript-Routine zugeordnet werden - Default ist Awi_gemscript. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste Åbergeben ',0
BUBBLE_53:
[000a955b]                           dc.b 'Einstellung, ob das Fenster eine HOTCLOSEBOX hat.',0
STGUIDE_01:
[000a958d]                           dc.b 'Der Fenster-Editor',0
TEXT_002:
[000a95a0]                           dc.b $00
TEXT_003:
[000a95a1]                           dc.b $4f
[000a95a2]                           dc.w $4b00
TEXT_004:
[000a95a4]                           dc.b 'Abbruch',0
TEXT_01:
[000a95ac]                           dc.b ' Info',0
TEXT_012:
[000a95b2]                           dc.w $593a
[000a95b4]                           dc.b $00
TEXT_013:
[000a95b5]                           dc.b $58
[000a95b6]                           dc.w $3a00
TEXT_014:
[000a95b8]                           dc.w $573a
[000a95ba]                           dc.b $00
TEXT_015:
[000a95bb]                           dc.b $48
[000a95bc]                           dc.w $3a00
TEXT_02:
[000a95be]                           dc.w $0100
TEXT_03:
[000a95c0]                           dc.b 'Liste',0
TEXT_04:
[000a95c6]                           dc.b 'Bleibt',0
TEXT_05:
[000a95cd]                           dc.b 'Icon',0
TEXT_06:
[000a95d2]                           dc.b 'Geisticon',0
TEXT_07:
[000a95dc]                           dc.b 'Nimmt an ',0
TEXT_08:
[000a95e6]                           dc.b 'Hintergrd.',0
TEXT_09:
[000a95f1]                           dc.b 'Toolbar:',0
TEXT_10:
[000a95fa]                           dc.b 'Position:',0
TEXT_11:
[000a9604]                           dc.b 'Attribute:',0
TEXT_12:
[000a960f]                           dc.b 'Name:',0
TEXT_13:
[000a9615]                           dc.b 'Menu:',0
TEXT_14:
[000a961b]                           dc.b 'Open:',0
TEXT_15:
[000a9621]                           dc.b ' Fenster-Editor ',0
TEXT_16:
[000a9632]                           dc.b 'Raster:',0
TEXT_17:
[000a963a]                           dc.b 'Routinen:',0
TEXT_18:
[000a9644]                           dc.b 'Info:',0
TEXT_19:
[000a964a]                           dc.b 'Objekte:',0
TEXT_20:
[000a9653]                           dc.b 'Work:',0
TEXT_205:
[000a9659]                           dc.b 'FENSTER',0
TEXT_21:
[000a9661]                           dc.b 'Icon:',0
TEXT_22:
[000a9667]                           dc.b 'User:',0
TEXT_23:
[000a966d]                           dc.b 'Service:',0
TEXT_24:
[000a9676]                           dc.w $0200
TEXT_25:
[000a9678]                           dc.b 'Create:',0
TEXT_26:
[000a9680]                           dc.b 'Init:',0
TEXT_27:
[000a9686]                           dc.b 'Keys:',0
TEXT_28:
[000a968c]                           dc.b 'Change:',0
TEXT_29:
[000a9694]                           dc.b 'Redraw:',0
TEXT_30:
[000a969c]                           dc.b 'Topped:',0
TEXT_31:
[000a96a4]                           dc.b 'Closed:',0
TEXT_32:
[000a96ac]                           dc.b 'Fulled:',0
TEXT_33:
[000a96b4]                           dc.b 'Arrowed:',0
TEXT_34:
[000a96bd]                           dc.b 'H-Slide:',0
TEXT_35:
[000a96c6]                           dc.b 'V-Slide:',0
TEXT_36:
[000a96cf]                           dc.b 'Moved:',0
TEXT_37:
[000a96d6]                           dc.b 'Sized:',0
TEXT_38:
[000a96dd]                           dc.b 'Texte:',0
TEXT_39:
[000a96e4]                           dc.b 'Komponenten:',0
TEXT_40:
[000a96f1]                           dc.b $07
[000a96f2]                           dc.b $00
TEXT_41:
[000a96f3]                           dc.b $7f
[000a96f4]                           dc.b $00
TEXT_42:
[000a96f5]                           dc.b $1f
[000a96f6]                           dc.b $00
TEXT_43:
[000a96f7]                           dc.b 'Name',0
TEXT_44:
[000a96fc]                           dc.b 'Mover',0
TEXT_45:
[000a9702]                           dc.w $0500
TEXT_46:
[000a9704]                           dc.w $0600
TEXT_47:
[000a9706]                           dc.w $0300
TEXT_48:
[000a9708]                           dc.w $0400
TEXT_49:
[000a970a]                           dc.b 'Iconify:',0
TEXT_50:
[000a9713]                           dc.b '.HYP',0
TEXT_51:
[000a9718]                           dc.b 'UnIcon.:',0
TEXT_52:
[000a9721]                           dc.b 'GEMScr.:',0
TEXT_53:
[000a972a]                           dc.b 'Titel:',0
TEXT_54:
[000a9731]                           dc.b 'Datei:',0
TEXT_55:
[000a9738]                           dc.b 'ST-Guide-Hilfe',0
TEXT_56:
[000a9747]                           dc.b $fa
[000a9748]                           dc.b $00
[000a9749]                           dc.b $00
DATAS_27:
[000a974a]                           dc.b $00
[000a974b]                           dc.b $00
[000a974c]                           dc.b $00
[000a974d]                           dc.b $00
[000a974e]                           dc.w $02f0
[000a9750]                           dc.b $00
[000a9751]                           dc.b $00
[000a9752]                           dc.b $00
[000a9753]                           dc.b $00
[000a9754]                           dc.b $00
[000a9755]                           dc.b $00
[000a9756]                           dc.w $7fff
[000a9758]                           dc.w $ffff
[000a975a]                           dc.w $fffe
[000a975c]                           dc.w $5f00
[000a975e]                           dc.b $00
[000a975f]                           dc.b $00
[000a9760]                           dc.b $00
[000a9761]                           dc.b $bf
[000a9762]                           dc.w $7700
[000a9764]                           dc.w $65b0
[000a9766]                           dc.b $00
[000a9767]                           dc.b $d7
[000a9768]                           dc.w $6b00
[000a976a]                           dc.w $54e0
[000a976c]                           dc.b $00
[000a976d]                           dc.b $ef
[000a976e]                           dc.w $7700
[000a9770]                           dc.w $4db0
[000a9772]                           dc.b $00
[000a9773]                           dc.b $d7
[000a9774]                           dc.w $7f00
[000a9776]                           dc.b $00
[000a9777]                           dc.b $00
[000a9778]                           dc.b $00
[000a9779]                           dc.b $ff
[000a977a]                           dc.w $7fff
[000a977c]                           dc.w $ffff
[000a977e]                           dc.w $ffff
[000a9780]                           dc.w $4fff
[000a9782]                           dc.w $f800
[000a9784]                           dc.b $00
[000a9785]                           dc.b $bf
[000a9786]                           dc.w $4edb
[000a9788]                           dc.w $f800
[000a978a]                           dc.b $00
[000a978b]                           dc.b $ef
[000a978c]                           dc.w $4e1b
[000a978e]                           dc.w $f800
[000a9790]                           dc.b $00
[000a9791]                           dc.b $c7
[000a9792]                           dc.w $4ed8
[000a9794]                           dc.w $f800
[000a9796]                           dc.b $00
[000a9797]                           dc.b $ff
[000a9798]                           dc.w $4fff
[000a979a]                           dc.w $f800
[000a979c]                           dc.b $00
[000a979d]                           dc.b $ff
[000a979e]                           dc.w $7fff
[000a97a0]                           dc.w $ffff
[000a97a2]                           dc.w $ffff
[000a97a4]                           dc.w $4800
[000a97a6]                           dc.w $0c00
[000a97a8]                           dc.b $00
[000a97a9]                           dc.b $83
[000a97aa]                           dc.w $4a40
[000a97ac]                           dc.w $0c00
[000a97ae]                           dc.b $00
[000a97af]                           dc.b $bf
[000a97b0]                           dc.w $4bcf
[000a97b2]                           dc.w $0c00
[000a97b4]                           dc.b $00
[000a97b5]                           dc.b $bf
[000a97b6]                           dc.w $4800
[000a97b8]                           dc.w $0c00
[000a97ba]                           dc.b $00
[000a97bb]                           dc.b $ff
[000a97bc]                           dc.w $4fff
[000a97be]                           dc.w $fc00
[000a97c0]                           dc.b $00
[000a97c1]                           dc.b $bf
[000a97c2]                           dc.w $47ff
[000a97c4]                           dc.w $fc00
[000a97c6]                           dc.b $00
[000a97c7]                           dc.b $ff
[000a97c8]                           dc.w $4000
[000a97ca]                           dc.b $00
[000a97cb]                           dc.b $00
[000a97cc]                           dc.b $00
[000a97cd]                           dc.b $c7
[000a97ce]                           dc.w $4000
[000a97d0]                           dc.b $00
[000a97d1]                           dc.b $00
[000a97d2]                           dc.b $00
[000a97d3]                           dc.b $ef
[000a97d4]                           dc.w $4000
[000a97d6]                           dc.b $00
[000a97d7]                           dc.b $00
[000a97d8]                           dc.b $00
[000a97d9]                           dc.b $ff
[000a97da]                           dc.w $7fff
[000a97dc]                           dc.w $ffff
[000a97de]                           dc.w $ffff
[000a97e0]                           dc.w $5f01
[000a97e2]                           dc.b $00
[000a97e3]                           dc.b $80
[000a97e4]                           dc.w $2fbf
[000a97e6]                           dc.w $7701
[000a97e8]                           dc.w $7f80
[000a97ea]                           dc.w $3bc7
[000a97ec]                           dc.w $6701
[000a97ee]                           dc.w $7f80
[000a97f0]                           dc.w $39cf
[000a97f2]                           dc.w $7701
[000a97f4]                           dc.w $7f80
[000a97f6]                           dc.w $3bd7
[000a97f8]                           dc.w $7f01
[000a97fa]                           dc.w $7f80
[000a97fc]                           dc.w $3fff
[000a97fe]                           dc.w $7fff
[000a9800]                           dc.w $ffff
[000a9802]                           dc.w $ffff
[000a9804]                           dc.w $3fff
[000a9806]                           dc.w $ffff
[000a9808]                           dc.w $ffff
[000a980a]                           dc.b $00
[000a980b]                           dc.b $00
[000a980c]                           dc.b $00
[000a980d]                           dc.b $00
[000a980e]                           dc.b $00
[000a980f]                           dc.b $00
[000a9810]                           dc.w $7fff
[000a9812]                           dc.w $ffff
[000a9814]                           dc.w $fffe
[000a9816]                           dc.w $5f00
[000a9818]                           dc.b $00
[000a9819]                           dc.b $00
[000a981a]                           dc.b $00
[000a981b]                           dc.b $bf
[000a981c]                           dc.w $7700
[000a981e]                           dc.b $00
[000a981f]                           dc.b $00
[000a9820]                           dc.b $00
[000a9821]                           dc.b $d7
[000a9822]                           dc.w $6b00
[000a9824]                           dc.b $00
[000a9825]                           dc.b $00
[000a9826]                           dc.b $00
[000a9827]                           dc.b $ef
[000a9828]                           dc.w $7700
[000a982a]                           dc.b $00
[000a982b]                           dc.b $00
[000a982c]                           dc.b $00
[000a982d]                           dc.b $d7
[000a982e]                           dc.w $7f00
[000a9830]                           dc.b $00
[000a9831]                           dc.b $00
[000a9832]                           dc.b $00
[000a9833]                           dc.b $ff
[000a9834]                           dc.w $7fff
[000a9836]                           dc.w $ffff
[000a9838]                           dc.w $ffff
[000a983a]                           dc.w $4fff
[000a983c]                           dc.w $f800
[000a983e]                           dc.b $00
[000a983f]                           dc.b $bf
[000a9840]                           dc.w $4edb
[000a9842]                           dc.w $f800
[000a9844]                           dc.b $00
[000a9845]                           dc.b $ef
[000a9846]                           dc.w $4e1b
[000a9848]                           dc.w $f800
[000a984a]                           dc.b $00
[000a984b]                           dc.b $c7
[000a984c]                           dc.w $4ed8
[000a984e]                           dc.w $f800
[000a9850]                           dc.b $00
[000a9851]                           dc.b $ff
[000a9852]                           dc.w $4fff
[000a9854]                           dc.w $f800
[000a9856]                           dc.b $00
[000a9857]                           dc.b $ff
[000a9858]                           dc.w $7fff
[000a985a]                           dc.w $ffff
[000a985c]                           dc.w $ffff
[000a985e]                           dc.w $4800
[000a9860]                           dc.w $0c00
[000a9862]                           dc.b $00
[000a9863]                           dc.b $83
[000a9864]                           dc.w $4a40
[000a9866]                           dc.w $0c00
[000a9868]                           dc.b $00
[000a9869]                           dc.b $bf
[000a986a]                           dc.w $4bcf
[000a986c]                           dc.w $0c00
[000a986e]                           dc.b $00
[000a986f]                           dc.b $bf
[000a9870]                           dc.w $4800
[000a9872]                           dc.w $0c00
[000a9874]                           dc.b $00
[000a9875]                           dc.b $ff
[000a9876]                           dc.w $4fff
[000a9878]                           dc.w $fc00
[000a987a]                           dc.b $00
[000a987b]                           dc.b $bf
[000a987c]                           dc.w $47ff
[000a987e]                           dc.w $fc00
[000a9880]                           dc.b $00
[000a9881]                           dc.b $ff
[000a9882]                           dc.w $4000
[000a9884]                           dc.b $00
[000a9885]                           dc.b $00
[000a9886]                           dc.b $00
[000a9887]                           dc.b $c7
[000a9888]                           dc.w $4000
[000a988a]                           dc.b $00
[000a988b]                           dc.b $00
[000a988c]                           dc.b $00
[000a988d]                           dc.b $ef
[000a988e]                           dc.w $4000
[000a9890]                           dc.b $00
[000a9891]                           dc.b $00
[000a9892]                           dc.b $00
[000a9893]                           dc.b $ff
[000a9894]                           dc.w $7fff
[000a9896]                           dc.w $ffff
[000a9898]                           dc.w $ffff
[000a989a]                           dc.w $5f01
[000a989c]                           dc.b $00
[000a989d]                           dc.b $80
[000a989e]                           dc.w $2fbf
[000a98a0]                           dc.w $7701
[000a98a2]                           dc.w $7f80
[000a98a4]                           dc.w $3bc7
[000a98a6]                           dc.w $6701
[000a98a8]                           dc.w $7f80
[000a98aa]                           dc.w $39cf
[000a98ac]                           dc.w $7701
[000a98ae]                           dc.w $7f80
[000a98b0]                           dc.w $3bd7
[000a98b2]                           dc.w $7f01
[000a98b4]                           dc.w $7f80
[000a98b6]                           dc.w $3fff
[000a98b8]                           dc.w $7fff
[000a98ba]                           dc.w $ffff
[000a98bc]                           dc.w $ffff
[000a98be]                           dc.w $3fff
[000a98c0]                           dc.w $ffff
[000a98c2]                           dc.w $ffff
[000a98c4]                           dc.b $00
[000a98c5]                           dc.b $00
[000a98c6]                           dc.b $00
[000a98c7]                           dc.b $00
[000a98c8]                           dc.b $00
[000a98c9]                           dc.b $00
[000a98ca]                           dc.w $7fff
[000a98cc]                           dc.w $ffff
[000a98ce]                           dc.w $fffe
[000a98d0]                           dc.w $5fff
[000a98d2]                           dc.w $ffff
[000a98d4]                           dc.w $ffbf
[000a98d6]                           dc.w $77ff
[000a98d8]                           dc.w $9a4f
[000a98da]                           dc.w $ffd7
[000a98dc]                           dc.w $6bff
[000a98de]                           dc.w $ab1f
[000a98e0]                           dc.w $ffef
[000a98e2]                           dc.w $77ff
[000a98e4]                           dc.w $b24f
[000a98e6]                           dc.w $ffd7
[000a98e8]                           dc.w $7fff
[000a98ea]                           dc.w $ffff
[000a98ec]                           dc.w $ffff
[000a98ee]                           dc.w $7fff
[000a98f0]                           dc.w $ffff
[000a98f2]                           dc.w $ffff
[000a98f4]                           dc.w $4fff
[000a98f6]                           dc.w $f800
[000a98f8]                           dc.b $00
[000a98f9]                           dc.b $bf
[000a98fa]                           dc.w $4edb
[000a98fc]                           dc.w $f800
[000a98fe]                           dc.b $00
[000a98ff]                           dc.b $ef
[000a9900]                           dc.w $4e1b
[000a9902]                           dc.w $f800
[000a9904]                           dc.b $00
[000a9905]                           dc.b $c7
[000a9906]                           dc.w $4ed8
[000a9908]                           dc.w $f800
[000a990a]                           dc.b $00
[000a990b]                           dc.b $ff
[000a990c]                           dc.w $4fff
[000a990e]                           dc.w $f800
[000a9910]                           dc.b $00
[000a9911]                           dc.b $ff
[000a9912]                           dc.w $7fff
[000a9914]                           dc.w $ffff
[000a9916]                           dc.w $ffff
[000a9918]                           dc.w $4800
[000a991a]                           dc.w $0c00
[000a991c]                           dc.b $00
[000a991d]                           dc.b $83
[000a991e]                           dc.w $4a40
[000a9920]                           dc.w $0c00
[000a9922]                           dc.b $00
[000a9923]                           dc.b $bf
[000a9924]                           dc.w $4bcf
[000a9926]                           dc.w $0c00
[000a9928]                           dc.b $00
[000a9929]                           dc.b $bf
[000a992a]                           dc.w $4800
[000a992c]                           dc.w $0c00
[000a992e]                           dc.b $00
[000a992f]                           dc.b $ff
[000a9930]                           dc.w $4fff
[000a9932]                           dc.w $fc00
[000a9934]                           dc.b $00
[000a9935]                           dc.b $bf
[000a9936]                           dc.w $47ff
[000a9938]                           dc.w $fc00
[000a993a]                           dc.b $00
[000a993b]                           dc.b $ff
[000a993c]                           dc.w $4000
[000a993e]                           dc.b $00
[000a993f]                           dc.b $00
[000a9940]                           dc.b $00
[000a9941]                           dc.b $c7
[000a9942]                           dc.w $4000
[000a9944]                           dc.b $00
[000a9945]                           dc.b $00
[000a9946]                           dc.b $00
[000a9947]                           dc.b $ef
[000a9948]                           dc.w $4000
[000a994a]                           dc.b $00
[000a994b]                           dc.b $00
[000a994c]                           dc.b $00
[000a994d]                           dc.b $ff
[000a994e]                           dc.w $7fff
[000a9950]                           dc.w $ffff
[000a9952]                           dc.w $ffff
[000a9954]                           dc.w $5f01
[000a9956]                           dc.b $00
[000a9957]                           dc.b $80
[000a9958]                           dc.w $2fbf
[000a995a]                           dc.w $7701
[000a995c]                           dc.w $7f80
[000a995e]                           dc.w $3bc7
[000a9960]                           dc.w $6701
[000a9962]                           dc.w $7f80
[000a9964]                           dc.w $39cf
[000a9966]                           dc.w $7701
[000a9968]                           dc.w $7f80
[000a996a]                           dc.w $3bd7
[000a996c]                           dc.w $7f01
[000a996e]                           dc.w $7f80
[000a9970]                           dc.w $3fff
[000a9972]                           dc.w $7fff
[000a9974]                           dc.w $ffff
[000a9976]                           dc.w $ffff
[000a9978]                           dc.w $3fff
[000a997a]                           dc.w $ffff
[000a997c]                           dc.w $ffff
[000a997e]                           dc.b $00
[000a997f]                           dc.b $00
[000a9980]                           dc.b $00
[000a9981]                           dc.b $00
[000a9982]                           dc.b $00
[000a9983]                           dc.b $00
[000a9984]                           dc.w $7fff
[000a9986]                           dc.w $ffff
[000a9988]                           dc.w $fffe
[000a998a]                           dc.w $4100
[000a998c]                           dc.b $00
[000a998d]                           dc.b $00
[000a998e]                           dc.b $00
[000a998f]                           dc.b $83
[000a9990]                           dc.w $4900
[000a9992]                           dc.b $00
[000a9993]                           dc.b $00
[000a9994]                           dc.b $00
[000a9995]                           dc.b $ab
[000a9996]                           dc.w $5500
[000a9998]                           dc.b $00
[000a9999]                           dc.b $00
[000a999a]                           dc.b $00
[000a999b]                           dc.b $93
[000a999c]                           dc.w $4900
[000a999e]                           dc.b $00
[000a999f]                           dc.b $00
[000a99a0]                           dc.b $00
[000a99a1]                           dc.b $ab
[000a99a2]                           dc.w $4100
[000a99a4]                           dc.b $00
[000a99a5]                           dc.b $00
[000a99a6]                           dc.b $00
[000a99a7]                           dc.b $83
[000a99a8]                           dc.w $7fff
[000a99aa]                           dc.w $ffff
[000a99ac]                           dc.w $ffff
[000a99ae]                           dc.w $4fff
[000a99b0]                           dc.w $f800
[000a99b2]                           dc.b $00
[000a99b3]                           dc.b $83
[000a99b4]                           dc.w $4edb
[000a99b6]                           dc.w $f800
[000a99b8]                           dc.b $00
[000a99b9]                           dc.b $93
[000a99ba]                           dc.w $4e1b
[000a99bc]                           dc.w $f800
[000a99be]                           dc.b $00
[000a99bf]                           dc.b $bb
[000a99c0]                           dc.w $4ed8
[000a99c2]                           dc.w $f800
[000a99c4]                           dc.b $00
[000a99c5]                           dc.b $83
[000a99c6]                           dc.w $4fff
[000a99c8]                           dc.w $f800
[000a99ca]                           dc.b $00
[000a99cb]                           dc.b $83
[000a99cc]                           dc.w $7fff
[000a99ce]                           dc.w $ffff
[000a99d0]                           dc.w $ffff
[000a99d2]                           dc.w $4800
[000a99d4]                           dc.w $0c00
[000a99d6]                           dc.b $00
[000a99d7]                           dc.b $83
[000a99d8]                           dc.w $4a40
[000a99da]                           dc.w $0c00
[000a99dc]                           dc.b $00
[000a99dd]                           dc.b $83
[000a99de]                           dc.w $4bcf
[000a99e0]                           dc.w $0c00
[000a99e2]                           dc.b $00
[000a99e3]                           dc.b $83
[000a99e4]                           dc.w $4800
[000a99e6]                           dc.w $0c00
[000a99e8]                           dc.b $00
[000a99e9]                           dc.b $ff
[000a99ea]                           dc.w $4fff
[000a99ec]                           dc.w $fc00
[000a99ee]                           dc.b $00
[000a99ef]                           dc.b $83
[000a99f0]                           dc.w $47ff
[000a99f2]                           dc.w $fc00
[000a99f4]                           dc.b $00
[000a99f5]                           dc.b $83
[000a99f6]                           dc.w $4000
[000a99f8]                           dc.b $00
[000a99f9]                           dc.b $00
[000a99fa]                           dc.b $00
[000a99fb]                           dc.b $bb
[000a99fc]                           dc.w $4000
[000a99fe]                           dc.b $00
[000a99ff]                           dc.b $00
[000a9a00]                           dc.b $00
[000a9a01]                           dc.b $93
[000a9a02]                           dc.w $4000
[000a9a04]                           dc.b $00
[000a9a05]                           dc.b $00
[000a9a06]                           dc.b $00
[000a9a07]                           dc.b $83
[000a9a08]                           dc.w $7fff
[000a9a0a]                           dc.w $ffff
[000a9a0c]                           dc.w $ffff
[000a9a0e]                           dc.w $41ff
[000a9a10]                           dc.b $00
[000a9a11]                           dc.b $ff
[000a9a12]                           dc.w $e083
[000a9a14]                           dc.w $49ff
[000a9a16]                           dc.b $00
[000a9a17]                           dc.b $ff
[000a9a18]                           dc.w $e4bb
[000a9a1a]                           dc.w $59ff
[000a9a1c]                           dc.b $00
[000a9a1d]                           dc.b $ff
[000a9a1e]                           dc.w $e6b3
[000a9a20]                           dc.w $49ff
[000a9a22]                           dc.b $00
[000a9a23]                           dc.b $ff
[000a9a24]                           dc.w $e4ab
[000a9a26]                           dc.w $41ff
[000a9a28]                           dc.b $00
[000a9a29]                           dc.b $ff
[000a9a2a]                           dc.w $e083
[000a9a2c]                           dc.w $7fff
[000a9a2e]                           dc.w $ffff
[000a9a30]                           dc.w $ffff
[000a9a32]                           dc.w $3fff
[000a9a34]                           dc.w $ffff
[000a9a36]                           dc.w $ffff
DATAS_28:
[000a9a38]                           dc.b $00
[000a9a39]                           dc.b $00
[000a9a3a]                           dc.b $00
[000a9a3b]                           dc.b $00
[000a9a3c]                           dc.b $00
[000a9a3d]                           dc.b $00
[000a9a3e]                           dc.w $7fff
[000a9a40]                           dc.w $ffff
[000a9a42]                           dc.w $fffe
[000a9a44]                           dc.w $7fff
[000a9a46]                           dc.w $ffff
[000a9a48]                           dc.w $ffff
[000a9a4a]                           dc.w $7fff
[000a9a4c]                           dc.w $ffff
[000a9a4e]                           dc.w $ffff
[000a9a50]                           dc.w $7fff
[000a9a52]                           dc.w $ffff
[000a9a54]                           dc.w $ffff
[000a9a56]                           dc.w $7fff
[000a9a58]                           dc.w $ffff
[000a9a5a]                           dc.w $ffff
[000a9a5c]                           dc.w $7fff
[000a9a5e]                           dc.w $ffff
[000a9a60]                           dc.w $ffff
[000a9a62]                           dc.w $7fff
[000a9a64]                           dc.w $ffff
[000a9a66]                           dc.w $ffff
[000a9a68]                           dc.w $7fff
[000a9a6a]                           dc.w $ffff
[000a9a6c]                           dc.w $ffff
[000a9a6e]                           dc.w $7fff
[000a9a70]                           dc.w $ffff
[000a9a72]                           dc.w $ffff
[000a9a74]                           dc.w $7fff
[000a9a76]                           dc.w $ffff
[000a9a78]                           dc.w $ffff
[000a9a7a]                           dc.w $7fff
[000a9a7c]                           dc.w $ffff
[000a9a7e]                           dc.w $ffff
[000a9a80]                           dc.w $7fff
[000a9a82]                           dc.w $ffff
[000a9a84]                           dc.w $ffff
[000a9a86]                           dc.w $7fff
[000a9a88]                           dc.w $ffff
[000a9a8a]                           dc.w $ffff
[000a9a8c]                           dc.w $7fff
[000a9a8e]                           dc.w $ffff
[000a9a90]                           dc.w $ffff
[000a9a92]                           dc.w $7fff
[000a9a94]                           dc.w $ffff
[000a9a96]                           dc.w $ffff
[000a9a98]                           dc.w $7fff
[000a9a9a]                           dc.w $ffff
[000a9a9c]                           dc.w $ffff
[000a9a9e]                           dc.w $7fff
[000a9aa0]                           dc.w $ffff
[000a9aa2]                           dc.w $ffff
[000a9aa4]                           dc.w $7fff
[000a9aa6]                           dc.w $ffff
[000a9aa8]                           dc.w $ffff
[000a9aaa]                           dc.w $7fff
[000a9aac]                           dc.w $ffff
[000a9aae]                           dc.w $ffff
[000a9ab0]                           dc.w $7fff
[000a9ab2]                           dc.w $ffff
[000a9ab4]                           dc.w $ffff
[000a9ab6]                           dc.w $7fff
[000a9ab8]                           dc.w $ffff
[000a9aba]                           dc.w $ffff
[000a9abc]                           dc.w $7fff
[000a9abe]                           dc.w $ffff
[000a9ac0]                           dc.w $ffff
[000a9ac2]                           dc.w $7fff
[000a9ac4]                           dc.w $ffff
[000a9ac6]                           dc.w $ffff
[000a9ac8]                           dc.w $7fff
[000a9aca]                           dc.w $ffff
[000a9acc]                           dc.w $ffff
[000a9ace]                           dc.w $7fff
[000a9ad0]                           dc.w $ffff
[000a9ad2]                           dc.w $ffff
[000a9ad4]                           dc.w $7fff
[000a9ad6]                           dc.w $ffff
[000a9ad8]                           dc.w $ffff
[000a9ada]                           dc.w $7fff
[000a9adc]                           dc.w $ffff
[000a9ade]                           dc.w $ffff
[000a9ae0]                           dc.w $7fff
[000a9ae2]                           dc.w $ffff
[000a9ae4]                           dc.w $ffff
[000a9ae6]                           dc.w $7fff
[000a9ae8]                           dc.w $ffff
[000a9aea]                           dc.w $ffff
[000a9aec]                           dc.w $3fff
[000a9aee]                           dc.w $ffff
[000a9af0]                           dc.w $ffff
A_3DBUTTON01:
[000a9af2] 0005a4e2                  dc.l A_3Dbutton
[000a9af6]                           dc.w $2011
[000a9af8]                           dc.w $9178
[000a9afa] 00059318                  dc.l Auo_string
[000a9afe]                           dc.b $00
[000a9aff]                           dc.b $00
[000a9b00]                           dc.b $00
[000a9b01]                           dc.b $00
[000a9b02]                           dc.b $00
[000a9b03]                           dc.b $00
[000a9b04]                           dc.b $00
[000a9b05]                           dc.b $00
[000a9b06]                           dc.b $00
[000a9b07]                           dc.b $00
[000a9b08]                           dc.b $00
[000a9b09]                           dc.b $00
[000a9b0a]                           dc.b $00
[000a9b0b]                           dc.b $00
[000a9b0c]                           dc.b $00
[000a9b0d]                           dc.b $00
[000a9b0e]                           dc.b $00
[000a9b0f]                           dc.b $00
[000a9b10]                           dc.b $00
[000a9b11]                           dc.b $00
A_3DBUTTON02:
[000a9b12] 0005a4e2                  dc.l A_3Dbutton
[000a9b16]                           dc.w $21f1
[000a9b18]                           dc.w $01f8
[000a9b1a] 00059318                  dc.l Auo_string
[000a9b1e]                           dc.b $00
[000a9b1f]                           dc.b $00
[000a9b20]                           dc.b $00
[000a9b21]                           dc.b $00
[000a9b22]                           dc.b $00
[000a9b23]                           dc.b $00
[000a9b24]                           dc.b $00
[000a9b25]                           dc.b $00
[000a9b26]                           dc.b $00
[000a9b27]                           dc.b $00
[000a9b28]                           dc.b $00
[000a9b29]                           dc.b $00
[000a9b2a]                           dc.b $00
[000a9b2b]                           dc.b $00
[000a9b2c]                           dc.b $00
[000a9b2d]                           dc.b $00
[000a9b2e]                           dc.b $00
[000a9b2f]                           dc.b $00
[000a9b30]                           dc.b $00
[000a9b31]                           dc.b $00
A_3DBUTTON03:
[000a9b32] 0005a4e2                  dc.l A_3Dbutton
[000a9b36]                           dc.w $29f1
[000a9b38]                           dc.w $0108
[000a9b3a] 00059318                  dc.l Auo_string
[000a9b3e] 000a96f1                  dc.l TEXT_40
[000a9b42]                           dc.b $00
[000a9b43]                           dc.b $00
[000a9b44]                           dc.b $00
[000a9b45]                           dc.b $00
[000a9b46]                           dc.b $00
[000a9b47]                           dc.b $00
[000a9b48]                           dc.b $00
[000a9b49]                           dc.b $00
[000a9b4a] 000a85a5                  dc.l BUBBLE_25
[000a9b4e]                           dc.b $00
[000a9b4f]                           dc.b $00
[000a9b50]                           dc.b $00
[000a9b51]                           dc.b $00
A_3DBUTTON04:
[000a9b52] 0005a4e2                  dc.l A_3Dbutton
[000a9b56]                           dc.w $29c1
[000a9b58]                           dc.w $0178
[000a9b5a] 00059318                  dc.l Auo_string
[000a9b5e] 000a95a4                  dc.l TEXT_004
[000a9b62]                           dc.b $00
[000a9b63]                           dc.b $00
[000a9b64]                           dc.b $00
[000a9b65]                           dc.b $00
[000a9b66]                           dc.b $00
[000a9b67]                           dc.b $00
[000a9b68]                           dc.b $00
[000a9b69]                           dc.b $00
[000a9b6a]                           dc.b $00
[000a9b6b]                           dc.b $00
[000a9b6c]                           dc.b $00
[000a9b6d]                           dc.b $00
[000a9b6e]                           dc.b $00
[000a9b6f]                           dc.b $00
[000a9b70]                           dc.b $00
[000a9b71]                           dc.b $00
A_3DBUTTON05:
[000a9b72] 0005a4e2                  dc.l A_3Dbutton
[000a9b76]                           dc.w $29c1
[000a9b78]                           dc.w $0178
[000a9b7a] 00059318                  dc.l Auo_string
[000a9b7e] 000a95a1                  dc.l TEXT_003
[000a9b82]                           dc.b $00
[000a9b83]                           dc.b $00
[000a9b84]                           dc.b $00
[000a9b85]                           dc.b $00
[000a9b86]                           dc.b $00
[000a9b87]                           dc.b $00
[000a9b88]                           dc.b $00
[000a9b89]                           dc.b $00
[000a9b8a]                           dc.b $00
[000a9b8b]                           dc.b $00
[000a9b8c]                           dc.b $00
[000a9b8d]                           dc.b $00
[000a9b8e]                           dc.b $00
[000a9b8f]                           dc.b $00
[000a9b90]                           dc.b $00
[000a9b91]                           dc.b $00
A_3DBUTTON06:
[000a9b92] 0005a4e2                  dc.l A_3Dbutton
[000a9b96]                           dc.w $29f1
[000a9b98]                           dc.w $0108
[000a9b9a] 00059318                  dc.l Auo_string
[000a9b9e] 000a96f3                  dc.l TEXT_41
[000a9ba2]                           dc.b $00
[000a9ba3]                           dc.b $00
[000a9ba4]                           dc.b $00
[000a9ba5]                           dc.b $00
[000a9ba6]                           dc.b $00
[000a9ba7]                           dc.b $00
[000a9ba8]                           dc.b $00
[000a9ba9]                           dc.b $00
[000a9baa] 000a85d3                  dc.l BUBBLE_26
[000a9bae]                           dc.b $00
[000a9baf]                           dc.b $00
[000a9bb0]                           dc.b $00
[000a9bb1]                           dc.b $00
A_3DBUTTON07:
[000a9bb2] 0005a4e2                  dc.l A_3Dbutton
[000a9bb6]                           dc.w $29f1
[000a9bb8]                           dc.w $0188
[000a9bba] 00059318                  dc.l Auo_string
[000a9bbe] 000a96f5                  dc.l TEXT_42
[000a9bc2]                           dc.b $00
[000a9bc3]                           dc.b $00
[000a9bc4]                           dc.b $00
[000a9bc5]                           dc.b $00
[000a9bc6]                           dc.b $00
[000a9bc7]                           dc.b $00
[000a9bc8]                           dc.b $00
[000a9bc9]                           dc.b $00
[000a9bca] 000a85fc                  dc.l BUBBLE_27
[000a9bce]                           dc.b $00
[000a9bcf]                           dc.b $00
[000a9bd0]                           dc.b $00
[000a9bd1]                           dc.b $00
A_3DBUTTON08:
[000a9bd2] 0005a4e2                  dc.l A_3Dbutton
[000a9bd6]                           dc.w $29f1
[000a9bd8]                           dc.w $0191
[000a9bda] 00059318                  dc.l Auo_string
[000a9bde] 000a96f7                  dc.l TEXT_43
[000a9be2]                           dc.b $00
[000a9be3]                           dc.b $00
[000a9be4]                           dc.b $00
[000a9be5]                           dc.b $00
[000a9be6]                           dc.b $00
[000a9be7]                           dc.b $00
[000a9be8]                           dc.b $00
[000a9be9]                           dc.b $00
[000a9bea] 000a84de                  dc.l BUBBLE_23
[000a9bee]                           dc.b $00
[000a9bef]                           dc.b $00
[000a9bf0]                           dc.b $00
[000a9bf1]                           dc.b $00
A_3DBUTTON09:
[000a9bf2] 0005a4e2                  dc.l A_3Dbutton
[000a9bf6]                           dc.w $29f1
[000a9bf8]                           dc.w $0191
[000a9bfa] 00059318                  dc.l Auo_string
[000a9bfe] 000a96fc                  dc.l TEXT_44
[000a9c02]                           dc.b $00
[000a9c03]                           dc.b $00
[000a9c04]                           dc.b $00
[000a9c05]                           dc.b $00
[000a9c06]                           dc.b $00
[000a9c07]                           dc.b $00
[000a9c08]                           dc.b $00
[000a9c09]                           dc.b $00
[000a9c0a] 000a84b1                  dc.l BUBBLE_22
[000a9c0e]                           dc.b $00
[000a9c0f]                           dc.b $00
[000a9c10]                           dc.b $00
[000a9c11]                           dc.b $00
A_3DBUTTON10:
[000a9c12] 0005a4e2                  dc.l A_3Dbutton
[000a9c16]                           dc.w $29f1
[000a9c18]                           dc.w $0101
[000a9c1a] 00059318                  dc.l Auo_string
[000a9c1e] 000a9702                  dc.l TEXT_45
[000a9c22]                           dc.b $00
[000a9c23]                           dc.b $00
[000a9c24]                           dc.b $00
[000a9c25]                           dc.b $00
[000a9c26]                           dc.b $00
[000a9c27]                           dc.b $00
[000a9c28]                           dc.b $00
[000a9c29]                           dc.b $00
[000a9c2a] 000a8483                  dc.l BUBBLE_21
[000a9c2e]                           dc.b $00
[000a9c2f]                           dc.b $00
[000a9c30]                           dc.b $00
[000a9c31]                           dc.b $00
A_3DBUTTON11:
[000a9c32] 0005a4e2                  dc.l A_3Dbutton
[000a9c36]                           dc.w $09f1
[000a9c38]                           dc.w $0101
[000a9c3a] 00059318                  dc.l Auo_string
[000a9c3e] 000a95ac                  dc.l TEXT_01
[000a9c42]                           dc.b $00
[000a9c43]                           dc.b $00
[000a9c44]                           dc.b $00
[000a9c45]                           dc.b $00
[000a9c46]                           dc.b $00
[000a9c47]                           dc.b $00
[000a9c48]                           dc.b $00
[000a9c49]                           dc.b $00
[000a9c4a] 000a8545                  dc.l BUBBLE_24
[000a9c4e]                           dc.b $00
[000a9c4f]                           dc.b $00
[000a9c50]                           dc.b $00
[000a9c51]                           dc.b $00
A_3DBUTTON12:
[000a9c52] 0005a4e2                  dc.l A_3Dbutton
[000a9c56]                           dc.w $2102
[000a9c58]                           dc.w $1178
[000a9c5a] 00059318                  dc.l Auo_string
[000a9c5e]                           dc.b $00
[000a9c5f]                           dc.b $00
[000a9c60]                           dc.b $00
[000a9c61]                           dc.b $00
[000a9c62]                           dc.b $00
[000a9c63]                           dc.b $00
[000a9c64]                           dc.b $00
[000a9c65]                           dc.b $00
[000a9c66]                           dc.b $00
[000a9c67]                           dc.b $00
[000a9c68]                           dc.b $00
[000a9c69]                           dc.b $00
[000a9c6a]                           dc.b $00
[000a9c6b]                           dc.b $00
[000a9c6c]                           dc.b $00
[000a9c6d]                           dc.b $00
[000a9c6e]                           dc.b $00
[000a9c6f]                           dc.b $00
[000a9c70]                           dc.b $00
[000a9c71]                           dc.b $00
A_3DBUTTON13:
[000a9c72] 0005a4e2                  dc.l A_3Dbutton
[000a9c76]                           dc.w $29f1
[000a9c78]                           dc.w $0188
[000a9c7a] 00059318                  dc.l Auo_string
[000a9c7e] 000a95be                  dc.l TEXT_02
[000a9c82]                           dc.b $00
[000a9c83]                           dc.b $00
[000a9c84]                           dc.b $00
[000a9c85]                           dc.b $00
[000a9c86]                           dc.b $00
[000a9c87]                           dc.b $00
[000a9c88]                           dc.b $00
[000a9c89]                           dc.b $00
[000a9c8a] 000a8660                  dc.l BUBBLE_28
[000a9c8e]                           dc.b $00
[000a9c8f]                           dc.b $00
[000a9c90]                           dc.b $00
[000a9c91]                           dc.b $00
A_3DBUTTON14:
[000a9c92] 0005a4e2                  dc.l A_3Dbutton
[000a9c96]                           dc.w $29f1
[000a9c98]                           dc.w $0181
[000a9c9a] 00059318                  dc.l Auo_string
[000a9c9e] 000a9676                  dc.l TEXT_24
[000a9ca2]                           dc.b $00
[000a9ca3]                           dc.b $00
[000a9ca4]                           dc.b $00
[000a9ca5]                           dc.b $00
[000a9ca6]                           dc.b $00
[000a9ca7]                           dc.b $00
[000a9ca8]                           dc.b $00
[000a9ca9]                           dc.b $00
[000a9caa] 000a869e                  dc.l BUBBLE_29
[000a9cae]                           dc.b $00
[000a9caf]                           dc.b $00
[000a9cb0]                           dc.b $00
[000a9cb1]                           dc.b $00
A_3DBUTTON15:
[000a9cb2] 0005a4e2                  dc.l A_3Dbutton
[000a9cb6]                           dc.w $29f1
[000a9cb8]                           dc.w $0181
[000a9cba] 00059318                  dc.l Auo_string
[000a9cbe] 000a9704                  dc.l TEXT_46
[000a9cc2]                           dc.b $00
[000a9cc3]                           dc.b $00
[000a9cc4]                           dc.b $00
[000a9cc5]                           dc.b $00
[000a9cc6]                           dc.b $00
[000a9cc7]                           dc.b $00
[000a9cc8]                           dc.b $00
[000a9cc9]                           dc.b $00
[000a9cca] 000a8761                  dc.l BUBBLE_32
[000a9cce]                           dc.b $00
[000a9ccf]                           dc.b $00
[000a9cd0]                           dc.b $00
[000a9cd1]                           dc.b $00
A_3DBUTTON16:
[000a9cd2] 0005a4e2                  dc.l A_3Dbutton
[000a9cd6]                           dc.w $29f1
[000a9cd8]                           dc.w $0181
[000a9cda] 00059318                  dc.l Auo_string
[000a9cde] 000a9706                  dc.l TEXT_47
[000a9ce2]                           dc.b $00
[000a9ce3]                           dc.b $00
[000a9ce4]                           dc.b $00
[000a9ce5]                           dc.b $00
[000a9ce6]                           dc.b $00
[000a9ce7]                           dc.b $00
[000a9ce8]                           dc.b $00
[000a9ce9]                           dc.b $00
[000a9cea] 000a86de                  dc.l BUBBLE_30
[000a9cee]                           dc.b $00
[000a9cef]                           dc.b $00
[000a9cf0]                           dc.b $00
[000a9cf1]                           dc.b $00
A_3DBUTTON17:
[000a9cf2] 0005a4e2                  dc.l A_3Dbutton
[000a9cf6]                           dc.w $29f1
[000a9cf8]                           dc.w $0181
[000a9cfa] 00059318                  dc.l Auo_string
[000a9cfe] 000a9708                  dc.l TEXT_48
[000a9d02]                           dc.b $00
[000a9d03]                           dc.b $00
[000a9d04]                           dc.b $00
[000a9d05]                           dc.b $00
[000a9d06]                           dc.b $00
[000a9d07]                           dc.b $00
[000a9d08]                           dc.b $00
[000a9d09]                           dc.b $00
[000a9d0a] 000a8720                  dc.l BUBBLE_31
[000a9d0e]                           dc.b $00
[000a9d0f]                           dc.b $00
[000a9d10]                           dc.b $00
[000a9d11]                           dc.b $00
A_3DBUTTON18:
[000a9d12] 0005a4e2                  dc.l A_3Dbutton
[000a9d16]                           dc.w $29f1
[000a9d18]                           dc.w $0178
[000a9d1a] 00059318                  dc.l Auo_string
[000a9d1e]                           dc.b $00
[000a9d1f]                           dc.b $00
[000a9d20]                           dc.b $00
[000a9d21]                           dc.b $00
[000a9d22]                           dc.b $00
[000a9d23]                           dc.b $00
[000a9d24]                           dc.b $00
[000a9d25]                           dc.b $00
[000a9d26]                           dc.b $00
[000a9d27]                           dc.b $00
[000a9d28]                           dc.b $00
[000a9d29]                           dc.b $00
[000a9d2a]                           dc.b $00
[000a9d2b]                           dc.b $00
[000a9d2c]                           dc.b $00
[000a9d2d]                           dc.b $00
[000a9d2e]                           dc.b $00
[000a9d2f]                           dc.b $00
[000a9d30]                           dc.b $00
[000a9d31]                           dc.b $00
A_3DBUTTON19:
[000a9d32] 0005a4e2                  dc.l A_3Dbutton
[000a9d36]                           dc.w $29d1
[000a9d38]                           dc.w $0101
[000a9d3a] 00059318                  dc.l Auo_string
[000a9d3e]                           dc.b $00
[000a9d3f]                           dc.b $00
[000a9d40]                           dc.b $00
[000a9d41]                           dc.b $00
[000a9d42]                           dc.b $00
[000a9d43]                           dc.b $00
[000a9d44]                           dc.b $00
[000a9d45]                           dc.b $00
[000a9d46]                           dc.b $00
[000a9d47]                           dc.b $00
[000a9d48]                           dc.b $00
[000a9d49]                           dc.b $00
[000a9d4a] 000a878e                  dc.l BUBBLE_33
[000a9d4e]                           dc.b $00
[000a9d4f]                           dc.b $00
[000a9d50]                           dc.b $00
[000a9d51]                           dc.b $00
A_3DBUTTON20:
[000a9d52] 0005a4e2                  dc.l A_3Dbutton
[000a9d56]                           dc.w $29f1
[000a9d58]                           dc.w $0121
[000a9d5a] 00059318                  dc.l Auo_string
[000a9d5e]                           dc.b $00
[000a9d5f]                           dc.b $00
[000a9d60]                           dc.b $00
[000a9d61]                           dc.b $00
[000a9d62]                           dc.b $00
[000a9d63]                           dc.b $00
[000a9d64]                           dc.b $00
[000a9d65]                           dc.b $00
[000a9d66]                           dc.b $00
[000a9d67]                           dc.b $00
[000a9d68]                           dc.b $00
[000a9d69]                           dc.b $00
[000a9d6a]                           dc.b $00
[000a9d6b]                           dc.b $00
[000a9d6c]                           dc.b $00
[000a9d6d]                           dc.b $00
[000a9d6e]                           dc.b $00
[000a9d6f]                           dc.b $00
[000a9d70]                           dc.b $00
[000a9d71]                           dc.b $00
A_3DBUTTON21:
[000a9d72] 0005a4e2                  dc.l A_3Dbutton
[000a9d76]                           dc.w $29f1
[000a9d78]                           dc.w $0121
[000a9d7a] 00059318                  dc.l Auo_string
[000a9d7e]                           dc.b $00
[000a9d7f]                           dc.b $00
[000a9d80]                           dc.b $00
[000a9d81]                           dc.b $00
[000a9d82]                           dc.b $00
[000a9d83]                           dc.b $00
[000a9d84]                           dc.b $00
[000a9d85]                           dc.b $00
[000a9d86]                           dc.b $00
[000a9d87]                           dc.b $00
[000a9d88]                           dc.b $00
[000a9d89]                           dc.b $00
[000a9d8a]                           dc.b $00
[000a9d8b]                           dc.b $00
[000a9d8c]                           dc.b $00
[000a9d8d]                           dc.b $00
[000a9d8e]                           dc.b $00
[000a9d8f]                           dc.b $00
[000a9d90]                           dc.b $00
[000a9d91]                           dc.b $00
A_3DBUTTON22:
[000a9d92] 0005a4e2                  dc.l A_3Dbutton
[000a9d96]                           dc.w $29d1
[000a9d98]                           dc.w $0101
[000a9d9a] 00059318                  dc.l Auo_string
[000a9d9e]                           dc.b $00
[000a9d9f]                           dc.b $00
[000a9da0]                           dc.b $00
[000a9da1]                           dc.b $00
[000a9da2]                           dc.b $00
[000a9da3]                           dc.b $00
[000a9da4]                           dc.b $00
[000a9da5]                           dc.b $00
[000a9da6]                           dc.b $00
[000a9da7]                           dc.b $00
[000a9da8]                           dc.b $00
[000a9da9]                           dc.b $00
[000a9daa] 000a87d4                  dc.l BUBBLE_34
[000a9dae]                           dc.b $00
[000a9daf]                           dc.b $00
[000a9db0]                           dc.b $00
[000a9db1]                           dc.b $00
A_3DBUTTON23:
[000a9db2] 0005a4e2                  dc.l A_3Dbutton
[000a9db6]                           dc.w $2011
[000a9db8]                           dc.w $9178
[000a9dba] 00059318                  dc.l Auo_string
[000a9dbe]                           dc.b $00
[000a9dbf]                           dc.b $00
[000a9dc0]                           dc.b $00
[000a9dc1]                           dc.b $00
[000a9dc2]                           dc.b $00
[000a9dc3]                           dc.b $00
[000a9dc4]                           dc.b $00
[000a9dc5]                           dc.b $00
[000a9dc6]                           dc.b $00
[000a9dc7]                           dc.b $00
[000a9dc8]                           dc.b $00
[000a9dc9]                           dc.b $00
[000a9dca]                           dc.b $00
[000a9dcb]                           dc.b $00
[000a9dcc]                           dc.b $00
[000a9dcd]                           dc.b $00
[000a9dce]                           dc.b $00
[000a9dcf]                           dc.b $00
[000a9dd0]                           dc.b $00
[000a9dd1]                           dc.b $00
A_3DBUTTON24:
[000a9dd2] 0005a4e2                  dc.l A_3Dbutton
[000a9dd6]                           dc.w $29f1
[000a9dd8]                           dc.w $0101
[000a9dda] 00059318                  dc.l Auo_string
[000a9dde] 000a9747                  dc.l TEXT_56
[000a9de2]                           dc.b $00
[000a9de3]                           dc.b $00
[000a9de4]                           dc.b $00
[000a9de5]                           dc.b $00
[000a9de6]                           dc.b $00
[000a9de7]                           dc.b $00
[000a9de8]                           dc.b $00
[000a9de9]                           dc.b $00
[000a9dea] 000a955b                  dc.l BUBBLE_53
[000a9dee]                           dc.b $00
[000a9def]                           dc.b $00
[000a9df0]                           dc.b $00
[000a9df1]                           dc.b $00
A_BOXED01:
[000a9df2] 0005e9d2                  dc.l A_boxed
[000a9df6]                           dc.w $9038
[000a9df8]                           dc.w $2012
[000a9dfa] 0005e010                  dc.l Auo_boxed
[000a9dfe]                           dc.b $00
[000a9dff]                           dc.b $00
[000a9e00]                           dc.b $00
[000a9e01]                           dc.b $00
[000a9e02]                           dc.b $00
[000a9e03]                           dc.b $00
[000a9e04]                           dc.b $00
[000a9e05]                           dc.b $00
[000a9e06]                           dc.b $00
[000a9e07]                           dc.b $00
[000a9e08]                           dc.b $00
[000a9e09]                           dc.b $00
[000a9e0a] 000a7df4                  dc.l BUBBLE_10
[000a9e0e]                           dc.b $00
[000a9e0f]                           dc.b $00
[000a9e10]                           dc.b $00
[000a9e11]                           dc.b $00
A_BOXED02:
[000a9e12] 0005e9d2                  dc.l A_boxed
[000a9e16]                           dc.w $907a
[000a9e18]                           dc.w $0512
[000a9e1a] 0005e010                  dc.l Auo_boxed
[000a9e1e]                           dc.b $00
[000a9e1f]                           dc.b $00
[000a9e20]                           dc.b $00
[000a9e21]                           dc.b $00
[000a9e22]                           dc.b $00
[000a9e23]                           dc.b $00
[000a9e24]                           dc.b $00
[000a9e25]                           dc.b $00
[000a9e26]                           dc.b $00
[000a9e27]                           dc.b $00
[000a9e28]                           dc.b $00
[000a9e29]                           dc.b $00
[000a9e2a] 000a8264                  dc.l BUBBLE_17
[000a9e2e]                           dc.b $00
[000a9e2f]                           dc.b $00
[000a9e30]                           dc.b $00
[000a9e31]                           dc.b $00
A_BOXED03:
[000a9e32] 0005e9d2                  dc.l A_boxed
[000a9e36]                           dc.w $9070
[000a9e38]                           dc.w $0512
[000a9e3a] 0005e010                  dc.l Auo_boxed
[000a9e3e]                           dc.b $00
[000a9e3f]                           dc.b $00
[000a9e40]                           dc.b $00
[000a9e41]                           dc.b $00
[000a9e42]                           dc.b $00
[000a9e43]                           dc.b $00
[000a9e44]                           dc.b $00
[000a9e45]                           dc.b $00
[000a9e46]                           dc.b $00
[000a9e47]                           dc.b $00
[000a9e48]                           dc.b $00
[000a9e49]                           dc.b $00
[000a9e4a] 000a836e                  dc.l BUBBLE_19
[000a9e4e]                           dc.b $00
[000a9e4f]                           dc.b $00
[000a9e50]                           dc.b $00
[000a9e51]                           dc.b $00
A_BOXED04:
[000a9e52] 0005e9d2                  dc.l A_boxed
[000a9e56]                           dc.w $9018
[000a9e58]                           dc.w $0812
[000a9e5a] 0005e010                  dc.l Auo_boxed
[000a9e5e]                           dc.b $00
[000a9e5f]                           dc.b $00
[000a9e60]                           dc.b $00
[000a9e61]                           dc.b $00
[000a9e62]                           dc.b $00
[000a9e63]                           dc.b $00
[000a9e64]                           dc.b $00
[000a9e65]                           dc.b $00
[000a9e66]                           dc.b $00
[000a9e67]                           dc.b $00
[000a9e68]                           dc.b $00
[000a9e69]                           dc.b $00
[000a9e6a] 000a7add                  dc.l BUBBLE_01
[000a9e6e]                           dc.b $00
[000a9e6f]                           dc.b $00
[000a9e70]                           dc.b $00
[000a9e71]                           dc.b $00
A_BOXED05:
[000a9e72] 0005e9d2                  dc.l A_boxed
[000a9e76]                           dc.w $9078
[000a9e78]                           dc.w $0512
[000a9e7a] 0005e010                  dc.l Auo_boxed
[000a9e7e]                           dc.b $00
[000a9e7f]                           dc.b $00
[000a9e80]                           dc.b $00
[000a9e81]                           dc.b $00
[000a9e82]                           dc.b $00
[000a9e83]                           dc.b $00
[000a9e84]                           dc.b $00
[000a9e85]                           dc.b $00
[000a9e86]                           dc.b $00
[000a9e87]                           dc.b $00
[000a9e88]                           dc.b $00
[000a9e89]                           dc.b $00
[000a9e8a] 000a82e9                  dc.l BUBBLE_18
[000a9e8e]                           dc.b $00
[000a9e8f]                           dc.b $00
[000a9e90]                           dc.b $00
[000a9e91]                           dc.b $00
A_BOXED06:
[000a9e92] 0005e9d2                  dc.l A_boxed
[000a9e96]                           dc.w $9038
[000a9e98]                           dc.w $2012
[000a9e9a] 0005e010                  dc.l Auo_boxed
[000a9e9e]                           dc.b $00
[000a9e9f]                           dc.b $00
[000a9ea0]                           dc.b $00
[000a9ea1]                           dc.b $00
[000a9ea2]                           dc.b $00
[000a9ea3]                           dc.b $00
[000a9ea4]                           dc.b $00
[000a9ea5]                           dc.b $00
[000a9ea6]                           dc.b $00
[000a9ea7]                           dc.b $00
[000a9ea8]                           dc.b $00
[000a9ea9]                           dc.b $00
[000a9eaa] 000a7d9a                  dc.l BUBBLE_09
[000a9eae]                           dc.b $00
[000a9eaf]                           dc.b $00
[000a9eb0]                           dc.b $00
[000a9eb1]                           dc.b $00
A_BOXED07:
[000a9eb2] 0005e9d2                  dc.l A_boxed
[000a9eb6]                           dc.w $9038
[000a9eb8]                           dc.w $2012
[000a9eba] 0005e010                  dc.l Auo_boxed
[000a9ebe]                           dc.b $00
[000a9ebf]                           dc.b $00
[000a9ec0]                           dc.b $00
[000a9ec1]                           dc.b $00
[000a9ec2]                           dc.b $00
[000a9ec3]                           dc.b $00
[000a9ec4]                           dc.b $00
[000a9ec5]                           dc.b $00
[000a9ec6]                           dc.b $00
[000a9ec7]                           dc.b $00
[000a9ec8]                           dc.b $00
[000a9ec9]                           dc.b $00
[000a9eca] 000a7b54                  dc.l BUBBLE_02
[000a9ece]                           dc.b $00
[000a9ecf]                           dc.b $00
[000a9ed0]                           dc.b $00
[000a9ed1]                           dc.b $00
A_BOXED08:
[000a9ed2] 0005e9d2                  dc.l A_boxed
[000a9ed6]                           dc.w $9038
[000a9ed8]                           dc.w $2012
[000a9eda] 0005e010                  dc.l Auo_boxed
[000a9ede]                           dc.b $00
[000a9edf]                           dc.b $00
[000a9ee0]                           dc.b $00
[000a9ee1]                           dc.b $00
[000a9ee2]                           dc.b $00
[000a9ee3]                           dc.b $00
[000a9ee4]                           dc.b $00
[000a9ee5]                           dc.b $00
[000a9ee6]                           dc.b $00
[000a9ee7]                           dc.b $00
[000a9ee8]                           dc.b $00
[000a9ee9]                           dc.b $00
[000a9eea] 000a7e57                  dc.l BUBBLE_11
[000a9eee]                           dc.b $00
[000a9eef]                           dc.b $00
[000a9ef0]                           dc.b $00
[000a9ef1]                           dc.b $00
A_BOXED09:
[000a9ef2] 0005e9d2                  dc.l A_boxed
[000a9ef6]                           dc.w $9038
[000a9ef8]                           dc.w $2012
[000a9efa] 0005e010                  dc.l Auo_boxed
[000a9efe]                           dc.b $00
[000a9eff]                           dc.b $00
[000a9f00]                           dc.b $00
[000a9f01]                           dc.b $00
[000a9f02]                           dc.b $00
[000a9f03]                           dc.b $00
[000a9f04]                           dc.b $00
[000a9f05]                           dc.b $00
[000a9f06]                           dc.b $00
[000a9f07]                           dc.b $00
[000a9f08]                           dc.b $00
[000a9f09]                           dc.b $00
[000a9f0a] 000a7ef9                  dc.l BUBBLE_12
[000a9f0e]                           dc.b $00
[000a9f0f]                           dc.b $00
[000a9f10]                           dc.b $00
[000a9f11]                           dc.b $00
A_BOXED10:
[000a9f12] 0005e9d2                  dc.l A_boxed
[000a9f16]                           dc.w $9038
[000a9f18]                           dc.w $2012
[000a9f1a] 0005e010                  dc.l Auo_boxed
[000a9f1e]                           dc.b $00
[000a9f1f]                           dc.b $00
[000a9f20]                           dc.b $00
[000a9f21]                           dc.b $00
[000a9f22]                           dc.b $00
[000a9f23]                           dc.b $00
[000a9f24]                           dc.b $00
[000a9f25]                           dc.b $00
[000a9f26]                           dc.b $00
[000a9f27]                           dc.b $00
[000a9f28]                           dc.b $00
[000a9f29]                           dc.b $00
[000a9f2a] 000a7f9b                  dc.l BUBBLE_13
[000a9f2e]                           dc.b $00
[000a9f2f]                           dc.b $00
[000a9f30]                           dc.b $00
[000a9f31]                           dc.b $00
A_BOXED11:
[000a9f32] 0005e9d2                  dc.l A_boxed
[000a9f36]                           dc.w $9038
[000a9f38]                           dc.w $2012
[000a9f3a] 0005e010                  dc.l Auo_boxed
[000a9f3e]                           dc.b $00
[000a9f3f]                           dc.b $00
[000a9f40]                           dc.b $00
[000a9f41]                           dc.b $00
[000a9f42]                           dc.b $00
[000a9f43]                           dc.b $00
[000a9f44]                           dc.b $00
[000a9f45]                           dc.b $00
[000a9f46]                           dc.b $00
[000a9f47]                           dc.b $00
[000a9f48]                           dc.b $00
[000a9f49]                           dc.b $00
[000a9f4a] 000a8053                  dc.l BUBBLE_14
[000a9f4e]                           dc.b $00
[000a9f4f]                           dc.b $00
[000a9f50]                           dc.b $00
[000a9f51]                           dc.b $00
A_BOXED12:
[000a9f52] 0005e9d2                  dc.l A_boxed
[000a9f56]                           dc.w $9038
[000a9f58]                           dc.w $2012
[000a9f5a] 0005e010                  dc.l Auo_boxed
[000a9f5e]                           dc.b $00
[000a9f5f]                           dc.b $00
[000a9f60]                           dc.b $00
[000a9f61]                           dc.b $00
[000a9f62]                           dc.b $00
[000a9f63]                           dc.b $00
[000a9f64]                           dc.b $00
[000a9f65]                           dc.b $00
[000a9f66]                           dc.b $00
[000a9f67]                           dc.b $00
[000a9f68]                           dc.b $00
[000a9f69]                           dc.b $00
[000a9f6a] 000a80e7                  dc.l BUBBLE_15
[000a9f6e]                           dc.b $00
[000a9f6f]                           dc.b $00
[000a9f70]                           dc.b $00
[000a9f71]                           dc.b $00
A_BOXED13:
[000a9f72] 0005e9d2                  dc.l A_boxed
[000a9f76]                           dc.w $9070
[000a9f78]                           dc.w $0512
[000a9f7a] 0005e010                  dc.l Auo_boxed
[000a9f7e]                           dc.b $00
[000a9f7f]                           dc.b $00
[000a9f80]                           dc.b $00
[000a9f81]                           dc.b $00
[000a9f82]                           dc.b $00
[000a9f83]                           dc.b $00
[000a9f84]                           dc.b $00
[000a9f85]                           dc.b $00
[000a9f86]                           dc.b $00
[000a9f87]                           dc.b $00
[000a9f88]                           dc.b $00
[000a9f89]                           dc.b $00
[000a9f8a] 000a83f7                  dc.l BUBBLE_20
[000a9f8e]                           dc.b $00
[000a9f8f]                           dc.b $00
[000a9f90]                           dc.b $00
[000a9f91]                           dc.b $00
A_BOXED14:
[000a9f92] 0005e9d2                  dc.l A_boxed
[000a9f96]                           dc.w $9038
[000a9f98]                           dc.w $2012
[000a9f9a] 0005e010                  dc.l Auo_boxed
[000a9f9e]                           dc.b $00
[000a9f9f]                           dc.b $00
[000a9fa0]                           dc.b $00
[000a9fa1]                           dc.b $00
[000a9fa2]                           dc.b $00
[000a9fa3]                           dc.b $00
[000a9fa4]                           dc.b $00
[000a9fa5]                           dc.b $00
[000a9fa6]                           dc.b $00
[000a9fa7]                           dc.b $00
[000a9fa8]                           dc.b $00
[000a9fa9]                           dc.b $00
[000a9faa] 000a89a7                  dc.l BUBBLE_37
[000a9fae]                           dc.b $00
[000a9faf]                           dc.b $00
[000a9fb0]                           dc.b $00
[000a9fb1]                           dc.b $00
A_BOXED15:
[000a9fb2] 0005e9d2                  dc.l A_boxed
[000a9fb6]                           dc.w $9038
[000a9fb8]                           dc.w $2012
[000a9fba] 0005e010                  dc.l Auo_boxed
[000a9fbe]                           dc.b $00
[000a9fbf]                           dc.b $00
[000a9fc0]                           dc.b $00
[000a9fc1]                           dc.b $00
[000a9fc2]                           dc.b $00
[000a9fc3]                           dc.b $00
[000a9fc4]                           dc.b $00
[000a9fc5]                           dc.b $00
[000a9fc6]                           dc.b $00
[000a9fc7]                           dc.b $00
[000a9fc8]                           dc.b $00
[000a9fc9]                           dc.b $00
[000a9fca] 000a881c                  dc.l BUBBLE_35
[000a9fce]                           dc.b $00
[000a9fcf]                           dc.b $00
[000a9fd0]                           dc.b $00
[000a9fd1]                           dc.b $00
A_BOXED16:
[000a9fd2] 0005e9d2                  dc.l A_boxed
[000a9fd6]                           dc.w $9038
[000a9fd8]                           dc.w $2012
[000a9fda] 0005e010                  dc.l Auo_boxed
[000a9fde]                           dc.b $00
[000a9fdf]                           dc.b $00
[000a9fe0]                           dc.b $00
[000a9fe1]                           dc.b $00
[000a9fe2]                           dc.b $00
[000a9fe3]                           dc.b $00
[000a9fe4]                           dc.b $00
[000a9fe5]                           dc.b $00
[000a9fe6]                           dc.b $00
[000a9fe7]                           dc.b $00
[000a9fe8]                           dc.b $00
[000a9fe9]                           dc.b $00
[000a9fea] 000a88ed                  dc.l BUBBLE_36
[000a9fee]                           dc.b $00
[000a9fef]                           dc.b $00
[000a9ff0]                           dc.b $00
[000a9ff1]                           dc.b $00
A_BOXED17:
[000a9ff2] 0005e9d2                  dc.l A_boxed
[000a9ff6]                           dc.w $9038
[000a9ff8]                           dc.w $2012
[000a9ffa] 0005e010                  dc.l Auo_boxed
[000a9ffe]                           dc.b $00
[000a9fff]                           dc.b $00
[000aa000]                           dc.b $00
[000aa001]                           dc.b $00
[000aa002]                           dc.b $00
[000aa003]                           dc.b $00
[000aa004]                           dc.b $00
[000aa005]                           dc.b $00
[000aa006]                           dc.b $00
[000aa007]                           dc.b $00
[000aa008]                           dc.b $00
[000aa009]                           dc.b $00
[000aa00a] 000a8be0                  dc.l BUBBLE_40
[000aa00e]                           dc.b $00
[000aa00f]                           dc.b $00
[000aa010]                           dc.b $00
[000aa011]                           dc.b $00
A_BOXED18:
[000aa012] 0005e9d2                  dc.l A_boxed
[000aa016]                           dc.w $9038
[000aa018]                           dc.w $2012
[000aa01a] 0005e010                  dc.l Auo_boxed
[000aa01e]                           dc.b $00
[000aa01f]                           dc.b $00
[000aa020]                           dc.b $00
[000aa021]                           dc.b $00
[000aa022]                           dc.b $00
[000aa023]                           dc.b $00
[000aa024]                           dc.b $00
[000aa025]                           dc.b $00
[000aa026]                           dc.b $00
[000aa027]                           dc.b $00
[000aa028]                           dc.b $00
[000aa029]                           dc.b $00
[000aa02a] 000a8b27                  dc.l BUBBLE_39
[000aa02e]                           dc.b $00
[000aa02f]                           dc.b $00
[000aa030]                           dc.b $00
[000aa031]                           dc.b $00
A_BOXED19:
[000aa032] 0005e9d2                  dc.l A_boxed
[000aa036]                           dc.w $9038
[000aa038]                           dc.w $2012
[000aa03a] 0005e010                  dc.l Auo_boxed
[000aa03e]                           dc.b $00
[000aa03f]                           dc.b $00
[000aa040]                           dc.b $00
[000aa041]                           dc.b $00
[000aa042]                           dc.b $00
[000aa043]                           dc.b $00
[000aa044]                           dc.b $00
[000aa045]                           dc.b $00
[000aa046]                           dc.b $00
[000aa047]                           dc.b $00
[000aa048]                           dc.b $00
[000aa049]                           dc.b $00
[000aa04a] 000a8a67                  dc.l BUBBLE_38
[000aa04e]                           dc.b $00
[000aa04f]                           dc.b $00
[000aa050]                           dc.b $00
[000aa051]                           dc.b $00
A_BOXED20:
[000aa052] 0005e9d2                  dc.l A_boxed
[000aa056]                           dc.w $9038
[000aa058]                           dc.w $2012
[000aa05a] 0005e010                  dc.l Auo_boxed
[000aa05e]                           dc.b $00
[000aa05f]                           dc.b $00
[000aa060]                           dc.b $00
[000aa061]                           dc.b $00
[000aa062]                           dc.b $00
[000aa063]                           dc.b $00
[000aa064]                           dc.b $00
[000aa065]                           dc.b $00
[000aa066]                           dc.b $00
[000aa067]                           dc.b $00
[000aa068]                           dc.b $00
[000aa069]                           dc.b $00
[000aa06a] 000a8c9a                  dc.l BUBBLE_41
[000aa06e]                           dc.b $00
[000aa06f]                           dc.b $00
[000aa070]                           dc.b $00
[000aa071]                           dc.b $00
A_BOXED21:
[000aa072] 0005e9d2                  dc.l A_boxed
[000aa076]                           dc.w $9038
[000aa078]                           dc.w $2012
[000aa07a] 0005e010                  dc.l Auo_boxed
[000aa07e]                           dc.b $00
[000aa07f]                           dc.b $00
[000aa080]                           dc.b $00
[000aa081]                           dc.b $00
[000aa082]                           dc.b $00
[000aa083]                           dc.b $00
[000aa084]                           dc.b $00
[000aa085]                           dc.b $00
[000aa086]                           dc.b $00
[000aa087]                           dc.b $00
[000aa088]                           dc.b $00
[000aa089]                           dc.b $00
[000aa08a] 000a8d58                  dc.l BUBBLE_42
[000aa08e]                           dc.b $00
[000aa08f]                           dc.b $00
[000aa090]                           dc.b $00
[000aa091]                           dc.b $00
A_BOXED22:
[000aa092] 0005e9d2                  dc.l A_boxed
[000aa096]                           dc.w $9038
[000aa098]                           dc.w $2012
[000aa09a] 0005e010                  dc.l Auo_boxed
[000aa09e]                           dc.b $00
[000aa09f]                           dc.b $00
[000aa0a0]                           dc.b $00
[000aa0a1]                           dc.b $00
[000aa0a2]                           dc.b $00
[000aa0a3]                           dc.b $00
[000aa0a4]                           dc.b $00
[000aa0a5]                           dc.b $00
[000aa0a6]                           dc.b $00
[000aa0a7]                           dc.b $00
[000aa0a8]                           dc.b $00
[000aa0a9]                           dc.b $00
[000aa0aa] 000a8e16                  dc.l BUBBLE_43
[000aa0ae]                           dc.b $00
[000aa0af]                           dc.b $00
[000aa0b0]                           dc.b $00
[000aa0b1]                           dc.b $00
A_BOXED23:
[000aa0b2] 0005e9d2                  dc.l A_boxed
[000aa0b6]                           dc.w $9038
[000aa0b8]                           dc.w $2012
[000aa0ba] 0005e010                  dc.l Auo_boxed
[000aa0be]                           dc.b $00
[000aa0bf]                           dc.b $00
[000aa0c0]                           dc.b $00
[000aa0c1]                           dc.b $00
[000aa0c2]                           dc.b $00
[000aa0c3]                           dc.b $00
[000aa0c4]                           dc.b $00
[000aa0c5]                           dc.b $00
[000aa0c6]                           dc.b $00
[000aa0c7]                           dc.b $00
[000aa0c8]                           dc.b $00
[000aa0c9]                           dc.b $00
[000aa0ca] 000a8ed4                  dc.l BUBBLE_44
[000aa0ce]                           dc.b $00
[000aa0cf]                           dc.b $00
[000aa0d0]                           dc.b $00
[000aa0d1]                           dc.b $00
A_BOXED24:
[000aa0d2] 0005e9d2                  dc.l A_boxed
[000aa0d6]                           dc.w $9038
[000aa0d8]                           dc.w $2012
[000aa0da] 0005e010                  dc.l Auo_boxed
[000aa0de]                           dc.b $00
[000aa0df]                           dc.b $00
[000aa0e0]                           dc.b $00
[000aa0e1]                           dc.b $00
[000aa0e2]                           dc.b $00
[000aa0e3]                           dc.b $00
[000aa0e4]                           dc.b $00
[000aa0e5]                           dc.b $00
[000aa0e6]                           dc.b $00
[000aa0e7]                           dc.b $00
[000aa0e8]                           dc.b $00
[000aa0e9]                           dc.b $00
[000aa0ea] 000a8f92                  dc.l BUBBLE_45
[000aa0ee]                           dc.b $00
[000aa0ef]                           dc.b $00
[000aa0f0]                           dc.b $00
[000aa0f1]                           dc.b $00
A_BOXED25:
[000aa0f2] 0005e9d2                  dc.l A_boxed
[000aa0f6]                           dc.w $9038
[000aa0f8]                           dc.w $2012
[000aa0fa] 0005e010                  dc.l Auo_boxed
[000aa0fe]                           dc.b $00
[000aa0ff]                           dc.b $00
[000aa100]                           dc.b $00
[000aa101]                           dc.b $00
[000aa102]                           dc.b $00
[000aa103]                           dc.b $00
[000aa104]                           dc.b $00
[000aa105]                           dc.b $00
[000aa106]                           dc.b $00
[000aa107]                           dc.b $00
[000aa108]                           dc.b $00
[000aa109]                           dc.b $00
[000aa10a] 000a9052                  dc.l BUBBLE_46
[000aa10e]                           dc.b $00
[000aa10f]                           dc.b $00
[000aa110]                           dc.b $00
[000aa111]                           dc.b $00
A_BOXED26:
[000aa112] 0005e9d2                  dc.l A_boxed
[000aa116]                           dc.w $9038
[000aa118]                           dc.w $2012
[000aa11a] 0005e010                  dc.l Auo_boxed
[000aa11e]                           dc.b $00
[000aa11f]                           dc.b $00
[000aa120]                           dc.b $00
[000aa121]                           dc.b $00
[000aa122]                           dc.b $00
[000aa123]                           dc.b $00
[000aa124]                           dc.b $00
[000aa125]                           dc.b $00
[000aa126]                           dc.b $00
[000aa127]                           dc.b $00
[000aa128]                           dc.b $00
[000aa129]                           dc.b $00
[000aa12a] 000a9108                  dc.l BUBBLE_47
[000aa12e]                           dc.b $00
[000aa12f]                           dc.b $00
[000aa130]                           dc.b $00
[000aa131]                           dc.b $00
A_BOXED27:
[000aa132] 0005e9d2                  dc.l A_boxed
[000aa136]                           dc.w $9038
[000aa138]                           dc.w $2012
[000aa13a] 0005e010                  dc.l Auo_boxed
[000aa13e]                           dc.b $00
[000aa13f]                           dc.b $00
[000aa140]                           dc.b $00
[000aa141]                           dc.b $00
[000aa142]                           dc.b $00
[000aa143]                           dc.b $00
[000aa144]                           dc.b $00
[000aa145]                           dc.b $00
[000aa146]                           dc.b $00
[000aa147]                           dc.b $00
[000aa148]                           dc.b $00
[000aa149]                           dc.b $00
[000aa14a] 000a91be                  dc.l BUBBLE_48
[000aa14e]                           dc.b $00
[000aa14f]                           dc.b $00
[000aa150]                           dc.b $00
[000aa151]                           dc.b $00
A_BOXED28:
[000aa152] 0005e9d2                  dc.l A_boxed
[000aa156]                           dc.w $9038
[000aa158]                           dc.w $2012
[000aa15a] 0005e010                  dc.l Auo_boxed
[000aa15e]                           dc.b $00
[000aa15f]                           dc.b $00
[000aa160]                           dc.b $00
[000aa161]                           dc.b $00
[000aa162]                           dc.b $00
[000aa163]                           dc.b $00
[000aa164]                           dc.b $00
[000aa165]                           dc.b $00
[000aa166]                           dc.b $00
[000aa167]                           dc.b $00
[000aa168]                           dc.b $00
[000aa169]                           dc.b $00
[000aa16a] 000a9273                  dc.l BUBBLE_49
[000aa16e]                           dc.b $00
[000aa16f]                           dc.b $00
[000aa170]                           dc.b $00
[000aa171]                           dc.b $00
A_BOXED29:
[000aa172] 0005e9d2                  dc.l A_boxed
[000aa176]                           dc.w $9038
[000aa178]                           dc.w $2012
[000aa17a] 0005e010                  dc.l Auo_boxed
[000aa17e]                           dc.b $00
[000aa17f]                           dc.b $00
[000aa180]                           dc.b $00
[000aa181]                           dc.b $00
[000aa182]                           dc.b $00
[000aa183]                           dc.b $00
[000aa184]                           dc.b $00
[000aa185]                           dc.b $00
[000aa186]                           dc.b $00
[000aa187]                           dc.b $00
[000aa188]                           dc.b $00
[000aa189]                           dc.b $00
[000aa18a] 000a9328                  dc.l BUBBLE_50
[000aa18e]                           dc.b $00
[000aa18f]                           dc.b $00
[000aa190]                           dc.b $00
[000aa191]                           dc.b $00
A_BOXED30:
[000aa192] 0005e9d2                  dc.l A_boxed
[000aa196]                           dc.w $9038
[000aa198]                           dc.w $2012
[000aa19a] 0005e010                  dc.l Auo_boxed
[000aa19e]                           dc.b $00
[000aa19f]                           dc.b $00
[000aa1a0]                           dc.b $00
[000aa1a1]                           dc.b $00
[000aa1a2]                           dc.b $00
[000aa1a3]                           dc.b $00
[000aa1a4]                           dc.b $00
[000aa1a5]                           dc.b $00
[000aa1a6]                           dc.b $00
[000aa1a7]                           dc.b $00
[000aa1a8]                           dc.b $00
[000aa1a9]                           dc.b $00
[000aa1aa] 000a93e1                  dc.l BUBBLE_51
[000aa1ae]                           dc.b $00
[000aa1af]                           dc.b $00
[000aa1b0]                           dc.b $00
[000aa1b1]                           dc.b $00
A_BOXED31:
[000aa1b2] 0005e9d2                  dc.l A_boxed
[000aa1b6]                           dc.w $9038
[000aa1b8]                           dc.w $2012
[000aa1ba] 0005e010                  dc.l Auo_boxed
[000aa1be]                           dc.b $00
[000aa1bf]                           dc.b $00
[000aa1c0]                           dc.b $00
[000aa1c1]                           dc.b $00
[000aa1c2]                           dc.b $00
[000aa1c3]                           dc.b $00
[000aa1c4]                           dc.b $00
[000aa1c5]                           dc.b $00
[000aa1c6]                           dc.b $00
[000aa1c7]                           dc.b $00
[000aa1c8]                           dc.b $00
[000aa1c9]                           dc.b $00
[000aa1ca] 000a949e                  dc.l BUBBLE_52
[000aa1ce]                           dc.b $00
[000aa1cf]                           dc.b $00
[000aa1d0]                           dc.b $00
[000aa1d1]                           dc.b $00
A_CHECKBOX01:
[000aa1d2] 000593fc                  dc.l A_checkbox
[000aa1d6]                           dc.b $00
[000aa1d7]                           dc.b $00
[000aa1d8]                           dc.b $00
[000aa1d9]                           dc.b $01
[000aa1da] 00059318                  dc.l Auo_string
[000aa1de] 000a95c6                  dc.l TEXT_04
[000aa1e2]                           dc.b $00
[000aa1e3]                           dc.b $00
[000aa1e4]                           dc.b $00
[000aa1e5]                           dc.b $00
[000aa1e6]                           dc.b $00
[000aa1e7]                           dc.b $00
[000aa1e8]                           dc.b $00
[000aa1e9]                           dc.b $00
[000aa1ea] 000a7bc1                  dc.l BUBBLE_04
[000aa1ee]                           dc.b $00
[000aa1ef]                           dc.b $00
[000aa1f0]                           dc.b $00
[000aa1f1]                           dc.b $00
A_CHECKBOX02:
[000aa1f2] 000593fc                  dc.l A_checkbox
[000aa1f6]                           dc.b $00
[000aa1f7]                           dc.b $00
[000aa1f8]                           dc.b $00
[000aa1f9]                           dc.b $01
[000aa1fa] 00059318                  dc.l Auo_string
[000aa1fe] 000a95cd                  dc.l TEXT_05
[000aa202]                           dc.b $00
[000aa203]                           dc.b $00
[000aa204]                           dc.b $00
[000aa205]                           dc.b $00
[000aa206]                           dc.b $00
[000aa207]                           dc.b $00
[000aa208]                           dc.b $00
[000aa209]                           dc.b $00
[000aa20a] 000a7ca1                  dc.l BUBBLE_07
[000aa20e]                           dc.b $00
[000aa20f]                           dc.b $00
[000aa210]                           dc.b $00
[000aa211]                           dc.b $00
A_CHECKBOX03:
[000aa212] 000593fc                  dc.l A_checkbox
[000aa216]                           dc.b $00
[000aa217]                           dc.b $00
[000aa218]                           dc.b $00
[000aa219]                           dc.b $01
[000aa21a] 00059318                  dc.l Auo_string
[000aa21e] 000a95d2                  dc.l TEXT_06
[000aa222]                           dc.b $00
[000aa223]                           dc.b $00
[000aa224]                           dc.b $00
[000aa225]                           dc.b $00
[000aa226]                           dc.b $00
[000aa227]                           dc.b $00
[000aa228]                           dc.b $00
[000aa229]                           dc.b $00
[000aa22a] 000a7c49                  dc.l BUBBLE_06
[000aa22e]                           dc.b $00
[000aa22f]                           dc.b $00
[000aa230]                           dc.b $00
[000aa231]                           dc.b $00
A_CHECKBOX04:
[000aa232] 000593fc                  dc.l A_checkbox
[000aa236]                           dc.b $00
[000aa237]                           dc.b $00
[000aa238]                           dc.b $00
[000aa239]                           dc.b $01
[000aa23a] 00059318                  dc.l Auo_string
[000aa23e] 000a95dc                  dc.l TEXT_07
[000aa242]                           dc.b $00
[000aa243]                           dc.b $00
[000aa244]                           dc.b $00
[000aa245]                           dc.b $00
[000aa246]                           dc.b $00
[000aa247]                           dc.b $00
[000aa248]                           dc.b $00
[000aa249]                           dc.b $00
[000aa24a] 000a7d3c                  dc.l BUBBLE_08
[000aa24e]                           dc.b $00
[000aa24f]                           dc.b $00
[000aa250]                           dc.b $00
[000aa251]                           dc.b $00
A_CHECKBOX05:
[000aa252] 000593fc                  dc.l A_checkbox
[000aa256]                           dc.b $00
[000aa257]                           dc.b $00
[000aa258]                           dc.b $00
[000aa259]                           dc.b $01
[000aa25a] 00059318                  dc.l Auo_string
[000aa25e] 000a95e6                  dc.l TEXT_08
[000aa262]                           dc.b $00
[000aa263]                           dc.b $00
[000aa264]                           dc.b $00
[000aa265]                           dc.b $00
[000aa266]                           dc.b $00
[000aa267]                           dc.b $00
[000aa268]                           dc.b $00
[000aa269]                           dc.b $00
[000aa26a] 000a7c00                  dc.l BUBBLE_05
[000aa26e]                           dc.b $00
[000aa26f]                           dc.b $00
[000aa270]                           dc.b $00
[000aa271]                           dc.b $00
A_CHECKBOX07:
[000aa272] 000593fc                  dc.l A_checkbox
[000aa276]                           dc.b $00
[000aa277]                           dc.b $00
[000aa278]                           dc.b $00
[000aa279]                           dc.b $01
[000aa27a] 00059318                  dc.l Auo_string
[000aa27e] 000a95c0                  dc.l TEXT_03
[000aa282]                           dc.b $00
[000aa283]                           dc.b $00
[000aa284]                           dc.b $00
[000aa285]                           dc.b $00
[000aa286]                           dc.b $00
[000aa287]                           dc.b $00
[000aa288]                           dc.b $00
[000aa289]                           dc.b $00
[000aa28a] 000a7b8b                  dc.l BUBBLE_03
[000aa28e]                           dc.b $00
[000aa28f]                           dc.b $00
[000aa290]                           dc.b $00
[000aa291]                           dc.b $00
A_INNERFRAME01:
[000aa292] 00059f9c                  dc.l A_innerframe
[000aa296]                           dc.w $1800
[000aa298]                           dc.w $8f19
[000aa29a] 00059318                  dc.l Auo_string
[000aa29e] 000a95fa                  dc.l TEXT_10
[000aa2a2]                           dc.b $00
[000aa2a3]                           dc.b $00
[000aa2a4]                           dc.b $00
[000aa2a5]                           dc.b $00
[000aa2a6]                           dc.b $00
[000aa2a7]                           dc.b $00
[000aa2a8]                           dc.b $00
[000aa2a9]                           dc.b $00
[000aa2aa]                           dc.b $00
[000aa2ab]                           dc.b $00
[000aa2ac]                           dc.b $00
[000aa2ad]                           dc.b $00
[000aa2ae]                           dc.b $00
[000aa2af]                           dc.b $00
[000aa2b0]                           dc.b $00
[000aa2b1]                           dc.b $00
A_INNERFRAME02:
[000aa2b2] 00059f9c                  dc.l A_innerframe
[000aa2b6]                           dc.w $1800
[000aa2b8]                           dc.w $8f19
[000aa2ba] 00059318                  dc.l Auo_string
[000aa2be] 000a96e4                  dc.l TEXT_39
[000aa2c2]                           dc.b $00
[000aa2c3]                           dc.b $00
[000aa2c4]                           dc.b $00
[000aa2c5]                           dc.b $00
[000aa2c6]                           dc.b $00
[000aa2c7]                           dc.b $00
[000aa2c8]                           dc.b $00
[000aa2c9]                           dc.b $00
[000aa2ca]                           dc.b $00
[000aa2cb]                           dc.b $00
[000aa2cc]                           dc.b $00
[000aa2cd]                           dc.b $00
[000aa2ce]                           dc.b $00
[000aa2cf]                           dc.b $00
[000aa2d0]                           dc.b $00
[000aa2d1]                           dc.b $00
A_INNERFRAME03:
[000aa2d2] 00059f9c                  dc.l A_innerframe
[000aa2d6]                           dc.w $1800
[000aa2d8]                           dc.w $8f19
[000aa2da] 00059318                  dc.l Auo_string
[000aa2de] 000a9632                  dc.l TEXT_16
[000aa2e2]                           dc.b $00
[000aa2e3]                           dc.b $00
[000aa2e4]                           dc.b $00
[000aa2e5]                           dc.b $00
[000aa2e6]                           dc.b $00
[000aa2e7]                           dc.b $00
[000aa2e8]                           dc.b $00
[000aa2e9]                           dc.b $00
[000aa2ea]                           dc.b $00
[000aa2eb]                           dc.b $00
[000aa2ec]                           dc.b $00
[000aa2ed]                           dc.b $00
[000aa2ee]                           dc.b $00
[000aa2ef]                           dc.b $00
[000aa2f0]                           dc.b $00
[000aa2f1]                           dc.b $00
A_INNERFRAME04:
[000aa2f2] 00059f9c                  dc.l A_innerframe
[000aa2f6]                           dc.w $1800
[000aa2f8]                           dc.w $8f19
[000aa2fa] 00059318                  dc.l Auo_string
[000aa2fe] 000a964a                  dc.l TEXT_19
[000aa302]                           dc.b $00
[000aa303]                           dc.b $00
[000aa304]                           dc.b $00
[000aa305]                           dc.b $00
[000aa306]                           dc.b $00
[000aa307]                           dc.b $00
[000aa308]                           dc.b $00
[000aa309]                           dc.b $00
[000aa30a]                           dc.b $00
[000aa30b]                           dc.b $00
[000aa30c]                           dc.b $00
[000aa30d]                           dc.b $00
[000aa30e]                           dc.b $00
[000aa30f]                           dc.b $00
[000aa310]                           dc.b $00
[000aa311]                           dc.b $00
A_INNERFRAME05:
[000aa312] 00059f9c                  dc.l A_innerframe
[000aa316]                           dc.w $1800
[000aa318]                           dc.w $8f19
[000aa31a] 00059318                  dc.l Auo_string
[000aa31e] 000a96dd                  dc.l TEXT_38
[000aa322]                           dc.b $00
[000aa323]                           dc.b $00
[000aa324]                           dc.b $00
[000aa325]                           dc.b $00
[000aa326]                           dc.b $00
[000aa327]                           dc.b $00
[000aa328]                           dc.b $00
[000aa329]                           dc.b $00
[000aa32a]                           dc.b $00
[000aa32b]                           dc.b $00
[000aa32c]                           dc.b $00
[000aa32d]                           dc.b $00
[000aa32e]                           dc.b $00
[000aa32f]                           dc.b $00
[000aa330]                           dc.b $00
[000aa331]                           dc.b $00
A_INNERFRAME06:
[000aa332] 00059f9c                  dc.l A_innerframe
[000aa336]                           dc.w $1800
[000aa338]                           dc.w $8f19
[000aa33a] 00059318                  dc.l Auo_string
[000aa33e] 000a9738                  dc.l TEXT_55
[000aa342]                           dc.b $00
[000aa343]                           dc.b $00
[000aa344]                           dc.b $00
[000aa345]                           dc.b $00
[000aa346]                           dc.b $00
[000aa347]                           dc.b $00
[000aa348]                           dc.b $00
[000aa349]                           dc.b $00
[000aa34a]                           dc.b $00
[000aa34b]                           dc.b $00
[000aa34c]                           dc.b $00
[000aa34d]                           dc.b $00
[000aa34e]                           dc.b $00
[000aa34f]                           dc.b $00
[000aa350]                           dc.b $00
[000aa351]                           dc.b $00
A_INNERFRAME07:
[000aa352] 00059f9c                  dc.l A_innerframe
[000aa356]                           dc.w $1800
[000aa358]                           dc.w $8f19
[000aa35a] 00059318                  dc.l Auo_string
[000aa35e] 000a963a                  dc.l TEXT_17
[000aa362]                           dc.b $00
[000aa363]                           dc.b $00
[000aa364]                           dc.b $00
[000aa365]                           dc.b $00
[000aa366]                           dc.b $00
[000aa367]                           dc.b $00
[000aa368]                           dc.b $00
[000aa369]                           dc.b $00
[000aa36a]                           dc.b $00
[000aa36b]                           dc.b $00
[000aa36c]                           dc.b $00
[000aa36d]                           dc.b $00
[000aa36e]                           dc.b $00
[000aa36f]                           dc.b $00
[000aa370]                           dc.b $00
[000aa371]                           dc.b $00
A_INNERFRAME08:
[000aa372] 00059f9c                  dc.l A_innerframe
[000aa376]                           dc.w $1800
[000aa378]                           dc.w $8f19
[000aa37a] 00059318                  dc.l Auo_string
[000aa37e] 000a9604                  dc.l TEXT_11
[000aa382]                           dc.b $00
[000aa383]                           dc.b $00
[000aa384]                           dc.b $00
[000aa385]                           dc.b $00
[000aa386]                           dc.b $00
[000aa387]                           dc.b $00
[000aa388]                           dc.b $00
[000aa389]                           dc.b $00
[000aa38a]                           dc.b $00
[000aa38b]                           dc.b $00
[000aa38c]                           dc.b $00
[000aa38d]                           dc.b $00
[000aa38e]                           dc.b $00
[000aa38f]                           dc.b $00
[000aa390]                           dc.b $00
[000aa391]                           dc.b $00
A_SLIDER01:
[000aa392] 00035008                  dc.l A_slider
[000aa396]                           dc.b $00
[000aa397]                           dc.b $00
[000aa398]                           dc.b $00
[000aa399]                           dc.b $02
[000aa39a] 0003589a                  dc.l Auo_slider
[000aa39e]                           dc.b $00
[000aa39f]                           dc.b $00
[000aa3a0]                           dc.b $00
[000aa3a1]                           dc.b $00
[000aa3a2]                           dc.b $00
[000aa3a3]                           dc.b $00
[000aa3a4]                           dc.b $00
[000aa3a5]                           dc.b $00
[000aa3a6]                           dc.b $00
[000aa3a7]                           dc.b $00
[000aa3a8]                           dc.b $00
[000aa3a9]                           dc.b $00
[000aa3aa] 000a81bb                  dc.l BUBBLE_16
[000aa3ae]                           dc.b $00
[000aa3af]                           dc.b $00
[000aa3b0]                           dc.b $00
[000aa3b1]                           dc.b $00
_C4_IC_WINDOW:
[000aa3b2]                           dc.b $00
[000aa3b3]                           dc.b $04
[000aa3b4] 000a9750                  dc.l $000a9750 ; no symbol found
[000aa3b8] 000a9a38                  dc.l DATAS_28
[000aa3bc]                           dc.b $00
[000aa3bd]                           dc.b $00
[000aa3be]                           dc.b $00
[000aa3bf]                           dc.b $00
[000aa3c0]                           dc.b $00
[000aa3c1]                           dc.b $00
[000aa3c2]                           dc.b $00
[000aa3c3]                           dc.b $00
[000aa3c4]                           dc.b $00
[000aa3c5]                           dc.b $00
[000aa3c6]                           dc.b $00
[000aa3c7]                           dc.b $00
_MSK_IC_WINDOW:
[000aa3c8]                           dc.b $00
[000aa3c9]                           dc.b $00
[000aa3ca]                           dc.b $00
[000aa3cb]                           dc.b $00
[000aa3cc]                           dc.b $00
[000aa3cd]                           dc.b $00
[000aa3ce]                           dc.w $7fff
[000aa3d0]                           dc.w $ffff
[000aa3d2]                           dc.w $fffe
[000aa3d4]                           dc.w $7fff
[000aa3d6]                           dc.w $ffff
[000aa3d8]                           dc.w $ffff
[000aa3da]                           dc.w $7fff
[000aa3dc]                           dc.w $ffff
[000aa3de]                           dc.w $ffff
[000aa3e0]                           dc.w $7fff
[000aa3e2]                           dc.w $ffff
[000aa3e4]                           dc.w $ffff
[000aa3e6]                           dc.w $7fff
[000aa3e8]                           dc.w $ffff
[000aa3ea]                           dc.w $ffff
[000aa3ec]                           dc.w $7fff
[000aa3ee]                           dc.w $ffff
[000aa3f0]                           dc.w $ffff
[000aa3f2]                           dc.w $7fff
[000aa3f4]                           dc.w $ffff
[000aa3f6]                           dc.w $ffff
[000aa3f8]                           dc.w $7fff
[000aa3fa]                           dc.w $ffff
[000aa3fc]                           dc.w $ffff
[000aa3fe]                           dc.w $7fff
[000aa400]                           dc.w $ffff
[000aa402]                           dc.w $ffff
[000aa404]                           dc.w $7fff
[000aa406]                           dc.w $ffff
[000aa408]                           dc.w $ffff
[000aa40a]                           dc.w $7fff
[000aa40c]                           dc.w $ffff
[000aa40e]                           dc.w $ffff
[000aa410]                           dc.w $7fff
[000aa412]                           dc.w $ffff
[000aa414]                           dc.w $ffff
[000aa416]                           dc.w $7fff
[000aa418]                           dc.w $ffff
[000aa41a]                           dc.w $ffff
[000aa41c]                           dc.w $7fff
[000aa41e]                           dc.w $ffff
[000aa420]                           dc.w $ffff
[000aa422]                           dc.w $7fff
[000aa424]                           dc.w $ffff
[000aa426]                           dc.w $ffff
[000aa428]                           dc.w $7fff
[000aa42a]                           dc.w $ffff
[000aa42c]                           dc.w $ffff
[000aa42e]                           dc.w $7fff
[000aa430]                           dc.w $ffff
[000aa432]                           dc.w $ffff
[000aa434]                           dc.w $7fff
[000aa436]                           dc.w $ffff
[000aa438]                           dc.w $ffff
[000aa43a]                           dc.w $7fff
[000aa43c]                           dc.w $ffff
[000aa43e]                           dc.w $ffff
[000aa440]                           dc.w $7fff
[000aa442]                           dc.w $ffff
[000aa444]                           dc.w $ffff
[000aa446]                           dc.w $7fff
[000aa448]                           dc.w $ffff
[000aa44a]                           dc.w $ffff
[000aa44c]                           dc.w $7fff
[000aa44e]                           dc.w $ffff
[000aa450]                           dc.w $ffff
[000aa452]                           dc.w $7fff
[000aa454]                           dc.w $ffff
[000aa456]                           dc.w $ffff
[000aa458]                           dc.w $7fff
[000aa45a]                           dc.w $ffff
[000aa45c]                           dc.w $ffff
[000aa45e]                           dc.w $7fff
[000aa460]                           dc.w $ffff
[000aa462]                           dc.w $ffff
[000aa464]                           dc.w $7fff
[000aa466]                           dc.w $ffff
[000aa468]                           dc.w $ffff
[000aa46a]                           dc.w $7fff
[000aa46c]                           dc.w $ffff
[000aa46e]                           dc.w $ffff
[000aa470]                           dc.w $7fff
[000aa472]                           dc.w $ffff
[000aa474]                           dc.w $ffff
[000aa476]                           dc.w $7fff
[000aa478]                           dc.w $ffff
[000aa47a]                           dc.w $ffff
[000aa47c]                           dc.w $3fff
[000aa47e]                           dc.w $ffff
[000aa480]                           dc.w $ffff
_DAT_IC_WINDOW:
[000aa482]                           dc.b $00
[000aa483]                           dc.b $00
[000aa484]                           dc.b $00
[000aa485]                           dc.b $00
[000aa486]                           dc.b $00
[000aa487]                           dc.b $00
[000aa488]                           dc.w $7fff
[000aa48a]                           dc.w $ffff
[000aa48c]                           dc.w $fffe
[000aa48e]                           dc.w $4155
[000aa490]                           dc.b $00
[000aa491]                           dc.b $02
[000aa492]                           dc.w $aa83
[000aa494]                           dc.w $49aa
[000aa496]                           dc.w $6401
[000aa498]                           dc.w $55ab
[000aa49a]                           dc.w $5555
[000aa49c]                           dc.w $5492
[000aa49e]                           dc.w $aa93
[000aa4a0]                           dc.w $49aa
[000aa4a2]                           dc.w $4cf1
[000aa4a4]                           dc.w $55ab
[000aa4a6]                           dc.w $4155
[000aa4a8]                           dc.b $00
[000aa4a9]                           dc.b $02
[000aa4aa]                           dc.w $aa83
[000aa4ac]                           dc.w $7fff
[000aa4ae]                           dc.w $ffff
[000aa4b0]                           dc.w $ffff
[000aa4b2]                           dc.w $4fff
[000aa4b4]                           dc.w $f800
[000aa4b6]                           dc.b $00
[000aa4b7]                           dc.b $93
[000aa4b8]                           dc.w $4edb
[000aa4ba]                           dc.w $f800
[000aa4bc]                           dc.b $00
[000aa4bd]                           dc.b $bb
[000aa4be]                           dc.w $4e1b
[000aa4c0]                           dc.w $f800
[000aa4c2]                           dc.b $00
[000aa4c3]                           dc.b $93
[000aa4c4]                           dc.w $4ed8
[000aa4c6]                           dc.w $f800
[000aa4c8]                           dc.b $00
[000aa4c9]                           dc.b $93
[000aa4ca]                           dc.w $4fff
[000aa4cc]                           dc.w $f800
[000aa4ce]                           dc.b $00
[000aa4cf]                           dc.b $83
[000aa4d0]                           dc.w $7fff
[000aa4d2]                           dc.w $ffff
[000aa4d4]                           dc.w $ffff
[000aa4d6]                           dc.w $4800
[000aa4d8]                           dc.w $0c00
[000aa4da]                           dc.b $00
[000aa4db]                           dc.b $83
[000aa4dc]                           dc.w $4a40
[000aa4de]                           dc.w $0c00
[000aa4e0]                           dc.b $00
[000aa4e1]                           dc.b $83
[000aa4e2]                           dc.w $4bcf
[000aa4e4]                           dc.w $0c00
[000aa4e6]                           dc.b $00
[000aa4e7]                           dc.b $83
[000aa4e8]                           dc.w $4800
[000aa4ea]                           dc.w $0c00
[000aa4ec]                           dc.b $00
[000aa4ed]                           dc.b $ff
[000aa4ee]                           dc.w $4fff
[000aa4f0]                           dc.w $fc00
[000aa4f2]                           dc.b $00
[000aa4f3]                           dc.b $83
[000aa4f4]                           dc.w $47ff
[000aa4f6]                           dc.w $fc00
[000aa4f8]                           dc.b $00
[000aa4f9]                           dc.b $93
[000aa4fa]                           dc.w $4000
[000aa4fc]                           dc.b $00
[000aa4fd]                           dc.b $00
[000aa4fe]                           dc.b $00
[000aa4ff]                           dc.b $93
[000aa500]                           dc.w $4000
[000aa502]                           dc.b $00
[000aa503]                           dc.b $00
[000aa504]                           dc.b $00
[000aa505]                           dc.b $bb
[000aa506]                           dc.w $4000
[000aa508]                           dc.b $00
[000aa509]                           dc.b $00
[000aa50a]                           dc.b $00
[000aa50b]                           dc.b $93
[000aa50c]                           dc.w $7fff
[000aa50e]                           dc.w $ffff
[000aa510]                           dc.w $ffff
[000aa512]                           dc.w $4155
[000aa514]                           dc.b $00
[000aa515]                           dc.b $aa
[000aa516]                           dc.w $a083
[000aa518]                           dc.w $51ab
[000aa51a]                           dc.b $00
[000aa51b]                           dc.b $d5
[000aa51c]                           dc.w $62bb
[000aa51e]                           dc.w $7d55
[000aa520]                           dc.b $00
[000aa521]                           dc.b $aa
[000aa522]                           dc.w $afb3
[000aa524]                           dc.w $51ab
[000aa526]                           dc.b $00
[000aa527]                           dc.b $d5
[000aa528]                           dc.w $62ab
[000aa52a]                           dc.w $4155
[000aa52c]                           dc.b $00
[000aa52d]                           dc.b $aa
[000aa52e]                           dc.w $a083
[000aa530]                           dc.w $7fff
[000aa532]                           dc.w $ffff
[000aa534]                           dc.w $ffff
[000aa536]                           dc.w $3fff
[000aa538]                           dc.w $ffff
[000aa53a]                           dc.w $ffff
IC_WINDOW:
[000aa53c] 000aa3c8                  dc.l _MSK_IC_WINDOW
[000aa540] 000aa482                  dc.l _DAT_IC_WINDOW
[000aa544] 000a9659                  dc.l TEXT_205
[000aa548]                           dc.w $1000
[000aa54a]                           dc.b $00
[000aa54b]                           dc.b $00
[000aa54c]                           dc.b $00
[000aa54d]                           dc.b $00
[000aa54e]                           dc.b $00
[000aa54f]                           dc.b $0c
[000aa550]                           dc.b $00
[000aa551]                           dc.b $00
[000aa552]                           dc.b $00
[000aa553]                           dc.b $30
[000aa554]                           dc.b $00
[000aa555]                           dc.b $1f
[000aa556]                           dc.b $00
[000aa557]                           dc.b $00
[000aa558]                           dc.b $00
[000aa559]                           dc.b $20
[000aa55a]                           dc.b $00
[000aa55b]                           dc.b $48
[000aa55c]                           dc.b $00
[000aa55d]                           dc.b $08
[000aa55e] 000aa3b2                  dc.l _C4_IC_WINDOW
EDIT_WINDOW:
[000aa562]                           dc.w $ffff
[000aa564]                           dc.b $00
[000aa565]                           dc.b $01
[000aa566]                           dc.b $00
[000aa567]                           dc.b $5c
[000aa568]                           dc.b $00
[000aa569]                           dc.b $18
[000aa56a]                           dc.b $00
[000aa56b]                           dc.b $00
[000aa56c]                           dc.b $00
[000aa56d]                           dc.b $10
[000aa56e] 000a9b12                  dc.l A_3DBUTTON02
[000aa572]                           dc.b $00
[000aa573]                           dc.b $00
[000aa574]                           dc.b $00
[000aa575]                           dc.b $00
[000aa576]                           dc.b $00
[000aa577]                           dc.b $2e
[000aa578]                           dc.b $00
[000aa579]                           dc.b $31
_01_EDIT_WINDOW:
[000aa57a]                           dc.b $00
[000aa57b]                           dc.b $0a
[000aa57c]                           dc.b $00
[000aa57d]                           dc.b $02
[000aa57e]                           dc.b $00
[000aa57f]                           dc.b $09
[000aa580]                           dc.b $00
[000aa581]                           dc.b $18
[000aa582]                           dc.b $00
[000aa583]                           dc.b $00
[000aa584]                           dc.b $00
[000aa585]                           dc.b $00
[000aa586] 000aa292                  dc.l A_INNERFRAME01
[000aa58a]                           dc.b $00
[000aa58b]                           dc.b $01
[000aa58c]                           dc.b $00
[000aa58d]                           dc.b $00
[000aa58e]                           dc.b $00
[000aa58f]                           dc.b $1d
[000aa590]                           dc.b $00
[000aa591]                           dc.b $03
_02_EDIT_WINDOW:
[000aa592]                           dc.b $00
[000aa593]                           dc.b $03
[000aa594]                           dc.w $ffff
[000aa596]                           dc.w $ffff
[000aa598]                           dc.b $00
[000aa599]                           dc.b $1c
[000aa59a]                           dc.b $00
[000aa59b]                           dc.b $00
[000aa59c]                           dc.b $00
[000aa59d]                           dc.b $00
[000aa59e] 000a95b5                  dc.l TEXT_013
[000aa5a2]                           dc.b $00
[000aa5a3]                           dc.b $01
[000aa5a4]                           dc.b $00
[000aa5a5]                           dc.b $01
[000aa5a6]                           dc.b $00
[000aa5a7]                           dc.b $02
[000aa5a8]                           dc.b $00
[000aa5a9]                           dc.b $01
_03_EDIT_WINDOW:
[000aa5aa]                           dc.b $00
[000aa5ab]                           dc.b $04
[000aa5ac]                           dc.w $ffff
[000aa5ae]                           dc.w $ffff
[000aa5b0]                           dc.b $00
[000aa5b1]                           dc.b $18
[000aa5b2]                           dc.b $00
[000aa5b3]                           dc.b $08
[000aa5b4]                           dc.b $00
[000aa5b5]                           dc.b $10
[000aa5b6] 000a9e12                  dc.l A_BOXED02
[000aa5ba]                           dc.b $00
[000aa5bb]                           dc.b $03
[000aa5bc]                           dc.b $00
[000aa5bd]                           dc.b $01
[000aa5be]                           dc.b $00
[000aa5bf]                           dc.b $04
[000aa5c0]                           dc.b $00
[000aa5c1]                           dc.b $01
_04_EDIT_WINDOW:
[000aa5c2]                           dc.b $00
[000aa5c3]                           dc.b $05
[000aa5c4]                           dc.w $ffff
[000aa5c6]                           dc.w $ffff
[000aa5c8]                           dc.b $00
[000aa5c9]                           dc.b $1c
[000aa5ca]                           dc.b $00
[000aa5cb]                           dc.b $00
[000aa5cc]                           dc.b $00
[000aa5cd]                           dc.b $00
[000aa5ce] 000a95b2                  dc.l TEXT_012
[000aa5d2]                           dc.b $00
[000aa5d3]                           dc.b $08
[000aa5d4]                           dc.b $00
[000aa5d5]                           dc.b $01
[000aa5d6]                           dc.b $00
[000aa5d7]                           dc.b $02
[000aa5d8]                           dc.b $00
[000aa5d9]                           dc.b $01
_05_EDIT_WINDOW:
[000aa5da]                           dc.b $00
[000aa5db]                           dc.b $06
[000aa5dc]                           dc.w $ffff
[000aa5de]                           dc.w $ffff
[000aa5e0]                           dc.b $00
[000aa5e1]                           dc.b $18
[000aa5e2]                           dc.b $00
[000aa5e3]                           dc.b $08
[000aa5e4]                           dc.b $00
[000aa5e5]                           dc.b $10
[000aa5e6] 000a9e72                  dc.l A_BOXED05
[000aa5ea]                           dc.b $00
[000aa5eb]                           dc.b $0a
[000aa5ec]                           dc.b $00
[000aa5ed]                           dc.b $01
[000aa5ee]                           dc.b $00
[000aa5ef]                           dc.b $04
[000aa5f0]                           dc.b $00
[000aa5f1]                           dc.b $01
_06_EDIT_WINDOW:
[000aa5f2]                           dc.b $00
[000aa5f3]                           dc.b $07
[000aa5f4]                           dc.w $ffff
[000aa5f6]                           dc.w $ffff
[000aa5f8]                           dc.b $00
[000aa5f9]                           dc.b $1c
[000aa5fa]                           dc.b $00
[000aa5fb]                           dc.b $00
[000aa5fc]                           dc.b $00
[000aa5fd]                           dc.b $00
[000aa5fe] 000a95b8                  dc.l TEXT_014
[000aa602]                           dc.b $00
[000aa603]                           dc.b $0f
[000aa604]                           dc.b $00
[000aa605]                           dc.b $01
[000aa606]                           dc.b $00
[000aa607]                           dc.b $02
[000aa608]                           dc.b $00
[000aa609]                           dc.b $01
_07_EDIT_WINDOW:
[000aa60a]                           dc.b $00
[000aa60b]                           dc.b $08
[000aa60c]                           dc.w $ffff
[000aa60e]                           dc.w $ffff
[000aa610]                           dc.b $00
[000aa611]                           dc.b $18
[000aa612]                           dc.b $00
[000aa613]                           dc.b $08
[000aa614]                           dc.b $00
[000aa615]                           dc.b $10
[000aa616] 000a9e32                  dc.l A_BOXED03
[000aa61a]                           dc.b $00
[000aa61b]                           dc.b $11
[000aa61c]                           dc.b $00
[000aa61d]                           dc.b $01
[000aa61e]                           dc.b $00
[000aa61f]                           dc.b $04
[000aa620]                           dc.b $00
[000aa621]                           dc.b $01
_08_EDIT_WINDOW:
[000aa622]                           dc.b $00
[000aa623]                           dc.b $09
[000aa624]                           dc.w $ffff
[000aa626]                           dc.w $ffff
[000aa628]                           dc.b $00
[000aa629]                           dc.b $1c
[000aa62a]                           dc.b $00
[000aa62b]                           dc.b $00
[000aa62c]                           dc.b $00
[000aa62d]                           dc.b $00
[000aa62e] 000a95bb                  dc.l TEXT_015
[000aa632]                           dc.b $00
[000aa633]                           dc.b $16
[000aa634]                           dc.b $00
[000aa635]                           dc.b $01
[000aa636]                           dc.b $00
[000aa637]                           dc.b $02
[000aa638]                           dc.b $00
[000aa639]                           dc.b $01
_09_EDIT_WINDOW:
[000aa63a]                           dc.b $00
[000aa63b]                           dc.b $01
[000aa63c]                           dc.w $ffff
[000aa63e]                           dc.w $ffff
[000aa640]                           dc.b $00
[000aa641]                           dc.b $18
[000aa642]                           dc.b $00
[000aa643]                           dc.b $08
[000aa644]                           dc.b $00
[000aa645]                           dc.b $10
[000aa646] 000a9f72                  dc.l A_BOXED13
[000aa64a]                           dc.b $00
[000aa64b]                           dc.b $18
[000aa64c]                           dc.b $00
[000aa64d]                           dc.b $01
[000aa64e]                           dc.b $00
[000aa64f]                           dc.b $04
[000aa650]                           dc.b $00
[000aa651]                           dc.b $01
_10_EDIT_WINDOW:
[000aa652]                           dc.b $00
[000aa653]                           dc.b $0c
[000aa654]                           dc.w $ffff
[000aa656]                           dc.w $ffff
[000aa658]                           dc.b $00
[000aa659]                           dc.b $18
[000aa65a]                           dc.w $4007
[000aa65c]                           dc.b $00
[000aa65d]                           dc.b $10
[000aa65e] 000a9b72                  dc.l A_3DBUTTON05
[000aa662]                           dc.b $00
[000aa663]                           dc.b $20
[000aa664]                           dc.b $00
[000aa665]                           dc.b $01
[000aa666]                           dc.b $00
[000aa667]                           dc.b $0c
[000aa668]                           dc.b $00
[000aa669]                           dc.b $02
_10aEDIT_WINDOW:
[000aa66a] 00021dee                  dc.l edwi_ok
[000aa66e]                           dc.b $00
[000aa66f]                           dc.b $00
[000aa670]                           dc.b $00
[000aa671]                           dc.b $00
[000aa672]                           dc.w $8000
[000aa674]                           dc.w $884f
[000aa676]                           dc.b $00
[000aa677]                           dc.b $00
[000aa678]                           dc.b $00
[000aa679]                           dc.b $00
[000aa67a]                           dc.b $00
[000aa67b]                           dc.b $00
[000aa67c]                           dc.b $00
[000aa67d]                           dc.b $00
[000aa67e]                           dc.b $00
[000aa67f]                           dc.b $00
[000aa680]                           dc.b $00
[000aa681]                           dc.b $00
_12_EDIT_WINDOW:
[000aa682]                           dc.b $00
[000aa683]                           dc.b $13
[000aa684]                           dc.b $00
[000aa685]                           dc.b $0d
[000aa686]                           dc.b $00
[000aa687]                           dc.b $11
[000aa688]                           dc.b $00
[000aa689]                           dc.b $18
[000aa68a]                           dc.b $00
[000aa68b]                           dc.b $00
[000aa68c]                           dc.b $00
[000aa68d]                           dc.b $00
[000aa68e] 000aa2d2                  dc.l A_INNERFRAME03
[000aa692]                           dc.b $00
[000aa693]                           dc.b $01
[000aa694]                           dc.b $00
[000aa695]                           dc.b $03
[000aa696]                           dc.b $00
[000aa697]                           dc.b $1d
[000aa698]                           dc.b $00
[000aa699]                           dc.b $03
_13_EDIT_WINDOW:
[000aa69a]                           dc.b $00
[000aa69b]                           dc.b $0e
[000aa69c]                           dc.w $ffff
[000aa69e]                           dc.w $ffff
[000aa6a0]                           dc.b $00
[000aa6a1]                           dc.b $1c
[000aa6a2]                           dc.b $00
[000aa6a3]                           dc.b $00
[000aa6a4]                           dc.b $00
[000aa6a5]                           dc.b $00
[000aa6a6] 000a95b5                  dc.l TEXT_013
[000aa6aa]                           dc.b $00
[000aa6ab]                           dc.b $01
[000aa6ac]                           dc.b $00
[000aa6ad]                           dc.b $01
[000aa6ae]                           dc.b $00
[000aa6af]                           dc.b $02
[000aa6b0]                           dc.b $00
[000aa6b1]                           dc.b $01
_14_EDIT_WINDOW:
[000aa6b2]                           dc.b $00
[000aa6b3]                           dc.b $10
[000aa6b4]                           dc.w $ffff
[000aa6b6]                           dc.w $ffff
[000aa6b8]                           dc.b $00
[000aa6b9]                           dc.b $18
[000aa6ba]                           dc.b $00
[000aa6bb]                           dc.b $40
[000aa6bc]                           dc.b $00
[000aa6bd]                           dc.b $00
[000aa6be] 000aa392                  dc.l A_SLIDER01
[000aa6c2]                           dc.b $00
[000aa6c3]                           dc.b $03
[000aa6c4]                           dc.b $00
[000aa6c5]                           dc.b $01
[000aa6c6]                           dc.b $00
[000aa6c7]                           dc.b $0b
[000aa6c8]                           dc.b $00
[000aa6c9]                           dc.b $01
_14aEDIT_WINDOW:
[000aa6ca] 00035cb6                  dc.l Aus_slider
[000aa6ce]                           dc.b $00
[000aa6cf]                           dc.b $00
[000aa6d0]                           dc.b $00
[000aa6d1]                           dc.b $00
[000aa6d2]                           dc.w $8000
[000aa6d4]                           dc.b $00
[000aa6d5]                           dc.b $00
[000aa6d6]                           dc.b $00
[000aa6d7]                           dc.b $00
[000aa6d8]                           dc.b $00
[000aa6d9]                           dc.b $00
[000aa6da]                           dc.b $00
[000aa6db]                           dc.b $00
[000aa6dc]                           dc.b $00
[000aa6dd]                           dc.b $00
[000aa6de]                           dc.b $00
[000aa6df]                           dc.b $00
[000aa6e0]                           dc.b $00
[000aa6e1]                           dc.b $00
_16_EDIT_WINDOW:
[000aa6e2]                           dc.b $00
[000aa6e3]                           dc.b $11
[000aa6e4]                           dc.w $ffff
[000aa6e6]                           dc.w $ffff
[000aa6e8]                           dc.b $00
[000aa6e9]                           dc.b $1c
[000aa6ea]                           dc.b $00
[000aa6eb]                           dc.b $00
[000aa6ec]                           dc.b $00
[000aa6ed]                           dc.b $00
[000aa6ee] 000a95b2                  dc.l TEXT_012
[000aa6f2]                           dc.b $00
[000aa6f3]                           dc.b $0f
[000aa6f4]                           dc.b $00
[000aa6f5]                           dc.b $01
[000aa6f6]                           dc.b $00
[000aa6f7]                           dc.b $02
[000aa6f8]                           dc.b $00
[000aa6f9]                           dc.b $01
_17_EDIT_WINDOW:
[000aa6fa]                           dc.b $00
[000aa6fb]                           dc.b $0c
[000aa6fc]                           dc.w $ffff
[000aa6fe]                           dc.w $ffff
[000aa700]                           dc.b $00
[000aa701]                           dc.b $18
[000aa702]                           dc.b $00
[000aa703]                           dc.b $40
[000aa704]                           dc.b $00
[000aa705]                           dc.b $00
[000aa706] 000aa392                  dc.l A_SLIDER01
[000aa70a]                           dc.b $00
[000aa70b]                           dc.b $11
[000aa70c]                           dc.b $00
[000aa70d]                           dc.b $01
[000aa70e]                           dc.b $00
[000aa70f]                           dc.b $0b
[000aa710]                           dc.b $00
[000aa711]                           dc.b $01
_17aEDIT_WINDOW:
[000aa712] 00035cb6                  dc.l Aus_slider
[000aa716]                           dc.b $00
[000aa717]                           dc.b $00
[000aa718]                           dc.b $00
[000aa719]                           dc.b $00
[000aa71a]                           dc.w $8000
[000aa71c]                           dc.b $00
[000aa71d]                           dc.b $00
[000aa71e]                           dc.b $00
[000aa71f]                           dc.b $00
[000aa720]                           dc.b $00
[000aa721]                           dc.b $00
[000aa722]                           dc.b $00
[000aa723]                           dc.b $00
[000aa724]                           dc.b $00
[000aa725]                           dc.b $00
[000aa726]                           dc.b $00
[000aa727]                           dc.b $00
[000aa728]                           dc.b $00
[000aa729]                           dc.b $00
_19_EDIT_WINDOW:
[000aa72a]                           dc.b $00
[000aa72b]                           dc.b $15
[000aa72c]                           dc.w $ffff
[000aa72e]                           dc.w $ffff
[000aa730]                           dc.b $00
[000aa731]                           dc.b $18
[000aa732]                           dc.w $4005
[000aa734]                           dc.b $00
[000aa735]                           dc.b $10
[000aa736] 000a9b52                  dc.l A_3DBUTTON04
[000aa73a]                           dc.b $00
[000aa73b]                           dc.b $20
[000aa73c]                           dc.b $00
[000aa73d]                           dc.b $03
[000aa73e]                           dc.b $00
[000aa73f]                           dc.b $0c
[000aa740]                           dc.b $00
[000aa741]                           dc.b $02
_19aEDIT_WINDOW:
[000aa742] 00021e12                  dc.l edwi_abort
[000aa746]                           dc.b $00
[000aa747]                           dc.b $00
[000aa748]                           dc.b $00
[000aa749]                           dc.b $00
[000aa74a]                           dc.w $8000
[000aa74c]                           dc.w $8841
[000aa74e]                           dc.b $00
[000aa74f]                           dc.b $00
[000aa750]                           dc.b $00
[000aa751]                           dc.b $00
[000aa752]                           dc.b $00
[000aa753]                           dc.b $00
[000aa754]                           dc.b $00
[000aa755]                           dc.b $00
[000aa756]                           dc.b $00
[000aa757]                           dc.b $00
[000aa758]                           dc.b $00
[000aa759]                           dc.b $00
_21_EDIT_WINDOW:
[000aa75a]                           dc.b $00
[000aa75b]                           dc.b $29
[000aa75c]                           dc.b $00
[000aa75d]                           dc.b $16
[000aa75e]                           dc.b $00
[000aa75f]                           dc.b $16
[000aa760]                           dc.b $00
[000aa761]                           dc.b $18
[000aa762]                           dc.b $00
[000aa763]                           dc.b $00
[000aa764]                           dc.b $00
[000aa765]                           dc.b $00
[000aa766] 000aa2b2                  dc.l A_INNERFRAME02
[000aa76a]                           dc.b $00
[000aa76b]                           dc.b $01
[000aa76c]                           dc.b $00
[000aa76d]                           dc.b $06
[000aa76e]                           dc.b $00
[000aa76f]                           dc.b $1d
[000aa770]                           dc.b $00
[000aa771]                           dc.b $08
_22_EDIT_WINDOW:
[000aa772]                           dc.b $00
[000aa773]                           dc.b $15
[000aa774]                           dc.b $00
[000aa775]                           dc.b $17
[000aa776]                           dc.b $00
[000aa777]                           dc.b $28
[000aa778]                           dc.b $00
[000aa779]                           dc.b $18
[000aa77a]                           dc.b $00
[000aa77b]                           dc.b $00
[000aa77c]                           dc.b $00
[000aa77d]                           dc.b $00
[000aa77e] 000a9c52                  dc.l A_3DBUTTON12
[000aa782]                           dc.b $00
[000aa783]                           dc.b $02
[000aa784]                           dc.b $00
[000aa785]                           dc.b $01
[000aa786]                           dc.b $00
[000aa787]                           dc.b $19
[000aa788]                           dc.b $00
[000aa789]                           dc.b $06
_23_EDIT_WINDOW:
[000aa78a]                           dc.b $00
[000aa78b]                           dc.b $18
[000aa78c]                           dc.w $ffff
[000aa78e]                           dc.w $ffff
[000aa790]                           dc.b $00
[000aa791]                           dc.b $18
[000aa792]                           dc.b $00
[000aa793]                           dc.b $01
[000aa794]                           dc.b $00
[000aa795]                           dc.b $00
[000aa796] 000a9c12                  dc.l A_3DBUTTON10
[000aa79a]                           dc.b $00
[000aa79b]                           dc.b $00
[000aa79c]                           dc.b $00
[000aa79d]                           dc.b $00
[000aa79e]                           dc.b $00
[000aa79f]                           dc.b $02
[000aa7a0]                           dc.b $00
[000aa7a1]                           dc.b $01
_24_EDIT_WINDOW:
[000aa7a2]                           dc.b $00
[000aa7a3]                           dc.b $19
[000aa7a4]                           dc.w $ffff
[000aa7a6]                           dc.w $ffff
[000aa7a8]                           dc.b $00
[000aa7a9]                           dc.b $18
[000aa7aa]                           dc.b $00
[000aa7ab]                           dc.b $01
[000aa7ac]                           dc.b $00
[000aa7ad]                           dc.b $30
[000aa7ae] 000a9c32                  dc.l A_3DBUTTON11
[000aa7b2]                           dc.b $00
[000aa7b3]                           dc.b $00
[000aa7b4]                           dc.b $00
[000aa7b5]                           dc.b $01
[000aa7b6]                           dc.b $00
[000aa7b7]                           dc.b $17
[000aa7b8]                           dc.b $00
[000aa7b9]                           dc.b $01
_25_EDIT_WINDOW:
[000aa7ba]                           dc.b $00
[000aa7bb]                           dc.b $1a
[000aa7bc]                           dc.w $ffff
[000aa7be]                           dc.w $ffff
[000aa7c0]                           dc.b $00
[000aa7c1]                           dc.b $18
[000aa7c2]                           dc.b $00
[000aa7c3]                           dc.b $00
[000aa7c4]                           dc.b $00
[000aa7c5]                           dc.b $00
[000aa7c6] 000a9d12                  dc.l A_3DBUTTON18
[000aa7ca]                           dc.b $00
[000aa7cb]                           dc.b $00
[000aa7cc]                           dc.b $00
[000aa7cd]                           dc.b $02
[000aa7ce]                           dc.b $00
[000aa7cf]                           dc.b $17
[000aa7d0]                           dc.b $00
[000aa7d1]                           dc.b $03
_26_EDIT_WINDOW:
[000aa7d2]                           dc.b $00
[000aa7d3]                           dc.b $1c
[000aa7d4]                           dc.b $00
[000aa7d5]                           dc.b $1b
[000aa7d6]                           dc.b $00
[000aa7d7]                           dc.b $1b
[000aa7d8]                           dc.b $00
[000aa7d9]                           dc.b $18
[000aa7da]                           dc.b $00
[000aa7db]                           dc.b $00
[000aa7dc]                           dc.b $00
[000aa7dd]                           dc.b $00
[000aa7de] 000a9d72                  dc.l A_3DBUTTON21
[000aa7e2]                           dc.b $00
[000aa7e3]                           dc.b $02
[000aa7e4]                           dc.b $00
[000aa7e5]                           dc.b $05
[000aa7e6]                           dc.b $00
[000aa7e7]                           dc.b $13
[000aa7e8]                           dc.b $00
[000aa7e9]                           dc.b $01
_27_EDIT_WINDOW:
[000aa7ea]                           dc.b $00
[000aa7eb]                           dc.b $1a
[000aa7ec]                           dc.w $ffff
[000aa7ee]                           dc.w $ffff
[000aa7f0]                           dc.b $00
[000aa7f1]                           dc.b $18
[000aa7f2]                           dc.b $00
[000aa7f3]                           dc.b $01
[000aa7f4]                           dc.b $00
[000aa7f5]                           dc.b $00
[000aa7f6] 000a9d92                  dc.l A_3DBUTTON22
[000aa7fa]                           dc.b $00
[000aa7fb]                           dc.b $02
[000aa7fc]                           dc.b $00
[000aa7fd]                           dc.b $00
[000aa7fe]                           dc.b $00
[000aa7ff]                           dc.b $0a
[000aa800]                           dc.b $00
[000aa801]                           dc.b $01
_28_EDIT_WINDOW:
[000aa802]                           dc.b $00
[000aa803]                           dc.b $1d
[000aa804]                           dc.w $ffff
[000aa806]                           dc.w $ffff
[000aa808]                           dc.b $00
[000aa809]                           dc.b $18
[000aa80a]                           dc.b $00
[000aa80b]                           dc.b $01
[000aa80c]                           dc.b $00
[000aa80d]                           dc.b $00
[000aa80e] 000a9cf2                  dc.l A_3DBUTTON17
[000aa812]                           dc.b $00
[000aa813]                           dc.b $00
[000aa814]                           dc.b $00
[000aa815]                           dc.b $05
[000aa816]                           dc.b $00
[000aa817]                           dc.b $02
[000aa818]                           dc.b $00
[000aa819]                           dc.b $01
_29_EDIT_WINDOW:
[000aa81a]                           dc.b $00
[000aa81b]                           dc.b $1e
[000aa81c]                           dc.w $ffff
[000aa81e]                           dc.w $ffff
[000aa820]                           dc.b $00
[000aa821]                           dc.b $18
[000aa822]                           dc.b $00
[000aa823]                           dc.b $01
[000aa824]                           dc.b $00
[000aa825]                           dc.b $00
[000aa826] 000a9cd2                  dc.l A_3DBUTTON16
[000aa82a]                           dc.b $00
[000aa82b]                           dc.b $15
[000aa82c]                           dc.b $00
[000aa82d]                           dc.b $05
[000aa82e]                           dc.b $00
[000aa82f]                           dc.b $02
[000aa830]                           dc.b $00
[000aa831]                           dc.b $01
_30_EDIT_WINDOW:
[000aa832]                           dc.b $00
[000aa833]                           dc.b $1f
[000aa834]                           dc.w $ffff
[000aa836]                           dc.w $ffff
[000aa838]                           dc.b $00
[000aa839]                           dc.b $18
[000aa83a]                           dc.b $00
[000aa83b]                           dc.b $01
[000aa83c]                           dc.b $00
[000aa83d]                           dc.b $00
[000aa83e] 000a9cb2                  dc.l A_3DBUTTON15
[000aa842]                           dc.b $00
[000aa843]                           dc.b $17
[000aa844]                           dc.b $00
[000aa845]                           dc.b $05
[000aa846]                           dc.b $00
[000aa847]                           dc.b $02
[000aa848]                           dc.b $00
[000aa849]                           dc.b $01
_31_EDIT_WINDOW:
[000aa84a]                           dc.b $00
[000aa84b]                           dc.b $20
[000aa84c]                           dc.w $ffff
[000aa84e]                           dc.w $ffff
[000aa850]                           dc.b $00
[000aa851]                           dc.b $18
[000aa852]                           dc.b $00
[000aa853]                           dc.b $01
[000aa854]                           dc.b $00
[000aa855]                           dc.b $00
[000aa856] 000a9c92                  dc.l A_3DBUTTON14
[000aa85a]                           dc.b $00
[000aa85b]                           dc.b $17
[000aa85c]                           dc.b $00
[000aa85d]                           dc.b $04
[000aa85e]                           dc.b $00
[000aa85f]                           dc.b $02
[000aa860]                           dc.b $00
[000aa861]                           dc.b $01
_32_EDIT_WINDOW:
[000aa862]                           dc.b $00
[000aa863]                           dc.b $22
[000aa864]                           dc.b $00
[000aa865]                           dc.b $21
[000aa866]                           dc.b $00
[000aa867]                           dc.b $21
[000aa868]                           dc.b $00
[000aa869]                           dc.b $18
[000aa86a]                           dc.b $00
[000aa86b]                           dc.b $00
[000aa86c]                           dc.b $00
[000aa86d]                           dc.b $00
[000aa86e] 000a9d52                  dc.l A_3DBUTTON20
[000aa872]                           dc.b $00
[000aa873]                           dc.b $17
[000aa874]                           dc.b $00
[000aa875]                           dc.b $02
[000aa876]                           dc.b $00
[000aa877]                           dc.b $02
[000aa878]                           dc.b $00
[000aa879]                           dc.b $02
_33_EDIT_WINDOW:
[000aa87a]                           dc.b $00
[000aa87b]                           dc.b $20
[000aa87c]                           dc.w $ffff
[000aa87e]                           dc.w $ffff
[000aa880]                           dc.b $00
[000aa881]                           dc.b $18
[000aa882]                           dc.b $00
[000aa883]                           dc.b $01
[000aa884]                           dc.b $00
[000aa885]                           dc.b $00
[000aa886] 000a9d32                  dc.l A_3DBUTTON19
[000aa88a]                           dc.b $00
[000aa88b]                           dc.b $00
[000aa88c]                           dc.b $00
[000aa88d]                           dc.b $01
[000aa88e]                           dc.b $00
[000aa88f]                           dc.b $02
[000aa890]                           dc.b $00
[000aa891]                           dc.b $01
_34_EDIT_WINDOW:
[000aa892]                           dc.b $00
[000aa893]                           dc.b $23
[000aa894]                           dc.w $ffff
[000aa896]                           dc.w $ffff
[000aa898]                           dc.b $00
[000aa899]                           dc.b $18
[000aa89a]                           dc.b $00
[000aa89b]                           dc.b $01
[000aa89c]                           dc.b $00
[000aa89d]                           dc.b $00
[000aa89e] 000a9c72                  dc.l A_3DBUTTON13
[000aa8a2]                           dc.b $00
[000aa8a3]                           dc.b $17
[000aa8a4]                           dc.b $00
[000aa8a5]                           dc.b $01
[000aa8a6]                           dc.b $00
[000aa8a7]                           dc.b $02
[000aa8a8]                           dc.b $00
[000aa8a9]                           dc.b $01
_35_EDIT_WINDOW:
[000aa8aa]                           dc.b $00
[000aa8ab]                           dc.b $24
[000aa8ac]                           dc.w $ffff
[000aa8ae]                           dc.w $ffff
[000aa8b0]                           dc.b $00
[000aa8b1]                           dc.b $18
[000aa8b2]                           dc.b $00
[000aa8b3]                           dc.b $01
[000aa8b4]                           dc.b $00
[000aa8b5]                           dc.b $00
[000aa8b6] 000a9b32                  dc.l A_3DBUTTON03
[000aa8ba]                           dc.b $00
[000aa8bb]                           dc.b $17
[000aa8bc]                           dc.b $00
[000aa8bd]                           dc.b $00
[000aa8be]                           dc.b $00
[000aa8bf]                           dc.b $02
[000aa8c0]                           dc.b $00
[000aa8c1]                           dc.b $01
_36_EDIT_WINDOW:
[000aa8c2]                           dc.b $00
[000aa8c3]                           dc.b $25
[000aa8c4]                           dc.w $ffff
[000aa8c6]                           dc.w $ffff
[000aa8c8]                           dc.b $00
[000aa8c9]                           dc.b $18
[000aa8ca]                           dc.b $00
[000aa8cb]                           dc.b $01
[000aa8cc]                           dc.b $00
[000aa8cd]                           dc.b $00
[000aa8ce] 000a9b92                  dc.l A_3DBUTTON06
[000aa8d2]                           dc.b $00
[000aa8d3]                           dc.b $15
[000aa8d4]                           dc.b $00
[000aa8d5]                           dc.b $00
[000aa8d6]                           dc.b $00
[000aa8d7]                           dc.b $02
[000aa8d8]                           dc.b $00
[000aa8d9]                           dc.b $01
_37_EDIT_WINDOW:
[000aa8da]                           dc.b $00
[000aa8db]                           dc.b $26
[000aa8dc]                           dc.w $ffff
[000aa8de]                           dc.w $ffff
[000aa8e0]                           dc.b $00
[000aa8e1]                           dc.b $18
[000aa8e2]                           dc.b $00
[000aa8e3]                           dc.b $01
[000aa8e4]                           dc.b $00
[000aa8e5]                           dc.b $00
[000aa8e6] 000a9bb2                  dc.l A_3DBUTTON07
[000aa8ea]                           dc.b $00
[000aa8eb]                           dc.b $13
[000aa8ec]                           dc.b $00
[000aa8ed]                           dc.b $00
[000aa8ee]                           dc.b $00
[000aa8ef]                           dc.b $02
[000aa8f0]                           dc.b $00
[000aa8f1]                           dc.b $01
_38_EDIT_WINDOW:
[000aa8f2]                           dc.b $00
[000aa8f3]                           dc.b $27
[000aa8f4]                           dc.w $ffff
[000aa8f6]                           dc.w $ffff
[000aa8f8]                           dc.b $00
[000aa8f9]                           dc.b $18
[000aa8fa]                           dc.b $00
[000aa8fb]                           dc.b $01
[000aa8fc]                           dc.b $00
[000aa8fd]                           dc.b $00
[000aa8fe] 000a9bd2                  dc.l A_3DBUTTON08
[000aa902]                           dc.b $00
[000aa903]                           dc.b $0c
[000aa904]                           dc.b $00
[000aa905]                           dc.b $00
[000aa906]                           dc.b $00
[000aa907]                           dc.b $07
[000aa908]                           dc.b $00
[000aa909]                           dc.b $01
_39_EDIT_WINDOW:
[000aa90a]                           dc.b $00
[000aa90b]                           dc.b $28
[000aa90c]                           dc.w $ffff
[000aa90e]                           dc.w $ffff
[000aa910]                           dc.b $00
[000aa911]                           dc.b $18
[000aa912]                           dc.b $00
[000aa913]                           dc.b $01
[000aa914]                           dc.b $00
[000aa915]                           dc.b $00
[000aa916] 000a9bf2                  dc.l A_3DBUTTON09
[000aa91a]                           dc.b $00
[000aa91b]                           dc.b $04
[000aa91c]                           dc.b $00
[000aa91d]                           dc.b $00
[000aa91e]                           dc.b $00
[000aa91f]                           dc.b $08
[000aa920]                           dc.b $00
[000aa921]                           dc.b $01
_40_EDIT_WINDOW:
[000aa922]                           dc.b $00
[000aa923]                           dc.b $16
[000aa924]                           dc.w $ffff
[000aa926]                           dc.w $ffff
[000aa928]                           dc.b $00
[000aa929]                           dc.b $18
[000aa92a]                           dc.b $00
[000aa92b]                           dc.b $01
[000aa92c]                           dc.b $00
[000aa92d]                           dc.b $00
[000aa92e] 000a9dd2                  dc.l A_3DBUTTON24
[000aa932]                           dc.b $00
[000aa933]                           dc.b $02
[000aa934]                           dc.b $00
[000aa935]                           dc.b $00
[000aa936]                           dc.b $00
[000aa937]                           dc.b $02
[000aa938]                           dc.b $00
[000aa939]                           dc.b $01
_41_EDIT_WINDOW:
[000aa93a]                           dc.b $00
[000aa93b]                           dc.b $36
[000aa93c]                           dc.b $00
[000aa93d]                           dc.b $2a
[000aa93e]                           dc.b $00
[000aa93f]                           dc.b $34
[000aa940]                           dc.b $00
[000aa941]                           dc.b $18
[000aa942]                           dc.b $00
[000aa943]                           dc.b $00
[000aa944]                           dc.b $00
[000aa945]                           dc.b $00
[000aa946] 000aa372                  dc.l A_INNERFRAME08
[000aa94a]                           dc.b $00
[000aa94b]                           dc.b $1e
[000aa94c]                           dc.b $00
[000aa94d]                           dc.b $06
[000aa94e]                           dc.b $00
[000aa94f]                           dc.b $0f
[000aa950]                           dc.b $00
[000aa951]                           dc.b $08
_42_EDIT_WINDOW:
[000aa952]                           dc.b $00
[000aa953]                           dc.b $2c
[000aa954]                           dc.w $ffff
[000aa956]                           dc.w $ffff
[000aa958]                           dc.b $00
[000aa959]                           dc.b $18
[000aa95a]                           dc.b $00
[000aa95b]                           dc.b $01
[000aa95c]                           dc.b $00
[000aa95d]                           dc.b $01
[000aa95e] 000aa272                  dc.l A_CHECKBOX07
[000aa962]                           dc.b $00
[000aa963]                           dc.b $01
[000aa964]                           dc.b $00
[000aa965]                           dc.b $01
[000aa966]                           dc.b $00
[000aa967]                           dc.b $08
[000aa968]                           dc.b $00
[000aa969]                           dc.b $01
_42aEDIT_WINDOW:
[000aa96a]                           dc.b $00
[000aa96b]                           dc.b $00
[000aa96c]                           dc.b $00
[000aa96d]                           dc.b $00
[000aa96e]                           dc.b $00
[000aa96f]                           dc.b $00
[000aa970]                           dc.b $00
[000aa971]                           dc.b $00
[000aa972]                           dc.w $8000
[000aa974]                           dc.w $884c
[000aa976]                           dc.b $00
[000aa977]                           dc.b $00
[000aa978]                           dc.b $00
[000aa979]                           dc.b $00
[000aa97a]                           dc.b $00
[000aa97b]                           dc.b $00
[000aa97c]                           dc.b $00
[000aa97d]                           dc.b $00
[000aa97e]                           dc.b $00
[000aa97f]                           dc.b $00
[000aa980]                           dc.b $00
[000aa981]                           dc.b $00
_44_EDIT_WINDOW:
[000aa982]                           dc.b $00
[000aa983]                           dc.b $2e
[000aa984]                           dc.w $ffff
[000aa986]                           dc.w $ffff
[000aa988]                           dc.b $00
[000aa989]                           dc.b $18
[000aa98a]                           dc.b $00
[000aa98b]                           dc.b $01
[000aa98c]                           dc.b $00
[000aa98d]                           dc.b $01
[000aa98e] 000aa1d2                  dc.l A_CHECKBOX01
[000aa992]                           dc.b $00
[000aa993]                           dc.b $01
[000aa994]                           dc.b $00
[000aa995]                           dc.b $02
[000aa996]                           dc.b $00
[000aa997]                           dc.b $09
[000aa998]                           dc.b $00
[000aa999]                           dc.b $01
_44aEDIT_WINDOW:
[000aa99a]                           dc.b $00
[000aa99b]                           dc.b $00
[000aa99c]                           dc.b $00
[000aa99d]                           dc.b $00
[000aa99e]                           dc.b $00
[000aa99f]                           dc.b $00
[000aa9a0]                           dc.b $00
[000aa9a1]                           dc.b $00
[000aa9a2]                           dc.w $8000
[000aa9a4]                           dc.w $8842
[000aa9a6]                           dc.b $00
[000aa9a7]                           dc.b $00
[000aa9a8]                           dc.b $00
[000aa9a9]                           dc.b $00
[000aa9aa]                           dc.b $00
[000aa9ab]                           dc.b $00
[000aa9ac]                           dc.b $00
[000aa9ad]                           dc.b $00
[000aa9ae]                           dc.b $00
[000aa9af]                           dc.b $00
[000aa9b0]                           dc.b $00
[000aa9b1]                           dc.b $00
_46_EDIT_WINDOW:
[000aa9b2]                           dc.b $00
[000aa9b3]                           dc.b $30
[000aa9b4]                           dc.w $ffff
[000aa9b6]                           dc.w $ffff
[000aa9b8]                           dc.b $00
[000aa9b9]                           dc.b $18
[000aa9ba]                           dc.b $00
[000aa9bb]                           dc.b $01
[000aa9bc]                           dc.b $00
[000aa9bd]                           dc.b $01
[000aa9be] 000aa1f2                  dc.l A_CHECKBOX02
[000aa9c2]                           dc.b $00
[000aa9c3]                           dc.b $01
[000aa9c4]                           dc.b $00
[000aa9c5]                           dc.b $03
[000aa9c6]                           dc.b $00
[000aa9c7]                           dc.b $07
[000aa9c8]                           dc.b $00
[000aa9c9]                           dc.b $01
_46aEDIT_WINDOW:
[000aa9ca]                           dc.b $00
[000aa9cb]                           dc.b $00
[000aa9cc]                           dc.b $00
[000aa9cd]                           dc.b $00
[000aa9ce]                           dc.b $00
[000aa9cf]                           dc.b $00
[000aa9d0]                           dc.b $00
[000aa9d1]                           dc.b $00
[000aa9d2]                           dc.w $8000
[000aa9d4]                           dc.w $8849
[000aa9d6]                           dc.b $00
[000aa9d7]                           dc.b $00
[000aa9d8]                           dc.b $00
[000aa9d9]                           dc.b $00
[000aa9da]                           dc.b $00
[000aa9db]                           dc.b $00
[000aa9dc]                           dc.b $00
[000aa9dd]                           dc.b $00
[000aa9de]                           dc.b $00
[000aa9df]                           dc.b $00
[000aa9e0]                           dc.b $00
[000aa9e1]                           dc.b $00
_48_EDIT_WINDOW:
[000aa9e2]                           dc.b $00
[000aa9e3]                           dc.b $32
[000aa9e4]                           dc.w $ffff
[000aa9e6]                           dc.w $ffff
[000aa9e8]                           dc.b $00
[000aa9e9]                           dc.b $18
[000aa9ea]                           dc.b $00
[000aa9eb]                           dc.b $01
[000aa9ec]                           dc.b $00
[000aa9ed]                           dc.b $01
[000aa9ee] 000aa212                  dc.l A_CHECKBOX03
[000aa9f2]                           dc.b $00
[000aa9f3]                           dc.b $01
[000aa9f4]                           dc.b $00
[000aa9f5]                           dc.b $04
[000aa9f6]                           dc.b $00
[000aa9f7]                           dc.b $0c
[000aa9f8]                           dc.b $00
[000aa9f9]                           dc.b $01
_48aEDIT_WINDOW:
[000aa9fa]                           dc.b $00
[000aa9fb]                           dc.b $00
[000aa9fc]                           dc.b $00
[000aa9fd]                           dc.b $00
[000aa9fe]                           dc.b $00
[000aa9ff]                           dc.b $00
[000aaa00]                           dc.b $00
[000aaa01]                           dc.b $00
[000aaa02]                           dc.w $8000
[000aaa04]                           dc.w $8847
[000aaa06]                           dc.b $00
[000aaa07]                           dc.b $00
[000aaa08]                           dc.b $00
[000aaa09]                           dc.b $00
[000aaa0a]                           dc.b $00
[000aaa0b]                           dc.b $00
[000aaa0c]                           dc.b $00
[000aaa0d]                           dc.b $00
[000aaa0e]                           dc.b $00
[000aaa0f]                           dc.b $00
[000aaa10]                           dc.b $00
[000aaa11]                           dc.b $00
_50_EDIT_WINDOW:
[000aaa12]                           dc.b $00
[000aaa13]                           dc.b $34
[000aaa14]                           dc.w $ffff
[000aaa16]                           dc.w $ffff
[000aaa18]                           dc.b $00
[000aaa19]                           dc.b $18
[000aaa1a]                           dc.b $00
[000aaa1b]                           dc.b $01
[000aaa1c]                           dc.b $00
[000aaa1d]                           dc.b $01
[000aaa1e] 000aa232                  dc.l A_CHECKBOX04
[000aaa22]                           dc.b $00
[000aaa23]                           dc.b $01
[000aaa24]                           dc.b $00
[000aaa25]                           dc.b $05
[000aaa26]                           dc.b $00
[000aaa27]                           dc.b $0c
[000aaa28]                           dc.b $00
[000aaa29]                           dc.b $01
_50aEDIT_WINDOW:
[000aaa2a]                           dc.b $00
[000aaa2b]                           dc.b $00
[000aaa2c]                           dc.b $00
[000aaa2d]                           dc.b $00
[000aaa2e]                           dc.b $00
[000aaa2f]                           dc.b $00
[000aaa30]                           dc.b $00
[000aaa31]                           dc.b $00
[000aaa32]                           dc.w $8000
[000aaa34]                           dc.w $884e
[000aaa36]                           dc.b $00
[000aaa37]                           dc.b $00
[000aaa38]                           dc.b $00
[000aaa39]                           dc.b $00
[000aaa3a]                           dc.b $00
[000aaa3b]                           dc.b $00
[000aaa3c]                           dc.b $00
[000aaa3d]                           dc.b $00
[000aaa3e]                           dc.b $00
[000aaa3f]                           dc.b $00
[000aaa40]                           dc.b $00
[000aaa41]                           dc.b $00
_52_EDIT_WINDOW:
[000aaa42]                           dc.b $00
[000aaa43]                           dc.b $29
[000aaa44]                           dc.w $ffff
[000aaa46]                           dc.w $ffff
[000aaa48]                           dc.b $00
[000aaa49]                           dc.b $18
[000aaa4a]                           dc.b $00
[000aaa4b]                           dc.b $01
[000aaa4c]                           dc.b $00
[000aaa4d]                           dc.b $01
[000aaa4e] 000aa252                  dc.l A_CHECKBOX05
[000aaa52]                           dc.b $00
[000aaa53]                           dc.b $01
[000aaa54]                           dc.b $00
[000aaa55]                           dc.b $06
[000aaa56]                           dc.b $00
[000aaa57]                           dc.b $0d
[000aaa58]                           dc.b $00
[000aaa59]                           dc.b $01
_52aEDIT_WINDOW:
[000aaa5a]                           dc.b $00
[000aaa5b]                           dc.b $00
[000aaa5c]                           dc.b $00
[000aaa5d]                           dc.b $00
[000aaa5e]                           dc.b $00
[000aaa5f]                           dc.b $00
[000aaa60]                           dc.b $00
[000aaa61]                           dc.b $00
[000aaa62]                           dc.w $8000
[000aaa64]                           dc.w $8854
[000aaa66]                           dc.b $00
[000aaa67]                           dc.b $00
[000aaa68]                           dc.b $00
[000aaa69]                           dc.b $00
[000aaa6a]                           dc.b $00
[000aaa6b]                           dc.b $00
[000aaa6c]                           dc.b $00
[000aaa6d]                           dc.b $00
[000aaa6e]                           dc.b $00
[000aaa6f]                           dc.b $00
[000aaa70]                           dc.b $00
[000aaa71]                           dc.b $00
_54_EDIT_WINDOW:
[000aaa72]                           dc.b $00
[000aaa73]                           dc.b $3d
[000aaa74]                           dc.b $00
[000aaa75]                           dc.b $37
[000aaa76]                           dc.b $00
[000aaa77]                           dc.b $3c
[000aaa78]                           dc.b $00
[000aaa79]                           dc.b $18
[000aaa7a]                           dc.b $00
[000aaa7b]                           dc.b $00
[000aaa7c]                           dc.b $00
[000aaa7d]                           dc.b $00
[000aaa7e] 000aa312                  dc.l A_INNERFRAME05
[000aaa82]                           dc.b $00
[000aaa83]                           dc.b $01
[000aaa84]                           dc.b $00
[000aaa85]                           dc.b $0e
[000aaa86]                           dc.b $00
[000aaa87]                           dc.b $2c
[000aaa88]                           dc.b $00
[000aaa89]                           dc.b $04
_55_EDIT_WINDOW:
[000aaa8a]                           dc.b $00
[000aaa8b]                           dc.b $38
[000aaa8c]                           dc.w $ffff
[000aaa8e]                           dc.w $ffff
[000aaa90]                           dc.b $00
[000aaa91]                           dc.b $1c
[000aaa92]                           dc.b $00
[000aaa93]                           dc.b $00
[000aaa94]                           dc.b $00
[000aaa95]                           dc.b $00
[000aaa96] 000a960f                  dc.l TEXT_12
[000aaa9a]                           dc.b $00
[000aaa9b]                           dc.b $01
[000aaa9c]                           dc.b $00
[000aaa9d]                           dc.b $01
[000aaa9e]                           dc.b $00
[000aaa9f]                           dc.b $05
[000aaaa0]                           dc.b $00
[000aaaa1]                           dc.b $01
_56_EDIT_WINDOW:
[000aaaa2]                           dc.b $00
[000aaaa3]                           dc.b $3c
[000aaaa4]                           dc.b $00
[000aaaa5]                           dc.b $39
[000aaaa6]                           dc.b $00
[000aaaa7]                           dc.b $39
[000aaaa8]                           dc.b $00
[000aaaa9]                           dc.b $18
[000aaaaa]                           dc.b $00
[000aaaab]                           dc.b $40
[000aaaac]                           dc.b $00
[000aaaad]                           dc.b $00
[000aaaae] 000a9af2                  dc.l A_3DBUTTON01
[000aaab2]                           dc.b $00
[000aaab3]                           dc.b $0a
[000aaab4]                           dc.b $00
[000aaab5]                           dc.b $01
[000aaab6]                           dc.b $00
[000aaab7]                           dc.b $20
[000aaab8]                           dc.b $00
[000aaab9]                           dc.b $02
_57_EDIT_WINDOW:
[000aaaba]                           dc.b $00
[000aaabb]                           dc.b $38
[000aaabc]                           dc.b $00
[000aaabd]                           dc.b $3a
[000aaabe]                           dc.b $00
[000aaabf]                           dc.b $3b
[000aaac0]                           dc.b $00
[000aaac1]                           dc.b $14
[000aaac2]                           dc.b $00
[000aaac3]                           dc.b $40
[000aaac4]                           dc.b $00
[000aaac5]                           dc.b $00
[000aaac6]                           dc.b $00
[000aaac7]                           dc.b $ff
[000aaac8]                           dc.w $0101
[000aaaca]                           dc.b $00
[000aaacb]                           dc.b $00
[000aaacc]                           dc.b $00
[000aaacd]                           dc.b $00
[000aaace]                           dc.b $00
[000aaacf]                           dc.b $20
[000aaad0]                           dc.b $00
[000aaad1]                           dc.b $02
_58_EDIT_WINDOW:
[000aaad2]                           dc.b $00
[000aaad3]                           dc.b $3b
[000aaad4]                           dc.w $ffff
[000aaad6]                           dc.w $ffff
[000aaad8]                           dc.b $00
[000aaad9]                           dc.b $18
[000aaada]                           dc.b $00
[000aaadb]                           dc.b $08
[000aaadc]                           dc.b $00
[000aaadd]                           dc.b $00
[000aaade] 000a9e92                  dc.l A_BOXED06
[000aaae2]                           dc.b $00
[000aaae3]                           dc.b $00
[000aaae4]                           dc.b $00
[000aaae5]                           dc.b $00
[000aaae6]                           dc.b $00
[000aaae7]                           dc.b $20
[000aaae8]                           dc.b $00
[000aaae9]                           dc.b $01
_59_EDIT_WINDOW:
[000aaaea]                           dc.b $00
[000aaaeb]                           dc.b $39
[000aaaec]                           dc.w $ffff
[000aaaee]                           dc.w $ffff
[000aaaf0]                           dc.b $00
[000aaaf1]                           dc.b $18
[000aaaf2]                           dc.b $00
[000aaaf3]                           dc.b $08
[000aaaf4]                           dc.b $00
[000aaaf5]                           dc.b $00
[000aaaf6] 000a9eb2                  dc.l A_BOXED07
[000aaafa]                           dc.b $00
[000aaafb]                           dc.b $00
[000aaafc]                           dc.b $00
[000aaafd]                           dc.b $01
[000aaafe]                           dc.b $00
[000aaaff]                           dc.b $20
[000aab00]                           dc.b $00
[000aab01]                           dc.b $01
_60_EDIT_WINDOW:
[000aab02]                           dc.b $00
[000aab03]                           dc.b $36
[000aab04]                           dc.w $ffff
[000aab06]                           dc.w $ffff
[000aab08]                           dc.b $00
[000aab09]                           dc.b $1c
[000aab0a]                           dc.b $00
[000aab0b]                           dc.b $00
[000aab0c]                           dc.b $00
[000aab0d]                           dc.b $00
[000aab0e] 000a9644                  dc.l TEXT_18
[000aab12]                           dc.b $00
[000aab13]                           dc.b $01
[000aab14]                           dc.b $00
[000aab15]                           dc.b $02
[000aab16]                           dc.b $00
[000aab17]                           dc.b $05
[000aab18]                           dc.b $00
[000aab19]                           dc.b $01
_61_EDIT_WINDOW:
[000aab1a]                           dc.b $00
[000aab1b]                           dc.b $45
[000aab1c]                           dc.b $00
[000aab1d]                           dc.b $3e
[000aab1e]                           dc.b $00
[000aab1f]                           dc.b $40
[000aab20]                           dc.b $00
[000aab21]                           dc.b $18
[000aab22]                           dc.b $00
[000aab23]                           dc.b $40
[000aab24]                           dc.b $00
[000aab25]                           dc.b $00
[000aab26] 000aa332                  dc.l A_INNERFRAME06
[000aab2a]                           dc.b $00
[000aab2b]                           dc.b $01
[000aab2c]                           dc.b $00
[000aab2d]                           dc.b $12
[000aab2e]                           dc.b $00
[000aab2f]                           dc.b $2c
[000aab30]                           dc.b $00
[000aab31]                           dc.b $04
_62_EDIT_WINDOW:
[000aab32]                           dc.b $00
[000aab33]                           dc.b $3f
[000aab34]                           dc.w $ffff
[000aab36]                           dc.w $ffff
[000aab38]                           dc.b $00
[000aab39]                           dc.b $1c
[000aab3a]                           dc.b $00
[000aab3b]                           dc.b $00
[000aab3c]                           dc.b $00
[000aab3d]                           dc.b $00
[000aab3e] 000a972a                  dc.l TEXT_53
[000aab42]                           dc.b $00
[000aab43]                           dc.b $01
[000aab44]                           dc.b $00
[000aab45]                           dc.b $01
[000aab46]                           dc.b $00
[000aab47]                           dc.b $06
[000aab48]                           dc.b $00
[000aab49]                           dc.b $01
_63_EDIT_WINDOW:
[000aab4a]                           dc.b $00
[000aab4b]                           dc.b $40
[000aab4c]                           dc.w $ffff
[000aab4e]                           dc.w $ffff
[000aab50]                           dc.b $00
[000aab51]                           dc.b $1c
[000aab52]                           dc.b $00
[000aab53]                           dc.b $00
[000aab54]                           dc.b $00
[000aab55]                           dc.b $00
[000aab56] 000a9731                  dc.l TEXT_54
[000aab5a]                           dc.b $00
[000aab5b]                           dc.b $01
[000aab5c]                           dc.b $00
[000aab5d]                           dc.b $02
[000aab5e]                           dc.b $00
[000aab5f]                           dc.b $06
[000aab60]                           dc.b $00
[000aab61]                           dc.b $01
_64_EDIT_WINDOW:
[000aab62]                           dc.b $00
[000aab63]                           dc.b $3d
[000aab64]                           dc.b $00
[000aab65]                           dc.b $41
[000aab66]                           dc.b $00
[000aab67]                           dc.b $41
[000aab68]                           dc.b $00
[000aab69]                           dc.b $18
[000aab6a]                           dc.b $00
[000aab6b]                           dc.b $00
[000aab6c]                           dc.b $00
[000aab6d]                           dc.b $00
[000aab6e] 000a9db2                  dc.l A_3DBUTTON23
[000aab72]                           dc.b $00
[000aab73]                           dc.b $0a
[000aab74]                           dc.b $00
[000aab75]                           dc.b $01
[000aab76]                           dc.b $00
[000aab77]                           dc.b $20
[000aab78]                           dc.b $00
[000aab79]                           dc.b $02
_65_EDIT_WINDOW:
[000aab7a]                           dc.b $00
[000aab7b]                           dc.b $40
[000aab7c]                           dc.b $00
[000aab7d]                           dc.b $42
[000aab7e]                           dc.b $00
[000aab7f]                           dc.b $44
[000aab80]                           dc.b $00
[000aab81]                           dc.b $14
[000aab82]                           dc.b $00
[000aab83]                           dc.b $00
[000aab84]                           dc.b $00
[000aab85]                           dc.b $00
[000aab86]                           dc.b $00
[000aab87]                           dc.b $00
[000aab88]                           dc.w $1101
[000aab8a]                           dc.b $00
[000aab8b]                           dc.b $00
[000aab8c]                           dc.b $00
[000aab8d]                           dc.b $00
[000aab8e]                           dc.b $00
[000aab8f]                           dc.b $20
[000aab90]                           dc.b $00
[000aab91]                           dc.b $02
_66_EDIT_WINDOW:
[000aab92]                           dc.b $00
[000aab93]                           dc.b $43
[000aab94]                           dc.w $ffff
[000aab96]                           dc.w $ffff
[000aab98]                           dc.b $00
[000aab99]                           dc.b $18
[000aab9a]                           dc.b $00
[000aab9b]                           dc.b $08
[000aab9c]                           dc.b $00
[000aab9d]                           dc.b $00
[000aab9e] 000a9df2                  dc.l A_BOXED01
[000aaba2]                           dc.b $00
[000aaba3]                           dc.b $00
[000aaba4]                           dc.b $00
[000aaba5]                           dc.b $00
[000aaba6]                           dc.b $00
[000aaba7]                           dc.b $20
[000aaba8]                           dc.b $00
[000aaba9]                           dc.b $01
_67_EDIT_WINDOW:
[000aabaa]                           dc.b $00
[000aabab]                           dc.b $44
[000aabac]                           dc.w $ffff
[000aabae]                           dc.w $ffff
[000aabb0]                           dc.b $00
[000aabb1]                           dc.b $18
[000aabb2]                           dc.b $00
[000aabb3]                           dc.b $08
[000aabb4]                           dc.b $00
[000aabb5]                           dc.b $00
[000aabb6] 000a9e52                  dc.l A_BOXED04
[000aabba]                           dc.b $00
[000aabbb]                           dc.b $00
[000aabbc]                           dc.b $00
[000aabbd]                           dc.b $01
[000aabbe]                           dc.b $00
[000aabbf]                           dc.b $08
[000aabc0]                           dc.b $00
[000aabc1]                           dc.b $01
_68_EDIT_WINDOW:
[000aabc2]                           dc.b $00
[000aabc3]                           dc.b $41
[000aabc4]                           dc.w $ffff
[000aabc6]                           dc.w $ffff
[000aabc8]                           dc.b $00
[000aabc9]                           dc.b $1c
[000aabca]                           dc.b $00
[000aabcb]                           dc.b $00
[000aabcc]                           dc.b $00
[000aabcd]                           dc.b $00
[000aabce] 000a9713                  dc.l TEXT_50
[000aabd2]                           dc.b $00
[000aabd3]                           dc.b $08
[000aabd4]                           dc.b $00
[000aabd5]                           dc.b $01
[000aabd6]                           dc.b $00
[000aabd7]                           dc.b $04
[000aabd8]                           dc.b $00
[000aabd9]                           dc.b $01
_69_EDIT_WINDOW:
[000aabda]                           dc.b $00
[000aabdb]                           dc.b $5c
[000aabdc]                           dc.b $00
[000aabdd]                           dc.b $46
[000aabde]                           dc.b $00
[000aabdf]                           dc.b $5a
[000aabe0]                           dc.b $00
[000aabe1]                           dc.b $18
[000aabe2]                           dc.b $00
[000aabe3]                           dc.b $00
[000aabe4]                           dc.b $00
[000aabe5]                           dc.b $00
[000aabe6] 000aa2f2                  dc.l A_INNERFRAME04
[000aabea]                           dc.b $00
[000aabeb]                           dc.b $01
[000aabec]                           dc.b $00
[000aabed]                           dc.b $16
[000aabee]                           dc.b $00
[000aabef]                           dc.b $2c
[000aabf0]                           dc.b $00
[000aabf1]                           dc.b $07
_70_EDIT_WINDOW:
[000aabf2]                           dc.b $00
[000aabf3]                           dc.b $48
[000aabf4]                           dc.w $ffff
[000aabf6]                           dc.w $ffff
[000aabf8]                           dc.b $00
[000aabf9]                           dc.b $1c
[000aabfa]                           dc.b $00
[000aabfb]                           dc.b $05
[000aabfc]                           dc.b $00
[000aabfd]                           dc.b $00
[000aabfe] 000a9615                  dc.l TEXT_13
[000aac02]                           dc.b $00
[000aac03]                           dc.b $01
[000aac04]                           dc.b $00
[000aac05]                           dc.b $01
[000aac06]                           dc.b $00
[000aac07]                           dc.b $05
[000aac08]                           dc.b $00
[000aac09]                           dc.b $01
_70aEDIT_WINDOW:
[000aac0a] 00021cfe                  dc.l edwi_tme
[000aac0e]                           dc.b $00
[000aac0f]                           dc.b $00
[000aac10]                           dc.b $00
[000aac11]                           dc.b $00
[000aac12]                           dc.w $8000
[000aac14]                           dc.b $00
[000aac15]                           dc.b $00
[000aac16]                           dc.b $00
[000aac17]                           dc.b $00
[000aac18]                           dc.b $00
[000aac19]                           dc.b $00
[000aac1a]                           dc.b $00
[000aac1b]                           dc.b $00
[000aac1c]                           dc.b $00
[000aac1d]                           dc.b $00
[000aac1e]                           dc.b $00
[000aac1f]                           dc.b $00
[000aac20]                           dc.b $00
[000aac21]                           dc.b $00
_72_EDIT_WINDOW:
[000aac22]                           dc.b $00
[000aac23]                           dc.b $54
[000aac24]                           dc.b $00
[000aac25]                           dc.b $49
[000aac26]                           dc.b $00
[000aac27]                           dc.b $49
[000aac28]                           dc.b $00
[000aac29]                           dc.b $18
[000aac2a]                           dc.b $00
[000aac2b]                           dc.b $40
[000aac2c]                           dc.b $00
[000aac2d]                           dc.b $00
[000aac2e] 000a9af2                  dc.l A_3DBUTTON01
[000aac32]                           dc.b $00
[000aac33]                           dc.b $0a
[000aac34]                           dc.b $00
[000aac35]                           dc.b $01
[000aac36]                           dc.b $00
[000aac37]                           dc.b $20
[000aac38]                           dc.b $00
[000aac39]                           dc.b $05
_73_EDIT_WINDOW:
[000aac3a]                           dc.b $00
[000aac3b]                           dc.b $48
[000aac3c]                           dc.b $00
[000aac3d]                           dc.b $4a
[000aac3e]                           dc.b $00
[000aac3f]                           dc.b $52
[000aac40]                           dc.b $00
[000aac41]                           dc.b $14
[000aac42]                           dc.b $00
[000aac43]                           dc.b $40
[000aac44]                           dc.b $00
[000aac45]                           dc.b $00
[000aac46]                           dc.b $00
[000aac47]                           dc.b $ff
[000aac48]                           dc.w $0101
[000aac4a]                           dc.b $00
[000aac4b]                           dc.b $00
[000aac4c]                           dc.b $00
[000aac4d]                           dc.b $00
[000aac4e]                           dc.b $00
[000aac4f]                           dc.b $20
[000aac50]                           dc.b $00
[000aac51]                           dc.b $05
_74_EDIT_WINDOW:
[000aac52]                           dc.b $00
[000aac53]                           dc.b $4c
[000aac54]                           dc.w $ffff
[000aac56]                           dc.w $ffff
[000aac58]                           dc.b $00
[000aac59]                           dc.b $18
[000aac5a]                           dc.w $1008
[000aac5c]                           dc.b $00
[000aac5d]                           dc.b $10
[000aac5e] 000a9ed2                  dc.l A_BOXED08
[000aac62]                           dc.b $00
[000aac63]                           dc.b $00
[000aac64]                           dc.b $00
[000aac65]                           dc.b $00
[000aac66]                           dc.b $00
[000aac67]                           dc.b $20
[000aac68]                           dc.b $00
[000aac69]                           dc.b $01
_74aEDIT_WINDOW:
[000aac6a]                           dc.b $00
[000aac6b]                           dc.b $00
[000aac6c]                           dc.b $00
[000aac6d]                           dc.b $00
[000aac6e] 00021e24                  dc.l edwi_acc
[000aac72]                           dc.w $8000
[000aac74]                           dc.b $00
[000aac75]                           dc.b $00
[000aac76]                           dc.b $00
[000aac77]                           dc.b $00
[000aac78]                           dc.b $00
[000aac79]                           dc.b $00
[000aac7a]                           dc.b $00
[000aac7b]                           dc.b $00
[000aac7c]                           dc.b $00
[000aac7d]                           dc.b $00
[000aac7e]                           dc.b $00
[000aac7f]                           dc.b $00
[000aac80]                           dc.b $00
[000aac81]                           dc.b $00
_76_EDIT_WINDOW:
[000aac82]                           dc.b $00
[000aac83]                           dc.b $4e
[000aac84]                           dc.w $ffff
[000aac86]                           dc.w $ffff
[000aac88]                           dc.b $00
[000aac89]                           dc.b $18
[000aac8a]                           dc.w $1008
[000aac8c]                           dc.b $00
[000aac8d]                           dc.b $00
[000aac8e] 000a9ef2                  dc.l A_BOXED09
[000aac92]                           dc.b $00
[000aac93]                           dc.b $00
[000aac94]                           dc.b $00
[000aac95]                           dc.b $01
[000aac96]                           dc.b $00
[000aac97]                           dc.b $20
[000aac98]                           dc.b $00
[000aac99]                           dc.b $01
_76aEDIT_WINDOW:
[000aac9a]                           dc.b $00
[000aac9b]                           dc.b $00
[000aac9c]                           dc.b $00
[000aac9d]                           dc.b $00
[000aac9e] 00021e24                  dc.l edwi_acc
[000aaca2]                           dc.w $8000
[000aaca4]                           dc.b $00
[000aaca5]                           dc.b $00
[000aaca6]                           dc.b $00
[000aaca7]                           dc.b $00
[000aaca8]                           dc.b $00
[000aaca9]                           dc.b $00
[000aacaa]                           dc.b $00
[000aacab]                           dc.b $00
[000aacac]                           dc.b $00
[000aacad]                           dc.b $00
[000aacae]                           dc.b $00
[000aacaf]                           dc.b $00
[000aacb0]                           dc.b $00
[000aacb1]                           dc.b $00
_78_EDIT_WINDOW:
[000aacb2]                           dc.b $00
[000aacb3]                           dc.b $50
[000aacb4]                           dc.w $ffff
[000aacb6]                           dc.w $ffff
[000aacb8]                           dc.b $00
[000aacb9]                           dc.b $18
[000aacba]                           dc.w $1008
[000aacbc]                           dc.b $00
[000aacbd]                           dc.b $00
[000aacbe] 000a9f12                  dc.l A_BOXED10
[000aacc2]                           dc.b $00
[000aacc3]                           dc.b $00
[000aacc4]                           dc.b $00
[000aacc5]                           dc.b $02
[000aacc6]                           dc.b $00
[000aacc7]                           dc.b $20
[000aacc8]                           dc.b $00
[000aacc9]                           dc.b $01
_78aEDIT_WINDOW:
[000aacca]                           dc.b $00
[000aaccb]                           dc.b $00
[000aaccc]                           dc.b $00
[000aaccd]                           dc.b $00
[000aacce] 00021e24                  dc.l edwi_acc
[000aacd2]                           dc.w $8000
[000aacd4]                           dc.b $00
[000aacd5]                           dc.b $00
[000aacd6]                           dc.b $00
[000aacd7]                           dc.b $00
[000aacd8]                           dc.b $00
[000aacd9]                           dc.b $00
[000aacda]                           dc.b $00
[000aacdb]                           dc.b $00
[000aacdc]                           dc.b $00
[000aacdd]                           dc.b $00
[000aacde]                           dc.b $00
[000aacdf]                           dc.b $00
[000aace0]                           dc.b $00
[000aace1]                           dc.b $00
_80_EDIT_WINDOW:
[000aace2]                           dc.b $00
[000aace3]                           dc.b $52
[000aace4]                           dc.w $ffff
[000aace6]                           dc.w $ffff
[000aace8]                           dc.b $00
[000aace9]                           dc.b $18
[000aacea]                           dc.w $1008
[000aacec]                           dc.b $00
[000aaced]                           dc.b $00
[000aacee] 000a9f32                  dc.l A_BOXED11
[000aacf2]                           dc.b $00
[000aacf3]                           dc.b $00
[000aacf4]                           dc.b $00
[000aacf5]                           dc.b $03
[000aacf6]                           dc.b $00
[000aacf7]                           dc.b $20
[000aacf8]                           dc.b $00
[000aacf9]                           dc.b $01
_80aEDIT_WINDOW:
[000aacfa]                           dc.b $00
[000aacfb]                           dc.b $00
[000aacfc]                           dc.b $00
[000aacfd]                           dc.b $00
[000aacfe] 00021e24                  dc.l edwi_acc
[000aad02]                           dc.w $8000
[000aad04]                           dc.b $00
[000aad05]                           dc.b $00
[000aad06]                           dc.b $00
[000aad07]                           dc.b $00
[000aad08]                           dc.b $00
[000aad09]                           dc.b $00
[000aad0a]                           dc.b $00
[000aad0b]                           dc.b $00
[000aad0c]                           dc.b $00
[000aad0d]                           dc.b $00
[000aad0e]                           dc.b $00
[000aad0f]                           dc.b $00
[000aad10]                           dc.b $00
[000aad11]                           dc.b $00
_82_EDIT_WINDOW:
[000aad12]                           dc.b $00
[000aad13]                           dc.b $49
[000aad14]                           dc.w $ffff
[000aad16]                           dc.w $ffff
[000aad18]                           dc.b $00
[000aad19]                           dc.b $18
[000aad1a]                           dc.w $1008
[000aad1c]                           dc.b $00
[000aad1d]                           dc.b $00
[000aad1e] 000a9f52                  dc.l A_BOXED12
[000aad22]                           dc.b $00
[000aad23]                           dc.b $00
[000aad24]                           dc.b $00
[000aad25]                           dc.b $04
[000aad26]                           dc.b $00
[000aad27]                           dc.b $20
[000aad28]                           dc.b $00
[000aad29]                           dc.b $01
_82aEDIT_WINDOW:
[000aad2a]                           dc.b $00
[000aad2b]                           dc.b $00
[000aad2c]                           dc.b $00
[000aad2d]                           dc.b $00
[000aad2e] 00021e24                  dc.l edwi_acc
[000aad32]                           dc.w $8000
[000aad34]                           dc.b $00
[000aad35]                           dc.b $00
[000aad36]                           dc.b $00
[000aad37]                           dc.b $00
[000aad38]                           dc.b $00
[000aad39]                           dc.b $00
[000aad3a]                           dc.b $00
[000aad3b]                           dc.b $00
[000aad3c]                           dc.b $00
[000aad3d]                           dc.b $00
[000aad3e]                           dc.b $00
[000aad3f]                           dc.b $00
[000aad40]                           dc.b $00
[000aad41]                           dc.b $00
_84_EDIT_WINDOW:
[000aad42]                           dc.b $00
[000aad43]                           dc.b $56
[000aad44]                           dc.w $ffff
[000aad46]                           dc.w $ffff
[000aad48]                           dc.b $00
[000aad49]                           dc.b $1c
[000aad4a]                           dc.b $00
[000aad4b]                           dc.b $05
[000aad4c]                           dc.b $00
[000aad4d]                           dc.b $00
[000aad4e] 000a95f1                  dc.l TEXT_09
[000aad52]                           dc.b $00
[000aad53]                           dc.b $01
[000aad54]                           dc.b $00
[000aad55]                           dc.b $02
[000aad56]                           dc.b $00
[000aad57]                           dc.b $08
[000aad58]                           dc.b $00
[000aad59]                           dc.b $01
_84aEDIT_WINDOW:
[000aad5a] 00021d3a                  dc.l edwi_two
[000aad5e]                           dc.b $00
[000aad5f]                           dc.b $00
[000aad60]                           dc.b $00
[000aad61]                           dc.b $00
[000aad62]                           dc.w $8000
[000aad64]                           dc.b $00
[000aad65]                           dc.b $00
[000aad66]                           dc.b $00
[000aad67]                           dc.b $00
[000aad68]                           dc.b $00
[000aad69]                           dc.b $00
[000aad6a]                           dc.b $00
[000aad6b]                           dc.b $00
[000aad6c]                           dc.b $00
[000aad6d]                           dc.b $00
[000aad6e]                           dc.b $00
[000aad6f]                           dc.b $00
[000aad70]                           dc.b $00
[000aad71]                           dc.b $00
_86_EDIT_WINDOW:
[000aad72]                           dc.b $00
[000aad73]                           dc.b $58
[000aad74]                           dc.w $ffff
[000aad76]                           dc.w $ffff
[000aad78]                           dc.b $00
[000aad79]                           dc.b $1c
[000aad7a]                           dc.b $00
[000aad7b]                           dc.b $05
[000aad7c]                           dc.b $00
[000aad7d]                           dc.b $00
[000aad7e] 000a9653                  dc.l TEXT_20
[000aad82]                           dc.b $00
[000aad83]                           dc.b $01
[000aad84]                           dc.b $00
[000aad85]                           dc.b $03
[000aad86]                           dc.b $00
[000aad87]                           dc.b $05
[000aad88]                           dc.b $00
[000aad89]                           dc.b $01
_86aEDIT_WINDOW:
[000aad8a] 00021d3a                  dc.l edwi_two
[000aad8e]                           dc.b $00
[000aad8f]                           dc.b $00
[000aad90]                           dc.b $00
[000aad91]                           dc.b $00
[000aad92]                           dc.w $8000
[000aad94]                           dc.b $00
[000aad95]                           dc.b $00
[000aad96]                           dc.b $00
[000aad97]                           dc.b $00
[000aad98]                           dc.b $00
[000aad99]                           dc.b $00
[000aad9a]                           dc.b $00
[000aad9b]                           dc.b $00
[000aad9c]                           dc.b $00
[000aad9d]                           dc.b $00
[000aad9e]                           dc.b $00
[000aad9f]                           dc.b $00
[000aada0]                           dc.b $00
[000aada1]                           dc.b $00
_88_EDIT_WINDOW:
[000aada2]                           dc.b $00
[000aada3]                           dc.b $5a
[000aada4]                           dc.w $ffff
[000aada6]                           dc.w $ffff
[000aada8]                           dc.b $00
[000aada9]                           dc.b $1c
[000aadaa]                           dc.b $00
[000aadab]                           dc.b $05
[000aadac]                           dc.b $00
[000aadad]                           dc.b $00
[000aadae] 000a9661                  dc.l TEXT_21
[000aadb2]                           dc.b $00
[000aadb3]                           dc.b $01
[000aadb4]                           dc.b $00
[000aadb5]                           dc.b $04
[000aadb6]                           dc.b $00
[000aadb7]                           dc.b $05
[000aadb8]                           dc.b $00
[000aadb9]                           dc.b $01
_88aEDIT_WINDOW:
[000aadba] 00021d76                  dc.l edwi_tic
[000aadbe]                           dc.b $00
[000aadbf]                           dc.b $00
[000aadc0]                           dc.b $00
[000aadc1]                           dc.b $00
[000aadc2]                           dc.w $8000
[000aadc4]                           dc.b $00
[000aadc5]                           dc.b $00
[000aadc6]                           dc.b $00
[000aadc7]                           dc.b $00
[000aadc8]                           dc.b $00
[000aadc9]                           dc.b $00
[000aadca]                           dc.b $00
[000aadcb]                           dc.b $00
[000aadcc]                           dc.b $00
[000aadcd]                           dc.b $00
[000aadce]                           dc.b $00
[000aadcf]                           dc.b $00
[000aadd0]                           dc.b $00
[000aadd1]                           dc.b $00
_90_EDIT_WINDOW:
[000aadd2]                           dc.b $00
[000aadd3]                           dc.b $45
[000aadd4]                           dc.w $ffff
[000aadd6]                           dc.w $ffff
[000aadd8]                           dc.b $00
[000aadd9]                           dc.b $1c
[000aadda]                           dc.b $00
[000aaddb]                           dc.b $05
[000aaddc]                           dc.b $00
[000aaddd]                           dc.b $00
[000aadde] 000a9667                  dc.l TEXT_22
[000aade2]                           dc.b $00
[000aade3]                           dc.b $01
[000aade4]                           dc.b $00
[000aade5]                           dc.b $05
[000aade6]                           dc.b $00
[000aade7]                           dc.b $05
[000aade8]                           dc.b $00
[000aade9]                           dc.b $01
_90aEDIT_WINDOW:
[000aadea] 00021db2                  dc.l edwi_ref
[000aadee]                           dc.b $00
[000aadef]                           dc.b $00
[000aadf0]                           dc.b $00
[000aadf1]                           dc.b $00
[000aadf2]                           dc.w $8000
[000aadf4]                           dc.b $00
[000aadf5]                           dc.b $00
[000aadf6]                           dc.b $00
[000aadf7]                           dc.b $00
[000aadf8]                           dc.b $00
[000aadf9]                           dc.b $00
[000aadfa]                           dc.b $00
[000aadfb]                           dc.b $00
[000aadfc]                           dc.b $00
[000aadfd]                           dc.b $00
[000aadfe]                           dc.b $00
[000aadff]                           dc.b $00
[000aae00]                           dc.b $00
[000aae01]                           dc.b $00
_92_EDIT_WINDOW:
[000aae02]                           dc.b $00
[000aae03]                           dc.b $00
[000aae04]                           dc.b $00
[000aae05]                           dc.b $5d
[000aae06]                           dc.b $00
[000aae07]                           dc.b $a5
[000aae08]                           dc.b $00
[000aae09]                           dc.b $18
[000aae0a]                           dc.b $00
[000aae0b]                           dc.b $00
[000aae0c]                           dc.b $00
[000aae0d]                           dc.b $00
[000aae0e] 000aa352                  dc.l A_INNERFRAME07
[000aae12]                           dc.b $00
[000aae13]                           dc.b $01
[000aae14]                           dc.b $00
[000aae15]                           dc.b $1d
[000aae16]                           dc.b $00
[000aae17]                           dc.b $2c
[000aae18]                           dc.b $00
[000aae19]                           dc.b $14
_93_EDIT_WINDOW:
[000aae1a]                           dc.b $00
[000aae1b]                           dc.b $5f
[000aae1c]                           dc.w $ffff
[000aae1e]                           dc.w $ffff
[000aae20]                           dc.b $00
[000aae21]                           dc.b $1c
[000aae22]                           dc.b $00
[000aae23]                           dc.b $05
[000aae24]                           dc.b $00
[000aae25]                           dc.b $00
[000aae26] 000a961b                  dc.l TEXT_14
[000aae2a]                           dc.b $00
[000aae2b]                           dc.b $01
[000aae2c]                           dc.b $00
[000aae2d]                           dc.b $01
[000aae2e]                           dc.b $00
[000aae2f]                           dc.b $05
[000aae30]                           dc.b $00
[000aae31]                           dc.b $01
_93aEDIT_WINDOW:
[000aae32] 00021db2                  dc.l edwi_ref
[000aae36]                           dc.b $00
[000aae37]                           dc.b $00
[000aae38]                           dc.b $00
[000aae39]                           dc.b $00
[000aae3a]                           dc.w $8000
[000aae3c]                           dc.b $00
[000aae3d]                           dc.b $00
[000aae3e]                           dc.b $00
[000aae3f]                           dc.b $00
[000aae40]                           dc.b $00
[000aae41]                           dc.b $00
[000aae42]                           dc.b $00
[000aae43]                           dc.b $00
[000aae44]                           dc.b $00
[000aae45]                           dc.b $00
[000aae46]                           dc.b $00
[000aae47]                           dc.b $00
[000aae48]                           dc.b $00
[000aae49]                           dc.b $00
_95_EDIT_WINDOW:
[000aae4a]                           dc.b $00
[000aae4b]                           dc.b $85
[000aae4c]                           dc.b $00
[000aae4d]                           dc.b $60
[000aae4e]                           dc.b $00
[000aae4f]                           dc.b $60
[000aae50]                           dc.b $00
[000aae51]                           dc.b $18
[000aae52]                           dc.b $00
[000aae53]                           dc.b $40
[000aae54]                           dc.b $00
[000aae55]                           dc.b $00
[000aae56] 000a9af2                  dc.l A_3DBUTTON01
[000aae5a]                           dc.b $00
[000aae5b]                           dc.b $0a
[000aae5c]                           dc.b $00
[000aae5d]                           dc.b $01
[000aae5e]                           dc.b $00
[000aae5f]                           dc.b $20
[000aae60]                           dc.b $00
[000aae61]                           dc.b $12
_96_EDIT_WINDOW:
[000aae62]                           dc.b $00
[000aae63]                           dc.b $5f
[000aae64]                           dc.b $00
[000aae65]                           dc.b $61
[000aae66]                           dc.b $00
[000aae67]                           dc.b $83
[000aae68]                           dc.b $00
[000aae69]                           dc.b $14
[000aae6a]                           dc.b $00
[000aae6b]                           dc.b $40
[000aae6c]                           dc.b $00
[000aae6d]                           dc.b $00
[000aae6e]                           dc.b $00
[000aae6f]                           dc.b $ff
[000aae70]                           dc.w $0101
[000aae72]                           dc.b $00
[000aae73]                           dc.b $00
[000aae74]                           dc.b $00
[000aae75]                           dc.b $00
[000aae76]                           dc.b $00
[000aae77]                           dc.b $20
[000aae78]                           dc.b $00
[000aae79]                           dc.b $12
_97_EDIT_WINDOW:
[000aae7a]                           dc.b $00
[000aae7b]                           dc.b $63
[000aae7c]                           dc.w $ffff
[000aae7e]                           dc.w $ffff
[000aae80]                           dc.b $00
[000aae81]                           dc.b $18
[000aae82]                           dc.w $1008
[000aae84]                           dc.b $00
[000aae85]                           dc.b $00
[000aae86] 000a9fd2                  dc.l A_BOXED16
[000aae8a]                           dc.b $00
[000aae8b]                           dc.b $00
[000aae8c]                           dc.b $00
[000aae8d]                           dc.b $00
[000aae8e]                           dc.b $00
[000aae8f]                           dc.b $20
[000aae90]                           dc.b $00
[000aae91]                           dc.b $01
_97aEDIT_WINDOW:
[000aae92]                           dc.b $00
[000aae93]                           dc.b $00
[000aae94]                           dc.b $00
[000aae95]                           dc.b $00
[000aae96] 00021e24                  dc.l edwi_acc
[000aae9a]                           dc.w $8000
[000aae9c]                           dc.b $00
[000aae9d]                           dc.b $00
[000aae9e]                           dc.b $00
[000aae9f]                           dc.b $00
[000aaea0]                           dc.b $00
[000aaea1]                           dc.b $00
[000aaea2]                           dc.b $00
[000aaea3]                           dc.b $00
[000aaea4]                           dc.b $00
[000aaea5]                           dc.b $00
[000aaea6]                           dc.b $00
[000aaea7]                           dc.b $00
[000aaea8]                           dc.b $00
[000aaea9]                           dc.b $00
_99_EDIT_WINDOW:
[000aaeaa]                           dc.b $00
[000aaeab]                           dc.b $65
[000aaeac]                           dc.w $ffff
[000aaeae]                           dc.w $ffff
[000aaeb0]                           dc.b $00
[000aaeb1]                           dc.b $18
[000aaeb2]                           dc.w $1008
[000aaeb4]                           dc.b $00
[000aaeb5]                           dc.b $00
[000aaeb6] 000a9fb2                  dc.l A_BOXED15
[000aaeba]                           dc.b $00
[000aaebb]                           dc.b $00
[000aaebc]                           dc.b $00
[000aaebd]                           dc.b $01
[000aaebe]                           dc.b $00
[000aaebf]                           dc.b $20
[000aaec0]                           dc.b $00
[000aaec1]                           dc.b $01
_99aEDIT_WINDOW:
[000aaec2]                           dc.b $00
[000aaec3]                           dc.b $00
[000aaec4]                           dc.b $00
[000aaec5]                           dc.b $00
[000aaec6] 00021e24                  dc.l edwi_acc
[000aaeca]                           dc.w $8000
[000aaecc]                           dc.b $00
[000aaecd]                           dc.b $00
[000aaece]                           dc.b $00
[000aaecf]                           dc.b $00
[000aaed0]                           dc.b $00
[000aaed1]                           dc.b $00
[000aaed2]                           dc.b $00
[000aaed3]                           dc.b $00
[000aaed4]                           dc.b $00
[000aaed5]                           dc.b $00
[000aaed6]                           dc.b $00
[000aaed7]                           dc.b $00
[000aaed8]                           dc.b $00
[000aaed9]                           dc.b $00
_101_EDIT_WINDOW:
[000aaeda]                           dc.b $00
[000aaedb]                           dc.b $67
[000aaedc]                           dc.w $ffff
[000aaede]                           dc.w $ffff
[000aaee0]                           dc.b $00
[000aaee1]                           dc.b $18
[000aaee2]                           dc.w $1008
[000aaee4]                           dc.b $00
[000aaee5]                           dc.b $00
[000aaee6] 000a9f92                  dc.l A_BOXED14
[000aaeea]                           dc.b $00
[000aaeeb]                           dc.b $00
[000aaeec]                           dc.b $00
[000aaeed]                           dc.b $02
[000aaeee]                           dc.b $00
[000aaeef]                           dc.b $20
[000aaef0]                           dc.b $00
[000aaef1]                           dc.b $01
_101aEDIT_WINDOW:
[000aaef2]                           dc.b $00
[000aaef3]                           dc.b $00
[000aaef4]                           dc.b $00
[000aaef5]                           dc.b $00
[000aaef6] 00021e24                  dc.l edwi_acc
[000aaefa]                           dc.w $8000
[000aaefc]                           dc.b $00
[000aaefd]                           dc.b $00
[000aaefe]                           dc.b $00
[000aaeff]                           dc.b $00
[000aaf00]                           dc.b $00
[000aaf01]                           dc.b $00
[000aaf02]                           dc.b $00
[000aaf03]                           dc.b $00
[000aaf04]                           dc.b $00
[000aaf05]                           dc.b $00
[000aaf06]                           dc.b $00
[000aaf07]                           dc.b $00
[000aaf08]                           dc.b $00
[000aaf09]                           dc.b $00
_103_EDIT_WINDOW:
[000aaf0a]                           dc.b $00
[000aaf0b]                           dc.b $69
[000aaf0c]                           dc.w $ffff
[000aaf0e]                           dc.w $ffff
[000aaf10]                           dc.b $00
[000aaf11]                           dc.b $18
[000aaf12]                           dc.w $1008
[000aaf14]                           dc.b $00
[000aaf15]                           dc.b $00
[000aaf16] 000a9ff2                  dc.l A_BOXED17
[000aaf1a]                           dc.b $00
[000aaf1b]                           dc.b $00
[000aaf1c]                           dc.b $00
[000aaf1d]                           dc.b $03
[000aaf1e]                           dc.b $00
[000aaf1f]                           dc.b $20
[000aaf20]                           dc.b $00
[000aaf21]                           dc.b $01
_103aEDIT_WINDOW:
[000aaf22]                           dc.b $00
[000aaf23]                           dc.b $00
[000aaf24]                           dc.b $00
[000aaf25]                           dc.b $00
[000aaf26] 00021e24                  dc.l edwi_acc
[000aaf2a]                           dc.w $8000
[000aaf2c]                           dc.b $00
[000aaf2d]                           dc.b $00
[000aaf2e]                           dc.b $00
[000aaf2f]                           dc.b $00
[000aaf30]                           dc.b $00
[000aaf31]                           dc.b $00
[000aaf32]                           dc.b $00
[000aaf33]                           dc.b $00
[000aaf34]                           dc.b $00
[000aaf35]                           dc.b $00
[000aaf36]                           dc.b $00
[000aaf37]                           dc.b $00
[000aaf38]                           dc.b $00
[000aaf39]                           dc.b $00
_105_EDIT_WINDOW:
[000aaf3a]                           dc.b $00
[000aaf3b]                           dc.b $6b
[000aaf3c]                           dc.w $ffff
[000aaf3e]                           dc.w $ffff
[000aaf40]                           dc.b $00
[000aaf41]                           dc.b $18
[000aaf42]                           dc.w $1008
[000aaf44]                           dc.b $00
[000aaf45]                           dc.b $00
[000aaf46] 000aa012                  dc.l A_BOXED18
[000aaf4a]                           dc.b $00
[000aaf4b]                           dc.b $00
[000aaf4c]                           dc.b $00
[000aaf4d]                           dc.b $04
[000aaf4e]                           dc.b $00
[000aaf4f]                           dc.b $20
[000aaf50]                           dc.b $00
[000aaf51]                           dc.b $01
_105aEDIT_WINDOW:
[000aaf52]                           dc.b $00
[000aaf53]                           dc.b $00
[000aaf54]                           dc.b $00
[000aaf55]                           dc.b $00
[000aaf56] 00021e24                  dc.l edwi_acc
[000aaf5a]                           dc.w $8000
[000aaf5c]                           dc.b $00
[000aaf5d]                           dc.b $00
[000aaf5e]                           dc.b $00
[000aaf5f]                           dc.b $00
[000aaf60]                           dc.b $00
[000aaf61]                           dc.b $00
[000aaf62]                           dc.b $00
[000aaf63]                           dc.b $00
[000aaf64]                           dc.b $00
[000aaf65]                           dc.b $00
[000aaf66]                           dc.b $00
[000aaf67]                           dc.b $00
[000aaf68]                           dc.b $00
[000aaf69]                           dc.b $00
_107_EDIT_WINDOW:
[000aaf6a]                           dc.b $00
[000aaf6b]                           dc.b $6d
[000aaf6c]                           dc.w $ffff
[000aaf6e]                           dc.w $ffff
[000aaf70]                           dc.b $00
[000aaf71]                           dc.b $18
[000aaf72]                           dc.w $1008
[000aaf74]                           dc.b $00
[000aaf75]                           dc.b $00
[000aaf76] 000aa032                  dc.l A_BOXED19
[000aaf7a]                           dc.b $00
[000aaf7b]                           dc.b $00
[000aaf7c]                           dc.b $00
[000aaf7d]                           dc.b $05
[000aaf7e]                           dc.b $00
[000aaf7f]                           dc.b $20
[000aaf80]                           dc.b $00
[000aaf81]                           dc.b $01
_107aEDIT_WINDOW:
[000aaf82]                           dc.b $00
[000aaf83]                           dc.b $00
[000aaf84]                           dc.b $00
[000aaf85]                           dc.b $00
[000aaf86] 00021e24                  dc.l edwi_acc
[000aaf8a]                           dc.w $8000
[000aaf8c]                           dc.b $00
[000aaf8d]                           dc.b $00
[000aaf8e]                           dc.b $00
[000aaf8f]                           dc.b $00
[000aaf90]                           dc.b $00
[000aaf91]                           dc.b $00
[000aaf92]                           dc.b $00
[000aaf93]                           dc.b $00
[000aaf94]                           dc.b $00
[000aaf95]                           dc.b $00
[000aaf96]                           dc.b $00
[000aaf97]                           dc.b $00
[000aaf98]                           dc.b $00
[000aaf99]                           dc.b $00
_109_EDIT_WINDOW:
[000aaf9a]                           dc.b $00
[000aaf9b]                           dc.b $6f
[000aaf9c]                           dc.w $ffff
[000aaf9e]                           dc.w $ffff
[000aafa0]                           dc.b $00
[000aafa1]                           dc.b $18
[000aafa2]                           dc.w $1008
[000aafa4]                           dc.b $00
[000aafa5]                           dc.b $00
[000aafa6] 000aa052                  dc.l A_BOXED20
[000aafaa]                           dc.b $00
[000aafab]                           dc.b $00
[000aafac]                           dc.b $00
[000aafad]                           dc.b $06
[000aafae]                           dc.b $00
[000aafaf]                           dc.b $20
[000aafb0]                           dc.b $00
[000aafb1]                           dc.b $01
_109aEDIT_WINDOW:
[000aafb2]                           dc.b $00
[000aafb3]                           dc.b $00
[000aafb4]                           dc.b $00
[000aafb5]                           dc.b $00
[000aafb6] 00021e24                  dc.l edwi_acc
[000aafba]                           dc.w $8000
[000aafbc]                           dc.b $00
[000aafbd]                           dc.b $00
[000aafbe]                           dc.b $00
[000aafbf]                           dc.b $00
[000aafc0]                           dc.b $00
[000aafc1]                           dc.b $00
[000aafc2]                           dc.b $00
[000aafc3]                           dc.b $00
[000aafc4]                           dc.b $00
[000aafc5]                           dc.b $00
[000aafc6]                           dc.b $00
[000aafc7]                           dc.b $00
[000aafc8]                           dc.b $00
[000aafc9]                           dc.b $00
_111_EDIT_WINDOW:
[000aafca]                           dc.b $00
[000aafcb]                           dc.b $71
[000aafcc]                           dc.w $ffff
[000aafce]                           dc.w $ffff
[000aafd0]                           dc.b $00
[000aafd1]                           dc.b $18
[000aafd2]                           dc.w $1008
[000aafd4]                           dc.b $00
[000aafd5]                           dc.b $00
[000aafd6] 000aa072                  dc.l A_BOXED21
[000aafda]                           dc.b $00
[000aafdb]                           dc.b $00
[000aafdc]                           dc.b $00
[000aafdd]                           dc.b $07
[000aafde]                           dc.b $00
[000aafdf]                           dc.b $20
[000aafe0]                           dc.b $00
[000aafe1]                           dc.b $01
_111aEDIT_WINDOW:
[000aafe2]                           dc.b $00
[000aafe3]                           dc.b $00
[000aafe4]                           dc.b $00
[000aafe5]                           dc.b $00
[000aafe6] 00021e24                  dc.l edwi_acc
[000aafea]                           dc.w $8000
[000aafec]                           dc.b $00
[000aafed]                           dc.b $00
[000aafee]                           dc.b $00
[000aafef]                           dc.b $00
[000aaff0]                           dc.b $00
[000aaff1]                           dc.b $00
[000aaff2]                           dc.b $00
[000aaff3]                           dc.b $00
[000aaff4]                           dc.b $00
[000aaff5]                           dc.b $00
[000aaff6]                           dc.b $00
[000aaff7]                           dc.b $00
[000aaff8]                           dc.b $00
[000aaff9]                           dc.b $00
_113_EDIT_WINDOW:
[000aaffa]                           dc.b $00
[000aaffb]                           dc.b $73
[000aaffc]                           dc.w $ffff
[000aaffe]                           dc.w $ffff
[000ab000]                           dc.b $00
[000ab001]                           dc.b $18
[000ab002]                           dc.w $1008
[000ab004]                           dc.b $00
[000ab005]                           dc.b $00
[000ab006] 000aa092                  dc.l A_BOXED22
[000ab00a]                           dc.b $00
[000ab00b]                           dc.b $00
[000ab00c]                           dc.b $00
[000ab00d]                           dc.b $08
[000ab00e]                           dc.b $00
[000ab00f]                           dc.b $20
[000ab010]                           dc.b $00
[000ab011]                           dc.b $01
_113aEDIT_WINDOW:
[000ab012]                           dc.b $00
[000ab013]                           dc.b $00
[000ab014]                           dc.b $00
[000ab015]                           dc.b $00
[000ab016] 00021e24                  dc.l edwi_acc
[000ab01a]                           dc.w $8000
[000ab01c]                           dc.b $00
[000ab01d]                           dc.b $00
[000ab01e]                           dc.b $00
[000ab01f]                           dc.b $00
[000ab020]                           dc.b $00
[000ab021]                           dc.b $00
[000ab022]                           dc.b $00
[000ab023]                           dc.b $00
[000ab024]                           dc.b $00
[000ab025]                           dc.b $00
[000ab026]                           dc.b $00
[000ab027]                           dc.b $00
[000ab028]                           dc.b $00
[000ab029]                           dc.b $00
_115_EDIT_WINDOW:
[000ab02a]                           dc.b $00
[000ab02b]                           dc.b $75
[000ab02c]                           dc.w $ffff
[000ab02e]                           dc.w $ffff
[000ab030]                           dc.b $00
[000ab031]                           dc.b $18
[000ab032]                           dc.w $1008
[000ab034]                           dc.b $00
[000ab035]                           dc.b $00
[000ab036] 000aa0b2                  dc.l A_BOXED23
[000ab03a]                           dc.b $00
[000ab03b]                           dc.b $00
[000ab03c]                           dc.b $00
[000ab03d]                           dc.b $09
[000ab03e]                           dc.b $00
[000ab03f]                           dc.b $20
[000ab040]                           dc.b $00
[000ab041]                           dc.b $01
_115aEDIT_WINDOW:
[000ab042]                           dc.b $00
[000ab043]                           dc.b $00
[000ab044]                           dc.b $00
[000ab045]                           dc.b $00
[000ab046] 00021e24                  dc.l edwi_acc
[000ab04a]                           dc.w $8000
[000ab04c]                           dc.b $00
[000ab04d]                           dc.b $00
[000ab04e]                           dc.b $00
[000ab04f]                           dc.b $00
[000ab050]                           dc.b $00
[000ab051]                           dc.b $00
[000ab052]                           dc.b $00
[000ab053]                           dc.b $00
[000ab054]                           dc.b $00
[000ab055]                           dc.b $00
[000ab056]                           dc.b $00
[000ab057]                           dc.b $00
[000ab058]                           dc.b $00
[000ab059]                           dc.b $00
_117_EDIT_WINDOW:
[000ab05a]                           dc.b $00
[000ab05b]                           dc.b $77
[000ab05c]                           dc.w $ffff
[000ab05e]                           dc.w $ffff
[000ab060]                           dc.b $00
[000ab061]                           dc.b $18
[000ab062]                           dc.w $1008
[000ab064]                           dc.b $00
[000ab065]                           dc.b $00
[000ab066] 000aa0d2                  dc.l A_BOXED24
[000ab06a]                           dc.b $00
[000ab06b]                           dc.b $00
[000ab06c]                           dc.b $00
[000ab06d]                           dc.b $0a
[000ab06e]                           dc.b $00
[000ab06f]                           dc.b $20
[000ab070]                           dc.b $00
[000ab071]                           dc.b $01
_117aEDIT_WINDOW:
[000ab072]                           dc.b $00
[000ab073]                           dc.b $00
[000ab074]                           dc.b $00
[000ab075]                           dc.b $00
[000ab076] 00021e24                  dc.l edwi_acc
[000ab07a]                           dc.w $8000
[000ab07c]                           dc.b $00
[000ab07d]                           dc.b $00
[000ab07e]                           dc.b $00
[000ab07f]                           dc.b $00
[000ab080]                           dc.b $00
[000ab081]                           dc.b $00
[000ab082]                           dc.b $00
[000ab083]                           dc.b $00
[000ab084]                           dc.b $00
[000ab085]                           dc.b $00
[000ab086]                           dc.b $00
[000ab087]                           dc.b $00
[000ab088]                           dc.b $00
[000ab089]                           dc.b $00
_119_EDIT_WINDOW:
[000ab08a]                           dc.b $00
[000ab08b]                           dc.b $79
[000ab08c]                           dc.w $ffff
[000ab08e]                           dc.w $ffff
[000ab090]                           dc.b $00
[000ab091]                           dc.b $18
[000ab092]                           dc.w $1008
[000ab094]                           dc.b $00
[000ab095]                           dc.b $00
[000ab096] 000aa0f2                  dc.l A_BOXED25
[000ab09a]                           dc.b $00
[000ab09b]                           dc.b $00
[000ab09c]                           dc.b $00
[000ab09d]                           dc.b $0b
[000ab09e]                           dc.b $00
[000ab09f]                           dc.b $20
[000ab0a0]                           dc.b $00
[000ab0a1]                           dc.b $01
_119aEDIT_WINDOW:
[000ab0a2]                           dc.b $00
[000ab0a3]                           dc.b $00
[000ab0a4]                           dc.b $00
[000ab0a5]                           dc.b $00
[000ab0a6] 00021e24                  dc.l edwi_acc
[000ab0aa]                           dc.w $8000
[000ab0ac]                           dc.b $00
[000ab0ad]                           dc.b $00
[000ab0ae]                           dc.b $00
[000ab0af]                           dc.b $00
[000ab0b0]                           dc.b $00
[000ab0b1]                           dc.b $00
[000ab0b2]                           dc.b $00
[000ab0b3]                           dc.b $00
[000ab0b4]                           dc.b $00
[000ab0b5]                           dc.b $00
[000ab0b6]                           dc.b $00
[000ab0b7]                           dc.b $00
[000ab0b8]                           dc.b $00
[000ab0b9]                           dc.b $00
_121_EDIT_WINDOW:
[000ab0ba]                           dc.b $00
[000ab0bb]                           dc.b $7b
[000ab0bc]                           dc.w $ffff
[000ab0be]                           dc.w $ffff
[000ab0c0]                           dc.b $00
[000ab0c1]                           dc.b $18
[000ab0c2]                           dc.w $1008
[000ab0c4]                           dc.b $00
[000ab0c5]                           dc.b $00
[000ab0c6] 000aa112                  dc.l A_BOXED26
[000ab0ca]                           dc.b $00
[000ab0cb]                           dc.b $00
[000ab0cc]                           dc.b $00
[000ab0cd]                           dc.b $0c
[000ab0ce]                           dc.b $00
[000ab0cf]                           dc.b $20
[000ab0d0]                           dc.b $00
[000ab0d1]                           dc.b $01
_121aEDIT_WINDOW:
[000ab0d2]                           dc.b $00
[000ab0d3]                           dc.b $00
[000ab0d4]                           dc.b $00
[000ab0d5]                           dc.b $00
[000ab0d6] 00021e24                  dc.l edwi_acc
[000ab0da]                           dc.w $8000
[000ab0dc]                           dc.b $00
[000ab0dd]                           dc.b $00
[000ab0de]                           dc.b $00
[000ab0df]                           dc.b $00
[000ab0e0]                           dc.b $00
[000ab0e1]                           dc.b $00
[000ab0e2]                           dc.b $00
[000ab0e3]                           dc.b $00
[000ab0e4]                           dc.b $00
[000ab0e5]                           dc.b $00
[000ab0e6]                           dc.b $00
[000ab0e7]                           dc.b $00
[000ab0e8]                           dc.b $00
[000ab0e9]                           dc.b $00
_123_EDIT_WINDOW:
[000ab0ea]                           dc.b $00
[000ab0eb]                           dc.b $7d
[000ab0ec]                           dc.w $ffff
[000ab0ee]                           dc.w $ffff
[000ab0f0]                           dc.b $00
[000ab0f1]                           dc.b $18
[000ab0f2]                           dc.w $1008
[000ab0f4]                           dc.b $00
[000ab0f5]                           dc.b $00
[000ab0f6] 000aa132                  dc.l A_BOXED27
[000ab0fa]                           dc.b $00
[000ab0fb]                           dc.b $00
[000ab0fc]                           dc.b $00
[000ab0fd]                           dc.b $0d
[000ab0fe]                           dc.b $00
[000ab0ff]                           dc.b $20
[000ab100]                           dc.b $00
[000ab101]                           dc.b $01
_123aEDIT_WINDOW:
[000ab102]                           dc.b $00
[000ab103]                           dc.b $00
[000ab104]                           dc.b $00
[000ab105]                           dc.b $00
[000ab106] 00021e24                  dc.l edwi_acc
[000ab10a]                           dc.w $8000
[000ab10c]                           dc.b $00
[000ab10d]                           dc.b $00
[000ab10e]                           dc.b $00
[000ab10f]                           dc.b $00
[000ab110]                           dc.b $00
[000ab111]                           dc.b $00
[000ab112]                           dc.b $00
[000ab113]                           dc.b $00
[000ab114]                           dc.b $00
[000ab115]                           dc.b $00
[000ab116]                           dc.b $00
[000ab117]                           dc.b $00
[000ab118]                           dc.b $00
[000ab119]                           dc.b $00
_125_EDIT_WINDOW:
[000ab11a]                           dc.b $00
[000ab11b]                           dc.b $7f
[000ab11c]                           dc.w $ffff
[000ab11e]                           dc.w $ffff
[000ab120]                           dc.b $00
[000ab121]                           dc.b $18
[000ab122]                           dc.w $1008
[000ab124]                           dc.b $00
[000ab125]                           dc.b $00
[000ab126] 000aa152                  dc.l A_BOXED28
[000ab12a]                           dc.b $00
[000ab12b]                           dc.b $00
[000ab12c]                           dc.b $00
[000ab12d]                           dc.b $0e
[000ab12e]                           dc.b $00
[000ab12f]                           dc.b $20
[000ab130]                           dc.b $00
[000ab131]                           dc.b $01
_125aEDIT_WINDOW:
[000ab132]                           dc.b $00
[000ab133]                           dc.b $00
[000ab134]                           dc.b $00
[000ab135]                           dc.b $00
[000ab136] 00021e24                  dc.l edwi_acc
[000ab13a]                           dc.w $8000
[000ab13c]                           dc.b $00
[000ab13d]                           dc.b $00
[000ab13e]                           dc.b $00
[000ab13f]                           dc.b $00
[000ab140]                           dc.b $00
[000ab141]                           dc.b $00
[000ab142]                           dc.b $00
[000ab143]                           dc.b $00
[000ab144]                           dc.b $00
[000ab145]                           dc.b $00
[000ab146]                           dc.b $00
[000ab147]                           dc.b $00
[000ab148]                           dc.b $00
[000ab149]                           dc.b $00
_127_EDIT_WINDOW:
[000ab14a]                           dc.b $00
[000ab14b]                           dc.b $81
[000ab14c]                           dc.w $ffff
[000ab14e]                           dc.w $ffff
[000ab150]                           dc.b $00
[000ab151]                           dc.b $18
[000ab152]                           dc.w $1008
[000ab154]                           dc.b $00
[000ab155]                           dc.b $00
[000ab156] 000aa172                  dc.l A_BOXED29
[000ab15a]                           dc.b $00
[000ab15b]                           dc.b $00
[000ab15c]                           dc.b $00
[000ab15d]                           dc.b $0f
[000ab15e]                           dc.b $00
[000ab15f]                           dc.b $20
[000ab160]                           dc.b $00
[000ab161]                           dc.b $01
_127aEDIT_WINDOW:
[000ab162]                           dc.b $00
[000ab163]                           dc.b $00
[000ab164]                           dc.b $00
[000ab165]                           dc.b $00
[000ab166] 00021e24                  dc.l edwi_acc
[000ab16a]                           dc.w $8000
[000ab16c]                           dc.b $00
[000ab16d]                           dc.b $00
[000ab16e]                           dc.b $00
[000ab16f]                           dc.b $00
[000ab170]                           dc.b $00
[000ab171]                           dc.b $00
[000ab172]                           dc.b $00
[000ab173]                           dc.b $00
[000ab174]                           dc.b $00
[000ab175]                           dc.b $00
[000ab176]                           dc.b $00
[000ab177]                           dc.b $00
[000ab178]                           dc.b $00
[000ab179]                           dc.b $00
_129_EDIT_WINDOW:
[000ab17a]                           dc.b $00
[000ab17b]                           dc.b $83
[000ab17c]                           dc.w $ffff
[000ab17e]                           dc.w $ffff
[000ab180]                           dc.b $00
[000ab181]                           dc.b $18
[000ab182]                           dc.w $1008
[000ab184]                           dc.b $00
[000ab185]                           dc.b $00
[000ab186] 000aa192                  dc.l A_BOXED30
[000ab18a]                           dc.b $00
[000ab18b]                           dc.b $00
[000ab18c]                           dc.b $00
[000ab18d]                           dc.b $10
[000ab18e]                           dc.b $00
[000ab18f]                           dc.b $20
[000ab190]                           dc.b $00
[000ab191]                           dc.b $01
_129aEDIT_WINDOW:
[000ab192]                           dc.b $00
[000ab193]                           dc.b $00
[000ab194]                           dc.b $00
[000ab195]                           dc.b $00
[000ab196] 00021e24                  dc.l edwi_acc
[000ab19a]                           dc.w $8000
[000ab19c]                           dc.b $00
[000ab19d]                           dc.b $00
[000ab19e]                           dc.b $00
[000ab19f]                           dc.b $00
[000ab1a0]                           dc.b $00
[000ab1a1]                           dc.b $00
[000ab1a2]                           dc.b $00
[000ab1a3]                           dc.b $00
[000ab1a4]                           dc.b $00
[000ab1a5]                           dc.b $00
[000ab1a6]                           dc.b $00
[000ab1a7]                           dc.b $00
[000ab1a8]                           dc.b $00
[000ab1a9]                           dc.b $00
_131_EDIT_WINDOW:
[000ab1aa]                           dc.b $00
[000ab1ab]                           dc.b $60
[000ab1ac]                           dc.w $ffff
[000ab1ae]                           dc.w $ffff
[000ab1b0]                           dc.b $00
[000ab1b1]                           dc.b $18
[000ab1b2]                           dc.w $1008
[000ab1b4]                           dc.b $00
[000ab1b5]                           dc.b $00
[000ab1b6] 000aa1b2                  dc.l A_BOXED31
[000ab1ba]                           dc.b $00
[000ab1bb]                           dc.b $00
[000ab1bc]                           dc.b $00
[000ab1bd]                           dc.b $11
[000ab1be]                           dc.b $00
[000ab1bf]                           dc.b $20
[000ab1c0]                           dc.b $00
[000ab1c1]                           dc.b $01
_131aEDIT_WINDOW:
[000ab1c2]                           dc.b $00
[000ab1c3]                           dc.b $00
[000ab1c4]                           dc.b $00
[000ab1c5]                           dc.b $00
[000ab1c6] 00021e24                  dc.l edwi_acc
[000ab1ca]                           dc.w $8000
[000ab1cc]                           dc.b $00
[000ab1cd]                           dc.b $00
[000ab1ce]                           dc.b $00
[000ab1cf]                           dc.b $00
[000ab1d0]                           dc.b $00
[000ab1d1]                           dc.b $00
[000ab1d2]                           dc.b $00
[000ab1d3]                           dc.b $00
[000ab1d4]                           dc.b $00
[000ab1d5]                           dc.b $00
[000ab1d6]                           dc.b $00
[000ab1d7]                           dc.b $00
[000ab1d8]                           dc.b $00
[000ab1d9]                           dc.b $00
_133_EDIT_WINDOW:
[000ab1da]                           dc.b $00
[000ab1db]                           dc.b $87
[000ab1dc]                           dc.w $ffff
[000ab1de]                           dc.w $ffff
[000ab1e0]                           dc.b $00
[000ab1e1]                           dc.b $1c
[000ab1e2]                           dc.b $00
[000ab1e3]                           dc.b $05
[000ab1e4]                           dc.b $00
[000ab1e5]                           dc.b $00
[000ab1e6] 000a9678                  dc.l TEXT_25
[000ab1ea]                           dc.b $00
[000ab1eb]                           dc.b $01
[000ab1ec]                           dc.b $00
[000ab1ed]                           dc.b $02
[000ab1ee]                           dc.b $00
[000ab1ef]                           dc.b $07
[000ab1f0]                           dc.b $00
[000ab1f1]                           dc.b $01
_133aEDIT_WINDOW:
[000ab1f2] 00021db2                  dc.l edwi_ref
[000ab1f6]                           dc.b $00
[000ab1f7]                           dc.b $00
[000ab1f8]                           dc.b $00
[000ab1f9]                           dc.b $00
[000ab1fa]                           dc.w $8000
[000ab1fc]                           dc.b $00
[000ab1fd]                           dc.b $00
[000ab1fe]                           dc.b $00
[000ab1ff]                           dc.b $00
[000ab200]                           dc.b $00
[000ab201]                           dc.b $00
[000ab202]                           dc.b $00
[000ab203]                           dc.b $00
[000ab204]                           dc.b $00
[000ab205]                           dc.b $00
[000ab206]                           dc.b $00
[000ab207]                           dc.b $00
[000ab208]                           dc.b $00
[000ab209]                           dc.b $00
_135_EDIT_WINDOW:
[000ab20a]                           dc.b $00
[000ab20b]                           dc.b $89
[000ab20c]                           dc.w $ffff
[000ab20e]                           dc.w $ffff
[000ab210]                           dc.b $00
[000ab211]                           dc.b $1c
[000ab212]                           dc.b $00
[000ab213]                           dc.b $05
[000ab214]                           dc.b $00
[000ab215]                           dc.b $00
[000ab216] 000a966d                  dc.l TEXT_23
[000ab21a]                           dc.b $00
[000ab21b]                           dc.b $01
[000ab21c]                           dc.b $00
[000ab21d]                           dc.b $03
[000ab21e]                           dc.b $00
[000ab21f]                           dc.b $08
[000ab220]                           dc.b $00
[000ab221]                           dc.b $01
_135aEDIT_WINDOW:
[000ab222] 00021db2                  dc.l edwi_ref
[000ab226]                           dc.b $00
[000ab227]                           dc.b $00
[000ab228]                           dc.b $00
[000ab229]                           dc.b $00
[000ab22a]                           dc.w $8000
[000ab22c]                           dc.b $00
[000ab22d]                           dc.b $00
[000ab22e]                           dc.b $00
[000ab22f]                           dc.b $00
[000ab230]                           dc.b $00
[000ab231]                           dc.b $00
[000ab232]                           dc.b $00
[000ab233]                           dc.b $00
[000ab234]                           dc.b $00
[000ab235]                           dc.b $00
[000ab236]                           dc.b $00
[000ab237]                           dc.b $00
[000ab238]                           dc.b $00
[000ab239]                           dc.b $00
_137_EDIT_WINDOW:
[000ab23a]                           dc.b $00
[000ab23b]                           dc.b $8b
[000ab23c]                           dc.w $ffff
[000ab23e]                           dc.w $ffff
[000ab240]                           dc.b $00
[000ab241]                           dc.b $1c
[000ab242]                           dc.b $00
[000ab243]                           dc.b $05
[000ab244]                           dc.b $00
[000ab245]                           dc.b $00
[000ab246] 000a9680                  dc.l TEXT_26
[000ab24a]                           dc.b $00
[000ab24b]                           dc.b $01
[000ab24c]                           dc.b $00
[000ab24d]                           dc.b $04
[000ab24e]                           dc.b $00
[000ab24f]                           dc.b $05
[000ab250]                           dc.b $00
[000ab251]                           dc.b $01
_137aEDIT_WINDOW:
[000ab252] 00021db2                  dc.l edwi_ref
[000ab256]                           dc.b $00
[000ab257]                           dc.b $00
[000ab258]                           dc.b $00
[000ab259]                           dc.b $00
[000ab25a]                           dc.w $8000
[000ab25c]                           dc.b $00
[000ab25d]                           dc.b $00
[000ab25e]                           dc.b $00
[000ab25f]                           dc.b $00
[000ab260]                           dc.b $00
[000ab261]                           dc.b $00
[000ab262]                           dc.b $00
[000ab263]                           dc.b $00
[000ab264]                           dc.b $00
[000ab265]                           dc.b $00
[000ab266]                           dc.b $00
[000ab267]                           dc.b $00
[000ab268]                           dc.b $00
[000ab269]                           dc.b $00
_139_EDIT_WINDOW:
[000ab26a]                           dc.b $00
[000ab26b]                           dc.b $8d
[000ab26c]                           dc.w $ffff
[000ab26e]                           dc.w $ffff
[000ab270]                           dc.b $00
[000ab271]                           dc.b $1c
[000ab272]                           dc.b $00
[000ab273]                           dc.b $05
[000ab274]                           dc.b $00
[000ab275]                           dc.b $00
[000ab276] 000a9686                  dc.l TEXT_27
[000ab27a]                           dc.b $00
[000ab27b]                           dc.b $01
[000ab27c]                           dc.b $00
[000ab27d]                           dc.b $05
[000ab27e]                           dc.b $00
[000ab27f]                           dc.b $05
[000ab280]                           dc.b $00
[000ab281]                           dc.b $01
_139aEDIT_WINDOW:
[000ab282] 00021db2                  dc.l edwi_ref
[000ab286]                           dc.b $00
[000ab287]                           dc.b $00
[000ab288]                           dc.b $00
[000ab289]                           dc.b $00
[000ab28a]                           dc.w $8000
[000ab28c]                           dc.b $00
[000ab28d]                           dc.b $00
[000ab28e]                           dc.b $00
[000ab28f]                           dc.b $00
[000ab290]                           dc.b $00
[000ab291]                           dc.b $00
[000ab292]                           dc.b $00
[000ab293]                           dc.b $00
[000ab294]                           dc.b $00
[000ab295]                           dc.b $00
[000ab296]                           dc.b $00
[000ab297]                           dc.b $00
[000ab298]                           dc.b $00
[000ab299]                           dc.b $00
_141_EDIT_WINDOW:
[000ab29a]                           dc.b $00
[000ab29b]                           dc.b $8f
[000ab29c]                           dc.w $ffff
[000ab29e]                           dc.w $ffff
[000ab2a0]                           dc.b $00
[000ab2a1]                           dc.b $1c
[000ab2a2]                           dc.b $00
[000ab2a3]                           dc.b $05
[000ab2a4]                           dc.b $00
[000ab2a5]                           dc.b $00
[000ab2a6] 000a968c                  dc.l TEXT_28
[000ab2aa]                           dc.b $00
[000ab2ab]                           dc.b $01
[000ab2ac]                           dc.b $00
[000ab2ad]                           dc.b $06
[000ab2ae]                           dc.b $00
[000ab2af]                           dc.b $07
[000ab2b0]                           dc.b $00
[000ab2b1]                           dc.b $01
_141aEDIT_WINDOW:
[000ab2b2] 00021db2                  dc.l edwi_ref
[000ab2b6]                           dc.b $00
[000ab2b7]                           dc.b $00
[000ab2b8]                           dc.b $00
[000ab2b9]                           dc.b $00
[000ab2ba]                           dc.w $8000
[000ab2bc]                           dc.b $00
[000ab2bd]                           dc.b $00
[000ab2be]                           dc.b $00
[000ab2bf]                           dc.b $00
[000ab2c0]                           dc.b $00
[000ab2c1]                           dc.b $00
[000ab2c2]                           dc.b $00
[000ab2c3]                           dc.b $00
[000ab2c4]                           dc.b $00
[000ab2c5]                           dc.b $00
[000ab2c6]                           dc.b $00
[000ab2c7]                           dc.b $00
[000ab2c8]                           dc.b $00
[000ab2c9]                           dc.b $00
_143_EDIT_WINDOW:
[000ab2ca]                           dc.b $00
[000ab2cb]                           dc.b $91
[000ab2cc]                           dc.w $ffff
[000ab2ce]                           dc.w $ffff
[000ab2d0]                           dc.b $00
[000ab2d1]                           dc.b $1c
[000ab2d2]                           dc.b $00
[000ab2d3]                           dc.b $05
[000ab2d4]                           dc.b $00
[000ab2d5]                           dc.b $00
[000ab2d6] 000a9694                  dc.l TEXT_29
[000ab2da]                           dc.b $00
[000ab2db]                           dc.b $01
[000ab2dc]                           dc.b $00
[000ab2dd]                           dc.b $07
[000ab2de]                           dc.b $00
[000ab2df]                           dc.b $07
[000ab2e0]                           dc.b $00
[000ab2e1]                           dc.b $01
_143aEDIT_WINDOW:
[000ab2e2] 00021db2                  dc.l edwi_ref
[000ab2e6]                           dc.b $00
[000ab2e7]                           dc.b $00
[000ab2e8]                           dc.b $00
[000ab2e9]                           dc.b $00
[000ab2ea]                           dc.w $8000
[000ab2ec]                           dc.b $00
[000ab2ed]                           dc.b $00
[000ab2ee]                           dc.b $00
[000ab2ef]                           dc.b $00
[000ab2f0]                           dc.b $00
[000ab2f1]                           dc.b $00
[000ab2f2]                           dc.b $00
[000ab2f3]                           dc.b $00
[000ab2f4]                           dc.b $00
[000ab2f5]                           dc.b $00
[000ab2f6]                           dc.b $00
[000ab2f7]                           dc.b $00
[000ab2f8]                           dc.b $00
[000ab2f9]                           dc.b $00
_145_EDIT_WINDOW:
[000ab2fa]                           dc.b $00
[000ab2fb]                           dc.b $93
[000ab2fc]                           dc.w $ffff
[000ab2fe]                           dc.w $ffff
[000ab300]                           dc.b $00
[000ab301]                           dc.b $1c
[000ab302]                           dc.b $00
[000ab303]                           dc.b $05
[000ab304]                           dc.b $00
[000ab305]                           dc.b $00
[000ab306] 000a969c                  dc.l TEXT_30
[000ab30a]                           dc.b $00
[000ab30b]                           dc.b $01
[000ab30c]                           dc.b $00
[000ab30d]                           dc.b $08
[000ab30e]                           dc.b $00
[000ab30f]                           dc.b $07
[000ab310]                           dc.b $00
[000ab311]                           dc.b $01
_145aEDIT_WINDOW:
[000ab312] 00021db2                  dc.l edwi_ref
[000ab316]                           dc.b $00
[000ab317]                           dc.b $00
[000ab318]                           dc.b $00
[000ab319]                           dc.b $00
[000ab31a]                           dc.w $8000
[000ab31c]                           dc.b $00
[000ab31d]                           dc.b $00
[000ab31e]                           dc.b $00
[000ab31f]                           dc.b $00
[000ab320]                           dc.b $00
[000ab321]                           dc.b $00
[000ab322]                           dc.b $00
[000ab323]                           dc.b $00
[000ab324]                           dc.b $00
[000ab325]                           dc.b $00
[000ab326]                           dc.b $00
[000ab327]                           dc.b $00
[000ab328]                           dc.b $00
[000ab329]                           dc.b $00
_147_EDIT_WINDOW:
[000ab32a]                           dc.b $00
[000ab32b]                           dc.b $95
[000ab32c]                           dc.w $ffff
[000ab32e]                           dc.w $ffff
[000ab330]                           dc.b $00
[000ab331]                           dc.b $1c
[000ab332]                           dc.b $00
[000ab333]                           dc.b $05
[000ab334]                           dc.b $00
[000ab335]                           dc.b $00
[000ab336] 000a96a4                  dc.l TEXT_31
[000ab33a]                           dc.b $00
[000ab33b]                           dc.b $01
[000ab33c]                           dc.b $00
[000ab33d]                           dc.b $09
[000ab33e]                           dc.b $00
[000ab33f]                           dc.b $07
[000ab340]                           dc.b $00
[000ab341]                           dc.b $01
_147aEDIT_WINDOW:
[000ab342] 00021db2                  dc.l edwi_ref
[000ab346]                           dc.b $00
[000ab347]                           dc.b $00
[000ab348]                           dc.b $00
[000ab349]                           dc.b $00
[000ab34a]                           dc.w $8000
[000ab34c]                           dc.b $00
[000ab34d]                           dc.b $00
[000ab34e]                           dc.b $00
[000ab34f]                           dc.b $00
[000ab350]                           dc.b $00
[000ab351]                           dc.b $00
[000ab352]                           dc.b $00
[000ab353]                           dc.b $00
[000ab354]                           dc.b $00
[000ab355]                           dc.b $00
[000ab356]                           dc.b $00
[000ab357]                           dc.b $00
[000ab358]                           dc.b $00
[000ab359]                           dc.b $00
_149_EDIT_WINDOW:
[000ab35a]                           dc.b $00
[000ab35b]                           dc.b $97
[000ab35c]                           dc.w $ffff
[000ab35e]                           dc.w $ffff
[000ab360]                           dc.b $00
[000ab361]                           dc.b $1c
[000ab362]                           dc.b $00
[000ab363]                           dc.b $05
[000ab364]                           dc.b $00
[000ab365]                           dc.b $00
[000ab366] 000a96ac                  dc.l TEXT_32
[000ab36a]                           dc.b $00
[000ab36b]                           dc.b $01
[000ab36c]                           dc.b $00
[000ab36d]                           dc.b $0a
[000ab36e]                           dc.b $00
[000ab36f]                           dc.b $07
[000ab370]                           dc.b $00
[000ab371]                           dc.b $01
_149aEDIT_WINDOW:
[000ab372] 00021db2                  dc.l edwi_ref
[000ab376]                           dc.b $00
[000ab377]                           dc.b $00
[000ab378]                           dc.b $00
[000ab379]                           dc.b $00
[000ab37a]                           dc.w $8000
[000ab37c]                           dc.b $00
[000ab37d]                           dc.b $00
[000ab37e]                           dc.b $00
[000ab37f]                           dc.b $00
[000ab380]                           dc.b $00
[000ab381]                           dc.b $00
[000ab382]                           dc.b $00
[000ab383]                           dc.b $00
[000ab384]                           dc.b $00
[000ab385]                           dc.b $00
[000ab386]                           dc.b $00
[000ab387]                           dc.b $00
[000ab388]                           dc.b $00
[000ab389]                           dc.b $00
_151_EDIT_WINDOW:
[000ab38a]                           dc.b $00
[000ab38b]                           dc.b $99
[000ab38c]                           dc.w $ffff
[000ab38e]                           dc.w $ffff
[000ab390]                           dc.b $00
[000ab391]                           dc.b $1c
[000ab392]                           dc.b $00
[000ab393]                           dc.b $05
[000ab394]                           dc.b $00
[000ab395]                           dc.b $00
[000ab396] 000a96b4                  dc.l TEXT_33
[000ab39a]                           dc.b $00
[000ab39b]                           dc.b $01
[000ab39c]                           dc.b $00
[000ab39d]                           dc.b $0b
[000ab39e]                           dc.b $00
[000ab39f]                           dc.b $08
[000ab3a0]                           dc.b $00
[000ab3a1]                           dc.b $01
_151aEDIT_WINDOW:
[000ab3a2] 00021db2                  dc.l edwi_ref
[000ab3a6]                           dc.b $00
[000ab3a7]                           dc.b $00
[000ab3a8]                           dc.b $00
[000ab3a9]                           dc.b $00
[000ab3aa]                           dc.w $8000
[000ab3ac]                           dc.b $00
[000ab3ad]                           dc.b $00
[000ab3ae]                           dc.b $00
[000ab3af]                           dc.b $00
[000ab3b0]                           dc.b $00
[000ab3b1]                           dc.b $00
[000ab3b2]                           dc.b $00
[000ab3b3]                           dc.b $00
[000ab3b4]                           dc.b $00
[000ab3b5]                           dc.b $00
[000ab3b6]                           dc.b $00
[000ab3b7]                           dc.b $00
[000ab3b8]                           dc.b $00
[000ab3b9]                           dc.b $00
_153_EDIT_WINDOW:
[000ab3ba]                           dc.b $00
[000ab3bb]                           dc.b $9b
[000ab3bc]                           dc.w $ffff
[000ab3be]                           dc.w $ffff
[000ab3c0]                           dc.b $00
[000ab3c1]                           dc.b $1c
[000ab3c2]                           dc.b $00
[000ab3c3]                           dc.b $05
[000ab3c4]                           dc.b $00
[000ab3c5]                           dc.b $00
[000ab3c6] 000a96bd                  dc.l TEXT_34
[000ab3ca]                           dc.b $00
[000ab3cb]                           dc.b $01
[000ab3cc]                           dc.b $00
[000ab3cd]                           dc.b $0c
[000ab3ce]                           dc.b $00
[000ab3cf]                           dc.b $08
[000ab3d0]                           dc.b $00
[000ab3d1]                           dc.b $01
_153aEDIT_WINDOW:
[000ab3d2] 00021db2                  dc.l edwi_ref
[000ab3d6]                           dc.b $00
[000ab3d7]                           dc.b $00
[000ab3d8]                           dc.b $00
[000ab3d9]                           dc.b $00
[000ab3da]                           dc.w $8000
[000ab3dc]                           dc.b $00
[000ab3dd]                           dc.b $00
[000ab3de]                           dc.b $00
[000ab3df]                           dc.b $00
[000ab3e0]                           dc.b $00
[000ab3e1]                           dc.b $00
[000ab3e2]                           dc.b $00
[000ab3e3]                           dc.b $00
[000ab3e4]                           dc.b $00
[000ab3e5]                           dc.b $00
[000ab3e6]                           dc.b $00
[000ab3e7]                           dc.b $00
[000ab3e8]                           dc.b $00
[000ab3e9]                           dc.b $00
_155_EDIT_WINDOW:
[000ab3ea]                           dc.b $00
[000ab3eb]                           dc.b $9d
[000ab3ec]                           dc.w $ffff
[000ab3ee]                           dc.w $ffff
[000ab3f0]                           dc.b $00
[000ab3f1]                           dc.b $1c
[000ab3f2]                           dc.b $00
[000ab3f3]                           dc.b $05
[000ab3f4]                           dc.b $00
[000ab3f5]                           dc.b $00
[000ab3f6] 000a96c6                  dc.l TEXT_35
[000ab3fa]                           dc.b $00
[000ab3fb]                           dc.b $01
[000ab3fc]                           dc.b $00
[000ab3fd]                           dc.b $0d
[000ab3fe]                           dc.b $00
[000ab3ff]                           dc.b $08
[000ab400]                           dc.b $00
[000ab401]                           dc.b $01
_155aEDIT_WINDOW:
[000ab402] 00021db2                  dc.l edwi_ref
[000ab406]                           dc.b $00
[000ab407]                           dc.b $00
[000ab408]                           dc.b $00
[000ab409]                           dc.b $00
[000ab40a]                           dc.w $8000
[000ab40c]                           dc.b $00
[000ab40d]                           dc.b $00
[000ab40e]                           dc.b $00
[000ab40f]                           dc.b $00
[000ab410]                           dc.b $00
[000ab411]                           dc.b $00
[000ab412]                           dc.b $00
[000ab413]                           dc.b $00
[000ab414]                           dc.b $00
[000ab415]                           dc.b $00
[000ab416]                           dc.b $00
[000ab417]                           dc.b $00
[000ab418]                           dc.b $00
[000ab419]                           dc.b $00
_157_EDIT_WINDOW:
[000ab41a]                           dc.b $00
[000ab41b]                           dc.b $9f
[000ab41c]                           dc.w $ffff
[000ab41e]                           dc.w $ffff
[000ab420]                           dc.b $00
[000ab421]                           dc.b $1c
[000ab422]                           dc.b $00
[000ab423]                           dc.b $05
[000ab424]                           dc.b $00
[000ab425]                           dc.b $00
[000ab426] 000a96cf                  dc.l TEXT_36
[000ab42a]                           dc.b $00
[000ab42b]                           dc.b $01
[000ab42c]                           dc.b $00
[000ab42d]                           dc.b $0e
[000ab42e]                           dc.b $00
[000ab42f]                           dc.b $06
[000ab430]                           dc.b $00
[000ab431]                           dc.b $01
_157aEDIT_WINDOW:
[000ab432] 00021db2                  dc.l edwi_ref
[000ab436]                           dc.b $00
[000ab437]                           dc.b $00
[000ab438]                           dc.b $00
[000ab439]                           dc.b $00
[000ab43a]                           dc.w $8000
[000ab43c]                           dc.b $00
[000ab43d]                           dc.b $00
[000ab43e]                           dc.b $00
[000ab43f]                           dc.b $00
[000ab440]                           dc.b $00
[000ab441]                           dc.b $00
[000ab442]                           dc.b $00
[000ab443]                           dc.b $00
[000ab444]                           dc.b $00
[000ab445]                           dc.b $00
[000ab446]                           dc.b $00
[000ab447]                           dc.b $00
[000ab448]                           dc.b $00
[000ab449]                           dc.b $00
_159_EDIT_WINDOW:
[000ab44a]                           dc.b $00
[000ab44b]                           dc.b $a1
[000ab44c]                           dc.w $ffff
[000ab44e]                           dc.w $ffff
[000ab450]                           dc.b $00
[000ab451]                           dc.b $1c
[000ab452]                           dc.b $00
[000ab453]                           dc.b $05
[000ab454]                           dc.b $00
[000ab455]                           dc.b $00
[000ab456] 000a96d6                  dc.l TEXT_37
[000ab45a]                           dc.b $00
[000ab45b]                           dc.b $01
[000ab45c]                           dc.b $00
[000ab45d]                           dc.b $0f
[000ab45e]                           dc.b $00
[000ab45f]                           dc.b $06
[000ab460]                           dc.b $00
[000ab461]                           dc.b $01
_159aEDIT_WINDOW:
[000ab462] 00021db2                  dc.l edwi_ref
[000ab466]                           dc.b $00
[000ab467]                           dc.b $00
[000ab468]                           dc.b $00
[000ab469]                           dc.b $00
[000ab46a]                           dc.w $8000
[000ab46c]                           dc.b $00
[000ab46d]                           dc.b $00
[000ab46e]                           dc.b $00
[000ab46f]                           dc.b $00
[000ab470]                           dc.b $00
[000ab471]                           dc.b $00
[000ab472]                           dc.b $00
[000ab473]                           dc.b $00
[000ab474]                           dc.b $00
[000ab475]                           dc.b $00
[000ab476]                           dc.b $00
[000ab477]                           dc.b $00
[000ab478]                           dc.b $00
[000ab479]                           dc.b $00
_161_EDIT_WINDOW:
[000ab47a]                           dc.b $00
[000ab47b]                           dc.b $a3
[000ab47c]                           dc.b $ff
[000ab47d]                           dc.b $ff
[000ab47e]                           dc.w $ffff
[000ab480]                           dc.b $00
[000ab481]                           dc.b $1c
[000ab482]                           dc.b $00
[000ab483]                           dc.b $05
[000ab484]                           dc.b $00
[000ab485]                           dc.b $00
[000ab486] 000a970a                  dc.l TEXT_49
[000ab48a]                           dc.b $00
[000ab48b]                           dc.b $01
[000ab48c]                           dc.b $00
[000ab48d]                           dc.b $10
[000ab48e]                           dc.b $00
[000ab48f]                           dc.b $08
[000ab490]                           dc.b $00
[000ab491]                           dc.b $01
_161aEDIT_WINDOW:
[000ab492] 00021db2                  dc.l edwi_ref
[000ab496]                           dc.b $00
[000ab497]                           dc.b $00
[000ab498]                           dc.b $00
[000ab499]                           dc.b $00
[000ab49a]                           dc.w $8000
[000ab49c]                           dc.b $00
[000ab49d]                           dc.b $00
[000ab49e]                           dc.b $00
[000ab49f]                           dc.b $00
[000ab4a0]                           dc.b $00
[000ab4a1]                           dc.b $00
[000ab4a2]                           dc.b $00
[000ab4a3]                           dc.b $00
[000ab4a4]                           dc.b $00
[000ab4a5]                           dc.b $00
[000ab4a6]                           dc.b $00
[000ab4a7]                           dc.b $00
[000ab4a8]                           dc.b $00
[000ab4a9]                           dc.b $00
_163_EDIT_WINDOW:
[000ab4aa]                           dc.b $00
[000ab4ab]                           dc.b $a5
[000ab4ac]                           dc.w $ffff
[000ab4ae]                           dc.w $ffff
[000ab4b0]                           dc.b $00
[000ab4b1]                           dc.b $1c
[000ab4b2]                           dc.b $00
[000ab4b3]                           dc.b $05
[000ab4b4]                           dc.b $00
[000ab4b5]                           dc.b $00
[000ab4b6] 000a9718                  dc.l TEXT_51
[000ab4ba]                           dc.b $00
[000ab4bb]                           dc.b $01
[000ab4bc]                           dc.b $00
[000ab4bd]                           dc.b $11
[000ab4be]                           dc.b $00
[000ab4bf]                           dc.b $08
[000ab4c0]                           dc.b $00
[000ab4c1]                           dc.b $01
_163aEDIT_WINDOW:
[000ab4c2] 00021db2                  dc.l edwi_ref
[000ab4c6]                           dc.b $00
[000ab4c7]                           dc.b $00
[000ab4c8]                           dc.b $00
[000ab4c9]                           dc.b $00
[000ab4ca]                           dc.w $8000
[000ab4cc]                           dc.b $00
[000ab4cd]                           dc.b $00
[000ab4ce]                           dc.b $00
[000ab4cf]                           dc.b $00
[000ab4d0]                           dc.b $00
[000ab4d1]                           dc.b $00
[000ab4d2]                           dc.b $00
[000ab4d3]                           dc.b $00
[000ab4d4]                           dc.b $00
[000ab4d5]                           dc.b $00
[000ab4d6]                           dc.b $00
[000ab4d7]                           dc.b $00
[000ab4d8]                           dc.b $00
[000ab4d9]                           dc.b $00
_165_EDIT_WINDOW:
[000ab4da]                           dc.b $00
[000ab4db]                           dc.b $5c
[000ab4dc]                           dc.b $ff
[000ab4dd]                           dc.b $ff
[000ab4de]                           dc.w $ffff
[000ab4e0]                           dc.b $00
[000ab4e1]                           dc.b $1c
[000ab4e2]                           dc.b $00
[000ab4e3]                           dc.b $05
[000ab4e4]                           dc.b $00
[000ab4e5]                           dc.b $00
[000ab4e6] 000a9721                  dc.l TEXT_52
[000ab4ea]                           dc.b $00
[000ab4eb]                           dc.b $01
[000ab4ec]                           dc.b $00
[000ab4ed]                           dc.b $12
[000ab4ee]                           dc.b $00
[000ab4ef]                           dc.b $08
[000ab4f0]                           dc.b $00
[000ab4f1]                           dc.b $01
_165aEDIT_WINDOW:
[000ab4f2] 00021db2                  dc.l edwi_ref
[000ab4f6]                           dc.b $00
[000ab4f7]                           dc.b $00
[000ab4f8]                           dc.b $00
[000ab4f9]                           dc.b $00
[000ab4fa]                           dc.w $8020
[000ab4fc]                           dc.b $00
[000ab4fd]                           dc.b $00
[000ab4fe]                           dc.b $00
[000ab4ff]                           dc.b $00
[000ab500]                           dc.b $00
[000ab501]                           dc.b $00
[000ab502]                           dc.b $00
[000ab503]                           dc.b $00
[000ab504]                           dc.b $00
[000ab505]                           dc.b $00
[000ab506]                           dc.b $00
[000ab507]                           dc.b $00
[000ab508]                           dc.b $00
[000ab509]                           dc.b $00
WI_WINDOW:
[000ab50a]                           dc.b $00
[000ab50b]                           dc.b $00
[000ab50c]                           dc.b $00
[000ab50d]                           dc.b $00
[000ab50e] 0002270c                  dc.l wi_service
[000ab512] 0002265e                  dc.l wi_make
[000ab516] 0004f69e                  dc.l Awi_open
[000ab51a] 0004e610                  dc.l Awi_init
[000ab51e] 000aa562                  dc.l EDIT_WINDOW
[000ab522]                           dc.b $00
[000ab523]                           dc.b $00
[000ab524]                           dc.b $00
[000ab525]                           dc.b $00
[000ab526]                           dc.b $00
[000ab527]                           dc.b $00
[000ab528]                           dc.b $00
[000ab529]                           dc.b $00
[000ab52a]                           dc.w $ffff
[000ab52c]                           dc.b $61
[000ab52d]                           dc.b $ff
[000ab52e]                           dc.b $00
[000ab52f]                           dc.b $00
[000ab530]                           dc.b $00
[000ab531]                           dc.b $00
[000ab532]                           dc.b $00
[000ab533]                           dc.b $63
[000ab534]                           dc.b $00
[000ab535]                           dc.b $63
[000ab536]                           dc.b $00
[000ab537]                           dc.b $00
[000ab538]                           dc.b $00
[000ab539]                           dc.b $00
[000ab53a]                           dc.b $00
[000ab53b]                           dc.b $00
[000ab53c]                           dc.b $00
[000ab53d]                           dc.b $00
[000ab53e]                           dc.b $00
[000ab53f]                           dc.b $00
[000ab540]                           dc.b $00
[000ab541]                           dc.b $00
[000ab542]                           dc.b $00
[000ab543]                           dc.b $00
[000ab544]                           dc.b $00
[000ab545]                           dc.b $00
[000ab546]                           dc.b $ff
[000ab547]                           dc.b $ff
[000ab548]                           dc.w $ffff
[000ab54a]                           dc.w $ffff
[000ab54c]                           dc.w $ffff
[000ab54e]                           dc.b $00
[000ab54f]                           dc.b $00
[000ab550]                           dc.b $00
[000ab551]                           dc.b $00
[000ab552]                           dc.w $f8f8
[000ab554] 000a9621                  dc.l TEXT_15
[000ab558] 000a95a0                  dc.l TEXT_002
[000ab55c]                           dc.w $2710
[000ab55e]                           dc.w $0100
[000ab560]                           dc.b $00
[000ab561]                           dc.b $00
[000ab562]                           dc.w $ffff
[000ab564] 000aa53c                  dc.l IC_WINDOW
[000ab568]                           dc.b $00
[000ab569]                           dc.b $00
[000ab56a]                           dc.b $00
[000ab56b]                           dc.b $00
[000ab56c] 0005ef2c                  dc.l Awi_keys
[000ab570] 0004b600                  dc.l Awi_obchange
[000ab574] 0004b8cc                  dc.l Awi_redraw
[000ab578] 00050454                  dc.l Awi_topped
[000ab57c] 0005013e                  dc.l Awi_closed
[000ab580] 00050496                  dc.l Awi_fulled
[000ab584] 0004bcc8                  dc.l Awi_arrowed
[000ab588] 0004beea                  dc.l Awi_hslid
[000ab58c] 0004bf56                  dc.l Awi_vslid
[000ab590] 000506ca                  dc.l Awi_sized
[000ab594] 000507bc                  dc.l Awi_moved
[000ab598] 00050f9c                  dc.l Awi_iconify
[000ab59c] 0005117c                  dc.l Awi_uniconify
[000ab5a0] 00052328                  dc.l Awi_gemscript
[000ab5a4] 000a958d                  dc.l STGUIDE_01
[000ab5a8]                           dc.b $00
[000ab5a9]                           dc.b $00
[000ab5aa]                           dc.b $00
[000ab5ab]                           dc.b $00
[000ab5ac]                           dc.b $00
[000ab5ad]                           dc.b $00
[000ab5ae]                           dc.b $00
[000ab5af]                           dc.b $00
[000ab5b0]                           dc.b $00
[000ab5b1]                           dc.b $00
[000ab5b2]                           dc.b $00
[000ab5b3]                           dc.b $00
[000ab5b4]                           dc.b $00
[000ab5b5]                           dc.b $00
[000ab5b6]                           dc.b $00
[000ab5b7]                           dc.b $00
[000ab5b8]                           dc.b $00
[000ab5b9]                           dc.b $00
[000ab5ba]                           dc.b $00
[000ab5bb]                           dc.b $00
[000ab5bc]                           dc.b $00
[000ab5bd]                           dc.b $00
[000ab5be]                           dc.b $00
[000ab5bf]                           dc.b $00
[000ab5c0]                           dc.b $00
[000ab5c1]                           dc.b $00
[000ab5c2]                           dc.b 'STGUIDE_01',0
[000ab5cd]                           dc.b $00
[000ab5ce]                           dc.b $00
[000ab5cf]                           dc.b $00
[000ab5d0]                           dc.b $00
[000ab5d1]                           dc.b $00
[000ab5d2]                           dc.b $00
[000ab5d3]                           dc.b $00
[000ab5d4]                           dc.b $00
[000ab5d5]                           dc.b $00
[000ab5d6]                           dc.b $00
[000ab5d7]                           dc.b $00
[000ab5d8]                           dc.b $00
[000ab5d9]                           dc.b $00
[000ab5da]                           dc.b $00
[000ab5db]                           dc.b $00
[000ab5dc]                           dc.b $00
[000ab5dd]                           dc.b $00
[000ab5de]                           dc.b $00
[000ab5df]                           dc.b $00
[000ab5e0]                           dc.b $00
[000ab5e1]                           dc.b $00
[000ab5e2]                           dc.b $00
[000ab5e3]                           dc.b $00
[000ab5e4]                           dc.b $00
[000ab5e5]                           dc.b $00
[000ab5e6]                           dc.b $00
[000ab5e7]                           dc.b $00
[000ab5e8]                           dc.b $00
[000ab5e9]                           dc.b $00
[000ab5ea]                           dc.b $00
[000ab5eb]                           dc.b $00
[000ab5ec]                           dc.b $00
[000ab5ed]                           dc.b $00
[000ab5ee]                           dc.b $00
[000ab5ef]                           dc.b $00
[000ab5f0]                           dc.b $00
[000ab5f1]                           dc.b $00
[000ab5f2]                           dc.b $00
[000ab5f3]                           dc.b $00
[000ab5f4]                           dc.b $00
[000ab5f5]                           dc.b $00
[000ab5f6]                           dc.b $00
[000ab5f7]                           dc.b $00
[000ab5f8]                           dc.b $00
[000ab5f9]                           dc.b $00
[000ab5fa]                           dc.b $00
[000ab5fb]                           dc.b $00
[000ab5fc]                           dc.b $00
[000ab5fd]                           dc.b $00
[000ab5fe]                           dc.b $00
[000ab5ff]                           dc.b $00
[000ab600]                           dc.b $00
[000ab601]                           dc.b $00
[000ab602]                           dc.b $00
[000ab603]                           dc.b $00
[000ab604]                           dc.b 'HELPFILE_01',0
[000ab610]                           dc.b $00
[000ab611]                           dc.b $00
[000ab612]                           dc.b $00
[000ab613]                           dc.b $00
[000ab614]                           dc.b $00
[000ab615]                           dc.b $00
[000ab616]                           dc.b $00
[000ab617]                           dc.b $00
[000ab618]                           dc.b $00
[000ab619]                           dc.b $00
[000ab61a]                           dc.b $00
[000ab61b]                           dc.b $00
[000ab61c]                           dc.b $00
[000ab61d]                           dc.b $00
[000ab61e]                           dc.b $00
[000ab61f]                           dc.b $00
[000ab620]                           dc.b $00
[000ab621]                           dc.b $00
[000ab622]                           dc.b $00
[000ab623]                           dc.b $00
[000ab624]                           dc.b $00
[000ab625]                           dc.b $00
[000ab626]                           dc.b $00
[000ab627]                           dc.b $00
[000ab628]                           dc.b $00
[000ab629]                           dc.b $00
[000ab62a]                           dc.b $00
[000ab62b]                           dc.b $00
[000ab62c]                           dc.b $00
[000ab62d]                           dc.b $00
[000ab62e]                           dc.b $00
[000ab62f]                           dc.b $00
[000ab630]                           dc.w $2564
[000ab632]                           dc.b $00
	.even
