Ash_printSetIcon:
[00061360] 43f9 000d 5bee            lea.l      $000D5BEE,a1
[00061366] 2348 005a                 move.l     a0,90(a1)
[0006136a] 2208                      move.l     a0,d1
[0006136c] 6608                      bne.s      $00061376
[0006136e] 0269 fffc 0054            andi.w     #$FFFC,84(a1)
[00061374] 4e75                      rts
[00061376] 0069 0001 0054            ori.w      #$0001,84(a1)
[0006137c] 4a40                      tst.w      d0
[0006137e] 6708                      beq.s      $00061388
[00061380] 0069 0002 0054            ori.w      #$0002,84(a1)
[00061386] 4e75                      rts
[00061388] 0269 fffd 0054            andi.w     #$FFFD,84(a1)
[0006138e] 4e75                      rts
Ash_print:
[00061390] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[00061394] 2648                      movea.l    a0,a3
[00061396] 3800                      move.w     d0,d4
[00061398] 3a01                      move.w     d1,d5
[0006139a] 3c02                      move.w     d2,d6
[0006139c] 2a49                      movea.l    a1,a5
[0006139e] 286f 0024                 movea.l    36(a7),a4
[000613a2] 76ff                      moveq.l    #-1,d3
[000613a4] 4eb9 0006 1506            jsr        $00061506
[000613aa] 4a40                      tst.w      d0
[000613ac] 670e                      beq.s      $000613BC
[000613ae] 7026                      moveq.l    #38,d0
[000613b0] 4eb9 0004 7cc8            jsr        Ax_malloc
[000613b6] 2448                      movea.l    a0,a2
[000613b8] 200a                      move.l     a2,d0
[000613ba] 6606                      bne.s      $000613C2
[000613bc] 70ff                      moveq.l    #-1,d0
[000613be] 6000 0140                 bra        $00061500
[000613c2] 42aa 000c                 clr.l      12(a2)
[000613c6] 254b 0008                 move.l     a3,8(a2)
[000613ca] 3544 0004                 move.w     d4,4(a2)
[000613ce] 3545 0006                 move.w     d5,6(a2)
[000613d2] 3546 0010                 move.w     d6,16(a2)
[000613d6] 204d                      movea.l    a5,a0
[000613d8] 4eb9 0004 36d6            jsr        Ast_create
[000613de] 2488                      move.l     a0,(a2)
[000613e0] 254c 001e                 move.l     a4,30(a2)
[000613e4] 200c                      move.l     a4,d0
[000613e6] 6604                      bne.s      $000613EC
[000613e8] 7201                      moveq.l    #1,d1
[000613ea] 6002                      bra.s      $000613EE
[000613ec] 4241                      clr.w      d1
[000613ee] 3541 0018                 move.w     d1,24(a2)
[000613f2] 426a 001c                 clr.w      28(a2)
[000613f6] 426a 001a                 clr.w      26(a2)
[000613fa] 204a                      movea.l    a2,a0
[000613fc] 2279 000d 5bf6            movea.l    $000D5BF6,a1
[00061402] 4e91                      jsr        (a1)
[00061404] 2a48                      movea.l    a0,a5
[00061406] 200d                      move.l     a5,d0
[00061408] 6600 00ac                 bne        $000614B6
[0006140c] 220c                      move.l     a4,d1
[0006140e] 6600 0084                 bne        $00061494
[00061412] 2279 0010 1f12            movea.l    ACSblk,a1
[00061418] 2669 023c                 movea.l    572(a1),a3
[0006141c] 342b 000e                 move.w     14(a3),d2
[00061420] c47c 0100                 and.w      #$0100,d2
[00061424] 6604                      bne.s      $0006142A
[00061426] 7001                      moveq.l    #1,d0
[00061428] 6002                      bra.s      $0006142C
[0006142a] 4240                      clr.w      d0
[0006142c] 2079 000d 99d6            movea.l    $000D99D6,a0
[00061432] 4eb9 0006 ee9e            jsr        $0006EE9E
[00061438] 2548 000c                 move.l     a0,12(a2)
[0006143c] 2008                      move.l     a0,d0
[0006143e] 6754                      beq.s      $00061494
[00061440] 204a                      movea.l    a2,a0
[00061442] 4eb9 0006 155e            jsr        $0006155E
[00061448] 2548 0008                 move.l     a0,8(a2)
[0006144c] 2008                      move.l     a0,d0
[0006144e] 6732                      beq.s      $00061482
[00061450] 4eb9 0004 9940            jsr        $00049940
[00061456] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0006145c] 2f12                      move.l     (a2),-(a7)
[0006145e] 302a 0010                 move.w     16(a2),d0
[00061462] 226a 0008                 movea.l    8(a2),a1
[00061466] 206a 000c                 movea.l    12(a2),a0
[0006146a] 4eb9 0006 efb8            jsr        $0006EFB8
[00061470] 504f                      addq.w     #8,a7
[00061472] 3540 001a                 move.w     d0,26(a2)
[00061476] 5540                      subq.w     #2,d0
[00061478] 6604                      bne.s      $0006147E
[0006147a] 7601                      moveq.l    #1,d3
[0006147c] 6002                      bra.s      $00061480
[0006147e] 4243                      clr.w      d3
[00061480] 6002                      bra.s      $00061484
[00061482] 76ff                      moveq.l    #-1,d3
[00061484] 2279 000d 99d6            movea.l    $000D99D6,a1
[0006148a] 206a 000c                 movea.l    12(a2),a0
[0006148e] 4eb9 0006 eef8            jsr        $0006EEF8
[00061494] 302a 0012                 move.w     18(a2),d0
[00061498] 670a                      beq.s      $000614A4
[0006149a] 206a 0008                 movea.l    8(a2),a0
[0006149e] 4eb9 0004 7e26            jsr        $00047E26
[000614a4] 2052                      movea.l    (a2),a0
[000614a6] 4eb9 0004 371c            jsr        $0004371C
[000614ac] 204a                      movea.l    a2,a0
[000614ae] 4eb9 0004 7e26            jsr        $00047E26
[000614b4] 6048                      bra.s      $000614FE
[000614b6] 200c                      move.l     a4,d0
[000614b8] 6624                      bne.s      $000614DE
[000614ba] 357c 0001 0018            move.w     #$0001,24(a2)
[000614c0] 204d                      movea.l    a5,a0
[000614c2] 4eb9 0005 1292            jsr        $00051292
[000614c8] 3600                      move.w     d0,d3
[000614ca] 5240                      addq.w     #1,d0
[000614cc] 6d24                      blt.s      $000614F2
[000614ce] 0c6a 0002 001a            cmpi.w     #$0002,26(a2)
[000614d4] 6604                      bne.s      $000614DA
[000614d6] 7601                      moveq.l    #1,d3
[000614d8] 6002                      bra.s      $000614DC
[000614da] 4243                      clr.w      d3
[000614dc] 6014                      bra.s      $000614F2
[000614de] 426a 0018                 clr.w      24(a2)
[000614e2] 204d                      movea.l    a5,a0
[000614e4] 226d 000c                 movea.l    12(a5),a1
[000614e8] 4e91                      jsr        (a1)
[000614ea] 4a40                      tst.w      d0
[000614ec] 6704                      beq.s      $000614F2
[000614ee] 7602                      moveq.l    #2,d3
[000614f0] 600c                      bra.s      $000614FE
[000614f2] 93c9                      suba.l     a1,a1
[000614f4] 7002                      moveq.l    #2,d0
[000614f6] 204d                      movea.l    a5,a0
[000614f8] 246d 0004                 movea.l    4(a5),a2
[000614fc] 4e92                      jsr        (a2)
[000614fe] 3003                      move.w     d3,d0
[00061500] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[00061504] 4e75                      rts
hasPdlg:
[00061506] 2f0a                      move.l     a2,-(a7)
[00061508] 514f                      subq.w     #8,a7
[0006150a] 45f9 000d 5c90            lea.l      $000D5C90,a2
[00061510] 3012                      move.w     (a2),d0
[00061512] 6a3a                      bpl.s      $0006154E
[00061514] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0006151a] 486f 0004                 pea.l      4(a7)
[0006151e] 486f 000a                 pea.l      10(a7)
[00061522] 43ef 0010                 lea.l      16(a7),a1
[00061526] 41ef 0012                 lea.l      18(a7),a0
[0006152a] 7007                      moveq.l    #7,d0
[0006152c] 4eb9 0006 aad2            jsr        $0006AAD2
[00061532] 4fef 000c                 lea.l      12(a7),a7
[00061536] 4a40                      tst.w      d0
[00061538] 6712                      beq.s      $0006154C
[0006153a] 7010                      moveq.l    #16,d0
[0006153c] c06f 0006                 and.w      6(a7),d0
[00061540] 6704                      beq.s      $00061546
[00061542] 7201                      moveq.l    #1,d1
[00061544] 6002                      bra.s      $00061548
[00061546] 4241                      clr.w      d1
[00061548] 3481                      move.w     d1,(a2)
[0006154a] 6002                      bra.s      $0006154E
[0006154c] 4252                      clr.w      (a2)
[0006154e] 3012                      move.w     (a2),d0
[00061550] 6704                      beq.s      $00061556
[00061552] 7001                      moveq.l    #1,d0
[00061554] 6002                      bra.s      $00061558
[00061556] 4240                      clr.w      d0
[00061558] 504f                      addq.w     #8,a7
[0006155a] 245f                      movea.l    (a7)+,a2
[0006155c] 4e75                      rts
pdlgGetSettings:
[0006155e] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[00061562] 2448                      movea.l    a0,a2
[00061564] 266a 000c                 movea.l    12(a2),a3
[00061568] 286a 0008                 movea.l    8(a2),a4
[0006156c] 4bf9 000d 99d6            lea.l      $000D99D6,a5
[00061572] 200b                      move.l     a3,d0
[00061574] 6614                      bne.s      $0006158A
[00061576] 2055                      movea.l    (a5),a0
[00061578] 4240                      clr.w      d0
[0006157a] 4eb9 0006 ee9e            jsr        $0006EE9E
[00061580] 2c48                      movea.l    a0,a6
[00061582] 200e                      move.l     a6,d0
[00061584] 6760                      beq.s      $000615E6
[00061586] 264e                      movea.l    a6,a3
[00061588] 6002                      bra.s      $0006158C
[0006158a] 9dce                      suba.l     a6,a6
[0006158c] 200c                      move.l     a4,d0
[0006158e] 6604                      bne.s      $00061594
[00061590] 7201                      moveq.l    #1,d1
[00061592] 6002                      bra.s      $00061596
[00061594] 4241                      clr.w      d1
[00061596] 3541 0012                 move.w     d1,18(a2)
[0006159a] 4a41                      tst.w      d1
[0006159c] 6736                      beq.s      $000615D4
[0006159e] 2055                      movea.l    (a5),a0
[000615a0] 4eb9 0006 f0fc            jsr        $0006F0FC
[000615a6] 2600                      move.l     d0,d3
[000615a8] b0bc 0000 0178            cmp.l      #$00000178,d0
[000615ae] 6302                      bls.s      $000615B2
[000615b0] 6006                      bra.s      $000615B8
[000615b2] 203c 0000 0178            move.l     #$00000178,d0
[000615b8] 4eb9 0004 7cc8            jsr        Ax_malloc
[000615be] 2848                      movea.l    a0,a4
[000615c0] 200c                      move.l     a4,d0
[000615c2] 6726                      beq.s      $000615EA
[000615c4] 2f15                      move.l     (a5),-(a7)
[000615c6] 224c                      movea.l    a4,a1
[000615c8] 204b                      movea.l    a3,a0
[000615ca] 4eb9 0006 ef52            jsr        $0006EF52
[000615d0] 584f                      addq.w     #4,a7
[000615d2] 6016                      bra.s      $000615EA
[000615d4] 2f15                      move.l     (a5),-(a7)
[000615d6] 224c                      movea.l    a4,a1
[000615d8] 204b                      movea.l    a3,a0
[000615da] 4eb9 0006 f3c4            jsr        $0006F3C4
[000615e0] 584f                      addq.w     #4,a7
[000615e2] 4a40                      tst.w      d0
[000615e4] 6604                      bne.s      $000615EA
[000615e6] 91c8                      suba.l     a0,a0
[000615e8] 6010                      bra.s      $000615FA
[000615ea] 200e                      move.l     a6,d0
[000615ec] 670a                      beq.s      $000615F8
[000615ee] 2255                      movea.l    (a5),a1
[000615f0] 204e                      movea.l    a6,a0
[000615f2] 4eb9 0006 eef8            jsr        $0006EEF8
[000615f8] 204c                      movea.l    a4,a0
[000615fa] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[000615fe] 4e75                      rts
pdlgClose:
[00061600] 48e7 0038                 movem.l    a2-a4,-(a7)
[00061604] 514f                      subq.w     #8,a7
[00061606] 2448                      movea.l    a0,a2
[00061608] 266a 0022                 movea.l    34(a2),a3
[0006160c] 286a 001e                 movea.l    30(a2),a4
[00061610] 200b                      move.l     a3,d0
[00061612] 672a                      beq.s      $0006163E
[00061614] 322b 0020                 move.w     32(a3),d1
[00061618] 6b24                      bmi.s      $0006163E
[0006161a] 242a 000c                 move.l     12(a2),d2
[0006161e] 671e                      beq.s      $0006163E
[00061620] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[00061626] 486b 002e                 pea.l      46(a3)
[0006162a] 43eb 002c                 lea.l      44(a3),a1
[0006162e] 2042                      movea.l    d2,a0
[00061630] 4eb9 0006 ee1e            jsr        $0006EE1E
[00061636] 504f                      addq.w     #8,a7
[00061638] 377c ffff 0020            move.w     #$FFFF,32(a3)
[0006163e] 200c                      move.l     a4,d0
[00061640] 6724                      beq.s      $00061666
[00061642] 222a 0008                 move.l     8(a2),d1
[00061646] 671e                      beq.s      $00061666
[00061648] 2e81                      move.l     d1,(a7)
[0006164a] 3f6a 0010 0004            move.w     16(a2),4(a7)
[00061650] 3f6a 001a 0006            move.w     26(a2),6(a7)
[00061656] 43d7                      lea.l      (a7),a1
[00061658] 204c                      movea.l    a4,a0
[0006165a] 266c 0004                 movea.l    4(a4),a3
[0006165e] 7031                      moveq.l    #49,d0
[00061660] 4e93                      jsr        (a3)
[00061662] 42aa 001e                 clr.l      30(a2)
[00061666] 7001                      moveq.l    #1,d0
[00061668] 504f                      addq.w     #8,a7
[0006166a] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0006166e] 4e75                      rts
pdlgMessage:
[00061670] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00061674] 554f                      subq.w     #2,a7
[00061676] 2448                      movea.l    a0,a2
[00061678] 2649                      movea.l    a1,a3
[0006167a] 226a 0022                 movea.l    34(a2),a1
[0006167e] 3769 0020 0026            move.w     32(a1),38(a3)
[00061684] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0006168a] 486f 0004                 pea.l      4(a7)
[0006168e] 2f0b                      move.l     a3,-(a7)
[00061690] 226a 0008                 movea.l    8(a2),a1
[00061694] 206a 000c                 movea.l    12(a2),a0
[00061698] 4eb9 0006 f028            jsr        $0006F028
[0006169e] 4fef 000c                 lea.l      12(a7),a7
[000616a2] 3600                      move.w     d0,d3
[000616a4] 4a40                      tst.w      d0
[000616a6] 6636                      bne.s      $000616DE
[000616a8] 322a 001c                 move.w     28(a2),d1
[000616ac] 6604                      bne.s      $000616B2
[000616ae] 3557 001a                 move.w     (a7),26(a2)
[000616b2] 357c 0001 001c            move.w     #$0001,28(a2)
[000616b8] 302a 0018                 move.w     24(a2),d0
[000616bc] 670e                      beq.s      $000616CC
[000616be] 2079 0010 1f12            movea.l    ACSblk,a0
[000616c4] 317c 0001 0268            move.w     #$0001,616(a0)
[000616ca] 6012                      bra.s      $000616DE
[000616cc] 93c9                      suba.l     a1,a1
[000616ce] 7002                      moveq.l    #2,d0
[000616d0] 206a 0022                 movea.l    34(a2),a0
[000616d4] 266a 0022                 movea.l    34(a2),a3
[000616d8] 266b 0004                 movea.l    4(a3),a3
[000616dc] 4e93                      jsr        (a3)
[000616de] 3003                      move.w     d3,d0
[000616e0] 544f                      addq.w     #2,a7
[000616e2] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000616e6] 4e75                      rts
PrintCreate:
[000616e8] 48e7 0038                 movem.l    a2-a4,-(a7)
[000616ec] 2448                      movea.l    a0,a2
[000616ee] 2008                      move.l     a0,d0
[000616f0] 6762                      beq.s      $00061754
[000616f2] 2079 000d 99d6            movea.l    $000D99D6,a0
[000616f8] 2f08                      move.l     a0,-(a7)
[000616fa] 2279 0010 1f12            movea.l    ACSblk,a1
[00061700] 2069 023c                 movea.l    572(a1),a0
[00061704] 3228 000e                 move.w     14(a0),d1
[00061708] c27c 0100                 and.w      #$0100,d1
[0006170c] 6604                      bne.s      $00061712
[0006170e] 7001                      moveq.l    #1,d0
[00061710] 6002                      bra.s      $00061714
[00061712] 4240                      clr.w      d0
[00061714] 205f                      movea.l    (a7)+,a0
[00061716] 4eb9 0006 ee9e            jsr        $0006EE9E
[0006171c] 2548 000c                 move.l     a0,12(a2)
[00061720] 2008                      move.l     a0,d0
[00061722] 6730                      beq.s      $00061754
[00061724] 204a                      movea.l    a2,a0
[00061726] 6100 fe36                 bsr        $0006155E
[0006172a] 2548 0008                 move.l     a0,8(a2)
[0006172e] 2008                      move.l     a0,d0
[00061730] 6712                      beq.s      $00061744
[00061732] 41f9 000d 5bee            lea.l      $000D5BEE,a0
[00061738] 4eb9 0004 f41a            jsr        $0004F41A
[0006173e] 2648                      movea.l    a0,a3
[00061740] 200b                      move.l     a3,d0
[00061742] 6614                      bne.s      $00061758
[00061744] 2279 000d 99d6            movea.l    $000D99D6,a1
[0006174a] 206a 000c                 movea.l    12(a2),a0
[0006174e] 4eb9 0006 eef8            jsr        $0006EEF8
[00061754] 91c8                      suba.l     a0,a0
[00061756] 6024                      bra.s      $0006177C
[00061758] 2052                      movea.l    (a2),a0
[0006175a] 4eb9 0004 36d6            jsr        Ast_create
[00061760] 2848                      movea.l    a0,a4
[00061762] 200c                      move.l     a4,d0
[00061764] 670e                      beq.s      $00061774
[00061766] 206b 004a                 movea.l    74(a3),a0
[0006176a] 4eb9 0004 371c            jsr        $0004371C
[00061770] 274c 004a                 move.l     a4,74(a3)
[00061774] 268a                      move.l     a2,(a3)
[00061776] 254b 0022                 move.l     a3,34(a2)
[0006177a] 204b                      movea.l    a3,a0
[0006177c] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00061780] 4e75                      rts
PrintService:
[00061782] 2f0a                      move.l     a2,-(a7)
[00061784] 2f0b                      move.l     a3,-(a7)
[00061786] 2448                      movea.l    a0,a2
[00061788] 2650                      movea.l    (a0),a3
[0006178a] 3200                      move.w     d0,d1
[0006178c] 5541                      subq.w     #2,d1
[0006178e] 6702                      beq.s      $00061792
[00061790] 6056                      bra.s      $000617E8
[00061792] 302a 0056                 move.w     86(a2),d0
[00061796] c07c 0200                 and.w      #$0200,d0
[0006179a] 6648                      bne.s      $000617E4
[0006179c] 006a 0200 0056            ori.w      #$0200,86(a2)
[000617a2] 204b                      movea.l    a3,a0
[000617a4] 6100 fe5a                 bsr        $00061600
[000617a8] 202b 000c                 move.l     12(a3),d0
[000617ac] 670e                      beq.s      $000617BC
[000617ae] 2279 000d 99d6            movea.l    $000D99D6,a1
[000617b4] 2040                      movea.l    d0,a0
[000617b6] 4eb9 0006 eef8            jsr        $0006EEF8
[000617bc] 302b 0012                 move.w     18(a3),d0
[000617c0] 670a                      beq.s      $000617CC
[000617c2] 206b 0008                 movea.l    8(a3),a0
[000617c6] 4eb9 0004 7e26            jsr        $00047E26
[000617cc] 2053                      movea.l    (a3),a0
[000617ce] 4eb9 0004 371c            jsr        $0004371C
[000617d4] 204b                      movea.l    a3,a0
[000617d6] 4eb9 0004 7e26            jsr        $00047E26
[000617dc] 204a                      movea.l    a2,a0
[000617de] 4eb9 0005 0330            jsr        $00050330
[000617e4] 7001                      moveq.l    #1,d0
[000617e6] 6002                      bra.s      $000617EA
[000617e8] 4240                      clr.w      d0
[000617ea] 265f                      movea.l    (a7)+,a3
[000617ec] 245f                      movea.l    (a7)+,a2
[000617ee] 4e75                      rts
PrintOpen:
[000617f0] 2f0a                      move.l     a2,-(a7)
[000617f2] 2f0b                      move.l     a3,-(a7)
[000617f4] 2448                      movea.l    a0,a2
[000617f6] 2650                      movea.l    (a0),a3
[000617f8] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[000617fe] 2f13                      move.l     (a3),-(a7)
[00061800] 342b 0006                 move.w     6(a3),d2
[00061804] 322b 0004                 move.w     4(a3),d1
[00061808] 302b 0010                 move.w     16(a3),d0
[0006180c] 226b 0008                 movea.l    8(a3),a1
[00061810] 206b 000c                 movea.l    12(a3),a0
[00061814] 4eb9 0006 f1b0            jsr        $0006F1B0
[0006181a] 504f                      addq.w     #8,a7
[0006181c] 3540 0020                 move.w     d0,32(a2)
[00061820] 4a40                      tst.w      d0
[00061822] 6f6c                      ble.s      $00061890
[00061824] 486a 002a                 pea.l      42(a2)
[00061828] 486a 0028                 pea.l      40(a2)
[0006182c] 486a 0026                 pea.l      38(a2)
[00061830] 486a 0024                 pea.l      36(a2)
[00061834] 7205                      moveq.l    #5,d1
[00061836] 4eb9 0007 14ea            jsr        $000714EA
[0006183c] 4fef 0010                 lea.l      16(a7),a7
[00061840] 486a 003a                 pea.l      58(a2)
[00061844] 486a 0038                 pea.l      56(a2)
[00061848] 486a 0036                 pea.l      54(a2)
[0006184c] 486a 0034                 pea.l      52(a2)
[00061850] 7204                      moveq.l    #4,d1
[00061852] 302a 0020                 move.w     32(a2),d0
[00061856] 4eb9 0007 14ea            jsr        $000714EA
[0006185c] 4fef 0010                 lea.l      16(a7),a7
[00061860] 206a 0014                 movea.l    20(a2),a0
[00061864] 4268 0010                 clr.w      16(a0)
[00061868] 206a 0014                 movea.l    20(a2),a0
[0006186c] 4268 0012                 clr.w      18(a0)
[00061870] 206a 0014                 movea.l    20(a2),a0
[00061874] 316a 0038 0014            move.w     56(a2),20(a0)
[0006187a] 206a 0014                 movea.l    20(a2),a0
[0006187e] 316a 003a 0016            move.w     58(a2),22(a0)
[00061884] 204a                      movea.l    a2,a0
[00061886] 4eb9 0004 f9dc            jsr        $0004F9DC
[0006188c] 4240                      clr.w      d0
[0006188e] 6002                      bra.s      $00061892
[00061890] 70ff                      moveq.l    #-1,d0
[00061892] 265f                      movea.l    (a7)+,a3
[00061894] 245f                      movea.l    (a7)+,a2
[00061896] 4e75                      rts
PrintClosed:
[00061898] 2f0a                      move.l     a2,-(a7)
[0006189a] 2f0c                      move.l     a4,-(a7)
[0006189c] 4fef ffc0                 lea.l      -64(a7),a7
[000618a0] 2450                      movea.l    (a0),a2
[000618a2] 41f9 000d 5c92            lea.l      $000D5C92,a0
[000618a8] 43d7                      lea.l      (a7),a1
[000618aa] 700f                      moveq.l    #15,d0
[000618ac] 22d8                      move.l     (a0)+,(a1)+
[000618ae] 51c8 fffc                 dbf        d0,$000618AC
[000618b2] 49f9 0010 1f12            lea.l      ACSblk,a4
[000618b8] 2054                      movea.l    (a4),a0
[000618ba] 3f68 0262 0002            move.w     610(a0),2(a7)
[000618c0] 3f68 0264 0004            move.w     612(a0),4(a7)
[000618c6] 3f68 02ca 0006            move.w     714(a0),6(a7)
[000618cc] 3028 02ce                 move.w     718(a0),d0
[000618d0] 4eb9 0004 1ede            jsr        $00041EDE
[000618d6] 3f40 0008                 move.w     d0,8(a7)
[000618da] 2054                      movea.l    (a4),a0
[000618dc] 3028 02ce                 move.w     718(a0),d0
[000618e0] 4eb9 0004 1ec2            jsr        $00041EC2
[000618e6] 3f40 000a                 move.w     d0,10(a7)
[000618ea] 2054                      movea.l    (a4),a0
[000618ec] 3f68 02cc 000c            move.w     716(a0),12(a7)
[000618f2] 43d7                      lea.l      (a7),a1
[000618f4] 204a                      movea.l    a2,a0
[000618f6] 6100 fd78                 bsr        $00061670
[000618fa] 4fef 0040                 lea.l      64(a7),a7
[000618fe] 285f                      movea.l    (a7)+,a4
[00061900] 245f                      movea.l    (a7)+,a2
[00061902] 4e75                      rts
PrintRedraw:
[00061904] 48e7 002c                 movem.l    a2/a4-a5,-(a7)
[00061908] 4fef ffc0                 lea.l      -64(a7),a7
[0006190c] 2a49                      movea.l    a1,a5
[0006190e] 2450                      movea.l    (a0),a2
[00061910] 41f9 000d 5cd2            lea.l      $000D5CD2,a0
[00061916] 43d7                      lea.l      (a7),a1
[00061918] 700f                      moveq.l    #15,d0
[0006191a] 22d8                      move.l     (a0)+,(a1)+
[0006191c] 51c8 fffc                 dbf        d0,$0006191A
[00061920] 49f9 0010 1f12            lea.l      ACSblk,a4
[00061926] 2054                      movea.l    (a4),a0
[00061928] 3f68 0262 0002            move.w     610(a0),2(a7)
[0006192e] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061934] 3f68 02ca 0006            move.w     714(a0),6(a7)
[0006193a] 3028 02ce                 move.w     718(a0),d0
[0006193e] 4eb9 0004 1ede            jsr        $00041EDE
[00061944] 3f40 0008                 move.w     d0,8(a7)
[00061948] 2054                      movea.l    (a4),a0
[0006194a] 3028 02ce                 move.w     718(a0),d0
[0006194e] 4eb9 0004 1ec2            jsr        $00041EC2
[00061954] 3f40 000a                 move.w     d0,10(a7)
[00061958] 2054                      movea.l    (a4),a0
[0006195a] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061960] 3f55 0028                 move.w     (a5),40(a7)
[00061964] 3f6d 0002 002a            move.w     2(a5),42(a7)
[0006196a] 3f6d 0004 002c            move.w     4(a5),44(a7)
[00061970] 3f6d 0006 002e            move.w     6(a5),46(a7)
[00061976] 43d7                      lea.l      (a7),a1
[00061978] 204a                      movea.l    a2,a0
[0006197a] 6100 fcf4                 bsr        $00061670
[0006197e] 4fef 0040                 lea.l      64(a7),a7
[00061982] 4cdf 3400                 movem.l    (a7)+,a2/a4-a5
[00061986] 4e75                      rts
PrintArrowed:
[00061988] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[0006198c] 4fef ffc0                 lea.l      -64(a7),a7
[00061990] 3600                      move.w     d0,d3
[00061992] 2450                      movea.l    (a0),a2
[00061994] 41f9 000d 5d12            lea.l      $000D5D12,a0
[0006199a] 43d7                      lea.l      (a7),a1
[0006199c] 720f                      moveq.l    #15,d1
[0006199e] 22d8                      move.l     (a0)+,(a1)+
[000619a0] 51c9 fffc                 dbf        d1,$0006199E
[000619a4] 49f9 0010 1f12            lea.l      ACSblk,a4
[000619aa] 2054                      movea.l    (a4),a0
[000619ac] 3f68 0262 0002            move.w     610(a0),2(a7)
[000619b2] 3f68 0264 0004            move.w     612(a0),4(a7)
[000619b8] 3f68 02ca 0006            move.w     714(a0),6(a7)
[000619be] 3028 02ce                 move.w     718(a0),d0
[000619c2] 4eb9 0004 1ede            jsr        $00041EDE
[000619c8] 3f40 0008                 move.w     d0,8(a7)
[000619cc] 2054                      movea.l    (a4),a0
[000619ce] 3028 02ce                 move.w     718(a0),d0
[000619d2] 4eb9 0004 1ec2            jsr        $00041EC2
[000619d8] 3f40 000a                 move.w     d0,10(a7)
[000619dc] 2054                      movea.l    (a4),a0
[000619de] 3f68 02cc 000c            move.w     716(a0),12(a7)
[000619e4] 3f43 0028                 move.w     d3,40(a7)
[000619e8] 43d7                      lea.l      (a7),a1
[000619ea] 204a                      movea.l    a2,a0
[000619ec] 6100 fc82                 bsr        $00061670
[000619f0] 4fef 0040                 lea.l      64(a7),a7
[000619f4] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[000619f8] 4e75                      rts
PrintChange:
[000619fa] 2f0a                      move.l     a2,-(a7)
[000619fc] 2f0b                      move.l     a3,-(a7)
[000619fe] 2448                      movea.l    a0,a2
[00061a00] 43ea 0034                 lea.l      52(a2),a1
[00061a04] 266a 006a                 movea.l    106(a2),a3
[00061a08] 4e93                      jsr        (a3)
[00061a0a] 265f                      movea.l    (a7)+,a3
[00061a0c] 245f                      movea.l    (a7)+,a2
[00061a0e] 4e75                      rts
PrintFulled:
[00061a10] 2f0a                      move.l     a2,-(a7)
[00061a12] 2f0c                      move.l     a4,-(a7)
[00061a14] 4fef ffc0                 lea.l      -64(a7),a7
[00061a18] 2450                      movea.l    (a0),a2
[00061a1a] 41f9 000d 5d52            lea.l      $000D5D52,a0
[00061a20] 43d7                      lea.l      (a7),a1
[00061a22] 700f                      moveq.l    #15,d0
[00061a24] 22d8                      move.l     (a0)+,(a1)+
[00061a26] 51c8 fffc                 dbf        d0,$00061A24
[00061a2a] 49f9 0010 1f12            lea.l      ACSblk,a4
[00061a30] 2054                      movea.l    (a4),a0
[00061a32] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061a38] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061a3e] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061a44] 3028 02ce                 move.w     718(a0),d0
[00061a48] 4eb9 0004 1ede            jsr        $00041EDE
[00061a4e] 3f40 0008                 move.w     d0,8(a7)
[00061a52] 2054                      movea.l    (a4),a0
[00061a54] 3028 02ce                 move.w     718(a0),d0
[00061a58] 4eb9 0004 1ec2            jsr        $00041EC2
[00061a5e] 3f40 000a                 move.w     d0,10(a7)
[00061a62] 2054                      movea.l    (a4),a0
[00061a64] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061a6a] 43d7                      lea.l      (a7),a1
[00061a6c] 204a                      movea.l    a2,a0
[00061a6e] 6100 fc00                 bsr        $00061670
[00061a72] 4fef 0040                 lea.l      64(a7),a7
[00061a76] 285f                      movea.l    (a7)+,a4
[00061a78] 245f                      movea.l    (a7)+,a2
[00061a7a] 4e75                      rts
PrintInit:
[00061a7c] 4240                      clr.w      d0
[00061a7e] 4e75                      rts
PrintHSlide:
[00061a80] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[00061a84] 4fef ffc0                 lea.l      -64(a7),a7
[00061a88] 3600                      move.w     d0,d3
[00061a8a] 2450                      movea.l    (a0),a2
[00061a8c] 41f9 000d 5d92            lea.l      $000D5D92,a0
[00061a92] 43d7                      lea.l      (a7),a1
[00061a94] 720f                      moveq.l    #15,d1
[00061a96] 22d8                      move.l     (a0)+,(a1)+
[00061a98] 51c9 fffc                 dbf        d1,$00061A96
[00061a9c] 49f9 0010 1f12            lea.l      ACSblk,a4
[00061aa2] 2054                      movea.l    (a4),a0
[00061aa4] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061aaa] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061ab0] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061ab6] 3028 02ce                 move.w     718(a0),d0
[00061aba] 4eb9 0004 1ede            jsr        $00041EDE
[00061ac0] 3f40 0008                 move.w     d0,8(a7)
[00061ac4] 2054                      movea.l    (a4),a0
[00061ac6] 3028 02ce                 move.w     718(a0),d0
[00061aca] 4eb9 0004 1ec2            jsr        $00041EC2
[00061ad0] 3f40 000a                 move.w     d0,10(a7)
[00061ad4] 2054                      movea.l    (a4),a0
[00061ad6] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061adc] 3f43 0028                 move.w     d3,40(a7)
[00061ae0] 43d7                      lea.l      (a7),a1
[00061ae2] 204a                      movea.l    a2,a0
[00061ae4] 6100 fb8a                 bsr        $00061670
[00061ae8] 4fef 0040                 lea.l      64(a7),a7
[00061aec] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[00061af0] 4e75                      rts
PrintVSlide:
[00061af2] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[00061af6] 4fef ffc0                 lea.l      -64(a7),a7
[00061afa] 3600                      move.w     d0,d3
[00061afc] 2450                      movea.l    (a0),a2
[00061afe] 41f9 000d 5dd2            lea.l      $000D5DD2,a0
[00061b04] 43d7                      lea.l      (a7),a1
[00061b06] 720f                      moveq.l    #15,d1
[00061b08] 22d8                      move.l     (a0)+,(a1)+
[00061b0a] 51c9 fffc                 dbf        d1,$00061B08
[00061b0e] 49f9 0010 1f12            lea.l      ACSblk,a4
[00061b14] 2054                      movea.l    (a4),a0
[00061b16] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061b1c] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061b22] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061b28] 3028 02ce                 move.w     718(a0),d0
[00061b2c] 4eb9 0004 1ede            jsr        $00041EDE
[00061b32] 3f40 0008                 move.w     d0,8(a7)
[00061b36] 2054                      movea.l    (a4),a0
[00061b38] 3028 02ce                 move.w     718(a0),d0
[00061b3c] 4eb9 0004 1ec2            jsr        $00041EC2
[00061b42] 3f40 000a                 move.w     d0,10(a7)
[00061b46] 2054                      movea.l    (a4),a0
[00061b48] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061b4e] 3f43 0028                 move.w     d3,40(a7)
[00061b52] 43d7                      lea.l      (a7),a1
[00061b54] 204a                      movea.l    a2,a0
[00061b56] 6100 fb18                 bsr        $00061670
[00061b5a] 4fef 0040                 lea.l      64(a7),a7
[00061b5e] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[00061b62] 4e75                      rts
PrintKeys:
[00061b64] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[00061b68] 4fef ffc0                 lea.l      -64(a7),a7
[00061b6c] 3601                      move.w     d1,d3
[00061b6e] 2450                      movea.l    (a0),a2
[00061b70] 41f9 000d 5e12            lea.l      $000D5E12,a0
[00061b76] 43d7                      lea.l      (a7),a1
[00061b78] 700f                      moveq.l    #15,d0
[00061b7a] 22d8                      move.l     (a0)+,(a1)+
[00061b7c] 51c8 fffc                 dbf        d0,$00061B7A
[00061b80] 49f9 0010 1f12            lea.l      ACSblk,a4
[00061b86] 2054                      movea.l    (a4),a0
[00061b88] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061b8e] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061b94] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061b9a] 3003                      move.w     d3,d0
[00061b9c] 4eb9 0004 1ede            jsr        $00041EDE
[00061ba2] 3f40 0008                 move.w     d0,8(a7)
[00061ba6] 3003                      move.w     d3,d0
[00061ba8] 4eb9 0004 1ec2            jsr        $00041EC2
[00061bae] 3f40 000a                 move.w     d0,10(a7)
[00061bb2] 2054                      movea.l    (a4),a0
[00061bb4] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061bba] 43d7                      lea.l      (a7),a1
[00061bbc] 204a                      movea.l    a2,a0
[00061bbe] 6100 fab0                 bsr        $00061670
[00061bc2] 4240                      clr.w      d0
[00061bc4] 4fef 0040                 lea.l      64(a7),a7
[00061bc8] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[00061bcc] 4e75                      rts
PrintTopped:
[00061bce] 2f0a                      move.l     a2,-(a7)
[00061bd0] 2f0c                      move.l     a4,-(a7)
[00061bd2] 4fef ffc0                 lea.l      -64(a7),a7
[00061bd6] 2450                      movea.l    (a0),a2
[00061bd8] 41f9 000d 5e52            lea.l      $000D5E52,a0
[00061bde] 43d7                      lea.l      (a7),a1
[00061be0] 700f                      moveq.l    #15,d0
[00061be2] 22d8                      move.l     (a0)+,(a1)+
[00061be4] 51c8 fffc                 dbf        d0,$00061BE2
[00061be8] 49f9 0010 1f12            lea.l      ACSblk,a4
[00061bee] 2054                      movea.l    (a4),a0
[00061bf0] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061bf6] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061bfc] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061c02] 3028 02ce                 move.w     718(a0),d0
[00061c06] 4eb9 0004 1ede            jsr        $00041EDE
[00061c0c] 3f40 0008                 move.w     d0,8(a7)
[00061c10] 2054                      movea.l    (a4),a0
[00061c12] 3028 02ce                 move.w     718(a0),d0
[00061c16] 4eb9 0004 1ec2            jsr        $00041EC2
[00061c1c] 3f40 000a                 move.w     d0,10(a7)
[00061c20] 2054                      movea.l    (a4),a0
[00061c22] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061c28] 43d7                      lea.l      (a7),a1
[00061c2a] 204a                      movea.l    a2,a0
[00061c2c] 6100 fa42                 bsr        $00061670
[00061c30] 4fef 0040                 lea.l      64(a7),a7
[00061c34] 285f                      movea.l    (a7)+,a4
[00061c36] 245f                      movea.l    (a7)+,a2
[00061c38] 4e75                      rts
PrintMoved:
[00061c3a] 48e7 0036                 movem.l    a2-a3/a5-a6,-(a7)
[00061c3e] 4fef ffc0                 lea.l      -64(a7),a7
[00061c42] 2448                      movea.l    a0,a2
[00061c44] 2c49                      movea.l    a1,a6
[00061c46] 2650                      movea.l    (a0),a3
[00061c48] 43f9 000d 5e92            lea.l      $000D5E92,a1
[00061c4e] 41d7                      lea.l      (a7),a0
[00061c50] 700f                      moveq.l    #15,d0
[00061c52] 20d9                      move.l     (a1)+,(a0)+
[00061c54] 51c8 fffc                 dbf        d0,$00061C52
[00061c58] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00061c5e] 2055                      movea.l    (a5),a0
[00061c60] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061c66] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061c6c] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061c72] 3028 02ce                 move.w     718(a0),d0
[00061c76] 4eb9 0004 1ede            jsr        $00041EDE
[00061c7c] 3f40 0008                 move.w     d0,8(a7)
[00061c80] 2055                      movea.l    (a5),a0
[00061c82] 3028 02ce                 move.w     718(a0),d0
[00061c86] 4eb9 0004 1ec2            jsr        $00041EC2
[00061c8c] 3f40 000a                 move.w     d0,10(a7)
[00061c90] 2055                      movea.l    (a5),a0
[00061c92] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061c98] 3f56 0028                 move.w     (a6),40(a7)
[00061c9c] 3f6e 0002 002a            move.w     2(a6),42(a7)
[00061ca2] 3f6e 0004 002c            move.w     4(a6),44(a7)
[00061ca8] 3f6e 0006 002e            move.w     6(a6),46(a7)
[00061cae] 43d7                      lea.l      (a7),a1
[00061cb0] 204b                      movea.l    a3,a0
[00061cb2] 6100 f9bc                 bsr        $00061670
[00061cb6] 486a 002a                 pea.l      42(a2)
[00061cba] 486a 0028                 pea.l      40(a2)
[00061cbe] 486a 0026                 pea.l      38(a2)
[00061cc2] 486a 0024                 pea.l      36(a2)
[00061cc6] 7205                      moveq.l    #5,d1
[00061cc8] 302a 0020                 move.w     32(a2),d0
[00061ccc] 4eb9 0007 14ea            jsr        $000714EA
[00061cd2] 4fef 0010                 lea.l      16(a7),a7
[00061cd6] 486a 003a                 pea.l      58(a2)
[00061cda] 486a 0038                 pea.l      56(a2)
[00061cde] 486a 0036                 pea.l      54(a2)
[00061ce2] 486a 0034                 pea.l      52(a2)
[00061ce6] 7204                      moveq.l    #4,d1
[00061ce8] 302a 0020                 move.w     32(a2),d0
[00061cec] 4eb9 0007 14ea            jsr        $000714EA
[00061cf2] 4fef 0010                 lea.l      16(a7),a7
[00061cf6] 206a 0014                 movea.l    20(a2),a0
[00061cfa] 316a 0038 0014            move.w     56(a2),20(a0)
[00061d00] 206a 0014                 movea.l    20(a2),a0
[00061d04] 316a 003a 0016            move.w     58(a2),22(a0)
[00061d0a] 4fef 0040                 lea.l      64(a7),a7
[00061d0e] 4cdf 6c00                 movem.l    (a7)+,a2-a3/a5-a6
[00061d12] 4e75                      rts
PrintSized:
[00061d14] 48e7 0036                 movem.l    a2-a3/a5-a6,-(a7)
[00061d18] 4fef ffc0                 lea.l      -64(a7),a7
[00061d1c] 2448                      movea.l    a0,a2
[00061d1e] 2c49                      movea.l    a1,a6
[00061d20] 2650                      movea.l    (a0),a3
[00061d22] 43f9 000d 5ed2            lea.l      $000D5ED2,a1
[00061d28] 41d7                      lea.l      (a7),a0
[00061d2a] 700f                      moveq.l    #15,d0
[00061d2c] 20d9                      move.l     (a1)+,(a0)+
[00061d2e] 51c8 fffc                 dbf        d0,$00061D2C
[00061d32] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00061d38] 2055                      movea.l    (a5),a0
[00061d3a] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061d40] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061d46] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061d4c] 3028 02ce                 move.w     718(a0),d0
[00061d50] 4eb9 0004 1ede            jsr        $00041EDE
[00061d56] 3f40 0008                 move.w     d0,8(a7)
[00061d5a] 2055                      movea.l    (a5),a0
[00061d5c] 3028 02ce                 move.w     718(a0),d0
[00061d60] 4eb9 0004 1ec2            jsr        $00041EC2
[00061d66] 3f40 000a                 move.w     d0,10(a7)
[00061d6a] 2055                      movea.l    (a5),a0
[00061d6c] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061d72] 3f56 0028                 move.w     (a6),40(a7)
[00061d76] 3f6e 0002 002a            move.w     2(a6),42(a7)
[00061d7c] 3f6e 0004 002c            move.w     4(a6),44(a7)
[00061d82] 3f6e 0006 002e            move.w     6(a6),46(a7)
[00061d88] 43d7                      lea.l      (a7),a1
[00061d8a] 204b                      movea.l    a3,a0
[00061d8c] 6100 f8e2                 bsr        $00061670
[00061d90] 486a 002a                 pea.l      42(a2)
[00061d94] 486a 0028                 pea.l      40(a2)
[00061d98] 486a 0026                 pea.l      38(a2)
[00061d9c] 486a 0024                 pea.l      36(a2)
[00061da0] 7205                      moveq.l    #5,d1
[00061da2] 302a 0020                 move.w     32(a2),d0
[00061da6] 4eb9 0007 14ea            jsr        $000714EA
[00061dac] 4fef 0010                 lea.l      16(a7),a7
[00061db0] 486a 003a                 pea.l      58(a2)
[00061db4] 486a 0038                 pea.l      56(a2)
[00061db8] 486a 0036                 pea.l      54(a2)
[00061dbc] 486a 0034                 pea.l      52(a2)
[00061dc0] 7204                      moveq.l    #4,d1
[00061dc2] 302a 0020                 move.w     32(a2),d0
[00061dc6] 4eb9 0007 14ea            jsr        $000714EA
[00061dcc] 4fef 0010                 lea.l      16(a7),a7
[00061dd0] 206a 0014                 movea.l    20(a2),a0
[00061dd4] 316a 0038 0014            move.w     56(a2),20(a0)
[00061dda] 206a 0014                 movea.l    20(a2),a0
[00061dde] 316a 003a 0016            move.w     58(a2),22(a0)
[00061de4] 4fef 0040                 lea.l      64(a7),a7
[00061de8] 4cdf 6c00                 movem.l    (a7)+,a2-a3/a5-a6
[00061dec] 4e75                      rts
PrintIconify:
[00061dee] 4eb9 0005 0f9c            jsr        $00050F9C
[00061df4] 4e75                      rts
PrintUniconify:
[00061df6] 4eb9 0005 117c            jsr        $0005117C
[00061dfc] 4e75                      rts
PrintGEMScript:
[00061dfe] 2f2f 0004                 move.l     4(a7),-(a7)
[00061e02] 4eb9 0005 2328            jsr        $00052328
[00061e08] 584f                      addq.w     #4,a7
[00061e0a] 4e75                      rts
PrintClicked:
[00061e0c] 2f0a                      move.l     a2,-(a7)
[00061e0e] 2f0b                      move.l     a3,-(a7)
[00061e10] 4fef ffc0                 lea.l      -64(a7),a7
[00061e14] 45f9 0010 1f12            lea.l      ACSblk,a2
[00061e1a] 2052                      movea.l    (a2),a0
[00061e1c] 2268 0258                 movea.l    600(a0),a1
[00061e20] 2651                      movea.l    (a1),a3
[00061e22] 41f9 000d 5f12            lea.l      $000D5F12,a0
[00061e28] 43d7                      lea.l      (a7),a1
[00061e2a] 700f                      moveq.l    #15,d0
[00061e2c] 22d8                      move.l     (a0)+,(a1)+
[00061e2e] 51c8 fffc                 dbf        d0,$00061E2C
[00061e32] 2052                      movea.l    (a2),a0
[00061e34] 3f68 0262 0002            move.w     610(a0),2(a7)
[00061e3a] 3f68 0264 0004            move.w     612(a0),4(a7)
[00061e40] 3f68 02ca 0006            move.w     714(a0),6(a7)
[00061e46] 3028 02ce                 move.w     718(a0),d0
[00061e4a] 4eb9 0004 1ede            jsr        $00041EDE
[00061e50] 3f40 0008                 move.w     d0,8(a7)
[00061e54] 2052                      movea.l    (a2),a0
[00061e56] 3028 02ce                 move.w     718(a0),d0
[00061e5a] 4eb9 0004 1ec2            jsr        $00041EC2
[00061e60] 3f40 000a                 move.w     d0,10(a7)
[00061e64] 2052                      movea.l    (a2),a0
[00061e66] 3f68 02cc 000c            move.w     716(a0),12(a7)
[00061e6c] 43d7                      lea.l      (a7),a1
[00061e6e] 204b                      movea.l    a3,a0
[00061e70] 6100 f7fe                 bsr        $00061670
[00061e74] 4fef 0040                 lea.l      64(a7),a7
[00061e78] 265f                      movea.l    (a7)+,a3
[00061e7a] 245f                      movea.l    (a7)+,a2
[00061e7c] 4e75                      rts
