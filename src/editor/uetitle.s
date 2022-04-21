
edti_pos:
		movem.l    a2-a4,-(a7)
		subq.w     #8,a7
		lea.l      POP_HORPOSSEL,a0
		jsr        Aob_create
		movea.l    a0,a2
		move.l     a2,d0
		beq        edti_pos_1
		lea.l      ACSblk,a3
		moveq.l    #25,d0
		movea.l    (a3),a0
		movea.l    600(a0),a1
		movea.l    20(a1),a1
		lea.l      (a7),a0
		jsr        Aob_offset
		moveq.l    #1,d0
		movea.l    (a3),a0
		movea.l    600(a0),a1
		add.w      52(a1),d0
		add.w      d0,(a7)
		moveq.l    #1,d1
		add.w      54(a1),d1
		add.w      d1,2(a7)
		moveq.l    #3,d2
		movea.l    604(a0),a1
		movea.l    60(a1),a0
		and.w      6(a0),d2
		tst.w      d2
		beq.s      edti_pos_2
		subq.w     #1,d2
		beq.s      edti_pos_3
		subq.w     #1,d2
		beq.s      edti_pos_4
		bra.s      edti_pos_5
edti_pos_2:
		ori.w      #$0004,34(a2)
		bra.s      edti_pos_5
edti_pos_3:
		ori.w      #$0004,58(a2)
		bra.s      edti_pos_5
edti_pos_4:
		ori.w      #$0004,82(a2)
edti_pos_5:
		move.w     2(a7),d1
		move.w     (a7),d0
		movea.l    a2,a1
		movea.l    (a3),a0
		movea.l    600(a0),a0
		jsr        Ame_popup
		tst.w      d0
		ble        edti_pos_6
		movea.l    (a3),a0
		movea.l    604(a0),a1
		movea.l    60(a1),a4
		addq.w     #4,a4
		andi.l     #$FFFFFFFC,(a4)
		move.w     d0,d1
		subq.w     #1,d1
		beq.s      edti_pos_7
		subq.w     #1,d1
		beq.s      edti_pos_8
		subq.w     #1,d1
		beq.s      edti_pos_9
		bra.s      edti_pos_10
edti_pos_7:
		lea.l      HPOS_TEXT1,a1
		moveq.l    #27,d0
		movea.l    (a3),a0
		movea.l    604(a0),a0
		jsr        Aob_puttext
		bra.s      edti_pos_10
edti_pos_8:
		ori.l      #$00000001,(a4)
		lea.l      HPOS_TEXT2,a1
		moveq.l    #27,d0
		movea.l    (a3),a0
		movea.l    604(a0),a0
		jsr        Aob_puttext
		bra.s      edti_pos_10
edti_pos_9:
		ori.l      #$00000002,(a4)
		lea.l      HPOS_TEXT3,a1
		moveq.l    #27,d0
		movea.l    (a3),a0
		movea.l    604(a0),a0
		jsr        Aob_puttext
edti_pos_10:
		moveq.l    #-1,d1
		moveq.l    #27,d0
		movea.l    (a3),a0
		movea.l    600(a0),a0
		movea.l    (a3),a1
		movea.l    600(a1),a4
		movea.l    102(a4),a1
		jsr        (a1)
		moveq.l    #-1,d1
		moveq.l    #1,d0
		movea.l    (a3),a0
		movea.l    600(a0),a0
		movea.l    (a3),a1
		movea.l    600(a1),a4
		movea.l    102(a4),a1
		jsr        (a1)
edti_pos_6:
		movea.l    a2,a0
		jsr        Aob_delete
edti_pos_1:
		addq.w     #8,a7
		movem.l    (a7)+,a2-a4
		rts

edti_replace:
		movea.l    ACSblk,a0
		movea.l    604(a0),a1
		movea.l    60(a1),a0
		ori.l      #$00000008,4(a0)
		moveq.l    #2,d0
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        Awi_obredraw
		rts

edti_size:
		movem.l    a2-a4,-(a7)
		subq.w     #8,a7
		lea.l      POP_SIZESEL,a0
		jsr        Aob_create
		movea.l    a0,a2
		move.l     a2,d0
		beq        edti_size_1
		lea.l      ACSblk,a3
		moveq.l    #11,d0
		movea.l    (a3),a0
		movea.l    600(a0),a1
		movea.l    20(a1),a1
		lea.l      (a7),a0
		jsr        Aob_offset
		moveq.l    #1,d0
		movea.l    (a3),a0
		movea.l    600(a0),a1
		add.w      52(a1),d0
		add.w      d0,(a7)
		moveq.l    #1,d1
		add.w      54(a1),d1
		add.w      d1,2(a7)
		movea.l    604(a0),a1
		movea.l    60(a1),a0
		move.l     4(a0),d0
		asr.l      #2,d0
		and.w      #$0001,d0
		ext.l      d0
		move.l     d0,d2
		add.l      d2,d2
		add.l      d0,d2
		lsl.l      #3,d2
		ori.w      #$0004,34(a2,d2.l)
		move.w     2(a7),d1
		move.w     (a7),d0
		movea.l    a2,a1
		movea.l    (a3),a0
		movea.l    600(a0),a0
		jsr        Ame_popup
		tst.w      d0
		ble.s      edti_size_2
		movea.l    (a3),a0
		movea.l    604(a0),a1
		movea.l    60(a1),a4
		addq.w     #4,a4
		cmp.w      #$0001,d0
		bne.s      edti_size_3
		andi.l     #$FFFFFFFB,(a4)
		lea.l      SIZE_TEXT0,a1
		moveq.l    #13,d0
		movea.l    (a3),a0
		movea.l    604(a0),a0
		jsr        Aob_puttext
		bra.s      edti_size_4
edti_size_3:
		ori.l      #$00000004,(a4)
		lea.l      SIZE_TEXT1,a1
		moveq.l    #13,d0
		movea.l    (a3),a0
		movea.l    604(a0),a0
		jsr        Aob_puttext
edti_size_4:
		moveq.l    #-1,d1
		moveq.l    #13,d0
		movea.l    (a3),a0
		movea.l    600(a0),a0
		movea.l    (a3),a1
		movea.l    600(a1),a4
		movea.l    102(a4),a1
		jsr        (a1)
		moveq.l    #-1,d1
		moveq.l    #1,d0
		movea.l    (a3),a0
		movea.l    600(a0),a0
		movea.l    (a3),a1
		movea.l    600(a1),a4
		movea.l    102(a4),a1
		jsr        (a1)
edti_size_2:
		movea.l    a2,a0
		jsr        Aob_delete
edti_size_1:
		addq.w     #8,a7
		movem.l    (a7)+,a2-a4
		rts

edti_trans:
		movea.l    ACSblk,a0
		movea.l    604(a0),a1
		movea.l    60(a1),a0
		andi.l     #$FFFFFFF7,4(a0)
		moveq.l    #2,d0
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        Awi_obredraw
		rts

init_title:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		lea.l      data,a1
		move.w     #$2329,d0
		movea.l    4(a2),a3
		jsr        (a3)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

minsize:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a1,a3
		movea.l    12(a0),a2
		movea.l    a2,a0
		jsr        strlen
		movea.l    ACSblk,a0
		muls.w     18(a0),d0
		move.w     d0,(a3)
		movea.l    ACSblk,a0
		movea.l    12(a7),a1
		move.w     20(a0),(a1)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

object_tree:
		movem.l    a2-a6,-(a7)
		subq.w     #4,a7
		movea.l    a0,a5
		movea.l    a1,a4
		lea.l      ED_TITLE,a0
		jsr        Aob_create
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      object_tree_1
		suba.l     a0,a0
		bra        object_tree_2
object_tree_1:
		lea.l      48(a2),a3
		moveq.l    #22,d0
		and.w      8(a4),d0
		or.w       d0,8(a3)
		moveq.l    #63,d0
		and.w      10(a4),d0
		or.w       d0,10(a3)
		lea.l      ACSblk,a4
		moveq.l    #14,d0
		movea.l    a2,a1
		movea.l    (a4),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		moveq.l    #2,d0
		movea.l    a2,a1
		movea.l    (a4),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		moveq.l    #23,d0
		movea.l    a2,a1
		movea.l    (a4),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		moveq.l    #24,d0
		movea.l    a2,a1
		movea.l    (a4),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		movea.l    12(a3),a4
		pea.l      (a7)
		lea.l      xb8510,a1
		movea.l    (a5),a0
		jsr        sscanf
		addq.w     #4,a7
		move.l     (a7),4(a4)
		cmpi.w     #$0002,8(a5)
		bne.s      object_tree_3
		movea.l    10(a5),a1
		moveq.l    #14,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		bra.s      object_tree_4
object_tree_3:
		lea.l      xb84ff,a1
		moveq.l    #4,d0
		movea.l    a3,a0
		movea.l    8(a4),a6
		jsr        (a6)
		lea.l      xb84ff,a1
		moveq.l    #14,d0
		movea.l    a2,a0
		jsr        Aob_puttext
object_tree_4:
		moveq.l    #4,d0
		and.l      (a7),d0
		beq.s      object_tree_5
		lea.l      SIZE_TEXT1,a1
		movea.l    a2,a0
		moveq.l    #13,d0
		jsr        Aob_puttext
		bra.s      object_tree_6
object_tree_5:
		lea.l      SIZE_TEXT0,a1
		moveq.l    #13,d0
		movea.l    a2,a0
		jsr        Aob_puttext
object_tree_6:
		moveq.l    #3,d0
		and.w      2(a7),d0
		tst.w      d0
		beq.s      object_tree_7
		subq.w     #1,d0
		beq.s      object_tree_8
		subq.w     #1,d0
		beq.s      object_tree_9
		bra.s      object_tree_10
object_tree_7:
		lea.l      HPOS_TEXT1,a1
		moveq.l    #27,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		bra.s      object_tree_10
object_tree_8:
		lea.l      HPOS_TEXT2,a1
		moveq.l    #27,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		bra.s      object_tree_10
object_tree_9:
		lea.l      HPOS_TEXT3,a1
		moveq.l    #27,d0
		movea.l    a2,a0
		jsr        Aob_puttext
object_tree_10:
		movea.l    564(a2),a0
		move.l     12(a0),24(a4)
		movea.l    38(a5),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      object_tree_11
		lea.l      xb84ff,a1
		moveq.l    #23,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		bra.s      object_tree_12
object_tree_11:
		movea.l    38(a5),a1
		moveq.l    #23,d0
		movea.l    a2,a0
		jsr        Aob_puttext
object_tree_12:
		movea.l    588(a2),a0
		move.l     12(a0),28(a4)
		movea.l    42(a5),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      object_tree_13
		lea.l      xb84ff,a1
		moveq.l    #24,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		bra.s      object_tree_14
object_tree_13:
		movea.l    42(a5),a1
		moveq.l    #24,d0
		movea.l    a2,a0
		jsr        Aob_puttext
object_tree_14:
		movea.l    a2,a0
object_tree_2:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a6
		rts

test_it:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		move.l     #A_title,(a1)
		pea.l      4(a2)
		lea.l      xb8510,a1
		movea.l    (a0),a0
		jsr        sscanf
		addq.w     #4,a7
		move.l     #Auo_string,8(a2)
		cmpi.w     #$0002,8(a3)
		bne.s      test_it_1
		move.l     10(a3),12(a2)
		bra.s      test_it_2
test_it_1:
		clr.l      12(a2)
test_it_2:
		moveq.l    #0,d0
		move.l     d0,20(a2)
		move.l     d0,16(a2)
		movea.l    38(a3),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      test_it_3
		suba.l     a0,a0
		bra.s      test_it_4
test_it_3:
		movea.l    38(a3),a0
test_it_4:
		move.l     a0,24(a2)
		movea.l    42(a3),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      test_it_5
		suba.l     a0,a0
		bra.s      test_it_6
test_it_5:
		movea.l    42(a3),a0
test_it_6:
		move.l     a0,28(a2)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

abort:
		movea.l    ACSblk,a0
		movea.l    600(a0),a1
		movea.l    20(a1),a0
		movea.l    60(a0),a0
		clr.l      24(a0)
		clr.l      28(a0)
		movea.l    data+64,a0
		movea.l    (a0),a0
		jsr        (a0)
		rts

ok:
		movem.l    d3/a2-a4,-(a7)
		lea.l      -50(a7),a7
		movea.l    ACSblk,a0
		movea.l    600(a0),a1
		movea.l    20(a1),a2
		movea.l    60(a2),a4
		lea.l      parm,a3
		move.l     4(a4),-(a7)
		lea.l      xb8510,a1
		movea.l    a3,a0
		jsr        sprintf
		addq.w     #4,a7
		lea.l      4(a7),a4
		move.l     a3,(a4)
		move.l     #xb8505,4(a4)
		lea.l      (a7),a1
		moveq.l    #3,d0
		lea.l      336(a2),a0
		jsr        Auo_boxed
		movea.l    (a7),a0
		jsr        strlen
		addq.l     #3,d0
		movea.l    ACSblk,a0
		move.w     18(a0),d1
		ext.l      d1
		jsr        _ulmul
		move.l     d0,d3
		move.w     #$0002,8(a4)
		move.l     (a7),10(a4)
		clr.l      14(a4)
		clr.w      d0
		move.w     d0,28(a4)
		move.w     d0,18(a4)
		moveq.l    #0,d1
		move.l     d1,30(a4)
		move.l     d1,20(a4)
		moveq.l    #0,d0
		move.l     d0,34(a4)
		move.l     d0,24(a4)
		lea.l      38(a4),a1
		lea.l      552(a2),a0
		moveq.l    #3,d0
		jsr        Auo_boxed
		movea.l    38(a4),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      ok_1
		clr.l      38(a4)
ok_1:
		lea.l      42(a4),a1
		moveq.l    #3,d0
		lea.l      576(a2),a0
		jsr        Auo_boxed
		movea.l    42(a4),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      ok_2
		clr.l      42(a4)
ok_2:
		movea.l    ACSblk,a0
		move.w     20(a0),d1
		move.w     d3,d0
		movea.l    a4,a0
		movea.l    data+64,a1
		movea.l    4(a1),a1
		jsr        (a1)
		bsr        abort
		lea.l      50(a7),a7
		movem.l    (a7)+,d3/a2-a4
		rts

	.data

BUBBLE_01:
		dc.b 'Die �nderungen werden �bernommen und �berschreiben die alten Einstellungen.',0
BUBBLE_02:
		dc.b 'Die �nderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
		dc.b 'Hier kann der String, der f�r BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_05:
		dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
TEXT_005:
		dc.b $4f
		dc.w $4b00
TEXT_006:
		dc.b 'TEXT',0
TEXT_009:
		dc.b 'Abbruch',0
TEXT_04:
		dc.b 'Position:',0
TEXT_05:
		dc.b 'Sonstiges',0
TEXT_06:
		dc.b 'BubbleGEM-Text',0
TEXT_07:
		dc.b 'Context-Popup',0
TEXT_12:
		dc.b 'Gr��e:',0
TEXT_13:
		dc.b 'Modus:',0
help_title:
		dc.b 'Der Title-Editor',0
title:
		dc.b 'TITLE -',0
		dc.b $00
A_3DBUTTON03:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_005
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
A_3DBUTTON04:
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
A_3DBUTTON05:
		dc.l A_3Dbutton
		dc.w $21f1
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
A_3DBUTTON06:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_009
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
A_3DBUTTON27:
		dc.l A_3Dbutton
		dc.w $09f1
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
A_BOXED02:
		dc.l A_boxed
		dc.w $9000
		dc.w $ff12
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
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED03:
		dc.l A_boxed
		dc.w $9038
		dc.w $ff12
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
		dc.l BUBBLE_03
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED04:
		dc.l A_boxed
		dc.w $9038
		dc.w $ff12
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
		dc.l BUBBLE_05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_INNERFRAME03:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
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
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_TITLE01:
		dc.l A_title
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Auo_string
		dc.l TEXT_006
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
ED_TITLE:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $2c
		dc.b $00
		dc.b $0d
_01_ED_TITLE:
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $03
_02_ED_TITLE:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_TITLE01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_03_ED_TITLE:
		dc.b $00
		dc.b $05
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON03
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_03aED_TITLE:
		dc.l ok
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
_05_ED_TITLE:
		dc.b $00
		dc.b $07
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON06
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_05aED_TITLE:
		dc.l abort
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
_07_ED_TITLE:
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_04
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_08_ED_TITLE:
		dc.b $00
		dc.b $07
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
_09_ED_TITLE:
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_12
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_10_ED_TITLE:
		dc.b $00
		dc.b $09
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
_11_ED_TITLE:
		dc.b $00
		dc.b $0e
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
		dc.b $23
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_11aED_TITLE:
		dc.l edti_size
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
_13_ED_TITLE:
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
		dc.l A_3DBUTTON04
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_14_ED_TITLE:
		dc.b $00
		dc.b $0f
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
		dc.b $02
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
_15_ED_TITLE:
		dc.b $00
		dc.b $10
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_13
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_16_ED_TITLE:
		dc.b $00
		dc.b $12
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1b
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.w $43ff
		dc.w $1121
		dc.b $00
		dc.b $23
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $01
_16aED_TITLE:
		dc.l edti_trans
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
_18_ED_TITLE:
		dc.b $00
		dc.b $14
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1b
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.w $43ff
		dc.w $11a1
		dc.b $00
		dc.b $27
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $01
_18aED_TITLE:
		dc.l edti_replace
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
_20_ED_TITLE:
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME03
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $2a
		dc.b $00
		dc.b $05
_21_ED_TITLE:
		dc.b $00
		dc.b $16
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_06
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $01
_22_ED_TITLE:
		dc.b $00
		dc.b $17
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_07
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_23_ED_TITLE:
		dc.b $00
		dc.b $18
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
		dc.b $10
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $01
_24_ED_TITLE:
		dc.b $00
		dc.b $14
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $10
		dc.l A_BOXED04
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $01
_25_ED_TITLE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $1b
		dc.b $00
		dc.b $1b
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
		dc.b $10
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
_25aED_TITLE:
		dc.l edti_pos
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8850
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_27_ED_TITLE:
		dc.b $00
		dc.b $19
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON27
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
utitle:
		dc.l A_title
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l Auo_string
		dc.l xb84fa
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
visual:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l utitle
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
logical:
		dc.w $ffff
		dc.b $ff
		dc.b $ff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l utitle
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
aud:
		dc.l xb8500
		dc.l xb8505
		dc.b $00
		dc.b $02
		dc.l xb84fa
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
data:
		dc.b 'A_title',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l object_tree
		dc.l test_it
		dc.l ok
		dc.l Aob_delete
		dc.l visual
		dc.l logical
		dc.l aud
		dc.l minsize
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l title
		dc.l help_title
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xb84fa:
		dc.b 'TITEL'
xb84ff:
		dc.b 0
xb8500:
		dc.b '0x0L',0
xb8505:
		dc.b 'Auo_string',0
xb8510:
		dc.b '0x%lxL',0
	.even


	.bss

parm: ds.b 32
