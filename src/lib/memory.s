
		.globl INmemory
INmemory:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		lea.l      freeBlockList,a2
		move.w     -742(a2),d0
		addq.w     #1,-742(a2)
		tst.w      d0
		bne.s      INmemory_1
		clr.w      d3
		bra.s      INmemory_2
INmemory_3:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #2,d0
		movea.l    (a2),a0
		clr.w      10(a0,d0.l)
		movea.l    (a2),a0
		clr.w      12(a0,d0.l)
		movea.l    (a2),a0
		clr.w      14(a0,d0.l)
		movea.l    (a2),a0
		clr.l      16(a0,d0.l)
		addq.w     #1,d3
INmemory_2:
		cmp.w      4(a2),d3
		blt.s      INmemory_3
		move.w     4(a2),d0
		ble.s      INmemory_1
		lea.l      sortFreeMemList,a1
		moveq.l    #20,d1
		ext.l      d0
		movea.l    (a2),a0
		jsr        qsort
INmemory_1:
		clr.w      d0
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl TRmemory
TRmemory:
		movem.l    d3/a2-a4,-(a7)
		lea.l      freeBlockList,a2
		subq.w     #1,-742(a2)
		bne.s      TRmemory_1
		clr.w      d3
		bra.s      TRmemory_2
TRmemory_5:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #2,d0
		movea.l    (a2),a3
		adda.l     d0,a3
		bra.s      TRmemory_3
TRmemory_4:
		movea.l    16(a3),a4
		movea.l    16(a3),a0
		move.l     (a0),16(a3)
		movea.l    a4,a0
		jsr        Ax_free
TRmemory_3:
		move.l     16(a3),d0
		bne.s      TRmemory_4
		addq.w     #1,d3
TRmemory_2:
		cmp.w      4(a2),d3
		blt.s      TRmemory_5
		movea.l    (a2),a0
		cmpa.l     #_freeBlockList,a0
		beq.s      TRmemory_6
		jsr        Ax_free
TRmemory_6:
		move.l     6(a2),d0
		beq.s      TRmemory_1
		movea.l    d0,a0
		jsr        Ax_free
TRmemory_1:
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Ax_malloc
Ax_malloc:
		move.l     d3,-(a7)
		move.l     a2,-(a7)
		move.l     d0,d3
		jsr        RecycleFreeBlocks
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Ax_malloc_1
		move.l     d3,d0
		jsr        _malloc
		movea.l    a0,a2
Ax_malloc_1:
		movea.l    a2,a0
		movea.l    (a7)+,a2
		move.l     (a7)+,d3
		rts

_malloc:
		movem.l    d3/a2-a3,-(a7)
		move.l     d0,d3
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		move.w     566(a0),d0
		bne.s      _malloc_1
		move.w     568(a0),d1
		beq.s      _malloc_2
_malloc_1:
		move.l     d3,d0
		jsr        malloc
		movea.l    a0,a3
		bra.s      _malloc_3
_malloc_2:
		jsr        accgemdos
		move.l     d3,d0
		jsr        malloc
		movea.l    a0,a3
		jsr        oldgemdos
_malloc_3:
		move.l     a3,d0
		bne.s      _malloc_4
		suba.l     a0,a0
		bra.s      _malloc_5
_malloc_4:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$0400,d0
		bne.s      _malloc_6
		cmpa.l     watch_max,a3
		bcc.s      _malloc_6
		cmpa.l     watch_min,a3
		bcs.s      _malloc_6
		movea.l    982(a0),a1
		moveq.l    #5,d0
		suba.l     a0,a0
		jsr        (a1)
		movea.l    a3,a0
		movea.l    (a2),a1
		movea.l    722(a1),a1
		jsr        (a1)
_malloc_6:
		movea.l    a3,a0
_malloc_5:
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Ax_ifree
Ax_ifree:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a0,a3
		move.l     a2,d0
		beq        Ax_ifree_1
		cmp.l      #null_string,d0
		beq        Ax_ifree_1
		lea.l      ACSblk,a4
		movea.l    (a4),a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$0400,d0
		bne.s      Ax_ifree_2
		cmpa.l     watch_max,a2
		bcc.s      Ax_ifree_3
		cmpa.l     watch_min,a2
		bcs.s      Ax_ifree_3
		movea.l    982(a0),a1
		moveq.l    #5,d0
		suba.l     a0,a0
		jsr        (a1)
		movea.l    a2,a0
		movea.l    (a4),a1
		movea.l    722(a1),a1
		jsr        (a1)
Ax_ifree_3:
		/* cmpa.l     #$00001000,a2 */
		dc.w 0xb5fc,0x0000,0x1000
		bge.s      Ax_ifree_4
		suba.l     a0,a0
		moveq.l    #5,d0
		movea.l    (a4),a1
		movea.l    982(a1),a1
		jsr        (a1)
		bra.s      Ax_ifree_5
Ax_ifree_4:
		moveq.l    #1,d0
		move.l     a3,d1
		and.l      d1,d0
		beq.s      Ax_ifree_2
		suba.l     a0,a0
		movea.l    (a4),a1
		movea.l    982(a1),a1
		moveq.l    #6,d0
		jsr        (a1)
Ax_ifree_5:
		movea.l    a2,a0
		movea.l    (a4),a1
		movea.l    722(a1),a1
		jsr        (a1)
		bra.s      Ax_ifree_1
Ax_ifree_2:
		movea.l    (a4),a0
		move.w     566(a0),d0
		bne.s      Ax_ifree_6
		move.w     568(a0),d1
		beq.s      Ax_ifree_7
Ax_ifree_6:
		movea.l    a2,a0
		jsr        free
		bra.s      Ax_ifree_1
Ax_ifree_7:
		jsr        accgemdos
		movea.l    a2,a0
		jsr        free
		jsr        oldgemdos
Ax_ifree_1:
		movem.l    (a7)+,a2-a4
		rts

		.globl Ax_free
Ax_free:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a0,a4
		move.l     a2,d0
		beq        Ax_free_1
		cmp.l      #null_string,d0
		beq        Ax_free_1
		lea.l      ACSblk,a3
		movea.l    (a3),a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$0400,d0
		bne.s      Ax_free_2
		cmpa.l     watch_max,a2
		bcc.s      Ax_free_3
		cmpa.l     watch_min,a2
		bcs.s      Ax_free_3
		movea.l    982(a0),a1
		moveq.l    #5,d0
		suba.l     a0,a0
		jsr        (a1)
		movea.l    a2,a0
		movea.l    (a3),a1
		movea.l    722(a1),a1
		jsr        (a1)
Ax_free_3:
		/* cmpa.l     #$00001000,a2 */
		dc.w 0xb5fc,0x0000,0x1000
		bge.s      Ax_free_4
		suba.l     a0,a0
		moveq.l    #5,d0
		movea.l    (a3),a1
		movea.l    982(a1),a1
		jsr        (a1)
		bra.s      Ax_free_5
Ax_free_4:
		moveq.l    #1,d0
		move.l     a4,d1
		and.l      d1,d0
		beq.s      Ax_free_2
		suba.l     a0,a0
		movea.l    (a3),a1
		movea.l    982(a1),a1
		moveq.l    #6,d0
		jsr        (a1)
Ax_free_5:
		movea.l    a2,a0
		movea.l    (a3),a1
		movea.l    722(a1),a1
		jsr        (a1)
		bra.s      Ax_free_1
Ax_free_2:
		lea.l      act,a3
		movea.l    (a3),a0
		moveq.l    #32,d0
		cmp.l      4(a0),d0
		bgt.s      Ax_free_6
		move.l     #$00000088,d0
		bsr        Ax_malloc
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      Ax_free_7
		movea.l    a2,a0
		bsr        Ax_ifree
		bra.s      Ax_free_1
Ax_free_7:
		move.l     (a3),(a4)
		clr.l      4(a4)
		move.l     a4,(a3)
Ax_free_6:
		movea.l    (a3),a0
		move.l     4(a0),d0
		addq.l     #1,4(a0)
		lsl.l      #2,d0
		movea.l    (a3),a0
		move.l     a2,8(a0,d0.l)
Ax_free_1:
		movem.l    (a7)+,a2-a4
		rts

		.globl Ax_release
Ax_release:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      act,a2
		bra.s      Ax_release_1
Ax_release_2:
		movea.l    (a2),a0
		move.l     4(a0),d0
		lsl.l      #2,d0
		movea.l    8(a0,d0.l),a0
		bsr        Ax_ifree
Ax_release_1:
		movea.l    (a2),a0
		move.l     4(a0),d0
		subq.l     #1,4(a0)
		tst.l      d0
		bgt.s      Ax_release_2
		movea.l    (a2),a0
		clr.l      4(a0)
		movea.l    (a2),a0
		movea.l    (a0),a3
		move.l     a3,d0
		beq.s      Ax_release_3
		move.l     #$00000088,d0
		jsr        Ax_recycle
		move.l     a3,(a2)
		bra.s      Ax_release_1
Ax_release_3:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Ax_glmalloc
Ax_glmalloc:
		movem.l    d3-d4/a2-a3,-(a7)
		move.l     d0,d4
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		move.w     566(a0),d0
		bne.s      Ax_glmalloc_1
		move.w     568(a0),d1
		bne.s      Ax_glmalloc_1
		jsr        accgemdos
Ax_glmalloc_1:
		jsr        Mxmask
		move.w     d0,d3
		tst.w      d0
		beq.s      Ax_glmalloc_2
		moveq.l    #35,d1
		and.w      d0,d1
		move.l     d4,d0
		jsr        Mxalloc
		movea.l    a0,a3
		bra.s      Ax_glmalloc_3
Ax_glmalloc_2:
		move.l     d4,d0
		jsr        Malloc
		movea.l    a0,a3
Ax_glmalloc_3:
		movea.l    (a2),a0
		move.w     566(a0),d0
		bne.s      Ax_glmalloc_4
		move.w     568(a0),d1
		bne.s      Ax_glmalloc_4
		jsr        oldgemdos
Ax_glmalloc_4:
		movea.l    a3,a0
		movem.l    (a7)+,d3-d4/a2-a3
		rts

		.globl Ax_glfree
Ax_glfree:
		move.l     a2,-(a7)
		movea.l    a0,a2
		movea.l    ACSblk,a1
		move.w     566(a1),d0
		bne.s      Ax_glfree_1
		move.w     568(a1),d1
		beq.s      Ax_glfree_2
Ax_glfree_1:
		movea.l    a2,a0
		jsr        Mfree
		bra.s      Ax_glfree_3
Ax_glfree_2:
		jsr        accgemdos
		movea.l    a2,a0
		jsr        Mfree
		jsr        oldgemdos
Ax_glfree_3:
		movea.l    (a7)+,a2
		rts

handle_sigbus:
		move.l     d2,-(a7)
		jsr        Psigreturn
		moveq.l    #1,d0
		lea.l      check,a0
		jsr        longjmp
		move.l     (a7)+,d2
		rts

		.globl Ax_memCheck
Ax_memCheck:
		movem.l    d3-d7/a2,-(a7)
		subq.w     #4,a7
		move.l     d0,d6
		move.w     d1,d7
		movea.l    a0,a2
		lea.l      handle_sigbus(pc),a0
		moveq.l    #10,d0
		jsr        Psignal
		move.l     d0,d3
		moveq.l    #-32,d1
		cmp.l      d0,d1
		beq.s      Ax_memCheck_1
		lea.l      handle_sigbus(pc),a0
		moveq.l    #11,d0
		jsr        Psignal
		move.l     d0,(a7)
		moveq.l    #-32,d1
		cmp.l      d0,d1
		bne.s      Ax_memCheck_2
		movea.l    d3,a0
		moveq.l    #10,d0
		jsr        Psignal
Ax_memCheck_1:
		moveq.l    #1,d0
		bra.w      Ax_memCheck_3
Ax_memCheck_2:
		moveq.l    #1,d5
		lea.l      check,a0
		jsr        setjmp
		tst.w      d0
		beq.s      Ax_memCheck_4
		clr.w      d5
		bra.s      Ax_memCheck_5
Ax_memCheck_4:
		moveq.l    #-1,d1
		and.w      d6,d1
		addq.w     #2,d1
		beq.s      Ax_memCheck_6
		subq.w     #1,d1
		beq.s      Ax_memCheck_7
		bra.s      Ax_memCheck_8
Ax_memCheck_7:
		moveq.l    #65,d0
		bra.s      Ax_memCheck_9
Ax_memCheck_11:
		move.b     (a2),d0
		tst.w      d7
		beq.s      Ax_memCheck_10
		move.b     d0,(a2)
Ax_memCheck_10:
		addq.w     #1,a2
Ax_memCheck_9:
		tst.b      d0
		bne.s      Ax_memCheck_11
		bra.s      Ax_memCheck_5
Ax_memCheck_6:
		moveq.l    #65,d0
		bra.s      Ax_memCheck_12
Ax_memCheck_14:
		move.b     (a2),d0
		tst.w      d7
		beq.s      Ax_memCheck_13
		move.b     d0,(a2)
Ax_memCheck_13:
		addq.w     #1,a2
Ax_memCheck_12:
		tst.b      d0
		bne.s      Ax_memCheck_14
		move.b     -1(a2),d1
		bne.s      Ax_memCheck_14
		bra.s      Ax_memCheck_5
Ax_memCheck_8:
		moveq.l    #0,d4
		bra.s      Ax_memCheck_15
Ax_memCheck_17:
		move.b     (a2),d0
		tst.w      d7
		beq.s      Ax_memCheck_16
		move.b     d0,(a2)
Ax_memCheck_16:
		addq.l     #1,d4
		addq.w     #1,a2
Ax_memCheck_15:
		cmp.l      d4,d6
		bgt.s      Ax_memCheck_17
Ax_memCheck_5:
		movea.l    d3,a0
		moveq.l    #10,d0
		jsr        Psignal
		movea.l    (a7),a0
		moveq.l    #11,d0
		jsr        Psignal
		move.w     d5,d0
Ax_memCheck_3:
		addq.w     #4,a7
		movem.l    (a7)+,d3-d7/a2
		rts

sortFreeMemList:
		move.l     (a0),d0
		cmp.l      (a1),d0
		beq.s      sortFreeMemList_1
		move.w     2(a0),d0
		sub.w      2(a1),d0
		rts
sortFreeMemList_1:
		move.w     8(a1),d0
		sub.w      8(a0),d0
		rts

searchFreeMemList:
		move.w     2(a0),d0
		sub.w      2(a1),d0
		rts

RecycleFreeBlocks:
		move.l     a2,-(a7)
		subq.w     #4,a7
		move.l     d0,(a7)
		suba.l     a2,a2
		move.w     freeBlockListAnz,d1
		ble.s      RecycleFreeBlocks_1
		pea.l      searchFreeMemList(pc)
		move.w     d1,d0
		ext.l      d0
		movea.l    freeBlockList,a1
		lea.l      4(a7),a0
		moveq.l    #20,d1
		jsr        bsearch
		addq.w     #4,a7
		movea.l    a0,a2
RecycleFreeBlocks_1:
		move.l     a2,d0
		beq.s      RecycleFreeBlocks_2
		move.l     16(a2),d1
		beq.s      RecycleFreeBlocks_2
		movea.l    d1,a0
		move.l     (a0),16(a2)
		move.w     10(a2),d2
		ble.s      RecycleFreeBlocks_3
		subq.w     #1,10(a2)
RecycleFreeBlocks_3:
		move.w     14(a2),d0
		ble.s      RecycleFreeBlocks_4
		subq.w     #1,14(a2)
RecycleFreeBlocks_4:
		bra.s      RecycleFreeBlocks_5
RecycleFreeBlocks_2:
		suba.l     a0,a0
RecycleFreeBlocks_5:
		addq.w     #4,a7
		movea.l    (a7)+,a2
		rts

		.globl Ax_recycle
Ax_recycle:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #4,a7
		movea.l    a0,a2
		move.l     d0,(a7)
		clr.w      d3
		movea.l    a0,a3
		suba.l     a4,a4
		move.l     a2,d1
		beq.s      Ax_recycle_1
		cmp.l      #null_string,d1
		beq.s      Ax_recycle_1
		move.w     freeBlockListAnz,d2
		ble.s      Ax_recycle_2
		pea.l      searchFreeMemList(pc)
		move.w     d2,d0
		ext.l      d0
		movea.l    freeBlockList,a1
		lea.l      4(a7),a0
		moveq.l    #20,d1
		jsr        bsearch
		addq.w     #4,a7
		movea.l    a0,a4
Ax_recycle_2:
		move.l     a4,d0
		beq.s      Ax_recycle_3
		move.w     10(a4),d1
		cmp.w      8(a4),d1
		bge.s      Ax_recycle_4
		move.l     16(a4),(a3)
		move.l     a3,16(a4)
		moveq.l    #1,d3
		add.w      d3,10(a4)
		move.w     10(a4),d1
		cmp.w      12(a4),d1
		ble.s      Ax_recycle_4
		move.w     d1,12(a4)
Ax_recycle_4:
		addq.w     #1,14(a4)
Ax_recycle_3:
		tst.w      d3
		bne.s      Ax_recycle_1
		movea.l    a2,a0
		bsr        Ax_free
Ax_recycle_1:
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a4
		rts

createNewList:
		movem.l    d3-d4/a2-a4,-(a7)
		move.l     d0,d3
		move.w     d1,d4
		movea.l    a0,a4
		suba.l     a2,a2
		lea.l      freeBlockListAnz,a3
		moveq.l    #1,d1
		add.w      (a3),d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #2,d0
		bsr        _malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      createNewList_1
		clr.w      d0
		bra.s      createNewList_2
createNewList_1:
		move.w     (a3),d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #2,d0
		movea.l    -4(a3),a1
		movea.l    a2,a0
		jsr        memcpy
		movea.l    -4(a3),a0
		cmpa.l     #_freeBlockList,a0
		beq.s      createNewList_3
		bsr        Ax_free
createNewList_3:
		move.l     a2,-4(a3)
		addq.w     #1,(a3)
		move.w     (a3),d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #2,d0
		movea.l    -4(a3),a2
		lea.l      -20(a2,d0.l),a2
		move.l     d3,(a2)
		move.l     a4,4(a2)
		clr.l      16(a2)
		move.w     d4,8(a2)
		clr.w      10(a2)
		clr.w      12(a2)
		clr.w      14(a2)
		move.w     (a3),d0
		ble.s      createNewList_4
		lea.l      sortFreeMemList(pc),a1
		moveq.l    #20,d1
		ext.l      d0
		movea.l    -4(a3),a0
		jsr        qsort
createNewList_4:
		moveq.l    #1,d0
createNewList_2:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

deleteOldList:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a3
		suba.l     a2,a2
		bra.s      deleteOldList_1
deleteOldList_2:
		movea.l    16(a3),a4
		move.l     (a4),16(a3)
		movea.l    a4,a0
		bsr        Ax_free
deleteOldList_1:
		move.l     16(a3),d0
		bne.s      deleteOldList_2
		lea.l      freeBlockListAnz,a4
		lea.l      freeBlockList,a5
		cmpi.w     #$0001,(a4)
		ble.s      deleteOldList_3
		moveq.l    #-1,d1
		add.w      (a4),d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #2,d0
		bsr        _malloc
		movea.l    a0,a2
deleteOldList_3:
		move.l     a2,d0
		beq.s      deleteOldList_4
		clr.w      d4
		move.w     d4,d3
		bra.s      deleteOldList_5
deleteOldList_7:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #2,d0
		movea.l    (a5),a0
		adda.l     d0,a0
		cmpa.l     a0,a3
		beq.s      deleteOldList_6
		movea.l    a0,a1
		move.w     d4,d0
		addq.w     #1,d4
		ext.l      d0
		move.l     d0,d2
		lsl.l      #2,d2
		add.l      d0,d2
		lsl.l      #2,d2
		lea.l      0(a2,d2.l),a0
		moveq.l    #20,d0
		jsr        memcpy
deleteOldList_6:
		addq.w     #1,d3
deleteOldList_5:
		cmp.w      (a4),d3
		blt.s      deleteOldList_7
		movea.l    (a5),a0
		cmpa.l     #_freeBlockList,a0
		beq.s      deleteOldList_8
		bsr        Ax_free
deleteOldList_8:
		move.l     a2,(a5)
		subq.w     #1,(a4)
deleteOldList_4:
		move.w     (a4),d0
		ble.s      deleteOldList_9
		lea.l      sortFreeMemList(pc),a1
		moveq.l    #20,d1
		ext.l      d0
		movea.l    (a5),a0
		jsr        qsort
deleteOldList_9:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

		.globl Ax_setRecycleSize
Ax_setRecycleSize:
		movem.l    d3-d5/a2-a4,-(a7)
		subq.w     #4,a7
		move.l     d0,(a7)
		move.w     d1,d4
		movea.l    a0,a4
		suba.l     a2,a2
		clr.w      d3
		moveq.l    #8,d2
		cmp.l      d0,d2
		ble.s      Ax_setRecycleSize_1
		tst.l      d0
		beq.s      Ax_setRecycleSize_1
		move.w     d3,d0
		bra        Ax_setRecycleSize_2
Ax_setRecycleSize_1:
		lea.l      freeBlockStat,a3
		move.l     (a3),d0
		beq.s      Ax_setRecycleSize_3
		movea.l    d0,a0
		bsr        Ax_free
Ax_setRecycleSize_3:
		clr.l      (a3)
		move.w     -2(a3),d0
		ble.s      Ax_setRecycleSize_4
		pea.l      searchFreeMemList(pc)
		moveq.l    #20,d1
		ext.l      d0
		movea.l    -6(a3),a1
		lea.l      4(a7),a0
		jsr        bsearch
		addq.w     #4,a7
		movea.l    a0,a2
Ax_setRecycleSize_4:
		move.l     a2,d0
		bne.s      Ax_setRecycleSize_5
		tst.w      d4
		ble.s      Ax_setRecycleSize_6
		movea.l    a4,a0
		move.w     d4,d1
		move.l     (a7),d0
		bsr        createNewList
		move.w     d0,d3
		bra.s      Ax_setRecycleSize_6
Ax_setRecycleSize_5:
		move.w     d4,d5
		bra.s      Ax_setRecycleSize_7
Ax_setRecycleSize_9:
		movea.l    16(a2),a4
		move.l     (a4),16(a2)
		movea.l    a4,a0
		bsr        Ax_free
		addq.w     #1,d5
Ax_setRecycleSize_7:
		move.l     16(a2),d0
		beq.s      Ax_setRecycleSize_8
		cmp.w      8(a2),d5
		bge.s      Ax_setRecycleSize_8
		cmp.w      10(a2),d5
		blt.s      Ax_setRecycleSize_9
Ax_setRecycleSize_8:
		move.w     d4,8(a2)
		cmp.w      10(a2),d4
		bge.s      Ax_setRecycleSize_10
		move.w     d4,10(a2)
Ax_setRecycleSize_10:
		tst.w      d4
		bgt.s      Ax_setRecycleSize_11
		movea.l    a2,a0
		bsr        deleteOldList
Ax_setRecycleSize_11:
		moveq.l    #1,d3
Ax_setRecycleSize_6:
		move.w     d3,d0
Ax_setRecycleSize_2:
		addq.w     #4,a7
		movem.l    (a7)+,d3-d5/a2-a4
		rts

		.globl Ax_getRecycleStat
Ax_getRecycleStat:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a5
		suba.l     a2,a2
		movea.l    a2,a3
		lea.l      freeBlockStat,a4
		move.l     (a4),d0
		bne.s      Ax_getRecycleStat_1
		move.w     -2(a4),d0
		ext.l      d0
		lsl.l      #4,d0
		bsr        Ax_malloc
		move.l     a0,(a4)
		move.l     a0,d0
		bne.s      Ax_getRecycleStat_1
		suba.l     a0,a0
		bra.s      Ax_getRecycleStat_2
Ax_getRecycleStat_1:
		clr.w      d3
		bra.s      Ax_getRecycleStat_3
Ax_getRecycleStat_4:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #2,d0
		movea.l    -6(a4),a2
		adda.l     d0,a2
		lsl.l      #4,d1
		movea.l    (a4),a3
		adda.l     d1,a3
		move.l     (a2),(a3)
		move.l     4(a2),4(a3)
		move.w     8(a2),8(a3)
		move.w     10(a2),10(a3)
		move.w     12(a2),12(a3)
		move.w     14(a2),14(a3)
		addq.w     #1,d3
Ax_getRecycleStat_3:
		cmp.w      -2(a4),d3
		blt.s      Ax_getRecycleStat_4
		move.l     a5,d0
		beq.s      Ax_getRecycleStat_5
		move.w     -2(a4),(a5)
Ax_getRecycleStat_5:
		movea.l    (a4),a0
Ax_getRecycleStat_2:
		movem.l    (a7)+,d3/a2-a5
		rts

		.data

		.globl in_use
in_use:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
MemInit:
		dc.b $00
		dc.b $00
start:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
act:
		dc.l start
_freeBlockList:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $a2
		dc.l xd3bc8
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.l xd3bd0
		dc.w $01f4
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $26
		dc.l xd3bd9
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $22
		dc.l xd3bda
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $16
		dc.l xd3be2
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0e
		dc.l xd3be8
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $1c
		dc.l xd3bef
		dc.b $00
		dc.b $1e
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $14
		dc.l xd3bf7
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.l xd3bfc
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $26
		dc.l xd3c07
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $1a
		dc.l xd3c13
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $16
		dc.l xd3c1e
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $24
		dc.l xd3c23
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $12
		dc.l xd3c34
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.l xd3c42
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $18
		dc.l xd3c4b
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.l xd3c56
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $72
		dc.l xd3c5b
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $3e
		dc.l xd3c67
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $88
		dc.l xd3c72
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.l xd3c85
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $22
		dc.l xd3c90
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $12
		dc.l xd3c98
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.l xd3ca1
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $44
		dc.l xd3cac
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0c
		dc.l xd3cb5
		dc.b $00
		dc.b $28
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $1c
		dc.l xd3cc6
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $1c
		dc.l xd3ccc
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.l xd3cd2
		dc.b $00
		dc.b $50
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.l xd3ce2
		dc.b $00
		dc.b $28
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
freeBlockList:
		dc.l _freeBlockList
freeBlockListAnz:
		dc.b $00
		dc.b $1e
freeBlockStat:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd3bc8:
		dc.b 'Awindow',0
xd3bd0:
		dc.b 'AUSERBLK',0
xd3bd9:
		dc.b 'C'
xd3bda:
		dc.b 'ICONBLK',0
xd3be2:
		dc.b 'CICON',0
xd3be8:
		dc.b 'BITBLK',0
xd3bef:
		dc.b 'TEDINFO',0
xd3bf7:
		dc.b 'MFDB',0
xd3bfc:
		dc.b 'FontSelect',0
xd3c07:
		dc.b 'PrintSelect',0
xd3c13:
		dc.b 'MsgService',0
xd3c1e:
		dc.b 'A_dd',0
xd3c23:
		dc.b 'Interne DD-Daten',0
xd3c34:
		dc.b 'GS-Connection',0
xd3c42:
		dc.b 'GS-Suche',0
xd3c4b:
		dc.b 'GS-Antwort',0
xd3c56:
		dc.b 'OLGA',0
xd3c5b:
		dc.b 'Thermometer',0
xd3c67:
		dc.b 'FileSelect',0
xd3c72:
		dc.b 'Int. Speicherverw.',0
xd3c85:
		dc.b 'XAcc-Daten',0
xd3c90:
		dc.b 'UConfig',0
xd3c98:
		dc.b 'UCfgInfo',0
xd3ca1:
		dc.b 'Cfg-Gruppe',0
xd3cac:
		dc.b 'ULinList',0
xd3cb5:
		dc.b 'ULinList-Element',0
xd3cc6:
		dc.b 'Stack',0
xd3ccc:
		dc.b 'Queue',0
xd3cd2:
		dc.b 'Listen-Elemente',0
xd3ce2:
		dc.b 'Queue-Elemente',0
		.even

	.bss
watch_min: ds.l 1
watch_max: ds.l 1
check: ds.b 48
