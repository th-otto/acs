edus_ok:
[0002f376] 48e7 003e                 movem.l    a2-a6,-(a7)
[0002f37a] 4fef ffdc                 lea.l      -36(a7),a7
[0002f37e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f384] 2268 0258                 movea.l    600(a0),a1
[0002f388] 2451                      movea.l    (a1),a2
[0002f38a] 2669 0014                 movea.l    20(a1),a3
[0002f38e] 206a 0004                 movea.l    4(a2),a0
[0002f392] 2868 0004                 movea.l    4(a0),a4
[0002f396] 322a 000a                 move.w     10(a2),d1
[0002f39a] 48c1                      ext.l      d1
[0002f39c] 2001                      move.l     d1,d0
[0002f39e] e788                      lsl.l      #3,d0
[0002f3a0] 9081                      sub.l      d1,d0
[0002f3a2] e788                      lsl.l      #3,d0
[0002f3a4] d9c0                      adda.l     d0,a4
[0002f3a6] 2eac 0014                 move.l     20(a4),(a7)
[0002f3aa] 4def 0004                 lea.l      4(a7),a6
[0002f3ae] 224e                      movea.l    a6,a1
[0002f3b0] 7003                      moveq.l    #3,d0
[0002f3b2] 41eb 0168                 lea.l      360(a3),a0
[0002f3b6] 4eb9 0005 e010            jsr        $0005E010
[0002f3bc] 43ee 0004                 lea.l      4(a6),a1
[0002f3c0] 7003                      moveq.l    #3,d0
[0002f3c2] 41eb 0198                 lea.l      408(a3),a0
[0002f3c6] 4eb9 0005 e010            jsr        $0005E010
[0002f3cc] 2056                      movea.l    (a6),a0
[0002f3ce] 4eb9 0004 3a92            jsr        $00043A92
[0002f3d4] 4a40                      tst.w      d0
[0002f3d6] 660e                      bne.s      $0002F3E6
[0002f3d8] 206e 0004                 movea.l    4(a6),a0
[0002f3dc] 4eb9 0004 3a92            jsr        $00043A92
[0002f3e2] 4a40                      tst.w      d0
[0002f3e4] 6712                      beq.s      $0002F3F8
[0002f3e6] 41f9 000b cd74            lea.l      $000BCD74,a0
[0002f3ec] 7001                      moveq.l    #1,d0
[0002f3ee] 4eb9 0005 17fe            jsr        $000517FE
[0002f3f4] 6000 0082                 bra        $0002F478
[0002f3f8] 43ee 0008                 lea.l      8(a6),a1
[0002f3fc] 7003                      moveq.l    #3,d0
[0002f3fe] 41eb 01c8                 lea.l      456(a3),a0
[0002f402] 4eb9 0005 e010            jsr        $0005E010
[0002f408] 43ee 000c                 lea.l      12(a6),a1
[0002f40c] 7003                      moveq.l    #3,d0
[0002f40e] 41eb 01f8                 lea.l      504(a3),a0
[0002f412] 4eb9 0005 e010            jsr        $0005E010
[0002f418] 43ee 0010                 lea.l      16(a6),a1
[0002f41c] 7003                      moveq.l    #3,d0
[0002f41e] 41eb 0228                 lea.l      552(a3),a0
[0002f422] 4eb9 0005 e010            jsr        $0005E010
[0002f428] 43ee 0014                 lea.l      20(a6),a1
[0002f42c] 7003                      moveq.l    #3,d0
[0002f42e] 41eb 0258                 lea.l      600(a3),a0
[0002f432] 4eb9 0005 e010            jsr        $0005E010
[0002f438] 43ee 0018                 lea.l      24(a6),a1
[0002f43c] 7003                      moveq.l    #3,d0
[0002f43e] 41eb 0288                 lea.l      648(a3),a0
[0002f442] 4eb9 0005 e010            jsr        $0005E010
[0002f448] 43ee 001c                 lea.l      28(a6),a1
[0002f44c] 7003                      moveq.l    #3,d0
[0002f44e] 41eb 02a0                 lea.l      672(a3),a0
[0002f452] 4eb9 0005 e010            jsr        $0005E010
[0002f458] 4856                      pea.l      (a6)
[0002f45a] 226f 0004                 movea.l    4(a7),a1
[0002f45e] 2052                      movea.l    (a2),a0
[0002f460] 4eb9 0003 39be            jsr        $000339BE
[0002f466] 584f                      addq.w     #4,a7
[0002f468] 2a48                      movea.l    a0,a5
[0002f46a] 200d                      move.l     a5,d0
[0002f46c] 6704                      beq.s      $0002F472
[0002f46e] 2940 0014                 move.l     d0,20(a4)
[0002f472] 4eb9 0002 d91e            jsr        $0002D91E
[0002f478] 4fef 0024                 lea.l      36(a7),a7
[0002f47c] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[0002f480] 4e75                      rts
edus_list:
[0002f482] 2f0a                      move.l     a2,-(a7)
[0002f484] 2f0b                      move.l     a3,-(a7)
[0002f486] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f48c] 2468 0258                 movea.l    600(a0),a2
[0002f490] 2052                      movea.l    (a2),a0
[0002f492] 006a 0004 0054            ori.w      #$0004,84(a2)
[0002f498] 47f9 000c 2ade            lea.l      $000C2ADE,a3
[0002f49e] 2690                      move.l     (a0),(a3)
[0002f4a0] 2250                      movea.l    (a0),a1
[0002f4a2] 2769 003c 0004            move.l     60(a1),4(a3)
[0002f4a8] 204b                      movea.l    a3,a0
[0002f4aa] 2279 000c 1880            movea.l    $000C1880,a1
[0002f4b0] 4e91                      jsr        (a1)
[0002f4b2] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[0002f4b8] 265f                      movea.l    (a7)+,a3
[0002f4ba] 245f                      movea.l    (a7)+,a2
[0002f4bc] 4e75                      rts
accept:
[0002f4be] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0002f4c2] 594f                      subq.w     #4,a7
[0002f4c4] 3800                      move.w     d0,d4
[0002f4c6] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f4cc] 2668 0258                 movea.l    600(a0),a3
[0002f4d0] 286b 0014                 movea.l    20(a3),a4
[0002f4d4] 2a68 0240                 movea.l    576(a0),a5
[0002f4d8] 4268 0248                 clr.w      584(a0)
[0002f4dc] 4eb9 0004 484c            jsr        $0004484C
[0002f4e2] 3600                      move.w     d0,d3
[0002f4e4] 6f74                      ble.s      $0002F55A
[0002f4e6] 48c0                      ext.l      d0
[0002f4e8] 2200                      move.l     d0,d1
[0002f4ea] d281                      add.l      d1,d1
[0002f4ec] d280                      add.l      d0,d1
[0002f4ee] e789                      lsl.l      #3,d1
[0002f4f0] 246d 0014                 movea.l    20(a5),a2
[0002f4f4] 45f2 1818                 lea.l      24(a2,d1.l),a2
[0002f4f8] 0c6a 271c 0016            cmpi.w     #$271C,22(a2)
[0002f4fe] 6714                      beq.s      $0002F514
[0002f500] 4a44                      tst.w      d4
[0002f502] 6756                      beq.s      $0002F55A
[0002f504] 0c6a 2724 0016            cmpi.w     #$2724,22(a2)
[0002f50a] 6708                      beq.s      $0002F514
[0002f50c] 0c6a 271a 0016            cmpi.w     #$271A,22(a2)
[0002f512] 6646                      bne.s      $0002F55A
[0002f514] 2eaa 000c                 move.l     12(a2),(a7)
[0002f518] 4eb9 0004 b286            jsr        $0004B286
[0002f51e] 2257                      movea.l    (a7),a1
[0002f520] 43e9 0016                 lea.l      22(a1),a1
[0002f524] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f52a] 3028 0260                 move.w     608(a0),d0
[0002f52e] 204c                      movea.l    a4,a0
[0002f530] 4eb9 0004 afe0            jsr        $0004AFE0
[0002f536] 72ff                      moveq.l    #-1,d1
[0002f538] 2079 0010 1f12            movea.l    ACSblk,a0
[0002f53e] 3028 0260                 move.w     608(a0),d0
[0002f542] 226b 0066                 movea.l    102(a3),a1
[0002f546] 204b                      movea.l    a3,a0
[0002f548] 4e91                      jsr        (a1)
[0002f54a] 4eb9 0004 b33c            jsr        $0004B33C
[0002f550] 3003                      move.w     d3,d0
[0002f552] 204d                      movea.l    a5,a0
[0002f554] 4eb9 0004 492a            jsr        $0004492A
[0002f55a] 584f                      addq.w     #4,a7
[0002f55c] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0002f560] 4e75                      rts
edus_ref:
[0002f562] 4240                      clr.w      d0
[0002f564] 6100 ff58                 bsr        $0002F4BE
[0002f568] 4e75                      rts
edus_ptr:
[0002f56a] 7001                      moveq.l    #1,d0
[0002f56c] 6100 ff50                 bsr        $0002F4BE
[0002f570] 4e75                      rts
set_user:
[0002f572] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002f576] 4fef fefe                 lea.l      -258(a7),a7
[0002f57a] 2848                      movea.l    a0,a4
[0002f57c] 4bf9 000b d248            lea.l      $000BD248,a5
[0002f582] 41ed fcb8                 lea.l      -840(a5),a0
[0002f586] 4eb9 0004 9a5c            jsr        $00049A5C
[0002f58c] 2448                      movea.l    a0,a2
[0002f58e] 200a                      move.l     a2,d0
[0002f590] 6606                      bne.s      $0002F598
[0002f592] 91c8                      suba.l     a0,a0
[0002f594] 6000 0162                 bra        $0002F6F8
[0002f598] 286c 0014                 movea.l    20(a4),a4
[0002f59c] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002f5a2] 700f                      moveq.l    #15,d0
[0002f5a4] 224a                      movea.l    a2,a1
[0002f5a6] 2053                      movea.l    (a3),a0
[0002f5a8] 2068 0258                 movea.l    600(a0),a0
[0002f5ac] 4eb9 0002 f23c            jsr        $0002F23C
[0002f5b2] 7011                      moveq.l    #17,d0
[0002f5b4] 224a                      movea.l    a2,a1
[0002f5b6] 2053                      movea.l    (a3),a0
[0002f5b8] 2068 0258                 movea.l    600(a0),a0
[0002f5bc] 4eb9 0002 f23c            jsr        $0002F23C
[0002f5c2] 7013                      moveq.l    #19,d0
[0002f5c4] 224a                      movea.l    a2,a1
[0002f5c6] 2053                      movea.l    (a3),a0
[0002f5c8] 2068 0258                 movea.l    600(a0),a0
[0002f5cc] 4eb9 0002 f23c            jsr        $0002F23C
[0002f5d2] 7015                      moveq.l    #21,d0
[0002f5d4] 224a                      movea.l    a2,a1
[0002f5d6] 2053                      movea.l    (a3),a0
[0002f5d8] 2068 0258                 movea.l    600(a0),a0
[0002f5dc] 4eb9 0002 f23c            jsr        $0002F23C
[0002f5e2] 7017                      moveq.l    #23,d0
[0002f5e4] 224a                      movea.l    a2,a1
[0002f5e6] 2053                      movea.l    (a3),a0
[0002f5e8] 2068 0258                 movea.l    600(a0),a0
[0002f5ec] 4eb9 0002 f23c            jsr        $0002F23C
[0002f5f2] 7019                      moveq.l    #25,d0
[0002f5f4] 224a                      movea.l    a2,a1
[0002f5f6] 2053                      movea.l    (a3),a0
[0002f5f8] 2068 0258                 movea.l    600(a0),a0
[0002f5fc] 4eb9 0002 f23c            jsr        $0002F23C
[0002f602] 701b                      moveq.l    #27,d0
[0002f604] 224a                      movea.l    a2,a1
[0002f606] 2053                      movea.l    (a3),a0
[0002f608] 2068 0258                 movea.l    600(a0),a0
[0002f60c] 4eb9 0002 f23c            jsr        $0002F23C
[0002f612] 701c                      moveq.l    #28,d0
[0002f614] 224a                      movea.l    a2,a1
[0002f616] 2053                      movea.l    (a3),a0
[0002f618] 2068 0258                 movea.l    600(a0),a0
[0002f61c] 4eb9 0002 f23c            jsr        $0002F23C
[0002f622] 266c 0004                 movea.l    4(a4),a3
[0002f626] 43d7                      lea.l      (a7),a1
[0002f628] 2053                      movea.l    (a3),a0
[0002f62a] 4eb9 0001 3fb6            jsr        $00013FB6
[0002f630] 43d7                      lea.l      (a7),a1
[0002f632] 7004                      moveq.l    #4,d0
[0002f634] 41ea 0168                 lea.l      360(a2),a0
[0002f638] 4eb9 0005 e010            jsr        $0005E010
[0002f63e] 43d7                      lea.l      (a7),a1
[0002f640] 206b 0004                 movea.l    4(a3),a0
[0002f644] 4eb9 0001 3fb6            jsr        $00013FB6
[0002f64a] 43d7                      lea.l      (a7),a1
[0002f64c] 7004                      moveq.l    #4,d0
[0002f64e] 41ea 0198                 lea.l      408(a2),a0
[0002f652] 4eb9 0005 e010            jsr        $0005E010
[0002f658] 43d7                      lea.l      (a7),a1
[0002f65a] 206b 0008                 movea.l    8(a3),a0
[0002f65e] 4eb9 0001 3fb6            jsr        $00013FB6
[0002f664] 43d7                      lea.l      (a7),a1
[0002f666] 7004                      moveq.l    #4,d0
[0002f668] 41ea 01c8                 lea.l      456(a2),a0
[0002f66c] 4eb9 0005 e010            jsr        $0005E010
[0002f672] 43d7                      lea.l      (a7),a1
[0002f674] 206b 000c                 movea.l    12(a3),a0
[0002f678] 4eb9 0001 3fb6            jsr        $00013FB6
[0002f67e] 43d7                      lea.l      (a7),a1
[0002f680] 7004                      moveq.l    #4,d0
[0002f682] 41ea 01f8                 lea.l      504(a2),a0
[0002f686] 4eb9 0005 e010            jsr        $0005E010
[0002f68c] 43d7                      lea.l      (a7),a1
[0002f68e] 206b 0010                 movea.l    16(a3),a0
[0002f692] 4eb9 0001 3fb6            jsr        $00013FB6
[0002f698] 43d7                      lea.l      (a7),a1
[0002f69a] 7004                      moveq.l    #4,d0
[0002f69c] 41ea 0228                 lea.l      552(a2),a0
[0002f6a0] 4eb9 0005 e010            jsr        $0005E010
[0002f6a6] 43d7                      lea.l      (a7),a1
[0002f6a8] 206b 0014                 movea.l    20(a3),a0
[0002f6ac] 4eb9 0001 3fb6            jsr        $00013FB6
[0002f6b2] 43d7                      lea.l      (a7),a1
[0002f6b4] 7004                      moveq.l    #4,d0
[0002f6b6] 41ea 0258                 lea.l      600(a2),a0
[0002f6ba] 4eb9 0005 e010            jsr        $0005E010
[0002f6c0] 43d7                      lea.l      (a7),a1
[0002f6c2] 206b 0018                 movea.l    24(a3),a0
[0002f6c6] 4eb9 0001 3fd8            jsr        $00013FD8
[0002f6cc] 43d7                      lea.l      (a7),a1
[0002f6ce] 7004                      moveq.l    #4,d0
[0002f6d0] 41ea 0288                 lea.l      648(a2),a0
[0002f6d4] 4eb9 0005 e010            jsr        $0005E010
[0002f6da] 43d7                      lea.l      (a7),a1
[0002f6dc] 206b 001c                 movea.l    28(a3),a0
[0002f6e0] 4eb9 0001 3fd8            jsr        $00013FD8
[0002f6e6] 43d7                      lea.l      (a7),a1
[0002f6e8] 7004                      moveq.l    #4,d0
[0002f6ea] 41ea 02a0                 lea.l      672(a2),a0
[0002f6ee] 4eb9 0005 e010            jsr        $0005E010
[0002f6f4] 2a8a                      move.l     a2,(a5)
[0002f6f6] 204d                      movea.l    a5,a0
[0002f6f8] 4fef 0102                 lea.l      258(a7),a7
[0002f6fc] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002f700] 4e75                      rts
