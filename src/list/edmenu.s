add_men:
[00033e50] 48e7 003c                 movem.l    a2-a5,-(a7)
[00033e54] 2448                      movea.l    a0,a2
[00033e56] 2849                      movea.l    a1,a4
[00033e58] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033e5e] 266a 001c                 movea.l    28(a2),a3
[00033e62] 7038                      moveq.l    #56,d0
[00033e64] 204b                      movea.l    a3,a0
[00033e66] 4eb9 0001 62aa            jsr        $000162AA
[00033e6c] 4a40                      tst.w      d0
[00033e6e] 6610                      bne.s      $00033E80
[00033e70] 224c                      movea.l    a4,a1
[00033e72] 204a                      movea.l    a2,a0
[00033e74] 4eb9 0003 3eac            jsr        $00033EAC
[00033e7a] 2a48                      movea.l    a0,a5
[00033e7c] 200d                      move.l     a5,d0
[00033e7e] 6604                      bne.s      $00033E84
[00033e80] 91c8                      suba.l     a0,a0
[00033e82] 6022                      bra.s      $00033EA6
[00033e84] 2f39 000c 2824            move.l     $000C2824,-(a7)
[00033e8a] 486c 0016                 pea.l      22(a4)
[00033e8e] 224d                      movea.l    a5,a1
[00033e90] 204a                      movea.l    a2,a0
[00033e92] 4eb9 0001 6448            jsr        $00016448
[00033e98] 504f                      addq.w     #8,a7
[00033e9a] 224d                      movea.l    a5,a1
[00033e9c] 204b                      movea.l    a3,a0
[00033e9e] 4eb9 0003 1a94            jsr        $00031A94
[00033ea4] 204d                      movea.l    a5,a0
[00033ea6] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00033eaa] 4e75                      rts
copy_men:
[00033eac] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[00033eb0] 2648                      movea.l    a0,a3
[00033eb2] 2449                      movea.l    a1,a2
[00033eb4] 202a 000e                 move.l     14(a2),d0
[00033eb8] 4eb9 0001 6230            jsr        $00016230
[00033ebe] 2848                      movea.l    a0,a4
[00033ec0] 200c                      move.l     a4,d0
[00033ec2] 6604                      bne.s      $00033EC8
[00033ec4] 91c8                      suba.l     a0,a0
[00033ec6] 6046                      bra.s      $00033F0E
[00033ec8] 202a 000e                 move.l     14(a2),d0
[00033ecc] 7238                      moveq.l    #56,d1
[00033ece] 4eb9 0007 769e            jsr        $0007769E
[00033ed4] 2600                      move.l     d0,d3
[00033ed6] 2a6a 0004                 movea.l    4(a2),a5
[00033eda] 2c6c 0004                 movea.l    4(a4),a6
[00033ede] 4244                      clr.w      d4
[00033ee0] 6020                      bra.s      $00033F02
[00033ee2] 3204                      move.w     d4,d1
[00033ee4] 48c1                      ext.l      d1
[00033ee6] 2001                      move.l     d1,d0
[00033ee8] e788                      lsl.l      #3,d0
[00033eea] 9081                      sub.l      d1,d0
[00033eec] e788                      lsl.l      #3,d0
[00033eee] 4875 0800                 pea.l      0(a5,d0.l)
[00033ef2] 43f6 0800                 lea.l      0(a6,d0.l),a1
[00033ef6] 204b                      movea.l    a3,a0
[00033ef8] 4eb9 0002 b5ea            jsr        $0002B5EA
[00033efe] 584f                      addq.w     #4,a7
[00033f00] 5244                      addq.w     #1,d4
[00033f02] b644                      cmp.w      d4,d3
[00033f04] 6edc                      bgt.s      $00033EE2
[00033f06] 296a 000e 000e            move.l     14(a2),14(a4)
[00033f0c] 204c                      movea.l    a4,a0
[00033f0e] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00033f12] 4e75                      rts
del_men:
[00033f14] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00033f18] 2448                      movea.l    a0,a2
[00033f1a] 2649                      movea.l    a1,a3
[00033f1c] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033f22] 536b 0036                 subq.w     #1,54(a3)
[00033f26] 302b 0036                 move.w     54(a3),d0
[00033f2a] 6e5e                      bgt.s      $00033F8A
[00033f2c] 286b 0012                 movea.l    18(a3),a4
[00033f30] 220c                      move.l     a4,d1
[00033f32] 670c                      beq.s      $00033F40
[00033f34] 2a6c 0004                 movea.l    4(a4),a5
[00033f38] 204c                      movea.l    a4,a0
[00033f3a] 7002                      moveq.l    #2,d0
[00033f3c] 93c9                      suba.l     a1,a1
[00033f3e] 4e95                      jsr        (a5)
[00033f40] 202b 000e                 move.l     14(a3),d0
[00033f44] 7238                      moveq.l    #56,d1
[00033f46] 4eb9 0007 769e            jsr        $0007769E
[00033f4c] 2600                      move.l     d0,d3
[00033f4e] 286b 0004                 movea.l    4(a3),a4
[00033f52] 4244                      clr.w      d4
[00033f54] 601a                      bra.s      $00033F70
[00033f56] 3204                      move.w     d4,d1
[00033f58] 48c1                      ext.l      d1
[00033f5a] 2001                      move.l     d1,d0
[00033f5c] e788                      lsl.l      #3,d0
[00033f5e] 9081                      sub.l      d1,d0
[00033f60] e788                      lsl.l      #3,d0
[00033f62] 43f4 0800                 lea.l      0(a4,d0.l),a1
[00033f66] 204a                      movea.l    a2,a0
[00033f68] 4eb9 0002 b8b6            jsr        $0002B8B6
[00033f6e] 5244                      addq.w     #1,d4
[00033f70] b644                      cmp.w      d4,d3
[00033f72] 6ee2                      bgt.s      $00033F56
[00033f74] 224b                      movea.l    a3,a1
[00033f76] 206a 001c                 movea.l    28(a2),a0
[00033f7a] 4eb9 0003 1b00            jsr        $00031B00
[00033f80] 224b                      movea.l    a3,a1
[00033f82] 204a                      movea.l    a2,a0
[00033f84] 4eb9 0001 61d4            jsr        $000161D4
[00033f8a] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00033f8e] 4e75                      rts
new_work:
[00033f90] 303c 2711                 move.w     #$2711,d0
[00033f94] 2279 000b c930            movea.l    $000BC930,a1
[00033f9a] 4eb9 0003 24b6            jsr        $000324B6
[00033fa0] 4e75                      rts
