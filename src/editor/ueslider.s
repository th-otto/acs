init_slider:
[00025b8c] 2f0a                      move.l     a2,-(a7)
[00025b8e] 2f0b                      move.l     a3,-(a7)
[00025b90] 2448                      movea.l    a0,a2
[00025b92] 43f9 000b 12b0            lea.l      data,a1
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
[00025bbc] 6716                      beq.s      minsize_1
[00025bbe] 2052                      movea.l    (a2),a0
[00025bc0] 3228 0012                 move.w     18(a0),d1
[00025bc4] d241                      add.w      d1,d1
[00025bc6] 3281                      move.w     d1,(a1)
[00025bc8] 2052                      movea.l    (a2),a0
[00025bca] 3028 0014                 move.w     20(a0),d0
[00025bce] e548                      lsl.w      #2,d0
[00025bd0] 3680                      move.w     d0,(a3)
[00025bd2] 6014                      bra.s      minsize_2
minsize_1:
[00025bd4] 2052                      movea.l    (a2),a0
[00025bd6] 3228 0012                 move.w     18(a0),d1
[00025bda] 3001                      move.w     d1,d0
[00025bdc] e748                      lsl.w      #3,d0
[00025bde] 9041                      sub.w      d1,d0
[00025be0] 3280                      move.w     d0,(a1)
[00025be2] 2052                      movea.l    (a2),a0
[00025be4] 36a8 0014                 move.w     20(a0),(a3)
minsize_2:
[00025be8] 265f                      movea.l    (a7)+,a3
[00025bea] 245f                      movea.l    (a7)+,a2
[00025bec] 4e75                      rts

object_tree:
[00025bee] 48e7 003e                 movem.l    a2-a6,-(a7)
[00025bf2] 594f                      subq.w     #4,a7
[00025bf4] 2648                      movea.l    a0,a3
[00025bf6] 2a49                      movea.l    a1,a5
[00025bf8] 41f9 000b 1022            lea.l      ED_SLIDER,a0
[00025bfe] 4eb9 0004 9a5c            jsr        Aob_create
[00025c04] 2448                      movea.l    a0,a2
[00025c06] 200a                      move.l     a2,d0
[00025c08] 6700 0146                 beq        object_tree_1
[00025c0c] 4eb9 0004 a25e            jsr        Aob_fix
[00025c12] 7002                      moveq.l    #2,d0
[00025c14] 224a                      movea.l    a2,a1
[00025c16] 2079 0010 1f12            movea.l    ACSblk,a0
[00025c1c] 2068 0258                 movea.l    600(a0),a0
[00025c20] 4eb9 0002 f23c            jsr        oe_beself
[00025c26] 700e                      moveq.l    #14,d0
[00025c28] 224a                      movea.l    a2,a1
[00025c2a] 2079 0010 1f12            movea.l    ACSblk,a0
[00025c30] 2068 0258                 movea.l    600(a0),a0
[00025c34] 4eb9 0002 f23c            jsr        oe_beself
[00025c3a] 7010                      moveq.l    #16,d0
[00025c3c] 224a                      movea.l    a2,a1
[00025c3e] 2079 0010 1f12            movea.l    ACSblk,a0
[00025c44] 2068 0258                 movea.l    600(a0),a0
[00025c48] 4eb9 0002 f23c            jsr        oe_beself
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
[00025c74] 4eb9 0007 594a            jsr        sscanf
[00025c7a] 584f                      addq.w     #4,a7
[00025c7c] 2b57 0004                 move.l     (a7),4(a5)
[00025c80] 7001                      moveq.l    #1,d0
[00025c82] c097                      and.l      (a7),d0
[00025c84] 671c                      beq.s      object_tree_2
[00025c86] 4dea 01b0                 lea.l      432(a2),a6
[00025c8a] 2079 0010 1f12            movea.l    ACSblk,a0
[00025c90] 3228 0012                 move.w     18(a0),d1
[00025c94] d241                      add.w      d1,d1
[00025c96] 3941 0014                 move.w     d1,20(a4)
[00025c9a] 396e 0016 0016            move.w     22(a6),22(a4)
[00025ca0] 6016                      bra.s      object_tree_3
object_tree_2:
[00025ca2] 4dea 01e0                 lea.l      480(a2),a6
[00025ca6] 396e 0014 0014            move.w     20(a6),20(a4)
[00025cac] 2079 0010 1f12            movea.l    ACSblk,a0
[00025cb2] 3968 0014 0016            move.w     20(a0),22(a4)
object_tree_3:
[00025cb8] 7002                      moveq.l    #2,d0
[00025cba] c097                      and.l      (a7),d0
[00025cbc] 6708                      beq.s      object_tree_4
[00025cbe] 006a 0001 00e2            ori.w      #$0001,226(a2)
[00025cc4] 6006                      bra.s      object_tree_5
object_tree_4:
[00025cc6] 026a fffe 00e2            andi.w     #$FFFE,226(a2)
object_tree_5:
[00025ccc] 7004                      moveq.l    #4,d0
[00025cce] c097                      and.l      (a7),d0
[00025cd0] 6708                      beq.s      object_tree_6
[00025cd2] 026a fffe 0112            andi.w     #$FFFE,274(a2)
[00025cd8] 6006                      bra.s      object_tree_7
object_tree_6:
[00025cda] 006a 0001 0112            ori.w      #$0001,274(a2)
object_tree_7:
[00025ce0] 206a 015c                 movea.l    348(a2),a0
[00025ce4] 2b68 000c 0018            move.l     12(a0),24(a5)
[00025cea] 206b 0026                 movea.l    38(a3),a0
[00025cee] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00025cf4] 4a40                      tst.w      d0
[00025cf6] 6712                      beq.s      object_tree_8
[00025cf8] 43f9 000b 1304            lea.l      $000B1304,a1
[00025cfe] 700e                      moveq.l    #14,d0
[00025d00] 204a                      movea.l    a2,a0
[00025d02] 4eb9 0004 afe0            jsr        Aob_puttext
[00025d08] 600e                      bra.s      object_tree_9
object_tree_8:
[00025d0a] 226b 0026                 movea.l    38(a3),a1
[00025d0e] 700e                      moveq.l    #14,d0
[00025d10] 204a                      movea.l    a2,a0
[00025d12] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_9:
[00025d18] 206a 018c                 movea.l    396(a2),a0
[00025d1c] 2b68 000c 001c            move.l     12(a0),28(a5)
[00025d22] 206b 002a                 movea.l    42(a3),a0
[00025d26] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00025d2c] 4a40                      tst.w      d0
[00025d2e] 6712                      beq.s      object_tree_10
[00025d30] 43f9 000b 1304            lea.l      $000B1304,a1
[00025d36] 7010                      moveq.l    #16,d0
[00025d38] 204a                      movea.l    a2,a0
[00025d3a] 4eb9 0004 afe0            jsr        Aob_puttext
[00025d40] 600e                      bra.s      object_tree_1
object_tree_10:
[00025d42] 226b 002a                 movea.l    42(a3),a1
[00025d46] 7010                      moveq.l    #16,d0
[00025d48] 204a                      movea.l    a2,a0
[00025d4a] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_1:
[00025d50] 204a                      movea.l    a2,a0
[00025d52] 584f                      addq.w     #4,a7
[00025d54] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00025d58] 4e75                      rts

test_it:
[00025d5a] 2f0a                      move.l     a2,-(a7)
[00025d5c] 2f0b                      move.l     a3,-(a7)
[00025d5e] 2648                      movea.l    a0,a3
[00025d60] 2449                      movea.l    a1,a2
[00025d62] 22bc 0003 5008            move.l     #A_slider,(a1)
[00025d68] 486a 0004                 pea.l      4(a2)
[00025d6c] 43f9 000b 1310            lea.l      $000B1310,a1
[00025d72] 2050                      movea.l    (a0),a0
[00025d74] 4eb9 0007 594a            jsr        sscanf
[00025d7a] 584f                      addq.w     #4,a7
[00025d7c] 257c 0003 589a 0008       move.l     #Auo_slider,8(a2)
[00025d84] 7000                      moveq.l    #0,d0
[00025d86] 2540 0014                 move.l     d0,20(a2)
[00025d8a] 2540 0010                 move.l     d0,16(a2)
[00025d8e] 2540 000c                 move.l     d0,12(a2)
[00025d92] 206b 0026                 movea.l    38(a3),a0
[00025d96] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00025d9c] 4a40                      tst.w      d0
[00025d9e] 6704                      beq.s      test_it_1
[00025da0] 91c8                      suba.l     a0,a0
[00025da2] 6004                      bra.s      test_it_2
test_it_1:
[00025da4] 206b 0026                 movea.l    38(a3),a0
test_it_2:
[00025da8] 2548 0018                 move.l     a0,24(a2)
[00025dac] 206b 002a                 movea.l    42(a3),a0
[00025db0] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00025db6] 4a40                      tst.w      d0
[00025db8] 6704                      beq.s      test_it_3
[00025dba] 91c8                      suba.l     a0,a0
[00025dbc] 6004                      bra.s      test_it_4
test_it_3:
[00025dbe] 206b 002a                 movea.l    42(a3),a0
test_it_4:
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
[00025e14] 6100 fd92                 bsr        minsize
[00025e18] 584f                      addq.w     #4,a7
[00025e1a] 47f9 000f f502            lea.l      parm,a3
[00025e20] 2f2c 0004                 move.l     4(a4),-(a7)
[00025e24] 43f9 000b 1310            lea.l      $000B1310,a1
[00025e2a] 204b                      movea.l    a3,a0
[00025e2c] 4eb9 0007 5680            jsr        sprintf
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
[00025e7e] 4eb9 0005 e010            jsr        Auo_boxed
[00025e84] 206c 0026                 movea.l    38(a4),a0
[00025e88] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00025e8e] 4a40                      tst.w      d0
[00025e90] 6704                      beq.s      ok_1
[00025e92] 42ac 0026                 clr.l      38(a4)
ok_1:
[00025e96] 43ec 002a                 lea.l      42(a4),a1
[00025e9a] 7003                      moveq.l    #3,d0
[00025e9c] 41ea 0180                 lea.l      384(a2),a0
[00025ea0] 4eb9 0005 e010            jsr        Auo_boxed
[00025ea6] 206c 002a                 movea.l    42(a4),a0
[00025eaa] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00025eb0] 4a40                      tst.w      d0
[00025eb2] 6704                      beq.s      ok_2
[00025eb4] 42ac 002a                 clr.l      42(a4)
ok_2:
[00025eb8] 3217                      move.w     (a7),d1
[00025eba] 302f 0002                 move.w     2(a7),d0
[00025ebe] 204c                      movea.l    a4,a0
[00025ec0] 2279 000b 12f0            movea.l    $000B12F0,a1
[00025ec6] 2269 0004                 movea.l    4(a1),a1
[00025eca] 4e91                      jsr        (a1)
[00025ecc] 6100 fefe                 bsr        abort
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
[00025ef6] 6736                      beq.s      horizontal_1
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
horizontal_1:
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
[00025f5a] 6630                      bne.s      vertical_1
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
vertical_1:
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

	.data

BUBBLE_01:
[000b0bd4]                           dc.b 'Die énderungen werden Åbernommen und Åberschreiben die alten Einstellungen.',0
BUBBLE_02:
[000b0c20]                           dc.b 'Die énderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
[000b0c6b]                           dc.b 'Hier kann der String, der fÅr BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_04:
[000b0cbd]                           dc.b 'Hiermit wird der 3D-Modus fÅr den Slider ein- und ausgeschaltet',0
BUBBLE_05:
[000b0cfd]                           dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
BUBBLE_06:
[000b0d81]                           dc.b 'Hier wird angegeben, ob der Schieber in der Mitte vorhanden sein soll oder nicht.',0
BUBBLE_07:
[000b0dd3]                           dc.b 'Der Slider wird als horizontaler Slider verwendet.',0
BUBBLE_08:
[000b0e06]                           dc.b 'Der Slider wird als vertikaler Slider verwendet.',0
TEXT_005:
[000b0e37]                           dc.b $4f
[000b0e38]                           dc.w $4b00
TEXT_009:
[000b0e3a]                           dc.b 'Abbruch',0
TEXT_01:
[000b0e42]                           dc.b '3D-Modus',0
TEXT_02:
[000b0e4b]                           dc.b 'Orientierung',0
TEXT_04:
[000b0e58]                           dc.b 'Slider',0
TEXT_05:
[000b0e5f]                           dc.b 'Sonstiges',0
TEXT_06:
[000b0e69]                           dc.b 'BubbleGEM-Text',0
TEXT_07:
[000b0e78]                           dc.b 'Context-Popup',0
help_title:
[000b0e86]                           dc.b 'Der Slider-Editor',0
title:
[000b0e98]                           dc.b 'SLIDER -',0
[000b0ea1]                           dc.b $00
A_3DBUTTON01:
[000b0ea2] 0005a4e2                  dc.l A_3Dbutton
[000b0ea6]                           dc.w $29f1
[000b0ea8]                           dc.w $01f8
[000b0eaa] 00059318                  dc.l Auo_string
[000b0eae]                           dc.b $00
[000b0eaf]                           dc.b $00
[000b0eb0]                           dc.b $00
[000b0eb1]                           dc.b $00
[000b0eb2]                           dc.b $00
[000b0eb3]                           dc.b $00
[000b0eb4]                           dc.b $00
[000b0eb5]                           dc.b $00
[000b0eb6]                           dc.b $00
[000b0eb7]                           dc.b $00
[000b0eb8]                           dc.b $00
[000b0eb9]                           dc.b $00
[000b0eba]                           dc.b $00
[000b0ebb]                           dc.b $00
[000b0ebc]                           dc.b $00
[000b0ebd]                           dc.b $00
[000b0ebe]                           dc.b $00
[000b0ebf]                           dc.b $00
[000b0ec0]                           dc.b $00
[000b0ec1]                           dc.b $00
A_3DBUTTON02:
[000b0ec2] 0005a4e2                  dc.l A_3Dbutton
[000b0ec6]                           dc.w $21f1
[000b0ec8]                           dc.w $01f8
[000b0eca] 00059318                  dc.l Auo_string
[000b0ece]                           dc.b $00
[000b0ecf]                           dc.b $00
[000b0ed0]                           dc.b $00
[000b0ed1]                           dc.b $00
[000b0ed2]                           dc.b $00
[000b0ed3]                           dc.b $00
[000b0ed4]                           dc.b $00
[000b0ed5]                           dc.b $00
[000b0ed6]                           dc.b $00
[000b0ed7]                           dc.b $00
[000b0ed8]                           dc.b $00
[000b0ed9]                           dc.b $00
[000b0eda]                           dc.b $00
[000b0edb]                           dc.b $00
[000b0edc]                           dc.b $00
[000b0edd]                           dc.b $00
[000b0ede]                           dc.b $00
[000b0edf]                           dc.b $00
[000b0ee0]                           dc.b $00
[000b0ee1]                           dc.b $00
A_3DBUTTON03:
[000b0ee2] 0005a4e2                  dc.l A_3Dbutton
[000b0ee6]                           dc.w $29c1
[000b0ee8]                           dc.w $0178
[000b0eea] 00059318                  dc.l Auo_string
[000b0eee] 000b0e37                  dc.l TEXT_005
[000b0ef2]                           dc.b $00
[000b0ef3]                           dc.b $00
[000b0ef4]                           dc.b $00
[000b0ef5]                           dc.b $00
[000b0ef6]                           dc.b $00
[000b0ef7]                           dc.b $00
[000b0ef8]                           dc.b $00
[000b0ef9]                           dc.b $00
[000b0efa] 000b0bd4                  dc.l BUBBLE_01
[000b0efe]                           dc.b $00
[000b0eff]                           dc.b $00
[000b0f00]                           dc.b $00
[000b0f01]                           dc.b $00
A_3DBUTTON06:
[000b0f02] 0005a4e2                  dc.l A_3Dbutton
[000b0f06]                           dc.w $29c1
[000b0f08]                           dc.w $0178
[000b0f0a] 00059318                  dc.l Auo_string
[000b0f0e] 000b0e3a                  dc.l TEXT_009
[000b0f12]                           dc.b $00
[000b0f13]                           dc.b $00
[000b0f14]                           dc.b $00
[000b0f15]                           dc.b $00
[000b0f16]                           dc.b $00
[000b0f17]                           dc.b $00
[000b0f18]                           dc.b $00
[000b0f19]                           dc.b $00
[000b0f1a] 000b0c20                  dc.l BUBBLE_02
[000b0f1e]                           dc.b $00
[000b0f1f]                           dc.b $00
[000b0f20]                           dc.b $00
[000b0f21]                           dc.b $00
A_BOXED03:
[000b0f22] 0005e9d2                  dc.l A_boxed
[000b0f26]                           dc.w $9038
[000b0f28]                           dc.w $ff12
[000b0f2a] 0005e010                  dc.l Auo_boxed
[000b0f2e]                           dc.b $00
[000b0f2f]                           dc.b $00
[000b0f30]                           dc.b $00
[000b0f31]                           dc.b $00
[000b0f32]                           dc.b $00
[000b0f33]                           dc.b $00
[000b0f34]                           dc.b $00
[000b0f35]                           dc.b $00
[000b0f36]                           dc.b $00
[000b0f37]                           dc.b $00
[000b0f38]                           dc.b $00
[000b0f39]                           dc.b $00
[000b0f3a] 000b0c6b                  dc.l BUBBLE_03
[000b0f3e]                           dc.b $00
[000b0f3f]                           dc.b $00
[000b0f40]                           dc.b $00
[000b0f41]                           dc.b $00
A_BOXED04:
[000b0f42] 0005e9d2                  dc.l A_boxed
[000b0f46]                           dc.w $9038
[000b0f48]                           dc.w $ff12
[000b0f4a] 0005e010                  dc.l Auo_boxed
[000b0f4e]                           dc.b $00
[000b0f4f]                           dc.b $00
[000b0f50]                           dc.b $00
[000b0f51]                           dc.b $00
[000b0f52]                           dc.b $00
[000b0f53]                           dc.b $00
[000b0f54]                           dc.b $00
[000b0f55]                           dc.b $00
[000b0f56]                           dc.b $00
[000b0f57]                           dc.b $00
[000b0f58]                           dc.b $00
[000b0f59]                           dc.b $00
[000b0f5a] 000b0cfd                  dc.l BUBBLE_05
[000b0f5e]                           dc.b $00
[000b0f5f]                           dc.b $00
[000b0f60]                           dc.b $00
[000b0f61]                           dc.b $00
A_CHECKBOX01:
[000b0f62] 000593fc                  dc.l A_checkbox
[000b0f66]                           dc.b $00
[000b0f67]                           dc.b $00
[000b0f68]                           dc.b $00
[000b0f69]                           dc.b $01
[000b0f6a] 00059318                  dc.l Auo_string
[000b0f6e] 000b0e42                  dc.l TEXT_01
[000b0f72]                           dc.b $00
[000b0f73]                           dc.b $00
[000b0f74]                           dc.b $00
[000b0f75]                           dc.b $00
[000b0f76]                           dc.b $00
[000b0f77]                           dc.b $00
[000b0f78]                           dc.b $00
[000b0f79]                           dc.b $00
[000b0f7a] 000b0cbd                  dc.l BUBBLE_04
[000b0f7e]                           dc.b $00
[000b0f7f]                           dc.b $00
[000b0f80]                           dc.b $00
[000b0f81]                           dc.b $00
A_CHECKBOX03:
[000b0f82] 000593fc                  dc.l A_checkbox
[000b0f86]                           dc.b $00
[000b0f87]                           dc.b $00
[000b0f88]                           dc.b $00
[000b0f89]                           dc.b $01
[000b0f8a] 00059318                  dc.l Auo_string
[000b0f8e] 000b0e58                  dc.l TEXT_04
[000b0f92]                           dc.b $00
[000b0f93]                           dc.b $00
[000b0f94]                           dc.b $00
[000b0f95]                           dc.b $00
[000b0f96]                           dc.b $00
[000b0f97]                           dc.b $00
[000b0f98]                           dc.b $00
[000b0f99]                           dc.b $00
[000b0f9a] 000b0d81                  dc.l BUBBLE_06
[000b0f9e]                           dc.b $00
[000b0f9f]                           dc.b $00
[000b0fa0]                           dc.b $00
[000b0fa1]                           dc.b $00
A_INNERFRAME02:
[000b0fa2] 00059f9c                  dc.l A_innerframe
[000b0fa6]                           dc.w $1800
[000b0fa8]                           dc.w $8f19
[000b0faa] 00059318                  dc.l Auo_string
[000b0fae] 000b0e4b                  dc.l TEXT_02
[000b0fb2]                           dc.b $00
[000b0fb3]                           dc.b $00
[000b0fb4]                           dc.b $00
[000b0fb5]                           dc.b $00
[000b0fb6]                           dc.b $00
[000b0fb7]                           dc.b $00
[000b0fb8]                           dc.b $00
[000b0fb9]                           dc.b $00
[000b0fba]                           dc.b $00
[000b0fbb]                           dc.b $00
[000b0fbc]                           dc.b $00
[000b0fbd]                           dc.b $00
[000b0fbe]                           dc.b $00
[000b0fbf]                           dc.b $00
[000b0fc0]                           dc.b $00
[000b0fc1]                           dc.b $00
A_INNERFRAME03:
[000b0fc2] 00059f9c                  dc.l A_innerframe
[000b0fc6]                           dc.w $1800
[000b0fc8]                           dc.w $8f19
[000b0fca] 00059318                  dc.l Auo_string
[000b0fce] 000b0e5f                  dc.l TEXT_05
[000b0fd2]                           dc.b $00
[000b0fd3]                           dc.b $00
[000b0fd4]                           dc.b $00
[000b0fd5]                           dc.b $00
[000b0fd6]                           dc.b $00
[000b0fd7]                           dc.b $00
[000b0fd8]                           dc.b $00
[000b0fd9]                           dc.b $00
[000b0fda]                           dc.b $00
[000b0fdb]                           dc.b $00
[000b0fdc]                           dc.b $00
[000b0fdd]                           dc.b $00
[000b0fde]                           dc.b $00
[000b0fdf]                           dc.b $00
[000b0fe0]                           dc.b $00
[000b0fe1]                           dc.b $00
A_SLIDER01:
[000b0fe2] 00035008                  dc.l A_slider
[000b0fe6]                           dc.b $00
[000b0fe7]                           dc.b $00
[000b0fe8]                           dc.b $00
[000b0fe9]                           dc.b $02
[000b0fea] 0003589a                  dc.l Auo_slider
[000b0fee]                           dc.b $00
[000b0fef]                           dc.b $00
[000b0ff0]                           dc.b $00
[000b0ff1]                           dc.b $00
[000b0ff2]                           dc.b $00
[000b0ff3]                           dc.b $00
[000b0ff4]                           dc.b $00
[000b0ff5]                           dc.b $00
[000b0ff6]                           dc.b $00
[000b0ff7]                           dc.b $00
[000b0ff8]                           dc.b $00
[000b0ff9]                           dc.b $00
[000b0ffa] 000b0dd3                  dc.l BUBBLE_07
[000b0ffe]                           dc.b $00
[000b0fff]                           dc.b $00
[000b1000]                           dc.b $00
[000b1001]                           dc.b $00
A_SLIDER02:
[000b1002] 00035008                  dc.l A_slider
[000b1006]                           dc.b $00
[000b1007]                           dc.b $00
[000b1008]                           dc.b $00
[000b1009]                           dc.b $03
[000b100a] 0003589a                  dc.l Auo_slider
[000b100e]                           dc.b $00
[000b100f]                           dc.b $00
[000b1010]                           dc.b $00
[000b1011]                           dc.b $00
[000b1012]                           dc.b $00
[000b1013]                           dc.b $00
[000b1014]                           dc.b $00
[000b1015]                           dc.b $00
[000b1016]                           dc.b $00
[000b1017]                           dc.b $00
[000b1018]                           dc.b $00
[000b1019]                           dc.b $00
[000b101a] 000b0e06                  dc.l BUBBLE_08
[000b101e]                           dc.b $00
[000b101f]                           dc.b $00
[000b1020]                           dc.b $00
[000b1021]                           dc.b $00
ED_SLIDER:
[000b1022]                           dc.w $ffff
[000b1024]                           dc.b $00
[000b1025]                           dc.b $01
[000b1026]                           dc.b $00
[000b1027]                           dc.b $11
[000b1028]                           dc.b $00
[000b1029]                           dc.b $18
[000b102a]                           dc.b $00
[000b102b]                           dc.b $40
[000b102c]                           dc.b $00
[000b102d]                           dc.b $10
[000b102e] 000b0ec2                  dc.l A_3DBUTTON02
[000b1032]                           dc.b $00
[000b1033]                           dc.b $00
[000b1034]                           dc.b $00
[000b1035]                           dc.b $00
[000b1036]                           dc.b $00
[000b1037]                           dc.b $29
[000b1038]                           dc.b $00
[000b1039]                           dc.b $0d
_01_ED_SLIDER:
[000b103a]                           dc.b $00
[000b103b]                           dc.b $04
[000b103c]                           dc.b $00
[000b103d]                           dc.b $02
[000b103e]                           dc.b $00
[000b103f]                           dc.b $02
[000b1040]                           dc.b $00
[000b1041]                           dc.b $18
[000b1042]                           dc.b $00
[000b1043]                           dc.b $00
[000b1044]                           dc.b $00
[000b1045]                           dc.b $10
[000b1046] 000b0ea2                  dc.l A_3DBUTTON01
[000b104a]                           dc.b $00
[000b104b]                           dc.b $00
[000b104c]                           dc.b $00
[000b104d]                           dc.b $00
[000b104e]                           dc.b $00
[000b104f]                           dc.b $0c
[000b1050]                           dc.b $00
[000b1051]                           dc.b $06
_02_ED_SLIDER:
[000b1052]                           dc.b $00
[000b1053]                           dc.b $01
[000b1054]                           dc.w $ffff
[000b1056]                           dc.w $ffff
[000b1058]                           dc.b $00
[000b1059]                           dc.b $18
[000b105a]                           dc.b $00
[000b105b]                           dc.b $40
[000b105c]                           dc.b $00
[000b105d]                           dc.b $00
[000b105e] 000b0fe2                  dc.l A_SLIDER01
[000b1062]                           dc.b $00
[000b1063]                           dc.b $01
[000b1064]                           dc.b $00
[000b1065]                           dc.b $01
[000b1066]                           dc.b $00
[000b1067]                           dc.b $0a
[000b1068]                           dc.b $00
[000b1069]                           dc.b $01
_02aED_SLIDER:
[000b106a] 00035cb6                  dc.l Aus_slider
[000b106e]                           dc.b $00
[000b106f]                           dc.b $00
[000b1070]                           dc.b $00
[000b1071]                           dc.b $00
[000b1072]                           dc.w $8000
[000b1074]                           dc.b $00
[000b1075]                           dc.b $00
[000b1076]                           dc.b $00
[000b1077]                           dc.b $00
[000b1078]                           dc.b $00
[000b1079]                           dc.b $00
[000b107a]                           dc.b $00
[000b107b]                           dc.b $00
[000b107c]                           dc.b $00
[000b107d]                           dc.b $00
[000b107e]                           dc.b $00
[000b107f]                           dc.b $00
[000b1080]                           dc.b $00
[000b1081]                           dc.b $00
_04_ED_SLIDER:
[000b1082]                           dc.b $00
[000b1083]                           dc.b $06
[000b1084]                           dc.w $ffff
[000b1086]                           dc.w $ffff
[000b1088]                           dc.b $00
[000b1089]                           dc.b $18
[000b108a]                           dc.w $4005
[000b108c]                           dc.b $00
[000b108d]                           dc.b $10
[000b108e] 000b0f02                  dc.l A_3DBUTTON06
[000b1092]                           dc.b $00
[000b1093]                           dc.b $1d
[000b1094]                           dc.b $00
[000b1095]                           dc.b $01
[000b1096]                           dc.b $00
[000b1097]                           dc.b $0a
[000b1098]                           dc.b $00
[000b1099]                           dc.b $02
_04aED_SLIDER:
[000b109a] 00025dcc                  dc.l abort
[000b109e]                           dc.b $00
[000b109f]                           dc.b $00
[000b10a0]                           dc.b $00
[000b10a1]                           dc.b $00
[000b10a2]                           dc.w $8000
[000b10a4]                           dc.w $8841
[000b10a6]                           dc.b $00
[000b10a7]                           dc.b $00
[000b10a8]                           dc.b $00
[000b10a9]                           dc.b $00
[000b10aa]                           dc.b $00
[000b10ab]                           dc.b $00
[000b10ac]                           dc.b $00
[000b10ad]                           dc.b $00
[000b10ae]                           dc.b $00
[000b10af]                           dc.b $00
[000b10b0]                           dc.b $00
[000b10b1]                           dc.b $00
_06_ED_SLIDER:
[000b10b2]                           dc.b $00
[000b10b3]                           dc.b $08
[000b10b4]                           dc.w $ffff
[000b10b6]                           dc.w $ffff
[000b10b8]                           dc.b $00
[000b10b9]                           dc.b $18
[000b10ba]                           dc.w $4007
[000b10bc]                           dc.b $00
[000b10bd]                           dc.b $10
[000b10be] 000b0ee2                  dc.l A_3DBUTTON03
[000b10c2]                           dc.b $00
[000b10c3]                           dc.b $12
[000b10c4]                           dc.b $00
[000b10c5]                           dc.b $01
[000b10c6]                           dc.b $00
[000b10c7]                           dc.b $0a
[000b10c8]                           dc.b $00
[000b10c9]                           dc.b $02
_06aED_SLIDER:
[000b10ca] 00025df2                  dc.l ok
[000b10ce]                           dc.b $00
[000b10cf]                           dc.b $00
[000b10d0]                           dc.b $00
[000b10d1]                           dc.b $00
[000b10d2]                           dc.w $8000
[000b10d4]                           dc.w $884f
[000b10d6]                           dc.b $00
[000b10d7]                           dc.b $00
[000b10d8]                           dc.b $00
[000b10d9]                           dc.b $00
[000b10da]                           dc.b $00
[000b10db]                           dc.b $00
[000b10dc]                           dc.b $00
[000b10dd]                           dc.b $00
[000b10de]                           dc.b $00
[000b10df]                           dc.b $00
[000b10e0]                           dc.b $00
[000b10e1]                           dc.b $00
_08_ED_SLIDER:
[000b10e2]                           dc.b $00
[000b10e3]                           dc.b $11
[000b10e4]                           dc.b $00
[000b10e5]                           dc.b $09
[000b10e6]                           dc.b $00
[000b10e7]                           dc.b $10
[000b10e8]                           dc.b $00
[000b10e9]                           dc.b $18
[000b10ea]                           dc.b $00
[000b10eb]                           dc.b $40
[000b10ec]                           dc.b $00
[000b10ed]                           dc.b $00
[000b10ee] 000b0fc2                  dc.l A_INNERFRAME03
[000b10f2]                           dc.b $00
[000b10f3]                           dc.b $10
[000b10f4]                           dc.b $00
[000b10f5]                           dc.b $04
[000b10f6]                           dc.b $00
[000b10f7]                           dc.b $18
[000b10f8]                           dc.b $00
[000b10f9]                           dc.b $09
_09_ED_SLIDER:
[000b10fa]                           dc.b $00
[000b10fb]                           dc.b $0b
[000b10fc]                           dc.w $ffff
[000b10fe]                           dc.w $ffff
[000b1100]                           dc.b $00
[000b1101]                           dc.b $18
[000b1102]                           dc.b $00
[000b1103]                           dc.b $41
[000b1104]                           dc.b $00
[000b1105]                           dc.b $00
[000b1106] 000b0f62                  dc.l A_CHECKBOX01
[000b110a]                           dc.b $00
[000b110b]                           dc.b $01
[000b110c]                           dc.b $00
[000b110d]                           dc.b $01
[000b110e]                           dc.b $00
[000b110f]                           dc.b $0b
[000b1110]                           dc.b $00
[000b1111]                           dc.b $01
_09aED_SLIDER:
[000b1112] 00025f92                  dc.l edsl_3d
[000b1116]                           dc.b $00
[000b1117]                           dc.b $00
[000b1118]                           dc.b $00
[000b1119]                           dc.b $00
[000b111a]                           dc.w $8000
[000b111c]                           dc.w $8844
[000b111e]                           dc.b $00
[000b111f]                           dc.b $00
[000b1120]                           dc.b $00
[000b1121]                           dc.b $00
[000b1122]                           dc.b $00
[000b1123]                           dc.b $00
[000b1124]                           dc.b $00
[000b1125]                           dc.b $00
[000b1126]                           dc.b $00
[000b1127]                           dc.b $00
[000b1128]                           dc.b $00
[000b1129]                           dc.b $00
_11_ED_SLIDER:
[000b112a]                           dc.b $00
[000b112b]                           dc.b $0d
[000b112c]                           dc.w $ffff
[000b112e]                           dc.w $ffff
[000b1130]                           dc.b $00
[000b1131]                           dc.b $18
[000b1132]                           dc.b $00
[000b1133]                           dc.b $41
[000b1134]                           dc.b $00
[000b1135]                           dc.b $00
[000b1136] 000b0f82                  dc.l A_CHECKBOX03
[000b113a]                           dc.b $00
[000b113b]                           dc.b $0e
[000b113c]                           dc.b $00
[000b113d]                           dc.b $01
[000b113e]                           dc.b $00
[000b113f]                           dc.b $09
[000b1140]                           dc.b $00
[000b1141]                           dc.b $01
_11aED_SLIDER:
[000b1142] 00025fc8                  dc.l edsl_slider
[000b1146]                           dc.b $00
[000b1147]                           dc.b $00
[000b1148]                           dc.b $00
[000b1149]                           dc.b $00
[000b114a]                           dc.w $8000
[000b114c]                           dc.w $8853
[000b114e]                           dc.b $00
[000b114f]                           dc.b $00
[000b1150]                           dc.b $00
[000b1151]                           dc.b $00
[000b1152]                           dc.b $00
[000b1153]                           dc.b $00
[000b1154]                           dc.b $00
[000b1155]                           dc.b $00
[000b1156]                           dc.b $00
[000b1157]                           dc.b $00
[000b1158]                           dc.b $00
[000b1159]                           dc.b $00
_13_ED_SLIDER:
[000b115a]                           dc.b $00
[000b115b]                           dc.b $0e
[000b115c]                           dc.w $ffff
[000b115e]                           dc.w $ffff
[000b1160]                           dc.b $00
[000b1161]                           dc.b $1c
[000b1162]                           dc.b $00
[000b1163]                           dc.b $00
[000b1164]                           dc.b $00
[000b1165]                           dc.b $00
[000b1166] 000b0e69                  dc.l TEXT_06
[000b116a]                           dc.b $00
[000b116b]                           dc.b $01
[000b116c]                           dc.b $00
[000b116d]                           dc.b $03
[000b116e]                           dc.b $00
[000b116f]                           dc.b $0e
[000b1170]                           dc.b $00
[000b1171]                           dc.b $01
_14_ED_SLIDER:
[000b1172]                           dc.b $00
[000b1173]                           dc.b $0f
[000b1174]                           dc.w $ffff
[000b1176]                           dc.w $ffff
[000b1178]                           dc.b $00
[000b1179]                           dc.b $18
[000b117a]                           dc.b $00
[000b117b]                           dc.b $08
[000b117c]                           dc.b $00
[000b117d]                           dc.b $10
[000b117e] 000b0f22                  dc.l A_BOXED03
[000b1182]                           dc.b $00
[000b1183]                           dc.b $01
[000b1184]                           dc.b $00
[000b1185]                           dc.b $04
[000b1186]                           dc.b $00
[000b1187]                           dc.b $16
[000b1188]                           dc.b $00
[000b1189]                           dc.b $01
_15_ED_SLIDER:
[000b118a]                           dc.b $00
[000b118b]                           dc.b $10
[000b118c]                           dc.w $ffff
[000b118e]                           dc.w $ffff
[000b1190]                           dc.b $00
[000b1191]                           dc.b $1c
[000b1192]                           dc.b $00
[000b1193]                           dc.b $00
[000b1194]                           dc.b $00
[000b1195]                           dc.b $00
[000b1196] 000b0e78                  dc.l TEXT_07
[000b119a]                           dc.b $00
[000b119b]                           dc.b $01
[000b119c]                           dc.b $00
[000b119d]                           dc.b $06
[000b119e]                           dc.b $00
[000b119f]                           dc.b $0d
[000b11a0]                           dc.b $00
[000b11a1]                           dc.b $01
_16_ED_SLIDER:
[000b11a2]                           dc.b $00
[000b11a3]                           dc.b $08
[000b11a4]                           dc.w $ffff
[000b11a6]                           dc.w $ffff
[000b11a8]                           dc.b $00
[000b11a9]                           dc.b $18
[000b11aa]                           dc.b $00
[000b11ab]                           dc.b $08
[000b11ac]                           dc.b $00
[000b11ad]                           dc.b $10
[000b11ae] 000b0f42                  dc.l A_BOXED04
[000b11b2]                           dc.b $00
[000b11b3]                           dc.b $01
[000b11b4]                           dc.b $00
[000b11b5]                           dc.b $07
[000b11b6]                           dc.b $00
[000b11b7]                           dc.b $16
[000b11b8]                           dc.b $00
[000b11b9]                           dc.b $01
_17_ED_SLIDER:
[000b11ba]                           dc.b $00
[000b11bb]                           dc.b $00
[000b11bc]                           dc.b $00
[000b11bd]                           dc.b $12
[000b11be]                           dc.b $00
[000b11bf]                           dc.b $14
[000b11c0]                           dc.b $00
[000b11c1]                           dc.b $18
[000b11c2]                           dc.b $00
[000b11c3]                           dc.b $40
[000b11c4]                           dc.b $00
[000b11c5]                           dc.b $00
[000b11c6] 000b0fa2                  dc.l A_INNERFRAME02
[000b11ca]                           dc.b $00
[000b11cb]                           dc.b $01
[000b11cc]                           dc.b $00
[000b11cd]                           dc.b $07
[000b11ce]                           dc.b $00
[000b11cf]                           dc.b $0f
[000b11d0]                           dc.b $00
[000b11d1]                           dc.b $06
_18_ED_SLIDER:
[000b11d2]                           dc.b $00
[000b11d3]                           dc.b $14
[000b11d4]                           dc.w $ffff
[000b11d6]                           dc.w $ffff
[000b11d8]                           dc.b $00
[000b11d9]                           dc.b $18
[000b11da]                           dc.b $00
[000b11db]                           dc.b $40
[000b11dc]                           dc.b $00
[000b11dd]                           dc.b $20
[000b11de] 000b1002                  dc.l A_SLIDER02
[000b11e2]                           dc.b $00
[000b11e3]                           dc.b $01
[000b11e4]                           dc.b $00
[000b11e5]                           dc.b $01
[000b11e6]                           dc.b $00
[000b11e7]                           dc.b $02
[000b11e8]                           dc.b $00
[000b11e9]                           dc.b $04
_18aED_SLIDER:
[000b11ea] 00025f32                  dc.l vertical
[000b11ee]                           dc.b $00
[000b11ef]                           dc.b $00
[000b11f0]                           dc.b $00
[000b11f1]                           dc.b $00
[000b11f2]                           dc.w $8000
[000b11f4]                           dc.b $00
[000b11f5]                           dc.b $00
[000b11f6]                           dc.b $00
[000b11f7]                           dc.b $00
[000b11f8]                           dc.b $00
[000b11f9]                           dc.b $00
[000b11fa]                           dc.b $00
[000b11fb]                           dc.b $00
[000b11fc]                           dc.b $00
[000b11fd]                           dc.b $00
[000b11fe]                           dc.b $00
[000b11ff]                           dc.b $00
[000b1200]                           dc.b $00
[000b1201]                           dc.b $00
_20_ED_SLIDER:
[000b1202]                           dc.b $00
[000b1203]                           dc.b $11
[000b1204]                           dc.w $ffff
[000b1206]                           dc.w $ffff
[000b1208]                           dc.b $00
[000b1209]                           dc.b $18
[000b120a]                           dc.b $00
[000b120b]                           dc.b $40
[000b120c]                           dc.b $00
[000b120d]                           dc.b $20
[000b120e] 000b0fe2                  dc.l A_SLIDER01
[000b1212]                           dc.b $00
[000b1213]                           dc.b $04
[000b1214]                           dc.b $00
[000b1215]                           dc.b $01
[000b1216]                           dc.b $00
[000b1217]                           dc.b $0a
[000b1218]                           dc.b $00
[000b1219]                           dc.b $01
_20aED_SLIDER:
[000b121a] 00025eda                  dc.l horizontal
[000b121e]                           dc.b $00
[000b121f]                           dc.b $00
[000b1220]                           dc.b $00
[000b1221]                           dc.b $00
[000b1222]                           dc.w $8020
[000b1224]                           dc.b $00
[000b1225]                           dc.b $00
[000b1226]                           dc.b $00
[000b1227]                           dc.b $00
[000b1228]                           dc.b $00
[000b1229]                           dc.b $00
[000b122a]                           dc.b $00
[000b122b]                           dc.b $00
[000b122c]                           dc.b $00
[000b122d]                           dc.b $00
[000b122e]                           dc.b $00
[000b122f]                           dc.b $00
[000b1230]                           dc.b $00
[000b1231]                           dc.b $00
slider:
[000b1232] 00035008                  dc.l A_slider
[000b1236]                           dc.b $00
[000b1237]                           dc.b $00
[000b1238]                           dc.b $00
[000b1239]                           dc.b $02
[000b123a] 0003589a                  dc.l Auo_slider
[000b123e]                           dc.b $00
[000b123f]                           dc.b $00
[000b1240]                           dc.b $00
[000b1241]                           dc.b $00
[000b1242]                           dc.b $00
[000b1243]                           dc.b $00
[000b1244]                           dc.b $00
[000b1245]                           dc.b $00
[000b1246]                           dc.b $00
[000b1247]                           dc.b $00
[000b1248]                           dc.b $00
[000b1249]                           dc.b $00
[000b124a]                           dc.b $00
[000b124b]                           dc.b $00
[000b124c]                           dc.b $00
[000b124d]                           dc.b $00
[000b124e]                           dc.b $00
[000b124f]                           dc.b $00
[000b1250]                           dc.b $00
[000b1251]                           dc.b $00
visual:
[000b1252]                           dc.w $ffff
[000b1254]                           dc.w $ffff
[000b1256]                           dc.w $ffff
[000b1258]                           dc.b $00
[000b1259]                           dc.b $18
[000b125a]                           dc.w $2001
[000b125c]                           dc.b $00
[000b125d]                           dc.b $00
[000b125e] 000b1232                  dc.l slider
[000b1262]                           dc.b $00
[000b1263]                           dc.b $00
[000b1264]                           dc.b $00
[000b1265]                           dc.b $00
[000b1266]                           dc.b $00
[000b1267]                           dc.b $07
[000b1268]                           dc.b $00
[000b1269]                           dc.b $01
logical:
[000b126a]                           dc.w $ffff
[000b126c]                           dc.w $ffff
[000b126e]                           dc.w $ffff
[000b1270]                           dc.b $00
[000b1271]                           dc.b $18
[000b1272]                           dc.b $00
[000b1273]                           dc.b $40
[000b1274]                           dc.b $00
[000b1275]                           dc.b $00
[000b1276] 000b1232                  dc.l slider
[000b127a]                           dc.b $00
[000b127b]                           dc.b $00
[000b127c]                           dc.b $00
[000b127d]                           dc.b $00
[000b127e]                           dc.b $00
[000b127f]                           dc.b $07
[000b1280]                           dc.b $00
[000b1281]                           dc.b $01
aud:
[000b1282] 000b1300                  dc.l $000b1300 ; no symbol found
[000b1286] 000b1305                  dc.l $000b1305 ; no symbol found
[000b128a]                           dc.b $00
[000b128b]                           dc.b $00
[000b128c]                           dc.b $00
[000b128d]                           dc.b $00
[000b128e]                           dc.b $00
[000b128f]                           dc.b $00
[000b1290]                           dc.b $00
[000b1291]                           dc.b $00
[000b1292]                           dc.b $00
[000b1293]                           dc.b $00
[000b1294]                           dc.b $00
[000b1295]                           dc.b $00
[000b1296]                           dc.b $00
[000b1297]                           dc.b $00
[000b1298]                           dc.b $00
[000b1299]                           dc.b $00
[000b129a]                           dc.b $00
[000b129b]                           dc.b $00
[000b129c]                           dc.b $00
[000b129d]                           dc.b $00
[000b129e]                           dc.b $00
[000b129f]                           dc.b $00
[000b12a0]                           dc.b $00
[000b12a1]                           dc.b $00
[000b12a2]                           dc.b $00
[000b12a3]                           dc.b $00
[000b12a4]                           dc.b $00
[000b12a5]                           dc.b $00
[000b12a6]                           dc.b $00
[000b12a7]                           dc.b $00
[000b12a8]                           dc.b $00
[000b12a9]                           dc.b $00
[000b12aa]                           dc.b $00
[000b12ab]                           dc.b $00
[000b12ac]                           dc.b $00
[000b12ad]                           dc.b $00
[000b12ae]                           dc.b $00
[000b12af]                           dc.b $00
data:
[000b12b0]                           dc.b 'A_slider',0
[000b12b9]                           dc.b $00
[000b12ba]                           dc.b $00
[000b12bb]                           dc.b $00
[000b12bc]                           dc.b $00
[000b12bd]                           dc.b $00
[000b12be]                           dc.b $00
[000b12bf]                           dc.b $00
[000b12c0]                           dc.b $00
[000b12c1]                           dc.b $00
[000b12c2]                           dc.b $00
[000b12c3]                           dc.b $00
[000b12c4]                           dc.b $00
[000b12c5]                           dc.b $00
[000b12c6]                           dc.b $00
[000b12c7]                           dc.b $00
[000b12c8]                           dc.b $00
[000b12c9]                           dc.b $00
[000b12ca]                           dc.b $00
[000b12cb]                           dc.b $00
[000b12cc]                           dc.b $00
[000b12cd]                           dc.b $00
[000b12ce]                           dc.b $00
[000b12cf]                           dc.b $00
[000b12d0] 00025bee                  dc.l object_tree
[000b12d4] 00025d5a                  dc.l test_it
[000b12d8] 00025df2                  dc.l ok
[000b12dc] 00049b7c                  dc.l Aob_delete
[000b12e0] 000b1252                  dc.l visual
[000b12e4] 000b126a                  dc.l logical
[000b12e8] 000b1282                  dc.l aud
[000b12ec] 00025ba8                  dc.l minsize
[000b12f0]                           dc.b $00
[000b12f1]                           dc.b $00
[000b12f2]                           dc.b $00
[000b12f3]                           dc.b $00
[000b12f4] 000b0e98                  dc.l title
[000b12f8] 000b0e86                  dc.l help_title
[000b12fc]                           dc.b $00
[000b12fd]                           dc.b $00
[000b12fe]                           dc.b $00
[000b12ff]                           dc.b $00
[000b1300]                           dc.b '0x2L',0
[000b1305]                           dc.b 'Auo_slider',0
[000b1310]                           dc.b '0x%lxL',0
[000b1317]                           dc.b $00

	.bss

parm: ds.b 32
