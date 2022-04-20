
Ash_fontSetIcon:
[00061e7e] 43f9 000d 5f84            lea.l      FontSelWind,a1
[00061e84] 2348 005a                 move.l     a0,90(a1)
[00061e88] 2208                      move.l     a0,d1
[00061e8a] 6608                      bne.s      Ash_fontSetIcon_1
[00061e8c] 0269 fffc 0054            andi.w     #$FFFC,84(a1)
[00061e92] 4e75                      rts
Ash_fontSetIcon_1:
[00061e94] 0069 0001 0054            ori.w      #$0001,84(a1)
[00061e9a] 4a40                      tst.w      d0
[00061e9c] 6708                      beq.s      Ash_fontSetIcon_2
[00061e9e] 0069 0002 0054            ori.w      #$0002,84(a1)
[00061ea4] 4e75                      rts
Ash_fontSetIcon_2:
[00061ea6] 0269 fffd 0054            andi.w     #$FFFD,84(a1)
[00061eac] 4e75                      rts

Ash_font:
[00061eae] 48e7 1e3e                 movem.l    d3-d6/a2-a6,-(a7)
[00061eb2] 594f                      subq.w     #4,a7
[00061eb4] 2e88                      move.l     a0,(a7)
[00061eb6] 3800                      move.w     d0,d4
[00061eb8] 3a01                      move.w     d1,d5
[00061eba] 3c02                      move.w     d2,d6
[00061ebc] 2449                      movea.l    a1,a2
[00061ebe] 76ff                      moveq.l    #-1,d3
[00061ec0] 240a                      move.l     a2,d2
[00061ec2] 6606                      bne.s      Ash_font_1
[00061ec4] 70fd                      moveq.l    #-3,d0
[00061ec6] 6000 026e                 bra        Ash_font_2
Ash_font_1:
[00061eca] 4eb9 0006 213e            jsr        hasFnts
[00061ed0] 4a40                      tst.w      d0
[00061ed2] 6606                      bne.s      Ash_font_3
[00061ed4] 70fe                      moveq.l    #-2,d0
[00061ed6] 6000 025e                 bra        Ash_font_2
Ash_font_3:
[00061eda] 7044                      moveq.l    #68,d0
[00061edc] 4eb9 0004 7cc8            jsr        Ax_malloc
[00061ee2] 2648                      movea.l    a0,a3
[00061ee4] 200b                      move.l     a3,d0
[00061ee6] 6606                      bne.s      Ash_font_4
[00061ee8] 70ff                      moveq.l    #-1,d0
[00061eea] 6000 024a                 bra        Ash_font_2
Ash_font_4:
[00061eee] 3684                      move.w     d4,(a3)
[00061ef0] 3745 0002                 move.w     d5,2(a3)
[00061ef4] 3746 0012                 move.w     d6,18(a3)
[00061ef8] 376f 002c 0004            move.w     44(a7),4(a3)
[00061efe] 206f 002e                 movea.l    46(a7),a0
[00061f02] 4eb9 0004 36d6            jsr        Ast_create
[00061f08] 2748 000a                 move.l     a0,10(a3)
[00061f0c] 206f 0032                 movea.l    50(a7),a0
[00061f10] 4eb9 0004 36d6            jsr        Ast_create
[00061f16] 2748 000e                 move.l     a0,14(a3)
[00061f1a] 276f 0042 002c            move.l     66(a7),44(a3)
[00061f20] 276f 0036 0030            move.l     54(a7),48(a3)
[00061f26] 276f 003a 0034            move.l     58(a7),52(a3)
[00061f2c] 276f 003e 0038            move.l     62(a7),56(a3)
[00061f32] 276f 0046 003c            move.l     70(a7),60(a3)
[00061f38] 202b 0030                 move.l     48(a3),d0
[00061f3c] 6606                      bne.s      Ash_font_5
[00061f3e] 026b dfff 0004            andi.w     #$DFFF,4(a3)
Ash_font_5:
[00061f44] 202b 0034                 move.l     52(a3),d0
[00061f48] 6606                      bne.s      Ash_font_6
[00061f4a] 026b bfff 0004            andi.w     #$BFFF,4(a3)
Ash_font_6:
[00061f50] 202b 0038                 move.l     56(a3),d0
[00061f54] 6604                      bne.s      Ash_font_7
[00061f56] 42ab 000e                 clr.l      14(a3)
Ash_font_7:
[00061f5a] 7010                      moveq.l    #16,d0
[00061f5c] 224a                      movea.l    a2,a1
[00061f5e] 41eb 0014                 lea.l      20(a3),a0
[00061f62] 4eb9 0007 6f44            jsr        memcpy
[00061f68] 426b 0014                 clr.w      20(a3)
[00061f6c] 426b 0016                 clr.w      22(a3)
[00061f70] 202a 0004                 move.l     4(a2),d0
[00061f74] 6a0e                      bpl.s      Ash_font_8
[00061f76] 2079 0010 1f12            movea.l    ACSblk,a0
[00061f7c] 3228 0290                 move.w     656(a0),d1
[00061f80] 48c1                      ext.l      d1
[00061f82] 6004                      bra.s      Ash_font_9
Ash_font_8:
[00061f84] 222a 0004                 move.l     4(a2),d1
Ash_font_9:
[00061f88] 2741 0018                 move.l     d1,24(a3)
[00061f8c] 202a 0008                 move.l     8(a2),d0
[00061f90] 6a12                      bpl.s      Ash_font_10
[00061f92] 2079 0010 1f12            movea.l    ACSblk,a0
[00061f98] 3428 0292                 move.w     658(a0),d2
[00061f9c] 48c2                      ext.l      d2
[00061f9e] 7810                      moveq.l    #16,d4
[00061fa0] e9aa                      lsl.l      d4,d2
[00061fa2] 6004                      bra.s      Ash_font_11
Ash_font_10:
[00061fa4] 242a 0008                 move.l     8(a2),d2
Ash_font_11:
[00061fa8] 2742 001c                 move.l     d2,28(a3)
[00061fac] 202a 000c                 move.l     12(a2),d0
[00061fb0] 6a08                      bpl.s      Ash_font_12
[00061fb2] 223c 0001 0000            move.l     #$00010000,d1
[00061fb8] 6004                      bra.s      Ash_font_13
Ash_font_12:
[00061fba] 222a 000c                 move.l     12(a2),d1
Ash_font_13:
[00061fbe] 2741 0020                 move.l     d1,32(a3)
[00061fc2] 204b                      movea.l    a3,a0
[00061fc4] 2279 000d 5f8c            movea.l    $000D5F8C,a1
[00061fca] 4e91                      jsr        (a1)
[00061fcc] 2a48                      movea.l    a0,a5
[00061fce] 200d                      move.l     a5,d0
[00061fd0] 6600 00de                 bne        Ash_font_14
[00061fd4] 222f 0046                 move.l     70(a7),d1
[00061fd8] 6600 00a6                 bne        Ash_font_15
[00061fdc] 49f9 000d 99d6            lea.l      _globl,a4
[00061fe2] 2f14                      move.l     (a4),-(a7)
[00061fe4] 2079 0010 1f12            movea.l    ACSblk,a0
[00061fea] 2268 023c                 movea.l    572(a0),a1
[00061fee] 3029 000e                 move.w     14(a1),d0
[00061ff2] c07c 0100                 and.w      #$0100,d0
[00061ff6] 6704                      beq.s      Ash_font_16
[00061ff8] 4241                      clr.w      d1
[00061ffa] 6002                      bra.s      Ash_font_17
Ash_font_16:
[00061ffc] 7201                      moveq.l    #1,d1
Ash_font_17:
[00061ffe] 3f01                      move.w     d1,-(a7)
[00062000] 226b 000e                 movea.l    14(a3),a1
[00062004] 206b 000a                 movea.l    10(a3),a0
[00062008] 342b 0012                 move.w     18(a3),d2
[0006200c] 2c79 0010 1f12            movea.l    ACSblk,a6
[00062012] 322e 0284                 move.w     644(a6),d1
[00062016] 302e 0010                 move.w     16(a6),d0
[0006201a] 4eb9 0006 dda2            jsr        mt_fnts_create
[00062020] 5c4f                      addq.w     #6,a7
[00062022] 2748 0006                 move.l     a0,6(a3)
[00062026] 2008                      move.l     a0,d0
[00062028] 6756                      beq.s      Ash_font_15
[0006202a] 4eb9 0004 9940            jsr        Amo_unbusy
Ash_font_18:
[00062030] 2f14                      move.l     (a4),-(a7)
[00062032] 486b 0020                 pea.l      32(a3)
[00062036] 486b 001c                 pea.l      28(a3)
[0006203a] 486b 0018                 pea.l      24(a3)
[0006203e] 2f2b 0020                 move.l     32(a3),-(a7)
[00062042] 43eb 0016                 lea.l      22(a3),a1
[00062046] 242b 001c                 move.l     28(a3),d2
[0006204a] 222b 0018                 move.l     24(a3),d1
[0006204e] 302b 0004                 move.w     4(a3),d0
[00062052] 206b 0006                 movea.l    6(a3),a0
[00062056] 4eb9 0006 de8a            jsr        mt_fnts_do
[0006205c] 4fef 0014                 lea.l      20(a7),a7
[00062060] 3740 0014                 move.w     d0,20(a3)
[00062064] 204b                      movea.l    a3,a0
[00062066] 4eb9 0006 2268            jsr        doButton
[0006206c] 4a40                      tst.w      d0
[0006206e] 67c0                      beq.s      Ash_font_18
[00062070] 2254                      movea.l    (a4),a1
[00062072] 4240                      clr.w      d0
[00062074] 206b 0006                 movea.l    6(a3),a0
[00062078] 4eb9 0006 de26            jsr        mt_fnts_delete
[0006207e] 4243                      clr.w      d3
Ash_font_15:
[00062080] 7010                      moveq.l    #16,d0
[00062082] 43eb 0014                 lea.l      20(a3),a1
[00062086] 204a                      movea.l    a2,a0
[00062088] 4eb9 0007 6f44            jsr        memcpy
[0006208e] 206b 000e                 movea.l    14(a3),a0
[00062092] 4eb9 0004 371c            jsr        Ast_delete
[00062098] 206b 000a                 movea.l    10(a3),a0
[0006209c] 4eb9 0004 371c            jsr        Ast_delete
[000620a2] 7044                      moveq.l    #68,d0
[000620a4] 204b                      movea.l    a3,a0
[000620a6] 4eb9 0004 8140            jsr        Ax_recycle
[000620ac] 6000 0086                 bra        Ash_font_19
Ash_font_14:
[000620b0] 2057                      movea.l    (a7),a0
[000620b2] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000620b8] 4a40                      tst.w      d0
[000620ba] 6622                      bne.s      Ash_font_20
[000620bc] 286d 004a                 movea.l    74(a5),a4
[000620c0] 2057                      movea.l    (a7),a0
[000620c2] 4eb9 0004 36d6            jsr        Ast_create
[000620c8] 2b48 004a                 move.l     a0,74(a5)
[000620cc] 2008                      move.l     a0,d0
[000620ce] 670a                      beq.s      Ash_font_21
[000620d0] 204c                      movea.l    a4,a0
[000620d2] 4eb9 0004 371c            jsr        Ast_delete
[000620d8] 6004                      bra.s      Ash_font_20
Ash_font_21:
[000620da] 2b4c 004a                 move.l     a4,74(a5)
Ash_font_20:
[000620de] 202f 0046                 move.l     70(a7),d0
[000620e2] 6630                      bne.s      Ash_font_22
[000620e4] 377c 0001 0026            move.w     #$0001,38(a3)
[000620ea] 204d                      movea.l    a5,a0
[000620ec] 226d 000c                 movea.l    12(a5),a1
[000620f0] 4e91                      jsr        (a1)
[000620f2] 4a40                      tst.w      d0
[000620f4] 670e                      beq.s      Ash_font_23
[000620f6] 204d                      movea.l    a5,a0
[000620f8] 4eb9 0005 1292            jsr        Awi_dialog
[000620fe] 4a40                      tst.w      d0
[00062100] 6b02                      bmi.s      Ash_font_23
[00062102] 7601                      moveq.l    #1,d3
Ash_font_23:
[00062104] 7010                      moveq.l    #16,d0
[00062106] 43eb 0014                 lea.l      20(a3),a1
[0006210a] 204a                      movea.l    a2,a0
[0006210c] 4eb9 0007 6f44            jsr        memcpy
[00062112] 6014                      bra.s      Ash_font_24
Ash_font_22:
[00062114] 426b 0026                 clr.w      38(a3)
[00062118] 204d                      movea.l    a5,a0
[0006211a] 226d 000c                 movea.l    12(a5),a1
[0006211e] 4e91                      jsr        (a1)
[00062120] 4a40                      tst.w      d0
[00062122] 6704                      beq.s      Ash_font_24
[00062124] 7602                      moveq.l    #2,d3
[00062126] 600c                      bra.s      Ash_font_19
Ash_font_24:
[00062128] 93c9                      suba.l     a1,a1
[0006212a] 7002                      moveq.l    #2,d0
[0006212c] 204d                      movea.l    a5,a0
[0006212e] 246d 0004                 movea.l    4(a5),a2
[00062132] 4e92                      jsr        (a2)
Ash_font_19:
[00062134] 3003                      move.w     d3,d0
Ash_font_2:
[00062136] 584f                      addq.w     #4,a7
[00062138] 4cdf 7c78                 movem.l    (a7)+,d3-d6/a2-a6
[0006213c] 4e75                      rts

hasFnts:
[0006213e] 2f0a                      move.l     a2,-(a7)
[00062140] 514f                      subq.w     #8,a7
[00062142] 45f9 000d 6026            lea.l      vorhanden,a2
[00062148] 3012                      move.w     (a2),d0
[0006214a] 6a3a                      bpl.s      hasFnts_1
[0006214c] 2f39 000d 99d6            move.l     _globl,-(a7)
[00062152] 486f 0004                 pea.l      4(a7)
[00062156] 486f 000a                 pea.l      10(a7)
[0006215a] 43ef 0010                 lea.l      16(a7),a1
[0006215e] 41ef 0012                 lea.l      18(a7),a0
[00062162] 7007                      moveq.l    #7,d0
[00062164] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[0006216a] 4fef 000c                 lea.l      12(a7),a7
[0006216e] 4a40                      tst.w      d0
[00062170] 6712                      beq.s      hasFnts_2
[00062172] 7004                      moveq.l    #4,d0
[00062174] c06f 0006                 and.w      6(a7),d0
[00062178] 6704                      beq.s      hasFnts_3
[0006217a] 7201                      moveq.l    #1,d1
[0006217c] 6002                      bra.s      hasFnts_4
hasFnts_3:
[0006217e] 4241                      clr.w      d1
hasFnts_4:
[00062180] 3481                      move.w     d1,(a2)
[00062182] 6002                      bra.s      hasFnts_1
hasFnts_2:
[00062184] 4252                      clr.w      (a2)
hasFnts_1:
[00062186] 3012                      move.w     (a2),d0
[00062188] 6704                      beq.s      hasFnts_5
[0006218a] 7001                      moveq.l    #1,d0
[0006218c] 6002                      bra.s      hasFnts_6
hasFnts_5:
[0006218e] 4240                      clr.w      d0
hasFnts_6:
[00062190] 504f                      addq.w     #8,a7
[00062192] 245f                      movea.l    (a7)+,a2
[00062194] 4e75                      rts

fntsClose:
[00062196] 48e7 0038                 movem.l    a2-a4,-(a7)
[0006219a] 2448                      movea.l    a0,a2
[0006219c] 266a 0040                 movea.l    64(a2),a3
[000621a0] 286a 003c                 movea.l    60(a2),a4
[000621a4] 200b                      move.l     a3,d0
[000621a6] 6738                      beq.s      fntsClose_1
[000621a8] 322b 0020                 move.w     32(a3),d1
[000621ac] 6b32                      bmi.s      fntsClose_1
[000621ae] 2f39 000d 99d6            move.l     _globl,-(a7)
[000621b4] 486b 002e                 pea.l      46(a3)
[000621b8] 43eb 002c                 lea.l      44(a3),a1
[000621bc] 206a 0006                 movea.l    6(a2),a0
[000621c0] 4eb9 0006 dd20            jsr        mt_fnts_close
[000621c6] 504f                      addq.w     #8,a7
[000621c8] 377c ffff 0020            move.w     #$FFFF,32(a3)
[000621ce] 200c                      move.l     a4,d0
[000621d0] 670e                      beq.s      fntsClose_1
[000621d2] 43ea 0014                 lea.l      20(a2),a1
[000621d6] 204c                      movea.l    a4,a0
[000621d8] 266c 0004                 movea.l    4(a4),a3
[000621dc] 7034                      moveq.l    #52,d0
[000621de] 4e93                      jsr        (a3)
fntsClose_1:
[000621e0] 7001                      moveq.l    #1,d0
[000621e2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000621e6] 4e75                      rts

fntsMessage:
[000621e8] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[000621ec] 2448                      movea.l    a0,a2
[000621ee] 2649                      movea.l    a1,a3
[000621f0] 226a 0040                 movea.l    64(a2),a1
[000621f4] 3769 0020 0026            move.w     32(a1),38(a3)
[000621fa] 2f39 000d 99d6            move.l     _globl,-(a7)
[00062200] 486a 0020                 pea.l      32(a2)
[00062204] 486a 001c                 pea.l      28(a2)
[00062208] 486a 0018                 pea.l      24(a2)
[0006220c] 486a 0016                 pea.l      22(a2)
[00062210] 486a 0014                 pea.l      20(a2)
[00062214] 224b                      movea.l    a3,a1
[00062216] 206a 0006                 movea.l    6(a2),a0
[0006221a] 4eb9 0006 df40            jsr        mt_fnts_evnt
[00062220] 4fef 0018                 lea.l      24(a7),a7
[00062224] 3600                      move.w     d0,d3
[00062226] 4a40                      tst.w      d0
[00062228] 6636                      bne.s      fntsMessage_1
[0006222a] 204a                      movea.l    a2,a0
[0006222c] 4eb9 0006 2268            jsr        doButton
[00062232] 3540 002a                 move.w     d0,42(a2)
[00062236] 4a40                      tst.w      d0
[00062238] 6726                      beq.s      fntsMessage_1
[0006223a] 322a 0026                 move.w     38(a2),d1
[0006223e] 670e                      beq.s      fntsMessage_2
[00062240] 2079 0010 1f12            movea.l    ACSblk,a0
[00062246] 317c 0001 0268            move.w     #$0001,616(a0)
[0006224c] 6012                      bra.s      fntsMessage_1
fntsMessage_2:
[0006224e] 93c9                      suba.l     a1,a1
[00062250] 7002                      moveq.l    #2,d0
[00062252] 206a 0040                 movea.l    64(a2),a0
[00062256] 266a 0040                 movea.l    64(a2),a3
[0006225a] 266b 0004                 movea.l    4(a3),a3
[0006225e] 4e93                      jsr        (a3)
fntsMessage_1:
[00062260] 3003                      move.w     d3,d0
[00062262] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00062266] 4e75                      rts

doButton:
[00062268] 2f0a                      move.l     a2,-(a7)
[0006226a] 2f0b                      move.l     a3,-(a7)
[0006226c] 2448                      movea.l    a0,a2
[0006226e] 426a 002a                 clr.w      42(a2)
[00062272] 302a 0014                 move.w     20(a2),d0
[00062276] b07c 0005                 cmp.w      #$0005,d0
[0006227a] 6264                      bhi.s      doButton_1
[0006227c] d040                      add.w      d0,d0
[0006227e] 303b 0006                 move.w     $00062286(pc,d0.w),d0
[00062282] 4efb 0002                 jmp        $00062286(pc,d0.w)
J59:
[00062286] 005a                      dc.w $005a   ; doButton_1-J59
[00062288] 000c                      dc.w $000c   ; doButton_2-J59
[0006228a] 000c                      dc.w $000c   ; doButton_2-J59
[0006228c] 0014                      dc.w $0014   ; doButton_3-J59
[0006228e] 002c                      dc.w $002c   ; doButton_4-J59
[00062290] 0044                      dc.w $0044   ; doButton_5-J59
doButton_2:
[00062292] 357c 0001 002a            move.w     #$0001,42(a2)
[00062298] 6046                      bra.s      doButton_1
doButton_3:
[0006229a] 202a 0030                 move.l     48(a2),d0
[0006229e] 6740                      beq.s      doButton_1
[000622a0] 43ea 0014                 lea.l      20(a2),a1
[000622a4] 206a 002c                 movea.l    44(a2),a0
[000622a8] 2640                      movea.l    d0,a3
[000622aa] 4e93                      jsr        (a3)
[000622ac] 3540 002a                 move.w     d0,42(a2)
[000622b0] 602e                      bra.s      doButton_1
doButton_4:
[000622b2] 202a 0034                 move.l     52(a2),d0
[000622b6] 6728                      beq.s      doButton_1
[000622b8] 43ea 0014                 lea.l      20(a2),a1
[000622bc] 206a 002c                 movea.l    44(a2),a0
[000622c0] 2640                      movea.l    d0,a3
[000622c2] 4e93                      jsr        (a3)
[000622c4] 3540 002a                 move.w     d0,42(a2)
[000622c8] 6016                      bra.s      doButton_1
doButton_5:
[000622ca] 202a 0038                 move.l     56(a2),d0
[000622ce] 6710                      beq.s      doButton_1
[000622d0] 43ea 0014                 lea.l      20(a2),a1
[000622d4] 206a 002c                 movea.l    44(a2),a0
[000622d8] 2640                      movea.l    d0,a3
[000622da] 4e93                      jsr        (a3)
[000622dc] 3540 002a                 move.w     d0,42(a2)
doButton_1:
[000622e0] 302a 002a                 move.w     42(a2),d0
[000622e4] 265f                      movea.l    (a7)+,a3
[000622e6] 245f                      movea.l    (a7)+,a2
[000622e8] 4e75                      rts

FontCreate:
[000622ea] 48e7 0038                 movem.l    a2-a4,-(a7)
[000622ee] 2448                      movea.l    a0,a2
[000622f0] 2008                      move.l     a0,d0
[000622f2] 6712                      beq.s      FontCreate_1
[000622f4] 41f9 000d 5f84            lea.l      FontSelWind,a0
[000622fa] 4eb9 0004 f41a            jsr        Awi_create
[00062300] 2648                      movea.l    a0,a3
[00062302] 200b                      move.l     a3,d0
[00062304] 6604                      bne.s      FontCreate_2
FontCreate_1:
[00062306] 91c8                      suba.l     a0,a0
[00062308] 6050                      bra.s      FontCreate_3
FontCreate_2:
[0006230a] 268a                      move.l     a2,(a3)
[0006230c] 254b 0040                 move.l     a3,64(a2)
[00062310] 2f39 000d 99d6            move.l     _globl,-(a7)
[00062316] 2079 0010 1f12            movea.l    ACSblk,a0
[0006231c] 2268 023c                 movea.l    572(a0),a1
[00062320] 3029 000e                 move.w     14(a1),d0
[00062324] c07c 0100                 and.w      #$0100,d0
[00062328] 6704                      beq.s      FontCreate_4
[0006232a] 4241                      clr.w      d1
[0006232c] 6002                      bra.s      FontCreate_5
FontCreate_4:
[0006232e] 7201                      moveq.l    #1,d1
FontCreate_5:
[00062330] 3f01                      move.w     d1,-(a7)
[00062332] 226a 000e                 movea.l    14(a2),a1
[00062336] 206a 000a                 movea.l    10(a2),a0
[0006233a] 342a 0012                 move.w     18(a2),d2
[0006233e] 2879 0010 1f12            movea.l    ACSblk,a4
[00062344] 322c 0284                 move.w     644(a4),d1
[00062348] 302c 0010                 move.w     16(a4),d0
[0006234c] 4eb9 0006 dda2            jsr        mt_fnts_create
[00062352] 5c4f                      addq.w     #6,a7
[00062354] 2548 0006                 move.l     a0,6(a2)
[00062358] 204b                      movea.l    a3,a0
FontCreate_3:
[0006235a] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0006235e] 4e75                      rts

FontService:
[00062360] 2f0a                      move.l     a2,-(a7)
[00062362] 2f0b                      move.l     a3,-(a7)
[00062364] 2448                      movea.l    a0,a2
[00062366] 2650                      movea.l    (a0),a3
[00062368] 3200                      move.w     d0,d1
[0006236a] 5541                      subq.w     #2,d1
[0006236c] 6702                      beq.s      FontService_1
[0006236e] 6052                      bra.s      FontService_2
FontService_1:
[00062370] 302a 0056                 move.w     86(a2),d0
[00062374] c07c 0200                 and.w      #$0200,d0
[00062378] 6644                      bne.s      FontService_3
[0006237a] 006a 0200 0056            ori.w      #$0200,86(a2)
[00062380] 204b                      movea.l    a3,a0
[00062382] 6100 fe12                 bsr        fntsClose
[00062386] 2279 000d 99d6            movea.l    _globl,a1
[0006238c] 4240                      clr.w      d0
[0006238e] 206b 0006                 movea.l    6(a3),a0
[00062392] 4eb9 0006 de26            jsr        mt_fnts_delete
[00062398] 206b 000e                 movea.l    14(a3),a0
[0006239c] 4eb9 0004 371c            jsr        Ast_delete
[000623a2] 206b 000a                 movea.l    10(a3),a0
[000623a6] 4eb9 0004 371c            jsr        Ast_delete
[000623ac] 7044                      moveq.l    #68,d0
[000623ae] 204b                      movea.l    a3,a0
[000623b0] 4eb9 0004 8140            jsr        Ax_recycle
[000623b6] 204a                      movea.l    a2,a0
[000623b8] 4eb9 0005 0330            jsr        Awi_delete
FontService_3:
[000623be] 7001                      moveq.l    #1,d0
[000623c0] 6002                      bra.s      FontService_4
FontService_2:
[000623c2] 4240                      clr.w      d0
FontService_4:
[000623c4] 265f                      movea.l    (a7)+,a3
[000623c6] 245f                      movea.l    (a7)+,a2
[000623c8] 4e75                      rts

FontOpen:
[000623ca] 2f0a                      move.l     a2,-(a7)
[000623cc] 2f0b                      move.l     a3,-(a7)
[000623ce] 2448                      movea.l    a0,a2
[000623d0] 2650                      movea.l    (a0),a3
[000623d2] 2f2b 0020                 move.l     32(a3),-(a7)
[000623d6] 2f2b 001c                 move.l     28(a3),-(a7)
[000623da] 2f2b 0018                 move.l     24(a3),-(a7)
[000623de] 2279 000d 99d6            movea.l    _globl,a1
[000623e4] 342b 0002                 move.w     2(a3),d2
[000623e8] 3213                      move.w     (a3),d1
[000623ea] 302b 0004                 move.w     4(a3),d0
[000623ee] 206b 0006                 movea.l    6(a3),a0
[000623f2] 4eb9 0006 e1c4            jsr        mt_fnts_open
[000623f8] 4fef 000c                 lea.l      12(a7),a7
[000623fc] 3540 0020                 move.w     d0,32(a2)
[00062400] 4a40                      tst.w      d0
[00062402] 6f6c                      ble.s      FontOpen_1
[00062404] 486a 002a                 pea.l      42(a2)
[00062408] 486a 0028                 pea.l      40(a2)
[0006240c] 486a 0026                 pea.l      38(a2)
[00062410] 486a 0024                 pea.l      36(a2)
[00062414] 7205                      moveq.l    #5,d1
[00062416] 4eb9 0007 14ea            jsr        wind_get
[0006241c] 4fef 0010                 lea.l      16(a7),a7
[00062420] 486a 003a                 pea.l      58(a2)
[00062424] 486a 0038                 pea.l      56(a2)
[00062428] 486a 0036                 pea.l      54(a2)
[0006242c] 486a 0034                 pea.l      52(a2)
[00062430] 7204                      moveq.l    #4,d1
[00062432] 302a 0020                 move.w     32(a2),d0
[00062436] 4eb9 0007 14ea            jsr        wind_get
[0006243c] 4fef 0010                 lea.l      16(a7),a7
[00062440] 206a 0014                 movea.l    20(a2),a0
[00062444] 4268 0010                 clr.w      16(a0)
[00062448] 206a 0014                 movea.l    20(a2),a0
[0006244c] 4268 0012                 clr.w      18(a0)
[00062450] 206a 0014                 movea.l    20(a2),a0
[00062454] 316a 0038 0014            move.w     56(a2),20(a0)
[0006245a] 206a 0014                 movea.l    20(a2),a0
[0006245e] 316a 003a 0016            move.w     58(a2),22(a0)
[00062464] 204a                      movea.l    a2,a0
[00062466] 4eb9 0004 f9dc            jsr        Awi_register
[0006246c] 7001                      moveq.l    #1,d0
[0006246e] 6002                      bra.s      FontOpen_2
FontOpen_1:
[00062470] 4240                      clr.w      d0
FontOpen_2:
[00062472] 265f                      movea.l    (a7)+,a3
[00062474] 245f                      movea.l    (a7)+,a2
[00062476] 4e75                      rts

FontClosed:
[00062478] 2f0a                      move.l     a2,-(a7)
[0006247a] 2f0c                      move.l     a4,-(a7)
[0006247c] 4fef ffc0                 lea.l      -64(a7),a7
[00062480] 2450                      movea.l    (a0),a2
[00062482] 41f9 000d 6028            lea.l      $000D6028,a0
[00062488] 43d7                      lea.l      (a7),a1
[0006248a] 700f                      moveq.l    #15,d0
FontClosed_1:
[0006248c] 22d8                      move.l     (a0)+,(a1)+
[0006248e] 51c8 fffc                 dbf        d0,FontClosed_1
[00062492] 49f9 0010 1f12            lea.l      ACSblk,a4
[00062498] 2054                      movea.l    (a4),a0
[0006249a] 3f68 0262 0002            move.w     610(a0),2(a7)
[000624a0] 3f68 0264 0004            move.w     612(a0),4(a7)
[000624a6] 3f68 02ca 0006            move.w     714(a0),6(a7)
[000624ac] 3028 02ce                 move.w     718(a0),d0
[000624b0] 4eb9 0004 1ede            jsr        nkc_n2kstate
[000624b6] 3f40 0008                 move.w     d0,8(a7)
[000624ba] 2054                      movea.l    (a4),a0
[000624bc] 3028 02ce                 move.w     718(a0),d0
[000624c0] 4eb9 0004 1ec2            jsr        nkc_n2gem
[000624c6] 3f40 000a                 move.w     d0,10(a7)
[000624ca] 2054                      movea.l    (a4),a0
[000624cc] 3f68 02cc 000c            move.w     716(a0),12(a7)
[000624d2] 43d7                      lea.l      (a7),a1
[000624d4] 204a                      movea.l    a2,a0
[000624d6] 6100 fd10                 bsr        fntsMessage
[000624da] 4fef 0040                 lea.l      64(a7),a7
[000624de] 285f                      movea.l    (a7)+,a4
[000624e0] 245f                      movea.l    (a7)+,a2
[000624e2] 4e75                      rts

FontRedraw:
[000624e4] 48e7 002c                 movem.l    a2/a4-a5,-(a7)
[000624e8] 4fef ffc0                 lea.l      -64(a7),a7
[000624ec] 2a49                      movea.l    a1,a5
[000624ee] 2450                      movea.l    (a0),a2
[000624f0] 41f9 000d 6068            lea.l      $000D6068,a0
[000624f6] 43d7                      lea.l      (a7),a1
[000624f8] 700f                      moveq.l    #15,d0
FontRedraw_1:
[000624fa] 22d8                      move.l     (a0)+,(a1)+
[000624fc] 51c8 fffc                 dbf        d0,FontRedraw_1
[00062500] 49f9 0010 1f12            lea.l      ACSblk,a4
[00062506] 2054                      movea.l    (a4),a0
[00062508] 3f68 0262 0002            move.w     610(a0),2(a7)
[0006250e] 3f68 0264 0004            move.w     612(a0),4(a7)
[00062514] 3f68 02ca 0006            move.w     714(a0),6(a7)
[0006251a] 3028 02ce                 move.w     718(a0),d0
[0006251e] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00062524] 3f40 0008                 move.w     d0,8(a7)
[00062528] 2054                      movea.l    (a4),a0
[0006252a] 3028 02ce                 move.w     718(a0),d0
[0006252e] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00062534] 3f40 000a                 move.w     d0,10(a7)
[00062538] 2054                      movea.l    (a4),a0
[0006253a] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00062540] 3f55 0028                 move.w     (a5),40(a7)
[00062544] 3f6d 0002 002a            move.w     2(a5),42(a7)
[0006254a] 3f6d 0004 002c            move.w     4(a5),44(a7)
[00062550] 3f6d 0006 002e            move.w     6(a5),46(a7)
[00062556] 43d7                      lea.l      (a7),a1
[00062558] 204a                      movea.l    a2,a0
[0006255a] 6100 fc8c                 bsr        fntsMessage
[0006255e] 4fef 0040                 lea.l      64(a7),a7
[00062562] 4cdf 3400                 movem.l    (a7)+,a2/a4-a5
[00062566] 4e75                      rts

FontArrowed:
[00062568] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[0006256c] 4fef ffc0                 lea.l      -64(a7),a7
[00062570] 3600                      move.w     d0,d3
[00062572] 2450                      movea.l    (a0),a2
[00062574] 41f9 000d 60a8            lea.l      $000D60A8,a0
[0006257a] 43d7                      lea.l      (a7),a1
[0006257c] 720f                      moveq.l    #15,d1
FontArrowed_1:
[0006257e] 22d8                      move.l     (a0)+,(a1)+
[00062580] 51c9 fffc                 dbf        d1,FontArrowed_1
[00062584] 49f9 0010 1f12            lea.l      ACSblk,a4
[0006258a] 2054                      movea.l    (a4),a0
[0006258c] 3f68 0262 0002            move.w     610(a0),2(a7)
[00062592] 3f68 0264 0004            move.w     612(a0),4(a7)
[00062598] 3f68 02ca 0006            move.w     714(a0),6(a7)
[0006259e] 3028 02ce                 move.w     718(a0),d0
[000625a2] 4eb9 0004 1ede            jsr        nkc_n2kstate
[000625a8] 3f40 0008                 move.w     d0,8(a7)
[000625ac] 2054                      movea.l    (a4),a0
[000625ae] 3028 02ce                 move.w     718(a0),d0
[000625b2] 4eb9 0004 1ec2            jsr        nkc_n2gem
[000625b8] 3f40 000a                 move.w     d0,10(a7)
[000625bc] 2054                      movea.l    (a4),a0
[000625be] 3f68 02cc 000c            move.w     716(a0),12(a7)
[000625c4] 3f43 0028                 move.w     d3,40(a7)
[000625c8] 43d7                      lea.l      (a7),a1
[000625ca] 204a                      movea.l    a2,a0
[000625cc] 6100 fc1a                 bsr        fntsMessage
[000625d0] 4fef 0040                 lea.l      64(a7),a7
[000625d4] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[000625d8] 4e75                      rts

FontChange:
[000625da] 2f0a                      move.l     a2,-(a7)
[000625dc] 2f0b                      move.l     a3,-(a7)
[000625de] 2448                      movea.l    a0,a2
[000625e0] 43ea 0034                 lea.l      52(a2),a1
[000625e4] 266a 006a                 movea.l    106(a2),a3
[000625e8] 4e93                      jsr        (a3)
[000625ea] 265f                      movea.l    (a7)+,a3
[000625ec] 245f                      movea.l    (a7)+,a2
[000625ee] 4e75                      rts

FontFulled:
[000625f0] 2f0a                      move.l     a2,-(a7)
[000625f2] 2f0c                      move.l     a4,-(a7)
[000625f4] 4fef ffc0                 lea.l      -64(a7),a7
[000625f8] 2450                      movea.l    (a0),a2
[000625fa] 41f9 000d 60e8            lea.l      $000D60E8,a0
[00062600] 43d7                      lea.l      (a7),a1
[00062602] 700f                      moveq.l    #15,d0
FontFulled_1:
[00062604] 22d8                      move.l     (a0)+,(a1)+
[00062606] 51c8 fffc                 dbf        d0,FontFulled_1
[0006260a] 49f9 0010 1f12            lea.l      ACSblk,a4
[00062610] 2054                      movea.l    (a4),a0
[00062612] 3f68 0262 0002            move.w     610(a0),2(a7)
[00062618] 3f68 0264 0004            move.w     612(a0),4(a7)
[0006261e] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00062624] 3028 02ce                 move.w     718(a0),d0
[00062628] 4eb9 0004 1ede            jsr        nkc_n2kstate
[0006262e] 3f40 0008                 move.w     d0,8(a7)
[00062632] 2054                      movea.l    (a4),a0
[00062634] 3028 02ce                 move.w     718(a0),d0
[00062638] 4eb9 0004 1ec2            jsr        nkc_n2gem
[0006263e] 3f40 000a                 move.w     d0,10(a7)
[00062642] 2054                      movea.l    (a4),a0
[00062644] 3f68 02cc 000c            move.w     716(a0),12(a7)
[0006264a] 43d7                      lea.l      (a7),a1
[0006264c] 204a                      movea.l    a2,a0
[0006264e] 6100 fb98                 bsr        fntsMessage
[00062652] 4fef 0040                 lea.l      64(a7),a7
[00062656] 285f                      movea.l    (a7)+,a4
[00062658] 245f                      movea.l    (a7)+,a2
[0006265a] 4e75                      rts

FontInit:
[0006265c] 4240                      clr.w      d0
[0006265e] 4e75                      rts

FontHSlide:
[00062660] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[00062664] 4fef ffc0                 lea.l      -64(a7),a7
[00062668] 3600                      move.w     d0,d3
[0006266a] 2450                      movea.l    (a0),a2
[0006266c] 41f9 000d 6128            lea.l      $000D6128,a0
[00062672] 43d7                      lea.l      (a7),a1
[00062674] 720f                      moveq.l    #15,d1
FontHSlide_1:
[00062676] 22d8                      move.l     (a0)+,(a1)+
[00062678] 51c9 fffc                 dbf        d1,FontHSlide_1
[0006267c] 49f9 0010 1f12            lea.l      ACSblk,a4
[00062682] 2054                      movea.l    (a4),a0
[00062684] 3f68 0262 0002            move.w     610(a0),2(a7)
[0006268a] 3f68 0264 0004            move.w     612(a0),4(a7)
[00062690] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00062696] 3028 02ce                 move.w     718(a0),d0
[0006269a] 4eb9 0004 1ede            jsr        nkc_n2kstate
[000626a0] 3f40 0008                 move.w     d0,8(a7)
[000626a4] 2054                      movea.l    (a4),a0
[000626a6] 3028 02ce                 move.w     718(a0),d0
[000626aa] 4eb9 0004 1ec2            jsr        nkc_n2gem
[000626b0] 3f40 000a                 move.w     d0,10(a7)
[000626b4] 2054                      movea.l    (a4),a0
[000626b6] 3f68 02cc 000c            move.w     716(a0),12(a7)
[000626bc] 3f43 0028                 move.w     d3,40(a7)
[000626c0] 43d7                      lea.l      (a7),a1
[000626c2] 204a                      movea.l    a2,a0
[000626c4] 6100 fb22                 bsr        fntsMessage
[000626c8] 4fef 0040                 lea.l      64(a7),a7
[000626cc] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[000626d0] 4e75                      rts

FontVSlide:
[000626d2] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[000626d6] 4fef ffc0                 lea.l      -64(a7),a7
[000626da] 3600                      move.w     d0,d3
[000626dc] 2450                      movea.l    (a0),a2
[000626de] 41f9 000d 6168            lea.l      $000D6168,a0
[000626e4] 43d7                      lea.l      (a7),a1
[000626e6] 720f                      moveq.l    #15,d1
FontVSlide_1:
[000626e8] 22d8                      move.l     (a0)+,(a1)+
[000626ea] 51c9 fffc                 dbf        d1,FontVSlide_1
[000626ee] 49f9 0010 1f12            lea.l      ACSblk,a4
[000626f4] 2054                      movea.l    (a4),a0
[000626f6] 3f68 0262 0002            move.w     610(a0),2(a7)
[000626fc] 3f68 0264 0004            move.w     612(a0),4(a7)
[00062702] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00062708] 3028 02ce                 move.w     718(a0),d0
[0006270c] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00062712] 3f40 0008                 move.w     d0,8(a7)
[00062716] 2054                      movea.l    (a4),a0
[00062718] 3028 02ce                 move.w     718(a0),d0
[0006271c] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00062722] 3f40 000a                 move.w     d0,10(a7)
[00062726] 2054                      movea.l    (a4),a0
[00062728] 3f68 02cc 000c            move.w     716(a0),12(a7)
[0006272e] 3f43 0028                 move.w     d3,40(a7)
[00062732] 43d7                      lea.l      (a7),a1
[00062734] 204a                      movea.l    a2,a0
[00062736] 6100 fab0                 bsr        fntsMessage
[0006273a] 4fef 0040                 lea.l      64(a7),a7
[0006273e] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[00062742] 4e75                      rts

FontKeys:
[00062744] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[00062748] 4fef ffc0                 lea.l      -64(a7),a7
[0006274c] 3601                      move.w     d1,d3
[0006274e] 2450                      movea.l    (a0),a2
[00062750] 41f9 000d 61a8            lea.l      $000D61A8,a0
[00062756] 43d7                      lea.l      (a7),a1
[00062758] 700f                      moveq.l    #15,d0
FontKeys_1:
[0006275a] 22d8                      move.l     (a0)+,(a1)+
[0006275c] 51c8 fffc                 dbf        d0,FontKeys_1
[00062760] 49f9 0010 1f12            lea.l      ACSblk,a4
[00062766] 2054                      movea.l    (a4),a0
[00062768] 3f68 0262 0002            move.w     610(a0),2(a7)
[0006276e] 3f68 0264 0004            move.w     612(a0),4(a7)
[00062774] 3f68 02ca 0006            move.w     714(a0),6(a7)
[0006277a] 3003                      move.w     d3,d0
[0006277c] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00062782] 3f40 0008                 move.w     d0,8(a7)
[00062786] 3003                      move.w     d3,d0
[00062788] 4eb9 0004 1ec2            jsr        nkc_n2gem
[0006278e] 3f40 000a                 move.w     d0,10(a7)
[00062792] 2054                      movea.l    (a4),a0
[00062794] 3f68 02cc 000c            move.w     716(a0),12(a7)
[0006279a] 43d7                      lea.l      (a7),a1
[0006279c] 204a                      movea.l    a2,a0
[0006279e] 6100 fa48                 bsr        fntsMessage
[000627a2] 4240                      clr.w      d0
[000627a4] 4fef 0040                 lea.l      64(a7),a7
[000627a8] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[000627ac] 4e75                      rts

FontTopped:
[000627ae] 2f0a                      move.l     a2,-(a7)
[000627b0] 2f0c                      move.l     a4,-(a7)
[000627b2] 4fef ffc0                 lea.l      -64(a7),a7
[000627b6] 2450                      movea.l    (a0),a2
[000627b8] 41f9 000d 61e8            lea.l      $000D61E8,a0
[000627be] 43d7                      lea.l      (a7),a1
[000627c0] 700f                      moveq.l    #15,d0
FontTopped_1:
[000627c2] 22d8                      move.l     (a0)+,(a1)+
[000627c4] 51c8 fffc                 dbf        d0,FontTopped_1
[000627c8] 49f9 0010 1f12            lea.l      ACSblk,a4
[000627ce] 2054                      movea.l    (a4),a0
[000627d0] 3f68 0262 0002            move.w     610(a0),2(a7)
[000627d6] 3f68 0264 0004            move.w     612(a0),4(a7)
[000627dc] 3f68 02ca 0006            move.w     714(a0),6(a7)
[000627e2] 3028 02ce                 move.w     718(a0),d0
[000627e6] 4eb9 0004 1ede            jsr        nkc_n2kstate
[000627ec] 3f40 0008                 move.w     d0,8(a7)
[000627f0] 2054                      movea.l    (a4),a0
[000627f2] 3028 02ce                 move.w     718(a0),d0
[000627f6] 4eb9 0004 1ec2            jsr        nkc_n2gem
[000627fc] 3f40 000a                 move.w     d0,10(a7)
[00062800] 2054                      movea.l    (a4),a0
[00062802] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00062808] 43d7                      lea.l      (a7),a1
[0006280a] 204a                      movea.l    a2,a0
[0006280c] 6100 f9da                 bsr        fntsMessage
[00062810] 4fef 0040                 lea.l      64(a7),a7
[00062814] 285f                      movea.l    (a7)+,a4
[00062816] 245f                      movea.l    (a7)+,a2
[00062818] 4e75                      rts

FontMoved:
[0006281a] 48e7 0036                 movem.l    a2-a3/a5-a6,-(a7)
[0006281e] 4fef ffc0                 lea.l      -64(a7),a7
[00062822] 2448                      movea.l    a0,a2
[00062824] 2c49                      movea.l    a1,a6
[00062826] 2650                      movea.l    (a0),a3
[00062828] 43f9 000d 6228            lea.l      $000D6228,a1
[0006282e] 41d7                      lea.l      (a7),a0
[00062830] 700f                      moveq.l    #15,d0
FontMoved_1:
[00062832] 20d9                      move.l     (a1)+,(a0)+
[00062834] 51c8 fffc                 dbf        d0,FontMoved_1
[00062838] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0006283e] 2055                      movea.l    (a5),a0
[00062840] 3f68 0262 0002            move.w     610(a0),2(a7)
[00062846] 3f68 0264 0004            move.w     612(a0),4(a7)
[0006284c] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00062852] 3028 02ce                 move.w     718(a0),d0
[00062856] 4eb9 0004 1ede            jsr        nkc_n2kstate
[0006285c] 3f40 0008                 move.w     d0,8(a7)
[00062860] 2055                      movea.l    (a5),a0
[00062862] 3028 02ce                 move.w     718(a0),d0
[00062866] 4eb9 0004 1ec2            jsr        nkc_n2gem
[0006286c] 3f40 000a                 move.w     d0,10(a7)
[00062870] 2055                      movea.l    (a5),a0
[00062872] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00062878] 3f56 0028                 move.w     (a6),40(a7)
[0006287c] 3f6e 0002 002a            move.w     2(a6),42(a7)
[00062882] 3f6e 0004 002c            move.w     4(a6),44(a7)
[00062888] 3f6e 0006 002e            move.w     6(a6),46(a7)
[0006288e] 43d7                      lea.l      (a7),a1
[00062890] 204b                      movea.l    a3,a0
[00062892] 6100 f954                 bsr        fntsMessage
[00062896] 486a 002a                 pea.l      42(a2)
[0006289a] 486a 0028                 pea.l      40(a2)
[0006289e] 486a 0026                 pea.l      38(a2)
[000628a2] 486a 0024                 pea.l      36(a2)
[000628a6] 7205                      moveq.l    #5,d1
[000628a8] 302a 0020                 move.w     32(a2),d0
[000628ac] 4eb9 0007 14ea            jsr        wind_get
[000628b2] 4fef 0010                 lea.l      16(a7),a7
[000628b6] 486a 003a                 pea.l      58(a2)
[000628ba] 486a 0038                 pea.l      56(a2)
[000628be] 486a 0036                 pea.l      54(a2)
[000628c2] 486a 0034                 pea.l      52(a2)
[000628c6] 7204                      moveq.l    #4,d1
[000628c8] 302a 0020                 move.w     32(a2),d0
[000628cc] 4eb9 0007 14ea            jsr        wind_get
[000628d2] 4fef 0010                 lea.l      16(a7),a7
[000628d6] 206a 0014                 movea.l    20(a2),a0
[000628da] 316a 0038 0014            move.w     56(a2),20(a0)
[000628e0] 206a 0014                 movea.l    20(a2),a0
[000628e4] 316a 003a 0016            move.w     58(a2),22(a0)
[000628ea] 4fef 0040                 lea.l      64(a7),a7
[000628ee] 4cdf 6c00                 movem.l    (a7)+,a2-a3/a5-a6
[000628f2] 4e75                      rts

FontSized:
[000628f4] 48e7 0036                 movem.l    a2-a3/a5-a6,-(a7)
[000628f8] 4fef ffc0                 lea.l      -64(a7),a7
[000628fc] 2448                      movea.l    a0,a2
[000628fe] 2c49                      movea.l    a1,a6
[00062900] 2650                      movea.l    (a0),a3
[00062902] 43f9 000d 6268            lea.l      $000D6268,a1
[00062908] 41d7                      lea.l      (a7),a0
[0006290a] 700f                      moveq.l    #15,d0
FontSized_1:
[0006290c] 20d9                      move.l     (a1)+,(a0)+
[0006290e] 51c8 fffc                 dbf        d0,FontSized_1
[00062912] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00062918] 2055                      movea.l    (a5),a0
[0006291a] 3f68 0262 0002            move.w     610(a0),2(a7)
[00062920] 3f68 0264 0004            move.w     612(a0),4(a7)
[00062926] 3f68 02ca 0006            move.w     714(a0),6(a7)
[0006292c] 3028 02ce                 move.w     718(a0),d0
[00062930] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00062936] 3f40 0008                 move.w     d0,8(a7)
[0006293a] 2055                      movea.l    (a5),a0
[0006293c] 3028 02ce                 move.w     718(a0),d0
[00062940] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00062946] 3f40 000a                 move.w     d0,10(a7)
[0006294a] 2055                      movea.l    (a5),a0
[0006294c] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00062952] 3f56 0028                 move.w     (a6),40(a7)
[00062956] 3f6e 0002 002a            move.w     2(a6),42(a7)
[0006295c] 3f6e 0004 002c            move.w     4(a6),44(a7)
[00062962] 3f6e 0006 002e            move.w     6(a6),46(a7)
[00062968] 43d7                      lea.l      (a7),a1
[0006296a] 204b                      movea.l    a3,a0
[0006296c] 6100 f87a                 bsr        fntsMessage
[00062970] 486a 002a                 pea.l      42(a2)
[00062974] 486a 0028                 pea.l      40(a2)
[00062978] 486a 0026                 pea.l      38(a2)
[0006297c] 486a 0024                 pea.l      36(a2)
[00062980] 7205                      moveq.l    #5,d1
[00062982] 302a 0020                 move.w     32(a2),d0
[00062986] 4eb9 0007 14ea            jsr        wind_get
[0006298c] 4fef 0010                 lea.l      16(a7),a7
[00062990] 486a 003a                 pea.l      58(a2)
[00062994] 486a 0038                 pea.l      56(a2)
[00062998] 486a 0036                 pea.l      54(a2)
[0006299c] 486a 0034                 pea.l      52(a2)
[000629a0] 7204                      moveq.l    #4,d1
[000629a2] 302a 0020                 move.w     32(a2),d0
[000629a6] 4eb9 0007 14ea            jsr        wind_get
[000629ac] 4fef 0010                 lea.l      16(a7),a7
[000629b0] 206a 0014                 movea.l    20(a2),a0
[000629b4] 316a 0038 0014            move.w     56(a2),20(a0)
[000629ba] 206a 0014                 movea.l    20(a2),a0
[000629be] 316a 003a 0016            move.w     58(a2),22(a0)
[000629c4] 4fef 0040                 lea.l      64(a7),a7
[000629c8] 4cdf 6c00                 movem.l    (a7)+,a2-a3/a5-a6
[000629cc] 4e75                      rts

FontIconify:
[000629ce] 4eb9 0005 0f9c            jsr        Awi_iconify
[000629d4] 4e75                      rts

FontUniconify:
[000629d6] 4eb9 0005 117c            jsr        Awi_uniconify
[000629dc] 4e75                      rts

FontGEMScript:
[000629de] 2f2f 0004                 move.l     4(a7),-(a7)
[000629e2] 4eb9 0005 2328            jsr        Awi_gemscript
[000629e8] 584f                      addq.w     #4,a7
[000629ea] 4e75                      rts

FontClicked:
[000629ec] 2f0a                      move.l     a2,-(a7)
[000629ee] 2f0b                      move.l     a3,-(a7)
[000629f0] 4fef ffc0                 lea.l      -64(a7),a7
[000629f4] 45f9 0010 1f12            lea.l      ACSblk,a2
[000629fa] 2052                      movea.l    (a2),a0
[000629fc] 2268 0258                 movea.l    600(a0),a1
[00062a00] 2651                      movea.l    (a1),a3
[00062a02] 41f9 000d 62a8            lea.l      $000D62A8,a0
[00062a08] 43d7                      lea.l      (a7),a1
[00062a0a] 700f                      moveq.l    #15,d0
FontClicked_1:
[00062a0c] 22d8                      move.l     (a0)+,(a1)+
[00062a0e] 51c8 fffc                 dbf        d0,FontClicked_1
[00062a12] 2052                      movea.l    (a2),a0
[00062a14] 3f68 0262 0002            move.w     610(a0),2(a7)
[00062a1a] 3f68 0264 0004            move.w     612(a0),4(a7)
[00062a20] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00062a26] 3028 02ce                 move.w     718(a0),d0
[00062a2a] 4eb9 0004 1ede            jsr        nkc_n2kstate
[00062a30] 3f40 0008                 move.w     d0,8(a7)
[00062a34] 2052                      movea.l    (a2),a0
[00062a36] 3028 02ce                 move.w     718(a0),d0
[00062a3a] 4eb9 0004 1ec2            jsr        nkc_n2gem
[00062a40] 3f40 000a                 move.w     d0,10(a7)
[00062a44] 2052                      movea.l    (a2),a0
[00062a46] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00062a4c] 43d7                      lea.l      (a7),a1
[00062a4e] 204b                      movea.l    a3,a0
[00062a50] 6100 f796                 bsr        fntsMessage
[00062a54] 4fef 0040                 lea.l      64(a7),a7
[00062a58] 265f                      movea.l    (a7)+,a3
[00062a5a] 245f                      movea.l    (a7)+,a2
[00062a5c] 4e75                      rts

		.data

TEXT_01:
[000d5f52]                           dc.b $00
TEXT_02:
[000d5f53]                           dc.b $00
FontSelObj:
[000d5f54]                           dc.w $ffff
[000d5f56]                           dc.w $ffff
[000d5f58]                           dc.w $ffff
[000d5f5a]                           dc.b $00
[000d5f5b]                           dc.b $14
[000d5f5c]                           dc.b $00
[000d5f5d]                           dc.b $40
[000d5f5e]                           dc.b $00
[000d5f5f]                           dc.b $00
[000d5f60]                           dc.b $00
[000d5f61]                           dc.b $02
[000d5f62]                           dc.w $1100
[000d5f64]                           dc.b $00
[000d5f65]                           dc.b $00
[000d5f66]                           dc.b $00
[000d5f67]                           dc.b $00
[000d5f68]                           dc.b $00
[000d5f69]                           dc.b $28
[000d5f6a]                           dc.b $00
[000d5f6b]                           dc.b $14
_00aFontSelObj:
[000d5f6c] 000629ec                  dc.l FontClicked
[000d5f70]                           dc.b $00
[000d5f71]                           dc.b $00
[000d5f72]                           dc.b $00
[000d5f73]                           dc.b $00
[000d5f74]                           dc.w $8020
[000d5f76]                           dc.b $00
[000d5f77]                           dc.b $00
[000d5f78]                           dc.b $00
[000d5f79]                           dc.b $00
[000d5f7a]                           dc.b $00
[000d5f7b]                           dc.b $00
[000d5f7c]                           dc.b $00
[000d5f7d]                           dc.b $00
[000d5f7e]                           dc.b $00
[000d5f7f]                           dc.b $00
[000d5f80]                           dc.b $00
[000d5f81]                           dc.b $00
[000d5f82]                           dc.b $00
[000d5f83]                           dc.b $00
FontSelWind:
[000d5f84]                           dc.b $00
[000d5f85]                           dc.b $00
[000d5f86]                           dc.b $00
[000d5f87]                           dc.b $00
[000d5f88] 00062360                  dc.l FontService
[000d5f8c] 000622ea                  dc.l FontCreate
[000d5f90] 000623ca                  dc.l FontOpen
[000d5f94] 0006265c                  dc.l FontInit
[000d5f98] 000d5f54                  dc.l FontSelObj
[000d5f9c]                           dc.b $00
[000d5f9d]                           dc.b $00
[000d5f9e]                           dc.b $00
[000d5f9f]                           dc.b $00
[000d5fa0]                           dc.b $00
[000d5fa1]                           dc.b $00
[000d5fa2]                           dc.b $00
[000d5fa3]                           dc.b $00
[000d5fa4]                           dc.w $ffff
[000d5fa6]                           dc.w $6fef
[000d5fa8]                           dc.b $00
[000d5fa9]                           dc.b $00
[000d5faa]                           dc.b $00
[000d5fab]                           dc.b $00
[000d5fac]                           dc.b $00
[000d5fad]                           dc.b $78
[000d5fae]                           dc.b $00
[000d5faf]                           dc.b $32
[000d5fb0]                           dc.b $00
[000d5fb1]                           dc.b $00
[000d5fb2]                           dc.b $00
[000d5fb3]                           dc.b $00
[000d5fb4]                           dc.b $00
[000d5fb5]                           dc.b $00
[000d5fb6]                           dc.b $00
[000d5fb7]                           dc.b $00
[000d5fb8]                           dc.b $00
[000d5fb9]                           dc.b $00
[000d5fba]                           dc.b $00
[000d5fbb]                           dc.b $00
[000d5fbc]                           dc.b $00
[000d5fbd]                           dc.b $00
[000d5fbe]                           dc.b $00
[000d5fbf]                           dc.b $00
[000d5fc0]                           dc.w $ffff
[000d5fc2]                           dc.w $ffff
[000d5fc4]                           dc.w $ffff
[000d5fc6]                           dc.w $ffff
[000d5fc8]                           dc.b $00
[000d5fc9]                           dc.b $00
[000d5fca]                           dc.b $00
[000d5fcb]                           dc.b $00
[000d5fcc]                           dc.w $f8f8
[000d5fce] 000d5f52                  dc.l TEXT_01
[000d5fd2] 000d5f53                  dc.l TEXT_02
[000d5fd6]                           dc.b $00
[000d5fd7]                           dc.b $00
[000d5fd8]                           dc.w $0100
[000d5fda]                           dc.b $00
[000d5fdb]                           dc.b $00
[000d5fdc]                           dc.w $ffff
[000d5fde]                           dc.b $00
[000d5fdf]                           dc.b $00
[000d5fe0]                           dc.b $00
[000d5fe1]                           dc.b $00
[000d5fe2]                           dc.b $00
[000d5fe3]                           dc.b $00
[000d5fe4]                           dc.b $00
[000d5fe5]                           dc.b $00
[000d5fe6] 00062744                  dc.l FontKeys
[000d5fea] 000625da                  dc.l FontChange
[000d5fee] 000624e4                  dc.l FontRedraw
[000d5ff2] 000627ae                  dc.l FontTopped
[000d5ff6] 00062478                  dc.l FontClosed
[000d5ffa] 000625f0                  dc.l FontFulled
[000d5ffe] 00062568                  dc.l FontArrowed
[000d6002] 00062660                  dc.l FontHSlide
[000d6006] 000626d2                  dc.l FontVSlide
[000d600a] 000628f4                  dc.l FontSized
[000d600e] 0006281a                  dc.l FontMoved
[000d6012] 000629ce                  dc.l FontIconify
[000d6016] 000629d6                  dc.l FontUniconify
[000d601a] 000629de                  dc.l FontGEMScript
[000d601e]                           dc.b $00
[000d601f]                           dc.b $00
[000d6020]                           dc.b $00
[000d6021]                           dc.b $00
[000d6022]                           dc.b $00
[000d6023]                           dc.b $00
[000d6024]                           dc.b $00
[000d6025]                           dc.b $00
vorhanden:
[000d6026]                           dc.w $ffff
[000d6028]                           dc.b $00
[000d6029]                           dc.b $10
[000d602a]                           dc.b $00
[000d602b]                           dc.b $00
[000d602c]                           dc.b $00
[000d602d]                           dc.b $00
[000d602e]                           dc.b $00
[000d602f]                           dc.b $00
[000d6030]                           dc.b $00
[000d6031]                           dc.b $00
[000d6032]                           dc.b $00
[000d6033]                           dc.b $00
[000d6034]                           dc.b $00
[000d6035]                           dc.b $00
[000d6036]                           dc.b $00
[000d6037]                           dc.b $00
[000d6038]                           dc.b $00
[000d6039]                           dc.b $00
[000d603a]                           dc.b $00
[000d603b]                           dc.b $00
[000d603c]                           dc.b $00
[000d603d]                           dc.b $00
[000d603e]                           dc.b $00
[000d603f]                           dc.b $00
[000d6040]                           dc.b $00
[000d6041]                           dc.b $00
[000d6042]                           dc.b $00
[000d6043]                           dc.b $00
[000d6044]                           dc.b $00
[000d6045]                           dc.b $00
[000d6046]                           dc.b $00
[000d6047]                           dc.b $00
[000d6048]                           dc.b $00
[000d6049]                           dc.b $16
[000d604a]                           dc.b $00
[000d604b]                           dc.b $01
[000d604c]                           dc.b $00
[000d604d]                           dc.b $00
[000d604e]                           dc.b $00
[000d604f]                           dc.b $00
[000d6050]                           dc.b $00
[000d6051]                           dc.b $00
[000d6052]                           dc.b $00
[000d6053]                           dc.b $00
[000d6054]                           dc.b $00
[000d6055]                           dc.b $00
[000d6056]                           dc.b $00
[000d6057]                           dc.b $00
[000d6058]                           dc.b $00
[000d6059]                           dc.b $00
[000d605a]                           dc.b $00
[000d605b]                           dc.b $00
[000d605c]                           dc.b $00
[000d605d]                           dc.b $00
[000d605e]                           dc.b $00
[000d605f]                           dc.b $00
[000d6060]                           dc.b $00
[000d6061]                           dc.b $00
[000d6062]                           dc.b $00
[000d6063]                           dc.b $00
[000d6064]                           dc.b $00
[000d6065]                           dc.b $00
[000d6066]                           dc.b $00
[000d6067]                           dc.b $00
[000d6068]                           dc.b $00
[000d6069]                           dc.b $10
[000d606a]                           dc.b $00
[000d606b]                           dc.b $00
[000d606c]                           dc.b $00
[000d606d]                           dc.b $00
[000d606e]                           dc.b $00
[000d606f]                           dc.b $00
[000d6070]                           dc.b $00
[000d6071]                           dc.b $00
[000d6072]                           dc.b $00
[000d6073]                           dc.b $00
[000d6074]                           dc.b $00
[000d6075]                           dc.b $00
[000d6076]                           dc.b $00
[000d6077]                           dc.b $00
[000d6078]                           dc.b $00
[000d6079]                           dc.b $00
[000d607a]                           dc.b $00
[000d607b]                           dc.b $00
[000d607c]                           dc.b $00
[000d607d]                           dc.b $00
[000d607e]                           dc.b $00
[000d607f]                           dc.b $00
[000d6080]                           dc.b $00
[000d6081]                           dc.b $00
[000d6082]                           dc.b $00
[000d6083]                           dc.b $00
[000d6084]                           dc.b $00
[000d6085]                           dc.b $00
[000d6086]                           dc.b $00
[000d6087]                           dc.b $00
[000d6088]                           dc.b $00
[000d6089]                           dc.b $14
[000d608a]                           dc.b $00
[000d608b]                           dc.b $01
[000d608c]                           dc.b $00
[000d608d]                           dc.b $00
[000d608e]                           dc.b $00
[000d608f]                           dc.b $00
[000d6090]                           dc.b $00
[000d6091]                           dc.b $00
[000d6092]                           dc.b $00
[000d6093]                           dc.b $00
[000d6094]                           dc.b $00
[000d6095]                           dc.b $00
[000d6096]                           dc.b $00
[000d6097]                           dc.b $00
[000d6098]                           dc.b $00
[000d6099]                           dc.b $00
[000d609a]                           dc.b $00
[000d609b]                           dc.b $00
[000d609c]                           dc.b $00
[000d609d]                           dc.b $00
[000d609e]                           dc.b $00
[000d609f]                           dc.b $00
[000d60a0]                           dc.b $00
[000d60a1]                           dc.b $00
[000d60a2]                           dc.b $00
[000d60a3]                           dc.b $00
[000d60a4]                           dc.b $00
[000d60a5]                           dc.b $00
[000d60a6]                           dc.b $00
[000d60a7]                           dc.b $00
[000d60a8]                           dc.b $00
[000d60a9]                           dc.b $10
[000d60aa]                           dc.b $00
[000d60ab]                           dc.b $00
[000d60ac]                           dc.b $00
[000d60ad]                           dc.b $00
[000d60ae]                           dc.b $00
[000d60af]                           dc.b $00
[000d60b0]                           dc.b $00
[000d60b1]                           dc.b $00
[000d60b2]                           dc.b $00
[000d60b3]                           dc.b $00
[000d60b4]                           dc.b $00
[000d60b5]                           dc.b $00
[000d60b6]                           dc.b $00
[000d60b7]                           dc.b $00
[000d60b8]                           dc.b $00
[000d60b9]                           dc.b $00
[000d60ba]                           dc.b $00
[000d60bb]                           dc.b $00
[000d60bc]                           dc.b $00
[000d60bd]                           dc.b $00
[000d60be]                           dc.b $00
[000d60bf]                           dc.b $00
[000d60c0]                           dc.b $00
[000d60c1]                           dc.b $00
[000d60c2]                           dc.b $00
[000d60c3]                           dc.b $00
[000d60c4]                           dc.b $00
[000d60c5]                           dc.b $00
[000d60c6]                           dc.b $00
[000d60c7]                           dc.b $00
[000d60c8]                           dc.b $00
[000d60c9]                           dc.b $18
[000d60ca]                           dc.b $00
[000d60cb]                           dc.b $01
[000d60cc]                           dc.b $00
[000d60cd]                           dc.b $00
[000d60ce]                           dc.b $00
[000d60cf]                           dc.b $00
[000d60d0]                           dc.b $00
[000d60d1]                           dc.b $00
[000d60d2]                           dc.b $00
[000d60d3]                           dc.b $00
[000d60d4]                           dc.b $00
[000d60d5]                           dc.b $00
[000d60d6]                           dc.b $00
[000d60d7]                           dc.b $00
[000d60d8]                           dc.b $00
[000d60d9]                           dc.b $00
[000d60da]                           dc.b $00
[000d60db]                           dc.b $00
[000d60dc]                           dc.b $00
[000d60dd]                           dc.b $00
[000d60de]                           dc.b $00
[000d60df]                           dc.b $00
[000d60e0]                           dc.b $00
[000d60e1]                           dc.b $00
[000d60e2]                           dc.b $00
[000d60e3]                           dc.b $00
[000d60e4]                           dc.b $00
[000d60e5]                           dc.b $00
[000d60e6]                           dc.b $00
[000d60e7]                           dc.b $00
[000d60e8]                           dc.b $00
[000d60e9]                           dc.b $10
[000d60ea]                           dc.b $00
[000d60eb]                           dc.b $00
[000d60ec]                           dc.b $00
[000d60ed]                           dc.b $00
[000d60ee]                           dc.b $00
[000d60ef]                           dc.b $00
[000d60f0]                           dc.b $00
[000d60f1]                           dc.b $00
[000d60f2]                           dc.b $00
[000d60f3]                           dc.b $00
[000d60f4]                           dc.b $00
[000d60f5]                           dc.b $00
[000d60f6]                           dc.b $00
[000d60f7]                           dc.b $00
[000d60f8]                           dc.b $00
[000d60f9]                           dc.b $00
[000d60fa]                           dc.b $00
[000d60fb]                           dc.b $00
[000d60fc]                           dc.b $00
[000d60fd]                           dc.b $00
[000d60fe]                           dc.b $00
[000d60ff]                           dc.b $00
[000d6100]                           dc.b $00
[000d6101]                           dc.b $00
[000d6102]                           dc.b $00
[000d6103]                           dc.b $00
[000d6104]                           dc.b $00
[000d6105]                           dc.b $00
[000d6106]                           dc.b $00
[000d6107]                           dc.b $00
[000d6108]                           dc.b $00
[000d6109]                           dc.b $17
[000d610a]                           dc.b $00
[000d610b]                           dc.b $01
[000d610c]                           dc.b $00
[000d610d]                           dc.b $00
[000d610e]                           dc.b $00
[000d610f]                           dc.b $00
[000d6110]                           dc.b $00
[000d6111]                           dc.b $00
[000d6112]                           dc.b $00
[000d6113]                           dc.b $00
[000d6114]                           dc.b $00
[000d6115]                           dc.b $00
[000d6116]                           dc.b $00
[000d6117]                           dc.b $00
[000d6118]                           dc.b $00
[000d6119]                           dc.b $00
[000d611a]                           dc.b $00
[000d611b]                           dc.b $00
[000d611c]                           dc.b $00
[000d611d]                           dc.b $00
[000d611e]                           dc.b $00
[000d611f]                           dc.b $00
[000d6120]                           dc.b $00
[000d6121]                           dc.b $00
[000d6122]                           dc.b $00
[000d6123]                           dc.b $00
[000d6124]                           dc.b $00
[000d6125]                           dc.b $00
[000d6126]                           dc.b $00
[000d6127]                           dc.b $00
[000d6128]                           dc.b $00
[000d6129]                           dc.b $10
[000d612a]                           dc.b $00
[000d612b]                           dc.b $00
[000d612c]                           dc.b $00
[000d612d]                           dc.b $00
[000d612e]                           dc.b $00
[000d612f]                           dc.b $00
[000d6130]                           dc.b $00
[000d6131]                           dc.b $00
[000d6132]                           dc.b $00
[000d6133]                           dc.b $00
[000d6134]                           dc.b $00
[000d6135]                           dc.b $00
[000d6136]                           dc.b $00
[000d6137]                           dc.b $00
[000d6138]                           dc.b $00
[000d6139]                           dc.b $00
[000d613a]                           dc.b $00
[000d613b]                           dc.b $00
[000d613c]                           dc.b $00
[000d613d]                           dc.b $00
[000d613e]                           dc.b $00
[000d613f]                           dc.b $00
[000d6140]                           dc.b $00
[000d6141]                           dc.b $00
[000d6142]                           dc.b $00
[000d6143]                           dc.b $00
[000d6144]                           dc.b $00
[000d6145]                           dc.b $00
[000d6146]                           dc.b $00
[000d6147]                           dc.b $00
[000d6148]                           dc.b $00
[000d6149]                           dc.b $19
[000d614a]                           dc.b $00
[000d614b]                           dc.b $01
[000d614c]                           dc.b $00
[000d614d]                           dc.b $00
[000d614e]                           dc.b $00
[000d614f]                           dc.b $00
[000d6150]                           dc.b $00
[000d6151]                           dc.b $00
[000d6152]                           dc.b $00
[000d6153]                           dc.b $00
[000d6154]                           dc.b $00
[000d6155]                           dc.b $00
[000d6156]                           dc.b $00
[000d6157]                           dc.b $00
[000d6158]                           dc.b $00
[000d6159]                           dc.b $00
[000d615a]                           dc.b $00
[000d615b]                           dc.b $00
[000d615c]                           dc.b $00
[000d615d]                           dc.b $00
[000d615e]                           dc.b $00
[000d615f]                           dc.b $00
[000d6160]                           dc.b $00
[000d6161]                           dc.b $00
[000d6162]                           dc.b $00
[000d6163]                           dc.b $00
[000d6164]                           dc.b $00
[000d6165]                           dc.b $00
[000d6166]                           dc.b $00
[000d6167]                           dc.b $00
[000d6168]                           dc.b $00
[000d6169]                           dc.b $10
[000d616a]                           dc.b $00
[000d616b]                           dc.b $00
[000d616c]                           dc.b $00
[000d616d]                           dc.b $00
[000d616e]                           dc.b $00
[000d616f]                           dc.b $00
[000d6170]                           dc.b $00
[000d6171]                           dc.b $00
[000d6172]                           dc.b $00
[000d6173]                           dc.b $00
[000d6174]                           dc.b $00
[000d6175]                           dc.b $00
[000d6176]                           dc.b $00
[000d6177]                           dc.b $00
[000d6178]                           dc.b $00
[000d6179]                           dc.b $00
[000d617a]                           dc.b $00
[000d617b]                           dc.b $00
[000d617c]                           dc.b $00
[000d617d]                           dc.b $00
[000d617e]                           dc.b $00
[000d617f]                           dc.b $00
[000d6180]                           dc.b $00
[000d6181]                           dc.b $00
[000d6182]                           dc.b $00
[000d6183]                           dc.b $00
[000d6184]                           dc.b $00
[000d6185]                           dc.b $00
[000d6186]                           dc.b $00
[000d6187]                           dc.b $00
[000d6188]                           dc.b $00
[000d6189]                           dc.b $1a
[000d618a]                           dc.b $00
[000d618b]                           dc.b $01
[000d618c]                           dc.b $00
[000d618d]                           dc.b $00
[000d618e]                           dc.b $00
[000d618f]                           dc.b $00
[000d6190]                           dc.b $00
[000d6191]                           dc.b $00
[000d6192]                           dc.b $00
[000d6193]                           dc.b $00
[000d6194]                           dc.b $00
[000d6195]                           dc.b $00
[000d6196]                           dc.b $00
[000d6197]                           dc.b $00
[000d6198]                           dc.b $00
[000d6199]                           dc.b $00
[000d619a]                           dc.b $00
[000d619b]                           dc.b $00
[000d619c]                           dc.b $00
[000d619d]                           dc.b $00
[000d619e]                           dc.b $00
[000d619f]                           dc.b $00
[000d61a0]                           dc.b $00
[000d61a1]                           dc.b $00
[000d61a2]                           dc.b $00
[000d61a3]                           dc.b $00
[000d61a4]                           dc.b $00
[000d61a5]                           dc.b $00
[000d61a6]                           dc.b $00
[000d61a7]                           dc.b $00
[000d61a8]                           dc.b $00
[000d61a9]                           dc.b $01
[000d61aa]                           dc.b $00
[000d61ab]                           dc.b $00
[000d61ac]                           dc.b $00
[000d61ad]                           dc.b $00
[000d61ae]                           dc.b $00
[000d61af]                           dc.b $00
[000d61b0]                           dc.b $00
[000d61b1]                           dc.b $00
[000d61b2]                           dc.b $00
[000d61b3]                           dc.b $00
[000d61b4]                           dc.b $00
[000d61b5]                           dc.b $00
[000d61b6]                           dc.b $00
[000d61b7]                           dc.b $00
[000d61b8]                           dc.b $00
[000d61b9]                           dc.b $00
[000d61ba]                           dc.b $00
[000d61bb]                           dc.b $00
[000d61bc]                           dc.b $00
[000d61bd]                           dc.b $00
[000d61be]                           dc.b $00
[000d61bf]                           dc.b $00
[000d61c0]                           dc.b $00
[000d61c1]                           dc.b $00
[000d61c2]                           dc.b $00
[000d61c3]                           dc.b $00
[000d61c4]                           dc.b $00
[000d61c5]                           dc.b $00
[000d61c6]                           dc.b $00
[000d61c7]                           dc.b $00
[000d61c8]                           dc.b $00
[000d61c9]                           dc.b $00
[000d61ca]                           dc.b $00
[000d61cb]                           dc.b $00
[000d61cc]                           dc.b $00
[000d61cd]                           dc.b $00
[000d61ce]                           dc.b $00
[000d61cf]                           dc.b $00
[000d61d0]                           dc.b $00
[000d61d1]                           dc.b $00
[000d61d2]                           dc.b $00
[000d61d3]                           dc.b $00
[000d61d4]                           dc.b $00
[000d61d5]                           dc.b $00
[000d61d6]                           dc.b $00
[000d61d7]                           dc.b $00
[000d61d8]                           dc.b $00
[000d61d9]                           dc.b $00
[000d61da]                           dc.b $00
[000d61db]                           dc.b $00
[000d61dc]                           dc.b $00
[000d61dd]                           dc.b $00
[000d61de]                           dc.b $00
[000d61df]                           dc.b $00
[000d61e0]                           dc.b $00
[000d61e1]                           dc.b $00
[000d61e2]                           dc.b $00
[000d61e3]                           dc.b $00
[000d61e4]                           dc.b $00
[000d61e5]                           dc.b $00
[000d61e6]                           dc.b $00
[000d61e7]                           dc.b $00
[000d61e8]                           dc.b $00
[000d61e9]                           dc.b $10
[000d61ea]                           dc.b $00
[000d61eb]                           dc.b $00
[000d61ec]                           dc.b $00
[000d61ed]                           dc.b $00
[000d61ee]                           dc.b $00
[000d61ef]                           dc.b $00
[000d61f0]                           dc.b $00
[000d61f1]                           dc.b $00
[000d61f2]                           dc.b $00
[000d61f3]                           dc.b $00
[000d61f4]                           dc.b $00
[000d61f5]                           dc.b $00
[000d61f6]                           dc.b $00
[000d61f7]                           dc.b $00
[000d61f8]                           dc.b $00
[000d61f9]                           dc.b $00
[000d61fa]                           dc.b $00
[000d61fb]                           dc.b $00
[000d61fc]                           dc.b $00
[000d61fd]                           dc.b $00
[000d61fe]                           dc.b $00
[000d61ff]                           dc.b $00
[000d6200]                           dc.b $00
[000d6201]                           dc.b $00
[000d6202]                           dc.b $00
[000d6203]                           dc.b $00
[000d6204]                           dc.b $00
[000d6205]                           dc.b $00
[000d6206]                           dc.b $00
[000d6207]                           dc.b $00
[000d6208]                           dc.b $00
[000d6209]                           dc.b $15
[000d620a]                           dc.b $00
[000d620b]                           dc.b $01
[000d620c]                           dc.b $00
[000d620d]                           dc.b $00
[000d620e]                           dc.b $00
[000d620f]                           dc.b $00
[000d6210]                           dc.b $00
[000d6211]                           dc.b $00
[000d6212]                           dc.b $00
[000d6213]                           dc.b $00
[000d6214]                           dc.b $00
[000d6215]                           dc.b $00
[000d6216]                           dc.b $00
[000d6217]                           dc.b $00
[000d6218]                           dc.b $00
[000d6219]                           dc.b $00
[000d621a]                           dc.b $00
[000d621b]                           dc.b $00
[000d621c]                           dc.b $00
[000d621d]                           dc.b $00
[000d621e]                           dc.b $00
[000d621f]                           dc.b $00
[000d6220]                           dc.b $00
[000d6221]                           dc.b $00
[000d6222]                           dc.b $00
[000d6223]                           dc.b $00
[000d6224]                           dc.b $00
[000d6225]                           dc.b $00
[000d6226]                           dc.b $00
[000d6227]                           dc.b $00
[000d6228]                           dc.b $00
[000d6229]                           dc.b $10
[000d622a]                           dc.b $00
[000d622b]                           dc.b $00
[000d622c]                           dc.b $00
[000d622d]                           dc.b $00
[000d622e]                           dc.b $00
[000d622f]                           dc.b $00
[000d6230]                           dc.b $00
[000d6231]                           dc.b $00
[000d6232]                           dc.b $00
[000d6233]                           dc.b $00
[000d6234]                           dc.b $00
[000d6235]                           dc.b $00
[000d6236]                           dc.b $00
[000d6237]                           dc.b $00
[000d6238]                           dc.b $00
[000d6239]                           dc.b $00
[000d623a]                           dc.b $00
[000d623b]                           dc.b $00
[000d623c]                           dc.b $00
[000d623d]                           dc.b $00
[000d623e]                           dc.b $00
[000d623f]                           dc.b $00
[000d6240]                           dc.b $00
[000d6241]                           dc.b $00
[000d6242]                           dc.b $00
[000d6243]                           dc.b $00
[000d6244]                           dc.b $00
[000d6245]                           dc.b $00
[000d6246]                           dc.b $00
[000d6247]                           dc.b $00
[000d6248]                           dc.b $00
[000d6249]                           dc.b $1c
[000d624a]                           dc.b $00
[000d624b]                           dc.b $01
[000d624c]                           dc.b $00
[000d624d]                           dc.b $00
[000d624e]                           dc.b $00
[000d624f]                           dc.b $00
[000d6250]                           dc.b $00
[000d6251]                           dc.b $00
[000d6252]                           dc.b $00
[000d6253]                           dc.b $00
[000d6254]                           dc.b $00
[000d6255]                           dc.b $00
[000d6256]                           dc.b $00
[000d6257]                           dc.b $00
[000d6258]                           dc.b $00
[000d6259]                           dc.b $00
[000d625a]                           dc.b $00
[000d625b]                           dc.b $00
[000d625c]                           dc.b $00
[000d625d]                           dc.b $00
[000d625e]                           dc.b $00
[000d625f]                           dc.b $00
[000d6260]                           dc.b $00
[000d6261]                           dc.b $00
[000d6262]                           dc.b $00
[000d6263]                           dc.b $00
[000d6264]                           dc.b $00
[000d6265]                           dc.b $00
[000d6266]                           dc.b $00
[000d6267]                           dc.b $00
[000d6268]                           dc.b $00
[000d6269]                           dc.b $10
[000d626a]                           dc.b $00
[000d626b]                           dc.b $00
[000d626c]                           dc.b $00
[000d626d]                           dc.b $00
[000d626e]                           dc.b $00
[000d626f]                           dc.b $00
[000d6270]                           dc.b $00
[000d6271]                           dc.b $00
[000d6272]                           dc.b $00
[000d6273]                           dc.b $00
[000d6274]                           dc.b $00
[000d6275]                           dc.b $00
[000d6276]                           dc.b $00
[000d6277]                           dc.b $00
[000d6278]                           dc.b $00
[000d6279]                           dc.b $00
[000d627a]                           dc.b $00
[000d627b]                           dc.b $00
[000d627c]                           dc.b $00
[000d627d]                           dc.b $00
[000d627e]                           dc.b $00
[000d627f]                           dc.b $00
[000d6280]                           dc.b $00
[000d6281]                           dc.b $00
[000d6282]                           dc.b $00
[000d6283]                           dc.b $00
[000d6284]                           dc.b $00
[000d6285]                           dc.b $00
[000d6286]                           dc.b $00
[000d6287]                           dc.b $00
[000d6288]                           dc.b $00
[000d6289]                           dc.b $1b
[000d628a]                           dc.b $00
[000d628b]                           dc.b $01
[000d628c]                           dc.b $00
[000d628d]                           dc.b $00
[000d628e]                           dc.b $00
[000d628f]                           dc.b $00
[000d6290]                           dc.b $00
[000d6291]                           dc.b $00
[000d6292]                           dc.b $00
[000d6293]                           dc.b $00
[000d6294]                           dc.b $00
[000d6295]                           dc.b $00
[000d6296]                           dc.b $00
[000d6297]                           dc.b $00
[000d6298]                           dc.b $00
[000d6299]                           dc.b $00
[000d629a]                           dc.b $00
[000d629b]                           dc.b $00
[000d629c]                           dc.b $00
[000d629d]                           dc.b $00
[000d629e]                           dc.b $00
[000d629f]                           dc.b $00
[000d62a0]                           dc.b $00
[000d62a1]                           dc.b $00
[000d62a2]                           dc.b $00
[000d62a3]                           dc.b $00
[000d62a4]                           dc.b $00
[000d62a5]                           dc.b $00
[000d62a6]                           dc.b $00
[000d62a7]                           dc.b $00
[000d62a8]                           dc.b $00
[000d62a9]                           dc.b $02
[000d62aa]                           dc.b $00
[000d62ab]                           dc.b $00
[000d62ac]                           dc.b $00
[000d62ad]                           dc.b $00
[000d62ae]                           dc.b $00
[000d62af]                           dc.b $00
[000d62b0]                           dc.b $00
[000d62b1]                           dc.b $00
[000d62b2]                           dc.b $00
[000d62b3]                           dc.b $00
[000d62b4]                           dc.b $00
[000d62b5]                           dc.b $00
[000d62b6]                           dc.b $00
[000d62b7]                           dc.b $00
[000d62b8]                           dc.b $00
[000d62b9]                           dc.b $00
[000d62ba]                           dc.b $00
[000d62bb]                           dc.b $00
[000d62bc]                           dc.b $00
[000d62bd]                           dc.b $00
[000d62be]                           dc.b $00
[000d62bf]                           dc.b $00
[000d62c0]                           dc.b $00
[000d62c1]                           dc.b $00
[000d62c2]                           dc.b $00
[000d62c3]                           dc.b $00
[000d62c4]                           dc.b $00
[000d62c5]                           dc.b $00
[000d62c6]                           dc.b $00
[000d62c7]                           dc.b $00
[000d62c8]                           dc.b $00
[000d62c9]                           dc.b $00
[000d62ca]                           dc.b $00
[000d62cb]                           dc.b $00
[000d62cc]                           dc.b $00
[000d62cd]                           dc.b $00
[000d62ce]                           dc.b $00
[000d62cf]                           dc.b $00
[000d62d0]                           dc.b $00
[000d62d1]                           dc.b $00
[000d62d2]                           dc.b $00
[000d62d3]                           dc.b $00
[000d62d4]                           dc.b $00
[000d62d5]                           dc.b $00
[000d62d6]                           dc.b $00
[000d62d7]                           dc.b $00
[000d62d8]                           dc.b $00
[000d62d9]                           dc.b $00
[000d62da]                           dc.b $00
[000d62db]                           dc.b $00
[000d62dc]                           dc.b $00
[000d62dd]                           dc.b $00
[000d62de]                           dc.b $00
[000d62df]                           dc.b $00
[000d62e0]                           dc.b $00
[000d62e1]                           dc.b $00
[000d62e2]                           dc.b $00
[000d62e3]                           dc.b $00
[000d62e4]                           dc.b $00
[000d62e5]                           dc.b $00
[000d62e6]                           dc.b $00
[000d62e7]                           dc.b $00
