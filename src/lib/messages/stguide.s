
Aev_InitSTGuide:
[00058676] 7001                      moveq.l    #1,d0
[00058678] 4e75                      rts

Aev_ExitSTGuide:
[0005867a] 2039 000d 4c2c            move.l     help_string,d0
[00058680] 670c                      beq.s      Aev_ExitSTGuide_1
[00058682] 2079 000d 4c2c            movea.l    help_string,a0
[00058688] 4eb9 0004 7fa6            jsr        Ax_glfree
Aev_ExitSTGuide_1:
[0005868e] 42b9 000d 4c2c            clr.l      help_string
[00058694] 42b9 000d 4c30            clr.l      help_meldung
[0005869a] 7001                      moveq.l    #1,d0
[0005869c] 4e75                      rts

CheckSTGuide:
[0005869e] 594f                      subq.w     #4,a7
[000586a0] 2e88                      move.l     a0,(a7)
[000586a2] 2057                      movea.l    (a7),a0
[000586a4] b1f9 000d 4c30            cmpa.l     help_meldung,a0
[000586aa] 6606                      bne.s      CheckSTGuide_1
[000586ac] 42b9 000d 4c30            clr.l      help_meldung
CheckSTGuide_1:
[000586b2] 584f                      addq.w     #4,a7
[000586b4] 4e75                      rts

SendMeldung:
[000586b6] 2f0a                      move.l     a2,-(a7)
[000586b8] 2039 000d 4c30            move.l     help_meldung,d0
[000586be] 671e                      beq.s      SendMeldung_1
[000586c0] 93c9                      suba.l     a1,a1
[000586c2] 303c 0192                 move.w     #$0192,d0
[000586c6] 2079 000d 4c30            movea.l    help_meldung,a0
[000586cc] 2479 000d 4c30            movea.l    help_meldung,a2
[000586d2] 246a 0004                 movea.l    4(a2),a2
[000586d6] 4e92                      jsr        (a2)
[000586d8] 42b9 000d 4c30            clr.l      help_meldung
SendMeldung_1:
[000586de] 245f                      movea.l    (a7)+,a2
[000586e0] 4e75                      rts

Aev_STGuideHelp:
[000586e2] 4fef fff2                 lea.l      -14(a7),a7
[000586e6] 2f48 000a                 move.l     a0,10(a7)
[000586ea] 2f49 0006                 move.l     a1,6(a7)
[000586ee] 206f 000a                 movea.l    10(a7),a0
[000586f2] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000586f8] 4a40                      tst.w      d0
[000586fa] 6714                      beq.s      Aev_STGuideHelp_1
[000586fc] 206f 0006                 movea.l    6(a7),a0
[00058700] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00058706] 4a40                      tst.w      d0
[00058708] 6706                      beq.s      Aev_STGuideHelp_1
[0005870a] 4240                      clr.w      d0
[0005870c] 6000 0124                 bra        Aev_STGuideHelp_2
Aev_STGuideHelp_1:
[00058710] 2279 000d 99d6            movea.l    _globl,a1
[00058716] 41f9 000d 4c34            lea.l      $000D4C34,a0
[0005871c] 4eb9 0006 a886            jsr        mt_appl_find
[00058722] 3f40 0004                 move.w     d0,4(a7)
[00058726] 302f 0004                 move.w     4(a7),d0
[0005872a] 6a16                      bpl.s      Aev_STGuideHelp_3
[0005872c] 2079 0010 1f12            movea.l    ACSblk,a0
[00058732] 3028 0238                 move.w     568(a0),d0
[00058736] 660a                      bne.s      Aev_STGuideHelp_3
[00058738] 2079 0010 1f12            movea.l    ACSblk,a0
[0005873e] 3010                      move.w     (a0),d0
[00058740] 4e71                      nop
Aev_STGuideHelp_3:
[00058742] 2039 000d 4c2c            move.l     help_string,d0
[00058748] 670c                      beq.s      Aev_STGuideHelp_4
[0005874a] 2079 000d 4c2c            movea.l    help_string,a0
[00058750] 4eb9 0004 7fa6            jsr        Ax_glfree
Aev_STGuideHelp_4:
[00058756] 6100 ff5e                 bsr        SendMeldung
[0005875a] 202f 000a                 move.l     10(a7),d0
[0005875e] 6708                      beq.s      Aev_STGuideHelp_5
[00058760] 206f 000a                 movea.l    10(a7),a0
[00058764] 1010                      move.b     (a0),d0
[00058766] 661a                      bne.s      Aev_STGuideHelp_6
Aev_STGuideHelp_5:
[00058768] 2f2f 0012                 move.l     18(a7),-(a7)
[0005876c] 226f 000a                 movea.l    10(a7),a1
[00058770] 41f9 000d 4c3d            lea.l      $000D4C3D,a0
[00058776] 4eb9 0005 89ee            jsr        Aev_AcHelp
[0005877c] 584f                      addq.w     #4,a7
[0005877e] 6000 00b2                 bra        Aev_STGuideHelp_2
Aev_STGuideHelp_6:
[00058782] 206f 000a                 movea.l    10(a7),a0
[00058786] 4eb9 0007 69b0            jsr        strlen
[0005878c] 2f00                      move.l     d0,-(a7)
[0005878e] 206f 000a                 movea.l    10(a7),a0
[00058792] 4eb9 0007 69b0            jsr        strlen
[00058798] d09f                      add.l      (a7)+,d0
[0005879a] d0bc 0000 000a            add.l      #$0000000A,d0
[000587a0] 2e80                      move.l     d0,(a7)
[000587a2] 2017                      move.l     (a7),d0
[000587a4] 4eb9 0004 7cc8            jsr        Ax_malloc
[000587aa] 23c8 000d 4c2c            move.l     a0,help_string
[000587b0] 2039 000d 4c2c            move.l     help_string,d0
[000587b6] 6604                      bne.s      Aev_STGuideHelp_7
[000587b8] 4240                      clr.w      d0
[000587ba] 6076                      bra.s      Aev_STGuideHelp_2
Aev_STGuideHelp_7:
[000587bc] 43f9 000d 4c4a            lea.l      $000D4C4A,a1
[000587c2] 2f09                      move.l     a1,-(a7)
[000587c4] 43f9 000d 4c46            lea.l      $000D4C46,a1
[000587ca] 2079 000d 4c2c            movea.l    help_string,a0
[000587d0] 4eb9 0007 6950            jsr        strcpy
[000587d6] 226f 000e                 movea.l    14(a7),a1
[000587da] 4eb9 0007 6886            jsr        strcat
[000587e0] 4eb9 0004 383a            jsr        Ast_alltrim
[000587e6] 225f                      movea.l    (a7)+,a1
[000587e8] 4eb9 0007 6886            jsr        strcat
[000587ee] 202f 0006                 move.l     6(a7),d0
[000587f2] 672a                      beq.s      Aev_STGuideHelp_8
[000587f4] 206f 0006                 movea.l    6(a7),a0
[000587f8] 1010                      move.b     (a0),d0
[000587fa] 6722                      beq.s      Aev_STGuideHelp_8
[000587fc] 43f9 000d 4c4f            lea.l      $000D4C4F,a1
[00058802] 2079 000d 4c2c            movea.l    help_string,a0
[00058808] 4eb9 0007 6886            jsr        strcat
[0005880e] 226f 0006                 movea.l    6(a7),a1
[00058812] 4eb9 0007 6886            jsr        strcat
[00058818] 4eb9 0004 383a            jsr        Ast_alltrim
Aev_STGuideHelp_8:
[0005881e] 72ff                      moveq.l    #-1,d1
[00058820] 93c9                      suba.l     a1,a1
[00058822] 2079 000d 4c2c            movea.l    help_string,a0
[00058828] 302f 0004                 move.w     4(a7),d0
[0005882c] 4eb9 0005 6228            jsr        Aev_VaStart
Aev_STGuideHelp_2:
[00058832] 4fef 000e                 lea.l      14(a7),a7
[00058836] 4e75                      rts

		.data

help_string:
[000d4c2c]                           dc.b $00
[000d4c2d]                           dc.b $00
[000d4c2e]                           dc.b $00
[000d4c2f]                           dc.b $00
help_meldung:
[000d4c30]                           dc.b $00
[000d4c31]                           dc.b $00
[000d4c32]                           dc.b $00
[000d4c33]                           dc.b $00
xd4c34:
[000d4c34]                           dc.b 'ST-GUIDE',0
xd4c3d:
[000d4c3d]                           dc.b 'ST-GUIDE',0
xd4c46:
[000d4c46]                           dc.b '*:\',0
xd4c4a:
[000d4c4a]                           dc.b '.REF',0
xd4c4f:
[000d4c4f]                           dc.b $20
[000d4c50]                           dc.b $00
		.even
