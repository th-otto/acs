
edti_pos:
[00029a52] 48e7 0038                 movem.l    a2-a4,-(a7)
[00029a56] 514f                      subq.w     #8,a7
[00029a58] 41f9 000b db08            lea.l      POP_HORPOSSEL,a0
[00029a5e] 4eb9 0004 9a5c            jsr        Aob_create
[00029a64] 2448                      movea.l    a0,a2
[00029a66] 200a                      move.l     a2,d0
[00029a68] 6700 0122                 beq        edti_pos_1
[00029a6c] 47f9 0010 1f12            lea.l      ACSblk,a3
[00029a72] 7019                      moveq.l    #25,d0
[00029a74] 2053                      movea.l    (a3),a0
[00029a76] 2268 0258                 movea.l    600(a0),a1
[00029a7a] 2269 0014                 movea.l    20(a1),a1
[00029a7e] 41d7                      lea.l      (a7),a0
[00029a80] 4eb9 0004 a3be            jsr        Aob_offset
[00029a86] 7001                      moveq.l    #1,d0
[00029a88] 2053                      movea.l    (a3),a0
[00029a8a] 2268 0258                 movea.l    600(a0),a1
[00029a8e] d069 0034                 add.w      52(a1),d0
[00029a92] d157                      add.w      d0,(a7)
[00029a94] 7201                      moveq.l    #1,d1
[00029a96] d269 0036                 add.w      54(a1),d1
[00029a9a] d36f 0002                 add.w      d1,2(a7)
[00029a9e] 7403                      moveq.l    #3,d2
[00029aa0] 2268 025c                 movea.l    604(a0),a1
[00029aa4] 2069 003c                 movea.l    60(a1),a0
[00029aa8] c468 0006                 and.w      6(a0),d2
[00029aac] 4a42                      tst.w      d2
[00029aae] 670a                      beq.s      edti_pos_2
[00029ab0] 5342                      subq.w     #1,d2
[00029ab2] 670e                      beq.s      edti_pos_3
[00029ab4] 5342                      subq.w     #1,d2
[00029ab6] 6712                      beq.s      edti_pos_4
[00029ab8] 6016                      bra.s      edti_pos_5
edti_pos_2:
[00029aba] 006a 0004 0022            ori.w      #$0004,34(a2)
[00029ac0] 600e                      bra.s      edti_pos_5
edti_pos_3:
[00029ac2] 006a 0004 003a            ori.w      #$0004,58(a2)
[00029ac8] 6006                      bra.s      edti_pos_5
edti_pos_4:
[00029aca] 006a 0004 0052            ori.w      #$0004,82(a2)
edti_pos_5:
[00029ad0] 322f 0002                 move.w     2(a7),d1
[00029ad4] 3017                      move.w     (a7),d0
[00029ad6] 224a                      movea.l    a2,a1
[00029ad8] 2053                      movea.l    (a3),a0
[00029ada] 2068 0258                 movea.l    600(a0),a0
[00029ade] 4eb9 0004 948a            jsr        Ame_popup
[00029ae4] 4a40                      tst.w      d0
[00029ae6] 6f00 009c                 ble        edti_pos_6
[00029aea] 2053                      movea.l    (a3),a0
[00029aec] 2268 025c                 movea.l    604(a0),a1
[00029af0] 2869 003c                 movea.l    60(a1),a4
[00029af4] 584c                      addq.w     #4,a4
[00029af6] 0294 ffff fffc            andi.l     #$FFFFFFFC,(a4)
[00029afc] 3200                      move.w     d0,d1
[00029afe] 5341                      subq.w     #1,d1
[00029b00] 670a                      beq.s      edti_pos_7
[00029b02] 5341                      subq.w     #1,d1
[00029b04] 671c                      beq.s      edti_pos_8
[00029b06] 5341                      subq.w     #1,d1
[00029b08] 6734                      beq.s      edti_pos_9
[00029b0a] 604c                      bra.s      edti_pos_10
edti_pos_7:
[00029b0c] 43f9 000b d309            lea.l      HPOS_TEXT1,a1
[00029b12] 701b                      moveq.l    #27,d0
[00029b14] 2053                      movea.l    (a3),a0
[00029b16] 2068 025c                 movea.l    604(a0),a0
[00029b1a] 4eb9 0004 afe0            jsr        Aob_puttext
[00029b20] 6036                      bra.s      edti_pos_10
edti_pos_8:
[00029b22] 0094 0000 0001            ori.l      #$00000001,(a4)
[00029b28] 43f9 000b d311            lea.l      HPOS_TEXT2,a1
[00029b2e] 701b                      moveq.l    #27,d0
[00029b30] 2053                      movea.l    (a3),a0
[00029b32] 2068 025c                 movea.l    604(a0),a0
[00029b36] 4eb9 0004 afe0            jsr        Aob_puttext
[00029b3c] 601a                      bra.s      edti_pos_10
edti_pos_9:
[00029b3e] 0094 0000 0002            ori.l      #$00000002,(a4)
[00029b44] 43f9 000b d319            lea.l      HPOS_TEXT3,a1
[00029b4a] 701b                      moveq.l    #27,d0
[00029b4c] 2053                      movea.l    (a3),a0
[00029b4e] 2068 025c                 movea.l    604(a0),a0
[00029b52] 4eb9 0004 afe0            jsr        Aob_puttext
edti_pos_10:
[00029b58] 72ff                      moveq.l    #-1,d1
[00029b5a] 701b                      moveq.l    #27,d0
[00029b5c] 2053                      movea.l    (a3),a0
[00029b5e] 2068 0258                 movea.l    600(a0),a0
[00029b62] 2253                      movea.l    (a3),a1
[00029b64] 2869 0258                 movea.l    600(a1),a4
[00029b68] 226c 0066                 movea.l    102(a4),a1
[00029b6c] 4e91                      jsr        (a1)
[00029b6e] 72ff                      moveq.l    #-1,d1
[00029b70] 7001                      moveq.l    #1,d0
[00029b72] 2053                      movea.l    (a3),a0
[00029b74] 2068 0258                 movea.l    600(a0),a0
[00029b78] 2253                      movea.l    (a3),a1
[00029b7a] 2869 0258                 movea.l    600(a1),a4
[00029b7e] 226c 0066                 movea.l    102(a4),a1
[00029b82] 4e91                      jsr        (a1)
edti_pos_6:
[00029b84] 204a                      movea.l    a2,a0
[00029b86] 4eb9 0004 9b7c            jsr        Aob_delete
edti_pos_1:
[00029b8c] 504f                      addq.w     #8,a7
[00029b8e] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00029b92] 4e75                      rts

edti_replace:
[00029b94] 2079 0010 1f12            movea.l    ACSblk,a0
[00029b9a] 2268 025c                 movea.l    604(a0),a1
[00029b9e] 2069 003c                 movea.l    60(a1),a0
[00029ba2] 00a8 0000 0008 0004       ori.l      #$00000008,4(a0)
[00029baa] 7002                      moveq.l    #2,d0
[00029bac] 2079 0010 1f12            movea.l    ACSblk,a0
[00029bb2] 2068 0258                 movea.l    600(a0),a0
[00029bb6] 4eb9 0004 b846            jsr        Awi_obredraw
[00029bbc] 4e75                      rts

edti_size:
[00029bbe] 48e7 0038                 movem.l    a2-a4,-(a7)
[00029bc2] 514f                      subq.w     #8,a7
[00029bc4] 41f9 000b dc40            lea.l      POP_SIZESEL,a0
[00029bca] 4eb9 0004 9a5c            jsr        Aob_create
[00029bd0] 2448                      movea.l    a0,a2
[00029bd2] 200a                      move.l     a2,d0
[00029bd4] 6700 00ea                 beq        edti_size_1
[00029bd8] 47f9 0010 1f12            lea.l      ACSblk,a3
[00029bde] 700b                      moveq.l    #11,d0
[00029be0] 2053                      movea.l    (a3),a0
[00029be2] 2268 0258                 movea.l    600(a0),a1
[00029be6] 2269 0014                 movea.l    20(a1),a1
[00029bea] 41d7                      lea.l      (a7),a0
[00029bec] 4eb9 0004 a3be            jsr        Aob_offset
[00029bf2] 7001                      moveq.l    #1,d0
[00029bf4] 2053                      movea.l    (a3),a0
[00029bf6] 2268 0258                 movea.l    600(a0),a1
[00029bfa] d069 0034                 add.w      52(a1),d0
[00029bfe] d157                      add.w      d0,(a7)
[00029c00] 7201                      moveq.l    #1,d1
[00029c02] d269 0036                 add.w      54(a1),d1
[00029c06] d36f 0002                 add.w      d1,2(a7)
[00029c0a] 2268 025c                 movea.l    604(a0),a1
[00029c0e] 2069 003c                 movea.l    60(a1),a0
[00029c12] 2028 0004                 move.l     4(a0),d0
[00029c16] e480                      asr.l      #2,d0
[00029c18] c07c 0001                 and.w      #$0001,d0
[00029c1c] 48c0                      ext.l      d0
[00029c1e] 2400                      move.l     d0,d2
[00029c20] d482                      add.l      d2,d2
[00029c22] d480                      add.l      d0,d2
[00029c24] e78a                      lsl.l      #3,d2
[00029c26] 0072 0004 2822            ori.w      #$0004,34(a2,d2.l)
[00029c2c] 322f 0002                 move.w     2(a7),d1
[00029c30] 3017                      move.w     (a7),d0
[00029c32] 224a                      movea.l    a2,a1
[00029c34] 2053                      movea.l    (a3),a0
[00029c36] 2068 0258                 movea.l    600(a0),a0
[00029c3a] 4eb9 0004 948a            jsr        Ame_popup
[00029c40] 4a40                      tst.w      d0
[00029c42] 6f74                      ble.s      edti_size_2
[00029c44] 2053                      movea.l    (a3),a0
[00029c46] 2268 025c                 movea.l    604(a0),a1
[00029c4a] 2869 003c                 movea.l    60(a1),a4
[00029c4e] 584c                      addq.w     #4,a4
[00029c50] b07c 0001                 cmp.w      #$0001,d0
[00029c54] 661c                      bne.s      edti_size_3
[00029c56] 0294 ffff fffb            andi.l     #$FFFFFFFB,(a4)
[00029c5c] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[00029c62] 700d                      moveq.l    #13,d0
[00029c64] 2053                      movea.l    (a3),a0
[00029c66] 2068 025c                 movea.l    604(a0),a0
[00029c6a] 4eb9 0004 afe0            jsr        Aob_puttext
[00029c70] 601a                      bra.s      edti_size_4
edti_size_3:
[00029c72] 0094 0000 0004            ori.l      #$00000004,(a4)
[00029c78] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[00029c7e] 700d                      moveq.l    #13,d0
[00029c80] 2053                      movea.l    (a3),a0
[00029c82] 2068 025c                 movea.l    604(a0),a0
[00029c86] 4eb9 0004 afe0            jsr        Aob_puttext
edti_size_4:
[00029c8c] 72ff                      moveq.l    #-1,d1
[00029c8e] 700d                      moveq.l    #13,d0
[00029c90] 2053                      movea.l    (a3),a0
[00029c92] 2068 0258                 movea.l    600(a0),a0
[00029c96] 2253                      movea.l    (a3),a1
[00029c98] 2869 0258                 movea.l    600(a1),a4
[00029c9c] 226c 0066                 movea.l    102(a4),a1
[00029ca0] 4e91                      jsr        (a1)
[00029ca2] 72ff                      moveq.l    #-1,d1
[00029ca4] 7001                      moveq.l    #1,d0
[00029ca6] 2053                      movea.l    (a3),a0
[00029ca8] 2068 0258                 movea.l    600(a0),a0
[00029cac] 2253                      movea.l    (a3),a1
[00029cae] 2869 0258                 movea.l    600(a1),a4
[00029cb2] 226c 0066                 movea.l    102(a4),a1
[00029cb6] 4e91                      jsr        (a1)
edti_size_2:
[00029cb8] 204a                      movea.l    a2,a0
[00029cba] 4eb9 0004 9b7c            jsr        Aob_delete
edti_size_1:
[00029cc0] 504f                      addq.w     #8,a7
[00029cc2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00029cc6] 4e75                      rts

edti_trans:
[00029cc8] 2079 0010 1f12            movea.l    ACSblk,a0
[00029cce] 2268 025c                 movea.l    604(a0),a1
[00029cd2] 2069 003c                 movea.l    60(a1),a0
[00029cd6] 02a8 ffff fff7 0004       andi.l     #$FFFFFFF7,4(a0)
[00029cde] 7002                      moveq.l    #2,d0
[00029ce0] 2079 0010 1f12            movea.l    ACSblk,a0
[00029ce6] 2068 0258                 movea.l    600(a0),a0
[00029cea] 4eb9 0004 b846            jsr        Awi_obredraw
[00029cf0] 4e75                      rts

init_title:
[00029cf2] 2f0a                      move.l     a2,-(a7)
[00029cf4] 2f0b                      move.l     a3,-(a7)
[00029cf6] 2448                      movea.l    a0,a2
[00029cf8] 43f9 000b 84aa            lea.l      data,a1
[00029cfe] 303c 2329                 move.w     #$2329,d0
[00029d02] 266a 0004                 movea.l    4(a2),a3
[00029d06] 4e93                      jsr        (a3)
[00029d08] 265f                      movea.l    (a7)+,a3
[00029d0a] 245f                      movea.l    (a7)+,a2
[00029d0c] 4e75                      rts

minsize:
[00029d0e] 2f0a                      move.l     a2,-(a7)
[00029d10] 2f0b                      move.l     a3,-(a7)
[00029d12] 2649                      movea.l    a1,a3
[00029d14] 2468 000c                 movea.l    12(a0),a2
[00029d18] 204a                      movea.l    a2,a0
[00029d1a] 4eb9 0007 69b0            jsr        strlen
[00029d20] 2079 0010 1f12            movea.l    ACSblk,a0
[00029d26] c1e8 0012                 muls.w     18(a0),d0
[00029d2a] 3680                      move.w     d0,(a3)
[00029d2c] 2079 0010 1f12            movea.l    ACSblk,a0
[00029d32] 226f 000c                 movea.l    12(a7),a1
[00029d36] 32a8 0014                 move.w     20(a0),(a1)
[00029d3a] 265f                      movea.l    (a7)+,a3
[00029d3c] 245f                      movea.l    (a7)+,a2
[00029d3e] 4e75                      rts

object_tree:
[00029d40] 48e7 003e                 movem.l    a2-a6,-(a7)
[00029d44] 594f                      subq.w     #4,a7
[00029d46] 2a48                      movea.l    a0,a5
[00029d48] 2849                      movea.l    a1,a4
[00029d4a] 41f9 000b 818c            lea.l      ED_TITLE,a0
[00029d50] 4eb9 0004 9a5c            jsr        Aob_create
[00029d56] 2448                      movea.l    a0,a2
[00029d58] 200a                      move.l     a2,d0
[00029d5a] 6606                      bne.s      object_tree_1
[00029d5c] 91c8                      suba.l     a0,a0
[00029d5e] 6000 0194                 bra        object_tree_2
object_tree_1:
[00029d62] 47ea 0030                 lea.l      48(a2),a3
[00029d66] 7016                      moveq.l    #22,d0
[00029d68] c06c 0008                 and.w      8(a4),d0
[00029d6c] 816b 0008                 or.w       d0,8(a3)
[00029d70] 703f                      moveq.l    #63,d0
[00029d72] c06c 000a                 and.w      10(a4),d0
[00029d76] 816b 000a                 or.w       d0,10(a3)
[00029d7a] 49f9 0010 1f12            lea.l      ACSblk,a4
[00029d80] 700e                      moveq.l    #14,d0
[00029d82] 224a                      movea.l    a2,a1
[00029d84] 2054                      movea.l    (a4),a0
[00029d86] 2068 0258                 movea.l    600(a0),a0
[00029d8a] 4eb9 0002 f23c            jsr        oe_beself
[00029d90] 7002                      moveq.l    #2,d0
[00029d92] 224a                      movea.l    a2,a1
[00029d94] 2054                      movea.l    (a4),a0
[00029d96] 2068 0258                 movea.l    600(a0),a0
[00029d9a] 4eb9 0002 f23c            jsr        oe_beself
[00029da0] 7017                      moveq.l    #23,d0
[00029da2] 224a                      movea.l    a2,a1
[00029da4] 2054                      movea.l    (a4),a0
[00029da6] 2068 0258                 movea.l    600(a0),a0
[00029daa] 4eb9 0002 f23c            jsr        oe_beself
[00029db0] 7018                      moveq.l    #24,d0
[00029db2] 224a                      movea.l    a2,a1
[00029db4] 2054                      movea.l    (a4),a0
[00029db6] 2068 0258                 movea.l    600(a0),a0
[00029dba] 4eb9 0002 f23c            jsr        oe_beself
[00029dc0] 286b 000c                 movea.l    12(a3),a4
[00029dc4] 4857                      pea.l      (a7)
[00029dc6] 43f9 000b 8510            lea.l      $000B8510,a1
[00029dcc] 2055                      movea.l    (a5),a0
[00029dce] 4eb9 0007 594a            jsr        sscanf
[00029dd4] 584f                      addq.w     #4,a7
[00029dd6] 2957 0004                 move.l     (a7),4(a4)
[00029dda] 0c6d 0002 0008            cmpi.w     #$0002,8(a5)
[00029de0] 6610                      bne.s      object_tree_3
[00029de2] 226d 000a                 movea.l    10(a5),a1
[00029de6] 700e                      moveq.l    #14,d0
[00029de8] 204a                      movea.l    a2,a0
[00029dea] 4eb9 0004 afe0            jsr        Aob_puttext
[00029df0] 6020                      bra.s      object_tree_4
object_tree_3:
[00029df2] 43f9 000b 84ff            lea.l      $000B84FF,a1
[00029df8] 7004                      moveq.l    #4,d0
[00029dfa] 204b                      movea.l    a3,a0
[00029dfc] 2c6c 0008                 movea.l    8(a4),a6
[00029e00] 4e96                      jsr        (a6)
[00029e02] 43f9 000b 84ff            lea.l      $000B84FF,a1
[00029e08] 700e                      moveq.l    #14,d0
[00029e0a] 204a                      movea.l    a2,a0
[00029e0c] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_4:
[00029e12] 7004                      moveq.l    #4,d0
[00029e14] c097                      and.l      (a7),d0
[00029e16] 6712                      beq.s      object_tree_5
[00029e18] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[00029e1e] 204a                      movea.l    a2,a0
[00029e20] 700d                      moveq.l    #13,d0
[00029e22] 4eb9 0004 afe0            jsr        Aob_puttext
[00029e28] 6010                      bra.s      object_tree_6
object_tree_5:
[00029e2a] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[00029e30] 700d                      moveq.l    #13,d0
[00029e32] 204a                      movea.l    a2,a0
[00029e34] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_6:
[00029e3a] 7003                      moveq.l    #3,d0
[00029e3c] c06f 0002                 and.w      2(a7),d0
[00029e40] 4a40                      tst.w      d0
[00029e42] 670a                      beq.s      object_tree_7
[00029e44] 5340                      subq.w     #1,d0
[00029e46] 6718                      beq.s      object_tree_8
[00029e48] 5340                      subq.w     #1,d0
[00029e4a] 6726                      beq.s      object_tree_9
[00029e4c] 6034                      bra.s      object_tree_10
object_tree_7:
[00029e4e] 43f9 000b d309            lea.l      HPOS_TEXT1,a1
[00029e54] 701b                      moveq.l    #27,d0
[00029e56] 204a                      movea.l    a2,a0
[00029e58] 4eb9 0004 afe0            jsr        Aob_puttext
[00029e5e] 6022                      bra.s      object_tree_10
object_tree_8:
[00029e60] 43f9 000b d311            lea.l      HPOS_TEXT2,a1
[00029e66] 701b                      moveq.l    #27,d0
[00029e68] 204a                      movea.l    a2,a0
[00029e6a] 4eb9 0004 afe0            jsr        Aob_puttext
[00029e70] 6010                      bra.s      object_tree_10
object_tree_9:
[00029e72] 43f9 000b d319            lea.l      HPOS_TEXT3,a1
[00029e78] 701b                      moveq.l    #27,d0
[00029e7a] 204a                      movea.l    a2,a0
[00029e7c] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_10:
[00029e82] 206a 0234                 movea.l    564(a2),a0
[00029e86] 2968 000c 0018            move.l     12(a0),24(a4)
[00029e8c] 206d 0026                 movea.l    38(a5),a0
[00029e90] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00029e96] 4a40                      tst.w      d0
[00029e98] 6712                      beq.s      object_tree_11
[00029e9a] 43f9 000b 84ff            lea.l      $000B84FF,a1
[00029ea0] 7017                      moveq.l    #23,d0
[00029ea2] 204a                      movea.l    a2,a0
[00029ea4] 4eb9 0004 afe0            jsr        Aob_puttext
[00029eaa] 600e                      bra.s      object_tree_12
object_tree_11:
[00029eac] 226d 0026                 movea.l    38(a5),a1
[00029eb0] 7017                      moveq.l    #23,d0
[00029eb2] 204a                      movea.l    a2,a0
[00029eb4] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_12:
[00029eba] 206a 024c                 movea.l    588(a2),a0
[00029ebe] 2968 000c 001c            move.l     12(a0),28(a4)
[00029ec4] 206d 002a                 movea.l    42(a5),a0
[00029ec8] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00029ece] 4a40                      tst.w      d0
[00029ed0] 6712                      beq.s      object_tree_13
[00029ed2] 43f9 000b 84ff            lea.l      $000B84FF,a1
[00029ed8] 7018                      moveq.l    #24,d0
[00029eda] 204a                      movea.l    a2,a0
[00029edc] 4eb9 0004 afe0            jsr        Aob_puttext
[00029ee2] 600e                      bra.s      object_tree_14
object_tree_13:
[00029ee4] 226d 002a                 movea.l    42(a5),a1
[00029ee8] 7018                      moveq.l    #24,d0
[00029eea] 204a                      movea.l    a2,a0
[00029eec] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_14:
[00029ef2] 204a                      movea.l    a2,a0
object_tree_2:
[00029ef4] 584f                      addq.w     #4,a7
[00029ef6] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00029efa] 4e75                      rts

test_it:
[00029efc] 2f0a                      move.l     a2,-(a7)
[00029efe] 2f0b                      move.l     a3,-(a7)
[00029f00] 2648                      movea.l    a0,a3
[00029f02] 2449                      movea.l    a1,a2
[00029f04] 22bc 0005 ad8e            move.l     #A_title,(a1)
[00029f0a] 486a 0004                 pea.l      4(a2)
[00029f0e] 43f9 000b 8510            lea.l      $000B8510,a1
[00029f14] 2050                      movea.l    (a0),a0
[00029f16] 4eb9 0007 594a            jsr        sscanf
[00029f1c] 584f                      addq.w     #4,a7
[00029f1e] 257c 0005 9318 0008       move.l     #Auo_string,8(a2)
[00029f26] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[00029f2c] 6608                      bne.s      test_it_1
[00029f2e] 256b 000a 000c            move.l     10(a3),12(a2)
[00029f34] 6004                      bra.s      test_it_2
test_it_1:
[00029f36] 42aa 000c                 clr.l      12(a2)
test_it_2:
[00029f3a] 7000                      moveq.l    #0,d0
[00029f3c] 2540 0014                 move.l     d0,20(a2)
[00029f40] 2540 0010                 move.l     d0,16(a2)
[00029f44] 206b 0026                 movea.l    38(a3),a0
[00029f48] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00029f4e] 4a40                      tst.w      d0
[00029f50] 6704                      beq.s      test_it_3
[00029f52] 91c8                      suba.l     a0,a0
[00029f54] 6004                      bra.s      test_it_4
test_it_3:
[00029f56] 206b 0026                 movea.l    38(a3),a0
test_it_4:
[00029f5a] 2548 0018                 move.l     a0,24(a2)
[00029f5e] 206b 002a                 movea.l    42(a3),a0
[00029f62] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00029f68] 4a40                      tst.w      d0
[00029f6a] 6704                      beq.s      test_it_5
[00029f6c] 91c8                      suba.l     a0,a0
[00029f6e] 6004                      bra.s      test_it_6
test_it_5:
[00029f70] 206b 002a                 movea.l    42(a3),a0
test_it_6:
[00029f74] 2548 001c                 move.l     a0,28(a2)
[00029f78] 265f                      movea.l    (a7)+,a3
[00029f7a] 245f                      movea.l    (a7)+,a2
[00029f7c] 4e75                      rts

abort:
[00029f7e] 2079 0010 1f12            movea.l    ACSblk,a0
[00029f84] 2268 0258                 movea.l    600(a0),a1
[00029f88] 2069 0014                 movea.l    20(a1),a0
[00029f8c] 2068 003c                 movea.l    60(a0),a0
[00029f90] 42a8 0018                 clr.l      24(a0)
[00029f94] 42a8 001c                 clr.l      28(a0)
[00029f98] 2079 000b 84ea            movea.l    $000B84EA,a0
[00029f9e] 2050                      movea.l    (a0),a0
[00029fa0] 4e90                      jsr        (a0)
[00029fa2] 4e75                      rts

ok:
[00029fa4] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00029fa8] 4fef ffce                 lea.l      -50(a7),a7
[00029fac] 2079 0010 1f12            movea.l    ACSblk,a0
[00029fb2] 2268 0258                 movea.l    600(a0),a1
[00029fb6] 2469 0014                 movea.l    20(a1),a2
[00029fba] 286a 003c                 movea.l    60(a2),a4
[00029fbe] 47f9 000f f62a            lea.l      parm,a3
[00029fc4] 2f2c 0004                 move.l     4(a4),-(a7)
[00029fc8] 43f9 000b 8510            lea.l      $000B8510,a1
[00029fce] 204b                      movea.l    a3,a0
[00029fd0] 4eb9 0007 5680            jsr        sprintf
[00029fd6] 584f                      addq.w     #4,a7
[00029fd8] 49ef 0004                 lea.l      4(a7),a4
[00029fdc] 288b                      move.l     a3,(a4)
[00029fde] 297c 000b 8505 0004       move.l     #$000B8505,4(a4)
[00029fe6] 43d7                      lea.l      (a7),a1
[00029fe8] 7003                      moveq.l    #3,d0
[00029fea] 41ea 0150                 lea.l      336(a2),a0
[00029fee] 4eb9 0005 e010            jsr        Auo_boxed
[00029ff4] 2057                      movea.l    (a7),a0
[00029ff6] 4eb9 0007 69b0            jsr        strlen
[00029ffc] 5680                      addq.l     #3,d0
[00029ffe] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a004] 3228 0012                 move.w     18(a0),d1
[0002a008] 48c1                      ext.l      d1
[0002a00a] 4eb9 0007 7676            jsr        _ulmul
[0002a010] 2600                      move.l     d0,d3
[0002a012] 397c 0002 0008            move.w     #$0002,8(a4)
[0002a018] 2957 000a                 move.l     (a7),10(a4)
[0002a01c] 42ac 000e                 clr.l      14(a4)
[0002a020] 4240                      clr.w      d0
[0002a022] 3940 001c                 move.w     d0,28(a4)
[0002a026] 3940 0012                 move.w     d0,18(a4)
[0002a02a] 7200                      moveq.l    #0,d1
[0002a02c] 2941 001e                 move.l     d1,30(a4)
[0002a030] 2941 0014                 move.l     d1,20(a4)
[0002a034] 7000                      moveq.l    #0,d0
[0002a036] 2940 0022                 move.l     d0,34(a4)
[0002a03a] 2940 0018                 move.l     d0,24(a4)
[0002a03e] 43ec 0026                 lea.l      38(a4),a1
[0002a042] 41ea 0228                 lea.l      552(a2),a0
[0002a046] 7003                      moveq.l    #3,d0
[0002a048] 4eb9 0005 e010            jsr        Auo_boxed
[0002a04e] 206c 0026                 movea.l    38(a4),a0
[0002a052] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002a058] 4a40                      tst.w      d0
[0002a05a] 6704                      beq.s      ok_1
[0002a05c] 42ac 0026                 clr.l      38(a4)
ok_1:
[0002a060] 43ec 002a                 lea.l      42(a4),a1
[0002a064] 7003                      moveq.l    #3,d0
[0002a066] 41ea 0240                 lea.l      576(a2),a0
[0002a06a] 4eb9 0005 e010            jsr        Auo_boxed
[0002a070] 206c 002a                 movea.l    42(a4),a0
[0002a074] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002a07a] 4a40                      tst.w      d0
[0002a07c] 6704                      beq.s      ok_2
[0002a07e] 42ac 002a                 clr.l      42(a4)
ok_2:
[0002a082] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a088] 3228 0014                 move.w     20(a0),d1
[0002a08c] 3003                      move.w     d3,d0
[0002a08e] 204c                      movea.l    a4,a0
[0002a090] 2279 000b 84ea            movea.l    $000B84EA,a1
[0002a096] 2269 0004                 movea.l    4(a1),a1
[0002a09a] 4e91                      jsr        (a1)
[0002a09c] 6100 fee0                 bsr        abort
[0002a0a0] 4fef 0032                 lea.l      50(a7),a7
[0002a0a4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002a0a8] 4e75                      rts

	.data

BUBBLE_01:
[000b7e56]                           dc.b 'Die énderungen werden Åbernommen und Åberschreiben die alten Einstellungen.',0
BUBBLE_02:
[000b7ea2]                           dc.b 'Die énderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
[000b7eed]                           dc.b 'Hier kann der String, der fÅr BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_05:
[000b7f3f]                           dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
TEXT_005:
[000b7fc3]                           dc.b $4f
[000b7fc4]                           dc.w $4b00
TEXT_006:
[000b7fc6]                           dc.b 'TEXT',0
TEXT_009:
[000b7fcb]                           dc.b 'Abbruch',0
TEXT_04:
[000b7fd3]                           dc.b 'Position:',0
TEXT_05:
[000b7fdd]                           dc.b 'Sonstiges',0
TEXT_06:
[000b7fe7]                           dc.b 'BubbleGEM-Text',0
TEXT_07:
[000b7ff6]                           dc.b 'Context-Popup',0
TEXT_12:
[000b8004]                           dc.b 'Grîûe:',0
TEXT_13:
[000b800b]                           dc.b 'Modus:',0
help_title:
[000b8012]                           dc.b 'Der Title-Editor',0
title:
[000b8023]                           dc.b 'TITLE -',0
[000b802b]                           dc.b $00
A_3DBUTTON03:
[000b802c] 0005a4e2                  dc.l A_3Dbutton
[000b8030]                           dc.w $29c1
[000b8032]                           dc.w $0178
[000b8034] 00059318                  dc.l Auo_string
[000b8038] 000b7fc3                  dc.l TEXT_005
[000b803c]                           dc.b $00
[000b803d]                           dc.b $00
[000b803e]                           dc.b $00
[000b803f]                           dc.b $00
[000b8040]                           dc.b $00
[000b8041]                           dc.b $00
[000b8042]                           dc.b $00
[000b8043]                           dc.b $00
[000b8044] 000b7e56                  dc.l BUBBLE_01
[000b8048]                           dc.b $00
[000b8049]                           dc.b $00
[000b804a]                           dc.b $00
[000b804b]                           dc.b $00
A_3DBUTTON04:
[000b804c] 0005a4e2                  dc.l A_3Dbutton
[000b8050]                           dc.w $29f1
[000b8052]                           dc.w $0178
[000b8054] 00059318                  dc.l Auo_string
[000b8058]                           dc.b $00
[000b8059]                           dc.b $00
[000b805a]                           dc.b $00
[000b805b]                           dc.b $00
[000b805c]                           dc.b $00
[000b805d]                           dc.b $00
[000b805e]                           dc.b $00
[000b805f]                           dc.b $00
[000b8060]                           dc.b $00
[000b8061]                           dc.b $00
[000b8062]                           dc.b $00
[000b8063]                           dc.b $00
[000b8064]                           dc.b $00
[000b8065]                           dc.b $00
[000b8066]                           dc.b $00
[000b8067]                           dc.b $00
[000b8068]                           dc.b $00
[000b8069]                           dc.b $00
[000b806a]                           dc.b $00
[000b806b]                           dc.b $00
A_3DBUTTON05:
[000b806c] 0005a4e2                  dc.l A_3Dbutton
[000b8070]                           dc.w $21f1
[000b8072]                           dc.w $0178
[000b8074] 00059318                  dc.l Auo_string
[000b8078]                           dc.b $00
[000b8079]                           dc.b $00
[000b807a]                           dc.b $00
[000b807b]                           dc.b $00
[000b807c]                           dc.b $00
[000b807d]                           dc.b $00
[000b807e]                           dc.b $00
[000b807f]                           dc.b $00
[000b8080]                           dc.b $00
[000b8081]                           dc.b $00
[000b8082]                           dc.b $00
[000b8083]                           dc.b $00
[000b8084]                           dc.b $00
[000b8085]                           dc.b $00
[000b8086]                           dc.b $00
[000b8087]                           dc.b $00
[000b8088]                           dc.b $00
[000b8089]                           dc.b $00
[000b808a]                           dc.b $00
[000b808b]                           dc.b $00
A_3DBUTTON06:
[000b808c] 0005a4e2                  dc.l A_3Dbutton
[000b8090]                           dc.w $29c1
[000b8092]                           dc.w $0178
[000b8094] 00059318                  dc.l Auo_string
[000b8098] 000b7fcb                  dc.l TEXT_009
[000b809c]                           dc.b $00
[000b809d]                           dc.b $00
[000b809e]                           dc.b $00
[000b809f]                           dc.b $00
[000b80a0]                           dc.b $00
[000b80a1]                           dc.b $00
[000b80a2]                           dc.b $00
[000b80a3]                           dc.b $00
[000b80a4] 000b7ea2                  dc.l BUBBLE_02
[000b80a8]                           dc.b $00
[000b80a9]                           dc.b $00
[000b80aa]                           dc.b $00
[000b80ab]                           dc.b $00
A_3DBUTTON27:
[000b80ac] 0005a4e2                  dc.l A_3Dbutton
[000b80b0]                           dc.w $09f1
[000b80b2]                           dc.w $0178
[000b80b4] 00059318                  dc.l Auo_string
[000b80b8]                           dc.b $00
[000b80b9]                           dc.b $00
[000b80ba]                           dc.b $00
[000b80bb]                           dc.b $00
[000b80bc]                           dc.b $00
[000b80bd]                           dc.b $00
[000b80be]                           dc.b $00
[000b80bf]                           dc.b $00
[000b80c0]                           dc.b $00
[000b80c1]                           dc.b $00
[000b80c2]                           dc.b $00
[000b80c3]                           dc.b $00
[000b80c4]                           dc.b $00
[000b80c5]                           dc.b $00
[000b80c6]                           dc.b $00
[000b80c7]                           dc.b $00
[000b80c8]                           dc.b $00
[000b80c9]                           dc.b $00
[000b80ca]                           dc.b $00
[000b80cb]                           dc.b $00
A_ARROWS02:
[000b80cc] 0005b212                  dc.l A_arrows
[000b80d0]                           dc.w $1301
[000b80d2]                           dc.b $00
[000b80d3]                           dc.b $01
[000b80d4]                           dc.b $00
[000b80d5]                           dc.b $00
[000b80d6]                           dc.b $00
[000b80d7]                           dc.b $00
[000b80d8]                           dc.b $00
[000b80d9]                           dc.b $00
[000b80da]                           dc.b $00
[000b80db]                           dc.b $00
[000b80dc]                           dc.b $00
[000b80dd]                           dc.b $00
[000b80de]                           dc.b $00
[000b80df]                           dc.b $00
[000b80e0]                           dc.b $00
[000b80e1]                           dc.b $00
[000b80e2]                           dc.b $00
[000b80e3]                           dc.b $00
[000b80e4]                           dc.b $00
[000b80e5]                           dc.b $00
[000b80e6]                           dc.b $00
[000b80e7]                           dc.b $00
[000b80e8]                           dc.b $00
[000b80e9]                           dc.b $00
[000b80ea]                           dc.b $00
[000b80eb]                           dc.b $00
A_BOXED02:
[000b80ec] 0005e9d2                  dc.l A_boxed
[000b80f0]                           dc.w $9000
[000b80f2]                           dc.w $ff12
[000b80f4] 0005e010                  dc.l Auo_boxed
[000b80f8]                           dc.b $00
[000b80f9]                           dc.b $00
[000b80fa]                           dc.b $00
[000b80fb]                           dc.b $00
[000b80fc]                           dc.b $00
[000b80fd]                           dc.b $00
[000b80fe]                           dc.b $00
[000b80ff]                           dc.b $00
[000b8100]                           dc.b $00
[000b8101]                           dc.b $00
[000b8102]                           dc.b $00
[000b8103]                           dc.b $00
[000b8104]                           dc.b $00
[000b8105]                           dc.b $00
[000b8106]                           dc.b $00
[000b8107]                           dc.b $00
[000b8108]                           dc.b $00
[000b8109]                           dc.b $00
[000b810a]                           dc.b $00
[000b810b]                           dc.b $00
A_BOXED03:
[000b810c] 0005e9d2                  dc.l A_boxed
[000b8110]                           dc.w $9038
[000b8112]                           dc.w $ff12
[000b8114] 0005e010                  dc.l Auo_boxed
[000b8118]                           dc.b $00
[000b8119]                           dc.b $00
[000b811a]                           dc.b $00
[000b811b]                           dc.b $00
[000b811c]                           dc.b $00
[000b811d]                           dc.b $00
[000b811e]                           dc.b $00
[000b811f]                           dc.b $00
[000b8120]                           dc.b $00
[000b8121]                           dc.b $00
[000b8122]                           dc.b $00
[000b8123]                           dc.b $00
[000b8124] 000b7eed                  dc.l BUBBLE_03
[000b8128]                           dc.b $00
[000b8129]                           dc.b $00
[000b812a]                           dc.b $00
[000b812b]                           dc.b $00
A_BOXED04:
[000b812c] 0005e9d2                  dc.l A_boxed
[000b8130]                           dc.w $9038
[000b8132]                           dc.w $ff12
[000b8134] 0005e010                  dc.l Auo_boxed
[000b8138]                           dc.b $00
[000b8139]                           dc.b $00
[000b813a]                           dc.b $00
[000b813b]                           dc.b $00
[000b813c]                           dc.b $00
[000b813d]                           dc.b $00
[000b813e]                           dc.b $00
[000b813f]                           dc.b $00
[000b8140]                           dc.b $00
[000b8141]                           dc.b $00
[000b8142]                           dc.b $00
[000b8143]                           dc.b $00
[000b8144] 000b7f3f                  dc.l BUBBLE_05
[000b8148]                           dc.b $00
[000b8149]                           dc.b $00
[000b814a]                           dc.b $00
[000b814b]                           dc.b $00
A_INNERFRAME03:
[000b814c] 00059f9c                  dc.l A_innerframe
[000b8150]                           dc.w $1800
[000b8152]                           dc.w $8f19
[000b8154] 00059318                  dc.l Auo_string
[000b8158] 000b7fdd                  dc.l TEXT_05
[000b815c]                           dc.b $00
[000b815d]                           dc.b $00
[000b815e]                           dc.b $00
[000b815f]                           dc.b $00
[000b8160]                           dc.b $00
[000b8161]                           dc.b $00
[000b8162]                           dc.b $00
[000b8163]                           dc.b $00
[000b8164]                           dc.b $00
[000b8165]                           dc.b $00
[000b8166]                           dc.b $00
[000b8167]                           dc.b $00
[000b8168]                           dc.b $00
[000b8169]                           dc.b $00
[000b816a]                           dc.b $00
[000b816b]                           dc.b $00
A_TITLE01:
[000b816c] 0005ad8e                  dc.l A_title
[000b8170]                           dc.b $00
[000b8171]                           dc.b $00
[000b8172]                           dc.b $00
[000b8173]                           dc.b $00
[000b8174] 00059318                  dc.l Auo_string
[000b8178] 000b7fc6                  dc.l TEXT_006
[000b817c]                           dc.b $00
[000b817d]                           dc.b $00
[000b817e]                           dc.b $00
[000b817f]                           dc.b $00
[000b8180]                           dc.b $00
[000b8181]                           dc.b $00
[000b8182]                           dc.b $00
[000b8183]                           dc.b $00
[000b8184]                           dc.b $00
[000b8185]                           dc.b $00
[000b8186]                           dc.b $00
[000b8187]                           dc.b $00
[000b8188]                           dc.b $00
[000b8189]                           dc.b $00
[000b818a]                           dc.b $00
[000b818b]                           dc.b $00
ED_TITLE:
[000b818c]                           dc.w $ffff
[000b818e]                           dc.b $00
[000b818f]                           dc.b $01
[000b8190]                           dc.b $00
[000b8191]                           dc.b $19
[000b8192]                           dc.b $00
[000b8193]                           dc.b $18
[000b8194]                           dc.b $00
[000b8195]                           dc.b $40
[000b8196]                           dc.b $00
[000b8197]                           dc.b $10
[000b8198] 000b806c                  dc.l A_3DBUTTON05
[000b819c]                           dc.b $00
[000b819d]                           dc.b $00
[000b819e]                           dc.b $00
[000b819f]                           dc.b $00
[000b81a0]                           dc.b $00
[000b81a1]                           dc.b $2c
[000b81a2]                           dc.b $00
[000b81a3]                           dc.b $0d
_01_ED_TITLE:
[000b81a4]                           dc.b $00
[000b81a5]                           dc.b $03
[000b81a6]                           dc.b $00
[000b81a7]                           dc.b $02
[000b81a8]                           dc.b $00
[000b81a9]                           dc.b $02
[000b81aa]                           dc.b $00
[000b81ab]                           dc.b $18
[000b81ac]                           dc.b $00
[000b81ad]                           dc.b $40
[000b81ae]                           dc.b $00
[000b81af]                           dc.b $00
[000b81b0] 000b804c                  dc.l A_3DBUTTON04
[000b81b4]                           dc.b $00
[000b81b5]                           dc.b $00
[000b81b6]                           dc.b $00
[000b81b7]                           dc.b $00
[000b81b8]                           dc.b $00
[000b81b9]                           dc.b $0c
[000b81ba]                           dc.b $00
[000b81bb]                           dc.b $03
_02_ED_TITLE:
[000b81bc]                           dc.b $00
[000b81bd]                           dc.b $01
[000b81be]                           dc.w $ffff
[000b81c0]                           dc.w $ffff
[000b81c2]                           dc.b $00
[000b81c3]                           dc.b $18
[000b81c4]                           dc.b $00
[000b81c5]                           dc.b $00
[000b81c6]                           dc.b $00
[000b81c7]                           dc.b $00
[000b81c8] 000b816c                  dc.l A_TITLE01
[000b81cc]                           dc.b $00
[000b81cd]                           dc.b $01
[000b81ce]                           dc.b $00
[000b81cf]                           dc.b $01
[000b81d0]                           dc.b $00
[000b81d1]                           dc.b $0a
[000b81d2]                           dc.b $00
[000b81d3]                           dc.b $01
_03_ED_TITLE:
[000b81d4]                           dc.b $00
[000b81d5]                           dc.b $05
[000b81d6]                           dc.w $ffff
[000b81d8]                           dc.w $ffff
[000b81da]                           dc.b $00
[000b81db]                           dc.b $18
[000b81dc]                           dc.w $4007
[000b81de]                           dc.b $00
[000b81df]                           dc.b $00
[000b81e0] 000b802c                  dc.l A_3DBUTTON03
[000b81e4]                           dc.b $00
[000b81e5]                           dc.b $10
[000b81e6]                           dc.b $00
[000b81e7]                           dc.b $01
[000b81e8]                           dc.b $00
[000b81e9]                           dc.b $0c
[000b81ea]                           dc.b $00
[000b81eb]                           dc.b $02
_03aED_TITLE:
[000b81ec] 00029fa4                  dc.l ok
[000b81f0]                           dc.b $00
[000b81f1]                           dc.b $00
[000b81f2]                           dc.b $00
[000b81f3]                           dc.b $00
[000b81f4]                           dc.w $8000
[000b81f6]                           dc.w $884f
[000b81f8]                           dc.b $00
[000b81f9]                           dc.b $00
[000b81fa]                           dc.b $00
[000b81fb]                           dc.b $00
[000b81fc]                           dc.b $00
[000b81fd]                           dc.b $00
[000b81fe]                           dc.b $00
[000b81ff]                           dc.b $00
[000b8200]                           dc.b $00
[000b8201]                           dc.b $00
[000b8202]                           dc.b $00
[000b8203]                           dc.b $00
_05_ED_TITLE:
[000b8204]                           dc.b $00
[000b8205]                           dc.b $07
[000b8206]                           dc.w $ffff
[000b8208]                           dc.w $ffff
[000b820a]                           dc.b $00
[000b820b]                           dc.b $18
[000b820c]                           dc.w $4005
[000b820e]                           dc.b $00
[000b820f]                           dc.b $00
[000b8210] 000b808c                  dc.l A_3DBUTTON06
[000b8214]                           dc.b $00
[000b8215]                           dc.b $1f
[000b8216]                           dc.b $00
[000b8217]                           dc.b $01
[000b8218]                           dc.b $00
[000b8219]                           dc.b $0c
[000b821a]                           dc.b $00
[000b821b]                           dc.b $02
_05aED_TITLE:
[000b821c] 00029f7e                  dc.l abort
[000b8220]                           dc.b $00
[000b8221]                           dc.b $00
[000b8222]                           dc.b $00
[000b8223]                           dc.b $00
[000b8224]                           dc.w $8000
[000b8226]                           dc.w $8841
[000b8228]                           dc.b $00
[000b8229]                           dc.b $00
[000b822a]                           dc.b $00
[000b822b]                           dc.b $00
[000b822c]                           dc.b $00
[000b822d]                           dc.b $00
[000b822e]                           dc.b $00
[000b822f]                           dc.b $00
[000b8230]                           dc.b $00
[000b8231]                           dc.b $00
[000b8232]                           dc.b $00
[000b8233]                           dc.b $00
_07_ED_TITLE:
[000b8234]                           dc.b $00
[000b8235]                           dc.b $09
[000b8236]                           dc.b $00
[000b8237]                           dc.b $08
[000b8238]                           dc.b $00
[000b8239]                           dc.b $08
[000b823a]                           dc.b $00
[000b823b]                           dc.b $1c
[000b823c]                           dc.b $00
[000b823d]                           dc.b $40
[000b823e]                           dc.b $00
[000b823f]                           dc.b $00
[000b8240] 000b7fd3                  dc.l TEXT_04
[000b8244]                           dc.b $00
[000b8245]                           dc.b $02
[000b8246]                           dc.b $00
[000b8247]                           dc.b $04
[000b8248]                           dc.b $00
[000b8249]                           dc.b $09
[000b824a]                           dc.b $00
[000b824b]                           dc.b $01
_08_ED_TITLE:
[000b824c]                           dc.b $00
[000b824d]                           dc.b $07
[000b824e]                           dc.w $ffff
[000b8250]                           dc.w $ffff
[000b8252]                           dc.b $00
[000b8253]                           dc.b $18
[000b8254]                           dc.b $00
[000b8255]                           dc.b $40
[000b8256]                           dc.b $00
[000b8257]                           dc.b $00
[000b8258] 000b80cc                  dc.l A_ARROWS02
[000b825c]                           dc.b $00
[000b825d]                           dc.b $00
[000b825e]                           dc.b $00
[000b825f]                           dc.b $00
[000b8260]                           dc.b $00
[000b8261]                           dc.b $01
[000b8262]                           dc.b $00
[000b8263]                           dc.b $01
_09_ED_TITLE:
[000b8264]                           dc.b $00
[000b8265]                           dc.b $0b
[000b8266]                           dc.b $00
[000b8267]                           dc.b $0a
[000b8268]                           dc.b $00
[000b8269]                           dc.b $0a
[000b826a]                           dc.b $00
[000b826b]                           dc.b $1c
[000b826c]                           dc.b $00
[000b826d]                           dc.b $40
[000b826e]                           dc.b $00
[000b826f]                           dc.b $00
[000b8270] 000b8004                  dc.l TEXT_12
[000b8274]                           dc.b $00
[000b8275]                           dc.b $1c
[000b8276]                           dc.b $00
[000b8277]                           dc.b $04
[000b8278]                           dc.b $00
[000b8279]                           dc.b $06
[000b827a]                           dc.b $00
[000b827b]                           dc.b $01
_10_ED_TITLE:
[000b827c]                           dc.b $00
[000b827d]                           dc.b $09
[000b827e]                           dc.w $ffff
[000b8280]                           dc.w $ffff
[000b8282]                           dc.b $00
[000b8283]                           dc.b $18
[000b8284]                           dc.b $00
[000b8285]                           dc.b $40
[000b8286]                           dc.b $00
[000b8287]                           dc.b $00
[000b8288] 000b80cc                  dc.l A_ARROWS02
[000b828c]                           dc.b $00
[000b828d]                           dc.b $00
[000b828e]                           dc.b $00
[000b828f]                           dc.b $00
[000b8290]                           dc.b $00
[000b8291]                           dc.b $01
[000b8292]                           dc.b $00
[000b8293]                           dc.b $01
_11_ED_TITLE:
[000b8294]                           dc.b $00
[000b8295]                           dc.b $0e
[000b8296]                           dc.b $00
[000b8297]                           dc.b $0d
[000b8298]                           dc.b $00
[000b8299]                           dc.b $0d
[000b829a]                           dc.b $00
[000b829b]                           dc.b $14
[000b829c]                           dc.b $00
[000b829d]                           dc.b $40
[000b829e]                           dc.b $00
[000b829f]                           dc.b $20
[000b82a0]                           dc.b $00
[000b82a1]                           dc.b $ff
[000b82a2]                           dc.w $1101
[000b82a4]                           dc.b $00
[000b82a5]                           dc.b $23
[000b82a6]                           dc.b $00
[000b82a7]                           dc.b $04
[000b82a8]                           dc.b $00
[000b82a9]                           dc.b $08
[000b82aa]                           dc.b $00
[000b82ab]                           dc.b $01
_11aED_TITLE:
[000b82ac] 00029bbe                  dc.l edti_size
[000b82b0]                           dc.b $00
[000b82b1]                           dc.b $00
[000b82b2]                           dc.b $00
[000b82b3]                           dc.b $00
[000b82b4]                           dc.w $8000
[000b82b6]                           dc.w $8847
[000b82b8]                           dc.b $00
[000b82b9]                           dc.b $00
[000b82ba]                           dc.b $00
[000b82bb]                           dc.b $00
[000b82bc]                           dc.b $00
[000b82bd]                           dc.b $00
[000b82be]                           dc.b $00
[000b82bf]                           dc.b $00
[000b82c0]                           dc.b $00
[000b82c1]                           dc.b $00
[000b82c2]                           dc.b $00
[000b82c3]                           dc.b $00
_13_ED_TITLE:
[000b82c4]                           dc.b $00
[000b82c5]                           dc.b $0b
[000b82c6]                           dc.w $ffff
[000b82c8]                           dc.w $ffff
[000b82ca]                           dc.b $00
[000b82cb]                           dc.b $18
[000b82cc]                           dc.b $00
[000b82cd]                           dc.b $00
[000b82ce]                           dc.b $00
[000b82cf]                           dc.b $00
[000b82d0] 000b804c                  dc.l A_3DBUTTON04
[000b82d4]                           dc.b $00
[000b82d5]                           dc.b $00
[000b82d6]                           dc.b $00
[000b82d7]                           dc.b $00
[000b82d8]                           dc.b $00
[000b82d9]                           dc.b $08
[000b82da]                           dc.b $00
[000b82db]                           dc.b $01
_14_ED_TITLE:
[000b82dc]                           dc.b $00
[000b82dd]                           dc.b $0f
[000b82de]                           dc.w $ffff
[000b82e0]                           dc.w $ffff
[000b82e2]                           dc.b $00
[000b82e3]                           dc.b $18
[000b82e4]                           dc.b $00
[000b82e5]                           dc.b $08
[000b82e6]                           dc.b $00
[000b82e7]                           dc.b $10
[000b82e8] 000b80ec                  dc.l A_BOXED02
[000b82ec]                           dc.b $00
[000b82ed]                           dc.b $02
[000b82ee]                           dc.b $00
[000b82ef]                           dc.b $06
[000b82f0]                           dc.b $00
[000b82f1]                           dc.b $18
[000b82f2]                           dc.b $00
[000b82f3]                           dc.b $01
_15_ED_TITLE:
[000b82f4]                           dc.b $00
[000b82f5]                           dc.b $10
[000b82f6]                           dc.w $ffff
[000b82f8]                           dc.w $ffff
[000b82fa]                           dc.b $00
[000b82fb]                           dc.b $1c
[000b82fc]                           dc.b $00
[000b82fd]                           dc.b $40
[000b82fe]                           dc.b $00
[000b82ff]                           dc.b $00
[000b8300] 000b800b                  dc.l TEXT_13
[000b8304]                           dc.b $00
[000b8305]                           dc.b $1c
[000b8306]                           dc.b $00
[000b8307]                           dc.b $06
[000b8308]                           dc.b $00
[000b8309]                           dc.b $06
[000b830a]                           dc.b $00
[000b830b]                           dc.b $01
_16_ED_TITLE:
[000b830c]                           dc.b $00
[000b830d]                           dc.b $12
[000b830e]                           dc.w $ffff
[000b8310]                           dc.w $ffff
[000b8312]                           dc.b $00
[000b8313]                           dc.b $1b
[000b8314]                           dc.b $00
[000b8315]                           dc.b $05
[000b8316]                           dc.b $00
[000b8317]                           dc.b $00
[000b8318]                           dc.w $43ff
[000b831a]                           dc.w $1121
[000b831c]                           dc.b $00
[000b831d]                           dc.b $23
[000b831e]                           dc.b $00
[000b831f]                           dc.b $06
[000b8320]                           dc.b $00
[000b8321]                           dc.b $03
[000b8322]                           dc.b $00
[000b8323]                           dc.b $01
_16aED_TITLE:
[000b8324] 00029cc8                  dc.l edti_trans
[000b8328]                           dc.b $00
[000b8329]                           dc.b $00
[000b832a]                           dc.b $00
[000b832b]                           dc.b $00
[000b832c]                           dc.w $8000
[000b832e]                           dc.b $00
[000b832f]                           dc.b $00
[000b8330]                           dc.b $00
[000b8331]                           dc.b $00
[000b8332]                           dc.b $00
[000b8333]                           dc.b $00
[000b8334]                           dc.b $00
[000b8335]                           dc.b $00
[000b8336]                           dc.b $00
[000b8337]                           dc.b $00
[000b8338]                           dc.b $00
[000b8339]                           dc.b $00
[000b833a]                           dc.b $00
[000b833b]                           dc.b $00
_18_ED_TITLE:
[000b833c]                           dc.b $00
[000b833d]                           dc.b $14
[000b833e]                           dc.w $ffff
[000b8340]                           dc.w $ffff
[000b8342]                           dc.b $00
[000b8343]                           dc.b $1b
[000b8344]                           dc.b $00
[000b8345]                           dc.b $05
[000b8346]                           dc.b $00
[000b8347]                           dc.b $00
[000b8348]                           dc.w $43ff
[000b834a]                           dc.w $11a1
[000b834c]                           dc.b $00
[000b834d]                           dc.b $27
[000b834e]                           dc.b $00
[000b834f]                           dc.b $06
[000b8350]                           dc.b $00
[000b8351]                           dc.b $03
[000b8352]                           dc.b $00
[000b8353]                           dc.b $01
_18aED_TITLE:
[000b8354] 00029b94                  dc.l edti_replace
[000b8358]                           dc.b $00
[000b8359]                           dc.b $00
[000b835a]                           dc.b $00
[000b835b]                           dc.b $00
[000b835c]                           dc.w $8000
[000b835e]                           dc.b $00
[000b835f]                           dc.b $00
[000b8360]                           dc.b $00
[000b8361]                           dc.b $00
[000b8362]                           dc.b $00
[000b8363]                           dc.b $00
[000b8364]                           dc.b $00
[000b8365]                           dc.b $00
[000b8366]                           dc.b $00
[000b8367]                           dc.b $00
[000b8368]                           dc.b $00
[000b8369]                           dc.b $00
[000b836a]                           dc.b $00
[000b836b]                           dc.b $00
_20_ED_TITLE:
[000b836c]                           dc.b $00
[000b836d]                           dc.b $19
[000b836e]                           dc.b $00
[000b836f]                           dc.b $15
[000b8370]                           dc.b $00
[000b8371]                           dc.b $18
[000b8372]                           dc.b $00
[000b8373]                           dc.b $18
[000b8374]                           dc.b $00
[000b8375]                           dc.b $40
[000b8376]                           dc.b $00
[000b8377]                           dc.b $00
[000b8378] 000b814c                  dc.l A_INNERFRAME03
[000b837c]                           dc.b $00
[000b837d]                           dc.b $01
[000b837e]                           dc.b $00
[000b837f]                           dc.b $08
[000b8380]                           dc.b $00
[000b8381]                           dc.b $2a
[000b8382]                           dc.b $00
[000b8383]                           dc.b $05
_21_ED_TITLE:
[000b8384]                           dc.b $00
[000b8385]                           dc.b $16
[000b8386]                           dc.w $ffff
[000b8388]                           dc.w $ffff
[000b838a]                           dc.b $00
[000b838b]                           dc.b $1c
[000b838c]                           dc.b $00
[000b838d]                           dc.b $00
[000b838e]                           dc.b $00
[000b838f]                           dc.b $00
[000b8390] 000b7fe7                  dc.l TEXT_06
[000b8394]                           dc.b $00
[000b8395]                           dc.b $01
[000b8396]                           dc.b $00
[000b8397]                           dc.b $01
[000b8398]                           dc.b $00
[000b8399]                           dc.b $0e
[000b839a]                           dc.b $00
[000b839b]                           dc.b $01
_22_ED_TITLE:
[000b839c]                           dc.b $00
[000b839d]                           dc.b $17
[000b839e]                           dc.w $ffff
[000b83a0]                           dc.w $ffff
[000b83a2]                           dc.b $00
[000b83a3]                           dc.b $1c
[000b83a4]                           dc.b $00
[000b83a5]                           dc.b $00
[000b83a6]                           dc.b $00
[000b83a7]                           dc.b $00
[000b83a8] 000b7ff6                  dc.l TEXT_07
[000b83ac]                           dc.b $00
[000b83ad]                           dc.b $01
[000b83ae]                           dc.b $00
[000b83af]                           dc.b $03
[000b83b0]                           dc.b $00
[000b83b1]                           dc.b $0d
[000b83b2]                           dc.b $00
[000b83b3]                           dc.b $01
_23_ED_TITLE:
[000b83b4]                           dc.b $00
[000b83b5]                           dc.b $18
[000b83b6]                           dc.w $ffff
[000b83b8]                           dc.w $ffff
[000b83ba]                           dc.b $00
[000b83bb]                           dc.b $18
[000b83bc]                           dc.b $00
[000b83bd]                           dc.b $08
[000b83be]                           dc.b $00
[000b83bf]                           dc.b $10
[000b83c0] 000b810c                  dc.l A_BOXED03
[000b83c4]                           dc.b $00
[000b83c5]                           dc.b $10
[000b83c6]                           dc.b $00
[000b83c7]                           dc.b $01
[000b83c8]                           dc.b $00
[000b83c9]                           dc.b $19
[000b83ca]                           dc.b $00
[000b83cb]                           dc.b $01
_24_ED_TITLE:
[000b83cc]                           dc.b $00
[000b83cd]                           dc.b $14
[000b83ce]                           dc.w $ffff
[000b83d0]                           dc.w $ffff
[000b83d2]                           dc.b $00
[000b83d3]                           dc.b $18
[000b83d4]                           dc.b $00
[000b83d5]                           dc.b $08
[000b83d6]                           dc.b $00
[000b83d7]                           dc.b $10
[000b83d8] 000b812c                  dc.l A_BOXED04
[000b83dc]                           dc.b $00
[000b83dd]                           dc.b $10
[000b83de]                           dc.b $00
[000b83df]                           dc.b $03
[000b83e0]                           dc.b $00
[000b83e1]                           dc.b $19
[000b83e2]                           dc.b $00
[000b83e3]                           dc.b $01
_25_ED_TITLE:
[000b83e4]                           dc.b $00
[000b83e5]                           dc.b $00
[000b83e6]                           dc.b $00
[000b83e7]                           dc.b $1b
[000b83e8]                           dc.b $00
[000b83e9]                           dc.b $1b
[000b83ea]                           dc.b $00
[000b83eb]                           dc.b $14
[000b83ec]                           dc.b $00
[000b83ed]                           dc.b $40
[000b83ee]                           dc.b $00
[000b83ef]                           dc.b $20
[000b83f0]                           dc.b $00
[000b83f1]                           dc.b $ff
[000b83f2]                           dc.w $1101
[000b83f4]                           dc.b $00
[000b83f5]                           dc.b $10
[000b83f6]                           dc.b $00
[000b83f7]                           dc.b $04
[000b83f8]                           dc.b $00
[000b83f9]                           dc.b $0a
[000b83fa]                           dc.b $00
[000b83fb]                           dc.b $01
_25aED_TITLE:
[000b83fc] 00029a52                  dc.l edti_pos
[000b8400]                           dc.b $00
[000b8401]                           dc.b $00
[000b8402]                           dc.b $00
[000b8403]                           dc.b $00
[000b8404]                           dc.w $8000
[000b8406]                           dc.w $8850
[000b8408]                           dc.b $00
[000b8409]                           dc.b $00
[000b840a]                           dc.b $00
[000b840b]                           dc.b $00
[000b840c]                           dc.b $00
[000b840d]                           dc.b $00
[000b840e]                           dc.b $00
[000b840f]                           dc.b $00
[000b8410]                           dc.b $00
[000b8411]                           dc.b $00
[000b8412]                           dc.b $00
[000b8413]                           dc.b $00
_27_ED_TITLE:
[000b8414]                           dc.b $00
[000b8415]                           dc.b $19
[000b8416]                           dc.w $ffff
[000b8418]                           dc.w $ffff
[000b841a]                           dc.b $00
[000b841b]                           dc.b $18
[000b841c]                           dc.b $00
[000b841d]                           dc.b $20
[000b841e]                           dc.b $00
[000b841f]                           dc.b $00
[000b8420] 000b80ac                  dc.l A_3DBUTTON27
[000b8424]                           dc.b $00
[000b8425]                           dc.b $00
[000b8426]                           dc.b $00
[000b8427]                           dc.b $00
[000b8428]                           dc.b $00
[000b8429]                           dc.b $0a
[000b842a]                           dc.b $00
[000b842b]                           dc.b $01
utitle:
[000b842c] 0005ad8e                  dc.l A_title
[000b8430]                           dc.b $00
[000b8431]                           dc.b $00
[000b8432]                           dc.b $00
[000b8433]                           dc.b $00
[000b8434] 00059318                  dc.l Auo_string
[000b8438] 000b84fa                  dc.l $000b84fa ; no symbol found
[000b843c]                           dc.b $00
[000b843d]                           dc.b $00
[000b843e]                           dc.b $00
[000b843f]                           dc.b $00
[000b8440]                           dc.b $00
[000b8441]                           dc.b $00
[000b8442]                           dc.b $00
[000b8443]                           dc.b $00
[000b8444]                           dc.b $00
[000b8445]                           dc.b $00
[000b8446]                           dc.b $00
[000b8447]                           dc.b $00
[000b8448]                           dc.b $00
[000b8449]                           dc.b $00
[000b844a]                           dc.b $00
[000b844b]                           dc.b $00
visual:
[000b844c]                           dc.w $ffff
[000b844e]                           dc.w $ffff
[000b8450]                           dc.w $ffff
[000b8452]                           dc.b $00
[000b8453]                           dc.b $18
[000b8454]                           dc.b $00
[000b8455]                           dc.b $00
[000b8456]                           dc.b $00
[000b8457]                           dc.b $00
[000b8458] 000b842c                  dc.l utitle
[000b845c]                           dc.b $00
[000b845d]                           dc.b $00
[000b845e]                           dc.b $00
[000b845f]                           dc.b $00
[000b8460]                           dc.b $00
[000b8461]                           dc.b $07
[000b8462]                           dc.b $00
[000b8463]                           dc.b $01
logical:
[000b8464]                           dc.w $ffff
[000b8466]                           dc.b $ff
[000b8467]                           dc.b $ff
[000b8468]                           dc.w $ffff
[000b846a]                           dc.b $00
[000b846b]                           dc.b $18
[000b846c]                           dc.b $00
[000b846d]                           dc.b $40
[000b846e]                           dc.b $00
[000b846f]                           dc.b $00
[000b8470] 000b842c                  dc.l utitle
[000b8474]                           dc.b $00
[000b8475]                           dc.b $00
[000b8476]                           dc.b $00
[000b8477]                           dc.b $00
[000b8478]                           dc.b $00
[000b8479]                           dc.b $07
[000b847a]                           dc.b $00
[000b847b]                           dc.b $01
aud:
[000b847c] 000b8500                  dc.l $000b8500 ; no symbol found
[000b8480] 000b8505                  dc.l $000b8505 ; no symbol found
[000b8484]                           dc.b $00
[000b8485]                           dc.b $02
[000b8486] 000b84fa                  dc.l $000b84fa ; no symbol found
[000b848a]                           dc.b $00
[000b848b]                           dc.b $00
[000b848c]                           dc.b $00
[000b848d]                           dc.b $00
[000b848e]                           dc.b $00
[000b848f]                           dc.b $00
[000b8490]                           dc.b $00
[000b8491]                           dc.b $00
[000b8492]                           dc.b $00
[000b8493]                           dc.b $00
[000b8494]                           dc.b $00
[000b8495]                           dc.b $00
[000b8496]                           dc.b $00
[000b8497]                           dc.b $00
[000b8498]                           dc.b $00
[000b8499]                           dc.b $00
[000b849a]                           dc.b $00
[000b849b]                           dc.b $00
[000b849c]                           dc.b $00
[000b849d]                           dc.b $00
[000b849e]                           dc.b $00
[000b849f]                           dc.b $00
[000b84a0]                           dc.b $00
[000b84a1]                           dc.b $00
[000b84a2]                           dc.b $00
[000b84a3]                           dc.b $00
[000b84a4]                           dc.b $00
[000b84a5]                           dc.b $00
[000b84a6]                           dc.b $00
[000b84a7]                           dc.b $00
[000b84a8]                           dc.b $00
[000b84a9]                           dc.b $00
data:
[000b84aa]                           dc.b 'A_title',0
[000b84b2]                           dc.b $00
[000b84b3]                           dc.b $00
[000b84b4]                           dc.b $00
[000b84b5]                           dc.b $00
[000b84b6]                           dc.b $00
[000b84b7]                           dc.b $00
[000b84b8]                           dc.b $00
[000b84b9]                           dc.b $00
[000b84ba]                           dc.b $00
[000b84bb]                           dc.b $00
[000b84bc]                           dc.b $00
[000b84bd]                           dc.b $00
[000b84be]                           dc.b $00
[000b84bf]                           dc.b $00
[000b84c0]                           dc.b $00
[000b84c1]                           dc.b $00
[000b84c2]                           dc.b $00
[000b84c3]                           dc.b $00
[000b84c4]                           dc.b $00
[000b84c5]                           dc.b $00
[000b84c6]                           dc.b $00
[000b84c7]                           dc.b $00
[000b84c8]                           dc.b $00
[000b84c9]                           dc.b $00
[000b84ca] 00029d40                  dc.l object_tree
[000b84ce] 00029efc                  dc.l test_it
[000b84d2] 00029fa4                  dc.l ok
[000b84d6] 00049b7c                  dc.l Aob_delete
[000b84da] 000b844c                  dc.l visual
[000b84de] 000b8464                  dc.l logical
[000b84e2] 000b847c                  dc.l aud
[000b84e6] 00029d0e                  dc.l minsize
[000b84ea]                           dc.b $00
[000b84eb]                           dc.b $00
[000b84ec]                           dc.b $00
[000b84ed]                           dc.b $00
[000b84ee] 000b8023                  dc.l title
[000b84f2] 000b8012                  dc.l help_title
[000b84f6]                           dc.b $00
[000b84f7]                           dc.b $00
[000b84f8]                           dc.b $00
[000b84f9]                           dc.b $00
[000b84fa]                           dc.b 'TITEL',0
[000b8500]                           dc.b '0x0L',0
[000b8505]                           dc.b 'Auo_string',0
[000b8510]                           dc.b '0x%lxL',0
	.even


	.bss

parm: ds.b 32
