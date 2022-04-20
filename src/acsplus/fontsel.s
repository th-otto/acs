
mod_height:
[0003f1f2] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003f1f6] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f1fc] 2668 025c                 movea.l    604(a0),a3
[0003f200] 4eb9 0003 9a96            jsr        Aus_editor
[0003f206] 45f9 0010 1f0e            lea.l      height,a2
[0003f20c] 302a 0002                 move.w     2(a2),d0
[0003f210] 674e                      beq.s      mod_height_1
[0003f212] 3612                      move.w     (a2),d3
[0003f214] 4852                      pea.l      (a2)
[0003f216] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f21c] 204b                      movea.l    a3,a0
[0003f21e] 7014                      moveq.l    #20,d0
[0003f220] 4eb9 0004 b0b2            jsr        Aob_scanf
[0003f226] 584f                      addq.w     #4,a7
[0003f228] b652                      cmp.w      (a2),d3
[0003f22a] 6734                      beq.s      mod_height_1
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
mod_height_1:
[0003f260] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003f264] 4e75                      rts

liveheight:
[0003f266] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003f26a] 594f                      subq.w     #4,a7
[0003f26c] 2849                      movea.l    a1,a4
[0003f26e] 45f9 0010 1f0e            lea.l      height,a2
[0003f274] 3612                      move.w     (a2),d3
[0003f276] 2648                      movea.l    a0,a3
[0003f278] 0c14 0020                 cmpi.b     #$20,(a4)
[0003f27c] 6650                      bne.s      liveheight_1
[0003f27e] 486f 0002                 pea.l      2(a7)
[0003f282] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f288] 204c                      movea.l    a4,a0
[0003f28a] 4eb9 0007 594a            jsr        sscanf
[0003f290] 584f                      addq.w     #4,a7
[0003f292] 322a fffe                 move.w     -2(a2),d1
[0003f296] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f29c] 3028 0010                 move.w     16(a0),d0
[0003f2a0] 4eb9 0006 5216            jsr        vst_font
[0003f2a6] 4857                      pea.l      (a7)
[0003f2a8] 486f 0004                 pea.l      4(a7)
[0003f2ac] 224a                      movea.l    a2,a1
[0003f2ae] 41ef 0008                 lea.l      8(a7),a0
[0003f2b2] 322f 000a                 move.w     10(a7),d1
[0003f2b6] 2879 0010 1f12            movea.l    ACSblk,a4
[0003f2bc] 302c 0010                 move.w     16(a4),d0
[0003f2c0] 4eb9 0006 5132            jsr        vst_point
[0003f2c6] 504f                      addq.w     #8,a7
[0003f2c8] 426a 0002                 clr.w      2(a2)
[0003f2cc] 601a                      bra.s      liveheight_2
liveheight_1:
[0003f2ce] 4852                      pea.l      (a2)
[0003f2d0] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f2d6] 7014                      moveq.l    #20,d0
[0003f2d8] 204b                      movea.l    a3,a0
[0003f2da] 4eb9 0004 b0b2            jsr        Aob_scanf
[0003f2e0] 584f                      addq.w     #4,a7
[0003f2e2] 357c 0001 0002            move.w     #$0001,2(a2)
liveheight_2:
[0003f2e8] b652                      cmp.w      (a2),d3
[0003f2ea] 6734                      beq.s      liveheight_3
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
liveheight_3:
[0003f320] 584f                      addq.w     #4,a7
[0003f322] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003f326] 4e75                      rts

set_font:
[0003f328] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0003f32c] 4fef ffd8                 lea.l      -40(a7),a7
[0003f330] 2448                      movea.l    a0,a2
[0003f332] 3600                      move.w     d0,d3
[0003f334] 4879 0010 1f0e            pea.l      height
[0003f33a] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f340] 7014                      moveq.l    #20,d0
[0003f342] 4eb9 0004 b0b2            jsr        Aob_scanf
[0003f348] 584f                      addq.w     #4,a7
[0003f34a] 3203                      move.w     d3,d1
[0003f34c] 48c1                      ext.l      d1
[0003f34e] 2001                      move.l     d1,d0
[0003f350] e988                      lsl.l      #4,d0
[0003f352] 9081                      sub.l      d1,d0
[0003f354] e588                      lsl.l      #2,d0
[0003f356] 2079 0010 1f06            movea.l    table,a0
[0003f35c] d1c0                      adda.l     d0,a0
[0003f35e] 2f48 0010                 move.l     a0,16(a7)
[0003f362] 33e8 0022 0010 1f0c       move.w     34(a0),fontid
[0003f36a] 43ea 00d8                 lea.l      216(a2),a1
[0003f36e] 2f49 0014                 move.l     a1,20(a7)
[0003f372] 2a69 000c                 movea.l    12(a1),a5
[0003f376] 43f9 0010 1f0c            lea.l      fontid,a1
[0003f37c] 266d 0008                 movea.l    8(a5),a3
[0003f380] 206f 0014                 movea.l    20(a7),a0
[0003f384] 303c 012c                 move.w     #$012C,d0
[0003f388] 4e93                      jsr        (a3)
[0003f38a] 43f9 0010 1f0e            lea.l      height,a1
[0003f390] 303c 012d                 move.w     #$012D,d0
[0003f394] 206f 0014                 movea.l    20(a7),a0
[0003f398] 266d 0008                 movea.l    8(a5),a3
[0003f39c] 4e93                      jsr        (a3)
[0003f39e] 4bea 0168                 lea.l      360(a2),a5
[0003f3a2] 93c9                      suba.l     a1,a1
[0003f3a4] 303c 00ce                 move.w     #$00CE,d0
[0003f3a8] 204d                      movea.l    a5,a0
[0003f3aa] 4eb9 0003 8e52            jsr        Auo_editor
[0003f3b0] 76ff                      moveq.l    #-1,d3
[0003f3b2] 3239 0010 1f0c            move.w     fontid,d1
[0003f3b8] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f3be] 3028 0010                 move.w     16(a0),d0
[0003f3c2] 4eb9 0006 5216            jsr        vst_font
[0003f3c8] 4244                      clr.w      d4
[0003f3ca] 45ef 0004                 lea.l      4(a7),a2
[0003f3ce] 47ef 0002                 lea.l      2(a7),a3
[0003f3d2] 6078                      bra.s      set_font_1
set_font_3:
[0003f3d4] 3004                      move.w     d4,d0
[0003f3d6] 48c0                      ext.l      d0
[0003f3d8] d080                      add.l      d0,d0
[0003f3da] 206f 0010                 movea.l    16(a7),a0
[0003f3de] 3a30 0824                 move.w     36(a0,d0.l),d5
[0003f3e2] 4a45                      tst.w      d5
[0003f3e4] 6f64                      ble.s      set_font_2
[0003f3e6] 3f05                      move.w     d5,-(a7)
[0003f3e8] 43f9 000c 8aa7            lea.l      $000C8AA7,a1
[0003f3ee] 204a                      movea.l    a2,a0
[0003f3f0] 4eb9 0007 5680            jsr        sprintf
[0003f3f6] 544f                      addq.w     #2,a7
[0003f3f8] 224a                      movea.l    a2,a1
[0003f3fa] 303c 00cc                 move.w     #$00CC,d0
[0003f3fe] 204d                      movea.l    a5,a0
[0003f400] 4eb9 0003 8e52            jsr        Auo_editor
[0003f406] 93c9                      suba.l     a1,a1
[0003f408] 303c 00cb                 move.w     #$00CB,d0
[0003f40c] 204d                      movea.l    a5,a0
[0003f40e] 4eb9 0003 8e52            jsr        Auo_editor
[0003f414] 4853                      pea.l      (a3)
[0003f416] 4853                      pea.l      (a3)
[0003f418] 43ef 0008                 lea.l      8(a7),a1
[0003f41c] 204b                      movea.l    a3,a0
[0003f41e] 3205                      move.w     d5,d1
[0003f420] 2879 0010 1f12            movea.l    ACSblk,a4
[0003f426] 302c 0010                 move.w     16(a4),d0
[0003f42a] 4eb9 0006 5132            jsr        vst_point
[0003f430] 504f                      addq.w     #8,a7
[0003f432] 4a43                      tst.w      d3
[0003f434] 6a14                      bpl.s      set_font_2
[0003f436] 5343                      subq.w     #1,d3
[0003f438] 3017                      move.w     (a7),d0
[0003f43a] b079 0010 1f0e            cmp.w      height,d0
[0003f440] 6608                      bne.s      set_font_2
[0003f442] 3203                      move.w     d3,d1
[0003f444] 4441                      neg.w      d1
[0003f446] 5541                      subq.w     #2,d1
[0003f448] 3601                      move.w     d1,d3
set_font_2:
[0003f44a] 5244                      addq.w     #1,d4
set_font_1:
[0003f44c] b87c 000c                 cmp.w      #$000C,d4
[0003f450] 6d00 ff82                 blt.w      set_font_3
[0003f454] 43f9 000c 8aab            lea.l      $000C8AAB,a1
[0003f45a] 303c 00cc                 move.w     #$00CC,d0
[0003f45e] 204d                      movea.l    a5,a0
[0003f460] 4eb9 0003 8e52            jsr        Auo_editor
[0003f466] 49ef 0018                 lea.l      24(a7),a4
[0003f46a] 4a43                      tst.w      d3
[0003f46c] 6a1e                      bpl.s      set_font_4
[0003f46e] 43ef 000c                 lea.l      12(a7),a1
[0003f472] 303c 00e9                 move.w     #$00E9,d0
[0003f476] 204d                      movea.l    a5,a0
[0003f478] 4eb9 0003 8e52            jsr        Auo_editor
[0003f47e] 70ff                      moveq.l    #-1,d0
[0003f480] d0af 000c                 add.l      12(a7),d0
[0003f484] 2940 0008                 move.l     d0,8(a4)
[0003f488] 2880                      move.l     d0,(a4)
[0003f48a] 600a                      bra.s      set_font_5
set_font_4:
[0003f48c] 3003                      move.w     d3,d0
[0003f48e] 48c0                      ext.l      d0
[0003f490] 2940 0008                 move.l     d0,8(a4)
[0003f494] 2880                      move.l     d0,(a4)
set_font_5:
[0003f496] 7000                      moveq.l    #0,d0
[0003f498] 2940 000c                 move.l     d0,12(a4)
[0003f49c] 2940 0004                 move.l     d0,4(a4)
[0003f4a0] 224c                      movea.l    a4,a1
[0003f4a2] 204d                      movea.l    a5,a0
[0003f4a4] 303c 00e4                 move.w     #$00E4,d0
[0003f4a8] 4eb9 0003 8e52            jsr        Auo_editor
[0003f4ae] 93c9                      suba.l     a1,a1
[0003f4b0] 303c 00db                 move.w     #$00DB,d0
[0003f4b4] 204d                      movea.l    a5,a0
[0003f4b6] 4eb9 0003 8e52            jsr        Auo_editor
[0003f4bc] 33fc 0001 0010 1f10       move.w     #$0001,pixel
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
[0003f4ea] 6046                      bra.s      livefont_1
livefont_4:
[0003f4ec] 3203                      move.w     d3,d1
[0003f4ee] 48c1                      ext.l      d1
[0003f4f0] 2001                      move.l     d1,d0
[0003f4f2] e988                      lsl.l      #4,d0
[0003f4f4] 9081                      sub.l      d1,d0
[0003f4f6] e588                      lsl.l      #2,d0
[0003f4f8] 2279 0010 1f06            movea.l    table,a1
[0003f4fe] d3c0                      adda.l     d0,a1
[0003f500] 2057                      movea.l    (a7),a0
[0003f502] 4eb9 0007 68fe            jsr        strcmp
[0003f508] 4a40                      tst.w      d0
[0003f50a] 6624                      bne.s      livefont_2
[0003f50c] 3003                      move.w     d3,d0
[0003f50e] 204a                      movea.l    a2,a0
[0003f510] 6100 fe16                 bsr        set_font
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
[0003f52e] 600a                      bra.s      livefont_3
livefont_2:
[0003f530] 5243                      addq.w     #1,d3
livefont_1:
[0003f532] b679 0010 1f0a            cmp.w      fonts,d3
[0003f538] 6db2                      blt.s      livefont_4
livefont_3:
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
[0003f56c] 23c8 0010 1f06            move.l     a0,table
[0003f572] 6606                      bne.s      get_fontinfo_1
[0003f574] 4240                      clr.w      d0
[0003f576] 6000 017e                 bra        get_fontinfo_2
get_fontinfo_1:
[0003f57a] 4eb9 0004 9902            jsr        Amo_busy
[0003f580] 2679 0010 1f06            movea.l    table,a3
[0003f586] 33fc 0001 0010 1f0a       move.w     #$0001,fonts
[0003f58e] 7601                      moveq.l    #1,d3
[0003f590] 4bef 0084                 lea.l      132(a7),a5
[0003f594] 49ef 0080                 lea.l      128(a7),a4
[0003f598] 6000 014a                 bra        get_fontinfo_3
get_fontinfo_17:
[0003f59c] 204b                      movea.l    a3,a0
[0003f59e] 3203                      move.w     d3,d1
[0003f5a0] 2252                      movea.l    (a2),a1
[0003f5a2] 3029 0010                 move.w     16(a1),d0
[0003f5a6] 4eb9 0006 7464            jsr        vqt_name
[0003f5ac] 3740 0022                 move.w     d0,34(a3)
[0003f5b0] 3200                      move.w     d0,d1
[0003f5b2] 2052                      movea.l    (a2),a0
[0003f5b4] 3028 0010                 move.w     16(a0),d0
[0003f5b8] 4eb9 0006 5216            jsr        vst_font
[0003f5be] 4855                      pea.l      (a5)
[0003f5c0] 4855                      pea.l      (a5)
[0003f5c2] 224d                      movea.l    a5,a1
[0003f5c4] 204d                      movea.l    a5,a0
[0003f5c6] 323c 00c8                 move.w     #$00C8,d1
[0003f5ca] 2c52                      movea.l    (a2),a6
[0003f5cc] 302e 0010                 move.w     16(a6),d0
[0003f5d0] 4eb9 0006 5132            jsr        vst_point
[0003f5d6] 504f                      addq.w     #8,a7
[0003f5d8] 3800                      move.w     d0,d4
[0003f5da] b07c 00c8                 cmp.w      #$00C8,d0
[0003f5de] 6e00 0102                 bgt        get_fontinfo_4
[0003f5e2] 5340                      subq.w     #1,d0
[0003f5e4] 6d00 00fc                 blt        get_fontinfo_4
[0003f5e8] 4a45                      tst.w      d5
[0003f5ea] 6600 0080                 bne        get_fontinfo_5
[0003f5ee] 486f 0074                 pea.l      116(a7)
[0003f5f2] 486f 0082                 pea.l      130(a7)
[0003f5f6] 486f 007c                 pea.l      124(a7)
[0003f5fa] 224c                      movea.l    a4,a1
[0003f5fc] 41ef 008e                 lea.l      142(a7),a0
[0003f600] 2c52                      movea.l    (a2),a6
[0003f602] 302e 0010                 move.w     16(a6),d0
[0003f606] 4eb9 0006 770e            jsr        vqt_fontinfo
[0003f60c] 4fef 000c                 lea.l      12(a7),a7
[0003f610] 4255                      clr.w      (a5)
[0003f612] 0c6f 0020 0082            cmpi.w     #$0020,130(a7)
[0003f618] 6c04                      bge.s      get_fontinfo_6
[0003f61a] 7c20                      moveq.l    #32,d6
[0003f61c] 6004                      bra.s      get_fontinfo_7
get_fontinfo_6:
[0003f61e] 3c2f 0082                 move.w     130(a7),d6
get_fontinfo_7:
[0003f622] 600a                      bra.s      get_fontinfo_8
get_fontinfo_11:
[0003f624] 3015                      move.w     (a5),d0
[0003f626] 1f86 0000                 move.b     d6,0(a7,d0.w)
[0003f62a] 5255                      addq.w     #1,(a5)
[0003f62c] 5246                      addq.w     #1,d6
get_fontinfo_8:
[0003f62e] 0c54 0080                 cmpi.w     #$0080,(a4)
[0003f632] 6c04                      bge.s      get_fontinfo_9
[0003f634] 3014                      move.w     (a4),d0
[0003f636] 6004                      bra.s      get_fontinfo_10
get_fontinfo_9:
[0003f638] 303c 0080                 move.w     #$0080,d0
get_fontinfo_10:
[0003f63c] bc40                      cmp.w      d0,d6
[0003f63e] 6fe4                      ble.s      get_fontinfo_11
[0003f640] 3015                      move.w     (a5),d0
[0003f642] 4237 0000                 clr.b      0(a7,d0.w)
[0003f646] 43ef 0064                 lea.l      100(a7),a1
[0003f64a] 41d7                      lea.l      (a7),a0
[0003f64c] 2c52                      movea.l    (a2),a6
[0003f64e] 302e 0010                 move.w     16(a6),d0
[0003f652] 4eb9 0006 732e            jsr        vqt_extent
[0003f658] 302f 0068                 move.w     104(a7),d0
[0003f65c] d06f 0064                 add.w      100(a7),d0
[0003f660] 48c0                      ext.l      d0
[0003f662] 81d5                      divs.w     (a5),d0
[0003f664] b06f 007e                 cmp.w      126(a7),d0
[0003f668] 6600 0078                 bne.w      get_fontinfo_4
get_fontinfo_5:
[0003f66c] b67c 0001                 cmp.w      #$0001,d3
[0003f670] 6f10                      ble.s      get_fontinfo_12
[0003f672] 93c9                      suba.l     a1,a1
[0003f674] 303c 00cb                 move.w     #$00CB,d0
[0003f678] 206f 0086                 movea.l    134(a7),a0
[0003f67c] 4eb9 0003 8e52            jsr        Auo_editor
get_fontinfo_12:
[0003f682] 224b                      movea.l    a3,a1
[0003f684] 303c 00cc                 move.w     #$00CC,d0
[0003f688] 206f 0086                 movea.l    134(a7),a0
[0003f68c] 4eb9 0003 8e52            jsr        Auo_editor
[0003f692] 3e3c 00c8                 move.w     #$00C8,d7
[0003f696] 7c0b                      moveq.l    #11,d6
[0003f698] 603a                      bra.s      get_fontinfo_13
get_fontinfo_16:
[0003f69a] 4855                      pea.l      (a5)
[0003f69c] 4855                      pea.l      (a5)
[0003f69e] 224d                      movea.l    a5,a1
[0003f6a0] 204d                      movea.l    a5,a0
[0003f6a2] 72ff                      moveq.l    #-1,d1
[0003f6a4] d247                      add.w      d7,d1
[0003f6a6] 2c52                      movea.l    (a2),a6
[0003f6a8] 302e 0010                 move.w     16(a6),d0
[0003f6ac] 4eb9 0006 5132            jsr        vst_point
[0003f6b2] 504f                      addq.w     #8,a7
[0003f6b4] 3800                      move.w     d0,d4
[0003f6b6] b047                      cmp.w      d7,d0
[0003f6b8] 660c                      bne.s      get_fontinfo_14
[0003f6ba] 3206                      move.w     d6,d1
[0003f6bc] 48c1                      ext.l      d1
[0003f6be] d281                      add.l      d1,d1
[0003f6c0] 4273 1824                 clr.w      36(a3,d1.l)
[0003f6c4] 600c                      bra.s      get_fontinfo_15
get_fontinfo_14:
[0003f6c6] 3006                      move.w     d6,d0
[0003f6c8] 48c0                      ext.l      d0
[0003f6ca] d080                      add.l      d0,d0
[0003f6cc] 3784 0824                 move.w     d4,36(a3,d0.l)
[0003f6d0] 3e04                      move.w     d4,d7
get_fontinfo_15:
[0003f6d2] 5346                      subq.w     #1,d6
get_fontinfo_13:
[0003f6d4] 4a46                      tst.w      d6
[0003f6d6] 6ac2                      bpl.s      get_fontinfo_16
[0003f6d8] 5279 0010 1f0a            addq.w     #1,fonts
[0003f6de] 47eb 003c                 lea.l      60(a3),a3
get_fontinfo_4:
[0003f6e2] 5243                      addq.w     #1,d3
get_fontinfo_3:
[0003f6e4] 2052                      movea.l    (a2),a0
[0003f6e6] b668 0284                 cmp.w      644(a0),d3
[0003f6ea] 6f00 feb0                 ble        get_fontinfo_17
[0003f6ee] 4eb9 0004 9940            jsr        Amo_unbusy
[0003f6f4] 7001                      moveq.l    #1,d0
get_fontinfo_2:
[0003f6f6] 4fef 008a                 lea.l      138(a7),a7
[0003f6fa] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0003f6fe] 4e75                      rts

serv_wi_font:
[0003f700] 2f0a                      move.l     a2,-(a7)
[0003f702] 2448                      movea.l    a0,a2
[0003f704] 3200                      move.w     d0,d1
[0003f706] 5541                      subq.w     #2,d1
[0003f708] 6708                      beq.s      serv_wi_font_1
[0003f70a] 927c 0018                 sub.w      #$0018,d1
[0003f70e] 670c                      beq.s      serv_wi_font_2
[0003f710] 602c                      bra.s      serv_wi_font_3
serv_wi_font_1:
[0003f712] 204a                      movea.l    a2,a0
[0003f714] 4eb9 0005 0330            jsr        Awi_delete
[0003f71a] 6026                      bra.s      serv_wi_font_4
serv_wi_font_2:
[0003f71c] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f722] 214a 0258                 move.l     a2,600(a0)
[0003f726] 206a 0014                 movea.l    20(a2),a0
[0003f72a] 41e8 0168                 lea.l      360(a0),a0
[0003f72e] 2448                      movea.l    a0,a2
[0003f730] 93c9                      suba.l     a1,a1
[0003f732] 303c 00e6                 move.w     #$00E6,d0
[0003f736] 4eb9 0003 8e52            jsr        Auo_editor
[0003f73c] 6004                      bra.s      serv_wi_font_4
serv_wi_font_3:
[0003f73e] 4240                      clr.w      d0
[0003f740] 6002                      bra.s      serv_wi_font_5
serv_wi_font_4:
[0003f742] 7001                      moveq.l    #1,d0
serv_wi_font_5:
[0003f744] 245f                      movea.l    (a7)+,a2
[0003f746] 4e75                      rts

A_fontsel:
[0003f748] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003f74c] 4fef ffd6                 lea.l      -42(a7),a7
[0003f750] 2f48 0026                 move.l     a0,38(a7)
[0003f754] 2f49 0022                 move.l     a1,34(a7)
[0003f758] 3600                      move.w     d0,d3
[0003f75a] 49f9 0010 1f0e            lea.l      height,a4
[0003f760] 206f 0026                 movea.l    38(a7),a0
[0003f764] 3950 fffe                 move.w     (a0),-2(a4)
[0003f768] 226f 0022                 movea.l    34(a7),a1
[0003f76c] 3891                      move.w     (a1),(a4)
[0003f76e] 41f9 000c 8a02            lea.l      WI_FONTSEL,a0
[0003f774] 2279 000c 8a0a            movea.l    $000C8A0A,a1
[0003f77a] 4e91                      jsr        (a1)
[0003f77c] 2a48                      movea.l    a0,a5
[0003f77e] 200d                      move.l     a5,d0
[0003f780] 671c                      beq.s      A_fontsel_1
[0003f782] 266d 0014                 movea.l    20(a5),a3
[0003f786] 47eb 0048                 lea.l      72(a3),a3
[0003f78a] 3003                      move.w     d3,d0
[0003f78c] 204b                      movea.l    a3,a0
[0003f78e] 6100 fdb2                 bsr        get_fontinfo
[0003f792] 4a40                      tst.w      d0
[0003f794] 660e                      bne.s      A_fontsel_2
[0003f796] 204d                      movea.l    a5,a0
[0003f798] 4eb9 0005 0330            jsr        Awi_delete
A_fontsel_1:
[0003f79e] 70ff                      moveq.l    #-1,d0
[0003f7a0] 6000 0182                 bra        A_fontsel_3
A_fontsel_2:
[0003f7a4] 3f14                      move.w     (a4),-(a7)
[0003f7a6] 43f9 000c 8aa4            lea.l      $000C8AA4,a1
[0003f7ac] 7014                      moveq.l    #20,d0
[0003f7ae] 206d 0014                 movea.l    20(a5),a0
[0003f7b2] 4eb9 0004 afac            jsr        Aob_printf
[0003f7b8] 544f                      addq.w     #2,a7
[0003f7ba] 93c9                      suba.l     a1,a1
[0003f7bc] 303c 00dc                 move.w     #$00DC,d0
[0003f7c0] 204b                      movea.l    a3,a0
[0003f7c2] 4eb9 0003 8e52            jsr        Auo_editor
[0003f7c8] 76ff                      moveq.l    #-1,d3
[0003f7ca] d66c fffc                 add.w      -4(a4),d3
[0003f7ce] 6002                      bra.s      A_fontsel_4
A_fontsel_6:
[0003f7d0] 5343                      subq.w     #1,d3
A_fontsel_4:
[0003f7d2] 4a43                      tst.w      d3
[0003f7d4] 6f1a                      ble.s      A_fontsel_5
[0003f7d6] 3203                      move.w     d3,d1
[0003f7d8] 48c1                      ext.l      d1
[0003f7da] 2001                      move.l     d1,d0
[0003f7dc] e988                      lsl.l      #4,d0
[0003f7de] 9081                      sub.l      d1,d0
[0003f7e0] e588                      lsl.l      #2,d0
[0003f7e2] 206c fff8                 movea.l    -8(a4),a0
[0003f7e6] 342c fffe                 move.w     -2(a4),d2
[0003f7ea] b470 0822                 cmp.w      34(a0,d0.l),d2
[0003f7ee] 66e0                      bne.s      A_fontsel_6
A_fontsel_5:
[0003f7f0] 3003                      move.w     d3,d0
[0003f7f2] 206d 0014                 movea.l    20(a5),a0
[0003f7f6] 6100 fb30                 bsr        set_font
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
[0003f81a] 4eb9 0003 8e52            jsr        Auo_editor
[0003f820] 224a                      movea.l    a2,a1
[0003f822] 303c 00e4                 move.w     #$00E4,d0
[0003f826] 204b                      movea.l    a3,a0
[0003f828] 4eb9 0003 8e52            jsr        Auo_editor
[0003f82e] 2e8d                      move.l     a5,(a7)
[0003f830] 2f4b 0004                 move.l     a3,4(a7)
[0003f834] 3f7c 0003 0008            move.w     #$0003,8(a7)
[0003f83a] 43d7                      lea.l      (a7),a1
[0003f83c] 7009                      moveq.l    #9,d0
[0003f83e] 204b                      movea.l    a3,a0
[0003f840] 4eb9 0003 8e52            jsr        Auo_editor
[0003f846] 206d 0014                 movea.l    20(a5),a0
[0003f84a] 41e8 0078                 lea.l      120(a0),a0
[0003f84e] 2f48 0004                 move.l     a0,4(a7)
[0003f852] 3f7c 0005 0008            move.w     #$0005,8(a7)
[0003f858] 43d7                      lea.l      (a7),a1
[0003f85a] 303c 00c8                 move.w     #$00C8,d0
[0003f85e] 204b                      movea.l    a3,a0
[0003f860] 4eb9 0003 8e52            jsr        Auo_editor
[0003f866] 2f7c 0003 f4ce 000a       move.l     #livefont,10(a7)
[0003f86e] 2f6d 0014 000e            move.l     20(a5),14(a7)
[0003f874] 43ef 000a                 lea.l      10(a7),a1
[0003f878] 303c 00e5                 move.w     #$00E5,d0
[0003f87c] 204b                      movea.l    a3,a0
[0003f87e] 4eb9 0003 8e52            jsr        Auo_editor
[0003f884] 266d 0014                 movea.l    20(a5),a3
[0003f888] 47eb 0168                 lea.l      360(a3),a3
[0003f88c] 2f4b 0004                 move.l     a3,4(a7)
[0003f890] 3f7c 000f 0008            move.w     #$000F,8(a7)
[0003f896] 43d7                      lea.l      (a7),a1
[0003f898] 7009                      moveq.l    #9,d0
[0003f89a] 204b                      movea.l    a3,a0
[0003f89c] 4eb9 0003 8e52            jsr        Auo_editor
[0003f8a2] 206d 0014                 movea.l    20(a5),a0
[0003f8a6] 41e8 0198                 lea.l      408(a0),a0
[0003f8aa] 2f48 0004                 move.l     a0,4(a7)
[0003f8ae] 3f7c 0011 0008            move.w     #$0011,8(a7)
[0003f8b4] 43d7                      lea.l      (a7),a1
[0003f8b6] 303c 00c8                 move.w     #$00C8,d0
[0003f8ba] 204b                      movea.l    a3,a0
[0003f8bc] 4eb9 0003 8e52            jsr        Auo_editor
[0003f8c2] 2f7c 0003 f266 000a       move.l     #liveheight,10(a7)
[0003f8ca] 2f6d 0014 000e            move.l     20(a5),14(a7)
[0003f8d0] 43ef 000a                 lea.l      10(a7),a1
[0003f8d4] 303c 00e5                 move.w     #$00E5,d0
[0003f8d8] 204b                      movea.l    a3,a0
[0003f8da] 4eb9 0003 8e52            jsr        Auo_editor
[0003f8e0] 204d                      movea.l    a5,a0
[0003f8e2] 4eb9 0005 1292            jsr        Awi_dialog
[0003f8e8] b07c 000a                 cmp.w      #$000A,d0
[0003f8ec] 6620                      bne.s      A_fontsel_7
[0003f8ee] 3014                      move.w     (a4),d0
[0003f8f0] 660a                      bne.s      A_fontsel_8
[0003f8f2] 2079 0010 1f12            movea.l    ACSblk,a0
[0003f8f8] 38a8 0018                 move.w     24(a0),(a4)
A_fontsel_8:
[0003f8fc] 206f 0022                 movea.l    34(a7),a0
[0003f900] 3094                      move.w     (a4),(a0)
[0003f902] 226f 0026                 movea.l    38(a7),a1
[0003f906] 32ac fffe                 move.w     -2(a4),(a1)
[0003f90a] 4243                      clr.w      d3
[0003f90c] 6002                      bra.s      A_fontsel_9
A_fontsel_7:
[0003f90e] 76ff                      moveq.l    #-1,d3
A_fontsel_9:
[0003f910] 204d                      movea.l    a5,a0
[0003f912] 4eb9 0005 0330            jsr        Awi_delete
[0003f918] 206c fff8                 movea.l    -8(a4),a0
[0003f91c] 4eb9 0004 7d6c            jsr        Ax_ifree
[0003f922] 3003                      move.w     d3,d0
A_fontsel_3:
[0003f924] 4fef 002a                 lea.l      42(a7),a7
[0003f928] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003f92c] 4e75                      rts

		.data

TEXT_002:
[000c865c]                           dc.b $00
TEXT_01:
[000c865d]                           dc.b 'ÑîÅéôöû The quick brown fox jumps over the lazy dog',0
TEXT_013:
[000c8691]                           dc.b $4f
[000c8692]                           dc.w $4b00
TEXT_02:
[000c8694]                           dc.b 'Pixel:',0
TEXT_026:
[000c869b]                           dc.b 'Abbruch',0
TEXT_03:
[000c86a3]                           dc.b 'Hîhe:',0
TEXT_04:
[000c86a9]                           dc.b 'Schrift:',0
TEXT_05:
[000c86b2]                           dc.b 'Test:',0
TEXT_06:
[000c86b8]                           dc.b ' Schrift-Auswahl ',0
A_3DBUTTON02:
[000c86ca] 0005a4e2                  dc.l A_3Dbutton
[000c86ce]                           dc.w $29f1
[000c86d0]                           dc.b $01
[000c86d1]                           dc.b $78
[000c86d2] 00059318                  dc.l Auo_string
[000c86d6]                           dc.b $00
[000c86d7]                           dc.b $00
[000c86d8]                           dc.b $00
[000c86d9]                           dc.b $00
[000c86da]                           dc.b $00
[000c86db]                           dc.b $00
[000c86dc]                           dc.b $00
[000c86dd]                           dc.b $00
[000c86de]                           dc.b $00
[000c86df]                           dc.b $00
[000c86e0]                           dc.b $00
[000c86e1]                           dc.b $00
[000c86e2]                           dc.b $00
[000c86e3]                           dc.b $00
[000c86e4]                           dc.b $00
[000c86e5]                           dc.b $00
[000c86e6]                           dc.b $00
[000c86e7]                           dc.b $00
[000c86e8]                           dc.b $00
[000c86e9]                           dc.b $00
A_3DBUTTON03:
[000c86ea] 0005a4e2                  dc.l A_3Dbutton
[000c86ee]                           dc.w $29c1
[000c86f0]                           dc.w $0178
[000c86f2] 00059318                  dc.l Auo_string
[000c86f6] 000c869b                  dc.l TEXT_026
[000c86fa]                           dc.b $00
[000c86fb]                           dc.b $00
[000c86fc]                           dc.b $00
[000c86fd]                           dc.b $00
[000c86fe]                           dc.b $00
[000c86ff]                           dc.b $00
[000c8700]                           dc.b $00
[000c8701]                           dc.b $00
[000c8702]                           dc.b $00
[000c8703]                           dc.b $00
[000c8704]                           dc.b $00
[000c8705]                           dc.b $00
[000c8706]                           dc.b $00
[000c8707]                           dc.b $00
[000c8708]                           dc.b $00
[000c8709]                           dc.b $00
A_3DBUTTON06:
[000c870a] 0005a4e2                  dc.l A_3Dbutton
[000c870e]                           dc.w $29c1
[000c8710]                           dc.w $0178
[000c8712] 00059318                  dc.l Auo_string
[000c8716] 000c8691                  dc.l TEXT_013
[000c871a]                           dc.b $00
[000c871b]                           dc.b $00
[000c871c]                           dc.b $00
[000c871d]                           dc.b $00
[000c871e]                           dc.b $00
[000c871f]                           dc.b $00
[000c8720]                           dc.b $00
[000c8721]                           dc.b $00
[000c8722]                           dc.b $00
[000c8723]                           dc.b $00
[000c8724]                           dc.b $00
[000c8725]                           dc.b $00
[000c8726]                           dc.b $00
[000c8727]                           dc.b $00
[000c8728]                           dc.b $00
[000c8729]                           dc.b $00
A_BOXED02:
[000c872a] 0005e9d2                  dc.l A_boxed
[000c872e]                           dc.w $9070
[000c8730]                           dc.w $0512
[000c8732] 0005e010                  dc.l Auo_boxed
[000c8736]                           dc.b $00
[000c8737]                           dc.b $00
[000c8738]                           dc.b $00
[000c8739]                           dc.b $00
[000c873a]                           dc.b $00
[000c873b]                           dc.b $00
[000c873c]                           dc.b $00
[000c873d]                           dc.b $00
[000c873e]                           dc.b $00
[000c873f]                           dc.b $00
[000c8740]                           dc.b $00
[000c8741]                           dc.b $00
[000c8742]                           dc.b $00
[000c8743]                           dc.b $00
[000c8744]                           dc.b $00
[000c8745]                           dc.b $00
[000c8746]                           dc.b $00
[000c8747]                           dc.b $00
[000c8748]                           dc.b $00
[000c8749]                           dc.b $00
A_EDITOR01:
[000c874a] 000362da                  dc.l A_editor
[000c874e]                           dc.b $00
[000c874f]                           dc.b $00
[000c8750]                           dc.b $00
[000c8751]                           dc.b $00
[000c8752] 00038e52                  dc.l Auo_editor
[000c8756]                           dc.b $00
[000c8757]                           dc.b $00
[000c8758]                           dc.b $00
[000c8759]                           dc.b $00
[000c875a]                           dc.b $00
[000c875b]                           dc.b $00
[000c875c]                           dc.b $00
[000c875d]                           dc.b $00
[000c875e]                           dc.b $00
[000c875f]                           dc.b $00
[000c8760]                           dc.b $00
[000c8761]                           dc.b $00
[000c8762]                           dc.b $00
[000c8763]                           dc.b $00
[000c8764]                           dc.b $00
[000c8765]                           dc.b $00
[000c8766]                           dc.b $00
[000c8767]                           dc.b $00
[000c8768]                           dc.b $00
[000c8769]                           dc.b $00
A_FTEXT01:
[000c876a] 0005b6f4                  dc.l A_ftext
[000c876e]                           dc.b $00
[000c876f]                           dc.b $01
[000c8770]                           dc.b $00
[000c8771]                           dc.b $0d
[000c8772] 0005bae4                  dc.l Auo_ftext
[000c8776] 000c865d                  dc.l TEXT_01
[000c877a]                           dc.b $00
[000c877b]                           dc.b $00
[000c877c]                           dc.b $00
[000c877d]                           dc.b $00
[000c877e]                           dc.b $00
[000c877f]                           dc.b $00
[000c8780]                           dc.b $00
[000c8781]                           dc.b $00
[000c8782]                           dc.b $00
[000c8783]                           dc.b $00
[000c8784]                           dc.b $00
[000c8785]                           dc.b $00
[000c8786]                           dc.b $00
[000c8787]                           dc.b $00
[000c8788]                           dc.b $00
[000c8789]                           dc.b $00
A_INNERFRAME02:
[000c878a] 00059f9c                  dc.l A_innerframe
[000c878e]                           dc.b $10
[000c878f]                           dc.b $00
[000c8790]                           dc.w $8f19
[000c8792] 00059318                  dc.l Auo_string
[000c8796] 000c86a9                  dc.l TEXT_04
[000c879a]                           dc.b $00
[000c879b]                           dc.b $00
[000c879c]                           dc.b $00
[000c879d]                           dc.b $00
[000c879e]                           dc.b $00
[000c879f]                           dc.b $00
[000c87a0]                           dc.b $00
[000c87a1]                           dc.b $00
[000c87a2]                           dc.b $00
[000c87a3]                           dc.b $00
[000c87a4]                           dc.b $00
[000c87a5]                           dc.b $00
[000c87a6]                           dc.b $00
[000c87a7]                           dc.b $00
[000c87a8]                           dc.b $00
[000c87a9]                           dc.b $00
A_INNERFRAME03:
[000c87aa] 00059f9c                  dc.l A_innerframe
[000c87ae]                           dc.w $1000
[000c87b0]                           dc.w $8f19
[000c87b2] 00059318                  dc.l Auo_string
[000c87b6] 000c86a3                  dc.l TEXT_03
[000c87ba]                           dc.b $00
[000c87bb]                           dc.b $00
[000c87bc]                           dc.b $00
[000c87bd]                           dc.b $00
[000c87be]                           dc.b $00
[000c87bf]                           dc.b $00
[000c87c0]                           dc.b $00
[000c87c1]                           dc.b $00
[000c87c2]                           dc.b $00
[000c87c3]                           dc.b $00
[000c87c4]                           dc.b $00
[000c87c5]                           dc.b $00
[000c87c6]                           dc.b $00
[000c87c7]                           dc.b $00
[000c87c8]                           dc.b $00
[000c87c9]                           dc.b $00
A_INNERFRAME04:
[000c87ca] 00059f9c                  dc.l A_innerframe
[000c87ce]                           dc.w $1000
[000c87d0]                           dc.w $8f19
[000c87d2] 00059318                  dc.l Auo_string
[000c87d6] 000c86b2                  dc.l TEXT_05
[000c87da]                           dc.b $00
[000c87db]                           dc.b $00
[000c87dc]                           dc.b $00
[000c87dd]                           dc.b $00
[000c87de]                           dc.b $00
[000c87df]                           dc.b $00
[000c87e0]                           dc.b $00
[000c87e1]                           dc.b $00
[000c87e2]                           dc.b $00
[000c87e3]                           dc.b $00
[000c87e4]                           dc.b $00
[000c87e5]                           dc.b $00
[000c87e6]                           dc.b $00
[000c87e7]                           dc.b $00
[000c87e8]                           dc.b $00
[000c87e9]                           dc.b $00
A_SLIDER01:
[000c87ea] 00035008                  dc.l A_slider
[000c87ee]                           dc.b $00
[000c87ef]                           dc.b $00
[000c87f0]                           dc.b $00
[000c87f1]                           dc.b $03
[000c87f2] 0003589a                  dc.l Auo_slider
[000c87f6]                           dc.b $00
[000c87f7]                           dc.b $00
[000c87f8]                           dc.b $00
[000c87f9]                           dc.b $00
[000c87fa]                           dc.b $00
[000c87fb]                           dc.b $00
[000c87fc]                           dc.b $00
[000c87fd]                           dc.b $00
[000c87fe]                           dc.b $00
[000c87ff]                           dc.b $00
[000c8800]                           dc.b $00
[000c8801]                           dc.b $00
[000c8802]                           dc.b $00
[000c8803]                           dc.b $00
[000c8804]                           dc.b $00
[000c8805]                           dc.b $00
[000c8806]                           dc.b $00
[000c8807]                           dc.b $00
[000c8808]                           dc.b $00
[000c8809]                           dc.b $00
FONTSEL:
[000c880a]                           dc.w $ffff
[000c880c]                           dc.b $00
[000c880d]                           dc.b $01
[000c880e]                           dc.b $00
[000c880f]                           dc.b $01
[000c8810]                           dc.b $00
[000c8811]                           dc.b $19
[000c8812]                           dc.b $00
[000c8813]                           dc.b $00
[000c8814]                           dc.b $00
[000c8815]                           dc.b $00
[000c8816]                           dc.b $00
[000c8817]                           dc.b $ff
[000c8818]                           dc.w $1100
[000c881a]                           dc.b $00
[000c881b]                           dc.b $00
[000c881c]                           dc.b $00
[000c881d]                           dc.b $00
[000c881e]                           dc.b $00
[000c881f]                           dc.b $2e
[000c8820]                           dc.b $00
[000c8821]                           dc.b $11
_01_FONTSEL:
[000c8822]                           dc.b $00
[000c8823]                           dc.b $00
[000c8824]                           dc.b $00
[000c8825]                           dc.b $02
[000c8826]                           dc.b $00
[000c8827]                           dc.b $0e
[000c8828]                           dc.b $00
[000c8829]                           dc.b $18
[000c882a]                           dc.b $00
[000c882b]                           dc.b $40
[000c882c]                           dc.b $00
[000c882d]                           dc.b $10
[000c882e] 000c86ca                  dc.l A_3DBUTTON02
[000c8832]                           dc.b $00
[000c8833]                           dc.b $00
[000c8834]                           dc.b $00
[000c8835]                           dc.b $00
[000c8836]                           dc.b $00
[000c8837]                           dc.b $2e
[000c8838]                           dc.b $00
[000c8839]                           dc.b $11
_02_FONTSEL:
[000c883a]                           dc.b $00
[000c883b]                           dc.b $07
[000c883c]                           dc.b $00
[000c883d]                           dc.b $03
[000c883e]                           dc.b $00
[000c883f]                           dc.b $05
[000c8840]                           dc.b $00
[000c8841]                           dc.b $18
[000c8842]                           dc.b $00
[000c8843]                           dc.b $40
[000c8844]                           dc.b $00
[000c8845]                           dc.b $00
[000c8846] 000c878a                  dc.l A_INNERFRAME02
[000c884a]                           dc.b $00
[000c884b]                           dc.b $01
[000c884c]                           dc.b $00
[000c884d]                           dc.b $01
[000c884e]                           dc.b $00
[000c884f]                           dc.b $21
[000c8850]                           dc.b $00
[000c8851]                           dc.b $09
_03_FONTSEL:
[000c8852]                           dc.b $00
[000c8853]                           dc.b $05
[000c8854]                           dc.w $ffff
[000c8856]                           dc.w $ffff
[000c8858]                           dc.b $00
[000c8859]                           dc.b $18
[000c885a]                           dc.b $00
[000c885b]                           dc.b $40
[000c885c]                           dc.b $00
[000c885d]                           dc.b $00
[000c885e] 000c874a                  dc.l A_EDITOR01
[000c8862]                           dc.b $00
[000c8863]                           dc.b $01
[000c8864]                           dc.b $00
[000c8865]                           dc.b $01
[000c8866]                           dc.b $00
[000c8867]                           dc.b $1d
[000c8868]                           dc.b $00
[000c8869]                           dc.b $07
_03aFONTSEL:
[000c886a] 00039a96                  dc.l Aus_editor
[000c886e]                           dc.b $00
[000c886f]                           dc.b $00
[000c8870]                           dc.b $00
[000c8871]                           dc.b $00
[000c8872]                           dc.w $8000
[000c8874]                           dc.b $00
[000c8875]                           dc.b $00
[000c8876]                           dc.b $00
[000c8877]                           dc.b $00
[000c8878]                           dc.b $00
[000c8879]                           dc.b $00
[000c887a]                           dc.b $00
[000c887b]                           dc.b $00
[000c887c]                           dc.b $00
[000c887d]                           dc.b $00
[000c887e]                           dc.b $00
[000c887f]                           dc.b $00
[000c8880]                           dc.b $00
[000c8881]                           dc.b $00
_05_FONTSEL:
[000c8882]                           dc.b $00
[000c8883]                           dc.b $02
[000c8884]                           dc.w $ffff
[000c8886]                           dc.w $ffff
[000c8888]                           dc.b $00
[000c8889]                           dc.b $18
[000c888a]                           dc.b $00
[000c888b]                           dc.b $40
[000c888c]                           dc.b $00
[000c888d]                           dc.b $00
[000c888e] 000c87ea                  dc.l A_SLIDER01
[000c8892]                           dc.b $00
[000c8893]                           dc.b $1e
[000c8894]                           dc.b $00
[000c8895]                           dc.b $01
[000c8896]                           dc.b $00
[000c8897]                           dc.b $02
[000c8898]                           dc.b $00
[000c8899]                           dc.b $07
_05aFONTSEL:
[000c889a] 00035cb6                  dc.l Aus_slider
[000c889e]                           dc.b $00
[000c889f]                           dc.b $00
[000c88a0]                           dc.b $00
[000c88a1]                           dc.b $00
[000c88a2]                           dc.w $8000
[000c88a4]                           dc.b $00
[000c88a5]                           dc.b $00
[000c88a6]                           dc.b $00
[000c88a7]                           dc.b $00
[000c88a8]                           dc.b $00
[000c88a9]                           dc.b $00
[000c88aa]                           dc.b $00
[000c88ab]                           dc.b $00
[000c88ac]                           dc.b $00
[000c88ad]                           dc.b $00
[000c88ae]                           dc.b $00
[000c88af]                           dc.b $00
[000c88b0]                           dc.b $00
[000c88b1]                           dc.b $00
_07_FONTSEL:
[000c88b2]                           dc.b $00
[000c88b3]                           dc.b $0a
[000c88b4]                           dc.b $00
[000c88b5]                           dc.b $08
[000c88b6]                           dc.b $00
[000c88b7]                           dc.b $08
[000c88b8]                           dc.b $00
[000c88b9]                           dc.b $18
[000c88ba]                           dc.b $00
[000c88bb]                           dc.b $40
[000c88bc]                           dc.b $00
[000c88bd]                           dc.b $00
[000c88be] 000c87ca                  dc.l A_INNERFRAME04
[000c88c2]                           dc.b $00
[000c88c3]                           dc.b $01
[000c88c4]                           dc.b $00
[000c88c5]                           dc.b $0a
[000c88c6]                           dc.b $00
[000c88c7]                           dc.b $2c
[000c88c8]                           dc.b $00
[000c88c9]                           dc.b $04
_08_FONTSEL:
[000c88ca]                           dc.b $00
[000c88cb]                           dc.b $07
[000c88cc]                           dc.b $00
[000c88cd]                           dc.b $09
[000c88ce]                           dc.b $00
[000c88cf]                           dc.b $09
[000c88d0]                           dc.b $00
[000c88d1]                           dc.b $14
[000c88d2]                           dc.b $00
[000c88d3]                           dc.b $40
[000c88d4]                           dc.w $0500
[000c88d6]                           dc.b $00
[000c88d7]                           dc.b $00
[000c88d8]                           dc.w $1101
[000c88da]                           dc.b $00
[000c88db]                           dc.b $01
[000c88dc]                           dc.b $00
[000c88dd]                           dc.b $01
[000c88de]                           dc.b $00
[000c88df]                           dc.b $2a
[000c88e0]                           dc.b $00
[000c88e1]                           dc.b $02
_09_FONTSEL:
[000c88e2]                           dc.b $00
[000c88e3]                           dc.b $08
[000c88e4]                           dc.w $ffff
[000c88e6]                           dc.w $ffff
[000c88e8]                           dc.b $00
[000c88e9]                           dc.b $18
[000c88ea]                           dc.b $00
[000c88eb]                           dc.b $40
[000c88ec]                           dc.w $0500
[000c88ee] 000c876a                  dc.l A_FTEXT01
[000c88f2]                           dc.b $00
[000c88f3]                           dc.b $01
[000c88f4]                           dc.b $00
[000c88f5]                           dc.b $00
[000c88f6]                           dc.b $00
[000c88f7]                           dc.b $28
[000c88f8]                           dc.b $00
[000c88f9]                           dc.b $02
_10_FONTSEL:
[000c88fa]                           dc.b $00
[000c88fb]                           dc.b $0c
[000c88fc]                           dc.b $ff
[000c88fd]                           dc.b $ff
[000c88fe]                           dc.w $ffff
[000c8900]                           dc.b $00
[000c8901]                           dc.b $18
[000c8902]                           dc.w $4007
[000c8904]                           dc.b $00
[000c8905]                           dc.b $10
[000c8906] 000c870a                  dc.l A_3DBUTTON06
[000c890a]                           dc.b $00
[000c890b]                           dc.b $0a
[000c890c]                           dc.b $00
[000c890d]                           dc.b $0e
[000c890e]                           dc.b $00
[000c890f]                           dc.b $0c
[000c8910]                           dc.b $00
[000c8911]                           dc.b $02
_10aFONTSEL:
[000c8912]                           dc.b $00
[000c8913]                           dc.b $00
[000c8914]                           dc.b $00
[000c8915]                           dc.b $00
[000c8916]                           dc.b $00
[000c8917]                           dc.b $00
[000c8918]                           dc.b $00
[000c8919]                           dc.b $00
[000c891a]                           dc.w $8000
[000c891c]                           dc.w $884f
[000c891e]                           dc.b $00
[000c891f]                           dc.b $00
[000c8920]                           dc.b $00
[000c8921]                           dc.b $00
[000c8922]                           dc.b $00
[000c8923]                           dc.b $00
[000c8924]                           dc.b $00
[000c8925]                           dc.b $00
[000c8926]                           dc.b $00
[000c8927]                           dc.b $00
[000c8928]                           dc.b $00
[000c8929]                           dc.b $00
_12_FONTSEL:
[000c892a]                           dc.b $00
[000c892b]                           dc.b $0e
[000c892c]                           dc.w $ffff
[000c892e]                           dc.w $ffff
[000c8930]                           dc.b $00
[000c8931]                           dc.b $18
[000c8932]                           dc.w $4005
[000c8934]                           dc.b $00
[000c8935]                           dc.b $10
[000c8936] 000c86ea                  dc.l A_3DBUTTON03
[000c893a]                           dc.b $00
[000c893b]                           dc.b $18
[000c893c]                           dc.b $00
[000c893d]                           dc.b $0e
[000c893e]                           dc.b $00
[000c893f]                           dc.b $0c
[000c8940]                           dc.b $00
[000c8941]                           dc.b $02
_12aFONTSEL:
[000c8942]                           dc.b $00
[000c8943]                           dc.b $00
[000c8944]                           dc.b $00
[000c8945]                           dc.b $00
[000c8946]                           dc.b $00
[000c8947]                           dc.b $00
[000c8948]                           dc.b $00
[000c8949]                           dc.b $00
[000c894a]                           dc.w $8000
[000c894c]                           dc.w $8841
[000c894e]                           dc.b $00
[000c894f]                           dc.b $00
[000c8950]                           dc.b $00
[000c8951]                           dc.b $00
[000c8952]                           dc.b $00
[000c8953]                           dc.b $00
[000c8954]                           dc.b $00
[000c8955]                           dc.b $00
[000c8956]                           dc.b $00
[000c8957]                           dc.b $00
[000c8958]                           dc.b $00
[000c8959]                           dc.b $00
_14_FONTSEL:
[000c895a]                           dc.b $00
[000c895b]                           dc.b $01
[000c895c]                           dc.b $00
[000c895d]                           dc.b $0f
[000c895e]                           dc.b $00
[000c895f]                           dc.b $14
[000c8960]                           dc.b $00
[000c8961]                           dc.b $18
[000c8962]                           dc.b $00
[000c8963]                           dc.b $40
[000c8964]                           dc.b $00
[000c8965]                           dc.b $00
[000c8966] 000c87aa                  dc.l A_INNERFRAME03
[000c896a]                           dc.b $00
[000c896b]                           dc.b $23
[000c896c]                           dc.b $00
[000c896d]                           dc.b $01
[000c896e]                           dc.b $00
[000c896f]                           dc.b $0a
[000c8970]                           dc.b $00
[000c8971]                           dc.b $09
_15_FONTSEL:
[000c8972]                           dc.b $00
[000c8973]                           dc.b $11
[000c8974]                           dc.w $ffff
[000c8976]                           dc.w $ffff
[000c8978]                           dc.b $00
[000c8979]                           dc.b $18
[000c897a]                           dc.b $00
[000c897b]                           dc.b $40
[000c897c]                           dc.b $00
[000c897d]                           dc.b $00
[000c897e] 000c874a                  dc.l A_EDITOR01
[000c8982]                           dc.b $00
[000c8983]                           dc.b $01
[000c8984]                           dc.b $00
[000c8985]                           dc.b $01
[000c8986]                           dc.b $00
[000c8987]                           dc.b $06
[000c8988]                           dc.b $00
[000c8989]                           dc.b $05
_15aFONTSEL:
[000c898a] 0003f1f2                  dc.l mod_height
[000c898e]                           dc.b $00
[000c898f]                           dc.b $00
[000c8990]                           dc.b $00
[000c8991]                           dc.b $00
[000c8992]                           dc.w $8000
[000c8994]                           dc.b $00
[000c8995]                           dc.b $00
[000c8996]                           dc.b $00
[000c8997]                           dc.b $00
[000c8998]                           dc.b $00
[000c8999]                           dc.b $00
[000c899a]                           dc.b $00
[000c899b]                           dc.b $00
[000c899c]                           dc.b $00
[000c899d]                           dc.b $00
[000c899e]                           dc.b $00
[000c899f]                           dc.b $00
[000c89a0]                           dc.b $00
[000c89a1]                           dc.b $00
_17_FONTSEL:
[000c89a2]                           dc.b $00
[000c89a3]                           dc.b $13
[000c89a4]                           dc.b $ff
[000c89a5]                           dc.b $ff
[000c89a6]                           dc.w $ffff
[000c89a8]                           dc.b $00
[000c89a9]                           dc.b $18
[000c89aa]                           dc.b $00
[000c89ab]                           dc.b $40
[000c89ac]                           dc.b $00
[000c89ad]                           dc.b $00
[000c89ae] 000c87ea                  dc.l A_SLIDER01
[000c89b2]                           dc.b $00
[000c89b3]                           dc.b $07
[000c89b4]                           dc.b $00
[000c89b5]                           dc.b $01
[000c89b6]                           dc.b $00
[000c89b7]                           dc.b $02
[000c89b8]                           dc.b $00
[000c89b9]                           dc.b $05
_17aFONTSEL:
[000c89ba] 00035cb6                  dc.l Aus_slider
[000c89be]                           dc.b $00
[000c89bf]                           dc.b $00
[000c89c0]                           dc.b $00
[000c89c1]                           dc.b $00
[000c89c2]                           dc.w $8000
[000c89c4]                           dc.b $00
[000c89c5]                           dc.b $00
[000c89c6]                           dc.b $00
[000c89c7]                           dc.b $00
[000c89c8]                           dc.b $00
[000c89c9]                           dc.b $00
[000c89ca]                           dc.b $00
[000c89cb]                           dc.b $00
[000c89cc]                           dc.b $00
[000c89cd]                           dc.b $00
[000c89ce]                           dc.b $00
[000c89cf]                           dc.b $00
[000c89d0]                           dc.b $00
[000c89d1]                           dc.b $00
_19_FONTSEL:
[000c89d2]                           dc.b $00
[000c89d3]                           dc.b $14
[000c89d4]                           dc.w $ffff
[000c89d6]                           dc.w $ffff
[000c89d8]                           dc.b $00
[000c89d9]                           dc.b $1c
[000c89da]                           dc.b $00
[000c89db]                           dc.b $40
[000c89dc]                           dc.b $00
[000c89dd]                           dc.b $00
[000c89de] 000c8694                  dc.l TEXT_02
[000c89e2]                           dc.b $00
[000c89e3]                           dc.b $01
[000c89e4]                           dc.b $00
[000c89e5]                           dc.b $06
[000c89e6]                           dc.b $00
[000c89e7]                           dc.b $06
[000c89e8]                           dc.b $00
[000c89e9]                           dc.b $01
_20_FONTSEL:
[000c89ea]                           dc.b $00
[000c89eb]                           dc.b $0e
[000c89ec]                           dc.w $ffff
[000c89ee]                           dc.w $ffff
[000c89f0]                           dc.b $00
[000c89f1]                           dc.b $18
[000c89f2]                           dc.b $00
[000c89f3]                           dc.b $28
[000c89f4]                           dc.b $00
[000c89f5]                           dc.b $10
[000c89f6] 000c872a                  dc.l A_BOXED02
[000c89fa]                           dc.b $00
[000c89fb]                           dc.b $02
[000c89fc]                           dc.b $00
[000c89fd]                           dc.b $07
[000c89fe]                           dc.b $00
[000c89ff]                           dc.b $05
[000c8a00]                           dc.b $00
[000c8a01]                           dc.b $01
WI_FONTSEL:
[000c8a02]                           dc.b $00
[000c8a03]                           dc.b $00
[000c8a04]                           dc.b $00
[000c8a05]                           dc.b $00
[000c8a06] 0003f700                  dc.l serv_wi_font
[000c8a0a] 0004f0ee                  dc.l Awi_selfcreate
[000c8a0e] 0004f69e                  dc.l Awi_open
[000c8a12] 0004e610                  dc.l Awi_init
[000c8a16] 000c880a                  dc.l FONTSEL
[000c8a1a]                           dc.b $00
[000c8a1b]                           dc.b $00
[000c8a1c]                           dc.b $00
[000c8a1d]                           dc.b $00
[000c8a1e]                           dc.b $00
[000c8a1f]                           dc.b $00
[000c8a20]                           dc.b $00
[000c8a21]                           dc.b $00
[000c8a22]                           dc.w $ffff
[000c8a24]                           dc.w $200b
[000c8a26]                           dc.b $00
[000c8a27]                           dc.b $00
[000c8a28]                           dc.b $00
[000c8a29]                           dc.b $00
[000c8a2a]                           dc.b $00
[000c8a2b]                           dc.b $78
[000c8a2c]                           dc.b $00
[000c8a2d]                           dc.b $32
[000c8a2e]                           dc.b $00
[000c8a2f]                           dc.b $00
[000c8a30]                           dc.b $00
[000c8a31]                           dc.b $00
[000c8a32]                           dc.b $00
[000c8a33]                           dc.b $00
[000c8a34]                           dc.b $00
[000c8a35]                           dc.b $00
[000c8a36]                           dc.b $00
[000c8a37]                           dc.b $00
[000c8a38]                           dc.b $00
[000c8a39]                           dc.b $00
[000c8a3a]                           dc.b $00
[000c8a3b]                           dc.b $00
[000c8a3c]                           dc.b $00
[000c8a3d]                           dc.b $00
[000c8a3e]                           dc.w $ffff
[000c8a40]                           dc.w $ffff
[000c8a42]                           dc.w $ffff
[000c8a44]                           dc.w $ffff
[000c8a46]                           dc.b $00
[000c8a47]                           dc.b $00
[000c8a48]                           dc.b $00
[000c8a49]                           dc.b $00
[000c8a4a]                           dc.w $f8f8
[000c8a4c] 000c86b8                  dc.l TEXT_06
[000c8a50] 000c865c                  dc.l TEXT_002
[000c8a54]                           dc.w $2710
[000c8a56]                           dc.w $0100
[000c8a58]                           dc.b $00
[000c8a59]                           dc.b $00
[000c8a5a]                           dc.w $ffff
[000c8a5c]                           dc.b $00
[000c8a5d]                           dc.b $00
[000c8a5e]                           dc.b $00
[000c8a5f]                           dc.b $00
[000c8a60]                           dc.b $00
[000c8a61]                           dc.b $00
[000c8a62]                           dc.b $00
[000c8a63]                           dc.b $00
[000c8a64] 0005ef2c                  dc.l Awi_keys
[000c8a68] 0004b600                  dc.l Awi_obchange
[000c8a6c] 0004b8cc                  dc.l Awi_redraw
[000c8a70] 00050454                  dc.l Awi_topped
[000c8a74] 0005013e                  dc.l Awi_closed
[000c8a78] 00050496                  dc.l Awi_fulled
[000c8a7c] 0004bcc8                  dc.l Awi_arrowed
[000c8a80] 0004beea                  dc.l Awi_hslid
[000c8a84] 0004bf56                  dc.l Awi_vslid
[000c8a88] 000506ca                  dc.l Awi_sized
[000c8a8c] 000507bc                  dc.l Awi_moved
[000c8a90] 00050f9c                  dc.l Awi_iconify
[000c8a94] 0005117c                  dc.l Awi_uniconify
[000c8a98] 00052328                  dc.l Awi_gemscript
[000c8a9c]                           dc.b $00
[000c8a9d]                           dc.b $00
[000c8a9e]                           dc.b $00
[000c8a9f]                           dc.b $00
[000c8aa0]                           dc.b $00
[000c8aa1]                           dc.b $00
[000c8aa2]                           dc.b $00
[000c8aa3]                           dc.b $00
[000c8aa4]                           dc.w $2564
[000c8aa6]                           dc.b $00
[000c8aa7]                           dc.b '%3d',0
[000c8aab]                           dc.b 'Pixel',0
		.even

	.bss

table: ds.l 1
fonts: ds.w 1
fontid: ds.w 1
height: ds.w 1
pixel: ds.w 1
