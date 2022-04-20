
Aev_InitDHST:
[0005675a] 7001                      moveq.l    #1,d0
[0005675c] 4e75                      rts

Aev_ExitDHST:
[0005675e] 7001                      moveq.l    #1,d0
[00056760] 4e75                      rts

freeDhstInfo:
[00056762] 2f0a                      move.l     a2,-(a7)
[00056764] 594f                      subq.w     #4,a7
[00056766] 2e88                      move.l     a0,(a7)
[00056768] 2057                      movea.l    (a7),a0
[0005676a] 2010                      move.l     (a0),d0
[0005676c] 6720                      beq.s      freeDhstInfo_1
[0005676e] 4879 0006 2c64            pea.l      Alu_ptrCmp
[00056774] 206f 0004                 movea.l    4(a7),a0
[00056778] 2250                      movea.l    (a0),a1
[0005677a] 2079 000d 450e            movea.l    globProtData,a0
[00056780] 2479 000d 450e            movea.l    globProtData,a2
[00056786] 246a 0018                 movea.l    24(a2),a2
[0005678a] 4e92                      jsr        (a2)
[0005678c] 584f                      addq.w     #4,a7
freeDhstInfo_1:
[0005678e] 2057                      movea.l    (a7),a0
[00056790] 2028 0004                 move.l     4(a0),d0
[00056794] 6722                      beq.s      freeDhstInfo_2
[00056796] 4879 0006 2c64            pea.l      Alu_ptrCmp
[0005679c] 206f 0004                 movea.l    4(a7),a0
[000567a0] 2268 0004                 movea.l    4(a0),a1
[000567a4] 2079 000d 450e            movea.l    globProtData,a0
[000567aa] 2479 000d 450e            movea.l    globProtData,a2
[000567b0] 246a 0018                 movea.l    24(a2),a2
[000567b4] 4e92                      jsr        (a2)
[000567b6] 584f                      addq.w     #4,a7
freeDhstInfo_2:
[000567b8] 2057                      movea.l    (a7),a0
[000567ba] 2028 0008                 move.l     8(a0),d0
[000567be] 6722                      beq.s      freeDhstInfo_3
[000567c0] 4879 0006 2c64            pea.l      Alu_ptrCmp
[000567c6] 206f 0004                 movea.l    4(a7),a0
[000567ca] 2268 0008                 movea.l    8(a0),a1
[000567ce] 2079 000d 450e            movea.l    globProtData,a0
[000567d4] 2479 000d 450e            movea.l    globProtData,a2
[000567da] 246a 0018                 movea.l    24(a2),a2
[000567de] 4e92                      jsr        (a2)
[000567e0] 584f                      addq.w     #4,a7
freeDhstInfo_3:
[000567e2] 2057                      movea.l    (a7),a0
[000567e4] 2028 000c                 move.l     12(a0),d0
[000567e8] 6722                      beq.s      freeDhstInfo_4
[000567ea] 4879 0006 2c64            pea.l      Alu_ptrCmp
[000567f0] 206f 0004                 movea.l    4(a7),a0
[000567f4] 2268 000c                 movea.l    12(a0),a1
[000567f8] 2079 000d 450e            movea.l    globProtData,a0
[000567fe] 2479 000d 450e            movea.l    globProtData,a2
[00056804] 246a 0018                 movea.l    24(a2),a2
[00056808] 4e92                      jsr        (a2)
[0005680a] 584f                      addq.w     #4,a7
freeDhstInfo_4:
[0005680c] 4879 0006 2c64            pea.l      Alu_ptrCmp
[00056812] 226f 0004                 movea.l    4(a7),a1
[00056816] 2079 000d 450e            movea.l    globProtData,a0
[0005681c] 2479 000d 450e            movea.l    globProtData,a2
[00056822] 246a 0018                 movea.l    24(a2),a2
[00056826] 4e92                      jsr        (a2)
[00056828] 584f                      addq.w     #4,a7
[0005682a] 584f                      addq.w     #4,a7
[0005682c] 245f                      movea.l    (a7)+,a2
[0005682e] 4e75                      rts

Aev_GetDhstAdd:
[00056830] 7001                      moveq.l    #1,d0
[00056832] 4e75                      rts

Aev_GetDhstAck:
[00056834] 2f0a                      move.l     a2,-(a7)
[00056836] 4fef ffca                 lea.l      -54(a7),a7
[0005683a] 2f48 0032                 move.l     a0,50(a7)
[0005683e] 3f7c dadd 0008            move.w     #$DADD,8(a7)
[00056844] 206f 0032                 movea.l    50(a7),a0
[00056848] 2f50 0004                 move.l     (a0),4(a7)
[0005684c] 206f 0004                 movea.l    4(a7),a0
[00056850] 2ea8 0006                 move.l     6(a0),(a7)
[00056854] 2057                      movea.l    (a7),a0
[00056856] 6100 ff0a                 bsr        freeDhstInfo
[0005685a] 206f 0004                 movea.l    4(a7),a0
[0005685e] 3f68 0002 000e            move.w     2(a0),14(a7)
[00056864] 3f7c 0003 0010            move.w     #$0003,16(a7)
[0005686a] 41ef 0008                 lea.l      8(a7),a0
[0005686e] 2f48 0012                 move.l     a0,18(a7)
[00056872] 42af 0016                 clr.l      22(a7)
[00056876] 42af 001a                 clr.l      26(a7)
[0005687a] 206f 0004                 movea.l    4(a7),a0
[0005687e] 5c48                      addq.w     #6,a0
[00056880] 2f48 001e                 move.l     a0,30(a7)
[00056884] 206f 0004                 movea.l    4(a7),a0
[00056888] 5048                      addq.w     #8,a0
[0005688a] 2f48 0022                 move.l     a0,34(a7)
[0005688e] 42af 0026                 clr.l      38(a7)
[00056892] 42af 002a                 clr.l      42(a7)
[00056896] 42af 002e                 clr.l      46(a7)
[0005689a] 4879 0005 3d76            pea.l      Aev_CmpMsgInList
[000568a0] 43ef 0012                 lea.l      18(a7),a1
[000568a4] 2079 000d 2c50            movea.l    SentMsg,a0
[000568aa] 2479 000d 2c50            movea.l    SentMsg,a2
[000568b0] 246a 0020                 movea.l    32(a2),a2
[000568b4] 4e92                      jsr        (a2)
[000568b6] 584f                      addq.w     #4,a7
[000568b8] 2f48 000a                 move.l     a0,10(a7)
[000568bc] 202f 000a                 move.l     10(a7),d0
[000568c0] 671e                      beq.s      Aev_GetDhstAck_1
[000568c2] 4879 0006 2c64            pea.l      Alu_ptrCmp
[000568c8] 226f 000e                 movea.l    14(a7),a1
[000568cc] 2079 000d 2c50            movea.l    SentMsg,a0
[000568d2] 2479 000d 2c50            movea.l    SentMsg,a2
[000568d8] 246a 0020                 movea.l    32(a2),a2
[000568dc] 4e92                      jsr        (a2)
[000568de] 584f                      addq.w     #4,a7
Aev_GetDhstAck_1:
[000568e0] 7001                      moveq.l    #1,d0
[000568e2] 4fef 0036                 lea.l      54(a7),a7
[000568e6] 245f                      movea.l    (a7)+,a2
[000568e8] 4e75                      rts

Aev_DhstAdd:
[000568ea] 2f0a                      move.l     a2,-(a7)
[000568ec] 4fef ffde                 lea.l      -34(a7),a7
[000568f0] 2f48 001e                 move.l     a0,30(a7)
[000568f4] 2f49 001a                 move.l     a1,26(a7)
[000568f8] 41d7                      lea.l      (a7),a0
[000568fa] 203c 4448 5354            move.l     #$44485354,d0
[00056900] 4eb9 0007 2bf4            jsr        Ash_getcookie
[00056906] 4a40                      tst.w      d0
[00056908] 670c                      beq.s      Aev_DhstAdd_1
[0005690a] 70ff                      moveq.l    #-1,d0
[0005690c] c06f 0002                 and.w      2(a7),d0
[00056910] 3f40 0014                 move.w     d0,20(a7)
[00056914] 6a06                      bpl.s      Aev_DhstAdd_2
Aev_DhstAdd_1:
[00056916] 4240                      clr.w      d0
[00056918] 6000 0144                 bra        Aev_DhstAdd_3
Aev_DhstAdd_2:
[0005691c] 7010                      moveq.l    #16,d0
[0005691e] 4eb9 0004 7f44            jsr        Ax_glmalloc
[00056924] 2f48 0016                 move.l     a0,22(a7)
[00056928] 202f 0016                 move.l     22(a7),d0
[0005692c] 6606                      bne.s      Aev_DhstAdd_4
[0005692e] 4240                      clr.w      d0
[00056930] 6000 012c                 bra        Aev_DhstAdd_3
Aev_DhstAdd_4:
[00056934] 7204                      moveq.l    #4,d1
[00056936] 4240                      clr.w      d0
[00056938] 206f 0016                 movea.l    22(a7),a0
[0005693c] 4eb9 0007 712e            jsr        memset
[00056942] 226f 0016                 movea.l    22(a7),a1
[00056946] 2079 000d 450e            movea.l    globProtData,a0
[0005694c] 2479 000d 450e            movea.l    globProtData,a2
[00056952] 246a 000c                 movea.l    12(a2),a2
[00056956] 4e92                      jsr        (a2)
[00056958] 7001                      moveq.l    #1,d0
[0005695a] 2079 0010 1f12            movea.l    ACSblk,a0
[00056960] 2068 04e6                 movea.l    1254(a0),a0
[00056964] 4eb9 0004 41b4            jsr        Ast_copy
[0005696a] 4eb9 0004 383a            jsr        Ast_alltrim
[00056970] 226f 0016                 movea.l    22(a7),a1
[00056974] 2288                      move.l     a0,(a1)
[00056976] 7001                      moveq.l    #1,d0
[00056978] 2079 0010 1f12            movea.l    ACSblk,a0
[0005697e] 41e8 001e                 lea.l      30(a0),a0
[00056982] 4eb9 0004 41b4            jsr        Ast_copy
[00056988] 4eb9 0004 383a            jsr        Ast_alltrim
[0005698e] 226f 0016                 movea.l    22(a7),a1
[00056992] 2348 0004                 move.l     a0,4(a1)
[00056996] 7001                      moveq.l    #1,d0
[00056998] 206f 001e                 movea.l    30(a7),a0
[0005699c] 4eb9 0004 41b4            jsr        Ast_copy
[000569a2] 226f 0016                 movea.l    22(a7),a1
[000569a6] 2348 0008                 move.l     a0,8(a1)
[000569aa] 7001                      moveq.l    #1,d0
[000569ac] 206f 001a                 movea.l    26(a7),a0
[000569b0] 4eb9 0004 41b4            jsr        Ast_copy
[000569b6] 226f 0016                 movea.l    22(a7),a1
[000569ba] 2348 000c                 move.l     a0,12(a1)
[000569be] 206f 0016                 movea.l    22(a7),a0
[000569c2] 2250                      movea.l    (a0),a1
[000569c4] 2079 000d 450e            movea.l    globProtData,a0
[000569ca] 2479 000d 450e            movea.l    globProtData,a2
[000569d0] 246a 000c                 movea.l    12(a2),a2
[000569d4] 4e92                      jsr        (a2)
[000569d6] 206f 0016                 movea.l    22(a7),a0
[000569da] 2268 0004                 movea.l    4(a0),a1
[000569de] 2079 000d 450e            movea.l    globProtData,a0
[000569e4] 2479 000d 450e            movea.l    globProtData,a2
[000569ea] 246a 000c                 movea.l    12(a2),a2
[000569ee] 4e92                      jsr        (a2)
[000569f0] 206f 0016                 movea.l    22(a7),a0
[000569f4] 2268 0008                 movea.l    8(a0),a1
[000569f8] 2079 000d 450e            movea.l    globProtData,a0
[000569fe] 2479 000d 450e            movea.l    globProtData,a2
[00056a04] 246a 000c                 movea.l    12(a2),a2
[00056a08] 4e92                      jsr        (a2)
[00056a0a] 206f 0016                 movea.l    22(a7),a0
[00056a0e] 2268 000c                 movea.l    12(a0),a1
[00056a12] 2079 000d 450e            movea.l    globProtData,a0
[00056a18] 2479 000d 450e            movea.l    globProtData,a2
[00056a1e] 246a 000c                 movea.l    12(a2),a2
[00056a22] 4e92                      jsr        (a2)
[00056a24] 3f7c dadd 0004            move.w     #$DADD,4(a7)
[00056a2a] 2079 0010 1f12            movea.l    ACSblk,a0
[00056a30] 3f50 0006                 move.w     (a0),6(a7)
[00056a34] 426f 0008                 clr.w      8(a7)
[00056a38] 426f 000e                 clr.w      14(a7)
[00056a3c] 426f 0010                 clr.w      16(a7)
[00056a40] 426f 0012                 clr.w      18(a7)
[00056a44] 2f6f 0016 000a            move.l     22(a7),10(a7)
[00056a4a] 74ff                      moveq.l    #-1,d2
[00056a4c] 93c9                      suba.l     a1,a1
[00056a4e] 41ef 0004                 lea.l      4(a7),a0
[00056a52] 7203                      moveq.l    #3,d1
[00056a54] 302f 0014                 move.w     20(a7),d0
[00056a58] 4eb9 0005 3dfa            jsr        Aev_SendMsg
Aev_DhstAdd_3:
[00056a5e] 4fef 0022                 lea.l      34(a7),a7
[00056a62] 245f                      movea.l    (a7)+,a2
[00056a64] 4e75                      rts

Aev_DhstSaved:
[00056a66] 4fef fff6                 lea.l      -10(a7),a7
[00056a6a] 2f48 0006                 move.l     a0,6(a7)
[00056a6e] 206f 0006                 movea.l    6(a7),a0
[00056a72] 4eb9 0007 69b0            jsr        strlen
[00056a78] 4eb9 0004 7cc8            jsr        Ax_malloc
[00056a7e] 2f48 0002                 move.l     a0,2(a7)
[00056a82] 202f 0002                 move.l     2(a7),d0
[00056a86] 6604                      bne.s      Aev_DhstSaved_1
[00056a88] 4240                      clr.w      d0
[00056a8a] 6024                      bra.s      Aev_DhstSaved_2
Aev_DhstSaved_1:
[00056a8c] 226f 0006                 movea.l    6(a7),a1
[00056a90] 206f 0002                 movea.l    2(a7),a0
[00056a94] 4eb9 0004 7246            jsr        Af_2fullname
[00056a9a] 226f 0006                 movea.l    6(a7),a1
[00056a9e] 6100 fe4a                 bsr        Aev_DhstAdd
[00056aa2] 3e80                      move.w     d0,(a7)
[00056aa4] 206f 0002                 movea.l    2(a7),a0
[00056aa8] 4eb9 0004 7e26            jsr        Ax_free
[00056aae] 3017                      move.w     (a7),d0
Aev_DhstSaved_2:
[00056ab0] 4fef 000a                 lea.l      10(a7),a7
[00056ab4] 4e75                      rts
