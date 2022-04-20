
Alu_create:
[00062a5e] 2f0a                      move.l     a2,-(a7)
[00062a60] 7044                      moveq.l    #68,d0
[00062a62] 4eb9 0004 7cc8            jsr        Ax_malloc
[00062a68] 2448                      movea.l    a0,a2
[00062a6a] 200a                      move.l     a2,d0
[00062a6c] 6726                      beq.s      Alu_create_1
[00062a6e] 43f9 000d 62e8            lea.l      empty,a1
[00062a74] 7044                      moveq.l    #68,d0
[00062a76] 4eb9 0007 6f44            jsr        memcpy
[00062a7c] 7014                      moveq.l    #20,d0
[00062a7e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00062a84] 2488                      move.l     a0,(a2)
[00062a86] 2008                      move.l     a0,d0
[00062a88] 660e                      bne.s      Alu_create_2
[00062a8a] 204a                      movea.l    a2,a0
[00062a8c] 7044                      moveq.l    #68,d0
[00062a8e] 4eb9 0004 8140            jsr        Ax_recycle
Alu_create_1:
[00062a94] 91c8                      suba.l     a0,a0
[00062a96] 600a                      bra.s      Alu_create_3
Alu_create_2:
[00062a98] 2052                      movea.l    (a2),a0
[00062a9a] 4eb9 0006 2aca            jsr        InitLinListe
[00062aa0] 204a                      movea.l    a2,a0
Alu_create_3:
[00062aa2] 245f                      movea.l    (a7)+,a2
[00062aa4] 4e75                      rts

Alu_delete:
[00062aa6] 2f0a                      move.l     a2,-(a7)
[00062aa8] 2448                      movea.l    a0,a2
[00062aaa] 200a                      move.l     a2,d0
[00062aac] 6718                      beq.s      Alu_delete_1
[00062aae] 4eb9 0006 2ade            jsr        Alu_clearElem
[00062ab4] 2052                      movea.l    (a2),a0
[00062ab6] 4eb9 0004 7e26            jsr        Ax_free
[00062abc] 7044                      moveq.l    #68,d0
[00062abe] 204a                      movea.l    a2,a0
[00062ac0] 4eb9 0004 8140            jsr        Ax_recycle
Alu_delete_1:
[00062ac6] 245f                      movea.l    (a7)+,a2
[00062ac8] 4e75                      rts

InitLinListe:
[00062aca] 4290                      clr.l      (a0)
[00062acc] 42a8 0004                 clr.l      4(a0)
[00062ad0] 42a8 0008                 clr.l      8(a0)
[00062ad4] 42a8 000c                 clr.l      12(a0)
[00062ad8] 42a8 0010                 clr.l      16(a0)
[00062adc] 4e75                      rts

Alu_clearElem:
[00062ade] 48e7 003c                 movem.l    a2-a5,-(a7)
[00062ae2] 2448                      movea.l    a0,a2
[00062ae4] 2650                      movea.l    (a0),a3
[00062ae6] 2853                      movea.l    (a3),a4
[00062ae8] 601c                      bra.s      Alu_clearElem_1
Alu_clearElem_3:
[00062aea] 2a54                      movea.l    (a4),a5
[00062aec] 202a 0004                 move.l     4(a2),d0
[00062af0] 6708                      beq.s      Alu_clearElem_2
[00062af2] 206c 0008                 movea.l    8(a4),a0
[00062af6] 2240                      movea.l    d0,a1
[00062af8] 4e91                      jsr        (a1)
Alu_clearElem_2:
[00062afa] 700c                      moveq.l    #12,d0
[00062afc] 204c                      movea.l    a4,a0
[00062afe] 4eb9 0004 8140            jsr        Ax_recycle
[00062b04] 284d                      movea.l    a5,a4
Alu_clearElem_1:
[00062b06] 200c                      move.l     a4,d0
[00062b08] 66e0                      bne.s      Alu_clearElem_3
[00062b0a] 204b                      movea.l    a3,a0
[00062b0c] 6100 ffbc                 bsr.w      InitLinListe
[00062b10] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00062b14] 4e75                      rts

Alu_appendElem:
[00062b16] 48e7 0038                 movem.l    a2-a4,-(a7)
[00062b1a] 2849                      movea.l    a1,a4
[00062b1c] 95ca                      suba.l     a2,a2
[00062b1e] 2650                      movea.l    (a0),a3
[00062b20] 700c                      moveq.l    #12,d0
[00062b22] 4eb9 0004 7cc8            jsr        Ax_malloc
[00062b28] 2448                      movea.l    a0,a2
[00062b2a] 200a                      move.l     a2,d0
[00062b2c] 6604                      bne.s      Alu_appendElem_1
[00062b2e] 4240                      clr.w      d0
[00062b30] 6034                      bra.s      Alu_appendElem_2
Alu_appendElem_1:
[00062b32] 254c 0008                 move.l     a4,8(a2)
[00062b36] 7000                      moveq.l    #0,d0
[00062b38] 2540 0004                 move.l     d0,4(a2)
[00062b3c] 2480                      move.l     d0,(a2)
[00062b3e] 2213                      move.l     (a3),d1
[00062b40] 660a                      bne.s      Alu_appendElem_3
[00062b42] 268a                      move.l     a2,(a3)
[00062b44] 274a 000c                 move.l     a2,12(a3)
[00062b48] 42ab 0010                 clr.l      16(a3)
Alu_appendElem_3:
[00062b4c] 202b 0004                 move.l     4(a3),d0
[00062b50] 6704                      beq.s      Alu_appendElem_4
[00062b52] 2040                      movea.l    d0,a0
[00062b54] 208a                      move.l     a2,(a0)
Alu_appendElem_4:
[00062b56] 256b 0004 0004            move.l     4(a3),4(a2)
[00062b5c] 274a 0004                 move.l     a2,4(a3)
[00062b60] 52ab 0008                 addq.l     #1,8(a3)
[00062b64] 7001                      moveq.l    #1,d0
Alu_appendElem_2:
[00062b66] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00062b6a] 4e75                      rts

Alu_insertElem:
[00062b6c] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00062b70] 2a49                      movea.l    a1,a5
[00062b72] 3600                      move.w     d0,d3
[00062b74] 95ca                      suba.l     a2,a2
[00062b76] 264a                      movea.l    a2,a3
[00062b78] 2850                      movea.l    (a0),a4
[00062b7a] 700c                      moveq.l    #12,d0
[00062b7c] 4eb9 0004 7cc8            jsr        Ax_malloc
[00062b82] 2448                      movea.l    a0,a2
[00062b84] 200a                      move.l     a2,d0
[00062b86] 6604                      bne.s      Alu_insertElem_1
[00062b88] 4240                      clr.w      d0
[00062b8a] 6062                      bra.s      Alu_insertElem_2
Alu_insertElem_1:
[00062b8c] 7000                      moveq.l    #0,d0
[00062b8e] 2654                      movea.l    (a4),a3
[00062b90] 6004                      bra.s      Alu_insertElem_3
Alu_insertElem_5:
[00062b92] 2653                      movea.l    (a3),a3
[00062b94] 5280                      addq.l     #1,d0
Alu_insertElem_3:
[00062b96] 72ff                      moveq.l    #-1,d1
[00062b98] d243                      add.w      d3,d1
[00062b9a] 48c1                      ext.l      d1
[00062b9c] b081                      cmp.l      d1,d0
[00062b9e] 6c04                      bge.s      Alu_insertElem_4
[00062ba0] 240b                      move.l     a3,d2
[00062ba2] 66ee                      bne.s      Alu_insertElem_5
Alu_insertElem_4:
[00062ba4] 72ff                      moveq.l    #-1,d1
[00062ba6] d243                      add.w      d3,d1
[00062ba8] 48c1                      ext.l      d1
[00062baa] b081                      cmp.l      d1,d0
[00062bac] 6604                      bne.s      Alu_insertElem_6
[00062bae] 200b                      move.l     a3,d0
[00062bb0] 6604                      bne.s      Alu_insertElem_7
Alu_insertElem_6:
[00062bb2] 266c 0004                 movea.l    4(a4),a3
Alu_insertElem_7:
[00062bb6] 254d 0008                 move.l     a5,8(a2)
[00062bba] 4292                      clr.l      (a2)
[00062bbc] 200b                      move.l     a3,d0
[00062bbe] 671a                      beq.s      Alu_insertElem_8
[00062bc0] 2493                      move.l     (a3),(a2)
[00062bc2] 268a                      move.l     a2,(a3)
[00062bc4] 2540 0004                 move.l     d0,4(a2)
[00062bc8] 2212                      move.l     (a2),d1
[00062bca] 6708                      beq.s      Alu_insertElem_9
[00062bcc] 2041                      movea.l    d1,a0
[00062bce] 214a 0004                 move.l     a2,4(a0)
[00062bd2] 6014                      bra.s      Alu_insertElem_10
Alu_insertElem_9:
[00062bd4] 294a 0004                 move.l     a2,4(a4)
[00062bd8] 600e                      bra.s      Alu_insertElem_10
Alu_insertElem_8:
[00062bda] 294a 0004                 move.l     a2,4(a4)
[00062bde] 288a                      move.l     a2,(a4)
[00062be0] 294a 000c                 move.l     a2,12(a4)
[00062be4] 42ac 0010                 clr.l      16(a4)
Alu_insertElem_10:
[00062be8] 52ac 0008                 addq.l     #1,8(a4)
[00062bec] 7001                      moveq.l    #1,d0
Alu_insertElem_2:
[00062bee] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00062bf2] 4e75                      rts

Alu_deleteElem:
[00062bf4] 2f0a                      move.l     a2,-(a7)
[00062bf6] 2f0b                      move.l     a3,-(a7)
[00062bf8] 93c9                      suba.l     a1,a1
[00062bfa] 2449                      movea.l    a1,a2
[00062bfc] 2050                      movea.l    (a0),a0
[00062bfe] 7200                      moveq.l    #0,d1
[00062c00] 2450                      movea.l    (a0),a2
[00062c02] 6006                      bra.s      Alu_deleteElem_1
Alu_deleteElem_3:
[00062c04] 224a                      movea.l    a2,a1
[00062c06] 2452                      movea.l    (a2),a2
[00062c08] 5281                      addq.l     #1,d1
Alu_deleteElem_1:
[00062c0a] 3400                      move.w     d0,d2
[00062c0c] 48c2                      ext.l      d2
[00062c0e] b282                      cmp.l      d2,d1
[00062c10] 6c04                      bge.s      Alu_deleteElem_2
[00062c12] 240a                      move.l     a2,d2
[00062c14] 66ee                      bne.s      Alu_deleteElem_3
Alu_deleteElem_2:
[00062c16] 3400                      move.w     d0,d2
[00062c18] 48c2                      ext.l      d2
[00062c1a] b282                      cmp.l      d2,d1
[00062c1c] 6704                      beq.s      Alu_deleteElem_4
[00062c1e] 91c8                      suba.l     a0,a0
[00062c20] 603c                      bra.s      Alu_deleteElem_5
Alu_deleteElem_4:
[00062c22] 2009                      move.l     a1,d0
[00062c24] 6704                      beq.s      Alu_deleteElem_6
[00062c26] 2292                      move.l     (a2),(a1)
[00062c28] 6002                      bra.s      Alu_deleteElem_7
Alu_deleteElem_6:
[00062c2a] 2092                      move.l     (a2),(a0)
Alu_deleteElem_7:
[00062c2c] 2012                      move.l     (a2),d0
[00062c2e] 6708                      beq.s      Alu_deleteElem_8
[00062c30] 2640                      movea.l    d0,a3
[00062c32] 2749 0004                 move.l     a1,4(a3)
[00062c36] 6004                      bra.s      Alu_deleteElem_9
Alu_deleteElem_8:
[00062c38] 2149 0004                 move.l     a1,4(a0)
Alu_deleteElem_9:
[00062c3c] 53a8 0008                 subq.l     #1,8(a0)
[00062c40] b5e8 000c                 cmpa.l     12(a0),a2
[00062c44] 6608                      bne.s      Alu_deleteElem_10
[00062c46] 2150 000c                 move.l     (a0),12(a0)
[00062c4a] 42a8 0010                 clr.l      16(a0)
Alu_deleteElem_10:
[00062c4e] 266a 0008                 movea.l    8(a2),a3
[00062c52] 700c                      moveq.l    #12,d0
[00062c54] 204a                      movea.l    a2,a0
[00062c56] 4eb9 0004 8140            jsr        Ax_recycle
[00062c5c] 204b                      movea.l    a3,a0
Alu_deleteElem_5:
[00062c5e] 265f                      movea.l    (a7)+,a3
[00062c60] 245f                      movea.l    (a7)+,a2
[00062c62] 4e75                      rts

Alu_ptrCmp:
[00062c64] b3c8                      cmpa.l     a0,a1
[00062c66] 6604                      bne.s      Alu_ptrCmp_1
[00062c68] 7001                      moveq.l    #1,d0
[00062c6a] 4e75                      rts
Alu_ptrCmp_1:
[00062c6c] 4240                      clr.w      d0
[00062c6e] 4e75                      rts

Alu_deleteForElem:
[00062c70] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00062c74] 514f                      subq.w     #8,a7
[00062c76] 2f48 0004                 move.l     a0,4(a7)
[00062c7a] 2e89                      move.l     a1,(a7)
[00062c7c] 286f 0020                 movea.l    32(a7),a4
[00062c80] 7600                      moveq.l    #0,d3
[00062c82] 95ca                      suba.l     a2,a2
[00062c84] 264a                      movea.l    a2,a3
[00062c86] 2a50                      movea.l    (a0),a5
[00062c88] 2455                      movea.l    (a5),a2
[00062c8a] 605c                      bra.s      Alu_deleteForElem_1
Alu_deleteForElem_10:
[00062c8c] 200c                      move.l     a4,d0
[00062c8e] 670c                      beq.s      Alu_deleteForElem_2
[00062c90] 226a 0008                 movea.l    8(a2),a1
[00062c94] 2057                      movea.l    (a7),a0
[00062c96] 4e94                      jsr        (a4)
[00062c98] 4a40                      tst.w      d0
[00062c9a] 6748                      beq.s      Alu_deleteForElem_3
Alu_deleteForElem_2:
[00062c9c] 200b                      move.l     a3,d0
[00062c9e] 6704                      beq.s      Alu_deleteForElem_4
[00062ca0] 2692                      move.l     (a2),(a3)
[00062ca2] 6002                      bra.s      Alu_deleteForElem_5
Alu_deleteForElem_4:
[00062ca4] 2a92                      move.l     (a2),(a5)
Alu_deleteForElem_5:
[00062ca6] 2012                      move.l     (a2),d0
[00062ca8] 6708                      beq.s      Alu_deleteForElem_6
[00062caa] 2040                      movea.l    d0,a0
[00062cac] 214b 0004                 move.l     a3,4(a0)
[00062cb0] 6004                      bra.s      Alu_deleteForElem_7
Alu_deleteForElem_6:
[00062cb2] 2b4b 0004                 move.l     a3,4(a5)
Alu_deleteForElem_7:
[00062cb6] 53ad 0008                 subq.l     #1,8(a5)
[00062cba] b5ed 000c                 cmpa.l     12(a5),a2
[00062cbe] 6608                      bne.s      Alu_deleteForElem_8
[00062cc0] 2b55 000c                 move.l     (a5),12(a5)
[00062cc4] 42ad 0010                 clr.l      16(a5)
Alu_deleteForElem_8:
[00062cc8] 206a 0008                 movea.l    8(a2),a0
[00062ccc] 226f 0004                 movea.l    4(a7),a1
[00062cd0] 2269 0004                 movea.l    4(a1),a1
[00062cd4] 4e91                      jsr        (a1)
[00062cd6] 700c                      moveq.l    #12,d0
[00062cd8] 204a                      movea.l    a2,a0
[00062cda] 4eb9 0004 8140            jsr        Ax_recycle
[00062ce0] 5283                      addq.l     #1,d3
[00062ce2] 6002                      bra.s      Alu_deleteForElem_9
Alu_deleteForElem_3:
[00062ce4] 264a                      movea.l    a2,a3
Alu_deleteForElem_9:
[00062ce6] 2452                      movea.l    (a2),a2
Alu_deleteForElem_1:
[00062ce8] 200a                      move.l     a2,d0
[00062cea] 66a0                      bne.s      Alu_deleteForElem_10
[00062cec] 2003                      move.l     d3,d0
[00062cee] 504f                      addq.w     #8,a7
[00062cf0] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00062cf4] 4e75                      rts

Alu_searchElem:
[00062cf6] 93c9                      suba.l     a1,a1
[00062cf8] 2050                      movea.l    (a0),a0
[00062cfa] 7200                      moveq.l    #0,d1
[00062cfc] 2250                      movea.l    (a0),a1
[00062cfe] 6004                      bra.s      Alu_searchElem_1
Alu_searchElem_3:
[00062d00] 2251                      movea.l    (a1),a1
[00062d02] 5281                      addq.l     #1,d1
Alu_searchElem_1:
[00062d04] b081                      cmp.l      d1,d0
[00062d06] 6f04                      ble.s      Alu_searchElem_2
[00062d08] 2409                      move.l     a1,d2
[00062d0a] 66f4                      bne.s      Alu_searchElem_3
Alu_searchElem_2:
[00062d0c] b081                      cmp.l      d1,d0
[00062d0e] 6612                      bne.s      Alu_searchElem_4
[00062d10] 2209                      move.l     a1,d1
[00062d12] 670e                      beq.s      Alu_searchElem_4
[00062d14] 2141 000c                 move.l     d1,12(a0)
[00062d18] 2140 0010                 move.l     d0,16(a0)
[00062d1c] 2069 0008                 movea.l    8(a1),a0
[00062d20] 4e75                      rts
Alu_searchElem_4:
[00062d22] 91c8                      suba.l     a0,a0
[00062d24] 4e75                      rts

Alu_searchForElem:
[00062d26] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00062d2a] 594f                      subq.w     #4,a7
[00062d2c] 2e89                      move.l     a1,(a7)
[00062d2e] 286f 001c                 movea.l    28(a7),a4
[00062d32] 4243                      clr.w      d3
[00062d34] 7800                      moveq.l    #0,d4
[00062d36] 95ca                      suba.l     a2,a2
[00062d38] 2650                      movea.l    (a0),a3
[00062d3a] 2453                      movea.l    (a3),a2
[00062d3c] 6018                      bra.s      Alu_searchForElem_1
Alu_searchForElem_5:
[00062d3e] 200c                      move.l     a4,d0
[00062d40] 670c                      beq.s      Alu_searchForElem_2
[00062d42] 226a 0008                 movea.l    8(a2),a1
[00062d46] 2057                      movea.l    (a7),a0
[00062d48] 4e94                      jsr        (a4)
[00062d4a] 4a40                      tst.w      d0
[00062d4c] 6704                      beq.s      Alu_searchForElem_3
Alu_searchForElem_2:
[00062d4e] 7601                      moveq.l    #1,d3
[00062d50] 600c                      bra.s      Alu_searchForElem_4
Alu_searchForElem_3:
[00062d52] 2452                      movea.l    (a2),a2
[00062d54] 5284                      addq.l     #1,d4
Alu_searchForElem_1:
[00062d56] 4a43                      tst.w      d3
[00062d58] 6604                      bne.s      Alu_searchForElem_4
[00062d5a] 200a                      move.l     a2,d0
[00062d5c] 66e0                      bne.s      Alu_searchForElem_5
Alu_searchForElem_4:
[00062d5e] 4a43                      tst.w      d3
[00062d60] 6712                      beq.s      Alu_searchForElem_6
[00062d62] 200a                      move.l     a2,d0
[00062d64] 670e                      beq.s      Alu_searchForElem_6
[00062d66] 2740 000c                 move.l     d0,12(a3)
[00062d6a] 2744 0010                 move.l     d4,16(a3)
[00062d6e] 206a 0008                 movea.l    8(a2),a0
[00062d72] 6002                      bra.s      Alu_searchForElem_7
Alu_searchForElem_6:
[00062d74] 91c8                      suba.l     a0,a0
Alu_searchForElem_7:
[00062d76] 584f                      addq.w     #4,a7
[00062d78] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00062d7c] 4e75                      rts

Alu_firstElem:
[00062d7e] 2050                      movea.l    (a0),a0
[00062d80] 2150 000c                 move.l     (a0),12(a0)
[00062d84] 42a8 0010                 clr.l      16(a0)
[00062d88] 2010                      move.l     (a0),d0
[00062d8a] 6604                      bne.s      Alu_firstElem_1
[00062d8c] 91c8                      suba.l     a0,a0
[00062d8e] 4e75                      rts
Alu_firstElem_1:
[00062d90] 2250                      movea.l    (a0),a1
[00062d92] 2069 0008                 movea.l    8(a1),a0
[00062d96] 4e75                      rts

Alu_lastElem:
[00062d98] 2050                      movea.l    (a0),a0
[00062d9a] 2168 0004 000c            move.l     4(a0),12(a0)
[00062da0] 70ff                      moveq.l    #-1,d0
[00062da2] d0a8 0008                 add.l      8(a0),d0
[00062da6] 2140 0010                 move.l     d0,16(a0)
[00062daa] 2228 0004                 move.l     4(a0),d1
[00062dae] 6604                      bne.s      Alu_lastElem_1
[00062db0] 91c8                      suba.l     a0,a0
[00062db2] 4e75                      rts
Alu_lastElem_1:
[00062db4] 2268 0004                 movea.l    4(a0),a1
[00062db8] 2069 0008                 movea.l    8(a1),a0
[00062dbc] 4e75                      rts

Alu_aktNrElem:
[00062dbe] 2050                      movea.l    (a0),a0
[00062dc0] 2028 000c                 move.l     12(a0),d0
[00062dc4] 6604                      bne.s      Alu_aktNrElem_1
[00062dc6] 70ff                      moveq.l    #-1,d0
[00062dc8] 4e75                      rts
Alu_aktNrElem_1:
[00062dca] 2028 0010                 move.l     16(a0),d0
[00062dce] 4e75                      rts

Alu_aktElem:
[00062dd0] 2050                      movea.l    (a0),a0
[00062dd2] 2028 000c                 move.l     12(a0),d0
[00062dd6] 6604                      bne.s      Alu_aktElem_1
[00062dd8] 91c8                      suba.l     a0,a0
[00062dda] 4e75                      rts
Alu_aktElem_1:
[00062ddc] 2268 000c                 movea.l    12(a0),a1
[00062de0] 2069 0008                 movea.l    8(a1),a0
[00062de4] 4e75                      rts

Alu_skipElem:
[00062de6] 2050                      movea.l    (a0),a0
[00062de8] 4a40                      tst.w      d0
[00062dea] 671a                      beq.s      Alu_skipElem_1
[00062dec] 7400                      moveq.l    #0,d2
[00062dee] 600a                      bra.s      Alu_skipElem_2
Alu_skipElem_4:
[00062df0] 2268 000c                 movea.l    12(a0),a1
[00062df4] 2151 000c                 move.l     (a1),12(a0)
[00062df8] 5282                      addq.l     #1,d2
Alu_skipElem_2:
[00062dfa] b282                      cmp.l      d2,d1
[00062dfc] 6f22                      ble.s      Alu_skipElem_3
[00062dfe] 2028 000c                 move.l     12(a0),d0
[00062e02] 66ec                      bne.s      Alu_skipElem_4
[00062e04] 601a                      bra.s      Alu_skipElem_3
Alu_skipElem_1:
[00062e06] 7400                      moveq.l    #0,d2
[00062e08] 600c                      bra.s      Alu_skipElem_5
Alu_skipElem_6:
[00062e0a] 2268 000c                 movea.l    12(a0),a1
[00062e0e] 2169 0004 000c            move.l     4(a1),12(a0)
[00062e14] 5282                      addq.l     #1,d2
Alu_skipElem_5:
[00062e16] b282                      cmp.l      d2,d1
[00062e18] 6f06                      ble.s      Alu_skipElem_3
[00062e1a] 2028 000c                 move.l     12(a0),d0
[00062e1e] 66ea                      bne.s      Alu_skipElem_6
Alu_skipElem_3:
[00062e20] 2028 000c                 move.l     12(a0),d0
[00062e24] 6604                      bne.s      Alu_skipElem_7
[00062e26] 91c8                      suba.l     a0,a0
[00062e28] 4e75                      rts
Alu_skipElem_7:
[00062e2a] 2268 000c                 movea.l    12(a0),a1
[00062e2e] 2069 0008                 movea.l    8(a1),a0
[00062e32] 4e75                      rts

Alu_countElem:
[00062e34] 2250                      movea.l    (a0),a1
[00062e36] 2029 0008                 move.l     8(a1),d0
[00062e3a] 4e75                      rts

Alu_countForElem:
[00062e3c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00062e40] 2849                      movea.l    a1,a4
[00062e42] 266f 0014                 movea.l    20(a7),a3
[00062e46] 7600                      moveq.l    #0,d3
[00062e48] 95ca                      suba.l     a2,a2
[00062e4a] 2050                      movea.l    (a0),a0
[00062e4c] 2450                      movea.l    (a0),a2
[00062e4e] 6014                      bra.s      Alu_countForElem_1
Alu_countForElem_4:
[00062e50] 200b                      move.l     a3,d0
[00062e52] 670c                      beq.s      Alu_countForElem_2
[00062e54] 226a 0008                 movea.l    8(a2),a1
[00062e58] 204c                      movea.l    a4,a0
[00062e5a] 4e93                      jsr        (a3)
[00062e5c] 4a40                      tst.w      d0
[00062e5e] 6702                      beq.s      Alu_countForElem_3
Alu_countForElem_2:
[00062e60] 5283                      addq.l     #1,d3
Alu_countForElem_3:
[00062e62] 2452                      movea.l    (a2),a2
Alu_countForElem_1:
[00062e64] 200a                      move.l     a2,d0
[00062e66] 66e8                      bne.s      Alu_countForElem_4
[00062e68] 2003                      move.l     d3,d0
[00062e6a] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00062e6e] 4e75                      rts

Alu_doForElem:
[00062e70] 48e7 003c                 movem.l    a2-a5,-(a7)
[00062e74] 2849                      movea.l    a1,a4
[00062e76] 266f 0014                 movea.l    20(a7),a3
[00062e7a] 95ca                      suba.l     a2,a2
[00062e7c] 2050                      movea.l    (a0),a0
[00062e7e] 2450                      movea.l    (a0),a2
[00062e80] 601e                      bra.s      Alu_doForElem_1
Alu_doForElem_4:
[00062e82] 200b                      move.l     a3,d0
[00062e84] 670c                      beq.s      Alu_doForElem_2
[00062e86] 226a 0008                 movea.l    8(a2),a1
[00062e8a] 204c                      movea.l    a4,a0
[00062e8c] 4e93                      jsr        (a3)
[00062e8e] 4a40                      tst.w      d0
[00062e90] 670c                      beq.s      Alu_doForElem_3
Alu_doForElem_2:
[00062e92] 226a 0008                 movea.l    8(a2),a1
[00062e96] 204c                      movea.l    a4,a0
[00062e98] 2a6f 0018                 movea.l    24(a7),a5
[00062e9c] 4e95                      jsr        (a5)
Alu_doForElem_3:
[00062e9e] 2452                      movea.l    (a2),a2
Alu_doForElem_1:
[00062ea0] 200a                      move.l     a2,d0
[00062ea2] 66de                      bne.s      Alu_doForElem_4
[00062ea4] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00062ea8] 4e75                      rts

x62eaa:
[00062eaa] 2f0a                      move.l     a2,-(a7)
[00062eac] 701c                      moveq.l    #28,d0
[00062eae] 4eb9 0004 7cc8            jsr        Ax_malloc
[00062eb4] 2448                      movea.l    a0,a2
[00062eb6] 200a                      move.l     a2,d0
[00062eb8] 6604                      bne.s      x62eaa_1
[00062eba] 91c8                      suba.l     a0,a0
[00062ebc] 6014                      bra.s      x62eaa_2
x62eaa_1:
[00062ebe] 701c                      moveq.l    #28,d0
[00062ec0] 43f9 000d 632c            lea.l      xd632c,a1
[00062ec6] 204a                      movea.l    a2,a0
[00062ec8] 4eb9 0007 6f44            jsr        memcpy
[00062ece] 4292                      clr.l      (a2)
[00062ed0] 204a                      movea.l    a2,a0
x62eaa_2:
[00062ed2] 245f                      movea.l    (a7)+,a2
[00062ed4] 4e75                      rts

x62ed6:
[00062ed6] 2f0a                      move.l     a2,-(a7)
[00062ed8] 2448                      movea.l    a0,a2
[00062eda] 200a                      move.l     a2,d0
[00062edc] 6710                      beq.s      x62ed6_1
[00062ede] 226a 0018                 movea.l    24(a2),a1
[00062ee2] 4e91                      jsr        (a1)
[00062ee4] 701c                      moveq.l    #28,d0
[00062ee6] 204a                      movea.l    a2,a0
[00062ee8] 4eb9 0004 8140            jsr        Ax_recycle
x62ed6_1:
[00062eee] 245f                      movea.l    (a7)+,a2
[00062ef0] 4e75                      rts

x62ef2:
[00062ef2] 2f0a                      move.l     a2,-(a7)
[00062ef4] 2f0b                      move.l     a3,-(a7)
[00062ef6] 2448                      movea.l    a0,a2
[00062ef8] 6014                      bra.s      x62ef2_1
x62ef2_2:
[00062efa] 204a                      movea.l    a2,a0
[00062efc] 226a 000c                 movea.l    12(a2),a1
[00062f00] 4e91                      jsr        (a1)
[00062f02] 2648                      movea.l    a0,a3
[00062f04] 202a 0004                 move.l     4(a2),d0
[00062f08] 6704                      beq.s      x62ef2_1
[00062f0a] 2240                      movea.l    d0,a1
[00062f0c] 4e91                      jsr        (a1)
x62ef2_1:
[00062f0e] 204a                      movea.l    a2,a0
[00062f10] 226a 0010                 movea.l    16(a2),a1
[00062f14] 4e91                      jsr        (a1)
[00062f16] 4a40                      tst.w      d0
[00062f18] 67e0                      beq.s      x62ef2_2
[00062f1a] 265f                      movea.l    (a7)+,a3
[00062f1c] 245f                      movea.l    (a7)+,a2
[00062f1e] 4e75                      rts

x62f20:
[00062f20] 48e7 0038                 movem.l    a2-a4,-(a7)
[00062f24] 2848                      movea.l    a0,a4
[00062f26] 2649                      movea.l    a1,a3
[00062f28] 95ca                      suba.l     a2,a2
[00062f2a] 7008                      moveq.l    #8,d0
[00062f2c] 4eb9 0004 7cc8            jsr        Ax_malloc
[00062f32] 2448                      movea.l    a0,a2
[00062f34] 200a                      move.l     a2,d0
[00062f36] 6604                      bne.s      x62f20_1
[00062f38] 4240                      clr.w      d0
[00062f3a] 600a                      bra.s      x62f20_2
x62f20_1:
[00062f3c] 254b 0004                 move.l     a3,4(a2)
[00062f40] 2494                      move.l     (a4),(a2)
[00062f42] 288a                      move.l     a2,(a4)
[00062f44] 7001                      moveq.l    #1,d0
x62f20_2:
[00062f46] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00062f4a] 4e75                      rts

x62f4c:
[00062f4c] 2f0a                      move.l     a2,-(a7)
[00062f4e] 2f0b                      move.l     a3,-(a7)
[00062f50] 95ca                      suba.l     a2,a2
[00062f52] 264a                      movea.l    a2,a3
[00062f54] 2010                      move.l     (a0),d0
[00062f56] 6714                      beq.s      x62f4c_1
[00062f58] 2440                      movea.l    d0,a2
[00062f5a] 2240                      movea.l    d0,a1
[00062f5c] 2091                      move.l     (a1),(a0)
[00062f5e] 266a 0004                 movea.l    4(a2),a3
[00062f62] 7008                      moveq.l    #8,d0
[00062f64] 204a                      movea.l    a2,a0
[00062f66] 4eb9 0004 8140            jsr        Ax_recycle
x62f4c_1:
[00062f6c] 204b                      movea.l    a3,a0
[00062f6e] 265f                      movea.l    (a7)+,a3
[00062f70] 245f                      movea.l    (a7)+,a2
[00062f72] 4e75                      rts

x62f74:
[00062f74] 2010                      move.l     (a0),d0
[00062f76] 6704                      beq.s      x62f74_1
[00062f78] 7001                      moveq.l    #1,d0
[00062f7a] 4e75                      rts
x62f74_1:
[00062f7c] 4240                      clr.w      d0
[00062f7e] 4e75                      rts

x62f80:
[00062f80] 7000                      moveq.l    #0,d0
[00062f82] 2250                      movea.l    (a0),a1
[00062f84] 6004                      bra.s      x62f80_1
x62f80_2:
[00062f86] 5280                      addq.l     #1,d0
[00062f88] 2251                      movea.l    (a1),a1
x62f80_1:
[00062f8a] 2209                      move.l     a1,d1
[00062f8c] 66f8                      bne.s      x62f80_2
[00062f8e] 4e75                      rts

x62f90:
[00062f90] 2f0a                      move.l     a2,-(a7)
[00062f92] 2f0b                      move.l     a3,-(a7)
[00062f94] 701c                      moveq.l    #28,d0
[00062f96] 4eb9 0004 7cc8            jsr        Ax_malloc
[00062f9c] 2448                      movea.l    a0,a2
[00062f9e] 200a                      move.l     a2,d0
[00062fa0] 6726                      beq.s      x62f90_1
[00062fa2] 43f9 000d 6348            lea.l      xd6348,a1
[00062fa8] 701c                      moveq.l    #28,d0
[00062faa] 4eb9 0007 6f44            jsr        memcpy
[00062fb0] 7008                      moveq.l    #8,d0
[00062fb2] 4eb9 0004 7cc8            jsr        Ax_malloc
[00062fb8] 2648                      movea.l    a0,a3
[00062fba] 200b                      move.l     a3,d0
[00062fbc] 660e                      bne.s      x62f90_2
[00062fbe] 204a                      movea.l    a2,a0
[00062fc0] 701c                      moveq.l    #28,d0
[00062fc2] 4eb9 0004 8140            jsr        Ax_recycle
x62f90_1:
[00062fc8] 91c8                      suba.l     a0,a0
[00062fca] 600c                      bra.s      x62f90_3
x62f90_2:
[00062fcc] 204b                      movea.l    a3,a0
[00062fce] 4eb9 0006 2ffa            jsr        x62ffa
[00062fd4] 248b                      move.l     a3,(a2)
[00062fd6] 204a                      movea.l    a2,a0
x62f90_3:
[00062fd8] 265f                      movea.l    (a7)+,a3
[00062fda] 245f                      movea.l    (a7)+,a2
[00062fdc] 4e75                      rts

x62fde:
[00062fde] 2f0a                      move.l     a2,-(a7)
[00062fe0] 2448                      movea.l    a0,a2
[00062fe2] 200a                      move.l     a2,d0
[00062fe4] 6710                      beq.s      x62fde_1
[00062fe6] 226a 0018                 movea.l    24(a2),a1
[00062fea] 4e91                      jsr        (a1)
[00062fec] 701c                      moveq.l    #28,d0
[00062fee] 204a                      movea.l    a2,a0
[00062ff0] 4eb9 0004 8140            jsr        Ax_recycle
x62fde_1:
[00062ff6] 245f                      movea.l    (a7)+,a2
[00062ff8] 4e75                      rts

x62ffa:
[00062ffa] 4290                      clr.l      (a0)
[00062ffc] 42a8 0004                 clr.l      4(a0)
[00063000] 4e75                      rts

x63002:
[00063002] 2f0a                      move.l     a2,-(a7)
[00063004] 2f0b                      move.l     a3,-(a7)
[00063006] 2448                      movea.l    a0,a2
[00063008] 6014                      bra.s      x63002_1
x63002_2:
[0006300a] 204a                      movea.l    a2,a0
[0006300c] 226a 000c                 movea.l    12(a2),a1
[00063010] 4e91                      jsr        (a1)
[00063012] 2648                      movea.l    a0,a3
[00063014] 202a 0004                 move.l     4(a2),d0
[00063018] 6704                      beq.s      x63002_1
[0006301a] 2240                      movea.l    d0,a1
[0006301c] 4e91                      jsr        (a1)
x63002_1:
[0006301e] 204a                      movea.l    a2,a0
[00063020] 226a 0010                 movea.l    16(a2),a1
[00063024] 4e91                      jsr        (a1)
[00063026] 4a40                      tst.w      d0
[00063028] 67e0                      beq.s      x63002_2
[0006302a] 265f                      movea.l    (a7)+,a3
[0006302c] 245f                      movea.l    (a7)+,a2
[0006302e] 4e75                      rts

x63030:
[00063030] 48e7 0038                 movem.l    a2-a4,-(a7)
[00063034] 2849                      movea.l    a1,a4
[00063036] 2450                      movea.l    (a0),a2
[00063038] 97cb                      suba.l     a3,a3
[0006303a] 7008                      moveq.l    #8,d0
[0006303c] 4eb9 0004 7cc8            jsr        Ax_malloc
[00063042] 2648                      movea.l    a0,a3
[00063044] 200b                      move.l     a3,d0
[00063046] 6604                      bne.s      x63030_1
[00063048] 4240                      clr.w      d0
[0006304a] 6014                      bra.s      x63030_2
x63030_1:
[0006304c] 274c 0004                 move.l     a4,4(a3)
[00063050] 2692                      move.l     (a2),(a3)
[00063052] 248b                      move.l     a3,(a2)
[00063054] 202a 0004                 move.l     4(a2),d0
[00063058] 6604                      bne.s      x63030_3
[0006305a] 254b 0004                 move.l     a3,4(a2)
x63030_3:
[0006305e] 7001                      moveq.l    #1,d0
x63030_2:
[00063060] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00063064] 4e75                      rts

x63066:
[00063066] 48e7 003c                 movem.l    a2-a5,-(a7)
[0006306a] 2448                      movea.l    a0,a2
[0006306c] 2650                      movea.l    (a0),a3
[0006306e] 99cc                      suba.l     a4,a4
[00063070] 2a4c                      movea.l    a4,a5
[00063072] 226a 0010                 movea.l    16(a2),a1
[00063076] 4e91                      jsr        (a1)
[00063078] 4a40                      tst.w      d0
[0006307a] 663a                      bne.s      x63066_1
[0006307c] 2853                      movea.l    (a3),a4
[0006307e] 2053                      movea.l    (a3),a0
[00063080] 2690                      move.l     (a0),(a3)
[00063082] b9eb 0004                 cmpa.l     4(a3),a4
[00063086] 6620                      bne.s      x63066_2
[00063088] 2013                      move.l     (a3),d0
[0006308a] 6606                      bne.s      x63066_3
[0006308c] 42ab 0004                 clr.l      4(a3)
[00063090] 6016                      bra.s      x63066_2
x63066_3:
[00063092] 2753 0004                 move.l     (a3),4(a3)
[00063096] 6008                      bra.s      x63066_4
x63066_5:
[00063098] 206b 0004                 movea.l    4(a3),a0
[0006309c] 2750 0004                 move.l     (a0),4(a3)
x63066_4:
[000630a0] 206b 0004                 movea.l    4(a3),a0
[000630a4] 2010                      move.l     (a0),d0
[000630a6] 66f0                      bne.s      x63066_5
x63066_2:
[000630a8] 2a6c 0004                 movea.l    4(a4),a5
[000630ac] 7008                      moveq.l    #8,d0
[000630ae] 204c                      movea.l    a4,a0
[000630b0] 4eb9 0004 8140            jsr        Ax_recycle
x63066_1:
[000630b6] 204d                      movea.l    a5,a0
[000630b8] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[000630bc] 4e75                      rts

x630be:
[000630be] 2250                      movea.l    (a0),a1
[000630c0] 2011                      move.l     (a1),d0
[000630c2] 6704                      beq.s      x630be_1
[000630c4] 7001                      moveq.l    #1,d0
[000630c6] 4e75                      rts
x630be_1:
[000630c8] 4240                      clr.w      d0
[000630ca] 4e75                      rts

x630cc:
[000630cc] 2f0a                      move.l     a2,-(a7)
[000630ce] 7000                      moveq.l    #0,d0
[000630d0] 2450                      movea.l    (a0),a2
[000630d2] 2252                      movea.l    (a2),a1
[000630d4] 6004                      bra.s      x630cc_1
x630cc_2:
[000630d6] 5280                      addq.l     #1,d0
[000630d8] 2251                      movea.l    (a1),a1
x630cc_1:
[000630da] 2209                      move.l     a1,d1
[000630dc] 66f8                      bne.s      x630cc_2
[000630de] 245f                      movea.l    (a7)+,a2
[000630e0] 4e75                      rts

		.data

empty:
[000d62e8]                           dc.b $00
[000d62e9]                           dc.b $00
[000d62ea]                           dc.b $00
[000d62eb]                           dc.b $00
[000d62ec] 00047e26                  dc.l Ax_free
[000d62f0] 00062ade                  dc.l Alu_clearElem
[000d62f4] 00062b16                  dc.l Alu_appendElem
[000d62f8] 00062b6c                  dc.l Alu_insertElem
[000d62fc] 00062bf4                  dc.l Alu_deleteElem
[000d6300] 00062c70                  dc.l Alu_deleteForElem
[000d6304] 00062cf6                  dc.l Alu_searchElem
[000d6308] 00062d26                  dc.l Alu_searchForElem
[000d630c] 00062d7e                  dc.l Alu_firstElem
[000d6310] 00062d98                  dc.l Alu_lastElem
[000d6314] 00062dd0                  dc.l Alu_aktElem
[000d6318] 00062dbe                  dc.l Alu_aktNrElem
[000d631c] 00062de6                  dc.l Alu_skipElem
[000d6320] 00062e34                  dc.l Alu_countElem
[000d6324] 00062e3c                  dc.l Alu_countForElem
[000d6328] 00062e70                  dc.l Alu_doForElem
