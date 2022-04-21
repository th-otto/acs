
Awi_keys:
		jsr        Awi_keysend
		cmp.w      #$FFFF,d0
		bge.s      Awi_keys_1
		moveq.l    #-1,d1
		bra.s      Awi_keys_2
Awi_keys_1:
		move.w     d0,d1
Awi_keys_2:
		move.w     d1,d0
		rts

Awi_nokey:
		move.l     a2,-(a7)
		movea.l    a0,a2
		tst.w      d1
		bpl.s      Awi_nokey_1
		move.b     d1,d0
		ext.w      d0
		sub.w      #$000E,d0
		beq.s      Awi_nokey_2
		bra.s      Awi_nokey_1
Awi_nokey_2:
		movea.l    a2,a0
		jsr        Awi_help
Awi_nokey_1:
		moveq.l    #-1,d0
		movea.l    (a7)+,a2
		rts

Aob_within:
		cmp.w      (a0),d0
		blt.s      Aob_within_1
		cmp.w      2(a0),d1
		blt.s      Aob_within_1
		move.w     (a0),d2
		add.w      4(a0),d2
		cmp.w      d2,d0
		bge.s      Aob_within_1
		move.w     2(a0),d0
		add.w      6(a0),d0
		cmp.w      d0,d1
		blt.s      Aob_within_2
Aob_within_1:
		clr.w      d0
		rts
Aob_within_2:
		moveq.l    #1,d0
		rts

alert_str:
		movem.l    a2-a4,-(a7)
		lea.l      -256(a7),a7
		movea.l    a0,a3
		movea.l    a1,a4
		lea.l      (a7),a2
		bra.s      alert_str_1
alert_str_4:
		cmpi.b     #$25,(a3)
		bne.s      alert_str_2
		cmpi.b     #$73,1(a3)
		bne.s      alert_str_2
		addq.w     #2,a3
		bra.s      alert_str_3
alert_str_2:
		move.b     (a3)+,(a2)+
alert_str_1:
		move.b     (a3),d0
		bne.s      alert_str_4
alert_str_3:
		clr.b      (a2)
		moveq.l    #30,d0
		movea.l    a4,a1
		movea.l    a2,a0
		jsr        strncat
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        strcat
		lea.l      (a7),a0
		moveq.l    #1,d0
		jsr        Awi_alert
		lea.l      256(a7),a7
		movem.l    (a7)+,a2-a4
		rts

dia_obchange:
		movem.l    d3-d4/a2-a3/a5,-(a7)
		subq.w     #8,a7
		movea.l    a0,a5
		move.w     d0,d3
		move.w     d1,d4
		movea.l    ACSblk,a1
		movea.l    604(a1),a2
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		lea.l      0(a2,d2.l),a3
		lea.l      (a7),a0
		movea.l    a2,a1
		move.w     d3,d0
		jsr        Aob_offset
		cmpi.b     #$21,7(a3)
		bne.s      dia_obchange_1
		move.w     d3,d0
		movea.l    a5,a0
		jsr        Awi_obredraw
		bra.s      dia_obchange_2
dia_obchange_1:
		cmp.w      #$FFFF,d4
		beq.s      dia_obchange_3
		cmp.w      10(a3),d4
		bne.s      dia_obchange_4
dia_obchange_3:
		move.w     6(a7),-(a7)
		move.w     6(a7),-(a7)
		move.w     6(a7),-(a7)
		movea.l    _globl,a1
		move.w     6(a7),d2
		moveq.l    #6,d1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        mt_objc_draw
		addq.w     #6,a7
		bra.s      dia_obchange_2
dia_obchange_4:
		moveq.l    #1,d0
		move.w     d0,-(a7)
		move.w     d4,-(a7)
		move.w     10(a7),-(a7)
		move.w     10(a7),-(a7)
		move.w     10(a7),-(a7)
		movea.l    _globl,a1
		move.w     10(a7),d2
		clr.w      d1
		movea.l    a2,a0
		move.w     d3,d0
		jsr        mt_objc_change
		lea.l      10(a7),a7
dia_obchange_2:
		addq.w     #8,a7
		movem.l    (a7)+,d3-d4/a2-a3/a5
		rts

dia_redraw:
		move.l     a2,-(a7)
		movea.l    a1,a2
		move.w     6(a2),-(a7)
		move.w     4(a2),-(a7)
		move.w     2(a2),-(a7)
		move.w     (a1),d2
		moveq.l    #6,d1
		clr.w      d0
		movea.l    ACSblk,a0
		movea.l    604(a0),a0
		movea.l    _globl,a1
		jsr        mt_objc_draw
		addq.w     #6,a7
		movea.l    (a7)+,a2
		rts

Aform_do:
		movem.l    d3-d5/a2-a6,-(a7)
		lea.l      -10(a7),a7
		movea.l    a0,a3
		movea.l    a1,a5
		clr.w      6(a7)
		lea.l      ACSblk,a4
		movea.l    (a4),a0
		move.l     a3,604(a0)
		lea.l      8(a7),a2
		move.w     (a5),d0
		bgt.s      Aform_do_1
		moveq.l    #8,d1
		movea.l    a3,a0
		clr.w      d0
		jsr        Aob_findflag
		move.w     d0,(a2)
		bra.s      Aform_do_2
Aform_do_1:
		move.w     (a5),(a2)
Aform_do_2:
		clr.w      (a5)
		move.w     (a2),d0
		bgt.s      Aform_do_3
		clr.w      (a2)
Aform_do_3:
		moveq.l    #1,d3
		bra        Aform_do_4
Aform_do_19:
		move.w     (a2),d0
		beq.s      Aform_do_5
		move.w     (a5),d1
		cmp.w      d0,d1
		beq.s      Aform_do_5
		move.w     d0,(a5)
		clr.w      (a2)
		moveq.l    #8,d1
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		and.w      8(a3,d2.l),d1
		beq.s      Aform_do_5
		move.l     _globl,-(a7)
		lea.l      8(a7),a1
		move.w     (a5),d0
		movea.l    a3,a0
		clr.w      d1
		moveq.l    #1,d2
		jsr        mt_objc_edit
		addq.w     #4,a7
Aform_do_5:
		move.l     _globl,-(a7)
		movea.l    (a4),a0
		pea.l      716(a0)
		pea.l      718(a0)
		pea.l      614(a0)
		pea.l      714(a0)
		pea.l      612(a0)
		clr.l      -(a7)
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
		move.w     712(a0),-(a7)
		movea.l    a0,a1
		lea.l      610(a1),a1
		move.w     710(a0),d2
		move.w     720(a0),d1
		moveq.l    #3,d0
		suba.l     a0,a0
		jsr        mt_evnt_multi
		lea.l      50(a7),a7
		move.w     d0,d4
		movea.l    (a4),a0
		move.w     614(a0),d1
		move.w     718(a0),d0
		jsr        nkc_gemks2n
		movea.l    (a4),a0
		move.w     d0,718(a0)
		moveq.l    #1,d1
		and.w      d4,d1
		beq        Aform_do_6
		movea.l    (a4),a1
		lea.l      718(a1),a1
		movea.l    (a4),a0
		lea.l      614(a0),a0
		movea.l    (a4),a6
		movea.l    694(a6),a6
		jsr        (a6)
		movea.l    (a4),a1
		lea.l      718(a1),a1
		movea.l    (a4),a0
		lea.l      614(a0),a0
		movea.l    (a4),a6
		movea.l    706(a6),a6
		jsr        (a6)
		movea.l    (a4),a0
		move.w     718(a0),d0
		beq        Aform_do_6
		clr.w      d4
		move.w     d0,d1
		move.w     614(a0),d0
		movea.l    a3,a0
		jsr        Aob_key
		tst.w      d0
		bmi.s      Aform_do_7
		move.w     d0,(a2)
		move.l     _globl,-(a7)
		movea.l    a2,a1
		moveq.l    #1,d1
		movea.l    a3,a0
		jsr        mt_form_button
		addq.w     #4,a7
		move.w     d0,d3
		bra        Aform_do_6
Aform_do_7:
		movea.l    (a4),a0
		move.w     718(a0),d0
		and.w      #$0400,d0
		beq.s      Aform_do_8
		move.w     718(a0),d1
		and.w      #$1F00,d1
		cmp.w      d1,d0
		bne.s      Aform_do_8
		cmpi.b     #$09,719(a0)
		bne.s      Aform_do_8
		movea.l    a3,a1
		movea.l    600(a0),a0
		jsr        Aob_chdef
		tst.w      d0
		bne        Aform_do_6
Aform_do_8:
		move.l     _globl,-(a7)
		pea.l      10(a7)
		movea.l    a2,a1
		move.l     a1,-(a7)
		movea.l    (a4),a0
		move.w     718(a0),d0
		jsr        nkc_n2gem
		move.w     d0,d2
		move.w     (a5),d1
		move.w     (a5),d0
		movea.l    a3,a0
		movea.l    (a7)+,a1
		jsr        mt_form_keybd
		addq.w     #8,a7
		move.w     d0,d3
		moveq.l    #32,d1
		move.w     (a5),d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		and.w      8(a3,d2.l),d1
		beq.s      Aform_do_9
		movea.w    (a2),a0
		cmpa.w     (a5),a0
		ble.s      Aform_do_9
		move.w     (a5),(a2)
Aform_do_9:
		move.w     6(a7),d0
		beq        Aform_do_6
		moveq.l    #8,d1
		move.w     (a5),d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		and.w      8(a3,d2.l),d1
		beq        Aform_do_6
		movea.l    (a4),a0
		move.b     719(a0),d1
		ext.w      d1
		tst.w      d1
		beq        Aform_do_6
		subq.w     #3,d1
		beq.s      Aform_do_10
		subq.w     #1,d1
		beq.s      Aform_do_11
		bra        Aform_do_12
Aform_do_11:
		movea.l    (a4),a0
		move.w     718(a0),d0
		and.w      #$8300,d0
		beq.s      Aform_do_10
		move.l     _globl,-(a7)
		moveq.l    #3,d2
		lea.l      8(a7),a1
		clr.w      d1
		move.w     (a5),d0
		movea.l    a3,a0
		jsr        mt_objc_edit
		addq.w     #4,a7
		move.w     (a5),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a3,d0.l),a0
		move.l     (a0),(a7)
		movea.l    (a7),a1
		move.b     (a1),d5
		clr.b      (a1)
		move.l     _globl,-(a7)
		moveq.l    #1,d2
		lea.l      8(a7),a1
		clr.w      d1
		move.w     (a5),d0
		movea.l    a3,a0
		jsr        mt_objc_edit
		addq.w     #4,a7
		movea.l    (a7),a0
		move.b     d5,(a0)
		bra        Aform_do_6
Aform_do_10:
		movea.l    (a4),a0
		move.w     718(a0),d0
		and.w      #$8300,d0
		beq.s      Aform_do_12
		move.l     _globl,-(a7)
		moveq.l    #3,d2
		lea.l      8(a7),a1
		clr.w      d1
		move.w     (a5),d0
		movea.l    a3,a0
		jsr        mt_objc_edit
		addq.w     #4,a7
		move.l     _globl,-(a7)
		moveq.l    #1,d2
		lea.l      8(a7),a1
		clr.w      d1
		move.w     (a5),d0
		movea.l    a3,a0
		jsr        mt_objc_edit
		addq.w     #4,a7
		bra.s      Aform_do_6
Aform_do_12:
		moveq.l    #8,d0
		move.w     (a5),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a3,d1.l),d0
		beq.s      Aform_do_6
		move.l     _globl,-(a7)
		lea.l      8(a7),a1
		move.l     a1,-(a7)
		movea.l    (a4),a0
		move.w     718(a0),d0
		jsr        nkc_n2gem
		move.w     d0,d1
		move.w     (a5),d0
		movea.l    a3,a0
		movea.l    (a7)+,a1
		moveq.l    #2,d2
		jsr        mt_objc_edit
		addq.w     #4,a7
Aform_do_6:
		moveq.l    #2,d0
		and.w      d4,d0
		beq        Aform_do_13
		movea.l    (a4),a1
		lea.l      716(a1),a1
		movea.l    (a4),a0
		lea.l      714(a0),a0
		movea.l    (a4),a6
		movea.l    698(a6),a6
		jsr        (a6)
		movea.l    (a4),a0
		move.w     612(a0),-(a7)
		movea.l    _globl,a1
		move.w     610(a0),d2
		moveq.l    #6,d1
		clr.w      d0
		movea.l    a3,a0
		jsr        mt_objc_find
		addq.w     #2,a7
		move.w     d0,(a2)
		addq.w     #1,d0
		bne.s      Aform_do_14
		clr.w      (a2)
		movea.l    (a4),a0
		cmpi.w     #$0002,716(a0)
		bne.s      Aform_do_15
		clr.w      d3
		bra.w      Aform_do_13
Aform_do_15:
		move.w     10(a3),d5
		moveq.l    #4,d0
		movea.l    (a4),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      Aform_do_16
		moveq.l    #7,d1
		moveq.l    #2,d0
		jsr        Bconout
		bra.s      Aform_do_13
Aform_do_16:
		movea.l    _globl,a1
		moveq.l    #1,d2
		or.w       d5,d2
		move.w     d5,d1
		clr.w      d0
		movea.l    a3,a0
		jsr        mt_graf_watchbox
		tst.w      d0
		bne.s      Aform_do_13
		move.w     d5,d1
		clr.w      d0
		movea.l    (a4),a0
		movea.l    600(a0),a0
		bsr        dia_obchange
		bra.s      Aform_do_13
Aform_do_14:
		moveq.l    #8,d0
		move.w     (a2),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      10(a3,d1.l),d0
		bne.s      Aform_do_17
		move.l     _globl,-(a7)
		movea.l    a2,a1
		movea.l    a3,a0
		move.w     (a2),d0
		moveq.l    #1,d1
		jsr        mt_form_button
		addq.w     #4,a7
		move.w     d0,d3
		bra.s      Aform_do_13
Aform_do_17:
		clr.w      (a2)
Aform_do_13:
		tst.w      d3
		beq.s      Aform_do_18
		move.w     (a2),d0
		beq.s      Aform_do_4
		cmp.w      (a5),d0
		beq.s      Aform_do_4
Aform_do_18:
		moveq.l    #8,d0
		move.w     (a5),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a3,d1.l),d0
		beq.s      Aform_do_4
		move.l     _globl,-(a7)
		lea.l      8(a7),a1
		move.w     (a5),d0
		movea.l    a3,a0
		clr.w      d1
		moveq.l    #3,d2
		jsr        mt_objc_edit
		addq.w     #4,a7
Aform_do_4:
		tst.w      d3
		bne        Aform_do_19
		movea.l    (a4),a0
		cmpi.w     #$0002,716(a0)
		bne.s      Aform_do_20
		move.w     (a2),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$4000,10(a3,d0.l)
		bra.s      Aform_do_21
Aform_do_20:
		move.w     (a2),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$BFFF,10(a3,d0.l)
Aform_do_21:
		move.w     (a2),d0
		lea.l      10(a7),a7
		movem.l    (a7)+,d3-d5/a2-a6
		rts

Act_save:
		move.l     a2,-(a7)
		movea.l    a0,a2
		lea.l      ACSblk,a0
		movea.l    (a0),a1
		move.l     600(a1),(a2)
		movea.l    (a0),a1
		move.l     604(a1),4(a2)
		movea.l    (a0),a1
		move.w     608(a1),8(a2)
		movea.l    (a0),a1
		move.w     610(a1),10(a2)
		movea.l    (a0),a1
		move.w     612(a1),12(a2)
		movea.l    (a0),a1
		move.w     614(a1),14(a2)
		lea.l      18(a2),a0
		jsr        Amo_restart
		move.w     d0,16(a2)
		movea.l    (a7)+,a2
		rts

Act_restore:
		move.l     a2,-(a7)
		movea.l    a0,a2
		lea.l      ACSblk,a0
		movea.l    (a0),a1
		move.l     (a2),600(a1)
		movea.l    (a0),a1
		move.l     4(a2),604(a1)
		movea.l    (a0),a1
		move.w     8(a2),608(a1)
		movea.l    (a0),a1
		move.w     10(a2),610(a1)
		movea.l    (a0),a1
		move.w     12(a2),612(a1)
		movea.l    (a0),a1
		move.w     14(a2),614(a1)
		lea.l      18(a2),a0
		move.w     16(a2),d0
		jsr        Amo_return
		movea.l    (a7)+,a2
		rts

A_isModDia:
		move.w     a_dialog_active,d0
		ble.s      A_isModDia_1
		moveq.l    #1,d0
		rts
A_isModDia_1:
		clr.w      d0
		rts

A_exdialog:
		movem.l    d3-d4/a2-a5,-(a7)
		lea.l      -60(a7),a7
		movea.l    a0,a2
		move.w     d0,d4
		jsr        Aev_unhidepointer
		lea.l      32(a7),a0
		bsr        Act_save
		movea.l    a2,a0
		jsr        Aob_fix
		lea.l      ACSblk,a3
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.l     106(a1),28(a7)
		move.l     102(a1),24(a7)
		move.w     86(a1),d3
		moveq.l    #8,d0
		lea.l      52(a1),a1
		lea.l      8(a7),a0
		jsr        memcpy
		clr.w      d0
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.w     d0,54(a1)
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.w     d0,52(a1)
		movea.l    (a3),a0
		move.w     8(a0),d1
		add.w      12(a0),d1
		movea.l    600(a0),a1
		move.w     d1,56(a1)
		movea.l    (a3),a0
		move.w     10(a0),d0
		add.w      14(a0),d0
		movea.l    600(a0),a1
		move.w     d0,58(a1)
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.l     #dia_redraw,106(a1)
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.l     #dia_obchange,102(a1)
		movea.l    (a3),a0
		movea.l    600(a0),a1
		ori.w      #$0008,86(a1)
		clr.w      (a7)
		lea.l      16(a7),a5
		tst.w      d4
		beq.w      A_exdialog_1
		moveq.l    #16,d0
		movea.l    (a3),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      A_exdialog_2
		move.l     _globl,-(a7)
		pea.l      6(a5)
		pea.l      4(a5)
		pea.l      2(a5)
		movea.l    a5,a1
		movea.l    a2,a0
		jsr        mt_form_center
		lea.l      16(a7),a7
		bra.s      A_exdialog_3
A_exdialog_2:
		move.l     _globl,-(a7)
		pea.l      6(a7)
		pea.l      10(a7)
		lea.l      68(a7),a1
		lea.l      70(a7),a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		andi.w     #$FFC0,58(a7)
		andi.w     #$FFC0,56(a7)
		move.w     58(a7),d0
		move.w     20(a2),d1
		asr.w      #1,d1
		sub.w      d1,d0
		move.w     d0,(a5)
		move.w     56(a7),d2
		move.w     22(a2),d4
		asr.w      #1,d4
		sub.w      d4,d2
		move.w     d2,2(a5)
		bra.s      A_exdialog_3
A_exdialog_1:
		moveq.l    #-8,d0
		add.w      16(a2),d0
		move.w     d0,(a5)
		moveq.l    #-8,d1
		add.w      18(a2),d1
		move.w     d1,2(a5)
A_exdialog_3:
		moveq.l    #8,d0
		add.w      20(a2),d0
		move.w     d0,4(a5)
		moveq.l    #8,d1
		add.w      22(a2),d1
		move.w     d1,6(a5)
		addq.w     #1,a_dialog_active
		moveq.l    #3,d0
		jsr        Awi_update
		clr.w      d0
		jsr        Awi_show_menu
A_exdialog_10:
		movea.l    (a3),a1
		addq.w     #8,a1
		movea.l    a5,a0
		jsr        fitin
		moveq.l    #4,d0
		add.w      (a5),d0
		move.w     d0,16(a2)
		moveq.l    #4,d1
		add.w      2(a5),d1
		move.w     d1,18(a2)
		movea.l    a5,a0
		jsr        Aob_save
		move.l     a0,4(a7)
		movea.l    (a3),a1
		move.w     14(a1),-(a7)
		move.w     12(a1),-(a7)
		move.w     10(a1),-(a7)
		move.w     8(a1),d2
		moveq.l    #6,d1
		clr.w      d0
		movea.l    a2,a0
		movea.l    _globl,a1
		jsr        mt_objc_draw
		addq.w     #6,a7
		clr.w      d4
A_exdialog_7:
		lea.l      (a7),a1
		movea.l    a2,a0
		bsr        Aform_do
		move.w     d0,d4
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		move.w     8(a2,d1.l),d2
		and.w      #$2000,d2
		bne        A_exdialog_4
		lea.l      24(a2,d1.l),a4
		moveq.l    #32,d0
		and.w      8(a2,d1.l),d0
		bne.s      A_exdialog_5
		move.w     8(a4),d2
		and.w      #$8000,d2
		beq.s      A_exdialog_5
		move.l     (a4),d0
		beq.s      A_exdialog_5
		movea.l    (a3),a0
		move.l     a2,604(a0)
		movea.l    (a3),a0
		move.w     d4,608(a0)
		movea.l    (a3),a0
		clr.w      616(a0)
		movea.l    (a4),a0
		jsr        (a0)
		moveq.l    #1,d0
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a2,d1.l),d0
		beq.s      A_exdialog_6
		moveq.l    #64,d0
		and.w      8(a2,d1.l),d0
		bne.s      A_exdialog_6
		moveq.l    #1,d2
		and.w      10(a2,d1.l),d2
		beq.s      A_exdialog_6
		move.w     10(a2,d1.l),d1
		and.w      #$FFFE,d1
		movea.l    (a3),a0
		movea.l    600(a0),a0
		move.w     d4,d0
		bsr        dia_obchange
A_exdialog_6:
		movea.l    (a3),a0
		move.w     616(a0),d0
		bne.s      A_exdialog_4
		bra        A_exdialog_7
A_exdialog_5:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     8(a2,d0.l),d2
		and.w      #$2047,d2
		cmp.w      #$0040,d2
		beq        A_exdialog_7
A_exdialog_4:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$FFFE,10(a2,d0.l)
		movea.l    a5,a1
		movea.l    4(a7),a0
		jsr        Aob_restore
		tst.w      d4
		bne.s      A_exdialog_8
		move.w     10(a2),d0
		and.w      #$4000,d0
		bne.s      A_exdialog_9
A_exdialog_8:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     8(a2,d0.l),d2
		and.w      #$2000,d2
		beq.s      A_exdialog_9
		move.l     _globl,-(a7)
		movea.l    (a3),a0
		move.w     14(a0),-(a7)
		move.w     12(a0),-(a7)
		move.w     10(a0),-(a7)
		move.w     8(a0),-(a7)
		move.w     18(a2),-(a7)
		lea.l      2(a5),a1
		movea.l    a5,a0
		move.w     16(a2),d2
		move.w     22(a2),d1
		move.w     20(a2),d0
		jsr        mt_graf_dragbox
		lea.l      14(a7),a7
		subq.w     #4,(a5)
		subq.w     #4,2(a5)
		bra        A_exdialog_10
A_exdialog_9:
		movea.l    (a3),a0
		clr.w      616(a0)
		moveq.l    #2,d0
		jsr        Awi_update
		subq.w     #1,a_dialog_active
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.l     28(a7),106(a1)
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.l     24(a7),102(a1)
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.w     d3,86(a1)
		moveq.l    #8,d0
		lea.l      8(a7),a1
		movea.l    (a3),a0
		movea.l    600(a0),a0
		lea.l      52(a0),a0
		jsr        memcpy
		lea.l      32(a7),a0
		bsr        Act_restore
		moveq.l    #1,d0
		jsr        Awi_show_menu
		move.w     d4,d0
		lea.l      60(a7),a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

A_dialog:
		moveq.l    #1,d0
		bsr        A_exdialog
		rts

A_dialog2:
		clr.w      d0
		bsr        A_exdialog
		rts

fitin:
		move.w     (a0),d0
		cmp.w      (a1),d0
		bge.s      fitin_1
		move.w     (a1),(a0)
fitin_1:
		move.w     2(a0),d0
		cmp.w      2(a1),d0
		bge.s      fitin_2
		move.w     2(a1),2(a0)
fitin_2:
		move.w     (a0),d0
		add.w      4(a0),d0
		move.w     (a1),d1
		add.w      4(a1),d1
		cmp.w      d1,d0
		ble.s      fitin_3
		sub.w      4(a0),d1
		move.w     d1,(a0)
fitin_3:
		move.w     2(a0),d0
		add.w      6(a0),d0
		move.w     2(a1),d1
		add.w      6(a1),d1
		cmp.w      d1,d0
		ble.s      fitin_4
		sub.w      6(a0),d1
		move.w     d1,2(a0)
fitin_4:
		rts

intersect:
		move.w     (a0),d0
		add.w      4(a0),d0
		move.w     (a1),d1
		add.w      4(a1),d1
		cmp.w      d1,d0
		bge.s      intersect_1
		bra.s      intersect_2
intersect_1:
		move.w     (a1),d0
		add.w      4(a1),d0
intersect_2:
		move.w     2(a0),d1
		add.w      6(a0),d1
		move.w     2(a1),d2
		add.w      6(a1),d2
		cmp.w      d2,d1
		bge.s      intersect_3
		bra.s      intersect_4
intersect_3:
		move.w     2(a1),d1
		add.w      6(a1),d1
intersect_4:
		move.w     (a0),d2
		cmp.w      (a1),d2
		ble.s      intersect_5
		bra.s      intersect_6
intersect_5:
		move.w     (a1),d2
intersect_6:
		move.w     d2,(a0)
		move.w     2(a0),d2
		cmp.w      2(a1),d2
		ble.s      intersect_7
		bra.s      intersect_8
intersect_7:
		move.w     2(a1),d2
intersect_8:
		move.w     d2,2(a0)
		movea.w    d0,a1
		suba.w     (a0),a1
		move.w     a1,4(a0)
		move.w     d1,d0
		sub.w      2(a0),d0
		move.w     d0,6(a0)
		move.w     4(a0),d1
		ble.s      intersect_9
		tst.w      d0
		bgt.s      intersect_10
intersect_9:
		clr.w      d0
		move.w     d0,6(a0)
		move.w     d0,4(a0)
		clr.w      d0
		rts
intersect_10:
		moveq.l    #1,d0
		rts

xywh2array:
		move.w     (a1),(a0)+
		move.w     2(a1),(a0)+
		move.w     (a1),d0
		add.w      4(a1),d0
		subq.w     #1,d0
		move.w     d0,(a0)+
		move.w     2(a1),d0
		add.w      6(a1),d0
		subq.w     #1,d0
		move.w     d0,(a0)
		rts

array2xywh:
		move.w     (a1),(a0)
		move.w     2(a1),2(a0)
		move.w     4(a1),d0
		sub.w      (a0),d0
		addq.w     #1,d0
		move.w     d0,4(a0)
		move.w     6(a1),d1
		sub.w      2(a0),d1
		addq.w     #1,d1
		move.w     d1,6(a0)
		rts

scrp_chg:
		movem.l    d3/a2-a3,-(a7)
		lea.l      -30(a7),a7
		move.w     d0,d3
		lea.l      14(a7),a2
		lea.l      xd5028,a0
		movea.l    a2,a1
		moveq.l    #15,d0
scrp_chg_1:
		move.b     (a0)+,(a1)+
		dbf        d0,scrp_chg_1
		lea.l      10(a7),a3
		move.w     #$FFFF,(a3)
		move.w     #$0050,(a2)
		movea.l    ACSblk,a0
		move.w     (a0),4(a2)
		moveq.l    #-1,d0
		movea.l    a2,a0
		jsr        Ash_sendall
		movea.l    ACSblk,a0
		movea.l    640(a0),a1
		cmpi.w     #$0400,(a1)
		bge.s      scrp_chg_2
		cmpi.w     #$0200,_ACSv_magix
		blt.s      scrp_chg_3
scrp_chg_2:
		move.l     _globl,-(a7)
		pea.l      (a3)
		lea.l      20(a7),a1
		lea.l      8(a7),a0
		moveq.l    #2,d0
		jsr        mt_appl_search
		addq.w     #8,a7
		tst.w      d0
		bne.s      scrp_chg_4
		move.w     #$FFFF,(a3)
		bra.s      scrp_chg_4
scrp_chg_3:
		movea.l    ACSblk,a0
		move.w     568(a0),d0
		bne.s      scrp_chg_4
		clr.w      (a3)
scrp_chg_4:
		move.w     (a3),d0
		bmi.s      scrp_chg_5
		move.w     #$0048,(a2)
		move.w     d3,6(a2)
		movea.l    _globl,a1
		movea.l    a2,a0
		moveq.l    #16,d1
		jsr        mt_appl_write
scrp_chg_5:
		suba.l     a0,a0
		moveq.l    #28,d0
		jsr        Awi_sendall
		lea.l      30(a7),a7
		movem.l    (a7)+,d3/a2-a3
		rts

Ascrp_clear:
		movem.l    a2-a5,-(a7)
		lea.l      -384(a7),a7
		movea.l    a0,a2
		lea.l      xd5038,a1
		lea.l      256(a7),a0
		moveq.l    #127,d0
Ascrp_clear_1:
		move.b     (a1)+,(a0)+
		dbf        d0,Ascrp_clear_1
		suba.l     a3,a3
		movea.l    ACSblk,a0
		move.b     854(a0),d0
		beq        Ascrp_clear_2
		jsr        Amo_busy
		movea.l    ACSblk,a0
		lea.l      854(a0),a0
		jsr        Af_2drv
		add.b      d0,256(a7)
		movea.l    ACSblk,a1
		lea.l      854(a1),a1
		lea.l      258(a7),a0
		jsr        Af_2path
		lea.l      256(a7),a0
		jsr        Af_readdir
		movea.l    a0,a3
		movea.l    a3,a4
		move.l     a4,d0
		beq.w      Ascrp_clear_3
		lea.l      128(a7),a5
		bra.s      Ascrp_clear_4
Ascrp_clear_8:
		movea.l    (a4),a1
		movea.l    a5,a0
		jsr        Af_2name
		jsr        Ast_toupper
		movea.l    (a4),a1
		lea.l      (a7),a0
		jsr        Af_2ext
		lea.l      xd5145,a1
		movea.l    a5,a0
		jsr        stricmp
		tst.w      d0
		bne.s      Ascrp_clear_5
		move.l     a2,d0
		beq.s      Ascrp_clear_6
		move.b     (a2),d1
		beq.s      Ascrp_clear_6
		movea.l    a2,a1
		lea.l      (a7),a0
		jsr        strcmp
		tst.w      d0
		bne.s      Ascrp_clear_5
Ascrp_clear_6:
		movea.l    (a4),a0
		jsr        Fdelete
		tst.l      d0
		bne.s      Ascrp_clear_7
Ascrp_clear_5:
		movea.l    4(a4),a4
Ascrp_clear_4:
		move.l     a4,d0
		bne.s      Ascrp_clear_8
Ascrp_clear_7:
		movea.l    a3,a0
		jsr        Af_freedir
		move.b     256(a7),d0
		ext.w      d0
		add.w      #$FFBF,d0
		bsr        scrp_chg
Ascrp_clear_3:
		jsr        Amo_unbusy
Ascrp_clear_2:
		lea.l      384(a7),a7
		movem.l    (a7)+,a2-a5
		rts

Ascrp_get:
		movem.l    d3-d4/a2-a6,-(a7)
		lea.l      -388(a7),a7
		movea.l    a0,a3
		movea.l    a1,a5
		movea.l    420(a7),a2
		lea.l      260(a7),a4
		lea.l      xd50b8,a0
		movea.l    a4,a1
		moveq.l    #127,d0
Ascrp_get_1:
		move.b     (a0)+,(a1)+
		dbf        d0,Ascrp_get_1
		clr.l      (a7)
		clr.w      d3
		movea.l    ACSblk,a0
		move.b     854(a0),d0
		beq        Ascrp_get_2
		jsr        Amo_busy
		move.l     a3,d0
		beq.s      Ascrp_get_3
		movea.l    a3,a0
		jsr        Ast_toupper
Ascrp_get_3:
		movea.l    ACSblk,a0
		lea.l      854(a0),a0
		jsr        Af_2drv
		add.b      d0,(a4)
		movea.l    ACSblk,a1
		lea.l      854(a1),a1
		lea.l      2(a4),a0
		jsr        Af_2path
		movea.l    a4,a0
		jsr        Af_readdir
		move.l     a0,(a7)
		movea.l    a0,a4
		move.l     a4,d0
		beq        Ascrp_get_4
		lea.l      4(a7),a6
		bra.s      Ascrp_get_5
Ascrp_get_8:
		movea.l    (a4),a1
		lea.l      132(a7),a0
		jsr        Af_2name
		jsr        Ast_toupper
		movea.l    (a4),a1
		movea.l    a6,a0
		jsr        Af_2ext
		jsr        Ast_toupper
		lea.l      xd5145,a1
		lea.l      132(a7),a0
		jsr        Ast_icmp
		tst.w      d0
		bne.s      Ascrp_get_6
		move.l     a3,d0
		beq.s      Ascrp_get_7
		move.b     (a3),d1
		beq.s      Ascrp_get_7
		cmp.b      #$2A,d1
		beq.s      Ascrp_get_7
		movea.l    a3,a1
		movea.l    a6,a0
		jsr        Ast_icmp
		tst.w      d0
		beq.s      Ascrp_get_7
Ascrp_get_6:
		movea.l    4(a4),a4
Ascrp_get_5:
		move.l     a4,d0
		bne.s      Ascrp_get_8
Ascrp_get_7:
		move.l     a4,d0
		beq.w      Ascrp_get_9
		movea.l    (a4),a0
		jsr        Af_length
		move.l     d0,(a2)
		move.l     a5,d1
		bne.s      Ascrp_get_10
		moveq.l    #1,d3
		bra.s      Ascrp_get_11
Ascrp_get_10:
		moveq.l    #1,d0
		add.l      (a2),d0
		jsr        Ax_malloc
		move.l     a0,(a5)
		move.l     a0,d0
		beq.s      Ascrp_get_11
		movea.l    (a4),a0
		clr.w      d0
		jsr        Fopen
		move.l     d0,d4
		tst.l      d0
		bpl.s      Ascrp_get_12
		movea.l    (a5),a0
		jsr        Ax_free
		bra.s      Ascrp_get_11
Ascrp_get_12:
		movea.l    (a5),a0
		move.l     (a2),d1
		move.w     d4,d0
		jsr        Fread
		cmp.l      (a2),d0
		beq.s      Ascrp_get_13
		movea.l    (a5),a0
		jsr        Ax_free
		bra.s      Ascrp_get_14
Ascrp_get_13:
		move.l     (a2),d0
		movea.l    (a5),a0
		clr.b      0(a0,d0.l)
		moveq.l    #1,d3
Ascrp_get_14:
		move.w     d4,d0
		jsr        Fclose
Ascrp_get_11:
		move.l     a3,d0
		beq.s      Ascrp_get_9
		movea.l    (a4),a1
		movea.l    a3,a0
		jsr        Af_2ext
Ascrp_get_9:
		movea.l    (a7),a0
		jsr        Af_freedir
Ascrp_get_4:
		jsr        Amo_unbusy
Ascrp_get_2:
		move.w     d3,d0
		lea.l      388(a7),a7
		movem.l    (a7)+,d3-d4/a2-a6
		rts

Ascrp_put:
		movem.l    d3-d7/a2-a4,-(a7)
		lea.l      -256(a7),a7
		movea.l    a0,a2
		movea.l    a1,a4
		move.l     d0,d7
		move.w     d1,d5
		moveq.l    #1,d3
		movea.l    ACSblk,a0
		move.b     854(a0),d2
		beq        Ascrp_put_1
		move.b     (a2),d1
		beq        Ascrp_put_1
		lea.l      128(a7),a3
		move.l     a2,-(a7)
		pea.l      xd514b
		movea.l    ACSblk,a1
		lea.l      854(a1),a1
		lea.l      8(a7),a0
		jsr        Af_2path
		movea.l    a0,a1
		move.l     a1,-(a7)
		movea.l    ACSblk,a0
		lea.l      854(a0),a0
		jsr        Af_2drv
		movea.l    a3,a0
		movea.l    (a7)+,a1
		jsr        Af_buildname
		addq.w     #8,a7
		jsr        Amo_busy
		movea.l    a3,a0
		jsr        Af_length
		move.l     d0,d4
		moveq.l    #-1,d1
		cmp.l      d0,d1
		bne.s      Ascrp_put_2
		clr.w      d0
		bra        Ascrp_put_3
Ascrp_put_2:
		tst.w      d5
		beq.s      Ascrp_put_4
		tst.l      d4
		bmi.s      Ascrp_put_5
		moveq.l    #2,d0
		movea.l    a3,a0
		jsr        Fopen
		move.l     d0,d6
		bmi.s      Ascrp_put_6
		moveq.l    #2,d2
		move.w     d6,d1
		moveq.l    #0,d0
		jsr        Fseek
		cmp.l      d0,d4
		beq.s      Ascrp_put_7
		bra.s      Ascrp_put_6
Ascrp_put_4:
		tst.l      d4
		bmi.s      Ascrp_put_5
		movea.l    a3,a0
		jsr        Fdelete
		tst.l      d0
		beq.s      Ascrp_put_5
		clr.w      d3
Ascrp_put_5:
		clr.w      d0
		movea.l    a3,a0
		jsr        Fcreate
		move.l     d0,d6
		bpl.s      Ascrp_put_7
Ascrp_put_6:
		clr.w      d3
Ascrp_put_7:
		tst.w      d3
		beq.s      Ascrp_put_8
		movea.l    a4,a0
		move.l     d7,d1
		move.w     d6,d0
		jsr        Fwrite
		cmp.l      d0,d7
		beq.s      Ascrp_put_9
		move.w     d6,d0
		jsr        Fclose
		movea.l    a3,a0
		jsr        Fdelete
		clr.w      d3
		bra.s      Ascrp_put_8
Ascrp_put_9:
		move.w     d6,d0
		jsr        Fclose
		move.b     (a3),d0
		ext.w      d0
		add.w      #$FFBF,d0
		bsr        scrp_chg
Ascrp_put_8:
		jsr        Amo_unbusy
Ascrp_put_1:
		move.w     d3,d0
Ascrp_put_3:
		lea.l      256(a7),a7
		movem.l    (a7)+,d3-d7/a2-a4
		rts

		.data

a_dialog_active:
		dc.b $00
		dc.b $00
xd5028:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd5038:
		dc.b 'A:\',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd50b8:
		dc.b 'A:\',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd5138:
		dc.b '[3][',0
xd513d:
		dc.b '][ OK ]',0
xd5145:
		dc.b 'SCRAP',0
xd514b:
		dc.b 'scrap',0
		.even
