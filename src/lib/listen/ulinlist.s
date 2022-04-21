
Alu_create:
		move.l     a2,-(a7)
		moveq.l    #68,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Alu_create_1
		lea.l      empty,a1
		moveq.l    #68,d0
		jsr        memcpy
		moveq.l    #20,d0
		jsr        Ax_malloc
		move.l     a0,(a2)
		move.l     a0,d0
		bne.s      Alu_create_2
		movea.l    a2,a0
		moveq.l    #68,d0
		jsr        Ax_recycle
Alu_create_1:
		suba.l     a0,a0
		bra.s      Alu_create_3
Alu_create_2:
		movea.l    (a2),a0
		jsr        InitLinListe
		movea.l    a2,a0
Alu_create_3:
		movea.l    (a7)+,a2
		rts

Alu_delete:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Alu_delete_1
		jsr        Alu_clearElem
		movea.l    (a2),a0
		jsr        Ax_free
		moveq.l    #68,d0
		movea.l    a2,a0
		jsr        Ax_recycle
Alu_delete_1:
		movea.l    (a7)+,a2
		rts

InitLinListe:
		clr.l      (a0)
		clr.l      4(a0)
		clr.l      8(a0)
		clr.l      12(a0)
		clr.l      16(a0)
		rts

Alu_clearElem:
		movem.l    a2-a5,-(a7)
		movea.l    a0,a2
		movea.l    (a0),a3
		movea.l    (a3),a4
		bra.s      Alu_clearElem_1
Alu_clearElem_3:
		movea.l    (a4),a5
		move.l     4(a2),d0
		beq.s      Alu_clearElem_2
		movea.l    8(a4),a0
		movea.l    d0,a1
		jsr        (a1)
Alu_clearElem_2:
		moveq.l    #12,d0
		movea.l    a4,a0
		jsr        Ax_recycle
		movea.l    a5,a4
Alu_clearElem_1:
		move.l     a4,d0
		bne.s      Alu_clearElem_3
		movea.l    a3,a0
		bsr.w      InitLinListe
		movem.l    (a7)+,a2-a5
		rts

Alu_appendElem:
		movem.l    a2-a4,-(a7)
		movea.l    a1,a4
		suba.l     a2,a2
		movea.l    (a0),a3
		moveq.l    #12,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Alu_appendElem_1
		clr.w      d0
		bra.s      Alu_appendElem_2
Alu_appendElem_1:
		move.l     a4,8(a2)
		moveq.l    #0,d0
		move.l     d0,4(a2)
		move.l     d0,(a2)
		move.l     (a3),d1
		bne.s      Alu_appendElem_3
		move.l     a2,(a3)
		move.l     a2,12(a3)
		clr.l      16(a3)
Alu_appendElem_3:
		move.l     4(a3),d0
		beq.s      Alu_appendElem_4
		movea.l    d0,a0
		move.l     a2,(a0)
Alu_appendElem_4:
		move.l     4(a3),4(a2)
		move.l     a2,4(a3)
		addq.l     #1,8(a3)
		moveq.l    #1,d0
Alu_appendElem_2:
		movem.l    (a7)+,a2-a4
		rts

Alu_insertElem:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a1,a5
		move.w     d0,d3
		suba.l     a2,a2
		movea.l    a2,a3
		movea.l    (a0),a4
		moveq.l    #12,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Alu_insertElem_1
		clr.w      d0
		bra.s      Alu_insertElem_2
Alu_insertElem_1:
		moveq.l    #0,d0
		movea.l    (a4),a3
		bra.s      Alu_insertElem_3
Alu_insertElem_5:
		movea.l    (a3),a3
		addq.l     #1,d0
Alu_insertElem_3:
		moveq.l    #-1,d1
		add.w      d3,d1
		ext.l      d1
		cmp.l      d1,d0
		bge.s      Alu_insertElem_4
		move.l     a3,d2
		bne.s      Alu_insertElem_5
Alu_insertElem_4:
		moveq.l    #-1,d1
		add.w      d3,d1
		ext.l      d1
		cmp.l      d1,d0
		bne.s      Alu_insertElem_6
		move.l     a3,d0
		bne.s      Alu_insertElem_7
Alu_insertElem_6:
		movea.l    4(a4),a3
Alu_insertElem_7:
		move.l     a5,8(a2)
		clr.l      (a2)
		move.l     a3,d0
		beq.s      Alu_insertElem_8
		move.l     (a3),(a2)
		move.l     a2,(a3)
		move.l     d0,4(a2)
		move.l     (a2),d1
		beq.s      Alu_insertElem_9
		movea.l    d1,a0
		move.l     a2,4(a0)
		bra.s      Alu_insertElem_10
Alu_insertElem_9:
		move.l     a2,4(a4)
		bra.s      Alu_insertElem_10
Alu_insertElem_8:
		move.l     a2,4(a4)
		move.l     a2,(a4)
		move.l     a2,12(a4)
		clr.l      16(a4)
Alu_insertElem_10:
		addq.l     #1,8(a4)
		moveq.l    #1,d0
Alu_insertElem_2:
		movem.l    (a7)+,d3/a2-a5
		rts

Alu_deleteElem:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		suba.l     a1,a1
		movea.l    a1,a2
		movea.l    (a0),a0
		moveq.l    #0,d1
		movea.l    (a0),a2
		bra.s      Alu_deleteElem_1
Alu_deleteElem_3:
		movea.l    a2,a1
		movea.l    (a2),a2
		addq.l     #1,d1
Alu_deleteElem_1:
		move.w     d0,d2
		ext.l      d2
		cmp.l      d2,d1
		bge.s      Alu_deleteElem_2
		move.l     a2,d2
		bne.s      Alu_deleteElem_3
Alu_deleteElem_2:
		move.w     d0,d2
		ext.l      d2
		cmp.l      d2,d1
		beq.s      Alu_deleteElem_4
		suba.l     a0,a0
		bra.s      Alu_deleteElem_5
Alu_deleteElem_4:
		move.l     a1,d0
		beq.s      Alu_deleteElem_6
		move.l     (a2),(a1)
		bra.s      Alu_deleteElem_7
Alu_deleteElem_6:
		move.l     (a2),(a0)
Alu_deleteElem_7:
		move.l     (a2),d0
		beq.s      Alu_deleteElem_8
		movea.l    d0,a3
		move.l     a1,4(a3)
		bra.s      Alu_deleteElem_9
Alu_deleteElem_8:
		move.l     a1,4(a0)
Alu_deleteElem_9:
		subq.l     #1,8(a0)
		cmpa.l     12(a0),a2
		bne.s      Alu_deleteElem_10
		move.l     (a0),12(a0)
		clr.l      16(a0)
Alu_deleteElem_10:
		movea.l    8(a2),a3
		moveq.l    #12,d0
		movea.l    a2,a0
		jsr        Ax_recycle
		movea.l    a3,a0
Alu_deleteElem_5:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

Alu_ptrCmp:
		cmpa.l     a0,a1
		bne.s      Alu_ptrCmp_1
		moveq.l    #1,d0
		rts
Alu_ptrCmp_1:
		clr.w      d0
		rts

Alu_deleteForElem:
		movem.l    d3/a2-a5,-(a7)
		subq.w     #8,a7
		move.l     a0,4(a7)
		move.l     a1,(a7)
		movea.l    32(a7),a4
		moveq.l    #0,d3
		suba.l     a2,a2
		movea.l    a2,a3
		movea.l    (a0),a5
		movea.l    (a5),a2
		bra.s      Alu_deleteForElem_1
Alu_deleteForElem_10:
		move.l     a4,d0
		beq.s      Alu_deleteForElem_2
		movea.l    8(a2),a1
		movea.l    (a7),a0
		jsr        (a4)
		tst.w      d0
		beq.s      Alu_deleteForElem_3
Alu_deleteForElem_2:
		move.l     a3,d0
		beq.s      Alu_deleteForElem_4
		move.l     (a2),(a3)
		bra.s      Alu_deleteForElem_5
Alu_deleteForElem_4:
		move.l     (a2),(a5)
Alu_deleteForElem_5:
		move.l     (a2),d0
		beq.s      Alu_deleteForElem_6
		movea.l    d0,a0
		move.l     a3,4(a0)
		bra.s      Alu_deleteForElem_7
Alu_deleteForElem_6:
		move.l     a3,4(a5)
Alu_deleteForElem_7:
		subq.l     #1,8(a5)
		cmpa.l     12(a5),a2
		bne.s      Alu_deleteForElem_8
		move.l     (a5),12(a5)
		clr.l      16(a5)
Alu_deleteForElem_8:
		movea.l    8(a2),a0
		movea.l    4(a7),a1
		movea.l    4(a1),a1
		jsr        (a1)
		moveq.l    #12,d0
		movea.l    a2,a0
		jsr        Ax_recycle
		addq.l     #1,d3
		bra.s      Alu_deleteForElem_9
Alu_deleteForElem_3:
		movea.l    a2,a3
Alu_deleteForElem_9:
		movea.l    (a2),a2
Alu_deleteForElem_1:
		move.l     a2,d0
		bne.s      Alu_deleteForElem_10
		move.l     d3,d0
		addq.w     #8,a7
		movem.l    (a7)+,d3/a2-a5
		rts

Alu_searchElem:
		suba.l     a1,a1
		movea.l    (a0),a0
		moveq.l    #0,d1
		movea.l    (a0),a1
		bra.s      Alu_searchElem_1
Alu_searchElem_3:
		movea.l    (a1),a1
		addq.l     #1,d1
Alu_searchElem_1:
		cmp.l      d1,d0
		ble.s      Alu_searchElem_2
		move.l     a1,d2
		bne.s      Alu_searchElem_3
Alu_searchElem_2:
		cmp.l      d1,d0
		bne.s      Alu_searchElem_4
		move.l     a1,d1
		beq.s      Alu_searchElem_4
		move.l     d1,12(a0)
		move.l     d0,16(a0)
		movea.l    8(a1),a0
		rts
Alu_searchElem_4:
		suba.l     a0,a0
		rts

Alu_searchForElem:
		movem.l    d3-d4/a2-a4,-(a7)
		subq.w     #4,a7
		move.l     a1,(a7)
		movea.l    28(a7),a4
		clr.w      d3
		moveq.l    #0,d4
		suba.l     a2,a2
		movea.l    (a0),a3
		movea.l    (a3),a2
		bra.s      Alu_searchForElem_1
Alu_searchForElem_5:
		move.l     a4,d0
		beq.s      Alu_searchForElem_2
		movea.l    8(a2),a1
		movea.l    (a7),a0
		jsr        (a4)
		tst.w      d0
		beq.s      Alu_searchForElem_3
Alu_searchForElem_2:
		moveq.l    #1,d3
		bra.s      Alu_searchForElem_4
Alu_searchForElem_3:
		movea.l    (a2),a2
		addq.l     #1,d4
Alu_searchForElem_1:
		tst.w      d3
		bne.s      Alu_searchForElem_4
		move.l     a2,d0
		bne.s      Alu_searchForElem_5
Alu_searchForElem_4:
		tst.w      d3
		beq.s      Alu_searchForElem_6
		move.l     a2,d0
		beq.s      Alu_searchForElem_6
		move.l     d0,12(a3)
		move.l     d4,16(a3)
		movea.l    8(a2),a0
		bra.s      Alu_searchForElem_7
Alu_searchForElem_6:
		suba.l     a0,a0
Alu_searchForElem_7:
		addq.w     #4,a7
		movem.l    (a7)+,d3-d4/a2-a4
		rts

Alu_firstElem:
		movea.l    (a0),a0
		move.l     (a0),12(a0)
		clr.l      16(a0)
		move.l     (a0),d0
		bne.s      Alu_firstElem_1
		suba.l     a0,a0
		rts
Alu_firstElem_1:
		movea.l    (a0),a1
		movea.l    8(a1),a0
		rts

Alu_lastElem:
		movea.l    (a0),a0
		move.l     4(a0),12(a0)
		moveq.l    #-1,d0
		add.l      8(a0),d0
		move.l     d0,16(a0)
		move.l     4(a0),d1
		bne.s      Alu_lastElem_1
		suba.l     a0,a0
		rts
Alu_lastElem_1:
		movea.l    4(a0),a1
		movea.l    8(a1),a0
		rts

Alu_aktNrElem:
		movea.l    (a0),a0
		move.l     12(a0),d0
		bne.s      Alu_aktNrElem_1
		moveq.l    #-1,d0
		rts
Alu_aktNrElem_1:
		move.l     16(a0),d0
		rts

Alu_aktElem:
		movea.l    (a0),a0
		move.l     12(a0),d0
		bne.s      Alu_aktElem_1
		suba.l     a0,a0
		rts
Alu_aktElem_1:
		movea.l    12(a0),a1
		movea.l    8(a1),a0
		rts

Alu_skipElem:
		movea.l    (a0),a0
		tst.w      d0
		beq.s      Alu_skipElem_1
		moveq.l    #0,d2
		bra.s      Alu_skipElem_2
Alu_skipElem_4:
		movea.l    12(a0),a1
		move.l     (a1),12(a0)
		addq.l     #1,d2
Alu_skipElem_2:
		cmp.l      d2,d1
		ble.s      Alu_skipElem_3
		move.l     12(a0),d0
		bne.s      Alu_skipElem_4
		bra.s      Alu_skipElem_3
Alu_skipElem_1:
		moveq.l    #0,d2
		bra.s      Alu_skipElem_5
Alu_skipElem_6:
		movea.l    12(a0),a1
		move.l     4(a1),12(a0)
		addq.l     #1,d2
Alu_skipElem_5:
		cmp.l      d2,d1
		ble.s      Alu_skipElem_3
		move.l     12(a0),d0
		bne.s      Alu_skipElem_6
Alu_skipElem_3:
		move.l     12(a0),d0
		bne.s      Alu_skipElem_7
		suba.l     a0,a0
		rts
Alu_skipElem_7:
		movea.l    12(a0),a1
		movea.l    8(a1),a0
		rts

Alu_countElem:
		movea.l    (a0),a1
		move.l     8(a1),d0
		rts

Alu_countForElem:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a1,a4
		movea.l    20(a7),a3
		moveq.l    #0,d3
		suba.l     a2,a2
		movea.l    (a0),a0
		movea.l    (a0),a2
		bra.s      Alu_countForElem_1
Alu_countForElem_4:
		move.l     a3,d0
		beq.s      Alu_countForElem_2
		movea.l    8(a2),a1
		movea.l    a4,a0
		jsr        (a3)
		tst.w      d0
		beq.s      Alu_countForElem_3
Alu_countForElem_2:
		addq.l     #1,d3
Alu_countForElem_3:
		movea.l    (a2),a2
Alu_countForElem_1:
		move.l     a2,d0
		bne.s      Alu_countForElem_4
		move.l     d3,d0
		movem.l    (a7)+,d3/a2-a4
		rts

Alu_doForElem:
		movem.l    a2-a5,-(a7)
		movea.l    a1,a4
		movea.l    20(a7),a3
		suba.l     a2,a2
		movea.l    (a0),a0
		movea.l    (a0),a2
		bra.s      Alu_doForElem_1
Alu_doForElem_4:
		move.l     a3,d0
		beq.s      Alu_doForElem_2
		movea.l    8(a2),a1
		movea.l    a4,a0
		jsr        (a3)
		tst.w      d0
		beq.s      Alu_doForElem_3
Alu_doForElem_2:
		movea.l    8(a2),a1
		movea.l    a4,a0
		movea.l    24(a7),a5
		jsr        (a5)
Alu_doForElem_3:
		movea.l    (a2),a2
Alu_doForElem_1:
		move.l     a2,d0
		bne.s      Alu_doForElem_4
		movem.l    (a7)+,a2-a5
		rts

x62eaa:
		move.l     a2,-(a7)
		moveq.l    #28,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      x62eaa_1
		suba.l     a0,a0
		bra.s      x62eaa_2
x62eaa_1:
		moveq.l    #28,d0
		lea.l      xd632c,a1
		movea.l    a2,a0
		jsr        memcpy
		clr.l      (a2)
		movea.l    a2,a0
x62eaa_2:
		movea.l    (a7)+,a2
		rts

x62ed6:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      x62ed6_1
		movea.l    24(a2),a1
		jsr        (a1)
		moveq.l    #28,d0
		movea.l    a2,a0
		jsr        Ax_recycle
x62ed6_1:
		movea.l    (a7)+,a2
		rts

x62ef2:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		bra.s      x62ef2_1
x62ef2_2:
		movea.l    a2,a0
		movea.l    12(a2),a1
		jsr        (a1)
		movea.l    a0,a3
		move.l     4(a2),d0
		beq.s      x62ef2_1
		movea.l    d0,a1
		jsr        (a1)
x62ef2_1:
		movea.l    a2,a0
		movea.l    16(a2),a1
		jsr        (a1)
		tst.w      d0
		beq.s      x62ef2_2
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

x62f20:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		suba.l     a2,a2
		moveq.l    #8,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      x62f20_1
		clr.w      d0
		bra.s      x62f20_2
x62f20_1:
		move.l     a3,4(a2)
		move.l     (a4),(a2)
		move.l     a2,(a4)
		moveq.l    #1,d0
x62f20_2:
		movem.l    (a7)+,a2-a4
		rts

x62f4c:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		suba.l     a2,a2
		movea.l    a2,a3
		move.l     (a0),d0
		beq.s      x62f4c_1
		movea.l    d0,a2
		movea.l    d0,a1
		move.l     (a1),(a0)
		movea.l    4(a2),a3
		moveq.l    #8,d0
		movea.l    a2,a0
		jsr        Ax_recycle
x62f4c_1:
		movea.l    a3,a0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

x62f74:
		move.l     (a0),d0
		beq.s      x62f74_1
		moveq.l    #1,d0
		rts
x62f74_1:
		clr.w      d0
		rts

x62f80:
		moveq.l    #0,d0
		movea.l    (a0),a1
		bra.s      x62f80_1
x62f80_2:
		addq.l     #1,d0
		movea.l    (a1),a1
x62f80_1:
		move.l     a1,d1
		bne.s      x62f80_2
		rts

x62f90:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		moveq.l    #28,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      x62f90_1
		lea.l      xd6348,a1
		moveq.l    #28,d0
		jsr        memcpy
		moveq.l    #8,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      x62f90_2
		movea.l    a2,a0
		moveq.l    #28,d0
		jsr        Ax_recycle
x62f90_1:
		suba.l     a0,a0
		bra.s      x62f90_3
x62f90_2:
		movea.l    a3,a0
		jsr        x62ffa
		move.l     a3,(a2)
		movea.l    a2,a0
x62f90_3:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

x62fde:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      x62fde_1
		movea.l    24(a2),a1
		jsr        (a1)
		moveq.l    #28,d0
		movea.l    a2,a0
		jsr        Ax_recycle
x62fde_1:
		movea.l    (a7)+,a2
		rts

x62ffa:
		clr.l      (a0)
		clr.l      4(a0)
		rts

x63002:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		bra.s      x63002_1
x63002_2:
		movea.l    a2,a0
		movea.l    12(a2),a1
		jsr        (a1)
		movea.l    a0,a3
		move.l     4(a2),d0
		beq.s      x63002_1
		movea.l    d0,a1
		jsr        (a1)
x63002_1:
		movea.l    a2,a0
		movea.l    16(a2),a1
		jsr        (a1)
		tst.w      d0
		beq.s      x63002_2
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

x63030:
		movem.l    a2-a4,-(a7)
		movea.l    a1,a4
		movea.l    (a0),a2
		suba.l     a3,a3
		moveq.l    #8,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      x63030_1
		clr.w      d0
		bra.s      x63030_2
x63030_1:
		move.l     a4,4(a3)
		move.l     (a2),(a3)
		move.l     a3,(a2)
		move.l     4(a2),d0
		bne.s      x63030_3
		move.l     a3,4(a2)
x63030_3:
		moveq.l    #1,d0
x63030_2:
		movem.l    (a7)+,a2-a4
		rts

x63066:
		movem.l    a2-a5,-(a7)
		movea.l    a0,a2
		movea.l    (a0),a3
		suba.l     a4,a4
		movea.l    a4,a5
		movea.l    16(a2),a1
		jsr        (a1)
		tst.w      d0
		bne.s      x63066_1
		movea.l    (a3),a4
		movea.l    (a3),a0
		move.l     (a0),(a3)
		cmpa.l     4(a3),a4
		bne.s      x63066_2
		move.l     (a3),d0
		bne.s      x63066_3
		clr.l      4(a3)
		bra.s      x63066_2
x63066_3:
		move.l     (a3),4(a3)
		bra.s      x63066_4
x63066_5:
		movea.l    4(a3),a0
		move.l     (a0),4(a3)
x63066_4:
		movea.l    4(a3),a0
		move.l     (a0),d0
		bne.s      x63066_5
x63066_2:
		movea.l    4(a4),a5
		moveq.l    #8,d0
		movea.l    a4,a0
		jsr        Ax_recycle
x63066_1:
		movea.l    a5,a0
		movem.l    (a7)+,a2-a5
		rts

x630be:
		movea.l    (a0),a1
		move.l     (a1),d0
		beq.s      x630be_1
		moveq.l    #1,d0
		rts
x630be_1:
		clr.w      d0
		rts

x630cc:
		move.l     a2,-(a7)
		moveq.l    #0,d0
		movea.l    (a0),a2
		movea.l    (a2),a1
		bra.s      x630cc_1
x630cc_2:
		addq.l     #1,d0
		movea.l    (a1),a1
x630cc_1:
		move.l     a1,d1
		bne.s      x630cc_2
		movea.l    (a7)+,a2
		rts

		.data

empty:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Ax_free
		dc.l Alu_clearElem
		dc.l Alu_appendElem
		dc.l Alu_insertElem
		dc.l Alu_deleteElem
		dc.l Alu_deleteForElem
		dc.l Alu_searchElem
		dc.l Alu_searchForElem
		dc.l Alu_firstElem
		dc.l Alu_lastElem
		dc.l Alu_aktElem
		dc.l Alu_aktNrElem
		dc.l Alu_skipElem
		dc.l Alu_countElem
		dc.l Alu_countForElem
		dc.l Alu_doForElem

