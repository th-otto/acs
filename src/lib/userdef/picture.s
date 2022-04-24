		.text

		.globl A_picture
A_picture:
		movem.l    d2-d7/a2-a5,-(a7)
		lea.l      -16(a7),a7
		movea.l    60(a7),a2
		move.w     4(a2),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a2),a0
		adda.l     d0,a0
		movea.l    12(a0),a0
		movea.l    20(a0),a3
		move.l     a3,d0
		beq        A_picture_1
		lea.l      ACSblk,a5
		move.w     22(a2),d0
		bne.s      A_picture_2
		move.w     24(a2),d1
		beq.s      A_picture_3
A_picture_2:
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
		bra.s      A_picture_4
A_picture_3:
		movea.l    (a5),a0
		move.w     8(a0),(a7)
		move.w     10(a0),2(a7)
		move.w     8(a0),d0
		add.w      10(a0),d0
		subq.w     #1,d0
		move.w     d0,4(a7)
		move.w     10(a0),d1
		add.w      12(a0),d1
		subq.w     #1,d1
		move.w     d1,6(a7)
A_picture_4:
		move.w     (a7),d0
		cmp.w      10(a2),d0
		bge.s      A_picture_5
		move.w     10(a2),(a7)
A_picture_5:
		move.w     2(a7),d0
		cmp.w      12(a2),d0
		bge.s      A_picture_6
		move.w     12(a2),2(a7)
A_picture_6:
		move.w     10(a2),d3
		add.w      14(a2),d3
		subq.w     #1,d3
		cmp.w      4(a7),d3
		bge.s      A_picture_7
		move.w     d3,4(a7)
A_picture_7:
		move.w     12(a2),d3
		add.w      16(a2),d3
		subq.w     #1,d3
		cmp.w      6(a7),d3
		bge.s      A_picture_8
		move.w     d3,6(a7)
A_picture_8:
		move.w     (a7),d0
		cmp.w      4(a7),d0
		bgt        A_picture_1
		move.w     2(a7),d1
		cmp.w      6(a7),d1
		bgt        A_picture_1
		lea.l      (a7),a0
		movea.l    (a5),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		move.w     4(a3),d4
		move.w     6(a3),d5
		moveq.l    #2,d0
		and.l      26(a2),d0
		beq.w      A_picture_9
		clr.w      d1
		move.w     d1,2(a7)
		move.w     d1,(a7)
		moveq.l    #-1,d2
		add.w      d4,d2
		move.w     d2,4(a7)
		moveq.l    #-1,d1
		add.w      d5,d1
		move.w     d1,6(a7)
		move.w     12(a2),d6
		bra.s      A_picture_10
A_picture_13:
		move.w     10(a2),d7
		bra.s      A_picture_11
A_picture_12:
		move.w     d7,8(a7)
		move.w     d6,10(a7)
		move.w     d7,d0
		add.w      d4,d0
		subq.w     #1,d0
		move.w     d0,12(a7)
		move.w     d6,d1
		add.w      d5,d1
		subq.w     #1,d1
		move.w     d1,14(a7)
		movea.l    (a5),a0
		pea.l      618(a0)
		movea.l    a3,a1
		lea.l      4(a7),a0
		movea.l    (a5),a4
		move.w     16(a4),d0
		moveq.l    #3,d1
		jsr        vro_cpyfm
		addq.w     #4,a7
		add.w      d4,d7
A_picture_11:
		move.w     10(a2),d0
		add.w      14(a2),d0
		cmp.w      d0,d7
		blt.s      A_picture_12
		add.w      d5,d6
A_picture_10:
		move.w     12(a2),d0
		add.w      16(a2),d0
		cmp.w      d0,d6
		blt.s      A_picture_13
		bra        A_picture_14
A_picture_9:
		move.l     26(a2),d0
		and.l      #$00100000,d0
		beq.s      A_picture_15
		movea.l    (a5),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_picture_16
		moveq.l    #8,d1
		move.w     16(a0),d0
		jsr        vsf_color
		moveq.l    #1,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		bra.s      A_picture_17
A_picture_16:
		moveq.l    #1,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_color
		moveq.l    #2,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #4,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_style
		bra.s      A_picture_17
A_picture_15:
		move.l     26(a2),d1
		asr.l      #4,d1
		and.w      #$000F,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_color
		move.l     26(a2),d1
		asr.l      #8,d1
		and.w      #$001F,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_style
		move.l     26(a2),d1
		moveq.l    #16,d0
		asr.l      d0,d1
		and.w      #$000F,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_interior
A_picture_17:
		moveq.l    #1,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		clr.w      d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		lea.l      (a7),a0
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_bar
		clr.w      d0
		move.w     d0,2(a7)
		move.w     d0,(a7)
		move.w     14(a2),d3
		sub.w      d4,d3
		tst.w      d3
		ble.s      A_picture_18
		moveq.l    #-1,d1
		add.w      d4,d1
		move.w     d1,4(a7)
		move.w     d3,d0
		asr.w      #1,d0
		add.w      10(a2),d0
		move.w     d0,8(a7)
		bra.s      A_picture_19
A_picture_18:
		moveq.l    #-1,d0
		add.w      14(a2),d0
		move.w     d0,4(a7)
		move.w     10(a2),8(a7)
A_picture_19:
		move.w     8(a7),d0
		add.w      4(a7),d0
		move.w     d0,12(a7)
		move.w     16(a2),d3
		sub.w      d5,d3
		tst.w      d3
		ble.s      A_picture_20
		moveq.l    #-1,d1
		add.w      d5,d1
		move.w     d1,6(a7)
		move.w     d3,d0
		asr.w      #1,d0
		add.w      12(a2),d0
		move.w     d0,10(a7)
		bra.s      A_picture_21
A_picture_20:
		moveq.l    #-1,d0
		add.w      16(a2),d0
		move.w     d0,6(a7)
		move.w     12(a2),10(a7)
A_picture_21:
		move.w     10(a7),d0
		add.w      6(a7),d0
		move.w     d0,14(a7)
		movea.l    (a5),a0
		pea.l      618(a0)
		movea.l    a3,a1
		lea.l      4(a7),a0
		moveq.l    #3,d1
		movea.l    (a5),a4
		move.w     16(a4),d0
		jsr        vro_cpyfm
		addq.w     #4,a7
A_picture_14:
		lea.l      (a7),a0
		clr.w      d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_picture_1:
		moveq.l    #-2,d0
		and.w      8(a2),d0
		lea.l      16(a7),a7
		movem.l    (a7)+,d2-d7/a2-a5
		rts

del_pic:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		moveq.l    #1,d0
		and.l      4(a2),d0
		bne.s      del_pic_1
		movea.l    12(a2),a3
		move.l     a3,d1
		beq.s      del_pic_1
		movea.l    20(a3),a1
		cmpa.l     20(a2),a1
		bne.s      del_pic_1
		subq.l     #1,24(a3)
		bgt.s      del_pic_2
		movea.l    20(a3),a0
		jsr        Abp_delete
		clr.l      20(a3)
		clr.l      24(a3)
		bra.s      del_pic_2
del_pic_1:
		movea.l    20(a2),a0
		jsr        Abp_delete
del_pic_2:
		clr.l      20(a2)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

make_pic:
		movem.l    d3-d5/a2-a6,-(a7)
		lea.l      -16(a7),a7
		movea.l    a0,a2
		movea.l    12(a2),a3
		move.w     6(a3),d1
		move.w     4(a3),d0
		jsr        Abp_create
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      make_pic_1
		move.w     8(a4),d0
		ext.l      d0
		add.l      d0,d0
		move.w     6(a4),d1
		ext.l      d1
		jsr        _lmul
		move.l     d0,d3
		move.w     12(a3),d4
		move.w     d4,d5
		movea.l    ACSblk,a0
		sub.w      28(a0),d5
		tst.w      d5
		bmi.s      make_pic_2
		move.w     28(a0),12(a3)
		move.w     d5,d0
		ext.l      d0
		move.l     d3,d1
		jsr        _lmul
		lea.l      28(a3,d0.l),a0
		move.l     a0,(a3)
		movea.l    a4,a1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		movea.l    a3,a0
		jsr        vr_trnfm
		move.w     d4,12(a3)
		bra        make_pic_3
make_pic_2:
		move.w     6(a3),d1
		move.w     4(a3),d0
		jsr        Abp_create
		movea.l    a0,a6
		move.l     a6,d0
		bne.s      make_pic_4
		movea.l    a4,a0
		jsr        Abp_delete
make_pic_1:
		moveq.l    #-1,d0
		bra        make_pic_5
make_pic_4:
		cmp.w      #$0001,d4
		bne.s      make_pic_6
		move.w     #$0001,12(a6)
		lea.l      28(a3),a0
		move.l     a0,(a3)
		movea.l    a6,a1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		movea.l    a3,a0
		jsr        vr_trnfm
		clr.w      d0
		move.w     d0,10(a7)
		move.w     d0,8(a7)
		move.w     d0,2(a7)
		move.w     d0,(a7)
		moveq.l    #-1,d1
		add.w      4(a6),d1
		move.w     d1,12(a7)
		move.w     d1,4(a7)
		moveq.l    #-1,d0
		add.w      6(a6),d0
		move.w     d0,14(a7)
		move.w     d0,6(a7)
		pea.l      color
		move.l     a4,-(a7)
		movea.l    a6,a1
		lea.l      8(a7),a0
		moveq.l    #1,d1
		movea.l    ACSblk,a5
		move.w     16(a5),d0
		jsr        vrt_cpyfm
		addq.w     #8,a7
		bra.s      make_pic_7
make_pic_6:
		move.w     #$0001,10(a6)
		move.w     d4,d0
		ext.l      d0
		move.l     d3,d1
		jsr        _lmul
		lea.l      28(a3),a1
		movea.l    (a6),a0
		jsr        memcpy
		move.w     d5,d0
		neg.w      d0
		ext.l      d0
		move.l     d3,d1
		jsr        _lmul
		move.l     d0,d1
		move.l     d1,-(a7)
		move.w     d4,d0
		ext.l      d0
		move.l     d3,d1
		jsr        _lmul
		movea.l    (a6),a0
		adda.l     d0,a0
		clr.w      d0
		move.l     (a7)+,d1
		jsr        memset
		movea.l    a4,a1
		movea.l    a6,a0
		movea.l    ACSblk,a5
		move.w     16(a5),d0
		jsr        vr_trnfm
make_pic_7:
		movea.l    a6,a0
		jsr        Abp_delete
make_pic_3:
		move.l     a4,20(a2)
		moveq.l    #1,d0
		and.l      4(a2),d0
		bne.s      make_pic_8
		move.l     a4,20(a3)
		move.l     #$00000001,24(a3)
make_pic_8:
		clr.w      d0
make_pic_5:
		lea.l      16(a7),a7
		movem.l    (a7)+,d3-d5/a2-a6
		rts

		.globl Auo_picture
Auo_picture:
		movem.l    a2-a4,-(a7)
		subq.w     #4,a7
		movea.l    a1,a4
		movea.l    12(a0),a2
		move.w     d0,d1
		cmp.w      #$0009,d1
		beq        Auo_picture_1
		bgt.s      Auo_picture_2
		subq.w     #1,d1
		beq.s      Auo_picture_3
		subq.w     #1,d1
		beq        Auo_picture_4
		subq.w     #3,d1
		beq        Auo_picture_5
		subq.w     #1,d1
		beq        Auo_picture_5
		bra        Auo_picture_6
Auo_picture_2:
		sub.w      #$0013,d1
		beq        Auo_picture_7
		subq.w     #1,d1
		beq        Auo_picture_7
		sub.w      #$01E0,d1
		beq.s      Auo_picture_8
		bra        Auo_picture_6
Auo_picture_3:
		moveq.l    #10,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Auo_picture_9
		move.l     d0,16(a2)
		clr.l      (a0)
		move.l     12(a2),(a7)
		move.l     (a7),d1
		beq        Auo_picture_7
		moveq.l    #1,d2
		and.l      4(a2),d2
		bne.s      Auo_picture_10
		movea.l    d1,a1
		move.l     20(a1),d0
		bne.s      Auo_picture_11
Auo_picture_10:
		movea.l    a2,a0
		bsr        make_pic
		addq.w     #1,d0
		bne.s      Auo_picture_7
Auo_picture_9:
		move.w     #$FFFF,(a4)
		bra.s      Auo_picture_7
Auo_picture_11:
		movea.l    (a7),a0
		addq.l     #1,24(a0)
		move.l     20(a0),20(a2)
		bra.s      Auo_picture_7
Auo_picture_8:
		movea.l    a2,a0
		bsr        del_pic
		move.l     a4,20(a2)
		bra.s      Auo_picture_7
Auo_picture_4:
		movea.l    16(a2),a0
		jsr        Ax_free
		movea.l    a2,a0
		bsr        del_pic
		bra.s      Auo_picture_7
Auo_picture_1:
		movea.l    a4,a3
		movea.l    16(a2),a0
		move.l     (a4),(a0)
		move.l     4(a3),4(a0)
		move.w     8(a3),8(a0)
		bra.s      Auo_picture_7
Auo_picture_5:
		movea.l    16(a2),a3
		movea.l    (a3),a4
		move.l     a4,d0
		beq.s      Auo_picture_7
		moveq.l    #-1,d1
		move.w     8(a3),d0
		movea.l    a4,a0
		movea.l    102(a4),a1
		jsr        (a1)
		bra.s      Auo_picture_7
Auo_picture_6:
		clr.w      d0
		bra.s      Auo_picture_12
Auo_picture_7:
		moveq.l    #1,d0
Auo_picture_12:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a4
		rts

		.data

color:
		dc.w $0001
		dc.w $0000
