
p_string:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #8,a7
		movea.l    a0,a3
		move.b     d0,d3
		lea.l      x99f5a,a1
		lea.l      (a7),a0
		move.b     (a1)+,(a0)+
		move.b     (a1)+,(a0)+
		move.b     (a1)+,(a0)+
		move.b     (a1)+,(a0)+
		lea.l      x99f7e,a2
		movea.l    a2,a0
		jsr        save_string
		lea.l      4(a7),a4
		bra        p_string_1
p_string_6:
		move.b     (a3),d0
		ext.w      d0
		subq.w     #7,d0
		cmp.w      #$0020,d0
		bhi.s      p_string_2
		add.w      d0,d0
		move.w     J6(pc,d0.w),d0
		jmp        J6(pc,d0.w)
J6:
		dc.w p_string_3-J6
		dc.w p_string_3-J6
		dc.w p_string_3-J6
		dc.w p_string_3-J6
		dc.w p_string_3-J6
		dc.w p_string_3-J6
		dc.w p_string_3-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_2-J6
		dc.w p_string_4-J6
p_string_3:
		move.b     (a3),d0
		ext.w      d0
		move.w     d0,-(a7)
		lea.l      2(a2),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		bra.s      p_string_5
p_string_4:
		lea.l      8(a2),a1
		movea.l    a4,a0
		jsr        strcpy
		bra.s      p_string_5
p_string_2:
		move.b     (a3),d0
		ext.w      d0
		move.w     d0,-(a7)
		lea.l      11(a2),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
p_string_5:
		movea.l    a4,a0
		jsr        save_string
		addq.w     #1,a3
p_string_1:
		move.b     (a3),d0
		bne        p_string_6
		lea.l      14(a2),a0
		jsr        save_string
		move.b     d3,(a7)
		lea.l      (a7),a0
		jsr        save_string
		addq.w     #8,a7
		movem.l    (a7)+,d3/a2-a4
		rts

out_label:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a1,a4
		move.l     a2,d0
		beq.s      out_label_1
		lea.l      iostring,a3
		pea.l      22(a2)
		lea.l      x99f90,a1
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
		lea.l      x99f93,a1
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
		lea.l      x99f97,a1
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

out_refs:
		movem.l    d3-d5/a2-a5,-(a7)
		movea.l    60(a0),a0
		move.l     14(a0),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_refs_1
		movea.l    4(a0),a2
		lea.l      x99f7e,a3
		lea.l      35(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a5
		bra.s      out_refs_2
out_refs_6:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a4
		lea.l      22(a4),a0
		jsr        info_obj
		move.w     56(a4),d5
		move.l     14(a4),d0
		beq.s      out_refs_3
		movea.l    4(a4),a0
		jsr        save_string
		bra.s      out_refs_4
out_refs_3:
		tst.b      d5
		beq.s      out_refs_5
		move.w     d5,d0
		and.w      #$0200,d0
		bne.s      out_refs_5
		pea.l      22(a4)
		lea.l      81(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a5,a0
		jsr        save_string
out_refs_4:
		lea.l      78(a3),a0
		jsr        save_string
out_refs_5:
		addq.w     #1,d4
out_refs_2:
		cmp.w      d4,d3
		bgt.s      out_refs_6
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
		jsr        info_list
		movea.l    4(a2),a2
		lea.l      x99f7e,a3
		lea.l      118(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a5
		bra        out_declproto_2
out_declproto_21:
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
		jsr        info_obj
		move.w     d5,d0
		and.w      #$00FF,d0
		cmp.w      #$0018,d0
		bhi        out_declproto_5
		add.w      d0,d0
		move.w     J7(pc,d0.w),d0
		jmp        J7(pc,d0.w)
J7:
		dc.w out_declproto_6-J7
		dc.w out_declproto_7-J7
		dc.w out_declproto_7-J7
		dc.w out_declproto_8-J7
		dc.w out_declproto_9-J7
		dc.w out_declproto_5-J7
		dc.w out_declproto_10-J7
		dc.w out_declproto_11-J7
		dc.w out_declproto_10-J7
		dc.w out_declproto_12-J7
		dc.w out_declproto_13-J7
		dc.w out_declproto_14-J7
		dc.w out_declproto_15-J7
		dc.w out_declproto_5-J7
		dc.w out_declproto_15-J7
		dc.w out_declproto_16-J7
		dc.w out_declproto_16-J7
		dc.w out_declproto_16-J7
		dc.w out_declproto_14-J7
		dc.w out_declproto_14-J7
		dc.w out_declproto_15-J7
		dc.w out_declproto_17-J7
		dc.w out_declproto_18-J7
		dc.w out_declproto_10-J7
		dc.w out_declproto_19-J7
out_declproto_7:
		pea.l      22(a4)
		lea.l      152(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_20
out_declproto_8:
		pea.l      22(a4)
		lea.l      168(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_20
out_declproto_9:
		pea.l      22(a4)
		lea.l      236(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_20
out_declproto_10:
		pea.l      22(a4)
		lea.l      316(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_20
out_declproto_11:
		pea.l      22(a4)
		lea.l      359(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_20
out_declproto_12:
		pea.l      22(a4)
		lea.l      404(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_20
out_declproto_13:
		pea.l      22(a4)
		lea.l      469(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_20
out_declproto_14:
		pea.l      22(a4)
		lea.l      525(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra        out_declproto_20
out_declproto_15:
		pea.l      22(a4)
		lea.l      575(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_20
out_declproto_16:
		pea.l      22(a4)
		lea.l      609(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_20
out_declproto_17:
		pea.l      22(a4)
		lea.l      657(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_20
out_declproto_6:
		clr.b      (a5)
		bra.s      out_declproto_20
out_declproto_18:
		pea.l      22(a4)
		lea.l      732(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_20
out_declproto_19:
		pea.l      22(a4)
		lea.l      789(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_declproto_20
out_declproto_5:
		move.w     d5,d0
		and.w      #$00FF,d0
		move.w     d0,-(a7)
		pea.l      22(a4)
		lea.l      885(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #6,a7
out_declproto_20:
		movea.l    a5,a0
		jsr        save_string
out_declproto_4:
		addq.w     #1,d4
out_declproto_2:
		cmp.w      d4,d3
		bgt        out_declproto_21
		lea.l      76(a3),a0
		jsr        save_string
out_declproto_1:
		movem.l    (a7)+,d3-d5/a2-a5
		rts

out_acs:
		movem.l    d3-d4/a2-a6,-(a7)
		lea.l      -68(a7),a7
		movea.l    a0,a2
		lea.l      x99f5e,a1
		lea.l      (a7),a0
		moveq.l    #31,d0
out_acs_1:
		move.b     (a1)+,(a0)+
		dbf        d0,out_acs_1
		move.w     6(a2),d0
		and.w      #$8000,d0
		bne        out_acs_2
		lea.l      x99f7e,a3
		lea.l      907(a3),a0
		jsr        save_string
		lea.l      iostring,a4
		move.w     90(a2),-(a7)
		move.w     88(a2),-(a7)
		move.w     86(a2),-(a7)
		move.w     #$012C,-(a7)
		pea.l      1013(a3)
		lea.l      937(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		lea.l      12(a7),a7
		movea.l    a4,a0
		jsr        save_string
		lea.l      92(a2),a5
		moveq.l    #31,d0
		movea.l    a5,a1
		lea.l      (a7),a0
		jsr        strncpy
		clr.b      31(a7)
		moveq.l    #59,d0
		lea.l      (a7),a0
		bsr        p_string
		lea.l      1021(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    124(a2),a0
		bsr        out_label2
		lea.l      1034(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    128(a2),a0
		bsr        out_label2
		lea.l      1042(a3),a0
		jsr        save_string
		lea.l      132(a2),a5
		clr.w      d3
		bra.s      out_acs_3
out_acs_7:
		tst.w      d3
		beq.s      out_acs_4
		lea.l      1058(a3),a0
		jsr        save_string
out_acs_4:
		cmpi.w     #$00FF,(a5)
		bne.s      out_acs_5
		movea.l    2(a5),a0
		pea.l      22(a0)
		lea.l      1062(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_acs_6
out_acs_5:
		move.w     (a5),-(a7)
		lea.l      1090(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
out_acs_6:
		movea.l    a4,a0
		jsr        save_string
		addq.w     #6,a5
		addq.w     #1,d3
out_acs_3:
		cmp.w      #$0020,d3
		blt.s      out_acs_7
		lea.l      1118(a3),a0
		jsr        save_string
		clr.w      d3
		lea.l      32(a7),a5
		bra.s      out_acs_8
out_acs_13:
		lea.l      1138(a3),a0
		jsr        save_string
		cmp.w      #$0021,d3
		bge.s      out_acs_9
		moveq.l    #44,d4
		bra.s      out_acs_10
out_acs_9:
		clr.b      d4
out_acs_10:
		move.w     d3,-(a7)
		lea.l      1143(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a1
		movea.l    52(a2),a0
		jsr        find_entry
		movea.l    a0,a6
		move.l     a6,d0
		bne.s      out_acs_11
		movea.l    a5,a1
		movea.l    36(a2),a0
		jsr        find_entry
		movea.l    a0,a6
		move.l     a6,d0
		bne.s      out_acs_11
		move.b     d4,d0
		move.w     d3,d1
		ext.l      d1
		lsl.l      #2,d1
		lea.l      mlmess,a1
		movea.l    0(a1,d1.l),a0
		bsr        p_string
		bra.s      out_acs_12
out_acs_11:
		move.b     d4,d0
		movea.l    4(a6),a0
		bsr        p_string
out_acs_12:
		addq.w     #1,d3
out_acs_8:
		cmp.w      #$0022,d3
		blt.s      out_acs_13
		lea.l      1153(a3),a0
		jsr        save_string
		lea.l      1166(a3),a0
		jsr        save_string
		lea.l      1200(a3),a0
		jsr        save_string
		lea.l      1(a3),a1
		movea.l    532(a2),a0
		bsr        out_label
		lea.l      1228(a3),a0
		jsr        save_string
		lea.l      1242(a3),a1
		movea.l    536(a2),a0
		bsr        out_label
		lea.l      1245(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    540(a2),a0
		bsr        out_label
		lea.l      1262(a3),a0
		jsr        save_string
		move.w     544(a2),d0
		beq.s      out_acs_14
		lea.l      1284(a3),a0
		bra.s      out_acs_15
out_acs_14:
		lea.l      1289(a3),a0
out_acs_15:
		jsr        save_string
		lea.l      1295(a3),a0
		jsr        save_string
		move.w     546(a2),d0
		beq.s      out_acs_16
		lea.l      1284(a3),a0
		bra.s      out_acs_17
out_acs_16:
		lea.l      1289(a3),a0
out_acs_17:
		jsr        save_string
		lea.l      1313(a3),a0
		jsr        save_string
		move.w     548(a2),-(a7)
		lea.l      1333(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a0
		jsr        save_string
		lea.l      1346(a3),a0
		jsr        save_string
		lea.l      1358(a3),a1
		movea.l    550(a2),a0
		bsr        out_label
		lea.l      1367(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    554(a2),a0
		bsr        out_label
		lea.l      1380(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    558(a2),a0
		bsr        out_label
		lea.l      1395(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    562(a2),a0
		bsr        out_label
		lea.l      1408(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    566(a2),a0
		bsr        out_label
		lea.l      1426(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    570(a2),a0
		bsr        out_label
		lea.l      1440(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    574(a2),a0
		bsr        out_label
		lea.l      1453(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    578(a2),a0
		bsr        out_label
		lea.l      1464(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    582(a2),a0
		bsr        out_label
		lea.l      1481(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    586(a2),a0
		bsr        out_label
		lea.l      1494(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    590(a2),a0
		bsr        out_label
		lea.l      1507(a3),a0
		jsr        save_string
		move.w     594(a2),-(a7)
		lea.l      1524(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a0
		jsr        save_string
		move.w     596(a2),-(a7)
		lea.l      1539(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    598(a2),a0
		bsr        out_label
		lea.l      1158(a3),a0
		jsr        save_string
out_acs_2:
		lea.l      68(a7),a7
		movem.l    (a7)+,d3-d4/a2-a6
		rts

out_cicon:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		move.w     d0,d3
		lea.l      x99f7e,a4
		lea.l      iostring,a5
		move.w     (a2),-(a7)
		move.l     a3,-(a7)
		move.w     (a2),-(a7)
		lea.l      1558(a4),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a5,a0
		jsr        save_string
		lea.l      1030(a4),a1
		movea.l    2(a2),a0
		bsr        out_label3
		lea.l      1614(a4),a0
		jsr        save_string
		lea.l      1030(a4),a1
		movea.l    6(a2),a0
		bsr        out_label2
		lea.l      1630(a4),a0
		jsr        save_string
		lea.l      1030(a4),a1
		movea.l    10(a2),a0
		bsr        out_label3
		lea.l      1646(a4),a0
		jsr        save_string
		lea.l      1030(a4),a1
		movea.l    14(a2),a0
		bsr        out_label2
		tst.w      d3
		beq.s      out_cicon_1
		move.l     a3,-(a7)
		move.w     d3,-(a7)
		lea.l      1662(a4),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a5,a0
		jsr        save_string
		bra.s      out_cicon_2
out_cicon_1:
		lea.l      1691(a4),a0
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
		jsr        info_list
		movea.l    4(a7),a0
		move.l     4(a0),(a7)
		lea.l      x99f7e,a3
		lea.l      1714(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a2
		bra        out_icon_2
out_icon_13:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    (a7),a0
		movea.l    0(a0,d0.l),a4
		lea.l      22(a4),a0
		jsr        info_obj
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
		move.w     d6,-(a7)
		pea.l      22(a4)
		lea.l      1736(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a2,a0
		jsr        save_string
		clr.w      d7
		bra.s      out_icon_5
out_icon_7:
		move.w     (a6)+,-(a7)
		lea.l      1779(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
		moveq.l    #7,d0
		and.w      d7,d0
		subq.w     #7,d0
		bne.s      out_icon_6
		lea.l      1195(a3),a0
		jsr        save_string
out_icon_6:
		addq.w     #1,d7
out_icon_5:
		cmp.w      d7,d6
		bgt.s      out_icon_7
		move.w     d6,-(a7)
		pea.l      22(a4)
		move.w     (a6)+,-(a7)
		lea.l      1787(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a2,a0
		jsr        save_string
		clr.w      d7
		bra.s      out_icon_8
out_icon_10:
		move.w     (a6)+,-(a7)
		lea.l      1779(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
		moveq.l    #7,d0
		and.w      d7,d0
		subq.w     #7,d0
		bne.s      out_icon_9
		lea.l      1195(a3),a0
		jsr        save_string
out_icon_9:
		addq.w     #1,d7
out_icon_8:
		cmp.w      d7,d6
		bgt.s      out_icon_10
		move.w     (a6)+,-(a7)
		lea.l      1842(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
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
		lea.l      1855(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		lea.l      38(a7),a7
		movea.l    a2,a0
		jsr        save_string
		tst.w      d5
		beq.s      out_icon_11
		pea.l      22(a4)
		move.w     d5,-(a7)
		lea.l      2150(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a2,a0
		jsr        save_string
		bra.s      out_icon_12
out_icon_11:
		lea.l      1030(a3),a0
		jsr        save_string
out_icon_12:
		lea.l      2160(a3),a0
		jsr        save_string
		addq.w     #1,d4
out_icon_2:
		cmp.w      d4,d3
		bgt        out_icon_13
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
		jsr        info_list
		movea.l    4(a2),a2
		lea.l      x99f7e,a3
		lea.l      2170(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a5
		bra        out_mouse_2
out_mouse_9:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a4
		lea.l      22(a4),a0
		jsr        info_obj
		movea.l    4(a4),a6
		move.w     8(a6),-(a7)
		move.w     6(a6),-(a7)
		move.w     4(a6),-(a7)
		move.w     2(a6),-(a7)
		move.w     (a6),-(a7)
		pea.l      22(a4)
		lea.l      2193(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		lea.l      14(a7),a7
		movea.l    a5,a0
		jsr        save_string
		lea.l      10(a6),a6
		moveq.l    #15,d5
		bra.s      out_mouse_3
out_mouse_5:
		move.w     (a6)+,-(a7)
		lea.l      2305(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a0
		jsr        save_string
		cmp.w      #$0008,d5
		bne.s      out_mouse_4
		lea.l      2299(a3),a0
		jsr        save_string
out_mouse_4:
		subq.w     #1,d5
out_mouse_3:
		tst.w      d5
		bgt.s      out_mouse_5
		move.w     (a6)+,-(a7)
		lea.l      2310(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a0
		jsr        save_string
		moveq.l    #15,d5
		bra.s      out_mouse_6
out_mouse_8:
		move.w     (a6)+,-(a7)
		lea.l      2305(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a0
		jsr        save_string
		cmp.w      #$0008,d5
		bne.s      out_mouse_7
		lea.l      2299(a3),a0
		jsr        save_string
out_mouse_7:
		subq.w     #1,d5
out_mouse_6:
		tst.w      d5
		bgt.s      out_mouse_8
		move.w     (a6)+,-(a7)
		lea.l      2341(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a0
		jsr        save_string
		addq.w     #1,d4
out_mouse_2:
		cmp.w      d4,d3
		bgt        out_mouse_9
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
		jsr        info_list
		movea.l    4(a7),a0
		move.l     4(a0),(a7)
		lea.l      x99f7e,a3
		lea.l      2358(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a2
		bra        out_image_2
out_image_6:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    (a7),a0
		movea.l    0(a0,d0.l),a4
		lea.l      22(a4),a0
		jsr        info_obj
		movea.l    4(a4),a5
		move.w     4(a5),d5
		asr.w      #1,d5
		muls.w     6(a5),d5
		subq.w     #1,d5
		move.l     (a5),d0
		lea.l      0(a5,d0.l),a6
		move.w     d5,-(a7)
		pea.l      22(a4)
		lea.l      2381(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a2,a0
		jsr        save_string
		clr.w      d6
		bra.s      out_image_3
out_image_5:
		move.w     (a6)+,-(a7)
		lea.l      1779(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
		moveq.l    #7,d0
		and.w      d6,d0
		subq.w     #7,d0
		bne.s      out_image_4
		lea.l      2299(a3),a0
		jsr        save_string
out_image_4:
		addq.w     #1,d6
out_image_3:
		cmp.w      d6,d5
		bgt.s      out_image_5
		move.w     (a6)+,-(a7)
		lea.l      2425(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a2,a0
		jsr        save_string
		move.w     12(a5),-(a7)
		move.w     10(a5),-(a7)
		move.w     8(a5),-(a7)
		move.w     6(a5),-(a7)
		move.w     4(a5),-(a7)
		pea.l      22(a4)
		pea.l      22(a4)
		lea.l      2440(a3),a1
		movea.l    a2,a0
		jsr        sprintf
		lea.l      18(a7),a7
		movea.l    a2,a0
		jsr        save_string
		addq.w     #1,d4
out_image_2:
		cmp.w      d4,d3
		bgt        out_image_6
out_image_1:
		addq.w     #8,a7
		movem.l    (a7)+,d3-d6/a2-a6
		rts

out_obj:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -68(a7),a7
		move.l     a0,64(a7)
		move.l     a1,60(a7)
		lea.l      $000FBC12,a2
		move.l     14(a0),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_obj_1
		lea.l      22(a0),a0
		jsr        info_list
		movea.l    60(a7),a0
		jsr        save_string
		move.w     #$FFFF,mapX
		movea.l    64(a7),a0
		move.l     4(a0),56(a7)
		clr.w      d4
		lea.l      x99f7e,a6
		lea.l      iostring,a3
		lea.l      28(a7),a4
		bra        out_obj_2
out_obj_23:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    56(a7),a0
		move.l     0(a0,d0.l),52(a7)
		movea.l    52(a7),a0
		lea.l      22(a0),a0
		jsr        info_obj
		movea.l    52(a7),a0
		move.l     14(a0),d0
		moveq.l    #56,d1
		jsr        _uldiv
		move.l     d0,d5
		movea.l    52(a7),a0
		movea.l    4(a0),a5
		clr.w      d6
		move.w     d6,(a2)
		clr.w      d7
		bra.s      out_obj_3
out_obj_7:
		move.l     (a5),d0
		beq.s      out_obj_4
		move.w     d6,-(a7)
		movea.l    d0,a0
		pea.l      22(a0)
		lea.l      2553(a6),a1
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
		bgt.s      out_obj_7
		moveq.l    #-1,d0
		add.w      d6,d0
		move.w     d0,-(a7)
		movea.l    54(a7),a0
		pea.l      22(a0)
		lea.l      2564(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a3,a0
		jsr        save_string
		movea.l    52(a7),a0
		movea.l    4(a0),a5
		clr.w      d7
		bra        out_obj_8
out_obj_22:
		moveq.l    #24,d0
		lea.l      8(a5),a1
		movea.l    a4,a0
		jsr        memcpy
		moveq.l    #24,d0
		lea.l      32(a5),a1
		lea.l      4(a7),a0
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
		ori.w      #$0020,12(a7)
		bra.s      out_obj_9
out_obj_10:
		ori.w      #$0020,8(a4)
out_obj_9:
		move.w     10(a4),-(a7)
		move.w     8(a4),-(a7)
		move.w     6(a4),-(a7)
		move.w     4(a4),-(a7)
		move.w     2(a4),-(a7)
		move.w     (a4),-(a7)
		lea.l      2608(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		lea.l      12(a7),a7
		movea.l    a3,a0
		jsr        save_string
		cmpi.b     #$14,7(a4)
		beq.s      out_obj_11
		cmpi.b     #$19,7(a4)
		beq.s      out_obj_11
		cmpi.b     #$1B,7(a4)
		bne.s      out_obj_12
out_obj_11:
		move.l     12(a4),-(a7)
		lea.l      2705(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_obj_13
out_obj_12:
		movea.l    12(a4),a0
		pea.l      22(a0)
		lea.l      2731(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
out_obj_13:
		movea.l    a3,a0
		jsr        save_string
		move.w     22(a4),-(a7)
		move.w     20(a4),-(a7)
		move.w     18(a4),-(a7)
		move.w     16(a4),-(a7)
		lea.l      2760(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a3,a0
		jsr        save_string
		moveq.l    #32,d0
		and.w      8(a4),d0
		beq.s      out_obj_14
		lea.l      2436(a6),a0
		jsr        save_string
		bra.s      out_obj_15
out_obj_14:
		lea.l      2814(a6),a0
		jsr        save_string
out_obj_15:
		move.w     d7,d0
		ext.l      d0
		add.l      d0,d0
		move.w     2(a2,d0.l),d1
		moveq.l    #2,d2
		add.w      0(a2,d0.l),d2
		cmp.w      d2,d1
		bne        out_obj_16
		move.l     4(a5),d6
		beq.s      out_obj_17
		movea.l    d6,a0
		lea.l      22(a0),a0
		move.l     a0,(a7)
		bra.s      out_obj_18
out_obj_17:
		move.l     #x99f8e,(a7)
out_obj_18:
		movea.l    52(a7),a0
		pea.l      22(a0)
		move.w     d7,d0
		ext.l      d0
		add.l      d0,d0
		move.w     0(a2,d0.l),-(a7)
		lea.l      2820(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a3,a0
		jsr        save_string
		move.l     4(a7),d0
		beq.s      out_obj_19
		lea.l      2828(a6),a0
		jsr        save_string
		lea.l      1030(a6),a1
		movea.l    4(a7),a0
		bsr        out_label
		lea.l      2836(a6),a0
		jsr        save_string
out_obj_19:
		move.l     8(a7),d0
		beq.s      out_obj_20
		lea.l      2839(a6),a0
		jsr        save_string
		lea.l      1030(a6),a1
		movea.l    8(a7),a0
		bsr        out_label
		lea.l      2836(a6),a0
		jsr        save_string
out_obj_20:
		move.w     14(a7),-(a7)
		move.w     14(a7),-(a7)
		lea.l      2846(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
		lea.l      2875(a6),a0
		jsr        save_string
		lea.l      1030(a6),a1
		movea.l    16(a7),a0
		bsr        out_label2
		lea.l      2884(a6),a0
		jsr        save_string
		lea.l      1030(a6),a1
		movea.l    20(a7),a0
		bsr        out_label2
		move.l     (a7),-(a7)
		move.w     28(a7),-(a7)
		lea.l      2894(a6),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #6,a7
		movea.l    a3,a0
		jsr        save_string
		moveq.l    #32,d0
		and.w      12(a7),d0
		beq.s      out_obj_21
		lea.l      2436(a6),a0
		jsr        save_string
		bra.s      out_obj_16
out_obj_21:
		lea.l      2814(a6),a0
		jsr        save_string
out_obj_16:
		lea.l      56(a5),a5
		addq.w     #1,d7
out_obj_8:
		cmp.w      d7,d5
		bgt        out_obj_22
		lea.l      520(a6),a0
		jsr        save_string
		addq.w     #1,d4
out_obj_2:
		cmp.w      d4,d3
		bgt        out_obj_23
out_obj_1:
		lea.l      68(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

	.data

x99f5a:
		dc.b ';',$0d,$0a,0
x99f5e:
		dc.b '                                '
x99f7e:
		dc.b $27,0
x99f80:
		dc.b $27,'#%i',$27,0
x99f86:
		dc.w $2727
		dc.b $00
x99f89:
		dc.b $25
		dc.w $6300
x99f8c:
		dc.b $27,'#'
x99f8e:
	dc.b '0',0
x99f90:
		dc.w $2573
		dc.b $00
x99f93:
		dc.b '@%s',0
x99f97:
		dc.b '@%-12s[3]',0
x99fa1:
		dc.b $0d,$0a,'IMPLEMENTATION',$0d,$0a,$0d,$0a,'(*',$09,'Pascal Routines',$09,'*)',$0d,$0a,$0d,$0a,0
x99fcf:
		dc.b '(* ',$27,'%s',$27,' Not yet defined by user *)',$0d,$0a,0
x99ff4:
		dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'Pascal Prototypes',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9a016:
		dc.b 'Procedure %s;',$0d,$0a,0
x9a026:
		dc.b 'Function %s( dummy1, dummy2: Pointer; pb: PARMBLKPtr ) : Integer;',$0d,$0a,0
x9a06a:
		dc.b 'Function %s( entry: ACSOBJECTPtr; task: Integer; in_out: Pointer ) : Boolean;',$0d,$0a,0
x9a0ba:
		dc.b 'Function %s( wi: AwindowPtr ) : Integer;',$0d,$0a,0
x9a0e5:
		dc.b 'Function %s( para: Pointer ) : AwindowPtr;',$0d,$0a,0
x9a112:
		dc.b 'Function %s( wi: AwindowPtr; kstate, key: Integer ) : Integer;',$0d,$0a,0
x9a153:
		dc.b 'Procedure %s( wi: AwindowPtr; obnr, state: Integer );',$0d,$0a,0
x9a18b:
		dc.b 'Procedure %s( wi: AwindowPtr; area: AxywhPtr );',$0d,$0a,0
x9a1bd:
		dc.b 'Procedure %s( wi: AwindowPtr );',$0d,$0a,0
x9a1df:
		dc.b 'Procedure %s( wi: AwindowPtr; pos: Integer );',$0d,$0a,0
x9a20f:
		dc.b 'Function %s( wi: AwindowPtr; task: Integer; in_out: Pointer ) : Boolean;',$0d,$0a,0
x9a25a:
		dc.b 'Function %s( wi: AwindowPtr; all: Integer ) : Integer;',$0d,$0a,0
x9a293:
		dc.b 'Function %s( wi: AwindowPtr; anz: Integer; cmd: Pointer; antwort: A_GSAntwortPtr ) : Integer;',$0d,$0a,0
x9a2f3:
		dc.b '(* %s Type %d ?? *)',$0d,$0a,0
x9a309:
		dc.b $0d,$0a,$0d,$0a,'ACSdescr: Adescr = ',$0d,$0a,$09,'(',$0d,$0a,0
x9a327:
		dc.b $09,$09,'magic: ',$27,'%s',$27,'#0; version: %d; dx: %2d; dy: %2d; flags: $%04x;',$0d,$0a,' ',$09,$09,'acc_reg: ',0
x9a373:
		dc.b 'ACS3.00',0
x9a37b:
		dc.b $09,$09,'root: ',0
x9a384:
		dc.b 'NIL',0
x9a388:
		dc.b '; acc: ',0
x9a390:
		dc.b ';',$0d,$0a,$09,$09,'mouse: (',$0d,$0a,0
x9a3a0:
		dc.b ',',$0d,$0a,0
x9a3a4:
		dc.b $09,$09,$09,'(number: 255; form: @%s)',0
x9a3c0:
		dc.b $09,$09,$09,'(number: %3d; form: NIL)',0
x9a3dc:
		dc.b $0d,$0a,$09,$09,');',$0d,$0a,$09,$09,'mess: (',$0d,$0a,0
x9a3f0:
		dc.b $09,$09,$09,$09,0
x9a3f5:
		dc.b 'ACS(%02d)',0
x9a3ff:
		dc.b $0d,$0a,$09,$09,')',$0d,$0a,$09,');',$0d,$0a,0
x9a40c:
		dc.b $0d,$0a,$0d,$0a,'ACSconfig: Aconfig = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
x9a42e:
		dc.b 'CfgInfo: (',$0d,$0a,$09,$09,$09,'dateiname: ',$27,0
x9a44a:
		dc.b $27,'; comment: ',$27,0
x9a458:
		dc.w $253b
		dc.b $00
x9a45b:
		dc.b $27,'; env_praefix: ',0
x9a46c:
		dc.b '; ',$0d,$0a,$09,$09,$09,'casesensitiv: ',0
x9a482:
		dc.b 'TRUE',0
x9a487:
		dc.b 'FALSE',0
x9a48d:
		dc.b '; file_sensitiv: ',0
x9a49f:
		dc.b ';',$0d,$0a,$09,$09,$09,'file_buffer: ',0
x9a4b3:
		dc.b '%i',$0d,$0a,$09,$09,');',$0d,$0a,$09,$09,0
x9a4c0:
		dc.b 'BaseName: ',$27,0
x9a4cc:
		dc.b 'PUR_DESK',0
x9a4d5:
		dc.b $27,'; ACSterm: ',0
x9a4e2:
		dc.b '; ACSaboutme: ',0
x9a4f1:
		dc.b '; ACSclose: ',0
x9a4fe:
		dc.b ';',$0d,$0a,$09,$09,'ACSmessage: ',0
x9a510:
		dc.b '; ACSmproto: ',0
x9a51e:
		dc.b '; ACStimer: ',0
x9a52b:
		dc.b '; ACSkey: ',0
x9a536:
		dc.b ';',$0d,$0a,$09,$09,'ACSbutton: ',0
x9a547:
		dc.b '; ACSmouse: ',0
x9a554:
		dc.b '; ACSwikey: ',0
x9a561:
		dc.b ';',$0d,$0a,$09,$09,'init_prot: ',0
x9a572:
		dc.b '%i; XAccType: ',0
x9a581:
		dc.b '%i; ACSGEMScript: ',0
x9a594:
		dc.b '_C%d_%-s: CICON = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,'num_planes: %d;',$0d,$0a,$09,$09,'col_data: ',0
x9a5cc:
		dc.b ';',$0d,$0a,$09,$09,'col_mask: ',0
x9a5dc:
		dc.b ';',$0d,$0a,$09,$09,'sel_data: ',0
x9a5ec:
		dc.b ';',$0d,$0a,$09,$09,'sel_mask: ',0
x9a5fc:
		dc.b ';',$0d,$0a,$09,$09,'next_res: @_C%d_%-s);',$0d,$0a,0
x9a619:
		dc.b ';',$0d,$0a,$09,$09,'next_res: NIL);',$0d,$0a,0
x9a630:
		dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'ICONS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9a646:
		dc.b '_MSK_%-s: array [0..%d] of WORD = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
x9a671:
		dc.b '$%04x, ',0
x9a679:
		dc.b '$%04x',$0d,$0a,$09,');',$0d,$0a,'_DAT_%-s: array [0..%d] of WORD = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
x9a6b0:
		dc.b '$%04x',$0d,$0a,$09,');',$0d,$0a,0
x9a6bd:
		dc.b '%-s: CICONBLK = ',$0d,$0a
		dc.b $09,'(',$0d,$0a
		dc.b $09,$09,'monoblk: ',$0d,$0a
		dc.b $09,$09,'(',$0d,$0a
		dc.b $09,$09,$09,'ib_pmask: @_MSK_%s; ib_pdata: @_DAT_%s; ib_ptext: @%s;',$0d,$0a
		dc.b $09,$09,$09,'ib_char: $%04x; ib_xchar: %2d; ib_ychar: %2d;',$0d,$0a
		dc.b $09,$09,$09,'ib_xicon: %2d; ib_yicon: %2d; ib_wicon: %2d; ib_hicon: %2d;',$0d,$0a
		dc.b $09,$09,$09,'ib_xtext: %2d; ib_ytext: %2d; ib_wtext: %2d; ib_htext: %2d',$0d,$0a
		dc.b $09,$09,');',$0d,$0a
		dc.b $09,$09,'mainlist: ',0
x9a7e4:
		dc.b '@_C%d_%-s',0
x9a7ee:
		dc.b $0d,$0a,$09,');',$0d,$0a,$0d,$0a,0
x9a7f8:
		dc.b $0d,$0a,'(*',$09,$09,'MOUSEFORMS',$09,$09,'*)',$0d,$0a,0
x9a80f:
		dc.b '%-s: MFORM = ',$0d,$0a
		dc.b $09,'(',$0d,$0a
		dc.b $09,$09,'mf_xhot: %2d; mf_yhot: %2d; mf_nplanes: %2d; mf_fg: %2d; mf_bg: %2d;',$0d,$0a
		dc.b $09,$09,'mf_mask:',$0d,$0a
		dc.b $09,$09,'(',$0d,$0a
		dc.b $09,$09,$09,0
x9a87f:
		dc.b '%d, ',0
x9a884:
		dc.b '%d',$0d,$0a,$09,$09,');',$0d,$0a,$09,$09,'mf_data:',$0d,$0a,$09,$09,'(',$0d,$0a,$09,$09,$09,0
x9a8a3:
		dc.b '%d',$0d,$0a,$09,$09,')',$0d,$0a,$09,');',$0d,$0a,$0d,$0a,0
x9a8b4:
		dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'IMAGES',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9a8cb:
		dc.b '_IMG_%-s: array [0..%d] of WORD = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,$09,0
x9a8f7:
		dc.b '$%04x',$0d,$0a,$09,$09,');',$0d,$0a,$09,0
x9a906:
		dc.b '%-s: BITBLK = ',$0d,$0a
		dc.b $09,'(',$0d,$0a
		dc.b $09,$09,'bi_pdata: @_IMG_%s;',$0d,$0a
		dc.b $09,$09,'bi_wb: %2d; bi_hl: %2d; bi_x: %2d; bi_y: %2d; bi_color: %d',$0d,$0a
		dc.b $09,');',$0d,$0a,$0d,$0a,0
x9a977:
		dc.b '%s = %d;',$0d,$0a,0
x9a982:
		dc.b '%s : Array [0 ..%d] of ACSOBJECT = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
x9a9ae:
		dc.b '(aes: (ob_next: %2d; ob_head: %2d; ob_tail: %2d; ob_type: %2d; ob_flags: $%04x; ob_state: $%04x;',0
x9aa0f:
		dc.b 'ob_spec: (index: $%08lx);',0
x9aa29:
		dc.b 'ob_spec: (free_string: @%s);',0
x9aa46:
		dc.b 'ob_x: %2d; ob_y: %2d; ob_width: %2d; ob_height: %2d))',0
x9aa7c:
		dc.b ',',$0d,$0a,$09,$09,0
x9aa82:
		dc.b '(acs: (',0
x9aa8a:
		dc.b 'click: ',0
x9aa92:
		dc.w $3b20
		dc.b $00
x9aa95:
		dc.b 'drag: ',0
x9aa9c:
		dc.b 'ob_flags: $%04x; key: $%04x;',0
x9aab9:
		dc.b 'userp1: ',0
x9aac2:
		dc.b ';userp2: ',0
x9aacc:
		dc.b '; mo_index: %d; aob_type: %s))',0
x9aaeb:
		dc.b 'ACS(',0
	.even

	.bss

mapX: ds.w 1000
