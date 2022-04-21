
Aev_InitXAcc:
[00055130] 4fef fff0                 lea.l      -16(a7),a7
[00055134] 2079 0010 1f12            movea.l    ACSblk,a0
[0005513a] 3028 0238                 move.w     568(a0),d0
[0005513e] 6700 007a                 beq.w      Aev_InitXAcc_1
[00055142] 2079 0010 1f12            movea.l    ACSblk,a0
[00055148] 2068 0280                 movea.l    640(a0),a0
[0005514c] 0c50 0400                 cmpi.w     #$0400,(a0)
[00055150] 6c0a                      bge.s      Aev_InitXAcc_2
[00055152] 0c79 0200 0010 2620       cmpi.w     #$0200,_ACSv_magix
[0005515a] 6d5e                      blt.s      Aev_InitXAcc_1
Aev_InitXAcc_2:
[0005515c] 2f39 000d 99d6            move.l     _globl,-(a7)
[00055162] 486f 000e                 pea.l      14(a7)
[00055166] 43ef 0014                 lea.l      20(a7),a1
[0005516a] 41ef 0008                 lea.l      8(a7),a0
[0005516e] 4240                      clr.w      d0
[00055170] 4eb9 0006 aa02            jsr        mt_appl_search
[00055176] 504f                      addq.w     #8,a7
[00055178] 3f40 000e                 move.w     d0,14(a7)
[0005517c] 6036                      bra.s      Aev_InitXAcc_3
Aev_InitXAcc_5:
[0005517e] 7006                      moveq.l    #6,d0
[00055180] c06f 000c                 and.w      12(a7),d0
[00055184] 670e                      beq.s      Aev_InitXAcc_4
[00055186] 4241                      clr.w      d1
[00055188] 91c8                      suba.l     a0,a0
[0005518a] 302f 000a                 move.w     10(a7),d0
[0005518e] 4eb9 0005 5a66            jsr        Aev_AccID
Aev_InitXAcc_4:
[00055194] 2f39 000d 99d6            move.l     _globl,-(a7)
[0005519a] 486f 000e                 pea.l      14(a7)
[0005519e] 43ef 0014                 lea.l      20(a7),a1
[000551a2] 41ef 0008                 lea.l      8(a7),a0
[000551a6] 7001                      moveq.l    #1,d0
[000551a8] 4eb9 0006 aa02            jsr        mt_appl_search
[000551ae] 504f                      addq.w     #8,a7
[000551b0] 3f40 000e                 move.w     d0,14(a7)
Aev_InitXAcc_3:
[000551b4] 302f 000e                 move.w     14(a7),d0
[000551b8] 66c4                      bne.s      Aev_InitXAcc_5
Aev_InitXAcc_1:
[000551ba] 7001                      moveq.l    #1,d0
[000551bc] 4fef 0010                 lea.l      16(a7),a7
[000551c0] 4e75                      rts

Aev_ExitXAcc:
[000551c2] 7001                      moveq.l    #1,d0
[000551c4] 4e75                      rts

XAccDataDelete:
[000551c6] 2f0a                      move.l     a2,-(a7)
[000551c8] 594f                      subq.w     #4,a7
[000551ca] 2e88                      move.l     a0,(a7)
[000551cc] 2017                      move.l     (a7),d0
[000551ce] 6736                      beq.s      XAccDataDelete_1
[000551d0] 2057                      movea.l    (a7),a0
[000551d2] 2028 0006                 move.l     6(a0),d0
[000551d6] 6722                      beq.s      XAccDataDelete_2
[000551d8] 4879 0006 2c64            pea.l      Alu_ptrCmp
[000551de] 206f 0004                 movea.l    4(a7),a0
[000551e2] 2268 0006                 movea.l    6(a0),a1
[000551e6] 2079 000d 450e            movea.l    globProtData,a0
[000551ec] 2479 000d 450e            movea.l    globProtData,a2
[000551f2] 246a 0018                 movea.l    24(a2),a2
[000551f6] 4e92                      jsr        (a2)
[000551f8] 584f                      addq.w     #4,a7
XAccDataDelete_2:
[000551fa] 720a                      moveq.l    #10,d1
[000551fc] 4240                      clr.w      d0
[000551fe] 2057                      movea.l    (a7),a0
[00055200] 4eb9 0007 712e            jsr        memset
XAccDataDelete_1:
[00055206] 584f                      addq.w     #4,a7
[00055208] 245f                      movea.l    (a7)+,a2
[0005520a] 4e75                      rts

Aev_CheckXAccPart:
[0005520c] 5d4f                      subq.w     #6,a7
[0005520e] 3f40 0004                 move.w     d0,4(a7)
[00055212] 302f 0004                 move.w     4(a7),d0
[00055216] 4eb9 0005 3fb0            jsr        Aev_DDSearch
[0005521c] 2e88                      move.l     a0,(a7)
[0005521e] 2017                      move.l     (a7),d0
[00055220] 670a                      beq.s      Aev_CheckXAccPart_1
[00055222] 7002                      moveq.l    #2,d0
[00055224] 2057                      movea.l    (a7),a0
[00055226] c0a8 0002                 and.l      2(a0),d0
[0005522a] 6610                      bne.s      Aev_CheckXAccPart_2
Aev_CheckXAccPart_1:
[0005522c] 4241                      clr.w      d1
[0005522e] 302f 0004                 move.w     4(a7),d0
[00055232] 4eb9 0005 5c74            jsr        Aev_AccAck
[00055238] 91c8                      suba.l     a0,a0
[0005523a] 6002                      bra.s      Aev_CheckXAccPart_3
Aev_CheckXAccPart_2:
[0005523c] 2057                      movea.l    (a7),a0
Aev_CheckXAccPart_3:
[0005523e] 5c4f                      addq.w     #6,a7
[00055240] 4e75                      rts

Aev_GetAccID:
[00055242] 2f0a                      move.l     a2,-(a7)
[00055244] 4fef fff2                 lea.l      -14(a7),a7
[00055248] 2f48 000a                 move.l     a0,10(a7)
[0005524c] 206f 000a                 movea.l    10(a7),a0
[00055250] 2f50 0006                 move.l     (a0),6(a7)
[00055254] 2079 0010 1f12            movea.l    ACSblk,a0
[0005525a] 3028 0238                 move.w     568(a0),d0
[0005525e] 661a                      bne.s      Aev_GetAccID_1
[00055260] 2079 0010 1f12            movea.l    ACSblk,a0
[00055266] 3010                      move.w     (a0),d0
[00055268] 6610                      bne.s      Aev_GetAccID_1
[0005526a] 72ff                      moveq.l    #-1,d1
[0005526c] 93c9                      suba.l     a1,a1
[0005526e] 206f 0006                 movea.l    6(a7),a0
[00055272] 70ff                      moveq.l    #-1,d0
[00055274] 4eb9 0005 5b02            jsr        Aev_AccAcc
Aev_GetAccID_1:
[0005527a] 206f 0006                 movea.l    6(a7),a0
[0005527e] 2f68 0008 0002            move.l     8(a0),2(a7)
[00055284] 4241                      clr.w      d1
[00055286] 70ff                      moveq.l    #-1,d0
[00055288] 206f 0002                 movea.l    2(a7),a0
[0005528c] 4eb9 0004 7ff8            jsr        Ax_memCheck
[00055292] 4a40                      tst.w      d0
[00055294] 671e                      beq.s      Aev_GetAccID_2
[00055296] 226f 0002                 movea.l    2(a7),a1
[0005529a] 206f 0006                 movea.l    6(a7),a0
[0005529e] 5c48                      addq.w     #6,a0
[000552a0] 7202                      moveq.l    #2,d1
[000552a2] 246f 0006                 movea.l    6(a7),a2
[000552a6] 302a 0002                 move.w     2(a2),d0
[000552aa] 4eb9 0005 3fe4            jsr        Aev_DDAdd
[000552b0] 3e80                      move.w     d0,(a7)
[000552b2] 6002                      bra.s      Aev_GetAccID_3
Aev_GetAccID_2:
[000552b4] 4257                      clr.w      (a7)
Aev_GetAccID_3:
[000552b6] 2079 0010 1f12            movea.l    ACSblk,a0
[000552bc] 3028 0238                 move.w     568(a0),d0
[000552c0] 660a                      bne.s      Aev_GetAccID_4
[000552c2] 2079 0010 1f12            movea.l    ACSblk,a0
[000552c8] 3010                      move.w     (a0),d0
[000552ca] 6616                      bne.s      Aev_GetAccID_5
Aev_GetAccID_4:
[000552cc] 72ff                      moveq.l    #-1,d1
[000552ce] 93c9                      suba.l     a1,a1
[000552d0] 206f 0006                 movea.l    6(a7),a0
[000552d4] 246f 0006                 movea.l    6(a7),a2
[000552d8] 302a 0002                 move.w     2(a2),d0
[000552dc] 4eb9 0005 5b02            jsr        Aev_AccAcc
Aev_GetAccID_5:
[000552e2] 3017                      move.w     (a7),d0
[000552e4] 4fef 000e                 lea.l      14(a7),a7
[000552e8] 245f                      movea.l    (a7)+,a2
[000552ea] 4e75                      rts

Aev_GetAccAck:
[000552ec] 2f0a                      move.l     a2,-(a7)
[000552ee] 4fef fff0                 lea.l      -16(a7),a7
[000552f2] 2f48 000c                 move.l     a0,12(a7)
[000552f6] 206f 000c                 movea.l    12(a7),a0
[000552fa] 2f50 0008                 move.l     (a0),8(a7)
[000552fe] 4297                      clr.l      (a7)
[00055300] 206f 0008                 movea.l    8(a7),a0
[00055304] 3028 0002                 move.w     2(a0),d0
[00055308] 2079 0010 1f12            movea.l    ACSblk,a0
[0005530e] b050                      cmp.w      (a0),d0
[00055310] 6700 00ae                 beq        Aev_GetAccAck_1
[00055314] 206f 0008                 movea.l    8(a7),a0
[00055318] 3028 0002                 move.w     2(a0),d0
[0005531c] 6100 feee                 bsr        Aev_CheckXAccPart
[00055320] 2f48 0004                 move.l     a0,4(a7)
[00055324] 202f 0004                 move.l     4(a7),d0
[00055328] 670c                      beq.s      Aev_GetAccAck_2
[0005532a] 206f 0004                 movea.l    4(a7),a0
[0005532e] 41e8 0016                 lea.l      22(a0),a0
[00055332] 6100 fe92                 bsr        XAccDataDelete
Aev_GetAccAck_2:
[00055336] 4879 0005 3ddc            pea.l      Aev_CmpDestID
[0005533c] 226f 000c                 movea.l    12(a7),a1
[00055340] 5449                      addq.w     #2,a1
[00055342] 2079 000d 2c50            movea.l    SentMsg,a0
[00055348] 2479 000d 2c50            movea.l    SentMsg,a2
[0005534e] 246a 0020                 movea.l    32(a2),a2
[00055352] 4e92                      jsr        (a2)
[00055354] 584f                      addq.w     #4,a7
[00055356] 2e88                      move.l     a0,(a7)
[00055358] 2017                      move.l     (a7),d0
[0005535a] 6764                      beq.s      Aev_GetAccAck_1
[0005535c] 4879 0006 2c64            pea.l      Alu_ptrCmp
[00055362] 226f 0004                 movea.l    4(a7),a1
[00055366] 2079 000d 2c50            movea.l    SentMsg,a0
[0005536c] 2479 000d 2c50            movea.l    SentMsg,a2
[00055372] 246a 0020                 movea.l    32(a2),a2
[00055376] 4e92                      jsr        (a2)
[00055378] 584f                      addq.w     #4,a7
[0005537a] 2008                      move.l     a0,d0
[0005537c] 6742                      beq.s      Aev_GetAccAck_1
[0005537e] 2057                      movea.l    (a7),a0
[00055380] 2028 0002                 move.l     2(a0),d0
[00055384] 671c                      beq.s      Aev_GetAccAck_3
[00055386] 226f 0008                 movea.l    8(a7),a1
[0005538a] 5c49                      addq.w     #6,a1
[0005538c] 303c 0190                 move.w     #$0190,d0
[00055390] 2057                      movea.l    (a7),a0
[00055392] 2068 0002                 movea.l    2(a0),a0
[00055396] 2457                      movea.l    (a7),a2
[00055398] 246a 0002                 movea.l    2(a2),a2
[0005539c] 246a 0004                 movea.l    4(a2),a2
[000553a0] 4e92                      jsr        (a2)
Aev_GetAccAck_3:
[000553a2] 4879 0006 2c64            pea.l      Alu_ptrCmp
[000553a8] 226f 0004                 movea.l    4(a7),a1
[000553ac] 2079 000d 2c50            movea.l    SentMsg,a0
[000553b2] 2479 000d 2c50            movea.l    SentMsg,a2
[000553b8] 246a 0018                 movea.l    24(a2),a2
[000553bc] 4e92                      jsr        (a2)
[000553be] 584f                      addq.w     #4,a7
Aev_GetAccAck_1:
[000553c0] 2017                      move.l     (a7),d0
[000553c2] 6704                      beq.s      Aev_GetAccAck_4
[000553c4] 7001                      moveq.l    #1,d0
[000553c6] 6002                      bra.s      Aev_GetAccAck_5
Aev_GetAccAck_4:
[000553c8] 4240                      clr.w      d0
Aev_GetAccAck_5:
[000553ca] 4fef 0010                 lea.l      16(a7),a7
[000553ce] 245f                      movea.l    (a7)+,a2
[000553d0] 4e75                      rts

Aev_GetAccAcc:
[000553d2] 4fef fff2                 lea.l      -14(a7),a7
[000553d6] 2f48 000a                 move.l     a0,10(a7)
[000553da] 206f 000a                 movea.l    10(a7),a0
[000553de] 2f50 0006                 move.l     (a0),6(a7)
[000553e2] 2079 0010 1f12            movea.l    ACSblk,a0
[000553e8] 3028 0238                 move.w     568(a0),d0
[000553ec] 660a                      bne.s      Aev_GetAccAcc_1
[000553ee] 2079 0010 1f12            movea.l    ACSblk,a0
[000553f4] 3010                      move.w     (a0),d0
[000553f6] 6766                      beq.s      Aev_GetAccAcc_2
Aev_GetAccAcc_1:
[000553f8] 206f 0006                 movea.l    6(a7),a0
[000553fc] 2f68 0008 0002            move.l     8(a0),2(a7)
[00055402] 202f 0002                 move.l     2(a7),d0
[00055406] 6752                      beq.s      Aev_GetAccAcc_3
[00055408] 4241                      clr.w      d1
[0005540a] 70ff                      moveq.l    #-1,d0
[0005540c] 206f 0002                 movea.l    2(a7),a0
[00055410] 4eb9 0004 7ff8            jsr        Ax_memCheck
[00055416] 4a40                      tst.w      d0
[00055418] 6740                      beq.s      Aev_GetAccAcc_3
[0005541a] 226f 0002                 movea.l    2(a7),a1
[0005541e] 206f 0006                 movea.l    6(a7),a0
[00055422] 5c48                      addq.w     #6,a0
[00055424] 7202                      moveq.l    #2,d1
[00055426] 2f09                      move.l     a1,-(a7)
[00055428] 2f08                      move.l     a0,-(a7)
[0005542a] 3f01                      move.w     d1,-(a7)
[0005542c] 2079 0010 1f12            movea.l    ACSblk,a0
[00055432] 3228 0238                 move.w     568(a0),d1
[00055436] 6704                      beq.s      Aev_GetAccAcc_4
[00055438] 7201                      moveq.l    #1,d1
[0005543a] 6002                      bra.s      Aev_GetAccAcc_5
Aev_GetAccAcc_4:
[0005543c] 7207                      moveq.l    #7,d1
Aev_GetAccAcc_5:
[0005543e] 48c1                      ext.l      d1
[00055440] d281                      add.l      d1,d1
[00055442] 206f 0010                 movea.l    16(a7),a0
[00055446] 3030 1800                 move.w     0(a0,d1.l),d0
[0005544a] 321f                      move.w     (a7)+,d1
[0005544c] 205f                      movea.l    (a7)+,a0
[0005544e] 225f                      movea.l    (a7)+,a1
[00055450] 4eb9 0005 3fe4            jsr        Aev_DDAdd
[00055456] 3e80                      move.w     d0,(a7)
[00055458] 6004                      bra.s      Aev_GetAccAcc_2
Aev_GetAccAcc_3:
[0005545a] 3ebc ffff                 move.w     #$FFFF,(a7)
Aev_GetAccAcc_2:
[0005545e] 2079 0010 1f12            movea.l    ACSblk,a0
[00055464] 3028 0238                 move.w     568(a0),d0
[00055468] 661c                      bne.s      Aev_GetAccAcc_6
[0005546a] 2079 0010 1f12            movea.l    ACSblk,a0
[00055470] 3010                      move.w     (a0),d0
[00055472] 6712                      beq.s      Aev_GetAccAcc_6
[00055474] 72ff                      moveq.l    #-1,d1
[00055476] 91c8                      suba.l     a0,a0
[00055478] 226f 0006                 movea.l    6(a7),a1
[0005547c] 3029 000e                 move.w     14(a1),d0
[00055480] 4eb9 0005 5a66            jsr        Aev_AccID
Aev_GetAccAcc_6:
[00055486] 3017                      move.w     (a7),d0
[00055488] 4fef 000e                 lea.l      14(a7),a7
[0005548c] 4e75                      rts

Aev_GetAccKey:
[0005548e] 4fef fff2                 lea.l      -14(a7),a7
[00055492] 2f48 000a                 move.l     a0,10(a7)
[00055496] 206f 000a                 movea.l    10(a7),a0
[0005549a] 2f68 000c 0006            move.l     12(a0),6(a7)
[000554a0] 206f 000a                 movea.l    10(a7),a0
[000554a4] 2f50 0002                 move.l     (a0),2(a7)
[000554a8] 206f 0002                 movea.l    2(a7),a0
[000554ac] 3028 0002                 move.w     2(a0),d0
[000554b0] 6100 fd5a                 bsr        Aev_CheckXAccPart
[000554b4] 2008                      move.l     a0,d0
[000554b6] 6604                      bne.s      Aev_GetAccKey_1
[000554b8] 7001                      moveq.l    #1,d0
[000554ba] 6064                      bra.s      Aev_GetAccKey_2
Aev_GetAccKey_1:
[000554bc] 206f 0002                 movea.l    2(a7),a0
[000554c0] 3228 0008                 move.w     8(a0),d1
[000554c4] 206f 0002                 movea.l    2(a7),a0
[000554c8] 3028 0006                 move.w     6(a0),d0
[000554cc] 4eb9 0004 1e3e            jsr        nkc_gemks2n
[000554d2] 2079 0010 1f12            movea.l    ACSblk,a0
[000554d8] 3140 02ce                 move.w     d0,718(a0)
[000554dc] 2079 0010 1f12            movea.l    ACSblk,a0
[000554e2] 3228 02ce                 move.w     718(a0),d1
[000554e6] c27c bfff                 and.w      #$BFFF,d1
[000554ea] 2079 0010 1f12            movea.l    ACSblk,a0
[000554f0] 3028 0266                 move.w     614(a0),d0
[000554f4] 206f 0006                 movea.l    6(a7),a0
[000554f8] 226f 0006                 movea.l    6(a7),a1
[000554fc] 2269 0062                 movea.l    98(a1),a1
[00055500] 4e91                      jsr        (a1)
[00055502] 3e80                      move.w     d0,(a7)
[00055504] 0c57 ffff                 cmpi.w     #$FFFF,(a7)
[00055508] 6d04                      blt.s      Aev_GetAccKey_3
[0005550a] 7201                      moveq.l    #1,d1
[0005550c] 6002                      bra.s      Aev_GetAccKey_4
Aev_GetAccKey_3:
[0005550e] 4241                      clr.w      d1
Aev_GetAccKey_4:
[00055510] 206f 0002                 movea.l    2(a7),a0
[00055514] 3028 0002                 move.w     2(a0),d0
[00055518] 4eb9 0005 5c74            jsr        Aev_AccAck
[0005551e] 7001                      moveq.l    #1,d0
Aev_GetAccKey_2:
[00055520] 4fef 000e                 lea.l      14(a7),a7
[00055524] 4e75                      rts

Aev_GetAccText:
[00055526] 4fef fff4                 lea.l      -12(a7),a7
[0005552a] 2f48 0008                 move.l     a0,8(a7)
[0005552e] 206f 0008                 movea.l    8(a7),a0
[00055532] 2f50 0004                 move.l     (a0),4(a7)
[00055536] 206f 0004                 movea.l    4(a7),a0
[0005553a] 3028 0002                 move.w     2(a0),d0
[0005553e] 6100 fccc                 bsr        Aev_CheckXAccPart
[00055542] 2008                      move.l     a0,d0
[00055544] 6606                      bne.s      Aev_GetAccText_1
[00055546] 7001                      moveq.l    #1,d0
[00055548] 6000 009e                 bra        Aev_GetAccText_2
Aev_GetAccText_1:
[0005554c] 206f 0004                 movea.l    4(a7),a0
[00055550] 2ea8 0008                 move.l     8(a0),(a7)
[00055554] 4241                      clr.w      d1
[00055556] 70ff                      moveq.l    #-1,d0
[00055558] 2057                      movea.l    (a7),a0
[0005555a] 4eb9 0004 7ff8            jsr        Ax_memCheck
[00055560] 4a40                      tst.w      d0
[00055562] 6750                      beq.s      Aev_GetAccText_3
[00055564] 206f 0008                 movea.l    8(a7),a0
[00055568] 2f28 0014                 move.l     20(a0),-(a7)
[0005556c] 206f 000c                 movea.l    12(a7),a0
[00055570] 2f28 0010                 move.l     16(a0),-(a7)
[00055574] 206f 0010                 movea.l    16(a7),a0
[00055578] 2f28 000c                 move.l     12(a0),-(a7)
[0005557c] 206f 0014                 movea.l    20(a7),a0
[00055580] 3228 001a                 move.w     26(a0),d1
[00055584] 206f 0014                 movea.l    20(a7),a0
[00055588] 3028 0018                 move.w     24(a0),d0
[0005558c] 43f9 000d 48d8            lea.l      $000D48D8,a1
[00055592] 206f 000c                 movea.l    12(a7),a0
[00055596] 4eb9 0005 47c8            jsr        GetTxtIntoObj
[0005559c] 4fef 000c                 lea.l      12(a7),a7
[000555a0] 3200                      move.w     d0,d1
[000555a2] 206f 0004                 movea.l    4(a7),a0
[000555a6] 3028 0002                 move.w     2(a0),d0
[000555aa] 4eb9 0005 5c74            jsr        Aev_AccAck
[000555b0] 6036                      bra.s      Aev_GetAccText_2
[000555b2] 6034                      bra.s      Aev_GetAccText_2
Aev_GetAccText_3:
[000555b4] 2079 0010 1f12            movea.l    ACSblk,a0
[000555ba] 2068 023c                 movea.l    572(a0),a0
[000555be] 3028 000e                 move.w     14(a0),d0
[000555c2] c07c 0400                 and.w      #$0400,d0
[000555c6] 670e                      beq.s      Aev_GetAccText_4
[000555c8] 41f9 000d 48e0            lea.l      $000D48E0,a0
[000555ce] 7001                      moveq.l    #1,d0
[000555d0] 4eb9 0005 17fe            jsr        Awi_alert
Aev_GetAccText_4:
[000555d6] 4241                      clr.w      d1
[000555d8] 206f 0004                 movea.l    4(a7),a0
[000555dc] 3028 0002                 move.w     2(a0),d0
[000555e0] 4eb9 0005 5c74            jsr        Aev_AccAck
[000555e6] 4e71                      nop
Aev_GetAccText_2:
[000555e8] 4fef 000c                 lea.l      12(a7),a7
[000555ec] 4e75                      rts

Aev_GetAccImg:
[000555ee] 2f0a                      move.l     a2,-(a7)
[000555f0] 4fef ffec                 lea.l      -20(a7),a7
[000555f4] 2f48 0010                 move.l     a0,16(a7)
[000555f8] 206f 0010                 movea.l    16(a7),a0
[000555fc] 2f50 000c                 move.l     (a0),12(a7)
[00055600] 3f7c 0001 000a            move.w     #$0001,10(a7)
[00055606] 206f 000c                 movea.l    12(a7),a0
[0005560a] 0c68 0001 0006            cmpi.w     #$0001,6(a0)
[00055610] 6604                      bne.s      Aev_GetAccImg_1
[00055612] 7001                      moveq.l    #1,d0
[00055614] 6002                      bra.s      Aev_GetAccImg_2
Aev_GetAccImg_1:
[00055616] 4240                      clr.w      d0
Aev_GetAccImg_2:
[00055618] 3f40 0008                 move.w     d0,8(a7)
[0005561c] 206f 000c                 movea.l    12(a7),a0
[00055620] 3028 0002                 move.w     2(a0),d0
[00055624] 6100 fbe6                 bsr        Aev_CheckXAccPart
[00055628] 2008                      move.l     a0,d0
[0005562a] 6606                      bne.s      Aev_GetAccImg_3
[0005562c] 7001                      moveq.l    #1,d0
[0005562e] 6000 020a                 bra        Aev_GetAccImg_4
Aev_GetAccImg_3:
[00055632] 2039 000d 4892            move.l     GetXAccData,d0
[00055638] 670c                      beq.s      Aev_GetAccImg_5
[0005563a] 0cb9 0049 4d47 000d 4892  cmpi.l     #$00494D47,GetXAccData
[00055644] 6618                      bne.s      Aev_GetAccImg_6
Aev_GetAccImg_5:
[00055646] 3039 000d 4896            move.w     GetXAccID,d0
[0005564c] 6b26                      bmi.s      Aev_GetAccImg_7
[0005564e] 206f 000c                 movea.l    12(a7),a0
[00055652] 3039 000d 4896            move.w     GetXAccID,d0
[00055658] b068 0002                 cmp.w      2(a0),d0
[0005565c] 6716                      beq.s      Aev_GetAccImg_7
Aev_GetAccImg_6:
[0005565e] 4241                      clr.w      d1
[00055660] 206f 000c                 movea.l    12(a7),a0
[00055664] 3028 0002                 move.w     2(a0),d0
[00055668] 4eb9 0005 5c74            jsr        Aev_AccAck
[0005566e] 7001                      moveq.l    #1,d0
[00055670] 6000 01c8                 bra        Aev_GetAccImg_4
Aev_GetAccImg_7:
[00055674] 206f 000c                 movea.l    12(a7),a0
[00055678] 2ea8 0008                 move.l     8(a0),(a7)
[0005567c] 206f 000c                 movea.l    12(a7),a0
[00055680] 2f68 000c 0004            move.l     12(a0),4(a7)
[00055686] 4241                      clr.w      d1
[00055688] 202f 0004                 move.l     4(a7),d0
[0005568c] 2057                      movea.l    (a7),a0
[0005568e] 4eb9 0004 7ff8            jsr        Ax_memCheck
[00055694] 3f40 000a                 move.w     d0,10(a7)
[00055698] 302f 0008                 move.w     8(a7),d0
[0005569c] 6700 00da                 beq        Aev_GetAccImg_8
[000556a0] 302f 000a                 move.w     10(a7),d0
[000556a4] 6700 00d2                 beq        Aev_GetAccImg_8
[000556a8] 0cb9 0049 4d47 000d 4892  cmpi.l     #$00494D47,GetXAccData
[000556b2] 6648                      bne.s      Aev_GetAccImg_9
[000556b4] 206f 000c                 movea.l    12(a7),a0
[000556b8] 3039 000d 4896            move.w     GetXAccID,d0
[000556be] b068 0002                 cmp.w      2(a0),d0
[000556c2] 6638                      bne.s      Aev_GetAccImg_9
[000556c4] 7201                      moveq.l    #1,d1
[000556c6] 202f 0004                 move.l     4(a7),d0
[000556ca] 2257                      movea.l    (a7),a1
[000556cc] 41f9 000d 4944            lea.l      $000D4944,a0
[000556d2] 4eb9 0005 fd30            jsr        Ascrp_put
[000556d8] 3f40 000a                 move.w     d0,10(a7)
[000556dc] 302f 000a                 move.w     10(a7),d0
[000556e0] 671a                      beq.s      Aev_GetAccImg_9
[000556e2] 486f 0004                 pea.l      4(a7)
[000556e6] 43ef 0004                 lea.l      4(a7),a1
[000556ea] 41f9 000d 4948            lea.l      $000D4948,a0
[000556f0] 4eb9 0005 fbba            jsr        Ascrp_get
[000556f6] 584f                      addq.w     #4,a7
[000556f8] 3f40 000a                 move.w     d0,10(a7)
Aev_GetAccImg_9:
[000556fc] 302f 000a                 move.w     10(a7),d0
[00055700] 6774                      beq.s      Aev_GetAccImg_10
[00055702] 206f 0010                 movea.l    16(a7),a0
[00055706] 2028 0010                 move.l     16(a0),d0
[0005570a] 6748                      beq.s      Aev_GetAccImg_11
[0005570c] 206f 0010                 movea.l    16(a7),a0
[00055710] 2068 0010                 movea.l    16(a0),a0
[00055714] 2028 0004                 move.l     4(a0),d0
[00055718] 673a                      beq.s      Aev_GetAccImg_11
[0005571a] 206f 0010                 movea.l    16(a7),a0
[0005571e] 2f28 0014                 move.l     20(a0),-(a7)
[00055722] 206f 0014                 movea.l    20(a7),a0
[00055726] 2f28 0010                 move.l     16(a0),-(a7)
[0005572a] 206f 0018                 movea.l    24(a7),a0
[0005572e] 3028 0018                 move.w     24(a0),d0
[00055732] 206f 0018                 movea.l    24(a7),a0
[00055736] 2268 000c                 movea.l    12(a0),a1
[0005573a] 206f 0008                 movea.l    8(a7),a0
[0005573e] 4eb9 0005 4754            jsr        GetImgIntoObj
[00055744] 504f                      addq.w     #8,a7
[00055746] 3f40 000a                 move.w     d0,10(a7)
[0005574a] 2057                      movea.l    (a7),a0
[0005574c] 4eb9 0004 7e26            jsr        Ax_free
[00055752] 6022                      bra.s      Aev_GetAccImg_10
Aev_GetAccImg_11:
[00055754] 43f9 000d 494c            lea.l      $000D494C,a1
[0005575a] 701d                      moveq.l    #29,d0
[0005575c] 206f 0010                 movea.l    16(a7),a0
[00055760] 2068 000c                 movea.l    12(a0),a0
[00055764] 246f 0010                 movea.l    16(a7),a2
[00055768] 246a 000c                 movea.l    12(a2),a2
[0005576c] 246a 0004                 movea.l    4(a2),a2
[00055770] 4e92                      jsr        (a2)
[00055772] 3f40 000a                 move.w     d0,10(a7)
Aev_GetAccImg_10:
[00055776] 606a                      bra.s      Aev_GetAccImg_12
Aev_GetAccImg_8:
[00055778] 302f 000a                 move.w     10(a7),d0
[0005577c] 6742                      beq.s      Aev_GetAccImg_13
[0005577e] 0cb9 0049 4d47 000d 4892  cmpi.l     #$00494D47,GetXAccData
[00055788] 6610                      bne.s      Aev_GetAccImg_14
[0005578a] 206f 000c                 movea.l    12(a7),a0
[0005578e] 3039 000d 4896            move.w     GetXAccID,d0
[00055794] b068 0002                 cmp.w      2(a0),d0
[00055798] 670c                      beq.s      Aev_GetAccImg_15
Aev_GetAccImg_14:
[0005579a] 41f9 000d 4950            lea.l      $000D4950,a0
[000557a0] 4eb9 0005 faca            jsr        Ascrp_clear
Aev_GetAccImg_15:
[000557a6] 7201                      moveq.l    #1,d1
[000557a8] 202f 0004                 move.l     4(a7),d0
[000557ac] 2257                      movea.l    (a7),a1
[000557ae] 41f9 000d 4954            lea.l      $000D4954,a0
[000557b4] 4eb9 0005 fd30            jsr        Ascrp_put
[000557ba] 3f40 000a                 move.w     d0,10(a7)
[000557be] 6022                      bra.s      Aev_GetAccImg_12
Aev_GetAccImg_13:
[000557c0] 2079 0010 1f12            movea.l    ACSblk,a0
[000557c6] 2068 023c                 movea.l    572(a0),a0
[000557ca] 3028 000e                 move.w     14(a0),d0
[000557ce] c07c 0400                 and.w      #$0400,d0
[000557d2] 670e                      beq.s      Aev_GetAccImg_12
[000557d4] 41f9 000d 4958            lea.l      $000D4958,a0
[000557da] 7001                      moveq.l    #1,d0
[000557dc] 4eb9 0005 17fe            jsr        Awi_alert
Aev_GetAccImg_12:
[000557e2] 322f 000a                 move.w     10(a7),d1
[000557e6] 206f 000c                 movea.l    12(a7),a0
[000557ea] 3028 0002                 move.w     2(a0),d0
[000557ee] 4eb9 0005 5c74            jsr        Aev_AccAck
[000557f4] 302f 0008                 move.w     8(a7),d0
[000557f8] 6606                      bne.s      Aev_GetAccImg_16
[000557fa] 302f 000a                 move.w     10(a7),d0
[000557fe] 6622                      bne.s      Aev_GetAccImg_17
Aev_GetAccImg_16:
[00055800] 302f 0008                 move.w     8(a7),d0
[00055804] 660c                      bne.s      Aev_GetAccImg_18
[00055806] 41f9 000d 49bc            lea.l      $000D49BC,a0
[0005580c] 4eb9 0005 faca            jsr        Ascrp_clear
Aev_GetAccImg_18:
[00055812] 42b9 000d 4892            clr.l      GetXAccData
[00055818] 33fc ffff 000d 4896       move.w     #$FFFF,GetXAccID
[00055820] 6016                      bra.s      Aev_GetAccImg_19
Aev_GetAccImg_17:
[00055822] 23fc 0049 4d47 000d 4892  move.l     #$00494D47,GetXAccData
[0005582c] 206f 000c                 movea.l    12(a7),a0
[00055830] 33e8 0002 000d 4896       move.w     2(a0),GetXAccID
Aev_GetAccImg_19:
[00055838] 7001                      moveq.l    #1,d0
Aev_GetAccImg_4:
[0005583a] 4fef 0014                 lea.l      20(a7),a7
[0005583e] 245f                      movea.l    (a7)+,a2
[00055840] 4e75                      rts

Aev_GetAccMeta:
[00055842] 2f0a                      move.l     a2,-(a7)
[00055844] 4fef ffec                 lea.l      -20(a7),a7
[00055848] 2f48 0010                 move.l     a0,16(a7)
[0005584c] 206f 0010                 movea.l    16(a7),a0
[00055850] 2f50 000c                 move.l     (a0),12(a7)
[00055854] 3f7c 0001 000a            move.w     #$0001,10(a7)
[0005585a] 206f 000c                 movea.l    12(a7),a0
[0005585e] 0c68 0001 0006            cmpi.w     #$0001,6(a0)
[00055864] 6604                      bne.s      Aev_GetAccMeta_1
[00055866] 7001                      moveq.l    #1,d0
[00055868] 6002                      bra.s      Aev_GetAccMeta_2
Aev_GetAccMeta_1:
[0005586a] 4240                      clr.w      d0
Aev_GetAccMeta_2:
[0005586c] 3f40 0008                 move.w     d0,8(a7)
[00055870] 206f 000c                 movea.l    12(a7),a0
[00055874] 3028 0002                 move.w     2(a0),d0
[00055878] 6100 f992                 bsr        Aev_CheckXAccPart
[0005587c] 2008                      move.l     a0,d0
[0005587e] 6606                      bne.s      Aev_GetAccMeta_3
[00055880] 7001                      moveq.l    #1,d0
[00055882] 6000 01da                 bra        Aev_GetAccMeta_4
Aev_GetAccMeta_3:
[00055886] 2039 000d 4892            move.l     GetXAccData,d0
[0005588c] 670c                      beq.s      Aev_GetAccMeta_5
[0005588e] 0cb9 0047 454d 000d 4892  cmpi.l     #$0047454D,GetXAccData
[00055898] 6618                      bne.s      Aev_GetAccMeta_6
Aev_GetAccMeta_5:
[0005589a] 3039 000d 4896            move.w     GetXAccID,d0
[000558a0] 6b26                      bmi.s      Aev_GetAccMeta_7
[000558a2] 206f 000c                 movea.l    12(a7),a0
[000558a6] 3039 000d 4896            move.w     GetXAccID,d0
[000558ac] b068 0002                 cmp.w      2(a0),d0
[000558b0] 6716                      beq.s      Aev_GetAccMeta_7
Aev_GetAccMeta_6:
[000558b2] 4241                      clr.w      d1
[000558b4] 206f 000c                 movea.l    12(a7),a0
[000558b8] 3028 0002                 move.w     2(a0),d0
[000558bc] 4eb9 0005 5c74            jsr        Aev_AccAck
[000558c2] 7001                      moveq.l    #1,d0
[000558c4] 6000 0198                 bra        Aev_GetAccMeta_4
Aev_GetAccMeta_7:
[000558c8] 206f 000c                 movea.l    12(a7),a0
[000558cc] 3028 0008                 move.w     8(a0),d0
[000558d0] 48c0                      ext.l      d0
[000558d2] 7210                      moveq.l    #16,d1
[000558d4] e3a8                      lsl.l      d1,d0
[000558d6] 206f 000c                 movea.l    12(a7),a0
[000558da] 3228 000a                 move.w     10(a0),d1
[000558de] 48c1                      ext.l      d1
[000558e0] 8081                      or.l       d1,d0
[000558e2] 2e80                      move.l     d0,(a7)
[000558e4] 206f 000c                 movea.l    12(a7),a0
[000558e8] 3028 000c                 move.w     12(a0),d0
[000558ec] 48c0                      ext.l      d0
[000558ee] 7210                      moveq.l    #16,d1
[000558f0] e3a8                      lsl.l      d1,d0
[000558f2] 206f 000c                 movea.l    12(a7),a0
[000558f6] 3228 000e                 move.w     14(a0),d1
[000558fa] 48c1                      ext.l      d1
[000558fc] 8081                      or.l       d1,d0
[000558fe] 2f40 0004                 move.l     d0,4(a7)
[00055902] 4241                      clr.w      d1
[00055904] 202f 0004                 move.l     4(a7),d0
[00055908] 2057                      movea.l    (a7),a0
[0005590a] 4eb9 0004 7ff8            jsr        Ax_memCheck
[00055910] 3f40 000a                 move.w     d0,10(a7)
[00055914] 302f 0008                 move.w     8(a7),d0
[00055918] 6700 0082                 beq        Aev_GetAccMeta_8
[0005591c] 302f 000a                 move.w     10(a7),d0
[00055920] 6700 007a                 beq.w      Aev_GetAccMeta_8
[00055924] 0cb9 0047 454d 000d 4892  cmpi.l     #$0047454D,GetXAccData
[0005592e] 6648                      bne.s      Aev_GetAccMeta_9
[00055930] 206f 000c                 movea.l    12(a7),a0
[00055934] 3039 000d 4896            move.w     GetXAccID,d0
[0005593a] b068 0002                 cmp.w      2(a0),d0
[0005593e] 6638                      bne.s      Aev_GetAccMeta_9
[00055940] 7201                      moveq.l    #1,d1
[00055942] 202f 0004                 move.l     4(a7),d0
[00055946] 2257                      movea.l    (a7),a1
[00055948] 41f9 000d 49c0            lea.l      $000D49C0,a0
[0005594e] 4eb9 0005 fd30            jsr        Ascrp_put
[00055954] 3f40 000a                 move.w     d0,10(a7)
[00055958] 302f 000a                 move.w     10(a7),d0
[0005595c] 671a                      beq.s      Aev_GetAccMeta_9
[0005595e] 486f 0004                 pea.l      4(a7)
[00055962] 43ef 0004                 lea.l      4(a7),a1
[00055966] 41f9 000d 49c4            lea.l      $000D49C4,a0
[0005596c] 4eb9 0005 fbba            jsr        Ascrp_get
[00055972] 584f                      addq.w     #4,a7
[00055974] 3f40 000a                 move.w     d0,10(a7)
Aev_GetAccMeta_9:
[00055978] 43f9 000d 49c8            lea.l      $000D49C8,a1
[0005597e] 701d                      moveq.l    #29,d0
[00055980] 206f 0010                 movea.l    16(a7),a0
[00055984] 2068 000c                 movea.l    12(a0),a0
[00055988] 246f 0010                 movea.l    16(a7),a2
[0005598c] 246a 000c                 movea.l    12(a2),a2
[00055990] 246a 0004                 movea.l    4(a2),a2
[00055994] 4e92                      jsr        (a2)
[00055996] 3f40 000a                 move.w     d0,10(a7)
[0005599a] 606a                      bra.s      Aev_GetAccMeta_10
Aev_GetAccMeta_8:
[0005599c] 302f 000a                 move.w     10(a7),d0
[000559a0] 6742                      beq.s      Aev_GetAccMeta_11
[000559a2] 0cb9 0047 454d 000d 4892  cmpi.l     #$0047454D,GetXAccData
[000559ac] 6610                      bne.s      Aev_GetAccMeta_12
[000559ae] 206f 000c                 movea.l    12(a7),a0
[000559b2] 3039 000d 4896            move.w     GetXAccID,d0
[000559b8] b068 0002                 cmp.w      2(a0),d0
[000559bc] 670c                      beq.s      Aev_GetAccMeta_13
Aev_GetAccMeta_12:
[000559be] 41f9 000d 49cc            lea.l      $000D49CC,a0
[000559c4] 4eb9 0005 faca            jsr        Ascrp_clear
Aev_GetAccMeta_13:
[000559ca] 7201                      moveq.l    #1,d1
[000559cc] 202f 0004                 move.l     4(a7),d0
[000559d0] 2257                      movea.l    (a7),a1
[000559d2] 41f9 000d 49d0            lea.l      $000D49D0,a0
[000559d8] 4eb9 0005 fd30            jsr        Ascrp_put
[000559de] 3f40 000a                 move.w     d0,10(a7)
[000559e2] 6022                      bra.s      Aev_GetAccMeta_10
Aev_GetAccMeta_11:
[000559e4] 2079 0010 1f12            movea.l    ACSblk,a0
[000559ea] 2068 023c                 movea.l    572(a0),a0
[000559ee] 3028 000e                 move.w     14(a0),d0
[000559f2] c07c 0400                 and.w      #$0400,d0
[000559f6] 670e                      beq.s      Aev_GetAccMeta_10
[000559f8] 41f9 000d 49d4            lea.l      $000D49D4,a0
[000559fe] 7001                      moveq.l    #1,d0
[00055a00] 4eb9 0005 17fe            jsr        Awi_alert
Aev_GetAccMeta_10:
[00055a06] 322f 000a                 move.w     10(a7),d1
[00055a0a] 206f 000c                 movea.l    12(a7),a0
[00055a0e] 3028 0002                 move.w     2(a0),d0
[00055a12] 4eb9 0005 5c74            jsr        Aev_AccAck
[00055a18] 302f 0008                 move.w     8(a7),d0
[00055a1c] 6606                      bne.s      Aev_GetAccMeta_14
[00055a1e] 302f 000a                 move.w     10(a7),d0
[00055a22] 6622                      bne.s      Aev_GetAccMeta_15
Aev_GetAccMeta_14:
[00055a24] 302f 0008                 move.w     8(a7),d0
[00055a28] 660c                      bne.s      Aev_GetAccMeta_16
[00055a2a] 41f9 000d 4a38            lea.l      $000D4A38,a0
[00055a30] 4eb9 0005 faca            jsr        Ascrp_clear
Aev_GetAccMeta_16:
[00055a36] 42b9 000d 4892            clr.l      GetXAccData
[00055a3c] 33fc ffff 000d 4896       move.w     #$FFFF,GetXAccID
[00055a44] 6016                      bra.s      Aev_GetAccMeta_17
Aev_GetAccMeta_15:
[00055a46] 23fc 0047 454d 000d 4892  move.l     #$0047454D,GetXAccData
[00055a50] 206f 000c                 movea.l    12(a7),a0
[00055a54] 33e8 0002 000d 4896       move.w     2(a0),GetXAccID
Aev_GetAccMeta_17:
[00055a5c] 7001                      moveq.l    #1,d0
Aev_GetAccMeta_4:
[00055a5e] 4fef 0014                 lea.l      20(a7),a7
[00055a62] 245f                      movea.l    (a7)+,a2
[00055a64] 4e75                      rts

Aev_AccID:
[00055a66] 4fef ffe8                 lea.l      -24(a7),a7
[00055a6a] 3f40 0016                 move.w     d0,22(a7)
[00055a6e] 2f48 0012                 move.l     a0,18(a7)
[00055a72] 3f41 0010                 move.w     d1,16(a7)
[00055a76] 41f9 000d 4898            lea.l      $000D4898,a0
[00055a7c] 43d7                      lea.l      (a7),a1
[00055a7e] 700f                      moveq.l    #15,d0
Aev_AccID_1:
[00055a80] 12d8                      move.b     (a0)+,(a1)+
[00055a82] 51c8 fffc                 dbf        d0,Aev_AccID_1
[00055a86] 2079 0010 1f12            movea.l    ACSblk,a0
[00055a8c] 302f 0016                 move.w     22(a7),d0
[00055a90] b050                      cmp.w      (a0),d0
[00055a92] 6766                      beq.s      Aev_AccID_2
[00055a94] 3ebc 0400                 move.w     #$0400,(a7)
[00055a98] 2079 0010 1f12            movea.l    ACSblk,a0
[00055a9e] 3f50 0002                 move.w     (a0),2(a7)
[00055aa2] 3f7c 0003 0006            move.w     #$0003,6(a7)
[00055aa8] 2079 0010 1f12            movea.l    ACSblk,a0
[00055aae] 3f68 03da 000c            move.w     986(a0),12(a7)
[00055ab4] 3f7c ffff 000e            move.w     #$FFFF,14(a7)
[00055aba] 2079 0010 1f12            movea.l    ACSblk,a0
[00055ac0] 2f68 04e6 0008            move.l     1254(a0),8(a7)
[00055ac6] 302f 0016                 move.w     22(a7),d0
[00055aca] 6b1a                      bmi.s      Aev_AccID_3
[00055acc] 342f 0010                 move.w     16(a7),d2
[00055ad0] 226f 0012                 movea.l    18(a7),a1
[00055ad4] 41d7                      lea.l      (a7),a0
[00055ad6] 7202                      moveq.l    #2,d1
[00055ad8] 302f 0016                 move.w     22(a7),d0
[00055adc] 4eb9 0005 3dfa            jsr        Aev_SendMsg
[00055ae2] 6018                      bra.s      Aev_AccID_4
[00055ae4] 6014                      bra.s      Aev_AccID_2
Aev_AccID_3:
[00055ae6] 322f 0010                 move.w     16(a7),d1
[00055aea] 226f 0012                 movea.l    18(a7),a1
[00055aee] 7002                      moveq.l    #2,d0
[00055af0] 41d7                      lea.l      (a7),a0
[00055af2] 4eb9 0005 3f3e            jsr        Aev_SendAllMsg
[00055af8] 6002                      bra.s      Aev_AccID_4
Aev_AccID_2:
[00055afa] 4240                      clr.w      d0
Aev_AccID_4:
[00055afc] 4fef 0018                 lea.l      24(a7),a7
[00055b00] 4e75                      rts

Aev_AccAcc:
[00055b02] 4fef ffe4                 lea.l      -28(a7),a7
[00055b06] 3f40 001a                 move.w     d0,26(a7)
[00055b0a] 2f48 0016                 move.l     a0,22(a7)
[00055b0e] 2f49 0012                 move.l     a1,18(a7)
[00055b12] 3f41 0010                 move.w     d1,16(a7)
[00055b16] 41f9 000d 48a8            lea.l      $000D48A8,a0
[00055b1c] 43d7                      lea.l      (a7),a1
[00055b1e] 700f                      moveq.l    #15,d0
Aev_AccAcc_1:
[00055b20] 12d8                      move.b     (a0)+,(a1)+
[00055b22] 51c8 fffc                 dbf        d0,Aev_AccAcc_1
[00055b26] 2079 0010 1f12            movea.l    ACSblk,a0
[00055b2c] 302f 001a                 move.w     26(a7),d0
[00055b30] b050                      cmp.w      (a0),d0
[00055b32] 6700 00ac                 beq        Aev_AccAcc_2
[00055b36] 3ebc 0403                 move.w     #$0403,(a7)
[00055b3a] 2079 0010 1f12            movea.l    ACSblk,a0
[00055b40] 3f50 0002                 move.w     (a0),2(a7)
[00055b44] 426f 0004                 clr.w      4(a7)
[00055b48] 2079 0010 1f12            movea.l    ACSblk,a0
[00055b4e] 3028 0238                 move.w     568(a0),d0
[00055b52] 6726                      beq.s      Aev_AccAcc_3
[00055b54] 3f7c 0003 0006            move.w     #$0003,6(a7)
[00055b5a] 2079 0010 1f12            movea.l    ACSblk,a0
[00055b60] 3f68 03da 000c            move.w     986(a0),12(a7)
[00055b66] 3f7c ffff 000e            move.w     #$FFFF,14(a7)
[00055b6c] 2079 0010 1f12            movea.l    ACSblk,a0
[00055b72] 2f68 04e6 0008            move.l     1254(a0),8(a7)
[00055b78] 6032                      bra.s      Aev_AccAcc_4
Aev_AccAcc_3:
[00055b7a] 206f 0016                 movea.l    22(a7),a0
[00055b7e] 3f68 0006 0006            move.w     6(a0),6(a7)
[00055b84] 206f 0016                 movea.l    22(a7),a0
[00055b88] 3f68 0008 0008            move.w     8(a0),8(a7)
[00055b8e] 206f 0016                 movea.l    22(a7),a0
[00055b92] 3f68 000a 000a            move.w     10(a0),10(a7)
[00055b98] 206f 0016                 movea.l    22(a7),a0
[00055b9c] 3f68 000c 000c            move.w     12(a0),12(a7)
[00055ba2] 206f 0016                 movea.l    22(a7),a0
[00055ba6] 3f68 0002 000e            move.w     2(a0),14(a7)
Aev_AccAcc_4:
[00055bac] 302f 001a                 move.w     26(a7),d0
[00055bb0] 6b1a                      bmi.s      Aev_AccAcc_5
[00055bb2] 342f 0010                 move.w     16(a7),d2
[00055bb6] 226f 0012                 movea.l    18(a7),a1
[00055bba] 41d7                      lea.l      (a7),a0
[00055bbc] 7202                      moveq.l    #2,d1
[00055bbe] 302f 001a                 move.w     26(a7),d0
[00055bc2] 4eb9 0005 3dfa            jsr        Aev_SendMsg
[00055bc8] 6018                      bra.s      Aev_AccAcc_6
[00055bca] 6014                      bra.s      Aev_AccAcc_2
Aev_AccAcc_5:
[00055bcc] 322f 0010                 move.w     16(a7),d1
[00055bd0] 226f 0012                 movea.l    18(a7),a1
[00055bd4] 7002                      moveq.l    #2,d0
[00055bd6] 41d7                      lea.l      (a7),a0
[00055bd8] 4eb9 0005 3f3e            jsr        Aev_SendAllMsg
[00055bde] 6002                      bra.s      Aev_AccAcc_6
Aev_AccAcc_2:
[00055be0] 4240                      clr.w      d0
Aev_AccAcc_6:
[00055be2] 4fef 001c                 lea.l      28(a7),a7
[00055be6] 4e75                      rts

Aev_AccExit:
[00055be8] 4fef ffe8                 lea.l      -24(a7),a7
[00055bec] 3f40 0016                 move.w     d0,22(a7)
[00055bf0] 2f48 0012                 move.l     a0,18(a7)
[00055bf4] 3f41 0010                 move.w     d1,16(a7)
[00055bf8] 41f9 000d 48b8            lea.l      $000D48B8,a0
[00055bfe] 43d7                      lea.l      (a7),a1
[00055c00] 700f                      moveq.l    #15,d0
Aev_AccExit_1:
[00055c02] 12d8                      move.b     (a0)+,(a1)+
[00055c04] 51c8 fffc                 dbf        d0,Aev_AccExit_1
[00055c08] 2079 0010 1f12            movea.l    ACSblk,a0
[00055c0e] 302f 0016                 move.w     22(a7),d0
[00055c12] b050                      cmp.w      (a0),d0
[00055c14] 6756                      beq.s      Aev_AccExit_2
[00055c16] 3ebc 0404                 move.w     #$0404,(a7)
[00055c1a] 2079 0010 1f12            movea.l    ACSblk,a0
[00055c20] 3f50 0002                 move.w     (a0),2(a7)
[00055c24] 426f 0006                 clr.w      6(a7)
[00055c28] 426f 0008                 clr.w      8(a7)
[00055c2c] 426f 000a                 clr.w      10(a7)
[00055c30] 426f 000c                 clr.w      12(a7)
[00055c34] 426f 000e                 clr.w      14(a7)
[00055c38] 302f 0016                 move.w     22(a7),d0
[00055c3c] 6b1a                      bmi.s      Aev_AccExit_3
[00055c3e] 342f 0010                 move.w     16(a7),d2
[00055c42] 226f 0012                 movea.l    18(a7),a1
[00055c46] 41d7                      lea.l      (a7),a0
[00055c48] 7202                      moveq.l    #2,d1
[00055c4a] 302f 0016                 move.w     22(a7),d0
[00055c4e] 4eb9 0005 3dfa            jsr        Aev_SendMsg
[00055c54] 6018                      bra.s      Aev_AccExit_4
[00055c56] 6014                      bra.s      Aev_AccExit_2
Aev_AccExit_3:
[00055c58] 322f 0010                 move.w     16(a7),d1
[00055c5c] 226f 0012                 movea.l    18(a7),a1
[00055c60] 7002                      moveq.l    #2,d0
[00055c62] 41d7                      lea.l      (a7),a0
[00055c64] 4eb9 0005 3f3e            jsr        Aev_SendAllMsg
[00055c6a] 6002                      bra.s      Aev_AccExit_4
Aev_AccExit_2:
[00055c6c] 4240                      clr.w      d0
Aev_AccExit_4:
[00055c6e] 4fef 0018                 lea.l      24(a7),a7
[00055c72] 4e75                      rts

Aev_AccAck:
[00055c74] 4fef ffec                 lea.l      -20(a7),a7
[00055c78] 3f40 0012                 move.w     d0,18(a7)
[00055c7c] 3f41 0010                 move.w     d1,16(a7)
[00055c80] 41f9 000d 48c8            lea.l      $000D48C8,a0
[00055c86] 43d7                      lea.l      (a7),a1
[00055c88] 700f                      moveq.l    #15,d0
Aev_AccAck_1:
[00055c8a] 12d8                      move.b     (a0)+,(a1)+
[00055c8c] 51c8 fffc                 dbf        d0,Aev_AccAck_1
[00055c90] 2079 0010 1f12            movea.l    ACSblk,a0
[00055c96] 302f 0012                 move.w     18(a7),d0
[00055c9a] b050                      cmp.w      (a0),d0
[00055c9c] 6756                      beq.s      Aev_AccAck_2
[00055c9e] 7210                      moveq.l    #16,d1
[00055ca0] 4240                      clr.w      d0
[00055ca2] 41d7                      lea.l      (a7),a0
[00055ca4] 4eb9 0007 712e            jsr        memset
[00055caa] 3ebc 0500                 move.w     #$0500,(a7)
[00055cae] 2079 0010 1f12            movea.l    ACSblk,a0
[00055cb4] 3f50 0002                 move.w     (a0),2(a7)
[00055cb8] 302f 0010                 move.w     16(a7),d0
[00055cbc] 6704                      beq.s      Aev_AccAck_3
[00055cbe] 7001                      moveq.l    #1,d0
[00055cc0] 6002                      bra.s      Aev_AccAck_4
Aev_AccAck_3:
[00055cc2] 4240                      clr.w      d0
Aev_AccAck_4:
[00055cc4] 3f40 0006                 move.w     d0,6(a7)
[00055cc8] 302f 0012                 move.w     18(a7),d0
[00055ccc] 6b16                      bmi.s      Aev_AccAck_5
[00055cce] 74ff                      moveq.l    #-1,d2
[00055cd0] 93c9                      suba.l     a1,a1
[00055cd2] 41d7                      lea.l      (a7),a0
[00055cd4] 7202                      moveq.l    #2,d1
[00055cd6] 302f 0012                 move.w     18(a7),d0
[00055cda] 4eb9 0005 3dfa            jsr        Aev_SendMsg
[00055ce0] 6014                      bra.s      Aev_AccAck_6
[00055ce2] 6010                      bra.s      Aev_AccAck_2
Aev_AccAck_5:
[00055ce4] 72ff                      moveq.l    #-1,d1
[00055ce6] 93c9                      suba.l     a1,a1
[00055ce8] 7002                      moveq.l    #2,d0
[00055cea] 41d7                      lea.l      (a7),a0
[00055cec] 4eb9 0005 3f3e            jsr        Aev_SendAllMsg
[00055cf2] 6002                      bra.s      Aev_AccAck_6
Aev_AccAck_2:
[00055cf4] 4240                      clr.w      d0
Aev_AccAck_6:
[00055cf6] 4fef 0014                 lea.l      20(a7),a7
[00055cfa] 4e75                      rts

		.data

GetXAccData:
[000d4892]                           dc.b $00
[000d4893]                           dc.b $00
[000d4894]                           dc.b $00
[000d4895]                           dc.b $00
GetXAccID:
[000d4896]                           dc.w $ffff
[000d4898]                           dc.b $00
[000d4899]                           dc.b $00
[000d489a]                           dc.b $00
[000d489b]                           dc.b $00
[000d489c]                           dc.b $00
[000d489d]                           dc.b $00
[000d489e]                           dc.b $00
[000d489f]                           dc.b $00
[000d48a0]                           dc.b $00
[000d48a1]                           dc.b $00
[000d48a2]                           dc.b $00
[000d48a3]                           dc.b $00
[000d48a4]                           dc.b $00
[000d48a5]                           dc.b $00
[000d48a6]                           dc.b $00
[000d48a7]                           dc.b $00
[000d48a8]                           dc.b $00
[000d48a9]                           dc.b $00
[000d48aa]                           dc.b $00
[000d48ab]                           dc.b $00
[000d48ac]                           dc.b $00
[000d48ad]                           dc.b $00
[000d48ae]                           dc.b $00
[000d48af]                           dc.b $00
[000d48b0]                           dc.b $00
[000d48b1]                           dc.b $00
[000d48b2]                           dc.b $00
[000d48b3]                           dc.b $00
[000d48b4]                           dc.b $00
[000d48b5]                           dc.b $00
[000d48b6]                           dc.b $00
[000d48b7]                           dc.b $00
[000d48b8]                           dc.b $00
[000d48b9]                           dc.b $00
[000d48ba]                           dc.b $00
[000d48bb]                           dc.b $00
[000d48bc]                           dc.b $00
[000d48bd]                           dc.b $00
[000d48be]                           dc.b $00
[000d48bf]                           dc.b $00
[000d48c0]                           dc.b $00
[000d48c1]                           dc.b $00
[000d48c2]                           dc.b $00
[000d48c3]                           dc.b $00
[000d48c4]                           dc.b $00
[000d48c5]                           dc.b $00
[000d48c6]                           dc.b $00
[000d48c7]                           dc.b $00
[000d48c8]                           dc.b $00
[000d48c9]                           dc.b $00
[000d48ca]                           dc.b $00
[000d48cb]                           dc.b $00
[000d48cc]                           dc.b $00
[000d48cd]                           dc.b $00
[000d48ce]                           dc.b $00
[000d48cf]                           dc.b $00
[000d48d0]                           dc.b $00
[000d48d1]                           dc.b $00
[000d48d2]                           dc.b $00
[000d48d3]                           dc.b $00
[000d48d4]                           dc.b $00
[000d48d5]                           dc.b $00
[000d48d6]                           dc.b $00
[000d48d7]                           dc.b $00
xd48d8:
[000d48d8]                           dc.b 'XAccTxt',0
xd48e0:
[000d48e0]                           dc.b '[4][Bei einem XAcc-Transfer|konnte auf den Speicher|nicht zugegriffen|werden (Speicherschutz)!][OK]',0
xd4944:
[000d4944]                           dc.b 'img',0
xd4948:
[000d4948]                           dc.b 'img',0
xd494c:
[000d494c]                           dc.b 'IMG',0
xd4950:
[000d4950]                           dc.b 'img',0
xd4954:
[000d4954]                           dc.b 'img',0
xd4958:
[000d4958]                           dc.b '[4][Bei einem XAcc-Transfer|konnte auf den Speicher|nicht zugegriffen|werden (Speicherschutz)!][OK]',0
xd49bc:
[000d49bc]                           dc.b 'img',0
xd49c0:
[000d49c0]                           dc.b 'gem',0
xd49c4:
[000d49c4]                           dc.b 'gem',0
xd49c8:
[000d49c8]                           dc.b 'gem',0
xd49cc:
[000d49cc]                           dc.b 'gem',0
xd49d0:
[000d49d0]                           dc.b 'gem',0
xd49d4:
[000d49d4]                           dc.b '[4][Bei einem XAcc-Transfer|konnte auf den Speicher|nicht zugegriffen|werden (Speicherschutz)!][OK]',0
xd4a38:
[000d4a38]                           dc.b 'gem',0
	.even
