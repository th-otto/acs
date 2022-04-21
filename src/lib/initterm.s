
ACSinitialize:
		movem.l    d3/a2-a3,-(a7)
		subq.w     #4,a7
		lea.l      ACSblk,a2
		jsr        INmemory
		addq.w     #1,d0
		beq        ACSinitialize_1
		lea.l      (a7),a1
		lea.l      2(a7),a0
		jsr        InitAES
		tst.w      d0
		bne        ACSinitialize_1
		suba.l     a0,a0
		clr.w      d1
		moveq.l    #4,d0
		jsr        nkc_init
		lea.l      (a7),a1
		lea.l      2(a7),a0
		jsr        InitVDI
		tst.w      d0
		bne        ACSinitialize_1
		jsr        InitMagiC
		tst.w      d0
		bne        ACSinitialize_1
		jsr        InitNAES
		tst.w      d0
		bne        ACSinitialize_1
		movea.l    (a2),a0
		move.w     _app,566(a0)
		movea.l    (a2),a0
		movea.l    640(a0),a1
		cmpi.w     #$0001,2(a1)
		beq.s      ACSinitialize_2
		moveq.l    #1,d0
		bra.s      ACSinitialize_3
ACSinitialize_2:
		clr.w      d0
ACSinitialize_3:
		movea.l    (a2),a0
		move.w     d0,568(a0)
		movea.l    (a2),a0
		move.w     #$FFFF,986(a0)
		jsr        INmouse
		addq.w     #1,d0
		beq        ACSinitialize_1
		jsr        Amo_busy
		jsr        INuserobj
		addq.w     #1,d0
		beq        ACSinitialize_1
		jsr        InitScrap
		tst.w      d0
		bne.w      ACSinitialize_1
		lea.l      xd2d48,a0
		jsr        Ash_getenv
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      ACSinitialize_4
		move.b     (a0),d0
		bne.s      ACSinitialize_5
ACSinitialize_4:
		lea.l      xd2d4b,a0
		jsr        Ash_getenv
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      ACSinitialize_6
		move.b     (a0),d0
		beq.s      ACSinitialize_6
ACSinitialize_5:
		movea.l    a3,a1
		movea.l    (a2),a0
		lea.l      998(a0),a0
		jsr        strcpy
ACSinitialize_6:
		moveq.l    #1,d0
		jsr        Pdomain
		jsr        InitPaths
		tst.w      d0
		bne.s      ACSinitialize_1
		movea.l    (a2),a0
		movea.l    688(a0),a0
		jsr        (a0)
		tst.w      d0
		bne.s      ACSinitialize_1
		jsr        InitCfg
		jsr        INMsgService
		tst.w      d0
		bne.s      ACSinitialize_1
		jsr        InitProtocol
		tst.w      d0
		bne.s      ACSinitialize_1
		jsr        INwindow
		addq.w     #1,d0
		bne.s      ACSinitialize_7
ACSinitialize_1:
		moveq.l    #-1,d0
		bra.s      ACSinitialize_8
ACSinitialize_7:
		jsr        Awi_root
		movea.l    (a2),a1
		move.l     a0,600(a1)
		movea.l    $0009BFDE,a0
		jsr        (a0)
		move.w     d0,d3
		jsr        Amo_point
		jsr        Amo_unbusy
		clr.w      d0
		jsr        Awi_update
		move.w     d3,d0
ACSinitialize_8:
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a3
		rts

ACSterminate:
		move.w     aes_open,d0
		beq.s      ACSterminate_1
		jsr        TRwindow
		jsr        TRuserobj
		jsr        TRmouse
		clr.w      d0
		jsr        Awi_update
		jsr        TermProtocol
		jsr        TRMsgService
		jsr        nkc_exit
		jsr        TermVDI
		jsr        TermAES
		movea.l    ACSblk,a0
		move.l     1258(a0),d0
		beq.s      ACSterminate_2
		movea.l    d0,a0
		jsr        Acfg_delete
ACSterminate_2:
		jsr        TRmemory
ACSterminate_1:
		rts

_acs_boot:
		move.w     ($00000446).w,d0
		ext.l      d0
		rts

InitCfg:
		move.l     a2,-(a7)
		lea.l      ACSconfig,a2
		movea.l    (a2),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      InitCfg_1
		movea.l    ACSblk,a0
		lea.l      544(a0),a0
		jsr        Af_cfgfile
		move.l     a0,(a2)
InitCfg_1:
		movea.l    ACSblk,a0
		move.l     1258(a0),d0
		bne.s      InitCfg_2
		movea.l    a2,a0
		moveq.l    #1,d0
		jsr        Acfg_create
		movea.l    ACSblk,a1
		move.l     a0,1258(a1)
InitCfg_2:
		clr.w      d0
		movea.l    (a7)+,a2
		rts

InitAES:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		move.w     AesInit,d0
		addq.w     #1,AesInit
		tst.w      d0
		bne        InitAES_1
		lea.l      ACSblk,a2
		movea.l    _globl,a0
		jsr        mt_appl_init
		movea.l    (a2),a0
		move.w     d0,(a0)
		tst.w      d0
		bpl.s      InitAES_2
		moveq.l    #-1,d0
		bra        InitAES_3
InitAES_2:
		move.l     _globl,-(a7)
		movea.l    (a2),a0
		pea.l      6(a0)
		pea.l      4(a0)
		movea.l    a3,a1
		movea.l    a4,a0
		jsr        mt_graf_handle
		lea.l      12(a7),a7
		movea.l    (a2),a0
		move.w     d0,2(a0)
		movea.l    (a2),a0
		move.w     d0,16(a0)
		movea.l    (a2),a0
		pea.l      14(a0)
		pea.l      12(a0)
		pea.l      10(a0)
		pea.l      8(a0)
		moveq.l    #4,d1
		clr.w      d0
		jsr        wind_get
		lea.l      16(a7),a7
		movea.l    (a2),a0
		movea.l    640(a0),a1
		cmpi.w     #$0400,(a1)
		bge.s      InitAES_4
		cmpi.w     #$0300,_ACSv_magix
		bge.s      InitAES_4
		move.l     1282(a0),d0
		beq.s      InitAES_5
InitAES_4:
		move.l     _globl,-(a7)
		suba.l     a1,a1
		suba.l     a0,a0
		clr.w      d2
		moveq.l    #1,d1
		moveq.l    #9,d0
		jsr        mt_shel_write
		addq.w     #4,a7
InitAES_5:
		move.w     #$0001,aes_open
InitAES_1:
		clr.w      d0
InitAES_3:
		movem.l    (a7)+,a2-a4
		rts

InitVDI:
		movem.l    d3/a2-a4/a6,-(a7)
		lea.l      -120(a7),a7
		movea.l    a0,a6
		move.l     a1,116(a7)
		clr.w      d3
		lea.l      dum_ob,a4
		move.w     -56(a4),d0
		addq.w     #1,-56(a4)
		tst.w      d0
		bne        InitVDI_1
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		movea.l    (a2),a1
		move.w     2(a0),16(a1)
		lea.l      2(a7),a3
		pea.l      (a3)
		movea.l    (a2),a1
		lea.l      16(a1),a1
		lea.l      -50(a4),a0
		jsr        v_opnvwk
		addq.w     #4,a7
		moveq.l    #1,d0
		jsr        Awi_update
		movea.l    (a2),a0
		move.w     20(a3),644(a0)
		movea.l    (a2),a0
		move.w     26(a3),26(a0)
		movea.l    a3,a0
		moveq.l    #1,d1
		movea.l    (a2),a1
		move.w     16(a1),d0
		jsr        vq_extnd
		movea.l    (a2),a0
		move.w     8(a3),28(a0)
		movea.l    (a2),a0
		cmpi.w     #$0004,28(a0)
		bge.s      InitVDI_2
		move.w     #$0041,692(a0)
InitVDI_2:
		movea.l    (a2),a0
		movea.l    640(a0),a1
		cmpi.w     #$0400,(a1)
		blt.s      InitVDI_3
		move.l     _globl,-(a7)
		pea.l      4(a7)
		pea.l      8(a7)
		movea.l    a0,a1
		lea.l      656(a1),a1
		lea.l      658(a0),a0
		clr.w      d0
		jsr        mt_appl_getinfo
		lea.l      12(a7),a7
		tst.w      d0
		beq.s      InitVDI_3
		move.l     _globl,-(a7)
		pea.l      4(a7)
		pea.l      8(a7)
		movea.l    (a2),a1
		lea.l      660(a1),a1
		movea.l    (a2),a0
		lea.l      662(a0),a0
		moveq.l    #1,d0
		jsr        mt_appl_getinfo
		lea.l      12(a7),a7
		tst.w      d0
		bne        InitVDI_4
InitVDI_3:
		move.w     (a6),20(a4)
		movea.l    116(a7),a0
		move.w     (a0),22(a4)
		move.w     #$0003,-16(a4)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		movea.l    _globl,a1
		clr.w      d2
		moveq.l    #1,d1
		clr.w      d0
		movea.l    a4,a0
		jsr        mt_objc_draw
		addq.w     #6,a7
		movea.l    a3,a0
		movea.l    (a2),a1
		move.w     2(a1),d0
		jsr        vqt_attributes
		movea.l    (a2),a0
		move.w     (a3),656(a0)
		movea.l    (a2),a0
		move.w     14(a3),658(a0)
		move.w     #$0005,-16(a4)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		movea.l    _globl,a1
		clr.w      d2
		moveq.l    #1,d1
		clr.w      d0
		movea.l    a4,a0
		jsr        mt_objc_draw
		addq.w     #6,a7
		movea.l    a3,a0
		movea.l    (a2),a1
		move.w     2(a1),d0
		jsr        vqt_attributes
		movea.l    (a2),a0
		move.w     (a3),660(a0)
		movea.l    (a2),a0
		move.w     14(a3),662(a0)
InitVDI_4:
		clr.w      d3
		moveq.l    #32,d0
		movea.l    (a2),a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      InitVDI_5
		jsr        vq_gdos
		tst.w      d0
		beq.s      InitVDI_5
		clr.w      d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vst_load_fonts
		movea.l    (a2),a0
		add.w      d0,644(a0)
		moveq.l    #1,d3
InitVDI_5:
		tst.w      d3
		bne.s      InitVDI_6
		movea.l    (a2),a0
		move.w     660(a0),d0
		move.w     d0,-(a7)
		move.w     d0,d1
		move.w     16(a0),d0
		jsr        vst_font
		move.w     (a7)+,d1
		cmp.w      d0,d1
		beq.s      InitVDI_6
		jsr        vq_gdos
		tst.w      d0
		beq.s      InitVDI_6
		clr.w      d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vst_load_fonts
		movea.l    (a2),a0
		add.w      d0,644(a0)
		moveq.l    #1,d3
InitVDI_6:
		tst.w      d3
		bne.s      InitVDI_7
		movea.l    (a2),a0
		move.w     656(a0),d0
		move.w     d0,-(a7)
		move.w     d0,d1
		move.w     16(a0),d0
		jsr        vst_font
		move.w     (a7)+,d1
		cmp.w      d0,d1
		beq.s      InitVDI_7
		jsr        vq_gdos
		tst.w      d0
		beq.s      InitVDI_7
		clr.w      d1
		movea.l    (a2),a0
		move.w     16(a0),d0
		jsr        vst_load_fonts
		movea.l    (a2),a0
		add.w      d0,644(a0)
		moveq.l    #1,d3
InitVDI_7:
		movea.l    (a2),a0
		move.w     656(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		movea.l    (a2),a0
		pea.l      20(a0)
		pea.l      18(a0)
		movea.l    a0,a1
		lea.l      24(a1),a1
		lea.l      22(a0),a0
		movea.l    (a2),a3
		move.w     658(a3),d1
		move.w     16(a3),d0
		jsr        vst_height
		addq.w     #8,a7
		movea.l    (a2),a0
		movea.l    572(a0),a1
		move.w     10(a1),d0
		muls.w     18(a0),d0
		move.w     d0,10(a1)
		movea.l    (a2),a0
		movea.l    572(a0),a1
		move.w     12(a1),d1
		muls.w     20(a0),d1
		move.w     d1,12(a1)
InitVDI_1:
		clr.w      d0
		lea.l      120(a7),a7
		movem.l    (a7)+,d3/a2-a4/a6
		rts

InitMagiC:
		move.l     a2,-(a7)
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		lea.l      1278(a0),a0
		move.l     #$4D616758,d0
		jsr        Ash_getcookie
		tst.w      d0
		beq.s      InitMagiC_1
		movea.l    (a2),a0
		movea.l    1278(a0),a1
		movea.l    8(a1),a0
		move.w     48(a0),_ACSv_magix
		bra.s      InitMagiC_2
InitMagiC_1:
		move.w     #$FFFF,_ACSv_magix
		movea.l    (a2),a0
		clr.l      1278(a0)
InitMagiC_2:
		cmpi.w     #$0300,_ACSv_magix
		blt.s      InitMagiC_3
		movea.l    (a2),a0
		movea.l    572(a0),a1
		ori.w      #$0800,14(a1)
		bra.s      InitMagiC_4
InitMagiC_3:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		andi.w     #$F7FF,14(a1)
InitMagiC_4:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		ori.w      #$0040,14(a1)
		clr.w      d0
		movea.l    (a7)+,a2
		rts

InitNAES:
		movea.l    ACSblk,a0
		lea.l      1282(a0),a0
		move.l     #$6E414553,d0
		jsr        Ash_getcookie
		tst.w      d0
		bne.s      InitNAES_1
		movea.l    ACSblk,a0
		clr.l      1282(a0)
InitNAES_1:
		clr.w      d0
		rts

InitPaths:
		movem.l    a2-a6,-(a7)
		subq.w     #4,a7
		lea.l      ACSblk,a2
		lea.l      _globl,a3
		lea.l      xd2d48,a5
		movea.l    (a2),a0
		move.w     566(a0),d0
		beq        InitPaths_1
		move.l     (a3),-(a7)
		movea.l    a0,a1
		lea.l      286(a1),a1
		lea.l      30(a0),a0
		jsr        mt_shel_read
		addq.w     #4,a7
		tst.w      d0
		beq        InitPaths_2
		movea.l    (a2),a0
		move.b     286(a0),d0
		beq.s      InitPaths_3
		ext.w      d0
		adda.w     d0,a0
		clr.b      287(a0)
		movea.l    (a2),a1
		lea.l      287(a1),a1
		movea.l    (a2),a0
		lea.l      286(a0),a0
		jsr        strcpy
		bra.s      InitPaths_4
InitPaths_3:
		movea.l    (a2),a0
		cmpi.w     #$0001,646(a0)
		ble.s      InitPaths_4
		movea.l    648(a0),a1
		movea.l    4(a1),a0
		move.b     (a0),d0
		beq.s      InitPaths_4
		movea.l    a0,a1
		movea.l    (a2),a0
		lea.l      286(a0),a0
		jsr        strcpy
InitPaths_4:
		moveq.l    #47,d0
		movea.l    (a2),a0
		lea.l      286(a0),a0
		jsr        strrchr
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      InitPaths_5
		lea.l      1(a4),a1
		movea.l    (a2),a0
		lea.l      414(a0),a0
		jsr        strcpy
		clr.b      (a4)
		bra.s      InitPaths_6
InitPaths_5:
		movea.l    (a2),a0
		clr.b      414(a0)
InitPaths_6:
		movea.l    (a2),a1
		lea.l      30(a1),a1
		movea.l    (a2),a0
		lea.l      158(a0),a0
		jsr        strcpy
		moveq.l    #92,d0
		movea.l    (a2),a0
		lea.l      158(a0),a0
		jsr        strrchr
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      InitPaths_7
		movea.l    (a2),a1
		move.b     158(a1),d1
		beq.s      InitPaths_8
		cmpi.b     #$3A,159(a1)
		bne.s      InitPaths_8
		lea.l      160(a1),a1
		movea.l    (a2),a0
		lea.l      544(a0),a0
		jsr        strcpy
		movea.l    (a2),a0
		clr.b      160(a0)
		bra.s      InitPaths_9
InitPaths_8:
		movea.l    (a2),a1
		lea.l      158(a1),a1
		movea.l    (a2),a0
		lea.l      544(a0),a0
		jsr        strcpy
		lea.l      9(a5),a1
		movea.l    (a2),a0
		lea.l      158(a0),a0
		jsr        strcpy
		bra.s      InitPaths_9
InitPaths_7:
		addq.w     #1,a4
		movea.l    a4,a1
		movea.l    (a2),a0
		lea.l      544(a0),a0
		jsr        strcpy
		clr.b      (a4)
InitPaths_9:
		moveq.l    #46,d0
		movea.l    (a2),a0
		lea.l      542(a0),a0
		jsr        strrchr
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      InitPaths_10
		clr.b      (a0)
		bra.s      InitPaths_10
InitPaths_1:
		clr.b      d0
		movea.l    (a2),a0
		move.b     d0,542(a0)
		movea.l    (a2),a0
		move.b     d0,414(a0)
		movea.l    (a2),a0
		move.b     d0,30(a0)
		movea.l    (a2),a0
		move.b     d0,158(a0)
		movea.l    (a2),a0
		move.b     d0,286(a0)
InitPaths_10:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		move.b     16(a1),d0
		bne.s      InitPaths_11
		lea.l      11(a5),a1
		movea.l    572(a0),a0
		lea.l      16(a0),a0
		jsr        strcpy
InitPaths_11:
		movea.l    (a2),a0
		movea.l    640(a0),a1
		cmpi.w     #$0400,(a1)
		bge.s      InitPaths_12
		cmpi.w     #$0300,_ACSv_magix
		bge.s      InitPaths_12
		move.w     566(a0),d0
		bne        InitPaths_13
InitPaths_12:
		movea.l    (a3),a1
		movea.l    (a2),a0
		movea.l    572(a0),a0
		lea.l      16(a0),a0
		movea.l    (a2),a6
		move.w     (a6),d0
		jsr        mt_menu_register
		movea.l    (a2),a0
		move.w     d0,986(a0)
		lea.l      2(a7),a6
		move.l     (a3),-(a7)
		pea.l      4(a7)
		pea.l      (a6)
		movea.l    a6,a1
		movea.l    a6,a0
		jsr        mt_graf_mkstate
		lea.l      12(a7),a7
		movea.l    (a2),a0
		move.w     566(a0),d0
		bne.s      InitPaths_13
		move.w     (a7),d1
		beq.s      InitPaths_13
		movea.l    572(a0),a0
		lea.l      16(a0),a0
		jsr        strlen
		moveq.l    #15,d1
		cmp.l      d0,d1
		bcc.s      InitPaths_14
		move.l     d1,d0
		bra.s      InitPaths_15
InitPaths_14:
		movea.l    (a2),a0
		movea.l    572(a0),a0
		lea.l      16(a0),a0
		jsr        strlen
InitPaths_15:
		movea.l    (a2),a0
		movea.l    572(a0),a1
		lea.l      16(a1),a1
		lea.l      _A_ERR_ACC+30,a0
		jsr        strncpy
		movea.l    (a3),a1
		lea.l      _A_ERR_ACC,a0
		moveq.l    #1,d0
		jsr        mt_form_alert
		move.w     d0,(a6)
		subq.w     #1,d0
		beq.s      InitPaths_13
InitPaths_2:
		moveq.l    #-1,d0
		bra        InitPaths_16
InitPaths_13:
		movea.l    (a2),a0
		clr.b      726(a0)
		lea.l      21(a5),a0
		jsr        Ash_getenv
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      InitPaths_17
		lea.l      26(a5),a0
		jsr        Ash_getenv
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      InitPaths_17
		lea.l      33(a5),a0
		jsr        Ash_getenv
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      InitPaths_18
InitPaths_17:
		movea.l    a4,a1
		movea.l    (a2),a0
		lea.l      726(a0),a0
		jsr        strcpy
		moveq.l    #92,d0
		movea.l    (a2),a0
		lea.l      726(a0),a0
		jsr        strrchr
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      InitPaths_19
		move.b     1(a4),d1
		bne.s      InitPaths_19
		clr.b      (a0)
InitPaths_19:
		movea.l    (a2),a0
		move.b     726(a0),d0
		ext.w      d0
		jsr        toupper
		cmp.w      #$0043,d0
		blt.s      InitPaths_20
		movea.l    (a2),a0
		lea.l      726(a0),a0
		jsr        Af_length
		moveq.l    #-1,d1
		cmp.l      d0,d1
		beq.s      InitPaths_21
InitPaths_20:
		movea.l    (a2),a0
		clr.b      726(a0)
		bra.s      InitPaths_18
InitPaths_21:
		lea.l      9(a5),a1
		movea.l    (a2),a0
		lea.l      726(a0),a0
		jsr        strcat
InitPaths_18:
		movea.l    (a2),a0
		move.b     726(a0),d0
		bne.s      InitPaths_22
		movea.l    a0,a1
		lea.l      158(a1),a1
		lea.l      726(a0),a0
		jsr        strcpy
InitPaths_22:
		movea.l    (a2),a0
		move.b     726(a0),d0
		bne.s      InitPaths_23
		lea.l      37(a5),a1
		lea.l      726(a0),a0
		jsr        strcpy
		jsr        Dgetdrv
		jsr        Dsetdrv
		and.l      #$00000004,d0
		beq.s      InitPaths_23
		movea.l    (a2),a0
		move.b     #$43,726(a0)
InitPaths_23:
		clr.w      d0
InitPaths_16:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a6
		rts

InitProtocol:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		move.w     ProtInit,d0
		addq.w     #1,ProtInit
		tst.w      d0
		bne        InitProtocol_1
		lea.l      ListOfApps,a2
		jsr        Alu_create
		move.l     a0,(a2)
		move.l     a0,d0
		beq        InitProtocol_1
		move.l     #Aev_DDRemove,4(a0)
		jsr        Alu_create
		move.l     a0,SentMsg
		move.l     a0,d0
		bne.s      InitProtocol_2
		movea.l    (a2),a0
		jsr        Alu_delete
		bra        InitProtocol_1
InitProtocol_2:
		lea.l      ACSblk,a2
		movea.l    (a2),a3
		lea.l      544(a3),a3
		movea.l    (a2),a0
		move.w     566(a0),d0
		beq.s      InitProtocol_3
		move.b     (a3),d1
		bne.s      InitProtocol_4
InitProtocol_3:
		movea.l    (a2),a0
		movea.l    572(a0),a3
		lea.l      18(a3),a3
InitProtocol_4:
		moveq.l    #10,d0
		jsr        Ax_glmalloc
		movea.l    (a2),a1
		move.l     a0,988(a1)
		move.l     a0,d0
		beq.s      InitProtocol_5
		lea.l      xd2d71,a1
		jsr        strcpy
		movea.l    a3,a0
		jsr        strlen
		moveq.l    #8,d1
		cmp.l      d0,d1
		bls.s      InitProtocol_6
		movea.l    a3,a0
		jsr        strlen
		bra.s      InitProtocol_7
InitProtocol_6:
		moveq.l    #8,d0
InitProtocol_7:
		movea.l    a3,a1
		movea.l    (a2),a0
		movea.l    988(a0),a0
		jsr        strncpy
		jsr        Ast_toupper
InitProtocol_5:
		moveq.l    #51,d0
		jsr        Ax_glmalloc
		movea.l    (a2),a1
		move.l     a0,1254(a1)
		move.l     a0,d0
		beq.s      InitProtocol_8
		movea.l    (a2),a1
		movea.l    988(a1),a1
		jsr        strcpy
InitProtocol_8:
		movea.l    (a2),a0
		move.l     1254(a0),d0
		beq.s      InitProtocol_9
		jsr        Aev_InitXAcc
		jsr        Aev_InitGEMScript
InitProtocol_9:
		movea.l    (a2),a0
		move.l     988(a0),d0
		beq.s      InitProtocol_1
		jsr        Aev_InitVA
		jsr        Aev_InitDD
		jsr        Aev_InitBubble
		jsr        Aev_InitOlga
		jsr        Aev_InitSTGuide
		jsr        Aev_InitSE
		jsr        Aev_InitPCHelp
		jsr        Aev_InitSSP
		jsr        Aev_InitDHST
InitProtocol_1:
		clr.w      d0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

InitScrap:
		movem.l    d3/a2-a4,-(a7)
		lea.l      ACSblk,a2
		movea.l    _globl,a1
		movea.l    (a2),a0
		lea.l      854(a0),a0
		jsr        mt_scrp_read
		lea.l      xd2d48,a3
		movea.l    (a2),a0
		move.b     854(a0),d0
		bne.s      InitScrap_1
		lea.l      51(a3),a0
		jsr        Ash_getenv
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      InitScrap_2
		lea.l      61(a3),a0
		jsr        Ash_getenv
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      InitScrap_2
		lea.l      69(a3),a0
		jsr        Ash_getenv
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      InitScrap_3
InitScrap_2:
		movea.l    a4,a1
		movea.l    (a2),a0
		lea.l      854(a0),a0
		jsr        strcpy
		bra.s      InitScrap_1
InitScrap_3:
		lea.l      78(a3),a1
		movea.l    (a2),a0
		lea.l      854(a0),a0
		jsr        strcpy
		lea.l      _acs_boot(pc),a0
		jsr        Supexec
		add.b      #$41,d0
		movea.l    (a2),a0
		move.b     d0,854(a0)
InitScrap_1:
		movea.l    (a2),a0
		move.b     854(a0),d0
		ext.w      d0
		jsr        toupper
		cmp.w      #$0043,d0
		blt.s      InitScrap_4
		movea.l    (a2),a0
		lea.l      854(a0),a0
		jsr        strlen
		move.l     d0,d3
		tst.l      d3
		ble.s      InitScrap_4
		subq.l     #1,d3
		movea.l    (a2),a0
		adda.l     d3,a0
		cmpi.b     #$5C,854(a0)
		bne.s      InitScrap_5
		clr.b      854(a0)
InitScrap_5:
		movea.l    (a2),a0
		lea.l      854(a0),a0
		jsr        Dcreate
		move.l     d0,d3
		lea.l      9(a3),a1
		movea.l    (a2),a0
		lea.l      854(a0),a0
		jsr        strcat
		tst.l      d3
		bpl.s      InitScrap_6
		moveq.l    #-36,d0
		cmp.l      d3,d0
		bne.s      InitScrap_7
InitScrap_6:
		movea.l    _globl,a1
		movea.l    (a2),a0
		lea.l      854(a0),a0
		jsr        mt_scrp_write
		bra.s      InitScrap_7
InitScrap_4:
		movea.l    _globl,a1
		lea.l      2(a3),a0
		jsr        mt_scrp_write
InitScrap_7:
		clr.w      d0
		movem.l    (a7)+,d3/a2-a4
		rts

TermProtocol:
		move.l     a2,-(a7)
		subq.w     #1,ProtInit
		bne        TermProtocol_1
		movea.l    ListOfApps,a0
		jsr        Alu_delete
		movea.l    SentMsg,a0
		jsr        Alu_delete
		jsr        Aev_ExitDHST
		jsr        Aev_ExitSSP
		jsr        Aev_ExitPCHelp
		jsr        Aev_ExitSE
		jsr        Aev_ExitSTGuide
		jsr        Aev_ExitOlga
		jsr        Aev_ExitGEMScript
		jsr        Aev_ExitBubble
		jsr        Aev_ExitDD
		jsr        Aev_ExitVA
		jsr        Aev_ExitXAcc
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		move.l     1254(a0),d0
		beq.s      TermProtocol_2
		movea.l    d0,a0
		jsr        Ax_glfree
TermProtocol_2:
		movea.l    (a2),a0
		move.l     988(a0),d0
		beq.s      TermProtocol_1
		movea.l    d0,a0
		jsr        Ax_glfree
TermProtocol_1:
		movea.l    (a7)+,a2
		rts

TermVDI:
		subq.w     #1,VdiInit
		bne.s      TermVDI_1
		moveq.l    #32,d0
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		and.w      14(a1),d0
		beq.s      TermVDI_2
		jsr        vq_gdos
		tst.w      d0
		beq.s      TermVDI_2
		clr.w      d1
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        vst_unload_fonts
TermVDI_2:
		movea.l    ACSblk,a0
		move.w     16(a0),d0
		jsr        v_clsvwk
TermVDI_1:
		rts

TermAES:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		lea.l      -34(a7),a7
		subq.w     #1,AesInit
		bne.s      TermAES_1
		lea.l      _globl,a2
		movea.l    ACSblk,a0
		move.w     566(a0),d0
		beq.s      TermAES_2
		movea.l    (a2),a0
		jsr        mt_appl_exit
		bra.s      TermAES_1
TermAES_2:
		movea.l    ACSblk,a0
		movea.l    572(a0),a1
		move.b     #$05,16(a1)
TermAES_3:
		lea.l      32(a7),a3
		move.l     (a2),-(a7)
		pea.l      (a3)
		pea.l      (a3)
		pea.l      (a3)
		pea.l      (a3)
		pea.l      (a3)
		move.l     #$7FFF7FFF,-(a7)
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
		lea.l      50(a7),a0
		clr.w      d2
		clr.w      d1
		moveq.l    #48,d0
		jsr        mt_evnt_multi
		lea.l      50(a7),a7
		bra.s      TermAES_3
TermAES_1:
		lea.l      34(a7),a7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.data

ProtInit:
		dc.b $00
		dc.b $00
VdiInit:
		dc.b $00
		dc.b $00
AesInit:
		dc.b $00
		dc.b $00
aes_open:
		dc.b $00
		dc.b $00
work_in:
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
dum_ted:
		dc.l xd2d4f
		dc.l xd2d4a
		dc.l xd2d4a
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
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
dum_ob:
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $00
		dc.l dum_ted
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd2d48:
		dc.w $4653
		dc.b $00
xd2d4b:
		dc.b 'IFS',0
xd2d4f:
		dc.b $20
		dc.b $00
xd2d51:
		dc.b $5c
		dc.b $00
xd2d53:
		dc.b '  ACS-Acc',0
xd2d5d:
		dc.b 'HOME',0
xd2d62:
		dc.b 'TMPDIR',0
xd2d69:
		dc.b 'TMP',0
xd2d6d:
		dc.b 'A:\',0
xd2d71:
		dc.b '        ',0
xd2d7a:
		dc.b $00
xd2d7b:
		dc.b 'CLIPBOARD',0
xd2d85:
		dc.b 'CLIPBRD',0
xd2d8d:
		dc.b 'SCRAPDIR',0
xd2d96:
		dc.b 'X:\clipbrd',0
		.even
