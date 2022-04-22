
		.globl Aev_unhidepointer
Aev_unhidepointer:
		move.w     hidepointer,d0
		beq.s      Aev_unhidepointer_1
		clr.w      hidepointer
		jsr        Amo_show
Aev_unhidepointer_1:
		rts

		.globl Aev_quit
Aev_quit:
		moveq.l    #1,d0
		move.w     d0,exitapp
		movea.l    ACSblk,a0
		move.w     d0,570(a0)
		rts

IsDeadKey:
		movem.l    d3-d5/a2-a5,-(a7)
		movea.l    a0,a5
		move.w     d0,d4
		movea.l    a1,a2
		clr.w      d3
		move.w     d0,(a1)
		lea.l      dead_key,a3
		move.w     -2(a3),d0
		beq.s      IsDeadKey_1
		clr.w      d0
		bra        IsDeadKey_2
IsDeadKey_1:
		move.w     #$0001,-2(a3)
		move.w     (a3),d0
		beq        IsDeadKey_3
		moveq.l    #-1,d0
		and.b      1(a3),d0
		ext.w      d0
		lea.l      -84(a3),a0
		jsr        strchr
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      IsDeadKey_4
		move.l     a4,d5
		sub.l      #DeadKeys,d5
		moveq.l    #-1,d0
		and.b      d4,d0
		ext.w      d0
		move.w     d5,d1
		lsl.w      #3,d1
		movea.l    -74(a3,d1.w),a0
		jsr        strchr
		movea.l    a0,a4
		move.w     d4,d0
		and.w      #$8000,d0
		bne.s      IsDeadKey_5
		move.l     a4,d1
		beq.s      IsDeadKey_5
		moveq.l    #-1,d0
		and.b      1(a3),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      1266(a0),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      IsDeadKey_5
		move.l     a4,d0
		move.w     d5,d1
		lsl.w      #3,d1
		sub.l      -74(a3,d1.w),d0
		movea.l    -70(a3,d1.w),a0
		move.b     0(a0,d0.w),d2
		ext.w      d2
		move.w     d2,(a2)
		bra.s      IsDeadKey_4
IsDeadKey_5:
		movea.l    ACSblk,a0
		move.w     (a3),718(a0)
		movea.l    a5,a0
		jsr        evkeybrd
		move.w     d4,(a2)
IsDeadKey_4:
		clr.w      (a3)
		bra.s      IsDeadKey_6
IsDeadKey_3:
		move.w     d4,d0
		and.w      #$8000,d0
		bne.s      IsDeadKey_6
		moveq.l    #-1,d0
		and.b      d4,d0
		ext.w      d0
		lea.l      -84(a3),a0
		jsr        strchr
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      IsDeadKey_6
		moveq.l    #-1,d0
		and.b      d4,d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      1266(a0),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      IsDeadKey_6
		move.w     d4,(a3)
		clr.w      (a2)
		moveq.l    #1,d3
IsDeadKey_6:
		clr.w      -2(a3)
		move.w     d3,d0
IsDeadKey_2:
		movem.l    (a7)+,d3-d5/a2-a5
		rts

		.globl evkeybrd
evkeybrd:
		movem.l    d3/a2-a6,-(a7)
		lea.l      -18(a7),a7
		movea.l    a0,a5
		lea.l      xd3812,a1
		lea.l      (a7),a0
		moveq.l    #15,d0
evkeybrd_1:
		move.b     (a1)+,(a0)+
		dbf        d0,evkeybrd_1
		moveq.l    #-1,d3
		suba.l     a3,a3
		lea.l      ACSblk,a4
		movea.l    (a4),a1
		lea.l      718(a1),a1
		movea.l    (a4),a0
		move.w     718(a0),d0
		movea.l    a5,a0
		bsr        IsDeadKey
		tst.w      d0
		beq.s      evkeybrd_2
		clr.w      d0
		bra        evkeybrd_3
evkeybrd_2:
		jsr        Awi_root
		movea.l    a0,a2
		move.l     a5,d0
		bne.s      evkeybrd_4
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      28(a7)
		moveq.l    #10,d1
		clr.w      d0
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     16(a7),d0
		jsr        Awi_wid
		movea.l    a0,a5
		move.l     a5,d0
		bne.s      evkeybrd_4
		move.w     _ACSv_wmenu,d1
		bne.s      evkeybrd_4
		move.w     32(a2),d2
		bpl.s      evkeybrd_5
		movea.l    12(a2),a1
		movea.l    a2,a0
		jsr        (a1)
evkeybrd_5:
		moveq.l    #-1,d0
		bra        evkeybrd_3
evkeybrd_4:
		movea.l    (a4),a1
		lea.l      718(a1),a1
		movea.l    (a4),a0
		lea.l      614(a0),a0
		movea.l    (a4),a6
		movea.l    694(a6),a6
		jsr        (a6)
		movea.l    (a4),a0
		move.w     718(a0),d0
		beq        evkeybrd_6
		and.w      #$0C00,d0
		cmp.w      #$0C00,d0
		bne.s      evkeybrd_7
		move.b     719(a0),d1
		ext.w      d1
		sub.w      #$0051,d1
		beq.s      evkeybrd_8
		bra.s      evkeybrd_7
evkeybrd_8:
		move.w     quote,d0
		bne.s      evkeybrd_7
		move.w     #$0001,quote
		bra        evkeybrd_6
evkeybrd_7:
		move.w     hidepointer,d0
		bne.s      evkeybrd_9
		moveq.l    #8,d1
		movea.l    (a4),a0
		movea.l    572(a0),a1
		and.w      14(a1),d1
		beq.s      evkeybrd_9
		move.w     #$0001,hidepointer
		jsr        Amo_hide
evkeybrd_9:
		move.w     quote,d0
		bne        evkeybrd_10
		move.l     a5,d1
		beq        evkeybrd_11
		jsr        Awi_modal
		move.l     a0,d0
		bne.s      evkeybrd_12
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a5,a0
		jsr        Ame_key
		move.w     d0,d3
		bpl        evkeybrd_6
evkeybrd_12:
		move.w     #$0080,d0
		movea.l    (a4),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      evkeybrd_13
		jsr        Awi_modal
		move.l     a0,d0
		bne.s      evkeybrd_14
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a2,a0
		jsr        Ame_key
		move.w     d0,d3
		bpl        evkeybrd_6
evkeybrd_14:
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a5,a0
		jsr        Aob_tobkey
		move.w     d0,d3
		bpl        evkeybrd_6
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a5,a0
		jsr        Aob_wobkey
		move.w     d0,d3
		bpl        evkeybrd_6
		bra.s      evkeybrd_11
evkeybrd_13:
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a5,a0
		jsr        Aob_tobkey
		move.w     d0,d3
		bpl        evkeybrd_6
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a5,a0
		jsr        Aob_wobkey
		move.w     d0,d3
		bpl        evkeybrd_6
		jsr        Awi_modal
		move.l     a0,d0
		bne.s      evkeybrd_11
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a2,a0
		jsr        Ame_key
		move.w     d0,d3
		bpl        evkeybrd_6
evkeybrd_11:
		jsr        Awi_modal
		move.l     a0,d0
		bne.s      evkeybrd_10
		move.l     a2,d0
		beq.s      evkeybrd_10
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a2,a0
		jsr        Ame_key
		move.w     d0,d3
		bpl.s      evkeybrd_10
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a2,a0
		jsr        Aob_tobkey
		move.w     d0,d3
		bpl        evkeybrd_6
		movea.l    (a4),a0
		move.w     718(a0),d1
		move.w     614(a0),d0
		movea.l    a2,a0
		jsr        Aob_wobkey
		move.w     d0,d3
		bpl        evkeybrd_6
evkeybrd_10:
		movea.l    (a4),a1
		lea.l      718(a1),a1
		movea.l    (a4),a0
		lea.l      614(a0),a0
		movea.l    (a4),a2
		movea.l    706(a2),a2
		jsr        (a2)
		movea.l    (a4),a0
		move.w     718(a0),d0
		beq.w      evkeybrd_6
		move.l     a5,d1
		beq.s      evkeybrd_15
		move.w     d0,d1
		move.w     614(a0),d0
		movea.l    98(a5),a1
		movea.l    a5,a0
		jsr        (a1)
		move.w     d0,d3
evkeybrd_15:
		cmp.w      #$FFFF,d3
		bge.s      evkeybrd_16
		lea.l      _globl,a2
		bra.s      evkeybrd_17
evkeybrd_18:
		moveq.l    #4,d0
		and.l      2(a3),d0
		beq.s      evkeybrd_17
		moveq.l    #1,d1
		and.w      12(a3),d1
		beq.s      evkeybrd_17
		move.w     #$4710,(a7)
		movea.l    (a4),a0
		move.w     (a0),2(a7)
		move.w     614(a0),6(a7)
		move.w     718(a0),d0
		jsr        nkc_n2gem
		move.w     d0,8(a7)
		movea.l    (a2),a1
		lea.l      (a7),a0
		moveq.l    #16,d1
		move.w     (a3),d0
		jsr        mt_appl_write
		bra.s      evkeybrd_16
evkeybrd_17:
		movea.l    a3,a0
		jsr        Ash_nextdd
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      evkeybrd_18
evkeybrd_16:
		clr.w      quote
evkeybrd_6:
		move.w     d3,d0
evkeybrd_3:
		lea.l      18(a7),a7
		movem.l    (a7)+,d3/a2-a6
		rts

		.globl ev_dobutton
ev_dobutton:
		movem.l    d3-d7/a2-a5,-(a7)
		subq.w     #8,a7
		movea.l    a0,a3
		movea.l    a1,a5
		move.w     d0,d4
		move.w     d1,d5
		move.w     d2,6(a7)
		move.w     50(a7),d3
		move.w     #$FFFF,4(a7)
		move.w     d1,-(a7)
		movea.l    a1,a0
		clr.w      d0
		moveq.l    #8,d1
		move.w     d4,d2
		jsr        Adr_find
		addq.w     #2,a7
		move.w     d0,d4
		lea.l      ACSblk,a2
		tst.w      d4
		bmi        ev_dobutton_1
		clr.w      d5
		move.w     d5,d6
		move.w     d4,d7
		bra.s      ev_dobutton_2
ev_dobutton_4:
		move.w     d7,d0
		movea.l    a5,a0
		jsr        Aob_up
		move.w     d0,d7
ev_dobutton_2:
		tst.w      d7
		bmi.s      ev_dobutton_3
		move.w     d7,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     8(a5,d0.l),d2
		and.w      #$2049,d2
		beq.s      ev_dobutton_4
ev_dobutton_3:
		tst.w      d7
		bmi.s      ev_dobutton_5
		move.w     d7,d4
ev_dobutton_5:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      0(a5,d0.l),a4
		cmpi.w     #$0002,6(a7)
		bge        ev_dobutton_6
		move.w     8(a4),d2
		and.w      #$2049,d2
		bne.s      ev_dobutton_7
		movea.l    (a2),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		jsr        Adr_box
		bra.w      ev_dobutton_1
ev_dobutton_7:
		move.w     8(a4),d0
		and.w      #$205D,d0
		subq.w     #1,d0
		beq.s      ev_dobutton_8
		move.w     8(a4),d1
		and.w      #$2000,d1
		beq.s      ev_dobutton_9
		moveq.l    #1,d2
		and.w      10(a4),d2
		beq.s      ev_dobutton_10
		moveq.l    #3,d7
		movea.l    (a2),a0
		and.w      614(a0),d7
		beq.s      ev_dobutton_11
ev_dobutton_8:
		moveq.l    #1,d5
		bra.s      ev_dobutton_6
ev_dobutton_11:
		movea.l    (a2),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		jsr        Adr_drag
		bra.s      ev_dobutton_1
ev_dobutton_10:
		moveq.l    #3,d0
		movea.l    (a2),a0
		and.w      614(a0),d0
		beq.s      ev_dobutton_12
		moveq.l    #1,d5
		move.w     d5,d6
		bra.s      ev_dobutton_6
ev_dobutton_12:
		jsr        Adr_unselect
		bra.s      ev_dobutton_6
ev_dobutton_9:
		moveq.l    #4,d0
		and.w      8(a4),d0
		beq.s      ev_dobutton_6
		move.w     d3,d0
		or.w       d4,d0
		movea.l    a3,a0
		jsr        Aob_watch
		tst.w      d0
		bne.s      ev_dobutton_6
ev_dobutton_1:
		moveq.l    #-1,d0
		bra        ev_dobutton_13
ev_dobutton_6:
		cmpi.w     #$0002,6(a7)
		blt.s      ev_dobutton_14
		moveq.l    #1,d1
		bra.s      ev_dobutton_15
ev_dobutton_14:
		clr.w      d1
ev_dobutton_15:
		move.w     d4,d0
		movea.l    a5,a1
		movea.l    a3,a0
		jsr        Aob_select
		tst.w      d0
		beq.s      ev_dobutton_16
		move.w     d3,d0
		or.w       d4,d0
		move.w     d0,4(a7)
ev_dobutton_16:
		tst.w      d5
		beq.s      ev_dobutton_17
		moveq.l    #2,d3
ev_dobutton_19:
		lea.l      2(a7),a4
		lea.l      _globl,a3
		subq.w     #1,d3
		movea.l    (a3),a0
		moveq.l    #10,d0
		jsr        mt_evnt_timer
		move.l     (a3),-(a7)
		pea.l      (a4)
		pea.l      8(a7)
		movea.l    a4,a1
		movea.l    a4,a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		move.w     (a7),d0
		move.w     48(a7),d1
		eor.w      d1,d0
		and.w      #$0001,d0
		bne.s      ev_dobutton_18
		tst.w      d3
		bgt.s      ev_dobutton_19
		tst.w      d6
		beq.s      ev_dobutton_19
ev_dobutton_18:
		tst.w      d6
		beq.s      ev_dobutton_17
		tst.w      d3
		bgt.s      ev_dobutton_17
		movea.l    (a2),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		jsr        Adr_drag
ev_dobutton_17:
		move.w     4(a7),d0
ev_dobutton_13:
		addq.w     #8,a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

		.globl evmwheel
evmwheel:
		movem.l    d3-d5/a2-a3,-(a7)
		movea.l    a0,a3
		move.w     d0,d4
		move.w     d1,d3
		movea.l    _globl,a0
		jsr        mt_wind_find
		move.w     d0,d5
		tst.w      d0
		bmi.s      evmwheel_1
		jsr        Awi_wid
		movea.l    a0,a2
		bra.s      evmwheel_2
evmwheel_1:
		jsr        Awi_ontop
		movea.l    a0,a2
evmwheel_2:
		move.l     a2,d0
		beq.s      evmwheel_3
		move.w     d3,d1
		movea.l    a3,a1
		movea.l    a2,a0
		move.w     d4,d0
		jsr        Awi_wheeled
		bra.s      evmwheel_4
evmwheel_3:
		clr.w      d0
evmwheel_4:
		movem.l    (a7)+,d3-d5/a2-a3
		rts

		.globl evbutton
evbutton:
		movem.l    d3-d7/a2-a4,-(a7)
		subq.w     #8,a7
		move.w     d0,6(a7)
		move.w     d1,4(a7)
		clr.w      d3
		bsr        Aev_unhidepointer
		lea.l      ACSblk,a2
		lea.l      4(a7),a1
		lea.l      6(a7),a0
		movea.l    (a2),a3
		movea.l    698(a3),a3
		jsr        (a3)
		movea.l    _globl,a0
		movea.l    (a2),a1
		move.w     612(a1),d1
		move.w     610(a1),d0
		jsr        mt_wind_find
		move.w     d0,d4
		jsr        Awi_wid
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      evbutton_1
		jsr        Awi_modal
		move.l     a0,d0
		beq.s      evbutton_2
		cmpa.l     d0,a3
		beq.s      evbutton_2
		jsr        Awi_up_modal
evbutton_1:
		moveq.l    #-1,d0
		bra        evbutton_3
evbutton_2:
		movea.l    (a2),a0
		move.w     612(a0),d5
		sub.w      54(a3),d5
		move.w     610(a0),d6
		sub.w      52(a3),d6
		moveq.l    #2,d0
		and.w      6(a7),d0
		beq        evbutton_4
		lea.l      2(a7),a4
		move.l     _globl,-(a7)
		pea.l      (a4)
		pea.l      8(a7)
		movea.l    a4,a1
		movea.l    a4,a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		moveq.l    #2,d0
		and.w      (a7),d0
		beq.s      evbutton_5
		move.l     _globl,-(a7)
		pea.l      (a4)
		pea.l      (a4)
		pea.l      (a4)
		pea.l      16(a7)
		pea.l      (a4)
		pea.l      ($000000FA).w
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
		movea.l    a4,a1
		suba.l     a0,a0
		moveq.l    #2,d2
		clr.w      d1
		moveq.l    #34,d0
		jsr        mt_evnt_multi
		lea.l      50(a7),a7
		move.w     d0,d7
		bra.s      evbutton_6
evbutton_5:
		moveq.l    #2,d7
evbutton_6:
		moveq.l    #2,d0
		and.w      d7,d0
		beq.s      evbutton_7
		movea.l    (a2),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		movea.l    a3,a0
		jsr        Awi_bubblegem
		move.w     d0,d3
		bra.s      evbutton_8
evbutton_7:
		moveq.l    #32,d0
		and.w      d7,d0
		beq.s      evbutton_8
		movea.l    (a2),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		movea.l    a3,a0
		jsr        Awi_context
		move.w     d0,d3
evbutton_8:
		tst.w      d3
		bne        evbutton_9
		moveq.l    #2,d0
		and.w      d7,d0
		beq.s      evbutton_10
		movea.l    (a2),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		movea.l    a3,a0
		jsr        Awi_context
		move.w     d0,d3
		bra        evbutton_9
evbutton_10:
		moveq.l    #32,d0
		and.w      d7,d0
		beq        evbutton_9
		movea.l    (a2),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		movea.l    a3,a0
		jsr        Awi_bubblegem
		move.w     d0,d3
		bra        evbutton_9
evbutton_4:
		tst.w      d5
		bpl.s      evbutton_11
		movea.l    24(a3),a4
		move.l     a4,d0
		beq.s      evbutton_12
		cmp.w      18(a4),d5
		blt.s      evbutton_12
		move.w     #$1000,-(a7)
		move.w     8(a7),-(a7)
		move.w     8(a7),d2
		move.w     d5,d1
		movea.l    a4,a1
		movea.l    a3,a0
		move.w     d6,d0
		bsr        ev_dobutton
		addq.w     #4,a7
		bra.s      evbutton_3
evbutton_12:
		moveq.l    #1,d0
		movea.l    (a2),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      evbutton_13
		tst.w      d4
		beq.s      evbutton_13
		move.w     612(a0),d1
		move.w     610(a0),d0
		movea.l    a3,a0
		jsr        Ame_drop
evbutton_13:
		moveq.l    #-1,d3
		bra.s      evbutton_9
evbutton_11:
		movea.l    (a2),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		lea.l      52(a3),a0
		jsr        Aob_within
		tst.w      d0
		beq.s      evbutton_9
		move.l     20(a3),d0
		beq.s      evbutton_9
		clr.w      -(a7)
		move.w     8(a7),-(a7)
		move.w     8(a7),d2
		move.w     d5,d1
		movea.l    d0,a1
		movea.l    a3,a0
		move.w     d6,d0
		bsr        ev_dobutton
		addq.w     #4,a7
		move.w     d0,d3
evbutton_9:
		move.w     d3,d0
evbutton_3:
		addq.w     #8,a7
		movem.l    (a7)+,d3-d7/a2-a4
		rts

		.globl evmouse
evmouse:
		movem.l    d3-d5/a2-a4,-(a7)
		subq.w     #2,a7
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		movea.l    702(a0),a0
		jsr        (a0)
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      12(a7)
		moveq.l    #10,d1
		clr.w      d0
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     (a7),d0
		jsr        Awi_wid
		movea.l    a0,a3
		move.l     a3,d0
		beq        evmouse_1
		jsr        Awi_modal
		move.l     a0,d0
		beq.s      evmouse_2
		cmpa.l     d0,a3
		beq.s      evmouse_2
		jsr        Awi_up_modal
		bra        evmouse_1
evmouse_2:
		movea.l    a3,a0
		jsr        Awi_shadow
		tst.w      d0
		beq.s      evmouse_3
		movea.l    (a2),a0
		movea.l    572(a0),a0
		lea.l      56(a0),a0
		jsr        Amo_new
		bra        evmouse_1
evmouse_3:
		movea.l    (a2),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		lea.l      52(a3),a0
		jsr        Aob_within
		tst.w      d0
		beq        evmouse_4
		movea.l    20(a3),a4
		move.l     a4,d0
		beq        evmouse_5
		movea.l    (a2),a0
		move.w     610(a0),d3
		sub.w      52(a3),d3
		move.w     612(a0),d5
		sub.w      54(a3),d5
		clr.w      d4
		move.w     d5,-(a7)
		move.w     d3,d2
		moveq.l    #8,d1
		movea.l    a4,a0
		move.w     d4,d0
		jsr        Adr_find
		addq.w     #2,a7
		move.w     d0,d5
		bra.s      evmouse_6
evmouse_10:
		moveq.l    #8,d0
		move.w     d5,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a4,d1.l),d0
		beq.s      evmouse_7
		move.w     #$0080,d3
		and.w      8(a4,d1.l),d3
		bne.s      evmouse_7
		moveq.l    #4,d4
evmouse_7:
		moveq.l    #32,d0
		move.w     d5,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a4,d1.l),d0
		bne.s      evmouse_8
		move.w     32(a4,d1.l),d3
		and.w      #$8000,d3
		beq.s      evmouse_8
		moveq.l    #31,d0
		and.w      44(a4,d1.l),d0
		tst.w      d0
		ble.s      evmouse_8
		move.w     d0,d4
evmouse_8:
		move.w     d5,d0
		movea.l    a4,a0
		jsr        Aob_up
		move.w     d0,d5
evmouse_6:
		tst.w      d5
		bmi.s      evmouse_9
		tst.w      d4
		ble.s      evmouse_10
evmouse_9:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		add.l      d0,d0
		movea.l    (a2),a0
		movea.l    572(a0),a0
		lea.l      56(a0,d0.l),a0
		jsr        Amo_new
evmouse_5:
		suba.l     a1,a1
		moveq.l    #4,d0
		movea.l    a3,a0
		movea.l    4(a3),a4
		jsr        (a4)
		bra.s      evmouse_1
evmouse_4:
		bsr        Aev_unhidepointer
		jsr        Amo_point
		moveq.l    #1,d0
		movea.l    (a2),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		bne.s      evmouse_1
		move.l     94(a3),d1
		beq.s      evmouse_1
		move.w     612(a0),d1
		move.w     610(a0),d0
		movea.l    a3,a0
		jsr        Ame_drop
evmouse_1:
		addq.w     #2,a7
		movem.l    (a7)+,d3-d5/a2-a4
		rts

		.globl Aev_mess
Aev_mess:
		move.l     d3,-(a7)
		move.l     a2,-(a7)
		lea.l      -18(a7),a7
		jsr        Awi_root
		move.l     a0,d0
		beq        Aev_mess_1
		movea.l    ACSblk,a0
		move.w     638(a0),d0
		bne.w      Aev_mess_1
Aev_mess_4:
		lea.l      16(a7),a2
		moveq.l    #4,d3
		bra.s      Aev_mess_2
Aev_mess_6:
		move.l     _globl,-(a7)
		pea.l      (a2)
		pea.l      (a2)
		pea.l      (a2)
		pea.l      (a2)
		pea.l      (a2)
		moveq.l    #20,d0
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
		beq.s      Aev_mess_3
		moveq.l    #32,d0
		jsr        Awi_update
		lea.l      (a7),a0
		jsr        Aev_message
		tst.w      d0
		bne.s      Aev_mess_4
		subq.w     #1,d3
Aev_mess_2:
		moveq.l    #16,d0
		jsr        Awi_update
		bra.s      Aev_mess_5
Aev_mess_3:
		subq.w     #1,d3
Aev_mess_5:
		tst.w      d3
		bgt.s      Aev_mess_6
		moveq.l    #32,d0
		jsr        Awi_update
Aev_mess_1:
		lea.l      18(a7),a7
		movea.l    (a7)+,a2
		move.l     (a7)+,d3
		rts

		.globl ACSeventhandler
ACSeventhandler:
		movem.l    d3-d4/a2-a5,-(a7)
		lea.l      -48(a7),a7
		jsr        Awi_root
		movea.l    a0,a2
		move.l     _globl,-(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		lea.l      14(a7),a1
		lea.l      12(a7),a0
		moveq.l    #8,d0
		jsr        mt_appl_getinfo
		lea.l      12(a7),a7
		tst.w      d0
		beq.s      ACSeventhandler_1
		move.w     4(a7),d0
		beq.s      ACSeventhandler_2
		moveq.l    #1,d3
		bra.s      ACSeventhandler_3
ACSeventhandler_2:
		clr.w      d3
ACSeventhandler_3:
		bra.s      ACSeventhandler_4
ACSeventhandler_1:
		clr.w      d3
ACSeventhandler_4:
		moveq.l    #32,d1
		clr.w      d0
		lea.l      (a7),a0
		jsr        memset
		lea.l      ACSblk,a5
		clr.w      d0
		movea.l    (a5),a0
		move.w     d0,612(a0)
		movea.l    (a5),a0
		move.w     d0,610(a0)
		movea.l    94(a2),a3
		move.l     a3,d1
		beq.s      ACSeventhandler_5
		bra.s      ACSeventhandler_6
ACSeventhandler_8:
		move.w     8(a3),d0
		and.w      #$8000,d0
		beq.s      ACSeventhandler_7
		move.w     10(a3),22(a3)
ACSeventhandler_7:
		lea.l      24(a3),a3
ACSeventhandler_6:
		moveq.l    #32,d0
		and.w      8(a3),d0
		beq.s      ACSeventhandler_8
ACSeventhandler_5:
		clr.w      d0
		move.w     d0,exitapp
		movea.l    (a5),a0
		move.w     d0,570(a0)
		movea.l    94(a2),a3
		move.l     a3,d1
		beq.s      ACSeventhandler_9
		bra.s      ACSeventhandler_10
ACSeventhandler_12:
		move.w     8(a3),d0
		and.w      #$8000,d0
		beq.s      ACSeventhandler_11
		move.w     22(a3),10(a3)
ACSeventhandler_11:
		lea.l      24(a3),a3
ACSeventhandler_10:
		moveq.l    #32,d0
		and.w      8(a3),d0
		beq.s      ACSeventhandler_12
ACSeventhandler_9:
		tst.w      d3
		beq.s      ACSeventhandler_13
		move.w     #$0080,d4
		movea.l    (a5),a0
		or.w       710(a0),d4
		bra.s      ACSeventhandler_14
ACSeventhandler_13:
		movea.l    (a5),a0
		move.w     710(a0),d4
ACSeventhandler_14:
		move.l     _globl,-(a7)
		pea.l      4(a7)
		movea.l    (a5),a0
		pea.l      716(a0)
		pea.l      718(a0)
		pea.l      614(a0)
		pea.l      714(a0)
		pea.l      612(a0)
		move.l     562(a0),d0
		moveq.l    #16,d1
		asr.l      d1,d0
		moveq.l    #0,d2
		move.w     d0,d2
		lsl.l      d1,d2
		moveq.l    #0,d0
		move.w     564(a0),d0
		or.l       d0,d2
		move.l     d2,-(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #1,d2
		move.w     d2,-(a7)
		move.w     d2,-(a7)
		move.w     612(a0),-(a7)
		move.w     610(a0),-(a7)
		move.w     d2,-(a7)
		move.w     712(a0),-(a7)
		movea.l    a0,a1
		lea.l      610(a1),a1
		lea.l      86(a7),a0
		movea.l    (a5),a4
		move.w     720(a4),d1
		moveq.l    #55,d0
		move.w     d4,d2
		jsr        mt_evnt_xmulti
		lea.l      54(a7),a7
		move.w     d0,d4
		movea.l    (a5),a0
		move.w     614(a0),d1
		move.w     718(a0),d0
		jsr        nkc_gemks2n
		movea.l    (a5),a0
		move.w     d0,718(a0)
		moveq.l    #1,d0
		jsr        Awi_update
		moveq.l    #16,d0
		and.w      d4,d0
		beq.s      ACSeventhandler_15
		lea.l      32(a7),a0
		jsr        Aev_message
ACSeventhandler_15:
		moveq.l    #2,d0
		and.w      d4,d0
		beq.s      ACSeventhandler_16
		move.w     #$0080,d1
		movea.l    (a5),a0
		and.w      714(a0),d1
		beq.s      ACSeventhandler_17
		move.w     612(a0),d1
		move.w     610(a0),d0
		lea.l      (a7),a0
		bsr        evmwheel
ACSeventhandler_17:
		movea.l    (a5),a0
		move.w     716(a0),d1
		move.w     714(a0),d0
		bsr        evbutton
ACSeventhandler_16:
		moveq.l    #1,d0
		and.w      d4,d0
		beq.s      ACSeventhandler_18
		suba.l     a0,a0
		bsr        evkeybrd
ACSeventhandler_18:
		move.l     _globl,-(a7)
		movea.l    (a5),a0
		pea.l      614(a0)
		pea.l      714(a0)
		movea.l    a0,a1
		lea.l      612(a1),a1
		lea.l      610(a0),a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		movea.l    (a5),a0
		move.w     714(a0),d0
		bne.s      ACSeventhandler_19
		moveq.l    #4,d1
		and.w      d4,d1
		beq.s      ACSeventhandler_20
		bsr        Aev_unhidepointer
ACSeventhandler_20:
		bsr        evmouse
ACSeventhandler_19:
		jsr        Ax_release
		jsr        Awi_lateupdate
		movea.l    (a5),a0
		move.l     a2,600(a0)
		movea.l    (a5),a0
		movea.l    684(a0),a0
		jsr        (a0)
		clr.w      d0
		jsr        Awi_update
		suba.l     a0,a0
		jsr        Ax_mterm
		movea.l    (a5),a0
		move.w     566(a0),d0
		beq.s      ACSeventhandler_21
		move.w     exitapp,d1
		bne.s      ACSeventhandler_22
ACSeventhandler_21:
		movea.l    (a5),a0
		move.w     638(a0),d0
		beq        ACSeventhandler_5
ACSeventhandler_22:
		movea.l    (a5),a0
		move.w     #$0001,570(a0)
		bsr        Aev_unhidepointer
		jsr        Amo_busy
		lea.l      48(a7),a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

		.data

exitapp:
		dc.b $00
		dc.b $00
hidepointer:
		dc.b $00
		dc.b $00
DeadKeys:
		dc.b '^~',$27,'`'
		dc.w $b922
		dc.w $f82c
		dc.w $2f00
CombKeys:
		dc.l xd3824
		dc.l xd382b
		dc.l xd3832
		dc.l xd383a
		dc.l xd3842
		dc.l xd384a
		dc.l xd3852
		dc.l xd385a
		dc.l xd3862
		dc.l xd386d
		dc.l xd3862
		dc.l xd3878
		dc.l xd3883
		dc.l xd3887
		dc.l xd388b
		dc.l xd388f
		dc.l xd3893
		dc.l xd3899
dead_handling:
		dc.b $00
		dc.b $00
dead_key:
		dc.b $00
		dc.b $00
xd3812:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
quote:
		dc.b $00
		dc.b $00
xd3824:
		dc.b ' aeiou',0
xd382b:
		dc.b $5e
		dc.w $8388
		dc.w $8c93
		dc.w $9600
xd3832:
		dc.b ' nNaoAo',0
xd383a:
		dc.w $7ea4
		dc.w $a5b0
		dc.w $b1b7
		dc.w $b800
xd3842:
		dc.b ' eEaiou',0
xd384a:
		dc.w $2782
		dc.w $90a0
		dc.w $a1a2
		dc.w $a300
xd3852:
		dc.b ' aeiouA',0
xd385a:
		dc.w $6085
		dc.w $8a8d
		dc.w $9597
		dc.w $b600
xd3862:
		dc.b ' aeiouyAOU',0
xd386d:
		dc.b $b9
		dc.w $8489
		dc.w $8b94
		dc.w $8198
		dc.b 'Ž™š',0
xd3878:
		dc.w $2284
		dc.w $898b
		dc.w $9481
		dc.w $988e
		dc.w $999a
		dc.b $00
xd3883:
		dc.b ' aA',0
xd3887:
		dc.b $f8
		dc.w $868f
		dc.b $00
xd388b:
		dc.b ' cC',0
xd388f:
		dc.b $2c
		dc.w $8780
		dc.b $00
xd3893:
		dc.b ' oO24',0
xd3899:
		dc.b $2f
		dc.w $b3b2
		dc.w $abac
		dc.b $00
		.even
