
editdat_abort:
[0001b9c0] 2079 0010 1f12            movea.l    ACSblk,a0
[0001b9c6] 2068 0258                 movea.l    600(a0),a0
[0001b9ca] 4eb9 0001 baba            jsr        term
[0001b9d0] 4e75                      rts

dt_make:
[0001b9d2] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001b9d6] 594f                      subq.w     #4,a7
[0001b9d8] 2448                      movea.l    a0,a2
[0001b9da] 266a 0004                 movea.l    4(a2),a3
[0001b9de] 286b 0012                 movea.l    18(a3),a4
[0001b9e2] 200c                      move.l     a4,d0
[0001b9e4] 670a                      beq.s      dt_make_1
[0001b9e6] 204c                      movea.l    a4,a0
[0001b9e8] 4eb9 0004 f0ca            jsr        Awi_show
[0001b9ee] 6076                      bra.s      dt_make_2
dt_make_1:
[0001b9f0] 7008                      moveq.l    #8,d0
[0001b9f2] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001b9f8] 2e88                      move.l     a0,(a7)
[0001b9fa] 2008                      move.l     a0,d0
[0001b9fc] 6764                      beq.s      dt_make_3
[0001b9fe] 224a                      movea.l    a2,a1
[0001ba00] 7008                      moveq.l    #8,d0
[0001ba02] 4eb9 0007 6f44            jsr        memcpy
[0001ba08] 41eb 0016                 lea.l      22(a3),a0
[0001ba0c] 23c8 0009 d012            move.l     a0,$0009D012
[0001ba12] 2279 0009 d01e            movea.l    $0009D01E,a1
[0001ba18] 2348 0008                 move.l     a0,8(a1)
[0001ba1c] 41f9 0009 cfc4            lea.l      WI_DATA,a0
[0001ba22] 4eb9 0004 f41a            jsr        Awi_create
[0001ba28] 2848                      movea.l    a0,a4
[0001ba2a] 200c                      move.l     a4,d0
[0001ba2c] 6734                      beq.s      dt_make_3
[0001ba2e] 2252                      movea.l    (a2),a1
[0001ba30] 4869 0168                 pea.l      360(a1)
[0001ba34] 43eb 003a                 lea.l      58(a3),a1
[0001ba38] 4eb9 0001 47a8            jsr        wi_pos
[0001ba3e] 584f                      addq.w     #4,a7
[0001ba40] 2897                      move.l     (a7),(a4)
[0001ba42] 274c 0012                 move.l     a4,18(a3)
[0001ba46] 204c                      movea.l    a4,a0
[0001ba48] 4eb9 0001 bab6            jsr        set_data
[0001ba4e] 204c                      movea.l    a4,a0
[0001ba50] 226c 000c                 movea.l    12(a4),a1
[0001ba54] 4e91                      jsr        (a1)
[0001ba56] 4a40                      tst.w      d0
[0001ba58] 670c                      beq.s      dt_make_2
[0001ba5a] 204c                      movea.l    a4,a0
[0001ba5c] 4eb9 0001 baba            jsr        term
dt_make_3:
[0001ba62] 91c8                      suba.l     a0,a0
[0001ba64] 6002                      bra.s      dt_make_4
dt_make_2:
[0001ba66] 204c                      movea.l    a4,a0
dt_make_4:
[0001ba68] 584f                      addq.w     #4,a7
[0001ba6a] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001ba6e] 4e75                      rts

dt_service:
[0001ba70] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0001ba74] 2448                      movea.l    a0,a2
[0001ba76] 3600                      move.w     d0,d3
[0001ba78] 2849                      movea.l    a1,a4
[0001ba7a] 2650                      movea.l    (a0),a3
[0001ba7c] 5540                      subq.w     #2,d0
[0001ba7e] 6708                      beq.s      dt_service_1
[0001ba80] 907c 270e                 sub.w      #$270E,d0
[0001ba84] 670c                      beq.s      dt_service_2
[0001ba86] 6018                      bra.s      dt_service_3
dt_service_1:
[0001ba88] 204a                      movea.l    a2,a0
[0001ba8a] 4eb9 0001 baba            jsr        term
[0001ba90] 601c                      bra.s      dt_service_4
dt_service_2:
[0001ba92] 226b 0004                 movea.l    4(a3),a1
[0001ba96] 204a                      movea.l    a2,a0
[0001ba98] 4eb9 0001 45a2            jsr        new_name
[0001ba9e] 600e                      bra.s      dt_service_4
dt_service_3:
[0001baa0] 224c                      movea.l    a4,a1
[0001baa2] 3003                      move.w     d3,d0
[0001baa4] 204a                      movea.l    a2,a0
[0001baa6] 4eb9 0005 1276            jsr        Awi_service
[0001baac] 6002                      bra.s      dt_service_5
dt_service_4:
[0001baae] 7001                      moveq.l    #1,d0
dt_service_5:
[0001bab0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001bab4] 4e75                      rts

set_data:
[0001bab6] 2250                      movea.l    (a0),a1
[0001bab8] 4e75                      rts

term:
[0001baba] 2f0a                      move.l     a2,-(a7)
[0001babc] 2f0b                      move.l     a3,-(a7)
[0001babe] 2448                      movea.l    a0,a2
[0001bac0] 006a 0100 0056            ori.w      #$0100,86(a2)
[0001bac6] 2650                      movea.l    (a0),a3
[0001bac8] 226b 0004                 movea.l    4(a3),a1
[0001bacc] 42a9 0012                 clr.l      18(a1)
[0001bad0] 302a 0056                 move.w     86(a2),d0
[0001bad4] c07c 0800                 and.w      #$0800,d0
[0001bad8] 6716                      beq.s      term_1
[0001bada] 43ea 002c                 lea.l      44(a2),a1
[0001bade] 206b 0004                 movea.l    4(a3),a0
[0001bae2] 41e8 003a                 lea.l      58(a0),a0
[0001bae6] 7008                      moveq.l    #8,d0
[0001bae8] 4eb9 0007 6f44            jsr        memcpy
[0001baee] 6014                      bra.s      term_2
term_1:
[0001baf0] 7008                      moveq.l    #8,d0
[0001baf2] 43ea 0024                 lea.l      36(a2),a1
[0001baf6] 206b 0004                 movea.l    4(a3),a0
[0001bafa] 41e8 003a                 lea.l      58(a0),a0
[0001bafe] 4eb9 0007 6f44            jsr        memcpy
term_2:
[0001bb04] 204b                      movea.l    a3,a0
[0001bb06] 4eb9 0004 7e26            jsr        Ax_free
[0001bb0c] 204a                      movea.l    a2,a0
[0001bb0e] 4eb9 0005 013e            jsr        Awi_closed
[0001bb14] 204a                      movea.l    a2,a0
[0001bb16] 4eb9 0005 0330            jsr        Awi_delete
[0001bb1c] 265f                      movea.l    (a7)+,a3
[0001bb1e] 245f                      movea.l    (a7)+,a2
[0001bb20] 4e75                      rts

	.data

A_MISSENTRY:
[0009b2a6]                           dc.b '[3][ Objekteintrag | nicht vorhanden! ][ Abbruch ]',0
ERR_FILETYP:
[0009b2d9]                           dc.b '[3][ Falscher Dateityp!][ Abbruch ]',0
ERR_OPEN:
[0009b2fd]                           dc.b '[3][ | Konnte Datei ',$27,'%s',$27,' | nicht finden oder es trat | ein Fehler beim ôffnen ein! | ][ Abbruch ]',0
ERR_TRANS:
[0009b35f]                           dc.b '[3][ Die Translationstabelle ist| Åbergelaufen! Bitte das ACS- | Modul in mehrere Module | aufteilen! ][ Abbruch ]',0
ERR_TYPE:
[0009b3d2]                           dc.b '[1][ Ein unzulÑssiger Objekttyp | wurde importiert!][ Abbruch ]',0
TEXT_002:
[0009b412]                           dc.b $00
TEXT_003:
[0009b413]                           dc.b $4f
[0009b414]                           dc.w $4b00
TEXT_004:
[0009b416]                           dc.b 'Abbruch',0
TEXT_006:
[0009b41e]                           dc.b '1234567890123456789012345678901',0
TEXT_01:
[0009b43e]                           dc.b 'Saving...',0
TEXT_02:
[0009b448]                           dc.b 'Ausgabe:',0
TEXT_03:
[0009b451]                           dc.b 'Datei:',0
TEXT_04:
[0009b458]                           dc.b 'Liste:',0
TEXT_05:
[0009b45f]                           dc.b 'Object:',0
TEXT_07:
[0009b467]                           dc.b '12345*12345',0
TEXT_10:
[0009b473]                           dc.b $31
[0009b474]                           dc.b $00
TEXT_191:
[0009b475]                           dc.b 'Name:',0
al1_obj:
[0009b47b]                           dc.b 'ML1-ALERT LIST',0
al2_obj:
[0009b48a]                           dc.b 'ML2-ALERT LIST',0
al3_obj:
[0009b499]                           dc.b 'ML3-ALERT LIST',0
al_obj:
[0009b4a8]                           dc.b 'ALERT LIST',0
ic_obj:
[0009b4b3]                           dc.b 'ICON LIST',0
if_obj:
[0009b4bd]                           dc.b 'DATA LIST',0
im_obj:
[0009b4c7]                           dc.b 'IMAGE LIST',0
me_obj:
[0009b4d2]                           dc.b 'MENU LIST',0
mf_obj:
[0009b4dc]                           dc.b 'MOUSEFORM LIST',0
ml1_obj:
[0009b4eb]                           dc.b 'ML1-TEXT LIST',0
ml2_obj:
[0009b4f9]                           dc.b 'ML2-TEXT LIST',0
ml3_obj:
[0009b507]                           dc.b 'ML3-TEXT LIST',0
ob_obj:
[0009b515]                           dc.b 'OBJECTTREE LIST',0
pu_obj:
[0009b525]                           dc.b 'POPUP LIST',0
rf_obj:
[0009b530]                           dc.b 'REFERENCE LIST',0
st_obj:
[0009b53f]                           dc.b 'TEXT LIST',0
te_obj:
[0009b549]                           dc.b 'TEDINFO LIST',0
us_obj:
[0009b556]                           dc.b 'USERBLK LIST',0
wi_obj:
[0009b563]                           dc.b 'WINDOW LIST',0
[0009b56f]                           dc.b $00
TEDINFO_01:
[0009b570] 0009b43e                  dc.l TEXT_01
[0009b574] 0009b412                  dc.l TEXT_002
[0009b578] 0009b412                  dc.l TEXT_002
[0009b57c]                           dc.b $00
[0009b57d]                           dc.b $03
[0009b57e]                           dc.b $00
[0009b57f]                           dc.b $06
[0009b580]                           dc.b $00
[0009b581]                           dc.b $02
[0009b582]                           dc.w $1071
[0009b584]                           dc.b $00
[0009b585]                           dc.b $00
[0009b586]                           dc.b $00
[0009b587]                           dc.b $00
[0009b588]                           dc.b $00
[0009b589]                           dc.b $0a
[0009b58a]                           dc.b $00
[0009b58b]                           dc.b $01
TEDINFO_02:
[0009b58c] 0009b467                  dc.l TEXT_07
[0009b590] 0009b412                  dc.l TEXT_002
[0009b594] 0009b412                  dc.l TEXT_002
[0009b598]                           dc.b $00
[0009b599]                           dc.b $03
[0009b59a]                           dc.b $00
[0009b59b]                           dc.b $06
[0009b59c]                           dc.b $00
[0009b59d]                           dc.b $02
[0009b59e]                           dc.w $1100
[0009b5a0]                           dc.b $00
[0009b5a1]                           dc.b $00
[0009b5a2]                           dc.b $00
[0009b5a3]                           dc.b $00
[0009b5a4]                           dc.b $00
[0009b5a5]                           dc.b $0c
[0009b5a6]                           dc.b $00
[0009b5a7]                           dc.b $01
TEDINFO_064:
[0009b5a8] 0009b41e                  dc.l TEXT_006
[0009b5ac] 0009b412                  dc.l TEXT_002
[0009b5b0] 0009b412                  dc.l TEXT_002
[0009b5b4]                           dc.b $00
[0009b5b5]                           dc.b $03
[0009b5b6]                           dc.b $00
[0009b5b7]                           dc.b $06
[0009b5b8]                           dc.b $00
[0009b5b9]                           dc.b $00
[0009b5ba]                           dc.w $11f0
[0009b5bc]                           dc.b $00
[0009b5bd]                           dc.b $00
[0009b5be]                           dc.b $00
[0009b5bf]                           dc.b $00
[0009b5c0]                           dc.b $00
[0009b5c1]                           dc.b $20
[0009b5c2]                           dc.b $00
[0009b5c3]                           dc.b $01
A_3DBUTTON01:
[0009b5c4] 0005a4e2                  dc.l A_3Dbutton
[0009b5c8]                           dc.w $a021
[0009b5ca]                           dc.w $91f8
[0009b5cc] 00059318                  dc.l Auo_string
[0009b5d0]                           dc.b $00
[0009b5d1]                           dc.b $00
[0009b5d2]                           dc.b $00
[0009b5d3]                           dc.b $00
[0009b5d4]                           dc.b $00
[0009b5d5]                           dc.b $00
[0009b5d6]                           dc.b $00
[0009b5d7]                           dc.b $00
[0009b5d8]                           dc.b $00
[0009b5d9]                           dc.b $00
[0009b5da]                           dc.b $00
[0009b5db]                           dc.b $00
[0009b5dc]                           dc.b $00
[0009b5dd]                           dc.b $00
[0009b5de]                           dc.b $00
[0009b5df]                           dc.b $00
[0009b5e0]                           dc.b $00
[0009b5e1]                           dc.b $00
[0009b5e2]                           dc.b $00
[0009b5e3]                           dc.b $00
A_3DBUTTON02:
[0009b5e4] 0005a4e2                  dc.l A_3Dbutton
[0009b5e8]                           dc.w $29c1
[0009b5ea]                           dc.w $0178
[0009b5ec] 00059318                  dc.l Auo_string
[0009b5f0] 0009b413                  dc.l TEXT_003
[0009b5f4]                           dc.b $00
[0009b5f5]                           dc.b $00
[0009b5f6]                           dc.b $00
[0009b5f7]                           dc.b $00
[0009b5f8]                           dc.b $00
[0009b5f9]                           dc.b $00
[0009b5fa]                           dc.b $00
[0009b5fb]                           dc.b $00
[0009b5fc]                           dc.b $00
[0009b5fd]                           dc.b $00
[0009b5fe]                           dc.b $00
[0009b5ff]                           dc.b $00
[0009b600]                           dc.b $00
[0009b601]                           dc.b $00
[0009b602]                           dc.b $00
[0009b603]                           dc.b $00
A_3DBUTTON03:
[0009b604] 0005a4e2                  dc.l A_3Dbutton
[0009b608]                           dc.w $29f1
[0009b60a]                           dc.w $01f8
[0009b60c] 00059318                  dc.l Auo_string
[0009b610]                           dc.b $00
[0009b611]                           dc.b $00
[0009b612]                           dc.b $00
[0009b613]                           dc.b $00
[0009b614]                           dc.b $00
[0009b615]                           dc.b $00
[0009b616]                           dc.b $00
[0009b617]                           dc.b $00
[0009b618]                           dc.b $00
[0009b619]                           dc.b $00
[0009b61a]                           dc.b $00
[0009b61b]                           dc.b $00
[0009b61c]                           dc.b $00
[0009b61d]                           dc.b $00
[0009b61e]                           dc.b $00
[0009b61f]                           dc.b $00
[0009b620]                           dc.b $00
[0009b621]                           dc.b $00
[0009b622]                           dc.b $00
[0009b623]                           dc.b $00
A_3DBUTTON05:
[0009b624] 0005a4e2                  dc.l A_3Dbutton
[0009b628]                           dc.w $29c1
[0009b62a]                           dc.w $0178
[0009b62c] 00059318                  dc.l Auo_string
[0009b630] 0009b416                  dc.l TEXT_004
[0009b634]                           dc.b $00
[0009b635]                           dc.b $00
[0009b636]                           dc.b $00
[0009b637]                           dc.b $00
[0009b638]                           dc.b $00
[0009b639]                           dc.b $00
[0009b63a]                           dc.b $00
[0009b63b]                           dc.b $00
[0009b63c]                           dc.b $00
[0009b63d]                           dc.b $00
[0009b63e]                           dc.b $00
[0009b63f]                           dc.b $00
[0009b640]                           dc.b $00
[0009b641]                           dc.b $00
[0009b642]                           dc.b $00
[0009b643]                           dc.b $00
A_BOXED02:
[0009b644] 0005e9d2                  dc.l A_boxed
[0009b648]                           dc.w $9038
[0009b64a]                           dc.w $1f12
[0009b64c] 0005e010                  dc.l Auo_boxed
[0009b650]                           dc.b $00
[0009b651]                           dc.b $00
[0009b652]                           dc.b $00
[0009b653]                           dc.b $00
[0009b654]                           dc.b $00
[0009b655]                           dc.b $00
[0009b656]                           dc.b $00
[0009b657]                           dc.b $00
[0009b658]                           dc.b $00
[0009b659]                           dc.b $00
[0009b65a]                           dc.b $00
[0009b65b]                           dc.b $00
[0009b65c]                           dc.b $00
[0009b65d]                           dc.b $00
[0009b65e]                           dc.b $00
[0009b65f]                           dc.b $00
[0009b660]                           dc.b $00
[0009b661]                           dc.b $00
[0009b662]                           dc.b $00
[0009b663]                           dc.b $00
A_INNERFRAME02:
[0009b664] 00059f9c                  dc.l A_innerframe
[0009b668]                           dc.w $1800
[0009b66a]                           dc.w $8f19
[0009b66c] 00059318                  dc.l Auo_string
[0009b670] 0009b475                  dc.l TEXT_191
[0009b674]                           dc.b $00
[0009b675]                           dc.b $00
[0009b676]                           dc.b $00
[0009b677]                           dc.b $00
[0009b678]                           dc.b $00
[0009b679]                           dc.b $00
[0009b67a]                           dc.b $00
[0009b67b]                           dc.b $00
[0009b67c]                           dc.b $00
[0009b67d]                           dc.b $00
[0009b67e]                           dc.b $00
[0009b67f]                           dc.b $00
[0009b680]                           dc.b $00
[0009b681]                           dc.b $00
[0009b682]                           dc.b $00
[0009b683]                           dc.b $00
_IMG_IM_SORT_XY:
[0009b684]                           dc.b $00
[0009b685]                           dc.b $00
[0009b686]                           dc.b $00
[0009b687]                           dc.b $00
[0009b688]                           dc.b $00
[0009b689]                           dc.b $00
[0009b68a]                           dc.b $00
[0009b68b]                           dc.b $00
[0009b68c]                           dc.b $00
[0009b68d]                           dc.b $00
[0009b68e]                           dc.b $00
[0009b68f]                           dc.b $00
[0009b690]                           dc.w $08ff
[0009b692]                           dc.w $e04f
[0009b694]                           dc.w $fe38
[0009b696]                           dc.w $08ff
[0009b698]                           dc.w $e02f
[0009b69a]                           dc.w $fe08
[0009b69c]                           dc.w $08ff
[0009b69e]                           dc.w $ffff
[0009b6a0]                           dc.w $fe38
[0009b6a2]                           dc.w $08ff
[0009b6a4]                           dc.w $e02f
[0009b6a6]                           dc.w $fe20
[0009b6a8]                           dc.w $08ff
[0009b6aa]                           dc.w $e04f
[0009b6ac]                           dc.w $fe38
[0009b6ae]                           dc.b $00
[0009b6af]                           dc.b $00
[0009b6b0]                           dc.b $00
[0009b6b1]                           dc.b $00
[0009b6b2]                           dc.w $4000
[0009b6b4]                           dc.b $00
[0009b6b5]                           dc.b $00
[0009b6b6]                           dc.b $00
[0009b6b7]                           dc.b $00
[0009b6b8]                           dc.w $4000
[0009b6ba]                           dc.b $00
[0009b6bb]                           dc.b $07
[0009b6bc]                           dc.w $ffff
[0009b6be]                           dc.w $c000
[0009b6c0]                           dc.b $00
[0009b6c1]                           dc.b $15
[0009b6c2]                           dc.b $00
[0009b6c3]                           dc.b $00
[0009b6c4]                           dc.b $00
[0009b6c5]                           dc.b $00
[0009b6c6]                           dc.b $00
[0009b6c7]                           dc.b $0e
[0009b6c8]                           dc.b $00
[0009b6c9]                           dc.b $00
[0009b6ca]                           dc.b $00
[0009b6cb]                           dc.b $00
[0009b6cc]                           dc.b $00
[0009b6cd]                           dc.b $04
[0009b6ce]                           dc.b $00
[0009b6cf]                           dc.b $00
[0009b6d0]                           dc.b $00
[0009b6d1]                           dc.b $00
[0009b6d2]                           dc.w $1cff
[0009b6d4]                           dc.w $e04f
[0009b6d6]                           dc.w $fe20
[0009b6d8]                           dc.w $04ff
[0009b6da]                           dc.w $e02f
[0009b6dc]                           dc.w $fe28
[0009b6de]                           dc.w $0cff
[0009b6e0]                           dc.w $ffff
[0009b6e2]                           dc.w $fe38
[0009b6e4]                           dc.w $04ff
[0009b6e6]                           dc.w $e02f
[0009b6e8]                           dc.w $fe08
[0009b6ea]                           dc.w $1cff
[0009b6ec]                           dc.w $e04f
[0009b6ee]                           dc.w $fe08
[0009b6f0]                           dc.b $00
[0009b6f1]                           dc.b $00
[0009b6f2]                           dc.b $00
[0009b6f3]                           dc.b $00
[0009b6f4]                           dc.w $4000
[0009b6f6]                           dc.b $00
[0009b6f7]                           dc.b $00
[0009b6f8]                           dc.b $00
[0009b6f9]                           dc.b $00
[0009b6fa]                           dc.w $4000
[0009b6fc]                           dc.b $00
[0009b6fd]                           dc.b $07
[0009b6fe]                           dc.w $ffff
[0009b700]                           dc.w $c000
[0009b702]                           dc.b $00
[0009b703]                           dc.b $15
[0009b704]                           dc.b $00
[0009b705]                           dc.b $00
[0009b706]                           dc.b $00
[0009b707]                           dc.b $00
[0009b708]                           dc.b $00
[0009b709]                           dc.b $0e
[0009b70a]                           dc.b $00
[0009b70b]                           dc.b $00
[0009b70c]                           dc.b $00
[0009b70d]                           dc.b $00
[0009b70e]                           dc.b $00
[0009b70f]                           dc.b $04
[0009b710]                           dc.b $00
[0009b711]                           dc.b $00
[0009b712]                           dc.b $00
[0009b713]                           dc.b $00
[0009b714]                           dc.w $1cff
[0009b716]                           dc.w $e04f
[0009b718]                           dc.w $fe10
[0009b71a]                           dc.w $10ff
[0009b71c]                           dc.w $e02f
[0009b71e]                           dc.w $fe20
[0009b720]                           dc.w $1cff
[0009b722]                           dc.w $ffff
[0009b724]                           dc.w $fe38
[0009b726]                           dc.w $04ff
[0009b728]                           dc.w $e02f
[0009b72a]                           dc.w $fe28
[0009b72c]                           dc.w $1cff
[0009b72e]                           dc.w $e04f
[0009b730]                           dc.w $fe38
[0009b732]                           dc.b $00
[0009b733]                           dc.b $00
[0009b734]                           dc.b $00
[0009b735]                           dc.b $00
[0009b736]                           dc.b $00
[0009b737]                           dc.b $00
[0009b738]                           dc.b $00
[0009b739]                           dc.b $00
[0009b73a]                           dc.b $00
[0009b73b]                           dc.b $00
[0009b73c]                           dc.b $00
[0009b73d]                           dc.b $00
[0009b73e]                           dc.b $00
[0009b73f]                           dc.b $00
[0009b740]                           dc.b $00
[0009b741]                           dc.b $00
[0009b742]                           dc.b $00
[0009b743]                           dc.b $00
IM_SORT_XY:
[0009b744] 0009b684                  dc.l _IMG_IM_SORT_XY
[0009b748]                           dc.b $00
[0009b749]                           dc.b $06
[0009b74a]                           dc.b $00
[0009b74b]                           dc.b $20
[0009b74c]                           dc.b $00
[0009b74d]                           dc.b $00
[0009b74e]                           dc.b $00
[0009b74f]                           dc.b $00
[0009b750]                           dc.b $00
[0009b751]                           dc.b $01
_IMG_IM_SORT_YX:
[0009b752]                           dc.b $00
[0009b753]                           dc.b $00
[0009b754]                           dc.b $00
[0009b755]                           dc.b $00
[0009b756]                           dc.b $00
[0009b757]                           dc.b $00
[0009b758]                           dc.b $00
[0009b759]                           dc.b $00
[0009b75a]                           dc.b $00
[0009b75b]                           dc.b $00
[0009b75c]                           dc.b $00
[0009b75d]                           dc.b $00
[0009b75e]                           dc.w $08ff
[0009b760]                           dc.w $e04f
[0009b762]                           dc.w $fe20
[0009b764]                           dc.w $08ff
[0009b766]                           dc.w $e02f
[0009b768]                           dc.w $fe28
[0009b76a]                           dc.w $08ff
[0009b76c]                           dc.w $e1ff
[0009b76e]                           dc.w $fe38
[0009b770]                           dc.w $08ff
[0009b772]                           dc.w $e12f
[0009b774]                           dc.w $fe08
[0009b776]                           dc.w $08ff
[0009b778]                           dc.w $e14f
[0009b77a]                           dc.w $fe08
[0009b77c]                           dc.b $00
[0009b77d]                           dc.b $04
[0009b77e]                           dc.w $0100
[0009b780]                           dc.w $4000
[0009b782]                           dc.b $00
[0009b783]                           dc.b $04
[0009b784]                           dc.w $0100
[0009b786]                           dc.w $4000
[0009b788]                           dc.b $00
[0009b789]                           dc.b $04
[0009b78a]                           dc.w $0100
[0009b78c]                           dc.w $4000
[0009b78e]                           dc.b $00
[0009b78f]                           dc.b $15
[0009b790]                           dc.w $0101
[0009b792]                           dc.w $5000
[0009b794]                           dc.b $00
[0009b795]                           dc.b $0e
[0009b796]                           dc.w $0100
[0009b798]                           dc.w $e000
[0009b79a]                           dc.b $00
[0009b79b]                           dc.b $04
[0009b79c]                           dc.w $0100
[0009b79e]                           dc.w $4000
[0009b7a0]                           dc.w $1cff
[0009b7a2]                           dc.w $e10f
[0009b7a4]                           dc.w $fe38
[0009b7a6]                           dc.w $04ff
[0009b7a8]                           dc.w $e10f
[0009b7aa]                           dc.w $fe20
[0009b7ac]                           dc.w $1cff
[0009b7ae]                           dc.w $e10f
[0009b7b0]                           dc.w $fe38
[0009b7b2]                           dc.w $10ff
[0009b7b4]                           dc.w $e10f
[0009b7b6]                           dc.w $fe08
[0009b7b8]                           dc.w $1cff
[0009b7ba]                           dc.w $e10f
[0009b7bc]                           dc.w $fe38
[0009b7be]                           dc.b $00
[0009b7bf]                           dc.b $04
[0009b7c0]                           dc.w $0100
[0009b7c2]                           dc.w $4000
[0009b7c4]                           dc.b $00
[0009b7c5]                           dc.b $04
[0009b7c6]                           dc.w $0100
[0009b7c8]                           dc.w $4000
[0009b7ca]                           dc.b $00
[0009b7cb]                           dc.b $04
[0009b7cc]                           dc.w $0100
[0009b7ce]                           dc.w $4000
[0009b7d0]                           dc.b $00
[0009b7d1]                           dc.b $15
[0009b7d2]                           dc.w $0101
[0009b7d4]                           dc.w $5000
[0009b7d6]                           dc.b $00
[0009b7d7]                           dc.b $0e
[0009b7d8]                           dc.w $0100
[0009b7da]                           dc.w $e000
[0009b7dc]                           dc.b $00
[0009b7dd]                           dc.b $04
[0009b7de]                           dc.w $0100
[0009b7e0]                           dc.w $4000
[0009b7e2]                           dc.w $1cff
[0009b7e4]                           dc.w $e10f
[0009b7e6]                           dc.w $fe10
[0009b7e8]                           dc.w $04ff
[0009b7ea]                           dc.w $e10f
[0009b7ec]                           dc.w $fe20
[0009b7ee]                           dc.w $0cff
[0009b7f0]                           dc.w $ff0f
[0009b7f2]                           dc.w $fe38
[0009b7f4]                           dc.w $04ff
[0009b7f6]                           dc.w $e00f
[0009b7f8]                           dc.w $fe28
[0009b7fa]                           dc.w $1cff
[0009b7fc]                           dc.w $e00f
[0009b7fe]                           dc.w $fe38
[0009b800]                           dc.b $00
[0009b801]                           dc.b $00
[0009b802]                           dc.b $00
[0009b803]                           dc.b $00
[0009b804]                           dc.b $00
[0009b805]                           dc.b $00
[0009b806]                           dc.b $00
[0009b807]                           dc.b $00
[0009b808]                           dc.b $00
[0009b809]                           dc.b $00
[0009b80a]                           dc.b $00
[0009b80b]                           dc.b $00
[0009b80c]                           dc.b $00
[0009b80d]                           dc.b $00
[0009b80e]                           dc.b $00
[0009b80f]                           dc.b $00
[0009b810]                           dc.b $00
[0009b811]                           dc.b $00
IM_SORT_YX:
[0009b812] 0009b752                  dc.l _IMG_IM_SORT_YX
[0009b816]                           dc.b $00
[0009b817]                           dc.b $06
[0009b818]                           dc.b $00
[0009b819]                           dc.b $20
[0009b81a]                           dc.b $00
[0009b81b]                           dc.b $00
[0009b81c]                           dc.b $00
[0009b81d]                           dc.b $00
[0009b81e]                           dc.b $00
[0009b81f]                           dc.b $01
_IMG_SUNRISE:
[0009b820]                           dc.b $00
[0009b821]                           dc.b $00
[0009b822]                           dc.b $00
[0009b823]                           dc.b $00
[0009b824]                           dc.b $00
[0009b825]                           dc.b $00
[0009b826]                           dc.b $00
[0009b827]                           dc.b $00
[0009b828]                           dc.w $2110
[0009b82a]                           dc.b $00
[0009b82b]                           dc.b $00
[0009b82c]                           dc.b $00
[0009b82d]                           dc.b $00
[0009b82e]                           dc.w $2110
[0009b830]                           dc.w $3700
[0009b832]                           dc.b $00
[0009b833]                           dc.b $01
[0009b834]                           dc.w $1020
[0009b836]                           dc.w $4880
[0009b838]                           dc.w $6c00
[0009b83a]                           dc.w $8782
[0009b83c]                           dc.w $3700
[0009b83e]                           dc.w $1000
[0009b840]                           dc.w $1864
[0009b842]                           dc.b $00
[0009b843]                           dc.b $00
[0009b844]                           dc.b $00
[0009b845]                           dc.b $0c
[0009b846]                           dc.w $2010
[0009b848]                           dc.w $c000
[0009b84a]                           dc.b $00
[0009b84b]                           dc.b $02
[0009b84c]                           dc.w $4009
[0009b84e]                           dc.b $00
[0009b84f]                           dc.b $00
[0009b850]                           dc.b $00
[0009b851]                           dc.b $00
[0009b852]                           dc.w $4008
[0009b854]                           dc.b $00
[0009b855]                           dc.b $00
[0009b856]                           dc.b $00
[0009b857]                           dc.b $00
[0009b858]                           dc.w $8004
[0009b85a]                           dc.b $00
[0009b85b]                           dc.b $00
[0009b85c]                           dc.b $00
[0009b85d]                           dc.b $0e
[0009b85e]                           dc.w $8005
[0009b860]                           dc.w $c000
[0009b862]                           dc.b $00
[0009b863]                           dc.b $00
[0009b864]                           dc.w $8004
[0009b866]                           dc.b $00
[0009b867]                           dc.b $00
[0009b868]                           dc.b $00
[0009b869]                           dc.b $00
[0009b86a]                           dc.w $8004
[0009b86c]                           dc.b $00
[0009b86d]                           dc.b $00
[0009b86e]                           dc.w $3f1c
[0009b870]                           dc.w $7878
[0009b872]                           dc.w $70f0
[0009b874]                           dc.b $00
[0009b875]                           dc.b $e3
[0009b876]                           dc.w $8787
[0009b878]                           dc.w $8f0c
[0009b87a]                           dc.w $fe18
[0009b87c]                           dc.b $00
[0009b87d]                           dc.b $00
[0009b87e]                           dc.b $00
[0009b87f]                           dc.b $00
[0009b880]                           dc.w $01e7
[0009b882]                           dc.b '8p<`',0
[0009b887]                           dc.b $00
[0009b888]                           dc.w $0787
[0009b88a]                           dc.w $c39f
[0009b88c]                           dc.w $fe1c
[0009b88e]                           dc.b $00
[0009b88f]                           dc.b $00
[0009b890]                           dc.b $00
[0009b891]                           dc.b $00
[0009b892]                           dc.w $01e3
[0009b894]                           dc.w $9ce0
[0009b896]                           dc.w $e1e0
[0009b898]                           dc.b $00
[0009b899]                           dc.b $00
[0009b89a]                           dc.w $030f
[0009b89c]                           dc.w $1e1f
[0009b89e]                           dc.w $0f07
[0009b8a0]                           dc.w $e000
[0009b8a2]                           dc.w $70c0
[0009b8a4]                           dc.w $30f8
[0009b8a6]                           dc.w $0ccf
[0009b8a8]                           dc.w $8f3c
[0009b8aa]                           dc.b $00
[0009b8ab]                           dc.b $00
[0009b8ac]                           dc.w $0300
[0009b8ae]                           dc.b $00
[0009b8af]                           dc.b $00
SUNRISE:
[0009b8b0] 0009b820                  dc.l _IMG_SUNRISE
[0009b8b4]                           dc.b $00
[0009b8b5]                           dc.b $06
[0009b8b6]                           dc.b $00
[0009b8b7]                           dc.b $18
[0009b8b8]                           dc.b $00
[0009b8b9]                           dc.b $00
[0009b8ba]                           dc.b $00
[0009b8bb]                           dc.b $00
[0009b8bc]                           dc.b $00
[0009b8bd]                           dc.b $01
INFO_OB_WH:
[0009b8be]                           dc.w $ffff
[0009b8c0]                           dc.b $00
[0009b8c1]                           dc.b $01
[0009b8c2]                           dc.b $00
[0009b8c3]                           dc.b $02
[0009b8c4]                           dc.b $00
[0009b8c5]                           dc.b $14
[0009b8c6]                           dc.b $00
[0009b8c7]                           dc.b $00
[0009b8c8]                           dc.b $00
[0009b8c9]                           dc.b $00
[0009b8ca]                           dc.b $00
[0009b8cb]                           dc.b $01
[0009b8cc]                           dc.w $1101
[0009b8ce]                           dc.b $00
[0009b8cf]                           dc.b $00
[0009b8d0]                           dc.b $00
[0009b8d1]                           dc.b $00
[0009b8d2]                           dc.b $00
[0009b8d3]                           dc.b $0b
[0009b8d4]                           dc.b $00
[0009b8d5]                           dc.b $02
_01_INFO_OB_WH:
[0009b8d6]                           dc.b $00
[0009b8d7]                           dc.b $02
[0009b8d8]                           dc.w $ffff
[0009b8da]                           dc.w $ffff
[0009b8dc]                           dc.b $00
[0009b8dd]                           dc.b $15
[0009b8de]                           dc.b $00
[0009b8df]                           dc.b $00
[0009b8e0]                           dc.b $00
[0009b8e1]                           dc.b $00
[0009b8e2] 0009b58c                  dc.l TEDINFO_02
[0009b8e6]                           dc.b $00
[0009b8e7]                           dc.b $00
[0009b8e8]                           dc.b $00
[0009b8e9]                           dc.b $00
[0009b8ea]                           dc.b $00
[0009b8eb]                           dc.b $0b
[0009b8ec]                           dc.b $00
[0009b8ed]                           dc.b $01
_02_INFO_OB_WH:
[0009b8ee]                           dc.b $00
[0009b8ef]                           dc.b $00
[0009b8f0]                           dc.w $ffff
[0009b8f2]                           dc.w $ffff
[0009b8f4]                           dc.b $00
[0009b8f5]                           dc.b $15
[0009b8f6]                           dc.b $00
[0009b8f7]                           dc.b $20
[0009b8f8]                           dc.b $00
[0009b8f9]                           dc.b $00
[0009b8fa] 0009b58c                  dc.l TEDINFO_02
[0009b8fe]                           dc.b $00
[0009b8ff]                           dc.b $00
[0009b900]                           dc.b $00
[0009b901]                           dc.b $01
[0009b902]                           dc.b $00
[0009b903]                           dc.b $0b
[0009b904]                           dc.b $00
[0009b905]                           dc.b $01
NEW2_LABEL:
[0009b906]                           dc.w $ffff
[0009b908]                           dc.b $00
[0009b909]                           dc.b $01
[0009b90a]                           dc.b $00
[0009b90b]                           dc.b $05
[0009b90c]                           dc.b $00
[0009b90d]                           dc.b $18
[0009b90e]                           dc.b $00
[0009b90f]                           dc.b $00
[0009b910]                           dc.b $00
[0009b911]                           dc.b $10
[0009b912] 0009b604                  dc.l A_3DBUTTON03
[0009b916]                           dc.b $00
[0009b917]                           dc.b $00
[0009b918]                           dc.b $00
[0009b919]                           dc.b $00
[0009b91a]                           dc.b $00
[0009b91b]                           dc.b $24
[0009b91c]                           dc.b $00
[0009b91d]                           dc.b $06
_01_NEW2_LABEL:
[0009b91e]                           dc.b $00
[0009b91f]                           dc.b $03
[0009b920]                           dc.b $00
[0009b921]                           dc.b $02
[0009b922]                           dc.b $00
[0009b923]                           dc.b $02
[0009b924]                           dc.b $00
[0009b925]                           dc.b $18
[0009b926]                           dc.b $00
[0009b927]                           dc.b $40
[0009b928]                           dc.b $00
[0009b929]                           dc.b $00
[0009b92a] 0009b664                  dc.l A_INNERFRAME02
[0009b92e]                           dc.b $00
[0009b92f]                           dc.b $01
[0009b930]                           dc.b $00
[0009b931]                           dc.b $00
[0009b932]                           dc.b $00
[0009b933]                           dc.b $22
[0009b934]                           dc.b $00
[0009b935]                           dc.b $03
_02_NEW2_LABEL:
[0009b936]                           dc.b $00
[0009b937]                           dc.b $01
[0009b938]                           dc.w $ffff
[0009b93a]                           dc.w $ffff
[0009b93c]                           dc.b $00
[0009b93d]                           dc.b $18
[0009b93e]                           dc.b $00
[0009b93f]                           dc.b $08
[0009b940]                           dc.b $00
[0009b941]                           dc.b $10
[0009b942] 0009b644                  dc.l A_BOXED02
[0009b946]                           dc.b $00
[0009b947]                           dc.b $01
[0009b948]                           dc.b $00
[0009b949]                           dc.b $01
[0009b94a]                           dc.b $00
[0009b94b]                           dc.b $20
[0009b94c]                           dc.b $00
[0009b94d]                           dc.b $01
_03_NEW2_LABEL:
[0009b94e]                           dc.b $00
[0009b94f]                           dc.b $05
[0009b950]                           dc.w $ffff
[0009b952]                           dc.w $ffff
[0009b954]                           dc.b $00
[0009b955]                           dc.b $18
[0009b956]                           dc.w $4007
[0009b958]                           dc.b $00
[0009b959]                           dc.b $10
[0009b95a] 0009b5e4                  dc.l A_3DBUTTON02
[0009b95e]                           dc.b $00
[0009b95f]                           dc.b $04
[0009b960]                           dc.b $00
[0009b961]                           dc.b $03
[0009b962]                           dc.b $00
[0009b963]                           dc.b $0c
[0009b964]                           dc.b $00
[0009b965]                           dc.b $02
_03aNEW2_LABEL:
[0009b966]                           dc.b $00
[0009b967]                           dc.b $00
[0009b968]                           dc.b $00
[0009b969]                           dc.b $00
[0009b96a]                           dc.b $00
[0009b96b]                           dc.b $00
[0009b96c]                           dc.b $00
[0009b96d]                           dc.b $00
[0009b96e]                           dc.w $8000
[0009b970]                           dc.w $884f
[0009b972]                           dc.b $00
[0009b973]                           dc.b $00
[0009b974]                           dc.b $00
[0009b975]                           dc.b $00
[0009b976]                           dc.b $00
[0009b977]                           dc.b $00
[0009b978]                           dc.b $00
[0009b979]                           dc.b $00
[0009b97a]                           dc.b $00
[0009b97b]                           dc.b $00
[0009b97c]                           dc.b $00
[0009b97d]                           dc.b $00
_05_NEW2_LABEL:
[0009b97e]                           dc.b $00
[0009b97f]                           dc.b $00
[0009b980]                           dc.w $ffff
[0009b982]                           dc.w $ffff
[0009b984]                           dc.b $00
[0009b985]                           dc.b $18
[0009b986]                           dc.w $4005
[0009b988]                           dc.b $00
[0009b989]                           dc.b $10
[0009b98a] 0009b624                  dc.l A_3DBUTTON05
[0009b98e]                           dc.b $00
[0009b98f]                           dc.b $13
[0009b990]                           dc.b $00
[0009b991]                           dc.b $03
[0009b992]                           dc.b $00
[0009b993]                           dc.b $0c
[0009b994]                           dc.b $00
[0009b995]                           dc.b $02
_05aNEW2_LABEL:
[0009b996]                           dc.b $00
[0009b997]                           dc.b $00
[0009b998]                           dc.b $00
[0009b999]                           dc.b $00
[0009b99a]                           dc.b $00
[0009b99b]                           dc.b $00
[0009b99c]                           dc.b $00
[0009b99d]                           dc.b $00
[0009b99e]                           dc.w $8020
[0009b9a0]                           dc.w $8841
[0009b9a2]                           dc.b $00
[0009b9a3]                           dc.b $00
[0009b9a4]                           dc.b $00
[0009b9a5]                           dc.b $00
[0009b9a6]                           dc.b $00
[0009b9a7]                           dc.b $00
[0009b9a8]                           dc.b $00
[0009b9a9]                           dc.b $00
[0009b9aa]                           dc.b $00
[0009b9ab]                           dc.b $00
[0009b9ac]                           dc.b $00
[0009b9ad]                           dc.b $00
NEW_LABEL:
[0009b9ae]                           dc.w $ffff
[0009b9b0]                           dc.b $00
[0009b9b1]                           dc.b $01
[0009b9b2]                           dc.b $00
[0009b9b3]                           dc.b $03
[0009b9b4]                           dc.b $00
[0009b9b5]                           dc.b $18
[0009b9b6]                           dc.b $00
[0009b9b7]                           dc.b $00
[0009b9b8]                           dc.b $00
[0009b9b9]                           dc.b $10
[0009b9ba] 0009b604                  dc.l A_3DBUTTON03
[0009b9be]                           dc.b $00
[0009b9bf]                           dc.b $00
[0009b9c0]                           dc.b $00
[0009b9c1]                           dc.b $00
[0009b9c2]                           dc.b $00
[0009b9c3]                           dc.b $24
[0009b9c4]                           dc.b $00
[0009b9c5]                           dc.b $06
_01_NEW_LABEL:
[0009b9c6]                           dc.b $00
[0009b9c7]                           dc.b $03
[0009b9c8]                           dc.b $00
[0009b9c9]                           dc.b $02
[0009b9ca]                           dc.b $00
[0009b9cb]                           dc.b $02
[0009b9cc]                           dc.b $00
[0009b9cd]                           dc.b $18
[0009b9ce]                           dc.b $00
[0009b9cf]                           dc.b $40
[0009b9d0]                           dc.b $00
[0009b9d1]                           dc.b $00
[0009b9d2] 0009b664                  dc.l A_INNERFRAME02
[0009b9d6]                           dc.b $00
[0009b9d7]                           dc.b $01
[0009b9d8]                           dc.b $00
[0009b9d9]                           dc.b $00
[0009b9da]                           dc.b $00
[0009b9db]                           dc.b $22
[0009b9dc]                           dc.b $00
[0009b9dd]                           dc.b $03
_02_NEW_LABEL:
[0009b9de]                           dc.b $00
[0009b9df]                           dc.b $01
[0009b9e0]                           dc.w $ffff
[0009b9e2]                           dc.w $ffff
[0009b9e4]                           dc.b $00
[0009b9e5]                           dc.b $18
[0009b9e6]                           dc.b $00
[0009b9e7]                           dc.b $08
[0009b9e8]                           dc.b $00
[0009b9e9]                           dc.b $10
[0009b9ea] 0009b644                  dc.l A_BOXED02
[0009b9ee]                           dc.b $00
[0009b9ef]                           dc.b $01
[0009b9f0]                           dc.b $00
[0009b9f1]                           dc.b $01
[0009b9f2]                           dc.b $00
[0009b9f3]                           dc.b $1f
[0009b9f4]                           dc.b $00
[0009b9f5]                           dc.b $01
_03_NEW_LABEL:
[0009b9f6]                           dc.b $00
[0009b9f7]                           dc.b $00
[0009b9f8]                           dc.w $ffff
[0009b9fa]                           dc.w $ffff
[0009b9fc]                           dc.b $00
[0009b9fd]                           dc.b $18
[0009b9fe]                           dc.w $4007
[0009ba00]                           dc.b $00
[0009ba01]                           dc.b $10
[0009ba02] 0009b5e4                  dc.l A_3DBUTTON02
[0009ba06]                           dc.b $00
[0009ba07]                           dc.b $0c
[0009ba08]                           dc.b $00
[0009ba09]                           dc.b $03
[0009ba0a]                           dc.b $00
[0009ba0b]                           dc.b $0c
[0009ba0c]                           dc.b $00
[0009ba0d]                           dc.b $02
_03aNEW_LABEL:
[0009ba0e] 00014602                  dc.l chk_new_label
[0009ba12]                           dc.b $00
[0009ba13]                           dc.b $00
[0009ba14]                           dc.b $00
[0009ba15]                           dc.b $00
[0009ba16]                           dc.w $8020
[0009ba18]                           dc.w $884f
[0009ba1a]                           dc.b $00
[0009ba1b]                           dc.b $00
[0009ba1c]                           dc.b $00
[0009ba1d]                           dc.b $00
[0009ba1e]                           dc.b $00
[0009ba1f]                           dc.b $00
[0009ba20]                           dc.b $00
[0009ba21]                           dc.b $00
[0009ba22]                           dc.b $00
[0009ba23]                           dc.b $00
[0009ba24]                           dc.b $00
[0009ba25]                           dc.b $00
OUTPUT_INFO:
[0009ba26]                           dc.w $ffff
[0009ba28]                           dc.b $00
[0009ba29]                           dc.b $01
[0009ba2a]                           dc.b $00
[0009ba2b]                           dc.b $01
[0009ba2c]                           dc.b $00
[0009ba2d]                           dc.b $14
[0009ba2e]                           dc.b $00
[0009ba2f]                           dc.b $00
[0009ba30]                           dc.b $00
[0009ba31]                           dc.b $00
[0009ba32]                           dc.b $00
[0009ba33]                           dc.b $ff
[0009ba34]                           dc.w $1178
[0009ba36]                           dc.b $00
[0009ba37]                           dc.b $00
[0009ba38]                           dc.b $00
[0009ba39]                           dc.b $00
[0009ba3a]                           dc.b $00
[0009ba3b]                           dc.b $2c
[0009ba3c]                           dc.b $00
[0009ba3d]                           dc.b $0b
_01_OUTPUT_INFO:
[0009ba3e]                           dc.b $00
[0009ba3f]                           dc.b $00
[0009ba40]                           dc.b $00
[0009ba41]                           dc.b $02
[0009ba42]                           dc.b $00
[0009ba43]                           dc.b $04
[0009ba44]                           dc.b $00
[0009ba45]                           dc.b $18
[0009ba46]                           dc.b $00
[0009ba47]                           dc.b $00
[0009ba48]                           dc.b $00
[0009ba49]                           dc.b $10
[0009ba4a] 0009b604                  dc.l A_3DBUTTON03
[0009ba4e]                           dc.b $00
[0009ba4f]                           dc.b $00
[0009ba50]                           dc.b $00
[0009ba51]                           dc.b $00
[0009ba52]                           dc.b $00
[0009ba53]                           dc.b $2c
[0009ba54]                           dc.b $00
[0009ba55]                           dc.b $0b
_02_OUTPUT_INFO:
[0009ba56]                           dc.b $00
[0009ba57]                           dc.b $04
[0009ba58]                           dc.b $00
[0009ba59]                           dc.b $03
[0009ba5a]                           dc.b $00
[0009ba5b]                           dc.b $03
[0009ba5c]                           dc.b $00
[0009ba5d]                           dc.b $18
[0009ba5e]                           dc.b $00
[0009ba5f]                           dc.b $00
[0009ba60]                           dc.b $00
[0009ba61]                           dc.b $10
[0009ba62] 0009b5c4                  dc.l A_3DBUTTON01
[0009ba66]                           dc.b $00
[0009ba67]                           dc.b $02
[0009ba68]                           dc.b $00
[0009ba69]                           dc.b $01
[0009ba6a]                           dc.b $00
[0009ba6b]                           dc.b $28
[0009ba6c]                           dc.b $00
[0009ba6d]                           dc.b $01
_03_OUTPUT_INFO:
[0009ba6e]                           dc.b $00
[0009ba6f]                           dc.b $02
[0009ba70]                           dc.w $ffff
[0009ba72]                           dc.w $ffff
[0009ba74]                           dc.b $00
[0009ba75]                           dc.b $16
[0009ba76]                           dc.b $00
[0009ba77]                           dc.b $00
[0009ba78]                           dc.w $0500
[0009ba7a] 0009b570                  dc.l TEDINFO_01
[0009ba7e]                           dc.b $00
[0009ba7f]                           dc.b $00
[0009ba80]                           dc.b $00
[0009ba81]                           dc.b $00
[0009ba82]                           dc.b $00
[0009ba83]                           dc.b $28
[0009ba84]                           dc.b $00
[0009ba85]                           dc.b $01
_04_OUTPUT_INFO:
[0009ba86]                           dc.b $00
[0009ba87]                           dc.b $01
[0009ba88]                           dc.b $00
[0009ba89]                           dc.b $05
[0009ba8a]                           dc.b $00
[0009ba8b]                           dc.b $0c
[0009ba8c]                           dc.b $00
[0009ba8d]                           dc.b $18
[0009ba8e]                           dc.b $00
[0009ba8f]                           dc.b $00
[0009ba90]                           dc.b $00
[0009ba91]                           dc.b $10
[0009ba92] 0009b5c4                  dc.l A_3DBUTTON01
[0009ba96]                           dc.b $00
[0009ba97]                           dc.b $02
[0009ba98]                           dc.b $00
[0009ba99]                           dc.b $03
[0009ba9a]                           dc.b $00
[0009ba9b]                           dc.b $28
[0009ba9c]                           dc.b $00
[0009ba9d]                           dc.b $07
_05_OUTPUT_INFO:
[0009ba9e]                           dc.b $00
[0009ba9f]                           dc.b $06
[0009baa0]                           dc.w $ffff
[0009baa2]                           dc.w $ffff
[0009baa4]                           dc.b $00
[0009baa5]                           dc.b $1c
[0009baa6]                           dc.b $00
[0009baa7]                           dc.b $00
[0009baa8]                           dc.b $00
[0009baa9]                           dc.b $00
[0009baaa] 0009b448                  dc.l TEXT_02
[0009baae]                           dc.b $00
[0009baaf]                           dc.b $00
[0009bab0]                           dc.b $00
[0009bab1]                           dc.b $00
[0009bab2]                           dc.b $00
[0009bab3]                           dc.b $08
[0009bab4]                           dc.b $00
[0009bab5]                           dc.b $01
_06_OUTPUT_INFO:
[0009bab6]                           dc.b $00
[0009bab7]                           dc.b $07
[0009bab8]                           dc.w $ffff
[0009baba]                           dc.w $ffff
[0009babc]                           dc.b $00
[0009babd]                           dc.b $16
[0009babe]                           dc.b $00
[0009babf]                           dc.b $00
[0009bac0]                           dc.b $00
[0009bac1]                           dc.b $00
[0009bac2] 0009b5a8                  dc.l TEDINFO_064
[0009bac6]                           dc.b $00
[0009bac7]                           dc.b $09
[0009bac8]                           dc.b $00
[0009bac9]                           dc.b $00
[0009baca]                           dc.b $00
[0009bacb]                           dc.b $1f
[0009bacc]                           dc.b $00
[0009bacd]                           dc.b $01
_07_OUTPUT_INFO:
[0009bace]                           dc.b $00
[0009bacf]                           dc.b $08
[0009bad0]                           dc.w $ffff
[0009bad2]                           dc.w $ffff
[0009bad4]                           dc.b $00
[0009bad5]                           dc.b $1c
[0009bad6]                           dc.b $00
[0009bad7]                           dc.b $00
[0009bad8]                           dc.b $00
[0009bad9]                           dc.b $00
[0009bada] 0009b451                  dc.l TEXT_03
[0009bade]                           dc.b $00
[0009badf]                           dc.b $00
[0009bae0]                           dc.b $00
[0009bae1]                           dc.b $02
[0009bae2]                           dc.b $00
[0009bae3]                           dc.b $06
[0009bae4]                           dc.b $00
[0009bae5]                           dc.b $01
_08_OUTPUT_INFO:
[0009bae6]                           dc.b $00
[0009bae7]                           dc.b $09
[0009bae8]                           dc.w $ffff
[0009baea]                           dc.w $ffff
[0009baec]                           dc.b $00
[0009baed]                           dc.b $16
[0009baee]                           dc.b $00
[0009baef]                           dc.b $00
[0009baf0]                           dc.b $00
[0009baf1]                           dc.b $00
[0009baf2] 0009b5a8                  dc.l TEDINFO_064
[0009baf6]                           dc.b $00
[0009baf7]                           dc.b $09
[0009baf8]                           dc.b $00
[0009baf9]                           dc.b $02
[0009bafa]                           dc.b $00
[0009bafb]                           dc.b $1f
[0009bafc]                           dc.b $00
[0009bafd]                           dc.b $01
_09_OUTPUT_INFO:
[0009bafe]                           dc.b $00
[0009baff]                           dc.b $0a
[0009bb00]                           dc.w $ffff
[0009bb02]                           dc.w $ffff
[0009bb04]                           dc.b $00
[0009bb05]                           dc.b $1c
[0009bb06]                           dc.b $00
[0009bb07]                           dc.b $00
[0009bb08]                           dc.b $00
[0009bb09]                           dc.b $00
[0009bb0a] 0009b458                  dc.l TEXT_04
[0009bb0e]                           dc.b $00
[0009bb0f]                           dc.b $00
[0009bb10]                           dc.b $00
[0009bb11]                           dc.b $04
[0009bb12]                           dc.b $00
[0009bb13]                           dc.b $06
[0009bb14]                           dc.b $00
[0009bb15]                           dc.b $01
_10_OUTPUT_INFO:
[0009bb16]                           dc.b $00
[0009bb17]                           dc.b $0b
[0009bb18]                           dc.w $ffff
[0009bb1a]                           dc.w $ffff
[0009bb1c]                           dc.b $00
[0009bb1d]                           dc.b $16
[0009bb1e]                           dc.b $00
[0009bb1f]                           dc.b $00
[0009bb20]                           dc.b $00
[0009bb21]                           dc.b $00
[0009bb22] 0009b5a8                  dc.l TEDINFO_064
[0009bb26]                           dc.b $00
[0009bb27]                           dc.b $09
[0009bb28]                           dc.b $00
[0009bb29]                           dc.b $04
[0009bb2a]                           dc.b $00
[0009bb2b]                           dc.b $1f
[0009bb2c]                           dc.b $00
[0009bb2d]                           dc.b $01
_11_OUTPUT_INFO:
[0009bb2e]                           dc.b $00
[0009bb2f]                           dc.b $0c
[0009bb30]                           dc.w $ffff
[0009bb32]                           dc.w $ffff
[0009bb34]                           dc.b $00
[0009bb35]                           dc.b $1c
[0009bb36]                           dc.b $00
[0009bb37]                           dc.b $00
[0009bb38]                           dc.b $00
[0009bb39]                           dc.b $00
[0009bb3a] 0009b45f                  dc.l TEXT_05
[0009bb3e]                           dc.b $00
[0009bb3f]                           dc.b $00
[0009bb40]                           dc.b $00
[0009bb41]                           dc.b $06
[0009bb42]                           dc.b $00
[0009bb43]                           dc.b $07
[0009bb44]                           dc.b $00
[0009bb45]                           dc.b $01
_12_OUTPUT_INFO:
[0009bb46]                           dc.b $00
[0009bb47]                           dc.b $04
[0009bb48]                           dc.w $ffff
[0009bb4a]                           dc.w $ffff
[0009bb4c]                           dc.b $00
[0009bb4d]                           dc.b $16
[0009bb4e]                           dc.b $00
[0009bb4f]                           dc.b $20
[0009bb50]                           dc.b $00
[0009bb51]                           dc.b $00
[0009bb52] 0009b5a8                  dc.l TEDINFO_064
[0009bb56]                           dc.b $00
[0009bb57]                           dc.b $09
[0009bb58]                           dc.b $00
[0009bb59]                           dc.b $06
[0009bb5a]                           dc.b $00
[0009bb5b]                           dc.b $1f
[0009bb5c]                           dc.b $00
[0009bb5d]                           dc.b $01
WI_NEW2_LABEL:
[0009bb5e]                           dc.b $00
[0009bb5f]                           dc.b $00
[0009bb60]                           dc.b $00
[0009bb61]                           dc.b $00
[0009bb62] 00051276                  dc.l Awi_service
[0009bb66] 0004f0ee                  dc.l Awi_selfcreate
[0009bb6a] 0004f69e                  dc.l Awi_open
[0009bb6e] 0004e610                  dc.l Awi_init
[0009bb72] 0009b906                  dc.l NEW2_LABEL
[0009bb76]                           dc.b $00
[0009bb77]                           dc.b $00
[0009bb78]                           dc.b $00
[0009bb79]                           dc.b $00
[0009bb7a]                           dc.b $00
[0009bb7b]                           dc.b $00
[0009bb7c]                           dc.b $00
[0009bb7d]                           dc.b $00
[0009bb7e]                           dc.w $ffff
[0009bb80]                           dc.b $00
[0009bb81]                           dc.b $0b
[0009bb82]                           dc.b $00
[0009bb83]                           dc.b $00
[0009bb84]                           dc.b $00
[0009bb85]                           dc.b $00
[0009bb86]                           dc.b $00
[0009bb87]                           dc.b $78
[0009bb88]                           dc.b $00
[0009bb89]                           dc.b $32
[0009bb8a]                           dc.b $00
[0009bb8b]                           dc.b $00
[0009bb8c]                           dc.b $00
[0009bb8d]                           dc.b $00
[0009bb8e]                           dc.b $00
[0009bb8f]                           dc.b $00
[0009bb90]                           dc.b $00
[0009bb91]                           dc.b $00
[0009bb92]                           dc.b $00
[0009bb93]                           dc.b $00
[0009bb94]                           dc.b $00
[0009bb95]                           dc.b $00
[0009bb96]                           dc.b $00
[0009bb97]                           dc.b $00
[0009bb98]                           dc.b $00
[0009bb99]                           dc.b $00
[0009bb9a]                           dc.w $ffff
[0009bb9c]                           dc.w $ffff
[0009bb9e]                           dc.w $ffff
[0009bba0]                           dc.w $ffff
[0009bba2]                           dc.b $00
[0009bba3]                           dc.b $00
[0009bba4]                           dc.b $00
[0009bba5]                           dc.b $00
[0009bba6]                           dc.w $f8f8
[0009bba8] 0009b473                  dc.l TEXT_10
[0009bbac] 0009b412                  dc.l TEXT_002
[0009bbb0]                           dc.w $2710
[0009bbb2]                           dc.b $00
[0009bbb3]                           dc.b $00
[0009bbb4]                           dc.b $00
[0009bbb5]                           dc.b $00
[0009bbb6]                           dc.w $ffff
[0009bbb8]                           dc.b $00
[0009bbb9]                           dc.b $00
[0009bbba]                           dc.b $00
[0009bbbb]                           dc.b $00
[0009bbbc]                           dc.b $00
[0009bbbd]                           dc.b $00
[0009bbbe]                           dc.b $00
[0009bbbf]                           dc.b $00
[0009bbc0] 0005ef2c                  dc.l Awi_keys
[0009bbc4] 0004b600                  dc.l Awi_obchange
[0009bbc8] 0004b8cc                  dc.l Awi_redraw
[0009bbcc] 00050454                  dc.l Awi_topped
[0009bbd0] 0005013e                  dc.l Awi_closed
[0009bbd4] 00050496                  dc.l Awi_fulled
[0009bbd8] 0004bcc8                  dc.l Awi_arrowed
[0009bbdc] 0004beea                  dc.l Awi_hslid
[0009bbe0] 0004bf56                  dc.l Awi_vslid
[0009bbe4] 000506ca                  dc.l Awi_sized
[0009bbe8] 000507bc                  dc.l Awi_moved
[0009bbec] 00050f9c                  dc.l Awi_iconify
[0009bbf0] 0005117c                  dc.l Awi_uniconify
[0009bbf4] 00052328                  dc.l Awi_gemscript
[0009bbf8]                           dc.b $00
[0009bbf9]                           dc.b $00
[0009bbfa]                           dc.b $00
[0009bbfb]                           dc.b $00
[0009bbfc]                           dc.b $00
[0009bbfd]                           dc.b $00
[0009bbfe]                           dc.b $00
[0009bbff]                           dc.b $00
WI_NEW_LABEL:
[0009bc00]                           dc.b $00
[0009bc01]                           dc.b $00
[0009bc02]                           dc.b $00
[0009bc03]                           dc.b $00
[0009bc04] 00051276                  dc.l Awi_service
[0009bc08] 0004f0ee                  dc.l Awi_selfcreate
[0009bc0c] 0004f69e                  dc.l Awi_open
[0009bc10] 0004e610                  dc.l Awi_init
[0009bc14] 0009b9ae                  dc.l NEW_LABEL
[0009bc18]                           dc.b $00
[0009bc19]                           dc.b $00
[0009bc1a]                           dc.b $00
[0009bc1b]                           dc.b $00
[0009bc1c]                           dc.b $00
[0009bc1d]                           dc.b $00
[0009bc1e]                           dc.b $00
[0009bc1f]                           dc.b $00
[0009bc20]                           dc.w $ffff
[0009bc22]                           dc.b $00
[0009bc23]                           dc.b $0b
[0009bc24]                           dc.b $00
[0009bc25]                           dc.b $00
[0009bc26]                           dc.b $00
[0009bc27]                           dc.b $00
[0009bc28]                           dc.b $00
[0009bc29]                           dc.b $78
[0009bc2a]                           dc.b $00
[0009bc2b]                           dc.b $32
[0009bc2c]                           dc.b $00
[0009bc2d]                           dc.b $00
[0009bc2e]                           dc.b $00
[0009bc2f]                           dc.b $00
[0009bc30]                           dc.b $00
[0009bc31]                           dc.b $00
[0009bc32]                           dc.b $00
[0009bc33]                           dc.b $00
[0009bc34]                           dc.b $00
[0009bc35]                           dc.b $00
[0009bc36]                           dc.b $00
[0009bc37]                           dc.b $00
[0009bc38]                           dc.b $00
[0009bc39]                           dc.b $00
[0009bc3a]                           dc.b $00
[0009bc3b]                           dc.b $00
[0009bc3c]                           dc.w $ffff
[0009bc3e]                           dc.w $ffff
[0009bc40]                           dc.w $ffff
[0009bc42]                           dc.w $ffff
[0009bc44]                           dc.b $00
[0009bc45]                           dc.b $00
[0009bc46]                           dc.b $00
[0009bc47]                           dc.b $00
[0009bc48]                           dc.w $f8f8
[0009bc4a] 0009b473                  dc.l TEXT_10
[0009bc4e] 0009b412                  dc.l TEXT_002
[0009bc52]                           dc.w $2710
[0009bc54]                           dc.b $00
[0009bc55]                           dc.b $00
[0009bc56]                           dc.b $00
[0009bc57]                           dc.b $00
[0009bc58]                           dc.w $ffff
[0009bc5a]                           dc.b $00
[0009bc5b]                           dc.b $00
[0009bc5c]                           dc.b $00
[0009bc5d]                           dc.b $00
[0009bc5e]                           dc.b $00
[0009bc5f]                           dc.b $00
[0009bc60]                           dc.b $00
[0009bc61]                           dc.b $00
[0009bc62] 0005ef2c                  dc.l Awi_keys
[0009bc66] 0004b600                  dc.l Awi_obchange
[0009bc6a] 0004b8cc                  dc.l Awi_redraw
[0009bc6e] 00050454                  dc.l Awi_topped
[0009bc72] 0005013e                  dc.l Awi_closed
[0009bc76] 00050496                  dc.l Awi_fulled
[0009bc7a] 0004bcc8                  dc.l Awi_arrowed
[0009bc7e] 0004beea                  dc.l Awi_hslid
[0009bc82] 0004bf56                  dc.l Awi_vslid
[0009bc86] 000506ca                  dc.l Awi_sized
[0009bc8a] 000507bc                  dc.l Awi_moved
[0009bc8e] 00050f9c                  dc.l Awi_iconify
[0009bc92] 0005117c                  dc.l Awi_uniconify
[0009bc96] 00052328                  dc.l Awi_gemscript
[0009bc9a]                           dc.b $00
[0009bc9b]                           dc.b $00
[0009bc9c]                           dc.b $00
[0009bc9d]                           dc.b $00
[0009bc9e]                           dc.b $00
[0009bc9f]                           dc.b $00
[0009bca0]                           dc.b $00
[0009bca1]                           dc.b $00
MO_ADD:
[0009bca2]                           dc.b $00
[0009bca3]                           dc.b $08
[0009bca4]                           dc.b $00
[0009bca5]                           dc.b $08
[0009bca6]                           dc.b $00
[0009bca7]                           dc.b $01
[0009bca8]                           dc.b $00
[0009bca9]                           dc.b $00
[0009bcaa]                           dc.b $00
[0009bcab]                           dc.b $01
[0009bcac]                           dc.w $0300
[0009bcae]                           dc.w $1fb0
[0009bcb0]                           dc.w $3ff8
[0009bcb2]                           dc.w $3ffc
[0009bcb4]                           dc.w $7ffe
[0009bcb6]                           dc.w $fffe
[0009bcb8]                           dc.w $fffe
[0009bcba]                           dc.w $7fff
[0009bcbc]                           dc.w $7fff
[0009bcbe]                           dc.w $ffff
[0009bcc0]                           dc.w $ffff
[0009bcc2]                           dc.w $7fff
[0009bcc4]                           dc.w $3fff
[0009bcc6]                           dc.w $0fff
[0009bcc8]                           dc.w $01ff
[0009bcca]                           dc.b $00
[0009bccb]                           dc.b $7f
[0009bccc]                           dc.w $0300
[0009bcce]                           dc.w $1cb0
[0009bcd0]                           dc.b '$H"$q'
[0009bcd5]                           dc.b $12
[0009bcd6]                           dc.w $9802
[0009bcd8]                           dc.w $84c2
[0009bcda]                           dc.w $40c1
[0009bcdc]                           dc.w $73f1
[0009bcde]                           dc.w $9bf0
[0009bce0]                           dc.w $84cc
[0009bce2]                           dc.w $40cc
[0009bce4]                           dc.w $303f
[0009bce6]                           dc.w $0e3f
[0009bce8]                           dc.w $018c
[0009bcea]                           dc.b $00
[0009bceb]                           dc.b $6c
MO_BLACK:
[0009bcec]                           dc.b $00
[0009bced]                           dc.b $00
[0009bcee]                           dc.b $00
[0009bcef]                           dc.b $00
[0009bcf0]                           dc.b $00
[0009bcf1]                           dc.b $01
[0009bcf2]                           dc.b $00
[0009bcf3]                           dc.b $00
[0009bcf4]                           dc.b $00
[0009bcf5]                           dc.b $01
[0009bcf6]                           dc.w $c0ff
[0009bcf8]                           dc.w $e0ff
[0009bcfa]                           dc.w $f0ff
[0009bcfc]                           dc.w $f8ff
[0009bcfe]                           dc.w $fcff
[0009bd00]                           dc.w $feff
[0009bd02]                           dc.w $ffff
[0009bd04]                           dc.w $ffff
[0009bd06]                           dc.w $ffc0
[0009bd08]                           dc.w $ffe0
[0009bd0a]                           dc.w $fe00
[0009bd0c]                           dc.w $ef00
[0009bd0e]                           dc.w $cf00
[0009bd10]                           dc.w $8780
[0009bd12]                           dc.w $0780
[0009bd14]                           dc.w $0380
[0009bd16]                           dc.b $00
[0009bd17]                           dc.b $00
[0009bd18]                           dc.b '@~`~p~x~|~~~'
[0009bd24]                           dc.w $7f00
[0009bd26]                           dc.w $7f80
[0009bd28]                           dc.w $7c00
[0009bd2a]                           dc.w $6c00
[0009bd2c]                           dc.w $4600
[0009bd2e]                           dc.w $0600
[0009bd30]                           dc.w $0300
[0009bd32]                           dc.w $0300
[0009bd34]                           dc.b $00
[0009bd35]                           dc.b $00
MO_DRAG:
[0009bd36]                           dc.b $00
[0009bd37]                           dc.b $08
[0009bd38]                           dc.b $00
[0009bd39]                           dc.b $08
[0009bd3a]                           dc.b $00
[0009bd3b]                           dc.b $01
[0009bd3c]                           dc.b $00
[0009bd3d]                           dc.b $00
[0009bd3e]                           dc.b $00
[0009bd3f]                           dc.b $01
[0009bd40]                           dc.w $0300
[0009bd42]                           dc.w $1fb0
[0009bd44]                           dc.w $3ff8
[0009bd46]                           dc.w $3ffc
[0009bd48]                           dc.w $7ffe
[0009bd4a]                           dc.w $fffe
[0009bd4c]                           dc.w $fffe
[0009bd4e]                           dc.w $7fff
[0009bd50]                           dc.w $7fff
[0009bd52]                           dc.w $ffff
[0009bd54]                           dc.w $ffff
[0009bd56]                           dc.w $7fff
[0009bd58]                           dc.w $3fff
[0009bd5a]                           dc.w $0fff
[0009bd5c]                           dc.w $01ff
[0009bd5e]                           dc.b $00
[0009bd5f]                           dc.b $7f
[0009bd60]                           dc.w $0300
[0009bd62]                           dc.w $1cb0
[0009bd64]                           dc.b '$H"$q'
[0009bd69]                           dc.b $12
[0009bd6a]                           dc.w $9802
[0009bd6c]                           dc.w $84c2
[0009bd6e]                           dc.w $40c1
[0009bd70]                           dc.w $73f1
[0009bd72]                           dc.w $9bf0
[0009bd74]                           dc.w $84c0
[0009bd76]                           dc.w $40c0
[0009bd78]                           dc.w $3000
[0009bd7a]                           dc.w $0e00
[0009bd7c]                           dc.w $0180
[0009bd7e]                           dc.b $00
[0009bd7f]                           dc.b $60
MO_TRANS:
[0009bd80]                           dc.b $00
[0009bd81]                           dc.b $00
[0009bd82]                           dc.b $00
[0009bd83]                           dc.b $00
[0009bd84]                           dc.b $00
[0009bd85]                           dc.b $01
[0009bd86]                           dc.b $00
[0009bd87]                           dc.b $00
[0009bd88]                           dc.b $00
[0009bd89]                           dc.b $01
[0009bd8a]                           dc.w $c0ff
[0009bd8c]                           dc.w $e0ff
[0009bd8e]                           dc.w $f0ff
[0009bd90]                           dc.w $f8ff
[0009bd92]                           dc.w $fcff
[0009bd94]                           dc.w $feff
[0009bd96]                           dc.w $ffff
[0009bd98]                           dc.w $ffff
[0009bd9a]                           dc.w $ffc0
[0009bd9c]                           dc.w $ffe0
[0009bd9e]                           dc.w $fe00
[0009bda0]                           dc.w $ef00
[0009bda2]                           dc.w $cf00
[0009bda4]                           dc.w $8780
[0009bda6]                           dc.w $0780
[0009bda8]                           dc.w $0380
[0009bdaa]                           dc.b $00
[0009bdab]                           dc.b $ff
[0009bdac]                           dc.w $40ab
[0009bdae]                           dc.w $60d5
[0009bdb0]                           dc.w $70ab
[0009bdb2]                           dc.w $78d5
[0009bdb4]                           dc.w $7cab
[0009bdb6]                           dc.w $7ed5
[0009bdb8]                           dc.w $7fff
[0009bdba]                           dc.w $7f80
[0009bdbc]                           dc.w $7c00
[0009bdbe]                           dc.w $6c00
[0009bdc0]                           dc.w $4600
[0009bdc2]                           dc.w $0600
[0009bdc4]                           dc.w $0300
[0009bdc6]                           dc.w $0300
[0009bdc8]                           dc.b $00
[0009bdc9]                           dc.b $00
MO_WHITE:
[0009bdca]                           dc.b $00
[0009bdcb]                           dc.b $00
[0009bdcc]                           dc.b $00
[0009bdcd]                           dc.b $00
[0009bdce]                           dc.b $00
[0009bdcf]                           dc.b $01
[0009bdd0]                           dc.b $00
[0009bdd1]                           dc.b $00
[0009bdd2]                           dc.b $00
[0009bdd3]                           dc.b $01
[0009bdd4]                           dc.w $c0ff
[0009bdd6]                           dc.w $e0ff
[0009bdd8]                           dc.w $f0ff
[0009bdda]                           dc.w $f8ff
[0009bddc]                           dc.w $fcff
[0009bdde]                           dc.w $feff
[0009bde0]                           dc.w $ffff
[0009bde2]                           dc.w $ffff
[0009bde4]                           dc.w $ffc0
[0009bde6]                           dc.w $ffe0
[0009bde8]                           dc.w $fe00
[0009bdea]                           dc.w $ef00
[0009bdec]                           dc.w $cf00
[0009bdee]                           dc.w $8780
[0009bdf0]                           dc.w $0780
[0009bdf2]                           dc.w $0380
[0009bdf4]                           dc.b $00
[0009bdf5]                           dc.b $ff
[0009bdf6]                           dc.b '@Å`ÅpÅxÅ|Å~Å'
[0009be02]                           dc.w $7fff
[0009be04]                           dc.w $7f80
[0009be06]                           dc.w $7c00
[0009be08]                           dc.w $6c00
[0009be0a]                           dc.w $4600
[0009be0c]                           dc.w $0600
[0009be0e]                           dc.w $0300
[0009be10]                           dc.w $0300
[0009be12]                           dc.b $00
[0009be13]                           dc.b $00
ACSdescr:
[0009be14]                           dc.b 'ACS3.00',0
[0009be1c]                           dc.w $012c
[0009be1e]                           dc.w $ffb0
[0009be20]                           dc.w $ffb0
[0009be22]                           dc.w $0677
[0009be24]                           dc.b '  ACSpro 3.0.0'
[0009be32]                           dc.w $e100
[0009be34]                           dc.b $00
[0009be35]                           dc.b $00
[0009be36]                           dc.b $00
[0009be37]                           dc.b $00
[0009be38]                           dc.b $00
[0009be39]                           dc.b $00
[0009be3a]                           dc.b $00
[0009be3b]                           dc.b $00
[0009be3c]                           dc.b $00
[0009be3d]                           dc.b $00
[0009be3e]                           dc.b $00
[0009be3f]                           dc.b $00
[0009be40]                           dc.b $00
[0009be41]                           dc.b $00
[0009be42]                           dc.b $00
[0009be43]                           dc.b $00
[0009be44] 000c3ddc                  dc.l PUR_DESK
[0009be48]                           dc.b $00
[0009be49]                           dc.b $00
[0009be4a]                           dc.b $00
[0009be4b]                           dc.b $00
[0009be4c]                           dc.b $00
[0009be4d]                           dc.b $00
[0009be4e]                           dc.b $00
[0009be4f]                           dc.b $00
[0009be50]                           dc.b $00
[0009be51]                           dc.b $00
[0009be52]                           dc.b $00
[0009be53]                           dc.b $02
[0009be54]                           dc.b $00
[0009be55]                           dc.b $00
[0009be56]                           dc.b $00
[0009be57]                           dc.b $00
[0009be58]                           dc.b $00
[0009be59]                           dc.b $03
[0009be5a]                           dc.b $00
[0009be5b]                           dc.b $00
[0009be5c]                           dc.b $00
[0009be5d]                           dc.b $00
[0009be5e]                           dc.b $00
[0009be5f]                           dc.b $04
[0009be60]                           dc.b $00
[0009be61]                           dc.b $00
[0009be62]                           dc.b $00
[0009be63]                           dc.b $00
[0009be64]                           dc.b $00
[0009be65]                           dc.b $01
[0009be66]                           dc.b $00
[0009be67]                           dc.b $00
[0009be68]                           dc.b $00
[0009be69]                           dc.b $00
[0009be6a]                           dc.b $00
[0009be6b]                           dc.b $05
[0009be6c]                           dc.b $00
[0009be6d]                           dc.b $00
[0009be6e]                           dc.b $00
[0009be6f]                           dc.b $00
[0009be70]                           dc.b $00
[0009be71]                           dc.b $06
[0009be72]                           dc.b $00
[0009be73]                           dc.b $00
[0009be74]                           dc.b $00
[0009be75]                           dc.b $00
[0009be76]                           dc.b $00
[0009be77]                           dc.b $07
[0009be78]                           dc.b $00
[0009be79]                           dc.b $00
[0009be7a]                           dc.b $00
[0009be7b]                           dc.b $00
[0009be7c]                           dc.b $00
[0009be7d]                           dc.b $ff
[0009be7e] 0009bcec                  dc.l MO_BLACK
[0009be82]                           dc.b $00
[0009be83]                           dc.b $ff
[0009be84] 0009bdca                  dc.l MO_WHITE
[0009be88]                           dc.b $00
[0009be89]                           dc.b $ff
[0009be8a] 0009bd80                  dc.l MO_TRANS
[0009be8e]                           dc.b $00
[0009be8f]                           dc.b $ff
[0009be90] 0009bd36                  dc.l MO_DRAG
[0009be94]                           dc.b $00
[0009be95]                           dc.b $ff
[0009be96] 0009bca2                  dc.l MO_ADD
[0009be9a]                           dc.b $00
[0009be9b]                           dc.b $00
[0009be9c]                           dc.b $00
[0009be9d]                           dc.b $00
[0009be9e]                           dc.b $00
[0009be9f]                           dc.b $00
[0009bea0]                           dc.b $00
[0009bea1]                           dc.b $00
[0009bea2]                           dc.b $00
[0009bea3]                           dc.b $00
[0009bea4]                           dc.b $00
[0009bea5]                           dc.b $00
[0009bea6]                           dc.b $00
[0009bea7]                           dc.b $00
[0009bea8]                           dc.b $00
[0009bea9]                           dc.b $00
[0009beaa]                           dc.b $00
[0009beab]                           dc.b $00
[0009beac]                           dc.b $00
[0009bead]                           dc.b $00
[0009beae]                           dc.b $00
[0009beaf]                           dc.b $00
[0009beb0]                           dc.b $00
[0009beb1]                           dc.b $00
[0009beb2]                           dc.b $00
[0009beb3]                           dc.b $00
[0009beb4]                           dc.b $00
[0009beb5]                           dc.b $00
[0009beb6]                           dc.b $00
[0009beb7]                           dc.b $00
[0009beb8]                           dc.b $00
[0009beb9]                           dc.b $00
[0009beba]                           dc.b $00
[0009bebb]                           dc.b $00
[0009bebc]                           dc.b $00
[0009bebd]                           dc.b $00
[0009bebe]                           dc.b $00
[0009bebf]                           dc.b $00
[0009bec0]                           dc.b $00
[0009bec1]                           dc.b $00
[0009bec2]                           dc.b $00
[0009bec3]                           dc.b $00
[0009bec4]                           dc.b $00
[0009bec5]                           dc.b $00
[0009bec6]                           dc.b $00
[0009bec7]                           dc.b $00
[0009bec8]                           dc.b $00
[0009bec9]                           dc.b $00
[0009beca]                           dc.b $00
[0009becb]                           dc.b $00
[0009becc]                           dc.b $00
[0009becd]                           dc.b $00
[0009bece]                           dc.b $00
[0009becf]                           dc.b $00
[0009bed0]                           dc.b $00
[0009bed1]                           dc.b $00
[0009bed2]                           dc.b $00
[0009bed3]                           dc.b $00
[0009bed4]                           dc.b $00
[0009bed5]                           dc.b $00
[0009bed6]                           dc.b $00
[0009bed7]                           dc.b $00
[0009bed8]                           dc.b $00
[0009bed9]                           dc.b $00
[0009beda]                           dc.b $00
[0009bedb]                           dc.b $00
[0009bedc]                           dc.b $00
[0009bedd]                           dc.b $00
[0009bede]                           dc.b $00
[0009bedf]                           dc.b $00
[0009bee0]                           dc.b $00
[0009bee1]                           dc.b $00
[0009bee2]                           dc.b $00
[0009bee3]                           dc.b $00
[0009bee4]                           dc.b $00
[0009bee5]                           dc.b $00
[0009bee6]                           dc.b $00
[0009bee7]                           dc.b $00
[0009bee8]                           dc.b $00
[0009bee9]                           dc.b $00
[0009beea]                           dc.b $00
[0009beeb]                           dc.b $00
[0009beec]                           dc.b $00
[0009beed]                           dc.b $00
[0009beee]                           dc.b $00
[0009beef]                           dc.b $00
[0009bef0]                           dc.b $00
[0009bef1]                           dc.b $00
[0009bef2]                           dc.b $00
[0009bef3]                           dc.b $00
[0009bef4]                           dc.b $00
[0009bef5]                           dc.b $00
[0009bef6]                           dc.b $00
[0009bef7]                           dc.b $00
[0009bef8]                           dc.b $00
[0009bef9]                           dc.b $00
[0009befa]                           dc.b $00
[0009befb]                           dc.b $00
[0009befc]                           dc.b $00
[0009befd]                           dc.b $00
[0009befe]                           dc.b $00
[0009beff]                           dc.b $00
[0009bf00]                           dc.b $00
[0009bf01]                           dc.b $00
[0009bf02]                           dc.b $00
[0009bf03]                           dc.b $00
[0009bf04]                           dc.b $00
[0009bf05]                           dc.b $00
[0009bf06]                           dc.b $00
[0009bf07]                           dc.b $00
[0009bf08]                           dc.b $00
[0009bf09]                           dc.b $00
[0009bf0a]                           dc.b $00
[0009bf0b]                           dc.b $00
[0009bf0c] 0009bfe2                  dc.l $0009bfe2 ; no symbol found
[0009bf10] 0009c021                  dc.l $0009c021 ; no symbol found
[0009bf14] 0009c053                  dc.l $0009c053 ; no symbol found
[0009bf18] 0009c0c8                  dc.l $0009c0c8 ; no symbol found
[0009bf1c] 0009c100                  dc.l $0009c100 ; no symbol found
[0009bf20] 0009c13c                  dc.l $0009c13c ; no symbol found
[0009bf24] 0009c177                  dc.l $0009c177 ; no symbol found
[0009bf28] 0009c1cb                  dc.l $0009c1cb ; no symbol found
[0009bf2c] 0009c224                  dc.l $0009c224 ; no symbol found
[0009bf30] 0009c291                  dc.l $0009c291 ; no symbol found
[0009bf34] 0009c2f8                  dc.l $0009c2f8 ; no symbol found
[0009bf38] 0009c33f                  dc.l $0009c33f ; no symbol found
[0009bf3c] 0009c38c                  dc.l $0009c38c ; no symbol found
[0009bf40] 0009c3c6                  dc.l $0009c3c6 ; no symbol found
[0009bf44] 0009c406                  dc.l $0009c406 ; no symbol found
[0009bf48] 0009c45a                  dc.l $0009c45a ; no symbol found
[0009bf4c] 0009c4a6                  dc.l $0009c4a6 ; no symbol found
[0009bf50] 0009c4fd                  dc.l $0009c4fd ; no symbol found
[0009bf54] 0009c55b                  dc.l $0009c55b ; no symbol found
[0009bf58] 0009c59f                  dc.l $0009c59f ; no symbol found
[0009bf5c] 0009c5dd                  dc.l $0009c5dd ; no symbol found
[0009bf60] 0009c617                  dc.l $0009c617 ; no symbol found
[0009bf64] 0009c65a                  dc.l $0009c65a ; no symbol found
[0009bf68] 0009c69d                  dc.l $0009c69d ; no symbol found
[0009bf6c] 0009c6f1                  dc.l $0009c6f1 ; no symbol found
[0009bf70] 0009c73b                  dc.l $0009c73b ; no symbol found
[0009bf74] 0009c78a                  dc.l $0009c78a ; no symbol found
[0009bf78] 0009c7cf                  dc.l $0009c7cf ; no symbol found
[0009bf7c] 0009c80f                  dc.l $0009c80f ; no symbol found
[0009bf80] 0009c85b                  dc.l $0009c85b ; no symbol found
[0009bf84] 0009c8ad                  dc.l $0009c8ad ; no symbol found
[0009bf88] 0009c8b7                  dc.l $0009c8b7 ; no symbol found
[0009bf8c] 0009c8bf                  dc.l $0009c8bf ; no symbol found
[0009bf90] 0009c8c6                  dc.l $0009c8c6 ; no symbol found
ACSconfig:
[0009bf94] 0009c020                  dc.l $0009c020 ; no symbol found
[0009bf98] 0009c8d0                  dc.l $0009c8d0 ; no symbol found
[0009bf9c]                           dc.b $00
[0009bf9d]                           dc.b $00
[0009bf9e]                           dc.b $00
[0009bf9f]                           dc.b $00
[0009bfa0]                           dc.b $00
[0009bfa1]                           dc.b $00
[0009bfa2]                           dc.b $00
[0009bfa3]                           dc.b $00
[0009bfa4]                           dc.b $00
[0009bfa5]                           dc.b $04
[0009bfa6] 0009c8d3                  dc.l $0009c8d3 ; no symbol found
[0009bfaa]                           dc.b $00
[0009bfab]                           dc.b $00
[0009bfac]                           dc.b $00
[0009bfad]                           dc.b $00
[0009bfae]                           dc.b $00
[0009bfaf]                           dc.b $00
[0009bfb0]                           dc.b $00
[0009bfb1]                           dc.b $00
[0009bfb2]                           dc.b $00
[0009bfb3]                           dc.b $00
[0009bfb4]                           dc.b $00
[0009bfb5]                           dc.b $00
[0009bfb6]                           dc.b $00
[0009bfb7]                           dc.b $00
[0009bfb8]                           dc.b $00
[0009bfb9]                           dc.b $00
[0009bfba]                           dc.b $00
[0009bfbb]                           dc.b $00
[0009bfbc]                           dc.b $00
[0009bfbd]                           dc.b $00
[0009bfbe]                           dc.b $00
[0009bfbf]                           dc.b $00
[0009bfc0]                           dc.b $00
[0009bfc1]                           dc.b $00
[0009bfc2]                           dc.b $00
[0009bfc3]                           dc.b $00
[0009bfc4]                           dc.b $00
[0009bfc5]                           dc.b $00
[0009bfc6]                           dc.b $00
[0009bfc7]                           dc.b $00
[0009bfc8]                           dc.b $00
[0009bfc9]                           dc.b $00
[0009bfca]                           dc.b $00
[0009bfcb]                           dc.b $00
[0009bfcc]                           dc.b $00
[0009bfcd]                           dc.b $00
[0009bfce]                           dc.b $00
[0009bfcf]                           dc.b $00
[0009bfd0]                           dc.b $00
[0009bfd1]                           dc.b $00
[0009bfd2]                           dc.b $00
[0009bfd3]                           dc.b $0c
[0009bfd4]                           dc.w $5045
[0009bfd6]                           dc.b $00
[0009bfd7]                           dc.b $00
[0009bfd8]                           dc.b $00
[0009bfd9]                           dc.b $00
[0009bfda] 00013d9e                  dc.l ACSinit0
[0009bfde] 00013dde                  dc.l ACSinit
[0009bfe2]                           dc.b '[3][ Es ist ein allgemeiner | Fehler aufgetreten! ][ Abbruch ]',0
[0009c021]                           dc.b '[1][ Ein Fehler ist aufgetreten! | %s][ Abbruch ]',0
[0009c053]                           dc.b '[1][ Die Anzahl der momentan| darstellbaren Farben oder| die aktuelle Bildauflîsung | ist nicht korrekt!][ Abbruch ]',0
[0009c0c8]                           dc.b '[1][ Eine Datei lieû sich | nicht erzeugen!][ Abbruch ]',0
[0009c100]                           dc.b '[3][ Die Datei ',$27,'%s',$27,'| lÑût sich nicht erzeugen! ][ Abbruch ]',0
[0009c13c]                           dc.b '[1][ Auf fremden Speicher | wurde zugegriffen!][ Abbruch ]',0
[0009c177]                           dc.b '[2][ | Soll das Accessory | >>               << | gestartet werden?| ][Ja|  Nein  ]',0
[0009c1cb]                           dc.b '[2][ Unbekannte GEM-Nachricht | erhalten.| ID = ',$27,'%s',$27,'| Weiterhin berichten?][Ja|  Nein  ]',0
[0009c224]                           dc.b '[3][ Keine freie GEM-Fenster-ID | mehr vorhanden!| Abhilfe: Ein offenes| GEM-Fenster schlieûen.][    OK    ]',0
[0009c291]                           dc.b '[3][ Kein freier ACS-Fenster- | Platz mehr vorhanden!| Abhilfe: Ein ACS-Fenster| lîschen.][    OK    ]',0
[0009c2f8]                           dc.b '[1][ Es ist ein Fehler bei der | Ein-/Ausgabe aufgetreten!][ Abbruch ]',0
[0009c33f]                           dc.b '[1][ Es ist ein Fehler in| der Speicherverwaltung | aufgetreten!][ Abbruch ]',0
[0009c38c]                           dc.b '[1][ Das Modul konnte nicht | geladen werden!][ Abbruch ]',0
[0009c3c6]                           dc.b '[1][ Das Modul ',$27,'%s',$27,' | konnte nicht geladen werden! ][ Abbruch ]',0
[0009c406]                           dc.b '[1][ Beim Laden des Moduls | (mit Pexec-3) ist ein| Fehler aufgetreten!][ Abbruch ]',0
[0009c45a]                           dc.b '[1][ Beim Laden des Moduls | ',$27,'%s',$27,' ist ein | Fehler aufgetreten!][ Abbruch ]',0
[0009c4a6]                           dc.b '[1][ Der dem Modul folgende| Restspeicher kann nicht | freigegeben werden!][ Abbruch ]',0
[0009c4fd]                           dc.b '[1][ Der dem Modul ',$27,'%s',$27,' | folgenden Restspeicher kann | nicht freigegeben werden!][ Abbruch ]',0
[0009c55b]                           dc.b '[1][ Die Adresse eines Speicher- | blocks ist ungerade!][ Abbruch ]',0
[0009c59f]                           dc.b '[1][ Eine Datei lieû sich| nicht korrekt îffnen! ][ Abbruch ]',0
[0009c5dd]                           dc.b '[1][ Die Datei ',$27,'%s',$27,' | lÑût sich nicht îffnen!][ Abbruch ]',0
[0009c617]                           dc.b '[1][ Es steht nicht genÅgend | Speicher zur VerfÅgung!][ Abbruch ]',0
[0009c65a]                           dc.b '[1][ Ein Fehler trat auf einem| Ein-/Ausgabekanal auf!][ Abbruch ]',0
[0009c69d]                           dc.b '[1][ Ein Speicherblock| befindet sich auûerhalb | der legalen Bereiche!][ Abbruch ]',0
[0009c6f1]                           dc.b '[1][ Beim Lesen aus einer Datei| ist ein Fehler aufgetreten! ][ Abbruch ]',0
[0009c73b]                           dc.b '[1][ Beim Lesen aus der Datei | ',$27,'%s',$27,' ist ein | Fehler aufgetreten!][ Abbruch ]',0
[0009c78a]                           dc.b '[1][ Das Modul hat leider eine | falsche Versionsnummer!][ Abbruch ]',0
[0009c7cf]                           dc.b '[1][Das Modul|',$27,'%s',$27,'|hat eine falsche|Versionsnummer!][ Abbruch ]',0
[0009c80f]                           dc.b '[1][ Beim Schreiben in eine Datei | ist ein Fehler aufgetreten!][ Abbruch ]',0
[0009c85b]                           dc.b '[1][ Beim Schreiben in die Datei | ',$27,'%s',$27,' ist ein | Fehler aufgetreten!][ Abbruch ]',0
[0009c8ad]                           dc.b ' Achtung ',0
[0009c8b7]                           dc.b ' Frage ',0
[0009c8bf]                           dc.b ' Stop ',0
[0009c8c6]                           dc.b ' Meldung ',0
[0009c8d0]                           dc.w $253b
[0009c8d2]                           dc.b $00
[0009c8d3]                           dc.b 'PUR_DESK',0
TEXT_002:
[0009c8dc]                           dc.b $00
TEXT_003:
[0009c8dd]                           dc.b 'Datenblîcke werden von USERDEFs benutzt, und sind daher von den entsprechenden Editoren zu bearbeiten.',0
TEXT_005:
[0009c944]                           dc.w $4f4b
[0009c946]                           dc.b $00
TEXT_006:
[0009c947]                           dc.b 'DATEN',0
TEXT_01:
[0009c94d]                           dc.b ' Data-Editor ',0
[0009c95b]                           dc.b $00
DATAS_09:
[0009c95c]                           dc.b $00
[0009c95d]                           dc.b $00
[0009c95e]                           dc.b $00
[0009c95f]                           dc.b $00
[0009c960]                           dc.w $02f0
[0009c962]                           dc.b $00
[0009c963]                           dc.b $00
[0009c964]                           dc.b $00
[0009c965]                           dc.b $00
[0009c966]                           dc.b $00
[0009c967]                           dc.b $00
[0009c968]                           dc.b $00
[0009c969]                           dc.b $00
[0009c96a]                           dc.b $00
[0009c96b]                           dc.b $00
[0009c96c]                           dc.b $00
[0009c96d]                           dc.b $00
[0009c96e]                           dc.b $00
[0009c96f]                           dc.b $00
[0009c970]                           dc.b $00
[0009c971]                           dc.b $00
[0009c972]                           dc.b $00
[0009c973]                           dc.b $00
[0009c974]                           dc.w $1fff
[0009c976]                           dc.w $ffff
[0009c978]                           dc.w $fff8
[0009c97a]                           dc.w $1000
[0009c97c]                           dc.b $00
[0009c97d]                           dc.b $00
[0009c97e]                           dc.b $00
[0009c97f]                           dc.b $08
[0009c980]                           dc.w $1000
[0009c982]                           dc.b $00
[0009c983]                           dc.b $00
[0009c984]                           dc.b $00
[0009c985]                           dc.b $08
[0009c986]                           dc.w $1004
[0009c988]                           dc.w $8040
[0009c98a]                           dc.b $00
[0009c98b]                           dc.b $88
[0009c98c]                           dc.w $1004
[0009c98e]                           dc.w $8040
[0009c990]                           dc.b $00
[0009c991]                           dc.b $88
[0009c992]                           dc.w $1004
[0009c994]                           dc.w $8040
[0009c996]                           dc.b $00
[0009c997]                           dc.b $88
[0009c998]                           dc.w $1004
[0009c99a]                           dc.w $8040
[0009c99c]                           dc.b $00
[0009c99d]                           dc.b $88
[0009c99e]                           dc.w $1004
[0009c9a0]                           dc.w $8040
[0009c9a2]                           dc.b $00
[0009c9a3]                           dc.b $88
[0009c9a4]                           dc.w $1004
[0009c9a6]                           dc.w $8040
[0009c9a8]                           dc.b $00
[0009c9a9]                           dc.b $88
[0009c9aa]                           dc.w $1004
[0009c9ac]                           dc.w $8040
[0009c9ae]                           dc.b $00
[0009c9af]                           dc.b $88
[0009c9b0]                           dc.w $1000
[0009c9b2]                           dc.b $00
[0009c9b3]                           dc.b $00
[0009c9b4]                           dc.b $00
[0009c9b5]                           dc.b $08
[0009c9b6]                           dc.w $1000
[0009c9b8]                           dc.b $00
[0009c9b9]                           dc.b $00
[0009c9ba]                           dc.b $00
[0009c9bb]                           dc.b $08
[0009c9bc]                           dc.w $1000
[0009c9be]                           dc.b $00
[0009c9bf]                           dc.b $00
[0009c9c0]                           dc.b $00
[0009c9c1]                           dc.b $08
[0009c9c2]                           dc.w $1000
[0009c9c4]                           dc.b $00
[0009c9c5]                           dc.b $00
[0009c9c6]                           dc.b $00
[0009c9c7]                           dc.b $08
[0009c9c8]                           dc.w $1000
[0009c9ca]                           dc.b $00
[0009c9cb]                           dc.b $00
[0009c9cc]                           dc.b $00
[0009c9cd]                           dc.b $08
[0009c9ce]                           dc.w $1100
[0009c9d0]                           dc.w $8048
[0009c9d2]                           dc.w $0488
[0009c9d4]                           dc.w $1100
[0009c9d6]                           dc.w $8048
[0009c9d8]                           dc.w $0488
[0009c9da]                           dc.w $1100
[0009c9dc]                           dc.w $8048
[0009c9de]                           dc.w $0488
[0009c9e0]                           dc.w $1100
[0009c9e2]                           dc.w $8048
[0009c9e4]                           dc.w $0488
[0009c9e6]                           dc.w $1100
[0009c9e8]                           dc.w $8048
[0009c9ea]                           dc.w $0488
[0009c9ec]                           dc.w $1100
[0009c9ee]                           dc.w $8048
[0009c9f0]                           dc.w $0488
[0009c9f2]                           dc.w $1100
[0009c9f4]                           dc.w $8048
[0009c9f6]                           dc.w $0488
[0009c9f8]                           dc.w $1000
[0009c9fa]                           dc.b $00
[0009c9fb]                           dc.b $00
[0009c9fc]                           dc.b $00
[0009c9fd]                           dc.b $08
[0009c9fe]                           dc.w $1000
[0009ca00]                           dc.b $00
[0009ca01]                           dc.b $00
[0009ca02]                           dc.b $00
[0009ca03]                           dc.b $08
[0009ca04]                           dc.w $1fff
[0009ca06]                           dc.w $ffff
[0009ca08]                           dc.w $fff8
[0009ca0a]                           dc.b $00
[0009ca0b]                           dc.b $00
[0009ca0c]                           dc.b $00
[0009ca0d]                           dc.b $00
[0009ca0e]                           dc.b $00
[0009ca0f]                           dc.b $00
[0009ca10]                           dc.b $00
[0009ca11]                           dc.b $00
[0009ca12]                           dc.b $00
[0009ca13]                           dc.b $00
[0009ca14]                           dc.b $00
[0009ca15]                           dc.b $00
[0009ca16]                           dc.b $00
[0009ca17]                           dc.b $00
[0009ca18]                           dc.b $00
[0009ca19]                           dc.b $00
[0009ca1a]                           dc.b $00
[0009ca1b]                           dc.b $00
[0009ca1c]                           dc.b $00
[0009ca1d]                           dc.b $00
[0009ca1e]                           dc.b $00
[0009ca1f]                           dc.b $00
[0009ca20]                           dc.b $00
[0009ca21]                           dc.b $00
[0009ca22]                           dc.b $00
[0009ca23]                           dc.b $00
[0009ca24]                           dc.b $00
[0009ca25]                           dc.b $00
[0009ca26]                           dc.b $00
[0009ca27]                           dc.b $00
[0009ca28]                           dc.b $00
[0009ca29]                           dc.b $00
[0009ca2a]                           dc.b $00
[0009ca2b]                           dc.b $00
[0009ca2c]                           dc.b $00
[0009ca2d]                           dc.b $00
[0009ca2e]                           dc.w $1fff
[0009ca30]                           dc.w $ffff
[0009ca32]                           dc.w $fff8
[0009ca34]                           dc.w $1000
[0009ca36]                           dc.b $00
[0009ca37]                           dc.b $00
[0009ca38]                           dc.b $00
[0009ca39]                           dc.b $08
[0009ca3a]                           dc.w $1000
[0009ca3c]                           dc.b $00
[0009ca3d]                           dc.b $00
[0009ca3e]                           dc.b $00
[0009ca3f]                           dc.b $08
[0009ca40]                           dc.w $1004
[0009ca42]                           dc.w $8040
[0009ca44]                           dc.b $00
[0009ca45]                           dc.b $88
[0009ca46]                           dc.w $1004
[0009ca48]                           dc.w $8040
[0009ca4a]                           dc.b $00
[0009ca4b]                           dc.b $88
[0009ca4c]                           dc.w $1004
[0009ca4e]                           dc.w $8040
[0009ca50]                           dc.b $00
[0009ca51]                           dc.b $88
[0009ca52]                           dc.w $1004
[0009ca54]                           dc.w $8040
[0009ca56]                           dc.b $00
[0009ca57]                           dc.b $88
[0009ca58]                           dc.w $1004
[0009ca5a]                           dc.w $8040
[0009ca5c]                           dc.b $00
[0009ca5d]                           dc.b $88
[0009ca5e]                           dc.w $1004
[0009ca60]                           dc.w $8040
[0009ca62]                           dc.b $00
[0009ca63]                           dc.b $88
[0009ca64]                           dc.w $1004
[0009ca66]                           dc.w $8040
[0009ca68]                           dc.b $00
[0009ca69]                           dc.b $88
[0009ca6a]                           dc.w $1000
[0009ca6c]                           dc.b $00
[0009ca6d]                           dc.b $00
[0009ca6e]                           dc.b $00
[0009ca6f]                           dc.b $08
[0009ca70]                           dc.w $1000
[0009ca72]                           dc.b $00
[0009ca73]                           dc.b $00
[0009ca74]                           dc.b $00
[0009ca75]                           dc.b $08
[0009ca76]                           dc.w $1000
[0009ca78]                           dc.b $00
[0009ca79]                           dc.b $00
[0009ca7a]                           dc.b $00
[0009ca7b]                           dc.b $08
[0009ca7c]                           dc.w $1000
[0009ca7e]                           dc.b $00
[0009ca7f]                           dc.b $00
[0009ca80]                           dc.b $00
[0009ca81]                           dc.b $08
[0009ca82]                           dc.w $1000
[0009ca84]                           dc.b $00
[0009ca85]                           dc.b $00
[0009ca86]                           dc.b $00
[0009ca87]                           dc.b $08
[0009ca88]                           dc.w $1100
[0009ca8a]                           dc.w $8048
[0009ca8c]                           dc.w $0488
[0009ca8e]                           dc.w $1100
[0009ca90]                           dc.w $8048
[0009ca92]                           dc.w $0488
[0009ca94]                           dc.w $1100
[0009ca96]                           dc.w $8048
[0009ca98]                           dc.w $0488
[0009ca9a]                           dc.w $1100
[0009ca9c]                           dc.w $8048
[0009ca9e]                           dc.w $0488
[0009caa0]                           dc.w $1100
[0009caa2]                           dc.w $8048
[0009caa4]                           dc.w $0488
[0009caa6]                           dc.w $1100
[0009caa8]                           dc.w $8048
[0009caaa]                           dc.w $0488
[0009caac]                           dc.w $1100
[0009caae]                           dc.w $8048
[0009cab0]                           dc.w $0488
[0009cab2]                           dc.w $1000
[0009cab4]                           dc.b $00
[0009cab5]                           dc.b $00
[0009cab6]                           dc.b $00
[0009cab7]                           dc.b $08
[0009cab8]                           dc.w $1000
[0009caba]                           dc.b $00
[0009cabb]                           dc.b $00
[0009cabc]                           dc.b $00
[0009cabd]                           dc.b $08
[0009cabe]                           dc.w $1fff
[0009cac0]                           dc.w $ffff
[0009cac2]                           dc.w $fff8
[0009cac4]                           dc.b $00
[0009cac5]                           dc.b $00
[0009cac6]                           dc.b $00
[0009cac7]                           dc.b $00
[0009cac8]                           dc.b $00
[0009cac9]                           dc.b $00
[0009caca]                           dc.b $00
[0009cacb]                           dc.b $00
[0009cacc]                           dc.b $00
[0009cacd]                           dc.b $00
[0009cace]                           dc.b $00
[0009cacf]                           dc.b $00
[0009cad0]                           dc.b $00
[0009cad1]                           dc.b $00
[0009cad2]                           dc.b $00
[0009cad3]                           dc.b $00
[0009cad4]                           dc.b $00
[0009cad5]                           dc.b $00
[0009cad6]                           dc.b $00
[0009cad7]                           dc.b $00
[0009cad8]                           dc.b $00
[0009cad9]                           dc.b $00
[0009cada]                           dc.b $00
[0009cadb]                           dc.b $00
[0009cadc]                           dc.b $00
[0009cadd]                           dc.b $00
[0009cade]                           dc.b $00
[0009cadf]                           dc.b $00
[0009cae0]                           dc.b $00
[0009cae1]                           dc.b $00
[0009cae2]                           dc.b $00
[0009cae3]                           dc.b $00
[0009cae4]                           dc.b $00
[0009cae5]                           dc.b $00
[0009cae6]                           dc.b $00
[0009cae7]                           dc.b $00
[0009cae8]                           dc.w $1fff
[0009caea]                           dc.w $ffff
[0009caec]                           dc.w $fff8
[0009caee]                           dc.w $1000
[0009caf0]                           dc.b $00
[0009caf1]                           dc.b $00
[0009caf2]                           dc.b $00
[0009caf3]                           dc.b $08
[0009caf4]                           dc.w $1000
[0009caf6]                           dc.b $00
[0009caf7]                           dc.b $00
[0009caf8]                           dc.b $00
[0009caf9]                           dc.b $08
[0009cafa]                           dc.w $1004
[0009cafc]                           dc.w $8040
[0009cafe]                           dc.b $00
[0009caff]                           dc.b $88
[0009cb00]                           dc.w $1004
[0009cb02]                           dc.w $8040
[0009cb04]                           dc.b $00
[0009cb05]                           dc.b $88
[0009cb06]                           dc.w $1004
[0009cb08]                           dc.w $8040
[0009cb0a]                           dc.b $00
[0009cb0b]                           dc.b $88
[0009cb0c]                           dc.w $1004
[0009cb0e]                           dc.w $8040
[0009cb10]                           dc.b $00
[0009cb11]                           dc.b $88
[0009cb12]                           dc.w $1004
[0009cb14]                           dc.w $8040
[0009cb16]                           dc.b $00
[0009cb17]                           dc.b $88
[0009cb18]                           dc.w $1004
[0009cb1a]                           dc.w $8040
[0009cb1c]                           dc.b $00
[0009cb1d]                           dc.b $88
[0009cb1e]                           dc.w $1004
[0009cb20]                           dc.w $8040
[0009cb22]                           dc.b $00
[0009cb23]                           dc.b $88
[0009cb24]                           dc.w $1000
[0009cb26]                           dc.b $00
[0009cb27]                           dc.b $00
[0009cb28]                           dc.b $00
[0009cb29]                           dc.b $08
[0009cb2a]                           dc.w $1000
[0009cb2c]                           dc.b $00
[0009cb2d]                           dc.b $00
[0009cb2e]                           dc.b $00
[0009cb2f]                           dc.b $08
[0009cb30]                           dc.w $1000
[0009cb32]                           dc.b $00
[0009cb33]                           dc.b $00
[0009cb34]                           dc.b $00
[0009cb35]                           dc.b $08
[0009cb36]                           dc.w $1000
[0009cb38]                           dc.b $00
[0009cb39]                           dc.b $00
[0009cb3a]                           dc.b $00
[0009cb3b]                           dc.b $08
[0009cb3c]                           dc.w $1000
[0009cb3e]                           dc.b $00
[0009cb3f]                           dc.b $00
[0009cb40]                           dc.b $00
[0009cb41]                           dc.b $08
[0009cb42]                           dc.w $1100
[0009cb44]                           dc.w $8048
[0009cb46]                           dc.w $0488
[0009cb48]                           dc.w $1100
[0009cb4a]                           dc.w $8048
[0009cb4c]                           dc.w $0488
[0009cb4e]                           dc.w $1100
[0009cb50]                           dc.w $8048
[0009cb52]                           dc.w $0488
[0009cb54]                           dc.w $1100
[0009cb56]                           dc.w $8048
[0009cb58]                           dc.w $0488
[0009cb5a]                           dc.w $1100
[0009cb5c]                           dc.w $8048
[0009cb5e]                           dc.w $0488
[0009cb60]                           dc.w $1100
[0009cb62]                           dc.w $8048
[0009cb64]                           dc.w $0488
[0009cb66]                           dc.w $1100
[0009cb68]                           dc.w $8048
[0009cb6a]                           dc.w $0488
[0009cb6c]                           dc.w $1000
[0009cb6e]                           dc.b $00
[0009cb6f]                           dc.b $00
[0009cb70]                           dc.b $00
[0009cb71]                           dc.b $08
[0009cb72]                           dc.w $1000
[0009cb74]                           dc.b $00
[0009cb75]                           dc.b $00
[0009cb76]                           dc.b $00
[0009cb77]                           dc.b $08
[0009cb78]                           dc.w $1fff
[0009cb7a]                           dc.w $ffff
[0009cb7c]                           dc.w $fff8
[0009cb7e]                           dc.b $00
[0009cb7f]                           dc.b $00
[0009cb80]                           dc.b $00
[0009cb81]                           dc.b $00
[0009cb82]                           dc.b $00
[0009cb83]                           dc.b $00
[0009cb84]                           dc.b $00
[0009cb85]                           dc.b $00
[0009cb86]                           dc.b $00
[0009cb87]                           dc.b $00
[0009cb88]                           dc.b $00
[0009cb89]                           dc.b $00
[0009cb8a]                           dc.b $00
[0009cb8b]                           dc.b $00
[0009cb8c]                           dc.b $00
[0009cb8d]                           dc.b $00
[0009cb8e]                           dc.b $00
[0009cb8f]                           dc.b $00
[0009cb90]                           dc.b $00
[0009cb91]                           dc.b $00
[0009cb92]                           dc.b $00
[0009cb93]                           dc.b $00
[0009cb94]                           dc.b $00
[0009cb95]                           dc.b $00
[0009cb96]                           dc.b $00
[0009cb97]                           dc.b $00
[0009cb98]                           dc.b $00
[0009cb99]                           dc.b $00
[0009cb9a]                           dc.b $00
[0009cb9b]                           dc.b $00
[0009cb9c]                           dc.b $00
[0009cb9d]                           dc.b $00
[0009cb9e]                           dc.b $00
[0009cb9f]                           dc.b $00
[0009cba0]                           dc.b $00
[0009cba1]                           dc.b $00
[0009cba2]                           dc.w $1fff
[0009cba4]                           dc.w $ffff
[0009cba6]                           dc.w $fff8
[0009cba8]                           dc.w $1fff
[0009cbaa]                           dc.w $ffff
[0009cbac]                           dc.w $fff8
[0009cbae]                           dc.w $1fff
[0009cbb0]                           dc.w $ffff
[0009cbb2]                           dc.w $fff8
[0009cbb4]                           dc.w $1e1f
[0009cbb6]                           dc.w $e1f0
[0009cbb8]                           dc.w $c3f8
[0009cbba]                           dc.w $1edf
[0009cbbc]                           dc.w $edf6
[0009cbbe]                           dc.w $dbf8
[0009cbc0]                           dc.w $1edf
[0009cbc2]                           dc.w $edf6
[0009cbc4]                           dc.w $dbf8
[0009cbc6]                           dc.w $1edf
[0009cbc8]                           dc.w $edf6
[0009cbca]                           dc.w $dbf8
[0009cbcc]                           dc.w $1edf
[0009cbce]                           dc.w $edf6
[0009cbd0]                           dc.w $dbf8
[0009cbd2]                           dc.w $1edf
[0009cbd4]                           dc.w $edf6
[0009cbd6]                           dc.w $dbf8
[0009cbd8]                           dc.w $1e1f
[0009cbda]                           dc.w $e1f0
[0009cbdc]                           dc.w $c3f8
[0009cbde]                           dc.w $1fff
[0009cbe0]                           dc.w $ffff
[0009cbe2]                           dc.w $fff8
[0009cbe4]                           dc.w $1fff
[0009cbe6]                           dc.w $ffff
[0009cbe8]                           dc.w $fff8
[0009cbea]                           dc.w $1fff
[0009cbec]                           dc.w $ffff
[0009cbee]                           dc.w $fff8
[0009cbf0]                           dc.w $1fff
[0009cbf2]                           dc.w $ffff
[0009cbf4]                           dc.w $fff8
[0009cbf6]                           dc.w $1fff
[0009cbf8]                           dc.w $ffff
[0009cbfa]                           dc.w $fff8
[0009cbfc]                           dc.w $1fc3
[0009cbfe]                           dc.w $e1fe
[0009cc00]                           dc.w $1ff8
[0009cc02]                           dc.w $1fdb
[0009cc04]                           dc.w $edfe
[0009cc06]                           dc.w $dff8
[0009cc08]                           dc.w $1fdb
[0009cc0a]                           dc.w $edfe
[0009cc0c]                           dc.w $dff8
[0009cc0e]                           dc.w $1fdb
[0009cc10]                           dc.w $edfe
[0009cc12]                           dc.w $dff8
[0009cc14]                           dc.w $1fdb
[0009cc16]                           dc.w $edfe
[0009cc18]                           dc.w $dff8
[0009cc1a]                           dc.w $1fdb
[0009cc1c]                           dc.w $edfe
[0009cc1e]                           dc.w $dff8
[0009cc20]                           dc.w $1fc3
[0009cc22]                           dc.w $e1fe
[0009cc24]                           dc.w $1ff8
[0009cc26]                           dc.w $1fff
[0009cc28]                           dc.w $ffff
[0009cc2a]                           dc.w $fff8
[0009cc2c]                           dc.w $1fff
[0009cc2e]                           dc.w $ffff
[0009cc30]                           dc.w $fff8
[0009cc32]                           dc.w $1fff
[0009cc34]                           dc.w $ffff
[0009cc36]                           dc.w $fff8
[0009cc38]                           dc.b $00
[0009cc39]                           dc.b $00
[0009cc3a]                           dc.b $00
[0009cc3b]                           dc.b $00
[0009cc3c]                           dc.b $00
[0009cc3d]                           dc.b $00
[0009cc3e]                           dc.b $00
[0009cc3f]                           dc.b $00
[0009cc40]                           dc.b $00
[0009cc41]                           dc.b $00
[0009cc42]                           dc.b $00
[0009cc43]                           dc.b $00
[0009cc44]                           dc.b $00
[0009cc45]                           dc.b $00
[0009cc46]                           dc.b $00
[0009cc47]                           dc.b $00
[0009cc48]                           dc.b $00
[0009cc49]                           dc.b $00
DATAS_10:
[0009cc4a]                           dc.b $00
[0009cc4b]                           dc.b $00
[0009cc4c]                           dc.b $00
[0009cc4d]                           dc.b $00
[0009cc4e]                           dc.b $00
[0009cc4f]                           dc.b $00
[0009cc50]                           dc.b $00
[0009cc51]                           dc.b $00
[0009cc52]                           dc.b $00
[0009cc53]                           dc.b $00
[0009cc54]                           dc.b $00
[0009cc55]                           dc.b $00
[0009cc56]                           dc.b $00
[0009cc57]                           dc.b $00
[0009cc58]                           dc.b $00
[0009cc59]                           dc.b $00
[0009cc5a]                           dc.b $00
[0009cc5b]                           dc.b $00
[0009cc5c]                           dc.w $1fff
[0009cc5e]                           dc.w $ffff
[0009cc60]                           dc.w $fff8
[0009cc62]                           dc.w $1fff
[0009cc64]                           dc.w $ffff
[0009cc66]                           dc.w $fff8
[0009cc68]                           dc.w $1fff
[0009cc6a]                           dc.w $ffff
[0009cc6c]                           dc.w $fff8
[0009cc6e]                           dc.w $1fff
[0009cc70]                           dc.w $ffff
[0009cc72]                           dc.w $fff8
[0009cc74]                           dc.w $1fff
[0009cc76]                           dc.w $ffff
[0009cc78]                           dc.w $fff8
[0009cc7a]                           dc.w $1fff
[0009cc7c]                           dc.w $ffff
[0009cc7e]                           dc.w $fff8
[0009cc80]                           dc.w $1fff
[0009cc82]                           dc.w $ffff
[0009cc84]                           dc.w $fff8
[0009cc86]                           dc.w $1fff
[0009cc88]                           dc.w $ffff
[0009cc8a]                           dc.w $fff8
[0009cc8c]                           dc.w $1fff
[0009cc8e]                           dc.w $ffff
[0009cc90]                           dc.w $fff8
[0009cc92]                           dc.w $1fff
[0009cc94]                           dc.w $ffff
[0009cc96]                           dc.w $fff8
[0009cc98]                           dc.w $1fff
[0009cc9a]                           dc.w $ffff
[0009cc9c]                           dc.w $fff8
[0009cc9e]                           dc.w $1fff
[0009cca0]                           dc.w $ffff
[0009cca2]                           dc.w $fff8
[0009cca4]                           dc.w $1fff
[0009cca6]                           dc.w $ffff
[0009cca8]                           dc.w $fff8
[0009ccaa]                           dc.w $1fff
[0009ccac]                           dc.w $ffff
[0009ccae]                           dc.w $fff8
[0009ccb0]                           dc.w $1fff
[0009ccb2]                           dc.w $ffff
[0009ccb4]                           dc.w $fff8
[0009ccb6]                           dc.w $1fff
[0009ccb8]                           dc.w $ffff
[0009ccba]                           dc.w $fff8
[0009ccbc]                           dc.w $1fff
[0009ccbe]                           dc.w $ffff
[0009ccc0]                           dc.w $fff8
[0009ccc2]                           dc.w $1fff
[0009ccc4]                           dc.w $ffff
[0009ccc6]                           dc.w $fff8
[0009ccc8]                           dc.w $1fff
[0009ccca]                           dc.w $ffff
[0009cccc]                           dc.w $fff8
[0009ccce]                           dc.w $1fff
[0009ccd0]                           dc.w $ffff
[0009ccd2]                           dc.w $fff8
[0009ccd4]                           dc.w $1fff
[0009ccd6]                           dc.w $ffff
[0009ccd8]                           dc.w $fff8
[0009ccda]                           dc.w $1fff
[0009ccdc]                           dc.w $ffff
[0009ccde]                           dc.w $fff8
[0009cce0]                           dc.w $1fff
[0009cce2]                           dc.w $ffff
[0009cce4]                           dc.w $fff8
[0009cce6]                           dc.w $1fff
[0009cce8]                           dc.w $ffff
[0009ccea]                           dc.w $fff8
[0009ccec]                           dc.w $1fff
[0009ccee]                           dc.w $ffff
[0009ccf0]                           dc.w $fff8
[0009ccf2]                           dc.b $00
[0009ccf3]                           dc.b $00
[0009ccf4]                           dc.b $00
[0009ccf5]                           dc.b $00
[0009ccf6]                           dc.b $00
[0009ccf7]                           dc.b $00
[0009ccf8]                           dc.b $00
[0009ccf9]                           dc.b $00
[0009ccfa]                           dc.b $00
[0009ccfb]                           dc.b $00
[0009ccfc]                           dc.b $00
[0009ccfd]                           dc.b $00
[0009ccfe]                           dc.b $00
[0009ccff]                           dc.b $00
[0009cd00]                           dc.b $00
[0009cd01]                           dc.b $00
[0009cd02]                           dc.b $00
[0009cd03]                           dc.b $00
A_3DBUTTON01:
[0009cd04] 0005a4e2                  dc.l A_3Dbutton
[0009cd08]                           dc.w $29c1
[0009cd0a]                           dc.w $0178
[0009cd0c] 00059318                  dc.l Auo_string
[0009cd10] 0009c944                  dc.l TEXT_005
[0009cd14]                           dc.b $00
[0009cd15]                           dc.b $00
[0009cd16]                           dc.b $00
[0009cd17]                           dc.b $00
[0009cd18]                           dc.b $00
[0009cd19]                           dc.b $00
[0009cd1a]                           dc.b $00
[0009cd1b]                           dc.b $00
[0009cd1c]                           dc.b $00
[0009cd1d]                           dc.b $00
[0009cd1e]                           dc.b $00
[0009cd1f]                           dc.b $00
[0009cd20]                           dc.b $00
[0009cd21]                           dc.b $00
[0009cd22]                           dc.b $00
[0009cd23]                           dc.b $00
A_3DBUTTON02:
[0009cd24] 0005a4e2                  dc.l A_3Dbutton
[0009cd28]                           dc.w $21f1
[0009cd2a]                           dc.w $01f8
[0009cd2c] 00059318                  dc.l Auo_string
[0009cd30]                           dc.b $00
[0009cd31]                           dc.b $00
[0009cd32]                           dc.b $00
[0009cd33]                           dc.b $00
[0009cd34]                           dc.b $00
[0009cd35]                           dc.b $00
[0009cd36]                           dc.b $00
[0009cd37]                           dc.b $00
[0009cd38]                           dc.b $00
[0009cd39]                           dc.b $00
[0009cd3a]                           dc.b $00
[0009cd3b]                           dc.b $00
[0009cd3c]                           dc.b $00
[0009cd3d]                           dc.b $00
[0009cd3e]                           dc.b $00
[0009cd3f]                           dc.b $00
[0009cd40]                           dc.b $00
[0009cd41]                           dc.b $00
[0009cd42]                           dc.b $00
[0009cd43]                           dc.b $00
A_FTEXT01:
[0009cd44] 0005b6f4                  dc.l A_ftext
[0009cd48]                           dc.b $00
[0009cd49]                           dc.b $01
[0009cd4a]                           dc.b $00
[0009cd4b]                           dc.b $0d
[0009cd4c] 0005bae4                  dc.l Auo_ftext
[0009cd50] 0009c8dd                  dc.l TEXT_003
[0009cd54]                           dc.b $00
[0009cd55]                           dc.b $00
[0009cd56]                           dc.b $00
[0009cd57]                           dc.b $00
[0009cd58]                           dc.b $00
[0009cd59]                           dc.b $00
[0009cd5a]                           dc.b $00
[0009cd5b]                           dc.b $00
[0009cd5c]                           dc.b $00
[0009cd5d]                           dc.b $00
[0009cd5e]                           dc.b $00
[0009cd5f]                           dc.b $00
[0009cd60]                           dc.b $00
[0009cd61]                           dc.b $00
[0009cd62]                           dc.b $00
[0009cd63]                           dc.b $00
A_INNERFRAME02:
[0009cd64] 00059f9c                  dc.l A_innerframe
[0009cd68]                           dc.w $1000
[0009cd6a]                           dc.w $8f19
[0009cd6c] 00059318                  dc.l Auo_string
[0009cd70]                           dc.b $00
[0009cd71]                           dc.b $00
[0009cd72]                           dc.b $00
[0009cd73]                           dc.b $00
[0009cd74]                           dc.b $00
[0009cd75]                           dc.b $00
[0009cd76]                           dc.b $00
[0009cd77]                           dc.b $00
[0009cd78]                           dc.b $00
[0009cd79]                           dc.b $00
[0009cd7a]                           dc.b $00
[0009cd7b]                           dc.b $00
[0009cd7c]                           dc.b $00
[0009cd7d]                           dc.b $00
[0009cd7e]                           dc.b $00
[0009cd7f]                           dc.b $00
[0009cd80]                           dc.b $00
[0009cd81]                           dc.b $00
[0009cd82]                           dc.b $00
[0009cd83]                           dc.b $00
_C4_IC_DATA:
[0009cd84]                           dc.b $00
[0009cd85]                           dc.b $04
[0009cd86] 0009c962                  dc.l $0009c962 ; no symbol found
[0009cd8a] 0009cc4a                  dc.l DATAS_10
[0009cd8e]                           dc.b $00
[0009cd8f]                           dc.b $00
[0009cd90]                           dc.b $00
[0009cd91]                           dc.b $00
[0009cd92]                           dc.b $00
[0009cd93]                           dc.b $00
[0009cd94]                           dc.b $00
[0009cd95]                           dc.b $00
[0009cd96]                           dc.b $00
[0009cd97]                           dc.b $00
[0009cd98]                           dc.b $00
[0009cd99]                           dc.b $00
_MSK_IC_DATA:
[0009cd9a]                           dc.b $00
[0009cd9b]                           dc.b $00
[0009cd9c]                           dc.b $00
[0009cd9d]                           dc.b $00
[0009cd9e]                           dc.b $00
[0009cd9f]                           dc.b $00
[0009cda0]                           dc.b $00
[0009cda1]                           dc.b $00
[0009cda2]                           dc.b $00
[0009cda3]                           dc.b $00
[0009cda4]                           dc.b $00
[0009cda5]                           dc.b $00
[0009cda6]                           dc.b $00
[0009cda7]                           dc.b $00
[0009cda8]                           dc.b $00
[0009cda9]                           dc.b $00
[0009cdaa]                           dc.b $00
[0009cdab]                           dc.b $00
[0009cdac]                           dc.w $1fff
[0009cdae]                           dc.w $ffff
[0009cdb0]                           dc.w $fff8
[0009cdb2]                           dc.w $1fff
[0009cdb4]                           dc.w $ffff
[0009cdb6]                           dc.w $fff8
[0009cdb8]                           dc.w $1fff
[0009cdba]                           dc.w $ffff
[0009cdbc]                           dc.w $fff8
[0009cdbe]                           dc.w $1fff
[0009cdc0]                           dc.w $ffff
[0009cdc2]                           dc.w $fff8
[0009cdc4]                           dc.w $1fff
[0009cdc6]                           dc.w $ffff
[0009cdc8]                           dc.w $fff8
[0009cdca]                           dc.w $1fff
[0009cdcc]                           dc.w $ffff
[0009cdce]                           dc.w $fff8
[0009cdd0]                           dc.w $1fff
[0009cdd2]                           dc.w $ffff
[0009cdd4]                           dc.w $fff8
[0009cdd6]                           dc.w $1fff
[0009cdd8]                           dc.w $ffff
[0009cdda]                           dc.w $fff8
[0009cddc]                           dc.w $1fff
[0009cdde]                           dc.w $ffff
[0009cde0]                           dc.w $fff8
[0009cde2]                           dc.w $1fff
[0009cde4]                           dc.w $ffff
[0009cde6]                           dc.w $fff8
[0009cde8]                           dc.w $1fff
[0009cdea]                           dc.w $ffff
[0009cdec]                           dc.w $fff8
[0009cdee]                           dc.w $1fff
[0009cdf0]                           dc.w $ffff
[0009cdf2]                           dc.w $fff8
[0009cdf4]                           dc.w $1fff
[0009cdf6]                           dc.w $ffff
[0009cdf8]                           dc.w $fff8
[0009cdfa]                           dc.w $1fff
[0009cdfc]                           dc.w $ffff
[0009cdfe]                           dc.w $fff8
[0009ce00]                           dc.w $1fff
[0009ce02]                           dc.w $ffff
[0009ce04]                           dc.w $fff8
[0009ce06]                           dc.w $1fff
[0009ce08]                           dc.w $ffff
[0009ce0a]                           dc.w $fff8
[0009ce0c]                           dc.w $1fff
[0009ce0e]                           dc.w $ffff
[0009ce10]                           dc.w $fff8
[0009ce12]                           dc.w $1fff
[0009ce14]                           dc.w $ffff
[0009ce16]                           dc.w $fff8
[0009ce18]                           dc.w $1fff
[0009ce1a]                           dc.w $ffff
[0009ce1c]                           dc.w $fff8
[0009ce1e]                           dc.w $1fff
[0009ce20]                           dc.w $ffff
[0009ce22]                           dc.w $fff8
[0009ce24]                           dc.w $1fff
[0009ce26]                           dc.w $ffff
[0009ce28]                           dc.w $fff8
[0009ce2a]                           dc.w $1fff
[0009ce2c]                           dc.w $ffff
[0009ce2e]                           dc.w $fff8
[0009ce30]                           dc.w $1fff
[0009ce32]                           dc.w $ffff
[0009ce34]                           dc.w $fff8
[0009ce36]                           dc.w $1fff
[0009ce38]                           dc.w $ffff
[0009ce3a]                           dc.w $fff8
[0009ce3c]                           dc.w $1fff
[0009ce3e]                           dc.w $ffff
[0009ce40]                           dc.w $fff8
[0009ce42]                           dc.b $00
[0009ce43]                           dc.b $00
[0009ce44]                           dc.b $00
[0009ce45]                           dc.b $00
[0009ce46]                           dc.b $00
[0009ce47]                           dc.b $00
[0009ce48]                           dc.b $00
[0009ce49]                           dc.b $00
[0009ce4a]                           dc.b $00
[0009ce4b]                           dc.b $00
[0009ce4c]                           dc.b $00
[0009ce4d]                           dc.b $00
[0009ce4e]                           dc.b $00
[0009ce4f]                           dc.b $00
[0009ce50]                           dc.b $00
[0009ce51]                           dc.b $00
[0009ce52]                           dc.b $00
[0009ce53]                           dc.b $00
_DAT_IC_DATA:
[0009ce54]                           dc.b $00
[0009ce55]                           dc.b $00
[0009ce56]                           dc.b $00
[0009ce57]                           dc.b $00
[0009ce58]                           dc.b $00
[0009ce59]                           dc.b $00
[0009ce5a]                           dc.b $00
[0009ce5b]                           dc.b $00
[0009ce5c]                           dc.b $00
[0009ce5d]                           dc.b $00
[0009ce5e]                           dc.b $00
[0009ce5f]                           dc.b $00
[0009ce60]                           dc.b $00
[0009ce61]                           dc.b $00
[0009ce62]                           dc.b $00
[0009ce63]                           dc.b $00
[0009ce64]                           dc.b $00
[0009ce65]                           dc.b $00
[0009ce66]                           dc.w $1fff
[0009ce68]                           dc.w $ffff
[0009ce6a]                           dc.w $fff8
[0009ce6c]                           dc.w $1000
[0009ce6e]                           dc.b $00
[0009ce6f]                           dc.b $00
[0009ce70]                           dc.b $00
[0009ce71]                           dc.b $08
[0009ce72]                           dc.w $1000
[0009ce74]                           dc.b $00
[0009ce75]                           dc.b $00
[0009ce76]                           dc.b $00
[0009ce77]                           dc.b $08
[0009ce78]                           dc.w $11e4
[0009ce7a]                           dc.w $9e4f
[0009ce7c]                           dc.w $3c88
[0009ce7e]                           dc.w $1124
[0009ce80]                           dc.w $9249
[0009ce82]                           dc.w $2488
[0009ce84]                           dc.w $1124
[0009ce86]                           dc.w $9249
[0009ce88]                           dc.w $2488
[0009ce8a]                           dc.w $1124
[0009ce8c]                           dc.w $9249
[0009ce8e]                           dc.w $2488
[0009ce90]                           dc.w $1124
[0009ce92]                           dc.w $9249
[0009ce94]                           dc.w $2488
[0009ce96]                           dc.w $1124
[0009ce98]                           dc.w $9249
[0009ce9a]                           dc.w $2488
[0009ce9c]                           dc.w $11e4
[0009ce9e]                           dc.w $9e4f
[0009cea0]                           dc.w $3c88
[0009cea2]                           dc.w $1000
[0009cea4]                           dc.b $00
[0009cea5]                           dc.b $00
[0009cea6]                           dc.b $00
[0009cea7]                           dc.b $08
[0009cea8]                           dc.w $1000
[0009ceaa]                           dc.b $00
[0009ceab]                           dc.b $00
[0009ceac]                           dc.b $00
[0009cead]                           dc.b $08
[0009ceae]                           dc.w $1000
[0009ceb0]                           dc.b $00
[0009ceb1]                           dc.b $00
[0009ceb2]                           dc.b $00
[0009ceb3]                           dc.b $08
[0009ceb4]                           dc.w $1000
[0009ceb6]                           dc.b $00
[0009ceb7]                           dc.b $00
[0009ceb8]                           dc.b $00
[0009ceb9]                           dc.b $08
[0009ceba]                           dc.w $1000
[0009cebc]                           dc.b $00
[0009cebd]                           dc.b $00
[0009cebe]                           dc.b $00
[0009cebf]                           dc.b $08
[0009cec0]                           dc.w $113c
[0009cec2]                           dc.w $9e49
[0009cec4]                           dc.w $e488
[0009cec6]                           dc.w $1124
[0009cec8]                           dc.w $9249
[0009ceca]                           dc.w $2488
[0009cecc]                           dc.w $1124
[0009cece]                           dc.w $9249
[0009ced0]                           dc.w $2488
[0009ced2]                           dc.w $1124
[0009ced4]                           dc.w $9249
[0009ced6]                           dc.w $2488
[0009ced8]                           dc.w $1124
[0009ceda]                           dc.w $9249
[0009cedc]                           dc.w $2488
[0009cede]                           dc.w $1124
[0009cee0]                           dc.w $9249
[0009cee2]                           dc.w $2488
[0009cee4]                           dc.w $113c
[0009cee6]                           dc.w $9e49
[0009cee8]                           dc.w $e488
[0009ceea]                           dc.w $1000
[0009ceec]                           dc.b $00
[0009ceed]                           dc.b $00
[0009ceee]                           dc.b $00
[0009ceef]                           dc.b $08
[0009cef0]                           dc.w $1000
[0009cef2]                           dc.b $00
[0009cef3]                           dc.b $00
[0009cef4]                           dc.b $00
[0009cef5]                           dc.b $08
[0009cef6]                           dc.w $1fff
[0009cef8]                           dc.w $ffff
[0009cefa]                           dc.w $fff8
[0009cefc]                           dc.b $00
[0009cefd]                           dc.b $00
[0009cefe]                           dc.b $00
[0009ceff]                           dc.b $00
[0009cf00]                           dc.b $00
[0009cf01]                           dc.b $00
[0009cf02]                           dc.b $00
[0009cf03]                           dc.b $00
[0009cf04]                           dc.b $00
[0009cf05]                           dc.b $00
[0009cf06]                           dc.b $00
[0009cf07]                           dc.b $00
[0009cf08]                           dc.b $00
[0009cf09]                           dc.b $00
[0009cf0a]                           dc.b $00
[0009cf0b]                           dc.b $00
[0009cf0c]                           dc.b $00
[0009cf0d]                           dc.b $00
IC_DATA:
[0009cf0e] 0009cd9a                  dc.l _MSK_IC_DATA
[0009cf12] 0009ce54                  dc.l _DAT_IC_DATA
[0009cf16] 0009c947                  dc.l TEXT_006
[0009cf1a]                           dc.w $1000
[0009cf1c]                           dc.b $00
[0009cf1d]                           dc.b $00
[0009cf1e]                           dc.b $00
[0009cf1f]                           dc.b $00
[0009cf20]                           dc.b $00
[0009cf21]                           dc.b $0c
[0009cf22]                           dc.b $00
[0009cf23]                           dc.b $00
[0009cf24]                           dc.b $00
[0009cf25]                           dc.b $30
[0009cf26]                           dc.b $00
[0009cf27]                           dc.b $1f
[0009cf28]                           dc.b $00
[0009cf29]                           dc.b $00
[0009cf2a]                           dc.b $00
[0009cf2b]                           dc.b $20
[0009cf2c]                           dc.b $00
[0009cf2d]                           dc.b $48
[0009cf2e]                           dc.b $00
[0009cf2f]                           dc.b $08
[0009cf30] 0009cd84                  dc.l _C4_IC_DATA
EDIT_DATA:
[0009cf34]                           dc.w $ffff
[0009cf36]                           dc.b $00
[0009cf37]                           dc.b $01
[0009cf38]                           dc.b $00
[0009cf39]                           dc.b $04
[0009cf3a]                           dc.b $00
[0009cf3b]                           dc.b $18
[0009cf3c]                           dc.b $00
[0009cf3d]                           dc.b $40
[0009cf3e]                           dc.b $00
[0009cf3f]                           dc.b $10
[0009cf40] 0009cd24                  dc.l A_3DBUTTON02
[0009cf44]                           dc.b $00
[0009cf45]                           dc.b $00
[0009cf46]                           dc.b $00
[0009cf47]                           dc.b $00
[0009cf48]                           dc.b $00
[0009cf49]                           dc.b $23
[0009cf4a]                           dc.b $00
[0009cf4b]                           dc.b $09
_01_EDIT_DATA:
[0009cf4c]                           dc.b $00
[0009cf4d]                           dc.b $04
[0009cf4e]                           dc.b $00
[0009cf4f]                           dc.b $02
[0009cf50]                           dc.b $00
[0009cf51]                           dc.b $02
[0009cf52]                           dc.b $00
[0009cf53]                           dc.b $18
[0009cf54]                           dc.b $00
[0009cf55]                           dc.b $40
[0009cf56]                           dc.b $00
[0009cf57]                           dc.b $00
[0009cf58] 0009cd64                  dc.l A_INNERFRAME02
[0009cf5c]                           dc.b $00
[0009cf5d]                           dc.b $01
[0009cf5e]                           dc.b $00
[0009cf5f]                           dc.b $00
[0009cf60]                           dc.b $00
[0009cf61]                           dc.b $21
[0009cf62]                           dc.b $00
[0009cf63]                           dc.b $06
_02_EDIT_DATA:
[0009cf64]                           dc.b $00
[0009cf65]                           dc.b $01
[0009cf66]                           dc.b $00
[0009cf67]                           dc.b $03
[0009cf68]                           dc.b $00
[0009cf69]                           dc.b $03
[0009cf6a]                           dc.b $00
[0009cf6b]                           dc.b $14
[0009cf6c]                           dc.b $00
[0009cf6d]                           dc.b $00
[0009cf6e]                           dc.b $00
[0009cf6f]                           dc.b $00
[0009cf70]                           dc.b $00
[0009cf71]                           dc.b $00
[0009cf72]                           dc.w $1101
[0009cf74]                           dc.b $00
[0009cf75]                           dc.b $01
[0009cf76]                           dc.b $00
[0009cf77]                           dc.b $01
[0009cf78]                           dc.b $00
[0009cf79]                           dc.b $1f
[0009cf7a]                           dc.b $00
[0009cf7b]                           dc.b $04
_03_EDIT_DATA:
[0009cf7c]                           dc.b $00
[0009cf7d]                           dc.b $02
[0009cf7e]                           dc.w $ffff
[0009cf80]                           dc.w $ffff
[0009cf82]                           dc.b $00
[0009cf83]                           dc.b $18
[0009cf84]                           dc.b $00
[0009cf85]                           dc.b $00
[0009cf86]                           dc.b $00
[0009cf87]                           dc.b $00
[0009cf88] 0009cd44                  dc.l A_FTEXT01
[0009cf8c]                           dc.b $00
[0009cf8d]                           dc.b $01
[0009cf8e]                           dc.b $00
[0009cf8f]                           dc.b $00
[0009cf90]                           dc.b $00
[0009cf91]                           dc.b $1d
[0009cf92]                           dc.b $00
[0009cf93]                           dc.b $04
_04_EDIT_DATA:
[0009cf94]                           dc.b $00
[0009cf95]                           dc.b $00
[0009cf96]                           dc.w $ffff
[0009cf98]                           dc.w $ffff
[0009cf9a]                           dc.b $00
[0009cf9b]                           dc.b $18
[0009cf9c]                           dc.b $00
[0009cf9d]                           dc.b $07
[0009cf9e]                           dc.b $00
[0009cf9f]                           dc.b $10
[0009cfa0] 0009cd04                  dc.l A_3DBUTTON01
[0009cfa4]                           dc.b $00
[0009cfa5]                           dc.b $0b
[0009cfa6]                           dc.b $00
[0009cfa7]                           dc.b $06
[0009cfa8]                           dc.b $00
[0009cfa9]                           dc.b $0c
[0009cfaa]                           dc.b $00
[0009cfab]                           dc.b $02
_04aEDIT_DATA:
[0009cfac] 0001b9c0                  dc.l editdat_abort
[0009cfb0]                           dc.b $00
[0009cfb1]                           dc.b $00
[0009cfb2]                           dc.b $00
[0009cfb3]                           dc.b $00
[0009cfb4]                           dc.w $8020
[0009cfb6]                           dc.w $884f
[0009cfb8]                           dc.b $00
[0009cfb9]                           dc.b $00
[0009cfba]                           dc.b $00
[0009cfbb]                           dc.b $00
[0009cfbc]                           dc.b $00
[0009cfbd]                           dc.b $00
[0009cfbe]                           dc.b $00
[0009cfbf]                           dc.b $00
[0009cfc0]                           dc.b $00
[0009cfc1]                           dc.b $00
[0009cfc2]                           dc.b $00
[0009cfc3]                           dc.b $00
WI_DATA:
[0009cfc4]                           dc.b $00
[0009cfc5]                           dc.b $00
[0009cfc6]                           dc.b $00
[0009cfc7]                           dc.b $00
[0009cfc8] 0001ba70                  dc.l dt_service
[0009cfcc] 0001b9d2                  dc.l dt_make
[0009cfd0] 0004f69e                  dc.l Awi_open
[0009cfd4] 0004e610                  dc.l Awi_init
[0009cfd8] 0009cf34                  dc.l EDIT_DATA
[0009cfdc]                           dc.b $00
[0009cfdd]                           dc.b $00
[0009cfde]                           dc.b $00
[0009cfdf]                           dc.b $00
[0009cfe0]                           dc.b $00
[0009cfe1]                           dc.b $00
[0009cfe2]                           dc.b $00
[0009cfe3]                           dc.b $00
[0009cfe4]                           dc.w $ffff
[0009cfe6]                           dc.w $601f
[0009cfe8]                           dc.b $00
[0009cfe9]                           dc.b $00
[0009cfea]                           dc.b $00
[0009cfeb]                           dc.b $00
[0009cfec]                           dc.b $00
[0009cfed]                           dc.b $63
[0009cfee]                           dc.b $00
[0009cfef]                           dc.b $63
[0009cff0]                           dc.b $00
[0009cff1]                           dc.b $00
[0009cff2]                           dc.b $00
[0009cff3]                           dc.b $00
[0009cff4]                           dc.b $00
[0009cff5]                           dc.b $00
[0009cff6]                           dc.b $00
[0009cff7]                           dc.b $00
[0009cff8]                           dc.b $00
[0009cff9]                           dc.b $00
[0009cffa]                           dc.b $00
[0009cffb]                           dc.b $00
[0009cffc]                           dc.b $00
[0009cffd]                           dc.b $00
[0009cffe]                           dc.b $00
[0009cfff]                           dc.b $00
[0009d000]                           dc.w $ffff
[0009d002]                           dc.w $ffff
[0009d004]                           dc.w $ffff
[0009d006]                           dc.w $ffff
[0009d008]                           dc.b $00
[0009d009]                           dc.b $00
[0009d00a]                           dc.b $00
[0009d00b]                           dc.b $00
[0009d00c]                           dc.w $fcf8
[0009d00e] 0009c94d                  dc.l TEXT_01
[0009d012] 0009c8dc                  dc.l TEXT_002
[0009d016]                           dc.w $2710
[0009d018]                           dc.w $0100
[0009d01a]                           dc.b $00
[0009d01b]                           dc.b $00
[0009d01c]                           dc.w $ffff
[0009d01e] 0009cf0e                  dc.l IC_DATA
[0009d022]                           dc.b $00
[0009d023]                           dc.b $00
[0009d024]                           dc.b $00
[0009d025]                           dc.b $00
[0009d026] 0005ef2c                  dc.l Awi_keys
[0009d02a] 0004b600                  dc.l Awi_obchange
[0009d02e] 0004b8cc                  dc.l Awi_redraw
[0009d032] 00050454                  dc.l Awi_topped
[0009d036] 0005013e                  dc.l Awi_closed
[0009d03a] 00050496                  dc.l Awi_fulled
[0009d03e] 0004bcc8                  dc.l Awi_arrowed
[0009d042] 0004beea                  dc.l Awi_hslid
[0009d046] 0004bf56                  dc.l Awi_vslid
[0009d04a] 000506ca                  dc.l Awi_sized
[0009d04e] 000507bc                  dc.l Awi_moved
[0009d052] 00050f9c                  dc.l Awi_iconify
[0009d056] 0005117c                  dc.l Awi_uniconify
[0009d05a] 00052328                  dc.l Awi_gemscript
[0009d05e]                           dc.b $00
[0009d05f]                           dc.b $00
[0009d060]                           dc.b $00
[0009d061]                           dc.b $00
[0009d062]                           dc.b $00
[0009d063]                           dc.b $00
[0009d064]                           dc.b $00
[0009d065]                           dc.b $00
