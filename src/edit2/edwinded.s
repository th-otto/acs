		.include "country.inc"
		
		.text

edwi_tme:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    (a2),a0
		ori.w      #$0004,84(a2)
		lea.l      list_menu,a3
		move.l     (a0),(a3)
		movea.l    (a0),a1
		move.l     28(a1),4(a3)
		movea.l    a3,a0
		movea.l    WI_LIST+8,a1
		jsr        (a1)
		andi.w     #$FFFB,84(a2)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

edwi_two:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    (a2),a0
		ori.w      #$0004,84(a2)
		lea.l      list_object,a3
		move.l     (a0),(a3)
		movea.l    (a0),a1
		move.l     24(a1),4(a3)
		movea.l    a3,a0
		movea.l    WI_LIST+8,a1
		jsr        (a1)
		andi.w     #$FFFB,84(a2)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

edwi_tic:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    (a2),a0
		ori.w      #$0004,84(a2)
		lea.l      list_icon,a3
		move.l     (a0),(a3)
		movea.l    (a0),a1
		move.l     44(a1),4(a3)
		movea.l    a3,a0
		movea.l    WI_LIST+8,a1
		jsr        (a1)
		andi.w     #$FFFB,84(a2)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

edwi_ref:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    (a2),a0
		ori.w      #$0004,84(a2)
		lea.l      list_reference,a3
		move.l     (a0),(a3)
		movea.l    (a0),a1
		move.l     60(a1),4(a3)
		movea.l    a3,a0
		movea.l    WI_LIST+8,a1
		jsr        (a1)
		andi.w     #$FFFB,84(a2)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

edwi_ok:
		clr.w      d0
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        acc_window
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        term
		rts

edwi_abort:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        term
		rts

edwi_acc:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #4,a7
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		movea.l    600(a0),a3
		movea.l    20(a3),a4
		clr.w      584(a0)
		jsr        Adr_next
		move.w     d0,d3
		bmi.w      edwi_acc_1
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		movea.l    (a2),a0
		movea.l    576(a0),a1
		movea.l    20(a1),a0
		lea.l      24(a0,d1.l),a0
		move.l     12(a0),(a7)
		cmpi.w     #$2710,22(a0)
		beq.s      edwi_acc_2
		cmpi.w     #$2711,22(a0)
		beq.s      edwi_acc_2
		cmpi.w     #$2720,22(a0)
		beq.s      edwi_acc_2
		cmpi.w     #$271C,22(a0)
		bne.s      edwi_acc_1
edwi_acc_2:
		jsr        Awi_diaend
		movea.l    (a7),a1
		lea.l      22(a1),a1
		movea.l    (a2),a0
		move.w     608(a0),d0
		movea.l    a4,a0
		jsr        Aob_puttext
		moveq.l    #-1,d1
		movea.l    (a2),a0
		move.w     608(a0),d0
		movea.l    102(a3),a1
		movea.l    a3,a0
		jsr        (a1)
		jsr        Awi_diastart
		move.w     d3,d0
		movea.l    (a2),a0
		movea.l    576(a0),a0
		jsr        Adr_del
edwi_acc_1:
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a4
		rts

acc_window:
		movem.l    d3/a2-a5,-(a7)
		lea.l      -156(a7),a7
		move.l     a0,152(a7)
		move.w     d0,d3
		lea.l      xab5ac,a1
		lea.l      66(a7),a0
		moveq.l    #15,d1
acc_window_1:
		move.l     (a1)+,(a0)+
		dbf        d1,acc_window_1
		move.w     (a1)+,(a0)+
		lea.l      xab5ee,a0
		lea.l      (a7),a1
		moveq.l    #15,d1
acc_window_2:
		move.l     (a0)+,(a1)+
		dbf        d1,acc_window_2
		move.w     (a0)+,(a1)+
		movea.l    152(a7),a0
		movea.l    (a0),a0
		movea.l    (a0),a5
		movea.l    4(a0),a1
		movea.l    4(a1),a2
		movea.l    152(a7),a0
		movea.l    20(a0),a3
		lea.l      136(a7),a4
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2376(a3),a0
		jsr        Auo_boxed
		movea.l    (a4),a0
		move.b     (a0),d0
		bne.s      acc_window_3
		tst.w      d3
		bne.s      acc_window_3
		lea.l      WARN_CREATE,a0
		moveq.l    #1,d0
		jsr        Awi_alert
acc_window_3:
		ori.w      #$0001,6(a5)
		clr.w      d0
		moveq.l    #1,d1
		and.w      562(a3),d1
		beq.s      acc_window_4
		or.w       #$0002,d0
acc_window_4:
		moveq.l    #1,d1
		and.w      970(a3),d1
		beq.s      acc_window_5
		or.w       #$1000,d0
acc_window_5:
		moveq.l    #1,d1
		and.w      946(a3),d1
		beq.s      acc_window_6
		or.w       #$0008,d0
acc_window_6:
		moveq.l    #1,d1
		and.w      922(a3),d1
		beq.s      acc_window_7
		or.w       #$0001,d0
acc_window_7:
		moveq.l    #1,d1
		and.w      586(a3),d1
		beq.s      acc_window_8
		or.w       #$0010,d0
acc_window_8:
		moveq.l    #1,d1
		and.w      850(a3),d1
		beq.s      acc_window_9
		or.w       #$0004,d0
acc_window_9:
		moveq.l    #1,d1
		and.w      730(a3),d1
		beq.s      acc_window_10
		or.w       #$0020,d0
acc_window_10:
		moveq.l    #1,d1
		and.w      826(a3),d1
		beq.s      acc_window_11
		or.w       #$0040,d0
acc_window_11:
		moveq.l    #1,d1
		and.w      754(a3),d1
		beq.s      acc_window_12
		or.w       #$0080,d0
acc_window_12:
		moveq.l    #1,d1
		and.w      706(a3),d1
		beq.s      acc_window_13
		or.w       #$0400,d0
acc_window_13:
		moveq.l    #1,d1
		and.w      682(a3),d1
		beq.s      acc_window_14
		or.w       #$0200,d0
acc_window_14:
		moveq.l    #1,d1
		and.w      658(a3),d1
		beq.s      acc_window_15
		or.w       #$0800,d0
acc_window_15:
		moveq.l    #1,d1
		and.w      802(a3),d1
		beq.s      acc_window_16
		or.w       #$0100,d0
acc_window_16:
		moveq.l    #1,d1
		and.w      874(a3),d1
		beq.s      acc_window_17
		or.w       #$4000,d0
acc_window_17:
		moveq.l    #1,d1
		and.w      898(a3),d1
		beq.s      acc_window_18
		or.w       #$2000,d0
acc_window_18:
		move.w     d0,34(a2)
		clr.w      d0
		moveq.l    #1,d1
		and.w      1018(a3),d1
		beq.s      acc_window_19
		or.w       #$0008,d0
acc_window_19:
		moveq.l    #1,d1
		and.w      1066(a3),d1
		beq.s      acc_window_20
		or.w       #$0004,d0
acc_window_20:
		moveq.l    #1,d1
		and.w      1114(a3),d1
		beq.s      acc_window_21
		or.w       #$0001,d0
acc_window_21:
		moveq.l    #1,d1
		and.w      1162(a3),d1
		beq.s      acc_window_22
		or.w       #$0002,d0
acc_window_22:
		moveq.l    #1,d1
		and.w      1210(a3),d1
		beq.s      acc_window_23
		or.w       #$0010,d0
acc_window_23:
		moveq.l    #1,d1
		and.w      1258(a3),d1
		beq.s      acc_window_24
		or.w       #$0100,d0
acc_window_24:
		move.w     d0,84(a2)
		movea.l    152(a7),a0
		movea.l    20(a0),a1
		lea.l      336(a1),a1
		move.l     a1,140(a7)
		movea.l    a4,a1
		movea.l    140(a7),a0
		moveq.l    #3,d0
		jsr        Auo_slider
		pea.l      134(a7)
		lea.l      xab630,a1
		movea.l    (a4),a0
		jsr        sscanf
		addq.w     #4,a7
		movea.l    152(a7),a0
		movea.l    20(a0),a1
		lea.l      408(a1),a1
		move.l     a1,140(a7)
		movea.l    a4,a1
		moveq.l    #3,d0
		movea.l    140(a7),a0
		jsr        Auo_slider
		pea.l      132(a7)
		lea.l      xab630,a1
		movea.l    (a4),a0
		jsr        sscanf
		addq.w     #4,a7
		move.w     134(a7),d0
		neg.w      d0
		move.w     132(a7),d1
		neg.w      d1
		lsl.w      #8,d1
		or.w       #$00FF,d1
		and.w      d1,d0
		move.w     d0,72(a2)
		pea.l      36(a2)
		lea.l      xab630,a1
		movea.l    a3,a0
		moveq.l    #3,d0
		jsr        Aob_scanf
		addq.w     #4,a7
		pea.l      38(a2)
		lea.l      xab630,a1
		moveq.l    #5,d0
		movea.l    a3,a0
		jsr        Aob_scanf
		addq.w     #4,a7
		pea.l      40(a2)
		lea.l      xab630,a1
		moveq.l    #7,d0
		movea.l    a3,a0
		jsr        Aob_scanf
		addq.w     #4,a7
		pea.l      42(a2)
		lea.l      xab630,a1
		moveq.l    #9,d0
		movea.l    a3,a0
		jsr        Aob_scanf
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      1392(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		movea.l    74(a2),a1
		movea.l    a5,a0
		jsr        change_string
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      1416(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		movea.l    78(a2),a1
		movea.l    a5,a0
		jsr        change_string
		addq.w     #4,a7
		move.l     20(a2),148(a7)
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      1872(a3),a0
		jsr        Auo_boxed
		movea.l    (a4),a0
		move.b     (a0),d0
		beq.s      acc_window_25
		movea.l    a0,a1
		movea.l    24(a5),a0
		jsr        find_entry
		move.l     a0,144(a7)
		move.l     a0,d0
		bne.s      acc_window_26
		movea.l    (a4),a1
		lea.l      ERR_OB_DEL,a0
		jsr        alert_str
		bra.s      acc_window_27
acc_window_26:
		movea.l    144(a7),a0
		addq.w     #1,54(a0)
		bra.s      acc_window_27
acc_window_25:
		clr.l      144(a7)
acc_window_27:
		move.l     148(a7),d0
		beq.s      acc_window_28
		movea.l    d0,a1
		movea.l    a5,a0
		jsr        del_object
acc_window_28:
		move.l     144(a7),20(a2)
		move.l     24(a2),148(a7)
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      1824(a3),a0
		jsr        Auo_boxed
		movea.l    (a4),a0
		move.b     (a0),d0
		beq.s      acc_window_29
		movea.l    a0,a1
		movea.l    24(a5),a0
		jsr        find_entry
		move.l     a0,144(a7)
		move.l     a0,d0
		bne.s      acc_window_30
		movea.l    (a4),a1
		lea.l      ERR_OB_DEL,a0
		jsr        alert_str
		bra.s      acc_window_31
acc_window_30:
		movea.l    144(a7),a0
		addq.w     #1,54(a0)
		bra.s      acc_window_31
acc_window_29:
		clr.l      144(a7)
acc_window_31:
		move.l     148(a7),d0
		beq.s      acc_window_32
		movea.l    d0,a1
		movea.l    a5,a0
		jsr        del_object
acc_window_32:
		move.l     144(a7),24(a2)
		move.l     94(a2),148(a7)
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      1776(a3),a0
		jsr        Auo_boxed
		movea.l    (a4),a0
		move.b     (a0),d0
		beq.s      acc_window_33
		movea.l    a0,a1
		movea.l    28(a5),a0
		jsr        find_entry
		move.l     a0,144(a7)
		move.l     a0,d0
		bne.s      acc_window_34
		movea.l    (a4),a1
		lea.l      ERR_ME_DEL,a0
		jsr        alert_str
		bra.s      acc_window_35
acc_window_34:
		movea.l    144(a7),a0
		addq.w     #1,54(a0)
		bra.s      acc_window_35
acc_window_33:
		clr.l      144(a7)
acc_window_35:
		move.l     148(a7),d0
		beq.s      acc_window_36
		movea.l    d0,a1
		movea.l    a5,a0
		jsr        del_men
acc_window_36:
		move.l     144(a7),94(a2)
		move.l     90(a2),148(a7)
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      1920(a3),a0
		jsr        Auo_boxed
		movea.l    (a4),a0
		move.b     (a0),d0
		beq.s      acc_window_37
		movea.l    a0,a1
		movea.l    44(a5),a0
		jsr        find_entry
		move.l     a0,144(a7)
		move.l     a0,d0
		bne.s      acc_window_38
		movea.l    (a4),a1
		lea.l      ERR_IC_DEL,a0
		jsr        alert_str
		bra.s      acc_window_39
acc_window_38:
		movea.l    144(a7),a0
		addq.w     #1,54(a0)
		bra.s      acc_window_39
acc_window_37:
		clr.l      144(a7)
acc_window_39:
		move.l     148(a7),d0
		beq.s      acc_window_40
		movea.l    d0,a1
		movea.l    a5,a0
		jsr        del_icon
acc_window_40:
		move.l     144(a7),90(a2)
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      1968(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		clr.w      d0
		movea.l    a2,a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2328(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #6,d0
		lea.l      12(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2376(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #7,d0
		lea.l      8(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2424(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #21,d0
		lea.l      4(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2472(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #8,d0
		lea.l      16(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2520(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #9,d0
		lea.l      98(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2568(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #10,d0
		lea.l      102(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2616(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #11,d0
		lea.l      106(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2664(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #12,d0
		lea.l      110(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2712(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #14,d0
		lea.l      114(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2760(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #20,d0
		lea.l      118(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2808(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #15,d0
		lea.l      122(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2856(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #16,d0
		lea.l      126(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2904(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #17,d0
		lea.l      130(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      3000(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #19,d0
		lea.l      134(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      2952(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #18,d0
		lea.l      138(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      3048(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #22,d0
		lea.l      142(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      3096(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #23,d0
		lea.l      146(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		movea.l    a4,a1
		moveq.l    #3,d0
		lea.l      3144(a3),a0
		jsr        Auo_boxed
		move.l     (a4),-(a7)
		moveq.l    #24,d0
		lea.l      150(a2),a1
		movea.l    a5,a0
		jsr        mod_ref
		addq.w     #4,a7
		move.l     158(a2),148(a7)
		lea.l      4(a7),a1
		moveq.l    #3,d0
		lea.l      1608(a3),a0
		jsr        Auo_boxed
		movea.l    4(a7),a0
		jsr        strlen
		addq.l     #1,d0
		move.l     d0,10(a7)
		move.l     d0,14(a7)
		movea.l    4(a7),a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      acc_window_41
		move.l     148(a7),d0
		bne.s      acc_window_42
		lea.l      (a7),a1
		movea.l    a5,a0
		jsr        add_string
		move.l     a0,144(a7)
		bra.s      acc_window_43
acc_window_42:
		move.l     4(a7),-(a7)
		movea.l    152(a7),a1
		movea.l    a5,a0
		jsr        change_string
		addq.w     #4,a7
		move.l     a0,144(a7)
		bra.s      acc_window_43
acc_window_41:
		clr.l      144(a7)
acc_window_43:
		move.l     148(a7),d0
		beq.s      acc_window_44
		cmp.l      144(a7),d0
		beq.s      acc_window_44
		movea.l    d0,a1
		movea.l    a5,a0
		jsr        del_string
acc_window_44:
		move.l     144(a7),158(a2)
		move.l     154(a2),148(a7)
		lea.l      70(a7),a1
		moveq.l    #3,d0
		lea.l      1584(a3),a0
		jsr        Auo_boxed
		movea.l    70(a7),a0
		jsr        strlen
		addq.l     #1,d0
		move.l     d0,76(a7)
		move.l     d0,80(a7)
		movea.l    70(a7),a0
		jsr        Ast_isEmpty
		tst.w      d0
		bne.s      acc_window_45
		move.l     148(a7),d0
		bne.s      acc_window_46
		lea.l      66(a7),a1
		movea.l    a5,a0
		jsr        add_string
		move.l     a0,144(a7)
		bra.s      acc_window_47
acc_window_46:
		move.l     70(a7),-(a7)
		movea.l    152(a7),a1
		movea.l    a5,a0
		jsr        change_string
		addq.w     #4,a7
		move.l     a0,144(a7)
		bra.s      acc_window_47
acc_window_45:
		clr.l      144(a7)
acc_window_47:
		move.l     148(a7),d0
		beq.s      acc_window_48
		cmp.l      144(a7),d0
		beq.s      acc_window_48
		movea.l    d0,a1
		movea.l    a5,a0
		jsr        del_string
acc_window_48:
		move.l     144(a7),154(a2)
		lea.l      156(a7),a7
		movem.l    (a7)+,d3/a2-a5
		rts

wi_make:
		movem.l    a2-a4,-(a7)
		subq.w     #4,a7
		move.l     a0,(a7)
		movea.l    4(a0),a3
		movea.l    18(a3),a4
		move.l     a4,d0
		beq.s      wi_make_1
		movea.l    a4,a0
		jsr        Awi_show
		bra        wi_make_2
wi_make_1:
		moveq.l    #8,d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      wi_make_3
		movea.l    (a7),a1
		move.l     (a1),(a0)
		move.l     4(a1),4(a2)
		lea.l      22(a3),a0
		move.l     a0,WI_WINDOW+78
		movea.l    WI_WINDOW+90,a1
		move.l     a0,8(a1)
		lea.l      WI_WINDOW,a0
		jsr        Awi_create
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      wi_make_4
		movea.l    a2,a0
		jsr        Ax_free
		bra.s      wi_make_3
wi_make_4:
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
		jsr        set_window
		movea.l    a4,a0
		movea.l    12(a4),a1
		jsr        (a1)
		tst.w      d0
		beq.s      wi_make_2
		movea.l    a4,a0
		jsr        term
wi_make_3:
		suba.l     a0,a0
		bra.s      wi_make_5
wi_make_2:
		movea.l    a4,a0
wi_make_5:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a4
		rts

wi_service:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		movea.l    a1,a4
		movea.l    (a0),a3
		cmp.w      #$0024,d0
		beq.s      wi_service_1
		bgt.s      wi_service_2
		subq.w     #2,d0
		beq        wi_service_3
		subq.w     #7,d0
		beq.s      wi_service_4
		bra        wi_service_5
wi_service_2:
		sub.w      #$0025,d0
		beq.s      wi_service_6
		sub.w      #$26EB,d0
		beq        wi_service_7
		bra        wi_service_5
wi_service_6:
		clr.l      2(a4)
		bra        wi_service_8
wi_service_1:
		move.w     #$0001,(a4)
		bra        wi_service_8
wi_service_4:
		movea.l    ACSblk,a0
		movea.l    596(a0),a1
		move.w     (a1),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    576(a0),a1
		movea.l    20(a1),a0
		lea.l      24(a0,d0.l),a0
		move.w     (a4),d2
		sub.w      #$004A,d2
		beq.s      wi_service_9
		subq.w     #2,d2
		beq.s      wi_service_10
		subq.w     #2,d2
		beq.s      wi_service_10
		subq.w     #2,d2
		beq.s      wi_service_11
		bra.s      wi_service_12
wi_service_10:
		cmpi.w     #$2710,22(a0)
		beq.s      wi_service_8
		bra.s      wi_service_13
wi_service_9:
		cmpi.w     #$2711,22(a0)
		beq.s      wi_service_8
		bra.s      wi_service_13
wi_service_11:
		cmpi.w     #$2720,22(a0)
		beq.s      wi_service_8
wi_service_13:
		clr.w      2(a4)
		bra.s      wi_service_8
wi_service_12:
		cmpi.w     #$271C,22(a0)
		beq.s      wi_service_8
		bra.s      wi_service_13
wi_service_3:
		moveq.l    #1,d0
		movea.l    a2,a0
		bsr        acc_window
		movea.l    a2,a0
		jsr        term
		bra.s      wi_service_8
wi_service_7:
		movea.l    4(a3),a1
		movea.l    a2,a0
		jsr        new_name
		bra.s      wi_service_8
wi_service_5:
		movea.l    a4,a1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Awi_service
		bra.s      wi_service_14
wi_service_8:
		moveq.l    #1,d0
wi_service_14:
		movem.l    (a7)+,d3/a2-a4
		rts

set_window:
		movem.l    d3/a2-a5,-(a7)
		lea.l      -62(a7),a7
		movea.l    a0,a5
		movea.l    (a0),a0
		movea.l    4(a0),a1
		movea.l    4(a1),a2
		movea.l    20(a5),a3
		move.w     34(a2),d3
		lea.l      552(a3),a0
		moveq.l    #2,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      960(a3),a0
		move.w     d3,d0
		and.w      #$1000,d0
		jsr        set_flag
		lea.l      936(a3),a0
		moveq.l    #8,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      912(a3),a0
		moveq.l    #1,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      576(a3),a0
		moveq.l    #16,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      840(a3),a0
		moveq.l    #4,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      720(a3),a0
		moveq.l    #32,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      816(a3),a0
		moveq.l    #64,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      744(a3),a0
		move.w     #$0080,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      696(a3),a0
		move.w     d3,d0
		and.w      #$0400,d0
		jsr        set_flag
		lea.l      672(a3),a0
		move.w     d3,d0
		and.w      #$0200,d0
		jsr        set_flag
		lea.l      792(a3),a0
		move.w     d3,d0
		and.w      #$0100,d0
		jsr        set_flag
		lea.l      648(a3),a0
		move.w     d3,d0
		and.w      #$0800,d0
		jsr        set_flag
		lea.l      864(a3),a0
		move.w     d3,d0
		and.w      #$4000,d0
		jsr        set_flag
		lea.l      888(a3),a0
		move.w     d3,d0
		and.w      #$2000,d0
		jsr        set_flag
		move.w     84(a2),d3
		lea.l      1008(a3),a0
		moveq.l    #8,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      1056(a3),a0
		moveq.l    #4,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      1104(a3),a0
		moveq.l    #1,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      1152(a3),a0
		moveq.l    #2,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      1200(a3),a0
		moveq.l    #16,d0
		and.w      d3,d0
		jsr        set_flag
		lea.l      1248(a3),a0
		move.w     d3,d0
		and.w      #$0100,d0
		jsr        set_flag
		move.l     a5,52(a7)
		lea.l      336(a3),a5
		move.l     a5,56(a7)
		move.w     #$000E,60(a7)
		lea.l      52(a7),a1
		moveq.l    #9,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.l     #$00000007,44(a7)
		lea.l      44(a7),a1
		moveq.l    #100,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.l     #$00000001,44(a7)
		lea.l      44(a7),a1
		moveq.l    #101,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.w     72(a2),d0
		or.w       #$FF00,d0
		neg.w      d0
		cmp.w      #$0008,d0
		beq.s      set_window_1
		bgt.s      set_window_2
		subq.w     #1,d0
		beq.s      set_window_3
		subq.w     #1,d0
		beq.s      set_window_4
		subq.w     #2,d0
		beq.s      set_window_5
		bra.s      set_window_6
set_window_2:
		sub.w      #$0010,d0
		beq.s      set_window_7
		sub.w      #$0010,d0
		beq.s      set_window_8
		sub.w      #$0020,d0
		beq.s      set_window_9
		bra.s      set_window_6
set_window_3:
		clr.l      44(a7)
		bra.s      set_window_6
set_window_4:
		move.l     #$00000001,44(a7)
		bra.s      set_window_6
set_window_5:
		move.l     #$00000002,44(a7)
		bra.s      set_window_6
set_window_1:
		move.l     #$00000003,44(a7)
		bra.s      set_window_6
set_window_7:
		move.l     #$00000004,44(a7)
		bra.s      set_window_6
set_window_8:
		move.l     #$00000005,44(a7)
		bra.s      set_window_6
set_window_9:
		move.l     #$00000006,44(a7)
set_window_6:
		lea.l      44(a7),a1
		moveq.l    #17,d0
		movea.l    a5,a0
		jsr        Auo_slider
		lea.l      8(a7),a4
		move.w     72(a2),d0
		or.w       #$FF00,d0
		neg.w      d0
		move.w     d0,-(a7)
		lea.l      xab630,a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a1
		moveq.l    #4,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.l     #live_snap,(a7)
		move.l     a5,4(a7)
		lea.l      (a7),a1
		moveq.l    #103,d0
		movea.l    a5,a0
		jsr        Auo_slider
		lea.l      408(a3),a5
		move.l     a5,56(a7)
		move.w     #$0011,60(a7)
		lea.l      52(a7),a1
		moveq.l    #9,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.l     #$00000007,44(a7)
		lea.l      44(a7),a1
		moveq.l    #100,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.l     #$00000001,44(a7)
		lea.l      44(a7),a1
		moveq.l    #101,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.w     72(a2),d0
		asr.w      #8,d0
		neg.w      d0
		cmp.w      #$0008,d0
		beq.s      set_window_10
		bgt.s      set_window_11
		subq.w     #1,d0
		beq.s      set_window_12
		subq.w     #1,d0
		beq.s      set_window_13
		subq.w     #2,d0
		beq.s      set_window_14
		bra.s      set_window_15
set_window_11:
		sub.w      #$0010,d0
		beq.s      set_window_16
		sub.w      #$0010,d0
		beq.s      set_window_17
		sub.w      #$0020,d0
		beq.s      set_window_18
		bra.s      set_window_15
set_window_12:
		clr.l      44(a7)
		bra.s      set_window_15
set_window_13:
		move.l     #$00000001,44(a7)
		bra.s      set_window_15
set_window_14:
		move.l     #$00000002,44(a7)
		bra.s      set_window_15
set_window_10:
		move.l     #$00000003,44(a7)
		bra.s      set_window_15
set_window_16:
		move.l     #$00000004,44(a7)
		bra.s      set_window_15
set_window_17:
		move.l     #$00000005,44(a7)
		bra.s      set_window_15
set_window_18:
		move.l     #$00000006,44(a7)
set_window_15:
		lea.l      44(a7),a1
		moveq.l    #17,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.w     72(a2),d0
		asr.w      #8,d0
		neg.w      d0
		move.w     d0,-(a7)
		lea.l      xab630,a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #2,a7
		movea.l    a4,a1
		moveq.l    #4,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.l     #live_snap,(a7)
		move.l     a5,4(a7)
		lea.l      (a7),a1
		moveq.l    #103,d0
		movea.l    a5,a0
		jsr        Auo_slider
		move.w     36(a2),-(a7)
		lea.l      xab630,a1
		moveq.l    #3,d0
		movea.l    a3,a0
		jsr        Aob_printf
		addq.w     #2,a7
		move.w     38(a2),-(a7)
		lea.l      xab630,a1
		moveq.l    #5,d0
		movea.l    a3,a0
		jsr        Aob_printf
		addq.w     #2,a7
		move.w     40(a2),-(a7)
		lea.l      xab630,a1
		moveq.l    #7,d0
		movea.l    a3,a0
		jsr        Aob_printf
		addq.w     #2,a7
		move.w     42(a2),-(a7)
		lea.l      xab630,a1
		moveq.l    #9,d0
		movea.l    a3,a0
		jsr        Aob_printf
		addq.w     #2,a7
		move.l     74(a2),48(a7)
		movea.l    48(a7),a0
		movea.l    4(a0),a1
		moveq.l    #58,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		move.l     78(a2),48(a7)
		movea.l    48(a7),a0
		movea.l    4(a0),a1
		moveq.l    #59,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		movea.l    a4,a1
		movea.l    20(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      1872(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    24(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      1824(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    94(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      1776(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    90(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      1920(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    (a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      1968(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    12(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2328(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    8(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2376(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    4(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2424(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    16(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2472(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    98(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2520(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    102(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2568(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    106(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2616(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    110(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2664(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    114(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2712(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    118(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2760(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    122(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2808(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    126(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2856(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    130(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2904(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    134(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      3000(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    138(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      2952(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    142(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      3048(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    146(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      3096(a3),a0
		jsr        Auo_boxed
		movea.l    a4,a1
		movea.l    150(a2),a0
		jsr        set_ref
		movea.l    a4,a1
		moveq.l    #4,d0
		lea.l      3144(a3),a0
		jsr        Auo_boxed
		move.l     158(a2),d0
		beq.s      set_window_19
		move.l     d0,48(a7)
		movea.l    d0,a0
		movea.l    4(a0),a1
		movea.l    a3,a0
		moveq.l    #67,d0
		jsr        Aob_puttext
		bra.s      set_window_20
set_window_19:
		lea.l      xab632,a1
		moveq.l    #67,d0
		movea.l    a3,a0
		jsr        Aob_puttext
set_window_20:
		move.l     154(a2),d0
		beq.s      set_window_21
		move.l     d0,48(a7)
		movea.l    d0,a0
		movea.l    4(a0),a1
		movea.l    a3,a0
		moveq.l    #66,d0
		jsr        Aob_puttext
		bra.s      set_window_22
set_window_21:
		lea.l      xab632,a1
		moveq.l    #66,d0
		movea.l    a3,a0
		jsr        Aob_puttext
set_window_22:
		lea.l      62(a7),a7
		movem.l    (a7)+,d3/a2-a5
		rts

live_snap:
		move.l     d3,-(a7)
		subq.w     #6,a7
		move.w     d0,d1
		cmp.w      #$0006,d1
		bhi.s      live_snap_1
		add.w      d1,d1
		move.w     J9(pc,d1.w),d1
		jmp        J9(pc,d1.w)
J9:
		dc.w live_snap_2-J9
		dc.w live_snap_3-J9
		dc.w live_snap_4-J9
		dc.w live_snap_5-J9
		dc.w live_snap_6-J9
		dc.w live_snap_7-J9
		dc.w live_snap_8-J9
live_snap_2:
		moveq.l    #1,d3
		bra.s      live_snap_1
live_snap_3:
		moveq.l    #2,d3
		bra.s      live_snap_1
live_snap_4:
		moveq.l    #4,d3
		bra.s      live_snap_1
live_snap_5:
		moveq.l    #8,d3
		bra.s      live_snap_1
live_snap_6:
		moveq.l    #16,d3
		bra.s      live_snap_1
live_snap_7:
		moveq.l    #32,d3
		bra.s      live_snap_1
live_snap_8:
		moveq.l    #64,d3
live_snap_1:
		moveq.l    #10,d1
		lea.l      (a7),a0
		move.w     d3,d0
		jsr        itoa
		addq.w     #6,a7
		move.l     (a7)+,d3
		rts

term:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		movea.l    (a0),a3
		movea.l    4(a3),a1
		clr.l      18(a1)
		move.w     86(a2),d0
		and.w      #$0800,d0
		beq.s      term_1
		lea.l      44(a2),a1
		movea.l    4(a3),a0
		lea.l      58(a0),a0
		moveq.l    #8,d0
		jsr        memcpy
		bra.s      term_2
term_1:
		moveq.l    #8,d0
		lea.l      36(a2),a1
		movea.l    4(a3),a0
		lea.l      58(a0),a0
		jsr        memcpy
term_2:
		movea.l    a3,a0
		jsr        Ax_free
		movea.l    a2,a0
		jsr        Awi_delete
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

	.data

		.IFEQ COUNTRY-COUNTRY_DE
ERR_IC_DEL:
		dc.b '[3][ Die Ikone| ',$27,'%s',$27,' | ist nicht (mehr) Teil | dieser Datei][    OK    ]',0
ERR_ME_DEL:
		dc.b '[3][ Das Men�| ',$27,'%s',$27,' | ist nicht (mehr) Teil | dieser Datei.][    OK    ]',0
ERR_OB_DEL:
		dc.b '[3][ Der Objektbaum| ',$27,'%s',$27,' | ist nicht (mehr) Teil | dieser Datei.][    OK    ]',0
WARN_CREATE:
		dc.b '[1][ Die ',$27,'create',$27,'-Routine wurde| nicht definiert. Es wird| ',$27,'Awi_selfcreate',$27,' eingesetzt! ][   OK   ]',0
BUBBLE_01:
		dc.b 'Hier kann der Dateinamen des ST-Guide-Hypertextes angeben werden, der f�r die Anzeige der Hilfe verwendet werden soll.',0
BUBBLE_02:
		dc.b 'Hier kann die Infozeile des Fensters angegeben werden.',0
BUBBLE_03:
		dc.b 'Bei dem Fenster handlet es sich um ein Listenfenster.',0
BUBBLE_04:
		dc.b 'Das Fenster kann nicht automatisch von ACS geschlossen werden.',0
BUBBLE_05:
		dc.b 'Das Fenster kann im Hintergrund wie ein Werkzeug-Fenster bedient werden.',0
BUBBLE_06:
		dc.b 'Das offene Fenster wird durch ein grau schattiertes Icon auf dem Desktop repr�sentiert.',0
BUBBLE_07:
		dc.b 'Das geschlossene Fenster wird auf dem Desktop durch ein Icon dargestellt.|ACHTUNG: Beim Schlie�en des Fensters ohne dieses Flag wird das Fenster gel�scht!',0
BUBBLE_08:
		dc.b 'Das Fenster akzeptiert Objekte, die auf das Icon des Fensters auf dem Desktop gezogen werden.',0
BUBBLE_09:
		dc.b 'Hier kann der Namen des Fensters angegeben werden, der in der Titelzeile erscheinen soll.',0
BUBBLE_10:
		dc.b 'Hier kann das Thema der Hilfe angegeben werden. Das Thema wird als Referenz an ST-Guide �bergeben.',0
BUBBLE_11:
		dc.b 'Hier kann dem Fenster ein Fenster-Men� zugeordnet werden. Der Name des Men�-Baumes kann eingegeben werden oder per Drag&Drop aus der Men�-Liste �bergeben werden.',0
BUBBLE_12:
		dc.b 'Hier kann dem Fenster eine Toolbar zugeordnet werden. Der Name des Objekt-Baumes kann eingegeben werden oder per Drag&Drop aus der Objekt-Liste �bergeben werden.',0
BUBBLE_13:
		dc.b 'Hier wird dem Fenster das Arbeits-Objekt, das sog. Work-Objekt, zugeordnet. Der Name des Objekt-Baumes kann eingegeben werden oder per Drag&Drop aus der Objekt-Liste �bergeben werden.',0
BUBBLE_14:
		dc.b 'Hier kann dem Fenster ein Icon zugeordnet werden. Der Name des Icons kann eingegeben werden oder per Drag&Drop aus der Icon-Liste �bergeben werden.',0
BUBBLE_15:
		dc.b 'Hier kann der user-Zeiger des Fensters, in die Daten des Fensters abgelegt sind, vorbelegt werden (s. Online-Hilfe). Sinnvoll ist dies z.B. f�r eine statische Struktur, die �ber ein Fenster editiert werden soll.',0
BUBBLE_16:
		dc.b 'Die Schrittweite bei Scroll-Operationen in X- und Y-Richtung wird hier angegeben.|Tip: Schneller wird es ab 8 Pixeln, da dann im VDI immer Wort-Grenzen getroffen werden',0
BUBBLE_17:
		dc.b 'Hier wird die X-Position des Fensters eingegeben. Falls die Y-Position 0 ist, wird beim �ffnen des Fensters die X-Position bestimmt.',0
BUBBLE_18:
		dc.b 'Hier wird die Y-Position des Fensters eingegeben. Falls die Y-Position 0 ist, wird beim �ffnen des Fensters die Y-Position bestimmt.',0
BUBBLE_19:
		dc.b 'Hier wird die Breite des Fensters eingegeben. Falls die Y-Position 0 ist, wird beim �ffnen des Fensters die Breite automatisch bestimmt.',0
BUBBLE_20:
		dc.b 'Hier wird die H�he des Fensters eingegeben. Falls die Y-Position 0 ist, wird beim �ffnen des Fensters die H�he automatisch bestimmt werden.',0
BUBBLE_21:
		dc.b 'Einstellung, ob das Fenster einen CLOSER hat.',0
BUBBLE_22:
		dc.b 'Einstellung, ob das Fenster einen MOVER hat.',0
BUBBLE_23:
		dc.b 'Einstellung, ob das Fenster eine Titelzeile hat - ggf. mu� die Titelzeile NAME unten angegeben werden.',0
BUBBLE_24:
		dc.b 'Einstellung, ob das Fenster eine Infozeile hat - ggf. mu� die Infozeile unten angegeben werden.',0
BUBBLE_25:
		dc.b 'Einstellung, ob das Fenster einen FULLER hat.',0
BUBBLE_26:
		dc.b 'Einstellung, ob das Fenster ICONIFY hat.',0
BUBBLE_27:
		dc.b 'Einstellung, ob das Fenster BACKDROP selbst �bernimmt (sollte eigentlich immer eingeschaltet sein).',0
BUBBLE_28:
		dc.b 'Einstellung, ob das Fenster einen Up-Scrollpfeil UPARROW hat.',0
BUBBLE_29:
		dc.b 'Einstellung, ob das Fenster einen Down-Scrollpfeil DNARROW hat.',0
BUBBLE_30:
		dc.b 'Einstellung, ob das Fenster einen Rechts-Scrollpfeil RTARROW hat.',0
BUBBLE_31:
		dc.b 'Einstellung, ob das Fenster einen Links-Scrollpfeil LFARROW hat.',0
BUBBLE_32:
		dc.b 'Einstellung, ob das Fenster einen SIZER hat.',0
BUBBLE_33:
		dc.b 'Einstellung, ob das Fenster einen vertikalen Scrollbalken VSLIDE hat.',0
BUBBLE_34:
		dc.b 'Einstellung, ob das Fenster einen horizontalen Scrollbalken HSLIDE hat.',0
BUBBLE_35:
		dc.b 'Hier sollte dem Fenster eine Create-Routine zugeordnet werden - ansonsten wird Awi_selfcreate verwendet. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_36:
		dc.b 'Hier kann dem Fenster eine Open-Routine zugeordnet werden - Default ist Awi_open. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_37:
		dc.b 'Hier kann dem Fenster eine Service-Routine zugeordnet werden - Default ist Awi_service. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_38:
		dc.b 'Hier kann dem Fenster eine Change-Routine zugeordnet werden - Default ist Awi_obchange. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_39:
		dc.b 'Hier kann dem Fenster eine Key-Routine zugeordnet werden - Default ist Awi_keys. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_40:
		dc.b 'Hier kann dem Fenster eine Init-Routine zugeordnet werden - Default ist Awi_init. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_41:
		dc.b 'Hier kann dem Fenster eine Redraw-Routine zugeordnet werden - Default ist Awi_redraw. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_42:
		dc.b 'Hier kann dem Fenster eine Topped-Routine zugeordnet werden - Default ist Awi_topped. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_43:
		dc.b 'Hier kann dem Fenster eine Closed-Routine zugeordnet werden - Default ist Awi_closed. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_44:
		dc.b 'Hier kann dem Fenster eine Fulled-Routine zugeordnet werden - Default ist Awi_fulled. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_45:
		dc.b 'Hier kann dem Fenster eine Arrowed-Routine zugeordnet werden - Default ist Awi_arrowed. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben werden.',0
BUBBLE_46:
		dc.b 'Hier kann dem Fenster eine HSlide-Routine zugeordnet werden - Default ist Awi_hslid. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben ',0
BUBBLE_47:
		dc.b 'Hier kann dem Fenster eine VSlide-Routine zugeordnet werden - Default ist Awi_vslid. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben ',0
BUBBLE_48:
		dc.b 'Hier kann dem Fenster eine Moved-Routine zugeordnet werden - Default ist Awi_moved. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben ',0
BUBBLE_49:
		dc.b 'Hier kann dem Fenster eine Sized-Routine zugeordnet werden - Default ist Awi_sized. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben ',0
BUBBLE_50:
		dc.b 'Hier kann dem Fenster eine Iconify-Routine zugeordnet werden - Default ist Awi_iconify. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben ',0
BUBBLE_51:
		dc.b 'Hier kann dem Fenster eine Uniconify-Routine zugeordnet werden - Default ist Awi_uniconify. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben ',0
BUBBLE_52:
		dc.b 'Hier kann dem Fenster eine GEMScript-Routine zugeordnet werden - Default ist Awi_gemscript. Der Name der Routine kann eingegeben werden oder per Drag&Drop aus der Referenz-Liste �bergeben ',0
BUBBLE_53:
		dc.b 'Einstellung, ob das Fenster eine HOTCLOSEBOX hat.',0
STGUIDE_01:
		dc.b 'Der Fenster-Editor',0
TEXT_002:
		dc.b $00
TEXT_003:
		dc.b 'OK',0
TEXT_004:
		dc.b 'Abbruch',0
TEXT_01:
		dc.b ' Info',0
TEXT_012:
		dc.b 'Y:',0
TEXT_013:
		dc.b 'X:',0
TEXT_014:
		dc.b 'W:',0
TEXT_015:
		dc.b 'H:',0
TEXT_02:
		dc.b $01,0
TEXT_03:
		dc.b 'Liste',0
TEXT_04:
		dc.b 'Bleibt',0
TEXT_05:
		dc.b 'Icon',0
TEXT_06:
		dc.b 'Geisticon',0
TEXT_07:
		dc.b 'Nimmt an ',0
TEXT_08:
		dc.b 'Hintergrd.',0
TEXT_09:
		dc.b 'Toolbar:',0
TEXT_10:
		dc.b 'Position:',0
TEXT_11:
		dc.b 'Attribute:',0
TEXT_12:
		dc.b 'Name:',0
TEXT_13:
		dc.b 'Menu:',0
TEXT_14:
		dc.b 'Open:',0
TEXT_15:
		dc.b ' Fenster-Editor ',0
TEXT_16:
		dc.b 'Raster:',0
TEXT_17:
		dc.b 'Routinen:',0
TEXT_18:
		dc.b 'Info:',0
TEXT_19:
		dc.b 'Objekte:',0
TEXT_20:
		dc.b 'Work:',0
TEXT_205:
		dc.b 'FENSTER',0
TEXT_21:
		dc.b 'Icon:',0
TEXT_22:
		dc.b 'User:',0
TEXT_23:
		dc.b 'Service:',0
TEXT_24:
		dc.b $02,0
TEXT_25:
		dc.b 'Create:',0
TEXT_26:
		dc.b 'Init:',0
TEXT_27:
		dc.b 'Keys:',0
TEXT_28:
		dc.b 'Change:',0
TEXT_29:
		dc.b 'Redraw:',0
TEXT_30:
		dc.b 'Topped:',0
TEXT_31:
		dc.b 'Closed:',0
TEXT_32:
		dc.b 'Fulled:',0
TEXT_33:
		dc.b 'Arrowed:',0
TEXT_34:
		dc.b 'H-Slide:',0
TEXT_35:
		dc.b 'V-Slide:',0
TEXT_36:
		dc.b 'Moved:',0
TEXT_37:
		dc.b 'Sized:',0
TEXT_38:
		dc.b 'Texte:',0
TEXT_39:
		dc.b 'Komponenten:',0
TEXT_40:
		dc.b $07
		dc.b $00
TEXT_41:
		dc.b $7f
		dc.b $00
TEXT_42:
		dc.b $1f
		dc.b $00
TEXT_43:
		dc.b 'Name',0
TEXT_44:
		dc.b 'Mover',0
TEXT_45:
		dc.b $05,0
TEXT_46:
		dc.b $06,0
TEXT_47:
		dc.b $03,0
TEXT_48:
		dc.b $04,0
TEXT_49:
		dc.b 'Iconify:',0
TEXT_50:
		dc.b '.HYP',0
TEXT_51:
		dc.b 'UnIcon.:',0
TEXT_52:
		dc.b 'GEMScr.:',0
TEXT_53:
		dc.b 'Titel:',0
TEXT_54:
		dc.b 'Datei:',0
TEXT_55:
		dc.b 'ST-Guide-Hilfe',0
TEXT_56:
		dc.b $fa,0
		.ENDC

		.IFEQ COUNTRY-COUNTRY_US
ERR_IC_DEL:
		.IFNE WITH_FIXES
		dc.b '[3][ Icon ',$27,'%s',$27,' | is no longer part of the | file.][    OK    ]',0
		.ELSE
		dc.b '[3][ Icon ',$27,'%s',$27,' | is nomore a part of this | file.][    OK    ]',0
		.ENDC
ERR_ME_DEL:
		.IFNE WITH_FIXES
		dc.b '[3][ Menu ',$27,'%s',$27,' | is removed from the | this file. ][    OK    ]',0
		.ELSE
		dc.b '[3][ Menu ',$27,'%s',$27,' | is nomore a part of | this file. ][    OK    ]',0
		.ENDC
ERR_OB_DEL:
		.IFNE WITH_FIXES
		dc.b '[3][ The object ',$27,'%s',$27,' | is removed from  | this file.   ][    OK    ]',0
		.ELSE
		dc.b '[3][ The object ',$27,'%s',$27,' | is nomore a part | of this file.][    OK    ]',0
		.ENDC
WARN_CREATE:
		dc.b '[1][ You didn',$27,'t specify the | create-routine. The default | ',$27,'Awi_selfcreate',$27,' will be | inserted.][   OK   ]',0
BUBBLE_01:
		dc.b 'Here you can edit the filename of the ST-Guide hypertext to use as online help.',0
BUBBLE_02:
		dc.b 'Here you edit the infoline of your window.',0
BUBBLE_03:
		dc.b 'The window is a list window.',0
BUBBLE_04:
		dc.b 'The window can',$27,'t be closed automatically by ACS.',0
BUBBLE_05:
		dc.b 'The window can be used in the background without topping it.',0
BUBBLE_06:
		dc.b 'The opened window owns a shadowed icon onto the desktop.',0
BUBBLE_07:
		dc.b 'The closed window owns a icon onto the desktop. ATTENTION: Closing the window with this flag cleared, deletes the window!',0
BUBBLE_08:
		dc.b 'The window accepts objects dragged onto the icon of it on the desktop.',0
BUBBLE_09:
		dc.b 'Here you edit the name of the window shown in the window title.',0
BUBBLE_10:
		dc.b 'Here you edit the help topic of this window. This topic is send to ST-Guide.',0
BUBBLE_11:
		.IFNE WITH_FIXES
		dc.b 'Here you can add a window menu to this window. The name of the menu can be edited or it can be dragged from the menu list..',0
		.ELSE
		dc.b 'Here you can add a window menu to this window. The name of the menu can be edited or it can be dragged out of th menu list.',0
		.ENDC
BUBBLE_12:
		dc.b 'Here you can add a toolbar to the window. The name of the object tree can be edited or it can be dragged out of the object list.',0
BUBBLE_13:
		dc.b 'Here you can add the work object to the window. You can edit the name of the object tree or drag it out of the object list.',0
BUBBLE_14:
		dc.b 'Here you can add an icon to the window. The name of the icon can be edited or it can be dragged out of the icon list.',0
BUBBLE_15:
		dc.b 'The user pointer of the window may be assigned here (see online help).',0
BUBBLE_16:
		dc.b 'The raster can be edited here.',0
BUBBLE_17:
		dc.b 'The position and the size of the window is edited here.',0
BUBBLE_18:
		dc.b 'The y position of the window is edited here. If the y position is equal zero, a positon will be assigned by ACS when opening the window.',0
BUBBLE_19:
		dc.b 'The width of the window is edited here. If the y position is equal zero, a positon will be assigned by ACS when opening the window.',0
BUBBLE_20:
		dc.b 'The height of the window is edited here. If the y position is equal to zero, the position will be assigned by ACS when opening the window.',0
BUBBLE_21:
		dc.b 'The window has a CLOSER.',0
BUBBLE_22:
		dc.b 'The window has a MOVER.',0
BUBBLE_23:
		dc.b 'The window has a TITLE.',0
BUBBLE_24:
		dc.b 'The window has an infoline - the infoline must be edited.',0
BUBBLE_25:
		dc.b 'The widow has a FULLER.',0
BUBBLE_26:
		dc.b 'The window has ICONIFY.',0
BUBBLE_27:
		dc.b 'The window has BACKDROP. This should always be switched on - otherwise MagiC backdrops the window.',0
BUBBLE_28:
		dc.b 'The window has an ARROW UP.',0
BUBBLE_29:
		dc.b 'The window has an ARROW DOWN.',0
BUBBLE_30:
		dc.b 'The window has an ARROW RIGHT.',0
BUBBLE_31:
		dc.b 'The window has an ARROW LEFT.',0
BUBBLE_32:
		dc.b 'The window has a SIZER.',0
BUBBLE_33:
		dc.b 'The window has a vertical slider VSLIDE.',0
BUBBLE_34:
		dc.b 'THe window has a horizontal slider HSLIDE.',0
BUBBLE_35:
		.IFNE WITH_FIXES
		dc.b 'You should add a create function to the window (default: Awi_selfcreate). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You should add a create function to the window (default: Awi_selfcreate). THe name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_36:
		.IFNE WITH_FIXES
		dc.b 'You can add an open function to the window (default: Awi_open). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add an open function to the window (default: Awi_open). THe name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_37:
		.IFNE WITH_FIXES
		dc.b 'You can add an service function to the window (default: Awi_service). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add an service function to the window (default: Awi_service). THe name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_38:
		.IFNE WITH_FIXES
		dc.b 'You can add a change function to the window (default: Awi_obchange). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a change function to the window (default: Awi_obchange). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_39:
		.IFNE WITH_FIXES
		dc.b 'You can add a key function to the window (default: Awi_keys). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a key function to the window (default: Awi_keys). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_40:
		.IFNE WITH_FIXES
		dc.b 'You can add an init function to the window (default: Awi_init). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add an init function to the window (default: Awi_init). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_41:
		.IFNE WITH_FIXES
		dc.b 'You can add a redraw function to the window (default: Awi_redraw). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a redraw function to the window (default: Awi_redraw). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_42:
		.IFNE WITH_FIXES
		dc.b 'You can add a topped function to the window (default: Awi_topped). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a topped function to the window (default: Awi_topped). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_43:
		.IFNE WITH_FIXES
		dc.b 'You can add a closed function to the window (default: Awi_closed). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a closed function to the window (default: Awi_closed). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_44:
		.IFNE WITH_FIXES
		dc.b 'You can add a fulled function to the window (default: Awi_fulled). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a fulled function to the window (default: Awi_fulled). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_45:
		.IFNE WITH_FIXES
		dc.b 'You can add an arrowed function to the window (default: Awi_arrowed). The name can be entered or the routine can be dragged from the reference list. ',0
		.ELSE
		dc.b 'You can add a arrowed function to the window (default: Awi_arrowed). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_46:
		.IFNE WITH_FIXES
		dc.b 'You can add a hslide function to the window (default: Awi_hslide). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a hslide function to the window (default: Awi_hslide). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_47:
		.IFNE WITH_FIXES
		dc.b 'You can add a vslide function to the window (default: Awi_vslide). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a vslide function to the window (default: Awi_vslide). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_48:
		.IFNE WITH_FIXES
		dc.b 'You can add a moved function to the window (default: Awi_moved). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a moved function to the window (default: Awi_moved). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_49:
		.IFNE WITH_FIXES
		dc.b 'You can add a sized function to the window (default: Awi_sized). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a sized function to the window (default: Awi_sized). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_50:
		.IFNE WITH_FIXES
		dc.b 'You can add an iconify function to the window (default: Awi_iconify). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add an iconify function to the window (default: Awi_iconify). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_51:
		.IFNE WITH_FIXES
		dc.b 'You can add an uniconify function to the window (default: Awi_uniconify). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add an uniconify function to the window (default: Awi_uniconify). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_52:
		.IFNE WITH_FIXES
		dc.b 'You can add a GEMScript function to the window (default: Awi_gemscript). The name can be entered or the routine can be dragged from the reference list.  ',0
		.ELSE
		dc.b 'You can add a GEMScript function to the window (default: Awi_gemscript). The name can be entered oder the routine can be dragged from the reference list.',0
		.ENDC
BUBBLE_53:
		dc.b 'The window has a HOTCLOSEBOX.',0
STGUIDE_01:
		dc.b 'Der Fenster-Editor',0
TEXT_002:
		dc.b $00
TEXT_003:
		dc.b 'OK',0
TEXT_004:
		dc.b 'Cancel',0
TEXT_01:
		dc.b ' Info',0
TEXT_012:
		dc.b 'Y:',0
TEXT_013:
		dc.b 'X:',0
TEXT_014:
		dc.b 'W:',0
TEXT_015:
		dc.b 'H:',0
TEXT_02:
		dc.b $01,0
TEXT_03:
		dc.b 'List ',0
TEXT_04:
		dc.b 'Stays ',0
TEXT_05:
		dc.b 'Icon',0
TEXT_06:
		dc.b 'Ghosticon',0
TEXT_07:
		dc.b 'Accepting',0
TEXT_08:
		dc.b 'Backgrd.  ',0
TEXT_09:
		dc.b 'Toolbar:',0
TEXT_10:
		dc.b 'Position:',0
TEXT_11:
		dc.b 'Attributes:',0
TEXT_12:
		dc.b 'Name:',0
TEXT_13:
		dc.b 'Menu:',0
TEXT_14:
		dc.b 'Open:',0
TEXT_15:
		dc.b ' Window-Editor ',0
TEXT_16:
		dc.b 'Grid:',0
TEXT_17:
		dc.b 'Routines:',0
TEXT_18:
		dc.b 'Info:',0
TEXT_19:
		dc.b 'Objects:',0
TEXT_20:
		dc.b 'Work:',0
TEXT_205:
		dc.b 'WINDOW',0
TEXT_21:
		dc.b 'Icon:',0
TEXT_22:
		dc.b 'User:',0
TEXT_23:
		dc.b 'Service:',0
TEXT_24:
		dc.b $02
		dc.b $00
TEXT_25:
		dc.b 'Create:',0
TEXT_26:
		dc.b 'Init:',0
TEXT_27:
		dc.b 'Keys:',0
TEXT_28:
		dc.b 'Change:',0
TEXT_29:
		dc.b 'Redraw:',0
TEXT_30:
		dc.b 'Topped:',0
TEXT_31:
		dc.b 'Closed:',0
TEXT_32:
		dc.b 'Fulled:',0
TEXT_33:
		dc.b 'Arrowed:',0
TEXT_34:
		dc.b 'H-Slide:',0
TEXT_35:
		dc.b 'V-Slide:',0
TEXT_36:
		dc.b 'Moved:',0
TEXT_37:
		dc.b 'Sized:',0
TEXT_38:
		dc.b 'Texts:',0
TEXT_39:
		dc.b 'Gadgets:',0
TEXT_40:
		dc.b $07,0
TEXT_41:
		dc.b $7f,0
TEXT_42:
		dc.b $1f,0
TEXT_43:
		dc.b 'Name',0
TEXT_44:
		dc.b 'Mover',0
TEXT_45:
		dc.b $05
		dc.b $00
TEXT_46:
		dc.b $06
		dc.b $00
TEXT_47:
		dc.b $03
		dc.b $00
TEXT_48:
		dc.b $04
		dc.b $00
TEXT_49:
		dc.b 'Iconify:',0
TEXT_50:
		dc.b '.HYP',0
TEXT_51:
		dc.b 'UnIcon.:',0
TEXT_52:
		dc.b 'GEMScr.:',0
TEXT_53:
		dc.b 'Title:',0
TEXT_54:
		dc.b 'File:',0
TEXT_55:
		dc.b 'ST-Guide-Help',0
TEXT_56:
		dc.b $fa,0
		.ENDC

		.even
DATAS_27:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $02f0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $7fff
		dc.w $ffff
		dc.w $fffe
		dc.w $5f00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $bf
		dc.w $7700
		dc.w $65b0
		dc.b $00
		dc.b $d7
		dc.w $6b00
		dc.w $54e0
		dc.b $00
		dc.b $ef
		dc.w $7700
		dc.w $4db0
		dc.b $00
		dc.b $d7
		dc.w $7f00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $bf
		dc.w $4edb
		dc.w $f800
		dc.b $00
		dc.b $ef
		dc.w $4e1b
		dc.w $f800
		dc.b $00
		dc.b $c7
		dc.w $4ed8
		dc.w $f800
		dc.b $00
		dc.b $ff
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $ff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $83
		dc.w $4a40
		dc.w $0c00
		dc.b $00
		dc.b $bf
		dc.w $4bcf
		dc.w $0c00
		dc.b $00
		dc.b $bf
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $ff
		dc.w $4fff
		dc.w $fc00
		dc.b $00
		dc.b $bf
		dc.w $47ff
		dc.w $fc00
		dc.b $00
		dc.b $ff
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $c7
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ef
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $5f01
		dc.b $00
		dc.b $80
		dc.w $2fbf
		dc.w $7701
		dc.w $7f80
		dc.w $3bc7
		dc.w $6701
		dc.w $7f80
		dc.w $39cf
		dc.w $7701
		dc.w $7f80
		dc.w $3bd7
		dc.w $7f01
		dc.w $7f80
		dc.w $3fff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $3fff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $7fff
		dc.w $ffff
		dc.w $fffe
		dc.w $5f00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $bf
		dc.w $7700
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $d7
		dc.w $6b00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ef
		dc.w $7700
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $d7
		dc.w $7f00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $bf
		dc.w $4edb
		dc.w $f800
		dc.b $00
		dc.b $ef
		dc.w $4e1b
		dc.w $f800
		dc.b $00
		dc.b $c7
		dc.w $4ed8
		dc.w $f800
		dc.b $00
		dc.b $ff
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $ff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $83
		dc.w $4a40
		dc.w $0c00
		dc.b $00
		dc.b $bf
		dc.w $4bcf
		dc.w $0c00
		dc.b $00
		dc.b $bf
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $ff
		dc.w $4fff
		dc.w $fc00
		dc.b $00
		dc.b $bf
		dc.w $47ff
		dc.w $fc00
		dc.b $00
		dc.b $ff
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $c7
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ef
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $5f01
		dc.b $00
		dc.b $80
		dc.w $2fbf
		dc.w $7701
		dc.w $7f80
		dc.w $3bc7
		dc.w $6701
		dc.w $7f80
		dc.w $39cf
		dc.w $7701
		dc.w $7f80
		dc.w $3bd7
		dc.w $7f01
		dc.w $7f80
		dc.w $3fff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $3fff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $7fff
		dc.w $ffff
		dc.w $fffe
		dc.w $5fff
		dc.w $ffff
		dc.w $ffbf
		dc.w $77ff
		dc.w $9a4f
		dc.w $ffd7
		dc.w $6bff
		dc.w $ab1f
		dc.w $ffef
		dc.w $77ff
		dc.w $b24f
		dc.w $ffd7
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $bf
		dc.w $4edb
		dc.w $f800
		dc.b $00
		dc.b $ef
		dc.w $4e1b
		dc.w $f800
		dc.b $00
		dc.b $c7
		dc.w $4ed8
		dc.w $f800
		dc.b $00
		dc.b $ff
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $ff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $83
		dc.w $4a40
		dc.w $0c00
		dc.b $00
		dc.b $bf
		dc.w $4bcf
		dc.w $0c00
		dc.b $00
		dc.b $bf
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $ff
		dc.w $4fff
		dc.w $fc00
		dc.b $00
		dc.b $bf
		dc.w $47ff
		dc.w $fc00
		dc.b $00
		dc.b $ff
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $c7
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ef
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $5f01
		dc.b $00
		dc.b $80
		dc.w $2fbf
		dc.w $7701
		dc.w $7f80
		dc.w $3bc7
		dc.w $6701
		dc.w $7f80
		dc.w $39cf
		dc.w $7701
		dc.w $7f80
		dc.w $3bd7
		dc.w $7f01
		dc.w $7f80
		dc.w $3fff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $3fff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $7fff
		dc.w $ffff
		dc.w $fffe
		dc.w $4100
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $83
		dc.w $4900
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ab
		dc.w $5500
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $93
		dc.w $4900
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ab
		dc.w $4100
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $83
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $83
		dc.w $4edb
		dc.w $f800
		dc.b $00
		dc.b $93
		dc.w $4e1b
		dc.w $f800
		dc.b $00
		dc.b $bb
		dc.w $4ed8
		dc.w $f800
		dc.b $00
		dc.b $83
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $83
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $83
		dc.w $4a40
		dc.w $0c00
		dc.b $00
		dc.b $83
		dc.w $4bcf
		dc.w $0c00
		dc.b $00
		dc.b $83
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $ff
		dc.w $4fff
		dc.w $fc00
		dc.b $00
		dc.b $83
		dc.w $47ff
		dc.w $fc00
		dc.b $00
		dc.b $83
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $bb
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $93
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $83
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $41ff
		dc.b $00
		dc.b $ff
		dc.w $e083
		dc.w $49ff
		dc.b $00
		dc.b $ff
		dc.w $e4bb
		dc.w $59ff
		dc.b $00
		dc.b $ff
		dc.w $e6b3
		dc.w $49ff
		dc.b $00
		dc.b $ff
		dc.w $e4ab
		dc.w $41ff
		dc.b $00
		dc.b $ff
		dc.w $e083
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $3fff
		dc.w $ffff
		dc.w $ffff
DATAS_28:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $7fff
		dc.w $ffff
		dc.w $fffe
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $3fff
		dc.w $ffff
		dc.w $ffff
A_3DBUTTON01:
		dc.l A_3Dbutton
		dc.w $2011
		dc.w $9178
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
A_3DBUTTON02:
		dc.l A_3Dbutton
		dc.w $21f1
		dc.w $01f8
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
A_3DBUTTON03:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0108
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
		dc.l BUBBLE_25
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON04:
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
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON05:
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
		dc.w $29f1
		dc.w $0108
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
		dc.l BUBBLE_26
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON07:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0188
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
		dc.l BUBBLE_27
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON08:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0191
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
		dc.l BUBBLE_23
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON09:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0191
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
		dc.l BUBBLE_22
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON10:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0101
		dc.l Auo_string
		dc.l TEXT_45
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_21
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON11:
		dc.l A_3Dbutton
		dc.w $09f1
		dc.w $0101
		dc.l Auo_string
		dc.l TEXT_01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_24
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON12:
		dc.l A_3Dbutton
		dc.w $2102
		dc.w $1178
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
A_3DBUTTON13:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0188
		dc.l Auo_string
		dc.l TEXT_02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_28
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON14:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0181
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
		dc.l BUBBLE_29
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON15:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0181
		dc.l Auo_string
		dc.l TEXT_46
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_32
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON16:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0181
		dc.l Auo_string
		dc.l TEXT_47
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_30
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON17:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0181
		dc.l Auo_string
		dc.l TEXT_48
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_31
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON18:
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
A_3DBUTTON19:
		dc.l A_3Dbutton
		dc.w $29d1
		dc.w $0101
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
		dc.l BUBBLE_33
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON20:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0121
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
A_3DBUTTON21:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0121
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
A_3DBUTTON22:
		dc.l A_3Dbutton
		dc.w $29d1
		dc.w $0101
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
		dc.l BUBBLE_34
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_3DBUTTON23:
		dc.l A_3Dbutton
		dc.w $2011
		dc.w $9178
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
A_3DBUTTON24:
		dc.l A_3Dbutton
		dc.w $29f1
		dc.w $0101
		dc.l Auo_string
		dc.l TEXT_56
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_53
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED01:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED02:
		dc.l A_boxed
		dc.w $907a
		dc.w $0512
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_17
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED03:
		dc.l A_boxed
		dc.w $9070
		dc.w $0512
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED04:
		dc.l A_boxed
		dc.w $9018
		dc.w $0812
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
A_BOXED05:
		dc.l A_boxed
		dc.w $9078
		dc.w $0512
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED06:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_09
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED07:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
A_BOXED08:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_11
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED09:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_12
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED10:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_13
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED11:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED12:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED13:
		dc.l A_boxed
		dc.w $9070
		dc.w $0512
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_20
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED14:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_37
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED15:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_35
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED16:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_36
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED17:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_40
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED18:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_39
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED19:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_38
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED20:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_41
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED21:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_42
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED22:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_43
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED23:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_44
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED24:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_45
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED25:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_46
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED26:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_47
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED27:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_48
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED28:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_49
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED29:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_50
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED30:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_51
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED31:
		dc.l A_boxed
		dc.w $9038
		dc.w $2012
		dc.l Auo_boxed
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_52
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
		dc.l TEXT_04
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
A_CHECKBOX02:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.l Auo_string
		dc.l TEXT_05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_07
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_CHECKBOX03:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.l Auo_string
		dc.l TEXT_06
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_06
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_CHECKBOX04:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.l Auo_string
		dc.l TEXT_07
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_08
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_CHECKBOX05:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.l Auo_string
		dc.l TEXT_08
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
A_CHECKBOX07:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.l Auo_string
		dc.l TEXT_03
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
A_INNERFRAME01:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
		dc.l Auo_string
		dc.l TEXT_10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_INNERFRAME02:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
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
A_INNERFRAME03:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
		dc.l Auo_string
		dc.l TEXT_16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_INNERFRAME04:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
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
A_INNERFRAME05:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
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
A_INNERFRAME06:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
		dc.l Auo_string
		dc.l TEXT_55
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_INNERFRAME07:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
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
A_INNERFRAME08:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
		dc.l Auo_string
		dc.l TEXT_11
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_SLIDER01:
		dc.l A_slider
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.l Auo_slider
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l BUBBLE_16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_C4_IC_WINDOW:
		dc.b $00
		dc.b $04
		dc.l DATAS_27+6
		dc.l DATAS_28
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_MSK_IC_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $7fff
		dc.w $ffff
		dc.w $fffe
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $3fff
		dc.w $ffff
		dc.w $ffff
_DAT_IC_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $7fff
		dc.w $ffff
		dc.w $fffe
		dc.w $4155
		dc.b $00
		dc.b $02
		dc.w $aa83
		dc.w $49aa
		dc.w $6401
		dc.w $55ab
		dc.w $5555
		dc.w $5492
		dc.w $aa93
		dc.w $49aa
		dc.w $4cf1
		dc.w $55ab
		dc.w $4155
		dc.b $00
		dc.b $02
		dc.w $aa83
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $93
		dc.w $4edb
		dc.w $f800
		dc.b $00
		dc.b $bb
		dc.w $4e1b
		dc.w $f800
		dc.b $00
		dc.b $93
		dc.w $4ed8
		dc.w $f800
		dc.b $00
		dc.b $93
		dc.w $4fff
		dc.w $f800
		dc.b $00
		dc.b $83
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $83
		dc.w $4a40
		dc.w $0c00
		dc.b $00
		dc.b $83
		dc.w $4bcf
		dc.w $0c00
		dc.b $00
		dc.b $83
		dc.w $4800
		dc.w $0c00
		dc.b $00
		dc.b $ff
		dc.w $4fff
		dc.w $fc00
		dc.b $00
		dc.b $83
		dc.w $47ff
		dc.w $fc00
		dc.b $00
		dc.b $93
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $93
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $bb
		dc.w $4000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $93
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $4155
		dc.b $00
		dc.b $aa
		dc.w $a083
		dc.w $51ab
		dc.b $00
		dc.b $d5
		dc.w $62bb
		dc.w $7d55
		dc.b $00
		dc.b $aa
		dc.w $afb3
		dc.w $51ab
		dc.b $00
		dc.b $d5
		dc.w $62ab
		dc.w $4155
		dc.b $00
		dc.b $aa
		dc.w $a083
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $3fff
		dc.w $ffff
		dc.w $ffff
IC_WINDOW:
		dc.l _MSK_IC_WINDOW
		dc.l _DAT_IC_WINDOW
		dc.l TEXT_205
		dc.w $1000
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $30
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $48
		dc.b $00
		dc.b $08
		dc.l _C4_IC_WINDOW
EDIT_WINDOW:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $5c
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $2e
		dc.b $00
		dc.b $31
_01_EDIT_WINDOW:
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $1d
		dc.b $00
		dc.b $03
_02_EDIT_WINDOW:
		dc.b $00
		dc.b $03
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_013
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_03_EDIT_WINDOW:
		dc.b $00
		dc.b $04
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $10
		dc.l A_BOXED02
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $01
_04_EDIT_WINDOW:
		dc.b $00
		dc.b $05
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_012
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_05_EDIT_WINDOW:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $10
		dc.l A_BOXED05
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $01
_06_EDIT_WINDOW:
		dc.b $00
		dc.b $07
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_014
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_07_EDIT_WINDOW:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $10
		dc.l A_BOXED03
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $01
_08_EDIT_WINDOW:
		dc.b $00
		dc.b $09
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_015
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_09_EDIT_WINDOW:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $10
		dc.l A_BOXED13
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $01
_10_EDIT_WINDOW:
		dc.b $00
		dc.b $0c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_10aEDIT_WINDOW:
		dc.l edwi_ok
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
_12_EDIT_WINDOW:
		dc.b $00
		dc.b $13
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME03
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $1d
		dc.b $00
		dc.b $03
_13_EDIT_WINDOW:
		dc.b $00
		dc.b $0e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_013
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_14_EDIT_WINDOW:
		dc.b $00
		dc.b $10
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_SLIDER01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $01
_14aEDIT_WINDOW:
		dc.l Aus_slider
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
_16_EDIT_WINDOW:
		dc.b $00
		dc.b $11
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_012
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_17_EDIT_WINDOW:
		dc.b $00
		dc.b $0c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_SLIDER01
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $01
_17aEDIT_WINDOW:
		dc.l Aus_slider
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
_19_EDIT_WINDOW:
		dc.b $00
		dc.b $15
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON04
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_19aEDIT_WINDOW:
		dc.l edwi_abort
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
_21_EDIT_WINDOW:
		dc.b $00
		dc.b $29
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $1d
		dc.b $00
		dc.b $08
_22_EDIT_WINDOW:
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $28
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON12
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $06
_23_EDIT_WINDOW:
		dc.b $00
		dc.b $18
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_24_EDIT_WINDOW:
		dc.b $00
		dc.b $19
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $30
		dc.l A_3DBUTTON11
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $01
_25_EDIT_WINDOW:
		dc.b $00
		dc.b $1a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $03
_26_EDIT_WINDOW:
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $1b
		dc.b $00
		dc.b $1b
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON21
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $13
		dc.b $00
		dc.b $01
_27_EDIT_WINDOW:
		dc.b $00
		dc.b $1a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON22
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_28_EDIT_WINDOW:
		dc.b $00
		dc.b $1d
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON17
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_29_EDIT_WINDOW:
		dc.b $00
		dc.b $1e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON16
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_30_EDIT_WINDOW:
		dc.b $00
		dc.b $1f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON15
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_31_EDIT_WINDOW:
		dc.b $00
		dc.b $20
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON14
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_32_EDIT_WINDOW:
		dc.b $00
		dc.b $22
		dc.b $00
		dc.b $21
		dc.b $00
		dc.b $21
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON20
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $02
_33_EDIT_WINDOW:
		dc.b $00
		dc.b $20
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_34_EDIT_WINDOW:
		dc.b $00
		dc.b $23
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON13
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_35_EDIT_WINDOW:
		dc.b $00
		dc.b $24
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON03
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_36_EDIT_WINDOW:
		dc.b $00
		dc.b $25
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON06
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_37_EDIT_WINDOW:
		dc.b $00
		dc.b $26
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON07
		dc.b $00
		dc.b $13
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_38_EDIT_WINDOW:
		dc.b $00
		dc.b $27
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON08
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_39_EDIT_WINDOW:
		dc.b $00
		dc.b $28
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON09
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_40_EDIT_WINDOW:
		dc.b $00
		dc.b $16
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON24
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_41_EDIT_WINDOW:
		dc.b $00
		dc.b $36
		dc.b $00
		dc.b $2a
		dc.b $00
		dc.b $34
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME08
		dc.b $00
		dc.b $1e
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $08
_42_EDIT_WINDOW:
		dc.b $00
		dc.b $2c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.l A_CHECKBOX07
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_42aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $884c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_44_EDIT_WINDOW:
		dc.b $00
		dc.b $2e
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
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_44aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8842
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_46_EDIT_WINDOW:
		dc.b $00
		dc.b $30
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.l A_CHECKBOX02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_46aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8849
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_48_EDIT_WINDOW:
		dc.b $00
		dc.b $32
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.l A_CHECKBOX03
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_48aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8847
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_50_EDIT_WINDOW:
		dc.b $00
		dc.b $34
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.l A_CHECKBOX04
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_50aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $884e
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_52_EDIT_WINDOW:
		dc.b $00
		dc.b $29
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.l A_CHECKBOX05
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_52aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
_54_EDIT_WINDOW:
		dc.b $00
		dc.b $3d
		dc.b $00
		dc.b $37
		dc.b $00
		dc.b $3c
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME05
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $2c
		dc.b $00
		dc.b $04
_55_EDIT_WINDOW:
		dc.b $00
		dc.b $38
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_12
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_56_EDIT_WINDOW:
		dc.b $00
		dc.b $3c
		dc.b $00
		dc.b $39
		dc.b $00
		dc.b $39
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON01
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $02
_57_EDIT_WINDOW:
		dc.b $00
		dc.b $38
		dc.b $00
		dc.b $3a
		dc.b $00
		dc.b $3b
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $0101
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $02
_58_EDIT_WINDOW:
		dc.b $00
		dc.b $3b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $00
		dc.l A_BOXED06
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_59_EDIT_WINDOW:
		dc.b $00
		dc.b $39
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $00
		dc.l A_BOXED07
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_60_EDIT_WINDOW:
		dc.b $00
		dc.b $36
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_61_EDIT_WINDOW:
		dc.b $00
		dc.b $45
		dc.b $00
		dc.b $3e
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME06
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $12
		dc.b $00
		dc.b $2c
		dc.b $00
		dc.b $04
_62_EDIT_WINDOW:
		dc.b $00
		dc.b $3f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_53
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_63_EDIT_WINDOW:
		dc.b $00
		dc.b $40
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_54
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_64_EDIT_WINDOW:
		dc.b $00
		dc.b $3d
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON23
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $02
_65_EDIT_WINDOW:
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $42
		dc.b $00
		dc.b $44
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $1101
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $02
_66_EDIT_WINDOW:
		dc.b $00
		dc.b $43
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $00
		dc.l A_BOXED01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_67_EDIT_WINDOW:
		dc.b $00
		dc.b $44
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $00
		dc.l A_BOXED04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_68_EDIT_WINDOW:
		dc.b $00
		dc.b $41
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_50
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $01
_69_EDIT_WINDOW:
		dc.b $00
		dc.b $5c
		dc.b $00
		dc.b $46
		dc.b $00
		dc.b $5a
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME04
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $2c
		dc.b $00
		dc.b $07
_70_EDIT_WINDOW:
		dc.b $00
		dc.b $48
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_13
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_70aEDIT_WINDOW:
		dc.l edwi_tme
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
_72_EDIT_WINDOW:
		dc.b $00
		dc.b $54
		dc.b $00
		dc.b $49
		dc.b $00
		dc.b $49
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON01
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $05
_73_EDIT_WINDOW:
		dc.b $00
		dc.b $48
		dc.b $00
		dc.b $4a
		dc.b $00
		dc.b $52
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $0101
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $05
_74_EDIT_WINDOW:
		dc.b $00
		dc.b $4c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $10
		dc.l A_BOXED08
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_74aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_76_EDIT_WINDOW:
		dc.b $00
		dc.b $4e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED09
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_76aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_78_EDIT_WINDOW:
		dc.b $00
		dc.b $50
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_78aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_80_EDIT_WINDOW:
		dc.b $00
		dc.b $52
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED11
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_80aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_82_EDIT_WINDOW:
		dc.b $00
		dc.b $49
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED12
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_82aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_84_EDIT_WINDOW:
		dc.b $00
		dc.b $56
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_09
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_84aEDIT_WINDOW:
		dc.l edwi_two
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
_86_EDIT_WINDOW:
		dc.b $00
		dc.b $58
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_20
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_86aEDIT_WINDOW:
		dc.l edwi_two
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
_88_EDIT_WINDOW:
		dc.b $00
		dc.b $5a
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_21
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_88aEDIT_WINDOW:
		dc.l edwi_tic
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
_90_EDIT_WINDOW:
		dc.b $00
		dc.b $45
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_22
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_90aEDIT_WINDOW:
		dc.l edwi_ref
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
_92_EDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $5d
		dc.b $00
		dc.b $a5
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME07
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $1d
		dc.b $00
		dc.b $2c
		dc.b $00
		dc.b $14
_93_EDIT_WINDOW:
		dc.b $00
		dc.b $5f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_14
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_93aEDIT_WINDOW:
		dc.l edwi_ref
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
_95_EDIT_WINDOW:
		dc.b $00
		dc.b $85
		dc.b $00
		dc.b $60
		dc.b $00
		dc.b $60
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON01
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $12
_96_EDIT_WINDOW:
		dc.b $00
		dc.b $5f
		dc.b $00
		dc.b $61
		dc.b $00
		dc.b $83
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $ff
		dc.w $0101
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $12
_97_EDIT_WINDOW:
		dc.b $00
		dc.b $63
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED16
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_97aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_99_EDIT_WINDOW:
		dc.b $00
		dc.b $65
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_99aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_101_EDIT_WINDOW:
		dc.b $00
		dc.b $67
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_101aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_103_EDIT_WINDOW:
		dc.b $00
		dc.b $69
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED17
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_103aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_105_EDIT_WINDOW:
		dc.b $00
		dc.b $6b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_105aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_107_EDIT_WINDOW:
		dc.b $00
		dc.b $6d
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED19
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_107aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_109_EDIT_WINDOW:
		dc.b $00
		dc.b $6f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED20
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_109aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_111_EDIT_WINDOW:
		dc.b $00
		dc.b $71
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED21
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_111aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_113_EDIT_WINDOW:
		dc.b $00
		dc.b $73
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED22
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_113aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_115_EDIT_WINDOW:
		dc.b $00
		dc.b $75
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED23
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_115aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_117_EDIT_WINDOW:
		dc.b $00
		dc.b $77
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED24
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_117aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_119_EDIT_WINDOW:
		dc.b $00
		dc.b $79
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED25
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_119aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_121_EDIT_WINDOW:
		dc.b $00
		dc.b $7b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED26
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_121aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_123_EDIT_WINDOW:
		dc.b $00
		dc.b $7d
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED27
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_123aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_125_EDIT_WINDOW:
		dc.b $00
		dc.b $7f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED28
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_125aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_127_EDIT_WINDOW:
		dc.b $00
		dc.b $81
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED29
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_127aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_129_EDIT_WINDOW:
		dc.b $00
		dc.b $83
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED30
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_129aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_131_EDIT_WINDOW:
		dc.b $00
		dc.b $60
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $1008
		dc.b $00
		dc.b $00
		dc.l A_BOXED31
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_131aEDIT_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edwi_acc
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
_133_EDIT_WINDOW:
		dc.b $00
		dc.b $87
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_25
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_133aEDIT_WINDOW:
		dc.l edwi_ref
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
_135_EDIT_WINDOW:
		dc.b $00
		dc.b $89
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_23
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_135aEDIT_WINDOW:
		dc.l edwi_ref
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
_137_EDIT_WINDOW:
		dc.b $00
		dc.b $8b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_26
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_137aEDIT_WINDOW:
		dc.l edwi_ref
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
_139_EDIT_WINDOW:
		dc.b $00
		dc.b $8d
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_27
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_139aEDIT_WINDOW:
		dc.l edwi_ref
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
_141_EDIT_WINDOW:
		dc.b $00
		dc.b $8f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_28
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_141aEDIT_WINDOW:
		dc.l edwi_ref
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
_143_EDIT_WINDOW:
		dc.b $00
		dc.b $91
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_29
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_143aEDIT_WINDOW:
		dc.l edwi_ref
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
_145_EDIT_WINDOW:
		dc.b $00
		dc.b $93
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_30
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_145aEDIT_WINDOW:
		dc.l edwi_ref
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
_147_EDIT_WINDOW:
		dc.b $00
		dc.b $95
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_31
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_147aEDIT_WINDOW:
		dc.l edwi_ref
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
_149_EDIT_WINDOW:
		dc.b $00
		dc.b $97
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_32
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_149aEDIT_WINDOW:
		dc.l edwi_ref
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
_151_EDIT_WINDOW:
		dc.b $00
		dc.b $99
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_33
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_151aEDIT_WINDOW:
		dc.l edwi_ref
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
_153_EDIT_WINDOW:
		dc.b $00
		dc.b $9b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_34
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_153aEDIT_WINDOW:
		dc.l edwi_ref
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
_155_EDIT_WINDOW:
		dc.b $00
		dc.b $9d
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_35
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_155aEDIT_WINDOW:
		dc.l edwi_ref
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
_157_EDIT_WINDOW:
		dc.b $00
		dc.b $9f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_36
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_157aEDIT_WINDOW:
		dc.l edwi_ref
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
_159_EDIT_WINDOW:
		dc.b $00
		dc.b $a1
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_37
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_159aEDIT_WINDOW:
		dc.l edwi_ref
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
_161_EDIT_WINDOW:
		dc.b $00
		dc.b $a3
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_49
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_161aEDIT_WINDOW:
		dc.l edwi_ref
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
_163_EDIT_WINDOW:
		dc.b $00
		dc.b $a5
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_51
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_163aEDIT_WINDOW:
		dc.l edwi_ref
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
_165_EDIT_WINDOW:
		dc.b $00
		dc.b $5c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l TEXT_52
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $12
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_165aEDIT_WINDOW:
		dc.l edwi_ref
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
		.globl WI_WINDOW
WI_WINDOW:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l wi_service
		dc.l wi_make
		dc.l Awi_open
		dc.l Awi_init
		dc.l EDIT_WINDOW
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $61ff
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
		dc.w $f8f8
		dc.l TEXT_15
		dc.l TEXT_002
		dc.w $2710
		dc.w $0100
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.l IC_WINDOW
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
		dc.l STGUIDE_01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xab5ac:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b 'STGUIDE_01',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xab5ee:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b 'HELPFILE_01',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xab630:
		dc.b '%d'
xab632:
		dc.b $00
	.even
