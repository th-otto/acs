
Aev_InitGEMScript:
[00056d64] 700c                      moveq.l    #12,d0
[00056d66] 4eb9 0004 7f44            jsr        Ax_glmalloc
[00056d6c] 23c8 000d 4b42            move.l     a0,gs_infodata
[00056d72] 2039 000d 4b42            move.l     gs_infodata,d0
[00056d78] 6604                      bne.s      Aev_InitGEMScript_1
[00056d7a] 4240                      clr.w      d0
[00056d7c] 4e75                      rts
Aev_InitGEMScript_1:
[00056d7e] 2079 000d 4b42            movea.l    gs_infodata,a0
[00056d84] 20bc 0000 000c            move.l     #$0000000C,(a0)
[00056d8a] 2079 000d 4b42            movea.l    gs_infodata,a0
[00056d90] 317c 0120 0004            move.w     #$0120,4(a0)
[00056d96] 2079 000d 4b42            movea.l    gs_infodata,a0
[00056d9c] 317c 0009 0006            move.w     #$0009,6(a0)
[00056da2] 2079 000d 4b42            movea.l    gs_infodata,a0
[00056da8] 42a8 0008                 clr.l      8(a0)
[00056dac] 4eb9 0006 2a5e            jsr        Alu_create
[00056db2] 23c8 000d 4b46            move.l     a0,gs_connect
[00056db8] 2039 000d 4b46            move.l     gs_connect,d0
[00056dbe] 6604                      bne.s      Aev_InitGEMScript_2
[00056dc0] 4240                      clr.w      d0
[00056dc2] 4e75                      rts
Aev_InitGEMScript_2:
[00056dc4] 2079 000d 4b46            movea.l    gs_connect,a0
[00056dca] 217c 0005 6ede 0004       move.l     #ClearConnect,4(a0)
[00056dd2] 7001                      moveq.l    #1,d0
[00056dd4] 4e75                      rts

Aev_ExitGEMScript:
[00056dd6] 2079 000d 4b46            movea.l    gs_connect,a0
[00056ddc] 4eb9 0006 2aa6            jsr        Alu_delete
[00056de2] 42b9 000d 4b46            clr.l      gs_connect
[00056de8] 2039 000d 4b42            move.l     gs_infodata,d0
[00056dee] 670c                      beq.s      Aev_ExitGEMScript_1
[00056df0] 2079 000d 4b42            movea.l    gs_infodata,a0
[00056df6] 4eb9 0004 7fa6            jsr        Ax_glfree
Aev_ExitGEMScript_1:
[00056dfc] 42b9 000d 4b42            clr.l      gs_infodata
[00056e02] 7001                      moveq.l    #1,d0
[00056e04] 4e75                      rts

CmpIDKanal:
[00056e06] 514f                      subq.w     #8,a7
[00056e08] 2f48 0004                 move.l     a0,4(a7)
[00056e0c] 2e89                      move.l     a1,(a7)
[00056e0e] 206f 0004                 movea.l    4(a7),a0
[00056e12] 3010                      move.w     (a0),d0
[00056e14] 2057                      movea.l    (a7),a0
[00056e16] b050                      cmp.w      (a0),d0
[00056e18] 6614                      bne.s      CmpIDKanal_1
[00056e1a] 206f 0004                 movea.l    4(a7),a0
[00056e1e] 3028 0002                 move.w     2(a0),d0
[00056e22] 2057                      movea.l    (a7),a0
[00056e24] b068 000e                 cmp.w      14(a0),d0
[00056e28] 6604                      bne.s      CmpIDKanal_1
[00056e2a] 7001                      moveq.l    #1,d0
[00056e2c] 6002                      bra.s      CmpIDKanal_2
CmpIDKanal_1:
[00056e2e] 4240                      clr.w      d0
CmpIDKanal_2:
[00056e30] 504f                      addq.w     #8,a7
[00056e32] 4e75                      rts

SetStatus:
[00056e34] 514f                      subq.w     #8,a7
[00056e36] 2f48 0004                 move.l     a0,4(a7)
[00056e3a] 2e89                      move.l     a1,(a7)
[00056e3c] 206f 0004                 movea.l    4(a7),a0
[00056e40] 3028 0006                 move.w     6(a0),d0
[00056e44] 6710                      beq.s      SetStatus_1
[00056e46] 206f 0004                 movea.l    4(a7),a0
[00056e4a] 3028 0004                 move.w     4(a0),d0
[00056e4e] 2057                      movea.l    (a7),a0
[00056e50] 8168 0010                 or.w       d0,16(a0)
[00056e54] 6010                      bra.s      SetStatus_2
SetStatus_1:
[00056e56] 206f 0004                 movea.l    4(a7),a0
[00056e5a] 3028 0004                 move.w     4(a0),d0
[00056e5e] 4640                      not.w      d0
[00056e60] 2057                      movea.l    (a7),a0
[00056e62] c168 0010                 and.w      d0,16(a0)
SetStatus_2:
[00056e66] 504f                      addq.w     #8,a7
[00056e68] 4e75                      rts

SendGsAck:
[00056e6a] 2f0a                      move.l     a2,-(a7)
[00056e6c] 514f                      subq.w     #8,a7
[00056e6e] 2f48 0004                 move.l     a0,4(a7)
[00056e72] 206f 0004                 movea.l    4(a7),a0
[00056e76] 2028 0010                 move.l     16(a0),d0
[00056e7a] 671c                      beq.s      SendGsAck_1
[00056e7c] 7201                      moveq.l    #1,d1
[00056e7e] 206f 0004                 movea.l    4(a7),a0
[00056e82] 3028 0014                 move.w     20(a0),d0
[00056e86] 206f 0004                 movea.l    4(a7),a0
[00056e8a] 2068 0010                 movea.l    16(a0),a0
[00056e8e] 4eb9 0004 3ff8            jsr        Ast_mergeASCIIZZ
[00056e94] 2e88                      move.l     a0,(a7)
[00056e96] 6018                      bra.s      SendGsAck_2
SendGsAck_1:
[00056e98] 7003                      moveq.l    #3,d0
[00056e9a] 4eb9 0004 7f44            jsr        Ax_glmalloc
[00056ea0] 2e88                      move.l     a0,(a7)
[00056ea2] 43f9 000d 4b86            lea.l      $000D4B86,a1
[00056ea8] 2057                      movea.l    (a7),a0
[00056eaa] 4eb9 0007 6950            jsr        strcpy
SendGsAck_2:
[00056eb0] 2257                      movea.l    (a7),a1
[00056eb2] 206f 0004                 movea.l    4(a7),a0
[00056eb6] 3028 0016                 move.w     22(a0),d0
[00056eba] 206f 0004                 movea.l    4(a7),a0
[00056ebe] 4eb9 0005 76c0            jsr        Aev_GSAck
[00056ec4] 2257                      movea.l    (a7),a1
[00056ec6] 2079 000d 450e            movea.l    globProtData,a0
[00056ecc] 2479 000d 450e            movea.l    globProtData,a2
[00056ed2] 246a 000c                 movea.l    12(a2),a2
[00056ed6] 4e92                      jsr        (a2)
[00056ed8] 504f                      addq.w     #8,a7
[00056eda] 245f                      movea.l    (a7)+,a2
[00056edc] 4e75                      rts

ClearConnect:
[00056ede] 594f                      subq.w     #4,a7
[00056ee0] 2e88                      move.l     a0,(a7)
[00056ee2] 7002                      moveq.l    #2,d0
[00056ee4] 2057                      movea.l    (a7),a0
[00056ee6] c068 0010                 and.w      16(a0),d0
[00056eea] 6608                      bne.s      ClearConnect_1
[00056eec] 2057                      movea.l    (a7),a0
[00056eee] 4eb9 0005 7656            jsr        Aev_GSQuit
ClearConnect_1:
[00056ef4] 7012                      moveq.l    #18,d0
[00056ef6] 2057                      movea.l    (a7),a0
[00056ef8] 4eb9 0004 8140            jsr        Ax_recycle
[00056efe] 584f                      addq.w     #4,a7
[00056f00] 4e75                      rts

ParseGSCommands:
[00056f02] 4fef ffdc                 lea.l      -36(a7),a7
[00056f06] 2f48 0020                 move.l     a0,32(a7)
[00056f0a] 2f49 001c                 move.l     a1,28(a7)
[00056f0e] 426f 0002                 clr.w      2(a7)
[00056f12] 4257                      clr.w      (a7)
[00056f14] 4857                      pea.l      (a7)
[00056f16] 43ef 0008                 lea.l      8(a7),a1
[00056f1a] 206f 0024                 movea.l    36(a7),a0
[00056f1e] 4eb9 0004 3fa6            jsr        Ast_splitASCIIZZ
[00056f24] 584f                      addq.w     #4,a7
[00056f26] 4a40                      tst.w      d0
[00056f28] 6700 027c                 beq        ParseGSCommands_1
[00056f2c] 3017                      move.w     (a7),d0
[00056f2e] 6f00 0276                 ble        ParseGSCommands_1
[00056f32] 426f 001a                 clr.w      26(a7)
[00056f36] 2f6f 0004 000c            move.l     4(a7),12(a7)
[00056f3c] 6000 01ae                 bra        ParseGSCommands_2
ParseGSCommands_15:
[00056f40] 206f 000c                 movea.l    12(a7),a0
[00056f44] 2050                      movea.l    (a0),a0
[00056f46] 1010                      move.b     (a0),d0
[00056f48] 4880                      ext.w      d0
[00056f4a] 41f9 000d 4b89            lea.l      $000D4B89,a0
[00056f50] 4eb9 0007 68ce            jsr        strchr
[00056f56] 2008                      move.l     a0,d0
[00056f58] 6700 018a                 beq        ParseGSCommands_3
[00056f5c] 206f 000c                 movea.l    12(a7),a0
[00056f60] 2050                      movea.l    (a0),a0
[00056f62] 1010                      move.b     (a0),d0
[00056f64] 4880                      ext.w      d0
[00056f66] 5340                      subq.w     #1,d0
[00056f68] 6708                      beq.s      ParseGSCommands_4
[00056f6a] 5340                      subq.w     #1,d0
[00056f6c] 6726                      beq.s      ParseGSCommands_5
[00056f6e] 6000 0162                 bra        ParseGSCommands_6
ParseGSCommands_4:
[00056f72] 206f 000c                 movea.l    12(a7),a0
[00056f76] 2050                      movea.l    (a0),a0
[00056f78] 4eb9 0004 371c            jsr        Ast_delete
[00056f7e] 41f9 000d 4b90            lea.l      $000D4B90,a0
[00056f84] 4eb9 0004 36d6            jsr        Ast_create
[00056f8a] 226f 000c                 movea.l    12(a7),a1
[00056f8e] 2288                      move.l     a0,(a1)
[00056f90] 6000 0152                 bra        ParseGSCommands_3
ParseGSCommands_5:
[00056f94] 206f 000c                 movea.l    12(a7),a0
[00056f98] 2050                      movea.l    (a0),a0
[00056f9a] 4eb9 0007 69b0            jsr        strlen
[00056fa0] 5340                      subq.w     #1,d0
[00056fa2] 3f40 0002                 move.w     d0,2(a7)
[00056fa6] 302f 0002                 move.w     2(a7),d0
[00056faa] e240                      asr.w      #1,d0
[00056fac] 7201                      moveq.l    #1,d1
[00056fae] c26f 0002                 and.w      2(a7),d1
[00056fb2] d041                      add.w      d1,d0
[00056fb4] 3f40 0002                 move.w     d0,2(a7)
[00056fb8] 7001                      moveq.l    #1,d0
[00056fba] d06f 0002                 add.w      2(a7),d0
[00056fbe] 48c0                      ext.l      d0
[00056fc0] 4eb9 0004 7cc8            jsr        Ax_malloc
[00056fc6] 2f48 0008                 move.l     a0,8(a7)
[00056fca] 202f 0008                 move.l     8(a7),d0
[00056fce] 6700 00ec                 beq        ParseGSCommands_7
[00056fd2] 426f 0018                 clr.w      24(a7)
[00056fd6] 206f 000c                 movea.l    12(a7),a0
[00056fda] 2050                      movea.l    (a0),a0
[00056fdc] 5248                      addq.w     #1,a0
[00056fde] 2f48 0014                 move.l     a0,20(a7)
[00056fe2] 2f6f 0008 0010            move.l     8(a7),16(a7)
[00056fe8] 6000 00b8                 bra        ParseGSCommands_8
ParseGSCommands_14:
[00056fec] 206f 0014                 movea.l    20(a7),a0
[00056ff0] 1010                      move.b     (a0),d0
[00056ff2] 4880                      ext.w      d0
[00056ff4] 4eb9 0007 7212            jsr        isdigit
[00056ffa] 4a40                      tst.w      d0
[00056ffc] 6710                      beq.s      ParseGSCommands_9
[00056ffe] 70d0                      moveq.l    #-48,d0
[00057000] 206f 0014                 movea.l    20(a7),a0
[00057004] d010                      add.b      (a0),d0
[00057006] 206f 0010                 movea.l    16(a7),a0
[0005700a] 1080                      move.b     d0,(a0)
[0005700c] 6028                      bra.s      ParseGSCommands_10
ParseGSCommands_9:
[0005700e] 206f 0014                 movea.l    20(a7),a0
[00057012] 1010                      move.b     (a0),d0
[00057014] 4880                      ext.w      d0
[00057016] 4eb9 0007 724c            jsr        isxdigit
[0005701c] 4a40                      tst.w      d0
[0005701e] 6716                      beq.s      ParseGSCommands_10
[00057020] 206f 0014                 movea.l    20(a7),a0
[00057024] 1010                      move.b     (a0),d0
[00057026] 4eb9 0004 372c            jsr        Ach_toupper
[0005702c] d03c ffc9                 add.b      #$C9,d0
[00057030] 206f 0010                 movea.l    16(a7),a0
[00057034] 1080                      move.b     d0,(a0)
ParseGSCommands_10:
[00057036] 52af 0014                 addq.l     #1,20(a7)
[0005703a] 206f 0014                 movea.l    20(a7),a0
[0005703e] 1010                      move.b     (a0),d0
[00057040] 6754                      beq.s      ParseGSCommands_11
[00057042] 206f 0010                 movea.l    16(a7),a0
[00057046] 1010                      move.b     (a0),d0
[00057048] e908                      lsl.b      #4,d0
[0005704a] 1080                      move.b     d0,(a0)
[0005704c] 206f 0014                 movea.l    20(a7),a0
[00057050] 1010                      move.b     (a0),d0
[00057052] 4880                      ext.w      d0
[00057054] 4eb9 0007 7212            jsr        isdigit
[0005705a] 4a40                      tst.w      d0
[0005705c] 6710                      beq.s      ParseGSCommands_12
[0005705e] 70d0                      moveq.l    #-48,d0
[00057060] 206f 0014                 movea.l    20(a7),a0
[00057064] d010                      add.b      (a0),d0
[00057066] 206f 0010                 movea.l    16(a7),a0
[0005706a] 8110                      or.b       d0,(a0)
[0005706c] 6028                      bra.s      ParseGSCommands_11
ParseGSCommands_12:
[0005706e] 206f 0014                 movea.l    20(a7),a0
[00057072] 1010                      move.b     (a0),d0
[00057074] 4880                      ext.w      d0
[00057076] 4eb9 0007 724c            jsr        isxdigit
[0005707c] 4a40                      tst.w      d0
[0005707e] 6716                      beq.s      ParseGSCommands_11
[00057080] 206f 0014                 movea.l    20(a7),a0
[00057084] 1010                      move.b     (a0),d0
[00057086] 4eb9 0004 372c            jsr        Ach_toupper
[0005708c] d03c ffc9                 add.b      #$C9,d0
[00057090] 206f 0010                 movea.l    16(a7),a0
[00057094] 8110                      or.b       d0,(a0)
ParseGSCommands_11:
[00057096] 52af 0010                 addq.l     #1,16(a7)
[0005709a] 52af 0014                 addq.l     #1,20(a7)
[0005709e] 526f 0018                 addq.w     #1,24(a7)
ParseGSCommands_8:
[000570a2] 206f 0014                 movea.l    20(a7),a0
[000570a6] 1010                      move.b     (a0),d0
[000570a8] 670c                      beq.s      ParseGSCommands_13
[000570aa] 302f 0018                 move.w     24(a7),d0
[000570ae] b06f 0002                 cmp.w      2(a7),d0
[000570b2] 6d00 ff38                 blt        ParseGSCommands_14
ParseGSCommands_13:
[000570b6] 206f 0010                 movea.l    16(a7),a0
[000570ba] 4210                      clr.b      (a0)
ParseGSCommands_7:
[000570bc] 206f 000c                 movea.l    12(a7),a0
[000570c0] 2050                      movea.l    (a0),a0
[000570c2] 4eb9 0004 371c            jsr        Ast_delete
[000570c8] 206f 000c                 movea.l    12(a7),a0
[000570cc] 20af 0008                 move.l     8(a7),(a0)
[000570d0] 6012                      bra.s      ParseGSCommands_3
ParseGSCommands_6:
[000570d2] 206f 000c                 movea.l    12(a7),a0
[000570d6] 2050                      movea.l    (a0),a0
[000570d8] 4eb9 0004 371c            jsr        Ast_delete
[000570de] 206f 000c                 movea.l    12(a7),a0
[000570e2] 4290                      clr.l      (a0)
ParseGSCommands_3:
[000570e4] 526f 001a                 addq.w     #1,26(a7)
[000570e8] 58af 000c                 addq.l     #4,12(a7)
ParseGSCommands_2:
[000570ec] 302f 001a                 move.w     26(a7),d0
[000570f0] b057                      cmp.w      (a7),d0
[000570f2] 6d00 fe4c                 blt        ParseGSCommands_15
[000570f6] 426f 0002                 clr.w      2(a7)
[000570fa] 426f 001a                 clr.w      26(a7)
[000570fe] 2f6f 0004 000c            move.l     4(a7),12(a7)
[00057104] 6014                      bra.s      ParseGSCommands_16
ParseGSCommands_18:
[00057106] 206f 000c                 movea.l    12(a7),a0
[0005710a] 2010                      move.l     (a0),d0
[0005710c] 6704                      beq.s      ParseGSCommands_17
[0005710e] 526f 0002                 addq.w     #1,2(a7)
ParseGSCommands_17:
[00057112] 526f 001a                 addq.w     #1,26(a7)
[00057116] 58af 000c                 addq.l     #4,12(a7)
ParseGSCommands_16:
[0005711a] 302f 001a                 move.w     26(a7),d0
[0005711e] b057                      cmp.w      (a7),d0
[00057120] 6de4                      blt.s      ParseGSCommands_18
[00057122] 302f 0002                 move.w     2(a7),d0
[00057126] 48c0                      ext.l      d0
[00057128] e588                      lsl.l      #2,d0
[0005712a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00057130] 226f 001c                 movea.l    28(a7),a1
[00057134] 2288                      move.l     a0,(a1)
[00057136] 202f 001c                 move.l     28(a7),d0
[0005713a] 6612                      bne.s      ParseGSCommands_19
[0005713c] 426f 0002                 clr.w      2(a7)
[00057140] 3017                      move.w     (a7),d0
[00057142] 206f 0004                 movea.l    4(a7),a0
[00057146] 4eb9 0004 418a            jsr        Ast_deleteAry
[0005714c] 6058                      bra.s      ParseGSCommands_1
ParseGSCommands_19:
[0005714e] 4240                      clr.w      d0
[00057150] 3f40 0018                 move.w     d0,24(a7)
[00057154] 3f40 001a                 move.w     d0,26(a7)
[00057158] 2f6f 0004 000c            move.l     4(a7),12(a7)
[0005715e] 602a                      bra.s      ParseGSCommands_20
ParseGSCommands_23:
[00057160] 206f 000c                 movea.l    12(a7),a0
[00057164] 2010                      move.l     (a0),d0
[00057166] 671a                      beq.s      ParseGSCommands_21
[00057168] 206f 000c                 movea.l    12(a7),a0
[0005716c] 302f 0018                 move.w     24(a7),d0
[00057170] 48c0                      ext.l      d0
[00057172] e588                      lsl.l      #2,d0
[00057174] 226f 001c                 movea.l    28(a7),a1
[00057178] 2251                      movea.l    (a1),a1
[0005717a] 2390 0800                 move.l     (a0),0(a1,d0.l)
[0005717e] 526f 0018                 addq.w     #1,24(a7)
ParseGSCommands_21:
[00057182] 526f 001a                 addq.w     #1,26(a7)
[00057186] 58af 000c                 addq.l     #4,12(a7)
ParseGSCommands_20:
[0005718a] 302f 001a                 move.w     26(a7),d0
[0005718e] b057                      cmp.w      (a7),d0
[00057190] 6c0a                      bge.s      ParseGSCommands_22
[00057192] 302f 0018                 move.w     24(a7),d0
[00057196] b06f 0002                 cmp.w      2(a7),d0
[0005719a] 6dc4                      blt.s      ParseGSCommands_23
ParseGSCommands_22:
[0005719c] 206f 0004                 movea.l    4(a7),a0
[000571a0] 4eb9 0004 7e26            jsr        Ax_free
ParseGSCommands_1:
[000571a6] 302f 0002                 move.w     2(a7),d0
[000571aa] 4fef 0024                 lea.l      36(a7),a7
[000571ae] 4e75                      rts

Aev_GetGSRequest:
[000571b0] 2f0a                      move.l     a2,-(a7)
[000571b2] 4fef ffe8                 lea.l      -24(a7),a7
[000571b6] 2f48 0014                 move.l     a0,20(a7)
[000571ba] 206f 0014                 movea.l    20(a7),a0
[000571be] 2f50 0010                 move.l     (a0),16(a7)
[000571c2] 206f 0010                 movea.l    16(a7),a0
[000571c6] 3f68 0002 0004            move.w     2(a0),4(a7)
[000571cc] 206f 0010                 movea.l    16(a7),a0
[000571d0] 3f68 000e 0006            move.w     14(a0),6(a7)
[000571d6] 487a fc2e                 pea.l      CmpIDKanal(pc)
[000571da] 43ef 0008                 lea.l      8(a7),a1
[000571de] 2079 000d 4b46            movea.l    gs_connect,a0
[000571e4] 2479 000d 4b46            movea.l    gs_connect,a2
[000571ea] 246a 0020                 movea.l    32(a2),a2
[000571ee] 4e92                      jsr        (a2)
[000571f0] 584f                      addq.w     #4,a7
[000571f2] 2f48 000c                 move.l     a0,12(a7)
[000571f6] 202f 000c                 move.l     12(a7),d0
[000571fa] 6658                      bne.s      Aev_GetGSRequest_1
[000571fc] 7012                      moveq.l    #18,d0
[000571fe] 4eb9 0004 7cc8            jsr        Ax_malloc
[00057204] 2f48 000c                 move.l     a0,12(a7)
[00057208] 202f 000c                 move.l     12(a7),d0
[0005720c] 6606                      bne.s      Aev_GetGSRequest_2
[0005720e] 4240                      clr.w      d0
[00057210] 6000 00a0                 bra        Aev_GetGSRequest_3
Aev_GetGSRequest_2:
[00057214] 7212                      moveq.l    #18,d1
[00057216] 4240                      clr.w      d0
[00057218] 206f 000c                 movea.l    12(a7),a0
[0005721c] 4eb9 0007 712e            jsr        memset
[00057222] 206f 0010                 movea.l    16(a7),a0
[00057226] 226f 000c                 movea.l    12(a7),a1
[0005722a] 32a8 0002                 move.w     2(a0),(a1)
[0005722e] 206f 0010                 movea.l    16(a7),a0
[00057232] 226f 000c                 movea.l    12(a7),a1
[00057236] 3368 000e 000e            move.w     14(a0),14(a1)
[0005723c] 226f 000c                 movea.l    12(a7),a1
[00057240] 2079 000d 4b46            movea.l    gs_connect,a0
[00057246] 2479 000d 4b46            movea.l    gs_connect,a2
[0005724c] 246a 000c                 movea.l    12(a2),a2
[00057250] 4e92                      jsr        (a2)
[00057252] 600e                      bra.s      Aev_GetGSRequest_4
Aev_GetGSRequest_1:
[00057254] 7002                      moveq.l    #2,d0
[00057256] 206f 000c                 movea.l    12(a7),a0
[0005725a] 4eb9 0005 75da            jsr        Aev_GSReply
[00057260] 6050                      bra.s      Aev_GetGSRequest_3
Aev_GetGSRequest_4:
[00057262] 206f 0010                 movea.l    16(a7),a0
[00057266] 2ea8 0006                 move.l     6(a0),(a7)
[0005726a] 4241                      clr.w      d1
[0005726c] 700c                      moveq.l    #12,d0
[0005726e] 2057                      movea.l    (a7),a0
[00057270] 4eb9 0004 7ff8            jsr        Ax_memCheck
[00057276] 4a40                      tst.w      d0
[00057278] 672a                      beq.s      Aev_GetGSRequest_5
[0005727a] 700c                      moveq.l    #12,d0
[0005727c] 2257                      movea.l    (a7),a1
[0005727e] 206f 000c                 movea.l    12(a7),a0
[00057282] 5448                      addq.w     #2,a0
[00057284] 4eb9 0007 6f44            jsr        memcpy
[0005728a] 206f 000c                 movea.l    12(a7),a0
[0005728e] 0068 0001 0010            ori.w      #$0001,16(a0)
[00057294] 4240                      clr.w      d0
[00057296] 206f 000c                 movea.l    12(a7),a0
[0005729a] 4eb9 0005 75da            jsr        Aev_GSReply
[000572a0] 6010                      bra.s      Aev_GetGSRequest_3
[000572a2] 600e                      bra.s      Aev_GetGSRequest_3
Aev_GetGSRequest_5:
[000572a4] 7001                      moveq.l    #1,d0
[000572a6] 206f 000c                 movea.l    12(a7),a0
[000572aa] 4eb9 0005 75da            jsr        Aev_GSReply
[000572b0] 4e71                      nop
Aev_GetGSRequest_3:
[000572b2] 4fef 0018                 lea.l      24(a7),a7
[000572b6] 245f                      movea.l    (a7)+,a2
[000572b8] 4e75                      rts

Aev_GetGSQuit:
[000572ba] 2f0a                      move.l     a2,-(a7)
[000572bc] 4fef fff4                 lea.l      -12(a7),a7
[000572c0] 2f48 0008                 move.l     a0,8(a7)
[000572c4] 41f9 000d 4b4a            lea.l      $000D4B4A,a0
[000572ca] 43d7                      lea.l      (a7),a1
[000572cc] 22d8                      move.l     (a0)+,(a1)+
[000572ce] 22d8                      move.l     (a0)+,(a1)+
[000572d0] 206f 0008                 movea.l    8(a7),a0
[000572d4] 2050                      movea.l    (a0),a0
[000572d6] 3ea8 0002                 move.w     2(a0),(a7)
[000572da] 206f 0008                 movea.l    8(a7),a0
[000572de] 2050                      movea.l    (a0),a0
[000572e0] 3f68 000e 0002            move.w     14(a0),2(a7)
[000572e6] 487a fb4c                 pea.l      SetStatus(pc)
[000572ea] 487a fb1a                 pea.l      CmpIDKanal(pc)
[000572ee] 43ef 0008                 lea.l      8(a7),a1
[000572f2] 2079 000d 4b46            movea.l    gs_connect,a0
[000572f8] 2479 000d 4b46            movea.l    gs_connect,a2
[000572fe] 246a 0040                 movea.l    64(a2),a2
[00057302] 4e92                      jsr        (a2)
[00057304] 504f                      addq.w     #8,a7
[00057306] 487a fafe                 pea.l      CmpIDKanal(pc)
[0005730a] 43ef 0004                 lea.l      4(a7),a1
[0005730e] 2079 000d 4b46            movea.l    gs_connect,a0
[00057314] 2479 000d 4b46            movea.l    gs_connect,a2
[0005731a] 246a 0018                 movea.l    24(a2),a2
[0005731e] 4e92                      jsr        (a2)
[00057320] 584f                      addq.w     #4,a7
[00057322] 7001                      moveq.l    #1,d0
[00057324] 4fef 000c                 lea.l      12(a7),a7
[00057328] 245f                      movea.l    (a7)+,a2
[0005732a] 4e75                      rts

Aev_GetGSCommand:
[0005732c] 2f0a                      move.l     a2,-(a7)
[0005732e] 4fef ffd0                 lea.l      -48(a7),a7
[00057332] 2f48 002c                 move.l     a0,44(a7)
[00057336] 206f 002c                 movea.l    44(a7),a0
[0005733a] 2f50 0028                 move.l     (a0),40(a7)
[0005733e] 7010                      moveq.l    #16,d0
[00057340] 226f 0028                 movea.l    40(a7),a1
[00057344] 41d7                      lea.l      (a7),a0
[00057346] 4eb9 0007 6f44            jsr        memcpy
[0005734c] 7004                      moveq.l    #4,d0
[0005734e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00057354] 2f48 0010                 move.l     a0,16(a7)
[00057358] 3f7c 0001 0014            move.w     #$0001,20(a7)
[0005735e] 426f 0016                 clr.w      22(a7)
[00057362] 202f 0010                 move.l     16(a7),d0
[00057366] 660e                      bne.s      Aev_GetGSCommand_1
[00057368] 41d7                      lea.l      (a7),a0
[0005736a] 6100 fafe                 bsr        SendGsAck
[0005736e] 4240                      clr.w      d0
[00057370] 6000 010c                 bra        Aev_GetGSCommand_2
[00057374] 6012                      bra.s      Aev_GetGSCommand_3
Aev_GetGSCommand_1:
[00057376] 41f9 000d 4b91            lea.l      $000D4B91,a0
[0005737c] 4eb9 0004 36d6            jsr        Ast_create
[00057382] 226f 0010                 movea.l    16(a7),a1
[00057386] 2288                      move.l     a0,(a1)
Aev_GetGSCommand_3:
[00057388] 206f 0028                 movea.l    40(a7),a0
[0005738c] 2f68 0006 0024            move.l     6(a0),36(a7)
[00057392] 4241                      clr.w      d1
[00057394] 70fe                      moveq.l    #-2,d0
[00057396] 206f 0024                 movea.l    36(a7),a0
[0005739a] 4eb9 0004 7ff8            jsr        Ax_memCheck
[000573a0] 4a40                      tst.w      d0
[000573a2] 6700 00cc                 beq        Aev_GetGSCommand_4
[000573a6] 43ef 0020                 lea.l      32(a7),a1
[000573aa] 206f 0024                 movea.l    36(a7),a0
[000573ae] 6100 fb52                 bsr        ParseGSCommands
[000573b2] 3f40 001c                 move.w     d0,28(a7)
[000573b6] 43ef 0010                 lea.l      16(a7),a1
[000573ba] 206f 0020                 movea.l    32(a7),a0
[000573be] 302f 001c                 move.w     28(a7),d0
[000573c2] 2479 0010 1f12            movea.l    ACSblk,a2
[000573c8] 246a 04ee                 movea.l    1262(a2),a2
[000573cc] 4e92                      jsr        (a2)
[000573ce] 3f40 0016                 move.w     d0,22(a7)
[000573d2] 302f 0016                 move.w     22(a7),d0
[000573d6] 6754                      beq.s      Aev_GetGSCommand_5
[000573d8] 0c6f 0001 001c            cmpi.w     #$0001,28(a7)
[000573de] 6f12                      ble.s      Aev_GetGSCommand_6
[000573e0] 4240                      clr.w      d0
[000573e2] 206f 0020                 movea.l    32(a7),a0
[000573e6] 2068 0004                 movea.l    4(a0),a0
[000573ea] 4eb9 0005 21d8            jsr        Awi_name
[000573f0] 6006                      bra.s      Aev_GetGSCommand_7
Aev_GetGSCommand_6:
[000573f2] 4eb9 0004 e608            jsr        Awi_root
Aev_GetGSCommand_7:
[000573f8] 2f48 0018                 move.l     a0,24(a7)
[000573fc] 202f 0018                 move.l     24(a7),d0
[00057400] 672a                      beq.s      Aev_GetGSCommand_5
[00057402] 206f 0018                 movea.l    24(a7),a0
[00057406] 2028 0096                 move.l     150(a0),d0
[0005740a] 6720                      beq.s      Aev_GetGSCommand_5
[0005740c] 486f 0010                 pea.l      16(a7)
[00057410] 226f 0024                 movea.l    36(a7),a1
[00057414] 302f 0020                 move.w     32(a7),d0
[00057418] 206f 001c                 movea.l    28(a7),a0
[0005741c] 246f 001c                 movea.l    28(a7),a2
[00057420] 246a 0096                 movea.l    150(a2),a2
[00057424] 4e92                      jsr        (a2)
[00057426] 584f                      addq.w     #4,a7
[00057428] 3f40 0016                 move.w     d0,22(a7)
Aev_GetGSCommand_5:
[0005742c] 302f 001c                 move.w     28(a7),d0
[00057430] 206f 0020                 movea.l    32(a7),a0
[00057434] 4eb9 0004 418a            jsr        Ast_deleteAry
[0005743a] 426f 001e                 clr.w      30(a7)
[0005743e] 601a                      bra.s      Aev_GetGSCommand_8
Aev_GetGSCommand_9:
[00057440] 302f 001e                 move.w     30(a7),d0
[00057444] 48c0                      ext.l      d0
[00057446] e588                      lsl.l      #2,d0
[00057448] 206f 0010                 movea.l    16(a7),a0
[0005744c] 2070 0800                 movea.l    0(a0,d0.l),a0
[00057450] 4eb9 0004 371c            jsr        Ast_delete
[00057456] 526f 001e                 addq.w     #1,30(a7)
Aev_GetGSCommand_8:
[0005745a] 302f 001e                 move.w     30(a7),d0
[0005745e] b06f 0014                 cmp.w      20(a7),d0
[00057462] 6ddc                      blt.s      Aev_GetGSCommand_9
[00057464] 206f 0010                 movea.l    16(a7),a0
[00057468] 4eb9 0004 7e26            jsr        Ax_free
[0005746e] 6006                      bra.s      Aev_GetGSCommand_10
Aev_GetGSCommand_4:
[00057470] 3f7c 0002 0016            move.w     #$0002,22(a7)
Aev_GetGSCommand_10:
[00057476] 41d7                      lea.l      (a7),a0
[00057478] 6100 f9f0                 bsr        SendGsAck
[0005747c] 7001                      moveq.l    #1,d0
Aev_GetGSCommand_2:
[0005747e] 4fef 0030                 lea.l      48(a7),a7
[00057482] 245f                      movea.l    (a7)+,a2
[00057484] 4e75                      rts

Aev_GetGSAck:
[00057486] 2f0a                      move.l     a2,-(a7)
[00057488] 4fef ffc6                 lea.l      -58(a7),a7
[0005748c] 2f48 0036                 move.l     a0,54(a7)
[00057490] 206f 0036                 movea.l    54(a7),a0
[00057494] 2f50 0032                 move.l     (a0),50(a7)
[00057498] 206f 0032                 movea.l    50(a7),a0
[0005749c] 2f68 0006 002e            move.l     6(a0),46(a7)
[000574a2] 206f 0032                 movea.l    50(a7),a0
[000574a6] 2f68 000a 002a            move.l     10(a0),42(a7)
[000574ac] 3f7c 1352 0028            move.w     #$1352,40(a7)
[000574b2] 206f 0032                 movea.l    50(a7),a0
[000574b6] 3ea8 0002                 move.w     2(a0),(a7)
[000574ba] 41ef 0028                 lea.l      40(a7),a0
[000574be] 2f48 0004                 move.l     a0,4(a7)
[000574c2] 42af 0008                 clr.l      8(a7)
[000574c6] 42af 000c                 clr.l      12(a7)
[000574ca] 206f 0032                 movea.l    50(a7),a0
[000574ce] 5c48                      addq.w     #6,a0
[000574d0] 2f48 0010                 move.l     a0,16(a7)
[000574d4] 206f 0032                 movea.l    50(a7),a0
[000574d8] 5048                      addq.w     #8,a0
[000574da] 2f48 0014                 move.l     a0,20(a7)
[000574de] 202f 002e                 move.l     46(a7),d0
[000574e2] 6704                      beq.s      Aev_GetGSAck_1
[000574e4] 91c8                      suba.l     a0,a0
[000574e6] 6008                      bra.s      Aev_GetGSAck_2
Aev_GetGSAck_1:
[000574e8] 206f 0032                 movea.l    50(a7),a0
[000574ec] 41e8 000a                 lea.l      10(a0),a0
Aev_GetGSAck_2:
[000574f0] 2f48 0018                 move.l     a0,24(a7)
[000574f4] 202f 002e                 move.l     46(a7),d0
[000574f8] 6704                      beq.s      Aev_GetGSAck_3
[000574fa] 91c8                      suba.l     a0,a0
[000574fc] 6008                      bra.s      Aev_GetGSAck_4
Aev_GetGSAck_3:
[000574fe] 206f 0032                 movea.l    50(a7),a0
[00057502] 41e8 000c                 lea.l      12(a0),a0
Aev_GetGSAck_4:
[00057506] 2f48 001c                 move.l     a0,28(a7)
[0005750a] 42af 0020                 clr.l      32(a7)
[0005750e] 4879 0005 3d76            pea.l      Aev_CmpMsgInList
[00057514] 43ef 0004                 lea.l      4(a7),a1
[00057518] 2079 000d 2c50            movea.l    SentMsg,a0
[0005751e] 2479 000d 2c50            movea.l    SentMsg,a2
[00057524] 246a 0020                 movea.l    32(a2),a2
[00057528] 4e92                      jsr        (a2)
[0005752a] 584f                      addq.w     #4,a7
[0005752c] 2f48 0024                 move.l     a0,36(a7)
[00057530] 202f 0024                 move.l     36(a7),d0
[00057534] 6728                      beq.s      Aev_GetGSAck_5
[00057536] 206f 0024                 movea.l    36(a7),a0
[0005753a] 2028 0002                 move.l     2(a0),d0
[0005753e] 4e71                      nop
[00057540] 4879 0006 2c64            pea.l      Alu_ptrCmp
[00057546] 226f 0028                 movea.l    40(a7),a1
[0005754a] 2079 000d 2c50            movea.l    SentMsg,a0
[00057550] 2479 000d 2c50            movea.l    SentMsg,a2
[00057556] 246a 0020                 movea.l    32(a2),a2
[0005755a] 4e92                      jsr        (a2)
[0005755c] 584f                      addq.w     #4,a7
Aev_GetGSAck_5:
[0005755e] 202f 002e                 move.l     46(a7),d0
[00057562] 6748                      beq.s      Aev_GetGSAck_6
[00057564] 4879 0006 2c64            pea.l      Alu_ptrCmp
[0005756a] 226f 0032                 movea.l    50(a7),a1
[0005756e] 2079 000d 450e            movea.l    globProtData,a0
[00057574] 2479 000d 450e            movea.l    globProtData,a2
[0005757a] 246a 0018                 movea.l    24(a2),a2
[0005757e] 4e92                      jsr        (a2)
[00057580] 584f                      addq.w     #4,a7
[00057582] 202f 002a                 move.l     42(a7),d0
[00057586] 6722                      beq.s      Aev_GetGSAck_7
[00057588] 206f 0032                 movea.l    50(a7),a0
[0005758c] 4268 0006                 clr.w      6(a0)
[00057590] 206f 0032                 movea.l    50(a7),a0
[00057594] 4268 0008                 clr.w      8(a0)
[00057598] 43f9 000d 4b93            lea.l      $000D4B93,a1
[0005759e] 4240                      clr.w      d0
[000575a0] 206f 0032                 movea.l    50(a7),a0
[000575a4] 4eb9 0005 76c0            jsr        Aev_GSAck
Aev_GetGSAck_7:
[000575aa] 6024                      bra.s      Aev_GetGSAck_8
Aev_GetGSAck_6:
[000575ac] 202f 002a                 move.l     42(a7),d0
[000575b0] 671e                      beq.s      Aev_GetGSAck_8
[000575b2] 4879 0006 2c64            pea.l      Alu_ptrCmp
[000575b8] 226f 002e                 movea.l    46(a7),a1
[000575bc] 2079 000d 450e            movea.l    globProtData,a0
[000575c2] 2479 000d 450e            movea.l    globProtData,a2
[000575c8] 246a 0018                 movea.l    24(a2),a2
[000575cc] 4e92                      jsr        (a2)
[000575ce] 584f                      addq.w     #4,a7
Aev_GetGSAck_8:
[000575d0] 7001                      moveq.l    #1,d0
[000575d2] 4fef 003a                 lea.l      58(a7),a7
[000575d6] 245f                      movea.l    (a7)+,a2
[000575d8] 4e75                      rts

Aev_GSReply:
[000575da] 2f0a                      move.l     a2,-(a7)
[000575dc] 4fef ffea                 lea.l      -22(a7),a7
[000575e0] 2f48 0012                 move.l     a0,18(a7)
[000575e4] 3f40 0010                 move.w     d0,16(a7)
[000575e8] 206f 0012                 movea.l    18(a7),a0
[000575ec] 3010                      move.w     (a0),d0
[000575ee] 2079 0010 1f12            movea.l    ACSblk,a0
[000575f4] b050                      cmp.w      (a0),d0
[000575f6] 6754                      beq.s      Aev_GSReply_1
[000575f8] 7210                      moveq.l    #16,d1
[000575fa] 4240                      clr.w      d0
[000575fc] 41d7                      lea.l      (a7),a0
[000575fe] 4eb9 0007 712e            jsr        memset
[00057604] 3ebc 1351                 move.w     #$1351,(a7)
[00057608] 2079 0010 1f12            movea.l    ACSblk,a0
[0005760e] 3f50 0002                 move.w     (a0),2(a7)
[00057612] 3f6f 0010 000c            move.w     16(a7),12(a7)
[00057618] 206f 0012                 movea.l    18(a7),a0
[0005761c] 3f68 000e 000e            move.w     14(a0),14(a7)
[00057622] 2f79 000d 4b42 0006       move.l     gs_infodata,6(a7)
[0005762a] 2279 000d 99d6            movea.l    _globl,a1
[00057630] 41d7                      lea.l      (a7),a0
[00057632] 7210                      moveq.l    #16,d1
[00057634] 246f 0012                 movea.l    18(a7),a2
[00057638] 3012                      move.w     (a2),d0
[0005763a] 4eb9 0006 a818            jsr        mt_appl_write
[00057640] 4a40                      tst.w      d0
[00057642] 6704                      beq.s      Aev_GSReply_2
[00057644] 7001                      moveq.l    #1,d0
[00057646] 6002                      bra.s      Aev_GSReply_3
Aev_GSReply_2:
[00057648] 4240                      clr.w      d0
Aev_GSReply_3:
[0005764a] 6002                      bra.s      Aev_GSReply_4
Aev_GSReply_1:
[0005764c] 4240                      clr.w      d0
Aev_GSReply_4:
[0005764e] 4fef 0016                 lea.l      22(a7),a7
[00057652] 245f                      movea.l    (a7)+,a2
[00057654] 4e75                      rts

Aev_GSQuit:
[00057656] 2f0a                      move.l     a2,-(a7)
[00057658] 4fef ffdc                 lea.l      -36(a7),a7
[0005765c] 2f48 0020                 move.l     a0,32(a7)
[00057660] 2079 0010 1f12            movea.l    ACSblk,a0
[00057666] 3010                      move.w     (a0),d0
[00057668] 206f 0020                 movea.l    32(a7),a0
[0005766c] b050                      cmp.w      (a0),d0
[0005766e] 6746                      beq.s      Aev_GSQuit_1
[00057670] 7210                      moveq.l    #16,d1
[00057672] 4240                      clr.w      d0
[00057674] 41d7                      lea.l      (a7),a0
[00057676] 4eb9 0007 712e            jsr        memset
[0005767c] 3ebc 1354                 move.w     #$1354,(a7)
[00057680] 2079 0010 1f12            movea.l    ACSblk,a0
[00057686] 3f50 0002                 move.w     (a0),2(a7)
[0005768a] 206f 0020                 movea.l    32(a7),a0
[0005768e] 3f68 000e 000e            move.w     14(a0),14(a7)
[00057694] 2279 000d 99d6            movea.l    _globl,a1
[0005769a] 41d7                      lea.l      (a7),a0
[0005769c] 7210                      moveq.l    #16,d1
[0005769e] 246f 0020                 movea.l    32(a7),a2
[000576a2] 3012                      move.w     (a2),d0
[000576a4] 4eb9 0006 a818            jsr        mt_appl_write
[000576aa] 4a40                      tst.w      d0
[000576ac] 6704                      beq.s      Aev_GSQuit_2
[000576ae] 7001                      moveq.l    #1,d0
[000576b0] 6002                      bra.s      Aev_GSQuit_3
Aev_GSQuit_2:
[000576b2] 4240                      clr.w      d0
Aev_GSQuit_3:
[000576b4] 6002                      bra.s      Aev_GSQuit_4
Aev_GSQuit_1:
[000576b6] 4240                      clr.w      d0
Aev_GSQuit_4:
[000576b8] 4fef 0024                 lea.l      36(a7),a7
[000576bc] 245f                      movea.l    (a7)+,a2
[000576be] 4e75                      rts

Aev_GSAck:
[000576c0] 2f0a                      move.l     a2,-(a7)
[000576c2] 4fef ffd6                 lea.l      -42(a7),a7
[000576c6] 2f48 0026                 move.l     a0,38(a7)
[000576ca] 3f40 0024                 move.w     d0,36(a7)
[000576ce] 2f49 0020                 move.l     a1,32(a7)
[000576d2] 2079 0010 1f12            movea.l    ACSblk,a0
[000576d8] 3010                      move.w     (a0),d0
[000576da] 206f 0026                 movea.l    38(a7),a0
[000576de] b068 0002                 cmp.w      2(a0),d0
[000576e2] 675e                      beq.s      Aev_GSAck_1
[000576e4] 7210                      moveq.l    #16,d1
[000576e6] 4240                      clr.w      d0
[000576e8] 41d7                      lea.l      (a7),a0
[000576ea] 4eb9 0007 712e            jsr        memset
[000576f0] 3ebc 1353                 move.w     #$1353,(a7)
[000576f4] 2079 0010 1f12            movea.l    ACSblk,a0
[000576fa] 3f50 0002                 move.w     (a0),2(a7)
[000576fe] 206f 0026                 movea.l    38(a7),a0
[00057702] 3f68 0006 0006            move.w     6(a0),6(a7)
[00057708] 206f 0026                 movea.l    38(a7),a0
[0005770c] 3f68 0008 0008            move.w     8(a0),8(a7)
[00057712] 3f6f 0024 000e            move.w     36(a7),14(a7)
[00057718] 2f6f 0020 000a            move.l     32(a7),10(a7)
[0005771e] 2279 000d 99d6            movea.l    _globl,a1
[00057724] 41d7                      lea.l      (a7),a0
[00057726] 7210                      moveq.l    #16,d1
[00057728] 246f 0026                 movea.l    38(a7),a2
[0005772c] 302a 0002                 move.w     2(a2),d0
[00057730] 4eb9 0006 a818            jsr        mt_appl_write
[00057736] 4a40                      tst.w      d0
[00057738] 6704                      beq.s      Aev_GSAck_2
[0005773a] 7001                      moveq.l    #1,d0
[0005773c] 6002                      bra.s      Aev_GSAck_3
Aev_GSAck_2:
[0005773e] 4240                      clr.w      d0
Aev_GSAck_3:
[00057740] 6002                      bra.s      Aev_GSAck_4
Aev_GSAck_1:
[00057742] 4240                      clr.w      d0
Aev_GSAck_4:
[00057744] 4fef 002a                 lea.l      42(a7),a7
[00057748] 245f                      movea.l    (a7)+,a2
[0005774a] 4e75                      rts

_gs_cmp:
[0005774c] 514f                      subq.w     #8,a7
[0005774e] 2f48 0004                 move.l     a0,4(a7)
[00057752] 2e89                      move.l     a1,(a7)
[00057754] 2057                      movea.l    (a7),a0
[00057756] 2250                      movea.l    (a0),a1
[00057758] 206f 0004                 movea.l    4(a7),a0
[0005775c] 2050                      movea.l    (a0),a0
[0005775e] 4eb9 0004 38ac            jsr        Ast_icmp
[00057764] 504f                      addq.w     #8,a7
[00057766] 4e75                      rts

_gs_search:
[00057768] 514f                      subq.w     #8,a7
[0005776a] 2f48 0004                 move.l     a0,4(a7)
[0005776e] 2e89                      move.l     a1,(a7)
[00057770] 2057                      movea.l    (a7),a0
[00057772] 2250                      movea.l    (a0),a1
[00057774] 206f 0004                 movea.l    4(a7),a0
[00057778] 4eb9 0004 38ac            jsr        Ast_icmp
[0005777e] 504f                      addq.w     #8,a7
[00057780] 4e75                      rts

_gs_strcmp:
[00057782] 514f                      subq.w     #8,a7
[00057784] 2f48 0004                 move.l     a0,4(a7)
[00057788] 2e89                      move.l     a1,(a7)
[0005778a] 2057                      movea.l    (a7),a0
[0005778c] 2250                      movea.l    (a0),a1
[0005778e] 206f 0004                 movea.l    4(a7),a0
[00057792] 2050                      movea.l    (a0),a0
[00057794] 4eb9 0004 38ac            jsr        Ast_icmp
[0005779a] 504f                      addq.w     #8,a7
[0005779c] 4e75                      rts

Aev_GEMScript:
[0005779e] 2f0a                      move.l     a2,-(a7)
[000577a0] 4fef fff2                 lea.l      -14(a7),a7
[000577a4] 3f40 000c                 move.w     d0,12(a7)
[000577a8] 2f48 0008                 move.l     a0,8(a7)
[000577ac] 2f49 0004                 move.l     a1,4(a7)
[000577b0] 206f 0004                 movea.l    4(a7),a0
[000577b4] 317c 0001 0006            move.w     #$0001,6(a0)
[000577ba] 3039 000d 4b84            move.w     _gs_sorted,d0
[000577c0] 6622                      bne.s      Aev_GEMScript_1
[000577c2] 43fa ff88                 lea.l      _gs_cmp(pc),a1
[000577c6] 7208                      moveq.l    #8,d1
[000577c8] 3039 000d 4b82            move.w     _gs_cmd_anzahl,d0
[000577ce] 48c0                      ext.l      d0
[000577d0] 41f9 000d 4b52            lea.l      _gs_commands,a0
[000577d6] 4eb9 0007 5314            jsr        qsort
[000577dc] 33fc 0001 000d 4b84       move.w     #$0001,_gs_sorted
Aev_GEMScript_1:
[000577e4] 487a ff82                 pea.l      _gs_search(pc)
[000577e8] 7208                      moveq.l    #8,d1
[000577ea] 3039 000d 4b82            move.w     _gs_cmd_anzahl,d0
[000577f0] 48c0                      ext.l      d0
[000577f2] 43f9 000d 4b52            lea.l      _gs_commands,a1
[000577f8] 206f 000c                 movea.l    12(a7),a0
[000577fc] 2050                      movea.l    (a0),a0
[000577fe] 4eb9 0007 5178            jsr        bsearch
[00057804] 584f                      addq.w     #4,a7
[00057806] 2e88                      move.l     a0,(a7)
[00057808] 2017                      move.l     (a7),d0
[0005780a] 672e                      beq.s      Aev_GEMScript_2
[0005780c] 2057                      movea.l    (a7),a0
[0005780e] 2028 0004                 move.l     4(a0),d0
[00057812] 671e                      beq.s      Aev_GEMScript_3
[00057814] 226f 0004                 movea.l    4(a7),a1
[00057818] 206f 0008                 movea.l    8(a7),a0
[0005781c] 302f 000c                 move.w     12(a7),d0
[00057820] 2457                      movea.l    (a7),a2
[00057822] 246a 0004                 movea.l    4(a2),a2
[00057826] 4e92                      jsr        (a2)
[00057828] 206f 0004                 movea.l    4(a7),a0
[0005782c] 3140 0006                 move.w     d0,6(a0)
[00057830] 6008                      bra.s      Aev_GEMScript_2
Aev_GEMScript_3:
[00057832] 206f 0004                 movea.l    4(a7),a0
[00057836] 4268 0006                 clr.w      6(a0)
Aev_GEMScript_2:
[0005783a] 206f 0004                 movea.l    4(a7),a0
[0005783e] 3028 0006                 move.w     6(a0),d0
[00057842] 4fef 000e                 lea.l      14(a7),a7
[00057846] 245f                      movea.l    (a7)+,a2
[00057848] 4e75                      rts

gs_SendToTopWindow:
[0005784a] 2f0a                      move.l     a2,-(a7)
[0005784c] 4fef fff2                 lea.l      -14(a7),a7
[00057850] 3f40 000c                 move.w     d0,12(a7)
[00057854] 2f48 0008                 move.l     a0,8(a7)
[00057858] 2f49 0004                 move.l     a1,4(a7)
[0005785c] 4eb9 0004 e46a            jsr        Awi_ontop
[00057862] 2e88                      move.l     a0,(a7)
[00057864] 2f2f 0004                 move.l     4(a7),-(a7)
[00057868] 226f 000c                 movea.l    12(a7),a1
[0005786c] 302f 0010                 move.w     16(a7),d0
[00057870] 206f 0004                 movea.l    4(a7),a0
[00057874] 246f 0004                 movea.l    4(a7),a2
[00057878] 246a 0096                 movea.l    150(a2),a2
[0005787c] 4e92                      jsr        (a2)
[0005787e] 584f                      addq.w     #4,a7
[00057880] 4fef 000e                 lea.l      14(a7),a7
[00057884] 245f                      movea.l    (a7)+,a2
[00057886] 4e75                      rts

gs_AppGetLongName:
[00057888] 594f                      subq.w     #4,a7
[0005788a] 2e89                      move.l     a1,(a7)
[0005788c] 2057                      movea.l    (a7),a0
[0005788e] 2050                      movea.l    (a0),a0
[00057890] 2050                      movea.l    (a0),a0
[00057892] 4eb9 0004 7e26            jsr        Ax_free
[00057898] 2057                      movea.l    (a7),a0
[0005789a] 317c 0001 0004            move.w     #$0001,4(a0)
[000578a0] 2079 0010 1f12            movea.l    ACSblk,a0
[000578a6] 2068 04e6                 movea.l    1254(a0),a0
[000578aa] 4eb9 0004 36d6            jsr        Ast_create
[000578b0] 2257                      movea.l    (a7),a1
[000578b2] 2251                      movea.l    (a1),a1
[000578b4] 2288                      move.l     a0,(a1)
[000578b6] 4240                      clr.w      d0
[000578b8] 584f                      addq.w     #4,a7
[000578ba] 4e75                      rts

gs_CheckCommand:
[000578bc] 4fef fff2                 lea.l      -14(a7),a7
[000578c0] 3f40 000c                 move.w     d0,12(a7)
[000578c4] 2f48 0008                 move.l     a0,8(a7)
[000578c8] 2f49 0004                 move.l     a1,4(a7)
[000578cc] 0c6f 0002 000c            cmpi.w     #$0002,12(a7)
[000578d2] 6c06                      bge.s      gs_CheckCommand_1
[000578d4] 7002                      moveq.l    #2,d0
[000578d6] 6000 0090                 bra        gs_CheckCommand_2
gs_CheckCommand_1:
[000578da] 487a fe8c                 pea.l      _gs_search(pc)
[000578de] 7208                      moveq.l    #8,d1
[000578e0] 3039 000d 4b82            move.w     _gs_cmd_anzahl,d0
[000578e6] 48c0                      ext.l      d0
[000578e8] 43f9 000d 4b52            lea.l      _gs_commands,a1
[000578ee] 206f 000c                 movea.l    12(a7),a0
[000578f2] 2068 0004                 movea.l    4(a0),a0
[000578f6] 4eb9 0007 5178            jsr        bsearch
[000578fc] 584f                      addq.w     #4,a7
[000578fe] 2e88                      move.l     a0,(a7)
[00057900] 2017                      move.l     (a7),d0
[00057902] 6736                      beq.s      gs_CheckCommand_3
[00057904] 206f 0004                 movea.l    4(a7),a0
[00057908] 2050                      movea.l    (a0),a0
[0005790a] 2050                      movea.l    (a0),a0
[0005790c] 4eb9 0004 7e26            jsr        Ax_free
[00057912] 41f9 000d 4bd9            lea.l      $000D4BD9,a0
[00057918] 4eb9 0004 36d6            jsr        Ast_create
[0005791e] 226f 0004                 movea.l    4(a7),a1
[00057922] 2251                      movea.l    (a1),a1
[00057924] 2288                      move.l     a0,(a1)
[00057926] 206f 0004                 movea.l    4(a7),a0
[0005792a] 317c 0001 0004            move.w     #$0001,4(a0)
[00057930] 206f 0004                 movea.l    4(a7),a0
[00057934] 4268 0006                 clr.w      6(a0)
[00057938] 6026                      bra.s      gs_CheckCommand_4
gs_CheckCommand_3:
[0005793a] 2f2f 0004                 move.l     4(a7),-(a7)
[0005793e] 226f 000c                 movea.l    12(a7),a1
[00057942] 2f09                      move.l     a1,-(a7)
[00057944] 4eb9 0004 e608            jsr        Awi_root
[0005794a] 302f 0014                 move.w     20(a7),d0
[0005794e] 225f                      movea.l    (a7)+,a1
[00057950] 4eb9 0005 2328            jsr        Awi_gemscript
[00057956] 584f                      addq.w     #4,a7
[00057958] 206f 0004                 movea.l    4(a7),a0
[0005795c] 3140 0006                 move.w     d0,6(a0)
gs_CheckCommand_4:
[00057960] 206f 0004                 movea.l    4(a7),a0
[00057964] 3028 0006                 move.w     6(a0),d0
gs_CheckCommand_2:
[00057968] 4fef 000e                 lea.l      14(a7),a7
[0005796c] 4e75                      rts

gs_Quit:
[0005796e] 594f                      subq.w     #4,a7
[00057970] 2e89                      move.l     a1,(a7)
[00057972] 4eb9 0004 640a            jsr        Aev_quit
[00057978] 2057                      movea.l    (a7),a0
[0005797a] 2050                      movea.l    (a0),a0
[0005797c] 2050                      movea.l    (a0),a0
[0005797e] 4eb9 0004 7e26            jsr        Ax_free
[00057984] 41f9 000d 4bdb            lea.l      $000D4BDB,a0
[0005798a] 4eb9 0004 36d6            jsr        Ast_create
[00057990] 2257                      movea.l    (a7),a1
[00057992] 2251                      movea.l    (a1),a1
[00057994] 2288                      move.l     a0,(a1)
[00057996] 2057                      movea.l    (a7),a0
[00057998] 317c 0001 0004            move.w     #$0001,4(a0)
[0005799e] 4240                      clr.w      d0
[000579a0] 584f                      addq.w     #4,a7
[000579a2] 4e75                      rts

gs_GetAllCommands:
[000579a4] 2f0a                      move.l     a2,-(a7)
[000579a6] 4fef ffe2                 lea.l      -30(a7),a7
[000579aa] 3f40 001c                 move.w     d0,28(a7)
[000579ae] 2f48 0018                 move.l     a0,24(a7)
[000579b2] 2f49 0014                 move.l     a1,20(a7)
[000579b6] 4eb9 0004 e46a            jsr        Awi_ontop
[000579bc] 2e88                      move.l     a0,(a7)
[000579be] 2f2f 0014                 move.l     20(a7),-(a7)
[000579c2] 226f 001c                 movea.l    28(a7),a1
[000579c6] 302f 0020                 move.w     32(a7),d0
[000579ca] 206f 0004                 movea.l    4(a7),a0
[000579ce] 246f 0004                 movea.l    4(a7),a2
[000579d2] 246a 0096                 movea.l    150(a2),a2
[000579d6] 4e92                      jsr        (a2)
[000579d8] 584f                      addq.w     #4,a7
[000579da] 3f40 0012                 move.w     d0,18(a7)
[000579de] 302f 0012                 move.w     18(a7),d0
[000579e2] 6708                      beq.s      gs_GetAllCommands_1
[000579e4] 302f 0012                 move.w     18(a7),d0
[000579e8] 6000 0212                 bra        gs_GetAllCommands_2
gs_GetAllCommands_1:
[000579ec] 3039 000d 4b82            move.w     _gs_cmd_anzahl,d0
[000579f2] 206f 0014                 movea.l    20(a7),a0
[000579f6] d068 0004                 add.w      4(a0),d0
[000579fa] 3f40 000c                 move.w     d0,12(a7)
[000579fe] 302f 000c                 move.w     12(a7),d0
[00057a02] 48c0                      ext.l      d0
[00057a04] e588                      lsl.l      #2,d0
[00057a06] 4eb9 0004 7cc8            jsr        Ax_malloc
[00057a0c] 2f48 0008                 move.l     a0,8(a7)
[00057a10] 202f 0008                 move.l     8(a7),d0
[00057a14] 6606                      bne.s      gs_GetAllCommands_3
[00057a16] 7002                      moveq.l    #2,d0
[00057a18] 6000 01e2                 bra        gs_GetAllCommands_2
gs_GetAllCommands_3:
[00057a1c] 322f 000c                 move.w     12(a7),d1
[00057a20] 48c1                      ext.l      d1
[00057a22] e589                      lsl.l      #2,d1
[00057a24] 4240                      clr.w      d0
[00057a26] 206f 0008                 movea.l    8(a7),a0
[00057a2a] 4eb9 0007 712e            jsr        memset
[00057a30] 426f 0012                 clr.w      18(a7)
[00057a34] 6046                      bra.s      gs_GetAllCommands_4
gs_GetAllCommands_6:
[00057a36] 302f 0012                 move.w     18(a7),d0
[00057a3a] e748                      lsl.w      #3,d0
[00057a3c] 41f9 000d 4b52            lea.l      _gs_commands,a0
[00057a42] 2070 0000                 movea.l    0(a0,d0.w),a0
[00057a46] 4eb9 0004 36d6            jsr        Ast_create
[00057a4c] 302f 0012                 move.w     18(a7),d0
[00057a50] 48c0                      ext.l      d0
[00057a52] e588                      lsl.l      #2,d0
[00057a54] 226f 0008                 movea.l    8(a7),a1
[00057a58] 2388 0800                 move.l     a0,0(a1,d0.l)
[00057a5c] 202f 0008                 move.l     8(a7),d0
[00057a60] 6616                      bne.s      gs_GetAllCommands_5
[00057a62] 3039 000d 4b82            move.w     _gs_cmd_anzahl,d0
[00057a68] 206f 0008                 movea.l    8(a7),a0
[00057a6c] 4eb9 0004 418a            jsr        Ast_deleteAry
[00057a72] 7002                      moveq.l    #2,d0
[00057a74] 6000 0186                 bra        gs_GetAllCommands_2
gs_GetAllCommands_5:
[00057a78] 526f 0012                 addq.w     #1,18(a7)
gs_GetAllCommands_4:
[00057a7c] 302f 0012                 move.w     18(a7),d0
[00057a80] b079 000d 4b82            cmp.w      _gs_cmd_anzahl,d0
[00057a86] 6dae                      blt.s      gs_GetAllCommands_6
[00057a88] 206f 0014                 movea.l    20(a7),a0
[00057a8c] 3028 0004                 move.w     4(a0),d0
[00057a90] 48c0                      ext.l      d0
[00057a92] e588                      lsl.l      #2,d0
[00057a94] 206f 0014                 movea.l    20(a7),a0
[00057a98] 2250                      movea.l    (a0),a1
[00057a9a] 3239 000d 4b82            move.w     _gs_cmd_anzahl,d1
[00057aa0] 48c1                      ext.l      d1
[00057aa2] e589                      lsl.l      #2,d1
[00057aa4] 206f 0008                 movea.l    8(a7),a0
[00057aa8] d1c1                      adda.l     d1,a0
[00057aaa] 4eb9 0007 6f44            jsr        memcpy
[00057ab0] 43fa fcd0                 lea.l      _gs_strcmp(pc),a1
[00057ab4] 7204                      moveq.l    #4,d1
[00057ab6] 302f 000c                 move.w     12(a7),d0
[00057aba] 48c0                      ext.l      d0
[00057abc] 206f 0008                 movea.l    8(a7),a0
[00057ac0] 4eb9 0007 5314            jsr        qsort
[00057ac6] 426f 000e                 clr.w      14(a7)
[00057aca] 3f7c 0001 0012            move.w     #$0001,18(a7)
[00057ad0] 6032                      bra.s      gs_GetAllCommands_7
gs_GetAllCommands_9:
[00057ad2] 302f 0012                 move.w     18(a7),d0
[00057ad6] 48c0                      ext.l      d0
[00057ad8] e588                      lsl.l      #2,d0
[00057ada] 206f 0008                 movea.l    8(a7),a0
[00057ade] 2270 0800                 movea.l    0(a0,d0.l),a1
[00057ae2] 302f 0012                 move.w     18(a7),d0
[00057ae6] 48c0                      ext.l      d0
[00057ae8] e588                      lsl.l      #2,d0
[00057aea] 206f 0008                 movea.l    8(a7),a0
[00057aee] 2070 08fc                 movea.l    -4(a0,d0.l),a0
[00057af2] 4eb9 0004 38ac            jsr        Ast_icmp
[00057af8] 4a40                      tst.w      d0
[00057afa] 6604                      bne.s      gs_GetAllCommands_8
[00057afc] 526f 000e                 addq.w     #1,14(a7)
gs_GetAllCommands_8:
[00057b00] 526f 0012                 addq.w     #1,18(a7)
gs_GetAllCommands_7:
[00057b04] 302f 0012                 move.w     18(a7),d0
[00057b08] b06f 000c                 cmp.w      12(a7),d0
[00057b0c] 6dc4                      blt.s      gs_GetAllCommands_9
[00057b0e] 302f 000c                 move.w     12(a7),d0
[00057b12] 906f 000e                 sub.w      14(a7),d0
[00057b16] 48c0                      ext.l      d0
[00057b18] e588                      lsl.l      #2,d0
[00057b1a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00057b20] 2f48 0004                 move.l     a0,4(a7)
[00057b24] 202f 0004                 move.l     4(a7),d0
[00057b28] 6700 00ac                 beq        gs_GetAllCommands_10
[00057b2c] 206f 0008                 movea.l    8(a7),a0
[00057b30] 226f 0004                 movea.l    4(a7),a1
[00057b34] 2290                      move.l     (a0),(a1)
[00057b36] 3f7c 0001 0012            move.w     #$0001,18(a7)
[00057b3c] 3f7c 0001 0010            move.w     #$0001,16(a7)
[00057b42] 6060                      bra.s      gs_GetAllCommands_11
gs_GetAllCommands_14:
[00057b44] 302f 0010                 move.w     16(a7),d0
[00057b48] 48c0                      ext.l      d0
[00057b4a] e588                      lsl.l      #2,d0
[00057b4c] 206f 0004                 movea.l    4(a7),a0
[00057b50] 2270 08fc                 movea.l    -4(a0,d0.l),a1
[00057b54] 302f 0012                 move.w     18(a7),d0
[00057b58] 48c0                      ext.l      d0
[00057b5a] e588                      lsl.l      #2,d0
[00057b5c] 206f 0008                 movea.l    8(a7),a0
[00057b60] 2070 0800                 movea.l    0(a0,d0.l),a0
[00057b64] 4eb9 0004 38ac            jsr        Ast_icmp
[00057b6a] 4a40                      tst.w      d0
[00057b6c] 6732                      beq.s      gs_GetAllCommands_12
[00057b6e] 302f 0012                 move.w     18(a7),d0
[00057b72] 48c0                      ext.l      d0
[00057b74] e588                      lsl.l      #2,d0
[00057b76] 206f 0008                 movea.l    8(a7),a0
[00057b7a] 322f 0010                 move.w     16(a7),d1
[00057b7e] 48c1                      ext.l      d1
[00057b80] e589                      lsl.l      #2,d1
[00057b82] 226f 0004                 movea.l    4(a7),a1
[00057b86] 23b0 0800 1800            move.l     0(a0,d0.l),0(a1,d1.l)
[00057b8c] 526f 0010                 addq.w     #1,16(a7)
[00057b90] 302f 0012                 move.w     18(a7),d0
[00057b94] 48c0                      ext.l      d0
[00057b96] e588                      lsl.l      #2,d0
[00057b98] 206f 0008                 movea.l    8(a7),a0
[00057b9c] 42b0 0800                 clr.l      0(a0,d0.l)
gs_GetAllCommands_12:
[00057ba0] 526f 0012                 addq.w     #1,18(a7)
gs_GetAllCommands_11:
[00057ba4] 302f 0012                 move.w     18(a7),d0
[00057ba8] b06f 000c                 cmp.w      12(a7),d0
[00057bac] 6c10                      bge.s      gs_GetAllCommands_13
[00057bae] 302f 000c                 move.w     12(a7),d0
[00057bb2] 906f 000e                 sub.w      14(a7),d0
[00057bb6] 322f 0010                 move.w     16(a7),d1
[00057bba] b240                      cmp.w      d0,d1
[00057bbc] 6d86                      blt.s      gs_GetAllCommands_14
gs_GetAllCommands_13:
[00057bbe] 302f 000c                 move.w     12(a7),d0
[00057bc2] 206f 0008                 movea.l    8(a7),a0
[00057bc6] 4eb9 0004 418a            jsr        Ast_deleteAry
[00057bcc] 302f 000e                 move.w     14(a7),d0
[00057bd0] 916f 000c                 sub.w      d0,12(a7)
[00057bd4] 6006                      bra.s      gs_GetAllCommands_15
gs_GetAllCommands_10:
[00057bd6] 2f6f 0008 0004            move.l     8(a7),4(a7)
gs_GetAllCommands_15:
[00057bdc] 206f 0014                 movea.l    20(a7),a0
[00057be0] 2050                      movea.l    (a0),a0
[00057be2] 4eb9 0004 7e26            jsr        Ax_free
[00057be8] 206f 0014                 movea.l    20(a7),a0
[00057bec] 316f 000c 0004            move.w     12(a7),4(a0)
[00057bf2] 206f 0014                 movea.l    20(a7),a0
[00057bf6] 20af 0004                 move.l     4(a7),(a0)
[00057bfa] 4240                      clr.w      d0
gs_GetAllCommands_2:
[00057bfc] 4fef 001e                 lea.l      30(a7),a7
[00057c00] 245f                      movea.l    (a7)+,a2
[00057c02] 4e75                      rts

		.data

gs_infodata:
[000d4b42]                           dc.b $00
[000d4b43]                           dc.b $00
[000d4b44]                           dc.b $00
[000d4b45]                           dc.b $00
gs_connect:
[000d4b46]                           dc.b $00
[000d4b47]                           dc.b $00
[000d4b48]                           dc.b $00
[000d4b49]                           dc.b $00
[000d4b4a]                           dc.b $00
[000d4b4b]                           dc.b $00
[000d4b4c]                           dc.b $00
[000d4b4d]                           dc.b $00
[000d4b4e]                           dc.b $00
[000d4b4f]                           dc.b $02
[000d4b50]                           dc.b $00
[000d4b51]                           dc.b $01
_gs_commands:
[000d4b52] 000d4b97                  dc.l $000d4b97 ; no symbol found
[000d4b56] 000578bc                  dc.l gs_CheckCommand
[000d4b5a] 000d4ba4                  dc.l $000d4ba4 ; no symbol found
[000d4b5e] 0005784a                  dc.l gs_SendToTopWindow
[000d4b62] 000d4bad                  dc.l $000d4bad ; no symbol found
[000d4b66] 0005796e                  dc.l gs_Quit
[000d4b6a] 000d4bb2                  dc.l $000d4bb2 ; no symbol found
[000d4b6e] 00057888                  dc.l gs_AppGetLongName
[000d4b72] 000d4bc1                  dc.l $000d4bc1 ; no symbol found
[000d4b76] 0005784a                  dc.l gs_SendToTopWindow
[000d4b7a] 000d4bca                  dc.l $000d4bca ; no symbol found
[000d4b7e] 000579a4                  dc.l gs_GetAllCommands
_gs_cmd_anzahl:
[000d4b82]                           dc.b $00
[000d4b83]                           dc.b $06
_gs_sorted:
[000d4b84]                           dc.b $00
[000d4b85]                           dc.b $00
xd4b86:
[000d4b86]                           dc.w $3000
xd4b88:
[000d4b88]                           dc.b $00
xd4b89:
[000d4b89]                           dc.b $01
[000d4b8a]                           dc.w $0203
[000d4b8c]                           dc.w $0405
[000d4b8e]                           dc.w $0600
[000d4b90]                           dc.b $00
xd4b91:
[000d4b91]                           dc.b $30
[000d4b92]                           dc.b $00
xd4b93:
[000d4b93]                           dc.b $31
[000d4b94]                           dc.b $00
xd4b95:
[000d4b95]                           dc.b $00
xd4b96:
[000d4b96]                           dc.b $00
xd4b97:
[000d4b97]                           dc.b 'CheckCommand',0
xd4ba4:
[000d4ba4]                           dc.b 'GetFront',0
xd4bad:
[000d4bad]                           dc.b 'Quit',0
xd4bb2:
[000d4bb2]                           dc.b 'AppGetLongName',0
xd4bc1:
[000d4bc1]                           dc.b 'KeyPress',0
xd4bca:
[000d4bca]                           dc.b 'GetAllCommands',0
xd4bd9:
[000d4bd9]                           dc.b $31
[000d4bda]                           dc.b $00
xd4bdb:
[000d4bdb]                           dc.b $31
[000d4bdc]                           dc.b $00
		.even
