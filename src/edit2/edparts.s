
omalloc:
[00022f3e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00022f42] 2600                      move.l     d0,d3
[00022f44] 95ca                      suba.l     a2,a2
[00022f46] 4a80                      tst.l      d0
[00022f48] 670c                      beq.s      omalloc_1
[00022f4a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00022f50] 2448                      movea.l    a0,a2
[00022f52] 200a                      move.l     a2,d0
[00022f54] 6716                      beq.s      omalloc_2
omalloc_1:
[00022f56] 7042                      moveq.l    #66,d0
[00022f58] 4eb9 0004 7cc8            jsr        Ax_malloc
[00022f5e] 2648                      movea.l    a0,a3
[00022f60] 200b                      move.l     a3,d0
[00022f62] 660c                      bne.s      omalloc_3
[00022f64] 204a                      movea.l    a2,a0
[00022f66] 4eb9 0004 7e26            jsr        Ax_free
omalloc_2:
[00022f6c] 91c8                      suba.l     a0,a0
[00022f6e] 6022                      bra.s      omalloc_4
omalloc_3:
[00022f70] 7242                      moveq.l    #66,d1
[00022f72] 4240                      clr.w      d0
[00022f74] 204b                      movea.l    a3,a0
[00022f76] 4eb9 0007 712e            jsr        memset
[00022f7c] 274a 0004                 move.l     a2,4(a3)
[00022f80] 377c 0001 0036            move.w     #$0001,54(a3)
[00022f86] 4293                      clr.l      (a3)
[00022f88] 2743 000a                 move.l     d3,10(a3)
[00022f8c] 2743 000e                 move.l     d3,14(a3)
[00022f90] 204b                      movea.l    a3,a0
omalloc_4:
[00022f92] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00022f96] 4e75                      rts

part_add:
[00022f98] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00022f9c] 4fef ffe8                 lea.l      -24(a7),a7
[00022fa0] 2648                      movea.l    a0,a3
[00022fa2] 0c79 0028 000a f0d4       cmpi.w     #$0028,part_ucnt
[00022faa] 6c00 03fa                 bge        part_add_1
[00022fae] 2279 000a f0de            movea.l    parts_window,a1
[00022fb4] 2f69 0014 0014            move.l     20(a1),20(a7)
[00022fba] 323c 0080                 move.w     #$0080,d1
[00022fbe] 70ff                      moveq.l    #-1,d0
[00022fc0] 206f 0014                 movea.l    20(a7),a0
[00022fc4] 4eb9 0004 aeca            jsr        Aob_findflag
[00022fca] 3600                      move.w     d0,d3
[00022fcc] 4a40                      tst.w      d0
[00022fce] 6b00 03d6                 bmi        part_add_1
[00022fd2] 48c0                      ext.l      d0
[00022fd4] 2200                      move.l     d0,d1
[00022fd6] d281                      add.l      d1,d1
[00022fd8] d280                      add.l      d0,d1
[00022fda] e789                      lsl.l      #3,d1
[00022fdc] 286f 0014                 movea.l    20(a7),a4
[00022fe0] d9c1                      adda.l     d1,a4
[00022fe2] 362c 0002                 move.w     2(a4),d3
[00022fe6] 48c3                      ext.l      d3
[00022fe8] 2403                      move.l     d3,d2
[00022fea] d482                      add.l      d2,d2
[00022fec] d483                      add.l      d3,d2
[00022fee] e78a                      lsl.l      #3,d2
[00022ff0] 206f 0014                 movea.l    20(a7),a0
[00022ff4] d1c2                      adda.l     d2,a0
[00022ff6] 2f48 0010                 move.l     a0,16(a7)
[00022ffa] 41e8 0018                 lea.l      24(a0),a0
[00022ffe] 2f48 000c                 move.l     a0,12(a7)
[00023002] 3028 0012                 move.w     18(a0),d0
[00023006] 3200                      move.w     d0,d1
[00023008] e749                      lsl.w      #3,d1
[0002300a] 9240                      sub.w      d0,d1
[0002300c] e749                      lsl.w      #3,d1
[0002300e] 43f9 000a e312            lea.l      tree,a1
[00023014] d2c1                      adda.w     d1,a1
[00023016] 2f49 0008                 move.l     a1,8(a7)
[0002301a] 337c 0018 000e            move.w     #$0018,14(a1)
[00023020] 206b 0034                 movea.l    52(a3),a0
[00023024] 3368 0008 0010            move.w     8(a0),16(a1)
[0002302a] 206b 0034                 movea.l    52(a3),a0
[0002302e] 3368 000a 0012            move.w     10(a0),18(a1)
[00023034] 206b 0034                 movea.l    52(a3),a0
[00023038] 3368 0010 0018            move.w     16(a0),24(a1)
[0002303e] 206b 0034                 movea.l    52(a3),a0
[00023042] 3368 0012 001a            move.w     18(a0),26(a1)
[00023048] 206b 0034                 movea.l    52(a3),a0
[0002304c] 3368 0014 001c            move.w     20(a0),28(a1)
[00023052] 206b 0034                 movea.l    52(a3),a0
[00023056] 3368 0016 001e            move.w     22(a0),30(a1)
[0002305c] 2a6b 0038                 movea.l    56(a3),a5
[00023060] 7020                      moveq.l    #32,d0
[00023062] 6100 feda                 bsr        omalloc
[00023066] 2e88                      move.l     a0,(a7)
[00023068] 2008                      move.l     a0,d0
[0002306a] 6700 033a                 beq        part_add_1
[0002306e] 43f9 000a f11e            lea.l      $000AF11E,a1
[00023074] 2f09                      move.l     a1,-(a7)
[00023076] 41e8 0016                 lea.l      22(a0),a0
[0002307a] 224b                      movea.l    a3,a1
[0002307c] 4eb9 0007 6950            jsr        strcpy
[00023082] 225f                      movea.l    (a7)+,a1
[00023084] 701f                      moveq.l    #31,d0
[00023086] 4eb9 0007 69da            jsr        strncat
[0002308c] 4eb9 0007 6bc4            jsr        strupr
[00023092] 302d 0012                 move.w     18(a5),d0
[00023096] e548                      lsl.w      #2,d0
[00023098] 806d 0008                 or.w       8(a5),d0
[0002309c] 322d 001c                 move.w     28(a5),d1
[000230a0] e949                      lsl.w      #4,d1
[000230a2] 8041                      or.w       d1,d0
[000230a4] 2057                      movea.l    (a7),a0
[000230a6] 3140 0038                 move.w     d0,56(a0)
[000230aa] 2f68 0004 0004            move.l     4(a0),4(a7)
[000230b0] 7000                      moveq.l    #0,d0
[000230b2] 6100 fe8a                 bsr        omalloc
[000230b6] 2448                      movea.l    a0,a2
[000230b8] 200a                      move.l     a2,d0
[000230ba] 6700 02ea                 beq        part_add_1
[000230be] 224b                      movea.l    a3,a1
[000230c0] 41ea 0016                 lea.l      22(a2),a0
[000230c4] 4eb9 0007 6950            jsr        strcpy
[000230ca] 357c 0203 0038            move.w     #$0203,56(a2)
[000230d0] 206f 0004                 movea.l    4(a7),a0
[000230d4] 208a                      move.l     a2,(a0)
[000230d6] 7000                      moveq.l    #0,d0
[000230d8] 6100 fe64                 bsr        omalloc
[000230dc] 2448                      movea.l    a0,a2
[000230de] 200a                      move.l     a2,d0
[000230e0] 6700 02c4                 beq        part_add_1
[000230e4] 2255                      movea.l    (a5),a1
[000230e6] 41ea 0016                 lea.l      22(a2),a0
[000230ea] 4eb9 0007 6950            jsr        strcpy
[000230f0] 426a 0038                 clr.w      56(a2)
[000230f4] 206f 0004                 movea.l    4(a7),a0
[000230f8] 214a 0004                 move.l     a2,4(a0)
[000230fc] 202d 0004                 move.l     4(a5),d0
[00023100] 672a                      beq.s      part_add_2
[00023102] 2240                      movea.l    d0,a1
[00023104] 1211                      move.b     (a1),d1
[00023106] 6724                      beq.s      part_add_2
[00023108] 7000                      moveq.l    #0,d0
[0002310a] 6100 fe32                 bsr        omalloc
[0002310e] 2448                      movea.l    a0,a2
[00023110] 200a                      move.l     a2,d0
[00023112] 6700 0292                 beq        part_add_1
[00023116] 226d 0004                 movea.l    4(a5),a1
[0002311a] 41ea 0016                 lea.l      22(a2),a0
[0002311e] 4eb9 0007 6950            jsr        strcpy
[00023124] 357c 0204 0038            move.w     #$0204,56(a2)
[0002312a] 6002                      bra.s      part_add_3
part_add_2:
[0002312c] 95ca                      suba.l     a2,a2
part_add_3:
[0002312e] 206f 0004                 movea.l    4(a7),a0
[00023132] 214a 0008                 move.l     a2,8(a0)
[00023136] 302d 0008                 move.w     8(a5),d0
[0002313a] 5340                      subq.w     #1,d0
[0002313c] 670c                      beq.s      part_add_4
[0002313e] 5340                      subq.w     #1,d0
[00023140] 671c                      beq.s      part_add_5
[00023142] 5340                      subq.w     #1,d0
[00023144] 6754                      beq.s      part_add_6
[00023146] 6000 008e                 bra        part_add_7
part_add_4:
[0002314a] 7000                      moveq.l    #0,d0
[0002314c] 6100 fdf0                 bsr        omalloc
[00023150] 2448                      movea.l    a0,a2
[00023152] 200a                      move.l     a2,d0
[00023154] 6700 0250                 beq        part_add_1
[00023158] 426a 0038                 clr.w      56(a2)
[0002315c] 606e                      bra.s      part_add_8
part_add_5:
[0002315e] 206d 000a                 movea.l    10(a5),a0
[00023162] 4eb9 0007 69b0            jsr        strlen
[00023168] 2600                      move.l     d0,d3
[0002316a] 5283                      addq.l     #1,d3
[0002316c] 2003                      move.l     d3,d0
[0002316e] 6100 fdce                 bsr        omalloc
[00023172] 2448                      movea.l    a0,a2
[00023174] 200a                      move.l     a2,d0
[00023176] 6700 022e                 beq        part_add_1
[0002317a] 43f9 000a f121            lea.l      $000AF121,a1
[00023180] 41ea 0016                 lea.l      22(a2),a0
[00023184] 4eb9 0007 6950            jsr        strcpy
[0002318a] 226d 000a                 movea.l    10(a5),a1
[0002318e] 206a 0004                 movea.l    4(a2),a0
[00023192] 4eb9 0007 6950            jsr        strcpy
[00023198] 6032                      bra.s      part_add_8
part_add_6:
[0002319a] 202d 000e                 move.l     14(a5),d0
[0002319e] 6100 fd9e                 bsr        omalloc
[000231a2] 2448                      movea.l    a0,a2
[000231a4] 200a                      move.l     a2,d0
[000231a6] 6700 01fe                 beq        part_add_1
[000231aa] 43f9 000a f129            lea.l      $000AF129,a1
[000231b0] 41ea 0016                 lea.l      22(a2),a0
[000231b4] 4eb9 0007 6950            jsr        strcpy
[000231ba] 202d 000e                 move.l     14(a5),d0
[000231be] 226d 000a                 movea.l    10(a5),a1
[000231c2] 206a 0004                 movea.l    4(a2),a0
[000231c6] 4eb9 0007 6f44            jsr        memcpy
part_add_8:
[000231cc] 206f 0004                 movea.l    4(a7),a0
[000231d0] 214a 000c                 move.l     a2,12(a0)
[000231d4] 6008                      bra.s      part_add_9
part_add_7:
[000231d6] 206f 0004                 movea.l    4(a7),a0
[000231da] 42a8 000c                 clr.l      12(a0)
part_add_9:
[000231de] 302d 0012                 move.w     18(a5),d0
[000231e2] 5340                      subq.w     #1,d0
[000231e4] 670c                      beq.s      part_add_10
[000231e6] 5340                      subq.w     #1,d0
[000231e8] 671c                      beq.s      part_add_11
[000231ea] 5340                      subq.w     #1,d0
[000231ec] 6754                      beq.s      part_add_12
[000231ee] 6000 008e                 bra        part_add_13
part_add_10:
[000231f2] 7000                      moveq.l    #0,d0
[000231f4] 6100 fd48                 bsr        omalloc
[000231f8] 2448                      movea.l    a0,a2
[000231fa] 200a                      move.l     a2,d0
[000231fc] 6700 01a8                 beq        part_add_1
[00023200] 426a 0038                 clr.w      56(a2)
[00023204] 606e                      bra.s      part_add_14
part_add_11:
[00023206] 206d 0014                 movea.l    20(a5),a0
[0002320a] 4eb9 0007 69b0            jsr        strlen
[00023210] 2600                      move.l     d0,d3
[00023212] 5283                      addq.l     #1,d3
[00023214] 2003                      move.l     d3,d0
[00023216] 6100 fd26                 bsr        omalloc
[0002321a] 2448                      movea.l    a0,a2
[0002321c] 200a                      move.l     a2,d0
[0002321e] 6700 0186                 beq        part_add_1
[00023222] 43f9 000a f121            lea.l      $000AF121,a1
[00023228] 41ea 0016                 lea.l      22(a2),a0
[0002322c] 4eb9 0007 6950            jsr        strcpy
[00023232] 226d 0014                 movea.l    20(a5),a1
[00023236] 206a 0004                 movea.l    4(a2),a0
[0002323a] 4eb9 0007 6950            jsr        strcpy
[00023240] 6032                      bra.s      part_add_14
part_add_12:
[00023242] 202d 0018                 move.l     24(a5),d0
[00023246] 6100 fcf6                 bsr        omalloc
[0002324a] 2448                      movea.l    a0,a2
[0002324c] 200a                      move.l     a2,d0
[0002324e] 6700 0156                 beq        part_add_1
[00023252] 43f9 000a f129            lea.l      $000AF129,a1
[00023258] 41ea 0016                 lea.l      22(a2),a0
[0002325c] 4eb9 0007 6950            jsr        strcpy
[00023262] 202d 0018                 move.l     24(a5),d0
[00023266] 226d 0014                 movea.l    20(a5),a1
[0002326a] 206a 0004                 movea.l    4(a2),a0
[0002326e] 4eb9 0007 6f44            jsr        memcpy
part_add_14:
[00023274] 206f 0004                 movea.l    4(a7),a0
[00023278] 214a 0010                 move.l     a2,16(a0)
[0002327c] 6008                      bra.s      part_add_15
part_add_13:
[0002327e] 206f 0004                 movea.l    4(a7),a0
[00023282] 42a8 0010                 clr.l      16(a0)
part_add_15:
[00023286] 302d 001c                 move.w     28(a5),d0
[0002328a] 5340                      subq.w     #1,d0
[0002328c] 670c                      beq.s      part_add_16
[0002328e] 5340                      subq.w     #1,d0
[00023290] 671c                      beq.s      part_add_17
[00023292] 5340                      subq.w     #1,d0
[00023294] 6754                      beq.s      part_add_18
[00023296] 6000 008e                 bra        part_add_19
part_add_16:
[0002329a] 7000                      moveq.l    #0,d0
[0002329c] 6100 fca0                 bsr        omalloc
[000232a0] 2448                      movea.l    a0,a2
[000232a2] 200a                      move.l     a2,d0
[000232a4] 6700 0100                 beq        part_add_1
[000232a8] 426a 0038                 clr.w      56(a2)
[000232ac] 606e                      bra.s      part_add_20
part_add_17:
[000232ae] 206d 001e                 movea.l    30(a5),a0
[000232b2] 4eb9 0007 69b0            jsr        strlen
[000232b8] 2600                      move.l     d0,d3
[000232ba] 5283                      addq.l     #1,d3
[000232bc] 2003                      move.l     d3,d0
[000232be] 6100 fc7e                 bsr        omalloc
[000232c2] 2448                      movea.l    a0,a2
[000232c4] 200a                      move.l     a2,d0
[000232c6] 6700 00de                 beq        part_add_1
[000232ca] 43f9 000a f121            lea.l      $000AF121,a1
[000232d0] 41ea 0016                 lea.l      22(a2),a0
[000232d4] 4eb9 0007 6950            jsr        strcpy
[000232da] 226d 001e                 movea.l    30(a5),a1
[000232de] 206a 0004                 movea.l    4(a2),a0
[000232e2] 4eb9 0007 6950            jsr        strcpy
[000232e8] 6032                      bra.s      part_add_20
part_add_18:
[000232ea] 202d 0022                 move.l     34(a5),d0
[000232ee] 6100 fc4e                 bsr        omalloc
[000232f2] 2448                      movea.l    a0,a2
[000232f4] 200a                      move.l     a2,d0
[000232f6] 6700 00ae                 beq        part_add_1
[000232fa] 43f9 000a f129            lea.l      $000AF129,a1
[00023300] 41ea 0016                 lea.l      22(a2),a0
[00023304] 4eb9 0007 6950            jsr        strcpy
[0002330a] 202d 0022                 move.l     34(a5),d0
[0002330e] 226d 001e                 movea.l    30(a5),a1
[00023312] 206a 0004                 movea.l    4(a2),a0
[00023316] 4eb9 0007 6f44            jsr        memcpy
part_add_20:
[0002331c] 206f 0004                 movea.l    4(a7),a0
[00023320] 214a 0014                 move.l     a2,20(a0)
[00023324] 6008                      bra.s      part_add_21
part_add_19:
[00023326] 206f 0004                 movea.l    4(a7),a0
[0002332a] 42a8 0014                 clr.l      20(a0)
part_add_21:
[0002332e] 206d 0026                 movea.l    38(a5),a0
[00023332] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00023338] 4a40                      tst.w      d0
[0002333a] 663c                      bne.s      part_add_22
[0002333c] 206d 0026                 movea.l    38(a5),a0
[00023340] 4eb9 0007 69b0            jsr        strlen
[00023346] 5280                      addq.l     #1,d0
[00023348] 6100 fbf4                 bsr        omalloc
[0002334c] 2448                      movea.l    a0,a2
[0002334e] 200a                      move.l     a2,d0
[00023350] 6754                      beq.s      part_add_1
[00023352] 43f9 000a f132            lea.l      $000AF132,a1
[00023358] 41ea 0016                 lea.l      22(a2),a0
[0002335c] 4eb9 0007 6950            jsr        strcpy
[00023362] 226d 0026                 movea.l    38(a5),a1
[00023366] 206a 0004                 movea.l    4(a2),a0
[0002336a] 4eb9 0007 6950            jsr        strcpy
[00023370] 357c 0400 0038            move.w     #$0400,56(a2)
[00023376] 6002                      bra.s      part_add_23
part_add_22:
[00023378] 95ca                      suba.l     a2,a2
part_add_23:
[0002337a] 206f 0004                 movea.l    4(a7),a0
[0002337e] 214a 0018                 move.l     a2,24(a0)
[00023382] 206d 002a                 movea.l    42(a5),a0
[00023386] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002338c] 4a40                      tst.w      d0
[0002338e] 6642                      bne.s      part_add_24
[00023390] 206d 002a                 movea.l    42(a5),a0
[00023394] 4eb9 0007 69b0            jsr        strlen
[0002339a] 5280                      addq.l     #1,d0
[0002339c] 6100 fba0                 bsr        omalloc
[000233a0] 2448                      movea.l    a0,a2
[000233a2] 200a                      move.l     a2,d0
[000233a4] 6606                      bne.s      part_add_25
part_add_1:
[000233a6] 70ff                      moveq.l    #-1,d0
[000233a8] 6000 0108                 bra        part_add_26
part_add_25:
[000233ac] 43f9 000a f13c            lea.l      $000AF13C,a1
[000233b2] 41ea 0016                 lea.l      22(a2),a0
[000233b6] 4eb9 0007 6950            jsr        strcpy
[000233bc] 226d 002a                 movea.l    42(a5),a1
[000233c0] 206a 0004                 movea.l    4(a2),a0
[000233c4] 4eb9 0007 6950            jsr        strcpy
[000233ca] 357c 0400 0038            move.w     #$0400,56(a2)
[000233d0] 6002                      bra.s      part_add_27
part_add_24:
[000233d2] 95ca                      suba.l     a2,a2
part_add_27:
[000233d4] 206f 0004                 movea.l    4(a7),a0
[000233d8] 214a 001c                 move.l     a2,28(a0)
[000233dc] 226f 0008                 movea.l    8(a7),a1
[000233e0] 2357 0014                 move.l     (a7),20(a1)
[000233e4] 246b 0030                 movea.l    48(a3),a2
[000233e8] 396a 0006 0006            move.w     6(a2),6(a4)
[000233ee] 246b 0030                 movea.l    48(a3),a2
[000233f2] 302a 000a                 move.w     10(a2),d0
[000233f6] 807c 2000                 or.w       #$2000,d0
[000233fa] 3940 000a                 move.w     d0,10(a4)
[000233fe] 246b 0030                 movea.l    48(a3),a2
[00023402] 296a 000c 000c            move.l     12(a2),12(a4)
[00023408] 246b 0030                 movea.l    48(a3),a2
[0002340c] 302a 0010                 move.w     16(a2),d0
[00023410] 3940 0010                 move.w     d0,16(a4)
[00023414] 246f 0010                 movea.l    16(a7),a2
[00023418] 3540 0010                 move.w     d0,16(a2)
[0002341c] 2a6b 0030                 movea.l    48(a3),a5
[00023420] 322d 0012                 move.w     18(a5),d1
[00023424] 3941 0012                 move.w     d1,18(a4)
[00023428] 3541 0012                 move.w     d1,18(a2)
[0002342c] 2a6b 0030                 movea.l    48(a3),a5
[00023430] 302d 0014                 move.w     20(a5),d0
[00023434] 3940 0014                 move.w     d0,20(a4)
[00023438] 3540 0014                 move.w     d0,20(a2)
[0002343c] 2a6b 0030                 movea.l    48(a3),a5
[00023440] 322d 0016                 move.w     22(a5),d1
[00023444] 3941 0016                 move.w     d1,22(a4)
[00023448] 3541 0016                 move.w     d1,22(a2)
[0002344c] 026c ff7f 0008            andi.w     #$FF7F,8(a4)
[00023452] 0c6c 0018 0006            cmpi.w     #$0018,6(a4)
[00023458] 6614                      bne.s      part_add_28
[0002345a] 246c 000c                 movea.l    12(a4),a2
[0002345e] 202a 0008                 move.l     8(a2),d0
[00023462] 670a                      beq.s      part_add_28
[00023464] 2a40                      movea.l    d0,a5
[00023466] 204c                      movea.l    a4,a0
[00023468] 7001                      moveq.l    #1,d0
[0002346a] 93c9                      suba.l     a1,a1
[0002346c] 4e95                      jsr        (a5)
part_add_28:
[0002346e] 2279 000d 99d6            movea.l    _globl,a1
[00023474] 4240                      clr.w      d0
[00023476] 204c                      movea.l    a4,a0
[00023478] 4eb9 0006 d908            jsr        mt_rsrc_obfix
[0002347e] 2279 000d 99d6            movea.l    _globl,a1
[00023484] 4240                      clr.w      d0
[00023486] 206f 0010                 movea.l    16(a7),a0
[0002348a] 4eb9 0006 d908            jsr        mt_rsrc_obfix
[00023490] 277c 000a f0d6 0040       move.l     #uocall,64(a3)
[00023498] 3039 000a f0d4            move.w     part_ucnt,d0
[0002349e] e548                      lsl.w      #2,d0
[000234a0] 41f9 000f f440            lea.l      part_list,a0
[000234a6] 218b 0000                 move.l     a3,0(a0,d0.w)
[000234aa] 5279 000a f0d4            addq.w     #1,part_ucnt
[000234b0] 4240                      clr.w      d0
part_add_26:
[000234b2] 4fef 0018                 lea.l      24(a7),a7
[000234b6] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[000234ba] 4e75                      rts

part_get:
[000234bc] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[000234c0] 2648                      movea.l    a0,a3
[000234c2] 76ff                      moveq.l    #-1,d3
[000234c4] d679 000a f0d4            add.w      part_ucnt,d3
[000234ca] 45f9 000f f440            lea.l      part_list,a2
[000234d0] 6020                      bra.s      part_get_1
part_get_4:
[000234d2] 3003                      move.w     d3,d0
[000234d4] e548                      lsl.w      #2,d0
[000234d6] 2272 0000                 movea.l    0(a2,d0.w),a1
[000234da] 204b                      movea.l    a3,a0
[000234dc] 4eb9 0007 68fe            jsr        strcmp
[000234e2] 4a40                      tst.w      d0
[000234e4] 660a                      bne.s      part_get_2
[000234e6] 3003                      move.w     d3,d0
[000234e8] e548                      lsl.w      #2,d0
[000234ea] 2072 0000                 movea.l    0(a2,d0.w),a0
[000234ee] 6008                      bra.s      part_get_3
part_get_2:
[000234f0] 5343                      subq.w     #1,d3
part_get_1:
[000234f2] 4a43                      tst.w      d3
[000234f4] 6adc                      bpl.s      part_get_4
[000234f6] 91c8                      suba.l     a0,a0
part_get_3:
[000234f8] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000234fc] 4e75                      rts

part_make:
[000234fe] 48e7 003c                 movem.l    a2-a5,-(a7)
[00023502] 4fef fefa                 lea.l      -262(a7),a7
[00023506] 95ca                      suba.l     a2,a2
[00023508] 41f9 000a da16            lea.l      WI_PARTS,a0
[0002350e] 4eb9 0004 f41a            jsr        Awi_create
[00023514] 2648                      movea.l    a0,a3
[00023516] 23c8 000a f0de            move.l     a0,parts_window
[0002351c] 200b                      move.l     a3,d0
[0002351e] 6768                      beq.s      part_make_1
[00023520] 204b                      movea.l    a3,a0
[00023522] 4eb9 0002 503e            jsr        init_boxed
[00023528] 204b                      movea.l    a3,a0
[0002352a] 4eb9 0002 9cf2            jsr        init_title
[00023530] 204b                      movea.l    a3,a0
[00023532] 4eb9 0002 8852            jsr        init_3Dbutton
[00023538] 204b                      movea.l    a3,a0
[0002353a] 4eb9 0002 8fea            jsr        init_check
[00023540] 204b                      movea.l    a3,a0
[00023542] 4eb9 0002 64c8            jsr        init_cycle
[00023548] 204b                      movea.l    a3,a0
[0002354a] 4eb9 0002 5b8c            jsr        init_slider
[00023550] 204b                      movea.l    a3,a0
[00023552] 4eb9 0002 9348            jsr        init_ftext
[00023558] 204b                      movea.l    a3,a0
[0002355a] 4eb9 0002 7c26            jsr        init_inner
[00023560] 204b                      movea.l    a3,a0
[00023562] 4eb9 0002 6126            jsr        init_picture
[00023568] 204b                      movea.l    a3,a0
[0002356a] 4eb9 0002 5b18            jsr        init_editor
[00023570] 204b                      movea.l    a3,a0
[00023572] 4eb9 0002 74f2            jsr        init_pattern
[00023578] 204b                      movea.l    a3,a0
[0002357a] 4eb9 0002 6fa0            jsr        init_arrow
[00023580] 204b                      movea.l    a3,a0
[00023582] 4eb9 0002 5ab0            jsr        init_select
part_make_1:
[00023588] 49ef 0006                 lea.l      6(a7),a4
[0002358c] 2279 0010 1f12            movea.l    ACSblk,a1
[00023592] 43e9 009e                 lea.l      158(a1),a1
[00023596] 204c                      movea.l    a4,a0
[00023598] 4eb9 0007 6950            jsr        strcpy
[0002359e] 0c14 0043                 cmpi.b     #$43,(a4)
[000235a2] 6c18                      bge.s      part_make_2
[000235a4] 4eb9 0007 2902            jsr        Dgetdrv
[000235aa] 4eb9 0007 2978            jsr        Dsetdrv
[000235b0] c0bc 0000 0004            and.l      #$00000004,d0
[000235b6] 6704                      beq.s      part_make_2
[000235b8] 18bc 0043                 move.b     #$43,(a4)
part_make_2:
[000235bc] 705c                      moveq.l    #92,d0
[000235be] 204c                      movea.l    a4,a0
[000235c0] 4eb9 0007 68e2            jsr        strrchr
[000235c6] 2a48                      movea.l    a0,a5
[000235c8] 200d                      move.l     a5,d0
[000235ca] 670a                      beq.s      part_make_3
[000235cc] 102d 0001                 move.b     1(a5),d0
[000235d0] 6704                      beq.s      part_make_3
[000235d2] 422d 0001                 clr.b      1(a5)
part_make_3:
[000235d6] 204c                      movea.l    a4,a0
[000235d8] 4eb9 0004 7896            jsr        Af_readdir
[000235de] 2a48                      movea.l    a0,a5
[000235e0] 244d                      movea.l    a5,a2
[000235e2] 200a                      move.l     a2,d0
[000235e4] 6740                      beq.s      part_make_4
[000235e6] 6032                      bra.s      part_make_5
part_make_7:
[000235e8] 43f9 000a f147            lea.l      $000AF147,a1
[000235ee] 2f09                      move.l     a1,-(a7)
[000235f0] 2255                      movea.l    (a5),a1
[000235f2] 41ef 0004                 lea.l      4(a7),a0
[000235f6] 4eb9 0004 7286            jsr        Af_2ext
[000235fc] 4eb9 0007 6bc4            jsr        strupr
[00023602] 225f                      movea.l    (a7)+,a1
[00023604] 4eb9 0007 68fe            jsr        strcmp
[0002360a] 4a40                      tst.w      d0
[0002360c] 6608                      bne.s      part_make_6
[0002360e] 2055                      movea.l    (a5),a0
[00023610] 4eb9 0006 312a            jsr        Ash_module
part_make_6:
[00023616] 2a6d 0004                 movea.l    4(a5),a5
part_make_5:
[0002361a] 200d                      move.l     a5,d0
[0002361c] 66ca                      bne.s      part_make_7
[0002361e] 204a                      movea.l    a2,a0
[00023620] 4eb9 0004 795e            jsr        Af_freedir
part_make_4:
[00023626] 204b                      movea.l    a3,a0
[00023628] 4fef 0106                 lea.l      262(a7),a7
[0002362c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00023630] 4e75                      rts

part_close:
[00023632] 2f0a                      move.l     a2,-(a7)
[00023634] 2448                      movea.l    a0,a2
[00023636] 006a 0100 0056            ori.w      #$0100,86(a2)
[0002363c] 4eb9 0005 013e            jsr        Awi_closed
[00023642] 026a feff 0056            andi.w     #$FEFF,86(a2)
[00023648] 245f                      movea.l    (a7)+,a2
[0002364a] 4e75                      rts

part_init:
[0002364c] 2f0a                      move.l     a2,-(a7)
[0002364e] 2f0b                      move.l     a3,-(a7)
[00023650] 2448                      movea.l    a0,a2
[00023652] 006a 0010 0056            ori.w      #$0010,86(a2)
[00023658] 43ea 0024                 lea.l      36(a2),a1
[0002365c] 266a 0086                 movea.l    134(a2),a3
[00023660] 4e93                      jsr        (a3)
[00023662] 4240                      clr.w      d0
[00023664] 265f                      movea.l    (a7)+,a3
[00023666] 245f                      movea.l    (a7)+,a2
[00023668] 4e75                      rts

part_service:
[0002366a] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0002366e] 2448                      movea.l    a0,a2
[00023670] 3600                      move.w     d0,d3
[00023672] 2649                      movea.l    a1,a3
[00023674] b07c 0024                 cmp.w      #$0024,d0
[00023678] 6742                      beq.s      part_service_1
[0002367a] 6e12                      bgt.s      part_service_2
[0002367c] 5340                      subq.w     #1,d0
[0002367e] 6762                      beq.s      part_service_3
[00023680] 5340                      subq.w     #1,d0
[00023682] 671c                      beq.s      part_service_4
[00023684] 907c 000a                 sub.w      #$000A,d0
[00023688] 6738                      beq.s      part_service_5
[0002368a] 6000 0072                 bra.w      part_service_6
part_service_2:
[0002368e] 907c 0025                 sub.w      #$0025,d0
[00023692] 6722                      beq.s      part_service_7
[00023694] 907c 2303                 sub.w      #$2303,d0
[00023698] 672c                      beq.s      part_service_8
[0002369a] 5340                      subq.w     #1,d0
[0002369c] 6736                      beq.s      part_service_9
[0002369e] 605e                      bra.s      part_service_6
part_service_4:
[000236a0] 2079 0010 1f12            movea.l    ACSblk,a0
[000236a6] 3028 023a                 move.w     570(a0),d0
[000236aa] 6760                      beq.s      part_service_10
[000236ac] 204a                      movea.l    a2,a0
[000236ae] 4eb9 0005 0330            jsr        Awi_delete
[000236b4] 6056                      bra.s      part_service_10
part_service_7:
[000236b6] 42ab 0002                 clr.l      2(a3)
[000236ba] 6050                      bra.s      part_service_10
part_service_1:
[000236bc] 36bc 0001                 move.w     #$0001,(a3)
[000236c0] 604a                      bra.s      part_service_10
part_service_5:
[000236c2] 4253                      clr.w      (a3)
[000236c4] 6046                      bra.s      part_service_10
part_service_8:
[000236c6] 0c79 0028 000a f0d4       cmpi.w     #$0028,part_ucnt
[000236ce] 6c3c                      bge.s      part_service_10
[000236d0] 268a                      move.l     a2,(a3)
[000236d2] 6038                      bra.s      part_service_10
part_service_9:
[000236d4] 204b                      movea.l    a3,a0
[000236d6] 6100 f8c0                 bsr        part_add
[000236da] 006a 0020 0056            ori.w      #$0020,86(a2)
[000236e0] 602a                      bra.s      part_service_10
part_service_3:
[000236e2] 302a 0058                 move.w     88(a2),d0
[000236e6] 6b24                      bmi.s      part_service_10
[000236e8] 4eb9 0004 e608            jsr        Awi_root
[000236ee] 2848                      movea.l    a0,a4
[000236f0] 43ea 0058                 lea.l      88(a2),a1
[000236f4] 7065                      moveq.l    #101,d0
[000236f6] 2a6c 0004                 movea.l    4(a4),a5
[000236fa] 4e95                      jsr        (a5)
[000236fc] 600e                      bra.s      part_service_10
part_service_6:
[000236fe] 224b                      movea.l    a3,a1
[00023700] 3003                      move.w     d3,d0
[00023702] 204a                      movea.l    a2,a0
[00023704] 4eb9 0005 1276            jsr        Awi_service
[0002370a] 6002                      bra.s      part_service_11
part_service_10:
[0002370c] 7001                      moveq.l    #1,d0
part_service_11:
[0002370e] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00023712] 4e75                      rts

glue_parts:
[00023714] 2f0a                      move.l     a2,-(a7)
[00023716] 2f0b                      move.l     a3,-(a7)
[00023718] 514f                      subq.w     #8,a7
[0002371a] 2448                      movea.l    a0,a2
[0002371c] 3039 0007 8246            move.w     gluepart,d0
[00023722] 6700 0094                 beq        glue_parts_1
[00023726] 322a 0020                 move.w     32(a2),d1
[0002372a] 6f00 008c                 ble        glue_parts_1
[0002372e] 47f9 000a f0de            lea.l      parts_window,a3
[00023734] 2013                      move.l     (a3),d0
[00023736] 6700 0080                 beq        glue_parts_1
[0002373a] 2040                      movea.l    d0,a0
[0002373c] 3228 0020                 move.w     32(a0),d1
[00023740] 6f76                      ble.s      glue_parts_1
[00023742] 3428 0056                 move.w     86(a0),d2
[00023746] c47c 0800                 and.w      #$0800,d2
[0002374a] 666c                      bne.s      glue_parts_1
[0002374c] 4eb9 0004 6d70            jsr        Aev_mess
[00023752] 302a 0034                 move.w     52(a2),d0
[00023756] 2053                      movea.l    (a3),a0
[00023758] 3228 0028                 move.w     40(a0),d1
[0002375c] 3f41 0004                 move.w     d1,4(a7)
[00023760] 9041                      sub.w      d1,d0
[00023762] 3e80                      move.w     d0,(a7)
[00023764] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002376a] 302a 0036                 move.w     54(a2),d0
[0002376e] 2250                      movea.l    (a0),a1
[00023770] 9069 0006                 sub.w      6(a1),d0
[00023774] 3f40 0002                 move.w     d0,2(a7)
[00023778] 2453                      movea.l    (a3),a2
[0002377a] 222a 005e                 move.l     94(a2),d1
[0002377e] 6708                      beq.s      glue_parts_2
[00023780] 3429 0014                 move.w     20(a1),d2
[00023784] 956f 0002                 sub.w      d2,2(a7)
glue_parts_2:
[00023788] 2250                      movea.l    (a0),a1
[0002378a] 3017                      move.w     (a7),d0
[0002378c] b069 0008                 cmp.w      8(a1),d0
[00023790] 6c04                      bge.s      glue_parts_3
[00023792] 3ea9 0008                 move.w     8(a1),(a7)
glue_parts_3:
[00023796] 2250                      movea.l    (a0),a1
[00023798] 302f 0002                 move.w     2(a7),d0
[0002379c] b069 000a                 cmp.w      10(a1),d0
[000237a0] 6c06                      bge.s      glue_parts_4
[000237a2] 3f69 000a 0002            move.w     10(a1),2(a7)
glue_parts_4:
[000237a8] 2053                      movea.l    (a3),a0
[000237aa] 3f68 002a 0006            move.w     42(a0),6(a7)
[000237b0] 43d7                      lea.l      (a7),a1
[000237b2] 2468 008a                 movea.l    138(a0),a2
[000237b6] 4e92                      jsr        (a2)
glue_parts_1:
[000237b8] 504f                      addq.w     #8,a7
[000237ba] 265f                      movea.l    (a7)+,a3
[000237bc] 245f                      movea.l    (a7)+,a2
[000237be] 4e75                      rts

go_detail:
[000237c0] 48e7 003c                 movem.l    a2-a5,-(a7)
[000237c4] 5d4f                      subq.w     #6,a7
[000237c6] 2848                      movea.l    a0,a4
[000237c8] 45ef 0002                 lea.l      2(a7),a2
[000237cc] 4292                      clr.l      (a2)
[000237ce] 42a7                      clr.l      -(a7)
[000237d0] 42a7                      clr.l      -(a7)
[000237d2] 42a7                      clr.l      -(a7)
[000237d4] 486f 000c                 pea.l      12(a7)
[000237d8] 720a                      moveq.l    #10,d1
[000237da] 4240                      clr.w      d0
[000237dc] 4eb9 0007 14ea            jsr        wind_get
[000237e2] 4fef 0010                 lea.l      16(a7),a7
[000237e6] 3017                      move.w     (a7),d0
[000237e8] 4eb9 0004 e5ea            jsr        Awi_wid
[000237ee] 2648                      movea.l    a0,a3
[000237f0] 200b                      move.l     a3,d0
[000237f2] 6730                      beq.s      go_detail_1
[000237f4] 224a                      movea.l    a2,a1
[000237f6] 2a6b 0004                 movea.l    4(a3),a5
[000237fa] 303c 03f7                 move.w     #$03F7,d0
[000237fe] 4e95                      jsr        (a5)
[00023800] 2012                      move.l     (a2),d0
[00023802] 6720                      beq.s      go_detail_1
[00023804] b7c0                      cmpa.l     d0,a3
[00023806] 661c                      bne.s      go_detail_1
[00023808] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002380e] 2250                      movea.l    (a0),a1
[00023810] 3029 0246                 move.w     582(a1),d0
[00023814] 670e                      beq.s      go_detail_1
[00023816] 2669 0240                 movea.l    576(a1),a3
[0002381a] b7d2                      cmpa.l     (a2),a3
[0002381c] 6606                      bne.s      go_detail_1
[0002381e] 2352 0258                 move.l     (a2),600(a1)
[00023822] 4e94                      jsr        (a4)
go_detail_1:
[00023824] 5c4f                      addq.w     #6,a7
[00023826] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002382a] 4e75                      rts

go_spec_edit:
[0002382c] 41f9 0002 def8            lea.l      edob_specs,a0
[00023832] 6100 ff8c                 bsr.w      go_detail
[00023836] 4e75                      rts

go_flag_edit:
[00023838] 41f9 0002 ddaa            lea.l      edob_aflags,a0
[0002383e] 6100 ff80                 bsr.w      go_detail
[00023842] 4e75                      rts

go_ref_edit:
[00023844] 41f9 0002 dac2            lea.l      edob_refs,a0
[0002384a] 6100 ff74                 bsr        go_detail
[0002384e] 4e75                      rts

go_pos_edit:
[00023850] 41f9 0002 ec5e            lea.l      edob_pos,a0
[00023856] 6100 ff68                 bsr        go_detail
[0002385a] 4e75                      rts

	.data

BUBBLE_01:
[000ab634]                           dc.b 'Dieser Button ruft den Flag-Editor auf.',0
BUBBLE_02:
[000ab65c]                           dc.b 'Dieser Button ruft den Objekt-Editor auf.',0
BUBBLE_03:
[000ab686]                           dc.b 'Dieser Button ruft den Referenz-Editor auf.',0
BUBBLE_04:
[000ab6b2]                           dc.b 'Dieser Button ruft den Positions-Editor auf.',0
STGUIDE_01:
[000ab6df]                           dc.b 'Das Teile-Fenster',0
TEMPLATE_001:
[000ab6f1]                           dc.b 'EDIT:____',0
TEXT_002:
[000ab6fb]                           dc.b $00
TEXT_02:
[000ab6fc]                           dc.b ' Teilefenster ',0
TEXT_024:
[000ab70b]                           dc.b 'abc',0
TEXT_030:
[000ab70f]                           dc.b 'TEXT',0
TEXT_038:
[000ab714]                           dc.b 'STRING',0
TEXT_039:
[000ab71b]                           dc.b 'BUTTON',0
TEXT_040:
[000ab722]                           dc.b 'TITLE',0
TEXT_065:
[000ab728]                           dc.b 'ICON',0
TEXT_258:
[000ab72d]                           dc.b 'USERDEF',0
VALID_001:
[000ab735]                           dc.b 'XXXX',0
DATAS_01:
[000ab73a]                           dc.b $00
[000ab73b]                           dc.b $00
[000ab73c]                           dc.b $00
[000ab73d]                           dc.b $00
[000ab73e]                           dc.w $0208
[000ab740]                           dc.b $00
[000ab741]                           dc.b $01
[000ab742]                           dc.b $00
[000ab743]                           dc.b $00
[000ab744]                           dc.b $00
[000ab745]                           dc.b $03
[000ab746]                           dc.w $8000
[000ab748]                           dc.b $00
[000ab749]                           dc.b $06
[000ab74a]                           dc.w $c000
[000ab74c]                           dc.b $00
[000ab74d]                           dc.b $00
[000ab74e]                           dc.w $0200
[000ab750]                           dc.b $00
[000ab751]                           dc.b $00
[000ab752]                           dc.w $0600
[000ab754]                           dc.w $07ff
[000ab756]                           dc.w $fe00
[000ab758]                           dc.w $07ff
[000ab75a]                           dc.w $fe00
[000ab75c]                           dc.w $07ff
[000ab75e]                           dc.w $fe00
[000ab760]                           dc.w $07ff
[000ab762]                           dc.w $ff00
[000ab764]                           dc.w $07ff
[000ab766]                           dc.w $ff80
[000ab768]                           dc.w $07ff
[000ab76a]                           dc.w $fec0
[000ab76c]                           dc.w $07ff
[000ab76e]                           dc.w $fe60
[000ab770]                           dc.w $07ff
[000ab772]                           dc.w $fe30
[000ab774]                           dc.w $2fff
[000ab776]                           dc.w $fe18
[000ab778]                           dc.w $7fff
[000ab77a]                           dc.w $fe0c
[000ab77c]                           dc.w $c000
[000ab77e]                           dc.w $c906
[000ab780]                           dc.w $6200
[000ab782]                           dc.w $920c
[000ab784]                           dc.w $3101
[000ab786]                           dc.w $f418
[000ab788]                           dc.w $1886
[000ab78a]                           dc.w $ac04
[000ab78c]                           dc.w $0c4d
[000ab78e]                           dc.w $f404
[000ab790]                           dc.w $062a
[000ab792]                           dc.w $3804
[000ab794]                           dc.w $031f
[000ab796]                           dc.w $fc04
[000ab798]                           dc.w $018b
[000ab79a]                           dc.w $e804
[000ab79c]                           dc.b $00
[000ab79d]                           dc.b $c5
[000ab79e]                           dc.w $5404
[000ab7a0]                           dc.b $00
[000ab7a1]                           dc.b $63
[000ab7a2]                           dc.w $a804
[000ab7a4]                           dc.b $00
[000ab7a5]                           dc.b $31
[000ab7a6]                           dc.w $fc04
[000ab7a8]                           dc.b $00
[000ab7a9]                           dc.b $18
[000ab7aa]                           dc.w $0c04
[000ab7ac]                           dc.b $00
[000ab7ad]                           dc.b $0c
[000ab7ae]                           dc.w $1bf8
[000ab7b0]                           dc.b $00
[000ab7b1]                           dc.b $06
[000ab7b2]                           dc.w $3000
[000ab7b4]                           dc.b $00
[000ab7b5]                           dc.b $03
[000ab7b6]                           dc.w $6000
[000ab7b8]                           dc.b $00
[000ab7b9]                           dc.b $01
[000ab7ba]                           dc.w $c000
[000ab7bc]                           dc.b $00
[000ab7bd]                           dc.b $00
[000ab7be]                           dc.w $8000
[000ab7c0]                           dc.b $00
[000ab7c1]                           dc.b $01
[000ab7c2]                           dc.b $00
[000ab7c3]                           dc.b $00
[000ab7c4]                           dc.b $00
[000ab7c5]                           dc.b $03
[000ab7c6]                           dc.w $8000
[000ab7c8]                           dc.b $00
[000ab7c9]                           dc.b $06
[000ab7ca]                           dc.w $c000
[000ab7cc]                           dc.b $00
[000ab7cd]                           dc.b $00
[000ab7ce]                           dc.w $0200
[000ab7d0]                           dc.b $00
[000ab7d1]                           dc.b $00
[000ab7d2]                           dc.w $0600
[000ab7d4]                           dc.w $07ff
[000ab7d6]                           dc.w $fe00
[000ab7d8]                           dc.w $071d
[000ab7da]                           dc.w $de00
[000ab7dc]                           dc.w $06ed
[000ab7de]                           dc.w $be00
[000ab7e0]                           dc.w $06ed
[000ab7e2]                           dc.w $7f00
[000ab7e4]                           dc.w $06ec
[000ab7e6]                           dc.w $7f80
[000ab7e8]                           dc.w $06ed
[000ab7ea]                           dc.w $bec0
[000ab7ec]                           dc.w $071d
[000ab7ee]                           dc.w $de60
[000ab7f0]                           dc.w $07ff
[000ab7f2]                           dc.w $fe30
[000ab7f4]                           dc.w $2fff
[000ab7f6]                           dc.w $fe18
[000ab7f8]                           dc.w $7fff
[000ab7fa]                           dc.w $fe0c
[000ab7fc]                           dc.w $c000
[000ab7fe]                           dc.w $c906
[000ab800]                           dc.w $6200
[000ab802]                           dc.w $920c
[000ab804]                           dc.w $3101
[000ab806]                           dc.w $f418
[000ab808]                           dc.w $1886
[000ab80a]                           dc.w $ac04
[000ab80c]                           dc.w $0c4d
[000ab80e]                           dc.w $f404
[000ab810]                           dc.w $062a
[000ab812]                           dc.w $3804
[000ab814]                           dc.w $031f
[000ab816]                           dc.w $fc04
[000ab818]                           dc.w $018b
[000ab81a]                           dc.w $e804
[000ab81c]                           dc.b $00
[000ab81d]                           dc.b $c5
[000ab81e]                           dc.w $5404
[000ab820]                           dc.b $00
[000ab821]                           dc.b $63
[000ab822]                           dc.w $a804
[000ab824]                           dc.b $00
[000ab825]                           dc.b $31
[000ab826]                           dc.w $fc04
[000ab828]                           dc.b $00
[000ab829]                           dc.b $18
[000ab82a]                           dc.w $0c04
[000ab82c]                           dc.b $00
[000ab82d]                           dc.b $0c
[000ab82e]                           dc.w $1bf8
[000ab830]                           dc.b $00
[000ab831]                           dc.b $06
[000ab832]                           dc.w $3000
[000ab834]                           dc.b $00
[000ab835]                           dc.b $03
[000ab836]                           dc.w $6000
[000ab838]                           dc.b $00
[000ab839]                           dc.b $01
[000ab83a]                           dc.w $c000
[000ab83c]                           dc.b $00
[000ab83d]                           dc.b $00
[000ab83e]                           dc.w $8000
[000ab840]                           dc.b $00
[000ab841]                           dc.b $01
[000ab842]                           dc.b $00
[000ab843]                           dc.b $00
[000ab844]                           dc.b $00
[000ab845]                           dc.b $03
[000ab846]                           dc.w $8000
[000ab848]                           dc.b $00
[000ab849]                           dc.b $06
[000ab84a]                           dc.w $c000
[000ab84c]                           dc.b $00
[000ab84d]                           dc.b $00
[000ab84e]                           dc.w $0200
[000ab850]                           dc.b $00
[000ab851]                           dc.b $00
[000ab852]                           dc.w $0600
[000ab854]                           dc.w $07ff
[000ab856]                           dc.w $fe00
[000ab858]                           dc.w $071d
[000ab85a]                           dc.w $de00
[000ab85c]                           dc.w $06ed
[000ab85e]                           dc.w $be00
[000ab860]                           dc.w $06ed
[000ab862]                           dc.w $7f00
[000ab864]                           dc.w $06ec
[000ab866]                           dc.w $7f80
[000ab868]                           dc.w $06ed
[000ab86a]                           dc.w $bec0
[000ab86c]                           dc.w $071d
[000ab86e]                           dc.w $de60
[000ab870]                           dc.w $07ff
[000ab872]                           dc.w $fe30
[000ab874]                           dc.w $2fff
[000ab876]                           dc.w $fe18
[000ab878]                           dc.w $7fff
[000ab87a]                           dc.w $fe0c
[000ab87c]                           dc.w $c000
[000ab87e]                           dc.w $c906
[000ab880]                           dc.w $6200
[000ab882]                           dc.w $920c
[000ab884]                           dc.w $3101
[000ab886]                           dc.w $f418
[000ab888]                           dc.w $1886
[000ab88a]                           dc.w $0ffc
[000ab88c]                           dc.w $0c4d
[000ab88e]                           dc.w $e7fc
[000ab890]                           dc.w $062a
[000ab892]                           dc.w $33fc
[000ab894]                           dc.w $031f
[000ab896]                           dc.w $fbfc
[000ab898]                           dc.w $0189
[000ab89a]                           dc.w $e3fc
[000ab89c]                           dc.b $00
[000ab89d]                           dc.b $c4
[000ab89e]                           dc.w $03fc
[000ab8a0]                           dc.b $00
[000ab8a1]                           dc.b $63
[000ab8a2]                           dc.w $03fc
[000ab8a4]                           dc.b $00
[000ab8a5]                           dc.b $31
[000ab8a6]                           dc.w $fffc
[000ab8a8]                           dc.b $00
[000ab8a9]                           dc.b $18
[000ab8aa]                           dc.w $0ffc
[000ab8ac]                           dc.b $00
[000ab8ad]                           dc.b $0c
[000ab8ae]                           dc.w $1bf8
[000ab8b0]                           dc.b $00
[000ab8b1]                           dc.b $06
[000ab8b2]                           dc.w $3000
[000ab8b4]                           dc.b $00
[000ab8b5]                           dc.b $03
[000ab8b6]                           dc.w $6000
[000ab8b8]                           dc.b $00
[000ab8b9]                           dc.b $01
[000ab8ba]                           dc.w $c000
[000ab8bc]                           dc.b $00
[000ab8bd]                           dc.b $00
[000ab8be]                           dc.w $8000
[000ab8c0]                           dc.b $00
[000ab8c1]                           dc.b $00
[000ab8c2]                           dc.b $00
[000ab8c3]                           dc.b $00
[000ab8c4]                           dc.b $00
[000ab8c5]                           dc.b $01
[000ab8c6]                           dc.b $00
[000ab8c7]                           dc.b $00
[000ab8c8]                           dc.b $00
[000ab8c9]                           dc.b $02
[000ab8ca]                           dc.w $8000
[000ab8cc]                           dc.w $1fff
[000ab8ce]                           dc.w $fe00
[000ab8d0]                           dc.w $1fff
[000ab8d2]                           dc.w $fe00
[000ab8d4]                           dc.w $1800
[000ab8d6]                           dc.w $0600
[000ab8d8]                           dc.w $1800
[000ab8da]                           dc.w $0600
[000ab8dc]                           dc.w $1800
[000ab8de]                           dc.w $0600
[000ab8e0]                           dc.w $1800
[000ab8e2]                           dc.w $0600
[000ab8e4]                           dc.w $1800
[000ab8e6]                           dc.w $0700
[000ab8e8]                           dc.w $1800
[000ab8ea]                           dc.w $0680
[000ab8ec]                           dc.w $1800
[000ab8ee]                           dc.w $0640
[000ab8f0]                           dc.w $1800
[000ab8f2]                           dc.w $0620
[000ab8f4]                           dc.w $1fff
[000ab8f6]                           dc.w $fe10
[000ab8f8]                           dc.w $3fff
[000ab8fa]                           dc.w $fe08
[000ab8fc]                           dc.w $4000
[000ab8fe]                           dc.w $c904
[000ab900]                           dc.w $2200
[000ab902]                           dc.w $9208
[000ab904]                           dc.w $1101
[000ab906]                           dc.w $f410
[000ab908]                           dc.w $0886
[000ab90a]                           dc.w $0c00
[000ab90c]                           dc.w $044d
[000ab90e]                           dc.w $e400
[000ab910]                           dc.w $022a
[000ab912]                           dc.w $3000
[000ab914]                           dc.w $011f
[000ab916]                           dc.w $f800
[000ab918]                           dc.b $00
[000ab919]                           dc.b $89
[000ab91a]                           dc.w $e000
[000ab91c]                           dc.b $00
[000ab91d]                           dc.b $44
[000ab91e]                           dc.b $00
[000ab91f]                           dc.b $00
[000ab920]                           dc.b $00
[000ab921]                           dc.b $23
[000ab922]                           dc.b $00
[000ab923]                           dc.b $00
[000ab924]                           dc.b $00
[000ab925]                           dc.b $11
[000ab926]                           dc.w $fc00
[000ab928]                           dc.b $00
[000ab929]                           dc.b $08
[000ab92a]                           dc.w $0800
[000ab92c]                           dc.b $00
[000ab92d]                           dc.b $04
[000ab92e]                           dc.w $1000
[000ab930]                           dc.b $00
[000ab931]                           dc.b $02
[000ab932]                           dc.w $2000
[000ab934]                           dc.b $00
[000ab935]                           dc.b $01
[000ab936]                           dc.w $4000
[000ab938]                           dc.b $00
[000ab939]                           dc.b $00
[000ab93a]                           dc.w $8000
[000ab93c]                           dc.b $00
[000ab93d]                           dc.b $00
[000ab93e]                           dc.b $00
[000ab93f]                           dc.b $00
DATAS_02:
[000ab940]                           dc.b $00
[000ab941]                           dc.b $01
[000ab942]                           dc.b $00
[000ab943]                           dc.b $00
[000ab944]                           dc.b $00
[000ab945]                           dc.b $03
[000ab946]                           dc.w $8000
[000ab948]                           dc.b $00
[000ab949]                           dc.b $07
[000ab94a]                           dc.w $c000
[000ab94c]                           dc.w $1fff
[000ab94e]                           dc.w $fe00
[000ab950]                           dc.w $1fff
[000ab952]                           dc.w $fe00
[000ab954]                           dc.w $1fff
[000ab956]                           dc.w $fe00
[000ab958]                           dc.w $1fff
[000ab95a]                           dc.w $fe00
[000ab95c]                           dc.w $1fff
[000ab95e]                           dc.w $fe00
[000ab960]                           dc.w $1fff
[000ab962]                           dc.w $ff00
[000ab964]                           dc.w $1fff
[000ab966]                           dc.w $ff80
[000ab968]                           dc.w $1fff
[000ab96a]                           dc.w $ffc0
[000ab96c]                           dc.w $1fff
[000ab96e]                           dc.w $ffe0
[000ab970]                           dc.w $1fff
[000ab972]                           dc.w $fff0
[000ab974]                           dc.w $3fff
[000ab976]                           dc.w $fff8
[000ab978]                           dc.w $7fff
[000ab97a]                           dc.w $fffc
[000ab97c]                           dc.w $ffff
[000ab97e]                           dc.w $fffe
[000ab980]                           dc.w $7fff
[000ab982]                           dc.w $fffc
[000ab984]                           dc.w $3fff
[000ab986]                           dc.w $fff8
[000ab988]                           dc.w $1fff
[000ab98a]                           dc.w $fffc
[000ab98c]                           dc.w $0fff
[000ab98e]                           dc.w $fffc
[000ab990]                           dc.w $07ff
[000ab992]                           dc.w $fffc
[000ab994]                           dc.w $03ff
[000ab996]                           dc.w $fffc
[000ab998]                           dc.w $01ff
[000ab99a]                           dc.w $fffc
[000ab99c]                           dc.b $00
[000ab99d]                           dc.b $ff
[000ab99e]                           dc.w $fffc
[000ab9a0]                           dc.b $00
[000ab9a1]                           dc.b $7f
[000ab9a2]                           dc.w $fffc
[000ab9a4]                           dc.b $00
[000ab9a5]                           dc.b $3f
[000ab9a6]                           dc.w $fffc
[000ab9a8]                           dc.b $00
[000ab9a9]                           dc.b $1f
[000ab9aa]                           dc.w $fffc
[000ab9ac]                           dc.b $00
[000ab9ad]                           dc.b $0f
[000ab9ae]                           dc.w $fbf8
[000ab9b0]                           dc.b $00
[000ab9b1]                           dc.b $07
[000ab9b2]                           dc.w $f000
[000ab9b4]                           dc.b $00
[000ab9b5]                           dc.b $03
[000ab9b6]                           dc.w $e000
[000ab9b8]                           dc.b $00
[000ab9b9]                           dc.b $01
[000ab9ba]                           dc.w $c000
[000ab9bc]                           dc.b $00
[000ab9bd]                           dc.b $00
[000ab9be]                           dc.w $8000
DATAS_03:
[000ab9c0]                           dc.b $00
[000ab9c1]                           dc.b $00
[000ab9c2]                           dc.b $00
[000ab9c3]                           dc.b $00
[000ab9c4]                           dc.w $0208
[000ab9c6]                           dc.w $ffff
[000ab9c8]                           dc.w $ffff
[000ab9ca]                           dc.w $ffff
[000ab9cc]                           dc.w $ffff
[000ab9ce]                           dc.w $ffff
[000ab9d0]                           dc.w $ffff
[000ab9d2]                           dc.w $ffff
[000ab9d4]                           dc.w $ffff
[000ab9d6]                           dc.w $ffff
[000ab9d8]                           dc.w $ffff
[000ab9da]                           dc.w $ffff
[000ab9dc]                           dc.w $ffff
[000ab9de]                           dc.w $ffff
[000ab9e0]                           dc.w $ffff
[000ab9e2]                           dc.w $fc00
[000ab9e4]                           dc.b $00
[000ab9e5]                           dc.b $7f
[000ab9e6]                           dc.w $fc00
[000ab9e8]                           dc.b $00
[000ab9e9]                           dc.b $ff
[000ab9ea]                           dc.w $fcff
[000ab9ec]                           dc.w $ffff
[000ab9ee]                           dc.w $fcff
[000ab9f0]                           dc.w $ffff
[000ab9f2]                           dc.w $fcff
[000ab9f4]                           dc.w $ffff
[000ab9f6]                           dc.w $fcff
[000ab9f8]                           dc.w $ffff
[000ab9fa]                           dc.w $fcff
[000ab9fc]                           dc.w $ffff
[000ab9fe]                           dc.w $fcff
[000aba00]                           dc.w $ffff
[000aba02]                           dc.w $fcff
[000aba04]                           dc.w $ffff
[000aba06]                           dc.w $fcff
[000aba08]                           dc.w $ffff
[000aba0a]                           dc.w $fdff
[000aba0c]                           dc.w $ffff
[000aba0e]                           dc.w $ffff
[000aba10]                           dc.w $ffff
[000aba12]                           dc.w $ffff
[000aba14]                           dc.w $ffff
[000aba16]                           dc.w $ffff
[000aba18]                           dc.w $ffff
[000aba1a]                           dc.w $ffff
[000aba1c]                           dc.w $ffff
[000aba1e]                           dc.w $ffff
[000aba20]                           dc.w $ffff
[000aba22]                           dc.w $ffff
[000aba24]                           dc.w $ffff
[000aba26]                           dc.w $ffff
[000aba28]                           dc.w $ffff
[000aba2a]                           dc.w $faaa
[000aba2c]                           dc.w $aaaf
[000aba2e]                           dc.w $f888
[000aba30]                           dc.w $888f
[000aba32]                           dc.w $f800
[000aba34]                           dc.b $00
[000aba35]                           dc.b $0f
[000aba36]                           dc.w $ffff
[000aba38]                           dc.w $ffff
[000aba3a]                           dc.w $ffff
[000aba3c]                           dc.w $ffff
[000aba3e]                           dc.w $ffff
[000aba40]                           dc.w $ffff
[000aba42]                           dc.w $ffff
[000aba44]                           dc.w $ffff
[000aba46]                           dc.w $ffff
[000aba48]                           dc.w $ffff
[000aba4a]                           dc.w $ffff
[000aba4c]                           dc.w $ffff
[000aba4e]                           dc.w $ffff
[000aba50]                           dc.w $ffff
[000aba52]                           dc.w $ffff
[000aba54]                           dc.w $ffff
[000aba56]                           dc.w $ffff
[000aba58]                           dc.w $ffff
[000aba5a]                           dc.w $ffff
[000aba5c]                           dc.w $ffff
[000aba5e]                           dc.w $ffff
[000aba60]                           dc.w $ffff
[000aba62]                           dc.w $fc00
[000aba64]                           dc.b $00
[000aba65]                           dc.b $7f
[000aba66]                           dc.w $fc00
[000aba68]                           dc.b $00
[000aba69]                           dc.b $ff
[000aba6a]                           dc.w $fcff
[000aba6c]                           dc.w $ffff
[000aba6e]                           dc.w $fce3
[000aba70]                           dc.w $bbff
[000aba72]                           dc.w $fcdd
[000aba74]                           dc.w $b7ff
[000aba76]                           dc.w $fcdd
[000aba78]                           dc.w $afff
[000aba7a]                           dc.w $fcdd
[000aba7c]                           dc.w $8fff
[000aba7e]                           dc.w $fcdd
[000aba80]                           dc.w $b7ff
[000aba82]                           dc.w $fce3
[000aba84]                           dc.w $bbff
[000aba86]                           dc.w $fcff
[000aba88]                           dc.w $ffff
[000aba8a]                           dc.w $fdff
[000aba8c]                           dc.w $ffff
[000aba8e]                           dc.w $ffff
[000aba90]                           dc.w $ffff
[000aba92]                           dc.w $ffff
[000aba94]                           dc.w $ffff
[000aba96]                           dc.w $ffff
[000aba98]                           dc.w $ffff
[000aba9a]                           dc.w $ffff
[000aba9c]                           dc.w $ffff
[000aba9e]                           dc.w $ffff
[000abaa0]                           dc.w $ffff
[000abaa2]                           dc.w $ffff
[000abaa4]                           dc.w $ffff
[000abaa6]                           dc.w $ffff
[000abaa8]                           dc.w $ffff
[000abaaa]                           dc.w $faaa
[000abaac]                           dc.w $aaaf
[000abaae]                           dc.w $f888
[000abab0]                           dc.w $888f
[000abab2]                           dc.w $f800
[000abab4]                           dc.b $00
[000abab5]                           dc.b $0f
[000abab6]                           dc.w $ffff
[000abab8]                           dc.w $ffff
[000ababa]                           dc.w $ffff
[000ababc]                           dc.w $ffff
[000ababe]                           dc.w $ffff
[000abac0]                           dc.w $ffff
[000abac2]                           dc.w $ffff
[000abac4]                           dc.w $ffff
[000abac6]                           dc.w $ffff
[000abac8]                           dc.w $ffff
[000abaca]                           dc.w $ffff
[000abacc]                           dc.w $ffff
[000abace]                           dc.w $ffff
[000abad0]                           dc.w $ffff
[000abad2]                           dc.w $ffff
[000abad4]                           dc.w $ffff
[000abad6]                           dc.w $ffff
[000abad8]                           dc.w $ffff
[000abada]                           dc.w $ffff
[000abadc]                           dc.w $ffff
[000abade]                           dc.w $ffff
[000abae0]                           dc.w $ffff
[000abae2]                           dc.w $fc00
[000abae4]                           dc.b $00
[000abae5]                           dc.b $7f
[000abae6]                           dc.w $fc00
[000abae8]                           dc.b $00
[000abae9]                           dc.b $ff
[000abaea]                           dc.w $fcff
[000abaec]                           dc.w $ffff
[000abaee]                           dc.w $fce3
[000abaf0]                           dc.w $bbff
[000abaf2]                           dc.w $fcdd
[000abaf4]                           dc.w $b7ff
[000abaf6]                           dc.w $fcdd
[000abaf8]                           dc.w $afff
[000abafa]                           dc.w $fcdd
[000abafc]                           dc.w $8fff
[000abafe]                           dc.w $fcdd
[000abb00]                           dc.w $b7ff
[000abb02]                           dc.w $fce3
[000abb04]                           dc.w $bbff
[000abb06]                           dc.w $fcff
[000abb08]                           dc.w $ffff
[000abb0a]                           dc.w $fdff
[000abb0c]                           dc.w $ffff
[000abb0e]                           dc.w $ffff
[000abb10]                           dc.w $ffff
[000abb12]                           dc.w $ffff
[000abb14]                           dc.w $ffff
[000abb16]                           dc.w $ffff
[000abb18]                           dc.w $ffff
[000abb1a]                           dc.w $ffff
[000abb1c]                           dc.w $ffff
[000abb1e]                           dc.w $ffff
[000abb20]                           dc.w $ffff
[000abb22]                           dc.w $ffff
[000abb24]                           dc.w $ffff
[000abb26]                           dc.w $ffff
[000abb28]                           dc.w $ffff
[000abb2a]                           dc.w $faaa
[000abb2c]                           dc.w $aaaf
[000abb2e]                           dc.w $f888
[000abb30]                           dc.w $888f
[000abb32]                           dc.w $f800
[000abb34]                           dc.b $00
[000abb35]                           dc.b $0f
[000abb36]                           dc.w $ffff
[000abb38]                           dc.w $ffff
[000abb3a]                           dc.w $ffff
[000abb3c]                           dc.w $ffff
[000abb3e]                           dc.w $ffff
[000abb40]                           dc.w $ffff
[000abb42]                           dc.w $ffff
[000abb44]                           dc.w $ffff
[000abb46]                           dc.b $00
[000abb47]                           dc.b $00
[000abb48]                           dc.b $00
[000abb49]                           dc.b $00
[000abb4a]                           dc.b $00
[000abb4b]                           dc.b $00
[000abb4c]                           dc.b $00
[000abb4d]                           dc.b $00
[000abb4e]                           dc.b $00
[000abb4f]                           dc.b $00
[000abb50]                           dc.b $00
[000abb51]                           dc.b $00
[000abb52]                           dc.w $0800
[000abb54]                           dc.b $00
[000abb55]                           dc.b $00
[000abb56]                           dc.w $1c00
[000abb58]                           dc.b $00
[000abb59]                           dc.b $00
[000abb5a]                           dc.w $3e00
[000abb5c]                           dc.b $00
[000abb5d]                           dc.b $00
[000abb5e]                           dc.w $0800
[000abb60]                           dc.b $00
[000abb61]                           dc.b $00
[000abb62]                           dc.w $0bff
[000abb64]                           dc.w $ffc0
[000abb66]                           dc.w $0bff
[000abb68]                           dc.w $ffc0
[000abb6a]                           dc.w $0b00
[000abb6c]                           dc.b $00
[000abb6d]                           dc.b $c0
[000abb6e]                           dc.w $0b00
[000abb70]                           dc.b $00
[000abb71]                           dc.b $c0
[000abb72]                           dc.w $0b00
[000abb74]                           dc.b $00
[000abb75]                           dc.b $c0
[000abb76]                           dc.w $0b00
[000abb78]                           dc.b $00
[000abb79]                           dc.b $c0
[000abb7a]                           dc.w $0b00
[000abb7c]                           dc.b $00
[000abb7d]                           dc.b $c0
[000abb7e]                           dc.w $0b00
[000abb80]                           dc.b $00
[000abb81]                           dc.b $c0
[000abb82]                           dc.w $0b00
[000abb84]                           dc.b $00
[000abb85]                           dc.b $c0
[000abb86]                           dc.w $0b00
[000abb88]                           dc.b $00
[000abb89]                           dc.b $c0
[000abb8a]                           dc.w $0bff
[000abb8c]                           dc.w $ffc0
[000abb8e]                           dc.w $0bff
[000abb90]                           dc.w $ffd0
[000abb92]                           dc.w $0800
[000abb94]                           dc.b $00
[000abb95]                           dc.b $18
[000abb96]                           dc.w $3fff
[000abb98]                           dc.w $fffc
[000abb9a]                           dc.w $0800
[000abb9c]                           dc.b $00
[000abb9d]                           dc.b $18
[000abb9e]                           dc.w $0800
[000abba0]                           dc.b $00
[000abba1]                           dc.b $10
[000abba2]                           dc.b $00
[000abba3]                           dc.b $00
[000abba4]                           dc.b $00
[000abba5]                           dc.b $00
[000abba6]                           dc.w $0fff
[000abba8]                           dc.w $fff8
[000abbaa]                           dc.w $0aaa
[000abbac]                           dc.w $aaa8
[000abbae]                           dc.w $0888
[000abbb0]                           dc.w $8888
[000abbb2]                           dc.w $0800
[000abbb4]                           dc.b $00
[000abbb5]                           dc.b $08
[000abbb6]                           dc.w $0fff
[000abbb8]                           dc.w $fff8
[000abbba]                           dc.b $00
[000abbbb]                           dc.b $00
[000abbbc]                           dc.b $00
[000abbbd]                           dc.b $00
[000abbbe]                           dc.b $00
[000abbbf]                           dc.b $00
[000abbc0]                           dc.b $00
[000abbc1]                           dc.b $00
[000abbc2]                           dc.b $00
[000abbc3]                           dc.b $00
[000abbc4]                           dc.b $00
[000abbc5]                           dc.b $00
DATAS_04:
[000abbc6]                           dc.w $ffff
[000abbc8]                           dc.w $ffff
[000abbca]                           dc.w $ffff
[000abbcc]                           dc.w $ffff
[000abbce]                           dc.w $ffff
[000abbd0]                           dc.w $ffff
[000abbd2]                           dc.w $ffff
[000abbd4]                           dc.w $ffff
[000abbd6]                           dc.w $ffff
[000abbd8]                           dc.w $ffff
[000abbda]                           dc.w $ffff
[000abbdc]                           dc.w $ffff
[000abbde]                           dc.w $ffff
[000abbe0]                           dc.w $ffff
[000abbe2]                           dc.w $ffff
[000abbe4]                           dc.w $ffff
[000abbe6]                           dc.w $ffff
[000abbe8]                           dc.w $ffff
[000abbea]                           dc.w $ffff
[000abbec]                           dc.w $ffff
[000abbee]                           dc.w $ffff
[000abbf0]                           dc.w $ffff
[000abbf2]                           dc.w $ffff
[000abbf4]                           dc.w $ffff
[000abbf6]                           dc.w $ffff
[000abbf8]                           dc.w $ffff
[000abbfa]                           dc.w $ffff
[000abbfc]                           dc.w $ffff
[000abbfe]                           dc.w $ffff
[000abc00]                           dc.w $ffff
[000abc02]                           dc.w $ffff
[000abc04]                           dc.w $ffff
[000abc06]                           dc.w $ffff
[000abc08]                           dc.w $ffff
[000abc0a]                           dc.w $ffff
[000abc0c]                           dc.w $ffff
[000abc0e]                           dc.w $ffff
[000abc10]                           dc.w $ffff
[000abc12]                           dc.w $ffff
[000abc14]                           dc.w $ffff
[000abc16]                           dc.w $ffff
[000abc18]                           dc.w $ffff
[000abc1a]                           dc.w $ffff
[000abc1c]                           dc.w $ffff
[000abc1e]                           dc.w $ffff
[000abc20]                           dc.w $ffff
[000abc22]                           dc.w $ffff
[000abc24]                           dc.w $ffff
[000abc26]                           dc.w $ffff
[000abc28]                           dc.w $ffff
[000abc2a]                           dc.w $ffff
[000abc2c]                           dc.w $ffff
[000abc2e]                           dc.w $ffff
[000abc30]                           dc.w $ffff
[000abc32]                           dc.w $ffff
[000abc34]                           dc.w $ffff
[000abc36]                           dc.w $ffff
[000abc38]                           dc.w $ffff
[000abc3a]                           dc.w $ffff
[000abc3c]                           dc.w $ffff
[000abc3e]                           dc.w $ffff
[000abc40]                           dc.w $ffff
[000abc42]                           dc.w $ffff
[000abc44]                           dc.w $ffff
DATAS_05:
[000abc46]                           dc.b $00
[000abc47]                           dc.b $00
[000abc48]                           dc.b $00
[000abc49]                           dc.b $00
[000abc4a]                           dc.w $0208
[000abc4c]                           dc.w $ffff
[000abc4e]                           dc.w $ffff
[000abc50]                           dc.w $ffff
[000abc52]                           dc.w $ffff
[000abc54]                           dc.w $ffff
[000abc56]                           dc.w $ffff
[000abc58]                           dc.w $e000
[000abc5a]                           dc.w $03ff
[000abc5c]                           dc.w $e000
[000abc5e]                           dc.w $077f
[000abc60]                           dc.w $e7ff
[000abc62]                           dc.w $ffef
[000abc64]                           dc.w $e7ff
[000abc66]                           dc.w $ff3f
[000abc68]                           dc.w $e7ff
[000abc6a]                           dc.w $fef7
[000abc6c]                           dc.w $e7ff
[000abc6e]                           dc.w $fcff
[000abc70]                           dc.w $e7ff
[000abc72]                           dc.w $f87f
[000abc74]                           dc.w $e7ff
[000abc76]                           dc.w $f0ef
[000abc78]                           dc.w $e7ff
[000abc7a]                           dc.w $e1ff
[000abc7c]                           dc.w $e7ff
[000abc7e]                           dc.w $d3ff
[000abc80]                           dc.w $efff
[000abc82]                           dc.w $bfff
[000abc84]                           dc.w $ffff
[000abc86]                           dc.w $3fff
[000abc88]                           dc.w $fffe
[000abc8a]                           dc.w $1fff
[000abc8c]                           dc.w $fffc
[000abc8e]                           dc.w $3fff
[000abc90]                           dc.w $fff8
[000abc92]                           dc.w $7fff
[000abc94]                           dc.w $fff4
[000abc96]                           dc.w $ffff
[000abc98]                           dc.w $ffef
[000abc9a]                           dc.w $ffff
[000abc9c]                           dc.w $ffcf
[000abc9e]                           dc.w $ffff
[000abca0]                           dc.w $ff87
[000abca2]                           dc.w $ffff
[000abca4]                           dc.w $fb0f
[000abca6]                           dc.w $ffff
[000abca8]                           dc.w $fe1f
[000abcaa]                           dc.w $ffff
[000abcac]                           dc.w $fd3f
[000abcae]                           dc.w $ffff
[000abcb0]                           dc.w $ebff
[000abcb2]                           dc.w $ffff
[000abcb4]                           dc.w $fbef
[000abcb6]                           dc.w $ffff
[000abcb8]                           dc.w $ffff
[000abcba]                           dc.w $ffff
[000abcbc]                           dc.w $f77f
[000abcbe]                           dc.w $ffff
[000abcc0]                           dc.w $ffff
[000abcc2]                           dc.w $ffff
[000abcc4]                           dc.w $ffff
[000abcc6]                           dc.w $ffff
[000abcc8]                           dc.w $ffff
[000abcca]                           dc.w $ffff
[000abccc]                           dc.w $ffff
[000abcce]                           dc.w $ffff
[000abcd0]                           dc.w $ffff
[000abcd2]                           dc.w $ffff
[000abcd4]                           dc.w $ffff
[000abcd6]                           dc.w $ffff
[000abcd8]                           dc.w $e000
[000abcda]                           dc.w $03ff
[000abcdc]                           dc.w $e000
[000abcde]                           dc.w $077f
[000abce0]                           dc.w $e7ff
[000abce2]                           dc.w $ffef
[000abce4]                           dc.w $e71d
[000abce6]                           dc.w $df3f
[000abce8]                           dc.w $e6ed
[000abcea]                           dc.w $be37
[000abcec]                           dc.w $e6ed
[000abcee]                           dc.w $7d3f
[000abcf0]                           dc.w $e6ec
[000abcf2]                           dc.w $7bff
[000abcf4]                           dc.w $e6ed
[000abcf6]                           dc.w $b3ef
[000abcf8]                           dc.w $e71d
[000abcfa]                           dc.w $e1ff
[000abcfc]                           dc.w $e7ff
[000abcfe]                           dc.w $c3ff
[000abd00]                           dc.w $efff
[000abd02]                           dc.w $87ff
[000abd04]                           dc.w $ffff
[000abd06]                           dc.w $4fff
[000abd08]                           dc.w $fffe
[000abd0a]                           dc.w $ffff
[000abd0c]                           dc.w $fffc
[000abd0e]                           dc.w $ffff
[000abd10]                           dc.w $fff8
[000abd12]                           dc.w $7fff
[000abd14]                           dc.w $fff0
[000abd16]                           dc.w $ffff
[000abd18]                           dc.w $ffe1
[000abd1a]                           dc.w $ffff
[000abd1c]                           dc.w $ffd3
[000abd1e]                           dc.w $ffff
[000abd20]                           dc.w $ffbf
[000abd22]                           dc.w $ffff
[000abd24]                           dc.w $fb3f
[000abd26]                           dc.w $ffff
[000abd28]                           dc.w $fe1f
[000abd2a]                           dc.w $ffff
[000abd2c]                           dc.w $fc3f
[000abd2e]                           dc.w $ffff
[000abd30]                           dc.w $e87f
[000abd32]                           dc.w $ffff
[000abd34]                           dc.w $f8ef
[000abd36]                           dc.w $ffff
[000abd38]                           dc.w $ffff
[000abd3a]                           dc.w $ffff
[000abd3c]                           dc.w $f77f
[000abd3e]                           dc.w $ffff
[000abd40]                           dc.w $ffff
[000abd42]                           dc.w $ffff
[000abd44]                           dc.w $ffff
[000abd46]                           dc.w $ffff
[000abd48]                           dc.w $ffff
[000abd4a]                           dc.w $ffff
[000abd4c]                           dc.w $ffff
[000abd4e]                           dc.w $ffff
[000abd50]                           dc.w $ffff
[000abd52]                           dc.w $ffff
[000abd54]                           dc.w $ffff
[000abd56]                           dc.w $ffff
[000abd58]                           dc.w $e000
[000abd5a]                           dc.w $037f
[000abd5c]                           dc.w $e000
[000abd5e]                           dc.w $0777
[000abd60]                           dc.w $e7ff
[000abd62]                           dc.w $ffef
[000abd64]                           dc.w $e71d
[000abd66]                           dc.w $df3f
[000abd68]                           dc.w $e6ed
[000abd6a]                           dc.w $be33
[000abd6c]                           dc.w $e6ed
[000abd6e]                           dc.w $7c3f
[000abd70]                           dc.w $e6ec
[000abd72]                           dc.w $787f
[000abd74]                           dc.w $e6ed
[000abd76]                           dc.w $b4ef
[000abd78]                           dc.w $e71d
[000abd7a]                           dc.w $eff7
[000abd7c]                           dc.w $e7ff
[000abd7e]                           dc.w $cfff
[000abd80]                           dc.w $efff
[000abd82]                           dc.w $87ff
[000abd84]                           dc.w $ffff
[000abd86]                           dc.w $0fff
[000abd88]                           dc.w $fffe
[000abd8a]                           dc.w $1fff
[000abd8c]                           dc.w $fffd
[000abd8e]                           dc.w $3fff
[000abd90]                           dc.w $fffb
[000abd92]                           dc.w $ffff
[000abd94]                           dc.w $fff3
[000abd96]                           dc.w $ffff
[000abd98]                           dc.w $ffe1
[000abd9a]                           dc.w $ffff
[000abd9c]                           dc.w $ffc3
[000abd9e]                           dc.w $ffff
[000abda0]                           dc.w $f787
[000abda2]                           dc.w $ffff
[000abda4]                           dc.w $fb4f
[000abda6]                           dc.w $ffff
[000abda8]                           dc.w $feff
[000abdaa]                           dc.w $ffff
[000abdac]                           dc.w $fcff
[000abdae]                           dc.w $ffff
[000abdb0]                           dc.w $c87f
[000abdb2]                           dc.w $ffff
[000abdb4]                           dc.w $f8ef
[000abdb6]                           dc.w $ffff
[000abdb8]                           dc.w $fff7
[000abdba]                           dc.w $ffff
[000abdbc]                           dc.w $f77f
[000abdbe]                           dc.w $ffff
[000abdc0]                           dc.w $ef7f
[000abdc2]                           dc.w $ffff
[000abdc4]                           dc.w $ffff
[000abdc6]                           dc.w $ffff
[000abdc8]                           dc.w $ffff
[000abdca]                           dc.w $ffff
[000abdcc]                           dc.b $00
[000abdcd]                           dc.b $00
[000abdce]                           dc.b $00
[000abdcf]                           dc.b $00
[000abdd0]                           dc.b $00
[000abdd1]                           dc.b $00
[000abdd2]                           dc.b $00
[000abdd3]                           dc.b $00
[000abdd4]                           dc.b $00
[000abdd5]                           dc.b $00
[000abdd6]                           dc.b $00
[000abdd7]                           dc.b $00
[000abdd8]                           dc.w $1fff
[000abdda]                           dc.w $fe00
[000abddc]                           dc.w $1fff
[000abdde]                           dc.w $fe00
[000abde0]                           dc.w $1800
[000abde2]                           dc.w $0600
[000abde4]                           dc.w $1800
[000abde6]                           dc.w $06c0
[000abde8]                           dc.w $1800
[000abdea]                           dc.w $0520
[000abdec]                           dc.w $1800
[000abdee]                           dc.w $0260
[000abdf0]                           dc.w $1800
[000abdf2]                           dc.w $04c0
[000abdf4]                           dc.w $1800
[000abdf6]                           dc.w $0980
[000abdf8]                           dc.w $1800
[000abdfa]                           dc.w $1300
[000abdfc]                           dc.w $1800
[000abdfe]                           dc.w $2600
[000abe00]                           dc.w $1fff
[000abe02]                           dc.w $4c00
[000abe04]                           dc.w $1ffe
[000abe06]                           dc.w $9800
[000abe08]                           dc.b $00
[000abe09]                           dc.b $01
[000abe0a]                           dc.w $3000
[000abe0c]                           dc.b $00
[000abe0d]                           dc.b $02
[000abe0e]                           dc.w $6000
[000abe10]                           dc.b $00
[000abe11]                           dc.b $04
[000abe12]                           dc.w $c000
[000abe14]                           dc.b $00
[000abe15]                           dc.b $09
[000abe16]                           dc.w $8000
[000abe18]                           dc.b $00
[000abe19]                           dc.b $13
[000abe1a]                           dc.b $00
[000abe1b]                           dc.b $00
[000abe1c]                           dc.b $00
[000abe1d]                           dc.b $26
[000abe1e]                           dc.b $00
[000abe1f]                           dc.b $00
[000abe20]                           dc.b $00
[000abe21]                           dc.b $4c
[000abe22]                           dc.b $00
[000abe23]                           dc.b $00
[000abe24]                           dc.b $00
[000abe25]                           dc.b $98
[000abe26]                           dc.b $00
[000abe27]                           dc.b $00
[000abe28]                           dc.w $0130
[000abe2a]                           dc.b $00
[000abe2b]                           dc.b $00
[000abe2c]                           dc.w $0260
[000abe2e]                           dc.b $00
[000abe2f]                           dc.b $00
[000abe30]                           dc.w $04c0
[000abe32]                           dc.b $00
[000abe33]                           dc.b $00
[000abe34]                           dc.w $0580
[000abe36]                           dc.b $00
[000abe37]                           dc.b $00
[000abe38]                           dc.w $0300
[000abe3a]                           dc.b $00
[000abe3b]                           dc.b $00
[000abe3c]                           dc.b $00
[000abe3d]                           dc.b $00
[000abe3e]                           dc.b $00
[000abe3f]                           dc.b $00
[000abe40]                           dc.b $00
[000abe41]                           dc.b $00
[000abe42]                           dc.b $00
[000abe43]                           dc.b $00
[000abe44]                           dc.b $00
[000abe45]                           dc.b $00
[000abe46]                           dc.b $00
[000abe47]                           dc.b $00
[000abe48]                           dc.b $00
[000abe49]                           dc.b $00
[000abe4a]                           dc.b $00
[000abe4b]                           dc.b $00
DATAS_06:
[000abe4c]                           dc.w $ffff
[000abe4e]                           dc.w $ffff
[000abe50]                           dc.w $ffff
[000abe52]                           dc.w $ffff
[000abe54]                           dc.w $ffff
[000abe56]                           dc.w $ffff
[000abe58]                           dc.w $ffff
[000abe5a]                           dc.w $ffff
[000abe5c]                           dc.w $ffff
[000abe5e]                           dc.w $ffff
[000abe60]                           dc.w $ffff
[000abe62]                           dc.w $ffff
[000abe64]                           dc.w $ffff
[000abe66]                           dc.w $ffff
[000abe68]                           dc.w $ffff
[000abe6a]                           dc.w $ffff
[000abe6c]                           dc.w $ffff
[000abe6e]                           dc.w $ffff
[000abe70]                           dc.w $ffff
[000abe72]                           dc.w $ffff
[000abe74]                           dc.w $ffff
[000abe76]                           dc.w $ffff
[000abe78]                           dc.w $ffff
[000abe7a]                           dc.w $ffff
[000abe7c]                           dc.w $ffff
[000abe7e]                           dc.w $ffff
[000abe80]                           dc.w $ffff
[000abe82]                           dc.w $ffff
[000abe84]                           dc.w $ffff
[000abe86]                           dc.w $ffff
[000abe88]                           dc.w $ffff
[000abe8a]                           dc.w $ffff
[000abe8c]                           dc.w $ffff
[000abe8e]                           dc.w $ffff
[000abe90]                           dc.w $ffff
[000abe92]                           dc.w $ffff
[000abe94]                           dc.w $ffff
[000abe96]                           dc.w $ffff
[000abe98]                           dc.w $ffff
[000abe9a]                           dc.w $ffff
[000abe9c]                           dc.w $ffff
[000abe9e]                           dc.w $ffff
[000abea0]                           dc.w $ffff
[000abea2]                           dc.w $ffff
[000abea4]                           dc.w $ffff
[000abea6]                           dc.w $ffff
[000abea8]                           dc.w $ffff
[000abeaa]                           dc.w $ffff
[000abeac]                           dc.w $ffff
[000abeae]                           dc.w $ffff
[000abeb0]                           dc.w $ffff
[000abeb2]                           dc.w $ffff
[000abeb4]                           dc.w $ffff
[000abeb6]                           dc.w $ffff
[000abeb8]                           dc.w $ffff
[000abeba]                           dc.w $ffff
[000abebc]                           dc.w $ffff
[000abebe]                           dc.w $ffff
[000abec0]                           dc.w $ffff
[000abec2]                           dc.w $ffff
[000abec4]                           dc.w $ffff
[000abec6]                           dc.w $ffff
[000abec8]                           dc.w $ffff
[000abeca]                           dc.w $ffff
DATAS_07:
[000abecc]                           dc.b $00
[000abecd]                           dc.b $00
[000abece]                           dc.b $00
[000abecf]                           dc.b $00
[000abed0]                           dc.w $0208
[000abed2]                           dc.w $ffff
[000abed4]                           dc.w $ffff
[000abed6]                           dc.w $ffff
[000abed8]                           dc.w $ffff
[000abeda]                           dc.w $ffff
[000abedc]                           dc.w $ffff
[000abede]                           dc.w $e000
[000abee0]                           dc.w $07ff
[000abee2]                           dc.w $c000
[000abee4]                           dc.w $0fff
[000abee6]                           dc.w $cfff
[000abee8]                           dc.w $ffff
[000abeea]                           dc.w $cfff
[000abeec]                           dc.w $ffff
[000abeee]                           dc.w $cfff
[000abef0]                           dc.w $f80f
[000abef2]                           dc.w $cfff
[000abef4]                           dc.w $f007
[000abef6]                           dc.w $cfff
[000abef8]                           dc.w $f007
[000abefa]                           dc.w $cfff
[000abefc]                           dc.w $e003
[000abefe]                           dc.w $cfff
[000abf00]                           dc.w $e183
[000abf02]                           dc.w $cfff
[000abf04]                           dc.w $f1c3
[000abf06]                           dc.w $dfff
[000abf08]                           dc.w $ffc3
[000abf0a]                           dc.w $ffff
[000abf0c]                           dc.w $ffc3
[000abf0e]                           dc.w $ffff
[000abf10]                           dc.w $ff87
[000abf12]                           dc.w $ffff
[000abf14]                           dc.w $ff07
[000abf16]                           dc.w $ffff
[000abf18]                           dc.w $ff0f
[000abf1a]                           dc.w $ffff
[000abf1c]                           dc.w $fe1f
[000abf1e]                           dc.w $ffff
[000abf20]                           dc.w $ee1f
[000abf22]                           dc.w $ffff
[000abf24]                           dc.w $ee1f
[000abf26]                           dc.w $ffff
[000abf28]                           dc.w $fe1f
[000abf2a]                           dc.w $ffff
[000abf2c]                           dc.w $fe1f
[000abf2e]                           dc.w $ffff
[000abf30]                           dc.w $ff3f
[000abf32]                           dc.w $ffff
[000abf34]                           dc.w $ffff
[000abf36]                           dc.w $ffff
[000abf38]                           dc.w $fe3f
[000abf3a]                           dc.w $ffff
[000abf3c]                           dc.w $fe1f
[000abf3e]                           dc.w $ffff
[000abf40]                           dc.w $fe1f
[000abf42]                           dc.w $ffff
[000abf44]                           dc.w $ff3f
[000abf46]                           dc.w $ffff
[000abf48]                           dc.w $ffff
[000abf4a]                           dc.w $ffff
[000abf4c]                           dc.w $ffff
[000abf4e]                           dc.w $ffff
[000abf50]                           dc.w $ffff
[000abf52]                           dc.w $ffff
[000abf54]                           dc.w $ffff
[000abf56]                           dc.w $ffff
[000abf58]                           dc.w $ffff
[000abf5a]                           dc.w $ffff
[000abf5c]                           dc.w $ffff
[000abf5e]                           dc.w $e000
[000abf60]                           dc.w $07ff
[000abf62]                           dc.w $c000
[000abf64]                           dc.w $0fff
[000abf66]                           dc.w $cfff
[000abf68]                           dc.w $ffff
[000abf6a]                           dc.w $ce3b
[000abf6c]                           dc.w $bfff
[000abf6e]                           dc.w $cddb
[000abf70]                           dc.w $79ef
[000abf72]                           dc.w $cdda
[000abf74]                           dc.w $f7f7
[000abf76]                           dc.w $cdd8
[000abf78]                           dc.w $fff7
[000abf7a]                           dc.w $cddb
[000abf7c]                           dc.w $6e7b
[000abf7e]                           dc.w $ce3b
[000abf80]                           dc.w $adbb
[000abf82]                           dc.w $cfff
[000abf84]                           dc.w $fdfb
[000abf86]                           dc.w $dfff
[000abf88]                           dc.w $fffb
[000abf8a]                           dc.w $ffff
[000abf8c]                           dc.w $fffb
[000abf8e]                           dc.w $ffff
[000abf90]                           dc.w $fff7
[000abf92]                           dc.w $ffff
[000abf94]                           dc.w $fff7
[000abf96]                           dc.w $ffff
[000abf98]                           dc.w $ffef
[000abf9a]                           dc.w $ffff
[000abf9c]                           dc.w $ffdf
[000abf9e]                           dc.w $ffff
[000abfa0]                           dc.w $efdf
[000abfa2]                           dc.w $ffff
[000abfa4]                           dc.w $efdf
[000abfa6]                           dc.w $ffff
[000abfa8]                           dc.w $ffdf
[000abfaa]                           dc.w $ffff
[000abfac]                           dc.w $ffdf
[000abfae]                           dc.w $ffff
[000abfb0]                           dc.w $ff3f
[000abfb2]                           dc.w $ffff
[000abfb4]                           dc.w $ffff
[000abfb6]                           dc.w $ffff
[000abfb8]                           dc.w $ffbf
[000abfba]                           dc.w $ffff
[000abfbc]                           dc.w $ffdf
[000abfbe]                           dc.w $ffff
[000abfc0]                           dc.w $fedf
[000abfc2]                           dc.w $ffff
[000abfc4]                           dc.w $ff3f
[000abfc6]                           dc.w $ffff
[000abfc8]                           dc.w $ffff
[000abfca]                           dc.w $ffff
[000abfcc]                           dc.w $ffff
[000abfce]                           dc.w $ffff
[000abfd0]                           dc.w $ffff
[000abfd2]                           dc.w $ffff
[000abfd4]                           dc.w $ffff
[000abfd6]                           dc.w $ffff
[000abfd8]                           dc.w $ffff
[000abfda]                           dc.w $ffff
[000abfdc]                           dc.w $ffff
[000abfde]                           dc.w $e000
[000abfe0]                           dc.w $07ff
[000abfe2]                           dc.w $c000
[000abfe4]                           dc.w $0fff
[000abfe6]                           dc.w $cfff
[000abfe8]                           dc.w $ffff
[000abfea]                           dc.w $ce3b
[000abfec]                           dc.w $bfff
[000abfee]                           dc.w $cddb
[000abff0]                           dc.w $79ef
[000abff2]                           dc.w $cdda
[000abff4]                           dc.w $f7f7
[000abff6]                           dc.w $cdd8
[000abff8]                           dc.w $fff7
[000abffa]                           dc.w $cddb
[000abffc]                           dc.w $6e7b
[000abffe]                           dc.w $ce3b
[000ac000]                           dc.w $adbb
[000ac002]                           dc.w $cfff
[000ac004]                           dc.w $fdfb
[000ac006]                           dc.w $dfff
[000ac008]                           dc.w $fffb
[000ac00a]                           dc.w $ffff
[000ac00c]                           dc.w $fffb
[000ac00e]                           dc.w $ffff
[000ac010]                           dc.w $fff7
[000ac012]                           dc.w $ffff
[000ac014]                           dc.w $fff7
[000ac016]                           dc.w $ffff
[000ac018]                           dc.w $ffef
[000ac01a]                           dc.w $ffff
[000ac01c]                           dc.w $ffdf
[000ac01e]                           dc.w $ffff
[000ac020]                           dc.w $efdf
[000ac022]                           dc.w $ffff
[000ac024]                           dc.w $efdf
[000ac026]                           dc.w $ffff
[000ac028]                           dc.w $ffdf
[000ac02a]                           dc.w $ffff
[000ac02c]                           dc.w $ffdf
[000ac02e]                           dc.w $ffff
[000ac030]                           dc.w $ff3f
[000ac032]                           dc.w $ffff
[000ac034]                           dc.w $ffff
[000ac036]                           dc.w $ffff
[000ac038]                           dc.w $ffbf
[000ac03a]                           dc.w $ffff
[000ac03c]                           dc.w $ffdf
[000ac03e]                           dc.w $ffff
[000ac040]                           dc.w $fedf
[000ac042]                           dc.w $ffff
[000ac044]                           dc.w $ff3f
[000ac046]                           dc.w $ffff
[000ac048]                           dc.w $ffff
[000ac04a]                           dc.w $ffff
[000ac04c]                           dc.w $ffff
[000ac04e]                           dc.w $ffff
[000ac050]                           dc.w $ffff
[000ac052]                           dc.b $00
[000ac053]                           dc.b $00
[000ac054]                           dc.b $00
[000ac055]                           dc.b $00
[000ac056]                           dc.b $00
[000ac057]                           dc.b $00
[000ac058]                           dc.b $00
[000ac059]                           dc.b $00
[000ac05a]                           dc.b $00
[000ac05b]                           dc.b $00
[000ac05c]                           dc.b $00
[000ac05d]                           dc.b $00
[000ac05e]                           dc.w $1fff
[000ac060]                           dc.w $f800
[000ac062]                           dc.w $3fff
[000ac064]                           dc.w $fc00
[000ac066]                           dc.w $3000
[000ac068]                           dc.w $0c00
[000ac06a]                           dc.w $3000
[000ac06c]                           dc.w $0c00
[000ac06e]                           dc.w $3000
[000ac070]                           dc.w $0810
[000ac072]                           dc.w $3000
[000ac074]                           dc.b $00
[000ac075]                           dc.b $18
[000ac076]                           dc.w $3000
[000ac078]                           dc.w $0198
[000ac07a]                           dc.w $3000
[000ac07c]                           dc.w $03cc
[000ac07e]                           dc.w $3000
[000ac080]                           dc.w $064c
[000ac082]                           dc.w $3000
[000ac084]                           dc.w $0e0c
[000ac086]                           dc.w $3fff
[000ac088]                           dc.w $fc0c
[000ac08a]                           dc.w $1fff
[000ac08c]                           dc.w $f80c
[000ac08e]                           dc.b $00
[000ac08f]                           dc.b $18
[000ac090]                           dc.b $00
[000ac091]                           dc.b $18
[000ac092]                           dc.b $00
[000ac093]                           dc.b $3c
[000ac094]                           dc.b $00
[000ac095]                           dc.b $18
[000ac096]                           dc.b $00
[000ac097]                           dc.b $7e
[000ac098]                           dc.b $00
[000ac099]                           dc.b $30
[000ac09a]                           dc.b $00
[000ac09b]                           dc.b $ff
[000ac09c]                           dc.b $00
[000ac09d]                           dc.b $60
[000ac09e]                           dc.w $01db
[000ac0a0]                           dc.w $f060
[000ac0a2]                           dc.w $0399
[000ac0a4]                           dc.w $f060
[000ac0a6]                           dc.w $0718
[000ac0a8]                           dc.w $0160
[000ac0aa]                           dc.w $039e
[000ac0ac]                           dc.w $01e0
[000ac0ae]                           dc.w $019f
[000ac0b0]                           dc.w $80c0
[000ac0b2]                           dc.b $00
[000ac0b3]                           dc.b $19
[000ac0b4]                           dc.w $e000
[000ac0b6]                           dc.b $00
[000ac0b7]                           dc.b '8p@',0
[000ac0bb]                           dc.b 'p0`',0
[000ac0bf]                           dc.b $e0
[000ac0c0]                           dc.w $31e0
[000ac0c2]                           dc.w $01c0
[000ac0c4]                           dc.w $30c0
[000ac0c6]                           dc.w $0180
[000ac0c8]                           dc.w $3000
[000ac0ca]                           dc.b $00
[000ac0cb]                           dc.b $00
[000ac0cc]                           dc.b $00
[000ac0cd]                           dc.b $00
[000ac0ce]                           dc.b $00
[000ac0cf]                           dc.b $00
[000ac0d0]                           dc.b $00
[000ac0d1]                           dc.b $00
DATAS_08:
[000ac0d2]                           dc.w $ffff
[000ac0d4]                           dc.w $ffff
[000ac0d6]                           dc.w $ffff
[000ac0d8]                           dc.w $ffff
[000ac0da]                           dc.w $ffff
[000ac0dc]                           dc.w $ffff
[000ac0de]                           dc.w $ffff
[000ac0e0]                           dc.w $ffff
[000ac0e2]                           dc.w $ffff
[000ac0e4]                           dc.w $ffff
[000ac0e6]                           dc.w $ffff
[000ac0e8]                           dc.w $ffff
[000ac0ea]                           dc.w $ffff
[000ac0ec]                           dc.w $ffff
[000ac0ee]                           dc.w $ffff
[000ac0f0]                           dc.w $ffff
[000ac0f2]                           dc.w $ffff
[000ac0f4]                           dc.w $ffff
[000ac0f6]                           dc.w $ffff
[000ac0f8]                           dc.w $ffff
[000ac0fa]                           dc.w $ffff
[000ac0fc]                           dc.w $ffff
[000ac0fe]                           dc.w $ffff
[000ac100]                           dc.w $ffff
[000ac102]                           dc.w $ffff
[000ac104]                           dc.w $ffff
[000ac106]                           dc.w $ffff
[000ac108]                           dc.w $ffff
[000ac10a]                           dc.w $ffff
[000ac10c]                           dc.w $ffff
[000ac10e]                           dc.w $ffff
[000ac110]                           dc.w $ffff
[000ac112]                           dc.w $ffff
[000ac114]                           dc.w $ffff
[000ac116]                           dc.w $ffff
[000ac118]                           dc.w $ffff
[000ac11a]                           dc.w $ffff
[000ac11c]                           dc.w $ffff
[000ac11e]                           dc.w $ffff
[000ac120]                           dc.w $ffff
[000ac122]                           dc.w $ffff
[000ac124]                           dc.w $ffff
[000ac126]                           dc.w $ffff
[000ac128]                           dc.w $ffff
[000ac12a]                           dc.w $ffff
[000ac12c]                           dc.w $ffff
[000ac12e]                           dc.w $ffff
[000ac130]                           dc.w $ffff
[000ac132]                           dc.w $ffff
[000ac134]                           dc.w $ffff
[000ac136]                           dc.w $ffff
[000ac138]                           dc.w $ffff
[000ac13a]                           dc.w $ffff
[000ac13c]                           dc.w $ffff
[000ac13e]                           dc.w $ffff
[000ac140]                           dc.w $ffff
[000ac142]                           dc.w $ffff
[000ac144]                           dc.w $ffff
[000ac146]                           dc.w $ffff
[000ac148]                           dc.w $ffff
[000ac14a]                           dc.w $ffff
[000ac14c]                           dc.w $ffff
[000ac14e]                           dc.w $ffff
[000ac150]                           dc.w $ffff
TEDINFO_015:
[000ac152] 000ab70b                  dc.l TEXT_024
[000ac156] 000ab6f1                  dc.l TEMPLATE_001
[000ac15a] 000ab735                  dc.l VALID_001
[000ac15e]                           dc.b $00
[000ac15f]                           dc.b $03
[000ac160]                           dc.b $00
[000ac161]                           dc.b $06
[000ac162]                           dc.b $00
[000ac163]                           dc.b $02
[000ac164]                           dc.w $1180
[000ac166]                           dc.b $00
[000ac167]                           dc.b $00
[000ac168]                           dc.w $ffff
[000ac16a]                           dc.b $00
[000ac16b]                           dc.b $04
[000ac16c]                           dc.b $00
[000ac16d]                           dc.b $0a
TEDINFO_069:
[000ac16e] 000ab70f                  dc.l TEXT_030
[000ac172] 000ab6fb                  dc.l TEXT_002
[000ac176] 000ab6fb                  dc.l TEXT_002
[000ac17a]                           dc.b $00
[000ac17b]                           dc.b $03
[000ac17c]                           dc.b $00
[000ac17d]                           dc.b $06
[000ac17e]                           dc.b $00
[000ac17f]                           dc.b $02
[000ac180]                           dc.w $1180
[000ac182]                           dc.b $00
[000ac183]                           dc.b $00
[000ac184]                           dc.w $ffff
[000ac186]                           dc.b $00
[000ac187]                           dc.b $05
[000ac188]                           dc.b $00
[000ac189]                           dc.b $01
A_3DBUTTON01:
[000ac18a] 0005a4e2                  dc.l A_3Dbutton
[000ac18e]                           dc.w $21f1
[000ac190]                           dc.w $01f8
[000ac192] 00059318                  dc.l Auo_string
[000ac196]                           dc.b $00
[000ac197]                           dc.b $00
[000ac198]                           dc.b $00
[000ac199]                           dc.b $00
[000ac19a]                           dc.b $00
[000ac19b]                           dc.b $00
[000ac19c]                           dc.b $00
[000ac19d]                           dc.b $00
[000ac19e]                           dc.b $00
[000ac19f]                           dc.b $00
[000ac1a0]                           dc.b $00
[000ac1a1]                           dc.b $00
[000ac1a2]                           dc.b $00
[000ac1a3]                           dc.b $00
[000ac1a4]                           dc.b $00
[000ac1a5]                           dc.b $00
[000ac1a6]                           dc.b $00
[000ac1a7]                           dc.b $00
[000ac1a8]                           dc.b $00
[000ac1a9]                           dc.b $00
A_3DBUTTON03:
[000ac1aa] 0005a4e2                  dc.l A_3Dbutton
[000ac1ae]                           dc.w $21f1
[000ac1b0]                           dc.w $0178
[000ac1b2] 00059318                  dc.l Auo_string
[000ac1b6]                           dc.b $00
[000ac1b7]                           dc.b $00
[000ac1b8]                           dc.b $00
[000ac1b9]                           dc.b $00
[000ac1ba]                           dc.b $00
[000ac1bb]                           dc.b $00
[000ac1bc]                           dc.b $00
[000ac1bd]                           dc.b $00
[000ac1be]                           dc.b $00
[000ac1bf]                           dc.b $00
[000ac1c0]                           dc.b $00
[000ac1c1]                           dc.b $00
[000ac1c2]                           dc.b $00
[000ac1c3]                           dc.b $00
[000ac1c4]                           dc.b $00
[000ac1c5]                           dc.b $00
[000ac1c6]                           dc.b $00
[000ac1c7]                           dc.b $00
[000ac1c8]                           dc.b $00
[000ac1c9]                           dc.b $00
A_3DBUTTON05:
[000ac1ca] 0005a4e2                  dc.l A_3Dbutton
[000ac1ce]                           dc.w $a9e1
[000ac1d0]                           dc.w $0178
[000ac1d2] 00059318                  dc.l Auo_string
[000ac1d6]                           dc.b $00
[000ac1d7]                           dc.b $00
[000ac1d8]                           dc.b $00
[000ac1d9]                           dc.b $00
[000ac1da]                           dc.b $00
[000ac1db]                           dc.b $00
[000ac1dc]                           dc.b $00
[000ac1dd]                           dc.b $00
[000ac1de]                           dc.b $00
[000ac1df]                           dc.b $00
[000ac1e0]                           dc.b $00
[000ac1e1]                           dc.b $00
[000ac1e2] 000ab634                  dc.l BUBBLE_01
[000ac1e6]                           dc.b $00
[000ac1e7]                           dc.b $00
[000ac1e8]                           dc.b $00
[000ac1e9]                           dc.b $00
A_3DBUTTON06:
[000ac1ea] 0005a4e2                  dc.l A_3Dbutton
[000ac1ee]                           dc.w $a9e1
[000ac1f0]                           dc.w $0178
[000ac1f2] 00059318                  dc.l Auo_string
[000ac1f6]                           dc.b $00
[000ac1f7]                           dc.b $00
[000ac1f8]                           dc.b $00
[000ac1f9]                           dc.b $00
[000ac1fa]                           dc.b $00
[000ac1fb]                           dc.b $00
[000ac1fc]                           dc.b $00
[000ac1fd]                           dc.b $00
[000ac1fe]                           dc.b $00
[000ac1ff]                           dc.b $00
[000ac200]                           dc.b $00
[000ac201]                           dc.b $00
[000ac202] 000ab65c                  dc.l BUBBLE_02
[000ac206]                           dc.b $00
[000ac207]                           dc.b $00
[000ac208]                           dc.b $00
[000ac209]                           dc.b $00
A_3DBUTTON07:
[000ac20a] 0005a4e2                  dc.l A_3Dbutton
[000ac20e]                           dc.w $a9e1
[000ac210]                           dc.w $0178
[000ac212] 00059318                  dc.l Auo_string
[000ac216]                           dc.b $00
[000ac217]                           dc.b $00
[000ac218]                           dc.b $00
[000ac219]                           dc.b $00
[000ac21a]                           dc.b $00
[000ac21b]                           dc.b $00
[000ac21c]                           dc.b $00
[000ac21d]                           dc.b $00
[000ac21e]                           dc.b $00
[000ac21f]                           dc.b $00
[000ac220]                           dc.b $00
[000ac221]                           dc.b $00
[000ac222] 000ab686                  dc.l BUBBLE_03
[000ac226]                           dc.b $00
[000ac227]                           dc.b $00
[000ac228]                           dc.b $00
[000ac229]                           dc.b $00
A_3DBUTTON08:
[000ac22a] 0005a4e2                  dc.l A_3Dbutton
[000ac22e]                           dc.w $a9e1
[000ac230]                           dc.w $0178
[000ac232] 00059318                  dc.l Auo_string
[000ac236]                           dc.b $00
[000ac237]                           dc.b $00
[000ac238]                           dc.b $00
[000ac239]                           dc.b $00
[000ac23a]                           dc.b $00
[000ac23b]                           dc.b $00
[000ac23c]                           dc.b $00
[000ac23d]                           dc.b $00
[000ac23e]                           dc.b $00
[000ac23f]                           dc.b $00
[000ac240]                           dc.b $00
[000ac241]                           dc.b $00
[000ac242] 000ab6b2                  dc.l BUBBLE_04
[000ac246]                           dc.b $00
[000ac247]                           dc.b $00
[000ac248]                           dc.b $00
[000ac249]                           dc.b $00
_MSK_ICON_001:
[000ac24a]                           dc.b $00
[000ac24b]                           dc.b $ff
[000ac24c]                           dc.w $ffff
[000ac24e]                           dc.w $fe00
[000ac250]                           dc.b $00
[000ac251]                           dc.b $ff
[000ac252]                           dc.w $ffff
[000ac254]                           dc.w $fe00
[000ac256]                           dc.b $00
[000ac257]                           dc.b $ff
[000ac258]                           dc.w $ffff
[000ac25a]                           dc.w $fe00
[000ac25c]                           dc.b $00
[000ac25d]                           dc.b $ff
[000ac25e]                           dc.w $ffff
[000ac260]                           dc.w $fe00
[000ac262]                           dc.b $00
[000ac263]                           dc.b $ff
[000ac264]                           dc.w $ffff
[000ac266]                           dc.w $fe00
[000ac268]                           dc.b $00
[000ac269]                           dc.b $ff
[000ac26a]                           dc.w $ffff
[000ac26c]                           dc.w $fe00
[000ac26e]                           dc.b $00
[000ac26f]                           dc.b $ff
[000ac270]                           dc.w $ffff
[000ac272]                           dc.w $fe00
[000ac274]                           dc.b $00
[000ac275]                           dc.b $ff
[000ac276]                           dc.w $ffff
[000ac278]                           dc.w $fe00
[000ac27a]                           dc.b $00
[000ac27b]                           dc.b $ff
[000ac27c]                           dc.w $ffff
[000ac27e]                           dc.w $fe00
[000ac280]                           dc.b $00
[000ac281]                           dc.b $ff
[000ac282]                           dc.w $ffff
[000ac284]                           dc.w $fe00
[000ac286]                           dc.b $00
[000ac287]                           dc.b $ff
[000ac288]                           dc.w $ffff
[000ac28a]                           dc.w $fe00
[000ac28c]                           dc.b $00
[000ac28d]                           dc.b $ff
[000ac28e]                           dc.w $ffff
[000ac290]                           dc.w $fe00
[000ac292]                           dc.b $00
[000ac293]                           dc.b $ff
[000ac294]                           dc.w $ffff
[000ac296]                           dc.w $fe00
[000ac298]                           dc.b $00
[000ac299]                           dc.b $ff
[000ac29a]                           dc.w $ffff
[000ac29c]                           dc.w $fe00
[000ac29e]                           dc.b $00
[000ac29f]                           dc.b $ff
[000ac2a0]                           dc.w $ffff
[000ac2a2]                           dc.w $fe00
[000ac2a4]                           dc.w $0fff
[000ac2a6]                           dc.w $ffff
[000ac2a8]                           dc.w $fff0
[000ac2aa]                           dc.w $0fff
[000ac2ac]                           dc.w $ffff
[000ac2ae]                           dc.w $fff0
[000ac2b0]                           dc.w $0fff
[000ac2b2]                           dc.w $ffff
[000ac2b4]                           dc.w $fff0
[000ac2b6]                           dc.w $0fff
[000ac2b8]                           dc.w $ffff
[000ac2ba]                           dc.w $fff0
[000ac2bc]                           dc.w $0fff
[000ac2be]                           dc.w $ffff
[000ac2c0]                           dc.w $fff0
[000ac2c2]                           dc.w $0fff
[000ac2c4]                           dc.w $ffff
[000ac2c6]                           dc.w $fff0
[000ac2c8]                           dc.w $0fff
[000ac2ca]                           dc.w $ffff
[000ac2cc]                           dc.w $fff0
[000ac2ce]                           dc.w $0fff
[000ac2d0]                           dc.w $ffff
[000ac2d2]                           dc.w $fff0
[000ac2d4]                           dc.b $00
[000ac2d5]                           dc.b $00
[000ac2d6]                           dc.b $00
[000ac2d7]                           dc.b $00
[000ac2d8]                           dc.b $00
[000ac2d9]                           dc.b $00
_DAT_ICON_001:
[000ac2da]                           dc.b $00
[000ac2db]                           dc.b $ff
[000ac2dc]                           dc.w $ffff
[000ac2de]                           dc.w $fe00
[000ac2e0]                           dc.b $00
[000ac2e1]                           dc.b $c0
[000ac2e2]                           dc.b $00
[000ac2e3]                           dc.b $00
[000ac2e4]                           dc.w $0600
[000ac2e6]                           dc.b $00
[000ac2e7]                           dc.b $c0
[000ac2e8]                           dc.w $7fff
[000ac2ea]                           dc.w $8600
[000ac2ec]                           dc.b $00
[000ac2ed]                           dc.b $c0
[000ac2ee]                           dc.w $c000
[000ac2f0]                           dc.w $8600
[000ac2f2]                           dc.b $00
[000ac2f3]                           dc.b $c1
[000ac2f4]                           dc.w $4000
[000ac2f6]                           dc.w $8600
[000ac2f8]                           dc.b $00
[000ac2f9]                           dc.b $c3
[000ac2fa]                           dc.w $c000
[000ac2fc]                           dc.w $8600
[000ac2fe]                           dc.b $00
[000ac2ff]                           dc.b $c2
[000ac300]                           dc.b $00
[000ac301]                           dc.b $00
[000ac302]                           dc.w $8600
[000ac304]                           dc.b $00
[000ac305]                           dc.b $c2
[000ac306]                           dc.b $00
[000ac307]                           dc.b $00
[000ac308]                           dc.w $8600
[000ac30a]                           dc.b $00
[000ac30b]                           dc.b $c2
[000ac30c]                           dc.b $00
[000ac30d]                           dc.b $00
[000ac30e]                           dc.w $8600
[000ac310]                           dc.b $00
[000ac311]                           dc.b $c2
[000ac312]                           dc.b $00
[000ac313]                           dc.b $00
[000ac314]                           dc.w $8600
[000ac316]                           dc.b $00
[000ac317]                           dc.b $c2
[000ac318]                           dc.b $00
[000ac319]                           dc.b $00
[000ac31a]                           dc.w $8600
[000ac31c]                           dc.b $00
[000ac31d]                           dc.b $c2
[000ac31e]                           dc.b $00
[000ac31f]                           dc.b $00
[000ac320]                           dc.w $8600
[000ac322]                           dc.b $00
[000ac323]                           dc.b $c2
[000ac324]                           dc.b $00
[000ac325]                           dc.b $00
[000ac326]                           dc.w $8600
[000ac328]                           dc.b $00
[000ac329]                           dc.b $c2
[000ac32a]                           dc.b $00
[000ac32b]                           dc.b $00
[000ac32c]                           dc.w $8600
[000ac32e]                           dc.b $00
[000ac32f]                           dc.b $c2
[000ac330]                           dc.b $00
[000ac331]                           dc.b $00
[000ac332]                           dc.w $8600
[000ac334]                           dc.w $0fc3
[000ac336]                           dc.w $ffff
[000ac338]                           dc.w $87f0
[000ac33a]                           dc.w $0c00
[000ac33c]                           dc.b $00
[000ac33d]                           dc.b $00
[000ac33e]                           dc.b $00
[000ac33f]                           dc.b $30
[000ac340]                           dc.w $0c1c
[000ac342]                           dc.w $f9f9
[000ac344]                           dc.w $8830
[000ac346]                           dc.w $0c08
[000ac348]                           dc.b 'Å',$09,'H0'
[000ac34c]                           dc.w $0c08
[000ac34e]                           dc.b 'Å',$09,'(0'
[000ac352]                           dc.w $0c1c
[000ac354]                           dc.w $f9f9
[000ac356]                           dc.w $1830
[000ac358]                           dc.w $0c00
[000ac35a]                           dc.b $00
[000ac35b]                           dc.b $00
[000ac35c]                           dc.b $00
[000ac35d]                           dc.b $30
[000ac35e]                           dc.w $0fff
[000ac360]                           dc.w $ffff
[000ac362]                           dc.w $fff0
[000ac364]                           dc.b $00
[000ac365]                           dc.b $00
[000ac366]                           dc.b $00
[000ac367]                           dc.b $00
[000ac368]                           dc.b $00
[000ac369]                           dc.b $00
ICON_001:
[000ac36a] 000ac24a                  dc.l _MSK_ICON_001
[000ac36e] 000ac2da                  dc.l _DAT_ICON_001
[000ac372] 000ab728                  dc.l TEXT_065
[000ac376]                           dc.w $1041
[000ac378]                           dc.b $00
[000ac379]                           dc.b $14
[000ac37a]                           dc.b $00
[000ac37b]                           dc.b $06
[000ac37c]                           dc.b $00
[000ac37d]                           dc.b $00
[000ac37e]                           dc.b $00
[000ac37f]                           dc.b $00
[000ac380]                           dc.b $00
[000ac381]                           dc.b $30
[000ac382]                           dc.b $00
[000ac383]                           dc.b $18
[000ac384]                           dc.b $00
[000ac385]                           dc.b $00
[000ac386]                           dc.b $00
[000ac387]                           dc.b $18
[000ac388]                           dc.b $00
[000ac389]                           dc.b $30
[000ac38a]                           dc.b $00
[000ac38b]                           dc.b $08
[000ac38c]                           dc.b $00
[000ac38d]                           dc.b $00
[000ac38e]                           dc.b $00
[000ac38f]                           dc.b $00
_C4_I_FLAGS:
[000ac390]                           dc.b $00
[000ac391]                           dc.b $04
[000ac392] 000abed2                  dc.l $000abed2 ; no symbol found
[000ac396] 000ac0d2                  dc.l DATAS_08
[000ac39a]                           dc.b $00
[000ac39b]                           dc.b $00
[000ac39c]                           dc.b $00
[000ac39d]                           dc.b $00
[000ac39e]                           dc.b $00
[000ac39f]                           dc.b $00
[000ac3a0]                           dc.b $00
[000ac3a1]                           dc.b $00
[000ac3a2]                           dc.b $00
[000ac3a3]                           dc.b $00
[000ac3a4]                           dc.b $00
[000ac3a5]                           dc.b $00
_MSK_I_FLAGS:
[000ac3a6]                           dc.b $00
[000ac3a7]                           dc.b $00
[000ac3a8]                           dc.b $00
[000ac3a9]                           dc.b $00
[000ac3aa]                           dc.b $00
[000ac3ab]                           dc.b $00
[000ac3ac]                           dc.b $00
[000ac3ad]                           dc.b $00
[000ac3ae]                           dc.b $00
[000ac3af]                           dc.b $00
[000ac3b0]                           dc.b $00
[000ac3b1]                           dc.b $00
[000ac3b2]                           dc.w $1fff
[000ac3b4]                           dc.w $f800
[000ac3b6]                           dc.w $3fff
[000ac3b8]                           dc.w $fc00
[000ac3ba]                           dc.w $3fff
[000ac3bc]                           dc.w $fc00
[000ac3be]                           dc.w $3fff
[000ac3c0]                           dc.w $fc00
[000ac3c2]                           dc.w $3fff
[000ac3c4]                           dc.w $fdf0
[000ac3c6]                           dc.w $3fff
[000ac3c8]                           dc.w $fff8
[000ac3ca]                           dc.w $3fff
[000ac3cc]                           dc.w $fff8
[000ac3ce]                           dc.w $3fff
[000ac3d0]                           dc.w $fffc
[000ac3d2]                           dc.w $3fff
[000ac3d4]                           dc.w $fe7c
[000ac3d6]                           dc.w $3fff
[000ac3d8]                           dc.w $fe3c
[000ac3da]                           dc.w $3fff
[000ac3dc]                           dc.w $fc3c
[000ac3de]                           dc.w $1fff
[000ac3e0]                           dc.w $f83c
[000ac3e2]                           dc.b $00
[000ac3e3]                           dc.b $18
[000ac3e4]                           dc.b $00
[000ac3e5]                           dc.b $78
[000ac3e6]                           dc.b $00
[000ac3e7]                           dc.b $3c
[000ac3e8]                           dc.b $00
[000ac3e9]                           dc.b $f8
[000ac3ea]                           dc.b $00
[000ac3eb]                           dc.b $7e
[000ac3ec]                           dc.b $00
[000ac3ed]                           dc.b $f0
[000ac3ee]                           dc.b $00
[000ac3ef]                           dc.b $ff
[000ac3f0]                           dc.w $01e0
[000ac3f2]                           dc.w $01db
[000ac3f4]                           dc.w $e1e0
[000ac3f6]                           dc.w $0399
[000ac3f8]                           dc.w $e1e0
[000ac3fa]                           dc.w $0718
[000ac3fc]                           dc.w $01e0
[000ac3fe]                           dc.w $039e
[000ac400]                           dc.w $01e0
[000ac402]                           dc.w $019f
[000ac404]                           dc.w $80c0
[000ac406]                           dc.b $00
[000ac407]                           dc.b $19
[000ac408]                           dc.w $e000
[000ac40a]                           dc.b $00
[000ac40b]                           dc.b $38
[000ac40c]                           dc.w $70c0
[000ac40e]                           dc.b $00
[000ac40f]                           dc.b $70
[000ac410]                           dc.w $31e0
[000ac412]                           dc.b $00
[000ac413]                           dc.b $e0
[000ac414]                           dc.w $31e0
[000ac416]                           dc.w $01c0
[000ac418]                           dc.w $30c0
[000ac41a]                           dc.w $0180
[000ac41c]                           dc.w $3000
[000ac41e]                           dc.b $00
[000ac41f]                           dc.b $00
[000ac420]                           dc.b $00
[000ac421]                           dc.b $00
[000ac422]                           dc.b $00
[000ac423]                           dc.b $00
[000ac424]                           dc.b $00
[000ac425]                           dc.b $00
_DAT_I_FLAGS:
[000ac426]                           dc.b $00
[000ac427]                           dc.b $00
[000ac428]                           dc.b $00
[000ac429]                           dc.b $00
[000ac42a]                           dc.b $00
[000ac42b]                           dc.b $00
[000ac42c]                           dc.b $00
[000ac42d]                           dc.b $00
[000ac42e]                           dc.b $00
[000ac42f]                           dc.b $00
[000ac430]                           dc.b $00
[000ac431]                           dc.b $00
[000ac432]                           dc.w $1fff
[000ac434]                           dc.w $f800
[000ac436]                           dc.w $3fff
[000ac438]                           dc.w $fc00
[000ac43a]                           dc.w $3000
[000ac43c]                           dc.w $0c00
[000ac43e]                           dc.w $31c4
[000ac440]                           dc.w $4c00
[000ac442]                           dc.w $3224
[000ac444]                           dc.w $89f0
[000ac446]                           dc.w $3225
[000ac448]                           dc.w $07f8
[000ac44a]                           dc.w $3227
[000ac44c]                           dc.w $0ff8
[000ac44e]                           dc.w $3224
[000ac450]                           dc.w $8ffc
[000ac452]                           dc.w $31c4
[000ac454]                           dc.b 'N|0',0
[000ac458]                           dc.w $0e3c
[000ac45a]                           dc.w $3fff
[000ac45c]                           dc.w $f43c
[000ac45e]                           dc.w $1fff
[000ac460]                           dc.w $f83c
[000ac462]                           dc.b $00
[000ac463]                           dc.b $18
[000ac464]                           dc.b $00
[000ac465]                           dc.b $78
[000ac466]                           dc.b $00
[000ac467]                           dc.b $3c
[000ac468]                           dc.b $00
[000ac469]                           dc.b $f8
[000ac46a]                           dc.b $00
[000ac46b]                           dc.b $7e
[000ac46c]                           dc.b $00
[000ac46d]                           dc.b $f0
[000ac46e]                           dc.b $00
[000ac46f]                           dc.b $ff
[000ac470]                           dc.w $01e0
[000ac472]                           dc.w $01db
[000ac474]                           dc.w $e1e0
[000ac476]                           dc.w $0399
[000ac478]                           dc.w $e1e0
[000ac47a]                           dc.w $0718
[000ac47c]                           dc.w $01e0
[000ac47e]                           dc.w $039e
[000ac480]                           dc.w $01e0
[000ac482]                           dc.w $019f
[000ac484]                           dc.w $80c0
[000ac486]                           dc.b $00
[000ac487]                           dc.b $19
[000ac488]                           dc.w $e000
[000ac48a]                           dc.b $00
[000ac48b]                           dc.b $38
[000ac48c]                           dc.w $70c0
[000ac48e]                           dc.b $00
[000ac48f]                           dc.b $70
[000ac490]                           dc.w $31e0
[000ac492]                           dc.b $00
[000ac493]                           dc.b $e0
[000ac494]                           dc.w $31e0
[000ac496]                           dc.w $01c0
[000ac498]                           dc.w $30c0
[000ac49a]                           dc.w $0180
[000ac49c]                           dc.w $3000
[000ac49e]                           dc.b $00
[000ac49f]                           dc.b $00
[000ac4a0]                           dc.b $00
[000ac4a1]                           dc.b $00
[000ac4a2]                           dc.b $00
[000ac4a3]                           dc.b $00
[000ac4a4]                           dc.b $00
[000ac4a5]                           dc.b $00
I_FLAGS:
[000ac4a6] 000ac3a6                  dc.l _MSK_I_FLAGS
[000ac4aa] 000ac426                  dc.l _DAT_I_FLAGS
[000ac4ae] 000ab6fb                  dc.l TEXT_002
[000ac4b2]                           dc.w $1000
[000ac4b4]                           dc.b $00
[000ac4b5]                           dc.b $00
[000ac4b6]                           dc.b $00
[000ac4b7]                           dc.b $00
[000ac4b8]                           dc.b $00
[000ac4b9]                           dc.b $00
[000ac4ba]                           dc.b $00
[000ac4bb]                           dc.b $00
[000ac4bc]                           dc.b $00
[000ac4bd]                           dc.b $20
[000ac4be]                           dc.b $00
[000ac4bf]                           dc.b $20
[000ac4c0]                           dc.b $00
[000ac4c1]                           dc.b $08
[000ac4c2]                           dc.b $00
[000ac4c3]                           dc.b $08
[000ac4c4]                           dc.b $00
[000ac4c5]                           dc.b $00
[000ac4c6]                           dc.b $00
[000ac4c7]                           dc.b $00
[000ac4c8] 000ac390                  dc.l _C4_I_FLAGS
_C4_I_POS:
[000ac4cc]                           dc.b $00
[000ac4cd]                           dc.b $04
[000ac4ce] 000ab9c6                  dc.l $000ab9c6 ; no symbol found
[000ac4d2] 000abbc6                  dc.l DATAS_04
[000ac4d6]                           dc.b $00
[000ac4d7]                           dc.b $00
[000ac4d8]                           dc.b $00
[000ac4d9]                           dc.b $00
[000ac4da]                           dc.b $00
[000ac4db]                           dc.b $00
[000ac4dc]                           dc.b $00
[000ac4dd]                           dc.b $00
[000ac4de]                           dc.b $00
[000ac4df]                           dc.b $00
[000ac4e0]                           dc.b $00
[000ac4e1]                           dc.b $00
_MSK_I_POS:
[000ac4e2]                           dc.b $00
[000ac4e3]                           dc.b $00
[000ac4e4]                           dc.b $00
[000ac4e5]                           dc.b $00
[000ac4e6]                           dc.b $00
[000ac4e7]                           dc.b $00
[000ac4e8]                           dc.b $00
[000ac4e9]                           dc.b $00
[000ac4ea]                           dc.b $00
[000ac4eb]                           dc.b $00
[000ac4ec]                           dc.b $00
[000ac4ed]                           dc.b $00
[000ac4ee]                           dc.w $0800
[000ac4f0]                           dc.b $00
[000ac4f1]                           dc.b $00
[000ac4f2]                           dc.w $1c00
[000ac4f4]                           dc.b $00
[000ac4f5]                           dc.b $00
[000ac4f6]                           dc.w $3e00
[000ac4f8]                           dc.b $00
[000ac4f9]                           dc.b $00
[000ac4fa]                           dc.w $0800
[000ac4fc]                           dc.b $00
[000ac4fd]                           dc.b $00
[000ac4fe]                           dc.w $0bff
[000ac500]                           dc.w $ffc0
[000ac502]                           dc.w $0bff
[000ac504]                           dc.w $ffc0
[000ac506]                           dc.w $0bff
[000ac508]                           dc.w $ffc0
[000ac50a]                           dc.w $0bff
[000ac50c]                           dc.w $ffc0
[000ac50e]                           dc.w $0bff
[000ac510]                           dc.w $ffc0
[000ac512]                           dc.w $0bff
[000ac514]                           dc.w $ffc0
[000ac516]                           dc.w $0bff
[000ac518]                           dc.w $ffc0
[000ac51a]                           dc.w $0bff
[000ac51c]                           dc.w $ffc0
[000ac51e]                           dc.w $0bff
[000ac520]                           dc.w $ffc0
[000ac522]                           dc.w $0bff
[000ac524]                           dc.w $ffc0
[000ac526]                           dc.w $0bff
[000ac528]                           dc.w $ffc0
[000ac52a]                           dc.w $0bff
[000ac52c]                           dc.w $ffd0
[000ac52e]                           dc.w $0800
[000ac530]                           dc.b $00
[000ac531]                           dc.b $18
[000ac532]                           dc.w $3fff
[000ac534]                           dc.w $fffc
[000ac536]                           dc.w $0800
[000ac538]                           dc.b $00
[000ac539]                           dc.b $18
[000ac53a]                           dc.w $0800
[000ac53c]                           dc.b $00
[000ac53d]                           dc.b $10
[000ac53e]                           dc.b $00
[000ac53f]                           dc.b $00
[000ac540]                           dc.b $00
[000ac541]                           dc.b $00
[000ac542]                           dc.w $0fff
[000ac544]                           dc.w $fff8
[000ac546]                           dc.w $0fff
[000ac548]                           dc.w $fff8
[000ac54a]                           dc.w $0fff
[000ac54c]                           dc.w $fff8
[000ac54e]                           dc.w $0fff
[000ac550]                           dc.w $fff8
[000ac552]                           dc.w $0fff
[000ac554]                           dc.w $fff8
[000ac556]                           dc.b $00
[000ac557]                           dc.b $00
[000ac558]                           dc.b $00
[000ac559]                           dc.b $00
[000ac55a]                           dc.b $00
[000ac55b]                           dc.b $00
[000ac55c]                           dc.b $00
[000ac55d]                           dc.b $00
[000ac55e]                           dc.b $00
[000ac55f]                           dc.b $00
[000ac560]                           dc.b $00
[000ac561]                           dc.b $00
_DAT_I_POS:
[000ac562]                           dc.b $00
[000ac563]                           dc.b $00
[000ac564]                           dc.b $00
[000ac565]                           dc.b $00
[000ac566]                           dc.b $00
[000ac567]                           dc.b $00
[000ac568]                           dc.b $00
[000ac569]                           dc.b $00
[000ac56a]                           dc.b $00
[000ac56b]                           dc.b $00
[000ac56c]                           dc.b $00
[000ac56d]                           dc.b $00
[000ac56e]                           dc.w $0800
[000ac570]                           dc.b $00
[000ac571]                           dc.b $00
[000ac572]                           dc.w $1c00
[000ac574]                           dc.b $00
[000ac575]                           dc.b $00
[000ac576]                           dc.w $3e00
[000ac578]                           dc.b $00
[000ac579]                           dc.b $00
[000ac57a]                           dc.w $0800
[000ac57c]                           dc.b $00
[000ac57d]                           dc.b $00
[000ac57e]                           dc.w $0bff
[000ac580]                           dc.w $ffc0
[000ac582]                           dc.w $0bff
[000ac584]                           dc.w $ffc0
[000ac586]                           dc.w $0b00
[000ac588]                           dc.b $00
[000ac589]                           dc.b $c0
[000ac58a]                           dc.w $0b1c
[000ac58c]                           dc.w $44c0
[000ac58e]                           dc.w $0b22
[000ac590]                           dc.w $48c0
[000ac592]                           dc.w $0b22
[000ac594]                           dc.w $50c0
[000ac596]                           dc.w $0b22
[000ac598]                           dc.w $70c0
[000ac59a]                           dc.w $0b22
[000ac59c]                           dc.w $48c0
[000ac59e]                           dc.w $0b1c
[000ac5a0]                           dc.w $44c0
[000ac5a2]                           dc.w $0b00
[000ac5a4]                           dc.b $00
[000ac5a5]                           dc.b $c0
[000ac5a6]                           dc.w $0bff
[000ac5a8]                           dc.w $ffc0
[000ac5aa]                           dc.w $0bff
[000ac5ac]                           dc.w $ffd0
[000ac5ae]                           dc.w $0800
[000ac5b0]                           dc.b $00
[000ac5b1]                           dc.b $18
[000ac5b2]                           dc.w $3fff
[000ac5b4]                           dc.w $fffc
[000ac5b6]                           dc.w $0800
[000ac5b8]                           dc.b $00
[000ac5b9]                           dc.b $18
[000ac5ba]                           dc.w $0800
[000ac5bc]                           dc.b $00
[000ac5bd]                           dc.b $10
[000ac5be]                           dc.b $00
[000ac5bf]                           dc.b $00
[000ac5c0]                           dc.b $00
[000ac5c1]                           dc.b $00
[000ac5c2]                           dc.w $0fff
[000ac5c4]                           dc.w $fff8
[000ac5c6]                           dc.w $0aaa
[000ac5c8]                           dc.w $aaa8
[000ac5ca]                           dc.w $0888
[000ac5cc]                           dc.w $8888
[000ac5ce]                           dc.w $0800
[000ac5d0]                           dc.b $00
[000ac5d1]                           dc.b $08
[000ac5d2]                           dc.w $0fff
[000ac5d4]                           dc.w $fff8
[000ac5d6]                           dc.b $00
[000ac5d7]                           dc.b $00
[000ac5d8]                           dc.b $00
[000ac5d9]                           dc.b $00
[000ac5da]                           dc.b $00
[000ac5db]                           dc.b $00
[000ac5dc]                           dc.b $00
[000ac5dd]                           dc.b $00
[000ac5de]                           dc.b $00
[000ac5df]                           dc.b $00
[000ac5e0]                           dc.b $00
[000ac5e1]                           dc.b $00
I_POS:
[000ac5e2] 000ac4e2                  dc.l _MSK_I_POS
[000ac5e6] 000ac562                  dc.l _DAT_I_POS
[000ac5ea] 000ab6fb                  dc.l TEXT_002
[000ac5ee]                           dc.w $1000
[000ac5f0]                           dc.b $00
[000ac5f1]                           dc.b $00
[000ac5f2]                           dc.b $00
[000ac5f3]                           dc.b $00
[000ac5f4]                           dc.b $00
[000ac5f5]                           dc.b $00
[000ac5f6]                           dc.b $00
[000ac5f7]                           dc.b $00
[000ac5f8]                           dc.b $00
[000ac5f9]                           dc.b $20
[000ac5fa]                           dc.b $00
[000ac5fb]                           dc.b $20
[000ac5fc]                           dc.b $00
[000ac5fd]                           dc.b $08
[000ac5fe]                           dc.b $00
[000ac5ff]                           dc.b $10
[000ac600]                           dc.b $00
[000ac601]                           dc.b $00
[000ac602]                           dc.b $00
[000ac603]                           dc.b $00
[000ac604] 000ac4cc                  dc.l _C4_I_POS
_C4_I_REF:
[000ac608]                           dc.b $00
[000ac609]                           dc.b $04
[000ac60a] 000ab740                  dc.l $000ab740 ; no symbol found
[000ac60e] 000ab940                  dc.l DATAS_02
[000ac612]                           dc.b $00
[000ac613]                           dc.b $00
[000ac614]                           dc.b $00
[000ac615]                           dc.b $00
[000ac616]                           dc.b $00
[000ac617]                           dc.b $00
[000ac618]                           dc.b $00
[000ac619]                           dc.b $00
[000ac61a]                           dc.b $00
[000ac61b]                           dc.b $00
[000ac61c]                           dc.b $00
[000ac61d]                           dc.b $00
_MSK_I_REF:
[000ac61e]                           dc.b $00
[000ac61f]                           dc.b $00
[000ac620]                           dc.b $00
[000ac621]                           dc.b $00
[000ac622]                           dc.b $00
[000ac623]                           dc.b $00
[000ac624]                           dc.b $00
[000ac625]                           dc.b $00
[000ac626]                           dc.b $00
[000ac627]                           dc.b $00
[000ac628]                           dc.b $00
[000ac629]                           dc.b $00
[000ac62a]                           dc.w $1fff
[000ac62c]                           dc.w $fe00
[000ac62e]                           dc.w $1fff
[000ac630]                           dc.w $fe00
[000ac632]                           dc.w $1fff
[000ac634]                           dc.w $fe00
[000ac636]                           dc.w $1fff
[000ac638]                           dc.w $fe00
[000ac63a]                           dc.w $1fff
[000ac63c]                           dc.w $fe00
[000ac63e]                           dc.w $1fff
[000ac640]                           dc.w $fe00
[000ac642]                           dc.w $1fff
[000ac644]                           dc.w $ff00
[000ac646]                           dc.w $1fff
[000ac648]                           dc.w $ff80
[000ac64a]                           dc.w $1fff
[000ac64c]                           dc.w $ffc0
[000ac64e]                           dc.w $1fff
[000ac650]                           dc.w $ffe0
[000ac652]                           dc.w $1fff
[000ac654]                           dc.w $fff0
[000ac656]                           dc.w $1fff
[000ac658]                           dc.w $fff8
[000ac65a]                           dc.w $1fff
[000ac65c]                           dc.w $fffc
[000ac65e]                           dc.w $3fff
[000ac660]                           dc.w $fffc
[000ac662]                           dc.w $3fff
[000ac664]                           dc.w $fff8
[000ac666]                           dc.w $1fff
[000ac668]                           dc.w $fff0
[000ac66a]                           dc.w $0fff
[000ac66c]                           dc.w $ffe0
[000ac66e]                           dc.w $07ff
[000ac670]                           dc.w $fff8
[000ac672]                           dc.w $03ff
[000ac674]                           dc.w $fff8
[000ac676]                           dc.w $01ff
[000ac678]                           dc.w $fff8
[000ac67a]                           dc.b $00
[000ac67b]                           dc.b $ff
[000ac67c]                           dc.w $fff8
[000ac67e]                           dc.b $00
[000ac67f]                           dc.b $7f
[000ac680]                           dc.w $fff8
[000ac682]                           dc.b $00
[000ac683]                           dc.b $3f
[000ac684]                           dc.w $fff8
[000ac686]                           dc.b $00
[000ac687]                           dc.b $1f
[000ac688]                           dc.w $fc00
[000ac68a]                           dc.b $00
[000ac68b]                           dc.b $0f
[000ac68c]                           dc.w $f800
[000ac68e]                           dc.b $00
[000ac68f]                           dc.b $07
[000ac690]                           dc.w $f000
[000ac692]                           dc.b $00
[000ac693]                           dc.b $03
[000ac694]                           dc.w $e000
[000ac696]                           dc.b $00
[000ac697]                           dc.b $01
[000ac698]                           dc.w $c000
[000ac69a]                           dc.b $00
[000ac69b]                           dc.b $00
[000ac69c]                           dc.b $00
[000ac69d]                           dc.b $00
_DAT_I_REF:
[000ac69e]                           dc.b $00
[000ac69f]                           dc.b $00
[000ac6a0]                           dc.b $00
[000ac6a1]                           dc.b $00
[000ac6a2]                           dc.b $00
[000ac6a3]                           dc.b $00
[000ac6a4]                           dc.b $00
[000ac6a5]                           dc.b $00
[000ac6a6]                           dc.b $00
[000ac6a7]                           dc.b $00
[000ac6a8]                           dc.b $00
[000ac6a9]                           dc.b $00
[000ac6aa]                           dc.w $1fff
[000ac6ac]                           dc.w $fe00
[000ac6ae]                           dc.w $1fff
[000ac6b0]                           dc.w $fe00
[000ac6b2]                           dc.w $1800
[000ac6b4]                           dc.w $0600
[000ac6b6]                           dc.w $18e2
[000ac6b8]                           dc.w $2600
[000ac6ba]                           dc.w $1912
[000ac6bc]                           dc.w $4600
[000ac6be]                           dc.w $1912
[000ac6c0]                           dc.w $8600
[000ac6c2]                           dc.w $1913
[000ac6c4]                           dc.w $8700
[000ac6c6]                           dc.w $1912
[000ac6c8]                           dc.w $4680
[000ac6ca]                           dc.w $18e2
[000ac6cc]                           dc.w $2640
[000ac6ce]                           dc.w $1800
[000ac6d0]                           dc.w $0620
[000ac6d2]                           dc.w $1fff
[000ac6d4]                           dc.w $fe10
[000ac6d6]                           dc.w $1fff
[000ac6d8]                           dc.w $fe08
[000ac6da]                           dc.w $1800
[000ac6dc]                           dc.w $c904
[000ac6de]                           dc.w $3200
[000ac6e0]                           dc.w $920c
[000ac6e2]                           dc.w $3101
[000ac6e4]                           dc.w $f418
[000ac6e6]                           dc.w $1886
[000ac6e8]                           dc.w $ac30
[000ac6ea]                           dc.w $0c4d
[000ac6ec]                           dc.w $f460
[000ac6ee]                           dc.w $062a
[000ac6f0]                           dc.w $3bf8
[000ac6f2]                           dc.w $031f
[000ac6f4]                           dc.w $fff8
[000ac6f6]                           dc.w $018b
[000ac6f8]                           dc.w $ebf8
[000ac6fa]                           dc.b $00
[000ac6fb]                           dc.b $c5
[000ac6fc]                           dc.w $57f8
[000ac6fe]                           dc.b $00
[000ac6ff]                           dc.b $63
[000ac700]                           dc.w $abf8
[000ac702]                           dc.b $00
[000ac703]                           dc.b $31
[000ac704]                           dc.w $f7f8
[000ac706]                           dc.b $00
[000ac707]                           dc.b $18
[000ac708]                           dc.w $0c00
[000ac70a]                           dc.b $00
[000ac70b]                           dc.b $0c
[000ac70c]                           dc.w $1800
[000ac70e]                           dc.b $00
[000ac70f]                           dc.b $06
[000ac710]                           dc.w $3000
[000ac712]                           dc.b $00
[000ac713]                           dc.b $03
[000ac714]                           dc.w $6000
[000ac716]                           dc.b $00
[000ac717]                           dc.b $01
[000ac718]                           dc.w $c000
[000ac71a]                           dc.b $00
[000ac71b]                           dc.b $00
[000ac71c]                           dc.b $00
[000ac71d]                           dc.b $00
I_REF:
[000ac71e] 000ac61e                  dc.l _MSK_I_REF
[000ac722] 000ac69e                  dc.l _DAT_I_REF
[000ac726] 000ab6fb                  dc.l TEXT_002
[000ac72a]                           dc.w $1000
[000ac72c]                           dc.b $00
[000ac72d]                           dc.b $00
[000ac72e]                           dc.b $00
[000ac72f]                           dc.b $00
[000ac730]                           dc.b $00
[000ac731]                           dc.b $00
[000ac732]                           dc.b $00
[000ac733]                           dc.b $00
[000ac734]                           dc.b $00
[000ac735]                           dc.b $20
[000ac736]                           dc.b $00
[000ac737]                           dc.b $20
[000ac738]                           dc.b $00
[000ac739]                           dc.b $08
[000ac73a]                           dc.b $00
[000ac73b]                           dc.b $08
[000ac73c]                           dc.b $00
[000ac73d]                           dc.b $00
[000ac73e]                           dc.b $00
[000ac73f]                           dc.b $00
[000ac740] 000ac608                  dc.l _C4_I_REF
_C4_I_SPEC:
[000ac744]                           dc.b $00
[000ac745]                           dc.b $04
[000ac746] 000abc4c                  dc.l $000abc4c ; no symbol found
[000ac74a] 000abe4c                  dc.l DATAS_06
[000ac74e]                           dc.b $00
[000ac74f]                           dc.b $00
[000ac750]                           dc.b $00
[000ac751]                           dc.b $00
[000ac752]                           dc.b $00
[000ac753]                           dc.b $00
[000ac754]                           dc.b $00
[000ac755]                           dc.b $00
[000ac756]                           dc.b $00
[000ac757]                           dc.b $00
[000ac758]                           dc.b $00
[000ac759]                           dc.b $00
_MSK_I_SPEC:
[000ac75a]                           dc.b $00
[000ac75b]                           dc.b $00
[000ac75c]                           dc.b $00
[000ac75d]                           dc.b $00
[000ac75e]                           dc.b $00
[000ac75f]                           dc.b $00
[000ac760]                           dc.b $00
[000ac761]                           dc.b $00
[000ac762]                           dc.b $00
[000ac763]                           dc.b $00
[000ac764]                           dc.b $00
[000ac765]                           dc.b $00
[000ac766]                           dc.w $1fff
[000ac768]                           dc.w $fe88
[000ac76a]                           dc.w $1fff
[000ac76c]                           dc.w $fe90
[000ac76e]                           dc.w $1fff
[000ac770]                           dc.w $fe80
[000ac772]                           dc.w $1fff
[000ac774]                           dc.w $fe00
[000ac776]                           dc.w $1fff
[000ac778]                           dc.w $feec
[000ac77a]                           dc.w $1fff
[000ac77c]                           dc.w $ffe0
[000ac77e]                           dc.w $1fff
[000ac780]                           dc.w $ffc0
[000ac782]                           dc.w $1fff
[000ac784]                           dc.w $ff90
[000ac786]                           dc.w $1fff
[000ac788]                           dc.w $ff08
[000ac78a]                           dc.w $1fff
[000ac78c]                           dc.w $fe00
[000ac78e]                           dc.w $1fff
[000ac790]                           dc.w $fc00
[000ac792]                           dc.w $1fff
[000ac794]                           dc.w $f800
[000ac796]                           dc.b $00
[000ac797]                           dc.b $00
[000ac798]                           dc.w $f000
[000ac79a]                           dc.b $00
[000ac79b]                           dc.b $01
[000ac79c]                           dc.w $e000
[000ac79e]                           dc.b $00
[000ac79f]                           dc.b $03
[000ac7a0]                           dc.w $c000
[000ac7a2]                           dc.b $00
[000ac7a3]                           dc.b $07
[000ac7a4]                           dc.w $8000
[000ac7a6]                           dc.b $00
[000ac7a7]                           dc.b $0f
[000ac7a8]                           dc.b $00
[000ac7a9]                           dc.b $00
[000ac7aa]                           dc.b $00
[000ac7ab]                           dc.b $1e
[000ac7ac]                           dc.b $00
[000ac7ad]                           dc.b $00
[000ac7ae]                           dc.w $043c
[000ac7b0]                           dc.b $00
[000ac7b1]                           dc.b $00
[000ac7b2]                           dc.w $0278
[000ac7b4]                           dc.b $00
[000ac7b5]                           dc.b $00
[000ac7b6]                           dc.b $00
[000ac7b7]                           dc.b $f0
[000ac7b8]                           dc.b $00
[000ac7b9]                           dc.b $00
[000ac7ba]                           dc.w $11e0
[000ac7bc]                           dc.b $00
[000ac7bd]                           dc.b $00
[000ac7be]                           dc.w $0bc0
[000ac7c0]                           dc.b $00
[000ac7c1]                           dc.b $00
[000ac7c2]                           dc.w $0380
[000ac7c4]                           dc.b $00
[000ac7c5]                           dc.b $00
[000ac7c6]                           dc.w $0320
[000ac7c8]                           dc.b $00
[000ac7c9]                           dc.b $00
[000ac7ca]                           dc.w $0910
[000ac7cc]                           dc.b $00
[000ac7cd]                           dc.b $00
[000ac7ce]                           dc.w $1100
[000ac7d0]                           dc.b $00
[000ac7d1]                           dc.b $00
[000ac7d2]                           dc.b $00
[000ac7d3]                           dc.b $00
[000ac7d4]                           dc.b $00
[000ac7d5]                           dc.b $00
[000ac7d6]                           dc.b $00
[000ac7d7]                           dc.b $00
[000ac7d8]                           dc.b $00
[000ac7d9]                           dc.b $00
_DAT_I_SPEC:
[000ac7da]                           dc.b $00
[000ac7db]                           dc.b $00
[000ac7dc]                           dc.b $00
[000ac7dd]                           dc.b $00
[000ac7de]                           dc.b $00
[000ac7df]                           dc.b $00
[000ac7e0]                           dc.b $00
[000ac7e1]                           dc.b $00
[000ac7e2]                           dc.b $00
[000ac7e3]                           dc.b $00
[000ac7e4]                           dc.b $00
[000ac7e5]                           dc.b $00
[000ac7e6]                           dc.w $1fff
[000ac7e8]                           dc.w $fe00
[000ac7ea]                           dc.w $1fff
[000ac7ec]                           dc.w $fe00
[000ac7ee]                           dc.w $1800
[000ac7f0]                           dc.w $0600
[000ac7f2]                           dc.w $18e2
[000ac7f4]                           dc.w $2600
[000ac7f6]                           dc.w $1912
[000ac7f8]                           dc.w $46e0
[000ac7fa]                           dc.w $1912
[000ac7fc]                           dc.w $85e0
[000ac7fe]                           dc.w $1913
[000ac800]                           dc.w $8240
[000ac802]                           dc.w $1912
[000ac804]                           dc.w $4480
[000ac806]                           dc.w $18e2
[000ac808]                           dc.w $0900
[000ac80a]                           dc.w $1800
[000ac80c]                           dc.w $1200
[000ac80e]                           dc.w $1fff
[000ac810]                           dc.w $bc00
[000ac812]                           dc.w $1fff
[000ac814]                           dc.w $7800
[000ac816]                           dc.b $00
[000ac817]                           dc.b $00
[000ac818]                           dc.w $9000
[000ac81a]                           dc.b $00
[000ac81b]                           dc.b $01
[000ac81c]                           dc.w $2000
[000ac81e]                           dc.b $00
[000ac81f]                           dc.b $02
[000ac820]                           dc.w $4000
[000ac822]                           dc.b $00
[000ac823]                           dc.b $04
[000ac824]                           dc.w $8000
[000ac826]                           dc.b $00
[000ac827]                           dc.b $0f
[000ac828]                           dc.b $00
[000ac829]                           dc.b $00
[000ac82a]                           dc.b $00
[000ac82b]                           dc.b $1e
[000ac82c]                           dc.b $00
[000ac82d]                           dc.b $00
[000ac82e]                           dc.b $00
[000ac82f]                           dc.b $24
[000ac830]                           dc.b $00
[000ac831]                           dc.b $00
[000ac832]                           dc.b $00
[000ac833]                           dc.b $48
[000ac834]                           dc.b $00
[000ac835]                           dc.b $00
[000ac836]                           dc.b $00
[000ac837]                           dc.b $90
[000ac838]                           dc.b $00
[000ac839]                           dc.b $00
[000ac83a]                           dc.w $0120
[000ac83c]                           dc.b $00
[000ac83d]                           dc.b $00
[000ac83e]                           dc.w $03c0
[000ac840]                           dc.b $00
[000ac841]                           dc.b $00
[000ac842]                           dc.w $0380
[000ac844]                           dc.b $00
[000ac845]                           dc.b $00
[000ac846]                           dc.w $0300
[000ac848]                           dc.b $00
[000ac849]                           dc.b $00
[000ac84a]                           dc.b $00
[000ac84b]                           dc.b $00
[000ac84c]                           dc.b $00
[000ac84d]                           dc.b $00
[000ac84e]                           dc.b $00
[000ac84f]                           dc.b $00
[000ac850]                           dc.b $00
[000ac851]                           dc.b $00
[000ac852]                           dc.b $00
[000ac853]                           dc.b $00
[000ac854]                           dc.b $00
[000ac855]                           dc.b $00
[000ac856]                           dc.b $00
[000ac857]                           dc.b $00
[000ac858]                           dc.b $00
[000ac859]                           dc.b $00
I_SPEC:
[000ac85a] 000ac75a                  dc.l _MSK_I_SPEC
[000ac85e] 000ac7da                  dc.l _DAT_I_SPEC
[000ac862] 000ab6fb                  dc.l TEXT_002
[000ac866]                           dc.w $1000
[000ac868]                           dc.b $00
[000ac869]                           dc.b $00
[000ac86a]                           dc.b $00
[000ac86b]                           dc.b $00
[000ac86c]                           dc.b $00
[000ac86d]                           dc.b $00
[000ac86e]                           dc.b $00
[000ac86f]                           dc.b $00
[000ac870]                           dc.b $00
[000ac871]                           dc.b $20
[000ac872]                           dc.b $00
[000ac873]                           dc.b $20
[000ac874]                           dc.b $00
[000ac875]                           dc.b $08
[000ac876]                           dc.b $00
[000ac877]                           dc.b $08
[000ac878]                           dc.b $00
[000ac879]                           dc.b $00
[000ac87a]                           dc.b $00
[000ac87b]                           dc.b $00
[000ac87c] 000ac744                  dc.l _C4_I_SPEC
_IMG_IMAGE_001:
[000ac880]                           dc.w $07ff
[000ac882]                           dc.w $ffff
[000ac884]                           dc.w $ff80
[000ac886]                           dc.w $0c00
[000ac888]                           dc.b $00
[000ac889]                           dc.b $00
[000ac88a]                           dc.b $00
[000ac88b]                           dc.b $c0
[000ac88c]                           dc.w $183f
[000ac88e]                           dc.w $f03f
[000ac890]                           dc.w $f060
[000ac892]                           dc.w $187f
[000ac894]                           dc.w $f860
[000ac896]                           dc.w $1860
[000ac898]                           dc.w $187f
[000ac89a]                           dc.w $f860
[000ac89c]                           dc.w $1860
[000ac89e]                           dc.w $187f
[000ac8a0]                           dc.w $f860
[000ac8a2]                           dc.w $1860
[000ac8a4]                           dc.w $187f
[000ac8a6]                           dc.w $f860
[000ac8a8]                           dc.w $1860
[000ac8aa]                           dc.w $187f
[000ac8ac]                           dc.w $f860
[000ac8ae]                           dc.w $1860
[000ac8b0]                           dc.w $187f
[000ac8b2]                           dc.w $f860
[000ac8b4]                           dc.w $1860
[000ac8b6]                           dc.w $187f
[000ac8b8]                           dc.w $f860
[000ac8ba]                           dc.w $1860
[000ac8bc]                           dc.w $187f
[000ac8be]                           dc.w $f860
[000ac8c0]                           dc.b $18
[000ac8c1]                           dc.b $60
[000ac8c2]                           dc.w $187f
[000ac8c4]                           dc.w $f860
[000ac8c6]                           dc.w $1860
[000ac8c8]                           dc.w $187f
[000ac8ca]                           dc.w $f860
[000ac8cc]                           dc.w $1860
[000ac8ce]                           dc.w $187f
[000ac8d0]                           dc.w $f860
[000ac8d2]                           dc.w $1860
[000ac8d4]                           dc.w $183f
[000ac8d6]                           dc.w $f03f
[000ac8d8]                           dc.w $f060
[000ac8da]                           dc.w $0c00
[000ac8dc]                           dc.b $00
[000ac8dd]                           dc.b $00
[000ac8de]                           dc.b $00
[000ac8df]                           dc.b $c0
[000ac8e0]                           dc.w $07ff
[000ac8e2]                           dc.w $ffff
[000ac8e4]                           dc.w $ff80
[000ac8e6]                           dc.b $00
[000ac8e7]                           dc.b $00
[000ac8e8]                           dc.b $00
[000ac8e9]                           dc.b $00
[000ac8ea]                           dc.b $00
[000ac8eb]                           dc.b $00
[000ac8ec]                           dc.w $3f30
[000ac8ee]                           dc.w $c787
[000ac8f0]                           dc.w $8fe0
[000ac8f2]                           dc.w $0c39
[000ac8f4]                           dc.w $cccc
[000ac8f6]                           dc.w $cc00
[000ac8f8]                           dc.w $0c36
[000ac8fa]                           dc.w $cfcc
[000ac8fc]                           dc.w $0f80
[000ac8fe]                           dc.w $0c30
[000ac900]                           dc.w $cccd
[000ac902]                           dc.w $cc00
[000ac904]                           dc.w $3f30
[000ac906]                           dc.w $ccc7
[000ac908]                           dc.w $cfe0
[000ac90a]                           dc.b $00
[000ac90b]                           dc.b $00
[000ac90c]                           dc.b $00
[000ac90d]                           dc.b $00
[000ac90e]                           dc.b $00
[000ac90f]                           dc.b $00
IMAGE_001:
[000ac910] 000ac880                  dc.l _IMG_IMAGE_001
[000ac914]                           dc.b $00
[000ac915]                           dc.b $06
[000ac916]                           dc.b $00
[000ac917]                           dc.b $18
[000ac918]                           dc.b $00
[000ac919]                           dc.b $00
[000ac91a]                           dc.b $00
[000ac91b]                           dc.b $00
[000ac91c]                           dc.b $00
[000ac91d]                           dc.b $01
PARTS:
[000ac91e]                           dc.w $ffff
[000ac920]                           dc.b $00
[000ac921]                           dc.b $01
[000ac922]                           dc.b $00
[000ac923]                           dc.b $a5
[000ac924]                           dc.b $00
[000ac925]                           dc.b $18
[000ac926]                           dc.b $00
[000ac927]                           dc.b $00
[000ac928]                           dc.b $00
[000ac929]                           dc.b $10
[000ac92a] 000ac18a                  dc.l A_3DBUTTON01
[000ac92e]                           dc.b $00
[000ac92f]                           dc.b $00
[000ac930]                           dc.b $00
[000ac931]                           dc.b $00
[000ac932]                           dc.b $00
[000ac933]                           dc.b $3b
[000ac934]                           dc.b $00
[000ac935]                           dc.b $14
_01_PARTS:
[000ac936]                           dc.b $00
[000ac937]                           dc.b $03
[000ac938]                           dc.w $ffff
[000ac93a]                           dc.w $ffff
[000ac93c]                           dc.b $00
[000ac93d]                           dc.b $1a
[000ac93e]                           dc.w $2000
[000ac940]                           dc.b $00
[000ac941]                           dc.b $00
[000ac942] 000ab71b                  dc.l TEXT_039
[000ac946]                           dc.w $0800
[000ac948]                           dc.w $0800
[000ac94a]                           dc.b $00
[000ac94b]                           dc.b $0a
[000ac94c]                           dc.b $00
[000ac94d]                           dc.b $01
_01aPARTS:
[000ac94e]                           dc.b $00
[000ac94f]                           dc.b $00
[000ac950]                           dc.b $00
[000ac951]                           dc.b $00
[000ac952]                           dc.b $00
[000ac953]                           dc.b $00
[000ac954]                           dc.b $00
[000ac955]                           dc.b $00
[000ac956]                           dc.w $8000
[000ac958]                           dc.b $00
[000ac959]                           dc.b $00
[000ac95a] 000af032                  dc.l part_palette
[000ac95e]                           dc.b $00
[000ac95f]                           dc.b $00
[000ac960]                           dc.b $00
[000ac961]                           dc.b $00
[000ac962]                           dc.b $00
[000ac963]                           dc.b $00
[000ac964]                           dc.w $2af8
_03_PARTS:
[000ac966]                           dc.b $00
[000ac967]                           dc.b $05
[000ac968]                           dc.w $ffff
[000ac96a]                           dc.w $ffff
[000ac96c]                           dc.b $00
[000ac96d]                           dc.b $1c
[000ac96e]                           dc.w $2000
[000ac970]                           dc.b $00
[000ac971]                           dc.b $00
[000ac972] 000ab714                  dc.l TEXT_038
[000ac976]                           dc.b $00
[000ac977]                           dc.b $0c
[000ac978]                           dc.b $00
[000ac979]                           dc.b $01
[000ac97a]                           dc.b $00
[000ac97b]                           dc.b $08
[000ac97c]                           dc.b $00
[000ac97d]                           dc.b $01
_03aPARTS:
[000ac97e]                           dc.b $00
[000ac97f]                           dc.b $00
[000ac980]                           dc.b $00
[000ac981]                           dc.b $00
[000ac982]                           dc.b $00
[000ac983]                           dc.b $00
[000ac984]                           dc.b $00
[000ac985]                           dc.b $00
[000ac986]                           dc.w $8000
[000ac988]                           dc.b $00
[000ac989]                           dc.b $00
[000ac98a] 000af032                  dc.l part_palette
[000ac98e]                           dc.b $00
[000ac98f]                           dc.b $00
[000ac990]                           dc.b $00
[000ac991]                           dc.b $01
[000ac992]                           dc.b $00
[000ac993]                           dc.b $00
[000ac994]                           dc.w $2af8
_05_PARTS:
[000ac996]                           dc.b $00
[000ac997]                           dc.b $07
[000ac998]                           dc.w $ffff
[000ac99a]                           dc.w $ffff
[000ac99c]                           dc.b $00
[000ac99d]                           dc.b $1d
[000ac99e]                           dc.w $2000
[000ac9a0]                           dc.b $00
[000ac9a1]                           dc.b $00
[000ac9a2] 000ac152                  dc.l TEDINFO_015
[000ac9a6]                           dc.b $00
[000ac9a7]                           dc.b $14
[000ac9a8]                           dc.b $00
[000ac9a9]                           dc.b $01
[000ac9aa]                           dc.b $00
[000ac9ab]                           dc.b $0a
[000ac9ac]                           dc.b $00
[000ac9ad]                           dc.b $01
_05aPARTS:
[000ac9ae]                           dc.b $00
[000ac9af]                           dc.b $00
[000ac9b0]                           dc.b $00
[000ac9b1]                           dc.b $00
[000ac9b2]                           dc.b $00
[000ac9b3]                           dc.b $00
[000ac9b4]                           dc.b $00
[000ac9b5]                           dc.b $00
[000ac9b6]                           dc.w $8000
[000ac9b8]                           dc.b $00
[000ac9b9]                           dc.b $00
[000ac9ba] 000af032                  dc.l part_palette
[000ac9be]                           dc.b $00
[000ac9bf]                           dc.b $00
[000ac9c0]                           dc.b $00
[000ac9c1]                           dc.b $02
[000ac9c2]                           dc.b $00
[000ac9c3]                           dc.b $00
[000ac9c4]                           dc.w $2af8
_07_PARTS:
[000ac9c6]                           dc.b $00
[000ac9c7]                           dc.b $09
[000ac9c8]                           dc.w $ffff
[000ac9ca]                           dc.w $ffff
[000ac9cc]                           dc.b $00
[000ac9cd]                           dc.b $1e
[000ac9ce]                           dc.w $2000
[000ac9d0]                           dc.b $00
[000ac9d1]                           dc.b $00
[000ac9d2] 000ac152                  dc.l TEDINFO_015
[000ac9d6]                           dc.b $00
[000ac9d7]                           dc.b $1f
[000ac9d8]                           dc.b $00
[000ac9d9]                           dc.b $01
[000ac9da]                           dc.b $00
[000ac9db]                           dc.b $0a
[000ac9dc]                           dc.b $00
[000ac9dd]                           dc.b $01
_07aPARTS:
[000ac9de]                           dc.b $00
[000ac9df]                           dc.b $00
[000ac9e0]                           dc.b $00
[000ac9e1]                           dc.b $00
[000ac9e2]                           dc.b $00
[000ac9e3]                           dc.b $00
[000ac9e4]                           dc.b $00
[000ac9e5]                           dc.b $00
[000ac9e6]                           dc.w $8000
[000ac9e8]                           dc.b $00
[000ac9e9]                           dc.b $00
[000ac9ea] 000af032                  dc.l part_palette
[000ac9ee]                           dc.b $00
[000ac9ef]                           dc.b $00
[000ac9f0]                           dc.b $00
[000ac9f1]                           dc.b $03
[000ac9f2]                           dc.b $00
[000ac9f3]                           dc.b $00
[000ac9f4]                           dc.w $2af8
_09_PARTS:
[000ac9f6]                           dc.b $00
[000ac9f7]                           dc.b $0b
[000ac9f8]                           dc.w $ffff
[000ac9fa]                           dc.w $ffff
[000ac9fc]                           dc.b $00
[000ac9fd]                           dc.b $19
[000ac9fe]                           dc.w $2000
[000aca00]                           dc.b $00
[000aca01]                           dc.b $00
[000aca02]                           dc.b $00
[000aca03]                           dc.b $ff
[000aca04]                           dc.w $1101
[000aca06]                           dc.b $00
[000aca07]                           dc.b $2b
[000aca08]                           dc.b $00
[000aca09]                           dc.b $01
[000aca0a]                           dc.b $00
[000aca0b]                           dc.b $0a
[000aca0c]                           dc.b $00
[000aca0d]                           dc.b $01
_09aPARTS:
[000aca0e]                           dc.b $00
[000aca0f]                           dc.b $00
[000aca10]                           dc.b $00
[000aca11]                           dc.b $00
[000aca12]                           dc.b $00
[000aca13]                           dc.b $00
[000aca14]                           dc.b $00
[000aca15]                           dc.b $00
[000aca16]                           dc.w $8000
[000aca18]                           dc.b $00
[000aca19]                           dc.b $00
[000aca1a] 000af032                  dc.l part_palette
[000aca1e]                           dc.b $00
[000aca1f]                           dc.b $00
[000aca20]                           dc.b $00
[000aca21]                           dc.b $04
[000aca22]                           dc.b $00
[000aca23]                           dc.b $00
[000aca24]                           dc.w $2af8
_11_PARTS:
[000aca26]                           dc.b $00
[000aca27]                           dc.b $0d
[000aca28]                           dc.w $ffff
[000aca2a]                           dc.w $ffff
[000aca2c]                           dc.b $00
[000aca2d]                           dc.b $14
[000aca2e]                           dc.w $2000
[000aca30]                           dc.b $00
[000aca31]                           dc.b $00
[000aca32]                           dc.b $00
[000aca33]                           dc.b $ff
[000aca34]                           dc.w $1101
[000aca36]                           dc.b $00
[000aca37]                           dc.b $01
[000aca38]                           dc.b $00
[000aca39]                           dc.b $03
[000aca3a]                           dc.b $00
[000aca3b]                           dc.b $0a
[000aca3c]                           dc.b $00
[000aca3d]                           dc.b $01
_11aPARTS:
[000aca3e]                           dc.b $00
[000aca3f]                           dc.b $00
[000aca40]                           dc.b $00
[000aca41]                           dc.b $00
[000aca42]                           dc.b $00
[000aca43]                           dc.b $00
[000aca44]                           dc.b $00
[000aca45]                           dc.b $00
[000aca46]                           dc.w $8000
[000aca48]                           dc.b $00
[000aca49]                           dc.b $00
[000aca4a] 000af032                  dc.l part_palette
[000aca4e]                           dc.b $00
[000aca4f]                           dc.b $00
[000aca50]                           dc.b $00
[000aca51]                           dc.b $05
[000aca52]                           dc.b $00
[000aca53]                           dc.b $00
[000aca54]                           dc.w $2af8
_13_PARTS:
[000aca56]                           dc.b $00
[000aca57]                           dc.b $0f
[000aca58]                           dc.w $ffff
[000aca5a]                           dc.w $ffff
[000aca5c]                           dc.b $00
[000aca5d]                           dc.b $15
[000aca5e]                           dc.w $2000
[000aca60]                           dc.b $00
[000aca61]                           dc.b $00
[000aca62] 000ac16e                  dc.l TEDINFO_069
[000aca66]                           dc.b $00
[000aca67]                           dc.b $0c
[000aca68]                           dc.b $00
[000aca69]                           dc.b $03
[000aca6a]                           dc.b $00
[000aca6b]                           dc.b $04
[000aca6c]                           dc.b $00
[000aca6d]                           dc.b $01
_13aPARTS:
[000aca6e]                           dc.b $00
[000aca6f]                           dc.b $00
[000aca70]                           dc.b $00
[000aca71]                           dc.b $00
[000aca72]                           dc.b $00
[000aca73]                           dc.b $00
[000aca74]                           dc.b $00
[000aca75]                           dc.b $00
[000aca76]                           dc.w $8000
[000aca78]                           dc.b $00
[000aca79]                           dc.b $00
[000aca7a] 000af032                  dc.l part_palette
[000aca7e]                           dc.b $00
[000aca7f]                           dc.b $00
[000aca80]                           dc.b $00
[000aca81]                           dc.b $06
[000aca82]                           dc.b $00
[000aca83]                           dc.b $00
[000aca84]                           dc.w $2af8
_15_PARTS:
[000aca86]                           dc.b $00
[000aca87]                           dc.b $11
[000aca88]                           dc.w $ffff
[000aca8a]                           dc.w $ffff
[000aca8c]                           dc.b $00
[000aca8d]                           dc.b $1b
[000aca8e]                           dc.w $2000
[000aca90]                           dc.b $00
[000aca91]                           dc.b $00
[000aca92]                           dc.w $43ff
[000aca94]                           dc.w $1101
[000aca96]                           dc.b $00
[000aca97]                           dc.b $15
[000aca98]                           dc.b $00
[000aca99]                           dc.b $03
[000aca9a]                           dc.b $00
[000aca9b]                           dc.b $08
[000aca9c]                           dc.b $00
[000aca9d]                           dc.b $01
_15aPARTS:
[000aca9e]                           dc.b $00
[000aca9f]                           dc.b $00
[000acaa0]                           dc.b $00
[000acaa1]                           dc.b $00
[000acaa2]                           dc.b $00
[000acaa3]                           dc.b $00
[000acaa4]                           dc.b $00
[000acaa5]                           dc.b $00
[000acaa6]                           dc.w $8000
[000acaa8]                           dc.b $00
[000acaa9]                           dc.b $00
[000acaaa] 000af032                  dc.l part_palette
[000acaae]                           dc.b $00
[000acaaf]                           dc.b $00
[000acab0]                           dc.b $00
[000acab1]                           dc.b $07
[000acab2]                           dc.b $00
[000acab3]                           dc.b $00
[000acab4]                           dc.w $2af8
_17_PARTS:
[000acab6]                           dc.b $00
[000acab7]                           dc.b $13
[000acab8]                           dc.w $ffff
[000acaba]                           dc.w $ffff
[000acabc]                           dc.b $00
[000acabd]                           dc.b $16
[000acabe]                           dc.w $2000
[000acac0]                           dc.b $00
[000acac1]                           dc.b $00
[000acac2] 000ac16e                  dc.l TEDINFO_069
[000acac6]                           dc.b $00
[000acac7]                           dc.b $1f
[000acac8]                           dc.b $00
[000acac9]                           dc.b $03
[000acaca]                           dc.b $00
[000acacb]                           dc.b $0a
[000acacc]                           dc.b $00
[000acacd]                           dc.b $01
_17aPARTS:
[000acace]                           dc.b $00
[000acacf]                           dc.b $00
[000acad0]                           dc.b $00
[000acad1]                           dc.b $00
[000acad2]                           dc.b $00
[000acad3]                           dc.b $00
[000acad4]                           dc.b $00
[000acad5]                           dc.b $00
[000acad6]                           dc.w $8000
[000acad8]                           dc.b $00
[000acad9]                           dc.b $00
[000acada] 000af032                  dc.l part_palette
[000acade]                           dc.b $00
[000acadf]                           dc.b $00
[000acae0]                           dc.b $00
[000acae1]                           dc.b $08
[000acae2]                           dc.b $00
[000acae3]                           dc.b $00
[000acae4]                           dc.w $2af8
_19_PARTS:
[000acae6]                           dc.b $00
[000acae7]                           dc.b $15
[000acae8]                           dc.w $ffff
[000acaea]                           dc.w $ffff
[000acaec]                           dc.b $00
[000acaed]                           dc.b $1a
[000acaee]                           dc.w $2000
[000acaf0]                           dc.b $00
[000acaf1]                           dc.b $00
[000acaf2] 000ab722                  dc.l TEXT_040
[000acaf6]                           dc.b $00
[000acaf7]                           dc.b $2b
[000acaf8]                           dc.b $00
[000acaf9]                           dc.b $03
[000acafa]                           dc.b $00
[000acafb]                           dc.b $0a
[000acafc]                           dc.b $00
[000acafd]                           dc.b $01
_19aPARTS:
[000acafe]                           dc.b $00
[000acaff]                           dc.b $00
[000acb00]                           dc.b $00
[000acb01]                           dc.b $00
[000acb02]                           dc.b $00
[000acb03]                           dc.b $00
[000acb04]                           dc.b $00
[000acb05]                           dc.b $00
[000acb06]                           dc.w $8000
[000acb08]                           dc.b $00
[000acb09]                           dc.b $00
[000acb0a] 000af032                  dc.l part_palette
[000acb0e]                           dc.b $00
[000acb0f]                           dc.b $00
[000acb10]                           dc.b $00
[000acb11]                           dc.b $09
[000acb12]                           dc.b $00
[000acb13]                           dc.b $00
[000acb14]                           dc.w $2af8
_21_PARTS:
[000acb16]                           dc.b $00
[000acb17]                           dc.b $17
[000acb18]                           dc.w $ffff
[000acb1a]                           dc.w $ffff
[000acb1c]                           dc.b $00
[000acb1d]                           dc.b $17
[000acb1e]                           dc.w $2000
[000acb20]                           dc.b $00
[000acb21]                           dc.b $00
[000acb22] 000ac910                  dc.l IMAGE_001
[000acb26]                           dc.b $00
[000acb27]                           dc.b $01
[000acb28]                           dc.b $00
[000acb29]                           dc.b $05
[000acb2a]                           dc.b $00
[000acb2b]                           dc.b $06
[000acb2c]                           dc.b $00
[000acb2d]                           dc.b $02
_21aPARTS:
[000acb2e]                           dc.b $00
[000acb2f]                           dc.b $00
[000acb30]                           dc.b $00
[000acb31]                           dc.b $00
[000acb32]                           dc.b $00
[000acb33]                           dc.b $00
[000acb34]                           dc.b $00
[000acb35]                           dc.b $00
[000acb36]                           dc.w $8000
[000acb38]                           dc.b $00
[000acb39]                           dc.b $00
[000acb3a] 000af032                  dc.l part_palette
[000acb3e]                           dc.b $00
[000acb3f]                           dc.b $00
[000acb40]                           dc.b $00
[000acb41]                           dc.b $0a
[000acb42]                           dc.b $00
[000acb43]                           dc.b $00
[000acb44]                           dc.w $2af8
_23_PARTS:
[000acb46]                           dc.b $00
[000acb47]                           dc.b $19
[000acb48]                           dc.w $ffff
[000acb4a]                           dc.w $ffff
[000acb4c]                           dc.b $00
[000acb4d]                           dc.b $1f
[000acb4e]                           dc.w $2000
[000acb50]                           dc.b $00
[000acb51]                           dc.b $00
[000acb52] 000ac36a                  dc.l ICON_001
[000acb56]                           dc.b $00
[000acb57]                           dc.b $0c
[000acb58]                           dc.b $00
[000acb59]                           dc.b $05
[000acb5a]                           dc.b $00
[000acb5b]                           dc.b $06
[000acb5c]                           dc.b $00
[000acb5d]                           dc.b $02
_23aPARTS:
[000acb5e]                           dc.b $00
[000acb5f]                           dc.b $00
[000acb60]                           dc.b $00
[000acb61]                           dc.b $00
[000acb62]                           dc.b $00
[000acb63]                           dc.b $00
[000acb64]                           dc.b $00
[000acb65]                           dc.b $00
[000acb66]                           dc.w $8000
[000acb68]                           dc.b $00
[000acb69]                           dc.b $00
[000acb6a] 000af032                  dc.l part_palette
[000acb6e]                           dc.b $00
[000acb6f]                           dc.b $00
[000acb70]                           dc.b $00
[000acb71]                           dc.b $0b
[000acb72]                           dc.b $00
[000acb73]                           dc.b $00
[000acb74]                           dc.w $2af8
_25_PARTS:
[000acb76]                           dc.b $00
[000acb77]                           dc.b $1b
[000acb78]                           dc.w $ffff
[000acb7a]                           dc.w $ffff
[000acb7c]                           dc.b $00
[000acb7d]                           dc.b $1a
[000acb7e]                           dc.w $2000
[000acb80]                           dc.b $00
[000acb81]                           dc.b $00
[000acb82] 000ab72d                  dc.l TEXT_258
[000acb86]                           dc.b $00
[000acb87]                           dc.b $15
[000acb88]                           dc.b $00
[000acb89]                           dc.b $05
[000acb8a]                           dc.b $00
[000acb8b]                           dc.b $0a
[000acb8c]                           dc.b $00
[000acb8d]                           dc.b $02
_25aPARTS:
[000acb8e]                           dc.b $00
[000acb8f]                           dc.b $00
[000acb90]                           dc.b $00
[000acb91]                           dc.b $00
[000acb92]                           dc.b $00
[000acb93]                           dc.b $00
[000acb94]                           dc.b $00
[000acb95]                           dc.b $00
[000acb96]                           dc.w $8000
[000acb98]                           dc.b $00
[000acb99]                           dc.b $00
[000acb9a] 000af032                  dc.l part_palette
[000acb9e]                           dc.b $00
[000acb9f]                           dc.b $00
[000acba0]                           dc.b $00
[000acba1]                           dc.b $0c
[000acba2]                           dc.b $00
[000acba3]                           dc.b $00
[000acba4]                           dc.w $2af8
_27_PARTS:
[000acba6]                           dc.b $00
[000acba7]                           dc.b $1e
[000acba8]                           dc.b $00
[000acba9]                           dc.b $1c
[000acbaa]                           dc.b $00
[000acbab]                           dc.b $1c
[000acbac]                           dc.b $00
[000acbad]                           dc.b $19
[000acbae]                           dc.b $00
[000acbaf]                           dc.b $80
[000acbb0]                           dc.b $00
[000acbb1]                           dc.b $00
[000acbb2]                           dc.b $00
[000acbb3]                           dc.b $01
[000acbb4]                           dc.w $1101
[000acbb6]                           dc.b $00
[000acbb7]                           dc.b $02
[000acbb8]                           dc.b $00
[000acbb9]                           dc.b $08
[000acbba]                           dc.b $00
[000acbbb]                           dc.b $05
[000acbbc]                           dc.b $00
[000acbbd]                           dc.b $01
_28_PARTS:
[000acbbe]                           dc.b $00
[000acbbf]                           dc.b $1b
[000acbc0]                           dc.w $ffff
[000acbc2]                           dc.w $ffff
[000acbc4]                           dc.b $00
[000acbc5]                           dc.b $19
[000acbc6]                           dc.w $2000
[000acbc8]                           dc.b $00
[000acbc9]                           dc.b $00
[000acbca]                           dc.b $00
[000acbcb]                           dc.b $00
[000acbcc]                           dc.w $1101
[000acbce]                           dc.b $00
[000acbcf]                           dc.b $00
[000acbd0]                           dc.b $00
[000acbd1]                           dc.b $00
[000acbd2]                           dc.b $00
[000acbd3]                           dc.b $02
[000acbd4]                           dc.b $00
[000acbd5]                           dc.b $01
_28aPARTS:
[000acbd6]                           dc.b $00
[000acbd7]                           dc.b $00
[000acbd8]                           dc.b $00
[000acbd9]                           dc.b $00
[000acbda]                           dc.b $00
[000acbdb]                           dc.b $00
[000acbdc]                           dc.b $00
[000acbdd]                           dc.b $00
[000acbde]                           dc.w $8000
[000acbe0]                           dc.b $00
[000acbe1]                           dc.b $00
[000acbe2] 000af032                  dc.l part_palette
[000acbe6]                           dc.b $00
[000acbe7]                           dc.b $00
[000acbe8]                           dc.b $00
[000acbe9]                           dc.b $0d
[000acbea]                           dc.b $00
[000acbeb]                           dc.b $00
[000acbec]                           dc.w $2af8
_30_PARTS:
[000acbee]                           dc.b $00
[000acbef]                           dc.b $21
[000acbf0]                           dc.b $00
[000acbf1]                           dc.b $1f
[000acbf2]                           dc.b $00
[000acbf3]                           dc.b $1f
[000acbf4]                           dc.b $00
[000acbf5]                           dc.b $19
[000acbf6]                           dc.b $00
[000acbf7]                           dc.b $80
[000acbf8]                           dc.b $00
[000acbf9]                           dc.b $00
[000acbfa]                           dc.b $00
[000acbfb]                           dc.b $01
[000acbfc]                           dc.w $1101
[000acbfe]                           dc.b $00
[000acbff]                           dc.b $09
[000acc00]                           dc.b $00
[000acc01]                           dc.b $08
[000acc02]                           dc.b $00
[000acc03]                           dc.b $05
[000acc04]                           dc.b $00
[000acc05]                           dc.b $01
_31_PARTS:
[000acc06]                           dc.b $00
[000acc07]                           dc.b $1e
[000acc08]                           dc.w $ffff
[000acc0a]                           dc.w $ffff
[000acc0c]                           dc.b $00
[000acc0d]                           dc.b $19
[000acc0e]                           dc.w $2000
[000acc10]                           dc.b $00
[000acc11]                           dc.b $00
[000acc12]                           dc.b $00
[000acc13]                           dc.b $00
[000acc14]                           dc.w $1101
[000acc16]                           dc.b $00
[000acc17]                           dc.b $00
[000acc18]                           dc.b $00
[000acc19]                           dc.b $00
[000acc1a]                           dc.b $00
[000acc1b]                           dc.b $02
[000acc1c]                           dc.b $00
[000acc1d]                           dc.b $01
_31aPARTS:
[000acc1e]                           dc.b $00
[000acc1f]                           dc.b $00
[000acc20]                           dc.b $00
[000acc21]                           dc.b $00
[000acc22]                           dc.b $00
[000acc23]                           dc.b $00
[000acc24]                           dc.b $00
[000acc25]                           dc.b $00
[000acc26]                           dc.w $8000
[000acc28]                           dc.b $00
[000acc29]                           dc.b $00
[000acc2a] 000af032                  dc.l part_palette
[000acc2e]                           dc.b $00
[000acc2f]                           dc.b $00
[000acc30]                           dc.b $00
[000acc31]                           dc.b $0e
[000acc32]                           dc.b $00
[000acc33]                           dc.b $00
[000acc34]                           dc.w $2af8
_33_PARTS:
[000acc36]                           dc.b $00
[000acc37]                           dc.b $24
[000acc38]                           dc.b $00
[000acc39]                           dc.b $22
[000acc3a]                           dc.b $00
[000acc3b]                           dc.b $22
[000acc3c]                           dc.b $00
[000acc3d]                           dc.b $19
[000acc3e]                           dc.b $00
[000acc3f]                           dc.b $80
[000acc40]                           dc.b $00
[000acc41]                           dc.b $00
[000acc42]                           dc.b $00
[000acc43]                           dc.b $01
[000acc44]                           dc.w $1101
[000acc46]                           dc.b $00
[000acc47]                           dc.b $10
[000acc48]                           dc.b $00
[000acc49]                           dc.b $08
[000acc4a]                           dc.b $00
[000acc4b]                           dc.b $05
[000acc4c]                           dc.b $00
[000acc4d]                           dc.b $01
_34_PARTS:
[000acc4e]                           dc.b $00
[000acc4f]                           dc.b $21
[000acc50]                           dc.w $ffff
[000acc52]                           dc.w $ffff
[000acc54]                           dc.b $00
[000acc55]                           dc.b $19
[000acc56]                           dc.w $2000
[000acc58]                           dc.b $00
[000acc59]                           dc.b $00
[000acc5a]                           dc.b $00
[000acc5b]                           dc.b $00
[000acc5c]                           dc.w $1101
[000acc5e]                           dc.b $00
[000acc5f]                           dc.b $00
[000acc60]                           dc.b $00
[000acc61]                           dc.b $00
[000acc62]                           dc.b $00
[000acc63]                           dc.b $02
[000acc64]                           dc.b $00
[000acc65]                           dc.b $01
_34aPARTS:
[000acc66]                           dc.b $00
[000acc67]                           dc.b $00
[000acc68]                           dc.b $00
[000acc69]                           dc.b $00
[000acc6a]                           dc.b $00
[000acc6b]                           dc.b $00
[000acc6c]                           dc.b $00
[000acc6d]                           dc.b $00
[000acc6e]                           dc.w $8000
[000acc70]                           dc.b $00
[000acc71]                           dc.b $00
[000acc72] 000af032                  dc.l part_palette
[000acc76]                           dc.b $00
[000acc77]                           dc.b $00
[000acc78]                           dc.b $00
[000acc79]                           dc.b $0f
[000acc7a]                           dc.b $00
[000acc7b]                           dc.b $00
[000acc7c]                           dc.w $2af8
_36_PARTS:
[000acc7e]                           dc.b $00
[000acc7f]                           dc.b $27
[000acc80]                           dc.b $00
[000acc81]                           dc.b $25
[000acc82]                           dc.b $00
[000acc83]                           dc.b $25
[000acc84]                           dc.b $00
[000acc85]                           dc.b $19
[000acc86]                           dc.b $00
[000acc87]                           dc.b $80
[000acc88]                           dc.b $00
[000acc89]                           dc.b $00
[000acc8a]                           dc.b $00
[000acc8b]                           dc.b $01
[000acc8c]                           dc.w $1101
[000acc8e]                           dc.b $00
[000acc8f]                           dc.b $17
[000acc90]                           dc.b $00
[000acc91]                           dc.b $08
[000acc92]                           dc.b $00
[000acc93]                           dc.b $05
[000acc94]                           dc.b $00
[000acc95]                           dc.b $01
_37_PARTS:
[000acc96]                           dc.b $00
[000acc97]                           dc.b $24
[000acc98]                           dc.w $ffff
[000acc9a]                           dc.w $ffff
[000acc9c]                           dc.b $00
[000acc9d]                           dc.b $19
[000acc9e]                           dc.w $2000
[000acca0]                           dc.b $00
[000acca1]                           dc.b $00
[000acca2]                           dc.b $00
[000acca3]                           dc.b $00
[000acca4]                           dc.w $1101
[000acca6]                           dc.b $00
[000acca7]                           dc.b $00
[000acca8]                           dc.b $00
[000acca9]                           dc.b $00
[000accaa]                           dc.b $00
[000accab]                           dc.b $02
[000accac]                           dc.b $00
[000accad]                           dc.b $01
_37aPARTS:
[000accae]                           dc.b $00
[000accaf]                           dc.b $00
[000accb0]                           dc.b $00
[000accb1]                           dc.b $00
[000accb2]                           dc.b $00
[000accb3]                           dc.b $00
[000accb4]                           dc.b $00
[000accb5]                           dc.b $00
[000accb6]                           dc.w $8000
[000accb8]                           dc.b $00
[000accb9]                           dc.b $00
[000accba] 000af032                  dc.l part_palette
[000accbe]                           dc.b $00
[000accbf]                           dc.b $00
[000accc0]                           dc.b $00
[000accc1]                           dc.b $10
[000accc2]                           dc.b $00
[000accc3]                           dc.b $00
[000accc4]                           dc.w $2af8
_39_PARTS:
[000accc6]                           dc.b $00
[000accc7]                           dc.b $2a
[000accc8]                           dc.b $00
[000accc9]                           dc.b $28
[000accca]                           dc.b $00
[000acccb]                           dc.b $28
[000acccc]                           dc.b $00
[000acccd]                           dc.b $19
[000accce]                           dc.b $00
[000acccf]                           dc.b $80
[000accd0]                           dc.b $00
[000accd1]                           dc.b $00
[000accd2]                           dc.b $00
[000accd3]                           dc.b $01
[000accd4]                           dc.w $1101
[000accd6]                           dc.b $00
[000accd7]                           dc.b $1e
[000accd8]                           dc.b $00
[000accd9]                           dc.b $08
[000accda]                           dc.b $00
[000accdb]                           dc.b $05
[000accdc]                           dc.b $00
[000accdd]                           dc.b $01
_40_PARTS:
[000accde]                           dc.b $00
[000accdf]                           dc.b $27
[000acce0]                           dc.w $ffff
[000acce2]                           dc.w $ffff
[000acce4]                           dc.b $00
[000acce5]                           dc.b $19
[000acce6]                           dc.w $2000
[000acce8]                           dc.b $00
[000acce9]                           dc.b $00
[000accea]                           dc.b $00
[000acceb]                           dc.b $00
[000accec]                           dc.w $1101
[000accee]                           dc.b $00
[000accef]                           dc.b $00
[000accf0]                           dc.b $00
[000accf1]                           dc.b $00
[000accf2]                           dc.b $00
[000accf3]                           dc.b $02
[000accf4]                           dc.b $00
[000accf5]                           dc.b $01
_40aPARTS:
[000accf6]                           dc.b $00
[000accf7]                           dc.b $00
[000accf8]                           dc.b $00
[000accf9]                           dc.b $00
[000accfa]                           dc.b $00
[000accfb]                           dc.b $00
[000accfc]                           dc.b $00
[000accfd]                           dc.b $00
[000accfe]                           dc.w $8000
[000acd00]                           dc.b $00
[000acd01]                           dc.b $00
[000acd02] 000af032                  dc.l part_palette
[000acd06]                           dc.b $00
[000acd07]                           dc.b $00
[000acd08]                           dc.b $00
[000acd09]                           dc.b $11
[000acd0a]                           dc.b $00
[000acd0b]                           dc.b $00
[000acd0c]                           dc.w $2af8
_42_PARTS:
[000acd0e]                           dc.b $00
[000acd0f]                           dc.b $2d
[000acd10]                           dc.b $00
[000acd11]                           dc.b $2b
[000acd12]                           dc.b $00
[000acd13]                           dc.b $2b
[000acd14]                           dc.b $00
[000acd15]                           dc.b $19
[000acd16]                           dc.b $00
[000acd17]                           dc.b $80
[000acd18]                           dc.b $00
[000acd19]                           dc.b $00
[000acd1a]                           dc.b $00
[000acd1b]                           dc.b $01
[000acd1c]                           dc.w $1101
[000acd1e]                           dc.b $00
[000acd1f]                           dc.b $25
[000acd20]                           dc.b $00
[000acd21]                           dc.b $08
[000acd22]                           dc.b $00
[000acd23]                           dc.b $05
[000acd24]                           dc.b $00
[000acd25]                           dc.b $01
_43_PARTS:
[000acd26]                           dc.b $00
[000acd27]                           dc.b $2a
[000acd28]                           dc.w $ffff
[000acd2a]                           dc.w $ffff
[000acd2c]                           dc.b $00
[000acd2d]                           dc.b $19
[000acd2e]                           dc.w $2000
[000acd30]                           dc.b $00
[000acd31]                           dc.b $00
[000acd32]                           dc.b $00
[000acd33]                           dc.b $00
[000acd34]                           dc.w $1101
[000acd36]                           dc.b $00
[000acd37]                           dc.b $00
[000acd38]                           dc.b $00
[000acd39]                           dc.b $00
[000acd3a]                           dc.b $00
[000acd3b]                           dc.b $02
[000acd3c]                           dc.b $00
[000acd3d]                           dc.b $01
_43aPARTS:
[000acd3e]                           dc.b $00
[000acd3f]                           dc.b $00
[000acd40]                           dc.b $00
[000acd41]                           dc.b $00
[000acd42]                           dc.b $00
[000acd43]                           dc.b $00
[000acd44]                           dc.b $00
[000acd45]                           dc.b $00
[000acd46]                           dc.w $8000
[000acd48]                           dc.b $00
[000acd49]                           dc.b $00
[000acd4a] 000af032                  dc.l part_palette
[000acd4e]                           dc.b $00
[000acd4f]                           dc.b $00
[000acd50]                           dc.b $00
[000acd51]                           dc.b $12
[000acd52]                           dc.b $00
[000acd53]                           dc.b $00
[000acd54]                           dc.w $2af8
_45_PARTS:
[000acd56]                           dc.b $00
[000acd57]                           dc.b $30
[000acd58]                           dc.b $00
[000acd59]                           dc.b $2e
[000acd5a]                           dc.b $00
[000acd5b]                           dc.b $2e
[000acd5c]                           dc.b $00
[000acd5d]                           dc.b $19
[000acd5e]                           dc.b $00
[000acd5f]                           dc.b $80
[000acd60]                           dc.b $00
[000acd61]                           dc.b $00
[000acd62]                           dc.b $00
[000acd63]                           dc.b $01
[000acd64]                           dc.w $1101
[000acd66]                           dc.b $00
[000acd67]                           dc.b $2c
[000acd68]                           dc.b $00
[000acd69]                           dc.b $08
[000acd6a]                           dc.b $00
[000acd6b]                           dc.b $05
[000acd6c]                           dc.b $00
[000acd6d]                           dc.b $01
_46_PARTS:
[000acd6e]                           dc.b $00
[000acd6f]                           dc.b $2d
[000acd70]                           dc.w $ffff
[000acd72]                           dc.w $ffff
[000acd74]                           dc.b $00
[000acd75]                           dc.b $19
[000acd76]                           dc.w $2000
[000acd78]                           dc.b $00
[000acd79]                           dc.b $00
[000acd7a]                           dc.b $00
[000acd7b]                           dc.b $00
[000acd7c]                           dc.w $1101
[000acd7e]                           dc.b $00
[000acd7f]                           dc.b $00
[000acd80]                           dc.b $00
[000acd81]                           dc.b $00
[000acd82]                           dc.b $00
[000acd83]                           dc.b $02
[000acd84]                           dc.b $00
[000acd85]                           dc.b $01
_46aPARTS:
[000acd86]                           dc.b $00
[000acd87]                           dc.b $00
[000acd88]                           dc.b $00
[000acd89]                           dc.b $00
[000acd8a]                           dc.b $00
[000acd8b]                           dc.b $00
[000acd8c]                           dc.b $00
[000acd8d]                           dc.b $00
[000acd8e]                           dc.w $8000
[000acd90]                           dc.b $00
[000acd91]                           dc.b $00
[000acd92] 000af032                  dc.l part_palette
[000acd96]                           dc.b $00
[000acd97]                           dc.b $00
[000acd98]                           dc.b $00
[000acd99]                           dc.b $13
[000acd9a]                           dc.b $00
[000acd9b]                           dc.b $00
[000acd9c]                           dc.w $2af8
_48_PARTS:
[000acd9e]                           dc.b $00
[000acd9f]                           dc.b $33
[000acda0]                           dc.b $00
[000acda1]                           dc.b $31
[000acda2]                           dc.b $00
[000acda3]                           dc.b $31
[000acda4]                           dc.b $00
[000acda5]                           dc.b $19
[000acda6]                           dc.b $00
[000acda7]                           dc.b $80
[000acda8]                           dc.b $00
[000acda9]                           dc.b $00
[000acdaa]                           dc.b $00
[000acdab]                           dc.b $01
[000acdac]                           dc.w $1101
[000acdae]                           dc.b $00
[000acdaf]                           dc.b $02
[000acdb0]                           dc.b $00
[000acdb1]                           dc.b $0a
[000acdb2]                           dc.b $00
[000acdb3]                           dc.b $05
[000acdb4]                           dc.b $00
[000acdb5]                           dc.b $01
_49_PARTS:
[000acdb6]                           dc.b $00
[000acdb7]                           dc.b $30
[000acdb8]                           dc.w $ffff
[000acdba]                           dc.w $ffff
[000acdbc]                           dc.b $00
[000acdbd]                           dc.b $19
[000acdbe]                           dc.w $2000
[000acdc0]                           dc.b $00
[000acdc1]                           dc.b $00
[000acdc2]                           dc.b $00
[000acdc3]                           dc.b $00
[000acdc4]                           dc.w $1101
[000acdc6]                           dc.b $00
[000acdc7]                           dc.b $00
[000acdc8]                           dc.b $00
[000acdc9]                           dc.b $00
[000acdca]                           dc.b $00
[000acdcb]                           dc.b $02
[000acdcc]                           dc.b $00
[000acdcd]                           dc.b $01
_49aPARTS:
[000acdce]                           dc.b $00
[000acdcf]                           dc.b $00
[000acdd0]                           dc.b $00
[000acdd1]                           dc.b $00
[000acdd2]                           dc.b $00
[000acdd3]                           dc.b $00
[000acdd4]                           dc.b $00
[000acdd5]                           dc.b $00
[000acdd6]                           dc.w $8000
[000acdd8]                           dc.b $00
[000acdd9]                           dc.b $00
[000acdda] 000af032                  dc.l part_palette
[000acdde]                           dc.b $00
[000acddf]                           dc.b $00
[000acde0]                           dc.b $00
[000acde1]                           dc.b $14
[000acde2]                           dc.b $00
[000acde3]                           dc.b $00
[000acde4]                           dc.w $2af8
_51_PARTS:
[000acde6]                           dc.b $00
[000acde7]                           dc.b $36
[000acde8]                           dc.b $00
[000acde9]                           dc.b $34
[000acdea]                           dc.b $00
[000acdeb]                           dc.b $34
[000acdec]                           dc.b $00
[000acded]                           dc.b $19
[000acdee]                           dc.b $00
[000acdef]                           dc.b $80
[000acdf0]                           dc.b $00
[000acdf1]                           dc.b $00
[000acdf2]                           dc.b $00
[000acdf3]                           dc.b $01
[000acdf4]                           dc.w $1101
[000acdf6]                           dc.b $00
[000acdf7]                           dc.b $09
[000acdf8]                           dc.b $00
[000acdf9]                           dc.b $0a
[000acdfa]                           dc.b $00
[000acdfb]                           dc.b $05
[000acdfc]                           dc.b $00
[000acdfd]                           dc.b $01
_52_PARTS:
[000acdfe]                           dc.b $00
[000acdff]                           dc.b $33
[000ace00]                           dc.w $ffff
[000ace02]                           dc.w $ffff
[000ace04]                           dc.b $00
[000ace05]                           dc.b $19
[000ace06]                           dc.w $2000
[000ace08]                           dc.b $00
[000ace09]                           dc.b $00
[000ace0a]                           dc.b $00
[000ace0b]                           dc.b $00
[000ace0c]                           dc.w $1101
[000ace0e]                           dc.b $00
[000ace0f]                           dc.b $00
[000ace10]                           dc.b $00
[000ace11]                           dc.b $00
[000ace12]                           dc.b $00
[000ace13]                           dc.b $02
[000ace14]                           dc.b $00
[000ace15]                           dc.b $01
_52aPARTS:
[000ace16]                           dc.b $00
[000ace17]                           dc.b $00
[000ace18]                           dc.b $00
[000ace19]                           dc.b $00
[000ace1a]                           dc.b $00
[000ace1b]                           dc.b $00
[000ace1c]                           dc.b $00
[000ace1d]                           dc.b $00
[000ace1e]                           dc.w $8000
[000ace20]                           dc.b $00
[000ace21]                           dc.b $00
[000ace22] 000af032                  dc.l part_palette
[000ace26]                           dc.b $00
[000ace27]                           dc.b $00
[000ace28]                           dc.b $00
[000ace29]                           dc.b $15
[000ace2a]                           dc.b $00
[000ace2b]                           dc.b $00
[000ace2c]                           dc.w $2af8
_54_PARTS:
[000ace2e]                           dc.b $00
[000ace2f]                           dc.b $39
[000ace30]                           dc.b $00
[000ace31]                           dc.b $37
[000ace32]                           dc.b $00
[000ace33]                           dc.b $37
[000ace34]                           dc.b $00
[000ace35]                           dc.b $19
[000ace36]                           dc.b $00
[000ace37]                           dc.b $80
[000ace38]                           dc.b $00
[000ace39]                           dc.b $00
[000ace3a]                           dc.b $00
[000ace3b]                           dc.b $01
[000ace3c]                           dc.w $1101
[000ace3e]                           dc.b $00
[000ace3f]                           dc.b $10
[000ace40]                           dc.b $00
[000ace41]                           dc.b $0a
[000ace42]                           dc.b $00
[000ace43]                           dc.b $05
[000ace44]                           dc.b $00
[000ace45]                           dc.b $01
_55_PARTS:
[000ace46]                           dc.b $00
[000ace47]                           dc.b $36
[000ace48]                           dc.w $ffff
[000ace4a]                           dc.w $ffff
[000ace4c]                           dc.b $00
[000ace4d]                           dc.b $19
[000ace4e]                           dc.w $2000
[000ace50]                           dc.b $00
[000ace51]                           dc.b $00
[000ace52]                           dc.b $00
[000ace53]                           dc.b $00
[000ace54]                           dc.w $1101
[000ace56]                           dc.b $00
[000ace57]                           dc.b $00
[000ace58]                           dc.b $00
[000ace59]                           dc.b $00
[000ace5a]                           dc.b $00
[000ace5b]                           dc.b $02
[000ace5c]                           dc.b $00
[000ace5d]                           dc.b $01
_55aPARTS:
[000ace5e]                           dc.b $00
[000ace5f]                           dc.b $00
[000ace60]                           dc.b $00
[000ace61]                           dc.b $00
[000ace62]                           dc.b $00
[000ace63]                           dc.b $00
[000ace64]                           dc.b $00
[000ace65]                           dc.b $00
[000ace66]                           dc.w $8000
[000ace68]                           dc.b $00
[000ace69]                           dc.b $00
[000ace6a] 000af032                  dc.l part_palette
[000ace6e]                           dc.b $00
[000ace6f]                           dc.b $00
[000ace70]                           dc.b $00
[000ace71]                           dc.b $16
[000ace72]                           dc.b $00
[000ace73]                           dc.b $00
[000ace74]                           dc.w $2af8
_57_PARTS:
[000ace76]                           dc.b $00
[000ace77]                           dc.b $3c
[000ace78]                           dc.b $00
[000ace79]                           dc.b $3a
[000ace7a]                           dc.b $00
[000ace7b]                           dc.b $3a
[000ace7c]                           dc.b $00
[000ace7d]                           dc.b $19
[000ace7e]                           dc.b $00
[000ace7f]                           dc.b $80
[000ace80]                           dc.b $00
[000ace81]                           dc.b $00
[000ace82]                           dc.b $00
[000ace83]                           dc.b $01
[000ace84]                           dc.w $1101
[000ace86]                           dc.b $00
[000ace87]                           dc.b $17
[000ace88]                           dc.b $00
[000ace89]                           dc.b $0a
[000ace8a]                           dc.b $00
[000ace8b]                           dc.b $05
[000ace8c]                           dc.b $00
[000ace8d]                           dc.b $01
_58_PARTS:
[000ace8e]                           dc.b $00
[000ace8f]                           dc.b $39
[000ace90]                           dc.w $ffff
[000ace92]                           dc.w $ffff
[000ace94]                           dc.b $00
[000ace95]                           dc.b $19
[000ace96]                           dc.w $2000
[000ace98]                           dc.b $00
[000ace99]                           dc.b $00
[000ace9a]                           dc.b $00
[000ace9b]                           dc.b $00
[000ace9c]                           dc.w $1101
[000ace9e]                           dc.b $00
[000ace9f]                           dc.b $00
[000acea0]                           dc.b $00
[000acea1]                           dc.b $00
[000acea2]                           dc.b $00
[000acea3]                           dc.b $02
[000acea4]                           dc.b $00
[000acea5]                           dc.b $01
_58aPARTS:
[000acea6]                           dc.b $00
[000acea7]                           dc.b $00
[000acea8]                           dc.b $00
[000acea9]                           dc.b $00
[000aceaa]                           dc.b $00
[000aceab]                           dc.b $00
[000aceac]                           dc.b $00
[000acead]                           dc.b $00
[000aceae]                           dc.w $8000
[000aceb0]                           dc.b $00
[000aceb1]                           dc.b $00
[000aceb2] 000af032                  dc.l part_palette
[000aceb6]                           dc.b $00
[000aceb7]                           dc.b $00
[000aceb8]                           dc.b $00
[000aceb9]                           dc.b $17
[000aceba]                           dc.b $00
[000acebb]                           dc.b $00
[000acebc]                           dc.w $2af8
_60_PARTS:
[000acebe]                           dc.b $00
[000acebf]                           dc.b $3f
[000acec0]                           dc.b $00
[000acec1]                           dc.b $3d
[000acec2]                           dc.b $00
[000acec3]                           dc.b $3d
[000acec4]                           dc.b $00
[000acec5]                           dc.b $19
[000acec6]                           dc.b $00
[000acec7]                           dc.b $80
[000acec8]                           dc.b $00
[000acec9]                           dc.b $00
[000aceca]                           dc.b $00
[000acecb]                           dc.b $01
[000acecc]                           dc.w $1101
[000acece]                           dc.b $00
[000acecf]                           dc.b $1e
[000aced0]                           dc.b $00
[000aced1]                           dc.b $0a
[000aced2]                           dc.b $00
[000aced3]                           dc.b $05
[000aced4]                           dc.b $00
[000aced5]                           dc.b $01
_61_PARTS:
[000aced6]                           dc.b $00
[000aced7]                           dc.b $3c
[000aced8]                           dc.w $ffff
[000aceda]                           dc.w $ffff
[000acedc]                           dc.b $00
[000acedd]                           dc.b $19
[000acede]                           dc.w $2000
[000acee0]                           dc.b $00
[000acee1]                           dc.b $00
[000acee2]                           dc.b $00
[000acee3]                           dc.b $00
[000acee4]                           dc.w $1101
[000acee6]                           dc.b $00
[000acee7]                           dc.b $00
[000acee8]                           dc.b $00
[000acee9]                           dc.b $00
[000aceea]                           dc.b $00
[000aceeb]                           dc.b $02
[000aceec]                           dc.b $00
[000aceed]                           dc.b $01
_61aPARTS:
[000aceee]                           dc.b $00
[000aceef]                           dc.b $00
[000acef0]                           dc.b $00
[000acef1]                           dc.b $00
[000acef2]                           dc.b $00
[000acef3]                           dc.b $00
[000acef4]                           dc.b $00
[000acef5]                           dc.b $00
[000acef6]                           dc.w $8000
[000acef8]                           dc.b $00
[000acef9]                           dc.b $00
[000acefa] 000af032                  dc.l part_palette
[000acefe]                           dc.b $00
[000aceff]                           dc.b $00
[000acf00]                           dc.b $00
[000acf01]                           dc.b $18
[000acf02]                           dc.b $00
[000acf03]                           dc.b $00
[000acf04]                           dc.w $2af8
_63_PARTS:
[000acf06]                           dc.b $00
[000acf07]                           dc.b $42
[000acf08]                           dc.b $00
[000acf09]                           dc.b $40
[000acf0a]                           dc.b $00
[000acf0b]                           dc.b $40
[000acf0c]                           dc.b $00
[000acf0d]                           dc.b $19
[000acf0e]                           dc.b $00
[000acf0f]                           dc.b $80
[000acf10]                           dc.b $00
[000acf11]                           dc.b $00
[000acf12]                           dc.b $00
[000acf13]                           dc.b $01
[000acf14]                           dc.w $1101
[000acf16]                           dc.b $00
[000acf17]                           dc.b $25
[000acf18]                           dc.b $00
[000acf19]                           dc.b $0a
[000acf1a]                           dc.b $00
[000acf1b]                           dc.b $05
[000acf1c]                           dc.b $00
[000acf1d]                           dc.b $01
_64_PARTS:
[000acf1e]                           dc.b $00
[000acf1f]                           dc.b $3f
[000acf20]                           dc.w $ffff
[000acf22]                           dc.w $ffff
[000acf24]                           dc.b $00
[000acf25]                           dc.b $19
[000acf26]                           dc.w $2000
[000acf28]                           dc.b $00
[000acf29]                           dc.b $00
[000acf2a]                           dc.b $00
[000acf2b]                           dc.b $00
[000acf2c]                           dc.w $1101
[000acf2e]                           dc.b $00
[000acf2f]                           dc.b $00
[000acf30]                           dc.b $00
[000acf31]                           dc.b $00
[000acf32]                           dc.b $00
[000acf33]                           dc.b $02
[000acf34]                           dc.b $00
[000acf35]                           dc.b $01
_64aPARTS:
[000acf36]                           dc.b $00
[000acf37]                           dc.b $00
[000acf38]                           dc.b $00
[000acf39]                           dc.b $00
[000acf3a]                           dc.b $00
[000acf3b]                           dc.b $00
[000acf3c]                           dc.b $00
[000acf3d]                           dc.b $00
[000acf3e]                           dc.w $8000
[000acf40]                           dc.b $00
[000acf41]                           dc.b $00
[000acf42] 000af032                  dc.l part_palette
[000acf46]                           dc.b $00
[000acf47]                           dc.b $00
[000acf48]                           dc.b $00
[000acf49]                           dc.b $19
[000acf4a]                           dc.b $00
[000acf4b]                           dc.b $00
[000acf4c]                           dc.w $2af8
_66_PARTS:
[000acf4e]                           dc.b $00
[000acf4f]                           dc.b $45
[000acf50]                           dc.b $00
[000acf51]                           dc.b $43
[000acf52]                           dc.b $00
[000acf53]                           dc.b $43
[000acf54]                           dc.b $00
[000acf55]                           dc.b $19
[000acf56]                           dc.b $00
[000acf57]                           dc.b $80
[000acf58]                           dc.b $00
[000acf59]                           dc.b $00
[000acf5a]                           dc.b $00
[000acf5b]                           dc.b $01
[000acf5c]                           dc.w $1101
[000acf5e]                           dc.b $00
[000acf5f]                           dc.b $2c
[000acf60]                           dc.b $00
[000acf61]                           dc.b $0a
[000acf62]                           dc.b $00
[000acf63]                           dc.b $05
[000acf64]                           dc.b $00
[000acf65]                           dc.b $01
_67_PARTS:
[000acf66]                           dc.b $00
[000acf67]                           dc.b $42
[000acf68]                           dc.w $ffff
[000acf6a]                           dc.w $ffff
[000acf6c]                           dc.b $00
[000acf6d]                           dc.b $19
[000acf6e]                           dc.w $2000
[000acf70]                           dc.b $00
[000acf71]                           dc.b $00
[000acf72]                           dc.b $00
[000acf73]                           dc.b $00
[000acf74]                           dc.w $1101
[000acf76]                           dc.b $00
[000acf77]                           dc.b $00
[000acf78]                           dc.b $00
[000acf79]                           dc.b $00
[000acf7a]                           dc.b $00
[000acf7b]                           dc.b $02
[000acf7c]                           dc.b $00
[000acf7d]                           dc.b $01
_67aPARTS:
[000acf7e]                           dc.b $00
[000acf7f]                           dc.b $00
[000acf80]                           dc.b $00
[000acf81]                           dc.b $00
[000acf82]                           dc.b $00
[000acf83]                           dc.b $00
[000acf84]                           dc.b $00
[000acf85]                           dc.b $00
[000acf86]                           dc.w $8000
[000acf88]                           dc.b $00
[000acf89]                           dc.b $00
[000acf8a] 000af032                  dc.l part_palette
[000acf8e]                           dc.b $00
[000acf8f]                           dc.b $00
[000acf90]                           dc.b $00
[000acf91]                           dc.b $1a
[000acf92]                           dc.b $00
[000acf93]                           dc.b $00
[000acf94]                           dc.w $2af8
_69_PARTS:
[000acf96]                           dc.b $00
[000acf97]                           dc.b $48
[000acf98]                           dc.b $00
[000acf99]                           dc.b $46
[000acf9a]                           dc.b $00
[000acf9b]                           dc.b $46
[000acf9c]                           dc.b $00
[000acf9d]                           dc.b $19
[000acf9e]                           dc.b $00
[000acf9f]                           dc.b $80
[000acfa0]                           dc.b $00
[000acfa1]                           dc.b $00
[000acfa2]                           dc.b $00
[000acfa3]                           dc.b $01
[000acfa4]                           dc.w $1101
[000acfa6]                           dc.b $00
[000acfa7]                           dc.b $33
[000acfa8]                           dc.b $00
[000acfa9]                           dc.b $0a
[000acfaa]                           dc.b $00
[000acfab]                           dc.b $05
[000acfac]                           dc.b $00
[000acfad]                           dc.b $01
_70_PARTS:
[000acfae]                           dc.b $00
[000acfaf]                           dc.b $45
[000acfb0]                           dc.w $ffff
[000acfb2]                           dc.w $ffff
[000acfb4]                           dc.b $00
[000acfb5]                           dc.b $19
[000acfb6]                           dc.w $2000
[000acfb8]                           dc.b $00
[000acfb9]                           dc.b $00
[000acfba]                           dc.b $00
[000acfbb]                           dc.b $00
[000acfbc]                           dc.w $1101
[000acfbe]                           dc.b $00
[000acfbf]                           dc.b $00
[000acfc0]                           dc.b $00
[000acfc1]                           dc.b $00
[000acfc2]                           dc.b $00
[000acfc3]                           dc.b $02
[000acfc4]                           dc.b $00
[000acfc5]                           dc.b $01
_70aPARTS:
[000acfc6]                           dc.b $00
[000acfc7]                           dc.b $00
[000acfc8]                           dc.b $00
[000acfc9]                           dc.b $00
[000acfca]                           dc.b $00
[000acfcb]                           dc.b $00
[000acfcc]                           dc.b $00
[000acfcd]                           dc.b $00
[000acfce]                           dc.w $8000
[000acfd0]                           dc.b $00
[000acfd1]                           dc.b $00
[000acfd2] 000af032                  dc.l part_palette
[000acfd6]                           dc.b $00
[000acfd7]                           dc.b $00
[000acfd8]                           dc.b $00
[000acfd9]                           dc.b $1b
[000acfda]                           dc.b $00
[000acfdb]                           dc.b $00
[000acfdc]                           dc.w $2af8
_72_PARTS:
[000acfde]                           dc.b $00
[000acfdf]                           dc.b $4b
[000acfe0]                           dc.b $00
[000acfe1]                           dc.b $49
[000acfe2]                           dc.b $00
[000acfe3]                           dc.b $49
[000acfe4]                           dc.b $00
[000acfe5]                           dc.b $19
[000acfe6]                           dc.b $00
[000acfe7]                           dc.b $80
[000acfe8]                           dc.b $00
[000acfe9]                           dc.b $00
[000acfea]                           dc.b $00
[000acfeb]                           dc.b $01
[000acfec]                           dc.w $1101
[000acfee]                           dc.b $00
[000acfef]                           dc.b $02
[000acff0]                           dc.b $00
[000acff1]                           dc.b $0c
[000acff2]                           dc.b $00
[000acff3]                           dc.b $05
[000acff4]                           dc.b $00
[000acff5]                           dc.b $01
_73_PARTS:
[000acff6]                           dc.b $00
[000acff7]                           dc.b $48
[000acff8]                           dc.w $ffff
[000acffa]                           dc.w $ffff
[000acffc]                           dc.b $00
[000acffd]                           dc.b $19
[000acffe]                           dc.w $2000
[000ad000]                           dc.b $00
[000ad001]                           dc.b $00
[000ad002]                           dc.b $00
[000ad003]                           dc.b $00
[000ad004]                           dc.w $1101
[000ad006]                           dc.b $00
[000ad007]                           dc.b $00
[000ad008]                           dc.b $00
[000ad009]                           dc.b $00
[000ad00a]                           dc.b $00
[000ad00b]                           dc.b $02
[000ad00c]                           dc.b $00
[000ad00d]                           dc.b $01
_73aPARTS:
[000ad00e]                           dc.b $00
[000ad00f]                           dc.b $00
[000ad010]                           dc.b $00
[000ad011]                           dc.b $00
[000ad012]                           dc.b $00
[000ad013]                           dc.b $00
[000ad014]                           dc.b $00
[000ad015]                           dc.b $00
[000ad016]                           dc.w $8000
[000ad018]                           dc.b $00
[000ad019]                           dc.b $00
[000ad01a] 000af032                  dc.l part_palette
[000ad01e]                           dc.b $00
[000ad01f]                           dc.b $00
[000ad020]                           dc.b $00
[000ad021]                           dc.b $1c
[000ad022]                           dc.b $00
[000ad023]                           dc.b $00
[000ad024]                           dc.w $2af8
_75_PARTS:
[000ad026]                           dc.b $00
[000ad027]                           dc.b $4e
[000ad028]                           dc.b $00
[000ad029]                           dc.b $4c
[000ad02a]                           dc.b $00
[000ad02b]                           dc.b $4c
[000ad02c]                           dc.b $00
[000ad02d]                           dc.b $19
[000ad02e]                           dc.b $00
[000ad02f]                           dc.b $80
[000ad030]                           dc.b $00
[000ad031]                           dc.b $00
[000ad032]                           dc.b $00
[000ad033]                           dc.b $01
[000ad034]                           dc.w $1101
[000ad036]                           dc.b $00
[000ad037]                           dc.b $09
[000ad038]                           dc.b $00
[000ad039]                           dc.b $0c
[000ad03a]                           dc.b $00
[000ad03b]                           dc.b $05
[000ad03c]                           dc.b $00
[000ad03d]                           dc.b $01
_76_PARTS:
[000ad03e]                           dc.b $00
[000ad03f]                           dc.b $4b
[000ad040]                           dc.w $ffff
[000ad042]                           dc.w $ffff
[000ad044]                           dc.b $00
[000ad045]                           dc.b $19
[000ad046]                           dc.w $2000
[000ad048]                           dc.b $00
[000ad049]                           dc.b $00
[000ad04a]                           dc.b $00
[000ad04b]                           dc.b $00
[000ad04c]                           dc.w $1101
[000ad04e]                           dc.b $00
[000ad04f]                           dc.b $00
[000ad050]                           dc.b $00
[000ad051]                           dc.b $00
[000ad052]                           dc.b $00
[000ad053]                           dc.b $02
[000ad054]                           dc.b $00
[000ad055]                           dc.b $01
_76aPARTS:
[000ad056]                           dc.b $00
[000ad057]                           dc.b $00
[000ad058]                           dc.b $00
[000ad059]                           dc.b $00
[000ad05a]                           dc.b $00
[000ad05b]                           dc.b $00
[000ad05c]                           dc.b $00
[000ad05d]                           dc.b $00
[000ad05e]                           dc.w $8000
[000ad060]                           dc.b $00
[000ad061]                           dc.b $00
[000ad062] 000af032                  dc.l part_palette
[000ad066]                           dc.b $00
[000ad067]                           dc.b $00
[000ad068]                           dc.b $00
[000ad069]                           dc.b $1d
[000ad06a]                           dc.b $00
[000ad06b]                           dc.b $00
[000ad06c]                           dc.w $2af8
_78_PARTS:
[000ad06e]                           dc.b $00
[000ad06f]                           dc.b $51
[000ad070]                           dc.b $00
[000ad071]                           dc.b $4f
[000ad072]                           dc.b $00
[000ad073]                           dc.b $4f
[000ad074]                           dc.b $00
[000ad075]                           dc.b $19
[000ad076]                           dc.b $00
[000ad077]                           dc.b $80
[000ad078]                           dc.b $00
[000ad079]                           dc.b $00
[000ad07a]                           dc.b $00
[000ad07b]                           dc.b $01
[000ad07c]                           dc.w $1101
[000ad07e]                           dc.b $00
[000ad07f]                           dc.b $10
[000ad080]                           dc.b $00
[000ad081]                           dc.b $0c
[000ad082]                           dc.b $00
[000ad083]                           dc.b $05
[000ad084]                           dc.b $00
[000ad085]                           dc.b $01
_79_PARTS:
[000ad086]                           dc.b $00
[000ad087]                           dc.b $4e
[000ad088]                           dc.w $ffff
[000ad08a]                           dc.w $ffff
[000ad08c]                           dc.b $00
[000ad08d]                           dc.b $19
[000ad08e]                           dc.w $2000
[000ad090]                           dc.b $00
[000ad091]                           dc.b $00
[000ad092]                           dc.b $00
[000ad093]                           dc.b $00
[000ad094]                           dc.w $1101
[000ad096]                           dc.b $00
[000ad097]                           dc.b $00
[000ad098]                           dc.b $00
[000ad099]                           dc.b $00
[000ad09a]                           dc.b $00
[000ad09b]                           dc.b $02
[000ad09c]                           dc.b $00
[000ad09d]                           dc.b $01
_79aPARTS:
[000ad09e]                           dc.b $00
[000ad09f]                           dc.b $00
[000ad0a0]                           dc.b $00
[000ad0a1]                           dc.b $00
[000ad0a2]                           dc.b $00
[000ad0a3]                           dc.b $00
[000ad0a4]                           dc.b $00
[000ad0a5]                           dc.b $00
[000ad0a6]                           dc.w $8000
[000ad0a8]                           dc.b $00
[000ad0a9]                           dc.b $00
[000ad0aa] 000af032                  dc.l part_palette
[000ad0ae]                           dc.b $00
[000ad0af]                           dc.b $00
[000ad0b0]                           dc.b $00
[000ad0b1]                           dc.b $1e
[000ad0b2]                           dc.b $00
[000ad0b3]                           dc.b $00
[000ad0b4]                           dc.w $2af8
_81_PARTS:
[000ad0b6]                           dc.b $00
[000ad0b7]                           dc.b $54
[000ad0b8]                           dc.b $00
[000ad0b9]                           dc.b $52
[000ad0ba]                           dc.b $00
[000ad0bb]                           dc.b $52
[000ad0bc]                           dc.b $00
[000ad0bd]                           dc.b $19
[000ad0be]                           dc.b $00
[000ad0bf]                           dc.b $80
[000ad0c0]                           dc.b $00
[000ad0c1]                           dc.b $00
[000ad0c2]                           dc.b $00
[000ad0c3]                           dc.b $01
[000ad0c4]                           dc.w $1101
[000ad0c6]                           dc.b $00
[000ad0c7]                           dc.b $17
[000ad0c8]                           dc.b $00
[000ad0c9]                           dc.b $0c
[000ad0ca]                           dc.b $00
[000ad0cb]                           dc.b $05
[000ad0cc]                           dc.b $00
[000ad0cd]                           dc.b $01
_82_PARTS:
[000ad0ce]                           dc.b $00
[000ad0cf]                           dc.b $51
[000ad0d0]                           dc.w $ffff
[000ad0d2]                           dc.w $ffff
[000ad0d4]                           dc.b $00
[000ad0d5]                           dc.b $19
[000ad0d6]                           dc.w $2000
[000ad0d8]                           dc.b $00
[000ad0d9]                           dc.b $00
[000ad0da]                           dc.b $00
[000ad0db]                           dc.b $00
[000ad0dc]                           dc.w $1101
[000ad0de]                           dc.b $00
[000ad0df]                           dc.b $00
[000ad0e0]                           dc.b $00
[000ad0e1]                           dc.b $00
[000ad0e2]                           dc.b $00
[000ad0e3]                           dc.b $02
[000ad0e4]                           dc.b $00
[000ad0e5]                           dc.b $01
_82aPARTS:
[000ad0e6]                           dc.b $00
[000ad0e7]                           dc.b $00
[000ad0e8]                           dc.b $00
[000ad0e9]                           dc.b $00
[000ad0ea]                           dc.b $00
[000ad0eb]                           dc.b $00
[000ad0ec]                           dc.b $00
[000ad0ed]                           dc.b $00
[000ad0ee]                           dc.w $8000
[000ad0f0]                           dc.b $00
[000ad0f1]                           dc.b $00
[000ad0f2] 000af032                  dc.l part_palette
[000ad0f6]                           dc.b $00
[000ad0f7]                           dc.b $00
[000ad0f8]                           dc.b $00
[000ad0f9]                           dc.b $1f
[000ad0fa]                           dc.b $00
[000ad0fb]                           dc.b $00
[000ad0fc]                           dc.w $2af8
_84_PARTS:
[000ad0fe]                           dc.b $00
[000ad0ff]                           dc.b $57
[000ad100]                           dc.b $00
[000ad101]                           dc.b $55
[000ad102]                           dc.b $00
[000ad103]                           dc.b $55
[000ad104]                           dc.b $00
[000ad105]                           dc.b $19
[000ad106]                           dc.b $00
[000ad107]                           dc.b $80
[000ad108]                           dc.b $00
[000ad109]                           dc.b $00
[000ad10a]                           dc.b $00
[000ad10b]                           dc.b $01
[000ad10c]                           dc.w $1101
[000ad10e]                           dc.b $00
[000ad10f]                           dc.b $1e
[000ad110]                           dc.b $00
[000ad111]                           dc.b $0c
[000ad112]                           dc.b $00
[000ad113]                           dc.b $05
[000ad114]                           dc.b $00
[000ad115]                           dc.b $01
_85_PARTS:
[000ad116]                           dc.b $00
[000ad117]                           dc.b $54
[000ad118]                           dc.w $ffff
[000ad11a]                           dc.w $ffff
[000ad11c]                           dc.b $00
[000ad11d]                           dc.b $19
[000ad11e]                           dc.w $2000
[000ad120]                           dc.b $00
[000ad121]                           dc.b $00
[000ad122]                           dc.b $00
[000ad123]                           dc.b $00
[000ad124]                           dc.w $1101
[000ad126]                           dc.b $00
[000ad127]                           dc.b $00
[000ad128]                           dc.b $00
[000ad129]                           dc.b $00
[000ad12a]                           dc.b $00
[000ad12b]                           dc.b $02
[000ad12c]                           dc.b $00
[000ad12d]                           dc.b $01
_85aPARTS:
[000ad12e]                           dc.b $00
[000ad12f]                           dc.b $00
[000ad130]                           dc.b $00
[000ad131]                           dc.b $00
[000ad132]                           dc.b $00
[000ad133]                           dc.b $00
[000ad134]                           dc.b $00
[000ad135]                           dc.b $00
[000ad136]                           dc.w $8000
[000ad138]                           dc.b $00
[000ad139]                           dc.b $00
[000ad13a] 000af032                  dc.l part_palette
[000ad13e]                           dc.b $00
[000ad13f]                           dc.b $00
[000ad140]                           dc.b $00
[000ad141]                           dc.b $20
[000ad142]                           dc.b $00
[000ad143]                           dc.b $00
[000ad144]                           dc.w $2af8
_87_PARTS:
[000ad146]                           dc.b $00
[000ad147]                           dc.b $5a
[000ad148]                           dc.b $00
[000ad149]                           dc.b $58
[000ad14a]                           dc.b $00
[000ad14b]                           dc.b $58
[000ad14c]                           dc.b $00
[000ad14d]                           dc.b $19
[000ad14e]                           dc.b $00
[000ad14f]                           dc.b $80
[000ad150]                           dc.b $00
[000ad151]                           dc.b $00
[000ad152]                           dc.b $00
[000ad153]                           dc.b $01
[000ad154]                           dc.w $1101
[000ad156]                           dc.b $00
[000ad157]                           dc.b $25
[000ad158]                           dc.b $00
[000ad159]                           dc.b $0c
[000ad15a]                           dc.b $00
[000ad15b]                           dc.b $05
[000ad15c]                           dc.b $00
[000ad15d]                           dc.b $01
_88_PARTS:
[000ad15e]                           dc.b $00
[000ad15f]                           dc.b $57
[000ad160]                           dc.w $ffff
[000ad162]                           dc.b $ff
[000ad163]                           dc.b $ff
[000ad164]                           dc.b $00
[000ad165]                           dc.b $19
[000ad166]                           dc.w $2000
[000ad168]                           dc.b $00
[000ad169]                           dc.b $00
[000ad16a]                           dc.b $00
[000ad16b]                           dc.b $00
[000ad16c]                           dc.b $11
[000ad16d]                           dc.b $01
[000ad16e]                           dc.b $00
[000ad16f]                           dc.b $00
[000ad170]                           dc.b $00
[000ad171]                           dc.b $00
[000ad172]                           dc.b $00
[000ad173]                           dc.b $02
[000ad174]                           dc.b $00
[000ad175]                           dc.b $01
_88aPARTS:
[000ad176]                           dc.b $00
[000ad177]                           dc.b $00
[000ad178]                           dc.b $00
[000ad179]                           dc.b $00
[000ad17a]                           dc.b $00
[000ad17b]                           dc.b $00
[000ad17c]                           dc.b $00
[000ad17d]                           dc.b $00
[000ad17e]                           dc.w $8000
[000ad180]                           dc.b $00
[000ad181]                           dc.b $00
[000ad182] 000af032                  dc.l part_palette
[000ad186]                           dc.b $00
[000ad187]                           dc.b $00
[000ad188]                           dc.b $00
[000ad189]                           dc.b $21
[000ad18a]                           dc.b $00
[000ad18b]                           dc.b $00
[000ad18c]                           dc.w $2af8
_90_PARTS:
[000ad18e]                           dc.b $00
[000ad18f]                           dc.b $5d
[000ad190]                           dc.b $00
[000ad191]                           dc.b $5b
[000ad192]                           dc.b $00
[000ad193]                           dc.b $5b
[000ad194]                           dc.b $00
[000ad195]                           dc.b $19
[000ad196]                           dc.b $00
[000ad197]                           dc.b $80
[000ad198]                           dc.b $00
[000ad199]                           dc.b $00
[000ad19a]                           dc.b $00
[000ad19b]                           dc.b $01
[000ad19c]                           dc.w $1101
[000ad19e]                           dc.b $00
[000ad19f]                           dc.b $2c
[000ad1a0]                           dc.b $00
[000ad1a1]                           dc.b $0c
[000ad1a2]                           dc.b $00
[000ad1a3]                           dc.b $05
[000ad1a4]                           dc.b $00
[000ad1a5]                           dc.b $01
_91_PARTS:
[000ad1a6]                           dc.b $00
[000ad1a7]                           dc.b $5a
[000ad1a8]                           dc.w $ffff
[000ad1aa]                           dc.w $ffff
[000ad1ac]                           dc.b $00
[000ad1ad]                           dc.b $19
[000ad1ae]                           dc.w $2000
[000ad1b0]                           dc.b $00
[000ad1b1]                           dc.b $00
[000ad1b2]                           dc.b $00
[000ad1b3]                           dc.b $00
[000ad1b4]                           dc.w $1101
[000ad1b6]                           dc.b $00
[000ad1b7]                           dc.b $00
[000ad1b8]                           dc.b $00
[000ad1b9]                           dc.b $00
[000ad1ba]                           dc.b $00
[000ad1bb]                           dc.b $02
[000ad1bc]                           dc.b $00
[000ad1bd]                           dc.b $01
_91aPARTS:
[000ad1be]                           dc.b $00
[000ad1bf]                           dc.b $00
[000ad1c0]                           dc.b $00
[000ad1c1]                           dc.b $00
[000ad1c2]                           dc.b $00
[000ad1c3]                           dc.b $00
[000ad1c4]                           dc.b $00
[000ad1c5]                           dc.b $00
[000ad1c6]                           dc.w $8000
[000ad1c8]                           dc.b $00
[000ad1c9]                           dc.b $00
[000ad1ca] 000af032                  dc.l part_palette
[000ad1ce]                           dc.b $00
[000ad1cf]                           dc.b $00
[000ad1d0]                           dc.b $00
[000ad1d1]                           dc.b $22
[000ad1d2]                           dc.b $00
[000ad1d3]                           dc.b $00
[000ad1d4]                           dc.w $2af8
_93_PARTS:
[000ad1d6]                           dc.b $00
[000ad1d7]                           dc.b $60
[000ad1d8]                           dc.b $00
[000ad1d9]                           dc.b $5e
[000ad1da]                           dc.b $00
[000ad1db]                           dc.b $5e
[000ad1dc]                           dc.b $00
[000ad1dd]                           dc.b $19
[000ad1de]                           dc.b $00
[000ad1df]                           dc.b $80
[000ad1e0]                           dc.b $00
[000ad1e1]                           dc.b $00
[000ad1e2]                           dc.b $00
[000ad1e3]                           dc.b $01
[000ad1e4]                           dc.w $1101
[000ad1e6]                           dc.b $00
[000ad1e7]                           dc.b $33
[000ad1e8]                           dc.b $00
[000ad1e9]                           dc.b $0c
[000ad1ea]                           dc.b $00
[000ad1eb]                           dc.b $05
[000ad1ec]                           dc.b $00
[000ad1ed]                           dc.b $01
_94_PARTS:
[000ad1ee]                           dc.b $00
[000ad1ef]                           dc.b $5d
[000ad1f0]                           dc.w $ffff
[000ad1f2]                           dc.w $ffff
[000ad1f4]                           dc.b $00
[000ad1f5]                           dc.b $19
[000ad1f6]                           dc.w $2000
[000ad1f8]                           dc.b $00
[000ad1f9]                           dc.b $00
[000ad1fa]                           dc.b $00
[000ad1fb]                           dc.b $00
[000ad1fc]                           dc.w $1101
[000ad1fe]                           dc.b $00
[000ad1ff]                           dc.b $00
[000ad200]                           dc.b $00
[000ad201]                           dc.b $00
[000ad202]                           dc.b $00
[000ad203]                           dc.b $02
[000ad204]                           dc.b $00
[000ad205]                           dc.b $01
_94aPARTS:
[000ad206]                           dc.b $00
[000ad207]                           dc.b $00
[000ad208]                           dc.b $00
[000ad209]                           dc.b $00
[000ad20a]                           dc.b $00
[000ad20b]                           dc.b $00
[000ad20c]                           dc.b $00
[000ad20d]                           dc.b $00
[000ad20e]                           dc.w $8000
[000ad210]                           dc.b $00
[000ad211]                           dc.b $00
[000ad212] 000af032                  dc.l part_palette
[000ad216]                           dc.b $00
[000ad217]                           dc.b $00
[000ad218]                           dc.b $00
[000ad219]                           dc.b $23
[000ad21a]                           dc.b $00
[000ad21b]                           dc.b $00
[000ad21c]                           dc.w $2af8
_96_PARTS:
[000ad21e]                           dc.b $00
[000ad21f]                           dc.b $63
[000ad220]                           dc.b $00
[000ad221]                           dc.b $61
[000ad222]                           dc.b $00
[000ad223]                           dc.b $61
[000ad224]                           dc.b $00
[000ad225]                           dc.b $19
[000ad226]                           dc.b $00
[000ad227]                           dc.b $80
[000ad228]                           dc.b $00
[000ad229]                           dc.b $00
[000ad22a]                           dc.b $00
[000ad22b]                           dc.b $01
[000ad22c]                           dc.w $1101
[000ad22e]                           dc.b $00
[000ad22f]                           dc.b $02
[000ad230]                           dc.b $00
[000ad231]                           dc.b $0e
[000ad232]                           dc.b $00
[000ad233]                           dc.b $05
[000ad234]                           dc.b $00
[000ad235]                           dc.b $01
_97_PARTS:
[000ad236]                           dc.b $00
[000ad237]                           dc.b $60
[000ad238]                           dc.w $ffff
[000ad23a]                           dc.w $ffff
[000ad23c]                           dc.b $00
[000ad23d]                           dc.b $19
[000ad23e]                           dc.w $2000
[000ad240]                           dc.b $00
[000ad241]                           dc.b $00
[000ad242]                           dc.b $00
[000ad243]                           dc.b $00
[000ad244]                           dc.b $11
[000ad245]                           dc.b $01
[000ad246]                           dc.b $00
[000ad247]                           dc.b $00
[000ad248]                           dc.b $00
[000ad249]                           dc.b $00
[000ad24a]                           dc.b $00
[000ad24b]                           dc.b $02
[000ad24c]                           dc.b $00
[000ad24d]                           dc.b $01
_97aPARTS:
[000ad24e]                           dc.b $00
[000ad24f]                           dc.b $00
[000ad250]                           dc.b $00
[000ad251]                           dc.b $00
[000ad252]                           dc.b $00
[000ad253]                           dc.b $00
[000ad254]                           dc.b $00
[000ad255]                           dc.b $00
[000ad256]                           dc.w $8000
[000ad258]                           dc.b $00
[000ad259]                           dc.b $00
[000ad25a] 000af032                  dc.l part_palette
[000ad25e]                           dc.b $00
[000ad25f]                           dc.b $00
[000ad260]                           dc.b $00
[000ad261]                           dc.b $24
[000ad262]                           dc.b $00
[000ad263]                           dc.b $00
[000ad264]                           dc.w $2af8
_99_PARTS:
[000ad266]                           dc.b $00
[000ad267]                           dc.b $66
[000ad268]                           dc.b $00
[000ad269]                           dc.b $64
[000ad26a]                           dc.b $00
[000ad26b]                           dc.b $64
[000ad26c]                           dc.b $00
[000ad26d]                           dc.b $19
[000ad26e]                           dc.b $00
[000ad26f]                           dc.b $80
[000ad270]                           dc.b $00
[000ad271]                           dc.b $00
[000ad272]                           dc.b $00
[000ad273]                           dc.b $01
[000ad274]                           dc.w $1101
[000ad276]                           dc.b $00
[000ad277]                           dc.b $09
[000ad278]                           dc.b $00
[000ad279]                           dc.b $0e
[000ad27a]                           dc.b $00
[000ad27b]                           dc.b $05
[000ad27c]                           dc.b $00
[000ad27d]                           dc.b $01
_100_PARTS:
[000ad27e]                           dc.b $00
[000ad27f]                           dc.b $63
[000ad280]                           dc.w $ffff
[000ad282]                           dc.w $ffff
[000ad284]                           dc.b $00
[000ad285]                           dc.b $19
[000ad286]                           dc.w $2000
[000ad288]                           dc.b $00
[000ad289]                           dc.b $00
[000ad28a]                           dc.b $00
[000ad28b]                           dc.b $00
[000ad28c]                           dc.w $1101
[000ad28e]                           dc.b $00
[000ad28f]                           dc.b $00
[000ad290]                           dc.b $00
[000ad291]                           dc.b $00
[000ad292]                           dc.b $00
[000ad293]                           dc.b $02
[000ad294]                           dc.b $00
[000ad295]                           dc.b $01
_100aPARTS:
[000ad296]                           dc.b $00
[000ad297]                           dc.b $00
[000ad298]                           dc.b $00
[000ad299]                           dc.b $00
[000ad29a]                           dc.b $00
[000ad29b]                           dc.b $00
[000ad29c]                           dc.b $00
[000ad29d]                           dc.b $00
[000ad29e]                           dc.w $8000
[000ad2a0]                           dc.b $00
[000ad2a1]                           dc.b $00
[000ad2a2] 000af032                  dc.l part_palette
[000ad2a6]                           dc.b $00
[000ad2a7]                           dc.b $00
[000ad2a8]                           dc.b $00
[000ad2a9]                           dc.b $25
[000ad2aa]                           dc.b $00
[000ad2ab]                           dc.b $00
[000ad2ac]                           dc.w $2af8
_102_PARTS:
[000ad2ae]                           dc.b $00
[000ad2af]                           dc.b $69
[000ad2b0]                           dc.b $00
[000ad2b1]                           dc.b $67
[000ad2b2]                           dc.b $00
[000ad2b3]                           dc.b $67
[000ad2b4]                           dc.b $00
[000ad2b5]                           dc.b $19
[000ad2b6]                           dc.b $00
[000ad2b7]                           dc.b $80
[000ad2b8]                           dc.b $00
[000ad2b9]                           dc.b $00
[000ad2ba]                           dc.b $00
[000ad2bb]                           dc.b $01
[000ad2bc]                           dc.w $1101
[000ad2be]                           dc.b $00
[000ad2bf]                           dc.b $10
[000ad2c0]                           dc.b $00
[000ad2c1]                           dc.b $0e
[000ad2c2]                           dc.b $00
[000ad2c3]                           dc.b $05
[000ad2c4]                           dc.b $00
[000ad2c5]                           dc.b $01
_103_PARTS:
[000ad2c6]                           dc.b $00
[000ad2c7]                           dc.b $66
[000ad2c8]                           dc.b $ff
[000ad2c9]                           dc.b $ff
[000ad2ca]                           dc.w $ffff
[000ad2cc]                           dc.b $00
[000ad2cd]                           dc.b $19
[000ad2ce]                           dc.w $2000
[000ad2d0]                           dc.b $00
[000ad2d1]                           dc.b $00
[000ad2d2]                           dc.b $00
[000ad2d3]                           dc.b $00
[000ad2d4]                           dc.w $1101
[000ad2d6]                           dc.b $00
[000ad2d7]                           dc.b $00
[000ad2d8]                           dc.b $00
[000ad2d9]                           dc.b $00
[000ad2da]                           dc.b $00
[000ad2db]                           dc.b $02
[000ad2dc]                           dc.b $00
[000ad2dd]                           dc.b $01
_103aPARTS:
[000ad2de]                           dc.b $00
[000ad2df]                           dc.b $00
[000ad2e0]                           dc.b $00
[000ad2e1]                           dc.b $00
[000ad2e2]                           dc.b $00
[000ad2e3]                           dc.b $00
[000ad2e4]                           dc.b $00
[000ad2e5]                           dc.b $00
[000ad2e6]                           dc.w $8000
[000ad2e8]                           dc.b $00
[000ad2e9]                           dc.b $00
[000ad2ea] 000af032                  dc.l part_palette
[000ad2ee]                           dc.b $00
[000ad2ef]                           dc.b $00
[000ad2f0]                           dc.b $00
[000ad2f1]                           dc.b $26
[000ad2f2]                           dc.b $00
[000ad2f3]                           dc.b $00
[000ad2f4]                           dc.w $2af8
_105_PARTS:
[000ad2f6]                           dc.b $00
[000ad2f7]                           dc.b $6c
[000ad2f8]                           dc.b $00
[000ad2f9]                           dc.b $6a
[000ad2fa]                           dc.b $00
[000ad2fb]                           dc.b $6a
[000ad2fc]                           dc.b $00
[000ad2fd]                           dc.b $19
[000ad2fe]                           dc.b $00
[000ad2ff]                           dc.b $80
[000ad300]                           dc.b $00
[000ad301]                           dc.b $00
[000ad302]                           dc.b $00
[000ad303]                           dc.b $01
[000ad304]                           dc.w $1101
[000ad306]                           dc.b $00
[000ad307]                           dc.b $17
[000ad308]                           dc.b $00
[000ad309]                           dc.b $0e
[000ad30a]                           dc.b $00
[000ad30b]                           dc.b $05
[000ad30c]                           dc.b $00
[000ad30d]                           dc.b $01
_106_PARTS:
[000ad30e]                           dc.b $00
[000ad30f]                           dc.b $69
[000ad310]                           dc.w $ffff
[000ad312]                           dc.w $ffff
[000ad314]                           dc.b $00
[000ad315]                           dc.b $19
[000ad316]                           dc.w $2000
[000ad318]                           dc.b $00
[000ad319]                           dc.b $00
[000ad31a]                           dc.b $00
[000ad31b]                           dc.b $00
[000ad31c]                           dc.w $1101
[000ad31e]                           dc.b $00
[000ad31f]                           dc.b $00
[000ad320]                           dc.b $00
[000ad321]                           dc.b $00
[000ad322]                           dc.b $00
[000ad323]                           dc.b $02
[000ad324]                           dc.b $00
[000ad325]                           dc.b $01
_106aPARTS:
[000ad326]                           dc.b $00
[000ad327]                           dc.b $00
[000ad328]                           dc.b $00
[000ad329]                           dc.b $00
[000ad32a]                           dc.b $00
[000ad32b]                           dc.b $00
[000ad32c]                           dc.b $00
[000ad32d]                           dc.b $00
[000ad32e]                           dc.w $8000
[000ad330]                           dc.b $00
[000ad331]                           dc.b $00
[000ad332] 000af032                  dc.l part_palette
[000ad336]                           dc.b $00
[000ad337]                           dc.b $00
[000ad338]                           dc.b $00
[000ad339]                           dc.b $27
[000ad33a]                           dc.b $00
[000ad33b]                           dc.b $00
[000ad33c]                           dc.w $2af8
_108_PARTS:
[000ad33e]                           dc.b $00
[000ad33f]                           dc.b $6f
[000ad340]                           dc.b $00
[000ad341]                           dc.b $6d
[000ad342]                           dc.b $00
[000ad343]                           dc.b $6d
[000ad344]                           dc.b $00
[000ad345]                           dc.b $19
[000ad346]                           dc.b $00
[000ad347]                           dc.b $80
[000ad348]                           dc.b $00
[000ad349]                           dc.b $00
[000ad34a]                           dc.b $00
[000ad34b]                           dc.b $01
[000ad34c]                           dc.w $1101
[000ad34e]                           dc.b $00
[000ad34f]                           dc.b $1e
[000ad350]                           dc.b $00
[000ad351]                           dc.b $0e
[000ad352]                           dc.b $00
[000ad353]                           dc.b $05
[000ad354]                           dc.b $00
[000ad355]                           dc.b $01
_109_PARTS:
[000ad356]                           dc.b $00
[000ad357]                           dc.b $6c
[000ad358]                           dc.w $ffff
[000ad35a]                           dc.w $ffff
[000ad35c]                           dc.b $00
[000ad35d]                           dc.b $19
[000ad35e]                           dc.w $2000
[000ad360]                           dc.b $00
[000ad361]                           dc.b $00
[000ad362]                           dc.b $00
[000ad363]                           dc.b $00
[000ad364]                           dc.w $1101
[000ad366]                           dc.b $00
[000ad367]                           dc.b $00
[000ad368]                           dc.b $00
[000ad369]                           dc.b $00
[000ad36a]                           dc.b $00
[000ad36b]                           dc.b $02
[000ad36c]                           dc.b $00
[000ad36d]                           dc.b $01
_109aPARTS:
[000ad36e]                           dc.b $00
[000ad36f]                           dc.b $00
[000ad370]                           dc.b $00
[000ad371]                           dc.b $00
[000ad372]                           dc.b $00
[000ad373]                           dc.b $00
[000ad374]                           dc.b $00
[000ad375]                           dc.b $00
[000ad376]                           dc.w $8000
[000ad378]                           dc.b $00
[000ad379]                           dc.b $00
[000ad37a] 000af032                  dc.l part_palette
[000ad37e]                           dc.b $00
[000ad37f]                           dc.b $00
[000ad380]                           dc.b $00
[000ad381]                           dc.b $28
[000ad382]                           dc.b $00
[000ad383]                           dc.b $00
[000ad384]                           dc.w $2af8
_111_PARTS:
[000ad386]                           dc.b $00
[000ad387]                           dc.b $72
[000ad388]                           dc.b $00
[000ad389]                           dc.b $70
[000ad38a]                           dc.b $00
[000ad38b]                           dc.b $70
[000ad38c]                           dc.b $00
[000ad38d]                           dc.b $19
[000ad38e]                           dc.b $00
[000ad38f]                           dc.b $80
[000ad390]                           dc.b $00
[000ad391]                           dc.b $00
[000ad392]                           dc.b $00
[000ad393]                           dc.b $01
[000ad394]                           dc.w $1101
[000ad396]                           dc.b $00
[000ad397]                           dc.b $25
[000ad398]                           dc.b $00
[000ad399]                           dc.b $0e
[000ad39a]                           dc.b $00
[000ad39b]                           dc.b $05
[000ad39c]                           dc.b $00
[000ad39d]                           dc.b $01
_112_PARTS:
[000ad39e]                           dc.b $00
[000ad39f]                           dc.b $6f
[000ad3a0]                           dc.w $ffff
[000ad3a2]                           dc.w $ffff
[000ad3a4]                           dc.b $00
[000ad3a5]                           dc.b $19
[000ad3a6]                           dc.w $2000
[000ad3a8]                           dc.b $00
[000ad3a9]                           dc.b $00
[000ad3aa]                           dc.b $00
[000ad3ab]                           dc.b $00
[000ad3ac]                           dc.w $1101
[000ad3ae]                           dc.b $00
[000ad3af]                           dc.b $00
[000ad3b0]                           dc.b $00
[000ad3b1]                           dc.b $00
[000ad3b2]                           dc.b $00
[000ad3b3]                           dc.b $02
[000ad3b4]                           dc.b $00
[000ad3b5]                           dc.b $01
_112aPARTS:
[000ad3b6]                           dc.b $00
[000ad3b7]                           dc.b $00
[000ad3b8]                           dc.b $00
[000ad3b9]                           dc.b $00
[000ad3ba]                           dc.b $00
[000ad3bb]                           dc.b $00
[000ad3bc]                           dc.b $00
[000ad3bd]                           dc.b $00
[000ad3be]                           dc.w $8000
[000ad3c0]                           dc.b $00
[000ad3c1]                           dc.b $00
[000ad3c2] 000af032                  dc.l part_palette
[000ad3c6]                           dc.b $00
[000ad3c7]                           dc.b $00
[000ad3c8]                           dc.b $00
[000ad3c9]                           dc.b $29
[000ad3ca]                           dc.b $00
[000ad3cb]                           dc.b $00
[000ad3cc]                           dc.w $2af8
_114_PARTS:
[000ad3ce]                           dc.b $00
[000ad3cf]                           dc.b $75
[000ad3d0]                           dc.b $00
[000ad3d1]                           dc.b $73
[000ad3d2]                           dc.b $00
[000ad3d3]                           dc.b $73
[000ad3d4]                           dc.b $00
[000ad3d5]                           dc.b $19
[000ad3d6]                           dc.b $00
[000ad3d7]                           dc.b $80
[000ad3d8]                           dc.b $00
[000ad3d9]                           dc.b $00
[000ad3da]                           dc.b $00
[000ad3db]                           dc.b $01
[000ad3dc]                           dc.w $1101
[000ad3de]                           dc.b $00
[000ad3df]                           dc.b $2c
[000ad3e0]                           dc.b $00
[000ad3e1]                           dc.b $0e
[000ad3e2]                           dc.b $00
[000ad3e3]                           dc.b $05
[000ad3e4]                           dc.b $00
[000ad3e5]                           dc.b $01
_115_PARTS:
[000ad3e6]                           dc.b $00
[000ad3e7]                           dc.b $72
[000ad3e8]                           dc.w $ffff
[000ad3ea]                           dc.w $ffff
[000ad3ec]                           dc.b $00
[000ad3ed]                           dc.b $19
[000ad3ee]                           dc.w $2000
[000ad3f0]                           dc.b $00
[000ad3f1]                           dc.b $00
[000ad3f2]                           dc.b $00
[000ad3f3]                           dc.b $00
[000ad3f4]                           dc.w $1101
[000ad3f6]                           dc.b $00
[000ad3f7]                           dc.b $00
[000ad3f8]                           dc.b $00
[000ad3f9]                           dc.b $00
[000ad3fa]                           dc.b $00
[000ad3fb]                           dc.b $02
[000ad3fc]                           dc.b $00
[000ad3fd]                           dc.b $01
_115aPARTS:
[000ad3fe]                           dc.b $00
[000ad3ff]                           dc.b $00
[000ad400]                           dc.b $00
[000ad401]                           dc.b $00
[000ad402]                           dc.b $00
[000ad403]                           dc.b $00
[000ad404]                           dc.b $00
[000ad405]                           dc.b $00
[000ad406]                           dc.w $8000
[000ad408]                           dc.b $00
[000ad409]                           dc.b $00
[000ad40a] 000af032                  dc.l part_palette
[000ad40e]                           dc.b $00
[000ad40f]                           dc.b $00
[000ad410]                           dc.b $00
[000ad411]                           dc.b $2a
[000ad412]                           dc.b $00
[000ad413]                           dc.b $00
[000ad414]                           dc.w $2af8
_117_PARTS:
[000ad416]                           dc.b $00
[000ad417]                           dc.b $78
[000ad418]                           dc.b $00
[000ad419]                           dc.b $76
[000ad41a]                           dc.b $00
[000ad41b]                           dc.b $76
[000ad41c]                           dc.b $00
[000ad41d]                           dc.b $19
[000ad41e]                           dc.b $00
[000ad41f]                           dc.b $80
[000ad420]                           dc.b $00
[000ad421]                           dc.b $00
[000ad422]                           dc.b $00
[000ad423]                           dc.b $01
[000ad424]                           dc.w $1101
[000ad426]                           dc.b $00
[000ad427]                           dc.b $33
[000ad428]                           dc.b $00
[000ad429]                           dc.b $0e
[000ad42a]                           dc.b $00
[000ad42b]                           dc.b $05
[000ad42c]                           dc.b $00
[000ad42d]                           dc.b $01
_118_PARTS:
[000ad42e]                           dc.b $00
[000ad42f]                           dc.b $75
[000ad430]                           dc.w $ffff
[000ad432]                           dc.w $ffff
[000ad434]                           dc.b $00
[000ad435]                           dc.b $19
[000ad436]                           dc.w $2000
[000ad438]                           dc.b $00
[000ad439]                           dc.b $00
[000ad43a]                           dc.b $00
[000ad43b]                           dc.b $00
[000ad43c]                           dc.w $1101
[000ad43e]                           dc.b $00
[000ad43f]                           dc.b $00
[000ad440]                           dc.b $00
[000ad441]                           dc.b $00
[000ad442]                           dc.b $00
[000ad443]                           dc.b $02
[000ad444]                           dc.b $00
[000ad445]                           dc.b $01
_118aPARTS:
[000ad446]                           dc.b $00
[000ad447]                           dc.b $00
[000ad448]                           dc.b $00
[000ad449]                           dc.b $00
[000ad44a]                           dc.b $00
[000ad44b]                           dc.b $00
[000ad44c]                           dc.b $00
[000ad44d]                           dc.b $00
[000ad44e]                           dc.w $8000
[000ad450]                           dc.b $00
[000ad451]                           dc.b $00
[000ad452] 000af032                  dc.l part_palette
[000ad456]                           dc.b $00
[000ad457]                           dc.b $00
[000ad458]                           dc.b $00
[000ad459]                           dc.b $2b
[000ad45a]                           dc.b $00
[000ad45b]                           dc.b $00
[000ad45c]                           dc.w $2af8
_120_PARTS:
[000ad45e]                           dc.b $00
[000ad45f]                           dc.b $7b
[000ad460]                           dc.b $00
[000ad461]                           dc.b $79
[000ad462]                           dc.b $00
[000ad463]                           dc.b $79
[000ad464]                           dc.b $00
[000ad465]                           dc.b $19
[000ad466]                           dc.b $00
[000ad467]                           dc.b $80
[000ad468]                           dc.b $00
[000ad469]                           dc.b $00
[000ad46a]                           dc.b $00
[000ad46b]                           dc.b $01
[000ad46c]                           dc.w $1101
[000ad46e]                           dc.b $00
[000ad46f]                           dc.b $02
[000ad470]                           dc.b $00
[000ad471]                           dc.b $10
[000ad472]                           dc.b $00
[000ad473]                           dc.b $05
[000ad474]                           dc.b $00
[000ad475]                           dc.b $01
_121_PARTS:
[000ad476]                           dc.b $00
[000ad477]                           dc.b $78
[000ad478]                           dc.w $ffff
[000ad47a]                           dc.w $ffff
[000ad47c]                           dc.b $00
[000ad47d]                           dc.b $19
[000ad47e]                           dc.w $2000
[000ad480]                           dc.b $00
[000ad481]                           dc.b $00
[000ad482]                           dc.b $00
[000ad483]                           dc.b $00
[000ad484]                           dc.w $1101
[000ad486]                           dc.b $00
[000ad487]                           dc.b $00
[000ad488]                           dc.b $00
[000ad489]                           dc.b $00
[000ad48a]                           dc.b $00
[000ad48b]                           dc.b $02
[000ad48c]                           dc.b $00
[000ad48d]                           dc.b $01
_121aPARTS:
[000ad48e]                           dc.b $00
[000ad48f]                           dc.b $00
[000ad490]                           dc.b $00
[000ad491]                           dc.b $00
[000ad492]                           dc.b $00
[000ad493]                           dc.b $00
[000ad494]                           dc.b $00
[000ad495]                           dc.b $00
[000ad496]                           dc.w $8000
[000ad498]                           dc.b $00
[000ad499]                           dc.b $00
[000ad49a] 000af032                  dc.l part_palette
[000ad49e]                           dc.b $00
[000ad49f]                           dc.b $00
[000ad4a0]                           dc.b $00
[000ad4a1]                           dc.b $2c
[000ad4a2]                           dc.b $00
[000ad4a3]                           dc.b $00
[000ad4a4]                           dc.w $2af8
_123_PARTS:
[000ad4a6]                           dc.b $00
[000ad4a7]                           dc.b $7e
[000ad4a8]                           dc.b $00
[000ad4a9]                           dc.b $7c
[000ad4aa]                           dc.b $00
[000ad4ab]                           dc.b $7c
[000ad4ac]                           dc.b $00
[000ad4ad]                           dc.b $19
[000ad4ae]                           dc.b $00
[000ad4af]                           dc.b $80
[000ad4b0]                           dc.b $00
[000ad4b1]                           dc.b $00
[000ad4b2]                           dc.b $00
[000ad4b3]                           dc.b $01
[000ad4b4]                           dc.w $1101
[000ad4b6]                           dc.b $00
[000ad4b7]                           dc.b $09
[000ad4b8]                           dc.b $00
[000ad4b9]                           dc.b $10
[000ad4ba]                           dc.b $00
[000ad4bb]                           dc.b $05
[000ad4bc]                           dc.b $00
[000ad4bd]                           dc.b $01
_124_PARTS:
[000ad4be]                           dc.b $00
[000ad4bf]                           dc.b $7b
[000ad4c0]                           dc.w $ffff
[000ad4c2]                           dc.w $ffff
[000ad4c4]                           dc.b $00
[000ad4c5]                           dc.b $19
[000ad4c6]                           dc.w $2000
[000ad4c8]                           dc.b $00
[000ad4c9]                           dc.b $00
[000ad4ca]                           dc.b $00
[000ad4cb]                           dc.b $00
[000ad4cc]                           dc.w $1101
[000ad4ce]                           dc.b $00
[000ad4cf]                           dc.b $00
[000ad4d0]                           dc.b $00
[000ad4d1]                           dc.b $00
[000ad4d2]                           dc.b $00
[000ad4d3]                           dc.b $02
[000ad4d4]                           dc.b $00
[000ad4d5]                           dc.b $01
_124aPARTS:
[000ad4d6]                           dc.b $00
[000ad4d7]                           dc.b $00
[000ad4d8]                           dc.b $00
[000ad4d9]                           dc.b $00
[000ad4da]                           dc.b $00
[000ad4db]                           dc.b $00
[000ad4dc]                           dc.b $00
[000ad4dd]                           dc.b $00
[000ad4de]                           dc.w $8000
[000ad4e0]                           dc.b $00
[000ad4e1]                           dc.b $00
[000ad4e2] 000af032                  dc.l part_palette
[000ad4e6]                           dc.b $00
[000ad4e7]                           dc.b $00
[000ad4e8]                           dc.b $00
[000ad4e9]                           dc.b $2d
[000ad4ea]                           dc.b $00
[000ad4eb]                           dc.b $00
[000ad4ec]                           dc.w $2af8
_126_PARTS:
[000ad4ee]                           dc.b $00
[000ad4ef]                           dc.b $81
[000ad4f0]                           dc.b $00
[000ad4f1]                           dc.b $7f
[000ad4f2]                           dc.b $00
[000ad4f3]                           dc.b $7f
[000ad4f4]                           dc.b $00
[000ad4f5]                           dc.b $19
[000ad4f6]                           dc.b $00
[000ad4f7]                           dc.b $80
[000ad4f8]                           dc.b $00
[000ad4f9]                           dc.b $00
[000ad4fa]                           dc.b $00
[000ad4fb]                           dc.b $01
[000ad4fc]                           dc.w $1101
[000ad4fe]                           dc.b $00
[000ad4ff]                           dc.b $10
[000ad500]                           dc.b $00
[000ad501]                           dc.b $10
[000ad502]                           dc.b $00
[000ad503]                           dc.b $05
[000ad504]                           dc.b $00
[000ad505]                           dc.b $01
_127_PARTS:
[000ad506]                           dc.b $00
[000ad507]                           dc.b $7e
[000ad508]                           dc.w $ffff
[000ad50a]                           dc.w $ffff
[000ad50c]                           dc.b $00
[000ad50d]                           dc.b $19
[000ad50e]                           dc.w $2000
[000ad510]                           dc.b $00
[000ad511]                           dc.b $00
[000ad512]                           dc.b $00
[000ad513]                           dc.b $00
[000ad514]                           dc.w $1101
[000ad516]                           dc.b $00
[000ad517]                           dc.b $00
[000ad518]                           dc.b $00
[000ad519]                           dc.b $00
[000ad51a]                           dc.b $00
[000ad51b]                           dc.b $02
[000ad51c]                           dc.b $00
[000ad51d]                           dc.b $01
_127aPARTS:
[000ad51e]                           dc.b $00
[000ad51f]                           dc.b $00
[000ad520]                           dc.b $00
[000ad521]                           dc.b $00
[000ad522]                           dc.b $00
[000ad523]                           dc.b $00
[000ad524]                           dc.b $00
[000ad525]                           dc.b $00
[000ad526]                           dc.w $8000
[000ad528]                           dc.b $00
[000ad529]                           dc.b $00
[000ad52a] 000af032                  dc.l part_palette
[000ad52e]                           dc.b $00
[000ad52f]                           dc.b $00
[000ad530]                           dc.b $00
[000ad531]                           dc.b $2e
[000ad532]                           dc.b $00
[000ad533]                           dc.b $00
[000ad534]                           dc.w $2af8
_129_PARTS:
[000ad536]                           dc.b $00
[000ad537]                           dc.b $84
[000ad538]                           dc.b $00
[000ad539]                           dc.b $82
[000ad53a]                           dc.b $00
[000ad53b]                           dc.b $82
[000ad53c]                           dc.b $00
[000ad53d]                           dc.b $19
[000ad53e]                           dc.b $00
[000ad53f]                           dc.b $80
[000ad540]                           dc.b $00
[000ad541]                           dc.b $00
[000ad542]                           dc.b $00
[000ad543]                           dc.b $01
[000ad544]                           dc.w $1101
[000ad546]                           dc.b $00
[000ad547]                           dc.b $17
[000ad548]                           dc.b $00
[000ad549]                           dc.b $10
[000ad54a]                           dc.b $00
[000ad54b]                           dc.b $05
[000ad54c]                           dc.b $00
[000ad54d]                           dc.b $01
_130_PARTS:
[000ad54e]                           dc.b $00
[000ad54f]                           dc.b $81
[000ad550]                           dc.w $ffff
[000ad552]                           dc.w $ffff
[000ad554]                           dc.b $00
[000ad555]                           dc.b $19
[000ad556]                           dc.w $2000
[000ad558]                           dc.b $00
[000ad559]                           dc.b $00
[000ad55a]                           dc.b $00
[000ad55b]                           dc.b $00
[000ad55c]                           dc.w $1101
[000ad55e]                           dc.b $00
[000ad55f]                           dc.b $00
[000ad560]                           dc.b $00
[000ad561]                           dc.b $00
[000ad562]                           dc.b $00
[000ad563]                           dc.b $02
[000ad564]                           dc.b $00
[000ad565]                           dc.b $01
_130aPARTS:
[000ad566]                           dc.b $00
[000ad567]                           dc.b $00
[000ad568]                           dc.b $00
[000ad569]                           dc.b $00
[000ad56a]                           dc.b $00
[000ad56b]                           dc.b $00
[000ad56c]                           dc.b $00
[000ad56d]                           dc.b $00
[000ad56e]                           dc.w $8000
[000ad570]                           dc.b $00
[000ad571]                           dc.b $00
[000ad572] 000af032                  dc.l part_palette
[000ad576]                           dc.b $00
[000ad577]                           dc.b $00
[000ad578]                           dc.b $00
[000ad579]                           dc.b $2f
[000ad57a]                           dc.b $00
[000ad57b]                           dc.b $00
[000ad57c]                           dc.w $2af8
_132_PARTS:
[000ad57e]                           dc.b $00
[000ad57f]                           dc.b $87
[000ad580]                           dc.b $00
[000ad581]                           dc.b $85
[000ad582]                           dc.b $00
[000ad583]                           dc.b $85
[000ad584]                           dc.b $00
[000ad585]                           dc.b $19
[000ad586]                           dc.b $00
[000ad587]                           dc.b $80
[000ad588]                           dc.b $00
[000ad589]                           dc.b $00
[000ad58a]                           dc.b $00
[000ad58b]                           dc.b $01
[000ad58c]                           dc.w $1101
[000ad58e]                           dc.b $00
[000ad58f]                           dc.b $1e
[000ad590]                           dc.b $00
[000ad591]                           dc.b $10
[000ad592]                           dc.b $00
[000ad593]                           dc.b $05
[000ad594]                           dc.b $00
[000ad595]                           dc.b $01
_133_PARTS:
[000ad596]                           dc.b $00
[000ad597]                           dc.b $84
[000ad598]                           dc.w $ffff
[000ad59a]                           dc.w $ffff
[000ad59c]                           dc.b $00
[000ad59d]                           dc.b $19
[000ad59e]                           dc.w $2000
[000ad5a0]                           dc.b $00
[000ad5a1]                           dc.b $00
[000ad5a2]                           dc.b $00
[000ad5a3]                           dc.b $00
[000ad5a4]                           dc.w $1101
[000ad5a6]                           dc.b $00
[000ad5a7]                           dc.b $00
[000ad5a8]                           dc.b $00
[000ad5a9]                           dc.b $00
[000ad5aa]                           dc.b $00
[000ad5ab]                           dc.b $02
[000ad5ac]                           dc.b $00
[000ad5ad]                           dc.b $01
_133aPARTS:
[000ad5ae]                           dc.b $00
[000ad5af]                           dc.b $00
[000ad5b0]                           dc.b $00
[000ad5b1]                           dc.b $00
[000ad5b2]                           dc.b $00
[000ad5b3]                           dc.b $00
[000ad5b4]                           dc.b $00
[000ad5b5]                           dc.b $00
[000ad5b6]                           dc.w $8000
[000ad5b8]                           dc.b $00
[000ad5b9]                           dc.b $00
[000ad5ba] 000af032                  dc.l part_palette
[000ad5be]                           dc.b $00
[000ad5bf]                           dc.b $00
[000ad5c0]                           dc.b $00
[000ad5c1]                           dc.b $30
[000ad5c2]                           dc.b $00
[000ad5c3]                           dc.b $00
[000ad5c4]                           dc.w $2af8
_135_PARTS:
[000ad5c6]                           dc.b $00
[000ad5c7]                           dc.b $8a
[000ad5c8]                           dc.b $00
[000ad5c9]                           dc.b $88
[000ad5ca]                           dc.b $00
[000ad5cb]                           dc.b $88
[000ad5cc]                           dc.b $00
[000ad5cd]                           dc.b $19
[000ad5ce]                           dc.b $00
[000ad5cf]                           dc.b $80
[000ad5d0]                           dc.b $00
[000ad5d1]                           dc.b $00
[000ad5d2]                           dc.b $00
[000ad5d3]                           dc.b $01
[000ad5d4]                           dc.w $1101
[000ad5d6]                           dc.b $00
[000ad5d7]                           dc.b $25
[000ad5d8]                           dc.b $00
[000ad5d9]                           dc.b $10
[000ad5da]                           dc.b $00
[000ad5db]                           dc.b $05
[000ad5dc]                           dc.b $00
[000ad5dd]                           dc.b $01
_136_PARTS:
[000ad5de]                           dc.b $00
[000ad5df]                           dc.b $87
[000ad5e0]                           dc.w $ffff
[000ad5e2]                           dc.w $ffff
[000ad5e4]                           dc.b $00
[000ad5e5]                           dc.b $19
[000ad5e6]                           dc.w $2000
[000ad5e8]                           dc.b $00
[000ad5e9]                           dc.b $00
[000ad5ea]                           dc.b $00
[000ad5eb]                           dc.b $00
[000ad5ec]                           dc.w $1101
[000ad5ee]                           dc.b $00
[000ad5ef]                           dc.b $00
[000ad5f0]                           dc.b $00
[000ad5f1]                           dc.b $00
[000ad5f2]                           dc.b $00
[000ad5f3]                           dc.b $02
[000ad5f4]                           dc.b $00
[000ad5f5]                           dc.b $01
_136aPARTS:
[000ad5f6]                           dc.b $00
[000ad5f7]                           dc.b $00
[000ad5f8]                           dc.b $00
[000ad5f9]                           dc.b $00
[000ad5fa]                           dc.b $00
[000ad5fb]                           dc.b $00
[000ad5fc]                           dc.b $00
[000ad5fd]                           dc.b $00
[000ad5fe]                           dc.w $8000
[000ad600]                           dc.b $00
[000ad601]                           dc.b $00
[000ad602] 000af032                  dc.l part_palette
[000ad606]                           dc.b $00
[000ad607]                           dc.b $00
[000ad608]                           dc.b $00
[000ad609]                           dc.b $31
[000ad60a]                           dc.b $00
[000ad60b]                           dc.b $00
[000ad60c]                           dc.w $2af8
_138_PARTS:
[000ad60e]                           dc.b $00
[000ad60f]                           dc.b $8d
[000ad610]                           dc.b $00
[000ad611]                           dc.b $8b
[000ad612]                           dc.b $00
[000ad613]                           dc.b $8b
[000ad614]                           dc.b $00
[000ad615]                           dc.b $19
[000ad616]                           dc.b $00
[000ad617]                           dc.b $80
[000ad618]                           dc.b $00
[000ad619]                           dc.b $00
[000ad61a]                           dc.b $00
[000ad61b]                           dc.b $01
[000ad61c]                           dc.w $1101
[000ad61e]                           dc.b $00
[000ad61f]                           dc.b $2c
[000ad620]                           dc.b $00
[000ad621]                           dc.b $10
[000ad622]                           dc.b $00
[000ad623]                           dc.b $05
[000ad624]                           dc.b $00
[000ad625]                           dc.b $01
_139_PARTS:
[000ad626]                           dc.b $00
[000ad627]                           dc.b $8a
[000ad628]                           dc.w $ffff
[000ad62a]                           dc.w $ffff
[000ad62c]                           dc.b $00
[000ad62d]                           dc.b $19
[000ad62e]                           dc.w $2000
[000ad630]                           dc.b $00
[000ad631]                           dc.b $00
[000ad632]                           dc.b $00
[000ad633]                           dc.b $00
[000ad634]                           dc.w $1101
[000ad636]                           dc.b $00
[000ad637]                           dc.b $00
[000ad638]                           dc.b $00
[000ad639]                           dc.b $00
[000ad63a]                           dc.b $00
[000ad63b]                           dc.b $02
[000ad63c]                           dc.b $00
[000ad63d]                           dc.b $01
_139aPARTS:
[000ad63e]                           dc.b $00
[000ad63f]                           dc.b $00
[000ad640]                           dc.b $00
[000ad641]                           dc.b $00
[000ad642]                           dc.b $00
[000ad643]                           dc.b $00
[000ad644]                           dc.b $00
[000ad645]                           dc.b $00
[000ad646]                           dc.w $8000
[000ad648]                           dc.b $00
[000ad649]                           dc.b $00
[000ad64a] 000af032                  dc.l part_palette
[000ad64e]                           dc.b $00
[000ad64f]                           dc.b $00
[000ad650]                           dc.b $00
[000ad651]                           dc.b $32
[000ad652]                           dc.b $00
[000ad653]                           dc.b $00
[000ad654]                           dc.w $2af8
_141_PARTS:
[000ad656]                           dc.b $00
[000ad657]                           dc.b $90
[000ad658]                           dc.b $00
[000ad659]                           dc.b $8e
[000ad65a]                           dc.b $00
[000ad65b]                           dc.b $8e
[000ad65c]                           dc.b $00
[000ad65d]                           dc.b $19
[000ad65e]                           dc.b $00
[000ad65f]                           dc.b $80
[000ad660]                           dc.b $00
[000ad661]                           dc.b $00
[000ad662]                           dc.b $00
[000ad663]                           dc.b $01
[000ad664]                           dc.w $1101
[000ad666]                           dc.b $00
[000ad667]                           dc.b $33
[000ad668]                           dc.b $00
[000ad669]                           dc.b $10
[000ad66a]                           dc.b $00
[000ad66b]                           dc.b $05
[000ad66c]                           dc.b $00
[000ad66d]                           dc.b $01
_142_PARTS:
[000ad66e]                           dc.b $00
[000ad66f]                           dc.b $8d
[000ad670]                           dc.w $ffff
[000ad672]                           dc.w $ffff
[000ad674]                           dc.b $00
[000ad675]                           dc.b $19
[000ad676]                           dc.w $2000
[000ad678]                           dc.b $00
[000ad679]                           dc.b $00
[000ad67a]                           dc.b $00
[000ad67b]                           dc.b $00
[000ad67c]                           dc.w $1101
[000ad67e]                           dc.b $00
[000ad67f]                           dc.b $00
[000ad680]                           dc.b $00
[000ad681]                           dc.b $00
[000ad682]                           dc.b $00
[000ad683]                           dc.b $02
[000ad684]                           dc.b $00
[000ad685]                           dc.b $01
_142aPARTS:
[000ad686]                           dc.b $00
[000ad687]                           dc.b $00
[000ad688]                           dc.b $00
[000ad689]                           dc.b $00
[000ad68a]                           dc.b $00
[000ad68b]                           dc.b $00
[000ad68c]                           dc.b $00
[000ad68d]                           dc.b $00
[000ad68e]                           dc.w $8000
[000ad690]                           dc.b $00
[000ad691]                           dc.b $00
[000ad692] 000af032                  dc.l part_palette
[000ad696]                           dc.b $00
[000ad697]                           dc.b $00
[000ad698]                           dc.b $00
[000ad699]                           dc.b $33
[000ad69a]                           dc.b $00
[000ad69b]                           dc.b $00
[000ad69c]                           dc.w $2af8
_144_PARTS:
[000ad69e]                           dc.b $00
[000ad69f]                           dc.b $93
[000ad6a0]                           dc.b $00
[000ad6a1]                           dc.b $91
[000ad6a2]                           dc.b $00
[000ad6a3]                           dc.b $91
[000ad6a4]                           dc.b $00
[000ad6a5]                           dc.b $19
[000ad6a6]                           dc.b $00
[000ad6a7]                           dc.b $80
[000ad6a8]                           dc.b $00
[000ad6a9]                           dc.b $00
[000ad6aa]                           dc.b $00
[000ad6ab]                           dc.b $01
[000ad6ac]                           dc.w $1101
[000ad6ae]                           dc.b $00
[000ad6af]                           dc.b $02
[000ad6b0]                           dc.b $00
[000ad6b1]                           dc.b $12
[000ad6b2]                           dc.b $00
[000ad6b3]                           dc.b $05
[000ad6b4]                           dc.b $00
[000ad6b5]                           dc.b $01
_145_PARTS:
[000ad6b6]                           dc.b $00
[000ad6b7]                           dc.b $90
[000ad6b8]                           dc.w $ffff
[000ad6ba]                           dc.w $ffff
[000ad6bc]                           dc.b $00
[000ad6bd]                           dc.b $19
[000ad6be]                           dc.w $2000
[000ad6c0]                           dc.b $00
[000ad6c1]                           dc.b $00
[000ad6c2]                           dc.b $00
[000ad6c3]                           dc.b $00
[000ad6c4]                           dc.w $1101
[000ad6c6]                           dc.b $00
[000ad6c7]                           dc.b $00
[000ad6c8]                           dc.b $00
[000ad6c9]                           dc.b $00
[000ad6ca]                           dc.b $00
[000ad6cb]                           dc.b $02
[000ad6cc]                           dc.b $00
[000ad6cd]                           dc.b $01
_145aPARTS:
[000ad6ce]                           dc.b $00
[000ad6cf]                           dc.b $00
[000ad6d0]                           dc.b $00
[000ad6d1]                           dc.b $00
[000ad6d2]                           dc.b $00
[000ad6d3]                           dc.b $00
[000ad6d4]                           dc.b $00
[000ad6d5]                           dc.b $00
[000ad6d6]                           dc.w $8000
[000ad6d8]                           dc.b $00
[000ad6d9]                           dc.b $00
[000ad6da] 000af032                  dc.l part_palette
[000ad6de]                           dc.b $00
[000ad6df]                           dc.b $00
[000ad6e0]                           dc.b $00
[000ad6e1]                           dc.b $34
[000ad6e2]                           dc.b $00
[000ad6e3]                           dc.b $00
[000ad6e4]                           dc.w $2af8
_147_PARTS:
[000ad6e6]                           dc.b $00
[000ad6e7]                           dc.b $96
[000ad6e8]                           dc.b $00
[000ad6e9]                           dc.b $94
[000ad6ea]                           dc.b $00
[000ad6eb]                           dc.b $94
[000ad6ec]                           dc.b $00
[000ad6ed]                           dc.b $19
[000ad6ee]                           dc.b $00
[000ad6ef]                           dc.b $80
[000ad6f0]                           dc.b $00
[000ad6f1]                           dc.b $00
[000ad6f2]                           dc.b $00
[000ad6f3]                           dc.b $01
[000ad6f4]                           dc.w $1101
[000ad6f6]                           dc.b $00
[000ad6f7]                           dc.b $09
[000ad6f8]                           dc.b $00
[000ad6f9]                           dc.b $12
[000ad6fa]                           dc.b $00
[000ad6fb]                           dc.b $05
[000ad6fc]                           dc.b $00
[000ad6fd]                           dc.b $01
_148_PARTS:
[000ad6fe]                           dc.b $00
[000ad6ff]                           dc.b $93
[000ad700]                           dc.w $ffff
[000ad702]                           dc.w $ffff
[000ad704]                           dc.b $00
[000ad705]                           dc.b $19
[000ad706]                           dc.w $2000
[000ad708]                           dc.b $00
[000ad709]                           dc.b $00
[000ad70a]                           dc.b $00
[000ad70b]                           dc.b $00
[000ad70c]                           dc.w $1101
[000ad70e]                           dc.b $00
[000ad70f]                           dc.b $00
[000ad710]                           dc.b $00
[000ad711]                           dc.b $00
[000ad712]                           dc.b $00
[000ad713]                           dc.b $02
[000ad714]                           dc.b $00
[000ad715]                           dc.b $01
_148aPARTS:
[000ad716]                           dc.b $00
[000ad717]                           dc.b $00
[000ad718]                           dc.b $00
[000ad719]                           dc.b $00
[000ad71a]                           dc.b $00
[000ad71b]                           dc.b $00
[000ad71c]                           dc.b $00
[000ad71d]                           dc.b $00
[000ad71e]                           dc.w $8000
[000ad720]                           dc.b $00
[000ad721]                           dc.b $00
[000ad722] 000af032                  dc.l part_palette
[000ad726]                           dc.b $00
[000ad727]                           dc.b $00
[000ad728]                           dc.b $00
[000ad729]                           dc.b $35
[000ad72a]                           dc.b $00
[000ad72b]                           dc.b $00
[000ad72c]                           dc.w $2af8
_150_PARTS:
[000ad72e]                           dc.b $00
[000ad72f]                           dc.b $99
[000ad730]                           dc.b $00
[000ad731]                           dc.b $97
[000ad732]                           dc.b $00
[000ad733]                           dc.b $97
[000ad734]                           dc.b $00
[000ad735]                           dc.b $19
[000ad736]                           dc.b $00
[000ad737]                           dc.b $80
[000ad738]                           dc.b $00
[000ad739]                           dc.b $00
[000ad73a]                           dc.b $00
[000ad73b]                           dc.b $01
[000ad73c]                           dc.w $1101
[000ad73e]                           dc.b $00
[000ad73f]                           dc.b $10
[000ad740]                           dc.b $00
[000ad741]                           dc.b $12
[000ad742]                           dc.b $00
[000ad743]                           dc.b $05
[000ad744]                           dc.b $00
[000ad745]                           dc.b $01
_151_PARTS:
[000ad746]                           dc.b $00
[000ad747]                           dc.b $96
[000ad748]                           dc.w $ffff
[000ad74a]                           dc.w $ffff
[000ad74c]                           dc.b $00
[000ad74d]                           dc.b $19
[000ad74e]                           dc.w $2000
[000ad750]                           dc.b $00
[000ad751]                           dc.b $00
[000ad752]                           dc.b $00
[000ad753]                           dc.b $00
[000ad754]                           dc.w $1101
[000ad756]                           dc.b $00
[000ad757]                           dc.b $00
[000ad758]                           dc.b $00
[000ad759]                           dc.b $00
[000ad75a]                           dc.b $00
[000ad75b]                           dc.b $02
[000ad75c]                           dc.b $00
[000ad75d]                           dc.b $01
_151aPARTS:
[000ad75e]                           dc.b $00
[000ad75f]                           dc.b $00
[000ad760]                           dc.b $00
[000ad761]                           dc.b $00
[000ad762]                           dc.b $00
[000ad763]                           dc.b $00
[000ad764]                           dc.b $00
[000ad765]                           dc.b $00
[000ad766]                           dc.w $8000
[000ad768]                           dc.b $00
[000ad769]                           dc.b $00
[000ad76a] 000af032                  dc.l part_palette
[000ad76e]                           dc.b $00
[000ad76f]                           dc.b $00
[000ad770]                           dc.b $00
[000ad771]                           dc.b $36
[000ad772]                           dc.b $00
[000ad773]                           dc.b $00
[000ad774]                           dc.w $2af8
_153_PARTS:
[000ad776]                           dc.b $00
[000ad777]                           dc.b $9c
[000ad778]                           dc.b $00
[000ad779]                           dc.b $9a
[000ad77a]                           dc.b $00
[000ad77b]                           dc.b $9a
[000ad77c]                           dc.b $00
[000ad77d]                           dc.b $19
[000ad77e]                           dc.b $00
[000ad77f]                           dc.b $80
[000ad780]                           dc.b $00
[000ad781]                           dc.b $00
[000ad782]                           dc.b $00
[000ad783]                           dc.b $01
[000ad784]                           dc.w $1101
[000ad786]                           dc.b $00
[000ad787]                           dc.b $17
[000ad788]                           dc.b $00
[000ad789]                           dc.b $12
[000ad78a]                           dc.b $00
[000ad78b]                           dc.b $05
[000ad78c]                           dc.b $00
[000ad78d]                           dc.b $01
_154_PARTS:
[000ad78e]                           dc.b $00
[000ad78f]                           dc.b $99
[000ad790]                           dc.w $ffff
[000ad792]                           dc.w $ffff
[000ad794]                           dc.b $00
[000ad795]                           dc.b $19
[000ad796]                           dc.w $2000
[000ad798]                           dc.b $00
[000ad799]                           dc.b $00
[000ad79a]                           dc.b $00
[000ad79b]                           dc.b $00
[000ad79c]                           dc.w $1101
[000ad79e]                           dc.b $00
[000ad79f]                           dc.b $00
[000ad7a0]                           dc.b $00
[000ad7a1]                           dc.b $00
[000ad7a2]                           dc.b $00
[000ad7a3]                           dc.b $02
[000ad7a4]                           dc.b $00
[000ad7a5]                           dc.b $01
_154aPARTS:
[000ad7a6]                           dc.b $00
[000ad7a7]                           dc.b $00
[000ad7a8]                           dc.b $00
[000ad7a9]                           dc.b $00
[000ad7aa]                           dc.b $00
[000ad7ab]                           dc.b $00
[000ad7ac]                           dc.b $00
[000ad7ad]                           dc.b $00
[000ad7ae]                           dc.w $8000
[000ad7b0]                           dc.b $00
[000ad7b1]                           dc.b $00
[000ad7b2] 000af032                  dc.l part_palette
[000ad7b6]                           dc.b $00
[000ad7b7]                           dc.b $00
[000ad7b8]                           dc.b $00
[000ad7b9]                           dc.b $37
[000ad7ba]                           dc.b $00
[000ad7bb]                           dc.b $00
[000ad7bc]                           dc.w $2af8
_156_PARTS:
[000ad7be]                           dc.b $00
[000ad7bf]                           dc.b $9f
[000ad7c0]                           dc.b $00
[000ad7c1]                           dc.b $9d
[000ad7c2]                           dc.b $00
[000ad7c3]                           dc.b $9d
[000ad7c4]                           dc.b $00
[000ad7c5]                           dc.b $19
[000ad7c6]                           dc.b $00
[000ad7c7]                           dc.b $80
[000ad7c8]                           dc.b $00
[000ad7c9]                           dc.b $00
[000ad7ca]                           dc.b $00
[000ad7cb]                           dc.b $01
[000ad7cc]                           dc.w $1101
[000ad7ce]                           dc.b $00
[000ad7cf]                           dc.b $1e
[000ad7d0]                           dc.b $00
[000ad7d1]                           dc.b $12
[000ad7d2]                           dc.b $00
[000ad7d3]                           dc.b $05
[000ad7d4]                           dc.b $00
[000ad7d5]                           dc.b $01
_157_PARTS:
[000ad7d6]                           dc.b $00
[000ad7d7]                           dc.b $9c
[000ad7d8]                           dc.w $ffff
[000ad7da]                           dc.w $ffff
[000ad7dc]                           dc.b $00
[000ad7dd]                           dc.b $19
[000ad7de]                           dc.w $2000
[000ad7e0]                           dc.b $00
[000ad7e1]                           dc.b $00
[000ad7e2]                           dc.b $00
[000ad7e3]                           dc.b $00
[000ad7e4]                           dc.w $1101
[000ad7e6]                           dc.b $00
[000ad7e7]                           dc.b $00
[000ad7e8]                           dc.b $00
[000ad7e9]                           dc.b $00
[000ad7ea]                           dc.b $00
[000ad7eb]                           dc.b $02
[000ad7ec]                           dc.b $00
[000ad7ed]                           dc.b $01
_157aPARTS:
[000ad7ee]                           dc.b $00
[000ad7ef]                           dc.b $00
[000ad7f0]                           dc.b $00
[000ad7f1]                           dc.b $00
[000ad7f2]                           dc.b $00
[000ad7f3]                           dc.b $00
[000ad7f4]                           dc.b $00
[000ad7f5]                           dc.b $00
[000ad7f6]                           dc.w $8000
[000ad7f8]                           dc.b $00
[000ad7f9]                           dc.b $00
[000ad7fa] 000af032                  dc.l part_palette
[000ad7fe]                           dc.b $00
[000ad7ff]                           dc.b $00
[000ad800]                           dc.b $00
[000ad801]                           dc.b $38
[000ad802]                           dc.b $00
[000ad803]                           dc.b $00
[000ad804]                           dc.w $2af8
_159_PARTS:
[000ad806]                           dc.b $00
[000ad807]                           dc.b $a2
[000ad808]                           dc.b $00
[000ad809]                           dc.b $a0
[000ad80a]                           dc.b $00
[000ad80b]                           dc.b $a0
[000ad80c]                           dc.b $00
[000ad80d]                           dc.b $19
[000ad80e]                           dc.b $00
[000ad80f]                           dc.b $80
[000ad810]                           dc.b $00
[000ad811]                           dc.b $00
[000ad812]                           dc.b $00
[000ad813]                           dc.b $01
[000ad814]                           dc.w $1101
[000ad816]                           dc.b $00
[000ad817]                           dc.b $25
[000ad818]                           dc.b $00
[000ad819]                           dc.b $12
[000ad81a]                           dc.b $00
[000ad81b]                           dc.b $05
[000ad81c]                           dc.b $00
[000ad81d]                           dc.b $01
_160_PARTS:
[000ad81e]                           dc.b $00
[000ad81f]                           dc.b $9f
[000ad820]                           dc.w $ffff
[000ad822]                           dc.w $ffff
[000ad824]                           dc.b $00
[000ad825]                           dc.b $19
[000ad826]                           dc.w $2000
[000ad828]                           dc.b $00
[000ad829]                           dc.b $00
[000ad82a]                           dc.b $00
[000ad82b]                           dc.b $00
[000ad82c]                           dc.w $1101
[000ad82e]                           dc.b $00
[000ad82f]                           dc.b $00
[000ad830]                           dc.b $00
[000ad831]                           dc.b $00
[000ad832]                           dc.b $00
[000ad833]                           dc.b $02
[000ad834]                           dc.b $00
[000ad835]                           dc.b $01
_160aPARTS:
[000ad836]                           dc.b $00
[000ad837]                           dc.b $00
[000ad838]                           dc.b $00
[000ad839]                           dc.b $00
[000ad83a]                           dc.b $00
[000ad83b]                           dc.b $00
[000ad83c]                           dc.b $00
[000ad83d]                           dc.b $00
[000ad83e]                           dc.w $8000
[000ad840]                           dc.b $00
[000ad841]                           dc.b $00
[000ad842] 000af032                  dc.l part_palette
[000ad846]                           dc.b $00
[000ad847]                           dc.b $00
[000ad848]                           dc.b $00
[000ad849]                           dc.b $39
[000ad84a]                           dc.b $00
[000ad84b]                           dc.b $00
[000ad84c]                           dc.w $2af8
_162_PARTS:
[000ad84e]                           dc.b $00
[000ad84f]                           dc.b $a5
[000ad850]                           dc.b $00
[000ad851]                           dc.b $a3
[000ad852]                           dc.b $00
[000ad853]                           dc.b $a3
[000ad854]                           dc.b $00
[000ad855]                           dc.b $19
[000ad856]                           dc.b $00
[000ad857]                           dc.b $80
[000ad858]                           dc.b $00
[000ad859]                           dc.b $00
[000ad85a]                           dc.b $00
[000ad85b]                           dc.b $01
[000ad85c]                           dc.w $1101
[000ad85e]                           dc.b $00
[000ad85f]                           dc.b $2c
[000ad860]                           dc.b $00
[000ad861]                           dc.b $12
[000ad862]                           dc.b $00
[000ad863]                           dc.b $05
[000ad864]                           dc.b $00
[000ad865]                           dc.b $01
_163_PARTS:
[000ad866]                           dc.b $00
[000ad867]                           dc.b $a2
[000ad868]                           dc.w $ffff
[000ad86a]                           dc.w $ffff
[000ad86c]                           dc.b $00
[000ad86d]                           dc.b $19
[000ad86e]                           dc.w $2000
[000ad870]                           dc.b $00
[000ad871]                           dc.b $00
[000ad872]                           dc.b $00
[000ad873]                           dc.b $00
[000ad874]                           dc.w $1101
[000ad876]                           dc.b $00
[000ad877]                           dc.b $00
[000ad878]                           dc.b $00
[000ad879]                           dc.b $00
[000ad87a]                           dc.b $00
[000ad87b]                           dc.b $02
[000ad87c]                           dc.b $00
[000ad87d]                           dc.b $01
_163aPARTS:
[000ad87e]                           dc.b $00
[000ad87f]                           dc.b $00
[000ad880]                           dc.b $00
[000ad881]                           dc.b $00
[000ad882]                           dc.b $00
[000ad883]                           dc.b $00
[000ad884]                           dc.b $00
[000ad885]                           dc.b $00
[000ad886]                           dc.w $8000
[000ad888]                           dc.b $00
[000ad889]                           dc.b $00
[000ad88a] 000af032                  dc.l part_palette
[000ad88e]                           dc.b $00
[000ad88f]                           dc.b $00
[000ad890]                           dc.b $00
[000ad891]                           dc.b $3a
[000ad892]                           dc.b $00
[000ad893]                           dc.b $00
[000ad894]                           dc.w $2af8
_165_PARTS:
[000ad896]                           dc.b $00
[000ad897]                           dc.b $00
[000ad898]                           dc.b $00
[000ad899]                           dc.b $a6
[000ad89a]                           dc.b $00
[000ad89b]                           dc.b $a6
[000ad89c]                           dc.b $00
[000ad89d]                           dc.b $19
[000ad89e]                           dc.b $00
[000ad89f]                           dc.b $80
[000ad8a0]                           dc.b $00
[000ad8a1]                           dc.b $00
[000ad8a2]                           dc.b $00
[000ad8a3]                           dc.b $01
[000ad8a4]                           dc.w $1101
[000ad8a6]                           dc.b $00
[000ad8a7]                           dc.b $33
[000ad8a8]                           dc.b $00
[000ad8a9]                           dc.b $12
[000ad8aa]                           dc.b $00
[000ad8ab]                           dc.b $05
[000ad8ac]                           dc.b $00
[000ad8ad]                           dc.b $01
_166_PARTS:
[000ad8ae]                           dc.b $00
[000ad8af]                           dc.b $a5
[000ad8b0]                           dc.w $ffff
[000ad8b2]                           dc.w $ffff
[000ad8b4]                           dc.b $00
[000ad8b5]                           dc.b $19
[000ad8b6]                           dc.w $2000
[000ad8b8]                           dc.b $00
[000ad8b9]                           dc.b $00
[000ad8ba]                           dc.b $00
[000ad8bb]                           dc.b $00
[000ad8bc]                           dc.w $1101
[000ad8be]                           dc.b $00
[000ad8bf]                           dc.b $00
[000ad8c0]                           dc.b $00
[000ad8c1]                           dc.b $00
[000ad8c2]                           dc.b $00
[000ad8c3]                           dc.b $02
[000ad8c4]                           dc.b $00
[000ad8c5]                           dc.b $01
_166aPARTS:
[000ad8c6]                           dc.b $00
[000ad8c7]                           dc.b $00
[000ad8c8]                           dc.b $00
[000ad8c9]                           dc.b $00
[000ad8ca]                           dc.b $00
[000ad8cb]                           dc.b $00
[000ad8cc]                           dc.b $00
[000ad8cd]                           dc.b $00
[000ad8ce]                           dc.w $8020
[000ad8d0]                           dc.b $00
[000ad8d1]                           dc.b $00
[000ad8d2] 000af032                  dc.l part_palette
[000ad8d6]                           dc.b $00
[000ad8d7]                           dc.b $00
[000ad8d8]                           dc.b $00
[000ad8d9]                           dc.b $3b
[000ad8da]                           dc.b $00
[000ad8db]                           dc.b $00
[000ad8dc]                           dc.w $2af8
PARTS_TOOL:
[000ad8de]                           dc.w $ffff
[000ad8e0]                           dc.b $00
[000ad8e1]                           dc.b $01
[000ad8e2]                           dc.b $00
[000ad8e3]                           dc.b $0a
[000ad8e4]                           dc.b $00
[000ad8e5]                           dc.b $18
[000ad8e6]                           dc.b $00
[000ad8e7]                           dc.b $40
[000ad8e8]                           dc.b $00
[000ad8e9]                           dc.b $00
[000ad8ea] 000ac1aa                  dc.l A_3DBUTTON03
[000ad8ee]                           dc.b $00
[000ad8ef]                           dc.b $00
[000ad8f0]                           dc.b $00
[000ad8f1]                           dc.b $00
[000ad8f2]                           dc.b $00
[000ad8f3]                           dc.b $14
[000ad8f4]                           dc.w $2000
_01_PARTS_TOOL:
[000ad8f6]                           dc.b $00
[000ad8f7]                           dc.b $04
[000ad8f8]                           dc.b $00
[000ad8f9]                           dc.b $02
[000ad8fa]                           dc.b $00
[000ad8fb]                           dc.b $02
[000ad8fc]                           dc.b $00
[000ad8fd]                           dc.b $1f
[000ad8fe]                           dc.b $00
[000ad8ff]                           dc.b $40
[000ad900]                           dc.b $00
[000ad901]                           dc.b $00
[000ad902] 000ac85a                  dc.l I_SPEC
[000ad906]                           dc.b $00
[000ad907]                           dc.b $00
[000ad908]                           dc.b $00
[000ad909]                           dc.b $00
[000ad90a]                           dc.b $00
[000ad90b]                           dc.b $04
[000ad90c]                           dc.b $00
[000ad90d]                           dc.b $02
_02_PARTS_TOOL:
[000ad90e]                           dc.b $00
[000ad90f]                           dc.b $01
[000ad910]                           dc.w $ffff
[000ad912]                           dc.w $ffff
[000ad914]                           dc.b $00
[000ad915]                           dc.b $18
[000ad916]                           dc.w $1005
[000ad918]                           dc.b $00
[000ad919]                           dc.b $00
[000ad91a] 000ac1ea                  dc.l A_3DBUTTON06
[000ad91e]                           dc.b $00
[000ad91f]                           dc.b $00
[000ad920]                           dc.b $00
[000ad921]                           dc.b $00
[000ad922]                           dc.w $2000
[000ad924]                           dc.w $2000
_02aPARTS_TOOL:
[000ad926] 0002382c                  dc.l go_spec_edit
[000ad92a]                           dc.b $00
[000ad92b]                           dc.b $00
[000ad92c]                           dc.b $00
[000ad92d]                           dc.b $00
[000ad92e]                           dc.w $8000
[000ad930]                           dc.b $00
[000ad931]                           dc.b $00
[000ad932]                           dc.b $00
[000ad933]                           dc.b $00
[000ad934]                           dc.b $00
[000ad935]                           dc.b $00
[000ad936]                           dc.b $00
[000ad937]                           dc.b $00
[000ad938]                           dc.b $00
[000ad939]                           dc.b $00
[000ad93a]                           dc.b $00
[000ad93b]                           dc.b $00
[000ad93c]                           dc.b $00
[000ad93d]                           dc.b $00
_04_PARTS_TOOL:
[000ad93e]                           dc.b $00
[000ad93f]                           dc.b $07
[000ad940]                           dc.b $00
[000ad941]                           dc.b $05
[000ad942]                           dc.b $00
[000ad943]                           dc.b $05
[000ad944]                           dc.b $00
[000ad945]                           dc.b $1f
[000ad946]                           dc.b $00
[000ad947]                           dc.b $40
[000ad948]                           dc.b $00
[000ad949]                           dc.b $00
[000ad94a] 000ac4a6                  dc.l I_FLAGS
[000ad94e]                           dc.b $00
[000ad94f]                           dc.b $04
[000ad950]                           dc.b $00
[000ad951]                           dc.b $00
[000ad952]                           dc.b $00
[000ad953]                           dc.b $04
[000ad954]                           dc.b $00
[000ad955]                           dc.b $02
_05_PARTS_TOOL:
[000ad956]                           dc.b $00
[000ad957]                           dc.b $04
[000ad958]                           dc.w $ffff
[000ad95a]                           dc.w $ffff
[000ad95c]                           dc.b $00
[000ad95d]                           dc.b $18
[000ad95e]                           dc.w $1005
[000ad960]                           dc.b $00
[000ad961]                           dc.b $00
[000ad962] 000ac1ca                  dc.l A_3DBUTTON05
[000ad966]                           dc.b $00
[000ad967]                           dc.b $00
[000ad968]                           dc.b $00
[000ad969]                           dc.b $00
[000ad96a]                           dc.w $2000
[000ad96c]                           dc.w $2000
_05aPARTS_TOOL:
[000ad96e] 00023838                  dc.l go_flag_edit
[000ad972]                           dc.b $00
[000ad973]                           dc.b $00
[000ad974]                           dc.b $00
[000ad975]                           dc.b $00
[000ad976]                           dc.w $8000
[000ad978]                           dc.b $00
[000ad979]                           dc.b $00
[000ad97a]                           dc.b $00
[000ad97b]                           dc.b $00
[000ad97c]                           dc.b $00
[000ad97d]                           dc.b $00
[000ad97e]                           dc.b $00
[000ad97f]                           dc.b $00
[000ad980]                           dc.b $00
[000ad981]                           dc.b $00
[000ad982]                           dc.b $00
[000ad983]                           dc.b $00
[000ad984]                           dc.b $00
[000ad985]                           dc.b $00
_07_PARTS_TOOL:
[000ad986]                           dc.b $00
[000ad987]                           dc.b $0a
[000ad988]                           dc.b $00
[000ad989]                           dc.b $08
[000ad98a]                           dc.b $00
[000ad98b]                           dc.b $08
[000ad98c]                           dc.b $00
[000ad98d]                           dc.b $1f
[000ad98e]                           dc.b $00
[000ad98f]                           dc.b $40
[000ad990]                           dc.b $00
[000ad991]                           dc.b $00
[000ad992] 000ac71e                  dc.l I_REF
[000ad996]                           dc.b $00
[000ad997]                           dc.b $08
[000ad998]                           dc.b $00
[000ad999]                           dc.b $00
[000ad99a]                           dc.b $00
[000ad99b]                           dc.b $04
[000ad99c]                           dc.b $00
[000ad99d]                           dc.b $02
_08_PARTS_TOOL:
[000ad99e]                           dc.b $00
[000ad99f]                           dc.b $07
[000ad9a0]                           dc.w $ffff
[000ad9a2]                           dc.w $ffff
[000ad9a4]                           dc.b $00
[000ad9a5]                           dc.b $18
[000ad9a6]                           dc.w $1005
[000ad9a8]                           dc.b $00
[000ad9a9]                           dc.b $00
[000ad9aa] 000ac20a                  dc.l A_3DBUTTON07
[000ad9ae]                           dc.b $00
[000ad9af]                           dc.b $00
[000ad9b0]                           dc.b $00
[000ad9b1]                           dc.b $00
[000ad9b2]                           dc.w $2000
[000ad9b4]                           dc.w $2000
_08aPARTS_TOOL:
[000ad9b6] 00023844                  dc.l go_ref_edit
[000ad9ba]                           dc.b $00
[000ad9bb]                           dc.b $00
[000ad9bc]                           dc.b $00
[000ad9bd]                           dc.b $00
[000ad9be]                           dc.w $8000
[000ad9c0]                           dc.b $00
[000ad9c1]                           dc.b $00
[000ad9c2]                           dc.b $00
[000ad9c3]                           dc.b $00
[000ad9c4]                           dc.b $00
[000ad9c5]                           dc.b $00
[000ad9c6]                           dc.b $00
[000ad9c7]                           dc.b $00
[000ad9c8]                           dc.b $00
[000ad9c9]                           dc.b $00
[000ad9ca]                           dc.b $00
[000ad9cb]                           dc.b $00
[000ad9cc]                           dc.b $00
[000ad9cd]                           dc.b $00
_10_PARTS_TOOL:
[000ad9ce]                           dc.b $00
[000ad9cf]                           dc.b $00
[000ad9d0]                           dc.b $00
[000ad9d1]                           dc.b $0b
[000ad9d2]                           dc.b $00
[000ad9d3]                           dc.b $0b
[000ad9d4]                           dc.b $00
[000ad9d5]                           dc.b $1f
[000ad9d6]                           dc.b $00
[000ad9d7]                           dc.b $40
[000ad9d8]                           dc.b $00
[000ad9d9]                           dc.b $00
[000ad9da] 000ac5e2                  dc.l I_POS
[000ad9de]                           dc.b $00
[000ad9df]                           dc.b $0c
[000ad9e0]                           dc.b $00
[000ad9e1]                           dc.b $00
[000ad9e2]                           dc.b $00
[000ad9e3]                           dc.b $04
[000ad9e4]                           dc.b $00
[000ad9e5]                           dc.b $02
_11_PARTS_TOOL:
[000ad9e6]                           dc.b $00
[000ad9e7]                           dc.b $0a
[000ad9e8]                           dc.w $ffff
[000ad9ea]                           dc.w $ffff
[000ad9ec]                           dc.b $00
[000ad9ed]                           dc.b $18
[000ad9ee]                           dc.w $1005
[000ad9f0]                           dc.b $00
[000ad9f1]                           dc.b $00
[000ad9f2] 000ac22a                  dc.l A_3DBUTTON08
[000ad9f6]                           dc.b $00
[000ad9f7]                           dc.b $00
[000ad9f8]                           dc.b $00
[000ad9f9]                           dc.b $00
[000ad9fa]                           dc.w $2000
[000ad9fc]                           dc.w $2000
_11aPARTS_TOOL:
[000ad9fe] 00023850                  dc.l go_pos_edit
[000ada02]                           dc.b $00
[000ada03]                           dc.b $00
[000ada04]                           dc.b $00
[000ada05]                           dc.b $00
[000ada06]                           dc.w $8020
[000ada08]                           dc.b $00
[000ada09]                           dc.b $00
[000ada0a]                           dc.b $00
[000ada0b]                           dc.b $00
[000ada0c]                           dc.b $00
[000ada0d]                           dc.b $00
[000ada0e]                           dc.b $00
[000ada0f]                           dc.b $00
[000ada10]                           dc.b $00
[000ada11]                           dc.b $00
[000ada12]                           dc.b $00
[000ada13]                           dc.b $00
[000ada14]                           dc.b $00
[000ada15]                           dc.b $00
WI_PARTS:
[000ada16]                           dc.b $00
[000ada17]                           dc.b $00
[000ada18]                           dc.b $00
[000ada19]                           dc.b $00
[000ada1a] 0002366a                  dc.l part_service
[000ada1e] 000234fe                  dc.l part_make
[000ada22] 0004f69e                  dc.l Awi_open
[000ada26] 0002364c                  dc.l part_init
[000ada2a] 000ac91e                  dc.l PARTS
[000ada2e] 000ad8de                  dc.l PARTS_TOOL
[000ada32]                           dc.b $00
[000ada33]                           dc.b $00
[000ada34]                           dc.b $00
[000ada35]                           dc.b $00
[000ada36]                           dc.w $ffff
[000ada38]                           dc.w $6fed
[000ada3a]                           dc.b $00
[000ada3b]                           dc.b $04
[000ada3c]                           dc.b $00
[000ada3d]                           dc.b $02
[000ada3e]                           dc.b $00
[000ada3f]                           dc.b $14
[000ada40]                           dc.b $00
[000ada41]                           dc.b $14
[000ada42]                           dc.b $00
[000ada43]                           dc.b $00
[000ada44]                           dc.b $00
[000ada45]                           dc.b $00
[000ada46]                           dc.b $00
[000ada47]                           dc.b $00
[000ada48]                           dc.b $00
[000ada49]                           dc.b $00
[000ada4a]                           dc.b $00
[000ada4b]                           dc.b $00
[000ada4c]                           dc.b $00
[000ada4d]                           dc.b $00
[000ada4e]                           dc.b $00
[000ada4f]                           dc.b $00
[000ada50]                           dc.b $00
[000ada51]                           dc.b $00
[000ada52]                           dc.w $ffff
[000ada54]                           dc.w $ffff
[000ada56]                           dc.w $ffff
[000ada58]                           dc.w $ffff
[000ada5a]                           dc.b $00
[000ada5b]                           dc.b $00
[000ada5c]                           dc.b $00
[000ada5d]                           dc.b $00
[000ada5e]                           dc.w $fcf8
[000ada60] 000ab6fc                  dc.l TEXT_02
[000ada64] 000ab6fb                  dc.l TEXT_002
[000ada68]                           dc.w $2710
[000ada6a]                           dc.w $010c
[000ada6c]                           dc.b $00
[000ada6d]                           dc.b $00
[000ada6e]                           dc.w $ffff
[000ada70]                           dc.b $00
[000ada71]                           dc.b $00
[000ada72]                           dc.b $00
[000ada73]                           dc.b $00
[000ada74]                           dc.b $00
[000ada75]                           dc.b $00
[000ada76]                           dc.b $00
[000ada77]                           dc.b $00
[000ada78] 0005ef42                  dc.l Awi_nokey
[000ada7c] 0004b600                  dc.l Awi_obchange
[000ada80] 0004b8cc                  dc.l Awi_redraw
[000ada84] 00050454                  dc.l Awi_topped
[000ada88] 00023632                  dc.l part_close
[000ada8c] 00050496                  dc.l Awi_fulled
[000ada90] 0004bcc8                  dc.l Awi_arrowed
[000ada94] 0004beea                  dc.l Awi_hslid
[000ada98] 0004bf56                  dc.l Awi_vslid
[000ada9c] 000506ca                  dc.l Awi_sized
[000adaa0] 000507bc                  dc.l Awi_moved
[000adaa4] 00050f9c                  dc.l Awi_iconify
[000adaa8] 0005117c                  dc.l Awi_uniconify
[000adaac] 00052328                  dc.l Awi_gemscript
[000adab0] 000ab6df                  dc.l STGUIDE_01
[000adab4]                           dc.b $00
[000adab5]                           dc.b $00
[000adab6]                           dc.b $00
[000adab7]                           dc.b $00
button:
[000adab8] 000af0e2                  dc.l $000af0e2 ; no symbol found
[000adabc] 000af0e8                  dc.l $000af0e8 ; no symbol found
[000adac0] 000af0e8                  dc.l $000af0e8 ; no symbol found
[000adac4]                           dc.b $00
[000adac5]                           dc.b $03
[000adac6]                           dc.b $00
[000adac7]                           dc.b $06
[000adac8]                           dc.b $00
[000adac9]                           dc.b $02
[000adaca]                           dc.w $1180
[000adacc]                           dc.b $00
[000adacd]                           dc.b $00
[000adace]                           dc.w $ffff
[000adad0]                           dc.b $00
[000adad1]                           dc.b $06
[000adad2]                           dc.b $00
[000adad3]                           dc.b $00
gtext:
[000adad4] 000af0e9                  dc.l $000af0e9 ; no symbol found
[000adad8] 000af0e8                  dc.l $000af0e8 ; no symbol found
[000adadc] 000af0e8                  dc.l $000af0e8 ; no symbol found
[000adae0]                           dc.b $00
[000adae1]                           dc.b $03
[000adae2]                           dc.b $00
[000adae3]                           dc.b $06
[000adae4]                           dc.b $00
[000adae5]                           dc.b $02
[000adae6]                           dc.w $1180
[000adae8]                           dc.b $00
[000adae9]                           dc.b $00
[000adaea]                           dc.w $ffff
[000adaec]                           dc.b $00
[000adaed]                           dc.b $05
[000adaee]                           dc.b $00
[000adaef]                           dc.b $00
title:
[000adaf0] 000af0ee                  dc.l $000af0ee ; no symbol found
[000adaf4] 000af0e8                  dc.l $000af0e8 ; no symbol found
[000adaf8] 000af0e8                  dc.l $000af0e8 ; no symbol found
[000adafc]                           dc.b $00
[000adafd]                           dc.b $03
[000adafe]                           dc.b $00
[000adaff]                           dc.b $06
[000adb00]                           dc.b $00
[000adb01]                           dc.b $02
[000adb02]                           dc.w $1180
[000adb04]                           dc.b $00
[000adb05]                           dc.b $00
[000adb06]                           dc.w $ffff
[000adb08]                           dc.b $00
[000adb09]                           dc.b $08
[000adb0a]                           dc.b $00
[000adb0b]                           dc.b $00
editext:
[000adb0c] 000af0f6                  dc.l $000af0f6 ; no symbol found
[000adb10] 000af0fa                  dc.l $000af0fa ; no symbol found
[000adb14] 000af104                  dc.l $000af104 ; no symbol found
[000adb18]                           dc.b $00
[000adb19]                           dc.b $03
[000adb1a]                           dc.b $00
[000adb1b]                           dc.b $06
[000adb1c]                           dc.b $00
[000adb1d]                           dc.b $02
[000adb1e]                           dc.w $1180
[000adb20]                           dc.b $00
[000adb21]                           dc.b $00
[000adb22]                           dc.w $ffff
[000adb24]                           dc.b $00
[000adb25]                           dc.b $04
[000adb26]                           dc.b $00
[000adb27]                           dc.b $0a
usertext:
[000adb28] 000af109                  dc.l $000af109 ; no symbol found
[000adb2c] 000af0e8                  dc.l $000af0e8 ; no symbol found
[000adb30] 000af0e8                  dc.l $000af0e8 ; no symbol found
[000adb34]                           dc.b $00
[000adb35]                           dc.b $03
[000adb36]                           dc.b $00
[000adb37]                           dc.b $06
[000adb38]                           dc.b $00
[000adb39]                           dc.b $02
[000adb3a]                           dc.w $1180
[000adb3c]                           dc.b $00
[000adb3d]                           dc.b $00
[000adb3e]                           dc.w $ffff
[000adb40]                           dc.b $00
[000adb41]                           dc.b $08
[000adb42]                           dc.b $00
[000adb43]                           dc.b $00
check:
[000adb44] 000593fc                  dc.l A_checkbox
[000adb48]                           dc.b $00
[000adb49]                           dc.b $00
[000adb4a]                           dc.b $00
[000adb4b]                           dc.b $00
[000adb4c]                           dc.b $00
[000adb4d]                           dc.b $00
[000adb4e]                           dc.b $00
[000adb4f]                           dc.b $00
[000adb50]                           dc.b $00
[000adb51]                           dc.b $00
[000adb52]                           dc.b $00
[000adb53]                           dc.b $00
[000adb54]                           dc.b $00
[000adb55]                           dc.b $00
[000adb56]                           dc.b $00
[000adb57]                           dc.b $00
[000adb58]                           dc.b $00
[000adb59]                           dc.b $00
[000adb5a]                           dc.b $00
[000adb5b]                           dc.b $00
[000adb5c]                           dc.b $00
[000adb5d]                           dc.b $00
[000adb5e]                           dc.b $00
[000adb5f]                           dc.b $00
[000adb60]                           dc.b $00
[000adb61]                           dc.b $00
[000adb62]                           dc.b $00
[000adb63]                           dc.b $00
radio:
[000adb64] 000593ea                  dc.l A_radiobutton
[000adb68]                           dc.b $00
[000adb69]                           dc.b $00
[000adb6a]                           dc.b $00
[000adb6b]                           dc.b $00
[000adb6c]                           dc.b $00
[000adb6d]                           dc.b $00
[000adb6e]                           dc.b $00
[000adb6f]                           dc.b $00
[000adb70]                           dc.b $00
[000adb71]                           dc.b $00
[000adb72]                           dc.b $00
[000adb73]                           dc.b $00
[000adb74]                           dc.b $00
[000adb75]                           dc.b $00
[000adb76]                           dc.b $00
[000adb77]                           dc.b $00
[000adb78]                           dc.b $00
[000adb79]                           dc.b $00
[000adb7a]                           dc.b $00
[000adb7b]                           dc.b $00
[000adb7c]                           dc.b $00
[000adb7d]                           dc.b $00
[000adb7e]                           dc.b $00
[000adb7f]                           dc.b $00
[000adb80]                           dc.b $00
[000adb81]                           dc.b $00
[000adb82]                           dc.b $00
[000adb83]                           dc.b $00
frame:
[000adb84] 00059f9c                  dc.l A_innerframe
[000adb88]                           dc.b $00
[000adb89]                           dc.b $03
[000adb8a]                           dc.w $1101
[000adb8c]                           dc.b $00
[000adb8d]                           dc.b $00
[000adb8e]                           dc.b $00
[000adb8f]                           dc.b $00
[000adb90]                           dc.b $00
[000adb91]                           dc.b $00
[000adb92]                           dc.b $00
[000adb93]                           dc.b $00
[000adb94]                           dc.b $00
[000adb95]                           dc.b $00
[000adb96]                           dc.b $00
[000adb97]                           dc.b $00
[000adb98]                           dc.b $00
[000adb99]                           dc.b $00
[000adb9a]                           dc.b $00
[000adb9b]                           dc.b $00
[000adb9c]                           dc.b $00
[000adb9d]                           dc.b $00
[000adb9e]                           dc.b $00
[000adb9f]                           dc.b $00
[000adba0]                           dc.b $00
[000adba1]                           dc.b $00
[000adba2]                           dc.b $00
[000adba3]                           dc.b $00
astrabs:
[000adba4]                           dc.b $00
[000adba5]                           dc.b $00
[000adba6]                           dc.b $00
[000adba7]                           dc.b $00
[000adba8] 000af0f6                  dc.l $000af0f6 ; no symbol found
[000adbac]                           dc.b $00
[000adbad]                           dc.b $00
[000adbae]                           dc.b $00
[000adbaf]                           dc.b $00
[000adbb0]                           dc.b $00
[000adbb1]                           dc.b $04
[000adbb2]                           dc.b $00
[000adbb3]                           dc.b $00
[000adbb4]                           dc.b $00
[000adbb5]                           dc.b $04
[000adbb6]                           dc.b $00
[000adbb7]                           dc.b $00
[000adbb8]                           dc.b $00
[000adbb9]                           dc.b $00
[000adbba]                           dc.b 'TEXT_01',0
[000adbc2]                           dc.b $00
[000adbc3]                           dc.b $00
[000adbc4]                           dc.b $00
[000adbc5]                           dc.b $00
[000adbc6]                           dc.b $00
[000adbc7]                           dc.b $00
[000adbc8]                           dc.b $00
[000adbc9]                           dc.b $00
[000adbca]                           dc.b $00
[000adbcb]                           dc.b $00
[000adbcc]                           dc.b $00
[000adbcd]                           dc.b $00
[000adbce]                           dc.b $00
[000adbcf]                           dc.b $00
[000adbd0]                           dc.b $00
[000adbd1]                           dc.b $00
[000adbd2]                           dc.b $00
[000adbd3]                           dc.b $00
[000adbd4]                           dc.b $00
[000adbd5]                           dc.b $00
[000adbd6]                           dc.b $00
[000adbd7]                           dc.b $00
[000adbd8]                           dc.b $00
[000adbd9]                           dc.b $00
[000adbda]                           dc.b $00
[000adbdb]                           dc.b $01
[000adbdc]                           dc.b $00
[000adbdd]                           dc.b $00
[000adbde]                           dc.b $00
[000adbdf]                           dc.b $00
[000adbe0]                           dc.b $00
[000adbe1]                           dc.b $00
[000adbe2]                           dc.b $00
[000adbe3]                           dc.b $00
[000adbe4]                           dc.b $00
[000adbe5]                           dc.b $00
astredit:
[000adbe6]                           dc.b $00
[000adbe7]                           dc.b $00
[000adbe8]                           dc.b $00
[000adbe9]                           dc.b $00
[000adbea] 000af0fa                  dc.l $000af0fa ; no symbol found
[000adbee]                           dc.b $00
[000adbef]                           dc.b $00
[000adbf0]                           dc.b $00
[000adbf1]                           dc.b $00
[000adbf2]                           dc.b $00
[000adbf3]                           dc.b $0a
[000adbf4]                           dc.b $00
[000adbf5]                           dc.b $00
[000adbf6]                           dc.b $00
[000adbf7]                           dc.b $0a
[000adbf8]                           dc.b $00
[000adbf9]                           dc.b $00
[000adbfa]                           dc.b $00
[000adbfb]                           dc.b $00
[000adbfc]                           dc.b 'TEXT_01',0
[000adc04]                           dc.b $00
[000adc05]                           dc.b $00
[000adc06]                           dc.b $00
[000adc07]                           dc.b $00
[000adc08]                           dc.b $00
[000adc09]                           dc.b $00
[000adc0a]                           dc.b $00
[000adc0b]                           dc.b $00
[000adc0c]                           dc.b $00
[000adc0d]                           dc.b $00
[000adc0e]                           dc.b $00
[000adc0f]                           dc.b $00
[000adc10]                           dc.b $00
[000adc11]                           dc.b $00
[000adc12]                           dc.b $00
[000adc13]                           dc.b $00
[000adc14]                           dc.b $00
[000adc15]                           dc.b $00
[000adc16]                           dc.b $00
[000adc17]                           dc.b $00
[000adc18]                           dc.b $00
[000adc19]                           dc.b $00
[000adc1a]                           dc.b $00
[000adc1b]                           dc.b $00
[000adc1c]                           dc.b $00
[000adc1d]                           dc.b $01
[000adc1e]                           dc.b $00
[000adc1f]                           dc.b $00
[000adc20]                           dc.b $00
[000adc21]                           dc.b $00
[000adc22]                           dc.b $00
[000adc23]                           dc.b $00
[000adc24]                           dc.b $00
[000adc25]                           dc.b $00
[000adc26]                           dc.b $00
[000adc27]                           dc.b $00
astrvalid:
[000adc28]                           dc.b $00
[000adc29]                           dc.b $00
[000adc2a]                           dc.b $00
[000adc2b]                           dc.b $00
[000adc2c] 000af104                  dc.l $000af104 ; no symbol found
[000adc30]                           dc.b $00
[000adc31]                           dc.b $00
[000adc32]                           dc.b $00
[000adc33]                           dc.b $00
[000adc34]                           dc.b $00
[000adc35]                           dc.b $05
[000adc36]                           dc.b $00
[000adc37]                           dc.b $00
[000adc38]                           dc.b $00
[000adc39]                           dc.b $05
[000adc3a]                           dc.b $00
[000adc3b]                           dc.b $00
[000adc3c]                           dc.b $00
[000adc3d]                           dc.b $00
[000adc3e]                           dc.b 'TEXT_01',0
[000adc46]                           dc.b $00
[000adc47]                           dc.b $00
[000adc48]                           dc.b $00
[000adc49]                           dc.b $00
[000adc4a]                           dc.b $00
[000adc4b]                           dc.b $00
[000adc4c]                           dc.b $00
[000adc4d]                           dc.b $00
[000adc4e]                           dc.b $00
[000adc4f]                           dc.b $00
[000adc50]                           dc.b $00
[000adc51]                           dc.b $00
[000adc52]                           dc.b $00
[000adc53]                           dc.b $00
[000adc54]                           dc.b $00
[000adc55]                           dc.b $00
[000adc56]                           dc.b $00
[000adc57]                           dc.b $00
[000adc58]                           dc.b $00
[000adc59]                           dc.b $00
[000adc5a]                           dc.b $00
[000adc5b]                           dc.b $00
[000adc5c]                           dc.b $00
[000adc5d]                           dc.b $00
[000adc5e]                           dc.b $00
[000adc5f]                           dc.b $01
[000adc60]                           dc.b $00
[000adc61]                           dc.b $00
[000adc62]                           dc.b $00
[000adc63]                           dc.b $00
[000adc64]                           dc.b $00
[000adc65]                           dc.b $00
[000adc66]                           dc.b $00
[000adc67]                           dc.b $00
[000adc68]                           dc.b $00
[000adc69]                           dc.b $00
astring:
[000adc6a]                           dc.b $00
[000adc6b]                           dc.b $00
[000adc6c]                           dc.b $00
[000adc6d]                           dc.b $00
[000adc6e] 000af111                  dc.l $000af111 ; no symbol found
[000adc72]                           dc.b $00
[000adc73]                           dc.b $00
[000adc74]                           dc.b $00
[000adc75]                           dc.b $00
[000adc76]                           dc.b $00
[000adc77]                           dc.b $07
[000adc78]                           dc.b $00
[000adc79]                           dc.b $00
[000adc7a]                           dc.b $00
[000adc7b]                           dc.b $07
[000adc7c]                           dc.b $00
[000adc7d]                           dc.b $00
[000adc7e]                           dc.b $00
[000adc7f]                           dc.b $00
[000adc80]                           dc.b 'TEXT_01',0
[000adc88]                           dc.b $00
[000adc89]                           dc.b $00
[000adc8a]                           dc.b $00
[000adc8b]                           dc.b $00
[000adc8c]                           dc.b $00
[000adc8d]                           dc.b $00
[000adc8e]                           dc.b $00
[000adc8f]                           dc.b $00
[000adc90]                           dc.b $00
[000adc91]                           dc.b $00
[000adc92]                           dc.b $00
[000adc93]                           dc.b $00
[000adc94]                           dc.b $00
[000adc95]                           dc.b $00
[000adc96]                           dc.b $00
[000adc97]                           dc.b $00
[000adc98]                           dc.b $00
[000adc99]                           dc.b $00
[000adc9a]                           dc.b $00
[000adc9b]                           dc.b $00
[000adc9c]                           dc.b $00
[000adc9d]                           dc.b $00
[000adc9e]                           dc.b $00
[000adc9f]                           dc.b $00
[000adca0]                           dc.b $00
[000adca1]                           dc.b $01
[000adca2]                           dc.b $00
[000adca3]                           dc.b $00
[000adca4]                           dc.b $00
[000adca5]                           dc.b $00
[000adca6]                           dc.b $00
[000adca7]                           dc.b $00
[000adca8]                           dc.b $00
[000adca9]                           dc.b $00
[000adcaa]                           dc.b $00
[000adcab]                           dc.b $00
atitle:
[000adcac]                           dc.b $00
[000adcad]                           dc.b $00
[000adcae]                           dc.b $00
[000adcaf]                           dc.b $00
[000adcb0] 000af0ee                  dc.l $000af0ee ; no symbol found
[000adcb4]                           dc.b $00
[000adcb5]                           dc.b $00
[000adcb6]                           dc.b $00
[000adcb7]                           dc.b $00
[000adcb8]                           dc.b $00
[000adcb9]                           dc.b $08
[000adcba]                           dc.b $00
[000adcbb]                           dc.b $00
[000adcbc]                           dc.b $00
[000adcbd]                           dc.b $08
[000adcbe]                           dc.b $00
[000adcbf]                           dc.b $00
[000adcc0]                           dc.b $00
[000adcc1]                           dc.b $00
[000adcc2]                           dc.b 'TEXT_01',0
[000adcca]                           dc.b $00
[000adccb]                           dc.b $00
[000adccc]                           dc.b $00
[000adccd]                           dc.b $00
[000adcce]                           dc.b $00
[000adccf]                           dc.b $00
[000adcd0]                           dc.b $00
[000adcd1]                           dc.b $00
[000adcd2]                           dc.b $00
[000adcd3]                           dc.b $00
[000adcd4]                           dc.b $00
[000adcd5]                           dc.b $00
[000adcd6]                           dc.b $00
[000adcd7]                           dc.b $00
[000adcd8]                           dc.b $00
[000adcd9]                           dc.b $00
[000adcda]                           dc.b $00
[000adcdb]                           dc.b $00
[000adcdc]                           dc.b $00
[000adcdd]                           dc.b $00
[000adcde]                           dc.b $00
[000adcdf]                           dc.b $00
[000adce0]                           dc.b $00
[000adce1]                           dc.b $00
[000adce2]                           dc.b $00
[000adce3]                           dc.b $01
[000adce4]                           dc.b $00
[000adce5]                           dc.b $00
[000adce6]                           dc.b $00
[000adce7]                           dc.b $00
[000adce8]                           dc.b $00
[000adce9]                           dc.b $00
[000adcea]                           dc.b $00
[000adceb]                           dc.b $00
[000adcec]                           dc.b $00
[000adced]                           dc.b $00
abutton:
[000adcee]                           dc.b $00
[000adcef]                           dc.b $00
[000adcf0]                           dc.b $00
[000adcf1]                           dc.b $00
[000adcf2] 000af0e2                  dc.l $000af0e2 ; no symbol found
[000adcf6]                           dc.b $00
[000adcf7]                           dc.b $00
[000adcf8]                           dc.b $00
[000adcf9]                           dc.b $00
[000adcfa]                           dc.b $00
[000adcfb]                           dc.b $07
[000adcfc]                           dc.b $00
[000adcfd]                           dc.b $00
[000adcfe]                           dc.b $00
[000adcff]                           dc.b $07
[000add00]                           dc.b $00
[000add01]                           dc.b $00
[000add02]                           dc.b $00
[000add03]                           dc.b $00
[000add04]                           dc.b 'TEXT_01',0
[000add0c]                           dc.b $00
[000add0d]                           dc.b $00
[000add0e]                           dc.b $00
[000add0f]                           dc.b $00
[000add10]                           dc.b $00
[000add11]                           dc.b $00
[000add12]                           dc.b $00
[000add13]                           dc.b $00
[000add14]                           dc.b $00
[000add15]                           dc.b $00
[000add16]                           dc.b $00
[000add17]                           dc.b $00
[000add18]                           dc.b $00
[000add19]                           dc.b $00
[000add1a]                           dc.b $00
[000add1b]                           dc.b $00
[000add1c]                           dc.b $00
[000add1d]                           dc.b $00
[000add1e]                           dc.b $00
[000add1f]                           dc.b $00
[000add20]                           dc.b $00
[000add21]                           dc.b $00
[000add22]                           dc.b $00
[000add23]                           dc.b $00
[000add24]                           dc.b $00
[000add25]                           dc.b $01
[000add26]                           dc.b $00
[000add27]                           dc.b $00
[000add28]                           dc.b $00
[000add29]                           dc.b $00
[000add2a]                           dc.b $00
[000add2b]                           dc.b $00
[000add2c]                           dc.b $00
[000add2d]                           dc.b $00
[000add2e]                           dc.b $00
[000add2f]                           dc.b $00
astrnull:
[000add30]                           dc.b $00
[000add31]                           dc.b $00
[000add32]                           dc.b $00
[000add33]                           dc.b $00
[000add34] 000af0e8                  dc.l $000af0e8 ; no symbol found
[000add38]                           dc.b $00
[000add39]                           dc.b $00
[000add3a]                           dc.b $00
[000add3b]                           dc.b $00
[000add3c]                           dc.b $00
[000add3d]                           dc.b $01
[000add3e]                           dc.b $00
[000add3f]                           dc.b $00
[000add40]                           dc.b $00
[000add41]                           dc.b $01
[000add42]                           dc.b $00
[000add43]                           dc.b $00
[000add44]                           dc.b $00
[000add45]                           dc.b $00
[000add46]                           dc.b 'NULL_STRING',0
[000add52]                           dc.b $00
[000add53]                           dc.b $00
[000add54]                           dc.b $00
[000add55]                           dc.b $00
[000add56]                           dc.b $00
[000add57]                           dc.b $00
[000add58]                           dc.b $00
[000add59]                           dc.b $00
[000add5a]                           dc.b $00
[000add5b]                           dc.b $00
[000add5c]                           dc.b $00
[000add5d]                           dc.b $00
[000add5e]                           dc.b $00
[000add5f]                           dc.b $00
[000add60]                           dc.b $00
[000add61]                           dc.b $00
[000add62]                           dc.b $00
[000add63]                           dc.b $00
[000add64]                           dc.b $00
[000add65]                           dc.b $00
[000add66]                           dc.b $00
[000add67]                           dc.b $01
[000add68]                           dc.b $00
[000add69]                           dc.b $00
[000add6a]                           dc.b $00
[000add6b]                           dc.b $00
[000add6c]                           dc.b $00
[000add6d]                           dc.b $00
[000add6e]                           dc.b $00
[000add6f]                           dc.b $00
[000add70]                           dc.b $00
[000add71]                           dc.b $00
astrtext:
[000add72]                           dc.b $00
[000add73]                           dc.b $00
[000add74]                           dc.b $00
[000add75]                           dc.b $00
[000add76] 000af0e9                  dc.l $000af0e9 ; no symbol found
[000add7a]                           dc.b $00
[000add7b]                           dc.b $00
[000add7c]                           dc.b $00
[000add7d]                           dc.b $00
[000add7e]                           dc.b $00
[000add7f]                           dc.b $05
[000add80]                           dc.b $00
[000add81]                           dc.b $00
[000add82]                           dc.b $00
[000add83]                           dc.b $05
[000add84]                           dc.b $00
[000add85]                           dc.b $00
[000add86]                           dc.b $00
[000add87]                           dc.b $00
[000add88]                           dc.b 'TEXT_01',0
[000add90]                           dc.b $00
[000add91]                           dc.b $00
[000add92]                           dc.b $00
[000add93]                           dc.b $00
[000add94]                           dc.b $00
[000add95]                           dc.b $00
[000add96]                           dc.b $00
[000add97]                           dc.b $00
[000add98]                           dc.b $00
[000add99]                           dc.b $00
[000add9a]                           dc.b $00
[000add9b]                           dc.b $00
[000add9c]                           dc.b $00
[000add9d]                           dc.b $00
[000add9e]                           dc.b $00
[000add9f]                           dc.b $00
[000adda0]                           dc.b $00
[000adda1]                           dc.b $00
[000adda2]                           dc.b $00
[000adda3]                           dc.b $00
[000adda4]                           dc.b $00
[000adda5]                           dc.b $00
[000adda6]                           dc.b $00
[000adda7]                           dc.b $00
[000adda8]                           dc.b $00
[000adda9]                           dc.b $01
[000addaa]                           dc.b $00
[000addab]                           dc.b $00
[000addac]                           dc.b $00
[000addad]                           dc.b $00
[000addae]                           dc.b $00
[000addaf]                           dc.b $00
[000addb0]                           dc.b $00
[000addb1]                           dc.b $00
[000addb2]                           dc.b $00
[000addb3]                           dc.b $00
agtext_obj:
[000addb4] 000add72                  dc.l astrtext
[000addb8] 000add30                  dc.l astrnull
[000addbc] 000add30                  dc.l astrnull
[000addc0]                           dc.b $00
[000addc1]                           dc.b $03
[000addc2]                           dc.b $00
[000addc3]                           dc.b $06
[000addc4]                           dc.b $00
[000addc5]                           dc.b $02
[000addc6]                           dc.w $1180
[000addc8]                           dc.b $00
[000addc9]                           dc.b $00
[000addca]                           dc.w $ffff
[000addcc]                           dc.b $00
[000addcd]                           dc.b $05
[000addce]                           dc.b $00
[000addcf]                           dc.b $00
agtext:
[000addd0]                           dc.b $00
[000addd1]                           dc.b $00
[000addd2]                           dc.b $00
[000addd3]                           dc.b $00
[000addd4] 000addb4                  dc.l agtext_obj
[000addd8]                           dc.b $00
[000addd9]                           dc.b $00
[000addda]                           dc.b $00
[000adddb]                           dc.b $00
[000adddc]                           dc.b $00
[000adddd]                           dc.b $1c
[000addde]                           dc.b $00
[000adddf]                           dc.b $00
[000adde0]                           dc.b $00
[000adde1]                           dc.b $1c
[000adde2]                           dc.b $00
[000adde3]                           dc.b $00
[000adde4]                           dc.b $00
[000adde5]                           dc.b $00
[000adde6]                           dc.b 'TEDINFO_01',0
[000addf1]                           dc.b $00
[000addf2]                           dc.b $00
[000addf3]                           dc.b $00
[000addf4]                           dc.b $00
[000addf5]                           dc.b $00
[000addf6]                           dc.b $00
[000addf7]                           dc.b $00
[000addf8]                           dc.b $00
[000addf9]                           dc.b $00
[000addfa]                           dc.b $00
[000addfb]                           dc.b $00
[000addfc]                           dc.b $00
[000addfd]                           dc.b $00
[000addfe]                           dc.b $00
[000addff]                           dc.b $00
[000ade00]                           dc.b $00
[000ade01]                           dc.b $00
[000ade02]                           dc.b $00
[000ade03]                           dc.b $00
[000ade04]                           dc.b $00
[000ade05]                           dc.b $00
[000ade06]                           dc.b $00
[000ade07]                           dc.b $01
[000ade08]                           dc.b $00
[000ade09]                           dc.b $00
[000ade0a]                           dc.b $00
[000ade0b]                           dc.b $00
[000ade0c]                           dc.b $00
[000ade0d]                           dc.b $00
[000ade0e]                           dc.b $00
[000ade0f]                           dc.b $00
[000ade10]                           dc.b $00
[000ade11]                           dc.b $00
aeditext_obj:
[000ade12] 000adba4                  dc.l astrabs
[000ade16] 000adbe6                  dc.l astredit
[000ade1a] 000adc28                  dc.l astrvalid
[000ade1e]                           dc.b $00
[000ade1f]                           dc.b $03
[000ade20]                           dc.b $00
[000ade21]                           dc.b $06
[000ade22]                           dc.b $00
[000ade23]                           dc.b $02
[000ade24]                           dc.w $1180
[000ade26]                           dc.b $00
[000ade27]                           dc.b $00
[000ade28]                           dc.w $ffff
[000ade2a]                           dc.b $00
[000ade2b]                           dc.b $04
[000ade2c]                           dc.b $00
[000ade2d]                           dc.b $0a
aeditext:
[000ade2e]                           dc.b $00
[000ade2f]                           dc.b $00
[000ade30]                           dc.b $00
[000ade31]                           dc.b $00
[000ade32] 000ade12                  dc.l aeditext_obj
[000ade36]                           dc.b $00
[000ade37]                           dc.b $00
[000ade38]                           dc.b $00
[000ade39]                           dc.b $00
[000ade3a]                           dc.b $00
[000ade3b]                           dc.b $1c
[000ade3c]                           dc.b $00
[000ade3d]                           dc.b $00
[000ade3e]                           dc.b $00
[000ade3f]                           dc.b $1c
[000ade40]                           dc.b $00
[000ade41]                           dc.b $00
[000ade42]                           dc.b $00
[000ade43]                           dc.b $00
[000ade44]                           dc.b 'TEDINFO_01',0
[000ade4f]                           dc.b $00
[000ade50]                           dc.b $00
[000ade51]                           dc.b $00
[000ade52]                           dc.b $00
[000ade53]                           dc.b $00
[000ade54]                           dc.b $00
[000ade55]                           dc.b $00
[000ade56]                           dc.b $00
[000ade57]                           dc.b $00
[000ade58]                           dc.b $00
[000ade59]                           dc.b $00
[000ade5a]                           dc.b $00
[000ade5b]                           dc.b $00
[000ade5c]                           dc.b $00
[000ade5d]                           dc.b $00
[000ade5e]                           dc.b $00
[000ade5f]                           dc.b $00
[000ade60]                           dc.b $00
[000ade61]                           dc.b $00
[000ade62]                           dc.b $00
[000ade63]                           dc.b $00
[000ade64]                           dc.b $00
[000ade65]                           dc.b $01
[000ade66]                           dc.b $00
[000ade67]                           dc.b $00
[000ade68]                           dc.b $00
[000ade69]                           dc.b $00
[000ade6a]                           dc.b $00
[000ade6b]                           dc.b $00
[000ade6c]                           dc.b $00
[000ade6d]                           dc.b $00
[000ade6e]                           dc.b $00
[000ade6f]                           dc.b $00
abitblk_obj:
[000ade70]                           dc.b $00
[000ade71]                           dc.b $00
[000ade72]                           dc.b $00
[000ade73]                           dc.b $0e
[000ade74]                           dc.b $00
[000ade75]                           dc.b $06
[000ade76]                           dc.b $00
[000ade77]                           dc.b $18
[000ade78]                           dc.b $00
[000ade79]                           dc.b $00
[000ade7a]                           dc.b $00
[000ade7b]                           dc.b $00
[000ade7c]                           dc.b $00
[000ade7d]                           dc.b $01
imagedata:
[000ade7e]                           dc.w $07ff
[000ade80]                           dc.w $ffff
[000ade82]                           dc.w $ff80
[000ade84]                           dc.w $0c00
[000ade86]                           dc.b $00
[000ade87]                           dc.b $00
[000ade88]                           dc.b $00
[000ade89]                           dc.b $c0
[000ade8a]                           dc.w $183f
[000ade8c]                           dc.w $f03f
[000ade8e]                           dc.w $f060
[000ade90]                           dc.w $187f
[000ade92]                           dc.w $f860
[000ade94]                           dc.w $1860
[000ade96]                           dc.w $187f
[000ade98]                           dc.w $f860
[000ade9a]                           dc.w $1860
[000ade9c]                           dc.w $187f
[000ade9e]                           dc.w $f860
[000adea0]                           dc.w $1860
[000adea2]                           dc.w $187f
[000adea4]                           dc.w $f860
[000adea6]                           dc.w $1860
[000adea8]                           dc.w $187f
[000adeaa]                           dc.w $f860
[000adeac]                           dc.w $1860
[000adeae]                           dc.w $187f
[000adeb0]                           dc.w $f860
[000adeb2]                           dc.w $1860
[000adeb4]                           dc.w $187f
[000adeb6]                           dc.w $f860
[000adeb8]                           dc.w $1860
[000adeba]                           dc.w $187f
[000adebc]                           dc.w $f860
[000adebe]                           dc.w $1860
[000adec0]                           dc.w $187f
[000adec2]                           dc.w $f860
[000adec4]                           dc.w $1860
[000adec6]                           dc.w $187f
[000adec8]                           dc.w $f860
[000adeca]                           dc.w $1860
[000adecc]                           dc.w $187f
[000adece]                           dc.w $f860
[000aded0]                           dc.w $1860
[000aded2]                           dc.w $183f
[000aded4]                           dc.w $f03f
[000aded6]                           dc.w $f060
[000aded8]                           dc.w $0c00
[000adeda]                           dc.b $00
[000adedb]                           dc.b $00
[000adedc]                           dc.b $00
[000adedd]                           dc.b $c0
[000adede]                           dc.w $07ff
[000adee0]                           dc.w $ffff
[000adee2]                           dc.w $ff80
[000adee4]                           dc.b $00
[000adee5]                           dc.b $00
[000adee6]                           dc.b $00
[000adee7]                           dc.b $00
[000adee8]                           dc.b $00
[000adee9]                           dc.b $00
[000adeea]                           dc.w $3f30
[000adeec]                           dc.w $c787
[000adeee]                           dc.w $8fe0
[000adef0]                           dc.w $0c39
[000adef2]                           dc.w $cccc
[000adef4]                           dc.w $cc00
[000adef6]                           dc.w $0c36
[000adef8]                           dc.w $cfcc
[000adefa]                           dc.w $0f80
[000adefc]                           dc.w $0c30
[000adefe]                           dc.w $cccd
[000adf00]                           dc.w $cc00
[000adf02]                           dc.w $3f30
[000adf04]                           dc.w $ccc7
[000adf06]                           dc.w $cfe0
[000adf08]                           dc.b $00
[000adf09]                           dc.b $00
[000adf0a]                           dc.b $00
[000adf0b]                           dc.b $00
[000adf0c]                           dc.b $00
[000adf0d]                           dc.b $00
abitblk:
[000adf0e]                           dc.b $00
[000adf0f]                           dc.b $00
[000adf10]                           dc.b $00
[000adf11]                           dc.b $00
[000adf12] 000ade70                  dc.l abitblk_obj
[000adf16]                           dc.b $00
[000adf17]                           dc.b $00
[000adf18]                           dc.b $00
[000adf19]                           dc.b $00
[000adf1a]                           dc.b $00
[000adf1b]                           dc.b $9e
[000adf1c]                           dc.b $00
[000adf1d]                           dc.b $00
[000adf1e]                           dc.b $00
[000adf1f]                           dc.b $9e
[000adf20]                           dc.b $00
[000adf21]                           dc.b $00
[000adf22]                           dc.b $00
[000adf23]                           dc.b $00
[000adf24]                           dc.b 'IMAGE_01',0
[000adf2d]                           dc.b $00
[000adf2e]                           dc.b $00
[000adf2f]                           dc.b $00
[000adf30]                           dc.b $00
[000adf31]                           dc.b $00
[000adf32]                           dc.b $00
[000adf33]                           dc.b $00
[000adf34]                           dc.b $00
[000adf35]                           dc.b $00
[000adf36]                           dc.b $00
[000adf37]                           dc.b $00
[000adf38]                           dc.b $00
[000adf39]                           dc.b $00
[000adf3a]                           dc.b $00
[000adf3b]                           dc.b $00
[000adf3c]                           dc.b $00
[000adf3d]                           dc.b $00
[000adf3e]                           dc.b $00
[000adf3f]                           dc.b $00
[000adf40]                           dc.b $00
[000adf41]                           dc.b $00
[000adf42]                           dc.b $00
[000adf43]                           dc.b $00
[000adf44]                           dc.b $00
[000adf45]                           dc.b $01
[000adf46]                           dc.b $00
[000adf47]                           dc.b $00
[000adf48]                           dc.b $00
[000adf49]                           dc.b $00
[000adf4a]                           dc.b $00
[000adf4b]                           dc.b $00
[000adf4c]                           dc.b $00
[000adf4d]                           dc.b $00
[000adf4e]                           dc.b $00
[000adf4f]                           dc.b $00
asepcall:
[000adf50]                           dc.b $00
[000adf51]                           dc.b $00
[000adf52]                           dc.b $00
[000adf53]                           dc.b $00
[000adf54]                           dc.b $00
[000adf55]                           dc.b $00
[000adf56]                           dc.b $00
[000adf57]                           dc.b $00
[000adf58]                           dc.b $00
[000adf59]                           dc.b $00
[000adf5a]                           dc.b $00
[000adf5b]                           dc.b $00
[000adf5c]                           dc.b $00
[000adf5d]                           dc.b $00
[000adf5e]                           dc.b $00
[000adf5f]                           dc.b $00
[000adf60]                           dc.b $00
[000adf61]                           dc.b $00
[000adf62]                           dc.b $00
[000adf63]                           dc.b $00
[000adf64]                           dc.b $00
[000adf65]                           dc.b $00
[000adf66]                           dc.b 'A_innerframe',0
[000adf73]                           dc.b $00
[000adf74]                           dc.b $00
[000adf75]                           dc.b $00
[000adf76]                           dc.b $00
[000adf77]                           dc.b $00
[000adf78]                           dc.b $00
[000adf79]                           dc.b $00
[000adf7a]                           dc.b $00
[000adf7b]                           dc.b $00
[000adf7c]                           dc.b $00
[000adf7d]                           dc.b $00
[000adf7e]                           dc.b $00
[000adf7f]                           dc.b $00
[000adf80]                           dc.b $00
[000adf81]                           dc.b $00
[000adf82]                           dc.b $00
[000adf83]                           dc.b $00
[000adf84]                           dc.b $00
[000adf85]                           dc.b $00
[000adf86]                           dc.b $00
[000adf87]                           dc.b $01
[000adf88]                           dc.w $0203
[000adf8a]                           dc.b $00
[000adf8b]                           dc.b $00
[000adf8c]                           dc.b $00
[000adf8d]                           dc.b $00
[000adf8e]                           dc.b $00
[000adf8f]                           dc.b $00
[000adf90]                           dc.b $00
[000adf91]                           dc.b $00
asepparm:
[000adf92]                           dc.b $00
[000adf93]                           dc.b $00
[000adf94]                           dc.b $00
[000adf95]                           dc.b $00
[000adf96]                           dc.b $00
[000adf97]                           dc.b $00
[000adf98]                           dc.b $00
[000adf99]                           dc.b $00
[000adf9a]                           dc.b $00
[000adf9b]                           dc.b $00
[000adf9c]                           dc.b $00
[000adf9d]                           dc.b $00
[000adf9e]                           dc.b $00
[000adf9f]                           dc.b $00
[000adfa0]                           dc.b $00
[000adfa1]                           dc.b $00
[000adfa2]                           dc.b $00
[000adfa3]                           dc.b $00
[000adfa4]                           dc.b $00
[000adfa5]                           dc.b $00
[000adfa6]                           dc.b $00
[000adfa7]                           dc.b $00
[000adfa8]                           dc.b '0x11101L',0
[000adfb1]                           dc.b $00
[000adfb2]                           dc.b $00
[000adfb3]                           dc.b $00
[000adfb4]                           dc.b $00
[000adfb5]                           dc.b $00
[000adfb6]                           dc.b $00
[000adfb7]                           dc.b $00
[000adfb8]                           dc.b $00
[000adfb9]                           dc.b $00
[000adfba]                           dc.b $00
[000adfbb]                           dc.b $00
[000adfbc]                           dc.b $00
[000adfbd]                           dc.b $00
[000adfbe]                           dc.b $00
[000adfbf]                           dc.b $00
[000adfc0]                           dc.b $00
[000adfc1]                           dc.b $00
[000adfc2]                           dc.b $00
[000adfc3]                           dc.b $00
[000adfc4]                           dc.b $00
[000adfc5]                           dc.b $00
[000adfc6]                           dc.b $00
[000adfc7]                           dc.b $00
[000adfc8]                           dc.b $00
[000adfc9]                           dc.b $01
[000adfca]                           dc.b $00
[000adfcb]                           dc.b $00
[000adfcc]                           dc.b $00
[000adfcd]                           dc.b $00
[000adfce]                           dc.b $00
[000adfcf]                           dc.b $00
[000adfd0]                           dc.b $00
[000adfd1]                           dc.b $00
[000adfd2]                           dc.b $00
[000adfd3]                           dc.b $00
asep_obj:
[000adfd4] 000adf50                  dc.l asepcall
[000adfd8] 000adf92                  dc.l asepparm
[000adfdc]                           dc.b $00
[000adfdd]                           dc.b $00
[000adfde]                           dc.b $00
[000adfdf]                           dc.b $00
[000adfe0]                           dc.b $00
[000adfe1]                           dc.b $00
[000adfe2]                           dc.b $00
[000adfe3]                           dc.b $00
[000adfe4]                           dc.b $00
[000adfe5]                           dc.b $00
[000adfe6]                           dc.b $00
[000adfe7]                           dc.b $00
[000adfe8]                           dc.b $00
[000adfe9]                           dc.b $00
[000adfea]                           dc.b $00
[000adfeb]                           dc.b $00
[000adfec]                           dc.b $00
[000adfed]                           dc.b $00
[000adfee]                           dc.b $00
[000adfef]                           dc.b $00
[000adff0]                           dc.b $00
[000adff1]                           dc.b $00
[000adff2]                           dc.b $00
[000adff3]                           dc.b $00
asep:
[000adff4]                           dc.b $00
[000adff5]                           dc.b $00
[000adff6]                           dc.b $00
[000adff7]                           dc.b $00
[000adff8] 000adfd4                  dc.l asep_obj
[000adffc]                           dc.b $00
[000adffd]                           dc.b $00
[000adffe]                           dc.b $00
[000adfff]                           dc.b $00
[000ae000]                           dc.b $00
[000ae001]                           dc.b $20
[000ae002]                           dc.b $00
[000ae003]                           dc.b $00
[000ae004]                           dc.b $00
[000ae005]                           dc.b $20
[000ae006]                           dc.b $00
[000ae007]                           dc.b $00
[000ae008]                           dc.b $00
[000ae009]                           dc.b $00
[000ae00a]                           dc.b 'SEPERATOR000',0
[000ae017]                           dc.b $00
[000ae018]                           dc.b $00
[000ae019]                           dc.b $00
[000ae01a]                           dc.b $00
[000ae01b]                           dc.b $00
[000ae01c]                           dc.b $00
[000ae01d]                           dc.b $00
[000ae01e]                           dc.b $00
[000ae01f]                           dc.b $00
[000ae020]                           dc.b $00
[000ae021]                           dc.b $00
[000ae022]                           dc.b $00
[000ae023]                           dc.b $00
[000ae024]                           dc.b $00
[000ae025]                           dc.b $00
[000ae026]                           dc.b $00
[000ae027]                           dc.b $00
[000ae028]                           dc.b $00
[000ae029]                           dc.b $00
[000ae02a]                           dc.b $00
[000ae02b]                           dc.b $01
[000ae02c]                           dc.b $00
[000ae02d]                           dc.b $00
[000ae02e]                           dc.b $00
[000ae02f]                           dc.b $00
[000ae030]                           dc.b $00
[000ae031]                           dc.b $00
[000ae032]                           dc.b $00
[000ae033]                           dc.b $00
[000ae034]                           dc.b $00
[000ae035]                           dc.b $00
ausercall:
[000ae036]                           dc.b $00
[000ae037]                           dc.b $00
[000ae038]                           dc.b $00
[000ae039]                           dc.b $00
[000ae03a]                           dc.b $00
[000ae03b]                           dc.b $00
[000ae03c]                           dc.b $00
[000ae03d]                           dc.b $00
[000ae03e]                           dc.b $00
[000ae03f]                           dc.b $00
[000ae040]                           dc.b $00
[000ae041]                           dc.b $00
[000ae042]                           dc.b $00
[000ae043]                           dc.b $00
[000ae044]                           dc.b $00
[000ae045]                           dc.b $00
[000ae046]                           dc.b $00
[000ae047]                           dc.b $00
[000ae048]                           dc.b $00
[000ae049]                           dc.b $00
[000ae04a]                           dc.b $00
[000ae04b]                           dc.b $00
[000ae04c]                           dc.b 'USER_OBJ',0
[000ae055]                           dc.b $00
[000ae056]                           dc.b $00
[000ae057]                           dc.b $00
[000ae058]                           dc.b $00
[000ae059]                           dc.b $00
[000ae05a]                           dc.b $00
[000ae05b]                           dc.b $00
[000ae05c]                           dc.b $00
[000ae05d]                           dc.b $00
[000ae05e]                           dc.b $00
[000ae05f]                           dc.b $00
[000ae060]                           dc.b $00
[000ae061]                           dc.b $00
[000ae062]                           dc.b $00
[000ae063]                           dc.b $00
[000ae064]                           dc.b $00
[000ae065]                           dc.b $00
[000ae066]                           dc.b $00
[000ae067]                           dc.b $00
[000ae068]                           dc.b $00
[000ae069]                           dc.b $00
[000ae06a]                           dc.b $00
[000ae06b]                           dc.b $00
[000ae06c]                           dc.b $00
[000ae06d]                           dc.b $01
[000ae06e]                           dc.b $00
[000ae06f]                           dc.b $03
[000ae070]                           dc.b $00
[000ae071]                           dc.b $00
[000ae072]                           dc.b $00
[000ae073]                           dc.b $00
[000ae074]                           dc.b $00
[000ae075]                           dc.b $00
[000ae076]                           dc.b $00
[000ae077]                           dc.b $00
auserparm:
[000ae078]                           dc.b $00
[000ae079]                           dc.b $00
[000ae07a]                           dc.b $00
[000ae07b]                           dc.b $00
[000ae07c]                           dc.b $00
[000ae07d]                           dc.b $00
[000ae07e]                           dc.b $00
[000ae07f]                           dc.b $00
[000ae080]                           dc.b $00
[000ae081]                           dc.b $00
[000ae082]                           dc.b $00
[000ae083]                           dc.b $00
[000ae084]                           dc.b $00
[000ae085]                           dc.b $00
[000ae086]                           dc.b $00
[000ae087]                           dc.b $00
[000ae088]                           dc.b $00
[000ae089]                           dc.b $00
[000ae08a]                           dc.b $00
[000ae08b]                           dc.b $00
[000ae08c]                           dc.b $00
[000ae08d]                           dc.b $00
[000ae08e]                           dc.b '0x0L',0
[000ae093]                           dc.b $00
[000ae094]                           dc.b $00
[000ae095]                           dc.b $00
[000ae096]                           dc.b $00
[000ae097]                           dc.b $00
[000ae098]                           dc.b $00
[000ae099]                           dc.b $00
[000ae09a]                           dc.b $00
[000ae09b]                           dc.b $00
[000ae09c]                           dc.b $00
[000ae09d]                           dc.b $00
[000ae09e]                           dc.b $00
[000ae09f]                           dc.b $00
[000ae0a0]                           dc.b $00
[000ae0a1]                           dc.b $00
[000ae0a2]                           dc.b $00
[000ae0a3]                           dc.b $00
[000ae0a4]                           dc.b $00
[000ae0a5]                           dc.b $00
[000ae0a6]                           dc.b $00
[000ae0a7]                           dc.b $00
[000ae0a8]                           dc.b $00
[000ae0a9]                           dc.b $00
[000ae0aa]                           dc.b $00
[000ae0ab]                           dc.b $00
[000ae0ac]                           dc.b $00
[000ae0ad]                           dc.b $00
[000ae0ae]                           dc.b $00
[000ae0af]                           dc.b $01
[000ae0b0]                           dc.b $00
[000ae0b1]                           dc.b $00
[000ae0b2]                           dc.b $00
[000ae0b3]                           dc.b $00
[000ae0b4]                           dc.b $00
[000ae0b5]                           dc.b $00
[000ae0b6]                           dc.b $00
[000ae0b7]                           dc.b $00
[000ae0b8]                           dc.b $00
[000ae0b9]                           dc.b $00
auserblk_obj:
[000ae0ba] 000ae036                  dc.l ausercall
[000ae0be] 000ae078                  dc.l auserparm
[000ae0c2]                           dc.b $00
[000ae0c3]                           dc.b $00
[000ae0c4]                           dc.b $00
[000ae0c5]                           dc.b $00
[000ae0c6]                           dc.b $00
[000ae0c7]                           dc.b $00
[000ae0c8]                           dc.b $00
[000ae0c9]                           dc.b $00
[000ae0ca]                           dc.b $00
[000ae0cb]                           dc.b $00
[000ae0cc]                           dc.b $00
[000ae0cd]                           dc.b $00
[000ae0ce]                           dc.b $00
[000ae0cf]                           dc.b $00
[000ae0d0]                           dc.b $00
[000ae0d1]                           dc.b $00
[000ae0d2]                           dc.b $00
[000ae0d3]                           dc.b $00
[000ae0d4]                           dc.b $00
[000ae0d5]                           dc.b $00
[000ae0d6]                           dc.b $00
[000ae0d7]                           dc.b $00
[000ae0d8]                           dc.b $00
[000ae0d9]                           dc.b $00
auserblk:
[000ae0da]                           dc.b $00
[000ae0db]                           dc.b $00
[000ae0dc]                           dc.b $00
[000ae0dd]                           dc.b $00
[000ae0de] 000ae0ba                  dc.l auserblk_obj
[000ae0e2]                           dc.b $00
[000ae0e3]                           dc.b $00
[000ae0e4]                           dc.b $00
[000ae0e5]                           dc.b $00
[000ae0e6]                           dc.b $00
[000ae0e7]                           dc.b $20
[000ae0e8]                           dc.b $00
[000ae0e9]                           dc.b $00
[000ae0ea]                           dc.b $00
[000ae0eb]                           dc.b $20
[000ae0ec]                           dc.b $00
[000ae0ed]                           dc.b $00
[000ae0ee]                           dc.b $00
[000ae0ef]                           dc.b $00
[000ae0f0]                           dc.b 'USERBLK_01',0
[000ae0fb]                           dc.b $00
[000ae0fc]                           dc.b $00
[000ae0fd]                           dc.b $00
[000ae0fe]                           dc.b $00
[000ae0ff]                           dc.b $00
[000ae100]                           dc.b $00
[000ae101]                           dc.b $00
[000ae102]                           dc.b $00
[000ae103]                           dc.b $00
[000ae104]                           dc.b $00
[000ae105]                           dc.b $00
[000ae106]                           dc.b $00
[000ae107]                           dc.b $00
[000ae108]                           dc.b $00
[000ae109]                           dc.b $00
[000ae10a]                           dc.b $00
[000ae10b]                           dc.b $00
[000ae10c]                           dc.b $00
[000ae10d]                           dc.b $00
[000ae10e]                           dc.b $00
[000ae10f]                           dc.b $00
[000ae110]                           dc.b $00
[000ae111]                           dc.b $01
[000ae112]                           dc.b $00
[000ae113]                           dc.b $00
[000ae114]                           dc.b $00
[000ae115]                           dc.b $00
[000ae116]                           dc.b $00
[000ae117]                           dc.b $00
[000ae118]                           dc.b $00
[000ae119]                           dc.b $00
[000ae11a]                           dc.b $00
[000ae11b]                           dc.b $00
astricon:
[000ae11c]                           dc.b $00
[000ae11d]                           dc.b $00
[000ae11e]                           dc.b $00
[000ae11f]                           dc.b $00
[000ae120] 000af118                  dc.l $000af118 ; no symbol found
[000ae124]                           dc.b $00
[000ae125]                           dc.b $00
[000ae126]                           dc.b $00
[000ae127]                           dc.b $00
[000ae128]                           dc.b $00
[000ae129]                           dc.b $06
[000ae12a]                           dc.b $00
[000ae12b]                           dc.b $00
[000ae12c]                           dc.b $00
[000ae12d]                           dc.b $06
[000ae12e]                           dc.b $00
[000ae12f]                           dc.b $00
[000ae130]                           dc.b $00
[000ae131]                           dc.b $00
[000ae132]                           dc.b 'TEXT_01',0
[000ae13a]                           dc.b $00
[000ae13b]                           dc.b $00
[000ae13c]                           dc.b $00
[000ae13d]                           dc.b $00
[000ae13e]                           dc.b $00
[000ae13f]                           dc.b $00
[000ae140]                           dc.b $00
[000ae141]                           dc.b $00
[000ae142]                           dc.b $00
[000ae143]                           dc.b $00
[000ae144]                           dc.b $00
[000ae145]                           dc.b $00
[000ae146]                           dc.b $00
[000ae147]                           dc.b $00
[000ae148]                           dc.b $00
[000ae149]                           dc.b $00
[000ae14a]                           dc.b $00
[000ae14b]                           dc.b $00
[000ae14c]                           dc.b $00
[000ae14d]                           dc.b $00
[000ae14e]                           dc.b $00
[000ae14f]                           dc.b $00
[000ae150]                           dc.b $00
[000ae151]                           dc.b $00
[000ae152]                           dc.b $00
[000ae153]                           dc.b $01
[000ae154]                           dc.b $00
[000ae155]                           dc.b $00
[000ae156]                           dc.b $00
[000ae157]                           dc.b $00
[000ae158]                           dc.b $00
[000ae159]                           dc.b $00
[000ae15a]                           dc.b $00
[000ae15b]                           dc.b $00
[000ae15c]                           dc.b $00
[000ae15d]                           dc.b $00
aiconblk_obj:
[000ae15e]                           dc.b $00
[000ae15f]                           dc.b $00
[000ae160]                           dc.b $00
[000ae161]                           dc.b $52
[000ae162]                           dc.b $00
[000ae163]                           dc.b $00
[000ae164]                           dc.b $00
[000ae165]                           dc.b $e2
[000ae166] 000ae11c                  dc.l astricon
[000ae16a]                           dc.w $1041
[000ae16c]                           dc.b $00
[000ae16d]                           dc.b $14
[000ae16e]                           dc.b $00
[000ae16f]                           dc.b $06
[000ae170]                           dc.b $00
[000ae171]                           dc.b $00
[000ae172]                           dc.b $00
[000ae173]                           dc.b $00
[000ae174]                           dc.b $00
[000ae175]                           dc.b $30
[000ae176]                           dc.b $00
[000ae177]                           dc.b $18
[000ae178]                           dc.b $00
[000ae179]                           dc.b $00
[000ae17a]                           dc.b $00
[000ae17b]                           dc.b $18
[000ae17c]                           dc.b $00
[000ae17d]                           dc.b $30
[000ae17e]                           dc.b $00
[000ae17f]                           dc.b $08
[000ae180]                           dc.b $00
[000ae181]                           dc.b $00
[000ae182]                           dc.b $00
[000ae183]                           dc.b $00
[000ae184]                           dc.b $00
[000ae185]                           dc.b $00
[000ae186]                           dc.b $00
[000ae187]                           dc.b $00
[000ae188]                           dc.b $00
[000ae189]                           dc.b $00
[000ae18a]                           dc.b $00
[000ae18b]                           dc.b $00
[000ae18c]                           dc.b $00
[000ae18d]                           dc.b $00
[000ae18e]                           dc.b $00
[000ae18f]                           dc.b $00
[000ae190]                           dc.b $00
[000ae191]                           dc.b $00
[000ae192]                           dc.b $00
[000ae193]                           dc.b $00
[000ae194]                           dc.b $00
[000ae195]                           dc.b $00
[000ae196]                           dc.b $00
[000ae197]                           dc.b $00
[000ae198]                           dc.b $00
[000ae199]                           dc.b $00
[000ae19a]                           dc.b $00
[000ae19b]                           dc.b $00
[000ae19c]                           dc.b $00
[000ae19d]                           dc.b $00
[000ae19e]                           dc.b $00
[000ae19f]                           dc.b $00
[000ae1a0]                           dc.b $00
[000ae1a1]                           dc.b $00
[000ae1a2]                           dc.b $00
[000ae1a3]                           dc.b $00
[000ae1a4]                           dc.b $00
[000ae1a5]                           dc.b $00
[000ae1a6]                           dc.b $00
[000ae1a7]                           dc.b $00
[000ae1a8]                           dc.b $00
[000ae1a9]                           dc.b $00
[000ae1aa]                           dc.b $00
[000ae1ab]                           dc.b $00
[000ae1ac]                           dc.b $00
[000ae1ad]                           dc.b $00
[000ae1ae]                           dc.b $00
[000ae1af]                           dc.b $00
iconmask:
[000ae1b0]                           dc.b $00
[000ae1b1]                           dc.b $ff
[000ae1b2]                           dc.w $ffff
[000ae1b4]                           dc.w $fe00
[000ae1b6]                           dc.b $00
[000ae1b7]                           dc.b $ff
[000ae1b8]                           dc.w $ffff
[000ae1ba]                           dc.w $fe00
[000ae1bc]                           dc.b $00
[000ae1bd]                           dc.b $ff
[000ae1be]                           dc.w $ffff
[000ae1c0]                           dc.w $fe00
[000ae1c2]                           dc.b $00
[000ae1c3]                           dc.b $ff
[000ae1c4]                           dc.w $ffff
[000ae1c6]                           dc.w $fe00
[000ae1c8]                           dc.b $00
[000ae1c9]                           dc.b $ff
[000ae1ca]                           dc.w $ffff
[000ae1cc]                           dc.w $fe00
[000ae1ce]                           dc.b $00
[000ae1cf]                           dc.b $ff
[000ae1d0]                           dc.w $ffff
[000ae1d2]                           dc.w $fe00
[000ae1d4]                           dc.b $00
[000ae1d5]                           dc.b $ff
[000ae1d6]                           dc.w $ffff
[000ae1d8]                           dc.w $fe00
[000ae1da]                           dc.b $00
[000ae1db]                           dc.b $ff
[000ae1dc]                           dc.w $ffff
[000ae1de]                           dc.w $fe00
[000ae1e0]                           dc.b $00
[000ae1e1]                           dc.b $ff
[000ae1e2]                           dc.w $ffff
[000ae1e4]                           dc.w $fe00
[000ae1e6]                           dc.b $00
[000ae1e7]                           dc.b $ff
[000ae1e8]                           dc.w $ffff
[000ae1ea]                           dc.w $fe00
[000ae1ec]                           dc.b $00
[000ae1ed]                           dc.b $ff
[000ae1ee]                           dc.w $ffff
[000ae1f0]                           dc.w $fe00
[000ae1f2]                           dc.b $00
[000ae1f3]                           dc.b $ff
[000ae1f4]                           dc.w $ffff
[000ae1f6]                           dc.w $fe00
[000ae1f8]                           dc.b $00
[000ae1f9]                           dc.b $ff
[000ae1fa]                           dc.w $ffff
[000ae1fc]                           dc.w $fe00
[000ae1fe]                           dc.b $00
[000ae1ff]                           dc.b $ff
[000ae200]                           dc.w $ffff
[000ae202]                           dc.w $fe00
[000ae204]                           dc.b $00
[000ae205]                           dc.b $ff
[000ae206]                           dc.w $ffff
[000ae208]                           dc.w $fe00
[000ae20a]                           dc.w $0fff
[000ae20c]                           dc.w $ffff
[000ae20e]                           dc.w $fff0
[000ae210]                           dc.w $0fff
[000ae212]                           dc.w $ffff
[000ae214]                           dc.w $fff0
[000ae216]                           dc.w $0fff
[000ae218]                           dc.w $ffff
[000ae21a]                           dc.w $fff0
[000ae21c]                           dc.w $0fff
[000ae21e]                           dc.w $ffff
[000ae220]                           dc.w $fff0
[000ae222]                           dc.w $0fff
[000ae224]                           dc.w $ffff
[000ae226]                           dc.w $fff0
[000ae228]                           dc.w $0fff
[000ae22a]                           dc.w $ffff
[000ae22c]                           dc.w $fff0
[000ae22e]                           dc.w $0fff
[000ae230]                           dc.w $ffff
[000ae232]                           dc.w $fff0
[000ae234]                           dc.w $0fff
[000ae236]                           dc.w $ffff
[000ae238]                           dc.w $fff0
[000ae23a]                           dc.b $00
[000ae23b]                           dc.b $00
[000ae23c]                           dc.b $00
[000ae23d]                           dc.b $00
[000ae23e]                           dc.b $00
[000ae23f]                           dc.b $00
icondata:
[000ae240]                           dc.b $00
[000ae241]                           dc.b $ff
[000ae242]                           dc.w $ffff
[000ae244]                           dc.w $fe00
[000ae246]                           dc.b $00
[000ae247]                           dc.b $c0
[000ae248]                           dc.b $00
[000ae249]                           dc.b $00
[000ae24a]                           dc.w $0600
[000ae24c]                           dc.b $00
[000ae24d]                           dc.b $c0
[000ae24e]                           dc.w $7fff
[000ae250]                           dc.w $8600
[000ae252]                           dc.b $00
[000ae253]                           dc.b $c0
[000ae254]                           dc.w $c000
[000ae256]                           dc.w $8600
[000ae258]                           dc.b $00
[000ae259]                           dc.b $c1
[000ae25a]                           dc.w $4000
[000ae25c]                           dc.w $8600
[000ae25e]                           dc.b $00
[000ae25f]                           dc.b $c3
[000ae260]                           dc.w $c000
[000ae262]                           dc.w $8600
[000ae264]                           dc.b $00
[000ae265]                           dc.b $c2
[000ae266]                           dc.b $00
[000ae267]                           dc.b $00
[000ae268]                           dc.w $8600
[000ae26a]                           dc.b $00
[000ae26b]                           dc.b $c2
[000ae26c]                           dc.b $00
[000ae26d]                           dc.b $00
[000ae26e]                           dc.w $8600
[000ae270]                           dc.b $00
[000ae271]                           dc.b $c2
[000ae272]                           dc.b $00
[000ae273]                           dc.b $00
[000ae274]                           dc.w $8600
[000ae276]                           dc.b $00
[000ae277]                           dc.b $c2
[000ae278]                           dc.b $00
[000ae279]                           dc.b $00
[000ae27a]                           dc.w $8600
[000ae27c]                           dc.b $00
[000ae27d]                           dc.b $c2
[000ae27e]                           dc.b $00
[000ae27f]                           dc.b $00
[000ae280]                           dc.w $8600
[000ae282]                           dc.b $00
[000ae283]                           dc.b $c2
[000ae284]                           dc.b $00
[000ae285]                           dc.b $00
[000ae286]                           dc.w $8600
[000ae288]                           dc.b $00
[000ae289]                           dc.b $c2
[000ae28a]                           dc.b $00
[000ae28b]                           dc.b $00
[000ae28c]                           dc.w $8600
[000ae28e]                           dc.b $00
[000ae28f]                           dc.b $c2
[000ae290]                           dc.b $00
[000ae291]                           dc.b $00
[000ae292]                           dc.w $8600
[000ae294]                           dc.b $00
[000ae295]                           dc.b $c2
[000ae296]                           dc.b $00
[000ae297]                           dc.b $00
[000ae298]                           dc.w $8600
[000ae29a]                           dc.w $0fc3
[000ae29c]                           dc.w $ffff
[000ae29e]                           dc.w $87f0
[000ae2a0]                           dc.w $0c00
[000ae2a2]                           dc.b $00
[000ae2a3]                           dc.b $00
[000ae2a4]                           dc.b $00
[000ae2a5]                           dc.b $30
[000ae2a6]                           dc.w $0c1c
[000ae2a8]                           dc.w $f9f9
[000ae2aa]                           dc.w $8830
[000ae2ac]                           dc.w $0c08
[000ae2ae]                           dc.b 'Å',$09,'H0'
[000ae2b2]                           dc.w $0c08
[000ae2b4]                           dc.b 'Å',$09,'(0'
[000ae2b8]                           dc.w $0c1c
[000ae2ba]                           dc.w $f9f9
[000ae2bc]                           dc.w $1830
[000ae2be]                           dc.w $0c00
[000ae2c0]                           dc.b $00
[000ae2c1]                           dc.b $00
[000ae2c2]                           dc.b $00
[000ae2c3]                           dc.b $30
[000ae2c4]                           dc.w $0fff
[000ae2c6]                           dc.w $ffff
[000ae2c8]                           dc.w $fff0
[000ae2ca]                           dc.b $00
[000ae2cb]                           dc.b $00
[000ae2cc]                           dc.b $00
[000ae2cd]                           dc.b $00
[000ae2ce]                           dc.b $00
[000ae2cf]                           dc.b $00
aiconblk:
[000ae2d0]                           dc.b $00
[000ae2d1]                           dc.b $00
[000ae2d2]                           dc.b $00
[000ae2d3]                           dc.b $00
[000ae2d4] 000ae15e                  dc.l aiconblk_obj
[000ae2d8]                           dc.b $00
[000ae2d9]                           dc.b $00
[000ae2da]                           dc.b $00
[000ae2db]                           dc.b $00
[000ae2dc]                           dc.w $0172
[000ae2de]                           dc.b $00
[000ae2df]                           dc.b $00
[000ae2e0]                           dc.w $0172
[000ae2e2]                           dc.b $00
[000ae2e3]                           dc.b $00
[000ae2e4]                           dc.b $00
[000ae2e5]                           dc.b $00
[000ae2e6]                           dc.b 'ICON_01',0
[000ae2ee]                           dc.b $00
[000ae2ef]                           dc.b $00
[000ae2f0]                           dc.b $00
[000ae2f1]                           dc.b $00
[000ae2f2]                           dc.b $00
[000ae2f3]                           dc.b $00
[000ae2f4]                           dc.b $00
[000ae2f5]                           dc.b $00
[000ae2f6]                           dc.b $00
[000ae2f7]                           dc.b $00
[000ae2f8]                           dc.b $00
[000ae2f9]                           dc.b $00
[000ae2fa]                           dc.b $00
[000ae2fb]                           dc.b $00
[000ae2fc]                           dc.b $00
[000ae2fd]                           dc.b $00
[000ae2fe]                           dc.b $00
[000ae2ff]                           dc.b $00
[000ae300]                           dc.b $00
[000ae301]                           dc.b $00
[000ae302]                           dc.b $00
[000ae303]                           dc.b $00
[000ae304]                           dc.b $00
[000ae305]                           dc.b $00
[000ae306]                           dc.b $00
[000ae307]                           dc.b $01
[000ae308]                           dc.b $00
[000ae309]                           dc.b $00
[000ae30a]                           dc.b $00
[000ae30b]                           dc.b $00
[000ae30c]                           dc.b $00
[000ae30d]                           dc.b $00
[000ae30e]                           dc.b $00
[000ae30f]                           dc.b $00
[000ae310]                           dc.b $00
[000ae311]                           dc.b $00
tree:
[000ae312]                           dc.b $00
[000ae313]                           dc.b $00
[000ae314]                           dc.b $00
[000ae315]                           dc.b $00
[000ae316]                           dc.b $00
[000ae317]                           dc.b $00
[000ae318]                           dc.b $00
[000ae319]                           dc.b $00
[000ae31a]                           dc.w $ffff
[000ae31c]                           dc.w $ffff
[000ae31e]                           dc.w $ffff
[000ae320]                           dc.b $00
[000ae321]                           dc.b $1a
[000ae322]                           dc.b $00
[000ae323]                           dc.b $05
[000ae324]                           dc.b $00
[000ae325]                           dc.b $00
[000ae326] 000adcee                  dc.l abutton
[000ae32a]                           dc.b $00
[000ae32b]                           dc.b $00
[000ae32c]                           dc.b $00
[000ae32d]                           dc.b $00
[000ae32e]                           dc.b $00
[000ae32f]                           dc.b $07
[000ae330]                           dc.b $00
[000ae331]                           dc.b $01
[000ae332]                           dc.b $00
[000ae333]                           dc.b $00
[000ae334]                           dc.b $00
[000ae335]                           dc.b $00
[000ae336]                           dc.b $00
[000ae337]                           dc.b $00
[000ae338]                           dc.b $00
[000ae339]                           dc.b $00
[000ae33a]                           dc.w $8000
[000ae33c]                           dc.b $00
[000ae33d]                           dc.b $00
[000ae33e]                           dc.b $00
[000ae33f]                           dc.b $00
[000ae340]                           dc.b $00
[000ae341]                           dc.b $00
[000ae342]                           dc.b $00
[000ae343]                           dc.b $00
[000ae344]                           dc.b $00
[000ae345]                           dc.b $00
[000ae346]                           dc.b $00
[000ae347]                           dc.b $00
[000ae348]                           dc.b $00
[000ae349]                           dc.b $00
[000ae34a]                           dc.b $00
[000ae34b]                           dc.b $00
[000ae34c]                           dc.b $00
[000ae34d]                           dc.b $00
[000ae34e]                           dc.b $00
[000ae34f]                           dc.b $00
[000ae350]                           dc.b $00
[000ae351]                           dc.b $00
[000ae352]                           dc.w $ffff
[000ae354]                           dc.w $ffff
[000ae356]                           dc.w $ffff
[000ae358]                           dc.b $00
[000ae359]                           dc.b $1c
[000ae35a]                           dc.b $00
[000ae35b]                           dc.b $00
[000ae35c]                           dc.b $00
[000ae35d]                           dc.b $00
[000ae35e] 000adc6a                  dc.l astring
[000ae362]                           dc.b $00
[000ae363]                           dc.b $00
[000ae364]                           dc.b $00
[000ae365]                           dc.b $00
[000ae366]                           dc.b $00
[000ae367]                           dc.b $06
[000ae368]                           dc.b $00
[000ae369]                           dc.b $01
[000ae36a]                           dc.b $00
[000ae36b]                           dc.b $00
[000ae36c]                           dc.b $00
[000ae36d]                           dc.b $00
[000ae36e]                           dc.b $00
[000ae36f]                           dc.b $00
[000ae370]                           dc.b $00
[000ae371]                           dc.b $00
[000ae372]                           dc.w $8000
[000ae374]                           dc.b $00
[000ae375]                           dc.b $00
[000ae376]                           dc.b $00
[000ae377]                           dc.b $00
[000ae378]                           dc.b $00
[000ae379]                           dc.b $00
[000ae37a]                           dc.b $00
[000ae37b]                           dc.b $00
[000ae37c]                           dc.b $00
[000ae37d]                           dc.b $00
[000ae37e]                           dc.b $00
[000ae37f]                           dc.b $00
[000ae380]                           dc.b $00
[000ae381]                           dc.b $00
[000ae382]                           dc.b $00
[000ae383]                           dc.b $00
[000ae384]                           dc.b $00
[000ae385]                           dc.b $00
[000ae386]                           dc.b $00
[000ae387]                           dc.b $00
[000ae388]                           dc.b $00
[000ae389]                           dc.b $00
[000ae38a]                           dc.w $ffff
[000ae38c]                           dc.w $ffff
[000ae38e]                           dc.w $ffff
[000ae390]                           dc.b $00
[000ae391]                           dc.b $1d
[000ae392]                           dc.b $00
[000ae393]                           dc.b $08
[000ae394]                           dc.b $00
[000ae395]                           dc.b $00
[000ae396] 000ade2e                  dc.l aeditext
[000ae39a]                           dc.b $00
[000ae39b]                           dc.b $00
[000ae39c]                           dc.b $00
[000ae39d]                           dc.b $00
[000ae39e]                           dc.b $00
[000ae39f]                           dc.b $09
[000ae3a0]                           dc.b $00
[000ae3a1]                           dc.b $01
[000ae3a2]                           dc.b $00
[000ae3a3]                           dc.b $00
[000ae3a4]                           dc.b $00
[000ae3a5]                           dc.b $00
[000ae3a6]                           dc.b $00
[000ae3a7]                           dc.b $00
[000ae3a8]                           dc.b $00
[000ae3a9]                           dc.b $00
[000ae3aa]                           dc.w $8000
[000ae3ac]                           dc.b $00
[000ae3ad]                           dc.b $00
[000ae3ae]                           dc.b $00
[000ae3af]                           dc.b $00
[000ae3b0]                           dc.b $00
[000ae3b1]                           dc.b $00
[000ae3b2]                           dc.b $00
[000ae3b3]                           dc.b $00
[000ae3b4]                           dc.b $00
[000ae3b5]                           dc.b $00
[000ae3b6]                           dc.b $00
[000ae3b7]                           dc.b $00
[000ae3b8]                           dc.b $00
[000ae3b9]                           dc.b $00
[000ae3ba]                           dc.b $00
[000ae3bb]                           dc.b $00
[000ae3bc]                           dc.b $00
[000ae3bd]                           dc.b $00
[000ae3be]                           dc.b $00
[000ae3bf]                           dc.b $00
[000ae3c0]                           dc.b $00
[000ae3c1]                           dc.b $00
[000ae3c2]                           dc.w $ffff
[000ae3c4]                           dc.w $ffff
[000ae3c6]                           dc.w $ffff
[000ae3c8]                           dc.b $00
[000ae3c9]                           dc.b $1e
[000ae3ca]                           dc.b $00
[000ae3cb]                           dc.b $08
[000ae3cc]                           dc.b $00
[000ae3cd]                           dc.b $00
[000ae3ce] 000ade2e                  dc.l aeditext
[000ae3d2]                           dc.b $00
[000ae3d3]                           dc.b $00
[000ae3d4]                           dc.b $00
[000ae3d5]                           dc.b $00
[000ae3d6]                           dc.b $00
[000ae3d7]                           dc.b $09
[000ae3d8]                           dc.b $00
[000ae3d9]                           dc.b $01
[000ae3da]                           dc.b $00
[000ae3db]                           dc.b $00
[000ae3dc]                           dc.b $00
[000ae3dd]                           dc.b $00
[000ae3de]                           dc.b $00
[000ae3df]                           dc.b $00
[000ae3e0]                           dc.b $00
[000ae3e1]                           dc.b $00
[000ae3e2]                           dc.w $8000
[000ae3e4]                           dc.b $00
[000ae3e5]                           dc.b $00
[000ae3e6]                           dc.b $00
[000ae3e7]                           dc.b $00
[000ae3e8]                           dc.b $00
[000ae3e9]                           dc.b $00
[000ae3ea]                           dc.b $00
[000ae3eb]                           dc.b $00
[000ae3ec]                           dc.b $00
[000ae3ed]                           dc.b $00
[000ae3ee]                           dc.b $00
[000ae3ef]                           dc.b $00
[000ae3f0]                           dc.b $00
[000ae3f1]                           dc.b $00
[000ae3f2]                           dc.b $00
[000ae3f3]                           dc.b $00
[000ae3f4]                           dc.b $00
[000ae3f5]                           dc.b $00
[000ae3f6]                           dc.b $00
[000ae3f7]                           dc.b $00
[000ae3f8]                           dc.b $00
[000ae3f9]                           dc.b $00
[000ae3fa]                           dc.w $ffff
[000ae3fc]                           dc.w $ffff
[000ae3fe]                           dc.w $ffff
[000ae400]                           dc.b $00
[000ae401]                           dc.b $19
[000ae402]                           dc.b $00
[000ae403]                           dc.b $00
[000ae404]                           dc.b $00
[000ae405]                           dc.b $00
[000ae406]                           dc.b $00
[000ae407]                           dc.b $01
[000ae408]                           dc.w $1101
[000ae40a]                           dc.b $00
[000ae40b]                           dc.b $00
[000ae40c]                           dc.b $00
[000ae40d]                           dc.b $00
[000ae40e]                           dc.b $00
[000ae40f]                           dc.b $04
[000ae410]                           dc.b $00
[000ae411]                           dc.b $01
[000ae412]                           dc.b $00
[000ae413]                           dc.b $00
[000ae414]                           dc.b $00
[000ae415]                           dc.b $00
[000ae416]                           dc.b $00
[000ae417]                           dc.b $00
[000ae418]                           dc.b $00
[000ae419]                           dc.b $00
[000ae41a]                           dc.w $8000
[000ae41c]                           dc.b $00
[000ae41d]                           dc.b $00
[000ae41e]                           dc.b $00
[000ae41f]                           dc.b $00
[000ae420]                           dc.b $00
[000ae421]                           dc.b $00
[000ae422]                           dc.b $00
[000ae423]                           dc.b $00
[000ae424]                           dc.b $00
[000ae425]                           dc.b $00
[000ae426]                           dc.b $00
[000ae427]                           dc.b $00
[000ae428]                           dc.b $00
[000ae429]                           dc.b $00
[000ae42a]                           dc.b $00
[000ae42b]                           dc.b $00
[000ae42c]                           dc.b $00
[000ae42d]                           dc.b $00
[000ae42e]                           dc.b $00
[000ae42f]                           dc.b $00
[000ae430]                           dc.b $00
[000ae431]                           dc.b $00
[000ae432]                           dc.w $ffff
[000ae434]                           dc.w $ffff
[000ae436]                           dc.w $ffff
[000ae438]                           dc.b $00
[000ae439]                           dc.b $14
[000ae43a]                           dc.b $00
[000ae43b]                           dc.b $00
[000ae43c]                           dc.b $00
[000ae43d]                           dc.b $00
[000ae43e]                           dc.b $00
[000ae43f]                           dc.b $ff
[000ae440]                           dc.w $1101
[000ae442]                           dc.b $00
[000ae443]                           dc.b $00
[000ae444]                           dc.b $00
[000ae445]                           dc.b $00
[000ae446]                           dc.b $00
[000ae447]                           dc.b $04
[000ae448]                           dc.b $00
[000ae449]                           dc.b $01
[000ae44a]                           dc.b $00
[000ae44b]                           dc.b $00
[000ae44c]                           dc.b $00
[000ae44d]                           dc.b $00
[000ae44e]                           dc.b $00
[000ae44f]                           dc.b $00
[000ae450]                           dc.b $00
[000ae451]                           dc.b $00
[000ae452]                           dc.w $8000
[000ae454]                           dc.b $00
[000ae455]                           dc.b $00
[000ae456]                           dc.b $00
[000ae457]                           dc.b $00
[000ae458]                           dc.b $00
[000ae459]                           dc.b $00
[000ae45a]                           dc.b $00
[000ae45b]                           dc.b $00
[000ae45c]                           dc.b $00
[000ae45d]                           dc.b $00
[000ae45e]                           dc.b $00
[000ae45f]                           dc.b $00
[000ae460]                           dc.b $00
[000ae461]                           dc.b $00
[000ae462]                           dc.b $00
[000ae463]                           dc.b $00
[000ae464]                           dc.b $00
[000ae465]                           dc.b $00
[000ae466]                           dc.b $00
[000ae467]                           dc.b $00
[000ae468]                           dc.b $00
[000ae469]                           dc.b $00
[000ae46a]                           dc.w $ffff
[000ae46c]                           dc.w $ffff
[000ae46e]                           dc.w $ffff
[000ae470]                           dc.b $00
[000ae471]                           dc.b $15
[000ae472]                           dc.b $00
[000ae473]                           dc.b $00
[000ae474]                           dc.b $00
[000ae475]                           dc.b $00
[000ae476] 000addd0                  dc.l agtext
[000ae47a]                           dc.b $00
[000ae47b]                           dc.b $00
[000ae47c]                           dc.b $00
[000ae47d]                           dc.b $00
[000ae47e]                           dc.b $00
[000ae47f]                           dc.b $04
[000ae480]                           dc.b $00
[000ae481]                           dc.b $01
[000ae482]                           dc.b $00
[000ae483]                           dc.b $00
[000ae484]                           dc.b $00
[000ae485]                           dc.b $00
[000ae486]                           dc.b $00
[000ae487]                           dc.b $00
[000ae488]                           dc.b $00
[000ae489]                           dc.b $00
[000ae48a]                           dc.w $8000
[000ae48c]                           dc.b $00
[000ae48d]                           dc.b $00
[000ae48e]                           dc.b $00
[000ae48f]                           dc.b $00
[000ae490]                           dc.b $00
[000ae491]                           dc.b $00
[000ae492]                           dc.b $00
[000ae493]                           dc.b $00
[000ae494]                           dc.b $00
[000ae495]                           dc.b $00
[000ae496]                           dc.b $00
[000ae497]                           dc.b $00
[000ae498]                           dc.b $00
[000ae499]                           dc.b $00
[000ae49a]                           dc.b $00
[000ae49b]                           dc.b $00
[000ae49c]                           dc.b $00
[000ae49d]                           dc.b $00
[000ae49e]                           dc.b $00
[000ae49f]                           dc.b $00
[000ae4a0]                           dc.b $00
[000ae4a1]                           dc.b $00
[000ae4a2]                           dc.w $ffff
[000ae4a4]                           dc.w $ffff
[000ae4a6]                           dc.w $ffff
[000ae4a8]                           dc.b $00
[000ae4a9]                           dc.b $1b
[000ae4aa]                           dc.b $00
[000ae4ab]                           dc.b $00
[000ae4ac]                           dc.b $00
[000ae4ad]                           dc.b $00
[000ae4ae]                           dc.w $43ff
[000ae4b0]                           dc.w $1101
[000ae4b2]                           dc.b $00
[000ae4b3]                           dc.b $00
[000ae4b4]                           dc.b $00
[000ae4b5]                           dc.b $00
[000ae4b6]                           dc.b $00
[000ae4b7]                           dc.b $02
[000ae4b8]                           dc.b $00
[000ae4b9]                           dc.b $01
[000ae4ba]                           dc.b $00
[000ae4bb]                           dc.b $00
[000ae4bc]                           dc.b $00
[000ae4bd]                           dc.b $00
[000ae4be]                           dc.b $00
[000ae4bf]                           dc.b $00
[000ae4c0]                           dc.b $00
[000ae4c1]                           dc.b $00
[000ae4c2]                           dc.w $8000
[000ae4c4]                           dc.b $00
[000ae4c5]                           dc.b $00
[000ae4c6]                           dc.b $00
[000ae4c7]                           dc.b $00
[000ae4c8]                           dc.b $00
[000ae4c9]                           dc.b $00
[000ae4ca]                           dc.b $00
[000ae4cb]                           dc.b $00
[000ae4cc]                           dc.b $00
[000ae4cd]                           dc.b $00
[000ae4ce]                           dc.b $00
[000ae4cf]                           dc.b $00
[000ae4d0]                           dc.b $00
[000ae4d1]                           dc.b $00
[000ae4d2]                           dc.b $00
[000ae4d3]                           dc.b $00
[000ae4d4]                           dc.b $00
[000ae4d5]                           dc.b $00
[000ae4d6]                           dc.b $00
[000ae4d7]                           dc.b $00
[000ae4d8]                           dc.b $00
[000ae4d9]                           dc.b $00
[000ae4da]                           dc.w $ffff
[000ae4dc]                           dc.w $ffff
[000ae4de]                           dc.w $ffff
[000ae4e0]                           dc.b $00
[000ae4e1]                           dc.b $16
[000ae4e2]                           dc.b $00
[000ae4e3]                           dc.b $00
[000ae4e4]                           dc.b $00
[000ae4e5]                           dc.b $00
[000ae4e6] 000addd0                  dc.l agtext
[000ae4ea]                           dc.b $00
[000ae4eb]                           dc.b $00
[000ae4ec]                           dc.b $00
[000ae4ed]                           dc.b $00
[000ae4ee]                           dc.b $00
[000ae4ef]                           dc.b $04
[000ae4f0]                           dc.b $00
[000ae4f1]                           dc.b $01
[000ae4f2]                           dc.b $00
[000ae4f3]                           dc.b $00
[000ae4f4]                           dc.b $00
[000ae4f5]                           dc.b $00
[000ae4f6]                           dc.b $00
[000ae4f7]                           dc.b $00
[000ae4f8]                           dc.b $00
[000ae4f9]                           dc.b $00
[000ae4fa]                           dc.w $8000
[000ae4fc]                           dc.b $00
[000ae4fd]                           dc.b $00
[000ae4fe]                           dc.b $00
[000ae4ff]                           dc.b $00
[000ae500]                           dc.b $00
[000ae501]                           dc.b $00
[000ae502]                           dc.b $00
[000ae503]                           dc.b $00
[000ae504]                           dc.b $00
[000ae505]                           dc.b $00
[000ae506]                           dc.b $00
[000ae507]                           dc.b $00
[000ae508]                           dc.b $00
[000ae509]                           dc.b $00
[000ae50a]                           dc.b $00
[000ae50b]                           dc.b $00
[000ae50c]                           dc.b $00
[000ae50d]                           dc.b $00
[000ae50e]                           dc.b $00
[000ae50f]                           dc.b $00
[000ae510]                           dc.b $00
[000ae511]                           dc.b $00
[000ae512]                           dc.w $ffff
[000ae514]                           dc.w $ffff
[000ae516]                           dc.w $ffff
[000ae518]                           dc.b $00
[000ae519]                           dc.b $20
[000ae51a]                           dc.b $00
[000ae51b]                           dc.b $00
[000ae51c]                           dc.b $00
[000ae51d]                           dc.b $00
[000ae51e] 000adcac                  dc.l atitle
[000ae522]                           dc.b $00
[000ae523]                           dc.b $00
[000ae524]                           dc.b $00
[000ae525]                           dc.b $00
[000ae526]                           dc.b $00
[000ae527]                           dc.b $07
[000ae528]                           dc.b $00
[000ae529]                           dc.b $01
[000ae52a]                           dc.b $00
[000ae52b]                           dc.b $00
[000ae52c]                           dc.b $00
[000ae52d]                           dc.b $00
[000ae52e]                           dc.b $00
[000ae52f]                           dc.b $00
[000ae530]                           dc.b $00
[000ae531]                           dc.b $00
[000ae532]                           dc.w $8000
[000ae534]                           dc.b $00
[000ae535]                           dc.b $00
[000ae536]                           dc.b $00
[000ae537]                           dc.b $00
[000ae538]                           dc.b $00
[000ae539]                           dc.b $00
[000ae53a]                           dc.b $00
[000ae53b]                           dc.b $00
[000ae53c]                           dc.b $00
[000ae53d]                           dc.b $00
[000ae53e]                           dc.b $00
[000ae53f]                           dc.b $00
[000ae540]                           dc.b $00
[000ae541]                           dc.b $00
[000ae542]                           dc.b $00
[000ae543]                           dc.b $00
[000ae544]                           dc.b $00
[000ae545]                           dc.b $00
[000ae546]                           dc.b $00
[000ae547]                           dc.b $00
[000ae548]                           dc.b $00
[000ae549]                           dc.b $00
[000ae54a]                           dc.w $ffff
[000ae54c]                           dc.w $ffff
[000ae54e]                           dc.w $ffff
[000ae550]                           dc.b $00
[000ae551]                           dc.b $17
[000ae552]                           dc.b $00
[000ae553]                           dc.b $00
[000ae554]                           dc.b $00
[000ae555]                           dc.b $00
[000ae556] 000adf0e                  dc.l abitblk
[000ae55a]                           dc.b $00
[000ae55b]                           dc.b $00
[000ae55c]                           dc.b $00
[000ae55d]                           dc.b $00
[000ae55e]                           dc.b $00
[000ae55f]                           dc.b $06
[000ae560]                           dc.b $00
[000ae561]                           dc.b $02
[000ae562]                           dc.b $00
[000ae563]                           dc.b $00
[000ae564]                           dc.b $00
[000ae565]                           dc.b $00
[000ae566]                           dc.b $00
[000ae567]                           dc.b $00
[000ae568]                           dc.b $00
[000ae569]                           dc.b $00
[000ae56a]                           dc.w $8000
[000ae56c]                           dc.b $00
[000ae56d]                           dc.b $00
[000ae56e]                           dc.b $00
[000ae56f]                           dc.b $00
[000ae570]                           dc.b $00
[000ae571]                           dc.b $00
[000ae572]                           dc.b $00
[000ae573]                           dc.b $00
[000ae574]                           dc.b $00
[000ae575]                           dc.b $00
[000ae576]                           dc.b $00
[000ae577]                           dc.b $00
[000ae578]                           dc.b $00
[000ae579]                           dc.b $00
[000ae57a]                           dc.b $00
[000ae57b]                           dc.b $00
[000ae57c]                           dc.b $00
[000ae57d]                           dc.b $00
[000ae57e]                           dc.b $00
[000ae57f]                           dc.b $00
[000ae580]                           dc.b $00
[000ae581]                           dc.b $00
[000ae582]                           dc.w $ffff
[000ae584]                           dc.w $ffff
[000ae586]                           dc.w $ffff
[000ae588]                           dc.b $00
[000ae589]                           dc.b $1f
[000ae58a]                           dc.b $00
[000ae58b]                           dc.b $00
[000ae58c]                           dc.b $00
[000ae58d]                           dc.b $00
[000ae58e] 000ae2d0                  dc.l aiconblk
[000ae592]                           dc.b $00
[000ae593]                           dc.b $00
[000ae594]                           dc.b $00
[000ae595]                           dc.b $00
[000ae596]                           dc.b $00
[000ae597]                           dc.b $06
[000ae598]                           dc.b $00
[000ae599]                           dc.b $02
[000ae59a]                           dc.b $00
[000ae59b]                           dc.b $00
[000ae59c]                           dc.b $00
[000ae59d]                           dc.b $00
[000ae59e]                           dc.b $00
[000ae59f]                           dc.b $00
[000ae5a0]                           dc.b $00
[000ae5a1]                           dc.b $00
[000ae5a2]                           dc.w $8000
[000ae5a4]                           dc.b $00
[000ae5a5]                           dc.b $00
[000ae5a6]                           dc.b $00
[000ae5a7]                           dc.b $00
[000ae5a8]                           dc.b $00
[000ae5a9]                           dc.b $00
[000ae5aa]                           dc.b $00
[000ae5ab]                           dc.b $00
[000ae5ac]                           dc.b $00
[000ae5ad]                           dc.b $00
[000ae5ae]                           dc.b $00
[000ae5af]                           dc.b $00
[000ae5b0]                           dc.b $00
[000ae5b1]                           dc.b $00
[000ae5b2]                           dc.b $00
[000ae5b3]                           dc.b $00
[000ae5b4]                           dc.b $00
[000ae5b5]                           dc.b $00
[000ae5b6]                           dc.b $00
[000ae5b7]                           dc.b $00
[000ae5b8]                           dc.b $00
[000ae5b9]                           dc.b $00
[000ae5ba]                           dc.w $ffff
[000ae5bc]                           dc.w $ffff
[000ae5be]                           dc.w $ffff
[000ae5c0]                           dc.b $00
[000ae5c1]                           dc.b $18
[000ae5c2]                           dc.b $00
[000ae5c3]                           dc.b $00
[000ae5c4]                           dc.b $00
[000ae5c5]                           dc.b $00
[000ae5c6] 000ae0da                  dc.l auserblk
[000ae5ca]                           dc.b $00
[000ae5cb]                           dc.b $00
[000ae5cc]                           dc.b $00
[000ae5cd]                           dc.b $00
[000ae5ce]                           dc.b $00
[000ae5cf]                           dc.b $08
[000ae5d0]                           dc.b $00
[000ae5d1]                           dc.b $01
[000ae5d2]                           dc.b $00
[000ae5d3]                           dc.b $00
[000ae5d4]                           dc.b $00
[000ae5d5]                           dc.b $00
[000ae5d6]                           dc.b $00
[000ae5d7]                           dc.b $00
[000ae5d8]                           dc.b $00
[000ae5d9]                           dc.b $00
[000ae5da]                           dc.w $8000
[000ae5dc]                           dc.b $00
[000ae5dd]                           dc.b $00
[000ae5de]                           dc.b $00
[000ae5df]                           dc.b $00
[000ae5e0]                           dc.b $00
[000ae5e1]                           dc.b $00
[000ae5e2]                           dc.b $00
[000ae5e3]                           dc.b $00
[000ae5e4]                           dc.b $00
[000ae5e5]                           dc.b $00
[000ae5e6]                           dc.b $00
[000ae5e7]                           dc.b $00
[000ae5e8]                           dc.b $00
[000ae5e9]                           dc.b $00
[000ae5ea]                           dc.b $00
[000ae5eb]                           dc.b $00
[000ae5ec]                           dc.b $00
[000ae5ed]                           dc.b $00
[000ae5ee]                           dc.b $00
[000ae5ef]                           dc.b $00
[000ae5f0]                           dc.b $00
[000ae5f1]                           dc.b $00
[000ae5f2]                           dc.w $ffff
[000ae5f4]                           dc.w $ffff
[000ae5f6]                           dc.w $ffff
[000ae5f8]                           dc.b $00
[000ae5f9]                           dc.b $14
[000ae5fa]                           dc.b $00
[000ae5fb]                           dc.b $00
[000ae5fc]                           dc.b $00
[000ae5fd]                           dc.b $00
[000ae5fe]                           dc.b $00
[000ae5ff]                           dc.b $ff
[000ae600]                           dc.w $1101
[000ae602]                           dc.b $00
[000ae603]                           dc.b $00
[000ae604]                           dc.b $00
[000ae605]                           dc.b $00
[000ae606]                           dc.b $00
[000ae607]                           dc.b $04
[000ae608]                           dc.b $00
[000ae609]                           dc.b $01
[000ae60a]                           dc.b $00
[000ae60b]                           dc.b $00
[000ae60c]                           dc.b $00
[000ae60d]                           dc.b $00
[000ae60e]                           dc.b $00
[000ae60f]                           dc.b $00
[000ae610]                           dc.b $00
[000ae611]                           dc.b $00
[000ae612]                           dc.w $8000
[000ae614]                           dc.b $00
[000ae615]                           dc.b $00
[000ae616]                           dc.b $00
[000ae617]                           dc.b $00
[000ae618]                           dc.b $00
[000ae619]                           dc.b $00
[000ae61a]                           dc.b $00
[000ae61b]                           dc.b $00
[000ae61c]                           dc.b $00
[000ae61d]                           dc.b $00
[000ae61e]                           dc.b $00
[000ae61f]                           dc.b $00
[000ae620]                           dc.b $00
[000ae621]                           dc.b $00
[000ae622]                           dc.b $00
[000ae623]                           dc.b $00
[000ae624]                           dc.b $00
[000ae625]                           dc.b $00
[000ae626]                           dc.b $00
[000ae627]                           dc.b $00
[000ae628]                           dc.b $00
[000ae629]                           dc.b $00
[000ae62a]                           dc.w $ffff
[000ae62c]                           dc.w $ffff
[000ae62e]                           dc.w $ffff
[000ae630]                           dc.b $00
[000ae631]                           dc.b $14
[000ae632]                           dc.b $00
[000ae633]                           dc.b $00
[000ae634]                           dc.b $00
[000ae635]                           dc.b $00
[000ae636]                           dc.b $00
[000ae637]                           dc.b $ff
[000ae638]                           dc.w $1101
[000ae63a]                           dc.b $00
[000ae63b]                           dc.b $00
[000ae63c]                           dc.b $00
[000ae63d]                           dc.b $00
[000ae63e]                           dc.b $00
[000ae63f]                           dc.b $04
[000ae640]                           dc.b $00
[000ae641]                           dc.b $01
[000ae642]                           dc.b $00
[000ae643]                           dc.b $00
[000ae644]                           dc.b $00
[000ae645]                           dc.b $00
[000ae646]                           dc.b $00
[000ae647]                           dc.b $00
[000ae648]                           dc.b $00
[000ae649]                           dc.b $00
[000ae64a]                           dc.w $8000
[000ae64c]                           dc.b $00
[000ae64d]                           dc.b $00
[000ae64e]                           dc.b $00
[000ae64f]                           dc.b $00
[000ae650]                           dc.b $00
[000ae651]                           dc.b $00
[000ae652]                           dc.b $00
[000ae653]                           dc.b $00
[000ae654]                           dc.b $00
[000ae655]                           dc.b $00
[000ae656]                           dc.b $00
[000ae657]                           dc.b $00
[000ae658]                           dc.b $00
[000ae659]                           dc.b $00
[000ae65a]                           dc.b $00
[000ae65b]                           dc.b $00
[000ae65c]                           dc.b $00
[000ae65d]                           dc.b $00
[000ae65e]                           dc.b $00
[000ae65f]                           dc.b $00
[000ae660]                           dc.b $00
[000ae661]                           dc.b $00
[000ae662]                           dc.w $ffff
[000ae664]                           dc.w $ffff
[000ae666]                           dc.w $ffff
[000ae668]                           dc.b $00
[000ae669]                           dc.b $14
[000ae66a]                           dc.b $00
[000ae66b]                           dc.b $00
[000ae66c]                           dc.b $00
[000ae66d]                           dc.b $00
[000ae66e]                           dc.b $00
[000ae66f]                           dc.b $ff
[000ae670]                           dc.w $1101
[000ae672]                           dc.b $00
[000ae673]                           dc.b $00
[000ae674]                           dc.b $00
[000ae675]                           dc.b $00
[000ae676]                           dc.b $00
[000ae677]                           dc.b $04
[000ae678]                           dc.b $00
[000ae679]                           dc.b $01
[000ae67a]                           dc.b $00
[000ae67b]                           dc.b $00
[000ae67c]                           dc.b $00
[000ae67d]                           dc.b $00
[000ae67e]                           dc.b $00
[000ae67f]                           dc.b $00
[000ae680]                           dc.b $00
[000ae681]                           dc.b $00
[000ae682]                           dc.w $8000
[000ae684]                           dc.b $00
[000ae685]                           dc.b $00
[000ae686]                           dc.b $00
[000ae687]                           dc.b $00
[000ae688]                           dc.b $00
[000ae689]                           dc.b $00
[000ae68a]                           dc.b $00
[000ae68b]                           dc.b $00
[000ae68c]                           dc.b $00
[000ae68d]                           dc.b $00
[000ae68e]                           dc.b $00
[000ae68f]                           dc.b $00
[000ae690]                           dc.b $00
[000ae691]                           dc.b $00
[000ae692]                           dc.b $00
[000ae693]                           dc.b $00
[000ae694]                           dc.b $00
[000ae695]                           dc.b $00
[000ae696]                           dc.b $00
[000ae697]                           dc.b $00
[000ae698]                           dc.b $00
[000ae699]                           dc.b $00
[000ae69a]                           dc.w $ffff
[000ae69c]                           dc.w $ffff
[000ae69e]                           dc.w $ffff
[000ae6a0]                           dc.b $00
[000ae6a1]                           dc.b $14
[000ae6a2]                           dc.b $00
[000ae6a3]                           dc.b $00
[000ae6a4]                           dc.b $00
[000ae6a5]                           dc.b $00
[000ae6a6]                           dc.b $00
[000ae6a7]                           dc.b $ff
[000ae6a8]                           dc.w $1101
[000ae6aa]                           dc.b $00
[000ae6ab]                           dc.b $00
[000ae6ac]                           dc.b $00
[000ae6ad]                           dc.b $00
[000ae6ae]                           dc.b $00
[000ae6af]                           dc.b $04
[000ae6b0]                           dc.b $00
[000ae6b1]                           dc.b $01
[000ae6b2]                           dc.b $00
[000ae6b3]                           dc.b $00
[000ae6b4]                           dc.b $00
[000ae6b5]                           dc.b $00
[000ae6b6]                           dc.b $00
[000ae6b7]                           dc.b $00
[000ae6b8]                           dc.b $00
[000ae6b9]                           dc.b $00
[000ae6ba]                           dc.w $8000
[000ae6bc]                           dc.b $00
[000ae6bd]                           dc.b $00
[000ae6be]                           dc.b $00
[000ae6bf]                           dc.b $00
[000ae6c0]                           dc.b $00
[000ae6c1]                           dc.b $00
[000ae6c2]                           dc.b $00
[000ae6c3]                           dc.b $00
[000ae6c4]                           dc.b $00
[000ae6c5]                           dc.b $00
[000ae6c6]                           dc.b $00
[000ae6c7]                           dc.b $00
[000ae6c8]                           dc.b $00
[000ae6c9]                           dc.b $00
[000ae6ca]                           dc.b $00
[000ae6cb]                           dc.b $00
[000ae6cc]                           dc.b $00
[000ae6cd]                           dc.b $00
[000ae6ce]                           dc.b $00
[000ae6cf]                           dc.b $00
[000ae6d0]                           dc.b $00
[000ae6d1]                           dc.b $00
[000ae6d2]                           dc.w $ffff
[000ae6d4]                           dc.w $ffff
[000ae6d6]                           dc.w $ffff
[000ae6d8]                           dc.b $00
[000ae6d9]                           dc.b $14
[000ae6da]                           dc.b $00
[000ae6db]                           dc.b $00
[000ae6dc]                           dc.b $00
[000ae6dd]                           dc.b $00
[000ae6de]                           dc.b $00
[000ae6df]                           dc.b $ff
[000ae6e0]                           dc.w $1101
[000ae6e2]                           dc.b $00
[000ae6e3]                           dc.b $00
[000ae6e4]                           dc.b $00
[000ae6e5]                           dc.b $00
[000ae6e6]                           dc.b $00
[000ae6e7]                           dc.b $04
[000ae6e8]                           dc.b $00
[000ae6e9]                           dc.b $01
[000ae6ea]                           dc.b $00
[000ae6eb]                           dc.b $00
[000ae6ec]                           dc.b $00
[000ae6ed]                           dc.b $00
[000ae6ee]                           dc.b $00
[000ae6ef]                           dc.b $00
[000ae6f0]                           dc.b $00
[000ae6f1]                           dc.b $00
[000ae6f2]                           dc.w $8000
[000ae6f4]                           dc.b $00
[000ae6f5]                           dc.b $00
[000ae6f6]                           dc.b $00
[000ae6f7]                           dc.b $00
[000ae6f8]                           dc.b $00
[000ae6f9]                           dc.b $00
[000ae6fa]                           dc.b $00
[000ae6fb]                           dc.b $00
[000ae6fc]                           dc.b $00
[000ae6fd]                           dc.b $00
[000ae6fe]                           dc.b $00
[000ae6ff]                           dc.b $00
[000ae700]                           dc.b $00
[000ae701]                           dc.b $00
[000ae702]                           dc.b $00
[000ae703]                           dc.b $00
[000ae704]                           dc.b $00
[000ae705]                           dc.b $00
[000ae706]                           dc.b $00
[000ae707]                           dc.b $00
[000ae708]                           dc.b $00
[000ae709]                           dc.b $00
[000ae70a]                           dc.w $ffff
[000ae70c]                           dc.w $ffff
[000ae70e]                           dc.w $ffff
[000ae710]                           dc.b $00
[000ae711]                           dc.b $14
[000ae712]                           dc.b $00
[000ae713]                           dc.b $00
[000ae714]                           dc.b $00
[000ae715]                           dc.b $00
[000ae716]                           dc.b $00
[000ae717]                           dc.b $ff
[000ae718]                           dc.w $1101
[000ae71a]                           dc.b $00
[000ae71b]                           dc.b $00
[000ae71c]                           dc.b $00
[000ae71d]                           dc.b $00
[000ae71e]                           dc.b $00
[000ae71f]                           dc.b $04
[000ae720]                           dc.b $00
[000ae721]                           dc.b $01
[000ae722]                           dc.b $00
[000ae723]                           dc.b $00
[000ae724]                           dc.b $00
[000ae725]                           dc.b $00
[000ae726]                           dc.b $00
[000ae727]                           dc.b $00
[000ae728]                           dc.b $00
[000ae729]                           dc.b $00
[000ae72a]                           dc.w $8000
[000ae72c]                           dc.b $00
[000ae72d]                           dc.b $00
[000ae72e]                           dc.b $00
[000ae72f]                           dc.b $00
[000ae730]                           dc.b $00
[000ae731]                           dc.b $00
[000ae732]                           dc.b $00
[000ae733]                           dc.b $00
[000ae734]                           dc.b $00
[000ae735]                           dc.b $00
[000ae736]                           dc.b $00
[000ae737]                           dc.b $00
[000ae738]                           dc.b $00
[000ae739]                           dc.b $00
[000ae73a]                           dc.b $00
[000ae73b]                           dc.b $00
[000ae73c]                           dc.b $00
[000ae73d]                           dc.b $00
[000ae73e]                           dc.b $00
[000ae73f]                           dc.b $00
[000ae740]                           dc.b $00
[000ae741]                           dc.b $00
[000ae742]                           dc.w $ffff
[000ae744]                           dc.w $ffff
[000ae746]                           dc.w $ffff
[000ae748]                           dc.b $00
[000ae749]                           dc.b $14
[000ae74a]                           dc.b $00
[000ae74b]                           dc.b $00
[000ae74c]                           dc.b $00
[000ae74d]                           dc.b $00
[000ae74e]                           dc.b $00
[000ae74f]                           dc.b $ff
[000ae750]                           dc.w $1101
[000ae752]                           dc.b $00
[000ae753]                           dc.b $00
[000ae754]                           dc.b $00
[000ae755]                           dc.b $00
[000ae756]                           dc.b $00
[000ae757]                           dc.b $04
[000ae758]                           dc.b $00
[000ae759]                           dc.b $01
[000ae75a]                           dc.b $00
[000ae75b]                           dc.b $00
[000ae75c]                           dc.b $00
[000ae75d]                           dc.b $00
[000ae75e]                           dc.b $00
[000ae75f]                           dc.b $00
[000ae760]                           dc.b $00
[000ae761]                           dc.b $00
[000ae762]                           dc.w $8000
[000ae764]                           dc.b $00
[000ae765]                           dc.b $00
[000ae766]                           dc.b $00
[000ae767]                           dc.b $00
[000ae768]                           dc.b $00
[000ae769]                           dc.b $00
[000ae76a]                           dc.b $00
[000ae76b]                           dc.b $00
[000ae76c]                           dc.b $00
[000ae76d]                           dc.b $00
[000ae76e]                           dc.b $00
[000ae76f]                           dc.b $00
[000ae770]                           dc.b $00
[000ae771]                           dc.b $00
[000ae772]                           dc.b $00
[000ae773]                           dc.b $00
[000ae774]                           dc.b $00
[000ae775]                           dc.b $00
[000ae776]                           dc.b $00
[000ae777]                           dc.b $00
[000ae778]                           dc.b $00
[000ae779]                           dc.b $00
[000ae77a]                           dc.w $ffff
[000ae77c]                           dc.w $ffff
[000ae77e]                           dc.w $ffff
[000ae780]                           dc.b $00
[000ae781]                           dc.b $14
[000ae782]                           dc.b $00
[000ae783]                           dc.b $00
[000ae784]                           dc.b $00
[000ae785]                           dc.b $00
[000ae786]                           dc.b $00
[000ae787]                           dc.b $ff
[000ae788]                           dc.w $1101
[000ae78a]                           dc.b $00
[000ae78b]                           dc.b $00
[000ae78c]                           dc.b $00
[000ae78d]                           dc.b $00
[000ae78e]                           dc.b $00
[000ae78f]                           dc.b $04
[000ae790]                           dc.b $00
[000ae791]                           dc.b $01
[000ae792]                           dc.b $00
[000ae793]                           dc.b $00
[000ae794]                           dc.b $00
[000ae795]                           dc.b $00
[000ae796]                           dc.b $00
[000ae797]                           dc.b $00
[000ae798]                           dc.b $00
[000ae799]                           dc.b $00
[000ae79a]                           dc.w $8000
[000ae79c]                           dc.b $00
[000ae79d]                           dc.b $00
[000ae79e]                           dc.b $00
[000ae79f]                           dc.b $00
[000ae7a0]                           dc.b $00
[000ae7a1]                           dc.b $00
[000ae7a2]                           dc.b $00
[000ae7a3]                           dc.b $00
[000ae7a4]                           dc.b $00
[000ae7a5]                           dc.b $00
[000ae7a6]                           dc.b $00
[000ae7a7]                           dc.b $00
[000ae7a8]                           dc.b $00
[000ae7a9]                           dc.b $00
[000ae7aa]                           dc.b $00
[000ae7ab]                           dc.b $00
[000ae7ac]                           dc.b $00
[000ae7ad]                           dc.b $00
[000ae7ae]                           dc.b $00
[000ae7af]                           dc.b $00
[000ae7b0]                           dc.b $00
[000ae7b1]                           dc.b $00
[000ae7b2]                           dc.w $ffff
[000ae7b4]                           dc.w $ffff
[000ae7b6]                           dc.w $ffff
[000ae7b8]                           dc.b $00
[000ae7b9]                           dc.b $14
[000ae7ba]                           dc.b $00
[000ae7bb]                           dc.b $00
[000ae7bc]                           dc.b $00
[000ae7bd]                           dc.b $00
[000ae7be]                           dc.b $00
[000ae7bf]                           dc.b $ff
[000ae7c0]                           dc.w $1101
[000ae7c2]                           dc.b $00
[000ae7c3]                           dc.b $00
[000ae7c4]                           dc.b $00
[000ae7c5]                           dc.b $00
[000ae7c6]                           dc.b $00
[000ae7c7]                           dc.b $04
[000ae7c8]                           dc.b $00
[000ae7c9]                           dc.b $01
[000ae7ca]                           dc.b $00
[000ae7cb]                           dc.b $00
[000ae7cc]                           dc.b $00
[000ae7cd]                           dc.b $00
[000ae7ce]                           dc.b $00
[000ae7cf]                           dc.b $00
[000ae7d0]                           dc.b $00
[000ae7d1]                           dc.b $00
[000ae7d2]                           dc.w $8000
[000ae7d4]                           dc.b $00
[000ae7d5]                           dc.b $00
[000ae7d6]                           dc.b $00
[000ae7d7]                           dc.b $00
[000ae7d8]                           dc.b $00
[000ae7d9]                           dc.b $00
[000ae7da]                           dc.b $00
[000ae7db]                           dc.b $00
[000ae7dc]                           dc.b $00
[000ae7dd]                           dc.b $00
[000ae7de]                           dc.b $00
[000ae7df]                           dc.b $00
[000ae7e0]                           dc.b $00
[000ae7e1]                           dc.b $00
[000ae7e2]                           dc.b $00
[000ae7e3]                           dc.b $00
[000ae7e4]                           dc.b $00
[000ae7e5]                           dc.b $00
[000ae7e6]                           dc.b $00
[000ae7e7]                           dc.b $00
[000ae7e8]                           dc.b $00
[000ae7e9]                           dc.b $00
[000ae7ea]                           dc.w $ffff
[000ae7ec]                           dc.w $ffff
[000ae7ee]                           dc.w $ffff
[000ae7f0]                           dc.b $00
[000ae7f1]                           dc.b $14
[000ae7f2]                           dc.b $00
[000ae7f3]                           dc.b $00
[000ae7f4]                           dc.b $00
[000ae7f5]                           dc.b $00
[000ae7f6]                           dc.b $00
[000ae7f7]                           dc.b $ff
[000ae7f8]                           dc.w $1101
[000ae7fa]                           dc.b $00
[000ae7fb]                           dc.b $00
[000ae7fc]                           dc.b $00
[000ae7fd]                           dc.b $00
[000ae7fe]                           dc.b $00
[000ae7ff]                           dc.b $04
[000ae800]                           dc.b $00
[000ae801]                           dc.b $01
[000ae802]                           dc.b $00
[000ae803]                           dc.b $00
[000ae804]                           dc.b $00
[000ae805]                           dc.b $00
[000ae806]                           dc.b $00
[000ae807]                           dc.b $00
[000ae808]                           dc.b $00
[000ae809]                           dc.b $00
[000ae80a]                           dc.w $8000
[000ae80c]                           dc.b $00
[000ae80d]                           dc.b $00
[000ae80e]                           dc.b $00
[000ae80f]                           dc.b $00
[000ae810]                           dc.b $00
[000ae811]                           dc.b $00
[000ae812]                           dc.b $00
[000ae813]                           dc.b $00
[000ae814]                           dc.b $00
[000ae815]                           dc.b $00
[000ae816]                           dc.b $00
[000ae817]                           dc.b $00
[000ae818]                           dc.b $00
[000ae819]                           dc.b $00
[000ae81a]                           dc.b $00
[000ae81b]                           dc.b $00
[000ae81c]                           dc.b $00
[000ae81d]                           dc.b $00
[000ae81e]                           dc.b $00
[000ae81f]                           dc.b $00
[000ae820]                           dc.b $00
[000ae821]                           dc.b $00
[000ae822]                           dc.w $ffff
[000ae824]                           dc.w $ffff
[000ae826]                           dc.w $ffff
[000ae828]                           dc.b $00
[000ae829]                           dc.b $14
[000ae82a]                           dc.b $00
[000ae82b]                           dc.b $00
[000ae82c]                           dc.b $00
[000ae82d]                           dc.b $00
[000ae82e]                           dc.b $00
[000ae82f]                           dc.b $ff
[000ae830]                           dc.w $1101
[000ae832]                           dc.b $00
[000ae833]                           dc.b $00
[000ae834]                           dc.b $00
[000ae835]                           dc.b $00
[000ae836]                           dc.b $00
[000ae837]                           dc.b $04
[000ae838]                           dc.b $00
[000ae839]                           dc.b $01
[000ae83a]                           dc.b $00
[000ae83b]                           dc.b $00
[000ae83c]                           dc.b $00
[000ae83d]                           dc.b $00
[000ae83e]                           dc.b $00
[000ae83f]                           dc.b $00
[000ae840]                           dc.b $00
[000ae841]                           dc.b $00
[000ae842]                           dc.w $8000
[000ae844]                           dc.b $00
[000ae845]                           dc.b $00
[000ae846]                           dc.b $00
[000ae847]                           dc.b $00
[000ae848]                           dc.b $00
[000ae849]                           dc.b $00
[000ae84a]                           dc.b $00
[000ae84b]                           dc.b $00
[000ae84c]                           dc.b $00
[000ae84d]                           dc.b $00
[000ae84e]                           dc.b $00
[000ae84f]                           dc.b $00
[000ae850]                           dc.b $00
[000ae851]                           dc.b $00
[000ae852]                           dc.b $00
[000ae853]                           dc.b $00
[000ae854]                           dc.b $00
[000ae855]                           dc.b $00
[000ae856]                           dc.b $00
[000ae857]                           dc.b $00
[000ae858]                           dc.b $00
[000ae859]                           dc.b $00
[000ae85a]                           dc.w $ffff
[000ae85c]                           dc.w $ffff
[000ae85e]                           dc.w $ffff
[000ae860]                           dc.b $00
[000ae861]                           dc.b $14
[000ae862]                           dc.b $00
[000ae863]                           dc.b $00
[000ae864]                           dc.b $00
[000ae865]                           dc.b $00
[000ae866]                           dc.b $00
[000ae867]                           dc.b $ff
[000ae868]                           dc.w $1101
[000ae86a]                           dc.b $00
[000ae86b]                           dc.b $00
[000ae86c]                           dc.b $00
[000ae86d]                           dc.b $00
[000ae86e]                           dc.b $00
[000ae86f]                           dc.b $04
[000ae870]                           dc.b $00
[000ae871]                           dc.b $01
[000ae872]                           dc.b $00
[000ae873]                           dc.b $00
[000ae874]                           dc.b $00
[000ae875]                           dc.b $00
[000ae876]                           dc.b $00
[000ae877]                           dc.b $00
[000ae878]                           dc.b $00
[000ae879]                           dc.b $00
[000ae87a]                           dc.w $8000
[000ae87c]                           dc.b $00
[000ae87d]                           dc.b $00
[000ae87e]                           dc.b $00
[000ae87f]                           dc.b $00
[000ae880]                           dc.b $00
[000ae881]                           dc.b $00
[000ae882]                           dc.b $00
[000ae883]                           dc.b $00
[000ae884]                           dc.b $00
[000ae885]                           dc.b $00
[000ae886]                           dc.b $00
[000ae887]                           dc.b $00
[000ae888]                           dc.b $00
[000ae889]                           dc.b $00
[000ae88a]                           dc.b $00
[000ae88b]                           dc.b $00
[000ae88c]                           dc.b $00
[000ae88d]                           dc.b $00
[000ae88e]                           dc.b $00
[000ae88f]                           dc.b $00
[000ae890]                           dc.b $00
[000ae891]                           dc.b $00
[000ae892]                           dc.w $ffff
[000ae894]                           dc.w $ffff
[000ae896]                           dc.w $ffff
[000ae898]                           dc.b $00
[000ae899]                           dc.b $14
[000ae89a]                           dc.b $00
[000ae89b]                           dc.b $00
[000ae89c]                           dc.b $00
[000ae89d]                           dc.b $00
[000ae89e]                           dc.b $00
[000ae89f]                           dc.b $ff
[000ae8a0]                           dc.w $1101
[000ae8a2]                           dc.b $00
[000ae8a3]                           dc.b $00
[000ae8a4]                           dc.b $00
[000ae8a5]                           dc.b $00
[000ae8a6]                           dc.b $00
[000ae8a7]                           dc.b $04
[000ae8a8]                           dc.b $00
[000ae8a9]                           dc.b $01
[000ae8aa]                           dc.b $00
[000ae8ab]                           dc.b $00
[000ae8ac]                           dc.b $00
[000ae8ad]                           dc.b $00
[000ae8ae]                           dc.b $00
[000ae8af]                           dc.b $00
[000ae8b0]                           dc.b $00
[000ae8b1]                           dc.b $00
[000ae8b2]                           dc.w $8000
[000ae8b4]                           dc.b $00
[000ae8b5]                           dc.b $00
[000ae8b6]                           dc.b $00
[000ae8b7]                           dc.b $00
[000ae8b8]                           dc.b $00
[000ae8b9]                           dc.b $00
[000ae8ba]                           dc.b $00
[000ae8bb]                           dc.b $00
[000ae8bc]                           dc.b $00
[000ae8bd]                           dc.b $00
[000ae8be]                           dc.b $00
[000ae8bf]                           dc.b $00
[000ae8c0]                           dc.b $00
[000ae8c1]                           dc.b $00
[000ae8c2]                           dc.b $00
[000ae8c3]                           dc.b $00
[000ae8c4]                           dc.b $00
[000ae8c5]                           dc.b $00
[000ae8c6]                           dc.b $00
[000ae8c7]                           dc.b $00
[000ae8c8]                           dc.b $00
[000ae8c9]                           dc.b $00
[000ae8ca]                           dc.w $ffff
[000ae8cc]                           dc.w $ffff
[000ae8ce]                           dc.w $ffff
[000ae8d0]                           dc.b $00
[000ae8d1]                           dc.b $14
[000ae8d2]                           dc.b $00
[000ae8d3]                           dc.b $00
[000ae8d4]                           dc.b $00
[000ae8d5]                           dc.b $00
[000ae8d6]                           dc.b $00
[000ae8d7]                           dc.b $ff
[000ae8d8]                           dc.w $1101
[000ae8da]                           dc.b $00
[000ae8db]                           dc.b $00
[000ae8dc]                           dc.b $00
[000ae8dd]                           dc.b $00
[000ae8de]                           dc.b $00
[000ae8df]                           dc.b $04
[000ae8e0]                           dc.b $00
[000ae8e1]                           dc.b $01
[000ae8e2]                           dc.b $00
[000ae8e3]                           dc.b $00
[000ae8e4]                           dc.b $00
[000ae8e5]                           dc.b $00
[000ae8e6]                           dc.b $00
[000ae8e7]                           dc.b $00
[000ae8e8]                           dc.b $00
[000ae8e9]                           dc.b $00
[000ae8ea]                           dc.w $8000
[000ae8ec]                           dc.b $00
[000ae8ed]                           dc.b $00
[000ae8ee]                           dc.b $00
[000ae8ef]                           dc.b $00
[000ae8f0]                           dc.b $00
[000ae8f1]                           dc.b $00
[000ae8f2]                           dc.b $00
[000ae8f3]                           dc.b $00
[000ae8f4]                           dc.b $00
[000ae8f5]                           dc.b $00
[000ae8f6]                           dc.b $00
[000ae8f7]                           dc.b $00
[000ae8f8]                           dc.b $00
[000ae8f9]                           dc.b $00
[000ae8fa]                           dc.b $00
[000ae8fb]                           dc.b $00
[000ae8fc]                           dc.b $00
[000ae8fd]                           dc.b $00
[000ae8fe]                           dc.b $00
[000ae8ff]                           dc.b $00
[000ae900]                           dc.b $00
[000ae901]                           dc.b $00
[000ae902]                           dc.w $ffff
[000ae904]                           dc.w $ffff
[000ae906]                           dc.w $ffff
[000ae908]                           dc.b $00
[000ae909]                           dc.b $14
[000ae90a]                           dc.b $00
[000ae90b]                           dc.b $00
[000ae90c]                           dc.b $00
[000ae90d]                           dc.b $00
[000ae90e]                           dc.b $00
[000ae90f]                           dc.b $ff
[000ae910]                           dc.w $1101
[000ae912]                           dc.b $00
[000ae913]                           dc.b $00
[000ae914]                           dc.b $00
[000ae915]                           dc.b $00
[000ae916]                           dc.b $00
[000ae917]                           dc.b $04
[000ae918]                           dc.b $00
[000ae919]                           dc.b $01
[000ae91a]                           dc.b $00
[000ae91b]                           dc.b $00
[000ae91c]                           dc.b $00
[000ae91d]                           dc.b $00
[000ae91e]                           dc.b $00
[000ae91f]                           dc.b $00
[000ae920]                           dc.b $00
[000ae921]                           dc.b $00
[000ae922]                           dc.w $8000
[000ae924]                           dc.b $00
[000ae925]                           dc.b $00
[000ae926]                           dc.b $00
[000ae927]                           dc.b $00
[000ae928]                           dc.b $00
[000ae929]                           dc.b $00
[000ae92a]                           dc.b $00
[000ae92b]                           dc.b $00
[000ae92c]                           dc.b $00
[000ae92d]                           dc.b $00
[000ae92e]                           dc.b $00
[000ae92f]                           dc.b $00
[000ae930]                           dc.b $00
[000ae931]                           dc.b $00
[000ae932]                           dc.b $00
[000ae933]                           dc.b $00
[000ae934]                           dc.b $00
[000ae935]                           dc.b $00
[000ae936]                           dc.b $00
[000ae937]                           dc.b $00
[000ae938]                           dc.b $00
[000ae939]                           dc.b $00
[000ae93a]                           dc.w $ffff
[000ae93c]                           dc.w $ffff
[000ae93e]                           dc.w $ffff
[000ae940]                           dc.b $00
[000ae941]                           dc.b $14
[000ae942]                           dc.b $00
[000ae943]                           dc.b $00
[000ae944]                           dc.b $00
[000ae945]                           dc.b $00
[000ae946]                           dc.b $00
[000ae947]                           dc.b $ff
[000ae948]                           dc.w $1101
[000ae94a]                           dc.b $00
[000ae94b]                           dc.b $00
[000ae94c]                           dc.b $00
[000ae94d]                           dc.b $00
[000ae94e]                           dc.b $00
[000ae94f]                           dc.b $04
[000ae950]                           dc.b $00
[000ae951]                           dc.b $01
[000ae952]                           dc.b $00
[000ae953]                           dc.b $00
[000ae954]                           dc.b $00
[000ae955]                           dc.b $00
[000ae956]                           dc.b $00
[000ae957]                           dc.b $00
[000ae958]                           dc.b $00
[000ae959]                           dc.b $00
[000ae95a]                           dc.w $8000
[000ae95c]                           dc.b $00
[000ae95d]                           dc.b $00
[000ae95e]                           dc.b $00
[000ae95f]                           dc.b $00
[000ae960]                           dc.b $00
[000ae961]                           dc.b $00
[000ae962]                           dc.b $00
[000ae963]                           dc.b $00
[000ae964]                           dc.b $00
[000ae965]                           dc.b $00
[000ae966]                           dc.b $00
[000ae967]                           dc.b $00
[000ae968]                           dc.b $00
[000ae969]                           dc.b $00
[000ae96a]                           dc.b $00
[000ae96b]                           dc.b $00
[000ae96c]                           dc.b $00
[000ae96d]                           dc.b $00
[000ae96e]                           dc.b $00
[000ae96f]                           dc.b $00
[000ae970]                           dc.b $00
[000ae971]                           dc.b $00
[000ae972]                           dc.w $ffff
[000ae974]                           dc.w $ffff
[000ae976]                           dc.w $ffff
[000ae978]                           dc.b $00
[000ae979]                           dc.b $14
[000ae97a]                           dc.b $00
[000ae97b]                           dc.b $00
[000ae97c]                           dc.b $00
[000ae97d]                           dc.b $00
[000ae97e]                           dc.b $00
[000ae97f]                           dc.b $ff
[000ae980]                           dc.w $1101
[000ae982]                           dc.b $00
[000ae983]                           dc.b $00
[000ae984]                           dc.b $00
[000ae985]                           dc.b $00
[000ae986]                           dc.b $00
[000ae987]                           dc.b $04
[000ae988]                           dc.b $00
[000ae989]                           dc.b $01
[000ae98a]                           dc.b $00
[000ae98b]                           dc.b $00
[000ae98c]                           dc.b $00
[000ae98d]                           dc.b $00
[000ae98e]                           dc.b $00
[000ae98f]                           dc.b $00
[000ae990]                           dc.b $00
[000ae991]                           dc.b $00
[000ae992]                           dc.w $8000
[000ae994]                           dc.b $00
[000ae995]                           dc.b $00
[000ae996]                           dc.b $00
[000ae997]                           dc.b $00
[000ae998]                           dc.b $00
[000ae999]                           dc.b $00
[000ae99a]                           dc.b $00
[000ae99b]                           dc.b $00
[000ae99c]                           dc.b $00
[000ae99d]                           dc.b $00
[000ae99e]                           dc.b $00
[000ae99f]                           dc.b $00
[000ae9a0]                           dc.b $00
[000ae9a1]                           dc.b $00
[000ae9a2]                           dc.b $00
[000ae9a3]                           dc.b $00
[000ae9a4]                           dc.b $00
[000ae9a5]                           dc.b $00
[000ae9a6]                           dc.b $00
[000ae9a7]                           dc.b $00
[000ae9a8]                           dc.b $00
[000ae9a9]                           dc.b $00
[000ae9aa]                           dc.w $ffff
[000ae9ac]                           dc.w $ffff
[000ae9ae]                           dc.w $ffff
[000ae9b0]                           dc.b $00
[000ae9b1]                           dc.b $14
[000ae9b2]                           dc.b $00
[000ae9b3]                           dc.b $00
[000ae9b4]                           dc.b $00
[000ae9b5]                           dc.b $00
[000ae9b6]                           dc.b $00
[000ae9b7]                           dc.b $ff
[000ae9b8]                           dc.w $1101
[000ae9ba]                           dc.b $00
[000ae9bb]                           dc.b $00
[000ae9bc]                           dc.b $00
[000ae9bd]                           dc.b $00
[000ae9be]                           dc.b $00
[000ae9bf]                           dc.b $04
[000ae9c0]                           dc.b $00
[000ae9c1]                           dc.b $01
[000ae9c2]                           dc.b $00
[000ae9c3]                           dc.b $00
[000ae9c4]                           dc.b $00
[000ae9c5]                           dc.b $00
[000ae9c6]                           dc.b $00
[000ae9c7]                           dc.b $00
[000ae9c8]                           dc.b $00
[000ae9c9]                           dc.b $00
[000ae9ca]                           dc.w $8000
[000ae9cc]                           dc.b $00
[000ae9cd]                           dc.b $00
[000ae9ce]                           dc.b $00
[000ae9cf]                           dc.b $00
[000ae9d0]                           dc.b $00
[000ae9d1]                           dc.b $00
[000ae9d2]                           dc.b $00
[000ae9d3]                           dc.b $00
[000ae9d4]                           dc.b $00
[000ae9d5]                           dc.b $00
[000ae9d6]                           dc.b $00
[000ae9d7]                           dc.b $00
[000ae9d8]                           dc.b $00
[000ae9d9]                           dc.b $00
[000ae9da]                           dc.b $00
[000ae9db]                           dc.b $00
[000ae9dc]                           dc.b $00
[000ae9dd]                           dc.b $00
[000ae9de]                           dc.b $00
[000ae9df]                           dc.b $00
[000ae9e0]                           dc.b $00
[000ae9e1]                           dc.b $00
[000ae9e2]                           dc.w $ffff
[000ae9e4]                           dc.w $ffff
[000ae9e6]                           dc.w $ffff
[000ae9e8]                           dc.b $00
[000ae9e9]                           dc.b $14
[000ae9ea]                           dc.b $00
[000ae9eb]                           dc.b $00
[000ae9ec]                           dc.b $00
[000ae9ed]                           dc.b $00
[000ae9ee]                           dc.b $00
[000ae9ef]                           dc.b $ff
[000ae9f0]                           dc.w $1101
[000ae9f2]                           dc.b $00
[000ae9f3]                           dc.b $00
[000ae9f4]                           dc.b $00
[000ae9f5]                           dc.b $00
[000ae9f6]                           dc.b $00
[000ae9f7]                           dc.b $04
[000ae9f8]                           dc.b $00
[000ae9f9]                           dc.b $01
[000ae9fa]                           dc.b $00
[000ae9fb]                           dc.b $00
[000ae9fc]                           dc.b $00
[000ae9fd]                           dc.b $00
[000ae9fe]                           dc.b $00
[000ae9ff]                           dc.b $00
[000aea00]                           dc.b $00
[000aea01]                           dc.b $00
[000aea02]                           dc.w $8000
[000aea04]                           dc.b $00
[000aea05]                           dc.b $00
[000aea06]                           dc.b $00
[000aea07]                           dc.b $00
[000aea08]                           dc.b $00
[000aea09]                           dc.b $00
[000aea0a]                           dc.b $00
[000aea0b]                           dc.b $00
[000aea0c]                           dc.b $00
[000aea0d]                           dc.b $00
[000aea0e]                           dc.b $00
[000aea0f]                           dc.b $00
[000aea10]                           dc.b $00
[000aea11]                           dc.b $00
[000aea12]                           dc.b $00
[000aea13]                           dc.b $00
[000aea14]                           dc.b $00
[000aea15]                           dc.b $00
[000aea16]                           dc.b $00
[000aea17]                           dc.b $00
[000aea18]                           dc.b $00
[000aea19]                           dc.b $00
[000aea1a]                           dc.w $ffff
[000aea1c]                           dc.w $ffff
[000aea1e]                           dc.w $ffff
[000aea20]                           dc.b $00
[000aea21]                           dc.b $14
[000aea22]                           dc.b $00
[000aea23]                           dc.b $00
[000aea24]                           dc.b $00
[000aea25]                           dc.b $00
[000aea26]                           dc.b $00
[000aea27]                           dc.b $ff
[000aea28]                           dc.w $1101
[000aea2a]                           dc.b $00
[000aea2b]                           dc.b $00
[000aea2c]                           dc.b $00
[000aea2d]                           dc.b $00
[000aea2e]                           dc.b $00
[000aea2f]                           dc.b $04
[000aea30]                           dc.b $00
[000aea31]                           dc.b $01
[000aea32]                           dc.b $00
[000aea33]                           dc.b $00
[000aea34]                           dc.b $00
[000aea35]                           dc.b $00
[000aea36]                           dc.b $00
[000aea37]                           dc.b $00
[000aea38]                           dc.b $00
[000aea39]                           dc.b $00
[000aea3a]                           dc.w $8000
[000aea3c]                           dc.b $00
[000aea3d]                           dc.b $00
[000aea3e]                           dc.b $00
[000aea3f]                           dc.b $00
[000aea40]                           dc.b $00
[000aea41]                           dc.b $00
[000aea42]                           dc.b $00
[000aea43]                           dc.b $00
[000aea44]                           dc.b $00
[000aea45]                           dc.b $00
[000aea46]                           dc.b $00
[000aea47]                           dc.b $00
[000aea48]                           dc.b $00
[000aea49]                           dc.b $00
[000aea4a]                           dc.b $00
[000aea4b]                           dc.b $00
[000aea4c]                           dc.b $00
[000aea4d]                           dc.b $00
[000aea4e]                           dc.b $00
[000aea4f]                           dc.b $00
[000aea50]                           dc.b $00
[000aea51]                           dc.b $00
[000aea52]                           dc.w $ffff
[000aea54]                           dc.w $ffff
[000aea56]                           dc.w $ffff
[000aea58]                           dc.b $00
[000aea59]                           dc.b $14
[000aea5a]                           dc.b $00
[000aea5b]                           dc.b $00
[000aea5c]                           dc.b $00
[000aea5d]                           dc.b $00
[000aea5e]                           dc.b $00
[000aea5f]                           dc.b $ff
[000aea60]                           dc.w $1101
[000aea62]                           dc.b $00
[000aea63]                           dc.b $00
[000aea64]                           dc.b $00
[000aea65]                           dc.b $00
[000aea66]                           dc.b $00
[000aea67]                           dc.b $04
[000aea68]                           dc.b $00
[000aea69]                           dc.b $01
[000aea6a]                           dc.b $00
[000aea6b]                           dc.b $00
[000aea6c]                           dc.b $00
[000aea6d]                           dc.b $00
[000aea6e]                           dc.b $00
[000aea6f]                           dc.b $00
[000aea70]                           dc.b $00
[000aea71]                           dc.b $00
[000aea72]                           dc.w $8000
[000aea74]                           dc.b $00
[000aea75]                           dc.b $00
[000aea76]                           dc.b $00
[000aea77]                           dc.b $00
[000aea78]                           dc.b $00
[000aea79]                           dc.b $00
[000aea7a]                           dc.b $00
[000aea7b]                           dc.b $00
[000aea7c]                           dc.b $00
[000aea7d]                           dc.b $00
[000aea7e]                           dc.b $00
[000aea7f]                           dc.b $00
[000aea80]                           dc.b $00
[000aea81]                           dc.b $00
[000aea82]                           dc.b $00
[000aea83]                           dc.b $00
[000aea84]                           dc.b $00
[000aea85]                           dc.b $00
[000aea86]                           dc.b $00
[000aea87]                           dc.b $00
[000aea88]                           dc.b $00
[000aea89]                           dc.b $00
[000aea8a]                           dc.w $ffff
[000aea8c]                           dc.w $ffff
[000aea8e]                           dc.w $ffff
[000aea90]                           dc.b $00
[000aea91]                           dc.b $14
[000aea92]                           dc.b $00
[000aea93]                           dc.b $00
[000aea94]                           dc.b $00
[000aea95]                           dc.b $00
[000aea96]                           dc.b $00
[000aea97]                           dc.b $ff
[000aea98]                           dc.w $1101
[000aea9a]                           dc.b $00
[000aea9b]                           dc.b $00
[000aea9c]                           dc.b $00
[000aea9d]                           dc.b $00
[000aea9e]                           dc.b $00
[000aea9f]                           dc.b $04
[000aeaa0]                           dc.b $00
[000aeaa1]                           dc.b $01
[000aeaa2]                           dc.b $00
[000aeaa3]                           dc.b $00
[000aeaa4]                           dc.b $00
[000aeaa5]                           dc.b $00
[000aeaa6]                           dc.b $00
[000aeaa7]                           dc.b $00
[000aeaa8]                           dc.b $00
[000aeaa9]                           dc.b $00
[000aeaaa]                           dc.w $8000
[000aeaac]                           dc.b $00
[000aeaad]                           dc.b $00
[000aeaae]                           dc.b $00
[000aeaaf]                           dc.b $00
[000aeab0]                           dc.b $00
[000aeab1]                           dc.b $00
[000aeab2]                           dc.b $00
[000aeab3]                           dc.b $00
[000aeab4]                           dc.b $00
[000aeab5]                           dc.b $00
[000aeab6]                           dc.b $00
[000aeab7]                           dc.b $00
[000aeab8]                           dc.b $00
[000aeab9]                           dc.b $00
[000aeaba]                           dc.b $00
[000aeabb]                           dc.b $00
[000aeabc]                           dc.b $00
[000aeabd]                           dc.b $00
[000aeabe]                           dc.b $00
[000aeabf]                           dc.b $00
[000aeac0]                           dc.b $00
[000aeac1]                           dc.b $00
[000aeac2]                           dc.w $ffff
[000aeac4]                           dc.w $ffff
[000aeac6]                           dc.w $ffff
[000aeac8]                           dc.b $00
[000aeac9]                           dc.b $14
[000aeaca]                           dc.b $00
[000aeacb]                           dc.b $00
[000aeacc]                           dc.b $00
[000aeacd]                           dc.b $00
[000aeace]                           dc.b $00
[000aeacf]                           dc.b $ff
[000aead0]                           dc.w $1101
[000aead2]                           dc.b $00
[000aead3]                           dc.b $00
[000aead4]                           dc.b $00
[000aead5]                           dc.b $00
[000aead6]                           dc.b $00
[000aead7]                           dc.b $04
[000aead8]                           dc.b $00
[000aead9]                           dc.b $01
[000aeada]                           dc.b $00
[000aeadb]                           dc.b $00
[000aeadc]                           dc.b $00
[000aeadd]                           dc.b $00
[000aeade]                           dc.b $00
[000aeadf]                           dc.b $00
[000aeae0]                           dc.b $00
[000aeae1]                           dc.b $00
[000aeae2]                           dc.w $8000
[000aeae4]                           dc.b $00
[000aeae5]                           dc.b $00
[000aeae6]                           dc.b $00
[000aeae7]                           dc.b $00
[000aeae8]                           dc.b $00
[000aeae9]                           dc.b $00
[000aeaea]                           dc.b $00
[000aeaeb]                           dc.b $00
[000aeaec]                           dc.b $00
[000aeaed]                           dc.b $00
[000aeaee]                           dc.b $00
[000aeaef]                           dc.b $00
[000aeaf0]                           dc.b $00
[000aeaf1]                           dc.b $00
[000aeaf2]                           dc.b $00
[000aeaf3]                           dc.b $00
[000aeaf4]                           dc.b $00
[000aeaf5]                           dc.b $00
[000aeaf6]                           dc.b $00
[000aeaf7]                           dc.b $00
[000aeaf8]                           dc.b $00
[000aeaf9]                           dc.b $00
[000aeafa]                           dc.w $ffff
[000aeafc]                           dc.w $ffff
[000aeafe]                           dc.w $ffff
[000aeb00]                           dc.b $00
[000aeb01]                           dc.b $14
[000aeb02]                           dc.b $00
[000aeb03]                           dc.b $00
[000aeb04]                           dc.b $00
[000aeb05]                           dc.b $00
[000aeb06]                           dc.b $00
[000aeb07]                           dc.b $ff
[000aeb08]                           dc.w $1101
[000aeb0a]                           dc.b $00
[000aeb0b]                           dc.b $00
[000aeb0c]                           dc.b $00
[000aeb0d]                           dc.b $00
[000aeb0e]                           dc.b $00
[000aeb0f]                           dc.b $04
[000aeb10]                           dc.b $00
[000aeb11]                           dc.b $01
[000aeb12]                           dc.b $00
[000aeb13]                           dc.b $00
[000aeb14]                           dc.b $00
[000aeb15]                           dc.b $00
[000aeb16]                           dc.b $00
[000aeb17]                           dc.b $00
[000aeb18]                           dc.b $00
[000aeb19]                           dc.b $00
[000aeb1a]                           dc.w $8000
[000aeb1c]                           dc.b $00
[000aeb1d]                           dc.b $00
[000aeb1e]                           dc.b $00
[000aeb1f]                           dc.b $00
[000aeb20]                           dc.b $00
[000aeb21]                           dc.b $00
[000aeb22]                           dc.b $00
[000aeb23]                           dc.b $00
[000aeb24]                           dc.b $00
[000aeb25]                           dc.b $00
[000aeb26]                           dc.b $00
[000aeb27]                           dc.b $00
[000aeb28]                           dc.b $00
[000aeb29]                           dc.b $00
[000aeb2a]                           dc.b $00
[000aeb2b]                           dc.b $00
[000aeb2c]                           dc.b $00
[000aeb2d]                           dc.b $00
[000aeb2e]                           dc.b $00
[000aeb2f]                           dc.b $00
[000aeb30]                           dc.b $00
[000aeb31]                           dc.b $00
[000aeb32]                           dc.w $ffff
[000aeb34]                           dc.w $ffff
[000aeb36]                           dc.w $ffff
[000aeb38]                           dc.b $00
[000aeb39]                           dc.b $14
[000aeb3a]                           dc.b $00
[000aeb3b]                           dc.b $00
[000aeb3c]                           dc.b $00
[000aeb3d]                           dc.b $00
[000aeb3e]                           dc.b $00
[000aeb3f]                           dc.b $ff
[000aeb40]                           dc.w $1101
[000aeb42]                           dc.b $00
[000aeb43]                           dc.b $00
[000aeb44]                           dc.b $00
[000aeb45]                           dc.b $00
[000aeb46]                           dc.b $00
[000aeb47]                           dc.b $04
[000aeb48]                           dc.b $00
[000aeb49]                           dc.b $01
[000aeb4a]                           dc.b $00
[000aeb4b]                           dc.b $00
[000aeb4c]                           dc.b $00
[000aeb4d]                           dc.b $00
[000aeb4e]                           dc.b $00
[000aeb4f]                           dc.b $00
[000aeb50]                           dc.b $00
[000aeb51]                           dc.b $00
[000aeb52]                           dc.w $8000
[000aeb54]                           dc.b $00
[000aeb55]                           dc.b $00
[000aeb56]                           dc.b $00
[000aeb57]                           dc.b $00
[000aeb58]                           dc.b $00
[000aeb59]                           dc.b $00
[000aeb5a]                           dc.b $00
[000aeb5b]                           dc.b $00
[000aeb5c]                           dc.b $00
[000aeb5d]                           dc.b $00
[000aeb5e]                           dc.b $00
[000aeb5f]                           dc.b $00
[000aeb60]                           dc.b $00
[000aeb61]                           dc.b $00
[000aeb62]                           dc.b $00
[000aeb63]                           dc.b $00
[000aeb64]                           dc.b $00
[000aeb65]                           dc.b $00
[000aeb66]                           dc.b $00
[000aeb67]                           dc.b $00
[000aeb68]                           dc.b $00
[000aeb69]                           dc.b $00
[000aeb6a]                           dc.w $ffff
[000aeb6c]                           dc.w $ffff
[000aeb6e]                           dc.w $ffff
[000aeb70]                           dc.b $00
[000aeb71]                           dc.b $14
[000aeb72]                           dc.b $00
[000aeb73]                           dc.b $00
[000aeb74]                           dc.b $00
[000aeb75]                           dc.b $00
[000aeb76]                           dc.b $00
[000aeb77]                           dc.b $ff
[000aeb78]                           dc.w $1101
[000aeb7a]                           dc.b $00
[000aeb7b]                           dc.b $00
[000aeb7c]                           dc.b $00
[000aeb7d]                           dc.b $00
[000aeb7e]                           dc.b $00
[000aeb7f]                           dc.b $04
[000aeb80]                           dc.b $00
[000aeb81]                           dc.b $01
[000aeb82]                           dc.b $00
[000aeb83]                           dc.b $00
[000aeb84]                           dc.b $00
[000aeb85]                           dc.b $00
[000aeb86]                           dc.b $00
[000aeb87]                           dc.b $00
[000aeb88]                           dc.b $00
[000aeb89]                           dc.b $00
[000aeb8a]                           dc.w $8000
[000aeb8c]                           dc.b $00
[000aeb8d]                           dc.b $00
[000aeb8e]                           dc.b $00
[000aeb8f]                           dc.b $00
[000aeb90]                           dc.b $00
[000aeb91]                           dc.b $00
[000aeb92]                           dc.b $00
[000aeb93]                           dc.b $00
[000aeb94]                           dc.b $00
[000aeb95]                           dc.b $00
[000aeb96]                           dc.b $00
[000aeb97]                           dc.b $00
[000aeb98]                           dc.b $00
[000aeb99]                           dc.b $00
[000aeb9a]                           dc.b $00
[000aeb9b]                           dc.b $00
[000aeb9c]                           dc.b $00
[000aeb9d]                           dc.b $00
[000aeb9e]                           dc.b $00
[000aeb9f]                           dc.b $00
[000aeba0]                           dc.b $00
[000aeba1]                           dc.b $00
[000aeba2]                           dc.w $ffff
[000aeba4]                           dc.w $ffff
[000aeba6]                           dc.w $ffff
[000aeba8]                           dc.b $00
[000aeba9]                           dc.b $14
[000aebaa]                           dc.b $00
[000aebab]                           dc.b $00
[000aebac]                           dc.b $00
[000aebad]                           dc.b $00
[000aebae]                           dc.b $00
[000aebaf]                           dc.b $ff
[000aebb0]                           dc.w $1101
[000aebb2]                           dc.b $00
[000aebb3]                           dc.b $00
[000aebb4]                           dc.b $00
[000aebb5]                           dc.b $00
[000aebb6]                           dc.b $00
[000aebb7]                           dc.b $04
[000aebb8]                           dc.b $00
[000aebb9]                           dc.b $01
[000aebba]                           dc.b $00
[000aebbb]                           dc.b $00
[000aebbc]                           dc.b $00
[000aebbd]                           dc.b $00
[000aebbe]                           dc.b $00
[000aebbf]                           dc.b $00
[000aebc0]                           dc.b $00
[000aebc1]                           dc.b $00
[000aebc2]                           dc.w $8000
[000aebc4]                           dc.b $00
[000aebc5]                           dc.b $00
[000aebc6]                           dc.b $00
[000aebc7]                           dc.b $00
[000aebc8]                           dc.b $00
[000aebc9]                           dc.b $00
[000aebca]                           dc.b $00
[000aebcb]                           dc.b $00
[000aebcc]                           dc.b $00
[000aebcd]                           dc.b $00
[000aebce]                           dc.b $00
[000aebcf]                           dc.b $00
[000aebd0]                           dc.b $00
[000aebd1]                           dc.b $00
[000aebd2]                           dc.b $00
[000aebd3]                           dc.b $00
[000aebd4]                           dc.b $00
[000aebd5]                           dc.b $00
[000aebd6]                           dc.b $00
[000aebd7]                           dc.b $00
[000aebd8]                           dc.b $00
[000aebd9]                           dc.b $00
[000aebda]                           dc.w $ffff
[000aebdc]                           dc.w $ffff
[000aebde]                           dc.w $ffff
[000aebe0]                           dc.b $00
[000aebe1]                           dc.b $14
[000aebe2]                           dc.b $00
[000aebe3]                           dc.b $00
[000aebe4]                           dc.b $00
[000aebe5]                           dc.b $00
[000aebe6]                           dc.b $00
[000aebe7]                           dc.b $ff
[000aebe8]                           dc.w $1101
[000aebea]                           dc.b $00
[000aebeb]                           dc.b $00
[000aebec]                           dc.b $00
[000aebed]                           dc.b $00
[000aebee]                           dc.b $00
[000aebef]                           dc.b $04
[000aebf0]                           dc.b $00
[000aebf1]                           dc.b $01
[000aebf2]                           dc.b $00
[000aebf3]                           dc.b $00
[000aebf4]                           dc.b $00
[000aebf5]                           dc.b $00
[000aebf6]                           dc.b $00
[000aebf7]                           dc.b $00
[000aebf8]                           dc.b $00
[000aebf9]                           dc.b $00
[000aebfa]                           dc.w $8000
[000aebfc]                           dc.b $00
[000aebfd]                           dc.b $00
[000aebfe]                           dc.b $00
[000aebff]                           dc.b $00
[000aec00]                           dc.b $00
[000aec01]                           dc.b $00
[000aec02]                           dc.b $00
[000aec03]                           dc.b $00
[000aec04]                           dc.b $00
[000aec05]                           dc.b $00
[000aec06]                           dc.b $00
[000aec07]                           dc.b $00
[000aec08]                           dc.b $00
[000aec09]                           dc.b $00
[000aec0a]                           dc.b $00
[000aec0b]                           dc.b $00
[000aec0c]                           dc.b $00
[000aec0d]                           dc.b $00
[000aec0e]                           dc.b $00
[000aec0f]                           dc.b $00
[000aec10]                           dc.b $00
[000aec11]                           dc.b $00
[000aec12]                           dc.w $ffff
[000aec14]                           dc.w $ffff
[000aec16]                           dc.w $ffff
[000aec18]                           dc.b $00
[000aec19]                           dc.b $14
[000aec1a]                           dc.b $00
[000aec1b]                           dc.b $00
[000aec1c]                           dc.b $00
[000aec1d]                           dc.b $00
[000aec1e]                           dc.b $00
[000aec1f]                           dc.b $ff
[000aec20]                           dc.w $1101
[000aec22]                           dc.b $00
[000aec23]                           dc.b $00
[000aec24]                           dc.b $00
[000aec25]                           dc.b $00
[000aec26]                           dc.b $00
[000aec27]                           dc.b $04
[000aec28]                           dc.b $00
[000aec29]                           dc.b $01
[000aec2a]                           dc.b $00
[000aec2b]                           dc.b $00
[000aec2c]                           dc.b $00
[000aec2d]                           dc.b $00
[000aec2e]                           dc.b $00
[000aec2f]                           dc.b $00
[000aec30]                           dc.b $00
[000aec31]                           dc.b $00
[000aec32]                           dc.w $8000
[000aec34]                           dc.b $00
[000aec35]                           dc.b $00
[000aec36]                           dc.b $00
[000aec37]                           dc.b $00
[000aec38]                           dc.b $00
[000aec39]                           dc.b $00
[000aec3a]                           dc.b $00
[000aec3b]                           dc.b $00
[000aec3c]                           dc.b $00
[000aec3d]                           dc.b $00
[000aec3e]                           dc.b $00
[000aec3f]                           dc.b $00
[000aec40]                           dc.b $00
[000aec41]                           dc.b $00
[000aec42]                           dc.b $00
[000aec43]                           dc.b $00
[000aec44]                           dc.b $00
[000aec45]                           dc.b $00
[000aec46]                           dc.b $00
[000aec47]                           dc.b $00
[000aec48]                           dc.b $00
[000aec49]                           dc.b $00
[000aec4a]                           dc.w $ffff
[000aec4c]                           dc.w $ffff
[000aec4e]                           dc.w $ffff
[000aec50]                           dc.b $00
[000aec51]                           dc.b $14
[000aec52]                           dc.b $00
[000aec53]                           dc.b $00
[000aec54]                           dc.b $00
[000aec55]                           dc.b $00
[000aec56]                           dc.b $00
[000aec57]                           dc.b $ff
[000aec58]                           dc.w $1101
[000aec5a]                           dc.b $00
[000aec5b]                           dc.b $00
[000aec5c]                           dc.b $00
[000aec5d]                           dc.b $00
[000aec5e]                           dc.b $00
[000aec5f]                           dc.b $04
[000aec60]                           dc.b $00
[000aec61]                           dc.b $01
[000aec62]                           dc.b $00
[000aec63]                           dc.b $00
[000aec64]                           dc.b $00
[000aec65]                           dc.b $00
[000aec66]                           dc.b $00
[000aec67]                           dc.b $00
[000aec68]                           dc.b $00
[000aec69]                           dc.b $00
[000aec6a]                           dc.w $8000
[000aec6c]                           dc.b $00
[000aec6d]                           dc.b $00
[000aec6e]                           dc.b $00
[000aec6f]                           dc.b $00
[000aec70]                           dc.b $00
[000aec71]                           dc.b $00
[000aec72]                           dc.b $00
[000aec73]                           dc.b $00
[000aec74]                           dc.b $00
[000aec75]                           dc.b $00
[000aec76]                           dc.b $00
[000aec77]                           dc.b $00
[000aec78]                           dc.b $00
[000aec79]                           dc.b $00
[000aec7a]                           dc.b $00
[000aec7b]                           dc.b $00
[000aec7c]                           dc.b $00
[000aec7d]                           dc.b $00
[000aec7e]                           dc.b $00
[000aec7f]                           dc.b $00
[000aec80]                           dc.b $00
[000aec81]                           dc.b $00
[000aec82]                           dc.w $ffff
[000aec84]                           dc.w $ffff
[000aec86]                           dc.w $ffff
[000aec88]                           dc.b $00
[000aec89]                           dc.b $14
[000aec8a]                           dc.b $00
[000aec8b]                           dc.b $00
[000aec8c]                           dc.b $00
[000aec8d]                           dc.b $00
[000aec8e]                           dc.b $00
[000aec8f]                           dc.b $ff
[000aec90]                           dc.w $1101
[000aec92]                           dc.b $00
[000aec93]                           dc.b $00
[000aec94]                           dc.b $00
[000aec95]                           dc.b $00
[000aec96]                           dc.b $00
[000aec97]                           dc.b $04
[000aec98]                           dc.b $00
[000aec99]                           dc.b $01
[000aec9a]                           dc.b $00
[000aec9b]                           dc.b $00
[000aec9c]                           dc.b $00
[000aec9d]                           dc.b $00
[000aec9e]                           dc.b $00
[000aec9f]                           dc.b $00
[000aeca0]                           dc.b $00
[000aeca1]                           dc.b $00
[000aeca2]                           dc.w $8000
[000aeca4]                           dc.b $00
[000aeca5]                           dc.b $00
[000aeca6]                           dc.b $00
[000aeca7]                           dc.b $00
[000aeca8]                           dc.b $00
[000aeca9]                           dc.b $00
[000aecaa]                           dc.b $00
[000aecab]                           dc.b $00
[000aecac]                           dc.b $00
[000aecad]                           dc.b $00
[000aecae]                           dc.b $00
[000aecaf]                           dc.b $00
[000aecb0]                           dc.b $00
[000aecb1]                           dc.b $00
[000aecb2]                           dc.b $00
[000aecb3]                           dc.b $00
[000aecb4]                           dc.b $00
[000aecb5]                           dc.b $00
[000aecb6]                           dc.b $00
[000aecb7]                           dc.b $00
[000aecb8]                           dc.b $00
[000aecb9]                           dc.b $00
[000aecba]                           dc.w $ffff
[000aecbc]                           dc.w $ffff
[000aecbe]                           dc.w $ffff
[000aecc0]                           dc.b $00
[000aecc1]                           dc.b $14
[000aecc2]                           dc.b $00
[000aecc3]                           dc.b $00
[000aecc4]                           dc.b $00
[000aecc5]                           dc.b $00
[000aecc6]                           dc.b $00
[000aecc7]                           dc.b $ff
[000aecc8]                           dc.w $1101
[000aecca]                           dc.b $00
[000aeccb]                           dc.b $00
[000aeccc]                           dc.b $00
[000aeccd]                           dc.b $00
[000aecce]                           dc.b $00
[000aeccf]                           dc.b $04
[000aecd0]                           dc.b $00
[000aecd1]                           dc.b $01
[000aecd2]                           dc.b $00
[000aecd3]                           dc.b $00
[000aecd4]                           dc.b $00
[000aecd5]                           dc.b $00
[000aecd6]                           dc.b $00
[000aecd7]                           dc.b $00
[000aecd8]                           dc.b $00
[000aecd9]                           dc.b $00
[000aecda]                           dc.w $8000
[000aecdc]                           dc.b $00
[000aecdd]                           dc.b $00
[000aecde]                           dc.b $00
[000aecdf]                           dc.b $00
[000aece0]                           dc.b $00
[000aece1]                           dc.b $00
[000aece2]                           dc.b $00
[000aece3]                           dc.b $00
[000aece4]                           dc.b $00
[000aece5]                           dc.b $00
[000aece6]                           dc.b $00
[000aece7]                           dc.b $00
[000aece8]                           dc.b $00
[000aece9]                           dc.b $00
[000aecea]                           dc.b $00
[000aeceb]                           dc.b $00
[000aecec]                           dc.b $00
[000aeced]                           dc.b $00
[000aecee]                           dc.b $00
[000aecef]                           dc.b $00
[000aecf0]                           dc.b $00
[000aecf1]                           dc.b $00
[000aecf2]                           dc.w $ffff
[000aecf4]                           dc.w $ffff
[000aecf6]                           dc.w $ffff
[000aecf8]                           dc.b $00
[000aecf9]                           dc.b $14
[000aecfa]                           dc.b $00
[000aecfb]                           dc.b $00
[000aecfc]                           dc.b $00
[000aecfd]                           dc.b $00
[000aecfe]                           dc.b $00
[000aecff]                           dc.b $ff
[000aed00]                           dc.w $1101
[000aed02]                           dc.b $00
[000aed03]                           dc.b $00
[000aed04]                           dc.b $00
[000aed05]                           dc.b $00
[000aed06]                           dc.b $00
[000aed07]                           dc.b $04
[000aed08]                           dc.b $00
[000aed09]                           dc.b $01
[000aed0a]                           dc.b $00
[000aed0b]                           dc.b $00
[000aed0c]                           dc.b $00
[000aed0d]                           dc.b $00
[000aed0e]                           dc.b $00
[000aed0f]                           dc.b $00
[000aed10]                           dc.b $00
[000aed11]                           dc.b $00
[000aed12]                           dc.w $8000
[000aed14]                           dc.b $00
[000aed15]                           dc.b $00
[000aed16]                           dc.b $00
[000aed17]                           dc.b $00
[000aed18]                           dc.b $00
[000aed19]                           dc.b $00
[000aed1a]                           dc.b $00
[000aed1b]                           dc.b $00
[000aed1c]                           dc.b $00
[000aed1d]                           dc.b $00
[000aed1e]                           dc.b $00
[000aed1f]                           dc.b $00
[000aed20]                           dc.b $00
[000aed21]                           dc.b $00
[000aed22]                           dc.b $00
[000aed23]                           dc.b $00
[000aed24]                           dc.b $00
[000aed25]                           dc.b $00
[000aed26]                           dc.b $00
[000aed27]                           dc.b $00
[000aed28]                           dc.b $00
[000aed29]                           dc.b $00
[000aed2a]                           dc.w $ffff
[000aed2c]                           dc.w $ffff
[000aed2e]                           dc.w $ffff
[000aed30]                           dc.b $00
[000aed31]                           dc.b $14
[000aed32]                           dc.b $00
[000aed33]                           dc.b $00
[000aed34]                           dc.b $00
[000aed35]                           dc.b $00
[000aed36]                           dc.b $00
[000aed37]                           dc.b $ff
[000aed38]                           dc.w $1101
[000aed3a]                           dc.b $00
[000aed3b]                           dc.b $00
[000aed3c]                           dc.b $00
[000aed3d]                           dc.b $00
[000aed3e]                           dc.b $00
[000aed3f]                           dc.b $04
[000aed40]                           dc.b $00
[000aed41]                           dc.b $01
[000aed42]                           dc.b $00
[000aed43]                           dc.b $00
[000aed44]                           dc.b $00
[000aed45]                           dc.b $00
[000aed46]                           dc.b $00
[000aed47]                           dc.b $00
[000aed48]                           dc.b $00
[000aed49]                           dc.b $00
[000aed4a]                           dc.w $8000
[000aed4c]                           dc.b $00
[000aed4d]                           dc.b $00
[000aed4e]                           dc.b $00
[000aed4f]                           dc.b $00
[000aed50]                           dc.b $00
[000aed51]                           dc.b $00
[000aed52]                           dc.b $00
[000aed53]                           dc.b $00
[000aed54]                           dc.b $00
[000aed55]                           dc.b $00
[000aed56]                           dc.b $00
[000aed57]                           dc.b $00
[000aed58]                           dc.b $00
[000aed59]                           dc.b $00
[000aed5a]                           dc.b $00
[000aed5b]                           dc.b $00
[000aed5c]                           dc.b $00
[000aed5d]                           dc.b $00
[000aed5e]                           dc.b $00
[000aed5f]                           dc.b $00
[000aed60]                           dc.b $00
[000aed61]                           dc.b $00
[000aed62]                           dc.w $ffff
[000aed64]                           dc.w $ffff
[000aed66]                           dc.w $ffff
[000aed68]                           dc.b $00
[000aed69]                           dc.b $14
[000aed6a]                           dc.b $00
[000aed6b]                           dc.b $00
[000aed6c]                           dc.b $00
[000aed6d]                           dc.b $00
[000aed6e]                           dc.b $00
[000aed6f]                           dc.b $ff
[000aed70]                           dc.w $1101
[000aed72]                           dc.b $00
[000aed73]                           dc.b $00
[000aed74]                           dc.b $00
[000aed75]                           dc.b $00
[000aed76]                           dc.b $00
[000aed77]                           dc.b $04
[000aed78]                           dc.b $00
[000aed79]                           dc.b $01
[000aed7a]                           dc.b $00
[000aed7b]                           dc.b $00
[000aed7c]                           dc.b $00
[000aed7d]                           dc.b $00
[000aed7e]                           dc.b $00
[000aed7f]                           dc.b $00
[000aed80]                           dc.b $00
[000aed81]                           dc.b $00
[000aed82]                           dc.w $8000
[000aed84]                           dc.b $00
[000aed85]                           dc.b $00
[000aed86]                           dc.b $00
[000aed87]                           dc.b $00
[000aed88]                           dc.b $00
[000aed89]                           dc.b $00
[000aed8a]                           dc.b $00
[000aed8b]                           dc.b $00
[000aed8c]                           dc.b $00
[000aed8d]                           dc.b $00
[000aed8e]                           dc.b $00
[000aed8f]                           dc.b $00
[000aed90]                           dc.b $00
[000aed91]                           dc.b $00
[000aed92]                           dc.b $00
[000aed93]                           dc.b $00
[000aed94]                           dc.b $00
[000aed95]                           dc.b $00
[000aed96]                           dc.b $00
[000aed97]                           dc.b $00
[000aed98]                           dc.b $00
[000aed99]                           dc.b $00
[000aed9a]                           dc.w $ffff
[000aed9c]                           dc.w $ffff
[000aed9e]                           dc.w $ffff
[000aeda0]                           dc.b $00
[000aeda1]                           dc.b $14
[000aeda2]                           dc.b $00
[000aeda3]                           dc.b $00
[000aeda4]                           dc.b $00
[000aeda5]                           dc.b $00
[000aeda6]                           dc.b $00
[000aeda7]                           dc.b $ff
[000aeda8]                           dc.w $1101
[000aedaa]                           dc.b $00
[000aedab]                           dc.b $00
[000aedac]                           dc.b $00
[000aedad]                           dc.b $00
[000aedae]                           dc.b $00
[000aedaf]                           dc.b $04
[000aedb0]                           dc.b $00
[000aedb1]                           dc.b $01
[000aedb2]                           dc.b $00
[000aedb3]                           dc.b $00
[000aedb4]                           dc.b $00
[000aedb5]                           dc.b $00
[000aedb6]                           dc.b $00
[000aedb7]                           dc.b $00
[000aedb8]                           dc.b $00
[000aedb9]                           dc.b $00
[000aedba]                           dc.w $8000
[000aedbc]                           dc.b $00
[000aedbd]                           dc.b $00
[000aedbe]                           dc.b $00
[000aedbf]                           dc.b $00
[000aedc0]                           dc.b $00
[000aedc1]                           dc.b $00
[000aedc2]                           dc.b $00
[000aedc3]                           dc.b $00
[000aedc4]                           dc.b $00
[000aedc5]                           dc.b $00
[000aedc6]                           dc.b $00
[000aedc7]                           dc.b $00
[000aedc8]                           dc.b $00
[000aedc9]                           dc.b $00
[000aedca]                           dc.b $00
[000aedcb]                           dc.b $00
[000aedcc]                           dc.b $00
[000aedcd]                           dc.b $00
[000aedce]                           dc.b $00
[000aedcf]                           dc.b $00
[000aedd0]                           dc.b $00
[000aedd1]                           dc.b $00
[000aedd2]                           dc.w $ffff
[000aedd4]                           dc.w $ffff
[000aedd6]                           dc.w $ffff
[000aedd8]                           dc.b $00
[000aedd9]                           dc.b $14
[000aedda]                           dc.b $00
[000aeddb]                           dc.b $00
[000aeddc]                           dc.b $00
[000aeddd]                           dc.b $00
[000aedde]                           dc.b $00
[000aeddf]                           dc.b $ff
[000aede0]                           dc.w $1101
[000aede2]                           dc.b $00
[000aede3]                           dc.b $00
[000aede4]                           dc.b $00
[000aede5]                           dc.b $00
[000aede6]                           dc.b $00
[000aede7]                           dc.b $04
[000aede8]                           dc.b $00
[000aede9]                           dc.b $01
[000aedea]                           dc.b $00
[000aedeb]                           dc.b $00
[000aedec]                           dc.b $00
[000aeded]                           dc.b $00
[000aedee]                           dc.b $00
[000aedef]                           dc.b $00
[000aedf0]                           dc.b $00
[000aedf1]                           dc.b $00
[000aedf2]                           dc.w $8000
[000aedf4]                           dc.b $00
[000aedf5]                           dc.b $00
[000aedf6]                           dc.b $00
[000aedf7]                           dc.b $00
[000aedf8]                           dc.b $00
[000aedf9]                           dc.b $00
[000aedfa]                           dc.b $00
[000aedfb]                           dc.b $00
[000aedfc]                           dc.b $00
[000aedfd]                           dc.b $00
[000aedfe]                           dc.b $00
[000aedff]                           dc.b $00
[000aee00]                           dc.b $00
[000aee01]                           dc.b $00
[000aee02]                           dc.b $00
[000aee03]                           dc.b $00
[000aee04]                           dc.b $00
[000aee05]                           dc.b $00
[000aee06]                           dc.b $00
[000aee07]                           dc.b $00
[000aee08]                           dc.b $00
[000aee09]                           dc.b $00
[000aee0a]                           dc.w $ffff
[000aee0c]                           dc.w $ffff
[000aee0e]                           dc.w $ffff
[000aee10]                           dc.b $00
[000aee11]                           dc.b $14
[000aee12]                           dc.b $00
[000aee13]                           dc.b $00
[000aee14]                           dc.b $00
[000aee15]                           dc.b $00
[000aee16]                           dc.b $00
[000aee17]                           dc.b $ff
[000aee18]                           dc.w $1101
[000aee1a]                           dc.b $00
[000aee1b]                           dc.b $00
[000aee1c]                           dc.b $00
[000aee1d]                           dc.b $00
[000aee1e]                           dc.b $00
[000aee1f]                           dc.b $04
[000aee20]                           dc.b $00
[000aee21]                           dc.b $01
[000aee22]                           dc.b $00
[000aee23]                           dc.b $00
[000aee24]                           dc.b $00
[000aee25]                           dc.b $00
[000aee26]                           dc.b $00
[000aee27]                           dc.b $00
[000aee28]                           dc.b $00
[000aee29]                           dc.b $00
[000aee2a]                           dc.w $8000
[000aee2c]                           dc.b $00
[000aee2d]                           dc.b $00
[000aee2e]                           dc.b $00
[000aee2f]                           dc.b $00
[000aee30]                           dc.b $00
[000aee31]                           dc.b $00
[000aee32]                           dc.b $00
[000aee33]                           dc.b $00
[000aee34]                           dc.b $00
[000aee35]                           dc.b $00
[000aee36]                           dc.b $00
[000aee37]                           dc.b $00
[000aee38]                           dc.b $00
[000aee39]                           dc.b $00
[000aee3a]                           dc.b $00
[000aee3b]                           dc.b $00
[000aee3c]                           dc.b $00
[000aee3d]                           dc.b $00
[000aee3e]                           dc.b $00
[000aee3f]                           dc.b $00
[000aee40]                           dc.b $00
[000aee41]                           dc.b $00
[000aee42]                           dc.w $ffff
[000aee44]                           dc.w $ffff
[000aee46]                           dc.w $ffff
[000aee48]                           dc.b $00
[000aee49]                           dc.b $14
[000aee4a]                           dc.b $00
[000aee4b]                           dc.b $00
[000aee4c]                           dc.b $00
[000aee4d]                           dc.b $00
[000aee4e]                           dc.b $00
[000aee4f]                           dc.b $ff
[000aee50]                           dc.w $1101
[000aee52]                           dc.b $00
[000aee53]                           dc.b $00
[000aee54]                           dc.b $00
[000aee55]                           dc.b $00
[000aee56]                           dc.b $00
[000aee57]                           dc.b $04
[000aee58]                           dc.b $00
[000aee59]                           dc.b $01
[000aee5a]                           dc.b $00
[000aee5b]                           dc.b $00
[000aee5c]                           dc.b $00
[000aee5d]                           dc.b $00
[000aee5e]                           dc.b $00
[000aee5f]                           dc.b $00
[000aee60]                           dc.b $00
[000aee61]                           dc.b $00
[000aee62]                           dc.w $8000
[000aee64]                           dc.b $00
[000aee65]                           dc.b $00
[000aee66]                           dc.b $00
[000aee67]                           dc.b $00
[000aee68]                           dc.b $00
[000aee69]                           dc.b $00
[000aee6a]                           dc.b $00
[000aee6b]                           dc.b $00
[000aee6c]                           dc.b $00
[000aee6d]                           dc.b $00
[000aee6e]                           dc.b $00
[000aee6f]                           dc.b $00
[000aee70]                           dc.b $00
[000aee71]                           dc.b $00
[000aee72]                           dc.b $00
[000aee73]                           dc.b $00
[000aee74]                           dc.b $00
[000aee75]                           dc.b $00
[000aee76]                           dc.b $00
[000aee77]                           dc.b $00
[000aee78]                           dc.b $00
[000aee79]                           dc.b $00
[000aee7a]                           dc.w $ffff
[000aee7c]                           dc.w $ffff
[000aee7e]                           dc.w $ffff
[000aee80]                           dc.b $00
[000aee81]                           dc.b $14
[000aee82]                           dc.b $00
[000aee83]                           dc.b $00
[000aee84]                           dc.b $00
[000aee85]                           dc.b $00
[000aee86]                           dc.b $00
[000aee87]                           dc.b $ff
[000aee88]                           dc.w $1101
[000aee8a]                           dc.b $00
[000aee8b]                           dc.b $00
[000aee8c]                           dc.b $00
[000aee8d]                           dc.b $00
[000aee8e]                           dc.b $00
[000aee8f]                           dc.b $04
[000aee90]                           dc.b $00
[000aee91]                           dc.b $01
[000aee92]                           dc.b $00
[000aee93]                           dc.b $00
[000aee94]                           dc.b $00
[000aee95]                           dc.b $00
[000aee96]                           dc.b $00
[000aee97]                           dc.b $00
[000aee98]                           dc.b $00
[000aee99]                           dc.b $00
[000aee9a]                           dc.w $8000
[000aee9c]                           dc.b $00
[000aee9d]                           dc.b $00
[000aee9e]                           dc.b $00
[000aee9f]                           dc.b $00
[000aeea0]                           dc.b $00
[000aeea1]                           dc.b $00
[000aeea2]                           dc.b $00
[000aeea3]                           dc.b $00
[000aeea4]                           dc.b $00
[000aeea5]                           dc.b $00
[000aeea6]                           dc.b $00
[000aeea7]                           dc.b $00
[000aeea8]                           dc.b $00
[000aeea9]                           dc.b $00
[000aeeaa]                           dc.b $00
[000aeeab]                           dc.b $00
[000aeeac]                           dc.b $00
[000aeead]                           dc.b $00
[000aeeae]                           dc.b $00
[000aeeaf]                           dc.b $00
[000aeeb0]                           dc.b $00
[000aeeb1]                           dc.b $00
[000aeeb2]                           dc.w $ffff
[000aeeb4]                           dc.w $ffff
[000aeeb6]                           dc.w $ffff
[000aeeb8]                           dc.b $00
[000aeeb9]                           dc.b $14
[000aeeba]                           dc.b $00
[000aeebb]                           dc.b $00
[000aeebc]                           dc.b $00
[000aeebd]                           dc.b $00
[000aeebe]                           dc.b $00
[000aeebf]                           dc.b $ff
[000aeec0]                           dc.w $1101
[000aeec2]                           dc.b $00
[000aeec3]                           dc.b $00
[000aeec4]                           dc.b $00
[000aeec5]                           dc.b $00
[000aeec6]                           dc.b $00
[000aeec7]                           dc.b $04
[000aeec8]                           dc.b $00
[000aeec9]                           dc.b $01
[000aeeca]                           dc.b $00
[000aeecb]                           dc.b $00
[000aeecc]                           dc.b $00
[000aeecd]                           dc.b $00
[000aeece]                           dc.b $00
[000aeecf]                           dc.b $00
[000aeed0]                           dc.b $00
[000aeed1]                           dc.b $00
[000aeed2]                           dc.w $8000
[000aeed4]                           dc.b $00
[000aeed5]                           dc.b $00
[000aeed6]                           dc.b $00
[000aeed7]                           dc.b $00
[000aeed8]                           dc.b $00
[000aeed9]                           dc.b $00
[000aeeda]                           dc.b $00
[000aeedb]                           dc.b $00
[000aeedc]                           dc.b $00
[000aeedd]                           dc.b $00
[000aeede]                           dc.b $00
[000aeedf]                           dc.b $00
[000aeee0]                           dc.b $00
[000aeee1]                           dc.b $00
[000aeee2]                           dc.b $00
[000aeee3]                           dc.b $00
[000aeee4]                           dc.b $00
[000aeee5]                           dc.b $00
[000aeee6]                           dc.b $00
[000aeee7]                           dc.b $00
[000aeee8]                           dc.b $00
[000aeee9]                           dc.b $00
[000aeeea]                           dc.w $ffff
[000aeeec]                           dc.w $ffff
[000aeeee]                           dc.w $ffff
[000aeef0]                           dc.b $00
[000aeef1]                           dc.b $14
[000aeef2]                           dc.b $00
[000aeef3]                           dc.b $00
[000aeef4]                           dc.b $00
[000aeef5]                           dc.b $00
[000aeef6]                           dc.b $00
[000aeef7]                           dc.b $ff
[000aeef8]                           dc.w $1101
[000aeefa]                           dc.b $00
[000aeefb]                           dc.b $00
[000aeefc]                           dc.b $00
[000aeefd]                           dc.b $00
[000aeefe]                           dc.b $00
[000aeeff]                           dc.b $04
[000aef00]                           dc.b $00
[000aef01]                           dc.b $01
[000aef02]                           dc.b $00
[000aef03]                           dc.b $00
[000aef04]                           dc.b $00
[000aef05]                           dc.b $00
[000aef06]                           dc.b $00
[000aef07]                           dc.b $00
[000aef08]                           dc.b $00
[000aef09]                           dc.b $00
[000aef0a]                           dc.w $8000
[000aef0c]                           dc.b $00
[000aef0d]                           dc.b $00
[000aef0e]                           dc.b $00
[000aef0f]                           dc.b $00
[000aef10]                           dc.b $00
[000aef11]                           dc.b $00
[000aef12]                           dc.b $00
[000aef13]                           dc.b $00
[000aef14]                           dc.b $00
[000aef15]                           dc.b $00
[000aef16]                           dc.b $00
[000aef17]                           dc.b $00
[000aef18]                           dc.b $00
[000aef19]                           dc.b $00
[000aef1a]                           dc.b $00
[000aef1b]                           dc.b $00
[000aef1c]                           dc.b $00
[000aef1d]                           dc.b $00
[000aef1e]                           dc.b $00
[000aef1f]                           dc.b $00
[000aef20]                           dc.b $00
[000aef21]                           dc.b $00
[000aef22]                           dc.w $ffff
[000aef24]                           dc.w $ffff
[000aef26]                           dc.w $ffff
[000aef28]                           dc.b $00
[000aef29]                           dc.b $14
[000aef2a]                           dc.b $00
[000aef2b]                           dc.b $00
[000aef2c]                           dc.b $00
[000aef2d]                           dc.b $00
[000aef2e]                           dc.b $00
[000aef2f]                           dc.b $ff
[000aef30]                           dc.w $1101
[000aef32]                           dc.b $00
[000aef33]                           dc.b $00
[000aef34]                           dc.b $00
[000aef35]                           dc.b $00
[000aef36]                           dc.b $00
[000aef37]                           dc.b $04
[000aef38]                           dc.b $00
[000aef39]                           dc.b $01
[000aef3a]                           dc.b $00
[000aef3b]                           dc.b $00
[000aef3c]                           dc.b $00
[000aef3d]                           dc.b $00
[000aef3e]                           dc.b $00
[000aef3f]                           dc.b $00
[000aef40]                           dc.b $00
[000aef41]                           dc.b $00
[000aef42]                           dc.w $8000
[000aef44]                           dc.b $00
[000aef45]                           dc.b $00
[000aef46]                           dc.b $00
[000aef47]                           dc.b $00
[000aef48]                           dc.b $00
[000aef49]                           dc.b $00
[000aef4a]                           dc.b $00
[000aef4b]                           dc.b $00
[000aef4c]                           dc.b $00
[000aef4d]                           dc.b $00
[000aef4e]                           dc.b $00
[000aef4f]                           dc.b $00
[000aef50]                           dc.b $00
[000aef51]                           dc.b $00
[000aef52]                           dc.b $00
[000aef53]                           dc.b $00
[000aef54]                           dc.b $00
[000aef55]                           dc.b $00
[000aef56]                           dc.b $00
[000aef57]                           dc.b $00
[000aef58]                           dc.b $00
[000aef59]                           dc.b $00
[000aef5a]                           dc.w $ffff
[000aef5c]                           dc.w $ffff
[000aef5e]                           dc.w $ffff
[000aef60]                           dc.b $00
[000aef61]                           dc.b $14
[000aef62]                           dc.b $00
[000aef63]                           dc.b $00
[000aef64]                           dc.b $00
[000aef65]                           dc.b $00
[000aef66]                           dc.b $00
[000aef67]                           dc.b $ff
[000aef68]                           dc.w $1101
[000aef6a]                           dc.b $00
[000aef6b]                           dc.b $00
[000aef6c]                           dc.b $00
[000aef6d]                           dc.b $00
[000aef6e]                           dc.b $00
[000aef6f]                           dc.b $04
[000aef70]                           dc.b $00
[000aef71]                           dc.b $01
[000aef72]                           dc.b $00
[000aef73]                           dc.b $00
[000aef74]                           dc.b $00
[000aef75]                           dc.b $00
[000aef76]                           dc.b $00
[000aef77]                           dc.b $00
[000aef78]                           dc.b $00
[000aef79]                           dc.b $00
[000aef7a]                           dc.w $8000
[000aef7c]                           dc.b $00
[000aef7d]                           dc.b $00
[000aef7e]                           dc.b $00
[000aef7f]                           dc.b $00
[000aef80]                           dc.b $00
[000aef81]                           dc.b $00
[000aef82]                           dc.b $00
[000aef83]                           dc.b $00
[000aef84]                           dc.b $00
[000aef85]                           dc.b $00
[000aef86]                           dc.b $00
[000aef87]                           dc.b $00
[000aef88]                           dc.b $00
[000aef89]                           dc.b $00
[000aef8a]                           dc.b $00
[000aef8b]                           dc.b $00
[000aef8c]                           dc.b $00
[000aef8d]                           dc.b $00
[000aef8e]                           dc.b $00
[000aef8f]                           dc.b $00
[000aef90]                           dc.b $00
[000aef91]                           dc.b $00
[000aef92]                           dc.w $ffff
[000aef94]                           dc.w $ffff
[000aef96]                           dc.w $ffff
[000aef98]                           dc.b $00
[000aef99]                           dc.b $14
[000aef9a]                           dc.b $00
[000aef9b]                           dc.b $00
[000aef9c]                           dc.b $00
[000aef9d]                           dc.b $00
[000aef9e]                           dc.b $00
[000aef9f]                           dc.b $ff
[000aefa0]                           dc.w $1101
[000aefa2]                           dc.b $00
[000aefa3]                           dc.b $00
[000aefa4]                           dc.b $00
[000aefa5]                           dc.b $00
[000aefa6]                           dc.b $00
[000aefa7]                           dc.b $04
[000aefa8]                           dc.b $00
[000aefa9]                           dc.b $01
[000aefaa]                           dc.b $00
[000aefab]                           dc.b $00
[000aefac]                           dc.b $00
[000aefad]                           dc.b $00
[000aefae]                           dc.b $00
[000aefaf]                           dc.b $00
[000aefb0]                           dc.b $00
[000aefb1]                           dc.b $00
[000aefb2]                           dc.w $8000
[000aefb4]                           dc.b $00
[000aefb5]                           dc.b $00
[000aefb6]                           dc.b $00
[000aefb7]                           dc.b $00
[000aefb8]                           dc.b $00
[000aefb9]                           dc.b $00
[000aefba]                           dc.b $00
[000aefbb]                           dc.b $00
[000aefbc]                           dc.b $00
[000aefbd]                           dc.b $00
[000aefbe]                           dc.b $00
[000aefbf]                           dc.b $00
[000aefc0]                           dc.b $00
[000aefc1]                           dc.b $00
[000aefc2]                           dc.b $00
[000aefc3]                           dc.b $00
[000aefc4]                           dc.b $00
[000aefc5]                           dc.b $00
[000aefc6]                           dc.b $00
[000aefc7]                           dc.b $00
[000aefc8]                           dc.b $00
[000aefc9]                           dc.b $00
[000aefca]                           dc.w $ffff
[000aefcc]                           dc.w $ffff
[000aefce]                           dc.w $ffff
[000aefd0]                           dc.b $00
[000aefd1]                           dc.b $14
[000aefd2]                           dc.b $00
[000aefd3]                           dc.b $00
[000aefd4]                           dc.b $00
[000aefd5]                           dc.b $00
[000aefd6]                           dc.b $00
[000aefd7]                           dc.b $ff
[000aefd8]                           dc.w $1101
[000aefda]                           dc.b $00
[000aefdb]                           dc.b $00
[000aefdc]                           dc.b $00
[000aefdd]                           dc.b $00
[000aefde]                           dc.b $00
[000aefdf]                           dc.b $04
[000aefe0]                           dc.b $00
[000aefe1]                           dc.b $01
[000aefe2]                           dc.b $00
[000aefe3]                           dc.b $00
[000aefe4]                           dc.b $00
[000aefe5]                           dc.b $00
[000aefe6]                           dc.b $00
[000aefe7]                           dc.b $00
[000aefe8]                           dc.b $00
[000aefe9]                           dc.b $00
[000aefea]                           dc.w $8000
[000aefec]                           dc.b $00
[000aefed]                           dc.b $00
[000aefee]                           dc.b $00
[000aefef]                           dc.b $00
[000aeff0]                           dc.b $00
[000aeff1]                           dc.b $00
[000aeff2]                           dc.b $00
[000aeff3]                           dc.b $00
[000aeff4]                           dc.b $00
[000aeff5]                           dc.b $00
[000aeff6]                           dc.b $00
[000aeff7]                           dc.b $00
[000aeff8]                           dc.b $00
[000aeff9]                           dc.b $00
[000aeffa]                           dc.b $00
[000aeffb]                           dc.b $00
[000aeffc]                           dc.b $00
[000aeffd]                           dc.b $00
[000aeffe]                           dc.b $00
[000aefff]                           dc.b $00
[000af000]                           dc.b $00
[000af001]                           dc.b $00
[000af002]                           dc.w $ffff
[000af004]                           dc.w $ffff
[000af006]                           dc.w $ffff
[000af008]                           dc.b $00
[000af009]                           dc.b $14
[000af00a]                           dc.b $00
[000af00b]                           dc.b $00
[000af00c]                           dc.b $00
[000af00d]                           dc.b $00
[000af00e]                           dc.b $00
[000af00f]                           dc.b $ff
[000af010]                           dc.w $1101
[000af012]                           dc.b $00
[000af013]                           dc.b $00
[000af014]                           dc.b $00
[000af015]                           dc.b $00
[000af016]                           dc.b $00
[000af017]                           dc.b $04
[000af018]                           dc.b $00
[000af019]                           dc.b $01
[000af01a]                           dc.b $00
[000af01b]                           dc.b $00
[000af01c]                           dc.b $00
[000af01d]                           dc.b $00
[000af01e]                           dc.b $00
[000af01f]                           dc.b $00
[000af020]                           dc.b $00
[000af021]                           dc.b $00
[000af022]                           dc.w $8000
[000af024]                           dc.b $00
[000af025]                           dc.b $00
[000af026]                           dc.b $00
[000af027]                           dc.b $00
[000af028]                           dc.b $00
[000af029]                           dc.b $00
[000af02a]                           dc.b $00
[000af02b]                           dc.b $00
[000af02c]                           dc.b $00
[000af02d]                           dc.b $00
[000af02e]                           dc.b $00
[000af02f]                           dc.b $00
[000af030]                           dc.b $00
[000af031]                           dc.b $00
part_palette:
[000af032]                           dc.b $00
[000af033]                           dc.b $00
[000af034]                           dc.b $00
[000af035]                           dc.b $00
[000af036] 000ae312                  dc.l tree
[000af03a]                           dc.b $00
[000af03b]                           dc.b $00
[000af03c]                           dc.b $00
[000af03d]                           dc.b $00
[000af03e]                           dc.w $0d20
[000af040]                           dc.b $00
[000af041]                           dc.b $00
[000af042]                           dc.w $0d20
[000af044]                           dc.b $00
[000af045]                           dc.b $00
[000af046]                           dc.b $00
[000af047]                           dc.b $00
[000af048]                           dc.b 'PALETTE',0
[000af050]                           dc.b $00
[000af051]                           dc.b $00
[000af052]                           dc.b $00
[000af053]                           dc.b $00
[000af054]                           dc.b $00
[000af055]                           dc.b $00
[000af056]                           dc.b $00
[000af057]                           dc.b $00
[000af058]                           dc.b $00
[000af059]                           dc.b $00
[000af05a]                           dc.b $00
[000af05b]                           dc.b $00
[000af05c]                           dc.b $00
[000af05d]                           dc.b $00
[000af05e]                           dc.b $00
[000af05f]                           dc.b $00
[000af060]                           dc.b $00
[000af061]                           dc.b $00
[000af062]                           dc.b $00
[000af063]                           dc.b $00
[000af064]                           dc.b $00
[000af065]                           dc.b $00
[000af066]                           dc.b $00
[000af067]                           dc.b $00
[000af068]                           dc.b $00
[000af069]                           dc.b $01
[000af06a]                           dc.b $00
[000af06b]                           dc.b $00
[000af06c]                           dc.b $00
[000af06d]                           dc.b $00
[000af06e]                           dc.b $00
[000af06f]                           dc.b $00
[000af070]                           dc.b $00
[000af071]                           dc.b $00
[000af072]                           dc.b $00
[000af073]                           dc.b $00
bitblk:
[000af074] 000ade7e                  dc.l imagedata
[000af078]                           dc.b $00
[000af079]                           dc.b $06
[000af07a]                           dc.b $00
[000af07b]                           dc.b $18
[000af07c]                           dc.b $00
[000af07d]                           dc.b $00
[000af07e]                           dc.b $00
[000af07f]                           dc.b $00
[000af080]                           dc.b $00
[000af081]                           dc.b $01
iconblk:
[000af082] 000ae1b0                  dc.l iconmask
[000af086] 000ae240                  dc.l icondata
[000af08a] 000af118                  dc.l $000af118 ; no symbol found
[000af08e]                           dc.w $1041
[000af090]                           dc.b $00
[000af091]                           dc.b $14
[000af092]                           dc.b $00
[000af093]                           dc.b $06
[000af094]                           dc.b $00
[000af095]                           dc.b $00
[000af096]                           dc.b $00
[000af097]                           dc.b $00
[000af098]                           dc.b $00
[000af099]                           dc.b $30
[000af09a]                           dc.b $00
[000af09b]                           dc.b $18
[000af09c]                           dc.b $00
[000af09d]                           dc.b $00
[000af09e]                           dc.b $00
[000af09f]                           dc.b $18
[000af0a0]                           dc.b $00
[000af0a1]                           dc.b $30
[000af0a2]                           dc.b $00
[000af0a3]                           dc.b $08
[000af0a4]                           dc.b $00
[000af0a5]                           dc.b $00
[000af0a6]                           dc.b $00
[000af0a7]                           dc.b $00
[000af0a8]                           dc.b $00
[000af0a9]                           dc.b $00
[000af0aa]                           dc.b $00
[000af0ab]                           dc.b $00
[000af0ac]                           dc.b $00
[000af0ad]                           dc.b $00
[000af0ae]                           dc.b $00
[000af0af]                           dc.b $00
[000af0b0]                           dc.b $00
[000af0b1]                           dc.b $00
[000af0b2]                           dc.b $00
[000af0b3]                           dc.b $00
[000af0b4]                           dc.b $00
[000af0b5]                           dc.b $00
[000af0b6]                           dc.b $00
[000af0b7]                           dc.b $00
[000af0b8]                           dc.b $00
[000af0b9]                           dc.b $00
[000af0ba]                           dc.b $00
[000af0bb]                           dc.b $00
[000af0bc]                           dc.b $00
[000af0bd]                           dc.b $00
[000af0be]                           dc.b $00
[000af0bf]                           dc.b $00
[000af0c0]                           dc.b $00
[000af0c1]                           dc.b $00
[000af0c2]                           dc.b $00
[000af0c3]                           dc.b $00
[000af0c4]                           dc.b $00
[000af0c5]                           dc.b $00
[000af0c6]                           dc.b $00
[000af0c7]                           dc.b $00
[000af0c8]                           dc.b $00
[000af0c9]                           dc.b $00
[000af0ca]                           dc.b $00
[000af0cb]                           dc.b $00
[000af0cc]                           dc.b $00
[000af0cd]                           dc.b $00
[000af0ce]                           dc.b $00
[000af0cf]                           dc.b $00
[000af0d0]                           dc.b $00
[000af0d1]                           dc.b $00
[000af0d2]                           dc.b $00
[000af0d3]                           dc.b $00
part_ucnt:
[000af0d4]                           dc.b $00
[000af0d5]                           dc.b $00
uocall:
[000af0d6] 0002d91e                  dc.l ed_abort
[000af0da] 0002de80                  dc.l set_userdata
parts_window:
[000af0de]                           dc.b $00
[000af0df]                           dc.b $00
[000af0e0]                           dc.b $00
[000af0e1]                           dc.b $00
[000af0e2]                           dc.b 'BUTTON',0
[000af0e9]                           dc.b 'TEXT',0
[000af0ee]                           dc.b ' TITLE ',0
[000af0f6]                           dc.b 'abc',0
[000af0fa]                           dc.b 'EDIT:____',0
[000af104]                           dc.b 'XXXX',0
[000af109]                           dc.b 'USERDEF',0
[000af111]                           dc.b 'STRING',0
[000af118]                           dc.b 'CICON',0
[000af11e]                           dc.w $3031
[000af120]                           dc.b $00
[000af121]                           dc.b 'TEXT_01',0
[000af129]                           dc.b 'DATAS_01',0
[000af132]                           dc.b 'BUBBLE_01',0
[000af13c]                           dc.b 'CONTEXT_01',0
[000af147]                           dc.b 'AME',0
[000af14b]                           dc.b $00
