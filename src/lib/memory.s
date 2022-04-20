INmemory:
[00047bf6] 3f03                      move.w     d3,-(a7)
[00047bf8] 2f0a                      move.l     a2,-(a7)
[00047bfa] 45f9 000d 3bbe            lea.l      $000D3BBE,a2
[00047c00] 302a fd1a                 move.w     -742(a2),d0
[00047c04] 526a fd1a                 addq.w     #1,-742(a2)
[00047c08] 4a40                      tst.w      d0
[00047c0a] 6648                      bne.s      $00047C54
[00047c0c] 4243                      clr.w      d3
[00047c0e] 6026                      bra.s      $00047C36
[00047c10] 3203                      move.w     d3,d1
[00047c12] 48c1                      ext.l      d1
[00047c14] 2001                      move.l     d1,d0
[00047c16] e588                      lsl.l      #2,d0
[00047c18] d081                      add.l      d1,d0
[00047c1a] e588                      lsl.l      #2,d0
[00047c1c] 2052                      movea.l    (a2),a0
[00047c1e] 4270 080a                 clr.w      10(a0,d0.l)
[00047c22] 2052                      movea.l    (a2),a0
[00047c24] 4270 080c                 clr.w      12(a0,d0.l)
[00047c28] 2052                      movea.l    (a2),a0
[00047c2a] 4270 080e                 clr.w      14(a0,d0.l)
[00047c2e] 2052                      movea.l    (a2),a0
[00047c30] 42b0 0810                 clr.l      16(a0,d0.l)
[00047c34] 5243                      addq.w     #1,d3
[00047c36] b66a 0004                 cmp.w      4(a2),d3
[00047c3a] 6dd4                      blt.s      $00047C10
[00047c3c] 302a 0004                 move.w     4(a2),d0
[00047c40] 6f12                      ble.s      $00047C54
[00047c42] 43f9 0004 80c0            lea.l      $000480C0,a1
[00047c48] 7214                      moveq.l    #20,d1
[00047c4a] 48c0                      ext.l      d0
[00047c4c] 2052                      movea.l    (a2),a0
[00047c4e] 4eb9 0007 5314            jsr        $00075314
[00047c54] 4240                      clr.w      d0
[00047c56] 245f                      movea.l    (a7)+,a2
[00047c58] 361f                      move.w     (a7)+,d3
[00047c5a] 4e75                      rts
TRmemory:
[00047c5c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00047c60] 45f9 000d 3bbe            lea.l      $000D3BBE,a2
[00047c66] 536a fd1a                 subq.w     #1,-742(a2)
[00047c6a] 6656                      bne.s      $00047CC2
[00047c6c] 4243                      clr.w      d3
[00047c6e] 602e                      bra.s      $00047C9E
[00047c70] 3203                      move.w     d3,d1
[00047c72] 48c1                      ext.l      d1
[00047c74] 2001                      move.l     d1,d0
[00047c76] e588                      lsl.l      #2,d0
[00047c78] d081                      add.l      d1,d0
[00047c7a] e588                      lsl.l      #2,d0
[00047c7c] 2652                      movea.l    (a2),a3
[00047c7e] d7c0                      adda.l     d0,a3
[00047c80] 6014                      bra.s      $00047C96
[00047c82] 286b 0010                 movea.l    16(a3),a4
[00047c86] 206b 0010                 movea.l    16(a3),a0
[00047c8a] 2750 0010                 move.l     (a0),16(a3)
[00047c8e] 204c                      movea.l    a4,a0
[00047c90] 4eb9 0004 7e26            jsr        $00047E26
[00047c96] 202b 0010                 move.l     16(a3),d0
[00047c9a] 66e6                      bne.s      $00047C82
[00047c9c] 5243                      addq.w     #1,d3
[00047c9e] b66a 0004                 cmp.w      4(a2),d3
[00047ca2] 6dcc                      blt.s      $00047C70
[00047ca4] 2052                      movea.l    (a2),a0
[00047ca6] b1fc 000d 3966            cmpa.l     #$000D3966,a0
[00047cac] 6706                      beq.s      $00047CB4
[00047cae] 4eb9 0004 7e26            jsr        $00047E26
[00047cb4] 202a 0006                 move.l     6(a2),d0
[00047cb8] 6708                      beq.s      $00047CC2
[00047cba] 2040                      movea.l    d0,a0
[00047cbc] 4eb9 0004 7e26            jsr        $00047E26
[00047cc2] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00047cc6] 4e75                      rts
Ax_malloc:
[00047cc8] 2f03                      move.l     d3,-(a7)
[00047cca] 2f0a                      move.l     a2,-(a7)
[00047ccc] 2600                      move.l     d0,d3
[00047cce] 4eb9 0004 80e4            jsr        $000480E4
[00047cd4] 2448                      movea.l    a0,a2
[00047cd6] 200a                      move.l     a2,d0
[00047cd8] 660a                      bne.s      $00047CE4
[00047cda] 2003                      move.l     d3,d0
[00047cdc] 4eb9 0004 7cec            jsr        $00047CEC
[00047ce2] 2448                      movea.l    a0,a2
[00047ce4] 204a                      movea.l    a2,a0
[00047ce6] 245f                      movea.l    (a7)+,a2
[00047ce8] 261f                      move.l     (a7)+,d3
[00047cea] 4e75                      rts
_malloc:
[00047cec] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00047cf0] 2600                      move.l     d0,d3
[00047cf2] 45f9 0010 1f12            lea.l      ACSblk,a2
[00047cf8] 2052                      movea.l    (a2),a0
[00047cfa] 3028 0236                 move.w     566(a0),d0
[00047cfe] 6606                      bne.s      $00047D06
[00047d00] 3228 0238                 move.w     568(a0),d1
[00047d04] 670c                      beq.s      $00047D12
[00047d06] 2003                      move.l     d3,d0
[00047d08] 4eb9 0007 6d0e            jsr        $00076D0E
[00047d0e] 2648                      movea.l    a0,a3
[00047d10] 6016                      bra.s      $00047D28
[00047d12] 4eb9 0004 1ab2            jsr        $00041AB2
[00047d18] 2003                      move.l     d3,d0
[00047d1a] 4eb9 0007 6d0e            jsr        $00076D0E
[00047d20] 2648                      movea.l    a0,a3
[00047d22] 4eb9 0004 1aca            jsr        $00041ACA
[00047d28] 200b                      move.l     a3,d0
[00047d2a] 6604                      bne.s      $00047D30
[00047d2c] 91c8                      suba.l     a0,a0
[00047d2e] 6036                      bra.s      $00047D66
[00047d30] 2052                      movea.l    (a2),a0
[00047d32] 2268 023c                 movea.l    572(a0),a1
[00047d36] 3029 000e                 move.w     14(a1),d0
[00047d3a] c07c 0400                 and.w      #$0400,d0
[00047d3e] 6624                      bne.s      $00047D64
[00047d40] b7f9 0010 6758            cmpa.l     $00106758,a3
[00047d46] 641c                      bcc.s      $00047D64
[00047d48] b7f9 0010 6754            cmpa.l     $00106754,a3
[00047d4e] 6514                      bcs.s      $00047D64
[00047d50] 2268 03d6                 movea.l    982(a0),a1
[00047d54] 7005                      moveq.l    #5,d0
[00047d56] 91c8                      suba.l     a0,a0
[00047d58] 4e91                      jsr        (a1)
[00047d5a] 204b                      movea.l    a3,a0
[00047d5c] 2252                      movea.l    (a2),a1
[00047d5e] 2269 02d2                 movea.l    722(a1),a1
[00047d62] 4e91                      jsr        (a1)
[00047d64] 204b                      movea.l    a3,a0
[00047d66] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00047d6a] 4e75                      rts
Ax_ifree:
[00047d6c] 48e7 0038                 movem.l    a2-a4,-(a7)
[00047d70] 2448                      movea.l    a0,a2
[00047d72] 2648                      movea.l    a0,a3
[00047d74] 200a                      move.l     a2,d0
[00047d76] 6700 00a8                 beq        $00047E20
[00047d7a] b0bc 000d 3660            cmp.l      #$000D3660,d0
[00047d80] 6700 009e                 beq        $00047E20
[00047d84] 49f9 0010 1f12            lea.l      ACSblk,a4
[00047d8a] 2054                      movea.l    (a4),a0
[00047d8c] 2268 023c                 movea.l    572(a0),a1
[00047d90] 3029 000e                 move.w     14(a1),d0
[00047d94] c07c 0400                 and.w      #$0400,d0
[00047d98] 665a                      bne.s      $00047DF4
[00047d9a] b5f9 0010 6758            cmpa.l     $00106758,a2
[00047da0] 641c                      bcc.s      $00047DBE
[00047da2] b5f9 0010 6754            cmpa.l     $00106754,a2
[00047da8] 6514                      bcs.s      $00047DBE
[00047daa] 2268 03d6                 movea.l    982(a0),a1
[00047dae] 7005                      moveq.l    #5,d0
[00047db0] 91c8                      suba.l     a0,a0
[00047db2] 4e91                      jsr        (a1)
[00047db4] 204a                      movea.l    a2,a0
[00047db6] 2254                      movea.l    (a4),a1
[00047db8] 2269 02d2                 movea.l    722(a1),a1
[00047dbc] 4e91                      jsr        (a1)
[00047dbe] b5fc 0000 1000            cmpa.l     #$00001000,a2
[00047dc4] 6c0e                      bge.s      $00047DD4
[00047dc6] 91c8                      suba.l     a0,a0
[00047dc8] 7005                      moveq.l    #5,d0
[00047dca] 2254                      movea.l    (a4),a1
[00047dcc] 2269 03d6                 movea.l    982(a1),a1
[00047dd0] 4e91                      jsr        (a1)
[00047dd2] 6014                      bra.s      $00047DE8
[00047dd4] 7001                      moveq.l    #1,d0
[00047dd6] 220b                      move.l     a3,d1
[00047dd8] c081                      and.l      d1,d0
[00047dda] 6718                      beq.s      $00047DF4
[00047ddc] 91c8                      suba.l     a0,a0
[00047dde] 2254                      movea.l    (a4),a1
[00047de0] 2269 03d6                 movea.l    982(a1),a1
[00047de4] 7006                      moveq.l    #6,d0
[00047de6] 4e91                      jsr        (a1)
[00047de8] 204a                      movea.l    a2,a0
[00047dea] 2254                      movea.l    (a4),a1
[00047dec] 2269 02d2                 movea.l    722(a1),a1
[00047df0] 4e91                      jsr        (a1)
[00047df2] 602c                      bra.s      $00047E20
[00047df4] 2054                      movea.l    (a4),a0
[00047df6] 3028 0236                 move.w     566(a0),d0
[00047dfa] 6606                      bne.s      $00047E02
[00047dfc] 3228 0238                 move.w     568(a0),d1
[00047e00] 670a                      beq.s      $00047E0C
[00047e02] 204a                      movea.l    a2,a0
[00047e04] 4eb9 0007 6dd8            jsr        $00076DD8
[00047e0a] 6014                      bra.s      $00047E20
[00047e0c] 4eb9 0004 1ab2            jsr        $00041AB2
[00047e12] 204a                      movea.l    a2,a0
[00047e14] 4eb9 0007 6dd8            jsr        $00076DD8
[00047e1a] 4eb9 0004 1aca            jsr        $00041ACA
[00047e20] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00047e24] 4e75                      rts
Ax_free:
[00047e26] 48e7 0038                 movem.l    a2-a4,-(a7)
[00047e2a] 2448                      movea.l    a0,a2
[00047e2c] 2848                      movea.l    a0,a4
[00047e2e] 200a                      move.l     a2,d0
[00047e30] 6700 00be                 beq        $00047EF0
[00047e34] b0bc 000d 3660            cmp.l      #$000D3660,d0
[00047e3a] 6700 00b4                 beq        $00047EF0
[00047e3e] 47f9 0010 1f12            lea.l      ACSblk,a3
[00047e44] 2053                      movea.l    (a3),a0
[00047e46] 2268 023c                 movea.l    572(a0),a1
[00047e4a] 3029 000e                 move.w     14(a1),d0
[00047e4e] c07c 0400                 and.w      #$0400,d0
[00047e52] 665a                      bne.s      $00047EAE
[00047e54] b5f9 0010 6758            cmpa.l     $00106758,a2
[00047e5a] 641c                      bcc.s      $00047E78
[00047e5c] b5f9 0010 6754            cmpa.l     $00106754,a2
[00047e62] 6514                      bcs.s      $00047E78
[00047e64] 2268 03d6                 movea.l    982(a0),a1
[00047e68] 7005                      moveq.l    #5,d0
[00047e6a] 91c8                      suba.l     a0,a0
[00047e6c] 4e91                      jsr        (a1)
[00047e6e] 204a                      movea.l    a2,a0
[00047e70] 2253                      movea.l    (a3),a1
[00047e72] 2269 02d2                 movea.l    722(a1),a1
[00047e76] 4e91                      jsr        (a1)
[00047e78] b5fc 0000 1000            cmpa.l     #$00001000,a2
[00047e7e] 6c0e                      bge.s      $00047E8E
[00047e80] 91c8                      suba.l     a0,a0
[00047e82] 7005                      moveq.l    #5,d0
[00047e84] 2253                      movea.l    (a3),a1
[00047e86] 2269 03d6                 movea.l    982(a1),a1
[00047e8a] 4e91                      jsr        (a1)
[00047e8c] 6014                      bra.s      $00047EA2
[00047e8e] 7001                      moveq.l    #1,d0
[00047e90] 220c                      move.l     a4,d1
[00047e92] c081                      and.l      d1,d0
[00047e94] 6718                      beq.s      $00047EAE
[00047e96] 91c8                      suba.l     a0,a0
[00047e98] 2253                      movea.l    (a3),a1
[00047e9a] 2269 03d6                 movea.l    982(a1),a1
[00047e9e] 7006                      moveq.l    #6,d0
[00047ea0] 4e91                      jsr        (a1)
[00047ea2] 204a                      movea.l    a2,a0
[00047ea4] 2253                      movea.l    (a3),a1
[00047ea6] 2269 02d2                 movea.l    722(a1),a1
[00047eaa] 4e91                      jsr        (a1)
[00047eac] 6042                      bra.s      $00047EF0
[00047eae] 47f9 000d 3962            lea.l      $000D3962,a3
[00047eb4] 2053                      movea.l    (a3),a0
[00047eb6] 7020                      moveq.l    #32,d0
[00047eb8] b0a8 0004                 cmp.l      4(a0),d0
[00047ebc] 6e20                      bgt.s      $00047EDE
[00047ebe] 203c 0000 0088            move.l     #$00000088,d0
[00047ec4] 6100 fe02                 bsr        Ax_malloc
[00047ec8] 2848                      movea.l    a0,a4
[00047eca] 200c                      move.l     a4,d0
[00047ecc] 6608                      bne.s      $00047ED6
[00047ece] 204a                      movea.l    a2,a0
[00047ed0] 6100 fe9a                 bsr        $00047D6C
[00047ed4] 601a                      bra.s      $00047EF0
[00047ed6] 2893                      move.l     (a3),(a4)
[00047ed8] 42ac 0004                 clr.l      4(a4)
[00047edc] 268c                      move.l     a4,(a3)
[00047ede] 2053                      movea.l    (a3),a0
[00047ee0] 2028 0004                 move.l     4(a0),d0
[00047ee4] 52a8 0004                 addq.l     #1,4(a0)
[00047ee8] e588                      lsl.l      #2,d0
[00047eea] 2053                      movea.l    (a3),a0
[00047eec] 218a 0808                 move.l     a2,8(a0,d0.l)
[00047ef0] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00047ef4] 4e75                      rts
Ax_release:
[00047ef6] 2f0a                      move.l     a2,-(a7)
[00047ef8] 2f0b                      move.l     a3,-(a7)
[00047efa] 45f9 000d 3962            lea.l      $000D3962,a2
[00047f00] 6010                      bra.s      $00047F12
[00047f02] 2052                      movea.l    (a2),a0
[00047f04] 2028 0004                 move.l     4(a0),d0
[00047f08] e588                      lsl.l      #2,d0
[00047f0a] 2070 0808                 movea.l    8(a0,d0.l),a0
[00047f0e] 6100 fe5c                 bsr        $00047D6C
[00047f12] 2052                      movea.l    (a2),a0
[00047f14] 2028 0004                 move.l     4(a0),d0
[00047f18] 53a8 0004                 subq.l     #1,4(a0)
[00047f1c] 4a80                      tst.l      d0
[00047f1e] 6ee2                      bgt.s      $00047F02
[00047f20] 2052                      movea.l    (a2),a0
[00047f22] 42a8 0004                 clr.l      4(a0)
[00047f26] 2052                      movea.l    (a2),a0
[00047f28] 2650                      movea.l    (a0),a3
[00047f2a] 200b                      move.l     a3,d0
[00047f2c] 6710                      beq.s      $00047F3E
[00047f2e] 203c 0000 0088            move.l     #$00000088,d0
[00047f34] 4eb9 0004 8140            jsr        $00048140
[00047f3a] 248b                      move.l     a3,(a2)
[00047f3c] 60d4                      bra.s      $00047F12
[00047f3e] 265f                      movea.l    (a7)+,a3
[00047f40] 245f                      movea.l    (a7)+,a2
[00047f42] 4e75                      rts
Ax_glmalloc:
[00047f44] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00047f48] 2800                      move.l     d0,d4
[00047f4a] 45f9 0010 1f12            lea.l      ACSblk,a2
[00047f50] 2052                      movea.l    (a2),a0
[00047f52] 3028 0236                 move.w     566(a0),d0
[00047f56] 660c                      bne.s      $00047F64
[00047f58] 3228 0238                 move.w     568(a0),d1
[00047f5c] 6606                      bne.s      $00047F64
[00047f5e] 4eb9 0004 1ab2            jsr        $00041AB2
[00047f64] 4eb9 0007 2b94            jsr        $00072B94
[00047f6a] 3600                      move.w     d0,d3
[00047f6c] 4a40                      tst.w      d0
[00047f6e] 6710                      beq.s      $00047F80
[00047f70] 7223                      moveq.l    #35,d1
[00047f72] c240                      and.w      d0,d1
[00047f74] 2004                      move.l     d4,d0
[00047f76] 4eb9 0007 2af2            jsr        $00072AF2
[00047f7c] 2648                      movea.l    a0,a3
[00047f7e] 600a                      bra.s      $00047F8A
[00047f80] 2004                      move.l     d4,d0
[00047f82] 4eb9 0007 2aba            jsr        $00072ABA
[00047f88] 2648                      movea.l    a0,a3
[00047f8a] 2052                      movea.l    (a2),a0
[00047f8c] 3028 0236                 move.w     566(a0),d0
[00047f90] 660c                      bne.s      $00047F9E
[00047f92] 3228 0238                 move.w     568(a0),d1
[00047f96] 6606                      bne.s      $00047F9E
[00047f98] 4eb9 0004 1aca            jsr        $00041ACA
[00047f9e] 204b                      movea.l    a3,a0
[00047fa0] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00047fa4] 4e75                      rts
Ax_glfree:
[00047fa6] 2f0a                      move.l     a2,-(a7)
[00047fa8] 2448                      movea.l    a0,a2
[00047faa] 2279 0010 1f12            movea.l    ACSblk,a1
[00047fb0] 3029 0236                 move.w     566(a1),d0
[00047fb4] 6606                      bne.s      $00047FBC
[00047fb6] 3229 0238                 move.w     568(a1),d1
[00047fba] 670a                      beq.s      $00047FC6
[00047fbc] 204a                      movea.l    a2,a0
[00047fbe] 4eb9 0007 2acc            jsr        $00072ACC
[00047fc4] 6014                      bra.s      $00047FDA
[00047fc6] 4eb9 0004 1ab2            jsr        $00041AB2
[00047fcc] 204a                      movea.l    a2,a0
[00047fce] 4eb9 0007 2acc            jsr        $00072ACC
[00047fd4] 4eb9 0004 1aca            jsr        $00041ACA
[00047fda] 245f                      movea.l    (a7)+,a2
[00047fdc] 4e75                      rts
handle_sigbus:
[00047fde] 2f02                      move.l     d2,-(a7)
[00047fe0] 4eb9 0007 2b44            jsr        $00072B44
[00047fe6] 7001                      moveq.l    #1,d0
[00047fe8] 41f9 0010 675c            lea.l      $0010675C,a0
[00047fee] 4eb9 0007 516c            jsr        $0007516C
[00047ff4] 241f                      move.l     (a7)+,d2
[00047ff6] 4e75                      rts
Ax_memCheck:
[00047ff8] 48e7 1f20                 movem.l    d3-d7/a2,-(a7)
[00047ffc] 594f                      subq.w     #4,a7
[00047ffe] 2c00                      move.l     d0,d6
[00048000] 3e01                      move.w     d1,d7
[00048002] 2448                      movea.l    a0,a2
[00048004] 41fa ffd8                 lea.l      $00047FDE(pc),a0
[00048008] 700a                      moveq.l    #10,d0
[0004800a] 4eb9 0007 2b30            jsr        $00072B30
[00048010] 2600                      move.l     d0,d3
[00048012] 72e0                      moveq.l    #-32,d1
[00048014] b280                      cmp.l      d0,d1
[00048016] 671e                      beq.s      $00048036
[00048018] 41fa ffc4                 lea.l      $00047FDE(pc),a0
[0004801c] 700b                      moveq.l    #11,d0
[0004801e] 4eb9 0007 2b30            jsr        $00072B30
[00048024] 2e80                      move.l     d0,(a7)
[00048026] 72e0                      moveq.l    #-32,d1
[00048028] b280                      cmp.l      d0,d1
[0004802a] 6610                      bne.s      $0004803C
[0004802c] 2043                      movea.l    d3,a0
[0004802e] 700a                      moveq.l    #10,d0
[00048030] 4eb9 0007 2b30            jsr        $00072B30
[00048036] 7001                      moveq.l    #1,d0
[00048038] 6000 007e                 bra.w      $000480B8
[0004803c] 7a01                      moveq.l    #1,d5
[0004803e] 41f9 0010 675c            lea.l      $0010675C,a0
[00048044] 4eb9 0007 5162            jsr        $00075162
[0004804a] 4a40                      tst.w      d0
[0004804c] 6704                      beq.s      $00048052
[0004804e] 4245                      clr.w      d5
[00048050] 6050                      bra.s      $000480A2
[00048052] 72ff                      moveq.l    #-1,d1
[00048054] c246                      and.w      d6,d1
[00048056] 5441                      addq.w     #2,d1
[00048058] 671a                      beq.s      $00048074
[0004805a] 5341                      subq.w     #1,d1
[0004805c] 6702                      beq.s      $00048060
[0004805e] 602e                      bra.s      $0004808E
[00048060] 7041                      moveq.l    #65,d0
[00048062] 600a                      bra.s      $0004806E
[00048064] 1012                      move.b     (a2),d0
[00048066] 4a47                      tst.w      d7
[00048068] 6702                      beq.s      $0004806C
[0004806a] 1480                      move.b     d0,(a2)
[0004806c] 524a                      addq.w     #1,a2
[0004806e] 4a00                      tst.b      d0
[00048070] 66f2                      bne.s      $00048064
[00048072] 602e                      bra.s      $000480A2
[00048074] 7041                      moveq.l    #65,d0
[00048076] 600a                      bra.s      $00048082
[00048078] 1012                      move.b     (a2),d0
[0004807a] 4a47                      tst.w      d7
[0004807c] 6702                      beq.s      $00048080
[0004807e] 1480                      move.b     d0,(a2)
[00048080] 524a                      addq.w     #1,a2
[00048082] 4a00                      tst.b      d0
[00048084] 66f2                      bne.s      $00048078
[00048086] 122a ffff                 move.b     -1(a2),d1
[0004808a] 66ec                      bne.s      $00048078
[0004808c] 6014                      bra.s      $000480A2
[0004808e] 7800                      moveq.l    #0,d4
[00048090] 600c                      bra.s      $0004809E
[00048092] 1012                      move.b     (a2),d0
[00048094] 4a47                      tst.w      d7
[00048096] 6702                      beq.s      $0004809A
[00048098] 1480                      move.b     d0,(a2)
[0004809a] 5284                      addq.l     #1,d4
[0004809c] 524a                      addq.w     #1,a2
[0004809e] bc84                      cmp.l      d4,d6
[000480a0] 6ef0                      bgt.s      $00048092
[000480a2] 2043                      movea.l    d3,a0
[000480a4] 700a                      moveq.l    #10,d0
[000480a6] 4eb9 0007 2b30            jsr        $00072B30
[000480ac] 2057                      movea.l    (a7),a0
[000480ae] 700b                      moveq.l    #11,d0
[000480b0] 4eb9 0007 2b30            jsr        $00072B30
[000480b6] 3005                      move.w     d5,d0
[000480b8] 584f                      addq.w     #4,a7
[000480ba] 4cdf 04f8                 movem.l    (a7)+,d3-d7/a2
[000480be] 4e75                      rts
sortFreeMemList:
[000480c0] 2010                      move.l     (a0),d0
[000480c2] b091                      cmp.l      (a1),d0
[000480c4] 670a                      beq.s      $000480D0
[000480c6] 3028 0002                 move.w     2(a0),d0
[000480ca] 9069 0002                 sub.w      2(a1),d0
[000480ce] 4e75                      rts
[000480d0] 3029 0008                 move.w     8(a1),d0
[000480d4] 9068 0008                 sub.w      8(a0),d0
[000480d8] 4e75                      rts
searchFreeMemList:
[000480da] 3028 0002                 move.w     2(a0),d0
[000480de] 9069 0002                 sub.w      2(a1),d0
[000480e2] 4e75                      rts
RecycleFreeBlocks:
[000480e4] 2f0a                      move.l     a2,-(a7)
[000480e6] 594f                      subq.w     #4,a7
[000480e8] 2e80                      move.l     d0,(a7)
[000480ea] 95ca                      suba.l     a2,a2
[000480ec] 3239 000d 3bc2            move.w     $000D3BC2,d1
[000480f2] 6f1e                      ble.s      $00048112
[000480f4] 487a ffe4                 pea.l      $000480DA(pc)
[000480f8] 3001                      move.w     d1,d0
[000480fa] 48c0                      ext.l      d0
[000480fc] 2279 000d 3bbe            movea.l    $000D3BBE,a1
[00048102] 41ef 0004                 lea.l      4(a7),a0
[00048106] 7214                      moveq.l    #20,d1
[00048108] 4eb9 0007 5178            jsr        $00075178
[0004810e] 584f                      addq.w     #4,a7
[00048110] 2448                      movea.l    a0,a2
[00048112] 200a                      move.l     a2,d0
[00048114] 6722                      beq.s      $00048138
[00048116] 222a 0010                 move.l     16(a2),d1
[0004811a] 671c                      beq.s      $00048138
[0004811c] 2041                      movea.l    d1,a0
[0004811e] 2550 0010                 move.l     (a0),16(a2)
[00048122] 342a 000a                 move.w     10(a2),d2
[00048126] 6f04                      ble.s      $0004812C
[00048128] 536a 000a                 subq.w     #1,10(a2)
[0004812c] 302a 000e                 move.w     14(a2),d0
[00048130] 6f04                      ble.s      $00048136
[00048132] 536a 000e                 subq.w     #1,14(a2)
[00048136] 6002                      bra.s      $0004813A
[00048138] 91c8                      suba.l     a0,a0
[0004813a] 584f                      addq.w     #4,a7
[0004813c] 245f                      movea.l    (a7)+,a2
[0004813e] 4e75                      rts
Ax_recycle:
[00048140] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00048144] 594f                      subq.w     #4,a7
[00048146] 2448                      movea.l    a0,a2
[00048148] 2e80                      move.l     d0,(a7)
[0004814a] 4243                      clr.w      d3
[0004814c] 2648                      movea.l    a0,a3
[0004814e] 99cc                      suba.l     a4,a4
[00048150] 220a                      move.l     a2,d1
[00048152] 6766                      beq.s      $000481BA
[00048154] b2bc 000d 3660            cmp.l      #$000D3660,d1
[0004815a] 675e                      beq.s      $000481BA
[0004815c] 3439 000d 3bc2            move.w     $000D3BC2,d2
[00048162] 6f1e                      ble.s      $00048182
[00048164] 487a ff74                 pea.l      $000480DA(pc)
[00048168] 3002                      move.w     d2,d0
[0004816a] 48c0                      ext.l      d0
[0004816c] 2279 000d 3bbe            movea.l    $000D3BBE,a1
[00048172] 41ef 0004                 lea.l      4(a7),a0
[00048176] 7214                      moveq.l    #20,d1
[00048178] 4eb9 0007 5178            jsr        $00075178
[0004817e] 584f                      addq.w     #4,a7
[00048180] 2848                      movea.l    a0,a4
[00048182] 200c                      move.l     a4,d0
[00048184] 672a                      beq.s      $000481B0
[00048186] 322c 000a                 move.w     10(a4),d1
[0004818a] b26c 0008                 cmp.w      8(a4),d1
[0004818e] 6c1c                      bge.s      $000481AC
[00048190] 26ac 0010                 move.l     16(a4),(a3)
[00048194] 294b 0010                 move.l     a3,16(a4)
[00048198] 7601                      moveq.l    #1,d3
[0004819a] d76c 000a                 add.w      d3,10(a4)
[0004819e] 322c 000a                 move.w     10(a4),d1
[000481a2] b26c 000c                 cmp.w      12(a4),d1
[000481a6] 6f04                      ble.s      $000481AC
[000481a8] 3941 000c                 move.w     d1,12(a4)
[000481ac] 526c 000e                 addq.w     #1,14(a4)
[000481b0] 4a43                      tst.w      d3
[000481b2] 6606                      bne.s      $000481BA
[000481b4] 204a                      movea.l    a2,a0
[000481b6] 6100 fc6e                 bsr        $00047E26
[000481ba] 584f                      addq.w     #4,a7
[000481bc] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000481c0] 4e75                      rts
createNewList:
[000481c2] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[000481c6] 2600                      move.l     d0,d3
[000481c8] 3801                      move.w     d1,d4
[000481ca] 2848                      movea.l    a0,a4
[000481cc] 95ca                      suba.l     a2,a2
[000481ce] 47f9 000d 3bc2            lea.l      $000D3BC2,a3
[000481d4] 7201                      moveq.l    #1,d1
[000481d6] d253                      add.w      (a3),d1
[000481d8] 48c1                      ext.l      d1
[000481da] 2001                      move.l     d1,d0
[000481dc] e588                      lsl.l      #2,d0
[000481de] d081                      add.l      d1,d0
[000481e0] e588                      lsl.l      #2,d0
[000481e2] 6100 fb08                 bsr        $00047CEC
[000481e6] 2448                      movea.l    a0,a2
[000481e8] 200a                      move.l     a2,d0
[000481ea] 6604                      bne.s      $000481F0
[000481ec] 4240                      clr.w      d0
[000481ee] 6074                      bra.s      $00048264
[000481f0] 3213                      move.w     (a3),d1
[000481f2] 48c1                      ext.l      d1
[000481f4] 2001                      move.l     d1,d0
[000481f6] e588                      lsl.l      #2,d0
[000481f8] d081                      add.l      d1,d0
[000481fa] e588                      lsl.l      #2,d0
[000481fc] 226b fffc                 movea.l    -4(a3),a1
[00048200] 204a                      movea.l    a2,a0
[00048202] 4eb9 0007 6f44            jsr        $00076F44
[00048208] 206b fffc                 movea.l    -4(a3),a0
[0004820c] b1fc 000d 3966            cmpa.l     #$000D3966,a0
[00048212] 6704                      beq.s      $00048218
[00048214] 6100 fc10                 bsr        $00047E26
[00048218] 274a fffc                 move.l     a2,-4(a3)
[0004821c] 5253                      addq.w     #1,(a3)
[0004821e] 3213                      move.w     (a3),d1
[00048220] 48c1                      ext.l      d1
[00048222] 2001                      move.l     d1,d0
[00048224] e588                      lsl.l      #2,d0
[00048226] d081                      add.l      d1,d0
[00048228] e588                      lsl.l      #2,d0
[0004822a] 246b fffc                 movea.l    -4(a3),a2
[0004822e] 45f2 08ec                 lea.l      -20(a2,d0.l),a2
[00048232] 2483                      move.l     d3,(a2)
[00048234] 254c 0004                 move.l     a4,4(a2)
[00048238] 42aa 0010                 clr.l      16(a2)
[0004823c] 3544 0008                 move.w     d4,8(a2)
[00048240] 426a 000a                 clr.w      10(a2)
[00048244] 426a 000c                 clr.w      12(a2)
[00048248] 426a 000e                 clr.w      14(a2)
[0004824c] 3013                      move.w     (a3),d0
[0004824e] 6f12                      ble.s      $00048262
[00048250] 43fa fe6e                 lea.l      $000480C0(pc),a1
[00048254] 7214                      moveq.l    #20,d1
[00048256] 48c0                      ext.l      d0
[00048258] 206b fffc                 movea.l    -4(a3),a0
[0004825c] 4eb9 0007 5314            jsr        $00075314
[00048262] 7001                      moveq.l    #1,d0
[00048264] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00048268] 4e75                      rts
deleteOldList:
[0004826a] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0004826e] 2648                      movea.l    a0,a3
[00048270] 95ca                      suba.l     a2,a2
[00048272] 600e                      bra.s      $00048282
[00048274] 286b 0010                 movea.l    16(a3),a4
[00048278] 2754 0010                 move.l     (a4),16(a3)
[0004827c] 204c                      movea.l    a4,a0
[0004827e] 6100 fba6                 bsr        $00047E26
[00048282] 202b 0010                 move.l     16(a3),d0
[00048286] 66ec                      bne.s      $00048274
[00048288] 49f9 000d 3bc2            lea.l      $000D3BC2,a4
[0004828e] 4bf9 000d 3bbe            lea.l      $000D3BBE,a5
[00048294] 0c54 0001                 cmpi.w     #$0001,(a4)
[00048298] 6f14                      ble.s      $000482AE
[0004829a] 72ff                      moveq.l    #-1,d1
[0004829c] d254                      add.w      (a4),d1
[0004829e] 48c1                      ext.l      d1
[000482a0] 2001                      move.l     d1,d0
[000482a2] e588                      lsl.l      #2,d0
[000482a4] d081                      add.l      d1,d0
[000482a6] e588                      lsl.l      #2,d0
[000482a8] 6100 fa42                 bsr        $00047CEC
[000482ac] 2448                      movea.l    a0,a2
[000482ae] 200a                      move.l     a2,d0
[000482b0] 674e                      beq.s      $00048300
[000482b2] 4244                      clr.w      d4
[000482b4] 3604                      move.w     d4,d3
[000482b6] 6032                      bra.s      $000482EA
[000482b8] 3203                      move.w     d3,d1
[000482ba] 48c1                      ext.l      d1
[000482bc] 2001                      move.l     d1,d0
[000482be] e588                      lsl.l      #2,d0
[000482c0] d081                      add.l      d1,d0
[000482c2] e588                      lsl.l      #2,d0
[000482c4] 2055                      movea.l    (a5),a0
[000482c6] d1c0                      adda.l     d0,a0
[000482c8] b7c8                      cmpa.l     a0,a3
[000482ca] 671c                      beq.s      $000482E8
[000482cc] 2248                      movea.l    a0,a1
[000482ce] 3004                      move.w     d4,d0
[000482d0] 5244                      addq.w     #1,d4
[000482d2] 48c0                      ext.l      d0
[000482d4] 2400                      move.l     d0,d2
[000482d6] e58a                      lsl.l      #2,d2
[000482d8] d480                      add.l      d0,d2
[000482da] e58a                      lsl.l      #2,d2
[000482dc] 41f2 2800                 lea.l      0(a2,d2.l),a0
[000482e0] 7014                      moveq.l    #20,d0
[000482e2] 4eb9 0007 6f44            jsr        $00076F44
[000482e8] 5243                      addq.w     #1,d3
[000482ea] b654                      cmp.w      (a4),d3
[000482ec] 6dca                      blt.s      $000482B8
[000482ee] 2055                      movea.l    (a5),a0
[000482f0] b1fc 000d 3966            cmpa.l     #$000D3966,a0
[000482f6] 6704                      beq.s      $000482FC
[000482f8] 6100 fb2c                 bsr        $00047E26
[000482fc] 2a8a                      move.l     a2,(a5)
[000482fe] 5354                      subq.w     #1,(a4)
[00048300] 3014                      move.w     (a4),d0
[00048302] 6f10                      ble.s      $00048314
[00048304] 43fa fdba                 lea.l      $000480C0(pc),a1
[00048308] 7214                      moveq.l    #20,d1
[0004830a] 48c0                      ext.l      d0
[0004830c] 2055                      movea.l    (a5),a0
[0004830e] 4eb9 0007 5314            jsr        $00075314
[00048314] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00048318] 4e75                      rts
Ax_setRecycleSize:
[0004831a] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[0004831e] 594f                      subq.w     #4,a7
[00048320] 2e80                      move.l     d0,(a7)
[00048322] 3801                      move.w     d1,d4
[00048324] 2848                      movea.l    a0,a4
[00048326] 95ca                      suba.l     a2,a2
[00048328] 4243                      clr.w      d3
[0004832a] 7408                      moveq.l    #8,d2
[0004832c] b480                      cmp.l      d0,d2
[0004832e] 6f0a                      ble.s      $0004833A
[00048330] 4a80                      tst.l      d0
[00048332] 6706                      beq.s      $0004833A
[00048334] 3003                      move.w     d3,d0
[00048336] 6000 008c                 bra        $000483C4
[0004833a] 47f9 000d 3bc4            lea.l      $000D3BC4,a3
[00048340] 2013                      move.l     (a3),d0
[00048342] 6706                      beq.s      $0004834A
[00048344] 2040                      movea.l    d0,a0
[00048346] 6100 fade                 bsr        $00047E26
[0004834a] 4293                      clr.l      (a3)
[0004834c] 302b fffe                 move.w     -2(a3),d0
[00048350] 6f1a                      ble.s      $0004836C
[00048352] 487a fd86                 pea.l      $000480DA(pc)
[00048356] 7214                      moveq.l    #20,d1
[00048358] 48c0                      ext.l      d0
[0004835a] 226b fffa                 movea.l    -6(a3),a1
[0004835e] 41ef 0004                 lea.l      4(a7),a0
[00048362] 4eb9 0007 5178            jsr        $00075178
[00048368] 584f                      addq.w     #4,a7
[0004836a] 2448                      movea.l    a0,a2
[0004836c] 200a                      move.l     a2,d0
[0004836e] 6612                      bne.s      $00048382
[00048370] 4a44                      tst.w      d4
[00048372] 6f4e                      ble.s      $000483C2
[00048374] 204c                      movea.l    a4,a0
[00048376] 3204                      move.w     d4,d1
[00048378] 2017                      move.l     (a7),d0
[0004837a] 6100 fe46                 bsr        $000481C2
[0004837e] 3600                      move.w     d0,d3
[00048380] 6040                      bra.s      $000483C2
[00048382] 3a04                      move.w     d4,d5
[00048384] 6010                      bra.s      $00048396
[00048386] 286a 0010                 movea.l    16(a2),a4
[0004838a] 2554 0010                 move.l     (a4),16(a2)
[0004838e] 204c                      movea.l    a4,a0
[00048390] 6100 fa94                 bsr        $00047E26
[00048394] 5245                      addq.w     #1,d5
[00048396] 202a 0010                 move.l     16(a2),d0
[0004839a] 670c                      beq.s      $000483A8
[0004839c] ba6a 0008                 cmp.w      8(a2),d5
[000483a0] 6c06                      bge.s      $000483A8
[000483a2] ba6a 000a                 cmp.w      10(a2),d5
[000483a6] 6dde                      blt.s      $00048386
[000483a8] 3544 0008                 move.w     d4,8(a2)
[000483ac] b86a 000a                 cmp.w      10(a2),d4
[000483b0] 6c04                      bge.s      $000483B6
[000483b2] 3544 000a                 move.w     d4,10(a2)
[000483b6] 4a44                      tst.w      d4
[000483b8] 6e06                      bgt.s      $000483C0
[000483ba] 204a                      movea.l    a2,a0
[000483bc] 6100 feac                 bsr        $0004826A
[000483c0] 7601                      moveq.l    #1,d3
[000483c2] 3003                      move.w     d3,d0
[000483c4] 584f                      addq.w     #4,a7
[000483c6] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[000483ca] 4e75                      rts
Ax_getRecycleStat:
[000483cc] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[000483d0] 2a48                      movea.l    a0,a5
[000483d2] 95ca                      suba.l     a2,a2
[000483d4] 264a                      movea.l    a2,a3
[000483d6] 49f9 000d 3bc4            lea.l      $000D3BC4,a4
[000483dc] 2014                      move.l     (a4),d0
[000483de] 6616                      bne.s      $000483F6
[000483e0] 302c fffe                 move.w     -2(a4),d0
[000483e4] 48c0                      ext.l      d0
[000483e6] e988                      lsl.l      #4,d0
[000483e8] 6100 f8de                 bsr        Ax_malloc
[000483ec] 2888                      move.l     a0,(a4)
[000483ee] 2008                      move.l     a0,d0
[000483f0] 6604                      bne.s      $000483F6
[000483f2] 91c8                      suba.l     a0,a0
[000483f4] 604e                      bra.s      $00048444
[000483f6] 4243                      clr.w      d3
[000483f8] 603a                      bra.s      $00048434
[000483fa] 3203                      move.w     d3,d1
[000483fc] 48c1                      ext.l      d1
[000483fe] 2001                      move.l     d1,d0
[00048400] e588                      lsl.l      #2,d0
[00048402] d081                      add.l      d1,d0
[00048404] e588                      lsl.l      #2,d0
[00048406] 246c fffa                 movea.l    -6(a4),a2
[0004840a] d5c0                      adda.l     d0,a2
[0004840c] e989                      lsl.l      #4,d1
[0004840e] 2654                      movea.l    (a4),a3
[00048410] d7c1                      adda.l     d1,a3
[00048412] 2692                      move.l     (a2),(a3)
[00048414] 276a 0004 0004            move.l     4(a2),4(a3)
[0004841a] 376a 0008 0008            move.w     8(a2),8(a3)
[00048420] 376a 000a 000a            move.w     10(a2),10(a3)
[00048426] 376a 000c 000c            move.w     12(a2),12(a3)
[0004842c] 376a 000e 000e            move.w     14(a2),14(a3)
[00048432] 5243                      addq.w     #1,d3
[00048434] b66c fffe                 cmp.w      -2(a4),d3
[00048438] 6dc0                      blt.s      $000483FA
[0004843a] 200d                      move.l     a5,d0
[0004843c] 6704                      beq.s      $00048442
[0004843e] 3aac fffe                 move.w     -2(a4),(a5)
[00048442] 2054                      movea.l    (a4),a0
[00048444] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00048448] 4e75                      rts
