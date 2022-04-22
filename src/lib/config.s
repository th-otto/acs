
		.globl Acfg_create
Acfg_create:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a3
		move.w     d0,d3
		moveq.l    #34,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Acfg_create_1
		suba.l     a0,a0
		bra.s      Acfg_create_2
Acfg_create_1:
		moveq.l    #34,d1
		clr.w      d0
		movea.l    a2,a0
		jsr        memset
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        InitConfigStruct
		movea.l    (a3),a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      Acfg_create_3
		tst.w      d3
		beq.s      Acfg_create_3
		suba.l     a1,a1
		movea.l    a2,a0
		jsr        Acfg_load
Acfg_create_3:
		movea.l    a2,a0
Acfg_create_2:
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Acfg_delete
Acfg_delete:
		move.l     a3,-(a7)
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Acfg_delete_1
		moveq.l    #1,d1
		and.w      26(a3),d1
		beq.s      Acfg_delete_2
		move.w     18(a3),d2
		beq.s      Acfg_delete_2
		suba.l     a1,a1
		jsr        Acfg_save
Acfg_delete_2:
		suba.l     a1,a1
		movea.l    a3,a0
		jsr        Acfg_clear
		moveq.l    #34,d0
		movea.l    a3,a0
		jsr        Ax_recycle
Acfg_delete_1:
		movea.l    (a7)+,a3
		rts

		.globl Acfg_flags
Acfg_flags:
		tst.w      d1
		ble.s      Acfg_flags_1
		or.w       d0,26(a0)
		bra.s      Acfg_flags_2
Acfg_flags_1:
		tst.w      d1
		bne.s      Acfg_flags_2
		move.w     d0,d1
		not.w      d1
		and.w      d1,26(a0)
Acfg_flags_2:
		move.w     26(a0),d0
		rts

InitConfigStruct:
		move.l     a3,-(a7)
		movea.l    a0,a3
		jsr        Acfg_copyInfo
		clr.w      20(a3)
		clr.l      22(a3)
		clr.w      28(a3)
		clr.l      30(a3)
		movea.l    (a7)+,a3
		rts

		.globl Acfg_createInfo
Acfg_createInfo:
		move.l     a2,-(a7)
		moveq.l    #18,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Acfg_createInfo_1
		suba.l     a0,a0
		bra.s      Acfg_createInfo_2
Acfg_createInfo_1:
		moveq.l    #18,d1
		clr.w      d0
		movea.l    a2,a0
		jsr        memset
		lea.l      xd3627,a1
		movea.l    a2,a0
		jsr        Acfg_initInfo
		movea.l    a2,a0
Acfg_createInfo_2:
		movea.l    (a7)+,a2
		rts

		.globl Acfg_deleteInfo
Acfg_deleteInfo:
		move.l     a2,-(a7)
		movea.l    a0,a2
		lea.l      xd3626,a1
		jsr        Acfg_initInfo
		moveq.l    #18,d0
		movea.l    a2,a0
		jsr        Ax_recycle
		movea.l    (a7)+,a2
		rts

Acfg_initInfo:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		movea.l    a1,a3
		move.l     (a0),d0
		beq.s      Acfg_initInfo_1
		movea.l    d0,a1
		move.b     (a1),d1
		beq.s      Acfg_initInfo_1
		movea.l    d0,a0
		jsr        Ast_delete
Acfg_initInfo_1:
		lea.l      xd3626,a0
		jsr        Ast_create
		move.l     a0,(a2)
		move.l     4(a2),d0
		beq.s      Acfg_initInfo_2
		movea.l    d0,a1
		move.b     (a1),d1
		beq.s      Acfg_initInfo_2
		movea.l    d0,a0
		jsr        Ast_delete
Acfg_initInfo_2:
		movea.l    a3,a0
		jsr        Ast_create
		move.l     a0,4(a2)
		move.l     8(a2),d0
		beq.s      Acfg_initInfo_3
		movea.l    d0,a1
		move.b     (a1),d1
		beq.s      Acfg_initInfo_3
		movea.l    d0,a0
		jsr        Ast_delete
Acfg_initInfo_3:
		lea.l      xd3626,a0
		jsr        Ast_create
		move.l     a0,8(a2)
		clr.w      12(a2)
		clr.w      14(a2)
		move.w     #$0020,16(a2)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Acfg_copyInfo
Acfg_copyInfo:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		move.l     a2,d0
		bne.s      Acfg_copyInfo_1
		lea.l      default_info,a2
Acfg_copyInfo_1:
		movea.l    4(a2),a1
		movea.l    a3,a0
		bsr        Acfg_initInfo
		movea.l    (a2),a0
		jsr        Ast_create
		move.l     a0,(a3)
		move.l     8(a2),d0
		beq.s      Acfg_copyInfo_2
		movea.l    d0,a0
		jsr        Ast_create
		bra.s      Acfg_copyInfo_3
Acfg_copyInfo_2:
		suba.l     a0,a0
Acfg_copyInfo_3:
		move.l     a0,8(a3)
		move.w     12(a2),12(a3)
		move.w     14(a2),14(a3)
		move.w     16(a2),16(a3)
		movea.l    a3,a0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Acfg_setInfo
Acfg_setInfo:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a1,a3
		movea.l    a0,a2
		bsr.w      Acfg_copyInfo
		movea.l    a3,a0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Acfg_getInfo
Acfg_getInfo:
		move.l     a2,-(a7)
		movea.l    a0,a2
		movea.l    a1,a0
		movea.l    a2,a1
		bsr.w      Acfg_copyInfo
		movea.l    (a7)+,a2
		rts

		.globl Acfg_clear
Acfg_clear:
		move.l     a2,-(a7)
		movea.l    a0,a2
		bsr.w      Acfg_copyInfo
		movea.l    a2,a0
		jsr        Acfg_clearAllGroups
		movea.l    a2,a0
		jsr        x43200
		movea.l    (a7)+,a2
		rts

		.globl Acfg_clearAllGroups
Acfg_clearAllGroups:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		move.l     a2,d0
		beq        Acfg_clearAllGroups_1
		move.w     20(a2),d1
		ble        Acfg_clearAllGroups_1
		move.l     22(a2),d2
		beq        Acfg_clearAllGroups_1
		clr.w      d3
		bra.w      Acfg_clearAllGroups_2
Acfg_clearAllGroups_8:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a2),a0
		movea.l    0(a0,d0.l),a3
		move.l     a3,d1
		beq.s      Acfg_clearAllGroups_3
		move.w     4(a3),d2
		ble.s      Acfg_clearAllGroups_4
		move.l     6(a3),d0
		beq.s      Acfg_clearAllGroups_4
		clr.w      d4
		bra.s      Acfg_clearAllGroups_5
Acfg_clearAllGroups_7:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    6(a3),a0
		move.l     0(a0,d0.l),d1
		beq.s      Acfg_clearAllGroups_6
		movea.l    d1,a1
		move.b     (a1),d2
		beq.s      Acfg_clearAllGroups_6
		movea.l    d1,a0
		jsr        Ast_delete
Acfg_clearAllGroups_6:
		addq.w     #1,d4
Acfg_clearAllGroups_5:
		cmp.w      4(a3),d4
		blt.s      Acfg_clearAllGroups_7
		movea.l    6(a3),a0
		jsr        Ax_free
		clr.l      6(a3)
		clr.w      4(a3)
Acfg_clearAllGroups_4:
		movea.l    (a3),a0
		jsr        Ast_delete
		moveq.l    #10,d0
		movea.l    a3,a0
		jsr        Ax_recycle
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a2),a0
		clr.l      0(a0,d0.l)
Acfg_clearAllGroups_3:
		addq.w     #1,d3
Acfg_clearAllGroups_2:
		cmp.w      20(a2),d3
		blt        Acfg_clearAllGroups_8
		movea.l    22(a2),a0
		jsr        Ax_free
		clr.l      22(a2)
		clr.w      20(a2)
		move.w     #$0001,18(a2)
Acfg_clearAllGroups_1:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

		.globl Acfg_clearGroup
Acfg_clearGroup:
		movem.l    d3/a2-a4,-(a7)
		lea.l      -18(a7),a7
		movea.l    a1,a3
		movea.l    a0,a2
		clr.l      -(a7)
		lea.l      4(a7),a0
		jsr        InitCfgSearch
		addq.w     #4,a7
		lea.l      (a7),a1
		movea.l    a2,a0
		jsr        SearchGruppe
		movea.l    a0,a3
		move.l     a3,d0
		beq        Acfg_clearGroup_1
		clr.w      d3
		bra.s      Acfg_clearGroup_2
Acfg_clearGroup_3:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    6(a3),a0
		movea.l    0(a0,d0.l),a0
		jsr        Ast_delete
		addq.w     #1,d3
Acfg_clearGroup_2:
		cmp.w      4(a3),d3
		blt.s      Acfg_clearGroup_3
		movea.l    6(a3),a0
		jsr        Ax_free
		movea.l    (a3),a0
		jsr        Ast_delete
		cmpi.w     #$0001,20(a2)
		ble.s      Acfg_clearGroup_4
		moveq.l    #-1,d0
		add.w      20(a2),d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a4
		clr.w      d3
		move.w     d3,d0
		bra.s      Acfg_clearGroup_5
Acfg_clearGroup_8:
		move.w     d3,d1
		ext.l      d1
		lsl.l      #2,d1
		movea.l    22(a2),a0
		cmpa.l     0(a0,d1.l),a3
		bne.s      Acfg_clearGroup_6
		addq.w     #1,d3
		bra.s      Acfg_clearGroup_7
Acfg_clearGroup_6:
		move.w     d3,d1
		ext.l      d1
		lsl.l      #2,d1
		movea.l    22(a2),a0
		move.w     d0,d2
		ext.l      d2
		lsl.l      #2,d2
		move.l     0(a0,d1.l),0(a4,d2.l)
Acfg_clearGroup_7:
		addq.w     #1,d3
		addq.w     #1,d0
Acfg_clearGroup_5:
		cmp.w      20(a2),d3
		blt.s      Acfg_clearGroup_8
		movea.l    22(a2),a0
		jsr        Ax_free
		move.l     a4,22(a2)
		subq.w     #1,20(a2)
		bra.s      Acfg_clearGroup_9
Acfg_clearGroup_4:
		movea.l    22(a2),a0
		jsr        Ax_free
		clr.l      22(a2)
		clr.w      20(a2)
Acfg_clearGroup_9:
		moveq.l    #10,d0
		movea.l    a3,a0
		jsr        Ax_recycle
Acfg_clearGroup_1:
		lea.l      18(a7),a7
		movem.l    (a7)+,d3/a2-a4
		rts

Acfg_makeName:
		movem.l    d3/a2-a3/a5-a6,-(a7)
		subq.w     #4,a7
		movea.l    a0,a6
		movea.l    a1,a2
		movea.l    28(a7),a5
		movea.l    32(a7),a3
		movea.l    a1,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne        Acfg_makeName_1
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        Af_2name
		jsr        Ast_alltrim
		jsr        Ast_isEmpty
		tst.w      d0
		bne        Acfg_makeName_1
		movea.l    a2,a1
		lea.l      (a7),a0
		jsr        Af_2ext
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      Acfg_makeName_2
		lea.l      xd362a,a1
		lea.l      (a7),a0
		jsr        strcpy
Acfg_makeName_2:
		movea.l    a2,a0
		jsr        Af_2drv
		move.w     d0,d3
		movea.l    a2,a1
		movea.l    a5,a0
		jsr        Af_2path
		lea.l      xd362e,a1
		movea.l    a5,a0
		jsr        Ast_cmp
		tst.w      d0
		bne.s      Acfg_makeName_3
		moveq.l    #92,d0
		movea.l    a2,a0
		jsr        strrchr
		move.l     a0,d0
		bne.s      Acfg_makeName_3
		moveq.l    #58,d0
		movea.l    a2,a0
		jsr        strrchr
		move.l     a0,d0
		bne.s      Acfg_makeName_4
		movea.l    ACSblk,a1
		lea.l      726(a1),a1
		movea.l    a5,a0
		jsr        Af_2path
		movea.l    ACSblk,a0
		lea.l      726(a0),a0
		jsr        Af_2drv
		move.w     d0,d3
		bra.s      Acfg_makeName_3
Acfg_makeName_4:
		clr.b      (a5)
Acfg_makeName_3:
		move.l     #$00002000,d0
		jsr        Ax_malloc
		move.l     a0,(a6)
		move.l     a0,d0
		bne.s      Acfg_makeName_5
Acfg_makeName_1:
		clr.w      d0
		bra.s      Acfg_makeName_6
Acfg_makeName_5:
		pea.l      (a7)
		move.l     a3,-(a7)
		movea.l    a5,a1
		move.w     d3,d0
		movea.l    (a6),a0
		jsr        Af_buildname
		addq.w     #8,a7
		moveq.l    #1,d0
Acfg_makeName_6:
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a3/a5-a6
		rts

IsNewGroup:
		move.l     a2,-(a7)
		movea.l    a0,a2
		jsr        strlen
		moveq.l    #2,d1
		cmp.l      d0,d1
		bge.s      IsNewGroup_1
		cmpi.b     #$5B,(a2)
		bne.s      IsNewGroup_1
		cmpi.b     #$5D,-1(a2,d0.l)
		bne.s      IsNewGroup_1
		moveq.l    #1,d2
		bra.s      IsNewGroup_2
IsNewGroup_1:
		clr.w      d2
IsNewGroup_2:
		move.w     d2,d0
		movea.l    (a7)+,a2
		rts

FoundNextGroup:
		movem.l    d3/a2-a6,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		movea.l    28(a7),a2
		movea.l    32(a7),a6
		movea.l    36(a7),a5
		clr.w      d0
		move.w     d0,(a2)
		move.w     d0,(a1)
		clr.w      d3
		bra.s      FoundNextGroup_1
FoundNextGroup_4:
		movea.l    a4,a1
		move.w     #$2000,d0
		movea.l    a5,a0
		jsr        fgets
		move.l     a0,d0
		beq.s      FoundNextGroup_1
		movea.l    a5,a0
		jsr        Ast_alltrim
		movea.l    a5,a0
		bsr.w      IsNewGroup
		tst.w      d0
		beq.s      FoundNextGroup_2
		lea.l      1(a5),a1
		movea.l    a6,a0
		jsr        strcpy
		movea.l    a6,a0
		jsr        strlen
		subq.l     #1,d0
		clr.b      0(a6,d0.l)
		moveq.l    #1,d3
		bra.s      FoundNextGroup_1
FoundNextGroup_2:
		addq.w     #1,(a3)
		movea.l    a5,a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      FoundNextGroup_1
		addq.w     #1,(a2)
FoundNextGroup_1:
		movea.l    a4,a0
		jsr        feof
		tst.w      d0
		bne.s      FoundNextGroup_3
		tst.w      d3
		beq.s      FoundNextGroup_4
FoundNextGroup_3:
		movem.l    (a7)+,d3/a2-a6
		rts

ReadUntilNextGroup:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a5
		movea.l    a1,a3
		movea.l    28(a7),a4
		move.w     d0,d3
		sub.w      d1,d3
		tst.w      d3
		ble.s      ReadUntilNextGroup_1
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      ReadUntilNextGroup_2
		clr.w      d0
		bra.s      ReadUntilNextGroup_3
ReadUntilNextGroup_2:
		move.l     a2,6(a3)
		move.w     d3,4(a3)
ReadUntilNextGroup_1:
		clr.w      d4
		bra.s      ReadUntilNextGroup_4
ReadUntilNextGroup_8:
		movea.l    a4,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      ReadUntilNextGroup_5
		cmp.w      d4,d3
		ble.s      ReadUntilNextGroup_5
		movea.l    a4,a0
		jsr        Ast_create
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     a0,0(a2,d0.l)
		addq.w     #1,d4
ReadUntilNextGroup_5:
		clr.b      (a4)
ReadUntilNextGroup_4:
		movea.l    a5,a1
		move.w     #$2000,d0
		movea.l    a4,a0
		jsr        fgets
		movea.l    a4,a0
		jsr        Ast_alltrim
		movea.l    a5,a0
		jsr        feof
		tst.w      d0
		beq.s      ReadUntilNextGroup_6
		movea.l    a4,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      ReadUntilNextGroup_7
ReadUntilNextGroup_6:
		movea.l    a4,a0
		bsr        IsNewGroup
		tst.w      d0
		beq.s      ReadUntilNextGroup_8
ReadUntilNextGroup_7:
		moveq.l    #1,d0
ReadUntilNextGroup_3:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

		.globl Acfg_load
Acfg_load:
		movem.l    d3-d5/a2-a4,-(a7)
		lea.l      -20(a7),a7
		movea.l    a0,a2
		move.l     a1,d0
		beq.s      Acfg_load_1
		movea.l    a1,a0
		bra.s      Acfg_load_2
Acfg_load_1:
		movea.l    (a2),a0
Acfg_load_2:
		move.l     a0,16(a7)
		movea.l    a2,a0
		bsr        Acfg_clearAllGroups
		movea.l    a2,a0
		jsr        x43200
		clr.w      18(a2)
		move.l     #$00004004,d0
		jsr        Ax_malloc
		movea.l    a0,a4
		move.l     a4,d0
		beq        Acfg_load_3
		lea.l      8195(a4),a1
		move.l     a1,8(a7)
		move.l     a1,-(a7)
		move.l     d0,-(a7)
		lea.l      20(a7),a0
		movea.l    24(a7),a1
		bsr        Acfg_makeName
		addq.w     #8,a7
		tst.w      d0
		beq        Acfg_load_4
		lea.l      xd3630,a1
		movea.l    12(a7),a0
		jsr        fopen
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Acfg_load_5
		move.w     16(a2),d1
		ble.s      Acfg_load_6
		ext.l      d1
		moveq.l    #10,d2
		lsl.l      d2,d1
		suba.l     a1,a1
		clr.w      d0
		jsr        setvbuf
Acfg_load_6:
		moveq.l    #1,d3
		clr.w      d1
		moveq.l    #0,d0
		movea.l    a3,a0
		jsr        fseek
		bra.s      Acfg_load_7
Acfg_load_8:
		movea.l    a3,a1
		move.w     #$2000,d0
		movea.l    a4,a0
		jsr        fgets
		move.l     a0,d0
		beq.s      Acfg_load_7
		movea.l    a4,a0
		jsr        Ast_alltrim
		bsr        IsNewGroup
		tst.w      d0
		beq.s      Acfg_load_7
		addq.w     #1,d3
Acfg_load_7:
		movea.l    a3,a0
		jsr        feof
		tst.w      d0
		beq.s      Acfg_load_8
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		move.l     a0,22(a2)
		move.l     a0,d0
		bne.s      Acfg_load_9
		movea.l    a3,a0
		jsr        fclose
Acfg_load_5:
		movea.l    12(a7),a0
		jsr        Ax_free
Acfg_load_4:
		movea.l    a4,a0
		jsr        Ax_free
		bra.s      Acfg_load_3
Acfg_load_9:
		move.w     d3,20(a2)
		move.w     d3,d1
		ext.l      d1
		lsl.l      #2,d1
		clr.w      d0
		movea.l    22(a2),a0
		jsr        memset
		movea.l    8(a7),a0
		clr.b      (a0)
		clr.w      d1
		moveq.l    #0,d0
		movea.l    a3,a0
		jsr        fseek
		clr.w      d4
		bra        Acfg_load_10
Acfg_load_14:
		moveq.l    #10,d0
		jsr        Ax_malloc
		move.l     a0,(a7)
		move.l     a0,d0
		bne.s      Acfg_load_11
		movea.l    a3,a0
		jsr        fclose
		movea.l    a2,a0
		bsr        Acfg_clearAllGroups
		movea.l    12(a7),a0
		jsr        Ax_free
		movea.l    a4,a0
		jsr        Ax_free
		clr.w      18(a2)
Acfg_load_3:
		clr.w      d0
		bra        Acfg_load_12
Acfg_load_11:
		moveq.l    #10,d1
		clr.w      d0
		movea.l    (a7),a0
		jsr        memset
		clr.l      -(a7)
		lea.l      xd3632,a1
		move.l     a1,-(a7)
		movea.l    16(a7),a0
		jsr        Ast_create
		jsr        Ast_alltrim
		movea.l    (a7)+,a1
		jsr        Ast_filter
		addq.w     #4,a7
		movea.l    (a7),a1
		move.l     a0,(a1)
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a2),a0
		move.l     a1,0(a0,d0.l)
		movea.l    a3,a0
		jsr        ftell
		move.l     d0,d5
		move.l     a4,-(a7)
		move.l     12(a7),-(a7)
		pea.l      12(a7)
		lea.l      18(a7),a1
		movea.l    a3,a0
		bsr        FoundNextGroup
		lea.l      12(a7),a7
		clr.w      d1
		move.l     d5,d0
		movea.l    a3,a0
		jsr        fseek
		move.l     a4,-(a7)
		move.w     8(a7),d1
		move.w     10(a7),d0
		movea.l    4(a7),a1
		movea.l    a3,a0
		bsr        ReadUntilNextGroup
		addq.w     #4,a7
		tst.w      d0
		bne.s      Acfg_load_13
		movea.l    a3,a0
		jsr        fclose
		movea.l    a2,a0
		bsr        Acfg_clearAllGroups
		movea.l    12(a7),a0
		jsr        Ax_free
		movea.l    a4,a0
		jsr        Ax_free
		clr.w      18(a2)
Acfg_load_13:
		addq.w     #1,d4
Acfg_load_10:
		cmp.w      d4,d3
		bgt        Acfg_load_14
		movea.l    (a2),a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      Acfg_load_15
		movea.l    (a2),a0
		jsr        Ast_delete
Acfg_load_15:
		movea.l    12(a7),a0
		jsr        Ast_create
		move.l     a0,(a2)
		movea.l    a3,a0
		jsr        fclose
		movea.l    12(a7),a0
		jsr        Ax_free
		movea.l    a4,a0
		jsr        Ax_free
		moveq.l    #1,d0
Acfg_load_12:
		lea.l      20(a7),a7
		movem.l    (a7)+,d3-d5/a2-a4
		rts

WriteString:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a5
		movea.l    a1,a4
		movea.l    24(a7),a2
		movea.l    32(a7),a3
		move.w     (a2),d0
		bne.s      WriteString_1
		movea.l    a3,a0
		jsr        Ast_alltrim
		move.b     (a0),d0
		ext.w      d0
		movea.l    4(a4),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      WriteString_2
		clr.w      d3
		bra.s      WriteString_3
WriteString_4:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    30(a4),a0
		move.l     0(a0,d0.l),-(a7)
		movea.l    4(a4),a1
		move.b     (a1),d1
		ext.w      d1
		move.w     d1,-(a7)
		lea.l      xd3635,a1
		movea.l    a5,a0
		jsr        fprintf
		addq.w     #6,a7
		addq.w     #1,d3
WriteString_3:
		cmp.w      28(a4),d3
		blt.s      WriteString_4
		movea.l    4(a4),a0
		move.b     (a0),d0
		ext.w      d0
		move.w     d0,-(a7)
		lea.l      xd363c,a1
		movea.l    a5,a0
		jsr        fprintf
		addq.w     #2,a7
WriteString_2:
		move.w     #$0001,(a2)
WriteString_1:
		move.l     a3,-(a7)
		movea.l    32(a7),a1
		movea.l    a5,a0
		jsr        fprintf
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a5
		rts

		.globl Acfg_save
Acfg_save:
		movem.l    d3-d4/a2-a5,-(a7)
		lea.l      -14(a7),a7
		movea.l    a1,a4
		movea.l    a0,a2
		movea.l    a1,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      Acfg_save_1
		movea.l    a4,a0
		bra.s      Acfg_save_2
Acfg_save_1:
		movea.l    (a2),a0
Acfg_save_2:
		movea.l    a0,a4
		move.l     #$00004004,d0
		jsr        Ax_malloc
		move.l     a0,6(a7)
		move.l     a0,d0
		beq.s      Acfg_save_3
		lea.l      8195(a0),a0
		move.l     a0,2(a7)
		move.l     a0,-(a7)
		move.l     d0,-(a7)
		movea.l    a4,a1
		lea.l      18(a7),a0
		bsr        Acfg_makeName
		addq.w     #8,a7
		tst.w      d0
		beq.s      Acfg_save_4
		lea.l      xd3640,a1
		movea.l    10(a7),a0
		jsr        fopen
		movea.l    a0,a5
		move.l     a5,d0
		bne.s      Acfg_save_5
Acfg_save_4:
		movea.l    10(a7),a0
		jsr        Ax_free
		movea.l    6(a7),a0
		jsr        Ax_free
Acfg_save_3:
		clr.w      d0
		bra        Acfg_save_6
Acfg_save_5:
		move.w     16(a2),d0
		ble.s      Acfg_save_7
		move.w     d0,d1
		ext.l      d1
		moveq.l    #10,d2
		lsl.l      d2,d1
		suba.l     a1,a1
		movea.l    a5,a0
		clr.w      d0
		jsr        setvbuf
Acfg_save_7:
		cmpi.w     #$0001,28(a2)
		blt.s      Acfg_save_8
		move.l     30(a2),d0
		bne.s      Acfg_save_9
Acfg_save_8:
		moveq.l    #1,d0
		bra.s      Acfg_save_10
Acfg_save_9:
		clr.w      d0
Acfg_save_10:
		move.w     d0,(a7)
		clr.w      d3
		bra        Acfg_save_11
Acfg_save_17:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a2),a0
		movea.l    0(a0,d0.l),a4
		movea.l    (a4),a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      Acfg_save_12
		move.l     (a4),-(a7)
		pea.l      xd3642
		pea.l      8(a7)
		movea.l    a2,a1
		movea.l    a5,a0
		bsr        WriteString
		lea.l      12(a7),a7
Acfg_save_12:
		clr.w      d4
		movea.l    6(a4),a3
		bra.s      Acfg_save_13
Acfg_save_14:
		move.l     (a3),-(a7)
		pea.l      xd3638
		pea.l      8(a7)
		movea.l    a2,a1
		movea.l    a5,a0
		bsr        WriteString
		lea.l      12(a7),a7
		addq.w     #1,d4
		addq.w     #4,a3
Acfg_save_13:
		cmp.w      4(a4),d4
		blt.s      Acfg_save_14
		movea.l    (a4),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      Acfg_save_15
		move.w     4(a4),d0
		ble.s      Acfg_save_16
Acfg_save_15:
		lea.l      xd363a,a1
		movea.l    a5,a0
		jsr        fprintf
Acfg_save_16:
		addq.w     #1,d3
Acfg_save_11:
		cmp.w      20(a2),d3
		blt        Acfg_save_17
		move.w     (a7),d0
		bne.s      Acfg_save_18
		pea.l      xd3648
		pea.l      xd363a
		pea.l      8(a7)
		movea.l    a2,a1
		movea.l    a5,a0
		bsr        WriteString
		lea.l      12(a7),a7
Acfg_save_18:
		movea.l    a5,a0
		jsr        fclose
		clr.w      18(a2)
		movea.l    10(a7),a0
		jsr        Ax_free
		movea.l    6(a7),a0
		jsr        Ax_free
		moveq.l    #1,d0
Acfg_save_6:
		lea.l      14(a7),a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

		.globl Acfg_getValue
Acfg_getValue:
		movem.l    d3-d4/a2-a3/a5,-(a7)
		lea.l      -18(a7),a7
		movea.l    a1,a5
		movea.l    46(a7),a3
		movea.l    a0,a2
		clr.w      d3
		clr.b      (a3)
		move.l     42(a7),-(a7)
		lea.l      4(a7),a0
		jsr        InitCfgSearch
		addq.w     #4,a7
		lea.l      (a7),a1
		movea.l    a2,a0
		jsr        SearchCfgString
		move.l     4(a7),d0
		beq.s      Acfg_getValue_1
		move.w     16(a7),d1
		bmi.s      Acfg_getValue_1
		move.l     12(a7),d2
		beq.s      Acfg_getValue_1
		tst.l      d2
		beq.s      Acfg_getValue_2
		moveq.l    #1,d3
		bra.s      Acfg_getValue_1
Acfg_getValue_2:
		clr.w      d3
Acfg_getValue_1:
		tst.w      d3
		bne        Acfg_getValue_3
		move.l     8(a2),d0
		beq        Acfg_getValue_3
		movea.l    d0,a0
		jsr        strlen
		move.l     d0,d4
		movea.l    (a7),a0
		jsr        strlen
		add.l      d0,d4
		movea.l    8(a7),a0
		jsr        strlen
		add.l      d0,d4
		tst.l      d4
		ble.s      Acfg_getValue_3
		moveq.l    #1,d0
		add.l      d4,d0
		jsr        Ax_malloc
		movea.l    a0,a5
		move.l     a5,d0
		beq.s      Acfg_getValue_3
		move.l     8(a7),-(a7)
		move.l     4(a7),-(a7)
		move.l     8(a2),-(a7)
		moveq.l    #3,d0
		jsr        Ast_add
		lea.l      12(a7),a7
		movea.l    8(a7),a0
		jsr        Ast_delete
		move.l     a5,8(a7)
		movea.l    ACSblk,a0
		move.l     652(a0),-(a7)
		moveq.l    #-1,d0
		lea.l      4(a7),a1
		movea.l    a2,a0
		jsr        SearchCfgNameInStrings
		addq.w     #4,a7
		move.l     12(a7),d0
		beq.s      Acfg_getValue_4
		moveq.l    #1,d3
		bra.s      Acfg_getValue_3
Acfg_getValue_4:
		clr.w      d3
Acfg_getValue_3:
		tst.w      d3
		beq.s      Acfg_getValue_5
		movea.l    12(a7),a1
		movea.l    a3,a0
		jsr        strcpy
		jsr        Ast_alltrim
Acfg_getValue_5:
		movea.l    (a7),a0
		jsr        Ast_delete
		movea.l    8(a7),a0
		jsr        Ast_delete
		movea.l    a3,a0
		lea.l      18(a7),a7
		movem.l    (a7)+,d3-d4/a2-a3/a5
		rts

		.globl Acfg_setValue
Acfg_setValue:
		movem.l    d3-d4/a2/a4-a5,-(a7)
		lea.l      -18(a7),a7
		movea.l    a1,a5
		movea.l    46(a7),a4
		movea.l    a0,a2
		clr.w      d3
		move.l     42(a7),-(a7)
		lea.l      4(a7),a0
		jsr        InitCfgSearch
		addq.w     #4,a7
		lea.l      (a7),a1
		movea.l    a2,a0
		jsr        SearchCfgString
		move.l     4(a7),d0
		bne.s      Acfg_setValue_1
		movea.l    (a7),a1
		movea.l    a2,a0
		jsr        CreateCfgGruppe
		move.l     a0,4(a7)
Acfg_setValue_1:
		move.l     4(a7),d0
		beq        Acfg_setValue_2
		movea.l    8(a7),a0
		jsr        strlen
		move.l     d0,d4
		movea.l    a4,a0
		jsr        strlen
		add.l      d0,d4
		addq.l     #2,d4
		move.l     d4,d0
		jsr        Ax_malloc
		movea.l    a0,a5
		move.l     a4,-(a7)
		pea.l      xd364b
		move.l     16(a7),-(a7)
		moveq.l    #3,d0
		jsr        Ast_add
		lea.l      12(a7),a7
		move.w     16(a7),d0
		bmi.s      Acfg_setValue_3
		move.l     12(a7),d1
		bne.s      Acfg_setValue_4
Acfg_setValue_3:
		movea.l    a5,a1
		movea.l    4(a7),a0
		jsr        CreateCfgString
		move.w     d0,d3
		move.w     #$0001,18(a2)
		bra        Acfg_setValue_2
Acfg_setValue_4:
		move.w     12(a2),d0
		beq.s      Acfg_setValue_5
		move.w     16(a7),d1
		ext.l      d1
		lsl.l      #2,d1
		movea.l    4(a7),a0
		movea.l    6(a0),a1
		movea.l    0(a1,d1.l),a1
		movea.l    a5,a0
		jsr        Ast_cmp
		tst.w      d0
		bne.s      Acfg_setValue_6
		moveq.l    #1,d4
		bra.s      Acfg_setValue_7
Acfg_setValue_6:
		clr.w      d4
Acfg_setValue_7:
		bra.s      Acfg_setValue_8
Acfg_setValue_5:
		move.w     16(a7),d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    4(a7),a0
		movea.l    6(a0),a1
		movea.l    0(a1,d0.l),a1
		movea.l    a5,a0
		jsr        Ast_icmp
		tst.w      d0
		bne.s      Acfg_setValue_9
		moveq.l    #1,d4
		bra.s      Acfg_setValue_8
Acfg_setValue_9:
		clr.w      d4
Acfg_setValue_8:
		tst.w      d4
		bne.s      Acfg_setValue_10
		move.w     16(a7),d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    4(a7),a0
		movea.l    6(a0),a1
		movea.l    0(a1,d0.l),a0
		jsr        Ast_delete
		move.w     16(a7),d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    4(a7),a0
		movea.l    6(a0),a1
		move.l     a5,0(a1,d0.l)
		move.w     #$0001,18(a2)
Acfg_setValue_10:
		moveq.l    #1,d3
Acfg_setValue_2:
		movea.l    (a7),a0
		jsr        Ast_delete
		movea.l    8(a7),a0
		jsr        Ast_delete
		tst.w      d3
		beq.s      Acfg_setValue_11
		movea.l    a4,a0
		bra.s      Acfg_setValue_12
Acfg_setValue_11:
		lea.l      xd3626,a0
Acfg_setValue_12:
		lea.l      18(a7),a7
		movem.l    (a7)+,d3-d4/a2/a4-a5
		rts

		.globl Acfg_clearValue
Acfg_clearValue:
		movem.l    d3/a2-a3,-(a7)
		lea.l      -18(a7),a7
		movea.l    38(a7),a3
		movea.l    a0,a2
		clr.w      d3
		clr.b      (a3)
		move.l     34(a7),-(a7)
		lea.l      4(a7),a0
		jsr        InitCfgSearch
		addq.w     #4,a7
		lea.l      (a7),a1
		movea.l    a2,a0
		jsr        SearchCfgString
		move.l     4(a7),d0
		beq.s      Acfg_clearValue_1
		move.w     16(a7),d1
		bmi.s      Acfg_clearValue_1
		move.l     12(a7),d2
		beq.s      Acfg_clearValue_1
		movea.l    d2,a1
		movea.l    a3,a0
		jsr        strcpy
		jsr        Ast_alltrim
		move.w     16(a7),d0
		movea.l    4(a7),a0
		jsr        DeleteCfgString
		move.w     d0,d3
Acfg_clearValue_1:
		movea.l    (a7),a0
		jsr        Ast_delete
		movea.l    8(a7),a0
		jsr        Ast_delete
		tst.w      d3
		beq.s      Acfg_clearValue_2
		movea.l    a3,a0
		bra.s      Acfg_clearValue_3
Acfg_clearValue_2:
		lea.l      xd3626,a0
Acfg_clearValue_3:
		lea.l      18(a7),a7
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Acfg_getString
Acfg_getString:
		pea.l      s_val
		move.l     8(a7),-(a7)
		bsr        Acfg_getValue
		addq.w     #8,a7
		rts

		.globl Acfg_getLong
Acfg_getLong:
		lea.l      -8192(a7),a7
		pea.l      (a7)
		move.l     8200(a7),-(a7)
		bsr        Acfg_getValue
		addq.w     #8,a7
		jsr        atol
		lea.l      8192(a7),a7
		rts

		.globl Acfg_setLong
Acfg_setLong:
		move.l     a3,-(a7)
		move.l     a4,-(a7)
		lea.l      -22(a7),a7
		movea.l    a0,a4
		movea.l    a1,a3
		move.l     d0,-(a7)
		lea.l      xd364d,a1
		lea.l      4(a7),a0
		jsr        sprintf
		addq.w     #4,a7
		lea.l      (a7),a0
		jsr        Ast_alltrim
		pea.l      (a7)
		move.l     38(a7),-(a7)
		movea.l    a3,a1
		movea.l    a4,a0
		bsr        Acfg_setValue
		addq.w     #8,a7
		jsr        atol
		lea.l      22(a7),a7
		movea.l    (a7)+,a4
		movea.l    (a7)+,a3
		rts

		.globl Acfg_getChar
Acfg_getChar:
		lea.l      -8202(a7),a7
		pea.l      (a7)
		move.l     8214(a7),-(a7)
		bsr        Acfg_getValue
		addq.w     #8,a7
		pea.l      8192(a7)
		jsr        atof
		addq.w     #4,a7
		movea.l    8206(a7),a0
		lea.l      8192(a7),a1
		move.l     (a1)+,(a0)+
		move.l     (a1)+,(a0)+
		move.w     (a1)+,(a0)+
		lea.l      8202(a7),a7
		rts

		.globl Acfg_setChar
Acfg_setChar:
		movem.l    a3-a5,-(a7)
		lea.l      -62(a7),a7
		movea.l    a0,a5
		movea.l    a1,a4
		lea.l      96(a7),a0
		move.l     -(a0),-(a7)
		move.l     -(a0),-(a7)
		move.w     -(a0),-(a7)
		lea.l      xd3651,a1
		lea.l      10(a7),a0
		jsr        sprintf
		lea.l      10(a7),a7
		lea.l      (a7),a0
		jsr        Ast_alltrim
		moveq.l    #46,d0
		lea.l      (a7),a0
		jsr        strrchr
		movea.l    a0,a3
		clr.w      d0
		lea.l      (a7),a0
		jsr        strrchr
		subq.w     #1,a0
		bra.s      Acfg_setChar_1
Acfg_setChar_3:
		subq.w     #1,a0
Acfg_setChar_1:
		cmpi.b     #$30,(a0)
		bne.s      Acfg_setChar_2
		cmpa.l     a0,a3
		bcs.s      Acfg_setChar_3
Acfg_setChar_2:
		cmpa.l     a0,a3
		bcc.s      Acfg_setChar_4
		clr.b      1(a0)
		bra.s      Acfg_setChar_5
Acfg_setChar_4:
		cmpa.l     a0,a3
		bne.s      Acfg_setChar_5
		clr.b      (a0)
Acfg_setChar_5:
		pea.l      (a7)
		move.l     86(a7),-(a7)
		movea.l    a4,a1
		movea.l    a5,a0
		bsr        Acfg_setValue
		addq.w     #8,a7
		pea.l      52(a7)
		jsr        atof
		addq.w     #4,a7
		movea.l    78(a7),a0
		lea.l      52(a7),a1
		move.l     (a1)+,(a0)+
		move.l     (a1)+,(a0)+
		move.w     (a1)+,(a0)+
		lea.l      62(a7),a7
		movem.l    (a7)+,a3-a5
		rts

		.globl Acfg_getBool
Acfg_getBool:
		lea.l      -52(a7),a7
		pea.l      (a7)
		move.l     60(a7),-(a7)
		bsr        Acfg_getValue
		addq.w     #8,a7
		move.b     (a0),d0
		lea.l      52(a7),a7
		rts

		.globl Acfg_setBool
Acfg_setBool:
		subq.w     #2,a7
		move.b     d0,(a7)
		clr.b      1(a7)
		pea.l      (a7)
		move.l     10(a7),-(a7)
		bsr        Acfg_setValue
		addq.w     #8,a7
		move.b     (a0),d0
		addq.w     #2,a7
		rts

		.globl Acfg_isChanged
Acfg_isChanged:
		move.l     a2,-(a7)
		lea.l      -10(a7),a7
		movea.l    a1,a2
		lea.l      xd3655,a1
		move.l     a1,-(a7)
		pea.l      4(a7)
		move.l     26(a7),-(a7)
		movea.l    a2,a1
		bsr        Acfg_getValue
		addq.w     #8,a7
		movea.l    (a7)+,a1
		jsr        Ast_icmp
		tst.w      d0
		bne.s      Acfg_isChanged_1
		moveq.l    #1,d0
		bra.s      Acfg_isChanged_2
Acfg_isChanged_1:
		clr.w      d0
Acfg_isChanged_2:
		lea.l      10(a7),a7
		movea.l    (a7)+,a2
		rts

		.globl Acfg_grpAnzahl
Acfg_grpAnzahl:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		lea.l      xd3655,a1
		move.l     a1,-(a7)
		tst.w      d0
		beq.s      Acfg_grpAnzahl_1
		bra.s      Acfg_grpAnzahl_2
Acfg_grpAnzahl_1:
		lea.l      xd365a,a1
Acfg_grpAnzahl_2:
		move.l     a1,-(a7)
		move.l     20(a7),-(a7)
		movea.l    a2,a1
		movea.l    a3,a0
		bsr        Acfg_setValue
		addq.w     #8,a7
		movea.l    (a7)+,a1
		jsr        Ast_icmp
		tst.w      d0
		bne.s      Acfg_grpAnzahl_3
		moveq.l    #1,d0
		bra.s      Acfg_grpAnzahl_4
Acfg_grpAnzahl_3:
		clr.w      d0
Acfg_grpAnzahl_4:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Acfg_grpName
Acfg_grpName:
		move.w     18(a0),d0
		rts

		.globl Acfg_strAnzahl
Acfg_strAnzahl:
		move.w     20(a0),d0
		rts

		.globl Acfg_isGroupPresent
Acfg_isGroupPresent:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a1,a3
		movea.l    a0,a2
		tst.w      d0
		bmi.s      Acfg_isGroupPresent_1
		cmp.w      20(a2),d0
		bge.s      Acfg_isGroupPresent_1
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a2),a1
		movea.l    0(a1,d0.l),a0
		movea.l    (a0),a1
		movea.l    a3,a0
		jsr        strcpy
		bra.s      Acfg_isGroupPresent_2
Acfg_isGroupPresent_1:
		suba.l     a0,a0
Acfg_isGroupPresent_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Acfg_isStringPresent
Acfg_isStringPresent:
		tst.w      d0
		bmi.s      Acfg_isStringPresent_1
		cmp.w      20(a0),d0
		bge.s      Acfg_isStringPresent_1
		move.w     d0,d1
		ext.l      d1
		lsl.l      #2,d1
		movea.l    22(a0),a1
		movea.l    0(a1,d1.l),a1
		move.w     4(a1),d0
		rts
Acfg_isStringPresent_1:
		clr.w      d0
		rts

		.globl Acfg_strName
Acfg_strName:
		move.l     a2,-(a7)
		lea.l      -18(a7),a7
		movea.l    a0,a2
		pea.l      xd3626
		lea.l      4(a7),a0
		jsr        InitCfgSearch
		addq.w     #4,a7
		lea.l      (a7),a1
		movea.l    a2,a0
		jsr        SearchGruppe
		move.l     a0,d0
		bne.s      Acfg_strName_1
		clr.w      d0
		bra.s      Acfg_strName_2
Acfg_strName_1:
		moveq.l    #1,d0
Acfg_strName_2:
		lea.l      18(a7),a7
		movea.l    (a7)+,a2
		rts

		.globl Acfg_strValue
Acfg_strValue:
		move.l     a2,-(a7)
		lea.l      -18(a7),a7
		movea.l    a0,a2
		move.l     26(a7),-(a7)
		lea.l      4(a7),a0
		jsr        InitCfgSearch
		addq.w     #4,a7
		lea.l      (a7),a1
		movea.l    a2,a0
		jsr        SearchCfgString
		cmpi.w     #$FFFF,16(a7)
		bne.s      Acfg_strValue_1
		clr.w      d0
		bra.s      Acfg_strValue_2
Acfg_strValue_1:
		moveq.l    #1,d0
Acfg_strValue_2:
		lea.l      18(a7),a7
		movea.l    (a7)+,a2
		rts

		.globl Acfg_strIsComment
Acfg_strIsComment:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a4
		move.w     d0,d3
		move.w     d1,d4
		movea.l    a1,a2
		clr.b      (a1)
		tst.w      d0
		bmi.s      Acfg_strIsComment_1
		cmp.w      20(a0),d0
		bge.s      Acfg_strIsComment_1
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a0),a1
		movea.l    0(a1,d0.l),a3
		tst.w      d1
		bmi.s      Acfg_strIsComment_1
		cmp.w      4(a3),d1
		bge.s      Acfg_strIsComment_1
		move.w     d3,d0
		jsr        x43198
		tst.w      d0
		bne.s      Acfg_strIsComment_1
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    6(a3),a0
		movea.l    0(a0,d0.l),a3
		movea.l    a3,a0
		moveq.l    #61,d0
		jsr        strchr
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      Acfg_strIsComment_1
		sub.l      a3,d0
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        strncpy
		movea.l    a4,a0
		suba.l     a3,a0
		clr.b      0(a2,a0.l)
Acfg_strIsComment_1:
		movea.l    a2,a0
		movem.l    (a7)+,d3-d4/a2-a4
		rts

		.globl Acfg_clearHeader
Acfg_clearHeader:
		movem.l    d3-d4/a3-a4,-(a7)
		move.w     d0,d3
		move.w     d1,d4
		movea.l    a1,a3
		clr.b      (a1)
		tst.w      d0
		bmi.s      Acfg_clearHeader_1
		cmp.w      20(a0),d0
		bge.s      Acfg_clearHeader_1
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a0),a1
		movea.l    0(a1,d0.l),a4
		tst.w      d1
		bmi.s      Acfg_clearHeader_1
		cmp.w      4(a4),d1
		bge.s      Acfg_clearHeader_1
		move.w     d3,d0
		jsr        x43198
		tst.w      d0
		beq.s      Acfg_clearHeader_2
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    6(a4),a0
		movea.l    0(a0,d0.l),a1
		movea.l    a3,a0
		jsr        strcpy
		movea.l    a3,a0
		jsr        Ast_alltrim
		bra.s      Acfg_clearHeader_1
Acfg_clearHeader_2:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    6(a4),a0
		movea.l    0(a0,d0.l),a4
		movea.l    a4,a0
		moveq.l    #61,d0
		jsr        strchr
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      Acfg_clearHeader_1
		addq.w     #1,a4
		movea.l    a4,a1
		movea.l    a3,a0
		jsr        strcpy
Acfg_clearHeader_1:
		movea.l    a3,a0
		movem.l    (a7)+,d3-d4/a3-a4
		rts

/* new function */
	.globl x43198
x43198:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		clr.w      d3
		tst.w      d0
		bmi.s      x43198_1
		cmp.w      20(a2),d0
		bge.s      x43198_1
		move.w     d0,d2
		ext.l      d2
		lsl.l      #2,d2
		movea.l    22(a2),a1
		movea.l    0(a1,d2.l),a0
		tst.w      d1
		bmi.s      x43198_1
		cmp.w      4(a0),d1
		bge.s      x43198_1
		move.w     d1,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    6(a0),a1
		movea.l    0(a1,d0.l),a3
		bra.s      x43198_2
x43198_4:
		addq.w     #1,a3
x43198_2:
		move.b     (a3),d0
		beq.s      x43198_3
		jsr        Ach_isWhite
		tst.w      d0
		bne.s      x43198_4
x43198_3:
		move.b     (a3),d0
		beq.s      x43198_1
		ext.w      d0
		movea.l    4(a2),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      x43198_1
		moveq.l    #1,d3
x43198_1:
		move.w     d3,d0
		movem.l    (a7)+,d3/a2-a3
		rts

/* new function */
	.globl x43200
x43200:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    a0,a2
		clr.w      d3
		bra.s      x43200_1
x43200_2:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    30(a2),a0
		movea.l    0(a0,d0.l),a0
		jsr        Ast_delete
		addq.w     #1,d3
x43200_1:
		cmp.w      28(a2),d3
		blt.s      x43200_2
		movea.l    30(a2),a0
		jsr        Ax_free
		clr.l      30(a2)
		clr.w      28(a2)
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Acfg_headAnzahl
Acfg_headAnzahl:
		move.w     28(a0),d0
		rts

		.globl Acfg_setHeader
Acfg_setHeader:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a3
		move.w     d0,d3
		movea.l    a1,a4
		movea.l    a0,a2
		bsr.w      x43200
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      Acfg_setHeader_1
		suba.l     a0,a0
		bra.s      Acfg_setHeader_2
Acfg_setHeader_1:
		move.w     d3,d1
		ext.l      d1
		lsl.l      #2,d1
		clr.w      d0
		movea.l    a3,a0
		jsr        memset
		move.w     d3,28(a2)
		move.l     a3,30(a2)
		clr.w      d4
		bra.s      Acfg_setHeader_3
Acfg_setHeader_4:
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    0(a4,d0.l),a0
		jsr        Ast_create
		jsr        Ast_alltrim
		move.w     d4,d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     a0,0(a3,d0.l)
		addq.w     #1,d4
Acfg_setHeader_3:
		cmp.w      d4,d3
		bgt.s      Acfg_setHeader_4
		movea.l    a4,a0
Acfg_setHeader_2:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

		.globl Acfg_getHeader
Acfg_getHeader:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a1,a3
		movea.l    a0,a2
		clr.w      d3
		bra.s      Acfg_getHeader_1
Acfg_getHeader_2:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    30(a2),a0
		movea.l    0(a0,d0.l),a0
		jsr        Ast_create
		jsr        Ast_alltrim
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     a0,0(a3,d0.l)
		addq.w     #1,d3
Acfg_getHeader_1:
		cmp.w      28(a2),d3
		blt.s      Acfg_getHeader_2
		movea.l    a3,a0
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Acfg_isCfgfile
Acfg_isCfgfile:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a1,a3
		movea.l    a0,a2
		move.w     14(a2),d0
		beq.s      Acfg_isCfgfile_1
		movea.l    (a0),a0
		jsr        Ast_cmp
		bra.s      Acfg_isCfgfile_2
Acfg_isCfgfile_1:
		movea.l    a3,a1
		movea.l    (a2),a0
		jsr        Ast_icmp
Acfg_isCfgfile_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

InitCfgSearch:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		clr.l      -(a7)
		lea.l      xd3632,a1
		move.l     a1,-(a7)
		movea.l    a2,a0
		jsr        Ast_create
		jsr        Ast_alltrim
		movea.l    (a7)+,a1
		jsr        Ast_filter
		addq.w     #4,a7
		move.l     a0,(a3)
		clr.l      4(a3)
		clr.l      -(a7)
		lea.l      xd364b,a1
		move.l     a1,-(a7)
		movea.l    20(a7),a0
		jsr        Ast_create
		jsr        Ast_alltrim
		movea.l    (a7)+,a1
		jsr        Ast_filter
		addq.w     #4,a7
		move.l     a0,8(a3)
		clr.l      12(a3)
		move.w     #$FFFF,16(a3)
		movea.l    a3,a0
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

SearchCfgString:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		clr.l      12(a2)
		move.w     #$FFFF,16(a2)
		jsr        SearchGruppe
		move.l     a0,4(a2)
		move.l     a0,d0
		beq.s      SearchCfgString_1
		move.l     6(a0),-(a7)
		move.w     4(a0),d0
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        SearchCfgNameInStrings
		addq.w     #4,a7
SearchCfgString_1:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

SearchCfgNameInStrings:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a5
		movea.l    a1,a4
		move.w     d0,d3
		movea.l    28(a7),a0
		suba.l     a2,a2
		tst.w      d0
		ble.s      SearchCfgNameInStrings_1
		move.l     a0,d1
		bne.s      SearchCfgNameInStrings_2
SearchCfgNameInStrings_1:
		cmp.w      #$FFFF,d3
		bne.s      SearchCfgNameInStrings_3
		move.l     a0,d0
		beq.s      SearchCfgNameInStrings_3
SearchCfgNameInStrings_2:
		clr.w      d4
		movea.l    a0,a2
		suba.l     a3,a3
		bra.s      SearchCfgNameInStrings_4
SearchCfgNameInStrings_8:
		move.l     (a2),d0
		beq.s      SearchCfgNameInStrings_5
		movea.l    d0,a0
		move.b     (a0),d1
		beq.s      SearchCfgNameInStrings_5
		move.l     a4,-(a7)
		movea.l    d0,a1
		movea.l    a5,a0
		jsr        SearchCfgName
		addq.w     #4,a7
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      SearchCfgNameInStrings_6
SearchCfgNameInStrings_5:
		addq.w     #1,d4
		addq.w     #4,a2
SearchCfgNameInStrings_4:
		tst.w      d3
		ble.s      SearchCfgNameInStrings_7
		cmp.w      d4,d3
		bgt.s      SearchCfgNameInStrings_8
SearchCfgNameInStrings_7:
		cmp.w      #$FFFF,d3
		bne.s      SearchCfgNameInStrings_6
		move.l     (a2),d0
		beq.s      SearchCfgNameInStrings_6
		movea.l    d0,a0
		move.b     (a0),d1
		bne.s      SearchCfgNameInStrings_8
SearchCfgNameInStrings_6:
		move.l     a3,d0
		beq.s      SearchCfgNameInStrings_3
		move.l     d0,12(a4)
		move.w     d4,16(a4)
SearchCfgNameInStrings_3:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

SearchGruppe:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		move.l     a2,d0
		bne.s      SearchGruppe_1
		suba.l     a0,a0
		bra.s      SearchGruppe_2
SearchGruppe_1:
		clr.w      d4
		move.w     d4,d3
		bra.s      SearchGruppe_3
SearchGruppe_10:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a3),a0
		movea.l    0(a0,d0.l),a4
		move.w     12(a3),d1
		beq.s      SearchGruppe_4
		movea.l    (a2),a1
		movea.l    (a4),a0
		jsr        Ast_cmp
		tst.w      d0
		bne.s      SearchGruppe_5
		moveq.l    #1,d4
		bra.s      SearchGruppe_6
SearchGruppe_5:
		clr.w      d4
SearchGruppe_6:
		bra.s      SearchGruppe_7
SearchGruppe_4:
		movea.l    (a2),a1
		movea.l    (a4),a0
		jsr        Ast_icmp
		tst.w      d0
		bne.s      SearchGruppe_8
		moveq.l    #1,d4
		bra.s      SearchGruppe_7
SearchGruppe_8:
		clr.w      d4
SearchGruppe_7:
		tst.w      d4
		bne.s      SearchGruppe_9
		addq.w     #1,d3
SearchGruppe_3:
		tst.w      d4
		bne.s      SearchGruppe_9
		cmp.w      20(a3),d3
		blt.s      SearchGruppe_10
SearchGruppe_9:
		tst.w      d4
		beq.s      SearchGruppe_11
		movea.l    a4,a0
		bra.s      SearchGruppe_2
SearchGruppe_11:
		suba.l     a0,a0
SearchGruppe_2:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

SearchCfgName:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		bra.s      SearchCfgName_1
SearchCfgName_3:
		addq.w     #1,a2
SearchCfgName_1:
		move.b     (a2),d0
		beq.s      SearchCfgName_2
		jsr        Ach_isWhite
		tst.w      d0
		bne.s      SearchCfgName_3
SearchCfgName_2:
		move.b     (a2),d0
		beq.s      SearchCfgName_4
		ext.w      d0
		movea.l    4(a3),a0
		jsr        strchr
		move.l     a0,d0
		bne        SearchCfgName_5
SearchCfgName_4:
		movea.l    20(a7),a0
		movea.l    8(a0),a4
		moveq.l    #1,d3
		bra.s      SearchCfgName_6
SearchCfgName_13:
		move.w     12(a3),d0
		beq.s      SearchCfgName_7
		move.b     (a2),d1
		cmp.b      (a4),d1
		bne.s      SearchCfgName_8
		moveq.l    #1,d3
		bra.s      SearchCfgName_9
SearchCfgName_8:
		clr.w      d3
SearchCfgName_9:
		bra.s      SearchCfgName_10
SearchCfgName_7:
		move.b     (a4),d0
		jsr        Ach_toupper
		move.b     d0,-(a7)
		move.b     (a2),d0
		jsr        Ach_toupper
		cmp.b      (a7)+,d0
		bne.s      SearchCfgName_11
		moveq.l    #1,d3
		bra.s      SearchCfgName_10
SearchCfgName_11:
		clr.w      d3
SearchCfgName_10:
		addq.w     #1,a4
		addq.w     #1,a2
SearchCfgName_6:
		tst.w      d3
		beq.s      SearchCfgName_12
		move.b     (a4),d0
		beq.s      SearchCfgName_12
		cmpi.b     #$3D,(a2)
		beq.s      SearchCfgName_12
		move.b     (a2),d1
		bne.s      SearchCfgName_13
		bra.s      SearchCfgName_12
SearchCfgName_15:
		addq.w     #1,a2
SearchCfgName_12:
		tst.w      d3
		beq.s      SearchCfgName_14
		move.b     (a2),d0
		beq.s      SearchCfgName_14
		jsr        Ach_isWhite
		tst.w      d0
		beq.s      SearchCfgName_14
		cmpi.b     #$3D,(a2)
		bne.s      SearchCfgName_15
SearchCfgName_14:
		tst.w      d3
		beq.s      SearchCfgName_5
		move.b     (a2),d0
		beq.s      SearchCfgName_5
		cmp.b      #$3D,d0
		bne.s      SearchCfgName_5
		cmp.b      #$3D,d0
		bne.s      SearchCfgName_16
		move.b     (a4),d1
		beq.s      SearchCfgName_16
SearchCfgName_5:
		suba.l     a0,a0
		bra.s      SearchCfgName_17
SearchCfgName_16:
		addq.w     #1,a2
		movea.l    a2,a0
SearchCfgName_17:
		movem.l    (a7)+,d3/a2-a4
		rts

CreateCfgGruppe:
		movem.l    d3/a2-a5,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		moveq.l    #10,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      CreateCfgGruppe_1
		clr.w      4(a2)
		clr.l      6(a2)
		movea.l    a3,a0
		jsr        Ast_create
		move.l     a0,(a2)
		move.l     a0,d0
		beq.s      CreateCfgGruppe_2
		move.w     20(a4),d3
		moveq.l    #1,d0
		add.w      d3,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a5
		move.l     a5,d0
		bne.s      CreateCfgGruppe_3
		movea.l    (a2),a0
		jsr        Ast_delete
CreateCfgGruppe_2:
		movea.l    a2,a0
		jsr        Ax_free
CreateCfgGruppe_1:
		suba.l     a0,a0
		bra.s      CreateCfgGruppe_4
CreateCfgGruppe_3:
		movea.l    a3,a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      CreateCfgGruppe_5
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a4),a1
		movea.l    a5,a0
		jsr        memcpy
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     a2,0(a5,d0.l)
		bra.s      CreateCfgGruppe_6
CreateCfgGruppe_5:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    22(a4),a1
		lea.l      4(a5),a0
		jsr        memcpy
		move.l     a2,(a5)
CreateCfgGruppe_6:
		movea.l    22(a4),a0
		jsr        Ax_free
		move.l     a5,22(a4)
		addq.w     #1,20(a4)
		movea.l    a2,a0
CreateCfgGruppe_4:
		movem.l    (a7)+,d3/a2-a5
		rts

CreateCfgString:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		movea.l    a1,a4
		move.w     4(a2),d3
		moveq.l    #1,d0
		add.w      d3,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      CreateCfgString_1
		clr.w      d0
		bra.s      CreateCfgString_2
CreateCfgString_1:
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		movea.l    6(a2),a1
		movea.l    a3,a0
		jsr        memcpy
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		move.l     a4,0(a3,d0.l)
		movea.l    6(a2),a0
		jsr        Ax_free
		move.l     a3,6(a2)
		addq.w     #1,4(a2)
		moveq.l    #1,d0
CreateCfgString_2:
		movem.l    (a7)+,d3/a2-a4
		rts

DeleteCfgString:
		movem.l    d3-d4/a2-a3,-(a7)
		movea.l    a0,a2
		move.w     d0,d4
		moveq.l    #-1,d3
		add.w      4(a2),d3
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		jsr        Ax_malloc
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      DeleteCfgString_1
		clr.w      d0
		bra.s      DeleteCfgString_2
DeleteCfgString_1:
		clr.w      d0
		movea.l    a3,a0
		bra.s      DeleteCfgString_3
DeleteCfgString_5:
		cmp.w      d0,d4
		beq.s      DeleteCfgString_4
		move.w     d0,d1
		ext.l      d1
		lsl.l      #2,d1
		movea.l    6(a2),a1
		move.l     0(a1,d1.l),(a0)+
DeleteCfgString_4:
		addq.w     #1,d0
DeleteCfgString_3:
		cmp.w      d0,d3
		bge.s      DeleteCfgString_5
		movea.l    6(a2),a0
		jsr        Ax_free
		move.l     a3,6(a2)
		subq.w     #1,4(a2)
		moveq.l    #1,d0
DeleteCfgString_2:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

		.data

default_info:
		dc.l xd3626
		dc.l xd3627
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
xd3626:
		dc.b $00
xd3627:
		dc.b $25
		dc.w $3b00
xd362a:
		dc.b 'cfg',0
xd362e:
		dc.w $5c00
xd3630:
		dc.w $7200
xd3632:
		dc.w $5b5d
		dc.b $00
xd3635:
		dc.b '%c '
xd3638:
		dc.b '%s'
xd363a:
		dc.b $0a,0
xd363c:
		dc.b '%c',$0a,0
xd3640:
		dc.w $7700
xd3642:
		dc.b '[%s]',$0a,0
xd3648:
		dc.w $7878
		dc.b $00
xd364b:
		dc.b $3d
		dc.b $00
xd364d:
		dc.b '%li',0
xd3651:
		dc.b '%lf',0
xd3655:
		dc.b 'True',0
xd365a:
		dc.b 'False',0
		.even

	.bss

s_val: ds.b 8192
