		.include "country.inc"

		.text

editdat_abort:
		movea.l    ACSblk,a0
		movea.l    600(a0),a0
		jsr        term
		rts

dt_make:
		movem.l    a2-a4,-(a7)
		subq.w     #4,a7
		movea.l    a0,a2
		movea.l    4(a2),a3
		movea.l    18(a3),a4
		move.l     a4,d0
		beq.s      dt_make_1
		movea.l    a4,a0
		jsr        Awi_show
		bra.s      dt_make_2
dt_make_1:
		moveq.l    #8,d0
		jsr        Ax_malloc
		move.l     a0,(a7)
		move.l     a0,d0
		beq.s      dt_make_3
		movea.l    a2,a1
		moveq.l    #8,d0
		jsr        memcpy
		lea.l      22(a3),a0
		move.l     a0,WI_DATA+78
		movea.l    WI_DATA+90,a1
		move.l     a0,8(a1)
		lea.l      WI_DATA,a0
		jsr        Awi_create
		movea.l    a0,a4
		move.l     a4,d0
		beq.s      dt_make_3
		movea.l    (a2),a1
		pea.l      360(a1)
		lea.l      58(a3),a1
		jsr        wi_pos
		addq.w     #4,a7
		move.l     (a7),(a4)
		move.l     a4,18(a3)
		movea.l    a4,a0
		jsr        set_data
		movea.l    a4,a0
		movea.l    12(a4),a1
		jsr        (a1)
		tst.w      d0
		beq.s      dt_make_2
		movea.l    a4,a0
		jsr        term
dt_make_3:
		suba.l     a0,a0
		bra.s      dt_make_4
dt_make_2:
		movea.l    a4,a0
dt_make_4:
		addq.w     #4,a7
		movem.l    (a7)+,a2-a4
		rts

dt_service:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a2
		move.w     d0,d3
		movea.l    a1,a4
		movea.l    (a0),a3
		subq.w     #2,d0
		beq.s      dt_service_1
		sub.w      #$270E,d0
		beq.s      dt_service_2
		bra.s      dt_service_3
dt_service_1:
		movea.l    a2,a0
		jsr        term
		bra.s      dt_service_4
dt_service_2:
		movea.l    4(a3),a1
		movea.l    a2,a0
		jsr        new_name
		bra.s      dt_service_4
dt_service_3:
		movea.l    a4,a1
		move.w     d3,d0
		movea.l    a2,a0
		jsr        Awi_service
		bra.s      dt_service_5
dt_service_4:
		moveq.l    #1,d0
dt_service_5:
		movem.l    (a7)+,d3/a2-a4
		rts

set_data:
		movea.l    (a0),a1
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

		.globl MO_ADD
MO_ADD:
		dc.w $0008
		dc.w $0008
		dc.w $0001
		dc.w $0000
		dc.w $0001
		dc.w $0300
		dc.w $1fb0
		dc.w $3ff8
		dc.w $3ffc
		dc.w $7ffe
		dc.w $fffe
		dc.w $fffe
		dc.w $7fff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $3fff
		dc.w $0fff
		dc.w $01ff
		dc.w $007f
		dc.w $0300
		dc.w $1cb0
		dc.w $2448
		dc.w $2224
		dc.w $7112
		dc.w $9802
		dc.w $84c2
		dc.w $40c1
		dc.w $73f1
		dc.w $9bf0
		dc.w $84cc
		dc.w $40cc
		dc.w $303f
		dc.w $0e3f
		dc.w $018c
		dc.w $006c
		.globl MO_BLACK
MO_BLACK:
		dc.w $0000
		dc.w $0000
		dc.w $0001
		dc.w $0000
		dc.w $0001
		dc.w $c0ff
		dc.w $e0ff
		dc.w $f0ff
		dc.w $f8ff
		dc.w $fcff
		dc.w $feff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffc0
		dc.w $ffe0
		dc.w $fe00
		dc.w $ef00
		dc.w $cf00
		dc.w $8780
		dc.w $0780
		dc.w $0380
		dc.w $0000
		dc.w $407e
		dc.w $607e
		dc.w $707e
		dc.w $787e
		dc.w $7c7e
		dc.w $7e7e
		dc.w $7f00
		dc.w $7f80
		dc.w $7c00
		dc.w $6c00
		dc.w $4600
		dc.w $0600
		dc.w $0300
		dc.w $0300
		dc.w $0000
		.globl MO_DRAG
MO_DRAG:
		dc.w $0008
		dc.w $0008
		dc.w $0001
		dc.w $0000
		dc.w $0001
		dc.w $0300
		dc.w $1fb0
		dc.w $3ff8
		dc.w $3ffc
		dc.w $7ffe
		dc.w $fffe
		dc.w $fffe
		dc.w $7fff
		dc.w $7fff
		dc.w $ffff
		dc.w $ffff
		dc.w $7fff
		dc.w $3fff
		dc.w $0fff
		dc.w $01ff
		dc.w $007f
		dc.w $0300
		dc.w $1cb0
		dc.w $2448
		dc.w $2224
		dc.w $7112
		dc.w $9802
		dc.w $84c2
		dc.w $40c1
		dc.w $73f1
		dc.w $9bf0
		dc.w $84c0
		dc.w $40c0
		dc.w $3000
		dc.w $0e00
		dc.w $0180
		dc.w $0060
		.globl MO_TRANS
MO_TRANS:
		dc.w $0000
		dc.w $0000
		dc.w $0001
		dc.w $0000
		dc.w $0001
		dc.w $c0ff
		dc.w $e0ff
		dc.w $f0ff
		dc.w $f8ff
		dc.w $fcff
		dc.w $feff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffc0
		dc.w $ffe0
		dc.w $fe00
		dc.w $ef00
		dc.w $cf00
		dc.w $8780
		dc.w $0780
		dc.w $0380
		dc.w $00ff
		dc.w $40ab
		dc.w $60d5
		dc.w $70ab
		dc.w $78d5
		dc.w $7cab
		dc.w $7ed5
		dc.w $7fff
		dc.w $7f80
		dc.w $7c00
		dc.w $6c00
		dc.w $4600
		dc.w $0600
		dc.w $0300
		dc.w $0300
		dc.w $0000
		.globl MO_WHITE
MO_WHITE:
		dc.w $0000
		dc.w $0000
		dc.w $0001
		dc.w $0000
		dc.w $0001
		dc.w $c0ff
		dc.w $e0ff
		dc.w $f0ff
		dc.w $f8ff
		dc.w $fcff
		dc.w $feff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffc0
		dc.w $ffe0
		dc.w $fe00
		dc.w $ef00
		dc.w $cf00
		dc.w $8780
		dc.w $0780
		dc.w $0380
		dc.w $00ff
		dc.w $4081
		dc.w $6081
		dc.w $7081
		dc.w $7881
		dc.w $7c81
		dc.w $7e81
		dc.w $7fff
		dc.w $7f80
		dc.w $7c00
		dc.w $6c00
		dc.w $4600
		dc.w $0600
		dc.w $0300
		dc.w $0300
		dc.w $0000
		.globl ACSdescr
ACSdescr:
		dc.b 'ACS3.00',0
		dc.w $012c
		dc.w $ffb0
		dc.w $ffb0
		dc.w $0677
		dc.b '  ACSpro 3.0.0'
		dc.w $e100
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.l PUR_DESK
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0002
		dc.w $0000
		dc.w $0000
		dc.w $0003
		dc.w $0000
		dc.w $0000
		dc.w $0004
		dc.w $0000
		dc.w $0000
		dc.w $0001
		dc.w $0000
		dc.w $0000
		dc.w $0005
		dc.w $0000
		dc.w $0000
		dc.w $0006
		dc.w $0000
		dc.w $0000
		dc.w $0007
		dc.w $0000
		dc.w $0000
		dc.w $00ff
		dc.l MO_BLACK
		dc.w $00ff
		dc.l MO_WHITE
		dc.w $00ff
		dc.l MO_TRANS
		dc.w $00ff
		dc.l MO_DRAG
		dc.w $00ff
		dc.l MO_ADD
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.l x9bfe2
		dc.l x9c021
		dc.l x9c053
		dc.l x9c0c8
		dc.l x9c100
		dc.l x9c13c
		dc.l x9c177
		dc.l x9c1cb
		dc.l x9c224
		dc.l x9c291
		dc.l x9c2f8
		dc.l x9c33f
		dc.l x9c38c
		dc.l x9c3c6
		dc.l x9c406
		dc.l x9c45a
		dc.l x9c4a6
		dc.l x9c4fd
		dc.l x9c55b
		dc.l x9c59f
		dc.l x9c5dd
		dc.l x9c617
		dc.l x9c65a
		dc.l x9c69d
		dc.l x9c6f1
		dc.l x9c73b
		dc.l x9c78a
		dc.l x9c7cf
		dc.l x9c80f
		dc.l x9c85b
		dc.l x9c8ad
		dc.l x9c8b7
		dc.l x9c8bf
		dc.l x9c8c6
		.globl ACSconfig
ACSconfig:
		dc.l x9c020
		dc.l x9c8d0
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0004
		dc.l x9c8d3
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $000c
		dc.w $5045
		dc.w $0000
		dc.w $0000
		dc.l ACSinit0
		dc.l ACSinit

		.IFEQ COUNTRY-COUNTRY_DE
x9bfe2:
		dc.b '[3][ Es ist ein allgemeiner | Fehler aufgetreten! ][ Abbruch ]'
x9c020:
		dc.b 0
x9c021:
		dc.b '[1][ Ein Fehler ist aufgetreten! | %s][ Abbruch ]',0
x9c053:
		dc.b '[1][ Die Anzahl der momentan| darstellbaren Farben oder| die aktuelle Bildaufl”sung | ist nicht korrekt!][ Abbruch ]',0
x9c0c8:
		dc.b '[1][ Eine Datei liež sich | nicht erzeugen!][ Abbruch ]',0
x9c100:
		dc.b '[3][ Die Datei ',$27,'%s',$27,'| l„žt sich nicht erzeugen! ][ Abbruch ]',0
x9c13c:
		dc.b '[1][ Auf fremden Speicher | wurde zugegriffen!][ Abbruch ]',0
x9c177:
		dc.b '[2][ | Soll das Accessory | >>               << | gestartet werden?| ][Ja|  Nein  ]',0
x9c1cb:
		dc.b '[2][ Unbekannte GEM-Nachricht | erhalten.| ID = ',$27,'%s',$27,'| Weiterhin berichten?][Ja|  Nein  ]',0
x9c224:
		dc.b '[3][ Keine freie GEM-Fenster-ID | mehr vorhanden!| Abhilfe: Ein offenes| GEM-Fenster schliežen.][    OK    ]',0
x9c291:
		dc.b '[3][ Kein freier ACS-Fenster- | Platz mehr vorhanden!| Abhilfe: Ein ACS-Fenster| l”schen.][    OK    ]',0
x9c2f8:
		dc.b '[1][ Es ist ein Fehler bei der | Ein-/Ausgabe aufgetreten!][ Abbruch ]',0
x9c33f:
		dc.b '[1][ Es ist ein Fehler in| der Speicherverwaltung | aufgetreten!][ Abbruch ]',0
x9c38c:
		dc.b '[1][ Das Modul konnte nicht | geladen werden!][ Abbruch ]',0
x9c3c6:
		dc.b '[1][ Das Modul ',$27,'%s',$27,' | konnte nicht geladen werden! ][ Abbruch ]',0
x9c406:
		dc.b '[1][ Beim Laden des Moduls | (mit Pexec-3) ist ein| Fehler aufgetreten!][ Abbruch ]',0
x9c45a:
		dc.b '[1][ Beim Laden des Moduls | ',$27,'%s',$27,' ist ein | Fehler aufgetreten!][ Abbruch ]',0
x9c4a6:
		dc.b '[1][ Der dem Modul folgende| Restspeicher kann nicht | freigegeben werden!][ Abbruch ]',0
x9c4fd:
		dc.b '[1][ Der dem Modul ',$27,'%s',$27,' | folgenden Restspeicher kann | nicht freigegeben werden!][ Abbruch ]',0
x9c55b:
		dc.b '[1][ Die Adresse eines Speicher- | blocks ist ungerade!][ Abbruch ]',0
x9c59f:
		dc.b '[1][ Eine Datei liež sich| nicht korrekt ”ffnen! ][ Abbruch ]',0
x9c5dd:
		dc.b '[1][ Die Datei ',$27,'%s',$27,' | l„žt sich nicht ”ffnen!][ Abbruch ]',0
x9c617:
		dc.b '[1][ Es steht nicht gengend | Speicher zur Verfgung!][ Abbruch ]',0
x9c65a:
		dc.b '[1][ Ein Fehler trat auf einem| Ein-/Ausgabekanal auf!][ Abbruch ]',0
x9c69d:
		dc.b '[1][ Ein Speicherblock| befindet sich aužerhalb | der legalen Bereiche!][ Abbruch ]',0
x9c6f1:
		dc.b '[1][ Beim Lesen aus einer Datei| ist ein Fehler aufgetreten! ][ Abbruch ]',0
x9c73b:
		dc.b '[1][ Beim Lesen aus der Datei | ',$27,'%s',$27,' ist ein | Fehler aufgetreten!][ Abbruch ]',0
x9c78a:
		dc.b '[1][ Das Modul hat leider eine | falsche Versionsnummer!][ Abbruch ]',0
x9c7cf:
		dc.b '[1][Das Modul|',$27,'%s',$27,'|hat eine falsche|Versionsnummer!][ Abbruch ]',0
x9c80f:
		dc.b '[1][ Beim Schreiben in eine Datei | ist ein Fehler aufgetreten!][ Abbruch ]',0
x9c85b:
		dc.b '[1][ Beim Schreiben in die Datei | ',$27,'%s',$27,' ist ein | Fehler aufgetreten!][ Abbruch ]',0
x9c8ad:
		dc.b ' Achtung ',0
x9c8b7:
		dc.b ' Frage ',0
x9c8bf:
		dc.b ' Stop ',0
x9c8c6:
		dc.b ' Meldung ',0
x9c8d0:
		dc.b '%;',0
x9c8d3:
		dc.b 'PUR_DESK',0

/* FIXME: does not belong here? */
TEXT_002:
		dc.b 0
TEXT_003:
		dc.b 'Datenbl”cke werden von USERDEFs benutzt, und sind daher von den entsprechenden Editoren zu bearbeiten.',0
TEXT_005:
		dc.b 'OK',0
TEXT_006:
		dc.b 'DATEN',0
TEXT_01:
		dc.b ' Data-Editor ',0
		.ENDC

		.IFEQ COUNTRY-COUNTRY_US
x9bfe2:
		dc.b '[3][ Es ist ein allgemeiner | Fehler aufgetreten! ][ Abbruch ]'
x9c020:
		dc.b 0
x9c021:
		dc.b '[1][ Ein Fehler ist aufgetreten! | %s][ Abbruch ]',0
x9c053:
		dc.b '[1][ Die Anzahl der momentan| darstellbaren Farben oder| die aktuelle Bildaufl”sung | ist nicht korrekt!][ Abbruch ]',0
x9c0c8:
		dc.b '[1][ Eine Datei liež sich | nicht erzeugen!][ Abbruch ]',0
x9c100:
		dc.b '[3][ Die Datei ',$27,'%s',$27,'| l„žt sich nicht erzeugen! ][ Abbruch ]',0
x9c13c:
		dc.b '[1][ Auf fremden Speicher | wurde zugegriffen!][ Abbruch ]',0
x9c177:
		dc.b '[2][ | Soll das Accessory | >>               << | gestartet werden?| ][Ja|  Nein  ]',0
x9c1cb:
		dc.b '[2][ Unbekannte GEM-Nachricht | erhalten.| ID = ',$27,'%s',$27,'| Weiterhin berichten?][Ja|  Nein  ]',0
x9c224:
		dc.b '[3][ Keine freie GEM-Fenster-ID | mehr vorhanden!| Abhilfe: Ein offenes| GEM-Fenster schliežen.][    OK    ]',0
x9c291:
		dc.b '[3][ Kein freier ACS-Fenster- | Platz mehr vorhanden!| Abhilfe: Ein ACS-Fenster| l”schen.][    OK    ]',0
x9c2f8:
		dc.b '[1][ Es ist ein Fehler bei der | Ein-/Ausgabe aufgetreten!][ Abbruch ]',0
x9c33f:
		dc.b '[1][ Es ist ein Fehler in| der Speicherverwaltung | aufgetreten!][ Abbruch ]',0
x9c38c:
		dc.b '[1][ Das Modul konnte nicht | geladen werden!][ Abbruch ]',0
x9c3c6:
		dc.b '[1][ Das Modul ',$27,'%s',$27,' | konnte nicht geladen werden! ][ Abbruch ]',0
x9c406:
		dc.b '[1][ Beim Laden des Moduls | (mit Pexec-3) ist ein| Fehler aufgetreten!][ Abbruch ]',0
x9c45a:
		dc.b '[1][ Beim Laden des Moduls | ',$27,'%s',$27,' ist ein | Fehler aufgetreten!][ Abbruch ]',0
x9c4a6:
		dc.b '[1][ Der dem Modul folgende| Restspeicher kann nicht | freigegeben werden!][ Abbruch ]',0
x9c4fd:
		dc.b '[1][ Der dem Modul ',$27,'%s',$27,' | folgenden Restspeicher kann | nicht freigegeben werden!][ Abbruch ]',0
x9c55b:
		dc.b '[1][ Die Adresse eines Speicher- | blocks ist ungerade!][ Abbruch ]',0
x9c59f:
		dc.b '[1][ Eine Datei liež sich| nicht korrekt ”ffnen! ][ Abbruch ]',0
x9c5dd:
		dc.b '[1][ Die Datei ',$27,'%s',$27,' | l„žt sich nicht ”ffnen!][ Abbruch ]',0
x9c617:
		dc.b '[1][ Es steht nicht gengend | Speicher zur Verfgung!][ Abbruch ]',0
x9c65a:
		dc.b '[1][ Ein Fehler trat auf einem| Ein-/Ausgabekanal auf!][ Abbruch ]',0
x9c69d:
		dc.b '[1][ Ein Speicherblock| befindet sich aužerhalb | der legalen Bereiche!][ Abbruch ]',0
x9c6f1:
		dc.b '[1][ Beim Lesen aus einer Datei| ist ein Fehler aufgetreten! ][ Abbruch ]',0
x9c73b:
		dc.b '[1][ Beim Lesen aus der Datei | ',$27,'%s',$27,' ist ein | Fehler aufgetreten!][ Abbruch ]',0
x9c78a:
		dc.b '[1][ Das Modul hat leider eine | falsche Versionsnummer!][ Abbruch ]',0
x9c7cf:
		dc.b '[1][Das Modul|',$27,'%s',$27,'|hat eine falsche|Versionsnummer!][ Abbruch ]',0
x9c80f:
		dc.b '[1][ Beim Schreiben in eine Datei | ist ein Fehler aufgetreten!][ Abbruch ]',0
x9c85b:
		dc.b '[1][ Beim Schreiben in die Datei | ',$27,'%s',$27,' ist ein | Fehler aufgetreten!][ Abbruch ]',0
x9c8ad:
		dc.b ' Achtung ',0
x9c8b7:
		dc.b ' Frage ',0
x9c8bf:
		dc.b ' Stop ',0
x9c8c6:
		dc.b ' Meldung ',0
x9c8d0:
		dc.b '%;',0
x9c8d3:
		dc.b 'PUR_DESK',0

/* FIXME: does not belong here? */
TEXT_002:
		dc.b 0
TEXT_003:
		dc.b 'DATA-blocks are used by their respect objects and can therefore only edited by those.',0
TEXT_005:
		dc.b 'OK',0
TEXT_006:
		dc.b 'DATEN',0
TEXT_01:
		dc.b ' Data-Editor ',0
		.ENDC

		.even
DATAS_09:
		dc.w $0000
		dc.w $0000
		dc.w $02f0
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1004
		dc.w $8040
		dc.w $0088
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1100
		dc.w $8048
		dc.w $0488
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1e1f
		dc.w $e1f0
		dc.w $c3f8
		dc.w $1edf
		dc.w $edf6
		dc.w $dbf8
		dc.w $1edf
		dc.w $edf6
		dc.w $dbf8
		dc.w $1edf
		dc.w $edf6
		dc.w $dbf8
		dc.w $1edf
		dc.w $edf6
		dc.w $dbf8
		dc.w $1edf
		dc.w $edf6
		dc.w $dbf8
		dc.w $1e1f
		dc.w $e1f0
		dc.w $c3f8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fc3
		dc.w $e1fe
		dc.w $1ff8
		dc.w $1fdb
		dc.w $edfe
		dc.w $dff8
		dc.w $1fdb
		dc.w $edfe
		dc.w $dff8
		dc.w $1fdb
		dc.w $edfe
		dc.w $dff8
		dc.w $1fdb
		dc.w $edfe
		dc.w $dff8
		dc.w $1fdb
		dc.w $edfe
		dc.w $dff8
		dc.w $1fc3
		dc.w $e1fe
		dc.w $1ff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
DATAS_10:
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_3DBUTTON01_2:
		dc.l A_3Dbutton
		dc.w $29c1
		dc.w $0178
		dc.l Auo_string
		dc.l TEXT_005
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_3DBUTTON02_2:
		dc.l A_3Dbutton
		dc.w $21f1
		dc.w $01f8
		dc.l Auo_string
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_FTEXT01:
		dc.l A_ftext
		dc.w $0001
		dc.w $000d
		dc.l Auo_ftext
		dc.l TEXT_003
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
A_INNERFRAME02_2:
		dc.l A_innerframe
		dc.w $1000
		dc.w $8f19
		dc.l Auo_string
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
_C4_IC_DATA:
		dc.w $0004
		dc.l DATAS_09+6
		dc.l DATAS_10
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
_MSK_IC_DATA:
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
_DAT_IC_DATA:
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $11e4
		dc.w $9e4f
		dc.w $3c88
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $11e4
		dc.w $9e4f
		dc.w $3c88
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $113c
		dc.w $9e49
		dc.w $e488
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $1124
		dc.w $9249
		dc.w $2488
		dc.w $113c
		dc.w $9e49
		dc.w $e488
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1000
		dc.w $0000
		dc.w $0008
		dc.w $1fff
		dc.w $ffff
		dc.w $fff8
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
IC_DATA:
		dc.l _MSK_IC_DATA
		dc.l _DAT_IC_DATA
		dc.l TEXT_006
		dc.w $1000
		dc.w $0000
		dc.w $0000
		dc.w $000c
		dc.w $0000
		dc.w $0030
		dc.w $001f
		dc.w $0000
		dc.w $0020
		dc.w $0048
		dc.w $0008
		dc.l _C4_IC_DATA
EDIT_DATA:
		dc.w $ffff
		dc.w $0001
		dc.w $0004
		dc.w $0018
		dc.w $0040
		dc.w $0010
		dc.l A_3DBUTTON02_2
		dc.w $0000
		dc.w $0000
		dc.w $0023
		dc.w $0009
_01_EDIT_DATA:
		dc.w $0004
		dc.w $0002
		dc.w $0002
		dc.w $0018
		dc.w $0040
		dc.w $0000
		dc.l A_INNERFRAME02_2
		dc.w $0001
		dc.w $0000
		dc.w $0021
		dc.w $0006
_02_EDIT_DATA:
		dc.w $0001
		dc.w $0003
		dc.w $0003
		dc.w $0014
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $1101
		dc.w $0001
		dc.w $0001
		dc.w $001f
		dc.w $0004
_03_EDIT_DATA:
		dc.w $0002
		dc.w $ffff
		dc.w $ffff
		dc.w $0018
		dc.w $0000
		dc.w $0000
		dc.l A_FTEXT01
		dc.w $0001
		dc.w $0000
		dc.w $001d
		dc.w $0004
_04_EDIT_DATA:
		dc.w $0000
		dc.w $ffff
		dc.w $ffff
		dc.w $0018
		dc.w $0007
		dc.w $0010
		dc.l A_3DBUTTON01_2
		dc.w $000b
		dc.w $0006
		dc.w $000c
		dc.w $0002
_04aEDIT_DATA:
		dc.l editdat_abort
		dc.w $0000
		dc.w $0000
		dc.w $8020
		dc.w $884f
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		.globl WI_DATA
WI_DATA:
		dc.w $0000
		dc.w $0000
		dc.l dt_service
		dc.l dt_make
		dc.l Awi_open
		dc.l Awi_init
		dc.l EDIT_DATA
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $ffff
		dc.w $601f
		dc.w $0000
		dc.w $0000
		dc.w $0063
		dc.w $0063
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $ffff
		dc.w $0000
		dc.w $0000
		dc.w $fcf8
		dc.l TEXT_01
		dc.l TEXT_002
		dc.w $2710
		dc.w $0100
		dc.w $0000
		dc.w $ffff
		dc.l IC_DATA
		dc.w $0000
		dc.w $0000
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
		dc.w $0000
		dc.w $0000
		dc.w $0000
		dc.w $0000
