		.text

	.IFNE 0 /* only in lib */
Adate_ymd2dow:
		bsr.w      ~_232
		bsr.w      ~_233
		rts
	.ENDC

		.globl Adate_getMonth
Adate_getMonth:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a3
		movea.l    a1,a4
		clr.w      d3
		lea.l      xd5152,a2
		moveq.l    #3,d0
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_1
		moveq.l    #1,d3
Adate_getMonth_1:
		moveq.l    #3,d0
		lea.l      xd5156-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_2
		moveq.l    #2,d3
Adate_getMonth_2:
		moveq.l    #3,d0
		lea.l      xd515a-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_3
		moveq.l    #3,d3
Adate_getMonth_3:
		moveq.l    #3,d0
		lea.l      xd515e-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_4
		moveq.l    #4,d3
Adate_getMonth_4:
		moveq.l    #3,d0
		lea.l      xd5162-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_5
		moveq.l    #5,d3
Adate_getMonth_5:
		moveq.l    #3,d0
		lea.l      xd5166-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_6
		moveq.l    #6,d3
Adate_getMonth_6:
		moveq.l    #3,d0
		lea.l      xd516a-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_7
		moveq.l    #7,d3
Adate_getMonth_7:
		moveq.l    #3,d0
		lea.l      xd516e-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_8
		moveq.l    #8,d3
Adate_getMonth_8:
		moveq.l    #3,d0
		lea.l      xd5172-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_9
		moveq.l    #9,d3
Adate_getMonth_9:
		moveq.l    #3,d0
		lea.l      xd5176-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_10
		moveq.l    #10,d3
Adate_getMonth_10:
		moveq.l    #3,d0
		lea.l      xd517a-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_11
		moveq.l    #11,d3
Adate_getMonth_11:
		moveq.l    #3,d0
		lea.l      xd517e-xd5152(a2),a1
		movea.l    a3,a0
		jsr        Ast_incmp
		tst.w      d0
		bne.s      Adate_getMonth_12
		moveq.l    #12,d3
Adate_getMonth_12:
		move.l     a4,d0
		beq.s      Adate_getMonth_13
		move.w     d3,-(a7)
		lea.l      xd5182-xd5152(a2),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
Adate_getMonth_13:
		move.w     d3,d0
		movem.l    (a7)+,d3/a2-a4
		rts

		.data

xd5152:
		dc.b 'JAN',0
xd5156:
		dc.b 'FEB',0
xd515a:
		dc.b 'MAR',0
xd515e:
		dc.b 'APR',0
xd5162:
		dc.b 'MAY',0
xd5166:
		dc.b 'JUN',0
xd516a:
		dc.b 'JUL',0
xd516e:
		dc.b 'AUG',0
xd5172:
		dc.b 'SEP',0
xd5176:
		dc.b 'OCT',0
xd517a:
		dc.b 'NOV',0
xd517e:
		dc.b 'DEC',0
xd5182:
		dc.b '%02i',0
		.even
