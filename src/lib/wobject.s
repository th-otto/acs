		.text

		.globl Awi_diaend
Awi_diaend:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      -10(a7),a7
		lea.l      open_dialog,a2
		move.l     (a2),d0
		beq        Awi_diaend_1
		pea.l      (a7)
		pea.l      6(a7)
		lea.l      14(a7),a1
		movea.l    d0,a0
		jsr        Awi_find_edit
		addq.w     #8,a7
		tst.w      d0
		beq.w      Awi_diaend_1
		moveq.l    #2,d0
		movea.l    (a2),a0
		and.w      86(a0),d0
		beq.s      Awi_diaend_1
		move.w     (a7),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    6(a7),a1
		movea.l    12(a1,d1.l),a3
		andi.w     #$FFFD,86(a0)
		move.l     (a2),4(a2)
		movea.l    (a2),a0
		move.w     28(a0),d0
		move.w     d0,12(a2)
		move.w     d0,d1
		and.w      #$1000,d1
		beq.s      Awi_diaend_2
		movea.l    (a2),a0
		move.l     24(a0),8(a2)
		bra.s      Awi_diaend_3
Awi_diaend_2:
		movea.l    (a2),a0
		move.l     20(a0),8(a2)
Awi_diaend_3:
		moveq.l    #-1,d0
		movea.l    (a2),a0
		move.w     d0,30(a0)
		movea.l    (a2),a0
		move.w     d0,28(a0)
		movea.l    (a2),a0
		clr.w      82(a0)
		clr.l      (a2)
		suba.l     a1,a1
		moveq.l    #6,d0
		move.w     (a7),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    6(a7),a0
		adda.l     d1,a0
		movea.l    8(a3),a2
		jsr        (a2)
Awi_diaend_1:
		lea.l      10(a7),a7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Awi_diastart
Awi_diastart:
		movem.l    a2-a5,-(a7)
		lea.l      -26(a7),a7
		move.w     #$FFFF,(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      18(a7)
		moveq.l    #10,d1
		clr.w      d0
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     6(a7),d0
		ble        Awi_diastart_1
		jsr        Awi_wid
		movea.l    a0,a3
		move.l     a3,d0
		beq        Awi_diastart_1
		moveq.l    #2,d0
		and.w      86(a3),d0
		bne        Awi_diastart_1
		lea.l      last_edit,a4
		move.w     28(a3),d0
		bpl.s      Awi_diastart_2
		cmpa.l     (a4),a3
		bne.s      Awi_diastart_2
		movea.l    20(a3),a0
		cmpa.l     4(a4),a0
		bne.s      Awi_diastart_3
		moveq.l    #8,d1
		move.w     8(a4),d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		and.w      8(a0,d2.l),d1
		beq.s      Awi_diastart_2
		bra.s      Awi_diastart_4
Awi_diastart_3:
		movea.l    24(a3),a0
		cmpa.l     4(a4),a0
		bne.s      Awi_diastart_2
		moveq.l    #8,d0
		move.w     8(a4),d2
		and.w      #$0FFF,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a0,d1.l),d0
		beq.s      Awi_diastart_2
Awi_diastart_4:
		move.w     8(a4),(a7)
Awi_diastart_2:
		move.w     (a7),d0
		ble.s      Awi_diastart_5
		move.w     8(a4),d1
		and.w      #$1000,d1
		beq.s      Awi_diastart_6
		move.w     8(a4),d2
		and.w      #$0FFF,d2
		move.w     d2,(a7)
		move.l     24(a3),12(a7)
		bra.s      Awi_diastart_7
Awi_diastart_6:
		move.w     8(a4),(a7)
		move.l     20(a3),12(a7)
		bra.s      Awi_diastart_7
Awi_diastart_5:
		pea.l      (a7)
		pea.l      12(a7)
		lea.l      20(a7),a1
		movea.l    a3,a0
		jsr        Awi_find_edit
		addq.w     #8,a7
		tst.w      d0
		beq        Awi_diastart_1
Awi_diastart_7:
		move.w     (a7),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a7),a0
		movea.l    12(a0,d0.l),a5
		ori.w      #$0002,86(a3)
		move.l     a3,-4(a4)
		movea.l    12(a7),a0
		cmpa.l     20(a3),a0
		bne.s      Awi_diastart_8
		move.w     (a7),28(a3)
		bra.s      Awi_diastart_9
Awi_diastart_8:
		move.w     (a7),d0
		or.w       #$1000,d0
		move.w     d0,28(a3)
Awi_diastart_9:
		lea.l      16(a7),a4
		move.l     a3,(a4)
		movea.l    12(a7),a0
		cmpa.l     20(a3),a0
		bne.s      Awi_diastart_10
		move.w     (a7),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a3),a1
		adda.l     d0,a1
		move.l     a1,4(a4)
		move.w     (a7),8(a4)
		bra.s      Awi_diastart_11
Awi_diastart_10:
		move.w     (a7),d1
		and.w      #$0FFF,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    24(a3),a0
		adda.l     d0,a0
		move.l     a0,4(a4)
		move.w     (a7),d2
		or.w       #$1000,d2
		move.w     d2,8(a4)
Awi_diastart_11:
		movea.l    a4,a1
		moveq.l    #9,d0
		move.w     (a7),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    12(a7),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		jsr        (a2)
		move.w     30(a3),d0
		bpl.s      Awi_diastart_12
		clr.w      2(a7)
		move.w     #$FFFF,4(a7)
		lea.l      2(a7),a1
		move.w     (a7),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    12(a7),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		move.w     #$02C2,d0
		jsr        (a2)
Awi_diastart_12:
		suba.l     a1,a1
		moveq.l    #6,d0
		move.w     (a7),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    12(a7),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		jsr        (a2)
Awi_diastart_1:
		lea.l      26(a7),a7
		movem.l    (a7)+,a2-a5
		rts

Awi_self0:
		movem.l    d3-d5/a2-a5,-(a7)
		movea.l    a0,a4
		movea.l    a1,a2
		move.w     d0,d5
		moveq.l    #-1,d3
Awi_self0_8:
		tst.w      d3
		bpl.s      Awi_self0_1
		clr.w      d4
		bra.s      Awi_self0_2
Awi_self0_1:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     2(a2,d0.l),d4
Awi_self0_2:
		tst.w      d4
		bpl.s      Awi_self0_3
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d4
		bra.s      Awi_self0_4
Awi_self0_5:
		move.w     d4,d3
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d4
Awi_self0_4:
		tst.w      d4
		bmi.s      Awi_self0_3
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		cmp.w      4(a2,d0.l),d3
		beq.s      Awi_self0_5
Awi_self0_3:
		tst.w      d4
		bmi.s      Awi_self0_6
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		cmpi.b     #$18,7(a2,d0.l)
		bne.s      Awi_self0_7
		movea.l    12(a2,d0.l),a3
		move.l     a3,d2
		beq.s      Awi_self0_7
		move.l     8(a3),d2
		beq.s      Awi_self0_7
		lea.l      0(a2,d0.l),a0
		move.l     a0,4(a4)
		move.w     d4,d2
		or.w       d5,d2
		move.w     d2,8(a4)
		movea.l    a4,a1
		movea.l    4(a4),a0
		movea.l    8(a3),a5
		moveq.l    #9,d0
		jsr        (a5)
Awi_self0_7:
		move.w     d4,d3
		bra        Awi_self0_8
Awi_self0_6:
		movem.l    (a7)+,d3-d5/a2-a5
		rts

		.globl Awi_uoself
Awi_uoself:
		move.l     a2,-(a7)
		lea.l      -10(a7),a7
		movea.l    a0,a2
		move.l     a0,(a7)
		move.l     24(a2),d0
		beq.s      Awi_uoself_1
		movea.l    d0,a1
		lea.l      (a7),a0
		move.w     #$1000,d0
		bsr        Awi_self0
Awi_uoself_1:
		move.l     20(a2),d0
		beq.s      Awi_uoself_2
		movea.l    d0,a1
		lea.l      (a7),a0
		clr.w      d0
		bsr        Awi_self0
Awi_uoself_2:
		lea.l      10(a7),a7
		movea.l    (a7)+,a2
		rts

		.globl Awi_obchange
Awi_obchange:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -22(a7),a7
		movea.l    a0,a5
		move.w     d0,d3
		move.w     d1,d5
		move.w     86(a5),d2
		and.w      #$2800,d2
		beq.s      Awi_obchange_1
		clr.w      d0
		jsr        Awi_obredraw
		bra        Awi_obchange_2
Awi_obchange_1:
		move.w     d3,d0
		and.w      #$1000,d0
		beq.s      Awi_obchange_3
		movea.l    24(a5),a2
		move.l     a2,d1
		beq        Awi_obchange_2
		move.w     d3,d4
		and.w      #$0FFF,d4
		bra.s      Awi_obchange_4
Awi_obchange_3:
		movea.l    20(a5),a2
		move.l     a2,d0
		beq        Awi_obchange_2
		move.w     d3,d4
Awi_obchange_4:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      0(a2,d0.l),a3
		cmp.w      #$FFFF,d5
		bne.s      Awi_obchange_5
		move.w     10(a3),d5
Awi_obchange_5:
		cmpi.b     #$21,7(a3)
		bne.s      Awi_obchange_6
		move.w     d5,10(a3)
		move.w     d3,d0
		movea.l    a5,a0
		jsr        Awi_obredraw
		bra        Awi_obchange_2
Awi_obchange_6:
		move.w     52(a5),14(a7)
		move.w     56(a5),18(a7)
		move.w     d3,d0
		and.w      #$1000,d0
		beq.s      Awi_obchange_7
		move.w     54(a5),d1
		add.w      18(a2),d1
		move.w     d1,16(a7)
		move.w     22(a2),20(a7)
		bra.s      Awi_obchange_8
Awi_obchange_7:
		move.w     54(a5),16(a7)
		move.w     58(a5),20(a7)
Awi_obchange_8:
		move.w     10(a3),d0
		eor.w      d5,d0
		and.w      #$0008,d0
		beq.s      Awi_obchange_9
		move.w     d5,10(a3)
Awi_obchange_9:
		move.w     10(a3),d6
		move.w     32(a5),4(a7)
		move.w     4(a7),d0
		bmi        Awi_obchange_10
		lea.l      52(a5),a5
		move.w     16(a2),2(a7)
		move.w     18(a2),(a7)
		move.w     (a5),d1
		add.w      d1,16(a2)
		move.w     2(a5),d1
		add.w      d1,18(a2)
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		lea.l      6(a7),a4
		pea.l      6(a4)
		pea.l      4(a4)
		pea.l      2(a4)
		pea.l      (a4)
		moveq.l    #11,d1
		move.w     20(a7),d0
		jsr        wind_get
		lea.l      16(a7),a7
		bra        Awi_obchange_11
Awi_obchange_16:
		lea.l      14(a7),a1
		movea.l    a4,a0
		jsr        intersect
		move.w     4(a4),d0
		beq        Awi_obchange_12
		move.w     d3,d1
		and.w      #$1000,d1
		beq.s      Awi_obchange_13
		move.w     2(a4),d7
		add.w      6(a4),d7
		cmp.w      2(a5),d7
		ble.s      Awi_obchange_14
		lea.l      xd3d7c,a0
		movea.l    ACSblk,a1
		movea.l    982(a1),a1
		moveq.l    #1,d0
		jsr        (a1)
		move.w     2(a5),d0
		sub.w      2(a4),d0
		move.w     d0,6(a4)
		bra.s      Awi_obchange_14
Awi_obchange_13:
		move.w     2(a4),d7
		sub.w      2(a5),d7
		tst.w      d7
		bpl.s      Awi_obchange_14
		lea.l      xd3d7c,a0
		moveq.l    #1,d0
		movea.l    ACSblk,a1
		movea.l    982(a1),a1
		jsr        (a1)
		sub.w      d7,2(a4)
		add.w      d7,6(a4)
Awi_obchange_14:
		move.w     6(a4),d0
		ble.s      Awi_obchange_12
		cmp.w      d5,d6
		bne.s      Awi_obchange_15
		move.w     d0,-(a7)
		move.w     4(a4),-(a7)
		move.w     2(a4),-(a7)
		movea.l    _globl,a1
		move.w     (a4),d2
		moveq.l    #8,d1
		movea.l    a2,a0
		move.w     d4,d0
		jsr        mt_objc_draw
		addq.w     #6,a7
		bra.s      Awi_obchange_12
Awi_obchange_15:
		move.w     d6,10(a3)
		moveq.l    #1,d0
		move.w     d0,-(a7)
		move.w     d5,-(a7)
		move.w     6(a4),-(a7)
		move.w     4(a4),-(a7)
		move.w     2(a4),-(a7)
		movea.l    _globl,a1
		move.w     (a4),d2
		clr.w      d1
		movea.l    a2,a0
		move.w     d4,d0
		jsr        mt_objc_change
		lea.l      10(a7),a7
Awi_obchange_12:
		pea.l      6(a4)
		pea.l      4(a4)
		pea.l      2(a4)
		pea.l      (a4)
		moveq.l    #12,d1
		move.w     20(a7),d0
		jsr        wind_get
		lea.l      16(a7),a7
Awi_obchange_11:
		move.w     4(a4),d0
		bgt        Awi_obchange_16
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
		move.w     2(a7),16(a2)
		move.w     (a7),18(a2)
Awi_obchange_10:
		move.w     d5,10(a3)
Awi_obchange_2:
		lea.l      22(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

		.globl Awi_obredraw
Awi_obredraw:
		movem.l    d3/a2-a3,-(a7)
		subq.w     #8,a7
		movea.l    a0,a3
		move.w     d0,d3
		lea.l      xd3d72,a1
		lea.l      (a7),a0
		move.l     (a1)+,(a0)+
		move.l     (a1)+,(a0)+
		move.w     86(a3),d1
		and.w      #$2800,d1
		bne.s      Awi_obredraw_1
		moveq.l    #8,d2
		and.w      86(a3),d2
		beq.s      Awi_obredraw_2
		movea.l    ACSblk,a0
		movea.l    604(a0),a1
		lea.l      (a7),a0
		jsr        Aob_offset
		bra.s      Awi_obredraw_1
Awi_obredraw_2:
		move.w     d3,d0
		and.w      #$1000,d0
		beq.s      Awi_obredraw_3
		move.w     d3,d0
		and.w      #$0FFF,d0
		movea.l    24(a3),a1
		lea.l      (a7),a0
		jsr        Aob_offset
		bra.s      Awi_obredraw_4
Awi_obredraw_3:
		move.w     d3,d0
		movea.l    20(a3),a1
		lea.l      (a7),a0
		jsr        Aob_offset
Awi_obredraw_4:
		move.w     52(a3),d0
		add.w      d0,(a7)
		move.w     54(a3),d1
		add.w      d1,2(a7)
Awi_obredraw_1:
		lea.l      (a7),a1
		movea.l    a3,a0
		movea.l    106(a3),a2
		jsr        (a2)
		addq.w     #8,a7
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Awi_redraw
Awi_redraw:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -18(a7),a7
		movea.l    a0,a2
		move.l     a1,14(a7)
		move.w     32(a2),12(a7)
		bmi        Awi_redraw_1
		movea.l    20(a2),a3
		move.l     a3,d0
		beq        Awi_redraw_1
		move.w     86(a2),d0
		and.w      #$2000,d0
		bne        Awi_redraw_1
		move.w     86(a2),d1
		and.w      #$0800,d1
		beq.s      Awi_redraw_2
		move.w     4(a1),d2
		cmp.w      20(a3),d2
		bgt.s      Awi_redraw_3
		move.w     6(a1),d0
		cmp.w      22(a3),d0
		ble.s      Awi_redraw_2
Awi_redraw_3:
		movea.l    a2,a0
		jsr        Awi_uniconify
		jsr        Aev_mess
		movea.l    20(a2),a3
Awi_redraw_2:
		move.w     86(a2),d0
		and.w      #$0800,d0
		beq        Awi_redraw_4
		move.w     32(a2),d1
		lsl.w      #2,d1
		lea.l      _ACSv_wiicons,a0
		movea.l    0(a0,d1.w),a3
		move.l     a3,d2
		beq        Awi_redraw_4
		movea.l    14(a7),a1
		pea.l      6(a1)
		pea.l      4(a1)
		pea.l      2(a1)
		move.l     a1,-(a7)
		move.w     32(a2),d0
		moveq.l    #4,d1
		jsr        wind_get
		lea.l      16(a7),a7
		movea.l    14(a7),a0
		move.w     (a0),16(a3)
		move.w     2(a0),18(a3)
		movea.l    _globl,a1
		move.w     #$0100,d0
		suba.l     a0,a0
		jsr        mt_graf_mouse
		pea.l      6(a7)
		pea.l      8(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		moveq.l    #11,d1
		move.w     32(a2),d0
		jsr        wind_get
		lea.l      16(a7),a7
		bra.s      Awi_redraw_5
Awi_redraw_9:
		movea.l    14(a7),a1
		lea.l      (a7),a0
		jsr        intersect
		move.w     4(a7),d0
		bne.s      Awi_redraw_6
		move.w     6(a7),d1
		beq.s      Awi_redraw_7
Awi_redraw_6:
		move.w     6(a7),-(a7)
		move.w     6(a7),-(a7)
		move.w     6(a7),-(a7)
		movea.l    _globl,a1
		move.w     6(a7),d2
		moveq.l    #6,d1
		clr.w      d0
		movea.l    a3,a0
		jsr        mt_objc_draw
		addq.w     #6,a7
Awi_redraw_7:
		pea.l      6(a7)
		pea.l      8(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		moveq.l    #12,d1
		move.w     32(a2),d0
		jsr        wind_get
		lea.l      16(a7),a7
Awi_redraw_5:
		move.w     4(a7),d0
		beq.s      Awi_redraw_8
		move.w     6(a7),d1
		bne.s      Awi_redraw_9
Awi_redraw_8:
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
		bra        Awi_redraw_1
Awi_redraw_4:
		moveq.l    #16,d0
		and.w      86(a2),d0
		beq.s      Awi_redraw_10
		lea.l      36(a2),a0
		move.l     a0,14(a7)
		andi.w     #$FFEF,86(a2)
Awi_redraw_10:
		move.w     16(a3),10(a7)
		move.w     18(a3),8(a7)
		lea.l      52(a2),a5
		move.w     (a5),d0
		add.w      d0,16(a3)
		move.w     2(a5),d0
		add.w      d0,18(a3)
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		pea.l      6(a7)
		pea.l      8(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		moveq.l    #11,d1
		move.w     28(a7),d0
		jsr        wind_get
		lea.l      16(a7),a7
		bra        Awi_redraw_11
Awi_redraw_21:
		movea.l    14(a7),a1
		lea.l      (a7),a0
		jsr        intersect
		move.w     4(a7),d0
		bne.s      Awi_redraw_12
		move.w     6(a7),d1
		beq        Awi_redraw_13
Awi_redraw_12:
		move.w     2(a7),d6
		sub.w      2(a5),d6
		tst.w      d6
		bpl        Awi_redraw_14
		movea.l    94(a2),a4
		move.l     a4,d0
		beq        Awi_redraw_15
		move.w     2(a4),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     2(a4,d0.l),d7
		move.w     d7,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		cmpi.w     #$0003,2(a4,d2.l)
		bne.s      Awi_redraw_16
		move.w     72(a4),2(a4,d2.l)
		move.w     4(a4),d7
		move.w     d7,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     2(a4,d1.l),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     d7,d1
		ext.l      d1
		move.l     d1,d2
		add.l      d2,d2
		add.l      d1,d2
		lsl.l      #3,d2
		move.w     0(a4,d0.l),2(a4,d2.l)
Awi_redraw_16:
		move.w     6(a7),-(a7)
		move.w     6(a7),-(a7)
		move.w     6(a7),-(a7)
		movea.l    _globl,a1
		move.w     6(a7),d2
		moveq.l    #6,d1
		move.w     2(a4),d0
		movea.l    a4,a0
		jsr        mt_objc_draw
		addq.w     #6,a7
Awi_redraw_15:
		movea.l    24(a2),a4
		move.l     a4,d0
		beq.s      Awi_redraw_17
		move.w     18(a4),d7
		add.w      2(a5),d7
		cmp.w      2(a7),d7
		bge.s      Awi_redraw_18
		move.w     2(a7),d7
Awi_redraw_18:
		move.w     2(a7),d4
		add.w      6(a7),d4
		cmp.w      2(a5),d4
		ble.s      Awi_redraw_19
		move.w     2(a5),d4
Awi_redraw_19:
		cmp.w      d4,d7
		bge.s      Awi_redraw_17
		move.w     16(a4),d5
		move.w     18(a4),d3
		move.w     (a5),d0
		add.w      d0,16(a4)
		move.w     2(a5),d0
		add.w      d0,18(a4)
		move.w     d4,d0
		sub.w      d7,d0
		move.w     d0,-(a7)
		move.w     6(a7),-(a7)
		move.w     d7,-(a7)
		movea.l    _globl,a1
		move.w     6(a7),d2
		moveq.l    #6,d1
		movea.l    a4,a0
		clr.w      d0
		jsr        mt_objc_draw
		addq.w     #6,a7
		move.w     d5,16(a4)
		move.w     d3,18(a4)
Awi_redraw_17:
		sub.w      d6,2(a7)
		add.w      d6,6(a7)
Awi_redraw_14:
		move.w     6(a7),d0
		ble.s      Awi_redraw_13
		move.w     d0,-(a7)
		move.w     6(a7),-(a7)
		move.w     6(a7),-(a7)
		movea.l    _globl,a1
		move.w     6(a7),d2
		moveq.l    #6,d1
		movea.l    a3,a0
		clr.w      d0
		jsr        mt_objc_draw
		addq.w     #6,a7
Awi_redraw_13:
		pea.l      6(a7)
		pea.l      8(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		moveq.l    #12,d1
		move.w     28(a7),d0
		jsr        wind_get
		lea.l      16(a7),a7
Awi_redraw_11:
		move.w     4(a7),d0
		beq.s      Awi_redraw_20
		move.w     6(a7),d1
		bne        Awi_redraw_21
Awi_redraw_20:
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
		movea.l    20(a2),a0
		move.w     10(a7),16(a0)
		movea.l    20(a2),a0
		move.w     8(a7),18(a0)
Awi_redraw_1:
		lea.l      18(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

next_arrow:
		move.l     a2,-(a7)
		lea.l      -18(a7),a7
		lea.l      16(a7),a2
		move.l     _globl,-(a7)
		pea.l      (a2)
		pea.l      (a2)
		pea.l      (a2)
		pea.l      (a2)
		pea.l      (a2)
		moveq.l    #5,d0
		move.l     d0,-(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		movea.l    a2,a1
		lea.l      50(a7),a0
		clr.w      d2
		clr.w      d1
		moveq.l    #48,d0
		jsr        mt_evnt_multi
		lea.l      50(a7),a7
		and.w      #$0010,d0
		beq.s      next_arrow_1
		cmpi.w     #$0018,(a7)
		bne.s      next_arrow_2
		moveq.l    #1,d0
		bra.s      next_arrow_3
next_arrow_2:
		movea.l    _globl,a1
		lea.l      (a7),a0
		moveq.l    #16,d1
		movea.l    ACSblk,a2
		move.w     (a2),d0
		jsr        mt_appl_write
next_arrow_1:
		clr.w      d0
next_arrow_3:
		lea.l      18(a7),a7
		movea.l    (a7)+,a2
		rts

		.globl Awi_arrowed
Awi_arrowed:
		movem.l    d3-d6/a2-a3,-(a7)
		lea.l      -12(a7),a7
		movea.l    a0,a2
		move.w     d0,10(a7)
		move.w     d1,d5
		move.w     32(a2),d2
		ble        Awi_arrowed_1
		move.w     72(a2),d0
		or.w       #$FF00,d0
		move.w     72(a2),d1
		asr.w      #8,d1
		movea.l    20(a2),a3
		move.w     d0,d2
		not.w      d2
		add.w      d2,20(a3)
		and.w      d0,20(a3)
		move.w     d1,d2
		not.w      d2
		add.w      d2,22(a3)
		and.w      d1,22(a3)
		move.w     d0,d2
		neg.w      d2
		move.w     d2,6(a7)
		move.w     d1,d0
		neg.w      d0
		move.w     d0,4(a7)
		move.w     56(a2),d1
		sub.w      20(a3),d1
		move.w     d1,(a7)
		move.w     58(a2),d6
		sub.w      22(a3),d6
		move.w     10(a7),d2
		cmp.w      #$0007,d2
		bhi.s      Awi_arrowed_2
		add.w      d2,d2
		move.w     J40(pc,d2.w),d2
		jmp        J40(pc,d2.w)
J40:
		dc.w Awi_arrowed_3-J40
		dc.w Awi_arrowed_3-J40
		dc.w Awi_arrowed_4-J40
		dc.w Awi_arrowed_4-J40
		dc.w Awi_arrowed_3-J40
		dc.w Awi_arrowed_3-J40
		dc.w Awi_arrowed_5-J40
		dc.w Awi_arrowed_5-J40
Awi_arrowed_3:
		move.w     #$0001,2(a7)
		bra.s      Awi_arrowed_2
Awi_arrowed_5:
		move.l     #$000003E8,d0
		move.w     64(a2),d1
		ext.l      d1
		jsr        _ldiv
		asr.l      #4,d0
		addq.w     #2,d0
		move.w     d0,2(a7)
		bra.s      Awi_arrowed_2
Awi_arrowed_4:
		move.l     #$000003E8,d0
		move.w     66(a2),d1
		ext.l      d1
		jsr        _ldiv
		asr.l      #4,d0
		addq.w     #2,d0
		move.w     d0,2(a7)
Awi_arrowed_2:
		move.w     2(a7),8(a7)
Awi_arrowed_21:
		move.w     16(a3),d3
		move.w     18(a3),d4
		move.w     10(a7),d0
		cmp.w      #$0007,d0
		bhi        Awi_arrowed_6
		add.w      d0,d0
		move.w     J41(pc,d0.w),d0
		jmp        J41(pc,d0.w)
J41:
		dc.w Awi_arrowed_7-J41
		dc.w Awi_arrowed_8-J41
		dc.w Awi_arrowed_9-J41
		dc.w Awi_arrowed_10-J41
		dc.w Awi_arrowed_11-J41
		dc.w Awi_arrowed_12-J41
		dc.w Awi_arrowed_13-J41
		dc.w Awi_arrowed_14-J41
Awi_arrowed_7:
		tst.w      d4
		beq        Awi_arrowed_15
		move.w     58(a2),d0
		muls.w     d5,d0
		add.w      d0,18(a3)
		bra.w      Awi_arrowed_6
Awi_arrowed_8:
		cmp.w      d4,d6
		beq        Awi_arrowed_15
		move.w     58(a2),d0
		muls.w     d5,d0
		sub.w      d0,18(a3)
		bra.s      Awi_arrowed_6
Awi_arrowed_9:
		tst.w      d4
		beq        Awi_arrowed_15
		move.w     4(a7),d0
		muls.w     d5,d0
		add.w      d0,18(a3)
		bra.s      Awi_arrowed_6
Awi_arrowed_10:
		cmp.w      d4,d6
		beq        Awi_arrowed_15
		move.w     4(a7),d0
		muls.w     d5,d0
		sub.w      d0,18(a3)
		bra.s      Awi_arrowed_6
Awi_arrowed_11:
		tst.w      d3
		beq        Awi_arrowed_15
		move.w     56(a2),d0
		muls.w     d5,d0
		add.w      d0,16(a3)
		bra.s      Awi_arrowed_6
Awi_arrowed_12:
		cmp.w      (a7),d3
		beq        Awi_arrowed_15
		move.w     56(a2),d0
		muls.w     d5,d0
		sub.w      d0,16(a3)
		bra.s      Awi_arrowed_6
Awi_arrowed_13:
		tst.w      d3
		beq        Awi_arrowed_15
		move.w     6(a7),d0
		muls.w     d5,d0
		add.w      d0,16(a3)
		bra.s      Awi_arrowed_6
Awi_arrowed_14:
		cmp.w      (a7),d3
		beq        Awi_arrowed_15
		move.w     6(a7),d0
		muls.w     d5,d0
		sub.w      d0,16(a3)
Awi_arrowed_6:
		move.w     16(a3),d0
		ble.s      Awi_arrowed_16
		clr.w      16(a3)
Awi_arrowed_16:
		move.w     16(a3),d0
		cmp.w      (a7),d0
		bge.s      Awi_arrowed_17
		move.w     (a7),16(a3)
Awi_arrowed_17:
		move.w     18(a3),d0
		ble.s      Awi_arrowed_18
		clr.w      18(a3)
Awi_arrowed_18:
		cmp.w      18(a3),d6
		ble.s      Awi_arrowed_19
		move.w     d6,18(a3)
Awi_arrowed_19:
		move.w     16(a3),d0
		neg.w      d0
		move.w     6(a7),d1
		neg.w      d1
		and.w      d1,d0
		neg.w      d0
		move.w     d0,16(a3)
		move.w     18(a3),d2
		neg.w      d2
		move.w     4(a7),d0
		neg.w      d0
		and.w      d0,d2
		neg.w      d2
		move.w     d2,18(a3)
		subq.w     #1,8(a7)
		bne.s      Awi_arrowed_20
		movea.l    a2,a0
		jsr        Awi_cleanup
		move.w     2(a7),8(a7)
Awi_arrowed_20:
		move.w     d4,d1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Awi_scroll
		bsr        next_arrow
		tst.w      d0
		bne        Awi_arrowed_21
Awi_arrowed_15:
		move.w     8(a7),d0
		cmp.w      2(a7),d0
		beq.s      Awi_arrowed_1
		movea.l    a2,a0
		jsr        Awi_cleanup
Awi_arrowed_1:
		lea.l      12(a7),a7
		movem.l    (a7)+,d3-d6/a2-a3
		rts

		.globl Awi_hslid
Awi_hslid:
		movem.l    d3-d4/a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		move.w     32(a2),d1
		ble.s      Awi_hslid_1
		movea.l    20(a2),a1
		move.w     16(a1),d3
		ext.l      d0
		move.w     20(a1),d1
		sub.w      56(a2),d1
		ext.l      d1
		jsr        _lmul
		move.l     #$FFFFFC18,d1
		jsr        _ldiv
		move.w     72(a2),d1
		or.w       #$FF00,d1
		and.w      d1,d0
		cmp.w      d3,d0
		beq.s      Awi_hslid_1
		movea.l    20(a2),a0
		move.w     d0,16(a0)
		movea.l    20(a2),a0
		move.w     18(a0),d4
		movea.l    a2,a0
		jsr        Awi_cleanup
		move.w     d4,d1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Awi_scroll
Awi_hslid_1:
		movem.l    (a7)+,d3-d4/a2
		rts

		.globl Awi_vslid
Awi_vslid:
		movem.l    d3-d4/a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		move.w     32(a2),d1
		ble.s      Awi_vslid_1
		movea.l    20(a2),a1
		move.w     18(a1),d3
		ext.l      d0
		move.w     22(a1),d1
		sub.w      58(a2),d1
		ext.l      d1
		jsr        _lmul
		move.l     #$FFFFFC18,d1
		jsr        _ldiv
		move.w     72(a2),d1
		asr.w      #8,d1
		and.w      d1,d0
		cmp.w      d3,d0
		beq.s      Awi_vslid_1
		movea.l    20(a2),a0
		move.w     d0,18(a0)
		movea.l    20(a2),a0
		move.w     16(a0),d4
		movea.l    a2,a0
		jsr        Awi_cleanup
		move.w     d3,d1
		move.w     d4,d0
		movea.l    a2,a0
		jsr        Awi_scroll
Awi_vslid_1:
		movem.l    (a7)+,d3-d4/a2
		rts

		.globl Awi_wheeled
Awi_wheeled:
		movem.l    d3-d7/a2-a4,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		movea.l    a1,a4
		move.w     d0,d4
		move.w     d1,d5
		clr.w      d6
		jsr        nkc_kstate
		move.w     d0,d3
		clr.l      -(a7)
		suba.l     a1,a1
		move.w     d5,d1
		movea.l    a2,a0
		move.w     d4,d0
		jsr        Awi_obfind
		addq.w     #4,a7
		move.l     a0,d0
		nop
		tst.w      d6
		bne        Awi_wheeled_1
		clr.w      d4
		move.w     d4,d5
		lea.l      2(a7),a3
		pea.l      (a3)
		moveq.l    #16,d1
		move.w     32(a2),d0
		jsr        wind_get
		addq.w     #4,a7
		pea.l      (a7)
		moveq.l    #15,d1
		move.w     32(a2),d0
		jsr        wind_get
		addq.w     #4,a7
		move.l     _globl,-(a7)
		pea.l      8(a7)
		pea.l      14(a7)
		lea.l      16(a7),a1
		lea.l      16(a7),a0
		moveq.l    #8,d0
		jsr        mt_appl_getinfo
		lea.l      12(a7),a7
		tst.w      d0
		beq        Awi_wheeled_2
		moveq.l    #3,d0
		and.w      6(a7),d0
		subq.w     #3,d0
		bne.w      Awi_wheeled_2
		move.w     (a4),d1
		ble.s      Awi_wheeled_3
		move.w     #$0080,d2
		and.w      34(a2),d2
		beq.s      Awi_wheeled_3
		cmpi.w     #$03E8,(a3)
		bge.s      Awi_wheeled_3
		moveq.l    #2,d5
		move.w     d1,d6
		bra.s      Awi_wheeled_4
Awi_wheeled_3:
		move.w     (a4),d0
		bpl.s      Awi_wheeled_4
		moveq.l    #64,d1
		and.w      34(a2),d1
		beq.s      Awi_wheeled_4
		cmpi.w     #$03E8,(a3)
		bge.s      Awi_wheeled_4
		moveq.l    #3,d5
		move.w     d0,d6
		neg.w      d6
Awi_wheeled_4:
		move.w     2(a4),d0
		ble.s      Awi_wheeled_5
		move.w     34(a2),d1
		and.w      #$0400,d1
		beq.s      Awi_wheeled_5
		cmpi.w     #$03E8,(a7)
		bge.s      Awi_wheeled_5
		moveq.l    #7,d4
		move.w     d0,d7
		bra        Awi_wheeled_6
Awi_wheeled_5:
		move.w     2(a4),d0
		bpl        Awi_wheeled_6
		move.w     34(a2),d1
		and.w      #$0200,d1
		beq        Awi_wheeled_6
		cmpi.w     #$03E8,(a7)
		bge        Awi_wheeled_6
		moveq.l    #6,d4
		move.w     d0,d7
		neg.w      d7
		bra        Awi_wheeled_6
Awi_wheeled_2:
		move.w     (a4),d0
		ble.s      Awi_wheeled_7
		move.w     #$0080,d1
		and.w      34(a2),d1
		beq.s      Awi_wheeled_7
		move.w     d3,d2
		and.w      #$0400,d2
		beq.w      Awi_wheeled_8
		cmpi.w     #$03E8,(a3)
		blt.w      Awi_wheeled_8
Awi_wheeled_7:
		move.w     (a4),d0
		bpl.s      Awi_wheeled_9
		moveq.l    #64,d1
		and.w      34(a2),d1
		beq.s      Awi_wheeled_9
		move.w     d3,d2
		and.w      #$0400,d2
		beq.w      Awi_wheeled_10
		cmpi.w     #$03E8,(a3)
		blt.w      Awi_wheeled_10
Awi_wheeled_9:
		move.w     (a4),d0
		ble.s      Awi_wheeled_11
		move.w     34(a2),d1
		and.w      #$0400,d1
		beq.s      Awi_wheeled_11
		cmpi.w     #$03E8,(a7)
		bge.s      Awi_wheeled_11
		moveq.l    #7,d4
		move.w     d0,d7
		bra.s      Awi_wheeled_6
Awi_wheeled_11:
		move.w     (a4),d0
		bpl.s      Awi_wheeled_12
		move.w     34(a2),d1
		and.w      #$0200,d1
		beq.s      Awi_wheeled_12
		cmpi.w     #$03E8,(a7)
		bge.s      Awi_wheeled_12
		moveq.l    #6,d4
		move.w     d0,d7
		neg.w      d7
		bra.s      Awi_wheeled_6
Awi_wheeled_12:
		move.w     (a4),d0
		ble.s      Awi_wheeled_13
		move.w     #$0080,d1
		and.w      34(a2),d1
		beq.s      Awi_wheeled_13
		cmpi.w     #$03E8,(a3)
		bge.s      Awi_wheeled_13
Awi_wheeled_8:
		moveq.l    #2,d5
		move.w     (a4),d6
		bra.s      Awi_wheeled_6
Awi_wheeled_13:
		move.w     (a4),d0
		bpl.s      Awi_wheeled_6
		moveq.l    #64,d1
		and.w      34(a2),d1
		beq.s      Awi_wheeled_6
		cmpi.w     #$03E8,(a3)
		bge.s      Awi_wheeled_6
Awi_wheeled_10:
		moveq.l    #3,d5
		move.w     (a4),d6
		neg.w      d6
Awi_wheeled_6:
		tst.w      d4
		beq.s      Awi_wheeled_14
		tst.w      d7
		beq.s      Awi_wheeled_14
		move.w     d7,d1
		move.w     d4,d0
		movea.l    a2,a0
		movea.l    122(a2),a1
		jsr        (a1)
Awi_wheeled_14:
		tst.w      d5
		beq.s      Awi_wheeled_1
		tst.w      d6
		beq.s      Awi_wheeled_1
		move.w     d6,d1
		move.w     d5,d0
		movea.l    a2,a0
		movea.l    122(a2),a1
		jsr        (a1)
Awi_wheeled_1:
		moveq.l    #1,d0
		addq.w     #8,a7
		movem.l    (a7)+,d3-d7/a2-a4
		rts

		.globl Awi_obview
Awi_obview:
		movem.l    d3-d5/a2-a4,-(a7)
		subq.w     #6,a7
		movea.l    a0,a2
		move.w     32(a2),d0
		ble        Awi_obview_1
		clr.w      d0
		movea.l    20(a2),a3
		move.w     34(a2),d2
		and.w      #$01C0,d2
		cmp.w      #$01C0,d2
		bne.s      Awi_obview_2
		moveq.l    #1,d1
		bra.s      Awi_obview_3
Awi_obview_2:
		clr.w      d1
Awi_obview_3:
		move.w     34(a2),d3
		and.w      #$0E00,d3
		cmp.w      #$0E00,d3
		bne.s      Awi_obview_4
		moveq.l    #1,d2
		bra.s      Awi_obview_5
Awi_obview_4:
		clr.w      d2
Awi_obview_5:
		move.w     72(a2),d3
		or.w       #$FF00,d3
		neg.w      d3
		add.w      d3,d3
		add.w      d3,4(a1)
		move.w     72(a2),d3
		asr.w      #8,d3
		neg.w      d3
		add.w      d3,d3
		add.w      d3,6(a1)
		move.w     16(a3),4(a7)
		move.w     18(a3),2(a7)
		move.w     56(a2),d5
		move.w     58(a2),(a7)
		tst.w      d2
		beq.s      Awi_obview_6
		move.w     (a1),d3
		bpl.s      Awi_obview_6
		sub.w      d3,16(a3)
		moveq.l    #1,d0
Awi_obview_6:
		tst.w      d1
		beq.s      Awi_obview_7
		move.w     2(a1),d3
		bpl.s      Awi_obview_7
		sub.w      d3,18(a3)
		moveq.l    #1,d0
Awi_obview_7:
		tst.w      d2
		beq.s      Awi_obview_8
		cmp.w      4(a1),d5
		bge.s      Awi_obview_8
		move.w     4(a1),56(a2)
		moveq.l    #1,d0
Awi_obview_8:
		tst.w      d1
		beq.s      Awi_obview_9
		move.w     6(a1),d3
		cmp.w      (a7),d3
		ble.s      Awi_obview_9
		move.w     d3,58(a2)
		moveq.l    #1,d0
Awi_obview_9:
		move.w     (a1),d4
		add.w      4(a1),d4
		sub.w      56(a2),d4
		tst.w      d2
		beq.s      Awi_obview_10
		tst.w      d4
		ble.s      Awi_obview_10
		sub.w      d4,16(a3)
		moveq.l    #1,d0
Awi_obview_10:
		move.w     2(a1),d4
		add.w      6(a1),d4
		sub.w      58(a2),d4
		tst.w      d1
		beq.s      Awi_obview_11
		tst.w      d4
		ble.s      Awi_obview_11
		sub.w      d4,18(a3)
		moveq.l    #1,d0
Awi_obview_11:
		tst.w      d0
		beq        Awi_obview_1
		clr.w      d3
		movea.l    94(a2),a4
		move.l     a4,d0
		beq.s      Awi_obview_12
		move.w     2(a4),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		add.w      22(a4,d0.l),d3
Awi_obview_12:
		movea.l    24(a2),a1
		move.l     a1,d0
		beq.s      Awi_obview_13
		add.w      22(a1),d3
Awi_obview_13:
		move.l     _globl,-(a7)
		pea.l      42(a2)
		pea.l      40(a2)
		move.w     58(a2),d0
		add.w      d3,d0
		move.w     d0,-(a7)
		move.w     56(a2),-(a7)
		move.w     54(a2),d1
		sub.w      d3,d1
		move.w     d1,-(a7)
		lea.l      38(a2),a1
		lea.l      36(a2),a0
		move.w     52(a2),d2
		move.w     34(a2),d1
		clr.w      d0
		jsr        mt_wind_calc
		lea.l      18(a7),a7
		move.w     16(a3),d0
		neg.w      d0
		move.w     72(a2),d1
		or.w       #$FF00,d1
		and.w      d1,d0
		neg.w      d0
		move.w     d0,16(a3)
		move.w     18(a3),d1
		neg.w      d1
		move.w     72(a2),d2
		asr.w      #8,d2
		and.w      d2,d1
		neg.w      d1
		move.w     d1,18(a3)
		movea.l    a2,a0
		jsr        Awi_cleanup
		move.w     16(a3),d0
		cmp.w      4(a7),d0
		bne.s      Awi_obview_14
		move.w     18(a3),d1
		cmp.w      2(a7),d1
		bne.s      Awi_obview_14
		cmp.w      56(a2),d5
		bne.s      Awi_obview_14
		move.w     58(a2),d2
		cmp.w      (a7),d2
		beq.s      Awi_obview_1
Awi_obview_14:
		ori.w      #$0010,86(a2)
		move.w     42(a2),-(a7)
		move.w     40(a2),-(a7)
		move.w     38(a2),-(a7)
		move.w     36(a2),-(a7)
		moveq.l    #5,d1
		move.w     32(a2),d0
		jsr        wind_set
		addq.w     #8,a7
		movea.l    ACSblk,a0
		movea.l    640(a0),a1
		cmpi.w     #$0300,(a1)
		ble.s      Awi_obview_15
		cmpi.w     #$0400,(a1)
		bge.s      Awi_obview_15
		movea.l    a2,a0
		jsr        Awi_slider
Awi_obview_15:
		jsr        Aev_mess
		moveq.l    #16,d0
		and.w      86(a2),d0
		beq.s      Awi_obview_1
		lea.l      36(a2),a1
		movea.l    a2,a0
		movea.l    106(a2),a3
		jsr        (a3)
Awi_obview_1:
		addq.w     #6,a7
		movem.l    (a7)+,d3-d5/a2-a4
		rts

		.globl Aob_chdef
Aob_chdef:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		moveq.l    #2,d1
		moveq.l    #-1,d0
		movea.l    a1,a0
		jsr        Aob_findflag
		move.w     d0,d3
		bmi.s      Aob_chdef_1
		move.w     #$4000,d1
		movea.l    a2,a0
		jsr        Aob_findflag
		move.w     d0,d4
		tst.w      d0
		bmi.s      Aob_chdef_2
		move.w     #$0080,d1
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		and.w      8(a2,d2.l),d1
		beq.s      Aob_chdef_3
Aob_chdef_2:
		move.w     #$4000,d1
		moveq.l    #-1,d0
		movea.l    a2,a0
		jsr        Aob_findflag
		move.w     d0,d4
Aob_chdef_3:
		tst.w      d4
		bmi.s      Aob_chdef_1
		move.w     #$0080,d0
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a2,d1.l),d0
		bne.s      Aob_chdef_1
		cmp.w      d3,d4
		bne.s      Aob_chdef_4
Aob_chdef_1:
		clr.w      d0
		bra        Aob_chdef_5
Aob_chdef_4:
		tst.w      d3
		bmi.s      Aob_chdef_6
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$FFFD,8(a2,d0.l)
Aob_chdef_6:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$0002,8(a2,d0.l)
		movea.l    ACSblk,a0
		move.l     a2,604(a0)
		cmpa.l     24(a3),a2
		bne.s      Aob_chdef_7
		move.w     d3,d0
		or.w       #$1000,d0
		movea.l    a3,a0
		bsr        Awi_obredraw
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		move.w     10(a2,d0.l),d1
		move.w     d4,d0
		or.w       #$1000,d0
		movea.l    a3,a0
		movea.l    102(a3),a1
		jsr        (a1)
		bra.s      Aob_chdef_8
Aob_chdef_7:
		move.w     d3,d0
		movea.l    a3,a0
		bsr        Awi_obredraw
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		move.w     10(a2,d0.l),d1
		movea.l    a3,a0
		movea.l    102(a3),a1
		move.w     d4,d0
		jsr        (a1)
Aob_chdef_8:
		moveq.l    #1,d0
Aob_chdef_5:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

Awi_find_edit:
		movem.l    d3/a2-a6,-(a7)
		movea.l    a0,a2
		movea.l    a1,a5
		movea.l    32(a7),a6
		move.w     28(a2),d3
		tst.w      d3
		bmi.s      Awi_find_edit_1
		move.w     d3,d0
		and.w      #$1000,d0
		beq.s      Awi_find_edit_2
		movea.l    24(a2),a3
		bra.s      Awi_find_edit_3
Awi_find_edit_2:
		movea.l    20(a2),a3
Awi_find_edit_3:
		move.l     a3,d0
		beq.s      Awi_find_edit_4
		move.w     d3,d2
		and.w      #$0FFF,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		cmpi.b     #$18,7(a3,d1.l)
		bne.s      Awi_find_edit_4
		movea.l    12(a3,d1.l),a4
		move.l     a4,d0
		beq.s      Awi_find_edit_4
		move.l     8(a4),d0
		bne.s      Awi_find_edit_1
Awi_find_edit_4:
		moveq.l    #-1,d3
Awi_find_edit_1:
		tst.w      d3
		bpl.s      Awi_find_edit_5
		move.l     20(a2),d0
		beq.s      Awi_find_edit_5
		moveq.l    #8,d1
		movea.l    d0,a0
		moveq.l    #-1,d0
		jsr        Aob_findflag
		move.w     d0,d3
		bpl.s      Awi_find_edit_5
		move.l     24(a2),d1
		beq.s      Awi_find_edit_5
		movea.l    d1,a0
		moveq.l    #-1,d0
		moveq.l    #8,d1
		jsr        Aob_findflag
		move.w     d0,d3
		or.w       #$1000,d3
		bmi.s      Awi_find_edit_5
		or.w       #$1000,d3
Awi_find_edit_5:
		tst.w      d3
		ble.s      Awi_find_edit_6
		move.w     d3,d0
		and.w      #$1000,d0
		beq.s      Awi_find_edit_7
		move.l     24(a2),(a5)
		movea.l    28(a7),a0
		move.l     20(a2),(a0)
		move.w     d3,d1
		and.w      #$0FFF,d1
		move.w     d1,(a6)
		bra.s      Awi_find_edit_8
Awi_find_edit_7:
		move.l     20(a2),(a5)
		movea.l    28(a7),a0
		move.l     24(a2),(a0)
		move.w     d3,(a6)
Awi_find_edit_8:
		move.w     (a6),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a5),a0
		cmpi.b     #$18,7(a0,d0.l)
		bne.s      Awi_find_edit_6
		movea.l    12(a0,d0.l),a4
		move.l     a4,d2
		beq.s      Awi_find_edit_6
		move.l     8(a4),d2
		beq.s      Awi_find_edit_6
		moveq.l    #1,d0
		bra.s      Awi_find_edit_9
Awi_find_edit_6:
		moveq.l    #0,d0
		movea.l    28(a7),a0
		move.l     d0,(a0)
		move.l     d0,(a5)
		clr.w      (a6)
		clr.w      d0
Awi_find_edit_9:
		movem.l    (a7)+,d3/a2-a6
		rts

Awi_char:
		movem.l    a2-a4,-(a7)
		subq.w     #2,a7
		movea.l    a0,a2
		movea.l    a1,a3
		lea.l      xd3d7a,a0
		lea.l      (a7),a1
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     d0,(a7)
		lea.l      (a7),a1
		movea.l    a3,a0
		movea.l    8(a2),a4
		move.w     #$02C0,d0
		jsr        (a4)
		addq.w     #2,a7
		movem.l    (a7)+,a2-a4
		rts

Awi_firstedit:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.l     24(a2),d0
		beq.s      Awi_firstedit_1
		moveq.l    #8,d1
		movea.l    d0,a0
		moveq.l    #-1,d0
		jsr        Aob_findflag
		move.w     d0,d3
		ble.s      Awi_firstedit_1
		or.w       #$1000,d0
		bra.s      Awi_firstedit_2
Awi_firstedit_1:
		moveq.l    #8,d1
		moveq.l    #-1,d0
		movea.l    20(a2),a0
		jsr        Aob_findflag
		move.w     d0,d3
		ble.s      Awi_firstedit_3
		bra.s      Awi_firstedit_2
Awi_firstedit_3:
		moveq.l    #-1,d0
Awi_firstedit_2:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

Awi_lastedit:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a3
		suba.l     a2,a2
		move.l     20(a3),d0
		beq.s      Awi_lastedit_1
		moveq.l    #8,d1
		movea.l    d0,a0
		moveq.l    #-1,d0
		jsr        Aob_findflag
		tst.w      d0
		ble.s      Awi_lastedit_1
		movea.l    20(a3),a2
		bra.s      Awi_lastedit_2
Awi_lastedit_1:
		movea.l    24(a3),a2
Awi_lastedit_2:
		move.l     a2,d0
		beq.s      Awi_lastedit_3
		moveq.l    #-1,d3
Awi_lastedit_4:
		move.w     d3,d4
		moveq.l    #8,d1
		move.w     d4,d0
		movea.l    a2,a0
		jsr        Aob_findflag
		move.w     d0,d3
		tst.w      d0
		bgt.s      Awi_lastedit_4
		tst.w      d4
		ble.s      Awi_lastedit_3
		cmpa.l     24(a3),a2
		bne.s      Awi_lastedit_5
		move.w     d4,d0
		or.w       #$1000,d0
		bra.s      Awi_lastedit_6
Awi_lastedit_5:
		move.w     d4,d0
Awi_lastedit_6:
		bra.s      Awi_lastedit_7
Awi_lastedit_3:
		moveq.l    #-1,d0
Awi_lastedit_7:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

		.globl Awi_focuschg
Awi_focuschg:
		movem.l    d3/a2-a5,-(a7)
		lea.l      -10(a7),a7
		movea.l    a0,a3
		move.w     d0,d3
		move.w     d1,8(a7)
		lea.l      8(a7),a2
		move.w     (a2),d0
		ble.w      Awi_focuschg_1
		and.w      #$1000,d0
		beq.s      Awi_focuschg_2
		movea.l    24(a3),a4
		bra.s      Awi_focuschg_3
Awi_focuschg_2:
		movea.l    20(a3),a4
Awi_focuschg_3:
		movea.l    a2,a1
		moveq.l    #8,d0
		movea.l    a3,a0
		movea.l    4(a3),a5
		jsr        (a5)
		tst.w      d0
		beq.s      Awi_focuschg_4
		cmp.w      (a2),d3
		bne.s      Awi_focuschg_4
		clr.w      d0
		bra.s      Awi_focuschg_5
Awi_focuschg_4:
		bsr        Awi_diaend
		move.w     (a2),28(a3)
		move.w     (a2),d0
		and.w      #$0FFF,d0
		movea.l    a4,a1
		lea.l      (a7),a0
		jsr        Aob_offset
		move.w     (a7),d0
		bmi.s      Awi_focuschg_6
		move.w     2(a7),d1
		bmi.s      Awi_focuschg_6
		add.w      4(a7),d0
		cmp.w      56(a3),d0
		bge.s      Awi_focuschg_6
		add.w      6(a7),d1
		cmp.w      58(a3),d1
		blt.s      Awi_focuschg_7
Awi_focuschg_6:
		lea.l      (a7),a1
		movea.l    a3,a0
		bsr        Awi_obview
		jsr        Aev_mess
Awi_focuschg_7:
		bsr        Awi_diastart
Awi_focuschg_1:
		moveq.l    #1,d0
Awi_focuschg_5:
		lea.l      10(a7),a7
		movem.l    (a7)+,d3/a2-a5
		rts

Awi_newsel:
		move.w     d4,-(a7)
		move.l     a2,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		move.w     d1,d4
		tst.w      d0
		ble.s      Awi_newsel_1
		jsr        Adr_del
		bra.s      Awi_newsel_2
Awi_newsel_1:
		jsr        Adr_unselect
Awi_newsel_2:
		move.w     d4,d0
		movea.l    a2,a0
		jsr        Adr_add
		move.w     d4,d0
		movea.l    20(a2),a1
		lea.l      (a7),a0
		jsr        Aob_offset
		lea.l      (a7),a1
		movea.l    a2,a0
		bsr        Awi_obview
		addq.w     #8,a7
		movea.l    (a7)+,a2
		move.w     (a7)+,d4
		rts

Awi_prevsel:
		movem.l    d3-d7/a2,-(a7)
		move.w     d0,d5
		move.w     d1,d7
		moveq.l    #-1,d3
		movea.l    20(a0),a2
		move.w     2(a2),d6
		move.w     4(a2),d4
		move.w     d4,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		move.w     8(a2,d2.l),d1
		and.w      #$8000,d1
		beq.s      Awi_prevsel_1
		subq.w     #1,d4
Awi_prevsel_1:
		cmp.w      d6,d4
		bne.s      Awi_prevsel_2
		move.w     d6,d0
		bra.w      Awi_prevsel_3
Awi_prevsel_2:
		cmp.w      d4,d5
		bge.s      Awi_prevsel_4
		tst.w      d5
		beq.s      Awi_prevsel_4
		move.w     d5,d4
Awi_prevsel_4:
		bra.s      Awi_prevsel_5
Awi_prevsel_10:
		moveq.l    #1,d0
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a2,d1.l),d0
		beq.s      Awi_prevsel_6
		move.w     #$0080,d0
		and.w      8(a2,d1.l),d0
		bne.s      Awi_prevsel_6
		tst.w      d7
		beq.s      Awi_prevsel_7
		tst.w      d5
		beq.s      Awi_prevsel_7
		move.w     d5,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		move.w     16(a2,d2.l),d1
		move.w     d6,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		cmp.w      16(a2,d2.l),d1
		bne.s      Awi_prevsel_6
Awi_prevsel_7:
		move.w     d6,d3
Awi_prevsel_6:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d6
		tst.w      d6
		beq.s      Awi_prevsel_8
Awi_prevsel_5:
		tst.w      d5
		beq.s      Awi_prevsel_9
		cmp.w      d6,d4
		bgt.s      Awi_prevsel_10
Awi_prevsel_9:
		tst.w      d5
		bne.s      Awi_prevsel_8
		cmp.w      d6,d4
		bge.s      Awi_prevsel_10
Awi_prevsel_8:
		move.w     d3,d0
Awi_prevsel_3:
		movem.l    (a7)+,d3-d7/a2
		rts

Awi_nextsel:
		movem.l    d3-d7/a2,-(a7)
		move.w     d0,d5
		move.w     d1,d7
		movea.l    20(a0),a2
		move.w     2(a2),d3
		move.w     4(a2),d4
		move.w     d4,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		move.w     8(a2,d2.l),d1
		and.w      #$8000,d1
		beq.s      Awi_nextsel_1
		subq.w     #1,d4
Awi_nextsel_1:
		cmp.w      d3,d4
		bne.s      Awi_nextsel_2
		move.w     d3,d0
		bra.w      Awi_nextsel_3
Awi_nextsel_2:
		tst.w      d5
		beq.s      Awi_nextsel_4
		cmp.w      d3,d5
		ble.s      Awi_nextsel_5
		move.w     d5,d3
Awi_nextsel_5:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d6
		bra.s      Awi_nextsel_6
Awi_nextsel_4:
		move.w     d3,d6
		bra.s      Awi_nextsel_6
Awi_nextsel_10:
		moveq.l    #1,d0
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a2,d1.l),d0
		beq.s      Awi_nextsel_7
		move.w     #$0080,d3
		and.w      8(a2,d1.l),d3
		bne.s      Awi_nextsel_7
		tst.w      d7
		beq.s      Awi_nextsel_8
		tst.w      d5
		beq.s      Awi_nextsel_8
		move.w     d5,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		move.w     16(a2,d0.l),d3
		cmp.w      16(a2,d1.l),d3
		bne.s      Awi_nextsel_7
Awi_nextsel_8:
		move.w     d6,d0
		bra.s      Awi_nextsel_3
Awi_nextsel_7:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d6
		tst.w      d6
		beq.s      Awi_nextsel_9
Awi_nextsel_6:
		cmp.w      d6,d4
		bge.s      Awi_nextsel_10
Awi_nextsel_9:
		moveq.l    #-1,d0
Awi_nextsel_3:
		movem.l    (a7)+,d3-d7/a2
		rts

		.globl Awi_help
Awi_help:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		move.l     154(a2),4(a7)
		move.l     158(a2),(a7)
		lea.l      (a7),a1
		moveq.l    #41,d0
		movea.l    4(a2),a3
		jsr        (a3)
		movea.l    4(a7),a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      Awi_help_1
		movea.l    (a7),a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      Awi_help_2
		movea.l    (a7),a1
		movea.l    ACSblk,a0
		lea.l      544(a0),a0
		jsr        Ast_icmp
		tst.w      d0
		beq.s      Awi_help_2
		move.l     a2,-(a7)
		movea.l    8(a7),a1
		movea.l    4(a7),a0
		jsr        Aev_STGuideHelp
		addq.w     #4,a7
		bra.s      Awi_help_3
Awi_help_2:
		move.l     a2,-(a7)
		movea.l    8(a7),a1
		suba.l     a0,a0
		jsr        Aev_STGuideHelp
		addq.w     #4,a7
		bra.s      Awi_help_3
Awi_help_1:
		clr.w      d0
Awi_help_3:
		addq.w     #8,a7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

	.IFNE 0 /* only in lib */
	.globl Aus_help
Aus_help:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		bsr.w      Awi_help
		rts
	.ENDC

Awi_keyACWork:
		movem.l    d3-d5/a2-a3,-(a7)
		movea.l    a0,a3
		move.w     d0,d5
		move.w     d1,d4
		moveq.l    #-1,d3
		move.w     d4,d2
		and.w      #$8C00,d2
		bne        Awi_keyACWork_1
		move.w     d4,d0
		and.w      #$00FF,d0
		jsr        isascii
		tst.w      d0
		beq        Awi_keyACWork_1
		move.w     d4,d0
		and.w      #$00FF,d0
		jsr        isalnum
		tst.w      d0
		beq        Awi_keyACWork_1
		lea.l      ACSblk,a2
		moveq.l    #2,d0
		movea.l    (a2),a0
		and.w      1276(a0),d0
		beq.s      Awi_keyACWork_2
		moveq.l    #8,d1
		and.w      1276(a0),d1
		beq.s      Awi_keyACWork_2
		tst.w      d3
		bpl.s      Awi_keyACWork_2
		move.w     d4,d1
		or.w       #$8400,d1
		movea.l    a3,a0
		move.w     d5,d0
		jsr        Aob_wobkey
		move.w     d0,d3
Awi_keyACWork_2:
		moveq.l    #1,d0
		movea.l    (a2),a0
		and.w      1276(a0),d0
		beq.s      Awi_keyACWork_3
		tst.w      d3
		bpl.s      Awi_keyACWork_3
		move.w     d4,d1
		or.w       #$8800,d1
		movea.l    a3,a0
		move.w     d5,d0
		jsr        Aob_wobkey
		move.w     d0,d3
Awi_keyACWork_3:
		moveq.l    #2,d0
		movea.l    (a2),a0
		and.w      1276(a0),d0
		beq.s      Awi_keyACWork_4
		moveq.l    #8,d1
		and.w      1276(a0),d1
		bne.s      Awi_keyACWork_4
		tst.w      d3
		bpl.s      Awi_keyACWork_4
		move.w     d4,d1
		or.w       #$8400,d1
		movea.l    a3,a0
		move.w     d5,d0
		jsr        Aob_wobkey
		move.w     d0,d3
Awi_keyACWork_4:
		moveq.l    #4,d0
		movea.l    (a2),a0
		and.w      1276(a0),d0
		beq.s      Awi_keyACWork_1
		tst.w      d3
		bpl.s      Awi_keyACWork_1
		move.w     d4,d1
		or.w       #$8C00,d1
		movea.l    a3,a0
		move.w     d5,d0
		jsr        Aob_wobkey
		move.w     d0,d3
Awi_keyACWork_1:
		move.w     d3,d0
		movem.l    (a7)+,d3-d5/a2-a3
		rts

Awi_keyACTool:
		movem.l    d3-d5/a2-a3,-(a7)
		movea.l    a0,a3
		move.w     d0,d5
		move.w     d1,d4
		moveq.l    #-1,d3
		move.w     d4,d2
		and.w      #$8C00,d2
		bne        Awi_keyACTool_1
		move.w     d4,d0
		and.w      #$00FF,d0
		jsr        isascii
		tst.w      d0
		beq        Awi_keyACTool_1
		move.w     d4,d0
		and.w      #$00FF,d0
		jsr        isalnum
		tst.w      d0
		beq        Awi_keyACTool_1
		lea.l      ACSblk,a2
		moveq.l    #32,d0
		movea.l    (a2),a0
		and.w      1276(a0),d0
		beq.s      Awi_keyACTool_2
		move.w     #$0080,d1
		and.w      1276(a0),d1
		beq.s      Awi_keyACTool_2
		tst.w      d3
		bpl.s      Awi_keyACTool_2
		move.w     d4,d1
		or.w       #$8400,d1
		movea.l    a3,a0
		move.w     d5,d0
		jsr        Aob_tobkey
		move.w     d0,d3
Awi_keyACTool_2:
		moveq.l    #16,d0
		movea.l    (a2),a0
		and.w      1276(a0),d0
		beq.s      Awi_keyACTool_3
		tst.w      d3
		bpl.s      Awi_keyACTool_3
		move.w     d4,d1
		or.w       #$8800,d1
		movea.l    a3,a0
		move.w     d5,d0
		jsr        Aob_tobkey
		move.w     d0,d3
Awi_keyACTool_3:
		moveq.l    #32,d0
		movea.l    (a2),a0
		and.w      1276(a0),d0
		beq.s      Awi_keyACTool_4
		move.w     #$0080,d1
		and.w      1276(a0),d1
		bne.s      Awi_keyACTool_4
		tst.w      d3
		bpl.s      Awi_keyACTool_4
		move.w     d4,d1
		or.w       #$8400,d1
		movea.l    a3,a0
		move.w     d5,d0
		jsr        Aob_tobkey
		move.w     d0,d3
Awi_keyACTool_4:
		moveq.l    #64,d0
		movea.l    (a2),a0
		and.w      1276(a0),d0
		beq.s      Awi_keyACTool_1
		tst.w      d3
		bpl.s      Awi_keyACTool_1
		move.w     d4,d1
		or.w       #$8C00,d1
		movea.l    a3,a0
		move.w     d5,d0
		jsr        Aob_tobkey
		move.w     d0,d3
Awi_keyACTool_1:
		move.w     d3,d0
		movem.l    (a7)+,d3-d5/a2-a3
		rts

Awi_keyACSwitch:
		movem.l    d3-d5/a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d5
		move.w     d1,d4
		moveq.l    #-1,d3
		and.w      #$0C00,d1
		bne.s      Awi_keyACSwitch_1
		tst.w      d3
		bpl.s      Awi_keyACSwitch_2
		movea.l    ACSblk,a1
		move.w     1276(a1),d2
		and.w      #$0100,d2
		beq.s      Awi_keyACSwitch_2
		move.w     d4,d1
		bsr        Awi_keyACTool
		move.w     d0,d3
Awi_keyACSwitch_2:
		tst.w      d3
		bpl.s      Awi_keyACSwitch_3
		move.w     d4,d1
		move.w     d5,d0
		movea.l    a2,a0
		bsr        Awi_keyACWork
		move.w     d0,d3
Awi_keyACSwitch_3:
		tst.w      d3
		bpl.s      Awi_keyACSwitch_1
		movea.l    ACSblk,a0
		move.w     1276(a0),d0
		and.w      #$0100,d0
		bne.s      Awi_keyACSwitch_1
		move.w     d4,d1
		movea.l    a2,a0
		move.w     d5,d0
		bsr        Awi_keyACTool
		move.w     d0,d3
Awi_keyACSwitch_1:
		move.w     d3,d0
		movem.l    (a7)+,d3-d5/a2
		rts

Awi_keysend_66:
		.globl Awi_keysend
Awi_keysend:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -294(a7),a7
		movea.l    a0,a2
		move.w     d0,290(a7)
		move.w     d1,d4
		move.w     #$FFFF,286(a7)
		lea.l      18(a7),a3
		lea.l      288(a7),a4
		move.w     86(a2),d0
		and.w      #$0800,d0
		bne        Awi_keysend_1
		moveq.l    #-1,d1
		and.b      d4,d1
		cmp.b      #$0E,d1
		bne.s      Awi_keysend_2
		movea.l    a2,a0
		bsr        Awi_help
		bra        Awi_keysend_3
Awi_keysend_2:
		moveq.l    #8,d0
		and.w      84(a2),d0
		beq        Awi_keysend_4
		move.w     28(a2),d1
		bpl        Awi_keysend_4
		move.l     20(a2),(a3)
		move.l     (a3),d2
		beq        Awi_keysend_1
		tst.w      d1
		ble.s      Awi_keysend_5
		and.w      #$1000,d1
		beq.s      Awi_keysend_5
		jsr        Adr_unselect
Awi_keysend_5:
		move.w     28(a2),d5
		and.w      #$0FFF,d5
		move.w     d5,(a4)
		lea.l      26(a7),a5
		tst.w      d4
		bpl        Awi_keysend_6
		move.b     d4,d0
		ext.w      d0
		cmp.w      #$000F,d0
		bhi        Awi_keysend_7
		add.w      d0,d0
		move.w     J42(pc,d0.w),d0
		jmp        J42(pc,d0.w)
J42:
		dc.w Awi_keysend_7-J42
		dc.w Awi_keysend_8-J42
		dc.w Awi_keysend_9-J42
		dc.w Awi_keysend_10-J42
		dc.w Awi_keysend_11-J42
		dc.w Awi_keysend_7-J42
		dc.w Awi_keysend_7-J42
		dc.w Awi_keysend_12-J42
		dc.w Awi_keysend_7-J42
		dc.w Awi_keysend_7-J42
		dc.w Awi_keysend_13-J42
		dc.w Awi_keysend_7-J42
		dc.w Awi_keysend_12-J42
		dc.w Awi_keysend_13-J42
		dc.w Awi_keysend_7-J42
		dc.w Awi_keysend_14-J42
Awi_keysend_14:
		jsr        Adr_unselect
		bra        Awi_keysend_3
Awi_keysend_13:
		movea.l    ACSblk,a0
		cmpa.l     576(a0),a2
		bne        Awi_keysend_1
		lea.l      614(a0),a0
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		jsr        vq_key_s
		jsr        Adr_start
		bra.s      Awi_keysend_15
Awi_keysend_16:
		move.w     (a4),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a3),a0
		ori.w      #$4000,10(a0,d0.l)
		move.w     (a4),d0
		movea.l    (a3),a1
		movea.l    a2,a0
		jsr        Aob_execute
		move.w     (a4),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a3),a0
		andi.w     #$BFFF,10(a0,d0.l)
		move.w     (a4),d0
		movea.l    a2,a0
		jsr        Adr_del
Awi_keysend_15:
		jsr        Adr_next
		move.w     d0,(a4)
		bmi        Awi_keysend_3
		and.w      #$1000,d0
		beq.s      Awi_keysend_16
		bra        Awi_keysend_3
Awi_keysend_11:
		movea.l    ACSblk,a0
		cmpa.l     576(a0),a2
		bne.s      Awi_keysend_17
		jsr        Adr_start
		jsr        Adr_next
		move.w     d0,(a4)
		bra.s      Awi_keysend_18
Awi_keysend_17:
		clr.w      (a4)
Awi_keysend_18:
		clr.w      d1
		move.w     (a4),d0
		movea.l    a2,a0
		bsr        Awi_prevsel
		move.w     d0,d6
		bra        Awi_keysend_19
Awi_keysend_10:
		movea.l    ACSblk,a0
		cmpa.l     576(a0),a2
		bne.s      Awi_keysend_20
		jsr        Adr_start
		jsr        Adr_next
		move.w     d0,(a4)
		bra.s      Awi_keysend_21
Awi_keysend_20:
		clr.w      (a4)
Awi_keysend_21:
		clr.w      d1
		move.w     (a4),d0
		movea.l    a2,a0
		bsr        Awi_nextsel
		move.w     d0,d6
		bra.s      Awi_keysend_19
Awi_keysend_8:
		movea.l    ACSblk,a0
		cmpa.l     576(a0),a2
		bne.s      Awi_keysend_22
		jsr        Adr_start
		jsr        Adr_next
		move.w     d0,(a4)
		bra.s      Awi_keysend_23
Awi_keysend_22:
		clr.w      (a4)
Awi_keysend_23:
		moveq.l    #1,d1
		move.w     (a4),d0
		movea.l    a2,a0
		bsr        Awi_prevsel
		move.w     d0,d6
		bra.s      Awi_keysend_19
Awi_keysend_9:
		movea.l    ACSblk,a0
		cmpa.l     576(a0),a2
		bne.s      Awi_keysend_24
		jsr        Adr_start
		jsr        Adr_next
		move.w     d0,(a4)
		bra.s      Awi_keysend_25
Awi_keysend_24:
		clr.w      (a4)
Awi_keysend_25:
		moveq.l    #1,d1
		move.w     (a4),d0
		movea.l    a2,a0
		bsr        Awi_nextsel
		move.w     d0,d6
Awi_keysend_19:
		tst.w      d6
		ble        Awi_keysend_1
		move.w     d6,d1
		move.w     (a4),d0
		movea.l    a2,a0
		bsr        Awi_newsel
		bra        Awi_keysend_3
Awi_keysend_12:
		cmp.b      #$0C,d4
		bne.s      Awi_keysend_26
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_27
Awi_keysend_26:
		cmp.b      #$07,d4
		bne.s      Awi_keysend_28
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_28
Awi_keysend_27:
		moveq.l    #1,d0
		bra.s      Awi_keysend_29
Awi_keysend_28:
		clr.w      d0
Awi_keysend_29:
		move.w     d0,292(a7)
		movea.l    ACSblk,a0
		cmpa.l     576(a0),a2
		bne.s      Awi_keysend_30
		tst.w      d0
		beq.s      Awi_keysend_31
		movea.l    (a3),a1
		move.w     2(a1),(a4)
		bra.s      Awi_keysend_32
Awi_keysend_31:
		movea.l    (a3),a0
		move.w     4(a0),(a4)
		move.w     (a4),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     8(a0,d0.l),d2
		and.w      #$8000,d2
		beq.s      Awi_keysend_32
		subq.w     #1,(a4)
Awi_keysend_32:
		move.w     (a4),d0
		ble        Awi_keysend_1
		moveq.l    #1,d1
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		movea.l    (a3),a0
		and.w      8(a0,d2.l),d1
		beq        Awi_keysend_1
		move.w     #$0080,d1
		and.w      8(a0,d2.l),d1
		bne        Awi_keysend_1
Awi_keysend_39:
		move.w     (a4),d1
		moveq.l    #-1,d0
		movea.l    a2,a0
		bsr        Awi_newsel
		bra        Awi_keysend_3
Awi_keysend_30:
		move.w     292(a7),d0
		beq.s      Awi_keysend_33
		movea.l    a2,a0
		movea.l    130(a2),a1
		clr.w      d0
		jsr        (a1)
		bra        Awi_keysend_3
Awi_keysend_33:
		move.w     #$03E8,d0
		movea.l    a2,a0
		movea.l    130(a2),a1
		jsr        (a1)
		bra        Awi_keysend_3
Awi_keysend_7:
		move.w     #$FFFF,(a4)
		bra        Awi_keysend_3
Awi_keysend_6:
		movea.l    (a3),a0
		move.w     2(a0),(a4)
		bra.s      Awi_keysend_34
Awi_keysend_40:
		move.w     #$0080,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		and.w      8(a0,d1.l),d0
		bne.s      Awi_keysend_35
		movea.l    a5,a1
		move.w     (a4),d0
		jsr        Aob_gettext
		move.w     d0,d7
		ble.s      Awi_keysend_35
		clr.w      d3
		bra.s      Awi_keysend_36
Awi_keysend_38:
		addq.w     #1,d3
Awi_keysend_36:
		move.b     0(a5,d3.w),d0
		ext.w      d0
		jsr        isalnum
		tst.w      d0
		bne.s      Awi_keysend_37
		cmp.w      d3,d7
		bgt.s      Awi_keysend_38
Awi_keysend_37:
		cmp.w      d3,d7
		ble.s      Awi_keysend_35
		move.b     d4,d0
		jsr        Ach_toupper
		move.b     d0,-(a7)
		move.b     0(a5,d3.w),d0
		jsr        Ach_toupper
		cmp.b      (a7)+,d0
		beq        Awi_keysend_39
Awi_keysend_35:
		move.w     (a4),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a3),a0
		move.w     0(a0,d0.l),(a4)
Awi_keysend_34:
		move.w     (a4),d0
		bgt.s      Awi_keysend_40
		bra        Awi_keysend_3
Awi_keysend_4:
		lea.l      14(a7),a5
		pea.l      (a4)
		pea.l      (a5)
		movea.l    a3,a1
		movea.l    a2,a0
		bsr        Awi_find_edit
		addq.w     #8,a7
		move.w     (a4),d5
		move.l     (a3),d0
		bne.s      Awi_keysend_41
		move.l     20(a2),(a3)
		move.l     (a3),d0
		bne.s      Awi_keysend_42
		move.l     24(a2),(a3)
		move.l     (a3),d0
		beq        Awi_keysend_1
		clr.l      (a5)
		bra.s      Awi_keysend_41
Awi_keysend_42:
		move.l     24(a2),(a5)
Awi_keysend_41:
		cmp.b      #$0D,d4
		beq.s      Awi_keysend_43
		cmp.b      #$0A,d4
		bne.w      Awi_keysend_44
Awi_keysend_43:
		moveq.l    #2,d1
		moveq.l    #-1,d0
		movea.l    (a3),a0
		jsr        Aob_findflag
		move.w     d0,d6
		tst.w      d0
		bmi.s      Awi_keysend_45
		move.w     #$0080,d1
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		movea.l    (a3),a0
		and.w      8(a0,d2.l),d1
		beq.s      Awi_keysend_46
Awi_keysend_45:
		move.l     (a5),d0
		beq        Awi_keysend_1
		moveq.l    #2,d1
		movea.l    d0,a0
		moveq.l    #-1,d0
		jsr        Aob_findflag
		move.w     d0,d6
		tst.w      d0
		bmi        Awi_keysend_1
		move.w     #$0080,d1
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		movea.l    (a3),a0
		and.w      8(a0,d2.l),d1
		bne        Awi_keysend_1
		movea.l    (a5),a1
		movea.l    a2,a0
		move.w     d6,d0
		jsr        Aob_execute
		bra.s      Awi_keysend_47
Awi_keysend_46:
		move.w     d6,d0
		movea.l    (a3),a1
		movea.l    a2,a0
		jsr        Aob_execute
Awi_keysend_47:
		move.w     d6,d0
		bra        Awi_keysend_48
Awi_keysend_44:
		cmp.b      #$09,d4
		bne.s      Awi_keysend_49
		move.w     d4,d0
		and.w      #$0400,d0
		beq.s      Awi_keysend_50
		movea.l    (a3),a1
		movea.l    a2,a0
		bsr        Aob_chdef
		tst.w      d0
		beq.s      Awi_keysend_51
		move.l     (a5),d0
		beq        Awi_keysend_3
		movea.l    d0,a1
		movea.l    a2,a0
		bsr        Aob_chdef
		tst.w      d0
		bne        Awi_keysend_3
Awi_keysend_51:
		subq.w     #1,286(a7)
		bra        Awi_keysend_3
Awi_keysend_50:
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_52
		move.w     #$8001,d4
		bra.s      Awi_keysend_49
Awi_keysend_52:
		move.w     #$8002,d4
Awi_keysend_49:
		pea.l      (a4)
		pea.l      (a5)
		movea.l    a3,a1
		movea.l    a2,a0
		bsr        Awi_find_edit
		addq.w     #8,a7
		tst.w      d0
		bne.s      Awi_keysend_53
		move.w     d4,d1
		move.w     290(a7),d0
		movea.l    a2,a0
		bsr        Awi_keyACSwitch
		move.w     d0,(a4)
		tst.w      d0
		bpl.s      Awi_keysend_54
Awi_keysend_1:
		moveq.l    #-1,d0
		add.w      286(a7),d0
		bra        Awi_keysend_48
Awi_keysend_54:
		move.w     (a4),d0
		bra        Awi_keysend_48
Awi_keysend_53:
		move.w     (a4),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a3),a0
		movea.l    12(a0,d0.l),a5
		cmpa.l     open_dialog,a2
		beq.s      Awi_keysend_55
		bsr        Awi_diaend
Awi_keysend_55:
		move.l     a2,4(a7)
		move.w     (a4),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a3),a0
		adda.l     d0,a0
		move.l     a0,8(a7)
		move.w     (a4),12(a7)
		lea.l      4(a7),a1
		movea.l    8(a5),a6
		moveq.l    #9,d0
		jsr        (a6)
		tst.w      d4
		bpl        Awi_keysend_56
		move.b     d4,d0
		ext.w      d0
		cmp.w      #$001F,d0
		beq        Awi_keysend_57
		bgt.s      Awi_keysend_58
		cmp.w      #$001B,d0
		bhi        Awi_keysend_56
		add.w      d0,d0
		move.w     J43(pc,d0.w),d0
		jmp        J43(pc,d0.w)
J43:
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_59-J43
		dc.w Awi_keysend_60-J43
		dc.w Awi_keysend_61-J43
		dc.w Awi_keysend_62-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_63-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_64-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_56-J43
		dc.w Awi_keysend_65-J43
Awi_keysend_58:
		cmp.w      #$0063,d0
		beq        Awi_keysend_68
		bgt.s      Awi_keysend_99
		sub.w      #$0043,d0
		beq        Awi_keysend_68
		sub.w      #$0013,d0
		beq        Awi_keysend_67
		subq.w     #2,d0
		beq        Awi_keysend_68
		bra        Awi_keysend_56
Awi_keysend_99:
		sub.w      #$0076,d0
		beq        Awi_keysend_67
		subq.w     #2,d0
		beq        Awi_keysend_68
		bra        Awi_keysend_56
Awi_keysend_61:
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_69
		suba.l     a1,a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		moveq.l    #15,d0
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_69:
		move.w     d4,d0
		and.w      #$0400,d0
		beq.s      Awi_keysend_71
		suba.l     a1,a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		move.w     #$02BE,d0
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_71:
		suba.l     a1,a1
		move.w     #$02BC,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_62:
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_72
		suba.l     a1,a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		moveq.l    #14,d0
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_72:
		move.w     d4,d0
		and.w      #$0400,d0
		beq.s      Awi_keysend_73
		suba.l     a1,a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		move.w     #$02BF,d0
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_73:
		suba.l     a1,a1
		move.w     #$02BD,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_63:
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_74
		suba.l     a1,a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		move.w     #$02C6,d0
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_74:
		move.w     d4,d0
		and.w      #$0400,d0
		beq.s      Awi_keysend_75
		suba.l     a1,a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		move.w     #$02C5,d0
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_75:
		suba.l     a1,a1
		move.w     #$02C4,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_57:
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_76
		suba.l     a1,a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		move.w     #$02C9,d0
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_76:
		move.w     d4,d0
		and.w      #$0400,d0
		beq        Awi_keysend_77
		suba.l     a1,a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		move.w     #$02C8,d0
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_65:
		suba.l     a1,a1
		move.w     #$02CA,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a6
		jsr        (a6)
		bra        Awi_keysend_70
Awi_keysend_59:
		moveq.l    #-1,d6
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_78
Awi_keysend_84:
		movea.l    a2,a0
		bsr        Awi_firstedit
		move.w     d0,d6
		bra.s      Awi_keysend_79
Awi_keysend_81:
		move.w     d5,d6
Awi_keysend_78:
		moveq.l    #8,d1
		move.w     d6,d0
		movea.l    (a3),a0
		jsr        Aob_findflag
		move.w     d0,d5
		ble.s      Awi_keysend_80
		cmp.w      (a4),d0
		blt.s      Awi_keysend_81
Awi_keysend_80:
		tst.w      d6
		bpl.s      Awi_keysend_82
		movea.l    a2,a0
		bsr        Awi_lastedit
		move.w     d0,d6
		bra.s      Awi_keysend_82
Awi_keysend_60:
		moveq.l    #-1,d6
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_83
		movea.l    a2,a0
		bsr        Awi_lastedit
		move.w     d0,d6
		bra.s      Awi_keysend_79
Awi_keysend_83:
		moveq.l    #8,d1
		move.w     (a4),d0
		movea.l    (a3),a0
		jsr        Aob_findflag
		move.w     d0,d6
		tst.w      d0
		bmi.s      Awi_keysend_84
Awi_keysend_82:
		movea.l    24(a2),a0
		cmpa.l     (a3),a0
		bne.s      Awi_keysend_79
		or.w       #$1000,d6
Awi_keysend_79:
		move.w     d6,d1
		move.w     (a4),d0
		movea.l    a2,a0
		bsr        Awi_focuschg
		tst.w      d0
		bne        Awi_keysend_70
		subq.w     #1,286(a7)
		bra        Awi_keysend_70
Awi_keysend_64:
		suba.l     a1,a1
		move.w     #$02CC,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		jsr        (a2)
		bra        Awi_keysend_70
Awi_keysend_68:
		move.w     d4,d0
		and.w      #$0400,d0
		beq        Awi_keysend_56
		lea.l      22(a7),a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		moveq.l    #3,d0
		jsr        (a2)
		tst.w      d0
		beq        Awi_keysend_56
		lea.l      282(a7),a1
		move.w     #$02C3,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		jsr        (a2)
		tst.w      d0
		beq        Awi_keysend_56
		move.w     d4,d0
		and.w      #$0300,d0
		bne.s      Awi_keysend_85
		suba.l     a0,a0
		jsr        Ascrp_clear
Awi_keysend_85:
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      Awi_keysend_86
		moveq.l    #1,d1
		bra.s      Awi_keysend_87
Awi_keysend_86:
		clr.w      d1
Awi_keysend_87:
		move.w     d1,-(a7)
		movea.l    24(a7),a0
		jsr        strlen
		movea.l    24(a7),a1
		lea.l      xd3d87,a0
		move.w     (a7)+,d1
		jsr        Ascrp_put
		cmp.b      #$78,d4
		beq.s      Awi_keysend_88
		cmp.b      #$58,d4
		bne        Awi_keysend_70
Awi_keysend_88:
		move.w     284(a7),d0
		cmp.w      282(a7),d0
		ble.s      Awi_keysend_89
Awi_keysend_77:
		suba.l     a1,a1
		move.w     #$02C7,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		jsr        (a2)
		bra        Awi_keysend_70
Awi_keysend_89:
		lea.l      xd3d86,a1
		moveq.l    #4,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		jsr        (a2)
		bra.s      Awi_keysend_70
Awi_keysend_67:
		move.w     d4,d0
		and.w      #$0400,d0
		beq.s      Awi_keysend_56
		pea.l      (a7)
		lea.l      26(a7),a1
		lea.l      xd3d87,a0
		jsr        Ascrp_get
		addq.w     #4,a7
		tst.w      d0
		beq.s      Awi_keysend_56
		move.l     (a7),d0
		ble.s      Awi_keysend_90
		movea.l    22(a7),a1
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		move.w     #$02C1,d0
		jsr        (a2)
Awi_keysend_90:
		movea.l    22(a7),a0
		jsr        Ax_free
		bra.s      Awi_keysend_70
Awi_keysend_56:
		move.b     d4,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a1
		adda.l     d1,a1
		movea.l    a5,a0
		bsr        Awi_char
Awi_keysend_70:
		suba.l     a1,a1
		moveq.l    #5,d0
		move.w     (a4),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a3),a0
		adda.l     d1,a0
		movea.l    8(a5),a2
		jsr        (a2)
Awi_keysend_3:
		move.w     286(a7),d0
Awi_keysend_48:
		lea.l      294(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

		.globl Awi_scroll
Awi_scroll:
		movem.l    d3-d5/a2-a6,-(a7)
		lea.l      -32(a7),a7
		movea.l    a0,a2
		move.w     32(a2),d3
		tst.w      d3
		bmi        Awi_scroll_1
		move.w     d0,d4
		movea.l    20(a2),a1
		sub.w      16(a1),d4
		move.w     d1,d5
		sub.w      18(a1),d5
		lea.l      8(a7),a3
		move.w     #$0080,d0
		and.w      84(a2),d0
		bne.w      Awi_scroll_2
		cmp.w      56(a2),d4
		bge.s      Awi_scroll_2
		move.w     56(a2),d1
		neg.w      d1
		cmp.w      d1,d4
		ble.s      Awi_scroll_2
		cmp.w      58(a2),d5
		bge.s      Awi_scroll_2
		move.w     58(a2),d2
		neg.w      d2
		cmp.w      d2,d5
		ble.s      Awi_scroll_2
		pea.l      6(a3)
		pea.l      4(a3)
		pea.l      2(a3)
		pea.l      (a3)
		move.w     d3,d0
		moveq.l    #11,d1
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     4(a3),d0
		beq        Awi_scroll_1
		move.w     6(a3),d1
		beq        Awi_scroll_1
		pea.l      6(a7)
		pea.l      8(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		move.w     d3,d0
		moveq.l    #12,d1
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     4(a7),d0
		bne.s      Awi_scroll_2
		move.w     6(a7),d1
		beq.s      Awi_scroll_3
Awi_scroll_2:
		lea.l      52(a2),a1
		movea.l    a2,a0
		movea.l    106(a2),a4
		jsr        (a4)
		bra        Awi_scroll_1
Awi_scroll_3:
		lea.l      ACSblk,a4
		movea.l    (a4),a1
		addq.w     #8,a1
		movea.l    a3,a0
		jsr        intersect
		lea.l      52(a2),a1
		movea.l    a3,a0
		jsr        intersect
		move.w     4(a3),d0
		beq        Awi_scroll_1
		move.w     6(a3),d1
		beq        Awi_scroll_1
		lea.l      16(a7),a5
		move.w     (a3),d0
		move.w     d0,8(a5)
		move.w     d0,(a5)
		move.w     2(a3),d1
		move.w     d1,10(a5)
		move.w     d1,2(a5)
		move.w     (a3),d0
		add.w      4(a3),d0
		subq.w     #1,d0
		move.w     d0,12(a5)
		move.w     d0,4(a5)
		move.w     2(a3),d1
		add.w      6(a3),d1
		subq.w     #1,d1
		move.w     d1,14(a5)
		move.w     d1,6(a5)
		tst.w      d4
		beq.s      Awi_scroll_4
		tst.w      d4
		ble.s      Awi_scroll_5
		add.w      d4,(a5)
		sub.w      d4,12(a5)
		moveq.l    #1,d0
		add.w      12(a5),d0
		move.w     d0,(a3)
		move.w     d4,4(a3)
		bra.s      Awi_scroll_4
Awi_scroll_5:
		add.w      d4,4(a5)
		sub.w      d4,8(a5)
		move.w     d4,d0
		neg.w      d0
		move.w     d0,4(a3)
Awi_scroll_4:
		tst.w      d5
		beq.s      Awi_scroll_6
		tst.w      d5
		ble.s      Awi_scroll_7
		add.w      d5,2(a5)
		sub.w      d5,14(a5)
		moveq.l    #1,d0
		add.w      14(a5),d0
		move.w     d0,2(a3)
		move.w     d5,6(a3)
		bra.s      Awi_scroll_6
Awi_scroll_7:
		add.w      d5,6(a5)
		sub.w      d5,10(a5)
		move.w     d5,d0
		neg.w      d0
		move.w     d0,6(a3)
Awi_scroll_6:
		move.w     (a5),d0
		cmp.w      4(a5),d0
		bgt.s      Awi_scroll_8
		move.w     2(a5),d1
		cmp.w      6(a5),d1
		bgt.s      Awi_scroll_8
		movea.l    a5,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		clr.w      d1
		jsr        vs_clip
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		movea.l    (a4),a0
		pea.l      618(a0)
		movea.l    a0,a1
		lea.l      618(a1),a1
		movea.l    a5,a0
		moveq.l    #3,d1
		movea.l    (a4),a6
		move.w     16(a6),d0
		jsr        vro_cpyfm
		addq.w     #4,a7
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
Awi_scroll_8:
		movea.l    a3,a1
		movea.l    a2,a0
		movea.l    106(a2),a4
		jsr        (a4)
Awi_scroll_1:
		lea.l      32(a7),a7
		movem.l    (a7)+,d3-d5/a2-a6
		rts

		.globl Aob_flags
Aob_flags:
		movem.l    d3-d5/a2-a3,-(a7)
		movea.l    a0,a3
		move.w     d0,d3
		move.w     d1,d5
		move.w     d2,d4
		suba.l     a2,a2
		and.w      #$1000,d0
		beq.s      Aob_flags_1
		move.l     24(a3),d2
		beq.s      Aob_flags_2
		move.w     d3,d0
		and.w      #$0FFF,d0
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		movea.l    d2,a2
		adda.l     d1,a2
		bra.s      Aob_flags_2
Aob_flags_1:
		move.l     20(a3),d0
		beq.s      Aob_flags_2
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    d0,a2
		adda.l     d1,a2
Aob_flags_2:
		move.l     a2,d0
		beq.s      Aob_flags_3
		tst.w      d4
		beq.s      Aob_flags_4
		or.w       d5,8(a2)
		bra.s      Aob_flags_5
Aob_flags_4:
		move.w     d5,d0
		not.w      d0
		and.w      d0,8(a2)
Aob_flags_5:
		move.w     32(a3),d0
		bmi.s      Aob_flags_6
		moveq.l    #32,d1
		and.w      86(a3),d1
		bne.s      Aob_flags_6
		movea.l    a3,a0
		movea.l    102(a3),a1
		move.w     d3,d0
		moveq.l    #-1,d1
		jsr        (a1)
Aob_flags_6:
		move.w     8(a2),d0
		bra.s      Aob_flags_7
Aob_flags_3:
		clr.w      d0
Aob_flags_7:
		movem.l    (a7)+,d3-d5/a2-a3
		rts

		.globl Aob_state
Aob_state:
		movem.l    d3-d5/a2-a3,-(a7)
		movea.l    a0,a3
		move.w     d0,d3
		move.w     d1,d5
		move.w     d2,d4
		suba.l     a2,a2
		and.w      #$1000,d0
		beq.s      Aob_state_1
		move.l     24(a3),d1
		beq.s      Aob_state_2
		move.w     d3,d0
		and.w      #$0FFF,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		movea.l    d1,a2
		adda.l     d2,a2
		bra.s      Aob_state_2
Aob_state_1:
		move.l     20(a3),d0
		beq.s      Aob_state_2
		move.w     d3,d2
		and.w      #$0FFF,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    d0,a2
		adda.l     d1,a2
Aob_state_2:
		move.l     a2,d0
		beq.s      Aob_state_3
		tst.w      d4
		beq.s      Aob_state_4
		or.w       d5,10(a2)
		bra.s      Aob_state_5
Aob_state_4:
		move.w     d5,d0
		not.w      d0
		and.w      d0,10(a2)
Aob_state_5:
		move.w     32(a3),d0
		bmi.s      Aob_state_6
		moveq.l    #32,d1
		and.w      86(a3),d1
		bne.s      Aob_state_6
		movea.l    a3,a0
		movea.l    102(a3),a1
		move.w     d3,d0
		moveq.l    #-1,d1
		jsr        (a1)
Aob_state_6:
		move.w     10(a2),d0
		bra.s      Aob_state_7
Aob_state_3:
		clr.w      d0
Aob_state_7:
		movem.l    (a7)+,d3-d5/a2-a3
		rts

		.globl Aob_service
Aob_service:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		move.w     d1,d4
		movea.l    a1,a4
		movea.l    ACSblk,a1
		movea.l    572(a1),a0
		move.w     14(a0),d2
		and.w      #$0200,d2
		bne.s      Aob_service_1
		move.l     a2,d0
		beq.s      Aob_service_2
Aob_service_1:
		move.w     d3,d1
		and.w      #$0FFF,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		adda.l     d0,a2
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		move.w     14(a1),d2
		and.w      #$0200,d2
		bne.s      Aob_service_3
		cmpi.b     #$18,7(a2)
		bne.s      Aob_service_2
Aob_service_3:
		movea.l    12(a2),a3
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$0200,d0
		bne.s      Aob_service_4
		move.l     8(a3),d1
		beq.s      Aob_service_2
Aob_service_4:
		movea.l    a4,a1
		move.w     d4,d0
		movea.l    a2,a0
		movea.l    8(a3),a5
		jsr        (a5)
		bra.s      Aob_service_5
Aob_service_2:
		clr.w      d0
Aob_service_5:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

		.globl Awi_observice
Awi_observice:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		move.w     d1,d4
		movea.l    a1,a3
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		move.w     14(a1),d2
		and.w      #$0200,d2
		bne.s      Awi_observice_1
		move.l     a2,d0
		beq.s      Awi_observice_2
Awi_observice_1:
		move.w     d3,d0
		and.w      #$1000,d0
		beq.s      Awi_observice_3
		movea.l    a3,a1
		move.w     d4,d1
		movea.l    24(a2),a0
		move.w     d3,d0
		bsr        Aob_service
		bra.s      Awi_observice_4
Awi_observice_3:
		movea.l    a3,a1
		move.w     d4,d1
		move.w     d3,d0
		movea.l    20(a2),a0
		bsr        Aob_service
		bra.s      Awi_observice_4
Awi_observice_2:
		clr.w      d0
Awi_observice_4:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

	.IFNE 0 /* only in lib */
		.globl Aob_help
Aob_help:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		bsr.w      Awi_help
		rts
	.ENDC

		.globl Aob_visible
Aob_visible:
		movem.l    d3-d4/a2,-(a7)
		movea.l    a0,a2
		moveq.l    #1,d3
		move.w     d0,d4
		bra.s      Aob_visible_1
Aob_visible_4:
		move.w     #$0080,d0
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a2,d1.l),d0
		beq.s      Aob_visible_2
		clr.w      d3
Aob_visible_2:
		move.w     d4,d0
		movea.l    a2,a0
		jsr        Aob_up
		move.w     d0,d4
Aob_visible_1:
		tst.w      d4
		bmi.s      Aob_visible_3
		tst.w      d3
		bne.s      Aob_visible_4
Aob_visible_3:
		move.w     d3,d0
		movem.l    (a7)+,d3-d4/a2
		rts

		.globl Awi_obvisible
Awi_obvisible:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		move.l     a2,d1
		beq.s      Awi_obvisible_1
		tst.w      d0
		bmi.s      Awi_obvisible_1
		move.w     32(a2),d2
		bmi.s      Awi_obvisible_1
		move.w     86(a2),d1
		and.w      #$3800,d1
		beq.s      Awi_obvisible_2
Awi_obvisible_1:
		clr.w      d0
		bra.s      Awi_obvisible_3
Awi_obvisible_2:
		move.w     d3,d0
		and.w      #$1000,d0
		beq.s      Awi_obvisible_4
		move.l     24(a2),d1
		beq.s      Awi_obvisible_4
		move.w     d3,d0
		and.w      #$0FFF,d0
		movea.l    d1,a0
		bsr.w      Aob_visible
		bra.s      Awi_obvisible_3
Awi_obvisible_4:
		move.w     d3,d0
		movea.l    20(a2),a0
		bsr        Aob_visible
Awi_obvisible_3:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.data

open_dialog:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
last_edit:
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
xd3d72:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
xd3d7a:
		dc.w $2000
xd3d7c:
		dc.b 'Window-Lib'
xd3d86:
		dc.b 0
xd3d87:
		dc.b 'txt',0
		.even
