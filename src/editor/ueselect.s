		.include "country.inc"
		
		.text

		.globl init_select
init_select:
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
		suba.l     a0,a0
		rts

test_it:
		move.l     #A_select,(a1)
		clr.l      8(a1)
		moveq.l    #0,d0
		move.l     d0,20(a1)
		move.l     d0,16(a1)
		move.l     d0,12(a1)
		clr.l      24(a1)
		clr.l      28(a1)
		rts

abort:
		movea.l    data+64,a0
		movea.l    (a0),a0
		jsr        (a0)
		rts

	.data
visual:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $1a
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l xb0ad2
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $02
logical:
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $02
aud:
		dc.l xb0ad9
		dc.l xb0ad8
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.b 'A_select',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.l abort
		dc.l Aob_delete
		dc.l visual
		dc.l logical
		dc.l aud
		dc.l minsize
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l xb0ade
		dc.l xb0ae7
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xb0ad2:
		dc.b 'SELECT'
xb0ad8:
		dc.b 0
xb0ad9:
		dc.b '0x0L',0
xb0ade:
		dc.b 'SELECT |',0

		.IFEQ COUNTRY-COUNTRY_DE
xb0ae7:
		dc.b 'Der Select-Editor',0
		.ENDC

		.IFEQ COUNTRY-COUNTRY_US /* not translated */
xb0ae7:
		dc.b 'Der Select-Editor',0
		.ENDC

	.even
