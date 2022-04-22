
		.globl pu_init
pu_init:
		movem.l    d3-d5/a2-a6,-(a7)
		movea.l    a0,a2
		jsr        ed_init
		tst.w      d0
		beq.s      pu_init_1
		moveq.l    #-1,d0
		bra.s      pu_init_2
pu_init_1:
		movea.l    20(a2),a3
		movea.l    a3,a4
		movea.l    (a2),a5
		movea.l    4(a5),a6
		move.l     14(a6),d0
		moveq.l    #56,d1
		jsr        _uldiv
		move.l     d0,d3
		movea.l    ACSblk,a0
		move.w     12(a0),20(a3)
		movea.l    ACSblk,a0
		move.w     14(a0),22(a3)
		clr.w      d4
		bra.s      pu_init_3
pu_init_4:
		move.w     d4,d5
		add.w      d5,d5
		add.w      d4,d5
		addq.w     #3,d5
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.l     #pup_edit,0(a4,d0.l)
		addq.w     #1,d4
pu_init_3:
		cmp.w      d4,d3
		bgt.s      pu_init_4
		move.w     24(a5),d0
		movea.l    a2,a0
		jsr        set_menu
		clr.w      d0
pu_init_2:
		movem.l    (a7)+,d3-d5/a2-a6
		rts

		.globl pu_make
pu_make:
		movem.l    a2-a4,-(a7)
		subq.w     #4,a7
		move.l     a0,(a7)
		movea.l    4(a0),a3
		movea.l    18(a3),a4
		move.l     a4,d0
		beq.s      pu_make_1
		movea.l    a4,a0
		jsr        Awi_show
		bra        pu_make_2
pu_make_1:
		moveq.l    #50,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      pu_make_3
		movea.l    (a7),a1
		move.l     (a1),(a0)
		move.l     a3,4(a2)
		move.w     #$0001,8(a2)
		move.w     #$0002,24(a2)
		clr.w      10(a2)
		clr.l      30(a2)
		lea.l      22(a3),a1
		move.l     a1,WI_POPUP+78
		movea.l    WI_POPUP+90,a0
		move.l     a1,8(a0)
		lea.l      WI_POPUP,a0
		jsr        Awi_create
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      pu_make_3
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
		beq.s      pu_make_2
		movea.l    a4,a0
		jsr        ed_term
pu_make_3:
		suba.l     a0,a0
		bra.s      pu_make_4
pu_make_2:
		movea.l    a4,a0
pu_make_4:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a4
		rts

new_menu:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		movea.l    (a0),a0
		movea.l    (a0),a3
		movea.l    4(a0),a4
		pea.l      protosub
		movea.l    a4,a1
		movea.l    a3,a0
		clr.w      d0
		jsr        copysub_ob
		addq.w     #4,a7
		move.w     d0,d3
		moveq.l    #-2,d1
		add.w      d4,d1
		ext.l      d1
		divs.w     #$0003,d1
		move.w     d1,d4
		movea.l    4(a4),a4
		ext.l      d1
		move.l     d1,d2
		lsl.l      #3,d2
		sub.l      d1,d2
		lsl.l      #3,d2
		move.w     d0,12(a4,d2.l)
		move.w     d0,10(a4,d2.l)
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		move.w     d4,8(a4,d0.l)
		movea.l    a2,a0
		movea.l    16(a2),a1
		jsr        (a1)
		movem.l    (a7)+,d3-d4/a2-a4
		rts

open_menu:
		movem.l    d3-d5/a2-a4,-(a7)
		movea.l    ACSblk,a0
		move.w     608(a0),d3
		movea.l    600(a0),a2
		movea.l    20(a2),a3
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     2(a3,d0.l),d4
		jsr        Adr_unselect
		movea.l    (a2),a4
		move.w     24(a4),d5
		tst.w      d4
		bpl.s      open_menu_1
		jsr        Aev_release
		lea.l      NEW_POPUP,a0
		moveq.l    #1,d0
		jsr        Awi_alert
		subq.w     #2,d0
		beq        open_menu_2
		move.w     d3,d0
		movea.l    a2,a0
		bsr        new_menu
		movea.l    20(a2),a3
open_menu_1:
		moveq.l    #1,d1
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		or.w       -14(a3,d0.l),d1
		moveq.l    #-1,d0
		add.w      d3,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
		moveq.l    #1,d4
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		add.w      2(a3,d0.l),d4
		move.w     d4,24(a4)
		moveq.l    #-2,d2
		add.w      d4,d2
		ext.l      d2
		divs.w     #$0003,d2
		move.w     d2,10(a4)
		move.w     d5,d0
		ext.l      d0
		move.l     d0,d3
		add.l      d3,d3
		add.l      d0,d3
		lsl.l      #3,d3
		andi.w     #$E7FF,8(a3,d3.l)
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d5
		add.l      d5,d5
		add.l      d1,d5
		lsl.l      #3,d5
		ori.w      #$1800,8(a3,d5.l)
		movea.l    a2,a0
		move.w     d4,d0
		jsr        set_menu
		move.w     d4,d0
		movea.l    a2,a0
		jsr        Awi_obredraw
open_menu_2:
		movem.l    (a7)+,d3-d5/a2-a4
		rts

pup_edit:
		movem.l    d3-d4/a2-a5,-(a7)
		lea.l      -16(a7),a7
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    20(a2),a3
		move.w     608(a0),d4
		movea.l    (a2),a4
		move.w     24(a4),d3
		moveq.l    #-1,d0
		add.w      d3,d0
		movea.l    a3,a1
		lea.l      (a7),a0
		jsr        Aob_offset
		moveq.l    #-1,d0
		add.w      d4,d0
		movea.l    a3,a1
		lea.l      8(a7),a0
		jsr        Aob_offset
		lea.l      8(a7),a1
		lea.l      (a7),a0
		jsr        intersect
		move.w     4(a7),d0
		beq.s      pup_edit_1
		movea.l    ACSblk,a0
		cmpi.w     #$0002,714(a0)
		bne.s      pup_edit_2
		movea.l    a3,a0
		move.w     d4,d0
		jsr        Aob_up
		cmp.w      d0,d3
		bne.s      pup_edit_2
		bsr        open_menu
		bra        pup_edit_3
pup_edit_2:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$0040,10(a3,d0.l)
		jsr        ed_edit
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$FFBF,10(a3,d0.l)
		bra        pup_edit_3
pup_edit_1:
		jsr        Adr_unselect
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$E7FF,8(a3,d0.l)
		movea.l    a2,a0
		move.w     d3,d0
		jsr        undraw
		moveq.l    #1,d4
		add.w      2(a3),d4
		bra.s      pup_edit_4
pup_edit_5:
		moveq.l    #1,d0
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		add.w      0(a3,d1.l),d0
		move.w     d0,d4
pup_edit_4:
		moveq.l    #1,d0
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		add.w      0(a3,d1.l),d0
		cmp.w      d0,d3
		bne.s      pup_edit_5
		clr.w      0(a3,d1.l)
		move.w     d4,4(a3)
		movea.l    4(a4),a0
		movea.l    4(a0),a5
		moveq.l    #-2,d4
		add.w      d3,d4
		ext.l      d4
		divs.w     #$0003,d4
		ext.l      d4
		move.l     d4,d0
		lsl.l      #3,d0
		sub.l      d4,d0
		lsl.l      #3,d0
		adda.l     d0,a5
		move.w     8(a5),d2
		move.w     d2,d4
		add.w      d4,d4
		add.w      d2,d4
		addq.w     #2,d4
		moveq.l    #-1,d1
		add.w      d3,d1
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		move.w     d1,2(a3,d0.l)
		move.w     d3,4(a3,d0.l)
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     d4,0(a3,d1.l)
		move.w     -16(a3,d0.l),d1
		and.w      #$FFFE,d1
		moveq.l    #-1,d0
		add.w      d4,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
		move.w     d4,d0
		movea.l    a3,a0
		jsr        Aob_up
		move.w     d0,d3
		move.w     d0,24(a4)
		tst.w      d3
		bmi.s      pup_edit_6
		moveq.l    #-2,d1
		add.w      d3,d1
		ext.l      d1
		divs.w     #$0003,d1
		move.w     d1,10(a4)
		bra.s      pup_edit_7
pup_edit_6:
		move.w     #$FFFF,10(a4)
pup_edit_7:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$1800,8(a3,d0.l)
pup_edit_3:
		lea.l      16(a7),a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

set_menu:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		movea.l    20(a2),a3
		movea.l    a3,a0
		jsr        Aob_up
		move.w     d0,d4
		subq.w     #1,d0
		blt        set_menu_1
		moveq.l    #-1,d1
		move.w     d4,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		move.w     d1,4(a3,d2.l)
		move.w     d1,2(a3,d2.l)
		ori.w      #$0001,-14(a3,d2.l)
		move.w     d3,d0
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		andi.w     #$FF7F,8(a3,d1.l)
		andi.w     #$FF7F,-16(a3,d1.l)
		movea.l    a3,a0
		move.w     d4,d0
		jsr        Aob_up
		move.w     d0,d4
		movea.l    a2,a0
		bsr.w      set_menu
		move.w     4(a3),d4
		move.w     42(a3),d0
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     d0,18(a3,d1.l)
		move.w     d0,-6(a3,d1.l)
		move.w     d4,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		move.w     16(a3,d0.l),d1
		add.w      20(a3,d0.l),d1
		movea.l    ACSblk,a0
		move.w     18(a0),d2
		add.w      d2,d2
		add.w      d2,d1
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		move.w     d1,16(a3,d0.l)
		move.w     d1,-8(a3,d0.l)
		clr.w      0(a3,d0.l)
		moveq.l    #-1,d1
		add.w      d3,d1
		move.w     d4,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		move.w     d1,0(a3,d2.l)
		move.w     d3,4(a3)
set_menu_1:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

	.data
subtree:
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
		dc.b $80
		dc.b $00
		dc.b $20
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
		dc.b $04
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
protosub:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l subtree
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
		dc.b 'SUBPROTO',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
	.even
