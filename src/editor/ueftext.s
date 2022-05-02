		.include "country.inc"
		
		.text

		.globl init_ftext
init_ftext:
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
		movea.l    ACSblk,a0
		move.w     18(a0),(a1)
		movea.l    ACSblk,a0
		movea.l    4(a7),a1
		move.w     20(a0),(a1)
		rts

object_tree:
		movem.l    d3-d4/a2-a5,-(a7)
		lea.l      -328(a7),a7
		move.l     a0,324(a7)
		movea.l    a1,a2
		lea.l      xb7dda,a0
		lea.l      18(a7),a1
		moveq.l    #49,d0
object_tree_1:
		move.b     (a0)+,(a1)+
		dbf        d0,object_tree_1
		lea.l      ED_FTEXT,a0
		jsr        Aob_create
		movea.l    a0,a3
		move.l     a3,d0
		bne.s      object_tree_2
		suba.l     a0,a0
		bra        object_tree_3
object_tree_2:
		lea.l      72(a3),a4
		moveq.l    #22,d0
		and.w      8(a2),d0
		or.w       d0,8(a4)
		moveq.l    #63,d0
		and.w      10(a2),d0
		or.w       d0,10(a4)
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		move.l     600(a0),(a7)
		move.l     a4,4(a7)
		move.w     #$0003,8(a7)
		lea.l      (a7),a1
		moveq.l    #9,d0
		movea.l    a4,a0
		jsr        Auo_ftext
		moveq.l    #10,d0
		movea.l    a3,a1
		movea.l    (a2),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		moveq.l    #11,d0
		movea.l    a3,a1
		movea.l    (a2),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		moveq.l    #43,d0
		movea.l    a3,a1
		movea.l    (a2),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		moveq.l    #45,d0
		movea.l    a3,a1
		movea.l    (a2),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		move.l     12(a4),10(a7)
		lea.l      14(a7),a5
		pea.l      (a5)
		lea.l      xb7e3e,a1
		movea.l    328(a7),a0
		movea.l    (a0),a0
		jsr        sscanf
		addq.w     #4,a7
		move.l     (a5),d3
		moveq.l    #16,d0
		asr.l      d0,d3
		clr.w      d4
		bra.s      object_tree_4
object_tree_6:
		lea.l      18(a7),a0
		move.w     d4,d1
		movea.l    (a2),a1
		move.w     16(a1),d0
		jsr        vqt_name
		cmp.w      d0,d3
		beq.s      object_tree_5
		addq.w     #1,d4
object_tree_4:
		movea.l    (a2),a0
		cmp.w      644(a0),d4
		blt.s      object_tree_6
object_tree_5:
		movea.l    (a2),a0
		cmp.w      644(a0),d4
		bne.s      object_tree_7
		lea.l      A_ADAPTFONT,a0
		moveq.l    #1,d0
		jsr        Awi_alert
		subq.w     #1,d0
		bne.s      object_tree_7
		move.l     #$0001000D,(a5)
object_tree_7:
		movea.l    10(a7),a0
		move.l     (a5),4(a0)
		move.l     (a5),d3
		moveq.l    #16,d0
		asr.l      d0,d3
		pea.l      18(a7)
		lea.l      xb7e45,a1
		movea.l    a3,a0
		moveq.l    #39,d0
		jsr        Aob_printf
		addq.w     #4,a7
		move.w     2(a5),d0
		and.w      #$00FF,d0
		move.w     d0,-(a7)
		lea.l      xb7e4b,a1
		movea.l    a3,a0
		moveq.l    #40,d0
		jsr        Aob_printf
		addq.w     #2,a7
		move.l     (a5),d0
		moveq.l    #14,d1
		asr.l      d1,d0
		and.w      #$0003,d0
		tst.w      d0
		beq.s      object_tree_8
		subq.w     #1,d0
		beq.s      object_tree_9
		subq.w     #1,d0
		beq.s      object_tree_10
		subq.w     #1,d0
		beq.s      object_tree_11
		bra.s      object_tree_12
object_tree_9:
		ori.w      #$0001,634(a3)
		bra.s      object_tree_12
object_tree_8:
		ori.w      #$0001,682(a3)
		bra.s      object_tree_12
object_tree_10:
		ori.w      #$0001,778(a3)
		bra.s      object_tree_12
object_tree_11:
		ori.w      #$0001,730(a3)
object_tree_12:
		move.l     (a5),d0
		and.l      #$00000100,d0
		beq.s      object_tree_13
		ori.w      #$0001,322(a3)
object_tree_13:
		move.l     (a5),d0
		and.l      #$00000200,d0
		beq.s      object_tree_14
		ori.w      #$0001,370(a3)
object_tree_14:
		move.l     (a5),d0
		and.l      #$00000400,d0
		beq.s      object_tree_15
		ori.w      #$0001,418(a3)
object_tree_15:
		move.l     (a5),d0
		and.l      #$00000800,d0
		beq.s      object_tree_16
		ori.w      #$0001,466(a3)
object_tree_16:
		move.l     (a5),d0
		and.l      #$00001000,d0
		beq.s      object_tree_17
		ori.w      #$0001,514(a3)
object_tree_17:
		move.l     (a5),d0
		and.l      #$00002000,d0
		beq.s      object_tree_18
		ori.w      #$0001,562(a3)
object_tree_18:
		movea.l    324(a7),a0
		cmpi.w     #$0002,8(a0)
		bne.s      object_tree_19
		movea.l    10(a0),a5
		movea.l    a5,a1
		moveq.l    #4,d0
		movea.l    10(a7),a2
		movea.l    8(a2),a2
		movea.l    a4,a0
		jsr        (a2)
		bra.s      object_tree_20
object_tree_19:
		lea.l      xb7e20,a5
object_tree_20:
		movea.l    a5,a0
		jsr        strlen
		move.l     d0,d3
		lea.l      68(a7),a2
		cmp.w      #$00FF,d3
		ble.s      object_tree_21
		move.l     #$000000FF,d0
		lea.l      255(a5),a1
		movea.l    a2,a0
		jsr        strncpy
		clr.b      255(a2)
		move.w     #$00FF,d3
		bra.s      object_tree_22
object_tree_21:
		clr.b      (a2)
object_tree_22:
		move.l     a5,-(a7)
		move.w     d3,-(a7)
		lea.l      xb7e50,a1
		moveq.l    #10,d0
		movea.l    a3,a0
		jsr        Aob_printf
		addq.w     #6,a7
		movea.l    a2,a1
		moveq.l    #11,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		movea.l    1044(a3),a0
		movea.l    10(a7),a1
		move.l     12(a0),24(a1)
		movea.l    324(a7),a0
		movea.l    38(a0),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      object_tree_23
		lea.l      xb7e20,a1
		moveq.l    #43,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		bra.s      object_tree_24
object_tree_23:
		movea.l    324(a7),a0
		movea.l    38(a0),a1
		moveq.l    #43,d0
		movea.l    a3,a0
		jsr        Aob_puttext
object_tree_24:
		movea.l    1092(a3),a0
		movea.l    10(a7),a1
		move.l     12(a0),28(a1)
		movea.l    324(a7),a0
		movea.l    42(a0),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      object_tree_25
		lea.l      xb7e20,a1
		moveq.l    #45,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		bra.s      object_tree_26
object_tree_25:
		movea.l    324(a7),a0
		movea.l    42(a0),a1
		moveq.l    #45,d0
		movea.l    a3,a0
		jsr        Aob_puttext
object_tree_26:
		movea.l    a3,a0
object_tree_3:
		lea.l      328(a7),a7
		movem.l    (a7)+,d3-d4/a2-a5
		rts

test_it:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		move.l     #A_ftext,(a1)
		pea.l      4(a2)
		lea.l      xb7e3e,a1
		movea.l    (a0),a0
		jsr        sscanf
		addq.w     #4,a7
		move.l     #Auo_ftext,8(a2)
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
		movea.l    84(a0),a0
		clr.l      24(a0)
		clr.l      28(a0)
		movea.l    data+64,a0
		movea.l    (a0),a0
		jsr        (a0)
		rts

ok:
		movem.l    d3/a2-a4,-(a7)
		lea.l      -558(a7),a7
		movea.l    ACSblk,a0
		movea.l    600(a0),a1
		movea.l    20(a1),a2
		movea.l    84(a2),a3
		lea.l      parm,a4
		move.l     4(a3),-(a7)
		lea.l      xb7e3e,a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #4,a7
		move.l     a4,(a7)
		move.l     #xb7e2a,4(a7)
		lea.l      46(a7),a4
		movea.l    a4,a1
		moveq.l    #10,d0
		movea.l    a2,a0
		jsr        Aob_gettext
		movea.l    a4,a0
		jsr        strlen
		move.l     d0,d3
		lea.l      0(a4,d3.w),a1
		moveq.l    #11,d0
		movea.l    a2,a0
		jsr        Aob_gettext
		move.b     (a4),d0
		beq.s      ok_1
		move.w     #$0002,8(a7)
		move.l     a4,10(a7)
		bra.s      ok_2
ok_1:
		clr.w      8(a7)
		clr.l      10(a7)
ok_2:
		clr.l      14(a7)
		clr.w      d0
		move.w     d0,28(a7)
		move.w     d0,18(a7)
		moveq.l    #0,d1
		move.l     d1,30(a7)
		move.l     d1,20(a7)
		moveq.l    #0,d0
		move.l     d0,34(a7)
		move.l     d0,24(a7)
		lea.l      38(a7),a1
		lea.l      1032(a2),a0
		moveq.l    #3,d0
		jsr        Auo_boxed
		movea.l    38(a7),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      ok_3
		clr.l      38(a7)
ok_3:
		lea.l      42(a7),a1
		moveq.l    #3,d0
		lea.l      1080(a2),a0
		jsr        Auo_boxed
		movea.l    42(a7),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      ok_4
		clr.l      42(a7)
ok_4:
		movea.l    ACSblk,a0
		move.w     20(a0),d1
		move.w     18(a0),d0
		lea.l      (a7),a0
		movea.l    data+64,a1
		movea.l    4(a1),a1
		jsr        (a1)
		bsr        abort
		lea.l      558(a7),a7
		movem.l    (a7)+,d3/a2-a4
		rts

font_sel:
		movem.l    d3/a2-a5,-(a7)
		lea.l      -58(a7),a7
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		movea.l    600(a0),a3
		move.l     604(a0),(a7)
		movea.l    604(a0),a1
		movea.l    84(a1),a4
		lea.l      56(a7),a5
		move.l     4(a4),d0
		moveq.l    #16,d1
		asr.l      d1,d0
		move.w     d0,(a5)
		move.w     6(a4),d2
		and.w      #$00FF,d2
		move.w     d2,54(a7)
		lea.l      54(a7),a1
		movea.l    a5,a0
		moveq.l    #1,d0
		jsr        A_fontsel
		tst.w      d0
		bne        font_sel_1
		cmpi.w     #$00FF,54(a7)
		ble.s      font_sel_2
		move.w     #$00FF,54(a7)
font_sel_2:
		move.l     4(a4),d0
		and.l      #$0000FF00,d0
		move.w     (a5),d1
		ext.l      d1
		moveq.l    #16,d2
		lsl.l      d2,d1
		or.l       d1,d0
		move.w     54(a7),d1
		ext.l      d1
		or.l       d1,d0
		move.l     d0,4(a4)
		clr.w      d3
		lea.l      4(a7),a4
		bra.s      font_sel_3
font_sel_5:
		movea.l    a4,a0
		move.w     d3,d1
		movea.l    (a2),a1
		move.w     16(a1),d0
		jsr        vqt_name
		move.w     (a5),d1
		cmp.w      d0,d1
		beq.s      font_sel_4
		addq.w     #1,d3
font_sel_3:
		movea.l    (a2),a0
		cmp.w      644(a0),d3
		blt.s      font_sel_5
font_sel_4:
		pea.l      (a4)
		lea.l      xb7e45,a1
		moveq.l    #39,d0
		movea.l    4(a7),a0
		jsr        Aob_printf
		addq.w     #4,a7
		move.w     54(a7),-(a7)
		lea.l      xb7e4b,a1
		moveq.l    #40,d0
		movea.l    2(a7),a0
		jsr        Aob_printf
		addq.w     #2,a7
		moveq.l    #-1,d1
		moveq.l    #34,d0
		movea.l    a3,a0
		movea.l    102(a3),a1
		jsr        (a1)
		moveq.l    #-1,d1
		moveq.l    #2,d0
		movea.l    a3,a0
		movea.l    102(a3),a1
		jsr        (a1)
font_sel_1:
		lea.l      58(a7),a7
		movem.l    (a7)+,d3/a2-a5
		rts

edf_pos:
		movem.l    d3/a2-a3,-(a7)
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		move.w     608(a0),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    604(a0),a0
		lea.l      24(a0,d0.l),a0
		move.l     12(a0),d3
		movea.l    (a2),a1
		movea.l    604(a1),a0
		movea.l    84(a0),a3
		andi.l     #$FFFF3FFF,4(a3)
		moveq.l    #1,d0
		movea.l    (a2),a0
		move.w     608(a0),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    604(a0),a1
		and.w      10(a1,d1.l),d0
		beq.s      edf_pos_1
		move.l     d3,d0
		moveq.l    #14,d1
		lsl.l      d1,d0
		or.l       d0,4(a3)
edf_pos_1:
		moveq.l    #-1,d1
		movea.l    (a2),a0
		move.w     608(a0),d0
		movea.l    600(a0),a0
		movea.l    (a2),a1
		movea.l    600(a1),a3
		movea.l    102(a3),a1
		jsr        (a1)
		moveq.l    #-1,d1
		moveq.l    #2,d0
		movea.l    (a2),a0
		movea.l    600(a0),a0
		movea.l    (a2),a1
		movea.l    600(a1),a3
		movea.l    102(a3),a1
		jsr        (a1)
		movem.l    (a7)+,d3/a2-a3
		rts

edf_effect:
		movem.l    d3/a2-a3,-(a7)
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		move.w     608(a0),d1
		ext.l      d1
		move.l     d1,d0
		add.l      d0,d0
		add.l      d1,d0
		lsl.l      #3,d0
		movea.l    604(a0),a0
		lea.l      24(a0,d0.l),a0
		move.l     12(a0),d3
		movea.l    (a2),a1
		movea.l    604(a1),a0
		movea.l    84(a0),a3
		move.l     d3,d2
		lsl.l      #8,d2
		not.l      d2
		and.l      d2,4(a3)
		moveq.l    #1,d0
		movea.l    (a2),a0
		move.w     608(a0),d2
		ext.l      d2
		move.l     d2,d1
		add.l      d1,d1
		add.l      d2,d1
		lsl.l      #3,d1
		movea.l    604(a0),a1
		and.w      10(a1,d1.l),d0
		beq.s      edf_effect_1
		move.l     d3,d0
		lsl.l      #8,d0
		or.l       d0,4(a3)
edf_effect_1:
		moveq.l    #-1,d1
		movea.l    (a2),a0
		move.w     608(a0),d0
		movea.l    600(a0),a0
		movea.l    (a2),a1
		movea.l    600(a1),a3
		movea.l    102(a3),a1
		jsr        (a1)
		moveq.l    #-1,d1
		moveq.l    #2,d0
		movea.l    (a2),a0
		movea.l    600(a0),a0
		movea.l    (a2),a1
		movea.l    600(a1),a3
		movea.l    102(a3),a1
		jsr        (a1)
		movem.l    (a7)+,d3/a2-a3
		rts

	.data

		.IFEQ COUNTRY-COUNTRY_DE
A_ADAPTFONT:
		dc.b '[2][ Die Schriftgr��e ist negativ| und ist wahrscheinlich ein| Objekt nach alter Definition.| Soll es auf den Standardwert| gesetzt werden? ][OK| Abbruch ]',0
BUBBLE_01:
		dc.b 'Die �nderungen werden �bernommen und �berschreiben die alten Einstellungen.',0
BUBBLE_02:
		dc.b 'Die �nderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
		dc.b 'Hier kann der String, der f�r BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_04:
		dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
BUBBLE_05:
		dc.b 'Im erscheinenden Font-Selektor k�nnen der Zeichensatz und die Zeichenh�he ausgew�hlt werden.',0
BUBBLE_06:
		dc.b 'Der Text soll fett dargestellt werden.',0
BUBBLE_07:
		dc.b 'Der Text soll hell dargestellt werden.',0
BUBBLE_08:
		dc.b 'Der Text soll kursiv dargestellt werden.',0
BUBBLE_09:
		dc.b 'Der Text soll unterstrichen dargestellt werden.',0
BUBBLE_10:
		dc.b 'Der Text soll hohl dargestellt werden.',0
BUBBLE_11:
		dc.b 'Der Text soll schattiert dargestellt werden.',0
BUBBLE_12:
		dc.b 'Der Text soll linksb�ndig dargestellt werden.',0
BUBBLE_13:
		dc.b 'Der Text soll rechtsb�ndig dargestellt werden.',0
BUBBLE_14:
		dc.b 'Der Text soll zentriert dargestellt werden.',0
BUBBLE_15:
		dc.b 'Der Text soll im Blocksatz dargestellt werden.',0
BUBBLE_16:
		dc.b 'Hier wird der Text in bis zu zwei Zeilen eingegeben.',0
TEXT_005:
		dc.b 'OK',0
TEXT_009:
		dc.b 'Abbruch',0
TEXT_01:
		dc.b 'Schrift...',0
TEXT_02:
		dc.b '12345',0
TEXT_03:
		dc.b '123456789012345678901234567890',0
TEXT_04:
		dc.b 'H�he:',0
TEXT_05:
		dc.b 'Name:',0
TEXT_06:
		dc.b 'Effekte:',0
TEXT_07:
		dc.b 'Text:',0
TEXT_08:
		dc.b 'fett',0
TEXT_09:
		dc.b 'hell ',0
TEXT_10:
		dc.b 'kursiv',0
TEXT_11:
		dc.b 'unterstrichen',0
TEXT_12:
		dc.b 'hohl    ',0
TEXT_13:
		dc.b 'schattiert',0
TEXT_14:
		dc.b 'links',0
TEXT_15:
		dc.b 'Ausrichtung:',0
TEXT_16:
		dc.b 'rechts',0
TEXT_17:
		dc.b 'zentriert',0
TEXT_18:
		dc.b 'Blocksatz',0
TEXT_19:
		dc.b 'Sonstiges',0
TEXT_20:
		dc.b 'BubbleGEM-Text',0
TEXT_21:
		dc.b 'Context-Popup',0
TEXT_22:
		dc.b 'Zeichensatz & Zeichenh�he',0
extra:
		dc.b 'The quick brown fox jumps over the lazy dog',0
help_title:
		dc.b 'Der FText-Editor',0
title:
		dc.b 'FTEXT -',0
		.ENDC

		.IFEQ COUNTRY-COUNTRY_US
A_ADAPTFONT:
		dc.b '[2][ The font-height is negative | and therefore probably | from the old definition. | Do you want to use the | default values instead?][OK| Cancel ]',0
BUBBLE_01:
		dc.b 'The changes are accepted, the old values are overridden.',0
BUBBLE_02:
		dc.b 'The changes are discarded, the old values are unchanged.',0
BUBBLE_03:
		dc.b 'Here the string is entered which is used for BubbleGEM.',0
BUBBLE_04:
		dc.b 'Here the string is entered which is used to create the context popup (see Ame_strpopup).',0
BUBBLE_05:
		dc.b 'In the font selector the font and the size can be selected.',0
BUBBLE_06:
		dc.b 'Draw the text boldface.',0
BUBBLE_07:
		dc.b 'Draw the text lightened.',0
BUBBLE_08:
		dc.b 'Draw the text italic.',0
BUBBLE_09:
		dc.b 'Draw the text underlined.',0
BUBBLE_10:
		dc.b 'Draw the text hollow.',0
BUBBLE_11:
		dc.b 'Draw the text shadowed.',0
BUBBLE_12:
		dc.b 'Adjust the text to the left.',0
BUBBLE_13:
		dc.b 'Adjust the text to the right.',0
BUBBLE_14:
		dc.b 'Adjust the text to be centered.',0
BUBBLE_15:
		dc.b 'Adjust the text to be a block.',0
BUBBLE_16:
		dc.b 'Here the text is entered.',0
TEXT_005:
		dc.b 'OK',0
TEXT_009:
		dc.b 'Cancel',0
TEXT_01:
		dc.b 'Font:',0
TEXT_02:
		dc.b '12345',0
TEXT_03:
		dc.b '123456789012345678901234567890',0
TEXT_04:
		dc.b 'Size:',0
TEXT_05:
		dc.b 'Name:',0
TEXT_06:
		dc.b 'Effects:',0
TEXT_07:
		dc.b 'Text:',0
TEXT_08:
		dc.b 'fat ',0
TEXT_09:
		dc.b 'light',0
TEXT_10:
		dc.b 'italic',0
TEXT_11:
		dc.b 'underlined   ',0
TEXT_12:
		dc.b 'outlined',0
TEXT_13:
		dc.b 'shadowed  ',0
TEXT_14:
		dc.b 'left ',0
TEXT_15:
		dc.b 'Alignment:',0
TEXT_16:
		dc.b 'right ',0
TEXT_17:
		dc.b 'centered ',0
TEXT_18:
		dc.b 'blocked  ',0
TEXT_19:
		.IFNE WITH_FIXES
		dc.b 'Misc.    ',0
		.ELSE
		dc.b 'Sonstiges',0
		.ENDC
TEXT_20:
		dc.b 'BubbleGEM-Text',0
TEXT_21:
		dc.b 'Context-Popup',0
TEXT_22:
		.IFNE WITH_FIXES
		dc.b 'Example',0
		.ELSE
		dc.b 'Schrift',0
		.ENDC
extra:
		dc.b 'The quick brown fox jumps over the lazy dog',0
help_title:
		dc.b 'Der FText-Editor',0
title:
		dc.b 'FTEXT -',0
		.ENDC

		.even
A_3DBUTTON01:
		dc.l A_3Dbutton
		dc.w $29f1
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
A_3DBUTTON02:
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
A_3DBUTTON05:
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
A_3DBUTTON06:
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
A_3DBUTTON08:
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
A_3DBUTTON09:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
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
		dc.l BUBBLE_05
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
		dc.l BUBBLE_16
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
		dc.l BUBBLE_03
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_BOXED05:
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
		dc.l BUBBLE_04
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
		dc.l TEXT_08
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
A_CHECKBOX02:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.l Auo_string
		dc.l TEXT_09
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
		dc.l TEXT_10
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
A_CHECKBOX04:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
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
		dc.l BUBBLE_09
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
		dc.l TEXT_12
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
A_CHECKBOX06:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
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
		dc.l BUBBLE_11
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
		dc.l TEXT_14
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
A_CHECKBOX08:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
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
		dc.l BUBBLE_13
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_CHECKBOX09:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
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
		dc.l BUBBLE_14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_CHECKBOX10:
		dc.l A_checkbox
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
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
		dc.l BUBBLE_15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_FTEXT01:
		dc.l A_ftext
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0d
		dc.l Auo_ftext
		dc.l extra
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
A_INNERFRAME01:
		dc.l A_innerframe
		dc.w $1800
		dc.w $8f19
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
		dc.l TEXT_07
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.l TEXT_15
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		.globl ED_FTEXT
ED_FTEXT:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $29
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON06
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $3d
		dc.b $00
		dc.b $17
_01_ED_FTEXT:
		dc.b $00
		dc.b $04
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
		dc.l A_3DBUTTON01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $05
_02_ED_FTEXT:
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $fd
		dc.w $0170
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $03
_03_ED_FTEXT:
		dc.b $00
		dc.b $02
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.w $1000
		dc.l A_FTEXT01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $03
_04_ED_FTEXT:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_04aED_FTEXT:
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
_06_ED_FTEXT:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON08
		dc.b $00
		dc.b $2e
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_06aED_FTEXT:
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
_08_ED_FTEXT:
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $3b
		dc.b $00
		dc.b $04
_09_ED_FTEXT:
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $39
		dc.b $00
		dc.b $02
_10_ED_FTEXT:
		dc.b $00
		dc.b $0b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $00
		dc.l A_BOXED02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $39
		dc.b $00
		dc.b $01
_11_ED_FTEXT:
		dc.b $00
		dc.b $09
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $00
		dc.l A_BOXED02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $39
		dc.b $00
		dc.b $01
_12_ED_FTEXT:
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $17
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $1d
		dc.b $00
		dc.b $05
_13_ED_FTEXT:
		dc.b $00
		dc.b $0f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_13aED_FTEXT:
		dc.l edf_effect
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
_15_ED_FTEXT:
		dc.b $00
		dc.b $11
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_15aED_FTEXT:
		dc.l edf_effect
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
_17_ED_FTEXT:
		dc.b $00
		dc.b $13
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX03
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_17aED_FTEXT:
		dc.l edf_effect
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
_19_ED_FTEXT:
		dc.b $00
		dc.b $15
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX04
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $01
_19aED_FTEXT:
		dc.l edf_effect
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
_21_ED_FTEXT:
		dc.b $00
		dc.b $17
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX05
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $01
_21aED_FTEXT:
		dc.l edf_effect
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
_23_ED_FTEXT:
		dc.b $00
		dc.b $0c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $41
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX06
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_23aED_FTEXT:
		dc.l edf_effect
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
_25_ED_FTEXT:
		dc.b $00
		dc.b $22
		dc.b $00
		dc.b $1a
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME03
		dc.b $00
		dc.b $1e
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $1e
		dc.b $00
		dc.b $05
_26_ED_FTEXT:
		dc.b $00
		dc.b $1c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $51
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX07
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $01
_26aED_FTEXT:
		dc.l edf_pos
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
_28_ED_FTEXT:
		dc.b $00
		dc.b $1e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $51
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX09
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_28aED_FTEXT:
		dc.l edf_pos
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
_30_ED_FTEXT:
		dc.b $00
		dc.b $20
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $51
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX10
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $01
_30aED_FTEXT:
		dc.l edf_pos
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
_32_ED_FTEXT:
		dc.b $00
		dc.b $19
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $51
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX08
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $01
_32aED_FTEXT:
		dc.l edf_pos
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
_34_ED_FTEXT:
		dc.b $00
		dc.b $29
		dc.b $00
		dc.b $23
		dc.b $00
		dc.b $28
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME05
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $3b
		dc.b $00
		dc.b $04
_35_ED_FTEXT:
		dc.b $00
		dc.b $25
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON09
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_35aED_FTEXT:
		dc.l font_sel
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8853
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_37_ED_FTEXT:
		dc.b $00
		dc.b $26
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_05
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_38_ED_FTEXT:
		dc.b $00
		dc.b $27
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_04
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_39_ED_FTEXT:
		dc.b $00
		dc.b $28
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_03
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $1e
		dc.b $00
		dc.b $01
_40_ED_FTEXT:
		dc.b $00
		dc.b $22
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_02
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_41_ED_FTEXT:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $2a
		dc.b $00
		dc.b $2d
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME04
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $12
		dc.b $00
		dc.b $3b
		dc.b $00
		dc.b $05
_42_ED_FTEXT:
		dc.b $00
		dc.b $2b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_20
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $01
_43_ED_FTEXT:
		dc.b $00
		dc.b $2c
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
		dc.b $01
		dc.b $00
		dc.b $2a
		dc.b $00
		dc.b $01
_44_ED_FTEXT:
		dc.b $00
		dc.b $2d
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_21
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_45_ED_FTEXT:
		dc.b $00
		dc.b $29
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $28
		dc.b $00
		dc.b $10
		dc.l A_BOXED05
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $2a
		dc.b $00
		dc.b $01
ftext:
		dc.l A_ftext
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0d
		dc.l Auo_ftext
		dc.l xb7e0c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.b $10
		dc.l ftext
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
logical:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $02
aud:
		dc.l xb7e21
		dc.l xb7e2a
		dc.b $00
		dc.b $02
		dc.l xb7e34
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.b 'A_ftext',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
xb7dda:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xb7e0c:
		dc.b 'Guten Tag mit ACSpro' /* not translated */
xb7e20:
		dc.b 0
xb7e21:
		dc.b '0x1000DL',0
xb7e2a:
		dc.b 'Auo_ftext',0
xb7e34:
		dc.b 'Guten Tag',0 /* not translated */
xb7e3e:
		dc.b '0x%lxL',0
xb7e45:
		dc.b '%-30s',0
xb7e4b:
		dc.b '%-5d',0
xb7e50:
		dc.b '%-*s',0
	.even


	.bss

parm: ds.b 36
