
ed3d_dither:
[00028134] 2f0a                      move.l     a2,-(a7)
[00028136] 45f9 0010 1f12            lea.l      ACSblk,a2
[0002813c] 7001                      moveq.l    #1,d0
[0002813e] 2052                      movea.l    (a2),a0
[00028140] 3428 0260                 move.w     608(a0),d2
[00028144] 48c2                      ext.l      d2
[00028146] 2202                      move.l     d2,d1
[00028148] d281                      add.l      d1,d1
[0002814a] d282                      add.l      d2,d1
[0002814c] e789                      lsl.l      #3,d1
[0002814e] 2268 025c                 movea.l    604(a0),a1
[00028152] c071 180a                 and.w      10(a1,d1.l),d0
[00028156] 6700 00b2                 beq        ed3d_dither_1
[0002815a] 2069 003c                 movea.l    60(a1),a0
[0002815e] 5848                      addq.w     #4,a0
[00028160] 0268 ff8f 0002            andi.w     #$FF8F,2(a0)
[00028166] 0068 0070 0002            ori.w      #$0070,2(a0)
[0002816c] 0268 fff0 0002            andi.w     #$FFF0,2(a0)
[00028172] 0068 0008 0002            ori.w      #$0008,2(a0)
[00028178] 3010                      move.w     (a0),d0
[0002817a] e048                      lsr.w      #8,d0
[0002817c] c07c 00ff                 and.w      #$00FF,d0
[00028180] c07c 007f                 and.w      #$007F,d0
[00028184] 0250 00ff                 andi.w     #$00FF,(a0)
[00028188] c07c 00ff                 and.w      #$00FF,d0
[0002818c] e148                      lsl.w      #8,d0
[0002818e] 8150                      or.w       d0,(a0)
[00028190] 2279 000b e290            movea.l    $000BE290,a1
[00028196] 7041                      moveq.l    #65,d0
[00028198] 2052                      movea.l    (a2),a0
[0002819a] 2068 025c                 movea.l    604(a0),a0
[0002819e] 4eb9 0004 afe0            jsr        Aob_puttext
[000281a4] 2052                      movea.l    (a2),a0
[000281a6] 2268 025c                 movea.l    604(a0),a1
[000281aa] 0269 fff0 060e            andi.w     #$FFF0,1550(a1)
[000281b0] 0069 0008 060e            ori.w      #$0008,1550(a1)
[000281b6] 72ff                      moveq.l    #-1,d1
[000281b8] 703e                      moveq.l    #62,d0
[000281ba] 2052                      movea.l    (a2),a0
[000281bc] 2068 0258                 movea.l    600(a0),a0
[000281c0] 2252                      movea.l    (a2),a1
[000281c2] 2269 0258                 movea.l    600(a1),a1
[000281c6] 2269 0066                 movea.l    102(a1),a1
[000281ca] 4e91                      jsr        (a1)
[000281cc] 2052                      movea.l    (a2),a0
[000281ce] 2268 025c                 movea.l    604(a0),a1
[000281d2] 0269 ff8f 057e            andi.w     #$FF8F,1406(a1)
[000281d8] 0069 0070 057e            ori.w      #$0070,1406(a1)
[000281de] 72ff                      moveq.l    #-1,d1
[000281e0] 703a                      moveq.l    #58,d0
[000281e2] 2052                      movea.l    (a2),a0
[000281e4] 2068 0258                 movea.l    600(a0),a0
[000281e8] 2252                      movea.l    (a2),a1
[000281ea] 2269 0258                 movea.l    600(a1),a1
[000281ee] 2269 0066                 movea.l    102(a1),a1
[000281f2] 4e91                      jsr        (a1)
[000281f4] 72ff                      moveq.l    #-1,d1
[000281f6] 7001                      moveq.l    #1,d0
[000281f8] 2052                      movea.l    (a2),a0
[000281fa] 2068 0258                 movea.l    600(a0),a0
[000281fe] 2252                      movea.l    (a2),a1
[00028200] 2269 0258                 movea.l    600(a1),a1
[00028204] 2269 0066                 movea.l    102(a1),a1
[00028208] 4e91                      jsr        (a1)
ed3d_dither_1:
[0002820a] 245f                      movea.l    (a7)+,a2
[0002820c] 4e75                      rts

ed3d_incol:
[0002820e] 2f03                      move.l     d3,-(a7)
[00028210] 2f0a                      move.l     a2,-(a7)
[00028212] 2079 0010 1f12            movea.l    ACSblk,a0
[00028218] 2268 025c                 movea.l    604(a0),a1
[0002821c] 2469 003c                 movea.l    60(a1),a2
[00028220] 584a                      addq.w     #4,a2
[00028222] 7031                      moveq.l    #49,d0
[00028224] 3f00                      move.w     d0,-(a7)
[00028226] 7432                      moveq.l    #50,d2
[00028228] 722f                      moveq.l    #47,d1
[0002822a] 2012                      move.l     (a2),d0
[0002822c] 7618                      moveq.l    #24,d3
[0002822e] e6a0                      asr.l      d3,d0
[00028230] c07c 000f                 and.w      #$000F,d0
[00028234] 4eb9 0002 f280            jsr        oe_colsel
[0002823a] 544f                      addq.w     #2,a7
[0002823c] 3600                      move.w     d0,d3
[0002823e] 6b30                      bmi.s      ed3d_incol_1
[00028240] 2212                      move.l     (a2),d1
[00028242] c2bc f0ff ffff            and.l      #$F0FFFFFF,d1
[00028248] 48c0                      ext.l      d0
[0002824a] 7418                      moveq.l    #24,d2
[0002824c] e5a8                      lsl.l      d2,d0
[0002824e] 8280                      or.l       d0,d1
[00028250] 2481                      move.l     d1,(a2)
[00028252] 2079 0010 1f12            movea.l    ACSblk,a0
[00028258] 2068 0258                 movea.l    600(a0),a0
[0002825c] 2279 0010 1f12            movea.l    ACSblk,a1
[00028262] 2469 0258                 movea.l    600(a1),a2
[00028266] 226a 0066                 movea.l    102(a2),a1
[0002826a] 7001                      moveq.l    #1,d0
[0002826c] 72ff                      moveq.l    #-1,d1
[0002826e] 4e91                      jsr        (a1)
ed3d_incol_1:
[00028270] 245f                      movea.l    (a7)+,a2
[00028272] 261f                      move.l     (a7)+,d3
[00028274] 4e75                      rts

ed3d_intercol:
[00028276] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0002827a] 45f9 0010 1f12            lea.l      ACSblk,a2
[00028280] 2052                      movea.l    (a2),a0
[00028282] 2268 025c                 movea.l    604(a0),a1
[00028286] 2669 003c                 movea.l    60(a1),a3
[0002828a] 584b                      addq.w     #4,a3
[0002828c] 7040                      moveq.l    #64,d0
[0002828e] 3f00                      move.w     d0,-(a7)
[00028290] 7441                      moveq.l    #65,d2
[00028292] 723e                      moveq.l    #62,d1
[00028294] 700f                      moveq.l    #15,d0
[00028296] c06b 0002                 and.w      2(a3),d0
[0002829a] 4eb9 0002 f280            jsr        oe_colsel
[000282a0] 544f                      addq.w     #2,a7
[000282a2] 3600                      move.w     d0,d3
[000282a4] 6b6a                      bmi.s      ed3d_intercol_1
[000282a6] 72f0                      moveq.l    #-16,d1
[000282a8] c293                      and.l      (a3),d1
[000282aa] 48c0                      ext.l      d0
[000282ac] 8280                      or.l       d0,d1
[000282ae] 2681                      move.l     d1,(a3)
[000282b0] 2052                      movea.l    (a2),a0
[000282b2] 2268 025c                 movea.l    604(a0),a1
[000282b6] 2669 003c                 movea.l    60(a1),a3
[000282ba] 02ab 7fff ffff 0004       andi.l     #$7FFFFFFF,4(a3)
[000282c2] 2052                      movea.l    (a2),a0
[000282c4] 2268 0258                 movea.l    600(a0),a1
[000282c8] 2669 0014                 movea.l    20(a1),a3
[000282cc] 322b 04ea                 move.w     1258(a3),d1
[000282d0] c27c fffe                 and.w      #$FFFE,d1
[000282d4] 2049                      movea.l    a1,a0
[000282d6] 2269 0066                 movea.l    102(a1),a1
[000282da] 7034                      moveq.l    #52,d0
[000282dc] 4e91                      jsr        (a1)
[000282de] 2052                      movea.l    (a2),a0
[000282e0] 2268 0258                 movea.l    600(a0),a1
[000282e4] 2669 0014                 movea.l    20(a1),a3
[000282e8] 322b 051a                 move.w     1306(a3),d1
[000282ec] c27c fffe                 and.w      #$FFFE,d1
[000282f0] 7036                      moveq.l    #54,d0
[000282f2] 2049                      movea.l    a1,a0
[000282f4] 2269 0066                 movea.l    102(a1),a1
[000282f8] 4e91                      jsr        (a1)
[000282fa] 72ff                      moveq.l    #-1,d1
[000282fc] 7001                      moveq.l    #1,d0
[000282fe] 2052                      movea.l    (a2),a0
[00028300] 2068 0258                 movea.l    600(a0),a0
[00028304] 2252                      movea.l    (a2),a1
[00028306] 2669 0258                 movea.l    600(a1),a3
[0002830a] 226b 0066                 movea.l    102(a3),a1
[0002830e] 4e91                      jsr        (a1)
ed3d_intercol_1:
[00028310] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00028314] 4e75                      rts

ed3d_nofill:
[00028316] 2f0a                      move.l     a2,-(a7)
[00028318] 2f0b                      move.l     a3,-(a7)
[0002831a] 45f9 0010 1f12            lea.l      ACSblk,a2
[00028320] 2052                      movea.l    (a2),a0
[00028322] 2268 025c                 movea.l    604(a0),a1
[00028326] 2669 003c                 movea.l    60(a1),a3
[0002832a] 584b                      addq.w     #4,a3
[0002832c] 7001                      moveq.l    #1,d0
[0002832e] 3428 0260                 move.w     608(a0),d2
[00028332] 48c2                      ext.l      d2
[00028334] 2202                      move.l     d2,d1
[00028336] d281                      add.l      d1,d1
[00028338] d282                      add.l      d2,d1
[0002833a] e789                      lsl.l      #3,d1
[0002833c] c071 180a                 and.w      10(a1,d1.l),d0
[00028340] 6708                      beq.s      ed3d_nofill_1
[00028342] 0093 8000 0000            ori.l      #$80000000,(a3)
[00028348] 6006                      bra.s      ed3d_nofill_2
ed3d_nofill_1:
[0002834a] 0293 7fff ffff            andi.l     #$7FFFFFFF,(a3)
ed3d_nofill_2:
[00028350] 72ff                      moveq.l    #-1,d1
[00028352] 2052                      movea.l    (a2),a0
[00028354] 3028 0260                 move.w     608(a0),d0
[00028358] 2068 0258                 movea.l    600(a0),a0
[0002835c] 2252                      movea.l    (a2),a1
[0002835e] 2669 0258                 movea.l    600(a1),a3
[00028362] 226b 0066                 movea.l    102(a3),a1
[00028366] 4e91                      jsr        (a1)
[00028368] 72ff                      moveq.l    #-1,d1
[0002836a] 7001                      moveq.l    #1,d0
[0002836c] 2052                      movea.l    (a2),a0
[0002836e] 2068 0258                 movea.l    600(a0),a0
[00028372] 2252                      movea.l    (a2),a1
[00028374] 2669 0258                 movea.l    600(a1),a3
[00028378] 226b 0066                 movea.l    102(a3),a1
[0002837c] 4e91                      jsr        (a1)
[0002837e] 265f                      movea.l    (a7)+,a3
[00028380] 245f                      movea.l    (a7)+,a2
[00028382] 4e75                      rts

ed3d_outcol:
[00028384] 2f03                      move.l     d3,-(a7)
[00028386] 2f0a                      move.l     a2,-(a7)
[00028388] 2079 0010 1f12            movea.l    ACSblk,a0
[0002838e] 2268 025c                 movea.l    604(a0),a1
[00028392] 2469 003c                 movea.l    60(a1),a2
[00028396] 584a                      addq.w     #4,a2
[00028398] 702a                      moveq.l    #42,d0
[0002839a] 3f00                      move.w     d0,-(a7)
[0002839c] 742b                      moveq.l    #43,d2
[0002839e] 7228                      moveq.l    #40,d1
[000283a0] 2012                      move.l     (a2),d0
[000283a2] 760c                      moveq.l    #12,d3
[000283a4] e6a0                      asr.l      d3,d0
[000283a6] c07c 000f                 and.w      #$000F,d0
[000283aa] 4eb9 0002 f280            jsr        oe_colsel
[000283b0] 544f                      addq.w     #2,a7
[000283b2] 3600                      move.w     d0,d3
[000283b4] 6b30                      bmi.s      ed3d_outcol_1
[000283b6] 2212                      move.l     (a2),d1
[000283b8] c2bc ffff 0fff            and.l      #$FFFF0FFF,d1
[000283be] 48c0                      ext.l      d0
[000283c0] 740c                      moveq.l    #12,d2
[000283c2] e5a8                      lsl.l      d2,d0
[000283c4] 8280                      or.l       d0,d1
[000283c6] 2481                      move.l     d1,(a2)
[000283c8] 2079 0010 1f12            movea.l    ACSblk,a0
[000283ce] 2068 0258                 movea.l    600(a0),a0
[000283d2] 2279 0010 1f12            movea.l    ACSblk,a1
[000283d8] 2469 0258                 movea.l    600(a1),a2
[000283dc] 226a 0066                 movea.l    102(a2),a1
[000283e0] 7001                      moveq.l    #1,d0
[000283e2] 72ff                      moveq.l    #-1,d1
[000283e4] 4e91                      jsr        (a1)
ed3d_outcol_1:
[000283e6] 245f                      movea.l    (a7)+,a2
[000283e8] 261f                      move.l     (a7)+,d3
[000283ea] 4e75                      rts

ed3d_pattern:
[000283ec] 2f0a                      move.l     a2,-(a7)
[000283ee] 2f0b                      move.l     a3,-(a7)
[000283f0] 514f                      subq.w     #8,a7
[000283f2] 41f9 000b db68            lea.l      POP_PATSEL,a0
[000283f8] 4eb9 0004 9a5c            jsr        Aob_create
[000283fe] 2448                      movea.l    a0,a2
[00028400] 200a                      move.l     a2,d0
[00028402] 6700 0122                 beq        ed3d_pattern_1
[00028406] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002840c] 703a                      moveq.l    #58,d0
[0002840e] 2053                      movea.l    (a3),a0
[00028410] 2268 0258                 movea.l    600(a0),a1
[00028414] 2269 0014                 movea.l    20(a1),a1
[00028418] 41d7                      lea.l      (a7),a0
[0002841a] 4eb9 0004 a3be            jsr        Aob_offset
[00028420] 7001                      moveq.l    #1,d0
[00028422] 2053                      movea.l    (a3),a0
[00028424] 2268 0258                 movea.l    600(a0),a1
[00028428] d069 0034                 add.w      52(a1),d0
[0002842c] d157                      add.w      d0,(a7)
[0002842e] 7201                      moveq.l    #1,d1
[00028430] d269 0036                 add.w      54(a1),d1
[00028434] d36f 0002                 add.w      d1,2(a7)
[00028438] 2268 025c                 movea.l    604(a0),a1
[0002843c] 2069 003c                 movea.l    60(a1),a0
[00028440] 2028 0004                 move.l     4(a0),d0
[00028444] e880                      asr.l      #4,d0
[00028446] c07c 0007                 and.w      #$0007,d0
[0002844a] 48c0                      ext.l      d0
[0002844c] 2400                      move.l     d0,d2
[0002844e] d482                      add.l      d2,d2
[00028450] d480                      add.l      d0,d2
[00028452] e78a                      lsl.l      #3,d2
[00028454] 0072 0004 2822            ori.w      #$0004,34(a2,d2.l)
[0002845a] 322f 0002                 move.w     2(a7),d1
[0002845e] 3017                      move.w     (a7),d0
[00028460] 224a                      movea.l    a2,a1
[00028462] 2053                      movea.l    (a3),a0
[00028464] 2068 0258                 movea.l    600(a0),a0
[00028468] 4eb9 0004 948a            jsr        Ame_popup
[0002846e] 4a40                      tst.w      d0
[00028470] 6f00 00ac                 ble        ed3d_pattern_2
[00028474] 5340                      subq.w     #1,d0
[00028476] 2053                      movea.l    (a3),a0
[00028478] 2268 025c                 movea.l    604(a0),a1
[0002847c] 2069 003c                 movea.l    60(a1),a0
[00028480] 5848                      addq.w     #4,a0
[00028482] 728f                      moveq.l    #-113,d1
[00028484] c290                      and.l      (a0),d1
[00028486] 3400                      move.w     d0,d2
[00028488] 48c2                      ext.l      d2
[0002848a] e98a                      lsl.l      #4,d2
[0002848c] 8282                      or.l       d2,d1
[0002848e] 2081                      move.l     d1,(a0)
[00028490] 2053                      movea.l    (a3),a0
[00028492] 2268 025c                 movea.l    604(a0),a1
[00028496] 3200                      move.w     d0,d1
[00028498] 0269 ff8f 057e            andi.w     #$FF8F,1406(a1)
[0002849e] c27c 0007                 and.w      #$0007,d1
[000284a2] e949                      lsl.w      #4,d1
[000284a4] 8369 057e                 or.w       d1,1406(a1)
[000284a8] 2053                      movea.l    (a3),a0
[000284aa] 2268 025c                 movea.l    604(a0),a1
[000284ae] 2069 003c                 movea.l    60(a1),a0
[000284b2] 02a8 7fff ffff 0004       andi.l     #$7FFFFFFF,4(a0)
[000284ba] 2053                      movea.l    (a3),a0
[000284bc] 2268 0258                 movea.l    600(a0),a1
[000284c0] 2069 0014                 movea.l    20(a1),a0
[000284c4] 3228 04ea                 move.w     1258(a0),d1
[000284c8] c27c fffe                 and.w      #$FFFE,d1
[000284cc] 7034                      moveq.l    #52,d0
[000284ce] 2049                      movea.l    a1,a0
[000284d0] 2269 0066                 movea.l    102(a1),a1
[000284d4] 4e91                      jsr        (a1)
[000284d6] 2053                      movea.l    (a3),a0
[000284d8] 2268 0258                 movea.l    600(a0),a1
[000284dc] 2069 0014                 movea.l    20(a1),a0
[000284e0] 3228 051a                 move.w     1306(a0),d1
[000284e4] c27c fffe                 and.w      #$FFFE,d1
[000284e8] 7036                      moveq.l    #54,d0
[000284ea] 2049                      movea.l    a1,a0
[000284ec] 2269 0066                 movea.l    102(a1),a1
[000284f0] 4e91                      jsr        (a1)
[000284f2] 72ff                      moveq.l    #-1,d1
[000284f4] 703a                      moveq.l    #58,d0
[000284f6] 2053                      movea.l    (a3),a0
[000284f8] 2068 0258                 movea.l    600(a0),a0
[000284fc] 2253                      movea.l    (a3),a1
[000284fe] 2269 0258                 movea.l    600(a1),a1
[00028502] 2269 0066                 movea.l    102(a1),a1
[00028506] 4e91                      jsr        (a1)
[00028508] 72ff                      moveq.l    #-1,d1
[0002850a] 7001                      moveq.l    #1,d0
[0002850c] 2053                      movea.l    (a3),a0
[0002850e] 2068 0258                 movea.l    600(a0),a0
[00028512] 2253                      movea.l    (a3),a1
[00028514] 2269 0258                 movea.l    600(a1),a1
[00028518] 2269 0066                 movea.l    102(a1),a1
[0002851c] 4e91                      jsr        (a1)
ed3d_pattern_2:
[0002851e] 204a                      movea.l    a2,a0
[00028520] 4eb9 0004 9b7c            jsr        Aob_delete
ed3d_pattern_1:
[00028526] 504f                      addq.w     #8,a7
[00028528] 265f                      movea.l    (a7)+,a3
[0002852a] 245f                      movea.l    (a7)+,a2
[0002852c] 4e75                      rts

ed3d_pos:
[0002852e] 48e7 0038                 movem.l    a2-a4,-(a7)
[00028532] 514f                      subq.w     #8,a7
[00028534] 41f9 000b db08            lea.l      POP_HORPOSSEL,a0
[0002853a] 4eb9 0004 9a5c            jsr        Aob_create
[00028540] 2448                      movea.l    a0,a2
[00028542] 200a                      move.l     a2,d0
[00028544] 6700 0128                 beq        ed3d_pos_1
[00028548] 47f9 0010 1f12            lea.l      ACSblk,a3
[0002854e] 7015                      moveq.l    #21,d0
[00028550] 2053                      movea.l    (a3),a0
[00028552] 2268 0258                 movea.l    600(a0),a1
[00028556] 2269 0014                 movea.l    20(a1),a1
[0002855a] 41d7                      lea.l      (a7),a0
[0002855c] 4eb9 0004 a3be            jsr        Aob_offset
[00028562] 7001                      moveq.l    #1,d0
[00028564] 2053                      movea.l    (a3),a0
[00028566] 2268 0258                 movea.l    600(a0),a1
[0002856a] d069 0034                 add.w      52(a1),d0
[0002856e] d157                      add.w      d0,(a7)
[00028570] 7201                      moveq.l    #1,d1
[00028572] d269 0036                 add.w      54(a1),d1
[00028576] d36f 0002                 add.w      d1,2(a7)
[0002857a] 2268 025c                 movea.l    604(a0),a1
[0002857e] 2069 003c                 movea.l    60(a1),a0
[00028582] 2428 0004                 move.l     4(a0),d2
[00028586] 701c                      moveq.l    #28,d0
[00028588] e0a2                      asr.l      d0,d2
[0002858a] c47c 0003                 and.w      #$0003,d2
[0002858e] 4a42                      tst.w      d2
[00028590] 670a                      beq.s      ed3d_pos_2
[00028592] 5342                      subq.w     #1,d2
[00028594] 670e                      beq.s      ed3d_pos_3
[00028596] 5342                      subq.w     #1,d2
[00028598] 6712                      beq.s      ed3d_pos_4
[0002859a] 6016                      bra.s      ed3d_pos_5
ed3d_pos_2:
[0002859c] 006a 0004 0022            ori.w      #$0004,34(a2)
[000285a2] 600e                      bra.s      ed3d_pos_5
ed3d_pos_3:
[000285a4] 006a 0004 0052            ori.w      #$0004,82(a2)
[000285aa] 6006                      bra.s      ed3d_pos_5
ed3d_pos_4:
[000285ac] 006a 0004 003a            ori.w      #$0004,58(a2)
ed3d_pos_5:
[000285b2] 322f 0002                 move.w     2(a7),d1
[000285b6] 3017                      move.w     (a7),d0
[000285b8] 224a                      movea.l    a2,a1
[000285ba] 2053                      movea.l    (a3),a0
[000285bc] 2068 0258                 movea.l    600(a0),a0
[000285c0] 4eb9 0004 948a            jsr        Ame_popup
[000285c6] 4a40                      tst.w      d0
[000285c8] 6f00 009c                 ble        ed3d_pos_6
[000285cc] 2053                      movea.l    (a3),a0
[000285ce] 2268 025c                 movea.l    604(a0),a1
[000285d2] 2869 003c                 movea.l    60(a1),a4
[000285d6] 584c                      addq.w     #4,a4
[000285d8] 0294 cfff ffff            andi.l     #$CFFFFFFF,(a4)
[000285de] 3200                      move.w     d0,d1
[000285e0] 5341                      subq.w     #1,d1
[000285e2] 670a                      beq.s      ed3d_pos_7
[000285e4] 5341                      subq.w     #1,d1
[000285e6] 671c                      beq.s      ed3d_pos_8
[000285e8] 5341                      subq.w     #1,d1
[000285ea] 6734                      beq.s      ed3d_pos_9
[000285ec] 604c                      bra.s      ed3d_pos_10
ed3d_pos_7:
[000285ee] 43f9 000b d309            lea.l      HPOS_TEXT1,a1
[000285f4] 7017                      moveq.l    #23,d0
[000285f6] 2053                      movea.l    (a3),a0
[000285f8] 2068 025c                 movea.l    604(a0),a0
[000285fc] 4eb9 0004 afe0            jsr        Aob_puttext
[00028602] 6036                      bra.s      ed3d_pos_10
ed3d_pos_8:
[00028604] 0094 2000 0000            ori.l      #$20000000,(a4)
[0002860a] 43f9 000b d311            lea.l      HPOS_TEXT2,a1
[00028610] 7017                      moveq.l    #23,d0
[00028612] 2053                      movea.l    (a3),a0
[00028614] 2068 025c                 movea.l    604(a0),a0
[00028618] 4eb9 0004 afe0            jsr        Aob_puttext
[0002861e] 601a                      bra.s      ed3d_pos_10
ed3d_pos_9:
[00028620] 0094 1000 0000            ori.l      #$10000000,(a4)
[00028626] 43f9 000b d319            lea.l      HPOS_TEXT3,a1
[0002862c] 7017                      moveq.l    #23,d0
[0002862e] 2053                      movea.l    (a3),a0
[00028630] 2068 025c                 movea.l    604(a0),a0
[00028634] 4eb9 0004 afe0            jsr        Aob_puttext
ed3d_pos_10:
[0002863a] 72ff                      moveq.l    #-1,d1
[0002863c] 7017                      moveq.l    #23,d0
[0002863e] 2053                      movea.l    (a3),a0
[00028640] 2068 0258                 movea.l    600(a0),a0
[00028644] 2253                      movea.l    (a3),a1
[00028646] 2869 0258                 movea.l    600(a1),a4
[0002864a] 226c 0066                 movea.l    102(a4),a1
[0002864e] 4e91                      jsr        (a1)
[00028650] 72ff                      moveq.l    #-1,d1
[00028652] 7001                      moveq.l    #1,d0
[00028654] 2053                      movea.l    (a3),a0
[00028656] 2068 0258                 movea.l    600(a0),a0
[0002865a] 2253                      movea.l    (a3),a1
[0002865c] 2869 0258                 movea.l    600(a1),a4
[00028660] 226c 0066                 movea.l    102(a4),a1
[00028664] 4e91                      jsr        (a1)
ed3d_pos_6:
[00028666] 204a                      movea.l    a2,a0
[00028668] 4eb9 0004 9b7c            jsr        Aob_delete
ed3d_pos_1:
[0002866e] 504f                      addq.w     #8,a7
[00028670] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00028674] 4e75                      rts

ed3d_replace:
[00028676] 2079 0010 1f12            movea.l    ACSblk,a0
[0002867c] 2268 025c                 movea.l    604(a0),a1
[00028680] 2069 003c                 movea.l    60(a1),a0
[00028684] 5848                      addq.w     #4,a0
[00028686] 0090 0000 0080            ori.l      #$00000080,(a0)
[0002868c] 72ff                      moveq.l    #-1,d1
[0002868e] 7001                      moveq.l    #1,d0
[00028690] 2079 0010 1f12            movea.l    ACSblk,a0
[00028696] 2068 0258                 movea.l    600(a0),a0
[0002869a] 2279 0010 1f12            movea.l    ACSblk,a1
[000286a0] 2269 0258                 movea.l    600(a1),a1
[000286a4] 2269 0066                 movea.l    102(a1),a1
[000286a8] 4e91                      jsr        (a1)
[000286aa] 4e75                      rts

ed3d_size:
[000286ac] 48e7 0038                 movem.l    a2-a4,-(a7)
[000286b0] 514f                      subq.w     #8,a7
[000286b2] 41f9 000b dc40            lea.l      POP_SIZESEL,a0
[000286b8] 4eb9 0004 9a5c            jsr        Aob_create
[000286be] 2448                      movea.l    a0,a2
[000286c0] 200a                      move.l     a2,d0
[000286c2] 6700 00ec                 beq        ed3d_size_1
[000286c6] 47f9 0010 1f12            lea.l      ACSblk,a3
[000286cc] 7010                      moveq.l    #16,d0
[000286ce] 2053                      movea.l    (a3),a0
[000286d0] 2268 0258                 movea.l    600(a0),a1
[000286d4] 2269 0014                 movea.l    20(a1),a1
[000286d8] 41d7                      lea.l      (a7),a0
[000286da] 4eb9 0004 a3be            jsr        Aob_offset
[000286e0] 7001                      moveq.l    #1,d0
[000286e2] 2053                      movea.l    (a3),a0
[000286e4] 2268 0258                 movea.l    600(a0),a1
[000286e8] d069 0034                 add.w      52(a1),d0
[000286ec] d157                      add.w      d0,(a7)
[000286ee] 7201                      moveq.l    #1,d1
[000286f0] d269 0036                 add.w      54(a1),d1
[000286f4] d36f 0002                 add.w      d1,2(a7)
[000286f8] 2268 025c                 movea.l    604(a0),a1
[000286fc] 2069 003c                 movea.l    60(a1),a0
[00028700] 2028 0004                 move.l     4(a0),d0
[00028704] 721e                      moveq.l    #30,d1
[00028706] e2a0                      asr.l      d1,d0
[00028708] c07c 0001                 and.w      #$0001,d0
[0002870c] 48c0                      ext.l      d0
[0002870e] 2400                      move.l     d0,d2
[00028710] d482                      add.l      d2,d2
[00028712] d480                      add.l      d0,d2
[00028714] e78a                      lsl.l      #3,d2
[00028716] 0072 0004 2822            ori.w      #$0004,34(a2,d2.l)
[0002871c] 3017                      move.w     (a7),d0
[0002871e] 224a                      movea.l    a2,a1
[00028720] 2053                      movea.l    (a3),a0
[00028722] 2068 0258                 movea.l    600(a0),a0
[00028726] 322f 0002                 move.w     2(a7),d1
[0002872a] 4eb9 0004 948a            jsr        Ame_popup
[00028730] 4a40                      tst.w      d0
[00028732] 6f74                      ble.s      ed3d_size_2
[00028734] 2053                      movea.l    (a3),a0
[00028736] 2268 025c                 movea.l    604(a0),a1
[0002873a] 2869 003c                 movea.l    60(a1),a4
[0002873e] 584c                      addq.w     #4,a4
[00028740] b07c 0001                 cmp.w      #$0001,d0
[00028744] 661c                      bne.s      ed3d_size_3
[00028746] 0294 bfff ffff            andi.l     #$BFFFFFFF,(a4)
[0002874c] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[00028752] 7012                      moveq.l    #18,d0
[00028754] 2053                      movea.l    (a3),a0
[00028756] 2068 025c                 movea.l    604(a0),a0
[0002875a] 4eb9 0004 afe0            jsr        Aob_puttext
[00028760] 601a                      bra.s      ed3d_size_4
ed3d_size_3:
[00028762] 0094 4000 0000            ori.l      #$40000000,(a4)
[00028768] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[0002876e] 7012                      moveq.l    #18,d0
[00028770] 2053                      movea.l    (a3),a0
[00028772] 2068 025c                 movea.l    604(a0),a0
[00028776] 4eb9 0004 afe0            jsr        Aob_puttext
ed3d_size_4:
[0002877c] 72ff                      moveq.l    #-1,d1
[0002877e] 7012                      moveq.l    #18,d0
[00028780] 2053                      movea.l    (a3),a0
[00028782] 2068 0258                 movea.l    600(a0),a0
[00028786] 2253                      movea.l    (a3),a1
[00028788] 2869 0258                 movea.l    600(a1),a4
[0002878c] 226c 0066                 movea.l    102(a4),a1
[00028790] 4e91                      jsr        (a1)
[00028792] 72ff                      moveq.l    #-1,d1
[00028794] 7001                      moveq.l    #1,d0
[00028796] 2053                      movea.l    (a3),a0
[00028798] 2068 0258                 movea.l    600(a0),a0
[0002879c] 2253                      movea.l    (a3),a1
[0002879e] 2869 0258                 movea.l    600(a1),a4
[000287a2] 226c 0066                 movea.l    102(a4),a1
[000287a6] 4e91                      jsr        (a1)
ed3d_size_2:
[000287a8] 204a                      movea.l    a2,a0
[000287aa] 4eb9 0004 9b7c            jsr        Aob_delete
ed3d_size_1:
[000287b0] 504f                      addq.w     #8,a7
[000287b2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000287b6] 4e75                      rts

ed3d_textcol:
[000287b8] 3f03                      move.w     d3,-(a7)
[000287ba] 2f0a                      move.l     a2,-(a7)
[000287bc] 2079 0010 1f12            movea.l    ACSblk,a0
[000287c2] 2268 025c                 movea.l    604(a0),a1
[000287c6] 2469 003c                 movea.l    60(a1),a2
[000287ca] 584a                      addq.w     #4,a2
[000287cc] 700c                      moveq.l    #12,d0
[000287ce] 3f00                      move.w     d0,-(a7)
[000287d0] 740d                      moveq.l    #13,d2
[000287d2] 720a                      moveq.l    #10,d1
[000287d4] 2012                      move.l     (a2),d0
[000287d6] e080                      asr.l      #8,d0
[000287d8] c07c 000f                 and.w      #$000F,d0
[000287dc] 4eb9 0002 f280            jsr        oe_colsel
[000287e2] 544f                      addq.w     #2,a7
[000287e4] 3600                      move.w     d0,d3
[000287e6] 6b2e                      bmi.s      ed3d_textcol_1
[000287e8] 2212                      move.l     (a2),d1
[000287ea] c2bc ffff f0ff            and.l      #$FFFFF0FF,d1
[000287f0] 48c0                      ext.l      d0
[000287f2] e188                      lsl.l      #8,d0
[000287f4] 8280                      or.l       d0,d1
[000287f6] 2481                      move.l     d1,(a2)
[000287f8] 2079 0010 1f12            movea.l    ACSblk,a0
[000287fe] 2068 0258                 movea.l    600(a0),a0
[00028802] 2279 0010 1f12            movea.l    ACSblk,a1
[00028808] 2469 0258                 movea.l    600(a1),a2
[0002880c] 226a 0066                 movea.l    102(a2),a1
[00028810] 7001                      moveq.l    #1,d0
[00028812] 72ff                      moveq.l    #-1,d1
[00028814] 4e91                      jsr        (a1)
ed3d_textcol_1:
[00028816] 245f                      movea.l    (a7)+,a2
[00028818] 361f                      move.w     (a7)+,d3
[0002881a] 4e75                      rts

ed3d_trans:
[0002881c] 2079 0010 1f12            movea.l    ACSblk,a0
[00028822] 2268 025c                 movea.l    604(a0),a1
[00028826] 2069 003c                 movea.l    60(a1),a0
[0002882a] 5848                      addq.w     #4,a0
[0002882c] 0290 ffff ff7f            andi.l     #$FFFFFF7F,(a0)
[00028832] 72ff                      moveq.l    #-1,d1
[00028834] 7001                      moveq.l    #1,d0
[00028836] 2079 0010 1f12            movea.l    ACSblk,a0
[0002883c] 2068 0258                 movea.l    600(a0),a0
[00028840] 2279 0010 1f12            movea.l    ACSblk,a1
[00028846] 2269 0258                 movea.l    600(a1),a1
[0002884a] 2269 0066                 movea.l    102(a1),a1
[0002884e] 4e91                      jsr        (a1)
[00028850] 4e75                      rts

init_3Dbutton:
[00028852] 2f0a                      move.l     a2,-(a7)
[00028854] 2f0b                      move.l     a3,-(a7)
[00028856] 2448                      movea.l    a0,a2
[00028858] 43f9 000b 6838            lea.l      data,a1
[0002885e] 303c 2329                 move.w     #$2329,d0
[00028862] 266a 0004                 movea.l    4(a2),a3
[00028866] 4e93                      jsr        (a3)
[00028868] 265f                      movea.l    (a7)+,a3
[0002886a] 245f                      movea.l    (a7)+,a2
[0002886c] 4e75                      rts

minsize:
[0002886e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00028872] 2448                      movea.l    a0,a2
[00028874] 2649                      movea.l    a1,a3
[00028876] 202a 000c                 move.l     12(a2),d0
[0002887a] 6716                      beq.s      minsize_1
[0002887c] 2040                      movea.l    d0,a0
[0002887e] 4eb9 0007 69b0            jsr        strlen
[00028884] 2600                      move.l     d0,d3
[00028886] 2079 0010 1f12            movea.l    ACSblk,a0
[0002888c] c7e8 0012                 muls.w     18(a0),d3
[00028890] 600a                      bra.s      minsize_2
minsize_1:
[00028892] 2079 0010 1f12            movea.l    ACSblk,a0
[00028898] 3628 0012                 move.w     18(a0),d3
minsize_2:
[0002889c] 3683                      move.w     d3,(a3)
[0002889e] 2079 0010 1f12            movea.l    ACSblk,a0
[000288a4] 226f 0010                 movea.l    16(a7),a1
[000288a8] 32a8 0014                 move.w     20(a0),(a1)
[000288ac] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[000288b0] 4e75                      rts

object_tree:
[000288b2] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[000288b6] 4fef ffdc                 lea.l      -36(a7),a7
[000288ba] 2a48                      movea.l    a0,a5
[000288bc] 2849                      movea.l    a1,a4
[000288be] 41f9 000b 60f2            lea.l      ED_3DBUTTON,a0
[000288c4] 4eb9 0004 9a5c            jsr        Aob_create
[000288ca] 2448                      movea.l    a0,a2
[000288cc] 200a                      move.l     a2,d0
[000288ce] 6606                      bne.s      object_tree_1
[000288d0] 91c8                      suba.l     a0,a0
[000288d2] 6000 0402                 bra        object_tree_2
object_tree_1:
[000288d6] 701c                      moveq.l    #28,d0
[000288d8] 224a                      movea.l    a2,a1
[000288da] 2079 0010 1f12            movea.l    ACSblk,a0
[000288e0] 2068 0258                 movea.l    600(a0),a0
[000288e4] 4eb9 0002 f23c            jsr        oe_beself
[000288ea] 7045                      moveq.l    #69,d0
[000288ec] 224a                      movea.l    a2,a1
[000288ee] 2079 0010 1f12            movea.l    ACSblk,a0
[000288f4] 2068 0258                 movea.l    600(a0),a0
[000288f8] 4eb9 0002 f23c            jsr        oe_beself
[000288fe] 7046                      moveq.l    #70,d0
[00028900] 224a                      movea.l    a2,a1
[00028902] 2079 0010 1f12            movea.l    ACSblk,a0
[00028908] 2068 0258                 movea.l    600(a0),a0
[0002890c] 4eb9 0002 f23c            jsr        oe_beself
[00028912] 47ea 0030                 lea.l      48(a2),a3
[00028916] 7016                      moveq.l    #22,d0
[00028918] c06c 0008                 and.w      8(a4),d0
[0002891c] 816b 0008                 or.w       d0,8(a3)
[00028920] 703f                      moveq.l    #63,d0
[00028922] c06c 000a                 and.w      10(a4),d0
[00028926] 816b 000a                 or.w       d0,10(a3)
[0002892a] 286b 000c                 movea.l    12(a3),a4
[0002892e] 486f 0020                 pea.l      32(a7)
[00028932] 43f9 000b 68a2            lea.l      $000B68A2,a1
[00028938] 2055                      movea.l    (a5),a0
[0002893a] 4eb9 0007 594a            jsr        sscanf
[00028940] 584f                      addq.w     #4,a7
[00028942] 296f 0020 0004            move.l     32(a7),4(a4)
[00028948] 0c6d 0002 0008            cmpi.w     #$0002,8(a5)
[0002894e] 6620                      bne.s      object_tree_3
[00028950] 43f9 000b 68a9            lea.l      $000B68A9,a1
[00028956] 7004                      moveq.l    #4,d0
[00028958] 204b                      movea.l    a3,a0
[0002895a] 2c6c 0008                 movea.l    8(a4),a6
[0002895e] 4e96                      jsr        (a6)
[00028960] 226d 000a                 movea.l    10(a5),a1
[00028964] 701c                      moveq.l    #28,d0
[00028966] 204a                      movea.l    a2,a0
[00028968] 4eb9 0004 afe0            jsr        Aob_puttext
[0002896e] 6020                      bra.s      object_tree_4
object_tree_3:
[00028970] 43f9 000b 688a            lea.l      $000B688A,a1
[00028976] 7004                      moveq.l    #4,d0
[00028978] 204b                      movea.l    a3,a0
[0002897a] 2c6c 0008                 movea.l    8(a4),a6
[0002897e] 4e96                      jsr        (a6)
[00028980] 43f9 000b 688a            lea.l      $000B688A,a1
[00028986] 701c                      moveq.l    #28,d0
[00028988] 204a                      movea.l    a2,a0
[0002898a] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_4:
[00028990] 206a 0684                 movea.l    1668(a2),a0
[00028994] 2968 000c 0018            move.l     12(a0),24(a4)
[0002899a] 206d 0026                 movea.l    38(a5),a0
[0002899e] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000289a4] 4a40                      tst.w      d0
[000289a6] 6712                      beq.s      object_tree_5
[000289a8] 43f9 000b 688a            lea.l      $000B688A,a1
[000289ae] 7045                      moveq.l    #69,d0
[000289b0] 204a                      movea.l    a2,a0
[000289b2] 4eb9 0004 afe0            jsr        Aob_puttext
[000289b8] 600e                      bra.s      object_tree_6
object_tree_5:
[000289ba] 226d 0026                 movea.l    38(a5),a1
[000289be] 7045                      moveq.l    #69,d0
[000289c0] 204a                      movea.l    a2,a0
[000289c2] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_6:
[000289c8] 206a 069c                 movea.l    1692(a2),a0
[000289cc] 2968 000c 001c            move.l     12(a0),28(a4)
[000289d2] 206d 002a                 movea.l    42(a5),a0
[000289d6] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000289dc] 4a40                      tst.w      d0
[000289de] 6712                      beq.s      object_tree_7
[000289e0] 43f9 000b 688a            lea.l      $000B688A,a1
[000289e6] 7046                      moveq.l    #70,d0
[000289e8] 204a                      movea.l    a2,a0
[000289ea] 4eb9 0004 afe0            jsr        Aob_puttext
[000289f0] 600e                      bra.s      object_tree_8
object_tree_7:
[000289f2] 226d 002a                 movea.l    42(a5),a1
[000289f6] 7046                      moveq.l    #70,d0
[000289f8] 204a                      movea.l    a2,a0
[000289fa] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_8:
[00028a00] 4bef 0012                 lea.l      18(a7),a5
[00028a04] 2079 0010 1f12            movea.l    ACSblk,a0
[00028a0a] 2aa8 0258                 move.l     600(a0),(a5)
[00028a0e] 47ea 0348                 lea.l      840(a2),a3
[00028a12] 2b4b 0004                 move.l     a3,4(a5)
[00028a16] 3b7c 0023 0008            move.w     #$0023,8(a5)
[00028a1c] 224d                      movea.l    a5,a1
[00028a1e] 7009                      moveq.l    #9,d0
[00028a20] 204b                      movea.l    a3,a0
[00028a22] 4eb9 0003 589a            jsr        Auo_slider
[00028a28] 49ef 001c                 lea.l      28(a7),a4
[00028a2c] 28bc 0000 0008            move.l     #$00000008,(a4)
[00028a32] 224c                      movea.l    a4,a1
[00028a34] 7064                      moveq.l    #100,d0
[00028a36] 204b                      movea.l    a3,a0
[00028a38] 4eb9 0003 589a            jsr        Auo_slider
[00028a3e] 28bc 0000 0001            move.l     #$00000001,(a4)
[00028a44] 224c                      movea.l    a4,a1
[00028a46] 7065                      moveq.l    #101,d0
[00028a48] 204b                      movea.l    a3,a0
[00028a4a] 4eb9 0003 589a            jsr        Auo_slider
[00028a50] 202f 0020                 move.l     32(a7),d0
[00028a54] 7210                      moveq.l    #16,d1
[00028a56] e2a0                      asr.l      d1,d0
[00028a58] c0bc 0000 000f            and.l      #$0000000F,d0
[00028a5e] 2880                      move.l     d0,(a4)
[00028a60] 224c                      movea.l    a4,a1
[00028a62] 204b                      movea.l    a3,a0
[00028a64] 7011                      moveq.l    #17,d0
[00028a66] 4eb9 0003 589a            jsr        Auo_slider
[00028a6c] 202f 0020                 move.l     32(a7),d0
[00028a70] 7210                      moveq.l    #16,d1
[00028a72] e2a0                      asr.l      d1,d0
[00028a74] c07c 0007                 and.w      #$0007,d0
[00028a78] 3f00                      move.w     d0,-(a7)
[00028a7a] 43f9 000b 68ad            lea.l      $000B68AD,a1
[00028a80] 41ef 0002                 lea.l      2(a7),a0
[00028a84] 4eb9 0007 5680            jsr        sprintf
[00028a8a] 544f                      addq.w     #2,a7
[00028a8c] 43d7                      lea.l      (a7),a1
[00028a8e] 7004                      moveq.l    #4,d0
[00028a90] 204b                      movea.l    a3,a0
[00028a92] 4eb9 0003 589a            jsr        Auo_slider
[00028a98] 2f7c 0002 8f0c 000a       move.l     #live_thickness,10(a7)
[00028aa0] 2f4b 000e                 move.l     a3,14(a7)
[00028aa4] 43ef 000a                 lea.l      10(a7),a1
[00028aa8] 7067                      moveq.l    #103,d0
[00028aaa] 204b                      movea.l    a3,a0
[00028aac] 4eb9 0003 589a            jsr        Auo_slider
[00028ab2] 47ea 0300                 lea.l      768(a2),a3
[00028ab6] 2b4b 0004                 move.l     a3,4(a5)
[00028aba] 3b7c 0020 0008            move.w     #$0020,8(a5)
[00028ac0] 224d                      movea.l    a5,a1
[00028ac2] 7009                      moveq.l    #9,d0
[00028ac4] 204b                      movea.l    a3,a0
[00028ac6] 4eb9 0003 589a            jsr        Auo_slider
[00028acc] 28bc 0000 0010            move.l     #$00000010,(a4)
[00028ad2] 224c                      movea.l    a4,a1
[00028ad4] 7064                      moveq.l    #100,d0
[00028ad6] 204b                      movea.l    a3,a0
[00028ad8] 4eb9 0003 589a            jsr        Auo_slider
[00028ade] 28bc 0000 0001            move.l     #$00000001,(a4)
[00028ae4] 224c                      movea.l    a4,a1
[00028ae6] 7065                      moveq.l    #101,d0
[00028ae8] 204b                      movea.l    a3,a0
[00028aea] 4eb9 0003 589a            jsr        Auo_slider
[00028af0] 202f 0020                 move.l     32(a7),d0
[00028af4] 7214                      moveq.l    #20,d1
[00028af6] e2a0                      asr.l      d1,d0
[00028af8] c0bc 0000 000f            and.l      #$0000000F,d0
[00028afe] 2880                      move.l     d0,(a4)
[00028b00] 7408                      moveq.l    #8,d2
[00028b02] b480                      cmp.l      d0,d2
[00028b04] 6f04                      ble.s      object_tree_9
[00028b06] d594                      add.l      d2,(a4)
[00028b08] 6002                      bra.s      object_tree_10
object_tree_9:
[00028b0a] 5194                      subq.l     #8,(a4)
object_tree_10:
[00028b0c] 224c                      movea.l    a4,a1
[00028b0e] 7011                      moveq.l    #17,d0
[00028b10] 204b                      movea.l    a3,a0
[00028b12] 4eb9 0003 589a            jsr        Auo_slider
[00028b18] 202f 0020                 move.l     32(a7),d0
[00028b1c] 7214                      moveq.l    #20,d1
[00028b1e] e2a0                      asr.l      d1,d0
[00028b20] c0bc 0000 000f            and.l      #$0000000F,d0
[00028b26] 2880                      move.l     d0,(a4)
[00028b28] 7407                      moveq.l    #7,d2
[00028b2a] b480                      cmp.l      d0,d2
[00028b2c] 6c06                      bge.s      object_tree_11
[00028b2e] 0494 0000 0010            subi.l     #$00000010,(a4)
object_tree_11:
[00028b34] 3f2c 0002                 move.w     2(a4),-(a7)
[00028b38] 43f9 000b 68ad            lea.l      $000B68AD,a1
[00028b3e] 41ef 0002                 lea.l      2(a7),a0
[00028b42] 4eb9 0007 5680            jsr        sprintf
[00028b48] 544f                      addq.w     #2,a7
[00028b4a] 43d7                      lea.l      (a7),a1
[00028b4c] 7004                      moveq.l    #4,d0
[00028b4e] 204b                      movea.l    a3,a0
[00028b50] 4eb9 0003 589a            jsr        Auo_slider
[00028b56] 2f7c 0002 8e92 000a       move.l     #live_offset,10(a7)
[00028b5e] 2f4b 000e                 move.l     a3,14(a7)
[00028b62] 43ef 000a                 lea.l      10(a7),a1
[00028b66] 7067                      moveq.l    #103,d0
[00028b68] 204b                      movea.l    a3,a0
[00028b6a] 4eb9 0003 589a            jsr        Auo_slider
[00028b70] 262f 0020                 move.l     32(a7),d3
[00028b74] 7018                      moveq.l    #24,d0
[00028b76] e0a3                      asr.l      d0,d3
[00028b78] c67c 000f                 and.w      #$000F,d3
[00028b7c] 3203                      move.w     d3,d1
[00028b7e] 48c1                      ext.l      d1
[00028b80] e589                      lsl.l      #2,d1
[00028b82] 41f9 000b e270            lea.l      colour_text,a0
[00028b88] 2270 1800                 movea.l    0(a0,d1.l),a1
[00028b8c] 204a                      movea.l    a2,a0
[00028b8e] 7032                      moveq.l    #50,d0
[00028b90] 4eb9 0004 afe0            jsr        Aob_puttext
[00028b96] 3003                      move.w     d3,d0
[00028b98] 026a fff0 04a6            andi.w     #$FFF0,1190(a2)
[00028b9e] c07c 000f                 and.w      #$000F,d0
[00028ba2] 816a 04a6                 or.w       d0,1190(a2)
[00028ba6] 760f                      moveq.l    #15,d3
[00028ba8] c66f 0022                 and.w      34(a7),d3
[00028bac] 3003                      move.w     d3,d0
[00028bae] 48c0                      ext.l      d0
[00028bb0] e588                      lsl.l      #2,d0
[00028bb2] 41f9 000b e270            lea.l      colour_text,a0
[00028bb8] 2270 0800                 movea.l    0(a0,d0.l),a1
[00028bbc] 204a                      movea.l    a2,a0
[00028bbe] 7041                      moveq.l    #65,d0
[00028bc0] 4eb9 0004 afe0            jsr        Aob_puttext
[00028bc6] 3003                      move.w     d3,d0
[00028bc8] 026a fff0 060e            andi.w     #$FFF0,1550(a2)
[00028bce] c07c 000f                 and.w      #$000F,d0
[00028bd2] 816a 060e                 or.w       d0,1550(a2)
[00028bd6] 262f 0020                 move.l     32(a7),d3
[00028bda] 700c                      moveq.l    #12,d0
[00028bdc] e0a3                      asr.l      d0,d3
[00028bde] c67c 000f                 and.w      #$000F,d3
[00028be2] 3203                      move.w     d3,d1
[00028be4] 48c1                      ext.l      d1
[00028be6] e589                      lsl.l      #2,d1
[00028be8] 41f9 000b e270            lea.l      colour_text,a0
[00028bee] 2270 1800                 movea.l    0(a0,d1.l),a1
[00028bf2] 204a                      movea.l    a2,a0
[00028bf4] 702b                      moveq.l    #43,d0
[00028bf6] 4eb9 0004 afe0            jsr        Aob_puttext
[00028bfc] 3003                      move.w     d3,d0
[00028bfe] 026a fff0 03fe            andi.w     #$FFF0,1022(a2)
[00028c04] c07c 000f                 and.w      #$000F,d0
[00028c08] 816a 03fe                 or.w       d0,1022(a2)
[00028c0c] 262f 0020                 move.l     32(a7),d3
[00028c10] e883                      asr.l      #4,d3
[00028c12] c67c 0007                 and.w      #$0007,d3
[00028c16] 3003                      move.w     d3,d0
[00028c18] 026a ff8f 057e            andi.w     #$FF8F,1406(a2)
[00028c1e] c07c 0007                 and.w      #$0007,d0
[00028c22] e948                      lsl.w      #4,d0
[00028c24] 816a 057e                 or.w       d0,1406(a2)
[00028c28] 202f 0020                 move.l     32(a7),d0
[00028c2c] 721c                      moveq.l    #28,d1
[00028c2e] e2a0                      asr.l      d1,d0
[00028c30] c07c 000f                 and.w      #$000F,d0
[00028c34] 5340                      subq.w     #1,d0
[00028c36] 6706                      beq.s      object_tree_12
[00028c38] 5340                      subq.w     #1,d0
[00028c3a] 6714                      beq.s      object_tree_13
[00028c3c] 6024                      bra.s      object_tree_14
object_tree_12:
[00028c3e] 43f9 000b d319            lea.l      HPOS_TEXT3,a1
[00028c44] 7017                      moveq.l    #23,d0
[00028c46] 204a                      movea.l    a2,a0
[00028c48] 4eb9 0004 afe0            jsr        Aob_puttext
[00028c4e] 6022                      bra.s      object_tree_15
object_tree_13:
[00028c50] 43f9 000b d311            lea.l      HPOS_TEXT2,a1
[00028c56] 7017                      moveq.l    #23,d0
[00028c58] 204a                      movea.l    a2,a0
[00028c5a] 4eb9 0004 afe0            jsr        Aob_puttext
[00028c60] 6010                      bra.s      object_tree_15
object_tree_14:
[00028c62] 43f9 000b d309            lea.l      HPOS_TEXT1,a1
[00028c68] 7017                      moveq.l    #23,d0
[00028c6a] 204a                      movea.l    a2,a0
[00028c6c] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_15:
[00028c72] 202f 0020                 move.l     32(a7),d0
[00028c76] c0bc 4000 0000            and.l      #$40000000,d0
[00028c7c] 6712                      beq.s      object_tree_16
[00028c7e] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[00028c84] 204a                      movea.l    a2,a0
[00028c86] 7012                      moveq.l    #18,d0
[00028c88] 4eb9 0004 afe0            jsr        Aob_puttext
[00028c8e] 6010                      bra.s      object_tree_17
object_tree_16:
[00028c90] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[00028c96] 7012                      moveq.l    #18,d0
[00028c98] 204a                      movea.l    a2,a0
[00028c9a] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_17:
[00028ca0] 262f 0020                 move.l     32(a7),d3
[00028ca4] e083                      asr.l      #8,d3
[00028ca6] c67c 000f                 and.w      #$000F,d3
[00028caa] 3003                      move.w     d3,d0
[00028cac] 48c0                      ext.l      d0
[00028cae] e588                      lsl.l      #2,d0
[00028cb0] 41f9 000b e270            lea.l      colour_text,a0
[00028cb6] 2270 0800                 movea.l    0(a0,d0.l),a1
[00028cba] 204a                      movea.l    a2,a0
[00028cbc] 700d                      moveq.l    #13,d0
[00028cbe] 4eb9 0004 afe0            jsr        Aob_puttext
[00028cc4] 3003                      move.w     d3,d0
[00028cc6] 026a fff0 012e            andi.w     #$FFF0,302(a2)
[00028ccc] c07c 000f                 and.w      #$000F,d0
[00028cd0] 816a 012e                 or.w       d0,302(a2)
[00028cd4] 204a                      movea.l    a2,a0
object_tree_2:
[00028cd6] 4fef 0024                 lea.l      36(a7),a7
[00028cda] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[00028cde] 4e75                      rts

test_it:
[00028ce0] 2f0a                      move.l     a2,-(a7)
[00028ce2] 2f0b                      move.l     a3,-(a7)
[00028ce4] 2648                      movea.l    a0,a3
[00028ce6] 2449                      movea.l    a1,a2
[00028ce8] 22bc 0005 a4e2            move.l     #A_3Dbutton,(a1)
[00028cee] 486a 0004                 pea.l      4(a2)
[00028cf2] 43f9 000b 68a2            lea.l      $000B68A2,a1
[00028cf8] 2050                      movea.l    (a0),a0
[00028cfa] 4eb9 0007 594a            jsr        sscanf
[00028d00] 584f                      addq.w     #4,a7
[00028d02] 257c 0005 9318 0008       move.l     #Auo_string,8(a2)
[00028d0a] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[00028d10] 6608                      bne.s      test_it_1
[00028d12] 256b 000a 000c            move.l     10(a3),12(a2)
[00028d18] 6004                      bra.s      test_it_2
test_it_1:
[00028d1a] 42aa 000c                 clr.l      12(a2)
test_it_2:
[00028d1e] 7000                      moveq.l    #0,d0
[00028d20] 2540 0014                 move.l     d0,20(a2)
[00028d24] 2540 0010                 move.l     d0,16(a2)
[00028d28] 206b 0026                 movea.l    38(a3),a0
[00028d2c] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00028d32] 4a40                      tst.w      d0
[00028d34] 6704                      beq.s      test_it_3
[00028d36] 91c8                      suba.l     a0,a0
[00028d38] 6004                      bra.s      test_it_4
test_it_3:
[00028d3a] 206b 0026                 movea.l    38(a3),a0
test_it_4:
[00028d3e] 2548 0018                 move.l     a0,24(a2)
[00028d42] 206b 002a                 movea.l    42(a3),a0
[00028d46] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00028d4c] 4a40                      tst.w      d0
[00028d4e] 6704                      beq.s      test_it_5
[00028d50] 91c8                      suba.l     a0,a0
[00028d52] 6004                      bra.s      test_it_6
test_it_5:
[00028d54] 206b 002a                 movea.l    42(a3),a0
test_it_6:
[00028d58] 2548 001c                 move.l     a0,28(a2)
[00028d5c] 265f                      movea.l    (a7)+,a3
[00028d5e] 245f                      movea.l    (a7)+,a2
[00028d60] 4e75                      rts

abort:
[00028d62] 2079 0010 1f12            movea.l    ACSblk,a0
[00028d68] 2268 0258                 movea.l    600(a0),a1
[00028d6c] 2069 0014                 movea.l    20(a1),a0
[00028d70] 2068 003c                 movea.l    60(a0),a0
[00028d74] 42a8 0018                 clr.l      24(a0)
[00028d78] 42a8 001c                 clr.l      28(a0)
[00028d7c] 2079 000b 6878            movea.l    $000B6878,a0
[00028d82] 2050                      movea.l    (a0),a0
[00028d84] 4e90                      jsr        (a0)
[00028d86] 4e75                      rts

ok:
[00028d88] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00028d8c] 4fef ffce                 lea.l      -50(a7),a7
[00028d90] 45f9 0010 1f12            lea.l      ACSblk,a2
[00028d96] 2052                      movea.l    (a2),a0
[00028d98] 2268 0258                 movea.l    600(a0),a1
[00028d9c] 2669 0014                 movea.l    20(a1),a3
[00028da0] 2a6b 003c                 movea.l    60(a3),a5
[00028da4] 49f9 000f f5c6            lea.l      parm,a4
[00028daa] 2f2d 0004                 move.l     4(a5),-(a7)
[00028dae] 43f9 000b 68a2            lea.l      $000B68A2,a1
[00028db4] 204c                      movea.l    a4,a0
[00028db6] 4eb9 0007 5680            jsr        sprintf
[00028dbc] 584f                      addq.w     #4,a7
[00028dbe] 4bef 0004                 lea.l      4(a7),a5
[00028dc2] 2a8c                      move.l     a4,(a5)
[00028dc4] 2b7c 000b 6897 0004       move.l     #$000B6897,4(a5)
[00028dcc] 43d7                      lea.l      (a7),a1
[00028dce] 7003                      moveq.l    #3,d0
[00028dd0] 41eb 02a0                 lea.l      672(a3),a0
[00028dd4] 4eb9 0005 e010            jsr        Auo_boxed
[00028dda] 2057                      movea.l    (a7),a0
[00028ddc] 1010                      move.b     (a0),d0
[00028dde] 671a                      beq.s      ok_1
[00028de0] 4eb9 0007 69b0            jsr        strlen
[00028de6] 2600                      move.l     d0,d3
[00028de8] 2052                      movea.l    (a2),a0
[00028dea] c7e8 0012                 muls.w     18(a0),d3
[00028dee] 3b7c 0002 0008            move.w     #$0002,8(a5)
[00028df4] 2b57 000a                 move.l     (a7),10(a5)
[00028df8] 600e                      bra.s      ok_2
ok_1:
[00028dfa] 2052                      movea.l    (a2),a0
[00028dfc] 3628 0012                 move.w     18(a0),d3
[00028e00] 426d 0008                 clr.w      8(a5)
[00028e04] 42ad 000a                 clr.l      10(a5)
ok_2:
[00028e08] 42ad 000e                 clr.l      14(a5)
[00028e0c] 4240                      clr.w      d0
[00028e0e] 3b40 001c                 move.w     d0,28(a5)
[00028e12] 3b40 0012                 move.w     d0,18(a5)
[00028e16] 7200                      moveq.l    #0,d1
[00028e18] 2b41 001e                 move.l     d1,30(a5)
[00028e1c] 2b41 0014                 move.l     d1,20(a5)
[00028e20] 7000                      moveq.l    #0,d0
[00028e22] 2b40 0022                 move.l     d0,34(a5)
[00028e26] 2b40 0018                 move.l     d0,24(a5)
[00028e2a] 43ed 0026                 lea.l      38(a5),a1
[00028e2e] 41eb 0678                 lea.l      1656(a3),a0
[00028e32] 7003                      moveq.l    #3,d0
[00028e34] 4eb9 0005 e010            jsr        Auo_boxed
[00028e3a] 206d 0026                 movea.l    38(a5),a0
[00028e3e] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00028e44] 4a40                      tst.w      d0
[00028e46] 6704                      beq.s      ok_3
[00028e48] 42ad 0026                 clr.l      38(a5)
ok_3:
[00028e4c] 43ed 002a                 lea.l      42(a5),a1
[00028e50] 7003                      moveq.l    #3,d0
[00028e52] 41eb 0690                 lea.l      1680(a3),a0
[00028e56] 4eb9 0005 e010            jsr        Auo_boxed
[00028e5c] 206d 002a                 movea.l    42(a5),a0
[00028e60] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00028e66] 4a40                      tst.w      d0
[00028e68] 6704                      beq.s      ok_4
[00028e6a] 42ad 002a                 clr.l      42(a5)
ok_4:
[00028e6e] 2052                      movea.l    (a2),a0
[00028e70] 3228 0014                 move.w     20(a0),d1
[00028e74] 3003                      move.w     d3,d0
[00028e76] 204d                      movea.l    a5,a0
[00028e78] 2279 000b 6878            movea.l    $000B6878,a1
[00028e7e] 2269 0004                 movea.l    4(a1),a1
[00028e82] 4e91                      jsr        (a1)
[00028e84] 6100 fedc                 bsr        abort
[00028e88] 4fef 0032                 lea.l      50(a7),a7
[00028e8c] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00028e90] 4e75                      rts

live_offset:
[00028e92] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[00028e96] 4fef fff0                 lea.l      -16(a7),a7
[00028e9a] 2448                      movea.l    a0,a2
[00028e9c] 2600                      move.l     d0,d3
[00028e9e] 5183                      subq.l     #8,d3
[00028ea0] 2803                      move.l     d3,d4
[00028ea2] 43d7                      lea.l      (a7),a1
[00028ea4] 7012                      moveq.l    #18,d0
[00028ea6] 4eb9 0003 589a            jsr        Auo_slider
[00028eac] 2457                      movea.l    (a7),a2
[00028eae] 206a 0014                 movea.l    20(a2),a0
[00028eb2] 41e8 0030                 lea.l      48(a0),a0
[00028eb6] 2268 000c                 movea.l    12(a0),a1
[00028eba] 5849                      addq.w     #4,a1
[00028ebc] 2049                      movea.l    a1,a0
[00028ebe] 4a83                      tst.l      d3
[00028ec0] 6a06                      bpl.s      live_offset_1
[00028ec2] d6bc 0000 0010            add.l      #$00000010,d3
live_offset_1:
[00028ec8] 2010                      move.l     (a0),d0
[00028eca] 7214                      moveq.l    #20,d1
[00028ecc] e2a0                      asr.l      d1,d0
[00028ece] c0bc 0000 000f            and.l      #$0000000F,d0
[00028ed4] b680                      cmp.l      d0,d3
[00028ed6] 671c                      beq.s      live_offset_2
[00028ed8] 2410                      move.l     (a0),d2
[00028eda] c4bc ff0f ffff            and.l      #$FF0FFFFF,d2
[00028ee0] 2003                      move.l     d3,d0
[00028ee2] e3a8                      lsl.l      d1,d0
[00028ee4] 8480                      or.l       d0,d2
[00028ee6] 2082                      move.l     d2,(a0)
[00028ee8] 204a                      movea.l    a2,a0
[00028eea] 226a 0066                 movea.l    102(a2),a1
[00028eee] 7001                      moveq.l    #1,d0
[00028ef0] 72ff                      moveq.l    #-1,d1
[00028ef2] 4e91                      jsr        (a1)
live_offset_2:
[00028ef4] 720a                      moveq.l    #10,d1
[00028ef6] 41ef 000a                 lea.l      10(a7),a0
[00028efa] 3004                      move.w     d4,d0
[00028efc] 4eb9 0007 6804            jsr        itoa
[00028f02] 4fef 0010                 lea.l      16(a7),a7
[00028f06] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00028f0a] 4e75                      rts

live_thickness:
[00028f0c] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[00028f10] 4fef fff0                 lea.l      -16(a7),a7
[00028f14] 2448                      movea.l    a0,a2
[00028f16] 2600                      move.l     d0,d3
[00028f18] 3803                      move.w     d3,d4
[00028f1a] 43d7                      lea.l      (a7),a1
[00028f1c] 7012                      moveq.l    #18,d0
[00028f1e] 4eb9 0003 589a            jsr        Auo_slider
[00028f24] 2457                      movea.l    (a7),a2
[00028f26] 206a 0014                 movea.l    20(a2),a0
[00028f2a] 41e8 0030                 lea.l      48(a0),a0
[00028f2e] 2268 000c                 movea.l    12(a0),a1
[00028f32] 5849                      addq.w     #4,a1
[00028f34] 2049                      movea.l    a1,a0
[00028f36] 2011                      move.l     (a1),d0
[00028f38] 7210                      moveq.l    #16,d1
[00028f3a] e2a0                      asr.l      d1,d0
[00028f3c] c0bc 0000 000f            and.l      #$0000000F,d0
[00028f42] b680                      cmp.l      d0,d3
[00028f44] 671e                      beq.s      live_thickness_1
[00028f46] 2411                      move.l     (a1),d2
[00028f48] c4bc fff0 ffff            and.l      #$FFF0FFFF,d2
[00028f4e] 3604                      move.w     d4,d3
[00028f50] 48c3                      ext.l      d3
[00028f52] e3ab                      lsl.l      d1,d3
[00028f54] 8483                      or.l       d3,d2
[00028f56] 2282                      move.l     d2,(a1)
[00028f58] 7001                      moveq.l    #1,d0
[00028f5a] 204a                      movea.l    a2,a0
[00028f5c] 226a 0066                 movea.l    102(a2),a1
[00028f60] 72ff                      moveq.l    #-1,d1
[00028f62] 4e91                      jsr        (a1)
live_thickness_1:
[00028f64] 720a                      moveq.l    #10,d1
[00028f66] 41ef 000a                 lea.l      10(a7),a0
[00028f6a] 3004                      move.w     d4,d0
[00028f6c] 4eb9 0007 6804            jsr        itoa
[00028f72] 4fef 0010                 lea.l      16(a7),a7
[00028f76] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00028f7a] 4e75                      rts

	.data

BUBBLE_01:
[000b5c0a]                           dc.b 'Die énderungen werden Åbernommen und Åberschreiben die alten Einstellungen.',0
BUBBLE_02:
[000b5c56]                           dc.b 'Die énderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
[000b5ca1]                           dc.b 'Hier kann der String, der fÅr BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_04:
[000b5cf3]                           dc.b 'Hier wird die Beschriftung des 3D-Buttons eingegeben.',0
BUBBLE_05:
[000b5d29]                           dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
BUBBLE_07:
[000b5dad]                           dc.b 'Hier wird die Schriftgrîûe eingestellt.',0
CONTEXT_01:
[000b5dd5]                           dc.b 'Kopieren|EinfÅgen|Lîschen',0
TEXT_005:
[000b5def]                           dc.b $4f
[000b5df0]                           dc.w $4b00
TEXT_009:
[000b5df2]                           dc.b 'Abbruch',0
TEXT_01:
[000b5dfa]                           dc.b 'Offset:',0
TEXT_02:
[000b5e02]                           dc.b 'leeres FÅllmuster',0
TEXT_03:
[000b5e14]                           dc.b 'StÑrke:',0
TEXT_037:
[000b5e1c]                           dc.b 'ABC',0
TEXT_04:
[000b5e20]                           dc.b 'Position:',0
TEXT_05:
[000b5e2a]                           dc.b 'Sonstiges',0
TEXT_06:
[000b5e34]                           dc.b 'BubbleGEM-Text',0
TEXT_07:
[000b5e43]                           dc.b 'Context-Popup',0
TEXT_09:
[000b5e51]                           dc.b 'unten:',0
TEXT_10:
[000b5e58]                           dc.b 'Rahmen:',0
TEXT_11:
[000b5e60]                           dc.b 'Farbe:',0
TEXT_12:
[000b5e67]                           dc.b 'Grîûe:',0
TEXT_13:
[000b5e6e]                           dc.b 'Modus:',0
TEXT_14:
[000b5e75]                           dc.b 'Text:',0
TEXT_15:
[000b5e7b]                           dc.b 'InnenflÑche:',0
TEXT_17:
[000b5e88]                           dc.b 'Muster:',0
TEXT_19:
[000b5e90]                           dc.b 'oben:',0
TEXT_20:
[000b5e96]                           dc.b 'DitherModus',0
TEXT_21:
[000b5ea2]                           dc.b 'links/',0
TEXT_22:
[000b5ea9]                           dc.b 'rechts/',0
help_title:
[000b5eb1]                           dc.b 'Der 3D-Button-Editor',0
title:
[000b5ec6]                           dc.b '3D-Button -',0
A_3DBUTTON04:
[000b5ed2] 0005a4e2                  dc.l A_3Dbutton
[000b5ed6]                           dc.w $29c1
[000b5ed8]                           dc.w $0178
[000b5eda] 00059318                  dc.l Auo_string
[000b5ede] 000b5def                  dc.l TEXT_005
[000b5ee2]                           dc.b $00
[000b5ee3]                           dc.b $00
[000b5ee4]                           dc.b $00
[000b5ee5]                           dc.b $00
[000b5ee6]                           dc.b $00
[000b5ee7]                           dc.b $00
[000b5ee8]                           dc.b $00
[000b5ee9]                           dc.b $00
[000b5eea] 000b5c0a                  dc.l BUBBLE_01
[000b5eee]                           dc.b $00
[000b5eef]                           dc.b $00
[000b5ef0]                           dc.b $00
[000b5ef1]                           dc.b $00
A_3DBUTTON06:
[000b5ef2] 0005a4e2                  dc.l A_3Dbutton
[000b5ef6]                           dc.w $21f1
[000b5ef8]                           dc.w $0178
[000b5efa] 00059318                  dc.l Auo_string
[000b5efe]                           dc.b $00
[000b5eff]                           dc.b $00
[000b5f00]                           dc.b $00
[000b5f01]                           dc.b $00
[000b5f02]                           dc.b $00
[000b5f03]                           dc.b $00
[000b5f04]                           dc.b $00
[000b5f05]                           dc.b $00
[000b5f06]                           dc.b $00
[000b5f07]                           dc.b $00
[000b5f08]                           dc.b $00
[000b5f09]                           dc.b $00
[000b5f0a]                           dc.b $00
[000b5f0b]                           dc.b $00
[000b5f0c]                           dc.b $00
[000b5f0d]                           dc.b $00
[000b5f0e]                           dc.b $00
[000b5f0f]                           dc.b $00
[000b5f10]                           dc.b $00
[000b5f11]                           dc.b $00
A_3DBUTTON07:
[000b5f12] 0005a4e2                  dc.l A_3Dbutton
[000b5f16]                           dc.w $29f1
[000b5f18]                           dc.w $0178
[000b5f1a] 00059318                  dc.l Auo_string
[000b5f1e]                           dc.b $00
[000b5f1f]                           dc.b $00
[000b5f20]                           dc.b $00
[000b5f21]                           dc.b $00
[000b5f22]                           dc.b $00
[000b5f23]                           dc.b $00
[000b5f24]                           dc.b $00
[000b5f25]                           dc.b $00
[000b5f26]                           dc.b $00
[000b5f27]                           dc.b $00
[000b5f28]                           dc.b $00
[000b5f29]                           dc.b $00
[000b5f2a] 000b5dad                  dc.l BUBBLE_07
[000b5f2e]                           dc.b $00
[000b5f2f]                           dc.b $00
[000b5f30]                           dc.b $00
[000b5f31]                           dc.b $00
A_3DBUTTON08:
[000b5f32] 0005a4e2                  dc.l A_3Dbutton
[000b5f36]                           dc.w $2102
[000b5f38]                           dc.w $0191
[000b5f3a] 00059318                  dc.l Auo_string
[000b5f3e] 000b5e1c                  dc.l TEXT_037
[000b5f42]                           dc.b $00
[000b5f43]                           dc.b $00
[000b5f44]                           dc.b $00
[000b5f45]                           dc.b $00
[000b5f46]                           dc.b $00
[000b5f47]                           dc.b $00
[000b5f48]                           dc.b $00
[000b5f49]                           dc.b $00
[000b5f4a]                           dc.b $00
[000b5f4b]                           dc.b $00
[000b5f4c]                           dc.b $00
[000b5f4d]                           dc.b $00
[000b5f4e]                           dc.b $00
[000b5f4f]                           dc.b $00
[000b5f50]                           dc.b $00
[000b5f51]                           dc.b $00
A_3DBUTTON09:
[000b5f52] 0005a4e2                  dc.l A_3Dbutton
[000b5f56]                           dc.w $29c1
[000b5f58]                           dc.w $0178
[000b5f5a] 00059318                  dc.l Auo_string
[000b5f5e] 000b5df2                  dc.l TEXT_009
[000b5f62]                           dc.b $00
[000b5f63]                           dc.b $00
[000b5f64]                           dc.b $00
[000b5f65]                           dc.b $00
[000b5f66]                           dc.b $00
[000b5f67]                           dc.b $00
[000b5f68]                           dc.b $00
[000b5f69]                           dc.b $00
[000b5f6a] 000b5c56                  dc.l BUBBLE_02
[000b5f6e]                           dc.b $00
[000b5f6f]                           dc.b $00
[000b5f70]                           dc.b $00
[000b5f71]                           dc.b $00
A_3DBUTTON27:
[000b5f72] 0005a4e2                  dc.l A_3Dbutton
[000b5f76]                           dc.w $09f1
[000b5f78]                           dc.w $0178
[000b5f7a] 00059318                  dc.l Auo_string
[000b5f7e]                           dc.b $00
[000b5f7f]                           dc.b $00
[000b5f80]                           dc.b $00
[000b5f81]                           dc.b $00
[000b5f82]                           dc.b $00
[000b5f83]                           dc.b $00
[000b5f84]                           dc.b $00
[000b5f85]                           dc.b $00
[000b5f86]                           dc.b $00
[000b5f87]                           dc.b $00
[000b5f88]                           dc.b $00
[000b5f89]                           dc.b $00
[000b5f8a]                           dc.b $00
[000b5f8b]                           dc.b $00
[000b5f8c]                           dc.b $00
[000b5f8d]                           dc.b $00
[000b5f8e]                           dc.b $00
[000b5f8f]                           dc.b $00
[000b5f90]                           dc.b $00
[000b5f91]                           dc.b $00
A_ARROWS02:
[000b5f92] 0005b212                  dc.l A_arrows
[000b5f96]                           dc.w $1301
[000b5f98]                           dc.b $00
[000b5f99]                           dc.b $01
[000b5f9a]                           dc.b $00
[000b5f9b]                           dc.b $00
[000b5f9c]                           dc.b $00
[000b5f9d]                           dc.b $00
[000b5f9e]                           dc.b $00
[000b5f9f]                           dc.b $00
[000b5fa0]                           dc.b $00
[000b5fa1]                           dc.b $00
[000b5fa2]                           dc.b $00
[000b5fa3]                           dc.b $00
[000b5fa4]                           dc.b $00
[000b5fa5]                           dc.b $00
[000b5fa6]                           dc.b $00
[000b5fa7]                           dc.b $00
[000b5fa8]                           dc.b $00
[000b5fa9]                           dc.b $00
[000b5faa]                           dc.b $00
[000b5fab]                           dc.b $00
[000b5fac]                           dc.b $00
[000b5fad]                           dc.b $00
[000b5fae]                           dc.b $00
[000b5faf]                           dc.b $00
[000b5fb0]                           dc.b $00
[000b5fb1]                           dc.b $00
A_BOXED01:
[000b5fb2] 0005e9d2                  dc.l A_boxed
[000b5fb6]                           dc.w $9000
[000b5fb8]                           dc.w $ff12
[000b5fba] 0005e010                  dc.l Auo_boxed
[000b5fbe]                           dc.b $00
[000b5fbf]                           dc.b $00
[000b5fc0]                           dc.b $00
[000b5fc1]                           dc.b $00
[000b5fc2]                           dc.b $00
[000b5fc3]                           dc.b $00
[000b5fc4]                           dc.b $00
[000b5fc5]                           dc.b $00
[000b5fc6]                           dc.b $00
[000b5fc7]                           dc.b $00
[000b5fc8]                           dc.b $00
[000b5fc9]                           dc.b $00
[000b5fca] 000b5cf3                  dc.l BUBBLE_04
[000b5fce] 000b5dd5                  dc.l CONTEXT_01
A_BOXED03:
[000b5fd2] 0005e9d2                  dc.l A_boxed
[000b5fd6]                           dc.w $9038
[000b5fd8]                           dc.w $ff12
[000b5fda] 0005e010                  dc.l Auo_boxed
[000b5fde]                           dc.b $00
[000b5fdf]                           dc.b $00
[000b5fe0]                           dc.b $00
[000b5fe1]                           dc.b $00
[000b5fe2]                           dc.b $00
[000b5fe3]                           dc.b $00
[000b5fe4]                           dc.b $00
[000b5fe5]                           dc.b $00
[000b5fe6]                           dc.b $00
[000b5fe7]                           dc.b $00
[000b5fe8]                           dc.b $00
[000b5fe9]                           dc.b $00
[000b5fea] 000b5ca1                  dc.l BUBBLE_03
[000b5fee]                           dc.b $00
[000b5fef]                           dc.b $00
[000b5ff0]                           dc.b $00
[000b5ff1]                           dc.b $00
A_BOXED04:
[000b5ff2] 0005e9d2                  dc.l A_boxed
[000b5ff6]                           dc.w $9038
[000b5ff8]                           dc.w $ff12
[000b5ffa] 0005e010                  dc.l Auo_boxed
[000b5ffe]                           dc.b $00
[000b5fff]                           dc.b $00
[000b6000]                           dc.b $00
[000b6001]                           dc.b $00
[000b6002]                           dc.b $00
[000b6003]                           dc.b $00
[000b6004]                           dc.b $00
[000b6005]                           dc.b $00
[000b6006]                           dc.b $00
[000b6007]                           dc.b $00
[000b6008]                           dc.b $00
[000b6009]                           dc.b $00
[000b600a] 000b5d29                  dc.l BUBBLE_05
[000b600e]                           dc.b $00
[000b600f]                           dc.b $00
[000b6010]                           dc.b $00
[000b6011]                           dc.b $00
A_CHECKBOX02:
[000b6012] 000593fc                  dc.l A_checkbox
[000b6016]                           dc.b $00
[000b6017]                           dc.b $00
[000b6018]                           dc.b $00
[000b6019]                           dc.b $01
[000b601a] 00059318                  dc.l Auo_string
[000b601e] 000b5e02                  dc.l TEXT_02
[000b6022]                           dc.b $00
[000b6023]                           dc.b $00
[000b6024]                           dc.b $00
[000b6025]                           dc.b $00
[000b6026]                           dc.b $00
[000b6027]                           dc.b $00
[000b6028]                           dc.b $00
[000b6029]                           dc.b $00
[000b602a]                           dc.b $00
[000b602b]                           dc.b $00
[000b602c]                           dc.b $00
[000b602d]                           dc.b $00
[000b602e]                           dc.b $00
[000b602f]                           dc.b $00
[000b6030]                           dc.b $00
[000b6031]                           dc.b $00
A_CHECKBOX03:
[000b6032] 000593fc                  dc.l A_checkbox
[000b6036]                           dc.b $00
[000b6037]                           dc.b $00
[000b6038]                           dc.b $00
[000b6039]                           dc.b $01
[000b603a] 00059318                  dc.l Auo_string
[000b603e] 000b5e96                  dc.l TEXT_20
[000b6042]                           dc.b $00
[000b6043]                           dc.b $00
[000b6044]                           dc.b $00
[000b6045]                           dc.b $00
[000b6046]                           dc.b $00
[000b6047]                           dc.b $00
[000b6048]                           dc.b $00
[000b6049]                           dc.b $00
[000b604a]                           dc.b $00
[000b604b]                           dc.b $00
[000b604c]                           dc.b $00
[000b604d]                           dc.b $00
[000b604e]                           dc.b $00
[000b604f]                           dc.b $00
[000b6050]                           dc.b $00
[000b6051]                           dc.b $00
A_INNERFRAME01:
[000b6052] 00059f9c                  dc.l A_innerframe
[000b6056]                           dc.w $1800
[000b6058]                           dc.w $8f19
[000b605a] 00059318                  dc.l Auo_string
[000b605e] 000b5e58                  dc.l TEXT_10
[000b6062]                           dc.b $00
[000b6063]                           dc.b $00
[000b6064]                           dc.b $00
[000b6065]                           dc.b $00
[000b6066]                           dc.b $00
[000b6067]                           dc.b $00
[000b6068]                           dc.b $00
[000b6069]                           dc.b $00
[000b606a]                           dc.b $00
[000b606b]                           dc.b $00
[000b606c]                           dc.b $00
[000b606d]                           dc.b $00
[000b606e]                           dc.b $00
[000b606f]                           dc.b $00
[000b6070]                           dc.b $00
[000b6071]                           dc.b $00
A_INNERFRAME02:
[000b6072] 00059f9c                  dc.l A_innerframe
[000b6076]                           dc.w $1800
[000b6078]                           dc.w $8f19
[000b607a] 00059318                  dc.l Auo_string
[000b607e] 000b5e75                  dc.l TEXT_14
[000b6082]                           dc.b $00
[000b6083]                           dc.b $00
[000b6084]                           dc.b $00
[000b6085]                           dc.b $00
[000b6086]                           dc.b $00
[000b6087]                           dc.b $00
[000b6088]                           dc.b $00
[000b6089]                           dc.b $00
[000b608a]                           dc.b $00
[000b608b]                           dc.b $00
[000b608c]                           dc.b $00
[000b608d]                           dc.b $00
[000b608e]                           dc.b $00
[000b608f]                           dc.b $00
[000b6090]                           dc.b $00
[000b6091]                           dc.b $00
A_INNERFRAME03:
[000b6092] 00059f9c                  dc.l A_innerframe
[000b6096]                           dc.w $1800
[000b6098]                           dc.w $8f19
[000b609a] 00059318                  dc.l Auo_string
[000b609e] 000b5e2a                  dc.l TEXT_05
[000b60a2]                           dc.b $00
[000b60a3]                           dc.b $00
[000b60a4]                           dc.b $00
[000b60a5]                           dc.b $00
[000b60a6]                           dc.b $00
[000b60a7]                           dc.b $00
[000b60a8]                           dc.b $00
[000b60a9]                           dc.b $00
[000b60aa]                           dc.b $00
[000b60ab]                           dc.b $00
[000b60ac]                           dc.b $00
[000b60ad]                           dc.b $00
[000b60ae]                           dc.b $00
[000b60af]                           dc.b $00
[000b60b0]                           dc.b $00
[000b60b1]                           dc.b $00
A_INNERFRAME05:
[000b60b2] 00059f9c                  dc.l A_innerframe
[000b60b6]                           dc.w $1800
[000b60b8]                           dc.w $8f19
[000b60ba] 00059318                  dc.l Auo_string
[000b60be] 000b5e7b                  dc.l TEXT_15
[000b60c2]                           dc.b $00
[000b60c3]                           dc.b $00
[000b60c4]                           dc.b $00
[000b60c5]                           dc.b $00
[000b60c6]                           dc.b $00
[000b60c7]                           dc.b $00
[000b60c8]                           dc.b $00
[000b60c9]                           dc.b $00
[000b60ca]                           dc.b $00
[000b60cb]                           dc.b $00
[000b60cc]                           dc.b $00
[000b60cd]                           dc.b $00
[000b60ce]                           dc.b $00
[000b60cf]                           dc.b $00
[000b60d0]                           dc.b $00
[000b60d1]                           dc.b $00
A_SLIDER02:
[000b60d2] 00035008                  dc.l A_slider
[000b60d6]                           dc.b $00
[000b60d7]                           dc.b $00
[000b60d8]                           dc.b $00
[000b60d9]                           dc.b $02
[000b60da] 0003589a                  dc.l Auo_slider
[000b60de]                           dc.b $00
[000b60df]                           dc.b $00
[000b60e0]                           dc.b $00
[000b60e1]                           dc.b $00
[000b60e2]                           dc.b $00
[000b60e3]                           dc.b $00
[000b60e4]                           dc.b $00
[000b60e5]                           dc.b $00
[000b60e6]                           dc.b $00
[000b60e7]                           dc.b $00
[000b60e8]                           dc.b $00
[000b60e9]                           dc.b $00
[000b60ea]                           dc.b $00
[000b60eb]                           dc.b $00
[000b60ec]                           dc.b $00
[000b60ed]                           dc.b $00
[000b60ee]                           dc.b $00
[000b60ef]                           dc.b $00
[000b60f0]                           dc.b $00
[000b60f1]                           dc.b $00
ED_3DBUTTON:
[000b60f2]                           dc.w $ffff
[000b60f4]                           dc.b $00
[000b60f5]                           dc.b $01
[000b60f6]                           dc.b $00
[000b60f7]                           dc.b $42
[000b60f8]                           dc.b $00
[000b60f9]                           dc.b $18
[000b60fa]                           dc.b $00
[000b60fb]                           dc.b $40
[000b60fc]                           dc.b $00
[000b60fd]                           dc.b $10
[000b60fe] 000b5ef2                  dc.l A_3DBUTTON06
[000b6102]                           dc.b $00
[000b6103]                           dc.b $00
[000b6104]                           dc.b $00
[000b6105]                           dc.b $00
[000b6106]                           dc.b $00
[000b6107]                           dc.b $3a
[000b6108]                           dc.b $00
[000b6109]                           dc.b $18
_01_ED_3DBUTTON:
[000b610a]                           dc.b $00
[000b610b]                           dc.b $03
[000b610c]                           dc.b $00
[000b610d]                           dc.b $02
[000b610e]                           dc.b $00
[000b610f]                           dc.b $02
[000b6110]                           dc.b $00
[000b6111]                           dc.b $18
[000b6112]                           dc.b $00
[000b6113]                           dc.b $40
[000b6114]                           dc.b $00
[000b6115]                           dc.b $10
[000b6116] 000b5f12                  dc.l A_3DBUTTON07
[000b611a]                           dc.b $00
[000b611b]                           dc.b $00
[000b611c]                           dc.b $00
[000b611d]                           dc.b $00
[000b611e]                           dc.b $00
[000b611f]                           dc.b $0e
[000b6120]                           dc.w $fc04
_02_ED_3DBUTTON:
[000b6122]                           dc.b $00
[000b6123]                           dc.b $01
[000b6124]                           dc.w $ffff
[000b6126]                           dc.w $ffff
[000b6128]                           dc.b $00
[000b6129]                           dc.b $18
[000b612a]                           dc.b $00
[000b612b]                           dc.b $00
[000b612c]                           dc.b $00
[000b612d]                           dc.b $10
[000b612e] 000b5f32                  dc.l A_3DBUTTON08
[000b6132]                           dc.b $00
[000b6133]                           dc.b $02
[000b6134]                           dc.b $00
[000b6135]                           dc.b $01
[000b6136]                           dc.b $00
[000b6137]                           dc.b $0a
[000b6138]                           dc.b $00
[000b6139]                           dc.b $02
_03_ED_3DBUTTON:
[000b613a]                           dc.b $00
[000b613b]                           dc.b $05
[000b613c]                           dc.w $ffff
[000b613e]                           dc.w $ffff
[000b6140]                           dc.b $00
[000b6141]                           dc.b $18
[000b6142]                           dc.w $4007
[000b6144]                           dc.b $00
[000b6145]                           dc.b $10
[000b6146] 000b5ed2                  dc.l A_3DBUTTON04
[000b614a]                           dc.b $00
[000b614b]                           dc.b $1d
[000b614c]                           dc.b $00
[000b614d]                           dc.b $01
[000b614e]                           dc.b $00
[000b614f]                           dc.b $0c
[000b6150]                           dc.b $00
[000b6151]                           dc.b $02
_03aED_3DBUTTON:
[000b6152] 00028d88                  dc.l ok
[000b6156]                           dc.b $00
[000b6157]                           dc.b $00
[000b6158]                           dc.b $00
[000b6159]                           dc.b $00
[000b615a]                           dc.w $8000
[000b615c]                           dc.w $884f
[000b615e]                           dc.b $00
[000b615f]                           dc.b $00
[000b6160]                           dc.b $00
[000b6161]                           dc.b $00
[000b6162]                           dc.b $00
[000b6163]                           dc.b $00
[000b6164]                           dc.b $00
[000b6165]                           dc.b $00
[000b6166]                           dc.b $00
[000b6167]                           dc.b $00
[000b6168]                           dc.b $00
[000b6169]                           dc.b $00
_05_ED_3DBUTTON:
[000b616a]                           dc.b $00
[000b616b]                           dc.b $07
[000b616c]                           dc.w $ffff
[000b616e]                           dc.w $ffff
[000b6170]                           dc.b $00
[000b6171]                           dc.b $18
[000b6172]                           dc.w $4005
[000b6174]                           dc.b $00
[000b6175]                           dc.b $10
[000b6176] 000b5f52                  dc.l A_3DBUTTON09
[000b617a]                           dc.b $00
[000b617b]                           dc.b $2c
[000b617c]                           dc.b $00
[000b617d]                           dc.b $01
[000b617e]                           dc.b $00
[000b617f]                           dc.b $0c
[000b6180]                           dc.b $00
[000b6181]                           dc.b $02
_05aED_3DBUTTON:
[000b6182] 00028d62                  dc.l abort
[000b6186]                           dc.b $00
[000b6187]                           dc.b $00
[000b6188]                           dc.b $00
[000b6189]                           dc.b $00
[000b618a]                           dc.w $8000
[000b618c]                           dc.w $8841
[000b618e]                           dc.b $00
[000b618f]                           dc.b $00
[000b6190]                           dc.b $00
[000b6191]                           dc.b $00
[000b6192]                           dc.b $00
[000b6193]                           dc.b $00
[000b6194]                           dc.b $00
[000b6195]                           dc.b $00
[000b6196]                           dc.b $00
[000b6197]                           dc.b $00
[000b6198]                           dc.b $00
[000b6199]                           dc.b $00
_07_ED_3DBUTTON:
[000b619a]                           dc.b $00
[000b619b]                           dc.b $1e
[000b619c]                           dc.b $00
[000b619d]                           dc.b $08
[000b619e]                           dc.b $00
[000b619f]                           dc.b $1d
[000b61a0]                           dc.b $00
[000b61a1]                           dc.b $18
[000b61a2]                           dc.b $00
[000b61a3]                           dc.b $40
[000b61a4]                           dc.b $00
[000b61a5]                           dc.b $00
[000b61a6] 000b6072                  dc.l A_INNERFRAME02
[000b61aa]                           dc.b $00
[000b61ab]                           dc.b $01
[000b61ac]                           dc.b $00
[000b61ad]                           dc.b $04
[000b61ae]                           dc.b $00
[000b61af]                           dc.b $38
[000b61b0]                           dc.b $00
[000b61b1]                           dc.b $07
_08_ED_3DBUTTON:
[000b61b2]                           dc.b $00
[000b61b3]                           dc.b $0a
[000b61b4]                           dc.b $00
[000b61b5]                           dc.b $09
[000b61b6]                           dc.b $00
[000b61b7]                           dc.b $09
[000b61b8]                           dc.b $00
[000b61b9]                           dc.b $1c
[000b61ba]                           dc.b $00
[000b61bb]                           dc.b $40
[000b61bc]                           dc.b $00
[000b61bd]                           dc.b $00
[000b61be] 000b5e60                  dc.l TEXT_11
[000b61c2]                           dc.b $00
[000b61c3]                           dc.b $04
[000b61c4]                           dc.b $00
[000b61c5]                           dc.b $01
[000b61c6]                           dc.b $00
[000b61c7]                           dc.b $06
[000b61c8]                           dc.b $00
[000b61c9]                           dc.b $01
_09_ED_3DBUTTON:
[000b61ca]                           dc.b $00
[000b61cb]                           dc.b $08
[000b61cc]                           dc.w $ffff
[000b61ce]                           dc.w $ffff
[000b61d0]                           dc.b $00
[000b61d1]                           dc.b $18
[000b61d2]                           dc.b $00
[000b61d3]                           dc.b $40
[000b61d4]                           dc.b $00
[000b61d5]                           dc.b $00
[000b61d6] 000b5f92                  dc.l A_ARROWS02
[000b61da]                           dc.b $00
[000b61db]                           dc.b $00
[000b61dc]                           dc.b $00
[000b61dd]                           dc.b $00
[000b61de]                           dc.b $00
[000b61df]                           dc.b $01
[000b61e0]                           dc.b $00
[000b61e1]                           dc.b $01
_10_ED_3DBUTTON:
[000b61e2]                           dc.b $00
[000b61e3]                           dc.b $0e
[000b61e4]                           dc.b $00
[000b61e5]                           dc.b $0c
[000b61e6]                           dc.b $00
[000b61e7]                           dc.b $0d
[000b61e8]                           dc.b $00
[000b61e9]                           dc.b $14
[000b61ea]                           dc.b $00
[000b61eb]                           dc.b $40
[000b61ec]                           dc.b $00
[000b61ed]                           dc.b $20
[000b61ee]                           dc.b $00
[000b61ef]                           dc.b $ff
[000b61f0]                           dc.w $1101
[000b61f2]                           dc.b $00
[000b61f3]                           dc.b $0b
[000b61f4]                           dc.b $00
[000b61f5]                           dc.b $01
[000b61f6]                           dc.b $00
[000b61f7]                           dc.b $12
[000b61f8]                           dc.b $00
[000b61f9]                           dc.b $01
_10aED_3DBUTTON:
[000b61fa] 000287b8                  dc.l ed3d_textcol
[000b61fe]                           dc.b $00
[000b61ff]                           dc.b $00
[000b6200]                           dc.b $00
[000b6201]                           dc.b $00
[000b6202]                           dc.w $8000
[000b6204]                           dc.w $8846
[000b6206]                           dc.b $00
[000b6207]                           dc.b $00
[000b6208]                           dc.b $00
[000b6209]                           dc.b $00
[000b620a]                           dc.b $00
[000b620b]                           dc.b $00
[000b620c]                           dc.b $00
[000b620d]                           dc.b $00
[000b620e]                           dc.b $00
[000b620f]                           dc.b $00
[000b6210]                           dc.b $00
[000b6211]                           dc.b $00
_12_ED_3DBUTTON:
[000b6212]                           dc.b $00
[000b6213]                           dc.b $0d
[000b6214]                           dc.w $ffff
[000b6216]                           dc.w $ffff
[000b6218]                           dc.b $00
[000b6219]                           dc.b $14
[000b621a]                           dc.b $00
[000b621b]                           dc.b $00
[000b621c]                           dc.b $00
[000b621d]                           dc.b $00
[000b621e]                           dc.b $00
[000b621f]                           dc.b $01
[000b6220]                           dc.w $1171
[000b6222]                           dc.b $00
[000b6223]                           dc.b $10
[000b6224]                           dc.b $00
[000b6225]                           dc.b $00
[000b6226]                           dc.b $00
[000b6227]                           dc.b $02
[000b6228]                           dc.b $00
[000b6229]                           dc.b $01
_13_ED_3DBUTTON:
[000b622a]                           dc.b $00
[000b622b]                           dc.b $0a
[000b622c]                           dc.w $ffff
[000b622e]                           dc.w $ffff
[000b6230]                           dc.b $00
[000b6231]                           dc.b $18
[000b6232]                           dc.b $00
[000b6233]                           dc.b $00
[000b6234]                           dc.b $00
[000b6235]                           dc.b $00
[000b6236] 000b5f72                  dc.l A_3DBUTTON27
[000b623a]                           dc.b $00
[000b623b]                           dc.b $00
[000b623c]                           dc.b $00
[000b623d]                           dc.b $00
[000b623e]                           dc.b $00
[000b623f]                           dc.b $10
[000b6240]                           dc.b $00
[000b6241]                           dc.b $01
_14_ED_3DBUTTON:
[000b6242]                           dc.b $00
[000b6243]                           dc.b $10
[000b6244]                           dc.b $00
[000b6245]                           dc.b $0f
[000b6246]                           dc.b $00
[000b6247]                           dc.b $0f
[000b6248]                           dc.b $00
[000b6249]                           dc.b $1c
[000b624a]                           dc.b $00
[000b624b]                           dc.b $40
[000b624c]                           dc.b $00
[000b624d]                           dc.b $00
[000b624e] 000b5e67                  dc.l TEXT_12
[000b6252]                           dc.b $00
[000b6253]                           dc.b $22
[000b6254]                           dc.b $00
[000b6255]                           dc.b $01
[000b6256]                           dc.b $00
[000b6257]                           dc.b $06
[000b6258]                           dc.b $00
[000b6259]                           dc.b $01
_15_ED_3DBUTTON:
[000b625a]                           dc.b $00
[000b625b]                           dc.b $0e
[000b625c]                           dc.w $ffff
[000b625e]                           dc.w $ffff
[000b6260]                           dc.b $00
[000b6261]                           dc.b $18
[000b6262]                           dc.b $00
[000b6263]                           dc.b $40
[000b6264]                           dc.b $00
[000b6265]                           dc.b $00
[000b6266] 000b5f92                  dc.l A_ARROWS02
[000b626a]                           dc.b $00
[000b626b]                           dc.b $00
[000b626c]                           dc.b $00
[000b626d]                           dc.b $00
[000b626e]                           dc.b $00
[000b626f]                           dc.b $01
[000b6270]                           dc.b $00
[000b6271]                           dc.b $01
_16_ED_3DBUTTON:
[000b6272]                           dc.b $00
[000b6273]                           dc.b $13
[000b6274]                           dc.b $00
[000b6275]                           dc.b $12
[000b6276]                           dc.b $00
[000b6277]                           dc.b $12
[000b6278]                           dc.b $00
[000b6279]                           dc.b $14
[000b627a]                           dc.b $00
[000b627b]                           dc.b $40
[000b627c]                           dc.b $00
[000b627d]                           dc.b $20
[000b627e]                           dc.b $00
[000b627f]                           dc.b $ff
[000b6280]                           dc.w $1101
[000b6282]                           dc.b $00
[000b6283]                           dc.b $29
[000b6284]                           dc.b $00
[000b6285]                           dc.b $01
[000b6286]                           dc.b $00
[000b6287]                           dc.b $08
[000b6288]                           dc.b $00
[000b6289]                           dc.b $01
_16aED_3DBUTTON:
[000b628a] 000286ac                  dc.l ed3d_size
[000b628e]                           dc.b $00
[000b628f]                           dc.b $00
[000b6290]                           dc.b $00
[000b6291]                           dc.b $00
[000b6292]                           dc.w $8000
[000b6294]                           dc.w $8847
[000b6296]                           dc.b $00
[000b6297]                           dc.b $00
[000b6298]                           dc.b $00
[000b6299]                           dc.b $00
[000b629a]                           dc.b $00
[000b629b]                           dc.b $00
[000b629c]                           dc.b $00
[000b629d]                           dc.b $00
[000b629e]                           dc.b $00
[000b629f]                           dc.b $00
[000b62a0]                           dc.b $00
[000b62a1]                           dc.b $00
_18_ED_3DBUTTON:
[000b62a2]                           dc.b $00
[000b62a3]                           dc.b $10
[000b62a4]                           dc.w $ffff
[000b62a6]                           dc.w $ffff
[000b62a8]                           dc.b $00
[000b62a9]                           dc.b $18
[000b62aa]                           dc.b $00
[000b62ab]                           dc.b $00
[000b62ac]                           dc.b $00
[000b62ad]                           dc.b $00
[000b62ae] 000b5f12                  dc.l A_3DBUTTON07
[000b62b2]                           dc.b $00
[000b62b3]                           dc.b $00
[000b62b4]                           dc.b $00
[000b62b5]                           dc.b $00
[000b62b6]                           dc.b $00
[000b62b7]                           dc.b $08
[000b62b8]                           dc.b $00
[000b62b9]                           dc.b $01
_19_ED_3DBUTTON:
[000b62ba]                           dc.b $00
[000b62bb]                           dc.b $15
[000b62bc]                           dc.b $00
[000b62bd]                           dc.b $14
[000b62be]                           dc.b $00
[000b62bf]                           dc.b $14
[000b62c0]                           dc.b $00
[000b62c1]                           dc.b $1c
[000b62c2]                           dc.b $00
[000b62c3]                           dc.b $40
[000b62c4]                           dc.b $00
[000b62c5]                           dc.b $00
[000b62c6] 000b5e20                  dc.l TEXT_04
[000b62ca]                           dc.b $00
[000b62cb]                           dc.b $01
[000b62cc]                           dc.b $00
[000b62cd]                           dc.b $03
[000b62ce]                           dc.b $00
[000b62cf]                           dc.b $09
[000b62d0]                           dc.b $00
[000b62d1]                           dc.b $01
_20_ED_3DBUTTON:
[000b62d2]                           dc.b $00
[000b62d3]                           dc.b $13
[000b62d4]                           dc.w $ffff
[000b62d6]                           dc.w $ffff
[000b62d8]                           dc.b $00
[000b62d9]                           dc.b $18
[000b62da]                           dc.b $00
[000b62db]                           dc.b $40
[000b62dc]                           dc.b $00
[000b62dd]                           dc.b $00
[000b62de] 000b5f92                  dc.l A_ARROWS02
[000b62e2]                           dc.b $00
[000b62e3]                           dc.b $00
[000b62e4]                           dc.b $00
[000b62e5]                           dc.b $00
[000b62e6]                           dc.b $00
[000b62e7]                           dc.b $01
[000b62e8]                           dc.b $00
[000b62e9]                           dc.b $01
_21_ED_3DBUTTON:
[000b62ea]                           dc.b $00
[000b62eb]                           dc.b $18
[000b62ec]                           dc.b $00
[000b62ed]                           dc.b $17
[000b62ee]                           dc.b $00
[000b62ef]                           dc.b $17
[000b62f0]                           dc.b $00
[000b62f1]                           dc.b $14
[000b62f2]                           dc.b $00
[000b62f3]                           dc.b $40
[000b62f4]                           dc.b $00
[000b62f5]                           dc.b $20
[000b62f6]                           dc.b $00
[000b62f7]                           dc.b $ff
[000b62f8]                           dc.w $1101
[000b62fa]                           dc.b $00
[000b62fb]                           dc.b $0b
[000b62fc]                           dc.b $00
[000b62fd]                           dc.b $03
[000b62fe]                           dc.b $00
[000b62ff]                           dc.b $0a
[000b6300]                           dc.b $00
[000b6301]                           dc.b $01
_21aED_3DBUTTON:
[000b6302] 0002852e                  dc.l ed3d_pos
[000b6306]                           dc.b $00
[000b6307]                           dc.b $00
[000b6308]                           dc.b $00
[000b6309]                           dc.b $00
[000b630a]                           dc.w $8000
[000b630c]                           dc.w $8850
[000b630e]                           dc.b $00
[000b630f]                           dc.b $00
[000b6310]                           dc.b $00
[000b6311]                           dc.b $00
[000b6312]                           dc.b $00
[000b6313]                           dc.b $00
[000b6314]                           dc.b $00
[000b6315]                           dc.b $00
[000b6316]                           dc.b $00
[000b6317]                           dc.b $00
[000b6318]                           dc.b $00
[000b6319]                           dc.b $00
_23_ED_3DBUTTON:
[000b631a]                           dc.b $00
[000b631b]                           dc.b $15
[000b631c]                           dc.w $ffff
[000b631e]                           dc.w $ffff
[000b6320]                           dc.b $00
[000b6321]                           dc.b $18
[000b6322]                           dc.b $00
[000b6323]                           dc.b $00
[000b6324]                           dc.b $00
[000b6325]                           dc.b $00
[000b6326] 000b5f72                  dc.l A_3DBUTTON27
[000b632a]                           dc.b $00
[000b632b]                           dc.b $00
[000b632c]                           dc.b $00
[000b632d]                           dc.b $00
[000b632e]                           dc.b $00
[000b632f]                           dc.b $0a
[000b6330]                           dc.b $00
[000b6331]                           dc.b $01
_24_ED_3DBUTTON:
[000b6332]                           dc.b $00
[000b6333]                           dc.b $1a
[000b6334]                           dc.w $ffff
[000b6336]                           dc.w $ffff
[000b6338]                           dc.b $00
[000b6339]                           dc.b $1b
[000b633a]                           dc.b $00
[000b633b]                           dc.b $05
[000b633c]                           dc.b $00
[000b633d]                           dc.b $00
[000b633e]                           dc.w $43ff
[000b6340]                           dc.w $1121
[000b6342]                           dc.b $00
[000b6343]                           dc.b $29
[000b6344]                           dc.b $00
[000b6345]                           dc.b $03
[000b6346]                           dc.b $00
[000b6347]                           dc.b $03
[000b6348]                           dc.b $00
[000b6349]                           dc.b $01
_24aED_3DBUTTON:
[000b634a] 0002881c                  dc.l ed3d_trans
[000b634e]                           dc.b $00
[000b634f]                           dc.b $00
[000b6350]                           dc.b $00
[000b6351]                           dc.b $00
[000b6352]                           dc.w $8000
[000b6354]                           dc.b $00
[000b6355]                           dc.b $00
[000b6356]                           dc.b $00
[000b6357]                           dc.b $00
[000b6358]                           dc.b $00
[000b6359]                           dc.b $00
[000b635a]                           dc.b $00
[000b635b]                           dc.b $00
[000b635c]                           dc.b $00
[000b635d]                           dc.b $00
[000b635e]                           dc.b $00
[000b635f]                           dc.b $00
[000b6360]                           dc.b $00
[000b6361]                           dc.b $00
_26_ED_3DBUTTON:
[000b6362]                           dc.b $00
[000b6363]                           dc.b $1c
[000b6364]                           dc.w $ffff
[000b6366]                           dc.w $ffff
[000b6368]                           dc.b $00
[000b6369]                           dc.b $1b
[000b636a]                           dc.b $00
[000b636b]                           dc.b $05
[000b636c]                           dc.b $00
[000b636d]                           dc.b $00
[000b636e]                           dc.w $43ff
[000b6370]                           dc.w $11a1
[000b6372]                           dc.b $00
[000b6373]                           dc.b $2d
[000b6374]                           dc.b $00
[000b6375]                           dc.b $03
[000b6376]                           dc.b $00
[000b6377]                           dc.b $03
[000b6378]                           dc.b $00
[000b6379]                           dc.b $01
_26aED_3DBUTTON:
[000b637a] 00028676                  dc.l ed3d_replace
[000b637e]                           dc.b $00
[000b637f]                           dc.b $00
[000b6380]                           dc.b $00
[000b6381]                           dc.b $00
[000b6382]                           dc.w $8000
[000b6384]                           dc.b $00
[000b6385]                           dc.b $00
[000b6386]                           dc.b $00
[000b6387]                           dc.b $00
[000b6388]                           dc.b $00
[000b6389]                           dc.b $00
[000b638a]                           dc.b $00
[000b638b]                           dc.b $00
[000b638c]                           dc.b $00
[000b638d]                           dc.b $00
[000b638e]                           dc.b $00
[000b638f]                           dc.b $00
[000b6390]                           dc.b $00
[000b6391]                           dc.b $00
_28_ED_3DBUTTON:
[000b6392]                           dc.b $00
[000b6393]                           dc.b $1d
[000b6394]                           dc.w $ffff
[000b6396]                           dc.w $ffff
[000b6398]                           dc.b $00
[000b6399]                           dc.b $18
[000b639a]                           dc.b $00
[000b639b]                           dc.b $08
[000b639c]                           dc.b $00
[000b639d]                           dc.b $10
[000b639e] 000b5fb2                  dc.l A_BOXED01
[000b63a2]                           dc.b $00
[000b63a3]                           dc.b $01
[000b63a4]                           dc.b $00
[000b63a5]                           dc.b $05
[000b63a6]                           dc.b $00
[000b63a7]                           dc.b $36
[000b63a8]                           dc.b $00
[000b63a9]                           dc.b $01
_29_ED_3DBUTTON:
[000b63aa]                           dc.b $00
[000b63ab]                           dc.b $07
[000b63ac]                           dc.w $ffff
[000b63ae]                           dc.w $ffff
[000b63b0]                           dc.b $00
[000b63b1]                           dc.b $1c
[000b63b2]                           dc.b $00
[000b63b3]                           dc.b $40
[000b63b4]                           dc.b $00
[000b63b5]                           dc.b $00
[000b63b6] 000b5e6e                  dc.l TEXT_13
[000b63ba]                           dc.b $00
[000b63bb]                           dc.b $22
[000b63bc]                           dc.b $00
[000b63bd]                           dc.b $03
[000b63be]                           dc.b $00
[000b63bf]                           dc.b $06
[000b63c0]                           dc.b $00
[000b63c1]                           dc.b $01
_30_ED_3DBUTTON:
[000b63c2]                           dc.b $00
[000b63c3]                           dc.b $33
[000b63c4]                           dc.b $00
[000b63c5]                           dc.b $1f
[000b63c6]                           dc.b $00
[000b63c7]                           dc.b $2f
[000b63c8]                           dc.b $00
[000b63c9]                           dc.b $18
[000b63ca]                           dc.b $00
[000b63cb]                           dc.b $40
[000b63cc]                           dc.b $00
[000b63cd]                           dc.b $00
[000b63ce] 000b6052                  dc.l A_INNERFRAME01
[000b63d2]                           dc.b $00
[000b63d3]                           dc.b $01
[000b63d4]                           dc.b $00
[000b63d5]                           dc.b $0b
[000b63d6]                           dc.b $00
[000b63d7]                           dc.b $1c
[000b63d8]                           dc.b $00
[000b63d9]                           dc.b $08
_31_ED_3DBUTTON:
[000b63da]                           dc.b $00
[000b63db]                           dc.b $20
[000b63dc]                           dc.w $ffff
[000b63de]                           dc.w $ffff
[000b63e0]                           dc.b $00
[000b63e1]                           dc.b $1c
[000b63e2]                           dc.b $00
[000b63e3]                           dc.b $40
[000b63e4]                           dc.b $00
[000b63e5]                           dc.b $00
[000b63e6] 000b5dfa                  dc.l TEXT_01
[000b63ea]                           dc.b $00
[000b63eb]                           dc.b $01
[000b63ec]                           dc.b $00
[000b63ed]                           dc.b $01
[000b63ee]                           dc.b $00
[000b63ef]                           dc.b $07
[000b63f0]                           dc.b $00
[000b63f1]                           dc.b $01
_32_ED_3DBUTTON:
[000b63f2]                           dc.b $00
[000b63f3]                           dc.b $22
[000b63f4]                           dc.w $ffff
[000b63f6]                           dc.w $ffff
[000b63f8]                           dc.b $00
[000b63f9]                           dc.b $18
[000b63fa]                           dc.b $00
[000b63fb]                           dc.b $40
[000b63fc]                           dc.b $00
[000b63fd]                           dc.b $00
[000b63fe] 000b60d2                  dc.l A_SLIDER02
[000b6402]                           dc.b $00
[000b6403]                           dc.b $09
[000b6404]                           dc.b $00
[000b6405]                           dc.b $01
[000b6406]                           dc.b $00
[000b6407]                           dc.b $12
[000b6408]                           dc.b $00
[000b6409]                           dc.b $01
_32aED_3DBUTTON:
[000b640a] 00035cb6                  dc.l Aus_slider
[000b640e]                           dc.b $00
[000b640f]                           dc.b $00
[000b6410]                           dc.b $00
[000b6411]                           dc.b $00
[000b6412]                           dc.w $8000
[000b6414]                           dc.b $00
[000b6415]                           dc.b $00
[000b6416]                           dc.b $00
[000b6417]                           dc.b $00
[000b6418]                           dc.b $00
[000b6419]                           dc.b $00
[000b641a]                           dc.b $00
[000b641b]                           dc.b $00
[000b641c]                           dc.b $00
[000b641d]                           dc.b $00
[000b641e]                           dc.b $00
[000b641f]                           dc.b $00
[000b6420]                           dc.b $00
[000b6421]                           dc.b $00
_34_ED_3DBUTTON:
[000b6422]                           dc.b $00
[000b6423]                           dc.b $23
[000b6424]                           dc.w $ffff
[000b6426]                           dc.w $ffff
[000b6428]                           dc.b $00
[000b6429]                           dc.b $1c
[000b642a]                           dc.b $00
[000b642b]                           dc.b $40
[000b642c]                           dc.b $00
[000b642d]                           dc.b $00
[000b642e] 000b5e14                  dc.l TEXT_03
[000b6432]                           dc.b $00
[000b6433]                           dc.b $01
[000b6434]                           dc.b $00
[000b6435]                           dc.b $02
[000b6436]                           dc.b $00
[000b6437]                           dc.b $07
[000b6438]                           dc.b $00
[000b6439]                           dc.b $01
_35_ED_3DBUTTON:
[000b643a]                           dc.b $00
[000b643b]                           dc.b $25
[000b643c]                           dc.w $ffff
[000b643e]                           dc.w $ffff
[000b6440]                           dc.b $00
[000b6441]                           dc.b $18
[000b6442]                           dc.b $00
[000b6443]                           dc.b $40
[000b6444]                           dc.b $00
[000b6445]                           dc.b $00
[000b6446] 000b60d2                  dc.l A_SLIDER02
[000b644a]                           dc.b $00
[000b644b]                           dc.b $09
[000b644c]                           dc.b $00
[000b644d]                           dc.b $02
[000b644e]                           dc.b $00
[000b644f]                           dc.b $12
[000b6450]                           dc.b $00
[000b6451]                           dc.b $01
_35aED_3DBUTTON:
[000b6452] 00035cb6                  dc.l Aus_slider
[000b6456]                           dc.b $00
[000b6457]                           dc.b $00
[000b6458]                           dc.b $00
[000b6459]                           dc.b $00
[000b645a]                           dc.w $8000
[000b645c]                           dc.b $00
[000b645d]                           dc.b $00
[000b645e]                           dc.b $00
[000b645f]                           dc.b $00
[000b6460]                           dc.b $00
[000b6461]                           dc.b $00
[000b6462]                           dc.b $00
[000b6463]                           dc.b $00
[000b6464]                           dc.b $00
[000b6465]                           dc.b $00
[000b6466]                           dc.b $00
[000b6467]                           dc.b $00
[000b6468]                           dc.b $00
[000b6469]                           dc.b $00
_37_ED_3DBUTTON:
[000b646a]                           dc.b $00
[000b646b]                           dc.b $27
[000b646c]                           dc.b $00
[000b646d]                           dc.b $26
[000b646e]                           dc.b $00
[000b646f]                           dc.b $26
[000b6470]                           dc.b $00
[000b6471]                           dc.b $1c
[000b6472]                           dc.b $00
[000b6473]                           dc.b $40
[000b6474]                           dc.b $00
[000b6475]                           dc.b $00
[000b6476] 000b5ea2                  dc.l TEXT_21
[000b647a]                           dc.b $00
[000b647b]                           dc.b $02
[000b647c]                           dc.b $00
[000b647d]                           dc.b $03
[000b647e]                           dc.b $00
[000b647f]                           dc.b $06
[000b6480]                           dc.b $00
[000b6481]                           dc.b $01
_38_ED_3DBUTTON:
[000b6482]                           dc.b $00
[000b6483]                           dc.b $25
[000b6484]                           dc.w $ffff
[000b6486]                           dc.w $ffff
[000b6488]                           dc.b $00
[000b6489]                           dc.b $18
[000b648a]                           dc.b $00
[000b648b]                           dc.b $40
[000b648c]                           dc.b $00
[000b648d]                           dc.b $00
[000b648e] 000b5f92                  dc.l A_ARROWS02
[000b6492]                           dc.b $00
[000b6493]                           dc.b $00
[000b6494]                           dc.b $00
[000b6495]                           dc.b $00
[000b6496]                           dc.b $00
[000b6497]                           dc.b $01
[000b6498]                           dc.b $00
[000b6499]                           dc.b $01
_39_ED_3DBUTTON:
[000b649a]                           dc.b $00
[000b649b]                           dc.b $28
[000b649c]                           dc.w $ffff
[000b649e]                           dc.w $ffff
[000b64a0]                           dc.b $00
[000b64a1]                           dc.b $1c
[000b64a2]                           dc.b $00
[000b64a3]                           dc.b $40
[000b64a4]                           dc.b $00
[000b64a5]                           dc.b $00
[000b64a6] 000b5e90                  dc.l TEXT_19
[000b64aa]                           dc.b $00
[000b64ab]                           dc.b $03
[000b64ac]                           dc.b $00
[000b64ad]                           dc.b $04
[000b64ae]                           dc.b $00
[000b64af]                           dc.b $05
[000b64b0]                           dc.b $00
[000b64b1]                           dc.b $01
_40_ED_3DBUTTON:
[000b64b2]                           dc.b $00
[000b64b3]                           dc.b $2c
[000b64b4]                           dc.b $00
[000b64b5]                           dc.b $2a
[000b64b6]                           dc.b $00
[000b64b7]                           dc.b $2b
[000b64b8]                           dc.b $00
[000b64b9]                           dc.b $14
[000b64ba]                           dc.b $00
[000b64bb]                           dc.b $40
[000b64bc]                           dc.b $00
[000b64bd]                           dc.b $20
[000b64be]                           dc.b $00
[000b64bf]                           dc.b $ff
[000b64c0]                           dc.w $1101
[000b64c2]                           dc.b $00
[000b64c3]                           dc.b $09
[000b64c4]                           dc.b $00
[000b64c5]                           dc.b $04
[000b64c6]                           dc.b $00
[000b64c7]                           dc.b $12
[000b64c8]                           dc.b $00
[000b64c9]                           dc.b $01
_40aED_3DBUTTON:
[000b64ca] 00028384                  dc.l ed3d_outcol
[000b64ce]                           dc.b $00
[000b64cf]                           dc.b $00
[000b64d0]                           dc.b $00
[000b64d1]                           dc.b $00
[000b64d2]                           dc.w $8000
[000b64d4]                           dc.w $884c
[000b64d6]                           dc.b $00
[000b64d7]                           dc.b $00
[000b64d8]                           dc.b $00
[000b64d9]                           dc.b $00
[000b64da]                           dc.b $00
[000b64db]                           dc.b $00
[000b64dc]                           dc.b $00
[000b64dd]                           dc.b $00
[000b64de]                           dc.b $00
[000b64df]                           dc.b $00
[000b64e0]                           dc.b $00
[000b64e1]                           dc.b $00
_42_ED_3DBUTTON:
[000b64e2]                           dc.b $00
[000b64e3]                           dc.b $2b
[000b64e4]                           dc.w $ffff
[000b64e6]                           dc.w $ffff
[000b64e8]                           dc.b $00
[000b64e9]                           dc.b $14
[000b64ea]                           dc.b $00
[000b64eb]                           dc.b $00
[000b64ec]                           dc.b $00
[000b64ed]                           dc.b $00
[000b64ee]                           dc.w $4301
[000b64f0]                           dc.w $1371
[000b64f2]                           dc.b $00
[000b64f3]                           dc.b $10
[000b64f4]                           dc.b $00
[000b64f5]                           dc.b $00
[000b64f6]                           dc.b $00
[000b64f7]                           dc.b $02
[000b64f8]                           dc.b $00
[000b64f9]                           dc.b $01
_43_ED_3DBUTTON:
[000b64fa]                           dc.b $00
[000b64fb]                           dc.b $28
[000b64fc]                           dc.w $ffff
[000b64fe]                           dc.w $ffff
[000b6500]                           dc.b $00
[000b6501]                           dc.b $18
[000b6502]                           dc.b $00
[000b6503]                           dc.b $00
[000b6504]                           dc.b $00
[000b6505]                           dc.b $00
[000b6506] 000b5f72                  dc.l A_3DBUTTON27
[000b650a]                           dc.b $00
[000b650b]                           dc.b $00
[000b650c]                           dc.b $00
[000b650d]                           dc.b $00
[000b650e]                           dc.b $00
[000b650f]                           dc.b $10
[000b6510]                           dc.b $00
[000b6511]                           dc.b $01
_44_ED_3DBUTTON:
[000b6512]                           dc.b $00
[000b6513]                           dc.b $2e
[000b6514]                           dc.b $00
[000b6515]                           dc.b $2d
[000b6516]                           dc.b $00
[000b6517]                           dc.b $2d
[000b6518]                           dc.b $00
[000b6519]                           dc.b $1c
[000b651a]                           dc.b $00
[000b651b]                           dc.b $40
[000b651c]                           dc.b $00
[000b651d]                           dc.b $00
[000b651e] 000b5ea9                  dc.l TEXT_22
[000b6522]                           dc.b $00
[000b6523]                           dc.b $01
[000b6524]                           dc.b $00
[000b6525]                           dc.b $05
[000b6526]                           dc.b $00
[000b6527]                           dc.b $07
[000b6528]                           dc.b $00
[000b6529]                           dc.b $01
_45_ED_3DBUTTON:
[000b652a]                           dc.b $00
[000b652b]                           dc.b $2c
[000b652c]                           dc.w $ffff
[000b652e]                           dc.w $ffff
[000b6530]                           dc.b $00
[000b6531]                           dc.b $18
[000b6532]                           dc.b $00
[000b6533]                           dc.b $40
[000b6534]                           dc.b $00
[000b6535]                           dc.b $00
[000b6536] 000b5f92                  dc.l A_ARROWS02
[000b653a]                           dc.b $00
[000b653b]                           dc.b $00
[000b653c]                           dc.b $00
[000b653d]                           dc.b $00
[000b653e]                           dc.b $00
[000b653f]                           dc.b $01
[000b6540]                           dc.b $00
[000b6541]                           dc.b $01
_46_ED_3DBUTTON:
[000b6542]                           dc.b $00
[000b6543]                           dc.b $2f
[000b6544]                           dc.w $ffff
[000b6546]                           dc.w $ffff
[000b6548]                           dc.b $00
[000b6549]                           dc.b $1c
[000b654a]                           dc.b $00
[000b654b]                           dc.b $40
[000b654c]                           dc.b $00
[000b654d]                           dc.b $00
[000b654e] 000b5e51                  dc.l TEXT_09
[000b6552]                           dc.b $00
[000b6553]                           dc.b $02
[000b6554]                           dc.b $00
[000b6555]                           dc.b $06
[000b6556]                           dc.b $00
[000b6557]                           dc.b $06
[000b6558]                           dc.b $00
[000b6559]                           dc.b $01
_47_ED_3DBUTTON:
[000b655a]                           dc.b $00
[000b655b]                           dc.b $1e
[000b655c]                           dc.b $00
[000b655d]                           dc.b $31
[000b655e]                           dc.b $00
[000b655f]                           dc.b $32
[000b6560]                           dc.b $00
[000b6561]                           dc.b $14
[000b6562]                           dc.b $00
[000b6563]                           dc.b $40
[000b6564]                           dc.b $00
[000b6565]                           dc.b $20
[000b6566]                           dc.b $00
[000b6567]                           dc.b $ff
[000b6568]                           dc.w $1101
[000b656a]                           dc.b $00
[000b656b]                           dc.b $09
[000b656c]                           dc.b $00
[000b656d]                           dc.b $06
[000b656e]                           dc.b $00
[000b656f]                           dc.b $12
[000b6570]                           dc.b $00
[000b6571]                           dc.b $01
_47aED_3DBUTTON:
[000b6572] 0002820e                  dc.l ed3d_incol
[000b6576]                           dc.b $00
[000b6577]                           dc.b $00
[000b6578]                           dc.b $00
[000b6579]                           dc.b $00
[000b657a]                           dc.w $8000
[000b657c]                           dc.w $8852
[000b657e]                           dc.b $00
[000b657f]                           dc.b $00
[000b6580]                           dc.b $00
[000b6581]                           dc.b $00
[000b6582]                           dc.b $00
[000b6583]                           dc.b $00
[000b6584]                           dc.b $00
[000b6585]                           dc.b $00
[000b6586]                           dc.b $00
[000b6587]                           dc.b $00
[000b6588]                           dc.b $00
[000b6589]                           dc.b $00
_49_ED_3DBUTTON:
[000b658a]                           dc.b $00
[000b658b]                           dc.b $32
[000b658c]                           dc.w $ffff
[000b658e]                           dc.w $ffff
[000b6590]                           dc.b $00
[000b6591]                           dc.b $14
[000b6592]                           dc.b $00
[000b6593]                           dc.b $00
[000b6594]                           dc.b $00
[000b6595]                           dc.b $00
[000b6596]                           dc.w $4301
[000b6598]                           dc.w $1371
[000b659a]                           dc.b $00
[000b659b]                           dc.b $10
[000b659c]                           dc.b $00
[000b659d]                           dc.b $00
[000b659e]                           dc.b $00
[000b659f]                           dc.b $02
[000b65a0]                           dc.b $00
[000b65a1]                           dc.b $01
_50_ED_3DBUTTON:
[000b65a2]                           dc.b $00
[000b65a3]                           dc.b $2f
[000b65a4]                           dc.w $ffff
[000b65a6]                           dc.w $ffff
[000b65a8]                           dc.b $00
[000b65a9]                           dc.b $18
[000b65aa]                           dc.b $00
[000b65ab]                           dc.b $00
[000b65ac]                           dc.b $00
[000b65ad]                           dc.b $00
[000b65ae] 000b5f72                  dc.l A_3DBUTTON27
[000b65b2]                           dc.b $00
[000b65b3]                           dc.b $00
[000b65b4]                           dc.b $00
[000b65b5]                           dc.b $00
[000b65b6]                           dc.b $00
[000b65b7]                           dc.b $10
[000b65b8]                           dc.b $00
[000b65b9]                           dc.b $01
_51_ED_3DBUTTON:
[000b65ba]                           dc.b $00
[000b65bb]                           dc.b $42
[000b65bc]                           dc.b $00
[000b65bd]                           dc.b $34
[000b65be]                           dc.b $00
[000b65bf]                           dc.b $3e
[000b65c0]                           dc.b $00
[000b65c1]                           dc.b $18
[000b65c2]                           dc.b $00
[000b65c3]                           dc.b $40
[000b65c4]                           dc.b $00
[000b65c5]                           dc.b $00
[000b65c6] 000b60b2                  dc.l A_INNERFRAME05
[000b65ca]                           dc.b $00
[000b65cb]                           dc.b $1d
[000b65cc]                           dc.b $00
[000b65cd]                           dc.b $0b
[000b65ce]                           dc.b $00
[000b65cf]                           dc.b $1c
[000b65d0]                           dc.b $00
[000b65d1]                           dc.b $08
_52_ED_3DBUTTON:
[000b65d2]                           dc.b $00
[000b65d3]                           dc.b $36
[000b65d4]                           dc.w $ffff
[000b65d6]                           dc.w $ffff
[000b65d8]                           dc.b $00
[000b65d9]                           dc.b $18
[000b65da]                           dc.b $00
[000b65db]                           dc.b $41
[000b65dc]                           dc.b $00
[000b65dd]                           dc.b $00
[000b65de] 000b6032                  dc.l A_CHECKBOX03
[000b65e2]                           dc.b $00
[000b65e3]                           dc.b $01
[000b65e4]                           dc.b $00
[000b65e5]                           dc.b $01
[000b65e6]                           dc.b $00
[000b65e7]                           dc.b $0e
[000b65e8]                           dc.b $00
[000b65e9]                           dc.b $01
_52aED_3DBUTTON:
[000b65ea] 00028134                  dc.l ed3d_dither
[000b65ee]                           dc.b $00
[000b65ef]                           dc.b $00
[000b65f0]                           dc.b $00
[000b65f1]                           dc.b $00
[000b65f2]                           dc.w $8000
[000b65f4]                           dc.w $8844
[000b65f6]                           dc.b $00
[000b65f7]                           dc.b $00
[000b65f8]                           dc.b $00
[000b65f9]                           dc.b $00
[000b65fa]                           dc.b $00
[000b65fb]                           dc.b $00
[000b65fc]                           dc.b $00
[000b65fd]                           dc.b $00
[000b65fe]                           dc.b $00
[000b65ff]                           dc.b $00
[000b6600]                           dc.b $00
[000b6601]                           dc.b $00
_54_ED_3DBUTTON:
[000b6602]                           dc.b $00
[000b6603]                           dc.b $38
[000b6604]                           dc.w $ffff
[000b6606]                           dc.w $ffff
[000b6608]                           dc.b $00
[000b6609]                           dc.b $18
[000b660a]                           dc.b $00
[000b660b]                           dc.b $41
[000b660c]                           dc.b $00
[000b660d]                           dc.b $00
[000b660e] 000b6012                  dc.l A_CHECKBOX02
[000b6612]                           dc.b $00
[000b6613]                           dc.b $01
[000b6614]                           dc.b $00
[000b6615]                           dc.b $02
[000b6616]                           dc.b $00
[000b6617]                           dc.b $14
[000b6618]                           dc.b $00
[000b6619]                           dc.b $01
_54aED_3DBUTTON:
[000b661a] 00028316                  dc.l ed3d_nofill
[000b661e]                           dc.b $00
[000b661f]                           dc.b $00
[000b6620]                           dc.b $00
[000b6621]                           dc.b $00
[000b6622]                           dc.w $8000
[000b6624]                           dc.w $8845
[000b6626]                           dc.b $00
[000b6627]                           dc.b $00
[000b6628]                           dc.b $00
[000b6629]                           dc.b $00
[000b662a]                           dc.b $00
[000b662b]                           dc.b $00
[000b662c]                           dc.b $00
[000b662d]                           dc.b $00
[000b662e]                           dc.b $00
[000b662f]                           dc.b $00
[000b6630]                           dc.b $00
[000b6631]                           dc.b $00
_56_ED_3DBUTTON:
[000b6632]                           dc.b $00
[000b6633]                           dc.b $3a
[000b6634]                           dc.b $00
[000b6635]                           dc.b $39
[000b6636]                           dc.b $00
[000b6637]                           dc.b $39
[000b6638]                           dc.b $00
[000b6639]                           dc.b $1c
[000b663a]                           dc.b $00
[000b663b]                           dc.b $40
[000b663c]                           dc.b $00
[000b663d]                           dc.b $00
[000b663e] 000b5e88                  dc.l TEXT_17
[000b6642]                           dc.b $00
[000b6643]                           dc.b $01
[000b6644]                           dc.b $00
[000b6645]                           dc.b $04
[000b6646]                           dc.b $00
[000b6647]                           dc.b $08
[000b6648]                           dc.b $00
[000b6649]                           dc.b $01
_57_ED_3DBUTTON:
[000b664a]                           dc.b $00
[000b664b]                           dc.b $38
[000b664c]                           dc.w $ffff
[000b664e]                           dc.w $ffff
[000b6650]                           dc.b $00
[000b6651]                           dc.b $18
[000b6652]                           dc.b $00
[000b6653]                           dc.b $40
[000b6654]                           dc.b $00
[000b6655]                           dc.b $00
[000b6656] 000b5f92                  dc.l A_ARROWS02
[000b665a]                           dc.b $00
[000b665b]                           dc.b $00
[000b665c]                           dc.b $00
[000b665d]                           dc.b $00
[000b665e]                           dc.b $00
[000b665f]                           dc.b $01
[000b6660]                           dc.b $00
[000b6661]                           dc.b $01
_58_ED_3DBUTTON:
[000b6662]                           dc.b $00
[000b6663]                           dc.b $3c
[000b6664]                           dc.w $ffff
[000b6666]                           dc.w $ffff
[000b6668]                           dc.b $00
[000b6669]                           dc.b $14
[000b666a]                           dc.b $00
[000b666b]                           dc.b $40
[000b666c]                           dc.b $00
[000b666d]                           dc.b $20
[000b666e]                           dc.b $00
[000b666f]                           dc.b $ff
[000b6670]                           dc.w $1101
[000b6672]                           dc.b $00
[000b6673]                           dc.b $09
[000b6674]                           dc.b $00
[000b6675]                           dc.b $04
[000b6676]                           dc.b $00
[000b6677]                           dc.b $12
[000b6678]                           dc.b $00
[000b6679]                           dc.b $01
_58aED_3DBUTTON:
[000b667a] 000283ec                  dc.l ed3d_pattern
[000b667e]                           dc.b $00
[000b667f]                           dc.b $00
[000b6680]                           dc.b $00
[000b6681]                           dc.b $00
[000b6682]                           dc.w $8000
[000b6684]                           dc.w $884d
[000b6686]                           dc.b $00
[000b6687]                           dc.b $00
[000b6688]                           dc.b $00
[000b6689]                           dc.b $00
[000b668a]                           dc.b $00
[000b668b]                           dc.b $00
[000b668c]                           dc.b $00
[000b668d]                           dc.b $00
[000b668e]                           dc.b $00
[000b668f]                           dc.b $00
[000b6690]                           dc.b $00
[000b6691]                           dc.b $00
_60_ED_3DBUTTON:
[000b6692]                           dc.b $00
[000b6693]                           dc.b $3e
[000b6694]                           dc.b $00
[000b6695]                           dc.b $3d
[000b6696]                           dc.b $00
[000b6697]                           dc.b $3d
[000b6698]                           dc.b $00
[000b6699]                           dc.b $1c
[000b669a]                           dc.b $00
[000b669b]                           dc.b $40
[000b669c]                           dc.b $00
[000b669d]                           dc.b $00
[000b669e] 000b5e60                  dc.l TEXT_11
[000b66a2]                           dc.b $00
[000b66a3]                           dc.b $02
[000b66a4]                           dc.b $00
[000b66a5]                           dc.b $06
[000b66a6]                           dc.b $00
[000b66a7]                           dc.b $06
[000b66a8]                           dc.b $00
[000b66a9]                           dc.b $01
_61_ED_3DBUTTON:
[000b66aa]                           dc.b $00
[000b66ab]                           dc.b $3c
[000b66ac]                           dc.w $ffff
[000b66ae]                           dc.w $ffff
[000b66b0]                           dc.b $00
[000b66b1]                           dc.b $18
[000b66b2]                           dc.b $00
[000b66b3]                           dc.b $40
[000b66b4]                           dc.b $00
[000b66b5]                           dc.b $00
[000b66b6] 000b5f92                  dc.l A_ARROWS02
[000b66ba]                           dc.b $00
[000b66bb]                           dc.b $03
[000b66bc]                           dc.b $00
[000b66bd]                           dc.b $00
[000b66be]                           dc.b $00
[000b66bf]                           dc.b $01
[000b66c0]                           dc.b $00
[000b66c1]                           dc.b $01
_62_ED_3DBUTTON:
[000b66c2]                           dc.b $00
[000b66c3]                           dc.b $33
[000b66c4]                           dc.b $00
[000b66c5]                           dc.b $40
[000b66c6]                           dc.b $00
[000b66c7]                           dc.b $41
[000b66c8]                           dc.b $00
[000b66c9]                           dc.b $14
[000b66ca]                           dc.b $00
[000b66cb]                           dc.b $40
[000b66cc]                           dc.b $00
[000b66cd]                           dc.b $20
[000b66ce]                           dc.b $00
[000b66cf]                           dc.b $ff
[000b66d0]                           dc.w $1101
[000b66d2]                           dc.b $00
[000b66d3]                           dc.b $09
[000b66d4]                           dc.b $00
[000b66d5]                           dc.b $06
[000b66d6]                           dc.b $00
[000b66d7]                           dc.b $12
[000b66d8]                           dc.b $00
[000b66d9]                           dc.b $01
_62aED_3DBUTTON:
[000b66da] 00028276                  dc.l ed3d_intercol
[000b66de]                           dc.b $00
[000b66df]                           dc.b $00
[000b66e0]                           dc.b $00
[000b66e1]                           dc.b $00
[000b66e2]                           dc.w $8000
[000b66e4]                           dc.w $8842
[000b66e6]                           dc.b $00
[000b66e7]                           dc.b $00
[000b66e8]                           dc.b $00
[000b66e9]                           dc.b $00
[000b66ea]                           dc.b $00
[000b66eb]                           dc.b $00
[000b66ec]                           dc.b $00
[000b66ed]                           dc.b $00
[000b66ee]                           dc.b $00
[000b66ef]                           dc.b $00
[000b66f0]                           dc.b $00
[000b66f1]                           dc.b $00
_64_ED_3DBUTTON:
[000b66f2]                           dc.b $00
[000b66f3]                           dc.b $41
[000b66f4]                           dc.w $ffff
[000b66f6]                           dc.w $ffff
[000b66f8]                           dc.b $00
[000b66f9]                           dc.b $14
[000b66fa]                           dc.b $00
[000b66fb]                           dc.b $00
[000b66fc]                           dc.b $00
[000b66fd]                           dc.b $00
[000b66fe]                           dc.b $00
[000b66ff]                           dc.b $01
[000b6700]                           dc.w $1171
[000b6702]                           dc.b $00
[000b6703]                           dc.b $10
[000b6704]                           dc.b $00
[000b6705]                           dc.b $00
[000b6706]                           dc.b $00
[000b6707]                           dc.b $02
[000b6708]                           dc.b $00
[000b6709]                           dc.b $01
_65_ED_3DBUTTON:
[000b670a]                           dc.b $00
[000b670b]                           dc.b $3e
[000b670c]                           dc.w $ffff
[000b670e]                           dc.w $ffff
[000b6710]                           dc.b $00
[000b6711]                           dc.b $18
[000b6712]                           dc.b $00
[000b6713]                           dc.b $00
[000b6714]                           dc.b $00
[000b6715]                           dc.b $00
[000b6716] 000b5f72                  dc.l A_3DBUTTON27
[000b671a]                           dc.b $00
[000b671b]                           dc.b $00
[000b671c]                           dc.b $00
[000b671d]                           dc.b $00
[000b671e]                           dc.b $00
[000b671f]                           dc.b $10
[000b6720]                           dc.b $00
[000b6721]                           dc.b $01
_66_ED_3DBUTTON:
[000b6722]                           dc.b $00
[000b6723]                           dc.b $00
[000b6724]                           dc.b $00
[000b6725]                           dc.b $43
[000b6726]                           dc.b $00
[000b6727]                           dc.b $46
[000b6728]                           dc.b $00
[000b6729]                           dc.b $18
[000b672a]                           dc.b $00
[000b672b]                           dc.b $40
[000b672c]                           dc.b $00
[000b672d]                           dc.b $00
[000b672e] 000b6092                  dc.l A_INNERFRAME03
[000b6732]                           dc.b $00
[000b6733]                           dc.b $01
[000b6734]                           dc.b $00
[000b6735]                           dc.b $13
[000b6736]                           dc.b $00
[000b6737]                           dc.b $38
[000b6738]                           dc.b $00
[000b6739]                           dc.b $05
_67_ED_3DBUTTON:
[000b673a]                           dc.b $00
[000b673b]                           dc.b $44
[000b673c]                           dc.w $ffff
[000b673e]                           dc.w $ffff
[000b6740]                           dc.b $00
[000b6741]                           dc.b $1c
[000b6742]                           dc.b $00
[000b6743]                           dc.b $00
[000b6744]                           dc.b $00
[000b6745]                           dc.b $00
[000b6746] 000b5e34                  dc.l TEXT_06
[000b674a]                           dc.b $00
[000b674b]                           dc.b $01
[000b674c]                           dc.b $00
[000b674d]                           dc.b $01
[000b674e]                           dc.b $00
[000b674f]                           dc.b $0e
[000b6750]                           dc.b $00
[000b6751]                           dc.b $01
_68_ED_3DBUTTON:
[000b6752]                           dc.b $00
[000b6753]                           dc.b $45
[000b6754]                           dc.w $ffff
[000b6756]                           dc.w $ffff
[000b6758]                           dc.b $00
[000b6759]                           dc.b $1c
[000b675a]                           dc.b $00
[000b675b]                           dc.b $00
[000b675c]                           dc.b $00
[000b675d]                           dc.b $00
[000b675e] 000b5e43                  dc.l TEXT_07
[000b6762]                           dc.b $00
[000b6763]                           dc.b $01
[000b6764]                           dc.b $00
[000b6765]                           dc.b $03
[000b6766]                           dc.b $00
[000b6767]                           dc.b $0d
[000b6768]                           dc.b $00
[000b6769]                           dc.b $01
_69_ED_3DBUTTON:
[000b676a]                           dc.b $00
[000b676b]                           dc.b $46
[000b676c]                           dc.w $ffff
[000b676e]                           dc.w $ffff
[000b6770]                           dc.b $00
[000b6771]                           dc.b $18
[000b6772]                           dc.b $00
[000b6773]                           dc.b $08
[000b6774]                           dc.b $00
[000b6775]                           dc.b $10
[000b6776] 000b5fd2                  dc.l A_BOXED03
[000b677a]                           dc.b $00
[000b677b]                           dc.b $10
[000b677c]                           dc.b $00
[000b677d]                           dc.b $01
[000b677e]                           dc.b $00
[000b677f]                           dc.b $27
[000b6780]                           dc.b $00
[000b6781]                           dc.b $01
_70_ED_3DBUTTON:
[000b6782]                           dc.b $00
[000b6783]                           dc.b $42
[000b6784]                           dc.w $ffff
[000b6786]                           dc.w $ffff
[000b6788]                           dc.b $00
[000b6789]                           dc.b $18
[000b678a]                           dc.b $00
[000b678b]                           dc.b $28
[000b678c]                           dc.b $00
[000b678d]                           dc.b $10
[000b678e] 000b5ff2                  dc.l A_BOXED04
[000b6792]                           dc.b $00
[000b6793]                           dc.b $10
[000b6794]                           dc.b $00
[000b6795]                           dc.b $03
[000b6796]                           dc.b $00
[000b6797]                           dc.b $27
[000b6798]                           dc.b $00
[000b6799]                           dc.b $01
DB1:
[000b679a] 0005a4e2                  dc.l A_3Dbutton
[000b679e]                           dc.w $29f1
[000b67a0]                           dc.w $0178
[000b67a2] 00059318                  dc.l Auo_string
[000b67a6] 000b6888                  dc.l $000b6888 ; no symbol found
[000b67aa]                           dc.b $00
[000b67ab]                           dc.b $00
[000b67ac]                           dc.b $00
[000b67ad]                           dc.b $00
[000b67ae]                           dc.b $00
[000b67af]                           dc.b $00
[000b67b0]                           dc.b $00
[000b67b1]                           dc.b $00
[000b67b2]                           dc.b $00
[000b67b3]                           dc.b $00
[000b67b4]                           dc.b $00
[000b67b5]                           dc.b $00
[000b67b6]                           dc.b $00
[000b67b7]                           dc.b $00
[000b67b8]                           dc.b $00
[000b67b9]                           dc.b $00
DB2:
[000b67ba] 0005a4e2                  dc.l A_3Dbutton
[000b67be]                           dc.w $29c1
[000b67c0]                           dc.w $0178
[000b67c2] 00059318                  dc.l Auo_string
[000b67c6] 000b6888                  dc.l $000b6888 ; no symbol found
[000b67ca]                           dc.b $00
[000b67cb]                           dc.b $00
[000b67cc]                           dc.b $00
[000b67cd]                           dc.b $00
[000b67ce]                           dc.b $00
[000b67cf]                           dc.b $00
[000b67d0]                           dc.b $00
[000b67d1]                           dc.b $00
[000b67d2]                           dc.b $00
[000b67d3]                           dc.b $00
[000b67d4]                           dc.b $00
[000b67d5]                           dc.b $00
[000b67d6]                           dc.b $00
[000b67d7]                           dc.b $00
[000b67d8]                           dc.b $00
[000b67d9]                           dc.b $00
visual:
[000b67da]                           dc.w $ffff
[000b67dc]                           dc.w $ffff
[000b67de]                           dc.w $ffff
[000b67e0]                           dc.b $00
[000b67e1]                           dc.b $18
[000b67e2]                           dc.w $2005
[000b67e4]                           dc.b $00
[000b67e5]                           dc.b $10
[000b67e6] 000b679a                  dc.l DB1
[000b67ea]                           dc.b $00
[000b67eb]                           dc.b $00
[000b67ec]                           dc.b $00
[000b67ed]                           dc.b $00
[000b67ee]                           dc.b $00
[000b67ef]                           dc.b $0a
[000b67f0]                           dc.b $00
[000b67f1]                           dc.b $02
logical:
[000b67f2]                           dc.w $ffff
[000b67f4]                           dc.w $ffff
[000b67f6]                           dc.w $ffff
[000b67f8]                           dc.b $00
[000b67f9]                           dc.b $18
[000b67fa]                           dc.b $00
[000b67fb]                           dc.b $05
[000b67fc]                           dc.b $00
[000b67fd]                           dc.b $00
[000b67fe] 000b67ba                  dc.l DB2
[000b6802]                           dc.b $00
[000b6803]                           dc.b $00
[000b6804]                           dc.b $00
[000b6805]                           dc.b $00
[000b6806]                           dc.b $00
[000b6807]                           dc.b $0a
[000b6808]                           dc.b $00
[000b6809]                           dc.b $02
aud:
[000b680a] 000b688b                  dc.l $000b688b ; no symbol found
[000b680e] 000b6897                  dc.l $000b6897 ; no symbol found
[000b6812]                           dc.b $00
[000b6813]                           dc.b $02
[000b6814] 000b6888                  dc.l $000b6888 ; no symbol found
[000b6818]                           dc.b $00
[000b6819]                           dc.b $00
[000b681a]                           dc.b $00
[000b681b]                           dc.b $00
[000b681c]                           dc.b $00
[000b681d]                           dc.b $00
[000b681e]                           dc.b $00
[000b681f]                           dc.b $00
[000b6820]                           dc.b $00
[000b6821]                           dc.b $00
[000b6822]                           dc.b $00
[000b6823]                           dc.b $00
[000b6824]                           dc.b $00
[000b6825]                           dc.b $00
[000b6826]                           dc.b $00
[000b6827]                           dc.b $00
[000b6828]                           dc.b $00
[000b6829]                           dc.b $00
[000b682a]                           dc.b $00
[000b682b]                           dc.b $00
[000b682c]                           dc.b $00
[000b682d]                           dc.b $00
[000b682e]                           dc.b $00
[000b682f]                           dc.b $00
[000b6830]                           dc.b $00
[000b6831]                           dc.b $00
[000b6832]                           dc.b $00
[000b6833]                           dc.b $00
[000b6834]                           dc.b $00
[000b6835]                           dc.b $00
[000b6836]                           dc.b $00
[000b6837]                           dc.b $00
data:
[000b6838]                           dc.b 'A_3Dbutton',0
[000b6843]                           dc.b $00
[000b6844]                           dc.b $00
[000b6845]                           dc.b $00
[000b6846]                           dc.b $00
[000b6847]                           dc.b $00
[000b6848]                           dc.b $00
[000b6849]                           dc.b $00
[000b684a]                           dc.b $00
[000b684b]                           dc.b $00
[000b684c]                           dc.b $00
[000b684d]                           dc.b $00
[000b684e]                           dc.b $00
[000b684f]                           dc.b $00
[000b6850]                           dc.b $00
[000b6851]                           dc.b $00
[000b6852]                           dc.b $00
[000b6853]                           dc.b $00
[000b6854]                           dc.b $00
[000b6855]                           dc.b $00
[000b6856]                           dc.b $00
[000b6857]                           dc.b $00
[000b6858] 000288b2                  dc.l object_tree
[000b685c] 00028ce0                  dc.l test_it
[000b6860] 00028d88                  dc.l ok
[000b6864] 00049b7c                  dc.l Aob_delete
[000b6868] 000b67da                  dc.l visual
[000b686c] 000b67f2                  dc.l logical
[000b6870] 000b680a                  dc.l aud
[000b6874] 0002886e                  dc.l minsize
[000b6878]                           dc.b $00
[000b6879]                           dc.b $00
[000b687a]                           dc.b $00
[000b687b]                           dc.b $00
[000b687c] 000b5ec6                  dc.l title
[000b6880] 000b5eb1                  dc.l help_title
[000b6884]                           dc.b $00
[000b6885]                           dc.b $00
[000b6886]                           dc.b $00
[000b6887]                           dc.b $00
[000b6888]                           dc.w $3344
[000b688a]                           dc.b $00
[000b688b]                           dc.b '0x29c10178L',0
[000b6897]                           dc.b 'Auo_string',0
[000b68a2]                           dc.b '0x%lxL',0
[000b68a9]                           dc.b 'ABC',0
[000b68ad]                           dc.b $25
[000b68ae]                           dc.w $6400
	.even

	.bss

parm: ds.b 32
