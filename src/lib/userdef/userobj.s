
		.globl INuserobj
INuserobj:
		movem.l    d3/a2-a4,-(a7)
		lea.l      icn_tmp,a3
		move.w     -38(a3),d0
		addq.w     #1,-38(a3)
		tst.w      d0
		bne        INuserobj_1
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		cmpi.w     #$0004,28(a0)
		blt        INuserobj_1
		move.w     28(a0),d3
		cmpi.w     #$0008,28(a0)
		ble.s      INuserobj_2
		move.w     #$0004,28(a0)
INuserobj_2:
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,-4(a3)
		beq        INuserobj_3
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,-36(a3)
		beq        INuserobj_4
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,-32(a3)
		beq.s      INuserobj_4
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,-20(a3)
		beq.s      INuserobj_4
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,-16(a3)
		beq.s      INuserobj_4
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,-28(a3)
		beq.s      INuserobj_4
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,-24(a3)
		beq.s      INuserobj_4
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,-12(a3)
		beq.s      INuserobj_4
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,-8(a3)
		beq.s      INuserobj_4
		moveq.l    #16,d1
		moveq.l    #16,d0
		jsr        Abp_create
		move.l     a0,(a3)
		bne        INuserobj_5
INuserobj_4:
		movea.l    (a2),a0
		move.w     d3,28(a0)
		movea.l    -4(a3),a0
		jsr        Abp_delete
		clr.l      -4(a3)
		move.l     -16(a3),d0
		beq.s      INuserobj_6
		movea.l    d0,a0
		jsr        Abp_delete
		clr.l      -16(a3)
INuserobj_6:
		move.l     -20(a3),d0
		beq.s      INuserobj_7
		movea.l    d0,a0
		jsr        Abp_delete
		clr.l      -20(a3)
INuserobj_7:
		move.l     -32(a3),d0
		beq.s      INuserobj_8
		movea.l    d0,a0
		jsr        Abp_delete
		clr.l      -32(a3)
INuserobj_8:
		move.l     -36(a3),d0
		beq.s      INuserobj_9
		movea.l    d0,a0
		jsr        Abp_delete
		clr.l      -36(a3)
INuserobj_9:
		move.l     -8(a3),d0
		beq.s      INuserobj_10
		movea.l    d0,a0
		jsr        Abp_delete
		clr.l      -8(a3)
INuserobj_10:
		move.l     -12(a3),d0
		beq.s      INuserobj_11
		movea.l    d0,a0
		jsr        Abp_delete
		clr.l      -12(a3)
INuserobj_11:
		move.l     -24(a3),d0
		beq.s      INuserobj_12
		movea.l    d0,a0
		jsr        Abp_delete
		clr.l      -24(a3)
INuserobj_12:
		move.l     -28(a3),d0
		beq.s      INuserobj_3
		movea.l    d0,a0
		jsr        Abp_delete
		clr.l      -28(a3)
INuserobj_3:
		moveq.l    #-1,d0
		bra        INuserobj_13
INuserobj_5:
		movea.l    (a2),a0
		move.w     d3,28(a0)
		lea.l      _CHK_3D_S,a4
		movea.l    (a2),a0
		cmpi.w     #$0008,28(a0)
		ble.s      INuserobj_14
		clr.w      d0
		bra.s      INuserobj_15
INuserobj_16:
		move.w     d0,d1
		ext.l      d1
		add.l      d1,d1
		movea.l    (a4),a0
		eori.w     #$FFFF,0(a0,d1.l)
		addq.w     #1,d0
INuserobj_15:
		cmp.w      #$FFF0,d0
		blt.s      INuserobj_16
INuserobj_14:
		movea.l    (a2),a0
		move.w     28(a0),d1
		ext.l      d1
		lsl.l      #5,d1
		clr.w      d0
		movea.l    (a3),a1
		movea.l    (a1),a0
		jsr        memset
		move.l     #$00000080,d0
		movea.l    34(a4),a0
		movea.l    2(a0),a1
		movea.l    (a3),a0
		movea.l    (a0),a0
		jsr        memcpy
		movea.l    (a3),a0
		move.w     #$0001,10(a0)
		movea.l    -36(a3),a1
		movea.l    (a3),a0
		movea.l    (a2),a4
		move.w     16(a4),d0
		jsr        vr_trnfm
		lea.l      _CHK_3D_U,a4
		movea.l    (a2),a0
		cmpi.w     #$0008,28(a0)
		ble.s      INuserobj_17
		clr.w      d0
		bra.s      INuserobj_18
INuserobj_19:
		move.w     d0,d1
		ext.l      d1
		add.l      d1,d1
		movea.l    (a4),a0
		eori.w     #$FFFF,0(a0,d1.l)
		addq.w     #1,d0
INuserobj_18:
		cmp.w      #$FFF0,d0
		blt.s      INuserobj_19
INuserobj_17:
		movea.l    (a2),a0
		move.w     28(a0),d1
		ext.l      d1
		lsl.l      #5,d1
		clr.w      d0
		movea.l    (a3),a1
		movea.l    (a1),a0
		jsr        memset
		move.l     #$00000080,d0
		movea.l    34(a4),a0
		movea.l    2(a0),a1
		movea.l    (a3),a0
		movea.l    (a0),a0
		jsr        memcpy
		movea.l    (a3),a0
		move.w     #$0001,10(a0)
		movea.l    -32(a3),a1
		movea.l    (a3),a0
		movea.l    (a2),a4
		move.w     16(a4),d0
		jsr        vr_trnfm
		lea.l      _CHK_3D_DS,a4
		movea.l    (a2),a0
		cmpi.w     #$0008,28(a0)
		ble.s      INuserobj_20
		clr.w      d0
		bra.s      INuserobj_21
INuserobj_22:
		move.w     d0,d1
		ext.l      d1
		add.l      d1,d1
		movea.l    (a4),a0
		eori.w     #$FFFF,0(a0,d1.l)
		addq.w     #1,d0
INuserobj_21:
		cmp.w      #$FFF0,d0
		blt.s      INuserobj_22
INuserobj_20:
		movea.l    (a2),a0
		move.w     28(a0),d1
		ext.l      d1
		lsl.l      #5,d1
		clr.w      d0
		movea.l    (a3),a1
		movea.l    (a1),a0
		jsr        memset
		move.l     #$00000080,d0
		movea.l    34(a4),a0
		movea.l    2(a0),a1
		movea.l    (a3),a0
		movea.l    (a0),a0
		jsr        memcpy
		movea.l    (a3),a0
		move.w     #$0001,10(a0)
		movea.l    -28(a3),a1
		movea.l    (a3),a0
		movea.l    (a2),a4
		move.w     16(a4),d0
		jsr        vr_trnfm
		lea.l      _CHK_3D_DU,a4
		movea.l    (a2),a0
		cmpi.w     #$0008,28(a0)
		ble.s      INuserobj_23
		clr.w      d0
		bra.s      INuserobj_24
INuserobj_25:
		move.w     d0,d1
		ext.l      d1
		add.l      d1,d1
		movea.l    (a4),a0
		eori.w     #$FFFF,0(a0,d1.l)
		addq.w     #1,d0
INuserobj_24:
		cmp.w      #$FFF0,d0
		blt.s      INuserobj_25
INuserobj_23:
		movea.l    (a2),a0
		move.w     28(a0),d1
		ext.l      d1
		lsl.l      #5,d1
		clr.w      d0
		movea.l    (a3),a1
		movea.l    (a1),a0
		jsr        memset
		move.l     #$00000080,d0
		movea.l    34(a4),a0
		movea.l    2(a0),a1
		movea.l    (a3),a0
		movea.l    (a0),a0
		jsr        memcpy
		movea.l    (a3),a0
		move.w     #$0001,10(a0)
		movea.l    -24(a3),a1
		movea.l    (a3),a0
		movea.l    (a2),a4
		move.w     16(a4),d0
		jsr        vr_trnfm
		movea.l    (a2),a0
		move.w     28(a0),d1
		ext.l      d1
		lsl.l      #5,d1
		clr.w      d0
		movea.l    (a3),a1
		movea.l    (a1),a0
		jsr        memset
		move.l     #$00000080,d0
		movea.l    _CHK_3D_S+34,a0
		movea.l    2(a0),a1
		movea.l    (a3),a4
		movea.l    (a4),a0
		jsr        memcpy
		movea.l    (a3),a0
		move.w     #$0001,10(a0)
		movea.l    -20(a3),a1
		movea.l    (a3),a0
		movea.l    (a2),a4
		move.w     16(a4),d0
		jsr        vr_trnfm
		movea.l    (a2),a0
		move.w     28(a0),d1
		ext.l      d1
		lsl.l      #5,d1
		clr.w      d0
		movea.l    (a3),a1
		movea.l    (a1),a0
		jsr        memset
		move.l     #$00000080,d0
		movea.l    _CHK_3D_U+34,a0
		movea.l    2(a0),a1
		movea.l    (a3),a4
		movea.l    (a4),a0
		jsr        memcpy
		movea.l    -16(a3),a1
		movea.l    (a3),a0
		movea.l    (a2),a4
		move.w     16(a4),d0
		jsr        vr_trnfm
		movea.l    (a2),a0
		move.w     28(a0),d1
		ext.l      d1
		lsl.l      #5,d1
		clr.w      d0
		movea.l    (a3),a1
		movea.l    (a1),a0
		jsr        memset
		move.l     #$00000080,d0
		movea.l    _CHK_3D_DS+34,a0
		movea.l    2(a0),a1
		movea.l    (a3),a4
		movea.l    (a4),a0
		jsr        memcpy
		movea.l    -12(a3),a1
		movea.l    (a3),a0
		movea.l    (a2),a4
		move.w     16(a4),d0
		jsr        vr_trnfm
		movea.l    (a2),a0
		move.w     28(a0),d1
		ext.l      d1
		lsl.l      #5,d1
		clr.w      d0
		movea.l    (a3),a1
		movea.l    (a1),a0
		jsr        memset
		move.l     #$00000080,d0
		movea.l    _CHK_3D_DU+34,a0
		movea.l    2(a0),a1
		movea.l    (a3),a4
		movea.l    (a4),a0
		jsr        memcpy
		movea.l    -8(a3),a1
		movea.l    (a3),a0
		movea.l    (a2),a4
		move.w     16(a4),d0
		jsr        vr_trnfm
		movea.l    (a3),a0
		jsr        Abp_delete
INuserobj_1:
		clr.w      d0
INuserobj_13:
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl TRuserobj
TRuserobj:
		move.l     a2,-(a7)
		lea.l      icn_rad_un,a2
		subq.w     #1,-22(a2)
		bne        TRuserobj_1
		movea.l    ACSblk,a0
		cmpi.w     #$0004,28(a0)
		blt.s      TRuserobj_1
		move.l     (a2),d0
		beq.s      TRuserobj_1
		movea.l    d0,a0
		jsr        Abp_delete
		movea.l    -4(a2),a0
		jsr        Abp_delete
		movea.l    -16(a2),a0
		jsr        Abp_delete
		movea.l    -20(a2),a0
		jsr        Abp_delete
		movea.l    8(a2),a0
		jsr        Abp_delete
		movea.l    4(a2),a0
		jsr        Abp_delete
		movea.l    -8(a2),a0
		jsr        Abp_delete
		movea.l    -12(a2),a0
		jsr        Abp_delete
		movea.l    12(a2),a0
		jsr        Abp_delete
		moveq.l    #0,d0
		move.l     d0,-12(a2)
		move.l     d0,-20(a2)
		move.l     d0,-8(a2)
		move.l     d0,-16(a2)
		move.l     d0,8(a2)
		move.l     d0,(a2)
		move.l     d0,4(a2)
		move.l     d0,-4(a2)
TRuserobj_1:
		movea.l    (a7)+,a2
		rts

g_string:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -20(a7),a7
		move.w     d0,18(a7)
		move.w     d1,d7
		movea.l    a0,a2
		move.w     d2,d5
		move.w     64(a7),d0
		tst.w      d0
		beq.s      g_string_1
		moveq.l    #2,d2
		bra.s      g_string_2
g_string_1:
		clr.w      d2
g_string_2:
		move.w     d2,(a7)
		tst.w      d0
		beq.s      g_string_3
		moveq.l    #2,d4
		bra.s      g_string_4
g_string_3:
		clr.w      d4
g_string_4:
		move.w     d5,d0
		and.w      #$0800,d0
		beq.s      g_string_5
		or.w       #$0008,d4
g_string_5:
		move.w     d5,d0
		and.w      #$0400,d0
		beq.s      g_string_6
		or.w       #$0010,d4
g_string_6:
		move.w     d5,d0
		and.w      #$0300,d0
		beq.s      g_string_7
		or.w       #$0001,d4
g_string_7:
		move.w     d5,d0
		and.w      #$0C00,d0
		beq.s      g_string_8
		and.w      #$7FFF,d5
g_string_8:
		clr.b      d3
		move.b     d3,d6
		tst.w      d5
		beq.s      g_string_9
		move.w     d5,d0
		and.w      #$8000,d0
		bne.s      g_string_9
		move.b     d5,d0
		jsr        Ach_tolower
		move.b     d0,d6
		move.b     d5,d0
		jsr        Ach_toupper
		move.b     d0,d3
g_string_9:
		move.b     d6,d0
		ext.w      d0
		movea.l    a2,a0
		jsr        strchr
		movea.l    a0,a3
		move.b     d3,d0
		ext.w      d0
		movea.l    a2,a0
		jsr        strchr
		move.l     a3,d0
		beq.s      g_string_10
		move.l     a0,d1
		beq.s      g_string_11
		cmp.l      d0,d1
		bcc.s      g_string_11
g_string_10:
		movea.l    a0,a3
g_string_11:
		lea.l      ACSblk,a5
		movea.l    a3,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne        g_string_12
		move.b     (a3),save
		clr.b      (a3)
		lea.l      2(a7),a4
		move.b     (a2),d0
		beq.s      g_string_13
		move.w     (a7),d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    a4,a1
		movea.l    a2,a0
		movea.l    (a5),a6
		move.w     16(a6),d0
		jsr        vqt_extent
		move.w     4(a4),d6
		sub.w      (a4),d6
		movea.l    a2,a0
		move.w     d7,d2
		move.w     18(a7),d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_gtext
		bra.s      g_string_14
g_string_13:
		clr.w      d6
g_string_14:
		move.w     d4,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    a4,a1
		lea.l      save,a0
		movea.l    (a5),a6
		move.w     16(a6),d0
		jsr        vqt_extent
		move.w     4(a4),d3
		sub.w      (a4),d3
		lea.l      save,a0
		move.w     d7,d2
		move.w     18(a7),d1
		add.w      d6,d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_gtext
		move.b     1(a3),d0
		beq.s      g_string_15
		move.w     (a7),d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vst_effects
		lea.l      1(a3),a0
		move.w     d7,d2
		move.w     18(a7),d1
		add.w      d6,d1
		add.w      d3,d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_gtext
g_string_15:
		move.b     save,(a3)
		bra.s      g_string_16
g_string_12:
		movea.l    a2,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      g_string_16
		move.w     (a7),d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    a2,a0
		move.w     d7,d2
		move.w     18(a7),d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_gtext
g_string_16:
		lea.l      20(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

g_stringLen:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -20(a7),a7
		movea.l    a0,a2
		move.w     d0,d4
		clr.w      d3
		move.w     d3,2(a7)
		move.w     d3,d5
		tst.w      d1
		beq.s      g_stringLen_1
		moveq.l    #2,d6
		bra.s      g_stringLen_2
g_stringLen_1:
		clr.w      d6
g_stringLen_2:
		tst.w      d1
		beq.s      g_stringLen_3
		moveq.l    #2,d7
		bra.s      g_stringLen_4
g_stringLen_3:
		clr.w      d7
g_stringLen_4:
		move.w     d4,d0
		and.w      #$0800,d0
		beq.s      g_stringLen_5
		or.w       #$0008,d7
g_stringLen_5:
		move.w     d4,d0
		and.w      #$0400,d0
		beq.s      g_stringLen_6
		or.w       #$0010,d7
g_stringLen_6:
		move.w     d4,d0
		and.w      #$0300,d0
		beq.s      g_stringLen_7
		or.w       #$0001,d7
g_stringLen_7:
		move.w     d4,d0
		and.w      #$0C00,d0
		beq.s      g_stringLen_8
		and.w      #$7FFF,d4
g_stringLen_8:
		clr.b      d0
		move.b     d0,(a7)
		move.b     d0,1(a7)
		tst.w      d4
		beq.s      g_stringLen_9
		move.w     d4,d1
		and.w      #$8000,d1
		bne.s      g_stringLen_9
		move.b     d4,d0
		jsr        Ach_tolower
		move.b     d0,1(a7)
		move.b     d4,d0
		jsr        Ach_toupper
		move.b     d0,(a7)
g_stringLen_9:
		move.b     1(a7),d0
		ext.w      d0
		movea.l    a2,a0
		jsr        strchr
		movea.l    a0,a3
		move.b     (a7),d0
		ext.w      d0
		movea.l    a2,a0
		jsr        strchr
		move.l     a3,d0
		beq.s      g_stringLen_10
		move.l     a0,d1
		beq.s      g_stringLen_11
		cmp.l      d0,d1
		bcc.s      g_stringLen_11
g_stringLen_10:
		movea.l    a0,a3
g_stringLen_11:
		lea.l      ACSblk,a5
		lea.l      4(a7),a4
		movea.l    a3,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne        g_stringLen_12
		move.b     (a3),save2
		clr.b      (a3)
		move.b     (a2),d0
		beq.s      g_stringLen_13
		move.w     d6,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    a4,a1
		movea.l    a2,a0
		movea.l    (a5),a6
		move.w     16(a6),d0
		jsr        vqt_extent
		move.w     4(a4),d3
		sub.w      (a4),d3
g_stringLen_13:
		move.w     d7,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    a4,a1
		lea.l      save2,a0
		movea.l    (a5),a6
		move.w     16(a6),d0
		jsr        vqt_extent
		move.w     4(a4),d0
		sub.w      (a4),d0
		move.w     d0,2(a7)
		move.b     1(a3),d1
		beq.s      g_stringLen_14
		movea.l    (a5),a0
		move.w     16(a0),d0
		move.w     d6,d1
		jsr        vst_effects
		movea.l    a4,a1
		lea.l      1(a3),a0
		movea.l    (a5),a6
		move.w     16(a6),d0
		jsr        vqt_extent
		move.w     4(a4),d5
		sub.w      (a4),d5
g_stringLen_14:
		move.b     save2,(a3)
		bra.s      g_stringLen_15
g_stringLen_12:
		movea.l    a2,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      g_stringLen_15
		move.w     d6,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    a4,a1
		movea.l    a2,a0
		movea.l    (a5),a3
		move.w     16(a3),d0
		jsr        vqt_extent
		move.w     4(a4),d3
		sub.w      (a4),d3
g_stringLen_15:
		move.w     d3,d0
		add.w      2(a7),d0
		add.w      d5,d0
		lea.l      20(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts

		.globl Auo_string
Auo_string:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a1,a3
		movea.l    12(a0),a2
		move.w     d0,d1
		cmp.w      #$0014,d1
		bhi        Auo_string_1
		add.w      d1,d1
		move.w     J46(pc,d1.w),d1
		jmp        J46(pc,d1.w)
J46:
		dc.w Auo_string_1-J46
		dc.w Auo_string_2-J46
		dc.w Auo_string_3-J46
		dc.w Auo_string_4-J46
		dc.w Auo_string_5-J46
		dc.w Auo_string_6-J46
		dc.w Auo_string_6-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_7-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_1-J46
		dc.w Auo_string_8-J46
		dc.w Auo_string_8-J46
Auo_string_2:
		move.l     12(a2),d0
		beq.s      Auo_string_9
		movea.l    d0,a0
		jsr        Ast_create
		move.l     a0,12(a2)
Auo_string_9:
		move.l     12(a2),d0
		bne.s      Auo_string_8
		lea.l      xd4cd4,a0
		jsr        Ast_create
		move.l     a0,12(a2)
		bra.s      Auo_string_8
Auo_string_7:
		movea.l    a3,a0
		move.l     (a0),16(a2)
		move.w     8(a0),d0
		ext.l      d0
		move.l     d0,20(a2)
		bra.s      Auo_string_8
Auo_string_3:
		movea.l    12(a2),a0
		jsr        Ast_delete
		bra.s      Auo_string_8
Auo_string_5:
		movea.l    12(a2),a0
		jsr        Ast_delete
		movea.l    a3,a0
		jsr        Ast_create
		move.l     a0,12(a2)
		bra.s      Auo_string_9
Auo_string_4:
		move.l     12(a2),(a3)
		bra.s      Auo_string_8
Auo_string_6:
		movea.l    16(a2),a3
		move.l     a3,d0
		beq.s      Auo_string_8
		moveq.l    #-1,d1
		move.w     22(a2),d0
		movea.l    a3,a0
		movea.l    102(a3),a1
		jsr        (a1)
		bra.s      Auo_string_8
Auo_string_1:
		clr.w      d0
		bra.s      Auo_string_10
Auo_string_8:
		moveq.l    #1,d0
Auo_string_10:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl A_radiobutton
A_radiobutton:
		move.l     d2,-(a7)
		move.l     8(a7),-(a7)
		jsr        A_checkbox
		addq.w     #4,a7
		move.l     (a7)+,d2
		rts

		.globl A_checkbox
A_checkbox:
		movem.l    d2-d7/a2-a5,-(a7)
		lea.l      -56(a7),a7
		movea.l    100(a7),a2
		lea.l      ACSblk,a4
		move.w     22(a2),d0
		bne.s      A_checkbox_1
		move.w     24(a2),d1
		beq.s      A_checkbox_2
A_checkbox_1:
		move.w     18(a2),20(a7)
		move.w     20(a2),22(a7)
		move.w     18(a2),d0
		add.w      22(a2),d0
		subq.w     #1,d0
		move.w     d0,24(a7)
		move.w     20(a2),d1
		add.w      24(a2),d1
		subq.w     #1,d1
		move.w     d1,26(a7)
		lea.l      20(a7),a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		bra.s      A_checkbox_3
A_checkbox_2:
		lea.l      20(a7),a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_checkbox_3:
		move.w     4(a2),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a2),a0
		adda.l     d0,a0
		lea.l      24(a0),a1
		moveq.l    #32,d2
		and.w      8(a0),d2
		bne.s      A_checkbox_4
		move.w     8(a1),d0
		and.w      #$8000,d0
		beq.s      A_checkbox_4
		move.w     10(a1),d3
		bra.s      A_checkbox_5
A_checkbox_4:
		clr.w      d3
A_checkbox_5:
		movea.l    12(a0),a1
		move.l     12(a1),(a7)
		move.l     (a7),d0
		beq.s      A_checkbox_6
		movea.l    d0,a0
		jsr        strlen
		move.w     d0,6(a7)
		bra.s      A_checkbox_7
A_checkbox_6:
		clr.w      6(a7)
A_checkbox_7:
		move.w     6(a2),d0
		move.w     8(a2),d1
		eor.w      d1,d0
		move.w     d0,14(a7)
		move.w     6(a7),d2
		ble        A_checkbox_8
		move.w     16(a2),d0
		movea.l    (a4),a0
		sub.w      20(a0),d0
		asr.w      #1,d0
		add.w      12(a2),d0
		move.w     d0,16(a7)
		move.w     14(a7),d1
		bne        A_checkbox_9
		move.w     16(a0),d0
		moveq.l    #2,d1
		jsr        vswr_mode
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_rotation
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_color
		lea.l      12(a7),a1
		lea.l      12(a7),a0
		moveq.l    #5,d2
		clr.w      d1
		movea.l    (a4),a3
		move.w     16(a3),d0
		jsr        vst_alignment
		movea.l    (a4),a0
		move.w     656(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		pea.l      12(a7)
		pea.l      16(a7)
		lea.l      20(a7),a1
		lea.l      20(a7),a0
		movea.l    (a4),a3
		move.w     658(a3),d1
		move.w     16(a3),d0
		jsr        vst_height
		addq.w     #8,a7
		moveq.l    #8,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_10
		movea.l    (a4),a0
		movea.l    572(a0),a1
		move.w     14(a1),d1
		and.w      #$0100,d1
		bne.s      A_checkbox_11
		cmpi.w     #$0002,28(a0)
		ble.s      A_checkbox_10
A_checkbox_11:
		moveq.l    #1,d1
		bra.s      A_checkbox_12
A_checkbox_10:
		clr.w      d1
A_checkbox_12:
		move.w     d3,d0
		movea.l    (a7),a0
		bsr        g_stringLen
		move.w     d0,d4
		moveq.l    #8,d1
		and.w      8(a2),d1
		beq.s      A_checkbox_13
		clr.w      -(a7)
		move.w     d3,d2
		movea.l    2(a7),a0
		move.w     10(a2),d0
		add.w      14(a2),d0
		sub.w      d4,d0
		move.w     18(a7),d1
		bsr        g_string
		addq.w     #2,a7
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		clr.w      -(a7)
		move.w     d3,d2
		movea.l    2(a7),a0
		move.w     18(a7),d1
		move.w     10(a2),d0
		add.w      14(a2),d0
		sub.w      d4,d0
		bsr        g_string
		addq.w     #2,a7
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
A_checkbox_13:
		moveq.l    #8,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_14
		movea.l    (a4),a0
		movea.l    572(a0),a1
		move.w     14(a1),d1
		and.w      #$0100,d1
		bne.s      A_checkbox_15
		cmpi.w     #$0002,28(a0)
		ble.s      A_checkbox_14
A_checkbox_15:
		moveq.l    #1,d0
		bra.s      A_checkbox_16
A_checkbox_14:
		clr.w      d0
A_checkbox_16:
		move.w     d0,-(a7)
		move.w     d3,d2
		movea.l    2(a7),a0
		move.w     18(a7),d1
		move.w     10(a2),d0
		add.w      14(a2),d0
		sub.w      d4,d0
		bsr        g_string
		addq.w     #2,a7
A_checkbox_9:
		movea.l    (a4),a0
		move.w     20(a0),d0
		muls.w     4(a0),d0
		ext.l      d0
		divs.w     6(a0),d0
		move.w     d0,4(a7)
		move.w     20(a0),d7
		asr.w      #1,d0
		add.w      10(a2),d0
		move.w     d0,18(a7)
		bra.s      A_checkbox_17
A_checkbox_8:
		move.w     14(a2),4(a7)
		move.w     16(a2),d7
		move.w     10(a2),18(a7)
		move.w     12(a2),16(a7)
A_checkbox_17:
		cmp.w      #$0010,d7
		bne.s      A_checkbox_18
		cmpi.w     #$0010,4(a7)
		beq.s      A_checkbox_19
A_checkbox_18:
		movea.l    (a4),a0
		cmp.w      20(a0),d7
		bne        A_checkbox_20
		move.w     6(a7),d0
		ble        A_checkbox_20
		cmp.w      #$000F,d7
		blt        A_checkbox_20
A_checkbox_19:
		clr.l      act
		lea.l      rad,a3
		moveq.l    #16,d0
		move.w     4(a2),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a2),a0
		and.w      8(a0,d1.l),d0
		beq        A_checkbox_21
		movea.l    (a4),a1
		movea.l    572(a1),a0
		move.w     14(a0),d3
		and.w      #$0100,d3
		bne.s      A_checkbox_22
		moveq.l    #1,d4
		and.l      26(a2),d4
		bne.s      A_checkbox_23
A_checkbox_22:
		moveq.l    #1,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_24
		moveq.l    #8,d1
		and.w      8(a2),d1
		beq.s      A_checkbox_25
		move.l     #_RD_1D_DS,8(a7)
		bra        A_checkbox_26
A_checkbox_25:
		move.l     #_RD_1D_S,8(a7)
		bra        A_checkbox_26
A_checkbox_24:
		moveq.l    #8,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_27
		move.l     #_RD_1D_DU,8(a7)
		bra        A_checkbox_26
A_checkbox_27:
		move.l     #_RD_1D_U,8(a7)
		bra        A_checkbox_26
A_checkbox_23:
		moveq.l    #1,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_28
		moveq.l    #8,d1
		and.w      8(a2),d1
		beq.s      A_checkbox_29
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_checkbox_30
		move.l     -20(a3),d2
		beq.s      A_checkbox_30
		move.l     d2,act
A_checkbox_30:
		move.l     #_RD_3D_DS,8(a7)
		bra        A_checkbox_26
A_checkbox_29:
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_checkbox_31
		move.l     -28(a3),d0
		beq.s      A_checkbox_31
		move.l     d0,act
A_checkbox_31:
		move.l     #_RD_3D_S,8(a7)
		bra        A_checkbox_26
A_checkbox_28:
		moveq.l    #8,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_32
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_checkbox_33
		move.l     -20(a3),d1
		beq.s      A_checkbox_33
		move.l     -16(a3),act
A_checkbox_33:
		move.l     #_RD_3D_DU,8(a7)
		bra        A_checkbox_26
A_checkbox_32:
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_checkbox_34
		move.l     -28(a3),d0
		beq.s      A_checkbox_34
		move.l     -24(a3),act
A_checkbox_34:
		move.l     #_RD_3D_U,8(a7)
		bra        A_checkbox_26
A_checkbox_21:
		movea.l    (a4),a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$0100,d0
		bne.s      A_checkbox_35
		moveq.l    #1,d1
		and.l      26(a2),d1
		bne.s      A_checkbox_36
A_checkbox_35:
		moveq.l    #1,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_37
		moveq.l    #8,d1
		and.w      8(a2),d1
		beq.s      A_checkbox_38
		move.l     #_CHK_1D_DS,8(a7)
		bra        A_checkbox_26
A_checkbox_38:
		move.l     #_CHK_1D_S,8(a7)
		bra        A_checkbox_26
A_checkbox_37:
		moveq.l    #8,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_39
		move.l     #_CHK_1D_DU,8(a7)
		bra        A_checkbox_26
A_checkbox_39:
		move.l     #_CHK_1D_U,8(a7)
		bra        A_checkbox_26
A_checkbox_36:
		moveq.l    #1,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_40
		moveq.l    #8,d1
		and.w      8(a2),d1
		beq.s      A_checkbox_41
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_checkbox_42
		move.l     -36(a3),d2
		beq.s      A_checkbox_42
		move.l     d2,act
A_checkbox_42:
		move.l     #_CHK_3D_DS,8(a7)
		bra.s      A_checkbox_26
A_checkbox_41:
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_checkbox_43
		move.l     -44(a3),d0
		beq.s      A_checkbox_43
		move.l     d0,act
A_checkbox_43:
		move.l     #_CHK_3D_S,8(a7)
		bra.s      A_checkbox_26
A_checkbox_40:
		moveq.l    #8,d0
		and.w      8(a2),d0
		beq.s      A_checkbox_44
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_checkbox_45
		move.l     -32(a3),d1
		beq.s      A_checkbox_45
		move.l     d1,act
A_checkbox_45:
		move.l     #_CHK_3D_DU,8(a7)
		bra.s      A_checkbox_26
A_checkbox_44:
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_checkbox_46
		move.l     -40(a3),d0
		beq.s      A_checkbox_46
		move.l     d0,act
A_checkbox_46:
		move.l     #_CHK_3D_U,8(a7)
A_checkbox_26:
		clr.w      28(a7)
		clr.w      30(a7)
		move.w     #$000F,32(a7)
		move.w     #$000F,34(a7)
		move.w     10(a2),36(a7)
		move.w     16(a2),d0
		asr.w      #1,d0
		add.w      12(a2),d0
		subq.w     #8,d0
		move.w     d0,38(a7)
		moveq.l    #15,d1
		add.w      36(a7),d1
		move.w     d1,40(a7)
		moveq.l    #15,d2
		add.w      38(a7),d2
		move.w     d2,42(a7)
		movea.l    8(a7),a0
		move.l     (a0),(a3)
		clr.w      d1
		move.w     d1,18(a3)
		move.w     d1,16(a3)
		move.w     d1,14(a3)
		movea.l    (a4),a1
		cmpi.w     #$0008,28(a1)
		bgt.s      A_checkbox_47
		pea.l      24(a3)
		pea.l      618(a1)
		movea.l    a3,a1
		lea.l      36(a7),a0
		movea.l    (a4),a5
		move.w     16(a5),d0
		moveq.l    #2,d1
		jsr        vrt_cpyfm
		addq.w     #8,a7
		bra.s      A_checkbox_48
A_checkbox_47:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		lea.l      36(a7),a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
A_checkbox_48:
		move.l     act,d0
		beq.s      A_checkbox_49
		movea.l    (a4),a0
		cmpi.w     #$0008,28(a0)
		ble.s      A_checkbox_50
A_checkbox_49:
		movea.l    8(a7),a0
		move.l     4(a0),(a3)
		pea.l      20(a3)
		movea.l    (a4),a1
		pea.l      618(a1)
		movea.l    a3,a1
		lea.l      36(a7),a0
		moveq.l    #2,d1
		movea.l    (a4),a5
		move.w     16(a5),d0
		jsr        vrt_cpyfm
		addq.w     #8,a7
		bra        A_checkbox_51
A_checkbox_50:
		movea.l    (a4),a0
		cmpi.w     #$0008,28(a0)
		bgt.s      A_checkbox_52
		pea.l      618(a0)
		movea.l    act,a1
		lea.l      32(a7),a0
		moveq.l    #7,d1
		movea.l    (a4),a3
		move.w     16(a3),d0
		jsr        vro_cpyfm
		addq.w     #4,a7
		bra        A_checkbox_51
A_checkbox_52:
		movea.l    (a4),a0
		pea.l      618(a0)
		movea.l    act,a1
		lea.l      32(a7),a0
		moveq.l    #3,d1
		movea.l    (a4),a3
		move.w     16(a3),d0
		jsr        vro_cpyfm
		addq.w     #4,a7
		bra        A_checkbox_51
A_checkbox_20:
		lea.l      48(a7),a3
		moveq.l    #8,d0
		and.w      8(a2),d0
		beq        A_checkbox_53
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #4,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_style
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		moveq.l    #16,d0
		move.w     4(a2),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a2),a0
		and.w      8(a0,d1.l),d0
		beq        A_checkbox_54
		moveq.l    #-2,d4
		add.w      4(a7),d4
		asr.w      #1,d4
		cmp.w      #$0004,d4
		bge.s      A_checkbox_55
		moveq.l    #4,d4
A_checkbox_55:
		moveq.l    #-2,d3
		add.w      d7,d3
		asr.w      #1,d3
		cmp.w      #$0004,d3
		bge.s      A_checkbox_56
		moveq.l    #4,d3
A_checkbox_56:
		move.w     6(a7),d0
		bne.s      A_checkbox_57
		move.w     4(a7),d1
		asr.w      #1,d1
		add.w      d1,18(a7)
A_checkbox_57:
		move.w     d7,d0
		asr.w      #1,d0
		add.w      d0,16(a7)
		cmp.w      #$0010,d7
		bne.s      A_checkbox_58
		cmpi.w     #$0010,4(a7)
		beq.s      A_checkbox_59
A_checkbox_58:
		movea.l    (a4),a0
		cmp.w      20(a0),d7
		bne.s      A_checkbox_60
		move.w     6(a7),d0
		ble.s      A_checkbox_60
		cmp.w      #$000F,d7
		blt.s      A_checkbox_60
A_checkbox_59:
		movea.l    (a4),a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$0100,d0
		bne.s      A_checkbox_60
		moveq.l    #1,d1
		and.l      26(a2),d1
		bne.s      A_checkbox_61
A_checkbox_60:
		subq.w     #2,d4
		subq.w     #2,d3
A_checkbox_61:
		move.w     d3,-(a7)
		move.w     d4,-(a7)
		move.w     20(a7),d2
		move.w     22(a7),d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        v_ellipse
		addq.w     #4,a7
		bra        A_checkbox_51
A_checkbox_54:
		move.w     6(a7),d0
		ble.s      A_checkbox_62
		moveq.l    #-2,d5
		movea.l    (a4),a0
		add.w      20(a0),d5
		cmp.w      #$0008,d5
		bge.s      A_checkbox_63
		moveq.l    #8,d5
A_checkbox_63:
		movea.l    (a4),a0
		move.w     20(a0),d6
		muls.w     4(a0),d6
		ext.l      d6
		divs.w     6(a0),d6
		subq.w     #4,d6
		cmp.w      #$0008,d6
		bge.s      A_checkbox_64
		moveq.l    #8,d6
A_checkbox_64:
		moveq.l    #2,d0
		add.w      10(a2),d0
		move.w     d0,(a3)
		move.w     16(a2),d1
		movea.l    (a4),a0
		sub.w      20(a0),d1
		asr.w      #1,d1
		add.w      12(a2),d1
		move.w     d1,2(a3)
		move.w     (a3),d2
		add.w      d6,d2
		move.w     d2,4(a3)
		move.w     2(a3),d0
		add.w      d5,d0
		move.w     d0,6(a3)
		bra.s      A_checkbox_65
A_checkbox_62:
		moveq.l    #-2,d5
		add.w      16(a2),d5
		cmp.w      #$0008,d5
		bge.s      A_checkbox_66
		moveq.l    #8,d5
A_checkbox_66:
		moveq.l    #-2,d6
		add.w      14(a2),d6
		cmp.w      #$0008,d6
		bge.s      A_checkbox_67
		moveq.l    #8,d6
A_checkbox_67:
		move.w     14(a2),d0
		sub.w      d6,d0
		asr.w      #1,d0
		add.w      10(a2),d0
		move.w     d0,(a3)
		move.w     16(a2),d1
		sub.w      d5,d1
		asr.w      #1,d1
		add.w      12(a2),d1
		move.w     d1,2(a3)
		move.w     (a3),d2
		add.w      d6,d2
		subq.w     #2,d2
		move.w     d2,4(a3)
		move.w     2(a3),d0
		add.w      d5,d0
		subq.w     #2,d0
		move.w     d0,6(a3)
A_checkbox_65:
		cmp.w      #$0010,d7
		bne.s      A_checkbox_68
		cmpi.w     #$0010,4(a7)
		beq.s      A_checkbox_69
A_checkbox_68:
		movea.l    (a4),a0
		cmp.w      20(a0),d7
		bne.s      A_checkbox_70
		move.w     6(a7),d0
		ble.s      A_checkbox_70
		cmp.w      #$000F,d7
		blt.s      A_checkbox_70
A_checkbox_69:
		movea.l    (a4),a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$0100,d0
		bne.s      A_checkbox_70
		moveq.l    #1,d1
		and.l      26(a2),d1
		beq.s      A_checkbox_70
		addq.w     #2,4(a3)
		addq.w     #2,6(a3)
A_checkbox_70:
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
		bra        A_checkbox_51
A_checkbox_53:
		moveq.l    #16,d0
		move.w     4(a2),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    (a2),a0
		and.w      8(a0,d1.l),d0
		beq        A_checkbox_71
		moveq.l    #-4,d4
		add.w      4(a7),d4
		asr.w      #1,d4
		cmp.w      #$0004,d4
		bge.s      A_checkbox_72
		moveq.l    #4,d4
A_checkbox_72:
		moveq.l    #-4,d3
		add.w      d7,d3
		asr.w      #1,d3
		cmp.w      #$0004,d3
		bge.s      A_checkbox_73
		moveq.l    #4,d3
A_checkbox_73:
		move.w     6(a7),d0
		bne.s      A_checkbox_74
		move.w     4(a7),d1
		asr.w      #1,d1
		add.w      d1,18(a7)
A_checkbox_74:
		move.w     d7,d0
		asr.w      #1,d0
		add.w      d0,16(a7)
		move.w     14(a7),d1
		beq.s      A_checkbox_75
		moveq.l    #1,d2
		and.w      8(a2),d2
		bne.s      A_checkbox_76
A_checkbox_75:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		movea.l    (a4),a0
		cmpi.w     #$0008,28(a0)
		ble.s      A_checkbox_77
		moveq.l    #1,d0
		jsr        Avdi_getRGB
		moveq.l    #1,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_color
A_checkbox_77:
		move.w     d3,-(a7)
		move.w     d4,-(a7)
		move.w     20(a7),d2
		move.w     22(a7),d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        v_ellipse
		addq.w     #4,a7
A_checkbox_76:
		moveq.l    #1,d0
		and.w      8(a2),d0
		beq        A_checkbox_51
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		moveq.l    #-3,d0
		add.w      d3,d0
		subq.w     #2,d0
		ble.s      A_checkbox_78
		moveq.l    #-3,d1
		add.w      d3,d1
		bra.s      A_checkbox_79
A_checkbox_78:
		moveq.l    #2,d1
A_checkbox_79:
		move.w     d1,-(a7)
		moveq.l    #-3,d0
		add.w      d4,d0
		subq.w     #2,d0
		ble.s      A_checkbox_80
		moveq.l    #-3,d1
		add.w      d4,d1
		bra.s      A_checkbox_81
A_checkbox_80:
		moveq.l    #2,d1
A_checkbox_81:
		move.w     d1,-(a7)
		move.w     20(a7),d2
		move.w     22(a7),d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        v_ellipse
		addq.w     #4,a7
		bra        A_checkbox_51
A_checkbox_71:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_width
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		movea.l    (a4),a0
		cmpi.w     #$0008,28(a0)
		ble.s      A_checkbox_82
		moveq.l    #1,d0
		jsr        Avdi_getRGB
		moveq.l    #1,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_color
A_checkbox_82:
		clr.w      d2
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_ends
		move.w     6(a7),d0
		ble.s      A_checkbox_83
		moveq.l    #-4,d5
		movea.l    (a4),a0
		add.w      20(a0),d5
		cmp.w      #$0008,d5
		bge.s      A_checkbox_84
		moveq.l    #8,d5
A_checkbox_84:
		movea.l    (a4),a0
		move.w     20(a0),d6
		muls.w     4(a0),d6
		ext.l      d6
		divs.w     6(a0),d6
		subq.w     #4,d6
		cmp.w      #$0008,d6
		bge.s      A_checkbox_85
		moveq.l    #8,d6
A_checkbox_85:
		moveq.l    #2,d0
		add.w      10(a2),d0
		move.w     d0,(a3)
		move.w     16(a2),d1
		sub.w      d5,d1
		asr.w      #1,d1
		add.w      12(a2),d1
		move.w     d1,2(a3)
		move.w     (a3),d2
		add.w      d6,d2
		move.w     d2,4(a3)
		move.w     2(a3),d3
		add.w      d5,d3
		move.w     d3,6(a3)
		bra.s      A_checkbox_86
A_checkbox_83:
		moveq.l    #-2,d5
		add.w      16(a2),d5
		cmp.w      #$0008,d5
		bge.s      A_checkbox_87
		moveq.l    #8,d5
A_checkbox_87:
		moveq.l    #-2,d6
		add.w      14(a2),d6
		cmp.w      #$0008,d6
		bge.s      A_checkbox_88
		moveq.l    #8,d6
A_checkbox_88:
		move.w     14(a2),d0
		sub.w      d6,d0
		asr.w      #1,d0
		add.w      10(a2),d0
		move.w     d0,(a3)
		move.w     16(a2),d1
		sub.w      d5,d1
		asr.w      #1,d1
		add.w      12(a2),d1
		move.w     d1,2(a3)
		move.w     (a3),d2
		add.w      d6,d2
		subq.w     #2,d2
		move.w     d2,4(a3)
		move.w     2(a3),d3
		add.w      d5,d3
		subq.w     #2,d3
		move.w     d3,6(a3)
A_checkbox_86:
		move.w     14(a7),d0
		beq.s      A_checkbox_89
		moveq.l    #1,d1
		and.w      8(a2),d1
		bne.s      A_checkbox_90
A_checkbox_89:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		movea.l    (a4),a0
		cmpi.w     #$0008,28(a0)
		ble.s      A_checkbox_91
		moveq.l    #1,d0
		jsr        Avdi_getRGB
		moveq.l    #1,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_color
A_checkbox_91:
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
A_checkbox_90:
		moveq.l    #1,d0
		and.w      8(a2),d0
		beq        A_checkbox_51
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		movea.l    a3,a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		move.w     (a3),12(a7)
		move.w     4(a3),(a3)
		move.w     12(a7),4(a3)
		movea.l    a3,a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		move.w     (a3),d0
		add.w      4(a3),d0
		move.w     d0,12(a7)
		moveq.l    #1,d1
		and.w      d0,d1
		beq.s      A_checkbox_92
		asr.w      #1,d0
		move.w     d0,(a3)
		moveq.l    #1,d2
		add.w      d0,d2
		move.w     d2,4(a3)
		bra.s      A_checkbox_93
A_checkbox_92:
		move.w     12(a7),d0
		asr.w      #1,d0
		move.w     d0,4(a3)
		move.w     d0,(a3)
A_checkbox_93:
		move.w     2(a3),d0
		add.w      6(a3),d0
		move.w     d0,12(a7)
		moveq.l    #1,d1
		and.w      d0,d1
		beq.s      A_checkbox_94
		asr.w      #1,d0
		move.w     d0,2(a3)
		moveq.l    #1,d2
		add.w      d0,d2
		move.w     d2,6(a3)
		bra.s      A_checkbox_95
A_checkbox_94:
		move.w     12(a7),d0
		asr.w      #1,d0
		move.w     d0,6(a3)
		move.w     d0,2(a3)
A_checkbox_95:
		movea.l    a3,a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
A_checkbox_51:
		lea.l      20(a7),a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #-10,d0
		and.w      8(a2),d0
		lea.l      56(a7),a7
		movem.l    (a7)+,d2-d7/a2-a5
		rts

		.globl A_innerframe
A_innerframe:
		movem.l    d2-d7/a2-a6,-(a7)
		lea.l      -66(a7),a7
		movea.l    114(a7),a2
		clr.w      d3
		lea.l      58(a7),a3
		lea.l      ACSblk,a4
		move.w     22(a2),d0
		bne.s      A_innerframe_1
		move.w     24(a2),d1
		beq.s      A_innerframe_2
A_innerframe_1:
		move.w     18(a2),(a3)
		move.w     20(a2),2(a3)
		move.w     18(a2),d0
		add.w      22(a2),d0
		subq.w     #1,d0
		move.w     d0,4(a3)
		move.w     20(a2),d1
		add.w      24(a2),d1
		subq.w     #1,d1
		move.w     d1,6(a3)
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		bra.s      A_innerframe_3
A_innerframe_2:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_innerframe_3:
		movea.l    (a4),a0
		move.w     18(a0),d0
		asr.w      #1,d0
		add.w      10(a2),d0
		move.w     d0,(a3)
		move.w     20(a0),d1
		asr.w      #1,d1
		add.w      12(a2),d1
		move.w     d1,2(a3)
		move.w     (a3),d2
		add.w      14(a2),d2
		subq.w     #1,d2
		sub.w      18(a0),d2
		move.w     d2,4(a3)
		move.w     2(a3),d0
		add.w      16(a2),d0
		subq.w     #1,d0
		sub.w      20(a0),d0
		move.w     d0,6(a3)
		lea.l      26(a2),a1
		move.l     a1,(a7)
		move.w     6(a2),d4
		move.w     8(a2),d2
		eor.w      d2,d4
		tst.w      d4
		bne        A_innerframe_4
		move.w     16(a0),d0
		moveq.l    #1,d1
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_width
		clr.w      d2
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_ends
		lea.l      38(a7),a6
		moveq.l    #-1,d0
		add.w      (a3),d0
		move.w     d0,16(a6)
		move.w     d0,12(a6)
		move.w     d0,(a6)
		moveq.l    #-1,d1
		add.w      2(a3),d1
		move.w     d1,18(a6)
		move.w     d1,6(a6)
		move.w     d1,2(a6)
		moveq.l    #2,d0
		add.w      4(a3),d0
		move.w     d0,8(a6)
		move.w     d0,4(a6)
		moveq.l    #2,d1
		add.w      6(a3),d1
		move.w     d1,14(a6)
		move.w     d1,10(a6)
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_innerframe_5
		movea.l    (a7),a1
		move.l     (a1),d6
		moveq.l    #16,d0
		asr.l      d0,d6
		and.w      #$000F,d6
		move.w     16(a0),d0
		move.w     d6,d1
		jsr        vsl_color
		movea.l    a6,a0
		moveq.l    #5,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
A_innerframe_5:
		lea.l      20(a7),a5
		clr.w      (a5)
		bra.s      A_innerframe_6
A_innerframe_7:
		move.w     (a5),d0
		add.w      d0,d0
		subq.w     #1,0(a6,d0.w)
		addq.w     #1,(a5)
A_innerframe_6:
		cmpi.w     #$000A,(a5)
		blt.s      A_innerframe_7
		moveq.l    #15,d6
		movea.l    (a7),a0
		and.w      2(a0),d6
		move.w     d6,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vsl_color
		movea.l    a6,a0
		moveq.l    #5,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		movea.l    (a7),a0
		move.l     (a0),d6
		moveq.l    #12,d0
		asr.l      d0,d6
		and.w      #$000F,d6
		move.l     (a0),d5
		moveq.l    #9,d1
		asr.l      d1,d5
		and.w      #$0007,d5
		cmp.w      #$0008,d6
		bne.s      A_innerframe_8
		cmp.w      #$0007,d5
		bne.s      A_innerframe_8
		movea.l    (a4),a1
		cmpi.w     #$0004,28(a1)
		bge.s      A_innerframe_8
		moveq.l    #112,d5
		and.w      692(a1),d5
		asr.w      #4,d5
		moveq.l    #15,d6
		and.w      692(a1),d6
		moveq.l    #1,d3
A_innerframe_8:
		movea.l    (a4),a0
		movea.l    572(a0),a1
		move.w     14(a1),d0
		and.w      #$0100,d0
		beq.s      A_innerframe_9
		clr.w      d6
		move.w     d6,d5
A_innerframe_9:
		tst.w      d5
		bne.s      A_innerframe_10
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		bra.s      A_innerframe_11
A_innerframe_10:
		cmp.w      #$0007,d5
		bne.s      A_innerframe_12
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		bra.s      A_innerframe_11
A_innerframe_12:
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		move.w     d5,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_style
A_innerframe_11:
		move.w     d6,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
		move.w     4(a2),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a2),a6
		adda.l     d0,a6
		move.l     12(a6),12(a7)
		movea.l    12(a7),a0
		move.l     12(a0),4(a7)
		move.l     4(a7),d2
		beq        A_innerframe_4
		movea.l    d2,a0
		jsr        strlen
		tst.w      d0
		ble        A_innerframe_4
		lea.l      24(a6),a0
		move.l     a0,8(a7)
		moveq.l    #32,d0
		and.w      8(a6),d0
		bne.s      A_innerframe_13
		move.w     8(a0),d1
		and.w      #$8000,d1
		beq.s      A_innerframe_13
		move.w     10(a0),d5
		bra.s      A_innerframe_14
A_innerframe_13:
		clr.w      d5
A_innerframe_14:
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_rotation
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    (a7),a0
		move.l     (a0),d6
		asr.l      #4,d6
		and.w      #$000F,d6
		move.w     d6,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vst_color
		movea.l    a5,a1
		movea.l    a5,a0
		moveq.l    #5,d2
		clr.w      d1
		movea.l    (a4),a6
		move.w     16(a6),d0
		jsr        vst_alignment
		lea.l      16(a7),a6
		movea.l    (a7),a0
		move.l     (a0),d0
		and.l      #$08000000,d0
		beq.s      A_innerframe_15
		movea.l    (a4),a1
		move.w     660(a1),d1
		move.w     16(a1),d0
		jsr        vst_font
		pea.l      18(a7)
		pea.l      (a6)
		movea.l    a5,a1
		movea.l    a5,a0
		move.l     a1,-(a7)
		movea.l    (a4),a1
		move.w     662(a1),d1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vst_height
		addq.w     #8,a7
		movea.l    (a4),a0
		move.w     20(a0),d6
		sub.w      18(a7),d6
		asr.w      #1,d6
		bra.s      A_innerframe_16
A_innerframe_15:
		movea.l    (a4),a0
		move.w     656(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		clr.w      d6
		pea.l      18(a7)
		pea.l      (a6)
		movea.l    a5,a1
		movea.l    a5,a0
		move.l     a1,-(a7)
		movea.l    (a4),a1
		move.w     658(a1),d1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vst_height
		addq.w     #8,a7
A_innerframe_16:
		lea.l      22(a7),a5
		movea.l    a5,a1
		movea.l    4(a7),a0
		move.l     a1,-(a7)
		movea.l    (a4),a1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vqt_extent
		move.w     4(a5),d0
		sub.w      (a5),d0
		addq.w     #1,d0
		move.w     d0,(a6)
		movea.l    (a7),a0
		move.l     (a0),d1
		moveq.l    #24,d2
		asr.l      d2,d1
		and.w      #$0007,d1
		cmp.w      #$0006,d1
		bhi.s      A_innerframe_17
		add.w      d1,d1
		move.w     J47(pc,d1.w),d1
		jmp        J47(pc,d1.w)
J47:
		dc.w A_innerframe_17-J47
		dc.w A_innerframe_18-J47
		dc.w A_innerframe_19-J47
		dc.w A_innerframe_17-J47
		dc.w A_innerframe_20-J47
		dc.w A_innerframe_21-J47
		dc.w A_innerframe_22-J47
A_innerframe_18:
		move.w     14(a2),d7
		sub.w      (a6),d7
		asr.w      #1,d7
		add.w      10(a2),d7
		bra.s      A_innerframe_23
A_innerframe_19:
		move.w     10(a2),d7
		add.w      14(a2),d7
		sub.w      (a6),d7
		movea.l    (a4),a0
		sub.w      18(a0),d7
		bra.s      A_innerframe_23
A_innerframe_20:
		move.w     10(a2),d7
		movea.l    (a4),a0
		add.w      18(a0),d7
		bra.s      A_innerframe_24
A_innerframe_21:
		move.w     14(a2),d7
		sub.w      (a6),d7
		asr.w      #1,d7
		add.w      10(a2),d7
		bra.s      A_innerframe_24
A_innerframe_22:
		move.w     10(a2),d7
		add.w      14(a2),d7
		sub.w      (a6),d7
		movea.l    (a4),a0
		sub.w      18(a0),d7
A_innerframe_24:
		move.w     12(a2),d0
		add.w      16(a2),d0
		movea.l    (a4),a0
		sub.w      20(a0),d0
		add.w      d0,d6
		bra.s      A_innerframe_25
A_innerframe_17:
		move.w     10(a2),d7
		movea.l    (a4),a0
		add.w      18(a0),d7
A_innerframe_23:
		add.w      12(a2),d6
A_innerframe_25:
		move.w     d7,d0
		add.w      8(a5),d0
		sub.w      (a5),d0
		move.w     d0,4(a5)
		move.w     d6,d1
		add.w      10(a5),d1
		add.w      2(a5),d1
		subq.w     #1,d1
		move.w     d1,6(a5)
		moveq.l    #-2,d0
		add.w      d7,d0
		move.w     d0,(a5)
		move.w     d6,2(a5)
		movea.l    a5,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
		movea.l    (a7),a0
		move.l     (a0),d0
		moveq.l    #28,d1
		asr.l      d1,d0
		and.l      #$00000001,d0
		beq.s      A_innerframe_26
		tst.w      d3
		beq.s      A_innerframe_26
		move.w     #$0080,d2
		movea.l    (a4),a1
		and.w      692(a1),d2
		beq.s      A_innerframe_26
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vswr_mode
		bra.s      A_innerframe_27
A_innerframe_26:
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
A_innerframe_27:
		clr.w      -(a7)
		move.w     d5,d2
		movea.l    6(a7),a0
		move.w     d6,d1
		move.w     d7,d0
		bsr        g_string
		addq.w     #2,a7
A_innerframe_4:
		moveq.l    #1,d0
		and.w      d4,d0
		bne.s      A_innerframe_28
		moveq.l    #1,d1
		and.w      8(a2),d1
		beq.s      A_innerframe_29
A_innerframe_28:
		addq.w     #1,(a3)
		addq.w     #1,2(a3)
		subq.w     #1,4(a3)
		subq.w     #1,6(a3)
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
A_innerframe_29:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #-10,d0
		and.w      8(a2),d0
		lea.l      66(a7),a7
		movem.l    (a7)+,d2-d7/a2-a6
		rts

		.globl A_3Dbutton
A_3Dbutton:
		movem.l    d2-d7/a2-a6,-(a7)
		lea.l      -72(a7),a7
		movea.l    120(a7),a2
		lea.l      60(a7),a3
		lea.l      ACSblk,a4
		move.w     22(a2),d0
		bne.s      A_3Dbutton_1
		move.w     24(a2),d1
		beq.s      A_3Dbutton_2
A_3Dbutton_1:
		move.w     18(a2),(a3)
		move.w     20(a2),2(a3)
		move.w     22(a2),d0
		beq.s      A_3Dbutton_3
		move.w     18(a2),d1
		add.w      d0,d1
		subq.w     #1,d1
		bra.s      A_3Dbutton_4
A_3Dbutton_3:
		move.w     18(a2),d1
A_3Dbutton_4:
		move.w     d1,4(a3)
		move.w     24(a2),d0
		beq.s      A_3Dbutton_5
		move.w     20(a2),d1
		add.w      d0,d1
		subq.w     #1,d1
		bra.s      A_3Dbutton_6
A_3Dbutton_5:
		move.w     20(a2),d1
A_3Dbutton_6:
		move.w     d1,6(a3)
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		bra.s      A_3Dbutton_7
A_3Dbutton_2:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_3Dbutton_7:
		move.w     4(a2),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a2),a0
		adda.l     d0,a0
		move.l     a0,4(a7)
		lea.l      24(a0),a0
		moveq.l    #32,d2
		movea.l    4(a7),a1
		and.w      8(a1),d2
		bne.s      A_3Dbutton_8
		move.w     8(a0),d0
		and.w      #$8000,d0
		beq.s      A_3Dbutton_8
		move.w     10(a0),16(a7)
		bra.s      A_3Dbutton_9
A_3Dbutton_8:
		clr.w      16(a7)
A_3Dbutton_9:
		movea.l    4(a7),a0
		movea.l    12(a0),a0
		move.l     12(a0),(a7)
		bne.s      A_3Dbutton_10
		clr.w      d4
		bra.s      A_3Dbutton_11
A_3Dbutton_10:
		movea.l    (a7),a0
		jsr        strlen
		move.l     d0,d4
A_3Dbutton_11:
		move.l     26(a2),68(a7)
		move.l     68(a7),d0
		moveq.l    #20,d1
		asr.l      d1,d0
		and.w      #$000F,d0
		cmp.w      #$0007,d0
		ble.s      A_3Dbutton_12
		add.w      #$FFF0,d0
A_3Dbutton_12:
		move.w     68(a7),d1
		lsl.w      #8,d1
		asr.w      #8,d1
		and.w      #$000F,d1
		move.w     d1,14(a7)
		tst.w      d1
		ble.s      A_3Dbutton_13
		moveq.l    #2,d2
		movea.l    4(a7),a0
		and.w      8(a0),d2
		beq.s      A_3Dbutton_13
		addq.w     #1,14(a7)
A_3Dbutton_13:
		moveq.l    #15,d1
		and.w      70(a7),d1
		subq.w     #8,d1
		bne.s      A_3Dbutton_14
		move.w     70(a7),d2
		lsr.w      #4,d2
		and.w      #$0007,d2
		subq.w     #7,d2
		bne.s      A_3Dbutton_14
		movea.l    (a4),a0
		cmpi.w     #$0004,28(a0)
		bge.s      A_3Dbutton_14
		moveq.l    #1,d1
		bra.s      A_3Dbutton_15
A_3Dbutton_14:
		clr.w      d1
A_3Dbutton_15:
		move.w     d1,10(a7)
		movea.l    (a4),a0
		move.w     692(a0),d6
		movea.l    572(a0),a1
		move.w     14(a1),d7
		and.w      #$0100,d7
		tst.w      d7
		beq.s      A_3Dbutton_16
		cmpi.w     #$0001,14(a7)
		ble.s      A_3Dbutton_16
		moveq.l    #68,d2
		movea.l    4(a7),a0
		and.w      8(a0),d2
		bne.s      A_3Dbutton_16
		moveq.l    #1,d1
		bra.s      A_3Dbutton_17
A_3Dbutton_16:
		clr.w      d1
A_3Dbutton_17:
		move.w     d1,8(a7)
		tst.w      d1
		beq.s      A_3Dbutton_18
		subq.w     #2,d0
		addq.w     #2,14(a7)
A_3Dbutton_18:
		move.w     10(a2),d1
		sub.w      d0,d1
		move.w     d1,(a3)
		move.w     12(a2),d2
		sub.w      d0,d2
		move.w     d2,2(a3)
		move.w     10(a2),d1
		add.w      14(a2),d1
		add.w      d0,d1
		subq.w     #1,d1
		move.w     d1,4(a3)
		move.w     12(a2),d2
		add.w      16(a2),d2
		add.w      d0,d2
		subq.w     #1,d2
		move.w     d2,6(a3)
		move.w     4(a3),d0
		cmp.w      (a3),d0
		bge.s      A_3Dbutton_19
		move.w     (a3),4(a3)
A_3Dbutton_19:
		move.w     6(a3),d0
		cmp.w      2(a3),d0
		bge.s      A_3Dbutton_20
		move.w     2(a3),6(a3)
A_3Dbutton_20:
		move.w     8(a2),d0
		move.w     6(a2),d1
		eor.w      d1,d0
		move.w     d0,18(a7)
		tst.w      d0
		bne        A_3Dbutton_21
		move.l     68(a7),d2
		and.l      #$80000000,d2
		bne        A_3Dbutton_22
		movea.l    (a4),a0
		move.w     16(a0),d0
		moveq.l    #1,d1
		jsr        vswr_mode
		move.w     10(a7),d0
		beq.s      A_3Dbutton_23
		moveq.l    #112,d3
		and.w      d6,d3
		asr.w      #4,d3
		moveq.l    #15,d5
		and.w      d6,d5
		bra.s      A_3Dbutton_24
A_3Dbutton_23:
		move.w     70(a7),d3
		lsr.w      #4,d3
		and.w      #$0007,d3
		moveq.l    #15,d5
		and.w      70(a7),d5
A_3Dbutton_24:
		tst.w      d7
		beq.s      A_3Dbutton_25
		clr.w      d3
A_3Dbutton_25:
		tst.w      d3
		bne.s      A_3Dbutton_26
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		bra.s      A_3Dbutton_27
A_3Dbutton_26:
		cmp.w      #$0007,d3
		bne.s      A_3Dbutton_28
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		bra.s      A_3Dbutton_27
A_3Dbutton_28:
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		move.w     d3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_style
A_3Dbutton_27:
		move.w     d5,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
A_3Dbutton_22:
		tst.w      d4
		ble        A_3Dbutton_21
		move.w     70(a7),d5
		lsr.w      #7,d5
		and.w      #$0001,d5
		move.w     10(a7),d0
		beq.s      A_3Dbutton_29
		tst.w      d5
		bne.s      A_3Dbutton_30
		move.w     #$0080,d5
		and.w      d6,d5
		asr.w      #7,d5
A_3Dbutton_30:
		tst.w      d5
		bne.s      A_3Dbutton_29
		move.w     d6,d0
		and.w      #$0100,d0
		beq.s      A_3Dbutton_29
		movea.l    (a7),a0
		jsr        Ast_toupper
A_3Dbutton_29:
		tst.w      d5
		beq.s      A_3Dbutton_31
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		bra.s      A_3Dbutton_32
A_3Dbutton_31:
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
A_3Dbutton_32:
		lea.l      20(a7),a1
		lea.l      20(a7),a0
		moveq.l    #5,d2
		clr.w      d1
		movea.l    (a4),a5
		move.w     16(a5),d0
		jsr        vst_alignment
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_rotation
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_effects
		move.w     70(a7),d1
		lsr.w      #8,d1
		and.w      #$000F,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_color
		lea.l      22(a7),a5
		move.l     68(a7),d0
		and.l      #$40000000,d0
		beq.s      A_3Dbutton_33
		move.w     10(a7),d1
		beq.s      A_3Dbutton_34
		movea.l    (a4),a0
		move.w     692(a0),d2
		and.w      #$0100,d2
		bne.s      A_3Dbutton_33
A_3Dbutton_34:
		movea.l    (a4),a0
		move.w     660(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		pea.l      12(a7)
		pea.l      (a5)
		lea.l      28(a7),a1
		lea.l      28(a7),a0
		movea.l    (a4),a6
		move.w     662(a6),d1
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
		bra.s      A_3Dbutton_35
A_3Dbutton_33:
		movea.l    (a4),a0
		move.w     656(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		pea.l      12(a7)
		pea.l      (a5)
		lea.l      28(a7),a1
		lea.l      28(a7),a0
		movea.l    (a4),a6
		move.w     658(a6),d1
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
A_3Dbutton_35:
		lea.l      24(a7),a1
		movea.l    (a7),a0
		movea.l    (a4),a6
		move.w     16(a6),d0
		jsr        vqt_extent
		move.w     28(a7),d0
		sub.w      24(a7),d0
		move.w     d0,(a5)
		move.w     16(a2),d5
		sub.w      12(a7),d5
		asr.w      #1,d5
		add.w      12(a2),d5
		move.l     68(a7),d1
		moveq.l    #28,d2
		asr.l      d2,d1
		and.w      #$0003,d1
		tst.w      d1
		beq.s      A_3Dbutton_36
		subq.w     #1,d1
		beq.s      A_3Dbutton_37
		bra.s      A_3Dbutton_38
A_3Dbutton_36:
		move.w     (a3),d3
		bra.s      A_3Dbutton_39
A_3Dbutton_37:
		move.w     4(a3),d3
		sub.w      (a5),d3
		addq.w     #1,d3
		bra.s      A_3Dbutton_39
A_3Dbutton_38:
		move.w     (a3),d3
		add.w      4(a3),d3
		sub.w      (a5),d3
		asr.w      #1,d3
		addq.w     #1,d3
A_3Dbutton_39:
		clr.w      -(a7)
		move.w     18(a7),d2
		movea.l    2(a7),a0
		move.w     d5,d1
		move.w     d3,d0
		bsr        g_string
		addq.w     #2,a7
A_3Dbutton_21:
		tst.w      d7
		beq.s      A_3Dbutton_40
		moveq.l    #1,d3
		move.w     d3,d5
		bra.s      A_3Dbutton_41
A_3Dbutton_40:
		move.w     70(a7),d5
		moveq.l    #12,d0
		lsr.w      d0,d5
		and.w      #$000F,d5
		move.w     68(a7),d3
		lsr.w      #8,d3
		and.w      #$00FF,d3
		and.w      #$000F,d3
A_3Dbutton_41:
		move.w     14(a7),d0
		beq        A_3Dbutton_42
		move.w     18(a7),d1
		beq.s      A_3Dbutton_43
		cmp.w      d5,d3
		beq        A_3Dbutton_42
A_3Dbutton_43:
		move.w     14(a7),d7
		tst.w      d7
		bpl.s      A_3Dbutton_44
		neg.w      d7
A_3Dbutton_44:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_width
		clr.w      d2
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_ends
		moveq.l    #1,d0
		and.w      8(a2),d0
		beq.s      A_3Dbutton_45
		move.w     10(a7),d1
		beq.s      A_3Dbutton_46
		move.w     d6,d2
		and.w      #$0400,d2
		beq.s      A_3Dbutton_47
		cmp.w      #$0009,d3
		beq.s      A_3Dbutton_48
A_3Dbutton_47:
		move.w     d6,d0
		and.w      #$0200,d0
		beq.s      A_3Dbutton_46
		tst.w      d3
		beq.s      A_3Dbutton_48
A_3Dbutton_46:
		move.w     d3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		bra.s      A_3Dbutton_49
A_3Dbutton_45:
		move.w     10(a7),d0
		beq.s      A_3Dbutton_50
		move.w     d6,d1
		and.w      #$0400,d1
		beq.s      A_3Dbutton_51
		cmp.w      #$0009,d5
		beq.s      A_3Dbutton_48
A_3Dbutton_51:
		move.w     d6,d0
		and.w      #$0200,d0
		beq.s      A_3Dbutton_50
		tst.w      d5
		bne.s      A_3Dbutton_50
A_3Dbutton_48:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		moveq.l    #7,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		moveq.l    #1,d4
		bra.s      A_3Dbutton_52
A_3Dbutton_50:
		move.w     d5,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
A_3Dbutton_49:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		clr.w      d4
A_3Dbutton_52:
		lea.l      40(a7),a5
		move.w     (a3),d0
		move.w     d0,4(a5)
		move.w     d0,(a5)
		move.w     6(a3),2(a5)
		move.w     2(a3),d0
		move.w     d0,10(a5)
		move.w     d0,6(a5)
		move.w     4(a3),8(a5)
		bra        A_3Dbutton_53
A_3Dbutton_57:
		move.w     8(a7),d0
		beq.s      A_3Dbutton_54
		cmp.w      #$0002,d7
		bge.s      A_3Dbutton_54
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
A_3Dbutton_54:
		subq.w     #1,(a5)
		addq.w     #1,2(a5)
		subq.w     #1,4(a5)
		subq.w     #1,6(a5)
		addq.w     #1,8(a5)
		subq.w     #1,10(a5)
		tst.w      d4
		beq.s      A_3Dbutton_55
		move.w     #$5555,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_udsty
		movea.l    a5,a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		moveq.l    #1,d0
		and.w      4(a5),d0
		bne.s      A_3Dbutton_56
		move.w     #$AAAA,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_udsty
A_3Dbutton_56:
		lea.l      4(a5),a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		bra.s      A_3Dbutton_53
A_3Dbutton_55:
		movea.l    a5,a0
		moveq.l    #3,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
A_3Dbutton_53:
		move.w     d7,d0
		subq.w     #1,d7
		tst.w      d0
		bne        A_3Dbutton_57
		move.w     14(a7),d7
		tst.w      d7
		bpl.s      A_3Dbutton_58
		neg.w      d7
A_3Dbutton_58:
		moveq.l    #1,d0
		and.w      8(a2),d0
		beq.s      A_3Dbutton_59
		move.w     10(a7),d1
		beq.s      A_3Dbutton_60
		move.w     d6,d2
		and.w      #$0400,d2
		beq.s      A_3Dbutton_61
		cmp.w      #$0009,d5
		beq.s      A_3Dbutton_62
A_3Dbutton_61:
		move.w     d6,d0
		and.w      #$0200,d0
		beq.s      A_3Dbutton_60
		tst.w      d5
		beq.s      A_3Dbutton_62
A_3Dbutton_60:
		move.w     d5,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		bra.s      A_3Dbutton_63
A_3Dbutton_59:
		move.w     10(a7),d0
		beq.s      A_3Dbutton_64
		move.w     d6,d1
		and.w      #$0400,d1
		beq.s      A_3Dbutton_65
		cmp.w      #$0009,d3
		beq.s      A_3Dbutton_62
A_3Dbutton_65:
		move.w     d6,d0
		and.w      #$0200,d0
		beq.s      A_3Dbutton_64
		tst.w      d3
		bne.s      A_3Dbutton_64
A_3Dbutton_62:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		moveq.l    #7,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		moveq.l    #1,d4
		bra.s      A_3Dbutton_66
A_3Dbutton_64:
		move.w     d3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
A_3Dbutton_63:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		clr.w      d4
A_3Dbutton_66:
		move.w     (a3),(a5)
		move.w     6(a3),d0
		move.w     d0,2(a5)
		move.w     d0,6(a5)
		move.w     2(a3),10(a5)
		move.w     4(a3),d0
		move.w     d0,8(a5)
		move.w     d0,4(a5)
		bra        A_3Dbutton_67
A_3Dbutton_71:
		move.w     8(a7),d0
		beq.s      A_3Dbutton_68
		cmp.w      #$0002,d7
		bge.s      A_3Dbutton_68
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
A_3Dbutton_68:
		subq.w     #1,(a5)
		addq.w     #1,2(a5)
		addq.w     #1,4(a5)
		addq.w     #1,6(a5)
		addq.w     #1,8(a5)
		subq.w     #1,10(a5)
		tst.w      d4
		beq.s      A_3Dbutton_69
		move.w     #$5555,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_udsty
		lea.l      4(a5),a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		moveq.l    #1,d0
		and.w      4(a5),d0
		beq.s      A_3Dbutton_70
		move.w     #$AAAA,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_udsty
A_3Dbutton_70:
		movea.l    a5,a0
		moveq.l    #2,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		bra.s      A_3Dbutton_67
A_3Dbutton_69:
		movea.l    a5,a0
		moveq.l    #3,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
A_3Dbutton_67:
		move.w     d7,d0
		subq.w     #1,d7
		tst.w      d0
		bne        A_3Dbutton_71
		moveq.l    #5,d0
		movea.l    4(a7),a0
		and.w      8(a0),d0
		subq.w     #5,d0
		bne.s      A_3Dbutton_42
		moveq.l    #32,d1
		and.w      10(a0),d1
		bne.s      A_3Dbutton_42
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vsl_type
		move.w     70(a7),d1
		lsr.w      #8,d1
		and.w      #$000F,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		subq.w     #1,(a5)
		addq.w     #1,2(a5)
		addq.w     #1,4(a5)
		addq.w     #1,6(a5)
		addq.w     #1,8(a5)
		subq.w     #1,10(a5)
		movea.l    a5,a0
		moveq.l    #3,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
		move.w     (a5),4(a5)
		move.w     10(a5),6(a5)
		movea.l    a5,a0
		moveq.l    #3,d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_pline
A_3Dbutton_42:
		move.w     14(a7),d0
		beq.s      A_3Dbutton_72
		cmp.w      d5,d3
		bne.s      A_3Dbutton_73
A_3Dbutton_72:
		moveq.l    #1,d0
		and.w      18(a7),d0
		bne.s      A_3Dbutton_74
		moveq.l    #1,d1
		and.w      8(a2),d1
		beq.s      A_3Dbutton_73
A_3Dbutton_74:
		moveq.l    #3,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
A_3Dbutton_73:
		moveq.l    #8,d0
		and.w      18(a7),d0
		bne.s      A_3Dbutton_75
		moveq.l    #8,d1
		and.w      8(a2),d1
		beq.s      A_3Dbutton_76
A_3Dbutton_75:
		moveq.l    #4,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		moveq.l    #4,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_style
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_color
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    a3,a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        v_bar
A_3Dbutton_76:
		movea.l    a3,a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #-26,d0
		and.w      8(a2),d0
		lea.l      72(a7),a7
		movem.l    (a7)+,d2-d7/a2-a6
		rts

		.globl A_title
A_title:
		movem.l    d2-d5/a2-a6,-(a7)
		lea.l      -30(a7),a7
		movea.l    70(a7),a2
		lea.l      ACSblk,a4
		move.w     22(a2),d0
		bne.s      A_title_1
		move.w     24(a2),d1
		beq.s      A_title_2
A_title_1:
		move.w     18(a2),22(a7)
		move.w     20(a2),24(a7)
		move.w     18(a2),d0
		add.w      22(a2),d0
		subq.w     #1,d0
		move.w     d0,26(a7)
		move.w     20(a2),d1
		add.w      24(a2),d1
		subq.w     #1,d1
		move.w     d1,28(a7)
		lea.l      22(a7),a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #1,d1
		jsr        vs_clip
		bra.s      A_title_3
A_title_2:
		lea.l      22(a7),a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_title_3:
		move.w     6(a2),d0
		move.w     8(a2),d1
		eor.w      d1,d0
		tst.w      d0
		bne        A_title_4
		move.w     4(a2),d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		movea.l    (a2),a3
		adda.l     d2,a3
		movea.l    12(a3),a0
		movea.l    12(a0),a5
		move.l     a5,d1
		beq        A_title_5
		movea.l    a5,a0
		jsr        strlen
		tst.w      d0
		ble        A_title_5
		lea.l      24(a3),a0
		moveq.l    #32,d0
		and.w      8(a3),d0
		bne.s      A_title_6
		move.w     8(a0),d1
		and.w      #$8000,d1
		beq.s      A_title_6
		move.w     10(a0),d3
		bra.s      A_title_7
A_title_6:
		clr.w      d3
A_title_7:
		moveq.l    #8,d0
		and.l      26(a2),d0
		beq.s      A_title_8
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		bra.s      A_title_9
A_title_8:
		moveq.l    #2,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
A_title_9:
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_rotation
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_effects
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vst_color
		lea.l      4(a7),a3
		movea.l    a3,a1
		movea.l    a3,a0
		moveq.l    #5,d2
		clr.w      d1
		movea.l    (a4),a6
		move.w     16(a6),d0
		jsr        vst_alignment
		moveq.l    #4,d0
		and.l      26(a2),d0
		beq.s      A_title_10
		movea.l    (a4),a0
		move.w     660(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		pea.l      2(a7)
		pea.l      4(a7)
		movea.l    a3,a1
		movea.l    a3,a0
		movea.l    (a4),a6
		move.w     662(a6),d1
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
		movea.l    (a4),a0
		move.w     20(a0),d4
		sub.w      2(a7),d4
		bra.s      A_title_11
A_title_10:
		movea.l    (a4),a0
		move.w     656(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		pea.l      2(a7)
		pea.l      4(a7)
		movea.l    a3,a1
		movea.l    a3,a0
		movea.l    (a4),a6
		move.w     658(a6),d1
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
		clr.w      d4
A_title_11:
		lea.l      6(a7),a1
		movea.l    a5,a0
		movea.l    (a4),a3
		move.w     16(a3),d0
		jsr        vqt_extent
		move.w     10(a7),d0
		sub.w      6(a7),d0
		addq.w     #1,d0
		move.w     d0,(a7)
		moveq.l    #3,d1
		and.w      28(a2),d1
		subq.w     #1,d1
		beq.s      A_title_12
		subq.w     #1,d1
		beq.s      A_title_13
		bra.s      A_title_14
A_title_12:
		move.w     14(a2),d5
		sub.w      (a7),d5
		asr.w      #1,d5
		add.w      10(a2),d5
		bra.s      A_title_15
A_title_13:
		move.w     10(a2),d5
		add.w      14(a2),d5
		sub.w      (a7),d5
		addq.w     #1,d5
		bra.s      A_title_15
A_title_14:
		move.w     10(a2),d5
A_title_15:
		clr.w      -(a7)
		move.w     d3,d2
		movea.l    a5,a0
		move.w     12(a2),d1
		add.w      d4,d1
		move.w     d5,d0
		bsr        g_string
		addq.w     #2,a7
A_title_5:
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_type
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_width
		moveq.l    #1,d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_color
		clr.w      d2
		clr.w      d1
		movea.l    (a4),a0
		move.w     16(a0),d0
		jsr        vsl_ends
		move.w     10(a2),6(a7)
		move.w     10(a2),d0
		add.w      14(a2),d0
		subq.w     #1,d0
		move.w     d0,10(a7)
		move.w     12(a2),d1
		add.w      16(a2),d1
		move.w     d1,12(a7)
		move.w     d1,8(a7)
		lea.l      6(a7),a0
		movea.l    (a4),a1
		move.w     16(a1),d0
		moveq.l    #2,d1
		jsr        v_pline
A_title_4:
		lea.l      22(a7),a0
		clr.w      d1
		movea.l    (a4),a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #-9,d0
		and.w      8(a2),d0
		lea.l      30(a7),a7
		movem.l    (a7)+,d2-d5/a2-a6
		rts

		.data

icn_count:
		dc.b $00
		dc.b $00
icn_chk_sel:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
icn_chk_un:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
icn_chk_dissel:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
icn_chk_disun:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
icn_rad_sel:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
icn_rad_un:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
icn_rad_dissel:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
icn_rad_disun:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
icn_mask:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
icn_tmp:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
save:
		dc.w $2000
save2:
		dc.w $2000
rad:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
col:
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
col2:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
xd4cd4:
		dc.b $00
		.even

	.bss

act: ds.l 1
