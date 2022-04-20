edoic_new:
[0002fcac] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002fcb0] 594f                      subq.w     #4,a7
[0002fcb2] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002fcb8] 2250                      movea.l    (a0),a1
[0002fcba] 2469 0258                 movea.l    600(a1),a2
[0002fcbe] 266a 0014                 movea.l    20(a2),a3
[0002fcc2] 2869 0240                 movea.l    576(a1),a4
[0002fcc6] 4269 0248                 clr.w      584(a1)
[0002fcca] 4eb9 0004 484c            jsr        $0004484C
[0002fcd0] 3600                      move.w     d0,d3
[0002fcd2] 6f44                      ble.s      $0002FD18
[0002fcd4] 48c0                      ext.l      d0
[0002fcd6] 2200                      move.l     d0,d1
[0002fcd8] d281                      add.l      d1,d1
[0002fcda] d280                      add.l      d0,d1
[0002fcdc] e789                      lsl.l      #3,d1
[0002fcde] 206c 0014                 movea.l    20(a4),a0
[0002fce2] 41f0 1818                 lea.l      24(a0,d1.l),a0
[0002fce6] 0c68 2720 0016            cmpi.w     #$2720,22(a0)
[0002fcec] 662a                      bne.s      $0002FD18
[0002fcee] 2ea8 000c                 move.l     12(a0),(a7)
[0002fcf2] 2257                      movea.l    (a7),a1
[0002fcf4] 43e9 0016                 lea.l      22(a1),a1
[0002fcf8] 204b                      movea.l    a3,a0
[0002fcfa] 7002                      moveq.l    #2,d0
[0002fcfc] 4eb9 0004 afe0            jsr        $0004AFE0
[0002fd02] 72ff                      moveq.l    #-1,d1
[0002fd04] 7002                      moveq.l    #2,d0
[0002fd06] 204a                      movea.l    a2,a0
[0002fd08] 226a 0066                 movea.l    102(a2),a1
[0002fd0c] 4e91                      jsr        (a1)
[0002fd0e] 3003                      move.w     d3,d0
[0002fd10] 204c                      movea.l    a4,a0
[0002fd12] 4eb9 0004 492a            jsr        $0004492A
[0002fd18] 584f                      addq.w     #4,a7
[0002fd1a] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002fd1e] 4e75                      rts
edoic_edit:
[0002fd20] 2f0a                      move.l     a2,-(a7)
[0002fd22] 2f0b                      move.l     a3,-(a7)
[0002fd24] 514f                      subq.w     #8,a7
[0002fd26] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fd2c] 2468 0258                 movea.l    600(a0),a2
[0002fd30] 2652                      movea.l    (a2),a3
[0002fd32] 226a 0014                 movea.l    20(a2),a1
[0002fd36] 2069 003c                 movea.l    60(a1),a0
[0002fd3a] 2250                      movea.l    (a0),a1
[0002fd3c] 2053                      movea.l    (a3),a0
[0002fd3e] 2068 002c                 movea.l    44(a0),a0
[0002fd42] 4eb9 0003 1a5c            jsr        $00031A5C
[0002fd48] 2008                      move.l     a0,d0
[0002fd4a] 671c                      beq.s      $0002FD68
[0002fd4c] 006a 0004 0054            ori.w      #$0004,84(a2)
[0002fd52] 2e93                      move.l     (a3),(a7)
[0002fd54] 2f40 0004                 move.l     d0,4(a7)
[0002fd58] 41d7                      lea.l      (a7),a0
[0002fd5a] 2279 000a 488a            movea.l    $000A488A,a1
[0002fd60] 4e91                      jsr        (a1)
[0002fd62] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[0002fd68] 504f                      addq.w     #8,a7
[0002fd6a] 265f                      movea.l    (a7)+,a3
[0002fd6c] 245f                      movea.l    (a7)+,a2
[0002fd6e] 4e75                      rts
edoic_ok:
[0002fd70] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002fd74] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fd7a] 2868 0258                 movea.l    600(a0),a4
[0002fd7e] 2a54                      movea.l    (a4),a5
[0002fd80] 2455                      movea.l    (a5),a2
[0002fd82] 006a 0001 0006            ori.w      #$0001,6(a2)
[0002fd88] 206d 0004                 movea.l    4(a5),a0
[0002fd8c] 2668 0004                 movea.l    4(a0),a3
[0002fd90] 322d 000a                 move.w     10(a5),d1
[0002fd94] 48c1                      ext.l      d1
[0002fd96] 2001                      move.l     d1,d0
[0002fd98] e788                      lsl.l      #3,d0
[0002fd9a] 9081                      sub.l      d1,d0
[0002fd9c] e788                      lsl.l      #3,d0
[0002fd9e] d7c0                      adda.l     d0,a3
[0002fda0] 226c 0014                 movea.l    20(a4),a1
[0002fda4] 2a69 003c                 movea.l    60(a1),a5
[0002fda8] 2a55                      movea.l    (a5),a5
[0002fdaa] 206a 002c                 movea.l    44(a2),a0
[0002fdae] 224d                      movea.l    a5,a1
[0002fdb0] 4eb9 0003 1a5c            jsr        $00031A5C
[0002fdb6] 2848                      movea.l    a0,a4
[0002fdb8] 200c                      move.l     a4,d0
[0002fdba] 6610                      bne.s      $0002FDCC
[0002fdbc] 224d                      movea.l    a5,a1
[0002fdbe] 41f9 000b e2ca            lea.l      $000BE2CA,a0
[0002fdc4] 4eb9 0005 ef8c            jsr        $0005EF8C
[0002fdca] 6020                      bra.s      $0002FDEC
[0002fdcc] 2a6b 0014                 movea.l    20(a3),a5
[0002fdd0] bbcc                      cmpa.l     a4,a5
[0002fdd2] 6712                      beq.s      $0002FDE6
[0002fdd4] 526c 0036                 addq.w     #1,54(a4)
[0002fdd8] 274c 0014                 move.l     a4,20(a3)
[0002fddc] 224d                      movea.l    a5,a1
[0002fdde] 204a                      movea.l    a2,a0
[0002fde0] 4eb9 0003 3220            jsr        $00033220
[0002fde6] 4eb9 0002 d91e            jsr        $0002D91E
[0002fdec] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002fdf0] 4e75                      rts
set_icon:
[0002fdf2] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002fdf6] 2648                      movea.l    a0,a3
[0002fdf8] 49f9 000b e522            lea.l      $000BE522,a4
[0002fdfe] 41ec ff10                 lea.l      -240(a4),a0
[0002fe02] 4eb9 0004 9a5c            jsr        $00049A5C
[0002fe08] 2448                      movea.l    a0,a2
[0002fe0a] 200a                      move.l     a2,d0
[0002fe0c] 6604                      bne.s      $0002FE12
[0002fe0e] 91c8                      suba.l     a0,a0
[0002fe10] 6016                      bra.s      $0002FE28
[0002fe12] 266b 0014                 movea.l    20(a3),a3
[0002fe16] 43eb 0016                 lea.l      22(a3),a1
[0002fe1a] 7002                      moveq.l    #2,d0
[0002fe1c] 204a                      movea.l    a2,a0
[0002fe1e] 4eb9 0004 afe0            jsr        $0004AFE0
[0002fe24] 288a                      move.l     a2,(a4)
[0002fe26] 204c                      movea.l    a4,a0
[0002fe28] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002fe2c] 4e75                      rts
edoic_list:
[0002fe2e] 2f0a                      move.l     a2,-(a7)
[0002fe30] 2f0b                      move.l     a3,-(a7)
[0002fe32] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fe38] 2468 0258                 movea.l    600(a0),a2
[0002fe3c] 2052                      movea.l    (a2),a0
[0002fe3e] 006a 0004 0054            ori.w      #$0004,84(a2)
[0002fe44] 47f9 000c 1f14            lea.l      $000C1F14,a3
[0002fe4a] 2690                      move.l     (a0),(a3)
[0002fe4c] 2250                      movea.l    (a0),a1
[0002fe4e] 2769 002c 0004            move.l     44(a1),4(a3)
[0002fe54] 204b                      movea.l    a3,a0
[0002fe56] 2279 000c 1880            movea.l    $000C1880,a1
[0002fe5c] 4e91                      jsr        (a1)
[0002fe5e] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[0002fe64] 265f                      movea.l    (a7)+,a3
[0002fe66] 245f                      movea.l    (a7)+,a2
[0002fe68] 4e75                      rts
