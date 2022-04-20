
align:
[00023aee] 48e7 1f20                 movem.l    d3-d7/a2,-(a7)
[00023af2] 554f                      subq.w     #2,a7
[00023af4] 2448                      movea.l    a0,a2
[00023af6] 3c2a 000a                 move.w     10(a2),d6
[00023afa] 3206                      move.w     d6,d1
[00023afc] 48c1                      ext.l      d1
[00023afe] 2001                      move.l     d1,d0
[00023b00] e788                      lsl.l      #3,d0
[00023b02] 9081                      sub.l      d1,d0
[00023b04] e788                      lsl.l      #3,d0
[00023b06] 3632 080a                 move.w     10(a2,d0.l),d3
[00023b0a] 3003                      move.w     d3,d0
[00023b0c] 48c0                      ext.l      d0
[00023b0e] 2400                      move.l     d0,d2
[00023b10] e78a                      lsl.l      #3,d2
[00023b12] 9480                      sub.l      d0,d2
[00023b14] e78a                      lsl.l      #3,d2
[00023b16] 3eb2 2818                 move.w     24(a2,d2.l),(a7)
[00023b1a] 3406                      move.w     d6,d2
[00023b1c] 48c2                      ext.l      d2
[00023b1e] 2202                      move.l     d2,d1
[00023b20] e789                      lsl.l      #3,d1
[00023b22] 9282                      sub.l      d2,d1
[00023b24] e789                      lsl.l      #3,d1
[00023b26] 3c32 1808                 move.w     8(a2,d1.l),d6
[00023b2a] 2200                      move.l     d0,d1
[00023b2c] e789                      lsl.l      #3,d1
[00023b2e] 9280                      sub.l      d0,d1
[00023b30] e789                      lsl.l      #3,d1
[00023b32] 3a32 180a                 move.w     10(a2,d1.l),d5
[00023b36] 3205                      move.w     d5,d1
[00023b38] 48c1                      ext.l      d1
[00023b3a] 2401                      move.l     d1,d2
[00023b3c] e78a                      lsl.l      #3,d2
[00023b3e] 9481                      sub.l      d1,d2
[00023b40] e78a                      lsl.l      #3,d2
[00023b42] 0272 dfff 2812            andi.w     #$DFFF,18(a2,d2.l)
[00023b48] 3406                      move.w     d6,d2
[00023b4a] 48c2                      ext.l      d2
[00023b4c] 2002                      move.l     d2,d0
[00023b4e] e788                      lsl.l      #3,d0
[00023b50] 9082                      sub.l      d2,d0
[00023b52] e788                      lsl.l      #3,d0
[00023b54] 3c32 080a                 move.w     10(a2,d0.l),d6
[00023b58] 3406                      move.w     d6,d2
[00023b5a] 48c2                      ext.l      d2
[00023b5c] 2002                      move.l     d2,d0
[00023b5e] e788                      lsl.l      #3,d0
[00023b60] 9082                      sub.l      d2,d0
[00023b62] e788                      lsl.l      #3,d0
[00023b64] 3e32 080a                 move.w     10(a2,d0.l),d7
[00023b68] 3832 081c                 move.w     28(a2,d0.l),d4
[00023b6c] 3407                      move.w     d7,d2
[00023b6e] 48c2                      ext.l      d2
[00023b70] 2202                      move.l     d2,d1
[00023b72] e789                      lsl.l      #3,d1
[00023b74] 9282                      sub.l      d2,d1
[00023b76] e789                      lsl.l      #3,d1
[00023b78] 3584 181c                 move.w     d4,28(a2,d1.l)
[00023b7c] 3e32 1808                 move.w     8(a2,d1.l),d7
[00023b80] 3407                      move.w     d7,d2
[00023b82] 48c2                      ext.l      d2
[00023b84] 2202                      move.l     d2,d1
[00023b86] e789                      lsl.l      #3,d1
[00023b88] 9282                      sub.l      d2,d1
[00023b8a] e789                      lsl.l      #3,d1
[00023b8c] 3584 181c                 move.w     d4,28(a2,d1.l)
[00023b90] 4244                      clr.w      d4
[00023b92] 6034                      bra.s      align_1
align_2:
[00023b94] 3205                      move.w     d5,d1
[00023b96] 48c1                      ext.l      d1
[00023b98] 2001                      move.l     d1,d0
[00023b9a] e788                      lsl.l      #3,d0
[00023b9c] 9081                      sub.l      d1,d0
[00023b9e] e788                      lsl.l      #3,d0
[00023ba0] 4272 081a                 clr.w      26(a2,d0.l)
[00023ba4] 3584 0818                 move.w     d4,24(a2,d0.l)
[00023ba8] 3404                      move.w     d4,d2
[00023baa] d457                      add.w      (a7),d2
[00023bac] 3206                      move.w     d6,d1
[00023bae] 48c1                      ext.l      d1
[00023bb0] 2e01                      move.l     d1,d7
[00023bb2] e78f                      lsl.l      #3,d7
[00023bb4] 9e81                      sub.l      d1,d7
[00023bb6] e78f                      lsl.l      #3,d7
[00023bb8] 3582 7818                 move.w     d2,24(a2,d7.l)
[00023bbc] d872 081c                 add.w      28(a2,d0.l),d4
[00023bc0] 3a32 0808                 move.w     8(a2,d0.l),d5
[00023bc4] 3c32 7808                 move.w     8(a2,d7.l),d6
align_1:
[00023bc8] b645                      cmp.w      d5,d3
[00023bca] 66c8                      bne.s      align_2
[00023bcc] 3203                      move.w     d3,d1
[00023bce] 48c1                      ext.l      d1
[00023bd0] 2001                      move.l     d1,d0
[00023bd2] e788                      lsl.l      #3,d0
[00023bd4] 9081                      sub.l      d1,d0
[00023bd6] e788                      lsl.l      #3,d0
[00023bd8] 3584 081c                 move.w     d4,28(a2,d0.l)
[00023bdc] 544f                      addq.w     #2,a7
[00023bde] 4cdf 04f8                 movem.l    (a7)+,d3-d7/a2
[00023be2] 4e75                      rts

find_drop:
[00023be4] 48e7 1e20                 movem.l    d3-d6/a2,-(a7)
[00023be8] 2448                      movea.l    a0,a2
[00023bea] 3c00                      move.w     d0,d6
[00023bec] 7a01                      moveq.l    #1,d5
[00023bee] da6a 0002                 add.w      2(a2),d5
[00023bf2] 7201                      moveq.l    #1,d1
[00023bf4] 3005                      move.w     d5,d0
[00023bf6] 48c0                      ext.l      d0
[00023bf8] 2400                      move.l     d0,d2
[00023bfa] d482                      add.l      d2,d2
[00023bfc] d480                      add.l      d0,d2
[00023bfe] e78a                      lsl.l      #3,d2
[00023c00] d272 2802                 add.w      2(a2,d2.l),d1
[00023c04] 3a01                      move.w     d1,d5
[00023c06] 7601                      moveq.l    #1,d3
[00023c08] 48c1                      ext.l      d1
[00023c0a] 2001                      move.l     d1,d0
[00023c0c] d080                      add.l      d0,d0
[00023c0e] d081                      add.l      d1,d0
[00023c10] e788                      lsl.l      #3,d0
[00023c12] d672 0802                 add.w      2(a2,d0.l),d3
[00023c16] 7801                      moveq.l    #1,d4
[00023c18] 3003                      move.w     d3,d0
[00023c1a] 48c0                      ext.l      d0
[00023c1c] 2400                      move.l     d0,d2
[00023c1e] d482                      add.l      d2,d2
[00023c20] d480                      add.l      d0,d2
[00023c22] e78a                      lsl.l      #3,d2
[00023c24] d872 2802                 add.w      2(a2,d2.l),d4
[00023c28] 7201                      moveq.l    #1,d1
[00023c2a] 3005                      move.w     d5,d0
[00023c2c] 48c0                      ext.l      d0
[00023c2e] 2400                      move.l     d0,d2
[00023c30] d482                      add.l      d2,d2
[00023c32] d480                      add.l      d0,d2
[00023c34] e78a                      lsl.l      #3,d2
[00023c36] d272 2800                 add.w      0(a2,d2.l),d1
[00023c3a] 3a01                      move.w     d1,d5
[00023c3c] 7001                      moveq.l    #1,d0
[00023c3e] 48c1                      ext.l      d1
[00023c40] 2401                      move.l     d1,d2
[00023c42] d482                      add.l      d2,d2
[00023c44] d481                      add.l      d1,d2
[00023c46] e78a                      lsl.l      #3,d2
[00023c48] d072 2802                 add.w      2(a2,d2.l),d0
[00023c4c] 3a00                      move.w     d0,d5
[00023c4e] 6030                      bra.s      find_drop_1
find_drop_4:
[00023c50] bc44                      cmp.w      d4,d6
[00023c52] 6604                      bne.s      find_drop_2
[00023c54] 3005                      move.w     d5,d0
[00023c56] 6032                      bra.s      find_drop_3
find_drop_2:
[00023c58] 7001                      moveq.l    #1,d0
[00023c5a] 3404                      move.w     d4,d2
[00023c5c] 48c2                      ext.l      d2
[00023c5e] 2202                      move.l     d2,d1
[00023c60] d281                      add.l      d1,d1
[00023c62] d282                      add.l      d2,d1
[00023c64] e789                      lsl.l      #3,d1
[00023c66] d072 1800                 add.w      0(a2,d1.l),d0
[00023c6a] 3800                      move.w     d0,d4
[00023c6c] 7201                      moveq.l    #1,d1
[00023c6e] 3005                      move.w     d5,d0
[00023c70] 48c0                      ext.l      d0
[00023c72] 2400                      move.l     d0,d2
[00023c74] d482                      add.l      d2,d2
[00023c76] d480                      add.l      d0,d2
[00023c78] e78a                      lsl.l      #3,d2
[00023c7a] d272 2800                 add.w      0(a2,d2.l),d1
[00023c7e] 3a01                      move.w     d1,d5
find_drop_1:
[00023c80] 7001                      moveq.l    #1,d0
[00023c82] d043                      add.w      d3,d0
[00023c84] b840                      cmp.w      d0,d4
[00023c86] 66c8                      bne.s      find_drop_4
[00023c88] 70ff                      moveq.l    #-1,d0
find_drop_3:
[00023c8a] 4cdf 0478                 movem.l    (a7)+,d3-d6/a2
[00023c8e] 4e75                      rts

find_title:
[00023c90] 48e7 1e20                 movem.l    d3-d6/a2,-(a7)
[00023c94] 2448                      movea.l    a0,a2
[00023c96] 3c00                      move.w     d0,d6
[00023c98] 7801                      moveq.l    #1,d4
[00023c9a] d86a 0002                 add.w      2(a2),d4
[00023c9e] 7201                      moveq.l    #1,d1
[00023ca0] 3004                      move.w     d4,d0
[00023ca2] 48c0                      ext.l      d0
[00023ca4] 2400                      move.l     d0,d2
[00023ca6] d482                      add.l      d2,d2
[00023ca8] d480                      add.l      d0,d2
[00023caa] e78a                      lsl.l      #3,d2
[00023cac] d272 2802                 add.w      2(a2,d2.l),d1
[00023cb0] 3801                      move.w     d1,d4
[00023cb2] 7601                      moveq.l    #1,d3
[00023cb4] 48c1                      ext.l      d1
[00023cb6] 2001                      move.l     d1,d0
[00023cb8] d080                      add.l      d0,d0
[00023cba] d081                      add.l      d1,d0
[00023cbc] e788                      lsl.l      #3,d0
[00023cbe] d672 0802                 add.w      2(a2,d0.l),d3
[00023cc2] 7401                      moveq.l    #1,d2
[00023cc4] 3203                      move.w     d3,d1
[00023cc6] 48c1                      ext.l      d1
[00023cc8] 2001                      move.l     d1,d0
[00023cca] d080                      add.l      d0,d0
[00023ccc] d081                      add.l      d1,d0
[00023cce] e788                      lsl.l      #3,d0
[00023cd0] d472 0802                 add.w      2(a2,d0.l),d2
[00023cd4] 3602                      move.w     d2,d3
[00023cd6] 7001                      moveq.l    #1,d0
[00023cd8] 3404                      move.w     d4,d2
[00023cda] 48c2                      ext.l      d2
[00023cdc] 2202                      move.l     d2,d1
[00023cde] d281                      add.l      d1,d1
[00023ce0] d282                      add.l      d2,d1
[00023ce2] e789                      lsl.l      #3,d1
[00023ce4] d072 1800                 add.w      0(a2,d1.l),d0
[00023ce8] 3800                      move.w     d0,d4
[00023cea] 7a01                      moveq.l    #1,d5
[00023cec] 48c0                      ext.l      d0
[00023cee] 2200                      move.l     d0,d1
[00023cf0] d281                      add.l      d1,d1
[00023cf2] d280                      add.l      d0,d1
[00023cf4] e789                      lsl.l      #3,d1
[00023cf6] da72 1802                 add.w      2(a2,d1.l),d5
[00023cfa] 6030                      bra.s      find_title_1
find_title_4:
[00023cfc] bc45                      cmp.w      d5,d6
[00023cfe] 6604                      bne.s      find_title_2
[00023d00] 3003                      move.w     d3,d0
[00023d02] 6032                      bra.s      find_title_3
find_title_2:
[00023d04] 7001                      moveq.l    #1,d0
[00023d06] 3403                      move.w     d3,d2
[00023d08] 48c2                      ext.l      d2
[00023d0a] 2202                      move.l     d2,d1
[00023d0c] d281                      add.l      d1,d1
[00023d0e] d282                      add.l      d2,d1
[00023d10] e789                      lsl.l      #3,d1
[00023d12] d072 1800                 add.w      0(a2,d1.l),d0
[00023d16] 3600                      move.w     d0,d3
[00023d18] 7201                      moveq.l    #1,d1
[00023d1a] 3005                      move.w     d5,d0
[00023d1c] 48c0                      ext.l      d0
[00023d1e] 2400                      move.l     d0,d2
[00023d20] d482                      add.l      d2,d2
[00023d22] d480                      add.l      d0,d2
[00023d24] e78a                      lsl.l      #3,d2
[00023d26] d272 2800                 add.w      0(a2,d2.l),d1
[00023d2a] 3a01                      move.w     d1,d5
find_title_1:
[00023d2c] 7001                      moveq.l    #1,d0
[00023d2e] d044                      add.w      d4,d0
[00023d30] ba40                      cmp.w      d0,d5
[00023d32] 66c8                      bne.s      find_title_4
[00023d34] 70ff                      moveq.l    #-1,d0
find_title_3:
[00023d36] 4cdf 0478                 movem.l    (a7)+,d3-d6/a2
[00023d3a] 4e75                      rts

me_init:
[00023d3c] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[00023d40] 2648                      movea.l    a0,a3
[00023d42] 2450                      movea.l    (a0),a2
[00023d44] 226a 0004                 movea.l    4(a2),a1
[00023d48] 2069 0004                 movea.l    4(a1),a0
[00023d4c] 6100 fda0                 bsr        align
[00023d50] 204b                      movea.l    a3,a0
[00023d52] 4eb9 0002 aada            jsr        ed_init
[00023d58] 3600                      move.w     d0,d3
[00023d5a] 4a40                      tst.w      d0
[00023d5c] 6600 0252                 bne        me_init_1
[00023d60] 266b 0014                 movea.l    20(a3),a3
[00023d64] 284b                      movea.l    a3,a4
[00023d66] 3c2b 0002                 move.w     2(a3),d6
[00023d6a] 3406                      move.w     d6,d2
[00023d6c] 48c2                      ext.l      d2
[00023d6e] 2202                      move.l     d2,d1
[00023d70] d281                      add.l      d1,d1
[00023d72] d282                      add.l      d2,d1
[00023d74] e789                      lsl.l      #3,d1
[00023d76] 3033 1810                 move.w     16(a3,d1.l),d0
[00023d7a] d040                      add.w      d0,d0
[00023d7c] 916b 0014                 sub.w      d0,20(a3)
[00023d80] 3033 1812                 move.w     18(a3,d1.l),d0
[00023d84] d040                      add.w      d0,d0
[00023d86] 916b 0016                 sub.w      d0,22(a3)
[00023d8a] 4240                      clr.w      d0
[00023d8c] 3780 1828                 move.w     d0,40(a3,d1.l)
[00023d90] 3780 1810                 move.w     d0,16(a3,d1.l)
[00023d94] 91c8                      suba.l     a0,a0
[00023d96] 3788 182a                 move.w     a0,42(a3,d1.l)
[00023d9a] 3788 1812                 move.w     a0,18(a3,d1.l)
[00023d9e] 4273 1820                 clr.w      32(a3,d1.l)
[00023da2] 3c33 181a                 move.w     26(a3,d1.l),d6
[00023da6] 3206                      move.w     d6,d1
[00023da8] 48c1                      ext.l      d1
[00023daa] 2001                      move.l     d1,d0
[00023dac] d080                      add.l      d0,d0
[00023dae] d081                      add.l      d1,d0
[00023db0] e788                      lsl.l      #3,d0
[00023db2] 27bc 00ff 1100 080c       move.l     #$00FF1100,12(a3,d0.l)
[00023dba] 0073 1800 0820            ori.w      #$1800,32(a3,d0.l)
[00023dc0] 29bc 0002 43b8 0834       move.l     #mbar_dragged,52(a4,d0.l)
[00023dc8] 29bc 0002 4406 0830       move.l     #new_title,48(a4,d0.l)
[00023dd0] 3833 081a                 move.w     26(a3,d0.l),d4
[00023dd4] 3204                      move.w     d4,d1
[00023dd6] 48c1                      ext.l      d1
[00023dd8] 2401                      move.l     d1,d2
[00023dda] d482                      add.l      d2,d2
[00023ddc] d481                      add.l      d1,d2
[00023dde] e78a                      lsl.l      #3,d2
[00023de0] 4273 2820                 clr.w      32(a3,d2.l)
[00023de4] 3a33 281a                 move.w     26(a3,d2.l),d5
[00023de8] 3205                      move.w     d5,d1
[00023dea] 48c1                      ext.l      d1
[00023dec] 2001                      move.l     d1,d0
[00023dee] d080                      add.l      d0,d0
[00023df0] d081                      add.l      d1,d0
[00023df2] e788                      lsl.l      #3,d0
[00023df4] 2073 080c                 movea.l    12(a3,d0.l),a0
[00023df8] 4eb9 0004 371c            jsr        Ast_delete
[00023dfe] 41f9 000a f1e0            lea.l      $000AF1E0,a0
[00023e04] 4eb9 0004 36d6            jsr        Ast_create
[00023e0a] 3205                      move.w     d5,d1
[00023e0c] 48c1                      ext.l      d1
[00023e0e] 2001                      move.l     d1,d0
[00023e10] d080                      add.l      d0,d0
[00023e12] d081                      add.l      d1,d0
[00023e14] e788                      lsl.l      #3,d0
[00023e16] 2788 080c                 move.l     a0,12(a3,d0.l)
[00023e1a] 0073 1800 0820            ori.w      #$1800,32(a3,d0.l)
[00023e20] 29bc 0002 4406 0830       move.l     #new_title,48(a4,d0.l)
[00023e28] 6020                      bra.s      me_init_2
me_init_3:
[00023e2a] 3205                      move.w     d5,d1
[00023e2c] 48c1                      ext.l      d1
[00023e2e] 2001                      move.l     d1,d0
[00023e30] d080                      add.l      d0,d0
[00023e32] d081                      add.l      d1,d0
[00023e34] e788                      lsl.l      #3,d0
[00023e36] 0073 1800 0820            ori.w      #$1800,32(a3,d0.l)
[00023e3c] 39bc 2af9 0846            move.w     #$2AF9,70(a4,d0.l)
[00023e42] 29bc 0002 4962 0830       move.l     #title_edit,48(a4,d0.l)
me_init_2:
[00023e4a] 3205                      move.w     d5,d1
[00023e4c] 48c1                      ext.l      d1
[00023e4e] 2001                      move.l     d1,d0
[00023e50] d080                      add.l      d0,d0
[00023e52] d081                      add.l      d1,d0
[00023e54] e788                      lsl.l      #3,d0
[00023e56] 29bc 0002 4904 0834       move.l     #title_dragged,52(a4,d0.l)
[00023e5e] 3a33 0818                 move.w     24(a3,d0.l),d5
[00023e62] 7001                      moveq.l    #1,d0
[00023e64] d044                      add.w      d4,d0
[00023e66] ba40                      cmp.w      d0,d5
[00023e68] 66c0                      bne.s      me_init_3
[00023e6a] 3406                      move.w     d6,d2
[00023e6c] 48c2                      ext.l      d2
[00023e6e] 2202                      move.l     d2,d1
[00023e70] d281                      add.l      d1,d1
[00023e72] d282                      add.l      d2,d1
[00023e74] e789                      lsl.l      #3,d1
[00023e76] 3a33 1818                 move.w     24(a3,d1.l),d5
[00023e7a] 3005                      move.w     d5,d0
[00023e7c] 48c0                      ext.l      d0
[00023e7e] 2c00                      move.l     d0,d6
[00023e80] dc86                      add.l      d6,d6
[00023e82] dc80                      add.l      d0,d6
[00023e84] e78e                      lsl.l      #3,d6
[00023e86] 29bc 0002 4406 6830       move.l     #new_title,48(a4,d6.l)
[00023e8e] 3c33 681a                 move.w     26(a3,d6.l),d6
[00023e92] 3406                      move.w     d6,d2
[00023e94] 48c2                      ext.l      d2
[00023e96] 2202                      move.l     d2,d1
[00023e98] d281                      add.l      d1,d1
[00023e9a] d282                      add.l      d2,d1
[00023e9c] e789                      lsl.l      #3,d1
[00023e9e] 4273 1820                 clr.w      32(a3,d1.l)
[00023ea2] 42b4 1834                 clr.l      52(a4,d1.l)
[00023ea6] 3e33 181a                 move.w     26(a3,d1.l),d7
[00023eaa] 3407                      move.w     d7,d2
[00023eac] 48c2                      ext.l      d2
[00023eae] 2002                      move.l     d2,d0
[00023eb0] d080                      add.l      d0,d0
[00023eb2] d082                      add.l      d2,d0
[00023eb4] e788                      lsl.l      #3,d0
[00023eb6] 29bc 0002 450a 0830       move.l     #obspec_only,48(a4,d0.l)
[00023ebe] 3e33 0818                 move.w     24(a3,d0.l),d7
[00023ec2] 7001                      moveq.l    #1,d0
[00023ec4] d046                      add.w      d6,d0
[00023ec6] be40                      cmp.w      d0,d7
[00023ec8] 6700 0080                 beq        me_init_4
[00023ecc] 3207                      move.w     d7,d1
[00023ece] 48c1                      ext.l      d1
[00023ed0] 2401                      move.l     d1,d2
[00023ed2] d482                      add.l      d2,d2
[00023ed4] d481                      add.l      d1,d2
[00023ed6] e78a                      lsl.l      #3,d2
[00023ed8] 29bc 0002 450a 2830       move.l     #obspec_only,48(a4,d2.l)
[00023ee0] 3e33 2818                 move.w     24(a3,d2.l),d7
[00023ee4] be40                      cmp.w      d0,d7
[00023ee6] 6762                      beq.s      me_init_4
[00023ee8] 603a                      bra.s      me_init_5
me_init_6:
[00023eea] 3207                      move.w     d7,d1
[00023eec] 48c1                      ext.l      d1
[00023eee] 2001                      move.l     d1,d0
[00023ef0] d080                      add.l      d0,d0
[00023ef2] d081                      add.l      d1,d0
[00023ef4] e788                      lsl.l      #3,d0
[00023ef6] 4273 0820                 clr.w      32(a3,d0.l)
[00023efa] 2073 080c                 movea.l    12(a3,d0.l),a0
[00023efe] 4eb9 0004 371c            jsr        Ast_delete
[00023f04] 41f9 000a f1e6            lea.l      $000AF1E6,a0
[00023f0a] 4eb9 0004 36d6            jsr        Ast_create
[00023f10] 3207                      move.w     d7,d1
[00023f12] 48c1                      ext.l      d1
[00023f14] 2001                      move.l     d1,d0
[00023f16] d080                      add.l      d0,d0
[00023f18] d081                      add.l      d1,d0
[00023f1a] e788                      lsl.l      #3,d0
[00023f1c] 2788 080c                 move.l     a0,12(a3,d0.l)
[00023f20] 3e33 0818                 move.w     24(a3,d0.l),d7
me_init_5:
[00023f24] 7001                      moveq.l    #1,d0
[00023f26] d046                      add.w      d6,d0
[00023f28] be40                      cmp.w      d0,d7
[00023f2a] 66be                      bne.s      me_init_6
[00023f2c] 601c                      bra.s      me_init_4
me_init_7:
[00023f2e] 3206                      move.w     d6,d1
[00023f30] 48c1                      ext.l      d1
[00023f32] 2001                      move.l     d1,d0
[00023f34] d080                      add.l      d0,d0
[00023f36] d081                      add.l      d1,d0
[00023f38] e788                      lsl.l      #3,d0
[00023f3a] 0073 0080 0808            ori.w      #$0080,8(a3,d0.l)
[00023f40] 0073 0080 0820            ori.w      #$0080,32(a3,d0.l)
[00023f46] 3c33 0818                 move.w     24(a3,d0.l),d6
me_init_4:
[00023f4a] 7001                      moveq.l    #1,d0
[00023f4c] d045                      add.w      d5,d0
[00023f4e] bc40                      cmp.w      d0,d6
[00023f50] 66dc                      bne.s      me_init_7
[00023f52] 3c2a 0018                 move.w     24(a2),d6
[00023f56] 4a46                      tst.w      d6
[00023f58] 6f56                      ble.s      me_init_1
[00023f5a] 204b                      movea.l    a3,a0
[00023f5c] 3006                      move.w     d6,d0
[00023f5e] 6100 fd30                 bsr        find_title
[00023f62] 3e00                      move.w     d0,d7
[00023f64] 48c0                      ext.l      d0
[00023f66] 2200                      move.l     d0,d1
[00023f68] d281                      add.l      d1,d1
[00023f6a] d280                      add.l      d0,d1
[00023f6c] e789                      lsl.l      #3,d1
[00023f6e] 0073 0001 18f2            ori.w      #$0001,-14(a3,d1.l)
[00023f74] 7401                      moveq.l    #1,d2
[00023f76] 3204                      move.w     d4,d1
[00023f78] 48c1                      ext.l      d1
[00023f7a] 2a01                      move.l     d1,d5
[00023f7c] da85                      add.l      d5,d5
[00023f7e] da81                      add.l      d1,d5
[00023f80] e78d                      lsl.l      #3,d5
[00023f82] d473 581a                 add.w      26(a3,d5.l),d2
[00023f86] be42                      cmp.w      d2,d7
[00023f88] 670e                      beq.s      me_init_8
[00023f8a] 2800                      move.l     d0,d4
[00023f8c] d884                      add.l      d4,d4
[00023f8e] d880                      add.l      d0,d4
[00023f90] e78c                      lsl.l      #3,d4
[00023f92] 0073 0001 480a            ori.w      #$0001,10(a3,d4.l)
me_init_8:
[00023f98] 3206                      move.w     d6,d1
[00023f9a] 48c1                      ext.l      d1
[00023f9c] 2001                      move.l     d1,d0
[00023f9e] d080                      add.l      d0,d0
[00023fa0] d081                      add.l      d1,d0
[00023fa2] e788                      lsl.l      #3,d0
[00023fa4] 0273 ff7f 08f0            andi.w     #$FF7F,-16(a3,d0.l)
[00023faa] 0273 ff7f 0808            andi.w     #$FF7F,8(a3,d0.l)
me_init_1:
[00023fb0] 3003                      move.w     d3,d0
[00023fb2] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[00023fb6] 4e75                      rts

me_make:
[00023fb8] 48e7 0038                 movem.l    a2-a4,-(a7)
[00023fbc] 594f                      subq.w     #4,a7
[00023fbe] 2e88                      move.l     a0,(a7)
[00023fc0] 2668 0004                 movea.l    4(a0),a3
[00023fc4] 286b 0012                 movea.l    18(a3),a4
[00023fc8] 200c                      move.l     a4,d0
[00023fca] 670c                      beq.s      me_make_1
[00023fcc] 204c                      movea.l    a4,a0
[00023fce] 4eb9 0004 f0ca            jsr        Awi_show
[00023fd4] 6000 008a                 bra        me_make_2
me_make_1:
[00023fd8] 7032                      moveq.l    #50,d0
[00023fda] 4eb9 0004 7cc8            jsr        Ax_malloc
[00023fe0] 2448                      movea.l    a0,a2
[00023fe2] 200a                      move.l     a2,d0
[00023fe4] 6776                      beq.s      me_make_3
[00023fe6] 2257                      movea.l    (a7),a1
[00023fe8] 2091                      move.l     (a1),(a0)
[00023fea] 2569 0004 0004            move.l     4(a1),4(a2)
[00023ff0] 357c 0001 0008            move.w     #$0001,8(a2)
[00023ff6] 357c ffff 0018            move.w     #$FFFF,24(a2)
[00023ffc] 357c ffff 000a            move.w     #$FFFF,10(a2)
[00024002] 42aa 001e                 clr.l      30(a2)
[00024006] 41eb 0016                 lea.l      22(a3),a0
[0002400a] 23c8 000b c924            move.l     a0,$000BC924
[00024010] 2279 000b c930            movea.l    $000BC930,a1
[00024016] 2348 0008                 move.l     a0,8(a1)
[0002401a] 41f9 000b c8d6            lea.l      WI_MENU,a0
[00024020] 4eb9 0004 f41a            jsr        Awi_create
[00024026] 2848                      movea.l    a0,a4
[00024028] 200c                      move.l     a4,d0
[0002402a] 6730                      beq.s      me_make_3
[0002402c] 2257                      movea.l    (a7),a1
[0002402e] 2051                      movea.l    (a1),a0
[00024030] 4868 0168                 pea.l      360(a0)
[00024034] 43eb 003a                 lea.l      58(a3),a1
[00024038] 204c                      movea.l    a4,a0
[0002403a] 4eb9 0001 47a8            jsr        wi_pos
[00024040] 584f                      addq.w     #4,a7
[00024042] 288a                      move.l     a2,(a4)
[00024044] 274c 0012                 move.l     a4,18(a3)
[00024048] 204c                      movea.l    a4,a0
[0002404a] 226c 000c                 movea.l    12(a4),a1
[0002404e] 4e91                      jsr        (a1)
[00024050] 4a40                      tst.w      d0
[00024052] 670c                      beq.s      me_make_2
[00024054] 204c                      movea.l    a4,a0
[00024056] 4eb9 0002 af6a            jsr        ed_term
me_make_3:
[0002405c] 91c8                      suba.l     a0,a0
[0002405e] 6002                      bra.s      me_make_4
me_make_2:
[00024060] 204c                      movea.l    a4,a0
me_make_4:
[00024062] 584f                      addq.w     #4,a7
[00024064] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00024068] 4e75                      rts

make_title:
[0002406a] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0002406e] 4fef ffe2                 lea.l      -30(a7),a7
[00024072] 2448                      movea.l    a0,a2
[00024074] 3f40 001c                 move.w     d0,28(a7)
[00024078] 3f41 001a                 move.w     d1,26(a7)
[0002407c] 3f42 0018                 move.w     d2,24(a7)
[00024080] 2279 0010 1f12            movea.l    ACSblk,a1
[00024086] 2f69 0240 0014            move.l     576(a1),20(a7)
[0002408c] 48c0                      ext.l      d0
[0002408e] 2400                      move.l     d0,d2
[00024090] d482                      add.l      d2,d2
[00024092] d480                      add.l      d0,d2
[00024094] e78a                      lsl.l      #3,d2
[00024096] 206f 0014                 movea.l    20(a7),a0
[0002409a] 2668 0014                 movea.l    20(a0),a3
[0002409e] 47f3 2818                 lea.l      24(a3,d2.l),a3
[000240a2] 0c6b 2af8 0016            cmpi.w     #$2AF8,22(a3)
[000240a8] 670a                      beq.s      make_title_1
[000240aa] 0c6b 2af9 0016            cmpi.w     #$2AF9,22(a3)
[000240b0] 6600 02fc                 bne        make_title_2
make_title_1:
[000240b4] 2f6b 000c 0008            move.l     12(a3),8(a7)
[000240ba] 206f 0008                 movea.l    8(a7),a0
[000240be] 2a68 0004                 movea.l    4(a0),a5
[000240c2] 3f6b 0012 000c            move.w     18(a3),12(a7)
[000240c8] 322f 000c                 move.w     12(a7),d1
[000240cc] 48c1                      ext.l      d1
[000240ce] 2001                      move.l     d1,d0
[000240d0] e788                      lsl.l      #3,d0
[000240d2] 9081                      sub.l      d1,d0
[000240d4] e788                      lsl.l      #3,d0
[000240d6] 0c35 0020 080f            cmpi.b     #$20,15(a5,d0.l)
[000240dc] 6600 02d0                 bne        make_title_2
[000240e0] 0c75 ffff 080a            cmpi.w     #$FFFF,10(a5,d0.l)
[000240e6] 6600 02c6                 bne        make_title_2
[000240ea] 2f52 0004                 move.l     (a2),4(a7)
[000240ee] 226f 0004                 movea.l    4(a7),a1
[000240f2] 2e91                      move.l     (a1),(a7)
[000240f4] 2869 0004                 movea.l    4(a1),a4
[000240f8] 342f 0018                 move.w     24(a7),d2
[000240fc] 6700 00a6                 beq        make_title_3
[00024100] 0c6b 2af8 0016            cmpi.w     #$2AF8,22(a3)
[00024106] 6700 009c                 beq        make_title_3
[0002410a] 306f 001a                 movea.w    26(a7),a0
[0002410e] b0ef 001c                 cmpa.w     28(a7),a0
[00024112] 6700 029a                 beq        make_title_2
[00024116] 7201                      moveq.l    #1,d1
[00024118] 3408                      move.w     a0,d2
[0002411a] 48c2                      ext.l      d2
[0002411c] 2002                      move.l     d2,d0
[0002411e] d080                      add.l      d0,d0
[00024120] d082                      add.l      d2,d0
[00024122] e788                      lsl.l      #3,d0
[00024124] 226a 0014                 movea.l    20(a2),a1
[00024128] d271 0800                 add.w      0(a1,d0.l),d1
[0002412c] b26f 001c                 cmp.w      28(a7),d1
[00024130] 6700 027c                 beq        make_title_2
[00024134] 7cfe                      moveq.l    #-2,d6
[00024136] dc6f 001c                 add.w      28(a7),d6
[0002413a] 48c6                      ext.l      d6
[0002413c] 8dfc 0003                 divs.w     #$0003,d6
[00024140] 2049                      movea.l    a1,a0
[00024142] 302f 001c                 move.w     28(a7),d0
[00024146] 6100 fa9c                 bsr        find_drop
[0002414a] 3e00                      move.w     d0,d7
[0002414c] 7afe                      moveq.l    #-2,d5
[0002414e] da40                      add.w      d0,d5
[00024150] 48c5                      ext.l      d5
[00024152] 8bfc 0003                 divs.w     #$0003,d5
[00024156] 204d                      movea.l    a5,a0
[00024158] 3006                      move.w     d6,d0
[0002415a] 4eb9 0002 bbf8            jsr        unlink_ob
[00024160] 3205                      move.w     d5,d1
[00024162] 48c1                      ext.l      d1
[00024164] 2001                      move.l     d1,d0
[00024166] e788                      lsl.l      #3,d0
[00024168] 9081                      sub.l      d1,d0
[0002416a] e788                      lsl.l      #3,d0
[0002416c] 3f75 080a 000e            move.w     10(a5,d0.l),14(a7)
[00024172] 3635 080c                 move.w     12(a5,d0.l),d3
[00024176] 74ff                      moveq.l    #-1,d2
[00024178] 3b82 080c                 move.w     d2,12(a5,d0.l)
[0002417c] 3b82 080a                 move.w     d2,10(a5,d0.l)
[00024180] 204d                      movea.l    a5,a0
[00024182] 3005                      move.w     d5,d0
[00024184] 4eb9 0002 bbf8            jsr        unlink_ob
[0002418a] 3205                      move.w     d5,d1
[0002418c] 48c1                      ext.l      d1
[0002418e] 2001                      move.l     d1,d0
[00024190] e788                      lsl.l      #3,d0
[00024192] 9081                      sub.l      d1,d0
[00024194] e788                      lsl.l      #3,d0
[00024196] 3baf 000e 080a            move.w     14(a7),10(a5,d0.l)
[0002419c] 3b83 080c                 move.w     d3,12(a5,d0.l)
[000241a0] 6000 00bc                 bra        make_title_4
make_title_3:
[000241a4] 0c6b 2af8 0016            cmpi.w     #$2AF8,22(a3)
[000241aa] 661c                      bne.s      make_title_5
[000241ac] 4879 000a f19e            pea.l      protodrop
[000241b2] 4240                      clr.w      d0
[000241b4] 224c                      movea.l    a4,a1
[000241b6] 206f 0004                 movea.l    4(a7),a0
[000241ba] 4eb9 0002 b77e            jsr        copysub_ob
[000241c0] 584f                      addq.w     #4,a7
[000241c2] 3a00                      move.w     d0,d5
[000241c4] 6000 0080                 bra        make_title_6
make_title_5:
[000241c8] 382d 000a                 move.w     10(a5),d4
[000241cc] 3204                      move.w     d4,d1
[000241ce] 48c1                      ext.l      d1
[000241d0] 2001                      move.l     d1,d0
[000241d2] e788                      lsl.l      #3,d0
[000241d4] 9081                      sub.l      d1,d0
[000241d6] e788                      lsl.l      #3,d0
[000241d8] 3f75 080a 0012            move.w     10(a5,d0.l),18(a7)
[000241de] 3f75 0808 0010            move.w     8(a5,d0.l),16(a7)
[000241e4] 362f 0012                 move.w     18(a7),d3
[000241e8] 48c3                      ext.l      d3
[000241ea] 2403                      move.l     d3,d2
[000241ec] e78a                      lsl.l      #3,d2
[000241ee] 9483                      sub.l      d3,d2
[000241f0] e78a                      lsl.l      #3,d2
[000241f2] 3635 280a                 move.w     10(a5,d2.l),d3
[000241f6] 302f 0010                 move.w     16(a7),d0
[000241fa] 48c0                      ext.l      d0
[000241fc] 2200                      move.l     d0,d1
[000241fe] e789                      lsl.l      #3,d1
[00024200] 9280                      sub.l      d0,d1
[00024202] e789                      lsl.l      #3,d1
[00024204] 3e35 180a                 move.w     10(a5,d1.l),d7
[00024208] 6020                      bra.s      make_title_7
make_title_8:
[0002420a] 3203                      move.w     d3,d1
[0002420c] 48c1                      ext.l      d1
[0002420e] 2001                      move.l     d1,d0
[00024210] e788                      lsl.l      #3,d0
[00024212] 9081                      sub.l      d1,d0
[00024214] e788                      lsl.l      #3,d0
[00024216] 3635 0808                 move.w     8(a5,d0.l),d3
[0002421a] 3207                      move.w     d7,d1
[0002421c] 48c1                      ext.l      d1
[0002421e] 2001                      move.l     d1,d0
[00024220] e788                      lsl.l      #3,d0
[00024222] 9081                      sub.l      d1,d0
[00024224] e788                      lsl.l      #3,d0
[00024226] 3e35 0808                 move.w     8(a5,d0.l),d7
make_title_7:
[0002422a] b66f 000c                 cmp.w      12(a7),d3
[0002422e] 66da                      bne.s      make_title_8
[00024230] 2f2f 0008                 move.l     8(a7),-(a7)
[00024234] 3007                      move.w     d7,d0
[00024236] 224c                      movea.l    a4,a1
[00024238] 206f 0004                 movea.l    4(a7),a0
[0002423c] 4eb9 0002 b77e            jsr        copysub_ob
[00024242] 584f                      addq.w     #4,a7
[00024244] 3a00                      move.w     d0,d5
make_title_6:
[00024246] 2f2f 0008                 move.l     8(a7),-(a7)
[0002424a] 302f 0010                 move.w     16(a7),d0
[0002424e] 224c                      movea.l    a4,a1
[00024250] 206f 0004                 movea.l    4(a7),a0
[00024254] 4eb9 0002 b77e            jsr        copysub_ob
[0002425a] 584f                      addq.w     #4,a7
[0002425c] 3c00                      move.w     d0,d6
make_title_4:
[0002425e] 302f 001c                 move.w     28(a7),d0
[00024262] 206f 0014                 movea.l    20(a7),a0
[00024266] 4eb9 0004 492a            jsr        Adr_del
[0002426c] 2a6c 0004                 movea.l    4(a4),a5
[00024270] 3206                      move.w     d6,d1
[00024272] 48c1                      ext.l      d1
[00024274] 2001                      move.l     d1,d0
[00024276] e788                      lsl.l      #3,d0
[00024278] 9081                      sub.l      d1,d0
[0002427a] e788                      lsl.l      #3,d0
[0002427c] 3bbc 0301 081e            move.w     #$0301,30(a5,d0.l)
[00024282] 382d 000a                 move.w     10(a5),d4
[00024286] 3604                      move.w     d4,d3
[00024288] 48c3                      ext.l      d3
[0002428a] 2403                      move.l     d3,d2
[0002428c] e78a                      lsl.l      #3,d2
[0002428e] 9483                      sub.l      d3,d2
[00024290] e78a                      lsl.l      #3,d2
[00024292] 3f75 280a 0012            move.w     10(a5,d2.l),18(a7)
[00024298] 3f75 2808 0010            move.w     8(a5,d2.l),16(a7)
[0002429e] 76fe                      moveq.l    #-2,d3
[000242a0] d66f 001a                 add.w      26(a7),d3
[000242a4] 48c3                      ext.l      d3
[000242a6] 87fc 0003                 divs.w     #$0003,d3
[000242aa] 302f 0012                 move.w     18(a7),d0
[000242ae] 48c0                      ext.l      d0
[000242b0] 2800                      move.l     d0,d4
[000242b2] e78c                      lsl.l      #3,d4
[000242b4] 9880                      sub.l      d0,d4
[000242b6] e78c                      lsl.l      #3,d4
[000242b8] 3835 480c                 move.w     12(a5,d4.l),d4
[000242bc] b843                      cmp.w      d3,d4
[000242be] 667c                      bne.s      make_title_9
[000242c0] 322f 0010                 move.w     16(a7),d1
[000242c4] 48c1                      ext.l      d1
[000242c6] 2401                      move.l     d1,d2
[000242c8] e78a                      lsl.l      #3,d2
[000242ca] 9481                      sub.l      d1,d2
[000242cc] e78a                      lsl.l      #3,d2
[000242ce] 3e35 280c                 move.w     12(a5,d2.l),d7
[000242d2] 3406                      move.w     d6,d2
[000242d4] 48c2                      ext.l      d2
[000242d6] 2002                      move.l     d2,d0
[000242d8] e788                      lsl.l      #3,d0
[000242da] 9082                      sub.l      d2,d0
[000242dc] e788                      lsl.l      #3,d0
[000242de] 3baf 0012 0808            move.w     18(a7),8(a5,d0.l)
[000242e4] 302f 0012                 move.w     18(a7),d0
[000242e8] 48c0                      ext.l      d0
[000242ea] 2200                      move.l     d0,d1
[000242ec] e789                      lsl.l      #3,d1
[000242ee] 9280                      sub.l      d0,d1
[000242f0] e789                      lsl.l      #3,d1
[000242f2] 3b86 180c                 move.w     d6,12(a5,d1.l)
[000242f6] 3204                      move.w     d4,d1
[000242f8] 48c1                      ext.l      d1
[000242fa] 2401                      move.l     d1,d2
[000242fc] e78a                      lsl.l      #3,d2
[000242fe] 9481                      sub.l      d1,d2
[00024300] e78a                      lsl.l      #3,d2
[00024302] 3b86 2808                 move.w     d6,8(a5,d2.l)
[00024306] 3005                      move.w     d5,d0
[00024308] 48c0                      ext.l      d0
[0002430a] 2800                      move.l     d0,d4
[0002430c] e78c                      lsl.l      #3,d4
[0002430e] 9880                      sub.l      d0,d4
[00024310] e78c                      lsl.l      #3,d4
[00024312] 3baf 0010 4808            move.w     16(a7),8(a5,d4.l)
[00024318] 322f 0010                 move.w     16(a7),d1
[0002431c] 48c1                      ext.l      d1
[0002431e] 2401                      move.l     d1,d2
[00024320] e78a                      lsl.l      #3,d2
[00024322] 9481                      sub.l      d1,d2
[00024324] e78a                      lsl.l      #3,d2
[00024326] 3b85 280c                 move.w     d5,12(a5,d2.l)
[0002432a] 3007                      move.w     d7,d0
[0002432c] 48c0                      ext.l      d0
[0002432e] 2800                      move.l     d0,d4
[00024330] e78c                      lsl.l      #3,d4
[00024332] 9880                      sub.l      d0,d4
[00024334] e78c                      lsl.l      #3,d4
[00024336] 3b85 4808                 move.w     d5,8(a5,d4.l)
[0002433a] 605a                      bra.s      make_title_10
make_title_9:
[0002433c] 302f 001a                 move.w     26(a7),d0
[00024340] 206a 0014                 movea.l    20(a2),a0
[00024344] 6100 f89e                 bsr        find_drop
[00024348] 3e00                      move.w     d0,d7
[0002434a] 5547                      subq.w     #2,d7
[0002434c] 48c7                      ext.l      d7
[0002434e] 8ffc 0003                 divs.w     #$0003,d7
[00024352] 3203                      move.w     d3,d1
[00024354] 48c1                      ext.l      d1
[00024356] 2001                      move.l     d1,d0
[00024358] e788                      lsl.l      #3,d0
[0002435a] 9081                      sub.l      d1,d0
[0002435c] e788                      lsl.l      #3,d0
[0002435e] 3806                      move.w     d6,d4
[00024360] 48c4                      ext.l      d4
[00024362] 2404                      move.l     d4,d2
[00024364] e78a                      lsl.l      #3,d2
[00024366] 9484                      sub.l      d4,d2
[00024368] e78a                      lsl.l      #3,d2
[0002436a] 3bb5 0808 2808            move.w     8(a5,d0.l),8(a5,d2.l)
[00024370] 3b86 0808                 move.w     d6,8(a5,d0.l)
[00024374] 3c07                      move.w     d7,d6
[00024376] 48c6                      ext.l      d6
[00024378] 2606                      move.l     d6,d3
[0002437a] e78b                      lsl.l      #3,d3
[0002437c] 9686                      sub.l      d6,d3
[0002437e] e78b                      lsl.l      #3,d3
[00024380] 3405                      move.w     d5,d2
[00024382] 48c2                      ext.l      d2
[00024384] 2202                      move.l     d2,d1
[00024386] e789                      lsl.l      #3,d1
[00024388] 9282                      sub.l      d2,d1
[0002438a] e789                      lsl.l      #3,d1
[0002438c] 3bb5 3808 1808            move.w     8(a5,d3.l),8(a5,d1.l)
[00024392] 3b85 3808                 move.w     d5,8(a5,d3.l)
make_title_10:
[00024396] 204d                      movea.l    a5,a0
[00024398] 6100 f754                 bsr        align
[0002439c] 204a                      movea.l    a2,a0
[0002439e] 226a 0010                 movea.l    16(a2),a1
[000243a2] 4e91                      jsr        (a1)
[000243a4] 4240                      clr.w      d0
[000243a6] 204a                      movea.l    a2,a0
[000243a8] 4eb9 0004 b846            jsr        Awi_obredraw
make_title_2:
[000243ae] 4fef 001e                 lea.l      30(a7),a7
[000243b2] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[000243b6] 4e75                      rts

mbar_dragged:
[000243b8] 2f03                      move.l     d3,-(a7)
[000243ba] 2f0a                      move.l     a2,-(a7)
[000243bc] 2079 0010 1f12            movea.l    ACSblk,a0
[000243c2] 2468 025c                 movea.l    604(a0),a2
[000243c6] 362a 0002                 move.w     2(a2),d3
[000243ca] 48c3                      ext.l      d3
[000243cc] 2403                      move.l     d3,d2
[000243ce] d482                      add.l      d2,d2
[000243d0] d483                      add.l      d3,d2
[000243d2] e78a                      lsl.l      #3,d2
[000243d4] 3432 281a                 move.w     26(a2,d2.l),d2
[000243d8] 48c2                      ext.l      d2
[000243da] 2202                      move.l     d2,d1
[000243dc] d281                      add.l      d1,d1
[000243de] d282                      add.l      d2,d1
[000243e0] e789                      lsl.l      #3,d1
[000243e2] 3232 181a                 move.w     26(a2,d1.l),d1
[000243e6] 48c1                      ext.l      d1
[000243e8] 2001                      move.l     d1,d0
[000243ea] d080                      add.l      d0,d0
[000243ec] d081                      add.l      d1,d0
[000243ee] e788                      lsl.l      #3,d0
[000243f0] 3632 081c                 move.w     28(a2,d0.l),d3
[000243f4] 2068 0258                 movea.l    600(a0),a0
[000243f8] 3003                      move.w     d3,d0
[000243fa] 4eb9 0002 491a            jsr        tdragged
[00024400] 245f                      movea.l    (a7)+,a2
[00024402] 261f                      move.l     (a7)+,d3
[00024404] 4e75                      rts

new_title:
[00024406] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[0002440a] 2079 0010 1f12            movea.l    ACSblk,a0
[00024410] 2468 0258                 movea.l    600(a0),a2
[00024414] 3628 0260                 move.w     608(a0),d3
[00024418] 266a 0014                 movea.l    20(a2),a3
[0002441c] 2852                      movea.l    (a2),a4
[0002441e] 382c 0018                 move.w     24(a4),d4
[00024422] 4a44                      tst.w      d4
[00024424] 6f60                      ble.s      new_title_1
[00024426] 3004                      move.w     d4,d0
[00024428] 204b                      movea.l    a3,a0
[0002442a] 6100 f864                 bsr        find_title
[0002442e] 3a00                      move.w     d0,d5
[00024430] b640                      cmp.w      d0,d3
[00024432] 6700 00d0                 beq        new_title_2
[00024436] 4eb9 0004 4a26            jsr        Adr_unselect
[0002443c] 3205                      move.w     d5,d1
[0002443e] 48c1                      ext.l      d1
[00024440] 2001                      move.l     d1,d0
[00024442] d080                      add.l      d0,d0
[00024444] d081                      add.l      d1,d0
[00024446] e788                      lsl.l      #3,d0
[00024448] 0273 fffe 08f2            andi.w     #$FFFE,-14(a3,d0.l)
[0002444e] 0273 fffe 080a            andi.w     #$FFFE,10(a3,d0.l)
[00024454] 3204                      move.w     d4,d1
[00024456] 48c1                      ext.l      d1
[00024458] 2401                      move.l     d1,d2
[0002445a] d482                      add.l      d2,d2
[0002445c] d481                      add.l      d1,d2
[0002445e] e78a                      lsl.l      #3,d2
[00024460] 0073 0080 28f0            ori.w      #$0080,-16(a3,d2.l)
[00024466] 0073 0080 2808            ori.w      #$0080,8(a3,d2.l)
[0002446c] 0273 e7ff 2808            andi.w     #$E7FF,8(a3,d2.l)
[00024472] 204a                      movea.l    a2,a0
[00024474] 3005                      move.w     d5,d0
[00024476] 4eb9 0004 b846            jsr        Awi_obredraw
[0002447c] 3004                      move.w     d4,d0
[0002447e] 204a                      movea.l    a2,a0
[00024480] 4eb9 0004 b846            jsr        Awi_obredraw
new_title_1:
[00024486] 3003                      move.w     d3,d0
[00024488] 204b                      movea.l    a3,a0
[0002448a] 6100 f758                 bsr        find_drop
[0002448e] 3a00                      move.w     d0,d5
[00024490] 3940 0018                 move.w     d0,24(a4)
[00024494] 397c ffff 000a            move.w     #$FFFF,10(a4)
[0002449a] 4a40                      tst.w      d0
[0002449c] 6b66                      bmi.s      new_title_2
[0002449e] 3403                      move.w     d3,d2
[000244a0] 48c2                      ext.l      d2
[000244a2] 2202                      move.l     d2,d1
[000244a4] d281                      add.l      d1,d1
[000244a6] d282                      add.l      d2,d1
[000244a8] e789                      lsl.l      #3,d1
[000244aa] 0073 0001 18f2            ori.w      #$0001,-14(a3,d1.l)
[000244b0] 48c0                      ext.l      d0
[000244b2] 2800                      move.l     d0,d4
[000244b4] d884                      add.l      d4,d4
[000244b6] d880                      add.l      d0,d4
[000244b8] e78c                      lsl.l      #3,d4
[000244ba] 0273 ff7f 48f0            andi.w     #$FF7F,-16(a3,d4.l)
[000244c0] 0273 ff7f 4808            andi.w     #$FF7F,8(a3,d4.l)
[000244c6] 0073 1800 4808            ori.w      #$1800,8(a3,d4.l)
[000244cc] 204a                      movea.l    a2,a0
[000244ce] 3003                      move.w     d3,d0
[000244d0] 4eb9 0004 b846            jsr        Awi_obredraw
[000244d6] 3005                      move.w     d5,d0
[000244d8] 204a                      movea.l    a2,a0
[000244da] 4eb9 0004 b846            jsr        Awi_obredraw
[000244e0] 3205                      move.w     d5,d1
[000244e2] 48c1                      ext.l      d1
[000244e4] 2001                      move.l     d1,d0
[000244e6] d080                      add.l      d0,d0
[000244e8] d081                      add.l      d1,d0
[000244ea] e788                      lsl.l      #3,d0
[000244ec] 41f3 0818                 lea.l      24(a3,d0.l),a0
[000244f0] 2428 0004                 move.l     4(a0),d2
[000244f4] 670e                      beq.s      new_title_2
[000244f6] 76fe                      moveq.l    #-2,d3
[000244f8] d645                      add.w      d5,d3
[000244fa] 48c3                      ext.l      d3
[000244fc] 87fc 0003                 divs.w     #$0003,d3
[00024500] 3943 000a                 move.w     d3,10(a4)
new_title_2:
[00024504] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[00024508] 4e75                      rts

obspec_only:
[0002450a] 2079 0010 1f12            movea.l    ACSblk,a0
[00024510] 2268 0258                 movea.l    600(a0),a1
[00024514] 2051                      movea.l    (a1),a0
[00024516] 70fe                      moveq.l    #-2,d0
[00024518] 2279 0010 1f12            movea.l    ACSblk,a1
[0002451e] d069 0260                 add.w      608(a1),d0
[00024522] 48c0                      ext.l      d0
[00024524] 81fc 0003                 divs.w     #$0003,d0
[00024528] 3140 000a                 move.w     d0,10(a0)
[0002452c] 317c ffff 0018            move.w     #$FFFF,24(a0)
[00024532] 4eb9 0002 def8            jsr        edob_specs
[00024538] 4e75                      rts

me_service:
[0002453a] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0002453e] 2448                      movea.l    a0,a2
[00024540] 3600                      move.w     d0,d3
[00024542] 2849                      movea.l    a1,a4
[00024544] b07c 000b                 cmp.w      #$000B,d0
[00024548] 660a                      bne.s      me_service_1
[0002454a] 4eb9 0002 45b8            jsr        ti_delete
[00024550] 7001                      moveq.l    #1,d0
[00024552] 605e                      bra.s      me_service_2
me_service_1:
[00024554] b67c 0002                 cmp.w      #$0002,d3
[00024558] 664c                      bne.s      me_service_3
[0002455a] 2052                      movea.l    (a2),a0
[0002455c] 2268 0004                 movea.l    4(a0),a1
[00024560] 2669 0004                 movea.l    4(a1),a3
[00024564] 342b 000c                 move.w     12(a3),d2
[00024568] 48c2                      ext.l      d2
[0002456a] 2202                      move.l     d2,d1
[0002456c] e789                      lsl.l      #3,d1
[0002456e] 9282                      sub.l      d2,d1
[00024570] e789                      lsl.l      #3,d1
[00024572] 3233 180a                 move.w     10(a3,d1.l),d1
[00024576] 48c1                      ext.l      d1
[00024578] 2001                      move.l     d1,d0
[0002457a] e788                      lsl.l      #3,d0
[0002457c] 9081                      sub.l      d1,d0
[0002457e] e788                      lsl.l      #3,d0
[00024580] 3833 080a                 move.w     10(a3,d0.l),d4
[00024584] 3404                      move.w     d4,d2
[00024586] 48c2                      ext.l      d2
[00024588] 2002                      move.l     d2,d0
[0002458a] e788                      lsl.l      #3,d0
[0002458c] 9082                      sub.l      d2,d0
[0002458e] e788                      lsl.l      #3,d0
[00024590] 4273 082a                 clr.w      42(a3,d0.l)
[00024594] 3433 0808                 move.w     8(a3,d0.l),d2
[00024598] 48c2                      ext.l      d2
[0002459a] 2202                      move.l     d2,d1
[0002459c] e789                      lsl.l      #3,d1
[0002459e] 9282                      sub.l      d2,d1
[000245a0] e789                      lsl.l      #3,d1
[000245a2] 4273 182a                 clr.w      42(a3,d1.l)
me_service_3:
[000245a6] 224c                      movea.l    a4,a1
[000245a8] 3003                      move.w     d3,d0
[000245aa] 204a                      movea.l    a2,a0
[000245ac] 4eb9 0002 ae50            jsr        ed_service
me_service_2:
[000245b2] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[000245b6] 4e75                      rts

ti_delete:
[000245b8] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[000245bc] 2448                      movea.l    a0,a2
[000245be] 41f9 0010 1f12            lea.l      ACSblk,a0
[000245c4] 2250                      movea.l    (a0),a1
[000245c6] b5e9 0240                 cmpa.l     576(a1),a2
[000245ca] 6600 00f0                 bne        ti_delete_1
[000245ce] 7004                      moveq.l    #4,d0
[000245d0] c069 0266                 and.w      614(a1),d0
[000245d4] 6704                      beq.s      ti_delete_2
[000245d6] 7601                      moveq.l    #1,d3
[000245d8] 6002                      bra.s      ti_delete_3
ti_delete_2:
[000245da] 4243                      clr.w      d3
ti_delete_3:
[000245dc] 2652                      movea.l    (a2),a3
[000245de] 2250                      movea.l    (a0),a1
[000245e0] 4269 0248                 clr.w      584(a1)
[000245e4] 6000 00b2                 bra        ti_delete_4
ti_delete_6:
[000245e8] 3204                      move.w     d4,d1
[000245ea] 48c1                      ext.l      d1
[000245ec] 2001                      move.l     d1,d0
[000245ee] d080                      add.l      d0,d0
[000245f0] d081                      add.l      d1,d0
[000245f2] e788                      lsl.l      #3,d0
[000245f4] 286a 0014                 movea.l    20(a2),a4
[000245f8] 49f4 0818                 lea.l      24(a4,d0.l),a4
[000245fc] 0c6c 2af8 0016            cmpi.w     #$2AF8,22(a4)
[00024602] 6616                      bne.s      ti_delete_5
[00024604] 204a                      movea.l    a2,a0
[00024606] 3004                      move.w     d4,d0
[00024608] 4eb9 0004 492a            jsr        Adr_del
[0002460e] 3203                      move.w     d3,d1
[00024610] 3004                      move.w     d4,d0
[00024612] 204a                      movea.l    a2,a0
[00024614] 4eb9 0002 c00e            jsr        del_obentry
ti_delete_5:
[0002461a] 0c6c 2af9 0016            cmpi.w     #$2AF9,22(a4)
[00024620] 6676                      bne.s      ti_delete_4
[00024622] 3004                      move.w     d4,d0
[00024624] 204a                      movea.l    a2,a0
[00024626] 4eb9 0004 492a            jsr        Adr_del
[0002462c] 3004                      move.w     d4,d0
[0002462e] 206a 0014                 movea.l    20(a2),a0
[00024632] 6100 f5b0                 bsr        find_drop
[00024636] 3a00                      move.w     d0,d5
[00024638] 377c ffff 0018            move.w     #$FFFF,24(a3)
[0002463e] 4241                      clr.w      d1
[00024640] 204a                      movea.l    a2,a0
[00024642] 3004                      move.w     d4,d0
[00024644] 4eb9 0002 c00e            jsr        del_obentry
[0002464a] 4241                      clr.w      d1
[0002464c] 3005                      move.w     d5,d0
[0002464e] 204a                      movea.l    a2,a0
[00024650] 4eb9 0002 c00e            jsr        del_obentry
[00024656] 206b 0004                 movea.l    4(a3),a0
[0002465a] 4eb9 0002 bb90            jsr        pack_ob
[00024660] 206b 0004                 movea.l    4(a3),a0
[00024664] 2068 0004                 movea.l    4(a0),a0
[00024668] 6100 f484                 bsr        align
[0002466c] 204a                      movea.l    a2,a0
[0002466e] 226a 0010                 movea.l    16(a2),a1
[00024672] 4e91                      jsr        (a1)
[00024674] 7a01                      moveq.l    #1,d5
[00024676] 206a 0014                 movea.l    20(a2),a0
[0002467a] 3228 0002                 move.w     2(a0),d1
[0002467e] 48c1                      ext.l      d1
[00024680] 2001                      move.l     d1,d0
[00024682] d080                      add.l      d0,d0
[00024684] d081                      add.l      d1,d0
[00024686] e788                      lsl.l      #3,d0
[00024688] da70 081a                 add.w      26(a0,d0.l),d5
[0002468c] 204a                      movea.l    a2,a0
[0002468e] 3005                      move.w     d5,d0
[00024690] 4eb9 0004 b846            jsr        Awi_obredraw
[00024696] 6024                      bra.s      ti_delete_1
ti_delete_4:
[00024698] 4eb9 0004 484c            jsr        Adr_next
[0002469e] 3800                      move.w     d0,d4
[000246a0] 6a00 ff46                 bpl        ti_delete_6
[000246a4] 206b 0004                 movea.l    4(a3),a0
[000246a8] 4eb9 0002 bb90            jsr        pack_ob
[000246ae] 204a                      movea.l    a2,a0
[000246b0] 226a 0010                 movea.l    16(a2),a1
[000246b4] 4e91                      jsr        (a1)
[000246b6] 377c ffff 000a            move.w     #$FFFF,10(a3)
ti_delete_1:
[000246bc] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[000246c0] 4e75                      rts

title_rubber:
[000246c2] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[000246c6] 4fef ffe8                 lea.l      -24(a7),a7
[000246ca] 2f48 0014                 move.l     a0,20(a7)
[000246ce] 2c49                      movea.l    a1,a6
[000246d0] 3600                      move.w     d0,d3
[000246d2] 3801                      move.w     d1,d4
[000246d4] 266f 0044                 movea.l    68(a7),a3
[000246d8] 2279 0010 1f12            movea.l    ACSblk,a1
[000246de] 2069 023c                 movea.l    572(a1),a0
[000246e2] 41e8 0044                 lea.l      68(a0),a0
[000246e6] 4eb9 0004 9898            jsr        Amo_new
[000246ec] 486f 0012                 pea.l      18(a7)
[000246f0] 486f 0014                 pea.l      20(a7)
[000246f4] 224e                      movea.l    a6,a1
[000246f6] 206f 001c                 movea.l    28(a7),a0
[000246fa] 4eb9 0002 ca7c            jsr        min_size
[00024700] 504f                      addq.w     #8,a7
[00024702] d76f 0010                 add.w      d3,16(a7)
[00024706] 3a2e 0016                 move.w     22(a6),d5
[0002470a] da44                      add.w      d4,d5
[0002470c] 3c03                      move.w     d3,d6
[0002470e] 2079 0010 1f12            movea.l    ACSblk,a0
[00024714] dc68 0012                 add.w      18(a0),d6
[00024718] 3e28 0012                 move.w     18(a0),d7
[0002471c] eb4f                      lsl.w      #5,d7
[0002471e] de6f 0010                 add.w      16(a7),d7
[00024722] 4240                      clr.w      d0
[00024724] 3f40 0002                 move.w     d0,2(a7)
[00024728] 3e80                      move.w     d0,(a7)
[0002472a] 3228 0008                 move.w     8(a0),d1
[0002472e] d268 000c                 add.w      12(a0),d1
[00024732] 3f41 0004                 move.w     d1,4(a7)
[00024736] 3028 000a                 move.w     10(a0),d0
[0002473a] d068 000e                 add.w      14(a0),d0
[0002473e] 3f40 0006                 move.w     d0,6(a7)
[00024742] 41d7                      lea.l      (a7),a0
[00024744] 2279 0010 1f12            movea.l    ACSblk,a1
[0002474a] 3029 0010                 move.w     16(a1),d0
[0002474e] 7201                      moveq.l    #1,d1
[00024750] 4eb9 0006 3f60            jsr        vs_clip
[00024756] 7203                      moveq.l    #3,d1
[00024758] 2079 0010 1f12            movea.l    ACSblk,a0
[0002475e] 3028 0010                 move.w     16(a0),d0
[00024762] 4eb9 0006 4da0            jsr        vswr_mode
[00024768] 7201                      moveq.l    #1,d1
[0002476a] 2079 0010 1f12            movea.l    ACSblk,a0
[00024770] 3028 0010                 move.w     16(a0),d0
[00024774] 4eb9 0006 4e9a            jsr        vsl_width
[0002477a] 7201                      moveq.l    #1,d1
[0002477c] 2079 0010 1f12            movea.l    ACSblk,a0
[00024782] 3028 0010                 move.w     16(a0),d0
[00024786] 4eb9 0006 4ef0            jsr        vsl_color
[0002478c] 4242                      clr.w      d2
[0002478e] 4241                      clr.w      d1
[00024790] 2079 0010 1f12            movea.l    ACSblk,a0
[00024796] 3028 0010                 move.w     16(a0),d0
[0002479a] 4eb9 0006 4f44            jsr        vsl_ends
[000247a0] 7207                      moveq.l    #7,d1
[000247a2] 2079 0010 1f12            movea.l    ACSblk,a0
[000247a8] 3028 0010                 move.w     16(a0),d0
[000247ac] 4eb9 0006 4df4            jsr        vsl_type
[000247b2] 4df9 000d 99d6            lea.l      _globl,a6
[000247b8] 49ef 000c                 lea.l      12(a7),a4
[000247bc] 4bef 000e                 lea.l      14(a7),a5
[000247c0] 2f16                      move.l     (a6),-(a7)
[000247c2] 4854                      pea.l      (a4)
[000247c4] 4855                      pea.l      (a5)
[000247c6] 43ef 001e                 lea.l      30(a7),a1
[000247ca] 41ef 0014                 lea.l      20(a7),a0
[000247ce] 4eb9 0006 c978            jsr        mt_graf_mkstate
[000247d4] 4fef 000c                 lea.l      12(a7),a7
title_rubber_8:
[000247d8] 45ef 000a                 lea.l      10(a7),a2
[000247dc] 36af 0008                 move.w     8(a7),(a3)
[000247e0] 7004                      moveq.l    #4,d0
[000247e2] c054                      and.w      (a4),d0
[000247e4] 6612                      bne.s      title_rubber_1
[000247e6] 3213                      move.w     (a3),d1
[000247e8] b26f 0010                 cmp.w      16(a7),d1
[000247ec] 6c04                      bge.s      title_rubber_2
[000247ee] 36af 0010                 move.w     16(a7),(a3)
title_rubber_2:
[000247f2] be53                      cmp.w      (a3),d7
[000247f4] 6c02                      bge.s      title_rubber_1
[000247f6] 3687                      move.w     d7,(a3)
title_rubber_1:
[000247f8] bc53                      cmp.w      (a3),d6
[000247fa] 6f02                      ble.s      title_rubber_3
[000247fc] 3686                      move.w     d6,(a3)
title_rubber_3:
[000247fe] 7001                      moveq.l    #1,d0
[00024800] c055                      and.w      (a5),d0
[00024802] 6632                      bne.s      title_rubber_4
[00024804] 41d7                      lea.l      (a7),a0
[00024806] 4241                      clr.w      d1
[00024808] 2279 0010 1f12            movea.l    ACSblk,a1
[0002480e] 3029 0010                 move.w     16(a1),d0
[00024812] 4eb9 0006 3f60            jsr        vs_clip
[00024818] 70ff                      moveq.l    #-1,d0
[0002481a] d043                      add.w      d3,d0
[0002481c] 9153                      sub.w      d0,(a3)
[0002481e] 2079 0010 1f12            movea.l    ACSblk,a0
[00024824] 2068 023c                 movea.l    572(a0),a0
[00024828] 41e8 0038                 lea.l      56(a0),a0
[0002482c] 4eb9 0004 9898            jsr        Amo_new
[00024832] 6000 00c6                 bra        title_rubber_5
title_rubber_4:
[00024836] 2256                      movea.l    (a6),a1
[00024838] 91c8                      suba.l     a0,a0
[0002483a] 303c 0100                 move.w     #$0100,d0
[0002483e] 4eb9 0006 c914            jsr        mt_graf_mouse
[00024844] 3404                      move.w     d4,d2
[00024846] 3213                      move.w     (a3),d1
[00024848] 3003                      move.w     d3,d0
[0002484a] 4eb9 0004 4242            jsr        dotted_xline
[00024850] 3405                      move.w     d5,d2
[00024852] 3213                      move.w     (a3),d1
[00024854] 3003                      move.w     d3,d0
[00024856] 4eb9 0004 4242            jsr        dotted_xline
[0002485c] 3403                      move.w     d3,d2
[0002485e] 3205                      move.w     d5,d1
[00024860] 3004                      move.w     d4,d0
[00024862] 4eb9 0004 42e2            jsr        dotted_yline
[00024868] 3413                      move.w     (a3),d2
[0002486a] 3205                      move.w     d5,d1
[0002486c] 3004                      move.w     d4,d0
[0002486e] 4eb9 0004 42e2            jsr        dotted_yline
[00024874] 2256                      movea.l    (a6),a1
[00024876] 91c8                      suba.l     a0,a0
[00024878] 303c 0101                 move.w     #$0101,d0
[0002487c] 4eb9 0006 c914            jsr        mt_graf_mouse
title_rubber_7:
[00024882] 2f16                      move.l     (a6),-(a7)
[00024884] 4854                      pea.l      (a4)
[00024886] 4855                      pea.l      (a5)
[00024888] 43ef 001e                 lea.l      30(a7),a1
[0002488c] 204a                      movea.l    a2,a0
[0002488e] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00024894] 4fef 000c                 lea.l      12(a7),a7
[00024898] 7001                      moveq.l    #1,d0
[0002489a] c055                      and.w      (a5),d0
[0002489c] 6708                      beq.s      title_rubber_6
[0002489e] 3212                      move.w     (a2),d1
[000248a0] b26f 0008                 cmp.w      8(a7),d1
[000248a4] 67dc                      beq.s      title_rubber_7
title_rubber_6:
[000248a6] 2256                      movea.l    (a6),a1
[000248a8] 91c8                      suba.l     a0,a0
[000248aa] 303c 0100                 move.w     #$0100,d0
[000248ae] 4eb9 0006 c914            jsr        mt_graf_mouse
[000248b4] 3404                      move.w     d4,d2
[000248b6] 3213                      move.w     (a3),d1
[000248b8] 3003                      move.w     d3,d0
[000248ba] 4eb9 0004 4242            jsr        dotted_xline
[000248c0] 3405                      move.w     d5,d2
[000248c2] 3213                      move.w     (a3),d1
[000248c4] 3003                      move.w     d3,d0
[000248c6] 4eb9 0004 4242            jsr        dotted_xline
[000248cc] 3403                      move.w     d3,d2
[000248ce] 3205                      move.w     d5,d1
[000248d0] 3004                      move.w     d4,d0
[000248d2] 4eb9 0004 42e2            jsr        dotted_yline
[000248d8] 3413                      move.w     (a3),d2
[000248da] 3205                      move.w     d5,d1
[000248dc] 3004                      move.w     d4,d0
[000248de] 4eb9 0004 42e2            jsr        dotted_yline
[000248e4] 2256                      movea.l    (a6),a1
[000248e6] 91c8                      suba.l     a0,a0
[000248e8] 303c 0101                 move.w     #$0101,d0
[000248ec] 4eb9 0006 c914            jsr        mt_graf_mouse
[000248f2] 3f52 0008                 move.w     (a2),8(a7)
[000248f6] 6000 fee0                 bra        title_rubber_8
title_rubber_5:
[000248fa] 4fef 0018                 lea.l      24(a7),a7
[000248fe] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00024902] 4e75                      rts

title_dragged:
[00024904] 2079 0010 1f12            movea.l    ACSblk,a0
[0002490a] 3028 0260                 move.w     608(a0),d0
[0002490e] 2068 0258                 movea.l    600(a0),a0
[00024912] 4eb9 0002 491a            jsr        tdragged
[00024918] 4e75                      rts

tdragged:
[0002491a] 48e7 1c20                 movem.l    d3-d5/a2,-(a7)
[0002491e] 2448                      movea.l    a0,a2
[00024920] 3800                      move.w     d0,d4
[00024922] 41f9 0010 1f12            lea.l      ACSblk,a0
[00024928] 2250                      movea.l    (a0),a1
[0002492a] b5e9 0240                 cmpa.l     576(a1),a2
[0002492e] 660c                      bne.s      tdragged_1
[00024930] 7003                      moveq.l    #3,d0
[00024932] c069 0266                 and.w      614(a1),d0
[00024936] 6604                      bne.s      tdragged_1
[00024938] 7601                      moveq.l    #1,d3
[0002493a] 6002                      bra.s      tdragged_2
tdragged_1:
[0002493c] 4243                      clr.w      d3
tdragged_2:
[0002493e] 2250                      movea.l    (a0),a1
[00024940] 4269 0248                 clr.w      584(a1)
[00024944] 600c                      bra.s      tdragged_3
tdragged_4:
[00024946] 3403                      move.w     d3,d2
[00024948] 3204                      move.w     d4,d1
[0002494a] 3005                      move.w     d5,d0
[0002494c] 204a                      movea.l    a2,a0
[0002494e] 6100 f71a                 bsr        make_title
tdragged_3:
[00024952] 4eb9 0004 484c            jsr        Adr_next
[00024958] 3a00                      move.w     d0,d5
[0002495a] 6aea                      bpl.s      tdragged_4
[0002495c] 4cdf 0438                 movem.l    (a7)+,d3-d5/a2
[00024960] 4e75                      rts

title_edit:
[00024962] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00024966] 2079 0010 1f12            movea.l    ACSblk,a0
[0002496c] 2468 0258                 movea.l    600(a0),a2
[00024970] 266a 0014                 movea.l    20(a2),a3
[00024974] 3628 0260                 move.w     608(a0),d3
[00024978] 3203                      move.w     d3,d1
[0002497a] 48c1                      ext.l      d1
[0002497c] 2001                      move.l     d1,d0
[0002497e] d080                      add.l      d0,d0
[00024980] d081                      add.l      d1,d0
[00024982] e788                      lsl.l      #3,d0
[00024984] 3433 080a                 move.w     10(a3,d0.l),d2
[00024988] c47c 4000                 and.w      #$4000,d2
[0002498c] 6706                      beq.s      title_edit_1
[0002498e] 6100 fb7a                 bsr        obspec_only
[00024992] 6036                      bra.s      title_edit_2
title_edit_1:
[00024994] 7001                      moveq.l    #1,d0
[00024996] 3403                      move.w     d3,d2
[00024998] 48c2                      ext.l      d2
[0002499a] 2202                      move.l     d2,d1
[0002499c] d281                      add.l      d1,d1
[0002499e] d282                      add.l      d2,d1
[000249a0] e789                      lsl.l      #3,d1
[000249a2] c073 180a                 and.w      10(a3,d1.l),d0
[000249a6] 670c                      beq.s      title_edit_3
[000249a8] 204a                      movea.l    a2,a0
[000249aa] 3003                      move.w     d3,d0
[000249ac] 4eb9 0002 49d0            jsr        title_dragsize
[000249b2] 6016                      bra.s      title_edit_2
title_edit_3:
[000249b4] 3203                      move.w     d3,d1
[000249b6] 48c1                      ext.l      d1
[000249b8] 2001                      move.l     d1,d0
[000249ba] d080                      add.l      d0,d0
[000249bc] d081                      add.l      d1,d0
[000249be] e788                      lsl.l      #3,d0
[000249c0] 0073 0001 080a            ori.w      #$0001,10(a3,d0.l)
[000249c6] 6100 fa3e                 bsr        new_title
title_edit_2:
[000249ca] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000249ce] 4e75                      rts

title_dragsize:
[000249d0] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[000249d4] 4fef fff4                 lea.l      -12(a7),a7
[000249d8] 2448                      movea.l    a0,a2
[000249da] 3600                      move.w     d0,d3
[000249dc] 2f39 000d 99d6            move.l     _globl,-(a7)
[000249e2] 486f 0004                 pea.l      4(a7)
[000249e6] 486f 0008                 pea.l      8(a7)
[000249ea] 43ef 000e                 lea.l      14(a7),a1
[000249ee] 41ef 0010                 lea.l      16(a7),a0
[000249f2] 4eb9 0006 c978            jsr        mt_graf_mkstate
[000249f8] 4fef 000c                 lea.l      12(a7),a7
[000249fc] 3203                      move.w     d3,d1
[000249fe] 48c1                      ext.l      d1
[00024a00] 2001                      move.l     d1,d0
[00024a02] d080                      add.l      d0,d0
[00024a04] d081                      add.l      d1,d0
[00024a06] e788                      lsl.l      #3,d0
[00024a08] 266a 0014                 movea.l    20(a2),a3
[00024a0c] 47f3 08e8                 lea.l      -24(a3,d0.l),a3
[00024a10] 2f39 000d 99d6            move.l     _globl,-(a7)
[00024a16] 486f 000c                 pea.l      12(a7)
[00024a1a] 43ef 0012                 lea.l      18(a7),a1
[00024a1e] 206a 0014                 movea.l    20(a2),a0
[00024a22] 3003                      move.w     d3,d0
[00024a24] 4eb9 0006 ba44            jsr        mt_objc_offset
[00024a2a] 504f                      addq.w     #8,a7
[00024a2c] 302b 0014                 move.w     20(a3),d0
[00024a30] 322b 0016                 move.w     22(a3),d1
[00024a34] 342a 0034                 move.w     52(a2),d2
[00024a38] d46f 000a                 add.w      10(a7),d2
[00024a3c] d440                      add.w      d0,d2
[00024a3e] 946f 0004                 sub.w      4(a7),d2
[00024a42] 3f42 0006                 move.w     d2,6(a7)
[00024a46] 342a 0036                 move.w     54(a2),d2
[00024a4a] d46f 0008                 add.w      8(a7),d2
[00024a4e] d441                      add.w      d1,d2
[00024a50] 946f 0002                 sub.w      2(a7),d2
[00024a54] 0c6f 0008 0006            cmpi.w     #$0008,6(a7)
[00024a5a] 6f0c                      ble.s      title_dragsize_1
[00024a5c] 3800                      move.w     d0,d4
[00024a5e] e644                      asr.w      #3,d4
[00024a60] 306f 0006                 movea.w    6(a7),a0
[00024a64] b0c4                      cmpa.w     d4,a0
[00024a66] 6e0e                      bgt.s      title_dragsize_2
title_dragsize_1:
[00024a68] b47c 0008                 cmp.w      #$0008,d2
[00024a6c] 6f36                      ble.s      title_dragsize_3
[00024a6e] 3001                      move.w     d1,d0
[00024a70] e640                      asr.w      #3,d0
[00024a72] b440                      cmp.w      d0,d2
[00024a74] 6f2e                      ble.s      title_dragsize_3
title_dragsize_2:
[00024a76] 4eb9 0004 4a26            jsr        Adr_unselect
[00024a7c] 026b fffe 0022            andi.w     #$FFFE,34(a3)
[00024a82] 3003                      move.w     d3,d0
[00024a84] 204a                      movea.l    a2,a0
[00024a86] 4eb9 0004 487c            jsr        Adr_add
[00024a8c] 322f 0002                 move.w     2(a7),d1
[00024a90] 302f 0004                 move.w     4(a7),d0
[00024a94] 4eb9 0004 557a            jsr        Adr_drag
[00024a9a] 4eb9 0004 4a26            jsr        Adr_unselect
[00024aa0] 6000 00a2                 bra        title_dragsize_4
title_dragsize_3:
[00024aa4] 2052                      movea.l    (a2),a0
[00024aa6] 2068 0004                 movea.l    4(a0),a0
[00024aaa] 2868 0004                 movea.l    4(a0),a4
[00024aae] 70fe                      moveq.l    #-2,d0
[00024ab0] d043                      add.w      d3,d0
[00024ab2] 48c0                      ext.l      d0
[00024ab4] 81fc 0003                 divs.w     #$0003,d0
[00024ab8] 3600                      move.w     d0,d3
[00024aba] 486f 0006                 pea.l      6(a7)
[00024abe] 322f 000c                 move.w     12(a7),d1
[00024ac2] d26a 0036                 add.w      54(a2),d1
[00024ac6] 302f 000e                 move.w     14(a7),d0
[00024aca] d06a 0034                 add.w      52(a2),d0
[00024ace] 224b                      movea.l    a3,a1
[00024ad0] 3803                      move.w     d3,d4
[00024ad2] 48c4                      ext.l      d4
[00024ad4] 2404                      move.l     d4,d2
[00024ad6] e78a                      lsl.l      #3,d2
[00024ad8] 9484                      sub.l      d4,d2
[00024ada] e78a                      lsl.l      #3,d2
[00024adc] 41f4 2800                 lea.l      0(a4,d2.l),a0
[00024ae0] 6100 fbe0                 bsr        title_rubber
[00024ae4] 584f                      addq.w     #4,a7
[00024ae6] 2079 0010 1f12            movea.l    ACSblk,a0
[00024aec] 3028 0012                 move.w     18(a0),d0
[00024af0] 48c0                      ext.l      d0
[00024af2] 81fc 0002                 divs.w     #$0002,d0
[00024af6] d06f 0006                 add.w      6(a7),d0
[00024afa] 48c0                      ext.l      d0
[00024afc] 81e8 0012                 divs.w     18(a0),d0
[00024b00] 3f40 0006                 move.w     d0,6(a7)
[00024b04] 3403                      move.w     d3,d2
[00024b06] 48c2                      ext.l      d2
[00024b08] 2202                      move.l     d2,d1
[00024b0a] e789                      lsl.l      #3,d1
[00024b0c] 9282                      sub.l      d2,d1
[00024b0e] e789                      lsl.l      #3,d1
[00024b10] 3980 181c                 move.w     d0,28(a4,d1.l)
[00024b14] 204c                      movea.l    a4,a0
[00024b16] 6100 efd6                 bsr        align
[00024b1a] 204a                      movea.l    a2,a0
[00024b1c] 226a 0010                 movea.l    16(a2),a1
[00024b20] 4e91                      jsr        (a1)
[00024b22] 7601                      moveq.l    #1,d3
[00024b24] 206a 0014                 movea.l    20(a2),a0
[00024b28] 3228 0002                 move.w     2(a0),d1
[00024b2c] 48c1                      ext.l      d1
[00024b2e] 2001                      move.l     d1,d0
[00024b30] d080                      add.l      d0,d0
[00024b32] d081                      add.l      d1,d0
[00024b34] e788                      lsl.l      #3,d0
[00024b36] d670 081a                 add.w      26(a0,d0.l),d3
[00024b3a] 204a                      movea.l    a2,a0
[00024b3c] 3003                      move.w     d3,d0
[00024b3e] 4eb9 0004 b846            jsr        Awi_obredraw
title_dragsize_4:
[00024b44] 4fef 000c                 lea.l      12(a7),a7
[00024b48] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00024b4c] 4e75                      rts

	.data
droptree:
[000af166]                           dc.b $00
[000af167]                           dc.b $00
[000af168]                           dc.b $00
[000af169]                           dc.b $00
[000af16a]                           dc.b $00
[000af16b]                           dc.b $00
[000af16c]                           dc.b $00
[000af16d]                           dc.b $00
[000af16e]                           dc.w $ffff
[000af170]                           dc.w $ffff
[000af172]                           dc.w $ffff
[000af174]                           dc.b $00
[000af175]                           dc.b $14
[000af176]                           dc.b $00
[000af177]                           dc.b $00
[000af178]                           dc.b $00
[000af179]                           dc.b $00
[000af17a]                           dc.b $00
[000af17b]                           dc.b $ff
[000af17c]                           dc.w $1101
[000af17e]                           dc.b $00
[000af17f]                           dc.b $00
[000af180]                           dc.b $00
[000af181]                           dc.b $00
[000af182]                           dc.b $00
[000af183]                           dc.b $0c
[000af184]                           dc.b $00
[000af185]                           dc.b $01
[000af186]                           dc.b $00
[000af187]                           dc.b $00
[000af188]                           dc.b $00
[000af189]                           dc.b $00
[000af18a]                           dc.b $00
[000af18b]                           dc.b $00
[000af18c]                           dc.b $00
[000af18d]                           dc.b $00
[000af18e]                           dc.w $8000
[000af190]                           dc.b $00
[000af191]                           dc.b $00
[000af192]                           dc.b $00
[000af193]                           dc.b $00
[000af194]                           dc.b $00
[000af195]                           dc.b $00
[000af196]                           dc.b $00
[000af197]                           dc.b $00
[000af198]                           dc.b $00
[000af199]                           dc.b $00
[000af19a]                           dc.b $00
[000af19b]                           dc.b $00
[000af19c]                           dc.b $00
[000af19d]                           dc.b $00
protodrop:
[000af19e]                           dc.b $00
[000af19f]                           dc.b $00
[000af1a0]                           dc.b $00
[000af1a1]                           dc.b $00
[000af1a2] 000af166                  dc.l droptree
[000af1a6]                           dc.b $00
[000af1a7]                           dc.b $00
[000af1a8]                           dc.b $00
[000af1a9]                           dc.b $00
[000af1aa]                           dc.b $00
[000af1ab]                           dc.b $38
[000af1ac]                           dc.b $00
[000af1ad]                           dc.b $00
[000af1ae]                           dc.b $00
[000af1af]                           dc.b $38
[000af1b0]                           dc.b $00
[000af1b1]                           dc.b $00
[000af1b2]                           dc.b $00
[000af1b3]                           dc.b $00
[000af1b4]                           dc.b 'DROPPROTO',0
[000af1be]                           dc.b $00
[000af1bf]                           dc.b $00
[000af1c0]                           dc.b $00
[000af1c1]                           dc.b $00
[000af1c2]                           dc.b $00
[000af1c3]                           dc.b $00
[000af1c4]                           dc.b $00
[000af1c5]                           dc.b $00
[000af1c6]                           dc.b $00
[000af1c7]                           dc.b $00
[000af1c8]                           dc.b $00
[000af1c9]                           dc.b $00
[000af1ca]                           dc.b $00
[000af1cb]                           dc.b $00
[000af1cc]                           dc.b $00
[000af1cd]                           dc.b $00
[000af1ce]                           dc.b $00
[000af1cf]                           dc.b $00
[000af1d0]                           dc.b $00
[000af1d1]                           dc.b $00
[000af1d2]                           dc.b $00
[000af1d3]                           dc.b $00
[000af1d4]                           dc.b $00
[000af1d5]                           dc.b $01
[000af1d6]                           dc.b $00
[000af1d7]                           dc.b $00
[000af1d8]                           dc.b $00
[000af1d9]                           dc.b $00
[000af1da]                           dc.b $00
[000af1db]                           dc.b $00
[000af1dc]                           dc.b $00
[000af1dd]                           dc.b $00
[000af1de]                           dc.b $00
[000af1df]                           dc.b $00
[000af1e0]                           dc.b ' NAME',0
[000af1e6]                           dc.b '  ACC EINTRAG',0
	.even
