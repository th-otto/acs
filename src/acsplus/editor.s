
untab:
[000361fa] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[000361fe] 2648                      movea.l    a0,a3
[00036200] 3800                      move.w     d0,d4
[00036202] 3601                      move.w     d1,d3
[00036204] b27c 0400                 cmp.w      #$0400,d1
[00036208] 6d04                      blt.s      untab_1
[0003620a] 363c 03ff                 move.w     #$03FF,d3
untab_1:
[0003620e] 45f9 000f f902            lea.l      buffer,a2
[00036214] 3203                      move.w     d3,d1
[00036216] 48c1                      ext.l      d1
[00036218] 7020                      moveq.l    #32,d0
[0003621a] 204a                      movea.l    a2,a0
[0003621c] 4eb9 0007 712e            jsr        memset
[00036222] 4232 3000                 clr.b      0(a2,d3.w)
[00036226] 204b                      movea.l    a3,a0
[00036228] 224a                      movea.l    a2,a1
[0003622a] 200b                      move.l     a3,d0
[0003622c] 6624                      bne.s      untab_2
[0003622e] 602e                      bra.s      untab_3
untab_5:
[00036230] 1018                      move.b     (a0)+,d0
[00036232] b03c 0009                 cmp.b      #$09,d0
[00036236] 6618                      bne.s      untab_4
[00036238] 3204                      move.w     d4,d1
[0003623a] 2409                      move.l     a1,d2
[0003623c] 948a                      sub.l      a2,d2
[0003623e] 48c2                      ext.l      d2
[00036240] 85c4                      divs.w     d4,d2
[00036242] 4842                      swap       d2
[00036244] 9242                      sub.w      d2,d1
[00036246] 74ff                      moveq.l    #-1,d2
[00036248] d441                      add.w      d1,d2
[0003624a] 9642                      sub.w      d2,d3
[0003624c] d2c1                      adda.w     d1,a1
[0003624e] 6002                      bra.s      untab_2
untab_4:
[00036250] 12c0                      move.b     d0,(a1)+
untab_2:
[00036252] 1010                      move.b     (a0),d0
[00036254] 6708                      beq.s      untab_3
[00036256] 3203                      move.w     d3,d1
[00036258] 5343                      subq.w     #1,d3
[0003625a] 4a41                      tst.w      d1
[0003625c] 66d2                      bne.s      untab_5
untab_3:
[0003625e] 204a                      movea.l    a2,a0
[00036260] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00036264] 4e75                      rts

posv:
[00036266] 48e7 1c00                 movem.l    d3-d5,-(a7)
[0003626a] 4242                      clr.w      d2
[0003626c] 3602                      move.w     d2,d3
[0003626e] 2808                      move.l     a0,d4
[00036270] 6620                      bne.s      posv_1
[00036272] 6026                      bra.s      posv_2
posv_5:
[00036274] 0c18 0009                 cmpi.b     #$09,(a0)+
[00036278] 6614                      bne.s      posv_3
[0003627a] 3800                      move.w     d0,d4
[0003627c] 3a02                      move.w     d2,d5
[0003627e] 48c5                      ext.l      d5
[00036280] 8bc0                      divs.w     d0,d5
[00036282] 4845                      swap       d5
[00036284] 9845                      sub.w      d5,d4
[00036286] d444                      add.w      d4,d2
[00036288] b242                      cmp.w      d2,d1
[0003628a] 6d0e                      blt.s      posv_2
[0003628c] 6002                      bra.s      posv_4
posv_3:
[0003628e] 5242                      addq.w     #1,d2
posv_4:
[00036290] 5243                      addq.w     #1,d3
posv_1:
[00036292] 1810                      move.b     (a0),d4
[00036294] 6704                      beq.s      posv_2
[00036296] b242                      cmp.w      d2,d1
[00036298] 6eda                      bgt.s      posv_5
posv_2:
[0003629a] 3003                      move.w     d3,d0
[0003629c] 4cdf 0038                 movem.l    (a7)+,d3-d5
[000362a0] 4e75                      rts

vpos:
[000362a2] 2f03                      move.l     d3,-(a7)
[000362a4] 2f04                      move.l     d4,-(a7)
[000362a6] 4242                      clr.w      d2
[000362a8] 2608                      move.l     a0,d3
[000362aa] 661a                      bne.s      vpos_1
[000362ac] 6024                      bra.s      vpos_2
vpos_4:
[000362ae] 0c18 0009                 cmpi.b     #$09,(a0)+
[000362b2] 6610                      bne.s      vpos_3
[000362b4] 3600                      move.w     d0,d3
[000362b6] 3802                      move.w     d2,d4
[000362b8] 48c4                      ext.l      d4
[000362ba] 89c0                      divs.w     d0,d4
[000362bc] 4844                      swap       d4
[000362be] 9644                      sub.w      d4,d3
[000362c0] d443                      add.w      d3,d2
[000362c2] 6002                      bra.s      vpos_1
vpos_3:
[000362c4] 5242                      addq.w     #1,d2
vpos_1:
[000362c6] 1610                      move.b     (a0),d3
[000362c8] 6708                      beq.s      vpos_2
[000362ca] 3801                      move.w     d1,d4
[000362cc] 5341                      subq.w     #1,d1
[000362ce] 4a44                      tst.w      d4
[000362d0] 66dc                      bne.s      vpos_4
vpos_2:
[000362d2] 3002                      move.w     d2,d0
[000362d4] 281f                      move.l     (a7)+,d4
[000362d6] 261f                      move.l     (a7)+,d3
[000362d8] 4e75                      rts

A_editor:
[000362da] 48e7 3f3e                 movem.l    d2-d7/a2-a6,-(a7)
[000362de] 4fef ffc8                 lea.l      -56(a7),a7
[000362e2] 206f 0068                 movea.l    104(a7),a0
[000362e6] 3228 0004                 move.w     4(a0),d1
[000362ea] 48c1                      ext.l      d1
[000362ec] 2001                      move.l     d1,d0
[000362ee] d080                      add.l      d0,d0
[000362f0] d081                      add.l      d1,d0
[000362f2] e788                      lsl.l      #3,d0
[000362f4] 2850                      movea.l    (a0),a4
[000362f6] d9c0                      adda.l     d0,a4
[000362f8] 2c6c 000c                 movea.l    12(a4),a6
[000362fc] 266e 000c                 movea.l    12(a6),a3
[00036300] 200b                      move.l     a3,d0
[00036302] 6700 00d4                 beq        A_editor_1
[00036306] 7201                      moveq.l    #1,d1
[00036308] c26b 0012                 and.w      18(a3),d1
[0003630c] 6708                      beq.s      A_editor_2
[0003630e] 204c                      movea.l    a4,a0
[00036310] 4eb9 0003 8810            jsr        resize
A_editor_2:
[00036316] 3f7c 0001 000a            move.w     #$0001,10(a7)
[0003631c] 7002                      moveq.l    #2,d0
[0003631e] c06b 0012                 and.w      18(a3),d0
[00036322] 670c                      beq.s      A_editor_3
[00036324] 7204                      moveq.l    #4,d1
[00036326] c26b 0012                 and.w      18(a3),d1
[0003632a] 6704                      beq.s      A_editor_3
[0003632c] 426f 000a                 clr.w      10(a7)
A_editor_3:
[00036330] 206f 0068                 movea.l    104(a7),a0
[00036334] 3028 000a                 move.w     10(a0),d0
[00036338] 3f40 001e                 move.w     d0,30(a7)
[0003633c] 3f40 001a                 move.w     d0,26(a7)
[00036340] 3028 000c                 move.w     12(a0),d0
[00036344] 3f40 001c                 move.w     d0,28(a7)
[00036348] 72ff                      moveq.l    #-1,d1
[0003634a] d26b 004a                 add.w      74(a3),d1
[0003634e] d36f 001a                 add.w      d1,26(a7)
[00036352] 74ff                      moveq.l    #-1,d2
[00036354] d46b 0048                 add.w      72(a3),d2
[00036358] d042                      add.w      d2,d0
[0003635a] 3228 0012                 move.w     18(a0),d1
[0003635e] 3f41 0014                 move.w     d1,20(a7)
[00036362] 3f41 0010                 move.w     d1,16(a7)
[00036366] 3428 0014                 move.w     20(a0),d2
[0003636a] 3f42 0012                 move.w     d2,18(a7)
[0003636e] 3f42 000e                 move.w     d2,14(a7)
[00036372] 326f 0014                 movea.w    20(a7),a1
[00036376] b2ef 001e                 cmpa.w     30(a7),a1
[0003637a] 6c06                      bge.s      A_editor_4
[0003637c] 3f6f 001e 0014            move.w     30(a7),20(a7)
A_editor_4:
[00036382] 322f 0012                 move.w     18(a7),d1
[00036386] b26f 001c                 cmp.w      28(a7),d1
[0003638a] 6c06                      bge.s      A_editor_5
[0003638c] 3f6f 001c 0012            move.w     28(a7),18(a7)
A_editor_5:
[00036392] 72ff                      moveq.l    #-1,d1
[00036394] 206f 0068                 movea.l    104(a7),a0
[00036398] d268 0016                 add.w      22(a0),d1
[0003639c] d36f 0010                 add.w      d1,16(a7)
[000363a0] 74ff                      moveq.l    #-1,d2
[000363a2] d468 0018                 add.w      24(a0),d2
[000363a6] d56f 000e                 add.w      d2,14(a7)
[000363aa] 326f 0010                 movea.w    16(a7),a1
[000363ae] b2ef 001a                 cmpa.w     26(a7),a1
[000363b2] 6f06                      ble.s      A_editor_6
[000363b4] 3f6f 001a 0010            move.w     26(a7),16(a7)
A_editor_6:
[000363ba] b06f 000e                 cmp.w      14(a7),d0
[000363be] 6c04                      bge.s      A_editor_7
[000363c0] 3f40 000e                 move.w     d0,14(a7)
A_editor_7:
[000363c4] 302f 0014                 move.w     20(a7),d0
[000363c8] b06f 0010                 cmp.w      16(a7),d0
[000363cc] 6e0a                      bgt.s      A_editor_1
[000363ce] 322f 0012                 move.w     18(a7),d1
[000363d2] b26f 000e                 cmp.w      14(a7),d1
[000363d6] 6f0c                      ble.s      A_editor_8
A_editor_1:
[000363d8] 206f 0068                 movea.l    104(a7),a0
[000363dc] 3028 0008                 move.w     8(a0),d0
[000363e0] 6000 04fe                 bra        A_editor_9
A_editor_8:
[000363e4] 49ef 0028                 lea.l      40(a7),a4
[000363e8] 38af 0014                 move.w     20(a7),(a4)
[000363ec] 396f 0012 0002            move.w     18(a7),2(a4)
[000363f2] 396f 0010 0004            move.w     16(a7),4(a4)
[000363f8] 396f 000e 0006            move.w     14(a7),6(a4)
[000363fe] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00036404] 204c                      movea.l    a4,a0
[00036406] 7201                      moveq.l    #1,d1
[00036408] 2255                      movea.l    (a5),a1
[0003640a] 3029 0010                 move.w     16(a1),d0
[0003640e] 4eb9 0006 3f60            jsr        vs_clip
[00036414] 362b 009a                 move.w     154(a3),d3
[00036418] 3e2b 001e                 move.w     30(a3),d7
[0003641c] 7201                      moveq.l    #1,d1
[0003641e] 2055                      movea.l    (a5),a0
[00036420] 3028 0010                 move.w     16(a0),d0
[00036424] 4eb9 0006 5390            jsr        vsf_interior
[0003642a] 7040                      moveq.l    #64,d0
[0003642c] c06b 0012                 and.w      18(a3),d0
[00036430] 6600 035c                 bne        A_editor_10
[00036434] 7201                      moveq.l    #1,d1
[00036436] 2055                      movea.l    (a5),a0
[00036438] 3028 0010                 move.w     16(a0),d0
[0003643c] 4eb9 0006 4da0            jsr        vswr_mode
[00036442] 4241                      clr.w      d1
[00036444] 2055                      movea.l    (a5),a0
[00036446] 3028 0010                 move.w     16(a0),d0
[0003644a] 4eb9 0006 51c2            jsr        vst_rotation
[00036450] 322b 0002                 move.w     2(a3),d1
[00036454] 2055                      movea.l    (a5),a0
[00036456] 3028 0010                 move.w     16(a0),d0
[0003645a] 4eb9 0006 5216            jsr        vst_font
[00036460] 45ef 000c                 lea.l      12(a7),a2
[00036464] 4852                      pea.l      (a2)
[00036466] 4852                      pea.l      (a2)
[00036468] 224a                      movea.l    a2,a1
[0003646a] 204a                      movea.l    a2,a0
[0003646c] 322b 0004                 move.w     4(a3),d1
[00036470] 2c55                      movea.l    (a5),a6
[00036472] 302e 0010                 move.w     16(a6),d0
[00036476] 4eb9 0006 50a0            jsr        vst_height
[0003647c] 504f                      addq.w     #8,a7
[0003647e] 3213                      move.w     (a3),d1
[00036480] 2055                      movea.l    (a5),a0
[00036482] 3028 0010                 move.w     16(a0),d0
[00036486] 4eb9 0006 526a            jsr        vst_color
[0003648c] 4241                      clr.w      d1
[0003648e] 2055                      movea.l    (a5),a0
[00036490] 3028 0010                 move.w     16(a0),d0
[00036494] 4eb9 0006 52be            jsr        vst_effects
[0003649a] 224a                      movea.l    a2,a1
[0003649c] 204a                      movea.l    a2,a0
[0003649e] 7405                      moveq.l    #5,d2
[000364a0] 4241                      clr.w      d1
[000364a2] 2c55                      movea.l    (a5),a6
[000364a4] 302e 0010                 move.w     16(a6),d0
[000364a8] 4eb9 0006 5312            jsr        vst_alignment
[000364ae] 4241                      clr.w      d1
[000364b0] 2055                      movea.l    (a5),a0
[000364b2] 3028 0010                 move.w     16(a0),d0
[000364b6] 4eb9 0006 5438            jsr        vsf_color
[000364bc] 2f6b 000a 0004            move.l     10(a3),4(a7)
[000364c2] 2c2b 0018                 move.l     24(a3),d6
[000364c6] 3f6b 0010 0008            move.w     16(a3),8(a7)
[000364cc] 2006                      move.l     d6,d0
[000364ce] e788                      lsl.l      #3,d0
[000364d0] 206b 002c                 movea.l    44(a3),a0
[000364d4] d1c0                      adda.l     d0,a0
[000364d6] 2e88                      move.l     a0,(a7)
[000364d8] 322f 0012                 move.w     18(a7),d1
[000364dc] 926b 0006                 sub.w      6(a3),d1
[000364e0] 3f41 0016                 move.w     d1,22(a7)
[000364e4] 7401                      moveq.l    #1,d2
[000364e6] d46f 000e                 add.w      14(a7),d2
[000364ea] 3f42 0018                 move.w     d2,24(a7)
[000364ee] 326f 0010                 movea.w    16(a7),a1
[000364f2] 3949 000c                 move.w     a1,12(a4)
[000364f6] 3949 0004                 move.w     a1,4(a4)
[000364fa] 6000 0286                 bra        A_editor_11
A_editor_40:
[000364fe] 302f 001c                 move.w     28(a7),d0
[00036502] b06f 0016                 cmp.w      22(a7),d0
[00036506] 6f00 026a                 ble        A_editor_12
[0003650a] 322f 000a                 move.w     10(a7),d1
[0003650e] 6608                      bne.s      A_editor_13
[00036510] bcab 0066                 cmp.l      102(a3),d6
[00036514] 6600 025c                 bne        A_editor_12
A_editor_13:
[00036518] 302f 001c                 move.w     28(a7),d0
[0003651c] 3940 000a                 move.w     d0,10(a4)
[00036520] 3940 0002                 move.w     d0,2(a4)
[00036524] 322f 001c                 move.w     28(a7),d1
[00036528] d26b 0006                 add.w      6(a3),d1
[0003652c] 5341                      subq.w     #1,d1
[0003652e] 3941 000e                 move.w     d1,14(a4)
[00036532] 3941 0006                 move.w     d1,6(a4)
[00036536] bcab 0028                 cmp.l      40(a3),d6
[0003653a] 6e00 0224                 bgt        A_editor_14
[0003653e] 202f 0004                 move.l     4(a7),d0
[00036542] 6f00 021c                 ble        A_editor_14
[00036546] 342b 0012                 move.w     18(a3),d2
[0003654a] c47c 0100                 and.w      #$0100,d2
[0003654e] 6600 00e0                 bne        A_editor_15
[00036552] 2057                      movea.l    (a7),a0
[00036554] 2450                      movea.l    (a0),a2
[00036556] 220a                      move.l     a2,d1
[00036558] 672a                      beq.s      A_editor_16
[0003655a] 4244                      clr.w      d4
[0003655c] 6018                      bra.s      A_editor_17
A_editor_20:
[0003655e] 0c1a 0009                 cmpi.b     #$09,(a2)+
[00036562] 6610                      bne.s      A_editor_18
[00036564] 3003                      move.w     d3,d0
[00036566] 3204                      move.w     d4,d1
[00036568] 48c1                      ext.l      d1
[0003656a] 83c3                      divs.w     d3,d1
[0003656c] 4841                      swap       d1
[0003656e] 9041                      sub.w      d1,d0
[00036570] d840                      add.w      d0,d4
[00036572] 6002                      bra.s      A_editor_17
A_editor_18:
[00036574] 5244                      addq.w     #1,d4
A_editor_17:
[00036576] be44                      cmp.w      d4,d7
[00036578] 6f04                      ble.s      A_editor_19
[0003657a] 1012                      move.b     (a2),d0
[0003657c] 66e0                      bne.s      A_editor_20
A_editor_19:
[0003657e] 3a04                      move.w     d4,d5
[00036580] 9a47                      sub.w      d7,d5
[00036582] 6002                      bra.s      A_editor_21
A_editor_16:
[00036584] 7aff                      moveq.l    #-1,d5
A_editor_21:
[00036586] 4a45                      tst.w      d5
[00036588] 6b00 0094                 bmi        A_editor_22
[0003658c] 1012                      move.b     (a2),d0
[0003658e] 6700 008e                 beq        A_editor_22
[00036592] 4a45                      tst.w      d5
[00036594] 6f12                      ble.s      A_editor_23
[00036596] 3205                      move.w     d5,d1
[00036598] 48c1                      ext.l      d1
[0003659a] 41f9 000f fd02            lea.l      line,a0
[000365a0] 7020                      moveq.l    #32,d0
[000365a2] 4eb9 0007 712e            jsr        memset
A_editor_23:
[000365a8] 4df9 000f fd02            lea.l      line,a6
[000365ae] dcc5                      adda.w     d5,a6
[000365b0] 602c                      bra.s      A_editor_24
A_editor_29:
[000365b2] 101a                      move.b     (a2)+,d0
[000365b4] b03c 0009                 cmp.b      #$09,d0
[000365b8] 6620                      bne.s      A_editor_25
[000365ba] 3803                      move.w     d3,d4
[000365bc] 3205                      move.w     d5,d1
[000365be] d247                      add.w      d7,d1
[000365c0] 48c1                      ext.l      d1
[000365c2] 83c3                      divs.w     d3,d1
[000365c4] 4841                      swap       d1
[000365c6] 9841                      sub.w      d1,d4
[000365c8] da44                      add.w      d4,d5
[000365ca] 6004                      bra.s      A_editor_26
A_editor_27:
[000365cc] 1cfc 0020                 move.b     #$20,(a6)+
A_editor_26:
[000365d0] 3204                      move.w     d4,d1
[000365d2] 5344                      subq.w     #1,d4
[000365d4] 4a41                      tst.w      d1
[000365d6] 66f4                      bne.s      A_editor_27
[000365d8] 6004                      bra.s      A_editor_24
A_editor_25:
[000365da] 5245                      addq.w     #1,d5
[000365dc] 1cc0                      move.b     d0,(a6)+
A_editor_24:
[000365de] 1012                      move.b     (a2),d0
[000365e0] 6706                      beq.s      A_editor_28
[000365e2] ba6f 0008                 cmp.w      8(a7),d5
[000365e6] 6dca                      blt.s      A_editor_29
A_editor_28:
[000365e8] 4216                      clr.b      (a6)
[000365ea] 41f9 000f fd02            lea.l      line,a0
[000365f0] 342f 001c                 move.w     28(a7),d2
[000365f4] 322f 001e                 move.w     30(a7),d1
[000365f8] 2255                      movea.l    (a5),a1
[000365fa] 3029 0010                 move.w     16(a1),d0
[000365fe] 4eb9 0006 41e0            jsr        v_gtext
[00036604] ba6f 0008                 cmp.w      8(a7),d5
[00036608] 6c26                      bge.s      A_editor_15
[0003660a] 3005                      move.w     d5,d0
[0003660c] c1eb 0008                 muls.w     8(a3),d0
[00036610] d06f 001e                 add.w      30(a7),d0
[00036614] 3880                      move.w     d0,(a4)
[00036616] b06c 0004                 cmp.w      4(a4),d0
[0003661a] 6e14                      bgt.s      A_editor_15
[0003661c] 6004                      bra.s      A_editor_30
A_editor_22:
[0003661e] 38af 0014                 move.w     20(a7),(a4)
A_editor_30:
[00036622] 204c                      movea.l    a4,a0
[00036624] 2255                      movea.l    (a5),a1
[00036626] 3029 0010                 move.w     16(a1),d0
[0003662a] 4eb9 0006 4512            jsr        vr_recfl
A_editor_15:
[00036630] 7003                      moveq.l    #3,d0
[00036632] 2057                      movea.l    (a7),a0
[00036634] c068 0006                 and.w      6(a0),d0
[00036638] 6700 0138                 beq        A_editor_12
[0003663c] 7202                      moveq.l    #2,d1
[0003663e] c268 0006                 and.w      6(a0),d1
[00036642] 660c                      bne.s      A_editor_31
[00036644] 342b 0012                 move.w     18(a3),d2
[00036648] c47c 0100                 and.w      #$0100,d2
[0003664c] 6600 0124                 bne        A_editor_12
A_editor_31:
[00036650] 302b 0070                 move.w     112(a3),d0
[00036654] 6652                      bne.s      A_editor_32
[00036656] bcab 0030                 cmp.l      48(a3),d6
[0003665a] 6706                      beq.s      A_editor_33
[0003665c] bcab 0038                 cmp.l      56(a3),d6
[00036660] 6646                      bne.s      A_editor_32
A_editor_33:
[00036662] 302b 0012                 move.w     18(a3),d0
[00036666] c07c 0200                 and.w      #$0200,d0
[0003666a] 6700 0106                 beq        A_editor_12
[0003666e] bcab 0030                 cmp.l      48(a3),d6
[00036672] 6622                      bne.s      A_editor_34
[00036674] 202b 0040                 move.l     64(a3),d0
[00036678] 3207                      move.w     d7,d1
[0003667a] 48c1                      ext.l      d1
[0003667c] 9081                      sub.l      d1,d0
[0003667e] 322b 0008                 move.w     8(a3),d1
[00036682] 48c1                      ext.l      d1
[00036684] 4eb9 0007 76f0            jsr        _lmul
[0003668a] d06f 001e                 add.w      30(a7),d0
[0003668e] 3940 0008                 move.w     d0,8(a4)
[00036692] 3880                      move.w     d0,(a4)
[00036694] 600a                      bra.s      A_editor_35
A_editor_34:
[00036696] 302f 0014                 move.w     20(a7),d0
[0003669a] 3940 0008                 move.w     d0,8(a4)
[0003669e] 3880                      move.w     d0,(a4)
A_editor_35:
[000366a0] bcab 0038                 cmp.l      56(a3),d6
[000366a4] 665c                      bne.s      A_editor_36
[000366a6] 6036                      bra.s      A_editor_37
A_editor_32:
[000366a8] 0c6b 0005 0070            cmpi.w     #$0005,112(a3)
[000366ae] 6600 0086                 bne        A_editor_38
[000366b2] 302b 0012                 move.w     18(a3),d0
[000366b6] c07c 0200                 and.w      #$0200,d0
[000366ba] 6700 00b6                 beq        A_editor_12
[000366be] 202b 0040                 move.l     64(a3),d0
[000366c2] 3207                      move.w     d7,d1
[000366c4] 48c1                      ext.l      d1
[000366c6] 9081                      sub.l      d1,d0
[000366c8] 322b 0008                 move.w     8(a3),d1
[000366cc] 48c1                      ext.l      d1
[000366ce] 4eb9 0007 76f0            jsr        _lmul
[000366d4] d06f 001e                 add.w      30(a7),d0
[000366d8] 3940 0008                 move.w     d0,8(a4)
[000366dc] 3880                      move.w     d0,(a4)
A_editor_37:
[000366de] 202b 0044                 move.l     68(a3),d0
[000366e2] 3207                      move.w     d7,d1
[000366e4] 48c1                      ext.l      d1
[000366e6] 9081                      sub.l      d1,d0
[000366e8] 322b 0008                 move.w     8(a3),d1
[000366ec] 48c1                      ext.l      d1
[000366ee] 4eb9 0007 76f0            jsr        _lmul
[000366f4] d06f 001e                 add.w      30(a7),d0
[000366f8] 5340                      subq.w     #1,d0
[000366fa] 3940 000c                 move.w     d0,12(a4)
[000366fe] 3940 0004                 move.w     d0,4(a4)
A_editor_36:
[00036702] 3014                      move.w     (a4),d0
[00036704] b06c 0004                 cmp.w      4(a4),d0
[00036708] 6e1e                      bgt.s      A_editor_39
[0003670a] 2055                      movea.l    (a5),a0
[0003670c] 4868 026a                 pea.l      618(a0)
[00036710] 2248                      movea.l    a0,a1
[00036712] 43e9 026a                 lea.l      618(a1),a1
[00036716] 204c                      movea.l    a4,a0
[00036718] 720a                      moveq.l    #10,d1
[0003671a] 2455                      movea.l    (a5),a2
[0003671c] 302a 0010                 move.w     16(a2),d0
[00036720] 4eb9 0006 65ce            jsr        vro_cpyfm
[00036726] 584f                      addq.w     #4,a7
A_editor_39:
[00036728] 302f 0010                 move.w     16(a7),d0
[0003672c] 3940 000c                 move.w     d0,12(a4)
[00036730] 3940 0004                 move.w     d0,4(a4)
[00036734] 603c                      bra.s      A_editor_12
A_editor_38:
[00036736] 302f 0014                 move.w     20(a7),d0
[0003673a] 3940 0008                 move.w     d0,8(a4)
[0003673e] 3880                      move.w     d0,(a4)
[00036740] 2055                      movea.l    (a5),a0
[00036742] 4868 026a                 pea.l      618(a0)
[00036746] 2248                      movea.l    a0,a1
[00036748] 43e9 026a                 lea.l      618(a1),a1
[0003674c] 204c                      movea.l    a4,a0
[0003674e] 720a                      moveq.l    #10,d1
[00036750] 2455                      movea.l    (a5),a2
[00036752] 302a 0010                 move.w     16(a2),d0
[00036756] 4eb9 0006 65ce            jsr        vro_cpyfm
[0003675c] 584f                      addq.w     #4,a7
[0003675e] 6012                      bra.s      A_editor_12
A_editor_14:
[00036760] 38af 0014                 move.w     20(a7),(a4)
[00036764] 204c                      movea.l    a4,a0
[00036766] 2255                      movea.l    (a5),a1
[00036768] 3029 0010                 move.w     16(a1),d0
[0003676c] 4eb9 0006 4512            jsr        vr_recfl
A_editor_12:
[00036772] 302b 0006                 move.w     6(a3),d0
[00036776] d16f 001c                 add.w      d0,28(a7)
[0003677a] 5097                      addq.l     #8,(a7)
[0003677c] 5286                      addq.l     #1,d6
[0003677e] 53af 0004                 subq.l     #1,4(a7)
A_editor_11:
[00036782] 302f 001c                 move.w     28(a7),d0
[00036786] b06f 0018                 cmp.w      24(a7),d0
[0003678a] 6d00 fd72                 blt        A_editor_40
A_editor_10:
[0003678e] 303c 0080                 move.w     #$0080,d0
[00036792] c06b 0012                 and.w      18(a3),d0
[00036796] 6700 012e                 beq        A_editor_41
[0003679a] 222b 0030                 move.l     48(a3),d1
[0003679e] 242b 0018                 move.l     24(a3),d2
[000367a2] d4ab 000a                 add.l      10(a3),d2
[000367a6] b282                      cmp.l      d2,d1
[000367a8] 6c00 011c                 bge        A_editor_41
[000367ac] b2ab 0018                 cmp.l      24(a3),d1
[000367b0] 6d00 0114                 blt        A_editor_41
[000367b4] 382f 000a                 move.w     10(a7),d4
[000367b8] 660a                      bne.s      A_editor_42
[000367ba] 2a2b 0066                 move.l     102(a3),d5
[000367be] ba81                      cmp.l      d1,d5
[000367c0] 6600 0104                 bne        A_editor_41
A_editor_42:
[000367c4] 302b 0012                 move.w     18(a3),d0
[000367c8] c07c 0200                 and.w      #$0200,d0
[000367cc] 6600 00f8                 bne        A_editor_41
[000367d0] 222b 0030                 move.l     48(a3),d1
[000367d4] e789                      lsl.l      #3,d1
[000367d6] 206b 002c                 movea.l    44(a3),a0
[000367da] d1c1                      adda.l     d1,a0
[000367dc] 2e88                      move.l     a0,(a7)
[000367de] 322b 0042                 move.w     66(a3),d1
[000367e2] 2050                      movea.l    (a0),a0
[000367e4] 3003                      move.w     d3,d0
[000367e6] 6100 fa7e                 bsr        posv
[000367ea] 3f40 0008                 move.w     d0,8(a7)
[000367ee] 3200                      move.w     d0,d1
[000367f0] 2057                      movea.l    (a7),a0
[000367f2] 2050                      movea.l    (a0),a0
[000367f4] 3003                      move.w     d3,d0
[000367f6] 6100 faaa                 bsr        vpos
[000367fa] 3f40 0008                 move.w     d0,8(a7)
[000367fe] 7203                      moveq.l    #3,d1
[00036800] 2055                      movea.l    (a5),a0
[00036802] 3028 0010                 move.w     16(a0),d0
[00036806] 4eb9 0006 4da0            jsr        vswr_mode
[0003680c] 7201                      moveq.l    #1,d1
[0003680e] 2055                      movea.l    (a5),a0
[00036810] 3028 0010                 move.w     16(a0),d0
[00036814] 4eb9 0006 5438            jsr        vsf_color
[0003681a] 302f 0008                 move.w     8(a7),d0
[0003681e] 9047                      sub.w      d7,d0
[00036820] c1eb 0008                 muls.w     8(a3),d0
[00036824] 206f 0068                 movea.l    104(a7),a0
[00036828] d068 000a                 add.w      10(a0),d0
[0003682c] 3f40 0020                 move.w     d0,32(a7)
[00036830] 322b 0032                 move.w     50(a3),d1
[00036834] 926b 001a                 sub.w      26(a3),d1
[00036838] c3eb 0006                 muls.w     6(a3),d1
[0003683c] d268 000c                 add.w      12(a0),d1
[00036840] 3f41 0022                 move.w     d1,34(a7)
[00036844] 342f 0020                 move.w     32(a7),d2
[00036848] d46b 0008                 add.w      8(a3),d2
[0003684c] 5342                      subq.w     #1,d2
[0003684e] 3f42 0024                 move.w     d2,36(a7)
[00036852] 362f 0022                 move.w     34(a7),d3
[00036856] d66b 0006                 add.w      6(a3),d3
[0003685a] 5343                      subq.w     #1,d3
[0003685c] 3f43 0026                 move.w     d3,38(a7)
[00036860] 342b 009c                 move.w     156(a3),d2
[00036864] 5342                      subq.w     #1,d2
[00036866] 670a                      beq.s      A_editor_43
[00036868] 5342                      subq.w     #1,d2
[0003686a] 674a                      beq.s      A_editor_44
[0003686c] 5342                      subq.w     #1,d2
[0003686e] 670e                      beq.s      A_editor_45
[00036870] 603a                      bra.s      A_editor_46
A_editor_43:
[00036872] 70ff                      moveq.l    #-1,d0
[00036874] d06f 0026                 add.w      38(a7),d0
[00036878] 3f40 0022                 move.w     d0,34(a7)
[0003687c] 6038                      bra.s      A_editor_44
A_editor_45:
[0003687e] 7201                      moveq.l    #1,d1
[00036880] 2055                      movea.l    (a5),a0
[00036882] 3028 0010                 move.w     16(a0),d0
[00036886] 4eb9 0006 548c            jsr        vsf_perimeter
[0003688c] 4241                      clr.w      d1
[0003688e] 2055                      movea.l    (a5),a0
[00036890] 3028 0010                 move.w     16(a0),d0
[00036894] 4eb9 0006 5390            jsr        vsf_interior
[0003689a] 41ef 0020                 lea.l      32(a7),a0
[0003689e] 2255                      movea.l    (a5),a1
[000368a0] 3029 0010                 move.w     16(a1),d0
[000368a4] 4eb9 0006 455e            jsr        v_bar
[000368aa] 601a                      bra.s      A_editor_41
A_editor_46:
[000368ac] 7001                      moveq.l    #1,d0
[000368ae] d06f 0020                 add.w      32(a7),d0
[000368b2] 3f40 0024                 move.w     d0,36(a7)
A_editor_44:
[000368b6] 41ef 0020                 lea.l      32(a7),a0
[000368ba] 2255                      movea.l    (a5),a1
[000368bc] 3029 0010                 move.w     16(a1),d0
[000368c0] 4eb9 0006 4512            jsr        vr_recfl
A_editor_41:
[000368c6] 204c                      movea.l    a4,a0
[000368c8] 4241                      clr.w      d1
[000368ca] 2255                      movea.l    (a5),a1
[000368cc] 3029 0010                 move.w     16(a1),d0
[000368d0] 4eb9 0006 3f60            jsr        vs_clip
[000368d6] 70f6                      moveq.l    #-10,d0
[000368d8] 206f 0068                 movea.l    104(a7),a0
[000368dc] c068 0008                 and.w      8(a0),d0
A_editor_9:
[000368e0] 4fef 0038                 lea.l      56(a7),a7
[000368e4] 4cdf 7cfc                 movem.l    (a7)+,d2-d7/a2-a6
[000368e8] 4e75                      rts

edit_view:
[000368ea] 2f03                      move.l     d3,-(a7)
[000368ec] 2f04                      move.l     d4,-(a7)
[000368ee] 2028 0030                 move.l     48(a0),d0
[000368f2] 2228 0018                 move.l     24(a0),d1
[000368f6] d2a8 000a                 add.l      10(a0),d1
[000368fa] 5381                      subq.l     #1,d1
[000368fc] b2a8 0028                 cmp.l      40(a0),d1
[00036900] 6f18                      ble.s      edit_view_1
[00036902] 2228 0028                 move.l     40(a0),d1
[00036906] 2401                      move.l     d1,d2
[00036908] 94a8 000a                 sub.l      10(a0),d2
[0003690c] 5282                      addq.l     #1,d2
[0003690e] 2142 0018                 move.l     d2,24(a0)
[00036912] 4a82                      tst.l      d2
[00036914] 6a04                      bpl.s      edit_view_1
[00036916] 42a8 0018                 clr.l      24(a0)
edit_view_1:
[0003691a] 2428 0018                 move.l     24(a0),d2
[0003691e] 9480                      sub.l      d0,d2
[00036920] 2600                      move.l     d0,d3
[00036922] 9681                      sub.l      d1,d3
[00036924] 4a82                      tst.l      d2
[00036926] 6e04                      bgt.s      edit_view_2
[00036928] 4a83                      tst.l      d3
[0003692a] 6f3e                      ble.s      edit_view_3
edit_view_2:
[0003692c] 4a82                      tst.l      d2
[0003692e] 6f08                      ble.s      edit_view_4
[00036930] 7802                      moveq.l    #2,d4
[00036932] b882                      cmp.l      d2,d4
[00036934] 6c1a                      bge.s      edit_view_5
[00036936] 6006                      bra.s      edit_view_6
edit_view_4:
[00036938] 7402                      moveq.l    #2,d2
[0003693a] b483                      cmp.l      d3,d2
[0003693c] 6c0a                      bge.s      edit_view_7
edit_view_6:
[0003693e] 2428 000a                 move.l     10(a0),d2
[00036942] e282                      asr.l      #1,d2
[00036944] 9082                      sub.l      d2,d0
[00036946] 6008                      bra.s      edit_view_5
edit_view_7:
[00036948] 74ff                      moveq.l    #-1,d2
[0003694a] d4a8 000a                 add.l      10(a0),d2
[0003694e] 9082                      sub.l      d2,d0
edit_view_5:
[00036950] 2228 0028                 move.l     40(a0),d1
[00036954] 92a8 000a                 sub.l      10(a0),d1
[00036958] 5281                      addq.l     #1,d1
[0003695a] b280                      cmp.l      d0,d1
[0003695c] 6c02                      bge.s      edit_view_8
[0003695e] 2001                      move.l     d1,d0
edit_view_8:
[00036960] 4a80                      tst.l      d0
[00036962] 6a02                      bpl.s      edit_view_9
[00036964] 7000                      moveq.l    #0,d0
edit_view_9:
[00036966] 2140 0018                 move.l     d0,24(a0)
edit_view_3:
[0003696a] 2628 0040                 move.l     64(a0),d3
[0003696e] 2228 001c                 move.l     28(a0),d1
[00036972] d2a8 000e                 add.l      14(a0),d1
[00036976] b2a8 0020                 cmp.l      32(a0),d1
[0003697a] 6f04                      ble.s      edit_view_10
[0003697c] 2228 0020                 move.l     32(a0),d1
edit_view_10:
[00036980] b6a8 001c                 cmp.l      28(a0),d3
[00036984] 6f04                      ble.s      edit_view_11
[00036986] b283                      cmp.l      d3,d1
[00036988] 6e2e                      bgt.s      edit_view_12
edit_view_11:
[0003698a] 2028 000e                 move.l     14(a0),d0
[0003698e] e280                      asr.l      #1,d0
[00036990] 5280                      addq.l     #1,d0
[00036992] 9680                      sub.l      d0,d3
[00036994] 2228 0020                 move.l     32(a0),d1
[00036998] 92a8 000e                 sub.l      14(a0),d1
[0003699c] b283                      cmp.l      d3,d1
[0003699e] 6c02                      bge.s      edit_view_13
[000369a0] 2601                      move.l     d1,d3
edit_view_13:
[000369a2] 4a83                      tst.l      d3
[000369a4] 6a02                      bpl.s      edit_view_14
[000369a6] 7600                      moveq.l    #0,d3
edit_view_14:
[000369a8] b6a8 001c                 cmp.l      28(a0),d3
[000369ac] 670a                      beq.s      edit_view_12
[000369ae] 0068 0008 0012            ori.w      #$0008,18(a0)
[000369b4] 2143 001c                 move.l     d3,28(a0)
edit_view_12:
[000369b8] 281f                      move.l     (a7)+,d4
[000369ba] 261f                      move.l     (a7)+,d3
[000369bc] 4e75                      rts

edit_showcol:
[000369be] b0a8 0020                 cmp.l      32(a0),d0
[000369c2] 6f04                      ble.s      edit_showcol_1
[000369c4] 2028 0020                 move.l     32(a0),d0
edit_showcol_1:
[000369c8] b0a8 001c                 cmp.l      28(a0),d0
[000369cc] 6c16                      bge.s      edit_showcol_2
[000369ce] 2228 000e                 move.l     14(a0),d1
[000369d2] e481                      asr.l      #2,d1
[000369d4] 93a8 001c                 sub.l      d1,28(a0)
[000369d8] 2228 001c                 move.l     28(a0),d1
[000369dc] 6a34                      bpl.s      edit_showcol_3
[000369de] 42a8 001c                 clr.l      28(a0)
[000369e2] 602e                      bra.s      edit_showcol_3
edit_showcol_2:
[000369e4] 2228 001c                 move.l     28(a0),d1
[000369e8] d2a8 000e                 add.l      14(a0),d1
[000369ec] b081                      cmp.l      d1,d0
[000369ee] 6d22                      blt.s      edit_showcol_3
[000369f0] 2028 000e                 move.l     14(a0),d0
[000369f4] e480                      asr.l      #2,d0
[000369f6] d1a8 001c                 add.l      d0,28(a0)
[000369fa] 2028 0020                 move.l     32(a0),d0
[000369fe] 90a8 000e                 sub.l      14(a0),d0
[00036a02] 4a80                      tst.l      d0
[00036a04] 6a02                      bpl.s      edit_showcol_4
[00036a06] 7000                      moveq.l    #0,d0
edit_showcol_4:
[00036a08] b0a8 001c                 cmp.l      28(a0),d0
[00036a0c] 6c04                      bge.s      edit_showcol_3
[00036a0e] 2140 001c                 move.l     d0,28(a0)
edit_showcol_3:
[00036a12] 4e75                      rts

edit_freeundo:
[00036a14] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00036a18] 2448                      movea.l    a0,a2
[00036a1a] 2600                      move.l     d0,d3
[00036a1c] 220a                      move.l     a2,d1
[00036a1e] 671c                      beq.s      edit_freeundo_1
[00036a20] 264a                      movea.l    a2,a3
[00036a22] 6008                      bra.s      edit_freeundo_2
edit_freeundo_3:
[00036a24] 205b                      movea.l    (a3)+,a0
[00036a26] 4eb9 0004 7d6c            jsr        Ax_ifree
edit_freeundo_2:
[00036a2c] 2003                      move.l     d3,d0
[00036a2e] 5383                      subq.l     #1,d3
[00036a30] 4a80                      tst.l      d0
[00036a32] 66f0                      bne.s      edit_freeundo_3
[00036a34] 204a                      movea.l    a2,a0
[00036a36] 4eb9 0004 7d6c            jsr        Ax_ifree
edit_freeundo_1:
[00036a3c] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00036a40] 4e75                      rts

edit_makeundo:
[00036a42] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00036a46] 2648                      movea.l    a0,a3
[00036a48] 2600                      move.l     d0,d3
[00036a4a] 2801                      move.l     d1,d4
[00036a4c] 9880                      sub.l      d0,d4
[00036a4e] 5284                      addq.l     #1,d4
[00036a50] 4a84                      tst.l      d4
[00036a52] 6f16                      ble.s      edit_makeundo_1
[00036a54] 2004                      move.l     d4,d0
[00036a56] e588                      lsl.l      #2,d0
[00036a58] 4eb9 0004 7cc8            jsr        Ax_malloc
[00036a5e] 2448                      movea.l    a0,a2
[00036a60] 200a                      move.l     a2,d0
[00036a62] 660a                      bne.s      edit_makeundo_2
[00036a64] 006b 0001 009e            ori.w      #$0001,158(a3)
edit_makeundo_1:
[00036a6a] 91c8                      suba.l     a0,a0
[00036a6c] 601c                      bra.s      edit_makeundo_3
edit_makeundo_2:
[00036a6e] 204a                      movea.l    a2,a0
[00036a70] 2003                      move.l     d3,d0
[00036a72] e788                      lsl.l      #3,d0
[00036a74] 226b 002c                 movea.l    44(a3),a1
[00036a78] d3c0                      adda.l     d0,a1
[00036a7a] 6006                      bra.s      edit_makeundo_4
edit_makeundo_5:
[00036a7c] 2491                      move.l     (a1),(a2)
[00036a7e] 584a                      addq.w     #4,a2
[00036a80] 5049                      addq.w     #8,a1
edit_makeundo_4:
[00036a82] 2004                      move.l     d4,d0
[00036a84] 5384                      subq.l     #1,d4
[00036a86] 4a80                      tst.l      d0
[00036a88] 66f2                      bne.s      edit_makeundo_5
edit_makeundo_3:
[00036a8a] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00036a8e] 4e75                      rts

edit_movelines:
[00036a90] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[00036a94] 2448                      movea.l    a0,a2
[00036a96] 2800                      move.l     d0,d4
[00036a98] 2601                      move.l     d1,d3
[00036a9a] 4a81                      tst.l      d1
[00036a9c] 6f4e                      ble.s      edit_movelines_1
[00036a9e] 242a 0028                 move.l     40(a2),d2
[00036aa2] d481                      add.l      d1,d2
[00036aa4] b4aa 0024                 cmp.l      36(a2),d2
[00036aa8] 6d12                      blt.s      edit_movelines_2
[00036aaa] 2001                      move.l     d1,d0
[00036aac] 4eb9 0003 7598            jsr        edit_expand
[00036ab2] 4a40                      tst.w      d0
[00036ab4] 6706                      beq.s      edit_movelines_2
[00036ab6] 70ff                      moveq.l    #-1,d0
[00036ab8] 6000 008e                 bra        edit_movelines_3
edit_movelines_2:
[00036abc] 2004                      move.l     d4,d0
[00036abe] e788                      lsl.l      #3,d0
[00036ac0] 266a 002c                 movea.l    44(a2),a3
[00036ac4] d7c0                      adda.l     d0,a3
[00036ac6] 7a01                      moveq.l    #1,d5
[00036ac8] daaa 0028                 add.l      40(a2),d5
[00036acc] 9a84                      sub.l      d4,d5
[00036ace] 4a85                      tst.l      d5
[00036ad0] 6f14                      ble.s      edit_movelines_4
[00036ad2] 2005                      move.l     d5,d0
[00036ad4] e788                      lsl.l      #3,d0
[00036ad6] 224b                      movea.l    a3,a1
[00036ad8] 2203                      move.l     d3,d1
[00036ada] e789                      lsl.l      #3,d1
[00036adc] 41f3 1800                 lea.l      0(a3,d1.l),a0
[00036ae0] 4eb9 0007 6f44            jsr        memcpy
edit_movelines_4:
[00036ae6] d7aa 0028                 add.l      d3,40(a2)
[00036aea] 605a                      bra.s      edit_movelines_5
edit_movelines_1:
[00036aec] 4a83                      tst.l      d3
[00036aee] 6a56                      bpl.s      edit_movelines_5
[00036af0] 2004                      move.l     d4,d0
[00036af2] e788                      lsl.l      #3,d0
[00036af4] 266a 002c                 movea.l    44(a2),a3
[00036af8] d7c0                      adda.l     d0,a3
[00036afa] 4483                      neg.l      d3
[00036afc] 7a01                      moveq.l    #1,d5
[00036afe] daaa 0028                 add.l      40(a2),d5
[00036b02] 9a84                      sub.l      d4,d5
[00036b04] 9a83                      sub.l      d3,d5
[00036b06] 97aa 0028                 sub.l      d3,40(a2)
[00036b0a] 4a85                      tst.l      d5
[00036b0c] 6f14                      ble.s      edit_movelines_6
[00036b0e] 2005                      move.l     d5,d0
[00036b10] e788                      lsl.l      #3,d0
[00036b12] 2203                      move.l     d3,d1
[00036b14] e789                      lsl.l      #3,d1
[00036b16] 43f3 1800                 lea.l      0(a3,d1.l),a1
[00036b1a] 204b                      movea.l    a3,a0
[00036b1c] 4eb9 0007 6f44            jsr        memcpy
edit_movelines_6:
[00036b22] 2203                      move.l     d3,d1
[00036b24] e789                      lsl.l      #3,d1
[00036b26] 4240                      clr.w      d0
[00036b28] 242a 0028                 move.l     40(a2),d2
[00036b2c] e78a                      lsl.l      #3,d2
[00036b2e] 206a 002c                 movea.l    44(a2),a0
[00036b32] 41f0 2808                 lea.l      8(a0,d2.l),a0
[00036b36] 4eb9 0007 712e            jsr        memset
[00036b3c] 202a 0028                 move.l     40(a2),d0
[00036b40] 6a04                      bpl.s      edit_movelines_5
[00036b42] 42aa 0028                 clr.l      40(a2)
edit_movelines_5:
[00036b46] 4240                      clr.w      d0
edit_movelines_3:
[00036b48] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00036b4c] 4e75                      rts

edit_insblk:
[00036b4e] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00036b52] 4fef ffe0                 lea.l      -32(a7),a7
[00036b56] 2648                      movea.l    a0,a3
[00036b58] 2f49 001c                 move.l     a1,28(a7)
[00036b5c] 2611                      move.l     (a1),d3
[00036b5e] 2003                      move.l     d3,d0
[00036b60] d0a9 0010                 add.l      16(a1),d0
[00036b64] 5380                      subq.l     #1,d0
[00036b66] 2f40 000c                 move.l     d0,12(a7)
[00036b6a] 90ab 0024                 sub.l      36(a3),d0
[00036b6e] 5280                      addq.l     #1,d0
[00036b70] 2f40 0008                 move.l     d0,8(a7)
[00036b74] 4a80                      tst.l      d0
[00036b76] 6f0c                      ble.s      edit_insblk_1
[00036b78] 4eb9 0003 7598            jsr        edit_expand
[00036b7e] 4a40                      tst.w      d0
[00036b80] 6600 020a                 bne        edit_insblk_2
edit_insblk_1:
[00036b84] 2f6f 000c 0004            move.l     12(a7),4(a7)
[00036b8a] 202f 000c                 move.l     12(a7),d0
[00036b8e] b0ab 0028                 cmp.l      40(a3),d0
[00036b92] 6f0a                      ble.s      edit_insblk_3
[00036b94] 2f6b 0028 0004            move.l     40(a3),4(a7)
[00036b9a] 2740 0028                 move.l     d0,40(a3)
edit_insblk_3:
[00036b9e] 202f 0004                 move.l     4(a7),d0
[00036ba2] 9083                      sub.l      d3,d0
[00036ba4] 5280                      addq.l     #1,d0
[00036ba6] 2f40 0010                 move.l     d0,16(a7)
[00036baa] 222f 0004                 move.l     4(a7),d1
[00036bae] 204b                      movea.l    a3,a0
[00036bb0] 2003                      move.l     d3,d0
[00036bb2] 6100 fe8e                 bsr        edit_makeundo
[00036bb6] 2848                      movea.l    a0,a4
[00036bb8] 200c                      move.l     a4,d0
[00036bba] 6700 01d0                 beq        edit_insblk_2
[00036bbe] 202b 0092                 move.l     146(a3),d0
[00036bc2] 206b 0096                 movea.l    150(a3),a0
[00036bc6] 6100 fe4c                 bsr        edit_freeundo
[00036bca] 42ab 0096                 clr.l      150(a3)
[00036bce] 42ab 0092                 clr.l      146(a3)
[00036bd2] 206f 001c                 movea.l    28(a7),a0
[00036bd6] 2f68 0014 0018            move.l     20(a0),24(a7)
[00036bdc] 226f 0018                 movea.l    24(a7),a1
[00036be0] 2051                      movea.l    (a1),a0
[00036be2] 4eb9 0007 69b0            jsr        strlen
[00036be8] 3e80                      move.w     d0,(a7)
[00036bea] 3c2b 009a                 move.w     154(a3),d6
[00036bee] 206f 001c                 movea.l    28(a7),a0
[00036bf2] 3228 0006                 move.w     6(a0),d1
[00036bf6] 2403                      move.l     d3,d2
[00036bf8] e78a                      lsl.l      #3,d2
[00036bfa] 226b 002c                 movea.l    44(a3),a1
[00036bfe] 2071 2800                 movea.l    0(a1,d2.l),a0
[00036c02] 3006                      move.w     d6,d0
[00036c04] 6100 f69c                 bsr        vpos
[00036c08] 3f40 0002                 move.w     d0,2(a7)
[00036c0c] 2e03                      move.l     d3,d7
[00036c0e] 6000 010c                 bra        edit_insblk_4
edit_insblk_13:
[00036c12] 2007                      move.l     d7,d0
[00036c14] e788                      lsl.l      #3,d0
[00036c16] 2c6b 002c                 movea.l    44(a3),a6
[00036c1a] ddc0                      adda.l     d0,a6
[00036c1c] 2456                      movea.l    (a6),a2
[00036c1e] 220a                      move.l     a2,d1
[00036c20] 6606                      bne.s      edit_insblk_5
[00036c22] 45f9 000c 2f4e            lea.l      $000C2F4E,a2
edit_insblk_5:
[00036c28] 322f 0002                 move.w     2(a7),d1
[00036c2c] 3006                      move.w     d6,d0
[00036c2e] 204a                      movea.l    a2,a0
[00036c30] 6100 f634                 bsr        posv
[00036c34] 3a00                      move.w     d0,d5
[00036c36] 3205                      move.w     d5,d1
[00036c38] 204a                      movea.l    a2,a0
[00036c3a] 3006                      move.w     d6,d0
[00036c3c] 6100 f664                 bsr        vpos
[00036c40] 382f 0002                 move.w     2(a7),d4
[00036c44] 9840                      sub.w      d0,d4
[00036c46] 206f 0018                 movea.l    24(a7),a0
[00036c4a] 2050                      movea.l    (a0),a0
[00036c4c] 4eb9 0007 69b0            jsr        strlen
[00036c52] 322e 0004                 move.w     4(a6),d1
[00036c56] 48c1                      ext.l      d1
[00036c58] d081                      add.l      d1,d0
[00036c5a] 3404                      move.w     d4,d2
[00036c5c] 48c2                      ext.l      d2
[00036c5e] d082                      add.l      d2,d0
[00036c60] 2f40 0014                 move.l     d0,20(a7)
[00036c64] 7001                      moveq.l    #1,d0
[00036c66] d0af 0014                 add.l      20(a7),d0
[00036c6a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00036c70] 2a48                      movea.l    a0,a5
[00036c72] 200d                      move.l     a5,d0
[00036c74] 6744                      beq.s      edit_insblk_6
[00036c76] 3005                      move.w     d5,d0
[00036c78] 48c0                      ext.l      d0
[00036c7a] 224a                      movea.l    a2,a1
[00036c7c] 4eb9 0007 6a1a            jsr        strncpy
[00036c82] 4a44                      tst.w      d4
[00036c84] 6710                      beq.s      edit_insblk_7
[00036c86] 3204                      move.w     d4,d1
[00036c88] 48c1                      ext.l      d1
[00036c8a] 7020                      moveq.l    #32,d0
[00036c8c] 41f5 5000                 lea.l      0(a5,d5.w),a0
[00036c90] 4eb9 0007 712e            jsr        memset
edit_insblk_7:
[00036c96] 206f 0018                 movea.l    24(a7),a0
[00036c9a] 2250                      movea.l    (a0),a1
[00036c9c] 41f5 5000                 lea.l      0(a5,d5.w),a0
[00036ca0] d0c4                      adda.w     d4,a0
[00036ca2] 4eb9 0007 6950            jsr        strcpy
[00036ca8] 43f2 5000                 lea.l      0(a2,d5.w),a1
[00036cac] 41f5 5000                 lea.l      0(a5,d5.w),a0
[00036cb0] d0c4                      adda.w     d4,a0
[00036cb2] 4eb9 0007 6886            jsr        strcat
[00036cb8] 6050                      bra.s      edit_insblk_8
edit_insblk_6:
[00036cba] 006b 0001 009e            ori.w      #$0001,158(a3)
[00036cc0] 2803                      move.l     d3,d4
[00036cc2] 6036                      bra.s      edit_insblk_9
edit_insblk_12:
[00036cc4] 2004                      move.l     d4,d0
[00036cc6] e788                      lsl.l      #3,d0
[00036cc8] 2c6b 002c                 movea.l    44(a3),a6
[00036ccc] ddc0                      adda.l     d0,a6
[00036cce] 2056                      movea.l    (a6),a0
[00036cd0] 4eb9 0004 7d6c            jsr        Ax_ifree
[00036cd6] 2004                      move.l     d4,d0
[00036cd8] 9083                      sub.l      d3,d0
[00036cda] e588                      lsl.l      #2,d0
[00036cdc] 2cb4 0800                 move.l     0(a4,d0.l),(a6)
[00036ce0] 2216                      move.l     (a6),d1
[00036ce2] 6710                      beq.s      edit_insblk_10
[00036ce4] 2041                      movea.l    d1,a0
[00036ce6] 4eb9 0007 69b0            jsr        strlen
[00036cec] 5240                      addq.w     #1,d0
[00036cee] 3d40 0004                 move.w     d0,4(a6)
[00036cf2] 6004                      bra.s      edit_insblk_11
edit_insblk_10:
[00036cf4] 426e 0004                 clr.w      4(a6)
edit_insblk_11:
[00036cf8] 5284                      addq.l     #1,d4
edit_insblk_9:
[00036cfa] be84                      cmp.l      d4,d7
[00036cfc] 6cc6                      bge.s      edit_insblk_12
[00036cfe] 204c                      movea.l    a4,a0
[00036d00] 4eb9 0004 7d6c            jsr        Ax_ifree
[00036d06] 6000 0084                 bra        edit_insblk_2
edit_insblk_8:
[00036d0a] 2c8d                      move.l     a5,(a6)
[00036d0c] 3d6f 0016 0004            move.w     22(a7),4(a6)
[00036d12] 426e 0006                 clr.w      6(a6)
[00036d16] 58af 0018                 addq.l     #4,24(a7)
[00036d1a] 5287                      addq.l     #1,d7
edit_insblk_4:
[00036d1c] beaf 000c                 cmp.l      12(a7),d7
[00036d20] 6f00 fef0                 ble        edit_insblk_13
[00036d24] 274c 0096                 move.l     a4,150(a3)
[00036d28] 276f 0010 0092            move.l     16(a7),146(a3)
[00036d2e] 026b fdff 0012            andi.w     #$FDFF,18(a3)
[00036d34] 006b 0008 0012            ori.w      #$0008,18(a3)
[00036d3a] 2743 007a                 move.l     d3,122(a3)
[00036d3e] 276f 0004 0082            move.l     4(a7),130(a3)
[00036d44] 206f 001c                 movea.l    28(a7),a0
[00036d48] 2028 0004                 move.l     4(a0),d0
[00036d4c] 2740 007e                 move.l     d0,126(a3)
[00036d50] 2740 0086                 move.l     d0,134(a3)
[00036d54] 276f 000c 008a            move.l     12(a7),138(a3)
[00036d5a] 3017                      move.w     (a7),d0
[00036d5c] 48c0                      ext.l      d0
[00036d5e] d0a8 0004                 add.l      4(a0),d0
[00036d62] 2740 008e                 move.l     d0,142(a3)
[00036d66] 2743 0030                 move.l     d3,48(a3)
[00036d6a] 276b 008e 0034            move.l     142(a3),52(a3)
[00036d70] 322b 0036                 move.w     54(a3),d1
[00036d74] 3006                      move.w     d6,d0
[00036d76] 2403                      move.l     d3,d2
[00036d78] e78a                      lsl.l      #3,d2
[00036d7a] 226b 002c                 movea.l    44(a3),a1
[00036d7e] 2071 2800                 movea.l    0(a1,d2.l),a0
[00036d82] 6100 f51e                 bsr        vpos
[00036d86] 48c0                      ext.l      d0
[00036d88] 2740 0040                 move.l     d0,64(a3)
edit_insblk_2:
[00036d8c] 4fef 0020                 lea.l      32(a7),a7
[00036d90] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00036d94] 4e75                      rts

edit_cutblk:
[00036d96] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00036d9a] 4fef fff4                 lea.l      -12(a7),a7
[00036d9e] 2648                      movea.l    a0,a3
[00036da0] 2449                      movea.l    a1,a2
[00036da2] 202a 0004                 move.l     4(a2),d0
[00036da6] b0aa 000c                 cmp.l      12(a2),d0
[00036daa] 6d10                      blt.s      edit_cutblk_1
[00036dac] 202a 0010                 move.l     16(a2),d0
[00036db0] 206a 0014                 movea.l    20(a2),a0
[00036db4] 6100 fc5e                 bsr        edit_freeundo
[00036db8] 6000 01a6                 bra        edit_cutblk_2
edit_cutblk_1:
[00036dbc] 222a 0008                 move.l     8(a2),d1
[00036dc0] 2012                      move.l     (a2),d0
[00036dc2] 204b                      movea.l    a3,a0
[00036dc4] 6100 fc7c                 bsr        edit_makeundo
[00036dc8] 2f48 0008                 move.l     a0,8(a7)
[00036dcc] 2008                      move.l     a0,d0
[00036dce] 6700 0190                 beq        edit_cutblk_2
[00036dd2] 202b 0092                 move.l     146(a3),d0
[00036dd6] 206b 0096                 movea.l    150(a3),a0
[00036dda] 6100 fc38                 bsr        edit_freeundo
[00036dde] 42ab 0096                 clr.l      150(a3)
[00036de2] 42ab 0092                 clr.l      146(a3)
[00036de6] 202a 0008                 move.l     8(a2),d0
[00036dea] 9092                      sub.l      (a2),d0
[00036dec] 5280                      addq.l     #1,d0
[00036dee] 2f40 0004                 move.l     d0,4(a7)
[00036df2] 382b 009a                 move.w     154(a3),d4
[00036df6] 322a 0006                 move.w     6(a2),d1
[00036dfa] 2412                      move.l     (a2),d2
[00036dfc] e78a                      lsl.l      #3,d2
[00036dfe] 206b 002c                 movea.l    44(a3),a0
[00036e02] 2070 2800                 movea.l    0(a0,d2.l),a0
[00036e06] 3004                      move.w     d4,d0
[00036e08] 6100 f498                 bsr        vpos
[00036e0c] 3f40 0002                 move.w     d0,2(a7)
[00036e10] 322a 000e                 move.w     14(a2),d1
[00036e14] 242a 0008                 move.l     8(a2),d2
[00036e18] e78a                      lsl.l      #3,d2
[00036e1a] 206b 002c                 movea.l    44(a3),a0
[00036e1e] 2070 2800                 movea.l    0(a0,d2.l),a0
[00036e22] 3004                      move.w     d4,d0
[00036e24] 6100 f47c                 bsr        vpos
[00036e28] 3e80                      move.w     d0,(a7)
[00036e2a] 322f 0002                 move.w     2(a7),d1
[00036e2e] b240                      cmp.w      d0,d1
[00036e30] 6f08                      ble.s      edit_cutblk_3
[00036e32] 3001                      move.w     d1,d0
[00036e34] 3f57 0002                 move.w     (a7),2(a7)
[00036e38] 3e80                      move.w     d0,(a7)
edit_cutblk_3:
[00036e3a] 2e12                      move.l     (a2),d7
[00036e3c] 6000 00d2                 bra        edit_cutblk_4
edit_cutblk_13:
[00036e40] 2007                      move.l     d7,d0
[00036e42] e788                      lsl.l      #3,d0
[00036e44] 2a6b 002c                 movea.l    44(a3),a5
[00036e48] dbc0                      adda.l     d0,a5
[00036e4a] 2c55                      movea.l    (a5),a6
[00036e4c] 220e                      move.l     a6,d1
[00036e4e] 6700 00be                 beq        edit_cutblk_5
[00036e52] 204e                      movea.l    a6,a0
[00036e54] 3004                      move.w     d4,d0
[00036e56] 322f 0002                 move.w     2(a7),d1
[00036e5a] 6100 f40a                 bsr        posv
[00036e5e] 3600                      move.w     d0,d3
[00036e60] 3217                      move.w     (a7),d1
[00036e62] 204e                      movea.l    a6,a0
[00036e64] 3004                      move.w     d4,d0
[00036e66] 6100 f3fe                 bsr        posv
[00036e6a] 3a00                      move.w     d0,d5
[00036e6c] 3c05                      move.w     d5,d6
[00036e6e] 9c43                      sub.w      d3,d6
[00036e70] 48c6                      ext.l      d6
[00036e72] 4a86                      tst.l      d6
[00036e74] 6f00 0098                 ble        edit_cutblk_5
[00036e78] 322d 0004                 move.w     4(a5),d1
[00036e7c] 48c1                      ext.l      d1
[00036e7e] 9286                      sub.l      d6,d1
[00036e80] 2c01                      move.l     d1,d6
[00036e82] 4a81                      tst.l      d1
[00036e84] 6f00 007c                 ble.w      edit_cutblk_6
[00036e88] 7001                      moveq.l    #1,d0
[00036e8a] d081                      add.l      d1,d0
[00036e8c] 4eb9 0004 7cc8            jsr        Ax_malloc
[00036e92] 2848                      movea.l    a0,a4
[00036e94] 200c                      move.l     a4,d0
[00036e96] 671c                      beq.s      edit_cutblk_7
[00036e98] 3003                      move.w     d3,d0
[00036e9a] 48c0                      ext.l      d0
[00036e9c] 224e                      movea.l    a6,a1
[00036e9e] 4eb9 0007 6a1a            jsr        strncpy
[00036ea4] 43f6 5000                 lea.l      0(a6,d5.w),a1
[00036ea8] 41f4 3000                 lea.l      0(a4,d3.w),a0
[00036eac] 4eb9 0007 6950            jsr        strcpy
[00036eb2] 6050                      bra.s      edit_cutblk_8
edit_cutblk_7:
[00036eb4] 2a12                      move.l     (a2),d5
[00036eb6] 603a                      bra.s      edit_cutblk_9
edit_cutblk_12:
[00036eb8] 2005                      move.l     d5,d0
[00036eba] e788                      lsl.l      #3,d0
[00036ebc] 2a6b 002c                 movea.l    44(a3),a5
[00036ec0] dbc0                      adda.l     d0,a5
[00036ec2] 2055                      movea.l    (a5),a0
[00036ec4] 4eb9 0004 7d6c            jsr        Ax_ifree
[00036eca] 2005                      move.l     d5,d0
[00036ecc] 9092                      sub.l      (a2),d0
[00036ece] e588                      lsl.l      #2,d0
[00036ed0] 206f 0008                 movea.l    8(a7),a0
[00036ed4] 2ab0 0800                 move.l     0(a0,d0.l),(a5)
[00036ed8] 2015                      move.l     (a5),d0
[00036eda] 6710                      beq.s      edit_cutblk_10
[00036edc] 2040                      movea.l    d0,a0
[00036ede] 4eb9 0007 69b0            jsr        strlen
[00036ee4] 5240                      addq.w     #1,d0
[00036ee6] 3b40 0004                 move.w     d0,4(a5)
[00036eea] 6004                      bra.s      edit_cutblk_11
edit_cutblk_10:
[00036eec] 426d 0004                 clr.w      4(a5)
edit_cutblk_11:
[00036ef0] 5285                      addq.l     #1,d5
edit_cutblk_9:
[00036ef2] be85                      cmp.l      d5,d7
[00036ef4] 6ec2                      bgt.s      edit_cutblk_12
[00036ef6] 206f 0008                 movea.l    8(a7),a0
[00036efa] 4eb9 0004 7d6c            jsr        Ax_ifree
[00036f00] 605e                      bra.s      edit_cutblk_2
edit_cutblk_6:
[00036f02] 99cc                      suba.l     a4,a4
edit_cutblk_8:
[00036f04] 2a8c                      move.l     a4,(a5)
[00036f06] 3b46 0004                 move.w     d6,4(a5)
[00036f0a] 426d 0006                 clr.w      6(a5)
edit_cutblk_5:
[00036f0e] 5287                      addq.l     #1,d7
edit_cutblk_4:
[00036f10] beaa 0008                 cmp.l      8(a2),d7
[00036f14] 6f00 ff2a                 ble        edit_cutblk_13
[00036f18] 2752 007a                 move.l     (a2),122(a3)
[00036f1c] 202a 0004                 move.l     4(a2),d0
[00036f20] 2740 007e                 move.l     d0,126(a3)
[00036f24] 2740 008e                 move.l     d0,142(a3)
[00036f28] 2740 0034                 move.l     d0,52(a3)
[00036f2c] 222a 0008                 move.l     8(a2),d1
[00036f30] 2741 0082                 move.l     d1,130(a3)
[00036f34] 2741 008a                 move.l     d1,138(a3)
[00036f38] 276a 000c 0086            move.l     12(a2),134(a3)
[00036f3e] 302f 0002                 move.w     2(a7),d0
[00036f42] 48c0                      ext.l      d0
[00036f44] 2740 0040                 move.l     d0,64(a3)
[00036f48] 276f 0008 0096            move.l     8(a7),150(a3)
[00036f4e] 276f 0004 0092            move.l     4(a7),146(a3)
[00036f54] 026b fdff 0012            andi.w     #$FDFF,18(a3)
[00036f5a] 006b 0008 0012            ori.w      #$0008,18(a3)
edit_cutblk_2:
[00036f60] 4fef 000c                 lea.l      12(a7),a7
[00036f64] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00036f68] 4e75                      rts

edit_substitute:
[00036f6a] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00036f6e] 4fef ffe6                 lea.l      -26(a7),a7
[00036f72] 2448                      movea.l    a0,a2
[00036f74] 2649                      movea.l    a1,a3
[00036f76] 006a 2000 0012            ori.w      #$2000,18(a2)
[00036f7c] 426f 0010                 clr.w      16(a7)
[00036f80] 0c6a 0005 0070            cmpi.w     #$0005,112(a2)
[00036f86] 6670                      bne.s      edit_substitute_1
[00036f88] 302a 0012                 move.w     18(a2),d0
[00036f8c] c07c 0200                 and.w      #$0200,d0
[00036f90] 6710                      beq.s      edit_substitute_2
[00036f92] 4242                      clr.w      d2
[00036f94] 222a 0038                 move.l     56(a2),d1
[00036f98] 202a 0030                 move.l     48(a2),d0
[00036f9c] 4eb9 0003 7d4e            jsr        edit_selrange
edit_substitute_2:
[00036fa2] 2013                      move.l     (a3),d0
[00036fa4] b0ab 0008                 cmp.l      8(a3),d0
[00036fa8] 6620                      bne.s      edit_substitute_3
[00036faa] 222b 0004                 move.l     4(a3),d1
[00036fae] b2ab 000c                 cmp.l      12(a3),d1
[00036fb2] 6616                      bne.s      edit_substitute_3
[00036fb4] 206b 0014                 movea.l    20(a3),a0
[00036fb8] 2250                      movea.l    (a0),a1
[00036fba] 1411                      move.b     (a1),d2
[00036fbc] 673a                      beq.s      edit_substitute_1
[00036fbe] 204a                      movea.l    a2,a0
[00036fc0] 224b                      movea.l    a3,a1
[00036fc2] 6100 fb8a                 bsr        edit_insblk
[00036fc6] 6000 0376                 bra        edit_substitute_4
edit_substitute_3:
[00036fca] 7001                      moveq.l    #1,d0
[00036fcc] b0ab 0010                 cmp.l      16(a3),d0
[00036fd0] 6616                      bne.s      edit_substitute_5
[00036fd2] 206b 0014                 movea.l    20(a3),a0
[00036fd6] 2250                      movea.l    (a0),a1
[00036fd8] 1211                      move.b     (a1),d1
[00036fda] 660c                      bne.s      edit_substitute_5
[00036fdc] 204a                      movea.l    a2,a0
[00036fde] 224b                      movea.l    a3,a1
[00036fe0] 6100 fdb4                 bsr        edit_cutblk
[00036fe4] 6000 0358                 bra        edit_substitute_4
edit_substitute_5:
[00036fe8] 3f7c 0001 0010            move.w     #$0001,16(a7)
[00036fee] 2753 0008                 move.l     (a3),8(a3)
[00036ff2] 276b 0004 000c            move.l     4(a3),12(a3)
edit_substitute_1:
[00036ff8] 2813                      move.l     (a3),d4
[00036ffa] 2a2b 0008                 move.l     8(a3),d5
[00036ffe] 9a84                      sub.l      d4,d5
[00037000] 5285                      addq.l     #1,d5
[00037002] 222b 0008                 move.l     8(a3),d1
[00037006] 2013                      move.l     (a3),d0
[00037008] 204a                      movea.l    a2,a0
[0003700a] 6100 fa36                 bsr        edit_makeundo
[0003700e] 2f48 0008                 move.l     a0,8(a7)
[00037012] 2008                      move.l     a0,d0
[00037014] 6700 0328                 beq        edit_substitute_4
[00037018] 202a 0092                 move.l     146(a2),d0
[0003701c] 206a 0096                 movea.l    150(a2),a0
[00037020] 6100 f9f2                 bsr        edit_freeundo
[00037024] 42aa 0096                 clr.l      150(a2)
[00037028] 42aa 0092                 clr.l      146(a2)
[0003702c] 7008                      moveq.l    #8,d0
[0003702e] 222b 0008                 move.l     8(a3),d1
[00037032] e789                      lsl.l      #3,d1
[00037034] 226a 002c                 movea.l    44(a2),a1
[00037038] d3c1                      adda.l     d1,a1
[0003703a] 41d7                      lea.l      (a7),a0
[0003703c] 4eb9 0007 6f44            jsr        memcpy
[00037042] 7001                      moveq.l    #1,d0
[00037044] d084                      add.l      d4,d0
[00037046] 2f40 0016                 move.l     d0,22(a7)
[0003704a] 72ff                      moveq.l    #-1,d1
[0003704c] d2ab 0010                 add.l      16(a3),d1
[00037050] 92ab 0008                 sub.l      8(a3),d1
[00037054] d284                      add.l      d4,d1
[00037056] 2f41 0012                 move.l     d1,18(a7)
[0003705a] 204a                      movea.l    a2,a0
[0003705c] 6100 fa32                 bsr        edit_movelines
[00037060] 4a40                      tst.w      d0
[00037062] 670e                      beq.s      edit_substitute_6
[00037064] 206f 0008                 movea.l    8(a7),a0
[00037068] 4eb9 0004 7d6c            jsr        Ax_ifree
[0003706e] 6000 02ce                 bra        edit_substitute_4
edit_substitute_6:
[00037072] 026a fdff 0012            andi.w     #$FDFF,18(a2)
[00037078] 2553 007a                 move.l     (a3),122(a2)
[0003707c] 256b 0004 007e            move.l     4(a3),126(a2)
[00037082] 256b 0008 0082            move.l     8(a3),130(a2)
[00037088] 256b 000c 0086            move.l     12(a3),134(a2)
[0003708e] 2f6b 0014 000c            move.l     20(a3),12(a7)
[00037094] 7001                      moveq.l    #1,d0
[00037096] b0ab 0010                 cmp.l      16(a3),d0
[0003709a] 6600 00cc                 bne        edit_substitute_7
[0003709e] b085                      cmp.l      d5,d0
[000370a0] 6612                      bne.s      edit_substitute_8
[000370a2] 322f 0010                 move.w     16(a7),d1
[000370a6] 660c                      bne.s      edit_substitute_8
[000370a8] 204a                      movea.l    a2,a0
[000370aa] 2004                      move.l     d4,d0
[000370ac] 4eb9 0003 74a8            jsr        edit_updateline
[000370b2] 6006                      bra.s      edit_substitute_9
edit_substitute_8:
[000370b4] 006a 0008 0012            ori.w      #$0008,18(a2)
edit_substitute_9:
[000370ba] 2004                      move.l     d4,d0
[000370bc] e788                      lsl.l      #3,d0
[000370be] 2a6a 002c                 movea.l    44(a2),a5
[000370c2] dbc0                      adda.l     d0,a5
[000370c4] 206f 000c                 movea.l    12(a7),a0
[000370c8] 2050                      movea.l    (a0),a0
[000370ca] 4eb9 0007 69b0            jsr        strlen
[000370d0] 2600                      move.l     d0,d3
[000370d2] d6ab 0004                 add.l      4(a3),d3
[000370d6] 2e03                      move.l     d3,d7
[000370d8] 9eab 000c                 sub.l      12(a3),d7
[000370dc] 302f 0004                 move.w     4(a7),d0
[000370e0] 48c0                      ext.l      d0
[000370e2] de80                      add.l      d0,d7
[000370e4] 4a87                      tst.l      d7
[000370e6] 6f56                      ble.s      edit_substitute_10
[000370e8] 7001                      moveq.l    #1,d0
[000370ea] d087                      add.l      d7,d0
[000370ec] 4eb9 0004 7cc8            jsr        Ax_malloc
[000370f2] 2848                      movea.l    a0,a4
[000370f4] 200c                      move.l     a4,d0
[000370f6] 6700 0226                 beq        edit_substitute_11
[000370fa] 302d 0004                 move.w     4(a5),d0
[000370fe] 6f0c                      ble.s      edit_substitute_12
[00037100] 202b 0004                 move.l     4(a3),d0
[00037104] 2255                      movea.l    (a5),a1
[00037106] 4eb9 0007 6a1a            jsr        strncpy
edit_substitute_12:
[0003710c] 206f 000c                 movea.l    12(a7),a0
[00037110] 2250                      movea.l    (a0),a1
[00037112] 202b 0004                 move.l     4(a3),d0
[00037116] 41f4 0800                 lea.l      0(a4,d0.l),a0
[0003711a] 4eb9 0007 6950            jsr        strcpy
[00037120] 302f 0004                 move.w     4(a7),d0
[00037124] 6f1a                      ble.s      edit_substitute_13
[00037126] 222b 000c                 move.l     12(a3),d1
[0003712a] 2257                      movea.l    (a7),a1
[0003712c] d3c1                      adda.l     d1,a1
[0003712e] 242b 0004                 move.l     4(a3),d2
[00037132] 41f4 2800                 lea.l      0(a4,d2.l),a0
[00037136] 4eb9 0007 6886            jsr        strcat
[0003713c] 6002                      bra.s      edit_substitute_13
edit_substitute_10:
[0003713e] 99cc                      suba.l     a4,a4
edit_substitute_13:
[00037140] 2544 0030                 move.l     d4,48(a2)
[00037144] 2543 0034                 move.l     d3,52(a2)
[00037148] 3203                      move.w     d3,d1
[0003714a] 302a 009a                 move.w     154(a2),d0
[0003714e] 204c                      movea.l    a4,a0
[00037150] 6100 f150                 bsr        vpos
[00037154] 48c0                      ext.l      d0
[00037156] 2540 0040                 move.l     d0,64(a2)
[0003715a] 2a8c                      move.l     a4,(a5)
[0003715c] 3b47 0004                 move.w     d7,4(a5)
[00037160] 426d 0006                 clr.w      6(a5)
[00037164] 6000 0156                 bra        edit_substitute_14
edit_substitute_7:
[00037168] 006a 0008 0012            ori.w      #$0008,18(a2)
[0003716e] 2004                      move.l     d4,d0
[00037170] e788                      lsl.l      #3,d0
[00037172] 2a6a 002c                 movea.l    44(a2),a5
[00037176] dbc0                      adda.l     d0,a5
[00037178] 206f 000c                 movea.l    12(a7),a0
[0003717c] 2050                      movea.l    (a0),a0
[0003717e] 4eb9 0007 69b0            jsr        strlen
[00037184] 2e00                      move.l     d0,d7
[00037186] deab 0004                 add.l      4(a3),d7
[0003718a] 4a87                      tst.l      d7
[0003718c] 6f34                      ble.s      edit_substitute_15
[0003718e] 7001                      moveq.l    #1,d0
[00037190] d087                      add.l      d7,d0
[00037192] 4eb9 0004 7cc8            jsr        Ax_malloc
[00037198] 2848                      movea.l    a0,a4
[0003719a] 200c                      move.l     a4,d0
[0003719c] 6700 0180                 beq        edit_substitute_11
[000371a0] 202b 0004                 move.l     4(a3),d0
[000371a4] 2255                      movea.l    (a5),a1
[000371a6] 4eb9 0007 6a1a            jsr        strncpy
[000371ac] 206f 000c                 movea.l    12(a7),a0
[000371b0] 2250                      movea.l    (a0),a1
[000371b2] 202b 0004                 move.l     4(a3),d0
[000371b6] 41f4 0800                 lea.l      0(a4,d0.l),a0
[000371ba] 4eb9 0007 6950            jsr        strcpy
[000371c0] 6002                      bra.s      edit_substitute_16
edit_substitute_15:
[000371c2] 99cc                      suba.l     a4,a4
edit_substitute_16:
[000371c4] 2a8c                      move.l     a4,(a5)
[000371c6] 3b47 0004                 move.w     d7,4(a5)
[000371ca] 426d 0006                 clr.w      6(a5)
[000371ce] 202b 0010                 move.l     16(a3),d0
[000371d2] e588                      lsl.l      #2,d0
[000371d4] 206f 000c                 movea.l    12(a7),a0
[000371d8] 2c70 08fc                 movea.l    -4(a0,d0.l),a6
[000371dc] 204e                      movea.l    a6,a0
[000371de] 4eb9 0007 69b0            jsr        strlen
[000371e4] 2600                      move.l     d0,d3
[000371e6] 3e2f 0004                 move.w     4(a7),d7
[000371ea] 48c7                      ext.l      d7
[000371ec] de83                      add.l      d3,d7
[000371ee] 9eab 000c                 sub.l      12(a3),d7
[000371f2] 4a87                      tst.l      d7
[000371f4] 6f36                      ble.s      edit_substitute_17
[000371f6] 7001                      moveq.l    #1,d0
[000371f8] d087                      add.l      d7,d0
[000371fa] 4eb9 0004 7cc8            jsr        Ax_malloc
[00037200] 2848                      movea.l    a0,a4
[00037202] 200c                      move.l     a4,d0
[00037204] 6720                      beq.s      edit_substitute_18
[00037206] 224e                      movea.l    a6,a1
[00037208] 4eb9 0007 6950            jsr        strcpy
[0003720e] 302f 0004                 move.w     4(a7),d0
[00037212] 6f1a                      ble.s      edit_substitute_19
[00037214] 222b 000c                 move.l     12(a3),d1
[00037218] 2257                      movea.l    (a7),a1
[0003721a] d3c1                      adda.l     d1,a1
[0003721c] 204c                      movea.l    a4,a0
[0003721e] 4eb9 0007 6886            jsr        strcat
[00037224] 6008                      bra.s      edit_substitute_19
edit_substitute_18:
[00037226] 7c01                      moveq.l    #1,d6
[00037228] 6000 00aa                 bra        edit_substitute_20
edit_substitute_17:
[0003722c] 99cc                      suba.l     a4,a4
edit_substitute_19:
[0003722e] 3203                      move.w     d3,d1
[00037230] 302a 009a                 move.w     154(a2),d0
[00037234] 204c                      movea.l    a4,a0
[00037236] 6100 f06a                 bsr        vpos
[0003723a] 48c0                      ext.l      d0
[0003723c] 2540 0040                 move.l     d0,64(a2)
[00037240] 222b 0010                 move.l     16(a3),d1
[00037244] e789                      lsl.l      #3,d1
[00037246] 2404                      move.l     d4,d2
[00037248] e78a                      lsl.l      #3,d2
[0003724a] 2a6a 002c                 movea.l    44(a2),a5
[0003724e] dbc2                      adda.l     d2,a5
[00037250] 4bf5 18f8                 lea.l      -8(a5,d1.l),a5
[00037254] 2a8c                      move.l     a4,(a5)
[00037256] 3b47 0004                 move.w     d7,4(a5)
[0003725a] 426d 0006                 clr.w      6(a5)
[0003725e] 7c01                      moveq.l    #1,d6
[00037260] 6040                      bra.s      edit_substitute_21
edit_substitute_22:
[00037262] 2006                      move.l     d6,d0
[00037264] e788                      lsl.l      #3,d0
[00037266] 2204                      move.l     d4,d1
[00037268] e789                      lsl.l      #3,d1
[0003726a] 2a6a 002c                 movea.l    44(a2),a5
[0003726e] dbc1                      adda.l     d1,a5
[00037270] dbc0                      adda.l     d0,a5
[00037272] 2406                      move.l     d6,d2
[00037274] e58a                      lsl.l      #2,d2
[00037276] 206f 000c                 movea.l    12(a7),a0
[0003727a] 2c70 2800                 movea.l    0(a0,d2.l),a6
[0003727e] 204e                      movea.l    a6,a0
[00037280] 4eb9 0007 69b0            jsr        strlen
[00037286] 2e00                      move.l     d0,d7
[00037288] 204e                      movea.l    a6,a0
[0003728a] 4eb9 0004 36d6            jsr        Ast_create
[00037290] 2848                      movea.l    a0,a4
[00037292] 200c                      move.l     a4,d0
[00037294] 673e                      beq.s      edit_substitute_20
[00037296] 2a80                      move.l     d0,(a5)
[00037298] 3b47 0004                 move.w     d7,4(a5)
[0003729c] 426d 0006                 clr.w      6(a5)
[000372a0] 5286                      addq.l     #1,d6
edit_substitute_21:
[000372a2] 70ff                      moveq.l    #-1,d0
[000372a4] d0ab 0010                 add.l      16(a3),d0
[000372a8] bc80                      cmp.l      d0,d6
[000372aa] 6db6                      blt.s      edit_substitute_22
[000372ac] 2543 0034                 move.l     d3,52(a2)
[000372b0] 2004                      move.l     d4,d0
[000372b2] d0ab 0010                 add.l      16(a3),d0
[000372b6] 5380                      subq.l     #1,d0
[000372b8] 2540 0030                 move.l     d0,48(a2)
edit_substitute_14:
[000372bc] 256a 0030 008a            move.l     48(a2),138(a2)
[000372c2] 256a 0034 008e            move.l     52(a2),142(a2)
[000372c8] 256f 0008 0096            move.l     8(a7),150(a2)
[000372ce] 2545 0092                 move.l     d5,146(a2)
[000372d2] 606a                      bra.s      edit_substitute_4
edit_substitute_20:
[000372d4] 7e00                      moveq.l    #0,d7
[000372d6] 6042                      bra.s      edit_substitute_23
edit_substitute_26:
[000372d8] 2007                      move.l     d7,d0
[000372da] e788                      lsl.l      #3,d0
[000372dc] 2204                      move.l     d4,d1
[000372de] e789                      lsl.l      #3,d1
[000372e0] 2a6a 002c                 movea.l    44(a2),a5
[000372e4] dbc1                      adda.l     d1,a5
[000372e6] dbc0                      adda.l     d0,a5
[000372e8] 2055                      movea.l    (a5),a0
[000372ea] 4eb9 0004 7d6c            jsr        Ax_ifree
[000372f0] ba87                      cmp.l      d7,d5
[000372f2] 6f24                      ble.s      edit_substitute_24
[000372f4] 2007                      move.l     d7,d0
[000372f6] e588                      lsl.l      #2,d0
[000372f8] 206f 0008                 movea.l    8(a7),a0
[000372fc] 2ab0 0800                 move.l     0(a0,d0.l),(a5)
[00037300] 2215                      move.l     (a5),d1
[00037302] 6710                      beq.s      edit_substitute_25
[00037304] 2041                      movea.l    d1,a0
[00037306] 4eb9 0007 69b0            jsr        strlen
[0003730c] 5240                      addq.w     #1,d0
[0003730e] 3b40 0004                 move.w     d0,4(a5)
[00037312] 6004                      bra.s      edit_substitute_24
edit_substitute_25:
[00037314] 426d 0004                 clr.w      4(a5)
edit_substitute_24:
[00037318] 5287                      addq.l     #1,d7
edit_substitute_23:
[0003731a] bc87                      cmp.l      d7,d6
[0003731c] 6eba                      bgt.s      edit_substitute_26
edit_substitute_11:
[0003731e] 222f 0012                 move.l     18(a7),d1
[00037322] 4481                      neg.l      d1
[00037324] 202f 0016                 move.l     22(a7),d0
[00037328] 204a                      movea.l    a2,a0
[0003732a] 6100 f764                 bsr        edit_movelines
[0003732e] 206f 0008                 movea.l    8(a7),a0
[00037332] 4eb9 0004 7d6c            jsr        Ax_ifree
[00037338] 006a 0008 0012            ori.w      #$0008,18(a2)
edit_substitute_4:
[0003733e] 4fef 001a                 lea.l      26(a7),a7
[00037342] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00037346] 4e75                      rts

edit_undo:
[00037348] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003734c] 2448                      movea.l    a0,a2
[0003734e] 202a 0096                 move.l     150(a2),d0
[00037352] 6700 014e                 beq        edit_undo_1
[00037356] 222a 008a                 move.l     138(a2),d1
[0003735a] 202a 007a                 move.l     122(a2),d0
[0003735e] 6100 f6e2                 bsr        edit_makeundo
[00037362] 2648                      movea.l    a0,a3
[00037364] 200b                      move.l     a3,d0
[00037366] 6700 013a                 beq        edit_undo_1
[0003736a] 262a 0082                 move.l     130(a2),d3
[0003736e] 96aa 008a                 sub.l      138(a2),d3
[00037372] 2203                      move.l     d3,d1
[00037374] 202a 007a                 move.l     122(a2),d0
[00037378] 204a                      movea.l    a2,a0
[0003737a] 6100 f714                 bsr        edit_movelines
[0003737e] 4a40                      tst.w      d0
[00037380] 6600 0120                 bne        edit_undo_1
[00037384] 302a 0012                 move.w     18(a2),d0
[00037388] c07c 0200                 and.w      #$0200,d0
[0003738c] 6712                      beq.s      edit_undo_2
[0003738e] 4242                      clr.w      d2
[00037390] 222a 0038                 move.l     56(a2),d1
[00037394] 202a 0030                 move.l     48(a2),d0
[00037398] 204a                      movea.l    a2,a0
[0003739a] 4eb9 0003 7d4e            jsr        edit_selrange
edit_undo_2:
[000373a0] 202a 007a                 move.l     122(a2),d0
[000373a4] e788                      lsl.l      #3,d0
[000373a6] 286a 002c                 movea.l    44(a2),a4
[000373aa] d9c0                      adda.l     d0,a4
[000373ac] 262a 0092                 move.l     146(a2),d3
[000373b0] 2a6a 0096                 movea.l    150(a2),a5
[000373b4] 6022                      bra.s      edit_undo_3
edit_undo_6:
[000373b6] 2895                      move.l     (a5),(a4)
[000373b8] 2015                      move.l     (a5),d0
[000373ba] 670e                      beq.s      edit_undo_4
[000373bc] 2040                      movea.l    d0,a0
[000373be] 4eb9 0007 69b0            jsr        strlen
[000373c4] 3940 0004                 move.w     d0,4(a4)
[000373c8] 6004                      bra.s      edit_undo_5
edit_undo_4:
[000373ca] 426c 0004                 clr.w      4(a4)
edit_undo_5:
[000373ce] 397c 0001 0006            move.w     #$0001,6(a4)
[000373d4] 584d                      addq.w     #4,a5
[000373d6] 504c                      addq.w     #8,a4
edit_undo_3:
[000373d8] 2003                      move.l     d3,d0
[000373da] 5383                      subq.l     #1,d3
[000373dc] 4a80                      tst.l      d0
[000373de] 66d6                      bne.s      edit_undo_6
[000373e0] 206a 0096                 movea.l    150(a2),a0
[000373e4] 4eb9 0004 7d6c            jsr        Ax_ifree
[000373ea] 254b 0096                 move.l     a3,150(a2)
[000373ee] 202a 008a                 move.l     138(a2),d0
[000373f2] 90aa 007a                 sub.l      122(a2),d0
[000373f6] 5280                      addq.l     #1,d0
[000373f8] 2540 0092                 move.l     d0,146(a2)
[000373fc] 256a 0082 0038            move.l     130(a2),56(a2)
[00037402] 256a 008a 0082            move.l     138(a2),130(a2)
[00037408] 256a 0038 008a            move.l     56(a2),138(a2)
[0003740e] 256a 0086 003c            move.l     134(a2),60(a2)
[00037414] 256a 008e 0086            move.l     142(a2),134(a2)
[0003741a] 256a 003c 008e            move.l     60(a2),142(a2)
[00037420] 256a 007a 0030            move.l     122(a2),48(a2)
[00037426] 256a 007e 0034            move.l     126(a2),52(a2)
[0003742c] 322a 0036                 move.w     54(a2),d1
[00037430] 302a 009a                 move.w     154(a2),d0
[00037434] 242a 0030                 move.l     48(a2),d2
[00037438] e78a                      lsl.l      #3,d2
[0003743a] 206a 002c                 movea.l    44(a2),a0
[0003743e] 2070 2800                 movea.l    0(a0,d2.l),a0
[00037442] 6100 ee5e                 bsr        vpos
[00037446] 48c0                      ext.l      d0
[00037448] 2540 0040                 move.l     d0,64(a2)
[0003744c] 322a 003e                 move.w     62(a2),d1
[00037450] 302a 009a                 move.w     154(a2),d0
[00037454] 242a 0038                 move.l     56(a2),d2
[00037458] e78a                      lsl.l      #3,d2
[0003745a] 206a 002c                 movea.l    44(a2),a0
[0003745e] 2070 2800                 movea.l    0(a0,d2.l),a0
[00037462] 6100 ee3e                 bsr        vpos
[00037466] 48c0                      ext.l      d0
[00037468] 2540 0044                 move.l     d0,68(a2)
[0003746c] 0c6a 0005 0070            cmpi.w     #$0005,112(a2)
[00037472] 670a                      beq.s      edit_undo_7
[00037474] 222a 0030                 move.l     48(a2),d1
[00037478] b2aa 0038                 cmp.l      56(a2),d1
[0003747c] 6618                      bne.s      edit_undo_8
edit_undo_7:
[0003747e] 202a 0034                 move.l     52(a2),d0
[00037482] b0aa 003c                 cmp.l      60(a2),d0
[00037486] 660e                      bne.s      edit_undo_8
[00037488] 006a 0008 0012            ori.w      #$0008,18(a2)
[0003748e] 026a fdff 0012            andi.w     #$FDFF,18(a2)
[00037494] 6006                      bra.s      edit_undo_9
edit_undo_8:
[00037496] 006a 0208 0012            ori.w      #$0208,18(a2)
edit_undo_9:
[0003749c] 204a                      movea.l    a2,a0
[0003749e] 6100 f44a                 bsr        edit_view
edit_undo_1:
[000374a2] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[000374a6] 4e75                      rts

edit_updateline:
[000374a8] 7204                      moveq.l    #4,d1
[000374aa] c268 0012                 and.w      18(a0),d1
[000374ae] 6730                      beq.s      edit_updateline_1
[000374b0] b0a8 0066                 cmp.l      102(a0),d0
[000374b4] 6738                      beq.s      edit_updateline_2
[000374b6] b0a8 006a                 cmp.l      106(a0),d0
[000374ba] 6732                      beq.s      edit_updateline_2
[000374bc] 7401                      moveq.l    #1,d2
[000374be] d4a8 006a                 add.l      106(a0),d2
[000374c2] b082                      cmp.l      d2,d0
[000374c4] 6612                      bne.s      edit_updateline_3
[000374c6] 2228 0018                 move.l     24(a0),d1
[000374ca] d2a8 000a                 add.l      10(a0),d1
[000374ce] b081                      cmp.l      d1,d0
[000374d0] 6606                      bne.s      edit_updateline_3
[000374d2] 52a8 006a                 addq.l     #1,106(a0)
[000374d6] 4e75                      rts
edit_updateline_3:
[000374d8] 0068 0008 0012            ori.w      #$0008,18(a0)
[000374de] 4e75                      rts
edit_updateline_1:
[000374e0] 0068 0004 0012            ori.w      #$0004,18(a0)
[000374e6] 2140 0066                 move.l     d0,102(a0)
[000374ea] 2140 006a                 move.l     d0,106(a0)
edit_updateline_2:
[000374ee] 4e75                      rts

edit_showline:
[000374f0] 2f03                      move.l     d3,-(a7)
[000374f2] 2f0a                      move.l     a2,-(a7)
[000374f4] 2448                      movea.l    a0,a2
[000374f6] 2600                      move.l     d0,d3
[000374f8] 4a80                      tst.l      d0
[000374fa] 6a02                      bpl.s      edit_showline_1
[000374fc] 7600                      moveq.l    #0,d3
edit_showline_1:
[000374fe] b6aa 0028                 cmp.l      40(a2),d3
[00037502] 6f04                      ble.s      edit_showline_2
[00037504] 262a 0028                 move.l     40(a2),d3
edit_showline_2:
[00037508] b6aa 0018                 cmp.l      24(a2),d3
[0003750c] 6c06                      bge.s      edit_showline_3
[0003750e] 2543 0018                 move.l     d3,24(a2)
[00037512] 6022                      bra.s      edit_showline_4
edit_showline_3:
[00037514] 202a 0018                 move.l     24(a2),d0
[00037518] d0aa 000a                 add.l      10(a2),d0
[0003751c] b680                      cmp.l      d0,d3
[0003751e] 6d0e                      blt.s      edit_showline_5
[00037520] 2203                      move.l     d3,d1
[00037522] 92aa 000a                 sub.l      10(a2),d1
[00037526] 5281                      addq.l     #1,d1
[00037528] 2541 0018                 move.l     d1,24(a2)
[0003752c] 6008                      bra.s      edit_showline_4
edit_showline_5:
[0003752e] 2003                      move.l     d3,d0
[00037530] 204a                      movea.l    a2,a0
[00037532] 6100 ff74                 bsr        edit_updateline
edit_showline_4:
[00037536] 245f                      movea.l    (a7)+,a2
[00037538] 261f                      move.l     (a7)+,d3
[0003753a] 4e75                      rts

edit_exmem:
[0003753c] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00037540] 2648                      movea.l    a0,a3
[00037542] 2600                      move.l     d0,d3
[00037544] 2800                      move.l     d0,d4
[00037546] e78c                      lsl.l      #3,d4
[00037548] 2004                      move.l     d4,d0
[0003754a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00037550] 2448                      movea.l    a0,a2
[00037552] 200a                      move.l     a2,d0
[00037554] 660a                      bne.s      edit_exmem_1
[00037556] 006b 0001 009e            ori.w      #$0001,158(a3)
[0003755c] 70ff                      moveq.l    #-1,d0
[0003755e] 6032                      bra.s      edit_exmem_2
edit_exmem_1:
[00037560] 2204                      move.l     d4,d1
[00037562] 4240                      clr.w      d0
[00037564] 204a                      movea.l    a2,a0
[00037566] 4eb9 0007 712e            jsr        memset
[0003756c] 202b 0024                 move.l     36(a3),d0
[00037570] e788                      lsl.l      #3,d0
[00037572] 226b 002c                 movea.l    44(a3),a1
[00037576] 204a                      movea.l    a2,a0
[00037578] 4eb9 0007 6f44            jsr        memcpy
[0003757e] 206b 002c                 movea.l    44(a3),a0
[00037582] 4eb9 0004 7d6c            jsr        Ax_ifree
[00037588] 274a 002c                 move.l     a2,44(a3)
[0003758c] 2743 0024                 move.l     d3,36(a3)
[00037590] 4240                      clr.w      d0
edit_exmem_2:
[00037592] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00037596] 4e75                      rts

edit_expand:
[00037598] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0003759c] 2448                      movea.l    a0,a2
[0003759e] 2800                      move.l     d0,d4
[000375a0] 70ff                      moveq.l    #-1,d0
[000375a2] 4eb9 0007 2aba            jsr        Malloc
[000375a8] 2608                      move.l     a0,d3
[000375aa] 202a 0024                 move.l     36(a2),d0
[000375ae] d084                      add.l      d4,d0
[000375b0] d0bc 0000 01ff            add.l      #$000001FF,d0
[000375b6] 2800                      move.l     d0,d4
[000375b8] 223c 0000 0200            move.l     #$00000200,d1
[000375be] 4eb9 0007 77ae            jsr        _lmod
[000375c4] 9880                      sub.l      d0,d4
[000375c6] 2004                      move.l     d4,d0
[000375c8] e788                      lsl.l      #3,d0
[000375ca] b083                      cmp.l      d3,d0
[000375cc] 6e26                      bgt.s      edit_expand_1
[000375ce] 2200                      move.l     d0,d1
[000375d0] e281                      asr.l      #1,d1
[000375d2] d280                      add.l      d0,d1
[000375d4] b681                      cmp.l      d1,d3
[000375d6] 6f08                      ble.s      edit_expand_2
[000375d8] 2404                      move.l     d4,d2
[000375da] e282                      asr.l      #1,d2
[000375dc] d882                      add.l      d2,d4
[000375de] 6014                      bra.s      edit_expand_1
edit_expand_2:
[000375e0] 2803                      move.l     d3,d4
[000375e2] e68c                      lsr.l      #3,d4
[000375e4] 2004                      move.l     d4,d0
[000375e6] 223c 0000 0200            move.l     #$00000200,d1
[000375ec] 4eb9 0007 77ae            jsr        _lmod
[000375f2] 9880                      sub.l      d0,d4
edit_expand_1:
[000375f4] 2004                      move.l     d4,d0
[000375f6] 204a                      movea.l    a2,a0
[000375f8] 6100 ff42                 bsr        edit_exmem
[000375fc] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00037600] 4e75                      rts

edit_newline:
[00037602] 2f03                      move.l     d3,-(a7)
[00037604] 2f0a                      move.l     a2,-(a7)
[00037606] 2068 000c                 movea.l    12(a0),a0
[0003760a] 2468 000c                 movea.l    12(a0),a2
[0003760e] 202a 0024                 move.l     36(a2),d0
[00037612] 7201                      moveq.l    #1,d1
[00037614] d2aa 0028                 add.l      40(a2),d1
[00037618] b081                      cmp.l      d1,d0
[0003761a] 6e00 0088                 bgt        edit_newline_1
[0003761e] 202a 0014                 move.l     20(a2),d0
[00037622] 90aa 0024                 sub.l      36(a2),d0
[00037626] 4a80                      tst.l      d0
[00037628] 6f26                      ble.s      edit_newline_2
[0003762a] 242a 0014                 move.l     20(a2),d2
[0003762e] 7219                      moveq.l    #25,d1
[00037630] d2aa 0024                 add.l      36(a2),d1
[00037634] b481                      cmp.l      d1,d2
[00037636] 6c04                      bge.s      edit_newline_3
[00037638] 2002                      move.l     d2,d0
[0003763a] 6006                      bra.s      edit_newline_4
edit_newline_3:
[0003763c] 7019                      moveq.l    #25,d0
[0003763e] d0aa 0024                 add.l      36(a2),d0
edit_newline_4:
[00037642] 204a                      movea.l    a2,a0
[00037644] 6100 fef6                 bsr        edit_exmem
[00037648] 4a40                      tst.w      d0
[0003764a] 6758                      beq.s      edit_newline_1
[0003764c] 70ff                      moveq.l    #-1,d0
[0003764e] 6064                      bra.s      edit_newline_5
edit_newline_2:
[00037650] 206a 002c                 movea.l    44(a2),a0
[00037654] 3028 0004                 move.w     4(a0),d0
[00037658] 6708                      beq.s      edit_newline_6
[0003765a] 2050                      movea.l    (a0),a0
[0003765c] 4eb9 0004 7d6c            jsr        Ax_ifree
edit_newline_6:
[00037662] 262a 0028                 move.l     40(a2),d3
[00037666] e78b                      lsl.l      #3,d3
[00037668] 2003                      move.l     d3,d0
[0003766a] 226a 002c                 movea.l    44(a2),a1
[0003766e] 5049                      addq.w     #8,a1
[00037670] 206a 002c                 movea.l    44(a2),a0
[00037674] 4eb9 0007 6f44            jsr        memcpy
[0003767a] 202a 0028                 move.l     40(a2),d0
[0003767e] e788                      lsl.l      #3,d0
[00037680] 206a 002c                 movea.l    44(a2),a0
[00037684] d1c0                      adda.l     d0,a0
[00037686] 4290                      clr.l      (a0)
[00037688] 4268 0004                 clr.w      4(a0)
[0003768c] 4268 0006                 clr.w      6(a0)
[00037690] 53aa 0066                 subq.l     #1,102(a2)
[00037694] 53aa 006a                 subq.l     #1,106(a2)
[00037698] 526a 006e                 addq.w     #1,110(a2)
[0003769c] 006a 0010 0012            ori.w      #$0010,18(a2)
[000376a2] 6004                      bra.s      edit_newline_7
edit_newline_1:
[000376a4] 52aa 0028                 addq.l     #1,40(a2)
edit_newline_7:
[000376a8] 202a 0028                 move.l     40(a2),d0
[000376ac] 204a                      movea.l    a2,a0
[000376ae] 6100 fe40                 bsr        edit_showline
[000376b2] 4240                      clr.w      d0
edit_newline_5:
[000376b4] 245f                      movea.l    (a7)+,a2
[000376b6] 261f                      move.l     (a7)+,d3
[000376b8] 4e75                      rts

change_cur:
[000376ba] 2f0a                      move.l     a2,-(a7)
[000376bc] 2f0b                      move.l     a3,-(a7)
[000376be] 2448                      movea.l    a0,a2
[000376c0] 266a 0054                 movea.l    84(a2),a3
[000376c4] 200b                      move.l     a3,d0
[000376c6] 671a                      beq.s      change_cur_1
[000376c8] 006a 0040 0012            ori.w      #$0040,18(a2)
[000376ce] 72ff                      moveq.l    #-1,d1
[000376d0] 302a 005c                 move.w     92(a2),d0
[000376d4] 226b 0066                 movea.l    102(a3),a1
[000376d8] 204b                      movea.l    a3,a0
[000376da] 4e91                      jsr        (a1)
[000376dc] 026a ffbf 0012            andi.w     #$FFBF,18(a2)
change_cur_1:
[000376e2] 265f                      movea.l    (a7)+,a3
[000376e4] 245f                      movea.l    (a7)+,a2
[000376e6] 4e75                      rts

edit_update:
[000376e8] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[000376ec] 2448                      movea.l    a0,a2
[000376ee] 266a 0054                 movea.l    84(a2),a3
[000376f2] 200b                      move.l     a3,d0
[000376f4] 6700 00a8                 beq        edit_update_1
[000376f8] 362a 005c                 move.w     92(a2),d3
[000376fc] 204b                      movea.l    a3,a0
[000376fe] 3003                      move.w     d3,d0
[00037700] 4eb9 0004 d884            jsr        Awi_obvisible
[00037706] 4a40                      tst.w      d0
[00037708] 6700 0094                 beq        edit_update_1
[0003770c] 382a 001e                 move.w     30(a2),d4
[00037710] 986a 0052                 sub.w      82(a2),d4
[00037714] c9ea 0008                 muls.w     8(a2),d4
[00037718] 3a2a 001a                 move.w     26(a2),d5
[0003771c] 9a6a 004e                 sub.w      78(a2),d5
[00037720] cbea 0006                 muls.w     6(a2),d5
[00037724] 7008                      moveq.l    #8,d0
[00037726] c06a 0012                 and.w      18(a2),d0
[0003772a] 663e                      bne.s      edit_update_2
[0003772c] 322b 0020                 move.w     32(a3),d1
[00037730] 6b38                      bmi.s      edit_update_2
[00037732] 7404                      moveq.l    #4,d2
[00037734] c46a 0012                 and.w      18(a2),d2
[00037738] 673e                      beq.s      edit_update_3
[0003773a] 7010                      moveq.l    #16,d0
[0003773c] c06a 0012                 and.w      18(a2),d0
[00037740] 6710                      beq.s      edit_update_4
[00037742] 322a 006e                 move.w     110(a2),d1
[00037746] c3ea 0006                 muls.w     6(a2),d1
[0003774a] da41                      add.w      d1,d5
[0003774c] 426a 006e                 clr.w      110(a2)
[00037750] 602e                      bra.s      edit_update_5
edit_update_4:
[00037752] 4a44                      tst.w      d4
[00037754] 662a                      bne.s      edit_update_5
[00037756] 4a45                      tst.w      d5
[00037758] 6626                      bne.s      edit_update_5
[0003775a] 202a 0066                 move.l     102(a2),d0
[0003775e] b0aa 006a                 cmp.l      106(a2),d0
[00037762] 6606                      bne.s      edit_update_2
[00037764] 006a 0002 0012            ori.w      #$0002,18(a2)
edit_update_2:
[0003776a] 72ff                      moveq.l    #-1,d1
[0003776c] 3003                      move.w     d3,d0
[0003776e] 204b                      movea.l    a3,a0
[00037770] 226b 0066                 movea.l    102(a3),a1
[00037774] 4e91                      jsr        (a1)
[00037776] 6014                      bra.s      edit_update_6
edit_update_3:
[00037778] 4a44                      tst.w      d4
[0003777a] 6604                      bne.s      edit_update_5
[0003777c] 4a45                      tst.w      d5
[0003777e] 670c                      beq.s      edit_update_6
edit_update_5:
[00037780] 3205                      move.w     d5,d1
[00037782] 3004                      move.w     d4,d0
[00037784] 204a                      movea.l    a2,a0
[00037786] 4eb9 0003 77a4            jsr        uedit_scroll
edit_update_6:
[0003778c] 026a ffe1 0012            andi.w     #$FFE1,18(a2)
[00037792] 256a 0018 004c            move.l     24(a2),76(a2)
[00037798] 256a 001c 0050            move.l     28(a2),80(a2)
edit_update_1:
[0003779e] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[000377a2] 4e75                      rts

uedit_scroll:
[000377a4] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[000377a8] 4fef ffd4                 lea.l      -44(a7),a7
[000377ac] 2448                      movea.l    a0,a2
[000377ae] 3600                      move.w     d0,d3
[000377b0] 3801                      move.w     d1,d4
[000377b2] 4a40                      tst.w      d0
[000377b4] 6606                      bne.s      uedit_scroll_1
[000377b6] 4a41                      tst.w      d1
[000377b8] 6700 02c0                 beq        uedit_scroll_2
uedit_scroll_1:
[000377bc] 2f6a 0054 0018            move.l     84(a2),24(a7)
[000377c2] 206f 0018                 movea.l    24(a7),a0
[000377c6] 3a28 0020                 move.w     32(a0),d5
[000377ca] 4a45                      tst.w      d5
[000377cc] 6b00 02ac                 bmi        uedit_scroll_2
[000377d0] 7008                      moveq.l    #8,d0
[000377d2] c068 0056                 and.w      86(a0),d0
[000377d6] 6720                      beq.s      uedit_scroll_3
[000377d8] 2279 0010 1f12            movea.l    ACSblk,a1
[000377de] 5049                      addq.w     #8,a1
[000377e0] 41ef 0008                 lea.l      8(a7),a0
[000377e4] 7008                      moveq.l    #8,d0
[000377e6] 4eb9 0007 6f44            jsr        memcpy
[000377ec] 4240                      clr.w      d0
[000377ee] 3f40 0006                 move.w     d0,6(a7)
[000377f2] 3f40 0004                 move.w     d0,4(a7)
[000377f6] 604c                      bra.s      uedit_scroll_4
uedit_scroll_3:
[000377f8] 486f 000e                 pea.l      14(a7)
[000377fc] 486f 0010                 pea.l      16(a7)
[00037800] 486f 0012                 pea.l      18(a7)
[00037804] 486f 0014                 pea.l      20(a7)
[00037808] 720b                      moveq.l    #11,d1
[0003780a] 3005                      move.w     d5,d0
[0003780c] 4eb9 0007 14ea            jsr        wind_get
[00037812] 4fef 0010                 lea.l      16(a7),a7
[00037816] 302f 000c                 move.w     12(a7),d0
[0003781a] 6700 025e                 beq        uedit_scroll_2
[0003781e] 322f 000e                 move.w     14(a7),d1
[00037822] 6700 0256                 beq        uedit_scroll_2
[00037826] 486f 0006                 pea.l      6(a7)
[0003782a] 486f 0008                 pea.l      8(a7)
[0003782e] 486f 000a                 pea.l      10(a7)
[00037832] 486f 000c                 pea.l      12(a7)
[00037836] 3005                      move.w     d5,d0
[00037838] 720c                      moveq.l    #12,d1
[0003783a] 4eb9 0007 14ea            jsr        wind_get
[00037840] 4fef 0010                 lea.l      16(a7),a7
uedit_scroll_4:
[00037844] 3a2a 005c                 move.w     92(a2),d5
[00037848] 286a 0058                 movea.l    88(a2),a4
[0003784c] 3205                      move.w     d5,d1
[0003784e] 48c1                      ext.l      d1
[00037850] 2001                      move.l     d1,d0
[00037852] d080                      add.l      d0,d0
[00037854] d081                      add.l      d1,d0
[00037856] e788                      lsl.l      #3,d0
[00037858] 99c0                      suba.l     d0,a4
[0003785a] 4bef 0010                 lea.l      16(a7),a5
[0003785e] 2f39 000d 99d6            move.l     _globl,-(a7)
[00037864] 486d 0002                 pea.l      2(a5)
[00037868] 224d                      movea.l    a5,a1
[0003786a] 3005                      move.w     d5,d0
[0003786c] 204c                      movea.l    a4,a0
[0003786e] 4eb9 0006 ba44            jsr        mt_objc_offset
[00037874] 504f                      addq.w     #8,a7
[00037876] 206f 0018                 movea.l    24(a7),a0
[0003787a] 3028 0034                 move.w     52(a0),d0
[0003787e] d155                      add.w      d0,(a5)
[00037880] 3228 0036                 move.w     54(a0),d1
[00037884] d36d 0002                 add.w      d1,2(a5)
[00037888] 3e2d 0002                 move.w     2(a5),d7
[0003788c] 3b6a 004a 0004            move.w     74(a2),4(a5)
[00037892] 3b6a 0048 0006            move.w     72(a2),6(a5)
[00037898] 43ef 0008                 lea.l      8(a7),a1
[0003789c] 204d                      movea.l    a5,a0
[0003789e] 4eb9 0005 f94a            jsr        intersect
[000378a4] 2279 0010 1f12            movea.l    ACSblk,a1
[000378aa] 5049                      addq.w     #8,a1
[000378ac] 204d                      movea.l    a5,a0
[000378ae] 4eb9 0005 f94a            jsr        intersect
[000378b4] 4246                      clr.w      d6
[000378b6] 4a44                      tst.w      d4
[000378b8] 6f26                      ble.s      uedit_scroll_5
[000378ba] 7004                      moveq.l    #4,d0
[000378bc] c06a 0012                 and.w      18(a2),d0
[000378c0] 671e                      beq.s      uedit_scroll_5
[000378c2] 302a 0068                 move.w     104(a2),d0
[000378c6] 906a 001a                 sub.w      26(a2),d0
[000378ca] c1ea 0006                 muls.w     6(a2),d0
[000378ce] d047                      add.w      d7,d0
[000378d0] 322d 0002                 move.w     2(a5),d1
[000378d4] d26d 0006                 add.w      6(a5),d1
[000378d8] b041                      cmp.w      d1,d0
[000378da] 6c04                      bge.s      uedit_scroll_5
[000378dc] 3c2a 0006                 move.w     6(a2),d6
uedit_scroll_5:
[000378e0] 302f 0004                 move.w     4(a7),d0
[000378e4] 6632                      bne.s      uedit_scroll_6
[000378e6] 322f 0006                 move.w     6(a7),d1
[000378ea] 662c                      bne.s      uedit_scroll_6
[000378ec] b66d 0004                 cmp.w      4(a5),d3
[000378f0] 6c26                      bge.s      uedit_scroll_6
[000378f2] 3403                      move.w     d3,d2
[000378f4] 4442                      neg.w      d2
[000378f6] b46d 0004                 cmp.w      4(a5),d2
[000378fa] 6c1c                      bge.s      uedit_scroll_6
[000378fc] 3e04                      move.w     d4,d7
[000378fe] de46                      add.w      d6,d7
[00037900] be6d 0006                 cmp.w      6(a5),d7
[00037904] 6c12                      bge.s      uedit_scroll_6
[00037906] 3004                      move.w     d4,d0
[00037908] 4440                      neg.w      d0
[0003790a] b06d 0006                 cmp.w      6(a5),d0
[0003790e] 6c08                      bge.s      uedit_scroll_6
[00037910] 4a44                      tst.w      d4
[00037912] 671a                      beq.s      uedit_scroll_7
[00037914] 4a43                      tst.w      d3
[00037916] 6716                      beq.s      uedit_scroll_7
uedit_scroll_6:
[00037918] 72ff                      moveq.l    #-1,d1
[0003791a] 3005                      move.w     d5,d0
[0003791c] 206f 0018                 movea.l    24(a7),a0
[00037920] 226f 0018                 movea.l    24(a7),a1
[00037924] 2269 0066                 movea.l    102(a1),a1
[00037928] 4e91                      jsr        (a1)
[0003792a] 6000 014e                 bra        uedit_scroll_2
uedit_scroll_7:
[0003792e] 47ef 001c                 lea.l      28(a7),a3
[00037932] 3015                      move.w     (a5),d0
[00037934] 3740 0008                 move.w     d0,8(a3)
[00037938] 3680                      move.w     d0,(a3)
[0003793a] 322d 0002                 move.w     2(a5),d1
[0003793e] 3741 000a                 move.w     d1,10(a3)
[00037942] 3741 0002                 move.w     d1,2(a3)
[00037946] 3015                      move.w     (a5),d0
[00037948] d06d 0004                 add.w      4(a5),d0
[0003794c] 5340                      subq.w     #1,d0
[0003794e] 3740 000c                 move.w     d0,12(a3)
[00037952] 3740 0004                 move.w     d0,4(a3)
[00037956] 322d 0002                 move.w     2(a5),d1
[0003795a] d26d 0006                 add.w      6(a5),d1
[0003795e] 5341                      subq.w     #1,d1
[00037960] 3741 000e                 move.w     d1,14(a3)
[00037964] 3741 0006                 move.w     d1,6(a3)
[00037968] 4a43                      tst.w      d3
[0003796a] 6728                      beq.s      uedit_scroll_8
[0003796c] 4a43                      tst.w      d3
[0003796e] 6f14                      ble.s      uedit_scroll_9
[00037970] d753                      add.w      d3,(a3)
[00037972] 976b 000c                 sub.w      d3,12(a3)
[00037976] 7001                      moveq.l    #1,d0
[00037978] d06b 000c                 add.w      12(a3),d0
[0003797c] 3a80                      move.w     d0,(a5)
[0003797e] 3b43 0004                 move.w     d3,4(a5)
[00037982] 6010                      bra.s      uedit_scroll_8
uedit_scroll_9:
[00037984] d76b 0004                 add.w      d3,4(a3)
[00037988] 976b 0008                 sub.w      d3,8(a3)
[0003798c] 3003                      move.w     d3,d0
[0003798e] 4440                      neg.w      d0
[00037990] 3b40 0004                 move.w     d0,4(a5)
uedit_scroll_8:
[00037994] 4a44                      tst.w      d4
[00037996] 6734                      beq.s      uedit_scroll_10
[00037998] 4a44                      tst.w      d4
[0003799a] 6f20                      ble.s      uedit_scroll_11
[0003799c] d96b 0002                 add.w      d4,2(a3)
[000379a0] 3004                      move.w     d4,d0
[000379a2] d046                      add.w      d6,d0
[000379a4] 916b 000e                 sub.w      d0,14(a3)
[000379a8] 9d6b 0006                 sub.w      d6,6(a3)
[000379ac] 7201                      moveq.l    #1,d1
[000379ae] d26b 000e                 add.w      14(a3),d1
[000379b2] 3b41 0002                 move.w     d1,2(a5)
[000379b6] 3b40 0006                 move.w     d0,6(a5)
[000379ba] 6010                      bra.s      uedit_scroll_10
uedit_scroll_11:
[000379bc] d96b 0006                 add.w      d4,6(a3)
[000379c0] 996b 000a                 sub.w      d4,10(a3)
[000379c4] 3004                      move.w     d4,d0
[000379c6] 4440                      neg.w      d0
[000379c8] 3b40 0006                 move.w     d0,6(a5)
uedit_scroll_10:
[000379cc] 204b                      movea.l    a3,a0
[000379ce] 4241                      clr.w      d1
[000379d0] 2279 0010 1f12            movea.l    ACSblk,a1
[000379d6] 3029 0010                 move.w     16(a1),d0
[000379da] 4eb9 0006 3f60            jsr        vs_clip
[000379e0] 3c2c 0010                 move.w     16(a4),d6
[000379e4] 3e2c 0012                 move.w     18(a4),d7
[000379e8] 206f 0018                 movea.l    24(a7),a0
[000379ec] 3028 0034                 move.w     52(a0),d0
[000379f0] d16c 0010                 add.w      d0,16(a4)
[000379f4] 3028 0036                 move.w     54(a0),d0
[000379f8] d16c 0012                 add.w      d0,18(a4)
[000379fc] 2279 000d 99d6            movea.l    _globl,a1
[00037a02] 303c 0100                 move.w     #$0100,d0
[00037a06] 91c8                      suba.l     a0,a0
[00037a08] 4eb9 0006 c914            jsr        mt_graf_mouse
[00037a0e] 302b 0002                 move.w     2(a3),d0
[00037a12] b06b 0006                 cmp.w      6(a3),d0
[00037a16] 6e26                      bgt.s      uedit_scroll_12
[00037a18] 2079 0010 1f12            movea.l    ACSblk,a0
[00037a1e] 4868 026a                 pea.l      618(a0)
[00037a22] 2248                      movea.l    a0,a1
[00037a24] 43e9 026a                 lea.l      618(a1),a1
[00037a28] 204b                      movea.l    a3,a0
[00037a2a] 7203                      moveq.l    #3,d1
[00037a2c] 2479 0010 1f12            movea.l    ACSblk,a2
[00037a32] 302a 0010                 move.w     16(a2),d0
[00037a36] 4eb9 0006 65ce            jsr        vro_cpyfm
[00037a3c] 584f                      addq.w     #4,a7
uedit_scroll_12:
[00037a3e] 3f2d 0006                 move.w     6(a5),-(a7)
[00037a42] 3f2d 0004                 move.w     4(a5),-(a7)
[00037a46] 3f2d 0002                 move.w     2(a5),-(a7)
[00037a4a] 2279 000d 99d6            movea.l    _globl,a1
[00037a50] 3415                      move.w     (a5),d2
[00037a52] 4241                      clr.w      d1
[00037a54] 3005                      move.w     d5,d0
[00037a56] 204c                      movea.l    a4,a0
[00037a58] 4eb9 0006 b93c            jsr        mt_objc_draw
[00037a5e] 5c4f                      addq.w     #6,a7
[00037a60] 2279 000d 99d6            movea.l    _globl,a1
[00037a66] 91c8                      suba.l     a0,a0
[00037a68] 303c 0101                 move.w     #$0101,d0
[00037a6c] 4eb9 0006 c914            jsr        mt_graf_mouse
[00037a72] 3946 0010                 move.w     d6,16(a4)
[00037a76] 3947 0012                 move.w     d7,18(a4)
uedit_scroll_2:
[00037a7a] 4fef 002c                 lea.l      44(a7),a7
[00037a7e] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00037a82] 4e75                      rts

edit_invers:
[00037a84] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[00037a88] 2448                      movea.l    a0,a2
[00037a8a] 2600                      move.l     d0,d3
[00037a8c] b0aa 0018                 cmp.l      24(a2),d0
[00037a90] 6d56                      blt.s      edit_invers_1
[00037a92] 222a 0018                 move.l     24(a2),d1
[00037a96] d2aa 000a                 add.l      10(a2),d1
[00037a9a] b081                      cmp.l      d1,d0
[00037a9c] 6c4a                      bge.s      edit_invers_1
[00037a9e] 382a 0012                 move.w     18(a2),d4
[00037aa2] 2a2a 0066                 move.l     102(a2),d5
[00037aa6] 357c 0304 0012            move.w     #$0304,18(a2)
[00037aac] 2540 0066                 move.l     d0,102(a2)
[00037ab0] e788                      lsl.l      #3,d0
[00037ab2] 226a 002c                 movea.l    44(a2),a1
[00037ab6] 0071 0002 0806            ori.w      #$0002,6(a1,d0.l)
[00037abc] 266a 0054                 movea.l    84(a2),a3
[00037ac0] 220b                      move.l     a3,d1
[00037ac2] 670e                      beq.s      edit_invers_2
[00037ac4] 302a 005c                 move.w     92(a2),d0
[00037ac8] 226b 0066                 movea.l    102(a3),a1
[00037acc] 204b                      movea.l    a3,a0
[00037ace] 72ff                      moveq.l    #-1,d1
[00037ad0] 4e91                      jsr        (a1)
edit_invers_2:
[00037ad2] 2003                      move.l     d3,d0
[00037ad4] e788                      lsl.l      #3,d0
[00037ad6] 206a 002c                 movea.l    44(a2),a0
[00037ada] 0270 fffd 0806            andi.w     #$FFFD,6(a0,d0.l)
[00037ae0] 2545 0066                 move.l     d5,102(a2)
[00037ae4] 3544 0012                 move.w     d4,18(a2)
edit_invers_1:
[00037ae8] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00037aec] 4e75                      rts

edit_col:
[00037aee] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00037af2] 594f                      subq.w     #4,a7
[00037af4] 2448                      movea.l    a0,a2
[00037af6] 3600                      move.w     d0,d3
[00037af8] 266a 0054                 movea.l    84(a2),a3
[00037afc] 286a 0058                 movea.l    88(a2),a4
[00037b00] 342a 005c                 move.w     92(a2),d2
[00037b04] 48c2                      ext.l      d2
[00037b06] 2202                      move.l     d2,d1
[00037b08] d281                      add.l      d1,d1
[00037b0a] d282                      add.l      d2,d1
[00037b0c] e789                      lsl.l      #3,d1
[00037b0e] 99c1                      suba.l     d1,a4
[00037b10] 2f39 000d 99d6            move.l     _globl,-(a7)
[00037b16] 486f 0006                 pea.l      6(a7)
[00037b1a] 43ef 0008                 lea.l      8(a7),a1
[00037b1e] 302a 005c                 move.w     92(a2),d0
[00037b22] 204c                      movea.l    a4,a0
[00037b24] 4eb9 0006 ba44            jsr        mt_objc_offset
[00037b2a] 504f                      addq.w     #8,a7
[00037b2c] 302b 0034                 move.w     52(a3),d0
[00037b30] d057                      add.w      (a7),d0
[00037b32] 322a 0008                 move.w     8(a2),d1
[00037b36] e241                      asr.w      #1,d1
[00037b38] 9041                      sub.w      d1,d0
[00037b3a] 9640                      sub.w      d0,d3
[00037b3c] 3003                      move.w     d3,d0
[00037b3e] 48c0                      ext.l      d0
[00037b40] 81ea 0008                 divs.w     8(a2),d0
[00037b44] 48c0                      ext.l      d0
[00037b46] d0aa 001c                 add.l      28(a2),d0
[00037b4a] 4a43                      tst.w      d3
[00037b4c] 6a02                      bpl.s      edit_col_1
[00037b4e] 5380                      subq.l     #1,d0
edit_col_1:
[00037b50] 4a80                      tst.l      d0
[00037b52] 6a02                      bpl.s      edit_col_2
[00037b54] 7000                      moveq.l    #0,d0
edit_col_2:
[00037b56] b0aa 0020                 cmp.l      32(a2),d0
[00037b5a] 6f04                      ble.s      edit_col_3
[00037b5c] 202a 0020                 move.l     32(a2),d0
edit_col_3:
[00037b60] 584f                      addq.w     #4,a7
[00037b62] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00037b66] 4e75                      rts

edit_row:
[00037b68] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00037b6c] 594f                      subq.w     #4,a7
[00037b6e] 2448                      movea.l    a0,a2
[00037b70] 3600                      move.w     d0,d3
[00037b72] 266a 0054                 movea.l    84(a2),a3
[00037b76] 286a 0058                 movea.l    88(a2),a4
[00037b7a] 342a 005c                 move.w     92(a2),d2
[00037b7e] 48c2                      ext.l      d2
[00037b80] 2202                      move.l     d2,d1
[00037b82] d281                      add.l      d1,d1
[00037b84] d282                      add.l      d2,d1
[00037b86] e789                      lsl.l      #3,d1
[00037b88] 99c1                      suba.l     d1,a4
[00037b8a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00037b90] 486f 0004                 pea.l      4(a7)
[00037b94] 43ef 000a                 lea.l      10(a7),a1
[00037b98] 302a 005c                 move.w     92(a2),d0
[00037b9c] 204c                      movea.l    a4,a0
[00037b9e] 4eb9 0006 ba44            jsr        mt_objc_offset
[00037ba4] 504f                      addq.w     #8,a7
[00037ba6] 302b 0036                 move.w     54(a3),d0
[00037baa] d057                      add.w      (a7),d0
[00037bac] 9640                      sub.w      d0,d3
[00037bae] 3003                      move.w     d3,d0
[00037bb0] 48c0                      ext.l      d0
[00037bb2] 81ea 0006                 divs.w     6(a2),d0
[00037bb6] 48c0                      ext.l      d0
[00037bb8] d0aa 0018                 add.l      24(a2),d0
[00037bbc] 4a43                      tst.w      d3
[00037bbe] 6a02                      bpl.s      edit_row_1
[00037bc0] 5380                      subq.l     #1,d0
edit_row_1:
[00037bc2] 4a80                      tst.l      d0
[00037bc4] 6a02                      bpl.s      edit_row_2
[00037bc6] 7000                      moveq.l    #0,d0
edit_row_2:
[00037bc8] b0aa 0028                 cmp.l      40(a2),d0
[00037bcc] 6f04                      ble.s      edit_row_3
[00037bce] 202a 0028                 move.l     40(a2),d0
edit_row_3:
[00037bd2] 584f                      addq.w     #4,a7
[00037bd4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00037bd8] 4e75                      rts

edit_1select:
[00037bda] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00037bde] 5d4f                      subq.w     #6,a7
[00037be0] 2648                      movea.l    a0,a3
[00037be2] 3f40 0004                 move.w     d0,4(a7)
edit_1select_6:
[00037be6] 45ef 0002                 lea.l      2(a7),a2
[00037bea] 302f 0004                 move.w     4(a7),d0
[00037bee] 204b                      movea.l    a3,a0
[00037bf0] 6100 ff76                 bsr        edit_row
[00037bf4] 2600                      move.l     d0,d3
[00037bf6] e788                      lsl.l      #3,d0
[00037bf8] 286b 002c                 movea.l    44(a3),a4
[00037bfc] d9c0                      adda.l     d0,a4
[00037bfe] 7201                      moveq.l    #1,d1
[00037c00] c26c 0006                 and.w      6(a4),d1
[00037c04] 6600 008a                 bne        edit_1select_1
[00037c08] 242b 0030                 move.l     48(a3),d2
[00037c0c] e78a                      lsl.l      #3,d2
[00037c0e] 2a6b 002c                 movea.l    44(a3),a5
[00037c12] dbc2                      adda.l     d2,a5
[00037c14] 7001                      moveq.l    #1,d0
[00037c16] c06d 0006                 and.w      6(a5),d0
[00037c1a] 6710                      beq.s      edit_1select_2
[00037c1c] 202b 0030                 move.l     48(a3),d0
[00037c20] 204b                      movea.l    a3,a0
[00037c22] 6100 fe60                 bsr        edit_invers
[00037c26] 026d fffe 0006            andi.w     #$FFFE,6(a5)
edit_1select_2:
[00037c2c] 2003                      move.l     d3,d0
[00037c2e] 204b                      movea.l    a3,a0
[00037c30] 6100 fe52                 bsr        edit_invers
[00037c34] 006c 0001 0006            ori.w      #$0001,6(a4)
[00037c3a] 2743 0030                 move.l     d3,48(a3)
[00037c3e] 2743 0038                 move.l     d3,56(a3)
[00037c42] 006b 0200 0012            ori.w      #$0200,18(a3)
[00037c48] 202b 0072                 move.l     114(a3),d0
[00037c4c] 6718                      beq.s      edit_1select_3
[00037c4e] 2a54                      movea.l    (a4),a5
[00037c50] 220d                      move.l     a5,d1
[00037c52] 6606                      bne.s      edit_1select_4
[00037c54] 4bf9 000c 2f4e            lea.l      $000C2F4E,a5
edit_1select_4:
[00037c5a] 224d                      movea.l    a5,a1
[00037c5c] 206b 0076                 movea.l    118(a3),a0
[00037c60] 286b 0072                 movea.l    114(a3),a4
[00037c64] 4e94                      jsr        (a4)
edit_1select_3:
[00037c66] b6ab 0018                 cmp.l      24(a3),d3
[00037c6a] 6d0c                      blt.s      edit_1select_5
[00037c6c] 202b 0018                 move.l     24(a3),d0
[00037c70] d0ab 000a                 add.l      10(a3),d0
[00037c74] b680                      cmp.l      d0,d3
[00037c76] 6d18                      blt.s      edit_1select_1
edit_1select_5:
[00037c78] 2003                      move.l     d3,d0
[00037c7a] 204b                      movea.l    a3,a0
[00037c7c] 6100 f872                 bsr        edit_showline
[00037c80] 204b                      movea.l    a3,a0
[00037c82] 6100 fa64                 bsr        edit_update
[00037c86] 7001                      moveq.l    #1,d0
[00037c88] 204b                      movea.l    a3,a0
[00037c8a] 4eb9 0003 9cf8            jsr        cleanup
edit_1select_1:
[00037c90] 2f39 000d 99d6            move.l     _globl,-(a7)
[00037c96] 4852                      pea.l      (a2)
[00037c98] 486f 0008                 pea.l      8(a7)
[00037c9c] 43ef 0010                 lea.l      16(a7),a1
[00037ca0] 204a                      movea.l    a2,a0
[00037ca2] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00037ca8] 4fef 000c                 lea.l      12(a7),a7
[00037cac] 7001                      moveq.l    #1,d0
[00037cae] c057                      and.w      (a7),d0
[00037cb0] 6600 ff34                 bne        edit_1select_6
[00037cb4] 5c4f                      addq.w     #6,a7
[00037cb6] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00037cba] 4e75                      rts

edit_01select:
[00037cbc] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00037cc0] 5d4f                      subq.w     #6,a7
[00037cc2] 2648                      movea.l    a0,a3
[00037cc4] 3f40 0004                 move.w     d0,4(a7)
[00037cc8] 45ef 0004                 lea.l      4(a7),a2
[00037ccc] 3012                      move.w     (a2),d0
[00037cce] 204b                      movea.l    a3,a0
[00037cd0] 6100 fe96                 bsr        edit_row
[00037cd4] 2600                      move.l     d0,d3
[00037cd6] e788                      lsl.l      #3,d0
[00037cd8] 286b 002c                 movea.l    44(a3),a4
[00037cdc] d9c0                      adda.l     d0,a4
[00037cde] 7201                      moveq.l    #1,d1
[00037ce0] c26c 0006                 and.w      6(a4),d1
[00037ce4] 6758                      beq.s      edit_01select_1
[00037ce6] 204b                      movea.l    a3,a0
[00037ce8] 2003                      move.l     d3,d0
[00037cea] 6100 fd98                 bsr        edit_invers
[00037cee] 026c fffe 0006            andi.w     #$FFFE,6(a4)
[00037cf4] 026b fdff 0012            andi.w     #$FDFF,18(a3)
[00037cfa] 202b 0072                 move.l     114(a3),d0
[00037cfe] 670e                      beq.s      edit_01select_2
[00037d00] 43f9 000c 2f4e            lea.l      $000C2F4E,a1
[00037d06] 206b 0076                 movea.l    118(a3),a0
[00037d0a] 2840                      movea.l    d0,a4
[00037d0c] 4e94                      jsr        (a4)
edit_01select_2:
[00037d0e] 49ef 0002                 lea.l      2(a7),a4
[00037d12] 2f39 000d 99d6            move.l     _globl,-(a7)
[00037d18] 4854                      pea.l      (a4)
[00037d1a] 486f 0008                 pea.l      8(a7)
[00037d1e] 224a                      movea.l    a2,a1
[00037d20] 204c                      movea.l    a4,a0
[00037d22] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00037d28] 4fef 000c                 lea.l      12(a7),a7
[00037d2c] 7001                      moveq.l    #1,d0
[00037d2e] c057                      and.w      (a7),d0
[00037d30] 6714                      beq.s      edit_01select_3
[00037d32] 204b                      movea.l    a3,a0
[00037d34] 3012                      move.w     (a2),d0
[00037d36] 6100 fe30                 bsr        edit_row
[00037d3a] b680                      cmp.l      d0,d3
[00037d3c] 67d0                      beq.s      edit_01select_2
edit_01select_1:
[00037d3e] 3012                      move.w     (a2),d0
[00037d40] 204b                      movea.l    a3,a0
[00037d42] 6100 fe96                 bsr        edit_1select
edit_01select_3:
[00037d46] 5c4f                      addq.w     #6,a7
[00037d48] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00037d4c] 4e75                      rts

edit_selrange:
[00037d4e] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[00037d52] 594f                      subq.w     #4,a7
[00037d54] 2448                      movea.l    a0,a2
[00037d56] 262a 0018                 move.l     24(a2),d3
[00037d5a] 2803                      move.l     d3,d4
[00037d5c] d8aa 000a                 add.l      10(a2),d4
[00037d60] 5384                      subq.l     #1,d4
[00037d62] b8aa 0028                 cmp.l      40(a2),d4
[00037d66] 6f04                      ble.s      edit_selrange_1
[00037d68] 282a 0028                 move.l     40(a2),d4
edit_selrange_1:
[00037d6c] 4257                      clr.w      (a7)
[00037d6e] 2a00                      move.l     d0,d5
[00037d70] 604c                      bra.s      edit_selrange_2
edit_selrange_7:
[00037d72] 2005                      move.l     d5,d0
[00037d74] e788                      lsl.l      #3,d0
[00037d76] 206a 002c                 movea.l    44(a2),a0
[00037d7a] d1c0                      adda.l     d0,a0
[00037d7c] 3002                      move.w     d2,d0
[00037d7e] 4a40                      tst.w      d0
[00037d80] 670a                      beq.s      edit_selrange_3
[00037d82] 5340                      subq.w     #1,d0
[00037d84] 6716                      beq.s      edit_selrange_4
[00037d86] 5340                      subq.w     #1,d0
[00037d88] 6720                      beq.s      edit_selrange_5
[00037d8a] 6030                      bra.s      edit_selrange_6
edit_selrange_3:
[00037d8c] 7001                      moveq.l    #1,d0
[00037d8e] c068 0006                 and.w      6(a0),d0
[00037d92] 6728                      beq.s      edit_selrange_6
[00037d94] 0268 fffe 0006            andi.w     #$FFFE,6(a0)
[00037d9a] 600e                      bra.s      edit_selrange_5
edit_selrange_4:
[00037d9c] 7001                      moveq.l    #1,d0
[00037d9e] c068 0006                 and.w      6(a0),d0
[00037da2] 6618                      bne.s      edit_selrange_6
[00037da4] 0068 0001 0006            ori.w      #$0001,6(a0)
edit_selrange_5:
[00037daa] b685                      cmp.l      d5,d3
[00037dac] 6e0e                      bgt.s      edit_selrange_6
[00037dae] b885                      cmp.l      d5,d4
[00037db0] 6d0a                      blt.s      edit_selrange_6
[00037db2] 3ebc 0001                 move.w     #$0001,(a7)
[00037db6] 0068 0002 0006            ori.w      #$0002,6(a0)
edit_selrange_6:
[00037dbc] 5285                      addq.l     #1,d5
edit_selrange_2:
[00037dbe] b285                      cmp.l      d5,d1
[00037dc0] 6cb0                      bge.s      edit_selrange_7
[00037dc2] 3017                      move.w     (a7),d0
[00037dc4] 6740                      beq.s      edit_selrange_8
[00037dc6] 266a 0054                 movea.l    84(a2),a3
[00037dca] 220b                      move.l     a3,d1
[00037dcc] 6720                      beq.s      edit_selrange_9
[00037dce] 3f6a 0012 0002            move.w     18(a2),2(a7)
[00037dd4] 357c 0300 0012            move.w     #$0300,18(a2)
[00037dda] 302a 005c                 move.w     92(a2),d0
[00037dde] 204b                      movea.l    a3,a0
[00037de0] 226b 0066                 movea.l    102(a3),a1
[00037de4] 72ff                      moveq.l    #-1,d1
[00037de6] 4e91                      jsr        (a1)
[00037de8] 356f 0002 0012            move.w     2(a7),18(a2)
edit_selrange_9:
[00037dee] 2a03                      move.l     d3,d5
[00037df0] 6010                      bra.s      edit_selrange_10
edit_selrange_11:
[00037df2] 2005                      move.l     d5,d0
[00037df4] e788                      lsl.l      #3,d0
[00037df6] 206a 002c                 movea.l    44(a2),a0
[00037dfa] 0270 fffd 0806            andi.w     #$FFFD,6(a0,d0.l)
[00037e00] 5285                      addq.l     #1,d5
edit_selrange_10:
[00037e02] b885                      cmp.l      d5,d4
[00037e04] 6cec                      bge.s      edit_selrange_11
edit_selrange_8:
[00037e06] 584f                      addq.w     #4,a7
[00037e08] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00037e0c] 4e75                      rts

edit_nselect:
[00037e0e] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[00037e12] 5d4f                      subq.w     #6,a7
[00037e14] 2448                      movea.l    a0,a2
[00037e16] 3f40 0004                 move.w     d0,4(a7)
[00037e1a] 3602                      move.w     d2,d3
[00037e1c] 47ef 0004                 lea.l      4(a7),a3
[00037e20] 4a43                      tst.w      d3
[00037e22] 6604                      bne.s      edit_nselect_1
[00037e24] 7801                      moveq.l    #1,d4
[00037e26] 6002                      bra.s      edit_nselect_2
edit_nselect_1:
[00037e28] 4244                      clr.w      d4
edit_nselect_2:
[00037e2a] 7003                      moveq.l    #3,d0
[00037e2c] c041                      and.w      d1,d0
[00037e2e] 6724                      beq.s      edit_nselect_3
[00037e30] 222a 0030                 move.l     48(a2),d1
[00037e34] d2aa 0038                 add.l      56(a2),d1
[00037e38] e281                      asr.l      #1,d1
[00037e3a] 2f01                      move.l     d1,-(a7)
[00037e3c] 204a                      movea.l    a2,a0
[00037e3e] 3013                      move.w     (a3),d0
[00037e40] 6100 fd26                 bsr        edit_row
[00037e44] b09f                      cmp.l      (a7)+,d0
[00037e46] 6f06                      ble.s      edit_nselect_4
[00037e48] 2a2a 0030                 move.l     48(a2),d5
[00037e4c] 6028                      bra.s      edit_nselect_5
edit_nselect_4:
[00037e4e] 2a2a 0038                 move.l     56(a2),d5
[00037e52] 6022                      bra.s      edit_nselect_5
edit_nselect_3:
[00037e54] 3404                      move.w     d4,d2
[00037e56] 222a 0038                 move.l     56(a2),d1
[00037e5a] 202a 0030                 move.l     48(a2),d0
[00037e5e] 204a                      movea.l    a2,a0
[00037e60] 6100 feec                 bsr        edit_selrange
[00037e64] 3013                      move.w     (a3),d0
[00037e66] 204a                      movea.l    a2,a0
[00037e68] 6100 fcfe                 bsr        edit_row
[00037e6c] 2a00                      move.l     d0,d5
[00037e6e] 2540 0038                 move.l     d0,56(a2)
[00037e72] 2540 0030                 move.l     d0,48(a2)
edit_nselect_5:
[00037e76] 7cfe                      moveq.l    #-2,d6
edit_nselect_17:
[00037e78] 49ef 0002                 lea.l      2(a7),a4
[00037e7c] 3013                      move.w     (a3),d0
[00037e7e] 204a                      movea.l    a2,a0
[00037e80] 6100 fce6                 bsr        edit_row
[00037e84] 2e00                      move.l     d0,d7
[00037e86] bc80                      cmp.l      d0,d6
[00037e88] 6700 00ec                 beq        edit_nselect_6
[00037e8c] ba80                      cmp.l      d0,d5
[00037e8e] 6e54                      bgt.s      edit_nselect_7
[00037e90] b0aa 0038                 cmp.l      56(a2),d0
[00037e94] 6c12                      bge.s      edit_nselect_8
[00037e96] 3404                      move.w     d4,d2
[00037e98] 222a 0038                 move.l     56(a2),d1
[00037e9c] 7001                      moveq.l    #1,d0
[00037e9e] d087                      add.l      d7,d0
[00037ea0] 204a                      movea.l    a2,a0
[00037ea2] 6100 feaa                 bsr        edit_selrange
[00037ea6] 6032                      bra.s      edit_nselect_9
edit_nselect_8:
[00037ea8] baaa 0038                 cmp.l      56(a2),d5
[00037eac] 6c10                      bge.s      edit_nselect_10
[00037eae] 3403                      move.w     d3,d2
[00037eb0] 2207                      move.l     d7,d1
[00037eb2] 202a 0038                 move.l     56(a2),d0
[00037eb6] 204a                      movea.l    a2,a0
[00037eb8] 6100 fe94                 bsr        edit_selrange
[00037ebc] 601c                      bra.s      edit_nselect_9
edit_nselect_10:
[00037ebe] 3404                      move.w     d4,d2
[00037ec0] 72ff                      moveq.l    #-1,d1
[00037ec2] d285                      add.l      d5,d1
[00037ec4] 202a 0030                 move.l     48(a2),d0
[00037ec8] 204a                      movea.l    a2,a0
[00037eca] 6100 fe82                 bsr        edit_selrange
[00037ece] 3403                      move.w     d3,d2
[00037ed0] 2207                      move.l     d7,d1
[00037ed2] 2005                      move.l     d5,d0
[00037ed4] 204a                      movea.l    a2,a0
[00037ed6] 6100 fe76                 bsr        edit_selrange
edit_nselect_9:
[00037eda] 2545 0030                 move.l     d5,48(a2)
[00037ede] 2547 0038                 move.l     d7,56(a2)
[00037ee2] 6054                      bra.s      edit_nselect_11
edit_nselect_7:
[00037ee4] beaa 0030                 cmp.l      48(a2),d7
[00037ee8] 6f12                      ble.s      edit_nselect_12
[00037eea] 3404                      move.w     d4,d2
[00037eec] 72ff                      moveq.l    #-1,d1
[00037eee] d287                      add.l      d7,d1
[00037ef0] 202a 0030                 move.l     48(a2),d0
[00037ef4] 204a                      movea.l    a2,a0
[00037ef6] 6100 fe56                 bsr        edit_selrange
[00037efa] 6034                      bra.s      edit_nselect_13
edit_nselect_12:
[00037efc] baaa 0030                 cmp.l      48(a2),d5
[00037f00] 6f10                      ble.s      edit_nselect_14
[00037f02] 3403                      move.w     d3,d2
[00037f04] 222a 0030                 move.l     48(a2),d1
[00037f08] 2007                      move.l     d7,d0
[00037f0a] 204a                      movea.l    a2,a0
[00037f0c] 6100 fe40                 bsr        edit_selrange
[00037f10] 601e                      bra.s      edit_nselect_13
edit_nselect_14:
[00037f12] 3404                      move.w     d4,d2
[00037f14] 222a 0038                 move.l     56(a2),d1
[00037f18] 7001                      moveq.l    #1,d0
[00037f1a] d085                      add.l      d5,d0
[00037f1c] 204a                      movea.l    a2,a0
[00037f1e] 6100 fe2e                 bsr        edit_selrange
[00037f22] 3403                      move.w     d3,d2
[00037f24] 72ff                      moveq.l    #-1,d1
[00037f26] d285                      add.l      d5,d1
[00037f28] 2007                      move.l     d7,d0
[00037f2a] 204a                      movea.l    a2,a0
[00037f2c] 6100 fe20                 bsr        edit_selrange
edit_nselect_13:
[00037f30] 2547 0030                 move.l     d7,48(a2)
[00037f34] 2545 0038                 move.l     d5,56(a2)
edit_nselect_11:
[00037f38] beaa 0018                 cmp.l      24(a2),d7
[00037f3c] 6d0c                      blt.s      edit_nselect_15
[00037f3e] 202a 0018                 move.l     24(a2),d0
[00037f42] d0aa 000a                 add.l      10(a2),d0
[00037f46] be80                      cmp.l      d0,d7
[00037f48] 6d18                      blt.s      edit_nselect_16
edit_nselect_15:
[00037f4a] 2007                      move.l     d7,d0
[00037f4c] 204a                      movea.l    a2,a0
[00037f4e] 6100 f5a0                 bsr        edit_showline
[00037f52] 204a                      movea.l    a2,a0
[00037f54] 6100 f792                 bsr        edit_update
[00037f58] 7001                      moveq.l    #1,d0
[00037f5a] 204a                      movea.l    a2,a0
[00037f5c] 4eb9 0003 9cf8            jsr        cleanup
edit_nselect_16:
[00037f62] 202a 0072                 move.l     114(a2),d0
[00037f66] 670e                      beq.s      edit_nselect_6
[00037f68] 43f9 000c 2f4e            lea.l      $000C2F4E,a1
[00037f6e] 206a 0076                 movea.l    118(a2),a0
[00037f72] 2a40                      movea.l    d0,a5
[00037f74] 4e95                      jsr        (a5)
edit_nselect_6:
[00037f76] 2c07                      move.l     d7,d6
[00037f78] 2f39 000d 99d6            move.l     _globl,-(a7)
[00037f7e] 4854                      pea.l      (a4)
[00037f80] 486f 0008                 pea.l      8(a7)
[00037f84] 224b                      movea.l    a3,a1
[00037f86] 204c                      movea.l    a4,a0
[00037f88] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00037f8e] 4fef 000c                 lea.l      12(a7),a7
[00037f92] 7001                      moveq.l    #1,d0
[00037f94] c057                      and.w      (a7),d0
[00037f96] 6600 fee0                 bne        edit_nselect_17
[00037f9a] 5c4f                      addq.w     #6,a7
[00037f9c] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00037fa0] 4e75                      rts

edit_nmselect:
[00037fa2] 3f03                      move.w     d3,-(a7)
[00037fa4] 2f0a                      move.l     a2,-(a7)
[00037fa6] 2448                      movea.l    a0,a2
[00037fa8] 3600                      move.w     d0,d3
[00037faa] 6100 fbbc                 bsr        edit_row
[00037fae] 2540 0038                 move.l     d0,56(a2)
[00037fb2] 2540 0030                 move.l     d0,48(a2)
[00037fb6] 7201                      moveq.l    #1,d1
[00037fb8] e788                      lsl.l      #3,d0
[00037fba] 206a 002c                 movea.l    44(a2),a0
[00037fbe] c270 0806                 and.w      6(a0,d0.l),d1
[00037fc2] 6604                      bne.s      edit_nmselect_1
[00037fc4] 7401                      moveq.l    #1,d2
[00037fc6] 6002                      bra.s      edit_nmselect_2
edit_nmselect_1:
[00037fc8] 4242                      clr.w      d2
edit_nmselect_2:
[00037fca] 4241                      clr.w      d1
[00037fcc] 3003                      move.w     d3,d0
[00037fce] 204a                      movea.l    a2,a0
[00037fd0] 6100 fe3c                 bsr        edit_nselect
[00037fd4] 245f                      movea.l    (a7)+,a2
[00037fd6] 361f                      move.w     (a7)+,d3
[00037fd8] 4e75                      rts

comp_rc:
[00037fda] 2f03                      move.l     d3,-(a7)
[00037fdc] 262f 0008                 move.l     8(a7),d3
[00037fe0] b480                      cmp.l      d0,d2
[00037fe2] 6d08                      blt.s      comp_rc_1
[00037fe4] b480                      cmp.l      d0,d2
[00037fe6] 6e0c                      bgt.s      comp_rc_2
[00037fe8] b681                      cmp.l      d1,d3
[00037fea] 6c04                      bge.s      comp_rc_3
comp_rc_1:
[00037fec] 7001                      moveq.l    #1,d0
[00037fee] 600a                      bra.s      comp_rc_4
comp_rc_3:
[00037ff0] b681                      cmp.l      d1,d3
[00037ff2] 6f04                      ble.s      comp_rc_5
comp_rc_2:
[00037ff4] 70ff                      moveq.l    #-1,d0
[00037ff6] 6002                      bra.s      comp_rc_4
comp_rc_5:
[00037ff8] 4240                      clr.w      d0
comp_rc_4:
[00037ffa] 261f                      move.l     (a7)+,d3
[00037ffc] 4e75                      rts

edit_charselect:
[00037ffe] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[00038002] 4fef ffe2                 lea.l      -30(a7),a7
[00038006] 2648                      movea.l    a0,a3
[00038008] 3f40 001c                 move.w     d0,28(a7)
[0003800c] 3f41 001a                 move.w     d1,26(a7)
[00038010] 3f42 0018                 move.w     d2,24(a7)
[00038014] 45ef 001a                 lea.l      26(a7),a2
[00038018] 49ef 001c                 lea.l      28(a7),a4
[0003801c] 3012                      move.w     (a2),d0
[0003801e] 204b                      movea.l    a3,a0
[00038020] 6100 fb46                 bsr        edit_row
[00038024] 2600                      move.l     d0,d3
[00038026] 204b                      movea.l    a3,a0
[00038028] 3014                      move.w     (a4),d0
[0003802a] 6100 fac2                 bsr        edit_col
[0003802e] 2f40 0008                 move.l     d0,8(a7)
[00038032] 2203                      move.l     d3,d1
[00038034] e789                      lsl.l      #3,d1
[00038036] 206b 002c                 movea.l    44(a3),a0
[0003803a] 2a70 1800                 movea.l    0(a0,d1.l),a5
[0003803e] 302b 009a                 move.w     154(a3),d0
[00038042] 204d                      movea.l    a5,a0
[00038044] 322f 000a                 move.w     10(a7),d1
[00038048] 6100 e21c                 bsr        posv
[0003804c] 48c0                      ext.l      d0
[0003804e] 2f40 0008                 move.l     d0,8(a7)
[00038052] 7203                      moveq.l    #3,d1
[00038054] c26f 0018                 and.w      24(a7),d1
[00038058] 674a                      beq.s      edit_charselect_1
[0003805a] 242b 0034                 move.l     52(a3),d2
[0003805e] d4ab 003c                 add.l      60(a3),d2
[00038062] e282                      asr.l      #1,d2
[00038064] 2f02                      move.l     d2,-(a7)
[00038066] 242b 0030                 move.l     48(a3),d2
[0003806a] d4ab 0038                 add.l      56(a3),d2
[0003806e] e282                      asr.l      #1,d2
[00038070] 2003                      move.l     d3,d0
[00038072] 222f 000c                 move.l     12(a7),d1
[00038076] 6100 ff62                 bsr        comp_rc
[0003807a] 584f                      addq.w     #4,a7
[0003807c] 4a40                      tst.w      d0
[0003807e] 6f12                      ble.s      edit_charselect_2
[00038080] 262b 0030                 move.l     48(a3),d3
[00038084] 2f6b 0034 0008            move.l     52(a3),8(a7)
[0003808a] 2f6b 0040 0004            move.l     64(a3),4(a7)
[00038090] 6046                      bra.s      edit_charselect_3
edit_charselect_2:
[00038092] 262b 0038                 move.l     56(a3),d3
[00038096] 2f6b 003c 0008            move.l     60(a3),8(a7)
[0003809c] 2f6b 0044 0004            move.l     68(a3),4(a7)
[000380a2] 6034                      bra.s      edit_charselect_3
edit_charselect_1:
[000380a4] 4242                      clr.w      d2
[000380a6] 222b 0038                 move.l     56(a3),d1
[000380aa] 202b 0030                 move.l     48(a3),d0
[000380ae] 204b                      movea.l    a3,a0
[000380b0] 6100 fc9c                 bsr        edit_selrange
[000380b4] 2743 0038                 move.l     d3,56(a3)
[000380b8] 2743 0030                 move.l     d3,48(a3)
[000380bc] 322f 000a                 move.w     10(a7),d1
[000380c0] 302b 009a                 move.w     154(a3),d0
[000380c4] 204d                      movea.l    a5,a0
[000380c6] 6100 e1da                 bsr        vpos
[000380ca] 48c0                      ext.l      d0
[000380cc] 2f40 0004                 move.l     d0,4(a7)
[000380d0] 2740 0044                 move.l     d0,68(a3)
[000380d4] 2740 0040                 move.l     d0,64(a3)
edit_charselect_3:
[000380d8] 70fd                      moveq.l    #-3,d0
[000380da] 2f40 0010                 move.l     d0,16(a7)
[000380de] 2f40 0014                 move.l     d0,20(a7)
edit_charselect_19:
[000380e2] 3012                      move.w     (a2),d0
[000380e4] 204b                      movea.l    a3,a0
[000380e6] 6100 fa80                 bsr        edit_row
[000380ea] 2e00                      move.l     d0,d7
[000380ec] 204b                      movea.l    a3,a0
[000380ee] 3014                      move.w     (a4),d0
[000380f0] 6100 f9fc                 bsr        edit_col
[000380f4] 2c00                      move.l     d0,d6
[000380f6] 2f46 000c                 move.l     d6,12(a7)
[000380fa] 2007                      move.l     d7,d0
[000380fc] e788                      lsl.l      #3,d0
[000380fe] 206b 002c                 movea.l    44(a3),a0
[00038102] 2a70 0800                 movea.l    0(a0,d0.l),a5
[00038106] 3206                      move.w     d6,d1
[00038108] 302b 009a                 move.w     154(a3),d0
[0003810c] 204d                      movea.l    a5,a0
[0003810e] 6100 e156                 bsr        posv
[00038112] 48c0                      ext.l      d0
[00038114] 2c00                      move.l     d0,d6
[00038116] 3206                      move.w     d6,d1
[00038118] 302b 009a                 move.w     154(a3),d0
[0003811c] 204d                      movea.l    a5,a0
[0003811e] 6100 e182                 bsr        vpos
[00038122] 3a00                      move.w     d0,d5
[00038124] 48c5                      ext.l      d5
[00038126] beaf 0014                 cmp.l      20(a7),d7
[0003812a] 6608                      bne.s      edit_charselect_4
[0003812c] bcaf 0010                 cmp.l      16(a7),d6
[00038130] 6700 01f6                 beq        edit_charselect_5
edit_charselect_4:
[00038134] 2f2f 0008                 move.l     8(a7),-(a7)
[00038138] 2403                      move.l     d3,d2
[0003813a] 2206                      move.l     d6,d1
[0003813c] 2007                      move.l     d7,d0
[0003813e] 6100 fe9a                 bsr        comp_rc
[00038142] 584f                      addq.w     #4,a7
[00038144] 4a40                      tst.w      d0
[00038146] 6b00 00fc                 bmi        edit_charselect_6
[0003814a] 2f2b 003c                 move.l     60(a3),-(a7)
[0003814e] 242b 0038                 move.l     56(a3),d2
[00038152] 2206                      move.l     d6,d1
[00038154] 2007                      move.l     d7,d0
[00038156] 6100 fe82                 bsr        comp_rc
[0003815a] 584f                      addq.w     #4,a7
[0003815c] 4a40                      tst.w      d0
[0003815e] 6a28                      bpl.s      edit_charselect_7
[00038160] 2747 0030                 move.l     d7,48(a3)
[00038164] 2745 0040                 move.l     d5,64(a3)
[00038168] 4242                      clr.w      d2
[0003816a] 222b 0038                 move.l     56(a3),d1
[0003816e] 2007                      move.l     d7,d0
[00038170] 204b                      movea.l    a3,a0
[00038172] 6100 fbda                 bsr        edit_selrange
[00038176] 2007                      move.l     d7,d0
[00038178] e788                      lsl.l      #3,d0
[0003817a] 206b 002c                 movea.l    44(a3),a0
[0003817e] 0070 0001 0806            ori.w      #$0001,6(a0,d0.l)
[00038184] 6000 009e                 bra        edit_charselect_8
edit_charselect_7:
[00038188] 2f2b 003c                 move.l     60(a3),-(a7)
[0003818c] 242b 0038                 move.l     56(a3),d2
[00038190] 222f 000c                 move.l     12(a7),d1
[00038194] 2003                      move.l     d3,d0
[00038196] 6100 fe42                 bsr        comp_rc
[0003819a] 584f                      addq.w     #4,a7
[0003819c] 4a40                      tst.w      d0
[0003819e] 6a42                      bpl.s      edit_charselect_9
[000381a0] 282b 0038                 move.l     56(a3),d4
[000381a4] 2744 0030                 move.l     d4,48(a3)
[000381a8] 276b 0044 0040            move.l     68(a3),64(a3)
[000381ae] 2747 0038                 move.l     d7,56(a3)
[000381b2] 2745 0044                 move.l     d5,68(a3)
[000381b6] be84                      cmp.l      d4,d7
[000381b8] 6606                      bne.s      edit_charselect_10
[000381ba] baab 0040                 cmp.l      64(a3),d5
[000381be] 6f1c                      ble.s      edit_charselect_11
edit_charselect_10:
[000381c0] 2004                      move.l     d4,d0
[000381c2] e788                      lsl.l      #3,d0
[000381c4] 206b 002c                 movea.l    44(a3),a0
[000381c8] 0270 fffe 0806            andi.w     #$FFFE,6(a0,d0.l)
[000381ce] 7401                      moveq.l    #1,d2
[000381d0] 2207                      move.l     d7,d1
[000381d2] 204b                      movea.l    a3,a0
[000381d4] 2004                      move.l     d4,d0
[000381d6] 6100 fb76                 bsr        edit_selrange
[000381da] 6048                      bra.s      edit_charselect_8
edit_charselect_11:
[000381dc] 2747 0038                 move.l     d7,56(a3)
[000381e0] 6042                      bra.s      edit_charselect_8
edit_charselect_9:
[000381e2] 2f2b 0034                 move.l     52(a3),-(a7)
[000381e6] 242b 0030                 move.l     48(a3),d2
[000381ea] 2206                      move.l     d6,d1
[000381ec] 2007                      move.l     d7,d0
[000381ee] 6100 fdea                 bsr        comp_rc
[000381f2] 584f                      addq.w     #4,a7
[000381f4] 4a40                      tst.w      d0
[000381f6] 6f2c                      ble.s      edit_charselect_8
[000381f8] 4242                      clr.w      d2
[000381fa] 2203                      move.l     d3,d1
[000381fc] 202b 0030                 move.l     48(a3),d0
[00038200] 204b                      movea.l    a3,a0
[00038202] 6100 fb4a                 bsr        edit_selrange
[00038206] 2743 0030                 move.l     d3,48(a3)
[0003820a] 276f 0004 0040            move.l     4(a7),64(a3)
[00038210] 2747 0038                 move.l     d7,56(a3)
[00038214] 2745 0044                 move.l     d5,68(a3)
[00038218] 7401                      moveq.l    #1,d2
[0003821a] 2207                      move.l     d7,d1
[0003821c] 2003                      move.l     d3,d0
[0003821e] 204b                      movea.l    a3,a0
[00038220] 6100 fb2c                 bsr        edit_selrange
edit_charselect_8:
[00038224] 2743 0030                 move.l     d3,48(a3)
[00038228] 276f 0008 0034            move.l     8(a7),52(a3)
[0003822e] 276f 0004 0040            move.l     4(a7),64(a3)
[00038234] 2747 0038                 move.l     d7,56(a3)
[00038238] 2746 003c                 move.l     d6,60(a3)
[0003823c] 2745 0044                 move.l     d5,68(a3)
[00038240] 6000 00e6                 bra        edit_charselect_5
edit_charselect_6:
[00038244] 2f2b 0034                 move.l     52(a3),-(a7)
[00038248] 242b 0030                 move.l     48(a3),d2
[0003824c] 2206                      move.l     d6,d1
[0003824e] 2007                      move.l     d7,d0
[00038250] 6100 fd88                 bsr        comp_rc
[00038254] 584f                      addq.w     #4,a7
[00038256] 4a40                      tst.w      d0
[00038258] 6f28                      ble.s      edit_charselect_12
[0003825a] 2747 0038                 move.l     d7,56(a3)
[0003825e] 2745 0044                 move.l     d5,68(a3)
[00038262] 4242                      clr.w      d2
[00038264] 2207                      move.l     d7,d1
[00038266] 202b 0030                 move.l     48(a3),d0
[0003826a] 204b                      movea.l    a3,a0
[0003826c] 6100 fae0                 bsr        edit_selrange
[00038270] 2007                      move.l     d7,d0
[00038272] e788                      lsl.l      #3,d0
[00038274] 206b 002c                 movea.l    44(a3),a0
[00038278] 0070 0001 0806            ori.w      #$0001,6(a0,d0.l)
[0003827e] 6000 008c                 bra        edit_charselect_13
edit_charselect_12:
[00038282] 2f2b 0034                 move.l     52(a3),-(a7)
[00038286] 242b 0030                 move.l     48(a3),d2
[0003828a] 222f 000c                 move.l     12(a7),d1
[0003828e] 2003                      move.l     d3,d0
[00038290] 6100 fd48                 bsr        comp_rc
[00038294] 584f                      addq.w     #4,a7
[00038296] 4a40                      tst.w      d0
[00038298] 6f44                      ble.s      edit_charselect_14
[0003829a] 282b 0030                 move.l     48(a3),d4
[0003829e] 2744 0038                 move.l     d4,56(a3)
[000382a2] 276b 0040 0044            move.l     64(a3),68(a3)
[000382a8] 2747 0030                 move.l     d7,48(a3)
[000382ac] 2745 0040                 move.l     d5,64(a3)
[000382b0] be84                      cmp.l      d4,d7
[000382b2] 6608                      bne.s      edit_charselect_15
[000382b4] 202b 0044                 move.l     68(a3),d0
[000382b8] b085                      cmp.l      d5,d0
[000382ba] 6f1c                      ble.s      edit_charselect_16
edit_charselect_15:
[000382bc] 2004                      move.l     d4,d0
[000382be] e788                      lsl.l      #3,d0
[000382c0] 206b 002c                 movea.l    44(a3),a0
[000382c4] 0270 fffe 0806            andi.w     #$FFFE,6(a0,d0.l)
[000382ca] 7401                      moveq.l    #1,d2
[000382cc] 2204                      move.l     d4,d1
[000382ce] 204b                      movea.l    a3,a0
[000382d0] 2007                      move.l     d7,d0
[000382d2] 6100 fa7a                 bsr        edit_selrange
[000382d6] 6034                      bra.s      edit_charselect_13
edit_charselect_16:
[000382d8] 2747 0038                 move.l     d7,56(a3)
[000382dc] 602e                      bra.s      edit_charselect_13
edit_charselect_14:
[000382de] 4242                      clr.w      d2
[000382e0] 222b 0038                 move.l     56(a3),d1
[000382e4] 202b 0030                 move.l     48(a3),d0
[000382e8] 204b                      movea.l    a3,a0
[000382ea] 6100 fa62                 bsr        edit_selrange
[000382ee] 2747 0030                 move.l     d7,48(a3)
[000382f2] 2745 0040                 move.l     d5,64(a3)
[000382f6] 2743 0038                 move.l     d3,56(a3)
[000382fa] 276f 0004 0044            move.l     4(a7),68(a3)
[00038300] 7401                      moveq.l    #1,d2
[00038302] 2203                      move.l     d3,d1
[00038304] 2007                      move.l     d7,d0
[00038306] 204b                      movea.l    a3,a0
[00038308] 6100 fa44                 bsr        edit_selrange
edit_charselect_13:
[0003830c] 2747 0030                 move.l     d7,48(a3)
[00038310] 2746 0034                 move.l     d6,52(a3)
[00038314] 2745 0040                 move.l     d5,64(a3)
[00038318] 2743 0038                 move.l     d3,56(a3)
[0003831c] 276f 0008 003c            move.l     8(a7),60(a3)
[00038322] 276f 0004 0044            move.l     4(a7),68(a3)
edit_charselect_5:
[00038328] beab 0018                 cmp.l      24(a3),d7
[0003832c] 6d22                      blt.s      edit_charselect_17
[0003832e] 202b 0018                 move.l     24(a3),d0
[00038332] d0ab 000a                 add.l      10(a3),d0
[00038336] be80                      cmp.l      d0,d7
[00038338] 6c16                      bge.s      edit_charselect_17
[0003833a] 222f 000c                 move.l     12(a7),d1
[0003833e] b2ab 001c                 cmp.l      28(a3),d1
[00038342] 6d0c                      blt.s      edit_charselect_17
[00038344] 242b 001c                 move.l     28(a3),d2
[00038348] d4ab 000e                 add.l      14(a3),d2
[0003834c] b282                      cmp.l      d2,d1
[0003834e] 6f22                      ble.s      edit_charselect_18
edit_charselect_17:
[00038350] 2007                      move.l     d7,d0
[00038352] 204b                      movea.l    a3,a0
[00038354] 6100 f19a                 bsr        edit_showline
[00038358] 202f 000c                 move.l     12(a7),d0
[0003835c] 204b                      movea.l    a3,a0
[0003835e] 6100 e65e                 bsr        edit_showcol
[00038362] 204b                      movea.l    a3,a0
[00038364] 6100 f382                 bsr        edit_update
[00038368] 7001                      moveq.l    #1,d0
[0003836a] 204b                      movea.l    a3,a0
[0003836c] 4eb9 0003 9cf8            jsr        cleanup
edit_charselect_18:
[00038372] 2f47 0014                 move.l     d7,20(a7)
[00038376] 2f46 0010                 move.l     d6,16(a7)
[0003837a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00038380] 486f 0006                 pea.l      6(a7)
[00038384] 486f 0008                 pea.l      8(a7)
[00038388] 224a                      movea.l    a2,a1
[0003838a] 204c                      movea.l    a4,a0
[0003838c] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00038392] 4fef 000c                 lea.l      12(a7),a7
[00038396] 7001                      moveq.l    #1,d0
[00038398] c057                      and.w      (a7),d0
[0003839a] 6600 fd46                 bne        edit_charselect_19
[0003839e] 4fef 001e                 lea.l      30(a7),a7
[000383a2] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[000383a6] 4e75                      rts

edit_blkselect:
[000383a8] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[000383ac] 4fef fff4                 lea.l      -12(a7),a7
[000383b0] 2448                      movea.l    a0,a2
[000383b2] 3f40 000a                 move.w     d0,10(a7)
[000383b6] 3f41 0008                 move.w     d1,8(a7)
[000383ba] 47ef 000a                 lea.l      10(a7),a3
[000383be] 49ef 0008                 lea.l      8(a7),a4
[000383c2] 7003                      moveq.l    #3,d0
[000383c4] c042                      and.w      d2,d0
[000383c6] 6746                      beq.s      edit_blkselect_1
[000383c8] 222a 0040                 move.l     64(a2),d1
[000383cc] d2aa 0044                 add.l      68(a2),d1
[000383d0] e281                      asr.l      #1,d1
[000383d2] 2f01                      move.l     d1,-(a7)
[000383d4] 204a                      movea.l    a2,a0
[000383d6] 3013                      move.w     (a3),d0
[000383d8] 6100 f714                 bsr        edit_col
[000383dc] b09f                      cmp.l      (a7)+,d0
[000383de] 6f06                      ble.s      edit_blkselect_2
[000383e0] 262a 0040                 move.l     64(a2),d3
[000383e4] 6004                      bra.s      edit_blkselect_3
edit_blkselect_2:
[000383e6] 262a 0044                 move.l     68(a2),d3
edit_blkselect_3:
[000383ea] 202a 0030                 move.l     48(a2),d0
[000383ee] d0aa 0038                 add.l      56(a2),d0
[000383f2] e280                      asr.l      #1,d0
[000383f4] 2f00                      move.l     d0,-(a7)
[000383f6] 204a                      movea.l    a2,a0
[000383f8] 3014                      move.w     (a4),d0
[000383fa] 6100 f76c                 bsr        edit_row
[000383fe] b09f                      cmp.l      (a7)+,d0
[00038400] 6f06                      ble.s      edit_blkselect_4
[00038402] 282a 0030                 move.l     48(a2),d4
[00038406] 6078                      bra.s      edit_blkselect_5
edit_blkselect_4:
[00038408] 282a 0038                 move.l     56(a2),d4
[0003840c] 6072                      bra.s      edit_blkselect_5
edit_blkselect_1:
[0003840e] 4242                      clr.w      d2
[00038410] 222a 0038                 move.l     56(a2),d1
[00038414] 202a 0030                 move.l     48(a2),d0
[00038418] 204a                      movea.l    a2,a0
[0003841a] 6100 f932                 bsr        edit_selrange
[0003841e] 3014                      move.w     (a4),d0
[00038420] 204a                      movea.l    a2,a0
[00038422] 6100 f744                 bsr        edit_row
[00038426] 2800                      move.l     d0,d4
[00038428] 2540 0038                 move.l     d0,56(a2)
[0003842c] 2540 0030                 move.l     d0,48(a2)
[00038430] 2204                      move.l     d4,d1
[00038432] e789                      lsl.l      #3,d1
[00038434] 206a 002c                 movea.l    44(a2),a0
[00038438] 2a70 1800                 movea.l    0(a0,d1.l),a5
[0003843c] 204a                      movea.l    a2,a0
[0003843e] 3013                      move.w     (a3),d0
[00038440] 6100 f6ac                 bsr        edit_col
[00038444] 2a00                      move.l     d0,d5
[00038446] 3205                      move.w     d5,d1
[00038448] 302a 009a                 move.w     154(a2),d0
[0003844c] 204d                      movea.l    a5,a0
[0003844e] 6100 de16                 bsr        posv
[00038452] 48c0                      ext.l      d0
[00038454] 2a00                      move.l     d0,d5
[00038456] 3205                      move.w     d5,d1
[00038458] 302a 009a                 move.w     154(a2),d0
[0003845c] 204d                      movea.l    a5,a0
[0003845e] 6100 de42                 bsr        vpos
[00038462] 48c0                      ext.l      d0
[00038464] 2a00                      move.l     d0,d5
[00038466] 2605                      move.l     d5,d3
[00038468] 2543 0044                 move.l     d3,68(a2)
[0003846c] 2543 0040                 move.l     d3,64(a2)
[00038470] 7401                      moveq.l    #1,d2
[00038472] 222a 0038                 move.l     56(a2),d1
[00038476] 202a 0030                 move.l     48(a2),d0
[0003847a] 204a                      movea.l    a2,a0
[0003847c] 6100 f8d0                 bsr        edit_selrange
edit_blkselect_5:
[00038480] 7efe                      moveq.l    #-2,d7
[00038482] 2f47 0004                 move.l     d7,4(a7)
edit_blkselect_30:
[00038486] 3014                      move.w     (a4),d0
[00038488] 204a                      movea.l    a2,a0
[0003848a] 6100 f6dc                 bsr        edit_row
[0003848e] 2c00                      move.l     d0,d6
[00038490] 204a                      movea.l    a2,a0
[00038492] 3013                      move.w     (a3),d0
[00038494] 6100 f658                 bsr        edit_col
[00038498] 2a00                      move.l     d0,d5
[0003849a] 2206                      move.l     d6,d1
[0003849c] e789                      lsl.l      #3,d1
[0003849e] 206a 002c                 movea.l    44(a2),a0
[000384a2] 2a70 1800                 movea.l    0(a0,d1.l),a5
[000384a6] 302a 009a                 move.w     154(a2),d0
[000384aa] 204d                      movea.l    a5,a0
[000384ac] 3205                      move.w     d5,d1
[000384ae] 6100 ddb6                 bsr        posv
[000384b2] 48c0                      ext.l      d0
[000384b4] 2a00                      move.l     d0,d5
[000384b6] 3205                      move.w     d5,d1
[000384b8] 302a 009a                 move.w     154(a2),d0
[000384bc] 204d                      movea.l    a5,a0
[000384be] 6100 dde2                 bsr        vpos
[000384c2] 48c0                      ext.l      d0
[000384c4] 2a00                      move.l     d0,d5
[000384c6] be86                      cmp.l      d6,d7
[000384c8] 6608                      bne.s      edit_blkselect_6
[000384ca] b0af 0004                 cmp.l      4(a7),d0
[000384ce] 6700 01b0                 beq        edit_blkselect_7
edit_blkselect_6:
[000384d2] b685                      cmp.l      d5,d3
[000384d4] 6e5c                      bgt.s      edit_blkselect_8
[000384d6] baaa 0044                 cmp.l      68(a2),d5
[000384da] 6c06                      bge.s      edit_blkselect_9
[000384dc] 2545 0040                 move.l     d5,64(a2)
[000384e0] 6036                      bra.s      edit_blkselect_10
edit_blkselect_9:
[000384e2] b6aa 0044                 cmp.l      68(a2),d3
[000384e6] 6c08                      bge.s      edit_blkselect_11
[000384e8] 256a 0044 0040            move.l     68(a2),64(a2)
[000384ee] 601e                      bra.s      edit_blkselect_12
edit_blkselect_11:
[000384f0] 202a 0044                 move.l     68(a2),d0
[000384f4] b0aa 0040                 cmp.l      64(a2),d0
[000384f8] 6d10                      blt.s      edit_blkselect_13
[000384fa] 7402                      moveq.l    #2,d2
[000384fc] 222a 0038                 move.l     56(a2),d1
[00038500] 202a 0030                 move.l     48(a2),d0
[00038504] 204a                      movea.l    a2,a0
[00038506] 6100 f846                 bsr        edit_selrange
edit_blkselect_13:
[0003850a] 2543 0040                 move.l     d3,64(a2)
edit_blkselect_12:
[0003850e] 2545 0044                 move.l     d5,68(a2)
[00038512] baaa 0040                 cmp.l      64(a2),d5
[00038516] 6d10                      blt.s      edit_blkselect_14
edit_blkselect_10:
[00038518] 7402                      moveq.l    #2,d2
[0003851a] 222a 0038                 move.l     56(a2),d1
[0003851e] 202a 0030                 move.l     48(a2),d0
[00038522] 204a                      movea.l    a2,a0
[00038524] 6100 f828                 bsr        edit_selrange
edit_blkselect_14:
[00038528] 2543 0040                 move.l     d3,64(a2)
[0003852c] 2545 0044                 move.l     d5,68(a2)
[00038530] 605e                      bra.s      edit_blkselect_15
edit_blkselect_8:
[00038532] baaa 0040                 cmp.l      64(a2),d5
[00038536] 6d0c                      blt.s      edit_blkselect_16
[00038538] baaa 0040                 cmp.l      64(a2),d5
[0003853c] 6f4a                      ble.s      edit_blkselect_17
[0003853e] 2545 0044                 move.l     d5,68(a2)
[00038542] 6034                      bra.s      edit_blkselect_18
edit_blkselect_16:
[00038544] b6aa 0040                 cmp.l      64(a2),d3
[00038548] 6f0c                      ble.s      edit_blkselect_19
[0003854a] 256a 0040 0044            move.l     64(a2),68(a2)
[00038550] 2545 0040                 move.l     d5,64(a2)
[00038554] 6022                      bra.s      edit_blkselect_18
edit_blkselect_19:
[00038556] 202a 0044                 move.l     68(a2),d0
[0003855a] b0aa 0040                 cmp.l      64(a2),d0
[0003855e] 6d10                      blt.s      edit_blkselect_20
[00038560] 7402                      moveq.l    #2,d2
[00038562] 222a 0038                 move.l     56(a2),d1
[00038566] 202a 0030                 move.l     48(a2),d0
[0003856a] 204a                      movea.l    a2,a0
[0003856c] 6100 f7e0                 bsr        edit_selrange
edit_blkselect_20:
[00038570] 2545 0040                 move.l     d5,64(a2)
[00038574] 2543 0044                 move.l     d3,68(a2)
edit_blkselect_18:
[00038578] 7402                      moveq.l    #2,d2
[0003857a] 222a 0038                 move.l     56(a2),d1
[0003857e] 202a 0030                 move.l     48(a2),d0
[00038582] 204a                      movea.l    a2,a0
[00038584] 6100 f7c8                 bsr        edit_selrange
edit_blkselect_17:
[00038588] 2545 0040                 move.l     d5,64(a2)
[0003858c] 2543 0044                 move.l     d3,68(a2)
edit_blkselect_15:
[00038590] b886                      cmp.l      d6,d4
[00038592] 6c54                      bge.s      edit_blkselect_21
[00038594] bcaa 0038                 cmp.l      56(a2),d6
[00038598] 6c12                      bge.s      edit_blkselect_22
[0003859a] 4242                      clr.w      d2
[0003859c] 222a 0038                 move.l     56(a2),d1
[000385a0] 7001                      moveq.l    #1,d0
[000385a2] d086                      add.l      d6,d0
[000385a4] 204a                      movea.l    a2,a0
[000385a6] 6100 f7a6                 bsr        edit_selrange
[000385aa] 6032                      bra.s      edit_blkselect_23
edit_blkselect_22:
[000385ac] b8aa 0038                 cmp.l      56(a2),d4
[000385b0] 6c10                      bge.s      edit_blkselect_24
[000385b2] 7401                      moveq.l    #1,d2
[000385b4] 2206                      move.l     d6,d1
[000385b6] 202a 0038                 move.l     56(a2),d0
[000385ba] 204a                      movea.l    a2,a0
[000385bc] 6100 f790                 bsr        edit_selrange
[000385c0] 601c                      bra.s      edit_blkselect_23
edit_blkselect_24:
[000385c2] 4242                      clr.w      d2
[000385c4] 72ff                      moveq.l    #-1,d1
[000385c6] d284                      add.l      d4,d1
[000385c8] 202a 0030                 move.l     48(a2),d0
[000385cc] 204a                      movea.l    a2,a0
[000385ce] 6100 f77e                 bsr        edit_selrange
[000385d2] 7401                      moveq.l    #1,d2
[000385d4] 2206                      move.l     d6,d1
[000385d6] 2004                      move.l     d4,d0
[000385d8] 204a                      movea.l    a2,a0
[000385da] 6100 f772                 bsr        edit_selrange
edit_blkselect_23:
[000385de] 2544 0030                 move.l     d4,48(a2)
[000385e2] 2546 0038                 move.l     d6,56(a2)
[000385e6] 6054                      bra.s      edit_blkselect_25
edit_blkselect_21:
[000385e8] bcaa 0030                 cmp.l      48(a2),d6
[000385ec] 6f12                      ble.s      edit_blkselect_26
[000385ee] 4242                      clr.w      d2
[000385f0] 72ff                      moveq.l    #-1,d1
[000385f2] d286                      add.l      d6,d1
[000385f4] 202a 0030                 move.l     48(a2),d0
[000385f8] 204a                      movea.l    a2,a0
[000385fa] 6100 f752                 bsr        edit_selrange
[000385fe] 6034                      bra.s      edit_blkselect_27
edit_blkselect_26:
[00038600] b8aa 0030                 cmp.l      48(a2),d4
[00038604] 6f10                      ble.s      edit_blkselect_28
[00038606] 7401                      moveq.l    #1,d2
[00038608] 222a 0030                 move.l     48(a2),d1
[0003860c] 2006                      move.l     d6,d0
[0003860e] 204a                      movea.l    a2,a0
[00038610] 6100 f73c                 bsr        edit_selrange
[00038614] 601e                      bra.s      edit_blkselect_27
edit_blkselect_28:
[00038616] 4242                      clr.w      d2
[00038618] 222a 0038                 move.l     56(a2),d1
[0003861c] 7001                      moveq.l    #1,d0
[0003861e] d084                      add.l      d4,d0
[00038620] 204a                      movea.l    a2,a0
[00038622] 6100 f72a                 bsr        edit_selrange
[00038626] 7401                      moveq.l    #1,d2
[00038628] 72ff                      moveq.l    #-1,d1
[0003862a] d284                      add.l      d4,d1
[0003862c] 2006                      move.l     d6,d0
[0003862e] 204a                      movea.l    a2,a0
[00038630] 6100 f71c                 bsr        edit_selrange
edit_blkselect_27:
[00038634] 2546 0030                 move.l     d6,48(a2)
[00038638] 2544 0038                 move.l     d4,56(a2)
edit_blkselect_25:
[0003863c] bcaa 0018                 cmp.l      24(a2),d6
[00038640] 6d1e                      blt.s      edit_blkselect_29
[00038642] 202a 0018                 move.l     24(a2),d0
[00038646] d0aa 000a                 add.l      10(a2),d0
[0003864a] bc80                      cmp.l      d0,d6
[0003864c] 6c12                      bge.s      edit_blkselect_29
[0003864e] baaa 001c                 cmp.l      28(a2),d5
[00038652] 6d0c                      blt.s      edit_blkselect_29
[00038654] 222a 001c                 move.l     28(a2),d1
[00038658] d2aa 000e                 add.l      14(a2),d1
[0003865c] ba81                      cmp.l      d1,d5
[0003865e] 6d20                      blt.s      edit_blkselect_7
edit_blkselect_29:
[00038660] 2006                      move.l     d6,d0
[00038662] 204a                      movea.l    a2,a0
[00038664] 6100 ee8a                 bsr        edit_showline
[00038668] 2005                      move.l     d5,d0
[0003866a] 204a                      movea.l    a2,a0
[0003866c] 6100 e350                 bsr        edit_showcol
[00038670] 204a                      movea.l    a2,a0
[00038672] 6100 f074                 bsr        edit_update
[00038676] 7001                      moveq.l    #1,d0
[00038678] 204a                      movea.l    a2,a0
[0003867a] 4eb9 0003 9cf8            jsr        cleanup
edit_blkselect_7:
[00038680] 2e06                      move.l     d6,d7
[00038682] 2f45 0004                 move.l     d5,4(a7)
[00038686] 2f39 000d 99d6            move.l     _globl,-(a7)
[0003868c] 486f 0006                 pea.l      6(a7)
[00038690] 486f 0008                 pea.l      8(a7)
[00038694] 224c                      movea.l    a4,a1
[00038696] 204b                      movea.l    a3,a0
[00038698] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0003869e] 4fef 000c                 lea.l      12(a7),a7
[000386a2] 7001                      moveq.l    #1,d0
[000386a4] c057                      and.w      (a7),d0
[000386a6] 6600 fdde                 bne        edit_blkselect_30
[000386aa] 222a 0030                 move.l     48(a2),d1
[000386ae] e789                      lsl.l      #3,d1
[000386b0] 206a 002c                 movea.l    44(a2),a0
[000386b4] 2a70 1800                 movea.l    0(a0,d1.l),a5
[000386b8] 322a 0042                 move.w     66(a2),d1
[000386bc] 302a 009a                 move.w     154(a2),d0
[000386c0] 204d                      movea.l    a5,a0
[000386c2] 6100 dba2                 bsr        posv
[000386c6] 48c0                      ext.l      d0
[000386c8] 2540 0034                 move.l     d0,52(a2)
[000386cc] 222a 0038                 move.l     56(a2),d1
[000386d0] e789                      lsl.l      #3,d1
[000386d2] 206a 002c                 movea.l    44(a2),a0
[000386d6] 2a70 1800                 movea.l    0(a0,d1.l),a5
[000386da] 322a 0046                 move.w     70(a2),d1
[000386de] 302a 009a                 move.w     154(a2),d0
[000386e2] 204d                      movea.l    a5,a0
[000386e4] 6100 db80                 bsr        posv
[000386e8] 48c0                      ext.l      d0
[000386ea] 2540 003c                 move.l     d0,60(a2)
[000386ee] 4fef 000c                 lea.l      12(a7),a7
[000386f2] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[000386f6] 4e75                      rts

edit_add:
[000386f8] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[000386fc] 2a48                      movea.l    a0,a5
[000386fe] 2649                      movea.l    a1,a3
[00038700] 222d 002c                 move.l     44(a5),d1
[00038704] 672e                      beq.s      edit_add_1
[00038706] 2400                      move.l     d0,d2
[00038708] e78a                      lsl.l      #3,d2
[0003870a] 2441                      movea.l    d1,a2
[0003870c] d5c2                      adda.l     d2,a2
[0003870e] 2049                      movea.l    a1,a0
[00038710] 4eb9 0007 69b0            jsr        strlen
[00038716] 2600                      move.l     d0,d3
[00038718] d66a 0004                 add.w      4(a2),d3
[0003871c] 7001                      moveq.l    #1,d0
[0003871e] d043                      add.w      d3,d0
[00038720] 48c0                      ext.l      d0
[00038722] 4eb9 0004 7cc8            jsr        Ax_malloc
[00038728] 2848                      movea.l    a0,a4
[0003872a] 200c                      move.l     a4,d0
[0003872c] 660a                      bne.s      edit_add_2
[0003872e] 006d 0001 009e            ori.w      #$0001,158(a5)
edit_add_1:
[00038734] 70ff                      moveq.l    #-1,d0
[00038736] 6038                      bra.s      edit_add_3
edit_add_2:
[00038738] 302a 0004                 move.w     4(a2),d0
[0003873c] 6720                      beq.s      edit_add_4
[0003873e] 2a52                      movea.l    (a2),a5
[00038740] 224d                      movea.l    a5,a1
[00038742] 204c                      movea.l    a4,a0
[00038744] 4eb9 0007 6950            jsr        strcpy
[0003874a] 224b                      movea.l    a3,a1
[0003874c] 4eb9 0007 6886            jsr        strcat
[00038752] 2488                      move.l     a0,(a2)
[00038754] 204d                      movea.l    a5,a0
[00038756] 4eb9 0004 7d6c            jsr        Ax_ifree
[0003875c] 600c                      bra.s      edit_add_5
edit_add_4:
[0003875e] 224b                      movea.l    a3,a1
[00038760] 204c                      movea.l    a4,a0
[00038762] 4eb9 0007 6950            jsr        strcpy
[00038768] 2488                      move.l     a0,(a2)
edit_add_5:
[0003876a] 3543 0004                 move.w     d3,4(a2)
[0003876e] 4240                      clr.w      d0
edit_add_3:
[00038770] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00038774] 4e75                      rts

edit_appline:
[00038776] 2f0a                      move.l     a2,-(a7)
[00038778] 2068 000c                 movea.l    12(a0),a0
[0003877c] 2468 000c                 movea.l    12(a0),a2
[00038780] 1011                      move.b     (a1),d0
[00038782] 6712                      beq.s      edit_appline_1
[00038784] 202a 0028                 move.l     40(a2),d0
[00038788] 204a                      movea.l    a2,a0
[0003878a] 6100 ff6c                 bsr        edit_add
[0003878e] 4a40                      tst.w      d0
[00038790] 6704                      beq.s      edit_appline_1
[00038792] 70ff                      moveq.l    #-1,d0
[00038794] 600c                      bra.s      edit_appline_2
edit_appline_1:
[00038796] 202a 0028                 move.l     40(a2),d0
[0003879a] 204a                      movea.l    a2,a0
[0003879c] 6100 ed52                 bsr        edit_showline
[000387a0] 4240                      clr.w      d0
edit_appline_2:
[000387a2] 245f                      movea.l    (a7)+,a2
[000387a4] 4e75                      rts

edit_free:
[000387a6] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[000387aa] 2448                      movea.l    a0,a2
[000387ac] 266a 002c                 movea.l    44(a2),a3
[000387b0] 262a 0028                 move.l     40(a2),d3
[000387b4] 6012                      bra.s      edit_free_1
edit_free_3:
[000387b6] 302b 0004                 move.w     4(a3),d0
[000387ba] 6f08                      ble.s      edit_free_2
[000387bc] 2053                      movea.l    (a3),a0
[000387be] 4eb9 0004 7d6c            jsr        Ax_ifree
edit_free_2:
[000387c4] 504b                      addq.w     #8,a3
[000387c6] 5383                      subq.l     #1,d3
edit_free_1:
[000387c8] 4a83                      tst.l      d3
[000387ca] 6aea                      bpl.s      edit_free_3
[000387cc] 206a 002c                 movea.l    44(a2),a0
[000387d0] 4eb9 0004 7d6c            jsr        Ax_ifree
[000387d6] 202a 0092                 move.l     146(a2),d0
[000387da] 206a 0096                 movea.l    150(a2),a0
[000387de] 6100 e234                 bsr        edit_freeundo
[000387e2] 42aa 0096                 clr.l      150(a2)
[000387e6] 42aa 0092                 clr.l      146(a2)
[000387ea] 7000                      moveq.l    #0,d0
[000387ec] 2540 0044                 move.l     d0,68(a2)
[000387f0] 2540 0040                 move.l     d0,64(a2)
[000387f4] 2540 003c                 move.l     d0,60(a2)
[000387f8] 2540 0034                 move.l     d0,52(a2)
[000387fc] 2540 0038                 move.l     d0,56(a2)
[00038800] 2540 0030                 move.l     d0,48(a2)
[00038804] 026a fdff 0012            andi.w     #$FDFF,18(a2)
[0003880a] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0003880e] 4e75                      rts

resize:
[00038810] 2f0a                      move.l     a2,-(a7)
[00038812] 2268 000c                 movea.l    12(a0),a1
[00038816] 2469 000c                 movea.l    12(a1),a2
[0003881a] 3028 0016                 move.w     22(a0),d0
[0003881e] 48c0                      ext.l      d0
[00038820] 81ea 0006                 divs.w     6(a2),d0
[00038824] 48c0                      ext.l      d0
[00038826] 2540 000a                 move.l     d0,10(a2)
[0003882a] 3228 0014                 move.w     20(a0),d1
[0003882e] 48c1                      ext.l      d1
[00038830] 83ea 0008                 divs.w     8(a2),d1
[00038834] 48c1                      ext.l      d1
[00038836] 2541 000e                 move.l     d1,14(a2)
[0003883a] 2001                      move.l     d1,d0
[0003883c] 322a 0008                 move.w     8(a2),d1
[00038840] 48c1                      ext.l      d1
[00038842] 4eb9 0007 76f0            jsr        _lmul
[00038848] 3540 004a                 move.w     d0,74(a2)
[0003884c] 202a 000a                 move.l     10(a2),d0
[00038850] 322a 0006                 move.w     6(a2),d1
[00038854] 48c1                      ext.l      d1
[00038856] 4eb9 0007 76f0            jsr        _lmul
[0003885c] 3540 0048                 move.w     d0,72(a2)
[00038860] 026a fffe 0012            andi.w     #$FFFE,18(a2)
[00038866] 006a 0008 0012            ori.w      #$0008,18(a2)
[0003886c] 202a 0020                 move.l     32(a2),d0
[00038870] 90aa 000e                 sub.l      14(a2),d0
[00038874] 4a80                      tst.l      d0
[00038876] 6a02                      bpl.s      resize_1
[00038878] 7000                      moveq.l    #0,d0
resize_1:
[0003887a] b0aa 001c                 cmp.l      28(a2),d0
[0003887e] 6c04                      bge.s      resize_2
[00038880] 2540 001c                 move.l     d0,28(a2)
resize_2:
[00038884] 7001                      moveq.l    #1,d0
[00038886] d0aa 0028                 add.l      40(a2),d0
[0003888a] 90aa 000a                 sub.l      10(a2),d0
[0003888e] 4a80                      tst.l      d0
[00038890] 6a02                      bpl.s      resize_3
[00038892] 7000                      moveq.l    #0,d0
resize_3:
[00038894] b0aa 0018                 cmp.l      24(a2),d0
[00038898] 6c04                      bge.s      resize_4
[0003889a] 2540 0018                 move.l     d0,24(a2)
resize_4:
[0003889e] 245f                      movea.l    (a7)+,a2
[000388a0] 4e75                      rts

edit_nextrange:
[000388a2] 2f0a                      move.l     a2,-(a7)
[000388a4] 2011                      move.l     (a1),d0
[000388a6] 6b50                      bmi.s      edit_nextrange_1
[000388a8] 7001                      moveq.l    #1,d0
[000388aa] d0a9 0008                 add.l      8(a1),d0
[000388ae] 6018                      bra.s      edit_nextrange_2
edit_nextrange_3:
[000388b0] 5280                      addq.l     #1,d0
[000388b2] b0a8 0028                 cmp.l      40(a0),d0
[000388b6] 6f10                      ble.s      edit_nextrange_2
[000388b8] 22bc ffff ffff            move.l     #$FFFFFFFF,(a1)
[000388be] 237c ffff ffff 0008       move.l     #$FFFFFFFF,8(a1)
[000388c6] 6030                      bra.s      edit_nextrange_1
edit_nextrange_2:
[000388c8] 7201                      moveq.l    #1,d1
[000388ca] 2400                      move.l     d0,d2
[000388cc] e78a                      lsl.l      #3,d2
[000388ce] 2468 002c                 movea.l    44(a0),a2
[000388d2] c272 2806                 and.w      6(a2,d2.l),d1
[000388d6] 67d8                      beq.s      edit_nextrange_3
[000388d8] 2280                      move.l     d0,(a1)
[000388da] 6002                      bra.s      edit_nextrange_4
edit_nextrange_6:
[000388dc] 5280                      addq.l     #1,d0
edit_nextrange_4:
[000388de] b0a8 0028                 cmp.l      40(a0),d0
[000388e2] 6c10                      bge.s      edit_nextrange_5
[000388e4] 7201                      moveq.l    #1,d1
[000388e6] 2400                      move.l     d0,d2
[000388e8] e78a                      lsl.l      #3,d2
[000388ea] 2468 002c                 movea.l    44(a0),a2
[000388ee] c272 280e                 and.w      14(a2,d2.l),d1
[000388f2] 66e8                      bne.s      edit_nextrange_6
edit_nextrange_5:
[000388f4] 2340 0008                 move.l     d0,8(a1)
edit_nextrange_1:
[000388f8] 245f                      movea.l    (a7)+,a2
[000388fa] 4e75                      rts

edit_getrow:
[000388fc] 48e7 0038                 movem.l    a2-a4,-(a7)
[00038900] 2648                      movea.l    a0,a3
[00038902] 2449                      movea.l    a1,a2
[00038904] 2011                      move.l     (a1),d0
[00038906] 4a80                      tst.l      d0
[00038908] 6b06                      bmi.s      edit_getrow_1
[0003890a] b0ab 0028                 cmp.l      40(a3),d0
[0003890e] 6f14                      ble.s      edit_getrow_2
edit_getrow_1:
[00038910] 257c 000c 2f4e 0008       move.l     #$000C2F4E,8(a2)
[00038918] 257c ffff ffff 0004       move.l     #$FFFFFFFF,4(a2)
[00038920] 6000 00bc                 bra        edit_getrow_3
edit_getrow_2:
[00038924] 2200                      move.l     d0,d1
[00038926] e789                      lsl.l      #3,d1
[00038928] 286b 002c                 movea.l    44(a3),a4
[0003892c] d9c1                      adda.l     d1,a4
[0003892e] 2054                      movea.l    (a4),a0
[00038930] 2408                      move.l     a0,d2
[00038932] 6610                      bne.s      edit_getrow_4
[00038934] 257c 000c 2f4e 0008       move.l     #$000C2F4E,8(a2)
[0003893c] 42aa 0004                 clr.l      4(a2)
[00038940] 6000 009c                 bra        edit_getrow_3
edit_getrow_4:
[00038944] 322b 0012                 move.w     18(a3),d1
[00038948] c27c 0200                 and.w      #$0200,d1
[0003894c] 6700 0082                 beq        edit_getrow_5
[00038950] 342b 0070                 move.w     112(a3),d2
[00038954] 6648                      bne.s      edit_getrow_6
[00038956] b0ab 0030                 cmp.l      48(a3),d0
[0003895a] 6630                      bne.s      edit_getrow_7
[0003895c] 222b 0034                 move.l     52(a3),d1
[00038960] 2054                      movea.l    (a4),a0
[00038962] d1c1                      adda.l     d1,a0
[00038964] 2548 0008                 move.l     a0,8(a2)
[00038968] b0ab 0038                 cmp.l      56(a3),d0
[0003896c] 660e                      bne.s      edit_getrow_8
[0003896e] 222b 003c                 move.l     60(a3),d1
[00038972] 92ab 0034                 sub.l      52(a3),d1
[00038976] 2541 0004                 move.l     d1,4(a2)
[0003897a] 6062                      bra.s      edit_getrow_3
edit_getrow_8:
[0003897c] 322c 0004                 move.w     4(a4),d1
[00038980] 48c1                      ext.l      d1
[00038982] 92ab 0034                 sub.l      52(a3),d1
[00038986] 2541 0004                 move.l     d1,4(a2)
[0003898a] 6052                      bra.s      edit_getrow_3
edit_getrow_7:
[0003898c] b0ab 0038                 cmp.l      56(a3),d0
[00038990] 663e                      bne.s      edit_getrow_5
[00038992] 2554 0008                 move.l     (a4),8(a2)
[00038996] 256b 003c 0004            move.l     60(a3),4(a2)
[0003899c] 6040                      bra.s      edit_getrow_3
edit_getrow_6:
[0003899e] 0c6b 0005 0070            cmpi.w     #$0005,112(a3)
[000389a4] 662a                      bne.s      edit_getrow_5
[000389a6] 202b 0044                 move.l     68(a3),d0
[000389aa] 90ab 0040                 sub.l      64(a3),d0
[000389ae] 2540 0004                 move.l     d0,4(a2)
[000389b2] 222b 0040                 move.l     64(a3),d1
[000389b6] 2f01                      move.l     d1,-(a7)
[000389b8] 322b 0046                 move.w     70(a3),d1
[000389bc] 302b 009a                 move.w     154(a3),d0
[000389c0] 2054                      movea.l    (a4),a0
[000389c2] 6100 d836                 bsr        untab
[000389c6] 201f                      move.l     (a7)+,d0
[000389c8] d1c0                      adda.l     d0,a0
[000389ca] 2548 0008                 move.l     a0,8(a2)
[000389ce] 600e                      bra.s      edit_getrow_3
edit_getrow_5:
[000389d0] 2554 0008                 move.l     (a4),8(a2)
[000389d4] 302c 0004                 move.w     4(a4),d0
[000389d8] 48c0                      ext.l      d0
[000389da] 2540 0004                 move.l     d0,4(a2)
edit_getrow_3:
[000389de] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000389e2] 4e75                      rts

edit_unselect:
[000389e4] 2f0a                      move.l     a2,-(a7)
[000389e6] 2448                      movea.l    a0,a2
[000389e8] 0c6a 0004 0070            cmpi.w     #$0004,112(a2)
[000389ee] 660e                      bne.s      edit_unselect_1
[000389f0] 4242                      clr.w      d2
[000389f2] 222a 0028                 move.l     40(a2),d1
[000389f6] 7000                      moveq.l    #0,d0
[000389f8] 6100 f354                 bsr        edit_selrange
[000389fc] 6010                      bra.s      edit_unselect_2
edit_unselect_1:
[000389fe] 4242                      clr.w      d2
[00038a00] 222a 0038                 move.l     56(a2),d1
[00038a04] 202a 0030                 move.l     48(a2),d0
[00038a08] 204a                      movea.l    a2,a0
[00038a0a] 6100 f342                 bsr        edit_selrange
edit_unselect_2:
[00038a0e] 302a 0012                 move.w     18(a2),d0
[00038a12] c07c 0200                 and.w      #$0200,d0
[00038a16] 6716                      beq.s      edit_unselect_3
[00038a18] 026a fdff 0012            andi.w     #$FDFF,18(a2)
[00038a1e] 303c 0080                 move.w     #$0080,d0
[00038a22] c06a 0012                 and.w      18(a2),d0
[00038a26] 6706                      beq.s      edit_unselect_3
[00038a28] 204a                      movea.l    a2,a0
[00038a2a] 6100 ec8e                 bsr        change_cur
edit_unselect_3:
[00038a2e] 245f                      movea.l    (a7)+,a2
[00038a30] 4e75                      rts

edit_setselect:
[00038a32] 2f0a                      move.l     a2,-(a7)
[00038a34] 2f0b                      move.l     a3,-(a7)
[00038a36] 2448                      movea.l    a0,a2
[00038a38] 2649                      movea.l    a1,a3
[00038a3a] 302a 0012                 move.w     18(a2),d0
[00038a3e] c07c 0200                 and.w      #$0200,d0
[00038a42] 673e                      beq.s      edit_setselect_1
[00038a44] 0c6a 0004 0070            cmpi.w     #$0004,112(a2)
[00038a4a] 6736                      beq.s      edit_setselect_1
[00038a4c] 222a 0030                 move.l     48(a2),d1
[00038a50] b291                      cmp.l      (a1),d1
[00038a52] 661e                      bne.s      edit_setselect_2
[00038a54] 242a 0034                 move.l     52(a2),d2
[00038a58] b4ab 0004                 cmp.l      4(a3),d2
[00038a5c] 6614                      bne.s      edit_setselect_2
[00038a5e] 202a 0038                 move.l     56(a2),d0
[00038a62] b0ab 0008                 cmp.l      8(a3),d0
[00038a66] 660a                      bne.s      edit_setselect_2
[00038a68] 222a 003c                 move.l     60(a2),d1
[00038a6c] b2ab 000c                 cmp.l      12(a3),d1
[00038a70] 677c                      beq.s      edit_setselect_3
edit_setselect_2:
[00038a72] 4242                      clr.w      d2
[00038a74] 222a 0038                 move.l     56(a2),d1
[00038a78] 202a 0030                 move.l     48(a2),d0
[00038a7c] 204a                      movea.l    a2,a0
[00038a7e] 6100 f2ce                 bsr        edit_selrange
edit_setselect_1:
[00038a82] 2553 0030                 move.l     (a3),48(a2)
[00038a86] 256b 0004 0034            move.l     4(a3),52(a2)
[00038a8c] 322a 0036                 move.w     54(a2),d1
[00038a90] 302a 009a                 move.w     154(a2),d0
[00038a94] 242a 0030                 move.l     48(a2),d2
[00038a98] e78a                      lsl.l      #3,d2
[00038a9a] 206a 002c                 movea.l    44(a2),a0
[00038a9e] 2070 2800                 movea.l    0(a0,d2.l),a0
[00038aa2] 6100 d7fe                 bsr        vpos
[00038aa6] 48c0                      ext.l      d0
[00038aa8] 2540 0040                 move.l     d0,64(a2)
[00038aac] 256b 0008 0038            move.l     8(a3),56(a2)
[00038ab2] 256b 000c 003c            move.l     12(a3),60(a2)
[00038ab8] 322a 003e                 move.w     62(a2),d1
[00038abc] 302a 009a                 move.w     154(a2),d0
[00038ac0] 242a 0038                 move.l     56(a2),d2
[00038ac4] e78a                      lsl.l      #3,d2
[00038ac6] 206a 002c                 movea.l    44(a2),a0
[00038aca] 2070 2800                 movea.l    0(a0,d2.l),a0
[00038ace] 6100 d7d2                 bsr        vpos
[00038ad2] 48c0                      ext.l      d0
[00038ad4] 2540 0044                 move.l     d0,68(a2)
[00038ad8] 006a 0200 0012            ori.w      #$0200,18(a2)
[00038ade] 7401                      moveq.l    #1,d2
[00038ae0] 222a 0038                 move.l     56(a2),d1
[00038ae4] 202a 0030                 move.l     48(a2),d0
[00038ae8] 204a                      movea.l    a2,a0
[00038aea] 6100 f262                 bsr        edit_selrange
edit_setselect_3:
[00038aee] 265f                      movea.l    (a7)+,a3
[00038af0] 245f                      movea.l    (a7)+,a2
[00038af2] 4e75                      rts

edit_find:
[00038af4] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[00038af8] 4fef ffdc                 lea.l      -36(a7),a7
[00038afc] 2648                      movea.l    a0,a3
[00038afe] 2449                      movea.l    a1,a2
[00038b00] 1011                      move.b     (a1),d0
[00038b02] 6700 027c                 beq        edit_find_1
[00038b06] 206b 0058                 movea.l    88(a3),a0
[00038b0a] 2f68 000c 0020            move.l     12(a0),32(a7)
[00038b10] 43f9 000c 2f4e            lea.l      $000C2F4E,a1
[00038b16] 286f 0020                 movea.l    32(a7),a4
[00038b1a] 286c 0008                 movea.l    8(a4),a4
[00038b1e] 303c 0104                 move.w     #$0104,d0
[00038b22] 4e94                      jsr        (a4)
[00038b24] 302b 0012                 move.w     18(a3),d0
[00038b28] c07c 0400                 and.w      #$0400,d0
[00038b2c] 6604                      bne.s      edit_find_2
[00038b2e] 7201                      moveq.l    #1,d1
[00038b30] 6002                      bra.s      edit_find_3
edit_find_2:
[00038b32] 4241                      clr.w      d1
edit_find_3:
[00038b34] 3f41 0002                 move.w     d1,2(a7)
[00038b38] 302b 0012                 move.w     18(a3),d0
[00038b3c] c07c 0800                 and.w      #$0800,d0
[00038b40] 6604                      bne.s      edit_find_4
[00038b42] 7401                      moveq.l    #1,d2
[00038b44] 6002                      bra.s      edit_find_5
edit_find_4:
[00038b46] 4242                      clr.w      d2
edit_find_5:
[00038b48] 3e82                      move.w     d2,(a7)
[00038b4a] 1a12                      move.b     (a2),d5
[00038b4c] 1c05                      move.b     d5,d6
[00038b4e] 4a42                      tst.w      d2
[00038b50] 6622                      bne.s      edit_find_6
[00038b52] ba3c 0061                 cmp.b      #$61,d5
[00038b56] 6d0c                      blt.s      edit_find_7
[00038b58] ba3c 007a                 cmp.b      #$7A,d5
[00038b5c] 6e06                      bgt.s      edit_find_7
[00038b5e] dc3c ffe0                 add.b      #$E0,d6
[00038b62] 6010                      bra.s      edit_find_6
edit_find_7:
[00038b64] ba3c 0041                 cmp.b      #$41,d5
[00038b68] 6d0a                      blt.s      edit_find_6
[00038b6a] ba3c 005a                 cmp.b      #$5A,d5
[00038b6e] 6e04                      bgt.s      edit_find_6
[00038b70] dc3c 0020                 add.b      #$20,d6
edit_find_6:
[00038b74] 204a                      movea.l    a2,a0
[00038b76] 4eb9 0007 69b0            jsr        strlen
[00038b7c] 2e00                      move.l     d0,d7
[00038b7e] 262b 0030                 move.l     48(a3),d3
[00038b82] 2f6b 0034 0008            move.l     52(a3),8(a7)
[00038b88] 4bef 000c                 lea.l      12(a7),a5
[00038b8c] 302b 0012                 move.w     18(a3),d0
[00038b90] c07c 1000                 and.w      #$1000,d0
[00038b94] 6700 00d6                 beq        edit_find_8
[00038b98] 6000 00c8                 bra        edit_find_9
edit_find_21:
[00038b9c] 2003                      move.l     d3,d0
[00038b9e] e788                      lsl.l      #3,d0
[00038ba0] 206b 002c                 movea.l    44(a3),a0
[00038ba4] d1c0                      adda.l     d0,a0
[00038ba6] 2f48 001c                 move.l     a0,28(a7)
[00038baa] 3228 0004                 move.w     4(a0),d1
[00038bae] 6f00 00a8                 ble        edit_find_10
[00038bb2] 242f 0008                 move.l     8(a7),d2
[00038bb6] 6b06                      bmi.s      edit_find_11
[00038bb8] 78ff                      moveq.l    #-1,d4
[00038bba] d882                      add.l      d2,d4
[00038bbc] 600c                      bra.s      edit_find_12
edit_find_11:
[00038bbe] 206f 001c                 movea.l    28(a7),a0
[00038bc2] 3828 0004                 move.w     4(a0),d4
[00038bc6] 48c4                      ext.l      d4
[00038bc8] 9887                      sub.l      d7,d4
edit_find_12:
[00038bca] 206f 001c                 movea.l    28(a7),a0
[00038bce] 2850                      movea.l    (a0),a4
[00038bd0] d9c4                      adda.l     d4,a4
[00038bd2] 6000 007e                 bra.w      edit_find_13
edit_find_20:
[00038bd6] ba14                      cmp.b      (a4),d5
[00038bd8] 6704                      beq.s      edit_find_14
[00038bda] bc14                      cmp.b      (a4),d6
[00038bdc] 6670                      bne.s      edit_find_15
edit_find_14:
[00038bde] 3017                      move.w     (a7),d0
[00038be0] 6710                      beq.s      edit_find_16
[00038be2] 224c                      movea.l    a4,a1
[00038be4] 204a                      movea.l    a2,a0
[00038be6] 2007                      move.l     d7,d0
[00038be8] 4eb9 0007 69fc            jsr        strncmp
[00038bee] 4a40                      tst.w      d0
[00038bf0] 6710                      beq.s      edit_find_17
edit_find_16:
[00038bf2] 2007                      move.l     d7,d0
[00038bf4] 224c                      movea.l    a4,a1
[00038bf6] 204a                      movea.l    a2,a0
[00038bf8] 4eb9 0007 6caa            jsr        strnicmp
[00038bfe] 4a40                      tst.w      d0
[00038c00] 664c                      bne.s      edit_find_15
edit_find_17:
[00038c02] 302f 0002                 move.w     2(a7),d0
[00038c06] 6600 010a                 bne        edit_find_18
[00038c0a] 4a84                      tst.l      d4
[00038c0c] 6616                      bne.s      edit_find_19
[00038c0e] 1034 7800                 move.b     0(a4,d7.l),d0
[00038c12] 4880                      ext.w      d0
[00038c14] 41eb 00a0                 lea.l      160(a3),a0
[00038c18] 4eb9 0007 68ce            jsr        strchr
[00038c1e] 2008                      move.l     a0,d0
[00038c20] 6600 00f0                 bne        edit_find_18
edit_find_19:
[00038c24] 102c ffff                 move.b     -1(a4),d0
[00038c28] 4880                      ext.w      d0
[00038c2a] 41eb 00a0                 lea.l      160(a3),a0
[00038c2e] 4eb9 0007 68ce            jsr        strchr
[00038c34] 2008                      move.l     a0,d0
[00038c36] 6716                      beq.s      edit_find_15
[00038c38] 1034 7800                 move.b     0(a4,d7.l),d0
[00038c3c] 4880                      ext.w      d0
[00038c3e] 41eb 00a0                 lea.l      160(a3),a0
[00038c42] 4eb9 0007 68ce            jsr        strchr
[00038c48] 2008                      move.l     a0,d0
[00038c4a] 6600 00c6                 bne        edit_find_18
edit_find_15:
[00038c4e] 534c                      subq.w     #1,a4
[00038c50] 5384                      subq.l     #1,d4
edit_find_13:
[00038c52] 4a84                      tst.l      d4
[00038c54] 6a00 ff80                 bpl.w      edit_find_20
edit_find_10:
[00038c58] 2f7c ffff ffff 0008       move.l     #$FFFFFFFF,8(a7)
[00038c60] 5383                      subq.l     #1,d3
edit_find_9:
[00038c62] 4a83                      tst.l      d3
[00038c64] 6a00 ff36                 bpl        edit_find_21
[00038c68] 6000 00dc                 bra        edit_find_22
edit_find_8:
[00038c6c] 2f6b 0028 0004            move.l     40(a3),4(a7)
[00038c72] 52af 0008                 addq.l     #1,8(a7)
[00038c76] 6000 00c6                 bra        edit_find_23
edit_find_32:
[00038c7a] 2003                      move.l     d3,d0
[00038c7c] e788                      lsl.l      #3,d0
[00038c7e] 206b 002c                 movea.l    44(a3),a0
[00038c82] d1c0                      adda.l     d0,a0
[00038c84] 2f48 001c                 move.l     a0,28(a7)
[00038c88] 3228 0004                 move.w     4(a0),d1
[00038c8c] 6f00 00aa                 ble        edit_find_24
[00038c90] 242f 0008                 move.l     8(a7),d2
[00038c94] 2850                      movea.l    (a0),a4
[00038c96] d9c2                      adda.l     d2,a4
[00038c98] 2802                      move.l     d2,d4
[00038c9a] 6000 0096                 bra        edit_find_25
edit_find_31:
[00038c9e] ba14                      cmp.b      (a4),d5
[00038ca0] 6706                      beq.s      edit_find_26
[00038ca2] bc14                      cmp.b      (a4),d6
[00038ca4] 6600 0088                 bne        edit_find_27
edit_find_26:
[00038ca8] 3017                      move.w     (a7),d0
[00038caa] 6710                      beq.s      edit_find_28
[00038cac] 224c                      movea.l    a4,a1
[00038cae] 204a                      movea.l    a2,a0
[00038cb0] 2007                      move.l     d7,d0
[00038cb2] 4eb9 0007 69fc            jsr        strncmp
[00038cb8] 4a40                      tst.w      d0
[00038cba] 6710                      beq.s      edit_find_29
edit_find_28:
[00038cbc] 2007                      move.l     d7,d0
[00038cbe] 224c                      movea.l    a4,a1
[00038cc0] 204a                      movea.l    a2,a0
[00038cc2] 4eb9 0007 6caa            jsr        strnicmp
[00038cc8] 4a40                      tst.w      d0
[00038cca] 6662                      bne.s      edit_find_27
edit_find_29:
[00038ccc] 302f 0002                 move.w     2(a7),d0
[00038cd0] 6640                      bne.s      edit_find_18
[00038cd2] 4a84                      tst.l      d4
[00038cd4] 6614                      bne.s      edit_find_30
[00038cd6] 1034 7800                 move.b     0(a4,d7.l),d0
[00038cda] 4880                      ext.w      d0
[00038cdc] 41eb 00a0                 lea.l      160(a3),a0
[00038ce0] 4eb9 0007 68ce            jsr        strchr
[00038ce6] 2008                      move.l     a0,d0
[00038ce8] 6628                      bne.s      edit_find_18
edit_find_30:
[00038cea] 102c ffff                 move.b     -1(a4),d0
[00038cee] 4880                      ext.w      d0
[00038cf0] 41eb 00a0                 lea.l      160(a3),a0
[00038cf4] 4eb9 0007 68ce            jsr        strchr
[00038cfa] 2008                      move.l     a0,d0
[00038cfc] 6730                      beq.s      edit_find_27
[00038cfe] 1034 7800                 move.b     0(a4,d7.l),d0
[00038d02] 4880                      ext.w      d0
[00038d04] 41eb 00a0                 lea.l      160(a3),a0
[00038d08] 4eb9 0007 68ce            jsr        strchr
[00038d0e] 2008                      move.l     a0,d0
[00038d10] 671c                      beq.s      edit_find_27
edit_find_18:
[00038d12] 2a83                      move.l     d3,(a5)
[00038d14] 2b43 0008                 move.l     d3,8(a5)
[00038d18] 2b44 0004                 move.l     d4,4(a5)
[00038d1c] 2004                      move.l     d4,d0
[00038d1e] d087                      add.l      d7,d0
[00038d20] 2b40 000c                 move.l     d0,12(a5)
[00038d24] 224d                      movea.l    a5,a1
[00038d26] 204b                      movea.l    a3,a0
[00038d28] 6100 fd08                 bsr        edit_setselect
[00038d2c] 6052                      bra.s      edit_find_1
edit_find_27:
[00038d2e] 524c                      addq.w     #1,a4
[00038d30] 5284                      addq.l     #1,d4
edit_find_25:
[00038d32] 1014                      move.b     (a4),d0
[00038d34] 6600 ff68                 bne        edit_find_31
edit_find_24:
[00038d38] 42af 0008                 clr.l      8(a7)
[00038d3c] 5283                      addq.l     #1,d3
edit_find_23:
[00038d3e] b6af 0004                 cmp.l      4(a7),d3
[00038d42] 6f00 ff36                 ble        edit_find_32
edit_find_22:
[00038d46] 7004                      moveq.l    #4,d0
[00038d48] 2079 0010 1f12            movea.l    ACSblk,a0
[00038d4e] 2268 023c                 movea.l    572(a0),a1
[00038d52] c069 000e                 and.w      14(a1),d0
[00038d56] 670a                      beq.s      edit_find_33
[00038d58] 7207                      moveq.l    #7,d1
[00038d5a] 7002                      moveq.l    #2,d0
[00038d5c] 4eb9 0007 284a            jsr        Bconout
edit_find_33:
[00038d62] 43f9 000c 2f4f            lea.l      $000C2F4F,a1
[00038d68] 303c 0104                 move.w     #$0104,d0
[00038d6c] 206b 0058                 movea.l    88(a3),a0
[00038d70] 246f 0020                 movea.l    32(a7),a2
[00038d74] 246a 0008                 movea.l    8(a2),a2
[00038d78] 4e92                      jsr        (a2)
[00038d7a] 0a6b 1000 0012            eori.w     #$1000,18(a3)
edit_find_1:
[00038d80] 4fef 0024                 lea.l      36(a7),a7
[00038d84] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00038d88] 4e75                      rts

edit_getneed:
[00038d8a] 2f0a                      move.l     a2,-(a7)
[00038d8c] 2468 002c                 movea.l    44(a0),a2
[00038d90] 2028 0028                 move.l     40(a0),d0
[00038d94] 72fe                      moveq.l    #-2,d1
[00038d96] 600c                      bra.s      edit_getneed_1
edit_getneed_2:
[00038d98] 7402                      moveq.l    #2,d2
[00038d9a] d46a 0004                 add.w      4(a2),d2
[00038d9e] 48c2                      ext.l      d2
[00038da0] d282                      add.l      d2,d1
[00038da2] 504a                      addq.w     #8,a2
edit_getneed_1:
[00038da4] 2400                      move.l     d0,d2
[00038da6] 5380                      subq.l     #1,d0
[00038da8] 4a82                      tst.l      d2
[00038daa] 6aec                      bpl.s      edit_getneed_2
[00038dac] 2281                      move.l     d1,(a1)
[00038dae] 245f                      movea.l    (a7)+,a2
[00038db0] 4e75                      rts

edit_selectword:
[00038db2] 48e7 1e30                 movem.l    d3-d6/a2-a3,-(a7)
[00038db6] 4fef fff0                 lea.l      -16(a7),a7
[00038dba] 2448                      movea.l    a0,a2
[00038dbc] 2600                      move.l     d0,d3
[00038dbe] e788                      lsl.l      #3,d0
[00038dc0] 206a 002c                 movea.l    44(a2),a0
[00038dc4] d1c0                      adda.l     d0,a0
[00038dc6] 3828 0004                 move.w     4(a0),d4
[00038dca] 2650                      movea.l    (a0),a3
[00038dcc] 3a01                      move.w     d1,d5
[00038dce] 3c05                      move.w     d5,d6
[00038dd0] 6002                      bra.s      edit_selectword_1
edit_selectword_3:
[00038dd2] 5346                      subq.w     #1,d6
edit_selectword_1:
[00038dd4] 4a46                      tst.w      d6
[00038dd6] 6f18                      ble.s      edit_selectword_2
[00038dd8] 1033 60ff                 move.b     -1(a3,d6.w),d0
[00038ddc] 4880                      ext.w      d0
[00038dde] 41ea 00a0                 lea.l      160(a2),a0
[00038de2] 4eb9 0007 68ce            jsr        strchr
[00038de8] 2008                      move.l     a0,d0
[00038dea] 67e6                      beq.s      edit_selectword_3
[00038dec] 6002                      bra.s      edit_selectword_2
edit_selectword_5:
[00038dee] 5245                      addq.w     #1,d5
edit_selectword_2:
[00038df0] b845                      cmp.w      d5,d4
[00038df2] 6f14                      ble.s      edit_selectword_4
[00038df4] 1033 5000                 move.b     0(a3,d5.w),d0
[00038df8] 4880                      ext.w      d0
[00038dfa] 41ea 00a0                 lea.l      160(a2),a0
[00038dfe] 4eb9 0007 68ce            jsr        strchr
[00038e04] 2008                      move.l     a0,d0
[00038e06] 67e6                      beq.s      edit_selectword_5
edit_selectword_4:
[00038e08] ba46                      cmp.w      d6,d5
[00038e0a] 6f20                      ble.s      edit_selectword_6
[00038e0c] 2f43 0008                 move.l     d3,8(a7)
[00038e10] 2e83                      move.l     d3,(a7)
[00038e12] 3006                      move.w     d6,d0
[00038e14] 48c0                      ext.l      d0
[00038e16] 2f40 0004                 move.l     d0,4(a7)
[00038e1a] 3205                      move.w     d5,d1
[00038e1c] 48c1                      ext.l      d1
[00038e1e] 2f41 000c                 move.l     d1,12(a7)
[00038e22] 43d7                      lea.l      (a7),a1
[00038e24] 204a                      movea.l    a2,a0
[00038e26] 6100 fc0a                 bsr        edit_setselect
[00038e2a] 601c                      bra.s      edit_selectword_7
edit_selectword_6:
[00038e2c] 7004                      moveq.l    #4,d0
[00038e2e] 2079 0010 1f12            movea.l    ACSblk,a0
[00038e34] 2268 023c                 movea.l    572(a0),a1
[00038e38] c069 000e                 and.w      14(a1),d0
[00038e3c] 670a                      beq.s      edit_selectword_7
[00038e3e] 7207                      moveq.l    #7,d1
[00038e40] 7002                      moveq.l    #2,d0
[00038e42] 4eb9 0007 284a            jsr        Bconout
edit_selectword_7:
[00038e48] 4fef 0010                 lea.l      16(a7),a7
[00038e4c] 4cdf 0c78                 movem.l    (a7)+,d3-d6/a2-a3
[00038e50] 4e75                      rts

Auo_editor:
[00038e52] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00038e56] 4fef ffe2                 lea.l      -30(a7),a7
[00038e5a] 2f48 001a                 move.l     a0,26(a7)
[00038e5e] 2849                      movea.l    a1,a4
[00038e60] 2068 000c                 movea.l    12(a0),a0
[00038e64] 2668 000c                 movea.l    12(a0),a3
[00038e68] 3200                      move.w     d0,d1
[00038e6a] b27c 0107                 cmp.w      #$0107,d1
[00038e6e] 6200 08a6                 bhi        Auo_editor_1
[00038e72] d241                      add.w      d1,d1
[00038e74] 323b 1006                 move.w     $00038E7C(pc,d1.w),d1
[00038e78] 4efb 1002                 jmp        $00038E7C(pc,d1.w)
J26:
[00038e7c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038e7e] 057e                      dc.w $057e   ; Auo_editor_2-J26
[00038e80] 0596                      dc.w $0596   ; Auo_editor_3-J26
[00038e82] 05e4                      dc.w $05e4   ; Auo_editor_4-J26
[00038e84] 05a8                      dc.w $05a8   ; Auo_editor_5-J26
[00038e86] 06b4                      dc.w $06b4   ; Auo_editor_6-J26
[00038e88] 06ae                      dc.w $06ae   ; Auo_editor_7-J26
[00038e8a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038e8c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038e8e] 04b0                      dc.w $04b0   ; Auo_editor_8-J26
[00038e90] 06c8                      dc.w $06c8   ; Auo_editor_9-J26
[00038e92] 06ce                      dc.w $06ce   ; Auo_editor_10-J26
[00038e94] 06d4                      dc.w $06d4   ; Auo_editor_11-J26
[00038e96] 06de                      dc.w $06de   ; Auo_editor_12-J26
[00038e98] 06ee                      dc.w $06ee   ; Auo_editor_13-J26
[00038e9a] 06f6                      dc.w $06f6   ; Auo_editor_14-J26
[00038e9c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038e9e] 0700                      dc.w $0700   ; Auo_editor_15-J26
[00038ea0] 04c6                      dc.w $04c6   ; Auo_editor_16-J26
[00038ea2] 089e                      dc.w $089e   ; Auo_editor_17-J26
[00038ea4] 089e                      dc.w $089e   ; Auo_editor_17-J26
[00038ea6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ea8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eaa] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eac] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eae] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eb0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eb2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eb4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eb6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eb8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eba] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ebc] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ebe] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ec0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ec2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ec4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ec6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ec8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eca] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ecc] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ece] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ed0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ed2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ed4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ed6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ed8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eda] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038edc] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ede] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ee0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ee2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ee4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ee6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ee8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eea] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eec] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038eee] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ef0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ef2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ef4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ef6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ef8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038efa] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038efc] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038efe] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f00] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f02] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f04] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f06] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f08] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f0a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f0c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f0e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f10] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f12] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f14] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f16] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f18] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f1a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f1c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f1e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f20] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f22] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f24] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f26] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f28] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f2a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f2c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f2e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f30] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f32] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f34] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f36] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f38] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f3a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f3c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f3e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f40] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f42] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f44] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f46] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f48] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f4a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f4c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f4e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f50] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f52] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f54] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f56] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f58] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f5a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f5c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f5e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f60] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f62] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f64] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f66] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f68] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f6a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f6c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f6e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f70] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f72] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f74] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f76] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f78] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f7a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f7c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f7e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f80] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f82] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f84] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f86] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f88] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f8a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f8c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f8e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f90] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f92] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f94] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f96] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f98] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f9a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f9c] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038f9e] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fa0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fa2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fa4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fa6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fa8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038faa] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fac] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fae] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fb0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fb2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fb4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fb6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fb8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fba] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fbc] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fbe] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fc0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fc2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fc4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fc6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fc8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fca] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fcc] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fce] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fd0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fd2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fd4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fd6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fd8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fda] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fdc] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fde] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fe0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fe2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fe4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fe6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fe8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fea] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fec] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038fee] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ff0] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ff2] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ff4] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ff6] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ff8] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ffa] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ffc] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00038ffe] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00039000] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00039002] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00039004] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00039006] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00039008] 089a                      dc.w $089a   ; Auo_editor_1-J26
[0003900a] 089a                      dc.w $089a   ; Auo_editor_1-J26
[0003900c] 078c                      dc.w $078c   ; Auo_editor_18-J26
[0003900e] 07e4                      dc.w $07e4   ; Auo_editor_19-J26
[00039010] 02f6                      dc.w $02f6   ; Auo_editor_20-J26
[00039012] 0780                      dc.w $0780   ; Auo_editor_21-J26
[00039014] 0676                      dc.w $0676   ; Auo_editor_22-J26
[00039016] 0684                      dc.w $0684   ; Auo_editor_23-J26
[00039018] 069c                      dc.w $069c   ; Auo_editor_24-J26
[0003901a] 060a                      dc.w $060a   ; Auo_editor_25-J26
[0003901c] 0622                      dc.w $0622   ; Auo_editor_26-J26
[0003901e] 064e                      dc.w $064e   ; Auo_editor_27-J26
[00039020] 0654                      dc.w $0654   ; Auo_editor_28-J26
[00039022] 04e6                      dc.w $04e6   ; Auo_editor_29-J26
[00039024] 04f6                      dc.w $04f6   ; Auo_editor_30-J26
[00039026] 0500                      dc.w $0500   ; Auo_editor_31-J26
[00039028] 051e                      dc.w $051e   ; Auo_editor_32-J26
[0003902a] 0544                      dc.w $0544   ; Auo_editor_33-J26
[0003902c] 0576                      dc.w $0576   ; Auo_editor_34-J26
[0003902e] 071c                      dc.w $071c   ; Auo_editor_35-J26
[00039030] 074a                      dc.w $074a   ; Auo_editor_36-J26
[00039032] 04dc                      dc.w $04dc   ; Auo_editor_37-J26
[00039034] 0476                      dc.w $0476   ; Auo_editor_38-J26
[00039036] 0480                      dc.w $0480   ; Auo_editor_39-J26
[00039038] 048a                      dc.w $048a   ; Auo_editor_40-J26
[0003903a] 0494                      dc.w $0494   ; Auo_editor_41-J26
[0003903c] 049e                      dc.w $049e   ; Auo_editor_42-J26
[0003903e] 04a6                      dc.w $04a6   ; Auo_editor_43-J26
[00039040] 03c0                      dc.w $03c0   ; Auo_editor_44-J26
[00039042] 03ca                      dc.w $03ca   ; Auo_editor_45-J26
[00039044] 040c                      dc.w $040c   ; Auo_editor_46-J26
[00039046] 0418                      dc.w $0418   ; Auo_editor_47-J26
[00039048] 0426                      dc.w $0426   ; Auo_editor_48-J26
[0003904a] 0398                      dc.w $0398   ; Auo_editor_49-J26
[0003904c] 036a                      dc.w $036a   ; Auo_editor_50-J26
[0003904e] 035e                      dc.w $035e   ; Auo_editor_51-J26
[00039050] 0352                      dc.w $0352   ; Auo_editor_52-J26
[00039052] 02ec                      dc.w $02ec   ; Auo_editor_53-J26
[00039054] 030a                      dc.w $030a   ; Auo_editor_54-J26
[00039056] 02d4                      dc.w $02d4   ; Auo_editor_55-J26
[00039058] 02b8                      dc.w $02b8   ; Auo_editor_56-J26
[0003905a] 06be                      dc.w $06be   ; Auo_editor_57-J26
[0003905c] 0302                      dc.w $0302   ; Auo_editor_58-J26
[0003905e] 02a8                      dc.w $02a8   ; Auo_editor_59-J26
[00039060] 0260                      dc.w $0260   ; Auo_editor_60-J26
[00039062] 0280                      dc.w $0280   ; Auo_editor_61-J26
[00039064] 028a                      dc.w $028a   ; Auo_editor_62-J26
[00039066] 029e                      dc.w $029e   ; Auo_editor_63-J26
[00039068] 0294                      dc.w $0294   ; Auo_editor_64-J26
[0003906a] 026c                      dc.w $026c   ; Auo_editor_65-J26
[0003906c] 0276                      dc.w $0276   ; Auo_editor_66-J26
[0003906e] 0246                      dc.w $0246   ; Auo_editor_67-J26
[00039070] 0250                      dc.w $0250   ; Auo_editor_68-J26
[00039072] 023a                      dc.w $023a   ; Auo_editor_69-J26
[00039074] 0228                      dc.w $0228   ; Auo_editor_70-J26
[00039076] 0870                      dc.w $0870   ; Auo_editor_71-J26
[00039078] 0220                      dc.w $0220   ; Auo_editor_72-J26
[0003907a] 0380                      dc.w $0380   ; Auo_editor_73-J26
[0003907c] 0742                      dc.w $0742   ; Auo_editor_74-J26
[0003907e] 0778                      dc.w $0778   ; Auo_editor_75-J26
[00039080] 0210                      dc.w $0210   ; Auo_editor_76-J26
[00039082] 0218                      dc.w $0218   ; Auo_editor_77-J26
[00039084] 089a                      dc.w $089a   ; Auo_editor_1-J26
[00039086] 087c                      dc.w $087c   ; Auo_editor_78-J26
[00039088] 0884                      dc.w $0884   ; Auo_editor_79-J26
[0003908a] 0892                      dc.w $0892   ; Auo_editor_80-J26
Auo_editor_76:
[0003908c] 38ab 009e                 move.w     158(a3),(a4)
[00039090] 6000 0688                 bra        Auo_editor_17
Auo_editor_77:
[00039094] 426b 009e                 clr.w      158(a3)
[00039098] 6000 0680                 bra        Auo_editor_17
Auo_editor_72:
[0003909c] 3754 009c                 move.w     (a4),156(a3)
[000390a0] 6000 0678                 bra        Auo_editor_17
Auo_editor_70:
[000390a4] 222b 0034                 move.l     52(a3),d1
[000390a8] 202b 0030                 move.l     48(a3),d0
[000390ac] 204b                      movea.l    a3,a0
[000390ae] 6100 fd02                 bsr        edit_selectword
[000390b2] 6000 0666                 bra        Auo_editor_17
Auo_editor_69:
[000390b6] 224c                      movea.l    a4,a1
[000390b8] 204b                      movea.l    a3,a0
[000390ba] 6100 fcce                 bsr        edit_getneed
[000390be] 6000 065a                 bra        Auo_editor_17
Auo_editor_67:
[000390c2] 026b dfff 0012            andi.w     #$DFFF,18(a3)
[000390c8] 6000 0650                 bra        Auo_editor_17
Auo_editor_68:
[000390cc] 302b 0012                 move.w     18(a3),d0
[000390d0] c07c 2000                 and.w      #$2000,d0
[000390d4] 6656                      bne.s      Auo_editor_81
Auo_editor_82:
[000390d6] 4254                      clr.w      (a4)
[000390d8] 6000 0640                 bra        Auo_editor_17
Auo_editor_60:
[000390dc] 224c                      movea.l    a4,a1
[000390de] 204b                      movea.l    a3,a0
[000390e0] 6100 fa12                 bsr        edit_find
[000390e4] 6000 0634                 bra        Auo_editor_17
Auo_editor_65:
[000390e8] 006b 0400 0012            ori.w      #$0400,18(a3)
[000390ee] 6000 062a                 bra        Auo_editor_17
Auo_editor_66:
[000390f2] 026b fbff 0012            andi.w     #$FBFF,18(a3)
[000390f8] 6000 0620                 bra        Auo_editor_17
Auo_editor_61:
[000390fc] 006b 1000 0012            ori.w      #$1000,18(a3)
[00039102] 6000 0616                 bra        Auo_editor_17
Auo_editor_62:
[00039106] 026b efff 0012            andi.w     #$EFFF,18(a3)
[0003910c] 6000 060c                 bra        Auo_editor_17
Auo_editor_64:
[00039110] 006b 0800 0012            ori.w      #$0800,18(a3)
[00039116] 6000 0602                 bra        Auo_editor_17
Auo_editor_63:
[0003911a] 026b f7ff 0012            andi.w     #$F7FF,18(a3)
[00039120] 6000 05f8                 bra        Auo_editor_17
Auo_editor_59:
[00039124] 0c6b 0005 0070            cmpi.w     #$0005,112(a3)
[0003912a] 66aa                      bne.s      Auo_editor_82
Auo_editor_81:
[0003912c] 38bc 0001                 move.w     #$0001,(a4)
[00039130] 6000 05e8                 bra        Auo_editor_17
Auo_editor_56:
[00039134] 206f 001a                 movea.l    26(a7),a0
[00039138] 6100 f6d6                 bsr        resize
[0003913c] 206f 001a                 movea.l    26(a7),a0
[00039140] 316b 004a 0014            move.w     74(a3),20(a0)
[00039146] 316b 0048 0016            move.w     72(a3),22(a0)
[0003914c] 6000 05cc                 bra        Auo_editor_17
Auo_editor_55:
[00039150] 202b 0092                 move.l     146(a3),d0
[00039154] 206b 0096                 movea.l    150(a3),a0
[00039158] 6100 d8ba                 bsr        edit_freeundo
[0003915c] 42ab 0096                 clr.l      150(a3)
[00039160] 42ab 0092                 clr.l      146(a3)
[00039164] 6000 05b4                 bra        Auo_editor_17
Auo_editor_53:
[00039168] 204b                      movea.l    a3,a0
[0003916a] 6100 e1dc                 bsr        edit_undo
[0003916e] 6000 05aa                 bra        Auo_editor_17
Auo_editor_20:
[00039172] 224c                      movea.l    a4,a1
[00039174] 204b                      movea.l    a3,a0
[00039176] 6100 f784                 bsr        edit_getrow
[0003917a] 6000 059e                 bra        Auo_editor_17
Auo_editor_58:
[0003917e] 38ab 009a                 move.w     154(a3),(a4)
[00039182] 6000 0596                 bra        Auo_editor_17
Auo_editor_54:
[00039186] 3754 009a                 move.w     (a4),154(a3)
[0003918a] 322b 0036                 move.w     54(a3),d1
[0003918e] 302b 009a                 move.w     154(a3),d0
[00039192] 242b 0030                 move.l     48(a3),d2
[00039196] e78a                      lsl.l      #3,d2
[00039198] 206b 002c                 movea.l    44(a3),a0
[0003919c] 2070 2800                 movea.l    0(a0,d2.l),a0
[000391a0] 6100 d100                 bsr        vpos
[000391a4] 48c0                      ext.l      d0
[000391a6] 2740 0040                 move.l     d0,64(a3)
[000391aa] 322b 003e                 move.w     62(a3),d1
[000391ae] 302b 009a                 move.w     154(a3),d0
[000391b2] 242b 0038                 move.l     56(a3),d2
[000391b6] e78a                      lsl.l      #3,d2
[000391b8] 206b 002c                 movea.l    44(a3),a0
[000391bc] 2070 2800                 movea.l    0(a0,d2.l),a0
[000391c0] 6100 d0e0                 bsr        vpos
[000391c4] 48c0                      ext.l      d0
[000391c6] 2740 0044                 move.l     d0,68(a3)
[000391ca] 6000 054e                 bra        Auo_editor_17
Auo_editor_52:
[000391ce] 224c                      movea.l    a4,a1
[000391d0] 204b                      movea.l    a3,a0
[000391d2] 6100 dd96                 bsr        edit_substitute
[000391d6] 6000 0542                 bra        Auo_editor_17
Auo_editor_51:
[000391da] 7001                      moveq.l    #1,d0
[000391dc] d0ab 0028                 add.l      40(a3),d0
[000391e0] 2880                      move.l     d0,(a4)
[000391e2] 6000 0536                 bra        Auo_editor_17
Auo_editor_50:
[000391e6] 202b 0030                 move.l     48(a3),d0
[000391ea] e788                      lsl.l      #3,d0
[000391ec] 206b 002c                 movea.l    44(a3),a0
[000391f0] 3230 0804                 move.w     4(a0,d0.l),d1
[000391f4] 48c1                      ext.l      d1
[000391f6] 2881                      move.l     d1,(a4)
[000391f8] 6000 0520                 bra        Auo_editor_17
Auo_editor_73:
[000391fc] 202b 0030                 move.l     48(a3),d0
[00039200] e788                      lsl.l      #3,d0
[00039202] 206b 002c                 movea.l    44(a3),a0
[00039206] d1c0                      adda.l     d0,a0
[00039208] 2f48 0012                 move.l     a0,18(a7)
[0003920c] 28ab 0040                 move.l     64(a3),(a4)
[00039210] 6000 0508                 bra        Auo_editor_17
Auo_editor_49:
[00039214] 202b 0030                 move.l     48(a3),d0
[00039218] e788                      lsl.l      #3,d0
[0003921a] 206b 002c                 movea.l    44(a3),a0
[0003921e] d1c0                      adda.l     d0,a0
[00039220] 2f48 0012                 move.l     a0,18(a7)
[00039224] 322b 0042                 move.w     66(a3),d1
[00039228] 302b 009a                 move.w     154(a3),d0
[0003922c] 2050                      movea.l    (a0),a0
[0003922e] 6100 d036                 bsr        posv
[00039232] 3600                      move.w     d0,d3
[00039234] 48c3                      ext.l      d3
[00039236] 2883                      move.l     d3,(a4)
[00039238] 6000 04e0                 bra        Auo_editor_17
Auo_editor_44:
[0003923c] 204b                      movea.l    a3,a0
[0003923e] 6100 f7a4                 bsr        edit_unselect
[00039242] 6000 04d6                 bra        Auo_editor_17
Auo_editor_45:
[00039246] 0c6b 0004 0070            cmpi.w     #$0004,112(a3)
[0003924c] 660c                      bne.s      Auo_editor_83
[0003924e] 224c                      movea.l    a4,a1
[00039250] 204b                      movea.l    a3,a0
[00039252] 6100 f64e                 bsr        edit_nextrange
[00039256] 6000 04c2                 bra        Auo_editor_17
Auo_editor_83:
[0003925a] 302b 0012                 move.w     18(a3),d0
[0003925e] c07c 0200                 and.w      #$0200,d0
[00039262] 671a                      beq.s      Auo_editor_84
[00039264] 28ab 0030                 move.l     48(a3),(a4)
[00039268] 296b 0034 0004            move.l     52(a3),4(a4)
[0003926e] 296b 0038 0008            move.l     56(a3),8(a4)
[00039274] 296b 003c 000c            move.l     60(a3),12(a4)
[0003927a] 6000 049e                 bra        Auo_editor_17
Auo_editor_84:
[0003927e] 28bc ffff ffff            move.l     #$FFFFFFFF,(a4)
[00039284] 6000 0494                 bra        Auo_editor_17
Auo_editor_46:
[00039288] 224c                      movea.l    a4,a1
[0003928a] 204b                      movea.l    a3,a0
[0003928c] 6100 f7a4                 bsr        edit_setselect
[00039290] 6000 0488                 bra        Auo_editor_17
Auo_editor_47:
[00039294] 2754 0072                 move.l     (a4),114(a3)
[00039298] 276c 0004 0076            move.l     4(a4),118(a3)
[0003929e] 6000 047a                 bra        Auo_editor_17
Auo_editor_48:
[000392a2] 202b 0072                 move.l     114(a3),d0
[000392a6] 6700 0472                 beq        Auo_editor_17
[000392aa] 222b 0030                 move.l     48(a3),d1
[000392ae] e789                      lsl.l      #3,d1
[000392b0] 206b 002c                 movea.l    44(a3),a0
[000392b4] d1c1                      adda.l     d1,a0
[000392b6] 2f48 0012                 move.l     a0,18(a7)
[000392ba] 0c6b 0002 0070            cmpi.w     #$0002,112(a3)
[000392c0] 6708                      beq.s      Auo_editor_85
[000392c2] 0c6b 0001 0070            cmpi.w     #$0001,112(a3)
[000392c8] 6612                      bne.s      Auo_editor_86
Auo_editor_85:
[000392ca] 7001                      moveq.l    #1,d0
[000392cc] 206f 0012                 movea.l    18(a7),a0
[000392d0] c068 0006                 and.w      6(a0),d0
[000392d4] 6706                      beq.s      Auo_editor_86
[000392d6] 2e90                      move.l     (a0),(a7)
[000392d8] 2217                      move.l     (a7),d1
[000392da] 6606                      bne.s      Auo_editor_87
Auo_editor_86:
[000392dc] 2ebc 000c 2f4e            move.l     #$000C2F4E,(a7)
Auo_editor_87:
[000392e2] 2257                      movea.l    (a7),a1
[000392e4] 206b 0076                 movea.l    118(a3),a0
[000392e8] 2a6b 0072                 movea.l    114(a3),a5
[000392ec] 4e95                      jsr        (a5)
[000392ee] 6000 042a                 bra        Auo_editor_17
Auo_editor_38:
[000392f2] 377c 0002 0070            move.w     #$0002,112(a3)
[000392f8] 6000 0420                 bra        Auo_editor_17
Auo_editor_39:
[000392fc] 377c 0001 0070            move.w     #$0001,112(a3)
[00039302] 6000 0416                 bra        Auo_editor_17
Auo_editor_40:
[00039306] 377c 0003 0070            move.w     #$0003,112(a3)
[0003930c] 6000 040c                 bra        Auo_editor_17
Auo_editor_41:
[00039310] 377c 0004 0070            move.w     #$0004,112(a3)
[00039316] 6000 0402                 bra        Auo_editor_17
Auo_editor_42:
[0003931a] 426b 0070                 clr.w      112(a3)
[0003931e] 6000 03fa                 bra        Auo_editor_17
Auo_editor_43:
[00039322] 377c 0005 0070            move.w     #$0005,112(a3)
[00039328] 6000 03f0                 bra        Auo_editor_17
Auo_editor_8:
[0003932c] 244c                      movea.l    a4,a2
[0003932e] 2752 0054                 move.l     (a2),84(a3)
[00039332] 276a 0004 0058            move.l     4(a2),88(a3)
[00039338] 376a 0008 005c            move.w     8(a2),92(a3)
[0003933e] 6000 03da                 bra        Auo_editor_17
Auo_editor_16:
[00039342] 244c                      movea.l    a4,a2
[00039344] 24ab 0054                 move.l     84(a3),(a2)
[00039348] 256b 0058 0004            move.l     88(a3),4(a2)
[0003934e] 356b 005c 0008            move.w     92(a3),8(a2)
[00039354] 6000 03c4                 bra        Auo_editor_17
Auo_editor_37:
[00039358] 204b                      movea.l    a3,a0
[0003935a] 6100 d58e                 bsr        edit_view
[0003935e] 6000 03ba                 bra        Auo_editor_17
Auo_editor_29:
[00039362] 006b 0020 0012            ori.w      #$0020,18(a3)
Auo_editor_88:
[00039368] 026b ff7f 0012            andi.w     #$FF7F,18(a3)
[0003936e] 6000 03aa                 bra        Auo_editor_17
Auo_editor_30:
[00039372] 026b ff5f 0012            andi.w     #$FF5F,18(a3)
[00039378] 6000 03a0                 bra        Auo_editor_17
Auo_editor_31:
[0003937c] 7020                      moveq.l    #32,d0
[0003937e] c06b 0012                 and.w      18(a3),d0
[00039382] 6700 0396                 beq        Auo_editor_17
[00039386] 323c 0080                 move.w     #$0080,d1
[0003938a] c26b 0012                 and.w      18(a3),d1
[0003938e] 6700 038a                 beq        Auo_editor_17
[00039392] 204b                      movea.l    a3,a0
[00039394] 6100 e324                 bsr        change_cur
[00039398] 60ce                      bra.s      Auo_editor_88
Auo_editor_32:
[0003939a] 7020                      moveq.l    #32,d0
[0003939c] c06b 0012                 and.w      18(a3),d0
[000393a0] 6700 0378                 beq        Auo_editor_17
[000393a4] 323c 0080                 move.w     #$0080,d1
[000393a8] c26b 0012                 and.w      18(a3),d1
[000393ac] 6600 036c                 bne        Auo_editor_17
[000393b0] 006b 0080 0012            ori.w      #$0080,18(a3)
[000393b6] 204b                      movea.l    a3,a0
[000393b8] 6100 e300                 bsr        change_cur
[000393bc] 6000 035c                 bra        Auo_editor_17
Auo_editor_33:
[000393c0] 2754 0034                 move.l     (a4),52(a3)
[000393c4] 276b 0034 003c            move.l     52(a3),60(a3)
[000393ca] 322b 0036                 move.w     54(a3),d1
[000393ce] 302b 009a                 move.w     154(a3),d0
[000393d2] 242b 0030                 move.l     48(a3),d2
[000393d6] e78a                      lsl.l      #3,d2
[000393d8] 206b 002c                 movea.l    44(a3),a0
[000393dc] 2070 2800                 movea.l    0(a0,d2.l),a0
[000393e0] 6100 cec0                 bsr        vpos
[000393e4] 48c0                      ext.l      d0
[000393e6] 2740 0040                 move.l     d0,64(a3)
[000393ea] 2740 0044                 move.l     d0,68(a3)
[000393ee] 6000 032a                 bra        Auo_editor_17
Auo_editor_34:
[000393f2] 28ab 0030                 move.l     48(a3),(a4)
[000393f6] 6000 0322                 bra        Auo_editor_17
Auo_editor_2:
[000393fa] 206f 001a                 movea.l    26(a7),a0
[000393fe] 4eb9 0003 9c66            jsr        create
[00039404] 4a40                      tst.w      d0
[00039406] 6700 0312                 beq        Auo_editor_17
[0003940a] 38bc ffff                 move.w     #$FFFF,(a4)
[0003940e] 6000 030a                 bra        Auo_editor_17
Auo_editor_3:
[00039412] 204b                      movea.l    a3,a0
[00039414] 6100 f390                 bsr        edit_free
[00039418] 204b                      movea.l    a3,a0
[0003941a] 4eb9 0004 7d6c            jsr        Ax_ifree
[00039420] 6000 02f8                 bra        Auo_editor_17
Auo_editor_5:
[00039424] 202b 0030                 move.l     48(a3),d0
[00039428] e788                      lsl.l      #3,d0
[0003942a] 206b 002c                 movea.l    44(a3),a0
[0003942e] d1c0                      adda.l     d0,a0
[00039430] 2f48 0012                 move.l     a0,18(a7)
[00039434] 2050                      movea.l    (a0),a0
[00039436] 4eb9 0004 7d6c            jsr        Ax_ifree
[0003943c] 206f 0012                 movea.l    18(a7),a0
[00039440] 4290                      clr.l      (a0)
[00039442] 4268 0004                 clr.w      4(a0)
[00039446] 224c                      movea.l    a4,a1
[00039448] 202b 0030                 move.l     48(a3),d0
[0003944c] 204b                      movea.l    a3,a0
[0003944e] 6100 f2a8                 bsr        edit_add
[00039452] 202b 0030                 move.l     48(a3),d0
[00039456] 204b                      movea.l    a3,a0
[00039458] 6100 e096                 bsr        edit_showline
[0003945c] 6000 02bc                 bra        Auo_editor_17
Auo_editor_4:
[00039460] 202b 0030                 move.l     48(a3),d0
[00039464] e788                      lsl.l      #3,d0
[00039466] 206b 002c                 movea.l    44(a3),a0
[0003946a] d1c0                      adda.l     d0,a0
[0003946c] 2f48 0012                 move.l     a0,18(a7)
[00039470] 3228 0004                 move.w     4(a0),d1
[00039474] 6f06                      ble.s      Auo_editor_89
[00039476] 2890                      move.l     (a0),(a4)
[00039478] 6000 02a0                 bra        Auo_editor_17
Auo_editor_89:
[0003947c] 28bc 000c 2f4e            move.l     #$000C2F4E,(a4)
[00039482] 6000 0296                 bra        Auo_editor_17
Auo_editor_25:
[00039486] 3214                      move.w     (a4),d1
[00039488] 2079 0010 1f12            movea.l    ACSblk,a0
[0003948e] 3028 0010                 move.w     16(a0),d0
[00039492] 4eb9 0006 5216            jsr        vst_font
[00039498] 3740 0002                 move.w     d0,2(a3)
[0003949c] 6004                      bra.s      Auo_editor_90
Auo_editor_26:
[0003949e] 3754 0004                 move.w     (a4),4(a3)
Auo_editor_90:
[000394a2] 486b 0006                 pea.l      6(a3)
[000394a6] 486b 0008                 pea.l      8(a3)
[000394aa] 43eb 0004                 lea.l      4(a3),a1
[000394ae] 41ef 0018                 lea.l      24(a7),a0
[000394b2] 322b 0004                 move.w     4(a3),d1
[000394b6] 2a79 0010 1f12            movea.l    ACSblk,a5
[000394bc] 302d 0010                 move.w     16(a5),d0
[000394c0] 4eb9 0006 50a0            jsr        vst_height
[000394c6] 504f                      addq.w     #8,a7
[000394c8] 601c                      bra.s      Auo_editor_91
Auo_editor_27:
[000394ca] 3694                      move.w     (a4),(a3)
[000394cc] 6000 024c                 bra        Auo_editor_17
Auo_editor_28:
[000394d0] 2754 0020                 move.l     (a4),32(a3)
[000394d4] 0cab 0000 0200 0020       cmpi.l     #$00000200,32(a3)
[000394dc] 6f08                      ble.s      Auo_editor_91
[000394de] 277c 0000 0200 0020       move.l     #$00000200,32(a3)
Auo_editor_91:
[000394e6] 206f 001a                 movea.l    26(a7),a0
[000394ea] 6100 f324                 bsr        resize
[000394ee] 6000 022a                 bra        Auo_editor_17
Auo_editor_22:
[000394f2] 224c                      movea.l    a4,a1
[000394f4] 206f 001a                 movea.l    26(a7),a0
[000394f8] 6100 f27c                 bsr        edit_appline
[000394fc] 6000 021c                 bra        Auo_editor_17
Auo_editor_23:
[00039500] 2754 0014                 move.l     (a4),20(a3)
[00039504] 202b 0024                 move.l     36(a3),d0
[00039508] b0ab 0014                 cmp.l      20(a3),d0
[0003950c] 6f00 020c                 ble        Auo_editor_17
[00039510] 2740 0014                 move.l     d0,20(a3)
[00039514] 6000 0204                 bra        Auo_editor_17
Auo_editor_24:
[00039518] 204b                      movea.l    a3,a0
[0003951a] 6100 f28a                 bsr        edit_free
[0003951e] 204b                      movea.l    a3,a0
[00039520] 4eb9 0003 9c28            jsr        edit_restart
[00039526] 6000 01f2                 bra        Auo_editor_17
Auo_editor_7:
[0003952a] 006b 0008 0012            ori.w      #$0008,18(a3)
Auo_editor_6:
[00039530] 204b                      movea.l    a3,a0
[00039532] 6100 e1b4                 bsr        edit_update
[00039536] 6000 01b4                 bra        Auo_editor_71
Auo_editor_57:
[0003953a] 204b                      movea.l    a3,a0
[0003953c] 6100 e1aa                 bsr        edit_update
[00039540] 6000 01d8                 bra        Auo_editor_17
Auo_editor_9:
[00039544] 52ab 0030                 addq.l     #1,48(a3)
[00039548] 6040                      bra.s      Auo_editor_92
Auo_editor_10:
[0003954a] 53ab 0030                 subq.l     #1,48(a3)
[0003954e] 6012                      bra.s      Auo_editor_93
Auo_editor_11:
[00039550] 202b 000a                 move.l     10(a3),d0
[00039554] d1ab 0030                 add.l      d0,48(a3)
[00039558] 6030                      bra.s      Auo_editor_92
Auo_editor_12:
[0003955a] 202b 000a                 move.l     10(a3),d0
[0003955e] 91ab 0030                 sub.l      d0,48(a3)
Auo_editor_93:
[00039562] 202b 0030                 move.l     48(a3),d0
[00039566] 6a00 01b2                 bpl        Auo_editor_17
Auo_editor_13:
[0003956a] 42ab 0030                 clr.l      48(a3)
[0003956e] 6000 01aa                 bra        Auo_editor_17
Auo_editor_14:
[00039572] 276b 0028 0030            move.l     40(a3),48(a3)
[00039578] 6000 01a0                 bra        Auo_editor_17
Auo_editor_15:
[0003957c] 2754 0030                 move.l     (a4),48(a3)
[00039580] 202b 0030                 move.l     48(a3),d0
[00039584] 6a04                      bpl.s      Auo_editor_92
[00039586] 42ab 0030                 clr.l      48(a3)
Auo_editor_92:
[0003958a] 202b 0030                 move.l     48(a3),d0
[0003958e] b0ab 0028                 cmp.l      40(a3),d0
[00039592] 6f00 0186                 ble        Auo_editor_17
[00039596] 60da                      bra.s      Auo_editor_14
Auo_editor_35:
[00039598] 2754 001c                 move.l     (a4),28(a3)
[0003959c] 262b 0020                 move.l     32(a3),d3
[000395a0] 96ab 000e                 sub.l      14(a3),d3
[000395a4] b6ab 001c                 cmp.l      28(a3),d3
[000395a8] 6c04                      bge.s      Auo_editor_94
[000395aa] 2743 001c                 move.l     d3,28(a3)
Auo_editor_94:
[000395ae] 202b 001c                 move.l     28(a3),d0
[000395b2] 6a00 0166                 bpl        Auo_editor_17
[000395b6] 42ab 001c                 clr.l      28(a3)
[000395ba] 6000 015e                 bra        Auo_editor_17
Auo_editor_74:
[000395be] 28ab 001c                 move.l     28(a3),(a4)
[000395c2] 6000 0156                 bra        Auo_editor_17
Auo_editor_36:
[000395c6] 2754 0018                 move.l     (a4),24(a3)
[000395ca] 202b 0018                 move.l     24(a3),d0
[000395ce] 6a04                      bpl.s      Auo_editor_95
[000395d0] 42ab 0018                 clr.l      24(a3)
Auo_editor_95:
[000395d4] 262b 0028                 move.l     40(a3),d3
[000395d8] 96ab 000a                 sub.l      10(a3),d3
[000395dc] 5283                      addq.l     #1,d3
[000395de] 4a83                      tst.l      d3
[000395e0] 6b00 0138                 bmi        Auo_editor_17
[000395e4] b6ab 0018                 cmp.l      24(a3),d3
[000395e8] 6c00 0130                 bge        Auo_editor_17
[000395ec] 2743 0018                 move.l     d3,24(a3)
[000395f0] 6000 0128                 bra        Auo_editor_17
Auo_editor_75:
[000395f4] 28ab 0018                 move.l     24(a3),(a4)
[000395f8] 6000 0120                 bra        Auo_editor_17
Auo_editor_21:
[000395fc] 206f 001a                 movea.l    26(a7),a0
[00039600] 6100 e000                 bsr        edit_newline
[00039604] 6000 0114                 bra        Auo_editor_17
Auo_editor_18:
[00039608] 7001                      moveq.l    #1,d0
[0003960a] c06b 0012                 and.w      18(a3),d0
[0003960e] 6708                      beq.s      Auo_editor_96
[00039610] 206f 001a                 movea.l    26(a7),a0
[00039614] 6100 f1fa                 bsr        resize
Auo_editor_96:
[00039618] 244c                      movea.l    a4,a2
[0003961a] 206a 0004                 movea.l    4(a2),a0
[0003961e] 2748 0062                 move.l     a0,98(a3)
[00039622] 2f48 000c                 move.l     a0,12(a7)
[00039626] 2f7c 0003 9dd4 0004       move.l     #vertical,4(a7)
[0003962e] 43eb 0054                 lea.l      84(a3),a1
[00039632] 2f49 0008                 move.l     a1,8(a7)
[00039636] 2f68 000c 0016            move.l     12(a0),22(a7)
[0003963c] 7009                      moveq.l    #9,d0
[0003963e] 2a6f 0016                 movea.l    22(a7),a5
[00039642] 2a6d 0008                 movea.l    8(a5),a5
[00039646] 224a                      movea.l    a2,a1
[00039648] 4e95                      jsr        (a5)
[0003964a] 43ef 0004                 lea.l      4(a7),a1
[0003964e] 7067                      moveq.l    #103,d0
[00039650] 206f 000c                 movea.l    12(a7),a0
[00039654] 2a6f 0016                 movea.l    22(a7),a5
[00039658] 2a6d 0008                 movea.l    8(a5),a5
[0003965c] 4e95                      jsr        (a5)
[0003965e] 606a                      bra.s      Auo_editor_97
Auo_editor_19:
[00039660] 7001                      moveq.l    #1,d0
[00039662] c06b 0012                 and.w      18(a3),d0
[00039666] 6708                      beq.s      Auo_editor_98
[00039668] 206f 001a                 movea.l    26(a7),a0
[0003966c] 6100 f1a2                 bsr        resize
Auo_editor_98:
[00039670] 244c                      movea.l    a4,a2
[00039672] 206a 0004                 movea.l    4(a2),a0
[00039676] 2748 005e                 move.l     a0,94(a3)
[0003967a] 2f48 000c                 move.l     a0,12(a7)
[0003967e] 2f7c 0003 9da6 0004       move.l     #horizontal,4(a7)
[00039686] 43eb 0054                 lea.l      84(a3),a1
[0003968a] 2f49 0008                 move.l     a1,8(a7)
[0003968e] 2f68 000c 0016            move.l     12(a0),22(a7)
[00039694] 7009                      moveq.l    #9,d0
[00039696] 2a6f 0016                 movea.l    22(a7),a5
[0003969a] 2a6d 0008                 movea.l    8(a5),a5
[0003969e] 224a                      movea.l    a2,a1
[000396a0] 4e95                      jsr        (a5)
[000396a2] 43ef 0004                 lea.l      4(a7),a1
[000396a6] 7067                      moveq.l    #103,d0
[000396a8] 206f 000c                 movea.l    12(a7),a0
[000396ac] 246f 0016                 movea.l    22(a7),a2
[000396b0] 246a 0008                 movea.l    8(a2),a2
[000396b4] 4e92                      jsr        (a2)
[000396b6] 43eb 0020                 lea.l      32(a3),a1
[000396ba] 7064                      moveq.l    #100,d0
[000396bc] 206f 000c                 movea.l    12(a7),a0
[000396c0] 246f 0016                 movea.l    22(a7),a2
[000396c4] 246a 0008                 movea.l    8(a2),a2
[000396c8] 4e92                      jsr        (a2)
Auo_editor_97:
[000396ca] 43f9 000c 2f4e            lea.l      $000C2F4E,a1
[000396d0] 7004                      moveq.l    #4,d0
[000396d2] 206f 000c                 movea.l    12(a7),a0
[000396d6] 246f 0016                 movea.l    22(a7),a2
[000396da] 246a 0008                 movea.l    8(a2),a2
[000396de] 4e92                      jsr        (a2)
[000396e0] 4240                      clr.w      d0
[000396e2] 204b                      movea.l    a3,a0
[000396e4] 4eb9 0003 9cf8            jsr        cleanup
[000396ea] 602e                      bra.s      Auo_editor_17
Auo_editor_71:
[000396ec] 7001                      moveq.l    #1,d0
[000396ee] 204b                      movea.l    a3,a0
[000396f0] 4eb9 0003 9cf8            jsr        cleanup
[000396f6] 6022                      bra.s      Auo_editor_17
Auo_editor_78:
[000396f8] 006b 2000 0012            ori.w      #$2000,18(a3)
[000396fe] 601a                      bra.s      Auo_editor_17
Auo_editor_79:
[00039700] 224c                      movea.l    a4,a1
[00039702] 41eb 00a0                 lea.l      160(a3),a0
[00039706] 4eb9 0007 6950            jsr        strcpy
[0003970c] 600c                      bra.s      Auo_editor_17
Auo_editor_80:
[0003970e] 41eb 00a0                 lea.l      160(a3),a0
[00039712] 2888                      move.l     a0,(a4)
[00039714] 6004                      bra.s      Auo_editor_17
Auo_editor_1:
[00039716] 4240                      clr.w      d0
[00039718] 6002                      bra.s      Auo_editor_99
Auo_editor_17:
[0003971a] 7001                      moveq.l    #1,d0
Auo_editor_99:
[0003971c] 4fef 001e                 lea.l      30(a7),a7
[00039720] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00039724] 4e75                      rts

edit_forbracket:
[00039726] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0003972a] 4fef ffec                 lea.l      -20(a7),a7
[0003972e] 2f48 0010                 move.l     a0,16(a7)
[00039732] 2a00                      move.l     d0,d5
[00039734] 2c01                      move.l     d1,d6
[00039736] 1602                      move.b     d2,d3
[00039738] 4882                      ext.w      d2
[0003973a] 947c 0028                 sub.w      #$0028,d2
[0003973e] 6718                      beq.s      edit_forbracket_1
[00039740] 947c 0014                 sub.w      #$0014,d2
[00039744] 671a                      beq.s      edit_forbracket_2
[00039746] 947c 001f                 sub.w      #$001F,d2
[0003974a] 6708                      beq.s      edit_forbracket_3
[0003974c] 947c 0020                 sub.w      #$0020,d2
[00039750] 670a                      beq.s      edit_forbracket_4
[00039752] 600e                      bra.s      edit_forbracket_5
edit_forbracket_3:
[00039754] 785d                      moveq.l    #93,d4
[00039756] 600a                      bra.s      edit_forbracket_5
edit_forbracket_1:
[00039758] 7829                      moveq.l    #41,d4
[0003975a] 6006                      bra.s      edit_forbracket_5
edit_forbracket_4:
[0003975c] 787d                      moveq.l    #125,d4
[0003975e] 6002                      bra.s      edit_forbracket_5
edit_forbracket_2:
[00039760] 783e                      moveq.l    #62,d4
edit_forbracket_5:
[00039762] 2e85                      move.l     d5,(a7)
[00039764] 2f46 0004                 move.l     d6,4(a7)
[00039768] 5286                      addq.l     #1,d6
[0003976a] 2005                      move.l     d5,d0
[0003976c] e788                      lsl.l      #3,d0
[0003976e] 206f 0010                 movea.l    16(a7),a0
[00039772] 2868 002c                 movea.l    44(a0),a4
[00039776] d9c0                      adda.l     d0,a4
[00039778] 7e01                      moveq.l    #1,d7
[0003977a] 6000 009a                 bra        edit_forbracket_6
edit_forbracket_14:
[0003977e] 206f 0010                 movea.l    16(a7),a0
[00039782] baa8 0028                 cmp.l      40(a0),d5
[00039786] 6f3e                      ble.s      edit_forbracket_7
[00039788] 7004                      moveq.l    #4,d0
[0003978a] 2279 0010 1f12            movea.l    ACSblk,a1
[00039790] 2069 023c                 movea.l    572(a1),a0
[00039794] c068 000e                 and.w      14(a0),d0
[00039798] 670a                      beq.s      edit_forbracket_8
[0003979a] 7207                      moveq.l    #7,d1
[0003979c] 7002                      moveq.l    #2,d0
[0003979e] 4eb9 0007 284a            jsr        Bconout
edit_forbracket_8:
[000397a4] 206f 0010                 movea.l    16(a7),a0
[000397a8] 2268 0058                 movea.l    88(a0),a1
[000397ac] 2a69 000c                 movea.l    12(a1),a5
[000397b0] 43f9 000c 2f60            lea.l      $000C2F60,a1
[000397b6] 303c 0104                 move.w     #$0104,d0
[000397ba] 2068 0058                 movea.l    88(a0),a0
[000397be] 246d 0008                 movea.l    8(a5),a2
[000397c2] 4e92                      jsr        (a2)
[000397c4] 6068                      bra.s      edit_forbracket_9
edit_forbracket_7:
[000397c6] 302c 0004                 move.w     4(a4),d0
[000397ca] 6f44                      ble.s      edit_forbracket_10
[000397cc] 2a54                      movea.l    (a4),a5
[000397ce] dbc6                      adda.l     d6,a5
[000397d0] 1003                      move.b     d3,d0
[000397d2] 4880                      ext.w      d0
[000397d4] 204d                      movea.l    a5,a0
[000397d6] 4eb9 0007 68ce            jsr        strchr
[000397dc] 2448                      movea.l    a0,a2
[000397de] 1004                      move.b     d4,d0
[000397e0] 4880                      ext.w      d0
[000397e2] 204d                      movea.l    a5,a0
[000397e4] 4eb9 0007 68ce            jsr        strchr
[000397ea] 2648                      movea.l    a0,a3
[000397ec] 200b                      move.l     a3,d0
[000397ee] 660e                      bne.s      edit_forbracket_11
[000397f0] 220a                      move.l     a2,d1
[000397f2] 671c                      beq.s      edit_forbracket_10
edit_forbracket_13:
[000397f4] 2c0a                      move.l     a2,d6
[000397f6] 9c94                      sub.l      (a4),d6
[000397f8] 5286                      addq.l     #1,d6
[000397fa] 5247                      addq.w     #1,d7
[000397fc] 6018                      bra.s      edit_forbracket_6
edit_forbracket_11:
[000397fe] 200a                      move.l     a2,d0
[00039800] 6704                      beq.s      edit_forbracket_12
[00039802] b7c0                      cmpa.l     d0,a3
[00039804] 64ee                      bcc.s      edit_forbracket_13
edit_forbracket_12:
[00039806] 2c0b                      move.l     a3,d6
[00039808] 9c94                      sub.l      (a4),d6
[0003980a] 5286                      addq.l     #1,d6
[0003980c] 5347                      subq.w     #1,d7
[0003980e] 6006                      bra.s      edit_forbracket_6
edit_forbracket_10:
[00039810] 7c00                      moveq.l    #0,d6
[00039812] 5285                      addq.l     #1,d5
[00039814] 504c                      addq.w     #8,a4
edit_forbracket_6:
[00039816] 4a47                      tst.w      d7
[00039818] 6e00 ff64                 bgt        edit_forbracket_14
[0003981c] 2f45 0008                 move.l     d5,8(a7)
[00039820] 2f46 000c                 move.l     d6,12(a7)
[00039824] 43d7                      lea.l      (a7),a1
[00039826] 206f 0010                 movea.l    16(a7),a0
[0003982a] 6100 f206                 bsr        edit_setselect
edit_forbracket_9:
[0003982e] 4fef 0014                 lea.l      20(a7),a7
[00039832] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00039836] 4e75                      rts

edit_backbracket:
[00039838] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0003983c] 4fef ffe6                 lea.l      -26(a7),a7
[00039840] 2f48 0016                 move.l     a0,22(a7)
[00039844] 2a00                      move.l     d0,d5
[00039846] 2c01                      move.l     d1,d6
[00039848] 1f42 0014                 move.b     d2,20(a7)
[0003984c] 4882                      ext.w      d2
[0003984e] 947c 0029                 sub.w      #$0029,d2
[00039852] 6718                      beq.s      edit_backbracket_1
[00039854] 947c 0015                 sub.w      #$0015,d2
[00039858] 671a                      beq.s      edit_backbracket_2
[0003985a] 947c 001f                 sub.w      #$001F,d2
[0003985e] 6708                      beq.s      edit_backbracket_3
[00039860] 947c 0020                 sub.w      #$0020,d2
[00039864] 670a                      beq.s      edit_backbracket_4
[00039866] 600e                      bra.s      edit_backbracket_5
edit_backbracket_3:
[00039868] 785b                      moveq.l    #91,d4
[0003986a] 600a                      bra.s      edit_backbracket_5
edit_backbracket_1:
[0003986c] 7828                      moveq.l    #40,d4
[0003986e] 6006                      bra.s      edit_backbracket_5
edit_backbracket_4:
[00039870] 787b                      moveq.l    #123,d4
[00039872] 6002                      bra.s      edit_backbracket_5
edit_backbracket_2:
[00039874] 783c                      moveq.l    #60,d4
edit_backbracket_5:
[00039876] 2f45 000c                 move.l     d5,12(a7)
[0003987a] 7001                      moveq.l    #1,d0
[0003987c] d086                      add.l      d6,d0
[0003987e] 2f40 0010                 move.l     d0,16(a7)
[00039882] 2205                      move.l     d5,d1
[00039884] e789                      lsl.l      #3,d1
[00039886] 206f 0016                 movea.l    22(a7),a0
[0003988a] 2868 002c                 movea.l    44(a0),a4
[0003988e] d9c1                      adda.l     d1,a4
[00039890] 7e01                      moveq.l    #1,d7
[00039892] 6000 00ba                 bra        edit_backbracket_6
edit_backbracket_16:
[00039896] 4a86                      tst.l      d6
[00039898] 6a0a                      bpl.s      edit_backbracket_7
[0003989a] 5385                      subq.l     #1,d5
[0003989c] 514c                      subq.w     #8,a4
[0003989e] 3c2c 0004                 move.w     4(a4),d6
[000398a2] 48c6                      ext.l      d6
edit_backbracket_7:
[000398a4] 4a85                      tst.l      d5
[000398a6] 6a40                      bpl.s      edit_backbracket_8
[000398a8] 7004                      moveq.l    #4,d0
[000398aa] 2079 0010 1f12            movea.l    ACSblk,a0
[000398b0] 2268 023c                 movea.l    572(a0),a1
[000398b4] c069 000e                 and.w      14(a1),d0
[000398b8] 670a                      beq.s      edit_backbracket_9
[000398ba] 7207                      moveq.l    #7,d1
[000398bc] 7002                      moveq.l    #2,d0
[000398be] 4eb9 0007 284a            jsr        Bconout
edit_backbracket_9:
[000398c4] 206f 0016                 movea.l    22(a7),a0
[000398c8] 2268 0058                 movea.l    88(a0),a1
[000398cc] 2a69 000c                 movea.l    12(a1),a5
[000398d0] 43f9 000c 2f60            lea.l      $000C2F60,a1
[000398d6] 303c 0104                 move.w     #$0104,d0
[000398da] 2068 0058                 movea.l    88(a0),a0
[000398de] 246d 0008                 movea.l    8(a5),a2
[000398e2] 4e92                      jsr        (a2)
[000398e4] 6000 0082                 bra        edit_backbracket_10
edit_backbracket_8:
[000398e8] 302c 0004                 move.w     4(a4),d0
[000398ec] 6f56                      ble.s      edit_backbracket_11
[000398ee] 2a54                      movea.l    (a4),a5
[000398f0] 45f5 6800                 lea.l      0(a5,d6.l),a2
[000398f4] 1612                      move.b     (a2),d3
[000398f6] 4212                      clr.b      (a2)
[000398f8] 102f 0014                 move.b     20(a7),d0
[000398fc] 4880                      ext.w      d0
[000398fe] 204d                      movea.l    a5,a0
[00039900] 4eb9 0007 68e2            jsr        strrchr
[00039906] 2648                      movea.l    a0,a3
[00039908] 1004                      move.b     d4,d0
[0003990a] 4880                      ext.w      d0
[0003990c] 204d                      movea.l    a5,a0
[0003990e] 4eb9 0007 68e2            jsr        strrchr
[00039914] 2e88                      move.l     a0,(a7)
[00039916] 1483                      move.b     d3,(a2)
[00039918] 2008                      move.l     a0,d0
[0003991a] 6704                      beq.s      edit_backbracket_12
[0003991c] b5c0                      cmpa.l     d0,a2
[0003991e] 6210                      bhi.s      edit_backbracket_13
edit_backbracket_12:
[00039920] 200b                      move.l     a3,d0
[00039922] 6720                      beq.s      edit_backbracket_11
[00039924] b5c0                      cmpa.l     d0,a2
[00039926] 631c                      bls.s      edit_backbracket_11
edit_backbracket_15:
[00039928] 2c0b                      move.l     a3,d6
[0003992a] 9c94                      sub.l      (a4),d6
[0003992c] 5247                      addq.w     #1,d7
[0003992e] 601e                      bra.s      edit_backbracket_6
edit_backbracket_13:
[00039930] 200b                      move.l     a3,d0
[00039932] 6708                      beq.s      edit_backbracket_14
[00039934] b5c0                      cmpa.l     d0,a2
[00039936] 6304                      bls.s      edit_backbracket_14
[00039938] b097                      cmp.l      (a7),d0
[0003993a] 64ec                      bcc.s      edit_backbracket_15
edit_backbracket_14:
[0003993c] 2c17                      move.l     (a7),d6
[0003993e] 9c94                      sub.l      (a4),d6
[00039940] 5347                      subq.w     #1,d7
[00039942] 600a                      bra.s      edit_backbracket_6
edit_backbracket_11:
[00039944] 5385                      subq.l     #1,d5
[00039946] 514c                      subq.w     #8,a4
[00039948] 3c2c 0004                 move.w     4(a4),d6
[0003994c] 48c6                      ext.l      d6
edit_backbracket_6:
[0003994e] 4a47                      tst.w      d7
[00039950] 6e00 ff44                 bgt        edit_backbracket_16
[00039954] 2f45 0004                 move.l     d5,4(a7)
[00039958] 2f46 0008                 move.l     d6,8(a7)
[0003995c] 43ef 0004                 lea.l      4(a7),a1
[00039960] 206f 0016                 movea.l    22(a7),a0
[00039964] 6100 f0cc                 bsr        edit_setselect
edit_backbracket_10:
[00039968] 4fef 001a                 lea.l      26(a7),a7
[0003996c] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00039970] 4e75                      rts

edit_click:
[00039972] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[00039976] 4fef fff0                 lea.l      -16(a7),a7
[0003997a] 2448                      movea.l    a0,a2
[0003997c] 3a00                      move.w     d0,d5
[0003997e] 3601                      move.w     d1,d3
[00039980] 3802                      move.w     d2,d4
[00039982] 3001                      move.w     d1,d0
[00039984] 6100 e1e2                 bsr        edit_row
[00039988] 2600                      move.l     d0,d3
[0003998a] e788                      lsl.l      #3,d0
[0003998c] 266a 002c                 movea.l    44(a2),a3
[00039990] d7c0                      adda.l     d0,a3
[00039992] 7203                      moveq.l    #3,d1
[00039994] c244                      and.w      d4,d1
[00039996] 6734                      beq.s      edit_click_1
[00039998] 2e83                      move.l     d3,(a7)
[0003999a] 42af 0004                 clr.l      4(a7)
[0003999e] b6aa 0028                 cmp.l      40(a2),d3
[000399a2] 670e                      beq.s      edit_click_2
[000399a4] 7401                      moveq.l    #1,d2
[000399a6] d483                      add.l      d3,d2
[000399a8] 2f42 0008                 move.l     d2,8(a7)
[000399ac] 42af 000c                 clr.l      12(a7)
[000399b0] 600e                      bra.s      edit_click_3
edit_click_2:
[000399b2] 2f43 0008                 move.l     d3,8(a7)
[000399b6] 302b 0004                 move.w     4(a3),d0
[000399ba] 48c0                      ext.l      d0
[000399bc] 2f40 000c                 move.l     d0,12(a7)
edit_click_3:
[000399c0] 43d7                      lea.l      (a7),a1
[000399c2] 204a                      movea.l    a2,a0
[000399c4] 6100 f06c                 bsr        edit_setselect
[000399c8] 6000 00c2                 bra        edit_click_4
edit_click_1:
[000399cc] 2853                      movea.l    (a3),a4
[000399ce] 3005                      move.w     d5,d0
[000399d0] 204a                      movea.l    a2,a0
[000399d2] 6100 e11a                 bsr        edit_col
[000399d6] 2a00                      move.l     d0,d5
[000399d8] 322b 0004                 move.w     4(a3),d1
[000399dc] 6f1a                      ble.s      edit_click_5
[000399de] 302a 009a                 move.w     154(a2),d0
[000399e2] 204c                      movea.l    a4,a0
[000399e4] 3205                      move.w     d5,d1
[000399e6] 6100 c87e                 bsr        posv
[000399ea] 3800                      move.w     d0,d4
[000399ec] 48c4                      ext.l      d4
[000399ee] 302b 0004                 move.w     4(a3),d0
[000399f2] 48c0                      ext.l      d0
[000399f4] b880                      cmp.l      d0,d4
[000399f6] 6d22                      blt.s      edit_click_6
edit_click_5:
[000399f8] 7004                      moveq.l    #4,d0
[000399fa] 2079 0010 1f12            movea.l    ACSblk,a0
[00039a00] 2268 023c                 movea.l    572(a0),a1
[00039a04] c069 000e                 and.w      14(a1),d0
[00039a08] 6700 0082                 beq        edit_click_4
[00039a0c] 7207                      moveq.l    #7,d1
[00039a0e] 7002                      moveq.l    #2,d0
[00039a10] 4eb9 0007 284a            jsr        Bconout
[00039a16] 6000 0074                 bra.w      edit_click_4
edit_click_6:
[00039a1a] 1a34 4800                 move.b     0(a4,d4.l),d5
[00039a1e] 1005                      move.b     d5,d0
[00039a20] 4880                      ext.w      d0
[00039a22] b07c 005b                 cmp.w      #$005B,d0
[00039a26] 672a                      beq.s      edit_click_7
[00039a28] 6e16                      bgt.s      edit_click_8
[00039a2a] 907c 0028                 sub.w      #$0028,d0
[00039a2e] 6722                      beq.s      edit_click_7
[00039a30] 5340                      subq.w     #1,d0
[00039a32] 672c                      beq.s      edit_click_9
[00039a34] 907c 0013                 sub.w      #$0013,d0
[00039a38] 6718                      beq.s      edit_click_7
[00039a3a] 5540                      subq.w     #2,d0
[00039a3c] 6722                      beq.s      edit_click_9
[00039a3e] 602e                      bra.s      edit_click_10
edit_click_8:
[00039a40] 907c 005d                 sub.w      #$005D,d0
[00039a44] 671a                      beq.s      edit_click_9
[00039a46] 907c 001e                 sub.w      #$001E,d0
[00039a4a] 6706                      beq.s      edit_click_7
[00039a4c] 5540                      subq.w     #2,d0
[00039a4e] 6710                      beq.s      edit_click_9
[00039a50] 601c                      bra.s      edit_click_10
edit_click_7:
[00039a52] 1405                      move.b     d5,d2
[00039a54] 2204                      move.l     d4,d1
[00039a56] 2003                      move.l     d3,d0
[00039a58] 204a                      movea.l    a2,a0
[00039a5a] 6100 fcca                 bsr        edit_forbracket
[00039a5e] 602c                      bra.s      edit_click_4
edit_click_9:
[00039a60] 1405                      move.b     d5,d2
[00039a62] 2204                      move.l     d4,d1
[00039a64] 2003                      move.l     d3,d0
[00039a66] 204a                      movea.l    a2,a0
[00039a68] 6100 fdce                 bsr        edit_backbracket
[00039a6c] 601e                      bra.s      edit_click_4
edit_click_10:
[00039a6e] 1005                      move.b     d5,d0
[00039a70] 4880                      ext.w      d0
[00039a72] 41ea 00a0                 lea.l      160(a2),a0
[00039a76] 4eb9 0007 68ce            jsr        strchr
[00039a7c] 2008                      move.l     a0,d0
[00039a7e] 6600 ff78                 bne        edit_click_5
[00039a82] 2204                      move.l     d4,d1
[00039a84] 2003                      move.l     d3,d0
[00039a86] 204a                      movea.l    a2,a0
[00039a88] 6100 f328                 bsr        edit_selectword
edit_click_4:
[00039a8c] 4fef 0010                 lea.l      16(a7),a7
[00039a90] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[00039a94] 4e75                      rts

Aus_editor:
[00039a96] 48e7 0038                 movem.l    a2-a4,-(a7)
[00039a9a] 45f9 0010 1f12            lea.l      ACSblk,a2
[00039aa0] 2052                      movea.l    (a2),a0
[00039aa2] 3228 0260                 move.w     608(a0),d1
[00039aa6] 48c1                      ext.l      d1
[00039aa8] 2001                      move.l     d1,d0
[00039aaa] d080                      add.l      d0,d0
[00039aac] d081                      add.l      d1,d0
[00039aae] e788                      lsl.l      #3,d0
[00039ab0] 2668 025c                 movea.l    604(a0),a3
[00039ab4] d7c0                      adda.l     d0,a3
[00039ab6] 206b 000c                 movea.l    12(a3),a0
[00039aba] 2868 000c                 movea.l    12(a0),a4
[00039abe] 342c 0070                 move.w     112(a4),d2
[00039ac2] b47c 0005                 cmp.w      #$0005,d2
[00039ac6] 6200 015a                 bhi        Aus_editor_1
[00039aca] d442                      add.w      d2,d2
[00039acc] 343b 2006                 move.w     $00039AD4(pc,d2.w),d2
[00039ad0] 4efb 2002                 jmp        $00039AD4(pc,d2.w)
J27:
[00039ad4] 0052                      dc.w $0052   ; Aus_editor_2-J27
[00039ad6] 000c                      dc.w $000c   ; Aus_editor_3-J27
[00039ad8] 001c                      dc.w $001c   ; Aus_editor_4-J27
[00039ada] 002c                      dc.w $002c   ; Aus_editor_5-J27
[00039adc] 0042                      dc.w $0042   ; Aus_editor_6-J27
[00039ade] 00de                      dc.w $00de   ; Aus_editor_7-J27
Aus_editor_3:
[00039ae0] 2052                      movea.l    (a2),a0
[00039ae2] 3028 0264                 move.w     612(a0),d0
[00039ae6] 204c                      movea.l    a4,a0
[00039ae8] 6100 e1d2                 bsr        edit_01select
[00039aec] 6000 0134                 bra        Aus_editor_1
Aus_editor_4:
[00039af0] 2052                      movea.l    (a2),a0
[00039af2] 3028 0264                 move.w     612(a0),d0
[00039af6] 204c                      movea.l    a4,a0
[00039af8] 6100 e0e0                 bsr        edit_1select
[00039afc] 6000 0124                 bra        Aus_editor_1
Aus_editor_5:
[00039b00] 7401                      moveq.l    #1,d2
[00039b02] 2052                      movea.l    (a2),a0
[00039b04] 3228 0266                 move.w     614(a0),d1
[00039b08] 3028 0264                 move.w     612(a0),d0
[00039b0c] 204c                      movea.l    a4,a0
[00039b0e] 6100 e2fe                 bsr        edit_nselect
[00039b12] 6000 010e                 bra        Aus_editor_1
Aus_editor_6:
[00039b16] 2052                      movea.l    (a2),a0
[00039b18] 3028 0264                 move.w     612(a0),d0
[00039b1c] 204c                      movea.l    a4,a0
[00039b1e] 6100 e482                 bsr        edit_nmselect
[00039b22] 6000 00fe                 bra        Aus_editor_1
Aus_editor_2:
[00039b26] 93c9                      suba.l     a1,a1
[00039b28] 303c 00d5                 move.w     #$00D5,d0
[00039b2c] 204b                      movea.l    a3,a0
[00039b2e] 6100 f322                 bsr        Auo_editor
[00039b32] 302c 0012                 move.w     18(a4),d0
[00039b36] c07c 0200                 and.w      #$0200,d0
[00039b3a] 6618                      bne.s      Aus_editor_8
[00039b3c] 006c 0200 0012            ori.w      #$0200,18(a4)
[00039b42] 296c 0030 0038            move.l     48(a4),56(a4)
[00039b48] 296c 0034 003c            move.l     52(a4),60(a4)
[00039b4e] 296c 0040 0044            move.l     64(a4),68(a4)
Aus_editor_8:
[00039b54] 302b 000a                 move.w     10(a3),d0
[00039b58] c07c 4000                 and.w      #$4000,d0
[00039b5c] 6716                      beq.s      Aus_editor_9
[00039b5e] 2052                      movea.l    (a2),a0
[00039b60] 3428 0266                 move.w     614(a0),d2
[00039b64] 3228 0264                 move.w     612(a0),d1
[00039b68] 3028 0262                 move.w     610(a0),d0
[00039b6c] 204c                      movea.l    a4,a0
[00039b6e] 6100 fe02                 bsr        edit_click
[00039b72] 6014                      bra.s      Aus_editor_10
Aus_editor_9:
[00039b74] 2052                      movea.l    (a2),a0
[00039b76] 3428 0266                 move.w     614(a0),d2
[00039b7a] 3228 0264                 move.w     612(a0),d1
[00039b7e] 3028 0262                 move.w     610(a0),d0
[00039b82] 204c                      movea.l    a4,a0
[00039b84] 6100 e478                 bsr        edit_charselect
Aus_editor_10:
[00039b88] 202c 0030                 move.l     48(a4),d0
[00039b8c] b0ac 0038                 cmp.l      56(a4),d0
[00039b90] 6600 007e                 bne.w      Aus_editor_11
[00039b94] 222c 0034                 move.l     52(a4),d1
[00039b98] b2ac 003c                 cmp.l      60(a4),d1
[00039b9c] 6672                      bne.s      Aus_editor_11
[00039b9e] e788                      lsl.l      #3,d0
[00039ba0] 206c 002c                 movea.l    44(a4),a0
[00039ba4] 0270 fffe 0806            andi.w     #$FFFE,6(a0,d0.l)
Aus_editor_14:
[00039baa] 026c fdff 0012            andi.w     #$FDFF,18(a4)
[00039bb0] 6064                      bra.s      Aus_editor_12
Aus_editor_7:
[00039bb2] 93c9                      suba.l     a1,a1
[00039bb4] 303c 00d5                 move.w     #$00D5,d0
[00039bb8] 204b                      movea.l    a3,a0
[00039bba] 6100 f296                 bsr        Auo_editor
[00039bbe] 302c 0012                 move.w     18(a4),d0
[00039bc2] c07c 0200                 and.w      #$0200,d0
[00039bc6] 6618                      bne.s      Aus_editor_13
[00039bc8] 006c 0200 0012            ori.w      #$0200,18(a4)
[00039bce] 296c 0030 0038            move.l     48(a4),56(a4)
[00039bd4] 296c 0034 003c            move.l     52(a4),60(a4)
[00039bda] 296c 0040 0044            move.l     64(a4),68(a4)
Aus_editor_13:
[00039be0] 2052                      movea.l    (a2),a0
[00039be2] 3428 0266                 move.w     614(a0),d2
[00039be6] 3228 0264                 move.w     612(a0),d1
[00039bea] 3028 0262                 move.w     610(a0),d0
[00039bee] 204c                      movea.l    a4,a0
[00039bf0] 6100 e7b6                 bsr        edit_blkselect
[00039bf4] 202c 0040                 move.l     64(a4),d0
[00039bf8] b0ac 0044                 cmp.l      68(a4),d0
[00039bfc] 6612                      bne.s      Aus_editor_11
[00039bfe] 4242                      clr.w      d2
[00039c00] 222c 0038                 move.l     56(a4),d1
[00039c04] 202c 0030                 move.l     48(a4),d0
[00039c08] 204c                      movea.l    a4,a0
[00039c0a] 6100 e142                 bsr        edit_selrange
[00039c0e] 609a                      bra.s      Aus_editor_14
Aus_editor_11:
[00039c10] 006c 0200 0012            ori.w      #$0200,18(a4)
Aus_editor_12:
[00039c16] 93c9                      suba.l     a1,a1
[00039c18] 303c 00d6                 move.w     #$00D6,d0
[00039c1c] 204b                      movea.l    a3,a0
[00039c1e] 6100 f232                 bsr        Auo_editor
Aus_editor_1:
[00039c22] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00039c26] 4e75                      rts

edit_restart:
[00039c28] 2f0a                      move.l     a2,-(a7)
[00039c2a] 2448                      movea.l    a0,a2
[00039c2c] 7008                      moveq.l    #8,d0
[00039c2e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00039c34] 2008                      move.l     a0,d0
[00039c36] 6608                      bne.s      edit_restart_1
[00039c38] 006a 0001 009e            ori.w      #$0001,158(a2)
[00039c3e] 6022                      bra.s      edit_restart_2
edit_restart_1:
[00039c40] 4290                      clr.l      (a0)
[00039c42] 4240                      clr.w      d0
[00039c44] 3140 0004                 move.w     d0,4(a0)
[00039c48] 3140 0006                 move.w     d0,6(a0)
[00039c4c] 2548 002c                 move.l     a0,44(a2)
[00039c50] 257c 0000 0001 0024       move.l     #$00000001,36(a2)
[00039c58] 7000                      moveq.l    #0,d0
[00039c5a] 2540 0018                 move.l     d0,24(a2)
[00039c5e] 2540 0028                 move.l     d0,40(a2)
edit_restart_2:
[00039c62] 245f                      movea.l    (a7)+,a2
[00039c64] 4e75                      rts

create:
[00039c66] 2f0a                      move.l     a2,-(a7)
[00039c68] 2f0b                      move.l     a3,-(a7)
[00039c6a] 554f                      subq.w     #2,a7
[00039c6c] 2468 000c                 movea.l    12(a0),a2
[00039c70] 203c 0000 01a2            move.l     #$000001A2,d0
[00039c76] 4eb9 0004 7cc8            jsr        Ax_malloc
[00039c7c] 2648                      movea.l    a0,a3
[00039c7e] 200b                      move.l     a3,d0
[00039c80] 6604                      bne.s      create_1
[00039c82] 70ff                      moveq.l    #-1,d0
[00039c84] 606a                      bra.s      create_2
create_1:
[00039c86] 254b 000c                 move.l     a3,12(a2)
[00039c8a] 203c 0000 01a2            move.l     #$000001A2,d0
[00039c90] 43f9 000c 2dac            lea.l      proto,a1
[00039c96] 204b                      movea.l    a3,a0
[00039c98] 4eb9 0007 6f44            jsr        memcpy
[00039c9e] 322b 0002                 move.w     2(a3),d1
[00039ca2] 2079 0010 1f12            movea.l    ACSblk,a0
[00039ca8] 3028 0010                 move.w     16(a0),d0
[00039cac] 4eb9 0006 5216            jsr        vst_font
[00039cb2] 3740 0002                 move.w     d0,2(a3)
[00039cb6] 486b 0006                 pea.l      6(a3)
[00039cba] 486b 0008                 pea.l      8(a3)
[00039cbe] 43eb 0004                 lea.l      4(a3),a1
[00039cc2] 41ef 0008                 lea.l      8(a7),a0
[00039cc6] 2479 0010 1f12            movea.l    ACSblk,a2
[00039ccc] 322a 0018                 move.w     24(a2),d1
[00039cd0] 302a 0010                 move.w     16(a2),d0
[00039cd4] 4eb9 0006 50a0            jsr        vst_height
[00039cda] 504f                      addq.w     #8,a7
[00039cdc] 377c 0002 0070            move.w     #$0002,112(a3)
[00039ce2] 377c 0004 009a            move.w     #$0004,154(a3)
[00039ce8] 204b                      movea.l    a3,a0
[00039cea] 6100 ff3c                 bsr        edit_restart
[00039cee] 4240                      clr.w      d0
create_2:
[00039cf0] 544f                      addq.w     #2,a7
[00039cf2] 265f                      movea.l    (a7)+,a3
[00039cf4] 245f                      movea.l    (a7)+,a2
[00039cf6] 4e75                      rts

cleanup:
[00039cf8] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00039cfc] 594f                      subq.w     #4,a7
[00039cfe] 2448                      movea.l    a0,a2
[00039d00] 3600                      move.w     d0,d3
[00039d02] 266a 0062                 movea.l    98(a2),a3
[00039d06] 220b                      move.l     a3,d1
[00039d08] 674e                      beq.s      cleanup_1
[00039d0a] 286b 000c                 movea.l    12(a3),a4
[00039d0e] 7401                      moveq.l    #1,d2
[00039d10] d4aa 0028                 add.l      40(a2),d2
[00039d14] 2e82                      move.l     d2,(a7)
[00039d16] b4aa 000a                 cmp.l      10(a2),d2
[00039d1a] 6c04                      bge.s      cleanup_2
[00039d1c] 2eaa 000a                 move.l     10(a2),(a7)
cleanup_2:
[00039d20] 43d7                      lea.l      (a7),a1
[00039d22] 7064                      moveq.l    #100,d0
[00039d24] 204b                      movea.l    a3,a0
[00039d26] 2a6c 0008                 movea.l    8(a4),a5
[00039d2a] 4e95                      jsr        (a5)
[00039d2c] 43ea 000a                 lea.l      10(a2),a1
[00039d30] 7065                      moveq.l    #101,d0
[00039d32] 204b                      movea.l    a3,a0
[00039d34] 2a6c 0008                 movea.l    8(a4),a5
[00039d38] 4e95                      jsr        (a5)
[00039d3a] 43ea 0018                 lea.l      24(a2),a1
[00039d3e] 7011                      moveq.l    #17,d0
[00039d40] 204b                      movea.l    a3,a0
[00039d42] 2a6c 0008                 movea.l    8(a4),a5
[00039d46] 4e95                      jsr        (a5)
[00039d48] 4a43                      tst.w      d3
[00039d4a] 670c                      beq.s      cleanup_1
[00039d4c] 93c9                      suba.l     a1,a1
[00039d4e] 7005                      moveq.l    #5,d0
[00039d50] 204b                      movea.l    a3,a0
[00039d52] 2a6c 0008                 movea.l    8(a4),a5
[00039d56] 4e95                      jsr        (a5)
cleanup_1:
[00039d58] 266a 005e                 movea.l    94(a2),a3
[00039d5c] 200b                      move.l     a3,d0
[00039d5e] 673e                      beq.s      cleanup_3
[00039d60] 286b 000c                 movea.l    12(a3),a4
[00039d64] 43ea 0020                 lea.l      32(a2),a1
[00039d68] 204b                      movea.l    a3,a0
[00039d6a] 2a6c 0008                 movea.l    8(a4),a5
[00039d6e] 7064                      moveq.l    #100,d0
[00039d70] 4e95                      jsr        (a5)
[00039d72] 43ea 001c                 lea.l      28(a2),a1
[00039d76] 7011                      moveq.l    #17,d0
[00039d78] 204b                      movea.l    a3,a0
[00039d7a] 2a6c 0008                 movea.l    8(a4),a5
[00039d7e] 4e95                      jsr        (a5)
[00039d80] 43ea 000e                 lea.l      14(a2),a1
[00039d84] 7065                      moveq.l    #101,d0
[00039d86] 204b                      movea.l    a3,a0
[00039d88] 2a6c 0008                 movea.l    8(a4),a5
[00039d8c] 4e95                      jsr        (a5)
[00039d8e] 4a43                      tst.w      d3
[00039d90] 670c                      beq.s      cleanup_3
[00039d92] 93c9                      suba.l     a1,a1
[00039d94] 7005                      moveq.l    #5,d0
[00039d96] 204b                      movea.l    a3,a0
[00039d98] 246c 0008                 movea.l    8(a4),a2
[00039d9c] 4e92                      jsr        (a2)
cleanup_3:
[00039d9e] 584f                      addq.w     #4,a7
[00039da0] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00039da4] 4e75                      rts

horizontal:
[00039da6] 2f0a                      move.l     a2,-(a7)
[00039da8] 594f                      subq.w     #4,a7
[00039daa] 2e80                      move.l     d0,(a7)
[00039dac] 2468 0004                 movea.l    4(a0),a2
[00039db0] 43d7                      lea.l      (a7),a1
[00039db2] 204a                      movea.l    a2,a0
[00039db4] 303c 00d9                 move.w     #$00D9,d0
[00039db8] 6100 f098                 bsr        Auo_editor
[00039dbc] 93c9                      suba.l     a1,a1
[00039dbe] 303c 00ef                 move.w     #$00EF,d0
[00039dc2] 204a                      movea.l    a2,a0
[00039dc4] 6100 f08c                 bsr        Auo_editor
[00039dc8] 41f9 000c 2f4e            lea.l      $000C2F4E,a0
[00039dce] 584f                      addq.w     #4,a7
[00039dd0] 245f                      movea.l    (a7)+,a2
[00039dd2] 4e75                      rts

vertical:
[00039dd4] 2f0a                      move.l     a2,-(a7)

wwputs:
[00039dd6] 594f                      subq.w     #4,a7

uvprintf:
[00039dd8] 2e80                      move.l     d0,(a7)
[00039dda] 2468 0004                 movea.l    4(a0),a2
[00039dde] 43d7                      lea.l      (a7),a1
[00039de0] 204a                      movea.l    a2,a0
[00039de2] 303c 00da                 move.w     #$00DA,d0
[00039de6] 6100 f06a                 bsr        Auo_editor
[00039dea] 93c9                      suba.l     a1,a1
[00039dec] 303c 00ef                 move.w     #$00EF,d0
[00039df0] 204a                      movea.l    a2,a0
[00039df2] 6100 f05e                 bsr        Auo_editor
[00039df6] 41f9 000c 2f4e            lea.l      $000C2F4E,a0
[00039dfc] 584f                      addq.w     #4,a7
[00039dfe] 245f                      movea.l    (a7)+,a2
[00039e00] 4e75                      rts

		.data

proto:
[000c2dac]                           dc.b $00
[000c2dad]                           dc.b $01
[000c2dae]                           dc.b $00
[000c2daf]                           dc.b $01
[000c2db0]                           dc.b $00
[000c2db1]                           dc.b $00
[000c2db2]                           dc.b $00
[000c2db3]                           dc.b $00
[000c2db4]                           dc.b $00
[000c2db5]                           dc.b $00
[000c2db6]                           dc.b $00
[000c2db7]                           dc.b $00
[000c2db8]                           dc.b $00
[000c2db9]                           dc.b $00
[000c2dba]                           dc.b $00
[000c2dbb]                           dc.b $00
[000c2dbc]                           dc.b $00
[000c2dbd]                           dc.b $00
[000c2dbe]                           dc.b $00
[000c2dbf]                           dc.b $01
[000c2dc0]                           dc.b $00
[000c2dc1]                           dc.b $00
[000c2dc2]                           dc.w $0200
[000c2dc4]                           dc.b $00
[000c2dc5]                           dc.b $00
[000c2dc6]                           dc.b $00
[000c2dc7]                           dc.b $00
[000c2dc8]                           dc.b $00
[000c2dc9]                           dc.b $00
[000c2dca]                           dc.b $00
[000c2dcb]                           dc.b $00
[000c2dcc]                           dc.b $00
[000c2dcd]                           dc.b $00
[000c2dce]                           dc.w $0200
[000c2dd0]                           dc.b $00
[000c2dd1]                           dc.b $00
[000c2dd2]                           dc.b $00
[000c2dd3]                           dc.b $01
[000c2dd4]                           dc.b $00
[000c2dd5]                           dc.b $00
[000c2dd6]                           dc.b $00
[000c2dd7]                           dc.b $00
[000c2dd8]                           dc.b $00
[000c2dd9]                           dc.b $00
[000c2dda]                           dc.b $00
[000c2ddb]                           dc.b $00
[000c2ddc]                           dc.b $00
[000c2ddd]                           dc.b $00
[000c2dde]                           dc.b $00
[000c2ddf]                           dc.b $00
[000c2de0]                           dc.b $00
[000c2de1]                           dc.b $00
[000c2de2]                           dc.b $00
[000c2de3]                           dc.b $00
[000c2de4]                           dc.b $00
[000c2de5]                           dc.b $00
[000c2de6]                           dc.b $00
[000c2de7]                           dc.b $00
[000c2de8]                           dc.b $00
[000c2de9]                           dc.b $00
[000c2dea]                           dc.b $00
[000c2deb]                           dc.b $00
[000c2dec]                           dc.b $00
[000c2ded]                           dc.b $00
[000c2dee]                           dc.b $00
[000c2def]                           dc.b $00
[000c2df0]                           dc.b $00
[000c2df1]                           dc.b $00
[000c2df2]                           dc.b $00
[000c2df3]                           dc.b $00
[000c2df4]                           dc.b $00
[000c2df5]                           dc.b $00
[000c2df6]                           dc.b $00
[000c2df7]                           dc.b $00
[000c2df8]                           dc.b $00
[000c2df9]                           dc.b $00
[000c2dfa]                           dc.b $00
[000c2dfb]                           dc.b $00
[000c2dfc]                           dc.b $00
[000c2dfd]                           dc.b $00
[000c2dfe]                           dc.b $00
[000c2dff]                           dc.b $00
[000c2e00]                           dc.b $00
[000c2e01]                           dc.b $00
[000c2e02]                           dc.b $00
[000c2e03]                           dc.b $00
[000c2e04]                           dc.b $00
[000c2e05]                           dc.b $00
[000c2e06]                           dc.b $00
[000c2e07]                           dc.b $00
[000c2e08]                           dc.b $00
[000c2e09]                           dc.b $00
[000c2e0a]                           dc.b $00
[000c2e0b]                           dc.b $00
[000c2e0c]                           dc.b $00
[000c2e0d]                           dc.b $00
[000c2e0e]                           dc.b $00
[000c2e0f]                           dc.b $00
[000c2e10]                           dc.b $00
[000c2e11]                           dc.b $00
[000c2e12]                           dc.b $00
[000c2e13]                           dc.b $00
[000c2e14]                           dc.b $00
[000c2e15]                           dc.b $00
[000c2e16]                           dc.b $00
[000c2e17]                           dc.b $00
[000c2e18]                           dc.b $00
[000c2e19]                           dc.b $00
[000c2e1a]                           dc.b $00
[000c2e1b]                           dc.b $00
[000c2e1c]                           dc.b $00
[000c2e1d]                           dc.b $00
[000c2e1e]                           dc.b $00
[000c2e1f]                           dc.b $00
[000c2e20]                           dc.b $00
[000c2e21]                           dc.b $00
[000c2e22]                           dc.b $00
[000c2e23]                           dc.b $00
[000c2e24]                           dc.b $00
[000c2e25]                           dc.b $00
[000c2e26]                           dc.b $00
[000c2e27]                           dc.b $00
[000c2e28]                           dc.b $00
[000c2e29]                           dc.b $00
[000c2e2a]                           dc.b $00
[000c2e2b]                           dc.b $00
[000c2e2c]                           dc.b $00
[000c2e2d]                           dc.b $00
[000c2e2e]                           dc.b $00
[000c2e2f]                           dc.b $00
[000c2e30]                           dc.b $00
[000c2e31]                           dc.b $00
[000c2e32]                           dc.b $00
[000c2e33]                           dc.b $00
[000c2e34]                           dc.b $00
[000c2e35]                           dc.b $00
[000c2e36]                           dc.b $00
[000c2e37]                           dc.b $00
[000c2e38]                           dc.b $00
[000c2e39]                           dc.b $00
[000c2e3a]                           dc.b $00
[000c2e3b]                           dc.b $00
[000c2e3c]                           dc.b $00
[000c2e3d]                           dc.b $00
[000c2e3e]                           dc.b $00
[000c2e3f]                           dc.b $00
[000c2e40]                           dc.b $00
[000c2e41]                           dc.b $00
[000c2e42]                           dc.b $00
[000c2e43]                           dc.b $00
[000c2e44]                           dc.b $00
[000c2e45]                           dc.b $00
[000c2e46]                           dc.b $00
[000c2e47]                           dc.b $00
[000c2e48]                           dc.b $00
[000c2e49]                           dc.b $00
[000c2e4a]                           dc.b $00
[000c2e4b]                           dc.b $00
[000c2e4c]                           dc.b ' ',$09,'=+-*/()!&|[]{}<>,.;:'
[000c2e62]                           dc.w $dd24
[000c2e64]                           dc.b '%?`',$27,'^#~@\"',0
[000c2e6f]                           dc.b $00
[000c2e70]                           dc.b $00
[000c2e71]                           dc.b $00
[000c2e72]                           dc.b $00
[000c2e73]                           dc.b $00
[000c2e74]                           dc.b $00
[000c2e75]                           dc.b $00
[000c2e76]                           dc.b $00
[000c2e77]                           dc.b $00
[000c2e78]                           dc.b $00
[000c2e79]                           dc.b $00
[000c2e7a]                           dc.b $00
[000c2e7b]                           dc.b $00
[000c2e7c]                           dc.b $00
[000c2e7d]                           dc.b $00
[000c2e7e]                           dc.b $00
[000c2e7f]                           dc.b $00
[000c2e80]                           dc.b $00
[000c2e81]                           dc.b $00
[000c2e82]                           dc.b $00
[000c2e83]                           dc.b $00
[000c2e84]                           dc.b $00
[000c2e85]                           dc.b $00
[000c2e86]                           dc.b $00
[000c2e87]                           dc.b $00
[000c2e88]                           dc.b $00
[000c2e89]                           dc.b $00
[000c2e8a]                           dc.b $00
[000c2e8b]                           dc.b $00
[000c2e8c]                           dc.b $00
[000c2e8d]                           dc.b $00
[000c2e8e]                           dc.b $00
[000c2e8f]                           dc.b $00
[000c2e90]                           dc.b $00
[000c2e91]                           dc.b $00
[000c2e92]                           dc.b $00
[000c2e93]                           dc.b $00
[000c2e94]                           dc.b $00
[000c2e95]                           dc.b $00
[000c2e96]                           dc.b $00
[000c2e97]                           dc.b $00
[000c2e98]                           dc.b $00
[000c2e99]                           dc.b $00
[000c2e9a]                           dc.b $00
[000c2e9b]                           dc.b $00
[000c2e9c]                           dc.b $00
[000c2e9d]                           dc.b $00
[000c2e9e]                           dc.b $00
[000c2e9f]                           dc.b $00
[000c2ea0]                           dc.b $00
[000c2ea1]                           dc.b $00
[000c2ea2]                           dc.b $00
[000c2ea3]                           dc.b $00
[000c2ea4]                           dc.b $00
[000c2ea5]                           dc.b $00
[000c2ea6]                           dc.b $00
[000c2ea7]                           dc.b $00
[000c2ea8]                           dc.b $00
[000c2ea9]                           dc.b $00
[000c2eaa]                           dc.b $00
[000c2eab]                           dc.b $00
[000c2eac]                           dc.b $00
[000c2ead]                           dc.b $00
[000c2eae]                           dc.b $00
[000c2eaf]                           dc.b $00
[000c2eb0]                           dc.b $00
[000c2eb1]                           dc.b $00
[000c2eb2]                           dc.b $00
[000c2eb3]                           dc.b $00
[000c2eb4]                           dc.b $00
[000c2eb5]                           dc.b $00
[000c2eb6]                           dc.b $00
[000c2eb7]                           dc.b $00
[000c2eb8]                           dc.b $00
[000c2eb9]                           dc.b $00
[000c2eba]                           dc.b $00
[000c2ebb]                           dc.b $00
[000c2ebc]                           dc.b $00
[000c2ebd]                           dc.b $00
[000c2ebe]                           dc.b $00
[000c2ebf]                           dc.b $00
[000c2ec0]                           dc.b $00
[000c2ec1]                           dc.b $00
[000c2ec2]                           dc.b $00
[000c2ec3]                           dc.b $00
[000c2ec4]                           dc.b $00
[000c2ec5]                           dc.b $00
[000c2ec6]                           dc.b $00
[000c2ec7]                           dc.b $00
[000c2ec8]                           dc.b $00
[000c2ec9]                           dc.b $00
[000c2eca]                           dc.b $00
[000c2ecb]                           dc.b $00
[000c2ecc]                           dc.b $00
[000c2ecd]                           dc.b $00
[000c2ece]                           dc.b $00
[000c2ecf]                           dc.b $00
[000c2ed0]                           dc.b $00
[000c2ed1]                           dc.b $00
[000c2ed2]                           dc.b $00
[000c2ed3]                           dc.b $00
[000c2ed4]                           dc.b $00
[000c2ed5]                           dc.b $00
[000c2ed6]                           dc.b $00
[000c2ed7]                           dc.b $00
[000c2ed8]                           dc.b $00
[000c2ed9]                           dc.b $00
[000c2eda]                           dc.b $00
[000c2edb]                           dc.b $00
[000c2edc]                           dc.b $00
[000c2edd]                           dc.b $00
[000c2ede]                           dc.b $00
[000c2edf]                           dc.b $00
[000c2ee0]                           dc.b $00
[000c2ee1]                           dc.b $00
[000c2ee2]                           dc.b $00
[000c2ee3]                           dc.b $00
[000c2ee4]                           dc.b $00
[000c2ee5]                           dc.b $00
[000c2ee6]                           dc.b $00
[000c2ee7]                           dc.b $00
[000c2ee8]                           dc.b $00
[000c2ee9]                           dc.b $00
[000c2eea]                           dc.b $00
[000c2eeb]                           dc.b $00
[000c2eec]                           dc.b $00
[000c2eed]                           dc.b $00
[000c2eee]                           dc.b $00
[000c2eef]                           dc.b $00
[000c2ef0]                           dc.b $00
[000c2ef1]                           dc.b $00
[000c2ef2]                           dc.b $00
[000c2ef3]                           dc.b $00
[000c2ef4]                           dc.b $00
[000c2ef5]                           dc.b $00
[000c2ef6]                           dc.b $00
[000c2ef7]                           dc.b $00
[000c2ef8]                           dc.b $00
[000c2ef9]                           dc.b $00
[000c2efa]                           dc.b $00
[000c2efb]                           dc.b $00
[000c2efc]                           dc.b $00
[000c2efd]                           dc.b $00
[000c2efe]                           dc.b $00
[000c2eff]                           dc.b $00
[000c2f00]                           dc.b $00
[000c2f01]                           dc.b $00
[000c2f02]                           dc.b $00
[000c2f03]                           dc.b $00
[000c2f04]                           dc.b $00
[000c2f05]                           dc.b $00
[000c2f06]                           dc.b $00
[000c2f07]                           dc.b $00
[000c2f08]                           dc.b $00
[000c2f09]                           dc.b $00
[000c2f0a]                           dc.b $00
[000c2f0b]                           dc.b $00
[000c2f0c]                           dc.b $00
[000c2f0d]                           dc.b $00
[000c2f0e]                           dc.b $00
[000c2f0f]                           dc.b $00
[000c2f10]                           dc.b $00
[000c2f11]                           dc.b $00
[000c2f12]                           dc.b $00
[000c2f13]                           dc.b $00
[000c2f14]                           dc.b $00
[000c2f15]                           dc.b $00
[000c2f16]                           dc.b $00
[000c2f17]                           dc.b $00
[000c2f18]                           dc.b $00
[000c2f19]                           dc.b $00
[000c2f1a]                           dc.b $00
[000c2f1b]                           dc.b $00
[000c2f1c]                           dc.b $00
[000c2f1d]                           dc.b $00
[000c2f1e]                           dc.b $00
[000c2f1f]                           dc.b $00
[000c2f20]                           dc.b $00
[000c2f21]                           dc.b $00
[000c2f22]                           dc.b $00
[000c2f23]                           dc.b $00
[000c2f24]                           dc.b $00
[000c2f25]                           dc.b $00
[000c2f26]                           dc.b $00
[000c2f27]                           dc.b $00
[000c2f28]                           dc.b $00
[000c2f29]                           dc.b $00
[000c2f2a]                           dc.b $00
[000c2f2b]                           dc.b $00
[000c2f2c]                           dc.b $00
[000c2f2d]                           dc.b $00
[000c2f2e]                           dc.b $00
[000c2f2f]                           dc.b $00
[000c2f30]                           dc.b $00
[000c2f31]                           dc.b $00
[000c2f32]                           dc.b $00
[000c2f33]                           dc.b $00
[000c2f34]                           dc.b $00
[000c2f35]                           dc.b $00
[000c2f36]                           dc.b $00
[000c2f37]                           dc.b $00
[000c2f38]                           dc.b $00
[000c2f39]                           dc.b $00
[000c2f3a]                           dc.b $00
[000c2f3b]                           dc.b $00
[000c2f3c]                           dc.b $00
[000c2f3d]                           dc.b $00
[000c2f3e]                           dc.b $00
[000c2f3f]                           dc.b $00
[000c2f40]                           dc.b $00
[000c2f41]                           dc.b $00
[000c2f42]                           dc.b $00
[000c2f43]                           dc.b $00
[000c2f44]                           dc.b $00
[000c2f45]                           dc.b $00
[000c2f46]                           dc.b $00
[000c2f47]                           dc.b $00
[000c2f48]                           dc.b $00
[000c2f49]                           dc.b $00
[000c2f4a]                           dc.b $00
[000c2f4b]                           dc.b $00
[000c2f4c]                           dc.b $00
[000c2f4d]                           dc.b $00
[000c2f4e]                           dc.b $00
[000c2f4f]                           dc.b 'Nichts gefunden.',0
[000c2f60]                           dc.b 'Keine Klammer.',0
		.even

	.bss

buffer: ds.b 1024
line: ds.b 514
