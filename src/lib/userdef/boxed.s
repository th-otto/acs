
boxed_insert:
		movem.l    d3-d5/a2-a4,-(a7)
		lea.l      -266(a7),a7
		move.l     a0,262(a7)
		movea.l    a1,a4
		move.w     d0,d5
		moveq.l    #-1,d3
		movea.l    12(a0),a0
		movea.l    16(a0),a3
		move.l     516(a3),(a7)
		lea.l      4(a0),a2
		move.l     (a7),d1
		beq.s      boxed_insert_1
		movea.l    d1,a0
		move.w     28(a0),d2
		cmp.w      524(a3),d2
		bne.s      boxed_insert_1
		movea.l    528(a3),a1
		move.w     (a1),d3
		movea.l    532(a3),a0
		move.w     (a0),d4
boxed_insert_1:
		tst.w      d3
		bpl.s      boxed_insert_2
		clr.w      d3
		move.w     526(a3),d4
boxed_insert_2:
		tst.w      d4
		ble.s      boxed_insert_3
		move.w     d4,d1
		move.w     d3,d0
		movea.l    262(a7),a0
		jsr        boxed_delsel
boxed_insert_3:
		move.w     2(a2),d4
		lsr.w      #8,d4
		and.w      #$00FF,d4
		lea.l      4(a7),a2
		movea.l    a4,a0
		jsr        strlen
		move.w     d0,(a2)
		move.w     526(a3),d1
		add.w      d0,d1
		cmp.w      d1,d4
		bge.s      boxed_insert_4
		move.w     d4,d2
		sub.w      526(a3),d2
		move.w     d2,(a2)
boxed_insert_4:
		move.w     (a2),d0
		ble        boxed_insert_5
		pea.l      (a2)
		pea.l      10(a7)
		movea.l    a4,a1
		movea.l    270(a7),a0
		jsr        boxed_checktext
		addq.w     #8,a7
		tst.w      d0
		beq        boxed_insert_5
		lea.l      0(a3,d3.w),a4
		lea.l      256(a4),a4
		move.w     526(a3),d4
		move.w     d3,d0
		add.w      (a2),d0
		sub.w      d0,d4
		addq.w     #1,d4
		tst.w      d4
		bgt.s      boxed_insert_6
		lea.l      6(a7),a1
		movea.l    a4,a0
		jsr        strcpy
		bra.s      boxed_insert_7
boxed_insert_8:
		move.w     d4,d0
		add.w      (a2),d0
		move.b     0(a4,d4.w),0(a4,d0.w)
		subq.w     #1,d4
boxed_insert_6:
		tst.w      d4
		bpl.s      boxed_insert_8
		move.w     (a2),d0
		ext.l      d0
		lea.l      6(a7),a1
		movea.l    a4,a0
		jsr        memcpy
boxed_insert_7:
		move.l     (a7),d0
		beq.s      boxed_insert_9
		move.w     524(a3),d1
		movea.l    d0,a0
		cmp.w      28(a0),d1
		bne.s      boxed_insert_9
		movea.l    528(a3),a1
		move.w     (a1),d2
		bmi.s      boxed_insert_9
		tst.w      d5
		beq.s      boxed_insert_10
		movea.l    532(a3),a4
		move.w     (a2),(a4)
		move.w     (a2),d0
		ext.l      d0
		movea.l    528(a3),a1
		move.w     (a1),d1
		lea.l      0(a3,d1.w),a1
		lea.l      256(a1),a1
		movea.l    a3,a0
		jsr        memcpy
		move.w     (a2),d0
		clr.b      0(a3,d0.w)
		bra.s      boxed_insert_11
boxed_insert_10:
		lea.l      256(a3),a1
		movea.l    a3,a0
		jsr        strcpy
		movea.l    528(a3),a0
		addq.w     #1,(a0)
boxed_insert_11:
		move.w     (a2),d0
		add.w      d0,526(a3)
		movea.l    262(a7),a0
		jsr        boxed_postcheck
		moveq.l    #-1,d0
		movea.l    262(a7),a0
		jsr        boxed_viewpos
		bra.s      boxed_insert_12
boxed_insert_9:
		lea.l      256(a3),a1
		movea.l    a3,a0
		jsr        strcpy
		move.w     (a2),d0
		add.w      d0,526(a3)
		movea.l    262(a7),a0
		jsr        boxed_postcheck
boxed_insert_12:
		ori.w      #$0004,546(a3)
		move.l     (a7),d0
		beq.s      boxed_insert_5
		suba.l     a1,a1
		movea.l    d0,a0
		movea.l    d0,a2
		movea.l    4(a2),a2
		moveq.l    #26,d0
		jsr        (a2)
boxed_insert_5:
		lea.l      266(a7),a7
		movem.l    (a7)+,d3-d5/a2-a4
		rts

boxed_within:
		movem.l    d3-d4/a2-a3,-(a7)
		move.b     d0,d4
		movea.l    a0,a2
		movea.l    a1,a3
		clr.w      d3
		jsr        strlen
		asr.w      #1,d0
		bra.s      boxed_within_1
boxed_within_4:
		cmp.b      0(a2,d3.w),d4
		bcs.s      boxed_within_2
		cmp.b      1(a2,d3.w),d4
		bls.s      boxed_within_3
boxed_within_2:
		subq.w     #1,d0
		addq.w     #2,d3
boxed_within_1:
		tst.w      d0
		bgt.s      boxed_within_4
		move.l     a3,d0
		beq.s      boxed_within_5
		clr.w      d0
		move.b     d4,d0
		movea.l    a3,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      boxed_within_5
boxed_within_3:
		moveq.l    #1,d0
		bra.s      boxed_within_6
boxed_within_5:
		clr.w      d0
boxed_within_6:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

boxed_findsep:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.b     d0,d3
		movea.l    a1,a2
		moveq.l    #0,d1
		move.l     d1,4(a2)
		move.l     d1,(a1)
		ext.w      d0
		jsr        strchr
		move.l     a0,(a2)
		move.l     a0,d0
		beq.s      boxed_findsep_1
		move.b     d3,d0
		ext.w      d0
		addq.w     #1,a0
		jsr        strchr
		move.l     a0,4(a2)
boxed_findsep_1:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

boxed_checktext:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -14(a7),a7
		movea.l    a1,a5
		moveq.l    #-1,d3
		clr.w      12(a7)
		clr.b      d5
		movea.l    54(a7),a1
		move.b     d5,(a1)
		movea.l    12(a0),a0
		movea.l    16(a0),a3
		lea.l      4(a0),a1
		move.l     a1,(a7)
		movea.l    516(a3),a0
		move.l     a0,d0
		beq.s      boxed_checktext_1
		move.w     28(a0),d1
		cmp.w      524(a3),d1
		bne.s      boxed_checktext_1
		movea.l    528(a3),a0
		move.w     (a0),d3
boxed_checktext_1:
		tst.w      d3
		bpl.s      boxed_checktext_2
		move.w     526(a3),d3
boxed_checktext_2:
		movea.l    58(a7),a0
		move.w     (a0),d6
		ble        boxed_checktext_3
		movea.l    (a7),a1
		move.w     2(a1),d0
		lsr.w      #3,d0
		and.w      #$0001,d0
		beq.s      boxed_checktext_4
		moveq.l    #1,d7
		bra.s      boxed_checktext_5
boxed_checktext_4:
		clr.w      d7
boxed_checktext_5:
		movea.l    54(a7),a4
		clr.w      d4
		move.l     512(a3),d0
		beq.s      boxed_checktext_6
		bra.s      boxed_checktext_7
boxed_checktext_9:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_7:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		clr.w      d0
		move.b     0(a5,d4.w),d0
		movea.l    512(a3),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      boxed_checktext_9
		bra        boxed_checktext_8
boxed_checktext_6:
		lea.l      4(a7),a2
		movea.l    (a7),a0
		move.w     (a0),d0
		lsr.w      #3,d0
		and.w      #$001F,d0
		cmp.w      #$001A,d0
		bhi        boxed_checktext_8
		add.w      d0,d0
		move.w     J53(pc,d0.w),d0
		jmp        J53(pc,d0.w)
J53:
		dc.w boxed_checktext_10-J53
		dc.w boxed_checktext_10-J53
		dc.w boxed_checktext_11-J53
		dc.w boxed_checktext_12-J53
		dc.w boxed_checktext_13-J53
		dc.w boxed_checktext_14-J53
		dc.w boxed_checktext_15-J53
		dc.w boxed_checktext_16-J53
		dc.w boxed_checktext_17-J53
		dc.w boxed_checktext_18-J53
		dc.w boxed_checktext_19-J53
		dc.w boxed_checktext_20-J53
		dc.w boxed_checktext_21-J53
		dc.w boxed_checktext_22-J53
		dc.w boxed_checktext_23-J53
		dc.w boxed_checktext_24-J53
		dc.w boxed_checktext_25-J53
		dc.w boxed_checktext_26-J53
		dc.w boxed_checktext_27-J53
		dc.w boxed_checktext_28-J53
		dc.w boxed_checktext_29-J53
		dc.w boxed_checktext_30-J53
		dc.w boxed_checktext_29-J53
		dc.w boxed_checktext_30-J53
		dc.w boxed_checktext_31-J53
		dc.w boxed_checktext_31-J53
		dc.w boxed_checktext_31-J53
boxed_checktext_10:
		move.w     d6,d0
		sub.w      d4,d0
		ext.l      d0
		lea.l      0(a5,d4.w),a1
		movea.l    a4,a0
		jsr        strncpy
		move.w     d6,d0
		sub.w      d4,d0
		adda.w     d0,a4
		bra        boxed_checktext_8
boxed_checktext_32:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_11:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		clr.w      d0
		move.b     0(a5,d4.w),d0
		lea.l      xd4f8a,a0
		jsr        strchr
		move.l     a0,d0
		beq.s      boxed_checktext_32
		bra        boxed_checktext_8
boxed_checktext_12:
		moveq.l    #1,d7
		bra.s      boxed_checktext_33
boxed_checktext_34:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_33:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		lea.l      xd4f94,a1
		lea.l      xd4f8d,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_34
		bra        boxed_checktext_8
boxed_checktext_13:
		moveq.l    #1,d7
		bra.s      boxed_checktext_35
boxed_checktext_36:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_35:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		lea.l      xd4faf,a1
		lea.l      xd4f8d,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_36
		bra        boxed_checktext_8
boxed_checktext_14:
		moveq.l    #1,d7
		bra.s      boxed_checktext_37
boxed_checktext_38:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_37:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		lea.l      xd4fcc,a1
		lea.l      xd4f8d,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_38
		bra        boxed_checktext_8
boxed_checktext_15:
		moveq.l    #1,d7
		bra.s      boxed_checktext_39
boxed_checktext_40:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_39:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		lea.l      xd4fe9,a1
		lea.l      xd4f8d,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_40
		bra        boxed_checktext_8
boxed_checktext_41:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_16:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		cmpi.b     #$20,0(a5,d4.w)
		bcc.s      boxed_checktext_41
		bra        boxed_checktext_8
boxed_checktext_17:
		move.w     #$0001,12(a7)
		bra.s      boxed_checktext_18
boxed_checktext_44:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_18:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		lea.l      xd500d,a1
		move.l     a1,-(a7)
		move.w     16(a7),d0
		beq.s      boxed_checktext_42
		lea.l      xd5008,a0
		bra.s      boxed_checktext_43
boxed_checktext_42:
		lea.l      xd4f8d,a0
boxed_checktext_43:
		move.b     0(a5,d4.w),d0
		movea.l    (a7)+,a1
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_44
		bra        boxed_checktext_8
boxed_checktext_20:
		tst.w      d4
		bne.s      boxed_checktext_19
		tst.w      d3
		bne.s      boxed_checktext_19
		cmpi.b     #$2D,0(a5,d4.w)
		bne.s      boxed_checktext_19
boxed_checktext_45:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_19:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		suba.l     a1,a1
		lea.l      xd500f,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_45
		bra        boxed_checktext_8
boxed_checktext_22:
		tst.w      d4
		bne.s      boxed_checktext_21
		tst.w      d3
		bne.s      boxed_checktext_21
		cmpi.b     #$2D,0(a5,d4.w)
		bne.s      boxed_checktext_21
boxed_checktext_46:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_21:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		suba.l     a1,a1
		lea.l      xd5012,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_46
		bra        boxed_checktext_8
boxed_checktext_24:
		tst.w      d4
		bne.s      boxed_checktext_23
		tst.w      d3
		bne.s      boxed_checktext_23
		cmpi.b     #$2D,0(a5,d4.w)
		bne.s      boxed_checktext_23
boxed_checktext_47:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_23:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		suba.l     a1,a1
		lea.l      xd4f91,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_47
		bra        boxed_checktext_8
boxed_checktext_26:
		tst.w      d4
		bne.s      boxed_checktext_25
		tst.w      d3
		bne.s      boxed_checktext_25
		cmpi.b     #$2D,0(a5,d4.w)
		bne.s      boxed_checktext_25
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_25:
		moveq.l    #1,d7
		bra.s      boxed_checktext_48
boxed_checktext_49:
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_48:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		suba.l     a1,a1
		lea.l      xd5015,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_49
		bra        boxed_checktext_8
boxed_checktext_28:
		tst.w      d4
		bne.s      boxed_checktext_27
		tst.w      d3
		bne.s      boxed_checktext_27
		cmpi.b     #$2D,0(a5,d4.w)
		bne.s      boxed_checktext_27
		move.b     0(a5,d4.w),(a4)+
		addq.w     #1,d4
boxed_checktext_27:
		moveq.l    #46,d0
		lea.l      256(a3),a0
		jsr        strchr
		move.l     a0,(a2)
		moveq.l    #46,d0
		movea.l    a5,a0
		jsr        strchr
		move.l     a0,4(a2)
		bra.s      boxed_checktext_50
boxed_checktext_53:
		cmpi.b     #$2E,0(a5,d4.w)
		bne.s      boxed_checktext_51
		move.l     (a2),d0
		bne.s      boxed_checktext_52
		lea.l      0(a5,d4.w),a0
		cmpa.l     4(a2),a0
		bne.s      boxed_checktext_52
boxed_checktext_51:
		move.b     0(a5,d4.w),(a4)+
boxed_checktext_52:
		addq.w     #1,d4
boxed_checktext_50:
		cmp.w      d4,d6
		ble        boxed_checktext_8
		lea.l      xd501c,a1
		lea.l      xd4f91,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		bne.s      boxed_checktext_53
		bra.w      boxed_checktext_8
boxed_checktext_29:
		moveq.l    #46,d5
boxed_checktext_30:
		tst.b      d5
		bne.s      boxed_checktext_31
		moveq.l    #47,d5
boxed_checktext_31:
		tst.b      d5
		bne.s      boxed_checktext_54
		moveq.l    #58,d5
boxed_checktext_54:
		movea.l    a2,a1
		move.b     d5,d0
		lea.l      256(a3),a0
		bsr        boxed_findsep
		bra.s      boxed_checktext_55
boxed_checktext_62:
		clr.w      d0
		move.b     0(a5,d4.w),d0
		sub.w      #$002E,d0
		beq.s      boxed_checktext_56
		subq.w     #1,d0
		beq.s      boxed_checktext_56
		sub.w      #$000B,d0
		beq.s      boxed_checktext_56
		bra.s      boxed_checktext_57
boxed_checktext_56:
		cmp.b      0(a5,d4.w),d5
		bne.s      boxed_checktext_58
		clr.w      d0
		bra.s      boxed_checktext_59
boxed_checktext_61:
		move.w     d0,d1
		lsl.w      #2,d1
		move.l     0(a2,d1.w),d2
		bne.s      boxed_checktext_60
		lea.l      0(a5,d4.w),a0
		move.l     a0,0(a2,d1.w)
		move.b     d5,(a4)+
		bra.s      boxed_checktext_58
boxed_checktext_60:
		addq.w     #1,d0
boxed_checktext_59:
		cmp.w      #$0002,d0
		blt.s      boxed_checktext_61
		bra.s      boxed_checktext_58
boxed_checktext_57:
		suba.l     a1,a1
		lea.l      xd4f91,a0
		move.b     0(a5,d4.w),d0
		bsr        boxed_within
		tst.w      d0
		beq.s      boxed_checktext_58
		move.b     0(a5,d4.w),(a4)+
boxed_checktext_58:
		addq.w     #1,d4
boxed_checktext_55:
		cmp.w      d4,d6
		bgt.s      boxed_checktext_62
boxed_checktext_8:
		clr.b      d0
		move.b     d0,(a4)
		movea.l    54(a7),a0
		move.b     d0,0(a0,d6.w)
		tst.w      d7
		beq.s      boxed_checktext_63
		jsr        Ast_toupper
boxed_checktext_63:
		movea.l    54(a7),a0
		jsr        strlen
		movea.l    58(a7),a0
		move.w     d0,(a0)
		tst.w      d0
		ble.s      boxed_checktext_3
		moveq.l    #1,d0
		bra.s      boxed_checktext_64
boxed_checktext_3:
		clr.w      d0
boxed_checktext_64:
		lea.l      14(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

boxed_validate:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		movea.l    a1,a3
		moveq.l    #0,d3
		lea.l      -9(a3),a0
		cmpa.l     a0,a2
		bcc.s      boxed_validate_1
		lea.l      9(a2),a3
boxed_validate_1:
		move.b     (a2),d0
		ext.w      d0
		jsr        isdigit
		tst.w      d0
		bne.s      boxed_validate_2
		moveq.l    #-1,d0
		bra.s      boxed_validate_3
boxed_validate_5:
		move.l     d3,d0
		lsl.l      #2,d0
		add.l      d3,d0
		add.l      d0,d0
		move.l     d0,d3
		move.b     (a2),d1
		ext.w      d1
		add.w      #$FFD0,d1
		ext.l      d1
		add.l      d1,d3
		addq.w     #1,a2
boxed_validate_2:
		cmpa.l     a2,a3
		bls.s      boxed_validate_4
		move.b     (a2),d0
		ext.w      d0
		jsr        isdigit
		tst.w      d0
		bne.s      boxed_validate_5
boxed_validate_4:
		move.l     d3,d0
boxed_validate_3:
		movem.l    (a7)+,d3/a2-a3
		rts

boxed_postcheck:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -268(a7),a7
		lea.l      4(a7),a2
		lea.l      xd4e86,a1
		movea.l    a2,a3
		move.w     #$00FF,d0
boxed_postcheck_1:
		move.b     (a1)+,(a3)+
		dbf        d0,boxed_postcheck_1
		moveq.l    #-1,d3
		move.l     d3,d4
		move.l     d3,d5
		movea.l    12(a0),a0
		movea.l    16(a0),a3
		lea.l      4(a0),a5
		move.w     (a5),d0
		lsr.w      #3,d0
		and.w      #$001F,d0
		sub.w      #$0014,d0
		cmp.w      #$0006,d0
		bhi.s      boxed_postcheck_2
		add.w      d0,d0
		move.w     J54(pc,d0.w),d0
		jmp        J54(pc,d0.w)
J54:
		dc.w boxed_postcheck_3-J54
		dc.w boxed_postcheck_4-J54
		dc.w boxed_postcheck_3-J54
		dc.w boxed_postcheck_4-J54
		dc.w boxed_postcheck_5-J54
		dc.w boxed_postcheck_5-J54
		dc.w boxed_postcheck_5-J54
boxed_postcheck_3:
		moveq.l    #46,d6
		bra.s      boxed_postcheck_2
boxed_postcheck_4:
		moveq.l    #47,d6
		bra.s      boxed_postcheck_2
boxed_postcheck_5:
		moveq.l    #58,d6
boxed_postcheck_2:
		lea.l      260(a7),a4
		move.w     (a5),d0
		lsr.w      #3,d0
		and.w      #$001F,d0
		cmp.w      #$0014,d0
		bcs.w      boxed_postcheck_6
		move.w     (a5),d1
		lsr.w      #3,d1
		and.w      #$001F,d1
		cmp.w      #$001A,d1
		bhi.s      boxed_postcheck_6
		movea.l    a4,a1
		lea.l      256(a3),a0
		move.b     d6,d0
		bsr        boxed_findsep
		move.l     (a4),d0
		beq.s      boxed_postcheck_7
		movea.l    d0,a1
		bra.s      boxed_postcheck_8
boxed_postcheck_7:
		move.w     526(a3),d0
		lea.l      0(a3,d0.w),a1
		lea.l      256(a1),a1
boxed_postcheck_8:
		lea.l      256(a3),a0
		bsr        boxed_validate
		move.l     d0,d3
		move.l     (a4),d1
		beq.s      boxed_postcheck_6
		move.l     4(a4),d2
		beq.s      boxed_postcheck_9
		movea.l    d2,a1
		bra.s      boxed_postcheck_10
boxed_postcheck_9:
		move.w     526(a3),d0
		lea.l      0(a3,d0.w),a1
		lea.l      256(a1),a1
boxed_postcheck_10:
		movea.l    (a4),a0
		addq.w     #1,a0
		bsr        boxed_validate
		move.l     d0,d4
		move.l     4(a4),d1
		beq.s      boxed_postcheck_6
		move.w     526(a3),d2
		lea.l      0(a3,d2.w),a1
		lea.l      256(a1),a1
		movea.l    d1,a0
		addq.w     #1,a0
		bsr        boxed_validate
		move.l     d0,d5
boxed_postcheck_6:
		move.w     (a5),d0
		lsr.w      #3,d0
		and.w      #$001F,d0
		sub.w      #$0014,d0
		cmp.w      #$0006,d0
		bhi        boxed_postcheck_11
		add.w      d0,d0
		move.w     J55(pc,d0.w),d0
		jmp        J55(pc,d0.w)
J55:
		dc.w boxed_postcheck_12-J55
		dc.w boxed_postcheck_12-J55
		dc.w boxed_postcheck_12-J55
		dc.w boxed_postcheck_12-J55
		dc.w boxed_postcheck_13-J55
		dc.w boxed_postcheck_14-J55
		dc.w boxed_postcheck_15-J55
boxed_postcheck_12:
		move.w     (a5),d0
		lsr.w      #3,d0
		and.w      #$001F,d0
		cmp.w      #$0016,d0
		beq.s      boxed_postcheck_16
		move.w     (a5),d1
		lsr.w      #3,d1
		and.w      #$001F,d1
		cmp.w      #$0017,d1
		bne.s      boxed_postcheck_17
boxed_postcheck_16:
		move.l     d3,(a7)
		move.l     d4,d3
		move.l     (a7),d4
boxed_postcheck_17:
		moveq.l    #12,d0
		cmp.l      d4,d0
		bge.s      boxed_postcheck_18
		move.l     d0,d4
boxed_postcheck_18:
		tst.l      d4
		ble.s      boxed_postcheck_19
		tst.l      d5
		bmi.s      boxed_postcheck_19
		moveq.l    #2,d0
		cmp.l      d4,d0
		bne.s      boxed_postcheck_20
		move.l     d5,d0
		move.l     #$00000190,d1
		jsr        _lmod
		tst.l      d0
		beq.s      boxed_postcheck_21
		move.l     d5,d0
		moveq.l    #4,d1
		jsr        _lmod
		tst.l      d0
		bne.s      boxed_postcheck_22
		move.l     d5,d0
		moveq.l    #100,d1
		jsr        _lmod
		tst.l      d0
		beq.s      boxed_postcheck_22
boxed_postcheck_21:
		moveq.l    #29,d7
		bra.s      boxed_postcheck_23
boxed_postcheck_22:
		moveq.l    #28,d7
boxed_postcheck_23:
		bra.s      boxed_postcheck_24
boxed_postcheck_20:
		moveq.l    #7,d0
		cmp.l      d4,d0
		bge.s      boxed_postcheck_25
		moveq.l    #-7,d7
		add.w      d4,d7
		bra.s      boxed_postcheck_26
boxed_postcheck_25:
		move.w     d4,d7
boxed_postcheck_26:
		move.w     d7,d0
		ext.l      d0
		divs.w     #$0002,d0
		swap       d0
		tst.w      d0
		bne.s      boxed_postcheck_27
		moveq.l    #30,d1
		bra.s      boxed_postcheck_28
boxed_postcheck_27:
		moveq.l    #31,d1
boxed_postcheck_28:
		move.w     d1,d7
		bra.s      boxed_postcheck_24
boxed_postcheck_19:
		moveq.l    #31,d7
boxed_postcheck_24:
		move.w     d7,d0
		ext.l      d0
		cmp.l      d0,d3
		ble.s      boxed_postcheck_29
		move.l     d0,d3
boxed_postcheck_29:
		move.w     (a5),d0
		lsr.w      #3,d0
		and.w      #$001F,d0
		cmp.w      #$0016,d0
		beq.s      boxed_postcheck_30
		move.w     (a5),d1
		lsr.w      #3,d1
		and.w      #$001F,d1
		cmp.w      #$0017,d1
		bne.s      boxed_postcheck_11
boxed_postcheck_30:
		move.l     d3,(a7)
		move.l     d4,d3
		move.l     (a7),d4
		bra.s      boxed_postcheck_11
boxed_postcheck_14:
		moveq.l    #12,d0
		cmp.l      d3,d0
		bge.s      boxed_postcheck_15
		move.l     d0,d3
boxed_postcheck_15:
		moveq.l    #23,d0
		cmp.l      d3,d0
		bge.s      boxed_postcheck_13
		move.l     d0,d3
boxed_postcheck_13:
		moveq.l    #59,d0
		cmp.l      d4,d0
		bge.s      boxed_postcheck_31
		move.l     d0,d4
boxed_postcheck_31:
		moveq.l    #59,d0
		cmp.l      d5,d0
		bge.s      boxed_postcheck_11
		move.l     d0,d5
boxed_postcheck_11:
		move.w     (a5),d0
		lsr.w      #3,d0
		and.w      #$001F,d0
		cmp.w      #$0014,d0
		bcs        boxed_postcheck_32
		move.w     (a5),d1
		lsr.w      #3,d1
		and.w      #$001F,d1
		cmp.w      #$001A,d1
		bhi        boxed_postcheck_32
		clr.w      d7
		lea.l      xd4f8a,a5
		tst.l      d3
		bmi.s      boxed_postcheck_33
		move.l     d3,-(a7)
		lea.l      148(a5),a1
		movea.l    a2,a0
		jsr        sprintf
		addq.w     #4,a7
		move.w     d0,d7
boxed_postcheck_33:
		move.l     (a4),d0
		beq.s      boxed_postcheck_34
		clr.w      d1
		move.b     d6,d1
		move.w     d1,-(a7)
		lea.l      152(a5),a1
		lea.l      0(a2,d7.w),a0
		jsr        sprintf
		addq.w     #2,a7
		add.w      d0,d7
boxed_postcheck_34:
		tst.l      d4
		bmi.s      boxed_postcheck_35
		move.l     d4,-(a7)
		lea.l      148(a5),a1
		lea.l      0(a2,d7.w),a0
		jsr        sprintf
		addq.w     #4,a7
		add.w      d0,d7
boxed_postcheck_35:
		move.l     4(a4),d0
		beq.s      boxed_postcheck_36
		clr.w      d1
		move.b     d6,d1
		move.w     d1,-(a7)
		lea.l      152(a5),a1
		lea.l      0(a2,d7.w),a0
		jsr        sprintf
		addq.w     #2,a7
		add.w      d0,d7
boxed_postcheck_36:
		tst.l      d5
		bmi.s      boxed_postcheck_37
		move.l     d5,-(a7)
		lea.l      148(a5),a1
		lea.l      0(a2,d7.w),a0
		jsr        sprintf
		addq.w     #4,a7
		add.w      d0,d7
boxed_postcheck_37:
		tst.w      d7
		ble.s      boxed_postcheck_32
		move.w     526(a3),d0
		sub.w      d7,d0
		move.w     d0,d7
		sub.w      d0,526(a3)
		move.l     528(a3),d1
		beq.s      boxed_postcheck_38
		movea.l    d1,a0
		sub.w      d0,(a0)
boxed_postcheck_38:
		move.l     532(a3),d0
		beq.s      boxed_postcheck_39
		movea.l    d0,a0
		sub.w      d7,(a0)
		movea.l    532(a3),a0
		move.w     (a0),d0
		bpl.s      boxed_postcheck_39
		clr.w      (a0)
boxed_postcheck_39:
		movea.l    a2,a1
		lea.l      256(a3),a0
		jsr        strcpy
boxed_postcheck_32:
		lea.l      268(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

boxed_delsel:
		movem.l    d3-d4/a2-a3,-(a7)
		move.w     d0,d4
		move.w     d1,d3
		movea.l    12(a0),a1
		movea.l    16(a1),a2
		tst.w      d1
		ble.s      boxed_delsel_1
		move.w     526(a2),d2
		ble.s      boxed_delsel_1
		tst.w      d0
		bmi.s      boxed_delsel_1
		add.w      d1,d0
		cmp.w      d2,d0
		bgt.s      boxed_delsel_1
		lea.l      0(a2,d4.w),a3
		lea.l      256(a3),a3
		lea.l      0(a3,d1.w),a1
		movea.l    a3,a0
		jsr        strcpy
		sub.w      d3,526(a2)
		move.l     532(a2),d0
		beq.s      boxed_delsel_2
		movea.l    d0,a0
		clr.w      (a0)
boxed_delsel_2:
		move.l     532(a2),d0
		beq.s      boxed_delsel_3
		movea.l    528(a2),a0
		move.w     d4,(a0)
boxed_delsel_3:
		ori.w      #$0004,546(a2)
		lea.l      256(a2),a1
		movea.l    a2,a0
		jsr        strcpy
		movea.l    516(a2),a3
		move.l     a3,d0
		beq.s      boxed_delsel_1
		suba.l     a1,a1
		movea.l    a3,a0
		movea.l    4(a3),a2
		moveq.l    #26,d0
		jsr        (a2)
boxed_delsel_1:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

boxed_viewpos:
		movem.l    d3-d4/a2-a3,-(a7)
		move.w     d0,d4
		movea.l    12(a0),a1
		movea.l    16(a1),a2
		move.w     540(a2),d3
		movea.l    516(a2),a0
		move.w     524(a2),d1
		and.w      #$1000,d1
		beq.s      boxed_viewpos_1
		movea.l    24(a0),a3
		bra.s      boxed_viewpos_2
boxed_viewpos_1:
		movea.l    20(a0),a3
boxed_viewpos_2:
		move.w     524(a2),d2
		and.w      #$0FFF,d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		move.w     20(a3,d1.l),d0
		ext.l      d0
		divs.w     542(a2),d0
		move.w     d4,d1
		tst.w      d4
		bpl.s      boxed_viewpos_3
		movea.l    528(a2),a0
		move.w     (a0),d1
boxed_viewpos_3:
		cmp.w      526(a2),d1
		ble.s      boxed_viewpos_4
		move.w     526(a2),d1
boxed_viewpos_4:
		tst.w      d1
		ble.s      boxed_viewpos_5
		moveq.l    #-1,d4
		add.w      d1,d4
		cmp.w      d4,d3
		ble.s      boxed_viewpos_5
		move.w     d4,d3
		bra.s      boxed_viewpos_6
boxed_viewpos_5:
		move.w     d1,d2
		sub.w      d3,d2
		sub.w      d0,d2
		addq.w     #1,d2
		tst.w      d2
		bgt.s      boxed_viewpos_7
		cmp.w      d1,d3
		ble.s      boxed_viewpos_6
boxed_viewpos_7:
		add.w      d2,d3
boxed_viewpos_6:
		move.w     d3,d2
		add.w      d0,d2
		sub.w      526(a2),d2
		tst.w      d2
		ble.s      boxed_viewpos_8
		sub.w      d2,d3
boxed_viewpos_8:
		tst.w      d3
		bpl.s      boxed_viewpos_9
		clr.w      d3
boxed_viewpos_9:
		cmp.w      540(a2),d3
		beq.s      boxed_viewpos_10
		ori.w      #$0004,546(a2)
boxed_viewpos_10:
		move.w     d3,540(a2)
		movem.l    (a7)+,d3-d4/a2-a3
		rts

boxed_charlist:
		movem.l    d3/a2/a4-a6,-(a7)
		lea.l      -10(a7),a7
		move.l     a0,6(a7)
		lea.l      2(a7),a2
		lea.l      xd4f86,a0
		movea.l    a2,a1
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		lea.l      xd4f88,a0
		lea.l      (a7),a1
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.l     #$00001818,d0
		jsr        Ax_malloc
		movea.l    a0,a4
		movea.l    a4,a5
		move.l     a4,d0
		beq        boxed_charlist_1
		lea.l      CHARLIST,a1
		movea.l    a5,a0
		moveq.l    #24,d0
		jsr        memcpy
		move.w     #$0001,2(a5)
		move.w     #$0100,4(a5)
		lea.l      24(a5),a5
		clr.w      d3
		lea.l      4(a7),a6
		bra        boxed_charlist_2
boxed_charlist_5:
		moveq.l    #24,d0
		lea.l      CHARENTRY,a1
		movea.l    a5,a0
		jsr        memcpy
		clr.w      d0
		move.b     d3,d0
		andi.w     #$00FF,12(a5)
		and.w      #$00FF,d0
		lsl.w      #8,d0
		or.w       d0,12(a5)
		moveq.l    #2,d0
		add.w      d3,d0
		move.w     d0,(a5)
		move.w     d3,d1
		ext.l      d1
		divs.w     #$0010,d1
		swap       d1
		add.w      d1,d1
		move.w     d1,16(a5)
		move.w     d3,d2
		ext.l      d2
		divs.w     #$0010,d2
		move.w     d2,18(a5)
		move.b     d3,(a2)
		move.w     #$0001,(a6)
		pea.l      (a6)
		pea.l      4(a7)
		movea.l    a2,a1
		movea.l    14(a7),a0
		bsr        boxed_checktext
		addq.w     #8,a7
		tst.w      d0
		beq.s      boxed_charlist_3
		cmp.b      (a7),d3
		beq.s      boxed_charlist_4
boxed_charlist_3:
		ori.w      #$0008,10(a5)
		andi.w     #$F0FF,14(a5)
		andi.w     #$FFF0,14(a5)
		ori.w      #$0008,14(a5)
boxed_charlist_4:
		lea.l      24(a5),a5
		addq.w     #1,d3
boxed_charlist_2:
		cmp.w      #$0100,d3
		blt        boxed_charlist_5
		lea.l      -24(a5),a5
		ori.w      #$0020,8(a5)
		clr.w      (a5)
		movea.l    a4,a0
		jsr        Aob_fix
		movea.l    ACSblk,a0
		move.w     612(a0),d1
		move.w     22(a4),d0
		asr.w      #1,d0
		sub.w      d0,d1
		move.w     610(a0),d0
		move.w     20(a4),d2
		asr.w      #1,d2
		sub.w      d2,d0
		movea.l    a4,a1
		movea.l    600(a0),a0
		jsr        Ame_popup
		move.w     d0,(a6)
		subq.w     #1,d0
		ble.s      boxed_charlist_6
		move.b     1(a6),d1
		add.b      #$FF,d1
		move.b     d1,(a2)
		movea.l    a2,a1
		movea.l    6(a7),a0
		clr.w      d0
		bsr        boxed_insert
boxed_charlist_6:
		movea.l    a4,a0
		jsr        Ax_free
boxed_charlist_1:
		lea.l      10(a7),a7
		movem.l    (a7)+,d3/a2/a4-a6
		rts

Aus_boxed:
		movea.l    ACSblk,a0
		move.w     608(a0),d0
		movea.l    604(a0),a1
		movea.l    600(a0),a0
		jsr        Aus_objboxed
		rts

Aus_objboxed:
		movem.l    d3-d7/a2-a5,-(a7)
		lea.l      -82(a7),a7
		movea.l    a0,a2
		move.l     a1,78(a7)
		move.w     d0,d6
		moveq.l    #6,d3
		moveq.l    #100,d4
		moveq.l    #2,d5
		and.w      #$0FFF,d0
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		adda.l     d1,a1
		move.l     a1,74(a7)
		move.l     12(a1),70(a7)
		movea.l    70(a7),a0
		movea.l    16(a0),a4
		cmpi.b     #$18,7(a1)
		bne        Aus_objboxed_1
		move.l     a0,d2
		beq        Aus_objboxed_1
		move.l     8(a0),d1
		beq        Aus_objboxed_1
		move.l     a4,d0
		beq        Aus_objboxed_1
		clr.l      -(a7)
		clr.l      -(a7)
		clr.l      -(a7)
		pea.l      12(a7)
		clr.w      d0
		moveq.l    #10,d1
		jsr        wind_get
		lea.l      16(a7),a7
		move.w     (a7),d0
		jsr        Awi_wid
		move.w     (a7),d0
		ble.s      Aus_objboxed_2
		move.l     a0,d1
		beq.s      Aus_objboxed_2
		cmpa.l     d1,a2
		beq.s      Aus_objboxed_3
Aus_objboxed_2:
		movea.l    a2,a0
		movea.l    110(a2),a1
		jsr        (a1)
		bra        Aus_objboxed_1
Aus_objboxed_3:
		move.l     a2,12(a7)
		move.l     74(a7),16(a7)
		move.w     d6,20(a7)
		lea.l      12(a7),a1
		moveq.l    #9,d0
		movea.l    74(a7),a0
		movea.l    70(a7),a3
		movea.l    8(a3),a3
		jsr        (a3)
		move.w     28(a2),d0
		ble.s      Aus_objboxed_4
		cmp.w      d0,d6
		beq.s      Aus_objboxed_4
		jsr        Awi_diaend
Aus_objboxed_4:
		move.w     d6,28(a2)
		jsr        Awi_diastart
		move.w     28(a2),d0
		bmi        Aus_objboxed_1
		movea.l    ACSblk,a0
		movea.l    572(a0),a0
		lea.l      80(a0),a0
		jsr        Amo_new
		lea.l      22(a7),a3
		moveq.l    #48,d1
		clr.w      d0
		movea.l    a3,a0
		jsr        memset
		move.w     d6,d0
		and.w      #$0FFF,d0
		movea.l    78(a7),a1
		lea.l      16(a3),a0
		jsr        Aob_offset
		move.w     52(a2),d0
		add.w      d0,16(a3)
		move.w     54(a2),d1
		add.w      d1,18(a3)
		lea.l      10(a7),a2
		clr.w      (a2)
		bra.s      Aus_objboxed_5
Aus_objboxed_6:
		move.w     (a2),d0
		lsl.w      #3,d0
		clr.w      2(a3,d0.w)
		movea.l    ACSblk,a0
		move.w     10(a0),d0
		add.w      14(a0),d0
		move.w     (a2),d1
		lsl.w      #3,d1
		move.w     d0,6(a3,d1.w)
		addq.w     #1,(a2)
Aus_objboxed_5:
		cmpi.w     #$0006,(a2)
		blt.s      Aus_objboxed_6
		move.w     16(a3),d6
		movea.l    ACSblk,a0
		move.w     18(a0),d0
		add.w      d0,d0
		move.w     20(a3),d1
		cmp.w      d0,d1
		ble.s      Aus_objboxed_7
		move.w     18(a0),d2
		add.w      d2,16(a3)
		sub.w      d0,20(a3)
Aus_objboxed_7:
		movea.l    ACSblk,a0
		move.w     18(a0),d0
		add.w      d0,d0
		move.w     d0,28(a3)
		move.w     d0,12(a3)
		move.w     16(a3),d1
		sub.w      d0,d1
		move.w     d1,8(a3)
		move.w     d1,4(a3)
		move.w     16(a3),d0
		add.w      20(a3),d0
		move.w     d0,24(a3)
		add.w      28(a3),d0
		move.w     d0,32(a3)
		move.w     12(a0),d1
		sub.w      d0,d1
		move.w     d1,36(a3)
		move.w     542(a4),44(a3)
		move.w     610(a0),4(a7)
		move.w     4(a7),d0
		sub.w      d6,d0
		ext.l      d0
		divs.w     542(a4),d0
		add.w      540(a4),d0
		move.w     d0,8(a7)
		move.w     d0,6(a7)
		lea.l      6(a7),a1
		movea.l    70(a7),a0
		movea.l    8(a0),a5
		movea.l    74(a7),a0
		moveq.l    #17,d0
		jsr        (a5)
		suba.l     a1,a1
		moveq.l    #5,d0
		movea.l    74(a7),a0
		movea.l    70(a7),a5
		movea.l    8(a5),a5
		jsr        (a5)
		movea.l    74(a7),a0
		move.w     10(a0),d0
		and.w      #$4000,d0
		beq        Aus_objboxed_8
		move.w     6(a7),8(a7)
		ori.w      #$0010,546(a4)
		bra        Aus_objboxed_9
Aus_objboxed_24:
		move.w     d5,d7
Aus_objboxed_25:
		move.l     _globl,-(a7)
		pea.l      (a2)
		pea.l      (a2)
		pea.l      (a2)
		pea.l      (a2)
		pea.l      22(a7)
		move.w     d4,d0
		ext.l      d0
		or.l       #$00000000,d0
		move.l     d0,-(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		clr.w      -(a7)
		move.w     d7,d1
		lsl.w      #3,d1
		move.w     6(a3,d1.w),-(a7)
		move.w     4(a3,d1.w),-(a7)
		move.w     2(a3,d1.w),-(a7)
		move.w     0(a3,d1.w),-(a7)
		moveq.l    #1,d2
		move.w     d2,-(a7)
		clr.w      -(a7)
		lea.l      54(a7),a1
		suba.l     a0,a0
		movea.l    ACSblk,a5
		move.w     714(a5),d2
		move.w     d3,d0
		moveq.l    #1,d1
		jsr        mt_evnt_multi
		lea.l      50(a7),a7
		moveq.l    #2,d1
		and.w      d0,d1
		bne        Aus_objboxed_10
		moveq.l    #4,d2
		and.w      d0,d2
		beq.s      Aus_objboxed_11
		move.w     4(a7),d0
		lea.l      16(a3),a0
		move.w     2(a7),d1
		jsr        Aob_within
		tst.w      d0
		beq.s      Aus_objboxed_12
		moveq.l    #2,d5
		bra.s      Aus_objboxed_11
Aus_objboxed_12:
		move.w     2(a7),d1
		move.w     4(a7),d0
		lea.l      8(a3),a0
		jsr        Aob_within
		tst.w      d0
		beq.s      Aus_objboxed_13
		moveq.l    #1,d5
		bra.s      Aus_objboxed_11
Aus_objboxed_13:
		move.w     2(a7),d1
		move.w     4(a7),d0
		movea.l    a3,a0
		jsr        Aob_within
		tst.w      d0
		beq.s      Aus_objboxed_14
		clr.w      d5
		bra.s      Aus_objboxed_11
Aus_objboxed_14:
		move.w     2(a7),d1
		move.w     4(a7),d0
		lea.l      24(a3),a0
		jsr        Aob_within
		tst.w      d0
		beq.s      Aus_objboxed_15
		moveq.l    #3,d5
		bra.s      Aus_objboxed_11
Aus_objboxed_15:
		moveq.l    #4,d5
Aus_objboxed_11:
		or.w       #$0020,d3
		move.w     d5,d0
		cmp.w      #$0004,d0
		bhi.s      Aus_objboxed_16
		add.w      d0,d0
		move.w     J56(pc,d0.w),d0
		jmp        J56(pc,d0.w)
J56:
		dc.w Aus_objboxed_17-J56
		dc.w Aus_objboxed_18-J56
		dc.w Aus_objboxed_19-J56
		dc.w Aus_objboxed_20-J56
		dc.w Aus_objboxed_21-J56
Aus_objboxed_17:
		subq.w     #1,8(a7)
		bra.s      Aus_objboxed_22
Aus_objboxed_18:
		subq.w     #1,8(a7)
		bra.s      Aus_objboxed_23
Aus_objboxed_19:
		move.w     4(a7),d0
		sub.w      d6,d0
		ext.l      d0
		divs.w     542(a4),d0
		add.w      540(a4),d0
		move.w     d0,8(a7)
		and.w      #$FFDF,d3
		bra.s      Aus_objboxed_16
Aus_objboxed_20:
		addq.w     #1,8(a7)
Aus_objboxed_23:
		moveq.l    #100,d4
		bra.s      Aus_objboxed_16
Aus_objboxed_21:
		addq.w     #1,8(a7)
Aus_objboxed_22:
		moveq.l    #30,d4
Aus_objboxed_16:
		move.w     8(a7),d0
		bpl.s      Aus_objboxed_9
		clr.w      8(a7)
Aus_objboxed_9:
		lea.l      6(a7),a1
		move.w     #$02C2,d0
		movea.l    74(a7),a0
		movea.l    70(a7),a5
		movea.l    8(a5),a5
		jsr        (a5)
		suba.l     a1,a1
		moveq.l    #5,d0
		movea.l    74(a7),a0
		movea.l    70(a7),a5
		movea.l    8(a5),a5
		jsr        (a5)
Aus_objboxed_8:
		cmp.w      #$0002,d5
		bne        Aus_objboxed_24
		move.w     4(a7),d0
		sub.w      d6,d0
		ext.l      d0
		divs.w     542(a4),d0
		muls.w     542(a4),d0
		add.w      d6,d0
		move.w     d0,40(a3)
		moveq.l    #5,d7
		bra        Aus_objboxed_25
Aus_objboxed_10:
		andi.w     #$FFEF,546(a4)
		movea.l    ACSblk,a0
		movea.l    572(a0),a0
		lea.l      80(a0),a0
		jsr        Amo_new
Aus_objboxed_1:
		lea.l      82(a7),a7
		movem.l    (a7)+,d3-d7/a2-a5
		rts

Auo_boxed_11:
Auo_boxed:
		movem.l    d3-d7/a2-a6,-(a7)
		lea.l      -38(a7),a7
		movea.l    a0,a2
		move.w     d0,d3
		move.l     a1,34(a7)
		move.l     12(a2),30(a7)
		movea.l    30(a7),a0
		addq.w     #4,a0
		move.l     a0,(a7)
		movea.l    30(a7),a1
		movea.l    16(a1),a5
		subq.w     #1,d0
		beq.s      Auo_boxed_1
		move.l     516(a5),26(a7)
Auo_boxed_1:
		move.w     d3,d0
		cmp.w      #$0009,d0
		beq        Auo_boxed_2
		bgt.s      Auo_boxed_3
		cmp.w      #$0006,d0
		bhi        Auo_boxed_4
		add.w      d0,d0
		move.w     J57(pc,d0.w),d0
		jmp        J57(pc,d0.w)
J57:
		dc.w $03b6   ; Auo_boxed_4-J57
		dc.w $003c   ; Auo_boxed_5-J57
		dc.w $0158   ; Auo_boxed_6-J57
		dc.w $0192   ; Auo_boxed_7-J57
		dc.w $016a   ; Auo_boxed_8-J57
		dc.w $01c0   ; Auo_boxed_9-J57
		dc.w $01ba   ; Auo_boxed_10-J57
Auo_boxed_3:
		cmp.w      #$0014,d0
		beq        Auo_boxed_16
		bgt.s      Auo_boxed_14
		sub.w      #$0012,d0
		beq        Auo_boxed_15
		subq.w     #1,d0
		beq        Auo_boxed_16
		bra        Auo_boxed_4
Auo_boxed_14:
		sub.w      #$02C0,d0
		beq        Auo_boxed_17
		subq.w     #1,d0
		beq        Auo_boxed_18
		bra        Auo_boxed_4
Auo_boxed_5:
		movea.l    30(a7),a0
		movea.l    12(a0),a3
		move.l     #$00000224,d0
		jsr        Ax_malloc
		movea.l    a0,a5
		movea.l    30(a7),a0
		move.l     a5,16(a0)
		move.l     a5,d0
		beq        Auo_boxed_19
		move.l     #$00000224,d1
		movea.l    a5,a0
		clr.w      d0
		jsr        memset
		movea.l    30(a7),a0
		move.l     a5,12(a0)
		movea.l    (a7),a1
		move.w     2(a1),d0
		lsr.w      #2,d0
		and.w      #$0001,d0
		beq.s      Auo_boxed_20
		movea.l    ACSblk,a0
		move.w     660(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		pea.l      544(a5)
		pea.l      542(a5)
		lea.l      16(a7),a1
		lea.l      16(a7),a0
		movea.l    ACSblk,a6
		move.w     662(a6),d1
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
		bra.s      Auo_boxed_21
Auo_boxed_20:
		movea.l    ACSblk,a0
		move.w     656(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		pea.l      544(a5)
		pea.l      542(a5)
		lea.l      16(a7),a1
		lea.l      16(a7),a0
		movea.l    ACSblk,a6
		move.w     658(a6),d1
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
Auo_boxed_21:
		move.l     a3,d0
		beq.s      Auo_boxed_22
		movea.l    a3,a1
		movea.l    a2,a0
		moveq.l    #1,d0
		bsr        boxed_insert
Auo_boxed_22:
		move.w     #$0004,546(a5)
		bra        Auo_boxed_16
Auo_boxed_2:
		movea.l    34(a7),a4
		move.l     (a4),516(a5)
		move.l     4(a4),520(a5)
		move.w     8(a4),524(a5)
		movea.l    (a4),a0
		lea.l      30(a0),a0
		move.l     a0,528(a5)
		movea.l    (a4),a1
		lea.l      82(a1),a1
		move.l     a1,532(a5)
		bra        Auo_boxed_16
Auo_boxed_15:
		movea.l    34(a7),a4
		move.l     516(a5),(a4)
		move.l     520(a5),4(a4)
		move.w     524(a5),8(a4)
		bra        Auo_boxed_16
Auo_boxed_6:
		movea.l    30(a7),a0
		movea.l    16(a0),a0
		jsr        Ax_free
		bra        Auo_boxed_16
Auo_boxed_8:
		move.l     26(a7),d0
		beq        Auo_boxed_19
		move.l     528(a5),d1
		beq        Auo_boxed_19
		move.l     532(a5),d2
		beq        Auo_boxed_19
		movea.l    d1,a0
		clr.w      (a0)
		movea.l    532(a5),a0
		move.w     526(a5),(a0)
		bra        Auo_boxed_18
Auo_boxed_7:
		move.l     26(a7),d0
		beq        Auo_boxed_19
		move.l     528(a5),d1
		beq        Auo_boxed_19
		move.l     532(a5),d2
		beq        Auo_boxed_19
		movea.l    30(a7),a0
		movea.l    34(a7),a1
		move.l     12(a0),(a1)
		bra        Auo_boxed_16
Auo_boxed_10:
		ori.w      #$0004,546(a5)
Auo_boxed_9:
		move.l     26(a7),d0
		beq        Auo_boxed_19
		move.l     528(a5),d1
		beq        Auo_boxed_19
		move.l     532(a5),d2
		beq        Auo_boxed_19
		movea.l    d2,a0
		move.w     (a0),d4
		movea.l    d0,a1
		move.w     28(a1),d1
		cmp.w      524(a5),d1
		bne.s      Auo_boxed_23
		tst.w      d4
		ble.s      Auo_boxed_23
		move.w     d4,d0
		ext.l      d0
		movea.l    528(a5),a4
		move.w     (a4),d2
		lea.l      0(a5,d2.w),a1
		lea.l      256(a1),a1
		movea.l    a5,a0
		jsr        memcpy
		clr.b      0(a5,d4.w)
		bra.s      Auo_boxed_24
Auo_boxed_23:
		lea.l      256(a5),a1
		movea.l    a5,a0
		jsr        strcpy
Auo_boxed_24:
		moveq.l    #7,d0
		and.w      546(a5),d0
		beq        Auo_boxed_25
		move.w     524(a5),d1
		and.w      #$1000,d1
		beq.s      Auo_boxed_26
		movea.l    26(a7),a0
		movea.l    24(a0),a4
		bra.s      Auo_boxed_27
Auo_boxed_26:
		movea.l    26(a7),a0
		movea.l    20(a0),a4
Auo_boxed_27:
		move.w     10(a2),d7
		move.w     8(a2),d6
		andi.w     #$FFCF,10(a2)
		andi.w     #$BFF7,8(a2)
		move.w     524(a5),d0
		and.w      #$0FFF,d0
		movea.l    a4,a1
		lea.l      18(a7),a0
		jsr        Aob_offset
		move.w     d7,10(a2)
		move.w     d6,8(a2)
		movea.l    26(a7),a0
		move.w     52(a0),d0
		add.w      d0,18(a7)
		move.w     54(a0),d1
		add.w      d1,20(a7)
		lea.l      10(a7),a4
		move.w     20(a7),2(a4)
		move.w     24(a7),6(a4)
		moveq.l    #7,d0
		and.w      546(a5),d0
		subq.w     #1,d0
		bne.s      Auo_boxed_28
		move.w     536(a5),d1
		movea.l    528(a5),a0
		cmp.w      (a0),d1
		beq        Auo_boxed_29
		move.w     #$0001,4(a4)
		tst.w      d1
		bmi.s      Auo_boxed_30
		sub.w      540(a5),d1
		muls.w     542(a5),d1
		add.w      18(a7),d1
		addq.w     #1,d1
		move.w     d1,(a4)
		movea.l    a4,a1
		movea.l    26(a7),a6
		movea.l    106(a6),a6
		movea.l    26(a7),a0
		jsr        (a6)
Auo_boxed_30:
		movea.l    528(a5),a0
		move.w     (a0),d0
		bmi        Auo_boxed_29
		sub.w      540(a5),d0
		muls.w     542(a5),d0
		add.w      18(a7),d0
		addq.w     #1,d0
		move.w     d0,(a4)
		bra.s      Auo_boxed_31
Auo_boxed_28:
		moveq.l    #7,d0
		and.w      546(a5),d0
		subq.w     #2,d0
		bne.s      Auo_boxed_32
		move.w     536(a5),d1
		movea.l    528(a5),a0
		cmp.w      (a0),d1
		bne.s      Auo_boxed_33
		move.w     538(a5),d2
		movea.l    532(a5),a1
		cmp.w      (a1),d2
		beq.s      Auo_boxed_29
Auo_boxed_33:
		movea.l    528(a5),a0
		move.w     (a0),d0
		cmp.w      536(a5),d0
		bge.s      Auo_boxed_34
		move.w     d0,d5
		bra.s      Auo_boxed_35
Auo_boxed_34:
		move.w     536(a5),d5
Auo_boxed_35:
		movea.l    532(a5),a0
		move.w     (a0),d0
		cmp.w      538(a5),d0
		ble.s      Auo_boxed_36
		move.w     d0,d4
		bra.s      Auo_boxed_37
Auo_boxed_36:
		move.w     538(a5),d4
Auo_boxed_37:
		move.w     d5,d0
		sub.w      540(a5),d0
		muls.w     542(a5),d0
		add.w      18(a7),d0
		move.w     d0,(a4)
		move.w     d4,d1
		muls.w     542(a5),d1
		addq.w     #2,d1
		move.w     d1,4(a4)
Auo_boxed_31:
		movea.l    a4,a1
		movea.l    26(a7),a0
		movea.l    26(a7),a6
		movea.l    106(a6),a6
		jsr        (a6)
		bra.s      Auo_boxed_29
Auo_boxed_32:
		moveq.l    #-1,d1
		move.w     524(a5),d0
		movea.l    516(a5),a0
		movea.l    516(a5),a1
		movea.l    102(a1),a1
		jsr        (a1)
Auo_boxed_29:
		andi.w     #$FFF8,546(a5)
Auo_boxed_25:
		movea.l    528(a5),a0
		move.w     (a0),536(a5)
		movea.l    532(a5),a0
		move.w     (a0),538(a5)
		bra        Auo_boxed_16
Auo_boxed_17:
		clr.w      d0
		movea.l    34(a7),a1
		movea.l    a2,a0
		bsr        boxed_insert
		bra        Auo_boxed_16
Auo_boxed_18:
		moveq.l    #1,d0
		movea.l    34(a7),a1
		movea.l    a2,a0
		bsr        boxed_insert
		bra        Auo_boxed_16
Auo_boxed_4:
		movea.l    26(a7),a0
		move.w     28(a0),d0
		cmp.w      524(a5),d0
		bne        Auo_boxed_19
		move.l     528(a5),d1
		beq        Auo_boxed_19
		move.l     532(a5),d2
		beq        Auo_boxed_19
		move.w     d3,d4
		cmp.w      #$02C4,d4
		beq        Auo_boxed_38
		bgt.s      Auo_boxed_39
		cmp.w      #$02BD,d4
		beq        Auo_boxed_40
		bgt.s      Auo_boxed_41
		sub.w      #$000E,d4
		beq.s      Auo_boxed_42
		subq.w     #1,d4
		beq.s      Auo_boxed_43
		subq.w     #2,d4
		beq        Auo_boxed_44
		sub.w      #$02AB,d4
		beq        Auo_boxed_45
		bra        Auo_boxed_19
Auo_boxed_41:
		sub.w      #$02BE,d4
		beq        Auo_boxed_46
		subq.w     #1,d4
		beq        Auo_boxed_47
		subq.w     #3,d4
		beq        Auo_boxed_48
		subq.w     #1,d4
		beq        Auo_boxed_49
		bra        Auo_boxed_19
Auo_boxed_39:
		sub.w      #$02C5,d4
		cmp.w      #$0007,d4
		bhi        Auo_boxed_19
		add.w      d4,d4
		move.w     J58(pc,d4.w),d4
		jmp        J58(pc,d4.w)
J58:
		dc.w Auo_boxed_50-J58
		dc.w Auo_boxed_51-J58
		dc.w Auo_boxed_52-J58
		dc.w Auo_boxed_53-J58
		dc.w Auo_boxed_54-J58
		dc.w Auo_boxed_55-J58
		dc.w Auo_boxed_56-J58
		dc.w Auo_boxed_57-J58
Auo_boxed_42:
		movea.l    532(a5),a0
		move.w     (a0),d0
		ble.s      Auo_boxed_58
		ori.w      #$0004,546(a5)
		bra.s      Auo_boxed_59
Auo_boxed_58:
		ori.w      #$0001,546(a5)
Auo_boxed_59:
		movea.l    528(a5),a0
		clr.w      (a0)
		bra.s      Auo_boxed_60
Auo_boxed_43:
		movea.l    532(a5),a0
		move.w     (a0),d0
		ble.s      Auo_boxed_61
		ori.w      #$0004,546(a5)
		bra.s      Auo_boxed_62
Auo_boxed_61:
		ori.w      #$0001,546(a5)
Auo_boxed_62:
		movea.l    528(a5),a0
		move.w     526(a5),(a0)
Auo_boxed_60:
		movea.l    532(a5),a0
		clr.w      (a0)
		bra        Auo_boxed_63
Auo_boxed_44:
		movea.l    34(a7),a0
		movea.l    528(a5),a1
		move.w     (a0),(a1)
		movea.l    532(a5),a1
		move.w     (a1),d0
		ble.s      Auo_boxed_64
		clr.w      (a1)
		ori.w      #$0004,546(a5)
Auo_boxed_64:
		movea.l    528(a5),a0
		move.w     (a0),d0
		bmi.s      Auo_boxed_65
		cmp.w      526(a5),d0
		ble        Auo_boxed_66
Auo_boxed_65:
		movea.l    528(a5),a0
		move.w     526(a5),(a0)
		bra        Auo_boxed_66
Auo_boxed_46:
		movea.l    532(a5),a0
		move.w     (a0),d0
		bne.s      Auo_boxed_45
		movea.l    528(a5),a1
		move.w     (a1),d1
		cmp.w      526(a5),d1
		beq        Auo_boxed_16
		lea.l      256(a5),a3
		move.w     d1,d6
		bra.s      Auo_boxed_67
Auo_boxed_69:
		addq.w     #1,d6
Auo_boxed_67:
		cmp.w      526(a5),d6
		bge.s      Auo_boxed_68
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Auo_boxed_69
		bra.s      Auo_boxed_68
Auo_boxed_71:
		addq.w     #1,d6
Auo_boxed_68:
		cmp.w      526(a5),d6
		bge.s      Auo_boxed_70
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      Auo_boxed_71
Auo_boxed_70:
		movea.l    528(a5),a0
		move.w     d6,(a0)
		bra        Auo_boxed_66
Auo_boxed_45:
		movea.l    532(a5),a0
		move.w     (a0),d0
		ble.s      Auo_boxed_72
		movea.l    528(a5),a1
		add.w      d0,(a1)
		bra        Auo_boxed_73
Auo_boxed_72:
		movea.l    528(a5),a0
		move.w     (a0),d0
		cmp.w      526(a5),d0
		bge        Auo_boxed_16
		addq.w     #1,(a0)
Auo_boxed_80:
		moveq.l    #-1,d0
		movea.l    a2,a0
		bsr        boxed_viewpos
		ori.w      #$0001,546(a5)
		bra        Auo_boxed_16
Auo_boxed_47:
		movea.l    532(a5),a0
		move.w     (a0),d0
		bne.s      Auo_boxed_40
		movea.l    528(a5),a1
		move.w     (a1),d1
		beq        Auo_boxed_16
		lea.l      256(a5),a3
		moveq.l    #-1,d6
		add.w      d1,d6
		bra.s      Auo_boxed_74
Auo_boxed_76:
		subq.w     #1,d6
Auo_boxed_74:
		tst.w      d6
		bmi.s      Auo_boxed_75
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      Auo_boxed_76
		bra.s      Auo_boxed_75
Auo_boxed_78:
		subq.w     #1,d6
Auo_boxed_75:
		tst.w      d6
		bmi.s      Auo_boxed_77
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Auo_boxed_78
Auo_boxed_77:
		moveq.l    #1,d0
		add.w      d6,d0
		movea.l    528(a5),a0
		move.w     d0,(a0)
Auo_boxed_66:
		ori.w      #$0001,546(a5)
		bra.s      Auo_boxed_63
Auo_boxed_40:
		movea.l    532(a5),a0
		move.w     (a0),d0
		ble.s      Auo_boxed_79
Auo_boxed_73:
		movea.l    532(a5),a0
		clr.w      (a0)
		ori.w      #$0004,546(a5)
Auo_boxed_63:
		moveq.l    #-1,d0
		movea.l    a2,a0
		bsr        boxed_viewpos
		bra        Auo_boxed_16
Auo_boxed_79:
		movea.l    528(a5),a0
		move.w     (a0),d0
		ble        Auo_boxed_16
		subq.w     #1,(a0)
		bra        Auo_boxed_80
Auo_boxed_48:
		movea.l    34(a7),a4
		move.w     (a4),d0
		cmp.w      2(a4),d0
		bge.s      Auo_boxed_81
		move.w     d0,d5
		move.w     2(a4),d7
		bra.s      Auo_boxed_82
Auo_boxed_81:
		move.w     2(a4),d5
		move.w     (a4),d7
Auo_boxed_82:
		tst.w      d5
		bpl.s      Auo_boxed_83
		move.w     526(a5),d7
		clr.w      d5
Auo_boxed_83:
		cmp.w      526(a5),d7
		ble.s      Auo_boxed_84
		move.w     526(a5),d7
Auo_boxed_84:
		cmp.w      526(a5),d5
		ble.s      Auo_boxed_85
		move.w     526(a5),d5
Auo_boxed_85:
		moveq.l    #16,d0
		and.w      546(a5),d0
		beq        Auo_boxed_86
		lea.l      256(a5),a3
		move.b     0(a3,d5.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,4(a7)
		bra.s      Auo_boxed_87
Auo_boxed_94:
		subq.w     #1,d5
Auo_boxed_87:
		tst.w      d5
		bmi.s      Auo_boxed_88
		move.l     4(a7),d0
		beq.s      Auo_boxed_89
		move.b     0(a3,d5.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Auo_boxed_90
		moveq.l    #1,d0
		bra.s      Auo_boxed_91
Auo_boxed_90:
		clr.w      d0
Auo_boxed_91:
		bra.s      Auo_boxed_92
Auo_boxed_89:
		move.b     0(a3,d5.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      Auo_boxed_93
		moveq.l    #1,d0
		bra.s      Auo_boxed_92
Auo_boxed_93:
		clr.w      d0
Auo_boxed_92:
		tst.w      d0
		bne.s      Auo_boxed_94
Auo_boxed_88:
		addq.w     #1,d5
		move.b     0(a3,d7.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,4(a7)
		bra.s      Auo_boxed_95
Auo_boxed_101:
		addq.w     #1,d7
Auo_boxed_95:
		cmp.w      526(a5),d7
		bge.s      Auo_boxed_86
		move.l     4(a7),d0
		beq.s      Auo_boxed_96
		move.b     0(a3,d7.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Auo_boxed_97
		moveq.l    #1,d0
		bra.s      Auo_boxed_98
Auo_boxed_97:
		clr.w      d0
Auo_boxed_98:
		bra.s      Auo_boxed_99
Auo_boxed_96:
		move.b     0(a3,d7.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      Auo_boxed_100
		moveq.l    #1,d0
		bra.s      Auo_boxed_99
Auo_boxed_100:
		clr.w      d0
Auo_boxed_99:
		tst.w      d0
		bne.s      Auo_boxed_101
Auo_boxed_86:
		move.w     2(a4),d0
		movea.l    a2,a0
		bsr        boxed_viewpos
		cmp.w      d5,d7
		bne.s      Auo_boxed_102
		movea.l    528(a5),a0
		move.w     d5,(a0)
		movea.l    532(a5),a0
		clr.w      (a0)
		bra.s      Auo_boxed_103
Auo_boxed_102:
		movea.l    528(a5),a0
		move.w     d5,(a0)
		move.w     d7,d0
		sub.w      d5,d0
		movea.l    532(a5),a0
		move.w     d0,(a0)
Auo_boxed_103:
		ori.w      #$0002,546(a5)
		bra        Auo_boxed_16
Auo_boxed_49:
		movea.l    34(a7),a4
		movea.l    528(a5),a0
		move.w     (a0),(a4)
		move.w     (a4),d0
		movea.l    532(a5),a0
		add.w      (a0),d0
		move.w     d0,2(a4)
		bra        Auo_boxed_16
Auo_boxed_51:
		movea.l    532(a5),a0
		move.w     (a0),d0
		bne.s      Auo_boxed_50
		movea.l    528(a5),a1
		move.w     (a1),(a0)
		movea.l    528(a5),a0
		clr.w      (a0)
Auo_boxed_50:
		movea.l    532(a5),a0
		move.w     (a0),d0
		bne        Auo_boxed_38
		moveq.l    #-1,d6
		movea.l    528(a5),a1
		add.w      (a1),d6
		lea.l      256(a5),a3
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,4(a7)
		bra.s      Auo_boxed_104
Auo_boxed_111:
		subq.w     #1,d6
Auo_boxed_104:
		tst.w      d6
		bmi.s      Auo_boxed_105
		move.l     4(a7),d0
		beq.s      Auo_boxed_106
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Auo_boxed_107
		moveq.l    #1,d0
		bra.s      Auo_boxed_108
Auo_boxed_107:
		clr.w      d0
Auo_boxed_108:
		bra.s      Auo_boxed_109
Auo_boxed_106:
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      Auo_boxed_110
		moveq.l    #1,d0
		bra.s      Auo_boxed_109
Auo_boxed_110:
		clr.w      d0
Auo_boxed_109:
		tst.w      d0
		bne.s      Auo_boxed_111
Auo_boxed_105:
		addq.w     #1,d6
		movea.l    528(a5),a0
		move.w     (a0),d0
		sub.w      d6,d0
		movea.l    532(a5),a1
		move.w     d0,(a1)
		movea.l    528(a5),a0
		move.w     d6,(a0)
Auo_boxed_38:
		movea.l    532(a5),a0
		move.w     (a0),d0
		bne        Auo_boxed_112
		movea.l    528(a5),a1
		move.w     (a1),d1
		ble        Auo_boxed_112
		addq.w     #1,(a0)
		movea.l    528(a5),a0
		subq.w     #1,(a0)
		bra        Auo_boxed_112
Auo_boxed_54:
		movea.l    532(a5),a0
		move.w     (a0),d0
		bne.s      Auo_boxed_53
		move.w     526(a5),d1
		movea.l    528(a5),a1
		sub.w      (a1),d1
		move.w     d1,(a0)
Auo_boxed_53:
		movea.l    532(a5),a0
		move.w     (a0),d0
		bne        Auo_boxed_52
		movea.l    528(a5),a1
		move.w     (a1),d6
		lea.l      256(a5),a3
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,4(a7)
		bra.s      Auo_boxed_113
Auo_boxed_120:
		addq.w     #1,d6
Auo_boxed_113:
		cmp.w      526(a5),d6
		bge.s      Auo_boxed_114
		move.l     4(a7),d0
		beq.s      Auo_boxed_115
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		beq.s      Auo_boxed_116
		moveq.l    #1,d0
		bra.s      Auo_boxed_117
Auo_boxed_116:
		clr.w      d0
Auo_boxed_117:
		bra.s      Auo_boxed_118
Auo_boxed_115:
		move.b     0(a3,d6.w),d0
		ext.w      d0
		movea.l    ACSblk,a0
		lea.l      998(a0),a0
		jsr        strchr
		move.l     a0,d0
		bne.s      Auo_boxed_119
		moveq.l    #1,d0
		bra.s      Auo_boxed_118
Auo_boxed_119:
		clr.w      d0
Auo_boxed_118:
		tst.w      d0
		bne.s      Auo_boxed_120
Auo_boxed_114:
		move.w     d6,d0
		movea.l    528(a5),a0
		sub.w      (a0),d0
		movea.l    532(a5),a1
		move.w     d0,(a1)
Auo_boxed_52:
		movea.l    532(a5),a0
		move.w     (a0),d0
		bne.s      Auo_boxed_112
		movea.l    528(a5),a1
		move.w     (a1),d1
		cmp.w      526(a5),d1
		bge.s      Auo_boxed_112
		addq.w     #1,(a0)
Auo_boxed_112:
		movea.l    532(a5),a0
		move.w     (a0),d0
		beq.s      Auo_boxed_16
		move.w     d0,d1
		movea.l    528(a5),a1
		move.w     (a1),d0
		movea.l    a2,a0
		bsr        boxed_delsel
		bra        Auo_boxed_63
Auo_boxed_55:
		move.w     526(a5),d1
		clr.w      d0
		movea.l    a2,a0
		bsr        boxed_delsel
		bra        Auo_boxed_63
Auo_boxed_56:
		move.l     512(a5),d0
		beq.s      Auo_boxed_121
		movea.l    d0,a0
		jsr        Ast_delete
		clr.l      512(a5)
Auo_boxed_121:
		movea.l    34(a7),a3
		move.l     a3,d0
		beq.s      Auo_boxed_16
		movea.l    a3,a0
		jsr        Ast_create
		move.l     a0,512(a5)
		bra.s      Auo_boxed_16
Auo_boxed_57:
		movea.l    a2,a0
		bsr        boxed_charlist
		bra.s      Auo_boxed_16
Auo_boxed_19:
		clr.w      d0
		bra.s      Auo_boxed_122
Auo_boxed_16:
		moveq.l    #1,d0
Auo_boxed_122:
		lea.l      38(a7),a7
		movem.l    (a7)+,d3-d7/a2-a6
		rts
Auo_boxed_13:

A_boxed:
		movem.l    d2-d7/a2-a6,-(a7)
		lea.l      -574(a7),a7
		movea.l    622(a7),a3
		clr.l      516(a7)
		lea.l      ACSblk,a5
		move.w     22(a3),d0
		bne.s      A_boxed_1
		move.w     24(a3),d1
		beq.s      A_boxed_2
A_boxed_1:
		move.w     18(a3),546(a7)
		move.w     546(a7),d0
		add.w      22(a3),d0
		subq.w     #1,d0
		move.w     d0,550(a7)
		move.w     20(a3),548(a7)
		move.w     548(a7),d0
		add.w      24(a3),d0
		subq.w     #1,d0
		move.w     d0,552(a7)
		lea.l      546(a7),a0
		moveq.l    #1,d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        vs_clip
		bra.s      A_boxed_3
A_boxed_2:
		lea.l      546(a7),a0
		clr.w      d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        vs_clip
A_boxed_3:
		lea.l      26(a3),a0
		move.l     a0,520(a7)
		move.w     4(a3),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    (a3),a1
		adda.l     d0,a1
		move.l     a1,570(a7)
		move.l     12(a1),562(a7)
		movea.l    562(a7),a0
		movea.l    16(a0),a4
		move.l     516(a4),566(a7)
		move.l     566(a7),d2
		beq.s      A_boxed_4
		movea.l    d2,a1
		move.w     28(a1),d0
		cmp.w      524(a4),d0
		bne.s      A_boxed_4
		move.w     30(a1),d3
		move.w     540(a4),d4
		bra.s      A_boxed_5
A_boxed_4:
		moveq.l    #-1,d3
		clr.w      d4
A_boxed_5:
		move.w     14(a3),d5
		ext.l      d5
		divs.w     542(a4),d5
		movea.l    520(a7),a0
		move.w     2(a0),d0
		lsr.w      #8,d0
		and.w      #$00FF,d0
		cmp.w      d0,d5
		bls.s      A_boxed_6
		move.w     2(a0),d5
		lsr.w      #8,d5
		and.w      #$00FF,d5
A_boxed_6:
		move.w     d5,d6
		muls.w     542(a4),d6
		lea.l      554(a7),a2
		moveq.l    #-1,d0
		add.w      10(a3),d0
		move.w     d0,(a2)
		add.w      d6,d0
		addq.w     #1,d0
		move.w     d0,4(a2)
		move.w     16(a3),d1
		sub.w      544(a4),d1
		asr.w      #1,d1
		add.w      12(a3),d1
		subq.w     #1,d1
		move.w     d1,2(a2)
		add.w      544(a4),d1
		move.w     d1,6(a2)
		movea.l    (a5),a0
		move.w     16(a0),d0
		moveq.l    #1,d1
		jsr        vswr_mode
		moveq.l    #1,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsl_width
		clr.w      d2
		clr.w      d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsl_ends
		moveq.l    #1,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsl_type
		clr.w      d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vst_effects
		movea.l    520(a7),a0
		move.w     2(a0),d0
		lsr.w      #2,d0
		and.w      #$0001,d0
		beq.s      A_boxed_7
		movea.l    (a5),a1
		move.w     660(a1),d1
		move.w     16(a1),d0
		jsr        vst_font
		pea.l      544(a7)
		pea.l      548(a7)
		lea.l      552(a7),a1
		lea.l      552(a7),a0
		movea.l    (a5),a6
		move.w     662(a6),d1
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
		bra.s      A_boxed_8
A_boxed_7:
		movea.l    (a5),a0
		move.w     656(a0),d1
		move.w     16(a0),d0
		jsr        vst_font
		pea.l      544(a7)
		pea.l      548(a7)
		lea.l      552(a7),a1
		lea.l      552(a7),a0
		movea.l    (a5),a6
		move.w     658(a6),d1
		move.w     16(a6),d0
		jsr        vst_height
		addq.w     #8,a7
A_boxed_8:
		clr.w      d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_interior
		clr.w      d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_perimeter
		movea.l    a2,a0
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_bar
		lea.l      524(a7),a6
		moveq.l    #16,d0
		movea.l    570(a7),a0
		and.w      10(a0),d0
		beq        A_boxed_9
		movea.l    520(a7),a1
		move.w     2(a1),d1
		lsr.w      #1,d1
		and.w      #$0001,d1
		beq.s      A_boxed_10
		movea.l    (a5),a0
		cmpi.w     #$0004,28(a0)
		blt.s      A_boxed_10
		movea.l    572(a0),a1
		move.w     14(a1),d2
		and.w      #$0100,d2
		bne.s      A_boxed_10
		movea.l    520(a7),a0
		move.w     (a0),d7
		moveq.l    #12,d0
		lsr.w      d0,d7
		and.w      #$000F,d7
		move.w     (a0),d1
		lsr.w      #8,d1
		and.w      #$000F,d1
		move.w     d1,544(a7)
		bra.s      A_boxed_11
A_boxed_10:
		moveq.l    #1,d7
		move.w     d7,544(a7)
A_boxed_11:
		moveq.l    #1,d0
		add.w      4(a2),d0
		move.w     d0,(a6)
		move.w     d0,16(a6)
		moveq.l    #-1,d1
		add.w      2(a2),d1
		move.w     d1,2(a6)
		move.w     d1,18(a6)
		moveq.l    #1,d0
		add.w      4(a2),d0
		move.w     d0,4(a6)
		moveq.l    #1,d1
		add.w      6(a2),d1
		move.w     d1,6(a6)
		moveq.l    #-1,d2
		add.w      (a2),d2
		move.w     d2,8(a6)
		move.w     d1,10(a6)
		move.w     d2,12(a6)
		moveq.l    #-1,d0
		add.w      2(a2),d0
		move.w     d0,14(a6)
		movea.l    (a5),a0
		move.w     16(a0),d0
		move.w     d7,d1
		jsr        vsl_color
		lea.l      8(a6),a0
		moveq.l    #3,d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_pline
		move.w     544(a7),d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsl_color
		movea.l    a6,a0
		moveq.l    #3,d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_pline
A_boxed_9:
		addq.w     #1,(a2)
		addq.w     #1,2(a2)
		subq.w     #2,4(a2)
		subq.w     #1,6(a2)
		movea.l    520(a7),a0
		move.w     2(a0),d1
		lsr.w      #4,d1
		and.w      #$000F,d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        vst_color
		lea.l      544(a7),a1
		lea.l      544(a7),a0
		moveq.l    #5,d2
		clr.w      d1
		move.l     a1,-(a7)
		movea.l    (a5),a1
		move.w     16(a1),d0
		movea.l    (a7)+,a1
		jsr        vst_alignment
		move.w     526(a4),d0
		beq        A_boxed_12
		moveq.l    #1,d1
		movea.l    520(a7),a0
		and.w      2(a0),d1
		beq.s      A_boxed_13
		lea.l      256(a7),a1
		move.l     a1,512(a7)
		movea.l    a1,a0
		moveq.l    #42,d0
		move.l     #$000000FF,d1
		jsr        memset
		clr.b      d0
		move.b     d0,511(a7)
		move.w     526(a4),d1
		lea.l      256(a7),a0
		move.b     d0,0(a0,d1.w)
		bra.s      A_boxed_14
A_boxed_13:
		lea.l      0(a4,d4.w),a0
		lea.l      256(a0),a0
		move.l     a0,512(a7)
A_boxed_14:
		move.w     526(a4),d0
		sub.w      d4,d0
		cmp.w      d0,d5
		bge.s      A_boxed_15
		movea.l    512(a7),a0
		adda.w     d5,a0
		move.l     a0,516(a7)
		move.b     (a0),d7
		clr.b      (a0)
A_boxed_15:
		movea.l    512(a7),a1
		lea.l      (a7),a0
		jsr        strcpy
		movea.l    512(a7),a0
		move.w     2(a2),d2
		move.w     10(a3),d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_gtext
		move.l     516(a7),d0
		beq.s      A_boxed_12
		movea.l    d0,a0
		move.b     d7,(a0)
A_boxed_12:
		move.w     d5,d0
		sub.w      526(a4),d0
		add.w      d4,d0
		move.w     d0,544(a7)
		tst.w      d0
		ble.s      A_boxed_16
		move.l     #$000000FF,d1
		lea.l      256(a7),a0
		moveq.l    #95,d0
		jsr        memset
		move.w     544(a7),d0
		lea.l      256(a7),a0
		clr.b      0(a0,d0.w)
		move.w     2(a2),d2
		move.w     526(a4),d1
		sub.w      d4,d1
		muls.w     542(a4),d1
		add.w      10(a3),d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_gtext
A_boxed_16:
		moveq.l    #1,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsl_color
		moveq.l    #1,d0
		and.w      8(a3),d0
		beq.s      A_boxed_17
		moveq.l    #-1,d1
		add.w      10(a3),d1
		move.w     d1,(a6)
		move.w     d1,16(a6)
		move.w     d1,12(a6)
		move.w     (a6),d2
		add.w      d6,d2
		addq.w     #1,d2
		move.w     d2,8(a6)
		move.w     d2,4(a6)
		move.w     16(a3),d1
		sub.w      544(a4),d1
		asr.w      #1,d1
		add.w      12(a3),d1
		subq.w     #1,d1
		move.w     d1,2(a6)
		move.w     d1,18(a6)
		move.w     d1,6(a6)
		move.w     2(a6),d2
		add.w      544(a4),d2
		move.w     d2,10(a6)
		move.w     d2,14(a6)
		movea.l    a6,a0
		moveq.l    #5,d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_pline
A_boxed_17:
		tst.w      d3
		bmi        A_boxed_18
		moveq.l    #3,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vswr_mode
		movea.l    532(a4),a0
		move.w     (a0),d0
		ble.s      A_boxed_19
		moveq.l    #1,d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        vsf_interior
		moveq.l    #1,d1
		movea.l    (a5),a0
		move.w     16(a0),d0
		jsr        vsf_color
		move.w     d3,d0
		sub.w      d4,d0
		muls.w     542(a4),d0
		add.w      10(a3),d0
		move.w     d0,(a2)
		movea.l    532(a4),a0
		move.w     (a0),d1
		muls.w     542(a4),d1
		add.w      d0,d1
		subq.w     #1,d1
		move.w     d1,4(a2)
		move.w     (a2),d0
		cmp.w      10(a3),d0
		bge.s      A_boxed_20
		move.w     10(a3),(a2)
A_boxed_20:
		move.w     10(a3),d0
		add.w      d6,d0
		move.w     4(a2),d1
		cmp.w      d0,d1
		ble.s      A_boxed_21
		move.w     d0,4(a2)
A_boxed_21:
		movea.l    a2,a0
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        v_bar
		bra.s      A_boxed_18
A_boxed_19:
		move.w     d3,d0
		sub.w      d4,d0
		muls.w     542(a4),d0
		add.w      10(a3),d0
		move.w     d0,(a2)
		move.w     d0,4(a2)
		move.w     (a2),d1
		cmp.w      10(a3),d1
		blt.s      A_boxed_18
		move.w     10(a3),d2
		add.w      14(a3),d2
		cmp.w      d2,d1
		bgt.s      A_boxed_18
		movea.l    a2,a0
		movea.l    (a5),a1
		move.w     16(a1),d0
		moveq.l    #2,d1
		jsr        v_pline
A_boxed_18:
		lea.l      546(a7),a0
		clr.w      d1
		movea.l    (a5),a1
		move.w     16(a1),d0
		jsr        vs_clip
		moveq.l    #-18,d0
		and.w      8(a3),d0
		lea.l      574(a7),a7
		movem.l    (a7)+,d2-d7/a2-a6
		rts

		.data

CHARLIST:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
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
		dc.b $20
		dc.b $00
		dc.b $10
CHARENTRY:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1b
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $0170
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
xd4e86:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd4f86:
		dc.w $2000
xd4f88:
		dc.w $2000
xd4f8a:
		dc.w $3a5c
		dc.b $00
xd4f8d:
		dc.b 'azAZ'
xd4f91:
		dc.b '09',0
xd4f94:
		dc.b '._!@#$%^&()+-=~',$27,';",<>|[]{}',0
xd4faf:
		dc.b '._!@#$%^&()+-=~',$27,';",<>|[]{}*?',0
xd4fcc:
		dc.b '._!@#$%^&()+-=~',$27,';",<>|[]{}\:',0
xd4fe9:
		dc.b '._!@#$%^&()+-=~',$27,';",<>|[]{}*?\:',0
xd5008:
		dc.b 'azAZ',0
xd500d:
		dc.b $20
		dc.b $00
xd500f:
		dc.b $30
		dc.w $3100
xd5012:
		dc.w $3037
		dc.b $00
xd5015:
		dc.b '09afAF',0
xd501c:
		dc.w $2e00
xd501e:
		dc.b '%ld',0
xd5022:
		dc.w $2563
		dc.b $00
		.even

