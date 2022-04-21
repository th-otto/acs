
out_string:
		movem.l    d3-d4/a2-a6,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		movea.l    32(a7),a4
		move.l     14(a3),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_string_1
		lea.l      22(a2),a0
		jsr        info_list
		movea.l    4(a3),a3
		movea.l    a4,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      out_string_2
		movea.l    a4,a0
		jsr        save_string
out_string_2:
		clr.w      d4
		lea.l      iostring,a6
		bra.s      out_string_3
out_string_5:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a3,d0.l),a4
		movea.l    4(a2),a0
		movea.l    0(a0,d0.l),a5
		lea.l      x9aaeb,a1
		lea.l      22(a5),a0
		moveq.l    #4,d0
		jsr        strncmp
		tst.w      d0
		beq.s      out_string_4
		lea.l      22(a4),a0
		jsr        info_obj
		move.l     14(a4),-(a7)
		pea.l      22(a5)
		lea.l      x9aaf0,a1
		movea.l    a6,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a6,a0
		jsr        save_string
		moveq.l    #59,d0
		movea.l    4(a4),a0
		bsr        p_string
out_string_4:
		addq.w     #1,d4
out_string_3:
		cmp.w      d4,d3
		bgt.s      out_string_5
out_string_1:
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
		jsr        info_list
		movea.l    4(a2),a2
		lea.l      x9ab15,a0
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
		jsr        info_obj
		movea.l    4(a3),a4
		movea.l    4(a4),a0
		move.l     14(a0),-(a7)
		movea.l    (a4),a1
		move.l     14(a1),-(a7)
		move.w     22(a4),-(a7)
		move.w     18(a4),-(a7)
		move.w     16(a4),-(a7)
		move.w     12(a4),-(a7)
		movea.l    8(a4),a0
		pea.l      22(a0)
		movea.l    4(a4),a1
		pea.l      22(a1)
		movea.l    (a4),a0
		pea.l      22(a0)
		pea.l      22(a3)
		lea.l      x9ab2e,a1
		movea.l    a5,a0
		jsr        sprintf
		lea.l      32(a7),a7
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
		movem.l    d3-d4/a3-a6,-(a7)
		lea.l      -24(a7),a7
		move.l     a0,20(a7)
		move.l     14(a0),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_user_1
		lea.l      22(a0),a0
		jsr        info_list
		movea.l    20(a7),a0
		move.l     4(a0),16(a7)
		lea.l      x99f7e,a3
		lea.l      3163(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a5
		bra        out_user_2
out_user_5:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    16(a7),a0
		movea.l    0(a0,d0.l),a6
		lea.l      22(a6),a0
		jsr        info_obj
		movea.l    4(a6),a4
		movea.l    (a4),a0
		pea.l      22(a0)
		pea.l      22(a6)
		lea.l      3188(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a5,a0
		jsr        save_string
		movea.l    4(a4),a6
		lea.l      22(a6),a6
		cmpi.b     #$30,(a6)
		bne.s      out_user_3
		cmpi.b     #$78,1(a6)
		bne.s      out_user_3
		lea.l      2(a6),a1
		lea.l      (a7),a0
		jsr        strcpy
		lea.l      (a7),a0
		jsr        strlen
		clr.b      -1(a7,d0.w)
		pea.l      (a7)
		lea.l      3227(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		bra.s      out_user_4
out_user_3:
		move.l     a6,-(a7)
		lea.l      21(a3),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
out_user_4:
		movea.l    a5,a0
		jsr        save_string
		lea.l      3231(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    8(a4),a0
		bsr        out_label
		lea.l      3243(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    12(a4),a0
		bsr        out_label2
		lea.l      3255(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    16(a4),a0
		bsr        out_label2
		lea.l      3267(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    20(a4),a0
		bsr        out_label2
		lea.l      3279(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    24(a4),a0
		bsr        out_label2
		lea.l      3290(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    28(a4),a0
		bsr        out_label2
		lea.l      520(a3),a0
		jsr        save_string
		addq.w     #1,d4
out_user_2:
		cmp.w      d4,d3
		bgt        out_user_5
out_user_1:
		lea.l      24(a7),a7
		movem.l    (a7)+,d3-d4/a3-a6
		rts

out_data:
		movem.l    d3-d6/a2-a5,-(a7)
		movea.l    a0,a2
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_data_1
		lea.l      22(a2),a0
		jsr        info_list
		movea.l    4(a2),a2
		lea.l      x99f7e,a3
		lea.l      3302(a3),a0
		jsr        save_string
		clr.w      d4
		lea.l      iostring,a4
		bra        out_data_2
out_data_7:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a5
		lea.l      22(a5),a0
		jsr        info_obj
		moveq.l    #-1,d5
		add.l      14(a5),d5
		asr.l      #1,d5
		tst.l      d5
		ble.s      out_data_3
		move.l     d5,-(a7)
		pea.l      22(a5)
		lea.l      3324(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a4,a0
		jsr        save_string
		movea.l    4(a5),a5
		moveq.l    #0,d6
		bra.s      out_data_4
out_data_6:
		move.w     (a5)+,-(a7)
		lea.l      1779(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a0
		jsr        save_string
		moveq.l    #7,d0
		and.l      d6,d0
		moveq.l    #7,d1
		cmp.l      d0,d1
		bne.s      out_data_5
		lea.l      2299(a3),a0
		jsr        save_string
out_data_5:
		addq.l     #1,d6
out_data_4:
		cmp.l      d6,d5
		bgt.s      out_data_6
		move.w     (a5)+,-(a7)
		lea.l      1842(a3),a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a0
		jsr        save_string
out_data_3:
		addq.w     #1,d4
out_data_2:
		cmp.w      d4,d3
		bgt        out_data_7
out_data_1:
		movem.l    (a7)+,d3-d6/a2-a5
		rts

out_window:
		movem.l    d3-d4/a2-a6,-(a7)
		movea.l    a0,a2
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble        out_window_1
		lea.l      22(a2),a0
		jsr        info_list
		movea.l    4(a2),a2
		lea.l      x99f7e,a3
		lea.l      3362(a3),a0
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
		jsr        info_obj
		movea.l    4(a4),a5
		pea.l      22(a4)
		lea.l      3386(a3),a1
		movea.l    a6,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a6,a0
		jsr        save_string
		lea.l      3407(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    (a5),a0
		bsr        out_label2
		lea.l      3416(a3),a0
		jsr        save_string
		lea.l      3431(a3),a1
		movea.l    4(a5),a0
		bsr        out_label
		lea.l      3443(a3),a0
		jsr        save_string
		lea.l      3457(a3),a1
		movea.l    8(a5),a0
		bsr        out_label
		lea.l      3472(a3),a0
		jsr        save_string
		lea.l      3484(a3),a1
		movea.l    12(a5),a0
		bsr        out_label
		lea.l      3493(a3),a0
		jsr        save_string
		lea.l      3505(a3),a1
		movea.l    16(a5),a0
		bsr        out_label
		lea.l      3514(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    20(a5),a0
		bsr        out_label2
		lea.l      3526(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    24(a5),a0
		bsr        out_label2
		lea.l      3541(a3),a0
		jsr        save_string
		move.w     42(a5),-(a7)
		move.w     40(a5),-(a7)
		move.w     38(a5),-(a7)
		move.w     36(a5),-(a7)
		move.w     34(a5),-(a7)
		lea.l      3582(a3),a1
		movea.l    a6,a0
		jsr        sprintf
		lea.l      10(a7),a7
		movea.l    a6,a0
		jsr        save_string
		lea.l      3644(a3),a0
		jsr        save_string
		move.w     72(a5),-(a7)
		lea.l      3689(a3),a1
		movea.l    a6,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a6,a0
		jsr        save_string
		lea.l      3711(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    74(a5),a0
		bsr        out_label2
		lea.l      3722(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    78(a5),a0
		bsr        out_label2
		move.w     84(a5),-(a7)
		move.w     82(a5),-(a7)
		lea.l      3731(a3),a1
		movea.l    a6,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a6,a0
		jsr        save_string
		lea.l      3774(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    90(a5),a0
		bsr        out_label2
		lea.l      3789(a3),a0
		jsr        save_string
		lea.l      1030(a3),a1
		movea.l    94(a5),a0
		bsr        out_label2
		lea.l      3801(a3),a0
		jsr        save_string
		lea.l      3813(a3),a1
		movea.l    98(a5),a0
		bsr        out_label
		lea.l      3822(a3),a0
		jsr        save_string
		lea.l      3838(a3),a1
		movea.l    102(a5),a0
		bsr        out_label
		lea.l      3851(a3),a0
		jsr        save_string
		lea.l      3865(a3),a1
		movea.l    106(a5),a0
		bsr        out_label
		lea.l      3876(a3),a0
		jsr        save_string
		lea.l      3890(a3),a1
		movea.l    110(a5),a0
		bsr        out_label
		lea.l      3901(a3),a0
		jsr        save_string
		lea.l      3915(a3),a1
		movea.l    114(a5),a0
		bsr        out_label
		lea.l      3926(a3),a0
		jsr        save_string
		lea.l      3940(a3),a1
		movea.l    118(a5),a0
		bsr        out_label
		lea.l      3951(a3),a0
		jsr        save_string
		lea.l      3966(a3),a1
		movea.l    122(a5),a0
		bsr        out_label
		lea.l      3978(a3),a0
		jsr        save_string
		lea.l      3991(a3),a1
		movea.l    126(a5),a0
		bsr        out_label
		lea.l      4001(a3),a0
		jsr        save_string
		lea.l      4014(a3),a1
		movea.l    130(a5),a0
		bsr        out_label
		lea.l      4024(a3),a0
		jsr        save_string
		lea.l      4037(a3),a1
		movea.l    134(a5),a0
		bsr        out_label
		lea.l      4047(a3),a0
		jsr        save_string
		lea.l      4060(a3),a1
		movea.l    138(a5),a0
		bsr        out_label
		lea.l      2160(a3),a0
		jsr        save_string
		addq.w     #1,d4
out_window_2:
		cmp.w      d4,d3
		bgt        out_window_3
out_window_1:
		movem.l    (a7)+,d3-d4/a2-a6
		rts

pp_output:
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
		lea.l      x99f7e,a5
		lea.l      4070(a5),a1
		movea.l    a3,a0
		jsr        strcpy
		clr.w      d0
		movea.l    a4,a0
		jsr        Fcreate
		move.l     d0,d3
		tst.w      d3
		bpl.s      pp_output_1
		movea.l    (a7),a0
		moveq.l    #9,d0
		movea.l    ACSblk,a1
		movea.l    982(a1),a1
		jsr        (a1)
		bra        pp_output_2
pp_output_1:
		movea.l    a4,a0
		jsr        info_start
		lea.l      4073(a5),a0
		jsr        info_title
		move.w     d3,d0
		jsr        set_handle
		jsr        setjmp
		tst.w      d0
		beq.s      pp_output_3
		suba.l     a0,a0
		moveq.l    #10,d0
		movea.l    ACSblk,a1
		movea.l    982(a1),a1
		jsr        (a1)
		bra        pp_output_4
pp_output_3:
		suba.l     a0,a0
		jsr        time
		move.l     d0,132(a7)
		clr.b      (a3)
		lea.l      iostring,a3
		move.l     8(a2),-(a7)
		lea.l      136(a7),a0
		jsr        ctime
		move.l     a0,-(a7)
		lea.l      pp_welcome,a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a3,a0
		jsr        save_string
		lea.l      4090(a5),a0
		jsr        save_string
		lea.l      4126(a5),a0
		jsr        save_string
		lea.l      4150(a5),a0
		jsr        save_string
		clr.w      d4
		bra.s      pp_output_5
pp_output_8:
		moveq.l    #1,d5
		add.w      d4,d5
		bra.s      pp_output_6
pp_output_7:
		moveq.l    #1,d0
		add.w      d5,d0
		move.w     d0,-(a7)
		moveq.l    #1,d1
		add.w      d4,d1
		move.w     d1,-(a7)
		lea.l      4175(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
		lea.l      4220(a5),a0
		jsr        save_string
		addq.w     #1,d5
pp_output_6:
		cmp.w      #$0003,d5
		ble.s      pp_output_7
		addq.w     #1,d4
pp_output_5:
		cmp.w      #$0003,d4
		ble.s      pp_output_8
		lea.l      78(a5),a0
		jsr        save_string
		clr.w      d5
		bra.s      pp_output_9
pp_output_10:
		moveq.l    #1,d0
		add.w      d5,d0
		move.w     d0,-(a7)
		lea.l      4297(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a3,a0
		jsr        save_string
		addq.w     #1,d5
pp_output_9:
		cmp.w      #$0003,d5
		ble.s      pp_output_10
		moveq.l    #1,d0
		add.w      500(a2),d0
		move.w     d0,-(a7)
		lea.l      4320(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a3,a0
		jsr        save_string
		clr.w      d5
		bra.s      pp_output_11
pp_output_12:
		lea.l      4348(a5),a0
		jsr        save_string
		addq.w     #1,d5
pp_output_11:
		cmp.w      #$0003,d5
		ble.s      pp_output_12
		lea.l      78(a5),a0
		jsr        save_string
		movea.l    a3,a0
		jsr        save_string
		move.w     6(a2),d0
		and.w      #$2000,d0
		beq.s      pp_output_13
		movea.l    a2,a0
		bsr        out_declproto
pp_output_13:
		lea.l      4359(a5),a0
		jsr        save_string
		lea.l      4367(a5),a0
		jsr        save_string
		lea.l      4395(a5),a0
		jsr        save_string
		clr.w      d5
		bra.w      pp_output_14
pp_output_19:
		cmp.w      500(a2),d5
		bge.s      pp_output_15
		clr.l      -(a7)
		movea.l    36(a2),a1
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      0(a2,d0.l),a0
		movea.l    514(a0),a0
		bsr        out_string
		addq.w     #4,a7
		bra.s      pp_output_16
pp_output_15:
		cmp.w      500(a2),d5
		bne.s      pp_output_17
		clr.l      -(a7)
		movea.l    36(a2),a1
		movea.l    36(a2),a0
		bsr        out_string
		addq.w     #4,a7
		bra.s      pp_output_16
pp_output_17:
		clr.l      -(a7)
		movea.l    36(a2),a1
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      0(a2,d0.l),a0
		movea.l    510(a0),a0
		bsr        out_string
		addq.w     #4,a7
pp_output_16:
		cmp.w      #$0003,d5
		bge.s      pp_output_18
		moveq.l    #2,d0
		add.w      d5,d0
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		lea.l      4450(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
pp_output_18:
		addq.w     #1,d5
pp_output_14:
		cmp.w      #$0003,d5
		ble.w      pp_output_19
		lea.l      4516(a5),a0
		jsr        save_string
		clr.w      d5
		bra.s      pp_output_20
pp_output_21:
		lea.l      4576(a5),a0
		jsr        save_string
		addq.w     #1,d5
pp_output_20:
		cmp.w      #$0003,d5
		ble.s      pp_output_21
		lea.l      4591(a5),a0
		jsr        save_string
		lea.l      4615(a5),a0
		jsr        save_string
		clr.w      d5
		bra.w      pp_output_22
pp_output_27:
		cmp.w      500(a2),d5
		bge.s      pp_output_23
		clr.l      -(a7)
		movea.l    52(a2),a1
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      0(a2,d0.l),a0
		movea.l    502(a0),a0
		bsr        out_string
		addq.w     #4,a7
		bra.s      pp_output_24
pp_output_23:
		cmp.w      500(a2),d5
		bne.s      pp_output_25
		clr.l      -(a7)
		movea.l    52(a2),a1
		movea.l    52(a2),a0
		bsr        out_string
		addq.w     #4,a7
		bra.s      pp_output_24
pp_output_25:
		clr.l      -(a7)
		movea.l    52(a2),a1
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      0(a2,d0.l),a0
		movea.l    498(a0),a0
		bsr        out_string
		addq.w     #4,a7
pp_output_24:
		cmp.w      #$0003,d5
		bge.s      pp_output_26
		moveq.l    #2,d0
		add.w      d5,d0
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		lea.l      4674(a5),a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a3,a0
		jsr        save_string
pp_output_26:
		addq.w     #1,d5
pp_output_22:
		cmp.w      #$0003,d5
		ble.w      pp_output_27
		lea.l      4516(a5),a0
		jsr        save_string
		clr.w      d5
		bra.s      pp_output_28
pp_output_29:
		lea.l      4576(a5),a0
		jsr        save_string
		addq.w     #1,d5
pp_output_28:
		cmp.w      #$0003,d5
		ble.s      pp_output_29
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
		lea.l      4741(a5),a1
		movea.l    28(a2),a0
		bsr        out_obj
		lea.l      4764(a5),a1
		movea.l    32(a2),a0
		bsr        out_obj
		lea.l      4788(a5),a1
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
		beq.s      pp_output_30
		movea.l    a2,a0
		bsr        out_refs
pp_output_30:
		jsr        close_buf
pp_output_4:
		jsr        info_end
		move.w     d3,d0
		jsr        Fclose
pp_output_2:
		lea.l      136(a7),a7
		movem.l    (a7)+,d3-d5/a2-a5
		rts

out_string:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a2
		move.l     14(a2),d3
		lsr.l      #2,d3
		tst.w      d3
		ble.w      out_string_1
		lea.l      22(a2),a0
		jsr        info_list
		movea.l    4(a2),a2
		clr.w      d4
		lea.l      x9b24c,a4
		lea.l      iostring,a5
		bra.s      out_string_2
out_string_4:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a2,d0.l),a3
		lea.l      23(a4),a1
		lea.l      22(a3),a0
		moveq.l    #4,d0
		jsr        strncmp
		tst.w      d0
		beq.s      out_string_3
		lea.l      22(a3),a0
		jsr        info_obj
		pea.l      22(a3)
		lea.l      28(a4),a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a5,a0
		jsr        save_string
		movea.l    4(a3),a0
		jsr        save_string
		lea.l      33(a4),a0
		jsr        save_string
out_string_3:
		addq.w     #1,d4
out_string_2:
		cmp.w      d4,d3
		bgt.s      out_string_4
out_string_1:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

str_output:
		movem.l    d3/a2-a5,-(a7)
		lea.l      -516(a7),a7
		movea.l    a0,a2
		moveq.l    #92,d0
		movea.l    8(a2),a0
		jsr        strrchr
		movea.l    a0,a3
		addq.w     #1,a3
		lea.l      256(a7),a4
		movea.l    8(a2),a1
		movea.l    a4,a0
		jsr        strcpy
		moveq.l    #46,d0
		movea.l    a4,a0
		jsr        strrchr
		movea.l    a0,a5
		lea.l      x9b271,a1
		jsr        strcpy
		move.b     501(a2),d0
		add.b      d0,3(a5)
		clr.w      d0
		movea.l    a4,a0
		jsr        Fcreate
		move.l     d0,d3
		tst.w      d3
		bpl.s      str_output_1
		movea.l    a3,a0
		moveq.l    #9,d0
		movea.l    ACSblk,a1
		movea.l    982(a1),a1
		jsr        (a1)
		bra        str_output_2
str_output_1:
		movea.l    a4,a0
		jsr        info_start
		lea.l      x9b276,a0
		jsr        info_title
		move.w     d3,d0
		jsr        set_handle
		jsr        setjmp
		tst.w      d0
		beq.s      str_output_3
		suba.l     a0,a0
		moveq.l    #10,d0
		movea.l    ACSblk,a1
		movea.l    982(a1),a1
		jsr        (a1)
		move.w     d3,d0
		jsr        Fclose
		jsr        info_end
		bra        str_output_2
str_output_3:
		suba.l     a0,a0
		jsr        time
		move.l     d0,512(a7)
		lea.l      iostring,a5
		move.l     8(a2),-(a7)
		lea.l      516(a7),a0
		jsr        ctime
		move.l     a0,-(a7)
		lea.l      str_welcome,a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #8,a7
		movea.l    a5,a0
		jsr        save_string
		movea.l    8(a2),a1
		lea.l      (a7),a0
		jsr        Ast_reverse
		pea.l      4(a0)
		lea.l      x9b284,a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #4,a7
		movea.l    a5,a0
		jsr        save_string
		moveq.l    #1,d0
		add.w      500(a2),d0
		move.w     d0,-(a7)
		lea.l      x9b28b,a1
		movea.l    a5,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a5,a0
		jsr        save_string
		movea.l    36(a2),a0
		bsr        out_string
		movea.l    52(a2),a0
		bsr        out_string
		jsr        close_buf
		jsr        info_end
		move.w     d3,d0
		jsr        Fclose
str_output_2:
		lea.l      516(a7),a7
		movem.l    (a7)+,d3/a2-a5
		rts

	.data

x9aaf0:
		dc.b '%s: packed array [1..%ld] of char = ',0
x9ab15:
		dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'TEDINFOS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9ab2e:
		dc.b '%s: TEDINFO = ',$0d,$0a
		dc.b $09,'(',$0d,$0a
		dc.b $09,$09,'te_ptext: @%s; te_ptmplt: @%s; te_pvalid: @%s;',$0d,$0a
		dc.b $09,$09,'te_font: %d; te_just: %d; te_color: $%04x; te_thickness: %d; te_txtlen: %ld; te_tmplen: %ld',$0d,$0a
		dc.b $09,');',$0d,$0a,0
x9abd9:
		dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'AUSERBLK',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9abf2:
		dc.b '%s: AUSERBLK = (ub_code: %s; ub_parm: ',0
x9ac19:
		dc.b '$%s',0
x9ac1d:
		dc.b '; ub_serv: ',0
x9ac29:
		dc.b '; ub_ptr1: ',0
x9ac35:
		dc.b '; ub_ptr2: ',0
x9ac41:
		dc.b '; ub_ptr3: ',0
x9ac4d:
		dc.b '; bubble: ',0
x9ac58:
		dc.b '; context: ',0
x9ac64:
		dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'DATAS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9ac7a:
		dc.b '%-s: array [0..%ld] of WORD =',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
x9aca0:
		dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'WINDOWS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9acb8:
		dc.b '%s: Awindow = ',$0d,$0a,$09,'(',$0d,$0a,0
x9accd:
		dc.b $09,$09,'user: ',0
x9acd6:
		dc.b ';',$0d,$0a,$09,$09,'service: ',0
x9ace5:
		dc.b 'Awi_service',0
x9acf1:
		dc.b ';',$0d,$0a,$09,$09,'create: ',0
x9acff:
		dc.b 'Awi_selfcreate',0
x9ad0e:
		dc.b ';',$0d,$0a,$09,$09,'open: ',0
x9ad1a:
		dc.b 'Awi_open',0
x9ad23:
		dc.b ';',$0d,$0a,$09,$09,'init: ',0
x9ad2f:
		dc.b 'Awi_init',0
x9ad38:
		dc.b ';',$0d,$0a,$09,$09,'work: ',0
x9ad44:
		dc.b ';',$0d,$0a,$09,$09,'toolbar: ',0
x9ad53:
		dc.b ';',$0d,$0a,$09,$09,'ob_edit: -1; ob_col: -1; wi_id: -1;',0
x9ad7c:
		dc.b $0d,$0a,$09,$09,'wi_kind: $%04x; wi_act: (x: %2i; y: %2i; w: %2i; h: %2i);',0
x9adba:
		dc.b $0d,$0a,$09,$09,'wi_slider: (x: -1; y: -1; w: -1; h: -1);',0
x9ade7:
		dc.b $0d,$0a,$09,$09,'snap_mask: $%04x;',0
x9adfd:
		dc.b $0d,$0a,$09,$09,'name: ',0
x9ae08:
		dc.b '; info: ',0
x9ae11:
		dc.b ';',$0d,$0a,$09,$09,'ob_len: $%04x; kind: $%04x; icon : -1',0
x9ae3c:
		dc.b ';',$0d,$0a,$09,$09,'iconblk: ',0
x9ae4b:
		dc.b ';',$0d,$0a,$09,$09,'menu: ',0
x9ae57:
		dc.b ';',$0d,$0a,$09,$09,'keys: ',0
x9ae63:
		dc.b 'Awi_keys',0
x9ae6c:
		dc.b ';',$0d,$0a,$09,$09,'obchange: ',0
x9ae7c:
		dc.b 'Awi_obchange',0
x9ae89:
		dc.b ';',$0d,$0a,$09,$09,'redraw: ',0
x9ae97:
		dc.b 'Awi_redraw',0
x9aea2:
		dc.b ';',$0d,$0a,$09,$09,'topped: ',0
x9aeb0:
		dc.b 'Awi_topped',0
x9aebb:
		dc.b ';',$0d,$0a,$09,$09,'closed: ',0
x9aec9:
		dc.b 'Awi_closed',0
x9aed4:
		dc.b ';',$0d,$0a,$09,$09,'fulled: ',0
x9aee2:
		dc.b 'Awi_fulle'
x9aaeb:
		dc.b 'd',0
x9aeed:
		dc.b ';',$0d,$0a,$09,$09,'arrowed: ',0
x9aefc:
		dc.b 'Awi_arrowed',0
x9af08:
		dc.b ';',$0d,$0a,$09,$09,'hslid: ',0
x9af15:
		dc.b 'Awi_hslid',0
x9af1f:
		dc.b ';',$0d,$0a,$09,$09,'vslid: ',0
x9af2c:
		dc.b 'Awi_vslid',0
x9af36:
		dc.b ';',$0d,$0a,$09,$09,'sized: ',0
x9af43:
		dc.b 'Awi_sized',0
x9af4d:
		dc.b ';',$0d,$0a,$09,$09,'moved: ',0
x9af5a:
		dc.b 'Awi_moved',0
x9af64:
		dc.w $2e49
		dc.b $00
x9af67:
		dc.b 'Pure PASCAL Code',0
x9af78:
		dc.b $0d,$0a,'(*',$09,$09,'Platform & GUI-Language',$09,$09,'*)',$0d,$0a,0
x9af9c:
		dc.b '(*$DEFINE ACS_ATARI*)',$0d,$0a,0
x9afb4:
		dc.b $0d,$0a,'(*',$09,$09,'GUI-LANGUAGE',$09,$09,'*)',$0d,$0a,0
x9afcd:
		dc.b '(*$IFDEF ACS_LANG%d*)(*$IFDEF ACS_LANG%d*)',$0d,$0a,0
x9affa:
		dc.b $09,'(*$ERROR "More than one language macros defined!"*)',$0d,$0a,'(*$ENDIF*)(*$ENDIF*)',$0d,$0a,0
x9b047:
		dc.b '(*$IFNDEF ACS_LANG%d*)',0
x9b05e:
		dc.b $0d,$0a,$09,'(*$DEFINE ACS_LANG%d*)',$0d,$0a,0
x9b07a:
		dc.b '(*$ENDIF*)',0
x9b085:
		dc.b 'Const',$0d,$0a,0
x9b08d:
		dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'ALERT BOXES',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9b0a9:
		dc.b $0d,$0a,'(*$IFDEF ACS_LANG1*)',$09,$09,$09,'(*',$09,$09,'Alerts: ACS_LANG1',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9b0e0:
		dc.b $0d,$0a,'(*$ELSE*)(*$IFDEF ACS_LANG%d*)',$09,$09,$09,'(*',$09,$09,'Alerts: ACS_LANG%d',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9b122:
		dc.b $0d,$0a,'(*$ELSE*)',$0d,$0a,$0d,$0a,$09,'(*$ERROR "Wrong Language Macro defined"*)',$0d,$0a,0
x9b15e:
		dc.b $0d,$0a,'(*$ENDIF*)',$0d,$0a,0
x9b16d:
		dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'STRINGS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9b185:
		dc.b $0d,$0a,'(*$IFDEF ACS_LANG1 *)',$09,$09,$09,$09,$09,'(*',$09,$09,'Strings: ACS_LANG1',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9b1c0:
		dc.b $0d,$0a,'(*$ELSE*)(*$IFDEF ACS_LANG%d*)',$09,$09,$09,'(*',$09,$09,'Strings: ACS_LANG%d',$09,$09,'*)',$0d,$0a,$0d,$0a,0
x9b203:
		dc.b $0d,$0a,'(*',$09,$09,'MENU TREES',$09,$09,'*)',$0d,$0a,0
x9b21a:
		dc.b $0d,$0a,'(*',$09,$09,'POPUP TREES',$09,$09,'*)',$0d,$0a,0
x9b232:
		dc.b $0d,$0a,'(*',$09,$09,'OBJECT TREES',$09,$09,'*)',$0d,$0a,0
x9b24c:
		dc.b '%-12s',0
x9b252:
		dc.b '&%-12s',0
x9b259:
		dc.b '&%-12s[3]',0
x9b263:
		dc.b 'ACS(',0
x9b268:
		dc.b '%s=#',0
x9b26d:
		dc.b '#',$0d,$0a,0
x9b271:
		dc.b '.ST0',0
x9b276:
		dc.b 'String-Export',0
x9b284:
		dc.b '[%s]',$0d,$0a,0
x9b28b:
		dc.b 'GUI-LANGUAGE=ACS_LANG%d',$0d,$0a,0
	.even
