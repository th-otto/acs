
edmo_backcol:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    ACSblk,a0
		movea.l    604(a0),a1
		movea.l    804(a1),a2
		lea.l      12(a2),a2
		moveq.l    #19,d0
		move.w     d0,-(a7)
		moveq.l    #20,d2
		moveq.l    #17,d1
		move.w     (a2),d0
		asr.w      #8,d0
		and.w      #$000F,d0
		jsr        oe_colsel
		addq.w     #2,a7
		move.w     d0,d3
		bmi.s      edmo_backcol_1
		move.w     (a2),d1
		and.w      #$F0FF,d1
		lsl.w      #8,d0
		or.w       d0,d1
		move.w     d1,(a2)
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		movea.l    ACSblk,a1
		movea.l    600(a1),a2
		movea.l    102(a2),a1
		moveq.l    #32,d0
		moveq.l    #-1,d1
		jsr        (a1)
edmo_backcol_1:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

edmo_frontcol:
		move.l     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    ACSblk,a0
		movea.l    604(a0),a1
		movea.l    804(a1),a2
		lea.l      12(a2),a2
		moveq.l    #13,d0
		move.w     d0,-(a7)
		moveq.l    #14,d2
		moveq.l    #11,d1
		move.w     (a2),d0
		moveq.l    #12,d3
		asr.w      d3,d0
		and.w      #$000F,d0
		jsr        oe_colsel
		addq.w     #2,a7
		move.w     d0,d3
		bmi.s      edmo_frontcol_1
		move.w     (a2),d1
		and.w      #$0FFF,d1
		moveq.l    #12,d2
		lsl.w      d2,d0
		or.w       d0,d1
		move.w     d1,(a2)
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		movea.l    ACSblk,a1
		movea.l    600(a1),a2
		movea.l    102(a2),a1
		moveq.l    #32,d0
		moveq.l    #-1,d1
		jsr        (a1)
edmo_frontcol_1:
		movea.l    (a7)+,a2
		move.l     (a7)+,d3
		rts

edmo_black:
		move.l     a2,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    20(a2),a0
		move.w     #$0008,740(a0)
		andi.w     #$FF8F,518(a0)
		ori.w      #$0070,518(a0)
		moveq.l    #-1,d1
		moveq.l    #21,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
		movea.l    (a7)+,a2
		rts

edmo_white:
		move.l     a2,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    20(a2),a0
		move.w     #$0009,740(a0)
		andi.w     #$FF8F,518(a0)
		moveq.l    #-1,d1
		moveq.l    #21,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
		movea.l    (a7)+,a2
		rts

edmo_invisible:
		move.l     a2,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    20(a2),a0
		move.w     #$000A,740(a0)
		andi.w     #$FF8F,518(a0)
		ori.w      #$0040,518(a0)
		moveq.l    #-1,d1
		moveq.l    #21,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
		movea.l    (a7)+,a2
		rts

edmo_next:
		movea.l    ACSblk,a0
		movea.l    604(a0),a1
		movea.l    780(a1),a0
		addq.w     #4,a0
		move.w     2(a0),d0
		add.w      #$0010,d0
		and.w      #$0070,d0
		andi.w     #$FF8F,2(a0)
		or.w       d0,2(a0)
		moveq.l    #-1,d1
		moveq.l    #32,d0
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		movea.l    ACSblk,a1
		movea.l    600(a1),a1
		movea.l    102(a1),a1
		jsr        (a1)
		rts

edmo_x:
		movem.l    d3/a2-a3,-(a7)
		subq.w     #4,a7
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    20(a2),a3
		move.w     610(a0),d3
		move.l     _globl,-(a7)
		pea.l      4(a7)
		lea.l      10(a7),a1
		move.w     608(a0),d0
		movea.l    a3,a0
		jsr        mt_objc_offset
		addq.w     #8,a7
		move.w     d3,d0
		sub.w      52(a2),d0
		sub.w      2(a7),d0
		ext.l      d0
		divs.w     #$0008,d0
		and.w      #$000F,d0
		lsl.w      #3,d0
		move.w     d0,d3
		cmp.w      616(a3),d0
		beq.s      edmo_x_1
		ori.w      #$0080,608(a3)
		movea.l    a2,a0
		moveq.l    #25,d0
		jsr        Awi_obredraw
		andi.w     #$FF7F,608(a3)
		move.w     d3,616(a3)
		moveq.l    #-1,d1
		moveq.l    #25,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
edmo_x_1:
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a3
		rts

edmo_y:
		movem.l    d3/a2-a3,-(a7)
		subq.w     #4,a7
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    20(a2),a3
		move.w     612(a0),d3
		move.l     _globl,-(a7)
		pea.l      4(a7)
		lea.l      10(a7),a1
		move.w     608(a0),d0
		movea.l    a3,a0
		jsr        mt_objc_offset
		addq.w     #8,a7
		move.w     d3,d0
		sub.w      54(a2),d0
		sub.w      (a7),d0
		ext.l      d0
		divs.w     #$0008,d0
		and.w      #$000F,d0
		lsl.w      #3,d0
		move.w     d0,d3
		cmp.w      690(a3),d0
		beq.s      edmo_y_1
		ori.w      #$0080,680(a3)
		movea.l    a2,a0
		moveq.l    #28,d0
		jsr        Awi_obredraw
		andi.w     #$FF7F,680(a3)
		move.w     d3,690(a3)
		moveq.l    #-1,d1
		moveq.l    #28,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
edmo_y_1:
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a3
		rts

edmo_set:
		movem.l    a2-a5,-(a7)
		lea.l      -28(a7),a7
		movea.l    ACSblk,a0
		movea.l    600(a0),a3
		move.l     20(a3),(a7)
		move.w     608(a0),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a7),a1
		move.w     10(a1,d0.l),d2
		and.w      #$4000,d2
		beq.s      edmo_set_1
		move.w     740(a1),d0
		subq.w     #8,d0
		beq.s      edmo_set_2
		subq.w     #1,d0
		beq.s      edmo_set_3
		subq.w     #1,d0
		beq.s      edmo_set_4
		bra        edmo_set_5
edmo_set_2:
		bsr        edmo_white
		bra        edmo_set_5
edmo_set_3:
		bsr        edmo_invisible
		bra        edmo_set_5
edmo_set_4:
		bsr        edmo_black
		bra        edmo_set_5
edmo_set_1:
		movea.l    ACSblk,a0
		move.w     610(a0),22(a7)
		move.w     612(a0),20(a7)
		move.l     (a3),24(a7)
edmo_set_15:
		lea.l      8(a7),a4
		move.l     _globl,-(a7)
		pea.l      20(a7)
		lea.l      26(a7),a1
		movea.l    ACSblk,a0
		move.w     608(a0),d0
		movea.l    8(a7),a0
		jsr        mt_objc_offset
		addq.w     #8,a7
		move.w     22(a7),d0
		sub.w      52(a3),d0
		sub.w      18(a7),d0
		ext.l      d0
		divs.w     #$0008,d0
		move.w     d0,22(a7)
		move.w     20(a7),d1
		sub.w      54(a3),d1
		sub.w      16(a7),d1
		ext.l      d1
		divs.w     #$0008,d1
		move.w     d1,20(a7)
		tst.w      d0
		bmi        edmo_set_5
		tst.w      d1
		bmi        edmo_set_5
		cmp.w      #$000F,d0
		bgt        edmo_set_5
		cmp.w      #$000F,d1
		bgt        edmo_set_5
		lsl.w      #3,d0
		add.w      52(a3),d0
		add.w      18(a7),d0
		move.w     d0,(a4)
		lsl.w      #3,d1
		add.w      54(a3),d1
		add.w      16(a7),d1
		move.w     d1,2(a4)
		moveq.l    #8,d2
		move.w     d2,6(a4)
		move.w     d2,4(a4)
		move.w     20(a7),d0
		ext.l      d0
		add.l      d0,d0
		movea.l    24(a7),a2
		lea.l      8(a2,d0.l),a2
		lea.l      32(a2),a5
		moveq.l    #1,d0
		moveq.l    #15,d1
		sub.b      23(a7),d1
		lsl.w      d1,d0
		movea.l    (a7),a0
		move.w     518(a0),d2
		lsr.w      #4,d2
		and.w      #$0007,d2
		tst.w      d2
		beq.s      edmo_set_6
		subq.w     #4,d2
		beq.s      edmo_set_7
		subq.w     #3,d2
		beq.s      edmo_set_8
		bra.s      edmo_set_9
edmo_set_8:
		move.w     (a5),d1
		and.w      d0,d1
		beq.s      edmo_set_10
		move.w     (a2),d2
		and.w      d0,d2
		bne        edmo_set_11
edmo_set_10:
		or.w       d0,(a5)
		bra.s      edmo_set_12
edmo_set_6:
		move.w     (a5),d1
		and.w      d0,d1
		bne.s      edmo_set_13
		move.w     (a2),d2
		and.w      d0,d2
		bne.s      edmo_set_11
edmo_set_13:
		move.w     d0,d1
		not.w      d1
		and.w      d1,(a5)
edmo_set_12:
		or.w       d0,(a2)
		bra.s      edmo_set_9
edmo_set_7:
		move.w     (a5),d1
		and.w      d0,d1
		bne.s      edmo_set_14
		move.w     (a2),d2
		and.w      d0,d2
		beq.s      edmo_set_11
edmo_set_14:
		move.w     d0,d1
		not.w      d1
		and.w      d1,(a5)
		and.w      d1,(a2)
edmo_set_9:
		movea.l    a4,a1
		movea.l    a3,a0
		movea.l    106(a3),a2
		jsr        (a2)
		move.l     _globl,-(a7)
		pea.l      20(a7)
		lea.l      26(a7),a1
		moveq.l    #33,d0
		movea.l    8(a7),a0
		jsr        mt_objc_offset
		addq.w     #8,a7
		move.w     52(a3),d0
		add.w      22(a7),d0
		add.w      18(a7),d0
		move.w     d0,(a4)
		move.w     54(a3),d1
		add.w      20(a7),d1
		add.w      16(a7),d1
		move.w     d1,2(a4)
		moveq.l    #1,d2
		move.w     d2,6(a4)
		move.w     d2,4(a4)
		movea.l    a4,a1
		movea.l    a3,a0
		movea.l    106(a3),a2
		jsr        (a2)
edmo_set_11:
		move.l     _globl,-(a7)
		pea.l      8(a7)
		pea.l      14(a7)
		lea.l      32(a7),a1
		lea.l      34(a7),a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		moveq.l    #1,d0
		and.w      6(a7),d0
		bne        edmo_set_15
edmo_set_5:
		lea.l      28(a7),a7
		movem.l    (a7)+,a2-a5
		rts

edmo_abort:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        term
		rts

edmo_ok:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        acc_mouse
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        term
		rts

edmo_bitmap:
		movem.l    d2-d6/a2-a5,-(a7)
		lea.l      -32(a7),a7
		movea.l    72(a7),a0
		move.w     22(a0),4(a7)
		move.w     24(a0),6(a7)
		lea.l      ACSblk,a4
		move.w     4(a7),d0
		bne.s      edmo_bitmap_1
		move.w     6(a7),d1
		beq.s      edmo_bitmap_2
edmo_bitmap_1:
		movea.l    72(a7),a0
		move.w     18(a0),(a7)
		move.w     20(a0),2(a7)
		moveq.l    #-1,d0
		add.w      (a7),d0
		add.w      d0,4(a7)
		moveq.l    #-1,d0
		add.w      2(a7),d0
		add.w      d0,6(a7)
		lea.l      (a7),a0
		moveq.l    #1,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
edmo_bitmap_2:
		movea.l    72(a7),a0
		movea.l    26(a0),a0
		movea.l    (a0),a0
		lea.l      8(a0),a1
		move.l     a1,24(a7)
		lea.l      32(a1),a1
		move.l     a1,28(a7)
		lea.l      8(a7),a5
		clr.w      (a5)
		clr.w      2(a5)
		move.w     #$0007,4(a5)
		move.w     #$0007,6(a5)
		movea.l    72(a7),a0
		move.w     12(a0),10(a5)
		moveq.l    #7,d0
		add.w      12(a0),d0
		move.w     d0,14(a5)
		clr.w      d3
		lea.l      color,a2
		bra        edmo_bitmap_3
edmo_bitmap_11:
		move.w     14(a5),d0
		cmp.w      2(a7),d0
		blt        edmo_bitmap_4
		move.w     10(a5),d1
		cmp.w      6(a7),d1
		bgt        edmo_bitmap_4
		movea.l    72(a7),a0
		move.w     10(a0),8(a5)
		moveq.l    #7,d0
		add.w      10(a0),d0
		move.w     d0,12(a5)
		movea.l    28(a7),a1
		addq.l     #2,28(a7)
		move.w     (a1),d4
		movea.l    24(a7),a1
		addq.l     #2,24(a7)
		move.w     (a1),d5
		moveq.l    #15,d6
		bra        edmo_bitmap_5
edmo_bitmap_9:
		move.w     12(a5),d0
		cmp.w      (a7),d0
		blt.w      edmo_bitmap_6
		move.w     8(a5),d1
		cmp.w      4(a7),d1
		bgt.s      edmo_bitmap_6
		move.w     d4,d2
		and.w      #$8000,d2
		beq.s      edmo_bitmap_7
		pea.l      (a2)
		movea.l    (a4),a0
		pea.l      618(a0)
		lea.l      -92(a2),a1
		movea.l    a5,a0
		movea.l    (a4),a3
		move.w     16(a3),d0
		moveq.l    #1,d1
		jsr        vrt_cpyfm
		addq.w     #8,a7
		bra.s      edmo_bitmap_6
edmo_bitmap_7:
		move.w     d5,d0
		and.w      #$8000,d0
		beq.s      edmo_bitmap_8
		pea.l      (a2)
		movea.l    (a4),a0
		pea.l      618(a0)
		lea.l      -56(a2),a1
		movea.l    a5,a0
		moveq.l    #1,d1
		movea.l    (a4),a3
		move.w     16(a3),d0
		jsr        vrt_cpyfm
		addq.w     #8,a7
		bra.s      edmo_bitmap_6
edmo_bitmap_8:
		pea.l      (a2)
		movea.l    (a4),a0
		pea.l      618(a0)
		lea.l      -20(a2),a1
		movea.l    a5,a0
		moveq.l    #1,d1
		movea.l    (a4),a3
		move.w     16(a3),d0
		jsr        vrt_cpyfm
		addq.w     #8,a7
edmo_bitmap_6:
		add.w      d4,d4
		add.w      d5,d5
		addq.w     #8,8(a5)
		addq.w     #8,12(a5)
		subq.w     #1,d6
edmo_bitmap_5:
		tst.w      d6
		bpl        edmo_bitmap_9
		bra.s      edmo_bitmap_10
edmo_bitmap_4:
		addq.l     #2,28(a7)
		addq.l     #2,24(a7)
edmo_bitmap_10:
		addq.w     #8,10(a5)
		addq.w     #8,14(a5)
		addq.w     #1,d3
edmo_bitmap_3:
		cmp.w      #$0010,d3
		blt        edmo_bitmap_11
		lea.l      (a7),a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
		movea.l    72(a7),a0
		move.w     8(a0),d0
		lea.l      32(a7),a7
		movem.l    (a7)+,d2-d6/a2-a5
		rts

acc_mouse:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    (a0),a2
		movea.l    (a2),a1
		ori.w      #$0001,6(a1)
		movea.l    4(a2),a1
		movea.l    20(a0),a0
		movea.l    4(a1),a3
		movea.l    804(a0),a1
		move.w     12(a1),d0
		asr.w      #8,d0
		and.w      #$000F,d0
		move.w     d0,6(a3)
		move.w     12(a1),d1
		moveq.l    #12,d2
		asr.w      d2,d1
		and.w      #$000F,d1
		move.w     d1,8(a3)
		move.w     616(a0),d0
		ext.l      d0
		divs.w     #$0008,d0
		move.w     d0,(a3)
		move.w     690(a0),d1
		ext.l      d1
		divs.w     #$0008,d1
		move.w     d1,2(a3)
		moveq.l    #64,d0
		lea.l      8(a2),a1
		lea.l      10(a3),a0
		jsr        memcpy
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

mo_make:
		movem.l    a2-a4,-(a7)
		subq.w     #4,a7
		movea.l    a0,a2
		movea.l    4(a2),a3
		movea.l    18(a3),a4
		move.l     a4,d0
		beq.s      mo_make_1
		movea.l    a4,a0
		jsr        Awi_show
		bra.s      mo_make_2
mo_make_1:
		moveq.l    #72,d0
		jsr        Ax_malloc
		move.l     a0,(a7)
		move.l     a0,d0
		beq.s      mo_make_3
		move.l     (a2),(a0)
		move.l     4(a2),4(a0)
		lea.l      22(a3),a1
		move.l     a1,WI_MOUSE+78
		movea.l    WI_MOUSE+90,a0
		move.l     a1,8(a0)
		lea.l      WI_MOUSE,a0
		jsr        Awi_create
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      mo_make_3
		movea.l    (a2),a1
		pea.l      360(a1)
		lea.l      58(a3),a1
		jsr        wi_pos
		addq.w     #4,a7
		move.l     (a7),(a4)
		move.l     a4,18(a3)
		movea.l    a4,a0
		jsr        set_mouse
		movea.l    a4,a0
		movea.l    12(a4),a1
		jsr        (a1)
		tst.w      d0
		beq.s      mo_make_2
		movea.l    a4,a0
		jsr        term
mo_make_3:
		suba.l     a0,a0
		bra.s      mo_make_4
mo_make_2:
		movea.l    a4,a0
mo_make_4:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a4
		rts

mo_service:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		movea.l    a1,a4
		movea.l    (a0),a3
		subq.w     #2,d0
		beq.s      mo_service_1
		sub.w      #$270E,d0
		beq.s      mo_service_2
		bra.s      mo_service_3
mo_service_1:
		movea.l    a2,a0
		bsr        acc_mouse
		movea.l    a2,a0
		jsr        term
		bra.s      mo_service_4
mo_service_2:
		movea.l    4(a3),a1
		movea.l    a2,a0
		jsr        new_name
		bra.s      mo_service_4
mo_service_3:
		movea.l    a4,a1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Awi_service
		bra.s      mo_service_5
mo_service_4:
		moveq.l    #1,d0
mo_service_5:
		movem.l    (a7)+,d3/a2-a4
		rts

set_mouse:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		move.l     (a0),4(a7)
		movea.l    4(a7),a1
		movea.l    4(a1),a0
		move.l     4(a0),(a7)
		movea.l    20(a2),a0
		moveq.l    #127,d0
		lea.l      528(a0),a1
		lea.l      696(a0),a4
		movea.l    12(a4),a3
		move.l     a2,4(a3)
		move.w     d0,d1
		add.w      16(a4),d1
		addq.w     #1,d1
		move.w     d1,20(a1)
		move.w     d0,d2
		add.w      18(a4),d2
		addq.w     #1,d2
		move.w     d2,22(a1)
		move.w     d0,22(a4)
		move.w     d0,20(a4)
		move.w     18(a1),d1
		add.w      22(a1),d1
		movea.l    ACSblk,a3
		add.w      20(a3),d1
		cmp.w      22(a0),d1
		ble.s      set_mouse_1
		move.w     d1,22(a0)
set_mouse_1:
		lea.l      552(a0),a4
		move.w     d0,20(a4)
		lea.l      600(a0),a4
		move.w     #$0008,20(a4)
		movea.l    (a7),a1
		move.w     (a1),d1
		lsl.w      #3,d1
		move.w     d1,16(a4)
		lea.l      624(a0),a4
		move.w     d0,22(a4)
		lea.l      672(a0),a4
		move.w     #$0008,22(a4)
		move.w     2(a1),d0
		lsl.w      #3,d0
		move.w     d0,18(a4)
		lea.l      792(a0),a4
		moveq.l    #16,d0
		move.w     d0,22(a4)
		move.w     d0,20(a4)
		movea.l    12(a4),a3
		move.w     8(a1),d1
		lsl.w      #4,d1
		add.w      6(a1),d1
		lsl.w      #8,d1
		move.w     d1,12(a3)
		movea.l    4(a7),a0
		addq.w     #8,a0
		move.l     a0,(a3)
		movea.l    4(a7),a4
		lea.l      40(a4),a4
		move.l     a4,4(a3)
		clr.w      26(a3)
		move.w     #$0012,28(a3)
		move.w     #$0010,30(a3)
		move.w     #$0002,32(a3)
		moveq.l    #64,d0
		lea.l      10(a1),a1
		jsr        memcpy
		move.w     12(a3),d3
		moveq.l    #12,d0
		asr.w      d0,d3
		and.w      #$000F,d3
		move.w     d3,d1
		ext.l      d1
		lsl.l      #2,d1
		lea.l      colour_text,a0
		movea.l    0(a0,d1.l),a1
		movea.l    20(a2),a0
		moveq.l    #14,d0
		jsr        Aob_puttext
		movea.l    20(a2),a0
		move.w     d3,d0
		andi.w     #$FFF0,326(a0)
		and.w      #$000F,d0
		or.w       d0,326(a0)
		move.w     12(a3),d3
		asr.w      #8,d3
		and.w      #$000F,d3
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      colour_text,a0
		movea.l    0(a0,d0.l),a1
		movea.l    20(a2),a0
		moveq.l    #20,d0
		jsr        Aob_puttext
		movea.l    20(a2),a0
		move.w     d3,d0
		andi.w     #$FFF0,470(a0)
		and.w      #$000F,d0
		or.w       d0,470(a0)
		addq.w     #8,a7
		movem.l    (a7)+,d3/a2-a4
		rts

term:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		ori.w      #$0100,86(a2)
		movea.l    (a0),a3
		move.w     86(a2),d0
		and.w      #$0800,d0
		beq.s      term_1
		lea.l      44(a2),a1
		movea.l    4(a3),a0
		lea.l      58(a0),a0
		moveq.l    #8,d0
		jsr        memcpy
		bra.s      term_2
term_1:
		moveq.l    #8,d0
		lea.l      36(a2),a1
		movea.l    4(a3),a0
		lea.l      58(a0),a0
		jsr        memcpy
term_2:
		movea.l    4(a3),a0
		clr.l      18(a0)
		movea.l    a3,a0
		jsr        Ax_free
		movea.l    a2,a0
		jsr        Awi_closed
		movea.l    a2,a0
		jsr        Awi_delete
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

	.data
TEXT_001:
		dc.b 'Abbruch',0
TEXT_002:
		dc.b $00
TEXT_003:
		dc.b $4f
		dc.w $4b00
TEXT_01:
		dc.b 'neues Muster',0
TEXT_03:
		dc.b 'Pinsel:',0
TEXT_04:
		dc.b ' Maus-Editor ',0
TEXT_05:
		dc.b 'Beispiel:',0
TEXT_09:
		dc.b 'hinten:',0
TEXT_10:
		dc.b 'vorne:',0
TEXT_18:
		dc.b 'Farbe:',0
TEXT_210:
		dc.b 'M�USE',0
		dc.b $00
A_3DBUTTON01:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_001
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
A_3DBUTTON03:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_003
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
A_3DBUTTON04:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_01
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
A_3DBUTTON05:
		dc.l A_3Dbutton
		dc.w $2000
		dc.w $91c8
		dc.l Auo_string
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
A_3DBUTTON06:
		dc.l A_3Dbutton
		dc.w $a021
		dc.w $91f8
		dc.l Auo_string
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
A_3DBUTTON07:
		dc.l A_3Dbutton
		dc.w $21f1
		dc.w $0178
		dc.l Auo_string
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
A_3DBUTTON27:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
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
A_ARROWS02:
		dc.l A_arrows
		dc.w $1301
		dc.b $00
		dc.b $01
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
A_INNERFRAME02:
		dc.l A_innerframe
		dc.w $1000
		dc.w $8f19
		dc.l Auo_string
		dc.l TEXT_18
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
A_INNERFRAME03:
		dc.l A_innerframe
		dc.w $1000
		dc.w $8f19
		dc.l Auo_string
		dc.l TEXT_03
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
A_INNERFRAME04:
		dc.l A_innerframe
		dc.w $1000
		dc.w $8f19
		dc.l Auo_string
		dc.l TEXT_05
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
USER_004:
		dc.l edmo_bitmap
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
_MSK_IC_MOUSE:
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
		dc.w $0200
		dc.w $0100
		dc.w $1c00
		dc.w $0700
		dc.w $0380
		dc.w $3e00
		dc.w $0780
		dc.w $0380
		dc.w $3e00
		dc.w $07c0
		dc.w $0380
		dc.w $ff80
		dc.w $07e0
		dc.w $1ff1
		dc.w $ffc0
		dc.w $07f0
		dc.w $3ff9
		dc.w $ffc0
		dc.w $07e0
		dc.w $1ff1
		dc.w $ffc0
		dc.w $07e0
		dc.w $0380
		dc.w $ff80
		dc.w $02e0
		dc.w $0380
		dc.w $3e00
		dc.b $00
		dc.b $40
		dc.w $0380
		dc.w $3e00
		dc.b $00
		dc.b $00
		dc.w $0100
		dc.w $1c00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $03fc
		dc.b $00
		dc.b $00
		dc.w $1c00
		dc.w $07fe
		dc.w $06c0
		dc.w $3e00
		dc.w $07fe
		dc.w $0fe0
		dc.w $7f00
		dc.w $07fe
		dc.w $07c0
		dc.w $2700
		dc.w $03fc
		dc.w $0380
		dc.w $0700
		dc.w $01f8
		dc.w $0380
		dc.w $0e00
		dc.b $00
		dc.b $f0
		dc.w $0380
		dc.w $1c00
		dc.w $01f8
		dc.w $0380
		dc.w $1c00
		dc.w $03fc
		dc.w $0380
		dc.w $0800
		dc.w $07fe
		dc.w $07c0
		dc.w $1c00
		dc.w $07fe
		dc.w $0fe0
		dc.w $1c00
		dc.w $07fe
		dc.w $06c0
		dc.w $0800
		dc.w $03fc
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
_DAT_IC_MOUSE:
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
		dc.w $0200
		dc.w $0100
		dc.w $1c00
		dc.w $0300
		dc.w $0100
		dc.w $1c00
		dc.w $0380
		dc.w $0100
		dc.w $1c00
		dc.w $03c0
		dc.w $0100
		dc.w $f780
		dc.w $03e0
		dc.w $1ef0
		dc.w $e380
		dc.w $0380
		dc.w $0100
		dc.w $f780
		dc.w $02c0
		dc.w $0100
		dc.w $1c00
		dc.b $00
		dc.b $40
		dc.w $0100
		dc.w $1c00
		dc.b $00
		dc.b $00
		dc.w $0100
		dc.w $1c00
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
		dc.w $03fc
		dc.b $00
		dc.b $00
		dc.w $1c00
		dc.w $0204
		dc.w $06c0
		dc.w $2200
		dc.w $0204
		dc.w $0100
		dc.w $0200
		dc.w $01b8
		dc.w $0100
		dc.w $0200
		dc.b $00
		dc.b $f0
		dc.w $0100
		dc.w $0400
		dc.b $00
		dc.b $60
		dc.w $0100
		dc.w $0800
		dc.b $00
		dc.b $f0
		dc.w $0100
		dc.w $0800
		dc.w $0148
		dc.w $0100
		dc.b $00
		dc.b $00
		dc.w $0244
		dc.w $0100
		dc.w $0800
		dc.w $02f4
		dc.w $06c0
		dc.w $0800
		dc.w $03fc
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
IC_MOUSE:
		dc.l _MSK_IC_MOUSE
		dc.l _DAT_IC_MOUSE
		dc.l TEXT_210
		dc.w $1000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $30
		dc.b $00
		dc.b $1e
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $48
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_MSK_MOUSEDUMMY:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
_DAT_MOUSEDUMMY:
		dc.w $7ffe
		dc.w $bffd
		dc.w $dffb
		dc.w $eff7
		dc.w $f7ef
		dc.w $fbdf
		dc.w $fdbf
		dc.w $fe7f
		dc.w $fe7f
		dc.w $fdbf
		dc.w $fbdf
		dc.w $f7ef
		dc.w $eff7
		dc.w $dffb
		dc.w $bffd
		dc.w $7ffe
MOUSEDUMMY:
		dc.l _MSK_MOUSEDUMMY
		dc.l _DAT_MOUSEDUMMY
		dc.l TEXT_002
		dc.w $1000
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
EDIT_MOUSE:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $26
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON07
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $32
		dc.b $00
		dc.b $0d
_01_EDIT_MOUSE:
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $03
_02_EDIT_MOUSE:
		dc.b $00
		dc.b $04
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.w $0171
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_02aEDIT_MOUSE:
		dc.l edmo_black
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.b $00
		dc.b $53
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
_04_EDIT_MOUSE:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.w $1170
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_04aEDIT_MOUSE:
		dc.l edmo_white
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.b $00
		dc.b $57
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
_06_EDIT_MOUSE:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.w $1141
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_06aEDIT_MOUSE:
		dc.l edmo_invisible
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.b $00
		dc.b $54
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
_08_EDIT_MOUSE:
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME02
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
_09_EDIT_MOUSE:
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_10
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_10_EDIT_MOUSE:
		dc.b $00
		dc.b $09
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_ARROWS02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
_11_EDIT_MOUSE:
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $ff
		dc.w $1101
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $12
		dc.b $00
		dc.b $01
_11aEDIT_MOUSE:
		dc.l edmo_frontcol
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8856
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
_13_EDIT_MOUSE:
		dc.b $00
		dc.b $0e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.w $1171
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_14_EDIT_MOUSE:
		dc.b $00
		dc.b $0b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON27
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $01
_15_EDIT_MOUSE:
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_09
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_16_EDIT_MOUSE:
		dc.b $00
		dc.b $0f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_ARROWS02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
_17_EDIT_MOUSE:
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $13
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $ff
		dc.w $1101
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $12
		dc.b $00
		dc.b $01
_17aEDIT_MOUSE:
		dc.l edmo_backcol
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8848
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
_19_EDIT_MOUSE:
		dc.b $00
		dc.b $14
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.w $1171
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_20_EDIT_MOUSE:
		dc.b $00
		dc.b $11
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON27
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $01
_21_EDIT_MOUSE:
		dc.b $00
		dc.b $16
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.w $1171
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_22_EDIT_MOUSE:
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $1d
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON06
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $12
		dc.b $00
		dc.b $0a
_23_EDIT_MOUSE:
		dc.b $00
		dc.b $1a
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.w $5601
		dc.w $1101
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $01
_23aEDIT_MOUSE:
		dc.l edmo_x
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
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
_25_EDIT_MOUSE:
		dc.b $00
		dc.b $17
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $5601
		dc.w $1141
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_26_EDIT_MOUSE:
		dc.b $00
		dc.b $1d
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.w $1101
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $09
_26aEDIT_MOUSE:
		dc.l edmo_y
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
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
_28_EDIT_MOUSE:
		dc.b $00
		dc.b $1a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $5601
		dc.w $1141
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_29_EDIT_MOUSE:
		dc.b $00
		dc.b $16
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l USER_004
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $09
_29aEDIT_MOUSE:
		dc.l edmo_set
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
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
		dc.b $00
		dc.b $00
_31_EDIT_MOUSE:
		dc.b $00
		dc.b $24
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $22
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME04
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
_32_EDIT_MOUSE:
		dc.b $00
		dc.b $22
		dc.b $00
		dc.b $21
		dc.b $00
		dc.b $21
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $03
_33_EDIT_MOUSE:
		dc.b $00
		dc.b $20
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l MOUSEDUMMY
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_34_EDIT_MOUSE:
		dc.b $00
		dc.b $1f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON04
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $02
_34aEDIT_MOUSE:
		dc.l edmo_next
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
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
_36_EDIT_MOUSE:
		dc.b $00
		dc.b $26
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON03
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_36aEDIT_MOUSE:
		dc.l edmo_ok
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $884f
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
_38_EDIT_MOUSE:
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON01
		dc.b $00
		dc.b $24
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_38aEDIT_MOUSE:
		dc.l edmo_abort
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8020
		dc.w $8841
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
WI_MOUSE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l mo_service
		dc.l mo_make
		dc.l Awi_open
		dc.l Awi_init
		dc.l EDIT_MOUSE
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $601f
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $63
		dc.b $00
		dc.b $63
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
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $fcf8
		dc.l TEXT_04
		dc.l TEXT_002
		dc.w $2710
		dc.w $0100
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.l IC_MOUSE
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Awi_keys
		dc.l Awi_obchange
		dc.l Awi_redraw
		dc.l Awi_topped
		dc.l Awi_closed
		dc.l Awi_fulled
		dc.l Awi_arrowed
		dc.l Awi_hslid
		dc.l Awi_vslid
		dc.l Awi_sized
		dc.l Awi_moved
		dc.l Awi_iconify
		dc.l Awi_uniconify
		dc.l Awi_gemscript
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
blackim:
		dc.b $00
		dc.b $00
		dc.w $fe00
		dc.w $fe00
		dc.w $fe00
		dc.w $fe00
		dc.w $fe00
		dc.w $fe00
		dc.w $fe00
black:
		dc.l blackim
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
whiteim:
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
white:
		dc.l whiteim
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
invisiim:
		dc.b $00
		dc.b $00
		dc.w $aa00
		dc.w $5400
		dc.w $aa00
		dc.w $5400
		dc.w $aa00
		dc.w $5400
		dc.w $aa00
invisible:
		dc.l invisiim
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
color:
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
