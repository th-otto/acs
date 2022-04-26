		.text

		.globl Akt_getKeyTab
Akt_getKeyTab:
		move.l     a2,-(a7)
		lea.l      kt,a2
		move.l     (a2),d0
		bne.s      Akt_getKeyTab_1
		movea.l    a2,a0
		move.l     #$4B455954,d0
		jsr        Ash_getcookie
		tst.w      d0
		beq.s      Akt_getKeyTab_2
		movea.l    (a2),a0
		cmpi.l     #$4B455954,(a0)
		beq.s      Akt_getKeyTab_1
Akt_getKeyTab_2:
		clr.l      (a2)
Akt_getKeyTab_1:
		movea.l    (a2),a0
		movea.l    (a7)+,a2
		rts

		.globl Akt_getExpMinNr
Akt_getExpMinNr:
		move.l     a2,-(a7)
		bsr.w      Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getExpMinNr_1
		moveq.l    #104,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getExpMinNr_1
		movea.l    104(a2),a0
		jsr        (a0)
		bra.s      Akt_getExpMinNr_2
Akt_getExpMinNr_1:
		clr.w      d0
Akt_getExpMinNr_2:
		movea.l    (a7)+,a2
		rts

		.globl Akt_getExpMaxNr
Akt_getExpMaxNr:
		move.l     a2,-(a7)
		bsr.w      Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getExpMaxNr_1
		movea.l    8(a2),a0
		jsr        (a0)
		bra.s      Akt_getExpMaxNr_2
Akt_getExpMaxNr_1:
		moveq.l    #-1,d0
Akt_getExpMaxNr_2:
		movea.l    (a7)+,a2
		rts

		.globl Akt_getImpMinNr
Akt_getImpMinNr:
		move.l     a2,-(a7)
		bsr.w      Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getImpMinNr_1
		moveq.l    #104,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getImpMinNr_1
		movea.l    108(a2),a0
		jsr        (a0)
		bra.s      Akt_getImpMinNr_2
Akt_getImpMinNr_1:
		clr.w      d0
Akt_getImpMinNr_2:
		movea.l    (a7)+,a2
		rts

		.globl Akt_getImpMaxNr
Akt_getImpMaxNr:
		move.l     a2,-(a7)
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getImpMaxNr_1
		movea.l    24(a2),a0
		jsr        (a0)
		bra.s      Akt_getImpMaxNr_2
Akt_getImpMaxNr_1:
		moveq.l    #-1,d0
Akt_getImpMaxNr_2:
		movea.l    (a7)+,a2
		rts

		.globl Akt_getExpNameFromNr
Akt_getExpNameFromNr:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.w     d0,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getExpNameFromNr_1
		moveq.l    #56,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getExpNameFromNr_2
		move.w     d3,-(a7)
		movea.l    48(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		movea.l    d0,a0
		bra.s      Akt_getExpNameFromNr_3
Akt_getExpNameFromNr_2:
		move.w     d3,-(a7)
		move.w     d3,d0
		movea.l    12(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		bra.s      Akt_getExpNameFromNr_3
Akt_getExpNameFromNr_1:
		suba.l     a0,a0
Akt_getExpNameFromNr_3:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Akt_getImpNameFromNr
Akt_getImpNameFromNr:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.w     d0,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getImpNameFromNr_1
		moveq.l    #56,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getImpNameFromNr_2
		move.w     d3,-(a7)
		movea.l    52(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		movea.l    d0,a0
		bra.s      Akt_getImpNameFromNr_3
Akt_getImpNameFromNr_2:
		move.w     d3,-(a7)
		move.w     d3,d0
		movea.l    28(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		bra.s      Akt_getImpNameFromNr_3
Akt_getImpNameFromNr_1:
		suba.l     a0,a0
Akt_getImpNameFromNr_3:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Akt_getExpShortNameFromNr
Akt_getExpShortNameFromNr:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.w     d0,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getExpShortNameFro_1
		moveq.l    #64,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getExpShortNameFro_1
		move.w     d3,-(a7)
		movea.l    56(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		movea.l    d0,a0
		bra.s      Akt_getExpShortNameFro_2
Akt_getExpShortNameFro_1:
		suba.l     a0,a0
Akt_getExpShortNameFro_2:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Akt_getImpShortNameFromNr
Akt_getImpShortNameFromNr:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.w     d0,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getImpShortNameFro_1
		moveq.l    #64,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getImpShortNameFro_1
		move.w     d3,-(a7)
		movea.l    60(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		movea.l    d0,a0
		bra.s      Akt_getImpShortNameFro_2
Akt_getImpShortNameFro_1:
		suba.l     a0,a0
Akt_getImpShortNameFro_2:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Akt_getRelease
Akt_getRelease:
		move.l     a2,-(a7)
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getRelease_1
		moveq.l    #76,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getRelease_1
		movea.l    64(a2),a0
		jsr        (a0)
		bra.s      Akt_getRelease_2
Akt_getRelease_1:
		moveq.l    #-1,d0
Akt_getRelease_2:
		movea.l    (a7)+,a2
		rts

		.globl Akt_getExpNrFromId
Akt_getExpNrFromId:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.w     d0,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getExpNrFromId_1
		move.w     d3,-(a7)
		movea.l    16(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		bra.s      Akt_getExpNrFromId_2
Akt_getExpNrFromId_1:
		moveq.l    #-1,d0
Akt_getExpNrFromId_2:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Akt_getImpNrFromId
Akt_getImpNrFromId:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.w     d0,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getImpNrFromId_1
		move.w     d3,-(a7)
		movea.l    32(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		bra.s      Akt_getImpNrFromId_2
Akt_getImpNrFromId_1:
		moveq.l    #-1,d0
Akt_getImpNrFromId_2:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Akt_getExpIdFromNr
Akt_getExpIdFromNr:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.w     d0,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getExpIdFromNr_1
		moveq.l    #76,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getExpIdFromNr_1
		move.w     d3,-(a7)
		movea.l    68(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		bra.s      Akt_getExpIdFromNr_2
Akt_getExpIdFromNr_1:
		moveq.l    #-1,d0
Akt_getExpIdFromNr_2:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Akt_getImpIdFromNr
Akt_getImpIdFromNr:
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.w     d0,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getImpIdFromNr_1
		moveq.l    #76,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getImpIdFromNr_1
		move.w     d3,-(a7)
		movea.l    72(a2),a0
		jsr        (a0)
		addq.w     #2,a7
		bra.s      Akt_getImpIdFromNr_2
Akt_getImpIdFromNr_1:
		moveq.l    #-1,d0
Akt_getImpIdFromNr_2:
		movea.l    (a7)+,a2
		move.w     (a7)+,d3
		rts

		.globl Akt_getExpNrFromName
Akt_getExpNrFromName:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getExpNrFromName_1
		moveq.l    #84,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getExpNrFromName_1
		move.l     a3,-(a7)
		movea.l    76(a2),a0
		jsr        (a0)
		addq.w     #4,a7
		bra.s      Akt_getExpNrFromName_2
Akt_getExpNrFromName_1:
		clr.w      d0
Akt_getExpNrFromName_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Akt_getImpNrFromName
Akt_getImpNrFromName:
		move.l     a2,-(a7)
		move.l     a3,-(a7)
		movea.l    a0,a3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getImpNrFromName_1
		moveq.l    #84,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getImpNrFromName_1
		move.l     a3,-(a7)
		movea.l    80(a2),a0
		jsr        (a0)
		addq.w     #4,a7
		bra.s      Akt_getImpNrFromName_2
Akt_getImpNrFromName_1:
		clr.w      d0
Akt_getImpNrFromName_2:
		movea.l    (a7)+,a3
		movea.l    (a7)+,a2
		rts

		.globl Akt_getEuro
Akt_getEuro:
		move.l     a2,-(a7)
		subq.w     #4,a7
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_getEuro_1
		moveq.l    #88,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_getEuro_1
		movea.l    84(a2),a0
		jsr        (a0)
		bra.s      Akt_getEuro_2
Akt_getEuro_1:
		lea.l      (a7),a0
		move.l     #$4555524F,d0
		jsr        Ash_getcookie
		tst.w      d0
		beq.s      Akt_getEuro_3
		move.l     (a7),d0
		bra.s      Akt_getEuro_2
Akt_getEuro_3:
		move.l     #$000002EC,d0
Akt_getEuro_2:
		addq.w     #4,a7
		movea.l    (a7)+,a2
		rts

/* new function */
	.globl Akt_getInfoShort
Akt_getInfoShort:
		movem.l    d3-d4/a2-a3,-(a7)
		move.w     d0,d4
		move.w     d1,d3
		movea.l    a0,a3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      x53320_1
		cmpi.l     #$0000008C,4(a2)
		blt.s      x53320_1
		move.l     a3,-(a7)
		move.w     d3,-(a7)
		move.w     d4,-(a7)
		movea.l    136(a2),a0
		jsr        (a0)
		addq.w     #8,a7
		bra.s      x53320_2
x53320_1:
		move.w     d3,d0
		subq.w     #1,d0
		beq.s      x53320_3
		subq.w     #2,d0
		beq.s      x53320_3
		bra.s      x53320_4
x53320_3:
		move.l     a3,d0
		beq.s      x53320_5
		move.w     #$FFFF,(a3)
x53320_5:
		moveq.l    #1,d0
		bra.s      x53320_2
x53320_4:
		clr.w      d0
x53320_2:
		movem.l    (a7)+,d3-d4/a2-a3
		rts

/* new function */
	.globl Akt_getInfoString
Akt_getInfoString:
		movem.l    d3-d5/a2-a3,-(a7)
		move.w     d0,d5
		move.w     d1,d4
		movea.l    a0,a2
		move.w     d2,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      x5336e_1
		cmpi.l     #$00000090,4(a3)
		blt.s      x5336e_1
		move.w     d3,-(a7)
		move.l     a2,-(a7)
		move.w     d4,-(a7)
		move.w     d5,-(a7)
		movea.l    140(a3),a0
		jsr        (a0)
		lea.l      10(a7),a7
		bra.s      x5336e_2
x5336e_1:
		move.w     d4,d0
		tst.w      d0
		beq.s      x5336e_3
		subq.w     #1,d0
		beq.s      x5336e_4
		bra.s      x5336e_5
x5336e_3:
		move.w     d5,d0
		bsr        Akt_getExpNameFromNr
		movea.l    a0,a3
		bra.s      x5336e_6
x5336e_4:
		move.w     d5,d0
		bsr        Akt_getExpShortNameFromNr
		movea.l    a0,a3
		bra.s      x5336e_6
x5336e_5:
		suba.l     a3,a3
x5336e_6:
		move.l     a3,d0
		beq.s      x5336e_7
		move.l     a2,d1
		beq.s      x5336e_7
		tst.w      d3
		ble.s      x5336e_8
		move.w     d3,d0
		ext.l      d0
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        strncpy
		clr.b      -1(a2,d3.w)
		bra.s      x5336e_7
x5336e_8:
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        strcpy
x5336e_7:
		move.l     a3,d0
		beq.s      x5336e_9
		moveq.l    #1,d0
		bra.s      x5336e_2
x5336e_9:
		clr.w      d0
x5336e_2:
		movem.l    (a7)+,d3-d5/a2-a3
		rts

		.globl Akt_CharAtari2X
Akt_CharAtari2X:
		movem.l    d3-d4/a2,-(a7)
		move.w     d0,d4
		move.b     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_CharAtari2X_1
		move.b     d3,-(a7)
		move.w     d4,-(a7)
		movea.l    20(a2),a0
		jsr        (a0)
		addq.w     #4,a7
		bra.s      Akt_CharAtari2X_2
Akt_CharAtari2X_1:
		move.b     d3,d0
Akt_CharAtari2X_2:
		movem.l    (a7)+,d3-d4/a2
		rts

		.globl Akt_CharX2Atari
Akt_CharX2Atari:
		movem.l    d3-d4/a2,-(a7)
		move.w     d0,d4
		move.b     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_CharX2Atari_1
		move.b     d3,-(a7)
		move.w     d4,-(a7)
		movea.l    36(a2),a0
		jsr        (a0)
		addq.w     #4,a7
		bra.s      Akt_CharX2Atari_2
Akt_CharX2Atari_1:
		move.b     d3,d0
Akt_CharX2Atari_2:
		movem.l    (a7)+,d3-d4/a2
		rts

		.globl Akt_BlockAtari2X
Akt_BlockAtari2X:
		movem.l    d3-d5/a2-a4,-(a7)
		movea.l    a0,a3
		move.w     d0,d4
		movea.l    a1,a4
		move.l     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a4,d0
		beq.s      Akt_BlockAtari2X_1
		cmp.l      a3,d0
		beq.s      Akt_BlockAtari2X_1
		movea.l    a4,a1
		movea.l    a3,a0
		move.l     d3,d0
		jsr        memcpy
Akt_BlockAtari2X_1:
		move.l     a2,d0
		beq.s      Akt_BlockAtari2X_2
		moveq.l    #48,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_BlockAtari2X_3
		move.l     a3,-(a7)
		move.l     d3,-(a7)
		move.w     d4,-(a7)
		movea.l    40(a2),a0
		jsr        (a0)
		lea.l      10(a7),a7
		bra.s      Akt_BlockAtari2X_2
Akt_BlockAtari2X_3:
		movea.l    a3,a4
		moveq.l    #0,d5
		bra.s      Akt_BlockAtari2X_4
Akt_BlockAtari2X_5:
		move.b     (a4),-(a7)
		move.w     d4,-(a7)
		movea.l    20(a2),a0
		jsr        (a0)
		addq.w     #4,a7
		move.b     d0,(a4)
		addq.l     #1,d5
		addq.w     #1,a4
Akt_BlockAtari2X_4:
		cmp.l      d5,d3
		bgt.s      Akt_BlockAtari2X_5
Akt_BlockAtari2X_2:
		movea.l    a3,a0
		movem.l    (a7)+,d3-d5/a2-a4
		rts

		.globl Akt_BlockX2Atari
Akt_BlockX2Atari:
		movem.l    d3-d5/a2-a4,-(a7)
		movea.l    a0,a3
		move.w     d0,d4
		movea.l    a1,a4
		move.l     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a4,d0
		beq.s      Akt_BlockX2Atari_1
		cmp.l      a3,d0
		beq.s      Akt_BlockX2Atari_1
		movea.l    a4,a1
		movea.l    a3,a0
		move.l     d3,d0
		jsr        memcpy
Akt_BlockX2Atari_1:
		move.l     a2,d0
		beq.s      Akt_BlockX2Atari_2
		moveq.l    #48,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_BlockX2Atari_3
		move.l     a3,-(a7)
		move.l     d3,-(a7)
		move.w     d4,-(a7)
		movea.l    44(a2),a0
		jsr        (a0)
		lea.l      10(a7),a7
		bra.s      Akt_BlockX2Atari_2
Akt_BlockX2Atari_3:
		movea.l    a3,a4
		moveq.l    #0,d5
		bra.s      Akt_BlockX2Atari_4
Akt_BlockX2Atari_5:
		move.b     (a4),-(a7)
		move.w     d4,-(a7)
		movea.l    36(a2),a0
		jsr        (a0)
		addq.w     #4,a7
		move.b     d0,(a4)
		addq.l     #1,d5
		addq.w     #1,a4
Akt_BlockX2Atari_4:
		cmp.l      d5,d3
		bgt.s      Akt_BlockX2Atari_5
Akt_BlockX2Atari_2:
		movea.l    a3,a0
		movem.l    (a7)+,d3-d5/a2-a4
		rts

		.globl Akt_StringAtari2X
Akt_StringAtari2X:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a3
		move.w     d0,d3
		movea.l    a1,a2
		movea.l    a1,a0
		jsr        strlen
		move.l     d0,d1
		addq.l     #1,d1
		movea.l    a2,a1
		move.w     d3,d0
		movea.l    a3,a0
		bsr        Akt_BlockAtari2X
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Akt_StringX2Atari
Akt_StringX2Atari:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a3
		move.w     d0,d3
		movea.l    a1,a2
		movea.l    a1,a0
		jsr        strlen
		move.l     d0,d1
		addq.l     #1,d1
		movea.l    a2,a1
		move.w     d3,d0
		movea.l    a3,a0
		bsr        Akt_BlockX2Atari
		movem.l    (a7)+,d3/a2-a3
		rts

		.globl Akt_CharX2Unicode
Akt_CharX2Unicode:
		movem.l    d3-d4/a2,-(a7)
		move.w     d0,d4
		move.b     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_CharX2Unicode_1
		moveq.l    #96,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_CharX2Unicode_1
		move.b     d3,-(a7)
		move.w     d4,-(a7)
		movea.l    88(a2),a0
		jsr        (a0)
		addq.w     #4,a7
		bra.s      Akt_CharX2Unicode_2
Akt_CharX2Unicode_1:
		move.b     d3,d0
		ext.w      d0
Akt_CharX2Unicode_2:
		movem.l    (a7)+,d3-d4/a2
		rts

		.globl Akt_CharUnicode2X
Akt_CharUnicode2X:
		movem.l    d3-d4/a2,-(a7)
		move.w     d0,d4
		move.w     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_CharUnicode2X_1
		moveq.l    #96,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_CharUnicode2X_1
		move.w     d3,-(a7)
		move.w     d4,-(a7)
		movea.l    92(a2),a0
		jsr        (a0)
		addq.w     #4,a7
		bra.s      Akt_CharUnicode2X_2
Akt_CharUnicode2X_1:
		moveq.l    #-1,d0
		and.b      d3,d0
Akt_CharUnicode2X_2:
		movem.l    (a7)+,d3-d4/a2
		rts

		.globl Akt_BlockX2Unicode
Akt_BlockX2Unicode:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a4
		move.w     d0,d4
		movea.l    a1,a3
		move.l     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_BlockX2Unicode_1
		moveq.l    #96,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_BlockX2Unicode_2
		move.l     d3,-(a7)
		move.l     a3,-(a7)
		move.w     d4,-(a7)
		move.l     a4,-(a7)
		movea.l    96(a2),a0
		jsr        (a0)
		lea.l      14(a7),a7
		bra.s      Akt_BlockX2Unicode_1
Akt_BlockX2Unicode_2:
		move.l     d3,d1
		add.l      d1,d1
		clr.w      d0
		movea.l    a4,a0
		jsr        memset
		suba.l     a0,a0
		bra.s      Akt_BlockX2Unicode_3
Akt_BlockX2Unicode_1:
		movea.l    a4,a0
Akt_BlockX2Unicode_3:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

		.globl Akt_BlockUnicode2X
Akt_BlockUnicode2X:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a4
		move.w     d0,d4
		movea.l    a1,a3
		move.l     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_BlockUnicode2X_1
		moveq.l    #96,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_BlockUnicode2X_2
		move.l     d3,-(a7)
		move.l     a3,-(a7)
		move.w     d4,-(a7)
		move.l     a4,-(a7)
		movea.l    100(a2),a0
		jsr        (a0)
		lea.l      14(a7),a7
		bra.s      Akt_BlockUnicode2X_1
Akt_BlockUnicode2X_2:
		suba.l     a0,a0
		bra.s      Akt_BlockUnicode2X_3
Akt_BlockUnicode2X_1:
		movea.l    a4,a0
Akt_BlockUnicode2X_3:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

		.globl Akt_StringX2Unicode
Akt_StringX2Unicode:
		movem.l    d3/a2-a3,-(a7)
		movea.l    a0,a3
		move.w     d0,d3
		movea.l    a1,a2
		movea.l    a1,a0
		jsr        strlen
		move.l     d0,d1
		addq.l     #1,d1
		movea.l    a2,a1
		move.w     d3,d0
		movea.l    a3,a0
		bsr        Akt_BlockX2Unicode
		movem.l    (a7)+,d3/a2-a3
		rts

	.IFNE 0 /* only in lib */
Akt_CharXUtf2Unicode:
		movem.l    d3-d4/a2-a4,-(a7)
		move.w     d0,d4
		movea.l    a0,a4
		move.l     d1,d3
		movea.l    a1,a3
		bsr.w      Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_CharXUtf2Unicode_1
		moveq.l    #104,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_CharXUtf2Unicode_1
		move.l     a3,-(a7)
		move.l     d3,-(a7)
		move.l     a4,-(a7)
		move.w     d4,-(a7)
		movea.l    112(a2),a0
		jsr        (a0)
		lea.l      14(a7),a7
		bra.s      Akt_CharXUtf2Unicode_2
Akt_CharXUtf2Unicode_1:
		move.l     a3,d0
		beq.s      Akt_CharXUtf2Unicode_3
		move.w     #$0001,(a3)
Akt_CharXUtf2Unicode_3:
		move.b     (a4),d1
		move.w     d4,d0
		bsr.w      Akt_CharX2Unicode
		ext.l      d0
Akt_CharXUtf2Unicode_2:
		movem.l    (a7)+,d3-d4/a2-a4
		rts
	.ENDC

	.IFNE 0 /* only in lib */
Akt_CharUnicode2XUtf:
		movem.l    d3-d4/a2-a4,-(a7)
		move.w     d0,d4
		move.l     d1,d3
		movea.l    a0,a4
		movea.l    a1,a3
		bsr.w      Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_CharUnicode2XUtf_1
		moveq.l    #104,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_CharUnicode2XUtf_1
		move.l     a3,-(a7)
		move.l     a4,-(a7)
		move.l     d3,-(a7)
		move.w     d4,-(a7)
		movea.l    116(a2),a0
		jsr        (a0)
		lea.l      14(a7),a7
		movea.l    d0,a0
		bra.s      Akt_CharUnicode2XUtf_2
Akt_CharUnicode2XUtf_1:
		move.l     a3,d0
		beq.s      Akt_CharUnicode2XUtf_3
		move.w     #$0001,(a3)
Akt_CharUnicode2XUtf_3:
		move.l     a4,d0
		beq.s      Akt_CharUnicode2XUtf_4
		moveq.l    #-1,d1
		and.w      d3,d1
		move.w     d4,d0
		bsr.w      Akt_CharUnicode2X
		move.b     d0,(a4)
Akt_CharUnicode2XUtf_4:
		movea.l    a4,a0
Akt_CharUnicode2XUtf_2:
		movem.l    (a7)+,d3-d4/a2-a4
		rts
	.ENDC

		.globl Akt_BlockXUtf2Unicode
Akt_BlockXUtf2Unicode:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		move.w     d0,d4
		move.l     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_BlockXUtf2Unicode_1
		moveq.l    #104,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_BlockXUtf2Unicode_2
		move.l     d3,-(a7)
		move.l     28(a7),-(a7)
		move.w     d4,-(a7)
		move.l     a3,-(a7)
		move.l     a4,-(a7)
		movea.l    120(a2),a0
		jsr        (a0)
		lea.l      18(a7),a7
		bra.s      Akt_BlockXUtf2Unicode_1
Akt_BlockXUtf2Unicode_2:
		suba.l     a0,a0
		bra.s      Akt_BlockXUtf2Unicode_3
Akt_BlockXUtf2Unicode_1:
		movea.l    a4,a0
Akt_BlockXUtf2Unicode_3:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

		.globl Akt_BlockUnicode2XUtf
Akt_BlockUnicode2XUtf:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		move.w     d0,d4
		move.l     d1,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_BlockUnicode2XUtf_1
		moveq.l    #104,d1
		cmp.l      4(a2),d1
		bgt.s      Akt_BlockUnicode2XUtf_1
		move.l     d3,-(a7)
		move.l     28(a7),-(a7)
		move.w     d4,-(a7)
		move.l     a3,-(a7)
		move.l     a4,-(a7)
		movea.l    124(a2),a0
		jsr        (a0)
		lea.l      18(a7),a7
		movea.l    a4,a0
		bra.s      Akt_BlockUnicode2XUtf_2
Akt_BlockUnicode2XUtf_1:
		suba.l     a0,a0
Akt_BlockUnicode2XUtf_2:
		movem.l    (a7)+,d3-d4/a2-a4
		rts

		.globl Akt_BlockXUtf2U2XUtf
Akt_BlockXUtf2U2XUtf:
		movem.l    d3-d5/a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		move.w     d0,d5
		move.l     d1,d4
		move.w     d2,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_BlockXUtf2U2XUtf_1
		cmpi.l     #$00000084,4(a2)
		blt.s      Akt_BlockXUtf2U2XUtf_2
		move.w     d3,-(a7)
		move.l     d4,-(a7)
		move.l     34(a7),-(a7)
		move.w     d5,-(a7)
		move.l     a3,-(a7)
		move.l     a4,-(a7)
		movea.l    128(a2),a0
		jsr        (a0)
		lea.l      20(a7),a7
		movea.l    a4,a0
		bra.s      Akt_BlockXUtf2U2XUtf_3
Akt_BlockXUtf2U2XUtf_2:
		move.l     a3,d0
		beq.s      Akt_BlockXUtf2U2XUtf_1
		move.l     #$FFFFFFFF,(a3)
Akt_BlockXUtf2U2XUtf_1:
		suba.l     a0,a0
Akt_BlockXUtf2U2XUtf_3:
		movem.l    (a7)+,d3-d5/a2-a4
		rts

		.globl Akt_BlockXUtf2XUtf
Akt_BlockXUtf2XUtf:
		movem.l    d3-d5/a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		move.w     d0,d5
		move.l     d1,d4
		move.w     d2,d3
		bsr        Akt_getKeyTab
		movea.l    a0,a2
		move.l     a2,d0
		beq.s      Akt_BlockXUtf2XUtf_1
		cmpi.l     #$00000088,4(a2)
		blt.s      Akt_BlockXUtf2XUtf_2
		move.w     d3,-(a7)
		move.l     d4,-(a7)
		move.l     34(a7),-(a7)
		move.w     d5,-(a7)
		move.l     a3,-(a7)
		move.l     a4,-(a7)
		movea.l    132(a2),a0
		jsr        (a0)
		lea.l      20(a7),a7
		movea.l    a4,a0
		bra.s      Akt_BlockXUtf2XUtf_3
Akt_BlockXUtf2XUtf_2:
		move.l     a3,d0
		beq.s      Akt_BlockXUtf2XUtf_1
		move.l     #$FFFFFFFF,(a3)
Akt_BlockXUtf2XUtf_1:
		suba.l     a0,a0
Akt_BlockXUtf2XUtf_3:
		movem.l    (a7)+,d3-d5/a2-a4
		rts

		.globl Akt_StringXUtf2Unicode
Akt_StringXUtf2Unicode:
		movem.l    d3/a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		move.w     d0,d3
		movea.l    20(a7),a2
		move.l     a2,-(a7)
		movea.l    a2,a0
		jsr        strlen
		move.l     d0,d1
		addq.l     #1,d1
		move.w     d3,d0
		movea.l    a3,a1
		movea.l    a4,a0
		bsr        Akt_BlockXUtf2Unicode
		addq.w     #4,a7
		movem.l    (a7)+,d3/a2-a4
		rts

		.globl Akt_StringXUtf2U2XUtf
Akt_StringXUtf2U2XUtf:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		move.w     d0,d4
		movea.l    24(a7),a2
		move.w     d1,d3
		move.l     a2,-(a7)
		movea.l    a2,a0
		jsr        strlen
		move.l     d0,d1
		addq.l     #1,d1
		move.w     d4,d0
		movea.l    a3,a1
		movea.l    a4,a0
		move.w     d3,d2
		bsr        Akt_BlockXUtf2U2XUtf
		addq.w     #4,a7
		movem.l    (a7)+,d3-d4/a2-a4
		rts

		.globl Akt_StringXUtf2XUtf
Akt_StringXUtf2XUtf:
		movem.l    d3-d4/a2-a4,-(a7)
		movea.l    a0,a4
		movea.l    a1,a3
		move.w     d0,d4
		movea.l    24(a7),a2
		move.w     d1,d3
		move.l     a2,-(a7)
		movea.l    a2,a0
		jsr        strlen
		move.l     d0,d1
		addq.l     #1,d1
		move.w     d4,d0
		movea.l    a3,a1
		movea.l    a4,a0
		move.w     d3,d2
		bsr        Akt_BlockXUtf2XUtf
		addq.w     #4,a7
		movem.l    (a7)+,d3-d4/a2-a4
		rts

		.globl Akt_popExpName
Akt_popExpName:
		movem.l    d3-d5/a2-a5,-(a7)
		movea.l    a0,a5
		bsr        Akt_getExpMaxNr
		move.w     d0,d3
		addq.w     #1,d3
		move.w     d3,d0
		lsl.w      #2,d0
		add.w      d3,d0
		lsl.w      #3,d0
		addq.w     #1,d0
		ext.l      d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Akt_popExpName_1
		suba.l     a0,a0
		bra.w      Akt_popExpName_2
Akt_popExpName_1:
		clr.b      (a2)
		clr.w      d4
		move.w     d4,d5
		lea.l      xd4508,a4
		bra.s      Akt_popExpName_3
Akt_popExpName_7:
		move.w     d4,d0
		bsr        Akt_getExpNameFromNr
		movea.l    a0,a3
		movea.l    a4,a1
		movea.l    a2,a0
		jsr        strcat
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        strcat
		cmp.w      d4,d3
		ble.s      Akt_popExpName_4
		lea.l      xd450a-xd4508(a4),a1
		movea.l    a2,a0
		jsr        strcat
		bra.s      Akt_popExpName_5
Akt_popExpName_4:
		movea.l    a4,a1
		movea.l    a2,a0
		jsr        strcat
Akt_popExpName_5:
		move.w     d5,d0
		ext.l      d0
		move.l     d0,-(a7)
		movea.l    a3,a0
		jsr        strlen
		cmp.l      (a7)+,d0
		bls.s      Akt_popExpName_6
		movea.l    a3,a0
		jsr        strlen
		move.l     d0,d5
Akt_popExpName_6:
		addq.w     #1,d4
Akt_popExpName_3:
		cmp.w      d4,d3
		bgt.s      Akt_popExpName_7
		move.l     a5,d0
		beq.s      Akt_popExpName_8
		moveq.l    #2,d1
		add.w      d5,d1
		move.w     d1,(a5)
Akt_popExpName_8:
		movea.l    a2,a0
Akt_popExpName_2:
		movem.l    (a7)+,d3-d5/a2-a5
		rts

		.globl Akt_popImpName
Akt_popImpName:
		movem.l    d3-d5/a2-a5,-(a7)
		movea.l    a0,a5
		bsr        Akt_getImpMaxNr
		move.w     d0,d3
		addq.w     #1,d3
		move.w     d3,d0
		lsl.w      #2,d0
		add.w      d3,d0
		lsl.w      #3,d0
		addq.w     #1,d0
		ext.l      d0
		jsr        Ax_malloc
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Akt_popImpName_1
		suba.l     a0,a0
		bra.w      Akt_popImpName_2
Akt_popImpName_1:
		clr.b      (a2)
		clr.w      d4
		move.w     d4,d5
		lea.l      xd4508,a4
		bra.s      Akt_popImpName_3
Akt_popImpName_7:
		move.w     d4,d0
		bsr        Akt_getImpNameFromNr
		movea.l    a0,a3
		movea.l    a4,a1
		movea.l    a2,a0
		jsr        strcat
		movea.l    a3,a1
		movea.l    a2,a0
		jsr        strcat
		cmp.w      d4,d3
		ble.s      Akt_popImpName_4
		lea.l      xd450a-xd4508(a4),a1
		movea.l    a2,a0
		jsr        strcat
		bra.s      Akt_popImpName_5
Akt_popImpName_4:
		movea.l    a4,a1
		movea.l    a2,a0
		jsr        strcat
Akt_popImpName_5:
		move.w     d5,d0
		ext.l      d0
		move.l     d0,-(a7)
		movea.l    a3,a0
		jsr        strlen
		cmp.l      (a7)+,d0
		bls.s      Akt_popImpName_6
		movea.l    a3,a0
		jsr        strlen
		move.l     d0,d5
Akt_popImpName_6:
		addq.w     #1,d4
Akt_popImpName_3:
		cmp.w      d4,d3
		bgt.s      Akt_popImpName_7
		move.l     a5,d0
		beq.s      Akt_popImpName_8
		moveq.l    #2,d1
		add.w      d5,d1
		move.w     d1,(a5)
Akt_popImpName_8:
		movea.l    a2,a0
Akt_popImpName_2:
		movem.l    (a7)+,d3-d5/a2-a5
		rts

		.globl Akt_chooseExpNr
Akt_chooseExpNr:
		movem.l    d3-d5/a2-a3,-(a7)
		subq.w     #2,a7
		movea.l    a0,a3
		move.w     d0,d5
		move.w     d1,d4
		moveq.l    #-1,d3
		lea.l      (a7),a0
		bsr        Akt_popExpName
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Akt_chooseExpNr_1
		moveq.l    #-1,d0
		bra.s      Akt_chooseExpNr_2
Akt_chooseExpNr_1:
		pea.l      xd4509
		move.w     d4,d2
		move.w     d5,d1
		movea.l    ACSblk,a0
		move.w     22(a0),d0
		muls.w     4(a7),d0
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        Ame_strpopup
		addq.w     #4,a7
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Akt_chooseExpNr_3
		moveq.l    #124,d0
		jsr        strchr
		move.l     a0,d0
		beq.s      Akt_chooseExpNr_4
		clr.b      (a0)
Akt_chooseExpNr_4:
		movea.l    a3,a0
		jsr        Ast_alltrim
		movea.l    a3,a0
		bsr        Akt_getExpNrFromName
		move.w     d0,d3
Akt_chooseExpNr_3:
		move.w     d3,d0
Akt_chooseExpNr_2:
		addq.w     #2,a7
		movem.l    (a7)+,d3-d5/a2-a3
		rts

		.globl Akt_chooseImpNr
Akt_chooseImpNr:
		movem.l    d3-d5/a2-a3,-(a7)
		subq.w     #2,a7
		movea.l    a0,a3
		move.w     d0,d5
		move.w     d1,d4
		moveq.l    #-1,d3
		lea.l      (a7),a0
		bsr        Akt_popImpName
		movea.l    a0,a2
		move.l     a2,d0
		bne.s      Akt_chooseImpNr_1
		moveq.l    #-1,d0
		bra.s      Akt_chooseImpNr_2
Akt_chooseImpNr_1:
		pea.l      xd4509
		move.w     d4,d2
		move.w     d5,d1
		movea.l    ACSblk,a0
		move.w     22(a0),d0
		muls.w     4(a7),d0
		movea.l    a2,a1
		movea.l    a3,a0
		jsr        Ame_strpopup
		addq.w     #4,a7
		movea.l    a0,a3
		move.l     a3,d0
		beq.s      Akt_chooseImpNr_3
		moveq.l    #124,d0
		jsr        strchr
		move.l     a0,d0
		beq.s      Akt_chooseImpNr_4
		clr.b      (a0)
Akt_chooseImpNr_4:
		movea.l    a3,a0
		jsr        Ast_alltrim
		movea.l    a3,a0
		bsr        Akt_getImpNrFromName
		move.w     d0,d3
Akt_chooseImpNr_3:
		move.w     d3,d0
Akt_chooseImpNr_2:
		addq.w     #2,a7
		movem.l    (a7)+,d3-d5/a2-a3
		rts

		.data

kt:
		dc.b $00
		dc.b $00
		dc.b $00
		dc.b $00
xd4508:
		dc.b $20
xd4509:
		dc.b 0
xd450a:
		dc.w $207c
		dc.b $00
		.even
