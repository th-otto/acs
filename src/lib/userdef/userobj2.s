
		.globl A_pattern
A_pattern:
		movem.l    d2-d3/a2-a4,-(a7)
		lea.l      -12(a7),a7
		movea.l    36(a7),a2
		lea.l      4(a7),a3
		lea.l      ACSblk,a4
		move.w     22(a2),d0
		bne.s      A_pattern_1
		move.w     24(a2),d1
		beq.s      A_pattern_2
A_pattern_1:
		move.w     18(a2),(a3)
		move.w     20(a2),2(a3)
		move.w     18(a2),d0
		add.w      22(a2),d0
		subq.w     #1,d0
		move.w     d0,4(a3)
		move.w     20(a2),d1
		add.w      24(a2),d1
		subq.w     #1,d1
		move.w     d1,6(a3)
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		bra.s      A_pattern_3
A_pattern_2:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_pattern_3:
		move.w     10(a2),(a3)
		move.w     12(a2),2(a3)
		move.w     (a3),d0
		add.w      14(a2),d0
		subq.w     #1,d0
		move.w     d0,4(a3)
		move.w     2(a3),d1
		add.w      16(a2),d1
		subq.w     #1,d1
		move.w     d1,6(a3)
		move.l     26(a2),(a7)
		move.w     6(a2),d3
		move.w     8(a2),d0
		eor.w      d0,d3
		tst.w      d3
		bne        A_pattern_4
		movea.l    (a4),a0
		move.w     16(a0),d0
		moveq.l    #1,d1
		jsr        vswr_mode
		move.w     (a7),d0
		lsl.w      #8,d0
		asr.w      #8,d0
		and.w      #$00C0,d0
		tst.w      d0
		beq.s      A_pattern_5
		sub.w      #$0040,d0
		beq.s      A_pattern_6
		bra.s      A_pattern_7
A_pattern_5:
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		bra.s      A_pattern_8
A_pattern_6:
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
A_pattern_8:
		move.w     (a7),d1
		lsl.w      #8,d1
		asr.w      #8,d1
		and.w      #$001F,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_style
		bra.s      A_pattern_9
A_pattern_7:
		moveq.l    #4,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		move.w     (a7),d0
		lsl.w      #8,d0
		asr.w      #8,d0
		and.w      #$001F,d0
		lsl.w      #2,d0
		lea.l      up,a0
		movea.l    0(a0,d0.w),a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vsf_udpat
A_pattern_9:
		moveq.l    #15,d1
		and.w      2(a7),d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		move.w     (a7),d0
		lsl.w      #8,d0
		asr.w      #8,d0
		and.w      #$0020,d0
		beq.s      A_pattern_10
		moveq.l    #1,d1
		bra.s      A_pattern_11
A_pattern_10:
		clr.w      d1
A_pattern_11:
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
A_pattern_4:
		moveq.l    #1,d0
		and.w      d3,d0
		bne.s      A_pattern_12
		moveq.l    #1,d1
		and.w      8(a2),d1
		beq.s      A_pattern_13
A_pattern_12:
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
A_pattern_13:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #-2,d0
		and.w      8(a2),d0
		lea.l      12(a7),a7
		movem.l    (a7)+,d2-d3/a2-a4
		rts

		.globl A_arrows
A_arrows:
		movem.l    d2-d6/a2/a4-a5,-(a7)
		subq.w     #8,a7
		movea.l    44(a7),a2
		lea.l      ACSblk,a4
		move.w     22(a2),d0
		bne.s      A_arrows_1
		move.w     24(a2),d1
		beq.s      A_arrows_2
A_arrows_1:
		move.w     18(a2),(a7)
		move.w     20(a2),2(a7)
		move.w     18(a2),d0
		add.w      22(a2),d0
		subq.w     #1,d0
		move.w     d0,4(a7)
		move.w     20(a2),d1
		add.w      24(a2),d1
		subq.w     #1,d1
		move.w     d1,6(a7)
		lea.l      (a7),a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		bra.s      A_arrows_3
A_arrows_2:
		lea.l      (a7),a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_arrows_3:
		lea.l      26(a2),a5
		move.l     (a5),d0
		moveq.l    #19,d1
		asr.l      d1,d0
		and.l      #$00000001,d0
		beq.s      A_arrows_4
		moveq.l    #1,d3
		bra.s      A_arrows_5
A_arrows_4:
		clr.w      d3
A_arrows_5:
		move.w     6(a2),d0
		cmp.w      8(a2),d0
		bne        A_arrows_6
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		move.w     14(a2),d0
		asr.w      #1,d0
		move.w     16(a2),d1
		asr.w      #1,d1
		movea.l    (a4),a0
		move.w     18(a0),d2
		asr.w      #1,d2
		move.w     20(a0),d4
		asr.w      #1,d4
		move.w     10(a2),d5
		move.w     d5,4(a7)
		move.w     d5,(a7)
		move.w     12(a2),d5
		move.w     d5,6(a7)
		move.w     d5,2(a7)
		move.l     (a5),d5
		moveq.l    #24,d6
		asr.l      d6,d5
		and.w      #$0007,d5
		cmp.w      #$0007,d5
		bhi.s      A_arrows_7
		add.w      d5,d5
		move.w     J48(pc,d5.w),d5
		jmp        J48(pc,d5.w)
J48:
		dc.w A_arrows_8-J48
		dc.w A_arrows_9-J48
		dc.w A_arrows_10-J48
		dc.w A_arrows_11-J48
		dc.w A_arrows_12-J48
		dc.w A_arrows_13-J48
		dc.w A_arrows_14-J48
		dc.w A_arrows_15-J48
A_arrows_8:
		add.w      d0,(a7)
		bra.s      A_arrows_16
A_arrows_9:
		add.w      d3,(a7)
A_arrows_16:
		add.w      d3,2(a7)
		bra.s      A_arrows_7
A_arrows_10:
		add.w      d3,(a7)
		bra.s      A_arrows_17
A_arrows_11:
		add.w      d3,(a7)
		moveq.l    #-1,d5
		add.w      16(a2),d5
		sub.w      d3,d5
		add.w      d5,2(a7)
		bra.s      A_arrows_7
A_arrows_12:
		add.w      d4,2(a7)
		add.w      d0,(a7)
		bra.s      A_arrows_7
A_arrows_13:
		add.w      d2,(a7)
		add.w      d4,2(a7)
		bra.s      A_arrows_7
A_arrows_14:
		add.w      d2,(a7)
A_arrows_17:
		add.w      d1,2(a7)
		bra.s      A_arrows_7
A_arrows_15:
		add.w      d2,(a7)
		move.w     16(a2),d5
		sub.w      d4,d5
		add.w      d5,2(a7)
A_arrows_7:
		move.l     (a5),d5
		moveq.l    #28,d6
		asr.l      d6,d5
		and.w      #$0007,d5
		cmp.w      #$0007,d5
		bhi        A_arrows_18
		add.w      d5,d5
		move.w     J49(pc,d5.w),d5
		jmp        J49(pc,d5.w)
J49:
		dc.w A_arrows_19-J49
		dc.w A_arrows_20-J49
		dc.w A_arrows_21-J49
		dc.w A_arrows_22-J49
		dc.w A_arrows_23-J49
		dc.w A_arrows_24-J49
		dc.w A_arrows_25-J49
		dc.w A_arrows_26-J49
A_arrows_19:
		add.w      d0,4(a7)
		bra.s      A_arrows_27
A_arrows_20:
		moveq.l    #-1,d5
		add.w      14(a2),d5
		sub.w      d3,d5
		add.w      d5,4(a7)
A_arrows_27:
		moveq.l    #-1,d5
		add.w      16(a2),d5
		sub.w      d3,d5
		add.w      d5,6(a7)
		bra.s      A_arrows_18
A_arrows_21:
		moveq.l    #-1,d5
		add.w      14(a2),d5
		sub.w      d3,d5
		add.w      d5,4(a7)
		bra.s      A_arrows_28
A_arrows_22:
		moveq.l    #-1,d5
		add.w      14(a2),d5
		sub.w      d3,d5
		add.w      d5,4(a7)
		add.w      d3,6(a7)
		bra.s      A_arrows_18
A_arrows_23:
		add.w      d0,4(a7)
		bra.s      A_arrows_29
A_arrows_24:
		move.w     14(a2),d0
		sub.w      d2,d0
		add.w      d0,4(a7)
A_arrows_29:
		move.w     16(a2),d0
		sub.w      d4,d0
		add.w      d0,6(a7)
		bra.s      A_arrows_18
A_arrows_25:
		move.w     14(a2),d0
		sub.w      d2,d0
		add.w      d0,4(a7)
A_arrows_28:
		add.w      d1,6(a7)
		bra.s      A_arrows_18
A_arrows_26:
		move.w     14(a2),d0
		sub.w      d2,d0
		add.w      d0,4(a7)
		add.w      d4,6(a7)
A_arrows_18:
		tst.w      d3
		beq.s      A_arrows_30
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_width
		bra.s      A_arrows_31
A_arrows_30:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_width
A_arrows_31:
		move.l     (a5),d5
		moveq.l    #16,d0
		asr.l      d0,d5
		and.w      #$0007,d5
		cmp.w      #$0007,d5
		bne.s      A_arrows_32
		move.w     #$5555,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_udsty
A_arrows_32:
		move.w     d5,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		move.l     (a5),d2
		moveq.l    #22,d0
		asr.l      d0,d2
		and.w      #$0003,d2
		move.l     (a5),d1
		moveq.l    #20,d4
		asr.l      d4,d1
		and.w      #$0003,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_ends
		move.l     (a5),d0
		and.l      #$80000000,d0
		beq.s      A_arrows_33
		movea.l    (a4),a0
		movea.l    572(a0),a1
		move.w     14(a1),d1
		and.w      #$0100,d1
		bne.s      A_arrows_33
		addq.w     #1,(a7)
		addq.w     #1,4(a7)
		addq.w     #1,2(a7)
		addq.w     #1,6(a7)
		move.w     16(a0),d0
		clr.w      d1
		jsr        vsl_color
		lea.l      (a7),a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		subq.w     #1,(a7)
		subq.w     #1,4(a7)
		subq.w     #1,2(a7)
		subq.w     #1,6(a7)
A_arrows_33:
		moveq.l    #15,d1
		and.w      2(a5),d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		lea.l      (a7),a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
A_arrows_6:
		moveq.l    #1,d0
		and.w      6(a2),d0
		bne.s      A_arrows_34
		moveq.l    #1,d1
		and.w      8(a2),d1
		beq        A_arrows_35
A_arrows_34:
		moveq.l    #1,d0
		add.w      18(a2),d0
		move.w     d0,(a7)
		moveq.l    #1,d1
		add.w      20(a2),d1
		move.w     d1,2(a7)
		move.w     18(a2),d2
		add.w      22(a2),d2
		subq.w     #2,d2
		move.w     d2,4(a7)
		move.w     20(a2),d4
		add.w      24(a2),d4
		subq.w     #2,d4
		move.w     d4,6(a7)
		lea.l      (a7),a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		lea.l      (a7),a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
A_arrows_35:
		clr.w      d2
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_ends
		lea.l      (a7),a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
		tst.w      d3
		ble.s      A_arrows_36
		moveq.l    #-2,d0
		and.w      8(a2),d0
		bra.s      A_arrows_37
A_arrows_36:
		moveq.l    #-10,d0
		and.w      8(a2),d0
A_arrows_37:
		addq.w     #8,a7
		movem.l    (a7)+,d2-d6/a2/a4-a5
		rts

		.globl A_select
A_select:
		movem.l    d2/a2-a4,-(a7)
		lea.l      -28(a7),a7
		movea.l    48(a7),a2
		lea.l      20(a7),a3
		lea.l      ACSblk,a4
		move.w     22(a2),d0
		bne.s      A_select_1
		move.w     24(a2),d1
		beq.s      A_select_2
A_select_1:
		move.w     18(a2),(a3)
		move.w     20(a2),2(a3)
		move.w     18(a2),d0
		add.w      22(a2),d0
		subq.w     #1,d0
		move.w     d0,4(a3)
		move.w     20(a2),d1
		add.w      24(a2),d1
		subq.w     #1,d1
		move.w     d1,6(a3)
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		bra.s      A_select_3
A_select_2:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_select_3:
		move.w     6(a2),d0
		move.w     8(a2),d1
		eor.w      d1,d0
		tst.w      d0
		bne.s      A_select_4
		movea.l    (a4),a0
		move.w     16(a0),d0
		moveq.l    #1,d1
		jsr        vswr_mode
		bra.s      A_select_5
A_select_4:
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
A_select_5:
		moveq.l    #1,d0
		and.w      6(a2),d0
		bne.s      A_select_6
		moveq.l    #1,d1
		and.w      8(a2),d1
		beq        A_select_7
A_select_6:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_width
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		clr.w      d2
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_ends
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		move.w     10(a2),d0
		move.w     d0,16(a7)
		move.w     d0,12(a7)
		move.w     d0,(a7)
		move.w     12(a2),d1
		move.w     d1,18(a7)
		move.w     d1,6(a7)
		move.w     d1,2(a7)
		move.w     10(a2),d0
		add.w      14(a2),d0
		subq.w     #1,d0
		move.w     d0,8(a7)
		move.w     d0,4(a7)
		move.w     12(a2),d1
		add.w      16(a2),d1
		subq.w     #1,d1
		move.w     d1,14(a7)
		move.w     d1,10(a7)
		lea.l      (a7),a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #5,d1
		jsr        v_pline
A_select_7:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #-2,d0
		and.w      8(a2),d0
		lea.l      28(a7),a7
		movem.l    (a7)+,d2/a2-a4
		rts

		.data

quer:
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.w $ffff
quer2:
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
quer3:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $ffff
senk:
		dc.b 'UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU'
senk2:
		dc.b 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'
senk3:
		dc.b '33333333333333333333333333333333'
up:
		dc.l quer
		dc.l quer
		dc.l quer2
		dc.l quer3
		dc.l senk
		dc.l senk2
		dc.l senk3
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer
		dc.l quer

