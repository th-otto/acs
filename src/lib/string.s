
Ast_create:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Ast_create_1
		move.b     (a0),d1
		beq.s      Ast_create_1
		jsr        strlen
		move.l     d0,d3
		addq.l     #1,d3
		move.l     d3,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      Ast_create_2
		suba.l     a0,a0
		bra.s      Ast_create_3
Ast_create_2:
		move.l     d3,d0
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        memcpy
		movea.l    a3,a0
		bra.s      Ast_create_3
Ast_create_1:
		lea.l      null_string,a0
Ast_create_3:
		movem.l    (a7)+,d3/a2-a3
		rts

Ast_delete:
		cmpa.l     #null_string,a0
		beq.s      Ast_delete_1
		jsr        Ax_free
Ast_delete_1:
		rts

Ach_toupper:
		ext.w      d0
		jsr        nkc_toupper
		rts

Ach_tolower:
		ext.w      d0
		jsr        nkc_tolower
		rts

Ast_toupper:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Ast_toupper_1
		lea.l      null_string,a2
Ast_toupper_1:
		move.l     a2,d0
		beq.s      Ast_toupper_2
		movea.l    a2,a3
		bra.s      Ast_toupper_3
Ast_toupper_4:
		move.b     (a3),d0
		ext.w      d0
		jsr        nkc_toupper
		move.b     d0,(a3)
		addq.w     #1,a3
Ast_toupper_3:
		move.b     (a3),d0
		bne.s      Ast_toupper_4
Ast_toupper_2:
		movea.l    a2,a0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

Ast_tolower:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Ast_tolower_1
		lea.l      null_string,a2
Ast_tolower_1:
		move.l     a2,d0
		beq.s      Ast_tolower_2
		movea.l    a2,a3
		bra.s      Ast_tolower_3
Ast_tolower_4:
		move.b     (a3),d0
		ext.w      d0
		jsr        nkc_tolower
		move.b     d0,(a3)
		addq.w     #1,a3
Ast_tolower_3:
		move.b     (a3),d0
		bne.s      Ast_tolower_4
Ast_tolower_2:
		movea.l    a2,a0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

Ast_ltrim:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Ast_ltrim_1
		lea.l      null_string,a2
Ast_ltrim_1:
		movea.l    a2,a3
		bra.s      Ast_ltrim_2
Ast_ltrim_4:
		addq.w     #1,a3
Ast_ltrim_2:
		move.b     (a3),d0
		beq.s      Ast_ltrim_3
		jsr        Ach_isWhite
		tst.w      d0
		bne.s      Ast_ltrim_4
Ast_ltrim_3:
		move.b     (a3),d0
		beq.s      Ast_ltrim_5
		cmpa.l     a3,a2
		bcc.s      Ast_ltrim_5
		movea.l    a2,a0
		bra.s      Ast_ltrim_6
Ast_ltrim_7:
		move.b     (a3),(a0)
		addq.w     #1,a3
		addq.w     #1,a0
Ast_ltrim_6:
		move.b     (a3),d0
		bne.s      Ast_ltrim_7
		clr.b      (a0)
Ast_ltrim_5:
		movea.l    a2,a0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

Ast_rtrim:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Ast_rtrim_1
		lea.l      null_string,a2
Ast_rtrim_1:
		movea.l    a2,a3
		bra.s      Ast_rtrim_2
Ast_rtrim_3:
		addq.w     #1,a3
Ast_rtrim_2:
		move.b     (a3),d0
		bne.s      Ast_rtrim_3
Ast_rtrim_5:
		subq.w     #1,a3
		cmpa.l     a3,a2
		bcc.s      Ast_rtrim_4
		move.b     (a3),d0
		jsr        Ach_isWhite
		tst.w      d0
		bne.s      Ast_rtrim_5
Ast_rtrim_4:
		cmpa.l     a3,a2
		bhi.s      Ast_rtrim_6
		move.b     (a3),d0
		beq.s      Ast_rtrim_7
		jsr        Ach_isWhite
		tst.w      d0
		bne.s      Ast_rtrim_7
		addq.w     #1,a3
		clr.b      (a3)
		bra.s      Ast_rtrim_8
Ast_rtrim_7:
		clr.b      (a3)
		bra.s      Ast_rtrim_8
Ast_rtrim_6:
		clr.b      (a2)
Ast_rtrim_8:
		movea.l    a2,a0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

Ast_alltrim:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Ast_alltrim_1
		bsr        Ast_ltrim
		bsr.w      Ast_rtrim
		bra.s      Ast_alltrim_2
Ast_alltrim_1:
		lea.l      null_string,a0
Ast_alltrim_2:
		movea.l    (a7)+,a2
		rts

Ast_cmp:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      null_string,a2
		move.l     a0,d0
		bne.s      Ast_cmp_1
		movea.l    a2,a0
Ast_cmp_1:
		move.l     a1,d0
		bne.s      Ast_cmp_2
		movea.l    a2,a1
Ast_cmp_2:
		movea.l    a0,a3
		movea.l    a1,a2
		bra.s      Ast_cmp_3
Ast_cmp_9:
		move.b     (a3),d0
		cmp.b      (a2),d0
		beq.s      Ast_cmp_4
		cmp.b      (a2),d0
		ble.s      Ast_cmp_5
		moveq.l    #1,d0
		bra.s      Ast_cmp_6
Ast_cmp_5:
		moveq.l    #-1,d0
Ast_cmp_6:
		bra.s      Ast_cmp_7
Ast_cmp_4:
		addq.w     #1,a3
		addq.w     #1,a2
Ast_cmp_3:
		move.b     (a3),d0
		beq.s      Ast_cmp_8
		move.b     (a2),d1
		bne.s      Ast_cmp_9
Ast_cmp_8:
		move.b     (a3),d0
		cmp.b      (a2),d0
		ble.s      Ast_cmp_10
		moveq.l    #1,d0
		bra.s      Ast_cmp_7
Ast_cmp_10:
		move.b     (a3),d0
		cmp.b      (a2),d0
		bge.s      Ast_cmp_11
		moveq.l    #-1,d0
		bra.s      Ast_cmp_7
Ast_cmp_11:
		clr.w      d0
Ast_cmp_7:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

Ast_icmp:
		movem.l    d3/a2-a4,-(a7)
		lea.l      null_string,a2
		move.l     a0,d0
		bne.s      Ast_icmp_1
		movea.l    a2,a0
Ast_icmp_1:
		move.l     a1,d0
		bne.s      Ast_icmp_2
		movea.l    a2,a1
Ast_icmp_2:
		movea.l    a0,a4
		movea.l    a1,a3
		bra.s      Ast_icmp_3
Ast_icmp_9:
		move.b     (a4),d0
		ext.w      d0
		jsr        nkc_toupper
		move.w     d0,d3
		move.b     (a3),d0
		ext.w      d0
		jsr        nkc_toupper
		cmp.b      d3,d0
		beq.s      Ast_icmp_4
		cmp.b      d3,d0
		bge.s      Ast_icmp_5
		moveq.l    #1,d1
		bra.s      Ast_icmp_6
Ast_icmp_5:
		moveq.l    #-1,d1
Ast_icmp_6:
		move.w     d1,d0
		bra.s      Ast_icmp_7
Ast_icmp_4:
		addq.w     #1,a4
		addq.w     #1,a3
Ast_icmp_3:
		move.b     (a4),d0
		beq.s      Ast_icmp_8
		move.b     (a3),d1
		bne.s      Ast_icmp_9
Ast_icmp_8:
		move.b     (a4),d0
		cmp.b      (a3),d0
		ble.s      Ast_icmp_10
		moveq.l    #1,d0
		bra.s      Ast_icmp_7
Ast_icmp_10:
		move.b     (a4),d0
		cmp.b      (a3),d0
		bge.s      Ast_icmp_11
		moveq.l    #-1,d0
		bra.s      Ast_icmp_7
Ast_icmp_11:
		clr.w      d0
Ast_icmp_7:
		movem.l    (a7)+,d3/a2-a4
		rts

Ast_ncmp:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      null_string,a2
		move.l     a0,d1
		bne.s      Ast_ncmp_1
		movea.l    a2,a0
Ast_ncmp_1:
		move.l     a1,d1
		bne.s      Ast_ncmp_2
		movea.l    a2,a1
Ast_ncmp_2:
		clr.w      d1
		movea.l    a0,a3
		movea.l    a1,a2
		bra.s      Ast_ncmp_3
Ast_ncmp_9:
		move.b     (a3),d2
		cmp.b      (a2),d2
		beq.s      Ast_ncmp_4
		cmp.b      (a2),d2
		ble.s      Ast_ncmp_5
		moveq.l    #1,d0
		bra.s      Ast_ncmp_6
Ast_ncmp_5:
		moveq.l    #-1,d0
Ast_ncmp_6:
		bra.s      Ast_ncmp_7
Ast_ncmp_4:
		addq.w     #1,a3
		addq.w     #1,a2
		addq.w     #1,d1
Ast_ncmp_3:
		move.b     (a3),d2
		beq.s      Ast_ncmp_8
		move.b     (a2),d2
		beq.s      Ast_ncmp_8
		cmp.w      d1,d0
		bgt.s      Ast_ncmp_9
Ast_ncmp_8:
		cmp.w      d1,d0
		bgt.s      Ast_ncmp_10
		clr.w      d2
		bra.s      Ast_ncmp_11
Ast_ncmp_10:
		move.b     (a3),d2
		cmp.b      (a2),d2
		ble.s      Ast_ncmp_12
		moveq.l    #1,d2
		bra.s      Ast_ncmp_11
Ast_ncmp_12:
		move.b     (a3),d2
		cmp.b      (a2),d2
		bge.s      Ast_ncmp_13
		moveq.l    #-1,d2
		bra.s      Ast_ncmp_11
Ast_ncmp_13:
		clr.w      d2
Ast_ncmp_11:
		move.w     d2,d0
Ast_ncmp_7:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

Ast_incmp:
		movem.l    d3-d5/a2-a4,-(a7)
		move.w     d0,d5
		lea.l      null_string,a2
		move.l     a0,d0
		bne.s      Ast_incmp_1
		movea.l    a2,a0
Ast_incmp_1:
		move.l     a1,d0
		bne.s      Ast_incmp_2
		movea.l    a2,a1
Ast_incmp_2:
		clr.w      d3
		movea.l    a0,a4
		movea.l    a1,a3
		bra.s      Ast_incmp_3
Ast_incmp_9:
		move.b     (a4),d0
		ext.w      d0
		jsr        nkc_toupper
		move.w     d0,d4
		move.b     (a3),d0
		ext.w      d0
		jsr        nkc_toupper
		cmp.b      d4,d0
		beq.s      Ast_incmp_4
		cmp.b      d4,d0
		bge.s      Ast_incmp_5
		moveq.l    #1,d1
		bra.s      Ast_incmp_6
Ast_incmp_5:
		moveq.l    #-1,d1
Ast_incmp_6:
		move.w     d1,d0
		bra.s      Ast_incmp_7
Ast_incmp_4:
		addq.w     #1,a4
		addq.w     #1,a3
		addq.w     #1,d3
Ast_incmp_3:
		move.b     (a4),d0
		beq.s      Ast_incmp_8
		move.b     (a3),d1
		beq.s      Ast_incmp_8
		cmp.w      d3,d5
		bgt.s      Ast_incmp_9
Ast_incmp_8:
		cmp.w      d3,d5
		bgt.s      Ast_incmp_10
		clr.w      d0
		bra.s      Ast_incmp_7
Ast_incmp_10:
		move.b     (a4),d0
		cmp.b      (a3),d0
		ble.s      Ast_incmp_11
		moveq.l    #1,d0
		bra.s      Ast_incmp_7
Ast_incmp_11:
		move.b     (a4),d0
		cmp.b      (a3),d0
		bge.s      Ast_incmp_12
		moveq.l    #-1,d0
		bra.s      Ast_incmp_7
Ast_incmp_12:
		clr.w      d0
Ast_incmp_7:
		movem.l    (a7)+,d3-d5/a2-a4
		rts

Ast_istr:
		movem.l    d3-d6/a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a1,a3
		lea.l      null_string,a0
		move.l     a2,d0
		bne.s      Ast_istr_1
		movea.l    a0,a2
Ast_istr_1:
		move.l     a3,d0
		bne.s      Ast_istr_2
		movea.l    a0,a3
Ast_istr_2:
		movea.l    a3,a0
		jsr        strlen
		move.l     d0,d3
		movea.l    a2,a0
		jsr        strlen
		move.l     d0,d4
		movea.l    a3,a0
		jsr        strlen
		sub.w      d0,d4
		addq.w     #1,d4
		movea.l    a2,a4
		clr.w      d6
		move.w     d6,d5
		bra.s      Ast_istr_3
Ast_istr_7:
		move.w     d3,d0
		movea.l    a3,a1
		movea.l    a4,a0
		bsr        Ast_incmp
		tst.w      d0
		bne.s      Ast_istr_4
		moveq.l    #1,d6
		bra.s      Ast_istr_5
Ast_istr_4:
		clr.w      d6
Ast_istr_5:
		addq.w     #1,a4
		addq.w     #1,d5
Ast_istr_3:
		tst.w      d6
		bne.s      Ast_istr_6
		cmp.w      d5,d4
		ble.s      Ast_istr_6
		move.b     (a4),d0
		bne.s      Ast_istr_7
Ast_istr_6:
		tst.w      d6
		beq.s      Ast_istr_8
		movea.l    a4,a0
		bra.s      Ast_istr_9
Ast_istr_8:
		suba.l     a0,a0
Ast_istr_9:
		movem.l    (a7)+,d3-d6/a2-a4
		rts

Ach_isWhite:
		tst.b      d0
		beq.s      Ach_isWhite_1
		ext.w      d0
		lea.l      xd3666,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ach_isWhite_1
		moveq.l    #1,d0
		rts
Ach_isWhite_1:
		clr.w      d0
		rts

Ast_isEmpty:
		move.l     a2,-(a7)
		movea.l    a0,a2
		bra.s      Ast_isEmpty_1
Ast_isEmpty_3:
		addq.w     #1,a2
Ast_isEmpty_1:
		move.l     a2,d0
		beq.s      Ast_isEmpty_2
		move.b     (a2),d1
		beq.s      Ast_isEmpty_2
		move.b     d1,d0
		bsr.w      Ach_isWhite
		tst.w      d0
		bne.s      Ast_isEmpty_3
Ast_isEmpty_2:
		move.l     a2,d0
		beq.s      Ast_isEmpty_4
		move.b     (a2),d1
		beq.s      Ast_isEmpty_4
		move.b     d1,d0
		bsr.w      Ach_isWhite
		tst.w      d0
		beq.s      Ast_isEmpty_5
Ast_isEmpty_4:
		moveq.l    #1,d0
		bra.s      Ast_isEmpty_6
Ast_isEmpty_5:
		clr.w      d0
Ast_isEmpty_6:
		movea.l    (a7)+,a2
		rts

Ast_add:
		movem.l    d3-d6/a2-a5,-(a7)
		move.w     d0,d6
		movea.l    a0,a3
		suba.l     a2,a2
		moveq.l    #-1,d3
		move.l     a3,d1
		bne.s      Ast_add_1
		lea.l      null_string,a0
		bra.w      Ast_add_2
Ast_add_1:
		lea.l      36(a7),a4
		clr.b      (a3)
		clr.w      d4
		bra.s      Ast_add_3
Ast_add_7:
		movea.l    (a4)+,a5
		move.l     a5,d0
		beq.s      Ast_add_4
		move.b     (a5),d1
		beq.s      Ast_add_4
		movea.l    a5,a0
		jsr        strlen
		move.l     d0,d5
		cmp.l      d5,d3
		bge.s      Ast_add_5
		move.l     a2,d0
		beq.s      Ast_add_6
		movea.l    a2,a0
		jsr        Ax_free
Ast_add_6:
		moveq.l    #1,d0
		add.l      d5,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     d5,d3
		move.l     a2,d0
		bne.s      Ast_add_5
		movea.l    a3,a0
		bra.s      Ast_add_2
Ast_add_5:
		movea.l    a5,a1
		movea.l    a2,a0
		jsr        strcpy
		movea.l    a2,a0
		bsr        Ast_alltrim
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        strcat
Ast_add_4:
		addq.w     #1,d4
Ast_add_3:
		cmp.w      d4,d6
		bgt.s      Ast_add_7
		move.l     a2,d0
		beq.s      Ast_add_8
		movea.l    a2,a0
		jsr        Ax_free
Ast_add_8:
		movea.l    a3,a0
		bsr        Ast_alltrim
Ast_add_2:
		movem.l    (a7)+,d3-d6/a2-a5
		rts

Ast_adl:
		movem.l    d3-d4/a2,-(a7)
		movea.l    a0,a2
		move.l     d0,d4
		jsr        strlen
		move.l     d0,d3
		move.l     a2,d0
		bne.s      Ast_adl_1
		suba.l     a0,a0
		bra.s      Ast_adl_2
Ast_adl_1:
		cmp.l      d3,d4
		ble.s      Ast_adl_3
		move.l     d4,d1
		sub.l      d3,d1
		moveq.l    #32,d0
		lea.l      0(a2,d3.l),a0
		jsr        memset
Ast_adl_3:
		clr.b      0(a2,d4.l)
		movea.l    a2,a0
Ast_adl_2:
		movem.l    (a7)+,d3-d4/a2
		rts

Ast_adr:
		movem.l    d3-d4/a2,-(a7)
		movea.l    a0,a2
		move.l     d0,d4
		jsr        strlen
		move.l     d0,d3
		move.l     a2,d0
		bne.s      Ast_adr_1
		suba.l     a0,a0
		bra.s      Ast_adr_2
Ast_adr_1:
		cmp.l      d3,d4
		ble.s      Ast_adr_3
		move.l     d3,d0
		movea.l    a2,a1
		move.l     d4,d1
		sub.l      d3,d1
		lea.l      0(a2,d1.l),a0
		jsr        memcpy
		move.l     d4,d1
		sub.l      d3,d1
		moveq.l    #32,d0
		movea.l    a2,a0
		jsr        memset
Ast_adr_3:
		clr.b      0(a2,d4.l)
		movea.l    a2,a0
Ast_adr_2:
		movem.l    (a7)+,d3-d4/a2
		rts

Ast_adc:
		movem.l    d3-d4/a2,-(a7)
		movea.l    a0,a2
		move.l     d0,d3
		move.l     a2,d1
		bne.s      Ast_adc_1
		suba.l     a0,a0
		bra.s      Ast_adc_2
Ast_adc_1:
		movea.l    a2,a0
		jsr        strlen
		move.l     d3,d4
		sub.l      d0,d4
		tst.l      d4
		ble.s      Ast_adc_3
		move.l     d4,d0
		asr.l      #1,d0
		movea.l    a2,a0
		bsr        Ast_adl
		move.l     d4,d0
		asr.l      #1,d0
		moveq.l    #1,d1
		and.l      d4,d1
		add.l      d1,d0
		movea.l    a2,a0
		bsr.w      Ast_adr
Ast_adc_3:
		clr.b      0(a2,d3.l)
		movea.l    a2,a0
Ast_adc_2:
		movem.l    (a7)+,d3-d4/a2
		rts

Ast_filter:
		movem.l    a2-a6,-(a7)
		movea.l    a0,a2
		movea.l    a1,a3
		movea.l    24(a7),a4
		move.l     a2,d0
		beq.s      Ast_filter_1
		move.l     a3,d1
		bne.s      Ast_filter_2
		move.l     a4,d2
		bne.s      Ast_filter_2
Ast_filter_1:
		suba.l     a0,a0
		bra.s      Ast_filter_3
Ast_filter_2:
		movea.l    a2,a5
		movea.l    a5,a6
		bra.s      Ast_filter_4
Ast_filter_6:
		addq.w     #1,a6
Ast_filter_11:
		move.l     a3,d0
		beq.s      Ast_filter_5
		move.b     (a6),d1
		beq.s      Ast_filter_5
		move.b     d1,d0
		ext.w      d0
		movea.l    a3,a0
		jsr        strchr
		move.l     a0,d0
		bne.s      Ast_filter_6
		bra.s      Ast_filter_5
Ast_filter_8:
		addq.w     #1,a6
Ast_filter_5:
		move.l     a4,d0
		beq.s      Ast_filter_7
		move.b     (a6),d1
		beq.s      Ast_filter_7
		move.b     d1,d0
		ext.w      d0
		movea.l    a4,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ast_filter_8
Ast_filter_7:
		cmpa.l     a6,a5
		beq.s      Ast_filter_9
		move.b     (a6),(a5)
Ast_filter_9:
		addq.w     #1,a6
		addq.w     #1,a5
Ast_filter_4:
		move.b     (a6),d0
		beq.s      Ast_filter_10
		move.b     (a5),d1
		bne.s      Ast_filter_11
Ast_filter_10:
		clr.b      (a5)
		movea.l    a2,a0
Ast_filter_3:
		movem.l    (a7)+,a2-a6
		rts

Ast_count:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a1,a3
		move.l     a0,d0
		bne.s      Ast_count_1
		lea.l      null_string,a0
Ast_count_1:
		moveq.l    #0,d3
		movea.l    a0,a2
		bra.s      Ast_count_2
Ast_count_4:
		move.b     (a2),d0
		ext.w      d0
		movea.l    a3,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ast_count_3
		addq.l     #1,d3
Ast_count_3:
		addq.w     #1,a2
Ast_count_2:
		move.b     (a2),d0
		bne.s      Ast_count_4
		move.l     d3,d0
		movem.l    (a7)+,d3/a2-a3
		rts

strfsearchafterwc:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a4
		movea.l    a1,a2
		movea.l    28(a7),a5
		movea.l    32(a7),a3
		movea.l    (a1),a0
		move.b     (a0),d0
		ext.w      d0
		movea.l    a3,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      strfsearchafterwc_1
		addq.l     #1,(a2)
		addq.l     #1,(a4)
		bra.w      strfsearchafterwc_2
strfsearchafterwc_4:
		addq.l     #1,(a2)
strfsearchafterwc_1:
		movea.l    (a2),a0
		move.b     (a0),d0
		beq.s      strfsearchafterwc_3
		ext.w      d0
		movea.l    a5,a0
		jsr        strchr
		move.l     a0,d0
		bne.s      strfsearchafterwc_4
strfsearchafterwc_3:
		movea.l    (a2),a0
		move.b     (a0),d0
		bne.s      strfsearchafterwc_5
		bra.s      strfsearchafterwc_6
strfsearchafterwc_7:
		addq.l     #1,(a4)
strfsearchafterwc_6:
		movea.l    (a4),a0
		move.b     (a0),d0
		bne.s      strfsearchafterwc_7
		bra.s      strfsearchafterwc_2
strfsearchafterwc_5:
		movea.l    a5,a1
		movea.l    (a2),a0
		jsr        strcspn
		move.l     d0,d3
		movea.l    a3,a1
		movea.l    (a2),a0
		jsr        strcspn
		cmp.l      d3,d0
		bls.s      strfsearchafterwc_8
		move.l     d3,d1
		bra.s      strfsearchafterwc_9
strfsearchafterwc_8:
		move.l     d0,d1
strfsearchafterwc_9:
		move.l     d1,d3
		movea.l    (a2),a5
		adda.l     d1,a5
		move.b     (a5),d4
		clr.b      (a5)
		movea.l    (a2),a1
		movea.l    (a4),a0
		jsr        strstr
		move.b     d4,(a5)
		move.l     a5,(a2)
		move.l     a0,d0
		bne.s      strfsearchafterwc_10
		clr.w      d0
		bra.s      strfsearchafterwc_11
strfsearchafterwc_10:
		movea.l    (a4),a0
		adda.l     d3,a0
		move.l     a0,(a4)
strfsearchafterwc_2:
		moveq.l    #1,d0
strfsearchafterwc_11:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

Ast_fcmp:
		movem.l    d3-d4/a2-a5,-(a7)
		lea.l      -40(a7),a7
		move.l     a0,36(a7)
		move.l     a1,32(a7)
		lea.l      30(a7),a2
		lea.l      xd3661,a0
		movea.l    a2,a1
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		lea.l      28(a7),a3
		lea.l      xd3663,a0
		movea.l    a3,a1
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		lea.l      4(a7),a4
		lea.l      16(a7),a5
		movea.l    36(a7),a0
		bsr        Ast_isEmpty
		tst.w      d0
		bne        Ast_fcmp_1
		movea.l    32(a7),a0
		bsr        Ast_isEmpty
		tst.w      d0
		bne        Ast_fcmp_1
		movea.l    36(a7),a0
		jsr        strlen
		move.l     d0,d3
		movea.l    32(a7),a0
		jsr        strlen
		move.l     d0,d4
		movea.l    a2,a1
		movea.l    36(a7),a0
		jsr        strcspn
		cmp.l      d0,d3
		beq.s      Ast_fcmp_2
		moveq.l    #1,d0
		bra.s      Ast_fcmp_3
Ast_fcmp_2:
		clr.w      d0
Ast_fcmp_3:
		move.w     d0,24(a7)
		movea.l    a2,a1
		movea.l    32(a7),a0
		jsr        strcspn
		cmp.l      d0,d4
		beq.s      Ast_fcmp_4
		moveq.l    #1,d0
		bra.s      Ast_fcmp_5
Ast_fcmp_4:
		clr.w      d0
Ast_fcmp_5:
		move.w     d0,26(a7)
		movea.l    a3,a1
		movea.l    36(a7),a0
		jsr        strcspn
		cmp.l      d0,d3
		beq.s      Ast_fcmp_6
		moveq.l    #1,d0
		bra.s      Ast_fcmp_7
Ast_fcmp_6:
		clr.w      d0
Ast_fcmp_7:
		move.w     d0,20(a7)
		movea.l    a3,a1
		movea.l    32(a7),a0
		jsr        strcspn
		cmp.l      d0,d4
		beq.s      Ast_fcmp_8
		moveq.l    #1,d0
		bra.s      Ast_fcmp_9
Ast_fcmp_8:
		clr.w      d0
Ast_fcmp_9:
		move.w     d0,22(a7)
		move.w     26(a7),d1
		bne        Ast_fcmp_1
		tst.w      d0
		bne        Ast_fcmp_1
		move.l     36(a7),(a4)
		move.l     32(a7),(a7)
		bra        Ast_fcmp_10
Ast_fcmp_31:
		movea.l    (a4),a0
		move.b     (a0),d0
		ext.w      d0
		movea.l    a2,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ast_fcmp_11
		moveq.l    #1,d0
		bra.s      Ast_fcmp_12
Ast_fcmp_11:
		clr.w      d0
Ast_fcmp_12:
		move.w     d0,12(a7)
		movea.l    (a7),a0
		move.b     (a0),d0
		ext.w      d0
		movea.l    a2,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ast_fcmp_13
		moveq.l    #1,d0
		bra.s      Ast_fcmp_14
Ast_fcmp_13:
		clr.w      d0
Ast_fcmp_14:
		move.w     d0,14(a7)
		movea.l    (a4),a0
		move.b     (a0),d0
		ext.w      d0
		movea.l    a3,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ast_fcmp_15
		moveq.l    #1,d0
		bra.s      Ast_fcmp_16
Ast_fcmp_15:
		clr.w      d0
Ast_fcmp_16:
		move.w     d0,8(a7)
		movea.l    (a7),a0
		move.b     (a0),d0
		ext.w      d0
		movea.l    a3,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Ast_fcmp_17
		moveq.l    #1,d0
		bra.s      Ast_fcmp_18
Ast_fcmp_17:
		clr.w      d0
Ast_fcmp_18:
		move.w     d0,10(a7)
		move.w     12(a7),d1
		bne.s      Ast_fcmp_19
		move.w     8(a7),d2
		beq.s      Ast_fcmp_20
Ast_fcmp_19:
		moveq.l    #1,d0
		bra.s      Ast_fcmp_21
Ast_fcmp_20:
		clr.w      d0
Ast_fcmp_21:
		move.w     d0,(a5)
		move.w     14(a7),d1
		bne.s      Ast_fcmp_22
		move.w     10(a7),d2
		beq.s      Ast_fcmp_23
Ast_fcmp_22:
		moveq.l    #1,d0
		bra.s      Ast_fcmp_24
Ast_fcmp_23:
		clr.w      d0
Ast_fcmp_24:
		move.w     d0,2(a5)
		move.w     (a5),d1
		bne.s      Ast_fcmp_25
		tst.w      d0
		bne.s      Ast_fcmp_25
		movea.l    (a4),a0
		move.b     (a0),d2
		movea.l    (a7),a1
		cmp.b      (a1),d2
		bne.s      Ast_fcmp_1
		bra.s      Ast_fcmp_26
Ast_fcmp_25:
		move.w     8(a7),d0
		beq.s      Ast_fcmp_27
		move.w     10(a7),d1
		beq.s      Ast_fcmp_27
Ast_fcmp_26:
		addq.l     #1,(a4)
		addq.l     #1,(a7)
		bra.s      Ast_fcmp_10
Ast_fcmp_27:
		move.w     (a5),d0
		beq.s      Ast_fcmp_28
		move.w     2(a5),d1
		bne.s      Ast_fcmp_28
		pea.l      (a3)
		pea.l      (a2)
		movea.l    a4,a1
		lea.l      8(a7),a0
		bsr        strfsearchafterwc
		addq.w     #8,a7
		tst.w      d0
		beq.s      Ast_fcmp_1
Ast_fcmp_28:
		move.w     2(a5),d0
		beq.s      Ast_fcmp_10
		move.w     (a5),d1
		bne.s      Ast_fcmp_10
		pea.l      (a3)
		pea.l      (a2)
		lea.l      8(a7),a1
		movea.l    a4,a0
		bsr        strfsearchafterwc
		addq.w     #8,a7
		tst.w      d0
		bne.s      Ast_fcmp_10
Ast_fcmp_1:
		clr.w      d0
		bra.s      Ast_fcmp_29
Ast_fcmp_10:
		movea.l    (a4),a0
		move.b     (a0),d0
		beq.s      Ast_fcmp_30
		movea.l    (a7),a1
		move.b     (a1),d1
		bne        Ast_fcmp_31
Ast_fcmp_30:
		movea.l    (a4),a0
		move.b     (a0),d0
		movea.l    (a7),a1
		cmp.b      (a1),d0
		bne.s      Ast_fcmp_32
		moveq.l    #1,d0
		bra.s      Ast_fcmp_29
Ast_fcmp_32:
		clr.w      d0
Ast_fcmp_29:
		lea.l      40(a7),a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

Ast_countASCIZZ:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    a0,a2
		clr.w      d3
Ast_countASCIZZ_1:
		addq.w     #1,d3
		movea.l    a2,a0
		jsr        strlen
		addq.l     #1,d0
		adda.l     d0,a2
		move.b     (a2),d0
		bne.s      Ast_countASCIZZ_1
		move.w     d3,d0
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

Ast_splitASCIIZZ:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a2
		movea.l    a1,a5
		movea.l    24(a7),a3
		bsr.w      Ast_countASCIZZ
		move.w     d0,(a3)
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a4
		move.l     a0,(a5)
		move.l     a4,d0
		bne.s      Ast_splitASCIIZZ_1
		clr.w      d0
		bra.s      Ast_splitASCIIZZ_2
Ast_splitASCIIZZ_1:
		movea.l    a2,a5
		clr.w      d3
		bra.s      Ast_splitASCIIZZ_3
Ast_splitASCIIZZ_4:
		movea.l    a5,a0
		bsr        Ast_create
		move.l     a0,(a4)
		movea.l    a5,a0
		jsr        strlen
		addq.l     #1,d0
		adda.l     d0,a5
		addq.w     #1,d3
		addq.w     #4,a4
Ast_splitASCIIZZ_3:
		cmp.w      (a3),d3
		blt.s      Ast_splitASCIIZZ_4
		moveq.l    #1,d0
Ast_splitASCIIZZ_2:
		movem.l    (a7)+,d3/a2-a5
		rts

Ast_mergeASCIIZZ:
		movem.l    d3-d6/a2-a5,-(a7)
		movea.l    a0,a2
		move.w     d0,d5
		move.w     d1,d6
		moveq.l    #2,d4
		clr.w      d3
		lea.l      xd3666,a3
		bra.s      Ast_mergeASCIIZZ_1
Ast_mergeASCIIZZ_6:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     0(a2,d0.l),d1
		beq.s      Ast_mergeASCIIZZ_2
		movea.l    d1,a0
		move.b     (a0),d2
		beq.s      Ast_mergeASCIIZZ_3
		move.b     d2,d0
		ext.w      d0
		lea.l      5(a3),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      Ast_mergeASCIIZZ_4
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a0
		jsr        strlen
		addq.l     #1,d0
		add.l      d0,d4
		bra.s      Ast_mergeASCIIZZ_2
Ast_mergeASCIIZZ_4:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a0
		move.b     (a0),d1
		ext.w      d1
		subq.w     #1,d1
		beq.s      Ast_mergeASCIIZZ_5
		subq.w     #1,d1
		beq.s      Ast_mergeASCIIZZ_5
		bra.s      Ast_mergeASCIIZZ_3
Ast_mergeASCIIZZ_5:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a0
		jsr        strlen
		add.l      d0,d0
		addq.l     #2,d0
		add.l      d0,d4
		bra.s      Ast_mergeASCIIZZ_2
Ast_mergeASCIIZZ_3:
		addq.l     #2,d4
Ast_mergeASCIIZZ_2:
		addq.w     #1,d3
Ast_mergeASCIIZZ_1:
		cmp.w      d3,d5
		bgt.w      Ast_mergeASCIIZZ_6
		tst.w      d6
		beq.s      Ast_mergeASCIIZZ_7
		move.l     d4,d0
		jsr        Ax_glmalloc
		movea.l    a0,a4
		bra.s      Ast_mergeASCIIZZ_8
Ast_mergeASCIIZZ_7:
		move.l     d4,d0
		jsr        Ax_malloc
		movea.l    a0,a4
Ast_mergeASCIIZZ_8:
		move.l     a4,d0
		bne.s      Ast_mergeASCIIZZ_9
		suba.l     a0,a0
		bra        Ast_mergeASCIIZZ_10
Ast_mergeASCIIZZ_9:
		move.l     d4,d1
		clr.w      d0
		movea.l    a4,a0
		jsr        memset
		clr.w      d3
		movea.l    a4,a5
		bra        Ast_mergeASCIIZZ_11
Ast_mergeASCIIZZ_22:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     0(a2,d0.l),d1
		beq        Ast_mergeASCIIZZ_12
		movea.l    d1,a0
		move.b     (a0),d2
		bne.s      Ast_mergeASCIIZZ_13
		lea.l      12(a3),a1
		movea.l    a5,a0
		jsr        strcpy
		bra        Ast_mergeASCIIZZ_12
Ast_mergeASCIIZZ_13:
		move.w     d3,d1
		ext.l      d1
		lsl.l      #2,d1
		movea.l    0(a2,d1.l),a0
		move.b     (a0),d0
		ext.w      d0
		lea.l      5(a3),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      Ast_mergeASCIIZZ_14
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a1
		movea.l    a5,a0
		jsr        strcpy
		bra.s      Ast_mergeASCIIZZ_12
Ast_mergeASCIIZZ_14:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a0
		move.b     (a0),d1
		ext.w      d1
		subq.w     #1,d1
		beq.s      Ast_mergeASCIIZZ_15
		subq.w     #1,d1
		beq.s      Ast_mergeASCIIZZ_15
		bra.s      Ast_mergeASCIIZZ_12
Ast_mergeASCIIZZ_15:
		move.b     #$02,(a5)+
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a0
		bra.s      Ast_mergeASCIIZZ_16
Ast_mergeASCIIZZ_21:
		move.b     (a0),d0
		ext.w      d0
		asr.w      #4,d0
		cmp.b      #$09,d0
		ble.s      Ast_mergeASCIIZZ_17
		moveq.l    #48,d1
		add.b      d0,d1
		move.b     d1,(a5)+
		bra.s      Ast_mergeASCIIZZ_18
Ast_mergeASCIIZZ_17:
		moveq.l    #65,d1
		add.b      d0,d1
		move.b     d1,(a5)+
Ast_mergeASCIIZZ_18:
		moveq.l    #15,d0
		and.b      (a0),d0
		cmp.b      #$09,d0
		ble.s      Ast_mergeASCIIZZ_19
		moveq.l    #48,d1
		add.b      d0,d1
		move.b     d1,(a5)+
		bra.s      Ast_mergeASCIIZZ_20
Ast_mergeASCIIZZ_19:
		moveq.l    #65,d1
		add.b      d0,d1
		move.b     d1,(a5)+
Ast_mergeASCIIZZ_20:
		addq.w     #1,a0
Ast_mergeASCIIZZ_16:
		move.b     (a0),d0
		bne.s      Ast_mergeASCIIZZ_21
Ast_mergeASCIIZZ_12:
		addq.w     #1,d3
		movea.l    a5,a0
		jsr        strlen
		addq.l     #1,d0
		adda.l     d0,a5
Ast_mergeASCIIZZ_11:
		cmp.w      d3,d5
		bgt        Ast_mergeASCIIZZ_22
		movea.l    a4,a0
Ast_mergeASCIIZZ_10:
		movem.l    (a7)+,d3-d6/a2-a5
		rts

Ast_deleteAry:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		clr.w      d3
		movea.l    a0,a3
		bra.s      Ast_deleteAry_1
Ast_deleteAry_2:
		movea.l    (a3),a0
		bsr        Ast_delete
		addq.w     #1,d3
		addq.w     #4,a3
Ast_deleteAry_1:
		cmp.w      d3,d4
		bgt.s      Ast_deleteAry_2
		movea.l    a2,a0
		jsr        Ax_free
		movem.l    (a7)+,d3-d4/a2-a3
		rts

Ast_copy:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		move.l     a2,d1
		bne.s      Ast_copy_1
		lea.l      null_string,a2
Ast_copy_1:
		movea.l    a2,a0
		jsr        strlen
		move.l     d0,d3
		tst.w      d4
		beq.s      Ast_copy_2
		moveq.l    #1,d0
		add.l      d3,d0
		jsr        Ax_glmalloc
		movea.l    a0,a3
		bra.s      Ast_copy_3
Ast_copy_2:
		moveq.l    #1,d0
		add.l      d3,d0
		jsr        Ax_malloc
		movea.l    a0,a3
Ast_copy_3:
		move.l     a3,d0
		bne.s      Ast_copy_4
		suba.l     a0,a0
		bra.s      Ast_copy_5
Ast_copy_4:
		move.l     a2,d0
		bne.s      Ast_copy_6
		lea.l      xd366a,a1
		bra.s      Ast_copy_7
Ast_copy_6:
		movea.l    a2,a1
Ast_copy_7:
		movea.l    a3,a0
		jsr        strcpy
Ast_copy_5:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

Ast_reverse:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		move.l     a1,d0
		bne.s      Ast_reverse_1
		lea.l      null_string,a1
Ast_reverse_1:
		movea.l    a1,a2
		bra.s      Ast_reverse_2
Ast_reverse_3:
		addq.w     #1,a2
Ast_reverse_2:
		move.b     (a2),d0
		bne.s      Ast_reverse_3
		movea.l    a0,a3
		subq.w     #1,a2
		bra.s      Ast_reverse_4
Ast_reverse_5:
		move.b     (a2),(a3)
		subq.w     #1,a2
		addq.w     #1,a3
Ast_reverse_4:
		cmpa.l     a2,a1
		bls.s      Ast_reverse_5
		clr.b      (a3)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.data

null_string:
		dc.b $00
xd3661:
		dc.b $2a
		dc.b $00
xd3663:
		dc.b $3f
		dc.b $00
		dc.b $00
xd3666:
		dc.b ' ',$09,$0a,$0d
xd366a:
		dc.b 0
xd366b:
		dc.b $01
		dc.w $0203
		dc.w $0405
		dc.w $0600
xd3672:
		dc.w $0100
		.even
