
editstr_abort:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        term
		rts

editstr_ok:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        acc_string
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        term
		rts

acc_string:
		movem.l    a2-a4,-(a7)
		lea.l      -520(a7),a7
		movea.l    (a0),a2
		movea.l    (a2),a1
		ori.w      #$0001,6(a1)
		movea.l    20(a0),a3
		lea.l      (a7),a1
		moveq.l    #3,d0
		lea.l      72(a3),a0
		jsr        Auo_boxed
		lea.l      4(a7),a1
		moveq.l    #3,d0
		lea.l      96(a3),a0
		jsr        Auo_boxed
		movea.l    (a7),a1
		lea.l      8(a7),a0
		jsr        strcpy
		movea.l    4(a7),a1
		jsr        strcat
		lea.l      8(a7),a0
		jsr        Ast_create
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      acc_string_1
		movea.l    4(a2),a1
		movea.l    4(a1),a0
		jsr        Ax_free
		movea.l    4(a2),a0
		move.l     a4,4(a0)
		movea.l    a4,a0
		jsr        strlen
		addq.l     #1,d0
		movea.l    4(a2),a0
		move.l     d0,10(a0)
		movea.l    4(a2),a0
		move.l     d0,14(a0)
		movea.l    (a2),a0
		movea.l    52(a0),a1
		movea.l    18(a1),a0
		move.l     a0,d1
		beq.s      acc_string_1
		ori.w      #$0020,86(a0)
acc_string_1:
		lea.l      520(a7),a7
		movem.l    (a7)+,a2-a4
		rts

st_make:
		movem.l    a2-a4,-(a7)
		subq.w     #4,a7
		movea.l    a0,a2
		movea.l    4(a2),a3
		movea.l    18(a3),a4
		move.l     a4,d0
		beq.s      st_make_1
		movea.l    a4,a0
		jsr        Awi_show
		bra.s      st_make_2
st_make_1:
		moveq.l    #8,d0
		jsr        Ax_malloc
		move.l     a0,(a7)
		beq.s      st_make_3
		move.l     (a2),(a0)
		move.l     4(a2),4(a0)
		lea.l      22(a3),a1
		move.l     a1,WI_STRING+78
		movea.l    WI_STRING+90,a0
		move.l     a1,8(a0)
		lea.l      WI_STRING,a0
		jsr        Awi_create
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      st_make_3
		movea.l    (a2),a1
		pea.l      360(a1)
		lea.l      58(a3),a1
		jsr        wi_pos
		addq.w     #4,a7
		move.l     (a7),(a4)
		move.l     a4,18(a3)
		movea.l    a4,a0
		jsr        set_string
		movea.l    a4,a0
		movea.l    12(a4),a1
		jsr        (a1)
		tst.w      d0
		beq.s      st_make_2
		movea.l    a4,a0
		jsr        term
st_make_3:
		suba.l     a0,a0
		bra.s      st_make_4
st_make_2:
		movea.l    a4,a0
st_make_4:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a4
		rts

st_service:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		movea.l    a1,a4
		movea.l    (a0),a3
		subq.w     #2,d0
		beq.s      st_service_1
		sub.w      #$270E,d0
		beq.s      st_service_2
		bra.s      st_service_3
st_service_1:
		movea.l    a2,a0
		bsr        acc_string
		movea.l    a2,a0
		jsr        term
		bra.s      st_service_4
st_service_2:
		movea.l    4(a3),a1
		movea.l    a2,a0
		jsr        new_name
		bra.s      st_service_4
st_service_3:
		movea.l    a4,a1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Awi_service
		bra.s      st_service_5
st_service_4:
		moveq.l    #1,d0
st_service_5:
		movem.l    (a7)+,d3/a2-a4
		rts

set_string:
		movem.l    d3/a2-a3,-(a7)
		lea.l      -256(a7),a7
		movea.l    (a0),a1
		movea.l    20(a0),a2
		movea.l    4(a1),a0
		movea.l    4(a0),a3
		movea.l    a3,a0
		jsr        strlen
		move.l     d0,d3
		cmp.w      #$00FF,d3
		ble.s      set_string_1
		move.l     #$000000FF,d0
		lea.l      255(a3),a1
		lea.l      (a7),a0
		jsr        strncpy
		clr.b      255(a7)
		move.w     #$00FF,d3
		bra.s      set_string_2
set_string_1:
		clr.b      (a7)
set_string_2:
		move.l     a3,-(a7)
		move.w     d3,-(a7)
		lea.l      xa7992,a1
		moveq.l    #3,d0
		movea.l    a2,a0
		jsr        Aob_printf
		addq.w     #6,a7
		lea.l      (a7),a1
		moveq.l    #4,d0
		movea.l    a2,a0
		jsr        Aob_puttext
		lea.l      256(a7),a7
		movem.l    (a7)+,d3/a2-a3
		rts

term:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a2
		ori.w      #$0100,86(a2)
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
		jsr        Awi_closed
		movea.l    a2,a0
		jsr        Awi_delete
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

	.data

TEXT_002:
		dc.b $00
TEXT_003:
		dc.b $4f
		dc.w $4b00
TEXT_004:
		dc.b 'Abbruch',0
TEXT_01:
		dc.b ' Text-Editor ',0
TEXT_12:
		dc.b 'TEXT',0
		dc.b $00
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
A_BOXED01:
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
_MSK_IC_STRING:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $1ffb
		dc.w $fb81
		dc.w $dff8
		dc.w $1ffb
		dc.w $fb81
		dc.w $dff8
		dc.w $118b
		dc.w $09c3
		dc.w $9188
		dc.w $0183
		dc.b $00
		dc.b $e7
		dc.w $0180
		dc.w $0183
		dc.w $207e
		dc.w $0180
		dc.w $0183
		dc.w $e03c
		dc.w $0180
		dc.w $0183
		dc.w $e03c
		dc.w $0180
		dc.w $0183
		dc.w $207e
		dc.w $0180
		dc.w $0183
		dc.b $00
		dc.b $e7
		dc.w $0180
		dc.w $0183
		dc.w $09c3
		dc.w $8180
		dc.w $03c3
		dc.w $fb81
		dc.w $c3c0
		dc.w $07e3
		dc.w $fb81
		dc.w $c7e0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
_DAT_IC_STRING:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $1ffb
		dc.w $fb81
		dc.w $dff8
		dc.w $1ffb
		dc.w $fb81
		dc.w $dff8
		dc.w $118b
		dc.w $09c3
		dc.w $9188
		dc.w $0183
		dc.b $00
		dc.b $e7
		dc.w $0180
		dc.w $0183
		dc.w $207e
		dc.w $0180
		dc.w $0183
		dc.w $e03c
		dc.w $0180
		dc.w $0183
		dc.w $e03c
		dc.w $0180
		dc.w $0183
		dc.w $207e
		dc.w $0180
		dc.w $0183
		dc.b $00
		dc.b $e7
		dc.w $0180
		dc.w $0183
		dc.w $09c3
		dc.w $8180
		dc.w $03c3
		dc.w $fb81
		dc.w $c3c0
		dc.w $07e3
		dc.w $fb81
		dc.w $c7e0
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
IC_STRING:
		dc.l _MSK_IC_STRING
		dc.l _DAT_IC_STRING
		dc.l TEXT_12
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
		dc.b $1d
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $20
		dc.b $00
		dc.b $48
		dc.b $00
		dc.b $08
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
EDIT_STRING:
		dc.w $ffff
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $07
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
		dc.b $34
		dc.b $00
		dc.b $07
_01_EDIT_STRING:
		dc.b $00
		dc.b $05
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
		dc.l A_3DBUTTON03
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $32
		dc.b $00
		dc.b $02
_02_EDIT_STRING:
		dc.b $00
		dc.b $01
		dc.b $00
		dc.b $03
		dc.b $00
		dc.b $04
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
		dc.b $32
		dc.b $00
		dc.b $02
_03_EDIT_STRING:
		dc.b $00
		dc.b $04
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
		dc.b $32
		dc.b $00
		dc.b $01
_04_EDIT_STRING:
		dc.b $00
		dc.b $02
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
		dc.b $01
		dc.b $00
		dc.b $32
		dc.b $00
		dc.b $01
_05_EDIT_STRING:
		dc.b $00
		dc.b $07
		dc.w $ffff
		dc.w $ffff
		dc.b $00
		dc.b $18
		dc.w $4007
		dc.b $00
		dc.b $10
		dc.l A_3DBUTTON05
		dc.b $00
		dc.b $0d
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_05aEDIT_STRING:
		dc.l editstr_ok
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
_07_EDIT_STRING:
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
		dc.b $1d
		dc.b $00
		dc.b $04
		dc.b $00
		dc.b $0c
		dc.b $00
		dc.b $02
_07aEDIT_STRING:
		dc.l editstr_abort
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $8020
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
		.globl WI_STRING
WI_STRING:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.l st_service
		dc.l st_make
		dc.l Awi_open
		dc.l Awi_init
		dc.l EDIT_STRING
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.w $601f
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
		dc.w $fcf8
		dc.l TEXT_01
		dc.l TEXT_002
		dc.w $2710
		dc.w $0100
		dc.b $00
		dc.b $00
		dc.w $ffff
		dc.l IC_STRING
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
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xa7992:
		dc.b '%-*s',0
	.even
