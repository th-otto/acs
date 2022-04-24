		.text

		.globl Aob_create
Aob_create:
		movem.l    d3/a2-a5,-(a7)
		subq.w     #6,a7
		movea.l    a0,a2
		moveq.l    #0,d3
		moveq.l    #1,d0
		jsr        Aob_count
		ext.l      d0
		move.l     d0,d3
		add.l      d3,d3
		add.l      d0,d3
		lsl.l      #3,d3
		move.l     d3,d0
		jsr        Ax_malloc
		move.l     a0,2(a7)
		beq        Aob_create_1
		move.l     d3,d0
		movea.l    a2,a1
		jsr        memcpy
		clr.w      (a7)
		movea.l    2(a7),a4
		movea.l    a4,a5
Aob_create_11:
		move.w     8(a4),d0
		and.w      #$8000,d0
		bne        Aob_create_2
		move.w     10(a4),d1
		and.w      #$2000,d1
		bne        Aob_create_2
		move.b     7(a4),d2
		ext.w      d2
		sub.w      #$0015,d2
		cmp.w      #$000C,d2
		bhi        Aob_create_3
		add.w      d2,d2
		move.w     J35(pc,d2.w),d2
		jmp        J35(pc,d2.w)
J35:
		dc.w Aob_create_4-J35
		dc.w Aob_create_4-J35
		dc.w Aob_create_5-J35
		dc.w Aob_create_6-J35
		dc.w Aob_create_3-J35
		dc.w Aob_create_7-J35
		dc.w Aob_create_3-J35
		dc.w Aob_create_7-J35
		dc.w Aob_create_4-J35
		dc.w Aob_create_4-J35
		dc.w Aob_create_8-J35
		dc.w Aob_create_7-J35
		dc.w Aob_create_8-J35
Aob_create_4:
		movea.l    12(a4),a0
		jsr        Ate_create
		movea.l    a0,a5
		move.l     a0,12(a4)
		bra.s      Aob_create_3
Aob_create_6:
		movea.l    12(a4),a0
		jsr        Aus_create
		movea.l    a0,a2
		movea.l    a2,a5
		move.l     a5,12(a4)
		move.l     8(a2),d0
		beq.s      Aob_create_9
		lea.l      (a7),a1
		movea.l    d0,a3
		movea.l    a4,a0
		moveq.l    #1,d0
		jsr        (a3)
Aob_create_9:
		cmpi.w     #$FFFF,(a7)
		bne.s      Aob_create_3
		bra.s      Aob_create_1
Aob_create_5:
		movea.l    12(a4),a0
		jsr        Aim_create
		movea.l    a0,a5
		move.l     a0,12(a4)
		bra.s      Aob_create_3
Aob_create_8:
		movea.l    12(a4),a0
		jsr        Aic_create
		movea.l    a0,a5
		move.l     a0,12(a4)
		bra.s      Aob_create_3
Aob_create_7:
		movea.l    12(a4),a0
		jsr        Ast_create
		movea.l    a0,a5
		move.l     a0,12(a4)
Aob_create_3:
		move.l     a5,d0
		bne.s      Aob_create_2
Aob_create_1:
		suba.l     a0,a0
		bra.s      Aob_create_10
Aob_create_2:
		moveq.l    #32,d0
		movea.l    a4,a0
		lea.l      24(a4),a4
		and.w      8(a0),d0
		beq        Aob_create_11
		movea.l    2(a7),a0
Aob_create_10:
		addq.w     #6,a7
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Aob_delete
Aob_delete:
		movem.l    a2-a5,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq        Aob_delete_1
		movea.l    a2,a3
Aob_delete_9:
		move.w     8(a3),d0
		and.w      #$8000,d0
		bne        Aob_delete_2
		move.w     10(a3),d1
		and.w      #$2000,d1
		bne        Aob_delete_2
		move.b     7(a3),d2
		ext.w      d2
		sub.w      #$0015,d2
		cmp.w      #$000C,d2
		bhi.s      Aob_delete_2
		add.w      d2,d2
		move.w     J36(pc,d2.w),d2
		jmp        J36(pc,d2.w)
J36:
		dc.w Aob_delete_3-J36
		dc.w Aob_delete_3-J36
		dc.w Aob_delete_4-J36
		dc.w Aob_delete_5-J36
		dc.w Aob_delete_2-J36
		dc.w Aob_delete_6-J36
		dc.w Aob_delete_2-J36
		dc.w Aob_delete_6-J36
		dc.w Aob_delete_3-J36
		dc.w Aob_delete_3-J36
		dc.w Aob_delete_7-J36
		dc.w Aob_delete_6-J36
		dc.w Aob_delete_7-J36
Aob_delete_3:
		movea.l    12(a3),a0
		jsr        Ate_delete
		bra.s      Aob_delete_2
Aob_delete_5:
		movea.l    12(a3),a4
		move.l     8(a4),d0
		beq.s      Aob_delete_8
		suba.l     a1,a1
		movea.l    a3,a0
		movea.l    d0,a5
		moveq.l    #2,d0
		jsr        (a5)
Aob_delete_8:
		movea.l    a4,a0
		jsr        Aus_delete
		bra.s      Aob_delete_2
Aob_delete_6:
		movea.l    12(a3),a0
		jsr        Ast_delete
		bra.s      Aob_delete_2
Aob_delete_4:
		movea.l    12(a3),a0
		jsr        Aim_delete
		bra.s      Aob_delete_2
Aob_delete_7:
		movea.l    12(a3),a0
		jsr        Aic_delete
Aob_delete_2:
		moveq.l    #32,d0
		movea.l    a3,a0
		lea.l      24(a3),a3
		and.w      8(a0),d0
		beq        Aob_delete_9
		movea.l    a2,a0
		jsr        Ax_free
Aob_delete_1:
		movem.l    (a7)+,a2-a5
		rts

		.globl Aob_count
Aob_count:
		moveq.l    #1,d1
		movea.l    a0,a1
		bra.s      Aob_count_1
Aob_count_4:
		tst.w      d0
		bne.s      Aob_count_2
		move.w     8(a1),d2
		and.w      #$8000,d2
		bne.s      Aob_count_3
Aob_count_2:
		addq.w     #1,d1
Aob_count_3:
		lea.l      24(a1),a1
Aob_count_1:
		moveq.l    #32,d2
		and.w      8(a1),d2
		beq.s      Aob_count_4
		addq.w     #1,d1
		move.w     d1,d0
		rts

convert:
		movem.l    d3-d7/a2-a4/a6,-(a7)
		lea.l      -16(a7),a7
		movea.l    a0,a3
		movea.l    a1,a4
		movea.l    ACSblk,a1
		movea.l    572(a1),a0
		move.w     14(a0),d0
		and.w      #$0800,d0
		beq.s      convert_1
		move.w     8(a3),d0
		muls.w     6(a3),d0
		add.w      d0,d0
		muls.w     28(a1),d0
		ext.l      d0
		movea.l    (a3),a1
		movea.l    (a4),a0
		jsr        memcpy
		bra        convert_2
convert_1:
		movea.l    ACSblk,a0
		moveq.l    #1,d0
		movea.l    ACSblk,a1
		move.b     29(a1),d1
		lsl.w      d1,d0
		cmp.w      26(a0),d0
		beq        convert_3
		move.w     8(a3),d3
		muls.w     6(a3),d3
		ext.l      d3
		clr.w      d2
		move.w     d2,6(a7)
		move.w     d2,4(a7)
		move.w     d2,2(a7)
		move.w     d2,(a7)
		clr.w      d4
		bra        convert_4
convert_18:
		move.w     d4,14(a7)
		move.w     d4,10(a7)
		move.w     d4,d5
		muls.w     8(a3),d5
		ext.l      d5
		clr.w      d6
		bra        convert_5
convert_17:
		move.w     d6,d0
		asr.w      #4,d0
		ext.l      d0
		add.l      d5,d0
		move.l     d0,d1
		add.l      d1,d1
		movea.l    56(a7),a6
		adda.l     d1,a6
		movea.l    (a3),a2
		adda.l     d1,a2
		move.w     d6,12(a7)
		move.w     d6,8(a7)
		move.l     #$00008000,d0
		moveq.l    #15,d2
		and.b      d6,d2
		asr.l      d2,d0
		move.w     (a6),d1
		and.w      d0,d1
		beq        convert_6
		clr.w      d7
		move.w     (a2),d2
		and.w      d0,d2
		beq.s      convert_7
		addq.w     #1,d7
convert_7:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a2
		move.w     (a2),d2
		and.w      d0,d2
		beq.s      convert_8
		addq.w     #2,d7
convert_8:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a2
		move.w     (a2),d2
		and.w      d0,d2
		beq.s      convert_9
		addq.w     #4,d7
convert_9:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a2
		move.w     (a2),d2
		and.w      d0,d2
		beq.s      convert_10
		addq.w     #8,d7
convert_10:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a2
		move.w     (a2),d2
		and.w      d0,d2
		beq.s      convert_11
		add.w      #$0010,d7
convert_11:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a2
		move.w     (a2),d2
		and.w      d0,d2
		beq.s      convert_12
		add.w      #$0020,d7
convert_12:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a2
		move.w     (a2),d2
		and.w      d0,d2
		beq.s      convert_13
		add.w      #$0040,d7
convert_13:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a2
		move.w     (a2),d2
		and.w      d0,d2
		beq.s      convert_14
		add.w      #$0080,d7
convert_14:
		movea.l    ACSblk,a0
		cmpi.w     #$0008,28(a0)
		bge.s      convert_15
		and.w      #$000F,d7
convert_15:
		cmp.w      #$0010,d7
		bge.s      convert_16
		move.w     d7,d0
		add.w      d0,d0
		lea.l      map,a0
		move.w     0(a0,d0.w),d7
		bra.s      convert_16
convert_6:
		moveq.l    #-1,d7
		movea.l    ACSblk,a0
		add.w      26(a0),d7
convert_16:
		move.w     d7,col
		move.w     d7,col+2
		pea.l      col
		move.l     a4,-(a7)
		lea.l      punkt,a1
		lea.l      8(a7),a0
		moveq.l    #1,d1
		movea.l    ACSblk,a2
		move.w     16(a2),d0
		jsr        vrt_cpyfm
		addq.w     #8,a7
		addq.w     #1,d6
convert_5:
		cmp.w      4(a4),d6
		blt        convert_17
		addq.w     #1,d4
convert_4:
		cmp.w      6(a4),d4
		blt        convert_18
		bra.s      convert_2
convert_3:
		movea.l    a4,a1
		movea.l    a3,a0
		movea.l    ACSblk,a2
		move.w     16(a2),d0
		jsr        vr_trnfm
convert_2:
		lea.l      16(a7),a7
		movem.l    (a7)+,d3-d7/a2-a4/a6
		rts

		.globl Aic_create
Aic_create:
		movem.l    d3-d5/a2-a6,-(a7)
		lea.l      -44(a7),a7
		movea.l    a0,a3
		moveq.l    #38,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Aic_create_1
		movea.l    a3,a1
		moveq.l    #38,d0
		jsr        memcpy
		movea.l    8(a3),a0
		jsr        Ast_create
		move.l     a0,8(a2)
		move.l     a0,d0
		bne.s      Aic_create_2
		movea.l    a2,a0
		moveq.l    #38,d0
		jsr        Ax_recycle
Aic_create_1:
		suba.l     a0,a0
		bra        Aic_create_3
Aic_create_2:
		suba.l     a3,a3
		movea.l    34(a2),a6
		move.l     a6,d0
		beq        Aic_create_4
		movea.l    ACSblk,a0
		movea.l    640(a0),a1
		cmpi.w     #$0330,(a1)
		ble.s      Aic_create_5
		cmpi.w     #$0350,(a1)
		blt.s      Aic_create_6
Aic_create_5:
		lea.l      42(a7),a5
		move.l     _globl,-(a7)
		pea.l      (a5)
		pea.l      48(a7)
		movea.l    a5,a1
		movea.l    a5,a0
		moveq.l    #2,d0
		jsr        mt_appl_getinfo
		lea.l      12(a7),a7
		tst.w      d0
		beq        Aic_create_4
		move.w     40(a7),d0
		beq        Aic_create_4
Aic_create_6:
		moveq.l    #15,d3
		add.w      22(a2),d3
		and.w      #$FFF0,d3
		move.w     d3,d5
		muls.w     24(a2),d5
		asr.w      #3,d5
		ext.l      d5
		movea.l    a6,a3
		move.l     18(a3),d0
		beq.s      Aic_create_7
		movea.l    d0,a0
		move.w     (a0),d1
		movea.l    ACSblk,a1
		cmp.w      28(a1),d1
		bgt.s      Aic_create_7
		movea.l    d0,a3
Aic_create_7:
		move.l     a3,34(a2)
		clr.l      18(a3)
		movea.l    ACSblk,a0
		move.w     28(a0),d0
		cmp.w      (a3),d0
		blt        Aic_create_4
		movea.l    2(a3),a5
		subq.w     #6,a5
		move.w     (a5),d1
		ble.s      Aic_create_8
		addq.w     #1,(a5)
		lea.l      6(a5),a0
		move.l     a0,2(a3)
		movea.l    10(a3),a5
		move.l     a5,d0
		beq        Aic_create_9
		subq.w     #6,a5
		addq.w     #1,(a5)
		lea.l      6(a5),a0
		move.l     a0,10(a3)
		bra        Aic_create_9
Aic_create_8:
		move.l     d5,d0
		movea.l    ACSblk,a0
		move.w     28(a0),d1
		ext.l      d1
		jsr        _lmul
		move.l     d0,d4
		addq.l     #6,d4
		move.l     d5,d0
		move.w     (a3),d1
		ext.l      d1
		jsr        _lmul
		move.l     d0,d5
		movea.l    ACSblk,a0
		move.w     28(a0),(a3)
		clr.w      10(a7)
		lea.l      20(a7),a4
		move.w     #$0001,10(a4)
		move.w     d3,4(a4)
		move.w     d3,4(a7)
		move.w     24(a2),d0
		move.w     d0,6(a4)
		move.w     d0,6(a7)
		move.w     d3,d1
		asr.w      #4,d1
		move.w     d1,8(a4)
		move.w     d1,8(a7)
		movea.l    ACSblk,a0
		move.w     28(a0),d0
		move.w     d0,12(a4)
		move.w     d0,12(a7)
		clr.w      d1
		move.w     d1,18(a4)
		move.w     d1,16(a4)
		move.w     d1,14(a4)
		move.w     d1,18(a7)
		move.w     d1,16(a7)
		move.w     d1,14(a7)
		move.l     d4,d0
		jsr        Ax_malloc
		movea.l    a0,a5
		move.l     a5,d0
		beq        Aic_create_4
		move.l     d0,(a4)
		move.l     d4,d1
		movea.l    d0,a0
		clr.w      d0
		jsr        memset
		move.l     d5,d0
		movea.l    2(a3),a1
		movea.l    (a4),a0
		jsr        memcpy
		move.l     d4,d0
		jsr        Ax_malloc
		movea.l    a0,a5
		move.l     a5,d0
		beq.w      Aic_create_4
		lea.l      6(a5),a1
		move.l     a1,(a7)
		move.w     #$0001,(a0)
		move.l     2(a3),2(a5)
		move.l     6(a3),-(a7)
		lea.l      4(a7),a1
		movea.l    a4,a0
		bsr        convert
		addq.w     #4,a7
		move.l     (a7),2(a3)
		move.l     10(a3),d0
		beq.s      Aic_create_10
		move.l     d4,d0
		jsr        Ax_malloc
		movea.l    a0,a5
		move.l     a5,d0
		bne.s      Aic_create_11
		clr.l      10(a3)
		clr.l      14(a3)
		bra.s      Aic_create_10
Aic_create_11:
		move.l     d5,d0
		movea.l    10(a3),a1
		movea.l    (a4),a0
		jsr        memcpy
		lea.l      6(a5),a0
		move.l     a0,(a7)
		move.w     #$0001,(a5)
		move.l     10(a3),2(a5)
		move.l     14(a3),-(a7)
		lea.l      4(a7),a1
		movea.l    a4,a0
		bsr        convert
		addq.w     #4,a7
		move.l     (a7),10(a3)
Aic_create_10:
		movea.l    (a4),a0
		jsr        Ax_ifree
		bra.s      Aic_create_9
Aic_create_4:
		clr.l      34(a2)
Aic_create_9:
		movea.l    a2,a0
Aic_create_3:
		lea.l      44(a7),a7
		movem.l    (a7)+,d3-d5/a2-a6
		rts

		.globl Aic_delete
Aic_delete:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Aic_delete_1
		movea.l    ACSblk,a1
		movea.l    572(a1),a0
		move.w     14(a0),d1
		and.w      #$0800,d1
		bne.s      Aic_delete_1
		movea.l    34(a2),a3
		move.l     a3,d2
		beq.s      Aic_delete_2
		movea.l    2(a3),a4
		subq.w     #6,a4
		subq.w     #1,(a4)
		cmpi.w     #$0001,(a4)
		bge.s      Aic_delete_3
		move.l     2(a4),2(a3)
		movea.l    a4,a0
		jsr        Ax_ifree
Aic_delete_3:
		movea.l    10(a3),a4
		move.l     a4,d0
		beq.s      Aic_delete_2
		subq.w     #6,a4
		subq.w     #1,(a4)
		cmpi.w     #$0001,(a4)
		bge.s      Aic_delete_2
		move.l     2(a4),10(a3)
		movea.l    a4,a0
		jsr        Ax_ifree
Aic_delete_2:
		movea.l    8(a2),a0
		jsr        Ast_delete
		moveq.l    #38,d0
		movea.l    a2,a0
		jsr        Ax_recycle
Aic_delete_1:
		movem.l    (a7)+,a2-a4
		rts

		.globl Aim_create
Aim_create:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		moveq.l    #14,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Aim_create_1
		suba.l     a0,a0
		bra.s      Aim_create_2
Aim_create_1:
		moveq.l    #14,d0
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        memcpy
		movea.l    a2,a0
Aim_create_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Aim_delete
Aim_delete:
		moveq.l    #14,d0
		jsr        Ax_recycle
		rts

		.globl Ate_create
Ate_create:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		moveq.l    #28,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Ate_create_1
		moveq.l    #28,d0
		movea.l    a3,a1
		jsr        memcpy
		movea.l    (a3),a0
		jsr        Ast_create
		move.l     a0,(a2)
		movea.l    4(a3),a0
		jsr        Ast_create
		move.l     a0,4(a2)
		movea.l    8(a3),a0
		jsr        Ast_create
		move.l     a0,8(a2)
		move.l     (a2),d0
		beq.s      Ate_create_2
		move.l     4(a2),d1
		beq.s      Ate_create_2
		move.l     a0,d2
		bne.s      Ate_create_3
Ate_create_2:
		movea.l    (a2),a0
		jsr        Ax_free
		movea.l    4(a2),a0
		jsr        Ax_free
		movea.l    a2,a0
		jsr        Ax_free
Ate_create_1:
		suba.l     a0,a0
		bra.s      Ate_create_4
Ate_create_3:
		movea.l    a2,a0
Ate_create_4:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Ate_delete
Ate_delete:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Ate_delete_1
		movea.l    8(a2),a0
		jsr        Ast_delete
		movea.l    4(a2),a0
		jsr        Ast_delete
		movea.l    (a2),a0
		jsr        Ast_delete
		moveq.l    #28,d0
		movea.l    a2,a0
		jsr        Ax_recycle
Ate_delete_1:
		movea.l    (a7)+,a2
		rts

		.globl Aus_create
Aus_create:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		moveq.l    #32,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Aus_create_1
		suba.l     a0,a0
		bra.s      Aus_create_2
Aus_create_1:
		moveq.l    #32,d0
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        memcpy
		movea.l    24(a3),a0
		jsr        Ast_create
		move.l     a0,24(a2)
		movea.l    28(a3),a0
		jsr        Ast_create
		move.l     a0,28(a2)
		movea.l    a2,a0
Aus_create_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Aus_delete
Aus_delete:
		move.l     a2,-(a7)
		movea.l    a0,a2
		movea.l    28(a2),a0
		jsr        Ast_delete
		movea.l    24(a2),a0
		jsr        Ast_delete
		moveq.l    #32,d0
		movea.l    a2,a0
		jsr        Ax_recycle
		movea.l    (a7)+,a2
		rts

		.globl Aob_fix
Aob_fix:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     10(a2),d0
		and.w      #$8000,d0
		bne        Aob_fix_1
		ori.w      #$8000,10(a2)
Aob_fix_11:
		lea.l      _globl,a3
		move.w     8(a2),d0
		and.w      #$8000,d0
		bne        Aob_fix_2
		move.b     7(a2),d1
		ext.w      d1
		sub.w      #$0017,d1
		beq.s      Aob_fix_3
		subq.w     #8,d1
		beq.s      Aob_fix_4
		subq.w     #2,d1
		beq.s      Aob_fix_5
		bra        Aob_fix_6
Aob_fix_4:
		movea.l    a2,a0
		jsr        Aob_icon
Aob_fix_5:
		movea.l    (a3),a1
		clr.w      d0
		movea.l    a2,a0
		jsr        mt_rsrc_obfix
		movea.l    12(a2),a0
		move.w     18(a0),d3
		add.w      22(a0),d3
		move.w     26(a0),d0
		add.w      30(a0),d0
		cmp.w      d0,d3
		bge.s      Aob_fix_7
		move.w     d0,d3
Aob_fix_7:
		cmp.w      20(a2),d3
		ble.s      Aob_fix_8
		move.w     d3,20(a2)
Aob_fix_8:
		move.w     20(a0),d3
		add.w      24(a0),d3
		move.w     28(a0),d0
		add.w      32(a0),d0
		cmp.w      d0,d3
		bge.s      Aob_fix_9
		move.w     d0,d3
Aob_fix_9:
		cmp.w      22(a2),d3
		ble.s      Aob_fix_2
		move.w     d3,22(a2)
		bra.s      Aob_fix_2
Aob_fix_3:
		movea.l    (a3),a1
		clr.w      d0
		movea.l    a2,a0
		jsr        mt_rsrc_obfix
		movea.l    12(a2),a0
		move.w     4(a0),d3
		lsl.w      #3,d3
		cmp.w      20(a2),d3
		ble.s      Aob_fix_10
		move.w     d3,20(a2)
Aob_fix_10:
		move.w     22(a2),d0
		cmp.w      6(a0),d0
		bge.s      Aob_fix_2
		move.w     6(a0),22(a2)
		bra.s      Aob_fix_2
Aob_fix_6:
		movea.l    (a3),a1
		clr.w      d0
		movea.l    a2,a0
		jsr        mt_rsrc_obfix
Aob_fix_2:
		moveq.l    #32,d0
		movea.l    a2,a0
		lea.l      24(a2),a2
		and.w      8(a0),d0
		beq        Aob_fix_11
Aob_fix_1:
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Aob_icon
Aob_icon:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		subq.w     #4,a7
		movea.l    a0,a2
		movea.l    12(a2),a0
		lea.l      ACSblk,a1
		movea.l    (a1),a3
		cmpi.w     #$0001,28(a3)
		ble.s      Aob_icon_1
		move.l     34(a0),d0
		beq.s      Aob_icon_1
		movea.l    640(a3),a0
		cmpi.w     #$0330,(a0)
		ble.s      Aob_icon_2
		cmpi.w     #$0350,(a0)
		blt.s      Aob_icon_3
Aob_icon_2:
		lea.l      2(a7),a3
		move.l     _globl,-(a7)
		pea.l      (a3)
		pea.l      8(a7)
		movea.l    a3,a1
		movea.l    a3,a0
		moveq.l    #2,d0
		jsr        mt_appl_getinfo
		lea.l      12(a7),a7
		tst.w      d0
		beq.s      Aob_icon_1
		move.w     (a7),d0
		beq.s      Aob_icon_1
Aob_icon_3:
		move.w     #$0021,6(a2)
		bra.s      Aob_icon_4
Aob_icon_1:
		move.w     #$001F,6(a2)
Aob_icon_4:
		addq.w     #4,a7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Aob_offset
Aob_offset:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		move.w     d0,d3
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		lea.l      0(a2,d1.l),a0
		clr.w      d0
		move.b     7(a0),d2
		ext.w      d2
		sub.w      #$0014,d2
		cmp.w      #$000A,d2
		bhi        Aob_offset_1
		add.w      d2,d2
		move.w     J37(pc,d2.w),d2
		jmp        J37(pc,d2.w)
J37:
		dc.w Aob_offset_2-J37
		dc.w Aob_offset_3-J37
		dc.w Aob_offset_3-J37
		dc.w Aob_offset_1-J37
		dc.w Aob_offset_4-J37
		dc.w Aob_offset_2-J37
		dc.w Aob_offset_5-J37
		dc.w Aob_offset_2-J37
		dc.w Aob_offset_1-J37
		dc.w Aob_offset_3-J37
		dc.w Aob_offset_3-J37
Aob_offset_2:
		move.l     12(a0),d0
		moveq.l    #16,d1
		asr.l      d1,d0
		ext.w      d0
		neg.w      d0
		bra.w      Aob_offset_1
Aob_offset_3:
		movea.l    12(a0),a1
		move.w     22(a1),d0
		neg.w      d0
		bra.w      Aob_offset_1
Aob_offset_5:
		moveq.l    #1,d0
		moveq.l    #4,d1
		and.w      8(a0),d1
		beq.s      Aob_offset_6
		moveq.l    #2,d0
Aob_offset_6:
		move.w     8(a0),d1
		and.w      #$4002,d1
		beq.s      Aob_offset_1
		moveq.l    #3,d0
		bra.s      Aob_offset_1
Aob_offset_4:
		movea.l    12(a0),a1
		movea.l    (a1),a4
		cmpa.l     #A_3Dbutton,a4
		bne.s      Aob_offset_7
		move.l     4(a1),d0
		moveq.l    #20,d1
		asr.l      d1,d0
		and.w      #$000F,d0
		cmp.w      #$0007,d0
		ble.s      Aob_offset_8
		add.w      #$FFF0,d0
Aob_offset_8:
		move.l     4(a1),d1
		moveq.l    #16,d2
		asr.l      d2,d1
		and.w      #$000F,d1
		tst.w      d1
		ble.s      Aob_offset_9
		move.w     8(a0),d2
		and.w      #$4002,d2
		beq.s      Aob_offset_9
		addq.w     #1,d1
Aob_offset_9:
		moveq.l    #5,d2
		and.w      8(a0),d2
		subq.w     #5,d2
		bne.s      Aob_offset_10
		addq.w     #1,d1
Aob_offset_10:
		move.w     d1,d2
		add.w      d0,d2
		move.w     d2,d0
		bra.s      Aob_offset_1
Aob_offset_7:
		moveq.l    #1,d0
Aob_offset_1:
		tst.w      d0
		bpl.s      Aob_offset_11
		clr.w      d0
Aob_offset_11:
		moveq.l    #16,d1
		and.w      10(a0),d1
		beq.s      Aob_offset_12
		cmp.w      #$0003,d0
		bge.s      Aob_offset_12
		moveq.l    #3,d0
Aob_offset_12:
		move.w     8(a0),d1
		and.w      #$4008,d1
		beq.s      Aob_offset_13
		cmp.w      #$0003,d0
		bge.s      Aob_offset_13
		moveq.l    #3,d0
Aob_offset_13:
		clr.w      d1
		moveq.l    #32,d2
		and.w      10(a0),d2
		beq.s      Aob_offset_14
		tst.w      d0
		ble.s      Aob_offset_15
		move.w     d0,d1
		add.w      d1,d1
		bra.s      Aob_offset_14
Aob_offset_15:
		move.w     d0,d1
		neg.w      d1
		add.w      d1,d1
Aob_offset_14:
		move.w     16(a0),d2
		sub.w      d0,d2
		move.w     d2,(a3)
		move.w     18(a0),d2
		sub.w      d0,d2
		move.w     d2,2(a3)
		move.w     d0,d2
		add.w      d2,d2
		add.w      20(a0),d2
		add.w      d1,d2
		move.w     d2,4(a3)
		move.w     d0,d2
		add.w      d2,d2
		add.w      22(a0),d2
		add.w      d1,d2
		move.w     d2,6(a3)
Aob_offset_17:
		move.w     d3,d4
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d3
		cmp.w      #$FFFF,d3
		beq.s      Aob_offset_16
		move.w     d3,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		cmp.w      4(a2,d2.l),d4
		bne.s      Aob_offset_17
		move.w     16(a2,d2.l),d4
		add.w      d4,(a3)
		move.w     18(a2,d2.l),d4
		add.w      d4,2(a3)
		bra.s      Aob_offset_17
Aob_offset_16:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

		.globl Aob_save
Aob_save:
		movem.l    a2-a3/a5,-(a7)
		lea.l      -16(a7),a7
		movea.l    a0,a2
		move.w     (a0),d0
		bpl.s      Aob_save_1
		sub.w      d0,4(a2)
		clr.w      (a0)
Aob_save_1:
		move.w     2(a2),d0
		bpl.s      Aob_save_2
		sub.w      d0,6(a2)
		clr.w      2(a2)
Aob_save_2:
		lea.l      ACSblk,a3
		move.w     (a2),d0
		add.w      4(a2),d0
		movea.l    (a3),a0
		sub.w      12(a0),d0
		tst.w      d0
		ble.s      Aob_save_3
		sub.w      d0,4(a2)
Aob_save_3:
		move.w     2(a2),d0
		add.w      6(a2),d0
		movea.l    (a3),a0
		sub.w      10(a0),d0
		sub.w      14(a0),d0
		tst.w      d0
		ble.s      Aob_save_4
		sub.w      d0,6(a2)
Aob_save_4:
		move.w     #$FFF8,d0
		and.w      (a2),d0
		move.w     d0,(a7)
		move.w     2(a2),2(a7)
		move.w     (a2),d1
		add.w      4(a2),d1
		or.w       #$0007,d1
		move.w     d1,4(a7)
		move.w     2(a2),d2
		add.w      6(a2),d2
		subq.w     #1,d2
		move.w     d2,6(a7)
		move.w     6(a2),d1
		move.w     4(a7),d0
		sub.w      (a7),d0
		addq.w     #1,d0
		jsr        Abp_create
		movea.l    a0,a5
		move.l     a5,d0
		bne.s      Aob_save_5
		suba.l     a0,a0
		bra.s      Aob_save_6
Aob_save_5:
		clr.w      8(a7)
		clr.w      10(a7)
		move.w     4(a7),d0
		sub.w      (a7),d0
		move.w     d0,12(a7)
		moveq.l    #-1,d1
		add.w      6(a2),d1
		move.w     d1,14(a7)
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		move.l     a5,-(a7)
		movea.l    (a3),a1
		lea.l      618(a1),a1
		lea.l      4(a7),a0
		moveq.l    #3,d1
		movea.l    (a3),a2
		move.w     16(a2),d0
		jsr        vro_cpyfm
		addq.w     #4,a7
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
		movea.l    a5,a0
Aob_save_6:
		lea.l      16(a7),a7
		movem.l    (a7)+,a2-a3/a5
		rts

		.globl Aob_restore
Aob_restore:
		movem.l    a3-a5,-(a7)
		lea.l      -16(a7),a7
		movea.l    a0,a3
		movea.l    a1,a4
		lea.l      xd3d40,a1
		lea.l      (a7),a0
		moveq.l    #15,d0
Aob_restore_1:
		move.b     (a1)+,(a0)+
		dbf        d0,Aob_restore_1
		lea.l      ACSblk,a5
		move.l     a3,d0
		bne.s      Aob_restore_2
		movea.l    a4,a0
		moveq.l    #-1,d1
		movea.l    (a5),a1
		move.w     (a1),d0
		jsr        Aev_WmRedraw
		jsr        Aev_mess
		bra        Aob_restore_3
Aob_restore_2:
		move.w     #$FFF8,d0
		and.w      (a4),d0
		move.w     d0,8(a7)
		move.w     2(a4),10(a7)
		move.w     (a4),d1
		add.w      4(a4),d1
		or.w       #$0007,d1
		move.w     d1,12(a7)
		move.w     2(a4),d2
		add.w      6(a4),d2
		subq.w     #1,d2
		move.w     d2,14(a7)
		clr.w      (a7)
		clr.w      2(a7)
		movea.w    12(a7),a0
		suba.w     8(a7),a0
		move.w     a0,4(a7)
		moveq.l    #-1,d0
		add.w      6(a4),d0
		move.w     d0,6(a7)
		lea.l      (a7),a0
		movea.l    (a5),a1
		move.w     16(a1),d0
		clr.w      d1
		jsr        vs_clip
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		movea.l    (a5),a0
		pea.l      618(a0)
		movea.l    a3,a1
		lea.l      4(a7),a0
		moveq.l    #3,d1
		movea.l    (a5),a4
		move.w     16(a4),d0
		jsr        vro_cpyfm
		addq.w     #4,a7
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
		movea.l    a3,a0
		jsr        Abp_delete
Aob_restore_3:
		lea.l      16(a7),a7
		movem.l    (a7)+,a3-a5
		rts

		.globl Aob_tobkey
Aob_tobkey:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		move.w     d1,d4
		movea.l    24(a2),a3
		move.l     a3,d2
		beq.s      Aob_tobkey_1
		move.w     86(a2),d2
		and.w      #$0800,d2
		bne.s      Aob_tobkey_1
		movea.l    a3,a0
		jsr        Aob_key
		move.w     d0,d3
		tst.w      d0
		bmi.s      Aob_tobkey_1
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		move.w     8(a3,d1.l),d2
		and.w      #$2000,d2
		beq.s      Aob_tobkey_2
		moveq.l    #1,d4
		bra.s      Aob_tobkey_3
Aob_tobkey_2:
		clr.w      d4
Aob_tobkey_3:
		move.w     d4,d1
		move.w     d3,d0
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        Aob_select
		tst.w      d0
		ble.s      Aob_tobkey_1
		move.w     d3,d0
		or.w       #$1000,d0
		bra.s      Aob_tobkey_4
Aob_tobkey_1:
		moveq.l    #-1,d0
Aob_tobkey_4:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

		.globl Aob_wobkey
Aob_wobkey:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		move.w     d1,d4
		movea.l    20(a2),a3
		move.l     a3,d2
		beq.s      Aob_wobkey_1
		move.w     86(a2),d0
		and.w      #$0800,d0
		bne.s      Aob_wobkey_1
		movea.l    a3,a0
		move.w     d3,d0
		jsr        Aob_key
		move.w     d0,d3
		tst.w      d0
		bmi.s      Aob_wobkey_1
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		move.w     8(a3,d1.l),d2
		and.w      #$2000,d2
		beq.s      Aob_wobkey_2
		moveq.l    #1,d4
		bra.s      Aob_wobkey_3
Aob_wobkey_2:
		clr.w      d4
Aob_wobkey_3:
		move.w     d4,d1
		move.w     d3,d0
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        Aob_select
		tst.w      d0
		beq.s      Aob_wobkey_1
		move.w     d3,d0
		bra.s      Aob_wobkey_4
Aob_wobkey_1:
		moveq.l    #-1,d0
Aob_wobkey_4:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

		.globl Aob_execute
Aob_execute:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a5
		movea.l    a1,a2
		move.w     d0,d3
		move.w     d0,d4
		tst.w      d0
		bmi        Aob_execute_1
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		lea.l      0(a2,d1.l),a3
		lea.l      24(a3),a4
		cmpa.l     24(a5),a1
		bne.s      Aob_execute_2
		or.w       #$1000,d4
Aob_execute_2:
		moveq.l    #64,d0
		and.w      8(a3),d0
		beq.s      Aob_execute_3
		move.l     (a4),d1
		beq.s      Aob_execute_4
		move.w     8(a4),d2
		and.w      #$8000,d2
		bne.s      Aob_execute_3
Aob_execute_4:
		clr.w      d0
		bra        Aob_execute_5
Aob_execute_3:
		moveq.l    #5,d0
		and.w      8(a3),d0
		subq.w     #5,d0
		bne.s      Aob_execute_6
		moveq.l    #1,d1
		and.w      10(a3),d1
		bne.s      Aob_execute_6
		movea.l    a5,a0
		move.w     d4,d0
		jsr        Adr_add
Aob_execute_6:
		moveq.l    #32,d0
		and.w      8(a3),d0
		bne.s      Aob_execute_7
		move.w     8(a4),d1
		and.w      #$8000,d1
		beq.s      Aob_execute_7
		move.l     (a4),d2
		beq.s      Aob_execute_7
		movea.l    ACSblk,a0
		move.l     a5,600(a0)
		movea.l    ACSblk,a0
		move.l     a2,604(a0)
		movea.l    ACSblk,a0
		move.w     d3,608(a0)
		moveq.l    #64,d0
		and.w      8(a3),d0
		beq.s      Aob_execute_8
		movea.l    (a4),a0
		jsr        (a0)
		bra.s      Aob_execute_9
Aob_execute_8:
		jsr        Amo_busy
		movea.l    (a4),a0
		jsr        (a0)
		jsr        Amo_unbusy
Aob_execute_9:
		cmpa.l     20(a5),a2
		beq.s      Aob_execute_7
		cmpa.l     24(a5),a2
		beq.s      Aob_execute_7
Aob_execute_1:
		moveq.l    #-1,d0
		bra.s      Aob_execute_5
Aob_execute_7:
		moveq.l    #5,d0
		and.w      8(a3),d0
		subq.w     #5,d0
		bne.s      Aob_execute_10
		moveq.l    #1,d1
		and.w      10(a3),d1
		beq.s      Aob_execute_10
		movea.l    a5,a0
		move.w     d4,d0
		jsr        Adr_del
		moveq.l    #1,d0
		and.w      10(a3),d0
		beq.s      Aob_execute_10
		move.w     10(a3),d1
		and.w      #$FFFE,d1
		movea.l    a5,a0
		movea.l    102(a5),a1
		move.w     d4,d0
		jsr        (a1)
Aob_execute_10:
		moveq.l    #1,d0
Aob_execute_5:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

		.globl Aob_alias
Aob_alias:
		movem.l    d3/a2-a5,-(a7)
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		movea.l    600(a0),a3
		movea.l    604(a0),a4
		move.w     608(a0),d3
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      24(a4,d0.l),a5
		move.w     10(a4,d0.l),d2
		and.w      #$4000,d2
		beq.s      Aob_alias_1
		moveq.l    #1,d1
		bra.s      Aob_alias_2
Aob_alias_1:
		clr.w      d1
Aob_alias_2:
		move.w     14(a5),d0
		movea.l    a4,a1
		movea.l    a3,a0
		jsr        Aob_select
		movea.l    (a2),a0
		move.l     a3,600(a0)
		movea.l    (a2),a0
		move.l     a4,604(a0)
		movea.l    (a2),a0
		move.w     d3,608(a0)
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Aob_select
Aob_select:
		movem.l    d3-d7/a2-a4,-(a7)
		subq.w     #2,a7
		movea.l    a0,a2
		movea.l    a1,a3
		move.w     d0,d4
		move.w     d1,(a7)
		clr.w      d3
		cmpa.l     20(a2),a1
		bne.s      Aob_select_1
		move.w     d0,d5
		bra.s      Aob_select_2
Aob_select_1:
		move.w     #$1000,d5
		or.w       d4,d5
Aob_select_2:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      0(a3,d0.l),a4
		move.w     #$0080,d2
		and.w      8(a4),d2
		bne.s      Aob_select_3
		moveq.l    #8,d0
		and.w      10(a4),d0
		beq.s      Aob_select_4
Aob_select_3:
		clr.w      d0
		bra        Aob_select_5
Aob_select_4:
		move.w     (a7),d0
		beq.s      Aob_select_6
		ori.w      #$4000,10(a4)
		bra.s      Aob_select_7
Aob_select_6:
		andi.w     #$BFFF,10(a4)
Aob_select_7:
		move.w     8(a4),d0
		and.w      #$204D,d0
		subq.w     #8,d0
		bne.s      Aob_select_8
		cmpi.b     #$18,7(a4)
		bne.s      Aob_select_8
		cmp.w      28(a2),d4
		beq.s      Aob_select_9
		move.w     d4,d1
		move.w     28(a2),d0
		movea.l    a2,a0
		jsr        Awi_focuschg
		subq.w     #1,d0
		bne.s      Aob_select_10
Aob_select_9:
		move.w     d4,d0
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        Aus_objboxed
Aob_select_10:
		clr.w      d3
Aob_select_8:
		move.w     8(a4),d0
		and.w      #$2000,d0
		beq.s      Aob_select_11
		move.w     (a7),d1
		beq.s      Aob_select_12
		moveq.l    #4,d2
		and.w      8(a4),d2
		beq.s      Aob_select_12
		jsr        Adr_unselect
Aob_select_21:
		move.w     d4,d0
		movea.l    a3,a1
		movea.l    a2,a0
		bsr        Aob_execute
		bra        Aob_select_13
Aob_select_12:
		moveq.l    #1,d0
		and.w      10(a4),d0
		beq.s      Aob_select_14
		movea.l    a2,a0
		move.w     d5,d0
		jsr        Adr_del
		bra        Aob_select_13
Aob_select_14:
		move.w     d5,d0
		movea.l    a2,a0
		jsr        Adr_add
		bra        Aob_select_13
Aob_select_11:
		move.w     8(a4),d0
		or.w       #$FFEE,d0
		cmp.w      #$FFFF,d0
		bne        Aob_select_15
		moveq.l    #1,d1
		and.w      10(a4),d1
		bne        Aob_select_16
		movea.l    a3,a0
		move.w     d4,d0
		jsr        Aob_up
		move.w     d0,d7
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		move.w     2(a3,d1.l),d6
		bra.s      Aob_select_17
Aob_select_20:
		moveq.l    #16,d0
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a3,d1.l),d0
		beq.s      Aob_select_18
		moveq.l    #1,d0
		and.w      10(a3,d1.l),d0
		beq.s      Aob_select_18
		move.w     d5,d2
		and.w      #$1000,d2
		beq.s      Aob_select_19
		move.w     10(a3,d1.l),d1
		and.w      #$FFFE,d1
		move.w     d6,d0
		or.w       #$1000,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
		bra.s      Aob_select_18
Aob_select_19:
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		move.w     10(a3,d0.l),d1
		and.w      #$FFFE,d1
		movea.l    a2,a0
		movea.l    102(a2),a1
		move.w     d6,d0
		jsr        (a1)
Aob_select_18:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a3,d0.l),d6
Aob_select_17:
		cmp.w      d6,d7
		bne.s      Aob_select_20
		moveq.l    #1,d1
		or.w       10(a4),d1
		move.w     d5,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
Aob_select_16:
		moveq.l    #1,d3
Aob_select_15:
		moveq.l    #5,d0
		and.w      8(a4),d0
		subq.w     #5,d0
		beq        Aob_select_21
		moveq.l    #17,d1
		and.w      8(a4),d1
		subq.w     #1,d1
		bne.s      Aob_select_22
		moveq.l    #1,d1
		move.w     10(a4),d2
		eor.w      d2,d1
		movea.l    a2,a0
		movea.l    102(a2),a1
		move.w     d5,d0
		jsr        (a1)
		moveq.l    #1,d3
Aob_select_22:
		moveq.l    #64,d0
		and.w      8(a4),d0
		beq.s      Aob_select_23
		movea.l    a3,a1
		movea.l    a2,a0
		move.w     d4,d0
		bsr        Aob_execute
		tst.w      d0
		bne.s      Aob_select_13
		move.w     (a7),d0
		beq.s      Aob_select_13
		move.w     84(a2),d1
		and.w      #$0100,d1
		beq.s      Aob_select_13
		movea.l    a2,a0
		movea.l    110(a2),a1
		jsr        (a1)
Aob_select_13:
		moveq.l    #1,d0
		bra.s      Aob_select_5
Aob_select_23:
		move.w     d3,d0
Aob_select_5:
		addq.w     #2,a7
		movem.l    (a7)+,d3-d7/a2-a4
		rts

		.globl Aob_watch
Aob_watch:
		movem.l    d3-d6/a2-a5,-(a7)
		lea.l      -22(a7),a7
		movea.l    a0,a2
		move.w     d0,d3
		and.w      #$1000,d0
		beq.s      Aob_watch_1
		movea.l    24(a2),a3
		move.w     d3,d4
		and.w      #$0FFF,d4
		bra.s      Aob_watch_2
Aob_watch_1:
		movea.l    20(a2),a3
		move.w     d3,d4
Aob_watch_2:
		lea.l      12(a7),a5
		move.l     _globl,-(a7)
		pea.l      2(a5)
		movea.l    a5,a1
		move.w     d4,d0
		movea.l    a3,a0
		jsr        mt_objc_offset
		addq.w     #8,a7
		move.w     52(a2),d0
		add.w      d0,(a5)
		move.w     54(a2),d1
		add.w      d1,2(a5)
		move.w     d4,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		move.w     20(a3,d2.l),4(a5)
		move.w     22(a3,d2.l),6(a5)
		move.w     6(a3,d2.l),d5
		and.w      #$00FF,d5
		cmp.w      #$001F,d5
		beq.s      Aob_watch_3
		cmp.w      #$0021,d5
		bne.s      Aob_watch_4
Aob_watch_3:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.l     12(a3,d0.l),(a7)
		move.w     (a5),d2
		movea.l    (a7),a0
		add.w      26(a0),d2
		move.w     d2,4(a7)
		move.w     2(a5),d5
		add.w      28(a0),d5
		move.w     d5,6(a7)
		move.w     30(a0),8(a7)
		move.w     32(a0),10(a7)
		move.w     18(a0),d0
		add.w      d0,(a5)
		move.w     20(a0),d2
		add.w      d2,2(a5)
		move.w     22(a0),4(a5)
		move.w     24(a0),6(a5)
		bra.s      Aob_watch_5
Aob_watch_4:
		moveq.l    #8,d0
		movea.l    a5,a1
		lea.l      4(a7),a0
		jsr        memcpy
Aob_watch_5:
		moveq.l    #1,d1
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		or.w       10(a3,d0.l),d1
		movea.l    a2,a0
		movea.l    102(a2),a1
		move.w     d3,d0
		jsr        (a1)
		moveq.l    #1,d5
		lea.l      ACSblk,a4
		clr.w      d0
		movea.l    (a4),a0
		move.w     d0,612(a0)
		movea.l    (a4),a0
		move.w     d0,610(a0)
Aob_watch_9:
		moveq.l    #3,d0
		jsr        Awi_update
		move.l     _globl,-(a7)
		pea.l      24(a7)
		pea.l      28(a7)
		pea.l      32(a7)
		pea.l      36(a7)
		movea.l    (a4),a0
		pea.l      612(a0)
		clr.l      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #1,d0
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		move.w     612(a0),-(a7)
		move.w     610(a0),-(a7)
		move.w     d0,-(a7)
		clr.w      -(a7)
		movea.l    a0,a1
		lea.l      610(a1),a1
		moveq.l    #3,d2
		move.w     d0,d1
		moveq.l    #6,d0
		suba.l     a0,a0
		jsr        mt_evnt_multi
		lea.l      50(a7),a7
		move.w     d0,d6
		moveq.l    #2,d0
		jsr        Awi_update
		moveq.l    #2,d0
		and.w      d6,d0
		bne        Aob_watch_6
		movea.l    (a4),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		movea.l    a5,a0
		jsr        Aob_within
		tst.w      d0
		bne.s      Aob_watch_7
		movea.l    (a4),a0
		move.w     612(a0),d1
		move.w     610(a0),d0
		lea.l      4(a7),a0
		jsr        Aob_within
		tst.w      d0
		beq.s      Aob_watch_8
Aob_watch_7:
		tst.w      d5
		bne        Aob_watch_9
		moveq.l    #1,d5
		moveq.l    #1,d1
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		or.w       10(a3,d0.l),d1
		movea.l    a2,a0
		movea.l    102(a2),a1
		move.w     d3,d0
		jsr        (a1)
		bra        Aob_watch_9
Aob_watch_8:
		tst.w      d5
		beq        Aob_watch_9
		clr.w      d5
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		move.w     10(a3,d0.l),d1
		and.w      #$FFFE,d1
		movea.l    a2,a0
		movea.l    102(a2),a1
		move.w     d3,d0
		jsr        (a1)
		bra        Aob_watch_9
Aob_watch_6:
		move.w     d5,d0
		lea.l      22(a7),a7
		movem.l    (a7)+,d3-d6/a2-a5
		rts

		.globl Aev_release
Aev_release:
		move.w     d3,-(a7)
		subq.w     #2,a7
Aev_release_1:
		moveq.l    #3,d0
		jsr        Awi_update
		move.l     _globl,-(a7)
		pea.l      4(a7)
		pea.l      8(a7)
		pea.l      12(a7)
		pea.l      16(a7)
		pea.l      20(a7)
		moveq.l    #10,d0
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
		lea.l      50(a7),a1
		suba.l     a0,a0
		moveq.l    #3,d2
		moveq.l    #1,d1
		moveq.l    #34,d0
		jsr        mt_evnt_multi
		lea.l      50(a7),a7
		move.w     d0,d3
		moveq.l    #2,d0
		jsr        Awi_update
		moveq.l    #2,d0
		and.w      d3,d0
		beq.s      Aev_release_1
		addq.w     #2,a7
		move.w     (a7)+,d3
		rts

		.globl Aob_key
Aob_key:
		movem.l    d3-d6/a2,-(a7)
		movea.l    a0,a2
		move.w     d1,d3
		move.b     d3,d0
		ext.w      d0
		jsr        isprint
		tst.w      d0
		beq.s      Aob_key_1
		moveq.l    #-1,d0
		and.b      d3,d0
		jsr        Ach_toupper
		ext.w      d0
		move.w     d3,d1
		and.w      #$FF00,d1
		or.w       d1,d0
		move.w     d0,d3
Aob_key_1:
		move.w     d3,d0
		and.w      #$1300,d0
		beq.s      Aob_key_2
		move.w     d3,d1
		or.w       #$0300,d1
		and.w      #$EFFF,d1
		move.w     d1,d3
Aob_key_2:
		and.w      #$9FFF,d3
		clr.w      d4
Aob_key_12:
		tst.w      d4
		bpl.s      Aob_key_3
		clr.w      d5
		bra.s      Aob_key_4
Aob_key_3:
		move.w     #$0080,d0
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a2,d1.l),d0
		beq.s      Aob_key_5
		moveq.l    #-1,d5
		bra.s      Aob_key_4
Aob_key_5:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     2(a2,d0.l),d5
Aob_key_4:
		tst.w      d5
		bpl.s      Aob_key_6
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d5
		bra.s      Aob_key_7
Aob_key_8:
		move.w     d5,d4
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d5
Aob_key_7:
		tst.w      d5
		bmi.s      Aob_key_6
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		cmp.w      4(a2,d0.l),d4
		beq.s      Aob_key_8
Aob_key_6:
		tst.w      d5
		bmi.s      Aob_key_9
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     32(a2,d0.l),d2
		and.w      #$8000,d2
		beq.s      Aob_key_10
		moveq.l    #8,d0
		move.w     d5,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      10(a2,d1.l),d0
		bne.s      Aob_key_10
		move.w     34(a2,d1.l),d6
		beq.s      Aob_key_10
		cmp.w      d6,d3
		bne.s      Aob_key_10
Aob_key_9:
		move.w     d5,d0
		bra.s      Aob_key_11
Aob_key_10:
		move.w     d5,d4
		bra        Aob_key_12
Aob_key_11:
		movem.l    (a7)+,d3-d6/a2
		rts

		.globl Aob_findflag
Aob_findflag:
		movem.l    d3-d5/a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		move.w     d1,d5
Aob_findflag_10:
		tst.w      d3
		bpl.s      Aob_findflag_1
		clr.w      d4
		bra.s      Aob_findflag_2
Aob_findflag_1:
		move.w     #$0080,d0
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a2,d1.l),d0
		beq.s      Aob_findflag_3
		moveq.l    #-1,d4
		bra.s      Aob_findflag_2
Aob_findflag_3:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     2(a2,d0.l),d4
Aob_findflag_2:
		tst.w      d4
		bpl.s      Aob_findflag_4
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d4
		bra.s      Aob_findflag_5
Aob_findflag_6:
		move.w     d4,d3
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d4
Aob_findflag_5:
		tst.w      d4
		bmi.s      Aob_findflag_4
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		cmp.w      4(a2,d0.l),d3
		beq.s      Aob_findflag_6
Aob_findflag_4:
		tst.w      d4
		bmi.s      Aob_findflag_7
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     8(a2,d0.l),d2
		and.w      d5,d2
		beq.s      Aob_findflag_8
Aob_findflag_7:
		move.w     d4,d0
		bra.s      Aob_findflag_9
Aob_findflag_8:
		move.w     d4,d3
		bra        Aob_findflag_10
Aob_findflag_9:
		movem.l    (a7)+,d3-d5/a2
		rts

		.globl Aob_up
Aob_up:
		movem.l    d3-d4/a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
Aob_up_4:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d4
		tst.w      d4
		bpl.s      Aob_up_1
		moveq.l    #-1,d0
		bra.s      Aob_up_2
Aob_up_1:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		cmp.w      4(a2,d0.l),d3
		bne.s      Aob_up_3
		move.w     d4,d0
		bra.s      Aob_up_2
Aob_up_3:
		move.w     d4,d3
		bra.s      Aob_up_4
Aob_up_2:
		movem.l    (a7)+,d3-d4/a2
		rts

		.globl Aob_printf
Aob_printf:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a5
		move.w     d0,d3
		movea.l    a1,a3
		lea.l      24(a7),a2
		lea.l      ob_inout,a4
		move.l     a2,-(a7)
		movea.l    a3,a1
		movea.l    a4,a0
		jsr        vsprintf
		addq.w     #4,a7
		movea.l    a4,a1
		move.w     d3,d0
		movea.l    a5,a0
		jsr        Aob_puttext
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Aob_puttext
Aob_puttext:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		movea.l    a1,a3
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		move.b     7(a2,d1.l),d2
		ext.w      d2
		sub.w      #$0015,d2
		cmp.w      #$000C,d2
		bhi        Aob_puttext_1
		add.w      d2,d2
		move.w     J38(pc,d2.w),d2
		jmp        J38(pc,d2.w)
J38:
		dc.w Aob_puttext_2-J38
		dc.w Aob_puttext_2-J38
		dc.w Aob_puttext_1-J38
		dc.w Aob_puttext_3-J38
		dc.w Aob_puttext_1-J38
		dc.w Aob_puttext_4-J38
		dc.w Aob_puttext_1-J38
		dc.w Aob_puttext_4-J38
		dc.w Aob_puttext_2-J38
		dc.w Aob_puttext_2-J38
		dc.w Aob_puttext_5-J38
		dc.w Aob_puttext_4-J38
		dc.w Aob_puttext_5-J38
Aob_puttext_2:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a2,d0.l),a4
		move.w     24(a4),d0
		ext.l      d0
		movea.l    a3,a1
		movea.l    (a4),a0
		jsr        strncpy
		move.w     24(a4),d0
		movea.l    (a4),a0
		clr.b      -1(a0,d0.w)
		bra.s      Aob_puttext_1
Aob_puttext_4:
		movea.l    a3,a1
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a2,d0.l),a0
		jsr        strcpy
		bra.s      Aob_puttext_1
Aob_puttext_5:
		movea.l    a3,a1
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a2,d0.l),a0
		movea.l    8(a0),a0
		jsr        strcpy
		bra.s      Aob_puttext_1
Aob_puttext_3:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a2,d0.l),a4
		movea.l    a3,a1
		lea.l      0(a2,d0.l),a0
		movea.l    8(a4),a5
		moveq.l    #4,d0
		jsr        (a5)
Aob_puttext_1:
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Aob_scanf
Aob_scanf:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a4
		move.w     d0,d3
		movea.l    a1,a3
		lea.l      ob_inout,a2
		movea.l    a2,a1
		move.w     d3,d0
		movea.l    a4,a0
		jsr        Aob_gettext
		move.w     d0,d3
		move.l     a3,d1
		beq.w      Aob_scanf_1
		move.b     (a2),d2
		bne.s      Aob_scanf_2
		movea.l    a3,a0
		moveq.l    #37,d0
		jsr        strchr
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      Aob_scanf_2
Aob_scanf_3:
		addq.w     #1,a4
		move.b     (a4),d0
		ext.w      d0
		jsr        isdigit
		tst.w      d0
		bne.s      Aob_scanf_3
		cmpi.b     #$68,(a4)
		beq.s      Aob_scanf_4
		cmpi.b     #$6C,(a4)
		beq.s      Aob_scanf_4
		cmpi.b     #$4C,(a4)
		bne.s      Aob_scanf_5
Aob_scanf_4:
		addq.w     #1,a4
Aob_scanf_5:
		cmpi.b     #$64,(a4)
		beq.s      Aob_scanf_6
		cmpi.b     #$6F,(a4)
		beq.s      Aob_scanf_6
		cmpi.b     #$69,(a4)
		beq.s      Aob_scanf_6
		cmpi.b     #$75,(a4)
		beq.s      Aob_scanf_6
		cmpi.b     #$78,(a4)
		bne.s      Aob_scanf_2
Aob_scanf_6:
		lea.l      xd3d50,a1
		movea.l    a2,a0
		jsr        strcpy
Aob_scanf_2:
		lea.l      20(a7),a4
		move.l     a4,-(a7)
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        vsscanf
		addq.w     #4,a7
Aob_scanf_1:
		move.w     d3,d0
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Aob_gettext
Aob_gettext:
		movem.l    d3-d4/a2-a5,-(a7)
		subq.w     #4,a7
		movea.l    a0,a3
		move.w     d0,d4
		movea.l    a1,a4
		moveq.l    #-1,d3
		clr.l      (a7)
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		move.b     7(a3,d1.l),d2
		ext.w      d2
		sub.w      #$0015,d2
		cmp.w      #$000C,d2
		bhi        Aob_gettext_1
		add.w      d2,d2
		move.w     J39(pc,d2.w),d2
		jmp        J39(pc,d2.w)
J39:
		dc.w Aob_gettext_2-J39
		dc.w Aob_gettext_2-J39
		dc.w Aob_gettext_1-J39
		dc.w Aob_gettext_3-J39
		dc.w Aob_gettext_1-J39
		dc.w Aob_gettext_4-J39
		dc.w Aob_gettext_1-J39
		dc.w Aob_gettext_4-J39
		dc.w Aob_gettext_2-J39
		dc.w Aob_gettext_2-J39
		dc.w Aob_gettext_5-J39
		dc.w Aob_gettext_4-J39
		dc.w Aob_gettext_5-J39
Aob_gettext_2:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a3,d0.l),a0
		move.w     24(a0),d3
		move.l     a4,d2
		beq        Aob_gettext_1
		movea.l    (a0),a1
		movea.l    a4,a0
		jsr        strcpy
		bra        Aob_gettext_1
Aob_gettext_5:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a3,d0.l),a0
		movea.l    8(a0),a0
		jsr        strlen
		move.l     d0,d3
		move.l     a4,d0
		beq        Aob_gettext_1
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    12(a3,d1.l),a0
		movea.l    8(a0),a1
		movea.l    a4,a0
		jsr        strcpy
		bra.s      Aob_gettext_1
Aob_gettext_4:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a3,d0.l),a0
		jsr        strlen
		move.l     d0,d3
		move.l     a4,d0
		beq.s      Aob_gettext_1
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    12(a3,d1.l),a1
		movea.l    a4,a0
		jsr        strcpy
		bra.s      Aob_gettext_1
Aob_gettext_3:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a3,d0.l),a5
		lea.l      (a7),a1
		lea.l      0(a3,d0.l),a0
		movea.l    8(a5),a2
		moveq.l    #3,d0
		jsr        (a2)
		move.l     (a7),d0
		beq.s      Aob_gettext_1
		movea.l    d0,a0
		jsr        strlen
		move.l     d0,d3
		move.l     a4,d0
		beq.s      Aob_gettext_1
		movea.l    (a7),a1
		movea.l    a4,a0
		jsr        strcpy
Aob_gettext_1:
		move.w     d3,d0
		addq.w     #4,a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

		.data

map:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
xff:
		dc.w $ffff
punkt:
		dc.l xff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd3d40:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd3d50:
		dc.b '0 0 0 0 0 0 0 0 0 0',0
		.even

	.bss

ob_inout: ds.b 1024
col: ds.l 1
