mod_height:
[0003f1f2] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003f1f6] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f1fc] 2668 025c                 movea.l    604(a0),a3
[0003f200] 4eb9 0003 9a96            jsr        $00039A96
[0003f206] 45f9 0010 1f0e            lea.l      $00101F0E,a2
[0003f20c] 302a 0002                 move.w     2(a2),d0
[0003f210] 674e                      beq.s      $0003F260
[0003f212] 3612                      move.w     (a2),d3
[0003f214] 4852                      pea.l      (a2)
[0003f216] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f21c] 204b                      movea.l    a3,a0
[0003f21e] 7014                      moveq.l    #20,d0
[0003f220] 4eb9 0004 b0b2            jsr        $0004B0B2
[0003f226] 584f                      addq.w     #4,a7
[0003f228] b652                      cmp.w      (a2),d3
[0003f22a] 6734                      beq.s      $0003F260
[0003f22c] 47eb 00d8                 lea.l      216(a3),a3
[0003f230] 286b 000c                 movea.l    12(a3),a4
[0003f234] 224a                      movea.l    a2,a1
[0003f236] 303c 012d                 move.w     #$012D,d0
[0003f23a] 204b                      movea.l    a3,a0
[0003f23c] 2a6c 0008                 movea.l    8(a4),a5
[0003f240] 4e95                      jsr        (a5)
[0003f242] 72ff                      moveq.l    #-1,d1
[0003f244] 7008                      moveq.l    #8,d0
[0003f246] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f24c] 2068 0258                 movea.l    600(a0),a0
[0003f250] 2279 0010 1f12            movea.l    ACSblk,a1
[0003f256] 2469 0258                 movea.l    600(a1),a2
[0003f25a] 226a 0066                 movea.l    102(a2),a1
[0003f25e] 4e91                      jsr        (a1)
[0003f260] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003f264] 4e75                      rts
liveheight:
[0003f266] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003f26a] 594f                      subq.w     #4,a7
[0003f26c] 2849                      movea.l    a1,a4
[0003f26e] 45f9 0010 1f0e            lea.l      $00101F0E,a2
[0003f274] 3612                      move.w     (a2),d3
[0003f276] 2648                      movea.l    a0,a3
[0003f278] 0c14 0020                 cmpi.b     #$20,(a4)
[0003f27c] 6650                      bne.s      $0003F2CE
[0003f27e] 486f 0002                 pea.l      2(a7)
[0003f282] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f288] 204c                      movea.l    a4,a0
[0003f28a] 4eb9 0007 594a            jsr        $0007594A
[0003f290] 584f                      addq.w     #4,a7
[0003f292] 322a fffe                 move.w     -2(a2),d1
[0003f296] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f29c] 3028 0010                 move.w     16(a0),d0
[0003f2a0] 4eb9 0006 5216            jsr        $00065216
[0003f2a6] 4857                      pea.l      (a7)
[0003f2a8] 486f 0004                 pea.l      4(a7)
[0003f2ac] 224a                      movea.l    a2,a1
[0003f2ae] 41ef 0008                 lea.l      8(a7),a0
[0003f2b2] 322f 000a                 move.w     10(a7),d1
[0003f2b6] 2879 0010 1f12            movea.l    ACSblk,a4
[0003f2bc] 302c 0010                 move.w     16(a4),d0
[0003f2c0] 4eb9 0006 5132            jsr        $00065132
[0003f2c6] 504f                      addq.w     #8,a7
[0003f2c8] 426a 0002                 clr.w      2(a2)
[0003f2cc] 601a                      bra.s      $0003F2E8
[0003f2ce] 4852                      pea.l      (a2)
[0003f2d0] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f2d6] 7014                      moveq.l    #20,d0
[0003f2d8] 204b                      movea.l    a3,a0
[0003f2da] 4eb9 0004 b0b2            jsr        $0004B0B2
[0003f2e0] 584f                      addq.w     #4,a7
[0003f2e2] 357c 0001 0002            move.w     #$0001,2(a2)
[0003f2e8] b652                      cmp.w      (a2),d3
[0003f2ea] 6734                      beq.s      $0003F320
[0003f2ec] 49eb 00d8                 lea.l      216(a3),a4
[0003f2f0] 266c 000c                 movea.l    12(a4),a3
[0003f2f4] 224a                      movea.l    a2,a1
[0003f2f6] 303c 012d                 move.w     #$012D,d0
[0003f2fa] 204c                      movea.l    a4,a0
[0003f2fc] 2a6b 0008                 movea.l    8(a3),a5
[0003f300] 4e95                      jsr        (a5)
[0003f302] 72ff                      moveq.l    #-1,d1
[0003f304] 7008                      moveq.l    #8,d0
[0003f306] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f30c] 2068 0258                 movea.l    600(a0),a0
[0003f310] 2279 0010 1f12            movea.l    ACSblk,a1
[0003f316] 2469 0258                 movea.l    600(a1),a2
[0003f31a] 226a 0066                 movea.l    102(a2),a1
[0003f31e] 4e91                      jsr        (a1)
[0003f320] 584f                      addq.w     #4,a7
[0003f322] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003f326] 4e75                      rts
set_font:
[0003f328] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0003f32c] 4fef ffd8                 lea.l      -40(a7),a7
[0003f330] 2448                      movea.l    a0,a2
[0003f332] 3600                      move.w     d0,d3
[0003f334] 4879 0010 1f0e            pea.l      $00101F0E
[0003f33a] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f340] 7014                      moveq.l    #20,d0
[0003f342] 4eb9 0004 b0b2            jsr        $0004B0B2
[0003f348] 584f                      addq.w     #4,a7
[0003f34a] 3203                      move.w     d3,d1
[0003f34c] 48c1                      ext.l      d1
[0003f34e] 2001                      move.l     d1,d0
[0003f350] e988                      lsl.l      #4,d0
[0003f352] 9081                      sub.l      d1,d0
[0003f354] e588                      lsl.l      #2,d0
[0003f356] 2079 0010 1f06            movea.l    $00101F06,a0
[0003f35c] d1c0                      adda.l     d0,a0
[0003f35e] 2f48 0010                 move.l     a0,16(a7)
[0003f362] 33e8 0022 0010 1f0c       move.w     34(a0),$00101F0C
[0003f36a] 43ea 00d8                 lea.l      216(a2),a1
[0003f36e] 2f49 0014                 move.l     a1,20(a7)
[0003f372] 2a69 000c                 movea.l    12(a1),a5
[0003f376] 43f9 0010 1f0c            lea.l      $00101F0C,a1
[0003f37c] 266d 0008                 movea.l    8(a5),a3
[0003f380] 206f 0014                 movea.l    20(a7),a0
[0003f384] 303c 012c                 move.w     #$012C,d0
[0003f388] 4e93                      jsr        (a3)
[0003f38a] 43f9 0010 1f0e            lea.l      $00101F0E,a1
[0003f390] 303c 012d                 move.w     #$012D,d0
[0003f394] 206f 0014                 movea.l    20(a7),a0
[0003f398] 266d 0008                 movea.l    8(a5),a3
[0003f39c] 4e93                      jsr        (a3)
[0003f39e] 4bea 0168                 lea.l      360(a2),a5
[0003f3a2] 93c9                      suba.l     a1,a1
[0003f3a4] 303c 00ce                 move.w     #$00CE,d0
[0003f3a8] 204d                      movea.l    a5,a0
[0003f3aa] 4eb9 0003 8e52            jsr        $00038E52
[0003f3b0] 76ff                      moveq.l    #-1,d3
[0003f3b2] 3239 0010 1f0c            move.w     $00101F0C,d1
[0003f3b8] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f3be] 3028 0010                 move.w     16(a0),d0
[0003f3c2] 4eb9 0006 5216            jsr        $00065216
[0003f3c8] 4244                      clr.w      d4
[0003f3ca] 45ef 0004                 lea.l      4(a7),a2
[0003f3ce] 47ef 0002                 lea.l      2(a7),a3
[0003f3d2] 6078                      bra.s      $0003F44C
[0003f3d4] 3004                      move.w     d4,d0
[0003f3d6] 48c0                      ext.l      d0
[0003f3d8] d080                      add.l      d0,d0
[0003f3da] 206f 0010                 movea.l    16(a7),a0
[0003f3de] 3a30 0824                 move.w     36(a0,d0.l),d5
[0003f3e2] 4a45                      tst.w      d5
[0003f3e4] 6f64                      ble.s      $0003F44A
[0003f3e6] 3f05                      move.w     d5,-(a7)
[0003f3e8] 43f9 000c 8aa7            lea.l      $000C8AA7,a1
[0003f3ee] 204a                      movea.l    a2,a0
[0003f3f0] 4eb9 0007 5680            jsr        $00075680
[0003f3f6] 544f                      addq.w     #2,a7
[0003f3f8] 224a                      movea.l    a2,a1
[0003f3fa] 303c 00cc                 move.w     #$00CC,d0
[0003f3fe] 204d                      movea.l    a5,a0
[0003f400] 4eb9 0003 8e52            jsr        $00038E52
[0003f406] 93c9                      suba.l     a1,a1
[0003f408] 303c 00cb                 move.w     #$00CB,d0
[0003f40c] 204d                      movea.l    a5,a0
[0003f40e] 4eb9 0003 8e52            jsr        $00038E52
[0003f414] 4853                      pea.l      (a3)
[0003f416] 4853                      pea.l      (a3)
[0003f418] 43ef 0008                 lea.l      8(a7),a1
[0003f41c] 204b                      movea.l    a3,a0
[0003f41e] 3205                      move.w     d5,d1
[0003f420] 2879 0010 1f12            movea.l    ACSblk,a4
[0003f426] 302c 0010                 move.w     16(a4),d0
[0003f42a] 4eb9 0006 5132            jsr        $00065132
[0003f430] 504f                      addq.w     #8,a7
[0003f432] 4a43                      tst.w      d3
[0003f434] 6a14                      bpl.s      $0003F44A
[0003f436] 5343                      subq.w     #1,d3
[0003f438] 3017                      move.w     (a7),d0
[0003f43a] b079 0010 1f0e            cmp.w      $00101F0E,d0
[0003f440] 6608                      bne.s      $0003F44A
[0003f442] 3203                      move.w     d3,d1
[0003f444] 4441                      neg.w      d1
[0003f446] 5541                      subq.w     #2,d1
[0003f448] 3601                      move.w     d1,d3
[0003f44a] 5244                      addq.w     #1,d4
[0003f44c] b87c 000c                 cmp.w      #$000C,d4
[0003f450] 6d00 ff82                 blt.w      $0003F3D4
[0003f454] 43f9 000c 8aab            lea.l      $000C8AAB,a1
[0003f45a] 303c 00cc                 move.w     #$00CC,d0
[0003f45e] 204d                      movea.l    a5,a0
[0003f460] 4eb9 0003 8e52            jsr        $00038E52
[0003f466] 49ef 0018                 lea.l      24(a7),a4
[0003f46a] 4a43                      tst.w      d3
[0003f46c] 6a1e                      bpl.s      $0003F48C
[0003f46e] 43ef 000c                 lea.l      12(a7),a1
[0003f472] 303c 00e9                 move.w     #$00E9,d0
[0003f476] 204d                      movea.l    a5,a0
[0003f478] 4eb9 0003 8e52            jsr        $00038E52
[0003f47e] 70ff                      moveq.l    #-1,d0
[0003f480] d0af 000c                 add.l      12(a7),d0
[0003f484] 2940 0008                 move.l     d0,8(a4)
[0003f488] 2880                      move.l     d0,(a4)
[0003f48a] 600a                      bra.s      $0003F496
[0003f48c] 3003                      move.w     d3,d0
[0003f48e] 48c0                      ext.l      d0
[0003f490] 2940 0008                 move.l     d0,8(a4)
[0003f494] 2880                      move.l     d0,(a4)
[0003f496] 7000                      moveq.l    #0,d0
[0003f498] 2940 000c                 move.l     d0,12(a4)
[0003f49c] 2940 0004                 move.l     d0,4(a4)
[0003f4a0] 224c                      movea.l    a4,a1
[0003f4a2] 204d                      movea.l    a5,a0
[0003f4a4] 303c 00e4                 move.w     #$00E4,d0
[0003f4a8] 4eb9 0003 8e52            jsr        $00038E52
[0003f4ae] 93c9                      suba.l     a1,a1
[0003f4b0] 303c 00db                 move.w     #$00DB,d0
[0003f4b4] 204d                      movea.l    a5,a0
[0003f4b6] 4eb9 0003 8e52            jsr        $00038E52
[0003f4bc] 33fc 0001 0010 1f10       move.w     #$0001,$00101F10
[0003f4c4] 4fef 0028                 lea.l      40(a7),a7
[0003f4c8] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0003f4cc] 4e75                      rts
livefont:
[0003f4ce] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0003f4d2] 594f                      subq.w     #4,a7
[0003f4d4] 2448                      movea.l    a0,a2
[0003f4d6] 2e89                      move.l     a1,(a7)
[0003f4d8] 2648                      movea.l    a0,a3
[0003f4da] 286b 0174                 movea.l    372(a3),a4
[0003f4de] 2279 0010 1f12            movea.l    ACSblk,a1
[0003f4e4] 2a69 0258                 movea.l    600(a1),a5
[0003f4e8] 4243                      clr.w      d3
[0003f4ea] 6046                      bra.s      $0003F532
[0003f4ec] 3203                      move.w     d3,d1
[0003f4ee] 48c1                      ext.l      d1
[0003f4f0] 2001                      move.l     d1,d0
[0003f4f2] e988                      lsl.l      #4,d0
[0003f4f4] 9081                      sub.l      d1,d0
[0003f4f6] e588                      lsl.l      #2,d0
[0003f4f8] 2279 0010 1f06            movea.l    $00101F06,a1
[0003f4fe] d3c0                      adda.l     d0,a1
[0003f500] 2057                      movea.l    (a7),a0
[0003f502] 4eb9 0007 68fe            jsr        $000768FE
[0003f508] 4a40                      tst.w      d0
[0003f50a] 6624                      bne.s      $0003F530
[0003f50c] 3003                      move.w     d3,d0
[0003f50e] 204a                      movea.l    a2,a0
[0003f510] 6100 fe16                 bsr        $0003F328
[0003f514] 72ff                      moveq.l    #-1,d1
[0003f516] 7008                      moveq.l    #8,d0
[0003f518] 204d                      movea.l    a5,a0
[0003f51a] 226d 0066                 movea.l    102(a5),a1
[0003f51e] 4e91                      jsr        (a1)
[0003f520] 93c9                      suba.l     a1,a1
[0003f522] 7006                      moveq.l    #6,d0
[0003f524] 41eb 0168                 lea.l      360(a3),a0
[0003f528] 2c6c 0008                 movea.l    8(a4),a6
[0003f52c] 4e96                      jsr        (a6)
[0003f52e] 600a                      bra.s      $0003F53A
[0003f530] 5243                      addq.w     #1,d3
[0003f532] b679 0010 1f0a            cmp.w      $00101F0A,d3
[0003f538] 6db2                      blt.s      $0003F4EC
[0003f53a] 584f                      addq.w     #4,a7
[0003f53c] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0003f540] 4e75                      rts
get_fontinfo:
[0003f542] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0003f546] 4fef ff76                 lea.l      -138(a7),a7
[0003f54a] 2f48 0086                 move.l     a0,134(a7)
[0003f54e] 3a00                      move.w     d0,d5
[0003f550] 45f9 0010 1f12            lea.l      ACSblk,a2
[0003f556] 2052                      movea.l    (a2),a0
[0003f558] 3228 0284                 move.w     644(a0),d1
[0003f55c] 48c1                      ext.l      d1
[0003f55e] 2001                      move.l     d1,d0
[0003f560] e988                      lsl.l      #4,d0
[0003f562] 9081                      sub.l      d1,d0
[0003f564] e588                      lsl.l      #2,d0
[0003f566] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003f56c] 23c8 0010 1f06            move.l     a0,$00101F06
[0003f572] 6606                      bne.s      $0003F57A
[0003f574] 4240                      clr.w      d0
[0003f576] 6000 017e                 bra        $0003F6F6
[0003f57a] 4eb9 0004 9902            jsr        $00049902
[0003f580] 2679 0010 1f06            movea.l    $00101F06,a3
[0003f586] 33fc 0001 0010 1f0a       move.w     #$0001,$00101F0A
[0003f58e] 7601                      moveq.l    #1,d3
[0003f590] 4bef 0084                 lea.l      132(a7),a5
[0003f594] 49ef 0080                 lea.l      128(a7),a4
[0003f598] 6000 014a                 bra        $0003F6E4
[0003f59c] 204b                      movea.l    a3,a0
[0003f59e] 3203                      move.w     d3,d1
[0003f5a0] 2252                      movea.l    (a2),a1
[0003f5a2] 3029 0010                 move.w     16(a1),d0
[0003f5a6] 4eb9 0006 7464            jsr        $00067464
[0003f5ac] 3740 0022                 move.w     d0,34(a3)
[0003f5b0] 3200                      move.w     d0,d1
[0003f5b2] 2052                      movea.l    (a2),a0
[0003f5b4] 3028 0010                 move.w     16(a0),d0
[0003f5b8] 4eb9 0006 5216            jsr        $00065216
[0003f5be] 4855                      pea.l      (a5)
[0003f5c0] 4855                      pea.l      (a5)
[0003f5c2] 224d                      movea.l    a5,a1
[0003f5c4] 204d                      movea.l    a5,a0
[0003f5c6] 323c 00c8                 move.w     #$00C8,d1
[0003f5ca] 2c52                      movea.l    (a2),a6
[0003f5cc] 302e 0010                 move.w     16(a6),d0
[0003f5d0] 4eb9 0006 5132            jsr        $00065132
[0003f5d6] 504f                      addq.w     #8,a7
[0003f5d8] 3800                      move.w     d0,d4
[0003f5da] b07c 00c8                 cmp.w      #$00C8,d0
[0003f5de] 6e00 0102                 bgt        $0003F6E2
[0003f5e2] 5340                      subq.w     #1,d0
[0003f5e4] 6d00 00fc                 blt        $0003F6E2
[0003f5e8] 4a45                      tst.w      d5
[0003f5ea] 6600 0080                 bne        $0003F66C
[0003f5ee] 486f 0074                 pea.l      116(a7)
[0003f5f2] 486f 0082                 pea.l      130(a7)
[0003f5f6] 486f 007c                 pea.l      124(a7)
[0003f5fa] 224c                      movea.l    a4,a1
[0003f5fc] 41ef 008e                 lea.l      142(a7),a0
[0003f600] 2c52                      movea.l    (a2),a6
[0003f602] 302e 0010                 move.w     16(a6),d0
[0003f606] 4eb9 0006 770e            jsr        $0006770E
[0003f60c] 4fef 000c                 lea.l      12(a7),a7
[0003f610] 4255                      clr.w      (a5)
[0003f612] 0c6f 0020 0082            cmpi.w     #$0020,130(a7)
[0003f618] 6c04                      bge.s      $0003F61E
[0003f61a] 7c20                      moveq.l    #32,d6
[0003f61c] 6004                      bra.s      $0003F622
[0003f61e] 3c2f 0082                 move.w     130(a7),d6
[0003f622] 600a                      bra.s      $0003F62E
[0003f624] 3015                      move.w     (a5),d0
[0003f626] 1f86 0000                 move.b     d6,0(a7,d0.w)
[0003f62a] 5255                      addq.w     #1,(a5)
[0003f62c] 5246                      addq.w     #1,d6
[0003f62e] 0c54 0080                 cmpi.w     #$0080,(a4)
[0003f632] 6c04                      bge.s      $0003F638
[0003f634] 3014                      move.w     (a4),d0
[0003f636] 6004                      bra.s      $0003F63C
[0003f638] 303c 0080                 move.w     #$0080,d0
[0003f63c] bc40                      cmp.w      d0,d6
[0003f63e] 6fe4                      ble.s      $0003F624
[0003f640] 3015                      move.w     (a5),d0
[0003f642] 4237 0000                 clr.b      0(a7,d0.w)
[0003f646] 43ef 0064                 lea.l      100(a7),a1
[0003f64a] 41d7                      lea.l      (a7),a0
[0003f64c] 2c52                      movea.l    (a2),a6
[0003f64e] 302e 0010                 move.w     16(a6),d0
[0003f652] 4eb9 0006 732e            jsr        $0006732E
[0003f658] 302f 0068                 move.w     104(a7),d0
[0003f65c] d06f 0064                 add.w      100(a7),d0
[0003f660] 48c0                      ext.l      d0
[0003f662] 81d5                      divs.w     (a5),d0
[0003f664] b06f 007e                 cmp.w      126(a7),d0
[0003f668] 6600 0078                 bne.w      $0003F6E2
[0003f66c] b67c 0001                 cmp.w      #$0001,d3
[0003f670] 6f10                      ble.s      $0003F682
[0003f672] 93c9                      suba.l     a1,a1
[0003f674] 303c 00cb                 move.w     #$00CB,d0
[0003f678] 206f 0086                 movea.l    134(a7),a0
[0003f67c] 4eb9 0003 8e52            jsr        $00038E52
[0003f682] 224b                      movea.l    a3,a1
[0003f684] 303c 00cc                 move.w     #$00CC,d0
[0003f688] 206f 0086                 movea.l    134(a7),a0
[0003f68c] 4eb9 0003 8e52            jsr        $00038E52
[0003f692] 3e3c 00c8                 move.w     #$00C8,d7
[0003f696] 7c0b                      moveq.l    #11,d6
[0003f698] 603a                      bra.s      $0003F6D4
[0003f69a] 4855                      pea.l      (a5)
[0003f69c] 4855                      pea.l      (a5)
[0003f69e] 224d                      movea.l    a5,a1
[0003f6a0] 204d                      movea.l    a5,a0
[0003f6a2] 72ff                      moveq.l    #-1,d1
[0003f6a4] d247                      add.w      d7,d1
[0003f6a6] 2c52                      movea.l    (a2),a6
[0003f6a8] 302e 0010                 move.w     16(a6),d0
[0003f6ac] 4eb9 0006 5132            jsr        $00065132
[0003f6b2] 504f                      addq.w     #8,a7
[0003f6b4] 3800                      move.w     d0,d4
[0003f6b6] b047                      cmp.w      d7,d0
[0003f6b8] 660c                      bne.s      $0003F6C6
[0003f6ba] 3206                      move.w     d6,d1
[0003f6bc] 48c1                      ext.l      d1
[0003f6be] d281                      add.l      d1,d1
[0003f6c0] 4273 1824                 clr.w      36(a3,d1.l)
[0003f6c4] 600c                      bra.s      $0003F6D2
[0003f6c6] 3006                      move.w     d6,d0
[0003f6c8] 48c0                      ext.l      d0
[0003f6ca] d080                      add.l      d0,d0
[0003f6cc] 3784 0824                 move.w     d4,36(a3,d0.l)
[0003f6d0] 3e04                      move.w     d4,d7
[0003f6d2] 5346                      subq.w     #1,d6
[0003f6d4] 4a46                      tst.w      d6
[0003f6d6] 6ac2                      bpl.s      $0003F69A
[0003f6d8] 5279 0010 1f0a            addq.w     #1,$00101F0A
[0003f6de] 47eb 003c                 lea.l      60(a3),a3
[0003f6e2] 5243                      addq.w     #1,d3
[0003f6e4] 2052                      movea.l    (a2),a0
[0003f6e6] b668 0284                 cmp.w      644(a0),d3
[0003f6ea] 6f00 feb0                 ble        $0003F59C
[0003f6ee] 4eb9 0004 9940            jsr        $00049940
[0003f6f4] 7001                      moveq.l    #1,d0
[0003f6f6] 4fef 008a                 lea.l      138(a7),a7
[0003f6fa] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0003f6fe] 4e75                      rts
serv_wi_font:
[0003f700] 2f0a                      move.l     a2,-(a7)
[0003f702] 2448                      movea.l    a0,a2
[0003f704] 3200                      move.w     d0,d1
[0003f706] 5541                      subq.w     #2,d1
[0003f708] 6708                      beq.s      $0003F712
[0003f70a] 927c 0018                 sub.w      #$0018,d1
[0003f70e] 670c                      beq.s      $0003F71C
[0003f710] 602c                      bra.s      $0003F73E
[0003f712] 204a                      movea.l    a2,a0
[0003f714] 4eb9 0005 0330            jsr        $00050330
[0003f71a] 6026                      bra.s      $0003F742
[0003f71c] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f722] 214a 0258                 move.l     a2,600(a0)
[0003f726] 206a 0014                 movea.l    20(a2),a0
[0003f72a] 41e8 0168                 lea.l      360(a0),a0
[0003f72e] 2448                      movea.l    a0,a2
[0003f730] 93c9                      suba.l     a1,a1
[0003f732] 303c 00e6                 move.w     #$00E6,d0
[0003f736] 4eb9 0003 8e52            jsr        $00038E52
[0003f73c] 6004                      bra.s      $0003F742
[0003f73e] 4240                      clr.w      d0
[0003f740] 6002                      bra.s      $0003F744
[0003f742] 7001                      moveq.l    #1,d0
[0003f744] 245f                      movea.l    (a7)+,a2
[0003f746] 4e75                      rts
A_fontsel:
[0003f748] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003f74c] 4fef ffd6                 lea.l      -42(a7),a7
[0003f750] 2f48 0026                 move.l     a0,38(a7)
[0003f754] 2f49 0022                 move.l     a1,34(a7)
[0003f758] 3600                      move.w     d0,d3
[0003f75a] 49f9 0010 1f0e            lea.l      $00101F0E,a4
[0003f760] 206f 0026                 movea.l    38(a7),a0
[0003f764] 3950 fffe                 move.w     (a0),-2(a4)
[0003f768] 226f 0022                 movea.l    34(a7),a1
[0003f76c] 3891                      move.w     (a1),(a4)
[0003f76e] 41f9 000c 8a02            lea.l      $000C8A02,a0
[0003f774] 2279 000c 8a0a            movea.l    $000C8A0A,a1
[0003f77a] 4e91                      jsr        (a1)
[0003f77c] 2a48                      movea.l    a0,a5
[0003f77e] 200d                      move.l     a5,d0
[0003f780] 671c                      beq.s      $0003F79E
[0003f782] 266d 0014                 movea.l    20(a5),a3
[0003f786] 47eb 0048                 lea.l      72(a3),a3
[0003f78a] 3003                      move.w     d3,d0
[0003f78c] 204b                      movea.l    a3,a0
[0003f78e] 6100 fdb2                 bsr        $0003F542
[0003f792] 4a40                      tst.w      d0
[0003f794] 660e                      bne.s      $0003F7A4
[0003f796] 204d                      movea.l    a5,a0
[0003f798] 4eb9 0005 0330            jsr        $00050330
[0003f79e] 70ff                      moveq.l    #-1,d0
[0003f7a0] 6000 0182                 bra        $0003F924
[0003f7a4] 3f14                      move.w     (a4),-(a7)
[0003f7a6] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f7ac] 7014                      moveq.l    #20,d0
[0003f7ae] 206d 0014                 movea.l    20(a5),a0
[0003f7b2] 4eb9 0004 afac            jsr        $0004AFAC
[0003f7b8] 544f                      addq.w     #2,a7
[0003f7ba] 93c9                      suba.l     a1,a1
[0003f7bc] 303c 00dc                 move.w     #$00DC,d0
[0003f7c0] 204b                      movea.l    a3,a0
[0003f7c2] 4eb9 0003 8e52            jsr        $00038E52
[0003f7c8] 76ff                      moveq.l    #-1,d3
[0003f7ca] d66c fffc                 add.w      -4(a4),d3
[0003f7ce] 6002                      bra.s      $0003F7D2
[0003f7d0] 5343                      subq.w     #1,d3
[0003f7d2] 4a43                      tst.w      d3
[0003f7d4] 6f1a                      ble.s      $0003F7F0
[0003f7d6] 3203                      move.w     d3,d1
[0003f7d8] 48c1                      ext.l      d1
[0003f7da] 2001                      move.l     d1,d0
[0003f7dc] e988                      lsl.l      #4,d0
[0003f7de] 9081                      sub.l      d1,d0
[0003f7e0] e588                      lsl.l      #2,d0
[0003f7e2] 206c fff8                 movea.l    -8(a4),a0
[0003f7e6] 342c fffe                 move.w     -2(a4),d2
[0003f7ea] b470 0822                 cmp.w      34(a0,d0.l),d2
[0003f7ee] 66e0                      bne.s      $0003F7D0
[0003f7f0] 3003                      move.w     d3,d0
[0003f7f2] 206d 0014                 movea.l    20(a5),a0
[0003f7f6] 6100 fb30                 bsr        $0003F328
[0003f7fa] 45ef 0012                 lea.l      18(a7),a2
[0003f7fe] 3003                      move.w     d3,d0
[0003f800] 48c0                      ext.l      d0
[0003f802] 2540 0008                 move.l     d0,8(a2)
[0003f806] 2480                      move.l     d0,(a2)
[0003f808] 7200                      moveq.l    #0,d1
[0003f80a] 2541 000c                 move.l     d1,12(a2)
[0003f80e] 2541 0004                 move.l     d1,4(a2)
[0003f812] 224a                      movea.l    a2,a1
[0003f814] 303c 00da                 move.w     #$00DA,d0
[0003f818] 204b                      movea.l    a3,a0
[0003f81a] 4eb9 0003 8e52            jsr        $00038E52
[0003f820] 224a                      movea.l    a2,a1
[0003f822] 303c 00e4                 move.w     #$00E4,d0
[0003f826] 204b                      movea.l    a3,a0
[0003f828] 4eb9 0003 8e52            jsr        $00038E52
[0003f82e] 2e8d                      move.l     a5,(a7)
[0003f830] 2f4b 0004                 move.l     a3,4(a7)
[0003f834] 3f7c 0003 0008            move.w     #$0003,8(a7)
[0003f83a] 43d7                      lea.l      (a7),a1
[0003f83c] 7009                      moveq.l    #9,d0
[0003f83e] 204b                      movea.l    a3,a0
[0003f840] 4eb9 0003 8e52            jsr        $00038E52
[0003f846] 206d 0014                 movea.l    20(a5),a0
[0003f84a] 41e8 0078                 lea.l      120(a0),a0
[0003f84e] 2f48 0004                 move.l     a0,4(a7)
[0003f852] 3f7c 0005 0008            move.w     #$0005,8(a7)
[0003f858] 43d7                      lea.l      (a7),a1
[0003f85a] 303c 00c8                 move.w     #$00C8,d0
[0003f85e] 204b                      movea.l    a3,a0
[0003f860] 4eb9 0003 8e52            jsr        $00038E52
[0003f866] 2f7c 0003 f4ce 000a       move.l     #$0003F4CE,10(a7)
[0003f86e] 2f6d 0014 000e            move.l     20(a5),14(a7)
[0003f874] 43ef 000a                 lea.l      10(a7),a1
[0003f878] 303c 00e5                 move.w     #$00E5,d0
[0003f87c] 204b                      movea.l    a3,a0
[0003f87e] 4eb9 0003 8e52            jsr        $00038E52
[0003f884] 266d 0014                 movea.l    20(a5),a3
[0003f888] 47eb 0168                 lea.l      360(a3),a3
[0003f88c] 2f4b 0004                 move.l     a3,4(a7)
[0003f890] 3f7c 000f 0008            move.w     #$000F,8(a7)
[0003f896] 43d7                      lea.l      (a7),a1
[0003f898] 7009                      moveq.l    #9,d0
[0003f89a] 204b                      movea.l    a3,a0
[0003f89c] 4eb9 0003 8e52            jsr        $00038E52
[0003f8a2] 206d 0014                 movea.l    20(a5),a0
[0003f8a6] 41e8 0198                 lea.l      408(a0),a0
[0003f8aa] 2f48 0004                 move.l     a0,4(a7)
[0003f8ae] 3f7c 0011 0008            move.w     #$0011,8(a7)
[0003f8b4] 43d7                      lea.l      (a7),a1
[0003f8b6] 303c 00c8                 move.w     #$00C8,d0
[0003f8ba] 204b                      movea.l    a3,a0
[0003f8bc] 4eb9 0003 8e52            jsr        $00038E52
[0003f8c2] 2f7c 0003 f266 000a       move.l     #$0003F266,10(a7)
[0003f8ca] 2f6d 0014 000e            move.l     20(a5),14(a7)
[0003f8d0] 43ef 000a                 lea.l      10(a7),a1
[0003f8d4] 303c 00e5                 move.w     #$00E5,d0
[0003f8d8] 204b                      movea.l    a3,a0
[0003f8da] 4eb9 0003 8e52            jsr        $00038E52
[0003f8e0] 204d                      movea.l    a5,a0
[0003f8e2] 4eb9 0005 1292            jsr        $00051292
[0003f8e8] b07c 000a                 cmp.w      #$000A,d0
[0003f8ec] 6620                      bne.s      $0003F90E
[0003f8ee] 3014                      move.w     (a4),d0
[0003f8f0] 660a                      bne.s      $0003F8FC
[0003f8f2] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f8f8] 38a8 0018                 move.w     24(a0),(a4)
[0003f8fc] 206f 0022                 movea.l    34(a7),a0
[0003f900] 3094                      move.w     (a4),(a0)
[0003f902] 226f 0026                 movea.l    38(a7),a1
[0003f906] 32ac fffe                 move.w     -2(a4),(a1)
[0003f90a] 4243                      clr.w      d3
[0003f90c] 6002                      bra.s      $0003F910
[0003f90e] 76ff                      moveq.l    #-1,d3
[0003f910] 204d                      movea.l    a5,a0
[0003f912] 4eb9 0005 0330            jsr        $00050330
[0003f918] 206c fff8                 movea.l    -8(a4),a0
[0003f91c] 4eb9 0004 7d6c            jsr        $00047D6C
[0003f922] 3003                      move.w     d3,d0
[0003f924] 4fef 002a                 lea.l      42(a7),a7
[0003f928] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003f92c] 4e75                      rts
