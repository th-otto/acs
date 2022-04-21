
comp:
		movea.l    (a1),a1
		jsr        Ast_cmp
		rts

compi:
		movea.l    (a1),a1
		movea.l    (a0),a0
		jsr        Ast_cmp
		rts

key_code:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a2
		clr.w      d3
key_code_6:
		clr.w      d0
		cmpi.b     #$07,(a2)
		bne.s      key_code_1
		or.w       #$8800,d3
		bra.s      key_code_2
key_code_1:
		cmpi.b     #$01,(a2)
		bne.s      key_code_3
		or.w       #$0300,d3
		bra.s      key_code_2
key_code_3:
		cmpi.b     #$5E,(a2)
		bne.s      key_code_4
		or.w       #$8400,d3
key_code_2:
		moveq.l    #1,d0
key_code_4:
		tst.w      d0
		beq.s      key_code_5
		addq.w     #1,a2
key_code_5:
		tst.w      d0
		bne.s      key_code_6
		lea.l      nktab,a3
		move.w     188(a3),d0
		bne.s      key_code_7
		lea.l      compi(pc),a1
		moveq.l    #6,d1
		move.w     186(a3),d0
		ext.l      d0
		movea.l    a3,a0
		jsr        qsort
		move.w     #$0001,188(a3)
key_code_7:
		pea.l      comp(pc)
		moveq.l    #6,d1
		move.w     186(a3),d0
		ext.l      d0
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        bsearch
		addq.w     #4,a7
		move.l     a0,d0
		bne.s      key_code_8
		cmpi.b     #$20,(a2)
		bcs.s      key_code_9
		move.b     1(a2),d1
		beq.s      key_code_10
		cmp.b      #$20,d1
		bne.s      key_code_9
key_code_10:
		clr.w      d0
		move.b     (a2),d0
		or.w       d3,d0
		bra.s      key_code_11
key_code_9:
		clr.w      d0
		bra.s      key_code_11
key_code_8:
		move.w     d3,d0
		or.w       4(a0),d0
		or.w       #$8000,d0
key_code_11:
		movem.l    (a7)+,d3/a2-a3
		rts

key_string:
		movem.l    d3-d5/a2-a3,-(a7)
		move.w     d0,d3
		lea.l      string,a2
		clr.b      (a2)
		move.w     d3,d0
		and.w      #$0300,d0
		beq.s      key_string_1
		lea.l      xc0a1d,a1
		movea.l    a2,a0
		jsr        strcat
key_string_1:
		move.w     d3,d0
		and.w      #$0400,d0
		beq.s      key_string_2
		lea.l      xc0a1f,a1
		movea.l    a2,a0
		jsr        strcat
key_string_2:
		move.w     d3,d0
		and.w      #$0800,d0
		beq.s      key_string_3
		lea.l      xc0a21,a1
		movea.l    a2,a0
		jsr        strcat
key_string_3:
		movea.l    a2,a0
		jsr        strlen
		move.l     d0,d4
		clr.w      d5
		lea.l      nktab,a3
		bra.s      key_string_4
key_string_7:
		move.w     d5,d0
		add.w      d0,d0
		add.w      d5,d0
		add.w      d0,d0
		cmp.b      5(a3,d0.w),d3
		bne.s      key_string_5
		movea.l    0(a3,d0.w),a1
		movea.l    a2,a0
		jsr        strcat
		bra.s      key_string_6
key_string_5:
		addq.w     #1,d5
key_string_4:
		cmp.w      186(a3),d5
		blt.s      key_string_7
		move.w     d3,d0
		and.w      #$00FF,d0
		cmp.w      #$0020,d0
		blt.s      key_string_8
		move.b     d3,d1
		and.b      #$FF,d1
		move.b     d1,0(a2,d4.w)
		addq.w     #1,d4
key_string_8:
		clr.b      0(a2,d4.w)
		movea.l    a2,a0
key_string_6:
		movem.l    (a7)+,d3-d5/a2-a3
		rts

	.data

nktab:
		dc.l xc0998
		dc.b $00
		dc.b $08
		dc.l xc099b
		dc.b $00
		dc.b $1f
		dc.l xc099f
		dc.b $00
		dc.b $0c
		dc.l xc09a3
		dc.b $00
		dc.b $0c
		dc.l xc09a8
		dc.b $00
		dc.b $01
		dc.l xc09ab
		dc.b $00
		dc.b $02
		dc.l xc09b0
		dc.b $00
		dc.b $04
		dc.l xc09b5
		dc.b $00
		dc.b $03
		dc.l xc09bb
		dc.b $00
		dc.b $05
		dc.l xc09c2
		dc.b $00
		dc.b $06
		dc.l xc09cb
		dc.b $00
		dc.b $09
		dc.l xc09cf
		dc.b $00
		dc.b $1b
		dc.l xc09d3
		dc.b $00
		dc.b $10
		dc.l xc09d6
		dc.b $00
		dc.b $11
		dc.l xc09d9
		dc.b $00
		dc.b $12
		dc.l xc09dc
		dc.b $00
		dc.b $13
		dc.l xc09df
		dc.b $00
		dc.b $14
		dc.l xc09e2
		dc.b $00
		dc.b $15
		dc.l xc09e5
		dc.b $00
		dc.b $16
		dc.l xc09e8
		dc.b $00
		dc.b $17
		dc.l xc09eb
		dc.b $00
		dc.b $18
		dc.l xc09ee
		dc.b $00
		dc.b $19
		dc.l xc09f2
		dc.b $00
		dc.b $1a
		dc.l xc09f6
		dc.b $00
		dc.b $1c
		dc.l xc09fa
		dc.b $00
		dc.b $1d
		dc.l xc09fe
		dc.b $00
		dc.b $0b
		dc.l xc0a02
		dc.b $00
		dc.b $0d
		dc.l xc0a06
		dc.b $00
		dc.b $0d
		dc.l xc0a0d
		dc.b $00
		dc.b $0a
		dc.l xc0a13
		dc.b $00
		dc.b $0e
		dc.l xc0a18
		dc.b $00
		dc.b $0f
		dc.b $00
		dc.b $1f
		dc.b $00
		dc.b $00
xc0998:
		dc.w $4253
		dc.b $00
xc099b:
		dc.b 'DEL',0
xc099f:
		dc.b 'CLR',0
xc09a3:
		dc.b 'HOME',0
xc09a8:
		dc.w $5550
		dc.b $00
xc09ab:
		dc.b 'DOWN',0
xc09b0:
		dc.b 'LEFT',0
xc09b5:
		dc.b 'RIGHT',0
xc09bb:
		dc.b 'PAGEUP',0
xc09c2:
		dc.b 'PAGEDOWN',0
xc09cb:
		dc.b 'TAB',0
xc09cf:
		dc.b 'ESC',0
xc09d3:
		dc.b $46
		dc.w $3100
xc09d6:
		dc.w $4632
		dc.b $00
xc09d9:
		dc.b $46
		dc.w $3300
xc09dc:
		dc.w $4634
		dc.b $00
xc09df:
		dc.b $46
		dc.w $3500
xc09e2:
		dc.w $4636
		dc.b $00
xc09e5:
		dc.b $46
		dc.w $3700
xc09e8:
		dc.w $4638
		dc.b $00
xc09eb:
		dc.b $46
		dc.w $3900
xc09ee:
		dc.b 'F10',0
xc09f2:
		dc.b 'F11',0
xc09f6:
		dc.b 'F12',0
xc09fa:
		dc.b 'F14',0
xc09fe:
		dc.b 'INS',0
xc0a02:
		dc.b 'RET',0
xc0a06:
		dc.b 'RETURN',0
xc0a0d:
		dc.b 'ENTER',0
xc0a13:
		dc.b 'HELP',0
xc0a18:
		dc.b 'UNDO',0
xc0a1d:
		dc.b $01
		dc.b $00
xc0a1f:
		dc.b $5e
		dc.b $00
xc0a21:
		dc.b $07
		dc.b $00
	.even

	.bss

string: ds.b 32

