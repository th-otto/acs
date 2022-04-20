init_slider:
[00025b8c] 2f0a                      move.l     a2,-(a7)
[00025b8e] 2f0b                      move.l     a3,-(a7)
[00025b90] 2448                      movea.l    a0,a2
[00025b92] 43f9 000b 12b0            lea.l      $000B12B0,a1
[00025b98] 303c 2329                 move.w     #$2329,d0
[00025b9c] 266a 0004                 movea.l    4(a2),a3
[00025ba0] 4e93                      jsr        (a3)
[00025ba2] 265f                      movea.l    (a7)+,a3
[00025ba4] 245f                      movea.l    (a7)+,a2
[00025ba6] 4e75                      rts
minsize:
[00025ba8] 2f0a                      move.l     a2,-(a7)
[00025baa] 2f0b                      move.l     a3,-(a7)
[00025bac] 266f 000c                 movea.l    12(a7),a3
[00025bb0] 45f9 0010 1f12            lea.l      ACSblk,a2
[00025bb6] 7001                      moveq.l    #1,d0
[00025bb8] c0a8 0004                 and.l      4(a0),d0
[00025bbc] 6716                      beq.s      $00025BD4
[00025bbe] 2052                      movea.l    (a2),a0
[00025bc0] 3228 0012                 move.w     18(a0),d1
[00025bc4] d241                      add.w      d1,d1
[00025bc6] 3281                      move.w     d1,(a1)
[00025bc8] 2052                      movea.l    (a2),a0
[00025bca] 3028 0014                 move.w     20(a0),d0
[00025bce] e548                      lsl.w      #2,d0
[00025bd0] 3680                      move.w     d0,(a3)
[00025bd2] 6014                      bra.s      $00025BE8
[00025bd4] 2052                      movea.l    (a2),a0
[00025bd6] 3228 0012                 move.w     18(a0),d1
[00025bda] 3001                      move.w     d1,d0
[00025bdc] e748                      lsl.w      #3,d0
[00025bde] 9041                      sub.w      d1,d0
[00025be0] 3280                      move.w     d0,(a1)
[00025be2] 2052                      movea.l    (a2),a0
[00025be4] 36a8 0014                 move.w     20(a0),(a3)
[00025be8] 265f                      movea.l    (a7)+,a3
[00025bea] 245f                      movea.l    (a7)+,a2
[00025bec] 4e75                      rts
object_tree:
[00025bee] 48e7 003e                 movem.l    a2-a6,-(a7)
[00025bf2] 594f                      subq.w     #4,a7
[00025bf4] 2648                      movea.l    a0,a3
[00025bf6] 2a49                      movea.l    a1,a5
[00025bf8] 41f9 000b 1022            lea.l      $000B1022,a0
[00025bfe] 4eb9 0004 9a5c            jsr        $00049A5C
[00025c04] 2448                      movea.l    a0,a2
[00025c06] 200a                      move.l     a2,d0
[00025c08] 6700 0146                 beq        $00025D50
[00025c0c] 4eb9 0004 a25e            jsr        $0004A25E
[00025c12] 7002                      moveq.l    #2,d0
[00025c14] 224a                      movea.l    a2,a1
[00025c16] 2079 0010 1f12            movea.l    ACSblk,a0
[00025c1c] 2068 0258                 movea.l    600(a0),a0
[00025c20] 4eb9 0002 f23c            jsr        $0002F23C
[00025c26] 700e                      moveq.l    #14,d0
[00025c28] 224a                      movea.l    a2,a1
[00025c2a] 2079 0010 1f12            movea.l    ACSblk,a0
[00025c30] 2068 0258                 movea.l    600(a0),a0
[00025c34] 4eb9 0002 f23c            jsr        $0002F23C
[00025c3a] 7010                      moveq.l    #16,d0
[00025c3c] 224a                      movea.l    a2,a1
[00025c3e] 2079 0010 1f12            movea.l    ACSblk,a0
[00025c44] 2068 0258                 movea.l    600(a0),a0
[00025c48] 4eb9 0002 f23c            jsr        $0002F23C
[00025c4e] 49ea 0030                 lea.l      48(a2),a4
[00025c52] 7016                      moveq.l    #22,d0
[00025c54] c06d 0008                 and.w      8(a5),d0
[00025c58] 816c 0008                 or.w       d0,8(a4)
[00025c5c] 703f                      moveq.l    #63,d0
[00025c5e] c06d 000a                 and.w      10(a5),d0
[00025c62] 816c 000a                 or.w       d0,10(a4)
[00025c66] 2a6c 000c                 movea.l    12(a4),a5
[00025c6a] 4857                      pea.l      (a7)
[00025c6c] 43f9 000b 1310            lea.l      $000B1310,a1
[00025c72] 2053                      movea.l    (a3),a0
[00025c74] 4eb9 0007 594a            jsr        $0007594A
[00025c7a] 584f                      addq.w     #4,a7
[00025c7c] 2b57 0004                 move.l     (a7),4(a5)
[00025c80] 7001                      moveq.l    #1,d0
[00025c82] c097                      and.l      (a7),d0
[00025c84] 671c                      beq.s      $00025CA2
[00025c86] 4dea 01b0                 lea.l      432(a2),a6
[00025c8a] 2079 0010 1f12            movea.l    ACSblk,a0
[00025c90] 3228 0012                 move.w     18(a0),d1
[00025c94] d241                      add.w      d1,d1
[00025c96] 3941 0014                 move.w     d1,20(a4)
[00025c9a] 396e 0016 0016            move.w     22(a6),22(a4)
[00025ca0] 6016                      bra.s      $00025CB8
[00025ca2] 4dea 01e0                 lea.l      480(a2),a6
[00025ca6] 396e 0014 0014            move.w     20(a6),20(a4)
[00025cac] 2079 0010 1f12            movea.l    ACSblk,a0
[00025cb2] 3968 0014 0016            move.w     20(a0),22(a4)
[00025cb8] 7002                      moveq.l    #2,d0
[00025cba] c097                      and.l      (a7),d0
[00025cbc] 6708                      beq.s      $00025CC6
[00025cbe] 006a 0001 00e2            ori.w      #$0001,226(a2)
[00025cc4] 6006                      bra.s      $00025CCC
[00025cc6] 026a fffe 00e2            andi.w     #$FFFE,226(a2)
[00025ccc] 7004                      moveq.l    #4,d0
[00025cce] c097                      and.l      (a7),d0
[00025cd0] 6708                      beq.s      $00025CDA
[00025cd2] 026a fffe 0112            andi.w     #$FFFE,274(a2)
[00025cd8] 6006                      bra.s      $00025CE0
[00025cda] 006a 0001 0112            ori.w      #$0001,274(a2)
[00025ce0] 206a 015c                 movea.l    348(a2),a0
[00025ce4] 2b68 000c 0018            move.l     12(a0),24(a5)
[00025cea] 206b 0026                 movea.l    38(a3),a0
[00025cee] 4eb9 0004 3a92            jsr        $00043A92
[00025cf4] 4a40                      tst.w      d0
[00025cf6] 6712                      beq.s      $00025D0A
[00025cf8] 43f9 000b 1304            lea.l      $000B1304,a1
[00025cfe] 700e                      moveq.l    #14,d0
[00025d00] 204a                      movea.l    a2,a0
[00025d02] 4eb9 0004 afe0            jsr        $0004AFE0
[00025d08] 600e                      bra.s      $00025D18
[00025d0a] 226b 0026                 movea.l    38(a3),a1
[00025d0e] 700e                      moveq.l    #14,d0
[00025d10] 204a                      movea.l    a2,a0
[00025d12] 4eb9 0004 afe0            jsr        $0004AFE0
[00025d18] 206a 018c                 movea.l    396(a2),a0
[00025d1c] 2b68 000c 001c            move.l     12(a0),28(a5)
[00025d22] 206b 002a                 movea.l    42(a3),a0
[00025d26] 4eb9 0004 3a92            jsr        $00043A92
[00025d2c] 4a40                      tst.w      d0
[00025d2e] 6712                      beq.s      $00025D42
[00025d30] 43f9 000b 1304            lea.l      $000B1304,a1
[00025d36] 7010                      moveq.l    #16,d0
[00025d38] 204a                      movea.l    a2,a0
[00025d3a] 4eb9 0004 afe0            jsr        $0004AFE0
[00025d40] 600e                      bra.s      $00025D50
[00025d42] 226b 002a                 movea.l    42(a3),a1
[00025d46] 7010                      moveq.l    #16,d0
[00025d48] 204a                      movea.l    a2,a0
[00025d4a] 4eb9 0004 afe0            jsr        $0004AFE0
[00025d50] 204a                      movea.l    a2,a0
[00025d52] 584f                      addq.w     #4,a7
[00025d54] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00025d58] 4e75                      rts
test_it:
[00025d5a] 2f0a                      move.l     a2,-(a7)
[00025d5c] 2f0b                      move.l     a3,-(a7)
[00025d5e] 2648                      movea.l    a0,a3
[00025d60] 2449                      movea.l    a1,a2
[00025d62] 22bc 0003 5008            move.l     #$00035008,(a1)
[00025d68] 486a 0004                 pea.l      4(a2)
[00025d6c] 43f9 000b 1310            lea.l      $000B1310,a1
[00025d72] 2050                      movea.l    (a0),a0
[00025d74] 4eb9 0007 594a            jsr        $0007594A
[00025d7a] 584f                      addq.w     #4,a7
[00025d7c] 257c 0003 589a 0008       move.l     #$0003589A,8(a2)
[00025d84] 7000                      moveq.l    #0,d0
[00025d86] 2540 0014                 move.l     d0,20(a2)
[00025d8a] 2540 0010                 move.l     d0,16(a2)
[00025d8e] 2540 000c                 move.l     d0,12(a2)
[00025d92] 206b 0026                 movea.l    38(a3),a0
[00025d96] 4eb9 0004 3a92            jsr        $00043A92
[00025d9c] 4a40                      tst.w      d0
[00025d9e] 6704                      beq.s      $00025DA4
[00025da0] 91c8                      suba.l     a0,a0
[00025da2] 6004                      bra.s      $00025DA8
[00025da4] 206b 0026                 movea.l    38(a3),a0
[00025da8] 2548 0018                 move.l     a0,24(a2)
[00025dac] 206b 002a                 movea.l    42(a3),a0
[00025db0] 4eb9 0004 3a92            jsr        $00043A92
[00025db6] 4a40                      tst.w      d0
[00025db8] 6704                      beq.s      $00025DBE
[00025dba] 91c8                      suba.l     a0,a0
[00025dbc] 6004                      bra.s      $00025DC2
[00025dbe] 206b 002a                 movea.l    42(a3),a0
[00025dc2] 2548 001c                 move.l     a0,28(a2)
[00025dc6] 265f                      movea.l    (a7)+,a3
[00025dc8] 245f                      movea.l    (a7)+,a2
[00025dca] 4e75                      rts
abort:
[00025dcc] 2079 0010 1f12            movea.l    ACSblk,a0
[00025dd2] 2268 0258                 movea.l    600(a0),a1
[00025dd6] 2069 0014                 movea.l    20(a1),a0
[00025dda] 2068 003c                 movea.l    60(a0),a0
[00025dde] 42a8 0018                 clr.l      24(a0)
[00025de2] 42a8 001c                 clr.l      28(a0)
[00025de6] 2079 000b 12f0            movea.l    $000B12F0,a0
[00025dec] 2050                      movea.l    (a0),a0
[00025dee] 4e90                      jsr        (a0)
[00025df0] 4e75                      rts
ok:
[00025df2] 48e7 0038                 movem.l    a2-a4,-(a7)
[00025df6] 4fef ffce                 lea.l      -50(a7),a7
[00025dfa] 2079 0010 1f12            movea.l    ACSblk,a0
[00025e00] 2268 0258                 movea.l    600(a0),a1
[00025e04] 2469 0014                 movea.l    20(a1),a2
[00025e08] 286a 003c                 movea.l    60(a2),a4
[00025e0c] 4857                      pea.l      (a7)
[00025e0e] 43ef 0006                 lea.l      6(a7),a1
[00025e12] 204c                      movea.l    a4,a0
[00025e14] 6100 fd92                 bsr        $00025BA8
[00025e18] 584f                      addq.w     #4,a7
[00025e1a] 47f9 000f f502            lea.l      $000FF502,a3
[00025e20] 2f2c 0004                 move.l     4(a4),-(a7)
[00025e24] 43f9 000b 1310            lea.l      $000B1310,a1
[00025e2a] 204b                      movea.l    a3,a0
[00025e2c] 4eb9 0007 5680            jsr        $00075680
[00025e32] 584f                      addq.w     #4,a7
[00025e34] 49ef 0004                 lea.l      4(a7),a4
[00025e38] 288b                      move.l     a3,(a4)
[00025e3a] 297c 000b 1305 0004       move.l     #$000B1305,4(a4)
[00025e42] 4240                      clr.w      d0
[00025e44] 3940 001c                 move.w     d0,28(a4)
[00025e48] 3940 0012                 move.w     d0,18(a4)
[00025e4c] 3940 0008                 move.w     d0,8(a4)
[00025e50] 7200                      moveq.l    #0,d1
[00025e52] 2941 001e                 move.l     d1,30(a4)
[00025e56] 2941 0014                 move.l     d1,20(a4)
[00025e5a] 2941 000a                 move.l     d1,10(a4)
[00025e5e] 7000                      moveq.l    #0,d0
[00025e60] 2940 0022                 move.l     d0,34(a4)
[00025e64] 2940 0018                 move.l     d0,24(a4)
[00025e68] 2940 000e                 move.l     d0,14(a4)
[00025e6c] 42ac 0026                 clr.l      38(a4)
[00025e70] 42ac 002a                 clr.l      42(a4)
[00025e74] 43ec 0026                 lea.l      38(a4),a1
[00025e78] 7003                      moveq.l    #3,d0
[00025e7a] 41ea 0150                 lea.l      336(a2),a0
[00025e7e] 4eb9 0005 e010            jsr        $0005E010
[00025e84] 206c 0026                 movea.l    38(a4),a0
[00025e88] 4eb9 0004 3a92            jsr        $00043A92
[00025e8e] 4a40                      tst.w      d0
[00025e90] 6704                      beq.s      $00025E96
[00025e92] 42ac 0026                 clr.l      38(a4)
[00025e96] 43ec 002a                 lea.l      42(a4),a1
[00025e9a] 7003                      moveq.l    #3,d0
[00025e9c] 41ea 0180                 lea.l      384(a2),a0
[00025ea0] 4eb9 0005 e010            jsr        $0005E010
[00025ea6] 206c 002a                 movea.l    42(a4),a0
[00025eaa] 4eb9 0004 3a92            jsr        $00043A92
[00025eb0] 4a40                      tst.w      d0
[00025eb2] 6704                      beq.s      $00025EB8
[00025eb4] 42ac 002a                 clr.l      42(a4)
[00025eb8] 3217                      move.w     (a7),d1
[00025eba] 302f 0002                 move.w     2(a7),d0
[00025ebe] 204c                      movea.l    a4,a0
[00025ec0] 2279 000b 12f0            movea.l    $000B12F0,a1
[00025ec6] 2269 0004                 movea.l    4(a1),a1
[00025eca] 4e91                      jsr        (a1)
[00025ecc] 6100 fefe                 bsr        $00025DCC
[00025ed0] 4fef 0032                 lea.l      50(a7),a7
[00025ed4] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00025ed8] 4e75                      rts
horizontal:
[00025eda] 2f0a                      move.l     a2,-(a7)
[00025edc] 45f9 0010 1f12            lea.l      ACSblk,a2
[00025ee2] 2052                      movea.l    (a2),a0
[00025ee4] 2068 025c                 movea.l    604(a0),a0
[00025ee8] 41e8 0030                 lea.l      48(a0),a0
[00025eec] 2268 000c                 movea.l    12(a0),a1
[00025ef0] 7001                      moveq.l    #1,d0
[00025ef2] c0a9 0004                 and.l      4(a1),d0
[00025ef6] 6736                      beq.s      $00025F2E
[00025ef8] 02a9 ffff fffe 0004       andi.l     #$FFFFFFFE,4(a1)
[00025f00] 2252                      movea.l    (a2),a1
[00025f02] 2269 025c                 movea.l    604(a1),a1
[00025f06] 43e9 01e0                 lea.l      480(a1),a1
[00025f0a] 3169 0014 0014            move.w     20(a1),20(a0)
[00025f10] 2252                      movea.l    (a2),a1
[00025f12] 3169 0014 0016            move.w     20(a1),22(a0)
[00025f18] 72ff                      moveq.l    #-1,d1
[00025f1a] 7001                      moveq.l    #1,d0
[00025f1c] 2052                      movea.l    (a2),a0
[00025f1e] 2068 0258                 movea.l    600(a0),a0
[00025f22] 2252                      movea.l    (a2),a1
[00025f24] 2269 0258                 movea.l    600(a1),a1
[00025f28] 2269 0066                 movea.l    102(a1),a1
[00025f2c] 4e91                      jsr        (a1)
[00025f2e] 245f                      movea.l    (a7)+,a2
[00025f30] 4e75                      rts
vertical:
[00025f32] 2f0a                      move.l     a2,-(a7)
[00025f34] 2f0b                      move.l     a3,-(a7)
[00025f36] 45f9 0010 1f12            lea.l      ACSblk,a2
[00025f3c] 2052                      movea.l    (a2),a0
[00025f3e] 2068 025c                 movea.l    604(a0),a0
[00025f42] 41e8 0030                 lea.l      48(a0),a0
[00025f46] 2252                      movea.l    (a2),a1
[00025f48] 2269 025c                 movea.l    604(a1),a1
[00025f4c] 43e9 01b0                 lea.l      432(a1),a1
[00025f50] 2668 000c                 movea.l    12(a0),a3
[00025f54] 7001                      moveq.l    #1,d0
[00025f56] c0ab 0004                 and.l      4(a3),d0
[00025f5a] 6630                      bne.s      $00025F8C
[00025f5c] 00ab 0000 0001 0004       ori.l      #$00000001,4(a3)
[00025f64] 2652                      movea.l    (a2),a3
[00025f66] 302b 0012                 move.w     18(a3),d0
[00025f6a] d040                      add.w      d0,d0
[00025f6c] 3140 0014                 move.w     d0,20(a0)
[00025f70] 3169 0016 0016            move.w     22(a1),22(a0)
[00025f76] 72ff                      moveq.l    #-1,d1
[00025f78] 7001                      moveq.l    #1,d0
[00025f7a] 2052                      movea.l    (a2),a0
[00025f7c] 2068 0258                 movea.l    600(a0),a0
[00025f80] 2252                      movea.l    (a2),a1
[00025f82] 2669 0258                 movea.l    600(a1),a3
[00025f86] 226b 0066                 movea.l    102(a3),a1
[00025f8a] 4e91                      jsr        (a1)
[00025f8c] 265f                      movea.l    (a7)+,a3
[00025f8e] 245f                      movea.l    (a7)+,a2
[00025f90] 4e75                      rts
edsl_3d:
[00025f92] 2079 0010 1f12            movea.l    ACSblk,a0
[00025f98] 2268 025c                 movea.l    604(a0),a1
[00025f9c] 2069 003c                 movea.l    60(a1),a0
[00025fa0] 0aa8 0000 0002 0004       eori.l     #$00000002,4(a0)
[00025fa8] 72ff                      moveq.l    #-1,d1
[00025faa] 7001                      moveq.l    #1,d0
[00025fac] 2079 0010 1f12            movea.l    ACSblk,a0
[00025fb2] 2068 0258                 movea.l    600(a0),a0
[00025fb6] 2279 0010 1f12            movea.l    ACSblk,a1
[00025fbc] 2269 0258                 movea.l    600(a1),a1
[00025fc0] 2269 0066                 movea.l    102(a1),a1
[00025fc4] 4e91                      jsr        (a1)
[00025fc6] 4e75                      rts
edsl_slider:
[00025fc8] 2079 0010 1f12            movea.l    ACSblk,a0
[00025fce] 2268 025c                 movea.l    604(a0),a1
[00025fd2] 2069 003c                 movea.l    60(a1),a0
[00025fd6] 0aa8 0000 0004 0004       eori.l     #$00000004,4(a0)
[00025fde] 72ff                      moveq.l    #-1,d1
[00025fe0] 7001                      moveq.l    #1,d0
[00025fe2] 2079 0010 1f12            movea.l    ACSblk,a0
[00025fe8] 2068 0258                 movea.l    600(a0),a0
[00025fec] 2279 0010 1f12            movea.l    ACSblk,a1
[00025ff2] 2269 0258                 movea.l    600(a1),a1
[00025ff6] 2269 0066                 movea.l    102(a1),a1
[00025ffa] 4e91                      jsr        (a1)
[00025ffc] 4e75                      rts
