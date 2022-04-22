
edoim_new:
		movem.l    d3/a2-a4,-(a7)
		subq.w     #4,a7
		lea.l      ACSblk,a0
		movea.l    (a0),a1
		movea.l    600(a1),a2
		movea.l    20(a2),a3
		movea.l    576(a1),a4
		clr.w      584(a1)
		jsr        Adr_next
		move.w     d0,d3
		ble.s      edoim_new_1
		ext.l      d0
		move.l     d0,d1
		add.l      d1,d1
		add.l      d0,d1
		lsl.l      #3,d1
		movea.l    20(a4),a0
		lea.l      24(a0,d1.l),a0
		cmpi.w     #$2721,22(a0)
		bne.s      edoim_new_1
		move.l     12(a0),(a7)
		jsr        Awi_diaend
		movea.l    (a7),a1
		lea.l      22(a1),a1
		moveq.l    #2,d0
		movea.l    a3,a0
		jsr        Aob_puttext
		moveq.l    #-1,d1
		moveq.l    #2,d0
		movea.l    a2,a0
		movea.l    102(a2),a1
		jsr        (a1)
		jsr        Awi_diastart
		move.w     d3,d0
		movea.l    a4,a0
		jsr        Adr_del
edoim_new_1:
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a4
		rts

edoim_edit:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		subq.w     #8,a7
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    (a2),a3
		movea.l    20(a2),a1
		movea.l    60(a1),a0
		movea.l    (a0),a1
		movea.l    (a3),a0
		movea.l    48(a0),a0
		jsr        find_entry
		move.l     a0,d0
		beq.s      edoim_edit_1
		ori.w      #$0004,84(a2)
		move.l     (a3),(a7)
		move.l     d0,4(a7)
		lea.l      (a7),a0
		movea.l    $000A5902,a1
		jsr        (a1)
		andi.w     #$FFFB,84(a2)
edoim_edit_1:
		addq.w     #8,a7
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

edoim_ok:
		movem.l    a2-a5,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a4
		movea.l    (a4),a5
		movea.l    (a5),a2
		ori.w      #$0001,6(a2)
		movea.l    4(a5),a0
		movea.l    4(a0),a3
		move.w     10(a5),d1
		ext.l      d1
		move.l     d1,d0
		lsl.l      #3,d0
		sub.l      d1,d0
		lsl.l      #3,d0
		adda.l     d0,a3
		movea.l    20(a4),a1
		movea.l    60(a1),a5
		movea.l    (a5),a5
		movea.l    48(a2),a0
		movea.l    a5,a1
		jsr        find_entry
		movea.l    a0,a4
		move.l     a4,d0
		bne.s      edoim_ok_1
		movea.l    a5,a1
		lea.l      ERR_IM_DEL,a0
		jsr        alert_str
		bra.s      edoim_ok_2
edoim_ok_1:
		movea.l    20(a3),a5
		cmpa.l     a4,a5
		beq.s      edoim_ok_3
		addq.w     #1,54(a4)
		move.l     a4,20(a3)
		movea.l    a5,a1
		movea.l    a2,a0
		jsr        del_image
edoim_ok_3:
		jsr        ed_abort
edoim_ok_2:
		movem.l    (a7)+,a2-a5
		rts

		.globl set_image
set_image:
		movem.l    a2-a4,-(a7)
		movea.l    a0,a3
		lea.l      sm,a4
		lea.l      -240(a4),a0
		jsr        Aob_create
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      set_image_1
		suba.l     a0,a0
		bra.s      set_image_2
set_image_1:
		movea.l    20(a3),a3
		lea.l      22(a3),a1
		moveq.l    #2,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		move.l     a2,(a4)
		movea.l    a4,a0
set_image_2:
		movem.l    (a7)+,a2-a4
		rts

edoim_list:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    ACSblk,a0
		movea.l    600(a0),a2
		movea.l    (a2),a0
		ori.w      #$0004,84(a2)
		lea.l      list_image,a3
		move.l     (a0),(a3)
		movea.l    (a0),a1
		move.l     48(a1),4(a3)
		movea.l    a3,a0
		movea.l    WI_LIST+8,a1
		jsr        (a1)
		andi.w     #$FFFB,84(a2)
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

	.data

ERR_IM_DEL:
		dc.b '[3][ Das Bild| ',$27,'%s',$27,' | ist nicht (mehr) Teil | dieser Datei][ OK ]',0
TEXT_001:
		dc.b 'Abbruch',0
TEXT_002:
		dc.b $00
TEXT_003:
		dc.b $4f
		dc.w $4b00
TEXT_004:
		dc.b 'Edit',0
TEXT_005:
		dc.b '1234567890123456789012345678901',0
TEXT_03:
		dc.b 'Bild (aus Liste ablegen):',0
help_title:
		dc.b 'Die Graphik-Zuordnung',0
title:
		dc.b ' BILD -',0
		dc.b $00
TEDI_001:
		dc.l TEXT_005
		dc.l TEXT_002
		dc.l TEXT_002
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $06
		dc.b $00
		dc.b $02
		dc.w $1180
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
A_3DBUTTON01:
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
		dc.l TEXT_03
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
ED_IMAGE:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $08
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
		dc.b $24
		dc.b $00
		dc.b $06
_01_ED_IMAGE:
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
		dc.l A_INNERFRAME02
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $22
		dc.b $00
		dc.b $03
_02_ED_IMAGE:
		dc.b $00
		dc.b $01
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $16
		dc.w $1005
		dc.b $00
		dc.b $00
		dc.l TEDI_001
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $01
_02aED_IMAGE:
		dc.l edoim_list
		dc.l edoim_new
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
_04_ED_IMAGE:
		dc.b $00
		dc.b $06
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON04
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_04aED_IMAGE:
		dc.l edoim_ok
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
_06_ED_IMAGE:
		dc.b $00
		dc.b $08
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON03
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_06aED_IMAGE:
		dc.l ed_abort
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
_08_ED_IMAGE:
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4005
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON01
		dc.b $00
		dc.b $19
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $0a
		dc.b $00
		dc.b $02
_08aED_IMAGE:
		dc.l edoim_edit
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8020
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
sm:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l edoim_ok
		dc.l Aob_delete
		dc.l title
		dc.l help_title
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00

