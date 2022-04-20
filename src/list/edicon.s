add_icon:
[00032e34] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032e38] 2448                      movea.l    a0,a2
[00032e3a] 2849                      movea.l    a1,a4
[00032e3c] 266a 002c                 movea.l    44(a2),a3
[00032e40] 006a 0001 0006            ori.w      #$0001,6(a2)
[00032e46] 3039 0007 8250            move.w     $00078250,d0
[00032e4c] 6728                      beq.s      $00032E76
[00032e4e] 7206                      moveq.l    #6,d1
[00032e50] 2279 0010 1f12            movea.l    ACSblk,a1
[00032e56] c269 0266                 and.w      614(a1),d1
[00032e5a] 5d41                      subq.w     #6,d1
[00032e5c] 6718                      beq.s      $00032E76
[00032e5e] 43ec 0016                 lea.l      22(a4),a1
[00032e62] 204b                      movea.l    a3,a0
[00032e64] 4eb9 0003 1a5c            jsr        $00031A5C
[00032e6a] b9c8                      cmpa.l     a0,a4
[00032e6c] 6608                      bne.s      $00032E76
[00032e6e] 526c 0036                 addq.w     #1,54(a4)
[00032e72] 204c                      movea.l    a4,a0
[00032e74] 6044                      bra.s      $00032EBA
[00032e76] 7004                      moveq.l    #4,d0
[00032e78] 204b                      movea.l    a3,a0
[00032e7a] 4eb9 0001 62aa            jsr        $000162AA
[00032e80] 4a40                      tst.w      d0
[00032e82] 6610                      bne.s      $00032E94
[00032e84] 224c                      movea.l    a4,a1
[00032e86] 204a                      movea.l    a2,a0
[00032e88] 4eb9 0003 2ec0            jsr        $00032EC0
[00032e8e] 2a48                      movea.l    a0,a5
[00032e90] 200d                      move.l     a5,d0
[00032e92] 6604                      bne.s      $00032E98
[00032e94] 91c8                      suba.l     a0,a0
[00032e96] 6022                      bra.s      $00032EBA
[00032e98] 2f39 000c 1f24            move.l     $000C1F24,-(a7)
[00032e9e] 486c 0016                 pea.l      22(a4)
[00032ea2] 224d                      movea.l    a5,a1
[00032ea4] 204a                      movea.l    a2,a0
[00032ea6] 4eb9 0001 6448            jsr        $00016448
[00032eac] 504f                      addq.w     #8,a7
[00032eae] 224d                      movea.l    a5,a1
[00032eb0] 204b                      movea.l    a3,a0
[00032eb2] 4eb9 0003 1a94            jsr        $00031A94
[00032eb8] 204d                      movea.l    a5,a0
[00032eba] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032ebe] 4e75                      rts
copy_icon:
[00032ec0] 48e7 003e                 movem.l    a2-a6,-(a7)
[00032ec4] 2648                      movea.l    a0,a3
[00032ec6] 2449                      movea.l    a1,a2
[00032ec8] 202a 000e                 move.l     14(a2),d0
[00032ecc] 4eb9 0001 6230            jsr        $00016230
[00032ed2] 2848                      movea.l    a0,a4
[00032ed4] 200c                      move.l     a4,d0
[00032ed6] 6606                      bne.s      $00032EDE
[00032ed8] 91c8                      suba.l     a0,a0
[00032eda] 6000 0108                 bra        $00032FE4
[00032ede] 296a 000e 000e            move.l     14(a2),14(a4)
[00032ee4] 2a6a 0004                 movea.l    4(a2),a5
[00032ee8] 2c6c 0004                 movea.l    4(a4),a6
[00032eec] 202a 000e                 move.l     14(a2),d0
[00032ef0] 224d                      movea.l    a5,a1
[00032ef2] 204e                      movea.l    a6,a0
[00032ef4] 4eb9 0007 6f44            jsr        $00076F44
[00032efa] 226d 0008                 movea.l    8(a5),a1
[00032efe] 204b                      movea.l    a3,a0
[00032f00] 4eb9 0003 461e            jsr        $0003461E
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
[00032f46] 670e                      beq.s      $00032F56
[00032f48] 2240                      movea.l    d0,a1
[00032f4a] 204b                      movea.l    a3,a0
[00032f4c] 4eb9 0003 29b4            jsr        $000329B4
[00032f52] 2d48 0028                 move.l     a0,40(a6)
[00032f56] 202d 002c                 move.l     44(a5),d0
[00032f5a] 670e                      beq.s      $00032F6A
[00032f5c] 2240                      movea.l    d0,a1
[00032f5e] 204b                      movea.l    a3,a0
[00032f60] 4eb9 0003 29b4            jsr        $000329B4
[00032f66] 2d48 002c                 move.l     a0,44(a6)
[00032f6a] 202d 0030                 move.l     48(a5),d0
[00032f6e] 670e                      beq.s      $00032F7E
[00032f70] 2240                      movea.l    d0,a1
[00032f72] 204b                      movea.l    a3,a0
[00032f74] 4eb9 0003 29b4            jsr        $000329B4
[00032f7a] 2d48 0030                 move.l     a0,48(a6)
[00032f7e] 202d 0034                 move.l     52(a5),d0
[00032f82] 670e                      beq.s      $00032F92
[00032f84] 2240                      movea.l    d0,a1
[00032f86] 204b                      movea.l    a3,a0
[00032f88] 4eb9 0003 29b4            jsr        $000329B4
[00032f8e] 2d48 0034                 move.l     a0,52(a6)
[00032f92] 202d 003e                 move.l     62(a5),d0
[00032f96] 670e                      beq.s      $00032FA6
[00032f98] 2240                      movea.l    d0,a1
[00032f9a] 204b                      movea.l    a3,a0
[00032f9c] 4eb9 0003 29b4            jsr        $000329B4
[00032fa2] 2d48 003e                 move.l     a0,62(a6)
[00032fa6] 202d 0042                 move.l     66(a5),d0
[00032faa] 670e                      beq.s      $00032FBA
[00032fac] 2240                      movea.l    d0,a1
[00032fae] 204b                      movea.l    a3,a0
[00032fb0] 4eb9 0003 29b4            jsr        $000329B4
[00032fb6] 2d48 0042                 move.l     a0,66(a6)
[00032fba] 202d 0046                 move.l     70(a5),d0
[00032fbe] 670e                      beq.s      $00032FCE
[00032fc0] 2240                      movea.l    d0,a1
[00032fc2] 204b                      movea.l    a3,a0
[00032fc4] 4eb9 0003 29b4            jsr        $000329B4
[00032fca] 2d48 0046                 move.l     a0,70(a6)
[00032fce] 202d 004a                 move.l     74(a5),d0
[00032fd2] 670e                      beq.s      $00032FE2
[00032fd4] 2240                      movea.l    d0,a1
[00032fd6] 204b                      movea.l    a3,a0
[00032fd8] 4eb9 0003 29b4            jsr        $000329B4
[00032fde] 2d48 004a                 move.l     a0,74(a6)
[00032fe2] 204c                      movea.l    a4,a0
[00032fe4] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00032fe8] 4e75                      rts
dup_icon:
[00032fea] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00032fee] 514f                      subq.w     #8,a7
[00032ff0] 2f48 0004                 move.l     a0,4(a7)
[00032ff4] 2e89                      move.l     a1,(a7)
[00032ff6] 47f9 000c 1f3e            lea.l      $000C1F3E,a3
[00032ffc] 7026                      moveq.l    #38,d0
[00032ffe] 2257                      movea.l    (a7),a1
[00033000] 204b                      movea.l    a3,a0
[00033002] 4eb9 0007 6f44            jsr        $00076F44
[00033008] 2057                      movea.l    (a7),a0
[0003300a] 2268 0008                 movea.l    8(a0),a1
[0003300e] 206f 0004                 movea.l    4(a7),a0
[00033012] 4eb9 0003 483c            jsr        $0003483C
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
[0003307a] 6700 0150                 beq        $000331CC
[0003307e] 0c55 0004                 cmpi.w     #$0004,(a5)
[00033082] 6600 00a0                 bne        $00033124
[00033086] 377c 0004 0026            move.w     #$0004,38(a3)
[0003308c] 286d 0002                 movea.l    2(a5),a4
[00033090] 200c                      move.l     a4,d0
[00033092] 6724                      beq.s      $000330B8
[00033094] 2003                      move.l     d3,d0
[00033096] e588                      lsl.l      #2,d0
[00033098] 5c80                      addq.l     #6,d0
[0003309a] 43ec fffa                 lea.l      -6(a4),a1
[0003309e] 206f 0004                 movea.l    4(a7),a0
[000330a2] 4eb9 0003 2a70            jsr        $00032A70
[000330a8] 2448                      movea.l    a0,a2
[000330aa] 2748 0028                 move.l     a0,40(a3)
[000330ae] 536a 0036                 subq.w     #1,54(a2)
[000330b2] 286a 0004                 movea.l    4(a2),a4
[000330b6] 4254                      clr.w      (a4)
[000330b8] 202d 0006                 move.l     6(a5),d0
[000330bc] 6718                      beq.s      $000330D6
[000330be] 2240                      movea.l    d0,a1
[000330c0] 206f 0004                 movea.l    4(a7),a0
[000330c4] 2003                      move.l     d3,d0
[000330c6] 4eb9 0003 2a70            jsr        $00032A70
[000330cc] 2448                      movea.l    a0,a2
[000330ce] 2748 002c                 move.l     a0,44(a3)
[000330d2] 536a 0036                 subq.w     #1,54(a2)
[000330d6] 286d 000a                 movea.l    10(a5),a4
[000330da] 200c                      move.l     a4,d0
[000330dc] 6724                      beq.s      $00033102
[000330de] 2003                      move.l     d3,d0
[000330e0] e588                      lsl.l      #2,d0
[000330e2] 5c80                      addq.l     #6,d0
[000330e4] 43ec fffa                 lea.l      -6(a4),a1
[000330e8] 206f 0004                 movea.l    4(a7),a0
[000330ec] 4eb9 0003 2a70            jsr        $00032A70
[000330f2] 2448                      movea.l    a0,a2
[000330f4] 2748 0030                 move.l     a0,48(a3)
[000330f8] 536a 0036                 subq.w     #1,54(a2)
[000330fc] 286a 0004                 movea.l    4(a2),a4
[00033100] 4254                      clr.w      (a4)
[00033102] 202d 000e                 move.l     14(a5),d0
[00033106] 6718                      beq.s      $00033120
[00033108] 2240                      movea.l    d0,a1
[0003310a] 206f 0004                 movea.l    4(a7),a0
[0003310e] 2003                      move.l     d3,d0
[00033110] 4eb9 0003 2a70            jsr        $00032A70
[00033116] 2448                      movea.l    a0,a2
[00033118] 2748 0034                 move.l     a0,52(a3)
[0003311c] 536a 0036                 subq.w     #1,54(a2)
[00033120] 2a6d 0012                 movea.l    18(a5),a5
[00033124] 200d                      move.l     a5,d0
[00033126] 6700 00a4                 beq        $000331CC
[0003312a] 0c55 0008                 cmpi.w     #$0008,(a5)
[0003312e] 6600 009c                 bne        $000331CC
[00033132] 377c 0008 003c            move.w     #$0008,60(a3)
[00033138] 286d 0002                 movea.l    2(a5),a4
[0003313c] 220c                      move.l     a4,d1
[0003313e] 6724                      beq.s      $00033164
[00033140] 2003                      move.l     d3,d0
[00033142] e788                      lsl.l      #3,d0
[00033144] 5c80                      addq.l     #6,d0
[00033146] 43ec fffa                 lea.l      -6(a4),a1
[0003314a] 206f 0004                 movea.l    4(a7),a0
[0003314e] 4eb9 0003 2a70            jsr        $00032A70
[00033154] 2448                      movea.l    a0,a2
[00033156] 2748 003e                 move.l     a0,62(a3)
[0003315a] 536a 0036                 subq.w     #1,54(a2)
[0003315e] 286a 0004                 movea.l    4(a2),a4
[00033162] 4254                      clr.w      (a4)
[00033164] 202d 0006                 move.l     6(a5),d0
[00033168] 6718                      beq.s      $00033182
[0003316a] 2240                      movea.l    d0,a1
[0003316c] 206f 0004                 movea.l    4(a7),a0
[00033170] 2003                      move.l     d3,d0
[00033172] 4eb9 0003 2a70            jsr        $00032A70
[00033178] 2448                      movea.l    a0,a2
[0003317a] 2748 0042                 move.l     a0,66(a3)
[0003317e] 536a 0036                 subq.w     #1,54(a2)
[00033182] 286d 000a                 movea.l    10(a5),a4
[00033186] 200c                      move.l     a4,d0
[00033188] 6724                      beq.s      $000331AE
[0003318a] 2003                      move.l     d3,d0
[0003318c] e788                      lsl.l      #3,d0
[0003318e] 5c80                      addq.l     #6,d0
[00033190] 43ec fffa                 lea.l      -6(a4),a1
[00033194] 206f 0004                 movea.l    4(a7),a0
[00033198] 4eb9 0003 2a70            jsr        $00032A70
[0003319e] 2448                      movea.l    a0,a2
[000331a0] 2748 0046                 move.l     a0,70(a3)
[000331a4] 536a 0036                 subq.w     #1,54(a2)
[000331a8] 286a 0004                 movea.l    4(a2),a4
[000331ac] 4254                      clr.w      (a4)
[000331ae] 202d 000e                 move.l     14(a5),d0
[000331b2] 6718                      beq.s      $000331CC
[000331b4] 2240                      movea.l    d0,a1
[000331b6] 206f 0004                 movea.l    4(a7),a0
[000331ba] 2003                      move.l     d3,d0
[000331bc] 4eb9 0003 2a70            jsr        $00032A70
[000331c2] 2448                      movea.l    a0,a2
[000331c4] 2748 004a                 move.l     a0,74(a3)
[000331c8] 536a 0036                 subq.w     #1,54(a2)
[000331cc] 43eb 0052                 lea.l      82(a3),a1
[000331d0] 206f 0004                 movea.l    4(a7),a0
[000331d4] 6100 fc5e                 bsr        $00032E34
[000331d8] 2448                      movea.l    a0,a2
[000331da] 200a                      move.l     a2,d0
[000331dc] 6604                      bne.s      $000331E2
[000331de] 91c8                      suba.l     a0,a0
[000331e0] 6036                      bra.s      $00033218
[000331e2] 286a 0004                 movea.l    4(a2),a4
[000331e6] 2003                      move.l     d3,d0
[000331e8] 2057                      movea.l    (a7),a0
[000331ea] 2250                      movea.l    (a0),a1
[000331ec] 41ec 0052                 lea.l      82(a4),a0
[000331f0] 4eb9 0007 6f44            jsr        $00076F44
[000331f6] 2003                      move.l     d3,d0
[000331f8] 2057                      movea.l    (a7),a0
[000331fa] 2268 0004                 movea.l    4(a0),a1
[000331fe] 41f4 3852                 lea.l      82(a4,d3.l),a0
[00033202] 4eb9 0007 6f44            jsr        $00076F44
[00033208] 28bc 0000 0052            move.l     #$00000052,(a4)
[0003320e] 7052                      moveq.l    #82,d0
[00033210] d083                      add.l      d3,d0
[00033212] 2940 0004                 move.l     d0,4(a4)
[00033216] 204a                      movea.l    a2,a0
[00033218] 504f                      addq.w     #8,a7
[0003321a] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003321e] 4e75                      rts
del_icon:
[00033220] 48e7 0038                 movem.l    a2-a4,-(a7)
[00033224] 2848                      movea.l    a0,a4
[00033226] 2449                      movea.l    a1,a2
[00033228] 536a 0036                 subq.w     #1,54(a2)
[0003322c] 302a 0036                 move.w     54(a2),d0
[00033230] 6e00 00b0                 bgt        $000332E2
[00033234] 206a 0012                 movea.l    18(a2),a0
[00033238] 2208                      move.l     a0,d1
[0003323a] 4e71                      nop
[0003323c] 266a 0004                 movea.l    4(a2),a3
[00033240] 226b 0008                 movea.l    8(a3),a1
[00033244] 204c                      movea.l    a4,a0
[00033246] 4eb9 0003 47e8            jsr        $000347E8
[0003324c] 202b 0028                 move.l     40(a3),d0
[00033250] 670a                      beq.s      $0003325C
[00033252] 2240                      movea.l    d0,a1
[00033254] 204c                      movea.l    a4,a0
[00033256] 4eb9 0003 2a96            jsr        $00032A96
[0003325c] 202b 002c                 move.l     44(a3),d0
[00033260] 670a                      beq.s      $0003326C
[00033262] 2240                      movea.l    d0,a1
[00033264] 204c                      movea.l    a4,a0
[00033266] 4eb9 0003 2a96            jsr        $00032A96
[0003326c] 202b 0030                 move.l     48(a3),d0
[00033270] 670a                      beq.s      $0003327C
[00033272] 2240                      movea.l    d0,a1
[00033274] 204c                      movea.l    a4,a0
[00033276] 4eb9 0003 2a96            jsr        $00032A96
[0003327c] 202b 0034                 move.l     52(a3),d0
[00033280] 670a                      beq.s      $0003328C
[00033282] 2240                      movea.l    d0,a1
[00033284] 204c                      movea.l    a4,a0
[00033286] 4eb9 0003 2a96            jsr        $00032A96
[0003328c] 202b 003e                 move.l     62(a3),d0
[00033290] 670a                      beq.s      $0003329C
[00033292] 2240                      movea.l    d0,a1
[00033294] 204c                      movea.l    a4,a0
[00033296] 4eb9 0003 2a96            jsr        $00032A96
[0003329c] 202b 0042                 move.l     66(a3),d0
[000332a0] 670a                      beq.s      $000332AC
[000332a2] 2240                      movea.l    d0,a1
[000332a4] 204c                      movea.l    a4,a0
[000332a6] 4eb9 0003 2a96            jsr        $00032A96
[000332ac] 202b 0046                 move.l     70(a3),d0
[000332b0] 670a                      beq.s      $000332BC
[000332b2] 2240                      movea.l    d0,a1
[000332b4] 204c                      movea.l    a4,a0
[000332b6] 4eb9 0003 2a96            jsr        $00032A96
[000332bc] 202b 004a                 move.l     74(a3),d0
[000332c0] 670a                      beq.s      $000332CC
[000332c2] 2240                      movea.l    d0,a1
[000332c4] 204c                      movea.l    a4,a0
[000332c6] 4eb9 0003 2a96            jsr        $00032A96
[000332cc] 224a                      movea.l    a2,a1
[000332ce] 206c 002c                 movea.l    44(a4),a0
[000332d2] 4eb9 0003 1b00            jsr        $00031B00
[000332d8] 224a                      movea.l    a2,a1
[000332da] 204c                      movea.l    a4,a0
[000332dc] 4eb9 0001 61d4            jsr        $000161D4
[000332e2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000332e6] 4e75                      rts
new_work:
[000332e8] 303c 2720                 move.w     #$2720,d0
[000332ec] 2279 000a 48dc            movea.l    $000A48DC,a1
[000332f2] 4eb9 0003 24b6            jsr        $000324B6
[000332f8] 4e75                      rts
