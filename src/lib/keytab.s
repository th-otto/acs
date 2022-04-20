
Akt_getKeyTab:
[0005304a] 2f0a                      move.l     a2,-(a7)
[0005304c] 45f9 000d 4504            lea.l      kt,a2
[00053052] 2012                      move.l     (a2),d0
[00053054] 661e                      bne.s      Akt_getKeyTab_1
[00053056] 204a                      movea.l    a2,a0
[00053058] 203c 4b45 5954            move.l     #$4B455954,d0
[0005305e] 4eb9 0007 2bf4            jsr        Ash_getcookie
[00053064] 4a40                      tst.w      d0
[00053066] 670a                      beq.s      Akt_getKeyTab_2
[00053068] 2052                      movea.l    (a2),a0
[0005306a] 0c90 4b45 5954            cmpi.l     #$4B455954,(a0)
[00053070] 6702                      beq.s      Akt_getKeyTab_1
Akt_getKeyTab_2:
[00053072] 4292                      clr.l      (a2)
Akt_getKeyTab_1:
[00053074] 2052                      movea.l    (a2),a0
[00053076] 245f                      movea.l    (a7)+,a2
[00053078] 4e75                      rts

Akt_getExpMinNr:
[0005307a] 2f0a                      move.l     a2,-(a7)
[0005307c] 6100 ffcc                 bsr.w      Akt_getKeyTab
[00053080] 2448                      movea.l    a0,a2
[00053082] 200a                      move.l     a2,d0
[00053084] 6710                      beq.s      Akt_getExpMinNr_1
[00053086] 7268                      moveq.l    #104,d1
[00053088] b2aa 0004                 cmp.l      4(a2),d1
[0005308c] 6e08                      bgt.s      Akt_getExpMinNr_1
[0005308e] 206a 0068                 movea.l    104(a2),a0
[00053092] 4e90                      jsr        (a0)
[00053094] 6002                      bra.s      Akt_getExpMinNr_2
Akt_getExpMinNr_1:
[00053096] 4240                      clr.w      d0
Akt_getExpMinNr_2:
[00053098] 245f                      movea.l    (a7)+,a2
[0005309a] 4e75                      rts

Akt_getExpMaxNr:
[0005309c] 2f0a                      move.l     a2,-(a7)
[0005309e] 6100 ffaa                 bsr.w      Akt_getKeyTab
[000530a2] 2448                      movea.l    a0,a2
[000530a4] 200a                      move.l     a2,d0
[000530a6] 6708                      beq.s      Akt_getExpMaxNr_1
[000530a8] 206a 0008                 movea.l    8(a2),a0
[000530ac] 4e90                      jsr        (a0)
[000530ae] 6002                      bra.s      Akt_getExpMaxNr_2
Akt_getExpMaxNr_1:
[000530b0] 70ff                      moveq.l    #-1,d0
Akt_getExpMaxNr_2:
[000530b2] 245f                      movea.l    (a7)+,a2
[000530b4] 4e75                      rts

Akt_getImpMinNr:
[000530b6] 2f0a                      move.l     a2,-(a7)
[000530b8] 6100 ff90                 bsr.w      Akt_getKeyTab
[000530bc] 2448                      movea.l    a0,a2
[000530be] 200a                      move.l     a2,d0
[000530c0] 6710                      beq.s      Akt_getImpMinNr_1
[000530c2] 7268                      moveq.l    #104,d1
[000530c4] b2aa 0004                 cmp.l      4(a2),d1
[000530c8] 6e08                      bgt.s      Akt_getImpMinNr_1
[000530ca] 206a 006c                 movea.l    108(a2),a0
[000530ce] 4e90                      jsr        (a0)
[000530d0] 6002                      bra.s      Akt_getImpMinNr_2
Akt_getImpMinNr_1:
[000530d2] 4240                      clr.w      d0
Akt_getImpMinNr_2:
[000530d4] 245f                      movea.l    (a7)+,a2
[000530d6] 4e75                      rts

Akt_getImpMaxNr:
[000530d8] 2f0a                      move.l     a2,-(a7)
[000530da] 6100 ff6e                 bsr        Akt_getKeyTab
[000530de] 2448                      movea.l    a0,a2
[000530e0] 200a                      move.l     a2,d0
[000530e2] 6708                      beq.s      Akt_getImpMaxNr_1
[000530e4] 206a 0018                 movea.l    24(a2),a0
[000530e8] 4e90                      jsr        (a0)
[000530ea] 6002                      bra.s      Akt_getImpMaxNr_2
Akt_getImpMaxNr_1:
[000530ec] 70ff                      moveq.l    #-1,d0
Akt_getImpMaxNr_2:
[000530ee] 245f                      movea.l    (a7)+,a2
[000530f0] 4e75                      rts

Akt_getExpNameFromNr:
[000530f2] 3f03                      move.w     d3,-(a7)
[000530f4] 2f0a                      move.l     a2,-(a7)
[000530f6] 3600                      move.w     d0,d3
[000530f8] 6100 ff50                 bsr        Akt_getKeyTab
[000530fc] 2448                      movea.l    a0,a2
[000530fe] 200a                      move.l     a2,d0
[00053100] 6724                      beq.s      Akt_getExpNameFromNr_1
[00053102] 7238                      moveq.l    #56,d1
[00053104] b2aa 0004                 cmp.l      4(a2),d1
[00053108] 6e0e                      bgt.s      Akt_getExpNameFromNr_2
[0005310a] 3f03                      move.w     d3,-(a7)
[0005310c] 206a 0030                 movea.l    48(a2),a0
[00053110] 4e90                      jsr        (a0)
[00053112] 544f                      addq.w     #2,a7
[00053114] 2040                      movea.l    d0,a0
[00053116] 6010                      bra.s      Akt_getExpNameFromNr_3
Akt_getExpNameFromNr_2:
[00053118] 3f03                      move.w     d3,-(a7)
[0005311a] 3003                      move.w     d3,d0
[0005311c] 206a 000c                 movea.l    12(a2),a0
[00053120] 4e90                      jsr        (a0)
[00053122] 544f                      addq.w     #2,a7
[00053124] 6002                      bra.s      Akt_getExpNameFromNr_3
Akt_getExpNameFromNr_1:
[00053126] 91c8                      suba.l     a0,a0
Akt_getExpNameFromNr_3:
[00053128] 245f                      movea.l    (a7)+,a2
[0005312a] 361f                      move.w     (a7)+,d3
[0005312c] 4e75                      rts

Akt_getImpNameFromNr:
[0005312e] 3f03                      move.w     d3,-(a7)
[00053130] 2f0a                      move.l     a2,-(a7)
[00053132] 3600                      move.w     d0,d3
[00053134] 6100 ff14                 bsr        Akt_getKeyTab
[00053138] 2448                      movea.l    a0,a2
[0005313a] 200a                      move.l     a2,d0
[0005313c] 6724                      beq.s      Akt_getImpNameFromNr_1
[0005313e] 7238                      moveq.l    #56,d1
[00053140] b2aa 0004                 cmp.l      4(a2),d1
[00053144] 6e0e                      bgt.s      Akt_getImpNameFromNr_2
[00053146] 3f03                      move.w     d3,-(a7)
[00053148] 206a 0034                 movea.l    52(a2),a0
[0005314c] 4e90                      jsr        (a0)
[0005314e] 544f                      addq.w     #2,a7
[00053150] 2040                      movea.l    d0,a0
[00053152] 6010                      bra.s      Akt_getImpNameFromNr_3
Akt_getImpNameFromNr_2:
[00053154] 3f03                      move.w     d3,-(a7)
[00053156] 3003                      move.w     d3,d0
[00053158] 206a 001c                 movea.l    28(a2),a0
[0005315c] 4e90                      jsr        (a0)
[0005315e] 544f                      addq.w     #2,a7
[00053160] 6002                      bra.s      Akt_getImpNameFromNr_3
Akt_getImpNameFromNr_1:
[00053162] 91c8                      suba.l     a0,a0
Akt_getImpNameFromNr_3:
[00053164] 245f                      movea.l    (a7)+,a2
[00053166] 361f                      move.w     (a7)+,d3
[00053168] 4e75                      rts

Akt_getExpShortNameFro:
[0005316a] 3f03                      move.w     d3,-(a7)
[0005316c] 2f0a                      move.l     a2,-(a7)
[0005316e] 3600                      move.w     d0,d3
[00053170] 6100 fed8                 bsr        Akt_getKeyTab
[00053174] 2448                      movea.l    a0,a2
[00053176] 200a                      move.l     a2,d0
[00053178] 6716                      beq.s      Akt_getExpShortNameFro_1
[0005317a] 7240                      moveq.l    #64,d1
[0005317c] b2aa 0004                 cmp.l      4(a2),d1
[00053180] 6e0e                      bgt.s      Akt_getExpShortNameFro_1
[00053182] 3f03                      move.w     d3,-(a7)
[00053184] 206a 0038                 movea.l    56(a2),a0
[00053188] 4e90                      jsr        (a0)
[0005318a] 544f                      addq.w     #2,a7
[0005318c] 2040                      movea.l    d0,a0
[0005318e] 6002                      bra.s      Akt_getExpShortNameFro_2
Akt_getExpShortNameFro_1:
[00053190] 91c8                      suba.l     a0,a0
Akt_getExpShortNameFro_2:
[00053192] 245f                      movea.l    (a7)+,a2
[00053194] 361f                      move.w     (a7)+,d3
[00053196] 4e75                      rts

Akt_getImpShortNameFro:
[00053198] 3f03                      move.w     d3,-(a7)
[0005319a] 2f0a                      move.l     a2,-(a7)
[0005319c] 3600                      move.w     d0,d3
[0005319e] 6100 feaa                 bsr        Akt_getKeyTab
[000531a2] 2448                      movea.l    a0,a2
[000531a4] 200a                      move.l     a2,d0
[000531a6] 6716                      beq.s      Akt_getImpShortNameFro_1
[000531a8] 7240                      moveq.l    #64,d1
[000531aa] b2aa 0004                 cmp.l      4(a2),d1
[000531ae] 6e0e                      bgt.s      Akt_getImpShortNameFro_1
[000531b0] 3f03                      move.w     d3,-(a7)
[000531b2] 206a 003c                 movea.l    60(a2),a0
[000531b6] 4e90                      jsr        (a0)
[000531b8] 544f                      addq.w     #2,a7
[000531ba] 2040                      movea.l    d0,a0
[000531bc] 6002                      bra.s      Akt_getImpShortNameFro_2
Akt_getImpShortNameFro_1:
[000531be] 91c8                      suba.l     a0,a0
Akt_getImpShortNameFro_2:
[000531c0] 245f                      movea.l    (a7)+,a2
[000531c2] 361f                      move.w     (a7)+,d3
[000531c4] 4e75                      rts

Akt_getRelease:
[000531c6] 2f0a                      move.l     a2,-(a7)
[000531c8] 6100 fe80                 bsr        Akt_getKeyTab
[000531cc] 2448                      movea.l    a0,a2
[000531ce] 200a                      move.l     a2,d0
[000531d0] 6710                      beq.s      Akt_getRelease_1
[000531d2] 724c                      moveq.l    #76,d1
[000531d4] b2aa 0004                 cmp.l      4(a2),d1
[000531d8] 6e08                      bgt.s      Akt_getRelease_1
[000531da] 206a 0040                 movea.l    64(a2),a0
[000531de] 4e90                      jsr        (a0)
[000531e0] 6002                      bra.s      Akt_getRelease_2
Akt_getRelease_1:
[000531e2] 70ff                      moveq.l    #-1,d0
Akt_getRelease_2:
[000531e4] 245f                      movea.l    (a7)+,a2
[000531e6] 4e75                      rts

Akt_getExpNrFromId:
[000531e8] 3f03                      move.w     d3,-(a7)
[000531ea] 2f0a                      move.l     a2,-(a7)
[000531ec] 3600                      move.w     d0,d3
[000531ee] 6100 fe5a                 bsr        Akt_getKeyTab
[000531f2] 2448                      movea.l    a0,a2
[000531f4] 200a                      move.l     a2,d0
[000531f6] 670c                      beq.s      Akt_getExpNrFromId_1
[000531f8] 3f03                      move.w     d3,-(a7)
[000531fa] 206a 0010                 movea.l    16(a2),a0
[000531fe] 4e90                      jsr        (a0)
[00053200] 544f                      addq.w     #2,a7
[00053202] 6002                      bra.s      Akt_getExpNrFromId_2
Akt_getExpNrFromId_1:
[00053204] 70ff                      moveq.l    #-1,d0
Akt_getExpNrFromId_2:
[00053206] 245f                      movea.l    (a7)+,a2
[00053208] 361f                      move.w     (a7)+,d3
[0005320a] 4e75                      rts

Akt_getImpNrFromId:
[0005320c] 3f03                      move.w     d3,-(a7)
[0005320e] 2f0a                      move.l     a2,-(a7)
[00053210] 3600                      move.w     d0,d3
[00053212] 6100 fe36                 bsr        Akt_getKeyTab
[00053216] 2448                      movea.l    a0,a2
[00053218] 200a                      move.l     a2,d0
[0005321a] 670c                      beq.s      Akt_getImpNrFromId_1
[0005321c] 3f03                      move.w     d3,-(a7)
[0005321e] 206a 0020                 movea.l    32(a2),a0
[00053222] 4e90                      jsr        (a0)
[00053224] 544f                      addq.w     #2,a7
[00053226] 6002                      bra.s      Akt_getImpNrFromId_2
Akt_getImpNrFromId_1:
[00053228] 70ff                      moveq.l    #-1,d0
Akt_getImpNrFromId_2:
[0005322a] 245f                      movea.l    (a7)+,a2
[0005322c] 361f                      move.w     (a7)+,d3
[0005322e] 4e75                      rts

Akt_getExpIdFromNr:
[00053230] 3f03                      move.w     d3,-(a7)
[00053232] 2f0a                      move.l     a2,-(a7)
[00053234] 3600                      move.w     d0,d3
[00053236] 6100 fe12                 bsr        Akt_getKeyTab
[0005323a] 2448                      movea.l    a0,a2
[0005323c] 200a                      move.l     a2,d0
[0005323e] 6714                      beq.s      Akt_getExpIdFromNr_1
[00053240] 724c                      moveq.l    #76,d1
[00053242] b2aa 0004                 cmp.l      4(a2),d1
[00053246] 6e0c                      bgt.s      Akt_getExpIdFromNr_1
[00053248] 3f03                      move.w     d3,-(a7)
[0005324a] 206a 0044                 movea.l    68(a2),a0
[0005324e] 4e90                      jsr        (a0)
[00053250] 544f                      addq.w     #2,a7
[00053252] 6002                      bra.s      Akt_getExpIdFromNr_2
Akt_getExpIdFromNr_1:
[00053254] 70ff                      moveq.l    #-1,d0
Akt_getExpIdFromNr_2:
[00053256] 245f                      movea.l    (a7)+,a2
[00053258] 361f                      move.w     (a7)+,d3
[0005325a] 4e75                      rts

Akt_getImpIdFromNr:
[0005325c] 3f03                      move.w     d3,-(a7)
[0005325e] 2f0a                      move.l     a2,-(a7)
[00053260] 3600                      move.w     d0,d3
[00053262] 6100 fde6                 bsr        Akt_getKeyTab
[00053266] 2448                      movea.l    a0,a2
[00053268] 200a                      move.l     a2,d0
[0005326a] 6714                      beq.s      Akt_getImpIdFromNr_1
[0005326c] 724c                      moveq.l    #76,d1
[0005326e] b2aa 0004                 cmp.l      4(a2),d1
[00053272] 6e0c                      bgt.s      Akt_getImpIdFromNr_1
[00053274] 3f03                      move.w     d3,-(a7)
[00053276] 206a 0048                 movea.l    72(a2),a0
[0005327a] 4e90                      jsr        (a0)
[0005327c] 544f                      addq.w     #2,a7
[0005327e] 6002                      bra.s      Akt_getImpIdFromNr_2
Akt_getImpIdFromNr_1:
[00053280] 70ff                      moveq.l    #-1,d0
Akt_getImpIdFromNr_2:
[00053282] 245f                      movea.l    (a7)+,a2
[00053284] 361f                      move.w     (a7)+,d3
[00053286] 4e75                      rts

Akt_getExpNrFromName:
[00053288] 2f0a                      move.l     a2,-(a7)
[0005328a] 2f0b                      move.l     a3,-(a7)
[0005328c] 2648                      movea.l    a0,a3
[0005328e] 6100 fdba                 bsr        Akt_getKeyTab
[00053292] 2448                      movea.l    a0,a2
[00053294] 200a                      move.l     a2,d0
[00053296] 6714                      beq.s      Akt_getExpNrFromName_1
[00053298] 7254                      moveq.l    #84,d1
[0005329a] b2aa 0004                 cmp.l      4(a2),d1
[0005329e] 6e0c                      bgt.s      Akt_getExpNrFromName_1
[000532a0] 2f0b                      move.l     a3,-(a7)
[000532a2] 206a 004c                 movea.l    76(a2),a0
[000532a6] 4e90                      jsr        (a0)
[000532a8] 584f                      addq.w     #4,a7
[000532aa] 6002                      bra.s      Akt_getExpNrFromName_2
Akt_getExpNrFromName_1:
[000532ac] 4240                      clr.w      d0
Akt_getExpNrFromName_2:
[000532ae] 265f                      movea.l    (a7)+,a3
[000532b0] 245f                      movea.l    (a7)+,a2
[000532b2] 4e75                      rts

Akt_getImpNrFromName:
[000532b4] 2f0a                      move.l     a2,-(a7)
[000532b6] 2f0b                      move.l     a3,-(a7)
[000532b8] 2648                      movea.l    a0,a3
[000532ba] 6100 fd8e                 bsr        Akt_getKeyTab
[000532be] 2448                      movea.l    a0,a2
[000532c0] 200a                      move.l     a2,d0
[000532c2] 6714                      beq.s      Akt_getImpNrFromName_1
[000532c4] 7254                      moveq.l    #84,d1
[000532c6] b2aa 0004                 cmp.l      4(a2),d1
[000532ca] 6e0c                      bgt.s      Akt_getImpNrFromName_1
[000532cc] 2f0b                      move.l     a3,-(a7)
[000532ce] 206a 0050                 movea.l    80(a2),a0
[000532d2] 4e90                      jsr        (a0)
[000532d4] 584f                      addq.w     #4,a7
[000532d6] 6002                      bra.s      Akt_getImpNrFromName_2
Akt_getImpNrFromName_1:
[000532d8] 4240                      clr.w      d0
Akt_getImpNrFromName_2:
[000532da] 265f                      movea.l    (a7)+,a3
[000532dc] 245f                      movea.l    (a7)+,a2
[000532de] 4e75                      rts

Akt_getEuro:
[000532e0] 2f0a                      move.l     a2,-(a7)
[000532e2] 594f                      subq.w     #4,a7
[000532e4] 6100 fd64                 bsr        Akt_getKeyTab
[000532e8] 2448                      movea.l    a0,a2
[000532ea] 200a                      move.l     a2,d0
[000532ec] 6710                      beq.s      Akt_getEuro_1
[000532ee] 7258                      moveq.l    #88,d1
[000532f0] b2aa 0004                 cmp.l      4(a2),d1
[000532f4] 6e08                      bgt.s      Akt_getEuro_1
[000532f6] 206a 0054                 movea.l    84(a2),a0
[000532fa] 4e90                      jsr        (a0)
[000532fc] 601c                      bra.s      Akt_getEuro_2
Akt_getEuro_1:
[000532fe] 41d7                      lea.l      (a7),a0
[00053300] 203c 4555 524f            move.l     #$4555524F,d0
[00053306] 4eb9 0007 2bf4            jsr        Ash_getcookie
[0005330c] 4a40                      tst.w      d0
[0005330e] 6704                      beq.s      Akt_getEuro_3
[00053310] 2017                      move.l     (a7),d0
[00053312] 6006                      bra.s      Akt_getEuro_2
Akt_getEuro_3:
[00053314] 203c 0000 02ec            move.l     #$000002EC,d0
Akt_getEuro_2:
[0005331a] 584f                      addq.w     #4,a7
[0005331c] 245f                      movea.l    (a7)+,a2
[0005331e] 4e75                      rts

[00053320] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00053324] 3800                      move.w     d0,d4
[00053326] 3601                      move.w     d1,d3
[00053328] 2648                      movea.l    a0,a3
[0005332a] 6100 fd1e                 bsr        Akt_getKeyTab
[0005332e] 2448                      movea.l    a0,a2
[00053330] 200a                      move.l     a2,d0
[00053332] 671a                      beq.s      x53320_1
[00053334] 0caa 0000 008c 0004       cmpi.l     #$0000008C,4(a2)
[0005333c] 6d10                      blt.s      x53320_1
[0005333e] 2f0b                      move.l     a3,-(a7)
[00053340] 3f03                      move.w     d3,-(a7)
[00053342] 3f04                      move.w     d4,-(a7)
[00053344] 206a 0088                 movea.l    136(a2),a0
[00053348] 4e90                      jsr        (a0)
[0005334a] 504f                      addq.w     #8,a7
[0005334c] 601a                      bra.s      x53320_2
x53320_1:
[0005334e] 3003                      move.w     d3,d0
[00053350] 5340                      subq.w     #1,d0
[00053352] 6706                      beq.s      x53320_3
[00053354] 5540                      subq.w     #2,d0
[00053356] 6702                      beq.s      x53320_3
[00053358] 600c                      bra.s      x53320_4
x53320_3:
[0005335a] 200b                      move.l     a3,d0
[0005335c] 6704                      beq.s      x53320_5
[0005335e] 36bc ffff                 move.w     #$FFFF,(a3)
x53320_5:
[00053362] 7001                      moveq.l    #1,d0
[00053364] 6002                      bra.s      x53320_2
x53320_4:
[00053366] 4240                      clr.w      d0
x53320_2:
[00053368] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0005336c] 4e75                      rts

[0005336e] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[00053372] 3a00                      move.w     d0,d5
[00053374] 3801                      move.w     d1,d4
[00053376] 2448                      movea.l    a0,a2
[00053378] 3602                      move.w     d2,d3
[0005337a] 6100 fcce                 bsr        Akt_getKeyTab
[0005337e] 2648                      movea.l    a0,a3
[00053380] 200b                      move.l     a3,d0
[00053382] 671e                      beq.s      x5336e_1
[00053384] 0cab 0000 0090 0004       cmpi.l     #$00000090,4(a3)
[0005338c] 6d14                      blt.s      x5336e_1
[0005338e] 3f03                      move.w     d3,-(a7)
[00053390] 2f0a                      move.l     a2,-(a7)
[00053392] 3f04                      move.w     d4,-(a7)
[00053394] 3f05                      move.w     d5,-(a7)
[00053396] 206b 008c                 movea.l    140(a3),a0
[0005339a] 4e90                      jsr        (a0)
[0005339c] 4fef 000a                 lea.l      10(a7),a7
[000533a0] 6056                      bra.s      x5336e_2
x5336e_1:
[000533a2] 3004                      move.w     d4,d0
[000533a4] 4a40                      tst.w      d0
[000533a6] 6706                      beq.s      x5336e_3
[000533a8] 5340                      subq.w     #1,d0
[000533aa] 670c                      beq.s      x5336e_4
[000533ac] 6014                      bra.s      x5336e_5
x5336e_3:
[000533ae] 3005                      move.w     d5,d0
[000533b0] 6100 fd40                 bsr        Akt_getExpNameFromNr
[000533b4] 2648                      movea.l    a0,a3
[000533b6] 600c                      bra.s      x5336e_6
x5336e_4:
[000533b8] 3005                      move.w     d5,d0
[000533ba] 6100 fdae                 bsr        Akt_getExpShortNameFro
[000533be] 2648                      movea.l    a0,a3
[000533c0] 6002                      bra.s      x5336e_6
x5336e_5:
[000533c2] 97cb                      suba.l     a3,a3
x5336e_6:
[000533c4] 200b                      move.l     a3,d0
[000533c6] 6726                      beq.s      x5336e_7
[000533c8] 220a                      move.l     a2,d1
[000533ca] 6722                      beq.s      x5336e_7
[000533cc] 4a43                      tst.w      d3
[000533ce] 6f14                      ble.s      x5336e_8
[000533d0] 3003                      move.w     d3,d0
[000533d2] 48c0                      ext.l      d0
[000533d4] 224b                      movea.l    a3,a1
[000533d6] 204a                      movea.l    a2,a0
[000533d8] 4eb9 0007 6a1a            jsr        strncpy
[000533de] 4232 30ff                 clr.b      -1(a2,d3.w)
[000533e2] 600a                      bra.s      x5336e_7
x5336e_8:
[000533e4] 224b                      movea.l    a3,a1
[000533e6] 204a                      movea.l    a2,a0
[000533e8] 4eb9 0007 6950            jsr        strcpy
x5336e_7:
[000533ee] 200b                      move.l     a3,d0
[000533f0] 6704                      beq.s      x5336e_9
[000533f2] 7001                      moveq.l    #1,d0
[000533f4] 6002                      bra.s      x5336e_2
x5336e_9:
[000533f6] 4240                      clr.w      d0
x5336e_2:
[000533f8] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[000533fc] 4e75                      rts

Akt_CharAtari2X:
[000533fe] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[00053402] 3800                      move.w     d0,d4
[00053404] 1601                      move.b     d1,d3
[00053406] 6100 fc42                 bsr        Akt_getKeyTab
[0005340a] 2448                      movea.l    a0,a2
[0005340c] 200a                      move.l     a2,d0
[0005340e] 670e                      beq.s      Akt_CharAtari2X_1
[00053410] 1f03                      move.b     d3,-(a7)
[00053412] 3f04                      move.w     d4,-(a7)
[00053414] 206a 0014                 movea.l    20(a2),a0
[00053418] 4e90                      jsr        (a0)
[0005341a] 584f                      addq.w     #4,a7
[0005341c] 6002                      bra.s      Akt_CharAtari2X_2
Akt_CharAtari2X_1:
[0005341e] 1003                      move.b     d3,d0
Akt_CharAtari2X_2:
[00053420] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00053424] 4e75                      rts

Akt_CharX2Atari:
[00053426] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0005342a] 3800                      move.w     d0,d4
[0005342c] 1601                      move.b     d1,d3
[0005342e] 6100 fc1a                 bsr        Akt_getKeyTab
[00053432] 2448                      movea.l    a0,a2
[00053434] 200a                      move.l     a2,d0
[00053436] 670e                      beq.s      Akt_CharX2Atari_1
[00053438] 1f03                      move.b     d3,-(a7)
[0005343a] 3f04                      move.w     d4,-(a7)
[0005343c] 206a 0024                 movea.l    36(a2),a0
[00053440] 4e90                      jsr        (a0)
[00053442] 584f                      addq.w     #4,a7
[00053444] 6002                      bra.s      Akt_CharX2Atari_2
Akt_CharX2Atari_1:
[00053446] 1003                      move.b     d3,d0
Akt_CharX2Atari_2:
[00053448] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[0005344c] 4e75                      rts

Akt_BlockAtari2X:
[0005344e] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[00053452] 2648                      movea.l    a0,a3
[00053454] 3800                      move.w     d0,d4
[00053456] 2849                      movea.l    a1,a4
[00053458] 2601                      move.l     d1,d3
[0005345a] 6100 fbee                 bsr        Akt_getKeyTab
[0005345e] 2448                      movea.l    a0,a2
[00053460] 200c                      move.l     a4,d0
[00053462] 6710                      beq.s      Akt_BlockAtari2X_1
[00053464] b08b                      cmp.l      a3,d0
[00053466] 670c                      beq.s      Akt_BlockAtari2X_1
[00053468] 224c                      movea.l    a4,a1
[0005346a] 204b                      movea.l    a3,a0
[0005346c] 2003                      move.l     d3,d0
[0005346e] 4eb9 0007 6f44            jsr        memcpy
Akt_BlockAtari2X_1:
[00053474] 200a                      move.l     a2,d0
[00053476] 6736                      beq.s      Akt_BlockAtari2X_2
[00053478] 7230                      moveq.l    #48,d1
[0005347a] b2aa 0004                 cmp.l      4(a2),d1
[0005347e] 6e12                      bgt.s      Akt_BlockAtari2X_3
[00053480] 2f0b                      move.l     a3,-(a7)
[00053482] 2f03                      move.l     d3,-(a7)
[00053484] 3f04                      move.w     d4,-(a7)
[00053486] 206a 0028                 movea.l    40(a2),a0
[0005348a] 4e90                      jsr        (a0)
[0005348c] 4fef 000a                 lea.l      10(a7),a7
[00053490] 601c                      bra.s      Akt_BlockAtari2X_2
Akt_BlockAtari2X_3:
[00053492] 284b                      movea.l    a3,a4
[00053494] 7a00                      moveq.l    #0,d5
[00053496] 6012                      bra.s      Akt_BlockAtari2X_4
Akt_BlockAtari2X_5:
[00053498] 1f14                      move.b     (a4),-(a7)
[0005349a] 3f04                      move.w     d4,-(a7)
[0005349c] 206a 0014                 movea.l    20(a2),a0
[000534a0] 4e90                      jsr        (a0)
[000534a2] 584f                      addq.w     #4,a7
[000534a4] 1880                      move.b     d0,(a4)
[000534a6] 5285                      addq.l     #1,d5
[000534a8] 524c                      addq.w     #1,a4
Akt_BlockAtari2X_4:
[000534aa] b685                      cmp.l      d5,d3
[000534ac] 6eea                      bgt.s      Akt_BlockAtari2X_5
Akt_BlockAtari2X_2:
[000534ae] 204b                      movea.l    a3,a0
[000534b0] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[000534b4] 4e75                      rts

Akt_BlockX2Atari:
[000534b6] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[000534ba] 2648                      movea.l    a0,a3
[000534bc] 3800                      move.w     d0,d4
[000534be] 2849                      movea.l    a1,a4
[000534c0] 2601                      move.l     d1,d3
[000534c2] 6100 fb86                 bsr        Akt_getKeyTab
[000534c6] 2448                      movea.l    a0,a2
[000534c8] 200c                      move.l     a4,d0
[000534ca] 6710                      beq.s      Akt_BlockX2Atari_1
[000534cc] b08b                      cmp.l      a3,d0
[000534ce] 670c                      beq.s      Akt_BlockX2Atari_1
[000534d0] 224c                      movea.l    a4,a1
[000534d2] 204b                      movea.l    a3,a0
[000534d4] 2003                      move.l     d3,d0
[000534d6] 4eb9 0007 6f44            jsr        memcpy
Akt_BlockX2Atari_1:
[000534dc] 200a                      move.l     a2,d0
[000534de] 6736                      beq.s      Akt_BlockX2Atari_2
[000534e0] 7230                      moveq.l    #48,d1
[000534e2] b2aa 0004                 cmp.l      4(a2),d1
[000534e6] 6e12                      bgt.s      Akt_BlockX2Atari_3
[000534e8] 2f0b                      move.l     a3,-(a7)
[000534ea] 2f03                      move.l     d3,-(a7)
[000534ec] 3f04                      move.w     d4,-(a7)
[000534ee] 206a 002c                 movea.l    44(a2),a0
[000534f2] 4e90                      jsr        (a0)
[000534f4] 4fef 000a                 lea.l      10(a7),a7
[000534f8] 601c                      bra.s      Akt_BlockX2Atari_2
Akt_BlockX2Atari_3:
[000534fa] 284b                      movea.l    a3,a4
[000534fc] 7a00                      moveq.l    #0,d5
[000534fe] 6012                      bra.s      Akt_BlockX2Atari_4
Akt_BlockX2Atari_5:
[00053500] 1f14                      move.b     (a4),-(a7)
[00053502] 3f04                      move.w     d4,-(a7)
[00053504] 206a 0024                 movea.l    36(a2),a0
[00053508] 4e90                      jsr        (a0)
[0005350a] 584f                      addq.w     #4,a7
[0005350c] 1880                      move.b     d0,(a4)
[0005350e] 5285                      addq.l     #1,d5
[00053510] 524c                      addq.w     #1,a4
Akt_BlockX2Atari_4:
[00053512] b685                      cmp.l      d5,d3
[00053514] 6eea                      bgt.s      Akt_BlockX2Atari_5
Akt_BlockX2Atari_2:
[00053516] 204b                      movea.l    a3,a0
[00053518] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0005351c] 4e75                      rts

Akt_StringAtari2X:
[0005351e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00053522] 2648                      movea.l    a0,a3
[00053524] 3600                      move.w     d0,d3
[00053526] 2449                      movea.l    a1,a2
[00053528] 2049                      movea.l    a1,a0
[0005352a] 4eb9 0007 69b0            jsr        strlen
[00053530] 2200                      move.l     d0,d1
[00053532] 5281                      addq.l     #1,d1
[00053534] 224a                      movea.l    a2,a1
[00053536] 3003                      move.w     d3,d0
[00053538] 204b                      movea.l    a3,a0
[0005353a] 6100 ff12                 bsr        Akt_BlockAtari2X
[0005353e] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00053542] 4e75                      rts

Akt_StringX2Atari:
[00053544] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00053548] 2648                      movea.l    a0,a3
[0005354a] 3600                      move.w     d0,d3
[0005354c] 2449                      movea.l    a1,a2
[0005354e] 2049                      movea.l    a1,a0
[00053550] 4eb9 0007 69b0            jsr        strlen
[00053556] 2200                      move.l     d0,d1
[00053558] 5281                      addq.l     #1,d1
[0005355a] 224a                      movea.l    a2,a1
[0005355c] 3003                      move.w     d3,d0
[0005355e] 204b                      movea.l    a3,a0
[00053560] 6100 ff54                 bsr        Akt_BlockX2Atari
[00053564] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00053568] 4e75                      rts

Akt_CharX2Unicode:
[0005356a] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0005356e] 3800                      move.w     d0,d4
[00053570] 1601                      move.b     d1,d3
[00053572] 6100 fad6                 bsr        Akt_getKeyTab
[00053576] 2448                      movea.l    a0,a2
[00053578] 200a                      move.l     a2,d0
[0005357a] 6716                      beq.s      Akt_CharX2Unicode_1
[0005357c] 7260                      moveq.l    #96,d1
[0005357e] b2aa 0004                 cmp.l      4(a2),d1
[00053582] 6e0e                      bgt.s      Akt_CharX2Unicode_1
[00053584] 1f03                      move.b     d3,-(a7)
[00053586] 3f04                      move.w     d4,-(a7)
[00053588] 206a 0058                 movea.l    88(a2),a0
[0005358c] 4e90                      jsr        (a0)
[0005358e] 584f                      addq.w     #4,a7
[00053590] 6004                      bra.s      Akt_CharX2Unicode_2
Akt_CharX2Unicode_1:
[00053592] 1003                      move.b     d3,d0
[00053594] 4880                      ext.w      d0
Akt_CharX2Unicode_2:
[00053596] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[0005359a] 4e75                      rts

Akt_CharUnicode2X:
[0005359c] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[000535a0] 3800                      move.w     d0,d4
[000535a2] 3601                      move.w     d1,d3
[000535a4] 6100 faa4                 bsr        Akt_getKeyTab
[000535a8] 2448                      movea.l    a0,a2
[000535aa] 200a                      move.l     a2,d0
[000535ac] 6716                      beq.s      Akt_CharUnicode2X_1
[000535ae] 7260                      moveq.l    #96,d1
[000535b0] b2aa 0004                 cmp.l      4(a2),d1
[000535b4] 6e0e                      bgt.s      Akt_CharUnicode2X_1
[000535b6] 3f03                      move.w     d3,-(a7)
[000535b8] 3f04                      move.w     d4,-(a7)
[000535ba] 206a 005c                 movea.l    92(a2),a0
[000535be] 4e90                      jsr        (a0)
[000535c0] 584f                      addq.w     #4,a7
[000535c2] 6004                      bra.s      Akt_CharUnicode2X_2
Akt_CharUnicode2X_1:
[000535c4] 70ff                      moveq.l    #-1,d0
[000535c6] c003                      and.b      d3,d0
Akt_CharUnicode2X_2:
[000535c8] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[000535cc] 4e75                      rts

Akt_BlockX2Unicode:
[000535ce] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[000535d2] 2848                      movea.l    a0,a4
[000535d4] 3800                      move.w     d0,d4
[000535d6] 2649                      movea.l    a1,a3
[000535d8] 2601                      move.l     d1,d3
[000535da] 6100 fa6e                 bsr        Akt_getKeyTab
[000535de] 2448                      movea.l    a0,a2
[000535e0] 200a                      move.l     a2,d0
[000535e2] 672e                      beq.s      Akt_BlockX2Unicode_1
[000535e4] 7260                      moveq.l    #96,d1
[000535e6] b2aa 0004                 cmp.l      4(a2),d1
[000535ea] 6e14                      bgt.s      Akt_BlockX2Unicode_2
[000535ec] 2f03                      move.l     d3,-(a7)
[000535ee] 2f0b                      move.l     a3,-(a7)
[000535f0] 3f04                      move.w     d4,-(a7)
[000535f2] 2f0c                      move.l     a4,-(a7)
[000535f4] 206a 0060                 movea.l    96(a2),a0
[000535f8] 4e90                      jsr        (a0)
[000535fa] 4fef 000e                 lea.l      14(a7),a7
[000535fe] 6012                      bra.s      Akt_BlockX2Unicode_1
Akt_BlockX2Unicode_2:
[00053600] 2203                      move.l     d3,d1
[00053602] d281                      add.l      d1,d1
[00053604] 4240                      clr.w      d0
[00053606] 204c                      movea.l    a4,a0
[00053608] 4eb9 0007 712e            jsr        memset
[0005360e] 91c8                      suba.l     a0,a0
[00053610] 6002                      bra.s      Akt_BlockX2Unicode_3
Akt_BlockX2Unicode_1:
[00053612] 204c                      movea.l    a4,a0
Akt_BlockX2Unicode_3:
[00053614] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00053618] 4e75                      rts

Akt_BlockUnicode2X:
[0005361a] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0005361e] 2848                      movea.l    a0,a4
[00053620] 3800                      move.w     d0,d4
[00053622] 2649                      movea.l    a1,a3
[00053624] 2601                      move.l     d1,d3
[00053626] 6100 fa22                 bsr        Akt_getKeyTab
[0005362a] 2448                      movea.l    a0,a2
[0005362c] 200a                      move.l     a2,d0
[0005362e] 6720                      beq.s      Akt_BlockUnicode2X_1
[00053630] 7260                      moveq.l    #96,d1
[00053632] b2aa 0004                 cmp.l      4(a2),d1
[00053636] 6e14                      bgt.s      Akt_BlockUnicode2X_2
[00053638] 2f03                      move.l     d3,-(a7)
[0005363a] 2f0b                      move.l     a3,-(a7)
[0005363c] 3f04                      move.w     d4,-(a7)
[0005363e] 2f0c                      move.l     a4,-(a7)
[00053640] 206a 0064                 movea.l    100(a2),a0
[00053644] 4e90                      jsr        (a0)
[00053646] 4fef 000e                 lea.l      14(a7),a7
[0005364a] 6004                      bra.s      Akt_BlockUnicode2X_1
Akt_BlockUnicode2X_2:
[0005364c] 91c8                      suba.l     a0,a0
[0005364e] 6002                      bra.s      Akt_BlockUnicode2X_3
Akt_BlockUnicode2X_1:
[00053650] 204c                      movea.l    a4,a0
Akt_BlockUnicode2X_3:
[00053652] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00053656] 4e75                      rts

Akt_StringX2Unicode:
[00053658] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0005365c] 2648                      movea.l    a0,a3
[0005365e] 3600                      move.w     d0,d3
[00053660] 2449                      movea.l    a1,a2
[00053662] 2049                      movea.l    a1,a0
[00053664] 4eb9 0007 69b0            jsr        strlen
[0005366a] 2200                      move.l     d0,d1
[0005366c] 5281                      addq.l     #1,d1
[0005366e] 224a                      movea.l    a2,a1
[00053670] 3003                      move.w     d3,d0
[00053672] 204b                      movea.l    a3,a0
[00053674] 6100 ff58                 bsr        Akt_BlockX2Unicode
[00053678] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0005367c] 4e75                      rts

Akt_BlockXUtf2Unicode:
[0005367e] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00053682] 2848                      movea.l    a0,a4
[00053684] 2649                      movea.l    a1,a3
[00053686] 3800                      move.w     d0,d4
[00053688] 2601                      move.l     d1,d3
[0005368a] 6100 f9be                 bsr        Akt_getKeyTab
[0005368e] 2448                      movea.l    a0,a2
[00053690] 200a                      move.l     a2,d0
[00053692] 6724                      beq.s      Akt_BlockXUtf2Unicode_1
[00053694] 7268                      moveq.l    #104,d1
[00053696] b2aa 0004                 cmp.l      4(a2),d1
[0005369a] 6e18                      bgt.s      Akt_BlockXUtf2Unicode_2
[0005369c] 2f03                      move.l     d3,-(a7)
[0005369e] 2f2f 001c                 move.l     28(a7),-(a7)
[000536a2] 3f04                      move.w     d4,-(a7)
[000536a4] 2f0b                      move.l     a3,-(a7)
[000536a6] 2f0c                      move.l     a4,-(a7)
[000536a8] 206a 0078                 movea.l    120(a2),a0
[000536ac] 4e90                      jsr        (a0)
[000536ae] 4fef 0012                 lea.l      18(a7),a7
[000536b2] 6004                      bra.s      Akt_BlockXUtf2Unicode_1
Akt_BlockXUtf2Unicode_2:
[000536b4] 91c8                      suba.l     a0,a0
[000536b6] 6002                      bra.s      Akt_BlockXUtf2Unicode_3
Akt_BlockXUtf2Unicode_1:
[000536b8] 204c                      movea.l    a4,a0
Akt_BlockXUtf2Unicode_3:
[000536ba] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[000536be] 4e75                      rts

Akt_BlockUnicode2XUtf:
[000536c0] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[000536c4] 2848                      movea.l    a0,a4
[000536c6] 2649                      movea.l    a1,a3
[000536c8] 3800                      move.w     d0,d4
[000536ca] 2601                      move.l     d1,d3
[000536cc] 6100 f97c                 bsr        Akt_getKeyTab
[000536d0] 2448                      movea.l    a0,a2
[000536d2] 200a                      move.l     a2,d0
[000536d4] 6722                      beq.s      Akt_BlockUnicode2XUtf_1
[000536d6] 7268                      moveq.l    #104,d1
[000536d8] b2aa 0004                 cmp.l      4(a2),d1
[000536dc] 6e1a                      bgt.s      Akt_BlockUnicode2XUtf_1
[000536de] 2f03                      move.l     d3,-(a7)
[000536e0] 2f2f 001c                 move.l     28(a7),-(a7)
[000536e4] 3f04                      move.w     d4,-(a7)
[000536e6] 2f0b                      move.l     a3,-(a7)
[000536e8] 2f0c                      move.l     a4,-(a7)
[000536ea] 206a 007c                 movea.l    124(a2),a0
[000536ee] 4e90                      jsr        (a0)
[000536f0] 4fef 0012                 lea.l      18(a7),a7
[000536f4] 204c                      movea.l    a4,a0
[000536f6] 6002                      bra.s      Akt_BlockUnicode2XUtf_2
Akt_BlockUnicode2XUtf_1:
[000536f8] 91c8                      suba.l     a0,a0
Akt_BlockUnicode2XUtf_2:
[000536fa] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[000536fe] 4e75                      rts

Akt_BlockXUtf2U2XUtf:
[00053700] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[00053704] 2848                      movea.l    a0,a4
[00053706] 2649                      movea.l    a1,a3
[00053708] 3a00                      move.w     d0,d5
[0005370a] 2801                      move.l     d1,d4
[0005370c] 3602                      move.w     d2,d3
[0005370e] 6100 f93a                 bsr        Akt_getKeyTab
[00053712] 2448                      movea.l    a0,a2
[00053714] 200a                      move.l     a2,d0
[00053716] 6730                      beq.s      Akt_BlockXUtf2U2XUtf_1
[00053718] 0caa 0000 0084 0004       cmpi.l     #$00000084,4(a2)
[00053720] 6d1c                      blt.s      Akt_BlockXUtf2U2XUtf_2
[00053722] 3f03                      move.w     d3,-(a7)
[00053724] 2f04                      move.l     d4,-(a7)
[00053726] 2f2f 0022                 move.l     34(a7),-(a7)
[0005372a] 3f05                      move.w     d5,-(a7)
[0005372c] 2f0b                      move.l     a3,-(a7)
[0005372e] 2f0c                      move.l     a4,-(a7)
[00053730] 206a 0080                 movea.l    128(a2),a0
[00053734] 4e90                      jsr        (a0)
[00053736] 4fef 0014                 lea.l      20(a7),a7
[0005373a] 204c                      movea.l    a4,a0
[0005373c] 600c                      bra.s      Akt_BlockXUtf2U2XUtf_3
Akt_BlockXUtf2U2XUtf_2:
[0005373e] 200b                      move.l     a3,d0
[00053740] 6706                      beq.s      Akt_BlockXUtf2U2XUtf_1
[00053742] 26bc ffff ffff            move.l     #$FFFFFFFF,(a3)
Akt_BlockXUtf2U2XUtf_1:
[00053748] 91c8                      suba.l     a0,a0
Akt_BlockXUtf2U2XUtf_3:
[0005374a] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0005374e] 4e75                      rts

Akt_BlockXUtf2XUtf:
[00053750] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[00053754] 2848                      movea.l    a0,a4
[00053756] 2649                      movea.l    a1,a3
[00053758] 3a00                      move.w     d0,d5
[0005375a] 2801                      move.l     d1,d4
[0005375c] 3602                      move.w     d2,d3
[0005375e] 6100 f8ea                 bsr        Akt_getKeyTab
[00053762] 2448                      movea.l    a0,a2
[00053764] 200a                      move.l     a2,d0
[00053766] 6730                      beq.s      Akt_BlockXUtf2XUtf_1
[00053768] 0caa 0000 0088 0004       cmpi.l     #$00000088,4(a2)
[00053770] 6d1c                      blt.s      Akt_BlockXUtf2XUtf_2
[00053772] 3f03                      move.w     d3,-(a7)
[00053774] 2f04                      move.l     d4,-(a7)
[00053776] 2f2f 0022                 move.l     34(a7),-(a7)
[0005377a] 3f05                      move.w     d5,-(a7)
[0005377c] 2f0b                      move.l     a3,-(a7)
[0005377e] 2f0c                      move.l     a4,-(a7)
[00053780] 206a 0084                 movea.l    132(a2),a0
[00053784] 4e90                      jsr        (a0)
[00053786] 4fef 0014                 lea.l      20(a7),a7
[0005378a] 204c                      movea.l    a4,a0
[0005378c] 600c                      bra.s      Akt_BlockXUtf2XUtf_3
Akt_BlockXUtf2XUtf_2:
[0005378e] 200b                      move.l     a3,d0
[00053790] 6706                      beq.s      Akt_BlockXUtf2XUtf_1
[00053792] 26bc ffff ffff            move.l     #$FFFFFFFF,(a3)
Akt_BlockXUtf2XUtf_1:
[00053798] 91c8                      suba.l     a0,a0
Akt_BlockXUtf2XUtf_3:
[0005379a] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0005379e] 4e75                      rts

Akt_StringXUtf2Unicode:
[000537a0] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000537a4] 2848                      movea.l    a0,a4
[000537a6] 2649                      movea.l    a1,a3
[000537a8] 3600                      move.w     d0,d3
[000537aa] 246f 0014                 movea.l    20(a7),a2
[000537ae] 2f0a                      move.l     a2,-(a7)
[000537b0] 204a                      movea.l    a2,a0
[000537b2] 4eb9 0007 69b0            jsr        strlen
[000537b8] 2200                      move.l     d0,d1
[000537ba] 5281                      addq.l     #1,d1
[000537bc] 3003                      move.w     d3,d0
[000537be] 224b                      movea.l    a3,a1
[000537c0] 204c                      movea.l    a4,a0
[000537c2] 6100 feba                 bsr        Akt_BlockXUtf2Unicode
[000537c6] 584f                      addq.w     #4,a7
[000537c8] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000537cc] 4e75                      rts

Akt_StringXUtf2U2XUtf:
[000537ce] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[000537d2] 2848                      movea.l    a0,a4
[000537d4] 2649                      movea.l    a1,a3
[000537d6] 3800                      move.w     d0,d4
[000537d8] 246f 0018                 movea.l    24(a7),a2
[000537dc] 3601                      move.w     d1,d3
[000537de] 2f0a                      move.l     a2,-(a7)
[000537e0] 204a                      movea.l    a2,a0
[000537e2] 4eb9 0007 69b0            jsr        strlen
[000537e8] 2200                      move.l     d0,d1
[000537ea] 5281                      addq.l     #1,d1
[000537ec] 3004                      move.w     d4,d0
[000537ee] 224b                      movea.l    a3,a1
[000537f0] 204c                      movea.l    a4,a0
[000537f2] 3403                      move.w     d3,d2
[000537f4] 6100 ff0a                 bsr        Akt_BlockXUtf2U2XUtf
[000537f8] 584f                      addq.w     #4,a7
[000537fa] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[000537fe] 4e75                      rts

Akt_StringXUtf2XUtf:
[00053800] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00053804] 2848                      movea.l    a0,a4
[00053806] 2649                      movea.l    a1,a3
[00053808] 3800                      move.w     d0,d4
[0005380a] 246f 0018                 movea.l    24(a7),a2
[0005380e] 3601                      move.w     d1,d3
[00053810] 2f0a                      move.l     a2,-(a7)
[00053812] 204a                      movea.l    a2,a0
[00053814] 4eb9 0007 69b0            jsr        strlen
[0005381a] 2200                      move.l     d0,d1
[0005381c] 5281                      addq.l     #1,d1
[0005381e] 3004                      move.w     d4,d0
[00053820] 224b                      movea.l    a3,a1
[00053822] 204c                      movea.l    a4,a0
[00053824] 3403                      move.w     d3,d2
[00053826] 6100 ff28                 bsr        Akt_BlockXUtf2XUtf
[0005382a] 584f                      addq.w     #4,a7
[0005382c] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00053830] 4e75                      rts

Akt_popExpName:
[00053832] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00053836] 2a48                      movea.l    a0,a5
[00053838] 6100 f862                 bsr        Akt_getExpMaxNr
[0005383c] 3600                      move.w     d0,d3
[0005383e] 5243                      addq.w     #1,d3
[00053840] 3003                      move.w     d3,d0
[00053842] e548                      lsl.w      #2,d0
[00053844] d043                      add.w      d3,d0
[00053846] e748                      lsl.w      #3,d0
[00053848] 5240                      addq.w     #1,d0
[0005384a] 48c0                      ext.l      d0
[0005384c] 4eb9 0004 7cc8            jsr        Ax_malloc
[00053852] 2448                      movea.l    a0,a2
[00053854] 200a                      move.l     a2,d0
[00053856] 6606                      bne.s      Akt_popExpName_1
[00053858] 91c8                      suba.l     a0,a0
[0005385a] 6000 0076                 bra.w      Akt_popExpName_2
Akt_popExpName_1:
[0005385e] 4212                      clr.b      (a2)
[00053860] 4244                      clr.w      d4
[00053862] 3a04                      move.w     d4,d5
[00053864] 49f9 000d 4508            lea.l      $000D4508,a4
[0005386a] 6056                      bra.s      Akt_popExpName_3
Akt_popExpName_7:
[0005386c] 3004                      move.w     d4,d0
[0005386e] 6100 f882                 bsr        Akt_getExpNameFromNr
[00053872] 2648                      movea.l    a0,a3
[00053874] 224c                      movea.l    a4,a1
[00053876] 204a                      movea.l    a2,a0
[00053878] 4eb9 0007 6886            jsr        strcat
[0005387e] 224b                      movea.l    a3,a1
[00053880] 204a                      movea.l    a2,a0
[00053882] 4eb9 0007 6886            jsr        strcat
[00053888] b644                      cmp.w      d4,d3
[0005388a] 6f0e                      ble.s      Akt_popExpName_4
[0005388c] 43ec 0002                 lea.l      2(a4),a1
[00053890] 204a                      movea.l    a2,a0
[00053892] 4eb9 0007 6886            jsr        strcat
[00053898] 600a                      bra.s      Akt_popExpName_5
Akt_popExpName_4:
[0005389a] 224c                      movea.l    a4,a1
[0005389c] 204a                      movea.l    a2,a0
[0005389e] 4eb9 0007 6886            jsr        strcat
Akt_popExpName_5:
[000538a4] 3005                      move.w     d5,d0
[000538a6] 48c0                      ext.l      d0
[000538a8] 2f00                      move.l     d0,-(a7)
[000538aa] 204b                      movea.l    a3,a0
[000538ac] 4eb9 0007 69b0            jsr        strlen
[000538b2] b09f                      cmp.l      (a7)+,d0
[000538b4] 630a                      bls.s      Akt_popExpName_6
[000538b6] 204b                      movea.l    a3,a0
[000538b8] 4eb9 0007 69b0            jsr        strlen
[000538be] 2a00                      move.l     d0,d5
Akt_popExpName_6:
[000538c0] 5244                      addq.w     #1,d4
Akt_popExpName_3:
[000538c2] b644                      cmp.w      d4,d3
[000538c4] 6ea6                      bgt.s      Akt_popExpName_7
[000538c6] 200d                      move.l     a5,d0
[000538c8] 6706                      beq.s      Akt_popExpName_8
[000538ca] 7202                      moveq.l    #2,d1
[000538cc] d245                      add.w      d5,d1
[000538ce] 3a81                      move.w     d1,(a5)
Akt_popExpName_8:
[000538d0] 204a                      movea.l    a2,a0
Akt_popExpName_2:
[000538d2] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[000538d6] 4e75                      rts

Akt_popImpName:
[000538d8] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[000538dc] 2a48                      movea.l    a0,a5
[000538de] 6100 f7f8                 bsr        Akt_getImpMaxNr
[000538e2] 3600                      move.w     d0,d3
[000538e4] 5243                      addq.w     #1,d3
[000538e6] 3003                      move.w     d3,d0
[000538e8] e548                      lsl.w      #2,d0
[000538ea] d043                      add.w      d3,d0
[000538ec] e748                      lsl.w      #3,d0
[000538ee] 5240                      addq.w     #1,d0
[000538f0] 48c0                      ext.l      d0
[000538f2] 4eb9 0004 7cc8            jsr        Ax_malloc
[000538f8] 2448                      movea.l    a0,a2
[000538fa] 200a                      move.l     a2,d0
[000538fc] 6606                      bne.s      Akt_popImpName_1
[000538fe] 91c8                      suba.l     a0,a0
[00053900] 6000 0076                 bra.w      Akt_popImpName_2
Akt_popImpName_1:
[00053904] 4212                      clr.b      (a2)
[00053906] 4244                      clr.w      d4
[00053908] 3a04                      move.w     d4,d5
[0005390a] 49f9 000d 4508            lea.l      $000D4508,a4
[00053910] 6056                      bra.s      Akt_popImpName_3
Akt_popImpName_7:
[00053912] 3004                      move.w     d4,d0
[00053914] 6100 f818                 bsr        Akt_getImpNameFromNr
[00053918] 2648                      movea.l    a0,a3
[0005391a] 224c                      movea.l    a4,a1
[0005391c] 204a                      movea.l    a2,a0
[0005391e] 4eb9 0007 6886            jsr        strcat
[00053924] 224b                      movea.l    a3,a1
[00053926] 204a                      movea.l    a2,a0
[00053928] 4eb9 0007 6886            jsr        strcat
[0005392e] b644                      cmp.w      d4,d3
[00053930] 6f0e                      ble.s      Akt_popImpName_4
[00053932] 43ec 0002                 lea.l      2(a4),a1
[00053936] 204a                      movea.l    a2,a0
[00053938] 4eb9 0007 6886            jsr        strcat
[0005393e] 600a                      bra.s      Akt_popImpName_5
Akt_popImpName_4:
[00053940] 224c                      movea.l    a4,a1
[00053942] 204a                      movea.l    a2,a0
[00053944] 4eb9 0007 6886            jsr        strcat
Akt_popImpName_5:
[0005394a] 3005                      move.w     d5,d0
[0005394c] 48c0                      ext.l      d0
[0005394e] 2f00                      move.l     d0,-(a7)
[00053950] 204b                      movea.l    a3,a0
[00053952] 4eb9 0007 69b0            jsr        strlen
[00053958] b09f                      cmp.l      (a7)+,d0
[0005395a] 630a                      bls.s      Akt_popImpName_6
[0005395c] 204b                      movea.l    a3,a0
[0005395e] 4eb9 0007 69b0            jsr        strlen
[00053964] 2a00                      move.l     d0,d5
Akt_popImpName_6:
[00053966] 5244                      addq.w     #1,d4
Akt_popImpName_3:
[00053968] b644                      cmp.w      d4,d3
[0005396a] 6ea6                      bgt.s      Akt_popImpName_7
[0005396c] 200d                      move.l     a5,d0
[0005396e] 6706                      beq.s      Akt_popImpName_8
[00053970] 7202                      moveq.l    #2,d1
[00053972] d245                      add.w      d5,d1
[00053974] 3a81                      move.w     d1,(a5)
Akt_popImpName_8:
[00053976] 204a                      movea.l    a2,a0
Akt_popImpName_2:
[00053978] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0005397c] 4e75                      rts

Akt_chooseExpNr:
[0005397e] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[00053982] 554f                      subq.w     #2,a7
[00053984] 2648                      movea.l    a0,a3
[00053986] 3a00                      move.w     d0,d5
[00053988] 3801                      move.w     d1,d4
[0005398a] 76ff                      moveq.l    #-1,d3
[0005398c] 41d7                      lea.l      (a7),a0
[0005398e] 6100 fea2                 bsr        Akt_popExpName
[00053992] 2448                      movea.l    a0,a2
[00053994] 200a                      move.l     a2,d0
[00053996] 6604                      bne.s      Akt_chooseExpNr_1
[00053998] 70ff                      moveq.l    #-1,d0
[0005399a] 604a                      bra.s      Akt_chooseExpNr_2
Akt_chooseExpNr_1:
[0005399c] 4879 000d 4509            pea.l      $000D4509
[000539a2] 3404                      move.w     d4,d2
[000539a4] 3205                      move.w     d5,d1
[000539a6] 2079 0010 1f12            movea.l    ACSblk,a0
[000539ac] 3028 0016                 move.w     22(a0),d0
[000539b0] c1ef 0004                 muls.w     4(a7),d0
[000539b4] 224a                      movea.l    a2,a1
[000539b6] 204b                      movea.l    a3,a0
[000539b8] 4eb9 0005 c7dc            jsr        Ame_strpopup
[000539be] 584f                      addq.w     #4,a7
[000539c0] 2648                      movea.l    a0,a3
[000539c2] 200b                      move.l     a3,d0
[000539c4] 671e                      beq.s      Akt_chooseExpNr_3
[000539c6] 707c                      moveq.l    #124,d0
[000539c8] 4eb9 0007 68ce            jsr        strchr
[000539ce] 2008                      move.l     a0,d0
[000539d0] 6702                      beq.s      Akt_chooseExpNr_4
[000539d2] 4210                      clr.b      (a0)
Akt_chooseExpNr_4:
[000539d4] 204b                      movea.l    a3,a0
[000539d6] 4eb9 0004 383a            jsr        Ast_alltrim
[000539dc] 204b                      movea.l    a3,a0
[000539de] 6100 f8a8                 bsr        Akt_getExpNrFromName
[000539e2] 3600                      move.w     d0,d3
Akt_chooseExpNr_3:
[000539e4] 3003                      move.w     d3,d0
Akt_chooseExpNr_2:
[000539e6] 544f                      addq.w     #2,a7
[000539e8] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[000539ec] 4e75                      rts

Akt_chooseImpNr:
[000539ee] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[000539f2] 554f                      subq.w     #2,a7
[000539f4] 2648                      movea.l    a0,a3
[000539f6] 3a00                      move.w     d0,d5
[000539f8] 3801                      move.w     d1,d4
[000539fa] 76ff                      moveq.l    #-1,d3
[000539fc] 41d7                      lea.l      (a7),a0
[000539fe] 6100 fed8                 bsr        Akt_popImpName
[00053a02] 2448                      movea.l    a0,a2
[00053a04] 200a                      move.l     a2,d0
[00053a06] 6604                      bne.s      Akt_chooseImpNr_1
[00053a08] 70ff                      moveq.l    #-1,d0
[00053a0a] 604a                      bra.s      Akt_chooseImpNr_2
Akt_chooseImpNr_1:
[00053a0c] 4879 000d 4509            pea.l      $000D4509
[00053a12] 3404                      move.w     d4,d2
[00053a14] 3205                      move.w     d5,d1
[00053a16] 2079 0010 1f12            movea.l    ACSblk,a0
[00053a1c] 3028 0016                 move.w     22(a0),d0
[00053a20] c1ef 0004                 muls.w     4(a7),d0
[00053a24] 224a                      movea.l    a2,a1
[00053a26] 204b                      movea.l    a3,a0
[00053a28] 4eb9 0005 c7dc            jsr        Ame_strpopup
[00053a2e] 584f                      addq.w     #4,a7
[00053a30] 2648                      movea.l    a0,a3
[00053a32] 200b                      move.l     a3,d0
[00053a34] 671e                      beq.s      Akt_chooseImpNr_3
[00053a36] 707c                      moveq.l    #124,d0
[00053a38] 4eb9 0007 68ce            jsr        strchr
[00053a3e] 2008                      move.l     a0,d0
[00053a40] 6702                      beq.s      Akt_chooseImpNr_4
[00053a42] 4210                      clr.b      (a0)
Akt_chooseImpNr_4:
[00053a44] 204b                      movea.l    a3,a0
[00053a46] 4eb9 0004 383a            jsr        Ast_alltrim
[00053a4c] 204b                      movea.l    a3,a0
[00053a4e] 6100 f864                 bsr        Akt_getImpNrFromName
[00053a52] 3600                      move.w     d0,d3
Akt_chooseImpNr_3:
[00053a54] 3003                      move.w     d3,d0
Akt_chooseImpNr_2:
[00053a56] 544f                      addq.w     #2,a7
[00053a58] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00053a5c] 4e75                      rts

		.data

kt:
[000d4504]                           dc.b $00
[000d4505]                           dc.b $00
[000d4506]                           dc.b $00
[000d4507]                           dc.b $00
[000d4508]                           dc.w $2000
[000d450a]                           dc.w $207c
[000d450c]                           dc.b $00
[000d450d]                           dc.b $00
		.even
