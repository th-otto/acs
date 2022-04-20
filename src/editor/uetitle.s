edti_pos:
[00029a52] 48e7 0038                 movem.l    a2-a4,-(a7)
[00029a56] 514f                      subq.w     #8,a7
[00029a58] 41f9 000b db08            lea.l      $000BDB08,a0
[00029a5e] 4eb9 0004 9a5c            jsr        $00049A5C
[00029a64] 2448                      movea.l    a0,a2
[00029a66] 200a                      move.l     a2,d0
[00029a68] 6700 0122                 beq        $00029B8C
[00029a6c] 47f9 0010 1f12            lea.l      ACSblk,a3
[00029a72] 7019                      moveq.l    #25,d0
[00029a74] 2053                      movea.l    (a3),a0
[00029a76] 2268 0258                 movea.l    600(a0),a1
[00029a7a] 2269 0014                 movea.l    20(a1),a1
[00029a7e] 41d7                      lea.l      (a7),a0
[00029a80] 4eb9 0004 a3be            jsr        $0004A3BE
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
[00029aae] 670a                      beq.s      $00029ABA
[00029ab0] 5342                      subq.w     #1,d2
[00029ab2] 670e                      beq.s      $00029AC2
[00029ab4] 5342                      subq.w     #1,d2
[00029ab6] 6712                      beq.s      $00029ACA
[00029ab8] 6016                      bra.s      $00029AD0
[00029aba] 006a 0004 0022            ori.w      #$0004,34(a2)
[00029ac0] 600e                      bra.s      $00029AD0
[00029ac2] 006a 0004 003a            ori.w      #$0004,58(a2)
[00029ac8] 6006                      bra.s      $00029AD0
[00029aca] 006a 0004 0052            ori.w      #$0004,82(a2)
[00029ad0] 322f 0002                 move.w     2(a7),d1
[00029ad4] 3017                      move.w     (a7),d0
[00029ad6] 224a                      movea.l    a2,a1
[00029ad8] 2053                      movea.l    (a3),a0
[00029ada] 2068 0258                 movea.l    600(a0),a0
[00029ade] 4eb9 0004 948a            jsr        $0004948A
[00029ae4] 4a40                      tst.w      d0
[00029ae6] 6f00 009c                 ble        $00029B84
[00029aea] 2053                      movea.l    (a3),a0
[00029aec] 2268 025c                 movea.l    604(a0),a1
[00029af0] 2869 003c                 movea.l    60(a1),a4
[00029af4] 584c                      addq.w     #4,a4
[00029af6] 0294 ffff fffc            andi.l     #$FFFFFFFC,(a4)
[00029afc] 3200                      move.w     d0,d1
[00029afe] 5341                      subq.w     #1,d1
[00029b00] 670a                      beq.s      $00029B0C
[00029b02] 5341                      subq.w     #1,d1
[00029b04] 671c                      beq.s      $00029B22
[00029b06] 5341                      subq.w     #1,d1
[00029b08] 6734                      beq.s      $00029B3E
[00029b0a] 604c                      bra.s      $00029B58
[00029b0c] 43f9 000b d309            lea.l      $000BD309,a1
[00029b12] 701b                      moveq.l    #27,d0
[00029b14] 2053                      movea.l    (a3),a0
[00029b16] 2068 025c                 movea.l    604(a0),a0
[00029b1a] 4eb9 0004 afe0            jsr        $0004AFE0
[00029b20] 6036                      bra.s      $00029B58
[00029b22] 0094 0000 0001            ori.l      #$00000001,(a4)
[00029b28] 43f9 000b d311            lea.l      $000BD311,a1
[00029b2e] 701b                      moveq.l    #27,d0
[00029b30] 2053                      movea.l    (a3),a0
[00029b32] 2068 025c                 movea.l    604(a0),a0
[00029b36] 4eb9 0004 afe0            jsr        $0004AFE0
[00029b3c] 601a                      bra.s      $00029B58
[00029b3e] 0094 0000 0002            ori.l      #$00000002,(a4)
[00029b44] 43f9 000b d319            lea.l      $000BD319,a1
[00029b4a] 701b                      moveq.l    #27,d0
[00029b4c] 2053                      movea.l    (a3),a0
[00029b4e] 2068 025c                 movea.l    604(a0),a0
[00029b52] 4eb9 0004 afe0            jsr        $0004AFE0
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
[00029b84] 204a                      movea.l    a2,a0
[00029b86] 4eb9 0004 9b7c            jsr        $00049B7C
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
[00029bb6] 4eb9 0004 b846            jsr        $0004B846
[00029bbc] 4e75                      rts
edti_size:
[00029bbe] 48e7 0038                 movem.l    a2-a4,-(a7)
[00029bc2] 514f                      subq.w     #8,a7
[00029bc4] 41f9 000b dc40            lea.l      $000BDC40,a0
[00029bca] 4eb9 0004 9a5c            jsr        $00049A5C
[00029bd0] 2448                      movea.l    a0,a2
[00029bd2] 200a                      move.l     a2,d0
[00029bd4] 6700 00ea                 beq        $00029CC0
[00029bd8] 47f9 0010 1f12            lea.l      ACSblk,a3
[00029bde] 700b                      moveq.l    #11,d0
[00029be0] 2053                      movea.l    (a3),a0
[00029be2] 2268 0258                 movea.l    600(a0),a1
[00029be6] 2269 0014                 movea.l    20(a1),a1
[00029bea] 41d7                      lea.l      (a7),a0
[00029bec] 4eb9 0004 a3be            jsr        $0004A3BE
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
[00029c3a] 4eb9 0004 948a            jsr        $0004948A
[00029c40] 4a40                      tst.w      d0
[00029c42] 6f74                      ble.s      $00029CB8
[00029c44] 2053                      movea.l    (a3),a0
[00029c46] 2268 025c                 movea.l    604(a0),a1
[00029c4a] 2869 003c                 movea.l    60(a1),a4
[00029c4e] 584c                      addq.w     #4,a4
[00029c50] b07c 0001                 cmp.w      #$0001,d0
[00029c54] 661c                      bne.s      $00029C72
[00029c56] 0294 ffff fffb            andi.l     #$FFFFFFFB,(a4)
[00029c5c] 43f9 000b d322            lea.l      $000BD322,a1
[00029c62] 700d                      moveq.l    #13,d0
[00029c64] 2053                      movea.l    (a3),a0
[00029c66] 2068 025c                 movea.l    604(a0),a0
[00029c6a] 4eb9 0004 afe0            jsr        $0004AFE0
[00029c70] 601a                      bra.s      $00029C8C
[00029c72] 0094 0000 0004            ori.l      #$00000004,(a4)
[00029c78] 43f9 000b d327            lea.l      $000BD327,a1
[00029c7e] 700d                      moveq.l    #13,d0
[00029c80] 2053                      movea.l    (a3),a0
[00029c82] 2068 025c                 movea.l    604(a0),a0
[00029c86] 4eb9 0004 afe0            jsr        $0004AFE0
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
[00029cb8] 204a                      movea.l    a2,a0
[00029cba] 4eb9 0004 9b7c            jsr        $00049B7C
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
[00029cea] 4eb9 0004 b846            jsr        $0004B846
[00029cf0] 4e75                      rts
init_title:
[00029cf2] 2f0a                      move.l     a2,-(a7)
[00029cf4] 2f0b                      move.l     a3,-(a7)
[00029cf6] 2448                      movea.l    a0,a2
[00029cf8] 43f9 000b 84aa            lea.l      $000B84AA,a1
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
[00029d1a] 4eb9 0007 69b0            jsr        $000769B0
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
[00029d4a] 41f9 000b 818c            lea.l      $000B818C,a0
[00029d50] 4eb9 0004 9a5c            jsr        $00049A5C
[00029d56] 2448                      movea.l    a0,a2
[00029d58] 200a                      move.l     a2,d0
[00029d5a] 6606                      bne.s      $00029D62
[00029d5c] 91c8                      suba.l     a0,a0
[00029d5e] 6000 0194                 bra        $00029EF4
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
[00029d8a] 4eb9 0002 f23c            jsr        $0002F23C
[00029d90] 7002                      moveq.l    #2,d0
[00029d92] 224a                      movea.l    a2,a1
[00029d94] 2054                      movea.l    (a4),a0
[00029d96] 2068 0258                 movea.l    600(a0),a0
[00029d9a] 4eb9 0002 f23c            jsr        $0002F23C
[00029da0] 7017                      moveq.l    #23,d0
[00029da2] 224a                      movea.l    a2,a1
[00029da4] 2054                      movea.l    (a4),a0
[00029da6] 2068 0258                 movea.l    600(a0),a0
[00029daa] 4eb9 0002 f23c            jsr        $0002F23C
[00029db0] 7018                      moveq.l    #24,d0
[00029db2] 224a                      movea.l    a2,a1
[00029db4] 2054                      movea.l    (a4),a0
[00029db6] 2068 0258                 movea.l    600(a0),a0
[00029dba] 4eb9 0002 f23c            jsr        $0002F23C
[00029dc0] 286b 000c                 movea.l    12(a3),a4
[00029dc4] 4857                      pea.l      (a7)
[00029dc6] 43f9 000b 8510            lea.l      $000B8510,a1
[00029dcc] 2055                      movea.l    (a5),a0
[00029dce] 4eb9 0007 594a            jsr        $0007594A
[00029dd4] 584f                      addq.w     #4,a7
[00029dd6] 2957 0004                 move.l     (a7),4(a4)
[00029dda] 0c6d 0002 0008            cmpi.w     #$0002,8(a5)
[00029de0] 6610                      bne.s      $00029DF2
[00029de2] 226d 000a                 movea.l    10(a5),a1
[00029de6] 700e                      moveq.l    #14,d0
[00029de8] 204a                      movea.l    a2,a0
[00029dea] 4eb9 0004 afe0            jsr        $0004AFE0
[00029df0] 6020                      bra.s      $00029E12
[00029df2] 43f9 000b 84ff            lea.l      $000B84FF,a1
[00029df8] 7004                      moveq.l    #4,d0
[00029dfa] 204b                      movea.l    a3,a0
[00029dfc] 2c6c 0008                 movea.l    8(a4),a6
[00029e00] 4e96                      jsr        (a6)
[00029e02] 43f9 000b 84ff            lea.l      $000B84FF,a1
[00029e08] 700e                      moveq.l    #14,d0
[00029e0a] 204a                      movea.l    a2,a0
[00029e0c] 4eb9 0004 afe0            jsr        $0004AFE0
[00029e12] 7004                      moveq.l    #4,d0
[00029e14] c097                      and.l      (a7),d0
[00029e16] 6712                      beq.s      $00029E2A
[00029e18] 43f9 000b d327            lea.l      $000BD327,a1
[00029e1e] 204a                      movea.l    a2,a0
[00029e20] 700d                      moveq.l    #13,d0
[00029e22] 4eb9 0004 afe0            jsr        $0004AFE0
[00029e28] 6010                      bra.s      $00029E3A
[00029e2a] 43f9 000b d322            lea.l      $000BD322,a1
[00029e30] 700d                      moveq.l    #13,d0
[00029e32] 204a                      movea.l    a2,a0
[00029e34] 4eb9 0004 afe0            jsr        $0004AFE0
[00029e3a] 7003                      moveq.l    #3,d0
[00029e3c] c06f 0002                 and.w      2(a7),d0
[00029e40] 4a40                      tst.w      d0
[00029e42] 670a                      beq.s      $00029E4E
[00029e44] 5340                      subq.w     #1,d0
[00029e46] 6718                      beq.s      $00029E60
[00029e48] 5340                      subq.w     #1,d0
[00029e4a] 6726                      beq.s      $00029E72
[00029e4c] 6034                      bra.s      $00029E82
[00029e4e] 43f9 000b d309            lea.l      $000BD309,a1
[00029e54] 701b                      moveq.l    #27,d0
[00029e56] 204a                      movea.l    a2,a0
[00029e58] 4eb9 0004 afe0            jsr        $0004AFE0
[00029e5e] 6022                      bra.s      $00029E82
[00029e60] 43f9 000b d311            lea.l      $000BD311,a1
[00029e66] 701b                      moveq.l    #27,d0
[00029e68] 204a                      movea.l    a2,a0
[00029e6a] 4eb9 0004 afe0            jsr        $0004AFE0
[00029e70] 6010                      bra.s      $00029E82
[00029e72] 43f9 000b d319            lea.l      $000BD319,a1
[00029e78] 701b                      moveq.l    #27,d0
[00029e7a] 204a                      movea.l    a2,a0
[00029e7c] 4eb9 0004 afe0            jsr        $0004AFE0
[00029e82] 206a 0234                 movea.l    564(a2),a0
[00029e86] 2968 000c 0018            move.l     12(a0),24(a4)
[00029e8c] 206d 0026                 movea.l    38(a5),a0
[00029e90] 4eb9 0004 3a92            jsr        $00043A92
[00029e96] 4a40                      tst.w      d0
[00029e98] 6712                      beq.s      $00029EAC
[00029e9a] 43f9 000b 84ff            lea.l      $000B84FF,a1
[00029ea0] 7017                      moveq.l    #23,d0
[00029ea2] 204a                      movea.l    a2,a0
[00029ea4] 4eb9 0004 afe0            jsr        $0004AFE0
[00029eaa] 600e                      bra.s      $00029EBA
[00029eac] 226d 0026                 movea.l    38(a5),a1
[00029eb0] 7017                      moveq.l    #23,d0
[00029eb2] 204a                      movea.l    a2,a0
[00029eb4] 4eb9 0004 afe0            jsr        $0004AFE0
[00029eba] 206a 024c                 movea.l    588(a2),a0
[00029ebe] 2968 000c 001c            move.l     12(a0),28(a4)
[00029ec4] 206d 002a                 movea.l    42(a5),a0
[00029ec8] 4eb9 0004 3a92            jsr        $00043A92
[00029ece] 4a40                      tst.w      d0
[00029ed0] 6712                      beq.s      $00029EE4
[00029ed2] 43f9 000b 84ff            lea.l      $000B84FF,a1
[00029ed8] 7018                      moveq.l    #24,d0
[00029eda] 204a                      movea.l    a2,a0
[00029edc] 4eb9 0004 afe0            jsr        $0004AFE0
[00029ee2] 600e                      bra.s      $00029EF2
[00029ee4] 226d 002a                 movea.l    42(a5),a1
[00029ee8] 7018                      moveq.l    #24,d0
[00029eea] 204a                      movea.l    a2,a0
[00029eec] 4eb9 0004 afe0            jsr        $0004AFE0
[00029ef2] 204a                      movea.l    a2,a0
[00029ef4] 584f                      addq.w     #4,a7
[00029ef6] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00029efa] 4e75                      rts
test_it:
[00029efc] 2f0a                      move.l     a2,-(a7)
[00029efe] 2f0b                      move.l     a3,-(a7)
[00029f00] 2648                      movea.l    a0,a3
[00029f02] 2449                      movea.l    a1,a2
[00029f04] 22bc 0005 ad8e            move.l     #$0005AD8E,(a1)
[00029f0a] 486a 0004                 pea.l      4(a2)
[00029f0e] 43f9 000b 8510            lea.l      $000B8510,a1
[00029f14] 2050                      movea.l    (a0),a0
[00029f16] 4eb9 0007 594a            jsr        $0007594A
[00029f1c] 584f                      addq.w     #4,a7
[00029f1e] 257c 0005 9318 0008       move.l     #$00059318,8(a2)
[00029f26] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[00029f2c] 6608                      bne.s      $00029F36
[00029f2e] 256b 000a 000c            move.l     10(a3),12(a2)
[00029f34] 6004                      bra.s      $00029F3A
[00029f36] 42aa 000c                 clr.l      12(a2)
[00029f3a] 7000                      moveq.l    #0,d0
[00029f3c] 2540 0014                 move.l     d0,20(a2)
[00029f40] 2540 0010                 move.l     d0,16(a2)
[00029f44] 206b 0026                 movea.l    38(a3),a0
[00029f48] 4eb9 0004 3a92            jsr        $00043A92
[00029f4e] 4a40                      tst.w      d0
[00029f50] 6704                      beq.s      $00029F56
[00029f52] 91c8                      suba.l     a0,a0
[00029f54] 6004                      bra.s      $00029F5A
[00029f56] 206b 0026                 movea.l    38(a3),a0
[00029f5a] 2548 0018                 move.l     a0,24(a2)
[00029f5e] 206b 002a                 movea.l    42(a3),a0
[00029f62] 4eb9 0004 3a92            jsr        $00043A92
[00029f68] 4a40                      tst.w      d0
[00029f6a] 6704                      beq.s      $00029F70
[00029f6c] 91c8                      suba.l     a0,a0
[00029f6e] 6004                      bra.s      $00029F74
[00029f70] 206b 002a                 movea.l    42(a3),a0
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
[00029fbe] 47f9 000f f62a            lea.l      $000FF62A,a3
[00029fc4] 2f2c 0004                 move.l     4(a4),-(a7)
[00029fc8] 43f9 000b 8510            lea.l      $000B8510,a1
[00029fce] 204b                      movea.l    a3,a0
[00029fd0] 4eb9 0007 5680            jsr        $00075680
[00029fd6] 584f                      addq.w     #4,a7
[00029fd8] 49ef 0004                 lea.l      4(a7),a4
[00029fdc] 288b                      move.l     a3,(a4)
[00029fde] 297c 000b 8505 0004       move.l     #$000B8505,4(a4)
[00029fe6] 43d7                      lea.l      (a7),a1
[00029fe8] 7003                      moveq.l    #3,d0
[00029fea] 41ea 0150                 lea.l      336(a2),a0
[00029fee] 4eb9 0005 e010            jsr        $0005E010
[00029ff4] 2057                      movea.l    (a7),a0
[00029ff6] 4eb9 0007 69b0            jsr        $000769B0
[00029ffc] 5680                      addq.l     #3,d0
[00029ffe] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a004] 3228 0012                 move.w     18(a0),d1
[0002a008] 48c1                      ext.l      d1
[0002a00a] 4eb9 0007 7676            jsr        $00077676
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
[0002a048] 4eb9 0005 e010            jsr        $0005E010
[0002a04e] 206c 0026                 movea.l    38(a4),a0
[0002a052] 4eb9 0004 3a92            jsr        $00043A92
[0002a058] 4a40                      tst.w      d0
[0002a05a] 6704                      beq.s      $0002A060
[0002a05c] 42ac 0026                 clr.l      38(a4)
[0002a060] 43ec 002a                 lea.l      42(a4),a1
[0002a064] 7003                      moveq.l    #3,d0
[0002a066] 41ea 0240                 lea.l      576(a2),a0
[0002a06a] 4eb9 0005 e010            jsr        $0005E010
[0002a070] 206c 002a                 movea.l    42(a4),a0
[0002a074] 4eb9 0004 3a92            jsr        $00043A92
[0002a07a] 4a40                      tst.w      d0
[0002a07c] 6704                      beq.s      $0002A082
[0002a07e] 42ac 002a                 clr.l      42(a4)
[0002a082] 2079 0010 1f12            movea.l    ACSblk,a0
[0002a088] 3228 0014                 move.w     20(a0),d1
[0002a08c] 3003                      move.w     d3,d0
[0002a08e] 204c                      movea.l    a4,a0
[0002a090] 2279 000b 84ea            movea.l    $000B84EA,a1
[0002a096] 2269 0004                 movea.l    4(a1),a1
[0002a09a] 4e91                      jsr        (a1)
[0002a09c] 6100 fee0                 bsr        $00029F7E
[0002a0a0] 4fef 0032                 lea.l      50(a7),a7
[0002a0a4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002a0a8] 4e75                      rts
