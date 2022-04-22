
		.globl A_ftext
A_ftext:
		movem.l    d2-d7/a2-a6,-(a7)
		lea.l      -66(a7),a7
		clr.l      20(a7)
		movea.l    114(a7),a0
		move.w     4(a0),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a0),a1
		adda.l     d0,a1
		move.l     a1,30(a7)
		movea.l    12(a1),a3
		move.l     4(a3),d3
		moveq.l    #16,d0
		asr.l      d0,d3
		movea.l    12(a3),a5
		movea.l    a5,a0
		jsr        strlen
		lea.l      0(a5,d0.w),a4
		movea.l    16(a3),a6
		move.l     4(a3),d4
		asr.l      #8,d4
		and.w      #$003F,d4
		move.l     4(a3),d0
		moveq.l    #14,d1
		asr.l      d1,d0
		and.w      #$0003,d0
		move.w     d0,34(a7)
		movea.l    114(a7),a0
		move.w     12(a0),d2
		add.w      16(a0),d2
		subq.w     #1,d2
		move.w     d2,26(a7)
		move.w     22(a0),d0
		bne.s      A_ftext_1
		move.w     24(a0),d1
		bne.s      A_ftext_1
		movea.l    ACSblk,a1
		move.w     8(a1),58(a7)
		move.w     10(a1),60(a7)
		move.w     12(a1),62(a7)
		move.w     10(a1),d2
		add.w      14(a1),d2
		move.w     d2,64(a7)
		bra.s      A_ftext_2
A_ftext_1:
		movea.l    114(a7),a0
		move.w     18(a0),58(a7)
		move.w     20(a0),60(a7)
		move.w     22(a0),62(a7)
		move.w     24(a0),64(a7)
A_ftext_2:
		moveq.l    #-1,d0
		add.w      58(a7),d0
		add.w      d0,62(a7)
		moveq.l    #-1,d0
		add.w      60(a7),d0
		add.w      d0,64(a7)
		move.w     64(a7),d0
		cmp.w      26(a7),d0
		ble.s      A_ftext_3
		move.w     26(a7),64(a7)
A_ftext_3:
		move.w     64(a7),d0
		cmp.w      60(a7),d0
		blt        A_ftext_4
		lea.l      58(a7),a0
		moveq.l    #1,d1
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #2,d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vswr_mode
		move.w     d3,d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vst_font
		clr.w      d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vst_rotation
		move.w     d4,d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    114(a7),a0
		move.w     12(a0),d6
		move.w     6(a3),d0
		and.w      #$00FF,d0
		move.w     d0,40(a7)
		bne.s      A_ftext_5
		movea.l    ACSblk,a1
		move.w     24(a1),40(a7)
A_ftext_5:
		lea.l      38(a7),a3
		lea.l      36(a7),a2
		pea.l      40(a7)
		pea.l      (a3)
		movea.l    a2,a1
		movea.l    a2,a0
		move.w     48(a7),d1
		move.l     a1,-(a7)
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vst_height
		addq.w     #8,a7
		move.w     (a6),d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vst_color
		lea.l      42(a7),a6
		pea.l      (a6)
		pea.l      (a2)
		pea.l      56(a7)
		movea.l    a2,a1
		movea.l    a2,a0
		move.l     a1,-(a7)
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vqt_fontinfo
		lea.l      12(a7),a7
		move.w     (a6),d0
		add.w      d0,(a3)
		add.w      d0,40(a7)
		movea.l    114(a7),a0
		move.w     10(a0),d7
		move.w     14(a0),24(a7)
		move.w     34(a7),d1
		tst.w      d1
		beq.s      A_ftext_6
		subq.w     #1,d1
		beq.s      A_ftext_7
		subq.w     #1,d1
		beq.s      A_ftext_8
		subq.w     #1,d1
		beq.s      A_ftext_9
		bra        A_ftext_10
A_ftext_7:
		add.w      2(a6),d7
		bra.s      A_ftext_9
A_ftext_6:
		movea.l    114(a7),a0
		move.w     14(a0),d0
		asr.w      #1,d0
		addq.w     #1,d0
		add.w      d0,d7
		movea.l    a2,a1
		movea.l    a2,a0
		moveq.l    #5,d2
		moveq.l    #1,d1
		move.l     a1,-(a7)
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vst_alignment
		bra.s      A_ftext_10
A_ftext_8:
		movea.l    114(a7),a0
		move.w     14(a0),d0
		sub.w      4(a6),d0
		add.w      d0,d7
		moveq.l    #16,d1
		and.w      d4,d1
		beq.s      A_ftext_11
		subq.w     #2,d7
A_ftext_11:
		movea.l    a2,a1
		movea.l    a2,a0
		moveq.l    #5,d2
		moveq.l    #2,d1
		move.l     a1,-(a7)
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vst_alignment
		bra.s      A_ftext_10
A_ftext_9:
		movea.l    a2,a1
		movea.l    a2,a0
		moveq.l    #5,d2
		clr.w      d1
		move.l     a1,-(a7)
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vst_alignment
A_ftext_10:
		move.w     24(a7),d4
		sub.w      2(a6),d4
		sub.w      4(a6),d4
		move.w     (a3),d0
		bgt.s      A_ftext_12
		move.w     #$0001,(a3)
A_ftext_12:
		move.w     d4,d0
		ext.l      d0
		divs.w     (a3),d0
		move.w     d0,28(a7)
		subq.w     #1,d0
		blt        A_ftext_4
		movea.l    a5,a6
A_ftext_31:
		moveq.l    #124,d0
		movea.l    a6,a0
		jsr        strchr
		movea.l    a0,a2
		move.w     28(a7),d0
		lea.l      0(a6,d0.w),a3
		move.l     a2,d1
		beq.s      A_ftext_13
		cmpa.l     d1,a3
		bls.s      A_ftext_13
		movea.l    a2,a3
		lea.l      1(a2),a1
		move.l     a1,20(a7)
		bra.w      A_ftext_14
A_ftext_13:
		cmpa.l     a4,a3
		bcc.s      A_ftext_15
		clr.w      d3
A_ftext_19:
		move.l     a2,d0
		beq.s      A_ftext_16
		cmp.l      a3,d0
		bls.s      A_ftext_15
A_ftext_16:
		move.b     (a3),d5
		clr.b      (a3)
		lea.l      (a7),a1
		movea.l    a6,a0
		movea.l    ACSblk,a5
		move.w     16(a5),d0
		jsr        vqt_extent
		move.b     d5,(a3)
		move.w     4(a7),d0
		sub.w      (a7),d0
		cmp.w      d0,d4
		bge.s      A_ftext_17
		subq.w     #1,a3
		tst.w      d3
		bne.s      A_ftext_15
		bra.s      A_ftext_18
A_ftext_17:
		addq.w     #1,a3
		moveq.l    #1,d3
A_ftext_18:
		cmpa.l     a3,a4
		bcc.s      A_ftext_19
A_ftext_15:
		cmpa.l     a2,a3
		beq.s      A_ftext_20
		cmpa.l     a3,a4
		bls.s      A_ftext_20
		move.l     a3,16(a7)
		bra.s      A_ftext_21
A_ftext_23:
		subq.w     #1,a3
A_ftext_21:
		cmpi.b     #$20,-1(a3)
		beq.s      A_ftext_22
		cmpa.l     a3,a6
		bcs.s      A_ftext_23
A_ftext_22:
		cmpa.l     a3,a6
		bne.s      A_ftext_20
		movea.l    16(a7),a3
A_ftext_20:
		move.l     a3,20(a7)
		move.l     a2,d0
		beq.s      A_ftext_14
		cmpa.l     d0,a3
		bne.s      A_ftext_14
		addq.l     #1,20(a7)
		bra.s      A_ftext_14
A_ftext_25:
		addq.w     #1,a6
A_ftext_14:
		cmpi.b     #$20,(a6)
		bne.s      A_ftext_24
		cmpa.l     a6,a3
		bhi.s      A_ftext_25
		bra.s      A_ftext_24
A_ftext_27:
		subq.w     #1,a3
A_ftext_24:
		cmpi.b     #$20,-1(a3)
		bne.s      A_ftext_26
		cmpa.l     a3,a6
		bcs.s      A_ftext_27
A_ftext_26:
		move.b     (a3),d5
		clr.b      (a3)
		cmpi.w     #$0003,34(a7)
		bne.s      A_ftext_28
		clr.w      -(a7)
		moveq.l    #1,d0
		move.w     d0,-(a7)
		move.w     28(a7),-(a7)
		movea.l    a6,a0
		move.w     d6,d2
		move.w     d7,d1
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		jsr        v_justified
		addq.w     #6,a7
		bra.s      A_ftext_29
A_ftext_28:
		movea.l    a6,a0
		move.w     d6,d2
		move.w     d7,d1
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		jsr        v_gtext
A_ftext_29:
		move.b     d5,(a3)
		movea.l    20(a7),a6
		add.w      40(a7),d6
		cmp.w      26(a7),d6
		bge.s      A_ftext_30
		cmpa.l     a6,a4
		bhi        A_ftext_31
A_ftext_30:
		lea.l      58(a7),a0
		clr.w      d1
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		jsr        vs_clip
A_ftext_4:
		moveq.l    #-2,d0
		movea.l    114(a7),a0
		and.w      8(a0),d0
		lea.l      66(a7),a7
		movem.l    (a7)+,d2-d7/a2-a6
		rts

		.globl Auo_ftext
Auo_ftext:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #4,a7
		move.l     a1,(a7)
		movea.l    12(a0),a2
		movea.l    16(a2),a3
		move.w     d0,d1
		cmp.w      #$0014,d1
		beq        Auo_ftext_1
		bgt.s      Auo_ftext_2
		cmp.w      #$0013,d1
		bhi        Auo_ftext_3
		add.w      d1,d1
		move.w     J50(pc,d1.w),d1
		jmp        J50(pc,d1.w)
J50:
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_4-J50
		dc.w Auo_ftext_5-J50
		dc.w Auo_ftext_6-J50
		dc.w Auo_ftext_7-J50
		dc.w Auo_ftext_8-J50
		dc.w Auo_ftext_8-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_9-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_3-J50
		dc.w Auo_ftext_10-J50
		dc.w Auo_ftext_1-J50
Auo_ftext_2:
		sub.w      #$012c,d0
		cmp.w      #$0007,d0
		bhi        Auo_ftext_3
		add.w      d0,d0
		move.w     J51(pc,d1.w),d1
		jmp        J51(pc,d1.w)
J51:
		dc.w Auo_ftext_14-J51
		dc.w Auo_ftext_15-J51
		dc.w Auo_ftext_16-J51
		dc.w Auo_ftext_17-J51
		dc.w Auo_ftext_18-J51
		dc.w Auo_ftext_19-J51
		dc.w Auo_ftext_20-J51
		dc.w Auo_ftext_21-J51
Auo_ftext_4:
		move.l     12(a2),d0
		beq.s      Auo_ftext_24
		movea.l    d0,a0
		jsr        Ast_create
		move.l     a0,12(a2)
Auo_ftext_24:
		move.l     12(a2),d0
		bne.s      Auo_ftext_25
		lea.l      $000D4E26,a0
		jsr        Ast_create
		move.l     a0,12(a2)
Auo_ftext_25:
		moveq.l    #16,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		beq        Auo_ftext_3
		moveq.l    #16,d0
		lea.l      ftextproto,a1
		jsr        memcpy
		move.l     a3,16(a2)
		bra        Auo_ftext_1
Auo_ftext_5:
		movea.l    12(a2),a0
		jsr        Ast_delete
		movea.l    a3,a0
		jsr        Ax_free
		bra        Auo_ftext_1
Auo_ftext_9:
		movea.l    (a7),a4
		move.l     (a4),6(a3)
		move.l     4(a4),10(a3)
		move.w     8(a4),14(a3)
		bra        Auo_ftext_1
Auo_ftext_10:
		movea.l    (a7),a4
		move.l     6(a3),(a4)
		move.l     10(a3),4(a4)
		move.w     14(a3),8(a4)
		bra        Auo_ftext_1
Auo_ftext_7:
		movea.l    12(a2),a0
		jsr        Ast_delete
		movea.l    (a7),a0
		jsr        Ast_create
		move.l     a0,12(a2)
		move.l     a0,d0
		bne        Auo_ftext_1
		lea.l      $000D4E26,a0
		jsr        Ast_create
		move.l     a0,12(a2)
		bra        Auo_ftext_1
Auo_ftext_6:
		movea.l    (a7),a0
		move.l     12(a2),(a0)
		bra        Auo_ftext_1
Auo_ftext_8:
		movea.l    6(a3),a4
		move.l     a4,d0
		beq        Auo_ftext_1
		moveq.l    #-1,d1
		move.w     14(a3),d0
		movea.l    a4,a0
		movea.l    102(a4),a1
Auo_ftext_12:
		jsr        (a1)
		bra        Auo_ftext_1
Auo_ftext_14:
		movea.l    (a7),a0
		move.w     (a0),d3
		ext.l      d3
		move.l     4(a2),d0
		and.l      #$0000FFFF,d0
		move.l     d3,d1
		moveq.l    #16,d2
		lsl.l      d2,d1
		or.l       d1,d0
		move.l     d0,4(a2)
		bra        Auo_ftext_1
Auo_ftext_15:
		movea.l    (a7),a0
		move.w     (a0),d3
		ext.l      d3
		cmp.l      #$000000FF,d3
		ble.s      Auo_ftext_26
		move.l     #$000000FF,d3
Auo_ftext_26:
		move.l     4(a2),d0
		and.l      #$FFFFFF00,d0
		or.l       d3,d0
		move.l     d0,4(a2)
		bra        Auo_ftext_1
Auo_ftext_16:
		movea.l    (a7),a0
		move.w     (a0),(a3)
		bra        Auo_ftext_1
Auo_ftext_17:
		movea.l    (a7),a0
		move.w     (a0),d3
		ext.l      d3
		and.l      #$0000003F,d3
		move.l     4(a2),d0
		and.l      #$FFFFC0FF,d0
		move.l     d3,d1
		lsl.l      #8,d1
		or.l       d1,d0
		move.l     d0,4(a2)
		bra.s      Auo_ftext_1
Auo_ftext_18:
		move.l     4(a2),d0
		and.l      #$FFFF3FFF,d0
		or.l       #$00004000,d0
		move.l     d0,4(a2)
		bra.s      Auo_ftext_1
Auo_ftext_19:
		move.l     4(a2),d0
		and.l      #$FFFF3FFF,d0
		or.l       #$FFFF8000,d0
		move.l     d0,4(a2)
		bra.s      Auo_ftext_1
Auo_ftext_20:
		move.l     4(a2),d0
		and.l      #$FFFF3FFF,d0
		or.l       #$00000000,d0
		move.l     d0,4(a2)
		bra.s      Auo_ftext_1
Auo_ftext_21:
		move.l     4(a2),d0
		and.l      #$FFFF3FFF,d0
		or.l       #$FFFFC000,d0
		move.l     d0,4(a2)
		bra.s      Auo_ftext_1
Auo_ftext_3:
		clr.w      d0
		bra.s      Auo_ftext_27
Auo_ftext_1:
		moveq.l    #1,d0
Auo_ftext_27:
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a4
		rts

		.data

ftextproto:
		dc.w $0001
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.b $00
		dc.b $00
	.even
