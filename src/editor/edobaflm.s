
set_it:
[00030db6] 48e7 0830                 movem.l    d4/a2-a3,-(a7)
[00030dba] 2448                      movea.l    a0,a2
[00030dbc] 3801                      move.w     d1,d4
[00030dbe] 2649                      movea.l    a1,a3
[00030dc0] 48c0                      ext.l      d0
[00030dc2] 2200                      move.l     d0,d1
[00030dc4] d281                      add.l      d1,d1
[00030dc6] d280                      add.l      d0,d1
[00030dc8] e789                      lsl.l      #3,d1
[00030dca] 3232 1802                 move.w     2(a2,d1.l),d1
[00030dce] 48c1                      ext.l      d1
[00030dd0] 2401                      move.l     d1,d2
[00030dd2] d482                      add.l      d2,d2
[00030dd4] d481                      add.l      d1,d2
[00030dd6] e78a                      lsl.l      #3,d2
[00030dd8] 41f2 2800                 lea.l      0(a2,d2.l),a0
[00030ddc] 7408                      moveq.l    #8,d2
[00030dde] c468 000a                 and.w      10(a0),d2
[00030de2] 6612                      bne.s      set_it_1
[00030de4] 7001                      moveq.l    #1,d0
[00030de6] c068 000a                 and.w      10(a0),d0
[00030dea] 6704                      beq.s      set_it_2
[00030dec] 8951                      or.w       d4,(a1)
[00030dee] 6006                      bra.s      set_it_1
set_it_2:
[00030df0] 3004                      move.w     d4,d0
[00030df2] 4640                      not.w      d0
[00030df4] c153                      and.w      d0,(a3)
set_it_1:
[00030df6] 4cdf 0c10                 movem.l    (a7)+,d4/a2-a3
[00030dfa] 4e75                      rts

edafl_ok:
[00030dfc] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00030e00] 514f                      subq.w     #8,a7
[00030e02] 2079 0010 1f12            movea.l    ACSblk,a0
[00030e08] 2268 0258                 movea.l    600(a0),a1
[00030e0c] 2051                      movea.l    (a1),a0
[00030e0e] 2469 0014                 movea.l    20(a1),a2
[00030e12] 2250                      movea.l    (a0),a1
[00030e14] 0069 0001 0006            ori.w      #$0001,6(a1)
[00030e1a] 2268 0004                 movea.l    4(a0),a1
[00030e1e] 2f69 0004 0004            move.l     4(a1),4(a7)
[00030e24] 2ea8 001e                 move.l     30(a0),(a7)
[00030e28] 6700 0190                 beq        edafl_ok_1
[00030e2c] 2057                      movea.l    (a7),a0
[00030e2e] 5497                      addq.l     #2,(a7)
[00030e30] 3610                      move.w     (a0),d3
[00030e32] 4eb9 0004 9902            jsr        Amo_busy
[00030e38] 6000 016a                 bra        edafl_ok_2
edafl_ok_7:
[00030e3c] 2057                      movea.l    (a7),a0
[00030e3e] 5497                      addq.l     #2,(a7)
[00030e40] 3210                      move.w     (a0),d1
[00030e42] 48c1                      ext.l      d1
[00030e44] 2001                      move.l     d1,d0
[00030e46] e788                      lsl.l      #3,d0
[00030e48] 9081                      sub.l      d1,d0
[00030e4a] e788                      lsl.l      #3,d0
[00030e4c] 266f 0004                 movea.l    4(a7),a3
[00030e50] d7c0                      adda.l     d0,a3
[00030e52] 49eb 0010                 lea.l      16(a3),a4
[00030e56] 224c                      movea.l    a4,a1
[00030e58] 7204                      moveq.l    #4,d1
[00030e5a] 7002                      moveq.l    #2,d0
[00030e5c] 204a                      movea.l    a2,a0
[00030e5e] 6100 ff56                 bsr        set_it
[00030e62] 224c                      movea.l    a4,a1
[00030e64] 7240                      moveq.l    #64,d1
[00030e66] 700b                      moveq.l    #11,d0
[00030e68] 204a                      movea.l    a2,a0
[00030e6a] 6100 ff4a                 bsr        set_it
[00030e6e] 224c                      movea.l    a4,a1
[00030e70] 7202                      moveq.l    #2,d1
[00030e72] 7014                      moveq.l    #20,d0
[00030e74] 204a                      movea.l    a2,a0
[00030e76] 6100 ff3e                 bsr        set_it
[00030e7a] 224c                      movea.l    a4,a1
[00030e7c] 323c 4000                 move.w     #$4000,d1
[00030e80] 701d                      moveq.l    #29,d0
[00030e82] 204a                      movea.l    a2,a0
[00030e84] 6100 ff30                 bsr        set_it
[00030e88] 224c                      movea.l    a4,a1
[00030e8a] 7201                      moveq.l    #1,d1
[00030e8c] 7005                      moveq.l    #5,d0
[00030e8e] 204a                      movea.l    a2,a0
[00030e90] 6100 ff24                 bsr        set_it
[00030e94] 303c 0080                 move.w     #$0080,d0
[00030e98] c06a 0158                 and.w      344(a2),d0
[00030e9c] 660c                      bne.s      edafl_ok_3
[00030e9e] 224c                      movea.l    a4,a1
[00030ea0] 7208                      moveq.l    #8,d1
[00030ea2] 204a                      movea.l    a2,a0
[00030ea4] 700e                      moveq.l    #14,d0
[00030ea6] 6100 ff0e                 bsr        set_it
edafl_ok_3:
[00030eaa] 224c                      movea.l    a4,a1
[00030eac] 7210                      moveq.l    #16,d1
[00030eae] 7017                      moveq.l    #23,d0
[00030eb0] 204a                      movea.l    a2,a0
[00030eb2] 6100 ff02                 bsr        set_it
[00030eb6] 224c                      movea.l    a4,a1
[00030eb8] 323c 2000                 move.w     #$2000,d1
[00030ebc] 7008                      moveq.l    #8,d0
[00030ebe] 204a                      movea.l    a2,a0
[00030ec0] 6100 fef4                 bsr        set_it
[00030ec4] 224c                      movea.l    a4,a1
[00030ec6] 323c 1000                 move.w     #$1000,d1
[00030eca] 7011                      moveq.l    #17,d0
[00030ecc] 204a                      movea.l    a2,a0
[00030ece] 6100 fee6                 bsr        set_it
[00030ed2] 224c                      movea.l    a4,a1
[00030ed4] 323c 0800                 move.w     #$0800,d1
[00030ed8] 701a                      moveq.l    #26,d0
[00030eda] 204a                      movea.l    a2,a0
[00030edc] 6100 fed8                 bsr        set_it
[00030ee0] 303c 0080                 move.w     #$0080,d0
[00030ee4] c06a 0518                 and.w      1304(a2),d0
[00030ee8] 6628                      bne.s      edafl_ok_4
[00030eea] 0254 f9ff                 andi.w     #$F9FF,(a4)
[00030eee] 7001                      moveq.l    #1,d0
[00030ef0] c06a 0562                 and.w      1378(a2),d0
[00030ef4] 6704                      beq.s      edafl_ok_5
[00030ef6] 0054 0200                 ori.w      #$0200,(a4)
edafl_ok_5:
[00030efa] 7001                      moveq.l    #1,d0
[00030efc] c06a 05c2                 and.w      1474(a2),d0
[00030f00] 6704                      beq.s      edafl_ok_6
[00030f02] 0054 0400                 ori.w      #$0400,(a4)
edafl_ok_6:
[00030f06] 7001                      moveq.l    #1,d0
[00030f08] c06a 0592                 and.w      1426(a2),d0
[00030f0c] 6704                      beq.s      edafl_ok_4
[00030f0e] 0054 0600                 ori.w      #$0600,(a4)
edafl_ok_4:
[00030f12] 49eb 0012                 lea.l      18(a3),a4
[00030f16] 224c                      movea.l    a4,a1
[00030f18] 323c 2000                 move.w     #$2000,d1
[00030f1c] 7020                      moveq.l    #32,d0
[00030f1e] 204a                      movea.l    a2,a0
[00030f20] 6100 fe94                 bsr        set_it
[00030f24] 224c                      movea.l    a4,a1
[00030f26] 7201                      moveq.l    #1,d1
[00030f28] 7024                      moveq.l    #36,d0
[00030f2a] 204a                      movea.l    a2,a0
[00030f2c] 6100 fe88                 bsr        set_it
[00030f30] 224c                      movea.l    a4,a1
[00030f32] 7208                      moveq.l    #8,d1
[00030f34] 702a                      moveq.l    #42,d0
[00030f36] 204a                      movea.l    a2,a0
[00030f38] 6100 fe7c                 bsr        set_it
[00030f3c] 224c                      movea.l    a4,a1
[00030f3e] 7202                      moveq.l    #2,d1
[00030f40] 7027                      moveq.l    #39,d0
[00030f42] 204a                      movea.l    a2,a0
[00030f44] 6100 fe70                 bsr        set_it
[00030f48] 224c                      movea.l    a4,a1
[00030f4a] 7204                      moveq.l    #4,d1
[00030f4c] 702d                      moveq.l    #45,d0
[00030f4e] 204a                      movea.l    a2,a0
[00030f50] 6100 fe64                 bsr        set_it
[00030f54] 224c                      movea.l    a4,a1
[00030f56] 7210                      moveq.l    #16,d1
[00030f58] 7030                      moveq.l    #48,d0
[00030f5a] 204a                      movea.l    a2,a0
[00030f5c] 6100 fe58                 bsr        set_it
[00030f60] 224c                      movea.l    a4,a1
[00030f62] 7220                      moveq.l    #32,d1
[00030f64] 7033                      moveq.l    #51,d0
[00030f66] 204a                      movea.l    a2,a0
[00030f68] 6100 fe4c                 bsr        set_it
[00030f6c] 224c                      movea.l    a4,a1
[00030f6e] 323c 0200                 move.w     #$0200,d1
[00030f72] 7040                      moveq.l    #64,d0
[00030f74] 204a                      movea.l    a2,a0
[00030f76] 6100 fe3e                 bsr        set_it
[00030f7a] 224c                      movea.l    a4,a1
[00030f7c] 323c 0400                 move.w     #$0400,d1
[00030f80] 7049                      moveq.l    #73,d0
[00030f82] 204a                      movea.l    a2,a0
[00030f84] 6100 fe30                 bsr        set_it
[00030f88] 224c                      movea.l    a4,a1
[00030f8a] 323c 0100                 move.w     #$0100,d1
[00030f8e] 7043                      moveq.l    #67,d0
[00030f90] 204a                      movea.l    a2,a0
[00030f92] 6100 fe22                 bsr        set_it
[00030f96] 224c                      movea.l    a4,a1
[00030f98] 323c 0800                 move.w     #$0800,d1
[00030f9c] 7046                      moveq.l    #70,d0
[00030f9e] 204a                      movea.l    a2,a0
[00030fa0] 6100 fe14                 bsr        set_it
edafl_ok_2:
[00030fa4] 3003                      move.w     d3,d0
[00030fa6] 5343                      subq.w     #1,d3
[00030fa8] 4a40                      tst.w      d0
[00030faa] 6e00 fe90                 bgt        edafl_ok_7
[00030fae] 4eb9 0004 9940            jsr        Amo_unbusy
[00030fb4] 4eb9 0002 d91e            jsr        ed_abort
edafl_ok_1:
[00030fba] 504f                      addq.w     #8,a7
[00030fbc] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00030fc0] 4e75                      rts

preset_it:
[00030fc2] 48e7 1c20                 movem.l    d3-d5/a2,-(a7)
[00030fc6] 2448                      movea.l    a0,a2
[00030fc8] 3600                      move.w     d0,d3
[00030fca] 3801                      move.w     d1,d4
[00030fcc] 3a02                      move.w     d2,d5
[00030fce] 48c0                      ext.l      d0
[00030fd0] 2200                      move.l     d0,d1
[00030fd2] d281                      add.l      d1,d1
[00030fd4] d280                      add.l      d0,d1
[00030fd6] e789                      lsl.l      #3,d1
[00030fd8] 3232 1802                 move.w     2(a2,d1.l),d1
[00030fdc] 48c1                      ext.l      d1
[00030fde] 2401                      move.l     d1,d2
[00030fe0] d482                      add.l      d2,d2
[00030fe2] d481                      add.l      d1,d2
[00030fe4] e78a                      lsl.l      #3,d2
[00030fe6] 41f2 2800                 lea.l      0(a2,d2.l),a0
[00030fea] 4a44                      tst.w      d4
[00030fec] 6604                      bne.s      preset_it_1
[00030fee] 4a45                      tst.w      d5
[00030ff0] 6706                      beq.s      preset_it_2
preset_it_1:
[00030ff2] 0268 fff7 000a            andi.w     #$FFF7,10(a0)
preset_it_2:
[00030ff8] 4a44                      tst.w      d4
[00030ffa] 6706                      beq.s      preset_it_3
[00030ffc] 0068 0001 000a            ori.w      #$0001,10(a0)
preset_it_3:
[00031002] 0c6f 0001 0014            cmpi.w     #$0001,20(a7)
[00031008] 6616                      bne.s      preset_it_4
[0003100a] 3203                      move.w     d3,d1
[0003100c] 48c1                      ext.l      d1
[0003100e] 2001                      move.l     d1,d0
[00031010] d080                      add.l      d0,d0
[00031012] d081                      add.l      d1,d0
[00031014] e788                      lsl.l      #3,d0
[00031016] 25bc 0003 142c 0818       move.l     #ea_duostate,24(a2,d0.l)
[0003101e] 6014                      bra.s      preset_it_5
preset_it_4:
[00031020] 3203                      move.w     d3,d1
[00031022] 48c1                      ext.l      d1
[00031024] 2001                      move.l     d1,d0
[00031026] d080                      add.l      d0,d0
[00031028] d081                      add.l      d1,d0
[0003102a] e788                      lsl.l      #3,d0
[0003102c] 25bc 0003 13b0 0818       move.l     #ea_tristate,24(a2,d0.l)
preset_it_5:
[00031034] 4cdf 0438                 movem.l    (a7)+,d3-d5/a2
[00031038] 4e75                      rts

set_aflags:
[0003103a] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0003103e] 554f                      subq.w     #2,a7
[00031040] 4243                      clr.w      d3
[00031042] 47f9 000c 0406            lea.l      sm,a3
[00031048] 41eb f760                 lea.l      -2208(a3),a0
[0003104c] 4eb9 0004 9a5c            jsr        Aob_create
[00031052] 2448                      movea.l    a0,a2
[00031054] 200a                      move.l     a2,d0
[00031056] 6606                      bne.s      set_aflags_1
[00031058] 91c8                      suba.l     a0,a0
[0003105a] 6000 034c                 bra        set_aflags_2
set_aflags_1:
[0003105e] 268a                      move.l     a2,(a3)
[00031060] 2079 0010 1f12            movea.l    ACSblk,a0
[00031066] 2268 0258                 movea.l    600(a0),a1
[0003106a] 2a51                      movea.l    (a1),a5
[0003106c] 383c ffff                 move.w     #$FFFF,d4
[00031070] 3a04                      move.w     d4,d5
[00031072] 4246                      clr.w      d6
[00031074] 3e06                      move.w     d6,d7
[00031076] 4eb9 0004 9902            jsr        Amo_busy
[0003107c] 4eb9 0004 4840            jsr        Adr_start
[00031082] 6034                      bra.s      set_aflags_3
set_aflags_4:
[00031084] 72fe                      moveq.l    #-2,d1
[00031086] d257                      add.w      (a7),d1
[00031088] 48c1                      ext.l      d1
[0003108a] 83fc 0003                 divs.w     #$0003,d1
[0003108e] 48c1                      ext.l      d1
[00031090] 2001                      move.l     d1,d0
[00031092] e788                      lsl.l      #3,d0
[00031094] 9081                      sub.l      d1,d0
[00031096] e788                      lsl.l      #3,d0
[00031098] 206d 0004                 movea.l    4(a5),a0
[0003109c] 2068 0004                 movea.l    4(a0),a0
[000310a0] d1c0                      adda.l     d0,a0
[000310a2] 49e8 0008                 lea.l      8(a0),a4
[000310a6] ca6c 000a                 and.w      10(a4),d5
[000310aa] 8e6c 000a                 or.w       10(a4),d7
[000310ae] c86c 0008                 and.w      8(a4),d4
[000310b2] 8c6c 0008                 or.w       8(a4),d6
[000310b6] 5243                      addq.w     #1,d3
set_aflags_3:
[000310b8] 4eb9 0004 484c            jsr        Adr_next
[000310be] 3e80                      move.w     d0,(a7)
[000310c0] 6ac2                      bpl.s      set_aflags_4
[000310c2] 4bf9 000f f652            lea.l      wintitel,a5
[000310c8] b67c 0001                 cmp.w      #$0001,d3
[000310cc] 6648                      bne.s      set_aflags_5
[000310ce] 43eb f2ea                 lea.l      -3350(a3),a1
[000310d2] 204d                      movea.l    a5,a0
[000310d4] 4eb9 0007 6950            jsr        strcpy
[000310da] 302c 0008                 move.w     8(a4),d0
[000310de] c07c 0600                 and.w      #$0600,d0
[000310e2] 907c 0200                 sub.w      #$0200,d0
[000310e6] 670e                      beq.s      set_aflags_6
[000310e8] 907c 0200                 sub.w      #$0200,d0
[000310ec] 6710                      beq.s      set_aflags_7
[000310ee] 907c 0200                 sub.w      #$0200,d0
[000310f2] 6712                      beq.s      set_aflags_8
[000310f4] 6018                      bra.s      set_aflags_9
set_aflags_6:
[000310f6] 006a 0001 0562            ori.w      #$0001,1378(a2)
[000310fc] 602e                      bra.s      set_aflags_10
set_aflags_7:
[000310fe] 006a 0001 05c2            ori.w      #$0001,1474(a2)
[00031104] 6026                      bra.s      set_aflags_10
set_aflags_8:
[00031106] 006a 0001 0592            ori.w      #$0001,1426(a2)
[0003110c] 601e                      bra.s      set_aflags_10
set_aflags_9:
[0003110e] 006a 0001 0532            ori.w      #$0001,1330(a2)
[00031114] 6016                      bra.s      set_aflags_10
set_aflags_5:
[00031116] 3f03                      move.w     d3,-(a7)
[00031118] 43eb f2f4                 lea.l      -3340(a3),a1
[0003111c] 204d                      movea.l    a5,a0
[0003111e] 4eb9 0007 5680            jsr        sprintf
[00031124] 544f                      addq.w     #2,a7
[00031126] 006a 0080 0518            ori.w      #$0080,1304(a2)
set_aflags_10:
[0003112c] 274d 000c                 move.l     a5,12(a3)
[00031130] 3f03                      move.w     d3,-(a7)
[00031132] 7004                      moveq.l    #4,d0
[00031134] c046                      and.w      d6,d0
[00031136] 6604                      bne.s      set_aflags_11
[00031138] 7401                      moveq.l    #1,d2
[0003113a] 6002                      bra.s      set_aflags_12
set_aflags_11:
[0003113c] 4242                      clr.w      d2
set_aflags_12:
[0003113e] 7204                      moveq.l    #4,d1
[00031140] c244                      and.w      d4,d1
[00031142] 7002                      moveq.l    #2,d0
[00031144] 204a                      movea.l    a2,a0
[00031146] 6100 fe7a                 bsr        preset_it
[0003114a] 544f                      addq.w     #2,a7
[0003114c] 3f03                      move.w     d3,-(a7)
[0003114e] 7040                      moveq.l    #64,d0
[00031150] c046                      and.w      d6,d0
[00031152] 6604                      bne.s      set_aflags_13
[00031154] 7401                      moveq.l    #1,d2
[00031156] 6002                      bra.s      set_aflags_14
set_aflags_13:
[00031158] 4242                      clr.w      d2
set_aflags_14:
[0003115a] 7240                      moveq.l    #64,d1
[0003115c] c244                      and.w      d4,d1
[0003115e] 700b                      moveq.l    #11,d0
[00031160] 204a                      movea.l    a2,a0
[00031162] 6100 fe5e                 bsr        preset_it
[00031166] 544f                      addq.w     #2,a7
[00031168] 3f03                      move.w     d3,-(a7)
[0003116a] 7002                      moveq.l    #2,d0
[0003116c] c046                      and.w      d6,d0
[0003116e] 6604                      bne.s      set_aflags_15
[00031170] 7401                      moveq.l    #1,d2
[00031172] 6002                      bra.s      set_aflags_16
set_aflags_15:
[00031174] 4242                      clr.w      d2
set_aflags_16:
[00031176] 7202                      moveq.l    #2,d1
[00031178] c244                      and.w      d4,d1
[0003117a] 7014                      moveq.l    #20,d0
[0003117c] 204a                      movea.l    a2,a0
[0003117e] 6100 fe42                 bsr        preset_it
[00031182] 544f                      addq.w     #2,a7
[00031184] 3f03                      move.w     d3,-(a7)
[00031186] 3006                      move.w     d6,d0
[00031188] c07c 4000                 and.w      #$4000,d0
[0003118c] 6604                      bne.s      set_aflags_17
[0003118e] 7401                      moveq.l    #1,d2
[00031190] 6002                      bra.s      set_aflags_18
set_aflags_17:
[00031192] 4242                      clr.w      d2
set_aflags_18:
[00031194] 3204                      move.w     d4,d1
[00031196] c27c 4000                 and.w      #$4000,d1
[0003119a] 701d                      moveq.l    #29,d0
[0003119c] 204a                      movea.l    a2,a0
[0003119e] 6100 fe22                 bsr        preset_it
[000311a2] 544f                      addq.w     #2,a7
[000311a4] 3f03                      move.w     d3,-(a7)
[000311a6] 7001                      moveq.l    #1,d0
[000311a8] c046                      and.w      d6,d0
[000311aa] 6604                      bne.s      set_aflags_19
[000311ac] 7401                      moveq.l    #1,d2
[000311ae] 6002                      bra.s      set_aflags_20
set_aflags_19:
[000311b0] 4242                      clr.w      d2
set_aflags_20:
[000311b2] 7201                      moveq.l    #1,d1
[000311b4] c244                      and.w      d4,d1
[000311b6] 7005                      moveq.l    #5,d0
[000311b8] 204a                      movea.l    a2,a0
[000311ba] 6100 fe06                 bsr        preset_it
[000311be] 544f                      addq.w     #2,a7
[000311c0] 3f03                      move.w     d3,-(a7)
[000311c2] 7008                      moveq.l    #8,d0
[000311c4] c046                      and.w      d6,d0
[000311c6] 6604                      bne.s      set_aflags_21
[000311c8] 7401                      moveq.l    #1,d2
[000311ca] 6002                      bra.s      set_aflags_22
set_aflags_21:
[000311cc] 4242                      clr.w      d2
set_aflags_22:
[000311ce] 7208                      moveq.l    #8,d1
[000311d0] c244                      and.w      d4,d1
[000311d2] 700e                      moveq.l    #14,d0
[000311d4] 204a                      movea.l    a2,a0
[000311d6] 6100 fdea                 bsr        preset_it
[000311da] 544f                      addq.w     #2,a7
[000311dc] 3f03                      move.w     d3,-(a7)
[000311de] 7010                      moveq.l    #16,d0
[000311e0] c046                      and.w      d6,d0
[000311e2] 6604                      bne.s      set_aflags_23
[000311e4] 7401                      moveq.l    #1,d2
[000311e6] 6002                      bra.s      set_aflags_24
set_aflags_23:
[000311e8] 4242                      clr.w      d2
set_aflags_24:
[000311ea] 7210                      moveq.l    #16,d1
[000311ec] c244                      and.w      d4,d1
[000311ee] 7017                      moveq.l    #23,d0
[000311f0] 204a                      movea.l    a2,a0
[000311f2] 6100 fdce                 bsr        preset_it
[000311f6] 544f                      addq.w     #2,a7
[000311f8] 3f03                      move.w     d3,-(a7)
[000311fa] 3006                      move.w     d6,d0
[000311fc] c07c 2000                 and.w      #$2000,d0
[00031200] 6604                      bne.s      set_aflags_25
[00031202] 7401                      moveq.l    #1,d2
[00031204] 6002                      bra.s      set_aflags_26
set_aflags_25:
[00031206] 4242                      clr.w      d2
set_aflags_26:
[00031208] 3204                      move.w     d4,d1
[0003120a] c27c 2000                 and.w      #$2000,d1
[0003120e] 7008                      moveq.l    #8,d0
[00031210] 204a                      movea.l    a2,a0
[00031212] 6100 fdae                 bsr        preset_it
[00031216] 544f                      addq.w     #2,a7
[00031218] 3f03                      move.w     d3,-(a7)
[0003121a] 3006                      move.w     d6,d0
[0003121c] c07c 1000                 and.w      #$1000,d0
[00031220] 6604                      bne.s      set_aflags_27
[00031222] 7401                      moveq.l    #1,d2
[00031224] 6002                      bra.s      set_aflags_28
set_aflags_27:
[00031226] 4242                      clr.w      d2
set_aflags_28:
[00031228] 3204                      move.w     d4,d1
[0003122a] c27c 1000                 and.w      #$1000,d1
[0003122e] 7011                      moveq.l    #17,d0
[00031230] 204a                      movea.l    a2,a0
[00031232] 6100 fd8e                 bsr        preset_it
[00031236] 544f                      addq.w     #2,a7
[00031238] 3f03                      move.w     d3,-(a7)
[0003123a] 3006                      move.w     d6,d0
[0003123c] c07c 0800                 and.w      #$0800,d0
[00031240] 6604                      bne.s      set_aflags_29
[00031242] 7401                      moveq.l    #1,d2
[00031244] 6002                      bra.s      set_aflags_30
set_aflags_29:
[00031246] 4242                      clr.w      d2
set_aflags_30:
[00031248] 3204                      move.w     d4,d1
[0003124a] c27c 0800                 and.w      #$0800,d1
[0003124e] 701a                      moveq.l    #26,d0
[00031250] 204a                      movea.l    a2,a0
[00031252] 6100 fd6e                 bsr        preset_it
[00031256] 544f                      addq.w     #2,a7
[00031258] 3f03                      move.w     d3,-(a7)
[0003125a] 3007                      move.w     d7,d0
[0003125c] c07c 2000                 and.w      #$2000,d0
[00031260] 6604                      bne.s      set_aflags_31
[00031262] 7401                      moveq.l    #1,d2
[00031264] 6002                      bra.s      set_aflags_32
set_aflags_31:
[00031266] 4242                      clr.w      d2
set_aflags_32:
[00031268] 3205                      move.w     d5,d1
[0003126a] c27c 2000                 and.w      #$2000,d1
[0003126e] 7020                      moveq.l    #32,d0
[00031270] 204a                      movea.l    a2,a0
[00031272] 6100 fd4e                 bsr        preset_it
[00031276] 544f                      addq.w     #2,a7
[00031278] 3f03                      move.w     d3,-(a7)
[0003127a] 7001                      moveq.l    #1,d0
[0003127c] c047                      and.w      d7,d0
[0003127e] 6604                      bne.s      set_aflags_33
[00031280] 7401                      moveq.l    #1,d2
[00031282] 6002                      bra.s      set_aflags_34
set_aflags_33:
[00031284] 4242                      clr.w      d2
set_aflags_34:
[00031286] 7201                      moveq.l    #1,d1
[00031288] c245                      and.w      d5,d1
[0003128a] 7024                      moveq.l    #36,d0
[0003128c] 204a                      movea.l    a2,a0
[0003128e] 6100 fd32                 bsr        preset_it
[00031292] 544f                      addq.w     #2,a7
[00031294] 3f03                      move.w     d3,-(a7)
[00031296] 7008                      moveq.l    #8,d0
[00031298] c047                      and.w      d7,d0
[0003129a] 6604                      bne.s      set_aflags_35
[0003129c] 7401                      moveq.l    #1,d2
[0003129e] 6002                      bra.s      set_aflags_36
set_aflags_35:
[000312a0] 4242                      clr.w      d2
set_aflags_36:
[000312a2] 7208                      moveq.l    #8,d1
[000312a4] c245                      and.w      d5,d1
[000312a6] 702a                      moveq.l    #42,d0
[000312a8] 204a                      movea.l    a2,a0
[000312aa] 6100 fd16                 bsr        preset_it
[000312ae] 544f                      addq.w     #2,a7
[000312b0] 3f03                      move.w     d3,-(a7)
[000312b2] 7002                      moveq.l    #2,d0
[000312b4] c047                      and.w      d7,d0
[000312b6] 6604                      bne.s      set_aflags_37
[000312b8] 7401                      moveq.l    #1,d2
[000312ba] 6002                      bra.s      set_aflags_38
set_aflags_37:
[000312bc] 4242                      clr.w      d2
set_aflags_38:
[000312be] 7202                      moveq.l    #2,d1
[000312c0] c245                      and.w      d5,d1
[000312c2] 7027                      moveq.l    #39,d0
[000312c4] 204a                      movea.l    a2,a0
[000312c6] 6100 fcfa                 bsr        preset_it
[000312ca] 544f                      addq.w     #2,a7
[000312cc] 3f03                      move.w     d3,-(a7)
[000312ce] 7004                      moveq.l    #4,d0
[000312d0] c047                      and.w      d7,d0
[000312d2] 6604                      bne.s      set_aflags_39
[000312d4] 7401                      moveq.l    #1,d2
[000312d6] 6002                      bra.s      set_aflags_40
set_aflags_39:
[000312d8] 4242                      clr.w      d2
set_aflags_40:
[000312da] 7204                      moveq.l    #4,d1
[000312dc] c245                      and.w      d5,d1
[000312de] 702d                      moveq.l    #45,d0
[000312e0] 204a                      movea.l    a2,a0
[000312e2] 6100 fcde                 bsr        preset_it
[000312e6] 544f                      addq.w     #2,a7
[000312e8] 3f03                      move.w     d3,-(a7)
[000312ea] 7010                      moveq.l    #16,d0
[000312ec] c047                      and.w      d7,d0
[000312ee] 6604                      bne.s      set_aflags_41
[000312f0] 7401                      moveq.l    #1,d2
[000312f2] 6002                      bra.s      set_aflags_42
set_aflags_41:
[000312f4] 4242                      clr.w      d2
set_aflags_42:
[000312f6] 7210                      moveq.l    #16,d1
[000312f8] c245                      and.w      d5,d1
[000312fa] 7030                      moveq.l    #48,d0
[000312fc] 204a                      movea.l    a2,a0
[000312fe] 6100 fcc2                 bsr        preset_it
[00031302] 544f                      addq.w     #2,a7
[00031304] 3f03                      move.w     d3,-(a7)
[00031306] 7020                      moveq.l    #32,d0
[00031308] c047                      and.w      d7,d0
[0003130a] 6604                      bne.s      set_aflags_43
[0003130c] 7401                      moveq.l    #1,d2
[0003130e] 6002                      bra.s      set_aflags_44
set_aflags_43:
[00031310] 4242                      clr.w      d2
set_aflags_44:
[00031312] 7220                      moveq.l    #32,d1
[00031314] c245                      and.w      d5,d1
[00031316] 7033                      moveq.l    #51,d0
[00031318] 204a                      movea.l    a2,a0
[0003131a] 6100 fca6                 bsr        preset_it
[0003131e] 544f                      addq.w     #2,a7
[00031320] 3f03                      move.w     d3,-(a7)
[00031322] 3007                      move.w     d7,d0
[00031324] c07c 0200                 and.w      #$0200,d0
[00031328] 6604                      bne.s      set_aflags_45
[0003132a] 7401                      moveq.l    #1,d2
[0003132c] 6002                      bra.s      set_aflags_46
set_aflags_45:
[0003132e] 4242                      clr.w      d2
set_aflags_46:
[00031330] 3205                      move.w     d5,d1
[00031332] c27c 0200                 and.w      #$0200,d1
[00031336] 7040                      moveq.l    #64,d0
[00031338] 204a                      movea.l    a2,a0
[0003133a] 6100 fc86                 bsr        preset_it
[0003133e] 544f                      addq.w     #2,a7
[00031340] 3f03                      move.w     d3,-(a7)
[00031342] 3007                      move.w     d7,d0
[00031344] c07c 0400                 and.w      #$0400,d0
[00031348] 6604                      bne.s      set_aflags_47
[0003134a] 7401                      moveq.l    #1,d2
[0003134c] 6002                      bra.s      set_aflags_48
set_aflags_47:
[0003134e] 4242                      clr.w      d2
set_aflags_48:
[00031350] 3205                      move.w     d5,d1
[00031352] c27c 0400                 and.w      #$0400,d1
[00031356] 7049                      moveq.l    #73,d0
[00031358] 204a                      movea.l    a2,a0
[0003135a] 6100 fc66                 bsr        preset_it
[0003135e] 544f                      addq.w     #2,a7
[00031360] 3f03                      move.w     d3,-(a7)
[00031362] 3007                      move.w     d7,d0
[00031364] c07c 0100                 and.w      #$0100,d0
[00031368] 6604                      bne.s      set_aflags_49
[0003136a] 7401                      moveq.l    #1,d2
[0003136c] 6002                      bra.s      set_aflags_50
set_aflags_49:
[0003136e] 4242                      clr.w      d2
set_aflags_50:
[00031370] 3205                      move.w     d5,d1
[00031372] c27c 0100                 and.w      #$0100,d1
[00031376] 7043                      moveq.l    #67,d0
[00031378] 204a                      movea.l    a2,a0
[0003137a] 6100 fc46                 bsr        preset_it
[0003137e] 544f                      addq.w     #2,a7
[00031380] 3f03                      move.w     d3,-(a7)
[00031382] 3007                      move.w     d7,d0
[00031384] c07c 0800                 and.w      #$0800,d0
[00031388] 6604                      bne.s      set_aflags_51
[0003138a] 7401                      moveq.l    #1,d2
[0003138c] 6002                      bra.s      set_aflags_52
set_aflags_51:
[0003138e] 4242                      clr.w      d2
set_aflags_52:
[00031390] 3205                      move.w     d5,d1
[00031392] c27c 0800                 and.w      #$0800,d1
[00031396] 7046                      moveq.l    #70,d0
[00031398] 204a                      movea.l    a2,a0
[0003139a] 6100 fc26                 bsr        preset_it
[0003139e] 544f                      addq.w     #2,a7
[000313a0] 4eb9 0004 9940            jsr        Amo_unbusy
[000313a6] 204b                      movea.l    a3,a0
set_aflags_2:
[000313a8] 544f                      addq.w     #2,a7
[000313aa] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[000313ae] 4e75                      rts

ea_tristate:
[000313b0] 2f0a                      move.l     a2,-(a7)
[000313b2] 45f9 0010 1f12            lea.l      ACSblk,a2
[000313b8] 2052                      movea.l    (a2),a0
[000313ba] 3428 0260                 move.w     608(a0),d2
[000313be] 48c2                      ext.l      d2
[000313c0] 2202                      move.l     d2,d1
[000313c2] d281                      add.l      d1,d1
[000313c4] d282                      add.l      d2,d1
[000313c6] e789                      lsl.l      #3,d1
[000313c8] 2268 025c                 movea.l    604(a0),a1
[000313cc] 3231 1802                 move.w     2(a1,d1.l),d1
[000313d0] 48c1                      ext.l      d1
[000313d2] 2001                      move.l     d1,d0
[000313d4] d080                      add.l      d0,d0
[000313d6] d081                      add.l      d1,d0
[000313d8] e788                      lsl.l      #3,d0
[000313da] 2049                      movea.l    a1,a0
[000313dc] d1c0                      adda.l     d0,a0
[000313de] 7008                      moveq.l    #8,d0
[000313e0] c068 000a                 and.w      10(a0),d0
[000313e4] 670e                      beq.s      ea_tristate_1
[000313e6] 0068 0001 000a            ori.w      #$0001,10(a0)
[000313ec] 0268 fff7 000a            andi.w     #$FFF7,10(a0)
[000313f2] 6016                      bra.s      ea_tristate_2
ea_tristate_1:
[000313f4] 7001                      moveq.l    #1,d0
[000313f6] c068 000a                 and.w      10(a0),d0
[000313fa] 6708                      beq.s      ea_tristate_3
[000313fc] 0268 fffe 000a            andi.w     #$FFFE,10(a0)
[00031402] 6006                      bra.s      ea_tristate_2
ea_tristate_3:
[00031404] 0068 0008 000a            ori.w      #$0008,10(a0)
ea_tristate_2:
[0003140a] 72ff                      moveq.l    #-1,d1
[0003140c] 2052                      movea.l    (a2),a0
[0003140e] 3028 0260                 move.w     608(a0),d0
[00031412] 2068 0258                 movea.l    600(a0),a0
[00031416] 2252                      movea.l    (a2),a1
[00031418] 2269 0258                 movea.l    600(a1),a1
[0003141c] 2269 0066                 movea.l    102(a1),a1
[00031420] 4e91                      jsr        (a1)
[00031422] 4eb9 0004 ad60            jsr        Aev_release
[00031428] 245f                      movea.l    (a7)+,a2
[0003142a] 4e75                      rts

ea_duostate:
[0003142c] 2f0a                      move.l     a2,-(a7)
[0003142e] 45f9 0010 1f12            lea.l      ACSblk,a2
[00031434] 2052                      movea.l    (a2),a0
[00031436] 3428 0260                 move.w     608(a0),d2
[0003143a] 48c2                      ext.l      d2
[0003143c] 2202                      move.l     d2,d1
[0003143e] d281                      add.l      d1,d1
[00031440] d282                      add.l      d2,d1
[00031442] e789                      lsl.l      #3,d1
[00031444] 2268 025c                 movea.l    604(a0),a1
[00031448] 3231 1802                 move.w     2(a1,d1.l),d1
[0003144c] 48c1                      ext.l      d1
[0003144e] 2001                      move.l     d1,d0
[00031450] d080                      add.l      d0,d0
[00031452] d081                      add.l      d1,d0
[00031454] e788                      lsl.l      #3,d0
[00031456] 2049                      movea.l    a1,a0
[00031458] d1c0                      adda.l     d0,a0
[0003145a] 7001                      moveq.l    #1,d0
[0003145c] c068 000a                 and.w      10(a0),d0
[00031460] 6708                      beq.s      ea_duostate_1
[00031462] 0268 fffe 000a            andi.w     #$FFFE,10(a0)
[00031468] 6006                      bra.s      ea_duostate_2
ea_duostate_1:
[0003146a] 0068 0001 000a            ori.w      #$0001,10(a0)
ea_duostate_2:
[00031470] 72ff                      moveq.l    #-1,d1
[00031472] 2052                      movea.l    (a2),a0
[00031474] 3028 0260                 move.w     608(a0),d0
[00031478] 2068 0258                 movea.l    600(a0),a0
[0003147c] 2252                      movea.l    (a2),a1
[0003147e] 2269 0258                 movea.l    600(a1),a1
[00031482] 2269 0066                 movea.l    102(a1),a1
[00031486] 4e91                      jsr        (a1)
[00031488] 4eb9 0004 ad60            jsr        Aev_release
[0003148e] 245f                      movea.l    (a7)+,a2
[00031490] 4e75                      rts

	.data

TEXT_001:
[000bf596]                           dc.b 'Abbruch',0
TEXT_003:
[000bf59e]                           dc.w $4f4b
[000bf5a0]                           dc.b $00
TEXT_01:
[000bf5a1]                           dc.b '   Edit',0
TEXT_02:
[000bf5a9]                           dc.b '   Default',0
TEXT_03:
[000bf5b4]                           dc.b '   Defaultable',0
TEXT_04:
[000bf5c3]                           dc.b '   Selectable',0
TEXT_05:
[000bf5d1]                           dc.b '   Accept',0
TEXT_06:
[000bf5db]                           dc.b '   Radiobutton',0
TEXT_07:
[000bf5ea]                           dc.b '   Constant',0
TEXT_08:
[000bf5f6]                           dc.b '   Dragable',0
TEXT_09:
[000bf602]                           dc.b '   Silent',0
TEXT_10:
[000bf60c]                           dc.b '   Selected',0
TEXT_11:
[000bf618]                           dc.b '   Crossed',0
TEXT_12:
[000bf623]                           dc.b '   Disabled',0
TEXT_13:
[000bf62f]                           dc.b '   Outlined',0
TEXT_14:
[000bf63b]                           dc.b '   Checked',0
TEXT_15:
[000bf646]                           dc.b '   Shadowed',0
TEXT_16:
[000bf652]                           dc.b '   Oben',0
TEXT_17:
[000bf65a]                           dc.b '   Rechts',0
TEXT_18:
[000bf664]                           dc.b '   Unten',0
TEXT_19:
[000bf66d]                           dc.b 'Indicator',0
TEXT_20:
[000bf677]                           dc.b '   Touchexit',0
TEXT_21:
[000bf684]                           dc.b 'None',0
TEXT_22:
[000bf689]                           dc.b 'AES-4-Flags:',0
TEXT_23:
[000bf696]                           dc.b '   Exit',0
TEXT_25:
[000bf69e]                           dc.b 'Status:',0
TEXT_26:
[000bf6a6]                           dc.b 'Aussehen:',0
TEXT_27:
[000bf6b0]                           dc.b 'Activator',0
TEXT_28:
[000bf6ba]                           dc.b 'Background',0
TEXT_29:
[000bf6c5]                           dc.b 'Verhalten:',0
TEXT_30:
[000bf6d0]                           dc.b '   Links',0
help_title:
[000bf6d9]                           dc.b 'Der Objekt-Flag-Editor',0
title1:
[000bf6f0]                           dc.b ' STATUS -',0
titlemore:
[000bf6fa]                           dc.b ' %d STATI -',0
A_3DBUTTON01:
[000bf706] 0005a4e2                  dc.l A_3Dbutton
[000bf70a]                           dc.w $29c1
[000bf70c]                           dc.w $0178
[000bf70e] 00059318                  dc.l Auo_string
[000bf712] 000bf596                  dc.l TEXT_001
[000bf716]                           dc.b $00
[000bf717]                           dc.b $00
[000bf718]                           dc.b $00
[000bf719]                           dc.b $00
[000bf71a]                           dc.b $00
[000bf71b]                           dc.b $00
[000bf71c]                           dc.b $00
[000bf71d]                           dc.b $00
[000bf71e]                           dc.b $00
[000bf71f]                           dc.b $00
[000bf720]                           dc.b $00
[000bf721]                           dc.b $00
[000bf722]                           dc.b $00
[000bf723]                           dc.b $00
[000bf724]                           dc.b $00
[000bf725]                           dc.b $00
A_3DBUTTON02:
[000bf726] 0005a4e2                  dc.l A_3Dbutton
[000bf72a]                           dc.w $21f1
[000bf72c]                           dc.w $0178
[000bf72e] 00059318                  dc.l Auo_string
[000bf732]                           dc.b $00
[000bf733]                           dc.b $00
[000bf734]                           dc.b $00
[000bf735]                           dc.b $00
[000bf736]                           dc.b $00
[000bf737]                           dc.b $00
[000bf738]                           dc.b $00
[000bf739]                           dc.b $00
[000bf73a]                           dc.b $00
[000bf73b]                           dc.b $00
[000bf73c]                           dc.b $00
[000bf73d]                           dc.b $00
[000bf73e]                           dc.b $00
[000bf73f]                           dc.b $00
[000bf740]                           dc.b $00
[000bf741]                           dc.b $00
[000bf742]                           dc.b $00
[000bf743]                           dc.b $00
[000bf744]                           dc.b $00
[000bf745]                           dc.b $00
A_3DBUTTON03:
[000bf746] 0005a4e2                  dc.l A_3Dbutton
[000bf74a]                           dc.w $a900
[000bf74c]                           dc.w $0178
[000bf74e] 00059318                  dc.l Auo_string
[000bf752] 000bf696                  dc.l TEXT_23
[000bf756]                           dc.b $00
[000bf757]                           dc.b $00
[000bf758]                           dc.b $00
[000bf759]                           dc.b $00
[000bf75a]                           dc.b $00
[000bf75b]                           dc.b $00
[000bf75c]                           dc.b $00
[000bf75d]                           dc.b $00
[000bf75e]                           dc.b $00
[000bf75f]                           dc.b $00
[000bf760]                           dc.b $00
[000bf761]                           dc.b $00
[000bf762]                           dc.b $00
[000bf763]                           dc.b $00
[000bf764]                           dc.b $00
[000bf765]                           dc.b $00
A_3DBUTTON04:
[000bf766] 0005a4e2                  dc.l A_3Dbutton
[000bf76a]                           dc.w $a900
[000bf76c]                           dc.w $0178
[000bf76e] 00059318                  dc.l Auo_string
[000bf772] 000bf5c3                  dc.l TEXT_04
[000bf776]                           dc.b $00
[000bf777]                           dc.b $00
[000bf778]                           dc.b $00
[000bf779]                           dc.b $00
[000bf77a]                           dc.b $00
[000bf77b]                           dc.b $00
[000bf77c]                           dc.b $00
[000bf77d]                           dc.b $00
[000bf77e]                           dc.b $00
[000bf77f]                           dc.b $00
[000bf780]                           dc.b $00
[000bf781]                           dc.b $00
[000bf782]                           dc.b $00
[000bf783]                           dc.b $00
[000bf784]                           dc.b $00
[000bf785]                           dc.b $00
A_3DBUTTON05:
[000bf786] 0005a4e2                  dc.l A_3Dbutton
[000bf78a]                           dc.w $29c1
[000bf78c]                           dc.w $0178
[000bf78e] 00059318                  dc.l Auo_string
[000bf792] 000bf59e                  dc.l TEXT_003
[000bf796]                           dc.b $00
[000bf797]                           dc.b $00
[000bf798]                           dc.b $00
[000bf799]                           dc.b $00
[000bf79a]                           dc.b $00
[000bf79b]                           dc.b $00
[000bf79c]                           dc.b $00
[000bf79d]                           dc.b $00
[000bf79e]                           dc.b $00
[000bf79f]                           dc.b $00
[000bf7a0]                           dc.b $00
[000bf7a1]                           dc.b $00
[000bf7a2]                           dc.b $00
[000bf7a3]                           dc.b $00
[000bf7a4]                           dc.b $00
[000bf7a5]                           dc.b $00
A_3DBUTTON06:
[000bf7a6] 0005a4e2                  dc.l A_3Dbutton
[000bf7aa]                           dc.w $a900
[000bf7ac]                           dc.w $0178
[000bf7ae] 00059318                  dc.l Auo_string
[000bf7b2] 000bf5f6                  dc.l TEXT_08
[000bf7b6]                           dc.b $00
[000bf7b7]                           dc.b $00
[000bf7b8]                           dc.b $00
[000bf7b9]                           dc.b $00
[000bf7ba]                           dc.b $00
[000bf7bb]                           dc.b $00
[000bf7bc]                           dc.b $00
[000bf7bd]                           dc.b $00
[000bf7be]                           dc.b $00
[000bf7bf]                           dc.b $00
[000bf7c0]                           dc.b $00
[000bf7c1]                           dc.b $00
[000bf7c2]                           dc.b $00
[000bf7c3]                           dc.b $00
[000bf7c4]                           dc.b $00
[000bf7c5]                           dc.b $00
A_3DBUTTON07:
[000bf7c6] 0005a4e2                  dc.l A_3Dbutton
[000bf7ca]                           dc.w $a900
[000bf7cc]                           dc.w $0178
[000bf7ce] 00059318                  dc.l Auo_string
[000bf7d2] 000bf5a1                  dc.l TEXT_01
[000bf7d6]                           dc.b $00
[000bf7d7]                           dc.b $00
[000bf7d8]                           dc.b $00
[000bf7d9]                           dc.b $00
[000bf7da]                           dc.b $00
[000bf7db]                           dc.b $00
[000bf7dc]                           dc.b $00
[000bf7dd]                           dc.b $00
[000bf7de]                           dc.b $00
[000bf7df]                           dc.b $00
[000bf7e0]                           dc.b $00
[000bf7e1]                           dc.b $00
[000bf7e2]                           dc.b $00
[000bf7e3]                           dc.b $00
[000bf7e4]                           dc.b $00
[000bf7e5]                           dc.b $00
A_3DBUTTON08:
[000bf7e6] 0005a4e2                  dc.l A_3Dbutton
[000bf7ea]                           dc.w $a900
[000bf7ec]                           dc.w $0178
[000bf7ee] 00059318                  dc.l Auo_string
[000bf7f2] 000bf677                  dc.l TEXT_20
[000bf7f6]                           dc.b $00
[000bf7f7]                           dc.b $00
[000bf7f8]                           dc.b $00
[000bf7f9]                           dc.b $00
[000bf7fa]                           dc.b $00
[000bf7fb]                           dc.b $00
[000bf7fc]                           dc.b $00
[000bf7fd]                           dc.b $00
[000bf7fe]                           dc.b $00
[000bf7ff]                           dc.b $00
[000bf800]                           dc.b $00
[000bf801]                           dc.b $00
[000bf802]                           dc.b $00
[000bf803]                           dc.b $00
[000bf804]                           dc.b $00
[000bf805]                           dc.b $00
A_3DBUTTON09:
[000bf806] 0005a4e2                  dc.l A_3Dbutton
[000bf80a]                           dc.w $a900
[000bf80c]                           dc.w $0178
[000bf80e] 00059318                  dc.l Auo_string
[000bf812] 000bf5d1                  dc.l TEXT_05
[000bf816]                           dc.b $00
[000bf817]                           dc.b $00
[000bf818]                           dc.b $00
[000bf819]                           dc.b $00
[000bf81a]                           dc.b $00
[000bf81b]                           dc.b $00
[000bf81c]                           dc.b $00
[000bf81d]                           dc.b $00
[000bf81e]                           dc.b $00
[000bf81f]                           dc.b $00
[000bf820]                           dc.b $00
[000bf821]                           dc.b $00
[000bf822]                           dc.b $00
[000bf823]                           dc.b $00
[000bf824]                           dc.b $00
[000bf825]                           dc.b $00
A_3DBUTTON10:
[000bf826] 0005a4e2                  dc.l A_3Dbutton
[000bf82a]                           dc.w $a900
[000bf82c]                           dc.w $0178
[000bf82e] 00059318                  dc.l Auo_string
[000bf832] 000bf5a9                  dc.l TEXT_02
[000bf836]                           dc.b $00
[000bf837]                           dc.b $00
[000bf838]                           dc.b $00
[000bf839]                           dc.b $00
[000bf83a]                           dc.b $00
[000bf83b]                           dc.b $00
[000bf83c]                           dc.b $00
[000bf83d]                           dc.b $00
[000bf83e]                           dc.b $00
[000bf83f]                           dc.b $00
[000bf840]                           dc.b $00
[000bf841]                           dc.b $00
[000bf842]                           dc.b $00
[000bf843]                           dc.b $00
[000bf844]                           dc.b $00
[000bf845]                           dc.b $00
A_3DBUTTON11:
[000bf846] 0005a4e2                  dc.l A_3Dbutton
[000bf84a]                           dc.w $a900
[000bf84c]                           dc.w $0178
[000bf84e] 00059318                  dc.l Auo_string
[000bf852] 000bf5db                  dc.l TEXT_06
[000bf856]                           dc.b $00
[000bf857]                           dc.b $00
[000bf858]                           dc.b $00
[000bf859]                           dc.b $00
[000bf85a]                           dc.b $00
[000bf85b]                           dc.b $00
[000bf85c]                           dc.b $00
[000bf85d]                           dc.b $00
[000bf85e]                           dc.b $00
[000bf85f]                           dc.b $00
[000bf860]                           dc.b $00
[000bf861]                           dc.b $00
[000bf862]                           dc.b $00
[000bf863]                           dc.b $00
[000bf864]                           dc.b $00
[000bf865]                           dc.b $00
A_3DBUTTON12:
[000bf866] 0005a4e2                  dc.l A_3Dbutton
[000bf86a]                           dc.w $a900
[000bf86c]                           dc.w $0178
[000bf86e] 00059318                  dc.l Auo_string
[000bf872] 000bf602                  dc.l TEXT_09
[000bf876]                           dc.b $00
[000bf877]                           dc.b $00
[000bf878]                           dc.b $00
[000bf879]                           dc.b $00
[000bf87a]                           dc.b $00
[000bf87b]                           dc.b $00
[000bf87c]                           dc.b $00
[000bf87d]                           dc.b $00
[000bf87e]                           dc.b $00
[000bf87f]                           dc.b $00
[000bf880]                           dc.b $00
[000bf881]                           dc.b $00
[000bf882]                           dc.b $00
[000bf883]                           dc.b $00
[000bf884]                           dc.b $00
[000bf885]                           dc.b $00
A_3DBUTTON13:
[000bf886] 0005a4e2                  dc.l A_3Dbutton
[000bf88a]                           dc.w $a900
[000bf88c]                           dc.w $0178
[000bf88e] 00059318                  dc.l Auo_string
[000bf892] 000bf5b4                  dc.l TEXT_03
[000bf896]                           dc.b $00
[000bf897]                           dc.b $00
[000bf898]                           dc.b $00
[000bf899]                           dc.b $00
[000bf89a]                           dc.b $00
[000bf89b]                           dc.b $00
[000bf89c]                           dc.b $00
[000bf89d]                           dc.b $00
[000bf89e]                           dc.b $00
[000bf89f]                           dc.b $00
[000bf8a0]                           dc.b $00
[000bf8a1]                           dc.b $00
[000bf8a2]                           dc.b $00
[000bf8a3]                           dc.b $00
[000bf8a4]                           dc.b $00
[000bf8a5]                           dc.b $00
A_3DBUTTON14:
[000bf8a6] 0005a4e2                  dc.l A_3Dbutton
[000bf8aa]                           dc.w $a900
[000bf8ac]                           dc.w $0178
[000bf8ae] 00059318                  dc.l Auo_string
[000bf8b2] 000bf5ea                  dc.l TEXT_07
[000bf8b6]                           dc.b $00
[000bf8b7]                           dc.b $00
[000bf8b8]                           dc.b $00
[000bf8b9]                           dc.b $00
[000bf8ba]                           dc.b $00
[000bf8bb]                           dc.b $00
[000bf8bc]                           dc.b $00
[000bf8bd]                           dc.b $00
[000bf8be]                           dc.b $00
[000bf8bf]                           dc.b $00
[000bf8c0]                           dc.b $00
[000bf8c1]                           dc.b $00
[000bf8c2]                           dc.b $00
[000bf8c3]                           dc.b $00
[000bf8c4]                           dc.b $00
[000bf8c5]                           dc.b $00
A_3DBUTTON15:
[000bf8c6] 0005a4e2                  dc.l A_3Dbutton
[000bf8ca]                           dc.w $a900
[000bf8cc]                           dc.w $0178
[000bf8ce] 00059318                  dc.l Auo_string
[000bf8d2] 000bf60c                  dc.l TEXT_10
[000bf8d6]                           dc.b $00
[000bf8d7]                           dc.b $00
[000bf8d8]                           dc.b $00
[000bf8d9]                           dc.b $00
[000bf8da]                           dc.b $00
[000bf8db]                           dc.b $00
[000bf8dc]                           dc.b $00
[000bf8dd]                           dc.b $00
[000bf8de]                           dc.b $00
[000bf8df]                           dc.b $00
[000bf8e0]                           dc.b $00
[000bf8e1]                           dc.b $00
[000bf8e2]                           dc.b $00
[000bf8e3]                           dc.b $00
[000bf8e4]                           dc.b $00
[000bf8e5]                           dc.b $00
A_3DBUTTON16:
[000bf8e6] 0005a4e2                  dc.l A_3Dbutton
[000bf8ea]                           dc.w $a900
[000bf8ec]                           dc.w $0178
[000bf8ee] 00059318                  dc.l Auo_string
[000bf8f2] 000bf618                  dc.l TEXT_11
[000bf8f6]                           dc.b $00
[000bf8f7]                           dc.b $00
[000bf8f8]                           dc.b $00
[000bf8f9]                           dc.b $00
[000bf8fa]                           dc.b $00
[000bf8fb]                           dc.b $00
[000bf8fc]                           dc.b $00
[000bf8fd]                           dc.b $00
[000bf8fe]                           dc.b $00
[000bf8ff]                           dc.b $00
[000bf900]                           dc.b $00
[000bf901]                           dc.b $00
[000bf902]                           dc.b $00
[000bf903]                           dc.b $00
[000bf904]                           dc.b $00
[000bf905]                           dc.b $00
A_3DBUTTON17:
[000bf906] 0005a4e2                  dc.l A_3Dbutton
[000bf90a]                           dc.w $a900
[000bf90c]                           dc.w $0178
[000bf90e] 00059318                  dc.l Auo_string
[000bf912] 000bf62f                  dc.l TEXT_13
[000bf916]                           dc.b $00
[000bf917]                           dc.b $00
[000bf918]                           dc.b $00
[000bf919]                           dc.b $00
[000bf91a]                           dc.b $00
[000bf91b]                           dc.b $00
[000bf91c]                           dc.b $00
[000bf91d]                           dc.b $00
[000bf91e]                           dc.b $00
[000bf91f]                           dc.b $00
[000bf920]                           dc.b $00
[000bf921]                           dc.b $00
[000bf922]                           dc.b $00
[000bf923]                           dc.b $00
[000bf924]                           dc.b $00
[000bf925]                           dc.b $00
A_3DBUTTON18:
[000bf926] 0005a4e2                  dc.l A_3Dbutton
[000bf92a]                           dc.w $a900
[000bf92c]                           dc.w $0178
[000bf92e] 00059318                  dc.l Auo_string
[000bf932] 000bf623                  dc.l TEXT_12
[000bf936]                           dc.b $00
[000bf937]                           dc.b $00
[000bf938]                           dc.b $00
[000bf939]                           dc.b $00
[000bf93a]                           dc.b $00
[000bf93b]                           dc.b $00
[000bf93c]                           dc.b $00
[000bf93d]                           dc.b $00
[000bf93e]                           dc.b $00
[000bf93f]                           dc.b $00
[000bf940]                           dc.b $00
[000bf941]                           dc.b $00
[000bf942]                           dc.b $00
[000bf943]                           dc.b $00
[000bf944]                           dc.b $00
[000bf945]                           dc.b $00
A_3DBUTTON19:
[000bf946] 0005a4e2                  dc.l A_3Dbutton
[000bf94a]                           dc.w $a900
[000bf94c]                           dc.w $0178
[000bf94e] 00059318                  dc.l Auo_string
[000bf952] 000bf63b                  dc.l TEXT_14
[000bf956]                           dc.b $00
[000bf957]                           dc.b $00
[000bf958]                           dc.b $00
[000bf959]                           dc.b $00
[000bf95a]                           dc.b $00
[000bf95b]                           dc.b $00
[000bf95c]                           dc.b $00
[000bf95d]                           dc.b $00
[000bf95e]                           dc.b $00
[000bf95f]                           dc.b $00
[000bf960]                           dc.b $00
[000bf961]                           dc.b $00
[000bf962]                           dc.b $00
[000bf963]                           dc.b $00
[000bf964]                           dc.b $00
[000bf965]                           dc.b $00
A_3DBUTTON20:
[000bf966] 0005a4e2                  dc.l A_3Dbutton
[000bf96a]                           dc.w $a900
[000bf96c]                           dc.w $0178
[000bf96e] 00059318                  dc.l Auo_string
[000bf972] 000bf646                  dc.l TEXT_15
[000bf976]                           dc.b $00
[000bf977]                           dc.b $00
[000bf978]                           dc.b $00
[000bf979]                           dc.b $00
[000bf97a]                           dc.b $00
[000bf97b]                           dc.b $00
[000bf97c]                           dc.b $00
[000bf97d]                           dc.b $00
[000bf97e]                           dc.b $00
[000bf97f]                           dc.b $00
[000bf980]                           dc.b $00
[000bf981]                           dc.b $00
[000bf982]                           dc.b $00
[000bf983]                           dc.b $00
[000bf984]                           dc.b $00
[000bf985]                           dc.b $00
A_3DBUTTON21:
[000bf986] 0005a4e2                  dc.l A_3Dbutton
[000bf98a]                           dc.w $a900
[000bf98c]                           dc.w $0178
[000bf98e] 00059318                  dc.l Auo_string
[000bf992] 000bf652                  dc.l TEXT_16
[000bf996]                           dc.b $00
[000bf997]                           dc.b $00
[000bf998]                           dc.b $00
[000bf999]                           dc.b $00
[000bf99a]                           dc.b $00
[000bf99b]                           dc.b $00
[000bf99c]                           dc.b $00
[000bf99d]                           dc.b $00
[000bf99e]                           dc.b $00
[000bf99f]                           dc.b $00
[000bf9a0]                           dc.b $00
[000bf9a1]                           dc.b $00
[000bf9a2]                           dc.b $00
[000bf9a3]                           dc.b $00
[000bf9a4]                           dc.b $00
[000bf9a5]                           dc.b $00
A_3DBUTTON22:
[000bf9a6] 0005a4e2                  dc.l A_3Dbutton
[000bf9aa]                           dc.w $a900
[000bf9ac]                           dc.w $0178
[000bf9ae] 00059318                  dc.l Auo_string
[000bf9b2] 000bf65a                  dc.l TEXT_17
[000bf9b6]                           dc.b $00
[000bf9b7]                           dc.b $00
[000bf9b8]                           dc.b $00
[000bf9b9]                           dc.b $00
[000bf9ba]                           dc.b $00
[000bf9bb]                           dc.b $00
[000bf9bc]                           dc.b $00
[000bf9bd]                           dc.b $00
[000bf9be]                           dc.b $00
[000bf9bf]                           dc.b $00
[000bf9c0]                           dc.b $00
[000bf9c1]                           dc.b $00
[000bf9c2]                           dc.b $00
[000bf9c3]                           dc.b $00
[000bf9c4]                           dc.b $00
[000bf9c5]                           dc.b $00
A_3DBUTTON23:
[000bf9c6] 0005a4e2                  dc.l A_3Dbutton
[000bf9ca]                           dc.w $a900
[000bf9cc]                           dc.w $0178
[000bf9ce] 00059318                  dc.l Auo_string
[000bf9d2] 000bf664                  dc.l TEXT_18
[000bf9d6]                           dc.b $00
[000bf9d7]                           dc.b $00
[000bf9d8]                           dc.b $00
[000bf9d9]                           dc.b $00
[000bf9da]                           dc.b $00
[000bf9db]                           dc.b $00
[000bf9dc]                           dc.b $00
[000bf9dd]                           dc.b $00
[000bf9de]                           dc.b $00
[000bf9df]                           dc.b $00
[000bf9e0]                           dc.b $00
[000bf9e1]                           dc.b $00
[000bf9e2]                           dc.b $00
[000bf9e3]                           dc.b $00
[000bf9e4]                           dc.b $00
[000bf9e5]                           dc.b $00
A_3DBUTTON29:
[000bf9e6] 0005a4e2                  dc.l A_3Dbutton
[000bf9ea]                           dc.w $a900
[000bf9ec]                           dc.w $0178
[000bf9ee] 00059318                  dc.l Auo_string
[000bf9f2] 000bf6d0                  dc.l TEXT_30
[000bf9f6]                           dc.b $00
[000bf9f7]                           dc.b $00
[000bf9f8]                           dc.b $00
[000bf9f9]                           dc.b $00
[000bf9fa]                           dc.b $00
[000bf9fb]                           dc.b $00
[000bf9fc]                           dc.b $00
[000bf9fd]                           dc.b $00
[000bf9fe]                           dc.b $00
[000bf9ff]                           dc.b $00
[000bfa00]                           dc.b $00
[000bfa01]                           dc.b $00
[000bfa02]                           dc.b $00
[000bfa03]                           dc.b $00
[000bfa04]                           dc.b $00
[000bfa05]                           dc.b $00
A_ARROWS01:
[000bfa06] 0005b212                  dc.l A_arrows
[000bfa0a]                           dc.w $2249
[000bfa0c]                           dc.b $00
[000bfa0d]                           dc.b $01
[000bfa0e]                           dc.b $00
[000bfa0f]                           dc.b $00
[000bfa10]                           dc.b $00
[000bfa11]                           dc.b $00
[000bfa12]                           dc.b $00
[000bfa13]                           dc.b $00
[000bfa14]                           dc.b $00
[000bfa15]                           dc.b $00
[000bfa16]                           dc.b $00
[000bfa17]                           dc.b $00
[000bfa18]                           dc.b $00
[000bfa19]                           dc.b $00
[000bfa1a]                           dc.b $00
[000bfa1b]                           dc.b $00
[000bfa1c]                           dc.b $00
[000bfa1d]                           dc.b $00
[000bfa1e]                           dc.b $00
[000bfa1f]                           dc.b $00
[000bfa20]                           dc.b $00
[000bfa21]                           dc.b $00
[000bfa22]                           dc.b $00
[000bfa23]                           dc.b $00
[000bfa24]                           dc.b $00
[000bfa25]                           dc.b $00
A_ARROWS02:
[000bfa26] 0005b212                  dc.l A_arrows
[000bfa2a]                           dc.b $00
[000bfa2b]                           dc.b $49
[000bfa2c]                           dc.b $00
[000bfa2d]                           dc.b $01
[000bfa2e]                           dc.b $00
[000bfa2f]                           dc.b $00
[000bfa30]                           dc.b $00
[000bfa31]                           dc.b $00
[000bfa32]                           dc.b $00
[000bfa33]                           dc.b $00
[000bfa34]                           dc.b $00
[000bfa35]                           dc.b $00
[000bfa36]                           dc.b $00
[000bfa37]                           dc.b $00
[000bfa38]                           dc.b $00
[000bfa39]                           dc.b $00
[000bfa3a]                           dc.b $00
[000bfa3b]                           dc.b $00
[000bfa3c]                           dc.b $00
[000bfa3d]                           dc.b $00
[000bfa3e]                           dc.b $00
[000bfa3f]                           dc.b $00
[000bfa40]                           dc.b $00
[000bfa41]                           dc.b $00
[000bfa42]                           dc.b $00
[000bfa43]                           dc.b $00
[000bfa44]                           dc.b $00
[000bfa45]                           dc.b $00
A_CHECKBOX01:
[000bfa46] 000593fc                  dc.l A_checkbox
[000bfa4a]                           dc.b $00
[000bfa4b]                           dc.b $00
[000bfa4c]                           dc.b $00
[000bfa4d]                           dc.b $01
[000bfa4e] 00059318                  dc.l Auo_string
[000bfa52]                           dc.b $00
[000bfa53]                           dc.b $00
[000bfa54]                           dc.b $00
[000bfa55]                           dc.b $00
[000bfa56]                           dc.b $00
[000bfa57]                           dc.b $00
[000bfa58]                           dc.b $00
[000bfa59]                           dc.b $00
[000bfa5a]                           dc.b $00
[000bfa5b]                           dc.b $00
[000bfa5c]                           dc.b $00
[000bfa5d]                           dc.b $00
[000bfa5e]                           dc.b $00
[000bfa5f]                           dc.b $00
[000bfa60]                           dc.b $00
[000bfa61]                           dc.b $00
[000bfa62]                           dc.b $00
[000bfa63]                           dc.b $00
[000bfa64]                           dc.b $00
[000bfa65]                           dc.b $00
A_CHECKBOX02:
[000bfa66] 000593fc                  dc.l A_checkbox
[000bfa6a]                           dc.b $00
[000bfa6b]                           dc.b $00
[000bfa6c]                           dc.b $00
[000bfa6d]                           dc.b $01
[000bfa6e] 00059318                  dc.l Auo_string
[000bfa72] 000bf66d                  dc.l TEXT_19
[000bfa76]                           dc.b $00
[000bfa77]                           dc.b $00
[000bfa78]                           dc.b $00
[000bfa79]                           dc.b $00
[000bfa7a]                           dc.b $00
[000bfa7b]                           dc.b $00
[000bfa7c]                           dc.b $00
[000bfa7d]                           dc.b $00
[000bfa7e]                           dc.b $00
[000bfa7f]                           dc.b $00
[000bfa80]                           dc.b $00
[000bfa81]                           dc.b $00
[000bfa82]                           dc.b $00
[000bfa83]                           dc.b $00
[000bfa84]                           dc.b $00
[000bfa85]                           dc.b $00
A_CHECKBOX03:
[000bfa86] 000593fc                  dc.l A_checkbox
[000bfa8a]                           dc.b $00
[000bfa8b]                           dc.b $00
[000bfa8c]                           dc.b $00
[000bfa8d]                           dc.b $01
[000bfa8e] 00059318                  dc.l Auo_string
[000bfa92] 000bf684                  dc.l TEXT_21
[000bfa96]                           dc.b $00
[000bfa97]                           dc.b $00
[000bfa98]                           dc.b $00
[000bfa99]                           dc.b $00
[000bfa9a]                           dc.b $00
[000bfa9b]                           dc.b $00
[000bfa9c]                           dc.b $00
[000bfa9d]                           dc.b $00
[000bfa9e]                           dc.b $00
[000bfa9f]                           dc.b $00
[000bfaa0]                           dc.b $00
[000bfaa1]                           dc.b $00
[000bfaa2]                           dc.b $00
[000bfaa3]                           dc.b $00
[000bfaa4]                           dc.b $00
[000bfaa5]                           dc.b $00
A_CHECKBOX04:
[000bfaa6] 000593fc                  dc.l A_checkbox
[000bfaaa]                           dc.b $00
[000bfaab]                           dc.b $00
[000bfaac]                           dc.b $00
[000bfaad]                           dc.b $01
[000bfaae] 00059318                  dc.l Auo_string
[000bfab2] 000bf6b0                  dc.l TEXT_27
[000bfab6]                           dc.b $00
[000bfab7]                           dc.b $00
[000bfab8]                           dc.b $00
[000bfab9]                           dc.b $00
[000bfaba]                           dc.b $00
[000bfabb]                           dc.b $00
[000bfabc]                           dc.b $00
[000bfabd]                           dc.b $00
[000bfabe]                           dc.b $00
[000bfabf]                           dc.b $00
[000bfac0]                           dc.b $00
[000bfac1]                           dc.b $00
[000bfac2]                           dc.b $00
[000bfac3]                           dc.b $00
[000bfac4]                           dc.b $00
[000bfac5]                           dc.b $00
A_CHECKBOX05:
[000bfac6] 000593fc                  dc.l A_checkbox
[000bfaca]                           dc.b $00
[000bfacb]                           dc.b $00
[000bfacc]                           dc.b $00
[000bfacd]                           dc.b $01
[000bface] 00059318                  dc.l Auo_string
[000bfad2] 000bf6ba                  dc.l TEXT_28
[000bfad6]                           dc.b $00
[000bfad7]                           dc.b $00
[000bfad8]                           dc.b $00
[000bfad9]                           dc.b $00
[000bfada]                           dc.b $00
[000bfadb]                           dc.b $00
[000bfadc]                           dc.b $00
[000bfadd]                           dc.b $00
[000bfade]                           dc.b $00
[000bfadf]                           dc.b $00
[000bfae0]                           dc.b $00
[000bfae1]                           dc.b $00
[000bfae2]                           dc.b $00
[000bfae3]                           dc.b $00
[000bfae4]                           dc.b $00
[000bfae5]                           dc.b $00
A_INNERFRAME02:
[000bfae6] 00059f9c                  dc.l A_innerframe
[000bfaea]                           dc.w $1800
[000bfaec]                           dc.w $8f19
[000bfaee] 00059318                  dc.l Auo_string
[000bfaf2] 000bf69e                  dc.l TEXT_25
[000bfaf6]                           dc.b $00
[000bfaf7]                           dc.b $00
[000bfaf8]                           dc.b $00
[000bfaf9]                           dc.b $00
[000bfafa]                           dc.b $00
[000bfafb]                           dc.b $00
[000bfafc]                           dc.b $00
[000bfafd]                           dc.b $00
[000bfafe]                           dc.b $00
[000bfaff]                           dc.b $00
[000bfb00]                           dc.b $00
[000bfb01]                           dc.b $00
[000bfb02]                           dc.b $00
[000bfb03]                           dc.b $00
[000bfb04]                           dc.b $00
[000bfb05]                           dc.b $00
A_INNERFRAME03:
[000bfb06] 00059f9c                  dc.l A_innerframe
[000bfb0a]                           dc.w $1800
[000bfb0c]                           dc.w $8f19
[000bfb0e] 00059318                  dc.l Auo_string
[000bfb12] 000bf6a6                  dc.l TEXT_26
[000bfb16]                           dc.b $00
[000bfb17]                           dc.b $00
[000bfb18]                           dc.b $00
[000bfb19]                           dc.b $00
[000bfb1a]                           dc.b $00
[000bfb1b]                           dc.b $00
[000bfb1c]                           dc.b $00
[000bfb1d]                           dc.b $00
[000bfb1e]                           dc.b $00
[000bfb1f]                           dc.b $00
[000bfb20]                           dc.b $00
[000bfb21]                           dc.b $00
[000bfb22]                           dc.b $00
[000bfb23]                           dc.b $00
[000bfb24]                           dc.b $00
[000bfb25]                           dc.b $00
A_INNERFRAME04:
[000bfb26] 00059f9c                  dc.l A_innerframe
[000bfb2a]                           dc.w $1800
[000bfb2c]                           dc.w $8f19
[000bfb2e] 00059318                  dc.l Auo_string
[000bfb32] 000bf6c5                  dc.l TEXT_29
[000bfb36]                           dc.b $00
[000bfb37]                           dc.b $00
[000bfb38]                           dc.b $00
[000bfb39]                           dc.b $00
[000bfb3a]                           dc.b $00
[000bfb3b]                           dc.b $00
[000bfb3c]                           dc.b $00
[000bfb3d]                           dc.b $00
[000bfb3e]                           dc.b $00
[000bfb3f]                           dc.b $00
[000bfb40]                           dc.b $00
[000bfb41]                           dc.b $00
[000bfb42]                           dc.b $00
[000bfb43]                           dc.b $00
[000bfb44]                           dc.b $00
[000bfb45]                           dc.b $00
A_INNERFRAME05:
[000bfb46] 00059f9c                  dc.l A_innerframe
[000bfb4a]                           dc.w $1800
[000bfb4c]                           dc.w $8f19
[000bfb4e] 00059318                  dc.l Auo_string
[000bfb52] 000bf689                  dc.l TEXT_22
[000bfb56]                           dc.b $00
[000bfb57]                           dc.b $00
[000bfb58]                           dc.b $00
[000bfb59]                           dc.b $00
[000bfb5a]                           dc.b $00
[000bfb5b]                           dc.b $00
[000bfb5c]                           dc.b $00
[000bfb5d]                           dc.b $00
[000bfb5e]                           dc.b $00
[000bfb5f]                           dc.b $00
[000bfb60]                           dc.b $00
[000bfb61]                           dc.b $00
[000bfb62]                           dc.b $00
[000bfb63]                           dc.b $00
[000bfb64]                           dc.b $00
[000bfb65]                           dc.b $00
ED_AFLAGS:
[000bfb66]                           dc.w $ffff
[000bfb68]                           dc.b $00
[000bfb69]                           dc.b $01
[000bfb6a]                           dc.b $00
[000bfb6b]                           dc.b $5a
[000bfb6c]                           dc.b $00
[000bfb6d]                           dc.b $18
[000bfb6e]                           dc.b $00
[000bfb6f]                           dc.b $40
[000bfb70]                           dc.b $00
[000bfb71]                           dc.b $10
[000bfb72] 000bf726                  dc.l A_3DBUTTON02
[000bfb76]                           dc.b $00
[000bfb77]                           dc.b $00
[000bfb78]                           dc.b $00
[000bfb79]                           dc.b $00
[000bfb7a]                           dc.b $00
[000bfb7b]                           dc.b $2e
[000bfb7c]                           dc.b $00
[000bfb7d]                           dc.b $14
_01_ED_AFLAGS:
[000bfb7e]                           dc.b $00
[000bfb7f]                           dc.b $23
[000bfb80]                           dc.b $00
[000bfb81]                           dc.b $02
[000bfb82]                           dc.b $00
[000bfb83]                           dc.b $20
[000bfb84]                           dc.b $00
[000bfb85]                           dc.b $18
[000bfb86]                           dc.b $00
[000bfb87]                           dc.b $40
[000bfb88]                           dc.b $00
[000bfb89]                           dc.b $00
[000bfb8a] 000bfb26                  dc.l A_INNERFRAME04
[000bfb8e]                           dc.b $00
[000bfb8f]                           dc.b $01
[000bfb90]                           dc.b $00
[000bfb91]                           dc.b $00
[000bfb92]                           dc.b $00
[000bfb93]                           dc.b $2c
[000bfb94]                           dc.b $00
[000bfb95]                           dc.b $06
_02_ED_AFLAGS:
[000bfb96]                           dc.b $00
[000bfb97]                           dc.b $05
[000bfb98]                           dc.b $00
[000bfb99]                           dc.b $04
[000bfb9a]                           dc.b $00
[000bfb9b]                           dc.b $04
[000bfb9c]                           dc.b $00
[000bfb9d]                           dc.b $18
[000bfb9e]                           dc.b $00
[000bfb9f]                           dc.b $40
[000bfba0]                           dc.b $00
[000bfba1]                           dc.b $00
[000bfba2] 000bf746                  dc.l A_3DBUTTON03
[000bfba6]                           dc.b $00
[000bfba7]                           dc.b $01
[000bfba8]                           dc.b $00
[000bfba9]                           dc.b $01
[000bfbaa]                           dc.b $00
[000bfbab]                           dc.b $07
[000bfbac]                           dc.b $00
[000bfbad]                           dc.b $01
_02aED_AFLAGS:
[000bfbae]                           dc.b $00
[000bfbaf]                           dc.b $00
[000bfbb0]                           dc.b $00
[000bfbb1]                           dc.b $00
[000bfbb2]                           dc.b $00
[000bfbb3]                           dc.b $00
[000bfbb4]                           dc.b $00
[000bfbb5]                           dc.b $00
[000bfbb6]                           dc.w $8000
[000bfbb8]                           dc.w $8845
[000bfbba]                           dc.b $00
[000bfbbb]                           dc.b $00
[000bfbbc]                           dc.b $00
[000bfbbd]                           dc.b $00
[000bfbbe]                           dc.b $00
[000bfbbf]                           dc.b $00
[000bfbc0]                           dc.b $00
[000bfbc1]                           dc.b $00
[000bfbc2]                           dc.b $00
[000bfbc3]                           dc.b $00
[000bfbc4]                           dc.b $00
[000bfbc5]                           dc.b $00
_04_ED_AFLAGS:
[000bfbc6]                           dc.b $00
[000bfbc7]                           dc.b $02
[000bfbc8]                           dc.w $ffff
[000bfbca]                           dc.w $ffff
[000bfbcc]                           dc.b $00
[000bfbcd]                           dc.b $18
[000bfbce]                           dc.b $00
[000bfbcf]                           dc.b $00
[000bfbd0]                           dc.b $00
[000bfbd1]                           dc.b $08
[000bfbd2] 000bfa46                  dc.l A_CHECKBOX01
[000bfbd6]                           dc.b $00
[000bfbd7]                           dc.b $00
[000bfbd8]                           dc.b $00
[000bfbd9]                           dc.b $00
[000bfbda]                           dc.b $00
[000bfbdb]                           dc.b $02
[000bfbdc]                           dc.b $00
[000bfbdd]                           dc.b $01
_05_ED_AFLAGS:
[000bfbde]                           dc.b $00
[000bfbdf]                           dc.b $08
[000bfbe0]                           dc.b $00
[000bfbe1]                           dc.b $07
[000bfbe2]                           dc.b $00
[000bfbe3]                           dc.b $07
[000bfbe4]                           dc.b $00
[000bfbe5]                           dc.b $18
[000bfbe6]                           dc.b $00
[000bfbe7]                           dc.b $40
[000bfbe8]                           dc.b $00
[000bfbe9]                           dc.b $00
[000bfbea] 000bf766                  dc.l A_3DBUTTON04
[000bfbee]                           dc.b $00
[000bfbef]                           dc.b $10
[000bfbf0]                           dc.b $00
[000bfbf1]                           dc.b $01
[000bfbf2]                           dc.b $00
[000bfbf3]                           dc.b $0d
[000bfbf4]                           dc.b $00
[000bfbf5]                           dc.b $01
_05aED_AFLAGS:
[000bfbf6]                           dc.b $00
[000bfbf7]                           dc.b $00
[000bfbf8]                           dc.b $00
[000bfbf9]                           dc.b $00
[000bfbfa]                           dc.b $00
[000bfbfb]                           dc.b $00
[000bfbfc]                           dc.b $00
[000bfbfd]                           dc.b $00
[000bfbfe]                           dc.w $8000
[000bfc00]                           dc.w $8853
[000bfc02]                           dc.b $00
[000bfc03]                           dc.b $00
[000bfc04]                           dc.b $00
[000bfc05]                           dc.b $00
[000bfc06]                           dc.b $00
[000bfc07]                           dc.b $00
[000bfc08]                           dc.b $00
[000bfc09]                           dc.b $00
[000bfc0a]                           dc.b $00
[000bfc0b]                           dc.b $00
[000bfc0c]                           dc.b $00
[000bfc0d]                           dc.b $00
_07_ED_AFLAGS:
[000bfc0e]                           dc.b $00
[000bfc0f]                           dc.b $05
[000bfc10]                           dc.w $ffff
[000bfc12]                           dc.w $ffff
[000bfc14]                           dc.b $00
[000bfc15]                           dc.b $18
[000bfc16]                           dc.b $00
[000bfc17]                           dc.b $00
[000bfc18]                           dc.b $00
[000bfc19]                           dc.b $08
[000bfc1a] 000bfa46                  dc.l A_CHECKBOX01
[000bfc1e]                           dc.b $00
[000bfc1f]                           dc.b $00
[000bfc20]                           dc.b $00
[000bfc21]                           dc.b $00
[000bfc22]                           dc.b $00
[000bfc23]                           dc.b $02
[000bfc24]                           dc.b $00
[000bfc25]                           dc.b $01
_08_ED_AFLAGS:
[000bfc26]                           dc.b $00
[000bfc27]                           dc.b $0b
[000bfc28]                           dc.b $00
[000bfc29]                           dc.b $0a
[000bfc2a]                           dc.b $00
[000bfc2b]                           dc.b $0a
[000bfc2c]                           dc.b $00
[000bfc2d]                           dc.b $18
[000bfc2e]                           dc.b $00
[000bfc2f]                           dc.b $40
[000bfc30]                           dc.b $00
[000bfc31]                           dc.b $00
[000bfc32] 000bf7a6                  dc.l A_3DBUTTON06
[000bfc36]                           dc.b $00
[000bfc37]                           dc.b $20
[000bfc38]                           dc.b $00
[000bfc39]                           dc.b $01
[000bfc3a]                           dc.b $00
[000bfc3b]                           dc.b $0b
[000bfc3c]                           dc.b $00
[000bfc3d]                           dc.b $01
_08aED_AFLAGS:
[000bfc3e]                           dc.b $00
[000bfc3f]                           dc.b $00
[000bfc40]                           dc.b $00
[000bfc41]                           dc.b $00
[000bfc42]                           dc.b $00
[000bfc43]                           dc.b $00
[000bfc44]                           dc.b $00
[000bfc45]                           dc.b $00
[000bfc46]                           dc.w $8000
[000bfc48]                           dc.w $8847
[000bfc4a]                           dc.b $00
[000bfc4b]                           dc.b $00
[000bfc4c]                           dc.b $00
[000bfc4d]                           dc.b $00
[000bfc4e]                           dc.b $00
[000bfc4f]                           dc.b $00
[000bfc50]                           dc.b $00
[000bfc51]                           dc.b $00
[000bfc52]                           dc.b $00
[000bfc53]                           dc.b $00
[000bfc54]                           dc.b $00
[000bfc55]                           dc.b $00
_10_ED_AFLAGS:
[000bfc56]                           dc.b $00
[000bfc57]                           dc.b $08
[000bfc58]                           dc.w $ffff
[000bfc5a]                           dc.w $ffff
[000bfc5c]                           dc.b $00
[000bfc5d]                           dc.b $18
[000bfc5e]                           dc.b $00
[000bfc5f]                           dc.b $00
[000bfc60]                           dc.b $00
[000bfc61]                           dc.b $08
[000bfc62] 000bfa46                  dc.l A_CHECKBOX01
[000bfc66]                           dc.b $00
[000bfc67]                           dc.b $00
[000bfc68]                           dc.b $00
[000bfc69]                           dc.b $00
[000bfc6a]                           dc.b $00
[000bfc6b]                           dc.b $02
[000bfc6c]                           dc.b $00
[000bfc6d]                           dc.b $01
_11_ED_AFLAGS:
[000bfc6e]                           dc.b $00
[000bfc6f]                           dc.b $0e
[000bfc70]                           dc.b $00
[000bfc71]                           dc.b $0d
[000bfc72]                           dc.b $00
[000bfc73]                           dc.b $0d
[000bfc74]                           dc.b $00
[000bfc75]                           dc.b $18
[000bfc76]                           dc.b $00
[000bfc77]                           dc.b $40
[000bfc78]                           dc.b $00
[000bfc79]                           dc.b $00
[000bfc7a] 000bf7e6                  dc.l A_3DBUTTON08
[000bfc7e]                           dc.b $00
[000bfc7f]                           dc.b $01
[000bfc80]                           dc.b $00
[000bfc81]                           dc.b $02
[000bfc82]                           dc.b $00
[000bfc83]                           dc.b $0c
[000bfc84]                           dc.b $00
[000bfc85]                           dc.b $01
_11aED_AFLAGS:
[000bfc86]                           dc.b $00
[000bfc87]                           dc.b $00
[000bfc88]                           dc.b $00
[000bfc89]                           dc.b $00
[000bfc8a]                           dc.b $00
[000bfc8b]                           dc.b $00
[000bfc8c]                           dc.b $00
[000bfc8d]                           dc.b $00
[000bfc8e]                           dc.w $8000
[000bfc90]                           dc.w $8854
[000bfc92]                           dc.b $00
[000bfc93]                           dc.b $00
[000bfc94]                           dc.b $00
[000bfc95]                           dc.b $00
[000bfc96]                           dc.b $00
[000bfc97]                           dc.b $00
[000bfc98]                           dc.b $00
[000bfc99]                           dc.b $00
[000bfc9a]                           dc.b $00
[000bfc9b]                           dc.b $00
[000bfc9c]                           dc.b $00
[000bfc9d]                           dc.b $00
_13_ED_AFLAGS:
[000bfc9e]                           dc.b $00
[000bfc9f]                           dc.b $0b
[000bfca0]                           dc.w $ffff
[000bfca2]                           dc.w $ffff
[000bfca4]                           dc.b $00
[000bfca5]                           dc.b $18
[000bfca6]                           dc.b $00
[000bfca7]                           dc.b $00
[000bfca8]                           dc.b $00
[000bfca9]                           dc.b $08
[000bfcaa] 000bfa46                  dc.l A_CHECKBOX01
[000bfcae]                           dc.b $00
[000bfcaf]                           dc.b $00
[000bfcb0]                           dc.b $00
[000bfcb1]                           dc.b $00
[000bfcb2]                           dc.b $00
[000bfcb3]                           dc.b $02
[000bfcb4]                           dc.b $00
[000bfcb5]                           dc.b $01
_14_ED_AFLAGS:
[000bfcb6]                           dc.b $00
[000bfcb7]                           dc.b $11
[000bfcb8]                           dc.b $00
[000bfcb9]                           dc.b $10
[000bfcba]                           dc.b $00
[000bfcbb]                           dc.b $10
[000bfcbc]                           dc.b $00
[000bfcbd]                           dc.b $18
[000bfcbe]                           dc.b $00
[000bfcbf]                           dc.b $40
[000bfcc0]                           dc.b $00
[000bfcc1]                           dc.b $00
[000bfcc2] 000bf7c6                  dc.l A_3DBUTTON07
[000bfcc6]                           dc.b $00
[000bfcc7]                           dc.b $10
[000bfcc8]                           dc.b $00
[000bfcc9]                           dc.b $02
[000bfcca]                           dc.b $00
[000bfccb]                           dc.b $07
[000bfccc]                           dc.b $00
[000bfccd]                           dc.b $01
_14aED_AFLAGS:
[000bfcce]                           dc.b $00
[000bfccf]                           dc.b $00
[000bfcd0]                           dc.b $00
[000bfcd1]                           dc.b $00
[000bfcd2]                           dc.b $00
[000bfcd3]                           dc.b $00
[000bfcd4]                           dc.b $00
[000bfcd5]                           dc.b $00
[000bfcd6]                           dc.w $8000
[000bfcd8]                           dc.w $8849
[000bfcda]                           dc.b $00
[000bfcdb]                           dc.b $00
[000bfcdc]                           dc.b $00
[000bfcdd]                           dc.b $00
[000bfcde]                           dc.b $00
[000bfcdf]                           dc.b $00
[000bfce0]                           dc.b $00
[000bfce1]                           dc.b $00
[000bfce2]                           dc.b $00
[000bfce3]                           dc.b $00
[000bfce4]                           dc.b $00
[000bfce5]                           dc.b $00
_16_ED_AFLAGS:
[000bfce6]                           dc.b $00
[000bfce7]                           dc.b $0e
[000bfce8]                           dc.w $ffff
[000bfcea]                           dc.w $ffff
[000bfcec]                           dc.b $00
[000bfced]                           dc.b $18
[000bfcee]                           dc.b $00
[000bfcef]                           dc.b $00
[000bfcf0]                           dc.b $00
[000bfcf1]                           dc.b $08
[000bfcf2] 000bfa46                  dc.l A_CHECKBOX01
[000bfcf6]                           dc.b $00
[000bfcf7]                           dc.b $00
[000bfcf8]                           dc.b $00
[000bfcf9]                           dc.b $00
[000bfcfa]                           dc.b $00
[000bfcfb]                           dc.b $02
[000bfcfc]                           dc.b $00
[000bfcfd]                           dc.b $01
_17_ED_AFLAGS:
[000bfcfe]                           dc.b $00
[000bfcff]                           dc.b $14
[000bfd00]                           dc.b $00
[000bfd01]                           dc.b $13
[000bfd02]                           dc.b $00
[000bfd03]                           dc.b $13
[000bfd04]                           dc.b $00
[000bfd05]                           dc.b $18
[000bfd06]                           dc.b $00
[000bfd07]                           dc.b $40
[000bfd08]                           dc.b $00
[000bfd09]                           dc.b $00
[000bfd0a] 000bf806                  dc.l A_3DBUTTON09
[000bfd0e]                           dc.b $00
[000bfd0f]                           dc.b $20
[000bfd10]                           dc.b $00
[000bfd11]                           dc.b $02
[000bfd12]                           dc.b $00
[000bfd13]                           dc.b $09
[000bfd14]                           dc.b $00
[000bfd15]                           dc.b $01
_17aED_AFLAGS:
[000bfd16]                           dc.b $00
[000bfd17]                           dc.b $00
[000bfd18]                           dc.b $00
[000bfd19]                           dc.b $00
[000bfd1a]                           dc.b $00
[000bfd1b]                           dc.b $00
[000bfd1c]                           dc.b $00
[000bfd1d]                           dc.b $00
[000bfd1e]                           dc.w $8000
[000bfd20]                           dc.w $8850
[000bfd22]                           dc.b $00
[000bfd23]                           dc.b $00
[000bfd24]                           dc.b $00
[000bfd25]                           dc.b $00
[000bfd26]                           dc.b $00
[000bfd27]                           dc.b $00
[000bfd28]                           dc.b $00
[000bfd29]                           dc.b $00
[000bfd2a]                           dc.b $00
[000bfd2b]                           dc.b $00
[000bfd2c]                           dc.b $00
[000bfd2d]                           dc.b $00
_19_ED_AFLAGS:
[000bfd2e]                           dc.b $00
[000bfd2f]                           dc.b $11
[000bfd30]                           dc.w $ffff
[000bfd32]                           dc.w $ffff
[000bfd34]                           dc.b $00
[000bfd35]                           dc.b $18
[000bfd36]                           dc.b $00
[000bfd37]                           dc.b $00
[000bfd38]                           dc.b $00
[000bfd39]                           dc.b $08
[000bfd3a] 000bfa46                  dc.l A_CHECKBOX01
[000bfd3e]                           dc.b $00
[000bfd3f]                           dc.b $00
[000bfd40]                           dc.b $00
[000bfd41]                           dc.b $00
[000bfd42]                           dc.b $00
[000bfd43]                           dc.b $02
[000bfd44]                           dc.b $00
[000bfd45]                           dc.b $01
_20_ED_AFLAGS:
[000bfd46]                           dc.b $00
[000bfd47]                           dc.b $17
[000bfd48]                           dc.b $00
[000bfd49]                           dc.b $16
[000bfd4a]                           dc.b $00
[000bfd4b]                           dc.b $16
[000bfd4c]                           dc.b $00
[000bfd4d]                           dc.b $18
[000bfd4e]                           dc.b $00
[000bfd4f]                           dc.b $40
[000bfd50]                           dc.b $00
[000bfd51]                           dc.b $00
[000bfd52] 000bf826                  dc.l A_3DBUTTON10
[000bfd56]                           dc.b $00
[000bfd57]                           dc.b $01
[000bfd58]                           dc.b $00
[000bfd59]                           dc.b $03
[000bfd5a]                           dc.b $00
[000bfd5b]                           dc.b $0a
[000bfd5c]                           dc.b $00
[000bfd5d]                           dc.b $01
_20aED_AFLAGS:
[000bfd5e]                           dc.b $00
[000bfd5f]                           dc.b $00
[000bfd60]                           dc.b $00
[000bfd61]                           dc.b $00
[000bfd62]                           dc.b $00
[000bfd63]                           dc.b $00
[000bfd64]                           dc.b $00
[000bfd65]                           dc.b $00
[000bfd66]                           dc.w $8000
[000bfd68]                           dc.w $8844
[000bfd6a]                           dc.b $00
[000bfd6b]                           dc.b $00
[000bfd6c]                           dc.b $00
[000bfd6d]                           dc.b $00
[000bfd6e]                           dc.b $00
[000bfd6f]                           dc.b $00
[000bfd70]                           dc.b $00
[000bfd71]                           dc.b $00
[000bfd72]                           dc.b $00
[000bfd73]                           dc.b $00
[000bfd74]                           dc.b $00
[000bfd75]                           dc.b $00
_22_ED_AFLAGS:
[000bfd76]                           dc.b $00
[000bfd77]                           dc.b $14
[000bfd78]                           dc.w $ffff
[000bfd7a]                           dc.w $ffff
[000bfd7c]                           dc.b $00
[000bfd7d]                           dc.b $18
[000bfd7e]                           dc.b $00
[000bfd7f]                           dc.b $00
[000bfd80]                           dc.b $00
[000bfd81]                           dc.b $08
[000bfd82] 000bfa46                  dc.l A_CHECKBOX01
[000bfd86]                           dc.b $00
[000bfd87]                           dc.b $00
[000bfd88]                           dc.b $00
[000bfd89]                           dc.b $00
[000bfd8a]                           dc.b $00
[000bfd8b]                           dc.b $02
[000bfd8c]                           dc.b $00
[000bfd8d]                           dc.b $01
_23_ED_AFLAGS:
[000bfd8e]                           dc.b $00
[000bfd8f]                           dc.b $1a
[000bfd90]                           dc.b $00
[000bfd91]                           dc.b $19
[000bfd92]                           dc.b $00
[000bfd93]                           dc.b $19
[000bfd94]                           dc.b $00
[000bfd95]                           dc.b $18
[000bfd96]                           dc.b $00
[000bfd97]                           dc.b $40
[000bfd98]                           dc.b $00
[000bfd99]                           dc.b $00
[000bfd9a] 000bf846                  dc.l A_3DBUTTON11
[000bfd9e]                           dc.b $00
[000bfd9f]                           dc.b $10
[000bfda0]                           dc.b $00
[000bfda1]                           dc.b $03
[000bfda2]                           dc.b $00
[000bfda3]                           dc.b $0e
[000bfda4]                           dc.b $00
[000bfda5]                           dc.b $01
_23aED_AFLAGS:
[000bfda6]                           dc.b $00
[000bfda7]                           dc.b $00
[000bfda8]                           dc.b $00
[000bfda9]                           dc.b $00
[000bfdaa]                           dc.b $00
[000bfdab]                           dc.b $00
[000bfdac]                           dc.b $00
[000bfdad]                           dc.b $00
[000bfdae]                           dc.w $8000
[000bfdb0]                           dc.w $8852
[000bfdb2]                           dc.b $00
[000bfdb3]                           dc.b $00
[000bfdb4]                           dc.b $00
[000bfdb5]                           dc.b $00
[000bfdb6]                           dc.b $00
[000bfdb7]                           dc.b $00
[000bfdb8]                           dc.b $00
[000bfdb9]                           dc.b $00
[000bfdba]                           dc.b $00
[000bfdbb]                           dc.b $00
[000bfdbc]                           dc.b $00
[000bfdbd]                           dc.b $00
_25_ED_AFLAGS:
[000bfdbe]                           dc.b $00
[000bfdbf]                           dc.b $17
[000bfdc0]                           dc.w $ffff
[000bfdc2]                           dc.w $ffff
[000bfdc4]                           dc.b $00
[000bfdc5]                           dc.b $18
[000bfdc6]                           dc.b $00
[000bfdc7]                           dc.b $00
[000bfdc8]                           dc.b $00
[000bfdc9]                           dc.b $08
[000bfdca] 000bfa46                  dc.l A_CHECKBOX01
[000bfdce]                           dc.b $00
[000bfdcf]                           dc.b $00
[000bfdd0]                           dc.b $00
[000bfdd1]                           dc.b $00
[000bfdd2]                           dc.b $00
[000bfdd3]                           dc.b $02
[000bfdd4]                           dc.b $00
[000bfdd5]                           dc.b $01
_26_ED_AFLAGS:
[000bfdd6]                           dc.b $00
[000bfdd7]                           dc.b $1d
[000bfdd8]                           dc.b $00
[000bfdd9]                           dc.b $1c
[000bfdda]                           dc.b $00
[000bfddb]                           dc.b $1c
[000bfddc]                           dc.b $00
[000bfddd]                           dc.b $18
[000bfdde]                           dc.b $00
[000bfddf]                           dc.b $40
[000bfde0]                           dc.b $00
[000bfde1]                           dc.b $00
[000bfde2] 000bf866                  dc.l A_3DBUTTON12
[000bfde6]                           dc.b $00
[000bfde7]                           dc.b $20
[000bfde8]                           dc.b $00
[000bfde9]                           dc.b $03
[000bfdea]                           dc.b $00
[000bfdeb]                           dc.b $09
[000bfdec]                           dc.b $00
[000bfded]                           dc.b $01
_26aED_AFLAGS:
[000bfdee]                           dc.b $00
[000bfdef]                           dc.b $00
[000bfdf0]                           dc.b $00
[000bfdf1]                           dc.b $00
[000bfdf2]                           dc.b $00
[000bfdf3]                           dc.b $00
[000bfdf4]                           dc.b $00
[000bfdf5]                           dc.b $00
[000bfdf6]                           dc.w $8000
[000bfdf8]                           dc.w $884c
[000bfdfa]                           dc.b $00
[000bfdfb]                           dc.b $00
[000bfdfc]                           dc.b $00
[000bfdfd]                           dc.b $00
[000bfdfe]                           dc.b $00
[000bfdff]                           dc.b $00
[000bfe00]                           dc.b $00
[000bfe01]                           dc.b $00
[000bfe02]                           dc.b $00
[000bfe03]                           dc.b $00
[000bfe04]                           dc.b $00
[000bfe05]                           dc.b $00
_28_ED_AFLAGS:
[000bfe06]                           dc.b $00
[000bfe07]                           dc.b $1a
[000bfe08]                           dc.w $ffff
[000bfe0a]                           dc.w $ffff
[000bfe0c]                           dc.b $00
[000bfe0d]                           dc.b $18
[000bfe0e]                           dc.b $00
[000bfe0f]                           dc.b $00
[000bfe10]                           dc.b $00
[000bfe11]                           dc.b $08
[000bfe12] 000bfa46                  dc.l A_CHECKBOX01
[000bfe16]                           dc.b $00
[000bfe17]                           dc.b $00
[000bfe18]                           dc.b $00
[000bfe19]                           dc.b $00
[000bfe1a]                           dc.b $00
[000bfe1b]                           dc.b $02
[000bfe1c]                           dc.b $00
[000bfe1d]                           dc.b $01
_29_ED_AFLAGS:
[000bfe1e]                           dc.b $00
[000bfe1f]                           dc.b $20
[000bfe20]                           dc.b $00
[000bfe21]                           dc.b $1f
[000bfe22]                           dc.b $00
[000bfe23]                           dc.b $1f
[000bfe24]                           dc.b $00
[000bfe25]                           dc.b $18
[000bfe26]                           dc.b $00
[000bfe27]                           dc.b $40
[000bfe28]                           dc.b $00
[000bfe29]                           dc.b $00
[000bfe2a] 000bf886                  dc.l A_3DBUTTON13
[000bfe2e]                           dc.b $00
[000bfe2f]                           dc.b $01
[000bfe30]                           dc.b $00
[000bfe31]                           dc.b $04
[000bfe32]                           dc.b $00
[000bfe33]                           dc.b $0e
[000bfe34]                           dc.b $00
[000bfe35]                           dc.b $01
_29aED_AFLAGS:
[000bfe36]                           dc.b $00
[000bfe37]                           dc.b $00
[000bfe38]                           dc.b $00
[000bfe39]                           dc.b $00
[000bfe3a]                           dc.b $00
[000bfe3b]                           dc.b $00
[000bfe3c]                           dc.b $00
[000bfe3d]                           dc.b $00
[000bfe3e]                           dc.w $8000
[000bfe40]                           dc.w $8846
[000bfe42]                           dc.b $00
[000bfe43]                           dc.b $00
[000bfe44]                           dc.b $00
[000bfe45]                           dc.b $00
[000bfe46]                           dc.b $00
[000bfe47]                           dc.b $00
[000bfe48]                           dc.b $00
[000bfe49]                           dc.b $00
[000bfe4a]                           dc.b $00
[000bfe4b]                           dc.b $00
[000bfe4c]                           dc.b $00
[000bfe4d]                           dc.b $00
_31_ED_AFLAGS:
[000bfe4e]                           dc.b $00
[000bfe4f]                           dc.b $1d
[000bfe50]                           dc.w $ffff
[000bfe52]                           dc.w $ffff
[000bfe54]                           dc.b $00
[000bfe55]                           dc.b $18
[000bfe56]                           dc.b $00
[000bfe57]                           dc.b $00
[000bfe58]                           dc.b $00
[000bfe59]                           dc.b $08
[000bfe5a] 000bfa46                  dc.l A_CHECKBOX01
[000bfe5e]                           dc.b $00
[000bfe5f]                           dc.b $00
[000bfe60]                           dc.b $00
[000bfe61]                           dc.b $00
[000bfe62]                           dc.b $00
[000bfe63]                           dc.b $02
[000bfe64]                           dc.b $00
[000bfe65]                           dc.b $01
_32_ED_AFLAGS:
[000bfe66]                           dc.b $00
[000bfe67]                           dc.b $01
[000bfe68]                           dc.b $00
[000bfe69]                           dc.b $22
[000bfe6a]                           dc.b $00
[000bfe6b]                           dc.b $22
[000bfe6c]                           dc.b $00
[000bfe6d]                           dc.b $18
[000bfe6e]                           dc.b $00
[000bfe6f]                           dc.b $40
[000bfe70]                           dc.b $00
[000bfe71]                           dc.b $00
[000bfe72] 000bf8a6                  dc.l A_3DBUTTON14
[000bfe76]                           dc.b $00
[000bfe77]                           dc.b $10
[000bfe78]                           dc.b $00
[000bfe79]                           dc.b $04
[000bfe7a]                           dc.b $00
[000bfe7b]                           dc.b $0b
[000bfe7c]                           dc.b $00
[000bfe7d]                           dc.b $01
_32aED_AFLAGS:
[000bfe7e]                           dc.b $00
[000bfe7f]                           dc.b $00
[000bfe80]                           dc.b $00
[000bfe81]                           dc.b $00
[000bfe82]                           dc.b $00
[000bfe83]                           dc.b $00
[000bfe84]                           dc.b $00
[000bfe85]                           dc.b $00
[000bfe86]                           dc.w $8000
[000bfe88]                           dc.w $8843
[000bfe8a]                           dc.b $00
[000bfe8b]                           dc.b $00
[000bfe8c]                           dc.b $00
[000bfe8d]                           dc.b $00
[000bfe8e]                           dc.b $00
[000bfe8f]                           dc.b $00
[000bfe90]                           dc.b $00
[000bfe91]                           dc.b $00
[000bfe92]                           dc.b $00
[000bfe93]                           dc.b $00
[000bfe94]                           dc.b $00
[000bfe95]                           dc.b $00
_34_ED_AFLAGS:
[000bfe96]                           dc.b $00
[000bfe97]                           dc.b $20
[000bfe98]                           dc.w $ffff
[000bfe9a]                           dc.w $ffff
[000bfe9c]                           dc.b $00
[000bfe9d]                           dc.b $18
[000bfe9e]                           dc.b $00
[000bfe9f]                           dc.b $00
[000bfea0]                           dc.b $00
[000bfea1]                           dc.b $08
[000bfea2] 000bfa46                  dc.l A_CHECKBOX01
[000bfea6]                           dc.b $00
[000bfea7]                           dc.b $00
[000bfea8]                           dc.b $00
[000bfea9]                           dc.b $00
[000bfeaa]                           dc.b $00
[000bfeab]                           dc.b $02
[000bfeac]                           dc.b $00
[000bfead]                           dc.b $01
_35_ED_AFLAGS:
[000bfeae]                           dc.b $00
[000bfeaf]                           dc.b $36
[000bfeb0]                           dc.b $00
[000bfeb1]                           dc.b $24
[000bfeb2]                           dc.b $00
[000bfeb3]                           dc.b $33
[000bfeb4]                           dc.b $00
[000bfeb5]                           dc.b $18
[000bfeb6]                           dc.b $00
[000bfeb7]                           dc.b $40
[000bfeb8]                           dc.b $00
[000bfeb9]                           dc.b $00
[000bfeba] 000bfae6                  dc.l A_INNERFRAME02
[000bfebe]                           dc.b $00
[000bfebf]                           dc.b $01
[000bfec0]                           dc.b $00
[000bfec1]                           dc.b $06
[000bfec2]                           dc.b $00
[000bfec3]                           dc.b $1c
[000bfec4]                           dc.b $00
[000bfec5]                           dc.b $06
_36_ED_AFLAGS:
[000bfec6]                           dc.b $00
[000bfec7]                           dc.b $27
[000bfec8]                           dc.b $00
[000bfec9]                           dc.b $26
[000bfeca]                           dc.b $00
[000bfecb]                           dc.b $26
[000bfecc]                           dc.b $00
[000bfecd]                           dc.b $18
[000bfece]                           dc.b $00
[000bfecf]                           dc.b $40
[000bfed0]                           dc.b $00
[000bfed1]                           dc.b $00
[000bfed2] 000bf8c6                  dc.l A_3DBUTTON15
[000bfed6]                           dc.b $00
[000bfed7]                           dc.b $01
[000bfed8]                           dc.b $00
[000bfed9]                           dc.b $01
[000bfeda]                           dc.b $00
[000bfedb]                           dc.b $0b
[000bfedc]                           dc.b $00
[000bfedd]                           dc.b $01
_36aED_AFLAGS:
[000bfede]                           dc.b $00
[000bfedf]                           dc.b $00
[000bfee0]                           dc.b $00
[000bfee1]                           dc.b $00
[000bfee2]                           dc.b $00
[000bfee3]                           dc.b $00
[000bfee4]                           dc.b $00
[000bfee5]                           dc.b $00
[000bfee6]                           dc.w $8000
[000bfee8]                           dc.w $8b53
[000bfeea]                           dc.b $00
[000bfeeb]                           dc.b $00
[000bfeec]                           dc.b $00
[000bfeed]                           dc.b $00
[000bfeee]                           dc.b $00
[000bfeef]                           dc.b $00
[000bfef0]                           dc.b $00
[000bfef1]                           dc.b $00
[000bfef2]                           dc.b $00
[000bfef3]                           dc.b $00
[000bfef4]                           dc.b $00
[000bfef5]                           dc.b $00
_38_ED_AFLAGS:
[000bfef6]                           dc.b $00
[000bfef7]                           dc.b $24
[000bfef8]                           dc.w $ffff
[000bfefa]                           dc.w $ffff
[000bfefc]                           dc.b $00
[000bfefd]                           dc.b $18
[000bfefe]                           dc.b $00
[000bfeff]                           dc.b $00
[000bff00]                           dc.b $00
[000bff01]                           dc.b $08
[000bff02] 000bfa46                  dc.l A_CHECKBOX01
[000bff06]                           dc.b $00
[000bff07]                           dc.b $00
[000bff08]                           dc.b $00
[000bff09]                           dc.b $00
[000bff0a]                           dc.b $00
[000bff0b]                           dc.b $02
[000bff0c]                           dc.b $00
[000bff0d]                           dc.b $01
_39_ED_AFLAGS:
[000bff0e]                           dc.b $00
[000bff0f]                           dc.b $2a
[000bff10]                           dc.b $00
[000bff11]                           dc.b $29
[000bff12]                           dc.b $00
[000bff13]                           dc.b $29
[000bff14]                           dc.b $00
[000bff15]                           dc.b $18
[000bff16]                           dc.b $00
[000bff17]                           dc.b $40
[000bff18]                           dc.b $00
[000bff19]                           dc.b $00
[000bff1a] 000bf8e6                  dc.l A_3DBUTTON16
[000bff1e]                           dc.b $00
[000bff1f]                           dc.b $10
[000bff20]                           dc.b $00
[000bff21]                           dc.b $01
[000bff22]                           dc.b $00
[000bff23]                           dc.b $0a
[000bff24]                           dc.b $00
[000bff25]                           dc.b $01
_39aED_AFLAGS:
[000bff26]                           dc.b $00
[000bff27]                           dc.b $00
[000bff28]                           dc.b $00
[000bff29]                           dc.b $00
[000bff2a]                           dc.b $00
[000bff2b]                           dc.b $00
[000bff2c]                           dc.b $00
[000bff2d]                           dc.b $00
[000bff2e]                           dc.w $8000
[000bff30]                           dc.w $8b52
[000bff32]                           dc.b $00
[000bff33]                           dc.b $00
[000bff34]                           dc.b $00
[000bff35]                           dc.b $00
[000bff36]                           dc.b $00
[000bff37]                           dc.b $00
[000bff38]                           dc.b $00
[000bff39]                           dc.b $00
[000bff3a]                           dc.b $00
[000bff3b]                           dc.b $00
[000bff3c]                           dc.b $00
[000bff3d]                           dc.b $00
_41_ED_AFLAGS:
[000bff3e]                           dc.b $00
[000bff3f]                           dc.b $27
[000bff40]                           dc.w $ffff
[000bff42]                           dc.w $ffff
[000bff44]                           dc.b $00
[000bff45]                           dc.b $18
[000bff46]                           dc.b $00
[000bff47]                           dc.b $00
[000bff48]                           dc.b $00
[000bff49]                           dc.b $08
[000bff4a] 000bfa46                  dc.l A_CHECKBOX01
[000bff4e]                           dc.b $00
[000bff4f]                           dc.b $00
[000bff50]                           dc.b $00
[000bff51]                           dc.b $00
[000bff52]                           dc.b $00
[000bff53]                           dc.b $02
[000bff54]                           dc.b $00
[000bff55]                           dc.b $01
_42_ED_AFLAGS:
[000bff56]                           dc.b $00
[000bff57]                           dc.b $2d
[000bff58]                           dc.b $00
[000bff59]                           dc.b $2c
[000bff5a]                           dc.b $00
[000bff5b]                           dc.b $2c
[000bff5c]                           dc.b $00
[000bff5d]                           dc.b $18
[000bff5e]                           dc.b $00
[000bff5f]                           dc.b $40
[000bff60]                           dc.b $00
[000bff61]                           dc.b $00
[000bff62] 000bf926                  dc.l A_3DBUTTON18
[000bff66]                           dc.b $00
[000bff67]                           dc.b $01
[000bff68]                           dc.b $00
[000bff69]                           dc.b $02
[000bff6a]                           dc.b $00
[000bff6b]                           dc.b $0b
[000bff6c]                           dc.b $00
[000bff6d]                           dc.b $01
_42aED_AFLAGS:
[000bff6e]                           dc.b $00
[000bff6f]                           dc.b $00
[000bff70]                           dc.b $00
[000bff71]                           dc.b $00
[000bff72]                           dc.b $00
[000bff73]                           dc.b $00
[000bff74]                           dc.b $00
[000bff75]                           dc.b $00
[000bff76]                           dc.w $8000
[000bff78]                           dc.w $8b44
[000bff7a]                           dc.b $00
[000bff7b]                           dc.b $00
[000bff7c]                           dc.b $00
[000bff7d]                           dc.b $00
[000bff7e]                           dc.b $00
[000bff7f]                           dc.b $00
[000bff80]                           dc.b $00
[000bff81]                           dc.b $00
[000bff82]                           dc.b $00
[000bff83]                           dc.b $00
[000bff84]                           dc.b $00
[000bff85]                           dc.b $00
_44_ED_AFLAGS:
[000bff86]                           dc.b $00
[000bff87]                           dc.b $2a
[000bff88]                           dc.w $ffff
[000bff8a]                           dc.w $ffff
[000bff8c]                           dc.b $00
[000bff8d]                           dc.b $18
[000bff8e]                           dc.b $00
[000bff8f]                           dc.b $00
[000bff90]                           dc.b $00
[000bff91]                           dc.b $08
[000bff92] 000bfa46                  dc.l A_CHECKBOX01
[000bff96]                           dc.b $00
[000bff97]                           dc.b $00
[000bff98]                           dc.b $00
[000bff99]                           dc.b $00
[000bff9a]                           dc.b $00
[000bff9b]                           dc.b $02
[000bff9c]                           dc.b $00
[000bff9d]                           dc.b $01
_45_ED_AFLAGS:
[000bff9e]                           dc.b $00
[000bff9f]                           dc.b $30
[000bffa0]                           dc.b $00
[000bffa1]                           dc.b $2f
[000bffa2]                           dc.b $00
[000bffa3]                           dc.b $2f
[000bffa4]                           dc.b $00
[000bffa5]                           dc.b $18
[000bffa6]                           dc.b $00
[000bffa7]                           dc.b $40
[000bffa8]                           dc.b $00
[000bffa9]                           dc.b $00
[000bffaa] 000bf946                  dc.l A_3DBUTTON19
[000bffae]                           dc.b $00
[000bffaf]                           dc.b $10
[000bffb0]                           dc.b $00
[000bffb1]                           dc.b $02
[000bffb2]                           dc.b $00
[000bffb3]                           dc.b $0a
[000bffb4]                           dc.b $00
[000bffb5]                           dc.b $01
_45aED_AFLAGS:
[000bffb6]                           dc.b $00
[000bffb7]                           dc.b $00
[000bffb8]                           dc.b $00
[000bffb9]                           dc.b $00
[000bffba]                           dc.b $00
[000bffbb]                           dc.b $00
[000bffbc]                           dc.b $00
[000bffbd]                           dc.b $00
[000bffbe]                           dc.w $8000
[000bffc0]                           dc.w $8b43
[000bffc2]                           dc.b $00
[000bffc3]                           dc.b $00
[000bffc4]                           dc.b $00
[000bffc5]                           dc.b $00
[000bffc6]                           dc.b $00
[000bffc7]                           dc.b $00
[000bffc8]                           dc.b $00
[000bffc9]                           dc.b $00
[000bffca]                           dc.b $00
[000bffcb]                           dc.b $00
[000bffcc]                           dc.b $00
[000bffcd]                           dc.b $00
_47_ED_AFLAGS:
[000bffce]                           dc.b $00
[000bffcf]                           dc.b $2d
[000bffd0]                           dc.w $ffff
[000bffd2]                           dc.w $ffff
[000bffd4]                           dc.b $00
[000bffd5]                           dc.b $18
[000bffd6]                           dc.b $00
[000bffd7]                           dc.b $00
[000bffd8]                           dc.b $00
[000bffd9]                           dc.b $08
[000bffda] 000bfa46                  dc.l A_CHECKBOX01
[000bffde]                           dc.b $00
[000bffdf]                           dc.b $00
[000bffe0]                           dc.b $00
[000bffe1]                           dc.b $00
[000bffe2]                           dc.b $00
[000bffe3]                           dc.b $02
[000bffe4]                           dc.b $00
[000bffe5]                           dc.b $01
_48_ED_AFLAGS:
[000bffe6]                           dc.b $00
[000bffe7]                           dc.b $33
[000bffe8]                           dc.b $00
[000bffe9]                           dc.b $32
[000bffea]                           dc.b $00
[000bffeb]                           dc.b $32
[000bffec]                           dc.b $00
[000bffed]                           dc.b $18
[000bffee]                           dc.b $00
[000bffef]                           dc.b $40
[000bfff0]                           dc.b $00
[000bfff1]                           dc.b $00
[000bfff2] 000bf906                  dc.l A_3DBUTTON17
[000bfff6]                           dc.b $00
[000bfff7]                           dc.b $01
[000bfff8]                           dc.b $00
[000bfff9]                           dc.b $03
[000bfffa]                           dc.b $00
[000bfffb]                           dc.b $0b
[000bfffc]                           dc.b $00
[000bfffd]                           dc.b $01
_48aED_AFLAGS:
[000bfffe]                           dc.b $00
[000bffff]                           dc.b $00
[000c0000]                           dc.b $00
[000c0001]                           dc.b $00
[000c0002]                           dc.b $00
[000c0003]                           dc.b $00
[000c0004]                           dc.b $00
[000c0005]                           dc.b $00
[000c0006]                           dc.w $8000
[000c0008]                           dc.w $8b4f
[000c000a]                           dc.b $00
[000c000b]                           dc.b $00
[000c000c]                           dc.b $00
[000c000d]                           dc.b $00
[000c000e]                           dc.b $00
[000c000f]                           dc.b $00
[000c0010]                           dc.b $00
[000c0011]                           dc.b $00
[000c0012]                           dc.b $00
[000c0013]                           dc.b $00
[000c0014]                           dc.b $00
[000c0015]                           dc.b $00
_50_ED_AFLAGS:
[000c0016]                           dc.b $00
[000c0017]                           dc.b $30
[000c0018]                           dc.w $ffff
[000c001a]                           dc.w $ffff
[000c001c]                           dc.b $00
[000c001d]                           dc.b $18
[000c001e]                           dc.b $00
[000c001f]                           dc.b $00
[000c0020]                           dc.b $00
[000c0021]                           dc.b $08
[000c0022] 000bfa46                  dc.l A_CHECKBOX01
[000c0026]                           dc.b $00
[000c0027]                           dc.b $00
[000c0028]                           dc.b $00
[000c0029]                           dc.b $00
[000c002a]                           dc.b $00
[000c002b]                           dc.b $02
[000c002c]                           dc.b $00
[000c002d]                           dc.b $01
_51_ED_AFLAGS:
[000c002e]                           dc.b $00
[000c002f]                           dc.b $23
[000c0030]                           dc.b $00
[000c0031]                           dc.b $35
[000c0032]                           dc.b $00
[000c0033]                           dc.b $35
[000c0034]                           dc.b $00
[000c0035]                           dc.b $18
[000c0036]                           dc.b $00
[000c0037]                           dc.b $40
[000c0038]                           dc.b $00
[000c0039]                           dc.b $00
[000c003a] 000bf966                  dc.l A_3DBUTTON20
[000c003e]                           dc.b $00
[000c003f]                           dc.b $10
[000c0040]                           dc.b $00
[000c0041]                           dc.b $03
[000c0042]                           dc.b $00
[000c0043]                           dc.b $0b
[000c0044]                           dc.b $00
[000c0045]                           dc.b $01
_51aED_AFLAGS:
[000c0046]                           dc.b $00
[000c0047]                           dc.b $00
[000c0048]                           dc.b $00
[000c0049]                           dc.b $00
[000c004a]                           dc.b $00
[000c004b]                           dc.b $00
[000c004c]                           dc.b $00
[000c004d]                           dc.b $00
[000c004e]                           dc.w $8000
[000c0050]                           dc.w $8b48
[000c0052]                           dc.b $00
[000c0053]                           dc.b $00
[000c0054]                           dc.b $00
[000c0055]                           dc.b $00
[000c0056]                           dc.b $00
[000c0057]                           dc.b $00
[000c0058]                           dc.b $00
[000c0059]                           dc.b $00
[000c005a]                           dc.b $00
[000c005b]                           dc.b $00
[000c005c]                           dc.b $00
[000c005d]                           dc.b $00
_53_ED_AFLAGS:
[000c005e]                           dc.b $00
[000c005f]                           dc.b $33
[000c0060]                           dc.w $ffff
[000c0062]                           dc.w $ffff
[000c0064]                           dc.b $00
[000c0065]                           dc.b $18
[000c0066]                           dc.b $00
[000c0067]                           dc.b $00
[000c0068]                           dc.b $00
[000c0069]                           dc.b $08
[000c006a] 000bfa46                  dc.l A_CHECKBOX01
[000c006e]                           dc.b $00
[000c006f]                           dc.b $00
[000c0070]                           dc.b $00
[000c0071]                           dc.b $00
[000c0072]                           dc.b $00
[000c0073]                           dc.b $02
[000c0074]                           dc.b $00
[000c0075]                           dc.b $01
_54_ED_AFLAGS:
[000c0076]                           dc.b $00
[000c0077]                           dc.b $3f
[000c0078]                           dc.b $00
[000c0079]                           dc.b $37
[000c007a]                           dc.b $00
[000c007b]                           dc.b $3d
[000c007c]                           dc.b $00
[000c007d]                           dc.b $18
[000c007e]                           dc.b $00
[000c007f]                           dc.b $40
[000c0080]                           dc.b $00
[000c0081]                           dc.b $00
[000c0082] 000bfb46                  dc.l A_INNERFRAME05
[000c0086]                           dc.b $00
[000c0087]                           dc.b $1d
[000c0088]                           dc.b $00
[000c0089]                           dc.b $06
[000c008a]                           dc.b $00
[000c008b]                           dc.b $10
[000c008c]                           dc.b $00
[000c008d]                           dc.b $06
_55_ED_AFLAGS:
[000c008e]                           dc.b $00
[000c008f]                           dc.b $39
[000c0090]                           dc.w $ffff
[000c0092]                           dc.w $ffff
[000c0094]                           dc.b $00
[000c0095]                           dc.b $18
[000c0096]                           dc.b $00
[000c0097]                           dc.b $11
[000c0098]                           dc.b $00
[000c0099]                           dc.b $00
[000c009a] 000bfa86                  dc.l A_CHECKBOX03
[000c009e]                           dc.b $00
[000c009f]                           dc.b $01
[000c00a0]                           dc.b $00
[000c00a1]                           dc.b $01
[000c00a2]                           dc.b $00
[000c00a3]                           dc.b $07
[000c00a4]                           dc.b $00
[000c00a5]                           dc.b $01
_55aED_AFLAGS:
[000c00a6]                           dc.b $00
[000c00a7]                           dc.b $00
[000c00a8]                           dc.b $00
[000c00a9]                           dc.b $00
[000c00aa]                           dc.b $00
[000c00ab]                           dc.b $00
[000c00ac]                           dc.b $00
[000c00ad]                           dc.b $00
[000c00ae]                           dc.w $8000
[000c00b0]                           dc.w $8b4e
[000c00b2]                           dc.b $00
[000c00b3]                           dc.b $00
[000c00b4]                           dc.b $00
[000c00b5]                           dc.b $00
[000c00b6]                           dc.b $00
[000c00b7]                           dc.b $00
[000c00b8]                           dc.b $00
[000c00b9]                           dc.b $00
[000c00ba]                           dc.b $00
[000c00bb]                           dc.b $00
[000c00bc]                           dc.b $00
[000c00bd]                           dc.b $00
_57_ED_AFLAGS:
[000c00be]                           dc.b $00
[000c00bf]                           dc.b $3b
[000c00c0]                           dc.w $ffff
[000c00c2]                           dc.w $ffff
[000c00c4]                           dc.b $00
[000c00c5]                           dc.b $18
[000c00c6]                           dc.b $00
[000c00c7]                           dc.b $11
[000c00c8]                           dc.b $00
[000c00c9]                           dc.b $00
[000c00ca] 000bfa66                  dc.l A_CHECKBOX02
[000c00ce]                           dc.b $00
[000c00cf]                           dc.b $01
[000c00d0]                           dc.b $00
[000c00d1]                           dc.b $02
[000c00d2]                           dc.b $00
[000c00d3]                           dc.b $0c
[000c00d4]                           dc.b $00
[000c00d5]                           dc.b $01
_57aED_AFLAGS:
[000c00d6]                           dc.b $00
[000c00d7]                           dc.b $00
[000c00d8]                           dc.b $00
[000c00d9]                           dc.b $00
[000c00da]                           dc.b $00
[000c00db]                           dc.b $00
[000c00dc]                           dc.b $00
[000c00dd]                           dc.b $00
[000c00de]                           dc.w $8000
[000c00e0]                           dc.w $8b49
[000c00e2]                           dc.b $00
[000c00e3]                           dc.b $00
[000c00e4]                           dc.b $00
[000c00e5]                           dc.b $00
[000c00e6]                           dc.b $00
[000c00e7]                           dc.b $00
[000c00e8]                           dc.b $00
[000c00e9]                           dc.b $00
[000c00ea]                           dc.b $00
[000c00eb]                           dc.b $00
[000c00ec]                           dc.b $00
[000c00ed]                           dc.b $00
_59_ED_AFLAGS:
[000c00ee]                           dc.b $00
[000c00ef]                           dc.b $3d
[000c00f0]                           dc.w $ffff
[000c00f2]                           dc.w $ffff
[000c00f4]                           dc.b $00
[000c00f5]                           dc.b $18
[000c00f6]                           dc.b $00
[000c00f7]                           dc.b $11
[000c00f8]                           dc.b $00
[000c00f9]                           dc.b $00
[000c00fa] 000bfaa6                  dc.l A_CHECKBOX04
[000c00fe]                           dc.b $00
[000c00ff]                           dc.b $01
[000c0100]                           dc.b $00
[000c0101]                           dc.b $03
[000c0102]                           dc.b $00
[000c0103]                           dc.b $0c
[000c0104]                           dc.b $00
[000c0105]                           dc.b $01
_59aED_AFLAGS:
[000c0106]                           dc.b $00
[000c0107]                           dc.b $00
[000c0108]                           dc.b $00
[000c0109]                           dc.b $00
[000c010a]                           dc.b $00
[000c010b]                           dc.b $00
[000c010c]                           dc.b $00
[000c010d]                           dc.b $00
[000c010e]                           dc.w $8000
[000c0110]                           dc.w $8b41
[000c0112]                           dc.b $00
[000c0113]                           dc.b $00
[000c0114]                           dc.b $00
[000c0115]                           dc.b $00
[000c0116]                           dc.b $00
[000c0117]                           dc.b $00
[000c0118]                           dc.b $00
[000c0119]                           dc.b $00
[000c011a]                           dc.b $00
[000c011b]                           dc.b $00
[000c011c]                           dc.b $00
[000c011d]                           dc.b $00
_61_ED_AFLAGS:
[000c011e]                           dc.b $00
[000c011f]                           dc.b $36
[000c0120]                           dc.w $ffff
[000c0122]                           dc.w $ffff
[000c0124]                           dc.b $00
[000c0125]                           dc.b $18
[000c0126]                           dc.b $00
[000c0127]                           dc.b $11
[000c0128]                           dc.b $00
[000c0129]                           dc.b $00
[000c012a] 000bfac6                  dc.l A_CHECKBOX05
[000c012e]                           dc.b $00
[000c012f]                           dc.b $01
[000c0130]                           dc.b $00
[000c0131]                           dc.b $04
[000c0132]                           dc.b $00
[000c0133]                           dc.b $0d
[000c0134]                           dc.b $00
[000c0135]                           dc.b $01
_61aED_AFLAGS:
[000c0136]                           dc.b $00
[000c0137]                           dc.b $00
[000c0138]                           dc.b $00
[000c0139]                           dc.b $00
[000c013a]                           dc.b $00
[000c013b]                           dc.b $00
[000c013c]                           dc.b $00
[000c013d]                           dc.b $00
[000c013e]                           dc.w $8000
[000c0140]                           dc.w $8b4b
[000c0142]                           dc.b $00
[000c0143]                           dc.b $00
[000c0144]                           dc.b $00
[000c0145]                           dc.b $00
[000c0146]                           dc.b $00
[000c0147]                           dc.b $00
[000c0148]                           dc.b $00
[000c0149]                           dc.b $00
[000c014a]                           dc.b $00
[000c014b]                           dc.b $00
[000c014c]                           dc.b $00
[000c014d]                           dc.b $00
_63_ED_AFLAGS:
[000c014e]                           dc.b $00
[000c014f]                           dc.b $58
[000c0150]                           dc.b $00
[000c0151]                           dc.b $40
[000c0152]                           dc.b $00
[000c0153]                           dc.b $55
[000c0154]                           dc.b $00
[000c0155]                           dc.b $18
[000c0156]                           dc.b $00
[000c0157]                           dc.b $40
[000c0158]                           dc.b $00
[000c0159]                           dc.b $00
[000c015a] 000bfb06                  dc.l A_INNERFRAME03
[000c015e]                           dc.b $00
[000c015f]                           dc.b $01
[000c0160]                           dc.b $00
[000c0161]                           dc.b $0c
[000c0162]                           dc.b $00
[000c0163]                           dc.b $2c
[000c0164]                           dc.b $00
[000c0165]                           dc.b $05
_64_ED_AFLAGS:
[000c0166]                           dc.b $00
[000c0167]                           dc.b $43
[000c0168]                           dc.b $00
[000c0169]                           dc.b $42
[000c016a]                           dc.b $00
[000c016b]                           dc.b $42
[000c016c]                           dc.b $00
[000c016d]                           dc.b $18
[000c016e]                           dc.b $00
[000c016f]                           dc.b $40
[000c0170]                           dc.b $00
[000c0171]                           dc.b $00
[000c0172] 000bf9e6                  dc.l A_3DBUTTON29
[000c0176]                           dc.b $00
[000c0177]                           dc.b $01
[000c0178]                           dc.b $00
[000c0179]                           dc.b $01
[000c017a]                           dc.b $00
[000c017b]                           dc.b $08
[000c017c]                           dc.b $00
[000c017d]                           dc.b $01
_64aED_AFLAGS:
[000c017e]                           dc.b $00
[000c017f]                           dc.b $00
[000c0180]                           dc.b $00
[000c0181]                           dc.b $00
[000c0182]                           dc.b $00
[000c0183]                           dc.b $00
[000c0184]                           dc.b $00
[000c0185]                           dc.b $00
[000c0186]                           dc.w $8000
[000c0188]                           dc.w $8b4c
[000c018a]                           dc.b $00
[000c018b]                           dc.b $00
[000c018c]                           dc.b $00
[000c018d]                           dc.b $00
[000c018e]                           dc.b $00
[000c018f]                           dc.b $00
[000c0190]                           dc.b $00
[000c0191]                           dc.b $00
[000c0192]                           dc.b $00
[000c0193]                           dc.b $00
[000c0194]                           dc.b $00
[000c0195]                           dc.b $00
_66_ED_AFLAGS:
[000c0196]                           dc.b $00
[000c0197]                           dc.b $40
[000c0198]                           dc.w $ffff
[000c019a]                           dc.w $ffff
[000c019c]                           dc.b $00
[000c019d]                           dc.b $18
[000c019e]                           dc.b $00
[000c019f]                           dc.b $00
[000c01a0]                           dc.b $00
[000c01a1]                           dc.b $08
[000c01a2] 000bfa46                  dc.l A_CHECKBOX01
[000c01a6]                           dc.b $00
[000c01a7]                           dc.b $00
[000c01a8]                           dc.b $00
[000c01a9]                           dc.b $00
[000c01aa]                           dc.b $00
[000c01ab]                           dc.b $02
[000c01ac]                           dc.b $00
[000c01ad]                           dc.b $01
_67_ED_AFLAGS:
[000c01ae]                           dc.b $00
[000c01af]                           dc.b $46
[000c01b0]                           dc.b $00
[000c01b1]                           dc.b $45
[000c01b2]                           dc.b $00
[000c01b3]                           dc.b $45
[000c01b4]                           dc.b $00
[000c01b5]                           dc.b $18
[000c01b6]                           dc.b $00
[000c01b7]                           dc.b $40
[000c01b8]                           dc.b $00
[000c01b9]                           dc.b $00
[000c01ba] 000bf9a6                  dc.l A_3DBUTTON22
[000c01be]                           dc.b $00
[000c01bf]                           dc.b $0b
[000c01c0]                           dc.b $00
[000c01c1]                           dc.b $01
[000c01c2]                           dc.b $00
[000c01c3]                           dc.b $09
[000c01c4]                           dc.b $00
[000c01c5]                           dc.b $01
_67aED_AFLAGS:
[000c01c6]                           dc.b $00
[000c01c7]                           dc.b $00
[000c01c8]                           dc.b $00
[000c01c9]                           dc.b $00
[000c01ca]                           dc.b $00
[000c01cb]                           dc.b $00
[000c01cc]                           dc.b $00
[000c01cd]                           dc.b $00
[000c01ce]                           dc.w $8000
[000c01d0]                           dc.w $8b45
[000c01d2]                           dc.b $00
[000c01d3]                           dc.b $00
[000c01d4]                           dc.b $00
[000c01d5]                           dc.b $00
[000c01d6]                           dc.b $00
[000c01d7]                           dc.b $00
[000c01d8]                           dc.b $00
[000c01d9]                           dc.b $00
[000c01da]                           dc.b $00
[000c01db]                           dc.b $00
[000c01dc]                           dc.b $00
[000c01dd]                           dc.b $00
_69_ED_AFLAGS:
[000c01de]                           dc.b $00
[000c01df]                           dc.b $43
[000c01e0]                           dc.w $ffff
[000c01e2]                           dc.w $ffff
[000c01e4]                           dc.b $00
[000c01e5]                           dc.b $18
[000c01e6]                           dc.b $00
[000c01e7]                           dc.b $00
[000c01e8]                           dc.b $00
[000c01e9]                           dc.b $08
[000c01ea] 000bfa46                  dc.l A_CHECKBOX01
[000c01ee]                           dc.b $00
[000c01ef]                           dc.b $00
[000c01f0]                           dc.b $00
[000c01f1]                           dc.b $00
[000c01f2]                           dc.b $00
[000c01f3]                           dc.b $02
[000c01f4]                           dc.b $00
[000c01f5]                           dc.b $01
_70_ED_AFLAGS:
[000c01f6]                           dc.b $00
[000c01f7]                           dc.b $49
[000c01f8]                           dc.b $00
[000c01f9]                           dc.b $48
[000c01fa]                           dc.b $00
[000c01fb]                           dc.b $48
[000c01fc]                           dc.b $00
[000c01fd]                           dc.b $18
[000c01fe]                           dc.b $00
[000c01ff]                           dc.b $40
[000c0200]                           dc.b $00
[000c0201]                           dc.b $00
[000c0202] 000bf986                  dc.l A_3DBUTTON21
[000c0206]                           dc.b $00
[000c0207]                           dc.b $16
[000c0208]                           dc.b $00
[000c0209]                           dc.b $01
[000c020a]                           dc.b $00
[000c020b]                           dc.b $07
[000c020c]                           dc.b $00
[000c020d]                           dc.b $01
_70aED_AFLAGS:
[000c020e]                           dc.b $00
[000c020f]                           dc.b $00
[000c0210]                           dc.b $00
[000c0211]                           dc.b $00
[000c0212]                           dc.b $00
[000c0213]                           dc.b $00
[000c0214]                           dc.b $00
[000c0215]                           dc.b $00
[000c0216]                           dc.w $8000
[000c0218]                           dc.w $8b42
[000c021a]                           dc.b $00
[000c021b]                           dc.b $00
[000c021c]                           dc.b $00
[000c021d]                           dc.b $00
[000c021e]                           dc.b $00
[000c021f]                           dc.b $00
[000c0220]                           dc.b $00
[000c0221]                           dc.b $00
[000c0222]                           dc.b $00
[000c0223]                           dc.b $00
[000c0224]                           dc.b $00
[000c0225]                           dc.b $00
_72_ED_AFLAGS:
[000c0226]                           dc.b $00
[000c0227]                           dc.b $46
[000c0228]                           dc.w $ffff
[000c022a]                           dc.w $ffff
[000c022c]                           dc.b $00
[000c022d]                           dc.b $18
[000c022e]                           dc.b $00
[000c022f]                           dc.b $00
[000c0230]                           dc.b $00
[000c0231]                           dc.b $08
[000c0232] 000bfa46                  dc.l A_CHECKBOX01
[000c0236]                           dc.b $00
[000c0237]                           dc.b $00
[000c0238]                           dc.b $00
[000c0239]                           dc.b $00
[000c023a]                           dc.b $00
[000c023b]                           dc.b $02
[000c023c]                           dc.b $00
[000c023d]                           dc.b $01
_73_ED_AFLAGS:
[000c023e]                           dc.b $00
[000c023f]                           dc.b $4c
[000c0240]                           dc.b $00
[000c0241]                           dc.b $4b
[000c0242]                           dc.b $00
[000c0243]                           dc.b $4b
[000c0244]                           dc.b $00
[000c0245]                           dc.b $18
[000c0246]                           dc.b $00
[000c0247]                           dc.b $40
[000c0248]                           dc.b $00
[000c0249]                           dc.b $00
[000c024a] 000bf9c6                  dc.l A_3DBUTTON23
[000c024e]                           dc.b $00
[000c024f]                           dc.b $20
[000c0250]                           dc.b $00
[000c0251]                           dc.b $01
[000c0252]                           dc.b $00
[000c0253]                           dc.b $08
[000c0254]                           dc.b $00
[000c0255]                           dc.b $01
_73aED_AFLAGS:
[000c0256]                           dc.b $00
[000c0257]                           dc.b $00
[000c0258]                           dc.b $00
[000c0259]                           dc.b $00
[000c025a]                           dc.b $00
[000c025b]                           dc.b $00
[000c025c]                           dc.b $00
[000c025d]                           dc.b $00
[000c025e]                           dc.w $8000
[000c0260]                           dc.w $8b55
[000c0262]                           dc.b $00
[000c0263]                           dc.b $00
[000c0264]                           dc.b $00
[000c0265]                           dc.b $00
[000c0266]                           dc.b $00
[000c0267]                           dc.b $00
[000c0268]                           dc.b $00
[000c0269]                           dc.b $00
[000c026a]                           dc.b $00
[000c026b]                           dc.b $00
[000c026c]                           dc.b $00
[000c026d]                           dc.b $00
_75_ED_AFLAGS:
[000c026e]                           dc.b $00
[000c026f]                           dc.b $49
[000c0270]                           dc.w $ffff
[000c0272]                           dc.w $ffff
[000c0274]                           dc.b $00
[000c0275]                           dc.b $18
[000c0276]                           dc.b $00
[000c0277]                           dc.b $00
[000c0278]                           dc.b $00
[000c0279]                           dc.b $08
[000c027a] 000bfa46                  dc.l A_CHECKBOX01
[000c027e]                           dc.b $00
[000c027f]                           dc.b $00
[000c0280]                           dc.b $00
[000c0281]                           dc.b $00
[000c0282]                           dc.b $00
[000c0283]                           dc.b $02
[000c0284]                           dc.b $00
[000c0285]                           dc.b $01
_76_ED_AFLAGS:
[000c0286]                           dc.b $00
[000c0287]                           dc.b $4f
[000c0288]                           dc.b $00
[000c0289]                           dc.b $4d
[000c028a]                           dc.b $00
[000c028b]                           dc.b $4e
[000c028c]                           dc.b $00
[000c028d]                           dc.b $14
[000c028e]                           dc.b $00
[000c028f]                           dc.b $00
[000c0290]                           dc.b $00
[000c0291]                           dc.b $00
[000c0292]                           dc.b $00
[000c0293]                           dc.b $00
[000c0294]                           dc.w $0101
[000c0296]                           dc.b $00
[000c0297]                           dc.b $04
[000c0298]                           dc.b $00
[000c0299]                           dc.b $02
[000c029a]                           dc.b $00
[000c029b]                           dc.b $04
[000c029c]                           dc.b $00
[000c029d]                           dc.b $02
_77_ED_AFLAGS:
[000c029e]                           dc.b $00
[000c029f]                           dc.b $4e
[000c02a0]                           dc.w $ffff
[000c02a2]                           dc.w $ffff
[000c02a4]                           dc.b $00
[000c02a5]                           dc.b $18
[000c02a6]                           dc.b $00
[000c02a7]                           dc.b $40
[000c02a8]                           dc.b $00
[000c02a9]                           dc.b $00
[000c02aa] 000bfa06                  dc.l A_ARROWS01
[000c02ae]                           dc.b $00
[000c02af]                           dc.b $00
[000c02b0]                           dc.b $00
[000c02b1]                           dc.b $01
[000c02b2]                           dc.b $00
[000c02b3]                           dc.b $04
[000c02b4]                           dc.b $00
[000c02b5]                           dc.b $01
_78_ED_AFLAGS:
[000c02b6]                           dc.b $00
[000c02b7]                           dc.b $4c
[000c02b8]                           dc.w $ffff
[000c02ba]                           dc.w $ffff
[000c02bc]                           dc.b $00
[000c02bd]                           dc.b $14
[000c02be]                           dc.b $00
[000c02bf]                           dc.b $40
[000c02c0]                           dc.b $00
[000c02c1]                           dc.b $00
[000c02c2]                           dc.b $00
[000c02c3]                           dc.b $01
[000c02c4]                           dc.w $1111
[000c02c6]                           dc.b $00
[000c02c7]                           dc.b $00
[000c02c8]                           dc.b $00
[000c02c9]                           dc.b $00
[000c02ca]                           dc.b $00
[000c02cb]                           dc.b $02
[000c02cc]                           dc.b $00
[000c02cd]                           dc.b $01
_79_ED_AFLAGS:
[000c02ce]                           dc.b $00
[000c02cf]                           dc.b $52
[000c02d0]                           dc.b $00
[000c02d1]                           dc.b $50
[000c02d2]                           dc.b $00
[000c02d3]                           dc.b $51
[000c02d4]                           dc.b $00
[000c02d5]                           dc.b $14
[000c02d6]                           dc.b $00
[000c02d7]                           dc.b $00
[000c02d8]                           dc.b $00
[000c02d9]                           dc.b $00
[000c02da]                           dc.b $00
[000c02db]                           dc.b $00
[000c02dc]                           dc.w $0101
[000c02de]                           dc.b $00
[000c02df]                           dc.b $0e
[000c02e0]                           dc.b $00
[000c02e1]                           dc.b $02
[000c02e2]                           dc.b $00
[000c02e3]                           dc.b $04
[000c02e4]                           dc.b $00
[000c02e5]                           dc.b $02
_80_ED_AFLAGS:
[000c02e6]                           dc.b $00
[000c02e7]                           dc.b $51
[000c02e8]                           dc.w $ffff
[000c02ea]                           dc.w $ffff
[000c02ec]                           dc.b $00
[000c02ed]                           dc.b $18
[000c02ee]                           dc.b $00
[000c02ef]                           dc.b $40
[000c02f0]                           dc.b $00
[000c02f1]                           dc.b $00
[000c02f2] 000bfa06                  dc.l A_ARROWS01
[000c02f6]                           dc.b $00
[000c02f7]                           dc.b $02
[000c02f8]                           dc.b $00
[000c02f9]                           dc.b $01
[000c02fa]                           dc.b $00
[000c02fb]                           dc.b $02
[000c02fc]                           dc.b $00
[000c02fd]                           dc.b $01
_81_ED_AFLAGS:
[000c02fe]                           dc.b $00
[000c02ff]                           dc.b $4f
[000c0300]                           dc.w $ffff
[000c0302]                           dc.w $ffff
[000c0304]                           dc.b $00
[000c0305]                           dc.b $14
[000c0306]                           dc.b $00
[000c0307]                           dc.b $40
[000c0308]                           dc.b $00
[000c0309]                           dc.b $00
[000c030a]                           dc.b $00
[000c030b]                           dc.b $01
[000c030c]                           dc.w $1111
[000c030e]                           dc.b $00
[000c030f]                           dc.b $00
[000c0310]                           dc.b $00
[000c0311]                           dc.b $00
[000c0312]                           dc.b $00
[000c0313]                           dc.b $02
[000c0314]                           dc.b $00
[000c0315]                           dc.b $01
_82_ED_AFLAGS:
[000c0316]                           dc.b $00
[000c0317]                           dc.b $55
[000c0318]                           dc.b $00
[000c0319]                           dc.b $53
[000c031a]                           dc.b $00
[000c031b]                           dc.b $54
[000c031c]                           dc.b $00
[000c031d]                           dc.b $14
[000c031e]                           dc.b $00
[000c031f]                           dc.b $00
[000c0320]                           dc.b $00
[000c0321]                           dc.b $00
[000c0322]                           dc.b $00
[000c0323]                           dc.b $00
[000c0324]                           dc.w $0101
[000c0326]                           dc.b $00
[000c0327]                           dc.b $19
[000c0328]                           dc.b $00
[000c0329]                           dc.b $02
[000c032a]                           dc.b $00
[000c032b]                           dc.b $04
[000c032c]                           dc.b $00
[000c032d]                           dc.b $02
_83_ED_AFLAGS:
[000c032e]                           dc.b $00
[000c032f]                           dc.b $54
[000c0330]                           dc.w $ffff
[000c0332]                           dc.w $ffff
[000c0334]                           dc.b $00
[000c0335]                           dc.b $18
[000c0336]                           dc.b $00
[000c0337]                           dc.b $40
[000c0338]                           dc.b $00
[000c0339]                           dc.b $00
[000c033a] 000bfa26                  dc.l A_ARROWS02
[000c033e]                           dc.b $00
[000c033f]                           dc.b $02
[000c0340]                           dc.b $00
[000c0341]                           dc.b $00
[000c0342]                           dc.b $00
[000c0343]                           dc.b $02
[000c0344]                           dc.b $00
[000c0345]                           dc.b $02
_84_ED_AFLAGS:
[000c0346]                           dc.b $00
[000c0347]                           dc.b $52
[000c0348]                           dc.w $ffff
[000c034a]                           dc.w $ffff
[000c034c]                           dc.b $00
[000c034d]                           dc.b $14
[000c034e]                           dc.b $00
[000c034f]                           dc.b $40
[000c0350]                           dc.b $00
[000c0351]                           dc.b $00
[000c0352]                           dc.b $00
[000c0353]                           dc.b $01
[000c0354]                           dc.w $1111
[000c0356]                           dc.b $00
[000c0357]                           dc.b $00
[000c0358]                           dc.b $00
[000c0359]                           dc.b $00
[000c035a]                           dc.b $00
[000c035b]                           dc.b $02
[000c035c]                           dc.b $00
[000c035d]                           dc.b $01
_85_ED_AFLAGS:
[000c035e]                           dc.b $00
[000c035f]                           dc.b $3f
[000c0360]                           dc.b $00
[000c0361]                           dc.b $56
[000c0362]                           dc.b $00
[000c0363]                           dc.b $57
[000c0364]                           dc.b $00
[000c0365]                           dc.b $14
[000c0366]                           dc.b $00
[000c0367]                           dc.b $00
[000c0368]                           dc.b $00
[000c0369]                           dc.b $00
[000c036a]                           dc.b $00
[000c036b]                           dc.b $00
[000c036c]                           dc.w $0101
[000c036e]                           dc.b $00
[000c036f]                           dc.b $23
[000c0370]                           dc.b $00
[000c0371]                           dc.b $02
[000c0372]                           dc.b $00
[000c0373]                           dc.b $04
[000c0374]                           dc.b $00
[000c0375]                           dc.b $02
_86_ED_AFLAGS:
[000c0376]                           dc.b $00
[000c0377]                           dc.b $57
[000c0378]                           dc.w $ffff
[000c037a]                           dc.w $ffff
[000c037c]                           dc.b $00
[000c037d]                           dc.b $18
[000c037e]                           dc.b $00
[000c037f]                           dc.b $40
[000c0380]                           dc.b $00
[000c0381]                           dc.b $00
[000c0382] 000bfa26                  dc.l A_ARROWS02
[000c0386]                           dc.b $00
[000c0387]                           dc.b $02
[000c0388]                           dc.b $00
[000c0389]                           dc.b $01
[000c038a]                           dc.b $00
[000c038b]                           dc.b $02
[000c038c]                           dc.b $00
[000c038d]                           dc.b $01
_87_ED_AFLAGS:
[000c038e]                           dc.b $00
[000c038f]                           dc.b $55
[000c0390]                           dc.w $ffff
[000c0392]                           dc.w $ffff
[000c0394]                           dc.b $00
[000c0395]                           dc.b $14
[000c0396]                           dc.b $00
[000c0397]                           dc.b $40
[000c0398]                           dc.b $00
[000c0399]                           dc.b $00
[000c039a]                           dc.b $00
[000c039b]                           dc.b $01
[000c039c]                           dc.w $1111
[000c039e]                           dc.b $00
[000c039f]                           dc.b $00
[000c03a0]                           dc.b $00
[000c03a1]                           dc.b $00
[000c03a2]                           dc.b $00
[000c03a3]                           dc.b $02
[000c03a4]                           dc.b $00
[000c03a5]                           dc.b $01
_88_ED_AFLAGS:
[000c03a6]                           dc.b $00
[000c03a7]                           dc.b $5a
[000c03a8]                           dc.w $ffff
[000c03aa]                           dc.w $ffff
[000c03ac]                           dc.b $00
[000c03ad]                           dc.b $18
[000c03ae]                           dc.w $4007
[000c03b0]                           dc.b $00
[000c03b1]                           dc.b $10
[000c03b2] 000bf786                  dc.l A_3DBUTTON05
[000c03b6]                           dc.b $00
[000c03b7]                           dc.b $09
[000c03b8]                           dc.b $00
[000c03b9]                           dc.b $11
[000c03ba]                           dc.b $00
[000c03bb]                           dc.b $0c
[000c03bc]                           dc.b $00
[000c03bd]                           dc.b $02
_88aED_AFLAGS:
[000c03be] 00030dfc                  dc.l edafl_ok
[000c03c2]                           dc.b $00
[000c03c3]                           dc.b $00
[000c03c4]                           dc.b $00
[000c03c5]                           dc.b $00
[000c03c6]                           dc.w $8000
[000c03c8]                           dc.w $884f
[000c03ca]                           dc.b $00
[000c03cb]                           dc.b $00
[000c03cc]                           dc.b $00
[000c03cd]                           dc.b $00
[000c03ce]                           dc.b $00
[000c03cf]                           dc.b $00
[000c03d0]                           dc.b $00
[000c03d1]                           dc.b $00
[000c03d2]                           dc.b $00
[000c03d3]                           dc.b $00
[000c03d4]                           dc.b $00
[000c03d5]                           dc.b $00
_90_ED_AFLAGS:
[000c03d6]                           dc.b $00
[000c03d7]                           dc.b $00
[000c03d8]                           dc.w $ffff
[000c03da]                           dc.w $ffff
[000c03dc]                           dc.b $00
[000c03dd]                           dc.b $18
[000c03de]                           dc.w $4005
[000c03e0]                           dc.b $00
[000c03e1]                           dc.b $10
[000c03e2] 000bf706                  dc.l A_3DBUTTON01
[000c03e6]                           dc.b $00
[000c03e7]                           dc.b $19
[000c03e8]                           dc.b $00
[000c03e9]                           dc.b $11
[000c03ea]                           dc.b $00
[000c03eb]                           dc.b $0c
[000c03ec]                           dc.b $00
[000c03ed]                           dc.b $02
_90aED_AFLAGS:
[000c03ee] 0002d91e                  dc.l ed_abort
[000c03f2]                           dc.b $00
[000c03f3]                           dc.b $00
[000c03f4]                           dc.b $00
[000c03f5]                           dc.b $00
[000c03f6]                           dc.w $8020
[000c03f8]                           dc.w $8841
[000c03fa]                           dc.b $00
[000c03fb]                           dc.b $00
[000c03fc]                           dc.b $00
[000c03fd]                           dc.b $00
[000c03fe]                           dc.b $00
[000c03ff]                           dc.b $00
[000c0400]                           dc.b $00
[000c0401]                           dc.b $00
[000c0402]                           dc.b $00
[000c0403]                           dc.b $00
[000c0404]                           dc.b $00
[000c0405]                           dc.b $00
sm:
[000c0406]                           dc.b $00
[000c0407]                           dc.b $00
[000c0408]                           dc.b $00
[000c0409]                           dc.b $00
[000c040a] 00030dfc                  dc.l edafl_ok
[000c040e] 00049b7c                  dc.l Aob_delete
[000c0412]                           dc.b $00
[000c0413]                           dc.b $00
[000c0414]                           dc.b $00
[000c0415]                           dc.b $00
[000c0416] 000bf6d9                  dc.l help_title
[000c041a]                           dc.b $00
[000c041b]                           dc.b $00
[000c041c]                           dc.b $00
[000c041d]                           dc.b $00

	.bss

wintitel: ds.b 128
