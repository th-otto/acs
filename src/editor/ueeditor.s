		.globl init_editor
init_editor:
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
		move.w     18(a0),d0
		lsl.w      #3,d0
		move.w     d0,(a1)
		movea.l    ACSblk,a0
		move.w     20(a0),d1
		add.w      d1,d1
		movea.l    4(a7),a1
		move.w     d1,(a1)
		rts

object_tree:
		suba.l     a0,a0
		rts

test_it:
		move.l     #A_editor,(a1)
		move.l     #Auo_editor,8(a1)
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
		dc.l xb0ba8
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
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.l xb0baf
		dc.l xb0bb4
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.b 'A_editor',0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
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
		dc.l xb0bbf
		dc.l xb0bc9
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xb0ba8:
		dc.b 'EDITOR',0
xb0baf:
		dc.b '0x0L',0
xb0bb4:
		dc.b 'Auo_editor',0
xb0bbf:
		dc.b ' EDITOR |',0
xb0bc9:
		dc.b 'Der Editor',0
	.even
