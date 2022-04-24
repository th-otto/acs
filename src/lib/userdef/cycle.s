		.text

		.globl A_cycle
A_cycle:
		movem.l    d2-d5/a2-a6,-(a7)
		lea.l      -66(a7),a7
		movea.l    106(a7),a2
		lea.l      xd4e48,a0
		lea.l      8(a7),a1
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		lea.l      54(a7),a3
		lea.l      ACSblk,a4
		move.w     22(a2),d0
		bne.s      A_cycle_1
		move.w     24(a2),d1
		beq.s      A_cycle_2
A_cycle_1:
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
		bra.s      A_cycle_3
A_cycle_2:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_cycle_3:
		move.w     8(a2),d0
		move.w     6(a2),d1
		eor.w      d1,d0
		bne        A_cycle_4
		move.w     4(a2),d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		movea.l    (a2),a0
		adda.l     d2,a0
		move.l     12(a0),4(a7)
		movea.l    4(a7),a1
		move.l     16(a1),(a7)
		move.w     14(a2),d0
		movea.l    (a4),a0
		move.w     18(a0),d1
		add.w      d1,d1
		sub.w      d1,d0
		subq.w     #1,d0
		lea.l      14(a7),a5
		move.w     10(a2),d1
		move.w     d1,50(a7)
		move.w     d1,38(a7)
		move.w     d1,34(a7)
		move.w     d1,(a3)
		add.w      d0,d1
		move.w     d1,46(a7)
		move.w     d1,42(a7)
		addq.w     #1,d1
		move.w     d1,16(a5)
		move.w     d1,4(a5)
		move.w     d1,(a5)
		movea.l    (a4),a0
		move.w     18(a0),d2
		add.w      d2,d2
		add.w      d2,d1
		move.w     d1,12(a5)
		move.w     d1,8(a5)
		move.w     d1,4(a3)
		move.w     12(a2),d0
		move.w     d0,44(a7)
		move.w     d0,10(a5)
		move.w     d0,40(a7)
		move.w     d0,6(a5)
		move.w     d0,2(a3)
		add.w      16(a2),d0
		move.w     d0,52(a7)
		move.w     d0,18(a5)
		move.w     d0,48(a7)
		move.w     d0,14(a5)
		move.w     d0,36(a7)
		move.w     d0,2(a5)
		move.w     d0,6(a3)
		moveq.l    #1,d1
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_width
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		clr.w      d2
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_ends
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    4(a7),a0
		move.l     4(a0),d0
		and.l      #$00010000,d0
		beq        A_cycle_5
		movea.l    (a4),a1
		cmpi.w     #$0004,28(a1)
		blt        A_cycle_5
		movea.l    572(a1),a0
		move.w     14(a0),d1
		and.w      #$0100,d1
		bne        A_cycle_5
		move.w     16(a1),d0
		moveq.l    #8,d1
		jsr        vsf_color
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
		moveq.l    #15,d1
		movea.l    4(a7),a0
		and.w      6(a0),d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vsl_color
		lea.l      34(a7),a0
		moveq.l    #3,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		movea.l    a5,a0
		moveq.l    #3,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		movea.l    4(a7),a0
		move.l     4(a0),d1
		asr.l      #4,d1
		and.w      #$000F,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vsl_color
		lea.l      42(a7),a0
		moveq.l    #3,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		lea.l      8(a5),a0
		moveq.l    #3,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		bra        A_cycle_6
A_cycle_5:
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		lea.l      34(a7),a0
		moveq.l    #3,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		lea.l      46(a7),a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		move.w     46(a7),d2
		move.w     48(a7),d1
		move.w     44(a7),d0
		jsr        dotted_yline
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		lea.l      4(a5),a0
		moveq.l    #4,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
A_cycle_6:
		move.w     16(a2),d3
		movea.l    (a4),a0
		sub.w      20(a0),d3
		asr.w      #1,d3
		add.w      12(a2),d3
		clr.w      d1
		move.w     16(a0),d0
		jsr        vst_rotation
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_color
		lea.l      12(a7),a5
		movea.l    a5,a1
		movea.l    a5,a0
		moveq.l    #5,d2
		clr.w      d1
		movea.l    (a4),a6
		move.w     16(a6),d0
		jsr        vst_alignment
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    (a4),a0
		move.w     656(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		pea.l      (a5)
		pea.l      14(a7)
		movea.l    a5,a1
		movea.l    a5,a0
		movea.l    (a4),a6
		move.w     658(a6),d1
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		move.w     10(a2),d5
		add.w      14(a2),d5
		movea.l    (a4),a0
		sub.w      18(a0),d5
		moveq.l    #-2,d0
		add.w      18(a0),d0
		asr.w      #1,d0
		sub.w      d0,d5
		subq.w     #1,d5
		movea.l    4(a7),a1
		move.l     4(a1),d4
		asr.l      #8,d4
		tst.b      d4
		beq.s      A_cycle_7
		move.b     d4,8(a7)
A_cycle_7:
		lea.l      8(a7),a0
		move.w     d3,d2
		move.w     d5,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_gtext
		moveq.l    #32,d0
		and.w      8(a2),d0
		beq.s      A_cycle_8
		moveq.l    #1,d1
		add.w      10(a2),d1
		move.w     d1,(a3)
		move.w     12(a2),d2
		add.w      16(a2),d2
		addq.w     #1,d2
		move.w     d2,2(a3)
		move.w     d2,6(a3)
		move.w     10(a2),d5
		add.w      14(a2),d5
		addq.w     #1,d5
		move.w     d5,4(a3)
		move.w     d5,8(a3)
		moveq.l    #1,d2
		add.w      12(a2),d2
		move.w     d2,10(a3)
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #3,d1
		jsr        v_pline
A_cycle_8:
		movea.l    (a7),a0
		move.l     (a0),d0
		beq.s      A_cycle_4
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vswr_mode
		move.w     14(a2),d5
		ext.l      d5
		movea.l    (a4),a0
		divs.w     18(a0),d5
		subq.w     #2,d5
		tst.w      d5
		bpl.s      A_cycle_9
		clr.w      d5
A_cycle_9:
		move.w     d5,d0
		ext.l      d0
		move.l     d0,-(a7)
		movea.l    4(a7),a0
		movea.l    (a0),a0
		jsr        strlen
		move.l     (a7)+,d1
		cmp.l      d0,d1
		bcc.s      A_cycle_10
		movea.l    (a7),a0
		movea.l    (a0),a5
		adda.w     d5,a5
		move.b     (a5),d4
		clr.b      (a5)
		movea.l    (a0),a0
		move.w     d3,d2
		moveq.l    #1,d1
		add.w      10(a2),d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_gtext
		move.b     d4,(a5)
		bra.s      A_cycle_4
A_cycle_10:
		movea.l    (a7),a0
		movea.l    (a0),a0
		move.w     d3,d2
		moveq.l    #1,d1
		add.w      10(a2),d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_gtext
A_cycle_4:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #-18,d0
		and.w      8(a2),d0
		lea.l      66(a7),a7
		movem.l    (a7)+,d2-d5/a2-a6
		rts

setit:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a1,a3
		movea.l    (a0),a0
		jsr        Ax_ifree
		movea.l    a3,a4
		clr.w      d3
		bra.s      set_1
set_2:
		addq.w     #1,a4
		addq.w     #1,d3
set_1:
		move.b     (a4),d0
		ext.w      d0
		lea.l      xd4e4b,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      set_2
		moveq.l    #1,d0
		add.w      d3,d0
		ext.l      d0
		jsr        Ax_malloc
		movea.l    a0,a4
		tst.w      d3
		ble.s      set_3
		move.w     d3,d0
		ext.l      d0
		movea.l    a3,a1
		jsr        strncpy
set_3:
		clr.b      0(a4,d3.w)
		move.l     a4,(a2)
		movem.l    (a7)+,d3/a2-a4
		rts

next_entry:
		move.b     (a0),d0
		beq.s      next_entry_1
		cmp.b      #$5D,d0
		bne.s      next_entry_2
		addq.w     #1,a0
		cmpi.b     #$7C,(a0)
		bne.s      next_entry_1
next_entry_2:
		cmpi.b     #$7C,(a0)
		bne.s      next_entry_3
		addq.w     #1,a0
		rts
next_entry_3:
		addq.w     #1,a0
		bra.s      next_entry
next_entry_1:
		rts

next:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		movea.l    4(a2),a0
		bsr.w      next_entry
		movea.l    a0,a3
		move.b     (a0),d0
		bne.s      next_1
		movea.l    8(a2),a3
		bra.s      next_1
next_2:
		movea.l    a3,a0
		bsr.w      next_entry
		movea.l    a0,a3
next_1:
		cmpi.b     #$5B,(a3)
		beq.s      next_2
		move.l     a3,4(a2)
		movea.l    a3,a1
		movea.l    a2,a0
		bsr        setit
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

make_popup:
		move.l     a2,-(a7)
		movea.l    a0,a2
		clr.l      (a0)
		move.l     #xd4e4a,4(a2)
		bsr.w      next
		movea.l    (a7)+,a2
		rts

cyc_getindex:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a1,a4
		movea.l    (a0),a0
		jsr        strlen
		move.l     d0,d3
		movea.l    8(a2),a3
		clr.w      d4
cyc_getindex_6:
		cmpi.b     #$5B,(a3)
		beq.s      cyc_getindex_1
		move.w     d3,d0
		ext.l      d0
		movea.l    a3,a1
		movea.l    (a2),a0
		jsr        strncmp
		tst.w      d0
		bne.s      cyc_getindex_2
		move.b     0(a3,d3.w),d0
		beq.s      cyc_getindex_3
		cmp.b      #$7C,d0
		bne.s      cyc_getindex_2
cyc_getindex_3:
		move.w     d4,(a4)
		bra.s      cyc_getindex_4
cyc_getindex_2:
		addq.w     #1,d4
cyc_getindex_1:
		moveq.l    #124,d0
		movea.l    a3,a0
		jsr        strchr
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      cyc_getindex_5
		move.w     #$FFFF,(a4)
		bra.s      cyc_getindex_4
cyc_getindex_5:
		addq.w     #1,a3
		bra.s      cyc_getindex_6
cyc_getindex_4:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

cyc_index:
		move.l     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    a0,a2
		moveq.l    #1,d3
		add.w      (a1),d3
		move.l     #xd4e4a,4(a2)
		bra.s      cyc_index_1
cyc_index_2:
		movea.l    a2,a0
		bsr        next
cyc_index_1:
		move.w     d3,d0
		subq.w     #1,d3
		tst.w      d0
		bgt.s      cyc_index_2
		movea.l    (a7)+,a2
		move.l     (a7)+,d3
		rts

Auo_cycle_14:
Auo_cycle_9:
		.globl Auo_cycle
Auo_cycle:
		movem.l    a2-a4,-(a7)
		subq.w     #4,a7
		movea.l    a1,a4
		movea.l    12(a0),a2
		movea.l    16(a2),a3
		move.w     d0,d1
		cmp.w      #$0009,d1
		beq        Auo_cycle_1
		bgt.s      Auo_cycle_2
		cmp.w      #$0006,d1
		bhi        Auo_cycle_3
		add.w      d1,d1
		move.w     J52(pc,d1.w),d1
		jmp        J52(pc,d1.w)
J52:
		dc.w Auo_cycle_3-J52
		dc.w Auo_cycle_4-J52
		dc.w Auo_cycle_5-J52
		dc.w Auo_cycle_6-J52
		dc.w Auo_cycle_7-J52
		dc.w Auo_cycle_8-J52
		dc.w Auo_cycle_8-J52
Auo_cycle_2:
		cmp.w      #$0190,d1
		beq        Auo_cycle_90
		bgt.s      Auo_cycle_91
		sub.w      #$0013,d1
		beq        Auo_cycle_15
		subq.w     #1,d1
		beq        Auo_cycle_15
		bra        Auo_cycle_3
Auo_cycle_91:
		sub.w      #$0191,d1
		beq        Auo_cycle_12
		subq.w     #1,d1
		beq        Auo_cycle_16
		bra        Auo_cycle_3
Auo_cycle_4:
		moveq.l    #22,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Auo_cycle_17
		moveq.l    #22,d1
		clr.w      d0
		jsr        memset
		move.l     12(a2),d0
		beq.s      Auo_cycle_18
		movea.l    d0,a0
		jsr        Ast_create
		move.l     a0,8(a3)
		bra.s      Auo_cycle_19
Auo_cycle_18:
		lea.l      xd4e4a,a0
		jsr        Ast_create
		move.l     a0,8(a3)
Auo_cycle_19:
		move.l     8(a3),d0
		beq.s      Auo_cycle_17
		move.l     a3,16(a2)
Auo_cycle_22:
		movea.l    a3,a0
		bsr        make_popup
		bra        Auo_cycle_15
Auo_cycle_17:
		move.w     #$FFFF,(a4)
		bra        Auo_cycle_15
Auo_cycle_5:
		move.l     8(a3),d0
		beq.s      Auo_cycle_20
		movea.l    d0,a0
		jsr        Ast_delete
Auo_cycle_20:
		move.l     (a3),d0
		beq.s      Auo_cycle_21
		movea.l    d0,a0
		jsr        Ax_free
Auo_cycle_21:
		movea.l    16(a2),a0
		jsr        Ax_free
		bra        Auo_cycle_15
Auo_cycle_7:
		movea.l    a4,a1
		movea.l    a3,a0
		bsr        setit
		bra.w      Auo_cycle_15
Auo_cycle_1:
		movea.l    a4,a0
		move.l     (a0),12(a3)
		move.l     4(a0),16(a3)
		move.w     8(a0),20(a3)
		bra.s      Auo_cycle_15
Auo_cycle_6:
		move.l     (a3),(a4)
		bra.s      Auo_cycle_15
Auo_cycle_8:
		move.l     12(a3),(a7)
		move.l     (a7),d0
		beq.s      Auo_cycle_15
		moveq.l    #-1,d1
		move.w     20(a3),d0
		movea.l    (a7),a0
		movea.l    (a7),a1
		movea.l    102(a1),a1
		jsr        (a1)
		bra.s      Auo_cycle_15
Auo_cycle_12:
		movea.l    a4,a1
		movea.l    a3,a0
		bsr        cyc_index
		bra.s      Auo_cycle_15
Auo_cycle_16:
		movea.l    a4,a1
		movea.l    a3,a0
		bsr        cyc_getindex
		bra.s      Auo_cycle_15
Auo_cycle_90:
		movea.l    8(a3),a0
		jsr        Ax_free
		movea.l    a4,a0
		jsr        Ast_create
		move.l     a0,8(a3)
		move.l     a0,d0
		bne        Auo_cycle_22
		lea.l      xd4e4a,a0
		jsr        Ast_create
		move.l     a0,8(a3)
		bra        Auo_cycle_22
Auo_cycle_3:
		clr.w      d0
		bra.s      Auo_cycle_23
Auo_cycle_15:
		moveq.l    #1,d0
Auo_cycle_23:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a4
		rts
Auo_cycle_10:
Auo_cycle_11:
Auo_cycle_13:

count_it:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    12(a7),a3
		movea.l    a0,a2
		move.w     #$0001,(a1)
		bra.s      count_it_1
count_it_4:
		cmpi.b     #$7C,(a2)
		bne.s      count_it_2
		addq.w     #1,(a1)
count_it_2:
		cmpi.b     #$5D,(a2)
		bne.s      count_it_3
		cmpi.b     #$7C,1(a2)
		beq.s      count_it_3
		addq.w     #1,(a1)
count_it_3:
		addq.w     #1,a2
count_it_1:
		move.b     (a2),d0
		bne.s      count_it_4
		movea.l    a0,a2
		moveq.l    #1,d0
		add.w      (a1),d0
		move.w     d0,(a3)
		bra.s      count_it_5
count_it_7:
		cmpi.b     #$5B,(a2)
		bne.s      count_it_6
		addq.w     #1,(a3)
count_it_6:
		addq.w     #1,a2
count_it_5:
		move.b     (a2),d0
		bne.s      count_it_7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

make_panel:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -14(a7),a7
		move.l     a0,10(a7)
		movea.l    a1,a2
		move.w     d0,8(a7)
		movea.l    58(a7),a6
		movea.l    66(a7),a4
		move.w     d1,d7
		move.w     d2,d3
		move.w     (a1),2(a7)
		move.w     2(a7),d1
		ext.l      d1
		move.l     d1,d2
		add.l      d2,d2
		add.l      d1,d2
		lsl.l      #3,d2
		adda.l     d2,a0
		move.l     a0,4(a7)
		moveq.l    #-1,d0
		add.w      2(a7),d0
		move.w     d0,(a0)
		moveq.l    #1,d2
		add.w      2(a7),d2
		move.w     d2,2(a0)
		move.w     #$0014,6(a0)
		move.w     #$0080,8(a0)
		move.w     #$0020,10(a0)
		move.l     #$00FF1001,12(a0)
		suba.l     a1,a1
		move.w     a1,18(a0)
		move.w     a1,16(a0)
		move.w     8(a7),20(a0)
		clr.w      d5
		addq.w     #1,(a2)
		move.w     d5,d6
		bra        make_panel_1
make_panel_21:
		move.w     (a2),(a7)
		move.w     (a7),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    10(a7),a5
		adda.l     d0,a5
		addq.w     #1,(a2)
		movea.l    (a6),a0
		cmpi.b     #$5B,(a0)
		bne.s      make_panel_2
		move.w     (a2),d2
		move.w     d2,4(a5)
		move.w     d2,2(a5)
		tst.w      d3
		beq.s      make_panel_3
		move.w     #$0018,6(a5)
		bra.s      make_panel_4
make_panel_3:
		move.w     #$0020,6(a5)
make_panel_4:
		moveq.l    #1,d4
		addq.l     #1,(a6)
		bra.s      make_panel_5
make_panel_2:
		moveq.l    #-1,d0
		move.w     d0,4(a5)
		move.w     d0,2(a5)
		tst.w      d3
		beq.s      make_panel_6
		move.w     #$0018,6(a5)
		bra.s      make_panel_7
make_panel_6:
		move.w     #$001C,6(a5)
make_panel_7:
		clr.w      d4
make_panel_5:
		movea.l    (a6),a0
		cmpa.l     70(a7),a0
		bne.s      make_panel_8
		move.w     #$0004,10(a5)
		bra.s      make_panel_9
make_panel_8:
		clr.w      10(a5)
make_panel_9:
		movea.l    62(a7),a0
		movea.l    (a0),a3
		tst.w      d3
		beq.s      make_panel_10
		move.l     (a4),12(a5)
		moveq.l    #32,d0
		lea.l      a3dproto,a1
		movea.l    (a4),a0
		jsr        memcpy
		movea.l    (a4),a0
		move.l     a3,12(a0)
		addi.l     #$00000020,(a4)
		bra.s      make_panel_11
make_panel_10:
		move.l     a3,12(a5)
make_panel_11:
		move.w     d7,d0
		ext.l      d0
		movea.l    62(a7),a0
		add.l      d0,(a0)
		moveq.l    #32,d1
		move.b     d1,1(a3)
		move.b     d1,(a3)
		addq.w     #2,a3
		moveq.l    #-3,d0
		add.w      d7,d0
		bra.s      make_panel_12
make_panel_16:
		movea.l    (a6),a0
		cmpi.b     #$5D,(a0)
		bne.s      make_panel_13
		moveq.l    #1,d6
		cmpi.b     #$7C,1(a0)
		bne.s      make_panel_14
		addq.l     #1,(a6)
		bra.s      make_panel_14
make_panel_13:
		tst.w      d0
		ble.s      make_panel_15
		movea.l    (a6),a0
		move.b     (a0),(a3)
		addq.w     #1,a3
		subq.w     #1,d0
make_panel_15:
		addq.l     #1,(a6)
make_panel_12:
		movea.l    (a6),a0
		move.b     (a0),d1
		beq.s      make_panel_14
		cmp.b      #$7C,d1
		bne.s      make_panel_16
make_panel_14:
		clr.b      (a3)
		movea.l    (a6),a0
		move.b     (a0),d0
		beq.s      make_panel_17
		addq.l     #1,(a6)
make_panel_17:
		tst.w      d4
		beq.s      make_panel_18
		move.l     70(a7),-(a7)
		move.l     a4,-(a7)
		move.l     70(a7),-(a7)
		move.l     a6,-(a7)
		move.w     d3,d2
		move.w     d7,d1
		move.w     24(a7),d0
		movea.l    a2,a1
		movea.l    26(a7),a0
		bsr        make_panel
		lea.l      16(a7),a7
make_panel_18:
		move.w     #$0001,8(a5)
		move.w     d5,d0
		movea.l    ACSblk,a0
		muls.w     20(a0),d0
		move.w     d0,18(a5)
		movea.l    ACSblk,a0
		move.w     20(a0),22(a5)
		clr.w      16(a5)
		move.w     8(a7),20(a5)
		move.w     (a2),(a5)
		addq.w     #1,d5
		tst.w      d6
		bne.s      make_panel_1
		movea.l    (a6),a0
		cmpi.b     #$5D,(a0)
		bne.s      make_panel_1
		cmpi.b     #$7C,1(a0)
		bne.s      make_panel_19
		addq.l     #1,(a6)
make_panel_19:
		addq.l     #1,(a6)
		bra.s      make_panel_20
make_panel_1:
		movea.l    (a6),a0
		move.b     (a0),d0
		beq.s      make_panel_20
		tst.w      d6
		beq        make_panel_21
make_panel_20:
		move.w     2(a7),(a5)
		movea.l    ACSblk,a0
		move.w     20(a0),d0
		muls.w     d5,d0
		movea.l    4(a7),a1
		move.w     d0,22(a1)
		move.w     (a7),4(a1)
		lea.l      14(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

create_popup:
		movem.l    d3-d5/a2-a5,-(a7)
		lea.l      -18(a7),a7
		movea.l    a0,a3
		movea.l    a1,a5
		move.w     d0,d3
		move.w     d1,d5
		lea.l      16(a7),a2
		pea.l      14(a7)
		movea.l    a2,a1
		movea.l    a3,a0
		bsr        count_it
		addq.w     #4,a7
		move.w     d3,d4
		movea.l    ACSblk,a0
		add.w      18(a0),d4
		subq.w     #1,d4
		ext.l      d4
		divs.w     18(a0),d4
		tst.w      d4
		bpl.s      create_popup_1
		clr.w      d4
create_popup_1:
		addq.w     #3,d4
		tst.w      d5
		beq.s      create_popup_2
		move.w     14(a7),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     (a2),d2
		muls.w     d4,d2
		ext.l      d2
		add.l      d2,d0
		move.w     (a2),d1
		ext.l      d1
		lsl.l      #5,d1
		add.l      d1,d0
		jsr        Ax_malloc
		movea.l    a0,a4
		bra.s      create_popup_3
create_popup_2:
		move.w     14(a7),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     (a2),d2
		muls.w     d4,d2
		ext.l      d2
		add.l      d2,d0
		jsr        Ax_malloc
		movea.l    a0,a4
create_popup_3:
		move.l     a4,d0
		bne.s      create_popup_4
		suba.l     a0,a0
		bra.s      create_popup_5
create_popup_4:
		clr.w      12(a7)
		move.w     14(a7),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      0(a4,d0.l),a0
		move.l     a0,4(a7)
		move.w     (a2),d2
		muls.w     d4,d2
		adda.w     d2,a0
		move.l     a0,(a7)
		move.l     a3,8(a7)
		move.l     a5,-(a7)
		pea.l      4(a7)
		pea.l      12(a7)
		pea.l      20(a7)
		lea.l      28(a7),a1
		movea.l    a4,a0
		move.w     d3,d0
		move.w     d4,d1
		move.w     d5,d2
		bsr        make_panel
		lea.l      16(a7),a7
		move.w     #$FFFF,(a4)
		andi.w     #$FF7F,8(a4)
		ori.w      #$8000,10(a4)
		move.w     12(a7),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$0020,-16(a4,d0.l)
		movea.l    a4,a0
create_popup_5:
		lea.l      18(a7),a7
		movem.l    (a7)+,d3-d5/a2-a5
		rts

		.globl Ame_strpopup
Ame_strpopup:
		movem.l    d3-d6/a2-a5,-(a7)
		movea.l    a0,a4
		movea.l    a1,a2
		move.w     d0,d4
		move.w     d1,d6
		move.w     d2,d5
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		move.w     14(a1),d2
		and.w      #$0100,d2
		bne.s      Ame_strpopup_1
		cmpi.w     #$0004,28(a0)
		blt.s      Ame_strpopup_1
		moveq.l    #1,d3
		bra.s      Ame_strpopup_2
Ame_strpopup_1:
		clr.w      d3
Ame_strpopup_2:
		move.w     d3,d1
		move.w     d4,d0
		movea.l    36(a7),a1
		movea.l    a2,a0
		bsr        create_popup
		movea.l    a0,a3
		move.l     a3,d0
		beq        Ame_strpopup_3
		move.w     d5,d1
		movea.l    a3,a1
		movea.l    a4,a0
		move.w     d6,d0
		jsr        Ame_popup
		move.w     d0,d6
		tst.w      d0
		bmi.s      Ame_strpopup_4
		tst.w      d3
		beq.s      Ame_strpopup_5
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		movea.l    12(a3,d1.l),a0
		movea.l    12(a0),a4
		addq.w     #2,a4
		bra.s      Ame_strpopup_6
Ame_strpopup_5:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    12(a3,d0.l),a4
		addq.w     #2,a4
Ame_strpopup_6:
		movea.l    a4,a0
		jsr        strlen
		move.l     d0,d6
		movea.l    a4,a1
		movea.l    a2,a0
		jsr        strstr
		movea.l    a0,a5
		bra.s      Ame_strpopup_7
Ame_strpopup_8:
		movea.l    a4,a1
		lea.l      1(a5),a0
		jsr        strstr
		movea.l    a0,a5
Ame_strpopup_7:
		move.b     0(a5,d6.l),d0
		ext.w      d0
		lea.l      xd4e4e,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ame_strpopup_8
		bra.s      Ame_strpopup_9
Ame_strpopup_4:
		suba.l     a5,a5
Ame_strpopup_9:
		movea.l    a3,a0
		jsr        Ax_free
		movea.l    a5,a0
		bra.s      Ame_strpopup_10
Ame_strpopup_3:
		suba.l     a0,a0
Ame_strpopup_10:
		movem.l    (a7)+,d3-d6/a2-a5
		rts

		.globl Aus_cycle
Aus_cycle:
		movem.l    d3-d5/a2-a5,-(a7)
		lea.l      -18(a7),a7
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		movea.l    604(a0),a3
		move.w     608(a0),d3
		move.l     _globl,-(a7)
		pea.l      4(a7)
		lea.l      10(a7),a1
		move.w     d3,d0
		movea.l    a3,a0
		jsr        mt_objc_offset
		addq.w     #8,a7
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		adda.l     d0,a3
		movea.l    12(a3),a4
		move.w     20(a3),d4
		movea.l    (a2),a0
		movea.l    600(a0),a1
		move.w     52(a1),d2
		add.w      d2,2(a7)
		move.w     2(a7),d5
		add.w      d4,d5
		move.w     d5,d0
		move.w     18(a0),d1
		add.w      d1,d1
		sub.w      d1,d0
		movea.l    16(a4),a5
		cmp.w      610(a0),d0
		bgt.s      Aus_cycle_1
		cmp.w      610(a0),d5
		ble.s      Aus_cycle_1
		movea.l    a5,a0
		bsr        next
		bra        Aus_cycle_2
Aus_cycle_1:
		move.w     22(a3),d0
		movea.l    (a2),a0
		sub.w      20(a0),d0
		asr.w      #1,d0
		movea.l    600(a0),a1
		add.w      54(a1),d0
		add.w      d0,(a7)
		movea.l    572(a0),a1
		move.w     14(a1),d5
		move.l     a3dproto+4,d1
		and.l      #$F0FF0FFF,d1
		moveq.l    #15,d2
		and.l      4(a4),d2
		moveq.l    #12,d0
		lsl.l      d0,d2
		or.l       d2,d1
		move.l     4(a4),d2
		and.l      #$000000F0,d2
		moveq.l    #20,d0
		lsl.l      d0,d2
		or.l       d2,d1
		move.l     d1,a3dproto+4
		move.l     4(a4),d1
		and.l      #$00010000,d1
		bne.s      Aus_cycle_3
		ori.w      #$0100,14(a1)
Aus_cycle_3:
		move.l     4(a5),-(a7)
		move.w     4(a7),d2
		move.w     6(a7),d1
		move.w     d4,d0
		movea.l    8(a5),a1
		movea.l    (a2),a0
		movea.l    600(a0),a0
		bsr        Ame_strpopup
		addq.w     #4,a7
		move.l     a0,4(a7)
		movea.l    (a2),a1
		movea.l    572(a1),a0
		move.w     d5,14(a0)
		move.l     #$09F10178,a3dproto+4
		move.l     4(a7),d0
		beq.s      Aus_cycle_2
		move.l     d0,4(a5)
		movea.l    d0,a1
		movea.l    a5,a0
		bsr        setit
Aus_cycle_2:
		movea.l    (a2),a0
		move.l     600(a0),8(a7)
		move.l     a3,12(a7)
		movea.l    600(a0),a1
		movea.l    24(a1),a5
		cmpa.l     604(a0),a5
		bne.s      Aus_cycle_4
		move.w     d3,d0
		or.w       #$1000,d0
		move.w     d0,16(a7)
		bra.s      Aus_cycle_5
Aus_cycle_4:
		move.w     d3,16(a7)
Aus_cycle_5:
		lea.l      8(a7),a1
		moveq.l    #9,d0
		movea.l    a3,a0
		movea.l    8(a4),a2
		jsr        (a2)
		suba.l     a1,a1
		moveq.l    #5,d0
		movea.l    a3,a0
		movea.l    8(a4),a2
		jsr        (a2)
		lea.l      18(a7),a7
		movem.l    (a7)+,d3-d5/a2-a5
		rts

		.data

a3dproto:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l xd4e4a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd4e48:
		dc.w $0200
xd4e4a:
		dc.b $00
xd4e4b:
		dc.b $7c
		dc.w $5d00
xd4e4e:
		dc.b '[]|',0
		.even
