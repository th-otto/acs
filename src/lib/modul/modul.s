		.text

		.globl Ax_mterm
Ax_mterm:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		lea.l      oldbas,a2
		move.l     (a2),d0
		beq.s      Ax_mterm_1
		movea.l    ACSblk,a0
		move.w     566(a0),d1
		bne.s      Ax_mterm_2
		move.w     568(a0),d2
		beq.s      Ax_mterm_3
Ax_mterm_2:
		movea.l    (a2),a0
		jsr        Mfree
		bra.s      Ax_mterm_1
Ax_mterm_3:
		jsr        accgemdos
		movea.l    (a2),a0
		jsr        Mfree
		jsr        oldgemdos
Ax_mterm_1:
		move.l     a3,(a2)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Ash_module
Ash_module:
		movem.l    d3-d4/a2-a5,-(a7)
		movea.l    a0,a3
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		move.w     566(a0),d0
		bne.s      Ash_module_1
		move.w     568(a0),d1
		bne.s      Ash_module_1
		moveq.l    #1,d3
		bra.s      Ash_module_2
Ash_module_1:
		clr.w      d3
Ash_module_2:
		tst.w      d3
		beq.s      Ash_module_3
		jsr        accgemdos
Ash_module_3:
		lea.l      nix,a5
		pea.l      (a5)
		movea.l    a5,a1
		movea.l    a3,a0
		moveq.l    #3,d0
		jsr        Pexec
		addq.w     #4,a7
		movea.l    d0,a5
		lea.l      256(a5),a4
		tst.l      d0
		bmi        Ash_module_4
		cmp.l      #$0000FFFF,d0
		beq        Ash_module_4
		move.l     12(a5),d1
		add.l      20(a5),d1
		add.l      28(a5),d1
		add.l      #$00000400,d1
		movea.l    a5,a0
		clr.w      d0
		jsr        Mshrink
		tst.w      d0
		beq.s      Ash_module_5
		movea.l    a3,a0
		moveq.l    #15,d0
		movea.l    (a2),a1
		movea.l    982(a1),a1
		jsr        (a1)
Ash_module_5:
		cmpi.l     #$41435336,(a4)
		blt.s      Ash_module_6
		cmpi.l     #$41435337,(a4)
		bgt.s      Ash_module_6
		moveq.l    #1,d4
		bra.s      Ash_module_7
Ash_module_6:
		cmpi.l     #$41435330,(a4)
		blt.s      Ash_module_8
		cmpi.l     #$41435338,(a4)
		ble.s      Ash_module_9
Ash_module_8:
		cmpi.l     #$42674E41,(a4)
		bne.s      Ash_module_9
		cmpi.l     #$41435339,4(a4)
		bne.s      Ash_module_9
		clr.w      d4
Ash_module_7:
		tst.w      d4
		bne.s      Ash_module_10
		movea.l    a4,a0
		jsr        PushFuncLists
		tst.w      d0
		bne.s      Ash_module_10
Ash_module_9:
		movea.l    a5,a0
		jsr        Mfree
		tst.w      d3
		beq.s      Ash_module_11
		jsr        oldgemdos
Ash_module_11:
		movea.l    a3,a0
		moveq.l    #14,d0
		movea.l    (a2),a1
		movea.l    982(a1),a1
		jsr        (a1)
		bra.s      Ash_module_12
Ash_module_10:
		tst.w      d3
		beq.s      Ash_module_13
		jsr        oldgemdos
Ash_module_13:
		tst.w      d4
		bne.s      Ash_module_14
		clr.l      -(a7)
		movea.l    a5,a1
		suba.l     a0,a0
		moveq.l    #4,d0
		jsr        Pexec
		addq.w     #4,a7
		tst.l      d0
		beq.s      Ash_module_14
		tst.w      d3
		beq.s      Ash_module_15
		jsr        accgemdos
Ash_module_15:
		movea.l    a5,a0
		jsr        Mfree
Ash_module_4:
		tst.w      d3
		beq.s      Ash_module_16
		jsr        oldgemdos
Ash_module_16:
		movea.l    a3,a0
		moveq.l    #13,d0
		movea.l    (a2),a1
		movea.l    982(a1),a1
		jsr        (a1)
Ash_module_12:
		moveq.l    #-1,d0
		bra.s      Ash_module_17
Ash_module_14:
		tst.w      d4
		beq.s      Ash_module_18
		cmpi.l     #$41435336,(a4)
		blt.s      Ash_module_19
		cmpi.l     #$41435337,(a4)
		bgt.s      Ash_module_19
		movea.l    4(a4),a5
		move.l     (a2),8(a4)
		cmpi.l     #$41435336,(a4)
		bne.s      Ash_module_20
		lea.l      ACS230,a0
		bra.s      Ash_module_21
Ash_module_20:
		lea.l      ACS233,a0
Ash_module_21:
		move.l     a0,12(a4)
		bra.s      Ash_module_19
Ash_module_18:
		movea.l    8(a4),a5
		move.l     (a2),12(a4)
		move.l     _globl,16(a4)
Ash_module_19:
		jsr        (a5)
Ash_module_17:
		movem.l    (a7)+,d3-d4/a2-a5
		rts

PushFuncLists:
		movem.l    a2-a4,-(a7)
		lea.l      24(a0),a1
		lea.l      funcs,a2
		lea.l      funcsAnz,a3
		move.l     20(a0),d1
		cmp.l      (a3),d1
		bne.s      PushFuncLists_1
		clr.w      d0
		bra.s      PushFuncLists_2
PushFuncLists_9:
		move.w     4(a1),d1
		clr.l      (a1)
		clr.w      d2
		movea.l    (a2),a0
		bra.s      PushFuncLists_3
PushFuncLists_6:
		cmp.w      4(a0),d1
		bne.s      PushFuncLists_4
		move.l     (a0),(a1)
PushFuncLists_4:
		addq.w     #1,d2
		addq.w     #6,a0
PushFuncLists_3:
		tst.l      (a1)
		bne.s      PushFuncLists_5
		movea.l    4(a2),a4
		cmp.w      (a4),d2
		blt.s      PushFuncLists_6
PushFuncLists_5:
		move.l     (a1),d1
		bne.s      PushFuncLists_7
PushFuncLists_1:
		clr.w      d0
		bra.s      PushFuncLists_8
PushFuncLists_7:
		addq.w     #1,d0
		addq.w     #6,a1
		addq.w     #8,a2
PushFuncLists_2:
		move.w     d0,d1
		ext.l      d1
		cmp.l      (a3),d1
		blt.s      PushFuncLists_9
		moveq.l    #1,d0
PushFuncLists_8:
		movem.l    (a7)+,a2-a4
		rts

		.data

oldbas:
		dc.l 0
nix:
		dc.b 0,0,0,0

