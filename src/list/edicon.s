
add_icon:
[00032e34] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032e38] 2448                      movea.l    a0,a2
[00032e3a] 2849                      movea.l    a1,a4
[00032e3c] 266a 002c                 movea.l    44(a2),a3
[00032e40] 006a 0001 0006            ori.w      #$0001,6(a2)
[00032e46] 3039 0007 8250            move.w     refimages,d0
[00032e4c] 6728                      beq.s      add_icon_1
[00032e4e] 7206                      moveq.l    #6,d1
[00032e50] 2279 0010 1f12            movea.l    ACSblk,a1
[00032e56] c269 0266                 and.w      614(a1),d1
[00032e5a] 5d41                      subq.w     #6,d1
[00032e5c] 6718                      beq.s      add_icon_1
[00032e5e] 43ec 0016                 lea.l      22(a4),a1
[00032e62] 204b                      movea.l    a3,a0
[00032e64] 4eb9 0003 1a5c            jsr        find_entry
[00032e6a] b9c8                      cmpa.l     a0,a4
[00032e6c] 6608                      bne.s      add_icon_1
[00032e6e] 526c 0036                 addq.w     #1,54(a4)
[00032e72] 204c                      movea.l    a4,a0
[00032e74] 6044                      bra.s      add_icon_2
add_icon_1:
[00032e76] 7004                      moveq.l    #4,d0
[00032e78] 204b                      movea.l    a3,a0
[00032e7a] 4eb9 0001 62aa            jsr        objextent
[00032e80] 4a40                      tst.w      d0
[00032e82] 6610                      bne.s      add_icon_3
[00032e84] 224c                      movea.l    a4,a1
[00032e86] 204a                      movea.l    a2,a0
[00032e88] 4eb9 0003 2ec0            jsr        copy_icon
[00032e8e] 2a48                      movea.l    a0,a5
[00032e90] 200d                      move.l     a5,d0
[00032e92] 6604                      bne.s      add_icon_4
add_icon_3:
[00032e94] 91c8                      suba.l     a0,a0
[00032e96] 6022                      bra.s      add_icon_2
add_icon_4:
[00032e98] 2f39 000c 1f24            move.l     $000C1F24,-(a7)
[00032e9e] 486c 0016                 pea.l      22(a4)
[00032ea2] 224d                      movea.l    a5,a1
[00032ea4] 204a                      movea.l    a2,a0
[00032ea6] 4eb9 0001 6448            jsr        objname
[00032eac] 504f                      addq.w     #8,a7
[00032eae] 224d                      movea.l    a5,a1
[00032eb0] 204b                      movea.l    a3,a0
[00032eb2] 4eb9 0003 1a94            jsr        add_entry
[00032eb8] 204d                      movea.l    a5,a0
add_icon_2:
[00032eba] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032ebe] 4e75                      rts

copy_icon:
[00032ec0] 48e7 003e                 movem.l    a2-a6,-(a7)
[00032ec4] 2648                      movea.l    a0,a3
[00032ec6] 2449                      movea.l    a1,a2
[00032ec8] 202a 000e                 move.l     14(a2),d0
[00032ecc] 4eb9 0001 6230            jsr        objmalloc
[00032ed2] 2848                      movea.l    a0,a4
[00032ed4] 200c                      move.l     a4,d0
[00032ed6] 6606                      bne.s      copy_icon_1
[00032ed8] 91c8                      suba.l     a0,a0
[00032eda] 6000 0108                 bra        copy_icon_2
copy_icon_1:
[00032ede] 296a 000e 000e            move.l     14(a2),14(a4)
[00032ee4] 2a6a 0004                 movea.l    4(a2),a5
[00032ee8] 2c6c 0004                 movea.l    4(a4),a6
[00032eec] 202a 000e                 move.l     14(a2),d0
[00032ef0] 224d                      movea.l    a5,a1
[00032ef2] 204e                      movea.l    a6,a0
[00032ef4] 4eb9 0007 6f44            jsr        memcpy
[00032efa] 226d 0008                 movea.l    8(a5),a1
[00032efe] 204b                      movea.l    a3,a0
[00032f00] 4eb9 0003 461e            jsr        add_string
[00032f06] 2d48 0008                 move.l     a0,8(a6)
[00032f0a] 42ae 0022                 clr.l      34(a6)
[00032f0e] 42ae 0028                 clr.l      40(a6)
[00032f12] 42ae 002c                 clr.l      44(a6)
[00032f16] 42ae 0030                 clr.l      48(a6)
[00032f1a] 42ae 0034                 clr.l      52(a6)
[00032f1e] 3d6d 0026 0026            move.w     38(a5),38(a6)
[00032f24] 42ae 0038                 clr.l      56(a6)
[00032f28] 42ae 003e                 clr.l      62(a6)
[00032f2c] 42ae 0042                 clr.l      66(a6)
[00032f30] 42ae 0046                 clr.l      70(a6)
[00032f34] 42ae 004a                 clr.l      74(a6)
[00032f38] 3d6d 003c 003c            move.w     60(a5),60(a6)
[00032f3e] 42ae 004e                 clr.l      78(a6)
[00032f42] 202d 0028                 move.l     40(a5),d0
[00032f46] 670e                      beq.s      copy_icon_3
[00032f48] 2240                      movea.l    d0,a1
[00032f4a] 204b                      movea.l    a3,a0
[00032f4c] 4eb9 0003 29b4            jsr        add_data
[00032f52] 2d48 0028                 move.l     a0,40(a6)
copy_icon_3:
[00032f56] 202d 002c                 move.l     44(a5),d0
[00032f5a] 670e                      beq.s      copy_icon_4
[00032f5c] 2240                      movea.l    d0,a1
[00032f5e] 204b                      movea.l    a3,a0
[00032f60] 4eb9 0003 29b4            jsr        add_data
[00032f66] 2d48 002c                 move.l     a0,44(a6)
copy_icon_4:
[00032f6a] 202d 0030                 move.l     48(a5),d0
[00032f6e] 670e                      beq.s      copy_icon_5
[00032f70] 2240                      movea.l    d0,a1
[00032f72] 204b                      movea.l    a3,a0
[00032f74] 4eb9 0003 29b4            jsr        add_data
[00032f7a] 2d48 0030                 move.l     a0,48(a6)
copy_icon_5:
[00032f7e] 202d 0034                 move.l     52(a5),d0
[00032f82] 670e                      beq.s      copy_icon_6
[00032f84] 2240                      movea.l    d0,a1
[00032f86] 204b                      movea.l    a3,a0
[00032f88] 4eb9 0003 29b4            jsr        add_data
[00032f8e] 2d48 0034                 move.l     a0,52(a6)
copy_icon_6:
[00032f92] 202d 003e                 move.l     62(a5),d0
[00032f96] 670e                      beq.s      copy_icon_7
[00032f98] 2240                      movea.l    d0,a1
[00032f9a] 204b                      movea.l    a3,a0
[00032f9c] 4eb9 0003 29b4            jsr        add_data
[00032fa2] 2d48 003e                 move.l     a0,62(a6)
copy_icon_7:
[00032fa6] 202d 0042                 move.l     66(a5),d0
[00032faa] 670e                      beq.s      copy_icon_8
[00032fac] 2240                      movea.l    d0,a1
[00032fae] 204b                      movea.l    a3,a0
[00032fb0] 4eb9 0003 29b4            jsr        add_data
[00032fb6] 2d48 0042                 move.l     a0,66(a6)
copy_icon_8:
[00032fba] 202d 0046                 move.l     70(a5),d0
[00032fbe] 670e                      beq.s      copy_icon_9
[00032fc0] 2240                      movea.l    d0,a1
[00032fc2] 204b                      movea.l    a3,a0
[00032fc4] 4eb9 0003 29b4            jsr        add_data
[00032fca] 2d48 0046                 move.l     a0,70(a6)
copy_icon_9:
[00032fce] 202d 004a                 move.l     74(a5),d0
[00032fd2] 670e                      beq.s      copy_icon_10
[00032fd4] 2240                      movea.l    d0,a1
[00032fd6] 204b                      movea.l    a3,a0
[00032fd8] 4eb9 0003 29b4            jsr        add_data
[00032fde] 2d48 004a                 move.l     a0,74(a6)
copy_icon_10:
[00032fe2] 204c                      movea.l    a4,a0
copy_icon_2:
[00032fe4] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00032fe8] 4e75                      rts

dup_icon:
[00032fea] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00032fee] 514f                      subq.w     #8,a7
[00032ff0] 2f48 0004                 move.l     a0,4(a7)
[00032ff4] 2e89                      move.l     a1,(a7)
[00032ff6] 47f9 000c 1f3e            lea.l      my_icon,a3
[00032ffc] 7026                      moveq.l    #38,d0
[00032ffe] 2257                      movea.l    (a7),a1
[00033000] 204b                      movea.l    a3,a0
[00033002] 4eb9 0007 6f44            jsr        memcpy
[00033008] 2057                      movea.l    (a7),a0
[0003300a] 2268 0008                 movea.l    8(a0),a1
[0003300e] 206f 0004                 movea.l    4(a7),a0
[00033012] 4eb9 0003 483c            jsr        dup_string
[00033018] 5368 0036                 subq.w     #1,54(a0)
[0003301c] 2748 0008                 move.l     a0,8(a3)
[00033020] 2257                      movea.l    (a7),a1
[00033022] 3629 0016                 move.w     22(a1),d3
[00033026] e643                      asr.w      #3,d3
[00033028] c7e9 0018                 muls.w     24(a1),d3
[0003302c] 48c3                      ext.l      d3
[0003302e] 2003                      move.l     d3,d0
[00033030] d080                      add.l      d0,d0
[00033032] d0bc 0000 0052            add.l      #$00000052,d0
[00033038] 2740 005c                 move.l     d0,92(a3)
[0003303c] 2740 0060                 move.l     d0,96(a3)
[00033040] 42ab 0022                 clr.l      34(a3)
[00033044] 42ab 0028                 clr.l      40(a3)
[00033048] 42ab 002c                 clr.l      44(a3)
[0003304c] 42ab 0030                 clr.l      48(a3)
[00033050] 42ab 0034                 clr.l      52(a3)
[00033054] 426b 0026                 clr.w      38(a3)
[00033058] 42ab 0038                 clr.l      56(a3)
[0003305c] 42ab 003e                 clr.l      62(a3)
[00033060] 42ab 0042                 clr.l      66(a3)
[00033064] 42ab 0046                 clr.l      70(a3)
[00033068] 42ab 004a                 clr.l      74(a3)
[0003306c] 426b 003c                 clr.w      60(a3)
[00033070] 42ab 004e                 clr.l      78(a3)
[00033074] 2a69 0022                 movea.l    34(a1),a5
[00033078] 200d                      move.l     a5,d0
[0003307a] 6700 0150                 beq        dup_icon_1
[0003307e] 0c55 0004                 cmpi.w     #$0004,(a5)
[00033082] 6600 00a0                 bne        dup_icon_2
[00033086] 377c 0004 0026            move.w     #$0004,38(a3)
[0003308c] 286d 0002                 movea.l    2(a5),a4
[00033090] 200c                      move.l     a4,d0
[00033092] 6724                      beq.s      dup_icon_3
[00033094] 2003                      move.l     d3,d0
[00033096] e588                      lsl.l      #2,d0
[00033098] 5c80                      addq.l     #6,d0
[0003309a] 43ec fffa                 lea.l      -6(a4),a1
[0003309e] 206f 0004                 movea.l    4(a7),a0
[000330a2] 4eb9 0003 2a70            jsr        dup_data
[000330a8] 2448                      movea.l    a0,a2
[000330aa] 2748 0028                 move.l     a0,40(a3)
[000330ae] 536a 0036                 subq.w     #1,54(a2)
[000330b2] 286a 0004                 movea.l    4(a2),a4
[000330b6] 4254                      clr.w      (a4)
dup_icon_3:
[000330b8] 202d 0006                 move.l     6(a5),d0
[000330bc] 6718                      beq.s      dup_icon_4
[000330be] 2240                      movea.l    d0,a1
[000330c0] 206f 0004                 movea.l    4(a7),a0
[000330c4] 2003                      move.l     d3,d0
[000330c6] 4eb9 0003 2a70            jsr        dup_data
[000330cc] 2448                      movea.l    a0,a2
[000330ce] 2748 002c                 move.l     a0,44(a3)
[000330d2] 536a 0036                 subq.w     #1,54(a2)
dup_icon_4:
[000330d6] 286d 000a                 movea.l    10(a5),a4
[000330da] 200c                      move.l     a4,d0
[000330dc] 6724                      beq.s      dup_icon_5
[000330de] 2003                      move.l     d3,d0
[000330e0] e588                      lsl.l      #2,d0
[000330e2] 5c80                      addq.l     #6,d0
[000330e4] 43ec fffa                 lea.l      -6(a4),a1
[000330e8] 206f 0004                 movea.l    4(a7),a0
[000330ec] 4eb9 0003 2a70            jsr        dup_data
[000330f2] 2448                      movea.l    a0,a2
[000330f4] 2748 0030                 move.l     a0,48(a3)
[000330f8] 536a 0036                 subq.w     #1,54(a2)
[000330fc] 286a 0004                 movea.l    4(a2),a4
[00033100] 4254                      clr.w      (a4)
dup_icon_5:
[00033102] 202d 000e                 move.l     14(a5),d0
[00033106] 6718                      beq.s      dup_icon_6
[00033108] 2240                      movea.l    d0,a1
[0003310a] 206f 0004                 movea.l    4(a7),a0
[0003310e] 2003                      move.l     d3,d0
[00033110] 4eb9 0003 2a70            jsr        dup_data
[00033116] 2448                      movea.l    a0,a2
[00033118] 2748 0034                 move.l     a0,52(a3)
[0003311c] 536a 0036                 subq.w     #1,54(a2)
dup_icon_6:
[00033120] 2a6d 0012                 movea.l    18(a5),a5
dup_icon_2:
[00033124] 200d                      move.l     a5,d0
[00033126] 6700 00a4                 beq        dup_icon_1
[0003312a] 0c55 0008                 cmpi.w     #$0008,(a5)
[0003312e] 6600 009c                 bne        dup_icon_1
[00033132] 377c 0008 003c            move.w     #$0008,60(a3)
[00033138] 286d 0002                 movea.l    2(a5),a4
[0003313c] 220c                      move.l     a4,d1
[0003313e] 6724                      beq.s      dup_icon_7
[00033140] 2003                      move.l     d3,d0
[00033142] e788                      lsl.l      #3,d0
[00033144] 5c80                      addq.l     #6,d0
[00033146] 43ec fffa                 lea.l      -6(a4),a1
[0003314a] 206f 0004                 movea.l    4(a7),a0
[0003314e] 4eb9 0003 2a70            jsr        dup_data
[00033154] 2448                      movea.l    a0,a2
[00033156] 2748 003e                 move.l     a0,62(a3)
[0003315a] 536a 0036                 subq.w     #1,54(a2)
[0003315e] 286a 0004                 movea.l    4(a2),a4
[00033162] 4254                      clr.w      (a4)
dup_icon_7:
[00033164] 202d 0006                 move.l     6(a5),d0
[00033168] 6718                      beq.s      dup_icon_8
[0003316a] 2240                      movea.l    d0,a1
[0003316c] 206f 0004                 movea.l    4(a7),a0
[00033170] 2003                      move.l     d3,d0
[00033172] 4eb9 0003 2a70            jsr        dup_data
[00033178] 2448                      movea.l    a0,a2
[0003317a] 2748 0042                 move.l     a0,66(a3)
[0003317e] 536a 0036                 subq.w     #1,54(a2)
dup_icon_8:
[00033182] 286d 000a                 movea.l    10(a5),a4
[00033186] 200c                      move.l     a4,d0
[00033188] 6724                      beq.s      dup_icon_9
[0003318a] 2003                      move.l     d3,d0
[0003318c] e788                      lsl.l      #3,d0
[0003318e] 5c80                      addq.l     #6,d0
[00033190] 43ec fffa                 lea.l      -6(a4),a1
[00033194] 206f 0004                 movea.l    4(a7),a0
[00033198] 4eb9 0003 2a70            jsr        dup_data
[0003319e] 2448                      movea.l    a0,a2
[000331a0] 2748 0046                 move.l     a0,70(a3)
[000331a4] 536a 0036                 subq.w     #1,54(a2)
[000331a8] 286a 0004                 movea.l    4(a2),a4
[000331ac] 4254                      clr.w      (a4)
dup_icon_9:
[000331ae] 202d 000e                 move.l     14(a5),d0
[000331b2] 6718                      beq.s      dup_icon_1
[000331b4] 2240                      movea.l    d0,a1
[000331b6] 206f 0004                 movea.l    4(a7),a0
[000331ba] 2003                      move.l     d3,d0
[000331bc] 4eb9 0003 2a70            jsr        dup_data
[000331c2] 2448                      movea.l    a0,a2
[000331c4] 2748 004a                 move.l     a0,74(a3)
[000331c8] 536a 0036                 subq.w     #1,54(a2)
dup_icon_1:
[000331cc] 43eb 0052                 lea.l      82(a3),a1
[000331d0] 206f 0004                 movea.l    4(a7),a0
[000331d4] 6100 fc5e                 bsr        add_icon
[000331d8] 2448                      movea.l    a0,a2
[000331da] 200a                      move.l     a2,d0
[000331dc] 6604                      bne.s      dup_icon_10
[000331de] 91c8                      suba.l     a0,a0
[000331e0] 6036                      bra.s      dup_icon_11
dup_icon_10:
[000331e2] 286a 0004                 movea.l    4(a2),a4
[000331e6] 2003                      move.l     d3,d0
[000331e8] 2057                      movea.l    (a7),a0
[000331ea] 2250                      movea.l    (a0),a1
[000331ec] 41ec 0052                 lea.l      82(a4),a0
[000331f0] 4eb9 0007 6f44            jsr        memcpy
[000331f6] 2003                      move.l     d3,d0
[000331f8] 2057                      movea.l    (a7),a0
[000331fa] 2268 0004                 movea.l    4(a0),a1
[000331fe] 41f4 3852                 lea.l      82(a4,d3.l),a0
[00033202] 4eb9 0007 6f44            jsr        memcpy
[00033208] 28bc 0000 0052            move.l     #$00000052,(a4)
[0003320e] 7052                      moveq.l    #82,d0
[00033210] d083                      add.l      d3,d0
[00033212] 2940 0004                 move.l     d0,4(a4)
[00033216] 204a                      movea.l    a2,a0
dup_icon_11:
[00033218] 504f                      addq.w     #8,a7
[0003321a] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003321e] 4e75                      rts

del_icon:
[00033220] 48e7 0038                 movem.l    a2-a4,-(a7)
[00033224] 2848                      movea.l    a0,a4
[00033226] 2449                      movea.l    a1,a2
[00033228] 536a 0036                 subq.w     #1,54(a2)
[0003322c] 302a 0036                 move.w     54(a2),d0
[00033230] 6e00 00b0                 bgt        del_icon_1
[00033234] 206a 0012                 movea.l    18(a2),a0
[00033238] 2208                      move.l     a0,d1
[0003323a] 4e71                      nop
[0003323c] 266a 0004                 movea.l    4(a2),a3
[00033240] 226b 0008                 movea.l    8(a3),a1
[00033244] 204c                      movea.l    a4,a0
[00033246] 4eb9 0003 47e8            jsr        del_string
[0003324c] 202b 0028                 move.l     40(a3),d0
[00033250] 670a                      beq.s      del_icon_2
[00033252] 2240                      movea.l    d0,a1
[00033254] 204c                      movea.l    a4,a0
[00033256] 4eb9 0003 2a96            jsr        del_data
del_icon_2:
[0003325c] 202b 002c                 move.l     44(a3),d0
[00033260] 670a                      beq.s      del_icon_3
[00033262] 2240                      movea.l    d0,a1
[00033264] 204c                      movea.l    a4,a0
[00033266] 4eb9 0003 2a96            jsr        del_data
del_icon_3:
[0003326c] 202b 0030                 move.l     48(a3),d0
[00033270] 670a                      beq.s      del_icon_4
[00033272] 2240                      movea.l    d0,a1
[00033274] 204c                      movea.l    a4,a0
[00033276] 4eb9 0003 2a96            jsr        del_data
del_icon_4:
[0003327c] 202b 0034                 move.l     52(a3),d0
[00033280] 670a                      beq.s      del_icon_5
[00033282] 2240                      movea.l    d0,a1
[00033284] 204c                      movea.l    a4,a0
[00033286] 4eb9 0003 2a96            jsr        del_data
del_icon_5:
[0003328c] 202b 003e                 move.l     62(a3),d0
[00033290] 670a                      beq.s      del_icon_6
[00033292] 2240                      movea.l    d0,a1
[00033294] 204c                      movea.l    a4,a0
[00033296] 4eb9 0003 2a96            jsr        del_data
del_icon_6:
[0003329c] 202b 0042                 move.l     66(a3),d0
[000332a0] 670a                      beq.s      del_icon_7
[000332a2] 2240                      movea.l    d0,a1
[000332a4] 204c                      movea.l    a4,a0
[000332a6] 4eb9 0003 2a96            jsr        del_data
del_icon_7:
[000332ac] 202b 0046                 move.l     70(a3),d0
[000332b0] 670a                      beq.s      del_icon_8
[000332b2] 2240                      movea.l    d0,a1
[000332b4] 204c                      movea.l    a4,a0
[000332b6] 4eb9 0003 2a96            jsr        del_data
del_icon_8:
[000332bc] 202b 004a                 move.l     74(a3),d0
[000332c0] 670a                      beq.s      del_icon_9
[000332c2] 2240                      movea.l    d0,a1
[000332c4] 204c                      movea.l    a4,a0
[000332c6] 4eb9 0003 2a96            jsr        del_data
del_icon_9:
[000332cc] 224a                      movea.l    a2,a1
[000332ce] 206c 002c                 movea.l    44(a4),a0
[000332d2] 4eb9 0003 1b00            jsr        del_entry
[000332d8] 224a                      movea.l    a2,a1
[000332da] 204c                      movea.l    a4,a0
[000332dc] 4eb9 0001 61d4            jsr        objfree
del_icon_1:
[000332e2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000332e6] 4e75                      rts

new_work:
[000332e8] 303c 2720                 move.w     #$2720,d0
[000332ec] 2279 000a 48dc            movea.l    $000A48DC,a1
[000332f2] 4eb9 0003 24b6            jsr        work_icon
[000332f8] 4e75                      rts

		.data

astring:
[000c1d1e]                           dc.b $00
[000c1d1f]                           dc.b $00
[000c1d20]                           dc.b $00
[000c1d21]                           dc.b $00
[000c1d22] 000c1fd2                  dc.l $000c1fd2 ; no symbol found
[000c1d26]                           dc.b $00
[000c1d27]                           dc.b $00
[000c1d28]                           dc.b $00
[000c1d29]                           dc.b $00
[000c1d2a]                           dc.b $00
[000c1d2b]                           dc.b $06
[000c1d2c]                           dc.b $00
[000c1d2d]                           dc.b $00
[000c1d2e]                           dc.b $00
[000c1d2f]                           dc.b $06
[000c1d30]                           dc.b $00
[000c1d31]                           dc.b $00
[000c1d32]                           dc.b $00
[000c1d33]                           dc.b $00
[000c1d34]                           dc.b 'TEXT_01',0
[000c1d3c]                           dc.b $00
[000c1d3d]                           dc.b $00
[000c1d3e]                           dc.b $00
[000c1d3f]                           dc.b $00
[000c1d40]                           dc.b $00
[000c1d41]                           dc.b $00
[000c1d42]                           dc.b $00
[000c1d43]                           dc.b $00
[000c1d44]                           dc.b $00
[000c1d45]                           dc.b $00
[000c1d46]                           dc.b $00
[000c1d47]                           dc.b $00
[000c1d48]                           dc.b $00
[000c1d49]                           dc.b $00
[000c1d4a]                           dc.b $00
[000c1d4b]                           dc.b $00
[000c1d4c]                           dc.b $00
[000c1d4d]                           dc.b $00
[000c1d4e]                           dc.b $00
[000c1d4f]                           dc.b $00
[000c1d50]                           dc.b $00
[000c1d51]                           dc.b $00
[000c1d52]                           dc.b $00
[000c1d53]                           dc.b $00
[000c1d54]                           dc.b $00
[000c1d55]                           dc.b $01
[000c1d56]                           dc.b $00
[000c1d57]                           dc.b $00
[000c1d58]                           dc.b $00
[000c1d59]                           dc.b $00
[000c1d5a]                           dc.b $00
[000c1d5b]                           dc.b $00
[000c1d5c]                           dc.b $00
[000c1d5d]                           dc.b $00
[000c1d5e]                           dc.b $00
[000c1d5f]                           dc.b $00
iconblk_obj:
[000c1d60]                           dc.b $00
[000c1d61]                           dc.b $00
[000c1d62]                           dc.b $00
[000c1d63]                           dc.b $52
[000c1d64]                           dc.b $00
[000c1d65]                           dc.b $00
[000c1d66]                           dc.b $00
[000c1d67]                           dc.b $e2
[000c1d68] 000c1d1e                  dc.l astring
[000c1d6c]                           dc.w $1041
[000c1d6e]                           dc.b $00
[000c1d6f]                           dc.b $00
[000c1d70]                           dc.b $00
[000c1d71]                           dc.b $00
[000c1d72]                           dc.b $00
[000c1d73]                           dc.b $00
[000c1d74]                           dc.b $00
[000c1d75]                           dc.b $00
[000c1d76]                           dc.b $00
[000c1d77]                           dc.b $30
[000c1d78]                           dc.b $00
[000c1d79]                           dc.b $18
[000c1d7a]                           dc.b $00
[000c1d7b]                           dc.b $00
[000c1d7c]                           dc.b $00
[000c1d7d]                           dc.b $18
[000c1d7e]                           dc.b $00
[000c1d7f]                           dc.b $30
[000c1d80]                           dc.b $00
[000c1d81]                           dc.b $08
[000c1d82]                           dc.b $00
[000c1d83]                           dc.b $00
[000c1d84]                           dc.b $00
[000c1d85]                           dc.b $00
[000c1d86]                           dc.b $00
[000c1d87]                           dc.b $00
[000c1d88]                           dc.b $00
[000c1d89]                           dc.b $00
[000c1d8a]                           dc.b $00
[000c1d8b]                           dc.b $00
[000c1d8c]                           dc.b $00
[000c1d8d]                           dc.b $00
[000c1d8e]                           dc.b $00
[000c1d8f]                           dc.b $00
[000c1d90]                           dc.b $00
[000c1d91]                           dc.b $00
[000c1d92]                           dc.b $00
[000c1d93]                           dc.b $00
[000c1d94]                           dc.b $00
[000c1d95]                           dc.b $00
[000c1d96]                           dc.b $00
[000c1d97]                           dc.b $00
[000c1d98]                           dc.b $00
[000c1d99]                           dc.b $00
[000c1d9a]                           dc.b $00
[000c1d9b]                           dc.b $00
[000c1d9c]                           dc.b $00
[000c1d9d]                           dc.b $00
[000c1d9e]                           dc.b $00
[000c1d9f]                           dc.b $00
[000c1da0]                           dc.b $00
[000c1da1]                           dc.b $00
[000c1da2]                           dc.b $00
[000c1da3]                           dc.b $00
[000c1da4]                           dc.b $00
[000c1da5]                           dc.b $00
[000c1da6]                           dc.b $00
[000c1da7]                           dc.b $00
[000c1da8]                           dc.b $00
[000c1da9]                           dc.b $00
[000c1daa]                           dc.b $00
[000c1dab]                           dc.b $00
[000c1dac]                           dc.b $00
[000c1dad]                           dc.b $00
[000c1dae]                           dc.b $00
[000c1daf]                           dc.b $00
[000c1db0]                           dc.b $00
[000c1db1]                           dc.b $00
iconmask:
[000c1db2]                           dc.b $00
[000c1db3]                           dc.b $ff
[000c1db4]                           dc.w $ffff
[000c1db6]                           dc.w $fe00
[000c1db8]                           dc.b $00
[000c1db9]                           dc.b $ff
[000c1dba]                           dc.w $ffff
[000c1dbc]                           dc.w $fe00
[000c1dbe]                           dc.b $00
[000c1dbf]                           dc.b $ff
[000c1dc0]                           dc.w $ffff
[000c1dc2]                           dc.w $fe00
[000c1dc4]                           dc.b $00
[000c1dc5]                           dc.b $ff
[000c1dc6]                           dc.w $ffff
[000c1dc8]                           dc.w $fe00
[000c1dca]                           dc.b $00
[000c1dcb]                           dc.b $ff
[000c1dcc]                           dc.w $ffff
[000c1dce]                           dc.w $fe00
[000c1dd0]                           dc.b $00
[000c1dd1]                           dc.b $ff
[000c1dd2]                           dc.w $ffff
[000c1dd4]                           dc.w $fe00
[000c1dd6]                           dc.b $00
[000c1dd7]                           dc.b $ff
[000c1dd8]                           dc.w $ffff
[000c1dda]                           dc.w $fe00
[000c1ddc]                           dc.b $00
[000c1ddd]                           dc.b $ff
[000c1dde]                           dc.w $ffff
[000c1de0]                           dc.w $fe00
[000c1de2]                           dc.b $00
[000c1de3]                           dc.b $ff
[000c1de4]                           dc.w $ffff
[000c1de6]                           dc.w $fe00
[000c1de8]                           dc.b $00
[000c1de9]                           dc.b $ff
[000c1dea]                           dc.w $ffff
[000c1dec]                           dc.w $fe00
[000c1dee]                           dc.b $00
[000c1def]                           dc.b $ff
[000c1df0]                           dc.w $ffff
[000c1df2]                           dc.w $fe00
[000c1df4]                           dc.b $00
[000c1df5]                           dc.b $ff
[000c1df6]                           dc.w $ffff
[000c1df8]                           dc.w $fe00
[000c1dfa]                           dc.b $00
[000c1dfb]                           dc.b $ff
[000c1dfc]                           dc.w $ffff
[000c1dfe]                           dc.w $fe00
[000c1e00]                           dc.b $00
[000c1e01]                           dc.b $ff
[000c1e02]                           dc.w $ffff
[000c1e04]                           dc.w $fe00
[000c1e06]                           dc.b $00
[000c1e07]                           dc.b $ff
[000c1e08]                           dc.w $ffff
[000c1e0a]                           dc.w $fe00
[000c1e0c]                           dc.w $0fff
[000c1e0e]                           dc.w $ffff
[000c1e10]                           dc.w $fff0
[000c1e12]                           dc.w $0fff
[000c1e14]                           dc.w $ffff
[000c1e16]                           dc.w $fff0
[000c1e18]                           dc.w $0fff
[000c1e1a]                           dc.w $ffff
[000c1e1c]                           dc.w $fff0
[000c1e1e]                           dc.w $0fff
[000c1e20]                           dc.w $ffff
[000c1e22]                           dc.w $fff0
[000c1e24]                           dc.w $0fff
[000c1e26]                           dc.w $ffff
[000c1e28]                           dc.w $fff0
[000c1e2a]                           dc.w $0fff
[000c1e2c]                           dc.w $ffff
[000c1e2e]                           dc.w $fff0
[000c1e30]                           dc.w $0fff
[000c1e32]                           dc.w $ffff
[000c1e34]                           dc.w $fff0
[000c1e36]                           dc.w $0fff
[000c1e38]                           dc.w $ffff
[000c1e3a]                           dc.w $fff0
[000c1e3c]                           dc.b $00
[000c1e3d]                           dc.b $00
[000c1e3e]                           dc.b $00
[000c1e3f]                           dc.b $00
[000c1e40]                           dc.b $00
[000c1e41]                           dc.b $00
icondata:
[000c1e42]                           dc.b $00
[000c1e43]                           dc.b $ff
[000c1e44]                           dc.w $ffff
[000c1e46]                           dc.w $fe00
[000c1e48]                           dc.b $00
[000c1e49]                           dc.b $c0
[000c1e4a]                           dc.b $00
[000c1e4b]                           dc.b $00
[000c1e4c]                           dc.w $0600
[000c1e4e]                           dc.b $00
[000c1e4f]                           dc.b $c0
[000c1e50]                           dc.w $7fff
[000c1e52]                           dc.w $8600
[000c1e54]                           dc.b $00
[000c1e55]                           dc.b $c0
[000c1e56]                           dc.w $c000
[000c1e58]                           dc.w $8600
[000c1e5a]                           dc.b $00
[000c1e5b]                           dc.b $c1
[000c1e5c]                           dc.w $4000
[000c1e5e]                           dc.w $8600
[000c1e60]                           dc.b $00
[000c1e61]                           dc.b $c3
[000c1e62]                           dc.w $c000
[000c1e64]                           dc.w $8600
[000c1e66]                           dc.b $00
[000c1e67]                           dc.b $c2
[000c1e68]                           dc.b $00
[000c1e69]                           dc.b $00
[000c1e6a]                           dc.w $8600
[000c1e6c]                           dc.b $00
[000c1e6d]                           dc.b $c2
[000c1e6e]                           dc.b $00
[000c1e6f]                           dc.b $00
[000c1e70]                           dc.w $8600
[000c1e72]                           dc.b $00
[000c1e73]                           dc.b $c2
[000c1e74]                           dc.b $00
[000c1e75]                           dc.b $00
[000c1e76]                           dc.w $8600
[000c1e78]                           dc.b $00
[000c1e79]                           dc.b $c2
[000c1e7a]                           dc.b $00
[000c1e7b]                           dc.b $00
[000c1e7c]                           dc.w $8600
[000c1e7e]                           dc.b $00
[000c1e7f]                           dc.b $c2
[000c1e80]                           dc.b $00
[000c1e81]                           dc.b $00
[000c1e82]                           dc.w $8600
[000c1e84]                           dc.b $00
[000c1e85]                           dc.b $c2
[000c1e86]                           dc.b $00
[000c1e87]                           dc.b $00
[000c1e88]                           dc.w $8600
[000c1e8a]                           dc.b $00
[000c1e8b]                           dc.b $c2
[000c1e8c]                           dc.b $00
[000c1e8d]                           dc.b $00
[000c1e8e]                           dc.w $8600
[000c1e90]                           dc.b $00
[000c1e91]                           dc.b $c2
[000c1e92]                           dc.b $00
[000c1e93]                           dc.b $00
[000c1e94]                           dc.w $8600
[000c1e96]                           dc.b $00
[000c1e97]                           dc.b $c2
[000c1e98]                           dc.b $00
[000c1e99]                           dc.b $00
[000c1e9a]                           dc.w $8600
[000c1e9c]                           dc.w $0fc3
[000c1e9e]                           dc.w $ffff
[000c1ea0]                           dc.w $87f0
[000c1ea2]                           dc.w $0c00
[000c1ea4]                           dc.b $00
[000c1ea5]                           dc.b $00
[000c1ea6]                           dc.b $00
[000c1ea7]                           dc.b $30
[000c1ea8]                           dc.w $0c1c
[000c1eaa]                           dc.w $f9f9
[000c1eac]                           dc.w $8830
[000c1eae]                           dc.w $0c08
[000c1eb0]                           dc.b 'Å',$09,'H0'
[000c1eb4]                           dc.w $0c08
[000c1eb6]                           dc.b 'Å',$09,'(0'
[000c1eba]                           dc.w $0c1c
[000c1ebc]                           dc.w $f9f9
[000c1ebe]                           dc.w $1830
[000c1ec0]                           dc.w $0c00
[000c1ec2]                           dc.b $00
[000c1ec3]                           dc.b $00
[000c1ec4]                           dc.b $00
[000c1ec5]                           dc.b $30
[000c1ec6]                           dc.w $0fff
[000c1ec8]                           dc.w $ffff
[000c1eca]                           dc.w $fff0
[000c1ecc]                           dc.b $00
[000c1ecd]                           dc.b $00
[000c1ece]                           dc.b $00
[000c1ecf]                           dc.b $00
[000c1ed0]                           dc.b $00
[000c1ed1]                           dc.b $00
protoicon:
[000c1ed2]                           dc.b $00
[000c1ed3]                           dc.b $00
[000c1ed4]                           dc.b $00
[000c1ed5]                           dc.b $00
[000c1ed6] 000c1d60                  dc.l iconblk_obj
[000c1eda]                           dc.b $00
[000c1edb]                           dc.b $00
[000c1edc]                           dc.b $00
[000c1edd]                           dc.b $00
[000c1ede]                           dc.w $0172
[000c1ee0]                           dc.b $00
[000c1ee1]                           dc.b $00
[000c1ee2]                           dc.w $0172
[000c1ee4]                           dc.b $00
[000c1ee5]                           dc.b $00
[000c1ee6]                           dc.b $00
[000c1ee7]                           dc.b $00
[000c1ee8]                           dc.b 'ICON_01',0
[000c1ef0]                           dc.b $00
[000c1ef1]                           dc.b $00
[000c1ef2]                           dc.b $00
[000c1ef3]                           dc.b $00
[000c1ef4]                           dc.b $00
[000c1ef5]                           dc.b $00
[000c1ef6]                           dc.b $00
[000c1ef7]                           dc.b $00
[000c1ef8]                           dc.b $00
[000c1ef9]                           dc.b $00
[000c1efa]                           dc.b $00
[000c1efb]                           dc.b $00
[000c1efc]                           dc.b $00
[000c1efd]                           dc.b $00
[000c1efe]                           dc.b $00
[000c1eff]                           dc.b $00
[000c1f00]                           dc.b $00
[000c1f01]                           dc.b $00
[000c1f02]                           dc.b $00
[000c1f03]                           dc.b $00
[000c1f04]                           dc.b $00
[000c1f05]                           dc.b $00
[000c1f06]                           dc.b $00
[000c1f07]                           dc.b $00
[000c1f08]                           dc.b $00
[000c1f09]                           dc.b $01
[000c1f0a]                           dc.b $00
[000c1f0b]                           dc.b $00
[000c1f0c]                           dc.b $00
[000c1f0d]                           dc.b $00
[000c1f0e]                           dc.b $00
[000c1f0f]                           dc.b $00
[000c1f10]                           dc.b $00
[000c1f11]                           dc.b $00
[000c1f12]                           dc.b $00
[000c1f13]                           dc.b $00
list_icon:
[000c1f14]                           dc.b $00
[000c1f15]                           dc.b $00
[000c1f16]                           dc.b $00
[000c1f17]                           dc.b $00
[000c1f18]                           dc.b $00
[000c1f19]                           dc.b $00
[000c1f1a]                           dc.b $00
[000c1f1b]                           dc.b $00
[000c1f1c] 000a4882                  dc.l WI_ICON
[000c1f20] 000c0bd7                  dc.l ic_list
[000c1f24] 000c0be6                  dc.l ic_name
[000c1f28]                           dc.w $2720
[000c1f2a] 000c1ed2                  dc.l protoicon
[000c1f2e] 00032ec0                  dc.l copy_icon
[000c1f32] 00033220                  dc.l del_icon
[000c1f36] 000332e8                  dc.l new_work
[000c1f3a]                           dc.b $00
[000c1f3b]                           dc.b $00
[000c1f3c]                           dc.b $00
[000c1f3d]                           dc.b $00
my_icon:
[000c1f3e]                           dc.b $00
[000c1f3f]                           dc.b $00
[000c1f40]                           dc.b $00
[000c1f41]                           dc.b $00
[000c1f42]                           dc.b $00
[000c1f43]                           dc.b $00
[000c1f44]                           dc.b $00
[000c1f45]                           dc.b $00
[000c1f46]                           dc.b $00
[000c1f47]                           dc.b $00
[000c1f48]                           dc.b $00
[000c1f49]                           dc.b $00
[000c1f4a]                           dc.b $00
[000c1f4b]                           dc.b $00
[000c1f4c]                           dc.b $00
[000c1f4d]                           dc.b $00
[000c1f4e]                           dc.b $00
[000c1f4f]                           dc.b $00
[000c1f50]                           dc.b $00
[000c1f51]                           dc.b $00
[000c1f52]                           dc.b $00
[000c1f53]                           dc.b $00
[000c1f54]                           dc.b $00
[000c1f55]                           dc.b $00
[000c1f56]                           dc.b $00
[000c1f57]                           dc.b $00
[000c1f58]                           dc.b $00
[000c1f59]                           dc.b $00
[000c1f5a]                           dc.b $00
[000c1f5b]                           dc.b $00
[000c1f5c]                           dc.b $00
[000c1f5d]                           dc.b $00
[000c1f5e]                           dc.b $00
[000c1f5f]                           dc.b $00
[000c1f60]                           dc.b $00
[000c1f61]                           dc.b $00
[000c1f62]                           dc.b $00
[000c1f63]                           dc.b $00
[000c1f64]                           dc.b $00
[000c1f65]                           dc.b $00
[000c1f66]                           dc.b $00
[000c1f67]                           dc.b $00
[000c1f68]                           dc.b $00
[000c1f69]                           dc.b $00
[000c1f6a]                           dc.b $00
[000c1f6b]                           dc.b $00
[000c1f6c]                           dc.b $00
[000c1f6d]                           dc.b $00
[000c1f6e]                           dc.b $00
[000c1f6f]                           dc.b $00
[000c1f70]                           dc.b $00
[000c1f71]                           dc.b $00
[000c1f72]                           dc.b $00
[000c1f73]                           dc.b $00
[000c1f74]                           dc.b $00
[000c1f75]                           dc.b $00
[000c1f76]                           dc.b $00
[000c1f77]                           dc.b $00
[000c1f78]                           dc.b $00
[000c1f79]                           dc.b $00
[000c1f7a]                           dc.b $00
[000c1f7b]                           dc.b $00
[000c1f7c]                           dc.b $00
[000c1f7d]                           dc.b $00
[000c1f7e]                           dc.b $00
[000c1f7f]                           dc.b $00
[000c1f80]                           dc.b $00
[000c1f81]                           dc.b $00
[000c1f82]                           dc.b $00
[000c1f83]                           dc.b $00
[000c1f84]                           dc.b $00
[000c1f85]                           dc.b $00
[000c1f86]                           dc.b $00
[000c1f87]                           dc.b $00
[000c1f88]                           dc.b $00
[000c1f89]                           dc.b $00
[000c1f8a]                           dc.b $00
[000c1f8b]                           dc.b $00
[000c1f8c]                           dc.b $00
[000c1f8d]                           dc.b $00
[000c1f8e]                           dc.b $00
[000c1f8f]                           dc.b $00
free_icon:
[000c1f90]                           dc.b $00
[000c1f91]                           dc.b $00
[000c1f92]                           dc.b $00
[000c1f93]                           dc.b $00
[000c1f94] 000c1f3e                  dc.l my_icon
[000c1f98]                           dc.b $00
[000c1f99]                           dc.b $00
[000c1f9a]                           dc.b $00
[000c1f9b]                           dc.b $00
[000c1f9c]                           dc.b $00
[000c1f9d]                           dc.b $00
[000c1f9e]                           dc.b $00
[000c1f9f]                           dc.b $00
[000c1fa0]                           dc.b $00
[000c1fa1]                           dc.b $00
[000c1fa2]                           dc.b $00
[000c1fa3]                           dc.b $00
[000c1fa4]                           dc.b $00
[000c1fa5]                           dc.b $00
[000c1fa6]                           dc.b 'ICON_01',0
[000c1fae]                           dc.b $00
[000c1faf]                           dc.b $00
[000c1fb0]                           dc.b $00
[000c1fb1]                           dc.b $00
[000c1fb2]                           dc.b $00
[000c1fb3]                           dc.b $00
[000c1fb4]                           dc.b $00
[000c1fb5]                           dc.b $00
[000c1fb6]                           dc.b $00
[000c1fb7]                           dc.b $00
[000c1fb8]                           dc.b $00
[000c1fb9]                           dc.b $00
[000c1fba]                           dc.b $00
[000c1fbb]                           dc.b $00
[000c1fbc]                           dc.b $00
[000c1fbd]                           dc.b $00
[000c1fbe]                           dc.b $00
[000c1fbf]                           dc.b $00
[000c1fc0]                           dc.b $00
[000c1fc1]                           dc.b $00
[000c1fc2]                           dc.b $00
[000c1fc3]                           dc.b $00
[000c1fc4]                           dc.b $00
[000c1fc5]                           dc.b $00
[000c1fc6]                           dc.b $00
[000c1fc7]                           dc.b $01
[000c1fc8]                           dc.b $00
[000c1fc9]                           dc.b $00
[000c1fca]                           dc.b $00
[000c1fcb]                           dc.b $00
[000c1fcc]                           dc.b $00
[000c1fcd]                           dc.b $00
[000c1fce]                           dc.b $00
[000c1fcf]                           dc.b $00
[000c1fd0]                           dc.b $00
[000c1fd1]                           dc.b $00
[000c1fd2]                           dc.b 'CICON',0
		.even
