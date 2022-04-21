
info_start:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a4
		jsr        Aev_mess
		lea.l      work,a2
		lea.l      info_xywh,a3
		lea.l      OUTPUT_INFO,a0
		jsr        Aob_create
		move.l     a0,(a2)
		move.l     a0,d0
		beq        info_start_1
		jsr        Aob_fix
		move.l     _globl,-(a7)
		pea.l      6(a3)
		pea.l      4(a3)
		pea.l      2(a3)
		movea.l    a3,a1
		movea.l    (a2),a0
		jsr        mt_form_center
		lea.l      16(a7),a7
		subq.w     #1,(a3)
		subq.w     #1,2(a3)
		addq.w     #2,4(a3)
		addq.w     #2,6(a3)
		movea.l    a3,a0
		jsr        Aob_save
		move.l     a0,8(a3)
		moveq.l    #31,d0
		movea.l    a4,a1
		movea.l    (a2),a0
		movea.l    204(a0),a0
		movea.l    (a0),a0
		jsr        strncpy
		movea.l    (a2),a0
		movea.l    156(a0),a1
		movea.l    (a1),a4
		clr.b      (a4)
		movea.l    (a2),a0
		movea.l    252(a0),a1
		movea.l    (a1),a4
		clr.b      (a4)
		movea.l    (a2),a0
		movea.l    300(a0),a1
		movea.l    (a1),a4
		clr.b      (a4)
		move.w     6(a3),-(a7)
		move.w     4(a3),-(a7)
		move.w     2(a3),-(a7)
		movea.l    _globl,a1
		move.w     (a3),d2
		moveq.l    #10,d1
		clr.w      d0
		movea.l    (a2),a0
		jsr        mt_objc_draw
		addq.w     #6,a7
info_start_1:
		movem.l    (a7)+,a2-a4
		rts

info_end:
		movea.l    work,a0
		jsr        Aob_delete
		lea.l      info_xywh,a1
		movea.l    info_bp,a0
		jsr        Aob_restore
		rts

info_title:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		lea.l      info_xywh,a3
		move.l     12(a3),d0
		beq.s      info_title_1
		movea.l    a2,a1
		movea.l    d0,a0
		movea.l    156(a0),a0
		movea.l    (a0),a0
		jsr        strcpy
		move.w     6(a3),-(a7)
		move.w     4(a3),-(a7)
		move.w     2(a3),-(a7)
		movea.l    _globl,a1
		move.w     (a3),d2
		moveq.l    #1,d1
		moveq.l    #6,d0
		movea.l    12(a3),a0
		jsr        mt_objc_draw
		addq.w     #6,a7
		lea.l      x99190,a0
		jsr        info_list
		lea.l      x99190,a0
		jsr        info_obj
info_title_1:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

info_list:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		lea.l      info_xywh,a3
		move.l     12(a3),d0
		beq.s      info_list_1
		movea.l    a2,a1
		movea.l    d0,a0
		movea.l    252(a0),a0
		movea.l    (a0),a0
		jsr        strcpy
		move.w     6(a3),-(a7)
		move.w     4(a3),-(a7)
		move.w     2(a3),-(a7)
		movea.l    _globl,a1
		move.w     (a3),d2
		moveq.l    #1,d1
		moveq.l    #10,d0
		movea.l    12(a3),a0
		jsr        mt_objc_draw
		addq.w     #6,a7
		lea.l      x99190,a0
		jsr        info_obj
info_list_1:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

info_obj:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		lea.l      info_xywh,a3
		move.l     12(a3),d0
		beq.s      info_obj_1
		movea.l    a2,a1
		movea.l    d0,a0
		movea.l    300(a0),a0
		movea.l    (a0),a0
		jsr        strcpy
		move.w     6(a3),-(a7)
		move.w     4(a3),-(a7)
		move.w     2(a3),-(a7)
		movea.l    _globl,a1
		move.w     (a3),d2
		moveq.l    #1,d1
		moveq.l    #12,d0
		movea.l    12(a3),a0
		jsr        mt_objc_draw
		addq.w     #6,a7
info_obj_1:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

out_label:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a1,a4
		move.l     a2,d0
		beq.s      out_label_1
		lea.l      iostring,a3
		pea.l      22(a2)
		lea.l      x99191,a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
		bra.s      out_label_2
out_label_1:
		movea.l    a4,a0
		jsr        save_string
out_label_2:
		movem.l    (a7)+,a2-a4
		rts

out_label2:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a1,a4
		move.l     a2,d0
		beq.s      out_label2_1
		lea.l      iostring,a3
		pea.l      22(a2)
		lea.l      x99197,a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
		bra.s      out_label2_2
out_label2_1:
		movea.l    a4,a0
		jsr        save_string
out_label2_2:
		movem.l    (a7)+,a2-a4
		rts

out_label3:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a1,a4
		move.l     a2,d0
		beq.s      out_label3_1
		lea.l      iostring,a3
		pea.l      22(a2)
		lea.l      x9919e,a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
		bra.s      out_label3_2
out_label3_1:
		movea.l    a4,a0
		jsr        save_string
out_label3_2:
		movem.l    (a7)+,a2-a4
		rts

out_acs:
		movem.l    d3/a2-a6,-(a7)
		lea.l      -36(a7),a7
		movea.l    a0,a2
		move.w     6(a2),d0
		and.w      #$8000,d0
		bne        out_acs_1
		lea.l      x99190,a3
		lea.l      24(a3),a0
		jsr        save_string
		lea.l      46(a3),a0
		jsr        save_string
		lea.l      iostring,a4
		pea.l      92(a2)
		moveq.l    #64,d0
		or.w       90(a2),d0
		move.w     d0,-(a7)
		move.w     88(a2),-(a7)
		move.w     86(a2),-(a7)
		move.w     #$012C,-(a7)
		pea.l      100(a3)
		lea.l      53(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		lea.l      16(a7),a7
		movea.l    a4,a0
		jsr        save_string
		lea.l      108(a3),a1
		movea.l    124(a2),a0
		bsr        out_label2
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    128(a2),a0
		bsr        out_label2
		lea.l      126(a3),a0
		jsr        save_string
		lea.l      132(a2),a5
		clr.w      d3
		bra.s      out_acs_2
out_acs_6:
		tst.w      d3
		beq.s      out_acs_3
		lea.l      135(a3),a0
		jsr        save_string
out_acs_3:
		cmpi.w     #$00FF,(a5)
		beq.s      out_acs_4
		move.w     (a5),-(a7)
		lea.l      139(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		bra.s      out_acs_5
out_acs_4:
		movea.l    2(a5),a0
		pea.l      22(a0)
		lea.l      154(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #4,a7
out_acs_5:
		movea.l    a4,a0
		jsr        save_string
		addq.w     #6,a5
		addq.w     #1,d3
out_acs_2:
		cmp.w      #$0020,d3
		blt.s      out_acs_6
		lea.l      168(a3),a0
		jsr        save_string
		clr.w      d3
		bra        out_acs_7
out_acs_11:
		move.w     d3,-(a7)
		lea.l      177(a3),a1
		lea.l      2(a7),a0
		jsr        sprintf
		addq.w     #2,a7
		lea.l      (a7),a1
		movea.l    52(a2),a0
		jsr        find_entry
		movea.l    a0,a6
		move.l     a6,d0
		bne.s      out_acs_8
		lea.l      (a7),a1
		movea.l    36(a2),a0
		jsr        find_entry
		movea.l    a0,a6
		move.l     a6,d0
		bne.s      out_acs_8
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      mlmess,a1
		move.l     0(a1,d0.l),-(a7)
		lea.l      187(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_acs_9
out_acs_8:
		move.l     4(a6),-(a7)
		lea.l      187(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #4,a7
out_acs_9:
		movea.l    a4,a0
		jsr        save_string
		cmp.w      #$0021,d3
		bge.s      out_acs_10
		lea.l      194(a3),a0
		jsr        save_string
out_acs_10:
		lea.l      50(a3),a0
		jsr        save_string
		addq.w     #1,d3
out_acs_7:
		cmp.w      #$0022,d3
		blt        out_acs_11
		lea.l      196(a3),a0
		jsr        save_string
		lea.l      202(a3),a0
		jsr        save_string
		lea.l      227(a3),a0
		jsr        save_string
		lea.l      236(a3),a0
		jsr        save_string
		movea.l    a3,a1
		movea.l    532(a2),a0
		bsr        out_label
		lea.l      239(a3),a0
		jsr        save_string
		lea.l      244(a3),a1
		movea.l    536(a2),a0
		bsr        out_label
		lea.l      247(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    540(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		move.w     544(a2),d0
		beq.s      out_acs_12
		lea.l      251(a3),a0
		bra.s      out_acs_13
out_acs_12:
		lea.l      258(a3),a0
out_acs_13:
		jsr        save_string
		move.w     546(a2),d0
		beq.s      out_acs_14
		lea.l      251(a3),a0
		bra.s      out_acs_15
out_acs_14:
		lea.l      258(a3),a0
out_acs_15:
		jsr        save_string
		cmpi.w     #$0004,548(a2)
		ble.s      out_acs_16
		move.w     548(a2),-(a7)
		lea.l      266(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		bra.s      out_acs_17
out_acs_16:
		lea.l      275(a3),a1
		movea.l    a4,a0
		jsr        strcpy
out_acs_17:
		movea.l    a4,a0
		jsr        save_string
		lea.l      192(a3),a0
		jsr        save_string
		lea.l      109(a3),a1
		movea.l    550(a2),a0
		bsr        out_label
		lea.l      93(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    554(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    558(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    562(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    566(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    570(a2),a0
		bsr        out_label
		lea.l      283(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    574(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    578(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    582(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    586(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    590(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		move.w     594(a2),-(a7)
		lea.l      290(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a0
		jsr        save_string
		move.w     596(a2),d0
		ble.s      out_acs_18
		move.w     d0,d1
		add.w      d1,d1
		add.w      d0,d1
		lea.l      xacc_types,a0
		pea.l      0(a0,d1.w)
		lea.l      295(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_acs_19
out_acs_18:
		lea.l      302(a3),a1
		movea.l    a4,a0
		jsr        strcpy
out_acs_19:
		movea.l    a4,a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    598(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    602(a2),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      306(a3),a1
		movea.l    606(a2),a0
		bsr        out_label
		lea.l      314(a3),a0
		jsr        save_string
out_acs_1:
		lea.l      36(a7),a7
		movem.l    (a7)+,d3/a2-a6
		rts

out_cicon:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		move.w     d0,d3
		lea.l      x99190,a4
		lea.l      iostring,a5
		move.w     (a2),-(a7)
		move.l     a3,-(a7)
		move.w     (a2),-(a7)
		lea.l      322(a4),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a5,a0
		jsr        save_string
		lea.l      121(a4),a1
		movea.l    2(a2),a0
		bsr        out_label3
		lea.l      94(a4),a0
		jsr        save_string
		lea.l      121(a4),a1
		movea.l    6(a2),a0
		bsr        out_label
		lea.l      94(a4),a0
		jsr        save_string
		lea.l      121(a4),a1
		movea.l    10(a2),a0
		bsr        out_label3
		lea.l      94(a4),a0
		jsr        save_string
		lea.l      121(a4),a1
		movea.l    14(a2),a0
		bsr        out_label
		tst.w      d3
		beq.s      out_cicon_1
		move.l     a3,-(a7)
		move.w     d3,-(a7)
		lea.l      359(a4),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a5,a0
		jsr        save_string
		bra.s      out_cicon_2
out_cicon_1:
		lea.l      378(a4),a0
		jsr        save_string
out_cicon_2:
		movem.l    (a7)+,d3/a2-a5
		rts

out_icon:
		movem.l    d3-d7/a2-a6,-(a7)
		subq.w     #8,a7
		move.l     a0,4(a7)
		move.l     14(a0),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_icon_1
		lea.l      22(a0),a0
		bsr        info_list
		movea.l    4(a7),a0
		move.l     4(a0),(a7)
		lea.l      x99190,a3
		lea.l      392(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a2
		bra        out_icon_2
out_icon_15:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    (a7),a0
		movea.l    0(a0,d0.l),a4
		lea.l      22(a4),a0
		bsr        info_obj
		movea.l    4(a4),a5
		movea.l    4(a4),a6
		clr.w      d5
		move.w     60(a6),d0
		beq.s      out_icon_3
		lea.l      60(a6),a1
		lea.l      22(a4),a0
		move.w     d5,d0
		bsr        out_cicon
		moveq.l    #8,d5
out_icon_3:
		move.w     38(a6),d0
		beq.s      out_icon_4
		lea.l      38(a6),a1
		lea.l      22(a4),a0
		move.w     d5,d0
		bsr        out_cicon
		moveq.l    #4,d5
out_icon_4:
		moveq.l    #15,d6
		add.w      22(a5),d6
		asr.w      #4,d6
		muls.w     24(a5),d6
		subq.w     #1,d6
		move.l     (a5),d0
		lea.l      0(a5,d0.l),a6
		pea.l      22(a4)
		lea.l      414(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a2,a0
		jsr        save_string
		clr.w      d7
		bra.s      out_icon_5
out_icon_7:
		move.w     (a6)+,-(a7)
		lea.l      447(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
		moveq.l    #7,d0
		and.w      d7,d0
		subq.w     #7,d0
		bne.s      out_icon_6
		lea.l      95(a3),a0
		jsr        save_string
out_icon_6:
		addq.w     #1,d7
out_icon_5:
		cmp.w      d7,d6
		bgt.s      out_icon_7
		pea.l      22(a4)
		move.w     (a6)+,-(a7)
		lea.l      455(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a2,a0
		jsr        save_string
		clr.w      d7
		bra.s      out_icon_8
out_icon_10:
		move.w     (a6)+,-(a7)
		lea.l      447(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
		moveq.l    #7,d0
		and.w      d7,d0
		subq.w     #7,d0
		bne.s      out_icon_9
		lea.l      95(a3),a0
		jsr        save_string
out_icon_9:
		addq.w     #1,d7
out_icon_8:
		cmp.w      d7,d6
		bgt.s      out_icon_10
		move.w     (a6)+,-(a7)
		lea.l      497(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
		move.w     56(a4),d0
		and.w      #$0500,d0
		cmp.w      #$0100,d0
		bne.s      out_icon_11
		lea.l      507(a3),a0
		jsr        save_string
		bra.s      out_icon_12
out_icon_11:
		lea.l      515(a3),a0
		jsr        save_string
out_icon_12:
		move.w     32(a5),-(a7)
		move.w     30(a5),-(a7)
		move.w     28(a5),-(a7)
		move.w     26(a5),-(a7)
		move.w     24(a5),-(a7)
		move.w     22(a5),-(a7)
		move.w     20(a5),-(a7)
		move.w     18(a5),-(a7)
		move.w     16(a5),-(a7)
		move.w     14(a5),-(a7)
		move.w     12(a5),-(a7)
		movea.l    8(a5),a0
		pea.l      22(a0)
		pea.l      22(a4)
		pea.l      22(a4)
		pea.l      22(a4)
		lea.l      523(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		lea.l      38(a7),a7
		movea.l    a2,a0
		jsr        save_string
		tst.w      d5
		beq.s      out_icon_13
		pea.l      22(a4)
		move.w     d5,-(a7)
		lea.l      629(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a2,a0
		jsr        save_string
		bra.s      out_icon_14
out_icon_13:
		lea.l      121(a3),a0
		jsr        save_string
out_icon_14:
		lea.l      639(a3),a0
		jsr        save_string
		addq.w     #1,d4
out_icon_2:
		cmp.w      d4,d3
		bgt        out_icon_15
out_icon_1:
		addq.w     #8,a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

out_mouse:
		movem.l    d3-d5/a2-a6,-(a7)
		movea.l    a0,a2
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_mouse_1
		lea.l      22(a2),a0
		bsr        info_list
		movea.l    4(a2),a2
		lea.l      x99190,a3
		lea.l      646(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a5
		bra        out_mouse_2
out_mouse_11:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a4
		lea.l      22(a4),a0
		bsr        info_obj
		movea.l    4(a4),a6
		move.w     56(a4),d0
		and.w      #$0500,d0
		cmp.w      #$0100,d0
		bne.s      out_mouse_3
		lea.l      507(a3),a0
		jsr        save_string
		bra.s      out_mouse_4
out_mouse_3:
		lea.l      515(a3),a0
		jsr        save_string
out_mouse_4:
		move.w     8(a6),-(a7)
		move.w     6(a6),-(a7)
		move.w     4(a6),-(a7)
		move.w     2(a6),-(a7)
		move.w     (a6),-(a7)
		pea.l      22(a4)
		lea.l      673(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		lea.l      14(a7),a7
		movea.l    a5,a0
		jsr        save_string
		lea.l      10(a6),a6
		moveq.l    #15,d5
		bra.s      out_mouse_5
out_mouse_7:
		move.w     (a6)+,-(a7)
		lea.l      447(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a0
		jsr        save_string
		cmp.w      #$0008,d5
		bne.s      out_mouse_6
		lea.l      724(a3),a0
		jsr        save_string
out_mouse_6:
		subq.w     #1,d5
out_mouse_5:
		tst.w      d5
		bgt.s      out_mouse_7
		move.w     (a6)+,-(a7)
		lea.l      731(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a0
		jsr        save_string
		moveq.l    #15,d5
		bra.s      out_mouse_8
out_mouse_10:
		move.w     (a6)+,-(a7)
		lea.l      447(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a0
		jsr        save_string
		cmp.w      #$0008,d5
		bne.s      out_mouse_9
		lea.l      724(a3),a0
		jsr        save_string
out_mouse_9:
		subq.w     #1,d5
out_mouse_8:
		tst.w      d5
		bgt.s      out_mouse_10
		move.w     (a6)+,-(a7)
		lea.l      756(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a0
		jsr        save_string
		addq.w     #1,d4
out_mouse_2:
		cmp.w      d4,d3
		bgt        out_mouse_11
out_mouse_1:
		movem.l    (a7)+,d3-d5/a2-a6
		rts

out_image:
		movem.l    d3-d6/a2-a6,-(a7)
		subq.w     #8,a7
		move.l     a0,4(a7)
		move.l     14(a0),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_image_1
		lea.l      22(a0),a0
		bsr        info_list
		movea.l    4(a7),a0
		move.l     4(a0),(a7)
		lea.l      x99190,a3
		lea.l      780(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a2
		bra        out_image_2
out_image_8:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    (a7),a0
		movea.l    0(a0,d0.l),a4
		lea.l      22(a4),a0
		bsr        info_obj
		movea.l    4(a4),a5
		move.w     4(a5),d5
		asr.w      #1,d5
		muls.w     6(a5),d5
		subq.w     #1,d5
		move.l     (a5),d0
		lea.l      0(a5,d0.l),a6
		pea.l      22(a4)
		lea.l      803(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a2,a0
		jsr        save_string
		clr.w      d6
		bra.s      out_image_3
out_image_5:
		move.w     (a6)+,-(a7)
		lea.l      447(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
		moveq.l    #7,d0
		and.w      d6,d0
		subq.w     #7,d0
		bne.s      out_image_4
		lea.l      95(a3),a0
		jsr        save_string
out_image_4:
		addq.w     #1,d6
out_image_3:
		cmp.w      d6,d5
		bgt.s      out_image_5
		move.w     (a6)+,-(a7)
		lea.l      838(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
		move.w     56(a4),d0
		and.w      #$0500,d0
		cmp.w      #$0100,d0
		bne.s      out_image_6
		lea.l      507(a3),a0
		jsr        save_string
		bra.s      out_image_7
out_image_6:
		lea.l      515(a3),a0
		jsr        save_string
out_image_7:
		move.w     12(a5),-(a7)
		move.w     10(a5),-(a7)
		move.w     8(a5),-(a7)
		move.w     6(a5),-(a7)
		move.w     4(a5),-(a7)
		pea.l      22(a4)
		pea.l      22(a4)
		lea.l      851(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		lea.l      18(a7),a7
		movea.l    a2,a0
		jsr        save_string
		addq.w     #1,d4
out_image_2:
		cmp.w      d4,d3
		bgt        out_image_8
out_image_1:
		addq.w     #8,a7
		movem.l    (a7)+,d3-d6/a2-a6
		rts

out_obj:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -64(a7),a7
		move.l     a0,60(a7)
		move.l     a1,56(a7)
		lea.l      $000FB442,a2
		move.l     14(a0),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_obj_1
		lea.l      22(a0),a0
		bsr        info_list
		movea.l    56(a7),a0
		jsr        save_string
		move.w     #$FFFF,mapX
		movea.l    60(a7),a0
		move.l     4(a0),52(a7)
		clr.w      d4
		lea.l      x99190,a6
		lea.l      iostring,a3
		lea.l      24(a7),a4
		bra        out_obj_2
out_obj_22:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    52(a7),a0
		move.l     0(a0,d0.l),48(a7)
		movea.l    48(a7),a0
		lea.l      22(a0),a0
		bsr        info_obj
		movea.l    48(a7),a0
		move.l     14(a0),d0
		moveq.l    #56,d1
		jsr        _uldiv
		move.l     d0,d5
		movea.l    48(a7),a0
		movea.l    4(a0),a5
		clr.w      d6
		move.w     d6,(a2)
		clr.w      d7
		bra.w      out_obj_3
out_obj_7:
		movea.l    48(a7),a0
		move.w     56(a0),d0
		and.w      #$0500,d0
		cmp.w      #$0100,d0
		beq.s      out_obj_4
		move.l     (a5),d1
		beq.s      out_obj_4
		move.w     d6,-(a7)
		movea.l    d1,a1
		pea.l      22(a1)
		lea.l      907(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a3,a0
		jsr        save_string
out_obj_4:
		move.l     32(a5),d0
		bne.s      out_obj_5
		move.l     36(a5),d1
		bne.s      out_obj_5
		move.l     44(a5),d2
		bne.s      out_obj_5
		move.l     48(a5),d0
		bne.s      out_obj_5
		move.l     4(a5),d1
		bne.s      out_obj_5
		move.w     42(a5),d2
		bne.s      out_obj_5
		move.w     52(a5),d0
		bne.s      out_obj_5
		addq.w     #1,d6
		bra.s      out_obj_6
out_obj_5:
		addq.w     #2,d6
out_obj_6:
		lea.l      56(a5),a5
		addq.w     #1,d7
		move.w     d7,d0
		ext.l      d0
		add.l      d0,d0
		move.w     d6,0(a2,d0.l)
out_obj_3:
		cmp.w      d7,d5
		bgt.w      out_obj_7
		movea.l    48(a7),a0
		movea.l    4(a0),a5
		clr.w      d7
		bra        out_obj_8
out_obj_21:
		moveq.l    #24,d0
		lea.l      8(a5),a1
		movea.l    a4,a0
		jsr        memcpy
		moveq.l    #24,d0
		lea.l      32(a5),a1
		lea.l      (a7),a0
		jsr        memcpy
		move.w     (a4),d0
		ext.l      d0
		add.l      d0,d0
		move.w     0(a2,d0.l),(a4)
		move.w     2(a4),d0
		ext.l      d0
		add.l      d0,d0
		move.w     0(a2,d0.l),2(a4)
		move.w     4(a4),d0
		ext.l      d0
		add.l      d0,d0
		move.w     0(a2,d0.l),4(a4)
		moveq.l    #-1,d0
		add.w      d5,d0
		cmp.w      d0,d7
		bne.s      out_obj_9
		move.w     d7,d1
		ext.l      d1
		add.l      d1,d1
		move.w     2(a2,d1.l),d2
		moveq.l    #2,d6
		add.w      0(a2,d1.l),d6
		cmp.w      d6,d2
		bne.s      out_obj_10
		ori.w      #$0020,8(a7)
		bra.s      out_obj_9
out_obj_10:
		ori.w      #$0020,8(a4)
out_obj_9:
		tst.w      d7
		bne.s      out_obj_11
		movea.l    48(a7),a0
		move.w     56(a0),d0
		and.w      #$0500,d0
		cmp.w      #$0100,d0
		bne.s      out_obj_12
		lea.l      507(a6),a0
		jsr        save_string
		bra.s      out_obj_13
out_obj_12:
		lea.l      515(a6),a0
		jsr        save_string
out_obj_13:
		movea.l    48(a7),a0
		pea.l      22(a0)
		lea.l      929(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_obj_14
out_obj_11:
		movea.l    48(a7),a0
		pea.l      22(a0)
		move.w     d7,d0
		ext.l      d0
		add.l      d0,d0
		move.w     0(a2,d0.l),-(a7)
		lea.l      947(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #6,a7
out_obj_14:
		movea.l    a3,a0
		jsr        save_string
		move.w     10(a4),-(a7)
		move.w     8(a4),-(a7)
		move.w     6(a4),-(a7)
		move.w     4(a4),-(a7)
		move.w     2(a4),-(a7)
		move.w     (a4),-(a7)
		lea.l      974(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		lea.l      12(a7),a7
		movea.l    a3,a0
		jsr        save_string
		cmpi.b     #$14,7(a4)
		beq.s      out_obj_15
		cmpi.b     #$19,7(a4)
		beq.s      out_obj_15
		cmpi.b     #$1B,7(a4)
		bne.s      out_obj_16
out_obj_15:
		move.l     12(a4),-(a7)
		lea.l      1012(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_obj_17
out_obj_16:
		cmpi.b     #$20,7(a4)
		beq.s      out_obj_18
		cmpi.b     #$1C,7(a4)
		beq.s      out_obj_18
		cmpi.b     #$1A,7(a4)
		bne.s      out_obj_19
out_obj_18:
		movea.l    12(a4),a0
		pea.l      22(a0)
		lea.l      1026(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_obj_17
out_obj_19:
		movea.l    12(a4),a0
		pea.l      22(a0)
		lea.l      1039(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
out_obj_17:
		movea.l    a3,a0
		jsr        save_string
		move.w     22(a4),-(a7)
		move.w     20(a4),-(a7)
		move.w     18(a4),-(a7)
		move.w     16(a4),-(a7)
		lea.l      1053(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a3,a0
		jsr        save_string
		move.w     d7,d0
		ext.l      d0
		add.l      d0,d0
		move.w     2(a2,d0.l),d1
		moveq.l    #2,d2
		add.w      0(a2,d0.l),d2
		cmp.w      d2,d1
		bne        out_obj_20
		movea.l    48(a7),a0
		pea.l      22(a0)
		move.w     0(a2,d0.l),-(a7)
		lea.l      1080(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a3,a0
		jsr        save_string
		lea.l      1111(a6),a1
		movea.l    (a7),a0
		bsr        out_label
		lea.l      118(a6),a0
		jsr        save_string
		lea.l      1111(a6),a1
		movea.l    4(a7),a0
		bsr        out_label
		move.w     10(a7),-(a7)
		move.w     10(a7),-(a7)
		lea.l      997(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
		lea.l      1119(a6),a1
		movea.l    12(a7),a0
		bsr        out_label
		lea.l      118(a6),a0
		jsr        save_string
		lea.l      1119(a6),a1
		movea.l    16(a7),a0
		bsr        out_label
		move.w     20(a7),-(a7)
		lea.l      1003(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a3,a0
		jsr        save_string
		lea.l      1128(a6),a1
		movea.l    4(a5),a0
		bsr        out_label
		lea.l      197(a6),a0
		jsr        save_string
out_obj_20:
		lea.l      56(a5),a5
		addq.w     #1,d7
out_obj_8:
		cmp.w      d7,d5
		bgt        out_obj_21
		lea.l      50(a6),a0
		jsr        save_string
		addq.w     #1,d4
out_obj_2:
		cmp.w      d4,d3
		bgt        out_obj_22
out_obj_1:
		lea.l      64(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

out_data:
		movem.l    d3-d6/a2-a5,-(a7)
		movea.l    a0,a2
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_data_1
		lea.l      22(a2),a0
		bsr        info_list
		movea.l    4(a2),a2
		lea.l      x99190,a3
		lea.l      1135(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a4
		bra        out_data_2
out_data_9:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a5
		lea.l      22(a5),a0
		bsr        info_obj
		moveq.l    #-1,d5
		add.l      14(a5),d5
		asr.l      #1,d5
		tst.l      d5
		ble        out_data_3
		move.w     56(a5),d0
		and.w      #$0500,d0
		cmp.w      #$0100,d0
		bne.s      out_data_4
		lea.l      507(a3),a0
		jsr        save_string
		bra.s      out_data_5
out_data_4:
		lea.l      515(a3),a0
		jsr        save_string
out_data_5:
		pea.l      22(a5)
		lea.l      1157(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a4,a0
		jsr        save_string
		movea.l    4(a5),a5
		moveq.l    #0,d6
		bra.s      out_data_6
out_data_8:
		move.w     (a5)+,-(a7)
		lea.l      447(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a0
		jsr        save_string
		moveq.l    #7,d0
		and.l      d6,d0
		moveq.l    #7,d1
		cmp.l      d0,d1
		bne.s      out_data_7
		lea.l      1177(a3),a0
		jsr        save_string
out_data_7:
		addq.l     #1,d6
out_data_6:
		cmp.l      d6,d5
		bgt.s      out_data_8
		move.w     (a5)+,-(a7)
		lea.l      1183(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a0
		jsr        save_string
out_data_3:
		addq.w     #1,d4
out_data_2:
		cmp.w      d4,d3
		bgt        out_data_9
out_data_1:
		movem.l    (a7)+,d3-d6/a2-a5
		rts

out_string:
		movem.l    d3-d4/a2-a6,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		move.l     a1,4(a7)
		movea.l    40(a7),a3
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_string_1
		lea.l      22(a2),a0
		bsr        info_list
		movea.l    4(a2),a2
		movea.l    a3,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      out_string_2
		movea.l    a3,a0
		jsr        save_string
out_string_2:
		clr.b      1(a7)
		clr.w      d4
		lea.l      x99190,a6
		bra        out_string_3
out_string_23:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a4
		movea.l    4(a7),a0
		movea.l    4(a0),a1
		movea.l    0(a1,d0.l),a5
		lea.l      1198(a6),a1
		lea.l      22(a5),a0
		moveq.l    #4,d0
		jsr        strncmp
		tst.w      d0
		beq        out_string_4
		lea.l      22(a5),a0
		bsr        info_obj
		move.w     56(a5),d0
		and.w      #$0500,d0
		cmp.w      #$0100,d0
		bne.s      out_string_5
		lea.l      507(a6),a0
		jsr        save_string
		bra.s      out_string_6
out_string_5:
		lea.l      515(a6),a0
		jsr        save_string
out_string_6:
		lea.l      1203(a6),a0
		jsr        save_string
		clr.b      1(a7)
		lea.l      22(a4),a5
		bra.s      out_string_7
out_string_8:
		move.b     (a5),(a7)
		lea.l      (a7),a0
		jsr        save_string
		addq.w     #1,a5
out_string_7:
		cmpi.b     #$20,(a5)
		bge.s      out_string_8
		lea.l      1209(a6),a0
		jsr        save_string
		movea.l    4(a4),a5
		bra        out_string_9
out_string_22:
		move.b     (a5),d0
		ext.w      d0
		cmp.w      #$000B,d0
		beq.s      out_string_10
		bgt.s      out_string_11
		subq.w     #7,d0
		beq.w      out_string_12
		subq.w     #1,d0
		beq.s      out_string_13
		subq.w     #1,d0
		beq.s      out_string_14
		subq.w     #1,d0
		beq.s      out_string_15
		bra        out_string_16
out_string_11:
		sub.w      #$000C,d0
		beq.s      out_string_17
		subq.w     #1,d0
		beq.s      out_string_18
		sub.w      #$0015,d0
		beq.s      out_string_19
		sub.w      #$003A,d0
		beq.w      out_string_20
		bra        out_string_16
out_string_15:
		lea.l      1217(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		bra.w      out_string_21
out_string_18:
		lea.l      1220(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		bra.s      out_string_21
out_string_14:
		lea.l      1223(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		bra.s      out_string_21
out_string_10:
		lea.l      1226(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		bra.s      out_string_21
out_string_13:
		lea.l      1229(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		bra.s      out_string_21
out_string_12:
		lea.l      1232(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		bra.s      out_string_21
out_string_17:
		lea.l      1235(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		bra.s      out_string_21
out_string_19:
		lea.l      1238(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		bra.s      out_string_21
out_string_20:
		lea.l      1241(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		bra.s      out_string_21
out_string_16:
		move.b     (a5),(a7)
		clr.b      1(a7)
out_string_21:
		lea.l      (a7),a0
		jsr        save_string
		addq.w     #1,a5
out_string_9:
		move.b     (a5),d0
		bne        out_string_22
		lea.l      1244(a6),a0
		jsr        save_string
out_string_4:
		addq.w     #1,d4
out_string_3:
		cmp.w      d4,d3
		bgt        out_string_23
out_string_1:
		addq.w     #8,a7
		movem.l    (a7)+,d3-d4/a2-a6
		rts

out_tedi:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a2
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_tedi_1
		lea.l      22(a2),a0
		bsr        info_list
		movea.l    4(a2),a2
		lea.l      x99671,a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a5
		bra.s      out_tedi_2
out_tedi_3:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a3
		lea.l      22(a3),a0
		bsr        info_obj
		movea.l    4(a3),a4
		movea.l    4(a4),a0
		move.l     14(a0),-(a7)
		movea.l    (a4),a1
		move.l     14(a1),-(a7)
		move.w     22(a4),-(a7)
		move.w     20(a4),-(a7)
		move.w     18(a4),-(a7)
		move.w     16(a4),-(a7)
		move.w     14(a4),-(a7)
		move.w     12(a4),-(a7)
		movea.l    8(a4),a0
		pea.l      22(a0)
		movea.l    4(a4),a1
		pea.l      22(a1)
		movea.l    (a4),a0
		pea.l      22(a0)
		pea.l      22(a3)
		lea.l      x9968a,a1
		movea.l    a5,a0
		jsr        sprintf
		lea.l      36(a7),a7
		movea.l    a5,a0
		jsr        save_string
		addq.w     #1,d4
out_tedi_2:
		cmp.w      d4,d3
		bgt.s      out_tedi_3
out_tedi_1:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

out_user:
		movem.l    d3-d4/a2-a6,-(a7)
		movea.l    a0,a2
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_user_1
		lea.l      22(a2),a0
		bsr        info_list
		movea.l    4(a2),a2
		lea.l      x99190,a3
		lea.l      1348(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a6
		bra        out_user_2
out_user_3:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a4
		lea.l      22(a4),a0
		bsr        info_obj
		movea.l    4(a4),a5
		movea.l    (a5),a0
		pea.l      22(a0)
		pea.l      22(a4)
		lea.l      1373(a3),a1
		movea.l    a6,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a6,a0
		jsr        save_string
		lea.l      1403(a3),a1
		movea.l    4(a5),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    8(a5),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    12(a5),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    16(a5),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    20(a5),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    24(a5),a0
		bsr        out_label
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    28(a5),a0
		bsr        out_label
		lea.l      197(a3),a0
		jsr        save_string
		addq.w     #1,d4
out_user_2:
		cmp.w      d4,d3
		bgt        out_user_3
out_user_1:
		movem.l    (a7)+,d3-d4/a2-a6
		rts

out_window:
		movem.l    d3-d4/a2-a6,-(a7)
		movea.l    a0,a2
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_window_1
		lea.l      22(a2),a0
		bsr        info_list
		movea.l    4(a2),a2
		lea.l      x99190,a3
		lea.l      1406(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a6
		bra        out_window_2
out_window_3:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a4
		lea.l      22(a4),a0
		bsr        info_obj
		movea.l    4(a4),a5
		pea.l      22(a4)
		lea.l      1430(a3),a1
		movea.l    a6,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a6,a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    (a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1454(a3),a1
		movea.l    4(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1466(a3),a1
		movea.l    8(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1481(a3),a1
		movea.l    12(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1490(a3),a1
		movea.l    16(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    20(a5),a0
		bsr        out_label2
		lea.l      118(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    24(a5),a0
		bsr        out_label2
		lea.l      1499(a3),a0
		jsr        save_string
		move.w     42(a5),-(a7)
		move.w     40(a5),-(a7)
		move.w     38(a5),-(a7)
		move.w     36(a5),-(a7)
		move.w     34(a5),-(a7)
		lea.l      1515(a3),a1
		movea.l    a6,a0
		jsr        sprintf
		lea.l      10(a7),a7
		movea.l    a6,a0
		jsr        save_string
		lea.l      1547(a3),a0
		jsr        save_string
		move.w     72(a5),-(a7)
		lea.l      1603(a3),a1
		movea.l    a6,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a6,a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    74(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    78(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		move.w     84(a5),-(a7)
		move.w     82(a5),-(a7)
		lea.l      1613(a3),a1
		movea.l    a6,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a6,a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    90(a5),a0
		bsr        out_label2
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    94(a5),a0
		bsr        out_label2
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1635(a3),a1
		movea.l    98(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1644(a3),a1
		movea.l    102(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1657(a3),a1
		movea.l    106(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1668(a3),a1
		movea.l    110(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1679(a3),a1
		movea.l    114(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1690(a3),a1
		movea.l    118(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1701(a3),a1
		movea.l    122(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1713(a3),a1
		movea.l    126(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1723(a3),a1
		movea.l    130(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1733(a3),a1
		movea.l    134(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1743(a3),a1
		movea.l    138(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1753(a3),a1
		movea.l    142(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1765(a3),a1
		movea.l    146(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      1779(a3),a1
		movea.l    150(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    154(a5),a0
		bsr        out_label
		lea.l      94(a3),a0
		jsr        save_string
		lea.l      121(a3),a1
		movea.l    158(a5),a0
		bsr        out_label
		lea.l      1793(a3),a0
		jsr        save_string
		addq.w     #1,d4
out_window_2:
		cmp.w      d4,d3
		bgt        out_window_3
out_window_1:
		movem.l    (a7)+,d3-d4/a2-a6
		rts

out_refs:
		movem.l    d3-d5/a2-a5,-(a7)
		movea.l    60(a0),a0
		move.l     14(a0),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_refs_1
		movea.l    4(a0),a2
		lea.l      x99190,a3
		lea.l      1805(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a5
		bra.s      out_refs_2
out_refs_5:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a4
		lea.l      22(a4),a0
		bsr        info_obj
		move.w     56(a4),d5
		move.l     14(a4),d0
		ble.s      out_refs_3
		movea.l    4(a4),a0
		jsr        save_string
		bra.s      out_refs_4
out_refs_3:
		move.w     d5,d0
		and.w      #$00FF,d0
		beq.s      out_refs_4
		move.w     d5,d1
		and.w      #$0200,d1
		bne.s      out_refs_4
		pea.l      22(a4)
		lea.l      1837(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a5,a0
		jsr        save_string
out_refs_4:
		lea.l      50(a3),a0
		jsr        save_string
		addq.w     #1,d4
out_refs_2:
		cmp.w      d4,d3
		bgt.s      out_refs_5
out_refs_1:
		movem.l    (a7)+,d3-d5/a2-a5
		rts

out_declproto:
		movem.l    d3-d5/a2-a5,-(a7)
		movea.l    a0,a3
		movea.l    60(a3),a2
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_declproto_1
		movea.l    60(a3),a0
		lea.l      22(a0),a0
		bsr        info_list
		movea.l    4(a2),a2
		lea.l      x99190,a3
		lea.l      1874(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a5
		bra        out_declproto_2
out_declproto_27:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a4
		move.w     56(a4),d5
		move.w     d5,d1
		and.w      #$0700,d1
		beq.s      out_declproto_3
		cmp.w      #$0500,d1
		bne        out_declproto_4
out_declproto_3:
		lea.l      22(a4),a0
		bsr        info_obj
		move.w     d5,d0
		and.w      #$00FF,d0
		cmp.w      #$0025,d0
		bhi        out_declproto_5
		add.w      d0,d0
		move.w     J5(pc,d0.w),d0
		jmp        J5(pc,d0.w)
J5:
		dc.w out_declproto_6-J5
		dc.w out_declproto_7-J5
		dc.w out_declproto_7-J5
		dc.w out_declproto_8-J5
		dc.w out_declproto_9-J5
		dc.w out_declproto_5-J5
		dc.w out_declproto_10-J5
		dc.w out_declproto_11-J5
		dc.w out_declproto_10-J5
		dc.w out_declproto_12-J5
		dc.w out_declproto_13-J5
		dc.w out_declproto_14-J5
		dc.w out_declproto_15-J5
		dc.w out_declproto_5-J5
		dc.w out_declproto_15-J5
		dc.w out_declproto_16-J5
		dc.w out_declproto_17-J5
		dc.w out_declproto_17-J5
		dc.w out_declproto_14-J5
		dc.w out_declproto_14-J5
		dc.w out_declproto_15-J5
		dc.w out_declproto_18-J5
		dc.w out_declproto_19-J5
		dc.w out_declproto_10-J5
		dc.w out_declproto_20-J5
		dc.w out_declproto_21-J5
		dc.w out_declproto_21-J5
		dc.w out_declproto_7-J5
		dc.w out_declproto_7-J5
		dc.w out_declproto_7-J5
		dc.w out_declproto_22-J5
		dc.w out_declproto_22-J5
		dc.w out_declproto_7-J5
		dc.w out_declproto_23-J5
		dc.w out_declproto_24-J5
		dc.w out_declproto_7-J5
		dc.w out_declproto_23-J5
		dc.w out_declproto_25-J5
out_declproto_7:
		pea.l      22(a4)
		lea.l      1908(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_8:
		pea.l      22(a4)
		lea.l      1934(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_9:
		pea.l      22(a4)
		lea.l      1974(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_10:
		pea.l      22(a4)
		lea.l      2036(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_11:
		pea.l      22(a4)
		lea.l      2072(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_12:
		pea.l      22(a4)
		lea.l      2108(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_13:
		pea.l      22(a4)
		lea.l      2169(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_14:
		pea.l      22(a4)
		lea.l      2229(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_15:
		pea.l      22(a4)
		lea.l      2277(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_16:
		pea.l      22(a4)
		lea.l      2312(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_17:
		pea.l      22(a4)
		lea.l      2372(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_18:
		pea.l      22(a4)
		lea.l      2418(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_6:
		clr.b      (a5)
		bra        out_declproto_26
out_declproto_19:
		pea.l      22(a4)
		lea.l      2480(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_20:
		pea.l      22(a4)
		lea.l      2527(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_26
out_declproto_21:
		pea.l      22(a4)
		lea.l      2609(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_26
out_declproto_22:
		pea.l      22(a4)
		lea.l      2636(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_26
out_declproto_24:
		pea.l      22(a4)
		lea.l      2673(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_26
out_declproto_23:
		pea.l      22(a4)
		lea.l      2724(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_26
out_declproto_25:
		pea.l      22(a4)
		lea.l      2771(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_26
out_declproto_5:
		move.w     d5,d0
		and.w      #$00FF,d0
		move.w     d0,-(a7)
		pea.l      22(a4)
		lea.l      2837(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #6,a7
out_declproto_26:
		movea.l    a5,a0
		jsr        save_string
out_declproto_4:
		addq.w     #1,d4
out_declproto_2:
		cmp.w      d4,d3
		bgt        out_declproto_27
		lea.l      409(a3),a0
		jsr        save_string
out_declproto_1:
		movem.l    (a7)+,d3-d5/a2-a5
		rts

pc_output:
		movem.l    d3-d5/a2-a5,-(a7)
		lea.l      -136(a7),a7
		movea.l    a0,a2
		moveq.l    #92,d0
		movea.l    8(a2),a0
		jsr        strrchr
		addq.w     #1,a0
		move.l     a0,(a7)
		lea.l      4(a7),a4
		movea.l    8(a2),a1
		movea.l    a4,a0
		jsr        strcpy
		moveq.l    #46,d0
		movea.l    a4,a0
		jsr        strrchr
		movea.l    a0,a3
		lea.l      x99190,a5
		lea.l      2859(a5),a1
		movea.l    a3,a0
		jsr        strcpy
		clr.w      d0
		movea.l    a4,a0
		jsr        Fcreate
		move.l     d0,d3
		tst.l      d0
		bpl.s      pc_output_1
		movea.l    (a7),a0
		movea.l    ACSblk,a1
		movea.l    982(a1),a1
		moveq.l    #9,d0
		jsr        (a1)
		bra        pc_output_2
pc_output_1:
		movea.l    a4,a0
		bsr        info_start
		lea.l      2863(a5),a0
		bsr        info_title
		move.w     d3,d0
		jsr        set_handle
		jsr        setjmp
		tst.w      d0
		beq.s      pc_output_3
		suba.l     a0,a0
		moveq.l    #10,d0
		movea.l    ACSblk,a1
		movea.l    982(a1),a1
		jsr        (a1)
		bra        pc_output_4
pc_output_3:
		suba.l     a0,a0
		jsr        time
		move.l     d0,132(a7)
		lea.l      iostring,a3
		move.l     8(a2),-(a7)
		lea.l      136(a7),a0
		jsr        ctime
		move.l     a0,-(a7)
		lea.l      pc_welcome,a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a3,a0
		jsr        save_string
		lea.l      2875(a5),a0
		jsr        save_string
		clr.w      d4
		bra.s      pc_output_5
pc_output_8:
		moveq.l    #1,d5
		add.w      d4,d5
		bra.s      pc_output_6
pc_output_7:
		moveq.l    #1,d0
		add.w      d5,d0
		move.w     d0,-(a7)
		moveq.l    #1,d1
		add.w      d4,d1
		move.w     d1,-(a7)
		lea.l      2900(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
		lea.l      2949(a5),a0
		jsr        save_string
		addq.w     #1,d5
pc_output_6:
		cmp.w      #$0003,d5
		ble.s      pc_output_7
		addq.w     #1,d4
pc_output_5:
		cmp.w      #$0003,d4
		ble.s      pc_output_8
		lea.l      50(a5),a0
		jsr        save_string
		lea.l      3008(a5),a0
		jsr        save_string
		clr.w      d5
		bra.s      pc_output_9
pc_output_12:
		tst.w      d5
		bne.s      pc_output_10
		moveq.l    #1,d0
		add.w      d5,d0
		move.w     d0,-(a7)
		lea.l      3013(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #2,a7
		bra.s      pc_output_11
pc_output_10:
		moveq.l    #1,d0
		add.w      d5,d0
		move.w     d0,-(a7)
		lea.l      3034(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #2,a7
pc_output_11:
		movea.l    a3,a0
		jsr        save_string
		addq.w     #1,d5
pc_output_9:
		cmp.w      #$0003,d5
		ble.s      pc_output_12
		moveq.l    #1,d0
		add.w      500(a2),d0
		move.w     d0,-(a7)
		lea.l      3059(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a3,a0
		jsr        save_string
		movea.l    a2,a0
		bsr        out_declproto
		lea.l      3091(a5),a0
		jsr        save_string
		lea.l      3119(a5),a0
		jsr        save_string
		clr.w      d5
		bra.w      pc_output_13
pc_output_18:
		cmp.w      500(a2),d5
		bge.s      pc_output_14
		clr.l      -(a7)
		movea.l    36(a2),a1
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      0(a2,d0.l),a0
		movea.l    514(a0),a0
		bsr        out_string
		addq.w     #4,a7
		bra.s      pc_output_15
pc_output_14:
		cmp.w      500(a2),d5
		bne.s      pc_output_16
		clr.l      -(a7)
		movea.l    36(a2),a1
		movea.l    36(a2),a0
		bsr        out_string
		addq.w     #4,a7
		bra.s      pc_output_15
pc_output_16:
		clr.l      -(a7)
		movea.l    36(a2),a1
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      0(a2,d0.l),a0
		movea.l    510(a0),a0
		bsr        out_string
		addq.w     #4,a7
pc_output_15:
		cmp.w      #$0003,d5
		bge.s      pc_output_17
		moveq.l    #2,d0
		add.w      d5,d0
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		lea.l      3176(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
pc_output_17:
		addq.w     #1,d5
pc_output_13:
		cmp.w      #$0003,d5
		ble.w      pc_output_18
		lea.l      3237(a5),a0
		jsr        save_string
		lea.l      3301(a5),a0
		jsr        save_string
		lea.l      3325(a5),a0
		jsr        save_string
		clr.w      d5
		bra.w      pc_output_19
pc_output_24:
		cmp.w      500(a2),d5
		bge.s      pc_output_20
		clr.l      -(a7)
		movea.l    52(a2),a1
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      0(a2,d0.l),a0
		movea.l    502(a0),a0
		bsr        out_string
		addq.w     #4,a7
		bra.s      pc_output_21
pc_output_20:
		cmp.w      500(a2),d5
		bne.s      pc_output_22
		clr.l      -(a7)
		movea.l    52(a2),a1
		movea.l    52(a2),a0
		bsr        out_string
		addq.w     #4,a7
		bra.s      pc_output_21
pc_output_22:
		clr.l      -(a7)
		movea.l    52(a2),a1
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      0(a2,d0.l),a0
		movea.l    498(a0),a0
		bsr        out_string
		addq.w     #4,a7
pc_output_21:
		cmp.w      #$0003,d5
		bge.s      pc_output_23
		moveq.l    #2,d0
		add.w      d5,d0
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		lea.l      3384(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
pc_output_23:
		addq.w     #1,d5
pc_output_19:
		cmp.w      #$0003,d5
		ble.w      pc_output_24
		lea.l      3237(a5),a0
		jsr        save_string
		movea.l    68(a2),a0
		bsr        out_data
		movea.l    40(a2),a0
		bsr        out_tedi
		movea.l    56(a2),a0
		bsr        out_user
		movea.l    44(a2),a0
		bsr        out_icon
		movea.l    48(a2),a0
		bsr        out_image
		lea.l      3446(a5),a1
		movea.l    28(a2),a0
		bsr        out_obj
		lea.l      3473(a5),a1
		movea.l    32(a2),a0
		bsr        out_obj
		lea.l      3501(a5),a1
		movea.l    24(a2),a0
		bsr        out_obj
		movea.l    20(a2),a0
		bsr        out_window
		movea.l    64(a2),a0
		bsr        out_mouse
		movea.l    a2,a0
		bsr        out_acs
		move.w     6(a2),d0
		and.w      #$2000,d0
		beq.s      pc_output_25
		movea.l    a2,a0
		bsr        out_refs
pc_output_25:
		jsr        close_buf
pc_output_4:
		bsr        info_end
		move.w     d3,d0
		jsr        Fclose
pc_output_2:
		lea.l      136(a7),a7
		movem.l    (a7)+,d3-d5/a2-a5
		rts

	.data

xacc_types:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $57
		dc.w $5000
		dc.w $4454
		dc.b $00
		dc.b $45
		dc.w $4400
		dc.w $4442
		dc.b $00
		dc.b $53
		dc.w $5300
		dc.w $5247
		dc.b $00
		dc.b $56
		dc.w $4700
		dc.w $4747
		dc.b $00
		dc.b $4d
		dc.w $5500
		dc.w $4344
		dc.b $00
		dc.b $44
		dc.w $4300
		dc.w $4454
		dc.b $00
		dc.b $50
		dc.w $4500
x99190:
		dc.b $00
x99191:
		dc.b '%-12s',0
x99197:
		dc.b '&%-12s',0
x9919e:
		dc.b '&%-12s[3]',0
x991a8:
		dc.b $0d,$0a,$0d,$0a,'Adescr ACSdescr =',0
x991be:
		dc.b $0d,$0a,$09,'{',$0d,$0a,0
x991c5:
		dc.b $09,$09,'"%s", %d,',$0d,$0a,$09,$09,'%2d, %2d,',$0d,$0a,$09,$09,'%#4x,',$0d,$0a,$09,$09,'"%s",',$0d,$0a,$09,$09,0
x991f4:
		dc.b 'ACS3.00',0
x991fc:
		dc.b '&PUR_DESK',0
x99206:
		dc.w $2c20
x99208:
		dc.b $00
x99209:
		dc.b 'NULL',0
x9920e:
		dc.b ',',$0d,$0a,$09,$09,'{',$0d,$0a,0
x99217:
		dc.b ',',$0d,$0a,0
x9921b:
		dc.b $09,$09,$09,'{%3d, NULL}',0
x9922a:
		dc.b $09,$09,$09,'{255, &%s}',0
x99238:
		dc.b $0d,$0a,$09,$09,'},',$0d,$0a,0
x99241:
		dc.b 'ACS(%02d)',0
x9924b:
		dc.b $09,$09,'"%s"',0
x99252:
		dc.w $2c00
x99254:
		dc.b $09,'};',$0d,$0a,0
x9925a:
		dc.b $0d,$0a,$0d,$0a,' Aconfig ACSconfig =',0
x99273:
		dc.b $0d,$0a,$09,'{',$0d,$0a,$09,$09,0
x9927c:
		dc.w $7b22
x9927e:
		dc.b $00
x9927f:
		dc.b '", "',0
x99284:
		dc.w $253b
x99286:
		dc.b $00
x99287:
		dc.b '", ',0
x9928b:
		dc.b 'TRUE, ',0
x99292:
		dc.b 'FALSE, ',0
x9929a:
		dc.b '%i},',$0d,$0a,$09,$09,0
x992a3:
		dc.b '4},',$0d,$0a,$09,$09,0
x992ab:
		dc.b ', ',$0d,$0a,$09,$09,0
x992b2:
		dc.b '%i, ',0
x992b7:
		dc.b $27,'%s',$27,', ',0
x992be:
		dc.b '0, ',0
x992c2:
		dc.b 'ACSinit',0
x992ca:
		dc.b $0d,$0a,$09,'};',$0d,$0a,0
x992d2:
		dc.b 'static CICON _C%d_%-s = {',$0d,$0a,$09,$09,'%d,',$0d,$0a,$09,$09,0
x992f7:
		dc.b ',',$0d,$0a,$09,$09,'&_C%d_%-s};',$0d,$0a,0
x9930a:
		dc.b ',',$0d,$0a,$09,$09,'NULL};',$0d,$0a,0
x99318:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ICONS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x9932e:
		dc.b 'static int16 _MSK_%-s [] = {',$0d,$0a,$09,$09,0
x9934f:
		dc.b '%#06x, ',0
x99357:
		dc.b '%#06x};',$0d,$0a,'static int16 _DAT_%-s [] = {',$0d,$0a,$09,$09,0
x99381:
		dc.b '%#06x};',$0d,$0a,0
x9938b:
		dc.b '       ',0
x99393:
		dc.b 'static ',0
x9939b:
		dc.b 'CICONBLK %-s = {{',$0d,$0a
		dc.b $09,$09,'_MSK_%-s, _DAT_%-s, %-s,',$0d,$0a
		dc.b $09,$09,'%#6x, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d},',0
x99405:
		dc.b '&_C%d_%-s',0
x9940f:
		dc.b '};',$0d,$0a,$0d,$0a,0
x99416:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'MOUSEFORMS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99431:
		dc.b 'MFORM %-s =',$0d,$0a
		dc.b $09,$09,'{',$0d,$0a
		dc.b $09,$09,$09,'%2d, %2d, %2d, %2d, %2d,',$0d,$0a
		dc.b $09,$09,$09,'{',$0d,$0a
		dc.b $09,$09,$09,$09,0
x9946b:
		dc.b '%#06x',$0d,$0a,$09,$09,$09,'},',$0d,$0a,$09,$09,$09,'{',$0d,$0a,$09,$09,$09,$09,0
x99484:
		dc.b '%#06x',$0d,$0a,$09,$09,$09,'}',$0d,$0a,$09,$09,'};',$0d,$0a,$0d,$0a,$0d,$0a,0
x9949c:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'IMAGES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x994b3:
		dc.b 'static int16 _IMG_%-s [] =',$0d,$0a,$09,'{',$0d,$0a,$09,$09,0
x994d6:
		dc.b '%#06x',$0d,$0a,$09,'};',$0d,$0a,0
x994e3:
		dc.b 'BITBLK %-s = {_IMG_%-s, %2d, %2d, %2d, %2d, %#04x};',$0d,$0a,$0d,$0a,0
x9951b:
		dc.b '#define %-14s (%3d)',$0d,$0a,0
x99531:
		dc.b 'OBJECT  %-12s    ',0
x99543:
		dc.b 'static OBJECT  _%02d_%-12s',0
x9955e:
		dc.b ' = { %2d, %2d, %2d, %2d, %#6x, %#6x, ',0
x99584:
		dc.b ' %#010lxL',$09,$09,$09,$09,0
x99592:
		dc.b '(long) %-12s',0
x9959f:
		dc.b '(long) &%-12s',0
x995ad:
		dc.b ' , %2d, %2d, %2d, %2d };',$0d,$0a,0
x995c8:
		dc.b 'static AOBJECT _%02da%-12s = {',0
x995e7:
		dc.b 'NULL',$09,$09,' ',0
x995ef:
		dc.b 'NULL',$09,$09,$09,$09,0
x995f8:
		dc.b '0',$09,$09,$09,$09,$09,0
x995ff:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'DATAS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99615:
		dc.b 'int16 %-12s [] =',$0d,$0a,$09,'{',$0d,$0a,$09,$09,$09,0
x9962f:
		dc.b '%#06x',$0d,$0a,$09,'};',$0d,$0a,$0d,$0a,0
x9963e:
		dc.b 'ACS(',0
x99643:
		dc.b 'char ',0
x99649:
		dc.b ' [] = "',0
x99651:
		dc.b $5c
		dc.w $6e00
x99654:
		dc.w $5c72
		dc.b $00
x99657:
		dc.b $5c
		dc.w $7400
		dc.w $5c76
		dc.b $00
x9965d:
		dc.b $5c
		dc.w $6200
x99660:
		dc.w $5c61
		dc.b $00
x99663:
		dc.b $5c
		dc.w $6600
x99666:
		dc.w $5c22
		dc.b $00
x99669:
		dc.b $5c
		dc.w $5c00
x9966c:
		dc.b '";',$0d,$0a,0
x99671:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'TEDINFOS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x9968a:
		dc.b 'static TEDINFO %-12s = {%s, %s, %s, %d, %d, %d, %#x, %d, %d, %ld, %ld};',$0d,$0a,0
x996d4:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'AUSERBLK',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x996ed:
		dc.b 'static AUSERBLK %-12s = {%s, ',0
x9970b:
		dc.b $30
		dc.w $4c00
x9970e:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'WINDOWS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99726:
		dc.b 'Awindow %-12s =',$0d,$0a,$09,'{',$0d,$0a,$09,$09,0
x9973e:
		dc.b 'Awi_service',0
x9974a:
		dc.b 'Awi_selfcreate',0
x99759:
		dc.b 'Awi_open',0
x99762:
		dc.b 'Awi_init',0
x9976b:
		dc.b ', 0, 0, -1,',$0d,$0a,$09,$09,0
x9977b:
		dc.b '%#6x, {%2i, %2i, %2i, %2i},',$0d,$0a,$09,$09,0
x9979b:
		dc.b '{0, 0, 0, 0}, {0, 0, 0, 0}, {-1, -1, -1, -1}, 0, 0,',$0d,$0a,$09,$09,0
x997d3:
		dc.b '%#6x,',$0d,$0a,$09,$09,0
x997dd:
		dc.b '%4d, %#6x, 0, -1,',$0d,$0a,$09,$09,0
x997f3:
		dc.b 'Awi_keys',0
x997fc:
		dc.b 'Awi_obchange',0
x99809:
		dc.b 'Awi_redraw',0
x99814:
		dc.b 'Awi_topped',0
x9981f:
		dc.b 'Awi_closed',0
x9982a:
		dc.b 'Awi_fulled',0
x99835:
		dc.b 'Awi_arrowed',0
x99841:
		dc.b 'Awi_hslid',0
x9984b:
		dc.b 'Awi_vslid',0
x99855:
		dc.b 'Awi_sized',0
x9985f:
		dc.b 'Awi_moved',0
x99869:
		dc.b 'Awi_iconify',0
x99875:
		dc.b 'Awi_uniconify',0
x99883:
		dc.b 'Awi_gemscript',0
x99891:
		dc.b $0d,$0a,$09,'};',$0d,$0a,$0d,$0a,$0d,$0a,0
x9989d:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ANSI-C Routines',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x998bd:
		dc.b '/* ',$27,'%s',$27,' Not yet defined by user */',$0d,$0a,0
x998e2:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ANSI-C Prototypes',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99904:
		dc.b 'static void %s( void );',$0d,$0a,0
x9991e:
		dc.b 'static int16 CDECL %s( PARMBLK* pb );',$0d,$0a,0
x99946:
		dc.b 'static int16 %s( OBJECT *entry, int16 task, void *in_out );',$0d,$0a,0
x99984:
		dc.b 'static int16 %s( Awindow* wind );',$0d,$0a,0
x999a8:
		dc.b 'static Awindow *%s( void *para );',$0d,$0a,0
x999cc:
		dc.b 'static int16 %s( Awindow *wind, int16 kstate, int16 key );',$0d,$0a,0
x99a09:
		dc.b 'static void %s( Awindow *wind, int16 obnr, int16 state );',$0d,$0a,0
x99a45:
		dc.b 'static void %s( Awindow *wind, Axywh *area );',$0d,$0a,0
x99a75:
		dc.b 'static void %s( Awindow *wind );',$0d,$0a,0
x99a98:
		dc.b 'static void %s( Awindow *wind, int16 pos, int16 amount );',$0d,$0a,0
x99ad4:
		dc.b 'static void %s( Awindow *wind, int16 pos );',$0d,$0a,0
x99b02:
		dc.b 'static int16 %s( Awindow *wind, int16 task, void *in_out );',$0d,$0a,0
x99b40:
		dc.b 'static int16 %s( Awindow *wind, int16 all );',$0d,$0a,0
x99b6f:
		dc.b 'static int16 %s( Awindow *wind, int16 anz, char **cmds, A_GSAntwort *antwort );',$0d,$0a,0
x99bc1:
		dc.b 'static int16 %s( void );',$0d,$0a,0
x99bdc:
		dc.b 'static int16 %s( int16 *message );',$0d,$0a,0
x99c01:
		dc.b 'static void %s( int16 *button, int16 *kreturn );',$0d,$0a,0
x99c34:
		dc.b 'static void %s( int16 *kstate, int16 *key );',$0d,$0a,0
x99c63:
		dc.b 'static int16 %s( int16 anz, char **cmd, A_GSAntwort *antwort );',$0d,$0a,0
x99ca5:
		dc.b '/* %s Type %d ?? */',$0d,$0a,0
x99cbb:
		dc.b '.AH',0
x99cbf:
		dc.b 'ANSI C Code',0
x99ccb:
		dc.b $0d,$0a,'/*',$09,$09,'GUI-LANGUAGE',$09,$09,'*/',$0d,$0a,0
x99ce4:
		dc.b '#if defined(ACS_LANG%d) && defined(ACS_LANG%d)',$0d,$0a,0
x99d15:
		dc.b $09,'#error "More than one language macros defined!"',$0d,$0a,'#endif',$0d,$0a,0
x99d50:
		dc.b '#if ',0
x99d55:
		dc.b '!defined(ACS_LANG%d)',0
x99d6a:
		dc.b ' && !defined(ACS_LANG%d)',0
x99d83:
		dc.b $0d,$0a,$09,'#define ACS_LANG%d',$0d,$0a,'#endif',$0d,$0a,0
x99da3:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ALERT BOXES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99dbf:
		dc.b $0d,$0a,'#if defined(ACS_LANG1)',$09,$09,$09,'/*',$09,$09,'Alerts: ACS_LANG1',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99df8:
		dc.b $0d,$0a,'#elif defined(ACS_LANG%d)',$09,$09,$09,'/*',$09,$09,'Alerts: ACS_LANG%d',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99e35:
		dc.b $0d,$0a,'#else',$0d,$0a,$0d,$0a,$09,'#error "Wrong Language Macro defined"',$0d,$0a,$0d,$0a,'#endif',$0d,$0a,$0d,$0a,0
x99e75:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'STRINGS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99e8d:
		dc.b $0d,$0a,'#if defined(ACS_LANG1)',$09,$09,$09,$09,'/*',$09,$09,'Strings: ACS_LANG1',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99ec8:
		dc.b $0d,$0a,'#elif defined(ACS_LANG%d)',$09,$09,$09,'/*',$09,$09,'Strings: ACS_LANG%d',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99f06:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'MENU TREES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99f21:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'POPUP TREES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
x99f3d:
		dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'OBJECT TREES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
		.even

	.bss

info_xywh: ds.w 4
info_bp: ds.l 1
work: ds.l 1
mapX: ds.w 1000
