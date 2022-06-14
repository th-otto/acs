		.text

		.globl INwindow
INwindow:
		movem.l    a2-a4,-(a7)
		lea.l      Aroot_wi,a4
		move.w     -46(a4),d0
		addq.w     #1,-46(a4)
		tst.w      d0
		bne        INwindow_1
		lea.l      ACSblk,a2
		lea.l      virt_desk,a3
		movea.l    (a2),a0
		movea.l    572(a0),a1
		move.w     10(a1),(a3)
		move.w     10(a0),d0
		cmp.w      12(a1),d0
		ble.s      INwindow_2
		bra.s      INwindow_3
INwindow_2:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		move.w     12(a1),d0
INwindow_3:
		move.w     d0,2(a3)
		movea.l    (a2),a0
		move.w     12(a0),d1
		movea.l    572(a0),a1
		move.w     10(a1),d2
		add.w      d2,d2
		sub.w      d2,d1
		move.w     d1,4(a3)
		move.w     10(a0),d0
		add.w      14(a0),d0
		sub.w      12(a1),d0
		sub.w      2(a3),d0
		move.w     d0,6(a3)
		move.w     4(a0),d2
		move.w     d2,d1
		lsl.w      #2,d1
		add.w      d2,d1
		move.w     d1,-1080(a3)
		move.w     6(a0),d1
		move.w     d1,d0
		add.w      d0,d0
		add.w      d1,d0
		add.w      d0,d0
		move.w     d0,-1078(a3)
		lea.l      _ICO,a0
		jsr        Aob_create
		move.l     a0,-8(a3)
		move.l     a0,d0
		beq.s      INwindow_4
		jsr        Aob_fix
		movea.l    -8(a3),a0
		lea.l      24(a0),a0
		move.l     a0,-4(a3)
		movea.l    12(a0),a1
		move.l     8(a1),-12(a3)
		bra.s      INwindow_5
INwindow_4:
		moveq.l    #0,d0
		move.l     d0,-12(a3)
		move.l     d0,-4(a3)
INwindow_5:
		clr.w      1546(a3)
		clr.w      1544(a3)
		moveq.l    #32,d1
		clr.w      d0
		lea.l      -556(a3),a0
		jsr        memset
		move.l     #$00000400,d1
		clr.w      d0
		lea.l      8(a3),a0
		jsr        memset
		move.l     #$00000200,d1
		clr.w      d0
		lea.l      1032(a3),a0
		jsr        memset
		move.l     #$00000200,d1
		clr.w      d0
		lea.l      -524(a3),a0
		jsr        memset
		movea.l    (a2),a0
		move.w     566(a0),d0
		beq.s      INwindow_6
		move.w     568(a0),d1
		beq.s      INwindow_7
INwindow_6:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		move.l     52(a1),d0
		beq.s      INwindow_7
		movea.l    d0,a3
		bra.s      INwindow_8
INwindow_7:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		movea.l    48(a1),a3
INwindow_8:
		suba.l     a0,a0
		movea.l    8(a3),a1
		jsr        (a1)
		move.l     a0,(a4)
		move.l     a0,d0
		beq.s      INwindow_9
		movea.l    (a2),a1
		move.w     566(a1),d1
		beq.s      INwindow_1
		move.w     568(a1),d2
		beq.s      INwindow_10
		move.l     20(a0),d0
		beq.s      INwindow_10
		jsr        Awi_open
		addq.w     #1,d0
		bne.s      INwindow_1
INwindow_9:
		moveq.l    #-1,d0
		bra.s      INwindow_11
INwindow_10:
		movea.l    (a4),a0
		jsr        Awi_ropen
INwindow_1:
		clr.w      d0
INwindow_11:
		movem.l    (a7)+,a2-a4
		rts

		.globl TRwindow
TRwindow:
		movem.l    d3/a2-a5,-(a7)
		lea.l      Aroot_wi,a3
		subq.w     #1,-46(a3)
		bne        TRwindow_1
		moveq.l    #1,d0
		jsr        Awi_update
		lea.l      _ACSv_wiicons,a4
		move.w     516(a4),d3
		bra.s      TRwindow_2
TRwindow_4:
		move.w     d3,d0
		lsl.w      #2,d0
		lea.l      -1024(a4),a0
		movea.l    0(a0,d0.w),a2
		move.l     a2,d1
		beq.s      TRwindow_3
		cmp.l      (a3),d1
		beq.s      TRwindow_3
		suba.l     a1,a1
		movea.l    4(a2),a5
		movea.l    a2,a0
		moveq.l    #2,d0
		jsr        (a5)
TRwindow_3:
		subq.w     #1,d3
TRwindow_2:
		tst.w      d3
		bpl.s      TRwindow_4
		movea.l    ACSblk,a0
		movea.l    664(a0),a0
		jsr        (a0)
		suba.l     a1,a1
		moveq.l    #2,d0
		movea.l    (a3),a0
		movea.l    (a3),a2
		movea.l    4(a2),a2
		jsr        (a2)
		clr.w      d3
		bra.s      TRwindow_5
TRwindow_7:
		move.w     d3,d0
		lsl.w      #2,d0
		move.l     0(a4,d0.w),d1
		beq.s      TRwindow_6
		movea.l    d1,a0
		movea.l    36(a0),a0
		jsr        Aic_delete
		moveq.l    #72,d0
		move.w     d3,d1
		lsl.w      #2,d1
		movea.l    0(a4,d1.w),a0
		jsr        Ax_recycle
TRwindow_6:
		addq.w     #1,d3
TRwindow_5:
		cmp.w      #$0080,d3
		blt.s      TRwindow_7
		jsr        Ax_release
TRwindow_1:
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Awi_ontop
Awi_ontop:
		move.l     top_window,d0
		bne.s      Awi_ontop_1
		jsr        Awi_root
		rts
Awi_ontop_1:
		movea.l    top_window,a0
		rts

		.globl Awi_setontop
Awi_setontop:
		move.l     a0,top_window
		movea.l    a0,a0
		rts

Awi_iconcreate:
		movem.l    a2-a5,-(a7)
		movea.l    a0,a2
		lea.l      _ACSv_wiicons,a3
		move.w     32(a2),d0
		bmi.s      Awi_iconcreate_1
		cmp.w      #$0080,d0
		bge.s      Awi_iconcreate_1
		move.l     -1040(a3),d1
		beq.s      Awi_iconcreate_1
		lsl.w      #2,d0
		move.l     0(a3,d0.w),d2
		bne.s      Awi_iconcreate_1
		moveq.l    #72,d0
		jsr        Ax_malloc
		movea.l    a0,a4
		move.w     32(a2),d0
		lsl.w      #2,d0
		move.l     a0,0(a3,d0.w)
		bne.s      Awi_iconcreate_2
Awi_iconcreate_1:
		clr.w      d0
		bra.s      Awi_iconcreate_3
Awi_iconcreate_2:
		moveq.l    #72,d0
		movea.l    -1040(a3),a1
		movea.l    a4,a0
		jsr        memcpy
		movea.l    90(a2),a5
		move.l     a5,d0
		beq.s      Awi_iconcreate_4
		movea.l    a5,a0
		jsr        Aic_create
		move.l     a0,36(a4)
		bra.s      Awi_iconcreate_5
Awi_iconcreate_4:
		move.l     74(a2),d0
		beq.s      Awi_iconcreate_6
		movea.l    36(a4),a0
		move.l     d0,8(a0)
Awi_iconcreate_6:
		movea.l    -1036(a3),a0
		movea.l    12(a0),a0
		jsr        Aic_create
		move.l     a0,36(a4)
		movea.l    -1036(a3),a1
		movea.l    12(a1),a2
		move.l     -1044(a3),8(a2)
Awi_iconcreate_5:
		lea.l      24(a4),a0
		jsr        Aob_icon
		moveq.l    #1,d0
Awi_iconcreate_3:
		movem.l    (a7)+,a2-a5
		rts

Awi_icondelete:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		lea.l      _ACSv_wiicons,a3
		move.w     32(a2),d0
		bmi.s      Awi_icondelete_1
		cmp.w      #$0080,d0
		bge.s      Awi_icondelete_1
		lsl.w      #2,d0
		move.l     0(a3,d0.w),d1
		bne.s      Awi_icondelete_2
Awi_icondelete_1:
		clr.w      d0
		bra.s      Awi_icondelete_3
Awi_icondelete_2:
		move.w     32(a2),d0
		lsl.w      #2,d0
		movea.l    0(a3,d0.w),a0
		movea.l    36(a0),a0
		jsr        Aic_delete
		moveq.l    #72,d0
		move.w     32(a2),d1
		lsl.w      #2,d1
		movea.l    0(a3,d1.w),a0
		jsr        Ax_recycle
		move.w     32(a2),d0
		lsl.w      #2,d0
		clr.l      0(a3,d0.w)
		moveq.l    #1,d0
Awi_icondelete_3:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Awi_invalid
Awi_invalid:
		movem.l    d3/a2-a4,-(a7)
		clr.w      d3
		lea.l      gemmap,a2
		bra.s      Awi_invalid_1
Awi_invalid_3:
		move.w     d3,d0
		lsl.w      #2,d0
		movea.l    0(a2,d0.w),a3
		move.l     a3,d1
		beq.s      Awi_invalid_2
		move.w     #$FFFF,32(a3)
Awi_invalid_2:
		addq.w     #1,d3
Awi_invalid_1:
		cmp.w      #$0080,d3
		blt.s      Awi_invalid_3
		clr.w      d3
		bra.s      Awi_invalid_4
Awi_invalid_6:
		move.w     d3,d0
		lsl.w      #2,d0
		movea.l    0(a2,d0.w),a3
		clr.l      0(a2,d0.w)
		move.l     a3,d1
		beq.s      Awi_invalid_5
		movea.l    a3,a0
		jsr        Awi_closed
		suba.l     a1,a1
		moveq.l    #3,d0
		movea.l    a3,a0
		movea.l    4(a3),a4
		jsr        (a4)
Awi_invalid_5:
		addq.w     #1,d3
Awi_invalid_4:
		cmp.w      #$0080,d3
		blt.s      Awi_invalid_6
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Awi_wid
Awi_wid:
		tst.w      d0
		bmi.s      Awi_wid_1
		cmp.w      #$0080,d0
		blt.s      Awi_wid_2
Awi_wid_1:
		suba.l     a0,a0
		rts
Awi_wid_2:
		move.w     d0,d1
		lsl.w      #2,d1
		lea.l      gemmap,a0
		movea.l    0(a0,d1.w),a0
		rts

		.globl Awi_root
Awi_root:
		movea.l    Aroot_wi,a0
		rts

		.globl Awi_init
Awi_init:
		clr.w      d0
		rts

		.globl Ash_prog
Ash_prog:
		movem.l    d3-d6/a2-a5,-(a7)
		lea.l      -866(a7),a7
		move.l     a0,844(a7)
		move.l     a1,840(a7)
		clr.w      d3
		move.w     d3,d4
		moveq.l    #0,d5
		lea.l      xd3de8,a1
		lea.l      160(a7),a0
		moveq.l    #127,d0
Ash_prog_1:
		move.b     (a1)+,(a0)+
		dbf        d0,Ash_prog_1
		lea.l      32(a7),a4
		lea.l      xd3e68,a0
		movea.l    a4,a1
		moveq.l    #127,d0
Ash_prog_2:
		move.b     (a0)+,(a1)+
		dbf        d0,Ash_prog_2
		clr.l      24(a7)
		move.l     exec_com,d0
		beq.s      Ash_prog_3
		movea.l    d0,a0
		jsr        Ax_glfree
		clr.l      exec_com
Ash_prog_3:
		move.l     exec_path,d0
		beq.s      Ash_prog_4
		movea.l    d0,a0
		jsr        Ax_glfree
		clr.l      exec_path
Ash_prog_4:
		lea.l      ACSblk,a5
		movea.l    844(a7),a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne        Ash_prog_5
		movea.l    (a5),a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$0200,d0
		bne.s      Ash_prog_6
		movea.l    a4,a0
		movea.l    844(a7),a1
		moveq.l    #127,d0
		jsr        strncat
		moveq.l    #92,d0
		movea.l    a4,a0
		jsr        strrchr
		move.l     a0,28(a7)
		beq.s      Ash_prog_7
		clr.b      (a0)
Ash_prog_7:
		movea.l    a4,a0
		jsr        Af_2drv
		jsr        Dsetdrv
		lea.l      2(a4),a0
		jsr        Dsetpath
Ash_prog_6:
		lea.l      288(a7),a4
		movea.l    844(a7),a1
		movea.l    a4,a0
		jsr        Af_2ext
		jsr        Ast_toupper
		lea.l      xd3fd2,a0
		jsr        Ash_getenv
		move.l     a0,28(a7)
		beq.s      Ash_prog_8
		moveq.l    #127,d0
		movea.l    a0,a1
		lea.l      160(a7),a0
		jsr        strncat
		jsr        Ast_toupper
		clr.b      287(a7)
		lea.l      xd3fdc,a1
		lea.l      160(a7),a0
		jsr        strtok
		move.l     a0,28(a7)
		bra.s      Ash_prog_9
Ash_prog_11:
		movea.l    28(a7),a1
		movea.l    a4,a0
		jsr        strcmp
		tst.w      d0
		bne.s      Ash_prog_10
		moveq.l    #1,d4
		bra.s      Ash_prog_8
Ash_prog_10:
		lea.l      xd3fdc,a1
		suba.l     a0,a0
		jsr        strtok
		move.l     a0,28(a7)
Ash_prog_9:
		move.l     28(a7),d0
		bne.s      Ash_prog_11
Ash_prog_8:
		tst.w      d4
		bne.s      Ash_prog_12
		lea.l      xd3fde,a1
		movea.l    a4,a0
		jsr        strcmp
		tst.w      d0
		beq.s      Ash_prog_13
		lea.l      xd3fe2,a1
		movea.l    a4,a0
		jsr        strcmp
		tst.w      d0
		beq.s      Ash_prog_13
		lea.l      xd3fe6,a1
		movea.l    a4,a0
		jsr        strcmp
		tst.w      d0
		bne.s      Ash_prog_12
Ash_prog_13:
		moveq.l    #1,d4
Ash_prog_12:
		movea.l    (a5),a0
		move.w     568(a0),d0
		beq.s      Ash_prog_14
		move.l     1278(a0),d1
		bne.s      Ash_prog_15
		move.l     _globl,-(a7)
		movea.l    844(a7),a1
		moveq.l    #1,d2
		move.l     a1,-(a7)
		move.w     d2,-(a7)
		tst.w      d4
		beq.s      Ash_prog_16
		move.w     d2,d1
		bra.s      Ash_prog_17
Ash_prog_16:
		clr.w      d1
Ash_prog_17:
		clr.w      d0
		move.w     (a7)+,d2
		movea.l    852(a7),a0
		movea.l    (a7)+,a1
		jsr        mt_shel_write
		addq.w     #4,a7
		ext.l      d0
		bra        Ash_prog_18
Ash_prog_15:
		move.l     _globl,-(a7)
		movea.l    844(a7),a1
		movea.l    848(a7),a0
		moveq.l    #100,d2
		move.l     a1,-(a7)
		move.l     a0,-(a7)
		move.w     d2,-(a7)
		tst.w      d4
		beq.s      Ash_prog_19
		moveq.l    #1,d1
		bra.s      Ash_prog_20
Ash_prog_19:
		clr.w      d1
Ash_prog_20:
		moveq.l    #1,d0
		move.w     (a7)+,d2
		movea.l    (a7)+,a0
		movea.l    (a7)+,a1
		jsr        mt_shel_write
		addq.w     #4,a7
		ext.l      d0
		bra        Ash_prog_18
Ash_prog_14:
		jsr        Awi_diaend
		jsr        Amo_point
		movea.l    (a5),a0
		move.w     566(a0),d0
		beq        Ash_prog_21
		lea.l      (a7),a0
		jsr        Act_save
		lea.l      322(a7),a4
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      (a4)
		moveq.l    #10,d1
		clr.w      d0
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     (a4),d0
		bsr        Awi_wid
		move.l     a0,324(a7)
		moveq.l    #1,d3
		bra.s      Ash_prog_22
Ash_prog_24:
		move.w     d3,d0
		lsl.w      #2,d0
		lea.l      gemmap,a0
		movea.l    0(a0,d0.w),a2
		lea.l      328(a7),a1
		move.l     a2,0(a1,d0.w)
		clr.l      0(a0,d0.w)
		move.l     a2,d1
		beq.s      Ash_prog_23
		move.w     32(a2),(a4)
		move.w     (a4),d0
		movea.l    _globl,a0
		jsr        mt_wind_close
		movea.l    _globl,a0
		move.w     (a4),d0
		jsr        mt_wind_delete
		move.w     #$FFFF,32(a2)
		jsr        Aev_mess
Ash_prog_23:
		addq.w     #1,d3
Ash_prog_22:
		cmp.w      #$0080,d3
		blt.s      Ash_prog_24
		movea.l    Aroot_wi,a0
		move.w     32(a0),d0
		bne        Ash_prog_25
		movea.l    _globl,a1
		suba.l     a0,a0
		clr.w      d0
		jsr        mt_menu_bar
		clr.w      -(a7)
		clr.l      -(a7)
		moveq.l    #14,d1
		clr.w      d0
		jsr        wind_set
		addq.w     #6,a7
		tst.w      d4
		beq.s      Ash_prog_25
		move.l     844(a7),topline+12
		movea.l    (a5),a0
		move.w     12(a0),topline+20
		moveq.l    #-1,d0
		add.w      10(a0),d0
		move.w     d0,topline+22
		move.w     14(a0),-(a7)
		move.w     12(a0),-(a7)
		clr.w      -(a7)
		movea.l    _globl,a1
		clr.w      d2
		moveq.l    #1,d1
		lea.l      topline,a0
		clr.w      d0
		jsr        mt_objc_draw
		addq.w     #6,a7
		movea.l    (a5),a0
		move.w     14(a0),-(a7)
		move.w     12(a0),-(a7)
		move.w     10(a0),-(a7)
		move.w     8(a0),-(a7)
		move.w     14(a0),-(a7)
		move.w     12(a0),-(a7)
		move.w     10(a0),d2
		move.w     8(a0),d1
		moveq.l    #3,d0
		movea.l    _globl,a0
		jsr        mt_form_dial
		lea.l      12(a7),a7
Ash_prog_25:
		jsr        Aev_mess
		tst.w      d4
		beq.s      Ash_prog_26
		move.l     _globl,-(a7)
		movea.l    844(a7),a1
		movea.l    848(a7),a0
		clr.w      d2
		moveq.l    #1,d1
		clr.w      d0
		jsr        mt_shel_write
		addq.w     #4,a7
Ash_prog_26:
		moveq.l    #16,d0
		jsr        Awi_update
		movea.l    _globl,a0
		jsr        mt_appl_exit
		tst.w      d4
		beq.s      Ash_prog_27
		move.l     902(a7),-(a7)
		movea.l    844(a7),a1
		movea.l    848(a7),a0
		clr.w      d0
		jsr        Pexec
		addq.w     #4,a7
		move.l     d0,d5
		bra        Ash_prog_28
Ash_prog_27:
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0100,d0
		jsr        mt_graf_mouse
		movea.l    (a5),a0
		move.w     10(a0),d1
		move.w     12(a0),d0
		jsr        Abp_create
		move.l     a0,24(a7)
		move.l     a0,d0
		beq.s      Ash_prog_29
		clr.w      d1
		move.w     d1,316(a7)
		move.w     d1,314(a7)
		move.w     d1,308(a7)
		move.w     d1,306(a7)
		moveq.l    #-1,d2
		movea.l    (a5),a1
		add.w      12(a1),d2
		move.w     d2,318(a7)
		move.w     d2,310(a7)
		moveq.l    #-1,d1
		add.w      10(a1),d1
		move.w     d1,320(a7)
		move.w     d1,312(a7)
		move.l     d0,-(a7)
		lea.l      618(a1),a1
		lea.l      310(a7),a0
		movea.l    (a5),a4
		move.w     16(a4),d0
		moveq.l    #3,d1
		jsr        vro_cpyfm
		addq.w     #4,a7
Ash_prog_29:
		lea.l      298(a7),a4
		clr.w      d0
		move.w     d0,2(a4)
		move.w     d0,(a4)
		movea.l    (a5),a0
		move.w     8(a0),d1
		add.w      12(a0),d1
		subq.w     #1,d1
		move.w     d1,4(a4)
		move.w     10(a0),d0
		add.w      14(a0),d0
		subq.w     #1,d0
		move.w     d0,6(a4)
		move.w     16(a0),d0
		moveq.l    #1,d1
		jsr        vswr_mode
		clr.w      d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		clr.w      d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    a4,a0
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_bar
		lea.l      xd3fea,a0
		jsr        Cconws
		move.l     902(a7),-(a7)
		movea.l    844(a7),a1
		movea.l    848(a7),a0
		clr.w      d0
		jsr        Pexec
		addq.w     #4,a7
		move.l     d0,d5
		lea.l      xd3fef,a0
		jsr        Cconws
		moveq.l    #2,d0
		movea.l    (a5),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      Ash_prog_30
		lea.l      xd3ff2,a0
		jsr        Cconws
Ash_prog_31:
		jsr        Cconis
		tst.w      d0
		beq.s      Ash_prog_31
		jsr        Cconin
Ash_prog_30:
		move.l     24(a7),d0
		beq.s      Ash_prog_32
		movea.l    (a5),a0
		pea.l      618(a0)
		movea.l    d0,a1
		lea.l      310(a7),a0
		moveq.l    #3,d1
		movea.l    (a5),a4
		move.w     16(a4),d0
		jsr        vro_cpyfm
		addq.w     #4,a7
		movea.l    24(a7),a0
		jsr        Abp_delete
Ash_prog_32:
		movea.l    _globl,a1
		suba.l     a0,a0
		move.w     #$0101,d0
		jsr        mt_graf_mouse
Ash_prog_28:
		movea.l    _globl,a0
		jsr        mt_wind_new
		movea.l    _globl,a0
		jsr        mt_appl_exit
		movea.l    _globl,a0
		jsr        mt_appl_init
		movea.l    (a5),a0
		move.w     d0,(a0)
		moveq.l    #32,d0
		jsr        Awi_update
		clr.w      -(a7)
		clr.l      -(a7)
		moveq.l    #14,d1
		clr.w      d0
		jsr        wind_set
		addq.w     #6,a7
		movea.l    Aroot_wi,a2
		move.w     32(a2),d0
		bne.s      Ash_prog_33
		move.l     20(a2),d1
		beq.s      Ash_prog_34
		clr.w      -(a7)
		move.l     d1,-(a7)
		clr.w      d0
		moveq.l    #14,d1
		jsr        wind_set
		addq.w     #6,a7
Ash_prog_34:
		movea.l    _globl,a1
		moveq.l    #1,d0
		movea.l    94(a2),a0
		jsr        mt_menu_bar
		movea.l    (a5),a0
		move.w     14(a0),-(a7)
		move.w     12(a0),-(a7)
		move.w     10(a0),-(a7)
		move.w     8(a0),-(a7)
		move.w     14(a0),-(a7)
		move.w     12(a0),-(a7)
		move.w     10(a0),d2
		move.w     8(a0),d1
		moveq.l    #3,d0
		movea.l    _globl,a0
		jsr        mt_form_dial
		lea.l      12(a7),a7
Ash_prog_33:
		moveq.l    #1,d3
		bra.s      Ash_prog_35
Ash_prog_37:
		move.w     d3,d0
		lsl.w      #2,d0
		lea.l      328(a7),a0
		movea.l    0(a0,d0.w),a2
		move.l     a2,d1
		beq.s      Ash_prog_36
		movea.l    12(a2),a1
		movea.l    a2,a0
		jsr        (a1)
Ash_prog_36:
		addq.w     #1,d3
Ash_prog_35:
		cmp.w      #$0080,d3
		blt.s      Ash_prog_37
		move.l     324(a7),d0
		beq.s      Ash_prog_38
		movea.l    d0,a0
		movea.l    d0,a1
		movea.l    110(a1),a1
		jsr        (a1)
Ash_prog_38:
		lea.l      (a7),a0
		jsr        Act_restore
		bra        Ash_prog_39
Ash_prog_21:
		lea.l      xd3ee8,a0
		lea.l      850(a7),a1
		moveq.l    #15,d0
Ash_prog_40:
		move.b     (a0)+,(a1)+
		dbf        d0,Ash_prog_40
		moveq.l    #20,d6
		suba.l     a3,a3
		bra.s      Ash_prog_41
Ash_prog_43:
		moveq.l    #4,d0
		and.l      2(a3),d0
		beq.s      Ash_prog_41
		moveq.l    #32,d1
		and.w      12(a3),d1
		bne.s      Ash_prog_42
Ash_prog_41:
		movea.l    a3,a0
		jsr        Ash_nextdd
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      Ash_prog_43
Ash_prog_42:
		move.l     a3,d0
		beq.s      Ash_prog_5
		movea.l    844(a7),a0
		jsr        strlen
		addq.l     #1,d0
		jsr        Ax_glmalloc
		move.l     a0,exec_path
		beq.s      Ash_prog_5
		movea.l    844(a7),a1
		jsr        strcpy
		move.l     840(a7),d0
		beq.s      Ash_prog_44
		movea.l    d0,a0
		jsr        strlen
		jsr        Ax_glmalloc
		move.l     a0,exec_com
		bne.s      Ash_prog_45
		movea.l    exec_path,a0
		jsr        Ax_glfree
Ash_prog_5:
		moveq.l    #-1,d0
		bra        Ash_prog_18
Ash_prog_45:
		movea.l    840(a7),a1
		addq.w     #1,a1
		movea.l    exec_com,a0
		jsr        strcpy
Ash_prog_44:
		moveq.l    #16,d0
		jsr        Awi_update
		jsr        Aev_mess
		move.w     #$4722,850(a7)
		movea.l    (a5),a0
		move.w     (a0),852(a7)
		move.l     exec_path,d0
		moveq.l    #16,d1
		asr.l      d1,d0
		move.w     d0,856(a7)
		moveq.l    #-1,d2
		and.w      exec_path+2,d2
		move.w     d2,858(a7)
		move.l     exec_com,d3
		asr.l      d1,d3
		move.w     d3,860(a7)
		moveq.l    #-1,d4
		and.w      exec_com+2,d4
		move.w     d4,862(a7)
		movea.l    _globl,a1
		lea.l      850(a7),a0
		move.w     (a3),d0
		moveq.l    #16,d1
		jsr        mt_appl_write
		tst.w      d0
		beq        Ash_prog_46
		lea.l      848(a7),a3
		bra        Ash_prog_47
Ash_prog_54:
		move.l     _globl,-(a7)
		pea.l      (a3)
		pea.l      (a3)
		pea.l      (a3)
		pea.l      (a3)
		pea.l      (a3)
		pea.l      ($000001F4).w
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		movea.l    a3,a1
		lea.l      900(a7),a0
		clr.w      d2
		clr.w      d1
		moveq.l    #48,d0
		jsr        mt_evnt_multi
		lea.l      50(a7),a7
		and.w      #$0010,d0
		beq.s      Ash_prog_48
		cmpi.w     #$0029,850(a7)
		bne.s      Ash_prog_49
		suba.l     a0,a0
		jsr        Aev_GetAcClose
		jsr        Aev_unhidepointer
		moveq.l    #0,d5
		bra.s      Ash_prog_50
Ash_prog_49:
		cmpi.w     #$4723,850(a7)
		bne.s      Ash_prog_51
		move.w     856(a7),d0
		bne.s      Ash_prog_52
		moveq.l    #-1,d5
		bra.s      Ash_prog_53
Ash_prog_52:
		moveq.l    #0,d5
Ash_prog_53:
		bra.s      Ash_prog_50
Ash_prog_51:
		moveq.l    #32,d0
		jsr        Awi_update
		lea.l      850(a7),a0
		jsr        Aev_message
		moveq.l    #16,d0
		jsr        Awi_update
Ash_prog_48:
		subq.w     #1,d6
Ash_prog_47:
		tst.w      d6
		bne        Ash_prog_54
		bra.s      Ash_prog_50
Ash_prog_46:
		moveq.l    #-1,d5
Ash_prog_50:
		moveq.l    #32,d0
		jsr        Awi_update
Ash_prog_39:
		jsr        Aev_mess
		jsr        Aev_release
		jsr        Awi_diastart
		move.l     d5,d0
Ash_prog_18:
		lea.l      866(a7),a7
		movem.l    (a7)+,d3-d6/a2-a5
		rts

Awi_catch:
		movem.l    d3-d4/a2-a6,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		lea.l      cycle,a4
		lea.l      348(a4),a0
		lea.l      (a7),a1
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.w     34(a2),d0
		and.w      #$2000,d0
		beq.s      Awi_catch_1
		move.l     _globl,-(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		lea.l      14(a7),a1
		lea.l      12(a7),a0
		moveq.l    #11,d0
		jsr        mt_appl_getinfo
		lea.l      12(a7),a7
		tst.w      d0
		beq.s      Awi_catch_2
		moveq.l    #6,d0
		and.w      4(a7),d0
		bne.s      Awi_catch_1
Awi_catch_2:
		andi.w     #$DFFF,84(a2)
Awi_catch_1:
		move.w     34(a2),d0
		and.w      #$1000,d0
		beq.s      Awi_catch_3
		move.l     _globl,-(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		lea.l      14(a7),a1
		lea.l      12(a7),a0
		moveq.l    #11,d0
		jsr        mt_appl_getinfo
		lea.l      12(a7),a7
		tst.w      d0
		beq.s      Awi_catch_4
		moveq.l    #8,d0
		and.w      4(a7),d0
		bne.s      Awi_catch_3
Awi_catch_4:
		andi.w     #$EFFF,84(a2)
Awi_catch_3:
		clr.w      -(a7)
		clr.w      -(a7)
		movea.l    _globl,a0
		clr.w      d2
		clr.w      d1
		move.w     34(a2),d0
		jsr        mt_wind_create
		addq.w     #4,a7
		move.w     d0,d3
		cmp.w      #$0080,d0
		bge        Awi_catch_5
		tst.w      d0
		bpl.s      Awi_catch_6
		move.w     (a4),d4
Awi_catch_8:
		lea.l      gemmap,a5
		moveq.l    #1,d0
		add.w      (a4),d0
		and.w      #$007F,d0
		move.w     d0,(a4)
		lsl.w      #2,d0
		movea.l    0(a5,d0.w),a3
		move.w     (a4),d1
		beq.s      Awi_catch_7
		move.l     a3,d2
		beq.s      Awi_catch_7
		moveq.l    #4,d0
		and.w      84(a3),d0
		bne.s      Awi_catch_7
		move.w     86(a3),d1
		and.w      #$0400,d1
		bne.s      Awi_catch_7
		movea.l    a3,a0
		jsr        Awi_closed
		suba.l     a1,a1
		moveq.l    #3,d0
		movea.l    a3,a0
		movea.l    4(a3),a6
		jsr        (a6)
		clr.w      -(a7)
		clr.w      -(a7)
		movea.l    _globl,a0
		clr.w      d2
		clr.w      d1
		move.w     34(a2),d0
		jsr        mt_wind_create
		addq.w     #4,a7
		move.w     d0,d3
		bra.s      Awi_catch_6
Awi_catch_7:
		cmp.w      (a4),d4
		bne.s      Awi_catch_8
Awi_catch_6:
		tst.w      d3
		bmi.s      Awi_catch_9
		cmp.w      #$0080,d3
		bgt.s      Awi_catch_9
		move.w     d3,d0
		bra.s      Awi_catch_10
Awi_catch_9:
		movea.l    _globl,a1
		lea.l      _ALIB_ERR_WINDOW,a0
		moveq.l    #1,d0
		jsr        mt_form_alert
Awi_catch_5:
		moveq.l    #-1,d0
Awi_catch_10:
		addq.w     #8,a7
		movem.l    (a7)+,d3-d4/a2-a6
		rts

		.globl Awi_list
Awi_list:
		move.l     a2,-(a7)
		clr.w      d0
Awi_list_4:
		lea.l      _ACSv_winds,a1
		lea.l      next,a0
		move.w     (a0),d1
		cmp.w      1540(a1),d1
		ble.s      Awi_list_1
		clr.w      (a0)
		tst.w      d0
		beq.s      Awi_list_2
		suba.l     a0,a0
		bra.s      Awi_list_3
Awi_list_2:
		addq.w     #1,d0
Awi_list_1:
		move.w     (a0),d1
		lsl.w      #2,d1
		movea.l    0(a1,d1.w),a2
		addq.w     #1,(a0)
		move.l     a2,d1
		beq.s      Awi_list_4
		movea.l    a2,a0
Awi_list_3:
		movea.l    (a7)+,a2
		rts

		.globl Awi_sendall
Awi_sendall:
		movem.l    d3-d4/a2-a5,-(a7)
		move.w     d0,d4
		movea.l    a0,a4
		lea.l      _ACSv_winds,a2
		move.w     1540(a2),d3
		bra.s      Awi_sendall_1
Awi_sendall_3:
		move.w     d3,d0
		lsl.w      #2,d0
		movea.l    0(a2,d0.w),a3
		move.l     a3,d1
		beq.s      Awi_sendall_2
		movea.l    a4,a1
		movea.l    a3,a0
		movea.l    4(a3),a5
		move.w     d4,d0
		jsr        (a5)
Awi_sendall_2:
		subq.w     #1,d3
Awi_sendall_1:
		tst.w      d3
		bpl.s      Awi_sendall_3
		movem.l    (a7)+,d3-d4/a2-a5
		rts

		.globl Awi_lateupdate
Awi_lateupdate:
		movem.l    d3/a2-a4,-(a7)
		lea.l      _ACSv_winds,a2
		move.w     1540(a2),d3
		bra.s      Awi_lateupdate_1
Awi_lateupdate_5:
		move.w     d3,d0
		lsl.w      #2,d0
		movea.l    0(a2,d0.w),a3
		move.l     a3,d1
		beq.s      Awi_lateupdate_2
		moveq.l    #32,d2
		and.w      86(a3),d2
		beq.s      Awi_lateupdate_2
		andi.w     #$FFDF,86(a3)
		move.w     32(a3),d2
		bmi.s      Awi_lateupdate_3
		andi.w     #$FFFB,86(a3)
		movea.l    a3,a0
		movea.l    16(a3),a1
		jsr        (a1)
		moveq.l    #16,d0
		and.w      86(a3),d0
		beq.s      Awi_lateupdate_4
		lea.l      36(a3),a1
		movea.l    a3,a0
		movea.l    134(a3),a4
		jsr        (a4)
		bra.s      Awi_lateupdate_4
Awi_lateupdate_3:
		ori.w      #$0004,86(a3)
Awi_lateupdate_4:
		jsr        Ax_release
Awi_lateupdate_2:
		subq.w     #1,d3
Awi_lateupdate_1:
		tst.w      d3
		bpl.s      Awi_lateupdate_5
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Awi_up
Awi_up:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #2,a7
		lea.l      cycle,a2
		move.w     (a2),d3
Awi_up_3:
		lea.l      gemmap,a3
		moveq.l    #1,d0
		add.w      (a2),d0
		and.w      #$007F,d0
		move.w     d0,(a2)
		lsl.w      #2,d0
		movea.l    0(a3,d0.w),a4
		move.w     (a2),d1
		beq.s      Awi_up_1
		move.l     a4,d2
		beq.s      Awi_up_1
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      12(a7)
		clr.w      d0
		moveq.l    #10,d1
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     32(a4),d0
		cmp.w      (a7),d0
		beq.s      Awi_up_1
		movea.l    a4,a0
		movea.l    110(a4),a1
		jsr        (a1)
		bra.s      Awi_up_2
Awi_up_1:
		cmp.w      (a2),d3
		bne.s      Awi_up_3
Awi_up_2:
		addq.w     #2,a7
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Awi_down
Awi_down:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #2,a7
		lea.l      cycle,a2
		move.w     (a2),d3
Awi_down_3:
		lea.l      gemmap,a3
		moveq.l    #-1,d0
		add.w      (a2),d0
		and.w      #$007F,d0
		move.w     d0,(a2)
		lsl.w      #2,d0
		movea.l    0(a3,d0.w),a4
		move.w     (a2),d1
		beq.s      Awi_down_1
		move.l     a4,d2
		beq.s      Awi_down_1
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      12(a7)
		clr.w      d0
		moveq.l    #10,d1
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     32(a4),d0
		cmp.w      (a7),d0
		beq.s      Awi_down_1
		movea.l    a4,a0
		movea.l    110(a4),a1
		jsr        (a1)
		bra.s      Awi_down_2
Awi_down_1:
		cmp.w      (a2),d3
		bne.s      Awi_down_3
Awi_down_2:
		addq.w     #2,a7
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Awi_show
Awi_show:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.w     32(a2),d0
		ble.s      Awi_show_1
		movea.l    110(a2),a1
		jsr        (a1)
		bra.s      Awi_show_2
Awi_show_1:
		movea.l    a2,a0
		movea.l    12(a2),a1
		jsr        (a1)
Awi_show_2:
		movea.l    a2,a0
		bsr        Awi_setontop
		movea.l    (a7)+,a2
		rts

		.globl Awi_selfcreate
Awi_selfcreate:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Awi_selfcreate_1
		jsr        Awi_create
		bra.s      Awi_selfcreate_2
Awi_selfcreate_1:
		suba.l     a0,a0
Awi_selfcreate_2:
		movea.l    (a7)+,a2
		rts

MakeModernMenu:
		movem.l    d3/a2-a4,-(a7)
		lea.l      -30(a7),a7
		movea.l    a0,a2
		move.w     #$0001,(a7)
		cmpi.w     #$FFFF,box_trans
		bne.s      MakeModernMenu_1
		lea.l      28(a7),a3
		move.l     _globl,-(a7)
		pea.l      (a3)
		pea.l      (a3)
		movea.l    a3,a1
		lea.l      38(a7),a0
		moveq.l    #13,d0
		jsr        mt_appl_getinfo
		lea.l      12(a7),a7
		tst.w      d0
		beq.s      MakeModernMenu_2
		moveq.l    #1,d0
		and.w      26(a7),d0
		beq.s      MakeModernMenu_3
		moveq.l    #1,d1
		bra.s      MakeModernMenu_4
MakeModernMenu_3:
		clr.w      d1
MakeModernMenu_4:
		move.w     d1,box_trans
		bra.s      MakeModernMenu_1
MakeModernMenu_2:
		clr.w      box_trans
MakeModernMenu_1:
		move.w     box_trans,d0
		beq.s      MakeModernMenu_5
		cmpi.w     #$0014,6(a2)
		bne.s      MakeModernMenu_5
		andi.w     #$FFF0,14(a2)
		ori.w      #$0008,14(a2)
		andi.w     #$FF8F,14(a2)
		ori.w      #$0070,14(a2)
		andi.w     #$FF7F,14(a2)
		ori.w      #$0080,14(a2)
		ori.w      #$0400,8(a2)
MakeModernMenu_5:
		moveq.l    #8,d0
		and.w      10(a2),d0
		beq        MakeModernMenu_6
		cmpi.w     #$001C,6(a2)
		bne        MakeModernMenu_6
		movea.l    12(a2),a3
		movea.l    a3,a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      MakeModernMenu_7
		clr.w      d3
		bra.s      MakeModernMenu_8
MakeModernMenu_7:
		moveq.l    #1,d3
		bra.s      MakeModernMenu_9
MakeModernMenu_12:
		cmpi.b     #$2D,(a3)
		bne.s      MakeModernMenu_10
		moveq.l    #1,d3
		bra.s      MakeModernMenu_11
MakeModernMenu_10:
		clr.w      d3
MakeModernMenu_11:
		addq.w     #1,a3
MakeModernMenu_9:
		tst.w      d3
		beq.s      MakeModernMenu_8
		move.b     (a3),d0
		bne.s      MakeModernMenu_12
MakeModernMenu_8:
		tst.w      d3
		beq        MakeModernMenu_6
		movea.l    ACSblk,a0
		cmpi.w     #$0010,26(a0)
		blt.s      MakeModernMenu_13
		lea.l      dis_arrow_col,a0
		jsr        Aus_create
		movea.l    a0,a4
		bra.s      MakeModernMenu_14
MakeModernMenu_13:
		lea.l      dis_arrow_mon,a0
		jsr        Aus_create
		movea.l    a0,a4
MakeModernMenu_14:
		move.l     a4,d0
		beq.s      MakeModernMenu_6
		movea.l    a2,a1
		lea.l      2(a7),a0
		moveq.l    #24,d0
		jsr        memcpy
		move.w     #$0018,6(a2)
		move.l     a4,12(a2)
		move.l     8(a4),d0
		beq.s      MakeModernMenu_15
		lea.l      (a7),a1
		movea.l    a2,a0
		movea.l    d0,a3
		moveq.l    #1,d0
		jsr        (a3)
		bra.s      MakeModernMenu_16
MakeModernMenu_15:
		move.w     #$0001,(a7)
MakeModernMenu_16:
		cmpi.w     #$FFFF,(a7)
		beq.s      MakeModernMenu_17
		move.w     12(a7),d0
		and.w      #$2000,d0
		bne.s      MakeModernMenu_6
		movea.l    14(a7),a0
		jsr        Ast_delete
		bra.s      MakeModernMenu_6
MakeModernMenu_17:
		movea.l    a4,a0
		jsr        Aus_delete
		moveq.l    #24,d0
		lea.l      2(a7),a1
		movea.l    a2,a0
		jsr        memcpy
MakeModernMenu_6:
		moveq.l    #8,d0
		and.w      10(a2),d0
		beq.s      MakeModernMenu_18
		cmpi.w     #$0018,6(a2)
		bne.s      MakeModernMenu_18
		movea.l    12(a2),a0
		movea.l    (a0),a1
		cmpa.l     #A_arrows,a1
		bne.s      MakeModernMenu_18
		cmpi.l     #$22090001,4(a0)
		bne.s      MakeModernMenu_18
		movea.l    ACSblk,a3
		cmpi.w     #$0010,26(a3)
		blt.s      MakeModernMenu_18
		move.l     #$22010009,4(a0)
MakeModernMenu_18:
		moveq.l    #32,d0
		movea.l    a2,a0
		lea.l      24(a2),a2
		and.w      8(a0),d0
		beq        MakeModernMenu_1
		lea.l      30(a7),a7
		movem.l    (a7)+,d3/a2-a4
		rts

MakeOldMenu:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		bsr        Awi_root
		movea.l    a2,a1
		bra.s      MakeOldMenu_1
MakeOldMenu_6:
		cmpi.w     #$0014,6(a1)
		bne.s      MakeOldMenu_2
		move.l     a0,d0
		beq.s      MakeOldMenu_3
		cmpa.l     94(a0),a2
		beq.s      MakeOldMenu_4
MakeOldMenu_3:
		andi.w     #$FFF0,14(a1)
		andi.w     #$FF8F,14(a1)
		ori.w      #$0070,14(a1)
		andi.w     #$FF7F,14(a1)
MakeOldMenu_4:
		andi.w     #$FBFF,8(a1)
MakeOldMenu_2:
		moveq.l    #8,d0
		and.w      10(a1),d0
		beq.s      MakeOldMenu_5
		cmpi.w     #$0018,6(a1)
		bne.s      MakeOldMenu_5
		movea.l    12(a1),a3
		movea.l    (a3),a3
		cmpa.l     #A_arrows,a3
		bne.s      MakeOldMenu_5
		movea.l    12(a1),a3
		move.l     #$22090001,4(a3)
MakeOldMenu_5:
		lea.l      24(a1),a1
MakeOldMenu_1:
		moveq.l    #32,d0
		and.w      8(a1),d0
		beq.s      MakeOldMenu_6
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Awi_layout
Awi_layout:
		movem.l    d3-d5/a2-a5,-(a7)
		subq.w     #2,a7
		move.w     d2,d5
		lea.l      ACSblk,a2
		cmp.w      #$FFFF,d0
		ble.s      Awi_layout_1
		tst.w      d0
		beq.s      Awi_layout_2
		movea.l    (a2),a0
		movea.l    572(a0),a1
		andi.w     #$FEFF,14(a1)
		bra.s      Awi_layout_1
Awi_layout_2:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		ori.w      #$0100,14(a1)
Awi_layout_1:
		cmp.w      #$FFFF,d1
		ble.s      Awi_layout_3
		tst.w      d1
		beq.s      Awi_layout_4
		movea.l    (a2),a0
		movea.l    572(a0),a1
		andi.w     #$EFFF,14(a1)
		bra.s      Awi_layout_3
Awi_layout_4:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		ori.w      #$1000,14(a1)
Awi_layout_3:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$1000,d0
		beq.s      Awi_layout_5
		moveq.l    #1,d3
		bra.s      Awi_layout_6
Awi_layout_5:
		clr.w      d3
Awi_layout_6:
		clr.w      d4
		lea.l      _ACSv_winds,a3
		bra.s      Awi_layout_7
Awi_layout_11:
		move.w     d4,d0
		lsl.w      #2,d0
		movea.l    0(a3,d0.w),a4
		move.l     a4,d1
		beq.s      Awi_layout_8
		move.l     94(a4),d2
		beq.s      Awi_layout_8
		move.w     #$0001,(a7)
		lea.l      (a7),a1
		movea.l    a4,a0
		movea.l    4(a4),a5
		moveq.l    #53,d0
		jsr        (a5)
		tst.w      d0
		beq.s      Awi_layout_9
		move.w     (a7),d0
		beq.s      Awi_layout_8
Awi_layout_9:
		tst.w      d3
		beq.s      Awi_layout_10
		movea.l    94(a4),a0
		bsr        MakeOldMenu
		bra.s      Awi_layout_8
Awi_layout_10:
		movea.l    94(a4),a0
		bsr        MakeModernMenu
Awi_layout_8:
		addq.w     #1,d4
Awi_layout_7:
		cmp.w      #$0100,d4
		blt.s      Awi_layout_11
		tst.w      d5
		beq.s      Awi_layout_12
		movea.l    (a2),a0
		addq.w     #8,a0
		moveq.l    #-1,d1
		movea.l    (a2),a1
		move.w     (a1),d0
		jsr        Aev_WmRedraw
Awi_layout_12:
		addq.w     #2,a7
		movem.l    (a7)+,d3-d5/a2-a5
		rts

		.globl Awi_create
Awi_create:
		movem.l    d3/a2-a6,-(a7)
		movea.l    a0,a3
		move.l     #$000000A2,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     #$000000A2,d0
		movea.l    a3,a1
		jsr        memcpy
		lea.l      ACSblk,a3
		move.l     20(a2),d0
		beq.s      Awi_create_1
		movea.l    d0,a0
		jsr        Aob_create
		move.l     a0,20(a2)
		move.l     a0,d0
		beq        Awi_create_2
		jsr        Aob_fix
Awi_create_1:
		move.l     24(a2),d0
		beq.s      Awi_create_3
		movea.l    d0,a0
		jsr        Aob_create
		move.l     a0,24(a2)
		move.l     a0,d0
		beq.w      Awi_create_4
		jsr        Aob_fix
Awi_create_3:
		move.l     94(a2),d0
		beq.s      Awi_create_5
		movea.l    d0,a0
		jsr        Aob_create
		move.l     a0,94(a2)
		move.l     a0,d0
		beq.s      Awi_create_6
		movea.l    (a3),a1
		movea.l    572(a1),a0
		move.w     14(a0),d1
		and.w      #$1000,d1
		beq.s      Awi_create_7
		movea.l    d0,a0
		bsr        MakeOldMenu
		bra.s      Awi_create_8
Awi_create_7:
		movea.l    94(a2),a0
		bsr        MakeModernMenu
Awi_create_8:
		movea.l    94(a2),a0
		jsr        Aob_fix
		movea.l    94(a2),a0
		jsr        Ame_namefix
Awi_create_5:
		move.l     90(a2),d0
		beq.s      Awi_create_9
		movea.l    d0,a0
		jsr        Aic_create
		move.l     a0,90(a2)
		move.l     a0,d0
		bne.s      Awi_create_9
		movea.l    94(a2),a0
		jsr        Aob_delete
Awi_create_6:
		movea.l    24(a2),a0
		jsr        Aob_delete
Awi_create_4:
		movea.l    20(a2),a0
		jsr        Aob_delete
Awi_create_2:
		move.l     #$000000A2,d0
		movea.l    a2,a0
		jsr        Ax_recycle
		bra        Awi_create_10
Awi_create_9:
		movea.l    a2,a0
		jsr        Awi_uoself
		move.l     74(a2),d0
		beq.s      Awi_create_11
		movea.l    d0,a0
		jsr        Ast_create
		move.l     a0,74(a2)
Awi_create_11:
		move.l     78(a2),d0
		beq.s      Awi_create_12
		movea.l    d0,a0
		jsr        Ast_create
		move.l     a0,78(a2)
Awi_create_12:
		move.l     154(a2),d0
		beq.s      Awi_create_13
		movea.l    d0,a0
		jsr        Ast_create
		move.l     a0,154(a2)
Awi_create_13:
		move.l     158(a2),d0
		beq.s      Awi_create_14
		movea.l    d0,a0
		jsr        Ast_create
		move.l     a0,158(a2)
Awi_create_14:
		move.w     #$0004,86(a2)
		move.w     #$FFFF,88(a2)
		move.w     #$FFFF,28(a2)
		clr.w      82(a2)
		clr.w      d3
		lea.l      _ACSv_winds,a4
		lea.l      Aroot_wi,a5
		bra.s      Awi_create_15
Awi_create_20:
		move.w     d3,d0
		lsl.w      #2,d0
		move.l     0(a4,d0.w),d1
		bne.s      Awi_create_16
		cmp.w      1540(a4),d3
		ble.s      Awi_create_17
		move.w     d3,1540(a4)
Awi_create_17:
		move.w     d3,d0
		lsl.w      #2,d0
		move.l     a2,0(a4,d0.w)
		move.l     (a5),d1
		beq.s      Awi_create_18
		moveq.l    #1,d2
		and.w      84(a2),d2
		beq.s      Awi_create_18
		movea.l    a2,a1
		movea.l    d1,a0
		movea.l    d1,a6
		movea.l    4(a6),a6
		moveq.l    #100,d0
		jsr        (a6)
Awi_create_18:
		move.w     36(a2),d0
		movea.l    (a3),a0
		muls.w     18(a0),d0
		move.w     d0,36(a2)
		move.w     38(a2),d1
		movea.l    (a3),a0
		muls.w     20(a0),d1
		move.w     d1,38(a2)
		move.w     40(a2),d0
		movea.l    (a3),a0
		muls.w     18(a0),d0
		move.w     d0,40(a2)
		move.w     42(a2),d1
		movea.l    (a3),a0
		muls.w     20(a0),d1
		move.w     d1,42(a2)
		movea.l    a2,a0
		bra.s      Awi_create_19
Awi_create_16:
		addq.w     #1,d3
Awi_create_15:
		cmp.w      #$0100,d3
		blt.w      Awi_create_20
		movea.l    _globl,a1
		lea.l      _ALIB_ERR_WISLOT,a0
		moveq.l    #1,d0
		jsr        mt_form_alert
Awi_create_10:
		suba.l     a0,a0
Awi_create_19:
		movem.l    (a7)+,d3/a2-a6
		rts

		.globl Awi_slider
Awi_slider:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     32(a2),d3
		tst.w      d3
		bmi.s      Awi_slider_1
		lea.l      60(a2),a3
		move.w     34(a2),d0
		and.w      #$0800,d0
		beq.s      Awi_slider_2
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		move.w     (a3),-(a7)
		moveq.l    #8,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		move.w     4(a3),-(a7)
		moveq.l    #15,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
Awi_slider_2:
		move.w     34(a2),d0
		and.w      #$0100,d0
		beq.s      Awi_slider_1
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		move.w     2(a3),-(a7)
		moveq.l    #9,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		move.w     6(a3),-(a7)
		moveq.l    #16,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
Awi_slider_1:
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Awi_open
Awi_open:
		movem.l    d3/a2-a5,-(a7)
		lea.l      -34(a7),a7
		movea.l    a0,a2
		lea.l      8(a7),a4
		lea.l      Aroot_wi,a5
		lea.l      380(a5),a0
		movea.l    a4,a1
		move.l     (a0)+,(a1)+
		move.l     (a0)+,(a1)+
		move.w     32(a2),d0
		bpl        Awi_open_1
		moveq.l    #4,d1
		and.w      86(a2),d1
		beq.s      Awi_open_2
		andi.w     #$FFFB,86(a2)
		movea.l    a2,a0
		movea.l    16(a2),a1
		jsr        (a1)
		tst.w      d0
		bne.s      Awi_open_3
Awi_open_2:
		andi.w     #$F7FF,86(a2)
		movea.l    a2,a0
		bsr        Awi_catch
		move.w     d0,d3
		tst.w      d0
		bpl.s      Awi_open_4
Awi_open_3:
		moveq.l    #-1,d0
		bra        Awi_open_5
Awi_open_4:
		move.l     20(a2),d0
		bne.s      Awi_open_6
		lea.l      -24(a5),a0
		jsr        Aob_create
		move.l     a0,20(a2)
Awi_open_6:
		move.w     d3,32(a2)
		move.w     d3,d0
		lsl.w      #2,d0
		lea.l      gemmap,a0
		move.l     a2,0(a0,d0.w)
		move.w     84(a2),d1
		and.w      #$0100,d1
		beq.s      Awi_open_7
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #1,d2
		move.w     d2,-(a7)
		move.w     d3,d0
		moveq.l    #24,d1
		jsr        wind_set
		addq.w     #8,a7
Awi_open_7:
		clr.w      -(a7)
		clr.w      -(a7)
		move.l     74(a2),-(a7)
		moveq.l    #2,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
		clr.w      -(a7)
		clr.w      -(a7)
		move.l     78(a2),-(a7)
		moveq.l    #3,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
		move.w     38(a2),d0
		bne        Awi_open_8
		moveq.l    #16,d1
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		and.w      14(a1),d1
		beq        Awi_open_9
		move.l     20(a2),d2
		beq.w      Awi_open_9
		move.l     _globl,-(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		pea.l      14(a7)
		lea.l      16(a7),a1
		movea.l    d2,a0
		jsr        mt_form_center
		lea.l      16(a7),a7
		clr.w      d0
		movea.l    20(a2),a0
		move.w     d0,18(a0)
		movea.l    20(a2),a0
		move.w     d0,16(a0)
		move.l     24(a2),d1
		beq.s      Awi_open_10
		movea.l    d1,a0
		move.w     22(a0),d2
		sub.w      d2,2(a7)
Awi_open_10:
		move.l     _globl,-(a7)
		pea.l      20(a7)
		pea.l      24(a7)
		move.w     18(a7),-(a7)
		move.w     18(a7),-(a7)
		move.w     18(a7),-(a7)
		lea.l      38(a2),a1
		lea.l      36(a2),a0
		move.w     18(a7),d2
		move.w     34(a2),d1
		clr.w      d0
		jsr        mt_wind_calc
		lea.l      18(a7),a7
		bra.s      Awi_open_8
Awi_open_9:
		moveq.l    #8,d0
		add.w      d3,d0
		lsl.w      #3,d0
		move.w     d0,36(a2)
		moveq.l    #3,d1
		add.w      d3,d1
		lsl.w      #3,d1
		move.w     d1,38(a2)
		suba.l     a1,a1
		movea.l    a2,a0
		movea.l    4(a2),a3
		moveq.l    #14,d0
		jsr        (a3)
Awi_open_8:
		movea.l    a2,a0
		jsr        Awi_oblist
		movea.l    a2,a0
		bsr        Awi_slider
		move.w     88(a2),d0
		tst.w      d0
		bmi.s      Awi_open_11
		move.l     (a5),d0
		beq.s      Awi_open_11
		moveq.l    #2,d1
		and.w      84(a2),d1
		beq.s      Awi_open_12
		lea.l      88(a2),a1
		movea.l    d0,a0
		movea.l    d0,a3
		movea.l    4(a3),a3
		moveq.l    #102,d0
		jsr        (a3)
		bra.s      Awi_open_13
Awi_open_12:
		lea.l      88(a2),a1
		moveq.l    #101,d0
		movea.l    (a5),a0
		movea.l    (a5),a3
		movea.l    4(a3),a3
		jsr        (a3)
Awi_open_13:
		movea.l    (a5),a0
		move.l     20(a0),d0
		beq.s      Awi_open_11
		move.w     88(a2),d0
		movea.l    20(a0),a1
		movea.l    a4,a0
		jsr        Aob_offset
		movea.l    (a5),a0
		move.w     52(a0),d0
		add.w      d0,(a4)
		move.w     54(a0),d1
		add.w      d1,2(a4)
Awi_open_11:
		move.w     (a4),d0
		bpl.s      Awi_open_14
		clr.w      d1
		move.w     d1,2(a4)
		move.w     d1,(a4)
		moveq.l    #48,d0
		move.w     d0,6(a4)
		move.w     d0,4(a4)
Awi_open_14:
		jsr        Awi_diaend
		moveq.l    #2,d0
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      Awi_open_15
		move.w     42(a2),-(a7)
		move.w     40(a2),-(a7)
		move.w     38(a2),-(a7)
		move.w     36(a2),-(a7)
		move.w     6(a4),-(a7)
		move.w     4(a4),d2
		move.w     2(a4),d1
		move.w     (a4),d0
		movea.l    _globl,a0
		jsr        mt_graf_growbox
		lea.l      10(a7),a7
Awi_open_15:
		move.w     42(a2),-(a7)
		move.w     40(a2),-(a7)
		movea.l    _globl,a0
		move.w     38(a2),d2
		move.w     36(a2),d1
		move.w     d3,d0
		jsr        mt_wind_open
		addq.w     #4,a7
		movea.l    ACSblk,a0
		movea.l    640(a0),a1
		cmpi.w     #$0300,(a1)
		ble.s      Awi_open_16
		cmpi.w     #$0400,(a1)
		bge.s      Awi_open_16
		movea.l    a2,a0
		bsr        Awi_slider
Awi_open_16:
		movea.l    a2,a0
		bsr        Awi_setontop
		suba.l     a3,a3
		lea.l      18(a7),a4
		bra.s      Awi_open_17
Awi_open_20:
		moveq.l    #4,d0
		and.l      2(a3),d0
		beq.s      Awi_open_17
		lea.l      388(a5),a0
		movea.l    a4,a1
		moveq.l    #15,d1
Awi_open_18:
		move.b     (a0)+,(a1)+
		dbf        d1,Awi_open_18
		move.w     #$4724,(a4)
		movea.l    ACSblk,a0
		move.w     (a0),2(a4)
		move.w     d3,6(a4)
		movea.l    _globl,a1
		movea.l    a4,a0
		moveq.l    #16,d1
		move.w     (a3),d0
		jsr        mt_appl_write
		bra.s      Awi_open_19
Awi_open_17:
		movea.l    a3,a0
		jsr        Ash_nextdd
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      Awi_open_20
Awi_open_19:
		movea.l    20(a2),a4
		jsr        Aev_mess
		move.w     28(a2),d0
		bpl.s      Awi_open_21
		moveq.l    #8,d1
		movea.l    a4,a0
		moveq.l    #-1,d0
		jsr        Aob_findflag
		move.w     d0,28(a2)
		tst.w      d0
		bpl.s      Awi_open_22
		move.l     24(a2),d1
		beq.s      Awi_open_22
		movea.l    d1,a0
		moveq.l    #-1,d0
		moveq.l    #8,d1
		jsr        Aob_findflag
		or.w       #$1000,d0
		move.w     d0,28(a2)
Awi_open_22:
		move.w     28(a2),d0
		ble.s      Awi_open_21
		move.w     #$FFFF,30(a2)
Awi_open_21:
		jsr        Awi_diastart
Awi_open_1:
		clr.w      d0
Awi_open_5:
		lea.l      34(a7),a7
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Awi_register
Awi_register:
		movem.l    d3/a2-a5,-(a7)
		lea.l      -24(a7),a7
		movea.l    a0,a5
		lea.l      Aroot_wi,a2
		lea.l      404(a2),a0
		lea.l      (a7),a1
		move.l     (a0)+,(a1)+
		move.l     (a0)+,(a1)+
		move.w     32(a5),d0
		bmi.s      Awi_register_1
		moveq.l    #4,d1
		and.w      86(a5),d1
		beq.s      Awi_register_2
		andi.w     #$FFFB,86(a5)
		movea.l    a5,a0
		movea.l    16(a5),a1
		jsr        (a1)
		tst.w      d0
		beq.s      Awi_register_2
Awi_register_1:
		moveq.l    #-1,d0
		bra        Awi_register_3
Awi_register_2:
		andi.w     #$F7FF,86(a5)
		move.l     20(a5),d0
		bne.s      Awi_register_4
		lea.l      -24(a2),a0
		jsr        Aob_create
		move.l     a0,20(a5)
Awi_register_4:
		move.w     32(a5),d3
		move.w     d3,d0
		lsl.w      #2,d0
		lea.l      gemmap,a0
		move.l     a5,0(a0,d0.w)
		move.w     84(a5),d1
		and.w      #$0100,d1
		beq.s      Awi_register_5
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #1,d2
		move.w     d2,-(a7)
		move.w     d3,d0
		moveq.l    #24,d1
		jsr        wind_set
		addq.w     #8,a7
Awi_register_5:
		clr.w      -(a7)
		clr.w      -(a7)
		move.l     74(a5),-(a7)
		moveq.l    #2,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
		clr.w      -(a7)
		clr.w      -(a7)
		move.l     78(a5),-(a7)
		moveq.l    #3,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
		move.w     88(a5),d0
		tst.w      d0
		bmi.s      Awi_register_6
		move.l     (a2),d0
		beq.s      Awi_register_6
		moveq.l    #2,d1
		and.w      84(a5),d1
		beq.s      Awi_register_7
		lea.l      88(a5),a1
		movea.l    d0,a0
		movea.l    d0,a3
		movea.l    4(a3),a3
		moveq.l    #102,d0
		jsr        (a3)
		bra.s      Awi_register_8
Awi_register_7:
		lea.l      88(a5),a1
		moveq.l    #101,d0
		movea.l    (a2),a0
		movea.l    (a2),a3
		movea.l    4(a3),a3
		jsr        (a3)
Awi_register_8:
		movea.l    (a2),a0
		move.l     20(a0),d0
		beq.s      Awi_register_6
		move.w     88(a5),d0
		movea.l    20(a0),a1
		lea.l      (a7),a0
		jsr        Aob_offset
		movea.l    (a2),a0
		move.w     52(a0),d0
		add.w      d0,(a7)
		move.w     54(a0),d1
		add.w      d1,2(a7)
Awi_register_6:
		move.w     (a7),d0
		bpl.s      Awi_register_9
		clr.w      d1
		move.w     d1,2(a7)
		move.w     d1,(a7)
		moveq.l    #48,d0
		move.w     d0,6(a7)
		move.w     d0,4(a7)
Awi_register_9:
		jsr        Awi_diaend
		lea.l      ACSblk,a3
		moveq.l    #2,d0
		movea.l    (a3),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      Awi_register_10
		move.w     42(a5),-(a7)
		move.w     40(a5),-(a7)
		move.w     38(a5),-(a7)
		move.w     36(a5),-(a7)
		move.w     14(a7),-(a7)
		move.w     14(a7),d2
		move.w     12(a7),d1
		move.w     10(a7),d0
		movea.l    _globl,a0
		jsr        mt_graf_growbox
		lea.l      10(a7),a7
Awi_register_10:
		movea.l    (a3),a0
		movea.l    640(a0),a1
		cmpi.w     #$0300,(a1)
		ble.s      Awi_register_11
		cmpi.w     #$0400,(a1)
		bge.s      Awi_register_11
		movea.l    a5,a0
		bsr        Awi_slider
Awi_register_11:
		movea.l    a5,a0
		bsr        Awi_setontop
		suba.l     a5,a5
		lea.l      8(a7),a4
		bra.s      Awi_register_12
Awi_register_15:
		moveq.l    #4,d0
		and.l      2(a5),d0
		beq.s      Awi_register_12
		lea.l      412(a2),a0
		movea.l    a4,a1
		moveq.l    #15,d1
Awi_register_13:
		move.b     (a0)+,(a1)+
		dbf        d1,Awi_register_13
		move.w     #$4724,(a4)
		movea.l    (a3),a0
		move.w     (a0),2(a4)
		move.w     d3,6(a4)
		movea.l    _globl,a1
		movea.l    a4,a0
		moveq.l    #16,d1
		move.w     (a5),d0
		jsr        mt_appl_write
		bra.s      Awi_register_14
Awi_register_12:
		movea.l    a5,a0
		jsr        Ash_nextdd
		movea.l    a0,a5
		move.l     a5,d0
		bne.s      Awi_register_15
Awi_register_14:
		jsr        Aev_mess
		clr.w      d0
Awi_register_3:
		lea.l      24(a7),a7
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Awi_backdrop
Awi_backdrop:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.w     32(a2),d0
		ble.s      Awi_backdrop_1
		move.w     86(a2),d1
		and.w      #$0400,d1
		bne.s      Awi_backdrop_1
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #25,d1
		jsr        wind_set
		addq.w     #8,a7
Awi_backdrop_1:
		clr.w      d0
		movea.l    (a7)+,a2
		rts

		.globl Awi_modal
Awi_modal:
		moveq.l    #7,d0
		lea.l      modwins,a0
		bra.s      Awi_modal_1
Awi_modal_3:
		move.w     d0,d1
		lsl.w      #2,d1
		move.l     0(a0,d1.w),d2
		beq.s      Awi_modal_2
		movea.l    d2,a0
		rts
Awi_modal_2:
		subq.w     #1,d0
Awi_modal_1:
		tst.w      d0
		bpl.s      Awi_modal_3
		suba.l     a0,a0
		rts

		.globl Awi_up_modal
Awi_up_modal:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		subq.w     #2,a7
		bsr.w      Awi_modal
		movea.l    a0,a2
		move.l     a2,d0
		beq        Awi_up_modal_1
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      12(a7)
		moveq.l    #10,d1
		clr.w      d0
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     32(a2),d0
		cmp.w      (a7),d0
		beq.s      Awi_up_modal_2
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #10,d1
		jsr        wind_set
		addq.w     #8,a7
		ori.w      #$0010,86(a2)
		lea.l      36(a2),a1
		movea.l    a2,a0
		movea.l    134(a2),a3
		jsr        (a3)
		movea.l    a2,a0
		bsr        Awi_setontop
		bra        Awi_up_modal_1
Awi_up_modal_2:
		lea.l      ACSblk,a3
		moveq.l    #16,d0
		movea.l    (a3),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		bne        Awi_up_modal_3
		move.w     612(a0),d1
		move.w     610(a0),d0
		lea.l      52(a2),a0
		jsr        Aob_within
		tst.w      d0
		bne        Awi_up_modal_1
		movea.l    (a3),a0
		move.w     12(a0),d0
		sub.w      40(a2),d0
		move.w     610(a0),d1
		move.w     40(a2),d2
		asr.w      #1,d2
		sub.w      d2,d1
		cmp.w      d1,d0
		bge.s      Awi_up_modal_4
		bra.s      Awi_up_modal_5
Awi_up_modal_4:
		movea.l    (a3),a0
		move.w     610(a0),d0
		move.w     40(a2),d1
		asr.w      #1,d1
		sub.w      d1,d0
Awi_up_modal_5:
		move.w     d0,36(a2)
		movea.l    (a3),a0
		move.w     10(a0),d1
		add.w      14(a0),d1
		sub.w      42(a2),d1
		move.w     612(a0),d2
		move.w     42(a2),d0
		asr.w      #1,d0
		sub.w      d0,d2
		cmp.w      d2,d1
		bge.s      Awi_up_modal_6
		bra.s      Awi_up_modal_7
Awi_up_modal_6:
		movea.l    (a3),a0
		move.w     612(a0),d1
		move.w     42(a2),d0
		asr.w      #1,d0
		sub.w      d0,d1
Awi_up_modal_7:
		move.w     d1,38(a2)
		movea.l    (a3),a0
		move.w     8(a0),d0
		cmp.w      36(a2),d0
		ble.s      Awi_up_modal_8
		bra.s      Awi_up_modal_9
Awi_up_modal_8:
		move.w     36(a2),d0
Awi_up_modal_9:
		move.w     d0,36(a2)
		movea.l    (a3),a0
		move.w     10(a0),d1
		cmp.w      38(a2),d1
		ble.s      Awi_up_modal_10
		bra.s      Awi_up_modal_11
Awi_up_modal_10:
		move.w     38(a2),d1
Awi_up_modal_11:
		move.w     d1,38(a2)
		andi.w     #$FFFE,86(a2)
		movea.l    a2,a0
		jsr        Awi_cleanup
		move.w     42(a2),-(a7)
		move.w     40(a2),-(a7)
		move.w     38(a2),-(a7)
		move.w     36(a2),-(a7)
		moveq.l    #5,d1
		move.w     32(a2),d0
		jsr        wind_set
		addq.w     #8,a7
		bra.s      Awi_up_modal_1
Awi_up_modal_3:
		moveq.l    #4,d0
		movea.l    (a3),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      Awi_up_modal_1
		moveq.l    #7,d1
		moveq.l    #2,d0
		jsr        Bconout
Awi_up_modal_1:
		addq.w     #2,a7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

Awi_set_modal:
		movem.l    d3/a2-a3,-(a7)
		subq.w     #2,a7
		movea.l    a0,a3
		lea.l      modwins,a2
		tst.w      d0
		beq.s      Awi_set_modal_1
		clr.w      d3
		bra.s      Awi_set_modal_2
Awi_set_modal_5:
		move.w     d3,d0
		lsl.w      #2,d0
		move.l     0(a2,d0.w),d1
		bne.s      Awi_set_modal_3
		move.l     a3,0(a2,d0.w)
		bra.s      Awi_set_modal_4
Awi_set_modal_3:
		addq.w     #1,d3
Awi_set_modal_2:
		cmp.w      #$0008,d3
		blt.s      Awi_set_modal_5
Awi_set_modal_4:
		cmp.w      #$0008,d3
		bne.s      Awi_set_modal_6
		moveq.l    #-1,d0
		bra.w      Awi_set_modal_7
Awi_set_modal_6:
		tst.w      d3
		bne.s      Awi_set_modal_8
		clr.w      d0
		jsr        Awi_show_menu
Awi_set_modal_8:
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      12(a7)
		moveq.l    #10,d1
		clr.w      d0
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     32(a3),d0
		ble.s      Awi_set_modal_9
		move.w     (a7),d1
		cmp.w      d0,d1
		beq.s      Awi_set_modal_9
		movea.l    a3,a0
		movea.l    110(a3),a1
		jsr        (a1)
Awi_set_modal_9:
		movea.l    a3,a0
		bsr        Awi_setontop
		bra.s      Awi_set_modal_10
Awi_set_modal_1:
		move.w     86(a3),d0
		and.w      #$0400,d0
		beq.s      Awi_set_modal_10
		moveq.l    #7,d3
		bra.s      Awi_set_modal_11
Awi_set_modal_14:
		move.w     d3,d0
		lsl.w      #2,d0
		cmpa.l     0(a2,d0.w),a3
		bne.s      Awi_set_modal_12
		clr.l      0(a2,d0.w)
		bra.s      Awi_set_modal_13
Awi_set_modal_12:
		subq.w     #1,d3
Awi_set_modal_11:
		tst.w      d3
		bpl.s      Awi_set_modal_14
Awi_set_modal_13:
		tst.w      d3
		bne.s      Awi_set_modal_10
		moveq.l    #1,d0
		jsr        Awi_show_menu
Awi_set_modal_10:
		clr.w      d0
Awi_set_modal_7:
		addq.w     #2,a7
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Awi_show_menu
Awi_show_menu:
		movem.l    d3-d5/a2,-(a7)
		move.w     _ACSv_wmenu,d1
		beq        Awi_show_menu_1
		move.l     Aroot_wi,d2
		beq        Awi_show_menu_1
		movea.l    d2,a0
		move.l     94(a0),d1
		beq        Awi_show_menu_1
		movea.l    d1,a2
		tst.w      d0
		beq        Awi_show_menu_2
		bsr        Awi_modal
		move.l     a0,d0
		bne        Awi_show_menu_1
		jsr        A_isModDia
		tst.w      d0
		bne        Awi_show_menu_1
		movea.l    _globl,a1
		clr.w      d0
		suba.l     a0,a0
		jsr        mt_menu_bar
		move.w     2(a2),d5
		ext.l      d5
		move.l     d5,d4
		add.l      d4,d4
		add.l      d5,d4
		lsl.l      #3,d4
		move.w     0(a2,d4.l),d4
		ext.l      d4
		move.l     d4,d2
		add.l      d2,d2
		add.l      d4,d2
		lsl.l      #3,d2
		move.w     2(a2,d2.l),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     2(a2,d1.l),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$FFF7,10(a2,d0.l)
		move.w     50(a2),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d3
		bra.s      Awi_show_menu_3
Awi_show_menu_4:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$FFF7,10(a2,d0.l)
		move.w     0(a2,d0.l),d3
Awi_show_menu_3:
		cmp.w      #$0002,d3
		bne.s      Awi_show_menu_4
		move.w     menu_width,68(a2)
		bra        Awi_show_menu_5
Awi_show_menu_2:
		bsr        Awi_modal
		move.l     a0,d0
		bne.s      Awi_show_menu_6
		jsr        A_isModDia
		tst.w      d0
		beq        Awi_show_menu_1
Awi_show_menu_6:
		movea.l    _globl,a1
		clr.w      d0
		suba.l     a0,a0
		jsr        mt_menu_bar
		move.w     2(a2),d5
		ext.l      d5
		move.l     d5,d4
		add.l      d4,d4
		add.l      d5,d4
		lsl.l      #3,d4
		move.w     0(a2,d4.l),d4
		ext.l      d4
		move.l     d4,d2
		add.l      d2,d2
		add.l      d4,d2
		lsl.l      #3,d2
		move.w     2(a2,d2.l),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     2(a2,d1.l),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$0008,10(a2,d0.l)
		move.w     2(a2),d5
		ext.l      d5
		move.l     d5,d4
		add.l      d4,d4
		add.l      d5,d4
		lsl.l      #3,d4
		move.w     0(a2,d4.l),d4
		ext.l      d4
		move.l     d4,d2
		add.l      d2,d2
		add.l      d4,d2
		lsl.l      #3,d2
		move.w     2(a2,d2.l),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     2(a2,d1.l),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$FFFE,10(a2,d0.l)
		move.w     92(a2),68(a2)
		move.w     50(a2),d3
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		andi.w     #$FFFE,10(a2,d0.l)
		bra.s      Awi_show_menu_7
Awi_show_menu_8:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.w      #$0008,10(a2,d0.l)
Awi_show_menu_7:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a2,d0.l),d3
		cmp.w      #$0002,d3
		bne.s      Awi_show_menu_8
Awi_show_menu_5:
		movea.l    _globl,a1
		moveq.l    #1,d0
		movea.l    a2,a0
		jsr        mt_menu_bar
Awi_show_menu_1:
		movem.l    (a7)+,d3-d5/a2
		rts

Awi_ropen:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    94(a2),a4
		move.l     a0,gemmap
		clr.w      32(a2)
		lea.l      ACSblk,a3
		move.l     a4,d0
		beq.s      Awi_ropen_1
		movea.l    (a3),a0
		lea.l      543(a0),a0
		jsr        Ast_create
		move.w     2(a4),d3
		ext.l      d3
		move.l     d3,d2
		add.l      d2,d2
		add.l      d3,d2
		lsl.l      #3,d2
		move.w     2(a4,d2.l),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     2(a4,d1.l),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.l     a0,12(a4,d0.l)
		movea.l    a4,a0
		jsr        Ame_namefix
		movea.l    _globl,a1
		moveq.l    #1,d0
		movea.l    a4,a0
		jsr        mt_menu_bar
		move.w     68(a4),menu_width
		move.w     #$0001,_ACSv_wmenu
Awi_ropen_1:
		moveq.l    #4,d0
		and.w      86(a2),d0
		beq.s      Awi_ropen_2
		andi.w     #$FFFB,86(a2)
		movea.l    a2,a0
		movea.l    16(a2),a1
		jsr        (a1)
		tst.w      d0
		beq.s      Awi_ropen_2
		moveq.l    #-1,d0
		bra        Awi_ropen_3
Awi_ropen_2:
		movea.l    20(a2),a4
		move.l     a4,d0
		beq.s      Awi_ropen_4
		movea.l    (a3),a0
		move.w     8(a0),16(a4)
		movea.l    (a3),a0
		move.w     10(a0),18(a4)
		movea.l    (a3),a0
		move.w     12(a0),20(a4)
		movea.l    (a3),a0
		move.w     14(a0),22(a4)
		clr.w      -(a7)
		clr.w      -(a7)
		move.l     d0,-(a7)
		moveq.l    #14,d1
		clr.w      d0
		jsr        wind_set
		addq.w     #8,a7
		movea.l    (a3),a0
		move.w     14(a0),-(a7)
		move.w     12(a0),-(a7)
		move.w     10(a0),-(a7)
		move.w     8(a0),-(a7)
		move.w     14(a0),-(a7)
		move.w     12(a0),-(a7)
		move.w     10(a0),d2
		move.w     8(a0),d1
		moveq.l    #3,d0
		movea.l    _globl,a0
		jsr        mt_form_dial
		lea.l      12(a7),a7
		move.w     #$0001,_ACSv_wwork
Awi_ropen_4:
		clr.w      52(a2)
		clr.w      54(a2)
		movea.l    (a3),a0
		move.w     8(a0),d0
		add.w      12(a0),d0
		move.w     d0,56(a2)
		movea.l    (a3),a0
		move.w     10(a0),d1
		add.w      14(a0),d1
		move.w     d1,58(a2)
		clr.w      d0
Awi_ropen_3:
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Awi_closed
Awi_closed:
		movem.l    d3/a2-a5,-(a7)
		lea.l      -24(a7),a7
		movea.l    a0,a2
		bsr        Awi_modal
		move.l     a0,d0
		beq.s      Awi_closed_1
		bsr        Awi_modal
		cmpa.l     a0,a2
		bne        Awi_closed_2
Awi_closed_1:
		move.w     32(a2),d3
		move.w     #$FFFF,32(a2)
		moveq.l    #2,d0
		and.w      86(a2),d0
		beq.s      Awi_closed_3
		jsr        Awi_diaend
Awi_closed_3:
		moveq.l    #-1,d0
		move.w     d0,82(a2)
		move.w     d0,30(a2)
		move.w     d0,28(a2)
		movea.l    ACSblk,a0
		cmpa.l     576(a0),a2
		bne.s      Awi_closed_4
		jsr        Adr_unselect
Awi_closed_4:
		lea.l      _globl,a3
		tst.w      d3
		bne.s      Awi_closed_5
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #14,d1
		clr.w      d0
		jsr        wind_set
		addq.w     #8,a7
		movea.l    (a3),a1
		clr.w      d0
		suba.l     a0,a0
		jsr        mt_menu_bar
		bra        Awi_closed_6
Awi_closed_5:
		lea.l      Aroot_wi,a4
		move.w     86(a2),d0
		and.w      #$0500,d0
		bne.s      Awi_closed_7
		move.l     (a4),d1
		beq.s      Awi_closed_7
		move.w     88(a2),d2
		bmi.s      Awi_closed_8
		lea.l      88(a2),a1
		movea.l    d1,a0
		movea.l    d1,a5
		movea.l    4(a5),a5
		moveq.l    #103,d0
		jsr        (a5)
		bra.s      Awi_closed_7
Awi_closed_8:
		movea.l    a2,a1
		moveq.l    #100,d0
		movea.l    (a4),a0
		movea.l    (a4),a5
		movea.l    4(a5),a5
		jsr        (a5)
Awi_closed_7:
		tst.w      d3
		ble        Awi_closed_6
		moveq.l    #2,d0
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      Awi_closed_9
		move.w     88(a2),d1
		bmi.s      Awi_closed_10
		move.l     (a4),d2
		beq.s      Awi_closed_10
		movea.l    d2,a5
		move.l     20(a5),d0
		beq.s      Awi_closed_10
		move.w     d1,d0
		movea.l    20(a5),a1
		lea.l      (a7),a0
		jsr        Aob_offset
		movea.l    (a4),a0
		move.w     52(a0),d0
		add.w      d0,(a7)
		move.w     54(a0),d1
		add.w      d1,2(a7)
		bra.s      Awi_closed_11
Awi_closed_10:
		clr.w      d0
		move.w     d0,2(a7)
		move.w     d0,(a7)
		moveq.l    #48,d1
		move.w     d1,6(a7)
		move.w     d1,4(a7)
Awi_closed_11:
		move.w     42(a2),-(a7)
		move.w     40(a2),-(a7)
		move.w     38(a2),-(a7)
		move.w     36(a2),-(a7)
		move.w     14(a7),-(a7)
		movea.l    (a3),a0
		move.w     14(a7),d2
		move.w     12(a7),d1
		move.w     10(a7),d0
		jsr        mt_graf_shrinkbox
		lea.l      10(a7),a7
Awi_closed_9:
		movea.l    (a3),a0
		move.w     d3,d0
		jsr        mt_wind_close
		bsr        Awi_ontop
		cmpa.l     a0,a2
		bne.s      Awi_closed_12
		suba.l     a0,a0
		bsr        Awi_setontop
Awi_closed_12:
		movea.l    (a3),a0
		move.w     d3,d0
		jsr        mt_wind_delete
		clr.w      d0
		movea.l    a2,a0
		bsr        Awi_set_modal
		suba.l     a5,a5
		lea.l      8(a7),a2
		bra.s      Awi_closed_13
Awi_closed_16:
		moveq.l    #4,d0
		and.l      2(a5),d0
		beq.s      Awi_closed_13
		lea.l      428(a4),a0
		movea.l    a2,a1
		moveq.l    #15,d1
Awi_closed_14:
		move.b     (a0)+,(a1)+
		dbf        d1,Awi_closed_14
		move.w     #$4726,(a2)
		movea.l    ACSblk,a0
		move.w     (a0),2(a2)
		move.w     d3,6(a2)
		movea.l    (a3),a1
		movea.l    a2,a0
		moveq.l    #16,d1
		move.w     (a5),d0
		jsr        mt_appl_write
		bra.s      Awi_closed_15
Awi_closed_13:
		movea.l    a5,a0
		jsr        Ash_nextdd
		movea.l    a0,a5
		move.l     a5,d0
		bne.s      Awi_closed_16
Awi_closed_15:
		jsr        Aev_mess
		movea.l    ACSblk,a0
		movea.l    572(a0),a0
		lea.l      56(a0),a0
		jsr        Amo_new
Awi_closed_6:
		tst.w      d3
		bmi.s      Awi_closed_2
		move.w     d3,d0
		lsl.w      #2,d0
		lea.l      gemmap,a0
		clr.l      0(a0,d0.w)
Awi_closed_2:
		lea.l      24(a7),a7
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Awi_delete
Awi_delete:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		ori.w      #$0100,86(a2)
		movea.l    ACSblk,a1
		cmpa.l     576(a1),a0
		bne.s      Awi_delete_1
		clr.w      582(a1)
Awi_delete_1:
		movea.l    a2,a0
		jsr        CheckPcHelp
		movea.l    a2,a0
		jsr        CheckSTGuide
		movea.l    a2,a0
		bsr        Awi_icondelete
		moveq.l    #100,d3
		bra.s      Awi_delete_2
Awi_delete_4:
		movea.l    a2,a0
		movea.l    114(a2),a1
		jsr        (a1)
		subq.w     #1,d3
Awi_delete_2:
		move.w     32(a2),d0
		bmi.s      Awi_delete_3
		tst.w      d3
		bgt.s      Awi_delete_4
Awi_delete_3:
		tst.w      d3
		bgt.s      Awi_delete_5
		andi.w     #$F7FF,86(a2)
		movea.l    a2,a0
		bsr        Awi_closed
Awi_delete_5:
		lea.l      Aroot_wi,a3
		move.w     88(a2),d0
		bmi.s      Awi_delete_6
		move.l     (a3),d1
		beq.s      Awi_delete_6
		lea.l      88(a2),a1
		movea.l    d1,a0
		movea.l    d1,a4
		movea.l    4(a4),a4
		moveq.l    #101,d0
		jsr        (a4)
Awi_delete_6:
		movea.l    158(a2),a0
		jsr        Ast_delete
		movea.l    154(a2),a0
		jsr        Ast_delete
		movea.l    78(a2),a0
		jsr        Ast_delete
		movea.l    74(a2),a0
		jsr        Ast_delete
		movea.l    90(a2),a0
		jsr        Aic_delete
		movea.l    94(a2),a0
		jsr        Aob_delete
		movea.l    24(a2),a0
		jsr        Aob_delete
		movea.l    20(a2),a0
		jsr        Aob_delete
		cmpa.l     (a3),a2
		bne.s      Awi_delete_7
		clr.l      (a3)
		jsr        Aev_quit
Awi_delete_7:
		clr.w      d3
		lea.l      _ACSv_winds,a3
		lea.l      1540(a3),a4
		bra.s      Awi_delete_8
Awi_delete_13:
		move.w     d3,d0
		lsl.w      #2,d0
		cmpa.l     0(a3,d0.w),a2
		bne.s      Awi_delete_9
		clr.l      0(a3,d0.w)
		cmp.w      (a4),d3
		bne.s      Awi_delete_10
Awi_delete_11:
		move.w     (a4),d0
		subq.w     #1,(a4)
		tst.w      d0
		ble.s      Awi_delete_10
		move.w     (a4),d0
		lsl.w      #2,d0
		move.l     0(a3,d0.w),d1
		beq.s      Awi_delete_11
Awi_delete_10:
		move.l     #$000000A2,d0
		movea.l    a2,a0
		jsr        Ax_recycle
		bra.s      Awi_delete_12
Awi_delete_9:
		addq.w     #1,d3
Awi_delete_8:
		cmp.w      (a4),d3
		ble.s      Awi_delete_13
Awi_delete_12:
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Awi_topped
Awi_topped:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.w     32(a2),d3
		tst.w      d3
		ble.s      Awi_topped_1
		bsr        Awi_modal
		move.l     a0,d0
		beq.s      Awi_topped_2
		bsr        Awi_up_modal
		bra.s      Awi_topped_1
Awi_topped_2:
		jsr        Awi_diaend
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #10,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
		movea.l    a2,a0
		bsr        Awi_setontop
Awi_topped_1:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Awi_fulled
Awi_fulled:
		movem.l    a2-a4,-(a7)
		subq.w     #6,a7
		movea.l    a0,a2
		move.w     32(a2),d0
		ble        Awi_fulled_1
		movea.l    20(a2),a3
		lea.l      36(a2),a4
		lea.l      44(a2),a0
		moveq.l    #1,d1
		and.w      86(a2),d1
		beq.s      Awi_fulled_2
		move.w     (a0),(a4)
		move.w     2(a0),2(a4)
		move.w     4(a0),4(a4)
		move.w     6(a0),6(a4)
		move.w     16(a3),d0
		cmp.w      68(a2),d0
		bne.s      Awi_fulled_3
		move.w     18(a3),d1
		cmp.w      70(a2),d1
		beq.s      Awi_fulled_4
Awi_fulled_3:
		ori.w      #$0010,86(a2)
Awi_fulled_4:
		move.w     68(a2),16(a3)
		move.w     70(a2),18(a3)
		bra        Awi_fulled_5
Awi_fulled_2:
		move.w     (a4),(a0)
		move.w     2(a4),2(a0)
		move.w     4(a4),4(a0)
		move.w     6(a4),6(a0)
		moveq.l    #8,d0
		and.w      84(a2),d0
		beq.s      Awi_fulled_6
		movea.l    ACSblk,a0
		move.w     8(a0),(a4)
		movea.l    ACSblk,a0
		move.w     10(a0),2(a4)
		movea.l    ACSblk,a0
		move.w     12(a0),4(a4)
		movea.l    ACSblk,a0
		move.w     14(a0),6(a4)
		bra        Awi_fulled_7
Awi_fulled_6:
		move.w     72(a2),d0
		or.w       #$FF00,d0
		move.w     72(a2),d1
		asr.w      #8,d1
		move.w     d0,d2
		not.w      d2
		add.w      d2,20(a3)
		and.w      d0,20(a3)
		move.w     d1,d0
		not.w      d0
		add.w      d0,22(a3)
		and.w      d1,22(a3)
		move.l     _globl,-(a7)
		pea.l      6(a4)
		pea.l      4(a4)
		move.w     22(a3),-(a7)
		move.w     20(a3),-(a7)
		clr.w      -(a7)
		lea.l      22(a7),a1
		lea.l      22(a7),a0
		move.w     34(a2),d1
		clr.w      d0
		move.w     d0,d2
		jsr        mt_wind_calc
		lea.l      18(a7),a7
		move.w     (a4),d0
		add.w      4(a4),d0
		movea.l    ACSblk,a0
		move.w     8(a0),d1
		add.w      12(a0),d1
		cmp.w      d1,d0
		ble.s      Awi_fulled_8
		move.w     8(a0),(a4)
Awi_fulled_8:
		move.l     94(a2),(a7)
		beq.s      Awi_fulled_9
		movea.l    (a7),a0
		move.w     2(a0),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     22(a0,d0.l),d2
		add.w      d2,6(a4)
Awi_fulled_9:
		move.l     24(a2),d0
		beq.s      Awi_fulled_10
		movea.l    d0,a0
		move.w     22(a0),d1
		add.w      d1,6(a4)
Awi_fulled_10:
		move.w     2(a4),d0
		add.w      6(a4),d0
		movea.l    ACSblk,a0
		move.w     10(a0),d1
		add.w      14(a0),d1
		cmp.w      d1,d0
		ble.s      Awi_fulled_7
		move.w     10(a0),2(a4)
Awi_fulled_7:
		move.w     16(a3),68(a2)
		move.w     18(a3),70(a2)
		move.w     16(a3),d0
		bne.s      Awi_fulled_11
		move.w     18(a3),d1
		beq.s      Awi_fulled_12
Awi_fulled_11:
		ori.w      #$0010,86(a2)
Awi_fulled_12:
		clr.w      16(a3)
		clr.w      18(a3)
Awi_fulled_5:
		eori.w     #$0001,86(a2)
		movea.l    a2,a0
		jsr        Awi_oblist
		move.w     6(a4),-(a7)
		move.w     4(a4),-(a7)
		move.w     2(a4),-(a7)
		move.w     (a4),-(a7)
		moveq.l    #5,d1
		move.w     32(a2),d0
		jsr        wind_set
		addq.w     #8,a7
		movea.l    ACSblk,a0
		movea.l    640(a0),a1
		cmpi.w     #$0300,(a1)
		ble.s      Awi_fulled_13
		cmpi.w     #$0400,(a1)
		bge.s      Awi_fulled_13
		movea.l    a2,a0
		bsr        Awi_slider
Awi_fulled_13:
		moveq.l    #16,d0
		and.w      86(a2),d0
		beq.s      Awi_fulled_14
		moveq.l    #64,d1
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		and.w      14(a1),d1
		beq.s      Awi_fulled_14
		move.w     32(a2),d1
		move.w     (a0),d0
		movea.l    a4,a0
		jsr        Aev_WmRedraw
Awi_fulled_14:
		jsr        Aev_mess
		moveq.l    #16,d0
		and.w      86(a2),d0
		beq.s      Awi_fulled_1
		andi.w     #$FFFD,86(a2)
		lea.l      36(a2),a1
		movea.l    a2,a0
		movea.l    106(a2),a3
		jsr        (a3)
		jsr        Awi_diastart
Awi_fulled_1:
		addq.w     #6,a7
		movem.l    (a7)+,a2-a4
		rts

		.globl Awi_sized
Awi_sized:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     32(a2),d0
		ble        Awi_sized_1
		andi.w     #$FFFE,86(a2)
		lea.l      36(a2),a3
		move.w     4(a3),d3
		move.w     6(a3),d4
		move.w     (a1),(a3)
		move.w     2(a1),2(a3)
		lea.l      wi_minw,a0
		move.w     (a0),d0
		cmp.w      4(a1),d0
		ble.s      Awi_sized_2
		bra.s      Awi_sized_3
Awi_sized_2:
		move.w     4(a1),d0
Awi_sized_3:
		move.w     d0,4(a3)
		move.w     2(a0),d1
		cmp.w      6(a1),d1
		ble.s      Awi_sized_4
		bra.s      Awi_sized_5
Awi_sized_4:
		move.w     6(a1),d1
Awi_sized_5:
		move.w     d1,6(a3)
		movea.l    a2,a0
		jsr        Awi_oblist
		cmp.w      4(a3),d3
		bne.s      Awi_sized_6
		cmp.w      6(a3),d4
		bne.s      Awi_sized_6
		moveq.l    #16,d0
		and.w      86(a2),d0
		beq.w      Awi_sized_1
Awi_sized_6:
		move.w     6(a3),-(a7)
		move.w     4(a3),-(a7)
		move.w     2(a3),-(a7)
		move.w     (a3),-(a7)
		moveq.l    #5,d1
		move.w     32(a2),d0
		jsr        wind_set
		addq.w     #8,a7
		movea.l    ACSblk,a0
		movea.l    640(a0),a1
		cmpi.w     #$0300,(a1)
		ble.s      Awi_sized_7
		cmpi.w     #$0400,(a1)
		bge.s      Awi_sized_7
		movea.l    a2,a0
		bsr        Awi_slider
Awi_sized_7:
		moveq.l    #16,d0
		and.w      86(a2),d0
		beq.s      Awi_sized_1
		moveq.l    #64,d1
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		and.w      14(a1),d1
		beq.s      Awi_sized_8
		move.w     32(a2),d1
		move.w     (a0),d0
		movea.l    a3,a0
		jsr        Aev_WmRedraw
		bra.s      Awi_sized_1
Awi_sized_8:
		andi.w     #$FFFD,86(a2)
		lea.l      36(a2),a1
		movea.l    a2,a0
		movea.l    106(a2),a3
		jsr        (a3)
		jsr        Awi_diastart
Awi_sized_1:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

		.globl Awi_moved
Awi_moved:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.w     32(a2),d0
		ble.s      Awi_moved_1
		andi.w     #$FFFE,86(a2)
		move.w     (a1),36(a2)
		move.w     2(a1),38(a2)
		move.w     4(a1),40(a2)
		move.w     6(a1),42(a2)
		jsr        Awi_cleanup
		move.w     42(a2),-(a7)
		move.w     40(a2),-(a7)
		move.w     38(a2),-(a7)
		move.w     36(a2),-(a7)
		moveq.l    #5,d1
		move.w     32(a2),d0
		jsr        wind_set
		addq.w     #8,a7
Awi_moved_1:
		movea.l    (a7)+,a2
		rts

		.globl Awi_cleanup
Awi_cleanup:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -24(a7),a7
		movea.l    a0,a2
		move.w     86(a2),d0
		and.w      #$0800,d0
		bne        Awi_cleanup_1
		move.w     32(a2),d3
		movea.l    20(a2),a3
		movea.l    24(a2),a4
		movea.l    94(a2),a5
		move.w     72(a2),d1
		or.w       #$FF00,d1
		move.w     d1,2(a7)
		move.w     72(a2),d2
		asr.w      #8,d2
		move.w     d2,(a7)
		moveq.l    #32,d0
		and.w      34(a2),d0
		beq.s      Awi_cleanup_2
		not.w      d1
		add.w      d1,20(a3)
		move.w     2(a7),d0
		and.w      d0,20(a3)
		not.w      d2
		add.w      d2,22(a3)
		move.w     (a7),d1
		and.w      d1,22(a3)
Awi_cleanup_2:
		clr.w      d6
		move.l     a5,d0
		beq.s      Awi_cleanup_3
		move.w     2(a5),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     22(a5,d1.l),d6
Awi_cleanup_3:
		move.l     a4,d0
		beq.s      Awi_cleanup_4
		add.w      22(a4),d6
Awi_cleanup_4:
		move.w     36(a2),14(a7)
		move.w     38(a2),12(a7)
		move.w     40(a2),d7
		move.w     42(a2),d4
		lea.l      6(a7),a6
		move.l     _globl,-(a7)
		pea.l      8(a7)
		pea.l      (a6)
		move.w     22(a3),d0
		add.w      d6,d0
		move.w     d0,-(a7)
		move.w     20(a3),-(a7)
		clr.w      -(a7)
		lea.l      26(a7),a1
		lea.l      28(a7),a0
		clr.w      d2
		move.w     34(a2),d1
		clr.w      d0
		jsr        mt_wind_calc
		lea.l      18(a7),a7
		cmp.w      (a6),d7
		bge.s      Awi_cleanup_5
		move.w     d7,d0
		bra.s      Awi_cleanup_6
Awi_cleanup_5:
		move.w     (a6),d0
Awi_cleanup_6:
		move.w     d0,d7
		cmp.w      4(a7),d4
		bge.s      Awi_cleanup_7
		move.w     d4,d1
		bra.s      Awi_cleanup_8
Awi_cleanup_7:
		move.w     4(a7),d1
Awi_cleanup_8:
		move.w     d1,d4
		movea.l    ACSblk,a0
		cmp.w      12(a0),d7
		bge.s      Awi_cleanup_9
		move.w     d7,d0
		bra.s      Awi_cleanup_10
Awi_cleanup_9:
		movea.l    ACSblk,a0
		move.w     12(a0),d0
Awi_cleanup_10:
		move.w     d0,d7
		movea.l    ACSblk,a0
		cmp.w      14(a0),d4
		bge.s      Awi_cleanup_11
		move.w     d4,d1
		bra.s      Awi_cleanup_12
Awi_cleanup_11:
		movea.l    ACSblk,a0
		move.w     14(a0),d1
Awi_cleanup_12:
		move.w     d1,d4
		movea.l    ACSblk,a0
		cmp.w      18(a0),d7
		bge.s      Awi_cleanup_13
		move.w     18(a0),d0
		bra.s      Awi_cleanup_14
Awi_cleanup_13:
		move.w     d7,d0
Awi_cleanup_14:
		move.w     d0,d7
		movea.l    ACSblk,a0
		cmp.w      20(a0),d4
		bge.s      Awi_cleanup_15
		move.w     20(a0),d1
		bra.s      Awi_cleanup_16
Awi_cleanup_15:
		move.w     d4,d1
Awi_cleanup_16:
		move.w     d1,d4
		move.w     virt_desk+2,d5
		sub.w      8(a7),d5
		move.w     virt_desk,d0
		add.w      virt_desk+4,d0
		sub.w      d7,d0
		move.w     14(a7),d2
		cmp.w      d0,d2
		bge.s      Awi_cleanup_17
		bra.s      Awi_cleanup_18
Awi_cleanup_17:
		move.w     virt_desk,d2
		add.w      virt_desk+4,d2
		sub.w      d7,d2
Awi_cleanup_18:
		move.w     d2,14(a7)
		move.w     virt_desk+2,d0
		add.w      virt_desk+6,d0
		sub.w      d4,d0
		move.w     12(a7),d1
		cmp.w      d0,d1
		bge.s      Awi_cleanup_19
		bra.s      Awi_cleanup_20
Awi_cleanup_19:
		move.w     virt_desk+2,d1
		add.w      virt_desk+6,d1
		sub.w      d4,d1
Awi_cleanup_20:
		move.w     d1,12(a7)
		move.w     virt_desk,d0
		cmp.w      14(a7),d0
		ble.s      Awi_cleanup_21
		bra.s      Awi_cleanup_22
Awi_cleanup_21:
		move.w     14(a7),d0
Awi_cleanup_22:
		move.w     d0,14(a7)
		move.w     virt_desk+2,d1
		cmp.w      12(a7),d1
		ble.s      Awi_cleanup_23
		bra.s      Awi_cleanup_24
Awi_cleanup_23:
		move.w     12(a7),d1
Awi_cleanup_24:
		move.w     d1,12(a7)
		move.l     _globl,-(a7)
		pea.l      8(a7)
		pea.l      (a6)
		move.w     d4,-(a7)
		move.w     d7,-(a7)
		move.w     d1,-(a7)
		lea.l      26(a7),a1
		lea.l      28(a7),a0
		move.w     32(a7),d2
		move.w     34(a2),d1
		moveq.l    #1,d0
		jsr        mt_wind_calc
		lea.l      18(a7),a7
		sub.w      d6,4(a7)
		move.w     2(a7),d0
		and.w      d0,10(a7)
		move.w     8(a7),d1
		sub.w      d5,d1
		sub.w      (a7),d1
		subq.w     #1,d1
		and.w      (a7),d1
		add.w      d5,d1
		add.w      d6,d1
		move.w     d1,8(a7)
		moveq.l    #32,d2
		and.w      34(a2),d2
		beq.s      Awi_cleanup_25
		and.w      d0,(a6)
		move.w     (a7),d4
		and.w      d4,4(a7)
Awi_cleanup_25:
		move.l     a5,d0
		beq        Awi_cleanup_26
		move.w     2(a5),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     2(a5,d1.l),d5
		move.w     d5,d7
		ext.l      d7
		move.l     d7,d4
		add.l      d4,d4
		add.l      d7,d4
		lsl.l      #3,d4
		cmpi.w     #$0003,2(a5,d4.l)
		bne.s      Awi_cleanup_27
		move.w     72(a5),2(a5,d4.l)
		move.w     4(a5),d5
		move.w     d5,d4
		ext.l      d4
		move.l     d4,d2
		add.l      d2,d2
		add.l      d4,d2
		lsl.l      #3,d2
		move.w     2(a5,d2.l),d7
		ext.l      d7
		move.l     d7,d1
		add.l      d1,d1
		add.l      d7,d1
		lsl.l      #3,d1
		move.w     0(a5,d1.l),2(a5,d2.l)
Awi_cleanup_27:
		move.w     2(a5),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		ori.l      #$00FF0000,12(a5,d0.l)
		move.w     10(a7),d0
		movea.l    ACSblk,a0
		move.w     18(a0),d2
		move.w     d2,d1
		add.w      d1,d1
		add.w      d2,d1
		sub.w      d1,d0
		move.w     d0,16(a5)
		move.w     8(a7),d1
		sub.w      d6,d1
		subq.w     #1,d1
		move.w     d1,18(a5)
Awi_cleanup_26:
		move.w     10(a7),52(a2)
		move.w     8(a7),54(a2)
		move.w     (a6),56(a2)
		move.w     4(a7),58(a2)
		move.l     a4,d0
		beq        Awi_cleanup_28
		moveq.l    #64,d1
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		and.w      14(a1),d1
		beq.s      Awi_cleanup_29
		move.w     20(a4),d2
		cmp.w      (a6),d2
		bge.s      Awi_cleanup_29
		lea.l      16(a7),a5
		move.w     56(a2),d0
		movea.l    ACSblk,a0
		move.w     18(a0),d1
		add.w      d1,d1
		sub.w      d1,d0
		ble.s      Awi_cleanup_30
		bra.s      Awi_cleanup_31
Awi_cleanup_30:
		clr.w      d0
Awi_cleanup_31:
		add.w      52(a2),d0
		move.w     d0,(a5)
		move.w     54(a2),2(a5)
		movea.l    ACSblk,a0
		move.w     18(a0),d0
		add.w      d0,d0
		move.w     d0,4(a5)
		move.w     22(a4),6(a5)
		movea.l    a5,a0
		move.w     32(a2),d1
		movea.l    ACSblk,a1
		move.w     (a1),d0
		jsr        Aev_WmRedraw
		ori.w      #$0010,86(a2)
Awi_cleanup_29:
		clr.w      16(a4)
		move.w     22(a4),d0
		neg.w      d0
		move.w     d0,18(a4)
		move.w     (a6),20(a4)
Awi_cleanup_28:
		move.w     20(a3),d5
		sub.w      (a6),d5
		and.w      2(a7),d5
		move.w     16(a3),d0
		move.w     d5,d1
		neg.w      d1
		cmp.w      d1,d0
		bge.s      Awi_cleanup_32
		move.w     d1,16(a3)
Awi_cleanup_32:
		move.w     22(a3),d4
		sub.w      4(a7),d4
		and.w      (a7),d4
		move.w     18(a3),d0
		move.w     d4,d1
		neg.w      d1
		cmp.w      d1,d0
		bge.s      Awi_cleanup_33
		move.w     d1,18(a3)
Awi_cleanup_33:
		move.l     _globl,-(a7)
		pea.l      42(a2)
		pea.l      40(a2)
		move.w     16(a7),d0
		add.w      d6,d0
		move.w     d0,-(a7)
		move.w     (a6),-(a7)
		move.w     24(a7),d1
		sub.w      d6,d1
		move.w     d1,-(a7)
		lea.l      38(a2),a1
		lea.l      36(a2),a0
		move.w     28(a7),d2
		move.w     34(a2),d1
		clr.w      d0
		jsr        mt_wind_calc
		lea.l      18(a7),a7
		move.w     34(a2),d0
		and.w      #$0800,d0
		beq        Awi_cleanup_34
		moveq.l    #32,d1
		and.w      84(a2),d1
		bne        Awi_cleanup_34
		clr.w      d7
		tst.w      d5
		ble.s      Awi_cleanup_35
		move.w     16(a3),d2
		ext.l      d2
		move.l     d2,d0
		lsl.l      #5,d0
		sub.l      d2,d0
		lsl.l      #2,d0
		add.l      d2,d0
		lsl.l      #3,d0
		neg.l      d0
		move.w     d5,d1
		ext.l      d1
		jsr        _ldiv
		move.l     d0,d7
Awi_cleanup_35:
		cmp.w      60(a2),d7
		beq.s      Awi_cleanup_36
		move.w     d7,60(a2)
		tst.w      d3
		ble.s      Awi_cleanup_36
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		move.w     d7,-(a7)
		moveq.l    #8,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
Awi_cleanup_36:
		move.w     (a6),d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #5,d0
		sub.l      d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     20(a3),d1
		ext.l      d1
		jsr        _ldiv
		move.l     d0,d7
		cmp.w      64(a2),d7
		beq.s      Awi_cleanup_34
		move.w     d7,64(a2)
		tst.w      d3
		ble.s      Awi_cleanup_34
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		move.w     d7,-(a7)
		moveq.l    #15,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
Awi_cleanup_34:
		move.w     34(a2),d0
		and.w      #$0100,d0
		beq        Awi_cleanup_1
		moveq.l    #64,d1
		and.w      84(a2),d1
		bne        Awi_cleanup_1
		clr.w      d7
		tst.w      d4
		ble.s      Awi_cleanup_37
		move.w     18(a3),d2
		ext.l      d2
		move.l     d2,d0
		lsl.l      #5,d0
		sub.l      d2,d0
		lsl.l      #2,d0
		add.l      d2,d0
		lsl.l      #3,d0
		neg.l      d0
		move.w     d4,d1
		ext.l      d1
		jsr        _ldiv
		move.l     d0,d7
Awi_cleanup_37:
		cmp.w      62(a2),d7
		beq.s      Awi_cleanup_38
		move.w     d7,62(a2)
		tst.w      d3
		ble.s      Awi_cleanup_38
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		move.w     d7,-(a7)
		moveq.l    #9,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
Awi_cleanup_38:
		move.w     4(a7),d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #5,d0
		sub.l      d1,d0
		lsl.l      #2,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     22(a3),d1
		ext.l      d1
		jsr        _ldiv
		move.l     d0,d7
		cmp.w      66(a2),d7
		beq.s      Awi_cleanup_1
		move.w     d7,66(a2)
		tst.w      d3
		ble.s      Awi_cleanup_1
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		move.w     d7,-(a7)
		moveq.l    #16,d1
		move.w     d3,d0
		jsr        wind_set
		addq.w     #8,a7
Awi_cleanup_1:
		lea.l      24(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

Awi_oblist:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -18(a7),a7
		movea.l    a0,a4
		lea.l      12(a7),a2
		clr.w      (a2)
		lea.l      10(a7),a3
		clr.w      (a3)
		move.w     #$FFFF,6(a7)
		move.w     #$FFFF,4(a7)
		clr.w      d5
		move.w     86(a4),d0
		and.w      #$0800,d0
		bne        Awi_oblist_1
		movea.l    20(a4),a5
		move.l     a5,d1
		beq        Awi_oblist_1
		moveq.l    #8,d1
		and.w      84(a4),d1
		beq        Awi_oblist_2
		move.l     _globl,-(a7)
		pea.l      (a3)
		pea.l      (a2)
		move.w     42(a4),-(a7)
		move.w     40(a4),-(a7)
		move.w     38(a4),-(a7)
		lea.l      26(a7),a1
		lea.l      26(a7),a0
		move.w     36(a4),d2
		move.w     34(a4),d1
		moveq.l    #1,d0
		jsr        mt_wind_calc
		lea.l      18(a7),a7
		move.w     2(a5),d6
		clr.w      d7
		tst.w      d6
		ble        Awi_oblist_3
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     16(a5,d0.l),d4
		move.w     d4,16(a7)
		move.w     18(a5,d0.l),d2
		move.w     d2,14(a7)
		move.w     d2,(a7)
		bra        Awi_oblist_4
Awi_oblist_11:
		move.w     #$0080,d0
		move.w     d6,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		and.w      8(a5,d1.l),d0
		bne.w      Awi_oblist_5
		move.w     d4,d3
		add.w      20(a5,d1.l),d3
		cmp.w      (a2),d3
		ble.s      Awi_oblist_6
		cmp.w      2(a5),d6
		beq.s      Awi_oblist_6
		move.w     16(a7),d0
		sub.w      d4,d0
		add.w      d0,d3
		move.w     16(a7),d4
		move.w     d7,d0
		add.w      14(a7),d0
		add.w      d0,(a7)
		move.w     14(a7),d7
Awi_oblist_6:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		cmp.w      22(a5,d0.l),d7
		bge.s      Awi_oblist_7
		move.w     22(a5,d0.l),d7
Awi_oblist_7:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		cmp.w      16(a5,d0.l),d4
		bne.s      Awi_oblist_8
		move.w     18(a5,d0.l),d2
		cmp.w      (a7),d2
		beq.s      Awi_oblist_9
Awi_oblist_8:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     d4,16(a5,d0.l)
		move.w     (a7),18(a5,d0.l)
		moveq.l    #1,d5
Awi_oblist_9:
		cmp.w      (a2),d3
		ble.s      Awi_oblist_10
		move.w     d3,(a2)
Awi_oblist_10:
		move.w     d3,d4
		add.w      16(a7),d4
Awi_oblist_5:
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		move.w     0(a5,d0.l),d6
Awi_oblist_4:
		tst.w      d6
		bgt        Awi_oblist_11
		move.w     (a7),d0
		add.w      14(a7),d0
		add.w      d0,d7
Awi_oblist_3:
		move.w     20(a5),d0
		cmp.w      (a2),d0
		beq.s      Awi_oblist_12
		move.w     d0,6(a7)
		move.w     72(a4),d1
		or.w       #$FF00,d1
		and.w      d1,(a2)
		move.w     (a2),20(a5)
		move.w     34(a4),d1
		and.w      #$0800,d1
		beq.s      Awi_oblist_12
		moveq.l    #1,d5
Awi_oblist_12:
		move.l     94(a4),d0
		beq.s      Awi_oblist_13
		movea.l    d0,a0
		move.w     2(a0),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     22(a0,d1.l),d3
		sub.w      d3,(a3)
Awi_oblist_13:
		move.l     24(a4),d0
		beq.s      Awi_oblist_14
		movea.l    d0,a0
		move.w     22(a0),d1
		sub.w      d1,(a3)
Awi_oblist_14:
		cmp.w      (a3),d7
		bge.s      Awi_oblist_15
		move.w     (a3),d0
		bra.s      Awi_oblist_16
Awi_oblist_15:
		move.w     d7,d0
Awi_oblist_16:
		move.w     72(a4),d1
		asr.w      #8,d1
		or.w       #$FF00,d1
		and.w      d1,d0
		move.w     d0,(a3)
		move.w     22(a5),d2
		cmp.w      d0,d2
		beq.s      Awi_oblist_2
		move.w     d2,4(a7)
		move.w     d0,22(a5)
		move.w     34(a4),d1
		and.w      #$0800,d1
		beq.s      Awi_oblist_2
		moveq.l    #1,d5
Awi_oblist_2:
		move.w     60(a4),d3
		move.w     62(a4),2(a7)
		movea.l    a4,a0
		bsr        Awi_cleanup
		tst.w      d5
		bne.w      Awi_oblist_17
		moveq.l    #8,d0
		and.w      84(a4),d0
		beq.s      Awi_oblist_18
		move.w     34(a4),d1
		and.w      #$0800,d1
		beq.s      Awi_oblist_19
		move.w     6(a7),d2
		cmp.w      (a2),d2
		bge.s      Awi_oblist_19
		cmpi.w     #$03E8,60(a4)
		bne.s      Awi_oblist_19
		moveq.l    #1,d5
Awi_oblist_19:
		tst.w      d5
		bne.s      Awi_oblist_17
		move.w     34(a4),d0
		and.w      #$0100,d0
		beq.s      Awi_oblist_17
		move.w     4(a7),d1
		cmp.w      (a3),d1
		bge.s      Awi_oblist_17
		cmpi.w     #$03E8,62(a4)
		bne.s      Awi_oblist_17
		bra.s      Awi_oblist_20
Awi_oblist_18:
		move.w     34(a4),d0
		and.w      #$0800,d0
		beq.s      Awi_oblist_21
		move.w     60(a4),d1
		bne.s      Awi_oblist_22
		tst.w      d3
		beq.s      Awi_oblist_21
Awi_oblist_22:
		moveq.l    #1,d5
Awi_oblist_21:
		tst.w      d5
		bne.s      Awi_oblist_17
		move.w     34(a4),d0
		and.w      #$0100,d0
		beq.s      Awi_oblist_17
		move.w     62(a4),d1
		bne.s      Awi_oblist_20
		move.w     2(a7),d2
		beq.s      Awi_oblist_17
Awi_oblist_20:
		moveq.l    #1,d5
Awi_oblist_17:
		tst.w      d5
		beq.s      Awi_oblist_1
		ori.w      #$0010,86(a4)
Awi_oblist_1:
		lea.l      18(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

		.globl Awi_iconify
Awi_iconify:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		move.w     32(a2),d1
		ble.s      Awi_iconify_1
		move.w     86(a2),d2
		and.w      #$0C00,d2
		bne.s      Awi_iconify_1
		bsr        Awi_iconcreate
		tst.w      d0
		bne.s      Awi_iconify_2
Awi_iconify_1:
		clr.w      d0
		bra        Awi_iconify_3
Awi_iconify_2:
		movea.l    ACSblk,a0
		cmpa.l     576(a0),a2
		bne.s      Awi_iconify_4
		jsr        Adr_unselect
		jsr        Aev_mess
Awi_iconify_4:
		moveq.l    #-1,d0
		move.w     d0,82(a2)
		move.w     d0,30(a2)
		move.w     d0,28(a2)
		moveq.l    #-2,d1
		and.w      86(a2),d1
		or.w       #$0800,d1
		move.w     d1,86(a2)
		tst.w      d3
		beq.s      Awi_iconify_5
		ori.w      #$1000,86(a2)
Awi_iconify_5:
		moveq.l    #8,d0
		lea.l      36(a2),a1
		lea.l      44(a2),a0
		jsr        memcpy
		lea.l      _globl,a3
		movea.l    (a3),a0
		move.w     32(a2),d0
		jsr        mt_wind_close
		moveq.l    #-1,d0
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		moveq.l    #26,d1
		move.w     32(a2),d0
		jsr        wind_set
		addq.w     #8,a7
		moveq.l    #-1,d0
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		movea.l    (a3),a0
		move.w     d0,d2
		move.w     d0,d1
		move.w     32(a2),d0
		jsr        mt_wind_open
		addq.w     #4,a7
		moveq.l    #25,d1
		move.w     32(a2),d0
		jsr        wind_set
		lea.l      gemmap,a4
		move.w     32(a2),d0
		lsl.w      #2,d0
		lea.l      2100(a4),a0
		movea.l    0(a0,d0.w),a5
		pea.l      22(a5)
		pea.l      20(a5)
		pea.l      18(a5)
		pea.l      16(a5)
		moveq.l    #4,d1
		move.w     32(a2),d0
		jsr        wind_get
		lea.l      16(a7),a7
		movea.l    36(a5),a0
		move.w     20(a5),d0
		sub.w      22(a0),d0
		asr.w      #1,d0
		move.w     d0,18(a0)
		move.w     22(a5),d1
		sub.w      24(a0),d1
		sub.w      32(a0),d1
		asr.w      #1,d1
		move.w     d1,20(a0)
		move.w     32(a0),d0
		beq.s      Awi_iconify_6
		move.w     30(a0),d2
		beq.s      Awi_iconify_6
		move.w     20(a5),d1
		sub.w      d2,d1
		asr.w      #1,d1
		move.w     d1,26(a0)
		move.w     20(a0),d0
		add.w      24(a0),d0
		move.w     d0,28(a0)
		bra.s      Awi_iconify_7
Awi_iconify_6:
		move.w     20(a5),d0
		asr.w      #1,d0
		move.w     d0,26(a0)
		move.w     22(a5),d1
		asr.w      #1,d1
		move.w     d1,28(a0)
Awi_iconify_7:
		tst.w      d3
		beq.w      Awi_iconify_8
		jsr        Adr_unselect
		moveq.l    #1,d3
		bra.s      Awi_iconify_9
Awi_iconify_12:
		move.w     d3,d0
		lsl.w      #2,d0
		movea.l    0(a4,d0.w),a5
		move.l     a5,d1
		beq.s      Awi_iconify_10
		cmp.w      32(a2),d3
		beq.s      Awi_iconify_10
		move.w     86(a5),d2
		and.w      #$0800,d2
		beq.s      Awi_iconify_11
		movea.l    a5,a0
		bsr        Awi_icondelete
		moveq.l    #8,d0
		lea.l      44(a5),a1
		lea.l      36(a5),a0
		jsr        memcpy
Awi_iconify_11:
		move.w     d3,d0
		lsl.w      #2,d0
		lea.l      544(a4),a0
		move.l     a5,0(a0,d0.w)
		clr.l      0(a4,d0.w)
		move.w     32(a5),d0
		movea.l    (a3),a0
		jsr        mt_wind_close
		movea.l    (a3),a0
		move.w     32(a5),d0
		jsr        mt_wind_delete
		move.w     #$FFFF,32(a5)
		ori.w      #$0800,86(a5)
		jsr        Aev_mess
Awi_iconify_10:
		addq.w     #1,d3
Awi_iconify_9:
		cmp.w      #$0080,d3
		blt.s      Awi_iconify_12
Awi_iconify_8:
		moveq.l    #1,d0
Awi_iconify_3:
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Awi_uniconify
Awi_uniconify:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq        Awi_uniconify_1
		move.w     86(a2),d1
		and.w      #$0800,d1
		beq        Awi_uniconify_1
		bsr        Awi_icondelete
		tst.w      d0
		beq        Awi_uniconify_1
		moveq.l    #8,d0
		lea.l      44(a2),a1
		lea.l      36(a2),a0
		jsr        memcpy
		move.w     50(a2),-(a7)
		move.w     48(a2),-(a7)
		move.w     46(a2),-(a7)
		move.w     44(a2),-(a7)
		moveq.l    #27,d1
		move.w     32(a2),d0
		jsr        wind_set
		addq.w     #8,a7
		jsr        Awi_diaend
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #10,d1
		move.w     32(a2),d0
		jsr        wind_set
		addq.w     #8,a7
		andi.w     #$F7FF,86(a2)
		moveq.l    #8,d1
		moveq.l    #-1,d0
		movea.l    20(a2),a0
		jsr        Aob_findflag
		move.w     d0,28(a2)
		tst.w      d0
		bpl.s      Awi_uniconify_2
		move.l     24(a2),d1
		beq.s      Awi_uniconify_2
		movea.l    d1,a0
		moveq.l    #-1,d0
		moveq.l    #8,d1
		jsr        Aob_findflag
		or.w       #$1000,d0
		move.w     d0,28(a2)
Awi_uniconify_2:
		move.w     #$FFFF,30(a2)
		jsr        Awi_diastart
Awi_uniconify_1:
		move.w     86(a2),d0
		and.w      #$1000,d0
		beq.s      Awi_uniconify_3
		moveq.l    #1,d3
		lea.l      icnmap,a2
		bra.s      Awi_uniconify_4
Awi_uniconify_6:
		move.w     d3,d0
		lsl.w      #2,d0
		movea.l    0(a2,d0.w),a3
		move.l     a3,d1
		beq.s      Awi_uniconify_5
		andi.w     #$F7FF,86(a3)
		movea.l    a3,a0
		movea.l    12(a3),a1
		jsr        (a1)
		move.w     d3,d0
		lsl.w      #2,d0
		clr.l      0(a2,d0.w)
		jsr        Aev_mess
Awi_uniconify_5:
		addq.w     #1,d3
Awi_uniconify_4:
		cmp.w      #$0080,d3
		blt.s      Awi_uniconify_6
Awi_uniconify_3:
		moveq.l    #1,d0
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Awi_service
Awi_service:
		move.l     a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d1
		subq.w     #2,d1
		beq.s      Awi_service_1
		bra.s      Awi_service_2
Awi_service_1:
		movea.l    a2,a0
		bsr        Awi_delete
		moveq.l    #1,d0
		bra.s      Awi_service_3
Awi_service_2:
		clr.w      d0
Awi_service_3:
		movea.l    (a7)+,a2
		rts

		.globl Awi_dialog
Awi_dialog:
		movem.l    d3-d4/a2-a6,-(a7)
		lea.l      -42(a7),a7
		movea.l    a0,a2
		lea.l      ACSblk,a4
		lea.l      _globl,a5
		move.w     86(a2),d0
		and.w      #$0800,d0
		bne.w      Awi_dialog_1
		move.w     a_dialog_active,d1
		beq.s      Awi_dialog_2
		move.l     20(a2),d2
		beq.s      Awi_dialog_1
		lea.l      (a7),a0
		jsr        Act_save
		movea.l    (a4),a0
		move.l     a2,600(a0)
		movea.l    20(a2),a0
		jsr        A_dialog
		move.w     d0,d3
		lea.l      (a7),a0
		jsr        Act_restore
		bra        Awi_dialog_3
Awi_dialog_2:
		move.w     32(a2),d0
		bpl.s      Awi_dialog_4
		movea.l    (a4),a0
		move.w     14(a0),-(a7)
		move.w     12(a0),-(a7)
		move.w     10(a0),d2
		move.w     8(a0),d1
		clr.w      d0
		movea.l    (a5),a0
		jsr        mt_wind_create
		addq.w     #4,a7
		move.w     d0,d4
		tst.w      d0
		bmi        Awi_dialog_5
		movea.l    (a5),a0
		jsr        mt_wind_delete
Awi_dialog_4:
		move.l     20(a2),d0
		beq.s      Awi_dialog_1
		move.w     86(a2),d1
		and.w      #$0400,d1
		beq.s      Awi_dialog_6
Awi_dialog_1:
		moveq.l    #-3,d0
		bra        Awi_dialog_7
Awi_dialog_6:
		moveq.l    #1,d0
		movea.l    a2,a0
		bsr        Awi_set_modal
		addq.w     #1,d0
		beq.s      Awi_dialog_5
		lea.l      (a7),a0
		jsr        Act_save
		movea.l    (a4),a0
		move.l     a2,600(a0)
		andi.w     #$BFFF,34(a2)
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      52(a7)
		moveq.l    #10,d1
		clr.w      d0
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     32(a2),d0
		bmi.s      Awi_dialog_8
		cmp.w      40(a7),d0
		beq.s      Awi_dialog_8
		movea.l    a2,a0
		bsr        Awi_topped
		bra.s      Awi_dialog_9
Awi_dialog_8:
		ori.w      #$0100,86(a2)
		movea.l    a2,a0
		movea.l    12(a2),a1
		jsr        (a1)
		tst.w      d0
		beq.s      Awi_dialog_10
		lea.l      (a7),a0
		jsr        Act_restore
		clr.w      d0
		movea.l    a2,a0
		bsr        Awi_set_modal
Awi_dialog_5:
		moveq.l    #-2,d0
		bra        Awi_dialog_7
Awi_dialog_10:
		andi.w     #$FEFF,86(a2)
Awi_dialog_9:
		move.w     88(a2),d0
		tst.w      d0
		bmi.s      Awi_dialog_11
		move.l     Aroot_wi,d0
		beq.s      Awi_dialog_11
		lea.l      88(a2),a1
		movea.l    d0,a0
		movea.l    d0,a3
		movea.l    4(a3),a3
		moveq.l    #101,d0
		jsr        (a3)
Awi_dialog_11:
		ori.w      #$0400,86(a2)
		move.l     (a5),-(a7)
		movea.l    (a4),a0
		pea.l      614(a0)
		pea.l      714(a0)
		movea.l    a0,a1
		lea.l      612(a1),a1
		lea.l      610(a0),a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
Awi_dialog_21:
		lea.l      24(a7),a3
		movea.l    (a4),a0
		clr.w      616(a0)
		moveq.l    #-1,d3
		moveq.l    #16,d0
		jsr        Awi_update
		move.l     (a5),-(a7)
		movea.l    (a4),a0
		pea.l      716(a0)
		pea.l      718(a0)
		pea.l      614(a0)
		pea.l      714(a0)
		pea.l      612(a0)
		move.l     562(a0),d0
		moveq.l    #16,d1
		asr.l      d1,d0
		moveq.l    #0,d2
		move.w     d0,d2
		lsl.l      d1,d2
		moveq.l    #0,d4
		move.w     564(a0),d4
		or.l       d4,d2
		move.l     d2,-(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		moveq.l    #1,d0
		move.w     d0,-(a7)
		move.w     d0,-(a7)
		move.w     612(a0),-(a7)
		move.w     610(a0),-(a7)
		move.w     d0,-(a7)
		move.w     712(a0),-(a7)
		movea.l    a0,a1
		lea.l      610(a1),a1
		movea.l    a3,a0
		movea.l    (a4),a6
		move.w     710(a6),d2
		move.w     720(a6),d1
		moveq.l    #55,d0
		jsr        mt_evnt_multi
		lea.l      50(a7),a7
		move.w     d0,d4
		movea.l    (a4),a0
		move.w     614(a0),d1
		move.w     718(a0),d0
		jsr        nkc_gemks2n
		movea.l    (a4),a0
		move.w     d0,718(a0)
		moveq.l    #32,d0
		jsr        Awi_update
		moveq.l    #16,d0
		and.w      d4,d0
		beq.s      Awi_dialog_12
		movea.l    a3,a0
		jsr        Aev_message
		cmpi.w     #$0029,(a3)
		bne.s      Awi_dialog_12
		moveq.l    #-1,d3
		moveq.l    #32,d0
		jsr        Awi_update
		bra        Awi_dialog_13
Awi_dialog_12:
		moveq.l    #2,d0
		and.w      d4,d0
		beq.s      Awi_dialog_14
		movea.l    (a4),a0
		move.w     716(a0),d1
		move.w     714(a0),d0
		jsr        evbutton
		move.w     d0,d3
Awi_dialog_14:
		moveq.l    #1,d0
		and.w      d4,d0
		beq.s      Awi_dialog_15
		suba.l     a0,a0
		jsr        evkeybrd
		move.w     d0,d3
Awi_dialog_15:
		move.l     (a5),-(a7)
		movea.l    (a4),a0
		pea.l      614(a0)
		pea.l      714(a0)
		movea.l    a0,a1
		lea.l      612(a1),a1
		lea.l      610(a0),a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		movea.l    (a4),a0
		move.w     714(a0),d0
		bne.s      Awi_dialog_16
		moveq.l    #4,d1
		and.w      d4,d1
		beq.s      Awi_dialog_17
		jsr        Aev_unhidepointer
Awi_dialog_17:
		jsr        evmouse
Awi_dialog_16:
		jsr        Ax_release
		bsr        Awi_lateupdate
		movea.l    (a4),a0
		move.l     Aroot_wi,600(a0)
		movea.l    (a4),a0
		movea.l    684(a0),a0
		jsr        (a0)
		movea.l    (a4),a0
		move.w     616(a0),d0
		beq.s      Awi_dialog_18
		cmp.w      #$FFFF,d3
		bne        Awi_dialog_13
		move.l     20(a2),d1
		beq        Awi_dialog_13
		movea.l    d1,a0
		moveq.l    #-1,d0
		moveq.l    #2,d1
		jsr        Aob_findflag
		move.w     d0,d3
		bra.w      Awi_dialog_13
Awi_dialog_18:
		tst.w      d3
		bmi.s      Awi_dialog_19
		move.w     d3,d0
		and.w      #$1000,d0
		beq.s      Awi_dialog_20
		move.w     d3,d4
		and.w      #$0FFF,d4
		moveq.l    #5,d1
		move.w     d4,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		movea.l    24(a2),a0
		and.w      8(a0,d2.l),d1
		subq.w     #5,d1
		bne.s      Awi_dialog_19
		movea.l    20(a2),a1
		move.w     32(a1,d2.l),d1
		and.w      #$8000,d1
		beq.s      Awi_dialog_13
		move.l     24(a1,d2.l),d0
		beq.s      Awi_dialog_13
		bra.s      Awi_dialog_19
Awi_dialog_20:
		moveq.l    #5,d0
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    20(a2),a0
		and.w      8(a0,d1.l),d0
		subq.w     #5,d0
		bne.s      Awi_dialog_19
		move.w     32(a0,d1.l),d4
		and.w      #$8000,d4
		beq.s      Awi_dialog_13
		move.l     24(a0,d1.l),d0
		beq.s      Awi_dialog_13
Awi_dialog_19:
		move.w     32(a2),d0
		bpl        Awi_dialog_21
Awi_dialog_13:
		movea.l    (a4),a0
		clr.w      616(a0)
		move.w     32(a2),d0
		bmi.s      Awi_dialog_22
		movea.l    a2,a0
		movea.l    114(a2),a1
		jsr        (a1)
Awi_dialog_22:
		clr.w      d0
		movea.l    a2,a0
		bsr        Awi_set_modal
		andi.w     #$FBFF,86(a2)
		lea.l      (a7),a0
		jsr        Act_restore
		jsr        Aev_mess
		jsr        Aev_mess
Awi_dialog_3:
		move.w     d3,d0
Awi_dialog_7:
		lea.l      42(a7),a7
		movem.l    (a7)+,d3-d4/a2-a6
		rts

		.globl Awi_doform
Awi_doform:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a4
		movea.l    a1,a5
		suba.l     a2,a2
		movea.l    a2,a3
		moveq.l    #-2,d3
		movea.l    8(a4),a1
		movea.l    a5,a0
		jsr        (a1)
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Awi_doform_1
		movea.l    ACSblk,a1
		move.w     12(a1),d1
		cmp.w      56(a2),d1
		ble.s      Awi_doform_2
		andi.w     #$F1FF,34(a2)
Awi_doform_2:
		movea.l    ACSblk,a0
		move.w     14(a0),d0
		cmp.w      58(a2),d0
		ble.s      Awi_doform_3
		andi.w     #$FE3F,34(a2)
Awi_doform_3:
		movea.l    ACSblk,a0
		move.w     14(a0),d0
		cmp.w      58(a2),d0
		ble.s      Awi_doform_4
		move.w     12(a0),d1
		cmp.w      56(a2),d1
		ble.s      Awi_doform_4
		andi.w     #$FFDB,34(a2)
Awi_doform_4:
		andi.w     #$9FFF,34(a2)
		movea.l    a2,a0
		bsr        Awi_dialog
		move.w     d0,d3
		movea.l    a2,a0
		bsr        Awi_delete
Awi_doform_1:
		cmp.w      #$FFFF,d3
		bge.s      Awi_doform_5
		movea.l    20(a4),a0
		jsr        Aob_create
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Awi_doform_6
		jsr        A_dialog
		move.w     d0,d3
		movea.l    a3,a0
		jsr        Aob_delete
		bra.s      Awi_doform_5
Awi_doform_6:
		lea.l      xd3ff8,a0
		moveq.l    #1,d0
		jsr        Awi_alert
Awi_doform_5:
		move.w     d3,d0
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Awi_diaabort
Awi_diaabort:
		movea.l    ACSblk,a0
		move.w     #$0001,616(a0)
		rts

		.globl Awi_shadow
Awi_shadow:
		move.l     a2,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		move.w     32(a2),d0
		bpl.s      Awi_shadow_1
		moveq.l    #1,d0
		bra.s      Awi_shadow_2
Awi_shadow_1:
		pea.l      4(a7)
		pea.l      8(a7)
		pea.l      10(a7)
		pea.l      12(a7)
		moveq.l    #11,d1
		move.w     32(a2),d0
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     86(a2),d0
		and.w      #$2000,d0
		bne.s      Awi_shadow_3
		move.w     4(a7),d1
		bne.s      Awi_shadow_4
		move.w     6(a7),d2
		bne.s      Awi_shadow_4
Awi_shadow_3:
		moveq.l    #1,d0
		bra.s      Awi_shadow_2
Awi_shadow_4:
		clr.w      d0
Awi_shadow_2:
		addq.w     #8,a7
		movea.l    (a7)+,a2
		rts

		.globl _init_alert
_init_alert:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #8,a7
		movea.l    a0,a2
		move.l     (a0),d0
		beq        _init_alert_1
		ori.w      #$0020,86(a2)
		lea.l      timer1,a3
		jsr        Ash_gettimer
		move.l     d0,(a3)
		sub.l      4(a3),d0
		cmp.l      #$00000258,d0
		ble        _init_alert_1
		move.l     (a3),4(a3)
		moveq.l    #5,d3
		bra.s      _init_alert_2
_init_alert_4:
		move.w     #$0080,d0
		move.w     d3,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    20(a2),a0
		and.w      8(a0,d1.l),d0
		beq.s      _init_alert_3
		addq.w     #1,d3
_init_alert_2:
		cmp.w      #$000D,d3
		ble.s      _init_alert_4
_init_alert_3:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a2),a0
		ori.w      #$0080,8(a0,d0.l)
		subq.w     #1,d3
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a2),a0
		andi.w     #$FF7F,8(a0,d0.l)
		movea.l    20(a2),a1
		lea.l      (a7),a0
		moveq.l    #2,d0
		jsr        Aob_offset
		move.w     52(a2),d0
		add.w      d0,(a7)
		move.w     54(a2),d1
		add.w      d1,2(a7)
		lea.l      (a7),a1
		movea.l    a2,a0
		movea.l    106(a2),a4
		jsr        (a4)
		cmp.w      #$0005,d3
		bne.s      _init_alert_1
		movea.l    ACSblk,a0
		move.w     #$0001,616(a0)
		moveq.l    #0,d0
		move.l     d0,4(a3)
		move.l     d0,(a3)
_init_alert_1:
		clr.w      d0
		addq.w     #8,a7
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Awi_alert
Awi_alert:
		movem.l    d3-d6/a2-a5,-(a7)
		lea.l      -40(a7),a7
		move.w     d0,d5
		move.l     a0,36(a7)
		jsr        strlen
		moveq.l    #9,d1
		cmp.l      d0,d1
		bhi        Awi_alert_1
		lea.l      _W_ALERT,a0
		movea.l    _W_ALERT+8,a1
		jsr        (a1)
		movea.l    a0,a3
		move.l     a3,d0
		beq        Awi_alert_2
		movea.l    ACSblk,a1
		move.l     992(a1),d1
		beq.s      Awi_alert_3
		movea.l    74(a3),a2
		movea.l    d1,a0
		jsr        Ast_create
		move.l     a0,74(a3)
		move.l     a0,d0
		bne        Awi_alert_4
		bra        Awi_alert_5
Awi_alert_3:
		movea.l    74(a3),a2
		movea.l    36(a7),a0
		move.b     1(a0),d0
		ext.w      d0
		sub.w      #$0031,d0
		beq.s      Awi_alert_6
		subq.w     #1,d0
		beq.s      Awi_alert_7
		subq.w     #1,d0
		beq.s      Awi_alert_8
		bra.s      Awi_alert_9
Awi_alert_6:
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		movea.l    368(a1),a0
		jsr        Ast_create
		move.l     a0,74(a3)
		bra.s      Awi_alert_10
Awi_alert_7:
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		movea.l    372(a1),a0
		jsr        Ast_create
		move.l     a0,74(a3)
		bra.s      Awi_alert_10
Awi_alert_8:
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		movea.l    376(a1),a0
		jsr        Ast_create
		move.l     a0,74(a3)
		bra.s      Awi_alert_10
Awi_alert_9:
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		movea.l    380(a1),a0
		jsr        Ast_create
		move.l     a0,74(a3)
Awi_alert_10:
		move.l     74(a3),d0
		beq.s      Awi_alert_5
Awi_alert_4:
		movea.l    a2,a0
		jsr        Ast_delete
		bra.s      Awi_alert_11
Awi_alert_5:
		move.l     a2,74(a3)
Awi_alert_11:
		moveq.l    #16,d0
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      Awi_alert_12
		moveq.l    #2,d1
		movea.l    20(a3),a0
		movea.l    492(a0),a1
		move.w     d1,16(a1)
		movea.l    20(a3),a0
		movea.l    468(a0),a1
		move.w     d1,16(a1)
		movea.l    20(a3),a0
		movea.l    444(a0),a1
		move.w     d1,16(a1)
		movea.l    20(a3),a0
		movea.l    420(a0),a1
		move.w     d1,16(a1)
		movea.l    20(a3),a0
		movea.l    396(a0),a1
		move.w     d1,16(a1)
Awi_alert_12:
		moveq.l    #2,d3
		bra.s      Awi_alert_13
Awi_alert_14:
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    20(a3),a0
		ori.w      #$0080,8(a0,d0.l)
		addq.w     #1,d3
Awi_alert_13:
		cmp.w      #$000D,d3
		ble.s      Awi_alert_14
		movea.l    36(a7),a0
		move.b     1(a0),d0
		ext.w      d0
		sub.w      #$0030,d0
		cmp.w      #$0004,d0
		bhi.s      Awi_alert_15
		add.w      d0,d0
		move.w     J44(pc,d0.w),d0
		jmp        J44(pc,d0.w)
J44:
		dc.w Awi_alert_16-J44
		dc.w Awi_alert_17-J44
		dc.w Awi_alert_18-J44
		dc.w Awi_alert_19-J44
		dc.w Awi_alert_20-J44
Awi_alert_16:
		movea.l    ACSblk,a0
		move.w     18(a0),d0
		add.w      d0,d0
		movea.l    20(a3),a1
		sub.w      d0,352(a1)
		bra.s      Awi_alert_15
Awi_alert_17:
		movea.l    20(a3),a0
		andi.w     #$FF7F,80(a0)
		bra.s      Awi_alert_15
Awi_alert_18:
		movea.l    20(a3),a0
		andi.w     #$FF7F,104(a0)
		bra.s      Awi_alert_15
Awi_alert_19:
		movea.l    20(a3),a0
		andi.w     #$FF7F,56(a0)
		bra.s      Awi_alert_15
Awi_alert_20:
		movea.l    20(a3),a0
		andi.w     #$FF7F,320(a0)
		move.l     #$00000001,(a3)
		jsr        Ash_gettimer
		move.l     d0,timer2
		move.l     d0,timer1
		ori.w      #$0020,86(a3)
Awi_alert_15:
		movea.l    ACSblk,a0
		move.l     562(a0),d4
		move.l     #$0000014D,562(a0)
		movea.l    36(a7),a2
		addq.w     #1,a2
		bra.s      Awi_alert_21
Awi_alert_23:
		addq.w     #1,a2
Awi_alert_21:
		moveq.l    #91,d0
		movea.l    a2,a0
		jsr        strchr
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Awi_alert_22
		cmpi.b     #$5D,1(a2)
		beq.s      Awi_alert_23
Awi_alert_22:
		move.l     a2,d0
		beq.s      Awi_alert_24
		lea.l      1(a2),a0
		move.l     a0,(a7)
		bra.s      Awi_alert_25
Awi_alert_27:
		addq.l     #1,(a7)
Awi_alert_25:
		moveq.l    #91,d0
		movea.l    (a7),a0
		jsr        strchr
		move.l     a0,(a7)
		beq.s      Awi_alert_26
		cmpi.b     #$5D,1(a0)
		beq.s      Awi_alert_27
		bra.s      Awi_alert_26
Awi_alert_24:
		clr.l      (a7)
Awi_alert_26:
		move.l     a2,d0
		beq        Awi_alert_2
		move.l     (a7),d1
		beq        Awi_alert_2
		moveq.l    #16,d3
		bra.s      Awi_alert_28
Awi_alert_29:
		lea.l      xd3fdb,a1
		move.w     d3,d0
		movea.l    20(a3),a0
		jsr        Aob_puttext
		addq.w     #1,d3
Awi_alert_28:
		cmp.w      #$0014,d3
		ble.s      Awi_alert_29
		movea.l    (a7),a0
		clr.b      -1(a0)
		moveq.l    #4,d6
		moveq.l    #16,d3
		addq.w     #1,a2
Awi_alert_32:
		lea.l      4(a7),a5
		moveq.l    #124,d0
		movea.l    a2,a0
		jsr        strchr
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      Awi_alert_30
		moveq.l    #30,d0
		movea.l    a2,a1
		movea.l    a5,a0
		jsr        strncpy
		clr.b      30(a5)
		movea.l    a5,a1
		move.w     d3,d0
		movea.l    20(a3),a0
		jsr        Aob_puttext
		bra.s      Awi_alert_31
Awi_alert_30:
		subq.w     #1,d6
		clr.b      (a4)
		moveq.l    #30,d0
		movea.l    a2,a1
		movea.l    a5,a0
		jsr        strncpy
		clr.b      30(a5)
		movea.l    a5,a1
		move.w     d3,d0
		movea.l    20(a3),a0
		jsr        Aob_puttext
		move.b     #$7C,(a4)
		lea.l      1(a4),a2
Awi_alert_31:
		addq.w     #1,d3
		move.l     a4,d0
		bne.s      Awi_alert_32
		movea.l    (a7),a0
		move.b     #$5D,-1(a0)
		cmp.w      #$0003,d6
		ble.s      Awi_alert_33
		moveq.l    #3,d1
		bra.s      Awi_alert_34
Awi_alert_33:
		move.w     d6,d1
Awi_alert_34:
		move.w     d1,d6
		tst.w      d1
		ble        Awi_alert_35
		movea.l    ACSblk,a0
		muls.w     20(a0),d1
		movea.l    20(a3),a1
		sub.w      d1,22(a1)
		move.w     d6,d0
		movea.l    ACSblk,a0
		muls.w     20(a0),d0
		movea.l    20(a3),a1
		sub.w      d0,46(a1)
		move.w     d6,d0
		movea.l    ACSblk,a0
		muls.w     20(a0),d0
		movea.l    20(a3),a1
		sub.w      d0,358(a1)
		move.w     d6,d0
		movea.l    ACSblk,a0
		muls.w     20(a0),d0
		movea.l    20(a3),a1
		sub.w      d0,382(a1)
		move.w     d6,d0
		movea.l    ACSblk,a0
		muls.w     20(a0),d0
		movea.l    20(a3),a1
		sub.w      d0,522(a1)
		move.w     d6,d0
		movea.l    ACSblk,a0
		muls.w     20(a0),d0
		movea.l    20(a3),a1
		sub.w      d0,570(a1)
		move.w     d6,d0
		movea.l    ACSblk,a0
		muls.w     20(a0),d0
		movea.l    20(a3),a1
		sub.w      d0,618(a1)
Awi_alert_35:
		movea.l    (a7),a2
		clr.w      d6
		bra.s      Awi_alert_36
Awi_alert_38:
		addq.w     #1,d6
		lea.l      1(a4),a2
Awi_alert_36:
		move.b     (a2),d0
		beq.s      Awi_alert_37
		movea.l    a2,a0
		moveq.l    #124,d0
		jsr        strchr
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      Awi_alert_38
Awi_alert_37:
		move.w     d6,d0
		tst.w      d0
		beq.s      Awi_alert_39
		subq.w     #1,d0
		beq.s      Awi_alert_40
		subq.w     #1,d0
		beq.s      Awi_alert_40
		bra        Awi_alert_41
Awi_alert_39:
		movea.l    20(a3),a0
		ori.w      #$0080,512(a0)
		movea.l    20(a3),a0
		ori.w      #$0080,608(a0)
		movea.l    (a7),a1
		addq.w     #1,a1
		movea.l    a5,a0
		jsr        strcpy
		moveq.l    #93,d0
		movea.l    a5,a0
		jsr        strchr
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Awi_alert_42
		clr.b      (a0)
Awi_alert_42:
		movea.l    a5,a1
		moveq.l    #23,d0
		movea.l    20(a3),a0
		jsr        Aob_puttext
		movea.l    20(a3),a1
		lea.l      552(a1),a1
		movea.l    a5,a0
		jsr        Awi_hotkey
		tst.w      d5
		ble        Awi_alert_41
		bra        Awi_alert_43
Awi_alert_40:
		moveq.l    #124,d0
		movea.l    (a7),a0
		addq.w     #1,a0
		jsr        strchr
		movea.l    a0,a2
		move.l     a2,d0
		sub.l      (a7),d0
		subq.l     #1,d0
		movea.l    (a7),a1
		addq.w     #1,a1
		movea.l    a5,a0
		jsr        strncpy
		movea.l    a2,a0
		suba.l     (a7),a0
		clr.b      -1(a5,a0.w)
		movea.l    a5,a1
		moveq.l    #21,d0
		movea.l    20(a3),a0
		jsr        Aob_puttext
		movea.l    20(a3),a1
		lea.l      504(a1),a1
		movea.l    a5,a0
		jsr        Awi_hotkey
		addq.w     #1,a2
		moveq.l    #124,d0
		movea.l    a2,a0
		jsr        strchr
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      Awi_alert_44
		sub.l      a2,d0
		movea.l    a2,a1
		movea.l    a5,a0
		jsr        strncpy
		movea.l    a4,a0
		suba.l     a2,a0
		clr.b      0(a5,a0.w)
		bra.s      Awi_alert_45
Awi_alert_44:
		movea.l    a2,a1
		movea.l    a5,a0
		jsr        strcpy
		moveq.l    #93,d0
		movea.l    a5,a0
		jsr        strchr
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Awi_alert_45
		clr.b      (a0)
Awi_alert_45:
		movea.l    a5,a1
		moveq.l    #23,d0
		movea.l    20(a3),a0
		jsr        Aob_puttext
		movea.l    20(a3),a1
		lea.l      552(a1),a1
		movea.l    a5,a0
		jsr        Awi_hotkey
		cmp.w      #$0002,d6
		bne.s      Awi_alert_46
		addq.w     #1,a4
		moveq.l    #93,d0
		movea.l    a4,a0
		jsr        strchr
		movea.l    a0,a2
		move.l     a2,d0
		sub.l      a4,d0
		movea.l    a4,a1
		movea.l    a5,a0
		jsr        strncpy
		movea.l    a2,a0
		suba.l     a4,a0
		clr.b      0(a5,a0.w)
		movea.l    a5,a1
		moveq.l    #25,d0
		movea.l    20(a3),a0
		jsr        Aob_puttext
		movea.l    20(a3),a1
		lea.l      600(a1),a1
		movea.l    a5,a0
		jsr        Awi_hotkey
		bra.s      Awi_alert_47
Awi_alert_46:
		movea.l    20(a3),a0
		move.w     524(a0),d0
		asr.w      #1,d0
		movea.l    ACSblk,a1
		add.w      18(a1),d0
		add.w      d0,520(a0)
		movea.l    20(a3),a0
		move.w     572(a0),d0
		asr.w      #1,d0
		movea.l    ACSblk,a1
		add.w      18(a1),d0
		add.w      d0,568(a0)
		movea.l    20(a3),a0
		ori.w      #$0080,608(a0)
Awi_alert_47:
		move.w     d5,d0
		subq.w     #1,d0
		beq.s      Awi_alert_48
		subq.w     #1,d0
		beq.s      Awi_alert_43
		subq.w     #1,d0
		beq.s      Awi_alert_49
		bra.s      Awi_alert_41
Awi_alert_48:
		movea.l    20(a3),a0
		ori.w      #$0002,512(a0)
		bra.s      Awi_alert_41
Awi_alert_43:
		movea.l    20(a3),a0
		ori.w      #$0002,560(a0)
		bra.s      Awi_alert_41
Awi_alert_49:
		movea.l    20(a3),a0
		ori.w      #$0002,608(a0)
Awi_alert_41:
		movea.l    a3,a0
		bsr        Awi_dialog
		move.w     d0,d6
		movea.l    a3,a0
		bsr        Awi_delete
		movea.l    ACSblk,a0
		move.l     d4,562(a0)
		move.w     d6,d0
		sub.w      #$0015,d0
		beq.s      Awi_alert_50
		subq.w     #2,d0
		beq.s      Awi_alert_51
		subq.w     #2,d0
		beq.s      Awi_alert_52
		bra.s      Awi_alert_53
Awi_alert_50:
		moveq.l    #1,d0
		bra.s      Awi_alert_54
Awi_alert_51:
		moveq.l    #2,d0
		bra.s      Awi_alert_54
Awi_alert_52:
		moveq.l    #3,d0
		bra.s      Awi_alert_54
Awi_alert_53:
		tst.w      d6
		bmi.s      Awi_alert_2
Awi_alert_1:
		moveq.l    #-1,d0
		bra.s      Awi_alert_54
Awi_alert_2:
		movea.l    36(a7),a0
		cmpi.b     #$33,1(a0)
		ble.s      Awi_alert_55
		move.b     #$31,1(a0)
Awi_alert_55:
		movea.l    _globl,a1
		movea.l    36(a7),a0
		move.w     d5,d0
		jsr        mt_form_alert
Awi_alert_54:
		lea.l      40(a7),a7
		movem.l    (a7)+,d3-d6/a2-a5
		rts

Awi_hotkey:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      24(a1),a2
		movea.l    a0,a3
		bra.s      Awi_hotkey_1
Awi_hotkey_3:
		move.b     (a3),d0
		ext.w      d0
		jsr        isalnum
		tst.w      d0
		bne.s      Awi_hotkey_2
		addq.w     #1,a3
Awi_hotkey_1:
		move.b     (a3),d0
		bne.s      Awi_hotkey_3
Awi_hotkey_2:
		move.b     (a3),d0
		beq.s      Awi_hotkey_4
		ext.w      d0
		jsr        toupper
		or.w       #$8800,d0
		move.w     d0,10(a2)
		bra.s      Awi_hotkey_5
Awi_hotkey_4:
		clr.w      10(a2)
Awi_hotkey_5:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Awi_update
Awi_update:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      winupd,a2
		lea.l      _globl,a3
		move.w     d0,d1
		and.w      #$00FF,d1
		cmp.w      #$0003,d1
		beq.s      Awi_update_1
		bgt.s      Awi_update_2
		tst.w      d1
		beq.s      Awi_update_3
		subq.w     #1,d1
		beq.s      Awi_update_4
		subq.w     #1,d1
		beq.s      Awi_update_5
		bra        Awi_update_6
Awi_update_2:
		sub.w      #$0010,d1
		beq.s      Awi_update_7
		sub.w      #$0010,d1
		beq        Awi_update_8
		bra        Awi_update_6
Awi_update_4:
		move.w     (a2),d0
		addq.w     #1,(a2)
		tst.w      d0
		bne        Awi_update_6
		movea.l    (a3),a0
		moveq.l    #1,d0
		jsr        mt_wind_update
		bra.s      Awi_update_9
Awi_update_3:
		subq.w     #1,(a2)
		bne        Awi_update_6
		movea.l    (a3),a0
		clr.w      d0
		jsr        mt_wind_update
Awi_update_9:
		clr.w      2(a2)
		bra        Awi_update_6
Awi_update_1:
		move.w     4(a2),d0
		addq.w     #1,4(a2)
		tst.w      d0
		bne        Awi_update_6
		movea.l    (a3),a0
		moveq.l    #3,d0
		jsr        mt_wind_update
		bra.s      Awi_update_10
Awi_update_5:
		subq.w     #1,4(a2)
		bne.w      Awi_update_6
		movea.l    (a3),a0
		moveq.l    #2,d0
		jsr        mt_wind_update
Awi_update_10:
		clr.w      6(a2)
		bra.s      Awi_update_6
Awi_update_7:
		move.w     (a2),d0
		beq.s      Awi_update_11
		movea.l    (a3),a0
		clr.w      d0
		jsr        mt_wind_update
		move.w     (a2),2(a2)
		clr.w      (a2)
Awi_update_11:
		move.w     4(a2),d0
		beq.s      Awi_update_6
		movea.l    (a3),a0
		moveq.l    #2,d0
		jsr        mt_wind_update
		move.w     4(a2),6(a2)
		clr.w      4(a2)
		bra.s      Awi_update_6
Awi_update_8:
		move.w     (a2),d0
		bne.s      Awi_update_12
		move.w     2(a2),d1
		beq.s      Awi_update_12
		movea.l    (a3),a0
		moveq.l    #1,d0
		jsr        mt_wind_update
		move.w     2(a2),(a2)
		clr.w      2(a2)
Awi_update_12:
		move.w     4(a2),d0
		bne.s      Awi_update_6
		move.w     6(a2),d1
		beq.s      Awi_update_6
		movea.l    (a3),a0
		moveq.l    #3,d0
		jsr        mt_wind_update
		move.w     6(a2),4(a2)
		bra.s      Awi_update_10
Awi_update_6:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Awi_obfind
Awi_obfind:
		movem.l    d3-d6/a2-a4,-(a7)
		move.w     d0,d6
		move.w     d1,d5
		movea.l    a1,a2
		movea.l    32(a7),a3
		move.l     a2,d2
		beq.s      Awi_obfind_1
		clr.l      (a1)
Awi_obfind_1:
		move.l     a3,d0
		beq.s      Awi_obfind_2
		move.w     #$FFFF,(a3)
Awi_obfind_2:
		move.w     32(a0),d0
		bmi.s      Awi_obfind_3
		move.w     54(a0),d0
		move.w     52(a0),d3
		move.w     54(a0),d4
		move.l     24(a0),d1
		beq.s      Awi_obfind_4
		movea.l    d1,a1
		move.w     22(a1),d1
		bra.s      Awi_obfind_5
Awi_obfind_4:
		clr.w      d1
Awi_obfind_5:
		move.w     d0,d2
		sub.w      d1,d2
		cmp.w      d2,d5
		blt.s      Awi_obfind_3
		move.l     24(a0),d2
		beq.s      Awi_obfind_6
		cmp.w      d5,d0
		ble.s      Awi_obfind_6
		movea.w    d0,a1
		suba.w     d1,a1
		cmp.w      a1,d5
		blt.s      Awi_obfind_6
		movea.l    d2,a4
		bra.s      Awi_obfind_7
Awi_obfind_6:
		movea.l    20(a0),a4
		move.l     24(a0),d0
		beq.s      Awi_obfind_8
		move.w     54(a0),d1
		bra.s      Awi_obfind_9
Awi_obfind_8:
		clr.w      d1
Awi_obfind_9:
		add.w      d1,d4
Awi_obfind_7:
		move.l     a4,d0
		bne.s      Awi_obfind_10
Awi_obfind_3:
		suba.l     a0,a0
		bra.s      Awi_obfind_11
Awi_obfind_10:
		move.w     d5,d0
		sub.w      d4,d0
		move.w     d0,-(a7)
		movea.l    _globl,a1
		move.w     d6,d2
		sub.w      d3,d2
		moveq.l    #100,d1
		movea.l    a4,a0
		clr.w      d0
		jsr        mt_objc_find
		addq.w     #2,a7
		move.w     d0,d6
		move.l     a2,d1
		beq.s      Awi_obfind_12
		move.l     a4,(a2)
Awi_obfind_12:
		move.l     a3,d0
		beq.s      Awi_obfind_13
		move.w     d6,(a3)
Awi_obfind_13:
		tst.w      d6
		bmi.s      Awi_obfind_14
		move.w     d6,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      0(a4,d0.l),a0
		bra.s      Awi_obfind_11
Awi_obfind_14:
		suba.l     a0,a0
Awi_obfind_11:
		movem.l    (a7)+,d3-d6/a2-a4
		rts

Awi_contstring:
		movem.l    d3-d6/a2-a5,-(a7)
		lea.l      -16(a7),a7
		movea.l    a0,a3
		move.w     d0,d5
		move.w     d1,d4
		move.l     d2,d6
		move.l     a1,12(a7)
		move.w     #$0001,10(a7)
		clr.w      d3
		lea.l      xd3f84,a0
		lea.l      (a7),a1
		move.l     (a0)+,(a1)+
		move.w     (a0)+,(a1)+
		lea.l      10(a7),a1
		movea.l    a3,a0
		movea.l    4(a3),a2
		move.w     52(a7),d0
		jsr        (a2)
		tst.w      d0
		beq.s      Awi_contstring_1
		move.w     10(a7),d0
		bne.s      Awi_contstring_1
		suba.l     a0,a0
		bra        Awi_contstring_2
Awi_contstring_1:
		pea.l      (a7)
		lea.l      10(a7),a1
		move.w     d4,d1
		move.w     d5,d0
		movea.l    a3,a0
		bsr        Awi_obfind
		addq.w     #4,a7
		move.w     (a7),d0
		bmi        Awi_contstring_3
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		movea.l    6(a7),a4
		adda.l     d1,a4
		cmpi.w     #$0018,6(a4)
		bne.s      Awi_contstring_4
		movea.l    12(a4),a5
		bra.s      Awi_contstring_5
Awi_contstring_4:
		suba.l     a5,a5
Awi_contstring_5:
		move.l     12(a7),d0
		beq.s      Awi_contstring_6
		movea.l    d0,a0
		move.l     a4,(a0)
Awi_contstring_6:
		move.l     58(a7),d0
		beq.s      Awi_contstring_7
		movea.l    d0,a0
		move.w     (a7),(a0)
Awi_contstring_7:
		move.l     a5,d0
		beq.s      Awi_contstring_8
		move.l     d6,d1
		lsl.l      #2,d1
		move.l     0(a5,d1.l),2(a7)
		move.l     8(a5),d2
		beq.s      Awi_contstring_8
		lea.l      2(a7),a1
		movea.l    a4,a0
		movea.l    d2,a2
		move.w     54(a7),d0
		jsr        (a2)
		move.w     d0,d3
Awi_contstring_8:
		tst.w      d3
		bne.s      Awi_contstring_3
		movea.l    6(a7),a0
		cmpa.l     24(a3),a0
		bne.s      Awi_contstring_9
		ori.w      #$1000,(a7)
Awi_contstring_9:
		lea.l      (a7),a1
		move.w     56(a7),d0
		movea.l    a3,a0
		movea.l    4(a3),a2
		jsr        (a2)
		tst.w      d0
		bne.s      Awi_contstring_3
		clr.l      2(a7)
Awi_contstring_3:
		movea.l    2(a7),a0
Awi_contstring_2:
		lea.l      16(a7),a7
		movem.l    (a7)+,d3-d6/a2-a5
		rts

		.globl Awi_bubblegem
Awi_bubblegem:
		movem.l    d3-d4/a2,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		move.w     d1,d3
		clr.l      -(a7)
		moveq.l    #37,d2
		move.w     d2,-(a7)
		moveq.l    #19,d0
		move.w     d0,-(a7)
		moveq.l    #36,d1
		move.w     d1,-(a7)
		suba.l     a1,a1
		move.w     d4,d0
		move.w     d3,d1
		moveq.l    #6,d2
		bsr        Awi_contstring
		lea.l      10(a7),a7
		movea.l    a0,a2
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      Awi_bubblegem_1
		clr.w      d0
		bra.s      Awi_bubblegem_2
Awi_bubblegem_1:
		move.w     d3,d1
		move.w     d4,d0
		movea.l    a2,a0
		jsr        Aev_ShowBubbleGEM
Awi_bubblegem_2:
		movem.l    (a7)+,d3-d4/a2
		rts

		.globl Awi_context
Awi_context:
		movem.l    d3-d6/a2-a4,-(a7)
		lea.l      -10(a7),a7
		movea.l    a0,a3
		move.w     d0,d5
		move.w     d1,d4
		clr.w      d3
		pea.l      (a7)
		moveq.l    #39,d2
		move.w     d2,-(a7)
		moveq.l    #20,d0
		move.w     d0,-(a7)
		moveq.l    #38,d1
		move.w     d1,-(a7)
		lea.l      16(a7),a1
		move.w     d5,d0
		move.w     d4,d1
		moveq.l    #7,d2
		bsr        Awi_contstring
		lea.l      10(a7),a7
		movea.l    a0,a4
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      Awi_context_1
		clr.l      -(a7)
		move.w     d4,d2
		move.w     d5,d1
		movea.l    ACSblk,a0
		move.w     18(a0),d6
		move.w     d6,d0
		lsl.w      #4,d0
		sub.w      d6,d0
		add.w      d0,d0
		movea.l    a4,a1
		movea.l    a3,a0
		jsr        Ame_strpopup
		addq.w     #4,a7
		move.l     a0,2(a7)
		movea.l    6(a7),a1
		cmpi.w     #$0018,6(a1)
		bne.s      Awi_context_2
		movea.l    12(a1),a4
		bra.s      Awi_context_3
Awi_context_2:
		suba.l     a4,a4
Awi_context_3:
		move.l     a4,d0
		beq.s      Awi_context_4
		move.l     8(a4),d1
		beq.s      Awi_context_4
		movea.l    2(a7),a1
		movea.l    6(a7),a0
		movea.l    d1,a2
		moveq.l    #21,d0
		jsr        (a2)
		tst.w      d0
		beq.s      Awi_context_4
		moveq.l    #1,d3
		bra.s      Awi_context_1
Awi_context_4:
		lea.l      (a7),a1
		moveq.l    #40,d0
		movea.l    a3,a0
		movea.l    4(a3),a2
		jsr        (a2)
		move.w     d0,d3
Awi_context_1:
		move.w     d3,d0
		lea.l      10(a7),a7
		movem.l    (a7)+,d3-d6/a2-a4
		rts

		.globl Awi_name
Awi_name:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      Awi_name_1
		bsr        Awi_ontop
		bra.s      Awi_name_2
Awi_name_1:
		clr.w      d3
		lea.l      _ACSv_winds,a3
		bra.s      Awi_name_3
Awi_name_7:
		move.w     d3,d0
		lsl.w      #2,d0
		movea.l    0(a3,d0.w),a4
		move.l     a4,d1
		beq.s      Awi_name_4
		tst.w      d4
		beq.s      Awi_name_5
		movea.l    a2,a1
		movea.l    74(a4),a0
		jsr        Ast_cmp
		bra.s      Awi_name_6
Awi_name_5:
		movea.l    a2,a1
		movea.l    74(a4),a0
		jsr        Ast_icmp
Awi_name_6:
		tst.w      d0
		bne.s      Awi_name_4
		movea.l    a4,a0
		bra.s      Awi_name_2
Awi_name_4:
		addq.w     #1,d3
Awi_name_3:
		cmp.w      #$0100,d3
		blt.s      Awi_name_7
		movea.l    Aroot_wi,a0
Awi_name_2:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

_gs_cmp:
		movea.l    (a1),a1
		movea.l    (a0),a0
		jsr        Ast_icmp
		rts

_gs_search:
		movea.l    (a1),a1
		jsr        Ast_icmp
		rts

		.globl gs_str2key
gs_str2key:
		movem.l    d3-d7/a2-a4,-(a7)
		lea.l      -28(a7),a7
		clr.w      d3
		lea.l      init,a1
		lea.l      496(a1),a2
		lea.l      24(a7),a3
		move.b     (a2)+,(a3)+
		move.b     (a2)+,(a3)+
		move.b     (a2)+,(a3)+
		lea.l      6(a7),a3
		lea.l      499(a1),a2
		movea.l    a3,a4
		moveq.l    #17,d0
gs_str2key_1:
		move.b     (a2)+,(a4)+
		dbf        d0,gs_str2key_1
		lea.l      518(a1),a2
		lea.l      (a7),a4
		move.b     (a2)+,(a4)+
		move.b     (a2)+,(a4)+
		move.b     (a2)+,(a4)+
		move.b     (a2)+,(a4)+
		move.b     (a2)+,(a4)+
		move.b     (a2)+,(a4)+
		moveq.l    #3,d4
		movea.l    a0,a2
		clr.w      d5
		bra.s      gs_str2key_2
gs_str2key_8:
		clr.w      d6
		bra.s      gs_str2key_3
gs_str2key_6:
		move.w     d6,d0
		add.w      d0,d0
		add.w      d6,d0
		add.w      d0,d0
		lea.l      0(a3,d0.w),a0
		jsr        strlen
		move.l     d0,d7
		move.l     d7,d0
		move.w     d6,d1
		add.w      d1,d1
		add.w      d6,d1
		add.w      d1,d1
		lea.l      0(a3,d1.w),a1
		movea.l    a2,a0
		jsr        strnicmp
		tst.w      d0
		bne.s      gs_str2key_4
		move.b     0(a2,d7.l),d0
		ext.w      d0
		lea.l      24(a7),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      gs_str2key_4
		move.w     d6,d0
		add.w      d0,d0
		move.w     0(a7,d0.w),d3
		moveq.l    #1,d1
		add.l      d7,d1
		adda.l     d1,a2
		bra.s      gs_str2key_5
gs_str2key_4:
		addq.w     #1,d6
gs_str2key_3:
		cmp.w      d6,d4
		bgt.s      gs_str2key_6
gs_str2key_5:
		cmp.w      d6,d4
		bgt.s      gs_str2key_2
		move.b     (a2),d0
		ext.w      d0
		or.w       d0,d3
		moveq.l    #1,d5
gs_str2key_2:
		tst.w      d5
		bne.s      gs_str2key_7
		move.b     (a2),d0
		bne.s      gs_str2key_8
gs_str2key_7:
		move.w     d3,d0
		and.w      #$0F00,d0
		beq.s      gs_str2key_9
		or.w       #$8000,d3
gs_str2key_9:
		move.w     d3,d0
		lea.l      28(a7),a7
		movem.l    (a7)+,d3-d7/a2-a4
		rts

		.globl Awi_gemscript
Awi_gemscript:
		movem.l    d3/a2-a6,-(a7)
		movea.l    a0,a5
		move.w     d0,d3
		movea.l    a1,a3
		movea.l    28(a7),a2
		move.w     #$0001,6(a2)
		lea.l      _gs_commands,a4
		move.w     42(a4),d0
		bne.s      Awi_gemscript_1
		lea.l      _gs_cmp(pc),a1
		moveq.l    #8,d1
		move.w     40(a4),d0
		ext.l      d0
		movea.l    a4,a0
		jsr        qsort
		move.w     #$0001,42(a4)
Awi_gemscript_1:
		pea.l      _gs_search(pc)
		moveq.l    #8,d1
		move.w     40(a4),d0
		ext.l      d0
		movea.l    a4,a1
		movea.l    (a3),a0
		jsr        bsearch
		addq.w     #4,a7
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      Awi_gemscript_2
		move.l     4(a4),d1
		beq.s      Awi_gemscript_3
		move.l     a2,-(a7)
		movea.l    a3,a1
		movea.l    d1,a6
		movea.l    a5,a0
		move.w     d3,d0
		jsr        (a6)
		addq.w     #4,a7
		move.w     d0,6(a2)
		bra.s      Awi_gemscript_2
Awi_gemscript_3:
		clr.w      6(a2)
Awi_gemscript_2:
		move.w     6(a2),d0
		movem.l    (a7)+,d3/a2-a6
		rts

gs_CheckCommand:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a1,a2
		movea.l    12(a7),a3
		cmp.w      #$0002,d0
		bge.s      gs_CheckCommand_1
		moveq.l    #2,d0
		bra.s      gs_CheckCommand_2
gs_CheckCommand_1:
		pea.l      _gs_search(pc)
		moveq.l    #8,d1
		move.w     _gs_cmd_anzahl,d0
		ext.l      d0
		lea.l      _gs_commands,a1
		movea.l    4(a2),a0
		jsr        bsearch
		addq.w     #4,a7
		movea.l    a0,a2
		movea.l    (a3),a1
		movea.l    (a1),a0
		jsr        Ast_delete
		move.l     a2,d0
		bne.s      gs_CheckCommand_3
		lea.l      xd406e,a0
		bra.s      gs_CheckCommand_4
gs_CheckCommand_3:
		lea.l      xd4070,a0
gs_CheckCommand_4:
		jsr        Ast_create
		movea.l    (a3),a1
		move.l     a0,(a1)
		move.w     #$0001,4(a3)
		clr.w      6(a3)
		move.w     6(a3),d0
gs_CheckCommand_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

gs_GetFront:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		movea.l    12(a7),a2
		movea.l    (a2),a1
		movea.l    (a1),a0
		jsr        Ast_delete
		movea.l    74(a3),a0
		jsr        Ast_create
		movea.l    (a2),a1
		move.l     a0,(a1)
		move.w     #$0001,4(a2)
		clr.w      d0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

gs_ToFront:
		move.l     a3,-(a7)
		movea.l    8(a7),a3
		bsr        Awi_show
		movea.l    (a3),a0
		movea.l    (a0),a0
		jsr        Ast_delete
		lea.l      xd4070,a0
		jsr        Ast_create
		movea.l    (a3),a1
		move.l     a0,(a1)
		move.w     #$0001,4(a3)
		clr.w      d0
		movea.l    (a7)+,a3
		rts

gs_KeyPress:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a5
		move.w     d0,d3
		movea.l    a1,a4
		movea.l    28(a7),a3
		subq.w     #2,d0
		blt.s      gs_KeyPress_1
		moveq.l    #-1,d0
		add.w      d3,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      gs_KeyPress_1
		moveq.l    #-1,d1
		add.w      d3,d1
		ext.l      d1
		lsl.l      #2,d1
		clr.w      d0
		jsr        memset
		clr.w      d4
		bra.s      gs_KeyPress_2
gs_KeyPress_5:
		lea.l      xd406e,a0
		jsr        Ast_create
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     a0,0(a2,d0.l)
		move.l     a0,d1
		bne.s      gs_KeyPress_3
		moveq.l    #-1,d0
		add.w      d3,d0
		movea.l    a2,a0
		jsr        Ast_deleteAry
gs_KeyPress_1:
		moveq.l    #2,d0
		bra.s      gs_KeyPress_4
gs_KeyPress_3:
		addq.w     #1,d4
gs_KeyPress_2:
		moveq.l    #-1,d0
		add.w      d3,d0
		cmp.w      d0,d4
		blt.s      gs_KeyPress_5
		move.w     4(a3),d0
		movea.l    (a3),a0
		jsr        Ast_deleteAry
		moveq.l    #-1,d0
		add.w      d3,d0
		move.w     d0,4(a3)
		move.l     a2,(a3)
		moveq.l    #1,d4
		bra.s      gs_KeyPress_6
gs_KeyPress_9:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a4,d0.l),a0
		bsr        gs_str2key
		movea.l    ACSblk,a0
		move.w     d0,718(a0)
		movea.l    a5,a0
		jsr        evkeybrd
		addq.w     #1,d0
		bne.s      gs_KeyPress_7
		moveq.l    #48,d0
		bra.s      gs_KeyPress_8
gs_KeyPress_7:
		moveq.l    #49,d0
gs_KeyPress_8:
		movea.l    (a3),a0
		movea.l    (a0),a1
		move.b     d0,(a1)
		addq.w     #1,d4
gs_KeyPress_6:
		cmp.w      d4,d3
		bgt.s      gs_KeyPress_9
		clr.w      d0
gs_KeyPress_4:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

gs_GetAllCommands:
		movem.l    d3-d7/a2-a4,-(a7)
		movea.l    36(a7),a2
		lea.l      _gs_cmd_anzahl,a4
		cmpi.w     #$0001,4(a2)
		bne.s      gs_GetAllCommands_1
		movea.l    (a2),a0
		movea.l    (a0),a0
		jsr        strlen
		moveq.l    #1,d1
		cmp.l      d0,d1
		bne.s      gs_GetAllCommands_1
		movea.l    (a2),a0
		movea.l    (a0),a1
		move.b     (a1),d0
		ext.w      d0
		lea.l      xd4072,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      gs_GetAllCommands_1
		move.w     (a4),d3
		moveq.l    #1,d4
		bra.s      gs_GetAllCommands_2
gs_GetAllCommands_1:
		move.w     (a4),d3
		add.w      4(a2),d3
		clr.w      d4
gs_GetAllCommands_2:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      gs_GetAllCommands_3
		clr.w      d5
		bra.s      gs_GetAllCommands_4
gs_GetAllCommands_7:
		move.w     d5,d0
		lsl.w      #3,d0
		movea.l    -40(a4,d0.w),a0
		jsr        Ast_create
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     a0,0(a3,d0.l)
		move.l     a0,d1
		bne.s      gs_GetAllCommands_5
		movea.l    a3,a0
		move.w     (a4),d0
		jsr        Ast_deleteAry
gs_GetAllCommands_3:
		moveq.l    #2,d0
		bra        gs_GetAllCommands_6
gs_GetAllCommands_5:
		addq.w     #1,d5
gs_GetAllCommands_4:
		cmp.w      (a4),d5
		blt.s      gs_GetAllCommands_7
		tst.w      d4
		bne.s      gs_GetAllCommands_8
		move.w     4(a2),d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    (a2),a1
		move.w     (a4),d1
		ext.l      d1
		lsl.l      #2,d1
		lea.l      0(a3,d1.l),a0
		jsr        memcpy
gs_GetAllCommands_8:
		lea.l      _gs_strcmp,a1
		moveq.l    #4,d1
		move.w     d3,d0
		ext.l      d0
		movea.l    a3,a0
		jsr        qsort
		clr.w      d6
		moveq.l    #1,d5
		bra.s      gs_GetAllCommands_9
gs_GetAllCommands_11:
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a3,d0.l),a1
		movea.l    -4(a3,d0.l),a0
		jsr        Ast_icmp
		tst.w      d0
		bne.s      gs_GetAllCommands_10
		addq.w     #1,d6
gs_GetAllCommands_10:
		addq.w     #1,d5
gs_GetAllCommands_9:
		cmp.w      d5,d3
		bgt.s      gs_GetAllCommands_11
		move.w     d3,d0
		sub.w      d6,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      gs_GetAllCommands_12
		move.l     (a3),(a0)
		moveq.l    #1,d5
		move.w     d5,d7
		bra.s      gs_GetAllCommands_13
gs_GetAllCommands_16:
		move.w     d7,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    -4(a4,d0.l),a1
		move.w     d5,d1
		ext.l      d1
		lsl.l      #2,d1
		movea.l    0(a3,d1.l),a0
		jsr        Ast_icmp
		tst.w      d0
		beq.s      gs_GetAllCommands_14
		move.w     d5,d0
		ext.l      d0
		lsl.l      #2,d0
		move.w     d7,d1
		ext.l      d1
		lsl.l      #2,d1
		move.l     0(a3,d0.l),0(a4,d1.l)
		addq.w     #1,d7
		clr.l      0(a3,d0.l)
gs_GetAllCommands_14:
		addq.w     #1,d5
gs_GetAllCommands_13:
		cmp.w      d5,d3
		ble.s      gs_GetAllCommands_15
		move.w     d3,d0
		sub.w      d6,d0
		cmp.w      d0,d7
		blt.s      gs_GetAllCommands_16
gs_GetAllCommands_15:
		move.w     d3,d0
		movea.l    a3,a0
		jsr        Ast_deleteAry
		sub.w      d6,d3
		bra.s      gs_GetAllCommands_17
gs_GetAllCommands_12:
		movea.l    a3,a4
gs_GetAllCommands_17:
		tst.w      d4
		beq.s      gs_GetAllCommands_18
		move.w     4(a2),d0
		movea.l    (a2),a0
		jsr        Ast_deleteAry
		bra.s      gs_GetAllCommands_19
gs_GetAllCommands_18:
		movea.l    (a2),a0
		jsr        Ax_free
gs_GetAllCommands_19:
		move.l     a4,(a2)
		move.w     d3,4(a2)
		clr.w      d0
gs_GetAllCommands_6:
		movem.l    (a7)+,d3-d7/a2-a4
		rts

		.data

init:
		dc.b $00
		dc.b $00
cycle:
		dc.b $00
		dc.b $00
menu_width:
		dc.w $ffff
winupd:
		dc.b $00
		dc.b $00
winoldupd:
		dc.b $00
		dc.b $00
msupd:
		dc.b $00
		dc.b $00
msoldupd:
		dc.b $00
		dc.b $00
exec_path:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
exec_com:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
empty:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $20
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
		dc.b $f0
		dc.b $00
		dc.b $f0
		.globl Aroot_wi
Aroot_wi:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
top_window:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
topline:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1a
		dc.b $00
		dc.b $20
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
xd3de8:
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
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd3e68:
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
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd3ee8:
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
next:
		dc.b $00
		dc.b $00
dis_arrow_mon:
		dc.l A_arrows
		dc.w $2209
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
dis_arrow_col:
		dc.l A_arrows
		dc.w $2201
		dc.b $00
		dc.b $09
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
box_trans:
		dc.w $ffff
		dc.w $ffff
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
		dc.w $ffff
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
xd3f84:
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $2b2d
		dc.b $00
		dc.b 'SHIFT',0
		dc.b 'CTRL',0
		dc.b $00
		dc.b 'ALT',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $0200
		dc.w $0400
		dc.w $0800
_gs_commands:
		dc.l xd4038
		dc.l gs_GetFront
		dc.l xd4041
		dc.l gs_ToFront
		dc.l xd4049
		dc.l gs_CheckCommand
		dc.l xd4056
		dc.l gs_KeyPress
		dc.l xd405f
		dc.l gs_GetAllCommands
_gs_cmd_anzahl:
		dc.b $00
		dc.b $05
_gs_sorted:
		dc.b $00
		dc.b $00
xd3fd2:
		dc.b 'GEMSUFFIX'
xd3fdb:
		dc.b 0
xd3fdc:
		dc.w $2c00
xd3fde:
		dc.b 'PRG',0
xd3fe2:
		dc.b 'APP',0
xd3fe6:
		dc.b 'GTP',0
xd3fea:
		dc.w $1b48
		dc.w $1b65
		dc.b $00
xd3fef:
		dc.b $1b
		dc.w $6600
xd3ff2:
		dc.b '[end]',0
xd3ff8: /* not translated */
		dc.b '[4][Das Erzeugen eines|Dialoges ist fehlgeschlagen!][Abbrechen]',0
xd4038:
		dc.b 'GetFront',0
xd4041:
		dc.b 'ToFront',0
xd4049:
		dc.b 'CheckCommand',0
xd4056:
		dc.b 'KeyPress',0
xd405f:
		dc.b 'GetAllCommands',0
xd406e:
		dc.w $3000
xd4070:
		dc.w $3100
xd4072:
		dc.w $3031
		dc.b $00
		.even

	.bss

wi_minw: ds.w 1
wi_minh: ds.w 1
timer1: ds.l 1
timer2: ds.l 1
gemmap: ds.b 512
modwins: ds.w 16
icnmap: ds.w 256
_WIconText: ds.l 1
_WWorkIcon: ds.l 1
_WIcon: ds.l 1
virt_desk: ds.w 4

	.globl _ACSv_winds
_ACSv_winds: ds.b 1024
	.globl _ACSv_wiicons
_ACSv_wiicons: ds.w 256

_ACSv_wwork: ds.w 1

	.globl _ACSv_wmenu
_ACSv_wmenu: ds.w 1

	.globl _Wmax_wi
_Wmax_wi: ds.w 1
