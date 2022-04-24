		.include "country.inc"

		.text

editref_abort:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        term
		rts

editref_ok:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        acc_eref
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        term
		rts

acc_eref:
		movem.l    a2-a4,-(a7)
		lea.l      -12(a7),a7
		movea.l    (a0),a1
		movea.l    (a1),a2
		ori.w      #$0001,6(a2)
		movea.l    20(a0),a2
		lea.l      336(a2),a2
		move.l     a2,4(a7)
		movea.l    4(a1),a3
		move.w     56(a3),d0
		move.w     d0,d1
		and.w      #$FD00,d1
		move.w     #$00FF,d2
		and.w      14(a2),d2
		or.w       d2,d1
		move.w     d1,56(a3)
		moveq.l    #1,d0
		movea.l    20(a0),a2
		and.w      82(a2),d0
		beq.s      acc_eref_1
		ori.w      #$0200,56(a3)
acc_eref_1:
		movea.l    8(a1),a2
		move.l     a2,d0
		beq.w      acc_eref_2
		lea.l      8(a7),a1
		movea.l    a2,a0
		movea.l    4(a2),a4
		move.w     #$00CF,d0
		jsr        (a4)
		move.l     8(a7),d0
		ble.s      acc_eref_3
		moveq.l    #1,d0
		add.l      8(a7),d0
		jsr        Ax_malloc
		move.l     a0,(a7)
		move.l     a0,d0
		beq.s      acc_eref_2
		movea.l    4(a3),a0
		jsr        Ax_ifree
		movea.l    (a7),a1
		move.w     #$00CE,d0
		movea.l    a2,a0
		movea.l    4(a2),a4
		jsr        (a4)
		move.l     (a7),4(a3)
		moveq.l    #1,d0
		add.l      8(a7),d0
		move.l     d0,14(a3)
		move.l     d0,10(a3)
		suba.l     a1,a1
		movea.l    a2,a0
		movea.l    4(a2),a4
		move.w     #$00D3,d0
		jsr        (a4)
		bra.s      acc_eref_2
acc_eref_3:
		movea.l    4(a3),a0
		jsr        Ax_ifree
		clr.l      4(a3)
		moveq.l    #0,d0
		move.l     d0,14(a3)
		move.l     d0,10(a3)
acc_eref_2:
		lea.l      12(a7),a7
		movem.l    (a7)+,a2-a4
		rts

rf_make:
		movem.l    a2-a4,-(a7)
		subq.w     #4,a7
		move.l     a0,(a7)
		movea.l    4(a0),a3
		movea.l    18(a3),a4
		move.l     a4,d0
		beq.s      rf_make_1
		movea.l    a4,a0
		jsr        Awi_show
		bra        rf_make_2
rf_make_1:
		moveq.l    #12,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq        rf_make_3
		movea.l    (a7),a1
		move.l     (a1),(a0)
		move.l     4(a1),4(a2)
		clr.l      8(a2)
		lea.l      22(a3),a0
		move.l     a0,WI_REF+78
		movea.l    WI_REF+90,a1
		move.l     a0,8(a1)
		lea.l      WI_REF,a0
		jsr        Awi_create
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      rf_make_4
		movea.l    a2,a0
		jsr        Ax_free
		bra.s      rf_make_3
rf_make_4:
		movea.l    (a7),a0
		movea.l    (a0),a1
		pea.l      360(a1)
		lea.l      58(a3),a1
		movea.l    a4,a0
		jsr        wi_pos
		addq.w     #4,a7
		move.l     a2,(a4)
		move.l     a4,18(a3)
		movea.l    a4,a0
		jsr        set_eref
		move.l     14(a3),d0
		ble.s      rf_make_5
		move.w     56(a3),d1
		and.w      #$0200,d1
		bne.s      rf_make_5
		movea.l    a4,a0
		jsr        ref_edit
		bra.s      rf_make_2
rf_make_5:
		movea.l    a4,a0
		movea.l    12(a4),a1
		jsr        (a1)
		tst.w      d0
		beq.s      rf_make_2
		movea.l    a4,a0
		jsr        term
rf_make_3:
		suba.l     a0,a0
		bra.s      rf_make_6
rf_make_2:
		movea.l    a4,a0
rf_make_6:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a4
		rts

rf_service:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		movea.l    a1,a4
		movea.l    (a0),a3
		subq.w     #2,d0
		beq.s      rf_service_1
		sub.w      #$00CF,d0
		beq.s      rf_service_2
		subq.w     #1,d0
		beq.s      rf_service_1
		sub.w      #$263E,d0
		beq.s      rf_service_3
		bra.s      rf_service_4
rf_service_1:
		movea.l    a2,a0
		bsr        acc_eref
rf_service_2:
		movea.l    a2,a0
		jsr        term
		bra.s      rf_service_5
rf_service_3:
		movea.l    4(a3),a1
		movea.l    a2,a0
		jsr        new_name
		bra.s      rf_service_5
rf_service_4:
		movea.l    a4,a1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Awi_service
		bra.s      rf_service_6
rf_service_5:
		moveq.l    #1,d0
rf_service_6:
		movem.l    (a7)+,d3/a2-a4
		rts

set_type:
		movem.l    d3/a2-a4,-(a7)
		lea.l      -50(a7),a7
		movea.l    a0,a4
		movea.l    a1,a2
		move.w     d0,d3
		lea.l      (a7),a1
		movea.l    a2,a0
		jsr        Aob_gettext
		lea.l      (a7),a3
		bra.s      set_type_1
set_type_2:
		addq.w     #1,a3
set_type_1:
		cmpi.b     #$20,(a3)
		beq.s      set_type_2
		movea.l    a3,a1
		moveq.l    #13,d0
		movea.l    a4,a0
		jsr        Aob_puttext
		lea.l      336(a4),a4
		move.w     d3,d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		lea.l      24(a2,d0.l),a0
		move.l     12(a0),12(a4)
		lea.l      50(a7),a7
		movem.l    (a7)+,d3/a2-a4
		rts

editref_choose:
		movem.l    d3/a2-a3,-(a7)
		lea.l      REF_TYPE,a2
		lea.l      ACSblk,a3
		moveq.l    #-1,d1
		moveq.l    #-1,d0
		movea.l    a2,a1
		movea.l    (a3),a0
		movea.l    600(a0),a0
		jsr        Ame_popup
		move.w     d0,d3
		tst.w      d0
		bmi.s      editref_choose_1
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		lea.l      24(a2,d1.l),a0
		cmp.w      #$0001,d3
		beq.s      editref_choose_2
		move.w     8(a0),d2
		and.w      #$8000,d2
		beq.s      editref_choose_1
		move.w     14(a0),d1
		beq.s      editref_choose_1
editref_choose_2:
		move.w     d3,d0
		movea.l    a2,a1
		movea.l    (a3),a0
		movea.l    604(a0),a0
		bsr        set_type
		moveq.l    #-1,d1
		moveq.l    #13,d0
		movea.l    (a3),a0
		movea.l    600(a0),a0
		movea.l    (a3),a1
		movea.l    600(a1),a2
		movea.l    102(a2),a1
		jsr        (a1)
editref_choose_1:
		movem.l    (a7)+,d3/a2-a3
		rts

set_eref:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		movea.l    (a0),a3
		movea.l    4(a3),a1
		move.w     56(a1),d3
		and.w      #$00FF,d3
		tst.w      d3
		bmi.s      set_eref_1
		cmp.w      cross_type_anz,d3
		blt.s      set_eref_2
set_eref_1:
		clr.w      d3
set_eref_2:
		move.w     d3,d1
		add.w      d1,d1
		lea.l      cross_type,a0
		move.w     0(a0,d1.w),d0
		lea.l      REF_TYPE,a1
		movea.l    20(a2),a0
		bsr        set_type
		movea.l    20(a2),a0
		lea.l      72(a0),a0
		movea.l    4(a3),a1
		move.w     56(a1),d0
		and.w      #$0200,d0
		jsr        set_flag
		movem.l    (a7)+,d3/a2-a3
		rts

term:
		movem.l    a2-a5,-(a7)
		movea.l    a0,a2
		move.w     86(a2),d0
		and.w      #$0200,d0
		bne        term_1
		ori.w      #$0300,86(a2)
		movea.l    (a0),a3
		movea.l    8(a3),a4
		move.l     a4,d0
		beq.s      term_2
		suba.l     a1,a1
		movea.l    4(a4),a5
		movea.l    a4,a0
		move.w     #$00D3,d0
		jsr        (a5)
		suba.l     a1,a1
		move.w     #$00D0,d0
		movea.l    a4,a0
		movea.l    4(a4),a5
		jsr        (a5)
		suba.l     a1,a1
		moveq.l    #2,d0
		movea.l    a4,a0
		movea.l    4(a4),a5
		jsr        (a5)
term_2:
		movea.l    4(a3),a0
		clr.l      18(a0)
		move.w     86(a2),d0
		and.w      #$0800,d0
		beq.s      term_3
		lea.l      44(a2),a1
		movea.l    4(a3),a0
		lea.l      58(a0),a0
		moveq.l    #8,d0
		jsr        memcpy
		bra.s      term_4
term_3:
		moveq.l    #8,d0
		lea.l      36(a2),a1
		movea.l    4(a3),a0
		lea.l      58(a0),a0
		jsr        memcpy
term_4:
		movea.l    a3,a0
		jsr        Ax_free
		movea.l    a2,a0
		jsr        Awi_delete
term_1:
		movem.l    (a7)+,a2-a5
		rts

ref_edit:
		movem.l    d3/a2-a6,-(a7)
		lea.l      -1100(a7),a7
		move.l     a0,1096(a7)
		movea.l    (a0),a2
		movea.l    8(a2),a3
		move.l     a3,d0
		bne        ref_edit_1
		movea.l    4(a2),a4
		lea.l      22(a4),a1
		move.l     a1,1088(a7)
		movea.l    EDITOR+8,a1
		suba.l     a0,a0
		jsr        (a1)
		movea.l    a0,a3
		move.l     a0,8(a2)
		movea.l    1096(a7),a1
		move.w     #$00D0,d0
		movea.l    4(a3),a5
		movea.l    a3,a0
		jsr        (a5)
		lea.l      1024(a7),a5
		lea.l      xa070b,a1
		move.l     a1,-(a7)
		lea.l      xa0709,a1
		movea.l    a5,a0
		jsr        strcpy
		movea.l    1092(a7),a1
		jsr        strcat
		movea.l    (a7)+,a1
		jsr        strcat
		movea.l    a5,a1
		move.w     #$00CB,d0
		movea.l    a3,a0
		movea.l    4(a3),a6
		jsr        (a6)
		lea.l      xa070b,a1
		move.l     a1,-(a7)
		lea.l      xa0713,a1
		movea.l    a5,a0
		jsr        strcpy
		movea.l    1092(a7),a1
		jsr        strcat
		movea.l    (a7)+,a1
		jsr        strcat
		movea.l    a5,a1
		move.w     #$00CC,d0
		movea.l    a3,a0
		movea.l    4(a3),a6
		jsr        (a6)
		movea.l    1088(a7),a1
		move.w     #$00D5,d0
		movea.l    a3,a0
		movea.l    4(a3),a5
		jsr        (a5)
		lea.l      xa0717,a1
		move.w     #$00C9,d0
		movea.l    a3,a0
		movea.l    4(a3),a5
		jsr        (a5)
		move.l     14(a4),d0
		ble.s      ref_edit_2
		movea.l    4(a4),a1
		movea.l    a3,a0
		movea.l    4(a3),a5
		move.w     #$00CD,d0
		jsr        (a5)
		bra        ref_edit_3
ref_edit_2:
		movea.l    (a2),a0
		move.w     526(a0),d0
		tst.w      d0
		beq.s      ref_edit_4
		subq.w     #1,d0
		beq.s      ref_edit_5
		bra.s      ref_edit_6
ref_edit_4:
		move.w     56(a4),d0
		and.w      #$0500,d0
		cmp.w      #$0100,d0
		beq.s      ref_edit_7
		lea.l      xa0719,a1
		movea.l    a3,a0
		movea.l    4(a3),a2
		move.w     #$00CD,d0
		jsr        (a2)
ref_edit_7:
		lea.l      c_type,a5
		bra.s      ref_edit_6
ref_edit_5:
		lea.l      p_type,a5
ref_edit_6:
		movea.l    ACSblk,a0
		movea.l    604(a0),a1
		lea.l      336(a1),a1
		move.l     a1,1092(a7)
		move.w     14(a1),d3
		pea.l      22(a4)
		pea.l      22(a4)
		pea.l      22(a4)
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a5,d0.l),a1
		lea.l      12(a7),a0
		jsr        sprintf
		lea.l      12(a7),a7
		lea.l      (a7),a1
		move.w     #$00CD,d0
		movea.l    a3,a0
		movea.l    4(a3),a2
		jsr        (a2)
ref_edit_3:
		suba.l     a1,a1
		move.w     #$00D4,d0
		movea.l    a3,a0
		movea.l    4(a3),a2
		jsr        (a2)
		suba.l     a1,a1
		move.w     #$00D3,d0
		movea.l    a3,a0
		movea.l    4(a3),a2
		jsr        (a2)
ref_edit_1:
		movea.l    a3,a0
		jsr        Awi_show
		lea.l      1100(a7),a7
		movem.l    (a7)+,d3/a2-a6
		rts

editref_edit:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		bsr        ref_edit
		rts

	.data

		.IFEQ COUNTRY-COUNTRY_DE
BUBBLE_01:
		dc.b 'Die �nderungen werden �bernommen.',0
BUBBLE_02:
		dc.b 'Die �nderungen werden verworfen.',0
BUBBLE_03:
		dc.b 'Der Editor wird aufgerufen, um die Routine zu bearbeiten.',0
BUBBLE_04:
		dc.b 'Die Routine wird extern definiert, also u.U. in einem anderen Modul.',0
BUBBLE_05:
		dc.b 'In diesem Popup wird der Typ der Routine angegeben.',0
TEXT_002:
		dc.b $00
TEXT_003:
		dc.b 'OK',0
TEXT_004:
		dc.b 'Abbruch',0
TEXT_01:
		dc.b ' Closed',0
TEXT_02:
		dc.b 'Typ:',0
TEXT_03:
		dc.b 'GEMScript',0
TEXT_04:
		dc.b '  Iconify',0
TEXT_05:
		dc.b ' Fulled',0
TEXT_06:
		dc.b ' Arrowed',0
TEXT_07:
		dc.b ' Hslid',0
TEXT_08:
		dc.b ' Vslid',0
TEXT_09:
		dc.b ' Moved',0
TEXT_10:
		dc.b ' Sized',0
TEXT_11:
		dc.b ' Referenz-Editor ',0
TEXT_12:
		dc.b '  Uniconify',0
TEXT_13:
		dc.b '  GEMScript',0
TEXT_14:
		dc.b 'Edit',0
TEXT_15:
		dc.b 'extern',0
TEXT_16:
		dc.b 'REFERENZ',0
TEXT_17:
		dc.b '  Objekt   ',3,0
TEXT_174:
		dc.b '  UOservice',0
TEXT_18:
		dc.b '  Userdef  ',3,0
TEXT_19:
		dc.b '  kein Typ',0
TEXT_20:
		dc.b '  Fenster  ',3,0
TEXT_21:
		dc.b '  DrawCode',0
TEXT_22:
		dc.b '  UO-Service',0
TEXT_23:
		dc.b '  Closed',0
TEXT_24:
		dc.b '  System   ',3,0
TEXT_25:
		dc.b '  Fulled',0
TEXT_26:
		dc.b '  Arrowed',0
TEXT_27:
		dc.b '  V-Slide',0
TEXT_28:
		dc.b '  Change',0
TEXT_29:
		dc.b '  Moved',0
TEXT_30:
		dc.b '  Sized',0
TEXT_31:
		dc.b '  H-Slide',0
TEXT_32:
		dc.b '  ACSinit',0
TEXT_33:
		dc.b '  ACSmessage',0
TEXT_34:
		dc.b '  ACSkey',0
TEXT_35:
		dc.b '  ACSbutton',0
TEXT_357:
		dc.b '  Drag',0
TEXT_358:
		dc.b '  Keys',0
TEXT_359:
		dc.b '  Service',0
TEXT_36:
		dc.b '  ACSGEMScript',0
TEXT_360:
		dc.b '  Create',0
TEXT_364:
		dc.b '  Click',0
TEXT_365:
		dc.b '  Open',0
TEXT_366:
		dc.b '  Topped',0
TEXT_367:
		dc.b '  Userdef',0
TEXT_37:
		dc.b '  ACSinit0',0
TEXT_370:
		dc.b '  Init',0
TEXT_371:
		dc.b '  Changed',0
TEXT_372:
		dc.b '  Redraw',0
TEXT_38:
		dc.b '  ACSterm',0
TEXT_39:
		dc.b '  ACSaboutme',0
TEXT_40:
		dc.b '  ACSclose',0
TEXT_41:
		dc.b '  ACSmproto',0
TEXT_42:
		dc.b '  ACStimer',0
TEXT_43:
		dc.b '  ACSmouse',0
TEXT_44:
		dc.b '  ACSwikey',0
		.ENDC

		.IFEQ COUNTRY-COUNTRY_US
BUBBLE_01:
		dc.b 'The changes are accepted.',0
BUBBLE_02:
		dc.b 'The changes are ignored.',0
BUBBLE_03:
		dc.b 'The editor is called to change the function.',0
BUBBLE_04:
		dc.b 'The function is defined extern, i.e. in another module.',0
BUBBLE_05:
		dc.b 'In this popup you choose the type of the function.',0
TEXT_002:
		dc.b $00
TEXT_003:
		dc.b 'OK',0
TEXT_004:
		dc.b 'Cancel',0
TEXT_01:
		dc.b ' Closed',0
TEXT_02:
		dc.b 'Type:',0
TEXT_03:
		dc.b 'GEMScript',0
TEXT_04:
		dc.b '  Iconify',0
TEXT_05:
		dc.b ' Fulled',0
TEXT_06:
		dc.b ' Arrowed',0
TEXT_07:
		dc.b ' Hslid',0
TEXT_08:
		dc.b ' Vslid',0
TEXT_09:
		dc.b ' Moved',0
TEXT_10:
		dc.b ' Sized',0
TEXT_11:
		dc.b ' Reference-Editor ',0
TEXT_12:
		dc.b '  Uniconify',0
TEXT_13:
		dc.b '  GEMScript',0
TEXT_14:
		dc.b 'Edit',0
TEXT_15:
		dc.b 'extern',0
TEXT_16:
		dc.b 'REFERENCE',0
TEXT_17:
		dc.b '  Object   ',3,0
TEXT_174:
		dc.b '  UOservice',0
TEXT_18:
		dc.b '  Userdef  ',3,0
TEXT_19:
		dc.b '  no type',0
TEXT_20:
		dc.b '  Window   ',3,0
TEXT_21:
		dc.b '  DrawCode',0
TEXT_22:
		dc.b '  UO-Service',0
TEXT_23:
		dc.b '  Closed',0
TEXT_24:
		dc.b '  System   ',3,0
TEXT_25:
		dc.b '  Fulled',0
TEXT_26:
		dc.b '  Arrowed',0
TEXT_27:
		dc.b '  V-Slide',0
TEXT_28:
		dc.b '  Change',0
TEXT_29:
		dc.b '  Moved',0
TEXT_30:
		dc.b '  Sized',0
TEXT_31:
		dc.b '  H-Slide',0
TEXT_32:
		dc.b '  ACSinit',0
TEXT_33:
		dc.b '  ACSmessage',0
TEXT_34:
		dc.b '  ACSkey',0
TEXT_35:
		dc.b '  ACSbutton',0
TEXT_357:
		dc.b '  Drag',0
TEXT_358:
		dc.b '  Keys',0
TEXT_359:
		dc.b '  Service',0
TEXT_36:
		dc.b '  ACSGEMScript',0
TEXT_360:
		dc.b '  Create',0
TEXT_364:
		dc.b '  Click',0
TEXT_365:
		dc.b '  Open',0
TEXT_366:
		dc.b '  Topped',0
TEXT_367:
		dc.b '  Userdef',0
TEXT_37:
		dc.b '  ACSinit0',0
TEXT_370:
		dc.b '  Init',0
TEXT_371:
		dc.b '  Changed',0
TEXT_372:
		dc.b '  Redraw',0
TEXT_38:
		dc.b '  ACSterm',0
TEXT_39:
		dc.b '  ACSaboutme',0
TEXT_40:
		dc.b '  ACSclose',0
TEXT_41:
		dc.b '  ACSmproto',0
TEXT_42:
		dc.b '  ACStimer',0
TEXT_43:
		dc.b '  ACSmouse',0
TEXT_44:
		dc.b '  ACSwikey',0
		.ENDC
		
		.even
DATAS_05:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $020e
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.w $8000
		dc.b $00
		dc.b $06
		dc.w $c000
		dc.b $00
		dc.b $0c
		dc.w $6000
		dc.b $00
		dc.b $18
		dc.w $3000
		dc.b $00
		dc.b $31
		dc.w $1800
		dc.b $00
		dc.b $62
		dc.w $8c00
		dc.b $00
		dc.b $c4
		dc.w $4600
		dc.w $0188
		dc.w $2300
		dc.w $0310
		dc.w $1180
		dc.w $0790
		dc.w $20c0
		dc.w $0fc8
		dc.w $4860
		dc.w $1f84
		dc.w $9830
		dc.w $3703
		dc.w $3218
		dc.w $6200
		dc.w $640c
		dc.w $c000
		dc.w $c906
		dc.w $6200
		dc.w $920c
		dc.w $3101
		dc.w $f418
		dc.w $1886
		dc.w $ac04
		dc.w $0c4d
		dc.w $f404
		dc.w $062a
		dc.w $3804
		dc.w $031f
		dc.w $fc04
		dc.w $018b
		dc.w $e804
		dc.b $00
		dc.b $c5
		dc.w $5404
		dc.b $00
		dc.b $63
		dc.w $a804
		dc.b $00
		dc.b $31
		dc.w $fc04
		dc.b $00
		dc.b $18
		dc.w $0c04
		dc.b $00
		dc.b $0c
		dc.w $1bf8
		dc.b $00
		dc.b $06
		dc.w $3000
		dc.b $00
		dc.b $03
		dc.w $6000
		dc.b $00
		dc.b $01
		dc.w $c000
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.w $8000
		dc.b $00
		dc.b $06
		dc.w $c000
		dc.b $00
		dc.b $0c
		dc.w $6000
		dc.b $00
		dc.b $18
		dc.w $3000
		dc.b $00
		dc.b $31
		dc.w $1800
		dc.b $00
		dc.b $63
		dc.w $8c00
		dc.b $00
		dc.b $c6
		dc.w $c600
		dc.w $018d
		dc.w $6300
		dc.w $031a
		dc.w $b180
		dc.w $0795
		dc.w $60c0
		dc.w $0fca
		dc.w $c860
		dc.w $1f85
		dc.w $9830
		dc.w $3703
		dc.w $3218
		dc.w $6200
		dc.w $640c
		dc.w $c000
		dc.w $c906
		dc.w $6200
		dc.w $920c
		dc.w $3101
		dc.w $f418
		dc.w $1886
		dc.w $ac04
		dc.w $0c4d
		dc.w $f404
		dc.w $062a
		dc.w $3804
		dc.w $031f
		dc.w $fc04
		dc.w $018b
		dc.w $e804
		dc.b $00
		dc.b $c5
		dc.w $5404
		dc.b $00
		dc.b $63
		dc.w $a804
		dc.b $00
		dc.b $31
		dc.w $fc04
		dc.b $00
		dc.b $18
		dc.w $0c04
		dc.b $00
		dc.b $0c
		dc.w $1bf8
		dc.b $00
		dc.b $06
		dc.w $3000
		dc.b $00
		dc.b $03
		dc.w $6000
		dc.b $00
		dc.b $01
		dc.w $c000
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.w $8000
		dc.b $00
		dc.b $06
		dc.w $c000
		dc.b $00
		dc.b $0c
		dc.w $6000
		dc.b $00
		dc.b $18
		dc.w $3000
		dc.b $00
		dc.b $31
		dc.w $1800
		dc.b $00
		dc.b $63
		dc.w $8c00
		dc.b $00
		dc.b $c7
		dc.w $c600
		dc.w $018f
		dc.w $e300
		dc.w $031f
		dc.w $f180
		dc.w $079f
		dc.w $e0c0
		dc.w $0fcf
		dc.w $c860
		dc.w $1f87
		dc.w $9830
		dc.w $3703
		dc.w $3218
		dc.w $6200
		dc.w $640c
		dc.w $c000
		dc.w $c906
		dc.w $6200
		dc.w $920c
		dc.w $3101
		dc.w $f418
		dc.w $1886
		dc.w $0ffc
		dc.w $0c4d
		dc.w $e7fc
		dc.w $062a
		dc.w $33fc
		dc.w $031f
		dc.w $fbfc
		dc.w $0189
		dc.w $e3fc
		dc.b $00
		dc.b $c4
		dc.w $03fc
		dc.b $00
		dc.b $63
		dc.w $03fc
		dc.b $00
		dc.b $31
		dc.w $fffc
		dc.b $00
		dc.b $18
		dc.w $0ffc
		dc.b $00
		dc.b $0c
		dc.w $1bf8
		dc.b $00
		dc.b $06
		dc.w $3000
		dc.b $00
		dc.b $03
		dc.w $6000
		dc.b $00
		dc.b $01
		dc.w $c000
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.w $8000
		dc.b $00
		dc.b $04
		dc.w $4000
		dc.b $00
		dc.b $08
		dc.w $2000
		dc.b $00
		dc.b $11
		dc.w $1000
		dc.b $00
		dc.b $22
		dc.w $8800
		dc.b $00
		dc.b $44
		dc.w $4400
		dc.b $00
		dc.b $88
		dc.w $2200
		dc.w $0110
		dc.w $1100
		dc.w $0390
		dc.w $2080
		dc.w $07c8
		dc.w $4840
		dc.w $0f84
		dc.w $9820
		dc.w $1703
		dc.w $3210
		dc.w $2200
		dc.w $6408
		dc.w $4000
		dc.w $c904
		dc.w $2200
		dc.w $9208
		dc.w $1101
		dc.w $f410
		dc.w $0886
		dc.w $0c00
		dc.w $044d
		dc.w $e400
		dc.w $022a
		dc.w $3000
		dc.w $011f
		dc.w $f800
		dc.b $00
		dc.b $89
		dc.w $e000
		dc.b $00
		dc.b $44
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $23
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $11
		dc.w $fc00
		dc.b $00
		dc.b $08
		dc.w $0800
		dc.b $00
		dc.b $04
		dc.w $1000
		dc.b $00
		dc.b $02
		dc.w $2000
		dc.b $00
		dc.b $01
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
DATAS_06:
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.w $8000
		dc.b $00
		dc.b $07
		dc.w $c000
		dc.b $00
		dc.b $0f
		dc.w $e000
		dc.b $00
		dc.b $1f
		dc.w $f000
		dc.b $00
		dc.b $3f
		dc.w $f800
		dc.b $00
		dc.b $7f
		dc.w $fc00
		dc.b $00
		dc.b $ff
		dc.w $fe00
		dc.w $01ff
		dc.w $ff00
		dc.w $03ff
		dc.w $ff80
		dc.w $07ff
		dc.w $ffc0
		dc.w $0fff
		dc.w $ffe0
		dc.w $1fff
		dc.w $fff0
		dc.w $3fff
		dc.w $fff8
		dc.w $7fff
		dc.w $fffc
		dc.w $ffff
		dc.w $fffe
		dc.w $7fff
		dc.w $fffc
		dc.w $3fff
		dc.w $fff8
		dc.w $1fff
		dc.w $fffc
		dc.w $0fff
		dc.w $fffc
		dc.w $07ff
		dc.w $fffc
		dc.w $03ff
		dc.w $fffc
		dc.w $01ff
		dc.w $fffc
		dc.b $00
		dc.b $ff
		dc.w $fffc
		dc.b $00
		dc.b $7f
		dc.w $fffc
		dc.b $00
		dc.b $3f
		dc.w $fffc
		dc.b $00
		dc.b $1f
		dc.w $fffc
		dc.b $00
		dc.b $0f
		dc.w $fbf8
		dc.b $00
		dc.b $07
		dc.w $f000
		dc.b $00
		dc.b $03
		dc.w $e000
		dc.b $00
		dc.b $01
		dc.w $c000
		dc.b $00
		dc.b $00
		dc.w $8000
A_3DBUTTON01:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON02:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_03
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON03:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0178
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
A_3DBUTTON04:
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
		dc.l BUBBLE_01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON05:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_17
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.l TEXT_004
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON08:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_20
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_357
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON10:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_364
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON11:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_21
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON12:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_22
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON13:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_370
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON14:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_365
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON15:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_360
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON16:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_359
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON17:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_358
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON18:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON19:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_372
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON20:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_366
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON21:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_23
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON22:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_25
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON23:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_26
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON24:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_27
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON25:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_28
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON26:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_29
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON27:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_30
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON28:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_31
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON29:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0178
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
		dc.l BUBBLE_05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON30:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_12
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON31:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_13
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON32:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_24
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON33:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_32
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON34:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_33
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON35:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_34
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON36:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_35
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON37:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_36
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON38:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_37
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON39:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_38
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON40:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_39
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON41:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_40
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON42:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_41
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON43:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_42
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON44:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_43
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON45:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_44
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_ARROWS02:
		dc.l A_arrows
		dc.w $1301
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
A_CHECKBOX01:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.l Auo_string
		dc.l TEXT_15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_C4_IC_REF:
		dc.b $00
		dc.b $04
		dc.l DATAS_05+6
		dc.l DATAS_06
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_MSK_IC_REF:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.w $8000
		dc.b $00
		dc.b $07
		dc.w $c000
		dc.b $00
		dc.b $0f
		dc.w $e000
		dc.b $00
		dc.b $1f
		dc.w $f000
		dc.b $00
		dc.b $3e
		dc.w $f800
		dc.b $00
		dc.b $7d
		dc.w $7c00
		dc.b $00
		dc.b $fa
		dc.w $be00
		dc.w $01f5
		dc.w $5f00
		dc.w $03fa
		dc.w $bf80
		dc.w $07fd
		dc.w $7fc0
		dc.w $0ffe
		dc.w $ffe0
		dc.w $1fff
		dc.w $fff0
		dc.w $3fff
		dc.w $fff8
		dc.w $7fff
		dc.w $fffc
		dc.w $3fff
		dc.w $fffe
		dc.w $1fff
		dc.w $fffc
		dc.w $0fff
		dc.w $fffe
		dc.w $07ff
		dc.w $fffe
		dc.w $03ff
		dc.w $fffe
		dc.w $01ff
		dc.w $fffe
		dc.b $00
		dc.b $ff
		dc.w $fffe
		dc.b $00
		dc.b $7f
		dc.w $fffe
		dc.b $00
		dc.b $3f
		dc.w $fffe
		dc.b $00
		dc.b $1f
		dc.w $fffe
		dc.b $00
		dc.b $0f
		dc.w $fbfe
		dc.b $00
		dc.b $07
		dc.w $f000
		dc.b $00
		dc.b $03
		dc.w $e000
		dc.b $00
		dc.b $01
		dc.w $c000
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_DAT_IC_REF:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.w $8000
		dc.b $00
		dc.b $04
		dc.w $4000
		dc.b $00
		dc.b $08
		dc.w $2000
		dc.b $00
		dc.b $11
		dc.w $1000
		dc.b $00
		dc.b $22
		dc.w $8800
		dc.b $00
		dc.b $45
		dc.w $4400
		dc.b $00
		dc.b $8a
		dc.w $a200
		dc.w $0115
		dc.w $5100
		dc.w $039a
		dc.w $a080
		dc.w $07cd
		dc.w $4840
		dc.w $0f86
		dc.w $9820
		dc.w $1703
		dc.w $3210
		dc.w $2200
		dc.w $6408
		dc.w $4000
		dc.w $c904
		dc.w $2200
		dc.w $0202
		dc.w $1101
		dc.w $f404
		dc.w $0886
		dc.w $0bfe
		dc.w $044d
		dc.w $e600
		dc.w $022a
		dc.w $3200
		dc.w $011f
		dc.w $fa00
		dc.b $00
		dc.b $89
		dc.w $e200
		dc.b $00
		dc.b $44
		dc.w $0200
		dc.b $00
		dc.b $23
		dc.w $0200
		dc.b $00
		dc.b $11
		dc.w $fe00
		dc.b $00
		dc.b $08
		dc.w $0bfe
		dc.b $00
		dc.b $04
		dc.w $1000
		dc.b $00
		dc.b $02
		dc.w $2000
		dc.b $00
		dc.b $01
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
IC_REF:
		dc.l _MSK_IC_REF
		dc.l _DAT_IC_REF
		dc.l TEXT_16
		dc.w $1000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $48
		dc.b $00
		dc.b $08
		dc.l _C4_IC_REF
		.globl REF_TYPE
REF_TYPE:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $56
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $ff
		dc.w $1100
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $05
_01_REF_TYPE:
		dc.b $00
		dc.b $22
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $20
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
		dc.b $03
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $08
_02_REF_TYPE:
		dc.b $00
		dc.b $04
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_365
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_02aREF_TYPE:
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
		dc.b $06
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_04_REF_TYPE:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_01
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_04aREF_TYPE:
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
		dc.b $0e
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_06_REF_TYPE:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_360
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_06aREF_TYPE:
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
		dc.b $07
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_08_REF_TYPE:
		dc.b $00
		dc.b $0a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_05
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_08aREF_TYPE:
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
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_10_REF_TYPE:
		dc.b $00
		dc.b $0c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_359
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_10aREF_TYPE:
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
		dc.b $15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_12_REF_TYPE:
		dc.b $00
		dc.b $0e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_06
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_12aREF_TYPE:
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
		dc.b $0f
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_14_REF_TYPE:
		dc.b $00
		dc.b $10
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_370
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_14aREF_TYPE:
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
		dc.b $08
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_16_REF_TYPE:
		dc.b $00
		dc.b $12
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_07
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_16aREF_TYPE:
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
		dc.b $10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_18_REF_TYPE:
		dc.b $00
		dc.b $14
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_358
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_18aREF_TYPE:
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
		dc.b $09
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_20_REF_TYPE:
		dc.b $00
		dc.b $16
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_08
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_20aREF_TYPE:
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
		dc.b $11
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_22_REF_TYPE:
		dc.b $00
		dc.b $18
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_371
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_22aREF_TYPE:
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
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_24_REF_TYPE:
		dc.b $00
		dc.b $1a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_09
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_24aREF_TYPE:
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
		dc.b $12
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_26_REF_TYPE:
		dc.b $00
		dc.b $1c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_372
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_26aREF_TYPE:
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
		dc.b $0b
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_28_REF_TYPE:
		dc.b $00
		dc.b $1e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_10
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_28aREF_TYPE:
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
		dc.b $13
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_30_REF_TYPE:
		dc.b $00
		dc.b $20
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_366
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_30aREF_TYPE:
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
		dc.b $0c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_32_REF_TYPE:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_03
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_32aREF_TYPE:
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
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_34_REF_TYPE:
		dc.b $00
		dc.b $2c
		dc.b $00
		dc.b $23
		dc.b $00
		dc.b $25
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
		dc.b $01
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $02
_35_REF_TYPE:
		dc.b $00
		dc.b $25
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_364
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_35aREF_TYPE:
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
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_37_REF_TYPE:
		dc.b $00
		dc.b $22
		dc.b $00
		dc.b $27
		dc.b $00
		dc.b $27
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_357
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_37aREF_TYPE:
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
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_39_REF_TYPE:
		dc.b $00
		dc.b $25
		dc.b $00
		dc.b $28
		dc.b $00
		dc.b $2a
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
		dc.b $0d
		dc.b $00
		dc.b $02
_40_REF_TYPE:
		dc.b $00
		dc.b $2a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_367
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_40aREF_TYPE:
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
		dc.b $03
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_42_REF_TYPE:
		dc.b $00
		dc.b $27
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l TEXT_174
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_42aREF_TYPE:
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
		dc.b $04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_44_REF_TYPE:
		dc.b $00
		dc.b $2e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_44aREF_TYPE:
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
_46_REF_TYPE:
		dc.b $00
		dc.b $34
		dc.b $00
		dc.b $2f
		dc.b $00
		dc.b $2f
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON06
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_47_REF_TYPE:
		dc.b $00
		dc.b $2e
		dc.b $00
		dc.b $30
		dc.b $00
		dc.b $32
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
		dc.b $09
		dc.b $00
		dc.b $02
_48_REF_TYPE:
		dc.b $00
		dc.b $32
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_48aREF_TYPE:
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
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_50_REF_TYPE:
		dc.b $00
		dc.b $2f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON09
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_50aREF_TYPE:
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
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_52_REF_TYPE:
		dc.b $00
		dc.b $50
		dc.b $00
		dc.b $35
		dc.b $00
		dc.b $35
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON32
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_53_REF_TYPE:
		dc.b $00
		dc.b $34
		dc.b $00
		dc.b $36
		dc.b $00
		dc.b $4e
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
		dc.b $0f
		dc.b $00
		dc.b $0d
_54_REF_TYPE:
		dc.b $00
		dc.b $38
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON38
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_54aREF_TYPE:
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
		dc.b $19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_56_REF_TYPE:
		dc.b $00
		dc.b $3a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON33
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_56aREF_TYPE:
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
		dc.b $1a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_58_REF_TYPE:
		dc.b $00
		dc.b $3c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON39
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_58aREF_TYPE:
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
		dc.b $1b
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_60_REF_TYPE:
		dc.b $00
		dc.b $3e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON40
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_60aREF_TYPE:
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
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_62_REF_TYPE:
		dc.b $00
		dc.b $40
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON41
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_62aREF_TYPE:
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
		dc.b $1d
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_64_REF_TYPE:
		dc.b $00
		dc.b $42
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON34
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_64aREF_TYPE:
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
		dc.b $1e
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_66_REF_TYPE:
		dc.b $00
		dc.b $44
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON42
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_66aREF_TYPE:
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
		dc.b $1f
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_68_REF_TYPE:
		dc.b $00
		dc.b $46
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON43
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_68aREF_TYPE:
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
		dc.b $20
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_70_REF_TYPE:
		dc.b $00
		dc.b $48
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON35
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_70aREF_TYPE:
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
		dc.b $21
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_72_REF_TYPE:
		dc.b $00
		dc.b $4a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON36
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_72aREF_TYPE:
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
		dc.b $22
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_74_REF_TYPE:
		dc.b $00
		dc.b $4c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON44
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_74aREF_TYPE:
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
		dc.b $23
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_76_REF_TYPE:
		dc.b $00
		dc.b $4e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON45
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_76aREF_TYPE:
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
		dc.b $24
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_78_REF_TYPE:
		dc.b $00
		dc.b $35
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON37
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_78aREF_TYPE:
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
		dc.b $25
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_80_REF_TYPE:
		dc.b $00
		dc.b $56
		dc.b $00
		dc.b $51
		dc.b $00
		dc.b $51
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_81_REF_TYPE:
		dc.b $00
		dc.b $50
		dc.b $00
		dc.b $52
		dc.b $00
		dc.b $54
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
		dc.b $0e
		dc.b $00
		dc.b $02
_82_REF_TYPE:
		dc.b $00
		dc.b $54
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON11
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $01
_82aREF_TYPE:
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
		dc.b $03
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_84_REF_TYPE:
		dc.b $00
		dc.b $51
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON12
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $01
_84aREF_TYPE:
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
		dc.b $04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_86_REF_TYPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $57
		dc.b $00
		dc.b $57
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON08
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_87_REF_TYPE:
		dc.b $00
		dc.b $56
		dc.b $00
		dc.b $58
		dc.b $00
		dc.b $7a
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
		dc.b $12
_88_REF_TYPE:
		dc.b $00
		dc.b $5a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_88aREF_TYPE:
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
		dc.b $06
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_90_REF_TYPE:
		dc.b $00
		dc.b $5c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_90aREF_TYPE:
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
		dc.b $07
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_92_REF_TYPE:
		dc.b $00
		dc.b $5e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_92aREF_TYPE:
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
		dc.b $15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_94_REF_TYPE:
		dc.b $00
		dc.b $60
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON13
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_94aREF_TYPE:
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
		dc.b $08
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_96_REF_TYPE:
		dc.b $00
		dc.b $62
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON17
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_96aREF_TYPE:
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
		dc.b $09
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_98_REF_TYPE:
		dc.b $00
		dc.b $64
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON25
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_98aREF_TYPE:
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
		dc.b $0a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_100_REF_TYPE:
		dc.b $00
		dc.b $66
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_100aREF_TYPE:
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
		dc.b $0b
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_102_REF_TYPE:
		dc.b $00
		dc.b $68
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON20
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_102aREF_TYPE:
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
		dc.b $0c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_104_REF_TYPE:
		dc.b $00
		dc.b $6a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON21
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_104aREF_TYPE:
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
		dc.b $0e
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_106_REF_TYPE:
		dc.b $00
		dc.b $6c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON22
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_106aREF_TYPE:
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
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_108_REF_TYPE:
		dc.b $00
		dc.b $6e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON23
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_108aREF_TYPE:
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
		dc.b $0f
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_110_REF_TYPE:
		dc.b $00
		dc.b $70
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON28
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_110aREF_TYPE:
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
		dc.b $10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_112_REF_TYPE:
		dc.b $00
		dc.b $72
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON24
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_112aREF_TYPE:
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
		dc.b $11
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_114_REF_TYPE:
		dc.b $00
		dc.b $74
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON26
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_114aREF_TYPE:
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
		dc.b $12
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_116_REF_TYPE:
		dc.b $00
		dc.b $76
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON27
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_116aREF_TYPE:
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
		dc.b $13
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_118_REF_TYPE:
		dc.b $00
		dc.b $78
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_118aREF_TYPE:
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
		dc.b $16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_120_REF_TYPE:
		dc.b $00
		dc.b $7a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON30
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_120aREF_TYPE:
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
		dc.b $17
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_122_REF_TYPE:
		dc.b $00
		dc.b $57
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON31
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_122aREF_TYPE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8020
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		.globl EDIT_REF
EDIT_REF:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON03
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $26
		dc.b $00
		dc.b $06
_01_EDIT_REF:
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_02
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_02_EDIT_REF:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_ARROWS02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
_03_EDIT_REF:
		dc.b $00
		dc.b $05
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.l A_CHECKBOX01
		dc.b $00
		dc.b $1a
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_03aEDIT_REF:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8858
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_05_EDIT_REF:
		dc.b $00
		dc.b $07
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON02
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_05aEDIT_REF:
		dc.l editref_edit
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8845
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_07_EDIT_REF:
		dc.b $00
		dc.b $09
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON04
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_07aEDIT_REF:
		dc.l editref_ok
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
_09_EDIT_REF:
		dc.b $00
		dc.b $0b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON07
		dc.b $00
		dc.b $1a
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_09aEDIT_REF:
		dc.l editref_abort
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
_11_EDIT_REF:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $ff
		dc.w $1101
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $01
_11aEDIT_REF:
		dc.l editref_choose
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8854
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_13_EDIT_REF:
		dc.b $00
		dc.b $0b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON29
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $01
_13aEDIT_REF:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8020
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		.globl WI_REF
WI_REF:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l rf_service
		dc.l rf_make
		dc.l Awi_open
		dc.l Awi_init
		dc.l EDIT_REF
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $601f
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $63
		dc.b $00
		dc.b $63
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.w $fcf8
		dc.l TEXT_11
		dc.l TEXT_002
		dc.w $2710
		dc.w $0100
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.l IC_REF
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
		.globl cross_type
cross_type:
		dc.b $00
		dc.b $2c
		dc.b $00
		dc.b $30
		dc.b $00
		dc.b $32
		dc.b $00
		dc.b $52
		dc.b $00
		dc.b $54
		dc.b $00
		dc.b $2c
		dc.b $00
		dc.b $58
		dc.b $00
		dc.b $5a
		dc.b $00
		dc.b $5e
		dc.b $00
		dc.b $60
		dc.b $00
		dc.b $62
		dc.b $00
		dc.b $64
		dc.b $00
		dc.b $66
		dc.b $00
		dc.b $2c
		dc.b $00
		dc.b $68
		dc.b $00
		dc.b $6c
		dc.b $00
		dc.b $6e
		dc.b $00
		dc.b $70
		dc.b $00
		dc.b $72
		dc.b $00
		dc.b $74
		dc.b $00
		dc.b $6a
		dc.b $00
		dc.b $5c
		dc.b $00
		dc.b $76
		dc.b $00
		dc.b $78
		dc.b $00
		dc.b $7a
		dc.b $00
		dc.b $36
		dc.b $00
		dc.b $38
		dc.b $00
		dc.b $3a
		dc.b $00
		dc.b $3c
		dc.b $00
		dc.b $3e
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $42
		dc.b $00
		dc.b $44
		dc.b $00
		dc.b $46
		dc.b $00
		dc.b $48
		dc.b $00
		dc.b $4a
		dc.b $00
		dc.b $4c
		dc.b $00
		dc.b $4e
		.globl cross_type_anz
cross_type_anz:
		dc.b $00
		dc.b $26
p_type:
		dc.l x9ec56
		dc.l x9ec91
		dc.l x9ecc3
		dc.l x9ecf4
		dc.l x9ed74
		dc.l x9ec56
		dc.l x9edf5
		dc.l x9ee52
		dc.l x9eee3
		dc.l x9ef40
		dc.l x9efcb
		dc.l x9f02e
		dc.l x9f089
		dc.l x9ec56
		dc.l x9f0d4
		dc.l x9f11f
		dc.l x9f23c
		dc.l x9f295
		dc.l x9f2ee
		dc.l x9f349
		dc.l x9f3a4
		dc.l x9f3ee
		dc.l x9f567
		dc.l x9f5d8
		dc.l x9f68b
		dc.l x9f6cf
		dc.l x9f705
		dc.l x9f737
		dc.l x9f769
		dc.l x9f7bf
		dc.l x9f814
		dc.l x9f846
		dc.l x9f891
		dc.l x9f8e2
		dc.l x9f913
		dc.l x9f965
c_type:
		dc.l x9fa02
		dc.l x9fa3b
		dc.l x9fa6b
		dc.l x9fa9a
		dc.l x9faf8
		dc.l x9fb64
		dc.l x9fb9d
		dc.l x9fbe7
		dc.l x9fc7e
		dc.l x9fcc9
		dc.l x9fd44
		dc.l x9fda0
		dc.l x9fdee
		dc.l x9fa02
		dc.l x9fe2f
		dc.l x9fe70
		dc.l x9ffe3
		dc.l xa002f
		dc.l xa007b
		dc.l xa00c8
		dc.l xa0115
		dc.l xa0156
		dc.l xa0245
		dc.l xa02b2
		dc.l xa0313
		dc.l xa03b4
		dc.l xa03b4
		dc.l xa03f8
		dc.l xa0433
		dc.l xa046a
		dc.l xa04a1
		dc.l xa04e4
		dc.l xa0526
		dc.l xa055d
		dc.l xa05a6
		dc.l xa05f6
		dc.l xa062c
		dc.l xa067c
x9ec56:
		dc.b 'Procedure %s;',$0d,$0a,'{ Unkown type of routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9ec91:
		dc.b 'Procedure %s;',$0d,$0a,'{ Click routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9ecc3:
		dc.b 'Procedure %s;',$0d,$0a,'{ Drag routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9ecf4:
		dc.b 'Function %s (dummy1, dummy2: Pointer; pb: PARMBLKPtr): Integer;',$0d,$0a,'{ USERDEF routine }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := pb^.pb_currstate;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9ed74:
		dc.b 'Function %s (entry: ACSOBJECTPtr; task: Integer; in_out: Pointer): Boolean;',$0d,$0a,'{ USERDEF service }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := FALSE;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9edf5:
		dc.b 'Function %s (wind: AwindowPtr): Integer;',$0d,$0a,'{ wind.open routine }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := OK;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9ee52:
		dc.b 'Function %s (para: Pointer): AwindowPtr;',$0d,$0a,'{ wind.create routine }',$0d,$0a,$09,'Var wi: AwindowPtr;',$0d,$0a,'Begin',$0d,$0a,$0d,$0a,$09,'wi := Awi_create (@..);',$0d,$0a,$09,'%s := wi;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9eee3:
		dc.b 'Function %s (wind: AwindowPtr): Integer;',$0d,$0a,'{ wind.init routine }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := OK;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9ef40:
		dc.b 'Function %s (wind: AwindowPtr; kstate, key: Integer): Integer;',$0d,$0a,'{ wind.keys routine }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := Awi_keys (wi, kstate, key);',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9efcb:
		dc.b 'Procedure %s (wind: AwindowPtr; obnr, state: Integer);',$0d,$0a,'{ wind.obchange routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9f02e:
		dc.b 'Procedure %s (wind: AwindowPtr; area: AxywhPtr);',$0d,$0a,'{ wind.redraw routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9f089:
		dc.b 'Procedure %s (wind: AwindowPtr);',$0d,$0a,'{ wind.topped routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9f0d4:
		dc.b 'Procedure %s (wind: AwindowPtr);',$0d,$0a,'{ wind.closed routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9f11f:
		dc.b 'Procedure %s (wind: AwindowPtr; which, amount: Integer);',$0d,$0a
		dc.b '{ wind.arrowed routine }',$0d,$0a
		dc.b 'Begin',$0d,$0a
		dc.b $09,'Case (which) of',$0d,$0a
		dc.b $09,'WA_UPLINE:',$0d,$0a
		dc.b $09,'{ };',$0d,$0a
		dc.b $09,'WA_DNLINE:',$0d,$0a
		dc.b $09,'{ };',$0d,$0a
		dc.b $09,'WA_UPPAGE:',$0d,$0a
		dc.b $09,'{ };',$0d,$0a
		dc.b $09,'WA_DNPAGE:',$0d,$0a
		dc.b $09,'{ };',$0d,$0a
		dc.b $09,'WA_LFPAGE:',$0d,$0a
		dc.b $09,'{ };',$0d,$0a
		dc.b $09,'WA_RTPAGE:',$0d,$0a
		dc.b $09,'{ };',$0d,$0a
		dc.b $09,'WA_LFLINE:',$0d,$0a
		dc.b $09,'{ };',$0d,$0a
		dc.b $09,'WA_RTLINE:',$0d,$0a
		dc.b $09,'{ };',$0d,$0a
		dc.b $09,'End;',$0d,$0a
		dc.b 'End;',$0d,$0a,$0d,$0a,0
x9f23c:
		dc.b 'Procedure %s( wind: AwindowPtr; pos: Integer );',$0d,$0a
		dc.b '{ wind.hslid routine }',$0d,$0a
		dc.b 'Begin',$0d,$0a
		dc.b 'End;',$0d,$0a,$0d,$0a,0
x9f295:
		dc.b 'Procedure %s( wind: AwindowPtr; pos: Integer );',$0d,$0a,'{ wind.vslid routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9f2ee:
		dc.b 'Procedure %s( wind: AwindowPtr; area: AxywhPtr );',$0d,$0a,'{ wind.moved routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9f349:
		dc.b 'Procedure %s( wind: AwindowPtr; area: AxywhPtr );',$0d,$0a,'{ wind.sized routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9f3a4:
		dc.b 'Procedure %s( wind: AwindowPtr );',$0d,$0a,'{ wi.fulled routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
x9f3ee:
		dc.b 'Function %s( wind: AwindowPtr; task: Integer; in_out: Pointer): Boolean;',$0d,$0a
		dc.b '{ wi.service routine }',$0d,$0a
		dc.b 'Begin',$0d,$0a
		dc.b $09,'case (task) of ',$0d,$0a
		dc.b $09,'AS_TERM:',$0d,$0a
		dc.b $09,$09,'Awi_delete (wind);',$0d,$0a
		dc.b $09,'Else Begin',$0d,$0a
		dc.b $09,$09,'%s := Awi_service(wind, task, in_out);',$0d,$0a
		dc.b $09,$09,'Exit;',$0d,$0a
		dc.b $09,'End;',$0d,$0a
		dc.b $09,'%s := TRUE;',$0d,$0a
		dc.b 'End;',$0d,$0a
		dc.b $0d,$0a
		dc.b '{ Window-Iconify-Routine }',$0d,$0a
		dc.b 'Function %s( wi: AwindowPtr; all: Integer ) : Integer;',$0d,$0a
		dc.b 'Begin',$0d,$0a
		dc.b $09,'%s:=Awi_iconify(wi, all);',$0d,$0a
		dc.b 'End;',$0d,$0a,$0d,$0a,0
x9f567:
		dc.b '{ Window-Uniconify-Routine }',$0d,$0a
		dc.b 'Function %s( wi: AwindowPtr ) : Integer;',$0d,$0a
		dc.b 'Begin',$0d,$0a
		dc.b $09,'%s:=Awi_uniconify(wi);',$0d,$0a
		dc.b 'End;',$0d,$0a,$0d,$0a,0
x9f5d8:
		dc.b '{ Window-GEMScript-Routine }',$0d,$0a
		dc.b 'Function %s( wi: AwindowPtr; anz: Integer; cmd: Pointer; antwort: A_GSAntwortPtr ) : Integer',$0d,$0a
		dc.b '{',$0d,$0a
		dc.b $09,'return Awi_gemscript(wi, anz, cmd, antwort);',$0d,$0a
		dc.b '}',$0d,$0a
		dc.b $0d,$0a
x9f68b:
		dc.b '{ System-Init-Routine }',$0d,$0a
		dc.b 'Function %s : Integer;',$0d,$0a
		dc.b '{',$0d,$0a
		dc.b $09,'%s:=OK;',$0d,$0a
		dc.b '}',$0d,$0a,$0d,$0a,0
x9f6cf:
		dc.b '{ System-Terminier-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f705:
		dc.b '{ System-About-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f737:
		dc.b '{ System-Close-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f769:
		dc.b '{ System-Message-Routine }',$0d,$0a,'Procedure %s( message: array [0..7] of Integer;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f7bf:
		dc.b '{ System-Message-Filter }',$0d,$0a,'Procedure %s( message: array [0..7] of Integer;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f814:
		dc.b '{ System-Timer-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f846:
		dc.b '{ System-Key-Filter }',$0d,$0a,'Procedure %s( Var kstate, key: Integer );',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f891:
		dc.b '{ System-Button-Filter }',$0d,$0a,'Procedure %s( Var button, kreturn: Integer )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f8e2:
		dc.b '{ System-Maus-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f913:
		dc.b '{ System-Window-Key-Filter }',$0d,$0a,'Procedure %s( Var kstate, key: Integer );',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9f965:
		dc.b '{ System-GEMScript-Routine }',$0d,$0a,'Function %s( anz: Integer; cmd: Pointer; antwort: A_GSAntwortPtr ) : Integer;',$0d,$0a,'{',$0d,$0a,$09,'%s:=ACSGEMScript(anz, cmd, antwort);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fa02:
		dc.b $09,'/* Unkown type of routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fa3b:
		dc.b $09,'/* Click routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fa6b:
		dc.b $09,'/* Drag routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fa9a:
		dc.b $09,'/* USERDEF Draw-Routine */',$0d,$0a,'INT16 CDECL %s( PARMBLK *pb )',$0d,$0a,'{',$09,'return pb->pb_currstate;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9faf8:
		dc.b $09,'/* USERDEF Service-Routine */',$0d,$0a,'INT16 %s( OBJECT *entry, INT16 task, void *in_out )',$0d,$0a,'{',$09,'return FALSE;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fb64:
		dc.b $09,'/* Unkown type of routine */void %s( void )',$0d,$0a,$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fb9d:
		dc.b $09,'/* Window-Open-Routine*/',$0d,$0a,'INT16 %s( Awindow *wind )',$0d,$0a,'{',$09,'return OK;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fbe7:
		dc.b $09,'/* Window-Create-Routine */',$0d,$0a,'Awindow *%s( void *para )',$0d,$0a,'{',$09,'Awindow',$09,'*wi;',$0d,$0a,$0d,$0a,$09,'wi=Awi_create(&..);',$0d,$0a,'if( wi== NULL )',$0d,$0a,$09,$09,'return NULL;',$0d,$0a,$0d,$0a,$09,'return wi;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fc7e:
		dc.b $09,'/* Window-Init-Routine */',$0d,$0a,'INT16 %s( Awindow *wind )',$0d,$0a,'{',$09,'return OK;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fcc9:
		dc.b $09,'/* Window-Keys-Routine */',$0d,$0a,'INT16 %s( Awindow *wind, INT16 kstate, INT16 key )',$0d,$0a,'{',$09,'return Awi_keys(wi, kstate, key);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fd44:
		dc.b $09,'/* Window-Obchange-Routine */',$0d,$0a,'void %s( Awindow *wind, INT16 obnr, INT16 state )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fda0:
		dc.b $09,'/* Window-Redraw-Routine */',$0d,$0a,'void %s( Awindow *wind, Axywh *area )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fdee:
		dc.b $09,'/* Window-Topped-Routine */',$0d,$0a,'void %s( Awindow *wind )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fe2f:
		dc.b $09,'/* Window-Closed-Routine */',$0d,$0a,'void %s( Awindow *wind )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
x9fe70:
		dc.b $09,'/* Window-Arrowed-Routine */',$0d,$0a
		dc.b 'void %s( Awindow *wind, INT16 which, INT16 amount )',$0d,$0a
		dc.b '{',$0d,$0a
		dc.b $09,'switch(which)',$0d,$0a
		dc.b $09,'{',$0d,$0a
		dc.b $09,$09,'case WA_UPLINE:',$0d,$0a
		dc.b $09,$09,$09,'break;',$0d,$0a
		dc.b $0d,$0a
		dc.b $09,$09,'case WA_DNLINE:',$0d,$0a
		dc.b $09,$09,$09,'break;',$0d,$0a
		dc.b $0d,$0a
		dc.b $09,$09,'case WA_UPPAGE:',$0d,$0a
		dc.b $09,$09,$09,'break;',$0d,$0a
		dc.b $0d,$0a
		dc.b $09,$09,'case WA_DNPAGE:',$0d,$0a
		dc.b $09,$09,$09,'break;',$0d,$0a
		dc.b $0d,$0a
		dc.b $09,$09,'case WA_LFPAGE:',$0d,$0a
		dc.b $09,$09,$09,'break;',$0d,$0a
		dc.b $0d,$0a
		dc.b $09,$09,'case WA_RTPAGE:',$0d,$0a
		dc.b $09,$09,$09,'break;',$0d,$0a
		dc.b $0d,$0a
		dc.b $09,$09,'case WA_LFLINE:',$0d,$0a
		dc.b $09,$09,$09,'break;',$0d,$0a
		dc.b $0d,$0a
		dc.b $09,$09,'case WA_RTLINE:',$0d,$0a
		dc.b $09,$09,$09,'break;',$0d,$0a
		dc.b $09,'}',$0d,$0a
		dc.b '}',$0d,$0a,$0d,$0a,0
x9ffe3:
		dc.b $09,'/* Window-HSlide-Routine */',$0d,$0a,'void %s( Awindow *wind, INT16 pos )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa002f:
		dc.b $09,'/* Window-VSlide-Routine */',$0d,$0a,'void %s( Awindow *wind, INT16 pos )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa007b:
		dc.b $09,'/* Window-Moved-Routine */',$0d,$0a,'void %s( Awindow *wind, Axywh *area )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa00c8:
		dc.b $09,'/* Window-Sized-Routine */',$0d,$0a,'void %s( Awindow *wind, Axywh *area )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa0115:
		dc.b $09,'/* Window-Fulled-Routine */',$0d,$0a,'void %s( Awindow *wind )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa0156:
		dc.b $09,'/* Window-Service-Routine */',$0d,$0a,'INT16 %s( Awindow *wind, INT16 task, void *in_out )',$0d,$0a,'{',$0d,$0a,$09,'switch(task)',$0d,$0a,$09,'{',$0d,$0a,$09,$09,'case AS_TERM:',$0d,$0a,$09,$09,$09,'Awi_delete(wind);',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$0d,$0a,$09,$09,'default:',$0d,$0a,$09,$09,$09,'return Awi_service(wind, task, in_out);',$0d,$0a,$09,'}',$0d,$0a,$09,'return TRUE;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa0245:
		dc.b $09,'/* Window-Iconify-Routine */',$0d,$0a,'INT16 %s( Awindow *wind, INT16 all )',$0d,$0a,'{',$0d,$0a,$09,'return Awi_iconify(wi, all);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa02b2:
		dc.b $09,'/* Window-Uniconify-Routine */',$0d,$0a,'INT16 %s( Awindow *wind )',$0d,$0a,'{',$0d,$0a,$09,'return Awi_uniconify(wi);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa0313:
		dc.b $09,'/* Window-GEMScript-Routine */',$0d,$0a,'INT16 %s( Awindow *wind, INT16 anz, char **cmd, A_GSAntwort *antwort )',$0d,$0a,'{',$0d,$0a,$09,'return Awi_gemscript(wi, anz, cmd, antwort);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa03b4:
		dc.b $09,'/* System-Init-Routine */',$0d,$0a,'INT16 %s( void )',$0d,$0a,'{',$0d,$0a,$09,'return OK;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa03f8:
		dc.b $09,'/* System-Terminier-Routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa0433:
		dc.b $09,'/* System-About-Routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa046a:
		dc.b $09,'/* System-Close-Routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa04a1:
		dc.b $09,'/* System-Message-Routine */',$0d,$0a,'void %s( INT16 *message )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa04e4:
		dc.b $09,'/* System-Message-Filter */',$0d,$0a,'void %s( INT16 *message )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa0526:
		dc.b $09,'/* System-Timer-Routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa055d:
		dc.b $09,'/* System-Key-Filter */',$0d,$0a,'void %s( INT16 *kstate, INT16 *key )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa05a6:
		dc.b $09,'/* System-Button-Filter */',$0d,$0a,'void %s( INT16 *button, INT16 *kreturn )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa05f6:
		dc.b $09,'/* System-Mouse-Filter */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa062c:
		dc.b $09,'/* System-Window-Key-Filter */',$0d,$0a,'void %s( INT16 *kstate, INT16 *key )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa067c:
		dc.b $09,'/* System-GEMScript-Routine */',$0d,$0a,'INT16 %s( INT16 anz, char **cmd, A_GSAntwort *antwort )',$0d,$0a,'{',$0d,$0a,$09,'return ACSGEMScript(anz, cmd, antwort);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
xa0709:
		dc.b $20
		dc.b $00
xa070b:
		dc.b ' (REF) ',0
xa0713:
		dc.b ' * ',0
xa0717:
		dc.b $43
		dc.b $00
xa0719:
		dc.b 'static ',0
	.even
