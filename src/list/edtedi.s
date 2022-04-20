add_tedinfo:
[00034c54] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00034c58] 514f                      subq.w     #8,a7
[00034c5a] 2448                      movea.l    a0,a2
[00034c5c] 2f49 0004                 move.l     a1,4(a7)
[00034c60] 006a 0001 0006            ori.w      #$0001,6(a2)
[00034c66] 206a 0028                 movea.l    40(a2),a0
[00034c6a] 2ea8 0004                 move.l     4(a0),(a7)
[00034c6e] 2a69 0004                 movea.l    4(a1),a5
[00034c72] 7006                      moveq.l    #6,d0
[00034c74] 2279 0010 1f12            movea.l    ACSblk,a1
[00034c7a] c069 0266                 and.w      614(a1),d0
[00034c7e] 5d40                      subq.w     #6,d0
[00034c80] 6700 009e                 beq        $00034D20
[00034c84] 2628 000e                 move.l     14(a0),d3
[00034c88] e48b                      lsr.l      #2,d3
[00034c8a] 4244                      clr.w      d4
[00034c8c] 6000 008c                 bra        $00034D1A
[00034c90] 3004                      move.w     d4,d0
[00034c92] 48c0                      ext.l      d0
[00034c94] e588                      lsl.l      #2,d0
[00034c96] 2057                      movea.l    (a7),a0
[00034c98] 2870 0800                 movea.l    0(a0,d0.l),a4
[00034c9c] 266c 0004                 movea.l    4(a4),a3
[00034ca0] 322b 000c                 move.w     12(a3),d1
[00034ca4] b26d 000c                 cmp.w      12(a5),d1
[00034ca8] 666e                      bne.s      $00034D18
[00034caa] 342b 0010                 move.w     16(a3),d2
[00034cae] b46d 0010                 cmp.w      16(a5),d2
[00034cb2] 6664                      bne.s      $00034D18
[00034cb4] 302b 0012                 move.w     18(a3),d0
[00034cb8] b06d 0012                 cmp.w      18(a5),d0
[00034cbc] 665a                      bne.s      $00034D18
[00034cbe] 322b 0016                 move.w     22(a3),d1
[00034cc2] b26d 0016                 cmp.w      22(a5),d1
[00034cc6] 6650                      bne.s      $00034D18
[00034cc8] 2255                      movea.l    (a5),a1
[00034cca] 2269 0004                 movea.l    4(a1),a1
[00034cce] 2053                      movea.l    (a3),a0
[00034cd0] 2068 0004                 movea.l    4(a0),a0
[00034cd4] 4eb9 0007 68fe            jsr        $000768FE
[00034cda] 4a40                      tst.w      d0
[00034cdc] 663a                      bne.s      $00034D18
[00034cde] 206d 0004                 movea.l    4(a5),a0
[00034ce2] 2268 0004                 movea.l    4(a0),a1
[00034ce6] 206b 0004                 movea.l    4(a3),a0
[00034cea] 2068 0004                 movea.l    4(a0),a0
[00034cee] 4eb9 0007 68fe            jsr        $000768FE
[00034cf4] 4a40                      tst.w      d0
[00034cf6] 6620                      bne.s      $00034D18
[00034cf8] 206d 0008                 movea.l    8(a5),a0
[00034cfc] 2268 0004                 movea.l    4(a0),a1
[00034d00] 206b 0008                 movea.l    8(a3),a0
[00034d04] 2068 0004                 movea.l    4(a0),a0
[00034d08] 4eb9 0007 68fe            jsr        $000768FE
[00034d0e] 4a40                      tst.w      d0
[00034d10] 6606                      bne.s      $00034D18
[00034d12] 526c 0036                 addq.w     #1,54(a4)
[00034d16] 6044                      bra.s      $00034D5C
[00034d18] 5244                      addq.w     #1,d4
[00034d1a] b644                      cmp.w      d4,d3
[00034d1c] 6e00 ff72                 bgt        $00034C90
[00034d20] 226f 0004                 movea.l    4(a7),a1
[00034d24] 204a                      movea.l    a2,a0
[00034d26] 4eb9 0003 4e30            jsr        $00034E30
[00034d2c] 2848                      movea.l    a0,a4
[00034d2e] 200c                      move.l     a4,d0
[00034d30] 6604                      bne.s      $00034D36
[00034d32] 91c8                      suba.l     a0,a0
[00034d34] 6028                      bra.s      $00034D5E
[00034d36] 2f39 000c 2cc2            move.l     $000C2CC2,-(a7)
[00034d3c] 206f 0008                 movea.l    8(a7),a0
[00034d40] 4868 0016                 pea.l      22(a0)
[00034d44] 224c                      movea.l    a4,a1
[00034d46] 204a                      movea.l    a2,a0
[00034d48] 4eb9 0001 6448            jsr        $00016448
[00034d4e] 504f                      addq.w     #8,a7
[00034d50] 224c                      movea.l    a4,a1
[00034d52] 206a 0028                 movea.l    40(a2),a0
[00034d56] 4eb9 0003 1a94            jsr        $00031A94
[00034d5c] 204c                      movea.l    a4,a0
[00034d5e] 504f                      addq.w     #8,a7
[00034d60] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00034d64] 4e75                      rts
del_tedinfo:
[00034d66] 48e7 0038                 movem.l    a2-a4,-(a7)
[00034d6a] 2448                      movea.l    a0,a2
[00034d6c] 2649                      movea.l    a1,a3
[00034d6e] 006a 0001 0006            ori.w      #$0001,6(a2)
[00034d74] 536b 0036                 subq.w     #1,54(a3)
[00034d78] 302b 0036                 move.w     54(a3),d0
[00034d7c] 6e3a                      bgt.s      $00034DB8
[00034d7e] 286b 0004                 movea.l    4(a3),a4
[00034d82] 2254                      movea.l    (a4),a1
[00034d84] 4eb9 0003 47e8            jsr        $000347E8
[00034d8a] 226c 0004                 movea.l    4(a4),a1
[00034d8e] 204a                      movea.l    a2,a0
[00034d90] 4eb9 0003 47e8            jsr        $000347E8
[00034d96] 226c 0008                 movea.l    8(a4),a1
[00034d9a] 204a                      movea.l    a2,a0
[00034d9c] 4eb9 0003 47e8            jsr        $000347E8
[00034da2] 224b                      movea.l    a3,a1
[00034da4] 206a 0028                 movea.l    40(a2),a0
[00034da8] 4eb9 0003 1b00            jsr        $00031B00
[00034dae] 224b                      movea.l    a3,a1
[00034db0] 204a                      movea.l    a2,a0
[00034db2] 4eb9 0001 61d4            jsr        $000161D4
[00034db8] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00034dbc] 4e75                      rts
dup_tedinfo:
[00034dbe] 48e7 003c                 movem.l    a2-a5,-(a7)
[00034dc2] 2848                      movea.l    a0,a4
[00034dc4] 2449                      movea.l    a1,a2
[00034dc6] 47f9 000c 2cdc            lea.l      $000C2CDC,a3
[00034dcc] 701c                      moveq.l    #28,d0
[00034dce] 224a                      movea.l    a2,a1
[00034dd0] 204b                      movea.l    a3,a0
[00034dd2] 4eb9 0007 6f44            jsr        $00076F44
[00034dd8] 2252                      movea.l    (a2),a1
[00034dda] 204c                      movea.l    a4,a0
[00034ddc] 4eb9 0003 483c            jsr        $0003483C
[00034de2] 2a48                      movea.l    a0,a5
[00034de4] 536d 0036                 subq.w     #1,54(a5)
[00034de8] 2688                      move.l     a0,(a3)
[00034dea] 226a 0004                 movea.l    4(a2),a1
[00034dee] 204c                      movea.l    a4,a0
[00034df0] 4eb9 0003 483c            jsr        $0003483C
[00034df6] 2a48                      movea.l    a0,a5
[00034df8] 536d 0036                 subq.w     #1,54(a5)
[00034dfc] 2748 0004                 move.l     a0,4(a3)
[00034e00] 226a 0008                 movea.l    8(a2),a1
[00034e04] 204c                      movea.l    a4,a0
[00034e06] 4eb9 0003 483c            jsr        $0003483C
[00034e0c] 2a48                      movea.l    a0,a5
[00034e0e] 536d 0036                 subq.w     #1,54(a5)
[00034e12] 2748 0008                 move.l     a0,8(a3)
[00034e16] 701c                      moveq.l    #28,d0
[00034e18] 2740 0026                 move.l     d0,38(a3)
[00034e1c] 2740 002a                 move.l     d0,42(a3)
[00034e20] 43eb 001c                 lea.l      28(a3),a1
[00034e24] 204c                      movea.l    a4,a0
[00034e26] 6100 fe2c                 bsr        $00034C54
[00034e2a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00034e2e] 4e75                      rts
copy_tedi:
[00034e30] 48e7 003c                 movem.l    a2-a5,-(a7)
[00034e34] 2448                      movea.l    a0,a2
[00034e36] 2849                      movea.l    a1,a4
[00034e38] 701c                      moveq.l    #28,d0
[00034e3a] 4eb9 0001 6230            jsr        $00016230
[00034e40] 2648                      movea.l    a0,a3
[00034e42] 200b                      move.l     a3,d0
[00034e44] 6604                      bne.s      $00034E4A
[00034e46] 91c8                      suba.l     a0,a0
[00034e48] 604a                      bra.s      $00034E94
[00034e4a] 286c 0004                 movea.l    4(a4),a4
[00034e4e] 2a6b 0004                 movea.l    4(a3),a5
[00034e52] 701c                      moveq.l    #28,d0
[00034e54] 224c                      movea.l    a4,a1
[00034e56] 204d                      movea.l    a5,a0
[00034e58] 4eb9 0007 6f44            jsr        $00076F44
[00034e5e] 277c 0000 001c 000e       move.l     #$0000001C,14(a3)
[00034e66] 2254                      movea.l    (a4),a1
[00034e68] 204a                      movea.l    a2,a0
[00034e6a] 4eb9 0003 461e            jsr        $0003461E
[00034e70] 2a88                      move.l     a0,(a5)
[00034e72] 226c 0004                 movea.l    4(a4),a1
[00034e76] 204a                      movea.l    a2,a0
[00034e78] 4eb9 0003 461e            jsr        $0003461E
[00034e7e] 2b48 0004                 move.l     a0,4(a5)
[00034e82] 226c 0008                 movea.l    8(a4),a1
[00034e86] 204a                      movea.l    a2,a0
[00034e88] 4eb9 0003 461e            jsr        $0003461E
[00034e8e] 2b48 0008                 move.l     a0,8(a5)
[00034e92] 204b                      movea.l    a3,a0
[00034e94] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00034e98] 4e75                      rts
new_work:
[00034e9a] 303c 271b                 move.w     #$271B,d0
[00034e9e] 2279 000a 758e            movea.l    $000A758E,a1
[00034ea4] 4eb9 0003 24b6            jsr        $000324B6
[00034eaa] 4e75                      rts
