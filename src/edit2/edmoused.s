
edmo_backcol:
[00020cca] 3f03                      move.w     d3,-(a7)
[00020ccc] 2f0a                      move.l     a2,-(a7)
[00020cce] 2079 0010 1f12            movea.l    ACSblk,a0
[00020cd4] 2268 025c                 movea.l    604(a0),a1
[00020cd8] 2469 0324                 movea.l    804(a1),a2
[00020cdc] 45ea 000c                 lea.l      12(a2),a2
[00020ce0] 7013                      moveq.l    #19,d0
[00020ce2] 3f00                      move.w     d0,-(a7)
[00020ce4] 7414                      moveq.l    #20,d2
[00020ce6] 7211                      moveq.l    #17,d1
[00020ce8] 3012                      move.w     (a2),d0
[00020cea] e040                      asr.w      #8,d0
[00020cec] c07c 000f                 and.w      #$000F,d0
[00020cf0] 4eb9 0002 f280            jsr        oe_colsel
[00020cf6] 544f                      addq.w     #2,a7
[00020cf8] 3600                      move.w     d0,d3
[00020cfa] 6b2a                      bmi.s      edmo_backcol_1
[00020cfc] 3212                      move.w     (a2),d1
[00020cfe] c27c f0ff                 and.w      #$F0FF,d1
[00020d02] e148                      lsl.w      #8,d0
[00020d04] 8240                      or.w       d0,d1
[00020d06] 3481                      move.w     d1,(a2)
[00020d08] 2079 0010 1f12            movea.l    ACSblk,a0
[00020d0e] 2068 0258                 movea.l    600(a0),a0
[00020d12] 2279 0010 1f12            movea.l    ACSblk,a1
[00020d18] 2469 0258                 movea.l    600(a1),a2
[00020d1c] 226a 0066                 movea.l    102(a2),a1
[00020d20] 7020                      moveq.l    #32,d0
[00020d22] 72ff                      moveq.l    #-1,d1
[00020d24] 4e91                      jsr        (a1)
edmo_backcol_1:
[00020d26] 245f                      movea.l    (a7)+,a2
[00020d28] 361f                      move.w     (a7)+,d3
[00020d2a] 4e75                      rts

edmo_frontcol:
[00020d2c] 2f03                      move.l     d3,-(a7)
[00020d2e] 2f0a                      move.l     a2,-(a7)
[00020d30] 2079 0010 1f12            movea.l    ACSblk,a0
[00020d36] 2268 025c                 movea.l    604(a0),a1
[00020d3a] 2469 0324                 movea.l    804(a1),a2
[00020d3e] 45ea 000c                 lea.l      12(a2),a2
[00020d42] 700d                      moveq.l    #13,d0
[00020d44] 3f00                      move.w     d0,-(a7)
[00020d46] 740e                      moveq.l    #14,d2
[00020d48] 720b                      moveq.l    #11,d1
[00020d4a] 3012                      move.w     (a2),d0
[00020d4c] 760c                      moveq.l    #12,d3
[00020d4e] e660                      asr.w      d3,d0
[00020d50] c07c 000f                 and.w      #$000F,d0
[00020d54] 4eb9 0002 f280            jsr        oe_colsel
[00020d5a] 544f                      addq.w     #2,a7
[00020d5c] 3600                      move.w     d0,d3
[00020d5e] 6b2c                      bmi.s      edmo_frontcol_1
[00020d60] 3212                      move.w     (a2),d1
[00020d62] c27c 0fff                 and.w      #$0FFF,d1
[00020d66] 740c                      moveq.l    #12,d2
[00020d68] e568                      lsl.w      d2,d0
[00020d6a] 8240                      or.w       d0,d1
[00020d6c] 3481                      move.w     d1,(a2)
[00020d6e] 2079 0010 1f12            movea.l    ACSblk,a0
[00020d74] 2068 0258                 movea.l    600(a0),a0
[00020d78] 2279 0010 1f12            movea.l    ACSblk,a1
[00020d7e] 2469 0258                 movea.l    600(a1),a2
[00020d82] 226a 0066                 movea.l    102(a2),a1
[00020d86] 7020                      moveq.l    #32,d0
[00020d88] 72ff                      moveq.l    #-1,d1
[00020d8a] 4e91                      jsr        (a1)
edmo_frontcol_1:
[00020d8c] 245f                      movea.l    (a7)+,a2
[00020d8e] 261f                      move.l     (a7)+,d3
[00020d90] 4e75                      rts

edmo_black:
[00020d92] 2f0a                      move.l     a2,-(a7)
[00020d94] 2079 0010 1f12            movea.l    ACSblk,a0
[00020d9a] 2468 0258                 movea.l    600(a0),a2
[00020d9e] 206a 0014                 movea.l    20(a2),a0
[00020da2] 317c 0008 02e4            move.w     #$0008,740(a0)
[00020da8] 0268 ff8f 0206            andi.w     #$FF8F,518(a0)
[00020dae] 0068 0070 0206            ori.w      #$0070,518(a0)
[00020db4] 72ff                      moveq.l    #-1,d1
[00020db6] 7015                      moveq.l    #21,d0
[00020db8] 204a                      movea.l    a2,a0
[00020dba] 226a 0066                 movea.l    102(a2),a1
[00020dbe] 4e91                      jsr        (a1)
[00020dc0] 245f                      movea.l    (a7)+,a2
[00020dc2] 4e75                      rts

edmo_white:
[00020dc4] 2f0a                      move.l     a2,-(a7)
[00020dc6] 2079 0010 1f12            movea.l    ACSblk,a0
[00020dcc] 2468 0258                 movea.l    600(a0),a2
[00020dd0] 206a 0014                 movea.l    20(a2),a0
[00020dd4] 317c 0009 02e4            move.w     #$0009,740(a0)
[00020dda] 0268 ff8f 0206            andi.w     #$FF8F,518(a0)
[00020de0] 72ff                      moveq.l    #-1,d1
[00020de2] 7015                      moveq.l    #21,d0
[00020de4] 204a                      movea.l    a2,a0
[00020de6] 226a 0066                 movea.l    102(a2),a1
[00020dea] 4e91                      jsr        (a1)
[00020dec] 245f                      movea.l    (a7)+,a2
[00020dee] 4e75                      rts

edmo_invisible:
[00020df0] 2f0a                      move.l     a2,-(a7)
[00020df2] 2079 0010 1f12            movea.l    ACSblk,a0
[00020df8] 2468 0258                 movea.l    600(a0),a2
[00020dfc] 206a 0014                 movea.l    20(a2),a0
[00020e00] 317c 000a 02e4            move.w     #$000A,740(a0)
[00020e06] 0268 ff8f 0206            andi.w     #$FF8F,518(a0)
[00020e0c] 0068 0040 0206            ori.w      #$0040,518(a0)
[00020e12] 72ff                      moveq.l    #-1,d1
[00020e14] 7015                      moveq.l    #21,d0
[00020e16] 204a                      movea.l    a2,a0
[00020e18] 226a 0066                 movea.l    102(a2),a1
[00020e1c] 4e91                      jsr        (a1)
[00020e1e] 245f                      movea.l    (a7)+,a2
[00020e20] 4e75                      rts

edmo_next:
[00020e22] 2079 0010 1f12            movea.l    ACSblk,a0
[00020e28] 2268 025c                 movea.l    604(a0),a1
[00020e2c] 2069 030c                 movea.l    780(a1),a0
[00020e30] 5848                      addq.w     #4,a0
[00020e32] 3028 0002                 move.w     2(a0),d0
[00020e36] d07c 0010                 add.w      #$0010,d0
[00020e3a] c07c 0070                 and.w      #$0070,d0
[00020e3e] 0268 ff8f 0002            andi.w     #$FF8F,2(a0)
[00020e44] 8168 0002                 or.w       d0,2(a0)
[00020e48] 72ff                      moveq.l    #-1,d1
[00020e4a] 7020                      moveq.l    #32,d0
[00020e4c] 2079 0010 1f12            movea.l    ACSblk,a0
[00020e52] 2068 0258                 movea.l    600(a0),a0
[00020e56] 2279 0010 1f12            movea.l    ACSblk,a1
[00020e5c] 2269 0258                 movea.l    600(a1),a1
[00020e60] 2269 0066                 movea.l    102(a1),a1
[00020e64] 4e91                      jsr        (a1)
[00020e66] 4e75                      rts

edmo_x:
[00020e68] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00020e6c] 594f                      subq.w     #4,a7
[00020e6e] 2079 0010 1f12            movea.l    ACSblk,a0
[00020e74] 2468 0258                 movea.l    600(a0),a2
[00020e78] 266a 0014                 movea.l    20(a2),a3
[00020e7c] 3628 0262                 move.w     610(a0),d3
[00020e80] 2f39 000d 99d6            move.l     _globl,-(a7)
[00020e86] 486f 0004                 pea.l      4(a7)
[00020e8a] 43ef 000a                 lea.l      10(a7),a1
[00020e8e] 3028 0260                 move.w     608(a0),d0
[00020e92] 204b                      movea.l    a3,a0
[00020e94] 4eb9 0006 ba44            jsr        mt_objc_offset
[00020e9a] 504f                      addq.w     #8,a7
[00020e9c] 3003                      move.w     d3,d0
[00020e9e] 906a 0034                 sub.w      52(a2),d0
[00020ea2] 906f 0002                 sub.w      2(a7),d0
[00020ea6] 48c0                      ext.l      d0
[00020ea8] 81fc 0008                 divs.w     #$0008,d0
[00020eac] c07c 000f                 and.w      #$000F,d0
[00020eb0] e748                      lsl.w      #3,d0
[00020eb2] 3600                      move.w     d0,d3
[00020eb4] b06b 0268                 cmp.w      616(a3),d0
[00020eb8] 6726                      beq.s      edmo_x_1
[00020eba] 006b 0080 0260            ori.w      #$0080,608(a3)
[00020ec0] 204a                      movea.l    a2,a0
[00020ec2] 7019                      moveq.l    #25,d0
[00020ec4] 4eb9 0004 b846            jsr        Awi_obredraw
[00020eca] 026b ff7f 0260            andi.w     #$FF7F,608(a3)
[00020ed0] 3743 0268                 move.w     d3,616(a3)
[00020ed4] 72ff                      moveq.l    #-1,d1
[00020ed6] 7019                      moveq.l    #25,d0
[00020ed8] 204a                      movea.l    a2,a0
[00020eda] 226a 0066                 movea.l    102(a2),a1
[00020ede] 4e91                      jsr        (a1)
edmo_x_1:
[00020ee0] 584f                      addq.w     #4,a7
[00020ee2] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00020ee6] 4e75                      rts

edmo_y:
[00020ee8] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00020eec] 594f                      subq.w     #4,a7
[00020eee] 2079 0010 1f12            movea.l    ACSblk,a0
[00020ef4] 2468 0258                 movea.l    600(a0),a2
[00020ef8] 266a 0014                 movea.l    20(a2),a3
[00020efc] 3628 0264                 move.w     612(a0),d3
[00020f00] 2f39 000d 99d6            move.l     _globl,-(a7)
[00020f06] 486f 0004                 pea.l      4(a7)
[00020f0a] 43ef 000a                 lea.l      10(a7),a1
[00020f0e] 3028 0260                 move.w     608(a0),d0
[00020f12] 204b                      movea.l    a3,a0
[00020f14] 4eb9 0006 ba44            jsr        mt_objc_offset
[00020f1a] 504f                      addq.w     #8,a7
[00020f1c] 3003                      move.w     d3,d0
[00020f1e] 906a 0036                 sub.w      54(a2),d0
[00020f22] 9057                      sub.w      (a7),d0
[00020f24] 48c0                      ext.l      d0
[00020f26] 81fc 0008                 divs.w     #$0008,d0
[00020f2a] c07c 000f                 and.w      #$000F,d0
[00020f2e] e748                      lsl.w      #3,d0
[00020f30] 3600                      move.w     d0,d3
[00020f32] b06b 02b2                 cmp.w      690(a3),d0
[00020f36] 6726                      beq.s      edmo_y_1
[00020f38] 006b 0080 02a8            ori.w      #$0080,680(a3)
[00020f3e] 204a                      movea.l    a2,a0
[00020f40] 701c                      moveq.l    #28,d0
[00020f42] 4eb9 0004 b846            jsr        Awi_obredraw
[00020f48] 026b ff7f 02a8            andi.w     #$FF7F,680(a3)
[00020f4e] 3743 02b2                 move.w     d3,690(a3)
[00020f52] 72ff                      moveq.l    #-1,d1
[00020f54] 701c                      moveq.l    #28,d0
[00020f56] 204a                      movea.l    a2,a0
[00020f58] 226a 0066                 movea.l    102(a2),a1
[00020f5c] 4e91                      jsr        (a1)
edmo_y_1:
[00020f5e] 584f                      addq.w     #4,a7
[00020f60] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00020f64] 4e75                      rts

edmo_set:
[00020f66] 48e7 003c                 movem.l    a2-a5,-(a7)
[00020f6a] 4fef ffe4                 lea.l      -28(a7),a7
[00020f6e] 2079 0010 1f12            movea.l    ACSblk,a0
[00020f74] 2668 0258                 movea.l    600(a0),a3
[00020f78] 2eab 0014                 move.l     20(a3),(a7)
[00020f7c] 3228 0260                 move.w     608(a0),d1
[00020f80] 48c1                      ext.l      d1
[00020f82] 2001                      move.l     d1,d0
[00020f84] d080                      add.l      d0,d0
[00020f86] d081                      add.l      d1,d0
[00020f88] e788                      lsl.l      #3,d0
[00020f8a] 2257                      movea.l    (a7),a1
[00020f8c] 3431 080a                 move.w     10(a1,d0.l),d2
[00020f90] c47c 4000                 and.w      #$4000,d2
[00020f94] 672c                      beq.s      edmo_set_1
[00020f96] 3029 02e4                 move.w     740(a1),d0
[00020f9a] 5140                      subq.w     #8,d0
[00020f9c] 670c                      beq.s      edmo_set_2
[00020f9e] 5340                      subq.w     #1,d0
[00020fa0] 6710                      beq.s      edmo_set_3
[00020fa2] 5340                      subq.w     #1,d0
[00020fa4] 6714                      beq.s      edmo_set_4
[00020fa6] 6000 01ba                 bra        edmo_set_5
edmo_set_2:
[00020faa] 6100 fe18                 bsr        edmo_white
[00020fae] 6000 01b2                 bra        edmo_set_5
edmo_set_3:
[00020fb2] 6100 fe3c                 bsr        edmo_invisible
[00020fb6] 6000 01aa                 bra        edmo_set_5
edmo_set_4:
[00020fba] 6100 fdd6                 bsr        edmo_black
[00020fbe] 6000 01a2                 bra        edmo_set_5
edmo_set_1:
[00020fc2] 2079 0010 1f12            movea.l    ACSblk,a0
[00020fc8] 3f68 0262 0016            move.w     610(a0),22(a7)
[00020fce] 3f68 0264 0014            move.w     612(a0),20(a7)
[00020fd4] 2f53 0018                 move.l     (a3),24(a7)
edmo_set_15:
[00020fd8] 49ef 0008                 lea.l      8(a7),a4
[00020fdc] 2f39 000d 99d6            move.l     _globl,-(a7)
[00020fe2] 486f 0014                 pea.l      20(a7)
[00020fe6] 43ef 001a                 lea.l      26(a7),a1
[00020fea] 2079 0010 1f12            movea.l    ACSblk,a0
[00020ff0] 3028 0260                 move.w     608(a0),d0
[00020ff4] 206f 0008                 movea.l    8(a7),a0
[00020ff8] 4eb9 0006 ba44            jsr        mt_objc_offset
[00020ffe] 504f                      addq.w     #8,a7
[00021000] 302f 0016                 move.w     22(a7),d0
[00021004] 906b 0034                 sub.w      52(a3),d0
[00021008] 906f 0012                 sub.w      18(a7),d0
[0002100c] 48c0                      ext.l      d0
[0002100e] 81fc 0008                 divs.w     #$0008,d0
[00021012] 3f40 0016                 move.w     d0,22(a7)
[00021016] 322f 0014                 move.w     20(a7),d1
[0002101a] 926b 0036                 sub.w      54(a3),d1
[0002101e] 926f 0010                 sub.w      16(a7),d1
[00021022] 48c1                      ext.l      d1
[00021024] 83fc 0008                 divs.w     #$0008,d1
[00021028] 3f41 0014                 move.w     d1,20(a7)
[0002102c] 4a40                      tst.w      d0
[0002102e] 6b00 0132                 bmi        edmo_set_5
[00021032] 4a41                      tst.w      d1
[00021034] 6b00 012c                 bmi        edmo_set_5
[00021038] b07c 000f                 cmp.w      #$000F,d0
[0002103c] 6e00 0124                 bgt        edmo_set_5
[00021040] b27c 000f                 cmp.w      #$000F,d1
[00021044] 6e00 011c                 bgt        edmo_set_5
[00021048] e748                      lsl.w      #3,d0
[0002104a] d06b 0034                 add.w      52(a3),d0
[0002104e] d06f 0012                 add.w      18(a7),d0
[00021052] 3880                      move.w     d0,(a4)
[00021054] e749                      lsl.w      #3,d1
[00021056] d26b 0036                 add.w      54(a3),d1
[0002105a] d26f 0010                 add.w      16(a7),d1
[0002105e] 3941 0002                 move.w     d1,2(a4)
[00021062] 7408                      moveq.l    #8,d2
[00021064] 3942 0006                 move.w     d2,6(a4)
[00021068] 3942 0004                 move.w     d2,4(a4)
[0002106c] 302f 0014                 move.w     20(a7),d0
[00021070] 48c0                      ext.l      d0
[00021072] d080                      add.l      d0,d0
[00021074] 246f 0018                 movea.l    24(a7),a2
[00021078] 45f2 0808                 lea.l      8(a2,d0.l),a2
[0002107c] 4bea 0020                 lea.l      32(a2),a5
[00021080] 7001                      moveq.l    #1,d0
[00021082] 720f                      moveq.l    #15,d1
[00021084] 922f 0017                 sub.b      23(a7),d1
[00021088] e368                      lsl.w      d1,d0
[0002108a] 2057                      movea.l    (a7),a0
[0002108c] 3428 0206                 move.w     518(a0),d2
[00021090] e84a                      lsr.w      #4,d2
[00021092] c47c 0007                 and.w      #$0007,d2
[00021096] 4a42                      tst.w      d2
[00021098] 671c                      beq.s      edmo_set_6
[0002109a] 5942                      subq.w     #4,d2
[0002109c] 672e                      beq.s      edmo_set_7
[0002109e] 5742                      subq.w     #3,d2
[000210a0] 6702                      beq.s      edmo_set_8
[000210a2] 603c                      bra.s      edmo_set_9
edmo_set_8:
[000210a4] 3215                      move.w     (a5),d1
[000210a6] c240                      and.w      d0,d1
[000210a8] 6708                      beq.s      edmo_set_10
[000210aa] 3412                      move.w     (a2),d2
[000210ac] c440                      and.w      d0,d2
[000210ae] 6600 0088                 bne        edmo_set_11
edmo_set_10:
[000210b2] 8155                      or.w       d0,(a5)
[000210b4] 6012                      bra.s      edmo_set_12
edmo_set_6:
[000210b6] 3215                      move.w     (a5),d1
[000210b8] c240                      and.w      d0,d1
[000210ba] 6606                      bne.s      edmo_set_13
[000210bc] 3412                      move.w     (a2),d2
[000210be] c440                      and.w      d0,d2
[000210c0] 6676                      bne.s      edmo_set_11
edmo_set_13:
[000210c2] 3200                      move.w     d0,d1
[000210c4] 4641                      not.w      d1
[000210c6] c355                      and.w      d1,(a5)
edmo_set_12:
[000210c8] 8152                      or.w       d0,(a2)
[000210ca] 6014                      bra.s      edmo_set_9
edmo_set_7:
[000210cc] 3215                      move.w     (a5),d1
[000210ce] c240                      and.w      d0,d1
[000210d0] 6606                      bne.s      edmo_set_14
[000210d2] 3412                      move.w     (a2),d2
[000210d4] c440                      and.w      d0,d2
[000210d6] 6760                      beq.s      edmo_set_11
edmo_set_14:
[000210d8] 3200                      move.w     d0,d1
[000210da] 4641                      not.w      d1
[000210dc] c355                      and.w      d1,(a5)
[000210de] c352                      and.w      d1,(a2)
edmo_set_9:
[000210e0] 224c                      movea.l    a4,a1
[000210e2] 204b                      movea.l    a3,a0
[000210e4] 246b 006a                 movea.l    106(a3),a2
[000210e8] 4e92                      jsr        (a2)
[000210ea] 2f39 000d 99d6            move.l     _globl,-(a7)
[000210f0] 486f 0014                 pea.l      20(a7)
[000210f4] 43ef 001a                 lea.l      26(a7),a1
[000210f8] 7021                      moveq.l    #33,d0
[000210fa] 206f 0008                 movea.l    8(a7),a0
[000210fe] 4eb9 0006 ba44            jsr        mt_objc_offset
[00021104] 504f                      addq.w     #8,a7
[00021106] 302b 0034                 move.w     52(a3),d0
[0002110a] d06f 0016                 add.w      22(a7),d0
[0002110e] d06f 0012                 add.w      18(a7),d0
[00021112] 3880                      move.w     d0,(a4)
[00021114] 322b 0036                 move.w     54(a3),d1
[00021118] d26f 0014                 add.w      20(a7),d1
[0002111c] d26f 0010                 add.w      16(a7),d1
[00021120] 3941 0002                 move.w     d1,2(a4)
[00021124] 7401                      moveq.l    #1,d2
[00021126] 3942 0006                 move.w     d2,6(a4)
[0002112a] 3942 0004                 move.w     d2,4(a4)
[0002112e] 224c                      movea.l    a4,a1
[00021130] 204b                      movea.l    a3,a0
[00021132] 246b 006a                 movea.l    106(a3),a2
[00021136] 4e92                      jsr        (a2)
edmo_set_11:
[00021138] 2f39 000d 99d6            move.l     _globl,-(a7)
[0002113e] 486f 0008                 pea.l      8(a7)
[00021142] 486f 000e                 pea.l      14(a7)
[00021146] 43ef 0020                 lea.l      32(a7),a1
[0002114a] 41ef 0022                 lea.l      34(a7),a0
[0002114e] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00021154] 4fef 000c                 lea.l      12(a7),a7
[00021158] 7001                      moveq.l    #1,d0
[0002115a] c06f 0006                 and.w      6(a7),d0
[0002115e] 6600 fe78                 bne        edmo_set_15
edmo_set_5:
[00021162] 4fef 001c                 lea.l      28(a7),a7
[00021166] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002116a] 4e75                      rts

edmo_abort:
[0002116c] 2079 0010 1f12            movea.l    ACSblk,a0
[00021172] 2068 0258                 movea.l    600(a0),a0
[00021176] 4eb9 0002 1630            jsr        term
[0002117c] 4e75                      rts

edmo_ok:
[0002117e] 2079 0010 1f12            movea.l    ACSblk,a0
[00021184] 2068 0258                 movea.l    600(a0),a0
[00021188] 4eb9 0002 1364            jsr        acc_mouse
[0002118e] 2079 0010 1f12            movea.l    ACSblk,a0
[00021194] 2068 0258                 movea.l    600(a0),a0
[00021198] 4eb9 0002 1630            jsr        term
[0002119e] 4e75                      rts

edmo_bitmap:
[000211a0] 48e7 3e3c                 movem.l    d2-d6/a2-a5,-(a7)
[000211a4] 4fef ffe0                 lea.l      -32(a7),a7
[000211a8] 206f 0048                 movea.l    72(a7),a0
[000211ac] 3f68 0016 0004            move.w     22(a0),4(a7)
[000211b2] 3f68 0018 0006            move.w     24(a0),6(a7)
[000211b8] 49f9 0010 1f12            lea.l      ACSblk,a4
[000211be] 302f 0004                 move.w     4(a7),d0
[000211c2] 6606                      bne.s      edmo_bitmap_1
[000211c4] 322f 0006                 move.w     6(a7),d1
[000211c8] 6730                      beq.s      edmo_bitmap_2
edmo_bitmap_1:
[000211ca] 206f 0048                 movea.l    72(a7),a0
[000211ce] 3ea8 0012                 move.w     18(a0),(a7)
[000211d2] 3f68 0014 0002            move.w     20(a0),2(a7)
[000211d8] 70ff                      moveq.l    #-1,d0
[000211da] d057                      add.w      (a7),d0
[000211dc] d16f 0004                 add.w      d0,4(a7)
[000211e0] 70ff                      moveq.l    #-1,d0
[000211e2] d06f 0002                 add.w      2(a7),d0
[000211e6] d16f 0006                 add.w      d0,6(a7)
[000211ea] 41d7                      lea.l      (a7),a0
[000211ec] 7201                      moveq.l    #1,d1
[000211ee] 2254                      movea.l    (a4),a1
[000211f0] 3029 0010                 move.w     16(a1),d0
[000211f4] 4eb9 0006 3f60            jsr        vs_clip
edmo_bitmap_2:
[000211fa] 206f 0048                 movea.l    72(a7),a0
[000211fe] 2068 001a                 movea.l    26(a0),a0
[00021202] 2050                      movea.l    (a0),a0
[00021204] 43e8 0008                 lea.l      8(a0),a1
[00021208] 2f49 0018                 move.l     a1,24(a7)
[0002120c] 43e9 0020                 lea.l      32(a1),a1
[00021210] 2f49 001c                 move.l     a1,28(a7)
[00021214] 4bef 0008                 lea.l      8(a7),a5
[00021218] 4255                      clr.w      (a5)
[0002121a] 426d 0002                 clr.w      2(a5)
[0002121e] 3b7c 0007 0004            move.w     #$0007,4(a5)
[00021224] 3b7c 0007 0006            move.w     #$0007,6(a5)
[0002122a] 206f 0048                 movea.l    72(a7),a0
[0002122e] 3b68 000c 000a            move.w     12(a0),10(a5)
[00021234] 7007                      moveq.l    #7,d0
[00021236] d068 000c                 add.w      12(a0),d0
[0002123a] 3b40 000e                 move.w     d0,14(a5)
[0002123e] 4243                      clr.w      d3
[00021240] 45f9 000a 6532            lea.l      color,a2
[00021246] 6000 00f2                 bra        edmo_bitmap_3
edmo_bitmap_11:
[0002124a] 302d 000e                 move.w     14(a5),d0
[0002124e] b06f 0002                 cmp.w      2(a7),d0
[00021252] 6d00 00d4                 blt        edmo_bitmap_4
[00021256] 322d 000a                 move.w     10(a5),d1
[0002125a] b26f 0006                 cmp.w      6(a7),d1
[0002125e] 6e00 00c8                 bgt        edmo_bitmap_4
[00021262] 206f 0048                 movea.l    72(a7),a0
[00021266] 3b68 000a 0008            move.w     10(a0),8(a5)
[0002126c] 7007                      moveq.l    #7,d0
[0002126e] d068 000a                 add.w      10(a0),d0
[00021272] 3b40 000c                 move.w     d0,12(a5)
[00021276] 226f 001c                 movea.l    28(a7),a1
[0002127a] 54af 001c                 addq.l     #2,28(a7)
[0002127e] 3811                      move.w     (a1),d4
[00021280] 226f 0018                 movea.l    24(a7),a1
[00021284] 54af 0018                 addq.l     #2,24(a7)
[00021288] 3a11                      move.w     (a1),d5
[0002128a] 7c0f                      moveq.l    #15,d6
[0002128c] 6000 0092                 bra        edmo_bitmap_5
edmo_bitmap_9:
[00021290] 302d 000c                 move.w     12(a5),d0
[00021294] b057                      cmp.w      (a7),d0
[00021296] 6d00 007a                 blt.w      edmo_bitmap_6
[0002129a] 322d 0008                 move.w     8(a5),d1
[0002129e] b26f 0004                 cmp.w      4(a7),d1
[000212a2] 6e6e                      bgt.s      edmo_bitmap_6
[000212a4] 3404                      move.w     d4,d2
[000212a6] c47c 8000                 and.w      #$8000,d2
[000212aa] 6720                      beq.s      edmo_bitmap_7
[000212ac] 4852                      pea.l      (a2)
[000212ae] 2054                      movea.l    (a4),a0
[000212b0] 4868 026a                 pea.l      618(a0)
[000212b4] 43ea ffa4                 lea.l      -92(a2),a1
[000212b8] 204d                      movea.l    a5,a0
[000212ba] 2654                      movea.l    (a4),a3
[000212bc] 302b 0010                 move.w     16(a3),d0
[000212c0] 7201                      moveq.l    #1,d1
[000212c2] 4eb9 0006 6632            jsr        vrt_cpyfm
[000212c8] 504f                      addq.w     #8,a7
[000212ca] 6046                      bra.s      edmo_bitmap_6
edmo_bitmap_7:
[000212cc] 3005                      move.w     d5,d0
[000212ce] c07c 8000                 and.w      #$8000,d0
[000212d2] 6720                      beq.s      edmo_bitmap_8
[000212d4] 4852                      pea.l      (a2)
[000212d6] 2054                      movea.l    (a4),a0
[000212d8] 4868 026a                 pea.l      618(a0)
[000212dc] 43ea ffc8                 lea.l      -56(a2),a1
[000212e0] 204d                      movea.l    a5,a0
[000212e2] 7201                      moveq.l    #1,d1
[000212e4] 2654                      movea.l    (a4),a3
[000212e6] 302b 0010                 move.w     16(a3),d0
[000212ea] 4eb9 0006 6632            jsr        vrt_cpyfm
[000212f0] 504f                      addq.w     #8,a7
[000212f2] 601e                      bra.s      edmo_bitmap_6
edmo_bitmap_8:
[000212f4] 4852                      pea.l      (a2)
[000212f6] 2054                      movea.l    (a4),a0
[000212f8] 4868 026a                 pea.l      618(a0)
[000212fc] 43ea ffec                 lea.l      -20(a2),a1
[00021300] 204d                      movea.l    a5,a0
[00021302] 7201                      moveq.l    #1,d1
[00021304] 2654                      movea.l    (a4),a3
[00021306] 302b 0010                 move.w     16(a3),d0
[0002130a] 4eb9 0006 6632            jsr        vrt_cpyfm
[00021310] 504f                      addq.w     #8,a7
edmo_bitmap_6:
[00021312] d844                      add.w      d4,d4
[00021314] da45                      add.w      d5,d5
[00021316] 506d 0008                 addq.w     #8,8(a5)
[0002131a] 506d 000c                 addq.w     #8,12(a5)
[0002131e] 5346                      subq.w     #1,d6
edmo_bitmap_5:
[00021320] 4a46                      tst.w      d6
[00021322] 6a00 ff6c                 bpl        edmo_bitmap_9
[00021326] 6008                      bra.s      edmo_bitmap_10
edmo_bitmap_4:
[00021328] 54af 001c                 addq.l     #2,28(a7)
[0002132c] 54af 0018                 addq.l     #2,24(a7)
edmo_bitmap_10:
[00021330] 506d 000a                 addq.w     #8,10(a5)
[00021334] 506d 000e                 addq.w     #8,14(a5)
[00021338] 5243                      addq.w     #1,d3
edmo_bitmap_3:
[0002133a] b67c 0010                 cmp.w      #$0010,d3
[0002133e] 6d00 ff0a                 blt        edmo_bitmap_11
[00021342] 41d7                      lea.l      (a7),a0
[00021344] 4241                      clr.w      d1
[00021346] 2254                      movea.l    (a4),a1
[00021348] 3029 0010                 move.w     16(a1),d0
[0002134c] 4eb9 0006 3f60            jsr        vs_clip
[00021352] 206f 0048                 movea.l    72(a7),a0
[00021356] 3028 0008                 move.w     8(a0),d0
[0002135a] 4fef 0020                 lea.l      32(a7),a7
[0002135e] 4cdf 3c7c                 movem.l    (a7)+,d2-d6/a2-a5
[00021362] 4e75                      rts

acc_mouse:
[00021364] 2f0a                      move.l     a2,-(a7)
[00021366] 2f0b                      move.l     a3,-(a7)
[00021368] 2450                      movea.l    (a0),a2
[0002136a] 2252                      movea.l    (a2),a1
[0002136c] 0069 0001 0006            ori.w      #$0001,6(a1)
[00021372] 226a 0004                 movea.l    4(a2),a1
[00021376] 2068 0014                 movea.l    20(a0),a0
[0002137a] 2669 0004                 movea.l    4(a1),a3
[0002137e] 2268 0324                 movea.l    804(a0),a1
[00021382] 3029 000c                 move.w     12(a1),d0
[00021386] e040                      asr.w      #8,d0
[00021388] c07c 000f                 and.w      #$000F,d0
[0002138c] 3740 0006                 move.w     d0,6(a3)
[00021390] 3229 000c                 move.w     12(a1),d1
[00021394] 740c                      moveq.l    #12,d2
[00021396] e461                      asr.w      d2,d1
[00021398] c27c 000f                 and.w      #$000F,d1
[0002139c] 3741 0008                 move.w     d1,8(a3)
[000213a0] 3028 0268                 move.w     616(a0),d0
[000213a4] 48c0                      ext.l      d0
[000213a6] 81fc 0008                 divs.w     #$0008,d0
[000213aa] 3680                      move.w     d0,(a3)
[000213ac] 3228 02b2                 move.w     690(a0),d1
[000213b0] 48c1                      ext.l      d1
[000213b2] 83fc 0008                 divs.w     #$0008,d1
[000213b6] 3741 0002                 move.w     d1,2(a3)
[000213ba] 7040                      moveq.l    #64,d0
[000213bc] 43ea 0008                 lea.l      8(a2),a1
[000213c0] 41eb 000a                 lea.l      10(a3),a0
[000213c4] 4eb9 0007 6f44            jsr        memcpy
[000213ca] 265f                      movea.l    (a7)+,a3
[000213cc] 245f                      movea.l    (a7)+,a2
[000213ce] 4e75                      rts

mo_make:
[000213d0] 48e7 0038                 movem.l    a2-a4,-(a7)
[000213d4] 594f                      subq.w     #4,a7
[000213d6] 2448                      movea.l    a0,a2
[000213d8] 266a 0004                 movea.l    4(a2),a3
[000213dc] 286b 0012                 movea.l    18(a3),a4
[000213e0] 200c                      move.l     a4,d0
[000213e2] 670a                      beq.s      mo_make_1
[000213e4] 204c                      movea.l    a4,a0
[000213e6] 4eb9 0004 f0ca            jsr        Awi_show
[000213ec] 6074                      bra.s      mo_make_2
mo_make_1:
[000213ee] 7048                      moveq.l    #72,d0
[000213f0] 4eb9 0004 7cc8            jsr        Ax_malloc
[000213f6] 2e88                      move.l     a0,(a7)
[000213f8] 2008                      move.l     a0,d0
[000213fa] 6762                      beq.s      mo_make_3
[000213fc] 2092                      move.l     (a2),(a0)
[000213fe] 216a 0004 0004            move.l     4(a2),4(a0)
[00021404] 43eb 0016                 lea.l      22(a3),a1
[00021408] 23c9 000a 6472            move.l     a1,$000A6472
[0002140e] 2079 000a 647e            movea.l    $000A647E,a0
[00021414] 2149 0008                 move.l     a1,8(a0)
[00021418] 41f9 000a 6424            lea.l      WI_MOUSE,a0
[0002141e] 4eb9 0004 f41a            jsr        Awi_create
[00021424] 2848                      movea.l    a0,a4
[00021426] 200c                      move.l     a4,d0
[00021428] 6734                      beq.s      mo_make_3
[0002142a] 2252                      movea.l    (a2),a1
[0002142c] 4869 0168                 pea.l      360(a1)
[00021430] 43eb 003a                 lea.l      58(a3),a1
[00021434] 4eb9 0001 47a8            jsr        wi_pos
[0002143a] 584f                      addq.w     #4,a7
[0002143c] 2897                      move.l     (a7),(a4)
[0002143e] 274c 0012                 move.l     a4,18(a3)
[00021442] 204c                      movea.l    a4,a0
[00021444] 4eb9 0002 14b8            jsr        set_mouse
[0002144a] 204c                      movea.l    a4,a0
[0002144c] 226c 000c                 movea.l    12(a4),a1
[00021450] 4e91                      jsr        (a1)
[00021452] 4a40                      tst.w      d0
[00021454] 670c                      beq.s      mo_make_2
[00021456] 204c                      movea.l    a4,a0
[00021458] 4eb9 0002 1630            jsr        term
mo_make_3:
[0002145e] 91c8                      suba.l     a0,a0
[00021460] 6002                      bra.s      mo_make_4
mo_make_2:
[00021462] 204c                      movea.l    a4,a0
mo_make_4:
[00021464] 584f                      addq.w     #4,a7
[00021466] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002146a] 4e75                      rts

mo_service:
[0002146c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00021470] 2448                      movea.l    a0,a2
[00021472] 3600                      move.w     d0,d3
[00021474] 2849                      movea.l    a1,a4
[00021476] 2650                      movea.l    (a0),a3
[00021478] 5540                      subq.w     #2,d0
[0002147a] 6708                      beq.s      mo_service_1
[0002147c] 907c 270e                 sub.w      #$270E,d0
[00021480] 6712                      beq.s      mo_service_2
[00021482] 601e                      bra.s      mo_service_3
mo_service_1:
[00021484] 204a                      movea.l    a2,a0
[00021486] 6100 fedc                 bsr        acc_mouse
[0002148a] 204a                      movea.l    a2,a0
[0002148c] 4eb9 0002 1630            jsr        term
[00021492] 601c                      bra.s      mo_service_4
mo_service_2:
[00021494] 226b 0004                 movea.l    4(a3),a1
[00021498] 204a                      movea.l    a2,a0
[0002149a] 4eb9 0001 45a2            jsr        new_name
[000214a0] 600e                      bra.s      mo_service_4
mo_service_3:
[000214a2] 224c                      movea.l    a4,a1
[000214a4] 3003                      move.w     d3,d0
[000214a6] 204a                      movea.l    a2,a0
[000214a8] 4eb9 0005 1276            jsr        Awi_service
[000214ae] 6002                      bra.s      mo_service_5
mo_service_4:
[000214b0] 7001                      moveq.l    #1,d0
mo_service_5:
[000214b2] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000214b6] 4e75                      rts

set_mouse:
[000214b8] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000214bc] 514f                      subq.w     #8,a7
[000214be] 2448                      movea.l    a0,a2
[000214c0] 2f50 0004                 move.l     (a0),4(a7)
[000214c4] 226f 0004                 movea.l    4(a7),a1
[000214c8] 2069 0004                 movea.l    4(a1),a0
[000214cc] 2ea8 0004                 move.l     4(a0),(a7)
[000214d0] 206a 0014                 movea.l    20(a2),a0
[000214d4] 707f                      moveq.l    #127,d0
[000214d6] 43e8 0210                 lea.l      528(a0),a1
[000214da] 49e8 02b8                 lea.l      696(a0),a4
[000214de] 266c 000c                 movea.l    12(a4),a3
[000214e2] 274a 0004                 move.l     a2,4(a3)
[000214e6] 3200                      move.w     d0,d1
[000214e8] d26c 0010                 add.w      16(a4),d1
[000214ec] 5241                      addq.w     #1,d1
[000214ee] 3341 0014                 move.w     d1,20(a1)
[000214f2] 3400                      move.w     d0,d2
[000214f4] d46c 0012                 add.w      18(a4),d2
[000214f8] 5242                      addq.w     #1,d2
[000214fa] 3342 0016                 move.w     d2,22(a1)
[000214fe] 3940 0016                 move.w     d0,22(a4)
[00021502] 3940 0014                 move.w     d0,20(a4)
[00021506] 3229 0012                 move.w     18(a1),d1
[0002150a] d269 0016                 add.w      22(a1),d1
[0002150e] 2679 0010 1f12            movea.l    ACSblk,a3
[00021514] d26b 0014                 add.w      20(a3),d1
[00021518] b268 0016                 cmp.w      22(a0),d1
[0002151c] 6f04                      ble.s      set_mouse_1
[0002151e] 3141 0016                 move.w     d1,22(a0)
set_mouse_1:
[00021522] 49e8 0228                 lea.l      552(a0),a4
[00021526] 3940 0014                 move.w     d0,20(a4)
[0002152a] 49e8 0258                 lea.l      600(a0),a4
[0002152e] 397c 0008 0014            move.w     #$0008,20(a4)
[00021534] 2257                      movea.l    (a7),a1
[00021536] 3211                      move.w     (a1),d1
[00021538] e749                      lsl.w      #3,d1
[0002153a] 3941 0010                 move.w     d1,16(a4)
[0002153e] 49e8 0270                 lea.l      624(a0),a4
[00021542] 3940 0016                 move.w     d0,22(a4)
[00021546] 49e8 02a0                 lea.l      672(a0),a4
[0002154a] 397c 0008 0016            move.w     #$0008,22(a4)
[00021550] 3029 0002                 move.w     2(a1),d0
[00021554] e748                      lsl.w      #3,d0
[00021556] 3940 0012                 move.w     d0,18(a4)
[0002155a] 49e8 0318                 lea.l      792(a0),a4
[0002155e] 7010                      moveq.l    #16,d0
[00021560] 3940 0016                 move.w     d0,22(a4)
[00021564] 3940 0014                 move.w     d0,20(a4)
[00021568] 266c 000c                 movea.l    12(a4),a3
[0002156c] 3229 0008                 move.w     8(a1),d1
[00021570] e949                      lsl.w      #4,d1
[00021572] d269 0006                 add.w      6(a1),d1
[00021576] e149                      lsl.w      #8,d1
[00021578] 3741 000c                 move.w     d1,12(a3)
[0002157c] 206f 0004                 movea.l    4(a7),a0
[00021580] 5048                      addq.w     #8,a0
[00021582] 2688                      move.l     a0,(a3)
[00021584] 286f 0004                 movea.l    4(a7),a4
[00021588] 49ec 0028                 lea.l      40(a4),a4
[0002158c] 274c 0004                 move.l     a4,4(a3)
[00021590] 426b 001a                 clr.w      26(a3)
[00021594] 377c 0012 001c            move.w     #$0012,28(a3)
[0002159a] 377c 0010 001e            move.w     #$0010,30(a3)
[000215a0] 377c 0002 0020            move.w     #$0002,32(a3)
[000215a6] 7040                      moveq.l    #64,d0
[000215a8] 43e9 000a                 lea.l      10(a1),a1
[000215ac] 4eb9 0007 6f44            jsr        memcpy
[000215b2] 362b 000c                 move.w     12(a3),d3
[000215b6] 700c                      moveq.l    #12,d0
[000215b8] e063                      asr.w      d0,d3
[000215ba] c67c 000f                 and.w      #$000F,d3
[000215be] 3203                      move.w     d3,d1
[000215c0] 48c1                      ext.l      d1
[000215c2] e589                      lsl.l      #2,d1
[000215c4] 41f9 000b e270            lea.l      colour_text,a0
[000215ca] 2270 1800                 movea.l    0(a0,d1.l),a1
[000215ce] 206a 0014                 movea.l    20(a2),a0
[000215d2] 700e                      moveq.l    #14,d0
[000215d4] 4eb9 0004 afe0            jsr        Aob_puttext
[000215da] 206a 0014                 movea.l    20(a2),a0
[000215de] 3003                      move.w     d3,d0
[000215e0] 0268 fff0 0146            andi.w     #$FFF0,326(a0)
[000215e6] c07c 000f                 and.w      #$000F,d0
[000215ea] 8168 0146                 or.w       d0,326(a0)
[000215ee] 362b 000c                 move.w     12(a3),d3
[000215f2] e043                      asr.w      #8,d3
[000215f4] c67c 000f                 and.w      #$000F,d3
[000215f8] 3003                      move.w     d3,d0
[000215fa] 48c0                      ext.l      d0
[000215fc] e588                      lsl.l      #2,d0
[000215fe] 41f9 000b e270            lea.l      colour_text,a0
[00021604] 2270 0800                 movea.l    0(a0,d0.l),a1
[00021608] 206a 0014                 movea.l    20(a2),a0
[0002160c] 7014                      moveq.l    #20,d0
[0002160e] 4eb9 0004 afe0            jsr        Aob_puttext
[00021614] 206a 0014                 movea.l    20(a2),a0
[00021618] 3003                      move.w     d3,d0
[0002161a] 0268 fff0 01d6            andi.w     #$FFF0,470(a0)
[00021620] c07c 000f                 and.w      #$000F,d0
[00021624] 8168 01d6                 or.w       d0,470(a0)
[00021628] 504f                      addq.w     #8,a7
[0002162a] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002162e] 4e75                      rts

term:
[00021630] 2f0a                      move.l     a2,-(a7)
[00021632] 2f0b                      move.l     a3,-(a7)
[00021634] 2448                      movea.l    a0,a2
[00021636] 006a 0100 0056            ori.w      #$0100,86(a2)
[0002163c] 2650                      movea.l    (a0),a3
[0002163e] 302a 0056                 move.w     86(a2),d0
[00021642] c07c 0800                 and.w      #$0800,d0
[00021646] 6716                      beq.s      term_1
[00021648] 43ea 002c                 lea.l      44(a2),a1
[0002164c] 206b 0004                 movea.l    4(a3),a0
[00021650] 41e8 003a                 lea.l      58(a0),a0
[00021654] 7008                      moveq.l    #8,d0
[00021656] 4eb9 0007 6f44            jsr        memcpy
[0002165c] 6014                      bra.s      term_2
term_1:
[0002165e] 7008                      moveq.l    #8,d0
[00021660] 43ea 0024                 lea.l      36(a2),a1
[00021664] 206b 0004                 movea.l    4(a3),a0
[00021668] 41e8 003a                 lea.l      58(a0),a0
[0002166c] 4eb9 0007 6f44            jsr        memcpy
term_2:
[00021672] 206b 0004                 movea.l    4(a3),a0
[00021676] 42a8 0012                 clr.l      18(a0)
[0002167a] 204b                      movea.l    a3,a0
[0002167c] 4eb9 0004 7e26            jsr        Ax_free
[00021682] 204a                      movea.l    a2,a0
[00021684] 4eb9 0005 013e            jsr        Awi_closed
[0002168a] 204a                      movea.l    a2,a0
[0002168c] 4eb9 0005 0330            jsr        Awi_delete
[00021692] 265f                      movea.l    (a7)+,a3
[00021694] 245f                      movea.l    (a7)+,a2
[00021696] 4e75                      rts

	.data
TEXT_001:
[000a5c9a]                           dc.b 'Abbruch',0
TEXT_002:
[000a5ca2]                           dc.b $00
TEXT_003:
[000a5ca3]                           dc.b $4f
[000a5ca4]                           dc.w $4b00
TEXT_01:
[000a5ca6]                           dc.b 'neues Muster',0
TEXT_03:
[000a5cb3]                           dc.b 'Pinsel:',0
TEXT_04:
[000a5cbb]                           dc.b ' Maus-Editor ',0
TEXT_05:
[000a5cc9]                           dc.b 'Beispiel:',0
TEXT_09:
[000a5cd3]                           dc.b 'hinten:',0
TEXT_10:
[000a5cdb]                           dc.b 'vorne:',0
TEXT_18:
[000a5ce2]                           dc.b 'Farbe:',0
TEXT_210:
[000a5ce9]                           dc.b 'MŽUSE',0
[000a5cef]                           dc.b $00
A_3DBUTTON01:
[000a5cf0] 0005a4e2                  dc.l A_3Dbutton
[000a5cf4]                           dc.w $29c1
[000a5cf6]                           dc.w $0178
[000a5cf8] 00059318                  dc.l Auo_string
[000a5cfc] 000a5c9a                  dc.l TEXT_001
[000a5d00]                           dc.b $00
[000a5d01]                           dc.b $00
[000a5d02]                           dc.b $00
[000a5d03]                           dc.b $00
[000a5d04]                           dc.b $00
[000a5d05]                           dc.b $00
[000a5d06]                           dc.b $00
[000a5d07]                           dc.b $00
[000a5d08]                           dc.b $00
[000a5d09]                           dc.b $00
[000a5d0a]                           dc.b $00
[000a5d0b]                           dc.b $00
[000a5d0c]                           dc.b $00
[000a5d0d]                           dc.b $00
[000a5d0e]                           dc.b $00
[000a5d0f]                           dc.b $00
A_3DBUTTON03:
[000a5d10] 0005a4e2                  dc.l A_3Dbutton
[000a5d14]                           dc.w $29c1
[000a5d16]                           dc.w $0178
[000a5d18] 00059318                  dc.l Auo_string
[000a5d1c] 000a5ca3                  dc.l TEXT_003
[000a5d20]                           dc.b $00
[000a5d21]                           dc.b $00
[000a5d22]                           dc.b $00
[000a5d23]                           dc.b $00
[000a5d24]                           dc.b $00
[000a5d25]                           dc.b $00
[000a5d26]                           dc.b $00
[000a5d27]                           dc.b $00
[000a5d28]                           dc.b $00
[000a5d29]                           dc.b $00
[000a5d2a]                           dc.b $00
[000a5d2b]                           dc.b $00
[000a5d2c]                           dc.b $00
[000a5d2d]                           dc.b $00
[000a5d2e]                           dc.b $00
[000a5d2f]                           dc.b $00
A_3DBUTTON04:
[000a5d30] 0005a4e2                  dc.l A_3Dbutton
[000a5d34]                           dc.w $29c1
[000a5d36]                           dc.w $0178
[000a5d38] 00059318                  dc.l Auo_string
[000a5d3c] 000a5ca6                  dc.l TEXT_01
[000a5d40]                           dc.b $00
[000a5d41]                           dc.b $00
[000a5d42]                           dc.b $00
[000a5d43]                           dc.b $00
[000a5d44]                           dc.b $00
[000a5d45]                           dc.b $00
[000a5d46]                           dc.b $00
[000a5d47]                           dc.b $00
[000a5d48]                           dc.b $00
[000a5d49]                           dc.b $00
[000a5d4a]                           dc.b $00
[000a5d4b]                           dc.b $00
[000a5d4c]                           dc.b $00
[000a5d4d]                           dc.b $00
[000a5d4e]                           dc.b $00
[000a5d4f]                           dc.b $00
A_3DBUTTON05:
[000a5d50] 0005a4e2                  dc.l A_3Dbutton
[000a5d54]                           dc.w $2000
[000a5d56]                           dc.w $91c8
[000a5d58] 00059318                  dc.l Auo_string
[000a5d5c]                           dc.b $00
[000a5d5d]                           dc.b $00
[000a5d5e]                           dc.b $00
[000a5d5f]                           dc.b $00
[000a5d60]                           dc.b $00
[000a5d61]                           dc.b $00
[000a5d62]                           dc.b $00
[000a5d63]                           dc.b $00
[000a5d64]                           dc.b $00
[000a5d65]                           dc.b $00
[000a5d66]                           dc.b $00
[000a5d67]                           dc.b $00
[000a5d68]                           dc.b $00
[000a5d69]                           dc.b $00
[000a5d6a]                           dc.b $00
[000a5d6b]                           dc.b $00
[000a5d6c]                           dc.b $00
[000a5d6d]                           dc.b $00
[000a5d6e]                           dc.b $00
[000a5d6f]                           dc.b $00
A_3DBUTTON06:
[000a5d70] 0005a4e2                  dc.l A_3Dbutton
[000a5d74]                           dc.w $a021
[000a5d76]                           dc.w $91f8
[000a5d78] 00059318                  dc.l Auo_string
[000a5d7c]                           dc.b $00
[000a5d7d]                           dc.b $00
[000a5d7e]                           dc.b $00
[000a5d7f]                           dc.b $00
[000a5d80]                           dc.b $00
[000a5d81]                           dc.b $00
[000a5d82]                           dc.b $00
[000a5d83]                           dc.b $00
[000a5d84]                           dc.b $00
[000a5d85]                           dc.b $00
[000a5d86]                           dc.b $00
[000a5d87]                           dc.b $00
[000a5d88]                           dc.b $00
[000a5d89]                           dc.b $00
[000a5d8a]                           dc.b $00
[000a5d8b]                           dc.b $00
[000a5d8c]                           dc.b $00
[000a5d8d]                           dc.b $00
[000a5d8e]                           dc.b $00
[000a5d8f]                           dc.b $00
A_3DBUTTON07:
[000a5d90] 0005a4e2                  dc.l A_3Dbutton
[000a5d94]                           dc.w $21f1
[000a5d96]                           dc.w $0178
[000a5d98] 00059318                  dc.l Auo_string
[000a5d9c]                           dc.b $00
[000a5d9d]                           dc.b $00
[000a5d9e]                           dc.b $00
[000a5d9f]                           dc.b $00
[000a5da0]                           dc.b $00
[000a5da1]                           dc.b $00
[000a5da2]                           dc.b $00
[000a5da3]                           dc.b $00
[000a5da4]                           dc.b $00
[000a5da5]                           dc.b $00
[000a5da6]                           dc.b $00
[000a5da7]                           dc.b $00
[000a5da8]                           dc.b $00
[000a5da9]                           dc.b $00
[000a5daa]                           dc.b $00
[000a5dab]                           dc.b $00
[000a5dac]                           dc.b $00
[000a5dad]                           dc.b $00
[000a5dae]                           dc.b $00
[000a5daf]                           dc.b $00
A_3DBUTTON27:
[000a5db0] 0005a4e2                  dc.l A_3Dbutton
[000a5db4]                           dc.w $09f1
[000a5db6]                           dc.w $0178
[000a5db8] 00059318                  dc.l Auo_string
[000a5dbc]                           dc.b $00
[000a5dbd]                           dc.b $00
[000a5dbe]                           dc.b $00
[000a5dbf]                           dc.b $00
[000a5dc0]                           dc.b $00
[000a5dc1]                           dc.b $00
[000a5dc2]                           dc.b $00
[000a5dc3]                           dc.b $00
[000a5dc4]                           dc.b $00
[000a5dc5]                           dc.b $00
[000a5dc6]                           dc.b $00
[000a5dc7]                           dc.b $00
[000a5dc8]                           dc.b $00
[000a5dc9]                           dc.b $00
[000a5dca]                           dc.b $00
[000a5dcb]                           dc.b $00
[000a5dcc]                           dc.b $00
[000a5dcd]                           dc.b $00
[000a5dce]                           dc.b $00
[000a5dcf]                           dc.b $00
A_ARROWS02:
[000a5dd0] 0005b212                  dc.l A_arrows
[000a5dd4]                           dc.w $1301
[000a5dd6]                           dc.b $00
[000a5dd7]                           dc.b $01
[000a5dd8]                           dc.b $00
[000a5dd9]                           dc.b $00
[000a5dda]                           dc.b $00
[000a5ddb]                           dc.b $00
[000a5ddc]                           dc.b $00
[000a5ddd]                           dc.b $00
[000a5dde]                           dc.b $00
[000a5ddf]                           dc.b $00
[000a5de0]                           dc.b $00
[000a5de1]                           dc.b $00
[000a5de2]                           dc.b $00
[000a5de3]                           dc.b $00
[000a5de4]                           dc.b $00
[000a5de5]                           dc.b $00
[000a5de6]                           dc.b $00
[000a5de7]                           dc.b $00
[000a5de8]                           dc.b $00
[000a5de9]                           dc.b $00
[000a5dea]                           dc.b $00
[000a5deb]                           dc.b $00
[000a5dec]                           dc.b $00
[000a5ded]                           dc.b $00
[000a5dee]                           dc.b $00
[000a5def]                           dc.b $00
A_INNERFRAME02:
[000a5df0] 00059f9c                  dc.l A_innerframe
[000a5df4]                           dc.w $1000
[000a5df6]                           dc.w $8f19
[000a5df8] 00059318                  dc.l Auo_string
[000a5dfc] 000a5ce2                  dc.l TEXT_18
[000a5e00]                           dc.b $00
[000a5e01]                           dc.b $00
[000a5e02]                           dc.b $00
[000a5e03]                           dc.b $00
[000a5e04]                           dc.b $00
[000a5e05]                           dc.b $00
[000a5e06]                           dc.b $00
[000a5e07]                           dc.b $00
[000a5e08]                           dc.b $00
[000a5e09]                           dc.b $00
[000a5e0a]                           dc.b $00
[000a5e0b]                           dc.b $00
[000a5e0c]                           dc.b $00
[000a5e0d]                           dc.b $00
[000a5e0e]                           dc.b $00
[000a5e0f]                           dc.b $00
A_INNERFRAME03:
[000a5e10] 00059f9c                  dc.l A_innerframe
[000a5e14]                           dc.w $1000
[000a5e16]                           dc.w $8f19
[000a5e18] 00059318                  dc.l Auo_string
[000a5e1c] 000a5cb3                  dc.l TEXT_03
[000a5e20]                           dc.b $00
[000a5e21]                           dc.b $00
[000a5e22]                           dc.b $00
[000a5e23]                           dc.b $00
[000a5e24]                           dc.b $00
[000a5e25]                           dc.b $00
[000a5e26]                           dc.b $00
[000a5e27]                           dc.b $00
[000a5e28]                           dc.b $00
[000a5e29]                           dc.b $00
[000a5e2a]                           dc.b $00
[000a5e2b]                           dc.b $00
[000a5e2c]                           dc.b $00
[000a5e2d]                           dc.b $00
[000a5e2e]                           dc.b $00
[000a5e2f]                           dc.b $00
A_INNERFRAME04:
[000a5e30] 00059f9c                  dc.l A_innerframe
[000a5e34]                           dc.w $1000
[000a5e36]                           dc.w $8f19
[000a5e38] 00059318                  dc.l Auo_string
[000a5e3c] 000a5cc9                  dc.l TEXT_05
[000a5e40]                           dc.b $00
[000a5e41]                           dc.b $00
[000a5e42]                           dc.b $00
[000a5e43]                           dc.b $00
[000a5e44]                           dc.b $00
[000a5e45]                           dc.b $00
[000a5e46]                           dc.b $00
[000a5e47]                           dc.b $00
[000a5e48]                           dc.b $00
[000a5e49]                           dc.b $00
[000a5e4a]                           dc.b $00
[000a5e4b]                           dc.b $00
[000a5e4c]                           dc.b $00
[000a5e4d]                           dc.b $00
[000a5e4e]                           dc.b $00
[000a5e4f]                           dc.b $00
USER_004:
[000a5e50] 000211a0                  dc.l edmo_bitmap
[000a5e54]                           dc.b $00
[000a5e55]                           dc.b $00
[000a5e56]                           dc.b $00
[000a5e57]                           dc.b $00
[000a5e58]                           dc.b $00
[000a5e59]                           dc.b $00
[000a5e5a]                           dc.b $00
[000a5e5b]                           dc.b $00
[000a5e5c]                           dc.b $00
[000a5e5d]                           dc.b $00
[000a5e5e]                           dc.b $00
[000a5e5f]                           dc.b $00
[000a5e60]                           dc.b $00
[000a5e61]                           dc.b $00
[000a5e62]                           dc.b $00
[000a5e63]                           dc.b $00
[000a5e64]                           dc.b $00
[000a5e65]                           dc.b $00
[000a5e66]                           dc.b $00
[000a5e67]                           dc.b $00
[000a5e68]                           dc.b $00
[000a5e69]                           dc.b $00
[000a5e6a]                           dc.b $00
[000a5e6b]                           dc.b $00
[000a5e6c]                           dc.b $00
[000a5e6d]                           dc.b $00
[000a5e6e]                           dc.b $00
[000a5e6f]                           dc.b $00
_MSK_IC_MOUSE:
[000a5e70]                           dc.b $00
[000a5e71]                           dc.b $00
[000a5e72]                           dc.b $00
[000a5e73]                           dc.b $00
[000a5e74]                           dc.b $00
[000a5e75]                           dc.b $00
[000a5e76]                           dc.b $00
[000a5e77]                           dc.b $00
[000a5e78]                           dc.b $00
[000a5e79]                           dc.b $00
[000a5e7a]                           dc.b $00
[000a5e7b]                           dc.b $00
[000a5e7c]                           dc.b $00
[000a5e7d]                           dc.b $00
[000a5e7e]                           dc.b $00
[000a5e7f]                           dc.b $00
[000a5e80]                           dc.b $00
[000a5e81]                           dc.b $00
[000a5e82]                           dc.w $0200
[000a5e84]                           dc.w $0100
[000a5e86]                           dc.w $1c00
[000a5e88]                           dc.w $0700
[000a5e8a]                           dc.w $0380
[000a5e8c]                           dc.w $3e00
[000a5e8e]                           dc.w $0780
[000a5e90]                           dc.w $0380
[000a5e92]                           dc.w $3e00
[000a5e94]                           dc.w $07c0
[000a5e96]                           dc.w $0380
[000a5e98]                           dc.w $ff80
[000a5e9a]                           dc.w $07e0
[000a5e9c]                           dc.w $1ff1
[000a5e9e]                           dc.w $ffc0
[000a5ea0]                           dc.w $07f0
[000a5ea2]                           dc.w $3ff9
[000a5ea4]                           dc.w $ffc0
[000a5ea6]                           dc.w $07e0
[000a5ea8]                           dc.w $1ff1
[000a5eaa]                           dc.w $ffc0
[000a5eac]                           dc.w $07e0
[000a5eae]                           dc.w $0380
[000a5eb0]                           dc.w $ff80
[000a5eb2]                           dc.w $02e0
[000a5eb4]                           dc.w $0380
[000a5eb6]                           dc.w $3e00
[000a5eb8]                           dc.b $00
[000a5eb9]                           dc.b $40
[000a5eba]                           dc.w $0380
[000a5ebc]                           dc.w $3e00
[000a5ebe]                           dc.b $00
[000a5ebf]                           dc.b $00
[000a5ec0]                           dc.w $0100
[000a5ec2]                           dc.w $1c00
[000a5ec4]                           dc.b $00
[000a5ec5]                           dc.b $00
[000a5ec6]                           dc.b $00
[000a5ec7]                           dc.b $00
[000a5ec8]                           dc.b $00
[000a5ec9]                           dc.b $00
[000a5eca]                           dc.w $03fc
[000a5ecc]                           dc.b $00
[000a5ecd]                           dc.b $00
[000a5ece]                           dc.w $1c00
[000a5ed0]                           dc.w $07fe
[000a5ed2]                           dc.w $06c0
[000a5ed4]                           dc.w $3e00
[000a5ed6]                           dc.w $07fe
[000a5ed8]                           dc.w $0fe0
[000a5eda]                           dc.w $7f00
[000a5edc]                           dc.w $07fe
[000a5ede]                           dc.w $07c0
[000a5ee0]                           dc.w $2700
[000a5ee2]                           dc.w $03fc
[000a5ee4]                           dc.w $0380
[000a5ee6]                           dc.w $0700
[000a5ee8]                           dc.w $01f8
[000a5eea]                           dc.w $0380
[000a5eec]                           dc.w $0e00
[000a5eee]                           dc.b $00
[000a5eef]                           dc.b $f0
[000a5ef0]                           dc.w $0380
[000a5ef2]                           dc.w $1c00
[000a5ef4]                           dc.w $01f8
[000a5ef6]                           dc.w $0380
[000a5ef8]                           dc.w $1c00
[000a5efa]                           dc.w $03fc
[000a5efc]                           dc.w $0380
[000a5efe]                           dc.w $0800
[000a5f00]                           dc.w $07fe
[000a5f02]                           dc.w $07c0
[000a5f04]                           dc.w $1c00
[000a5f06]                           dc.w $07fe
[000a5f08]                           dc.w $0fe0
[000a5f0a]                           dc.w $1c00
[000a5f0c]                           dc.w $07fe
[000a5f0e]                           dc.w $06c0
[000a5f10]                           dc.w $0800
[000a5f12]                           dc.w $03fc
[000a5f14]                           dc.b $00
[000a5f15]                           dc.b $00
[000a5f16]                           dc.b $00
[000a5f17]                           dc.b $00
[000a5f18]                           dc.b $00
[000a5f19]                           dc.b $00
[000a5f1a]                           dc.b $00
[000a5f1b]                           dc.b $00
[000a5f1c]                           dc.b $00
[000a5f1d]                           dc.b $00
[000a5f1e]                           dc.b $00
[000a5f1f]                           dc.b $00
[000a5f20]                           dc.b $00
[000a5f21]                           dc.b $00
[000a5f22]                           dc.b $00
[000a5f23]                           dc.b $00
_DAT_IC_MOUSE:
[000a5f24]                           dc.b $00
[000a5f25]                           dc.b $00
[000a5f26]                           dc.b $00
[000a5f27]                           dc.b $00
[000a5f28]                           dc.b $00
[000a5f29]                           dc.b $00
[000a5f2a]                           dc.b $00
[000a5f2b]                           dc.b $00
[000a5f2c]                           dc.b $00
[000a5f2d]                           dc.b $00
[000a5f2e]                           dc.b $00
[000a5f2f]                           dc.b $00
[000a5f30]                           dc.b $00
[000a5f31]                           dc.b $00
[000a5f32]                           dc.b $00
[000a5f33]                           dc.b $00
[000a5f34]                           dc.b $00
[000a5f35]                           dc.b $00
[000a5f36]                           dc.b $00
[000a5f37]                           dc.b $00
[000a5f38]                           dc.b $00
[000a5f39]                           dc.b $00
[000a5f3a]                           dc.b $00
[000a5f3b]                           dc.b $00
[000a5f3c]                           dc.w $0200
[000a5f3e]                           dc.w $0100
[000a5f40]                           dc.w $1c00
[000a5f42]                           dc.w $0300
[000a5f44]                           dc.w $0100
[000a5f46]                           dc.w $1c00
[000a5f48]                           dc.w $0380
[000a5f4a]                           dc.w $0100
[000a5f4c]                           dc.w $1c00
[000a5f4e]                           dc.w $03c0
[000a5f50]                           dc.w $0100
[000a5f52]                           dc.w $f780
[000a5f54]                           dc.w $03e0
[000a5f56]                           dc.w $1ef0
[000a5f58]                           dc.w $e380
[000a5f5a]                           dc.w $0380
[000a5f5c]                           dc.w $0100
[000a5f5e]                           dc.w $f780
[000a5f60]                           dc.w $02c0
[000a5f62]                           dc.w $0100
[000a5f64]                           dc.w $1c00
[000a5f66]                           dc.b $00
[000a5f67]                           dc.b $40
[000a5f68]                           dc.w $0100
[000a5f6a]                           dc.w $1c00
[000a5f6c]                           dc.b $00
[000a5f6d]                           dc.b $00
[000a5f6e]                           dc.w $0100
[000a5f70]                           dc.w $1c00
[000a5f72]                           dc.b $00
[000a5f73]                           dc.b $00
[000a5f74]                           dc.b $00
[000a5f75]                           dc.b $00
[000a5f76]                           dc.b $00
[000a5f77]                           dc.b $00
[000a5f78]                           dc.b $00
[000a5f79]                           dc.b $00
[000a5f7a]                           dc.b $00
[000a5f7b]                           dc.b $00
[000a5f7c]                           dc.b $00
[000a5f7d]                           dc.b $00
[000a5f7e]                           dc.b $00
[000a5f7f]                           dc.b $00
[000a5f80]                           dc.b $00
[000a5f81]                           dc.b $00
[000a5f82]                           dc.b $00
[000a5f83]                           dc.b $00
[000a5f84]                           dc.w $03fc
[000a5f86]                           dc.b $00
[000a5f87]                           dc.b $00
[000a5f88]                           dc.w $1c00
[000a5f8a]                           dc.w $0204
[000a5f8c]                           dc.w $06c0
[000a5f8e]                           dc.w $2200
[000a5f90]                           dc.w $0204
[000a5f92]                           dc.w $0100
[000a5f94]                           dc.w $0200
[000a5f96]                           dc.w $01b8
[000a5f98]                           dc.w $0100
[000a5f9a]                           dc.w $0200
[000a5f9c]                           dc.b $00
[000a5f9d]                           dc.b $f0
[000a5f9e]                           dc.w $0100
[000a5fa0]                           dc.w $0400
[000a5fa2]                           dc.b $00
[000a5fa3]                           dc.b $60
[000a5fa4]                           dc.w $0100
[000a5fa6]                           dc.w $0800
[000a5fa8]                           dc.b $00
[000a5fa9]                           dc.b $f0
[000a5faa]                           dc.w $0100
[000a5fac]                           dc.w $0800
[000a5fae]                           dc.w $0148
[000a5fb0]                           dc.w $0100
[000a5fb2]                           dc.b $00
[000a5fb3]                           dc.b $00
[000a5fb4]                           dc.w $0244
[000a5fb6]                           dc.w $0100
[000a5fb8]                           dc.w $0800
[000a5fba]                           dc.w $02f4
[000a5fbc]                           dc.w $06c0
[000a5fbe]                           dc.w $0800
[000a5fc0]                           dc.w $03fc
[000a5fc2]                           dc.b $00
[000a5fc3]                           dc.b $00
[000a5fc4]                           dc.b $00
[000a5fc5]                           dc.b $00
[000a5fc6]                           dc.b $00
[000a5fc7]                           dc.b $00
[000a5fc8]                           dc.b $00
[000a5fc9]                           dc.b $00
[000a5fca]                           dc.b $00
[000a5fcb]                           dc.b $00
[000a5fcc]                           dc.b $00
[000a5fcd]                           dc.b $00
[000a5fce]                           dc.b $00
[000a5fcf]                           dc.b $00
[000a5fd0]                           dc.b $00
[000a5fd1]                           dc.b $00
[000a5fd2]                           dc.b $00
[000a5fd3]                           dc.b $00
[000a5fd4]                           dc.b $00
[000a5fd5]                           dc.b $00
[000a5fd6]                           dc.b $00
[000a5fd7]                           dc.b $00
IC_MOUSE:
[000a5fd8] 000a5e70                  dc.l _MSK_IC_MOUSE
[000a5fdc] 000a5f24                  dc.l _DAT_IC_MOUSE
[000a5fe0] 000a5ce9                  dc.l TEXT_210
[000a5fe4]                           dc.w $1000
[000a5fe6]                           dc.b $00
[000a5fe7]                           dc.b $00
[000a5fe8]                           dc.b $00
[000a5fe9]                           dc.b $00
[000a5fea]                           dc.b $00
[000a5feb]                           dc.b $0c
[000a5fec]                           dc.b $00
[000a5fed]                           dc.b $00
[000a5fee]                           dc.b $00
[000a5fef]                           dc.b $30
[000a5ff0]                           dc.b $00
[000a5ff1]                           dc.b $1e
[000a5ff2]                           dc.b $00
[000a5ff3]                           dc.b $00
[000a5ff4]                           dc.b $00
[000a5ff5]                           dc.b $20
[000a5ff6]                           dc.b $00
[000a5ff7]                           dc.b $48
[000a5ff8]                           dc.b $00
[000a5ff9]                           dc.b $08
[000a5ffa]                           dc.b $00
[000a5ffb]                           dc.b $00
[000a5ffc]                           dc.b $00
[000a5ffd]                           dc.b $00
_MSK_MOUSEDUMMY:
[000a5ffe]                           dc.w $ffff
[000a6000]                           dc.w $ffff
[000a6002]                           dc.w $ffff
[000a6004]                           dc.w $ffff
[000a6006]                           dc.w $ffff
[000a6008]                           dc.w $ffff
[000a600a]                           dc.w $ffff
[000a600c]                           dc.w $ffff
[000a600e]                           dc.w $ffff
[000a6010]                           dc.w $ffff
[000a6012]                           dc.w $ffff
[000a6014]                           dc.w $ffff
[000a6016]                           dc.w $ffff
[000a6018]                           dc.w $ffff
[000a601a]                           dc.w $ffff
[000a601c]                           dc.w $ffff
_DAT_MOUSEDUMMY:
[000a601e]                           dc.w $7ffe
[000a6020]                           dc.w $bffd
[000a6022]                           dc.w $dffb
[000a6024]                           dc.w $eff7
[000a6026]                           dc.w $f7ef
[000a6028]                           dc.w $fbdf
[000a602a]                           dc.w $fdbf
[000a602c]                           dc.w $fe7f
[000a602e]                           dc.w $fe7f
[000a6030]                           dc.w $fdbf
[000a6032]                           dc.w $fbdf
[000a6034]                           dc.w $f7ef
[000a6036]                           dc.w $eff7
[000a6038]                           dc.w $dffb
[000a603a]                           dc.w $bffd
[000a603c]                           dc.w $7ffe
MOUSEDUMMY:
[000a603e] 000a5ffe                  dc.l _MSK_MOUSEDUMMY
[000a6042] 000a601e                  dc.l _DAT_MOUSEDUMMY
[000a6046] 000a5ca2                  dc.l TEXT_002
[000a604a]                           dc.w $1000
[000a604c]                           dc.b $00
[000a604d]                           dc.b $0a
[000a604e]                           dc.b $00
[000a604f]                           dc.b $0a
[000a6050]                           dc.b $00
[000a6051]                           dc.b $00
[000a6052]                           dc.b $00
[000a6053]                           dc.b $00
[000a6054]                           dc.b $00
[000a6055]                           dc.b $10
[000a6056]                           dc.b $00
[000a6057]                           dc.b $10
[000a6058]                           dc.b $00
[000a6059]                           dc.b $00
[000a605a]                           dc.b $00
[000a605b]                           dc.b $00
[000a605c]                           dc.b $00
[000a605d]                           dc.b $08
[000a605e]                           dc.b $00
[000a605f]                           dc.b $08
[000a6060]                           dc.b $00
[000a6061]                           dc.b $00
[000a6062]                           dc.b $00
[000a6063]                           dc.b $00
EDIT_MOUSE:
[000a6064]                           dc.w $ffff
[000a6066]                           dc.b $00
[000a6067]                           dc.b $01
[000a6068]                           dc.b $00
[000a6069]                           dc.b $26
[000a606a]                           dc.b $00
[000a606b]                           dc.b $18
[000a606c]                           dc.b $00
[000a606d]                           dc.b $40
[000a606e]                           dc.b $00
[000a606f]                           dc.b $10
[000a6070] 000a5d90                  dc.l A_3DBUTTON07
[000a6074]                           dc.b $00
[000a6075]                           dc.b $00
[000a6076]                           dc.b $00
[000a6077]                           dc.b $00
[000a6078]                           dc.b $00
[000a6079]                           dc.b $32
[000a607a]                           dc.b $00
[000a607b]                           dc.b $0d
_01_EDIT_MOUSE:
[000a607c]                           dc.b $00
[000a607d]                           dc.b $08
[000a607e]                           dc.b $00
[000a607f]                           dc.b $02
[000a6080]                           dc.b $00
[000a6081]                           dc.b $06
[000a6082]                           dc.b $00
[000a6083]                           dc.b $18
[000a6084]                           dc.b $00
[000a6085]                           dc.b $40
[000a6086]                           dc.b $00
[000a6087]                           dc.b $00
[000a6088] 000a5e10                  dc.l A_INNERFRAME03
[000a608c]                           dc.b $00
[000a608d]                           dc.b $0a
[000a608e]                           dc.b $00
[000a608f]                           dc.b $00
[000a6090]                           dc.b $00
[000a6091]                           dc.b $0a
[000a6092]                           dc.b $00
[000a6093]                           dc.b $03
_02_EDIT_MOUSE:
[000a6094]                           dc.b $00
[000a6095]                           dc.b $04
[000a6096]                           dc.w $ffff
[000a6098]                           dc.w $ffff
[000a609a]                           dc.b $00
[000a609b]                           dc.b $14
[000a609c]                           dc.b $00
[000a609d]                           dc.b $05
[000a609e]                           dc.b $00
[000a609f]                           dc.b $00
[000a60a0]                           dc.b $00
[000a60a1]                           dc.b $01
[000a60a2]                           dc.w $0171
[000a60a4]                           dc.b $00
[000a60a5]                           dc.b $01
[000a60a6]                           dc.b $00
[000a60a7]                           dc.b $01
[000a60a8]                           dc.b $00
[000a60a9]                           dc.b $02
[000a60aa]                           dc.b $00
[000a60ab]                           dc.b $01
_02aEDIT_MOUSE:
[000a60ac] 00020d92                  dc.l edmo_black
[000a60b0]                           dc.b $00
[000a60b1]                           dc.b $00
[000a60b2]                           dc.b $00
[000a60b3]                           dc.b $00
[000a60b4]                           dc.w $8000
[000a60b6]                           dc.b $00
[000a60b7]                           dc.b $53
[000a60b8]                           dc.b $00
[000a60b9]                           dc.b $00
[000a60ba]                           dc.b $00
[000a60bb]                           dc.b $00
[000a60bc]                           dc.b $00
[000a60bd]                           dc.b $00
[000a60be]                           dc.b $00
[000a60bf]                           dc.b $00
[000a60c0]                           dc.b $00
[000a60c1]                           dc.b $00
[000a60c2]                           dc.b $00
[000a60c3]                           dc.b $00
_04_EDIT_MOUSE:
[000a60c4]                           dc.b $00
[000a60c5]                           dc.b $06
[000a60c6]                           dc.w $ffff
[000a60c8]                           dc.w $ffff
[000a60ca]                           dc.b $00
[000a60cb]                           dc.b $14
[000a60cc]                           dc.b $00
[000a60cd]                           dc.b $05
[000a60ce]                           dc.b $00
[000a60cf]                           dc.b $00
[000a60d0]                           dc.b $00
[000a60d1]                           dc.b $01
[000a60d2]                           dc.w $1170
[000a60d4]                           dc.b $00
[000a60d5]                           dc.b $04
[000a60d6]                           dc.b $00
[000a60d7]                           dc.b $01
[000a60d8]                           dc.b $00
[000a60d9]                           dc.b $02
[000a60da]                           dc.b $00
[000a60db]                           dc.b $01
_04aEDIT_MOUSE:
[000a60dc] 00020dc4                  dc.l edmo_white
[000a60e0]                           dc.b $00
[000a60e1]                           dc.b $00
[000a60e2]                           dc.b $00
[000a60e3]                           dc.b $00
[000a60e4]                           dc.w $8000
[000a60e6]                           dc.b $00
[000a60e7]                           dc.b $57
[000a60e8]                           dc.b $00
[000a60e9]                           dc.b $00
[000a60ea]                           dc.b $00
[000a60eb]                           dc.b $00
[000a60ec]                           dc.b $00
[000a60ed]                           dc.b $00
[000a60ee]                           dc.b $00
[000a60ef]                           dc.b $00
[000a60f0]                           dc.b $00
[000a60f1]                           dc.b $00
[000a60f2]                           dc.b $00
[000a60f3]                           dc.b $00
_06_EDIT_MOUSE:
[000a60f4]                           dc.b $00
[000a60f5]                           dc.b $01
[000a60f6]                           dc.w $ffff
[000a60f8]                           dc.w $ffff
[000a60fa]                           dc.b $00
[000a60fb]                           dc.b $14
[000a60fc]                           dc.b $00
[000a60fd]                           dc.b $05
[000a60fe]                           dc.b $00
[000a60ff]                           dc.b $00
[000a6100]                           dc.b $00
[000a6101]                           dc.b $01
[000a6102]                           dc.w $1141
[000a6104]                           dc.b $00
[000a6105]                           dc.b $07
[000a6106]                           dc.b $00
[000a6107]                           dc.b $01
[000a6108]                           dc.b $00
[000a6109]                           dc.b $02
[000a610a]                           dc.b $00
[000a610b]                           dc.b $01
_06aEDIT_MOUSE:
[000a610c] 00020df0                  dc.l edmo_invisible
[000a6110]                           dc.b $00
[000a6111]                           dc.b $00
[000a6112]                           dc.b $00
[000a6113]                           dc.b $00
[000a6114]                           dc.w $8000
[000a6116]                           dc.b $00
[000a6117]                           dc.b $54
[000a6118]                           dc.b $00
[000a6119]                           dc.b $00
[000a611a]                           dc.b $00
[000a611b]                           dc.b $00
[000a611c]                           dc.b $00
[000a611d]                           dc.b $00
[000a611e]                           dc.b $00
[000a611f]                           dc.b $00
[000a6120]                           dc.b $00
[000a6121]                           dc.b $00
[000a6122]                           dc.b $00
[000a6123]                           dc.b $00
_08_EDIT_MOUSE:
[000a6124]                           dc.b $00
[000a6125]                           dc.b $15
[000a6126]                           dc.b $00
[000a6127]                           dc.b $09
[000a6128]                           dc.b $00
[000a6129]                           dc.b $11
[000a612a]                           dc.b $00
[000a612b]                           dc.b $18
[000a612c]                           dc.b $00
[000a612d]                           dc.b $40
[000a612e]                           dc.b $00
[000a612f]                           dc.b $00
[000a6130] 000a5df0                  dc.l A_INNERFRAME02
[000a6134]                           dc.b $00
[000a6135]                           dc.b $15
[000a6136]                           dc.b $00
[000a6137]                           dc.b $00
[000a6138]                           dc.b $00
[000a6139]                           dc.b $1c
[000a613a]                           dc.b $00
[000a613b]                           dc.b $05
_09_EDIT_MOUSE:
[000a613c]                           dc.b $00
[000a613d]                           dc.b $0b
[000a613e]                           dc.b $00
[000a613f]                           dc.b $0a
[000a6140]                           dc.b $00
[000a6141]                           dc.b $0a
[000a6142]                           dc.b $00
[000a6143]                           dc.b $1c
[000a6144]                           dc.b $00
[000a6145]                           dc.b $40
[000a6146]                           dc.b $00
[000a6147]                           dc.b $00
[000a6148] 000a5cdb                  dc.l TEXT_10
[000a614c]                           dc.b $00
[000a614d]                           dc.b $01
[000a614e]                           dc.b $00
[000a614f]                           dc.b $01
[000a6150]                           dc.b $00
[000a6151]                           dc.b $06
[000a6152]                           dc.b $00
[000a6153]                           dc.b $01
_10_EDIT_MOUSE:
[000a6154]                           dc.b $00
[000a6155]                           dc.b $09
[000a6156]                           dc.w $ffff
[000a6158]                           dc.w $ffff
[000a615a]                           dc.b $00
[000a615b]                           dc.b $18
[000a615c]                           dc.b $00
[000a615d]                           dc.b $40
[000a615e]                           dc.b $00
[000a615f]                           dc.b $00
[000a6160] 000a5dd0                  dc.l A_ARROWS02
[000a6164]                           dc.b $00
[000a6165]                           dc.b $00
[000a6166]                           dc.b $00
[000a6167]                           dc.b $00
[000a6168]                           dc.b $00
[000a6169]                           dc.b $01
[000a616a]                           dc.b $00
[000a616b]                           dc.b $01
_11_EDIT_MOUSE:
[000a616c]                           dc.b $00
[000a616d]                           dc.b $0f
[000a616e]                           dc.b $00
[000a616f]                           dc.b $0d
[000a6170]                           dc.b $00
[000a6171]                           dc.b $0e
[000a6172]                           dc.b $00
[000a6173]                           dc.b $14
[000a6174]                           dc.b $00
[000a6175]                           dc.b $40
[000a6176]                           dc.b $00
[000a6177]                           dc.b $20
[000a6178]                           dc.b $00
[000a6179]                           dc.b $ff
[000a617a]                           dc.w $1101
[000a617c]                           dc.b $00
[000a617d]                           dc.b $09
[000a617e]                           dc.b $00
[000a617f]                           dc.b $01
[000a6180]                           dc.b $00
[000a6181]                           dc.b $12
[000a6182]                           dc.b $00
[000a6183]                           dc.b $01
_11aEDIT_MOUSE:
[000a6184] 00020d2c                  dc.l edmo_frontcol
[000a6188]                           dc.b $00
[000a6189]                           dc.b $00
[000a618a]                           dc.b $00
[000a618b]                           dc.b $00
[000a618c]                           dc.w $8000
[000a618e]                           dc.w $8856
[000a6190]                           dc.b $00
[000a6191]                           dc.b $00
[000a6192]                           dc.b $00
[000a6193]                           dc.b $00
[000a6194]                           dc.b $00
[000a6195]                           dc.b $00
[000a6196]                           dc.b $00
[000a6197]                           dc.b $00
[000a6198]                           dc.b $00
[000a6199]                           dc.b $00
[000a619a]                           dc.b $00
[000a619b]                           dc.b $00
_13_EDIT_MOUSE:
[000a619c]                           dc.b $00
[000a619d]                           dc.b $0e
[000a619e]                           dc.w $ffff
[000a61a0]                           dc.w $ffff
[000a61a2]                           dc.b $00
[000a61a3]                           dc.b $14
[000a61a4]                           dc.b $00
[000a61a5]                           dc.b $00
[000a61a6]                           dc.b $00
[000a61a7]                           dc.b $00
[000a61a8]                           dc.b $00
[000a61a9]                           dc.b $01
[000a61aa]                           dc.w $1171
[000a61ac]                           dc.b $00
[000a61ad]                           dc.b $10
[000a61ae]                           dc.b $00
[000a61af]                           dc.b $00
[000a61b0]                           dc.b $00
[000a61b1]                           dc.b $02
[000a61b2]                           dc.b $00
[000a61b3]                           dc.b $01
_14_EDIT_MOUSE:
[000a61b4]                           dc.b $00
[000a61b5]                           dc.b $0b
[000a61b6]                           dc.w $ffff
[000a61b8]                           dc.w $ffff
[000a61ba]                           dc.b $00
[000a61bb]                           dc.b $18
[000a61bc]                           dc.b $00
[000a61bd]                           dc.b $00
[000a61be]                           dc.b $00
[000a61bf]                           dc.b $00
[000a61c0] 000a5db0                  dc.l A_3DBUTTON27
[000a61c4]                           dc.b $00
[000a61c5]                           dc.b $00
[000a61c6]                           dc.b $00
[000a61c7]                           dc.b $00
[000a61c8]                           dc.b $00
[000a61c9]                           dc.b $10
[000a61ca]                           dc.b $00
[000a61cb]                           dc.b $01
_15_EDIT_MOUSE:
[000a61cc]                           dc.b $00
[000a61cd]                           dc.b $11
[000a61ce]                           dc.b $00
[000a61cf]                           dc.b $10
[000a61d0]                           dc.b $00
[000a61d1]                           dc.b $10
[000a61d2]                           dc.b $00
[000a61d3]                           dc.b $1c
[000a61d4]                           dc.b $00
[000a61d5]                           dc.b $40
[000a61d6]                           dc.b $00
[000a61d7]                           dc.b $00
[000a61d8] 000a5cd3                  dc.l TEXT_09
[000a61dc]                           dc.b $00
[000a61dd]                           dc.b $01
[000a61de]                           dc.b $00
[000a61df]                           dc.b $03
[000a61e0]                           dc.b $00
[000a61e1]                           dc.b $07
[000a61e2]                           dc.b $00
[000a61e3]                           dc.b $01
_16_EDIT_MOUSE:
[000a61e4]                           dc.b $00
[000a61e5]                           dc.b $0f
[000a61e6]                           dc.w $ffff
[000a61e8]                           dc.w $ffff
[000a61ea]                           dc.b $00
[000a61eb]                           dc.b $18
[000a61ec]                           dc.b $00
[000a61ed]                           dc.b $40
[000a61ee]                           dc.b $00
[000a61ef]                           dc.b $00
[000a61f0] 000a5dd0                  dc.l A_ARROWS02
[000a61f4]                           dc.b $00
[000a61f5]                           dc.b $00
[000a61f6]                           dc.b $00
[000a61f7]                           dc.b $00
[000a61f8]                           dc.b $00
[000a61f9]                           dc.b $01
[000a61fa]                           dc.b $00
[000a61fb]                           dc.b $01
_17_EDIT_MOUSE:
[000a61fc]                           dc.b $00
[000a61fd]                           dc.b $08
[000a61fe]                           dc.b $00
[000a61ff]                           dc.b $13
[000a6200]                           dc.b $00
[000a6201]                           dc.b $14
[000a6202]                           dc.b $00
[000a6203]                           dc.b $14
[000a6204]                           dc.b $00
[000a6205]                           dc.b $40
[000a6206]                           dc.b $00
[000a6207]                           dc.b $20
[000a6208]                           dc.b $00
[000a6209]                           dc.b $ff
[000a620a]                           dc.w $1101
[000a620c]                           dc.b $00
[000a620d]                           dc.b $09
[000a620e]                           dc.b $00
[000a620f]                           dc.b $03
[000a6210]                           dc.b $00
[000a6211]                           dc.b $12
[000a6212]                           dc.b $00
[000a6213]                           dc.b $01
_17aEDIT_MOUSE:
[000a6214] 00020cca                  dc.l edmo_backcol
[000a6218]                           dc.b $00
[000a6219]                           dc.b $00
[000a621a]                           dc.b $00
[000a621b]                           dc.b $00
[000a621c]                           dc.w $8000
[000a621e]                           dc.w $8848
[000a6220]                           dc.b $00
[000a6221]                           dc.b $00
[000a6222]                           dc.b $00
[000a6223]                           dc.b $00
[000a6224]                           dc.b $00
[000a6225]                           dc.b $00
[000a6226]                           dc.b $00
[000a6227]                           dc.b $00
[000a6228]                           dc.b $00
[000a6229]                           dc.b $00
[000a622a]                           dc.b $00
[000a622b]                           dc.b $00
_19_EDIT_MOUSE:
[000a622c]                           dc.b $00
[000a622d]                           dc.b $14
[000a622e]                           dc.w $ffff
[000a6230]                           dc.w $ffff
[000a6232]                           dc.b $00
[000a6233]                           dc.b $14
[000a6234]                           dc.b $00
[000a6235]                           dc.b $00
[000a6236]                           dc.b $00
[000a6237]                           dc.b $00
[000a6238]                           dc.b $00
[000a6239]                           dc.b $01
[000a623a]                           dc.w $1171
[000a623c]                           dc.b $00
[000a623d]                           dc.b $10
[000a623e]                           dc.b $00
[000a623f]                           dc.b $00
[000a6240]                           dc.b $00
[000a6241]                           dc.b $02
[000a6242]                           dc.b $00
[000a6243]                           dc.b $01
_20_EDIT_MOUSE:
[000a6244]                           dc.b $00
[000a6245]                           dc.b $11
[000a6246]                           dc.w $ffff
[000a6248]                           dc.w $ffff
[000a624a]                           dc.b $00
[000a624b]                           dc.b $18
[000a624c]                           dc.b $00
[000a624d]                           dc.b $00
[000a624e]                           dc.b $00
[000a624f]                           dc.b $00
[000a6250] 000a5db0                  dc.l A_3DBUTTON27
[000a6254]                           dc.b $00
[000a6255]                           dc.b $00
[000a6256]                           dc.b $00
[000a6257]                           dc.b $00
[000a6258]                           dc.b $00
[000a6259]                           dc.b $10
[000a625a]                           dc.b $00
[000a625b]                           dc.b $01
_21_EDIT_MOUSE:
[000a625c]                           dc.b $00
[000a625d]                           dc.b $16
[000a625e]                           dc.w $ffff
[000a6260]                           dc.w $ffff
[000a6262]                           dc.b $00
[000a6263]                           dc.b $14
[000a6264]                           dc.b $00
[000a6265]                           dc.b $00
[000a6266]                           dc.b $00
[000a6267]                           dc.b $00
[000a6268]                           dc.b $00
[000a6269]                           dc.b $01
[000a626a]                           dc.w $1171
[000a626c]                           dc.b $00
[000a626d]                           dc.b $02
[000a626e]                           dc.b $00
[000a626f]                           dc.b $01
[000a6270]                           dc.b $00
[000a6271]                           dc.b $02
[000a6272]                           dc.b $00
[000a6273]                           dc.b $01
_22_EDIT_MOUSE:
[000a6274]                           dc.b $00
[000a6275]                           dc.b $1f
[000a6276]                           dc.b $00
[000a6277]                           dc.b $17
[000a6278]                           dc.b $00
[000a6279]                           dc.b $1d
[000a627a]                           dc.b $00
[000a627b]                           dc.b $18
[000a627c]                           dc.b $00
[000a627d]                           dc.b $00
[000a627e]                           dc.b $00
[000a627f]                           dc.b $10
[000a6280] 000a5d70                  dc.l A_3DBUTTON06
[000a6284]                           dc.b $00
[000a6285]                           dc.b $02
[000a6286]                           dc.b $00
[000a6287]                           dc.b $03
[000a6288]                           dc.b $00
[000a6289]                           dc.b $12
[000a628a]                           dc.b $00
[000a628b]                           dc.b $0a
_23_EDIT_MOUSE:
[000a628c]                           dc.b $00
[000a628d]                           dc.b $1a
[000a628e]                           dc.b $00
[000a628f]                           dc.b $19
[000a6290]                           dc.b $00
[000a6291]                           dc.b $19
[000a6292]                           dc.b $00
[000a6293]                           dc.b $14
[000a6294]                           dc.b $00
[000a6295]                           dc.b $40
[000a6296]                           dc.b $00
[000a6297]                           dc.b $00
[000a6298]                           dc.w $5601
[000a629a]                           dc.w $1101
[000a629c]                           dc.b $00
[000a629d]                           dc.b $02
[000a629e]                           dc.b $00
[000a629f]                           dc.b $00
[000a62a0]                           dc.b $00
[000a62a1]                           dc.b $10
[000a62a2]                           dc.b $00
[000a62a3]                           dc.b $01
_23aEDIT_MOUSE:
[000a62a4] 00020e68                  dc.l edmo_x
[000a62a8]                           dc.b $00
[000a62a9]                           dc.b $00
[000a62aa]                           dc.b $00
[000a62ab]                           dc.b $00
[000a62ac]                           dc.w $8000
[000a62ae]                           dc.b $00
[000a62af]                           dc.b $00
[000a62b0]                           dc.b $00
[000a62b1]                           dc.b $00
[000a62b2]                           dc.b $00
[000a62b3]                           dc.b $00
[000a62b4]                           dc.b $00
[000a62b5]                           dc.b $00
[000a62b6]                           dc.b $00
[000a62b7]                           dc.b $00
[000a62b8]                           dc.b $00
[000a62b9]                           dc.b $00
[000a62ba]                           dc.b $00
[000a62bb]                           dc.b $00
_25_EDIT_MOUSE:
[000a62bc]                           dc.b $00
[000a62bd]                           dc.b $17
[000a62be]                           dc.w $ffff
[000a62c0]                           dc.w $ffff
[000a62c2]                           dc.b $00
[000a62c3]                           dc.b $14
[000a62c4]                           dc.b $00
[000a62c5]                           dc.b $00
[000a62c6]                           dc.b $00
[000a62c7]                           dc.b $00
[000a62c8]                           dc.w $5601
[000a62ca]                           dc.w $1141
[000a62cc]                           dc.b $00
[000a62cd]                           dc.b $07
[000a62ce]                           dc.b $00
[000a62cf]                           dc.b $00
[000a62d0]                           dc.b $00
[000a62d1]                           dc.b $02
[000a62d2]                           dc.b $00
[000a62d3]                           dc.b $01
_26_EDIT_MOUSE:
[000a62d4]                           dc.b $00
[000a62d5]                           dc.b $1d
[000a62d6]                           dc.b $00
[000a62d7]                           dc.b $1c
[000a62d8]                           dc.b $00
[000a62d9]                           dc.b $1c
[000a62da]                           dc.b $00
[000a62db]                           dc.b $14
[000a62dc]                           dc.b $00
[000a62dd]                           dc.b $40
[000a62de]                           dc.b $00
[000a62df]                           dc.b $00
[000a62e0]                           dc.b $00
[000a62e1]                           dc.b $01
[000a62e2]                           dc.w $1101
[000a62e4]                           dc.b $00
[000a62e5]                           dc.b $00
[000a62e6]                           dc.b $00
[000a62e7]                           dc.b $01
[000a62e8]                           dc.b $00
[000a62e9]                           dc.b $02
[000a62ea]                           dc.b $00
[000a62eb]                           dc.b $09
_26aEDIT_MOUSE:
[000a62ec] 00020ee8                  dc.l edmo_y
[000a62f0]                           dc.b $00
[000a62f1]                           dc.b $00
[000a62f2]                           dc.b $00
[000a62f3]                           dc.b $00
[000a62f4]                           dc.w $8000
[000a62f6]                           dc.b $00
[000a62f7]                           dc.b $00
[000a62f8]                           dc.b $00
[000a62f9]                           dc.b $00
[000a62fa]                           dc.b $00
[000a62fb]                           dc.b $00
[000a62fc]                           dc.b $00
[000a62fd]                           dc.b $00
[000a62fe]                           dc.b $00
[000a62ff]                           dc.b $00
[000a6300]                           dc.b $00
[000a6301]                           dc.b $00
[000a6302]                           dc.b $00
[000a6303]                           dc.b $00
_28_EDIT_MOUSE:
[000a6304]                           dc.b $00
[000a6305]                           dc.b $1a
[000a6306]                           dc.w $ffff
[000a6308]                           dc.w $ffff
[000a630a]                           dc.b $00
[000a630b]                           dc.b $14
[000a630c]                           dc.b $00
[000a630d]                           dc.b $00
[000a630e]                           dc.b $00
[000a630f]                           dc.b $00
[000a6310]                           dc.w $5601
[000a6312]                           dc.w $1141
[000a6314]                           dc.b $00
[000a6315]                           dc.b $00
[000a6316]                           dc.b $00
[000a6317]                           dc.b $02
[000a6318]                           dc.b $00
[000a6319]                           dc.b $02
[000a631a]                           dc.b $00
[000a631b]                           dc.b $01
_29_EDIT_MOUSE:
[000a631c]                           dc.b $00
[000a631d]                           dc.b $16
[000a631e]                           dc.w $ffff
[000a6320]                           dc.w $ffff
[000a6322]                           dc.b $00
[000a6323]                           dc.b $18
[000a6324]                           dc.b $00
[000a6325]                           dc.b $40
[000a6326]                           dc.b $00
[000a6327]                           dc.b $00
[000a6328] 000a5e50                  dc.l USER_004
[000a632c]                           dc.b $00
[000a632d]                           dc.b $02
[000a632e]                           dc.b $00
[000a632f]                           dc.b $01
[000a6330]                           dc.b $00
[000a6331]                           dc.b $10
[000a6332]                           dc.b $00
[000a6333]                           dc.b $09
_29aEDIT_MOUSE:
[000a6334] 00020f66                  dc.l edmo_set
[000a6338]                           dc.b $00
[000a6339]                           dc.b $00
[000a633a]                           dc.b $00
[000a633b]                           dc.b $00
[000a633c]                           dc.w $8000
[000a633e]                           dc.b $00
[000a633f]                           dc.b $00
[000a6340]                           dc.b $00
[000a6341]                           dc.b $00
[000a6342]                           dc.b $00
[000a6343]                           dc.b $00
[000a6344]                           dc.b $00
[000a6345]                           dc.b $00
[000a6346]                           dc.b $00
[000a6347]                           dc.b $00
[000a6348]                           dc.b $00
[000a6349]                           dc.b $08
[000a634a]                           dc.b $00
[000a634b]                           dc.b $00
_31_EDIT_MOUSE:
[000a634c]                           dc.b $00
[000a634d]                           dc.b $24
[000a634e]                           dc.b $00
[000a634f]                           dc.b $20
[000a6350]                           dc.b $00
[000a6351]                           dc.b $22
[000a6352]                           dc.b $00
[000a6353]                           dc.b $18
[000a6354]                           dc.b $00
[000a6355]                           dc.b $40
[000a6356]                           dc.b $00
[000a6357]                           dc.b $00
[000a6358] 000a5e30                  dc.l A_INNERFRAME04
[000a635c]                           dc.b $00
[000a635d]                           dc.b $15
[000a635e]                           dc.b $00
[000a635f]                           dc.b $05
[000a6360]                           dc.b $00
[000a6361]                           dc.b $1c
[000a6362]                           dc.b $00
[000a6363]                           dc.b $05
_32_EDIT_MOUSE:
[000a6364]                           dc.b $00
[000a6365]                           dc.b $22
[000a6366]                           dc.b $00
[000a6367]                           dc.b $21
[000a6368]                           dc.b $00
[000a6369]                           dc.b $21
[000a636a]                           dc.b $00
[000a636b]                           dc.b $18
[000a636c]                           dc.b $00
[000a636d]                           dc.b $00
[000a636e]                           dc.b $00
[000a636f]                           dc.b $10
[000a6370] 000a5d50                  dc.l A_3DBUTTON05
[000a6374]                           dc.b $00
[000a6375]                           dc.b $01
[000a6376]                           dc.b $00
[000a6377]                           dc.b $01
[000a6378]                           dc.b $00
[000a6379]                           dc.b $08
[000a637a]                           dc.b $00
[000a637b]                           dc.b $03
_33_EDIT_MOUSE:
[000a637c]                           dc.b $00
[000a637d]                           dc.b $20
[000a637e]                           dc.w $ffff
[000a6380]                           dc.w $ffff
[000a6382]                           dc.b $00
[000a6383]                           dc.b $1f
[000a6384]                           dc.b $00
[000a6385]                           dc.b $00
[000a6386]                           dc.b $00
[000a6387]                           dc.b $00
[000a6388] 000a603e                  dc.l MOUSEDUMMY
[000a638c]                           dc.b $00
[000a638d]                           dc.b $03
[000a638e]                           dc.b $00
[000a638f]                           dc.b $01
[000a6390]                           dc.b $00
[000a6391]                           dc.b $02
[000a6392]                           dc.b $00
[000a6393]                           dc.b $01
_34_EDIT_MOUSE:
[000a6394]                           dc.b $00
[000a6395]                           dc.b $1f
[000a6396]                           dc.w $ffff
[000a6398]                           dc.w $ffff
[000a639a]                           dc.b $00
[000a639b]                           dc.b $18
[000a639c]                           dc.b $00
[000a639d]                           dc.b $40
[000a639e]                           dc.b $00
[000a639f]                           dc.b $00
[000a63a0] 000a5d30                  dc.l A_3DBUTTON04
[000a63a4]                           dc.b $00
[000a63a5]                           dc.b $0b
[000a63a6]                           dc.b $00
[000a63a7]                           dc.b $01
[000a63a8]                           dc.b $00
[000a63a9]                           dc.b $0f
[000a63aa]                           dc.b $00
[000a63ab]                           dc.b $02
_34aEDIT_MOUSE:
[000a63ac] 00020e22                  dc.l edmo_next
[000a63b0]                           dc.b $00
[000a63b1]                           dc.b $00
[000a63b2]                           dc.b $00
[000a63b3]                           dc.b $00
[000a63b4]                           dc.w $8000
[000a63b6]                           dc.b $00
[000a63b7]                           dc.b $00
[000a63b8]                           dc.b $00
[000a63b9]                           dc.b $00
[000a63ba]                           dc.b $00
[000a63bb]                           dc.b $00
[000a63bc]                           dc.b $00
[000a63bd]                           dc.b $00
[000a63be]                           dc.b $00
[000a63bf]                           dc.b $00
[000a63c0]                           dc.b $00
[000a63c1]                           dc.b $00
[000a63c2]                           dc.b $00
[000a63c3]                           dc.b $00
_36_EDIT_MOUSE:
[000a63c4]                           dc.b $00
[000a63c5]                           dc.b $26
[000a63c6]                           dc.w $ffff
[000a63c8]                           dc.w $ffff
[000a63ca]                           dc.b $00
[000a63cb]                           dc.b $18
[000a63cc]                           dc.w $4007
[000a63ce]                           dc.b $00
[000a63cf]                           dc.b $10
[000a63d0] 000a5d10                  dc.l A_3DBUTTON03
[000a63d4]                           dc.b $00
[000a63d5]                           dc.b $16
[000a63d6]                           dc.b $00
[000a63d7]                           dc.b $0a
[000a63d8]                           dc.b $00
[000a63d9]                           dc.b $0c
[000a63da]                           dc.b $00
[000a63db]                           dc.b $02
_36aEDIT_MOUSE:
[000a63dc] 0002117e                  dc.l edmo_ok
[000a63e0]                           dc.b $00
[000a63e1]                           dc.b $00
[000a63e2]                           dc.b $00
[000a63e3]                           dc.b $00
[000a63e4]                           dc.w $8000
[000a63e6]                           dc.w $884f
[000a63e8]                           dc.b $00
[000a63e9]                           dc.b $00
[000a63ea]                           dc.b $00
[000a63eb]                           dc.b $00
[000a63ec]                           dc.b $00
[000a63ed]                           dc.b $00
[000a63ee]                           dc.b $00
[000a63ef]                           dc.b $00
[000a63f0]                           dc.b $00
[000a63f1]                           dc.b $00
[000a63f2]                           dc.b $00
[000a63f3]                           dc.b $00
_38_EDIT_MOUSE:
[000a63f4]                           dc.b $00
[000a63f5]                           dc.b $00
[000a63f6]                           dc.w $ffff
[000a63f8]                           dc.w $ffff
[000a63fa]                           dc.b $00
[000a63fb]                           dc.b $18
[000a63fc]                           dc.w $4005
[000a63fe]                           dc.b $00
[000a63ff]                           dc.b $10
[000a6400] 000a5cf0                  dc.l A_3DBUTTON01
[000a6404]                           dc.b $00
[000a6405]                           dc.b $24
[000a6406]                           dc.b $00
[000a6407]                           dc.b $0a
[000a6408]                           dc.b $00
[000a6409]                           dc.b $0c
[000a640a]                           dc.b $00
[000a640b]                           dc.b $02
_38aEDIT_MOUSE:
[000a640c] 0002116c                  dc.l edmo_abort
[000a6410]                           dc.b $00
[000a6411]                           dc.b $00
[000a6412]                           dc.b $00
[000a6413]                           dc.b $00
[000a6414]                           dc.w $8020
[000a6416]                           dc.w $8841
[000a6418]                           dc.b $00
[000a6419]                           dc.b $00
[000a641a]                           dc.b $00
[000a641b]                           dc.b $00
[000a641c]                           dc.b $00
[000a641d]                           dc.b $00
[000a641e]                           dc.b $00
[000a641f]                           dc.b $00
[000a6420]                           dc.b $00
[000a6421]                           dc.b $00
[000a6422]                           dc.b $00
[000a6423]                           dc.b $00
WI_MOUSE:
[000a6424]                           dc.b $00
[000a6425]                           dc.b $00
[000a6426]                           dc.b $00
[000a6427]                           dc.b $00
[000a6428] 0002146c                  dc.l mo_service
[000a642c] 000213d0                  dc.l mo_make
[000a6430] 0004f69e                  dc.l Awi_open
[000a6434] 0004e610                  dc.l Awi_init
[000a6438] 000a6064                  dc.l EDIT_MOUSE
[000a643c]                           dc.b $00
[000a643d]                           dc.b $00
[000a643e]                           dc.b $00
[000a643f]                           dc.b $00
[000a6440]                           dc.b $00
[000a6441]                           dc.b $00
[000a6442]                           dc.b $00
[000a6443]                           dc.b $00
[000a6444]                           dc.w $ffff
[000a6446]                           dc.w $601f
[000a6448]                           dc.b $00
[000a6449]                           dc.b $00
[000a644a]                           dc.b $00
[000a644b]                           dc.b $00
[000a644c]                           dc.b $00
[000a644d]                           dc.b $63
[000a644e]                           dc.b $00
[000a644f]                           dc.b $63
[000a6450]                           dc.b $00
[000a6451]                           dc.b $00
[000a6452]                           dc.b $00
[000a6453]                           dc.b $00
[000a6454]                           dc.b $00
[000a6455]                           dc.b $00
[000a6456]                           dc.b $00
[000a6457]                           dc.b $00
[000a6458]                           dc.b $00
[000a6459]                           dc.b $00
[000a645a]                           dc.b $00
[000a645b]                           dc.b $00
[000a645c]                           dc.b $00
[000a645d]                           dc.b $00
[000a645e]                           dc.b $00
[000a645f]                           dc.b $00
[000a6460]                           dc.w $ffff
[000a6462]                           dc.w $ffff
[000a6464]                           dc.w $ffff
[000a6466]                           dc.w $ffff
[000a6468]                           dc.b $00
[000a6469]                           dc.b $00
[000a646a]                           dc.b $00
[000a646b]                           dc.b $00
[000a646c]                           dc.w $fcf8
[000a646e] 000a5cbb                  dc.l TEXT_04
[000a6472] 000a5ca2                  dc.l TEXT_002
[000a6476]                           dc.w $2710
[000a6478]                           dc.w $0100
[000a647a]                           dc.b $00
[000a647b]                           dc.b $00
[000a647c]                           dc.w $ffff
[000a647e] 000a5fd8                  dc.l IC_MOUSE
[000a6482]                           dc.b $00
[000a6483]                           dc.b $00
[000a6484]                           dc.b $00
[000a6485]                           dc.b $00
[000a6486] 0005ef2c                  dc.l Awi_keys
[000a648a] 0004b600                  dc.l Awi_obchange
[000a648e] 0004b8cc                  dc.l Awi_redraw
[000a6492] 00050454                  dc.l Awi_topped
[000a6496] 0005013e                  dc.l Awi_closed
[000a649a] 00050496                  dc.l Awi_fulled
[000a649e] 0004bcc8                  dc.l Awi_arrowed
[000a64a2] 0004beea                  dc.l Awi_hslid
[000a64a6] 0004bf56                  dc.l Awi_vslid
[000a64aa] 000506ca                  dc.l Awi_sized
[000a64ae] 000507bc                  dc.l Awi_moved
[000a64b2] 00050f9c                  dc.l Awi_iconify
[000a64b6] 0005117c                  dc.l Awi_uniconify
[000a64ba] 00052328                  dc.l Awi_gemscript
[000a64be]                           dc.b $00
[000a64bf]                           dc.b $00
[000a64c0]                           dc.b $00
[000a64c1]                           dc.b $00
[000a64c2]                           dc.b $00
[000a64c3]                           dc.b $00
[000a64c4]                           dc.b $00
[000a64c5]                           dc.b $00
blackim:
[000a64c6]                           dc.b $00
[000a64c7]                           dc.b $00
[000a64c8]                           dc.w $fe00
[000a64ca]                           dc.w $fe00
[000a64cc]                           dc.w $fe00
[000a64ce]                           dc.w $fe00
[000a64d0]                           dc.w $fe00
[000a64d2]                           dc.w $fe00
[000a64d4]                           dc.w $fe00
black:
[000a64d6] 000a64c6                  dc.l blackim
[000a64da]                           dc.b $00
[000a64db]                           dc.b $08
[000a64dc]                           dc.b $00
[000a64dd]                           dc.b $08
[000a64de]                           dc.b $00
[000a64df]                           dc.b $01
[000a64e0]                           dc.b $00
[000a64e1]                           dc.b $01
[000a64e2]                           dc.b $00
[000a64e3]                           dc.b $01
[000a64e4]                           dc.b $00
[000a64e5]                           dc.b $00
[000a64e6]                           dc.b $00
[000a64e7]                           dc.b $00
[000a64e8]                           dc.b $00
[000a64e9]                           dc.b $00
whiteim:
[000a64ea]                           dc.b $00
[000a64eb]                           dc.b $00
[000a64ec]                           dc.b $00
[000a64ed]                           dc.b $00
[000a64ee]                           dc.b $00
[000a64ef]                           dc.b $00
[000a64f0]                           dc.b $00
[000a64f1]                           dc.b $00
[000a64f2]                           dc.b $00
[000a64f3]                           dc.b $00
[000a64f4]                           dc.b $00
[000a64f5]                           dc.b $00
[000a64f6]                           dc.b $00
[000a64f7]                           dc.b $00
[000a64f8]                           dc.b $00
[000a64f9]                           dc.b $00
white:
[000a64fa] 000a64ea                  dc.l whiteim
[000a64fe]                           dc.b $00
[000a64ff]                           dc.b $08
[000a6500]                           dc.b $00
[000a6501]                           dc.b $08
[000a6502]                           dc.b $00
[000a6503]                           dc.b $01
[000a6504]                           dc.b $00
[000a6505]                           dc.b $01
[000a6506]                           dc.b $00
[000a6507]                           dc.b $01
[000a6508]                           dc.b $00
[000a6509]                           dc.b $00
[000a650a]                           dc.b $00
[000a650b]                           dc.b $00
[000a650c]                           dc.b $00
[000a650d]                           dc.b $00
invisiim:
[000a650e]                           dc.b $00
[000a650f]                           dc.b $00
[000a6510]                           dc.w $aa00
[000a6512]                           dc.w $5400
[000a6514]                           dc.w $aa00
[000a6516]                           dc.w $5400
[000a6518]                           dc.w $aa00
[000a651a]                           dc.w $5400
[000a651c]                           dc.w $aa00
invisible:
[000a651e] 000a650e                  dc.l invisiim
[000a6522]                           dc.b $00
[000a6523]                           dc.b $08
[000a6524]                           dc.b $00
[000a6525]                           dc.b $08
[000a6526]                           dc.b $00
[000a6527]                           dc.b $01
[000a6528]                           dc.b $00
[000a6529]                           dc.b $01
[000a652a]                           dc.b $00
[000a652b]                           dc.b $01
[000a652c]                           dc.b $00
[000a652d]                           dc.b $00
[000a652e]                           dc.b $00
[000a652f]                           dc.b $00
[000a6530]                           dc.b $00
[000a6531]                           dc.b $00
color:
[000a6532]                           dc.b $00
[000a6533]                           dc.b $01
[000a6534]                           dc.b $00
[000a6535]                           dc.b $00
