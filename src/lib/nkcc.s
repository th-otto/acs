
		.globl nkc_gemks2n
nkc_gemks2n:
		move.w     d4,-(a7)
		move.w     d0,d4
		and.w      #$00FF,d0
		ext.l      d0
		move.w     d4,d2
		ext.l      d2
		and.l      #$0000FF00,d2
		lsl.l      #8,d2
		or.l       d2,d0
		and.w      #$00FF,d1
		ext.l      d1
		moveq.l    #24,d2
		lsl.l      d2,d1
		or.l       d1,d0
		jsr        nkc_tos2
		and.w      #$BFFF,d0
		move.w     (a7)+,d4
		rts

		.globl nkc_gem2n
nkc_gem2n:
		move.w     d3,-(a7)
		move.w     d0,d3
		jsr        nkc_kstate
		move.w     d3,d1
		bsr.w      nkc_gemks2n
		move.w     (a7)+,d3
		rts

		.globl nkc_n2gemks
nkc_n2gemks:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		jsr        nkc_n2to
		move.l     a2,d1
		beq.s      nkc_n2gemks_1
		move.w     d0,d2
		and.w      #$00FF,d2
		move.l     d0,d1
		and.l      #$00FF0000,d1
		asr.l      #8,d1
		or.w       d1,d2
		move.w     d2,(a2)
nkc_n2gemks_1:
		move.l     a3,d1
		beq.s      nkc_n2gemks_2
		move.l     d0,d2
		and.l      #$FF000000,d2
		moveq.l    #24,d1
		lsr.l      d1,d2
		move.w     d2,(a3)
nkc_n2gemks_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl nkc_n2gem
nkc_n2gem:
		jsr        nkc_n2to
		move.w     d0,d1
		and.w      #$00FF,d1
		move.l     d0,d2
		and.l      #$00FF0000,d2
		asr.l      #8,d2
		or.w       d2,d1
		move.w     d1,d0
		rts

		.globl nkc_n2kstate
nkc_n2kstate:
		jsr        nkc_n2to
		and.l      #$FF000000,d0
		moveq.l    #24,d1
		lsr.l      d1,d0
		rts

		.globl nkc_kstate
nkc_kstate:
		move.l     a2,-(a7)
		lea.l      pshift,a2
		move.l     (a2),d0
		bne.s      nkc_kstate_1
		jsr        Ash_getOSHeader
		cmpi.w     #$0100,2(a0)
		beq.s      nkc_kstate_2
		move.l     36(a0),(a2)
		bra.s      nkc_kstate_1
nkc_kstate_2:
		move.l     #$00000E1B,(a2)
nkc_kstate_1:
		moveq.l    #31,d0
		movea.l    (a2),a0
		and.w      2(a0),d0
		lsl.w      #8,d0
		movea.l    (a7)+,a2
		rts

		.globl nkc_cmp
nkc_cmp:
		movem.l    d3-d7,-(a7)
		subq.w     #2,a7
		move.w     d0,d4
		move.w     d1,d3
		move.w     d0,d5
		eor.w      d1,d5
		moveq.l    #-1,d6
		and.b      d4,d6
		moveq.l    #-1,d7
		and.b      d3,d7
		tst.w      d5
		beq        nkc_cmp_1
		move.w     d5,d2
		and.w      #$8000,d2
		beq.w      nkc_cmp_2
		move.w     d5,d0
		and.w      #$0C00,d0
		bne        nkc_cmp_3
		cmp.b      #$20,d6
		blt.s      nkc_cmp_4
		tst.w      d4
		bne.s      nkc_cmp_5
		moveq.l    #1,d1
		bra.s      nkc_cmp_6
nkc_cmp_5:
		clr.w      d1
nkc_cmp_6:
		and.w      #$4000,d1
		beq.s      nkc_cmp_7
		move.w     d5,d0
		and.w      #$2000,d0
		bne        nkc_cmp_3
nkc_cmp_7:
		cmp.b      d6,d7
		bne        nkc_cmp_3
		tst.w      d3
		bne.s      nkc_cmp_8
		moveq.l    #1,d0
		bra.s      nkc_cmp_9
nkc_cmp_8:
		clr.w      d0
nkc_cmp_9:
		and.w      #$4000,d0
		beq.s      nkc_cmp_10
		bra        nkc_cmp_1
nkc_cmp_4:
		cmp.b      d6,d7
		bne        nkc_cmp_3
nkc_cmp_10:
		tst.w      d5
		bne.s      nkc_cmp_11
		moveq.l    #1,d0
		bra.s      nkc_cmp_12
nkc_cmp_11:
		clr.w      d0
nkc_cmp_12:
		and.w      #$0300,d0
		bne.w      nkc_cmp_1
		move.w     d4,d1
		and.w      #$0300,d1
		cmp.w      #$0300,d1
		bne.w      nkc_cmp_3
		bra.w      nkc_cmp_13
nkc_cmp_2:
		tst.w      d4
		bne.s      nkc_cmp_14
		moveq.l    #1,d0
		bra.s      nkc_cmp_15
nkc_cmp_14:
		clr.w      d0
nkc_cmp_15:
		and.w      #$4000,d0
		beq.s      nkc_cmp_16
		move.w     d5,d1
		and.w      #$2000,d1
		bne.s      nkc_cmp_3
nkc_cmp_16:
		move.w     d4,d0
		jsr        nkc_toupper
		move.b     d0,(a7)
		cmp.b      d6,d7
		beq.s      nkc_cmp_17
		move.w     d4,d1
		and.w      #$1000,d1
		beq.s      nkc_cmp_3
		move.w     d3,d0
		jsr        nkc_toupper
		/* and.b      #$FF,d0 */
		dc.w 0xc03c,0xffff
		move.b     (a7),d1
		cmp.b      d0,d1
		bne.s      nkc_cmp_18
		moveq.l    #1,d0
		bra.s      nkc_cmp_19
nkc_cmp_18:
		clr.w      d0
nkc_cmp_19:
		bra.s      nkc_cmp_20
nkc_cmp_17:
		tst.w      d3
		bne.s      nkc_cmp_21
		moveq.l    #1,d0
		bra.s      nkc_cmp_22
nkc_cmp_21:
		clr.w      d0
nkc_cmp_22:
		and.w      #$4000,d0
		bne.s      nkc_cmp_1
		tst.w      d5
		bne.s      nkc_cmp_23
		moveq.l    #1,d1
		bra.s      nkc_cmp_24
nkc_cmp_23:
		clr.w      d1
nkc_cmp_24:
		and.w      #$0300,d1
		beq.s      nkc_cmp_25
nkc_cmp_1:
		moveq.l    #1,d0
		bra.s      nkc_cmp_20
nkc_cmp_25:
		move.w     d4,d0
		and.w      #$0300,d0
		cmp.w      #$0300,d0
		beq.s      nkc_cmp_13
nkc_cmp_3:
		clr.w      d0
		bra.s      nkc_cmp_20
nkc_cmp_13:
		move.w     d3,d0
		and.w      #$0300,d0
		beq.s      nkc_cmp_26
		moveq.l    #1,d0
		bra.s      nkc_cmp_20
nkc_cmp_26:
		clr.w      d0
nkc_cmp_20:
		addq.w     #2,a7
		movem.l    (a7)+,d3-d7
		rts

		.globl nkc_exit
nkc_exit:
		clr.w      d0
		rts
