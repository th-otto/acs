		.text

switch_opt:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		lea.l      ACSblk,a2
		moveq.l    #1,d1
		movea.l    (a2),a0
		move.w     608(a0),d2
		ext.l      d2
		move.l     d2,d0
		add.l      d0,d0
		add.l      d2,d0
		lsl.l      #3,d0
		movea.l    604(a0),a1
		move.w     10(a1,d0.l),d0
		eor.w      d0,d1
		move.w     608(a0),d0
		movea.l    600(a0),a0
		movea.l    (a2),a1
		movea.l    600(a1),a1
		movea.l    102(a1),a1
		jsr        (a1)
		move.w     (a3),d0
		bne.s      switch_opt_1
		moveq.l    #1,d1
		bra.s      switch_opt_2
switch_opt_1:
		clr.w      d1
switch_opt_2:
		move.w     d1,(a3)
		jsr        Aev_release
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

ab_glue:
		lea.l      gluepart,a0
		bsr.w      switch_opt
		rts

ab_dirty:
		lea.l      dirtysave,a0
		bsr.w      switch_opt
		rts

ab_snap:
		lea.l      snapping,a0
		bsr.w      switch_opt
		rts

ab_copyindex:
		lea.l      copyindex,a0
		bsr.w      switch_opt
		rts

ab_copyimage:
		lea.l      refimages,a0
		bsr        switch_opt
		rts

save_it:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a3
		lea.l      cfg,a2
		move.b     #0x33,(a2)
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		move.w     14(a1),174(a2)
		move.w     2378(a2),160(a2)
		move.w     2380(a2),164(a2)
		move.w     2384(a2),170(a2)
		move.w     2382(a2),166(a2)
		move.w     2386(a2),168(a2)
		move.w     2388(a2),172(a2)
		moveq.l    #1,d0
		movea.l    20(a3),a0
		and.w      418(a0),d0
		beq.s      save_it_1
		moveq.l    #1,d1
		bra.s      save_it_2
save_it_1:
		clr.w      d1
save_it_2:
		move.w     d1,162(a2)
		movea.l    parts_window,a0
		move.w     86(a0),d0
		and.w      #0x0800,d0
		beq.s      save_it_3
		movea.l    a0,a1
		lea.l      44(a1),a1
		lea.l      176(a2),a0
		moveq.l    #8,d0
		jsr        memcpy
		bra.s      save_it_4
save_it_3:
		moveq.l    #8,d0
		movea.l    parts_window,a1
		lea.l      36(a1),a1
		lea.l      176(a2),a0
		jsr        memcpy
save_it_4:
		move.w     86(a3),d0
		and.w      #0x0800,d0
		beq.s      save_it_5
		lea.l      44(a3),a1
		lea.l      184(a2),a0
		moveq.l    #8,d0
		jsr        memcpy
		bra.s      save_it_6
save_it_5:
		moveq.l    #8,d0
		lea.l      36(a3),a1
		lea.l      184(a2),a0
		jsr        memcpy
save_it_6:
		clr.w      320(a2)
		movea.l    a3,a0
		move.w     #0x2711,d0
		jsr        Awi_sendall
		lea.l      x7a2a6,a0
		jsr        Af_cfgfile
		clr.w      d0
		jsr        Fcreate
		move.l     d0,d3
		tst.l      d0
		ble.s      save_it_7
		movea.l    a2,a0
		move.l     #0x00000942,d1
		move.w     d3,d0
		jsr        Fwrite
		move.w     d3,d0
		jsr        Fclose
save_it_7:
		movem.l    (a7)+,d3/a2-a3
		rts

ab_save:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		bsr        save_it
		rts

ab_make:
		movem.l    d3-d4/a2-a3/a5,-(a7)
		lea.l      -2384(a7),a7
		lea.l      cfg,a5
		lea.l      8868(a5),a0
		jsr        Awi_create
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      ab_make_1
		suba.l     a0,a0
		bra        ab_make_2
ab_make_1:
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		move.w     14(a1),d3
		and.w      #0x0100,d3
		move.l     #0x00000844,d1
		clr.w      d0
		lea.l      cews,a0
		jsr        memset
		lea.l      x7a2a6,a0
		jsr        Af_cfgfile
		clr.w      d0
		jsr        Fopen
		move.l     d0,d4
		tst.l      d0
		ble        ab_make_3
		lea.l      12(a7),a0
		moveq.l    #1,d1
		move.w     d4,d0
		jsr        Fread
		moveq.l    #1,d1
		cmp.l      d0,d1
		bne        ab_make_4
		clr.w      d2
		moveq.l    #0,d0
		move.w     d4,d1
		jsr        Fseek
		move.b     12(a7),d0
		ext.w      d0
		sub.w      #0x0032,d0
		beq.s      ab_make_5
		subq.w     #1,d0
		beq.s      ab_make_6
		bra        ab_make_4
ab_make_6:
		movea.l    a5,a0
		move.l     #0x00000942,d1
		move.w     d4,d0
		jsr        Fread
		cmp.l      #0x00000942,d0
		beq        ab_make_7
		bra        ab_make_4
ab_make_5:
		lea.l      18(a7),a3
		movea.l    a3,a0
		move.l     #0x0000093E,d1
		move.w     d4,d0
		jsr        Fread
		cmp.l      #0x0000093E,d0
		bne        ab_make_8
		move.b     #0x33,(a5)
		lea.l      1(a3),a1
		lea.l      1(a5),a0
		jsr        strcpy
		lea.l      1(a3),a1
		lea.l      1(a5),a0
		jsr        strcpy
		lea.l      129(a3),a1
		lea.l      129(a5),a0
		jsr        strcpy
		lea.l      137(a3),a1
		lea.l      140(a5),a0
		jsr        strcpy
		lea.l      146(a3),a1
		lea.l      151(a5),a0
		jsr        strcpy
		moveq.l    #32,d0
		lea.l      156(a3),a1
		lea.l      160(a5),a0
		jsr        memcpy
		lea.l      188(a3),a1
		lea.l      192(a5),a0
		jsr        strcpy
		move.w     316(a3),320(a5)
		move.l     #0x00000800,d0
		lea.l      318(a3),a1
		lea.l      322(a5),a0
		jsr        memcpy
ab_make_8:
		cmpi.b     #0x33,(a5)
		beq.s      ab_make_7
ab_make_4:
		move.l     #0x00000942,d1
		clr.w      d0
		movea.l    a5,a0
		jsr        memset
ab_make_7:
		move.w     d4,d0
		jsr        Fclose
ab_make_3:
		cmpi.b     #0x33,(a5)
		bne        ab_make_9
		move.w     #0x1800,d0
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		move.w     14(a1),d1
		and.w      d0,d1
		move.w     d0,d2
		not.w      d2
		and.w      174(a5),d2
		or.w       d2,d1
		move.w     d1,14(a1)
		move.w     160(a5),2378(a5)
		move.w     164(a5),2380(a5)
		move.w     170(a5),2384(a5)
		move.w     166(a5),2382(a5)
		move.w     168(a5),2386(a5)
		move.w     172(a5),2388(a5)
		lea.l      176(a5),a1
		movea.l    parts_window,a0
		lea.l      36(a0),a0
		moveq.l    #8,d0
		jsr        memcpy
		move.w     184(a5),36(a2)
		move.w     186(a5),38(a2)
		cmpi.w     #0x0010,320(a5)
		ble.s      ab_make_10
		move.w     #0x0010,320(a5)
ab_make_10:
		movea.l    ACSblk,a0
		move.w     566(a0),d0
		beq.s      ab_make_9
		moveq.l    #-1,d4
		add.w      320(a5),d4
		bra.s      ab_make_11
ab_make_12:
		move.w     d4,d0
		lsl.w      #7,d0
		lea.l      322(a5),a0
		adda.w     d0,a0
		movea.l    WI_GENERAL+8,a1
		jsr        (a1)
		subq.w     #1,d4
ab_make_11:
		tst.w      d4
		bpl.s      ab_make_12
ab_make_9:
		move.b     #0x33,(a5)
		movea.l    20(a2),a3
		move.w     2378(a5),d0
		beq.s      ab_make_13
		ori.w      #0x0001,514(a3)
ab_make_13:
		move.w     2380(a5),d0
		beq.s      ab_make_14
		ori.w      #0x0001,466(a3)
ab_make_14:
		move.w     2382(a5),d0
		beq.s      ab_make_15
		ori.w      #0x0001,274(a3)
ab_make_15:
		move.w     2386(a5),d0
		beq.s      ab_make_16
		ori.w      #0x0001,322(a3)
ab_make_16:
		move.w     2388(a5),d0
		beq.s      ab_make_17
		ori.w      #0x0001,370(a3)
ab_make_17:
		move.w     162(a5),d0
		beq.s      ab_make_18
		ori.w      #0x0001,418(a3)
ab_make_18:
		movea.l    2374(a5),a1
		moveq.l    #24,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		lea.l      1(a5),a1
		moveq.l    #5,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		lea.l      129(a5),a1
		moveq.l    #6,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		lea.l      140(a5),a1
		moveq.l    #7,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		move.l     #0x00000004,(a7)
		lea.l      (a7),a1
		moveq.l    #100,d0
		lea.l      648(a3),a0
		jsr        Auo_slider
		move.l     #0x00000001,(a7)
		lea.l      (a7),a1
		moveq.l    #101,d0
		lea.l      648(a3),a0
		jsr        Auo_slider
		move.w     2384(a5),d0
		subq.w     #1,d0
		beq.s      ab_make_19
		subq.w     #1,d0
		beq.s      ab_make_20
		subq.w     #2,d0
		beq.s      ab_make_21
		subq.w     #4,d0
		beq.s      ab_make_22
		bra.s      ab_make_23
ab_make_19:
		clr.l      (a7)
		bra.s      ab_make_23
ab_make_20:
		move.l     #0x00000001,(a7)
		bra.s      ab_make_23
ab_make_21:
		move.l     #0x00000002,(a7)
		bra.s      ab_make_23
ab_make_22:
		move.l     #0x00000003,(a7)
ab_make_23:
		lea.l      (a7),a1
		moveq.l    #17,d0
		lea.l      648(a3),a0
		jsr        Auo_slider
		move.w     2384(a5),-(a7)
		lea.l      x7a2aa,a1
		lea.l      14(a7),a0
		jsr        sprintf
		addq.w     #2,a7
		lea.l      12(a7),a1
		moveq.l    #4,d0
		lea.l      648(a3),a0
		jsr        Auo_slider
		move.l     #live_snap,4(a7)
		lea.l      648(a3),a0
		move.l     a0,8(a7)
		lea.l      4(a7),a1
		moveq.l    #103,d0
		jsr        Auo_slider
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #0x0100,d0
		eor.w      d3,d0
		beq.s      ab_make_24
		addq.w     #8,a0
		moveq.l    #-1,d1
		movea.l    ACSblk,a3
		move.w     (a3),d0
		jsr        Aev_WmRedraw
ab_make_24:
		jsr        validate
		movea.l    a2,a0
ab_make_2:
		lea.l      2384(a7),a7
		movem.l    (a7)+,d3-d4/a2-a3/a5
		rts

ab_service:
		movem.l    d3-d4/a2-a5,-(a7)
		lea.l      -20(a7),a7
		move.l     a0,16(a7)
		move.w     d0,d3
		movea.l    a1,a4
		lea.l      cews,a5
		move.w     d3,d0
		cmp.w      #0x03ED,d0
		beq        ab_service_1
		bgt.s      ab_service_2
		cmp.w      #0x001A,d0
		beq        ab_service_3
		bgt.s      ab_service_4
		subq.w     #2,d0
		beq.s      ab_service_5
		sub.w      #0x000D,d0
		beq        ab_service_6
		bra        ab_service_7
ab_service_4:
		sub.w      #0x00D1,d0
		beq        ab_service_8
		sub.w      #0x031A,d0
		beq        ab_service_9
		bra        ab_service_7
ab_service_2:
		cmp.w      #0x2712,d0
		beq        ab_service_10
		bgt.s      ab_service_11
		sub.w      #0x03EE,d0
		beq        ab_service_12
		sub.w      #0x005E,d0
		beq        ab_service_13
		bra        ab_service_7
ab_service_11:
		sub.w      #0x2713,d0
		beq        ab_service_14
		subq.w     #1,d0
		beq.s      ab_service_15
		bra        ab_service_7
ab_service_5:
		movea.l    ACSblk,a0
		move.w     570(a0),d0
		beq.s      ab_service_16
		movea.l    16(a7),a0
		jsr        Awi_delete
		bra        ab_service_17
ab_service_16:
		movea.l    ACSblk,a0
		move.w     566(a0),d0
		beq.s      ab_service_18
		lea.l      ERR_WICLOSE,a0
		moveq.l    #1,d0
		jsr        Awi_alert
		bra        ab_service_17
ab_service_18:
		movea.l    16(a7),a0
		move.w     32(a0),d0
		ble        ab_service_17
		jsr        Awi_closed
		bra        ab_service_17
ab_service_15:
		clr.w      d4
		bra.s      ab_service_19
ab_service_22:
		move.w     d4,d0
		lsl.w      #7,d0
		lea.l      cfg+322,a1
		adda.w     d0,a1
		movea.l    a4,a0
		jsr        Ast_icmp
		tst.w      d0
		bne.s      ab_service_20
		clr.w      d0
		bra        ab_service_21
ab_service_20:
		addq.w     #1,d4
ab_service_19:
		cmp.w      cfg+320,d4
		blt.s      ab_service_22
		bra        ab_service_17
ab_service_10:
		cmpi.w     #0x0010,cfg+320
		bge        ab_service_17
		move.l     #0x00000080,d0
		movea.l    a4,a1
		move.w     cfg+320,d1
		addq.w     #1,cfg+320
		lsl.w      #7,d1
		lea.l      cfg+322,a0
		adda.w     d1,a0
		jsr        strncpy
		bra        ab_service_17
ab_service_6:
		lea.l      WI_INFO_BASE,a1
		lea.l      WI_INFO_BASE,a0
		jsr        Awi_doform
		bra        ab_service_17
ab_service_14:
		moveq.l    #1,d0
		movea.l    16(a7),a0
		movea.l    20(a0),a1
		and.w      418(a1),d0
		beq        ab_service_17
		bsr        save_it
		bra        ab_service_17
ab_service_13:
		move.l     (a4),(a5)
		move.l     16(a7),(a4)
		bra        ab_service_17
ab_service_1:
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      26(a7)
		moveq.l    #10,d1
		clr.w      d0
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     14(a7),d0
		jsr        Awi_wid
		movea.l    a0,a3
		move.l     a3,d0
		beq        ab_service_17
		clr.w      d4
		bra.s      ab_service_23
ab_service_25:
		move.w     d4,d0
		lsl.w      #2,d0
		cmpa.l     4(a5,d0.w),a3
		beq.s      ab_service_24
		addq.w     #1,d4
ab_service_23:
		cmp.w      #0x0010,d4
		blt.s      ab_service_25
ab_service_24:
		cmp.w      #0x0010,d4
		bge        ab_service_17
		lea.l      (a7),a1
		move.w     #0x00C8,d0
		movea.l    a3,a0
		movea.l    4(a3),a2
		jsr        (a2)
		move.l     (a7),d0
		beq        ab_service_17
		suba.l     a1,a1
		movea.l    d0,a0
		move.w     #0x00E2,d0
		jsr        Auo_editor
		suba.l     a1,a1
		moveq.l    #14,d0
		movea.l    (a7),a0
		jsr        Auo_editor
		suba.l     a1,a1
		move.w     #0x00F8,d0
		movea.l    (a7),a0
		jsr        Auo_editor
		suba.l     a1,a1
		move.w     #0x00F4,d0
		movea.l    (a7),a0
		jsr        Auo_editor
		suba.l     a1,a1
		move.w     #0x00F6,d0
		movea.l    (a7),a0
		jsr        Auo_editor
		movea.l    a4,a1
		move.w     #0x00F2,d0
		movea.l    (a7),a0
		jsr        Auo_editor
		suba.l     a1,a1
		move.w     #0x00DB,d0
		movea.l    (a7),a0
		jsr        Auo_editor
		suba.l     a1,a1
		moveq.l    #5,d0
		movea.l    (a7),a0
		jsr        Auo_editor
		bra        ab_service_17
ab_service_9:
		move.l     a4,d0
		beq        ab_service_17
		movea.l    a4,a0
		moveq.l    #46,d0
		jsr        strrchr
		move.l     a0,10(a7)
		move.l     a0,d0
		beq        ab_service_17
		lea.l      x7a2a6,a1
		addq.w     #1,a0
		jsr        strcmp
		tst.w      d0
		bne.s      ab_service_26
		movea.l    a4,a0
		movea.l    WI_GENERAL+8,a1
		jsr        (a1)
		bra        ab_service_17
ab_service_26:
		suba.l     a0,a0
		movea.l    EDITOR+8,a1
		jsr        (a1)
		movea.l    a0,a3
		move.l     a3,d0
		beq        ab_service_17
		movea.l    16(a7),a1
		movea.l    4(a3),a2
		move.w     #0x00D0,d0
		jsr        (a2)
		movea.l    a4,a1
		move.w     #0x00CA,d0
		movea.l    a3,a0
		movea.l    4(a3),a2
		jsr        (a2)
		lea.l      x7a2ad,a1
		movea.l    10(a7),a0
		addq.w     #1,a0
		jsr        strcmp
		tst.w      d0
		beq.s      ab_service_27
		lea.l      x7a2a8,a1
		movea.l    10(a7),a0
		addq.w     #1,a0
		jsr        strcmp
		tst.w      d0
		beq.s      ab_service_27
		lea.l      x7a2af,a1
		movea.l    10(a7),a0
		addq.w     #1,a0
		jsr        strcmp
		tst.w      d0
		bne.s      ab_service_28
		moveq.l    #1,d0
		bra.s      ab_service_29
ab_service_28:
		clr.w      d0
ab_service_29:
		bne.s      ab_service_30
ab_service_27:
		clr.w      d4
		bra.s      ab_service_31
ab_service_33:
		move.w     d4,d0
		lsl.w      #2,d0
		move.l     4(a5,d0.w),d1
		beq.s      ab_service_32
		addq.w     #1,d4
ab_service_31:
		cmp.w      #0x0010,d4
		blt.s      ab_service_33
ab_service_32:
		cmp.w      #0x0010,d4
		bge.s      ab_service_30
		move.w     d4,d0
		lsl.w      #2,d0
		move.l     a3,4(a5,d0.w)
		movea.l    a4,a1
		move.w     d4,d1
		lsl.w      #7,d1
		lea.l      68(a5,d1.w),a0
		jsr        strcpy
ab_service_30:
		movea.l    a3,a0
		jsr        Awi_show
		bra        ab_service_17
ab_service_12:
		move.l     a4,d0
		beq        ab_service_17
		movea.l    a4,a1
		lea.l      4(a7),a0
		jsr        Af_2ext
		move.b     4(a7),d0
		beq        ab_service_17
		clr.w      d4
		bra.s      ab_service_34
ab_service_36:
		movea.l    a4,a1
		move.w     d4,d0
		lsl.w      #7,d0
		lea.l      68(a5,d0.w),a0
		jsr        strcmp
		tst.w      d0
		beq.s      ab_service_35
		addq.w     #1,d4
ab_service_34:
		cmp.w      #0x0010,d4
		blt.s      ab_service_36
ab_service_35:
		cmp.w      #0x0010,d4
		bge.s      ab_service_37
		suba.l     a1,a1
		move.w     #0x00D6,d0
		move.w     d4,d1
		lsl.w      #2,d1
		movea.l    4(a5,d1.w),a0
		movea.l    4(a5,d1.w),a2
		movea.l    4(a2),a2
		jsr        (a2)
		bra        ab_service_17
ab_service_37:
		lea.l      x7a2b3,a1
		lea.l      4(a7),a0
		jsr        strcmp
		tst.w      d0
		bne        ab_service_17
		jsr        Awi_list
		movea.l    a0,a3
		movea.l    a3,a2
ab_service_39:
		move.l     78(a2),d0
		beq.s      ab_service_38
		movea.l    d0,a1
		lea.l      4(a7),a0
		jsr        Af_2ext
		move.l     a0,d0
		beq.s      ab_service_38
		lea.l      x7a2a6,a1
		lea.l      4(a7),a0
		jsr        strcmp
		tst.w      d0
		bne.s      ab_service_38
		move.l     74(a2),d0
		beq.s      ab_service_38
		lea.l      _WGTITEL,a1
		movea.l    d0,a0
		jsr        strcmp
		tst.w      d0
		bne.s      ab_service_38
		movea.l    a4,a1
		movea.l    78(a2),a0
		addq.w     #1,a0
		jsr        strcmp
		tst.w      d0
		bne.s      ab_service_38
		movea.l    a2,a0
		jsr        save
ab_service_38:
		jsr        Awi_list
		movea.l    a0,a2
		cmpa.l     a0,a3
		beq        ab_service_17
		move.w     32(a3),d0
		bpl.s      ab_service_39
		bra        ab_service_17
ab_service_8:
		clr.w      d4
		bra.s      ab_service_40
ab_service_42:
		move.w     d4,d0
		lsl.w      #2,d0
		cmpa.l     4(a5,d0.w),a4
		bne.s      ab_service_41
		move.w     d4,d1
		lsl.w      #7,d1
		lea.l      68(a5,d1.w),a1
		movea.l    (a5),a0
		movea.l    (a5),a2
		movea.l    4(a2),a2
		move.w     #0x00D1,d0
		jsr        (a2)
		move.w     d4,d0
		lsl.w      #2,d0
		clr.l      4(a5,d0.w)
		lea.l      x79eb4,a1
		move.w     d4,d1
		lsl.w      #7,d1
		lea.l      68(a5,d1.w),a0
		jsr        strcpy
ab_service_41:
		addq.w     #1,d4
ab_service_40:
		cmp.w      #0x0010,d4
		blt.s      ab_service_42
		bra        ab_service_17
ab_service_3:
		movea.l    16(a7),a0
		move.w     28(a0),d0
		subq.w     #5,d0
		beq.s      ab_service_43
		subq.w     #1,d0
		beq.s      ab_service_44
		subq.w     #1,d0
		beq.s      ab_service_45
		sub.w      #0x0011,d0
		beq.s      ab_service_46
		bra.s      ab_service_47
ab_service_46:
		movea.l    helpacc,a1
		moveq.l    #24,d0
		movea.l    16(a7),a0
		movea.l    20(a0),a0
		jsr        Aob_gettext
		bra.s      ab_service_47
ab_service_43:
		lea.l      cfg+1,a1
		moveq.l    #5,d0
		movea.l    16(a7),a0
		movea.l    20(a0),a0
		jsr        Aob_gettext
		bra.s      ab_service_47
ab_service_44:
		lea.l      cfg+129,a1
		moveq.l    #6,d0
		movea.l    16(a7),a0
		movea.l    20(a0),a0
		jsr        Aob_gettext
		bra.s      ab_service_47
ab_service_45:
		lea.l      cfg+140,a1
		moveq.l    #7,d0
		movea.l    16(a7),a0
		movea.l    20(a0),a0
		jsr        Aob_gettext
ab_service_47:
		jsr        validate
		bra.s      ab_service_17
ab_service_7:
		movea.l    a4,a1
		move.w     d3,d0
		movea.l    16(a7),a0
		jsr        Awi_service
		bra.s      ab_service_21
ab_service_17:
		moveq.l    #1,d0
ab_service_21:
		lea.l      20(a7),a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

live_snap:
		move.l     a2,-(a7)
		subq.w     #6,a7
		lea.l      imagesnap,a2
		move.w     d0,d1
		tst.w      d1
		beq.s      live_snap_1
		subq.w     #1,d1
		beq.s      live_snap_2
		subq.w     #1,d1
		beq.s      live_snap_3
		bra.s      live_snap_4
live_snap_1:
		move.w     #0x0001,(a2)
		bra.s      live_snap_5
live_snap_2:
		move.w     #0x0002,(a2)
		bra.s      live_snap_5
live_snap_3:
		move.w     #0x0004,(a2)
		bra.s      live_snap_5
live_snap_4:
		move.w     #0x0008,(a2)
live_snap_5:
		move.w     (a2),d0
		bne.s      live_snap_6
		move.w     #0x0001,(a2)
live_snap_6:
		move.w     (a2),-(a7)
		lea.l      x7a2aa,a1
		lea.l      2(a7),a0
		jsr        sprintf
		addq.w     #2,a7
		lea.l      (a7),a0
		addq.w     #6,a7
		movea.l    (a7)+,a2
		rts

reg_kind:
		movem.l    d3/a2-a4,-(a7)
		lea.l      -20(a7),a7
		lea.l      x79ea8,a0
		lea.l      (a7),a1
		moveq.l    #11,d0
reg_kind_1:
		move.b     (a0)+,(a1)+
		dbf        d0,reg_kind_1
		lea.l      P_REGISTER,a0
		jsr        Aob_create
		movea.l    a0,a2
		move.l     a2,d0
		beq        reg_kind_2
		lea.l      ACSblk,a3
		lea.l      12(a7),a4
		moveq.l    #23,d0
		movea.l    (a3),a0
		movea.l    600(a0),a1
		movea.l    20(a1),a1
		movea.l    a4,a0
		jsr        Aob_offset
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.w     52(a1),d0
		add.w      d0,(a4)
		move.w     54(a1),d1
		add.w      d1,2(a4)
		move.w     2(a1),d3
		move.w     d3,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		ori.w      #0x0004,34(a2,d2.l)
		move.w     2(a4),d1
		movea.l    a2,a1
		movea.l    (a3),a0
		movea.l    600(a0),a0
		move.w     (a4),d0
		jsr        Ame_popup
		move.w     d0,d3
		tst.w      d0
		ble.s      reg_kind_3
		moveq.l    #-1,d1
		add.w      d0,d1
		ext.l      d1
		movea.l    (a3),a0
		movea.l    600(a0),a1
		move.l     d1,(a1)
		lsl.w      #2,d0
		movea.l    -4(a7,d0.w),a1
		movea.l    (a3),a0
		movea.l    604(a0),a0
		moveq.l    #23,d0
		jsr        Aob_puttext
		moveq.l    #-1,d1
		moveq.l    #23,d0
		movea.l    (a3),a0
		movea.l    600(a0),a0
		movea.l    (a3),a1
		movea.l    600(a1),a4
		movea.l    102(a4),a1
		jsr        (a1)
reg_kind_3:
		movea.l    a2,a0
		jsr        Aob_delete
reg_kind_2:
		lea.l      20(a7),a7
		movem.l    (a7)+,d3/a2-a4
		rts

outreg:
		move.w     d3,-(a7)
		move.l     a3,-(a7)
		lea.l      -256(a7),a7
		move.w     d0,d3
		movea.l    a0,a3
		bra.s      outreg_1
outreg_2:
		lea.l      (a7),a0
		move.l     a0,-(a7)
		move.l     (a3),-(a7)
		lea.l      x7a2b7,a1
		jsr        sprintf
		addq.w     #4,a7
		move.w     d0,d1
		ext.l      d1
		move.w     d3,d0
		movea.l    (a7)+,a0
		jsr        Fwrite
		addq.w     #4,a3
outreg_1:
		move.l     (a3),d0
		bne.s      outreg_2
		lea.l      256(a7),a7
		movea.l    (a7)+,a3
		move.w     (a7)+,d3
		rts

reg_me:
		movem.l    d3/a2-a4,-(a7)
		lea.l      -404(a7),a7
		lea.l      ACSblk,a2
		lea.l      400(a7),a1
		moveq.l    #3,d0
		movea.l    (a2),a0
		movea.l    604(a0),a0
		lea.l      384(a0),a0
		jsr        Auo_boxed
		lea.l      396(a7),a1
		moveq.l    #3,d0
		movea.l    (a2),a0
		movea.l    604(a0),a0
		lea.l      408(a0),a0
		jsr        Auo_boxed
		lea.l      392(a7),a1
		moveq.l    #3,d0
		movea.l    (a2),a0
		movea.l    604(a0),a0
		lea.l      432(a0),a0
		jsr        Auo_boxed
		lea.l      388(a7),a1
		moveq.l    #3,d0
		movea.l    (a2),a0
		movea.l    604(a0),a0
		lea.l      456(a0),a0
		jsr        Auo_boxed
		lea.l      384(a7),a1
		moveq.l    #3,d0
		movea.l    (a2),a0
		movea.l    604(a0),a0
		lea.l      480(a0),a0
		jsr        Auo_boxed
		lea.l      x79eb4,a3
		lea.l      256(a7),a4
		lea.l      1032(a3),a1
		move.l     a1,-(a7)
		movea.l    (a2),a1
		lea.l      158(a1),a1
		movea.l    a4,a0
		jsr        strcpy
		movea.l    (a7)+,a1
		jsr        strcat
		movea.l    400(a7),a0
		move.b     (a0),d0
		beq        reg_me_1
		movea.l    396(a7),a1
		move.b     (a1),d1
		beq        reg_me_1
		movea.l    392(a7),a0
		move.b     (a0),d2
		beq        reg_me_1
		movea.l    388(a7),a1
		move.b     (a1),d0
		beq        reg_me_1
		pea.l      1041(a3)
		movea.l    a4,a1
		lea.l      1045(a3),a0
		jsr        Af_select
		addq.w     #4,a7
		move.l     a0,d0
		beq        reg_me_1
		clr.w      d0
		movea.l    a4,a0
		jsr        Fcreate
		move.l     d0,d3
		ble        reg_me_1
		lea.l      regstart,a4
		movea.l    a4,a0
		move.l     d3,d0
		bsr        outreg
		movea.l    (a2),a0
		movea.l    600(a0),a1
		move.w     2(a1),d0
		tst.w      d0
		beq.s      reg_me_2
		subq.w     #1,d0
		beq.s      reg_me_3
		subq.w     #1,d0
		beq.s      reg_me_4
		bra.s      reg_me_5
reg_me_2:
		lea.l      84(a4),a0
		move.l     d3,d0
		bsr        outreg
		bra.s      reg_me_5
reg_me_3:
		lea.l      96(a4),a0
		move.l     d3,d0
		bsr        outreg
		bra.s      reg_me_5
reg_me_4:
		moveq.l    #1,d0
		movea.l    (a2),a0
		movea.l    604(a0),a1
		and.w      226(a1),d0
		beq.s      reg_me_6
		lea.l      132(a4),a0
		move.l     d3,d0
		bsr        outreg
		bra.s      reg_me_5
reg_me_6:
		lea.l      144(a4),a0
		move.l     d3,d0
		bsr        outreg
reg_me_5:
		movea.l    384(a7),a0
		move.b     (a0),d0
		beq.s      reg_me_7
		lea.l      156(a4),a0
		move.l     d3,d0
		bsr        outreg
reg_me_7:
		lea.l      172(a4),a0
		move.l     d3,d0
		bsr        outreg
		clr.w      d2
		move.w     d3,d1
		moveq.l    #0,d0
		jsr        Fseek
		moveq.l    #1,d2
		move.w     d3,d1
		move.l     #0x000000A6,d0
		jsr        Fseek
		lea.l      (a7),a0
		move.l     a0,-(a7)
		pea.l      36(a3)
		pea.l      36(a3)
		pea.l      1063(a3)
		lea.l      1054(a3),a1
		jsr        sprintf
		lea.l      12(a7),a7
		move.w     d0,d1
		ext.l      d1
		move.w     d3,d0
		movea.l    (a7)+,a0
		jsr        Fwrite
		moveq.l    #1,d2
		move.w     d3,d1
		moveq.l    #36,d0
		jsr        Fseek
		lea.l      (a7),a0
		move.l     a0,-(a7)
		move.l     404(a7),-(a7)
		lea.l      1065(a3),a1
		jsr        sprintf
		addq.w     #4,a7
		move.w     d0,d1
		ext.l      d1
		move.w     d3,d0
		movea.l    (a7)+,a0
		jsr        Fwrite
		moveq.l    #1,d2
		move.w     d3,d1
		moveq.l    #9,d0
		jsr        Fseek
		lea.l      (a7),a0
		move.l     a0,-(a7)
		move.l     400(a7),-(a7)
		lea.l      1065(a3),a1
		jsr        sprintf
		addq.w     #4,a7
		move.w     d0,d1
		ext.l      d1
		move.w     d3,d0
		movea.l    (a7)+,a0
		jsr        Fwrite
		moveq.l    #1,d2
		move.w     d3,d1
		moveq.l    #9,d0
		jsr        Fseek
		lea.l      (a7),a0
		move.l     a0,-(a7)
		move.l     396(a7),-(a7)
		lea.l      1065(a3),a1
		jsr        sprintf
		addq.w     #4,a7
		move.w     d0,d1
		ext.l      d1
		move.w     d3,d0
		movea.l    (a7)+,a0
		jsr        Fwrite
		moveq.l    #1,d2
		move.w     d3,d1
		moveq.l    #9,d0
		jsr        Fseek
		lea.l      (a7),a0
		move.l     a0,-(a7)
		move.l     392(a7),-(a7)
		lea.l      1065(a3),a1
		jsr        sprintf
		addq.w     #4,a7
		move.w     d0,d1
		ext.l      d1
		move.w     d3,d0
		movea.l    (a7)+,a0
		jsr        Fwrite
		moveq.l    #1,d2
		move.w     d3,d1
		moveq.l    #9,d0
		jsr        Fseek
		movea.l    384(a7),a0
		move.b     (a0),d0
		beq.s      reg_me_8
		lea.l      (a7),a0
		move.l     a0,-(a7)
		move.l     388(a7),-(a7)
		lea.l      1065(a3),a1
		jsr        sprintf
		addq.w     #4,a7
		move.w     d0,d1
		ext.l      d1
		move.w     d3,d0
		movea.l    (a7)+,a0
		jsr        Fwrite
		bra.s      reg_me_9
reg_me_8:
		lea.l      (a7),a0
		move.l     a0,-(a7)
		pea.l      (a3)
		lea.l      1065(a3),a1
		jsr        sprintf
		addq.w     #4,a7
		move.w     d0,d1
		ext.l      d1
		move.w     d3,d0
		movea.l    (a7)+,a0
		jsr        Fwrite
reg_me_9:
		move.w     d3,d0
		jsr        Fclose
reg_me_1:
		lea.l      404(a7),a7
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl acs_register
acs_register:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      WI_REGISTER,a2
		movea.l    a2,a0
		movea.l    8(a2),a1
		jsr        (a1)
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      acs_register_1
		lea.l      -4160(a2),a1
		movea.l    20(a3),a0
		moveq.l    #23,d0
		jsr        Aob_puttext
		movea.l    a3,a0
		jsr        Awi_dialog
		movea.l    a3,a0
		jsr        Awi_delete
acs_register_1:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

demoabout:
		move.l     wdemo,d0
		beq.s      demoabout_1
		movea.l    d0,a0
		jsr        Awi_open
		rts
demoabout_1:
		lea.l      A_DEMO,a0
		moveq.l    #1,d0
		jsr        Awi_alert
		rts

installdemo:
		movem.l    a2-a4,-(a7)
		lea.l      ACSblk,a2
		lea.l      wdemo,a3
		move.w     -2(a3),d0
		beq.s      installdemo_1
		clr.l      4(a3)
		movea.l    (a2),a0
		move.l     #demoabout,668(a0)
		movea.l    (a2),a0
		cmpi.l     #0x000001F4,562(a0)
		ble.s      installdemo_2
		move.l     #0x000001F4,562(a0)
		bra.s      installdemo_2
installdemo_1:
		move.l     (a3),d0
		beq.s      installdemo_3
		movea.l    d0,a0
		move.w     32(a0),d1
		ble.s      installdemo_3
		suba.l     a1,a1
		movea.l    4(a0),a4
		moveq.l    #2,d0
		jsr        (a4)
installdemo_3:
		move.l     oldabout,d0
		beq.s      installdemo_2
		movea.l    (a2),a0
		move.l     d0,668(a0)
installdemo_2:
		movem.l    (a7)+,a2-a4
		rts

ComputeKey:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -4106(a7),a7
		move.w     d0,d7
		move.l     a0,4102(a7)
		move.w     d1,4100(a7)
		move.l     a1,4096(a7)
		movea.l    4150(a7),a3
		movea.l    4154(a7),a4
		movea.l    4166(a7),a2
		movea.l    4146(a7),a0
		jsr        atoi
		move.w     d0,d3
		ext.l      d3
		movea.l    a3,a0
		jsr        atoi
		move.w     d0,d4
		ext.l      d4
		movea.l    a4,a0
		jsr        atoi
		move.w     d0,d5
		ext.l      d5
		lea.l      x79eb4,a5
		lea.l      1073(a5),a1
		lea.l      (a7),a0
		jsr        strcpy
		movea.l    4102(a7),a1
		lea.l      (a7),a0
		jsr        strcat
		lea.l      1085(a5),a1
		lea.l      (a7),a0
		jsr        strcat
		movea.l    4096(a7),a1
		lea.l      (a7),a0
		jsr        strcat
		lea.l      1097(a5),a1
		lea.l      (a7),a0
		jsr        strcat
		movea.l    4146(a7),a1
		lea.l      (a7),a0
		jsr        strcat
		lea.l      62(a5),a1
		lea.l      (a7),a0
		jsr        strcat
		movea.l    a3,a1
		lea.l      (a7),a0
		jsr        strcat
		movea.l    a4,a1
		lea.l      (a7),a0
		jsr        strcat
		lea.l      1107(a5),a1
		lea.l      (a7),a0
		jsr        strcat
		movea.l    4162(a7),a1
		lea.l      (a7),a0
		jsr        strcat
		lea.l      1123(a5),a1
		lea.l      (a7),a0
		jsr        strcat
		movea.l    4158(a7),a1
		lea.l      (a7),a0
		jsr        strcat
		move.w     d7,d0
		ext.l      d0
		moveq.l    #28,d1
		lsl.l      d1,d0
		move.w     4100(a7),d2
		ext.l      d2
		moveq.l    #24,d1
		lsl.l      d1,d2
		or.l       d2,d0
		move.l     d3,d2
		moveq.l    #16,d1
		lsl.l      d1,d2
		or.l       d2,d0
		move.l     d4,d2
		lsl.l      #8,d2
		or.l       d2,d0
		or.l       d5,d0
		move.l     d0,d7
		lea.l      (a7),a0
		jsr        crc16
		ext.l      d0
		moveq.l    #16,d1
		lsl.l      d1,d0
		not.l      d0
		move.l     d0,-(a7)
		movea.l    4162(a7),a0
		jsr        crc16
		ext.l      d0
		move.l     (a7)+,d1
		eor.l      d0,d1
		move.l     d1,-(a7)
		movea.l    4166(a7),a0
		jsr        crc16
		ext.l      d0
		move.l     (a7)+,d1
		eor.l      d0,d1
		move.l     d1,-(a7)
		movea.l    4106(a7),a0
		jsr        crc16
		ext.l      d0
		not.l      d0
		move.l     (a7)+,d1
		eor.l      d0,d1
		move.l     d1,-(a7)
		movea.l    4100(a7),a0
		jsr        crc16
		ext.l      d0
		not.l      d0
		move.l     (a7)+,d1
		eor.l      d0,d1
		move.l     d1,-(a7)
		movea.l    4150(a7),a0
		jsr        crc16
		ext.l      d0
		move.l     (a7)+,d1
		eor.l      d0,d1
		move.l     d1,-(a7)
		movea.l    a3,a0
		jsr        crc16
		ext.l      d0
		move.l     (a7)+,d1
		eor.l      d0,d1
		move.l     d1,-(a7)
		movea.l    a4,a0
		jsr        crc16
		ext.l      d0
		move.l     (a7)+,d1
		eor.l      d0,d1
		eor.l      d7,d1
		move.l     d1,d7
		lea.l      1135(a5),a1
		movea.l    a2,a0
		jsr        strcpy
		clr.w      d0
		bra.s      ComputeKey_1
ComputeKey_4:
		move.l     d7,d1
		asr.l      d0,d1
		and.w      #0xFFFF,d1
		moveq.l    #0,d6
		move.w     d1,d6
		divu.w     #0x001A,d6
		swap       d6
		cmp.w      #0x0019,d6
		ble.s      ComputeKey_2
		moveq.l    #22,d2
		add.b      d6,d2
		bra.s      ComputeKey_3
ComputeKey_2:
		moveq.l    #65,d2
		add.b      d6,d2
ComputeKey_3:
		move.w     d0,d1
		ext.l      d1
		divs.w     #0x0003,d1
		move.b     d2,0(a2,d1.w)
		addq.w     #3,d0
ComputeKey_1:
		cmp.w      #0x0020,d0
		blt.s      ComputeKey_4
		clr.b      10(a2)
		lea.l      4106(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

crc16:
		movem.l    d3-d5/a2,-(a7)
		movea.l    a0,a2
		move.w     #0xFFFF,d3
		jsr        strlen
		bra.s      crc16_1
crc16_6:
		clr.b      d2
		move.b     (a2)+,d1
		ext.w      d1
		and.w      #0x00FF,d1
		bra.s      crc16_2
crc16_5:
		moveq.l    #1,d4
		and.w      d3,d4
		moveq.l    #1,d5
		and.w      d1,d5
		eor.w      d5,d4
		beq.s      crc16_3
		move.w     d3,d4
		lsr.w      #1,d4
		move.w     #0x8408,d5
		eor.w      d5,d4
		move.w     d4,d3
		bra.s      crc16_4
crc16_3:
		lsr.w      #1,d3
crc16_4:
		addq.b     #1,d2
		lsr.w      #1,d1
crc16_2:
		cmp.b      #0x08,d2
		bcs.s      crc16_5
crc16_1:
		move.w     d0,d2
		subq.w     #1,d0
		tst.w      d2
		bne.s      crc16_6
		not.w      d3
		move.w     d3,d1
		move.w     d3,d0
		lsl.w      #8,d0
		move.w     d1,d2
		lsr.w      #8,d2
		and.w      #0x00FF,d2
		or.w       d2,d0
		move.w     d0,d3
		move.w     d3,d0
		movem.l    (a7)+,d3-d5/a2
		rts

		.globl validate
validate:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      -12(a7),a7
		lea.l      cfg,a2
		move.l     -8(a2),d0
		bne.s      validate_1
		lea.l      9030(a2),a0
		movea.l    9038(a2),a1
		jsr        (a1)
		move.l     a0,-8(a2)
		beq.s      validate_1
		movea.l    ACSblk,a1
		move.l     668(a1),oldabout
		jsr        Ash_gettimer
		move.l     d0,timer1
		move.l     d0,timer0
validate_1:
		move.w     #0x0001,-10(a2)
		move.b     1(a2),d0
		beq.s      validate_2
		lea.l      x79eb4,a3
		moveq.l    #5,d0
		lea.l      1146(a3),a1
		lea.l      129(a2),a0
		jsr        strncmp
		tst.w      d0
		bne.s      validate_2
		pea.l      (a7)
		pea.l      129(a2)
		pea.l      1(a2)
		pea.l      1161(a3)
		pea.l      36(a3)
		pea.l      1063(a3)
		lea.l      83(a3),a1
		clr.w      d1
		lea.l      1152(a3),a0
		clr.w      d0
		bsr        ComputeKey
		lea.l      24(a7),a7
		lea.l      (a7),a1
		lea.l      140(a2),a0
		jsr        Ast_cmp
		tst.w      d0
		bne.s      validate_2
		clr.w      -10(a2)
validate_2:
		bsr        installdemo
		lea.l      12(a7),a7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl demo_init
demo_init:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a2
		ori.w      #0x0020,86(a2)
		lea.l      timer1,a3
		move.w     32(a2),d0
		ble.s      demo_init_1
		jsr        Ash_gettimer
		move.l     d0,(a3)
		sub.l      -4(a3),d0
		moveq.l    #50,d1
		cmp.l      d0,d1
		bgt.s      demo_init_2
		move.l     (a3),-4(a3)
		addq.l     #4,stepper
		lea.l      36(a2),a1
		movea.l    a2,a0
		movea.l    106(a2),a4
		jsr        (a4)
		bra.s      demo_init_2
demo_init_1:
		moveq.l    #0,d0
		move.l     d0,(a3)
		move.l     d0,-4(a3)
demo_init_2:
		clr.w      d0
		movem.l    (a7)+,a2-a4
		rts

		.globl demo_serv
demo_serv:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		movea.l    a1,a3
		subq.w     #2,d0
		beq.s      demo_serv_1
		bra.s      demo_serv_2
demo_serv_1:
		movea.l    ACSblk,a0
		move.w     570(a0),d0
		beq.s      demo_serv_3
		movea.l    a2,a0
		jsr        Awi_delete
		bra.s      demo_serv_4
demo_serv_3:
		ori.w      #0x0100,86(a2)
		movea.l    a2,a0
		jsr        Awi_closed
		andi.w     #0xFEFF,86(a2)
		bra.s      demo_serv_4
demo_serv_2:
		movea.l    a3,a1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Awi_service
		bra.s      demo_serv_5
demo_serv_4:
		moveq.l    #1,d0
demo_serv_5:
		movem.l    (a7)+,d3/a2-a3
		rts

ScrollServ:
		movem.l    d3-d4/a3-a5,-(a7)
		lea.l      -34(a7),a7
		movea.l    a0,a5
		move.w     d0,d1
		subq.w     #1,d1
		beq.s      ScrollServ_1
		subq.w     #1,d1
		beq        ScrollServ_2
		bra        ScrollServ_3
ScrollServ_1:
		moveq.l    #1,d3
		lea.l      ACSblk,a3
		lea.l      x79eb4,a4
		bra.s      ScrollServ_4
ScrollServ_8:
		lea.l      (a7),a0
		move.w     d3,d1
		movea.l    (a3),a1
		move.w     16(a1),d0
		jsr        vqt_name
		move.w     d0,d4
		move.b     32(a7),d1
		beq.s      ScrollServ_5
		lea.l      1163(a4),a1
		move.l     a1,-(a7)
		lea.l      4(a7),a0
		jsr        strupr
		movea.l    (a7)+,a1
		jsr        strstr
		move.l     a0,d0
		bne.s      ScrollServ_6
		lea.l      1169(a4),a1
		lea.l      (a7),a0
		jsr        strstr
		move.l     a0,d0
		beq.s      ScrollServ_5
ScrollServ_6:
		move.w     d4,d0
		ext.l      d0
		moveq.l    #16,d1
		lsl.l      d1,d0
		or.l       #0x0000000B,d0
		movea.l    12(a5),a0
		move.l     d0,4(a0)
		bra.s      ScrollServ_7
ScrollServ_5:
		addq.w     #1,d3
ScrollServ_4:
		movea.l    (a3),a0
		cmp.w      644(a0),d3
		ble.s      ScrollServ_8
ScrollServ_7:
		movea.l    (a3),a0
		cmp.w      644(a0),d3
		ble.s      ScrollServ_2
		move.w     660(a0),d0
		ext.l      d0
		moveq.l    #16,d1
		lsl.l      d1,d0
		move.w     662(a0),d2
		ext.l      d2
		or.l       d2,d0
		movea.l    12(a5),a1
		move.l     d0,4(a1)
		bra.s      ScrollServ_2
ScrollServ_3:
		clr.w      d0
		bra.s      ScrollServ_9
ScrollServ_2:
		moveq.l    #1,d0
ScrollServ_9:
		lea.l      34(a7),a7
		movem.l    (a7)+,d3-d4/a3-a5
		rts

ScrollDemo:
		movem.l    d2-d5/a2-a6,-(a7)
		lea.l      -22(a7),a7
		movea.l    62(a7),a3
		lea.l      ACSblk,a2
		lea.l      6(a7),a4
		move.w     10(a3),d0
		move.w     d0,8(a4)
		movea.l    (a2),a0
		move.w     18(a0),d1
		asr.w      #1,d1
		add.w      d1,d0
		move.w     d0,(a4)
		move.w     12(a3),d0
		move.w     d0,10(a4)
		move.w     20(a0),d1
		asr.w      #1,d1
		add.w      d1,d0
		move.w     d0,2(a4)
		move.w     10(a3),d0
		add.w      14(a3),d0
		subq.w     #1,d0
		move.w     d0,12(a4)
		move.w     18(a0),d1
		asr.w      #1,d1
		sub.w      d1,d0
		move.w     d0,4(a4)
		move.w     12(a3),d0
		add.w      16(a3),d0
		subq.w     #1,d0
		move.w     d0,14(a4)
		move.w     20(a0),d1
		asr.w      #1,d1
		sub.w      d1,d0
		move.w     d0,6(a4)
		move.w     22(a3),d0
		bne.s      ScrollDemo_1
		move.w     24(a3),d1
		beq.s      ScrollDemo_2
ScrollDemo_1:
		move.w     18(a3),8(a4)
		move.w     20(a3),10(a4)
		move.w     18(a3),d0
		add.w      22(a3),d0
		subq.w     #1,d0
		move.w     d0,12(a4)
		move.w     20(a3),d1
		add.w      24(a3),d1
		subq.w     #1,d1
		move.w     d1,14(a4)
		lea.l      8(a4),a0
		movea.l    (a2),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
ScrollDemo_2:
		moveq.l    #1,d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		movea.l    (a2),a0
		cmpi.w     #0x0004,28(a0)
		blt.s      ScrollDemo_3
		moveq.l    #8,d1
		move.w     16(a0),d0
		jsr        vsf_color
		bra.s      ScrollDemo_4
ScrollDemo_3:
		clr.w      d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vsf_color
ScrollDemo_4:
		moveq.l    #1,d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		lea.l      8(a4),a0
		movea.l    (a2),a1
		move.w     16(a1),d0
		jsr        v_bar
		move.w     22(a3),d0
		bne.s      ScrollDemo_5
		move.w     24(a3),d1
		beq.s      ScrollDemo_6
ScrollDemo_5:
		move.w     18(a3),d0
		cmp.w      (a4),d0
		ble.s      ScrollDemo_7
		move.w     d0,(a4)
ScrollDemo_7:
		move.w     20(a3),d0
		cmp.w      2(a4),d0
		ble.s      ScrollDemo_8
		move.w     d0,2(a4)
ScrollDemo_8:
		move.w     18(a3),d0
		add.w      22(a3),d0
		subq.w     #1,d0
		cmp.w      4(a4),d0
		bge.s      ScrollDemo_9
		move.w     d0,4(a4)
ScrollDemo_9:
		move.w     20(a3),d0
		add.w      24(a3),d0
		subq.w     #1,d0
		cmp.w      6(a4),d0
		bge.s      ScrollDemo_6
		move.w     d0,6(a4)
ScrollDemo_6:
		movea.l    a4,a0
		moveq.l    #1,d1
		movea.l    (a2),a1
		move.w     16(a1),d0
		jsr        vs_clip
		move.w     4(a3),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a3),a6
		adda.l     d0,a6
		movea.l    (a2),a0
		move.w     16(a0),d0
		moveq.l    #2,d1
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vst_color
		movea.l    12(a6),a0
		move.l     4(a0),d1
		moveq.l    #16,d0
		asr.l      d0,d1
		and.w      #0xFFFF,d1
		movea.l    (a2),a1
		move.w     16(a1),d0
		jsr        vst_font
		lea.l      2(a7),a5
		moveq.l    #-1,d0
		movea.l    12(a6),a0
		and.w      6(a0),d0
		move.w     d0,(a5)
		pea.l      (a5)
		pea.l      8(a7)
		lea.l      8(a7),a1
		lea.l      8(a7),a0
		move.w     d0,d1
		movea.l    (a2),a6
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
		lea.l      (a7),a1
		lea.l      (a7),a0
		moveq.l    #5,d2
		moveq.l    #1,d1
		movea.l    (a2),a6
		move.w     16(a6),d0
		jsr        vst_alignment
		move.w     14(a3),d3
		asr.w      #1,d3
		add.w      10(a3),d3
		lea.l      demotext,a6
		move.w     (a5),d0
		lsl.w      #5,d0
		add.w      16(a3),d0
		ext.l      d0
		move.l     -9520(a6),d1
		cmp.l      d0,d1
		ble.s      ScrollDemo_10
		clr.l      -9520(a6)
ScrollDemo_10:
		move.w     12(a3),d4
		add.w      16(a3),d4
		movea.l    (a2),a0
		sub.w      20(a0),d4
		sub.w      -9518(a6),d4
		clr.w      d5
		bra        ScrollDemo_11
ScrollDemo_16:
		moveq.l    #2,d0
		add.w      (a5),d0
		add.w      d0,d4
		cmp.w      12(a3),d4
		ble        ScrollDemo_12
		move.w     d4,d1
		add.w      (a5),d1
		move.w     12(a3),d2
		add.w      16(a3),d2
		cmp.w      d2,d1
		bge        ScrollDemo_12
		move.w     d5,d0
		lsl.w      #2,d0
		movea.l    0(a6,d0.w),a0
		cmpi.b     #0x2A,(a0)
		bne.s      ScrollDemo_13
		movea.l    (a2),a1
		cmpi.w     #0x0004,28(a1)
		blt.s      ScrollDemo_14
		move.w     16(a1),d0
		moveq.l    #2,d1
		jsr        vst_color
		bra.s      ScrollDemo_15
ScrollDemo_14:
		moveq.l    #1,d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vst_effects
ScrollDemo_15:
		move.w     d5,d0
		lsl.w      #2,d0
		movea.l    0(a6,d0.w),a0
		addq.w     #1,a0
		move.w     d4,d2
		move.w     d3,d1
		movea.l    (a2),a1
		move.w     16(a1),d0
		jsr        v_gtext
		bra.s      ScrollDemo_12
ScrollDemo_13:
		moveq.l    #1,d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vst_color
		clr.w      d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vst_effects
		move.w     d5,d0
		lsl.w      #2,d0
		movea.l    0(a6,d0.w),a0
		move.w     d4,d2
		move.w     d3,d1
		movea.l    (a2),a1
		move.w     16(a1),d0
		jsr        v_gtext
ScrollDemo_12:
		addq.w     #1,d5
ScrollDemo_11:
		cmp.w      #0x0020,d5
		blt        ScrollDemo_16
		movea.l    a4,a0
		clr.w      d1
		movea.l    (a2),a1
		move.w     16(a1),d0
		jsr        vs_clip
		clr.w      d0
		lea.l      22(a7),a7
		movem.l    (a7)+,d2-d5/a2-a6
		rts

		.data

regstart:
		dc.l x79eb4
		dc.l x79eb5
		dc.l x79eb9
		dc.l x79eca
		dc.l x79eb4
		dc.l x79eda
		dc.l x79eb4
		dc.l x79eb4
		dc.l x79eb4
		dc.l x79ef4
		dc.l x79eb4
		dc.l x79f0e
		dc.l x79f54
		dc.l x79eb4
		dc.l x79f66
		dc.l x79fac
		dc.l x79ff2
		dc.l x7a038
		dc.l x7a07e
		dc.l x79eb4
		dc.l 0

regscheck:
		dc.l x7a0c4
		dc.l x79eb4
		dc.l 0

regkonto:
		dc.l x7a100
		dc.l x7a14c
		dc.l x79eb4
		dc.l x7a15c
		dc.l x7a16e
		dc.l x7a181
		dc.l x7a196
		dc.l x79eb4
		dc.l 0

reginn:
		dc.l x7a1a8
		dc.l x79eb4
		dc.l 0

regonn:
		dc.l x7a1e0
		dc.l x79eb4
		dc.l 0

regmail:
		dc.l x7a219
		dc.l x7a25c
		dc.l x79eb4
		dc.l 0

regend:
		dc.l x79eb4
		dc.l x79eb4
		dc.l x7a28f
		dc.l x79eb4
		dc.l x7a297
		dc.l x79eb4
		dc.l 0

		.globl runasdemo
runasdemo:
		dc.w 1
wdemo:
		dc.l 0

stepper:
		dc.l 0

	.globl cfg
cfg:     ds.b 2370
	.globl last_path
last_path:
		dc.l cfg+192
	.globl helpacc
helpacc:
		dc.l cfg+151
	.globl gluepart
gluepart:
		dc.w 1
	.globl dirtysave
dirtysave:
		dc.w 0
	.globl snapping
snapping:
		dc.w 1
	.globl imagesnap
imagesnap:
		dc.w 1
	.globl copyindex
copyindex:
		dc.w 1
	.globl refimages
refimages:
		dc.w 1
A_DEMO:
		dc.b '[4][ Dies ist eine Demoversion, | in der alle Funktionen| nutzbar sind, die jedoch | nur zwei Objekte in einer| Objektliste anlegen kann.][   OK   ]',0
ERR_WICLOSE:
		dc.b '[3][ Dieses Fenster darf| nicht gelîscht werden! ][    OK    ]',0
BUBBLE_01:
		dc.b 'Tragen Sie hier bitte Ihren Namen ein.',0
BUBBLE_02:
		dc.b 'Tragen Sie hier bitte Ihre Seriennummer ein.',0
BUBBLE_03:
		dc.b 'Tragen Sie hier bitte Ihren persînlichen SchlÅssel fÅr diese ACS-Version ein.',0
BUBBLE_04:
		dc.b 'Geben Sie hier bitte den Namen Ihres Hilfe-Accessories an.',0
BUBBLE_05:
		dc.b 'Die Einstellungen werden sofort fÅr den nÑchsten ACS-Start gesichert.',0
BUBBLE_06:
		dc.b 'Tragen Sie hier bitte Ihren Namen ein.',0
BUBBLE_07:
		dc.b 'Hier wird festgelegt, ob Objekte bei Positions- oder GrîûenÑnderungen auf Zeichenpositionen einrasten sollen oder nicht.',0
BUBBLE_08:
		dc.b 'Hier wird festgelegt, ob beim Kopieren von ObjektbÑumen die Bezeichner der Indizes mitkopiert werden sollen.',0
BUBBLE_09:
		dc.b 'Hier wird eingestellt, ob Bild-Daten beim Kopieren innerhalb einer ACS-Datei kopiert oder nur referenziert werden sollen.',0
BUBBLE_10:
		dc.b 'Hier wird eingestellt, ob beim Verlassen des GUI-Editors die Konfigurationsdatei abgespeichert wird oder nicht.',0
BUBBLE_11:
		dc.b 'Hier wird eingestellt, ob beim Sichern die Editor-Fenster geîffnet bleiben sollen oder nicht (genauere Infos in der Online-Hilfe).',0
BUBBLE_12:
		dc.b 'Hier wird eingestellt, ob das Teile-Fenster mit allen zur VerfÅgung stehenden Objekten links neben dem Objekt-Editor mitgefÅhrt werden soll oder nicht.',0
BUBBLE_13:
		dc.b 'Hier wird der Rasterwert eingestellt, auf dessen Vielfaches bei Icon- und Bild-Operationen eingeschnappt werden soll.',0
DEMOT01:
		dc.b '*Willkommen beim ACSpro-GUI-Editor V3.0.0'
		dc.w $e100
DEMOT02:
		dc.b ' ',0
DEMOT03:
		dc.b 'Mit diesem Programm kînnen Sie',0
DEMOT04:
		dc.b 'sehr komfortabel, Ñuûerst intuitiv',0
DEMOT05:
		dc.b 'und Åbersichtlich die OberflÑche',0
DEMOT06:
		dc.b 'und die Routinen Ihrer Programme',0
DEMOT07:
		dc.b 'gestalten und entwickeln.',0
DEMOT08:
		dc.b 0
DEMOT09:
		dc.b 'Sie benutzen zur Zeit eine leicht',0
DEMOT10:
		dc.b 'eingeschrÑnkte Version, in der Sie',0
DEMOT11:
		dc.b 'alle Funktionen benutzen kînnen,',0
DEMOT12:
		dc.b 'allerdings kînnen in den Objektlisten',0
DEMOT13:
		dc.b 'nur maximal zwei Objekte angelegt werden.',0
DEMOT14:
		dc.b 0
DEMOT15:
		dc.b 'Mîchten Sie in den vollen Genuû',0
DEMOT16:
		dc.b 'des ACSpro-Paketes gelangen, so',0
DEMOT17:
		dc.b 'wenden Sie sich bitte an:',0
DEMOT18:
		dc.b 0
DEMOT19:
		dc.b '*Martin ElsÑsser',0
DEMOT20:
		dc.b '*GartenÑcker 30',0
DEMOT21:
		dc.b '*D - 86938 Schondorf a.A.',0
DEMOT22:
		dc.b 0
DEMOT23:
		dc.b 'oder alternativ per EMail:',0
DEMOT24:
		dc.b 0
DEMOT25:
		dc.b '*acspro@melsaesser.de',0
DEMOT26:
		dc.b 0
DEMOT27:
		dc.b 'Aktuelle Informationen zu ACSpro',0
DEMOT28:
		dc.b 'finden finden Sie im Internet unter:',0
DEMOT29:
		dc.b 0
DEMOT30:
		dc.b '*http://acspro.atari.org/',0
DEMOT31:
		dc.b 0
DEMOT32:
		dc.b 'Viel Spaû wÅnscht...   Martin ElsÑsser',0
STGUIDE_01:
		dc.b 'Die Einstellungen',0
TEXT_002:
		dc.b 0
TEXT_005:
		dc.b 'Sichern',0
TEXT_01:
		dc.b 'Bildraster:',0
TEXT_02:
		dc.b 'schnell sichern',0
TEXT_03:
		dc.b ' Einstellungen ',0
TEXT_04:
		dc.b '.ACC',0
TEXT_05:
		dc.b 'Hilfe:',0
TEXT_06:
		dc.b ' Information ',0
TEXT_07:
		dc.b 'Teilefenster mitfÅhren',0
TEXT_08:
		dc.b 'Registrierung:',0
TEXT_09:
		dc.b 'Name:',0
TEXT_10:
		dc.b 'Seriennummer:',0
TEXT_11:
		dc.b 'SchlÅssel:',0
TEXT_12:
		dc.b 'GUI-Editor:',0
TEXT_13:
		dc.b ' Information ',0
TEXT_14:
		dc.b 0
TEXT_15:
		dc.b 'Bitte lassen Sie sich fÅr ACSpro registrieren, daraufhin entfÑllt die lÑstige BeschrÑnkung auf zwei neue Objekte pro Objektliste.',0
TEXT_16:
		dc.b 'Registrierung sichern',0
TEXT_17:
		dc.b 'Name:',0
TEXT_18:
		dc.b 'Straûe:',0
TEXT_19:
		dc.b ' Ort:',0
TEXT_20:
		dc.b '   Land:',0
TEXT_21:
		dc.b 'Zahlunsart:',0
TEXT_218:
		dc.b 'Objekte einrasten',0
TEXT_22:
		dc.b 'ST-GUIDE',0
TEXT_220:
		dc.b 'Kopiere Index',0
TEXT_23:
		dc.b 'Vorname & Name',0
TEXT_24:
		dc.b 'Seriennummer',0
TEXT_25:
		dc.b 'SchlÅssel',0
TEXT_26:
		dc.b 'Nachnahme:',0
TEXT_260:
		dc.b 'Hier werden globale Einstellungen am ACS-Editor vorgenommen.',0
TEXT_265:
		dc.b 'Kopiere Bildteil',0
TEXT_27:
		dc.b 'innerhalb oder',0
TEXT_28:
		dc.b 'auûerhalb Deutschlands.',0
TEXT_29:
		dc.b 'OK',0
TEXT_30:
		dc.b 'EMail:',0
TEXT_31:
		dc.b 'Abbrechen',0
TEXT_32:
		dc.b 'Registrierdaten',0
TEXT_325:
		dc.b 'automatisch Sichern',0
TEXT_33:
		dc.b 'EINSTELLUNG',0
proto_winame:
		dc.b ' Hinweis ',0
rkind0:
		dc.b '  Scheck',0
rkind1:
		dc.b '  öberweisung',0
rkind2:
		dc.b '  Nachnahme',0
		dc.b 0
A_3DBUTTON01:
		dc.l A_3Dbutton
		dc.w 0x2011
		dc.w 0x9178
		dc.l Auo_string
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON02:
		dc.l A_3Dbutton
		dc.w 0x2021
		dc.w 0x9178
		dc.l Auo_string
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON03:
		dc.l A_3Dbutton
		dc.w 0x21f1
		dc.w 0x0178
		dc.l Auo_string
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON04:
		dc.l A_3Dbutton
		dc.w 0x29f1
		dc.w 0x01f8
		dc.l Auo_string
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON05:
		dc.l A_3Dbutton
		dc.w 0x29c1
		dc.w 0x0178
		dc.l Auo_string
		dc.l TEXT_005
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_05
		dc.w 0
		dc.w 0
A_3DBUTTON06:
		dc.l A_3Dbutton
		dc.w 0x29f1
		dc.w 0x0178
		dc.l Auo_string
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON07:
		dc.l A_3Dbutton
		dc.w 0x09f1
		dc.w 0x0178
		dc.l Auo_string
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON08:
		dc.l A_3Dbutton
		dc.w 0x2811
		dc.w 0x9170
		dc.l Auo_string
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON09:
		dc.l A_3Dbutton
		dc.w 0x29c1
		dc.w 0x0178
		dc.l Auo_string
		dc.l TEXT_16
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON10:
		dc.l A_3Dbutton
		dc.w 0x09f1
		dc.w 0x0178
		dc.l Auo_string
		dc.l rkind1
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON11:
		dc.l A_3Dbutton
		dc.w 0x09f1
		dc.w 0x0178
		dc.l Auo_string
		dc.l rkind0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON12:
		dc.l A_3Dbutton
		dc.w 0x09f1
		dc.w 0x0178
		dc.l Auo_string
		dc.l rkind2
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON13:
		dc.l A_3Dbutton
		dc.w 0x29f1
		dc.w 0x0178
		dc.l Auo_string
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON14:
		dc.l A_3Dbutton
		dc.w 0x29c1
		dc.w 0x0178
		dc.l Auo_string
		dc.l TEXT_29
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_3DBUTTON15:
		dc.l A_3Dbutton
		dc.w 0x29c1
		dc.w 0x0178
		dc.l Auo_string
		dc.l TEXT_31
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_ARROWS01:
		dc.l A_arrows
		dc.w 0xb101
		dc.w 0x0009
		dc.l Auo_string
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_BOXED01:
		dc.l A_boxed
		dc.w 0x8838
		dc.w 0x7f12
		dc.l Auo_boxed
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_01
		dc.w 0
		dc.w 0
A_BOXED02:
		dc.l A_boxed
		dc.w 0x9018
		dc.w 0x081a
		dc.l Auo_boxed
		dc.l TEXT_22
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_04
		dc.w 0
		dc.w 0
A_BOXED03:
		dc.l A_boxed
		dc.w 0x9070
		dc.w 0x0a12
		dc.l Auo_boxed
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_02
		dc.w 0
		dc.w 0
A_BOXED04:
		dc.l A_boxed
		dc.w 0x9040
		dc.w 0x0a1a
		dc.l Auo_boxed
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_03
		dc.w 0
		dc.w 0
A_BOXED05:
		dc.l A_boxed
		dc.w 0x9038
		dc.w 0x3c12
		dc.l Auo_boxed
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_BOXED06:
		dc.l A_boxed
		dc.w 0x9038
		dc.w 0xff12
		dc.l Auo_boxed
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_06
		dc.w 0
		dc.w 0
A_BOXED07:
		dc.l A_boxed
		dc.w 0x9038
		dc.w 0x0a12
		dc.l Auo_boxed
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_02
		dc.w 0
		dc.w 0
A_BOXED08:
		dc.l A_boxed
		dc.w 0x9038
		dc.w 0x0a12
		dc.l Auo_boxed
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_03
		dc.w 0
		dc.w 0
A_CHECKBOX01:
		dc.l A_checkbox
		dc.w 0
		dc.w 1
		dc.l Auo_string
		dc.l TEXT_218
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_07
		dc.w 0
		dc.w 0
A_CHECKBOX02:
		dc.l A_checkbox
		dc.w 0
		dc.w 1
		dc.l Auo_string
		dc.l TEXT_07
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_12
		dc.w 0
		dc.w 0
A_CHECKBOX03:
		dc.l A_checkbox
		dc.w 0
		dc.w 1
		dc.l Auo_string
		dc.l TEXT_220
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_08
		dc.w 0
		dc.w 0
A_CHECKBOX04:
		dc.l A_checkbox
		dc.w 0
		dc.w 1
		dc.l Auo_string
		dc.l TEXT_265
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_09
		dc.w 0
		dc.w 0
A_CHECKBOX05:
		dc.l A_checkbox
		dc.w 0
		dc.w 1
		dc.l Auo_string
		dc.l TEXT_325
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_10
		dc.w 0
		dc.w 0
A_CHECKBOX06:
		dc.l A_checkbox
		dc.w 0
		dc.w 1
		dc.l Auo_string
		dc.l TEXT_02
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_11
		dc.w 0
		dc.w 0
A_CHECKBOX07:
		dc.l A_checkbox
		dc.w 0
		dc.w 1
		dc.l Auo_string
		dc.l TEXT_27
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_CHECKBOX08:
		dc.l A_checkbox
		dc.w 0
		dc.w 1
		dc.l Auo_string
		dc.l TEXT_28
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_FTEXT01:
		dc.l A_ftext
		dc.w 1
		dc.w 0x010d
		dc.l Auo_ftext
		dc.l TEXT_15
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_FTEXT02:
		dc.l A_ftext
		dc.w 0x0001
		dc.w 0x000d
		dc.l Auo_ftext
		dc.l TEXT_260
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_INNERFRAME01:
		dc.l A_innerframe
		dc.w 0x1800
		dc.w 0x8f19
		dc.l Auo_string
		dc.l TEXT_01
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_INNERFRAME02:
		dc.l A_innerframe
		dc.w 0x1800
		dc.w 0x8f19
		dc.l Auo_string
		dc.l TEXT_12
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_INNERFRAME03:
		dc.l A_innerframe
		dc.w 0x1800
		dc.w 0x8f19
		dc.l Auo_string
		dc.l TEXT_08
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_INNERFRAME04:
		dc.l A_innerframe
		dc.w 0x1800
		dc.w 0x8f19
		dc.l Auo_string
		dc.l TEXT_05
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_INNERFRAME05:
		dc.l A_innerframe
		dc.w 0x1000
		dc.w 0x8f19
		dc.l Auo_string
		dc.l TEXT_26
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_INNERFRAME06:
		dc.l A_innerframe
		dc.w 0x1800
		dc.w 0x8f19
		dc.l Auo_string
		dc.l TEXT_32
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
A_SLIDER01:
		dc.l A_slider
		dc.w 0
		dc.w 0x0002
		dc.l Auo_slider
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.l BUBBLE_13
		dc.w 0
		dc.w 0
SCROLLDEMO02:
		dc.l ScrollDemo
		dc.w 0
		dc.w 0
		dc.l ScrollServ
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
_MSK_ICON_ADJUST:
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xfffc
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xfffe
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x7fff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x3fff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0
		dc.w 0
		dc.w 0
_DAT_ICON_ADJUST:
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xfffc
		dc.w 0x8000
		dc.w 0
		dc.w 0x0006
		dc.w 0x8000
		dc.w 0
		dc.w 0x0007
		dc.w 0x9fff
		dc.w 0xffff
		dc.w 0xffe7
		dc.w 0x9fff
		dc.w 0xffff
		dc.w 0xffe7
		dc.w 0x9800
		dc.w 0
		dc.w 0x0027
		dc.w 0x9800
		dc.w 0x00e0
		dc.w 0x0027
		dc.w 0x9842
		dc.w 0x11f0
		dc.w 0x8427
		dc.w 0x9842
		dc.w 0x11b0
		dc.w 0x8427
		dc.w 0x9842
		dc.w 0x11b0
		dc.w 0x8427
		dc.w 0x9800
		dc.w 0x01b0
		dc.w 0x0027
		dc.w 0x99ff
		dc.w 0xffbf
		dc.w 0xff27
		dc.w 0x9bff
		dc.w 0xffbf
		dc.w 0xffa7
		dc.w 0x9b00
		dc.w 0x01b8
		dc.w 0x01a7
		dc.w 0x9b00
		dc.w 0x01b8
		dc.w 0x01a7
		dc.w 0x9b00
		dc.w 0x01b8
		dc.w 0x01a7
		dc.w 0x99ff
		dc.w 0xffbf
		dc.w 0xff27
		dc.w 0x9800
		dc.w 0x01b0
		dc.w 0x0027
		dc.w 0x9842
		dc.w 0x11b0
		dc.w 0x8427
		dc.w 0x9842
		dc.w 0x11b0
		dc.w 0x8427
		dc.w 0x9842
		dc.w 0x11f0
		dc.w 0x8427
		dc.w 0x9800
		dc.w 0x00e0
		dc.w 0x0027
		dc.w 0x9800
		dc.w 0x0000
		dc.w 0x0027
		dc.w 0x9fff
		dc.w 0xffff
		dc.w 0xffe7
		dc.w 0x8000
		dc.w 0x0000
		dc.w 0x0007
		dc.w 0x8000
		dc.w 0x0000
		dc.w 0x0007
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x7fff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x3fff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
ICON_ADJUST:
		dc.l _MSK_ICON_ADJUST
		dc.l _DAT_ICON_ADJUST
		dc.l TEXT_33
		dc.w 0x1000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x000c
		dc.w 0x0000
		dc.w 0x0030
		dc.w 0x001e
		dc.w 0x0000
		dc.w 0x0020
		dc.w 0x0048
		dc.w 0x0008
		dc.w 0x0000
		dc.w 0x0000
P_REGISTER:
		dc.w 0xffff
		dc.w 0x0001
		dc.w 0x0003
		dc.w 0x0014
		dc.w 0x0000
		dc.w 0x0020
		dc.w 0x00ff
		dc.w 0x1100
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x000f
		dc.w 0x0003
_01_P_REGISTER:
		dc.w 0x0002
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0041
		dc.w 0x0000
		dc.l A_3DBUTTON11
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x000f
		dc.w 0x0001
_02_P_REGISTER:
		dc.w 0x0003
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0041
		dc.w 0x0000
		dc.l A_3DBUTTON10
		dc.w 0x0000
		dc.w 0x0001
		dc.w 0x000f
		dc.w 0x0001
_03_P_REGISTER:
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0061
		dc.w 0x0000
		dc.l A_3DBUTTON12
		dc.w 0x0000
		dc.w 0x0002
		dc.w 0x000f
		dc.w 0x0001
ACS_BASE:
		dc.w 0xffff
		dc.w 0x0001
		dc.w 0x001d
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0010
		dc.l A_3DBUTTON03
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x002c
		dc.w 0x000e
_01_ACS_BASE:
		dc.w 0x000a
		dc.w 0x0002
		dc.w 0x0009
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_INNERFRAME03
		dc.w 0x0001
		dc.w 0x0000
		dc.w 0x002a
		dc.w 0x0005
_02_ACS_BASE:
		dc.w 0x0003
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0040
		dc.w 0x0000
		dc.l TEXT_09
		dc.w 0x0009
		dc.w 0x0001
		dc.w 0x0005
		dc.w 0x0001
_03_ACS_BASE:
		dc.w 0x0008
		dc.w 0x0004
		dc.w 0x0004
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_3DBUTTON01
		dc.w 0x000f
		dc.w 0x0001
		dc.w 0x001a
		dc.w 0x0003
_04_ACS_BASE:
		dc.w 0x0003
		dc.w 0x0005
		dc.w 0x0007
		dc.w 0x0014
		dc.w 0x0040
		dc.w 0x0000
		dc.w 0x00ff
		dc.w 0x0101
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x001a
		dc.w 0x0003
_05_ACS_BASE:
		dc.w 0x0006
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0000
		dc.l A_BOXED01
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x001a
		dc.w 0x0001
_06_ACS_BASE:
		dc.w 0x0007
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0000
		dc.l A_BOXED03
		dc.w 0x0000
		dc.w 0x0001
		dc.w 0x000a
		dc.w 0x0001
_07_ACS_BASE:
		dc.w 0x0004
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0000
		dc.l A_BOXED04
		dc.w 0x0000
		dc.w 0x0002
		dc.w 0x000a
		dc.w 0x0001
_08_ACS_BASE:
		dc.w 0x0009
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0040
		dc.w 0x0000
		dc.l TEXT_10
		dc.w 0x0001
		dc.w 0x0002
		dc.w 0x000d
		dc.w 0x0001
_09_ACS_BASE:
		dc.w 0x0001
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0040
		dc.w 0x0000
		dc.l TEXT_11
		dc.w 0x0004
		dc.w 0x0003
		dc.w 0x000a
		dc.w 0x0001
_10_ACS_BASE:
		dc.w 0x0017
		dc.w 0x000b
		dc.w 0x0015
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_INNERFRAME02
		dc.w 0x0001
		dc.w 0x0005
		dc.w 0x001c
		dc.w 0x0008
_11_ACS_BASE:
		dc.w 0x000d
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_CHECKBOX01
		dc.w 0x0001
		dc.w 0x0001
		dc.w 0x0014
		dc.w 0x0001
_11aACS_BASE:
		dc.l ab_snap
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x884f
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_13_ACS_BASE:
		dc.w 0x000f
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_CHECKBOX03
		dc.w 0x0001
		dc.w 0x0002
		dc.w 0x0010
		dc.w 0x0001
_13aACS_BASE:
		dc.l ab_copyindex
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x8849
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_15_ACS_BASE:
		dc.w 0x0011
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_CHECKBOX04
		dc.w 0x0001
		dc.w 0x0003
		dc.w 0x0013
		dc.w 0x0001
_15aACS_BASE:
		dc.l ab_copyimage
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x8842
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_17_ACS_BASE:
		dc.w 0x0013
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0001
		dc.w 0x0000
		dc.l A_CHECKBOX05
		dc.w 0x0001
		dc.w 0x0004
		dc.w 0x0016
		dc.w 0x0001
_17aACS_BASE:
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x8841
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_19_ACS_BASE:
		dc.w 0x0015
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_CHECKBOX06
		dc.w 0x0001
		dc.w 0x0005
		dc.w 0x0012
		dc.w 0x0001
_19aACS_BASE:
		dc.l ab_dirty
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x884e
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_21_ACS_BASE:
		dc.w 0x000a
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_CHECKBOX02
		dc.w 0x0001
		dc.w 0x0006
		dc.w 0x0019
		dc.w 0x0001
_21aACS_BASE:
		dc.l ab_glue
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x884d
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_23_ACS_BASE:
		dc.w 0x001a
		dc.w 0x0018
		dc.w 0x0019
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_INNERFRAME04
		dc.w 0x001d
		dc.w 0x0005
		dc.w 0x000e
		dc.w 0x0003
_24_ACS_BASE:
		dc.w 0x0019
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0010
		dc.l A_BOXED02
		dc.w 0x0001
		dc.w 0x0001
		dc.w 0x0008
		dc.w 0x0001
_25_ACS_BASE:
		dc.w 0x0017
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0040
		dc.w 0x0000
		dc.l TEXT_04
		dc.w 0x0009
		dc.w 0x0001
		dc.w 0x0004
		dc.w 0x0001
_26_ACS_BASE:
		dc.w 0x001d
		dc.w 0x001b
		dc.w 0x001b
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_INNERFRAME01
		dc.w 0x001d
		dc.w 0x0008
		dc.w 0x000e
		dc.w 0x0003
_27_ACS_BASE:
		dc.w 0x001a
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_SLIDER01
		dc.w 0x0001
		dc.w 0x0001
		dc.w 0x000c
		dc.w 0x0001
_27aACS_BASE:
		dc.l Aus_slider
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_29_ACS_BASE:
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0007
		dc.w 0x0010
		dc.l A_3DBUTTON05
		dc.w 0x001e
		dc.w 0x000b
		dc.w 0x000c
		dc.w 0x0002
_29aACS_BASE:
		dc.l ab_save
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8020
		dc.w 0x8853
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
ACS_DEMO:
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0042
		dc.w 0x0000
		dc.l SCROLLDEMO02
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0024
		dc.w 0x0009
_00aACS_DEMO:
		dc.l acs_register
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8020
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
ACS_RegisterObj:
		dc.w 0xffff
		dc.w 0x0001
		dc.w 0x000a
		dc.w 0x0018
		dc.w 0x0000
		dc.w 0x0000
		dc.l A_3DBUTTON13
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0024
		dc.w 0x000a
_01_ACS_RegisterObj:
		dc.w 0x0008
		dc.w 0x0002
		dc.w 0x0007
		dc.w 0x0018
		dc.w 0x0000
		dc.w 0x0000
		dc.l A_INNERFRAME06
		dc.w 0x0001
		dc.w 0x0000
		dc.w 0x0022
		dc.w 0x0007
_02_ACS_RegisterObj:
		dc.w 0x0003
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0000
		dc.w 0x0000
		dc.l TEXT_23
		dc.w 0x0001
		dc.w 0x0001
		dc.w 0x000e
		dc.w 0x0001
_03_ACS_RegisterObj:
		dc.w 0x0004
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0010
		dc.l A_BOXED06
		dc.w 0x0011
		dc.w 0x0001
		dc.w 0x000e
		dc.w 0x0001
_04_ACS_RegisterObj:
		dc.w 0x0005
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0000
		dc.w 0x0000
		dc.l TEXT_24
		dc.w 0x0001
		dc.w 0x0003
		dc.w 0x000c
		dc.w 0x0001
_05_ACS_RegisterObj:
		dc.w 0x0006
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0010
		dc.l A_BOXED07
		dc.w 0x0011
		dc.w 0x0003
		dc.w 0x000a
		dc.w 0x0001
_06_ACS_RegisterObj:
		dc.w 0x0007
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0010
		dc.l A_BOXED08
		dc.w 0x0011
		dc.w 0x0005
		dc.w 0x000a
		dc.w 0x0001
_07_ACS_RegisterObj:
		dc.w 0x0001
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0000
		dc.w 0x0000
		dc.l TEXT_25
		dc.w 0x0001
		dc.w 0x0005
		dc.w 0x0009
		dc.w 0x0001
_08_ACS_RegisterObj:
		dc.w 0x000a
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x4007
		dc.w 0x0000
		dc.l A_3DBUTTON14
		dc.w 0x0004
		dc.w 0x0007
		dc.w 0x000b
		dc.w 0x0002
_08aACS_RegisterObj:
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x884f
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_10_ACS_RegisterObj:
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x4005
		dc.w 0x0000
		dc.l A_3DBUTTON15
		dc.w 0x0014
		dc.w 0x0007
		dc.w 0x000b
		dc.w 0x0002
_10aACS_RegisterObj:
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8020
		dc.w 0x8841
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
D_REGISTER:
		dc.w 0xffff
		dc.w 0x0001
		dc.w 0x0018
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_3DBUTTON06
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0028
		dc.w 0x0012
_01_D_REGISTER:
		dc.w 0x0002
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_FTEXT01
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0028
		dc.w 0x0004
_02_D_REGISTER:
		dc.w 0x0003
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_ARROWS01
		dc.w 0x0000
		dc.w 0x0004
		dc.w 0x0028
		dc.w 0x0001
_03_D_REGISTER:
		dc.w 0x0004
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0040
		dc.w 0x0000
		dc.l TEXT_18
		dc.w 0x0001
		dc.w 0x0805
		dc.w 0x0007
		dc.w 0x0001
_04_D_REGISTER:
		dc.w 0x0005
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0040
		dc.w 0x0000
		dc.l TEXT_30
		dc.w 0x0002
		dc.w 0x0808
		dc.w 0x0006
		dc.w 0x0001
_05_D_REGISTER:
		dc.w 0x0006
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0040
		dc.w 0x0000
		dc.l TEXT_17
		dc.w 0x0003
		dc.w 0x0804
		dc.w 0x0005
		dc.w 0x0001
_06_D_REGISTER:
		dc.w 0x0007
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0040
		dc.w 0x0000
		dc.l TEXT_20
		dc.w 0x0000
		dc.w 0x0807
		dc.w 0x0008
		dc.w 0x0001
_07_D_REGISTER:
		dc.w 0x0008
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0040
		dc.w 0x0000
		dc.l TEXT_21
		dc.w 0x0006
		dc.w 0x000a
		dc.w 0x000b
		dc.w 0x0001
_08_D_REGISTER:
		dc.w 0x000d
		dc.w 0x0009
		dc.w 0x000b
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_INNERFRAME05
		dc.w 0x0006
		dc.w 0x000b
		dc.w 0x001c
		dc.w 0x0004
_09_D_REGISTER:
		dc.w 0x000b
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0011
		dc.w 0x0001
		dc.l A_CHECKBOX07
		dc.w 0x0001
		dc.w 0x0001
		dc.w 0x0011
		dc.w 0x0001
_09aD_REGISTER:
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x8849
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_11_D_REGISTER:
		dc.w 0x0008
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0011
		dc.w 0x0000
		dc.l A_CHECKBOX08
		dc.w 0x0001
		dc.w 0x0002
		dc.w 0x001a
		dc.w 0x0001
_11aD_REGISTER:
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x8841
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_13_D_REGISTER:
		dc.w 0x000f
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0005
		dc.w 0x0000
		dc.l A_3DBUTTON09
		dc.w 0x0006
		dc.w 0x000f
		dc.w 0x001c
		dc.w 0x0002
_13aD_REGISTER:
		dc.l reg_me
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x8852
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_15_D_REGISTER:
		dc.w 0x0015
		dc.w 0x0010
		dc.w 0x0014
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_3DBUTTON08
		dc.w 0x0009
		dc.w 0x0804
		dc.w 0x001e
		dc.w 0x0005
_16_D_REGISTER:
		dc.w 0x0011
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0000
		dc.l A_BOXED05
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x001e
		dc.w 0x0001
_17_D_REGISTER:
		dc.w 0x0012
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0000
		dc.l A_BOXED05
		dc.w 0x0000
		dc.w 0x0001
		dc.w 0x001e
		dc.w 0x0001
_18_D_REGISTER:
		dc.w 0x0013
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0000
		dc.l A_BOXED05
		dc.w 0x0000
		dc.w 0x0002
		dc.w 0x001e
		dc.w 0x0001
_19_D_REGISTER:
		dc.w 0x0014
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0000
		dc.l A_BOXED05
		dc.w 0x0000
		dc.w 0x0003
		dc.w 0x001e
		dc.w 0x0001
_20_D_REGISTER:
		dc.w 0x000f
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0008
		dc.w 0x0000
		dc.l A_BOXED05
		dc.w 0x0000
		dc.w 0x0004
		dc.w 0x001e
		dc.w 0x0001
_21_D_REGISTER:
		dc.w 0x0018
		dc.w 0x0017
		dc.w 0x0017
		dc.w 0x0014
		dc.w 0x0040
		dc.w 0x0020
		dc.w 0x00ff
		dc.w 0x1101
		dc.w 0x0012
		dc.w 0x000a
		dc.w 0x000f
		dc.w 0x0001
_21aD_REGISTER:
		dc.l reg_kind
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x8000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
_23_D_REGISTER:
		dc.w 0x0015
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0000
		dc.w 0x0000
		dc.l A_3DBUTTON07
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x000f
		dc.w 0x0001
_24_D_REGISTER:
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x001c
		dc.w 0x0060
		dc.w 0x0000
		dc.l TEXT_19
		dc.w 0x0003
		dc.w 0x0806
		dc.w 0x0005
		dc.w 0x0001
INFO_BASE:
		dc.w 0xffff
		dc.w 0x0001
		dc.w 0x0001
		dc.w 0x0019
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x00ff
		dc.w 0x1178
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x001c
		dc.w 0x0005
_01_INFO_BASE:
		dc.w 0x0000
		dc.w 0x0002
		dc.w 0x0002
		dc.w 0x0018
		dc.w 0x0007
		dc.w 0x0010
		dc.l A_3DBUTTON04
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x001c
		dc.w 0x0005
_02_INFO_BASE:
		dc.w 0x0001
		dc.w 0x0003
		dc.w 0x0003
		dc.w 0x0018
		dc.w 0x0040
		dc.w 0x0000
		dc.l A_3DBUTTON02
		dc.w 0x0002
		dc.w 0x0001
		dc.w 0x0018
		dc.w 0x0003
_03_INFO_BASE:
		dc.w 0x0002
		dc.w 0x0004
		dc.w 0x0004
		dc.w 0x0014
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x1101
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0018
		dc.w 0x0003
_04_INFO_BASE:
		dc.w 0x0003
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0018
		dc.w 0x0860
		dc.w 0x0000
		dc.l A_FTEXT02
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0018
		dc.w 0x0003

	.globl WI_COMMON
WI_COMMON:
		dc.l 0
		dc.l ab_service
		dc.l ab_make
		dc.l Awi_open
		dc.l Awi_init
		dc.l ACS_BASE
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0xffff
		dc.w 0x600b
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0063
		dc.w 0x0063
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xfcf8
		dc.l TEXT_03
		dc.l TEXT_002
		dc.w 0x2710
		dc.w 0x0103
		dc.w 0x0000
		dc.w 0xffff
		dc.l ICON_ADJUST
		dc.w 0x0000
		dc.w 0x0000
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
		dc.l STGUIDE_01
		dc.l 0

	.globl WI_DEMO
WI_DEMO:
		dc.l 0
		dc.l demo_serv
		dc.l Awi_selfcreate
		dc.l Awi_open
		dc.l demo_init
		dc.l ACS_DEMO
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0xffff
		dc.w 0x000b
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0078
		dc.w 0x0032
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xf8f8
		dc.l TEXT_13
		dc.l TEXT_14
		dc.w 0x0000
		dc.w 0x0100
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
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
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000

	.globl WI_INFO_BASE
WI_INFO_BASE:
		dc.l 0
		dc.l Awi_service
		dc.l Awi_selfcreate
		dc.l Awi_open
		dc.l Awi_init
		dc.l INFO_BASE
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0x000b
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0078
		dc.w 0x0032
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xf8f8
		dc.l TEXT_06
		dc.l TEXT_002
		dc.w 0x2710
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
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
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000

	.globl WI_REGISTER
WI_REGISTER:
		dc.l 0
		dc.l Awi_service
		dc.l Awi_selfcreate
		dc.l Awi_open
		dc.l Awi_init
		dc.l D_REGISTER
		dc.w 0
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0x400b
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0078
		dc.w 0x0032
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0xffff
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0xf8f8
		dc.l proto_winame
		dc.l TEXT_002
		dc.w 0x0000
		dc.w 0x0100
		dc.w 0x0000
		dc.w 0xffff
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
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
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000
		dc.w 0x0000

demotext:
		dc.l DEMOT01
		dc.l DEMOT02
		dc.l DEMOT03
		dc.l DEMOT04
		dc.l DEMOT05
		dc.l DEMOT06
		dc.l DEMOT07
		dc.l DEMOT08
		dc.l DEMOT09
		dc.l DEMOT10
		dc.l DEMOT11
		dc.l DEMOT12
		dc.l DEMOT13
		dc.l DEMOT14
		dc.l DEMOT15
		dc.l DEMOT16
		dc.l DEMOT17
		dc.l DEMOT18
		dc.l DEMOT19
		dc.l DEMOT20
		dc.l DEMOT21
		dc.l DEMOT22
		dc.l DEMOT23
		dc.l DEMOT24
		dc.l DEMOT25
		dc.l DEMOT26
		dc.l DEMOT27
		dc.l DEMOT28
		dc.l DEMOT29
		dc.l DEMOT30
		dc.l DEMOT31
		dc.l DEMOT32
x79ea8:
		dc.l rkind0
		dc.l rkind1
		dc.l rkind2

x79eb4:                          dc.b 0x00
x79eb5:                          dc.b $09,'An',0
x79eb9:                          dc.b $09,'Martin ElsÑsser',0
x79eca:                          dc.b $09,'GartenÑcker 30',0
x79eda:                          dc.b $09,'D - 86938 Schondorf a.A.',0
x79ef4:                           dc.b $09,'Registrierung von ACSpro',0
x79f0e:                           dc.b $09,'Hiermit beantrage ich die Registrierung von ACSpro Version ##### mit',0
x79f54:                           dc.b $09,'folgenden Daten:',0
x79f66:                           dc.b $09,'  Name: 123456789012345678901234567890123456789012345678901234567890',0
x79fac:                           dc.b $09,'Straûe: 123456789012345678901234567890123456789012345678901234567890',0
x79ff2:                           dc.b $09,'   Ort: 123456789012345678901234567890123456789012345678901234567890',0
x7a038:                           dc.b $09,'  Land: 123456789012345678901234567890123456789012345678901234567890',0
x7a07e:                           dc.b $09,' EMail: 123456789012345678901234567890123456789012345678901234567890',0
x7a0c4:                           dc.b $09,'Die Zahlung erfolgt per beiliegendem Scheck Åber 50,- EUR.',0
x7a100:                           dc.b $09,'Den Betrag von 50,- EUR Åberweise ich vorab - unter Angabe obigen Namens -',0
x7a14c:                           dc.b $09,'auf das Konto:',0
x7a15c:                           dc.b $09,$09,'Martin ElsÑsser',0
x7a16e:                           dc.b $09,$09,'Postbank MÅnchen',0
x7a181:                           dc.b $09,$09,'Kto: 1196 34 - 804',0
x7a196:                           dc.b $09,$09,'BLZ: 700 100 80',0
x7a1a8:                           dc.b $09,'Ich zahle den Betrag von 53,- DM per Inland-Nachnahme.',0
x7a1e0:                           dc.b $09,'Ich zahle den Betrag von 63,- DM per Ausland-Nachnahme.',0
x7a219:                           dc.b $09,'Durch Angabe meiner EMail-Adresse erhalte ich die Registrierdaten',0
x7a25c:                           dc.b $09,'an meine oben angegebenen EMail-Adresse gesendet.',0
x7a28f:                           dc.b $09,'Datum:',0
x7a297:                           dc.b $09,'Unterschrift:',0
x7a2a6:                           dc.b 'AC'
x7a2a8:                           dc.b 'S',0
x7a2aa:                           dc.w $2564
x7a2ac:                           dc.b $00
x7a2ad:                           dc.b $43
x7a2ae:                           dc.b $00
x7a2af:                           dc.b 'PAS',0
x7a2b3:                           dc.b 'ACS',0
x7a2b7:                           dc.b '%s',$0d,$0a,0
x7a2bc:                           dc.b 'register.txt',0
x7a2c9:                           dc.b 'Textname',0
x7a2d2:                           dc.b '%s.%s.%s',0
x7a2db:                           dc.b $33
x7a2dc:                           dc.b $00
x7a2dd:                           dc.b '%-60s',$0d,$0a,0
x7a2e5:                           dc.b 'Plattform: ',0
x7a2f1:                           dc.b ' Programm: ',0
x7a2fd:                           dc.b ' Version ',0
x7a307:                           dc.b ' Seriennummer: ',0
x7a317:                           dc.b ' UserName: ',0
x7a323:                           dc.b '          ',0
x7a32e:                           dc.b '00121',0
x7a334:                           dc.b 'Atari ST',0
x7a33d:                           dc.b $78
x7a33e:                           dc.b $00
x7a33f:                           dc.b 'TIMES',0
x7a345:                           dc.b 'DUTCH',0
		.even

	.bss

oldabout: ds.l 1
timer0: ds.l 1
timer1: ds.l 1

	.globl cews
cews: ds.b 2116

	.globl base_window
base_window: ds.l 1
