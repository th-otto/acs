		.include "country.inc"
		
		.text

		.globl find_entry
find_entry:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a1,a3
		move.l     14(a0),d3
		lsr.l      #2,d3
		movea.l    4(a0),a2
		bra.s      find_entry_1
find_entry_4:
		movea.l    (a2),a1
		lea.l      22(a1),a1
		movea.l    a3,a0
		jsr        strcmp
		tst.w      d0
		bne.s      find_entry_2
		movea.l    (a2),a0
		bra.s      find_entry_3
find_entry_2:
		addq.w     #4,a2
		subq.w     #1,d3
find_entry_1:
		tst.w      d3
		bgt.s      find_entry_4
		suba.l     a0,a0
find_entry_3:
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl add_entry
add_entry:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a1,a4
		moveq.l    #4,d0
		jsr        objextent
		tst.w      d0
		beq.s      add_entry_1
		moveq.l    #-1,d0
		bra.s      add_entry_2
add_entry_1:
		move.l     14(a2),d3
		lsr.l      #2,d3
		subq.w     #1,d3
		addq.l     #4,14(a2)
		movea.l    4(a2),a3
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		adda.l     d0,a3
		bra.s      add_entry_3
add_entry_5:
		move.l     (a3),4(a3)
		subq.w     #4,a3
		subq.w     #1,d3
add_entry_3:
		tst.w      d3
		bmi.s      add_entry_4
		movea.l    (a3),a1
		lea.l      22(a1),a1
		lea.l      22(a4),a0
		jsr        strcmp
		tst.w      d0
		bmi.s      add_entry_5
add_entry_4:
		move.l     a4,4(a3)
		move.l     18(a2),d0
		beq.s      add_entry_6
		movea.l    d0,a0
		ori.w      #$0020,86(a0)
add_entry_6:
		clr.w      d0
add_entry_2:
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl del_entry
del_entry:
		move.l     d3,-(a7)
		move.l     a2,-(a7)
		move.l     14(a0),d0
		lsr.l      #2,d0
		subq.w     #1,d0
		movea.l    4(a0),a2
		clr.w      d1
		bra.s      del_entry_1
del_entry_3:
		addq.w     #1,d1
del_entry_1:
		cmp.w      d1,d0
		blt.s      del_entry_2
		move.w     d1,d2
		ext.l      d2
		lsl.l      #2,d2
		cmpa.l     0(a2,d2.l),a1
		bne.s      del_entry_3
del_entry_2:
		cmp.w      d1,d0
		blt.s      del_entry_4
		bra.s      del_entry_5
del_entry_6:
		move.w     d1,d2
		ext.l      d2
		lsl.l      #2,d2
		move.w     d1,d3
		ext.l      d3
		lsl.l      #2,d3
		move.l     4(a2,d2.l),0(a2,d3.l)
		addq.w     #1,d1
del_entry_5:
		cmp.w      d1,d0
		bgt.s      del_entry_6
		subq.l     #4,14(a0)
		move.l     18(a0),d0
		beq.s      del_entry_4
		movea.l    d0,a1
		ori.w      #$0020,86(a1)
del_entry_4:
		movea.l    (a7)+,a2
		move.l     (a7)+,d3
		rts

delete:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a2
		movea.l    ACSblk,a1
		cmpa.l     576(a1),a0
		bne.s      delete_1
		movea.l    (a0),a3
		clr.w      584(a1)
		bra.s      delete_2
delete_3:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a2),a0
		lea.l      24(a0,d0.l),a0
		movea.l    12(a0),a4
		move.w     56(a4),d2
		and.w      #$0100,d2
		beq.s      delete_2
		movea.l    a2,a0
		move.w     d3,d0
		jsr        Adr_del
		andi.w     #$FEFF,56(a4)
		movea.l    a4,a1
		movea.l    (a3),a0
		movea.l    30(a3),a5
		jsr        (a5)
		ori.w      #$0020,86(a2)
delete_2:
		jsr        Adr_next
		move.w     d0,d3
		bgt.s      delete_3
delete_1:
		movem.l    (a7)+,d3/a2-a5
		rts

li_changename:
		movem.l    d3/a2-a4,-(a7)
		movea.l    ACSblk,a0
		clr.w      584(a0)
		jsr        Adr_next
		move.w     d0,d3
		ble        li_changename_1
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		movea.l    ACSblk,a0
		movea.l    600(a0),a1
		movea.l    20(a1),a0
		lea.l      24(a0,d1.l),a0
		movea.l    (a1),a3
		movea.l    12(a0),a2
		move.l     16(a3),-(a7)
		movea.l    (a3),a0
		movea.l    a2,a1
		jsr        new2label
		addq.w     #4,a7
		tst.w      d0
		beq.s      li_changename_1
		move.l     16(a3),-(a7)
		pea.l      22(a2)
		movea.l    a2,a1
		movea.l    (a3),a0
		jsr        objname
		addq.w     #8,a7
		jsr        Adr_unselect
		movea.l    a2,a1
		movea.l    4(a3),a0
		bsr        del_entry
		movea.l    a2,a1
		movea.l    4(a3),a0
		bsr        add_entry
		move.l     38(a3),d0
		beq.s      li_changename_2
		movea.l    a2,a1
		movea.l    (a3),a0
		movea.l    d0,a4
		moveq.l    #2,d0
		jsr        (a4)
li_changename_2:
		movea.l    18(a2),a3
		move.l     a3,d0
		beq.s      li_changename_1
		suba.l     a1,a1
		move.w     #$2710,d0
		movea.l    a3,a0
		movea.l    4(a3),a2
		jsr        (a2)
li_changename_1:
		movem.l    (a7)+,d3/a2-a4
		rts

li_setfree:
		movem.l    d3/a2-a4,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    (a2),a3
		clr.w      584(a0)
		bra.s      li_setfree_1
li_setfree_3:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a2),a4
		lea.l      24(a4,d0.l),a4
		movea.l    20(a2),a0
		andi.w     #$FFEF,10(a0,d0.l)
		movea.l    12(a4),a0
		move.w     56(a0),d2
		and.w      #$0100,d2
		bne.s      li_setfree_2
		movea.l    (a3),a1
		ori.w      #$0001,6(a1)
		addq.w     #1,54(a0)
		ori.w      #$0100,56(a0)
		ori.w      #$0020,86(a2)
li_setfree_2:
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Adr_del
li_setfree_1:
		jsr        Adr_next
		move.w     d0,d3
		bgt.s      li_setfree_3
		movem.l    (a7)+,d3/a2-a4
		rts

li_open:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        li_wopen
		rts

li_wopen:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    a0,a2
		movea.l    ACSblk,a1
		clr.w      584(a1)
		bra.s      li_wopen_1
li_wopen_3:
		move.w     d3,d0
		movea.l    a2,a0
		jsr        open_wi
		tst.w      d0
		beq.s      li_wopen_2
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Adr_del
li_wopen_1:
		jsr        Adr_next
		move.w     d0,d3
		bgt.s      li_wopen_3
li_wopen_2:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

li_info:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        li_winfo
		rts

li_winfo:
		movem.l    d3/a2-a4,-(a7)
		lea.l      -34(a7),a7
		move.l     a0,30(a7)
		movea.l    (a0),a3
		movea.l    ACSblk,a1
		move.w     582(a1),d0
		beq.s      li_winfo_1
		cmpa.l     576(a1),a0
		beq.s      li_winfo_2
li_winfo_1:
		lea.l      WI_INFO_LISTSELF,a0
		movea.l    WI_INFO_LISTSELF+8,a1
		jsr        (a1)
		movea.l    a0,a4
		move.l     a4,d0
		beq        li_winfo_3
		movea.l    (a3),a1
		movea.l    8(a1),a1
		movea.l    20(a4),a0
		moveq.l    #7,d0
		jsr        Aob_puttext
		movea.l    4(a3),a1
		lea.l      22(a1),a1
		moveq.l    #6,d0
		movea.l    20(a4),a0
		jsr        Aob_puttext
		movea.l    4(a3),a0
		move.l     14(a0),d0
		lsr.l      #2,d0
		move.l     d0,-(a7)
		lea.l      xc199a,a1
		lea.l      4(a7),a0
		jsr        sprintf
		addq.w     #4,a7
		lea.l      (a7),a1
		moveq.l    #5,d0
		movea.l    20(a4),a0
		jsr        Aob_puttext
		movea.l    a4,a0
		jsr        Awi_dialog
		movea.l    a4,a0
		jsr        Awi_delete
		bra        li_winfo_3
li_winfo_2:
		movea.l    ACSblk,a0
		clr.w      584(a0)
		bra        li_winfo_4
li_winfo_5:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    30(a7),a0
		movea.l    20(a0),a1
		lea.l      24(a1,d0.l),a0
		move.l     a0,26(a7)
		movea.l    12(a0),a2
		lea.l      WI_INFO_LIST,a0
		movea.l    WI_INFO_LIST+8,a1
		jsr        (a1)
		movea.l    a0,a4
		move.l     a4,d0
		beq        li_winfo_4
		movea.l    (a3),a1
		movea.l    8(a1),a1
		movea.l    20(a4),a0
		moveq.l    #8,d0
		jsr        Aob_puttext
		movea.l    4(a3),a1
		lea.l      22(a1),a1
		moveq.l    #9,d0
		movea.l    20(a4),a0
		jsr        Aob_puttext
		lea.l      22(a2),a1
		moveq.l    #10,d0
		movea.l    20(a4),a0
		jsr        Aob_puttext
		move.l     14(a2),-(a7)
		lea.l      xc199a,a1
		lea.l      4(a7),a0
		jsr        sprintf
		addq.w     #4,a7
		lea.l      (a7),a1
		moveq.l    #11,d0
		movea.l    20(a4),a0
		jsr        Aob_puttext
		move.w     54(a2),-(a7)
		lea.l      xc199e,a1
		lea.l      2(a7),a0
		jsr        sprintf
		addq.w     #2,a7
		lea.l      (a7),a1
		moveq.l    #13,d0
		movea.l    20(a4),a0
		jsr        Aob_puttext
		movea.l    a4,a0
		jsr        Awi_dialog
		movea.l    a4,a0
		jsr        Awi_delete
		move.w     d3,d0
		movea.l    30(a7),a0
		jsr        Adr_del
li_winfo_4:
		jsr        Adr_next
		move.w     d0,d3
		bgt        li_winfo_5
li_winfo_3:
		lea.l      34(a7),a7
		movem.l    (a7)+,d3/a2-a4
		rts

dragged:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        drag
		rts

generate:
		movem.l    a2-a5,-(a7)
		subq.w     #4,a7
		movea.l    a0,a3
		movea.l    a1,a2
		move.l     a2,d0
		beq.s      generate_1
		movea.l    4(a3),a4
		move.w     runasdemo,d1
		beq.s      generate_2
		move.l     14(a4),d2
		lsr.l      #2,d2
		subq.w     #2,d2
		blt.s      generate_2
		jsr        acs_register
		bra.s      generate_1
generate_2:
		movea.l    a2,a1
		movea.l    (a3),a0
		movea.l    26(a3),a5
		jsr        (a5)
		movea.l    a0,a5
		move.l     a5,d0
		beq.s      generate_3
		lea.l      22(a2),a1
		lea.l      22(a5),a0
		jsr        strcpy
		pea.l      (a7)
		movea.l    a5,a1
		movea.l    (a3),a0
		jsr        uniquename
		addq.w     #4,a7
		move.l     16(a3),-(a7)
		movea.l    a5,a1
		movea.l    (a3),a0
		jsr        new2label
		addq.w     #4,a7
		tst.w      d0
		bne.s      generate_4
		movea.l    a5,a1
		movea.l    (a3),a0
		movea.l    30(a3),a2
		jsr        (a2)
generate_1:
		suba.l     a0,a0
		bra.s      generate_5
generate_4:
		move.l     16(a3),-(a7)
		pea.l      22(a5)
		movea.l    a5,a1
		movea.l    (a3),a0
		jsr        objname
		addq.w     #8,a7
		movea.l    a5,a1
		movea.l    a4,a0
		bsr        add_entry
		move.l     38(a3),d0
		beq.s      generate_6
		movea.l    a5,a1
		movea.l    (a3),a0
		movea.l    d0,a2
		moveq.l    #1,d0
		jsr        (a2)
generate_6:
		ori.w      #$0100,56(a5)
generate_3:
		movea.l    a5,a0
generate_5:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a5
		rts

drag:
		movem.l    d3-d4/a2-a5,-(a7)
		subq.w     #4,a7
		move.l     a0,(a7)
		movea.l    (a0),a3
		lea.l      ACSblk,a0
		movea.l    (a0),a1
		movea.l    576(a1),a4
		clr.w      584(a1)
		movea.l    (a0),a1
		move.w     582(a1),d3
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a5
		movea.l    a5,a2
		move.l     a2,d0
		beq        drag_1
		bra.s      drag_2
drag_4:
		move.w     d4,d0
		and.w      #$1000,d0
		beq.s      drag_3
		move.w     d4,d2
		and.w      #$0FFF,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    24(a4),a0
		lea.l      24(a0,d1.l),a1
		move.l     a1,(a2)+
		bra.s      drag_2
drag_3:
		move.w     d4,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a4),a0
		lea.l      24(a0,d0.l),a1
		move.l     a1,(a2)+
drag_2:
		jsr        Adr_next
		move.w     d0,d4
		bgt.s      drag_4
		jsr        Adr_unselect
		clr.w      d4
		bra.s      drag_5
drag_8:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a5,d0.l),a2
		cmpi.w     #$0002,22(a2)
		bne.s      drag_6
		movea.l    (a7),a0
		jsr        li_newwi
		bra.s      drag_7
drag_6:
		move.w     22(a2),d0
		cmp.w      20(a3),d0
		bne.s      drag_7
		movea.l    12(a2),a1
		movea.l    a3,a0
		bsr        generate
drag_7:
		addq.w     #1,d4
drag_5:
		cmp.w      d4,d3
		bgt.s      drag_8
		movea.l    a5,a0
		jsr        Ax_free
drag_1:
		addq.w     #4,a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

li_newwi:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		movea.l    (a0),a3
		movea.l    22(a3),a1
		movea.l    a3,a0
		bsr        generate
		move.l     a0,4(a7)
		move.l     a0,d0
		beq.s      li_newwi_1
		ori.w      #$0004,84(a2)
		move.l     (a3),(a7)
		lea.l      (a7),a0
		movea.l    8(a3),a1
		movea.l    8(a1),a1
		jsr        (a1)
		andi.w     #$FFFB,84(a2)
li_newwi_1:
		addq.w     #8,a7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

li_new:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		bsr.w      li_newwi
		rts

		.globl li_init
li_init:
		movem.l    d3-d5/a2-a5,-(a7)
		movea.l    a0,a2
		movea.l    ACSblk,a1
		cmpa.l     576(a1),a0
		bne.s      li_init_1
		jsr        Adr_unselect
li_init_1:
		movea.l    (a2),a3
		movea.l    4(a3),a5
		clr.w      d3
		move.w     d3,d4
		movea.l    20(a2),a4
		move.l     a4,d0
		beq.s      li_init_2
		move.w     16(a4),d4
		move.w     18(a4),d3
		movea.l    a4,a0
		jsr        Ax_free
li_init_2:
		movea.l    a5,a0
		movea.l    34(a3),a1
		jsr        (a1)
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      li_init_3
		lea.l      LIST_NOT,a0
		jsr        Aob_create
		movea.l    a0,a4
		move.l     a0,20(a2)
		moveq.l    #-1,d0
		bra.s      li_init_4
li_init_3:
		lea.l      24(a4),a5
		move.l     #dragged,4(a5)
		move.w     2(a4),d5
		bra.s      li_init_5
li_init_6:
		move.w     d5,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      24(a4,d0.l),a5
		move.l     #open_it,(a5)
		move.w     0(a4,d0.l),d5
li_init_5:
		tst.w      d5
		bgt.s      li_init_6
		move.l     a4,20(a2)
		move.w     d4,16(a4)
		move.w     d3,18(a4)
		ori.w      #$0010,86(a2)
		clr.w      d0
li_init_4:
		movem.l    (a7)+,d3-d5/a2-a5
		rts

		.globl li_make
li_make:
		movem.l    a2-a5,-(a7)
		lea.l      -74(a7),a7
		movea.l    a0,a5
		movea.l    a0,a2
		movea.l    4(a2),a3
		movea.l    18(a3),a4
		move.l     a4,d0
		beq.s      li_make_1
		movea.l    a4,a0
		jsr        Awi_show
		bra        li_make_2
li_make_1:
		moveq.l    #42,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq        li_make_3
		moveq.l    #42,d0
		movea.l    a5,a1
		jsr        memcpy
		lea.l      WI_LIST,a5
		move.l     12(a2),74(a5)
		move.b     #$20,4(a7)
		movea.l    (a2),a0
		movea.l    8(a0),a1
		lea.l      5(a7),a0
		jsr        strcpy
		lea.l      4(a7),a0
		move.l     a0,78(a5)
		movea.l    8(a2),a1
		move.l     90(a1),90(a5)
		moveq.l    #92,d0
		movea.l    (a2),a0
		movea.l    8(a0),a0
		jsr        strrchr
		move.l     a0,(a7)
		bne.s      li_make_4
		movea.l    (a2),a1
		move.l     8(a1),(a7)
		bra.s      li_make_5
li_make_4:
		addq.l     #1,(a7)
li_make_5:
		movea.l    90(a5),a0
		move.l     (a7),8(a0)
		movea.l    a5,a0
		jsr        Awi_create
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      li_make_6
		movea.l    a2,a0
		jsr        Ax_free
		bra.s      li_make_3
li_make_6:
		movea.l    (a2),a0
		pea.l      360(a0)
		lea.l      58(a3),a1
		movea.l    a4,a0
		jsr        wi_pos
		addq.w     #4,a7
		move.l     a2,(a4)
		move.l     a4,18(a3)
		move.l     22(a2),d0
		bne.s      li_make_7
		movea.l    94(a4),a0
		ori.w      #$0008,394(a0)
li_make_7:
		movea.l    a4,a0
		movea.l    12(a4),a1
		jsr        (a1)
		tst.w      d0
		beq.s      li_make_2
		movea.l    a4,a0
		jsr        term
li_make_3:
		suba.l     a0,a0
		bra.s      li_make_8
li_make_2:
		movea.l    a4,a0
li_make_8:
		lea.l      74(a7),a7
		movem.l    (a7)+,a2-a5
		rts

open_it:
		movea.l    ACSblk,a0
		move.w     608(a0),d0
		movea.l    600(a0),a0
		jsr        open_wi
		rts

open_wi:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		movea.l    (a0),a3
		ori.w      #$0004,84(a2)
		move.l     (a3),(a7)
		movea.l    4(a3),a1
		movea.l    4(a1),a0
		moveq.l    #-2,d1
		add.w      d0,d1
		asr.w      #1,d1
		ext.l      d1
		lsl.l      #2,d1
		move.l     0(a0,d1.l),4(a7)
		lea.l      (a7),a0
		movea.l    8(a3),a1
		movea.l    8(a1),a1
		jsr        (a1)
		move.l     a0,d0
		beq.s      open_wi_1
		moveq.l    #1,d0
		bra.s      open_wi_2
open_wi_1:
		clr.w      d0
open_wi_2:
		andi.w     #$FFFB,84(a2)
		addq.w     #8,a7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl li_service
li_service:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		movea.l    a1,a5
		moveq.l    #2,d3
		cmp.w      #$000B,d0
		beq        li_service_1
		bgt.s      li_service_2
		subq.w     #2,d0
		beq.s      li_service_3
		subq.w     #3,d0
		beq.s      li_service_4
		subq.w     #1,d0
		beq.s      li_service_4
		subq.w     #4,d0
		beq.s      li_service_5
		bra        li_service_6
li_service_2:
		sub.w      #$000F,d0
		beq.s      li_service_7
		subq.w     #1,d0
		beq.s      li_service_8
		sub.w      #$03DD,d0
		beq        li_service_9
		bra        li_service_6
li_service_3:
		movea.l    a2,a0
		jsr        term
		bra        li_service_10
li_service_8:
		movea.l    a2,a0
		bsr        drag
		bra        li_service_10
li_service_5:
		movea.l    a2,a0
		bsr        li_wopen
		bra        li_service_10
li_service_7:
		movea.l    a2,a0
		bsr        li_winfo
		bra        li_service_10
li_service_4:
		movea.l    94(a2),a0
		ori.w      #$0008,634(a0)
		movea.l    ACSblk,a0
		cmpi.w     #$0001,582(a0)
		bne.s      li_service_11
		movea.l    94(a2),a1
		andi.w     #$FFF7,586(a1)
		movea.l    ACSblk,a0
		movea.l    596(a0),a1
		move.w     (a1),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a2),a3
		lea.l      24(a3,d0.l),a3
		movea.l    12(a3),a4
		move.w     56(a4),d2
		and.w      #$0100,d2
		beq.s      li_service_12
		movea.l    94(a2),a0
		andi.w     #$FFF7,634(a0)
		bra.s      li_service_12
li_service_11:
		movea.l    94(a2),a0
		ori.w      #$0008,586(a0)
li_service_12:
		movea.l    ACSblk,a0
		move.w     582(a0),d0
		ble.s      li_service_13
		movea.l    94(a2),a1
		andi.w     #$FFF7,442(a1)
		movea.l    94(a2),a0
		andi.w     #$FFF7,538(a0)
		bra        li_service_10
li_service_13:
		movea.l    94(a2),a0
		ori.w      #$0008,442(a0)
		movea.l    94(a2),a0
		ori.w      #$0008,538(a0)
		bra.w      li_service_10
li_service_1:
		movea.l    a2,a0
		bsr        delete
		bra.w      li_service_10
li_service_9:
		movea.l    (a2),a0
		cmpi.w     #$271C,20(a0)
		bne.s      li_service_10
		bra.s      li_service_14
li_service_16:
		moveq.l    #32,d0
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    20(a2),a0
		and.w      8(a0,d1.l),d0
		bne.s      li_service_10
		move.w     32(a0,d1.l),d0
		and.w      #$8000,d0
		beq.s      li_service_15
		movea.l    a0,a3
		lea.l      24(a3,d1.l),a3
		movea.l    12(a3),a4
		move.l     a4,d2
		beq.s      li_service_15
		move.l     4(a4),d0
		beq.s      li_service_15
		movea.l    a5,a1
		movea.l    d0,a0
		jsr        strstr
		move.l     a0,d0
		beq.s      li_service_15
		move.w     d3,d0
		movea.l    a2,a0
		bsr        open_wi
li_service_15:
		addq.w     #2,d3
li_service_14:
		movea.l    20(a2),a0
		cmp.w      4(a0),d3
		blt.s      li_service_16
		bra.s      li_service_10
li_service_6:
		movea.l    a5,a1
		move.w     d4,d0
		movea.l    a2,a0
		jsr        Awi_service
		bra.s      li_service_17
li_service_10:
		moveq.l    #1,d0
li_service_17:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

term:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		movea.l    (a0),a3
		movea.l    4(a3),a1
		clr.l      18(a1)
		move.w     86(a2),d0
		and.w      #$0800,d0
		beq.s      term_1
		lea.l      44(a2),a1
		movea.l    4(a3),a0
		lea.l      58(a0),a0
		moveq.l    #8,d0
		jsr        memcpy
		bra.s      term_2
term_1:
		moveq.l    #8,d0
		lea.l      36(a2),a1
		movea.l    4(a3),a0
		lea.l      58(a0),a0
		jsr        memcpy
term_2:
		movea.l    a3,a0
		jsr        Ax_free
		movea.l    20(a2),a0
		jsr        Ax_free
		clr.l      20(a2)
		movea.l    a2,a0
		jsr        Awi_delete
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl work_icon
work_icon:
		movem.l    d3-d4/a2-a5,-(a7)
		subq.w     #4,a7
		move.l     a1,(a7)
		movea.l    4(a0),a2
		move.w     d0,pra02+22
		move.l     14(a0),d3
		lsr.l      #2,d3
		moveq.l    #1,d1
		add.w      d3,d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		add.l      d0,d0
		add.l      d1,d0
		add.l      d0,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      work_icon_1
		suba.l     a0,a0
		bra        work_icon_2
work_icon_1:
		moveq.l    #48,d0
		lea.l      inner,a1
		movea.l    a3,a0
		jsr        memcpy
		movea.l    a3,a4
		tst.w      d3
		ble        work_icon_3
		move.w     d3,d1
		add.w      d1,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      48(a3,d0.l),a5
		moveq.l    #1,d4
		bra.s      work_icon_4
work_icon_6:
		addq.w     #1,d4
		lea.l      48(a4),a4
		moveq.l    #48,d0
		lea.l      proto,a1
		movea.l    a4,a0
		jsr        memcpy
		moveq.l    #38,d0
		movea.l    (a7),a1
		movea.l    a5,a0
		jsr        memcpy
		move.w     d4,d0
		add.w      d0,d0
		move.w     d0,(a4)
		move.l     a5,12(a4)
		move.w     d4,d1
		ext.l      d1
		lsl.l      #2,d1
		movea.l    -8(a2,d1.l),a0
		move.l     a0,36(a4)
		move.w     56(a0),d2
		and.w      #$0100,d2
		bne.s      work_icon_5
		ori.w      #$0010,10(a4)
work_icon_5:
		movea.l    a4,a0
		jsr        Aob_icon
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    -8(a2,d0.l),a0
		lea.l      22(a0),a0
		move.l     a0,8(a5)
		lea.l      38(a5),a5
		subq.w     #1,d3
work_icon_4:
		tst.w      d3
		bgt.s      work_icon_6
		move.w     #$0002,2(a3)
		moveq.l    #-1,d0
		add.w      d4,d0
		add.w      d0,d0
		move.w     d0,4(a3)
		clr.w      (a4)
work_icon_3:
		ori.w      #$0020,32(a4)
		movea.l    a3,a0
work_icon_2:
		addq.w     #4,a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

li_scope:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #4,a7
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		move.l     (a2),(a7)
		clr.w      584(a0)
		bra        li_scope_1
li_scope_7:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a2),a0
		lea.l      24(a0,d0.l),a0
		movea.l    12(a0),a4
		lea.l      WI_INFO_SCOPE,a0
		movea.l    WI_INFO_SCOPE+8,a1
		jsr        (a1)
		movea.l    a0,a3
		move.l     a3,d0
		beq.w      li_scope_1
		move.w     56(a4),d1
		and.w      #$0500,d1
		cmp.w      #$0100,d1
		bne.s      li_scope_2
		movea.l    20(a3),a1
		andi.w     #$FFFE,58(a1)
		movea.l    20(a3),a1
		ori.w      #$0001,106(a1)
		bra.s      li_scope_3
li_scope_2:
		movea.l    20(a3),a0
		ori.w      #$0001,58(a0)
		movea.l    20(a3),a0
		andi.w     #$FFFE,106(a0)
li_scope_3:
		movea.l    a3,a0
		jsr        Awi_dialog
		subq.w     #6,d0
		bne.s      li_scope_4
		moveq.l    #1,d0
		movea.l    20(a3),a0
		and.w      106(a0),d0
		beq.s      li_scope_5
		andi.w     #$FBFF,56(a4)
		bra.s      li_scope_6
li_scope_5:
		ori.w      #$0400,56(a4)
li_scope_6:
		movea.l    (a7),a0
		movea.l    (a0),a1
		ori.w      #$0001,6(a1)
li_scope_4:
		movea.l    a3,a0
		jsr        Awi_delete
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Adr_del
li_scope_1:
		jsr        Adr_next
		move.w     d0,d3
		bgt        li_scope_7
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a4
		rts

		.data

		.globl proto_alert
		.globl ABOUT
		.globl al_list
		.globl al_name
		.globl ic_list
		.globl ic_name
		.globl if_list
		.globl if_name
		.globl im_list
		.globl im_name
		.globl me_list
		.globl me_name
		.globl mf_list
		.globl mf_name
		.globl ob_list
		.globl ob_name
		.globl proto_string
		.globl proto_wihelpfile
		.globl proto_wihelptitle
		.globl proto_wiinfo
		.globl proto_winame
		.globl pu_list
		.globl pu_name
		.globl rf_list
		.globl rf_name
		.globl st_list
		.globl st_name
		.globl te_list
		.globl te_name
		.globl us_list
		.globl us_name
		.globl wi_list
		.globl wi_name

		.IFEQ COUNTRY-COUNTRY_DE
proto_alert:
		dc.b '[1][Alarmbox][ OK ]',0
ABOUT:
		dc.b '  šber mich ...',0
TEXT_002:
		dc.b $00
TEXT_003:
		dc.b 'OK',0
TEXT_006:
		dc.b '1234567890123456789012345678901',0
TEXT_008:
		dc.b 'Abbruch',0
TEXT_009:
		dc.b 'Global',0
TEXT_01:
		dc.b '  Info...   ^I',0
TEXT_010:
		dc.b 'Lokal',0
TEXT_02:
		dc.b '  Scope...  '
		dc.b $07,$43,0
TEXT_03:
		dc.b '  Neu...    ^N',0
TEXT_04:
		dc.b '  Frei      ^F',0
TEXT_05:
		dc.b '  ™ffnen    ^O',0
TEXT_059:
		dc.b '12345678901234567890',0
TEXT_069:
		dc.b 'Datei:',0
TEXT_07:
		dc.b ' Referenztypen-Kollision ',0
TEXT_070:
		dc.b 'Liste:',0
TEXT_071:
		dc.b 'Objekt:',0
TEXT_08:
		dc.b 'Neu:',0
TEXT_09:
		dc.b ' Information ',0
TEXT_10:
		dc.b 'Alt',0
TEXT_11:
		dc.b 'Neu',0
TEXT_12:
		dc.b 'Alt:',0
TEXT_13:
		dc.b ' Listen-Information ',0
TEXT_133:
		dc.b '123456',0
TEXT_14:
		dc.b ' Sichtbarkeit ',0
TEXT_15:
		dc.b '  Name...   '
		dc.b $07,$4e,0
TEXT_170:
		dc.b '  šber mich ...     ',0
TEXT_171:
		dc.b '--------------------',0
TEXT_176:
		dc.b ' Optionen ',0
TEXT_190:
		dc.b 'Gr”že:',0
TEXT_192:
		dc.b 'Nutzen:',0
TEXT_195:
		dc.b 'Objekte:',0
al_list:
		dc.b ' ALARMBOX LISTE ',0
al_name:
		dc.b 'ALARMBOX NAME',0
ic_list:
		dc.b ' IKONEN LISTE ',0
ic_name:
		dc.b 'IKONEN NAME',0
if_list:
		dc.b ' DATEN LISTE ',0
if_name:
		dc.b 'DATEN NAME',0
im_list:
		dc.b ' BILDER LISTE ',0
im_name:
		dc.b 'BILD NAME',0
		dc.b $00
		dc.b $00
		dc.b $00
me_list:
		dc.b ' MENš LISTE ',0
me_name:
		dc.b 'MENš NAME',0
mf_list:
		dc.b ' MAUSFORMEN LISTE ',0
mf_name:
		dc.b 'MAUSFORM NAME',0
ob_list:
		dc.b ' OBJEKTBŽUME LISTE ',0
ob_name:
		dc.b 'OBJEKTBAUM NAME',0
proto_string:
		dc.b 'Freier String',0
proto_wihelpfile:
		dc.b $00
proto_wihelptitle:
		dc.b $00
proto_wiinfo:
		dc.b $00
proto_winame:
		dc.b ' Hinweis ',0
pu_list:
		dc.b ' POPUP LISTE ',0
pu_name:
		dc.b 'POPUP NAME',0
rf_list:
		dc.b ' REFERENZEN LISTE ',0
rf_name:
		dc.b 'REFERENZ NAME',0
st_list:
		dc.b ' TEXTE LISTE ',0
st_name:
		dc.b 'TEXT NAME',0
te_list:
		dc.b ' TEDINFO LISTE ',0
te_name:
		dc.b 'TEDINFO NAME',0
us_list:
		dc.b ' USERBLK LISTE ',0
us_name:
		dc.b 'USERBLK NAME',0
wi_list:
		dc.b ' FENSTER LISTE ',0
wi_name:
		dc.b 'FENSTER NAME',0
		.ENDC

		.IFEQ COUNTRY-COUNTRY_US
proto_alert:
		dc.b '[1][Alarmbox][ OK ]',0
ABOUT:
		dc.b '  About me...',0
		dc.b $00
		dc.b $00
TEXT_002:
		dc.b $00
TEXT_003:
		dc.b $4f
		dc.w $4b00
TEXT_006:
		dc.b '1234567890123456789012345678901',0
TEXT_008:
		dc.b 'Cancel',0
TEXT_009:
		dc.b 'Global',0
TEXT_01:
		dc.b '  Info...   ^I',0
TEXT_010:
		dc.b 'Local',0
TEXT_02:
		dc.b '  Scope...  '
		dc.b $07
		dc.w $4300
TEXT_03:
		dc.b '  New...    ^N',0
TEXT_04:
		dc.b '  free      ^F',0
TEXT_05:
		dc.b '  Open      ^O',0
TEXT_059:
		dc.b '12345678901234567890',0
TEXT_069:
		dc.b 'File:',0
TEXT_07:
		dc.b ' Referencetype-Collision ',0
TEXT_070:
		dc.b 'List:',0
TEXT_071:
		dc.b 'Object:',0
TEXT_08:
		dc.b 'new:',0
TEXT_09:
		dc.b ' Information ',0
TEXT_10:
		dc.b 'Old',0
TEXT_11:
		dc.b 'New',0
TEXT_12:
		dc.b 'old:',0
TEXT_13:
		dc.b ' List-Information ',0
TEXT_133:
		dc.b '123456',0
TEXT_14:
		dc.b ' Scope ',0
TEXT_15:
		dc.b '  Name...   '
		dc.w $074e
		dc.b $00
TEXT_170:
		dc.b '  About me ...     ',0
TEXT_171:
		dc.b '--------------------',0
TEXT_176:
		dc.b ' Options ',0
TEXT_190:
		dc.b 'Size:',0
TEXT_192:
		dc.b 'Usage:',0
TEXT_195:
		dc.b 'Objects:',0
al_list:
		dc.b ' ALARMBOX LIST ',0
		dc.b $00
al_name:
		dc.b 'ALARMBOX NAME',0
ic_list:
		dc.b ' ICONS LIST ',0
		dc.b $00
		dc.b $00
ic_name:
		dc.b 'ICONS NAME',0
		dc.b $00
if_list:
		dc.b ' DATA LIST ',0
		dc.b $00
		dc.b $00
if_name:
		dc.b 'DATA NAME',0
		dc.b $00
im_list:
		dc.b ' PICTURE LIST ',0
im_name:
		dc.b 'PICTURE NAME',0
me_list:
		dc.b ' MENU LIST ',0
		dc.b $00
me_name:
		dc.b 'MENU NAME',0
mf_list:
		dc.b ' MOUSEFORMS LIST ',0
		dc.b $00
mf_name:
		dc.b 'MOUSEFORM NAME'
		.IFNE WITH_FIXES
		dc.b 0
		.ENDC
ob_list:
		dc.b ' OBJECTTREES LIST ',0
		dc.b $00
ob_name:
		dc.b 'OBJECTTREE NAME',0
proto_string:
		dc.b 'Free String',0
		dc.b $00
		dc.b $00
proto_wihelpfile:
		dc.b $00
proto_wihelptitle:
		dc.b $00
proto_wiinfo:
		dc.b $00
proto_winame:
		dc.b ' Window ',0
		dc.b $00
pu_list:
		dc.b ' POPUP LIST ',0
		dc.b $00
pu_name:
		dc.b 'POPUP NAME',0
rf_list:
		dc.b ' REFERENCES LIST ',0
		dc.b $00
rf_name:
		dc.b 'REFERENCE NAME'
		.IFNE WITH_FIXES
		dc.b 0
		.ENDC
st_list:
		dc.b ' TEXT LIST ',0
		dc.b $00
		dc.b $00
st_name:
		dc.b 'TEXT NAME',0
te_list:
		dc.b ' TEDINFO LIST ',0
		dc.b $00
te_name:
		dc.b 'TEDINFO NAME',0
us_list:
		dc.b ' USERBLK LIST ',0
		dc.b $00
us_name:
		dc.b 'USERBLK NAME',0
wi_list:
		dc.b ' WINDOW LIST ',0
		dc.b $00
		dc.b $00
wi_name:
		dc.b 'WINDOW NAME',0
		dc.b $00
		dc.b $00
		.ENDC

		.even
TEDI_002:
		dc.l TEXT_133
		dc.l TEXT_002
		dc.l TEXT_002
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
		dc.w $1101
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
TEDI_003:
		dc.l TEXT_006
		dc.l TEXT_002
		dc.l TEXT_002
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $00
		dc.w $1180
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
TEDI_006:
		dc.l TEXT_133
		dc.l TEXT_002
		dc.l TEXT_002
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
		dc.w $1180
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
TEDI_008:
		dc.l TEXT_006
		dc.l TEXT_002
		dc.l TEXT_002
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $02
		dc.w $1180
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
TEDI_009:
		dc.l TEXT_059
		dc.l TEXT_002
		dc.l TEXT_002
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $00
		dc.w $1180
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $01
TEDI_011:
		dc.l TEXT_006
		dc.l TEXT_002
		dc.l TEXT_002
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $00
		dc.w $1100
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
A_3DBUTTON01:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_11
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
A_3DBUTTON05:
		dc.l A_3Dbutton
		dc.w $29e2
		dc.w $01f8
		dc.l Auo_string
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
A_3DBUTTON06:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_008
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
A_3DBUTTON07:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_10
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
A_3DBUTTON09:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_003
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
A_CHECKBOX01:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.l Auo_string
		dc.l TEXT_009
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
A_CHECKBOX03:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.l Auo_string
		dc.l TEXT_010
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
MEN_LIST:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $19
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
		dc.b $5a
		dc.b $00
		dc.b $19
_01_MEN_LIST:
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $1100
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $5a
		dc.w $0201
_02_MEN_LIST:
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.w $0301
_03_MEN_LIST:
		dc.b $00
		dc.b $04
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_002
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $06
		dc.w $0301
_04_MEN_LIST:
		dc.b $00
		dc.b $02
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_176
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.w $0301
_05_MEN_LIST:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $19
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
		dc.w $0301
		dc.b $00
		dc.b $50
		dc.b $00
		dc.b $13
_06_MEN_LIST:
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $1100
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $08
_07_MEN_LIST:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $2000
		dc.l TEXT_170
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_08_MEN_LIST:
		dc.b $00
		dc.b $09
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $2000
		dc.l TEXT_171
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_09_MEN_LIST:
		dc.b $00
		dc.b $0a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $2000
		dc.l TEXT_002
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_10_MEN_LIST:
		dc.b $00
		dc.b $0b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $2000
		dc.l TEXT_002
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_11_MEN_LIST:
		dc.b $00
		dc.b $0c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $2000
		dc.l TEXT_002
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_12_MEN_LIST:
		dc.b $00
		dc.b $0d
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $2000
		dc.l TEXT_002
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_13_MEN_LIST:
		dc.b $00
		dc.b $0e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $2000
		dc.l TEXT_002
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_14_MEN_LIST:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $2000
		dc.l TEXT_002
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $12
		dc.b $00
		dc.b $01
_15_MEN_LIST:
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $1a
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
		dc.b $08
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $06
_16_MEN_LIST:
		dc.b $00
		dc.b $12
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $0100
		dc.l TEXT_03
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $01
_16aMEN_LIST:
		dc.l li_new
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $844e
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
_18_MEN_LIST:
		dc.b $00
		dc.b $14
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $0108
		dc.l TEXT_04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $01
_18aMEN_LIST:
		dc.l li_setfree
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8446
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
_20_MEN_LIST:
		dc.b $00
		dc.b $16
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $0100
		dc.l TEXT_01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $01
_20aMEN_LIST:
		dc.l li_info
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8449
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
_22_MEN_LIST:
		dc.b $00
		dc.b $18
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $0108
		dc.l TEXT_05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $01
_22aMEN_LIST:
		dc.l li_open
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $844f
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
_24_MEN_LIST:
		dc.b $00
		dc.b $1a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $0108
		dc.l TEXT_15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $01
_24aMEN_LIST:
		dc.l li_changename
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $884e
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
_26_MEN_LIST:
		dc.b $00
		dc.b $0f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.w $0108
		dc.l TEXT_02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $01
_26aMEN_LIST:
		dc.l li_scope
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8020
		dc.w $8843
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
		.globl DIFF_TYPE
DIFF_TYPE:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $1141
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $24
		dc.b $00
		dc.b $09
_01_DIFF_TYPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $24
		dc.b $00
		dc.b $09
_02_DIFF_TYPE:
		dc.b $00
		dc.b $03
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_12
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $01
_03_DIFF_TYPE:
		dc.b $00
		dc.b $04
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEDI_009
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_04_DIFF_TYPE:
		dc.b $00
		dc.b $05
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEDI_009
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_05_DIFF_TYPE:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_08
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $01
_06_DIFF_TYPE:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_06aDIFF_TYPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $884e
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
_08_DIFF_TYPE:
		dc.b $00
		dc.b $0a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON07
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_08aDIFF_TYPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $884c
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
_10_DIFF_TYPE:
		dc.b $00
		dc.b $0c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON06
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_10aDIFF_TYPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8841
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
_12_DIFF_TYPE:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $60
		dc.b $00
		dc.b $00
		dc.l TEDI_008
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
INFO_LIST:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $1141
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $28
		dc.b $00
		dc.b $09
_01_INFO_LIST:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $28
		dc.b $00
		dc.b $09
_02_INFO_LIST:
		dc.b $00
		dc.b $04
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON09
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_02aINFO_LIST:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $884f
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
_04_INFO_LIST:
		dc.b $00
		dc.b $05
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_069
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_05_INFO_LIST:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_070
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_06_INFO_LIST:
		dc.b $00
		dc.b $07
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_071
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_07_INFO_LIST:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_190
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_08_INFO_LIST:
		dc.b $00
		dc.b $09
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEDI_011
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $01
_09_INFO_LIST:
		dc.b $00
		dc.b $0a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEDI_011
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $01
_10_INFO_LIST:
		dc.b $00
		dc.b $0b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEDI_011
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $01
_11_INFO_LIST:
		dc.b $00
		dc.b $0c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEDI_002
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_12_INFO_LIST:
		dc.b $00
		dc.b $0d
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_192
		dc.b $00
		dc.b $1a
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_13_INFO_LIST:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $00
		dc.l TEDI_002
		dc.b $00
		dc.b $21
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
INFO_LISTSELF:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $1141
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $2a
		dc.b $00
		dc.b $08
_01_INFO_LISTSELF:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.w $0510
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $2a
		dc.b $00
		dc.b $08
_02_INFO_LISTSELF:
		dc.b $00
		dc.b $03
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_069
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_03_INFO_LISTSELF:
		dc.b $00
		dc.b $04
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_070
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_04_INFO_LISTSELF:
		dc.b $00
		dc.b $05
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_195
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_05_INFO_LISTSELF:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEDI_006
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_06_INFO_LISTSELF:
		dc.b $00
		dc.b $07
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEDI_003
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $01
_07_INFO_LISTSELF:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEDI_003
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $01
_08_INFO_LISTSELF:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON09
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_08aINFO_LISTSELF:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8020
		dc.w $884f
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
INFO_SCOPE:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $1141
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $06
_01_INFO_SCOPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $06
_02_INFO_SCOPE:
		dc.b $00
		dc.b $04
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX03
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_02aINFO_SCOPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $884c
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
_04_INFO_SCOPE:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX01
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_04aINFO_SCOPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8847
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
_06_INFO_SCOPE:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON09
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_06aINFO_SCOPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $884f
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
_08_INFO_SCOPE:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON06
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_08aINFO_SCOPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8020
		dc.w $8841
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
LIST_NOT:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $60
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $1142
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $0c
		.globl WI_DIFF_TYPE
WI_DIFF_TYPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Awi_service
		dc.l Awi_selfcreate
		dc.l Awi_open
		dc.l Awi_init
		dc.l DIFF_TYPE
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $200b
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $78
		dc.b $00
		dc.b $32
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
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $f8f8
		dc.l TEXT_07
		dc.l TEXT_002
		dc.w $2710
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Awi_keys
		dc.l Awi_obchange
		dc.l Awi_redraw
		dc.l Awi_topped
		dc.l Awi_closed
		dc.l Awi_fulled
		dc.l Awi_arrowed
		dc.l Awi_hslid
		dc.l Awi_vslid
		dc.l Awi_sized
		dc.l Awi_moved
		dc.l Awi_iconify
		dc.l Awi_uniconify
		dc.l Awi_gemscript
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		.globl WI_INFO_LIST
WI_INFO_LIST:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Awi_service
		dc.l Awi_selfcreate
		dc.l Awi_open
		dc.l Awi_init
		dc.l INFO_LIST
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $200b
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $78
		dc.b $00
		dc.b $32
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
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $f8f8
		dc.l TEXT_13
		dc.l TEXT_002
		dc.w $2710
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Awi_keys
		dc.l Awi_obchange
		dc.l Awi_redraw
		dc.l Awi_topped
		dc.l Awi_closed
		dc.l Awi_fulled
		dc.l Awi_arrowed
		dc.l Awi_hslid
		dc.l Awi_vslid
		dc.l Awi_sized
		dc.l Awi_moved
		dc.l Awi_iconify
		dc.l Awi_uniconify
		dc.l Awi_gemscript
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		.globl WI_INFO_LISTSELF
WI_INFO_LISTSELF:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Awi_service
		dc.l Awi_selfcreate
		dc.l Awi_open
		dc.l Awi_init
		dc.l INFO_LISTSELF
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $200b
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $78
		dc.b $00
		dc.b $32
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
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $f8f8
		dc.l TEXT_09
		dc.l TEXT_002
		dc.w $2710
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Awi_keys
		dc.l Awi_obchange
		dc.l Awi_redraw
		dc.l Awi_topped
		dc.l Awi_closed
		dc.l Awi_fulled
		dc.l Awi_arrowed
		dc.l Awi_hslid
		dc.l Awi_vslid
		dc.l Awi_sized
		dc.l Awi_moved
		dc.l Awi_iconify
		dc.l Awi_uniconify
		dc.l Awi_gemscript
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		.globl WI_INFO_SCOPE
WI_INFO_SCOPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Awi_service
		dc.l Awi_selfcreate
		dc.l Awi_open
		dc.l Awi_init
		dc.l INFO_SCOPE
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $200b
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $78
		dc.b $00
		dc.b $32
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
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $f8f8
		dc.l TEXT_14
		dc.l TEXT_002
		dc.w $2710
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Awi_keys
		dc.l Awi_obchange
		dc.l Awi_redraw
		dc.l Awi_topped
		dc.l Awi_closed
		dc.l Awi_fulled
		dc.l Awi_arrowed
		dc.l Awi_hslid
		dc.l Awi_vslid
		dc.l Awi_sized
		dc.l Awi_moved
		dc.l Awi_iconify
		dc.l Awi_uniconify
		dc.l Awi_gemscript
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		.globl WI_LIST
WI_LIST:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l li_service
		dc.l li_make
		dc.l Awi_open
		dc.l li_init
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
		dc.w $ffff
		dc.w $61ff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $22
		dc.b $00
		dc.b $0e
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
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $f8f8
		dc.l TEXT_002
		dc.l TEXT_002
		dc.w $2710
		dc.w $011b
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l MEN_LIST
		dc.l Awi_keys
		dc.l Awi_obchange
		dc.l Awi_redraw
		dc.l Awi_topped
		dc.l Awi_closed
		dc.l Awi_fulled
		dc.l Awi_arrowed
		dc.l Awi_hslid
		dc.l Awi_vslid
		dc.l Awi_sized
		dc.l Awi_moved
		dc.l Awi_iconify
		dc.l Awi_uniconify
		dc.l Awi_gemscript
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
dither:
		dc.l A_3Dbutton
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $78
		dc.l Auo_string
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
inner:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1800
		dc.b $00
		dc.b $00
		dc.l dither
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $64
		dc.b $00
		dc.b $64
pra00:
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
proto:
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1f
		dc.w $2005
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $48
		dc.b $00
		dc.b $28
pra02:
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
xc199a:
		dc.b '%li',0
xc199e:
		dc.w '%i',0
		.even

