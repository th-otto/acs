
align:
		movem.l    d3-d7/a2,-(a7)
		subq.w     #2,a7
		movea.l    a0,a2
		move.w     10(a2),d6
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     10(a2,d0.l),d3
		move.w     d3,d0
		ext.l      d0
		move.l     d0,d2
		lsl.l      #3,d2
		sub.l      d0,d2
		lsl.l      #3,d2
		move.w     24(a2,d2.l),(a7)
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d1
		lsl.l      #3,d1
		sub.l      d2,d1
		lsl.l      #3,d1
		move.w     8(a2,d1.l),d6
		move.l     d0,d1
		lsl.l      #3,d1
		sub.l      d0,d1
		lsl.l      #3,d1
		move.w     10(a2,d1.l),d5
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d2
		lsl.l      #3,d2
		sub.l      d1,d2
		lsl.l      #3,d2
		andi.w     #$DFFF,18(a2,d2.l)
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d0
		lsl.l      #3,d0
		sub.l      d2,d0
		lsl.l      #3,d0
		move.w     10(a2,d0.l),d6
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d0
		lsl.l      #3,d0
		sub.l      d2,d0
		lsl.l      #3,d0
		move.w     10(a2,d0.l),d7
		move.w     28(a2,d0.l),d4
		move.w     d7,d2
		ext.l      d2
		move.l     d2,d1
		lsl.l      #3,d1
		sub.l      d2,d1
		lsl.l      #3,d1
		move.w     d4,28(a2,d1.l)
		move.w     8(a2,d1.l),d7
		move.w     d7,d2
		ext.l      d2
		move.l     d2,d1
		lsl.l      #3,d1
		sub.l      d2,d1
		lsl.l      #3,d1
		move.w     d4,28(a2,d1.l)
		clr.w      d4
		bra.s      align_1
align_2:
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		clr.w      26(a2,d0.l)
		move.w     d4,24(a2,d0.l)
		move.w     d4,d2
		add.w      (a7),d2
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d7
		lsl.l      #3,d7
		sub.l      d1,d7
		lsl.l      #3,d7
		move.w     d2,24(a2,d7.l)
		add.w      28(a2,d0.l),d4
		move.w     8(a2,d0.l),d5
		move.w     8(a2,d7.l),d6
align_1:
		cmp.w      d5,d3
		bne.s      align_2
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     d4,28(a2,d0.l)
		addq.w     #2,a7
		movem.l    (a7)+,d3-d7/a2
		rts

find_drop:
		movem.l    d3-d6/a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d6
		moveq.l    #1,d5
		add.w      2(a2),d5
		moveq.l    #1,d1
		move.w     d5,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		add.w      2(a2,d2.l),d1
		move.w     d1,d5
		moveq.l    #1,d3
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		add.w      2(a2,d0.l),d3
		moveq.l    #1,d4
		move.w     d3,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		add.w      2(a2,d2.l),d4
		moveq.l    #1,d1
		move.w     d5,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		add.w      0(a2,d2.l),d1
		move.w     d1,d5
		moveq.l    #1,d0
		ext.l      d1
		move.l     d1,d2
		add.l      d2,d2
		add.l      d1,d2
		lsl.l      #3,d2
		add.w      2(a2,d2.l),d0
		move.w     d0,d5
		bra.s      find_drop_1
find_drop_4:
		cmp.w      d4,d6
		bne.s      find_drop_2
		move.w     d5,d0
		bra.s      find_drop_3
find_drop_2:
		moveq.l    #1,d0
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		add.w      0(a2,d1.l),d0
		move.w     d0,d4
		moveq.l    #1,d1
		move.w     d5,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		add.w      0(a2,d2.l),d1
		move.w     d1,d5
find_drop_1:
		moveq.l    #1,d0
		add.w      d3,d0
		cmp.w      d0,d4
		bne.s      find_drop_4
		moveq.l    #-1,d0
find_drop_3:
		movem.l    (a7)+,d3-d6/a2
		rts

find_title:
		movem.l    d3-d6/a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d6
		moveq.l    #1,d4
		add.w      2(a2),d4
		moveq.l    #1,d1
		move.w     d4,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		add.w      2(a2,d2.l),d1
		move.w     d1,d4
		moveq.l    #1,d3
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		add.w      2(a2,d0.l),d3
		moveq.l    #1,d2
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		add.w      2(a2,d0.l),d2
		move.w     d2,d3
		moveq.l    #1,d0
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		add.w      0(a2,d1.l),d0
		move.w     d0,d4
		moveq.l    #1,d5
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		add.w      2(a2,d1.l),d5
		bra.s      find_title_1
find_title_4:
		cmp.w      d5,d6
		bne.s      find_title_2
		move.w     d3,d0
		bra.s      find_title_3
find_title_2:
		moveq.l    #1,d0
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		add.w      0(a2,d1.l),d0
		move.w     d0,d3
		moveq.l    #1,d1
		move.w     d5,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		add.w      0(a2,d2.l),d1
		move.w     d1,d5
find_title_1:
		moveq.l    #1,d0
		add.w      d4,d0
		cmp.w      d0,d5
		bne.s      find_title_4
		moveq.l    #-1,d0
find_title_3:
		movem.l    (a7)+,d3-d6/a2
		rts

me_init:
		movem.l    d3-d7/a2-a4,-(a7)
		movea.l    a0,a3
		movea.l    (a0),a2
		movea.l    4(a2),a1
		movea.l    4(a1),a0
		bsr        align
		movea.l    a3,a0
		jsr        ed_init
		move.w     d0,d3
		tst.w      d0
		bne        me_init_1
		movea.l    20(a3),a3
		movea.l    a3,a4
		move.w     2(a3),d6
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     16(a3,d1.l),d0
		add.w      d0,d0
		sub.w      d0,20(a3)
		move.w     18(a3,d1.l),d0
		add.w      d0,d0
		sub.w      d0,22(a3)
		clr.w      d0
		move.w     d0,40(a3,d1.l)
		move.w     d0,16(a3,d1.l)
		suba.l     a0,a0
		move.w     a0,42(a3,d1.l)
		move.w     a0,18(a3,d1.l)
		clr.w      32(a3,d1.l)
		move.w     26(a3,d1.l),d6
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.l     #$00FF1100,12(a3,d0.l)
		ori.w      #$1800,32(a3,d0.l)
		move.l     #mbar_dragged,52(a4,d0.l)
		move.l     #new_title,48(a4,d0.l)
		move.w     26(a3,d0.l),d4
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d2
		add.l      d2,d2
		add.l      d1,d2
		lsl.l      #3,d2
		clr.w      32(a3,d2.l)
		move.w     26(a3,d2.l),d5
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a3,d0.l),a0
		jsr        Ast_delete
		lea.l      xaf1e0,a0
		jsr        Ast_create
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.l     a0,12(a3,d0.l)
		ori.w      #$1800,32(a3,d0.l)
		move.l     #new_title,48(a4,d0.l)
		bra.s      me_init_2
me_init_3:
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$1800,32(a3,d0.l)
		move.w     #$2AF9,70(a4,d0.l)
		move.l     #title_edit,48(a4,d0.l)
me_init_2:
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.l     #title_dragged,52(a4,d0.l)
		move.w     24(a3,d0.l),d5
		moveq.l    #1,d0
		add.w      d4,d0
		cmp.w      d0,d5
		bne.s      me_init_3
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     24(a3,d1.l),d5
		move.w     d5,d0
		ext.l      d0
		move.l     d0,d6
		add.l      d6,d6
		add.l      d0,d6
		lsl.l      #3,d6
		move.l     #new_title,48(a4,d6.l)
		move.w     26(a3,d6.l),d6
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		clr.w      32(a3,d1.l)
		clr.l      52(a4,d1.l)
		move.w     26(a3,d1.l),d7
		move.w     d7,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		move.l     #obspec_only,48(a4,d0.l)
		move.w     24(a3,d0.l),d7
		moveq.l    #1,d0
		add.w      d6,d0
		cmp.w      d0,d7
		beq        me_init_4
		move.w     d7,d1
		ext.l      d1
		move.l     d1,d2
		add.l      d2,d2
		add.l      d1,d2
		lsl.l      #3,d2
		move.l     #obspec_only,48(a4,d2.l)
		move.w     24(a3,d2.l),d7
		cmp.w      d0,d7
		beq.s      me_init_4
		bra.s      me_init_5
me_init_6:
		move.w     d7,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		clr.w      32(a3,d0.l)
		movea.l    12(a3,d0.l),a0
		jsr        Ast_delete
		lea.l      xaf1e6,a0
		jsr        Ast_create
		move.w     d7,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.l     a0,12(a3,d0.l)
		move.w     24(a3,d0.l),d7
me_init_5:
		moveq.l    #1,d0
		add.w      d6,d0
		cmp.w      d0,d7
		bne.s      me_init_6
		bra.s      me_init_4
me_init_7:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$0080,8(a3,d0.l)
		ori.w      #$0080,32(a3,d0.l)
		move.w     24(a3,d0.l),d6
me_init_4:
		moveq.l    #1,d0
		add.w      d5,d0
		cmp.w      d0,d6
		bne.s      me_init_7
		move.w     24(a2),d6
		tst.w      d6
		ble.s      me_init_1
		movea.l    a3,a0
		move.w     d6,d0
		bsr        find_title
		move.w     d0,d7
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		ori.w      #$0001,-14(a3,d1.l)
		moveq.l    #1,d2
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d5
		add.l      d5,d5
		add.l      d1,d5
		lsl.l      #3,d5
		add.w      26(a3,d5.l),d2
		cmp.w      d2,d7
		beq.s      me_init_8
		move.l     d0,d4
		add.l      d4,d4
		add.l      d0,d4
		lsl.l      #3,d4
		ori.w      #$0001,10(a3,d4.l)
me_init_8:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$FF7F,-16(a3,d0.l)
		andi.w     #$FF7F,8(a3,d0.l)
me_init_1:
		move.w     d3,d0
		movem.l    (a7)+,d3-d7/a2-a4
		rts

me_make:
		movem.l    a2-a4,-(a7)
		subq.w     #4,a7
		move.l     a0,(a7)
		movea.l    4(a0),a3
		movea.l    18(a3),a4
		move.l     a4,d0
		beq.s      me_make_1
		movea.l    a4,a0
		jsr        Awi_show
		bra        me_make_2
me_make_1:
		moveq.l    #50,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      me_make_3
		movea.l    (a7),a1
		move.l     (a1),(a0)
		move.l     4(a1),4(a2)
		move.w     #$0001,8(a2)
		move.w     #$FFFF,24(a2)
		move.w     #$FFFF,10(a2)
		clr.l      30(a2)
		lea.l      22(a3),a0
		move.l     a0,$000BC924
		movea.l    $000BC930,a1
		move.l     a0,8(a1)
		lea.l      WI_MENU,a0
		jsr        Awi_create
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      me_make_3
		movea.l    (a7),a1
		movea.l    (a1),a0
		pea.l      360(a0)
		lea.l      58(a3),a1
		movea.l    a4,a0
		jsr        wi_pos
		addq.w     #4,a7
		move.l     a2,(a4)
		move.l     a4,18(a3)
		movea.l    a4,a0
		movea.l    12(a4),a1
		jsr        (a1)
		tst.w      d0
		beq.s      me_make_2
		movea.l    a4,a0
		jsr        ed_term
me_make_3:
		suba.l     a0,a0
		bra.s      me_make_4
me_make_2:
		movea.l    a4,a0
me_make_4:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a4
		rts

make_title:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -30(a7),a7
		movea.l    a0,a2
		move.w     d0,28(a7)
		move.w     d1,26(a7)
		move.w     d2,24(a7)
		movea.l    ACSblk,a1
		move.l     576(a1),20(a7)
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		movea.l    20(a7),a0
		movea.l    20(a0),a3
		lea.l      24(a3,d2.l),a3
		cmpi.w     #$2AF8,22(a3)
		beq.s      make_title_1
		cmpi.w     #$2AF9,22(a3)
		bne        make_title_2
make_title_1:
		move.l     12(a3),8(a7)
		movea.l    8(a7),a0
		movea.l    4(a0),a5
		move.w     18(a3),12(a7)
		move.w     12(a7),d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		cmpi.b     #$20,15(a5,d0.l)
		bne        make_title_2
		cmpi.w     #$FFFF,10(a5,d0.l)
		bne        make_title_2
		move.l     (a2),4(a7)
		movea.l    4(a7),a1
		move.l     (a1),(a7)
		movea.l    4(a1),a4
		move.w     24(a7),d2
		beq        make_title_3
		cmpi.w     #$2AF8,22(a3)
		beq        make_title_3
		movea.w    26(a7),a0
		cmpa.w     28(a7),a0
		beq        make_title_2
		moveq.l    #1,d1
		move.w     a0,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		movea.l    20(a2),a1
		add.w      0(a1,d0.l),d1
		cmp.w      28(a7),d1
		beq        make_title_2
		moveq.l    #-2,d6
		add.w      28(a7),d6
		ext.l      d6
		divs.w     #$0003,d6
		movea.l    a1,a0
		move.w     28(a7),d0
		bsr        find_drop
		move.w     d0,d7
		moveq.l    #-2,d5
		add.w      d0,d5
		ext.l      d5
		divs.w     #$0003,d5
		movea.l    a5,a0
		move.w     d6,d0
		jsr        unlink_ob
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     10(a5,d0.l),14(a7)
		move.w     12(a5,d0.l),d3
		moveq.l    #-1,d2
		move.w     d2,12(a5,d0.l)
		move.w     d2,10(a5,d0.l)
		movea.l    a5,a0
		move.w     d5,d0
		jsr        unlink_ob
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     14(a7),10(a5,d0.l)
		move.w     d3,12(a5,d0.l)
		bra        make_title_4
make_title_3:
		cmpi.w     #$2AF8,22(a3)
		bne.s      make_title_5
		pea.l      protodrop
		clr.w      d0
		movea.l    a4,a1
		movea.l    4(a7),a0
		jsr        copysub_ob
		addq.w     #4,a7
		move.w     d0,d5
		bra        make_title_6
make_title_5:
		move.w     10(a5),d4
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     10(a5,d0.l),18(a7)
		move.w     8(a5,d0.l),16(a7)
		move.w     18(a7),d3
		ext.l      d3
		move.l     d3,d2
		lsl.l      #3,d2
		sub.l      d3,d2
		lsl.l      #3,d2
		move.w     10(a5,d2.l),d3
		move.w     16(a7),d0
		ext.l      d0
		move.l     d0,d1
		lsl.l      #3,d1
		sub.l      d0,d1
		lsl.l      #3,d1
		move.w     10(a5,d1.l),d7
		bra.s      make_title_7
make_title_8:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     8(a5,d0.l),d3
		move.w     d7,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     8(a5,d0.l),d7
make_title_7:
		cmp.w      12(a7),d3
		bne.s      make_title_8
		move.l     8(a7),-(a7)
		move.w     d7,d0
		movea.l    a4,a1
		movea.l    4(a7),a0
		jsr        copysub_ob
		addq.w     #4,a7
		move.w     d0,d5
make_title_6:
		move.l     8(a7),-(a7)
		move.w     16(a7),d0
		movea.l    a4,a1
		movea.l    4(a7),a0
		jsr        copysub_ob
		addq.w     #4,a7
		move.w     d0,d6
make_title_4:
		move.w     28(a7),d0
		movea.l    20(a7),a0
		jsr        Adr_del
		movea.l    4(a4),a5
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     #$0301,30(a5,d0.l)
		move.w     10(a5),d4
		move.w     d4,d3
		ext.l      d3
		move.l     d3,d2
		lsl.l      #3,d2
		sub.l      d3,d2
		lsl.l      #3,d2
		move.w     10(a5,d2.l),18(a7)
		move.w     8(a5,d2.l),16(a7)
		moveq.l    #-2,d3
		add.w      26(a7),d3
		ext.l      d3
		divs.w     #$0003,d3
		move.w     18(a7),d0
		ext.l      d0
		move.l     d0,d4
		lsl.l      #3,d4
		sub.l      d0,d4
		lsl.l      #3,d4
		move.w     12(a5,d4.l),d4
		cmp.w      d3,d4
		bne.s      make_title_9
		move.w     16(a7),d1
		ext.l      d1
		move.l     d1,d2
		lsl.l      #3,d2
		sub.l      d1,d2
		lsl.l      #3,d2
		move.w     12(a5,d2.l),d7
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d0
		lsl.l      #3,d0
		sub.l      d2,d0
		lsl.l      #3,d0
		move.w     18(a7),8(a5,d0.l)
		move.w     18(a7),d0
		ext.l      d0
		move.l     d0,d1
		lsl.l      #3,d1
		sub.l      d0,d1
		lsl.l      #3,d1
		move.w     d6,12(a5,d1.l)
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d2
		lsl.l      #3,d2
		sub.l      d1,d2
		lsl.l      #3,d2
		move.w     d6,8(a5,d2.l)
		move.w     d5,d0
		ext.l      d0
		move.l     d0,d4
		lsl.l      #3,d4
		sub.l      d0,d4
		lsl.l      #3,d4
		move.w     16(a7),8(a5,d4.l)
		move.w     16(a7),d1
		ext.l      d1
		move.l     d1,d2
		lsl.l      #3,d2
		sub.l      d1,d2
		lsl.l      #3,d2
		move.w     d5,12(a5,d2.l)
		move.w     d7,d0
		ext.l      d0
		move.l     d0,d4
		lsl.l      #3,d4
		sub.l      d0,d4
		lsl.l      #3,d4
		move.w     d5,8(a5,d4.l)
		bra.s      make_title_10
make_title_9:
		move.w     26(a7),d0
		movea.l    20(a2),a0
		bsr        find_drop
		move.w     d0,d7
		subq.w     #2,d7
		ext.l      d7
		divs.w     #$0003,d7
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     d6,d4
		ext.l      d4
		move.l     d4,d2
		lsl.l      #3,d2
		sub.l      d4,d2
		lsl.l      #3,d2
		move.w     8(a5,d0.l),8(a5,d2.l)
		move.w     d6,8(a5,d0.l)
		move.w     d7,d6
		ext.l      d6
		move.l     d6,d3
		lsl.l      #3,d3
		sub.l      d6,d3
		lsl.l      #3,d3
		move.w     d5,d2
		ext.l      d2
		move.l     d2,d1
		lsl.l      #3,d1
		sub.l      d2,d1
		lsl.l      #3,d1
		move.w     8(a5,d3.l),8(a5,d1.l)
		move.w     d5,8(a5,d3.l)
make_title_10:
		movea.l    a5,a0
		bsr        align
		movea.l    a2,a0
		movea.l    16(a2),a1
		jsr        (a1)
		clr.w      d0
		movea.l    a2,a0
		jsr        Awi_obredraw
make_title_2:
		lea.l      30(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

mbar_dragged:
		move.l     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    ACSblk,a0
		movea.l    604(a0),a2
		move.w     2(a2),d3
		ext.l      d3
		move.l     d3,d2
		add.l      d2,d2
		add.l      d3,d2
		lsl.l      #3,d2
		move.w     26(a2,d2.l),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     26(a2,d1.l),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     28(a2,d0.l),d3
		movea.l    600(a0),a0
		move.w     d3,d0
		jsr        tdragged
		movea.l    (a7)+,a2
		move.l     (a7)+,d3
		rts

new_title:
		movem.l    d3-d5/a2-a4,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		move.w     608(a0),d3
		movea.l    20(a2),a3
		movea.l    (a2),a4
		move.w     24(a4),d4
		tst.w      d4
		ble.s      new_title_1
		move.w     d4,d0
		movea.l    a3,a0
		bsr        find_title
		move.w     d0,d5
		cmp.w      d0,d3
		beq        new_title_2
		jsr        Adr_unselect
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$FFFE,-14(a3,d0.l)
		andi.w     #$FFFE,10(a3,d0.l)
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d2
		add.l      d2,d2
		add.l      d1,d2
		lsl.l      #3,d2
		ori.w      #$0080,-16(a3,d2.l)
		ori.w      #$0080,8(a3,d2.l)
		andi.w     #$E7FF,8(a3,d2.l)
		movea.l    a2,a0
		move.w     d5,d0
		jsr        Awi_obredraw
		move.w     d4,d0
		movea.l    a2,a0
		jsr        Awi_obredraw
new_title_1:
		move.w     d3,d0
		movea.l    a3,a0
		bsr        find_drop
		move.w     d0,d5
		move.w     d0,24(a4)
		move.w     #$FFFF,10(a4)
		tst.w      d0
		bmi.s      new_title_2
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		ori.w      #$0001,-14(a3,d1.l)
		ext.l      d0
		move.l     d0,d4
		add.l      d4,d4
		add.l      d0,d4
		lsl.l      #3,d4
		andi.w     #$FF7F,-16(a3,d4.l)
		andi.w     #$FF7F,8(a3,d4.l)
		ori.w      #$1800,8(a3,d4.l)
		movea.l    a2,a0
		move.w     d3,d0
		jsr        Awi_obredraw
		move.w     d5,d0
		movea.l    a2,a0
		jsr        Awi_obredraw
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      24(a3,d0.l),a0
		move.l     4(a0),d2
		beq.s      new_title_2
		moveq.l    #-2,d3
		add.w      d5,d3
		ext.l      d3
		divs.w     #$0003,d3
		move.w     d3,10(a4)
new_title_2:
		movem.l    (a7)+,d3-d5/a2-a4
		rts

obspec_only:
		movea.l    ACSblk,a0
		movea.l    600(a0),a1
		movea.l    (a1),a0
		moveq.l    #-2,d0
		movea.l    ACSblk,a1
		add.w      608(a1),d0
		ext.l      d0
		divs.w     #$0003,d0
		move.w     d0,10(a0)
		move.w     #$FFFF,24(a0)
		jsr        edob_specs
		rts

me_service:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		movea.l    a1,a4
		cmp.w      #$000B,d0
		bne.s      me_service_1
		jsr        ti_delete
		moveq.l    #1,d0
		bra.s      me_service_2
me_service_1:
		cmp.w      #$0002,d3
		bne.s      me_service_3
		movea.l    (a2),a0
		movea.l    4(a0),a1
		movea.l    4(a1),a3
		move.w     12(a3),d2
		ext.l      d2
		move.l     d2,d1
		lsl.l      #3,d1
		sub.l      d2,d1
		lsl.l      #3,d1
		move.w     10(a3,d1.l),d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     10(a3,d0.l),d4
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d0
		lsl.l      #3,d0
		sub.l      d2,d0
		lsl.l      #3,d0
		clr.w      42(a3,d0.l)
		move.w     8(a3,d0.l),d2
		ext.l      d2
		move.l     d2,d1
		lsl.l      #3,d1
		sub.l      d2,d1
		lsl.l      #3,d1
		clr.w      42(a3,d1.l)
me_service_3:
		movea.l    a4,a1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        ed_service
me_service_2:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

ti_delete:
		movem.l    d3-d5/a2-a4,-(a7)
		movea.l    a0,a2
		lea.l      ACSblk,a0
		movea.l    (a0),a1
		cmpa.l     576(a1),a2
		bne        ti_delete_1
		moveq.l    #4,d0
		and.w      614(a1),d0
		beq.s      ti_delete_2
		moveq.l    #1,d3
		bra.s      ti_delete_3
ti_delete_2:
		clr.w      d3
ti_delete_3:
		movea.l    (a2),a3
		movea.l    (a0),a1
		clr.w      584(a1)
		bra        ti_delete_4
ti_delete_6:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a2),a4
		lea.l      24(a4,d0.l),a4
		cmpi.w     #$2AF8,22(a4)
		bne.s      ti_delete_5
		movea.l    a2,a0
		move.w     d4,d0
		jsr        Adr_del
		move.w     d3,d1
		move.w     d4,d0
		movea.l    a2,a0
		jsr        del_obentry
ti_delete_5:
		cmpi.w     #$2AF9,22(a4)
		bne.s      ti_delete_4
		move.w     d4,d0
		movea.l    a2,a0
		jsr        Adr_del
		move.w     d4,d0
		movea.l    20(a2),a0
		bsr        find_drop
		move.w     d0,d5
		move.w     #$FFFF,24(a3)
		clr.w      d1
		movea.l    a2,a0
		move.w     d4,d0
		jsr        del_obentry
		clr.w      d1
		move.w     d5,d0
		movea.l    a2,a0
		jsr        del_obentry
		movea.l    4(a3),a0
		jsr        pack_ob
		movea.l    4(a3),a0
		movea.l    4(a0),a0
		bsr        align
		movea.l    a2,a0
		movea.l    16(a2),a1
		jsr        (a1)
		moveq.l    #1,d5
		movea.l    20(a2),a0
		move.w     2(a0),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		add.w      26(a0,d0.l),d5
		movea.l    a2,a0
		move.w     d5,d0
		jsr        Awi_obredraw
		bra.s      ti_delete_1
ti_delete_4:
		jsr        Adr_next
		move.w     d0,d4
		bpl        ti_delete_6
		movea.l    4(a3),a0
		jsr        pack_ob
		movea.l    a2,a0
		movea.l    16(a2),a1
		jsr        (a1)
		move.w     #$FFFF,10(a3)
ti_delete_1:
		movem.l    (a7)+,d3-d5/a2-a4
		rts

title_rubber:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -24(a7),a7
		move.l     a0,20(a7)
		movea.l    a1,a6
		move.w     d0,d3
		move.w     d1,d4
		movea.l    68(a7),a3
		movea.l    ACSblk,a1
		movea.l    572(a1),a0
		lea.l      68(a0),a0
		jsr        Amo_new
		pea.l      18(a7)
		pea.l      20(a7)
		movea.l    a6,a1
		movea.l    28(a7),a0
		jsr        min_size
		addq.w     #8,a7
		add.w      d3,16(a7)
		move.w     22(a6),d5
		add.w      d4,d5
		move.w     d3,d6
		movea.l    ACSblk,a0
		add.w      18(a0),d6
		move.w     18(a0),d7
		lsl.w      #5,d7
		add.w      16(a7),d7
		clr.w      d0
		move.w     d0,2(a7)
		move.w     d0,(a7)
		move.w     8(a0),d1
		add.w      12(a0),d1
		move.w     d1,4(a7)
		move.w     10(a0),d0
		add.w      14(a0),d0
		move.w     d0,6(a7)
		lea.l      (a7),a0
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		moveq.l    #3,d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vsl_width
		moveq.l    #1,d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vsl_color
		clr.w      d2
		clr.w      d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vsl_ends
		moveq.l    #7,d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vsl_type
		lea.l      _globl,a6
		lea.l      12(a7),a4
		lea.l      14(a7),a5
		move.l     (a6),-(a7)
		pea.l      (a4)
		pea.l      (a5)
		lea.l      30(a7),a1
		lea.l      20(a7),a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
title_rubber_8:
		lea.l      10(a7),a2
		move.w     8(a7),(a3)
		moveq.l    #4,d0
		and.w      (a4),d0
		bne.s      title_rubber_1
		move.w     (a3),d1
		cmp.w      16(a7),d1
		bge.s      title_rubber_2
		move.w     16(a7),(a3)
title_rubber_2:
		cmp.w      (a3),d7
		bge.s      title_rubber_1
		move.w     d7,(a3)
title_rubber_1:
		cmp.w      (a3),d6
		ble.s      title_rubber_3
		move.w     d6,(a3)
title_rubber_3:
		moveq.l    #1,d0
		and.w      (a5),d0
		bne.s      title_rubber_4
		lea.l      (a7),a0
		clr.w      d1
		movea.l    ACSblk,a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #-1,d0
		add.w      d3,d0
		sub.w      d0,(a3)
		movea.l    ACSblk,a0
		movea.l    572(a0),a0
		lea.l      56(a0),a0
		jsr        Amo_new
		bra        title_rubber_5
title_rubber_4:
		movea.l    (a6),a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		move.w     d4,d2
		move.w     (a3),d1
		move.w     d3,d0
		jsr        dotted_xline
		move.w     d5,d2
		move.w     (a3),d1
		move.w     d3,d0
		jsr        dotted_xline
		move.w     d3,d2
		move.w     d5,d1
		move.w     d4,d0
		jsr        dotted_yline
		move.w     (a3),d2
		move.w     d5,d1
		move.w     d4,d0
		jsr        dotted_yline
		movea.l    (a6),a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
title_rubber_7:
		move.l     (a6),-(a7)
		pea.l      (a4)
		pea.l      (a5)
		lea.l      30(a7),a1
		movea.l    a2,a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		moveq.l    #1,d0
		and.w      (a5),d0
		beq.s      title_rubber_6
		move.w     (a2),d1
		cmp.w      8(a7),d1
		beq.s      title_rubber_7
title_rubber_6:
		movea.l    (a6),a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		move.w     d4,d2
		move.w     (a3),d1
		move.w     d3,d0
		jsr        dotted_xline
		move.w     d5,d2
		move.w     (a3),d1
		move.w     d3,d0
		jsr        dotted_xline
		move.w     d3,d2
		move.w     d5,d1
		move.w     d4,d0
		jsr        dotted_yline
		move.w     (a3),d2
		move.w     d5,d1
		move.w     d4,d0
		jsr        dotted_yline
		movea.l    (a6),a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
		move.w     (a2),8(a7)
		bra        title_rubber_8
title_rubber_5:
		lea.l      24(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

title_dragged:
		movea.l    ACSblk,a0
		move.w     608(a0),d0
		movea.l    600(a0),a0
		jsr        tdragged
		rts

tdragged:
		movem.l    d3-d5/a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		lea.l      ACSblk,a0
		movea.l    (a0),a1
		cmpa.l     576(a1),a2
		bne.s      tdragged_1
		moveq.l    #3,d0
		and.w      614(a1),d0
		bne.s      tdragged_1
		moveq.l    #1,d3
		bra.s      tdragged_2
tdragged_1:
		clr.w      d3
tdragged_2:
		movea.l    (a0),a1
		clr.w      584(a1)
		bra.s      tdragged_3
tdragged_4:
		move.w     d3,d2
		move.w     d4,d1
		move.w     d5,d0
		movea.l    a2,a0
		bsr        make_title
tdragged_3:
		jsr        Adr_next
		move.w     d0,d5
		bpl.s      tdragged_4
		movem.l    (a7)+,d3-d5/a2
		rts

title_edit:
		movem.l    d3/a2-a3,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    20(a2),a3
		move.w     608(a0),d3
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     10(a3,d0.l),d2
		and.w      #$4000,d2
		beq.s      title_edit_1
		bsr        obspec_only
		bra.s      title_edit_2
title_edit_1:
		moveq.l    #1,d0
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      10(a3,d1.l),d0
		beq.s      title_edit_3
		movea.l    a2,a0
		move.w     d3,d0
		jsr        title_dragsize
		bra.s      title_edit_2
title_edit_3:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$0001,10(a3,d0.l)
		bsr        new_title
title_edit_2:
		movem.l    (a7)+,d3/a2-a3
		rts

title_dragsize:
		movem.l    d3-d4/a2-a4,-(a7)
		lea.l      -12(a7),a7
		movea.l    a0,a2
		move.w     d0,d3
		move.l     _globl,-(a7)
		pea.l      4(a7)
		pea.l      8(a7)
		lea.l      14(a7),a1
		lea.l      16(a7),a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a2),a3
		lea.l      -24(a3,d0.l),a3
		move.l     _globl,-(a7)
		pea.l      12(a7)
		lea.l      18(a7),a1
		movea.l    20(a2),a0
		move.w     d3,d0
		jsr        mt_objc_offset
		addq.w     #8,a7
		move.w     20(a3),d0
		move.w     22(a3),d1
		move.w     52(a2),d2
		add.w      10(a7),d2
		add.w      d0,d2
		sub.w      4(a7),d2
		move.w     d2,6(a7)
		move.w     54(a2),d2
		add.w      8(a7),d2
		add.w      d1,d2
		sub.w      2(a7),d2
		cmpi.w     #$0008,6(a7)
		ble.s      title_dragsize_1
		move.w     d0,d4
		asr.w      #3,d4
		movea.w    6(a7),a0
		cmpa.w     d4,a0
		bgt.s      title_dragsize_2
title_dragsize_1:
		cmp.w      #$0008,d2
		ble.s      title_dragsize_3
		move.w     d1,d0
		asr.w      #3,d0
		cmp.w      d0,d2
		ble.s      title_dragsize_3
title_dragsize_2:
		jsr        Adr_unselect
		andi.w     #$FFFE,34(a3)
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Adr_add
		move.w     2(a7),d1
		move.w     4(a7),d0
		jsr        Adr_drag
		jsr        Adr_unselect
		bra        title_dragsize_4
title_dragsize_3:
		movea.l    (a2),a0
		movea.l    4(a0),a0
		movea.l    4(a0),a4
		moveq.l    #-2,d0
		add.w      d3,d0
		ext.l      d0
		divs.w     #$0003,d0
		move.w     d0,d3
		pea.l      6(a7)
		move.w     12(a7),d1
		add.w      54(a2),d1
		move.w     14(a7),d0
		add.w      52(a2),d0
		movea.l    a3,a1
		move.w     d3,d4
		ext.l      d4
		move.l     d4,d2
		lsl.l      #3,d2
		sub.l      d4,d2
		lsl.l      #3,d2
		lea.l      0(a4,d2.l),a0
		bsr        title_rubber
		addq.w     #4,a7
		movea.l    ACSblk,a0
		move.w     18(a0),d0
		ext.l      d0
		divs.w     #$0002,d0
		add.w      6(a7),d0
		ext.l      d0
		divs.w     18(a0),d0
		move.w     d0,6(a7)
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		lsl.l      #3,d1
		sub.l      d2,d1
		lsl.l      #3,d1
		move.w     d0,28(a4,d1.l)
		movea.l    a4,a0
		bsr        align
		movea.l    a2,a0
		movea.l    16(a2),a1
		jsr        (a1)
		moveq.l    #1,d3
		movea.l    20(a2),a0
		move.w     2(a0),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		add.w      26(a0,d0.l),d3
		movea.l    a2,a0
		move.w     d3,d0
		jsr        Awi_obredraw
title_dragsize_4:
		lea.l      12(a7),a7
		movem.l    (a7)+,d3-d4/a2-a4
		rts

	.data
droptree:
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
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $1101
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0c
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
protodrop:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l droptree
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $38
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $38
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b 'DROPPROTO',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xaf1e0:
		dc.b ' NAME',0
xaf1e6:
		dc.b '  ACC EINTRAG',0
	.even
