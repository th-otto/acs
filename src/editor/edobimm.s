edoim_new:
[0002fe6a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002fe6e] 594f                      subq.w     #4,a7
[0002fe70] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002fe76] 2250                      movea.l    (a0),a1
[0002fe78] 2469 0258                 movea.l    600(a1),a2
[0002fe7c] 266a 0014                 movea.l    20(a2),a3
[0002fe80] 2869 0240                 movea.l    576(a1),a4
[0002fe84] 4269 0248                 clr.w      584(a1)
[0002fe88] 4eb9 0004 484c            jsr        $0004484C
[0002fe8e] 3600                      move.w     d0,d3
[0002fe90] 6f50                      ble.s      $0002FEE2
[0002fe92] 48c0                      ext.l      d0
[0002fe94] 2200                      move.l     d0,d1
[0002fe96] d281                      add.l      d1,d1
[0002fe98] d280                      add.l      d0,d1
[0002fe9a] e789                      lsl.l      #3,d1
[0002fe9c] 206c 0014                 movea.l    20(a4),a0
[0002fea0] 41f0 1818                 lea.l      24(a0,d1.l),a0
[0002fea4] 0c68 2721 0016            cmpi.w     #$2721,22(a0)
[0002feaa] 6636                      bne.s      $0002FEE2
[0002feac] 2ea8 000c                 move.l     12(a0),(a7)
[0002feb0] 4eb9 0004 b286            jsr        $0004B286
[0002feb6] 2257                      movea.l    (a7),a1
[0002feb8] 43e9 0016                 lea.l      22(a1),a1
[0002febc] 7002                      moveq.l    #2,d0
[0002febe] 204b                      movea.l    a3,a0
[0002fec0] 4eb9 0004 afe0            jsr        $0004AFE0
[0002fec6] 72ff                      moveq.l    #-1,d1
[0002fec8] 7002                      moveq.l    #2,d0
[0002feca] 204a                      movea.l    a2,a0
[0002fecc] 226a 0066                 movea.l    102(a2),a1
[0002fed0] 4e91                      jsr        (a1)
[0002fed2] 4eb9 0004 b33c            jsr        $0004B33C
[0002fed8] 3003                      move.w     d3,d0
[0002feda] 204c                      movea.l    a4,a0
[0002fedc] 4eb9 0004 492a            jsr        $0004492A
[0002fee2] 584f                      addq.w     #4,a7
[0002fee4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002fee8] 4e75                      rts
edoim_edit:
[0002feea] 2f0a                      move.l     a2,-(a7)
[0002feec] 2f0b                      move.l     a3,-(a7)
[0002feee] 514f                      subq.w     #8,a7
[0002fef0] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fef6] 2468 0258                 movea.l    600(a0),a2
[0002fefa] 2652                      movea.l    (a2),a3
[0002fefc] 226a 0014                 movea.l    20(a2),a1
[0002ff00] 2069 003c                 movea.l    60(a1),a0
[0002ff04] 2250                      movea.l    (a0),a1
[0002ff06] 2053                      movea.l    (a3),a0
[0002ff08] 2068 0030                 movea.l    48(a0),a0
[0002ff0c] 4eb9 0003 1a5c            jsr        $00031A5C
[0002ff12] 2008                      move.l     a0,d0
[0002ff14] 671c                      beq.s      $0002FF32
[0002ff16] 006a 0004 0054            ori.w      #$0004,84(a2)
[0002ff1c] 2e93                      move.l     (a3),(a7)
[0002ff1e] 2f40 0004                 move.l     d0,4(a7)
[0002ff22] 41d7                      lea.l      (a7),a0
[0002ff24] 2279 000a 5902            movea.l    $000A5902,a1
[0002ff2a] 4e91                      jsr        (a1)
[0002ff2c] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[0002ff32] 504f                      addq.w     #8,a7
[0002ff34] 265f                      movea.l    (a7)+,a3
[0002ff36] 245f                      movea.l    (a7)+,a2
[0002ff38] 4e75                      rts
edoim_ok:
[0002ff3a] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002ff3e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002ff44] 2868 0258                 movea.l    600(a0),a4
[0002ff48] 2a54                      movea.l    (a4),a5
[0002ff4a] 2455                      movea.l    (a5),a2
[0002ff4c] 006a 0001 0006            ori.w      #$0001,6(a2)
[0002ff52] 206d 0004                 movea.l    4(a5),a0
[0002ff56] 2668 0004                 movea.l    4(a0),a3
[0002ff5a] 322d 000a                 move.w     10(a5),d1
[0002ff5e] 48c1                      ext.l      d1
[0002ff60] 2001                      move.l     d1,d0
[0002ff62] e788                      lsl.l      #3,d0
[0002ff64] 9081                      sub.l      d1,d0
[0002ff66] e788                      lsl.l      #3,d0
[0002ff68] d7c0                      adda.l     d0,a3
[0002ff6a] 226c 0014                 movea.l    20(a4),a1
[0002ff6e] 2a69 003c                 movea.l    60(a1),a5
[0002ff72] 2a55                      movea.l    (a5),a5
[0002ff74] 206a 0030                 movea.l    48(a2),a0
[0002ff78] 224d                      movea.l    a5,a1
[0002ff7a] 4eb9 0003 1a5c            jsr        $00031A5C
[0002ff80] 2848                      movea.l    a0,a4
[0002ff82] 200c                      move.l     a4,d0
[0002ff84] 6610                      bne.s      $0002FF96
[0002ff86] 224d                      movea.l    a5,a1
[0002ff88] 41f9 000b e53a            lea.l      $000BE53A,a0
[0002ff8e] 4eb9 0005 ef8c            jsr        $0005EF8C
[0002ff94] 6020                      bra.s      $0002FFB6
[0002ff96] 2a6b 0014                 movea.l    20(a3),a5
[0002ff9a] bbcc                      cmpa.l     a4,a5
[0002ff9c] 6712                      beq.s      $0002FFB0
[0002ff9e] 526c 0036                 addq.w     #1,54(a4)
[0002ffa2] 274c 0014                 move.l     a4,20(a3)
[0002ffa6] 224d                      movea.l    a5,a1
[0002ffa8] 204a                      movea.l    a2,a0
[0002ffaa] 4eb9 0003 343a            jsr        $0003343A
[0002ffb0] 4eb9 0002 d91e            jsr        $0002D91E
[0002ffb6] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002ffba] 4e75                      rts
set_image:
[0002ffbc] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002ffc0] 2648                      movea.l    a0,a3
[0002ffc2] 49f9 000b e792            lea.l      $000BE792,a4
[0002ffc8] 41ec ff10                 lea.l      -240(a4),a0
[0002ffcc] 4eb9 0004 9a5c            jsr        $00049A5C
[0002ffd2] 2448                      movea.l    a0,a2
[0002ffd4] 200a                      move.l     a2,d0
[0002ffd6] 6604                      bne.s      $0002FFDC
[0002ffd8] 91c8                      suba.l     a0,a0
[0002ffda] 6016                      bra.s      $0002FFF2
[0002ffdc] 266b 0014                 movea.l    20(a3),a3
[0002ffe0] 43eb 0016                 lea.l      22(a3),a1
[0002ffe4] 7002                      moveq.l    #2,d0
[0002ffe6] 204a                      movea.l    a2,a0
[0002ffe8] 4eb9 0004 afe0            jsr        $0004AFE0
[0002ffee] 288a                      move.l     a2,(a4)
[0002fff0] 204c                      movea.l    a4,a0
[0002fff2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002fff6] 4e75                      rts
edoim_list:
[0002fff8] 2f0a                      move.l     a2,-(a7)
[0002fffa] 2f0b                      move.l     a3,-(a7)
[0002fffc] 2079 0010 1f12            movea.l    ACSblk,a0
[00030002] 2468 0258                 movea.l    600(a0),a2
[00030006] 2052                      movea.l    (a2),a0
[00030008] 006a 0004 0054            ori.w      #$0004,84(a2)
[0003000e] 47f9 000c 20b8            lea.l      $000C20B8,a3
[00030014] 2690                      move.l     (a0),(a3)
[00030016] 2250                      movea.l    (a0),a1
[00030018] 2769 0030 0004            move.l     48(a1),4(a3)
[0003001e] 204b                      movea.l    a3,a0
[00030020] 2279 000c 1880            movea.l    $000C1880,a1
[00030026] 4e91                      jsr        (a1)
[00030028] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[0003002e] 265f                      movea.l    (a7)+,a3
[00030030] 245f                      movea.l    (a7)+,a2
[00030032] 4e75                      rts
