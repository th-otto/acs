
INmemory:
[00047bf6] 3f03                      move.w     d3,-(a7)
[00047bf8] 2f0a                      move.l     a2,-(a7)
[00047bfa] 45f9 000d 3bbe            lea.l      freeBlockList,a2
[00047c00] 302a fd1a                 move.w     -742(a2),d0
[00047c04] 526a fd1a                 addq.w     #1,-742(a2)
[00047c08] 4a40                      tst.w      d0
[00047c0a] 6648                      bne.s      INmemory_1
[00047c0c] 4243                      clr.w      d3
[00047c0e] 6026                      bra.s      INmemory_2
INmemory_3:
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
INmemory_2:
[00047c36] b66a 0004                 cmp.w      4(a2),d3
[00047c3a] 6dd4                      blt.s      INmemory_3
[00047c3c] 302a 0004                 move.w     4(a2),d0
[00047c40] 6f12                      ble.s      INmemory_1
[00047c42] 43f9 0004 80c0            lea.l      sortFreeMemList,a1
[00047c48] 7214                      moveq.l    #20,d1
[00047c4a] 48c0                      ext.l      d0
[00047c4c] 2052                      movea.l    (a2),a0
[00047c4e] 4eb9 0007 5314            jsr        qsort
INmemory_1:
[00047c54] 4240                      clr.w      d0
[00047c56] 245f                      movea.l    (a7)+,a2
[00047c58] 361f                      move.w     (a7)+,d3
[00047c5a] 4e75                      rts

TRmemory:
[00047c5c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00047c60] 45f9 000d 3bbe            lea.l      freeBlockList,a2
[00047c66] 536a fd1a                 subq.w     #1,-742(a2)
[00047c6a] 6656                      bne.s      TRmemory_1
[00047c6c] 4243                      clr.w      d3
[00047c6e] 602e                      bra.s      TRmemory_2
TRmemory_5:
[00047c70] 3203                      move.w     d3,d1
[00047c72] 48c1                      ext.l      d1
[00047c74] 2001                      move.l     d1,d0
[00047c76] e588                      lsl.l      #2,d0
[00047c78] d081                      add.l      d1,d0
[00047c7a] e588                      lsl.l      #2,d0
[00047c7c] 2652                      movea.l    (a2),a3
[00047c7e] d7c0                      adda.l     d0,a3
[00047c80] 6014                      bra.s      TRmemory_3
TRmemory_4:
[00047c82] 286b 0010                 movea.l    16(a3),a4
[00047c86] 206b 0010                 movea.l    16(a3),a0
[00047c8a] 2750 0010                 move.l     (a0),16(a3)
[00047c8e] 204c                      movea.l    a4,a0
[00047c90] 4eb9 0004 7e26            jsr        Ax_free
TRmemory_3:
[00047c96] 202b 0010                 move.l     16(a3),d0
[00047c9a] 66e6                      bne.s      TRmemory_4
[00047c9c] 5243                      addq.w     #1,d3
TRmemory_2:
[00047c9e] b66a 0004                 cmp.w      4(a2),d3
[00047ca2] 6dcc                      blt.s      TRmemory_5
[00047ca4] 2052                      movea.l    (a2),a0
[00047ca6] b1fc 000d 3966            cmpa.l     #_freeBlockList,a0
[00047cac] 6706                      beq.s      TRmemory_6
[00047cae] 4eb9 0004 7e26            jsr        Ax_free
TRmemory_6:
[00047cb4] 202a 0006                 move.l     6(a2),d0
[00047cb8] 6708                      beq.s      TRmemory_1
[00047cba] 2040                      movea.l    d0,a0
[00047cbc] 4eb9 0004 7e26            jsr        Ax_free
TRmemory_1:
[00047cc2] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00047cc6] 4e75                      rts

Ax_malloc:
[00047cc8] 2f03                      move.l     d3,-(a7)
[00047cca] 2f0a                      move.l     a2,-(a7)
[00047ccc] 2600                      move.l     d0,d3
[00047cce] 4eb9 0004 80e4            jsr        RecycleFreeBlocks
[00047cd4] 2448                      movea.l    a0,a2
[00047cd6] 200a                      move.l     a2,d0
[00047cd8] 660a                      bne.s      Ax_malloc_1
[00047cda] 2003                      move.l     d3,d0
[00047cdc] 4eb9 0004 7cec            jsr        _malloc
[00047ce2] 2448                      movea.l    a0,a2
Ax_malloc_1:
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
[00047cfe] 6606                      bne.s      _malloc_1
[00047d00] 3228 0238                 move.w     568(a0),d1
[00047d04] 670c                      beq.s      _malloc_2
_malloc_1:
[00047d06] 2003                      move.l     d3,d0
[00047d08] 4eb9 0007 6d0e            jsr        malloc
[00047d0e] 2648                      movea.l    a0,a3
[00047d10] 6016                      bra.s      _malloc_3
_malloc_2:
[00047d12] 4eb9 0004 1ab2            jsr        accgemdos
[00047d18] 2003                      move.l     d3,d0
[00047d1a] 4eb9 0007 6d0e            jsr        malloc
[00047d20] 2648                      movea.l    a0,a3
[00047d22] 4eb9 0004 1aca            jsr        oldgemdos
_malloc_3:
[00047d28] 200b                      move.l     a3,d0
[00047d2a] 6604                      bne.s      _malloc_4
[00047d2c] 91c8                      suba.l     a0,a0
[00047d2e] 6036                      bra.s      _malloc_5
_malloc_4:
[00047d30] 2052                      movea.l    (a2),a0
[00047d32] 2268 023c                 movea.l    572(a0),a1
[00047d36] 3029 000e                 move.w     14(a1),d0
[00047d3a] c07c 0400                 and.w      #$0400,d0
[00047d3e] 6624                      bne.s      _malloc_6
[00047d40] b7f9 0010 6758            cmpa.l     watch_max,a3
[00047d46] 641c                      bcc.s      _malloc_6
[00047d48] b7f9 0010 6754            cmpa.l     watch_min,a3
[00047d4e] 6514                      bcs.s      _malloc_6
[00047d50] 2268 03d6                 movea.l    982(a0),a1
[00047d54] 7005                      moveq.l    #5,d0
[00047d56] 91c8                      suba.l     a0,a0
[00047d58] 4e91                      jsr        (a1)
[00047d5a] 204b                      movea.l    a3,a0
[00047d5c] 2252                      movea.l    (a2),a1
[00047d5e] 2269 02d2                 movea.l    722(a1),a1
[00047d62] 4e91                      jsr        (a1)
_malloc_6:
[00047d64] 204b                      movea.l    a3,a0
_malloc_5:
[00047d66] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00047d6a] 4e75                      rts

Ax_ifree:
[00047d6c] 48e7 0038                 movem.l    a2-a4,-(a7)
[00047d70] 2448                      movea.l    a0,a2
[00047d72] 2648                      movea.l    a0,a3
[00047d74] 200a                      move.l     a2,d0
[00047d76] 6700 00a8                 beq        Ax_ifree_1
[00047d7a] b0bc 000d 3660            cmp.l      #null_string,d0
[00047d80] 6700 009e                 beq        Ax_ifree_1
[00047d84] 49f9 0010 1f12            lea.l      ACSblk,a4
[00047d8a] 2054                      movea.l    (a4),a0
[00047d8c] 2268 023c                 movea.l    572(a0),a1
[00047d90] 3029 000e                 move.w     14(a1),d0
[00047d94] c07c 0400                 and.w      #$0400,d0
[00047d98] 665a                      bne.s      Ax_ifree_2
[00047d9a] b5f9 0010 6758            cmpa.l     watch_max,a2
[00047da0] 641c                      bcc.s      Ax_ifree_3
[00047da2] b5f9 0010 6754            cmpa.l     watch_min,a2
[00047da8] 6514                      bcs.s      Ax_ifree_3
[00047daa] 2268 03d6                 movea.l    982(a0),a1
[00047dae] 7005                      moveq.l    #5,d0
[00047db0] 91c8                      suba.l     a0,a0
[00047db2] 4e91                      jsr        (a1)
[00047db4] 204a                      movea.l    a2,a0
[00047db6] 2254                      movea.l    (a4),a1
[00047db8] 2269 02d2                 movea.l    722(a1),a1
[00047dbc] 4e91                      jsr        (a1)
Ax_ifree_3:
[00047dbe] b5fc 0000 1000            cmpa.l     #$00001000,a2
[00047dc4] 6c0e                      bge.s      Ax_ifree_4
[00047dc6] 91c8                      suba.l     a0,a0
[00047dc8] 7005                      moveq.l    #5,d0
[00047dca] 2254                      movea.l    (a4),a1
[00047dcc] 2269 03d6                 movea.l    982(a1),a1
[00047dd0] 4e91                      jsr        (a1)
[00047dd2] 6014                      bra.s      Ax_ifree_5
Ax_ifree_4:
[00047dd4] 7001                      moveq.l    #1,d0
[00047dd6] 220b                      move.l     a3,d1
[00047dd8] c081                      and.l      d1,d0
[00047dda] 6718                      beq.s      Ax_ifree_2
[00047ddc] 91c8                      suba.l     a0,a0
[00047dde] 2254                      movea.l    (a4),a1
[00047de0] 2269 03d6                 movea.l    982(a1),a1
[00047de4] 7006                      moveq.l    #6,d0
[00047de6] 4e91                      jsr        (a1)
Ax_ifree_5:
[00047de8] 204a                      movea.l    a2,a0
[00047dea] 2254                      movea.l    (a4),a1
[00047dec] 2269 02d2                 movea.l    722(a1),a1
[00047df0] 4e91                      jsr        (a1)
[00047df2] 602c                      bra.s      Ax_ifree_1
Ax_ifree_2:
[00047df4] 2054                      movea.l    (a4),a0
[00047df6] 3028 0236                 move.w     566(a0),d0
[00047dfa] 6606                      bne.s      Ax_ifree_6
[00047dfc] 3228 0238                 move.w     568(a0),d1
[00047e00] 670a                      beq.s      Ax_ifree_7
Ax_ifree_6:
[00047e02] 204a                      movea.l    a2,a0
[00047e04] 4eb9 0007 6dd8            jsr        free
[00047e0a] 6014                      bra.s      Ax_ifree_1
Ax_ifree_7:
[00047e0c] 4eb9 0004 1ab2            jsr        accgemdos
[00047e12] 204a                      movea.l    a2,a0
[00047e14] 4eb9 0007 6dd8            jsr        free
[00047e1a] 4eb9 0004 1aca            jsr        oldgemdos
Ax_ifree_1:
[00047e20] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00047e24] 4e75                      rts

Ax_free:
[00047e26] 48e7 0038                 movem.l    a2-a4,-(a7)
[00047e2a] 2448                      movea.l    a0,a2
[00047e2c] 2848                      movea.l    a0,a4
[00047e2e] 200a                      move.l     a2,d0
[00047e30] 6700 00be                 beq        Ax_free_1
[00047e34] b0bc 000d 3660            cmp.l      #null_string,d0
[00047e3a] 6700 00b4                 beq        Ax_free_1
[00047e3e] 47f9 0010 1f12            lea.l      ACSblk,a3
[00047e44] 2053                      movea.l    (a3),a0
[00047e46] 2268 023c                 movea.l    572(a0),a1
[00047e4a] 3029 000e                 move.w     14(a1),d0
[00047e4e] c07c 0400                 and.w      #$0400,d0
[00047e52] 665a                      bne.s      Ax_free_2
[00047e54] b5f9 0010 6758            cmpa.l     watch_max,a2
[00047e5a] 641c                      bcc.s      Ax_free_3
[00047e5c] b5f9 0010 6754            cmpa.l     watch_min,a2
[00047e62] 6514                      bcs.s      Ax_free_3
[00047e64] 2268 03d6                 movea.l    982(a0),a1
[00047e68] 7005                      moveq.l    #5,d0
[00047e6a] 91c8                      suba.l     a0,a0
[00047e6c] 4e91                      jsr        (a1)
[00047e6e] 204a                      movea.l    a2,a0
[00047e70] 2253                      movea.l    (a3),a1
[00047e72] 2269 02d2                 movea.l    722(a1),a1
[00047e76] 4e91                      jsr        (a1)
Ax_free_3:
[00047e78] b5fc 0000 1000            cmpa.l     #$00001000,a2
[00047e7e] 6c0e                      bge.s      Ax_free_4
[00047e80] 91c8                      suba.l     a0,a0
[00047e82] 7005                      moveq.l    #5,d0
[00047e84] 2253                      movea.l    (a3),a1
[00047e86] 2269 03d6                 movea.l    982(a1),a1
[00047e8a] 4e91                      jsr        (a1)
[00047e8c] 6014                      bra.s      Ax_free_5
Ax_free_4:
[00047e8e] 7001                      moveq.l    #1,d0
[00047e90] 220c                      move.l     a4,d1
[00047e92] c081                      and.l      d1,d0
[00047e94] 6718                      beq.s      Ax_free_2
[00047e96] 91c8                      suba.l     a0,a0
[00047e98] 2253                      movea.l    (a3),a1
[00047e9a] 2269 03d6                 movea.l    982(a1),a1
[00047e9e] 7006                      moveq.l    #6,d0
[00047ea0] 4e91                      jsr        (a1)
Ax_free_5:
[00047ea2] 204a                      movea.l    a2,a0
[00047ea4] 2253                      movea.l    (a3),a1
[00047ea6] 2269 02d2                 movea.l    722(a1),a1
[00047eaa] 4e91                      jsr        (a1)
[00047eac] 6042                      bra.s      Ax_free_1
Ax_free_2:
[00047eae] 47f9 000d 3962            lea.l      act,a3
[00047eb4] 2053                      movea.l    (a3),a0
[00047eb6] 7020                      moveq.l    #32,d0
[00047eb8] b0a8 0004                 cmp.l      4(a0),d0
[00047ebc] 6e20                      bgt.s      Ax_free_6
[00047ebe] 203c 0000 0088            move.l     #$00000088,d0
[00047ec4] 6100 fe02                 bsr        Ax_malloc
[00047ec8] 2848                      movea.l    a0,a4
[00047eca] 200c                      move.l     a4,d0
[00047ecc] 6608                      bne.s      Ax_free_7
[00047ece] 204a                      movea.l    a2,a0
[00047ed0] 6100 fe9a                 bsr        Ax_ifree
[00047ed4] 601a                      bra.s      Ax_free_1
Ax_free_7:
[00047ed6] 2893                      move.l     (a3),(a4)
[00047ed8] 42ac 0004                 clr.l      4(a4)
[00047edc] 268c                      move.l     a4,(a3)
Ax_free_6:
[00047ede] 2053                      movea.l    (a3),a0
[00047ee0] 2028 0004                 move.l     4(a0),d0
[00047ee4] 52a8 0004                 addq.l     #1,4(a0)
[00047ee8] e588                      lsl.l      #2,d0
[00047eea] 2053                      movea.l    (a3),a0
[00047eec] 218a 0808                 move.l     a2,8(a0,d0.l)
Ax_free_1:
[00047ef0] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00047ef4] 4e75                      rts

Ax_release:
[00047ef6] 2f0a                      move.l     a2,-(a7)
[00047ef8] 2f0b                      move.l     a3,-(a7)
[00047efa] 45f9 000d 3962            lea.l      act,a2
[00047f00] 6010                      bra.s      Ax_release_1
Ax_release_2:
[00047f02] 2052                      movea.l    (a2),a0
[00047f04] 2028 0004                 move.l     4(a0),d0
[00047f08] e588                      lsl.l      #2,d0
[00047f0a] 2070 0808                 movea.l    8(a0,d0.l),a0
[00047f0e] 6100 fe5c                 bsr        Ax_ifree
Ax_release_1:
[00047f12] 2052                      movea.l    (a2),a0
[00047f14] 2028 0004                 move.l     4(a0),d0
[00047f18] 53a8 0004                 subq.l     #1,4(a0)
[00047f1c] 4a80                      tst.l      d0
[00047f1e] 6ee2                      bgt.s      Ax_release_2
[00047f20] 2052                      movea.l    (a2),a0
[00047f22] 42a8 0004                 clr.l      4(a0)
[00047f26] 2052                      movea.l    (a2),a0
[00047f28] 2650                      movea.l    (a0),a3
[00047f2a] 200b                      move.l     a3,d0
[00047f2c] 6710                      beq.s      Ax_release_3
[00047f2e] 203c 0000 0088            move.l     #$00000088,d0
[00047f34] 4eb9 0004 8140            jsr        Ax_recycle
[00047f3a] 248b                      move.l     a3,(a2)
[00047f3c] 60d4                      bra.s      Ax_release_1
Ax_release_3:
[00047f3e] 265f                      movea.l    (a7)+,a3
[00047f40] 245f                      movea.l    (a7)+,a2
[00047f42] 4e75                      rts

Ax_glmalloc:
[00047f44] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00047f48] 2800                      move.l     d0,d4
[00047f4a] 45f9 0010 1f12            lea.l      ACSblk,a2
[00047f50] 2052                      movea.l    (a2),a0
[00047f52] 3028 0236                 move.w     566(a0),d0
[00047f56] 660c                      bne.s      Ax_glmalloc_1
[00047f58] 3228 0238                 move.w     568(a0),d1
[00047f5c] 6606                      bne.s      Ax_glmalloc_1
[00047f5e] 4eb9 0004 1ab2            jsr        accgemdos
Ax_glmalloc_1:
[00047f64] 4eb9 0007 2b94            jsr        Mxmask
[00047f6a] 3600                      move.w     d0,d3
[00047f6c] 4a40                      tst.w      d0
[00047f6e] 6710                      beq.s      Ax_glmalloc_2
[00047f70] 7223                      moveq.l    #35,d1
[00047f72] c240                      and.w      d0,d1
[00047f74] 2004                      move.l     d4,d0
[00047f76] 4eb9 0007 2af2            jsr        Mxalloc
[00047f7c] 2648                      movea.l    a0,a3
[00047f7e] 600a                      bra.s      Ax_glmalloc_3
Ax_glmalloc_2:
[00047f80] 2004                      move.l     d4,d0
[00047f82] 4eb9 0007 2aba            jsr        Malloc
[00047f88] 2648                      movea.l    a0,a3
Ax_glmalloc_3:
[00047f8a] 2052                      movea.l    (a2),a0
[00047f8c] 3028 0236                 move.w     566(a0),d0
[00047f90] 660c                      bne.s      Ax_glmalloc_4
[00047f92] 3228 0238                 move.w     568(a0),d1
[00047f96] 6606                      bne.s      Ax_glmalloc_4
[00047f98] 4eb9 0004 1aca            jsr        oldgemdos
Ax_glmalloc_4:
[00047f9e] 204b                      movea.l    a3,a0
[00047fa0] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00047fa4] 4e75                      rts

Ax_glfree:
[00047fa6] 2f0a                      move.l     a2,-(a7)
[00047fa8] 2448                      movea.l    a0,a2
[00047faa] 2279 0010 1f12            movea.l    ACSblk,a1
[00047fb0] 3029 0236                 move.w     566(a1),d0
[00047fb4] 6606                      bne.s      Ax_glfree_1
[00047fb6] 3229 0238                 move.w     568(a1),d1
[00047fba] 670a                      beq.s      Ax_glfree_2
Ax_glfree_1:
[00047fbc] 204a                      movea.l    a2,a0
[00047fbe] 4eb9 0007 2acc            jsr        Mfree
[00047fc4] 6014                      bra.s      Ax_glfree_3
Ax_glfree_2:
[00047fc6] 4eb9 0004 1ab2            jsr        accgemdos
[00047fcc] 204a                      movea.l    a2,a0
[00047fce] 4eb9 0007 2acc            jsr        Mfree
[00047fd4] 4eb9 0004 1aca            jsr        oldgemdos
Ax_glfree_3:
[00047fda] 245f                      movea.l    (a7)+,a2
[00047fdc] 4e75                      rts

handle_sigbus:
[00047fde] 2f02                      move.l     d2,-(a7)
[00047fe0] 4eb9 0007 2b44            jsr        Psigreturn
[00047fe6] 7001                      moveq.l    #1,d0
[00047fe8] 41f9 0010 675c            lea.l      check,a0
[00047fee] 4eb9 0007 516c            jsr        longjmp
[00047ff4] 241f                      move.l     (a7)+,d2
[00047ff6] 4e75                      rts

Ax_memCheck:
[00047ff8] 48e7 1f20                 movem.l    d3-d7/a2,-(a7)
[00047ffc] 594f                      subq.w     #4,a7
[00047ffe] 2c00                      move.l     d0,d6
[00048000] 3e01                      move.w     d1,d7
[00048002] 2448                      movea.l    a0,a2
[00048004] 41fa ffd8                 lea.l      handle_sigbus(pc),a0
[00048008] 700a                      moveq.l    #10,d0
[0004800a] 4eb9 0007 2b30            jsr        Psignal
[00048010] 2600                      move.l     d0,d3
[00048012] 72e0                      moveq.l    #-32,d1
[00048014] b280                      cmp.l      d0,d1
[00048016] 671e                      beq.s      Ax_memCheck_1
[00048018] 41fa ffc4                 lea.l      handle_sigbus(pc),a0
[0004801c] 700b                      moveq.l    #11,d0
[0004801e] 4eb9 0007 2b30            jsr        Psignal
[00048024] 2e80                      move.l     d0,(a7)
[00048026] 72e0                      moveq.l    #-32,d1
[00048028] b280                      cmp.l      d0,d1
[0004802a] 6610                      bne.s      Ax_memCheck_2
[0004802c] 2043                      movea.l    d3,a0
[0004802e] 700a                      moveq.l    #10,d0
[00048030] 4eb9 0007 2b30            jsr        Psignal
Ax_memCheck_1:
[00048036] 7001                      moveq.l    #1,d0
[00048038] 6000 007e                 bra.w      Ax_memCheck_3
Ax_memCheck_2:
[0004803c] 7a01                      moveq.l    #1,d5
[0004803e] 41f9 0010 675c            lea.l      check,a0
[00048044] 4eb9 0007 5162            jsr        setjmp
[0004804a] 4a40                      tst.w      d0
[0004804c] 6704                      beq.s      Ax_memCheck_4
[0004804e] 4245                      clr.w      d5
[00048050] 6050                      bra.s      Ax_memCheck_5
Ax_memCheck_4:
[00048052] 72ff                      moveq.l    #-1,d1
[00048054] c246                      and.w      d6,d1
[00048056] 5441                      addq.w     #2,d1
[00048058] 671a                      beq.s      Ax_memCheck_6
[0004805a] 5341                      subq.w     #1,d1
[0004805c] 6702                      beq.s      Ax_memCheck_7
[0004805e] 602e                      bra.s      Ax_memCheck_8
Ax_memCheck_7:
[00048060] 7041                      moveq.l    #65,d0
[00048062] 600a                      bra.s      Ax_memCheck_9
Ax_memCheck_11:
[00048064] 1012                      move.b     (a2),d0
[00048066] 4a47                      tst.w      d7
[00048068] 6702                      beq.s      Ax_memCheck_10
[0004806a] 1480                      move.b     d0,(a2)
Ax_memCheck_10:
[0004806c] 524a                      addq.w     #1,a2
Ax_memCheck_9:
[0004806e] 4a00                      tst.b      d0
[00048070] 66f2                      bne.s      Ax_memCheck_11
[00048072] 602e                      bra.s      Ax_memCheck_5
Ax_memCheck_6:
[00048074] 7041                      moveq.l    #65,d0
[00048076] 600a                      bra.s      Ax_memCheck_12
Ax_memCheck_14:
[00048078] 1012                      move.b     (a2),d0
[0004807a] 4a47                      tst.w      d7
[0004807c] 6702                      beq.s      Ax_memCheck_13
[0004807e] 1480                      move.b     d0,(a2)
Ax_memCheck_13:
[00048080] 524a                      addq.w     #1,a2
Ax_memCheck_12:
[00048082] 4a00                      tst.b      d0
[00048084] 66f2                      bne.s      Ax_memCheck_14
[00048086] 122a ffff                 move.b     -1(a2),d1
[0004808a] 66ec                      bne.s      Ax_memCheck_14
[0004808c] 6014                      bra.s      Ax_memCheck_5
Ax_memCheck_8:
[0004808e] 7800                      moveq.l    #0,d4
[00048090] 600c                      bra.s      Ax_memCheck_15
Ax_memCheck_17:
[00048092] 1012                      move.b     (a2),d0
[00048094] 4a47                      tst.w      d7
[00048096] 6702                      beq.s      Ax_memCheck_16
[00048098] 1480                      move.b     d0,(a2)
Ax_memCheck_16:
[0004809a] 5284                      addq.l     #1,d4
[0004809c] 524a                      addq.w     #1,a2
Ax_memCheck_15:
[0004809e] bc84                      cmp.l      d4,d6
[000480a0] 6ef0                      bgt.s      Ax_memCheck_17
Ax_memCheck_5:
[000480a2] 2043                      movea.l    d3,a0
[000480a4] 700a                      moveq.l    #10,d0
[000480a6] 4eb9 0007 2b30            jsr        Psignal
[000480ac] 2057                      movea.l    (a7),a0
[000480ae] 700b                      moveq.l    #11,d0
[000480b0] 4eb9 0007 2b30            jsr        Psignal
[000480b6] 3005                      move.w     d5,d0
Ax_memCheck_3:
[000480b8] 584f                      addq.w     #4,a7
[000480ba] 4cdf 04f8                 movem.l    (a7)+,d3-d7/a2
[000480be] 4e75                      rts

sortFreeMemList:
[000480c0] 2010                      move.l     (a0),d0
[000480c2] b091                      cmp.l      (a1),d0
[000480c4] 670a                      beq.s      sortFreeMemList_1
[000480c6] 3028 0002                 move.w     2(a0),d0
[000480ca] 9069 0002                 sub.w      2(a1),d0
[000480ce] 4e75                      rts
sortFreeMemList_1:
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
[000480ec] 3239 000d 3bc2            move.w     freeBlockListAnz,d1
[000480f2] 6f1e                      ble.s      RecycleFreeBlocks_1
[000480f4] 487a ffe4                 pea.l      searchFreeMemList(pc)
[000480f8] 3001                      move.w     d1,d0
[000480fa] 48c0                      ext.l      d0
[000480fc] 2279 000d 3bbe            movea.l    freeBlockList,a1
[00048102] 41ef 0004                 lea.l      4(a7),a0
[00048106] 7214                      moveq.l    #20,d1
[00048108] 4eb9 0007 5178            jsr        bsearch
[0004810e] 584f                      addq.w     #4,a7
[00048110] 2448                      movea.l    a0,a2
RecycleFreeBlocks_1:
[00048112] 200a                      move.l     a2,d0
[00048114] 6722                      beq.s      RecycleFreeBlocks_2
[00048116] 222a 0010                 move.l     16(a2),d1
[0004811a] 671c                      beq.s      RecycleFreeBlocks_2
[0004811c] 2041                      movea.l    d1,a0
[0004811e] 2550 0010                 move.l     (a0),16(a2)
[00048122] 342a 000a                 move.w     10(a2),d2
[00048126] 6f04                      ble.s      RecycleFreeBlocks_3
[00048128] 536a 000a                 subq.w     #1,10(a2)
RecycleFreeBlocks_3:
[0004812c] 302a 000e                 move.w     14(a2),d0
[00048130] 6f04                      ble.s      RecycleFreeBlocks_4
[00048132] 536a 000e                 subq.w     #1,14(a2)
RecycleFreeBlocks_4:
[00048136] 6002                      bra.s      RecycleFreeBlocks_5
RecycleFreeBlocks_2:
[00048138] 91c8                      suba.l     a0,a0
RecycleFreeBlocks_5:
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
[00048152] 6766                      beq.s      Ax_recycle_1
[00048154] b2bc 000d 3660            cmp.l      #null_string,d1
[0004815a] 675e                      beq.s      Ax_recycle_1
[0004815c] 3439 000d 3bc2            move.w     freeBlockListAnz,d2
[00048162] 6f1e                      ble.s      Ax_recycle_2
[00048164] 487a ff74                 pea.l      searchFreeMemList(pc)
[00048168] 3002                      move.w     d2,d0
[0004816a] 48c0                      ext.l      d0
[0004816c] 2279 000d 3bbe            movea.l    freeBlockList,a1
[00048172] 41ef 0004                 lea.l      4(a7),a0
[00048176] 7214                      moveq.l    #20,d1
[00048178] 4eb9 0007 5178            jsr        bsearch
[0004817e] 584f                      addq.w     #4,a7
[00048180] 2848                      movea.l    a0,a4
Ax_recycle_2:
[00048182] 200c                      move.l     a4,d0
[00048184] 672a                      beq.s      Ax_recycle_3
[00048186] 322c 000a                 move.w     10(a4),d1
[0004818a] b26c 0008                 cmp.w      8(a4),d1
[0004818e] 6c1c                      bge.s      Ax_recycle_4
[00048190] 26ac 0010                 move.l     16(a4),(a3)
[00048194] 294b 0010                 move.l     a3,16(a4)
[00048198] 7601                      moveq.l    #1,d3
[0004819a] d76c 000a                 add.w      d3,10(a4)
[0004819e] 322c 000a                 move.w     10(a4),d1
[000481a2] b26c 000c                 cmp.w      12(a4),d1
[000481a6] 6f04                      ble.s      Ax_recycle_4
[000481a8] 3941 000c                 move.w     d1,12(a4)
Ax_recycle_4:
[000481ac] 526c 000e                 addq.w     #1,14(a4)
Ax_recycle_3:
[000481b0] 4a43                      tst.w      d3
[000481b2] 6606                      bne.s      Ax_recycle_1
[000481b4] 204a                      movea.l    a2,a0
[000481b6] 6100 fc6e                 bsr        Ax_free
Ax_recycle_1:
[000481ba] 584f                      addq.w     #4,a7
[000481bc] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000481c0] 4e75                      rts

createNewList:
[000481c2] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[000481c6] 2600                      move.l     d0,d3
[000481c8] 3801                      move.w     d1,d4
[000481ca] 2848                      movea.l    a0,a4
[000481cc] 95ca                      suba.l     a2,a2
[000481ce] 47f9 000d 3bc2            lea.l      freeBlockListAnz,a3
[000481d4] 7201                      moveq.l    #1,d1
[000481d6] d253                      add.w      (a3),d1
[000481d8] 48c1                      ext.l      d1
[000481da] 2001                      move.l     d1,d0
[000481dc] e588                      lsl.l      #2,d0
[000481de] d081                      add.l      d1,d0
[000481e0] e588                      lsl.l      #2,d0
[000481e2] 6100 fb08                 bsr        _malloc
[000481e6] 2448                      movea.l    a0,a2
[000481e8] 200a                      move.l     a2,d0
[000481ea] 6604                      bne.s      createNewList_1
[000481ec] 4240                      clr.w      d0
[000481ee] 6074                      bra.s      createNewList_2
createNewList_1:
[000481f0] 3213                      move.w     (a3),d1
[000481f2] 48c1                      ext.l      d1
[000481f4] 2001                      move.l     d1,d0
[000481f6] e588                      lsl.l      #2,d0
[000481f8] d081                      add.l      d1,d0
[000481fa] e588                      lsl.l      #2,d0
[000481fc] 226b fffc                 movea.l    -4(a3),a1
[00048200] 204a                      movea.l    a2,a0
[00048202] 4eb9 0007 6f44            jsr        memcpy
[00048208] 206b fffc                 movea.l    -4(a3),a0
[0004820c] b1fc 000d 3966            cmpa.l     #_freeBlockList,a0
[00048212] 6704                      beq.s      createNewList_3
[00048214] 6100 fc10                 bsr        Ax_free
createNewList_3:
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
[0004824e] 6f12                      ble.s      createNewList_4
[00048250] 43fa fe6e                 lea.l      sortFreeMemList(pc),a1
[00048254] 7214                      moveq.l    #20,d1
[00048256] 48c0                      ext.l      d0
[00048258] 206b fffc                 movea.l    -4(a3),a0
[0004825c] 4eb9 0007 5314            jsr        qsort
createNewList_4:
[00048262] 7001                      moveq.l    #1,d0
createNewList_2:
[00048264] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00048268] 4e75                      rts

deleteOldList:
[0004826a] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0004826e] 2648                      movea.l    a0,a3
[00048270] 95ca                      suba.l     a2,a2
[00048272] 600e                      bra.s      deleteOldList_1
deleteOldList_2:
[00048274] 286b 0010                 movea.l    16(a3),a4
[00048278] 2754 0010                 move.l     (a4),16(a3)
[0004827c] 204c                      movea.l    a4,a0
[0004827e] 6100 fba6                 bsr        Ax_free
deleteOldList_1:
[00048282] 202b 0010                 move.l     16(a3),d0
[00048286] 66ec                      bne.s      deleteOldList_2
[00048288] 49f9 000d 3bc2            lea.l      freeBlockListAnz,a4
[0004828e] 4bf9 000d 3bbe            lea.l      freeBlockList,a5
[00048294] 0c54 0001                 cmpi.w     #$0001,(a4)
[00048298] 6f14                      ble.s      deleteOldList_3
[0004829a] 72ff                      moveq.l    #-1,d1
[0004829c] d254                      add.w      (a4),d1
[0004829e] 48c1                      ext.l      d1
[000482a0] 2001                      move.l     d1,d0
[000482a2] e588                      lsl.l      #2,d0
[000482a4] d081                      add.l      d1,d0
[000482a6] e588                      lsl.l      #2,d0
[000482a8] 6100 fa42                 bsr        _malloc
[000482ac] 2448                      movea.l    a0,a2
deleteOldList_3:
[000482ae] 200a                      move.l     a2,d0
[000482b0] 674e                      beq.s      deleteOldList_4
[000482b2] 4244                      clr.w      d4
[000482b4] 3604                      move.w     d4,d3
[000482b6] 6032                      bra.s      deleteOldList_5
deleteOldList_7:
[000482b8] 3203                      move.w     d3,d1
[000482ba] 48c1                      ext.l      d1
[000482bc] 2001                      move.l     d1,d0
[000482be] e588                      lsl.l      #2,d0
[000482c0] d081                      add.l      d1,d0
[000482c2] e588                      lsl.l      #2,d0
[000482c4] 2055                      movea.l    (a5),a0
[000482c6] d1c0                      adda.l     d0,a0
[000482c8] b7c8                      cmpa.l     a0,a3
[000482ca] 671c                      beq.s      deleteOldList_6
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
[000482e2] 4eb9 0007 6f44            jsr        memcpy
deleteOldList_6:
[000482e8] 5243                      addq.w     #1,d3
deleteOldList_5:
[000482ea] b654                      cmp.w      (a4),d3
[000482ec] 6dca                      blt.s      deleteOldList_7
[000482ee] 2055                      movea.l    (a5),a0
[000482f0] b1fc 000d 3966            cmpa.l     #_freeBlockList,a0
[000482f6] 6704                      beq.s      deleteOldList_8
[000482f8] 6100 fb2c                 bsr        Ax_free
deleteOldList_8:
[000482fc] 2a8a                      move.l     a2,(a5)
[000482fe] 5354                      subq.w     #1,(a4)
deleteOldList_4:
[00048300] 3014                      move.w     (a4),d0
[00048302] 6f10                      ble.s      deleteOldList_9
[00048304] 43fa fdba                 lea.l      sortFreeMemList(pc),a1
[00048308] 7214                      moveq.l    #20,d1
[0004830a] 48c0                      ext.l      d0
[0004830c] 2055                      movea.l    (a5),a0
[0004830e] 4eb9 0007 5314            jsr        qsort
deleteOldList_9:
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
[0004832e] 6f0a                      ble.s      Ax_setRecycleSize_1
[00048330] 4a80                      tst.l      d0
[00048332] 6706                      beq.s      Ax_setRecycleSize_1
[00048334] 3003                      move.w     d3,d0
[00048336] 6000 008c                 bra        Ax_setRecycleSize_2
Ax_setRecycleSize_1:
[0004833a] 47f9 000d 3bc4            lea.l      freeBlockStat,a3
[00048340] 2013                      move.l     (a3),d0
[00048342] 6706                      beq.s      Ax_setRecycleSize_3
[00048344] 2040                      movea.l    d0,a0
[00048346] 6100 fade                 bsr        Ax_free
Ax_setRecycleSize_3:
[0004834a] 4293                      clr.l      (a3)
[0004834c] 302b fffe                 move.w     -2(a3),d0
[00048350] 6f1a                      ble.s      Ax_setRecycleSize_4
[00048352] 487a fd86                 pea.l      searchFreeMemList(pc)
[00048356] 7214                      moveq.l    #20,d1
[00048358] 48c0                      ext.l      d0
[0004835a] 226b fffa                 movea.l    -6(a3),a1
[0004835e] 41ef 0004                 lea.l      4(a7),a0
[00048362] 4eb9 0007 5178            jsr        bsearch
[00048368] 584f                      addq.w     #4,a7
[0004836a] 2448                      movea.l    a0,a2
Ax_setRecycleSize_4:
[0004836c] 200a                      move.l     a2,d0
[0004836e] 6612                      bne.s      Ax_setRecycleSize_5
[00048370] 4a44                      tst.w      d4
[00048372] 6f4e                      ble.s      Ax_setRecycleSize_6
[00048374] 204c                      movea.l    a4,a0
[00048376] 3204                      move.w     d4,d1
[00048378] 2017                      move.l     (a7),d0
[0004837a] 6100 fe46                 bsr        createNewList
[0004837e] 3600                      move.w     d0,d3
[00048380] 6040                      bra.s      Ax_setRecycleSize_6
Ax_setRecycleSize_5:
[00048382] 3a04                      move.w     d4,d5
[00048384] 6010                      bra.s      Ax_setRecycleSize_7
Ax_setRecycleSize_9:
[00048386] 286a 0010                 movea.l    16(a2),a4
[0004838a] 2554 0010                 move.l     (a4),16(a2)
[0004838e] 204c                      movea.l    a4,a0
[00048390] 6100 fa94                 bsr        Ax_free
[00048394] 5245                      addq.w     #1,d5
Ax_setRecycleSize_7:
[00048396] 202a 0010                 move.l     16(a2),d0
[0004839a] 670c                      beq.s      Ax_setRecycleSize_8
[0004839c] ba6a 0008                 cmp.w      8(a2),d5
[000483a0] 6c06                      bge.s      Ax_setRecycleSize_8
[000483a2] ba6a 000a                 cmp.w      10(a2),d5
[000483a6] 6dde                      blt.s      Ax_setRecycleSize_9
Ax_setRecycleSize_8:
[000483a8] 3544 0008                 move.w     d4,8(a2)
[000483ac] b86a 000a                 cmp.w      10(a2),d4
[000483b0] 6c04                      bge.s      Ax_setRecycleSize_10
[000483b2] 3544 000a                 move.w     d4,10(a2)
Ax_setRecycleSize_10:
[000483b6] 4a44                      tst.w      d4
[000483b8] 6e06                      bgt.s      Ax_setRecycleSize_11
[000483ba] 204a                      movea.l    a2,a0
[000483bc] 6100 feac                 bsr        deleteOldList
Ax_setRecycleSize_11:
[000483c0] 7601                      moveq.l    #1,d3
Ax_setRecycleSize_6:
[000483c2] 3003                      move.w     d3,d0
Ax_setRecycleSize_2:
[000483c4] 584f                      addq.w     #4,a7
[000483c6] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[000483ca] 4e75                      rts

Ax_getRecycleStat:
[000483cc] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[000483d0] 2a48                      movea.l    a0,a5
[000483d2] 95ca                      suba.l     a2,a2
[000483d4] 264a                      movea.l    a2,a3
[000483d6] 49f9 000d 3bc4            lea.l      freeBlockStat,a4
[000483dc] 2014                      move.l     (a4),d0
[000483de] 6616                      bne.s      Ax_getRecycleStat_1
[000483e0] 302c fffe                 move.w     -2(a4),d0
[000483e4] 48c0                      ext.l      d0
[000483e6] e988                      lsl.l      #4,d0
[000483e8] 6100 f8de                 bsr        Ax_malloc
[000483ec] 2888                      move.l     a0,(a4)
[000483ee] 2008                      move.l     a0,d0
[000483f0] 6604                      bne.s      Ax_getRecycleStat_1
[000483f2] 91c8                      suba.l     a0,a0
[000483f4] 604e                      bra.s      Ax_getRecycleStat_2
Ax_getRecycleStat_1:
[000483f6] 4243                      clr.w      d3
[000483f8] 603a                      bra.s      Ax_getRecycleStat_3
Ax_getRecycleStat_4:
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
Ax_getRecycleStat_3:
[00048434] b66c fffe                 cmp.w      -2(a4),d3
[00048438] 6dc0                      blt.s      Ax_getRecycleStat_4
[0004843a] 200d                      move.l     a5,d0
[0004843c] 6704                      beq.s      Ax_getRecycleStat_5
[0004843e] 3aac fffe                 move.w     -2(a4),(a5)
Ax_getRecycleStat_5:
[00048442] 2054                      movea.l    (a4),a0
Ax_getRecycleStat_2:
[00048444] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00048448] 4e75                      rts

		.data

in_use:
[000d38d4]                           dc.b $00
[000d38d5]                           dc.b $00
[000d38d6]                           dc.b $00
[000d38d7]                           dc.b $00
MemInit:
[000d38d8]                           dc.b $00
[000d38d9]                           dc.b $00
start:
[000d38da]                           dc.b $00
[000d38db]                           dc.b $00
[000d38dc]                           dc.b $00
[000d38dd]                           dc.b $00
[000d38de]                           dc.b $00
[000d38df]                           dc.b $00
[000d38e0]                           dc.b $00
[000d38e1]                           dc.b $00
[000d38e2]                           dc.b $00
[000d38e3]                           dc.b $00
[000d38e4]                           dc.b $00
[000d38e5]                           dc.b $00
[000d38e6]                           dc.b $00
[000d38e7]                           dc.b $00
[000d38e8]                           dc.b $00
[000d38e9]                           dc.b $00
[000d38ea]                           dc.b $00
[000d38eb]                           dc.b $00
[000d38ec]                           dc.b $00
[000d38ed]                           dc.b $00
[000d38ee]                           dc.b $00
[000d38ef]                           dc.b $00
[000d38f0]                           dc.b $00
[000d38f1]                           dc.b $00
[000d38f2]                           dc.b $00
[000d38f3]                           dc.b $00
[000d38f4]                           dc.b $00
[000d38f5]                           dc.b $00
[000d38f6]                           dc.b $00
[000d38f7]                           dc.b $00
[000d38f8]                           dc.b $00
[000d38f9]                           dc.b $00
[000d38fa]                           dc.b $00
[000d38fb]                           dc.b $00
[000d38fc]                           dc.b $00
[000d38fd]                           dc.b $00
[000d38fe]                           dc.b $00
[000d38ff]                           dc.b $00
[000d3900]                           dc.b $00
[000d3901]                           dc.b $00
[000d3902]                           dc.b $00
[000d3903]                           dc.b $00
[000d3904]                           dc.b $00
[000d3905]                           dc.b $00
[000d3906]                           dc.b $00
[000d3907]                           dc.b $00
[000d3908]                           dc.b $00
[000d3909]                           dc.b $00
[000d390a]                           dc.b $00
[000d390b]                           dc.b $00
[000d390c]                           dc.b $00
[000d390d]                           dc.b $00
[000d390e]                           dc.b $00
[000d390f]                           dc.b $00
[000d3910]                           dc.b $00
[000d3911]                           dc.b $00
[000d3912]                           dc.b $00
[000d3913]                           dc.b $00
[000d3914]                           dc.b $00
[000d3915]                           dc.b $00
[000d3916]                           dc.b $00
[000d3917]                           dc.b $00
[000d3918]                           dc.b $00
[000d3919]                           dc.b $00
[000d391a]                           dc.b $00
[000d391b]                           dc.b $00
[000d391c]                           dc.b $00
[000d391d]                           dc.b $00
[000d391e]                           dc.b $00
[000d391f]                           dc.b $00
[000d3920]                           dc.b $00
[000d3921]                           dc.b $00
[000d3922]                           dc.b $00
[000d3923]                           dc.b $00
[000d3924]                           dc.b $00
[000d3925]                           dc.b $00
[000d3926]                           dc.b $00
[000d3927]                           dc.b $00
[000d3928]                           dc.b $00
[000d3929]                           dc.b $00
[000d392a]                           dc.b $00
[000d392b]                           dc.b $00
[000d392c]                           dc.b $00
[000d392d]                           dc.b $00
[000d392e]                           dc.b $00
[000d392f]                           dc.b $00
[000d3930]                           dc.b $00
[000d3931]                           dc.b $00
[000d3932]                           dc.b $00
[000d3933]                           dc.b $00
[000d3934]                           dc.b $00
[000d3935]                           dc.b $00
[000d3936]                           dc.b $00
[000d3937]                           dc.b $00
[000d3938]                           dc.b $00
[000d3939]                           dc.b $00
[000d393a]                           dc.b $00
[000d393b]                           dc.b $00
[000d393c]                           dc.b $00
[000d393d]                           dc.b $00
[000d393e]                           dc.b $00
[000d393f]                           dc.b $00
[000d3940]                           dc.b $00
[000d3941]                           dc.b $00
[000d3942]                           dc.b $00
[000d3943]                           dc.b $00
[000d3944]                           dc.b $00
[000d3945]                           dc.b $00
[000d3946]                           dc.b $00
[000d3947]                           dc.b $00
[000d3948]                           dc.b $00
[000d3949]                           dc.b $00
[000d394a]                           dc.b $00
[000d394b]                           dc.b $00
[000d394c]                           dc.b $00
[000d394d]                           dc.b $00
[000d394e]                           dc.b $00
[000d394f]                           dc.b $00
[000d3950]                           dc.b $00
[000d3951]                           dc.b $00
[000d3952]                           dc.b $00
[000d3953]                           dc.b $00
[000d3954]                           dc.b $00
[000d3955]                           dc.b $00
[000d3956]                           dc.b $00
[000d3957]                           dc.b $00
[000d3958]                           dc.b $00
[000d3959]                           dc.b $00
[000d395a]                           dc.b $00
[000d395b]                           dc.b $00
[000d395c]                           dc.b $00
[000d395d]                           dc.b $00
[000d395e]                           dc.b $00
[000d395f]                           dc.b $00
[000d3960]                           dc.b $00
[000d3961]                           dc.b $00
act:
[000d3962] 000d38da                  dc.l start
_freeBlockList:
[000d3966]                           dc.b $00
[000d3967]                           dc.b $00
[000d3968]                           dc.b $00
[000d3969]                           dc.b $a2
[000d396a] 000d3bc8                  dc.l $000d3bc8 ; no symbol found
[000d396e]                           dc.b $00
[000d396f]                           dc.b $14
[000d3970]                           dc.b $00
[000d3971]                           dc.b $00
[000d3972]                           dc.b $00
[000d3973]                           dc.b $00
[000d3974]                           dc.b $00
[000d3975]                           dc.b $00
[000d3976]                           dc.b $00
[000d3977]                           dc.b $00
[000d3978]                           dc.b $00
[000d3979]                           dc.b $00
[000d397a]                           dc.b $00
[000d397b]                           dc.b $00
[000d397c]                           dc.b $00
[000d397d]                           dc.b $20
[000d397e] 000d3bd0                  dc.l $000d3bd0 ; no symbol found
[000d3982]                           dc.w $01f4
[000d3984]                           dc.b $00
[000d3985]                           dc.b $00
[000d3986]                           dc.b $00
[000d3987]                           dc.b $00
[000d3988]                           dc.b $00
[000d3989]                           dc.b $00
[000d398a]                           dc.b $00
[000d398b]                           dc.b $00
[000d398c]                           dc.b $00
[000d398d]                           dc.b $00
[000d398e]                           dc.b $00
[000d398f]                           dc.b $00
[000d3990]                           dc.b $00
[000d3991]                           dc.b $26
[000d3992] 000d3bd9                  dc.l $000d3bd9 ; no symbol found
[000d3996]                           dc.b $00
[000d3997]                           dc.b $05
[000d3998]                           dc.b $00
[000d3999]                           dc.b $00
[000d399a]                           dc.b $00
[000d399b]                           dc.b $00
[000d399c]                           dc.b $00
[000d399d]                           dc.b $00
[000d399e]                           dc.b $00
[000d399f]                           dc.b $00
[000d39a0]                           dc.b $00
[000d39a1]                           dc.b $00
[000d39a2]                           dc.b $00
[000d39a3]                           dc.b $00
[000d39a4]                           dc.b $00
[000d39a5]                           dc.b $22
[000d39a6] 000d3bda                  dc.l $000d3bda ; no symbol found
[000d39aa]                           dc.b $00
[000d39ab]                           dc.b $05
[000d39ac]                           dc.b $00
[000d39ad]                           dc.b $00
[000d39ae]                           dc.b $00
[000d39af]                           dc.b $00
[000d39b0]                           dc.b $00
[000d39b1]                           dc.b $00
[000d39b2]                           dc.b $00
[000d39b3]                           dc.b $00
[000d39b4]                           dc.b $00
[000d39b5]                           dc.b $00
[000d39b6]                           dc.b $00
[000d39b7]                           dc.b $00
[000d39b8]                           dc.b $00
[000d39b9]                           dc.b $16
[000d39ba] 000d3be2                  dc.l $000d3be2 ; no symbol found
[000d39be]                           dc.b $00
[000d39bf]                           dc.b $0a
[000d39c0]                           dc.b $00
[000d39c1]                           dc.b $00
[000d39c2]                           dc.b $00
[000d39c3]                           dc.b $00
[000d39c4]                           dc.b $00
[000d39c5]                           dc.b $00
[000d39c6]                           dc.b $00
[000d39c7]                           dc.b $00
[000d39c8]                           dc.b $00
[000d39c9]                           dc.b $00
[000d39ca]                           dc.b $00
[000d39cb]                           dc.b $00
[000d39cc]                           dc.b $00
[000d39cd]                           dc.b $0e
[000d39ce] 000d3be8                  dc.l $000d3be8 ; no symbol found
[000d39d2]                           dc.b $00
[000d39d3]                           dc.b $0a
[000d39d4]                           dc.b $00
[000d39d5]                           dc.b $00
[000d39d6]                           dc.b $00
[000d39d7]                           dc.b $00
[000d39d8]                           dc.b $00
[000d39d9]                           dc.b $00
[000d39da]                           dc.b $00
[000d39db]                           dc.b $00
[000d39dc]                           dc.b $00
[000d39dd]                           dc.b $00
[000d39de]                           dc.b $00
[000d39df]                           dc.b $00
[000d39e0]                           dc.b $00
[000d39e1]                           dc.b $1c
[000d39e2] 000d3bef                  dc.l $000d3bef ; no symbol found
[000d39e6]                           dc.b $00
[000d39e7]                           dc.b $1e
[000d39e8]                           dc.b $00
[000d39e9]                           dc.b $00
[000d39ea]                           dc.b $00
[000d39eb]                           dc.b $00
[000d39ec]                           dc.b $00
[000d39ed]                           dc.b $00
[000d39ee]                           dc.b $00
[000d39ef]                           dc.b $00
[000d39f0]                           dc.b $00
[000d39f1]                           dc.b $00
[000d39f2]                           dc.b $00
[000d39f3]                           dc.b $00
[000d39f4]                           dc.b $00
[000d39f5]                           dc.b $14
[000d39f6] 000d3bf7                  dc.l $000d3bf7 ; no symbol found
[000d39fa]                           dc.b $00
[000d39fb]                           dc.b $0f
[000d39fc]                           dc.b $00
[000d39fd]                           dc.b $00
[000d39fe]                           dc.b $00
[000d39ff]                           dc.b $00
[000d3a00]                           dc.b $00
[000d3a01]                           dc.b $00
[000d3a02]                           dc.b $00
[000d3a03]                           dc.b $00
[000d3a04]                           dc.b $00
[000d3a05]                           dc.b $00
[000d3a06]                           dc.b $00
[000d3a07]                           dc.b $00
[000d3a08]                           dc.b $00
[000d3a09]                           dc.b $10
[000d3a0a] 000d3bfc                  dc.l $000d3bfc ; no symbol found
[000d3a0e]                           dc.b $00
[000d3a0f]                           dc.b $02
[000d3a10]                           dc.b $00
[000d3a11]                           dc.b $00
[000d3a12]                           dc.b $00
[000d3a13]                           dc.b $00
[000d3a14]                           dc.b $00
[000d3a15]                           dc.b $00
[000d3a16]                           dc.b $00
[000d3a17]                           dc.b $00
[000d3a18]                           dc.b $00
[000d3a19]                           dc.b $00
[000d3a1a]                           dc.b $00
[000d3a1b]                           dc.b $00
[000d3a1c]                           dc.b $00
[000d3a1d]                           dc.b $26
[000d3a1e] 000d3c07                  dc.l $000d3c07 ; no symbol found
[000d3a22]                           dc.b $00
[000d3a23]                           dc.b $02
[000d3a24]                           dc.b $00
[000d3a25]                           dc.b $00
[000d3a26]                           dc.b $00
[000d3a27]                           dc.b $00
[000d3a28]                           dc.b $00
[000d3a29]                           dc.b $00
[000d3a2a]                           dc.b $00
[000d3a2b]                           dc.b $00
[000d3a2c]                           dc.b $00
[000d3a2d]                           dc.b $00
[000d3a2e]                           dc.b $00
[000d3a2f]                           dc.b $00
[000d3a30]                           dc.b $00
[000d3a31]                           dc.b $1a
[000d3a32] 000d3c13                  dc.l $000d3c13 ; no symbol found
[000d3a36]                           dc.b $00
[000d3a37]                           dc.b $05
[000d3a38]                           dc.b $00
[000d3a39]                           dc.b $00
[000d3a3a]                           dc.b $00
[000d3a3b]                           dc.b $00
[000d3a3c]                           dc.b $00
[000d3a3d]                           dc.b $00
[000d3a3e]                           dc.b $00
[000d3a3f]                           dc.b $00
[000d3a40]                           dc.b $00
[000d3a41]                           dc.b $00
[000d3a42]                           dc.b $00
[000d3a43]                           dc.b $00
[000d3a44]                           dc.b $00
[000d3a45]                           dc.b $16
[000d3a46] 000d3c1e                  dc.l $000d3c1e ; no symbol found
[000d3a4a]                           dc.b $00
[000d3a4b]                           dc.b $02
[000d3a4c]                           dc.b $00
[000d3a4d]                           dc.b $00
[000d3a4e]                           dc.b $00
[000d3a4f]                           dc.b $00
[000d3a50]                           dc.b $00
[000d3a51]                           dc.b $00
[000d3a52]                           dc.b $00
[000d3a53]                           dc.b $00
[000d3a54]                           dc.b $00
[000d3a55]                           dc.b $00
[000d3a56]                           dc.b $00
[000d3a57]                           dc.b $00
[000d3a58]                           dc.b $00
[000d3a59]                           dc.b $24
[000d3a5a] 000d3c23                  dc.l $000d3c23 ; no symbol found
[000d3a5e]                           dc.b $00
[000d3a5f]                           dc.b $0a
[000d3a60]                           dc.b $00
[000d3a61]                           dc.b $00
[000d3a62]                           dc.b $00
[000d3a63]                           dc.b $00
[000d3a64]                           dc.b $00
[000d3a65]                           dc.b $00
[000d3a66]                           dc.b $00
[000d3a67]                           dc.b $00
[000d3a68]                           dc.b $00
[000d3a69]                           dc.b $00
[000d3a6a]                           dc.b $00
[000d3a6b]                           dc.b $00
[000d3a6c]                           dc.b $00
[000d3a6d]                           dc.b $12
[000d3a6e] 000d3c34                  dc.l $000d3c34 ; no symbol found
[000d3a72]                           dc.b $00
[000d3a73]                           dc.b $02
[000d3a74]                           dc.b $00
[000d3a75]                           dc.b $00
[000d3a76]                           dc.b $00
[000d3a77]                           dc.b $00
[000d3a78]                           dc.b $00
[000d3a79]                           dc.b $00
[000d3a7a]                           dc.b $00
[000d3a7b]                           dc.b $00
[000d3a7c]                           dc.b $00
[000d3a7d]                           dc.b $00
[000d3a7e]                           dc.b $00
[000d3a7f]                           dc.b $00
[000d3a80]                           dc.b $00
[000d3a81]                           dc.b $08
[000d3a82] 000d3c42                  dc.l $000d3c42 ; no symbol found
[000d3a86]                           dc.b $00
[000d3a87]                           dc.b $02
[000d3a88]                           dc.b $00
[000d3a89]                           dc.b $00
[000d3a8a]                           dc.b $00
[000d3a8b]                           dc.b $00
[000d3a8c]                           dc.b $00
[000d3a8d]                           dc.b $00
[000d3a8e]                           dc.b $00
[000d3a8f]                           dc.b $00
[000d3a90]                           dc.b $00
[000d3a91]                           dc.b $00
[000d3a92]                           dc.b $00
[000d3a93]                           dc.b $00
[000d3a94]                           dc.b $00
[000d3a95]                           dc.b $18
[000d3a96] 000d3c4b                  dc.l $000d3c4b ; no symbol found
[000d3a9a]                           dc.b $00
[000d3a9b]                           dc.b $02
[000d3a9c]                           dc.b $00
[000d3a9d]                           dc.b $00
[000d3a9e]                           dc.b $00
[000d3a9f]                           dc.b $00
[000d3aa0]                           dc.b $00
[000d3aa1]                           dc.b $00
[000d3aa2]                           dc.b $00
[000d3aa3]                           dc.b $00
[000d3aa4]                           dc.b $00
[000d3aa5]                           dc.b $00
[000d3aa6]                           dc.b $00
[000d3aa7]                           dc.b $00
[000d3aa8]                           dc.b $00
[000d3aa9]                           dc.b $20
[000d3aaa] 000d3c56                  dc.l $000d3c56 ; no symbol found
[000d3aae]                           dc.b $00
[000d3aaf]                           dc.b $04
[000d3ab0]                           dc.b $00
[000d3ab1]                           dc.b $00
[000d3ab2]                           dc.b $00
[000d3ab3]                           dc.b $00
[000d3ab4]                           dc.b $00
[000d3ab5]                           dc.b $00
[000d3ab6]                           dc.b $00
[000d3ab7]                           dc.b $00
[000d3ab8]                           dc.b $00
[000d3ab9]                           dc.b $00
[000d3aba]                           dc.b $00
[000d3abb]                           dc.b $00
[000d3abc]                           dc.b $00
[000d3abd]                           dc.b $72
[000d3abe] 000d3c5b                  dc.l $000d3c5b ; no symbol found
[000d3ac2]                           dc.b $00
[000d3ac3]                           dc.b $02
[000d3ac4]                           dc.b $00
[000d3ac5]                           dc.b $00
[000d3ac6]                           dc.b $00
[000d3ac7]                           dc.b $00
[000d3ac8]                           dc.b $00
[000d3ac9]                           dc.b $00
[000d3aca]                           dc.b $00
[000d3acb]                           dc.b $00
[000d3acc]                           dc.b $00
[000d3acd]                           dc.b $00
[000d3ace]                           dc.b $00
[000d3acf]                           dc.b $00
[000d3ad0]                           dc.b $00
[000d3ad1]                           dc.b $3e
[000d3ad2] 000d3c67                  dc.l $000d3c67 ; no symbol found
[000d3ad6]                           dc.b $00
[000d3ad7]                           dc.b $02
[000d3ad8]                           dc.b $00
[000d3ad9]                           dc.b $00
[000d3ada]                           dc.b $00
[000d3adb]                           dc.b $00
[000d3adc]                           dc.b $00
[000d3add]                           dc.b $00
[000d3ade]                           dc.b $00
[000d3adf]                           dc.b $00
[000d3ae0]                           dc.b $00
[000d3ae1]                           dc.b $00
[000d3ae2]                           dc.b $00
[000d3ae3]                           dc.b $00
[000d3ae4]                           dc.b $00
[000d3ae5]                           dc.b $88
[000d3ae6] 000d3c72                  dc.l $000d3c72 ; no symbol found
[000d3aea]                           dc.b $00
[000d3aeb]                           dc.b $05
[000d3aec]                           dc.b $00
[000d3aed]                           dc.b $00
[000d3aee]                           dc.b $00
[000d3aef]                           dc.b $00
[000d3af0]                           dc.b $00
[000d3af1]                           dc.b $00
[000d3af2]                           dc.b $00
[000d3af3]                           dc.b $00
[000d3af4]                           dc.b $00
[000d3af5]                           dc.b $00
[000d3af6]                           dc.b $00
[000d3af7]                           dc.b $00
[000d3af8]                           dc.b $00
[000d3af9]                           dc.b $0a
[000d3afa] 000d3c85                  dc.l $000d3c85 ; no symbol found
[000d3afe]                           dc.b $00
[000d3aff]                           dc.b $02
[000d3b00]                           dc.b $00
[000d3b01]                           dc.b $00
[000d3b02]                           dc.b $00
[000d3b03]                           dc.b $00
[000d3b04]                           dc.b $00
[000d3b05]                           dc.b $00
[000d3b06]                           dc.b $00
[000d3b07]                           dc.b $00
[000d3b08]                           dc.b $00
[000d3b09]                           dc.b $00
[000d3b0a]                           dc.b $00
[000d3b0b]                           dc.b $00
[000d3b0c]                           dc.b $00
[000d3b0d]                           dc.b $22
[000d3b0e] 000d3c90                  dc.l $000d3c90 ; no symbol found
[000d3b12]                           dc.b $00
[000d3b13]                           dc.b $05
[000d3b14]                           dc.b $00
[000d3b15]                           dc.b $00
[000d3b16]                           dc.b $00
[000d3b17]                           dc.b $00
[000d3b18]                           dc.b $00
[000d3b19]                           dc.b $00
[000d3b1a]                           dc.b $00
[000d3b1b]                           dc.b $00
[000d3b1c]                           dc.b $00
[000d3b1d]                           dc.b $00
[000d3b1e]                           dc.b $00
[000d3b1f]                           dc.b $00
[000d3b20]                           dc.b $00
[000d3b21]                           dc.b $12
[000d3b22] 000d3c98                  dc.l $000d3c98 ; no symbol found
[000d3b26]                           dc.b $00
[000d3b27]                           dc.b $05
[000d3b28]                           dc.b $00
[000d3b29]                           dc.b $00
[000d3b2a]                           dc.b $00
[000d3b2b]                           dc.b $00
[000d3b2c]                           dc.b $00
[000d3b2d]                           dc.b $00
[000d3b2e]                           dc.b $00
[000d3b2f]                           dc.b $00
[000d3b30]                           dc.b $00
[000d3b31]                           dc.b $00
[000d3b32]                           dc.b $00
[000d3b33]                           dc.b $00
[000d3b34]                           dc.b $00
[000d3b35]                           dc.b $0a
[000d3b36] 000d3ca1                  dc.l $000d3ca1 ; no symbol found
[000d3b3a]                           dc.b $00
[000d3b3b]                           dc.b $05
[000d3b3c]                           dc.b $00
[000d3b3d]                           dc.b $00
[000d3b3e]                           dc.b $00
[000d3b3f]                           dc.b $00
[000d3b40]                           dc.b $00
[000d3b41]                           dc.b $00
[000d3b42]                           dc.b $00
[000d3b43]                           dc.b $00
[000d3b44]                           dc.b $00
[000d3b45]                           dc.b $00
[000d3b46]                           dc.b $00
[000d3b47]                           dc.b $00
[000d3b48]                           dc.b $00
[000d3b49]                           dc.b $44
[000d3b4a] 000d3cac                  dc.l $000d3cac ; no symbol found
[000d3b4e]                           dc.b $00
[000d3b4f]                           dc.b $14
[000d3b50]                           dc.b $00
[000d3b51]                           dc.b $00
[000d3b52]                           dc.b $00
[000d3b53]                           dc.b $00
[000d3b54]                           dc.b $00
[000d3b55]                           dc.b $00
[000d3b56]                           dc.b $00
[000d3b57]                           dc.b $00
[000d3b58]                           dc.b $00
[000d3b59]                           dc.b $00
[000d3b5a]                           dc.b $00
[000d3b5b]                           dc.b $00
[000d3b5c]                           dc.b $00
[000d3b5d]                           dc.b $0c
[000d3b5e] 000d3cb5                  dc.l $000d3cb5 ; no symbol found
[000d3b62]                           dc.b $00
[000d3b63]                           dc.b $28
[000d3b64]                           dc.b $00
[000d3b65]                           dc.b $00
[000d3b66]                           dc.b $00
[000d3b67]                           dc.b $00
[000d3b68]                           dc.b $00
[000d3b69]                           dc.b $00
[000d3b6a]                           dc.b $00
[000d3b6b]                           dc.b $00
[000d3b6c]                           dc.b $00
[000d3b6d]                           dc.b $00
[000d3b6e]                           dc.b $00
[000d3b6f]                           dc.b $00
[000d3b70]                           dc.b $00
[000d3b71]                           dc.b $1c
[000d3b72] 000d3cc6                  dc.l $000d3cc6 ; no symbol found
[000d3b76]                           dc.b $00
[000d3b77]                           dc.b $0a
[000d3b78]                           dc.b $00
[000d3b79]                           dc.b $00
[000d3b7a]                           dc.b $00
[000d3b7b]                           dc.b $00
[000d3b7c]                           dc.b $00
[000d3b7d]                           dc.b $00
[000d3b7e]                           dc.b $00
[000d3b7f]                           dc.b $00
[000d3b80]                           dc.b $00
[000d3b81]                           dc.b $00
[000d3b82]                           dc.b $00
[000d3b83]                           dc.b $00
[000d3b84]                           dc.b $00
[000d3b85]                           dc.b $1c
[000d3b86] 000d3ccc                  dc.l $000d3ccc ; no symbol found
[000d3b8a]                           dc.b $00
[000d3b8b]                           dc.b $0a
[000d3b8c]                           dc.b $00
[000d3b8d]                           dc.b $00
[000d3b8e]                           dc.b $00
[000d3b8f]                           dc.b $00
[000d3b90]                           dc.b $00
[000d3b91]                           dc.b $00
[000d3b92]                           dc.b $00
[000d3b93]                           dc.b $00
[000d3b94]                           dc.b $00
[000d3b95]                           dc.b $00
[000d3b96]                           dc.b $00
[000d3b97]                           dc.b $00
[000d3b98]                           dc.b $00
[000d3b99]                           dc.b $08
[000d3b9a] 000d3cd2                  dc.l $000d3cd2 ; no symbol found
[000d3b9e]                           dc.b $00
[000d3b9f]                           dc.b $50
[000d3ba0]                           dc.b $00
[000d3ba1]                           dc.b $00
[000d3ba2]                           dc.b $00
[000d3ba3]                           dc.b $00
[000d3ba4]                           dc.b $00
[000d3ba5]                           dc.b $00
[000d3ba6]                           dc.b $00
[000d3ba7]                           dc.b $00
[000d3ba8]                           dc.b $00
[000d3ba9]                           dc.b $00
[000d3baa]                           dc.b $00
[000d3bab]                           dc.b $00
[000d3bac]                           dc.b $00
[000d3bad]                           dc.b $08
[000d3bae] 000d3ce2                  dc.l $000d3ce2 ; no symbol found
[000d3bb2]                           dc.b $00
[000d3bb3]                           dc.b $28
[000d3bb4]                           dc.b $00
[000d3bb5]                           dc.b $00
[000d3bb6]                           dc.b $00
[000d3bb7]                           dc.b $00
[000d3bb8]                           dc.b $00
[000d3bb9]                           dc.b $00
[000d3bba]                           dc.b $00
[000d3bbb]                           dc.b $00
[000d3bbc]                           dc.b $00
[000d3bbd]                           dc.b $00
freeBlockList:
[000d3bbe] 000d3966                  dc.l _freeBlockList
freeBlockListAnz:
[000d3bc2]                           dc.b $00
[000d3bc3]                           dc.b $1e
freeBlockStat:
[000d3bc4]                           dc.b $00
[000d3bc5]                           dc.b $00
[000d3bc6]                           dc.b $00
[000d3bc7]                           dc.b $00
[000d3bc8]                           dc.b 'Awindow',0
[000d3bd0]                           dc.b 'AUSERBLK',0
[000d3bd9]                           dc.b 'CICONBLK',0
[000d3be2]                           dc.b 'CICON',0
[000d3be8]                           dc.b 'BITBLK',0
[000d3bef]                           dc.b 'TEDINFO',0
[000d3bf7]                           dc.b 'MFDB',0
[000d3bfc]                           dc.b 'FontSelect',0
[000d3c07]                           dc.b 'PrintSelect',0
[000d3c13]                           dc.b 'MsgService',0
[000d3c1e]                           dc.b 'A_dd',0
[000d3c23]                           dc.b 'Interne DD-Daten',0
[000d3c34]                           dc.b 'GS-Connection',0
[000d3c42]                           dc.b 'GS-Suche',0
[000d3c4b]                           dc.b 'GS-Antwort',0
[000d3c56]                           dc.b 'OLGA',0
[000d3c5b]                           dc.b 'Thermometer',0
[000d3c67]                           dc.b 'FileSelect',0
[000d3c72]                           dc.b 'Int. Speicherverw.',0
[000d3c85]                           dc.b 'XAcc-Daten',0
[000d3c90]                           dc.b 'UConfig',0
[000d3c98]                           dc.b 'UCfgInfo',0
[000d3ca1]                           dc.b 'Cfg-Gruppe',0
[000d3cac]                           dc.b 'ULinList',0
[000d3cb5]                           dc.b 'ULinList-Element',0
[000d3cc6]                           dc.b 'Stack',0
[000d3ccc]                           dc.b 'Queue',0
[000d3cd2]                           dc.b 'Listen-Elemente',0
[000d3ce2]                           dc.b 'Queue-Elemente',0
		.even

	.bss
watch_min: ds.l 1
watch_max: ds.l 1
check: ds.b 48
