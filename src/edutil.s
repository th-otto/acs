set_flag:
		tst.w      d0
		beq.s      set_flag_1
		ori.w      #$0001,10(a0)
		rts
set_flag_1:
		andi.w     #$FFFE,10(a0)
		rts

mod_ref:
		movem.l    a2-a5,-(a7)
		movea.l    a0,a5
		movea.l    a1,a2
		movea.l    20(a7),a4
		movea.l    (a1),a3
		move.b     (a4),d1
		beq.s      mod_ref_1
		movea.l    a4,a1
		jsr        dup_ref
		move.l     a0,(a2)
		bra.s      mod_ref_2
mod_ref_1:
		clr.l      (a2)
mod_ref_2:
		move.l     a3,d0
		beq.s      mod_ref_3
		movea.l    a3,a1
		movea.l    a5,a0
		jsr        del_ref
mod_ref_3:
		movem.l    (a7)+,a2-a5
		rts

set_ref:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		movea.l    a1,a3
		move.l     a2,d0
		bne.s      set_ref_1
		clr.b      (a1)
		bra.s      set_ref_2
set_ref_1:
		lea.l      22(a2),a1
		movea.l    a3,a0
		jsr        strcpy
set_ref_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

set_val:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		movea.l    a1,a3
		move.l     a2,d0
		bne.s      set_val_1
		clr.b      (a1)
		bra.s      set_val_2
set_val_1:
		movea.l    4(a2),a1
		movea.l    a3,a0
		jsr        strcpy
set_val_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

A_rubberbox:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -72(a7),a7
		move.w     d0,d3
		move.w     d1,d4
		move.w     d2,70(a7)
		move.l     a0,66(a7)
		move.l     a1,62(a7)
		lea.l      16(a7),a4
		lea.l      ACSblk,a5
		lea.l      INFO_OB_WH,a0
		jsr        Aob_create
		movea.l    a0,a2
		move.l     a2,d0
		beq        A_rubberbox_1
		jsr        Aob_fix
		move.w     d3,d0
		sub.w      20(a2),d0
		move.w     d0,16(a2)
		move.w     d4,d1
		sub.w      22(a2),d1
		move.w     d1,18(a2)
		move.w     16(a2),d0
		bmi.s      A_rubberbox_2
		tst.w      d1
		bpl.s      A_rubberbox_3
A_rubberbox_2:
		movea.l    a2,a0
		jsr        Aob_delete
		suba.l     a2,a2
		bra.s      A_rubberbox_1
A_rubberbox_3:
		move.w     22(a2),d1
		move.w     20(a2),d0
		jsr        Abp_create
		move.l     a0,12(a7)
		beq.s      A_rubberbox_1
		move.w     16(a2),d0
		move.w     d0,(a4)
		moveq.l    #-1,d1
		add.w      20(a2),d1
		move.w     d1,12(a4)
		add.w      d1,d0
		move.w     d0,4(a4)
		move.w     18(a2),d1
		move.w     d1,2(a4)
		moveq.l    #-1,d0
		add.w      22(a2),d0
		move.w     d0,14(a4)
		add.w      d0,d1
		move.w     d1,6(a4)
		clr.w      d0
		move.w     d0,10(a4)
		move.w     d0,8(a4)
		jsr        Amo_hide
		move.l     12(a7),-(a7)
		movea.l    (a5),a1
		lea.l      618(a1),a1
		movea.l    a4,a0
		moveq.l    #3,d1
		movea.l    (a5),a3
		move.w     16(a3),d0
		jsr        vro_cpyfm
		addq.w     #4,a7
		jsr        Amo_show
A_rubberbox_1:
		move.w     imagesnap,d5
		asr.w      #1,d5
		tst.w      d5
		bne.s      A_rubberbox_4
		moveq.l    #1,d5
A_rubberbox_4:
		moveq.l    #-1,d0
		add.w      imagesnap,d0
		not.w      d0
		move.w     d0,48(a7)
		movea.l    (a5),a0
		movea.l    572(a0),a0
		lea.l      68(a0),a0
		jsr        Amo_new
		clr.w      d0
		move.w     d0,34(a7)
		move.w     d0,32(a7)
		movea.l    (a5),a0
		move.w     8(a0),d1
		add.w      12(a0),d1
		move.w     d1,36(a7)
		move.w     10(a0),d0
		add.w      14(a0),d0
		move.w     d0,38(a7)
		lea.l      32(a7),a0
		movea.l    (a5),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		move.w     d3,d0
		add.w      118(a7),d0
		subq.w     #1,d0
		move.w     d0,56(a7)
		move.w     d4,d1
		add.w      120(a7),d1
		subq.w     #1,d1
		move.w     d1,54(a7)
		move.w     d3,d2
		add.w      70(a7),d2
		subq.w     #1,d2
		move.w     d2,60(a7)
		move.w     d4,d0
		add.w      116(a7),d0
		subq.w     #1,d0
		move.w     d0,58(a7)
		lea.l      52(a7),a3
		move.l     _globl,-(a7)
		pea.l      54(a7)
		pea.l      (a3)
		lea.l      52(a7),a1
		lea.l      54(a7),a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
A_rubberbox_19:
		lea.l      44(a7),a6
		move.w     42(a7),d0
		sub.w      d3,d0
		add.w      d5,d0
		and.w      48(a7),d0
		add.w      d3,d0
		subq.w     #1,d0
		move.w     d0,42(a7)
		move.w     40(a7),d1
		sub.w      d4,d1
		add.w      d5,d1
		and.w      48(a7),d1
		add.w      d4,d1
		subq.w     #1,d1
		move.w     d1,40(a7)
		move.w     d0,d7
		move.w     d1,d6
		cmp.w      56(a7),d7
		ble.s      A_rubberbox_5
		move.w     56(a7),d7
A_rubberbox_5:
		cmp.w      54(a7),d6
		ble.s      A_rubberbox_6
		move.w     54(a7),d6
A_rubberbox_6:
		cmp.w      60(a7),d7
		bge.s      A_rubberbox_7
		move.w     60(a7),d7
A_rubberbox_7:
		cmp.w      58(a7),d6
		bge.s      A_rubberbox_8
		move.w     58(a7),d6
A_rubberbox_8:
		moveq.l    #1,d0
		and.w      (a3),d0
		beq.s      A_rubberbox_9
		moveq.l    #2,d1
		and.w      (a3),d1
		beq        A_rubberbox_10
A_rubberbox_9:
		lea.l      32(a7),a0
		clr.w      d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        vs_clip
		move.w     d7,d0
		sub.w      d3,d0
		addq.w     #1,d0
		movea.l    66(a7),a0
		move.w     d0,(a0)
		move.w     d6,d1
		sub.w      d4,d1
		addq.w     #1,d1
		movea.l    62(a7),a1
		move.w     d1,(a1)
		movea.l    (a5),a0
		movea.l    572(a0),a0
		lea.l      56(a0),a0
		jsr        Amo_new
		move.l     a2,d0
		beq        A_rubberbox_11
		move.l     12(a7),d1
		beq.s      A_rubberbox_12
		move.w     16(a2),d2
		move.w     d2,8(a4)
		moveq.l    #-1,d0
		add.w      20(a2),d0
		move.w     d0,4(a4)
		add.w      d0,d2
		move.w     d2,12(a4)
		move.w     18(a2),d0
		move.w     d0,10(a4)
		moveq.l    #-1,d2
		add.w      22(a2),d2
		move.w     d2,6(a4)
		add.w      d2,d0
		move.w     d0,14(a4)
		clr.w      d2
		move.w     d2,2(a4)
		move.w     d2,(a4)
		jsr        Amo_hide
		movea.l    (a5),a0
		pea.l      618(a0)
		movea.l    16(a7),a1
		movea.l    a4,a0
		moveq.l    #3,d1
		move.l     a1,-(a7)
		movea.l    (a5),a1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vro_cpyfm
		addq.w     #4,a7
		jsr        Amo_show
		movea.l    12(a7),a0
		jsr        Abp_delete
		bra.s      A_rubberbox_13
A_rubberbox_12:
		move.w     18(a2),d0
		add.w      22(a2),d0
		subq.w     #1,d0
		move.w     d0,-(a7)
		move.w     16(a2),d1
		add.w      20(a2),d1
		subq.w     #1,d1
		move.w     d1,-(a7)
		move.w     18(a2),-(a7)
		move.w     16(a2),-(a7)
		move.w     d0,-(a7)
		move.w     d1,-(a7)
		movea.l    _globl,a0
		move.w     18(a2),d2
		move.w     16(a2),d1
		moveq.l    #3,d0
		jsr        mt_form_dial
		lea.l      12(a7),a7
A_rubberbox_13:
		movea.l    a2,a0
		jsr        Aob_delete
A_rubberbox_11:
		jsr        Aev_release
		moveq.l    #2,d0
		and.w      (a3),d0
		beq.s      A_rubberbox_14
		clr.w      d0
		bra        A_rubberbox_15
A_rubberbox_14:
		moveq.l    #1,d0
		bra        A_rubberbox_15
A_rubberbox_10:
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		moveq.l    #3,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsl_color
		move.w     d4,d2
		move.w     d7,d1
		move.w     d3,d0
		jsr        dotted_xline
		move.w     d6,d2
		move.w     d7,d1
		move.w     d3,d0
		jsr        dotted_xline
		move.w     d3,d2
		move.w     d6,d1
		move.w     d4,d0
		jsr        dotted_yline
		move.w     d7,d2
		move.w     d6,d1
		move.w     d4,d0
		jsr        dotted_yline
		move.l     a2,d0
		beq        A_rubberbox_16
		move.w     d6,d1
		sub.w      d4,d1
		addq.w     #1,d1
		ext.l      d1
		movea.l    (a5),a0
		divs.w     20(a0),d1
		move.w     d1,-(a7)
		move.w     d7,d2
		sub.w      d3,d2
		addq.w     #1,d2
		ext.l      d2
		divs.w     18(a0),d2
		move.w     d2,-(a7)
		lea.l      x97ec6,a1
		lea.l      4(a7),a0
		jsr        sprintf
		addq.w     #4,a7
		lea.l      (a7),a1
		moveq.l    #1,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		move.w     d6,d0
		sub.w      d4,d0
		addq.w     #1,d0
		move.w     d0,-(a7)
		move.w     d7,d1
		sub.w      d3,d1
		addq.w     #1,d1
		move.w     d1,-(a7)
		lea.l      x97ec6,a1
		lea.l      4(a7),a0
		jsr        sprintf
		addq.w     #4,a7
		lea.l      (a7),a1
		moveq.l    #2,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		move.w     18(a2),d0
		add.w      22(a2),d0
		subq.w     #1,d0
		move.w     d0,-(a7)
		move.w     16(a2),d1
		add.w      20(a2),d1
		subq.w     #1,d1
		move.w     d1,-(a7)
		move.w     18(a2),-(a7)
		movea.l    _globl,a1
		move.w     16(a2),d2
		movea.l    a2,a0
		clr.w      d0
		moveq.l    #2,d1
		jsr        mt_objc_draw
		addq.w     #6,a7
A_rubberbox_16:
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
A_rubberbox_18:
		move.l     _globl,-(a7)
		pea.l      54(a7)
		pea.l      (a3)
		movea.l    a6,a1
		lea.l      58(a7),a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		moveq.l    #1,d0
		and.w      (a3),d0
		beq.s      A_rubberbox_17
		moveq.l    #2,d1
		and.w      (a3),d1
		bne.s      A_rubberbox_17
		move.w     46(a7),d2
		sub.w      42(a7),d2
		cmp.w      d2,d5
		blt.s      A_rubberbox_17
		movea.w    42(a7),a0
		suba.w     46(a7),a0
		cmp.w      a0,d5
		blt.s      A_rubberbox_17
		movea.w    (a6),a1
		suba.w     40(a7),a1
		cmp.w      a1,d5
		blt.s      A_rubberbox_17
		move.w     40(a7),d0
		sub.w      (a6),d0
		cmp.w      d0,d5
		bge.s      A_rubberbox_18
A_rubberbox_17:
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		moveq.l    #3,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsl_color
		move.w     d4,d2
		move.w     d7,d1
		move.w     d3,d0
		jsr        dotted_xline
		move.w     d6,d2
		move.w     d7,d1
		move.w     d3,d0
		jsr        dotted_xline
		move.w     d3,d2
		move.w     d6,d1
		move.w     d4,d0
		jsr        dotted_yline
		move.w     d7,d2
		move.w     d6,d1
		move.w     d4,d0
		jsr        dotted_yline
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
		move.w     46(a7),42(a7)
		move.w     (a6),40(a7)
		bra        A_rubberbox_19
A_rubberbox_15:
		lea.l      72(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

view_grow:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		moveq.l    #2,d0
		movea.l    ACSblk,a1
		movea.l    572(a1),a0
		and.w      14(a0),d0
		beq.s      view_grow_1
		move.w     42(a2),-(a7)
		move.w     40(a2),-(a7)
		move.w     38(a2),-(a7)
		move.w     36(a2),-(a7)
		clr.w      -(a7)
		clr.w      d2
		clr.w      d1
		clr.w      d0
		movea.l    _globl,a0
		jsr        mt_graf_growbox
		lea.l      10(a7),a7
view_grow_1:
		ori.w      #$0010,86(a2)
		lea.l      36(a2),a1
		movea.l    a2,a0
		movea.l    134(a2),a3
		jsr        (a3)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

view_shrink:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		moveq.l    #2,d0
		movea.l    ACSblk,a1
		movea.l    572(a1),a0
		and.w      14(a0),d0
		beq.s      view_shrink_1
		move.w     42(a2),-(a7)
		move.w     40(a2),-(a7)
		move.w     38(a2),-(a7)
		move.w     36(a2),-(a7)
		clr.w      -(a7)
		clr.w      d2
		clr.w      d1
		clr.w      d0
		movea.l    _globl,a0
		jsr        mt_graf_shrinkbox
		lea.l      10(a7),a7
view_shrink_1:
		ori.w      #$0010,86(a2)
		lea.l      36(a2),a1
		movea.l    a2,a0
		movea.l    134(a2),a3
		jsr        (a3)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

new_name:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		movea.l    a1,a3
		movea.l    90(a2),a1
		movea.l    8(a1),a0
		jsr        Ast_delete
		movea.l    78(a2),a0
		jsr        Ast_delete
		lea.l      22(a3),a0
		jsr        Ast_create
		movea.l    90(a2),a1
		move.l     a0,8(a1)
		lea.l      22(a3),a0
		jsr        Ast_create
		move.l     a0,78(a2)
		move.w     32(a2),d3
		tst.w      d3
		bmi.s      new_name_1
		clr.w      -(a7)
		clr.w      -(a7)
		move.l     a0,-(a7)
		moveq.l    #3,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
new_name_1:
		movem.l    (a7)+,d3/a2-a3
		rts

chk_new_label:
		lea.l      -128(a7),a7
		lea.l      (a7),a1
		moveq.l    #2,d0
		movea.l    ACSblk,a0
		movea.l    604(a0),a0
		jsr        Aob_gettext
		move.b     (a7),d0
		beq.s      chk_new_label_1
		movea.l    ACSblk,a0
		move.w     #$0001,616(a0)
chk_new_label_1:
		lea.l      128(a7),a7
		rts

newlabel:
		movem.l    a2-a3/a5,-(a7)
		lea.l      -128(a7),a7
		movea.l    a0,a5
		movea.l    a1,a3
		lea.l      WI_NEW_LABEL,a0
		movea.l    WI_NEW_LABEL+8,a1
		jsr        (a1)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      newlabel_1
		movea.l    74(a2),a0
		jsr        Ast_delete
		movea.l    144(a7),a0
		jsr        Ast_create
		move.l     a0,74(a2)
		lea.l      22(a3),a1
		moveq.l    #2,d0
		movea.l    20(a2),a0
		jsr        Aob_puttext
newlabel_2:
		movea.l    a2,a0
		jsr        Awi_dialog
		lea.l      (a7),a1
		moveq.l    #2,d0
		movea.l    20(a2),a0
		jsr        Aob_gettext
		move.b     (a7),d0
		beq.s      newlabel_2
		move.w     6(a5),d1
		and.w      #$4000,d1
		beq.s      newlabel_3
		lea.l      (a7),a0
		jsr        strupr
newlabel_3:
		lea.l      (a7),a1
		lea.l      22(a3),a0
		jsr        strcpy
		movea.l    a2,a0
		jsr        Awi_delete
newlabel_1:
		lea.l      128(a7),a7
		movem.l    (a7)+,a2-a3/a5
		rts

new2label:
		movem.l    d3/a2-a3/a5,-(a7)
		lea.l      -128(a7),a7
		movea.l    a0,a5
		movea.l    a1,a3
		lea.l      WI_NEW2_LABEL,a0
		movea.l    WI_NEW2_LABEL+8,a1
		jsr        (a1)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      new2label_1
		movea.l    74(a2),a0
		jsr        Ast_delete
		movea.l    148(a7),a0
		jsr        Ast_create
		move.l     a0,74(a2)
		lea.l      22(a3),a1
		moveq.l    #2,d0
		movea.l    20(a2),a0
		jsr        Aob_puttext
		movea.l    a2,a0
		jsr        Awi_dialog
		move.w     d0,d3
		lea.l      (a7),a1
		movea.l    20(a2),a0
		moveq.l    #2,d0
		jsr        Aob_gettext
		movea.l    a2,a0
		jsr        Awi_delete
		cmp.w      #$0003,d3
		bne.s      new2label_1
		move.b     (a7),d0
		beq.s      new2label_1
		move.w     6(a5),d1
		and.w      #$4000,d1
		beq.s      new2label_2
		lea.l      (a7),a0
		jsr        strupr
new2label_2:
		lea.l      (a7),a1
		lea.l      22(a3),a0
		jsr        strcpy
		moveq.l    #1,d0
		bra.s      new2label_3
new2label_1:
		clr.w      d0
new2label_3:
		lea.l      128(a7),a7
		movem.l    (a7)+,d3/a2-a3/a5
		rts

wicalc_pos:
		movem.l    d3-d7,-(a7)
		subq.w     #4,a7
		move.l     d0,d4
		move.l     d1,d3
		move.l     d2,(a7)
		move.w     28(a7),d7
		move.w     30(a7),d6
		tst.l      d1
		bne.s      wicalc_pos_1
		move.w     d4,d5
		bra.s      wicalc_pos_2
wicalc_pos_1:
		move.l     d4,d0
		move.l     (a7),d1
		jsr        _lmul
		move.l     d3,d1
		jsr        _ldiv
		move.l     d0,d5
wicalc_pos_2:
		cmp.w      d5,d7
		ble.s      wicalc_pos_3
		move.w     d7,d5
wicalc_pos_3:
		cmp.w      d5,d6
		bge.s      wicalc_pos_4
		move.w     d6,d5
wicalc_pos_4:
		move.w     d5,d0
		addq.w     #4,a7
		movem.l    (a7)+,d3-d7
		rts

wi_pos:
		movem.l    a2-a5,-(a7)
		movea.l    a0,a5
		movea.l    a1,a2
		movea.l    20(a7),a4
		move.w     4(a2),d0
		beq        wi_pos_1
		lea.l      ACSblk,a3
		movea.l    (a3),a0
		move.w     8(a0),d0
		add.w      12(a0),d0
		move.w     d0,-(a7)
		move.w     8(a0),-(a7)
		move.w     8(a0),d2
		ext.l      d2
		move.w     (a4),d1
		ext.l      d1
		move.w     (a2),d0
		ext.l      d0
		bsr.w      wicalc_pos
		addq.w     #4,a7
		move.w     d0,36(a5)
		movea.l    (a3),a0
		move.w     10(a0),d1
		add.w      14(a0),d1
		move.w     d1,-(a7)
		move.w     10(a0),-(a7)
		move.w     10(a0),d2
		ext.l      d2
		move.w     2(a4),d1
		ext.l      d1
		move.w     2(a2),d0
		ext.l      d0
		bsr        wicalc_pos
		addq.w     #4,a7
		move.w     d0,38(a5)
		move.w     34(a5),d1
		and.w      #$0E20,d1
		beq.s      wi_pos_2
		movea.l    (a3),a0
		move.w     12(a0),d2
		add.w      d2,d2
		move.w     d2,-(a7)
		move.w     4(a0),d0
		lsl.w      #2,d0
		move.w     d0,-(a7)
		move.w     12(a0),d2
		ext.l      d2
		move.w     4(a4),d1
		ext.l      d1
		move.w     4(a2),d0
		ext.l      d0
		bsr        wicalc_pos
		addq.w     #4,a7
		move.w     d0,40(a5)
		bra.s      wi_pos_3
wi_pos_2:
		movea.l    (a3),a0
		move.w     12(a0),40(a5)
wi_pos_3:
		move.w     34(a5),d0
		and.w      #$01E0,d0
		beq.s      wi_pos_4
		movea.l    (a3),a0
		move.w     14(a0),d1
		add.w      d1,d1
		move.w     d1,-(a7)
		move.w     6(a0),d2
		lsl.w      #2,d2
		move.w     d2,-(a7)
		move.w     14(a0),d2
		ext.l      d2
		move.w     6(a4),d1
		ext.l      d1
		move.w     6(a2),d0
		ext.l      d0
		bsr        wicalc_pos
		addq.w     #4,a7
		move.w     d0,42(a5)
		bra.s      wi_pos_1
wi_pos_4:
		movea.l    (a3),a0
		move.w     14(a0),42(a5)
wi_pos_1:
		movem.l    (a7)+,a2-a5
		rts

convert:
		movem.l    d3-d7/a2-a3/a5,-(a7)
		lea.l      -16(a7),a7
		movea.l    a0,a3
		movea.l    a1,a2
		movea.l    ACSblk,a0
		moveq.l    #1,d0
		movea.l    ACSblk,a1
		move.b     29(a1),d1
		lsl.w      d1,d0
		cmp.w      26(a0),d0
		beq        convert_1
		move.w     8(a3),d3
		muls.w     6(a3),d3
		ext.l      d3
		clr.w      d2
		move.w     d2,6(a7)
		move.w     d2,4(a7)
		move.w     d2,2(a7)
		move.w     d2,(a7)
		clr.w      d4
		bra        convert_2
convert_16:
		move.w     d4,14(a7)
		move.w     d4,10(a7)
		move.w     d4,d5
		muls.w     8(a3),d5
		ext.l      d5
		clr.w      d6
		bra        convert_3
convert_15:
		move.w     d6,d0
		asr.w      #4,d0
		ext.l      d0
		add.l      d5,d0
		move.l     d0,d1
		add.l      d1,d1
		movea.l    52(a7),a0
		adda.l     d1,a0
		movea.l    (a3),a5
		adda.l     d1,a5
		move.w     d6,12(a7)
		move.w     d6,8(a7)
		move.l     #$00008000,d0
		moveq.l    #15,d2
		and.b      d6,d2
		asr.l      d2,d0
		move.w     (a0),d1
		and.w      d0,d1
		beq        convert_4
		clr.w      d7
		move.w     (a5),d2
		and.w      d0,d2
		beq.s      convert_5
		addq.w     #1,d7
convert_5:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a5
		move.w     (a5),d2
		and.w      d0,d2
		beq.s      convert_6
		addq.w     #2,d7
convert_6:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a5
		move.w     (a5),d2
		and.w      d0,d2
		beq.s      convert_7
		addq.w     #4,d7
convert_7:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a5
		move.w     (a5),d2
		and.w      d0,d2
		beq.s      convert_8
		addq.w     #8,d7
convert_8:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a5
		move.w     (a5),d2
		and.w      d0,d2
		beq.s      convert_9
		add.w      #$0010,d7
convert_9:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a5
		move.w     (a5),d2
		and.w      d0,d2
		beq.s      convert_10
		add.w      #$0020,d7
convert_10:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a5
		move.w     (a5),d2
		and.w      d0,d2
		beq.s      convert_11
		add.w      #$0040,d7
convert_11:
		move.l     d3,d1
		add.l      d1,d1
		adda.l     d1,a5
		move.w     (a5),d2
		and.w      d0,d2
		beq.s      convert_12
		add.w      #$0080,d7
convert_12:
		movea.l    ACSblk,a0
		cmpi.w     #$0008,28(a0)
		bge.s      convert_13
		and.w      #$000F,d7
convert_13:
		cmp.w      #$0010,d7
		bge.s      convert_14
		move.w     d7,d0
		add.w      d0,d0
		lea.l      map,a0
		move.w     0(a0,d0.w),d7
		bra.s      convert_14
convert_4:
		moveq.l    #-1,d7
		movea.l    ACSblk,a0
		add.w      26(a0),d7
convert_14:
		move.w     d7,col
		move.w     d7,$000DA7EC
		pea.l      col
		move.l     a2,-(a7)
		lea.l      punkt,a1
		lea.l      8(a7),a0
		moveq.l    #1,d1
		movea.l    ACSblk,a5
		move.w     16(a5),d0
		jsr        vrt_cpyfm
		addq.w     #8,a7
		addq.w     #1,d6
convert_3:
		cmp.w      4(a2),d6
		blt        convert_15
		addq.w     #1,d4
convert_2:
		cmp.w      6(a2),d4
		blt        convert_16
		bra.s      convert_17
convert_1:
		movea.l    a2,a1
		movea.l    a3,a0
		movea.l    ACSblk,a5
		move.w     16(a5),d0
		jsr        vr_trnfm
convert_17:
		lea.l      16(a7),a7
		movem.l    (a7)+,d3-d7/a2-a3/a5
		rts

to_cicon:
		movem.l    d3-d6/a2-a4/a6,-(a7)
		lea.l      -48(a7),a7
		move.l     a0,44(a7)
		move.l     a1,40(a7)
		movea.l    84(a7),a2
		move.w     d0,d6
		moveq.l    #15,d3
		add.w      22(a2),d3
		and.w      #$FFF0,d3
		move.w     d3,d4
		muls.w     24(a2),d4
		asr.w      #3,d4
		ext.l      d4
		lea.l      ACSblk,a3
		movea.l    (a3),a0
		cmp.w      28(a0),d6
		ble.s      to_cicon_1
		lea.l      a_planemess,a0
		moveq.l    #1,d0
		jsr        Awi_alert
to_cicon_1:
		move.l     d4,d0
		movea.l    (a3),a0
		move.w     28(a0),d1
		ext.l      d1
		jsr        _lmul
		move.l     d0,d5
		addq.l     #6,d5
		move.l     d4,d0
		move.w     d6,d1
		ext.l      d1
		jsr        _lmul
		move.l     d0,d6
		lea.l      20(a7),a4
		clr.w      10(a4)
		move.w     #$0001,10(a7)
		move.w     d3,4(a7)
		move.w     d3,4(a4)
		move.w     24(a2),d0
		move.w     d0,6(a7)
		move.w     d0,6(a4)
		move.w     d3,d1
		asr.w      #4,d1
		move.w     d1,8(a7)
		move.w     d1,8(a4)
		movea.l    (a3),a0
		move.w     28(a0),d0
		move.w     d0,12(a7)
		move.w     d0,12(a4)
		clr.w      d1
		move.w     d1,18(a7)
		move.w     d1,16(a7)
		move.w     d1,14(a7)
		move.w     d1,18(a4)
		move.w     d1,16(a4)
		move.w     d1,14(a4)
		move.l     d5,d0
		jsr        Ax_malloc
		movea.l    a0,a6
		move.l     a6,d0
		beq.s      to_cicon_2
		move.l     a0,(a7)
		move.l     d5,d1
		clr.w      d0
		jsr        memset
		move.l     d6,d0
		movea.l    44(a7),a1
		addq.w     #6,a1
		movea.l    (a7),a0
		jsr        memcpy
		move.l     d5,d0
		jsr        Ax_malloc
		movea.l    a0,a6
		move.l     a6,d0
		bne.s      to_cicon_3
		movea.l    (a7),a0
		jsr        Ax_ifree
to_cicon_2:
		clr.l      34(a2)
		suba.l     a0,a0
		bra.s      to_cicon_4
to_cicon_3:
		lea.l      6(a6),a0
		move.l     a0,(a4)
		move.w     #$0001,(a6)
		movea.l    (a3),a1
		movea.l    572(a1),a2
		move.w     14(a2),d0
		and.w      #$0800,d0
		beq.s      to_cicon_5
		movea.l    (a4),a0
		movea.l    (a7),a1
		move.l     d6,d0
		jsr        memcpy
		bra.s      to_cicon_6
to_cicon_5:
		move.l     40(a7),-(a7)
		movea.l    a4,a1
		lea.l      4(a7),a0
		bsr        convert
		addq.w     #4,a7
to_cicon_6:
		movea.l    (a7),a0
		jsr        Ax_ifree
		movea.l    (a4),a0
to_cicon_4:
		lea.l      48(a7),a7
		movem.l    (a7)+,d3-d6/a2-a4/a6
		rts

	.data

hex:
		dc.b '0123456789ABCDEF',0
a_planemess:
		dc.b '[1][ |planes > nplanes!| ][   OK   ]',0
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
x97ec6:
		dc.b '%d*%d',0

	.bss
col: ds.l 1
