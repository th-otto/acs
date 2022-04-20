add_object:
[000340be] 48e7 003c                 movem.l    a2-a5,-(a7)
[000340c2] 2448                      movea.l    a0,a2
[000340c4] 2849                      movea.l    a1,a4
[000340c6] 006a 0001 0006            ori.w      #$0001,6(a2)
[000340cc] 266a 0018                 movea.l    24(a2),a3
[000340d0] 7038                      moveq.l    #56,d0
[000340d2] 204b                      movea.l    a3,a0
[000340d4] 4eb9 0001 62aa            jsr        $000162AA
[000340da] 4a40                      tst.w      d0
[000340dc] 6610                      bne.s      $000340EE
[000340de] 224c                      movea.l    a4,a1
[000340e0] 204a                      movea.l    a2,a0
[000340e2] 4eb9 0003 411a            jsr        $0003411A
[000340e8] 2a48                      movea.l    a0,a5
[000340ea] 200d                      move.l     a5,d0
[000340ec] 6604                      bne.s      $000340F2
[000340ee] 91c8                      suba.l     a0,a0
[000340f0] 6022                      bra.s      $00034114
[000340f2] 2f39 000c 297e            move.l     $000C297E,-(a7)
[000340f8] 486c 0016                 pea.l      22(a4)
[000340fc] 224d                      movea.l    a5,a1
[000340fe] 204a                      movea.l    a2,a0
[00034100] 4eb9 0001 6448            jsr        $00016448
[00034106] 504f                      addq.w     #8,a7
[00034108] 224d                      movea.l    a5,a1
[0003410a] 204b                      movea.l    a3,a0
[0003410c] 4eb9 0003 1a94            jsr        $00031A94
[00034112] 204d                      movea.l    a5,a0
[00034114] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00034118] 4e75                      rts
copy_obj:
[0003411a] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0003411e] 2648                      movea.l    a0,a3
[00034120] 2449                      movea.l    a1,a2
[00034122] 202a 000e                 move.l     14(a2),d0
[00034126] 4eb9 0001 6230            jsr        $00016230
[0003412c] 2848                      movea.l    a0,a4
[0003412e] 200c                      move.l     a4,d0
[00034130] 6604                      bne.s      $00034136
[00034132] 91c8                      suba.l     a0,a0
[00034134] 6046                      bra.s      $0003417C
[00034136] 202a 000e                 move.l     14(a2),d0
[0003413a] 7238                      moveq.l    #56,d1
[0003413c] 4eb9 0007 769e            jsr        $0007769E
[00034142] 2600                      move.l     d0,d3
[00034144] 2a6a 0004                 movea.l    4(a2),a5
[00034148] 2c6c 0004                 movea.l    4(a4),a6
[0003414c] 4244                      clr.w      d4
[0003414e] 6020                      bra.s      $00034170
[00034150] 3204                      move.w     d4,d1
[00034152] 48c1                      ext.l      d1
[00034154] 2001                      move.l     d1,d0
[00034156] e788                      lsl.l      #3,d0
[00034158] 9081                      sub.l      d1,d0
[0003415a] e788                      lsl.l      #3,d0
[0003415c] 4875 0800                 pea.l      0(a5,d0.l)
[00034160] 43f6 0800                 lea.l      0(a6,d0.l),a1
[00034164] 204b                      movea.l    a3,a0
[00034166] 4eb9 0002 b5ea            jsr        $0002B5EA
[0003416c] 584f                      addq.w     #4,a7
[0003416e] 5244                      addq.w     #1,d4
[00034170] b644                      cmp.w      d4,d3
[00034172] 6edc                      bgt.s      $00034150
[00034174] 296a 000e 000e            move.l     14(a2),14(a4)
[0003417a] 204c                      movea.l    a4,a0
[0003417c] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00034180] 4e75                      rts
del_object:
[00034182] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00034186] 2448                      movea.l    a0,a2
[00034188] 2649                      movea.l    a1,a3
[0003418a] 006a 0001 0006            ori.w      #$0001,6(a2)
[00034190] 536b 0036                 subq.w     #1,54(a3)
[00034194] 302b 0036                 move.w     54(a3),d0
[00034198] 6e5e                      bgt.s      $000341F8
[0003419a] 286b 0012                 movea.l    18(a3),a4
[0003419e] 220c                      move.l     a4,d1
[000341a0] 670c                      beq.s      $000341AE
[000341a2] 2a6c 0004                 movea.l    4(a4),a5
[000341a6] 204c                      movea.l    a4,a0
[000341a8] 7002                      moveq.l    #2,d0
[000341aa] 93c9                      suba.l     a1,a1
[000341ac] 4e95                      jsr        (a5)
[000341ae] 202b 000e                 move.l     14(a3),d0
[000341b2] 7238                      moveq.l    #56,d1
[000341b4] 4eb9 0007 769e            jsr        $0007769E
[000341ba] 2600                      move.l     d0,d3
[000341bc] 286b 0004                 movea.l    4(a3),a4
[000341c0] 4244                      clr.w      d4
[000341c2] 601a                      bra.s      $000341DE
[000341c4] 3204                      move.w     d4,d1
[000341c6] 48c1                      ext.l      d1
[000341c8] 2001                      move.l     d1,d0
[000341ca] e788                      lsl.l      #3,d0
[000341cc] 9081                      sub.l      d1,d0
[000341ce] e788                      lsl.l      #3,d0
[000341d0] 43f4 0800                 lea.l      0(a4,d0.l),a1
[000341d4] 204a                      movea.l    a2,a0
[000341d6] 4eb9 0002 b8b6            jsr        $0002B8B6
[000341dc] 5244                      addq.w     #1,d4
[000341de] b644                      cmp.w      d4,d3
[000341e0] 6ee2                      bgt.s      $000341C4
[000341e2] 224b                      movea.l    a3,a1
[000341e4] 206a 0018                 movea.l    24(a2),a0
[000341e8] 4eb9 0003 1b00            jsr        $00031B00
[000341ee] 224b                      movea.l    a3,a1
[000341f0] 204a                      movea.l    a2,a0
[000341f2] 4eb9 0001 61d4            jsr        $000161D4
[000341f8] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[000341fc] 4e75                      rts
new_work:
[000341fe] 303c 2710                 move.w     #$2710,d0
[00034202] 2279 000b c9d2            movea.l    $000BC9D2,a1
[00034208] 4eb9 0003 24b6            jsr        $000324B6
[0003420e] 4e75                      rts
