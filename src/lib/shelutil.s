		.text

		.globl Ash_error
Ash_error:
		movem.l    d3-d4/a2-a4,-(a7)
		lea.l      -128(a7),a7
		move.w     d0,d4
		movea.l    a0,a4
		moveq.l    #-2,d3
		suba.l     a2,a2
		lea.l      ACSblk,a3
		move.w     d4,d0
		cmp.w      #$0012,d0
		bhi        Ash_error_1
		add.w      d0,d0
		move.w     J45(pc,d0.w),d0
		jmp        J45(pc,d0.w)
J45:
		dc.w Ash_error_1-J45
		dc.w Ash_error_1-J45
		dc.w Ash_error_2-J45
		dc.w Ash_error_3-J45
		dc.w Ash_error_4-J45
		dc.w Ash_error_5-J45
		dc.w Ash_error_6-J45
		dc.w Ash_error_7-J45
		dc.w Ash_error_8-J45
		dc.w Ash_error_9-J45
		dc.w Ash_error_10-J45
		dc.w Ash_error_11-J45
		dc.w Ash_error_12-J45
		dc.w Ash_error_12-J45
		dc.w Ash_error_12-J45
		dc.w Ash_error_12-J45
		dc.w Ash_error_13-J45
		dc.w Ash_error_14-J45
		dc.w Ash_error_14-J45
Ash_error_2:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    292(a1),a2
		bra        Ash_error_15
Ash_error_3:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    332(a1),a2
		bra        Ash_error_15
Ash_error_4:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    268(a1),a2
		bra        Ash_error_15
Ash_error_5:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    340(a1),a2
		bra        Ash_error_15
Ash_error_6:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    320(a1),a2
		bra        Ash_error_15
Ash_error_7:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    288(a1),a2
		bra        Ash_error_15
Ash_error_8:
		move.l     a4,d0
		beq.s      Ash_error_16
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    328(a1),a2
		bra        Ash_error_17
Ash_error_16:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    324(a1),a2
		bra        Ash_error_17
Ash_error_9:
		move.l     a4,d0
		beq.s      Ash_error_18
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    264(a1),a2
		bra        Ash_error_17
Ash_error_18:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    260(a1),a2
		bra        Ash_error_17
Ash_error_10:
		move.l     a4,d0
		beq.s      Ash_error_19
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    364(a1),a2
		bra        Ash_error_17
Ash_error_19:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    360(a1),a2
		bra        Ash_error_17
Ash_error_11:
		move.l     a4,d0
		beq.s      Ash_error_20
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    348(a1),a2
		bra        Ash_error_17
Ash_error_20:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    344(a1),a2
		bra        Ash_error_17
Ash_error_12:
		move.l     a4,d0
		beq.s      Ash_error_21
		move.b     (a4),d1
		beq.s      Ash_error_21
		movea.l    a4,a1
		lea.l      (a7),a0
		jsr        Af_2name
		move.b     (a0),d0
		beq.s      Ash_error_21
		move.w     d4,d0
		sub.w      #$000C,d0
		beq.s      Ash_error_22
		subq.w     #1,d0
		beq.s      Ash_error_23
		subq.w     #1,d0
		beq.s      Ash_error_24
		subq.w     #1,d0
		beq.s      Ash_error_25
		bra.s      Ash_error_26
Ash_error_22:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    300(a1),a2
		bra.s      Ash_error_26
Ash_error_23:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    308(a1),a2
		bra.s      Ash_error_26
Ash_error_24:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    356(a1),a2
		bra.s      Ash_error_26
Ash_error_25:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    316(a1),a2
Ash_error_26:
		lea.l      (a7),a4
		bra.w      Ash_error_17
Ash_error_21:
		suba.l     a4,a4
		move.w     d4,d0
		sub.w      #$000C,d0
		beq.s      Ash_error_27
		subq.w     #1,d0
		beq.s      Ash_error_28
		subq.w     #1,d0
		beq.s      Ash_error_29
		subq.w     #1,d0
		beq.s      Ash_error_30
		bra.s      Ash_error_17
Ash_error_27:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    296(a1),a2
		bra.s      Ash_error_17
Ash_error_28:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    304(a1),a2
		bra.s      Ash_error_17
Ash_error_29:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    352(a1),a2
		bra.s      Ash_error_17
Ash_error_30:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    312(a1),a2
		bra.s      Ash_error_17
Ash_error_13:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    336(a1),a2
		bra.s      Ash_error_15
Ash_error_14:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    256(a1),a2
Ash_error_15:
		suba.l     a4,a4
		bra.s      Ash_error_17
Ash_error_1:
		move.l     a4,d0
		beq.s      Ash_error_31
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    252(a1),a2
		bra.s      Ash_error_17
Ash_error_31:
		movea.l    (a3),a0
		movea.l    572(a0),a1
		movea.l    248(a1),a2
Ash_error_17:
		move.l     a2,d0
		beq.s      Ash_error_32
		move.l     a4,d1
		beq.s      Ash_error_33
		movea.l    a4,a1
		movea.l    a2,a0
		jsr        alert_str
		move.w     d0,d3
		bra.s      Ash_error_32
Ash_error_33:
		movea.l    a2,a0
		moveq.l    #1,d0
		jsr        Awi_alert
		move.w     d0,d3
Ash_error_32:
		cmp.w      #$FFFF,d3
		bge.s      Ash_error_34
		movea.l    _globl,a1
		lea.l      xd4076,a0
		moveq.l    #1,d0
		jsr        mt_form_alert
Ash_error_34:
		lea.l      128(a7),a7
		movem.l    (a7)+,d3-d4/a2-a4
		rts

	.IFNE 0 /* only in lib */
		.globl Ash_cmdParsen
Ash_cmdParsen:
		movem.l    d3-d6/a2-a5,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		move.w     d0,d5
		move.l     a1,4(a7)
		movea.l    44(a7),a5
		movea.l    56(a7),a3
		moveq.l    #1,d3
		clr.w      d4
		bra.s      Ash_cmdParsen_1
Ash_cmdParsen_2:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		clr.l      0(a2,d0.l)
		addq.w     #1,d4
Ash_cmdParsen_1:
		cmp.w      #$0100,d4
		blt.s      Ash_cmdParsen_2
		clr.w      d4
		bra.s      Ash_cmdParsen_3
Ash_cmdParsen_4:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    4(a7),a0
		movea.l    0(a0,d0.l),a0
		jsr        Ast_alltrim
		addq.w     #1,d4
Ash_cmdParsen_3:
		cmp.w      d4,d5
		bgt.s      Ash_cmdParsen_4
		moveq.l    #1,d4
		bra        Ash_cmdParsen_5
Ash_cmdParsen_19:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    4(a7),a0
		move.l     0(a0,d0.l),(a7)
		movea.l    (a7),a1
		move.b     (a1),d0
		ext.w      d0
		movea.l    a5,a0
		jsr        strchr
		move.l     a0,d0
		beq        Ash_cmdParsen_6
		clr.b      d6
		movea.l    (a7),a4
		addq.w     #1,a4
		bra        Ash_cmdParsen_7
Ash_cmdParsen_18:
		move.b     (a4),d6
		move.b     d6,d0
		ext.w      d0
		movea.l    48(a7),a0
		jsr        strchr
		move.l     a0,d0
		beq        Ash_cmdParsen_8
		move.b     (a4),d0
		ext.w      d0
		movea.l    52(a7),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ash_cmdParsen_9
		move.b     1(a4),d0
		beq.s      Ash_cmdParsen_10
		lea.l      1(a4),a0
		move.b     d6,d1
		ext.w      d1
		ext.l      d1
		lsl.l      #2,d1
		move.l     a0,0(a2,d1.l)
		bra        Ash_cmdParsen_11
Ash_cmdParsen_10:
		moveq.l    #-1,d0
		add.w      d5,d0
		cmp.w      d0,d4
		bge.s      Ash_cmdParsen_12
		move.w     d4,d1
		ext.l      d1
		lsl.l      #2,d1
		movea.l    4(a7),a0
		movea.l    4(a0,d1.l),a4
		bra.s      Ash_cmdParsen_13
Ash_cmdParsen_12:
		movea.l    a5,a4
Ash_cmdParsen_13:
		move.b     (a4),d0
		ext.w      d0
		movea.l    a5,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ash_cmdParsen_14
		move.l     a3,d0
		beq.s      Ash_cmdParsen_15
		move.b     d6,d0
		jsr        (a3)
		tst.w      d0
		beq.s      Ash_cmdParsen_16
Ash_cmdParsen_15:
		clr.w      d3
		move.w     d5,d4
		bra.s      Ash_cmdParsen_11
Ash_cmdParsen_14:
		move.b     d6,d0
		ext.w      d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     a4,0(a2,d0.l)
		bra.s      Ash_cmdParsen_11
Ash_cmdParsen_9:
		move.b     d6,d0
		ext.w      d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     #~_808+$0000002B,0(a2,d0.l)
		bra.s      Ash_cmdParsen_16
Ash_cmdParsen_8:
		move.l     a3,d0
		beq.s      Ash_cmdParsen_17
		move.b     d6,d0
		jsr        (a3)
		tst.w      d0
		beq.s      Ash_cmdParsen_11
Ash_cmdParsen_17:
		clr.w      d3
		bra.s      Ash_cmdParsen_11
Ash_cmdParsen_16:
		addq.w     #1,a4
Ash_cmdParsen_7:
		move.b     (a4),d0
		bne        Ash_cmdParsen_18
		bra.s      Ash_cmdParsen_11
Ash_cmdParsen_6:
		movea.l    (a7),a1
		movea.l    60(a7),a0
		movea.l    60(a7),a4
		movea.l    12(a4),a4
		jsr        (a4)
Ash_cmdParsen_11:
		addq.w     #1,d4
Ash_cmdParsen_5:
		cmp.w      d4,d5
		bgt        Ash_cmdParsen_19
		move.w     d3,d0
		addq.w     #8,a7
		movem.l    (a7)+,d3-d6/a2-a5
		rts
	.ENDC

		.globl Ash_getenv
Ash_getenv:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    ACSblk,a1
		movea.l    652(a1),a1
		move.l     a1,d0
		beq.s      Ash_getenv_1
		movea.l    (a1),a2
		bra.s      Ash_getenv_2
Ash_getenv_7:
		movea.l    a0,a3
		bra.s      Ash_getenv_3
Ash_getenv_6:
		cmpi.b     #$3D,(a2)
		bne.s      Ash_getenv_3
		move.b     (a3),d0
		bne.s      Ash_getenv_3
		addq.w     #1,a2
		movea.l    a2,a0
		bra.s      Ash_getenv_4
Ash_getenv_3:
		move.b     (a2),d0
		beq.s      Ash_getenv_5
		move.b     (a2)+,d0
		cmp.b      (a3)+,d0
		beq.s      Ash_getenv_6
Ash_getenv_5:
		addq.w     #4,a1
		movea.l    (a1),a2
Ash_getenv_2:
		move.l     a2,d0
		beq.s      Ash_getenv_1
		move.b     (a2),d1
		bne.s      Ash_getenv_7
Ash_getenv_1:
		suba.l     a0,a0
Ash_getenv_4:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts


	.data

xd4076:
		dc.b '[| Internal errors! | Take care! |][  OK  ]',0
	.even
