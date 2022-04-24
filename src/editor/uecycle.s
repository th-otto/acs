		.include "country.inc"

		.text
		
		.globl init_cycle
init_cycle:
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
		move.w     18(a0),d1
		move.w     d1,d0
		add.w      d0,d0
		add.w      d1,d0
		add.w      d0,d0
		move.w     d0,(a1)
		movea.l    ACSblk,a0
		movea.l    4(a7),a1
		move.w     20(a0),(a1)
		rts

object_tree:
		movem.l    d3/a2-a5,-(a7)
		lea.l      -10(a7),a7
		movea.l    a0,a5
		movea.l    a1,a3
		lea.l      xb3100,a0
		lea.l      4(a7),a1
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		lea.l      ED_CYCLE,a0
		jsr        Aob_create
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      object_tree_1
		suba.l     a0,a0
		bra        object_tree_2
object_tree_1:
		lea.l      48(a2),a0
		moveq.l    #22,d0
		and.w      8(a3),d0
		or.w       d0,8(a0)
		moveq.l    #63,d0
		and.w      10(a3),d0
		or.w       d0,10(a0)
		movea.l    12(a0),a3
		lea.l      ACSblk,a4
		moveq.l    #27,d0
		movea.l    a2,a1
		movea.l    (a4),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		moveq.l    #8,d0
		movea.l    a2,a1
		movea.l    (a4),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		moveq.l    #32,d0
		movea.l    a2,a1
		movea.l    (a4),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		moveq.l    #34,d0
		movea.l    a2,a1
		movea.l    (a4),a0
		movea.l    600(a0),a0
		jsr        oe_beself
		pea.l      (a7)
		lea.l      xb3123,a1
		movea.l    (a5),a0
		jsr        sscanf
		addq.w     #4,a7
		cmpi.l     #$00010000,(a7)
		bne.s      object_tree_3
		lea.l      A_ADAPTCYC,a0
		moveq.l    #1,d0
		jsr        Awi_alert
		subq.w     #1,d0
		bne.s      object_tree_3
		move.l     #$00010290,(a7)
object_tree_3:
		move.l     (a7),4(a3)
		cmpi.w     #$0002,8(a5)
		bne.s      object_tree_4
		move.l     10(a5),6(a7)
		bra.s      object_tree_5
object_tree_4:
		move.l     #xb310f,6(a7)
object_tree_5:
		movea.l    6(a7),a1
		move.w     #$0190,d0
		lea.l      48(a2),a0
		jsr        Auo_cycle
		move.l     (a7),d3
		asr.l      #4,d3
		and.w      #$000F,d3
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      colour_text,a0
		movea.l    0(a0,d0.l),a1
		movea.l    a2,a0
		moveq.l    #25,d0
		jsr        Aob_puttext
		move.w     d3,d0
		andi.w     #$FFF0,590(a2)
		and.w      #$000F,d0
		or.w       d0,590(a2)
		moveq.l    #15,d3
		and.w      2(a7),d3
		move.w     d3,d0
		ext.l      d0
		lsl.l      #2,d0
		lea.l      colour_text,a0
		movea.l    0(a0,d0.l),a1
		movea.l    a2,a0
		moveq.l    #18,d0
		jsr        Aob_puttext
		move.w     d3,d0
		andi.w     #$FFF0,422(a2)
		and.w      #$000F,d0
		or.w       d0,422(a2)
		move.l     (a7),d0
		asr.l      #8,d0
		move.b     d0,4(a7)
		lea.l      4(a7),a1
		movea.l    a2,a0
		moveq.l    #27,d0
		jsr        Aob_puttext
		movea.l    6(a7),a1
		moveq.l    #8,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		move.l     (a7),d0
		and.l      #$00010000,d0
		beq.s      object_tree_6
		ori.w      #$0001,226(a2)
object_tree_6:
		movea.l    780(a2),a0
		move.l     12(a0),24(a3)
		movea.l    38(a5),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      object_tree_7
		lea.l      xb310f,a1
		moveq.l    #32,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		bra.s      object_tree_8
object_tree_7:
		movea.l    38(a5),a1
		moveq.l    #32,d0
		movea.l    a2,a0
		jsr        Aob_puttext
object_tree_8:
		movea.l    828(a2),a0
		move.l     12(a0),28(a3)
		movea.l    42(a5),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      object_tree_9
		lea.l      xb310f,a1
		moveq.l    #34,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		bra.s      object_tree_10
object_tree_9:
		movea.l    42(a5),a1
		moveq.l    #34,d0
		movea.l    a2,a0
		jsr        Aob_puttext
object_tree_10:
		movea.l    a2,a0
object_tree_2:
		lea.l      10(a7),a7
		movem.l    (a7)+,d3/a2-a5
		rts

test_it:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		movea.l    a1,a2
		move.l     #A_cycle,(a1)
		pea.l      4(a2)
		lea.l      xb3123,a1
		movea.l    (a0),a0
		jsr        sscanf
		addq.w     #4,a7
		move.l     #Auo_cycle,8(a2)
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
		movem.l    a2-a5,-(a7)
		lea.l      -50(a7),a7
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		movea.l    600(a0),a1
		movea.l    20(a1),a3
		movea.l    20(a1),a0
		movea.l    60(a0),a5
		jsr        prepair
		lea.l      parm,a4
		move.l     4(a5),-(a7)
		lea.l      xb3123,a1
		movea.l    a4,a0
		jsr        sprintf
		addq.w     #4,a7
		move.l     a4,(a7)
		move.l     #xb3119,4(a7)
		lea.l      46(a7),a1
		moveq.l    #3,d0
		lea.l      192(a3),a0
		jsr        Auo_boxed
		movea.l    46(a7),a0
		move.b     (a0),d0
		beq.s      ok_1
		move.w     #$0002,8(a7)
		move.l     a0,10(a7)
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
		lea.l      768(a3),a0
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
		lea.l      816(a3),a0
		jsr        Auo_boxed
		movea.l    42(a7),a0
		jsr        Ast_isEmpty
		tst.w      d0
		beq.s      ok_4
		clr.l      42(a7)
ok_4:
		movea.l    (a2),a0
		move.w     20(a0),d1
		move.w     18(a0),d2
		move.w     d2,d0
		add.w      d0,d0
		add.w      d2,d0
		add.w      d0,d0
		lea.l      (a7),a0
		movea.l    data+64,a1
		movea.l    4(a1),a1
		jsr        (a1)
		bsr        abort
		lea.l      50(a7),a7
		movem.l    (a7)+,a2-a5
		rts

edcyc_outcol:
		move.l     a2,-(a7)
		movea.l    ACSblk,a0
		movea.l    604(a0),a1
		movea.l    60(a1),a2
		addq.w     #4,a2
		moveq.l    #17,d0
		move.w     d0,-(a7)
		moveq.l    #18,d2
		moveq.l    #15,d1
		moveq.l    #15,d0
		and.w      2(a2),d0
		jsr        oe_colsel
		addq.w     #2,a7
		tst.w      d0
		bmi.s      edcyc_outcol_1
		moveq.l    #-16,d1
		and.l      (a2),d1
		move.w     d0,d2
		ext.l      d2
		or.l       d2,d1
		move.l     d1,(a2)
		moveq.l    #1,d0
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		movea.l    ACSblk,a1
		movea.l    600(a1),a2
		movea.l    102(a2),a1
		moveq.l    #-1,d1
		jsr        (a1)
edcyc_outcol_1:
		movea.l    (a7)+,a2
		rts

edcyc_incol:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		movea.l    ACSblk,a0
		movea.l    604(a0),a1
		movea.l    60(a1),a2
		addq.w     #4,a2
		moveq.l    #24,d0
		move.w     d0,-(a7)
		moveq.l    #25,d2
		moveq.l    #22,d1
		move.l     (a2),d0
		asr.l      #4,d0
		and.w      #$000F,d0
		jsr        oe_colsel
		addq.w     #2,a7
		move.w     d0,d3
		bmi.s      edcyc_incol_1
		move.l     (a2),d1
		and.l      #$FFFFFF0F,d1
		lsl.w      #4,d0
		ext.l      d0
		or.l       d0,d1
		move.l     d1,(a2)
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		movea.l    ACSblk,a1
		movea.l    600(a1),a2
		movea.l    102(a2),a1
		moveq.l    #1,d0
		moveq.l    #-1,d1
		jsr        (a1)
edcyc_incol_1:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

prepair:
		movem.l    a2-a4,-(a7)
		lea.l      -16(a7),a7
		lea.l      ACSblk,a2
		movea.l    (a2),a0
		movea.l    600(a0),a1
		movea.l    20(a1),a0
		movea.l    60(a0),a3
		lea.l      10(a7),a1
		moveq.l    #27,d0
		jsr        Aob_gettext
		move.l     4(a3),d0
		and.l      #$000000FF,d0
		move.b     10(a7),d1
		ext.w      d1
		ext.l      d1
		and.l      #$000000FF,d1
		lsl.l      #8,d1
		add.l      d1,d0
		move.l     d0,4(a3)
		moveq.l    #1,d1
		movea.l    (a2),a0
		movea.l    600(a0),a1
		movea.l    20(a1),a0
		and.w      226(a0),d1
		beq.s      prepair_1
		ori.l      #$00010000,4(a3)
prepair_1:
		lea.l      12(a7),a1
		moveq.l    #3,d0
		movea.l    (a2),a0
		movea.l    600(a0),a0
		movea.l    20(a0),a0
		lea.l      192(a0),a0
		jsr        Auo_boxed
		movea.l    (a2),a0
		move.l     600(a0),(a7)
		movea.l    600(a0),a1
		movea.l    20(a1),a0
		lea.l      48(a0),a0
		move.l     a0,4(a7)
		move.w     #$0002,8(a7)
		lea.l      (a7),a1
		moveq.l    #9,d0
		movea.l    8(a3),a4
		jsr        (a4)
		movea.l    12(a7),a1
		move.w     #$0190,d0
		movea.l    (a2),a0
		movea.l    600(a0),a4
		movea.l    20(a4),a0
		lea.l      48(a0),a0
		movea.l    8(a3),a4
		jsr        (a4)
		suba.l     a1,a1
		moveq.l    #5,d0
		movea.l    (a2),a0
		movea.l    600(a0),a4
		movea.l    20(a4),a0
		lea.l      48(a0),a0
		movea.l    8(a3),a4
		jsr        (a4)
		lea.l      16(a7),a7
		movem.l    (a7)+,a2-a4
		rts

		.IFEQ COUNTRY-COUNTRY_DE
	.data
A_ADAPTCYC:
		dc.b '[2][ Dies ist wahrscheinlich ein| Objekt nach alter Definition.| Soll es auf den Standardwert| gesetzt werden?][OK| Abbruch ]',0
BUBBLE_01:
		dc.b 'Die �nderungen werden �bernommen und �berschreiben die alten Einstellungen.',0
BUBBLE_02:
		dc.b 'Die �nderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
		dc.b 'Hier kann der String, der f�r BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_04:
		dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
BUBBLE_05:
		dc.b 'Hier wird das Zeichen eingegeben, das im Popup auf der rechten Seite beim Anklicken zum n�chsten Wert bl�ttert.',0
BUBBLE_06:
		dc.b 'Dieser Button stellt das Beispiel-Popup links oben um auf den gerade eingegebenen Text. Damit k�nnen Sie Ihr Popup direkt ausprobieren.',0
BUBBLE_07:
		dc.b 'Durch diese Checkbox kann die 3D-Darstellung ein- und ausgeschaltet werden. Das Ergebnis wird nach Klick auf den Button "Probe" am Beispiel-Popup oben links dargestellt.',0
TEXT_001:
		dc.b 'Wei�|Rot|Gr�n|Blau|Gelb|T�rkis|Lila|Schwarz',0
TEXT_005:
		dc.b 'OK',0
TEXT_008:
		dc.b 'Probe',0
TEXT_009:
		dc.b 'Abbruch',0
TEXT_01:
		dc.b '3D-Modus',0
TEXT_02:
		dc.b 'Zyklus-Zeichen:',0
TEXT_05:
		dc.b 'Sonstiges',0
TEXT_08:
		dc.b 'BubbleGEM-Text',0
TEXT_09:
		dc.b 'unten:',0
TEXT_10:
		dc.b 'Rahmen:',0
TEXT_16:
		dc.b 'Context-Popup',0
TEXT_19:
		dc.b 'oben:',0
TEXT_21:
		dc.b 'links/',0
TEXT_22:
		dc.b 'rechts/',0
help_title:
		dc.b 'Der Cycle-Button-Editor',0
title:
		dc.b 'CYCLEBUTTON -',0
		.ENDC

		.IFEQ COUNTRY-COUNTRY_US /* not everything translated */
A_ADAPTCYC:
		dc.b '[2][ Die Schriftgr��e ist negativ| und ist wahrscheinlich ein| Objekt nach alter Definition.| Soll es auf den Standardwert| gesetzt werden? ][OK| Abbruch ]',0
BUBBLE_01:
		dc.b 'The changes are accepted and override the old values.',0
BUBBLE_02:
		dc.b 'The changes are discarded, the old values are unchanged.',0
BUBBLE_03:
		dc.b 'Here the string is entered which is used for BubbleGEM.',0
BUBBLE_04:
		dc.b 'Here the string is entered which is used to create the context popup (see Ame_strpopup).',0
BUBBLE_05:
		dc.b 'Hier wird das Zeichen eingegeben, das ',0
BUBBLE_06:
		dc.b 'This button transfers the entered string to the example popup above to test the popup.',0
BUBBLE_07:
		dc.b 'The 3D mode is switched on and off by this checkbox.',0
TEXT_001:
		dc.b 'White|Red|Green|Blue|Yellow|Violet|Black',0
TEXT_005:
		dc.b 'OK',0
TEXT_008:
		dc.b 'Test',0
TEXT_009:
		dc.b 'Cancel',0
TEXT_01:
		dc.b '3D mode ',0
TEXT_02:
		dc.b 'Cycle Char',0
TEXT_05:
		dc.b 'Sonstiges',0
TEXT_08:
		dc.b 'BubbleGEM-Text',0
TEXT_09:
		dc.b 'bottom',0
TEXT_10:
		dc.b 'Frame: ',0
TEXT_16:
		dc.b 'Context-Popup',0
TEXT_19:
		dc.b 'top:',0
TEXT_21:
		dc.b 'left/',0
TEXT_22:
		dc.b 'right/',0
help_title:
		dc.b 'Der Checkbox-/Radiobutton-Editor',0
title:
		dc.b 'CYCLEBUTTON -',0
		.ENDC

	.even
A_3DBUTTON01:
		dc.l A_3Dbutton
		dc.w $a9f1
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
A_3DBUTTON07:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_008
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
A_BOXED01:
		dc.l A_boxed
		dc.w $9000
		dc.w $0112
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
		dc.l TEXT_01
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
A_INNERFRAME01:
		dc.l A_innerframe
		dc.w $1000
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
A_cycle002:
		dc.l A_cycle
		dc.b $00
		dc.b $01
		dc.w $0290
		dc.l Auo_cycle
		dc.l TEXT_001
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
ED_CYCLE:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $1e
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $33
		dc.b $00
		dc.b $13
_01_ED_CYCLE:
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $03
_02_ED_CYCLE:
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
		dc.l A_cycle002
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $01
_02aED_CYCLE:
		dc.l Aus_cycle
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
_04_ED_CYCLE:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON03
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_04aED_CYCLE:
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
_06_ED_CYCLE:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON06
		dc.b $00
		dc.b $26
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_06aED_CYCLE:
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
_08_ED_CYCLE:
		dc.b $00
		dc.b $09
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
		dc.b $01
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $31
		dc.b $00
		dc.b $01
_09_ED_CYCLE:
		dc.b $00
		dc.b $0b
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.l A_CHECKBOX01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $01
_09aED_CYCLE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8844
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_11_ED_CYCLE:
		dc.b $00
		dc.b $1a
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l A_INNERFRAME01
		dc.b $00
		dc.b $16
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $06
_12_ED_CYCLE:
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_21
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_13_ED_CYCLE:
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
		dc.l A_ARROWS02
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
_14_ED_CYCLE:
		dc.b $00
		dc.b $0f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_19
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $01
_15_ED_CYCLE:
		dc.b $00
		dc.b $13
		dc.b $00
		dc.b $11
		dc.b $00
		dc.b $12
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
		dc.b $09
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $12
		dc.b $00
		dc.b $01
_15aED_CYCLE:
		dc.l edcyc_outcol
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
_17_ED_CYCLE:
		dc.b $00
		dc.b $12
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $4301
		dc.w $1371
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_18_ED_CYCLE:
		dc.b $00
		dc.b $0f
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON27
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $01
_19_ED_CYCLE:
		dc.b $00
		dc.b $15
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_22
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $07
		dc.b $00
		dc.b $01
_20_ED_CYCLE:
		dc.b $00
		dc.b $13
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
_21_ED_CYCLE:
		dc.b $00
		dc.b $16
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $00
		dc.l TEXT_09
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
_22_ED_CYCLE:
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $19
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
		dc.b $09
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $12
		dc.b $00
		dc.b $01
_22aED_CYCLE:
		dc.l edcyc_incol
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8000
		dc.w $8852
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_24_ED_CYCLE:
		dc.b $00
		dc.b $19
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $14
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $4301
		dc.w $1371
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $02
		dc.b $00
		dc.b $01
_25_ED_CYCLE:
		dc.b $00
		dc.b $16
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l A_3DBUTTON27
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $10
		dc.b $00
		dc.b $01
_26_ED_CYCLE:
		dc.b $00
		dc.b $1b
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
		dc.b $01
		dc.w $0807
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $01
_27_ED_CYCLE:
		dc.b $00
		dc.b $1c
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $10
		dc.l A_BOXED01
		dc.b $00
		dc.b $11
		dc.w $0807
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
_28_ED_CYCLE:
		dc.b $00
		dc.b $1e
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $05
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON07
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $09
		dc.b $00
		dc.b $0b
		dc.b $00
		dc.b $02
_28aED_CYCLE:
		dc.l prepair
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
_30_ED_CYCLE:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $22
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
		dc.b $0c
		dc.b $00
		dc.b $31
		dc.b $00
		dc.b $05
_31_ED_CYCLE:
		dc.b $00
		dc.b $20
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_08
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $0e
		dc.b $00
		dc.b $01
_32_ED_CYCLE:
		dc.b $00
		dc.b $21
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
		dc.b $20
		dc.b $00
		dc.b $01
_33_ED_CYCLE:
		dc.b $00
		dc.b $22
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1c
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l TEXT_16
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $01
_34_ED_CYCLE:
		dc.b $00
		dc.b $1e
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
		dc.b $20
		dc.b $00
		dc.b $01
cycle:
		dc.l A_cycle
		dc.b $00
		dc.b $01
		dc.w $0290
		dc.l Auo_cycle
		dc.l xb3102
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.b $30
		dc.l cycle
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $01
logical:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $40
		dc.b $00
		dc.b $30
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $01
aud:
		dc.l xb3110
		dc.l xb3119
		dc.b $00
		dc.b $02
		dc.l xb3102
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.b 'A_cycle',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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


xb3100:
		dc.w $2000
		.IFEQ COUNTRY-COUNTRY_DE
xb3102:
		dc.b 'Rot|Gr�n|Blau'
		.ENDC
		.IFEQ COUNTRY-COUNTRY_US
xb3102: /* not translated */
		dc.b 'Rot|Gr�n|Blau'
		.ENDC
xb310f:
		dc.b 0
xb3110:
		dc.b '0x10290L',0
xb3119:
		dc.b 'Auo_cycle',0
xb3123:
		dc.b '0x%lxL',0

		.even

	.bss

parm: ds.b 36
