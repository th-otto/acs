
Apd_close:
[00039e02] 48e7 002c                 movem.l    a2/a4-a5,-(a7)
[00039e06] 554f                      subq.w     #2,a7
[00039e08] 95ca                      suba.l     a2,a2
Apd_close_6:
[00039e0a] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00039e10] 42a7                      clr.l      -(a7)
[00039e12] 42a7                      clr.l      -(a7)
[00039e14] 42a7                      clr.l      -(a7)
[00039e16] 486f 000c                 pea.l      12(a7)
[00039e1a] 720a                      moveq.l    #10,d1
[00039e1c] 4240                      clr.w      d0
[00039e1e] 4eb9 0007 14ea            jsr        wind_get
[00039e24] 4fef 0010                 lea.l      16(a7),a7
[00039e28] 3017                      move.w     (a7),d0
[00039e2a] 4eb9 0004 e5ea            jsr        Awi_wid
[00039e30] 2848                      movea.l    a0,a4
[00039e32] 4eb9 0004 e608            jsr        Awi_root
[00039e38] b9c8                      cmpa.l     a0,a4
[00039e3a] 6608                      bne.s      Apd_close_1
[00039e3c] 2055                      movea.l    (a5),a0
[00039e3e] 3028 0236                 move.w     566(a0),d0
[00039e42] 6652                      bne.s      Apd_close_2
Apd_close_1:
[00039e44] 200c                      move.l     a4,d0
[00039e46] 674e                      beq.s      Apd_close_2
[00039e48] 7204                      moveq.l    #4,d1
[00039e4a] c26c 0054                 and.w      84(a4),d1
[00039e4e] 671c                      beq.s      Apd_close_3
[00039e50] 7402                      moveq.l    #2,d2
[00039e52] c46c 0022                 and.w      34(a4),d2
[00039e56] 6614                      bne.s      Apd_close_3
[00039e58] 200a                      move.l     a2,d0
[00039e5a] 6604                      bne.s      Apd_close_4
[00039e5c] 244c                      movea.l    a4,a2
[00039e5e] 6004                      bra.s      Apd_close_5
Apd_close_4:
[00039e60] b9ca                      cmpa.l     a2,a4
[00039e62] 6732                      beq.s      Apd_close_2
Apd_close_5:
[00039e64] 4eb9 0004 f068            jsr        Awi_down
[00039e6a] 609e                      bra.s      Apd_close_6
Apd_close_3:
[00039e6c] 7001                      moveq.l    #1,d0
[00039e6e] c06c 0054                 and.w      84(a4),d0
[00039e72] 660c                      bne.s      Apd_close_7
[00039e74] 2055                      movea.l    (a5),a0
[00039e76] 2268 023c                 movea.l    572(a0),a1
[00039e7a] 2229 0034                 move.l     52(a1),d1
[00039e7e] 670a                      beq.s      Apd_close_8
Apd_close_7:
[00039e80] 204c                      movea.l    a4,a0
[00039e82] 226c 0072                 movea.l    114(a4),a1
[00039e86] 4e91                      jsr        (a1)
[00039e88] 600c                      bra.s      Apd_close_2
Apd_close_8:
[00039e8a] 93c9                      suba.l     a1,a1
[00039e8c] 7002                      moveq.l    #2,d0
[00039e8e] 204c                      movea.l    a4,a0
[00039e90] 246c 0004                 movea.l    4(a4),a2
[00039e94] 4e92                      jsr        (a2)
Apd_close_2:
[00039e96] 544f                      addq.w     #2,a7
[00039e98] 4cdf 3400                 movem.l    (a7)+,a2/a4-a5
[00039e9c] 4e75                      rts

Apd_delete:
[00039e9e] 2f0a                      move.l     a2,-(a7)
[00039ea0] 2f0b                      move.l     a3,-(a7)
[00039ea2] 554f                      subq.w     #2,a7
[00039ea4] 2079 0010 1f12            movea.l    ACSblk,a0
[00039eaa] 3028 0246                 move.w     582(a0),d0
[00039eae] 663e                      bne.s      Apd_delete_1
[00039eb0] 42a7                      clr.l      -(a7)
[00039eb2] 42a7                      clr.l      -(a7)
[00039eb4] 42a7                      clr.l      -(a7)
[00039eb6] 486f 000c                 pea.l      12(a7)
[00039eba] 720a                      moveq.l    #10,d1
[00039ebc] 4240                      clr.w      d0
[00039ebe] 4eb9 0007 14ea            jsr        wind_get
[00039ec4] 4fef 0010                 lea.l      16(a7),a7
[00039ec8] 3017                      move.w     (a7),d0
[00039eca] 4eb9 0004 e5ea            jsr        Awi_wid
[00039ed0] 2448                      movea.l    a0,a2
[00039ed2] 200a                      move.l     a2,d0
[00039ed4] 6736                      beq.s      Apd_delete_2
[00039ed6] 4eb9 0004 e608            jsr        Awi_root
[00039edc] b5c8                      cmpa.l     a0,a2
[00039ede] 672c                      beq.s      Apd_delete_2
[00039ee0] 93c9                      suba.l     a1,a1
[00039ee2] 7002                      moveq.l    #2,d0
[00039ee4] 204a                      movea.l    a2,a0
[00039ee6] 266a 0004                 movea.l    4(a2),a3
[00039eea] 4e93                      jsr        (a3)
[00039eec] 601e                      bra.s      Apd_delete_2
Apd_delete_1:
[00039eee] 2079 0010 1f12            movea.l    ACSblk,a0
[00039ef4] 2268 0258                 movea.l    600(a0),a1
[00039ef8] 2468 0240                 movea.l    576(a0),a2
[00039efc] b3ca                      cmpa.l     a2,a1
[00039efe] 670c                      beq.s      Apd_delete_2
[00039f00] 700b                      moveq.l    #11,d0
[00039f02] 266a 0004                 movea.l    4(a2),a3
[00039f06] 204a                      movea.l    a2,a0
[00039f08] 93c9                      suba.l     a1,a1
[00039f0a] 4e93                      jsr        (a3)
Apd_delete_2:
[00039f0c] 544f                      addq.w     #2,a7
[00039f0e] 265f                      movea.l    (a7)+,a3
[00039f10] 245f                      movea.l    (a7)+,a2
[00039f12] 4e75                      rts

Apd_info:
[00039f14] 2f0a                      move.l     a2,-(a7)
[00039f16] 2f0b                      move.l     a3,-(a7)
[00039f18] 45f9 0010 1f12            lea.l      ACSblk,a2
[00039f1e] 2052                      movea.l    (a2),a0
[00039f20] 3028 0246                 move.w     582(a0),d0
[00039f24] 6608                      bne.s      Apd_info_1
[00039f26] 2068 029c                 movea.l    668(a0),a0
[00039f2a] 4e90                      jsr        (a0)
[00039f2c] 601e                      bra.s      Apd_info_2
Apd_info_1:
[00039f2e] 2052                      movea.l    (a2),a0
[00039f30] 2268 0258                 movea.l    600(a0),a1
[00039f34] 2668 0240                 movea.l    576(a0),a3
[00039f38] b3cb                      cmpa.l     a3,a1
[00039f3a] 6710                      beq.s      Apd_info_2
[00039f3c] b7c9                      cmpa.l     a1,a3
[00039f3e] 670c                      beq.s      Apd_info_2
[00039f40] 700f                      moveq.l    #15,d0
[00039f42] 246b 0004                 movea.l    4(a3),a2
[00039f46] 204b                      movea.l    a3,a0
[00039f48] 93c9                      suba.l     a1,a1
[00039f4a] 4e92                      jsr        (a2)
Apd_info_2:
[00039f4c] 265f                      movea.l    (a7)+,a3
[00039f4e] 245f                      movea.l    (a7)+,a2
[00039f50] 4e75                      rts

Apd_list:
[00039f52] 2f0a                      move.l     a2,-(a7)
[00039f54] 2f0b                      move.l     a3,-(a7)
[00039f56] 554f                      subq.w     #2,a7
[00039f58] 42a7                      clr.l      -(a7)
[00039f5a] 42a7                      clr.l      -(a7)
[00039f5c] 42a7                      clr.l      -(a7)
[00039f5e] 486f 000c                 pea.l      12(a7)
[00039f62] 720a                      moveq.l    #10,d1
[00039f64] 4240                      clr.w      d0
[00039f66] 4eb9 0007 14ea            jsr        wind_get
[00039f6c] 4fef 0010                 lea.l      16(a7),a7
[00039f70] 3017                      move.w     (a7),d0
[00039f72] 4eb9 0004 e5ea            jsr        Awi_wid
[00039f78] 2448                      movea.l    a0,a2
[00039f7a] 4eb9 0004 ef2a            jsr        Awi_list
[00039f80] 2648                      movea.l    a0,a3
[00039f82] b5c8                      cmpa.l     a0,a2
[00039f84] 6608                      bne.s      Apd_list_1
[00039f86] 4eb9 0004 ef2a            jsr        Awi_list
[00039f8c] 2648                      movea.l    a0,a3
Apd_list_1:
[00039f8e] 200a                      move.l     a2,d0
[00039f90] 6714                      beq.s      Apd_list_2
[00039f92] 6008                      bra.s      Apd_list_3
Apd_list_4:
[00039f94] 4eb9 0004 ef2a            jsr        Awi_list
[00039f9a] 2648                      movea.l    a0,a3
Apd_list_3:
[00039f9c] b7ca                      cmpa.l     a2,a3
[00039f9e] 6706                      beq.s      Apd_list_2
[00039fa0] 302b 0020                 move.w     32(a3),d0
[00039fa4] 6fee                      ble.s      Apd_list_4
Apd_list_2:
[00039fa6] 200b                      move.l     a3,d0
[00039fa8] 670e                      beq.s      Apd_list_5
[00039faa] 322b 0020                 move.w     32(a3),d1
[00039fae] 6f08                      ble.s      Apd_list_5
[00039fb0] 204b                      movea.l    a3,a0
[00039fb2] 4eb9 0004 f0ca            jsr        Awi_show
Apd_list_5:
[00039fb8] 544f                      addq.w     #2,a7
[00039fba] 265f                      movea.l    (a7)+,a3
[00039fbc] 245f                      movea.l    (a7)+,a2
[00039fbe] 4e75                      rts

Apd_module:
[00039fc0] 2039 000c 2f70            move.l     module_window,d0
[00039fc6] 6708                      beq.s      Apd_module_1
[00039fc8] 2040                      movea.l    d0,a0
[00039fca] 4eb9 0004 f0ca            jsr        Awi_show
Apd_module_1:
[00039fd0] 4e75                      rts

Apd_new:
[00039fd2] 91c8                      suba.l     a0,a0
[00039fd4] 4eb9 0003 a240            jsr        new_call
[00039fda] 4e75                      rts

Apd_open:
[00039fdc] 2f0a                      move.l     a2,-(a7)
[00039fde] 2f0b                      move.l     a3,-(a7)
[00039fe0] 2079 0010 1f12            movea.l    ACSblk,a0
[00039fe6] 3028 0246                 move.w     582(a0),d0
[00039fea] 6e0a                      bgt.s      Apd_open_1
[00039fec] 91c8                      suba.l     a0,a0
[00039fee] 4eb9 0003 a240            jsr        new_call
[00039ff4] 601c                      bra.s      Apd_open_2
Apd_open_1:
[00039ff6] 2079 0010 1f12            movea.l    ACSblk,a0
[00039ffc] 2468 0240                 movea.l    576(a0),a2
[0003a000] b5e8 0258                 cmpa.l     600(a0),a2
[0003a004] 670c                      beq.s      Apd_open_2
[0003a006] 93c9                      suba.l     a1,a1
[0003a008] 700a                      moveq.l    #10,d0
[0003a00a] 266a 0004                 movea.l    4(a2),a3
[0003a00e] 204a                      movea.l    a2,a0
[0003a010] 4e93                      jsr        (a3)
Apd_open_2:
[0003a012] 265f                      movea.l    (a7)+,a3
[0003a014] 245f                      movea.l    (a7)+,a2
[0003a016] 4e75                      rts

Apd_quit:
[0003a018] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a01e] 2068 02a0                 movea.l    672(a0),a0
[0003a022] 4e90                      jsr        (a0)
[0003a024] 4e75                      rts

open_one_file:
[0003a026] 2f0a                      move.l     a2,-(a7)
[0003a028] 2f0b                      move.l     a3,-(a7)
[0003a02a] 4fef ff00                 lea.l      -256(a7),a7
[0003a02e] 2448                      movea.l    a0,a2
[0003a030] 2649                      movea.l    a1,a3
[0003a032] 43f9 000c 3f20            lea.l      $000C3F20,a1
[0003a038] 41d7                      lea.l      (a7),a0
[0003a03a] 303c 00ff                 move.w     #$00FF,d0
open_one_file_1:
[0003a03e] 10d9                      move.b     (a1)+,(a0)+
[0003a040] 51c8 fffc                 dbf        d0,open_one_file_1
[0003a044] 200a                      move.l     a2,d0
[0003a046] 672c                      beq.s      open_one_file_2
[0003a048] 222a 0114                 move.l     276(a2),d1
[0003a04c] 6726                      beq.s      open_one_file_2
[0003a04e] 204b                      movea.l    a3,a0
[0003a050] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0003a056] 4a40                      tst.w      d0
[0003a058] 660a                      bne.s      open_one_file_3
[0003a05a] 224b                      movea.l    a3,a1
[0003a05c] 41d7                      lea.l      (a7),a0
[0003a05e] 4eb9 0004 7aaa            jsr        Af_unquote
open_one_file_3:
[0003a064] 200b                      move.l     a3,d0
[0003a066] 6704                      beq.s      open_one_file_4
[0003a068] 41d7                      lea.l      (a7),a0
[0003a06a] 6002                      bra.s      open_one_file_5
open_one_file_4:
[0003a06c] 91c8                      suba.l     a0,a0
open_one_file_5:
[0003a06e] 226a 0114                 movea.l    276(a2),a1
[0003a072] 4e91                      jsr        (a1)
open_one_file_2:
[0003a074] 4fef 0100                 lea.l      256(a7),a7
[0003a078] 265f                      movea.l    (a7)+,a3
[0003a07a] 245f                      movea.l    (a7)+,a2
[0003a07c] 4e75                      rts

open_files:
[0003a07e] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003a082] 2448                      movea.l    a0,a2
[0003a084] 2849                      movea.l    a1,a4
[0003a086] 200a                      move.l     a2,d0
[0003a088] 674e                      beq.s      open_files_1
[0003a08a] 222a 0114                 move.l     276(a2),d1
[0003a08e] 6748                      beq.s      open_files_1
[0003a090] 97cb                      suba.l     a3,a3
[0003a092] 2049                      movea.l    a1,a0
[0003a094] 4eb9 0004 7b12            jsr        Af_parseCmdLine
[0003a09a] 2648                      movea.l    a0,a3
[0003a09c] 200b                      move.l     a3,d0
[0003a09e] 6730                      beq.s      open_files_2
[0003a0a0] 226b 0038                 movea.l    56(a3),a1
[0003a0a4] 4e91                      jsr        (a1)
[0003a0a6] 4a80                      tst.l      d0
[0003a0a8] 6f14                      ble.s      open_files_3
[0003a0aa] 487a ff7a                 pea.l      open_one_file(pc)
[0003a0ae] 42a7                      clr.l      -(a7)
[0003a0b0] 224a                      movea.l    a2,a1
[0003a0b2] 204b                      movea.l    a3,a0
[0003a0b4] 286b 0040                 movea.l    64(a3),a4
[0003a0b8] 4e94                      jsr        (a4)
[0003a0ba] 504f                      addq.w     #8,a7
[0003a0bc] 6008                      bra.s      open_files_4
open_files_3:
[0003a0be] 93c9                      suba.l     a1,a1
[0003a0c0] 204a                      movea.l    a2,a0
[0003a0c2] 6100 ff62                 bsr        open_one_file
open_files_4:
[0003a0c6] 204b                      movea.l    a3,a0
[0003a0c8] 4eb9 0006 2aa6            jsr        Alu_delete
[0003a0ce] 6008                      bra.s      open_files_1
open_files_2:
[0003a0d0] 93c9                      suba.l     a1,a1
[0003a0d2] 204a                      movea.l    a2,a0
[0003a0d4] 6100 ff50                 bsr        open_one_file
open_files_1:
[0003a0d8] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003a0dc] 4e75                      rts

OpenDraggedFiles:
[0003a0de] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003a0e2] 2a48                      movea.l    a0,a5
[0003a0e4] 2279 0010 1f12            movea.l    ACSblk,a1
[0003a0ea] 2469 0240                 movea.l    576(a1),a2
[0003a0ee] 0c69 0001 0246            cmpi.w     #$0001,582(a1)
[0003a0f4] 6d00 0090                 blt        OpenDraggedFiles_1
[0003a0f8] 4eb9 0004 4840            jsr        Adr_start
[0003a0fe] 6000 0078                 bra.w      OpenDraggedFiles_2
OpenDraggedFiles_10:
[0003a102] 3003                      move.w     d3,d0
[0003a104] c07c 1000                 and.w      #$1000,d0
[0003a108] 6720                      beq.s      OpenDraggedFiles_3
[0003a10a] 222a 0018                 move.l     24(a2),d1
[0003a10e] 6716                      beq.s      OpenDraggedFiles_4
[0003a110] 3003                      move.w     d3,d0
[0003a112] c07c 0fff                 and.w      #$0FFF,d0
[0003a116] 48c0                      ext.l      d0
[0003a118] 2400                      move.l     d0,d2
[0003a11a] d482                      add.l      d2,d2
[0003a11c] d480                      add.l      d0,d2
[0003a11e] e78a                      lsl.l      #3,d2
[0003a120] 2641                      movea.l    d1,a3
[0003a122] d7c2                      adda.l     d2,a3
[0003a124] 6002                      bra.s      OpenDraggedFiles_5
OpenDraggedFiles_4:
[0003a126] 97cb                      suba.l     a3,a3
OpenDraggedFiles_5:
[0003a128] 601a                      bra.s      OpenDraggedFiles_6
OpenDraggedFiles_3:
[0003a12a] 202a 0014                 move.l     20(a2),d0
[0003a12e] 6712                      beq.s      OpenDraggedFiles_7
[0003a130] 3403                      move.w     d3,d2
[0003a132] 48c2                      ext.l      d2
[0003a134] 2202                      move.l     d2,d1
[0003a136] d281                      add.l      d1,d1
[0003a138] d282                      add.l      d2,d1
[0003a13a] e789                      lsl.l      #3,d1
[0003a13c] 2640                      movea.l    d0,a3
[0003a13e] d7c1                      adda.l     d1,a3
[0003a140] 6002                      bra.s      OpenDraggedFiles_6
OpenDraggedFiles_7:
[0003a142] 97cb                      suba.l     a3,a3
OpenDraggedFiles_6:
[0003a144] 200b                      move.l     a3,d0
[0003a146] 6718                      beq.s      OpenDraggedFiles_8
[0003a148] 7220                      moveq.l    #32,d1
[0003a14a] c26b 0008                 and.w      8(a3),d1
[0003a14e] 6610                      bne.s      OpenDraggedFiles_8
[0003a150] 342b 0020                 move.w     32(a3),d2
[0003a154] c47c 8000                 and.w      #$8000,d2
[0003a158] 6706                      beq.s      OpenDraggedFiles_8
[0003a15a] 49eb 0018                 lea.l      24(a3),a4
[0003a15e] 6002                      bra.s      OpenDraggedFiles_9
OpenDraggedFiles_8:
[0003a160] 99cc                      suba.l     a4,a4
OpenDraggedFiles_9:
[0003a162] 200c                      move.l     a4,d0
[0003a164] 6712                      beq.s      OpenDraggedFiles_2
[0003a166] 0c6c 0014 0016            cmpi.w     #$0014,22(a4)
[0003a16c] 660a                      bne.s      OpenDraggedFiles_2
[0003a16e] 226c 000c                 movea.l    12(a4),a1
[0003a172] 204d                      movea.l    a5,a0
[0003a174] 6100 ff08                 bsr        open_files
OpenDraggedFiles_2:
[0003a178] 4eb9 0004 484c            jsr        Adr_next
[0003a17e] 3600                      move.w     d0,d3
[0003a180] 5240                      addq.w     #1,d0
[0003a182] 6600 ff7e                 bne        OpenDraggedFiles_10
OpenDraggedFiles_1:
[0003a186] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003a18a] 4e75                      rts

CheckDraggedFiles:
[0003a18c] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003a190] 2648                      movea.l    a0,a3
[0003a192] 2279 0010 1f12            movea.l    ACSblk,a1
[0003a198] 2469 0240                 movea.l    576(a1),a2
[0003a19c] 0c69 0001 0246            cmpi.w     #$0001,582(a1)
[0003a1a2] 6c08                      bge.s      CheckDraggedFiles_1
[0003a1a4] 4250                      clr.w      (a0)
[0003a1a6] 4240                      clr.w      d0
[0003a1a8] 6000 0090                 bra        CheckDraggedFiles_2
CheckDraggedFiles_1:
[0003a1ac] 4eb9 0004 4840            jsr        Adr_start
[0003a1b2] 6000 0074                 bra.w      CheckDraggedFiles_3
CheckDraggedFiles_12:
[0003a1b6] 3003                      move.w     d3,d0
[0003a1b8] c07c 1000                 and.w      #$1000,d0
[0003a1bc] 6720                      beq.s      CheckDraggedFiles_4
[0003a1be] 222a 0018                 move.l     24(a2),d1
[0003a1c2] 6716                      beq.s      CheckDraggedFiles_5
[0003a1c4] 3003                      move.w     d3,d0
[0003a1c6] c07c 0fff                 and.w      #$0FFF,d0
[0003a1ca] 48c0                      ext.l      d0
[0003a1cc] 2400                      move.l     d0,d2
[0003a1ce] d482                      add.l      d2,d2
[0003a1d0] d480                      add.l      d0,d2
[0003a1d2] e78a                      lsl.l      #3,d2
[0003a1d4] 2841                      movea.l    d1,a4
[0003a1d6] d9c2                      adda.l     d2,a4
[0003a1d8] 6002                      bra.s      CheckDraggedFiles_6
CheckDraggedFiles_5:
[0003a1da] 99cc                      suba.l     a4,a4
CheckDraggedFiles_6:
[0003a1dc] 601a                      bra.s      CheckDraggedFiles_7
CheckDraggedFiles_4:
[0003a1de] 202a 0014                 move.l     20(a2),d0
[0003a1e2] 6712                      beq.s      CheckDraggedFiles_8
[0003a1e4] 3403                      move.w     d3,d2
[0003a1e6] 48c2                      ext.l      d2
[0003a1e8] 2202                      move.l     d2,d1
[0003a1ea] d281                      add.l      d1,d1
[0003a1ec] d282                      add.l      d2,d1
[0003a1ee] e789                      lsl.l      #3,d1
[0003a1f0] 2840                      movea.l    d0,a4
[0003a1f2] d9c1                      adda.l     d1,a4
[0003a1f4] 6002                      bra.s      CheckDraggedFiles_7
CheckDraggedFiles_8:
[0003a1f6] 99cc                      suba.l     a4,a4
CheckDraggedFiles_7:
[0003a1f8] 200c                      move.l     a4,d0
[0003a1fa] 6718                      beq.s      CheckDraggedFiles_9
[0003a1fc] 7220                      moveq.l    #32,d1
[0003a1fe] c26c 0008                 and.w      8(a4),d1
[0003a202] 6610                      bne.s      CheckDraggedFiles_9
[0003a204] 342c 0020                 move.w     32(a4),d2
[0003a208] c47c 8000                 and.w      #$8000,d2
[0003a20c] 6706                      beq.s      CheckDraggedFiles_9
[0003a20e] 4bec 0018                 lea.l      24(a4),a5
[0003a212] 6002                      bra.s      CheckDraggedFiles_10
CheckDraggedFiles_9:
[0003a214] 9bcd                      suba.l     a5,a5
CheckDraggedFiles_10:
[0003a216] 200d                      move.l     a5,d0
[0003a218] 670e                      beq.s      CheckDraggedFiles_3
[0003a21a] 0c6d 0014 0016            cmpi.w     #$0014,22(a5)
[0003a220] 6606                      bne.s      CheckDraggedFiles_3
[0003a222] 36bc 0001                 move.w     #$0001,(a3)
[0003a226] 6010                      bra.s      CheckDraggedFiles_11
CheckDraggedFiles_3:
[0003a228] 4eb9 0004 484c            jsr        Adr_next
[0003a22e] 3600                      move.w     d0,d3
[0003a230] 5240                      addq.w     #1,d0
[0003a232] 6600 ff82                 bne.w      CheckDraggedFiles_12
[0003a236] 4253                      clr.w      (a3)
CheckDraggedFiles_11:
[0003a238] 7001                      moveq.l    #1,d0
CheckDraggedFiles_2:
[0003a23a] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003a23e] 4e75                      rts

new_call:
[0003a240] 2f0a                      move.l     a2,-(a7)
[0003a242] 2f0b                      move.l     a3,-(a7)
[0003a244] 2648                      movea.l    a0,a3
[0003a246] 2039 000c 2f70            move.l     module_window,d0
[0003a24c] 670c                      beq.s      new_call_1
[0003a24e] 2240                      movea.l    d0,a1
[0003a250] 2451                      movea.l    (a1),a2
[0003a252] 204a                      movea.l    a2,a0
[0003a254] 224b                      movea.l    a3,a1
[0003a256] 6100 fe26                 bsr        open_files
new_call_1:
[0003a25a] 265f                      movea.l    (a7)+,a3
[0003a25c] 245f                      movea.l    (a7)+,a2
[0003a25e] 4e75                      rts

build_work:
[0003a260] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0003a264] 5d4f                      subq.w     #6,a7
[0003a266] 426f 0004                 clr.w      4(a7)
[0003a26a] 203c 0000 3018            move.l     #$00003018,d0
[0003a270] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003a276] 2648                      movea.l    a0,a3
[0003a278] 284b                      movea.l    a3,a4
[0003a27a] 200c                      move.l     a4,d0
[0003a27c] 6700 009a                 beq        build_work_1
[0003a280] 45f9 000c 3ca4            lea.l      PUR_ICONS,a2
[0003a286] 7018                      moveq.l    #24,d0
[0003a288] 224a                      movea.l    a2,a1
[0003a28a] 204c                      movea.l    a4,a0
[0003a28c] 4eb9 0007 6f44            jsr        memcpy
[0003a292] 4bea 0018                 lea.l      24(a2),a5
[0003a296] 49ec 0018                 lea.l      24(a4),a4
[0003a29a] 4243                      clr.w      d3
[0003a29c] 6000 00aa                 bra        build_work_2
build_work_8:
[0003a2a0] 7018                      moveq.l    #24,d0
[0003a2a2] 224d                      movea.l    a5,a1
[0003a2a4] 204c                      movea.l    a4,a0
[0003a2a6] 4eb9 0007 6f44            jsr        memcpy
[0003a2ac] 7018                      moveq.l    #24,d0
[0003a2ae] 43ed 0018                 lea.l      24(a5),a1
[0003a2b2] 41ec 0018                 lea.l      24(a4),a0
[0003a2b6] 4eb9 0007 6f44            jsr        memcpy
[0003a2bc] 102c 0007                 move.b     7(a4),d0
[0003a2c0] 4880                      ext.w      d0
[0003a2c2] 907c 0018                 sub.w      #$0018,d0
[0003a2c6] 670a                      beq.s      build_work_3
[0003a2c8] 5f40                      subq.w     #7,d0
[0003a2ca] 6738                      beq.s      build_work_4
[0003a2cc] 5540                      subq.w     #2,d0
[0003a2ce] 6734                      beq.s      build_work_4
[0003a2d0] 6042                      bra.s      build_work_5
build_work_3:
[0003a2d2] 206c 000c                 movea.l    12(a4),a0
[0003a2d6] 4eb9 0004 a1f0            jsr        Aus_create
[0003a2dc] 2448                      movea.l    a0,a2
[0003a2de] 2e88                      move.l     a0,(a7)
[0003a2e0] 2948 000c                 move.l     a0,12(a4)
[0003a2e4] 200a                      move.l     a2,d0
[0003a2e6] 672c                      beq.s      build_work_5
[0003a2e8] 222a 0008                 move.l     8(a2),d1
[0003a2ec] 6726                      beq.s      build_work_5
[0003a2ee] 43ef 0004                 lea.l      4(a7),a1
[0003a2f2] 2c41                      movea.l    d1,a6
[0003a2f4] 204c                      movea.l    a4,a0
[0003a2f6] 7001                      moveq.l    #1,d0
[0003a2f8] 4e96                      jsr        (a6)
[0003a2fa] 0c6f ffff 0004            cmpi.w     #$FFFF,4(a7)
[0003a300] 6716                      beq.s      build_work_1
[0003a302] 6010                      bra.s      build_work_5
build_work_4:
[0003a304] 206c 000c                 movea.l    12(a4),a0
[0003a308] 4eb9 0004 9e38            jsr        Aic_create
[0003a30e] 2e88                      move.l     a0,(a7)
[0003a310] 2948 000c                 move.l     a0,12(a4)
build_work_5:
[0003a314] 2017                      move.l     (a7),d0
[0003a316] 6606                      bne.s      build_work_6
build_work_1:
[0003a318] 91c8                      suba.l     a0,a0
[0003a31a] 6000 007e                 bra.w      build_work_7
build_work_6:
[0003a31e] 006c 0080 0008            ori.w      #$0080,8(a4)
[0003a324] 026c ffdf 0008            andi.w     #$FFDF,8(a4)
[0003a32a] 026c ffdf 0020            andi.w     #$FFDF,32(a4)
[0003a330] 70ff                      moveq.l    #-1,d0
[0003a332] 3940 0004                 move.w     d0,4(a4)
[0003a336] 3940 0002                 move.w     d0,2(a4)
[0003a33a] 3203                      move.w     d3,d1
[0003a33c] d241                      add.w      d1,d1
[0003a33e] 5641                      addq.w     #3,d1
[0003a340] 3881                      move.w     d1,(a4)
[0003a342] 49ec 0030                 lea.l      48(a4),a4
[0003a346] 5243                      addq.w     #1,d3
build_work_2:
[0003a348] b67c 0100                 cmp.w      #$0100,d3
[0003a34c] 6d00 ff52                 blt        build_work_8
[0003a350] 49ec ffd0                 lea.l      -48(a4),a4
[0003a354] 006c 0020 0020            ori.w      #$0020,32(a4)
[0003a35a] 4254                      clr.w      (a4)
[0003a35c] 36bc ffff                 move.w     #$FFFF,(a3)
[0003a360] 377c 0001 0002            move.w     #$0001,2(a3)
[0003a366] 377c 01ff 0004            move.w     #$01FF,4(a3)
[0003a36c] 376c 0016 0016            move.w     22(a4),22(a3)
[0003a372] 0c6d 000c 0014            cmpi.w     #$000C,20(a5)
[0003a378] 6c04                      bge.s      build_work_9
[0003a37a] 700c                      moveq.l    #12,d0
[0003a37c] 6004                      bra.s      build_work_10
build_work_9:
[0003a37e] 302d 0014                 move.w     20(a5),d0
build_work_10:
[0003a382] 3740 0014                 move.w     d0,20(a3)
[0003a386] 7201                      moveq.l    #1,d1
[0003a388] 3741 002a                 move.w     d1,42(a3)
[0003a38c] 3741 0028                 move.w     d1,40(a3)
[0003a390] 204b                      movea.l    a3,a0
[0003a392] 4eb9 0004 a25e            jsr        Aob_fix
[0003a398] 204b                      movea.l    a3,a0
build_work_7:
[0003a39a] 5c4f                      addq.w     #6,a7
[0003a39c] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0003a3a0] 4e75                      rts

click_modwin:
[0003a3a2] 2f0a                      move.l     a2,-(a7)
[0003a3a4] 2f0b                      move.l     a3,-(a7)
[0003a3a6] 45f9 0010 1f12            lea.l      ACSblk,a2
[0003a3ac] 2052                      movea.l    (a2),a0
[0003a3ae] 3228 0260                 move.w     608(a0),d1
[0003a3b2] 48c1                      ext.l      d1
[0003a3b4] 2001                      move.l     d1,d0
[0003a3b6] d080                      add.l      d0,d0
[0003a3b8] d081                      add.l      d1,d0
[0003a3ba] e788                      lsl.l      #3,d0
[0003a3bc] 2068 025c                 movea.l    604(a0),a0
[0003a3c0] 41f0 0818                 lea.l      24(a0,d0.l),a0
[0003a3c4] 2668 000c                 movea.l    12(a0),a3
[0003a3c8] 240b                      move.l     a3,d2
[0003a3ca] 6700 00ae                 beq        click_modwin_1
[0003a3ce] 342b 0020                 move.w     32(a3),d2
[0003a3d2] 6f00 007c                 ble.w      click_modwin_2
[0003a3d6] 2252                      movea.l    (a2),a1
[0003a3d8] 2069 025c                 movea.l    604(a1),a0
[0003a3dc] 3230 080a                 move.w     10(a0,d0.l),d1
[0003a3e0] c27c 4000                 and.w      #$4000,d1
[0003a3e4] 676a                      beq.s      click_modwin_2
[0003a3e6] 3429 0008                 move.w     8(a1),d2
[0003a3ea] 3029 000c                 move.w     12(a1),d0
[0003a3ee] e240                      asr.w      #1,d0
[0003a3f0] d069 0008                 add.w      8(a1),d0
[0003a3f4] 322b 0028                 move.w     40(a3),d1
[0003a3f8] e241                      asr.w      #1,d1
[0003a3fa] 9041                      sub.w      d1,d0
[0003a3fc] b440                      cmp.w      d0,d2
[0003a3fe] 6f02                      ble.s      click_modwin_3
[0003a400] 6014                      bra.s      click_modwin_4
click_modwin_3:
[0003a402] 2052                      movea.l    (a2),a0
[0003a404] 3428 000c                 move.w     12(a0),d2
[0003a408] e242                      asr.w      #1,d2
[0003a40a] d468 0008                 add.w      8(a0),d2
[0003a40e] 302b 0028                 move.w     40(a3),d0
[0003a412] e240                      asr.w      #1,d0
[0003a414] 9440                      sub.w      d0,d2
click_modwin_4:
[0003a416] 3742 0024                 move.w     d2,36(a3)
[0003a41a] 2052                      movea.l    (a2),a0
[0003a41c] 3028 000a                 move.w     10(a0),d0
[0003a420] 3228 000e                 move.w     14(a0),d1
[0003a424] e241                      asr.w      #1,d1
[0003a426] d268 000a                 add.w      10(a0),d1
[0003a42a] 342b 002a                 move.w     42(a3),d2
[0003a42e] e242                      asr.w      #1,d2
[0003a430] 9242                      sub.w      d2,d1
[0003a432] b041                      cmp.w      d1,d0
[0003a434] 6f02                      ble.s      click_modwin_5
[0003a436] 6014                      bra.s      click_modwin_6
click_modwin_5:
[0003a438] 2052                      movea.l    (a2),a0
[0003a43a] 3028 000e                 move.w     14(a0),d0
[0003a43e] e240                      asr.w      #1,d0
[0003a440] d068 000a                 add.w      10(a0),d0
[0003a444] 322b 002a                 move.w     42(a3),d1
[0003a448] e241                      asr.w      #1,d1
[0003a44a] 9041                      sub.w      d1,d0
click_modwin_6:
[0003a44c] 3740 0026                 move.w     d0,38(a3)
click_modwin_2:
[0003a450] 302b 0020                 move.w     32(a3),d0
[0003a454] 6f1c                      ble.s      click_modwin_7
[0003a456] 006b 0010 0056            ori.w      #$0010,86(a3)
[0003a45c] 43eb 0024                 lea.l      36(a3),a1
[0003a460] 204b                      movea.l    a3,a0
[0003a462] 246b 0086                 movea.l    134(a3),a2
[0003a466] 4e92                      jsr        (a2)
[0003a468] 204b                      movea.l    a3,a0
[0003a46a] 226b 006e                 movea.l    110(a3),a1
[0003a46e] 4e91                      jsr        (a1)
[0003a470] 6008                      bra.s      click_modwin_1
click_modwin_7:
[0003a472] 204b                      movea.l    a3,a0
[0003a474] 4eb9 0004 f0ca            jsr        Awi_show
click_modwin_1:
[0003a47a] 265f                      movea.l    (a7)+,a3
[0003a47c] 245f                      movea.l    (a7)+,a2
[0003a47e] 4e75                      rts

drag_modwin:
[0003a480] 2f0a                      move.l     a2,-(a7)
[0003a482] 2f0b                      move.l     a3,-(a7)
[0003a484] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a48a] 3228 0260                 move.w     608(a0),d1
[0003a48e] 48c1                      ext.l      d1
[0003a490] 2001                      move.l     d1,d0
[0003a492] d080                      add.l      d0,d0
[0003a494] d081                      add.l      d1,d0
[0003a496] e788                      lsl.l      #3,d0
[0003a498] 2068 025c                 movea.l    604(a0),a0
[0003a49c] 41f0 0818                 lea.l      24(a0,d0.l),a0
[0003a4a0] 2468 000c                 movea.l    12(a0),a2
[0003a4a4] 240a                      move.l     a2,d2
[0003a4a6] 670c                      beq.s      drag_modwin_1
[0003a4a8] 93c9                      suba.l     a1,a1
[0003a4aa] 266a 0004                 movea.l    4(a2),a3
[0003a4ae] 204a                      movea.l    a2,a0
[0003a4b0] 7010                      moveq.l    #16,d0
[0003a4b2] 4e93                      jsr        (a3)
drag_modwin_1:
[0003a4b4] 265f                      movea.l    (a7)+,a3
[0003a4b6] 245f                      movea.l    (a7)+,a2
[0003a4b8] 4e75                      rts

mod_deldrag:
[0003a4ba] 2f0a                      move.l     a2,-(a7)
[0003a4bc] 93c9                      suba.l     a1,a1
[0003a4be] 700b                      moveq.l    #11,d0
[0003a4c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a4c6] 2068 0240                 movea.l    576(a0),a0
[0003a4ca] 2479 0010 1f12            movea.l    ACSblk,a2
[0003a4d0] 246a 0240                 movea.l    576(a2),a2
[0003a4d4] 246a 0004                 movea.l    4(a2),a2
[0003a4d8] 4e92                      jsr        (a2)
[0003a4da] 245f                      movea.l    (a7)+,a2
[0003a4dc] 4e75                      rts

mod_delete:
[0003a4de] 2f0a                      move.l     a2,-(a7)
[0003a4e0] 93c9                      suba.l     a1,a1
[0003a4e2] 700b                      moveq.l    #11,d0
[0003a4e4] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a4ea] 2068 0258                 movea.l    600(a0),a0
[0003a4ee] 2479 0010 1f12            movea.l    ACSblk,a2
[0003a4f4] 246a 0258                 movea.l    600(a2),a2
[0003a4f8] 246a 0004                 movea.l    4(a2),a2
[0003a4fc] 4e92                      jsr        (a2)
[0003a4fe] 245f                      movea.l    (a7)+,a2
[0003a500] 4e75                      rts

mod_info:
[0003a502] 2f0a                      move.l     a2,-(a7)
[0003a504] 93c9                      suba.l     a1,a1
[0003a506] 700f                      moveq.l    #15,d0
[0003a508] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a50e] 2068 0258                 movea.l    600(a0),a0
[0003a512] 2479 0010 1f12            movea.l    ACSblk,a2
[0003a518] 246a 0258                 movea.l    600(a2),a2
[0003a51c] 246a 0004                 movea.l    4(a2),a2
[0003a520] 4e92                      jsr        (a2)
[0003a522] 245f                      movea.l    (a7)+,a2
[0003a524] 4e75                      rts

mod_infodrag:
[0003a526] 2f0a                      move.l     a2,-(a7)
[0003a528] 93c9                      suba.l     a1,a1
[0003a52a] 700f                      moveq.l    #15,d0
[0003a52c] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a532] 2068 0240                 movea.l    576(a0),a0
[0003a536] 2479 0010 1f12            movea.l    ACSblk,a2
[0003a53c] 246a 0240                 movea.l    576(a2),a2
[0003a540] 246a 0004                 movea.l    4(a2),a2
[0003a544] 4e92                      jsr        (a2)
[0003a546] 245f                      movea.l    (a7)+,a2
[0003a548] 4e75                      rts

load_mod:
[0003a54a] 2f0a                      move.l     a2,-(a7)
[0003a54c] 2f0b                      move.l     a3,-(a7)
[0003a54e] 2648                      movea.l    a0,a3
[0003a550] 2449                      movea.l    a1,a2
[0003a552] 2049                      movea.l    a1,a0
[0003a554] 4eb9 0006 312a            jsr        Ash_module
[0003a55a] 224a                      movea.l    a2,a1
[0003a55c] 41eb 0004                 lea.l      4(a3),a0
[0003a560] 4eb9 0007 6950            jsr        strcpy
[0003a566] 265f                      movea.l    (a7)+,a3
[0003a568] 245f                      movea.l    (a7)+,a2
[0003a56a] 4e75                      rts

mod_load:
[0003a56c] 48e7 0038                 movem.l    a2-a4,-(a7)
[0003a570] 4fef ff00                 lea.l      -256(a7),a7
[0003a574] 2079 0010 1f12            movea.l    ACSblk,a0
[0003a57a] 2268 0258                 movea.l    600(a0),a1
[0003a57e] 2451                      movea.l    (a1),a2
[0003a580] 43ea 0004                 lea.l      4(a2),a1
[0003a584] 41d7                      lea.l      (a7),a0
[0003a586] 4eb9 0007 6950            jsr        strcpy
[0003a58c] 42a7                      clr.l      -(a7)
[0003a58e] 4879 000c 4040            pea.l      $000C4040
[0003a594] 7201                      moveq.l    #1,d1
[0003a596] 4240                      clr.w      d0
[0003a598] 43ef 0008                 lea.l      8(a7),a1
[0003a59c] 41f9 000c 2ffd            lea.l      MODUL_LOAD_TITEL,a0
[0003a5a2] 4eb9 0006 08a6            jsr        Af_fileselect
[0003a5a8] 504f                      addq.w     #8,a7
[0003a5aa] 2648                      movea.l    a0,a3
[0003a5ac] 200b                      move.l     a3,d0
[0003a5ae] 6718                      beq.s      mod_load_1
[0003a5b0] 487a ff98                 pea.l      load_mod(pc)
[0003a5b4] 42a7                      clr.l      -(a7)
[0003a5b6] 224a                      movea.l    a2,a1
[0003a5b8] 286b 0040                 movea.l    64(a3),a4
[0003a5bc] 4e94                      jsr        (a4)
[0003a5be] 504f                      addq.w     #8,a7
[0003a5c0] 204b                      movea.l    a3,a0
[0003a5c2] 4eb9 0006 2aa6            jsr        Alu_delete
mod_load_1:
[0003a5c8] 4fef 0100                 lea.l      256(a7),a7
[0003a5cc] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003a5d0] 4e75                      rts

modul_close:
[0003a5d2] 2f0a                      move.l     a2,-(a7)
[0003a5d4] 2f0b                      move.l     a3,-(a7)
[0003a5d6] 2448                      movea.l    a0,a2
[0003a5d8] 006a 0100 0056            ori.w      #$0100,86(a2)
[0003a5de] 2650                      movea.l    (a0),a3
[0003a5e0] 7008                      moveq.l    #8,d0
[0003a5e2] 43ea 0024                 lea.l      36(a2),a1
[0003a5e6] 41eb 0106                 lea.l      262(a3),a0
[0003a5ea] 4eb9 0007 6f44            jsr        memcpy
[0003a5f0] 204a                      movea.l    a2,a0
[0003a5f2] 4eb9 0005 013e            jsr        Awi_closed
[0003a5f8] 026a feff 0056            andi.w     #$FEFF,86(a2)
[0003a5fe] 265f                      movea.l    (a7)+,a3
[0003a600] 245f                      movea.l    (a7)+,a2
[0003a602] 4e75                      rts

modul_make:
[0003a604] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0003a608] 554f                      subq.w     #2,a7
[0003a60a] 7600                      moveq.l    #0,d3
[0003a60c] 203c 0000 0118            move.l     #$00000118,d0
[0003a612] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003a618] 2448                      movea.l    a0,a2
[0003a61a] 4df9 0010 1f12            lea.l      ACSblk,a6
[0003a620] 200a                      move.l     a2,d0
[0003a622] 6700 0174                 beq        modul_make_1
[0003a626] 223c 0000 0118            move.l     #$00000118,d1
[0003a62c] 204a                      movea.l    a2,a0
[0003a62e] 4240                      clr.w      d0
[0003a630] 4eb9 0007 712e            jsr        memset
[0003a636] 47f9 000c 4040            lea.l      $000C4040,a3
[0003a63c] 41eb 0008                 lea.l      8(a3),a0
[0003a640] 4eb9 0004 7066            jsr        Af_cfgfile
[0003a646] 4240                      clr.w      d0
[0003a648] 4eb9 0007 29f0            jsr        Fopen
[0003a64e] 2800                      move.l     d0,d4
[0003a650] 4a80                      tst.l      d0
[0003a652] 6a14                      bpl.s      modul_make_2
[0003a654] 41eb 000e                 lea.l      14(a3),a0
[0003a658] 4eb9 0004 7066            jsr        Af_cfgfile
[0003a65e] 4240                      clr.w      d0
[0003a660] 4eb9 0007 29f0            jsr        Fopen
[0003a666] 2800                      move.l     d0,d4
modul_make_2:
[0003a668] 4a84                      tst.l      d4
[0003a66a] 6f1a                      ble.s      modul_make_3
[0003a66c] 204a                      movea.l    a2,a0
[0003a66e] 223c 0000 0114            move.l     #$00000114,d1
[0003a674] 3004                      move.w     d4,d0
[0003a676] 4eb9 0007 2a02            jsr        Fread
[0003a67c] 2600                      move.l     d0,d3
[0003a67e] 3004                      move.w     d4,d0
[0003a680] 4eb9 0007 29ae            jsr        Fclose
modul_make_3:
[0003a686] 49f9 000c 3e7e            lea.l      PUR_MODULE,a4
[0003a68c] 206c ffa8                 movea.l    -88(a4),a0
[0003a690] b1fc 000c 3013            cmpa.l     #NAME_PUR_DESK,a0
[0003a696] 6704                      beq.s      modul_make_4
[0003a698] 2948 004a                 move.l     a0,74(a4)
modul_make_4:
[0003a69c] 204c                      movea.l    a4,a0
[0003a69e] 4eb9 0004 f41a            jsr        Awi_create
[0003a6a4] 2a48                      movea.l    a0,a5
[0003a6a6] 294d f0f2                 move.l     a5,-3854(a4)
[0003a6aa] 200d                      move.l     a5,d0
[0003a6ac] 6700 00e2                 beq        modul_make_5
[0003a6b0] 7204                      moveq.l    #4,d1
[0003a6b2] d283                      add.l      d3,d1
[0003a6b4] b2bc 0000 0118            cmp.l      #$00000118,d1
[0003a6ba] 660a                      bne.s      modul_make_6
[0003a6bc] 0c92 5044 534b            cmpi.l     #$5044534B,(a2)
[0003a6c2] 6700 00a4                 beq        modul_make_7
modul_make_6:
[0003a6c6] 223c 0000 0118            move.l     #$00000118,d1
[0003a6cc] 4240                      clr.w      d0
[0003a6ce] 204a                      movea.l    a2,a0
[0003a6d0] 4eb9 0007 712e            jsr        memset
[0003a6d6] 2056                      movea.l    (a6),a0
[0003a6d8] 2268 023c                 movea.l    572(a0),a1
[0003a6dc] 3569 000e 0112            move.w     14(a1),274(a2)
[0003a6e2] 2056                      movea.l    (a6),a0
[0003a6e4] 1028 02d6                 move.b     726(a0),d0
[0003a6e8] 6712                      beq.s      modul_make_8
[0003a6ea] 2248                      movea.l    a0,a1
[0003a6ec] 43e9 02d6                 lea.l      726(a1),a1
[0003a6f0] 41ea 0004                 lea.l      4(a2),a0
[0003a6f4] 4eb9 0007 6950            jsr        strcpy
[0003a6fa] 600e                      bra.s      modul_make_9
modul_make_8:
[0003a6fc] 43eb 0014                 lea.l      20(a3),a1
[0003a700] 41ea 0004                 lea.l      4(a2),a0
[0003a704] 4eb9 0007 6950            jsr        strcpy
modul_make_9:
[0003a70a] 0c2a 0043 0004            cmpi.b     #$43,4(a2)
[0003a710] 6c22                      bge.s      modul_make_10
[0003a712] 4eb9 0007 2902            jsr        Dgetdrv
[0003a718] 4eb9 0007 2978            jsr        Dsetdrv
[0003a71e] c0bc 0000 0004            and.l      #$00000004,d0
[0003a724] 670e                      beq.s      modul_make_10
[0003a726] 43eb 0018                 lea.l      24(a3),a1
[0003a72a] 41ea 0004                 lea.l      4(a2),a0
[0003a72e] 4eb9 0007 6950            jsr        strcpy
modul_make_10:
[0003a734] 2056                      movea.l    (a6),a0
[0003a736] 3028 0008                 move.w     8(a0),d0
[0003a73a] d068 0012                 add.w      18(a0),d0
[0003a73e] 3540 0106                 move.w     d0,262(a2)
[0003a742] 2056                      movea.l    (a6),a0
[0003a744] 3228 0008                 move.w     8(a0),d1
[0003a748] d268 0012                 add.w      18(a0),d1
[0003a74c] 3541 0106                 move.w     d1,262(a2)
[0003a750] 2056                      movea.l    (a6),a0
[0003a752] 3028 000c                 move.w     12(a0),d0
[0003a756] e240                      asr.w      #1,d0
[0003a758] 3540 010a                 move.w     d0,266(a2)
[0003a75c] 2056                      movea.l    (a6),a0
[0003a75e] 3228 000e                 move.w     14(a0),d1
[0003a762] e241                      asr.w      #1,d1
[0003a764] 3541 010c                 move.w     d1,268(a2)
modul_make_7:
[0003a768] 24bc 5044 534b            move.l     #$5044534B,(a2)
[0003a76e] 426a 0104                 clr.w      260(a2)
[0003a772] 297c 000c 300a 004a       move.l     #NAME_MODULE,74(a4)
[0003a77a] 2a8a                      move.l     a2,(a5)
[0003a77c] 6100 fae2                 bsr        build_work
[0003a780] 2b48 0014                 move.l     a0,20(a5)
[0003a784] 2008                      move.l     a0,d0
[0003a786] 6616                      bne.s      modul_make_11
[0003a788] 204d                      movea.l    a5,a0
[0003a78a] 4eb9 0005 0330            jsr        Awi_delete
modul_make_5:
[0003a790] 204a                      movea.l    a2,a0
[0003a792] 4eb9 0004 7e26            jsr        Ax_free
modul_make_1:
[0003a798] 91c8                      suba.l     a0,a0
[0003a79a] 6000 009e                 bra        modul_make_12
modul_make_11:
[0003a79e] 7008                      moveq.l    #8,d0
[0003a7a0] 43ea 0106                 lea.l      262(a2),a1
[0003a7a4] 41ed 0024                 lea.l      36(a5),a0
[0003a7a8] 4eb9 0007 6f44            jsr        memcpy
[0003a7ae] 302d 0024                 move.w     36(a5),d0
[0003a7b2] 2056                      movea.l    (a6),a0
[0003a7b4] 3228 0008                 move.w     8(a0),d1
[0003a7b8] d268 000c                 add.w      12(a0),d1
[0003a7bc] b041                      cmp.w      d1,d0
[0003a7be] 6f0c                      ble.s      modul_make_13
[0003a7c0] 3428 0008                 move.w     8(a0),d2
[0003a7c4] d468 0012                 add.w      18(a0),d2
[0003a7c8] 3b42 0024                 move.w     d2,36(a5)
modul_make_13:
[0003a7cc] 302d 0026                 move.w     38(a5),d0
[0003a7d0] 2056                      movea.l    (a6),a0
[0003a7d2] 3228 000a                 move.w     10(a0),d1
[0003a7d6] d268 000e                 add.w      14(a0),d1
[0003a7da] b041                      cmp.w      d1,d0
[0003a7dc] 6f0c                      ble.s      modul_make_14
[0003a7de] 3428 000a                 move.w     10(a0),d2
[0003a7e2] d468 0014                 add.w      20(a0),d2
[0003a7e6] 3b42 0024                 move.w     d2,36(a5)
modul_make_14:
[0003a7ea] 2f39 000d 99d6            move.l     _globl,-(a7)
[0003a7f0] 206d 0014                 movea.l    20(a5),a0
[0003a7f4] 4868 0016                 pea.l      22(a0)
[0003a7f8] 4868 0014                 pea.l      20(a0)
[0003a7fc] 3f2d 002a                 move.w     42(a5),-(a7)
[0003a800] 3f2d 0028                 move.w     40(a5),-(a7)
[0003a804] 3f2d 0026                 move.w     38(a5),-(a7)
[0003a808] 43ef 0012                 lea.l      18(a7),a1
[0003a80c] 41ef 0012                 lea.l      18(a7),a0
[0003a810] 342d 0024                 move.w     36(a5),d2
[0003a814] 322d 0022                 move.w     34(a5),d1
[0003a818] 7001                      moveq.l    #1,d0
[0003a81a] 4eb9 0006 d60a            jsr        mt_wind_calc
[0003a820] 4fef 0012                 lea.l      18(a7),a7
[0003a824] 202d 0018                 move.l     24(a5),d0
[0003a828] 670e                      beq.s      modul_make_15
[0003a82a] 2040                      movea.l    d0,a0
[0003a82c] 3228 0016                 move.w     22(a0),d1
[0003a830] 226d 0014                 movea.l    20(a5),a1
[0003a834] 9369 0016                 sub.w      d1,22(a1)
modul_make_15:
[0003a838] 204d                      movea.l    a5,a0
modul_make_12:
[0003a83a] 544f                      addq.w     #2,a7
[0003a83c] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0003a840] 4e75                      rts

modul_serv_9:
modul_serv_11:
modul_serv:
[0003a842] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0003a846] 4fef fff2                 lea.l      -14(a7),a7
[0003a84a] 2448                      movea.l    a0,a2
[0003a84c] 3600                      move.w     d0,d3
[0003a84e] 2f49 000a                 move.l     a1,10(a7)
[0003a852] 2f50 0006                 move.l     (a0),6(a7)
[0003a856] 47f9 0010 1f12            lea.l      ACSblk,a3
[0003a85c] 3003                      move.w     d3,d0
[0003a85e] b07c 0030                 cmp.w      #$0030,d0
[0003a862] 6700 0300                 beq        modul_serv_1
[0003a866] 6e4a                      bgt.s      modul_serv_2
[0003a868] b07c 001b                 cmp.w      #$001B,d0
[0003a86c] 6200 0392                 bhi        modul_serv_3
[0003a870] d040                      add.w      d0,d0
[0003a872] 303b 0006                 move.w     $0003A87A(pc,d0.w),d0
[0003a876] 4efb 0002                 jmp        $0003A87A(pc,d0.w)
J28:
[0003a87a] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a87c] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a87e] 0062                      dc.w $0062   ; modul_serv_4-J28
[0003a880] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a882] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a884] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a886] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a888] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a88a] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a88c] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a88e] 0176                      dc.w $0176   ; modul_serv_5-J28
[0003a890] 0176                      dc.w $0176   ; modul_serv_5-J28
[0003a892] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a894] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a896] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a898] 0176                      dc.w $0176   ; modul_serv_5-J28
[0003a89a] 013a                      dc.w $013a   ; modul_serv_6-J28
[0003a89c] 0122                      dc.w $0122   ; modul_serv_7-J28
[0003a89e] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a8a0] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a8a2] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a8a4] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a8a6] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a8a8] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a8aa] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a8ac] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a8ae] 0386                      dc.w $0386   ; modul_serv_3-J28
[0003a8b0] 0316                      dc.w $0316   ; modul_serv_8-J28
modul_serv_2:
[0003a8b2] 907c                      dc.w $907c   ; modul_serv_9-J28
[0003a8b4] 0064                      dc.w $0064   ; modul_serv_10-J28
[0003a8b6] b07c                      dc.w $b07c   ; modul_serv_11-J28
[0003a8b8] 0009 6200                 ori.b      #$00,a1 ; apollo only
[0003a8bc] 0344                      bchg       d1,d4
[0003a8be] d040                      add.w      d0,d0
[0003a8c0] 303b 0006                 move.w     $0003A8C8(pc,d0.w),d0
[0003a8c4] 4efb 0002                 jmp        $0003A8C8(pc,d0.w)
J29:
[0003a8c8] 028c                      dc.w $028c   ; modul_serv_12-J29
[0003a8ca] 0268                      dc.w $0268   ; modul_serv_13-J29
[0003a8cc] 0244                      dc.w $0244   ; modul_serv_14-J29
[0003a8ce] 0256                      dc.w $0256   ; modul_serv_15-J29
[0003a8d0] 0200                      dc.w $0200   ; modul_serv_16-J29
[0003a8d2] 0100                      dc.w $0100   ; modul_serv_17-J29
[0003a8d4] 0338                      dc.w $0338   ; modul_serv_3-J29
[0003a8d6] 0338                      dc.w $0338   ; modul_serv_3-J29
[0003a8d8] 0338                      dc.w $0338   ; modul_serv_3-J29
[0003a8da] 0278                      dc.w $0278   ; modul_serv_18-J29
modul_serv_4:
[0003a8dc] 2053                      movea.l    (a3),a0
modul_serv_10:
[0003a8de] 3028 023a                 move.w     570(a0),d0
[0003a8e2] 6700 00ae                 beq        modul_serv_19
[0003a8e6] 322a 0020                 move.w     32(a2),d1
[0003a8ea] 6f42                      ble.s      modul_serv_20
[0003a8ec] 342a 0056                 move.w     86(a2),d2
[0003a8f0] c47c 0800                 and.w      #$0800,d2
[0003a8f4] 6716                      beq.s      modul_serv_21
[0003a8f6] 43ea 002c                 lea.l      44(a2),a1
[0003a8fa] 206f 0006                 movea.l    6(a7),a0
[0003a8fe] 41e8 0106                 lea.l      262(a0),a0
[0003a902] 7008                      moveq.l    #8,d0
[0003a904] 4eb9 0007 6f44            jsr        memcpy
[0003a90a] 6014                      bra.s      modul_serv_22
modul_serv_21:
[0003a90c] 7008                      moveq.l    #8,d0
[0003a90e] 43ea 0024                 lea.l      36(a2),a1
[0003a912] 206f 0006                 movea.l    6(a7),a0
[0003a916] 41e8 0106                 lea.l      262(a0),a0
[0003a91a] 4eb9 0007 6f44            jsr        memcpy
modul_serv_22:
[0003a920] 206f 0006                 movea.l    6(a7),a0
[0003a924] 00a8 0000 0001 010e       ori.l      #$00000001,270(a0)
[0003a92c] 600c                      bra.s      modul_serv_23
modul_serv_20:
[0003a92e] 206f 0006                 movea.l    6(a7),a0
[0003a932] 02a8 ffff fffe 010e       andi.l     #$FFFFFFFE,270(a0)
modul_serv_23:
[0003a93a] 41f9 000c 4048            lea.l      $000C4048,a0
[0003a940] 4eb9 0004 7066            jsr        Af_cfgfile
[0003a946] 4240                      clr.w      d0
[0003a948] 4eb9 0007 29be            jsr        Fcreate
[0003a94e] 2800                      move.l     d0,d4
[0003a950] 4a80                      tst.l      d0
[0003a952] 6f1a                      ble.s      modul_serv_24
[0003a954] 206f 0006                 movea.l    6(a7),a0
[0003a958] 223c 0000 0114            move.l     #$00000114,d1
[0003a95e] 3004                      move.w     d4,d0
[0003a960] 4eb9 0007 2a8e            jsr        Fwrite
[0003a966] 3004                      move.w     d4,d0
[0003a968] 4eb9 0007 29ae            jsr        Fclose
modul_serv_24:
[0003a96e] 206a 0014                 movea.l    20(a2),a0
[0003a972] 4eb9 0004 7e26            jsr        Ax_free
[0003a978] 42aa 0014                 clr.l      20(a2)
[0003a97c] 206f 0006                 movea.l    6(a7),a0
[0003a980] 4eb9 0004 7e26            jsr        Ax_free
[0003a986] 204a                      movea.l    a2,a0
[0003a988] 4eb9 0005 0330            jsr        Awi_delete
[0003a98e] 6000 0280                 bra        modul_serv_25
modul_serv_19:
[0003a992] 204a                      movea.l    a2,a0
[0003a994] 6100 fc3c                 bsr        modul_close
[0003a998] 6000 0276                 bra        modul_serv_25
modul_serv_7:
[0003a99c] 206f 0006                 movea.l    6(a7),a0
[0003a9a0] 2028 0114                 move.l     276(a0),d0
[0003a9a4] 6700 026a                 beq        modul_serv_25
[0003a9a8] 206f 000a                 movea.l    10(a7),a0
[0003a9ac] 6100 f7de                 bsr        CheckDraggedFiles
[0003a9b0] 6000 025e                 bra        modul_serv_25
modul_serv_6:
[0003a9b4] 206f 0006                 movea.l    6(a7),a0
[0003a9b8] 2028 0114                 move.l     276(a0),d0
[0003a9bc] 6700 0252                 beq        modul_serv_25
[0003a9c0] 6100 f71c                 bsr        OpenDraggedFiles
[0003a9c4] 6000 024a                 bra        modul_serv_25
modul_serv_17:
[0003a9c8] 202f 000a                 move.l     10(a7),d0
[0003a9cc] 6700 0242                 beq        modul_serv_25
[0003a9d0] 222a 0014                 move.l     20(a2),d1
[0003a9d4] 6700 023a                 beq        modul_serv_25
[0003a9d8] 2040                      movea.l    d0,a0
[0003a9da] 2241                      movea.l    d1,a1
[0003a9dc] 3368 0006 0006            move.w     6(a0),6(a1)
[0003a9e2] 226a 0014                 movea.l    20(a2),a1
[0003a9e6] 2368 000c 000c            move.l     12(a0),12(a1)
[0003a9ec] 6000 0222                 bra        modul_serv_25
modul_serv_5:
[0003a9f0] 302a 0056                 move.w     86(a2),d0
[0003a9f4] c07c 0800                 and.w      #$0800,d0
[0003a9f8] 6706                      beq.s      modul_serv_26
[0003a9fa] 4240                      clr.w      d0
[0003a9fc] 6000 0214                 bra        modul_serv_27
modul_serv_26:
[0003aa00] 2053                      movea.l    (a3),a0
[0003aa02] 3028 0246                 move.w     582(a0),d0
[0003aa06] 6706                      beq.s      modul_serv_28
[0003aa08] b5e8 0240                 cmpa.l     576(a0),a2
[0003aa0c] 670c                      beq.s      modul_serv_29
modul_serv_28:
[0003aa0e] 2053                      movea.l    (a3),a0
[0003aa10] 2068 029c                 movea.l    668(a0),a0
[0003aa14] 4e90                      jsr        (a0)
[0003aa16] 6000 01f8                 bra        modul_serv_25
modul_serv_29:
[0003aa1a] 2053                      movea.l    (a3),a0
[0003aa1c] 3828 0246                 move.w     582(a0),d4
[0003aa20] 3004                      move.w     d4,d0
[0003aa22] 48c0                      ext.l      d0
[0003aa24] d080                      add.l      d0,d0
[0003aa26] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003aa2c] 2648                      movea.l    a0,a3
[0003aa2e] 284b                      movea.l    a3,a4
[0003aa30] 200c                      move.l     a4,d0
[0003aa32] 6700 01dc                 beq        modul_serv_25
[0003aa36] 4eb9 0004 4840            jsr        Adr_start
[0003aa3c] 6002                      bra.s      modul_serv_30
modul_serv_31:
[0003aa3e] 36c5                      move.w     d5,(a3)+
modul_serv_30:
[0003aa40] 4eb9 0004 484c            jsr        Adr_next
[0003aa46] 3a00                      move.w     d0,d5
[0003aa48] 6af4                      bpl.s      modul_serv_31
[0003aa4a] 43f9 0003 b212            lea.l      sort_obnr,a1
[0003aa50] 7202                      moveq.l    #2,d1
[0003aa52] 3004                      move.w     d4,d0
[0003aa54] 48c0                      ext.l      d0
[0003aa56] 204c                      movea.l    a4,a0
[0003aa58] 4eb9 0007 5314            jsr        qsort
[0003aa5e] 4245                      clr.w      d5
[0003aa60] 6056                      bra.s      modul_serv_32
modul_serv_35:
[0003aa62] 3205                      move.w     d5,d1
[0003aa64] 48c1                      ext.l      d1
[0003aa66] d281                      add.l      d1,d1
[0003aa68] 3434 1800                 move.w     0(a4,d1.l),d2
[0003aa6c] 48c2                      ext.l      d2
[0003aa6e] 2002                      move.l     d2,d0
[0003aa70] d080                      add.l      d0,d0
[0003aa72] d082                      add.l      d2,d0
[0003aa74] e788                      lsl.l      #3,d0
[0003aa76] 266a 0014                 movea.l    20(a2),a3
[0003aa7a] 47f3 0818                 lea.l      24(a3,d0.l),a3
[0003aa7e] 0c6b 0001 0016            cmpi.w     #$0001,22(a3)
[0003aa84] 6630                      bne.s      modul_serv_33
[0003aa86] 3034 1800                 move.w     0(a4,d1.l),d0
[0003aa8a] 204a                      movea.l    a2,a0
[0003aa8c] 4eb9 0004 492a            jsr        Adr_del
[0003aa92] 266b 000c                 movea.l    12(a3),a3
[0003aa96] b67c 000b                 cmp.w      #$000B,d3
[0003aa9a] 660e                      bne.s      modul_serv_34
[0003aa9c] 93c9                      suba.l     a1,a1
[0003aa9e] 7002                      moveq.l    #2,d0
[0003aaa0] 204b                      movea.l    a3,a0
[0003aaa2] 2a6b 0004                 movea.l    4(a3),a5
[0003aaa6] 4e95                      jsr        (a5)
[0003aaa8] 600c                      bra.s      modul_serv_33
modul_serv_34:
[0003aaaa] 93c9                      suba.l     a1,a1
[0003aaac] 3003                      move.w     d3,d0
[0003aaae] 204b                      movea.l    a3,a0
[0003aab0] 2a6b 0004                 movea.l    4(a3),a5
[0003aab4] 4e95                      jsr        (a5)
modul_serv_33:
[0003aab6] 5245                      addq.w     #1,d5
modul_serv_32:
[0003aab8] b845                      cmp.w      d5,d4
[0003aaba] 6ea6                      bgt.s      modul_serv_35
[0003aabc] 204c                      movea.l    a4,a0
[0003aabe] 4eb9 0004 7e26            jsr        Ax_free
[0003aac4] 6000 014a                 bra        modul_serv_25
modul_serv_16:
[0003aac8] 206f 000a                 movea.l    10(a7),a0
[0003aacc] 226f 0006                 movea.l    6(a7),a1
[0003aad0] 2350 0114                 move.l     (a0),276(a1)
[0003aad4] 3039 000c 2f74            move.w     my_menu,d0
[0003aada] 6700 0134                 beq        modul_serv_25
[0003aade] 2229 0114                 move.l     276(a1),d1
[0003aae2] 6614                      bne.s      modul_serv_36
[0003aae4] 4eb9 0004 e608            jsr        Awi_root
[0003aaea] 2068 005e                 movea.l    94(a0),a0
[0003aaee] 0068 0008 01a2            ori.w      #$0008,418(a0)
[0003aaf4] 6000 011a                 bra        modul_serv_25
modul_serv_36:
[0003aaf8] 4eb9 0004 e608            jsr        Awi_root
[0003aafe] 2068 005e                 movea.l    94(a0),a0
[0003ab02] 0268 fff7 01a2            andi.w     #$FFF7,418(a0)
[0003ab08] 6000 0106                 bra        modul_serv_25
modul_serv_14:
[0003ab0c] 206f 000a                 movea.l    10(a7),a0
[0003ab10] 3010                      move.w     (a0),d0
[0003ab12] 204a                      movea.l    a2,a0
[0003ab14] 4eb9 0003 adf6            jsr        ghost_icon
[0003ab1a] 6000 00f4                 bra        modul_serv_25
modul_serv_15:
[0003ab1e] 206f 000a                 movea.l    10(a7),a0
[0003ab22] 3010                      move.w     (a0),d0
[0003ab24] 204a                      movea.l    a2,a0
[0003ab26] 4eb9 0003 ae4a            jsr        norm_icon
[0003ab2c] 6000 00e2                 bra        modul_serv_25
modul_serv_13:
[0003ab30] 226f 000a                 movea.l    10(a7),a1
[0003ab34] 204a                      movea.l    a2,a0
[0003ab36] 4eb9 0003 af68            jsr        rem_icon
[0003ab3c] 6000 00d2                 bra        modul_serv_25
modul_serv_18:
[0003ab40] 7201                      moveq.l    #1,d1
[0003ab42] 206f 000a                 movea.l    10(a7),a0
[0003ab46] 3010                      move.w     (a0),d0
[0003ab48] 204a                      movea.l    a2,a0
[0003ab4a] 4eb9 0003 b13a            jsr        update_icon
[0003ab50] 6000 00be                 bra        modul_serv_25
modul_serv_12:
[0003ab54] 226f 000a                 movea.l    10(a7),a1
[0003ab58] 204a                      movea.l    a2,a0
[0003ab5a] 4eb9 0003 aef6            jsr        place_icon
[0003ab60] 6000 00ae                 bra        modul_serv_25
modul_serv_1:
[0003ab64] 206f 0006                 movea.l    6(a7),a0
[0003ab68] 2028 0114                 move.l     276(a0),d0
[0003ab6c] 6700 00a2                 beq        modul_serv_25
[0003ab70] 222f 000a                 move.l     10(a7),d1
[0003ab74] 6700 009a                 beq        modul_serv_25
[0003ab78] 487a f4ac                 pea.l      open_one_file(pc)
[0003ab7c] 42a7                      clr.l      -(a7)
[0003ab7e] 2248                      movea.l    a0,a1
[0003ab80] 2641                      movea.l    d1,a3
[0003ab82] 266b 0040                 movea.l    64(a3),a3
[0003ab86] 2041                      movea.l    d1,a0
[0003ab88] 4e93                      jsr        (a3)
[0003ab8a] 504f                      addq.w     #8,a7
[0003ab8c] 6000 0082                 bra        modul_serv_25
modul_serv_8:
[0003ab90] 206f 000a                 movea.l    10(a7),a0
[0003ab94] 0c50 4711                 cmpi.w     #$4711,(a0)
[0003ab98] 6666                      bne.s      modul_serv_3
[0003ab9a] 2668 0006                 movea.l    6(a0),a3
[0003ab9e] 200b                      move.l     a3,d0
[0003aba0] 675e                      beq.s      modul_serv_3
[0003aba2] 1013                      move.b     (a3),d0
[0003aba4] 675a                      beq.s      modul_serv_3
[0003aba6] 204b                      movea.l    a3,a0
[0003aba8] 4eb9 0004 36d6            jsr        Ast_create
[0003abae] 2848                      movea.l    a0,a4
[0003abb0] 200c                      move.l     a4,d0
[0003abb2] 674c                      beq.s      modul_serv_3
[0003abb4] 43f9 000c 405c            lea.l      $000C405C,a1
[0003abba] 2f09                      move.l     a1,-(a7)
[0003abbc] 41ef 0004                 lea.l      4(a7),a0
[0003abc0] 224c                      movea.l    a4,a1
[0003abc2] 4eb9 0004 7286            jsr        Af_2ext
[0003abc8] 225f                      movea.l    (a7)+,a1
[0003abca] 4eb9 0004 38ac            jsr        Ast_icmp
[0003abd0] 4a40                      tst.w      d0
[0003abd2] 6712                      beq.s      modul_serv_37
[0003abd4] 43f9 000c 405f            lea.l      $000C405F,a1
[0003abda] 41d7                      lea.l      (a7),a0
[0003abdc] 4eb9 0004 38ac            jsr        Ast_icmp
[0003abe2] 4a40                      tst.w      d0
[0003abe4] 660a                      bne.s      modul_serv_38
modul_serv_37:
[0003abe6] 204c                      movea.l    a4,a0
[0003abe8] 4eb9 0006 312a            jsr        Ash_module
[0003abee] 6006                      bra.s      modul_serv_39
modul_serv_38:
[0003abf0] 204c                      movea.l    a4,a0
[0003abf2] 6100 f64c                 bsr        new_call
modul_serv_39:
[0003abf6] 204c                      movea.l    a4,a0
[0003abf8] 4eb9 0004 371c            jsr        Ast_delete
[0003abfe] 6010                      bra.s      modul_serv_25
modul_serv_3:
[0003ac00] 226f 000a                 movea.l    10(a7),a1
[0003ac04] 3003                      move.w     d3,d0
[0003ac06] 204a                      movea.l    a2,a0
[0003ac08] 4eb9 0005 1276            jsr        Awi_service
[0003ac0e] 6002                      bra.s      modul_serv_27
modul_serv_25:
[0003ac10] 7001                      moveq.l    #1,d0
modul_serv_27:
[0003ac12] 4fef 000e                 lea.l      14(a7),a7
[0003ac16] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0003ac1a] 4e75                      rts

pd_make:
[0003ac1c] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0003ac20] 4fef fef2                 lea.l      -270(a7),a7
[0003ac24] 95ca                      suba.l     a2,a2
[0003ac26] 49f9 000c 3ddc            lea.l      PUR_DESK,a4
[0003ac2c] 206c 005e                 movea.l    94(a4),a0
[0003ac30] b1fc 000c 3914            cmpa.l     #_PMENU,a0
[0003ac36] 6652                      bne.s      pd_make_1
[0003ac38] 2648                      movea.l    a0,a3
[0003ac3a] 382b 0004                 move.w     4(a3),d4
[0003ac3e] 48c4                      ext.l      d4
[0003ac40] 2604                      move.l     d4,d3
[0003ac42] d683                      add.l      d3,d3
[0003ac44] d684                      add.l      d4,d3
[0003ac46] e78b                      lsl.l      #3,d3
[0003ac48] 3633 3802                 move.w     2(a3,d3.l),d3
[0003ac4c] 48c3                      ext.l      d3
[0003ac4e] 2403                      move.l     d3,d2
[0003ac50] d482                      add.l      d2,d2
[0003ac52] d483                      add.l      d3,d2
[0003ac54] e78a                      lsl.l      #3,d2
[0003ac56] 3433 2802                 move.w     2(a3,d2.l),d2
[0003ac5a] 48c2                      ext.l      d2
[0003ac5c] 2202                      move.l     d2,d1
[0003ac5e] d281                      add.l      d1,d1
[0003ac60] d282                      add.l      d2,d1
[0003ac62] e789                      lsl.l      #3,d1
[0003ac64] 3233 1800                 move.w     0(a3,d1.l),d1
[0003ac68] 48c1                      ext.l      d1
[0003ac6a] 2001                      move.l     d1,d0
[0003ac6c] d080                      add.l      d0,d0
[0003ac6e] d081                      add.l      d1,d0
[0003ac70] e788                      lsl.l      #3,d0
[0003ac72] d7c0                      adda.l     d0,a3
[0003ac74] 377c 0018 0006            move.w     #$0018,6(a3)
[0003ac7a] 006b 2000 000a            ori.w      #$2000,10(a3)
[0003ac80] 277c 000c 4020 000c       move.l     #Sep,12(a3)
[0003ac88] 6004                      bra.s      pd_make_2
pd_make_1:
[0003ac8a] 426c f198                 clr.w      -3688(a4)
pd_make_2:
[0003ac8e] 2079 0010 1f12            movea.l    ACSblk,a0
[0003ac94] 3028 0236                 move.w     566(a0),d0
[0003ac98] 6732                      beq.s      pd_make_3
[0003ac9a] 3228 0238                 move.w     568(a0),d1
[0003ac9e] 660e                      bne.s      pd_make_4
[0003aca0] 242c 0014                 move.l     20(a4),d2
[0003aca4] 6608                      bne.s      pd_make_4
[0003aca6] 297c 000c 3c8c 0014       move.l     #PUR_BACK,20(a4)
pd_make_4:
[0003acae] 204c                      movea.l    a4,a0
[0003acb0] 4eb9 0004 f41a            jsr        Awi_create
[0003acb6] 2648                      movea.l    a0,a3
[0003acb8] 200b                      move.l     a3,d0
[0003acba] 6724                      beq.s      pd_make_5
[0003acbc] 226c 00aa                 movea.l    170(a4),a1
[0003acc0] 91c8                      suba.l     a0,a0
[0003acc2] 4e91                      jsr        (a1)
[0003acc4] 2688                      move.l     a0,(a3)
[0003acc6] 6720                      beq.s      pd_make_6
[0003acc8] 2450                      movea.l    (a0),a2
[0003acca] 601c                      bra.s      pd_make_6
pd_make_3:
[0003accc] 296c 005e 0100            move.l     94(a4),256(a4)
[0003acd2] 91c8                      suba.l     a0,a0
[0003acd4] 226c 00aa                 movea.l    170(a4),a1
[0003acd8] 4e91                      jsr        (a1)
[0003acda] 2648                      movea.l    a0,a3
[0003acdc] 200b                      move.l     a3,d0
[0003acde] 6606                      bne.s      pd_make_7
pd_make_5:
[0003ace0] 91c8                      suba.l     a0,a0
[0003ace2] 6000 00ba                 bra        pd_make_8
pd_make_7:
[0003ace6] 2453                      movea.l    (a3),a2
pd_make_6:
[0003ace8] 200a                      move.l     a2,d0
[0003acea] 6700 00b0                 beq        pd_make_9
[0003acee] 49ef 000e                 lea.l      14(a7),a4
[0003acf2] 43ea 0004                 lea.l      4(a2),a1
[0003acf6] 204c                      movea.l    a4,a0
[0003acf8] 4eb9 0007 6950            jsr        strcpy
[0003acfe] 0c14 0043                 cmpi.b     #$43,(a4)
[0003ad02] 6c18                      bge.s      pd_make_10
[0003ad04] 4eb9 0007 2902            jsr        Dgetdrv
[0003ad0a] 4eb9 0007 2978            jsr        Dsetdrv
[0003ad10] c0bc 0000 0004            and.l      #$00000004,d0
[0003ad16] 6704                      beq.s      pd_make_10
[0003ad18] 18bc 0043                 move.b     #$43,(a4)
pd_make_10:
[0003ad1c] 705c                      moveq.l    #92,d0
[0003ad1e] 204c                      movea.l    a4,a0
[0003ad20] 4eb9 0007 68e2            jsr        strrchr
[0003ad26] 2f48 0004                 move.l     a0,4(a7)
[0003ad2a] 670a                      beq.s      pd_make_11
[0003ad2c] 1028 0001                 move.b     1(a0),d0
[0003ad30] 6704                      beq.s      pd_make_11
[0003ad32] 4228 0001                 clr.b      1(a0)
pd_make_11:
[0003ad36] 204c                      movea.l    a4,a0
[0003ad38] 4eb9 0004 7896            jsr        Af_readdir
[0003ad3e] 2a48                      movea.l    a0,a5
[0003ad40] 2e8d                      move.l     a5,(a7)
[0003ad42] 200d                      move.l     a5,d0
[0003ad44] 673a                      beq.s      pd_make_12
[0003ad46] 602c                      bra.s      pd_make_13
pd_make_15:
[0003ad48] 43f9 000c 405f            lea.l      $000C405F,a1
[0003ad4e] 2f09                      move.l     a1,-(a7)
[0003ad50] 2255                      movea.l    (a5),a1
[0003ad52] 41ef 000c                 lea.l      12(a7),a0
[0003ad56] 4eb9 0004 7286            jsr        Af_2ext
[0003ad5c] 225f                      movea.l    (a7)+,a1
[0003ad5e] 4eb9 0004 38ac            jsr        Ast_icmp
[0003ad64] 4a40                      tst.w      d0
[0003ad66] 6608                      bne.s      pd_make_14
[0003ad68] 2055                      movea.l    (a5),a0
[0003ad6a] 4eb9 0006 312a            jsr        Ash_module
pd_make_14:
[0003ad70] 2a6d 0004                 movea.l    4(a5),a5
pd_make_13:
[0003ad74] 200d                      move.l     a5,d0
[0003ad76] 66d0                      bne.s      pd_make_15
[0003ad78] 2057                      movea.l    (a7),a0
[0003ad7a] 4eb9 0004 795e            jsr        Af_freedir
pd_make_12:
[0003ad80] 7001                      moveq.l    #1,d0
[0003ad82] c0aa 010e                 and.l      270(a2),d0
[0003ad86] 6714                      beq.s      pd_make_9
[0003ad88] 2079 0010 1f12            movea.l    ACSblk,a0
[0003ad8e] 3228 0236                 move.w     566(a0),d1
[0003ad92] 6708                      beq.s      pd_make_9
[0003ad94] 2053                      movea.l    (a3),a0
[0003ad96] 4eb9 0004 f69e            jsr        Awi_open
pd_make_9:
[0003ad9c] 204b                      movea.l    a3,a0
pd_make_8:
[0003ad9e] 4fef 010e                 lea.l      270(a7),a7
[0003ada2] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003ada6] 4e75                      rts

pd_serv:
[0003ada8] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003adac] 2448                      movea.l    a0,a2
[0003adae] 3600                      move.w     d0,d3
[0003adb0] 2849                      movea.l    a1,a4
[0003adb2] 2650                      movea.l    (a0),a3
[0003adb4] 5540                      subq.w     #2,d0
[0003adb6] 6702                      beq.s      pd_serv_1
[0003adb8] 6026                      bra.s      pd_serv_2
pd_serv_1:
[0003adba] 2079 0010 1f12            movea.l    ACSblk,a0
[0003adc0] 3028 0236                 move.w     566(a0),d0
[0003adc4] 6710                      beq.s      pd_serv_3
[0003adc6] 3228 023a                 move.w     570(a0),d1
[0003adca] 6722                      beq.s      pd_serv_4
[0003adcc] 204a                      movea.l    a2,a0
[0003adce] 4eb9 0005 0330            jsr        Awi_delete
[0003add4] 6018                      bra.s      pd_serv_4
pd_serv_3:
[0003add6] 204a                      movea.l    a2,a0
[0003add8] 4eb9 0005 013e            jsr        Awi_closed
[0003adde] 600e                      bra.s      pd_serv_4
pd_serv_2:
[0003ade0] 224c                      movea.l    a4,a1
[0003ade2] 3003                      move.w     d3,d0
[0003ade4] 204b                      movea.l    a3,a0
[0003ade6] 246b 0004                 movea.l    4(a3),a2
[0003adea] 4e92                      jsr        (a2)
[0003adec] 6002                      bra.s      pd_serv_5
pd_serv_4:
[0003adee] 7001                      moveq.l    #1,d0
pd_serv_5:
[0003adf0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003adf4] 4e75                      rts

ghost_icon:
[0003adf6] 3f03                      move.w     d3,-(a7)
[0003adf8] 2f0a                      move.l     a2,-(a7)
[0003adfa] 2448                      movea.l    a0,a2
[0003adfc] 3600                      move.w     d0,d3
[0003adfe] 2050                      movea.l    (a0),a0
[0003ae00] 4a40                      tst.w      d0
[0003ae02] 6b40                      bmi.s      ghost_icon_1
[0003ae04] 3228 0104                 move.w     260(a0),d1
[0003ae08] 673a                      beq.s      ghost_icon_1
[0003ae0a] 48c0                      ext.l      d0
[0003ae0c] 2400                      move.l     d0,d2
[0003ae0e] d482                      add.l      d2,d2
[0003ae10] d480                      add.l      d0,d2
[0003ae12] e78a                      lsl.l      #3,d2
[0003ae14] 206a 0014                 movea.l    20(a2),a0
[0003ae18] d1c2                      adda.l     d2,a0
[0003ae1a] 0268 cffa 0008            andi.w     #$CFFA,8(a0)
[0003ae20] 0068 0040 0008            ori.w      #$0040,8(a0)
[0003ae26] 0268 fffe 000a            andi.w     #$FFFE,10(a0)
[0003ae2c] 2068 000c                 movea.l    12(a0),a0
[0003ae30] 20a8 0004                 move.l     4(a0),(a0)
[0003ae34] 42a8 0022                 clr.l      34(a0)
[0003ae38] 7201                      moveq.l    #1,d1
[0003ae3a] 204a                      movea.l    a2,a0
[0003ae3c] 3003                      move.w     d3,d0
[0003ae3e] 4eb9 0003 b13a            jsr        update_icon
ghost_icon_1:
[0003ae44] 245f                      movea.l    (a7)+,a2
[0003ae46] 361f                      move.w     (a7)+,d3
[0003ae48] 4e75                      rts

norm_icon:
[0003ae4a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003ae4e] 2448                      movea.l    a0,a2
[0003ae50] 3600                      move.w     d0,d3
[0003ae52] 2050                      movea.l    (a0),a0
[0003ae54] 4a40                      tst.w      d0
[0003ae56] 6b00 0098                 bmi        norm_icon_1
[0003ae5a] 3228 0104                 move.w     260(a0),d1
[0003ae5e] 6700 0090                 beq        norm_icon_1
[0003ae62] 48c0                      ext.l      d0
[0003ae64] 2400                      move.l     d0,d2
[0003ae66] d482                      add.l      d2,d2
[0003ae68] d480                      add.l      d0,d2
[0003ae6a] e78a                      lsl.l      #3,d2
[0003ae6c] 266a 0014                 movea.l    20(a2),a3
[0003ae70] d7c2                      adda.l     d2,a3
[0003ae72] 49eb 0018                 lea.l      24(a3),a4
[0003ae76] 026b ef3f 0008            andi.w     #$EF3F,8(a3)
[0003ae7c] 006b 2005 0008            ori.w      #$2005,8(a3)
[0003ae82] 026b fffe 000a            andi.w     #$FFFE,10(a3)
[0003ae88] 222c 0010                 move.l     16(a4),d1
[0003ae8c] 6720                      beq.s      norm_icon_2
[0003ae8e] 2241                      movea.l    d1,a1
[0003ae90] 206b 000c                 movea.l    12(a3),a0
[0003ae94] 7026                      moveq.l    #38,d0
[0003ae96] 4eb9 0007 6f44            jsr        memcpy
[0003ae9c] 303c 00ff                 move.w     #$00FF,d0
[0003aea0] 206c 0010                 movea.l    16(a4),a0
[0003aea4] c068 000c                 and.w      12(a0),d0
[0003aea8] 3940 000a                 move.w     d0,10(a4)
[0003aeac] 6024                      bra.s      norm_icon_3
norm_icon_2:
[0003aeae] 7026                      moveq.l    #38,d0
[0003aeb0] 43f9 000c 3860            lea.l      I_WIN,a1
[0003aeb6] 206b 000c                 movea.l    12(a3),a0
[0003aeba] 4eb9 0007 6f44            jsr        memcpy
[0003aec0] 206c 000c                 movea.l    12(a4),a0
[0003aec4] 226b 000c                 movea.l    12(a3),a1
[0003aec8] 2368 004a 0008            move.l     74(a0),8(a1)
[0003aece] 426c 000a                 clr.w      10(a4)
norm_icon_3:
[0003aed2] 7010                      moveq.l    #16,d0
[0003aed4] 206c 000c                 movea.l    12(a4),a0
[0003aed8] c068 0054                 and.w      84(a0),d0
[0003aedc] 6706                      beq.s      norm_icon_4
[0003aede] 006b 1000 0008            ori.w      #$1000,8(a3)
norm_icon_4:
[0003aee4] 7201                      moveq.l    #1,d1
[0003aee6] 3003                      move.w     d3,d0
[0003aee8] 204a                      movea.l    a2,a0
[0003aeea] 4eb9 0003 b13a            jsr        update_icon
norm_icon_1:
[0003aef0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003aef4] 4e75                      rts

place_icon:
[0003aef6] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003aefa] 2448                      movea.l    a0,a2
[0003aefc] 2849                      movea.l    a1,a4
[0003aefe] 2650                      movea.l    (a0),a3
[0003af00] 0c6b 0100 0104            cmpi.w     #$0100,260(a3)
[0003af06] 6c54                      bge.s      place_icon_1
[0003af08] 362b 0104                 move.w     260(a3),d3
[0003af0c] d643                      add.w      d3,d3
[0003af0e] 5243                      addq.w     #1,d3
[0003af10] 3203                      move.w     d3,d1
[0003af12] 48c1                      ext.l      d1
[0003af14] 2001                      move.l     d1,d0
[0003af16] d080                      add.l      d0,d0
[0003af18] d081                      add.l      d1,d0
[0003af1a] e788                      lsl.l      #3,d0
[0003af1c] 206a 0014                 movea.l    20(a2),a0
[0003af20] d1c0                      adda.l     d0,a0
[0003af22] 0268 ff7f 0008            andi.w     #$FF7F,8(a0)
[0003af28] 41e8 0018                 lea.l      24(a0),a0
[0003af2c] 317c 0001 0016            move.w     #$0001,22(a0)
[0003af32] 20bc 0003 a3a2            move.l     #click_modwin,(a0)
[0003af38] 217c 0003 a480 0004       move.l     #drag_modwin,4(a0)
[0003af40] 2149 000c                 move.l     a1,12(a0)
[0003af44] 216c 005a 0010            move.l     90(a4),16(a0)
[0003af4a] 3943 0058                 move.w     d3,88(a4)
[0003af4e] 526b 0104                 addq.w     #1,260(a3)
[0003af52] 204a                      movea.l    a2,a0
[0003af54] 3003                      move.w     d3,d0
[0003af56] 6100 fef2                 bsr        norm_icon
[0003af5a] 6006                      bra.s      place_icon_2
place_icon_1:
[0003af5c] 397c ffff 0058            move.w     #$FFFF,88(a4)
place_icon_2:
[0003af62] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003af66] 4e75                      rts

rem_icon:
[0003af68] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0003af6c] 514f                      subq.w     #8,a7
[0003af6e] 2648                      movea.l    a0,a3
[0003af70] 2f49 0004                 move.l     a1,4(a7)
[0003af74] 3611                      move.w     (a1),d3
[0003af76] 2e90                      move.l     (a0),(a7)
[0003af78] 4a43                      tst.w      d3
[0003af7a] 6b00 01b6                 bmi        rem_icon_1
[0003af7e] 2257                      movea.l    (a7),a1
[0003af80] 3029 0104                 move.w     260(a1),d0
[0003af84] 6700 01ac                 beq        rem_icon_1
[0003af88] 3403                      move.w     d3,d2
[0003af8a] 48c2                      ext.l      d2
[0003af8c] 2202                      move.l     d2,d1
[0003af8e] d281                      add.l      d1,d1
[0003af90] d282                      add.l      d2,d1
[0003af92] e789                      lsl.l      #3,d1
[0003af94] 206b 0014                 movea.l    20(a3),a0
[0003af98] 3830 1800                 move.w     0(a0,d1.l),d4
[0003af9c] 226f 0004                 movea.l    4(a7),a1
[0003afa0] 3011                      move.w     (a1),d0
[0003afa2] 4eb9 0004 af6c            jsr        Aob_up
[0003afa8] 3a00                      move.w     d0,d5
[0003afaa] 6000 009e                 bra        rem_icon_2
rem_icon_5:
[0003afae] 7026                      moveq.l    #38,d0
[0003afb0] 3404                      move.w     d4,d2
[0003afb2] 48c2                      ext.l      d2
[0003afb4] 2202                      move.l     d2,d1
[0003afb6] d281                      add.l      d1,d1
[0003afb8] d282                      add.l      d2,d1
[0003afba] e789                      lsl.l      #3,d1
[0003afbc] 206b 0014                 movea.l    20(a3),a0
[0003afc0] 2270 180c                 movea.l    12(a0,d1.l),a1
[0003afc4] 3403                      move.w     d3,d2
[0003afc6] 48c2                      ext.l      d2
[0003afc8] 2202                      move.l     d2,d1
[0003afca] d281                      add.l      d1,d1
[0003afcc] d282                      add.l      d2,d1
[0003afce] e789                      lsl.l      #3,d1
[0003afd0] 2070 180c                 movea.l    12(a0,d1.l),a0
[0003afd4] 4eb9 0007 6f44            jsr        memcpy
[0003afda] 3204                      move.w     d4,d1
[0003afdc] 48c1                      ext.l      d1
[0003afde] 2001                      move.l     d1,d0
[0003afe0] d080                      add.l      d0,d0
[0003afe2] d081                      add.l      d1,d0
[0003afe4] e788                      lsl.l      #3,d0
[0003afe6] 206b 0014                 movea.l    20(a3),a0
[0003afea] 3203                      move.w     d3,d1
[0003afec] 48c1                      ext.l      d1
[0003afee] 2401                      move.l     d1,d2
[0003aff0] d482                      add.l      d2,d2
[0003aff2] d481                      add.l      d1,d2
[0003aff4] e78a                      lsl.l      #3,d2
[0003aff6] 226b 0014                 movea.l    20(a3),a1
[0003affa] 33b0 0808 2808            move.w     8(a0,d0.l),8(a1,d2.l)
[0003b000] 206b 0014                 movea.l    20(a3),a0
[0003b004] 226b 0014                 movea.l    20(a3),a1
[0003b008] 33b0 080a 280a            move.w     10(a0,d0.l),10(a1,d2.l)
[0003b00e] 2a6b 0014                 movea.l    20(a3),a5
[0003b012] 4bf5 2818                 lea.l      24(a5,d2.l),a5
[0003b016] 246b 0014                 movea.l    20(a3),a2
[0003b01a] 45f2 0818                 lea.l      24(a2,d0.l),a2
[0003b01e] 286a 000c                 movea.l    12(a2),a4
[0003b022] 2b4c 000c                 move.l     a4,12(a5)
[0003b026] 2b6a 0010 0010            move.l     16(a2),16(a5)
[0003b02c] 220c                      move.l     a4,d1
[0003b02e] 6704                      beq.s      rem_icon_3
[0003b030] 556c 0058                 subq.w     #2,88(a4)
rem_icon_3:
[0003b034] 3604                      move.w     d4,d3
[0003b036] 3203                      move.w     d3,d1
[0003b038] 48c1                      ext.l      d1
[0003b03a] 2001                      move.l     d1,d0
[0003b03c] d080                      add.l      d0,d0
[0003b03e] d081                      add.l      d1,d0
[0003b040] e788                      lsl.l      #3,d0
[0003b042] 206b 0014                 movea.l    20(a3),a0
[0003b046] 3830 0800                 move.w     0(a0,d0.l),d4
rem_icon_2:
[0003b04a] 4a45                      tst.w      d5
[0003b04c] 6b20                      bmi.s      rem_icon_4
[0003b04e] ba44                      cmp.w      d4,d5
[0003b050] 671c                      beq.s      rem_icon_4
[0003b052] 303c 0080                 move.w     #$0080,d0
[0003b056] 3404                      move.w     d4,d2
[0003b058] 48c2                      ext.l      d2
[0003b05a] 2202                      move.l     d2,d1
[0003b05c] d281                      add.l      d1,d1
[0003b05e] d282                      add.l      d2,d1
[0003b060] e789                      lsl.l      #3,d1
[0003b062] 206b 0014                 movea.l    20(a3),a0
[0003b066] c070 1808                 and.w      8(a0,d1.l),d0
[0003b06a] 6700 ff42                 beq        rem_icon_5
rem_icon_4:
[0003b06e] 3203                      move.w     d3,d1
[0003b070] 48c1                      ext.l      d1
[0003b072] 2001                      move.l     d1,d0
[0003b074] d080                      add.l      d0,d0
[0003b076] d081                      add.l      d1,d0
[0003b078] e788                      lsl.l      #3,d0
[0003b07a] 286b 0014                 movea.l    20(a3),a4
[0003b07e] d9c0                      adda.l     d0,a4
[0003b080] 006c 0080 0008            ori.w      #$0080,8(a4)
[0003b086] 4bec 0018                 lea.l      24(a4),a5
[0003b08a] 426d 0016                 clr.w      22(a5)
[0003b08e] 7400                      moveq.l    #0,d2
[0003b090] 2b42 0010                 move.l     d2,16(a5)
[0003b094] 2b42 000c                 move.l     d2,12(a5)
[0003b098] 2b42 0004                 move.l     d2,4(a5)
[0003b09c] 2a82                      move.l     d2,(a5)
[0003b09e] 2057                      movea.l    (a7),a0
[0003b0a0] 5368 0104                 subq.w     #1,260(a0)
[0003b0a4] 2279 0010 1f12            movea.l    ACSblk,a1
[0003b0aa] 3429 023a                 move.w     570(a1),d2
[0003b0ae] 6600 007a                 bne.w      rem_icon_6
[0003b0b2] 3028 0104                 move.w     260(a0),d0
[0003b0b6] 6760                      beq.s      rem_icon_7
[0003b0b8] 246f 0004                 movea.l    4(a7),a2
[0003b0bc] 3612                      move.w     (a2),d3
[0003b0be] 3403                      move.w     d3,d2
[0003b0c0] 48c2                      ext.l      d2
[0003b0c2] 2202                      move.l     d2,d1
[0003b0c4] d281                      add.l      d1,d1
[0003b0c6] d282                      add.l      d2,d1
[0003b0c8] e789                      lsl.l      #3,d1
[0003b0ca] 286b 0014                 movea.l    20(a3),a4
[0003b0ce] 3834 1800                 move.w     0(a4,d1.l),d4
[0003b0d2] 6022                      bra.s      rem_icon_8
rem_icon_9:
[0003b0d4] 4241                      clr.w      d1
[0003b0d6] 3003                      move.w     d3,d0
[0003b0d8] 204b                      movea.l    a3,a0
[0003b0da] 4eb9 0003 b13a            jsr        update_icon
[0003b0e0] 3604                      move.w     d4,d3
[0003b0e2] 3203                      move.w     d3,d1
[0003b0e4] 48c1                      ext.l      d1
[0003b0e6] 2001                      move.l     d1,d0
[0003b0e8] d080                      add.l      d0,d0
[0003b0ea] d081                      add.l      d1,d0
[0003b0ec] e788                      lsl.l      #3,d0
[0003b0ee] 206b 0014                 movea.l    20(a3),a0
[0003b0f2] 3830 0800                 move.w     0(a0,d0.l),d4
rem_icon_8:
[0003b0f6] 4a45                      tst.w      d5
[0003b0f8] 6b1e                      bmi.s      rem_icon_7
[0003b0fa] ba44                      cmp.w      d4,d5
[0003b0fc] 671a                      beq.s      rem_icon_7
[0003b0fe] 303c 0080                 move.w     #$0080,d0
[0003b102] 3403                      move.w     d3,d2
[0003b104] 48c2                      ext.l      d2
[0003b106] 2202                      move.l     d2,d1
[0003b108] d281                      add.l      d1,d1
[0003b10a] d282                      add.l      d2,d1
[0003b10c] e789                      lsl.l      #3,d1
[0003b10e] 206b 0014                 movea.l    20(a3),a0
[0003b112] c070 1808                 and.w      8(a0,d1.l),d0
[0003b116] 67bc                      beq.s      rem_icon_9
rem_icon_7:
[0003b118] 006b 0010 0056            ori.w      #$0010,86(a3)
[0003b11e] 43eb 0024                 lea.l      36(a3),a1
[0003b122] 204b                      movea.l    a3,a0
[0003b124] 246b 0086                 movea.l    134(a3),a2
[0003b128] 4e92                      jsr        (a2)
rem_icon_6:
[0003b12a] 206f 0004                 movea.l    4(a7),a0
[0003b12e] 30bc ffff                 move.w     #$FFFF,(a0)
rem_icon_1:
[0003b132] 504f                      addq.w     #8,a7
[0003b134] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0003b138] 4e75                      rts

update_icon:
[0003b13a] 48e7 0838                 movem.l    d4/a2-a4,-(a7)
[0003b13e] 2448                      movea.l    a0,a2
[0003b140] 3801                      move.w     d1,d4
[0003b142] 2050                      movea.l    (a0),a0
[0003b144] 4a40                      tst.w      d0
[0003b146] 6b00 00c4                 bmi        update_icon_1
[0003b14a] 3428 0104                 move.w     260(a0),d2
[0003b14e] 6700 00bc                 beq        update_icon_1
[0003b152] 48c0                      ext.l      d0
[0003b154] 2200                      move.l     d0,d1
[0003b156] d281                      add.l      d1,d1
[0003b158] d280                      add.l      d0,d1
[0003b15a] e789                      lsl.l      #3,d1
[0003b15c] 266a 0014                 movea.l    20(a2),a3
[0003b160] d7c1                      adda.l     d1,a3
[0003b162] 49eb 0018                 lea.l      24(a3),a4
[0003b166] 242c 0010                 move.l     16(a4),d2
[0003b16a] 6736                      beq.s      update_icon_2
[0003b16c] 2042                      movea.l    d2,a0
[0003b16e] 3228 0016                 move.w     22(a0),d1
[0003b172] b26b 0014                 cmp.w      20(a3),d1
[0003b176] 6c2a                      bge.s      update_icon_2
[0003b178] 3028 0018                 move.w     24(a0),d0
[0003b17c] b06b 0016                 cmp.w      22(a3),d0
[0003b180] 6c20                      bge.s      update_icon_2
[0003b182] 2242                      movea.l    d2,a1
[0003b184] 206b 000c                 movea.l    12(a3),a0
[0003b188] 7026                      moveq.l    #38,d0
[0003b18a] 4eb9 0007 6f44            jsr        memcpy
[0003b190] 303c 00ff                 move.w     #$00FF,d0
[0003b194] 206c 0010                 movea.l    16(a4),a0
[0003b198] c068 000c                 and.w      12(a0),d0
[0003b19c] 3940 000a                 move.w     d0,10(a4)
[0003b1a0] 602c                      bra.s      update_icon_3
update_icon_2:
[0003b1a2] 7026                      moveq.l    #38,d0
[0003b1a4] 43f9 000c 3860            lea.l      I_WIN,a1
[0003b1aa] 206b 000c                 movea.l    12(a3),a0
[0003b1ae] 4eb9 0007 6f44            jsr        memcpy
[0003b1b4] 206c 000c                 movea.l    12(a4),a0
[0003b1b8] 2068 004a                 movea.l    74(a0),a0
[0003b1bc] 4eb9 0004 36d6            jsr        Ast_create
[0003b1c2] 226b 000c                 movea.l    12(a3),a1
[0003b1c6] 2348 0008                 move.l     a0,8(a1)
[0003b1ca] 426c 000a                 clr.w      10(a4)
update_icon_3:
[0003b1ce] 302b 0008                 move.w     8(a3),d0
[0003b1d2] c07c 2000                 and.w      #$2000,d0
[0003b1d6] 660c                      bne.s      update_icon_4
[0003b1d8] 206b 000c                 movea.l    12(a3),a0
[0003b1dc] 20a8 0004                 move.l     4(a0),(a0)
[0003b1e0] 42a8 0022                 clr.l      34(a0)
update_icon_4:
[0003b1e4] 204b                      movea.l    a3,a0
[0003b1e6] 4eb9 0004 a34e            jsr        Aob_icon
[0003b1ec] 302a 0056                 move.w     86(a2),d0
[0003b1f0] c07c 0800                 and.w      #$0800,d0
[0003b1f4] 6616                      bne.s      update_icon_1
[0003b1f6] 4a44                      tst.w      d4
[0003b1f8] 6712                      beq.s      update_icon_1
[0003b1fa] 006a 0010 0056            ori.w      #$0010,86(a2)
[0003b200] 43ea 0024                 lea.l      36(a2),a1
[0003b204] 204a                      movea.l    a2,a0
[0003b206] 266a 0086                 movea.l    134(a2),a3
[0003b20a] 4e93                      jsr        (a3)
update_icon_1:
[0003b20c] 4cdf 1c10                 movem.l    (a7)+,d4/a2-a4
[0003b210] 4e75                      rts

sort_obnr:
[0003b212] 3010                      move.w     (a0),d0
[0003b214] b051                      cmp.w      (a1),d0
[0003b216] 6c04                      bge.s      sort_obnr_1
[0003b218] 7001                      moveq.l    #1,d0
[0003b21a] 4e75                      rts
sort_obnr_1:
[0003b21c] 3010                      move.w     (a0),d0
[0003b21e] b051                      cmp.w      (a1),d0
[0003b220] 6f04                      ble.s      sort_obnr_2
[0003b222] 70ff                      moveq.l    #-1,d0
[0003b224] 4e75                      rts
sort_obnr_2:
[0003b226] 4240                      clr.w      d0
[0003b228] 4e75                      rts

purGEMScript:
[0003b22a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0003b22e] 2848                      movea.l    a0,a4
[0003b230] 3600                      move.w     d0,d3
[0003b232] 2449                      movea.l    a1,a2
[0003b234] 266f 0014                 movea.l    20(a7),a3
[0003b238] 43f9 000c 4063            lea.l      $000C4063,a1
[0003b23e] 2052                      movea.l    (a2),a0
[0003b240] 4eb9 0004 38ac            jsr        Ast_icmp
[0003b246] 4a40                      tst.w      d0
[0003b248] 6628                      bne.s      purGEMScript_1
[0003b24a] 2053                      movea.l    (a3),a0
[0003b24c] 2050                      movea.l    (a0),a0
[0003b24e] 4eb9 0004 371c            jsr        Ast_delete
[0003b254] 2079 0010 1f12            movea.l    ACSblk,a0
[0003b25a] 41e8 0220                 lea.l      544(a0),a0
[0003b25e] 4eb9 0004 36d6            jsr        Ast_create
[0003b264] 2253                      movea.l    (a3),a1
[0003b266] 2288                      move.l     a0,(a1)
[0003b268] 377c 0001 0004            move.w     #$0001,4(a3)
[0003b26e] 4240                      clr.w      d0
[0003b270] 6010                      bra.s      purGEMScript_2
purGEMScript_1:
[0003b272] 2f0b                      move.l     a3,-(a7)
[0003b274] 224a                      movea.l    a2,a1
[0003b276] 3003                      move.w     d3,d0
[0003b278] 204c                      movea.l    a4,a0
[0003b27a] 4eb9 0005 2328            jsr        Awi_gemscript
[0003b280] 584f                      addq.w     #4,a7
purGEMScript_2:
[0003b282] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0003b286] 4e75                      rts

set_icon:
[0003b288] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003b28c] 594f                      subq.w     #4,a7
[0003b28e] 2e88                      move.l     a0,(a7)
[0003b290] 2668 005a                 movea.l    90(a0),a3
[0003b294] 200b                      move.l     a3,d0
[0003b296] 6700 0078                 beq.w      set_icon_1
[0003b29a] 2850                      movea.l    (a0),a4
[0003b29c] 102c 00a8                 move.b     168(a4),d0
[0003b2a0] 6706                      beq.s      set_icon_2
[0003b2a2] 4bec 00a8                 lea.l      168(a4),a5
[0003b2a6] 601a                      bra.s      set_icon_3
set_icon_2:
[0003b2a8] 45ec 0192                 lea.l      402(a4),a2
[0003b2ac] 705c                      moveq.l    #92,d0
[0003b2ae] 204a                      movea.l    a2,a0
[0003b2b0] 4eb9 0007 68e2            jsr        strrchr
[0003b2b6] 2a48                      movea.l    a0,a5
[0003b2b8] 200d                      move.l     a5,d0
[0003b2ba] 6704                      beq.s      set_icon_4
[0003b2bc] 524d                      addq.w     #1,a5
[0003b2be] 6002                      bra.s      set_icon_3
set_icon_4:
[0003b2c0] 2a4a                      movea.l    a2,a5
set_icon_3:
[0003b2c2] 43ec 00b8                 lea.l      184(a4),a1
[0003b2c6] 204d                      movea.l    a5,a0
[0003b2c8] 4eb9 0007 68fe            jsr        strcmp
[0003b2ce] 4a40                      tst.w      d0
[0003b2d0] 673e                      beq.s      set_icon_1
[0003b2d2] 422c 00b8                 clr.b      184(a4)
[0003b2d6] 700f                      moveq.l    #15,d0
[0003b2d8] 224d                      movea.l    a5,a1
[0003b2da] 41ec 00b8                 lea.l      184(a4),a0
[0003b2de] 4eb9 0007 69da            jsr        strncat
[0003b2e4] 206b 0008                 movea.l    8(a3),a0
[0003b2e8] 4eb9 0004 371c            jsr        Ast_delete
[0003b2ee] 204d                      movea.l    a5,a0
[0003b2f0] 4eb9 0004 36d6            jsr        Ast_create
[0003b2f6] 2748 0008                 move.l     a0,8(a3)
[0003b2fa] 4eb9 0004 e608            jsr        Awi_root
[0003b300] 2448                      movea.l    a0,a2
[0003b302] 2257                      movea.l    (a7),a1
[0003b304] 43e9 0058                 lea.l      88(a1),a1
[0003b308] 706d                      moveq.l    #109,d0
[0003b30a] 266a 0004                 movea.l    4(a2),a3
[0003b30e] 4e93                      jsr        (a3)
set_icon_1:
[0003b310] 584f                      addq.w     #4,a7
[0003b312] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003b316] 4e75                      rts

home:
[0003b318] 2f0a                      move.l     a2,-(a7)
[0003b31a] 594f                      subq.w     #4,a7
[0003b31c] 2448                      movea.l    a0,a2
[0003b31e] 4297                      clr.l      (a7)
[0003b320] 93c9                      suba.l     a1,a1
[0003b322] 303c 00d5                 move.w     #$00D5,d0
[0003b326] 4eb9 0003 8e52            jsr        Auo_editor
[0003b32c] 93c9                      suba.l     a1,a1
[0003b32e] 700e                      moveq.l    #14,d0
[0003b330] 204a                      movea.l    a2,a0
[0003b332] 4eb9 0003 8e52            jsr        Auo_editor
[0003b338] 43d7                      lea.l      (a7),a1
[0003b33a] 303c 00d7                 move.w     #$00D7,d0
[0003b33e] 204a                      movea.l    a2,a0
[0003b340] 4eb9 0003 8e52            jsr        Auo_editor
[0003b346] 93c9                      suba.l     a1,a1
[0003b348] 303c 00db                 move.w     #$00DB,d0
[0003b34c] 204a                      movea.l    a2,a0
[0003b34e] 4eb9 0003 8e52            jsr        Auo_editor
[0003b354] 93c9                      suba.l     a1,a1
[0003b356] 7005                      moveq.l    #5,d0
[0003b358] 204a                      movea.l    a2,a0
[0003b35a] 4eb9 0003 8e52            jsr        Auo_editor
[0003b360] 93c9                      suba.l     a1,a1
[0003b362] 303c 00d6                 move.w     #$00D6,d0
[0003b366] 204a                      movea.l    a2,a0
[0003b368] 4eb9 0003 8e52            jsr        Auo_editor
[0003b36e] 584f                      addq.w     #4,a7
[0003b370] 245f                      movea.l    (a7)+,a2
[0003b372] 4e75                      rts

set_select:
[0003b374] 4a40                      tst.w      d0
[0003b376] 6708                      beq.s      set_select_1
[0003b378] 0068 0001 000a            ori.w      #$0001,10(a0)
[0003b37e] 4e75                      rts
set_select_1:
[0003b380] 0268 fffe 000a            andi.w     #$FFFE,10(a0)
[0003b386] 4e75                      rts

		.data

module_window:
[000c2f70]                           dc.b $00
[000c2f71]                           dc.b $00
[000c2f72]                           dc.b $00
[000c2f73]                           dc.b $00
my_menu:
[000c2f74]                           dc.b $00
[000c2f75]                           dc.b $01
BUBBLE_01:
[000c2f76]                           dc.b 'Hier wird ein ACS-Modul nachgeladen.',0
BUBBLE_02:
[000c2f9b]                           dc.b 'Informationen Åber selektierte Objekte bzw. ACS.',0
BUBBLE_03:
[000c2fcc]                           dc.b 'Lîschen von selektierten Objekten.',0
HELPFILE_01:
[000c2fef]                           dc.b 'ACSPRO',0
HELPFILE_02:
[000c2ff6]                           dc.b 'ACSPRO',0
MODUL_LOAD_TITEL:
[000c2ffd]                           dc.b 'Module laden',0
NAME_MODULE:
[000c300a]                           dc.b ' Module ',0
NAME_PUR_DESK:
[000c3013]                           dc.b ' Purer Desktop ',0
STGUIDE_01:
[000c3023]                           dc.b 'Der ACSpro-GUI-Editor',0
STGUIDE_02:
[000c3039]                           dc.b 'Der ACSpro-GUI-Editor',0
TEXT_02:
[000c304f]                           dc.b '  Module...       ^M',0
TEXT_04:
[000c3064]                           dc.b '  ôffnen...       ^O',0
TEXT_05:
[000c3079]                           dc.b '  Information...  ^I',0
TEXT_06:
[000c308e]                           dc.b $00
TEXT_07:
[000c308f]                           dc.b '  öber mich ...',0
TEXT_08:
[000c309f]                           dc.b '  Neu...          ^N',0
TEXT_09:
[000c30b4]                           dc.b '--------------------',0
TEXT_11:
[000c30c9]                           dc.b ' Datei ',0
TEXT_13:
[000c30d1]                           dc.b '  Beenden...      ^Q ',0
TEXT_14:
[000c30e7]                           dc.b '  Schlieûen  ^U',0
TEXT_15:
[000c30f7]                           dc.b ' Fenster ',0
TEXT_17:
[000c3101]                           dc.b '  Entfernen  ^D',0
TEXT_18:
[000c3111]                           dc.b '  Wechseln   ^W',0
[000c3121]                           dc.b $00
DATAS_03:
[000c3122]                           dc.b $00
[000c3123]                           dc.b $00
[000c3124]                           dc.b $00
[000c3125]                           dc.b $00
[000c3126]                           dc.w $01c8
[000c3128]                           dc.b $00
[000c3129]                           dc.b $00
[000c312a]                           dc.b $00
[000c312b]                           dc.b $00
[000c312c]                           dc.w $7fff
[000c312e]                           dc.w $fffe
[000c3130]                           dc.w $4000
[000c3132]                           dc.b $00
[000c3133]                           dc.b $12
[000c3134]                           dc.w $4000
[000c3136]                           dc.b $00
[000c3137]                           dc.b $12
[000c3138]                           dc.w $7fff
[000c313a]                           dc.w $fffe
[000c313c]                           dc.w $4000
[000c313e]                           dc.b $00
[000c313f]                           dc.b $12
[000c3140]                           dc.w $4000
[000c3142]                           dc.b $00
[000c3143]                           dc.b $12
[000c3144]                           dc.w $4000
[000c3146]                           dc.b $00
[000c3147]                           dc.b $1e
[000c3148]                           dc.w $4000
[000c314a]                           dc.b $00
[000c314b]                           dc.b $1e
[000c314c]                           dc.w $4000
[000c314e]                           dc.b $00
[000c314f]                           dc.b $1e
[000c3150]                           dc.b $40
[000c3151]                           dc.b $00
[000c3152]                           dc.b $00
[000c3153]                           dc.b $1e
[000c3154]                           dc.w $4000
[000c3156]                           dc.b $00
[000c3157]                           dc.b $1e
[000c3158]                           dc.w $4000
[000c315a]                           dc.b $00
[000c315b]                           dc.b $1e
[000c315c]                           dc.w $4000
[000c315e]                           dc.b $00
[000c315f]                           dc.b $1e
[000c3160]                           dc.w $4000
[000c3162]                           dc.b $00
[000c3163]                           dc.b $1e
[000c3164]                           dc.w $4000
[000c3166]                           dc.b $00
[000c3167]                           dc.b $1e
[000c3168]                           dc.w $4000
[000c316a]                           dc.b $00
[000c316b]                           dc.b $1e
[000c316c]                           dc.w $4000
[000c316e]                           dc.b $00
[000c316f]                           dc.b $1e
[000c3170]                           dc.w $4000
[000c3172]                           dc.b $00
[000c3173]                           dc.b $1e
[000c3174]                           dc.w $4000
[000c3176]                           dc.b $00
[000c3177]                           dc.b $1e
[000c3178]                           dc.w $4000
[000c317a]                           dc.b $00
[000c317b]                           dc.b $12
[000c317c]                           dc.w $4000
[000c317e]                           dc.b $00
[000c317f]                           dc.b $12
[000c3180]                           dc.w $7fff
[000c3182]                           dc.w $fffe
[000c3184]                           dc.w $4fff
[000c3186]                           dc.w $ff92
[000c3188]                           dc.w $4fff
[000c318a]                           dc.w $ff92
[000c318c]                           dc.w $7fff
[000c318e]                           dc.w $fffe
[000c3190]                           dc.b $00
[000c3191]                           dc.b $00
[000c3192]                           dc.b $00
[000c3193]                           dc.b $00
[000c3194]                           dc.b $00
[000c3195]                           dc.b $00
[000c3196]                           dc.b $00
[000c3197]                           dc.b $00
[000c3198]                           dc.b $00
[000c3199]                           dc.b $00
[000c319a]                           dc.b $00
[000c319b]                           dc.b $00
[000c319c]                           dc.w $7fff
[000c319e]                           dc.w $fffe
[000c31a0]                           dc.w $4000
[000c31a2]                           dc.b $00
[000c31a3]                           dc.b $12
[000c31a4]                           dc.w $4000
[000c31a6]                           dc.b $00
[000c31a7]                           dc.b $12
[000c31a8]                           dc.w $7fff
[000c31aa]                           dc.w $fffe
[000c31ac]                           dc.w $4000
[000c31ae]                           dc.b $00
[000c31af]                           dc.b $12
[000c31b0]                           dc.w $4000
[000c31b2]                           dc.b $00
[000c31b3]                           dc.b $12
[000c31b4]                           dc.w $4000
[000c31b6]                           dc.b $00
[000c31b7]                           dc.b $1e
[000c31b8]                           dc.w $4000
[000c31ba]                           dc.b $00
[000c31bb]                           dc.b $1e
[000c31bc]                           dc.w $4000
[000c31be]                           dc.b $00
[000c31bf]                           dc.b $1e
[000c31c0]                           dc.w $4000
[000c31c2]                           dc.b $00
[000c31c3]                           dc.b $1e
[000c31c4]                           dc.w $4000
[000c31c6]                           dc.b $00
[000c31c7]                           dc.b $1e
[000c31c8]                           dc.w $4000
[000c31ca]                           dc.b $00
[000c31cb]                           dc.b $1e
[000c31cc]                           dc.w $4000
[000c31ce]                           dc.b $00
[000c31cf]                           dc.b $1e
[000c31d0]                           dc.w $4000
[000c31d2]                           dc.b $00
[000c31d3]                           dc.b $1e
[000c31d4]                           dc.w $4000
[000c31d6]                           dc.b $00
[000c31d7]                           dc.b $1e
[000c31d8]                           dc.w $4000
[000c31da]                           dc.b $00
[000c31db]                           dc.b $1e
[000c31dc]                           dc.w $4000
[000c31de]                           dc.b $00
[000c31df]                           dc.b $1e
[000c31e0]                           dc.w $4000
[000c31e2]                           dc.b $00
[000c31e3]                           dc.b $1e
[000c31e4]                           dc.w $4000
[000c31e6]                           dc.b $00
[000c31e7]                           dc.b $1e
[000c31e8]                           dc.w $4000
[000c31ea]                           dc.b $00
[000c31eb]                           dc.b $12
[000c31ec]                           dc.w $4000
[000c31ee]                           dc.b $00
[000c31ef]                           dc.b $12
[000c31f0]                           dc.w $7fff
[000c31f2]                           dc.w $fffe
[000c31f4]                           dc.w $4fff
[000c31f6]                           dc.w $ff92
[000c31f8]                           dc.w $4fff
[000c31fa]                           dc.w $ff92
[000c31fc]                           dc.w $7fff
[000c31fe]                           dc.w $fffe
[000c3200]                           dc.b $00
[000c3201]                           dc.b $00
[000c3202]                           dc.b $00
[000c3203]                           dc.b $00
[000c3204]                           dc.b $00
[000c3205]                           dc.b $00
[000c3206]                           dc.b $00
[000c3207]                           dc.b $00
[000c3208]                           dc.b $00
[000c3209]                           dc.b $00
[000c320a]                           dc.b $00
[000c320b]                           dc.b $00
[000c320c]                           dc.w $7fff
[000c320e]                           dc.w $fffe
[000c3210]                           dc.w $4000
[000c3212]                           dc.b $00
[000c3213]                           dc.b $12
[000c3214]                           dc.w $4000
[000c3216]                           dc.b $00
[000c3217]                           dc.b $12
[000c3218]                           dc.w $7fff
[000c321a]                           dc.w $fffe
[000c321c]                           dc.w $4000
[000c321e]                           dc.b $00
[000c321f]                           dc.b $12
[000c3220]                           dc.b 'UUUR@',0
[000c3226]                           dc.b $00
[000c3227]                           dc.b $1e
[000c3228]                           dc.b 'UUU^@',0
[000c322e]                           dc.b $00
[000c322f]                           dc.b $1e
[000c3230]                           dc.b 'UUU^@',0
[000c3236]                           dc.b $00
[000c3237]                           dc.b $1e
[000c3238]                           dc.b 'UUU^@',0
[000c323e]                           dc.b $00
[000c323f]                           dc.b $1e
[000c3240]                           dc.b 'UUU^@',0
[000c3246]                           dc.b $00
[000c3247]                           dc.b $1e
[000c3248]                           dc.b 'UUU^@',0
[000c324e]                           dc.b $00
[000c324f]                           dc.b $1e
[000c3250]                           dc.b 'UUU^@',0
[000c3256]                           dc.b $00
[000c3257]                           dc.b $1e
[000c3258]                           dc.b 'UUUR@',0
[000c325e]                           dc.b $00
[000c325f]                           dc.b $12
[000c3260]                           dc.w $7fff
[000c3262]                           dc.w $fffe
[000c3264]                           dc.w $4fff
[000c3266]                           dc.w $ff92
[000c3268]                           dc.b $4f
[000c3269]                           dc.b $ff
[000c326a]                           dc.w $ff92
[000c326c]                           dc.w $7fff
[000c326e]                           dc.w $fffe
[000c3270]                           dc.b $00
[000c3271]                           dc.b $00
[000c3272]                           dc.b $00
[000c3273]                           dc.b $00
[000c3274]                           dc.b $00
[000c3275]                           dc.b $00
[000c3276]                           dc.b $00
[000c3277]                           dc.b $00
[000c3278]                           dc.b $00
[000c3279]                           dc.b $00
[000c327a]                           dc.b $00
[000c327b]                           dc.b $00
[000c327c]                           dc.w $7fff
[000c327e]                           dc.w $fffe
[000c3280]                           dc.w $4fff
[000c3282]                           dc.w $ff93
[000c3284]                           dc.w $4fff
[000c3286]                           dc.w $ff93
[000c3288]                           dc.w $7fff
[000c328a]                           dc.w $ffff
[000c328c]                           dc.w $4000
[000c328e]                           dc.b $00
[000c328f]                           dc.b $13
[000c3290]                           dc.w $4000
[000c3292]                           dc.b $00
[000c3293]                           dc.b $13
[000c3294]                           dc.w $4000
[000c3296]                           dc.b $00
[000c3297]                           dc.b $1f
[000c3298]                           dc.w $4000
[000c329a]                           dc.b $00
[000c329b]                           dc.b $13
[000c329c]                           dc.w $4000
[000c329e]                           dc.b $00
[000c329f]                           dc.b $13
[000c32a0]                           dc.w $4000
[000c32a2]                           dc.b $00
[000c32a3]                           dc.b $13
[000c32a4]                           dc.w $4000
[000c32a6]                           dc.b $00
[000c32a7]                           dc.b $13
[000c32a8]                           dc.w $4000
[000c32aa]                           dc.b $00
[000c32ab]                           dc.b $13
[000c32ac]                           dc.w $4000
[000c32ae]                           dc.b $00
[000c32af]                           dc.b $13
[000c32b0]                           dc.w $4000
[000c32b2]                           dc.b $00
[000c32b3]                           dc.b $13
[000c32b4]                           dc.w $4000
[000c32b6]                           dc.b $00
[000c32b7]                           dc.b $13
[000c32b8]                           dc.w $4000
[000c32ba]                           dc.b $00
[000c32bb]                           dc.b $13
[000c32bc]                           dc.w $4000
[000c32be]                           dc.b $00
[000c32bf]                           dc.b $13
[000c32c0]                           dc.w $4000
[000c32c2]                           dc.b $00
[000c32c3]                           dc.b $13
[000c32c4]                           dc.w $4000
[000c32c6]                           dc.b $00
[000c32c7]                           dc.b $1f
[000c32c8]                           dc.w $4000
[000c32ca]                           dc.b $00
[000c32cb]                           dc.b $13
[000c32cc]                           dc.b $40
[000c32cd]                           dc.b $00
[000c32ce]                           dc.b $00
[000c32cf]                           dc.b $13
[000c32d0]                           dc.w $7fff
[000c32d2]                           dc.w $ffff
[000c32d4]                           dc.w $4800
[000c32d6]                           dc.b $00
[000c32d7]                           dc.b $93
[000c32d8]                           dc.w $4800
[000c32da]                           dc.b $00
[000c32db]                           dc.b $93
[000c32dc]                           dc.w $7fff
[000c32de]                           dc.b $ff
[000c32df]                           dc.b $ff
[000c32e0]                           dc.w $3fff
[000c32e2]                           dc.w $ffff
[000c32e4]                           dc.b $00
[000c32e5]                           dc.b $00
[000c32e6]                           dc.b $00
[000c32e7]                           dc.b $00
DATAS_04:
[000c32e8]                           dc.b $00
[000c32e9]                           dc.b $00
[000c32ea]                           dc.b $00
[000c32eb]                           dc.b $00
[000c32ec]                           dc.w $7fff
[000c32ee]                           dc.w $fffe
[000c32f0]                           dc.w $7fff
[000c32f2]                           dc.w $ffff
[000c32f4]                           dc.w $7fff
[000c32f6]                           dc.w $ffff
[000c32f8]                           dc.w $7fff
[000c32fa]                           dc.w $ffff
[000c32fc]                           dc.w $7fff
[000c32fe]                           dc.w $ffff
[000c3300]                           dc.w $7fff
[000c3302]                           dc.w $ffff
[000c3304]                           dc.w $7fff
[000c3306]                           dc.w $ffff
[000c3308]                           dc.w $7fff
[000c330a]                           dc.w $ffff
[000c330c]                           dc.w $7fff
[000c330e]                           dc.w $ffff
[000c3310]                           dc.w $7fff
[000c3312]                           dc.w $ffff
[000c3314]                           dc.w $7fff
[000c3316]                           dc.w $ffff
[000c3318]                           dc.w $7fff
[000c331a]                           dc.w $ffff
[000c331c]                           dc.w $7fff
[000c331e]                           dc.w $ffff
[000c3320]                           dc.w $7fff
[000c3322]                           dc.w $ffff
[000c3324]                           dc.w $7fff
[000c3326]                           dc.w $ffff
[000c3328]                           dc.w $7fff
[000c332a]                           dc.w $ffff
[000c332c]                           dc.w $7fff
[000c332e]                           dc.w $ffff
[000c3330]                           dc.w $7fff
[000c3332]                           dc.w $ffff
[000c3334]                           dc.w $7fff
[000c3336]                           dc.w $ffff
[000c3338]                           dc.w $7fff
[000c333a]                           dc.w $ffff
[000c333c]                           dc.w $7fff
[000c333e]                           dc.w $ffff
[000c3340]                           dc.w $7fff
[000c3342]                           dc.w $ffff
[000c3344]                           dc.w $7fff
[000c3346]                           dc.w $ffff
[000c3348]                           dc.w $7fff
[000c334a]                           dc.w $ffff
[000c334c]                           dc.w $7fff
[000c334e]                           dc.w $ffff
[000c3350]                           dc.w $3fff
[000c3352]                           dc.w $ffff
[000c3354]                           dc.b $00
[000c3355]                           dc.b $00
[000c3356]                           dc.b $00
[000c3357]                           dc.b $00
A_3DBUTTON01:
[000c3358] 0005a4e2                  dc.l A_3Dbutton
[000c335c]                           dc.w $a9e1
[000c335e]                           dc.w $0178
[000c3360] 00059318                  dc.l Auo_string
[000c3364]                           dc.b $00
[000c3365]                           dc.b $00
[000c3366]                           dc.b $00
[000c3367]                           dc.b $00
[000c3368]                           dc.b $00
[000c3369]                           dc.b $00
[000c336a]                           dc.b $00
[000c336b]                           dc.b $00
[000c336c]                           dc.b $00
[000c336d]                           dc.b $00
[000c336e]                           dc.b $00
[000c336f]                           dc.b $00
[000c3370] 000c2f76                  dc.l BUBBLE_01
[000c3374]                           dc.b $00
[000c3375]                           dc.b $00
[000c3376]                           dc.b $00
[000c3377]                           dc.b $00
A_3DBUTTON02:
[000c3378] 0005a4e2                  dc.l A_3Dbutton
[000c337c]                           dc.w $29f1
[000c337e]                           dc.w $9178
[000c3380] 00059318                  dc.l Auo_string
[000c3384]                           dc.b $00
[000c3385]                           dc.b $00
[000c3386]                           dc.b $00
[000c3387]                           dc.b $00
[000c3388]                           dc.b $00
[000c3389]                           dc.b $00
[000c338a]                           dc.b $00
[000c338b]                           dc.b $00
[000c338c]                           dc.b $00
[000c338d]                           dc.b $00
[000c338e]                           dc.b $00
[000c338f]                           dc.b $00
[000c3390]                           dc.b $00
[000c3391]                           dc.b $00
[000c3392]                           dc.b $00
[000c3393]                           dc.b $00
[000c3394]                           dc.b $00
[000c3395]                           dc.b $00
[000c3396]                           dc.b $00
[000c3397]                           dc.b $00
A_3DBUTTON03:
[000c3398] 0005a4e2                  dc.l A_3Dbutton
[000c339c]                           dc.w $a9e1
[000c339e]                           dc.w $0178
[000c33a0] 00059318                  dc.l Auo_string
[000c33a4]                           dc.b $00
[000c33a5]                           dc.b $00
[000c33a6]                           dc.b $00
[000c33a7]                           dc.b $00
[000c33a8]                           dc.b $00
[000c33a9]                           dc.b $00
[000c33aa]                           dc.b $00
[000c33ab]                           dc.b $00
[000c33ac]                           dc.b $00
[000c33ad]                           dc.b $00
[000c33ae]                           dc.b $00
[000c33af]                           dc.b $00
[000c33b0] 000c2f9b                  dc.l BUBBLE_02
[000c33b4]                           dc.b $00
[000c33b5]                           dc.b $00
[000c33b6]                           dc.b $00
[000c33b7]                           dc.b $00
A_3DBUTTON04:
[000c33b8] 0005a4e2                  dc.l A_3Dbutton
[000c33bc]                           dc.w $a9e1
[000c33be]                           dc.w $0178
[000c33c0] 00059318                  dc.l Auo_string
[000c33c4]                           dc.b $00
[000c33c5]                           dc.b $00
[000c33c6]                           dc.b $00
[000c33c7]                           dc.b $00
[000c33c8]                           dc.b $00
[000c33c9]                           dc.b $00
[000c33ca]                           dc.b $00
[000c33cb]                           dc.b $00
[000c33cc]                           dc.b $00
[000c33cd]                           dc.b $00
[000c33ce]                           dc.b $00
[000c33cf]                           dc.b $00
[000c33d0] 000c2fcc                  dc.l BUBBLE_03
[000c33d4]                           dc.b $00
[000c33d5]                           dc.b $00
[000c33d6]                           dc.b $00
[000c33d7]                           dc.b $00
A_ARROWS01:
[000c33d8] 0005b212                  dc.l A_arrows
[000c33dc]                           dc.w $2209
[000c33de]                           dc.b $00
[000c33df]                           dc.b $01
[000c33e0]                           dc.b $00
[000c33e1]                           dc.b $00
[000c33e2]                           dc.b $00
[000c33e3]                           dc.b $00
[000c33e4]                           dc.b $00
[000c33e5]                           dc.b $00
[000c33e6]                           dc.b $00
[000c33e7]                           dc.b $00
[000c33e8]                           dc.b $00
[000c33e9]                           dc.b $00
[000c33ea]                           dc.b $00
[000c33eb]                           dc.b $00
[000c33ec]                           dc.b $00
[000c33ed]                           dc.b $00
[000c33ee]                           dc.b $00
[000c33ef]                           dc.b $00
[000c33f0]                           dc.b $00
[000c33f1]                           dc.b $00
[000c33f2]                           dc.b $00
[000c33f3]                           dc.b $00
[000c33f4]                           dc.b $00
[000c33f5]                           dc.b $00
[000c33f6]                           dc.b $00
[000c33f7]                           dc.b $00
_MSK_I_DEL:
[000c33f8]                           dc.b $00
[000c33f9]                           dc.b $00
[000c33fa]                           dc.b $00
[000c33fb]                           dc.b $00
[000c33fc]                           dc.b $00
[000c33fd]                           dc.b $00
[000c33fe]                           dc.b $00
[000c33ff]                           dc.b $00
[000c3400]                           dc.b $00
[000c3401]                           dc.b $00
[000c3402]                           dc.b $00
[000c3403]                           dc.b $00
[000c3404]                           dc.b $00
[000c3405]                           dc.b $00
[000c3406]                           dc.b $00
[000c3407]                           dc.b $00
[000c3408]                           dc.b $00
[000c3409]                           dc.b $00
[000c340a]                           dc.b $00
[000c340b]                           dc.b $00
[000c340c]                           dc.b $00
[000c340d]                           dc.b $0f
[000c340e]                           dc.w $f000
[000c3410]                           dc.b $00
[000c3411]                           dc.b $3f
[000c3412]                           dc.w $fc00
[000c3414]                           dc.b $00
[000c3415]                           dc.b $7f
[000c3416]                           dc.w $fe00
[000c3418]                           dc.b $00
[000c3419]                           dc.b $ff
[000c341a]                           dc.w $ff00
[000c341c]                           dc.b $00
[000c341d]                           dc.b $ff
[000c341e]                           dc.w $ff00
[000c3420]                           dc.b $00
[000c3421]                           dc.b $ff
[000c3422]                           dc.w $ff00
[000c3424]                           dc.b $00
[000c3425]                           dc.b $ff
[000c3426]                           dc.w $ff00
[000c3428]                           dc.b $00
[000c3429]                           dc.b $ff
[000c342a]                           dc.w $ff00
[000c342c]                           dc.b $00
[000c342d]                           dc.b $ff
[000c342e]                           dc.w $ff00
[000c3430]                           dc.b $00
[000c3431]                           dc.b $ff
[000c3432]                           dc.w $ff00
[000c3434]                           dc.b $00
[000c3435]                           dc.b $ff
[000c3436]                           dc.w $ff00
[000c3438]                           dc.b $00
[000c3439]                           dc.b $ff
[000c343a]                           dc.w $ff00
[000c343c]                           dc.b $00
[000c343d]                           dc.b $ff
[000c343e]                           dc.w $ff00
[000c3440]                           dc.b $00
[000c3441]                           dc.b $ff
[000c3442]                           dc.w $ff00
[000c3444]                           dc.b $00
[000c3445]                           dc.b $ff
[000c3446]                           dc.w $ff00
[000c3448]                           dc.b $00
[000c3449]                           dc.b $ff
[000c344a]                           dc.w $ff00
[000c344c]                           dc.b $00
[000c344d]                           dc.b $ff
[000c344e]                           dc.w $ff00
[000c3450]                           dc.b $00
[000c3451]                           dc.b $ff
[000c3452]                           dc.w $ff00
[000c3454]                           dc.b $00
[000c3455]                           dc.b $ff
[000c3456]                           dc.w $ff00
[000c3458]                           dc.b $00
[000c3459]                           dc.b $7f
[000c345a]                           dc.w $fe00
[000c345c]                           dc.b $00
[000c345d]                           dc.b $3f
[000c345e]                           dc.w $fc00
[000c3460]                           dc.b $00
[000c3461]                           dc.b $0f
[000c3462]                           dc.w $f000
[000c3464]                           dc.b $00
[000c3465]                           dc.b $00
[000c3466]                           dc.b $00
[000c3467]                           dc.b $00
[000c3468]                           dc.b $00
[000c3469]                           dc.b $00
[000c346a]                           dc.b $00
[000c346b]                           dc.b $00
[000c346c]                           dc.b $00
[000c346d]                           dc.b $00
[000c346e]                           dc.b $00
[000c346f]                           dc.b $00
[000c3470]                           dc.b $00
[000c3471]                           dc.b $00
[000c3472]                           dc.b $00
[000c3473]                           dc.b $00
[000c3474]                           dc.b $00
[000c3475]                           dc.b $00
[000c3476]                           dc.b $00
[000c3477]                           dc.b $00
_DAT_I_DEL:
[000c3478]                           dc.b $00
[000c3479]                           dc.b $00
[000c347a]                           dc.b $00
[000c347b]                           dc.b $00
[000c347c]                           dc.b $00
[000c347d]                           dc.b $00
[000c347e]                           dc.b $00
[000c347f]                           dc.b $00
[000c3480]                           dc.b $00
[000c3481]                           dc.b $00
[000c3482]                           dc.b $00
[000c3483]                           dc.b $00
[000c3484]                           dc.b $00
[000c3485]                           dc.b $00
[000c3486]                           dc.b $00
[000c3487]                           dc.b $00
[000c3488]                           dc.b $00
[000c3489]                           dc.b $00
[000c348a]                           dc.b $00
[000c348b]                           dc.b $00
[000c348c]                           dc.b $00
[000c348d]                           dc.b $0f
[000c348e]                           dc.w $f000
[000c3490]                           dc.b $00
[000c3491]                           dc.b $30
[000c3492]                           dc.w $0c00
[000c3494]                           dc.b $00
[000c3495]                           dc.b $43
[000c3496]                           dc.w $c300
[000c3498]                           dc.b $00
[000c3499]                           dc.b $86
[000c349a]                           dc.w $6100
[000c349c]                           dc.b $00
[000c349d]                           dc.b $80
[000c349e]                           dc.w $0100
[000c34a0]                           dc.b $00
[000c34a1]                           dc.b $c0
[000c34a2]                           dc.w $0300
[000c34a4]                           dc.b $00
[000c34a5]                           dc.b $b0
[000c34a6]                           dc.w $0f00
[000c34a8]                           dc.b $00
[000c34a9]                           dc.b $df
[000c34aa]                           dc.w $f700
[000c34ac]                           dc.b $00
[000c34ad]                           dc.b $b5
[000c34ae]                           dc.w $5f00
[000c34b0]                           dc.b $00
[000c34b1]                           dc.b $8f
[000c34b2]                           dc.w $e300
[000c34b4]                           dc.b $00
[000c34b5]                           dc.b $a0
[000c34b6]                           dc.w $0b00
[000c34b8]                           dc.b $00
[000c34b9]                           dc.b $a0
[000c34ba]                           dc.w $ab00
[000c34bc]                           dc.b $00
[000c34bd]                           dc.b $aa
[000c34be]                           dc.w $ab00
[000c34c0]                           dc.b $00
[000c34c1]                           dc.b $aa
[000c34c2]                           dc.w $2b00
[000c34c4]                           dc.b $00
[000c34c5]                           dc.b $aa
[000c34c6]                           dc.w $ab00
[000c34c8]                           dc.b $00
[000c34c9]                           dc.b $aa
[000c34ca]                           dc.w $ab00
[000c34cc]                           dc.b $00
[000c34cd]                           dc.b $aa
[000c34ce]                           dc.w $ab00
[000c34d0]                           dc.b $00
[000c34d1]                           dc.b $a2
[000c34d2]                           dc.w $a700
[000c34d4]                           dc.b $00
[000c34d5]                           dc.b $92
[000c34d6]                           dc.w $8b00
[000c34d8]                           dc.b $00
[000c34d9]                           dc.b $42
[000c34da]                           dc.w $1600
[000c34dc]                           dc.b $00
[000c34dd]                           dc.b $30
[000c34de]                           dc.w $3c00
[000c34e0]                           dc.b $00
[000c34e1]                           dc.b $0f
[000c34e2]                           dc.w $f000
[000c34e4]                           dc.b $00
[000c34e5]                           dc.b $00
[000c34e6]                           dc.b $00
[000c34e7]                           dc.b $00
[000c34e8]                           dc.b $00
[000c34e9]                           dc.b $00
[000c34ea]                           dc.b $00
[000c34eb]                           dc.b $00
[000c34ec]                           dc.b $00
[000c34ed]                           dc.b $00
[000c34ee]                           dc.b $00
[000c34ef]                           dc.b $00
[000c34f0]                           dc.b $00
[000c34f1]                           dc.b $00
[000c34f2]                           dc.b $00
[000c34f3]                           dc.b $00
[000c34f4]                           dc.b $00
[000c34f5]                           dc.b $00
[000c34f6]                           dc.b $00
[000c34f7]                           dc.b $00
I_DEL:
[000c34f8] 000c33f8                  dc.l _MSK_I_DEL
[000c34fc] 000c3478                  dc.l _DAT_I_DEL
[000c3500] 000c308e                  dc.l TEXT_06
[000c3504]                           dc.w $1000
[000c3506]                           dc.b $00
[000c3507]                           dc.b $0a
[000c3508]                           dc.b $00
[000c3509]                           dc.b $0a
[000c350a]                           dc.b $00
[000c350b]                           dc.b $00
[000c350c]                           dc.b $00
[000c350d]                           dc.b $00
[000c350e]                           dc.b $00
[000c350f]                           dc.b $20
[000c3510]                           dc.b $00
[000c3511]                           dc.b $20
[000c3512]                           dc.b $00
[000c3513]                           dc.b $0a
[000c3514]                           dc.b $00
[000c3515]                           dc.b $0a
[000c3516]                           dc.b $00
[000c3517]                           dc.b $00
[000c3518]                           dc.b $00
[000c3519]                           dc.b $00
[000c351a]                           dc.b $00
[000c351b]                           dc.b $00
[000c351c]                           dc.b $00
[000c351d]                           dc.b $00
_MSK_I_INFO:
[000c351e]                           dc.b $00
[000c351f]                           dc.b $00
[000c3520]                           dc.b $00
[000c3521]                           dc.b $00
[000c3522]                           dc.b $00
[000c3523]                           dc.b $00
[000c3524]                           dc.b $00
[000c3525]                           dc.b $00
[000c3526]                           dc.b $00
[000c3527]                           dc.b $00
[000c3528]                           dc.b $00
[000c3529]                           dc.b $00
[000c352a]                           dc.b $00
[000c352b]                           dc.b $00
[000c352c]                           dc.b $00
[000c352d]                           dc.b $00
[000c352e]                           dc.b $00
[000c352f]                           dc.b $07
[000c3530]                           dc.w $c000
[000c3532]                           dc.b $00
[000c3533]                           dc.b $0f
[000c3534]                           dc.w $e000
[000c3536]                           dc.b $00
[000c3537]                           dc.b $0f
[000c3538]                           dc.w $e000
[000c353a]                           dc.b $00
[000c353b]                           dc.b $0f
[000c353c]                           dc.w $e000
[000c353e]                           dc.b $00
[000c353f]                           dc.b $0f
[000c3540]                           dc.w $e000
[000c3542]                           dc.b $00
[000c3543]                           dc.b $0f
[000c3544]                           dc.w $e000
[000c3546]                           dc.b $00
[000c3547]                           dc.b $07
[000c3548]                           dc.w $c000
[000c354a]                           dc.b $00
[000c354b]                           dc.b $00
[000c354c]                           dc.b $00
[000c354d]                           dc.b $00
[000c354e]                           dc.b $00
[000c354f]                           dc.b $1f
[000c3550]                           dc.w $c000
[000c3552]                           dc.b $00
[000c3553]                           dc.b $7f
[000c3554]                           dc.w $e000
[000c3556]                           dc.b $00
[000c3557]                           dc.b $7f
[000c3558]                           dc.w $f000
[000c355a]                           dc.b $00
[000c355b]                           dc.b $3f
[000c355c]                           dc.w $f000
[000c355e]                           dc.b $00
[000c355f]                           dc.b $0f
[000c3560]                           dc.w $f000
[000c3562]                           dc.b $00
[000c3563]                           dc.b $0f
[000c3564]                           dc.w $f000
[000c3566]                           dc.b $00
[000c3567]                           dc.b $0f
[000c3568]                           dc.w $f000
[000c356a]                           dc.b $00
[000c356b]                           dc.b $0f
[000c356c]                           dc.w $f000
[000c356e]                           dc.b $00
[000c356f]                           dc.b $0f
[000c3570]                           dc.w $f000
[000c3572]                           dc.b $00
[000c3573]                           dc.b $0f
[000c3574]                           dc.w $f000
[000c3576]                           dc.b $00
[000c3577]                           dc.b $0f
[000c3578]                           dc.w $f000
[000c357a]                           dc.b $00
[000c357b]                           dc.b $3f
[000c357c]                           dc.w $f000
[000c357e]                           dc.b $00
[000c357f]                           dc.b $7f
[000c3580]                           dc.w $f800
[000c3582]                           dc.b $00
[000c3583]                           dc.b $7f
[000c3584]                           dc.w $f800
[000c3586]                           dc.b $00
[000c3587]                           dc.b $7f
[000c3588]                           dc.w $f000
[000c358a]                           dc.b $00
[000c358b]                           dc.b $00
[000c358c]                           dc.b $00
[000c358d]                           dc.b $00
[000c358e]                           dc.b $00
[000c358f]                           dc.b $00
[000c3590]                           dc.b $00
[000c3591]                           dc.b $00
[000c3592]                           dc.b $00
[000c3593]                           dc.b $00
[000c3594]                           dc.b $00
[000c3595]                           dc.b $00
[000c3596]                           dc.b $00
[000c3597]                           dc.b $00
[000c3598]                           dc.b $00
[000c3599]                           dc.b $00
[000c359a]                           dc.b $00
[000c359b]                           dc.b $00
[000c359c]                           dc.b $00
[000c359d]                           dc.b $00
_DAT_I_INFO:
[000c359e]                           dc.b $00
[000c359f]                           dc.b $00
[000c35a0]                           dc.b $00
[000c35a1]                           dc.b $00
[000c35a2]                           dc.b $00
[000c35a3]                           dc.b $00
[000c35a4]                           dc.b $00
[000c35a5]                           dc.b $00
[000c35a6]                           dc.b $00
[000c35a7]                           dc.b $00
[000c35a8]                           dc.b $00
[000c35a9]                           dc.b $00
[000c35aa]                           dc.b $00
[000c35ab]                           dc.b $00
[000c35ac]                           dc.b $00
[000c35ad]                           dc.b $00
[000c35ae]                           dc.b $00
[000c35af]                           dc.b $00
[000c35b0]                           dc.b $00
[000c35b1]                           dc.b $00
[000c35b2]                           dc.b $00
[000c35b3]                           dc.b $03
[000c35b4]                           dc.w $8000
[000c35b6]                           dc.b $00
[000c35b7]                           dc.b $07
[000c35b8]                           dc.w $c000
[000c35ba]                           dc.b $00
[000c35bb]                           dc.b $07
[000c35bc]                           dc.w $c000
[000c35be]                           dc.b $00
[000c35bf]                           dc.b $07
[000c35c0]                           dc.w $c000
[000c35c2]                           dc.b $00
[000c35c3]                           dc.b $03
[000c35c4]                           dc.w $8000
[000c35c6]                           dc.b $00
[000c35c7]                           dc.b $00
[000c35c8]                           dc.b $00
[000c35c9]                           dc.b $00
[000c35ca]                           dc.b $00
[000c35cb]                           dc.b $00
[000c35cc]                           dc.b $00
[000c35cd]                           dc.b $00
[000c35ce]                           dc.b $00
[000c35cf]                           dc.b $00
[000c35d0]                           dc.b $00
[000c35d1]                           dc.b $00
[000c35d2]                           dc.b $00
[000c35d3]                           dc.b $1f
[000c35d4]                           dc.w $c000
[000c35d6]                           dc.b $00
[000c35d7]                           dc.b $3f
[000c35d8]                           dc.w $e000
[000c35da]                           dc.b $00
[000c35db]                           dc.b $07
[000c35dc]                           dc.w $e000
[000c35de]                           dc.b $00
[000c35df]                           dc.b $07
[000c35e0]                           dc.w $e000
[000c35e2]                           dc.b $00
[000c35e3]                           dc.b $07
[000c35e4]                           dc.w $e000
[000c35e6]                           dc.b $00
[000c35e7]                           dc.b $07
[000c35e8]                           dc.w $e000
[000c35ea]                           dc.b $00
[000c35eb]                           dc.b $07
[000c35ec]                           dc.w $e000
[000c35ee]                           dc.b $00
[000c35ef]                           dc.b $07
[000c35f0]                           dc.w $e000
[000c35f2]                           dc.b $00
[000c35f3]                           dc.b $07
[000c35f4]                           dc.w $e000
[000c35f6]                           dc.b $00
[000c35f7]                           dc.b $07
[000c35f8]                           dc.w $e000
[000c35fa]                           dc.b $00
[000c35fb]                           dc.b $07
[000c35fc]                           dc.w $e000
[000c35fe]                           dc.b $00
[000c35ff]                           dc.b $3f
[000c3600]                           dc.w $f000
[000c3602]                           dc.b $00
[000c3603]                           dc.b $3f
[000c3604]                           dc.w $f000
[000c3606]                           dc.b $00
[000c3607]                           dc.b $00
[000c3608]                           dc.b $00
[000c3609]                           dc.b $00
[000c360a]                           dc.b $00
[000c360b]                           dc.b $00
[000c360c]                           dc.b $00
[000c360d]                           dc.b $00
[000c360e]                           dc.b $00
[000c360f]                           dc.b $00
[000c3610]                           dc.b $00
[000c3611]                           dc.b $00
[000c3612]                           dc.b $00
[000c3613]                           dc.b $00
[000c3614]                           dc.b $00
[000c3615]                           dc.b $00
[000c3616]                           dc.b $00
[000c3617]                           dc.b $00
[000c3618]                           dc.b $00
[000c3619]                           dc.b $00
[000c361a]                           dc.b $00
[000c361b]                           dc.b $00
[000c361c]                           dc.b $00
[000c361d]                           dc.b $00
I_INFO:
[000c361e] 000c351e                  dc.l _MSK_I_INFO
[000c3622] 000c359e                  dc.l _DAT_I_INFO
[000c3626] 000c308e                  dc.l TEXT_06
[000c362a]                           dc.w $1000
[000c362c]                           dc.b $00
[000c362d]                           dc.b $0e
[000c362e]                           dc.b $00
[000c362f]                           dc.b $0e
[000c3630]                           dc.b $00
[000c3631]                           dc.b $00
[000c3632]                           dc.b $00
[000c3633]                           dc.b $00
[000c3634]                           dc.b $00
[000c3635]                           dc.b $20
[000c3636]                           dc.b $00
[000c3637]                           dc.b $20
[000c3638]                           dc.b $00
[000c3639]                           dc.b $0e
[000c363a]                           dc.b $00
[000c363b]                           dc.b $0e
[000c363c]                           dc.b $00
[000c363d]                           dc.b $00
[000c363e]                           dc.b $00
[000c363f]                           dc.b $00
[000c3640]                           dc.b $00
[000c3641]                           dc.b $00
[000c3642]                           dc.b $00
[000c3643]                           dc.b $00
_MSK_I_OPEN:
[000c3644]                           dc.b $00
[000c3645]                           dc.b $00
[000c3646]                           dc.b $00
[000c3647]                           dc.b $00
[000c3648]                           dc.b $00
[000c3649]                           dc.b $00
[000c364a]                           dc.b $00
[000c364b]                           dc.b $00
[000c364c]                           dc.b $00
[000c364d]                           dc.b $00
[000c364e]                           dc.b $00
[000c364f]                           dc.b $00
[000c3650]                           dc.b $00
[000c3651]                           dc.b $00
[000c3652]                           dc.b $00
[000c3653]                           dc.b $00
[000c3654]                           dc.b $00
[000c3655]                           dc.b $00
[000c3656]                           dc.b $00
[000c3657]                           dc.b $00
[000c3658]                           dc.b $00
[000c3659]                           dc.b $00
[000c365a]                           dc.b $00
[000c365b]                           dc.b $00
[000c365c]                           dc.w $07e0
[000c365e]                           dc.b $00
[000c365f]                           dc.b $00
[000c3660]                           dc.w $0ff0
[000c3662]                           dc.b $00
[000c3663]                           dc.b $80
[000c3664]                           dc.w $0ff0
[000c3666]                           dc.b $00
[000c3667]                           dc.b $c0
[000c3668]                           dc.w $0fff
[000c366a]                           dc.w $ffe0
[000c366c]                           dc.w $0fff
[000c366e]                           dc.w $fff0
[000c3670]                           dc.w $0fff
[000c3672]                           dc.w $ffe0
[000c3674]                           dc.w $0fff
[000c3676]                           dc.w $fec0
[000c3678]                           dc.w $0fff
[000c367a]                           dc.w $fe80
[000c367c]                           dc.w $0fff
[000c367e]                           dc.w $fe00
[000c3680]                           dc.w $0fff
[000c3682]                           dc.w $fe00
[000c3684]                           dc.w $0fff
[000c3686]                           dc.w $ffc0
[000c3688]                           dc.w $0fff
[000c368a]                           dc.w $ffe0
[000c368c]                           dc.w $0fff
[000c368e]                           dc.w $ffe0
[000c3690]                           dc.w $0fff
[000c3692]                           dc.w $ffc0
[000c3694]                           dc.w $0fff
[000c3696]                           dc.w $ffc0
[000c3698]                           dc.w $0fff
[000c369a]                           dc.w $ff80
[000c369c]                           dc.w $0fff
[000c369e]                           dc.w $ff80
[000c36a0]                           dc.w $0fff
[000c36a2]                           dc.w $ff00
[000c36a4]                           dc.w $0fff
[000c36a6]                           dc.w $ff00
[000c36a8]                           dc.w $0fff
[000c36aa]                           dc.w $fe00
[000c36ac]                           dc.w $07ff
[000c36ae]                           dc.w $fc00
[000c36b0]                           dc.b $00
[000c36b1]                           dc.b $00
[000c36b2]                           dc.b $00
[000c36b3]                           dc.b $00
[000c36b4]                           dc.b $00
[000c36b5]                           dc.b $00
[000c36b6]                           dc.b $00
[000c36b7]                           dc.b $00
[000c36b8]                           dc.b $00
[000c36b9]                           dc.b $00
[000c36ba]                           dc.b $00
[000c36bb]                           dc.b $00
[000c36bc]                           dc.b $00
[000c36bd]                           dc.b $00
[000c36be]                           dc.b $00
[000c36bf]                           dc.b $00
[000c36c0]                           dc.b $00
[000c36c1]                           dc.b $00
[000c36c2]                           dc.b $00
[000c36c3]                           dc.b $00
_DAT_I_OPEN:
[000c36c4]                           dc.b $00
[000c36c5]                           dc.b $00
[000c36c6]                           dc.b $00
[000c36c7]                           dc.b $00
[000c36c8]                           dc.b $00
[000c36c9]                           dc.b $00
[000c36ca]                           dc.b $00
[000c36cb]                           dc.b $00
[000c36cc]                           dc.b $00
[000c36cd]                           dc.b $00
[000c36ce]                           dc.b $00
[000c36cf]                           dc.b $00
[000c36d0]                           dc.b $00
[000c36d1]                           dc.b $00
[000c36d2]                           dc.b $00
[000c36d3]                           dc.b $00
[000c36d4]                           dc.b $00
[000c36d5]                           dc.b $00
[000c36d6]                           dc.b $00
[000c36d7]                           dc.b $00
[000c36d8]                           dc.b $00
[000c36d9]                           dc.b $00
[000c36da]                           dc.b $00
[000c36db]                           dc.b $00
[000c36dc]                           dc.w $07e0
[000c36de]                           dc.b $00
[000c36df]                           dc.b $00
[000c36e0]                           dc.w $0810
[000c36e2]                           dc.b $00
[000c36e3]                           dc.b $80
[000c36e4]                           dc.w $0810
[000c36e6]                           dc.b $00
[000c36e7]                           dc.b $c0
[000c36e8]                           dc.w $080f
[000c36ea]                           dc.w $ffe0
[000c36ec]                           dc.w $0800
[000c36ee]                           dc.w $3ff0
[000c36f0]                           dc.w $0800
[000c36f2]                           dc.w $7fe0
[000c36f4]                           dc.w $0800
[000c36f6]                           dc.w $72c0
[000c36f8]                           dc.w $083e
[000c36fa]                           dc.w $7280
[000c36fc]                           dc.w $0841
[000c36fe]                           dc.w $7200
[000c3700]                           dc.w $0841
[000c3702]                           dc.w $0200
[000c3704]                           dc.w $0880
[000c3706]                           dc.w $ffc0
[000c3708]                           dc.w $0880
[000c370a]                           dc.b $00
[000c370b]                           dc.b $20
[000c370c]                           dc.w $0900
[000c370e]                           dc.b $00
[000c370f]                           dc.b $20
[000c3710]                           dc.w $0900
[000c3712]                           dc.b $00
[000c3713]                           dc.b $40
[000c3714]                           dc.w $0a00
[000c3716]                           dc.b $00
[000c3717]                           dc.b $40
[000c3718]                           dc.w $0a00
[000c371a]                           dc.b $00
[000c371b]                           dc.b $80
[000c371c]                           dc.w $0c00
[000c371e]                           dc.b $00
[000c371f]                           dc.b $80
[000c3720]                           dc.w $0c00
[000c3722]                           dc.w $0100
[000c3724]                           dc.w $0c92
[000c3726]                           dc.w $4900
[000c3728]                           dc.w $0c00
[000c372a]                           dc.w $0200
[000c372c]                           dc.w $07ff
[000c372e]                           dc.w $fe00
[000c3730]                           dc.b $00
[000c3731]                           dc.b $00
[000c3732]                           dc.b $00
[000c3733]                           dc.b $00
[000c3734]                           dc.b $00
[000c3735]                           dc.b $00
[000c3736]                           dc.b $00
[000c3737]                           dc.b $00
[000c3738]                           dc.b $00
[000c3739]                           dc.b $00
[000c373a]                           dc.b $00
[000c373b]                           dc.b $00
[000c373c]                           dc.b $00
[000c373d]                           dc.b $00
[000c373e]                           dc.b $00
[000c373f]                           dc.b $00
[000c3740]                           dc.b $00
[000c3741]                           dc.b $00
[000c3742]                           dc.b $00
[000c3743]                           dc.b $00
I_OPEN:
[000c3744] 000c3644                  dc.l _MSK_I_OPEN
[000c3748] 000c36c4                  dc.l _DAT_I_OPEN
[000c374c] 000c308e                  dc.l TEXT_06
[000c3750]                           dc.w $1000
[000c3752]                           dc.b $00
[000c3753]                           dc.b $08
[000c3754]                           dc.b $00
[000c3755]                           dc.b $08
[000c3756]                           dc.b $00
[000c3757]                           dc.b $00
[000c3758]                           dc.b $00
[000c3759]                           dc.b $00
[000c375a]                           dc.b $00
[000c375b]                           dc.b $20
[000c375c]                           dc.b $00
[000c375d]                           dc.b $20
[000c375e]                           dc.b $00
[000c375f]                           dc.b $08
[000c3760]                           dc.b $00
[000c3761]                           dc.b $08
[000c3762]                           dc.b $00
[000c3763]                           dc.b $00
[000c3764]                           dc.b $00
[000c3765]                           dc.b $00
[000c3766]                           dc.b $00
[000c3767]                           dc.b $00
[000c3768]                           dc.b $00
[000c3769]                           dc.b $00
_C4_I_WIN:
[000c376a]                           dc.b $00
[000c376b]                           dc.b $04
[000c376c] 000c3128                  dc.l $000c3128 ; no symbol found
[000c3770] 000c32e8                  dc.l DATAS_04
[000c3774]                           dc.b $00
[000c3775]                           dc.b $00
[000c3776]                           dc.b $00
[000c3777]                           dc.b $00
[000c3778]                           dc.b $00
[000c3779]                           dc.b $00
[000c377a]                           dc.b $00
[000c377b]                           dc.b $00
[000c377c]                           dc.b $00
[000c377d]                           dc.b $00
[000c377e]                           dc.b $00
[000c377f]                           dc.b $00
_MSK_I_WIN:
[000c3780]                           dc.b $00
[000c3781]                           dc.b $00
[000c3782]                           dc.b $00
[000c3783]                           dc.b $00
[000c3784]                           dc.b $00
[000c3785]                           dc.b $00
[000c3786]                           dc.b $00
[000c3787]                           dc.b $00
[000c3788]                           dc.w $7fff
[000c378a]                           dc.w $fffe
[000c378c]                           dc.w $7fff
[000c378e]                           dc.w $fffe
[000c3790]                           dc.w $7fff
[000c3792]                           dc.w $fffe
[000c3794]                           dc.w $7fff
[000c3796]                           dc.w $fffe
[000c3798]                           dc.w $7fff
[000c379a]                           dc.w $fffe
[000c379c]                           dc.w $7fff
[000c379e]                           dc.w $fffe
[000c37a0]                           dc.w $7fff
[000c37a2]                           dc.w $fffe
[000c37a4]                           dc.w $7fff
[000c37a6]                           dc.w $fffe
[000c37a8]                           dc.w $7fff
[000c37aa]                           dc.w $fffe
[000c37ac]                           dc.w $7fff
[000c37ae]                           dc.w $fffe
[000c37b0]                           dc.w $7fff
[000c37b2]                           dc.w $fffe
[000c37b4]                           dc.w $7fff
[000c37b6]                           dc.w $fffe
[000c37b8]                           dc.w $7fff
[000c37ba]                           dc.w $fffe
[000c37bc]                           dc.w $7fff
[000c37be]                           dc.w $fffe
[000c37c0]                           dc.w $7fff
[000c37c2]                           dc.w $fffe
[000c37c4]                           dc.w $7fff
[000c37c6]                           dc.w $fffe
[000c37c8]                           dc.w $7fff
[000c37ca]                           dc.w $fffe
[000c37cc]                           dc.w $7fff
[000c37ce]                           dc.w $fffe
[000c37d0]                           dc.w $7fff
[000c37d2]                           dc.w $fffe
[000c37d4]                           dc.w $7fff
[000c37d6]                           dc.w $fffe
[000c37d8]                           dc.w $7fff
[000c37da]                           dc.w $fffe
[000c37dc]                           dc.w $7fff
[000c37de]                           dc.w $fffe
[000c37e0]                           dc.w $7fff
[000c37e2]                           dc.w $fffe
[000c37e4]                           dc.w $7fff
[000c37e6]                           dc.w $fffe
[000c37e8]                           dc.w $7fff
[000c37ea]                           dc.w $fffe
[000c37ec]                           dc.b $00
[000c37ed]                           dc.b $00
[000c37ee]                           dc.b $00
[000c37ef]                           dc.b $00
_DAT_I_WIN:
[000c37f0]                           dc.b $00
[000c37f1]                           dc.b $00
[000c37f2]                           dc.b $00
[000c37f3]                           dc.b $00
[000c37f4]                           dc.b $00
[000c37f5]                           dc.b $00
[000c37f6]                           dc.b $00
[000c37f7]                           dc.b $00
[000c37f8]                           dc.w $7fff
[000c37fa]                           dc.w $fffe
[000c37fc]                           dc.w $4fff
[000c37fe]                           dc.w $ff92
[000c3800]                           dc.w $4fff
[000c3802]                           dc.w $ff92
[000c3804]                           dc.w $7fff
[000c3806]                           dc.w $fffe
[000c3808]                           dc.w $4000
[000c380a]                           dc.b $00
[000c380b]                           dc.b $12
[000c380c]                           dc.b 'UUUR@',0
[000c3812]                           dc.b $00
[000c3813]                           dc.b $1e
[000c3814]                           dc.b 'UUUR@',0
[000c381a]                           dc.b $00
[000c381b]                           dc.b $12
[000c381c]                           dc.b 'UUUR@',0
[000c3822]                           dc.b $00
[000c3823]                           dc.b $12
[000c3824]                           dc.b 'UUUR@',0
[000c382a]                           dc.b $00
[000c382b]                           dc.b $12
[000c382c]                           dc.b 'UUUR@',0
[000c3832]                           dc.b $00
[000c3833]                           dc.b $12
[000c3834]                           dc.b 'UUUR@',0
[000c383a]                           dc.b $00
[000c383b]                           dc.b $12
[000c383c]                           dc.b 'UUUR@',0
[000c3842]                           dc.b $00
[000c3843]                           dc.b $1e
[000c3844]                           dc.b 'UUUR@',0
[000c384a]                           dc.b $00
[000c384b]                           dc.b $12
[000c384c]                           dc.w $7fff
[000c384e]                           dc.w $fffe
[000c3850]                           dc.w $4800
[000c3852]                           dc.b $00
[000c3853]                           dc.b $92
[000c3854]                           dc.w $4800
[000c3856]                           dc.b $00
[000c3857]                           dc.b $92
[000c3858]                           dc.w $7fff
[000c385a]                           dc.w $fffe
[000c385c]                           dc.b $00
[000c385d]                           dc.b $00
[000c385e]                           dc.b $00
[000c385f]                           dc.b $00
I_WIN:
[000c3860] 000c3780                  dc.l _MSK_I_WIN
[000c3864] 000c37f0                  dc.l _DAT_I_WIN
[000c3868] 000c308e                  dc.l TEXT_06
[000c386c]                           dc.w $1000
[000c386e]                           dc.b $00
[000c386f]                           dc.b $00
[000c3870]                           dc.b $00
[000c3871]                           dc.b $00
[000c3872]                           dc.b $00
[000c3873]                           dc.b $14
[000c3874]                           dc.b $00
[000c3875]                           dc.b $00
[000c3876]                           dc.b $00
[000c3877]                           dc.b $20
[000c3878]                           dc.b $00
[000c3879]                           dc.b $1c
[000c387a]                           dc.b $00
[000c387b]                           dc.b $00
[000c387c]                           dc.b $00
[000c387d]                           dc.b $20
[000c387e]                           dc.b $00
[000c387f]                           dc.b $48
[000c3880]                           dc.b $00
[000c3881]                           dc.b $08
[000c3882] 000c376a                  dc.l _C4_I_WIN
_IMG_B_OBJPROTO:
[000c3886]                           dc.b $00
[000c3887]                           dc.b $00
[000c3888]                           dc.b $00
[000c3889]                           dc.b $00
[000c388a]                           dc.b $00
[000c388b]                           dc.b $22
[000c388c]                           dc.b $00
[000c388d]                           dc.b $00
[000c388e]                           dc.b $00
[000c388f]                           dc.b $66
[000c3890]                           dc.b $00
[000c3891]                           dc.b $00
[000c3892]                           dc.b $00
[000c3893]                           dc.b $66
[000c3894]                           dc.b $00
[000c3895]                           dc.b $00
[000c3896]                           dc.b $00
[000c3897]                           dc.b $00
[000c3898]                           dc.b $00
[000c3899]                           dc.b $00
[000c389a]                           dc.b $00
[000c389b]                           dc.b $00
[000c389c]                           dc.w $4000
[000c389e]                           dc.w $1f00
[000c38a0]                           dc.w $c800
[000c38a2]                           dc.w $1180
[000c38a4]                           dc.w $8800
[000c38a6]                           dc.w $1080
[000c38a8]                           dc.w $8800
[000c38aa]                           dc.w $1080
[000c38ac]                           dc.w $8800
[000c38ae]                           dc.b $00
[000c38af]                           dc.b $80
[000c38b0]                           dc.w $8800
[000c38b2]                           dc.b $00
[000c38b3]                           dc.b $80
[000c38b4]                           dc.w $8800
[000c38b6]                           dc.b $00
[000c38b7]                           dc.b $80
[000c38b8]                           dc.w $8800
[000c38ba]                           dc.w $0180
[000c38bc]                           dc.w $8800
[000c38be]                           dc.w $0100
[000c38c0]                           dc.w $8800
[000c38c2]                           dc.w $0300
[000c38c4]                           dc.w $8fc0
[000c38c6]                           dc.w $0200
[000c38c8]                           dc.w $8c60
[000c38ca]                           dc.w $0200
[000c38cc]                           dc.w $8820
[000c38ce]                           dc.w $0200
[000c38d0]                           dc.w $8830
[000c38d2]                           dc.w $0201
[000c38d4]                           dc.w $8810
[000c38d6]                           dc.w $0201
[000c38d8]                           dc.w $1810
[000c38da]                           dc.w $0201
[000c38dc]                           dc.w $1030
[000c38de]                           dc.w $0303
[000c38e0]                           dc.w $1820
[000c38e2]                           dc.w $01ce
[000c38e4]                           dc.w $0860
[000c38e6]                           dc.b $00
[000c38e7]                           dc.b $78
[000c38e8]                           dc.w $0cc0
[000c38ea]                           dc.b $00
[000c38eb]                           dc.b $00
[000c38ec]                           dc.w $0780
[000c38ee]                           dc.b $00
[000c38ef]                           dc.b $00
[000c38f0]                           dc.b $00
[000c38f1]                           dc.b $00
[000c38f2]                           dc.w $0fff
[000c38f4]                           dc.w $fff8
[000c38f6]                           dc.b $00
[000c38f7]                           dc.b $00
[000c38f8]                           dc.b $00
[000c38f9]                           dc.b $00
[000c38fa]                           dc.b $00
[000c38fb]                           dc.b $00
[000c38fc]                           dc.b $00
[000c38fd]                           dc.b $00
[000c38fe]                           dc.b $00
[000c38ff]                           dc.b $00
[000c3900]                           dc.b $00
[000c3901]                           dc.b $00
[000c3902]                           dc.b $00
[000c3903]                           dc.b $00
[000c3904]                           dc.b $00
[000c3905]                           dc.b $00
B_OBJPROTO:
[000c3906] 000c3886                  dc.l _IMG_B_OBJPROTO
[000c390a]                           dc.b $00
[000c390b]                           dc.b $04
[000c390c]                           dc.b $00
[000c390d]                           dc.b $20
[000c390e]                           dc.b $00
[000c390f]                           dc.b $00
[000c3910]                           dc.b $00
[000c3911]                           dc.b $00
[000c3912]                           dc.b $00
[000c3913]                           dc.b $01
_PMENU:
[000c3914]                           dc.w $ffff
[000c3916]                           dc.b $00
[000c3917]                           dc.b $01
[000c3918]                           dc.b $00
[000c3919]                           dc.b $06
[000c391a]                           dc.b $00
[000c391b]                           dc.b $19
[000c391c]                           dc.b $00
[000c391d]                           dc.b $00
[000c391e]                           dc.b $00
[000c391f]                           dc.b $00
[000c3920]                           dc.b $00
[000c3921]                           dc.b $00
[000c3922]                           dc.b $00
[000c3923]                           dc.b $00
[000c3924]                           dc.b $00
[000c3925]                           dc.b $00
[000c3926]                           dc.b $00
[000c3927]                           dc.b $00
[000c3928]                           dc.b $00
[000c3929]                           dc.b $5a
[000c392a]                           dc.b $00
[000c392b]                           dc.b $19
_01__PMENU:
[000c392c]                           dc.b $00
[000c392d]                           dc.b $06
[000c392e]                           dc.b $00
[000c392f]                           dc.b $02
[000c3930]                           dc.b $00
[000c3931]                           dc.b $02
[000c3932]                           dc.b $00
[000c3933]                           dc.b $14
[000c3934]                           dc.b $00
[000c3935]                           dc.b $00
[000c3936]                           dc.b $00
[000c3937]                           dc.b $00
[000c3938]                           dc.b $00
[000c3939]                           dc.b $00
[000c393a]                           dc.w $1100
[000c393c]                           dc.b $00
[000c393d]                           dc.b $00
[000c393e]                           dc.b $00
[000c393f]                           dc.b $00
[000c3940]                           dc.b $00
[000c3941]                           dc.b $5a
[000c3942]                           dc.w $0201
_02__PMENU:
[000c3944]                           dc.b $00
[000c3945]                           dc.b $01
[000c3946]                           dc.b $00
[000c3947]                           dc.b $03
[000c3948]                           dc.b $00
[000c3949]                           dc.b $05
[000c394a]                           dc.b $00
[000c394b]                           dc.b $19
[000c394c]                           dc.b $00
[000c394d]                           dc.b $00
[000c394e]                           dc.b $00
[000c394f]                           dc.b $00
[000c3950]                           dc.b $00
[000c3951]                           dc.b $00
[000c3952]                           dc.b $00
[000c3953]                           dc.b $00
[000c3954]                           dc.b $00
[000c3955]                           dc.b $02
[000c3956]                           dc.b $00
[000c3957]                           dc.b $00
[000c3958]                           dc.b $00
[000c3959]                           dc.b $16
[000c395a]                           dc.w $0301
_03__PMENU:
[000c395c]                           dc.b $00
[000c395d]                           dc.b $04
[000c395e]                           dc.w $ffff
[000c3960]                           dc.w $ffff
[000c3962]                           dc.b $00
[000c3963]                           dc.b $20
[000c3964]                           dc.b $00
[000c3965]                           dc.b $00
[000c3966]                           dc.b $00
[000c3967]                           dc.b $00
[000c3968] 000c308e                  dc.l TEXT_06
[000c396c]                           dc.b $00
[000c396d]                           dc.b $00
[000c396e]                           dc.b $00
[000c396f]                           dc.b $00
[000c3970]                           dc.b $00
[000c3971]                           dc.b $06
[000c3972]                           dc.w $0301
_04__PMENU:
[000c3974]                           dc.b $00
[000c3975]                           dc.b $05
[000c3976]                           dc.w $ffff
[000c3978]                           dc.w $ffff
[000c397a]                           dc.b $00
[000c397b]                           dc.b $20
[000c397c]                           dc.b $00
[000c397d]                           dc.b $00
[000c397e]                           dc.b $00
[000c397f]                           dc.b $00
[000c3980] 000c30c9                  dc.l TEXT_11
[000c3984]                           dc.b $00
[000c3985]                           dc.b $06
[000c3986]                           dc.b $00
[000c3987]                           dc.b $00
[000c3988]                           dc.b $00
[000c3989]                           dc.b $07
[000c398a]                           dc.w $0301
_05__PMENU:
[000c398c]                           dc.b $00
[000c398d]                           dc.b $02
[000c398e]                           dc.w $ffff
[000c3990]                           dc.w $ffff
[000c3992]                           dc.b $00
[000c3993]                           dc.b $20
[000c3994]                           dc.b $00
[000c3995]                           dc.b $00
[000c3996]                           dc.b $00
[000c3997]                           dc.b $00
[000c3998] 000c30f7                  dc.l TEXT_15
[000c399c]                           dc.b $00
[000c399d]                           dc.b $0d
[000c399e]                           dc.b $00
[000c399f]                           dc.b $00
[000c39a0]                           dc.b $00
[000c39a1]                           dc.b $09
[000c39a2]                           dc.w $0301
_06__PMENU:
[000c39a4]                           dc.b $00
[000c39a5]                           dc.b $00
[000c39a6]                           dc.b $00
[000c39a7]                           dc.b $07
[000c39a8]                           dc.b $00
[000c39a9]                           dc.b $1d
[000c39aa]                           dc.b $00
[000c39ab]                           dc.b $19
[000c39ac]                           dc.b $00
[000c39ad]                           dc.b $00
[000c39ae]                           dc.b $00
[000c39af]                           dc.b $00
[000c39b0]                           dc.b $00
[000c39b1]                           dc.b $00
[000c39b2]                           dc.b $00
[000c39b3]                           dc.b $00
[000c39b4]                           dc.b $00
[000c39b5]                           dc.b $00
[000c39b6]                           dc.w $0301
[000c39b8]                           dc.b $00
[000c39b9]                           dc.b $50
[000c39ba]                           dc.b $00
[000c39bb]                           dc.b $13
_07__PMENU:
[000c39bc]                           dc.b $00
[000c39bd]                           dc.b $10
[000c39be]                           dc.b $00
[000c39bf]                           dc.b $08
[000c39c0]                           dc.b $00
[000c39c1]                           dc.b $0f
[000c39c2]                           dc.b $00
[000c39c3]                           dc.b $14
[000c39c4]                           dc.b $00
[000c39c5]                           dc.b $00
[000c39c6]                           dc.b $00
[000c39c7]                           dc.b $00
[000c39c8]                           dc.b $00
[000c39c9]                           dc.b $ff
[000c39ca]                           dc.w $1100
[000c39cc]                           dc.b $00
[000c39cd]                           dc.b $02
[000c39ce]                           dc.b $00
[000c39cf]                           dc.b $00
[000c39d0]                           dc.b $00
[000c39d1]                           dc.b $14
[000c39d2]                           dc.b $00
[000c39d3]                           dc.b $08
_08__PMENU:
[000c39d4]                           dc.b $00
[000c39d5]                           dc.b $09
[000c39d6]                           dc.w $ffff
[000c39d8]                           dc.w $ffff
[000c39da]                           dc.b $00
[000c39db]                           dc.b $1c
[000c39dc]                           dc.b $00
[000c39dd]                           dc.b $00
[000c39de]                           dc.w $2000
[000c39e0] 000c308f                  dc.l TEXT_07
[000c39e4]                           dc.b $00
[000c39e5]                           dc.b $00
[000c39e6]                           dc.b $00
[000c39e7]                           dc.b $00
[000c39e8]                           dc.b $00
[000c39e9]                           dc.b $14
[000c39ea]                           dc.b $00
[000c39eb]                           dc.b $01
_09__PMENU:
[000c39ec]                           dc.b $00
[000c39ed]                           dc.b $0a
[000c39ee]                           dc.w $ffff
[000c39f0]                           dc.w $ffff
[000c39f2]                           dc.b $00
[000c39f3]                           dc.b $1c
[000c39f4]                           dc.b $00
[000c39f5]                           dc.b $00
[000c39f6]                           dc.w $2008
[000c39f8] 000c30b4                  dc.l TEXT_09
[000c39fc]                           dc.b $00
[000c39fd]                           dc.b $00
[000c39fe]                           dc.b $00
[000c39ff]                           dc.b $01
[000c3a00]                           dc.b $00
[000c3a01]                           dc.b $14
[000c3a02]                           dc.b $00
[000c3a03]                           dc.b $01
_10__PMENU:
[000c3a04]                           dc.b $00
[000c3a05]                           dc.b $0b
[000c3a06]                           dc.w $ffff
[000c3a08]                           dc.w $ffff
[000c3a0a]                           dc.b $00
[000c3a0b]                           dc.b $1c
[000c3a0c]                           dc.b $00
[000c3a0d]                           dc.b $00
[000c3a0e]                           dc.w $2000
[000c3a10] 000c308e                  dc.l TEXT_06
[000c3a14]                           dc.b $00
[000c3a15]                           dc.b $00
[000c3a16]                           dc.b $00
[000c3a17]                           dc.b $02
[000c3a18]                           dc.b $00
[000c3a19]                           dc.b $14
[000c3a1a]                           dc.b $00
[000c3a1b]                           dc.b $01
_11__PMENU:
[000c3a1c]                           dc.b $00
[000c3a1d]                           dc.b $0c
[000c3a1e]                           dc.w $ffff
[000c3a20]                           dc.w $ffff
[000c3a22]                           dc.b $00
[000c3a23]                           dc.b $1c
[000c3a24]                           dc.b $00
[000c3a25]                           dc.b $00
[000c3a26]                           dc.w $2000
[000c3a28] 000c308e                  dc.l TEXT_06
[000c3a2c]                           dc.b $00
[000c3a2d]                           dc.b $00
[000c3a2e]                           dc.b $00
[000c3a2f]                           dc.b $03
[000c3a30]                           dc.b $00
[000c3a31]                           dc.b $14
[000c3a32]                           dc.b $00
[000c3a33]                           dc.b $01
_12__PMENU:
[000c3a34]                           dc.b $00
[000c3a35]                           dc.b $0d
[000c3a36]                           dc.w $ffff
[000c3a38]                           dc.w $ffff
[000c3a3a]                           dc.b $00
[000c3a3b]                           dc.b $1c
[000c3a3c]                           dc.b $00
[000c3a3d]                           dc.b $00
[000c3a3e]                           dc.w $2000
[000c3a40] 000c308e                  dc.l TEXT_06
[000c3a44]                           dc.b $00
[000c3a45]                           dc.b $00
[000c3a46]                           dc.b $00
[000c3a47]                           dc.b $04
[000c3a48]                           dc.b $00
[000c3a49]                           dc.b $14
[000c3a4a]                           dc.b $00
[000c3a4b]                           dc.b $01
_13__PMENU:
[000c3a4c]                           dc.b $00
[000c3a4d]                           dc.b $0e
[000c3a4e]                           dc.w $ffff
[000c3a50]                           dc.w $ffff
[000c3a52]                           dc.b $00
[000c3a53]                           dc.b $1c
[000c3a54]                           dc.b $00
[000c3a55]                           dc.b $00
[000c3a56]                           dc.w $2000
[000c3a58] 000c308e                  dc.l TEXT_06
[000c3a5c]                           dc.b $00
[000c3a5d]                           dc.b $00
[000c3a5e]                           dc.b $00
[000c3a5f]                           dc.b $05
[000c3a60]                           dc.b $00
[000c3a61]                           dc.b $14
[000c3a62]                           dc.b $00
[000c3a63]                           dc.b $01
_14__PMENU:
[000c3a64]                           dc.b $00
[000c3a65]                           dc.b $0f
[000c3a66]                           dc.w $ffff
[000c3a68]                           dc.w $ffff
[000c3a6a]                           dc.b $00
[000c3a6b]                           dc.b $1c
[000c3a6c]                           dc.b $00
[000c3a6d]                           dc.b $00
[000c3a6e]                           dc.w $2000
[000c3a70] 000c308e                  dc.l TEXT_06
[000c3a74]                           dc.b $00
[000c3a75]                           dc.b $00
[000c3a76]                           dc.b $00
[000c3a77]                           dc.b $06
[000c3a78]                           dc.b $00
[000c3a79]                           dc.b $14
[000c3a7a]                           dc.b $00
[000c3a7b]                           dc.b $01
_15__PMENU:
[000c3a7c]                           dc.b $00
[000c3a7d]                           dc.b $07
[000c3a7e]                           dc.w $ffff
[000c3a80]                           dc.w $ffff
[000c3a82]                           dc.b $00
[000c3a83]                           dc.b $1c
[000c3a84]                           dc.b $00
[000c3a85]                           dc.b $00
[000c3a86]                           dc.w $2000
[000c3a88] 000c308e                  dc.l TEXT_06
[000c3a8c]                           dc.b $00
[000c3a8d]                           dc.b $00
[000c3a8e]                           dc.b $00
[000c3a8f]                           dc.b $07
[000c3a90]                           dc.b $00
[000c3a91]                           dc.b $14
[000c3a92]                           dc.b $00
[000c3a93]                           dc.b $01
_16__PMENU:
[000c3a94]                           dc.b $00
[000c3a95]                           dc.b $1d
[000c3a96]                           dc.b $00
[000c3a97]                           dc.b $11
[000c3a98]                           dc.b $00
[000c3a99]                           dc.b $1c
[000c3a9a]                           dc.b $00
[000c3a9b]                           dc.b $14
[000c3a9c]                           dc.b $00
[000c3a9d]                           dc.b $00
[000c3a9e]                           dc.b $00
[000c3a9f]                           dc.b $00
[000c3aa0]                           dc.b $00
[000c3aa1]                           dc.b $ff
[000c3aa2]                           dc.w $1101
[000c3aa4]                           dc.b $00
[000c3aa5]                           dc.b $08
[000c3aa6]                           dc.b $00
[000c3aa7]                           dc.b $00
[000c3aa8]                           dc.b $00
[000c3aa9]                           dc.b $15
[000c3aaa]                           dc.b $00
[000c3aab]                           dc.b $07
_17__PMENU:
[000c3aac]                           dc.b $00
[000c3aad]                           dc.b $13
[000c3aae]                           dc.w $ffff
[000c3ab0]                           dc.w $ffff
[000c3ab2]                           dc.b $00
[000c3ab3]                           dc.b $1c
[000c3ab4]                           dc.b $00
[000c3ab5]                           dc.b $00
[000c3ab6]                           dc.b $00
[000c3ab7]                           dc.b $08
[000c3ab8] 000c309f                  dc.l TEXT_08
[000c3abc]                           dc.b $00
[000c3abd]                           dc.b $00
[000c3abe]                           dc.b $00
[000c3abf]                           dc.b $00
[000c3ac0]                           dc.b $00
[000c3ac1]                           dc.b $15
[000c3ac2]                           dc.b $00
[000c3ac3]                           dc.b $01
_17a_PMENU:
[000c3ac4] 00039fd2                  dc.l Apd_new
[000c3ac8]                           dc.b $00
[000c3ac9]                           dc.b $00
[000c3aca]                           dc.b $00
[000c3acb]                           dc.b $00
[000c3acc]                           dc.w $8000
[000c3ace]                           dc.w $844e
[000c3ad0]                           dc.b $00
[000c3ad1]                           dc.b $00
[000c3ad2]                           dc.b $00
[000c3ad3]                           dc.b $00
[000c3ad4]                           dc.b $00
[000c3ad5]                           dc.b $00
[000c3ad6]                           dc.b $00
[000c3ad7]                           dc.b $00
[000c3ad8]                           dc.b $00
[000c3ad9]                           dc.b $00
[000c3ada]                           dc.b $00
[000c3adb]                           dc.b $00
_19__PMENU:
[000c3adc]                           dc.b $00
[000c3add]                           dc.b $15
[000c3ade]                           dc.w $ffff
[000c3ae0]                           dc.w $ffff
[000c3ae2]                           dc.b $00
[000c3ae3]                           dc.b $1c
[000c3ae4]                           dc.b $00
[000c3ae5]                           dc.b $00
[000c3ae6]                           dc.b $00
[000c3ae7]                           dc.b $00
[000c3ae8] 000c3064                  dc.l TEXT_04
[000c3aec]                           dc.b $00
[000c3aed]                           dc.b $00
[000c3aee]                           dc.b $00
[000c3aef]                           dc.b $01
[000c3af0]                           dc.b $00
[000c3af1]                           dc.b $15
[000c3af2]                           dc.b $00
[000c3af3]                           dc.b $01
_19a_PMENU:
[000c3af4] 00039fdc                  dc.l Apd_open
[000c3af8]                           dc.b $00
[000c3af9]                           dc.b $00
[000c3afa]                           dc.b $00
[000c3afb]                           dc.b $00
[000c3afc]                           dc.w $8000
[000c3afe]                           dc.w $844f
[000c3b00]                           dc.b $00
[000c3b01]                           dc.b $00
[000c3b02]                           dc.b $00
[000c3b03]                           dc.b $00
[000c3b04]                           dc.b $00
[000c3b05]                           dc.b $00
[000c3b06]                           dc.b $00
[000c3b07]                           dc.b $00
[000c3b08]                           dc.b $00
[000c3b09]                           dc.b $00
[000c3b0a]                           dc.b $00
[000c3b0b]                           dc.b $00
_21__PMENU:
[000c3b0c]                           dc.b $00
[000c3b0d]                           dc.b $17
[000c3b0e]                           dc.w $ffff
[000c3b10]                           dc.w $ffff
[000c3b12]                           dc.b $00
[000c3b13]                           dc.b $1c
[000c3b14]                           dc.b $00
[000c3b15]                           dc.b $00
[000c3b16]                           dc.b $00
[000c3b17]                           dc.b $00
[000c3b18] 000c3079                  dc.l TEXT_05
[000c3b1c]                           dc.b $00
[000c3b1d]                           dc.b $00
[000c3b1e]                           dc.b $00
[000c3b1f]                           dc.b $03
[000c3b20]                           dc.b $00
[000c3b21]                           dc.b $15
[000c3b22]                           dc.b $00
[000c3b23]                           dc.b $01
_21a_PMENU:
[000c3b24] 00039f14                  dc.l Apd_info
[000c3b28]                           dc.b $00
[000c3b29]                           dc.b $00
[000c3b2a]                           dc.b $00
[000c3b2b]                           dc.b $00
[000c3b2c]                           dc.w $8000
[000c3b2e]                           dc.w $8449
[000c3b30]                           dc.b $00
[000c3b31]                           dc.b $00
[000c3b32]                           dc.b $00
[000c3b33]                           dc.b $00
[000c3b34]                           dc.b $00
[000c3b35]                           dc.b $00
[000c3b36]                           dc.b $00
[000c3b37]                           dc.b $00
[000c3b38]                           dc.b $00
[000c3b39]                           dc.b $00
[000c3b3a]                           dc.b $00
[000c3b3b]                           dc.b $00
_23__PMENU:
[000c3b3c]                           dc.b $00
[000c3b3d]                           dc.b $19
[000c3b3e]                           dc.w $ffff
[000c3b40]                           dc.w $ffff
[000c3b42]                           dc.b $00
[000c3b43]                           dc.b $1c
[000c3b44]                           dc.b $00
[000c3b45]                           dc.b $00
[000c3b46]                           dc.b $00
[000c3b47]                           dc.b $00
[000c3b48] 000c304f                  dc.l TEXT_02
[000c3b4c]                           dc.b $00
[000c3b4d]                           dc.b $00
[000c3b4e]                           dc.b $00
[000c3b4f]                           dc.b $04
[000c3b50]                           dc.b $00
[000c3b51]                           dc.b $15
[000c3b52]                           dc.b $00
[000c3b53]                           dc.b $01
_23a_PMENU:
[000c3b54] 00039fc0                  dc.l Apd_module
[000c3b58]                           dc.b $00
[000c3b59]                           dc.b $00
[000c3b5a]                           dc.b $00
[000c3b5b]                           dc.b $00
[000c3b5c]                           dc.w $8000
[000c3b5e]                           dc.w $844d
[000c3b60]                           dc.b $00
[000c3b61]                           dc.b $00
[000c3b62]                           dc.b $00
[000c3b63]                           dc.b $00
[000c3b64]                           dc.b $00
[000c3b65]                           dc.b $00
[000c3b66]                           dc.b $00
[000c3b67]                           dc.b $00
[000c3b68]                           dc.b $00
[000c3b69]                           dc.b $00
[000c3b6a]                           dc.b $00
[000c3b6b]                           dc.b $00
_25__PMENU:
[000c3b6c]                           dc.b $00
[000c3b6d]                           dc.b $1b
[000c3b6e]                           dc.w $ffff
[000c3b70]                           dc.w $ffff
[000c3b72]                           dc.b $00
[000c3b73]                           dc.b $1c
[000c3b74]                           dc.b $00
[000c3b75]                           dc.b $00
[000c3b76]                           dc.b $00
[000c3b77]                           dc.b $00
[000c3b78] 000c30d1                  dc.l TEXT_13
[000c3b7c]                           dc.b $00
[000c3b7d]                           dc.b $00
[000c3b7e]                           dc.b $00
[000c3b7f]                           dc.b $06
[000c3b80]                           dc.b $00
[000c3b81]                           dc.b $15
[000c3b82]                           dc.b $00
[000c3b83]                           dc.b $01
_25a_PMENU:
[000c3b84] 0003a018                  dc.l Apd_quit
[000c3b88]                           dc.b $00
[000c3b89]                           dc.b $00
[000c3b8a]                           dc.b $00
[000c3b8b]                           dc.b $00
[000c3b8c]                           dc.w $8000
[000c3b8e]                           dc.w $8451
[000c3b90]                           dc.b $00
[000c3b91]                           dc.b $00
[000c3b92]                           dc.b $00
[000c3b93]                           dc.b $00
[000c3b94]                           dc.b $00
[000c3b95]                           dc.b $00
[000c3b96]                           dc.b $00
[000c3b97]                           dc.b $00
[000c3b98]                           dc.b $00
[000c3b99]                           dc.b $00
[000c3b9a]                           dc.b $00
[000c3b9b]                           dc.b $00
_27__PMENU:
[000c3b9c]                           dc.b $00
[000c3b9d]                           dc.b $1c
[000c3b9e]                           dc.w $ffff
[000c3ba0]                           dc.w $ffff
[000c3ba2]                           dc.b $00
[000c3ba3]                           dc.b $18
[000c3ba4]                           dc.b $00
[000c3ba5]                           dc.b $00
[000c3ba6]                           dc.w $0108
[000c3ba8] 000c33d8                  dc.l A_ARROWS01
[000c3bac]                           dc.b $00
[000c3bad]                           dc.b $00
[000c3bae]                           dc.b $00
[000c3baf]                           dc.b $02
[000c3bb0]                           dc.b $00
[000c3bb1]                           dc.b $15
[000c3bb2]                           dc.b $00
[000c3bb3]                           dc.b $01
_28__PMENU:
[000c3bb4]                           dc.b $00
[000c3bb5]                           dc.b $10
[000c3bb6]                           dc.w $ffff
[000c3bb8]                           dc.w $ffff
[000c3bba]                           dc.b $00
[000c3bbb]                           dc.b $18
[000c3bbc]                           dc.b $00
[000c3bbd]                           dc.b $00
[000c3bbe]                           dc.w $0108
[000c3bc0] 000c33d8                  dc.l A_ARROWS01
[000c3bc4]                           dc.b $00
[000c3bc5]                           dc.b $00
[000c3bc6]                           dc.b $00
[000c3bc7]                           dc.b $05
[000c3bc8]                           dc.b $00
[000c3bc9]                           dc.b $15
[000c3bca]                           dc.b $00
[000c3bcb]                           dc.b $01
_29__PMENU:
[000c3bcc]                           dc.b $00
[000c3bcd]                           dc.b $06
[000c3bce]                           dc.b $00
[000c3bcf]                           dc.b $1e
[000c3bd0]                           dc.b $00
[000c3bd1]                           dc.b $24
[000c3bd2]                           dc.b $00
[000c3bd3]                           dc.b $14
[000c3bd4]                           dc.b $00
[000c3bd5]                           dc.b $00
[000c3bd6]                           dc.b $00
[000c3bd7]                           dc.b $00
[000c3bd8]                           dc.b $00
[000c3bd9]                           dc.b $ff
[000c3bda]                           dc.w $1101
[000c3bdc]                           dc.b $00
[000c3bdd]                           dc.b $0f
[000c3bde]                           dc.b $00
[000c3bdf]                           dc.b $00
[000c3be0]                           dc.b $00
[000c3be1]                           dc.b $10
[000c3be2]                           dc.b $00
[000c3be3]                           dc.b $04
_30__PMENU:
[000c3be4]                           dc.b $00
[000c3be5]                           dc.b $20
[000c3be6]                           dc.w $ffff
[000c3be8]                           dc.w $ffff
[000c3bea]                           dc.b $00
[000c3beb]                           dc.b $1c
[000c3bec]                           dc.b $00
[000c3bed]                           dc.b $00
[000c3bee]                           dc.b $00
[000c3bef]                           dc.b $00
[000c3bf0] 000c30e7                  dc.l TEXT_14
[000c3bf4]                           dc.b $00
[000c3bf5]                           dc.b $00
[000c3bf6]                           dc.b $00
[000c3bf7]                           dc.b $00
[000c3bf8]                           dc.b $00
[000c3bf9]                           dc.b $10
[000c3bfa]                           dc.b $00
[000c3bfb]                           dc.b $01
_30a_PMENU:
[000c3bfc] 00039e02                  dc.l Apd_close
[000c3c00]                           dc.b $00
[000c3c01]                           dc.b $00
[000c3c02]                           dc.b $00
[000c3c03]                           dc.b $00
[000c3c04]                           dc.w $8000
[000c3c06]                           dc.w $8455
[000c3c08]                           dc.b $00
[000c3c09]                           dc.b $00
[000c3c0a]                           dc.b $00
[000c3c0b]                           dc.b $00
[000c3c0c]                           dc.b $00
[000c3c0d]                           dc.b $00
[000c3c0e]                           dc.b $00
[000c3c0f]                           dc.b $00
[000c3c10]                           dc.b $00
[000c3c11]                           dc.b $00
[000c3c12]                           dc.b $00
[000c3c13]                           dc.b $00
_32__PMENU:
[000c3c14]                           dc.b $00
[000c3c15]                           dc.b $22
[000c3c16]                           dc.w $ffff
[000c3c18]                           dc.w $ffff
[000c3c1a]                           dc.b $00
[000c3c1b]                           dc.b $1c
[000c3c1c]                           dc.b $00
[000c3c1d]                           dc.b $00
[000c3c1e]                           dc.b $00
[000c3c1f]                           dc.b $00
[000c3c20] 000c3101                  dc.l TEXT_17
[000c3c24]                           dc.b $00
[000c3c25]                           dc.b $00
[000c3c26]                           dc.b $00
[000c3c27]                           dc.b $01
[000c3c28]                           dc.b $00
[000c3c29]                           dc.b $10
[000c3c2a]                           dc.b $00
[000c3c2b]                           dc.b $01
_32a_PMENU:
[000c3c2c] 00039e9e                  dc.l Apd_delete
[000c3c30]                           dc.b $00
[000c3c31]                           dc.b $00
[000c3c32]                           dc.b $00
[000c3c33]                           dc.b $00
[000c3c34]                           dc.w $8000
[000c3c36]                           dc.w $8444
[000c3c38]                           dc.b $00
[000c3c39]                           dc.b $00
[000c3c3a]                           dc.b $00
[000c3c3b]                           dc.b $00
[000c3c3c]                           dc.b $00
[000c3c3d]                           dc.b $00
[000c3c3e]                           dc.b $00
[000c3c3f]                           dc.b $00
[000c3c40]                           dc.b $00
[000c3c41]                           dc.b $00
[000c3c42]                           dc.b $00
[000c3c43]                           dc.b $00
_34__PMENU:
[000c3c44]                           dc.b $00
[000c3c45]                           dc.b $24
[000c3c46]                           dc.w $ffff
[000c3c48]                           dc.w $ffff
[000c3c4a]                           dc.b $00
[000c3c4b]                           dc.b $1c
[000c3c4c]                           dc.b $00
[000c3c4d]                           dc.b $00
[000c3c4e]                           dc.b $00
[000c3c4f]                           dc.b $00
[000c3c50] 000c3111                  dc.l TEXT_18
[000c3c54]                           dc.b $00
[000c3c55]                           dc.b $00
[000c3c56]                           dc.b $00
[000c3c57]                           dc.b $03
[000c3c58]                           dc.b $00
[000c3c59]                           dc.b $10
[000c3c5a]                           dc.b $00
[000c3c5b]                           dc.b $01
_34a_PMENU:
[000c3c5c] 00039f52                  dc.l Apd_list
[000c3c60]                           dc.b $00
[000c3c61]                           dc.b $00
[000c3c62]                           dc.b $00
[000c3c63]                           dc.b $00
[000c3c64]                           dc.w $8000
[000c3c66]                           dc.w $8457
[000c3c68]                           dc.b $00
[000c3c69]                           dc.b $00
[000c3c6a]                           dc.b $00
[000c3c6b]                           dc.b $00
[000c3c6c]                           dc.b $00
[000c3c6d]                           dc.b $00
[000c3c6e]                           dc.b $00
[000c3c6f]                           dc.b $00
[000c3c70]                           dc.b $00
[000c3c71]                           dc.b $00
[000c3c72]                           dc.b $00
[000c3c73]                           dc.b $00
_36__PMENU:
[000c3c74]                           dc.b $00
[000c3c75]                           dc.b $1d
[000c3c76]                           dc.w $ffff
[000c3c78]                           dc.w $ffff
[000c3c7a]                           dc.b $00
[000c3c7b]                           dc.b $18
[000c3c7c]                           dc.b $00
[000c3c7d]                           dc.b $20
[000c3c7e]                           dc.w $0108
[000c3c80] 000c33d8                  dc.l A_ARROWS01
[000c3c84]                           dc.b $00
[000c3c85]                           dc.b $00
[000c3c86]                           dc.b $00
[000c3c87]                           dc.b $02
[000c3c88]                           dc.b $00
[000c3c89]                           dc.b $10
[000c3c8a]                           dc.b $00
[000c3c8b]                           dc.b $01
PUR_BACK:
[000c3c8c]                           dc.w $ffff
[000c3c8e]                           dc.w $ffff
[000c3c90]                           dc.w $ffff
[000c3c92]                           dc.b $00
[000c3c93]                           dc.b $14
[000c3c94]                           dc.b $00
[000c3c95]                           dc.b $60
[000c3c96]                           dc.b $00
[000c3c97]                           dc.b $00
[000c3c98]                           dc.b $00
[000c3c99]                           dc.b $00
[000c3c9a]                           dc.w $4144
[000c3c9c]                           dc.b $00
[000c3c9d]                           dc.b $00
[000c3c9e]                           dc.b $00
[000c3c9f]                           dc.b $00
[000c3ca0]                           dc.b $00
[000c3ca1]                           dc.b $20
[000c3ca2]                           dc.b $00
[000c3ca3]                           dc.b $0c
PUR_ICONS:
[000c3ca4]                           dc.w $ffff
[000c3ca6]                           dc.b $00
[000c3ca7]                           dc.b $01
[000c3ca8]                           dc.b $00
[000c3ca9]                           dc.b $01
[000c3caa]                           dc.b $00
[000c3cab]                           dc.b $14
[000c3cac]                           dc.b $00
[000c3cad]                           dc.b $00
[000c3cae]                           dc.b $00
[000c3caf]                           dc.b $00
[000c3cb0]                           dc.b $00
[000c3cb1]                           dc.b $00
[000c3cb2]                           dc.w $1100
[000c3cb4]                           dc.b $00
[000c3cb5]                           dc.b $00
[000c3cb6]                           dc.b $00
[000c3cb7]                           dc.b $00
[000c3cb8]                           dc.b $00
[000c3cb9]                           dc.b $14
[000c3cba]                           dc.b $00
[000c3cbb]                           dc.b $06
_01_PUR_ICONS:
[000c3cbc]                           dc.b $00
[000c3cbd]                           dc.b $00
[000c3cbe]                           dc.w $ffff
[000c3cc0]                           dc.w $ffff
[000c3cc2]                           dc.b $00
[000c3cc3]                           dc.b $1f
[000c3cc4]                           dc.w $3005
[000c3cc6]                           dc.b $00
[000c3cc7]                           dc.b $00
[000c3cc8] 000c3860                  dc.l I_WIN
[000c3ccc]                           dc.b $00
[000c3ccd]                           dc.b $01
[000c3cce]                           dc.b $00
[000c3ccf]                           dc.b $01
[000c3cd0]                           dc.b $00
[000c3cd1]                           dc.b $09
[000c3cd2]                           dc.b $00
[000c3cd3]                           dc.b $03
_01aPUR_ICONS:
[000c3cd4]                           dc.b $00
[000c3cd5]                           dc.b $00
[000c3cd6]                           dc.b $00
[000c3cd7]                           dc.b $00
[000c3cd8]                           dc.b $00
[000c3cd9]                           dc.b $00
[000c3cda]                           dc.b $00
[000c3cdb]                           dc.b $00
[000c3cdc]                           dc.w $8020
[000c3cde]                           dc.b $00
[000c3cdf]                           dc.b $00
[000c3ce0]                           dc.b $00
[000c3ce1]                           dc.b $00
[000c3ce2]                           dc.b $00
[000c3ce3]                           dc.b $00
[000c3ce4]                           dc.b $00
[000c3ce5]                           dc.b $00
[000c3ce6]                           dc.b $00
[000c3ce7]                           dc.b $00
[000c3ce8]                           dc.b $00
[000c3ce9]                           dc.b $00
[000c3cea]                           dc.b $00
[000c3ceb]                           dc.b $01
PUR_TOOL:
[000c3cec]                           dc.w $ffff
[000c3cee]                           dc.b $00
[000c3cef]                           dc.b $01
[000c3cf0]                           dc.b $00
[000c3cf1]                           dc.b $07
[000c3cf2]                           dc.b $00
[000c3cf3]                           dc.b $18
[000c3cf4]                           dc.b $00
[000c3cf5]                           dc.b $40
[000c3cf6]                           dc.b $00
[000c3cf7]                           dc.b $00
[000c3cf8] 000c3378                  dc.l A_3DBUTTON02
[000c3cfc]                           dc.b $00
[000c3cfd]                           dc.b $00
[000c3cfe]                           dc.b $00
[000c3cff]                           dc.b $00
[000c3d00]                           dc.w $6000
[000c3d02]                           dc.w $2000
_01_PUR_TOOL:
[000c3d04]                           dc.b $00
[000c3d05]                           dc.b $04
[000c3d06]                           dc.b $00
[000c3d07]                           dc.b $02
[000c3d08]                           dc.b $00
[000c3d09]                           dc.b $02
[000c3d0a]                           dc.b $00
[000c3d0b]                           dc.b $1f
[000c3d0c]                           dc.b $00
[000c3d0d]                           dc.b $00
[000c3d0e]                           dc.b $00
[000c3d0f]                           dc.b $00
[000c3d10] 000c3744                  dc.l I_OPEN
[000c3d14]                           dc.b $00
[000c3d15]                           dc.b $00
[000c3d16]                           dc.b $00
[000c3d17]                           dc.b $00
[000c3d18]                           dc.w $2000
[000c3d1a]                           dc.w $2000
_02_PUR_TOOL:
[000c3d1c]                           dc.b $00
[000c3d1d]                           dc.b $01
[000c3d1e]                           dc.w $ffff
[000c3d20]                           dc.w $ffff
[000c3d22]                           dc.b $00
[000c3d23]                           dc.b $18
[000c3d24]                           dc.b $00
[000c3d25]                           dc.b $05
[000c3d26]                           dc.b $00
[000c3d27]                           dc.b $00
[000c3d28] 000c3358                  dc.l A_3DBUTTON01
[000c3d2c]                           dc.b $00
[000c3d2d]                           dc.b $00
[000c3d2e]                           dc.b $00
[000c3d2f]                           dc.b $00
[000c3d30]                           dc.w $2000
[000c3d32]                           dc.w $2000
_02aPUR_TOOL:
[000c3d34] 0003a56c                  dc.l mod_load
[000c3d38]                           dc.b $00
[000c3d39]                           dc.b $00
[000c3d3a]                           dc.b $00
[000c3d3b]                           dc.b $00
[000c3d3c]                           dc.w $8000
[000c3d3e]                           dc.b $00
[000c3d3f]                           dc.b $00
[000c3d40]                           dc.b $00
[000c3d41]                           dc.b $00
[000c3d42]                           dc.b $00
[000c3d43]                           dc.b $00
[000c3d44]                           dc.b $00
[000c3d45]                           dc.b $00
[000c3d46]                           dc.b $00
[000c3d47]                           dc.b $00
[000c3d48]                           dc.b $00
[000c3d49]                           dc.b $00
[000c3d4a]                           dc.b $00
[000c3d4b]                           dc.b $00
_04_PUR_TOOL:
[000c3d4c]                           dc.b $00
[000c3d4d]                           dc.b $07
[000c3d4e]                           dc.b $00
[000c3d4f]                           dc.b $05
[000c3d50]                           dc.b $00
[000c3d51]                           dc.b $05
[000c3d52]                           dc.b $00
[000c3d53]                           dc.b $1f
[000c3d54]                           dc.b $00
[000c3d55]                           dc.b $00
[000c3d56]                           dc.b $00
[000c3d57]                           dc.b $00
[000c3d58] 000c361e                  dc.l I_INFO
[000c3d5c]                           dc.b $00
[000c3d5d]                           dc.b $04
[000c3d5e]                           dc.b $00
[000c3d5f]                           dc.b $00
[000c3d60]                           dc.w $2000
[000c3d62]                           dc.w $2000
_05_PUR_TOOL:
[000c3d64]                           dc.b $00
[000c3d65]                           dc.b $04
[000c3d66]                           dc.w $ffff
[000c3d68]                           dc.w $ffff
[000c3d6a]                           dc.b $00
[000c3d6b]                           dc.b $18
[000c3d6c]                           dc.w $1005
[000c3d6e]                           dc.b $00
[000c3d6f]                           dc.b $00
[000c3d70] 000c3398                  dc.l A_3DBUTTON03
[000c3d74]                           dc.b $00
[000c3d75]                           dc.b $00
[000c3d76]                           dc.b $00
[000c3d77]                           dc.b $00
[000c3d78]                           dc.w $2000
[000c3d7a]                           dc.w $2000
_05aPUR_TOOL:
[000c3d7c] 0003a502                  dc.l mod_info
[000c3d80] 0003a526                  dc.l mod_infodrag
[000c3d84]                           dc.w $8000
[000c3d86]                           dc.b $00
[000c3d87]                           dc.b $00
[000c3d88]                           dc.b $00
[000c3d89]                           dc.b $00
[000c3d8a]                           dc.b $00
[000c3d8b]                           dc.b $00
[000c3d8c]                           dc.b $00
[000c3d8d]                           dc.b $00
[000c3d8e]                           dc.b $00
[000c3d8f]                           dc.b $00
[000c3d90]                           dc.b $00
[000c3d91]                           dc.b $00
[000c3d92]                           dc.b $00
[000c3d93]                           dc.b $00
_07_PUR_TOOL:
[000c3d94]                           dc.b $00
[000c3d95]                           dc.b $00
[000c3d96]                           dc.b $00
[000c3d97]                           dc.b $08
[000c3d98]                           dc.b $00
[000c3d99]                           dc.b $08
[000c3d9a]                           dc.b $00
[000c3d9b]                           dc.b $1f
[000c3d9c]                           dc.b $00
[000c3d9d]                           dc.b $00
[000c3d9e]                           dc.b $00
[000c3d9f]                           dc.b $00
[000c3da0] 000c34f8                  dc.l I_DEL
[000c3da4]                           dc.b $00
[000c3da5]                           dc.b $08
[000c3da6]                           dc.b $00
[000c3da7]                           dc.b $00
[000c3da8]                           dc.w $2000
[000c3daa]                           dc.w $2000
_08_PUR_TOOL:
[000c3dac]                           dc.b $00
[000c3dad]                           dc.b $07
[000c3dae]                           dc.w $ffff
[000c3db0]                           dc.w $ffff
[000c3db2]                           dc.b $00
[000c3db3]                           dc.b $18
[000c3db4]                           dc.w $1005
[000c3db6]                           dc.b $00
[000c3db7]                           dc.b $00
[000c3db8] 000c33b8                  dc.l A_3DBUTTON04
[000c3dbc]                           dc.b $00
[000c3dbd]                           dc.b $00
[000c3dbe]                           dc.b $00
[000c3dbf]                           dc.b $00
[000c3dc0]                           dc.w $2000
[000c3dc2]                           dc.w $2000
_08aPUR_TOOL:
[000c3dc4] 0003a4de                  dc.l mod_delete
[000c3dc8] 0003a4ba                  dc.l mod_deldrag
[000c3dcc]                           dc.w $8020
[000c3dce]                           dc.b $00
[000c3dcf]                           dc.b $00
[000c3dd0]                           dc.b $00
[000c3dd1]                           dc.b $00
[000c3dd2]                           dc.b $00
[000c3dd3]                           dc.b $00
[000c3dd4]                           dc.b $00
[000c3dd5]                           dc.b $00
[000c3dd6]                           dc.b $00
[000c3dd7]                           dc.b $00
[000c3dd8]                           dc.b $00
[000c3dd9]                           dc.b $00
[000c3dda]                           dc.b $00
[000c3ddb]                           dc.b $00
PUR_DESK:
[000c3ddc]                           dc.b $00
[000c3ddd]                           dc.b $00
[000c3dde]                           dc.b $00
[000c3ddf]                           dc.b $00
[000c3de0] 0003ada8                  dc.l pd_serv
[000c3de4] 0003ac1c                  dc.l pd_make
[000c3de8] 0004f69e                  dc.l Awi_open
[000c3dec] 0004e610                  dc.l Awi_init
[000c3df0]                           dc.b $00
[000c3df1]                           dc.b $00
[000c3df2]                           dc.b $00
[000c3df3]                           dc.b $00
[000c3df4]                           dc.b $00
[000c3df5]                           dc.b $00
[000c3df6]                           dc.b $00
[000c3df7]                           dc.b $00
[000c3df8]                           dc.b $00
[000c3df9]                           dc.b $00
[000c3dfa]                           dc.b $00
[000c3dfb]                           dc.b $00
[000c3dfc]                           dc.w $ffff
[000c3dfe]                           dc.b $00
[000c3dff]                           dc.b $0b
[000c3e00]                           dc.b $00
[000c3e01]                           dc.b $00
[000c3e02]                           dc.b $00
[000c3e03]                           dc.b $00
[000c3e04]                           dc.b $00
[000c3e05]                           dc.b $78
[000c3e06]                           dc.b $00
[000c3e07]                           dc.b $32
[000c3e08]                           dc.b $00
[000c3e09]                           dc.b $00
[000c3e0a]                           dc.b $00
[000c3e0b]                           dc.b $00
[000c3e0c]                           dc.b $00
[000c3e0d]                           dc.b $00
[000c3e0e]                           dc.b $00
[000c3e0f]                           dc.b $00
[000c3e10]                           dc.b $00
[000c3e11]                           dc.b $00
[000c3e12]                           dc.b $00
[000c3e13]                           dc.b $00
[000c3e14]                           dc.b $00
[000c3e15]                           dc.b $00
[000c3e16]                           dc.b $00
[000c3e17]                           dc.b $00
[000c3e18]                           dc.w $ffff
[000c3e1a]                           dc.w $ffff
[000c3e1c]                           dc.w $ffff
[000c3e1e]                           dc.w $ffff
[000c3e20]                           dc.b $00
[000c3e21]                           dc.b $00
[000c3e22]                           dc.b $00
[000c3e23]                           dc.b $00
[000c3e24]                           dc.w $f8f8
[000c3e26] 000c3013                  dc.l NAME_PUR_DESK
[000c3e2a] 000c308e                  dc.l TEXT_06
[000c3e2e]                           dc.w $2710
[000c3e30]                           dc.b $00
[000c3e31]                           dc.b $00
[000c3e32]                           dc.b $00
[000c3e33]                           dc.b $00
[000c3e34]                           dc.w $ffff
[000c3e36]                           dc.b $00
[000c3e37]                           dc.b $00
[000c3e38]                           dc.b $00
[000c3e39]                           dc.b $00
[000c3e3a] 000c3914                  dc.l _PMENU
[000c3e3e] 0005ef2c                  dc.l Awi_keys
[000c3e42] 0004b600                  dc.l Awi_obchange
[000c3e46] 0004b8cc                  dc.l Awi_redraw
[000c3e4a] 00050454                  dc.l Awi_topped
[000c3e4e] 0005013e                  dc.l Awi_closed
[000c3e52] 00050496                  dc.l Awi_fulled
[000c3e56] 0004bcc8                  dc.l Awi_arrowed
[000c3e5a] 0004beea                  dc.l Awi_hslid
[000c3e5e] 0004bf56                  dc.l Awi_vslid
[000c3e62] 000506ca                  dc.l Awi_sized
[000c3e66] 000507bc                  dc.l Awi_moved
[000c3e6a] 00050f9c                  dc.l Awi_iconify
[000c3e6e] 0005117c                  dc.l Awi_uniconify
[000c3e72] 0003b22a                  dc.l purGEMScript
[000c3e76] 000c3039                  dc.l STGUIDE_02
[000c3e7a] 000c2ff6                  dc.l HELPFILE_02
PUR_MODULE:
[000c3e7e]                           dc.b $00
[000c3e7f]                           dc.b $00
[000c3e80]                           dc.b $00
[000c3e81]                           dc.b $00
[000c3e82] 0003a842                  dc.l modul_serv
[000c3e86] 0003a604                  dc.l modul_make
[000c3e8a] 0004f69e                  dc.l Awi_open
[000c3e8e] 0004e610                  dc.l Awi_init
[000c3e92]                           dc.b $00
[000c3e93]                           dc.b $00
[000c3e94]                           dc.b $00
[000c3e95]                           dc.b $00
[000c3e96] 000c3cec                  dc.l PUR_TOOL
[000c3e9a]                           dc.b $00
[000c3e9b]                           dc.b $00
[000c3e9c]                           dc.b $00
[000c3e9d]                           dc.b $00
[000c3e9e]                           dc.w $ffff
[000c3ea0]                           dc.w $61ef
[000c3ea2]                           dc.b $00
[000c3ea3]                           dc.b $00
[000c3ea4]                           dc.b $00
[000c3ea5]                           dc.b $00
[000c3ea6]                           dc.b $00
[000c3ea7]                           dc.b $0c
[000c3ea8]                           dc.b $00
[000c3ea9]                           dc.b $04
[000c3eaa]                           dc.b $00
[000c3eab]                           dc.b $00
[000c3eac]                           dc.b $00
[000c3ead]                           dc.b $00
[000c3eae]                           dc.b $00
[000c3eaf]                           dc.b $00
[000c3eb0]                           dc.b $00
[000c3eb1]                           dc.b $00
[000c3eb2]                           dc.b $00
[000c3eb3]                           dc.b $00
[000c3eb4]                           dc.b $00
[000c3eb5]                           dc.b $00
[000c3eb6]                           dc.b $00
[000c3eb7]                           dc.b $00
[000c3eb8]                           dc.b $00
[000c3eb9]                           dc.b $00
[000c3eba]                           dc.w $ffff
[000c3ebc]                           dc.w $ffff
[000c3ebe]                           dc.w $ffff
[000c3ec0]                           dc.w $ffff
[000c3ec2]                           dc.b $00
[000c3ec3]                           dc.b $00
[000c3ec4]                           dc.b $00
[000c3ec5]                           dc.b $00
[000c3ec6]                           dc.w $f8f8
[000c3ec8] 000c300a                  dc.l NAME_MODULE
[000c3ecc] 000c308e                  dc.l TEXT_06
[000c3ed0]                           dc.w $2710
[000c3ed2]                           dc.w $0118
[000c3ed4]                           dc.b $00
[000c3ed5]                           dc.b $00
[000c3ed6]                           dc.w $ffff
[000c3ed8]                           dc.b $00
[000c3ed9]                           dc.b $00
[000c3eda]                           dc.b $00
[000c3edb]                           dc.b $00
[000c3edc]                           dc.b $00
[000c3edd]                           dc.b $00
[000c3ede]                           dc.b $00
[000c3edf]                           dc.b $00
[000c3ee0] 0005ef2c                  dc.l Awi_keys
[000c3ee4] 0004b600                  dc.l Awi_obchange
[000c3ee8] 0004b8cc                  dc.l Awi_redraw
[000c3eec] 00050454                  dc.l Awi_topped
[000c3ef0] 0003a5d2                  dc.l modul_close
[000c3ef4] 00050496                  dc.l Awi_fulled
[000c3ef8] 0004bcc8                  dc.l Awi_arrowed
[000c3efc] 0004beea                  dc.l Awi_hslid
[000c3f00] 0004bf56                  dc.l Awi_vslid
[000c3f04] 000506ca                  dc.l Awi_sized
[000c3f08] 000507bc                  dc.l Awi_moved
[000c3f0c] 00050f9c                  dc.l Awi_iconify
[000c3f10] 0005117c                  dc.l Awi_uniconify
[000c3f14] 00052328                  dc.l Awi_gemscript
[000c3f18] 000c3023                  dc.l STGUIDE_01
[000c3f1c] 000c2fef                  dc.l HELPFILE_01
[000c3f20]                           dc.b $00
[000c3f21]                           dc.b $00
[000c3f22]                           dc.b $00
[000c3f23]                           dc.b $00
[000c3f24]                           dc.b $00
[000c3f25]                           dc.b $00
[000c3f26]                           dc.b $00
[000c3f27]                           dc.b $00
[000c3f28]                           dc.b $00
[000c3f29]                           dc.b $00
[000c3f2a]                           dc.b $00
[000c3f2b]                           dc.b $00
[000c3f2c]                           dc.b $00
[000c3f2d]                           dc.b $00
[000c3f2e]                           dc.b $00
[000c3f2f]                           dc.b $00
[000c3f30]                           dc.b $00
[000c3f31]                           dc.b $00
[000c3f32]                           dc.b $00
[000c3f33]                           dc.b $00
[000c3f34]                           dc.b $00
[000c3f35]                           dc.b $00
[000c3f36]                           dc.b $00
[000c3f37]                           dc.b $00
[000c3f38]                           dc.b $00
[000c3f39]                           dc.b $00
[000c3f3a]                           dc.b $00
[000c3f3b]                           dc.b $00
[000c3f3c]                           dc.b $00
[000c3f3d]                           dc.b $00
[000c3f3e]                           dc.b $00
[000c3f3f]                           dc.b $00
[000c3f40]                           dc.b $00
[000c3f41]                           dc.b $00
[000c3f42]                           dc.b $00
[000c3f43]                           dc.b $00
[000c3f44]                           dc.b $00
[000c3f45]                           dc.b $00
[000c3f46]                           dc.b $00
[000c3f47]                           dc.b $00
[000c3f48]                           dc.b $00
[000c3f49]                           dc.b $00
[000c3f4a]                           dc.b $00
[000c3f4b]                           dc.b $00
[000c3f4c]                           dc.b $00
[000c3f4d]                           dc.b $00
[000c3f4e]                           dc.b $00
[000c3f4f]                           dc.b $00
[000c3f50]                           dc.b $00
[000c3f51]                           dc.b $00
[000c3f52]                           dc.b $00
[000c3f53]                           dc.b $00
[000c3f54]                           dc.b $00
[000c3f55]                           dc.b $00
[000c3f56]                           dc.b $00
[000c3f57]                           dc.b $00
[000c3f58]                           dc.b $00
[000c3f59]                           dc.b $00
[000c3f5a]                           dc.b $00
[000c3f5b]                           dc.b $00
[000c3f5c]                           dc.b $00
[000c3f5d]                           dc.b $00
[000c3f5e]                           dc.b $00
[000c3f5f]                           dc.b $00
[000c3f60]                           dc.b $00
[000c3f61]                           dc.b $00
[000c3f62]                           dc.b $00
[000c3f63]                           dc.b $00
[000c3f64]                           dc.b $00
[000c3f65]                           dc.b $00
[000c3f66]                           dc.b $00
[000c3f67]                           dc.b $00
[000c3f68]                           dc.b $00
[000c3f69]                           dc.b $00
[000c3f6a]                           dc.b $00
[000c3f6b]                           dc.b $00
[000c3f6c]                           dc.b $00
[000c3f6d]                           dc.b $00
[000c3f6e]                           dc.b $00
[000c3f6f]                           dc.b $00
[000c3f70]                           dc.b $00
[000c3f71]                           dc.b $00
[000c3f72]                           dc.b $00
[000c3f73]                           dc.b $00
[000c3f74]                           dc.b $00
[000c3f75]                           dc.b $00
[000c3f76]                           dc.b $00
[000c3f77]                           dc.b $00
[000c3f78]                           dc.b $00
[000c3f79]                           dc.b $00
[000c3f7a]                           dc.b $00
[000c3f7b]                           dc.b $00
[000c3f7c]                           dc.b $00
[000c3f7d]                           dc.b $00
[000c3f7e]                           dc.b $00
[000c3f7f]                           dc.b $00
[000c3f80]                           dc.b $00
[000c3f81]                           dc.b $00
[000c3f82]                           dc.b $00
[000c3f83]                           dc.b $00
[000c3f84]                           dc.b $00
[000c3f85]                           dc.b $00
[000c3f86]                           dc.b $00
[000c3f87]                           dc.b $00
[000c3f88]                           dc.b $00
[000c3f89]                           dc.b $00
[000c3f8a]                           dc.b $00
[000c3f8b]                           dc.b $00
[000c3f8c]                           dc.b $00
[000c3f8d]                           dc.b $00
[000c3f8e]                           dc.b $00
[000c3f8f]                           dc.b $00
[000c3f90]                           dc.b $00
[000c3f91]                           dc.b $00
[000c3f92]                           dc.b $00
[000c3f93]                           dc.b $00
[000c3f94]                           dc.b $00
[000c3f95]                           dc.b $00
[000c3f96]                           dc.b $00
[000c3f97]                           dc.b $00
[000c3f98]                           dc.b $00
[000c3f99]                           dc.b $00
[000c3f9a]                           dc.b $00
[000c3f9b]                           dc.b $00
[000c3f9c]                           dc.b $00
[000c3f9d]                           dc.b $00
[000c3f9e]                           dc.b $00
[000c3f9f]                           dc.b $00
[000c3fa0]                           dc.b $00
[000c3fa1]                           dc.b $00
[000c3fa2]                           dc.b $00
[000c3fa3]                           dc.b $00
[000c3fa4]                           dc.b $00
[000c3fa5]                           dc.b $00
[000c3fa6]                           dc.b $00
[000c3fa7]                           dc.b $00
[000c3fa8]                           dc.b $00
[000c3fa9]                           dc.b $00
[000c3faa]                           dc.b $00
[000c3fab]                           dc.b $00
[000c3fac]                           dc.b $00
[000c3fad]                           dc.b $00
[000c3fae]                           dc.b $00
[000c3faf]                           dc.b $00
[000c3fb0]                           dc.b $00
[000c3fb1]                           dc.b $00
[000c3fb2]                           dc.b $00
[000c3fb3]                           dc.b $00
[000c3fb4]                           dc.b $00
[000c3fb5]                           dc.b $00
[000c3fb6]                           dc.b $00
[000c3fb7]                           dc.b $00
[000c3fb8]                           dc.b $00
[000c3fb9]                           dc.b $00
[000c3fba]                           dc.b $00
[000c3fbb]                           dc.b $00
[000c3fbc]                           dc.b $00
[000c3fbd]                           dc.b $00
[000c3fbe]                           dc.b $00
[000c3fbf]                           dc.b $00
[000c3fc0]                           dc.b $00
[000c3fc1]                           dc.b $00
[000c3fc2]                           dc.b $00
[000c3fc3]                           dc.b $00
[000c3fc4]                           dc.b $00
[000c3fc5]                           dc.b $00
[000c3fc6]                           dc.b $00
[000c3fc7]                           dc.b $00
[000c3fc8]                           dc.b $00
[000c3fc9]                           dc.b $00
[000c3fca]                           dc.b $00
[000c3fcb]                           dc.b $00
[000c3fcc]                           dc.b $00
[000c3fcd]                           dc.b $00
[000c3fce]                           dc.b $00
[000c3fcf]                           dc.b $00
[000c3fd0]                           dc.b $00
[000c3fd1]                           dc.b $00
[000c3fd2]                           dc.b $00
[000c3fd3]                           dc.b $00
[000c3fd4]                           dc.b $00
[000c3fd5]                           dc.b $00
[000c3fd6]                           dc.b $00
[000c3fd7]                           dc.b $00
[000c3fd8]                           dc.b $00
[000c3fd9]                           dc.b $00
[000c3fda]                           dc.b $00
[000c3fdb]                           dc.b $00
[000c3fdc]                           dc.b $00
[000c3fdd]                           dc.b $00
[000c3fde]                           dc.b $00
[000c3fdf]                           dc.b $00
[000c3fe0]                           dc.b $00
[000c3fe1]                           dc.b $00
[000c3fe2]                           dc.b $00
[000c3fe3]                           dc.b $00
[000c3fe4]                           dc.b $00
[000c3fe5]                           dc.b $00
[000c3fe6]                           dc.b $00
[000c3fe7]                           dc.b $00
[000c3fe8]                           dc.b $00
[000c3fe9]                           dc.b $00
[000c3fea]                           dc.b $00
[000c3feb]                           dc.b $00
[000c3fec]                           dc.b $00
[000c3fed]                           dc.b $00
[000c3fee]                           dc.b $00
[000c3fef]                           dc.b $00
[000c3ff0]                           dc.b $00
[000c3ff1]                           dc.b $00
[000c3ff2]                           dc.b $00
[000c3ff3]                           dc.b $00
[000c3ff4]                           dc.b $00
[000c3ff5]                           dc.b $00
[000c3ff6]                           dc.b $00
[000c3ff7]                           dc.b $00
[000c3ff8]                           dc.b $00
[000c3ff9]                           dc.b $00
[000c3ffa]                           dc.b $00
[000c3ffb]                           dc.b $00
[000c3ffc]                           dc.b $00
[000c3ffd]                           dc.b $00
[000c3ffe]                           dc.b $00
[000c3fff]                           dc.b $00
[000c4000]                           dc.b $00
[000c4001]                           dc.b $00
[000c4002]                           dc.b $00
[000c4003]                           dc.b $00
[000c4004]                           dc.b $00
[000c4005]                           dc.b $00
[000c4006]                           dc.b $00
[000c4007]                           dc.b $00
[000c4008]                           dc.b $00
[000c4009]                           dc.b $00
[000c400a]                           dc.b $00
[000c400b]                           dc.b $00
[000c400c]                           dc.b $00
[000c400d]                           dc.b $00
[000c400e]                           dc.b $00
[000c400f]                           dc.b $00
[000c4010]                           dc.b $00
[000c4011]                           dc.b $00
[000c4012]                           dc.b $00
[000c4013]                           dc.b $00
[000c4014]                           dc.b $00
[000c4015]                           dc.b $00
[000c4016]                           dc.b $00
[000c4017]                           dc.b $00
[000c4018]                           dc.b $00
[000c4019]                           dc.b $00
[000c401a]                           dc.b $00
[000c401b]                           dc.b $00
[000c401c]                           dc.b $00
[000c401d]                           dc.b $00
[000c401e]                           dc.b $00
[000c401f]                           dc.b $00
Sep:
[000c4020] 0005b212                  dc.l A_arrows
[000c4024]                           dc.w $2209
[000c4026]                           dc.b $00
[000c4027]                           dc.b $01
[000c4028]                           dc.b $00
[000c4029]                           dc.b $00
[000c402a]                           dc.b $00
[000c402b]                           dc.b $00
[000c402c]                           dc.b $00
[000c402d]                           dc.b $00
[000c402e]                           dc.b $00
[000c402f]                           dc.b $00
[000c4030]                           dc.b $00
[000c4031]                           dc.b $00
[000c4032]                           dc.b $00
[000c4033]                           dc.b $00
[000c4034]                           dc.b $00
[000c4035]                           dc.b $00
[000c4036]                           dc.b $00
[000c4037]                           dc.b $00
[000c4038]                           dc.b $00
[000c4039]                           dc.b $00
[000c403a]                           dc.b $00
[000c403b]                           dc.b $00
[000c403c]                           dc.b $00
[000c403d]                           dc.b $00
[000c403e]                           dc.b $00
[000c403f]                           dc.b $00
[000c4040]                           dc.b 'AM,am',0
[000c4046]                           dc.b $00
[000c4047]                           dc.b $00
[000c4048]                           dc.b 'pdesk',0
[000c404e]                           dc.b 'PDESK',0
[000c4054]                           dc.b 'A:\',0
[000c4058]                           dc.b 'C:\',0
[000c405c]                           dc.w $414d
[000c405e]                           dc.b $00
[000c405f]                           dc.b 'AMA',0
[000c4063]                           dc.b 'GetFront',0
		.even
