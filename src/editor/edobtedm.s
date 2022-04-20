
edte_framecol:
[0003028e] 2f03                      move.l     d3,-(a7)
[00030290] 2f0a                      move.l     a2,-(a7)
[00030292] 2079 0010 1f12            movea.l    ACSblk,a0
[00030298] 2268 025c                 movea.l    604(a0),a1
[0003029c] 2469 003c                 movea.l    60(a1),a2
[000302a0] 702f                      moveq.l    #47,d0
[000302a2] 3f00                      move.w     d0,-(a7)
[000302a4] 7430                      moveq.l    #48,d2
[000302a6] 722d                      moveq.l    #45,d1
[000302a8] 302a 0012                 move.w     18(a2),d0
[000302ac] 760c                      moveq.l    #12,d3
[000302ae] e660                      asr.w      d3,d0
[000302b0] c07c 000f                 and.w      #$000F,d0
[000302b4] 4eb9 0002 f280            jsr        oe_colsel
[000302ba] 544f                      addq.w     #2,a7
[000302bc] 3600                      move.w     d0,d3
[000302be] 6b30                      bmi.s      edte_framecol_1
[000302c0] 322a 0012                 move.w     18(a2),d1
[000302c4] c27c 0fff                 and.w      #$0FFF,d1
[000302c8] 740c                      moveq.l    #12,d2
[000302ca] e568                      lsl.w      d2,d0
[000302cc] 8240                      or.w       d0,d1
[000302ce] 3541 0012                 move.w     d1,18(a2)
[000302d2] 2079 0010 1f12            movea.l    ACSblk,a0
[000302d8] 2068 0258                 movea.l    600(a0),a0
[000302dc] 2279 0010 1f12            movea.l    ACSblk,a1
[000302e2] 2469 0258                 movea.l    600(a1),a2
[000302e6] 226a 0066                 movea.l    102(a2),a1
[000302ea] 7001                      moveq.l    #1,d0
[000302ec] 72ff                      moveq.l    #-1,d1
[000302ee] 4e91                      jsr        (a1)
edte_framecol_1:
[000302f0] 245f                      movea.l    (a7)+,a2
[000302f2] 261f                      move.l     (a7)+,d3
[000302f4] 4e75                      rts

edte_intercol:
[000302f6] 3f03                      move.w     d3,-(a7)
[000302f8] 2f0a                      move.l     a2,-(a7)
[000302fa] 2079 0010 1f12            movea.l    ACSblk,a0
[00030300] 2268 025c                 movea.l    604(a0),a1
[00030304] 2469 003c                 movea.l    60(a1),a2
[00030308] 7049                      moveq.l    #73,d0
[0003030a] 3f00                      move.w     d0,-(a7)
[0003030c] 744a                      moveq.l    #74,d2
[0003030e] 7247                      moveq.l    #71,d1
[00030310] 700f                      moveq.l    #15,d0
[00030312] c06a 0012                 and.w      18(a2),d0
[00030316] 4eb9 0002 f280            jsr        oe_colsel
[0003031c] 544f                      addq.w     #2,a7
[0003031e] 3600                      move.w     d0,d3
[00030320] 6b2c                      bmi.s      edte_intercol_1
[00030322] 322a 0012                 move.w     18(a2),d1
[00030326] c27c fff0                 and.w      #$FFF0,d1
[0003032a] 8243                      or.w       d3,d1
[0003032c] 3541 0012                 move.w     d1,18(a2)
[00030330] 2079 0010 1f12            movea.l    ACSblk,a0
[00030336] 2068 0258                 movea.l    600(a0),a0
[0003033a] 2279 0010 1f12            movea.l    ACSblk,a1
[00030340] 2469 0258                 movea.l    600(a1),a2
[00030344] 226a 0066                 movea.l    102(a2),a1
[00030348] 7001                      moveq.l    #1,d0
[0003034a] 72ff                      moveq.l    #-1,d1
[0003034c] 4e91                      jsr        (a1)
edte_intercol_1:
[0003034e] 245f                      movea.l    (a7)+,a2
[00030350] 361f                      move.w     (a7)+,d3
[00030352] 4e75                      rts

edte_pattern:
[00030354] 48e7 0034                 movem.l    a2-a3/a5,-(a7)
[00030358] 514f                      subq.w     #8,a7
[0003035a] 41f9 000b db68            lea.l      POP_PATSEL,a0
[00030360] 4eb9 0004 9a5c            jsr        Aob_create
[00030366] 2448                      movea.l    a0,a2
[00030368] 200a                      move.l     a2,d0
[0003036a] 6700 00ce                 beq        edte_pattern_1
[0003036e] 47f9 0010 1f12            lea.l      ACSblk,a3
[00030374] 7043                      moveq.l    #67,d0
[00030376] 2053                      movea.l    (a3),a0
[00030378] 2268 0258                 movea.l    600(a0),a1
[0003037c] 2269 0014                 movea.l    20(a1),a1
[00030380] 41d7                      lea.l      (a7),a0
[00030382] 4eb9 0004 a3be            jsr        Aob_offset
[00030388] 7001                      moveq.l    #1,d0
[0003038a] 2053                      movea.l    (a3),a0
[0003038c] 2268 0258                 movea.l    600(a0),a1
[00030390] d069 0034                 add.w      52(a1),d0
[00030394] d157                      add.w      d0,(a7)
[00030396] 7201                      moveq.l    #1,d1
[00030398] d269 0036                 add.w      54(a1),d1
[0003039c] d36f 0002                 add.w      d1,2(a7)
[000303a0] 2268 025c                 movea.l    604(a0),a1
[000303a4] 2a69 003c                 movea.l    60(a1),a5
[000303a8] 302d 0012                 move.w     18(a5),d0
[000303ac] e840                      asr.w      #4,d0
[000303ae] c07c 0003                 and.w      #$0003,d0
[000303b2] 48c0                      ext.l      d0
[000303b4] 2400                      move.l     d0,d2
[000303b6] d482                      add.l      d2,d2
[000303b8] d480                      add.l      d0,d2
[000303ba] e78a                      lsl.l      #3,d2
[000303bc] 0072 0004 2822            ori.w      #$0004,34(a2,d2.l)
[000303c2] 322f 0002                 move.w     2(a7),d1
[000303c6] 3017                      move.w     (a7),d0
[000303c8] 224a                      movea.l    a2,a1
[000303ca] 2053                      movea.l    (a3),a0
[000303cc] 2068 0258                 movea.l    600(a0),a0
[000303d0] 4eb9 0004 948a            jsr        Ame_popup
[000303d6] 4a40                      tst.w      d0
[000303d8] 6f58                      ble.s      edte_pattern_2
[000303da] 5340                      subq.w     #1,d0
[000303dc] 322d 0012                 move.w     18(a5),d1
[000303e0] c27c ff8f                 and.w      #$FF8F,d1
[000303e4] 3400                      move.w     d0,d2
[000303e6] e94a                      lsl.w      #4,d2
[000303e8] 8242                      or.w       d2,d1
[000303ea] 3b41 0012                 move.w     d1,18(a5)
[000303ee] 2053                      movea.l    (a3),a0
[000303f0] 2268 025c                 movea.l    604(a0),a1
[000303f4] 3200                      move.w     d0,d1
[000303f6] 0269 ff8f 0656            andi.w     #$FF8F,1622(a1)
[000303fc] c27c 0007                 and.w      #$0007,d1
[00030400] e949                      lsl.w      #4,d1
[00030402] 8369 0656                 or.w       d1,1622(a1)
[00030406] 72ff                      moveq.l    #-1,d1
[00030408] 2053                      movea.l    (a3),a0
[0003040a] 2068 0258                 movea.l    600(a0),a0
[0003040e] 2253                      movea.l    (a3),a1
[00030410] 2a69 0258                 movea.l    600(a1),a5
[00030414] 226d 0066                 movea.l    102(a5),a1
[00030418] 7043                      moveq.l    #67,d0
[0003041a] 4e91                      jsr        (a1)
[0003041c] 72ff                      moveq.l    #-1,d1
[0003041e] 7001                      moveq.l    #1,d0
[00030420] 2053                      movea.l    (a3),a0
[00030422] 2068 0258                 movea.l    600(a0),a0
[00030426] 2253                      movea.l    (a3),a1
[00030428] 2a69 0258                 movea.l    600(a1),a5
[0003042c] 226d 0066                 movea.l    102(a5),a1
[00030430] 4e91                      jsr        (a1)
edte_pattern_2:
[00030432] 204a                      movea.l    a2,a0
[00030434] 4eb9 0004 9b7c            jsr        Aob_delete
edte_pattern_1:
[0003043a] 504f                      addq.w     #8,a7
[0003043c] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[00030440] 4e75                      rts

edte_pos:
[00030442] 2f0a                      move.l     a2,-(a7)
[00030444] 2f0b                      move.l     a3,-(a7)
[00030446] 514f                      subq.w     #8,a7
[00030448] 41f9 000b db08            lea.l      POP_HORPOSSEL,a0
[0003044e] 4eb9 0004 9a5c            jsr        Aob_create
[00030454] 2448                      movea.l    a0,a2
[00030456] 200a                      move.l     a2,d0
[00030458] 6700 012c                 beq        edte_pos_1
[0003045c] 47f9 0010 1f12            lea.l      ACSblk,a3
[00030462] 7015                      moveq.l    #21,d0
[00030464] 2053                      movea.l    (a3),a0
[00030466] 2268 0258                 movea.l    600(a0),a1
[0003046a] 2269 0014                 movea.l    20(a1),a1
[0003046e] 41d7                      lea.l      (a7),a0
[00030470] 4eb9 0004 a3be            jsr        Aob_offset
[00030476] 7001                      moveq.l    #1,d0
[00030478] 2053                      movea.l    (a3),a0
[0003047a] 2268 0258                 movea.l    600(a0),a1
[0003047e] d069 0034                 add.w      52(a1),d0
[00030482] d157                      add.w      d0,(a7)
[00030484] 7201                      moveq.l    #1,d1
[00030486] d269 0036                 add.w      54(a1),d1
[0003048a] d36f 0002                 add.w      d1,2(a7)
[0003048e] 2268 025c                 movea.l    604(a0),a1
[00030492] 2069 003c                 movea.l    60(a1),a0
[00030496] 3428 0010                 move.w     16(a0),d2
[0003049a] 4a42                      tst.w      d2
[0003049c] 670a                      beq.s      edte_pos_2
[0003049e] 5342                      subq.w     #1,d2
[000304a0] 670e                      beq.s      edte_pos_3
[000304a2] 5342                      subq.w     #1,d2
[000304a4] 6712                      beq.s      edte_pos_4
[000304a6] 6016                      bra.s      edte_pos_5
edte_pos_2:
[000304a8] 006a 0004 0022            ori.w      #$0004,34(a2)
[000304ae] 600e                      bra.s      edte_pos_5
edte_pos_3:
[000304b0] 006a 0004 0052            ori.w      #$0004,82(a2)
[000304b6] 6006                      bra.s      edte_pos_5
edte_pos_4:
[000304b8] 006a 0004 003a            ori.w      #$0004,58(a2)
edte_pos_5:
[000304be] 322f 0002                 move.w     2(a7),d1
[000304c2] 3017                      move.w     (a7),d0
[000304c4] 224a                      movea.l    a2,a1
[000304c6] 2053                      movea.l    (a3),a0
[000304c8] 2068 0258                 movea.l    600(a0),a0
[000304cc] 4eb9 0004 948a            jsr        Ame_popup
[000304d2] 3200                      move.w     d0,d1
[000304d4] 5341                      subq.w     #1,d1
[000304d6] 670c                      beq.s      edte_pos_6
[000304d8] 5341                      subq.w     #1,d1
[000304da] 672c                      beq.s      edte_pos_7
[000304dc] 5341                      subq.w     #1,d1
[000304de] 674e                      beq.s      edte_pos_8
[000304e0] 6000 009c                 bra        edte_pos_9
edte_pos_6:
[000304e4] 2053                      movea.l    (a3),a0
[000304e6] 2268 025c                 movea.l    604(a0),a1
[000304ea] 2069 003c                 movea.l    60(a1),a0
[000304ee] 4268 0010                 clr.w      16(a0)
[000304f2] 43f9 000b d309            lea.l      HPOS_TEXT1,a1
[000304f8] 7017                      moveq.l    #23,d0
[000304fa] 2053                      movea.l    (a3),a0
[000304fc] 2068 025c                 movea.l    604(a0),a0
[00030500] 4eb9 0004 afe0            jsr        Aob_puttext
[00030506] 604a                      bra.s      edte_pos_10
edte_pos_7:
[00030508] 2053                      movea.l    (a3),a0
[0003050a] 2268 025c                 movea.l    604(a0),a1
[0003050e] 2069 003c                 movea.l    60(a1),a0
[00030512] 317c 0002 0010            move.w     #$0002,16(a0)
[00030518] 43f9 000b d311            lea.l      HPOS_TEXT2,a1
[0003051e] 7017                      moveq.l    #23,d0
[00030520] 2053                      movea.l    (a3),a0
[00030522] 2068 025c                 movea.l    604(a0),a0
[00030526] 4eb9 0004 afe0            jsr        Aob_puttext
[0003052c] 6024                      bra.s      edte_pos_10
edte_pos_8:
[0003052e] 2053                      movea.l    (a3),a0
[00030530] 2268 025c                 movea.l    604(a0),a1
[00030534] 2069 003c                 movea.l    60(a1),a0
[00030538] 317c 0001 0010            move.w     #$0001,16(a0)
[0003053e] 43f9 000b d319            lea.l      HPOS_TEXT3,a1
[00030544] 7017                      moveq.l    #23,d0
[00030546] 2053                      movea.l    (a3),a0
[00030548] 2068 025c                 movea.l    604(a0),a0
[0003054c] 4eb9 0004 afe0            jsr        Aob_puttext
edte_pos_10:
[00030552] 72ff                      moveq.l    #-1,d1
[00030554] 7017                      moveq.l    #23,d0
[00030556] 2053                      movea.l    (a3),a0
[00030558] 2068 0258                 movea.l    600(a0),a0
[0003055c] 2253                      movea.l    (a3),a1
[0003055e] 2269 0258                 movea.l    600(a1),a1
[00030562] 2269 0066                 movea.l    102(a1),a1
[00030566] 4e91                      jsr        (a1)
[00030568] 72ff                      moveq.l    #-1,d1
[0003056a] 7001                      moveq.l    #1,d0
[0003056c] 2053                      movea.l    (a3),a0
[0003056e] 2068 0258                 movea.l    600(a0),a0
[00030572] 2253                      movea.l    (a3),a1
[00030574] 2269 0258                 movea.l    600(a1),a1
[00030578] 2269 0066                 movea.l    102(a1),a1
[0003057c] 4e91                      jsr        (a1)
edte_pos_9:
[0003057e] 204a                      movea.l    a2,a0
[00030580] 4eb9 0004 9b7c            jsr        Aob_delete
edte_pos_1:
[00030586] 504f                      addq.w     #8,a7
[00030588] 265f                      movea.l    (a7)+,a3
[0003058a] 245f                      movea.l    (a7)+,a2
[0003058c] 4e75                      rts

edte_replace:
[0003058e] 2079 0010 1f12            movea.l    ACSblk,a0
[00030594] 2268 025c                 movea.l    604(a0),a1
[00030598] 2069 003c                 movea.l    60(a1),a0
[0003059c] 0068 0080 0012            ori.w      #$0080,18(a0)
[000305a2] 72ff                      moveq.l    #-1,d1
[000305a4] 7001                      moveq.l    #1,d0
[000305a6] 2079 0010 1f12            movea.l    ACSblk,a0
[000305ac] 2068 0258                 movea.l    600(a0),a0
[000305b0] 2279 0010 1f12            movea.l    ACSblk,a1
[000305b6] 2269 0258                 movea.l    600(a1),a1
[000305ba] 2269 0066                 movea.l    102(a1),a1
[000305be] 4e91                      jsr        (a1)
[000305c0] 4e75                      rts

edte_size:
[000305c2] 2f0a                      move.l     a2,-(a7)
[000305c4] 2f0b                      move.l     a3,-(a7)
[000305c6] 514f                      subq.w     #8,a7
[000305c8] 41f9 000b dc40            lea.l      POP_SIZESEL,a0
[000305ce] 4eb9 0004 9a5c            jsr        Aob_create
[000305d4] 2448                      movea.l    a0,a2
[000305d6] 200a                      move.l     a2,d0
[000305d8] 6700 00f6                 beq        edte_size_1
[000305dc] 47f9 0010 1f12            lea.l      ACSblk,a3
[000305e2] 701a                      moveq.l    #26,d0
[000305e4] 2053                      movea.l    (a3),a0
[000305e6] 2268 0258                 movea.l    600(a0),a1
[000305ea] 2269 0014                 movea.l    20(a1),a1
[000305ee] 41d7                      lea.l      (a7),a0
[000305f0] 4eb9 0004 a3be            jsr        Aob_offset
[000305f6] 7001                      moveq.l    #1,d0
[000305f8] 2053                      movea.l    (a3),a0
[000305fa] 2268 0258                 movea.l    600(a0),a1
[000305fe] d069 0034                 add.w      52(a1),d0
[00030602] d157                      add.w      d0,(a7)
[00030604] 7201                      moveq.l    #1,d1
[00030606] d269 0036                 add.w      54(a1),d1
[0003060a] d36f 0002                 add.w      d1,2(a7)
[0003060e] 2268 025c                 movea.l    604(a0),a1
[00030612] 2069 003c                 movea.l    60(a1),a0
[00030616] 3428 000c                 move.w     12(a0),d2
[0003061a] 5742                      subq.w     #3,d2
[0003061c] 6706                      beq.s      edte_size_2
[0003061e] 5542                      subq.w     #2,d2
[00030620] 670a                      beq.s      edte_size_3
[00030622] 600e                      bra.s      edte_size_4
edte_size_2:
[00030624] 006a 0004 0022            ori.w      #$0004,34(a2)
[0003062a] 6006                      bra.s      edte_size_4
edte_size_3:
[0003062c] 006a 0004 003a            ori.w      #$0004,58(a2)
edte_size_4:
[00030632] 322f 0002                 move.w     2(a7),d1
[00030636] 3017                      move.w     (a7),d0
[00030638] 224a                      movea.l    a2,a1
[0003063a] 2053                      movea.l    (a3),a0
[0003063c] 2068 0258                 movea.l    600(a0),a0
[00030640] 4eb9 0004 948a            jsr        Ame_popup
[00030646] 3200                      move.w     d0,d1
[00030648] 5341                      subq.w     #1,d1
[0003064a] 6706                      beq.s      edte_size_5
[0003064c] 5341                      subq.w     #1,d1
[0003064e] 6728                      beq.s      edte_size_6
[00030650] 6076                      bra.s      edte_size_7
edte_size_5:
[00030652] 2053                      movea.l    (a3),a0
[00030654] 2268 025c                 movea.l    604(a0),a1
[00030658] 2069 003c                 movea.l    60(a1),a0
[0003065c] 317c 0003 000c            move.w     #$0003,12(a0)
[00030662] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[00030668] 701c                      moveq.l    #28,d0
[0003066a] 2053                      movea.l    (a3),a0
[0003066c] 2068 025c                 movea.l    604(a0),a0
[00030670] 4eb9 0004 afe0            jsr        Aob_puttext
[00030676] 6024                      bra.s      edte_size_8
edte_size_6:
[00030678] 2053                      movea.l    (a3),a0
[0003067a] 2268 025c                 movea.l    604(a0),a1
[0003067e] 2069 003c                 movea.l    60(a1),a0
[00030682] 317c 0005 000c            move.w     #$0005,12(a0)
[00030688] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[0003068e] 701c                      moveq.l    #28,d0
[00030690] 2053                      movea.l    (a3),a0
[00030692] 2068 025c                 movea.l    604(a0),a0
[00030696] 4eb9 0004 afe0            jsr        Aob_puttext
edte_size_8:
[0003069c] 72ff                      moveq.l    #-1,d1
[0003069e] 701c                      moveq.l    #28,d0
[000306a0] 2053                      movea.l    (a3),a0
[000306a2] 2068 0258                 movea.l    600(a0),a0
[000306a6] 2253                      movea.l    (a3),a1
[000306a8] 2269 0258                 movea.l    600(a1),a1
[000306ac] 2269 0066                 movea.l    102(a1),a1
[000306b0] 4e91                      jsr        (a1)
[000306b2] 72ff                      moveq.l    #-1,d1
[000306b4] 7001                      moveq.l    #1,d0
[000306b6] 2053                      movea.l    (a3),a0
[000306b8] 2068 0258                 movea.l    600(a0),a0
[000306bc] 2253                      movea.l    (a3),a1
[000306be] 2269 0258                 movea.l    600(a1),a1
[000306c2] 2269 0066                 movea.l    102(a1),a1
[000306c6] 4e91                      jsr        (a1)
edte_size_7:
[000306c8] 204a                      movea.l    a2,a0
[000306ca] 4eb9 0004 9b7c            jsr        Aob_delete
edte_size_1:
[000306d0] 504f                      addq.w     #8,a7
[000306d2] 265f                      movea.l    (a7)+,a3
[000306d4] 245f                      movea.l    (a7)+,a2
[000306d6] 4e75                      rts

edte_textcol:
[000306d8] 3f03                      move.w     d3,-(a7)
[000306da] 2f0a                      move.l     a2,-(a7)
[000306dc] 2079 0010 1f12            movea.l    ACSblk,a0
[000306e2] 2268 025c                 movea.l    604(a0),a1
[000306e6] 2469 003c                 movea.l    60(a1),a2
[000306ea] 7011                      moveq.l    #17,d0
[000306ec] 3f00                      move.w     d0,-(a7)
[000306ee] 7412                      moveq.l    #18,d2
[000306f0] 720f                      moveq.l    #15,d1
[000306f2] 302a 0012                 move.w     18(a2),d0
[000306f6] e040                      asr.w      #8,d0
[000306f8] c07c 000f                 and.w      #$000F,d0
[000306fc] 4eb9 0002 f280            jsr        oe_colsel
[00030702] 544f                      addq.w     #2,a7
[00030704] 3600                      move.w     d0,d3
[00030706] 6b2e                      bmi.s      edte_textcol_1
[00030708] 322a 0012                 move.w     18(a2),d1
[0003070c] c27c f0ff                 and.w      #$F0FF,d1
[00030710] e148                      lsl.w      #8,d0
[00030712] 8240                      or.w       d0,d1
[00030714] 3541 0012                 move.w     d1,18(a2)
[00030718] 2079 0010 1f12            movea.l    ACSblk,a0
[0003071e] 2068 0258                 movea.l    600(a0),a0
[00030722] 2279 0010 1f12            movea.l    ACSblk,a1
[00030728] 2469 0258                 movea.l    600(a1),a2
[0003072c] 226a 0066                 movea.l    102(a2),a1
[00030730] 7001                      moveq.l    #1,d0
[00030732] 72ff                      moveq.l    #-1,d1
[00030734] 4e91                      jsr        (a1)
edte_textcol_1:
[00030736] 245f                      movea.l    (a7)+,a2
[00030738] 361f                      move.w     (a7)+,d3
[0003073a] 4e75                      rts

edte_trans:
[0003073c] 2079 0010 1f12            movea.l    ACSblk,a0
[00030742] 2268 025c                 movea.l    604(a0),a1
[00030746] 2069 003c                 movea.l    60(a1),a0
[0003074a] 0268 ff7f 0012            andi.w     #$FF7F,18(a0)
[00030750] 72ff                      moveq.l    #-1,d1
[00030752] 7001                      moveq.l    #1,d0
[00030754] 2079 0010 1f12            movea.l    ACSblk,a0
[0003075a] 2068 0258                 movea.l    600(a0),a0
[0003075e] 2279 0010 1f12            movea.l    ACSblk,a1
[00030764] 2269 0258                 movea.l    600(a1),a1
[00030768] 2269 0066                 movea.l    102(a1),a1
[0003076c] 4e91                      jsr        (a1)
[0003076e] 4e75                      rts

edte_type:
[00030770] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00030774] 514f                      subq.w     #8,a7
[00030776] 45f9 000b edfc            lea.l      POP_TYPESEL,a2
[0003077c] 204a                      movea.l    a2,a0
[0003077e] 4eb9 0004 9a5c            jsr        Aob_create
[00030784] 2648                      movea.l    a0,a3
[00030786] 200b                      move.l     a3,d0
[00030788] 6700 017a                 beq        edte_type_1
[0003078c] 49f9 0010 1f12            lea.l      ACSblk,a4
[00030792] 7005                      moveq.l    #5,d0
[00030794] 2054                      movea.l    (a4),a0
[00030796] 2268 0258                 movea.l    600(a0),a1
[0003079a] 2269 0014                 movea.l    20(a1),a1
[0003079e] 41d7                      lea.l      (a7),a0
[000307a0] 4eb9 0004 a3be            jsr        Aob_offset
[000307a6] 7001                      moveq.l    #1,d0
[000307a8] 2054                      movea.l    (a4),a0
[000307aa] 2268 0258                 movea.l    600(a0),a1
[000307ae] d069 0034                 add.w      52(a1),d0
[000307b2] d157                      add.w      d0,(a7)
[000307b4] 7201                      moveq.l    #1,d1
[000307b6] d269 0036                 add.w      54(a1),d1
[000307ba] d36f 0002                 add.w      d1,2(a7)
[000307be] 2268 025c                 movea.l    604(a0),a1
[000307c2] 3629 0036                 move.w     54(a1),d3
[000307c6] 3403                      move.w     d3,d2
[000307c8] 947c 0015                 sub.w      #$0015,d2
[000307cc] 670e                      beq.s      edte_type_2
[000307ce] 5342                      subq.w     #1,d2
[000307d0] 6712                      beq.s      edte_type_3
[000307d2] 5f42                      subq.w     #7,d2
[000307d4] 6716                      beq.s      edte_type_4
[000307d6] 5342                      subq.w     #1,d2
[000307d8] 671a                      beq.s      edte_type_5
[000307da] 601e                      bra.s      edte_type_6
edte_type_2:
[000307dc] 006b 0004 0022            ori.w      #$0004,34(a3)
[000307e2] 6016                      bra.s      edte_type_6
edte_type_3:
[000307e4] 006b 0004 003a            ori.w      #$0004,58(a3)
[000307ea] 600e                      bra.s      edte_type_6
edte_type_4:
[000307ec] 006b 0004 0052            ori.w      #$0004,82(a3)
[000307f2] 6006                      bra.s      edte_type_6
edte_type_5:
[000307f4] 006b 0004 006a            ori.w      #$0004,106(a3)
edte_type_6:
[000307fa] 322f 0002                 move.w     2(a7),d1
[000307fe] 3017                      move.w     (a7),d0
[00030800] 224b                      movea.l    a3,a1
[00030802] 2054                      movea.l    (a4),a0
[00030804] 2068 0258                 movea.l    600(a0),a0
[00030808] 4eb9 0004 948a            jsr        Ame_popup
[0003080e] 3800                      move.w     d0,d4
[00030810] 5340                      subq.w     #1,d0
[00030812] 6712                      beq.s      edte_type_7
[00030814] 5340                      subq.w     #1,d0
[00030816] 6742                      beq.s      edte_type_8
[00030818] 5340                      subq.w     #1,d0
[0003081a] 675e                      beq.s      edte_type_9
[0003081c] 5340                      subq.w     #1,d0
[0003081e] 6700 008c                 beq        edte_type_10
[00030822] 6000 00a8                 bra        edte_type_11
edte_type_7:
[00030826] 2054                      movea.l    (a4),a0
[00030828] 2268 025c                 movea.l    604(a0),a1
[0003082c] 337c 0015 0036            move.w     #$0015,54(a1)
[00030832] 43ea fd9e                 lea.l      -610(a2),a1
[00030836] 7007                      moveq.l    #7,d0
[00030838] 2054                      movea.l    (a4),a0
[0003083a] 2068 025c                 movea.l    604(a0),a0
[0003083e] 4eb9 0004 afe0            jsr        Aob_puttext
edte_type_13:
[00030844] b67c 001d                 cmp.w      #$001D,d3
[00030848] 6708                      beq.s      edte_type_12
[0003084a] b67c 001e                 cmp.w      #$001E,d3
[0003084e] 6600 007c                 bne.w      edte_type_11
edte_type_12:
[00030852] 4eb9 0003 0d06            jsr        edte_xtext
[00030858] 6072                      bra.s      edte_type_11
edte_type_8:
[0003085a] 2054                      movea.l    (a4),a0
[0003085c] 2268 025c                 movea.l    604(a0),a1
[00030860] 337c 0016 0036            move.w     #$0016,54(a1)
[00030866] 43ea fda5                 lea.l      -603(a2),a1
[0003086a] 7007                      moveq.l    #7,d0
[0003086c] 2054                      movea.l    (a4),a0
[0003086e] 2068 025c                 movea.l    604(a0),a0
[00030872] 4eb9 0004 afe0            jsr        Aob_puttext
[00030878] 60ca                      bra.s      edte_type_13
edte_type_9:
[0003087a] 2054                      movea.l    (a4),a0
[0003087c] 2268 025c                 movea.l    604(a0),a1
[00030880] 337c 001d 0036            move.w     #$001D,54(a1)
[00030886] 43ea fdaf                 lea.l      -593(a2),a1
[0003088a] 7007                      moveq.l    #7,d0
[0003088c] 2054                      movea.l    (a4),a0
[0003088e] 2068 025c                 movea.l    604(a0),a0
[00030892] 4eb9 0004 afe0            jsr        Aob_puttext
edte_type_15:
[00030898] b67c 0015                 cmp.w      #$0015,d3
[0003089c] 6706                      beq.s      edte_type_14
[0003089e] b67c 0016                 cmp.w      #$0016,d3
[000308a2] 6628                      bne.s      edte_type_11
edte_type_14:
[000308a4] 4eb9 0003 0d5e            jsr        edte_xftext
[000308aa] 6020                      bra.s      edte_type_11
edte_type_10:
[000308ac] 2054                      movea.l    (a4),a0
[000308ae] 2268 025c                 movea.l    604(a0),a1
[000308b2] 337c 001e 0036            move.w     #$001E,54(a1)
[000308b8] 43ea fdb8                 lea.l      -584(a2),a1
[000308bc] 7007                      moveq.l    #7,d0
[000308be] 2054                      movea.l    (a4),a0
[000308c0] 2068 025c                 movea.l    604(a0),a0
[000308c4] 4eb9 0004 afe0            jsr        Aob_puttext
[000308ca] 60cc                      bra.s      edte_type_15
edte_type_11:
[000308cc] 4a44                      tst.w      d4
[000308ce] 6f2c                      ble.s      edte_type_16
[000308d0] 72ff                      moveq.l    #-1,d1
[000308d2] 7005                      moveq.l    #5,d0
[000308d4] 2054                      movea.l    (a4),a0
[000308d6] 2068 0258                 movea.l    600(a0),a0
[000308da] 2254                      movea.l    (a4),a1
[000308dc] 2469 0258                 movea.l    600(a1),a2
[000308e0] 226a 0066                 movea.l    102(a2),a1
[000308e4] 4e91                      jsr        (a1)
[000308e6] 72ff                      moveq.l    #-1,d1
[000308e8] 7001                      moveq.l    #1,d0
[000308ea] 2054                      movea.l    (a4),a0
[000308ec] 2068 0258                 movea.l    600(a0),a0
[000308f0] 2254                      movea.l    (a4),a1
[000308f2] 2469 0258                 movea.l    600(a1),a2
[000308f6] 226a 0066                 movea.l    102(a2),a1
[000308fa] 4e91                      jsr        (a1)
edte_type_16:
[000308fc] 204b                      movea.l    a3,a0
[000308fe] 4eb9 0004 9b7c            jsr        Aob_delete
edte_type_1:
[00030904] 504f                      addq.w     #8,a7
[00030906] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0003090a] 4e75                      rts

edte_ok:
[0003090c] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00030910] 4fef ffe4                 lea.l      -28(a7),a7
[00030914] 2079 0010 1f12            movea.l    ACSblk,a0
[0003091a] 2068 0258                 movea.l    600(a0),a0
[0003091e] 2468 0014                 movea.l    20(a0),a2
[00030922] 2a50                      movea.l    (a0),a5
[00030924] 2655                      movea.l    (a5),a3
[00030926] 006b 0001 0006            ori.w      #$0001,6(a3)
[0003092c] 206d 0004                 movea.l    4(a5),a0
[00030930] 2868 0004                 movea.l    4(a0),a4
[00030934] 322d 000a                 move.w     10(a5),d1
[00030938] 48c1                      ext.l      d1
[0003093a] 2001                      move.l     d1,d0
[0003093c] e788                      lsl.l      #3,d0
[0003093e] 9081                      sub.l      d1,d0
[00030940] e788                      lsl.l      #3,d0
[00030942] d9c0                      adda.l     d0,a4
[00030944] 226c 0014                 movea.l    20(a4),a1
[00030948] 204b                      movea.l    a3,a0
[0003094a] 4eb9 0003 4d66            jsr        del_tedinfo
[00030950] 396a 0036 000e            move.w     54(a2),14(a4)
[00030956] 701c                      moveq.l    #28,d0
[00030958] 226a 003c                 movea.l    60(a2),a1
[0003095c] 41d7                      lea.l      (a7),a0
[0003095e] 4eb9 0007 6f44            jsr        memcpy
[00030964] 43d7                      lea.l      (a7),a1
[00030966] 7003                      moveq.l    #3,d0
[00030968] 41ea 0378                 lea.l      888(a2),a0
[0003096c] 4eb9 0005 e010            jsr        Auo_boxed
[00030972] 2057                      movea.l    (a7),a0
[00030974] 4eb9 0007 69b0            jsr        strlen
[0003097a] 2600                      move.l     d0,d3
[0003097c] 5243                      addq.w     #1,d3
[0003097e] 3f43 0018                 move.w     d3,24(a7)
[00030982] 0c2c 0015 000f            cmpi.b     #$15,15(a4)
[00030988] 6708                      beq.s      edte_ok_1
[0003098a] 0c2c 0016 000f            cmpi.b     #$16,15(a4)
[00030990] 661a                      bne.s      edte_ok_2
edte_ok_1:
[00030992] 41f9 000b f594            lea.l      $000BF594,a0
[00030998] 2f48 0008                 move.l     a0,8(a7)
[0003099c] 2f48 0004                 move.l     a0,4(a7)
[000309a0] 426f 001a                 clr.w      26(a7)
[000309a4] 026c fff7 0010            andi.w     #$FFF7,16(a4)
[000309aa] 6032                      bra.s      edte_ok_3
edte_ok_2:
[000309ac] 43ef 0004                 lea.l      4(a7),a1
[000309b0] 7003                      moveq.l    #3,d0
[000309b2] 41ea 0390                 lea.l      912(a2),a0
[000309b6] 4eb9 0005 e010            jsr        Auo_boxed
[000309bc] 43ef 0008                 lea.l      8(a7),a1
[000309c0] 7003                      moveq.l    #3,d0
[000309c2] 41ea 03a8                 lea.l      936(a2),a0
[000309c6] 4eb9 0005 e010            jsr        Auo_boxed
[000309cc] 206f 0004                 movea.l    4(a7),a0
[000309d0] 4eb9 0007 69b0            jsr        strlen
[000309d6] 2600                      move.l     d0,d3
[000309d8] 5243                      addq.w     #1,d3
[000309da] 3f43 001a                 move.w     d3,26(a7)
edte_ok_3:
[000309de] 43d7                      lea.l      (a7),a1
[000309e0] 204b                      movea.l    a3,a0
[000309e2] 4eb9 0003 4dbe            jsr        dup_tedinfo
[000309e8] 2948 0014                 move.l     a0,20(a4)
[000309ec] 5343                      subq.w     #1,d3
[000309ee] 3003                      move.w     d3,d0
[000309f0] 2279 0010 1f12            movea.l    ACSblk,a1
[000309f6] c1e9 0012                 muls.w     18(a1),d0
[000309fa] 3600                      move.w     d0,d3
[000309fc] 302c 001c                 move.w     28(a4),d0
[00030a00] 4eb9 0002 bfbe            jsr        pixel_x
[00030a06] b640                      cmp.w      d0,d3
[00030a08] 6f0c                      ble.s      edte_ok_4
[00030a0a] 3003                      move.w     d3,d0
[00030a0c] 4eb9 0002 bf2a            jsr        char_x
[00030a12] 3940 001c                 move.w     d0,28(a4)
edte_ok_4:
[00030a16] 4eb9 0002 d91e            jsr        ed_abort
[00030a1c] 4fef 001c                 lea.l      28(a7),a7
[00030a20] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00030a24] 4e75                      rts

set_ted:
[00030a26] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00030a2a] 2648                      movea.l    a0,a3
[00030a2c] 4bf9 000b f57c            lea.l      sm,a5
[00030a32] 41ed f8f8                 lea.l      -1800(a5),a0
[00030a36] 4eb9 0004 9a5c            jsr        Aob_create
[00030a3c] 2448                      movea.l    a0,a2
[00030a3e] 200a                      move.l     a2,d0
[00030a40] 6606                      bne.s      set_ted_1
[00030a42] 91c8                      suba.l     a0,a0
[00030a44] 6000 0274                 bra        set_ted_2
set_ted_1:
[00030a48] 7025                      moveq.l    #37,d0
[00030a4a] 224a                      movea.l    a2,a1
[00030a4c] 2079 0010 1f12            movea.l    ACSblk,a0
[00030a52] 2068 0258                 movea.l    600(a0),a0
[00030a56] 4eb9 0002 f23c            jsr        oe_beself
[00030a5c] 7026                      moveq.l    #38,d0
[00030a5e] 224a                      movea.l    a2,a1
[00030a60] 2079 0010 1f12            movea.l    ACSblk,a0
[00030a66] 2068 0258                 movea.l    600(a0),a0
[00030a6a] 4eb9 0002 f23c            jsr        oe_beself
[00030a70] 7027                      moveq.l    #39,d0
[00030a72] 224a                      movea.l    a2,a1
[00030a74] 2079 0010 1f12            movea.l    ACSblk,a0
[00030a7a] 2068 0258                 movea.l    600(a0),a0
[00030a7e] 4eb9 0002 f23c            jsr        oe_beself
[00030a84] 356b 000e 0036            move.w     14(a3),54(a2)
[00030a8a] 102a 0037                 move.b     55(a2),d0
[00030a8e] 4880                      ext.w      d0
[00030a90] 907c 0015                 sub.w      #$0015,d0
[00030a94] 670e                      beq.s      set_ted_3
[00030a96] 5340                      subq.w     #1,d0
[00030a98] 670a                      beq.s      set_ted_3
[00030a9a] 5f40                      subq.w     #7,d0
[00030a9c] 6720                      beq.s      set_ted_4
[00030a9e] 5340                      subq.w     #1,d0
[00030aa0] 671c                      beq.s      set_ted_4
[00030aa2] 6032                      bra.s      set_ted_5
set_ted_3:
[00030aa4] 006a 0080 0398            ori.w      #$0080,920(a2)
[00030aaa] 026a fff7 0398            andi.w     #$FFF7,920(a2)
[00030ab0] 006a 0080 03b0            ori.w      #$0080,944(a2)
[00030ab6] 026a fff7 03b0            andi.w     #$FFF7,944(a2)
[00030abc] 6018                      bra.s      set_ted_5
set_ted_4:
[00030abe] 026a ff7f 0398            andi.w     #$FF7F,920(a2)
[00030ac4] 006a 0008 0398            ori.w      #$0008,920(a2)
[00030aca] 026a ff7f 03b0            andi.w     #$FF7F,944(a2)
[00030ad0] 006a 0008 03b0            ori.w      #$0008,944(a2)
set_ted_5:
[00030ad6] 356b 0012 003a            move.w     18(a3),58(a2)
[00030adc] 206b 0014                 movea.l    20(a3),a0
[00030ae0] 2868 0004                 movea.l    4(a0),a4
[00030ae4] 206a 003c                 movea.l    60(a2),a0
[00030ae8] 316c 000c 000c            move.w     12(a4),12(a0)
[00030aee] 316c 0010 0010            move.w     16(a4),16(a0)
[00030af4] 316c 0012 0012            move.w     18(a4),18(a0)
[00030afa] 316c 0016 0016            move.w     22(a4),22(a0)
[00030b00] 2054                      movea.l    (a4),a0
[00030b02] 2268 0004                 movea.l    4(a0),a1
[00030b06] 7025                      moveq.l    #37,d0
[00030b08] 204a                      movea.l    a2,a0
[00030b0a] 4eb9 0004 afe0            jsr        Aob_puttext
[00030b10] 206c 0004                 movea.l    4(a4),a0
[00030b14] 2268 0004                 movea.l    4(a0),a1
[00030b18] 7026                      moveq.l    #38,d0
[00030b1a] 204a                      movea.l    a2,a0
[00030b1c] 4eb9 0004 afe0            jsr        Aob_puttext
[00030b22] 206c 0008                 movea.l    8(a4),a0
[00030b26] 2268 0004                 movea.l    4(a0),a1
[00030b2a] 7027                      moveq.l    #39,d0
[00030b2c] 204a                      movea.l    a2,a0
[00030b2e] 4eb9 0004 afe0            jsr        Aob_puttext
[00030b34] 362c 0012                 move.w     18(a4),d3
[00030b38] 700c                      moveq.l    #12,d0
[00030b3a] e063                      asr.w      d0,d3
[00030b3c] c67c 000f                 and.w      #$000F,d3
[00030b40] 3203                      move.w     d3,d1
[00030b42] 48c1                      ext.l      d1
[00030b44] e589                      lsl.l      #2,d1
[00030b46] 41f9 000b e270            lea.l      colour_text,a0
[00030b4c] 2270 1800                 movea.l    0(a0,d1.l),a1
[00030b50] 204a                      movea.l    a2,a0
[00030b52] 7030                      moveq.l    #48,d0
[00030b54] 4eb9 0004 afe0            jsr        Aob_puttext
[00030b5a] 3003                      move.w     d3,d0
[00030b5c] 026a fff0 0476            andi.w     #$FFF0,1142(a2)
[00030b62] c07c 000f                 and.w      #$000F,d0
[00030b66] 816a 0476                 or.w       d0,1142(a2)
[00030b6a] 760f                      moveq.l    #15,d3
[00030b6c] c66c 0012                 and.w      18(a4),d3
[00030b70] 3003                      move.w     d3,d0
[00030b72] 48c0                      ext.l      d0
[00030b74] e588                      lsl.l      #2,d0
[00030b76] 41f9 000b e270            lea.l      colour_text,a0
[00030b7c] 2270 0800                 movea.l    0(a0,d0.l),a1
[00030b80] 204a                      movea.l    a2,a0
[00030b82] 704a                      moveq.l    #74,d0
[00030b84] 4eb9 0004 afe0            jsr        Aob_puttext
[00030b8a] 3003                      move.w     d3,d0
[00030b8c] 026a fff0 06e6            andi.w     #$FFF0,1766(a2)
[00030b92] c07c 000f                 and.w      #$000F,d0
[00030b96] 816a 06e6                 or.w       d0,1766(a2)
[00030b9a] 362c 0012                 move.w     18(a4),d3
[00030b9e] e843                      asr.w      #4,d3
[00030ba0] c67c 0007                 and.w      #$0007,d3
[00030ba4] 3003                      move.w     d3,d0
[00030ba6] 026a ff8f 0656            andi.w     #$FF8F,1622(a2)
[00030bac] c07c 0007                 and.w      #$0007,d0
[00030bb0] e948                      lsl.w      #4,d0
[00030bb2] 816a 0656                 or.w       d0,1622(a2)
[00030bb6] 302c 0010                 move.w     16(a4),d0
[00030bba] 4a40                      tst.w      d0
[00030bbc] 670a                      beq.s      set_ted_6
[00030bbe] 5340                      subq.w     #1,d0
[00030bc0] 672a                      beq.s      set_ted_7
[00030bc2] 5340                      subq.w     #1,d0
[00030bc4] 6714                      beq.s      set_ted_8
[00030bc6] 6034                      bra.s      set_ted_9
set_ted_6:
[00030bc8] 43f9 000b d309            lea.l      HPOS_TEXT1,a1
[00030bce] 7017                      moveq.l    #23,d0
[00030bd0] 204a                      movea.l    a2,a0
[00030bd2] 4eb9 0004 afe0            jsr        Aob_puttext
[00030bd8] 6022                      bra.s      set_ted_9
set_ted_8:
[00030bda] 43f9 000b d311            lea.l      HPOS_TEXT2,a1
[00030be0] 7017                      moveq.l    #23,d0
[00030be2] 204a                      movea.l    a2,a0
[00030be4] 4eb9 0004 afe0            jsr        Aob_puttext
[00030bea] 6010                      bra.s      set_ted_9
set_ted_7:
[00030bec] 43f9 000b d319            lea.l      HPOS_TEXT3,a1
[00030bf2] 7017                      moveq.l    #23,d0
[00030bf4] 204a                      movea.l    a2,a0
[00030bf6] 4eb9 0004 afe0            jsr        Aob_puttext
set_ted_9:
[00030bfc] 302c 000c                 move.w     12(a4),d0
[00030c00] 5740                      subq.w     #3,d0
[00030c02] 6706                      beq.s      set_ted_10
[00030c04] 5540                      subq.w     #2,d0
[00030c06] 6714                      beq.s      set_ted_11
[00030c08] 6022                      bra.s      set_ted_12
set_ted_10:
[00030c0a] 43f9 000b d322            lea.l      SIZE_TEXT0,a1
[00030c10] 701c                      moveq.l    #28,d0
[00030c12] 204a                      movea.l    a2,a0
[00030c14] 4eb9 0004 afe0            jsr        Aob_puttext
[00030c1a] 6010                      bra.s      set_ted_12
set_ted_11:
[00030c1c] 43f9 000b d327            lea.l      SIZE_TEXT1,a1
[00030c22] 701c                      moveq.l    #28,d0
[00030c24] 204a                      movea.l    a2,a0
[00030c26] 4eb9 0004 afe0            jsr        Aob_puttext
set_ted_12:
[00030c2c] 362c 0012                 move.w     18(a4),d3
[00030c30] e043                      asr.w      #8,d3
[00030c32] c67c 000f                 and.w      #$000F,d3
[00030c36] 3003                      move.w     d3,d0
[00030c38] 48c0                      ext.l      d0
[00030c3a] e588                      lsl.l      #2,d0
[00030c3c] 41f9 000b e270            lea.l      colour_text,a0
[00030c42] 2270 0800                 movea.l    0(a0,d0.l),a1
[00030c46] 204a                      movea.l    a2,a0
[00030c48] 7012                      moveq.l    #18,d0
[00030c4a] 4eb9 0004 afe0            jsr        Aob_puttext
[00030c50] 3003                      move.w     d3,d0
[00030c52] 026a fff0 01a6            andi.w     #$FFF0,422(a2)
[00030c58] c07c 000f                 and.w      #$000F,d0
[00030c5c] 816a 01a6                 or.w       d0,422(a2)
[00030c60] 302b 000e                 move.w     14(a3),d0
[00030c64] 907c 0015                 sub.w      #$0015,d0
[00030c68] 670e                      beq.s      set_ted_13
[00030c6a] 5340                      subq.w     #1,d0
[00030c6c] 671a                      beq.s      set_ted_14
[00030c6e] 5f40                      subq.w     #7,d0
[00030c70] 6726                      beq.s      set_ted_15
[00030c72] 5340                      subq.w     #1,d0
[00030c74] 6732                      beq.s      set_ted_16
[00030c76] 603e                      bra.s      set_ted_17
set_ted_13:
[00030c78] 43ed f61e                 lea.l      -2530(a5),a1
[00030c7c] 7007                      moveq.l    #7,d0
[00030c7e] 204a                      movea.l    a2,a0
[00030c80] 4eb9 0004 afe0            jsr        Aob_puttext
[00030c86] 602e                      bra.s      set_ted_17
set_ted_14:
[00030c88] 43ed f625                 lea.l      -2523(a5),a1
[00030c8c] 7007                      moveq.l    #7,d0
[00030c8e] 204a                      movea.l    a2,a0
[00030c90] 4eb9 0004 afe0            jsr        Aob_puttext
[00030c96] 601e                      bra.s      set_ted_17
set_ted_15:
[00030c98] 43ed f62f                 lea.l      -2513(a5),a1
[00030c9c] 7007                      moveq.l    #7,d0
[00030c9e] 204a                      movea.l    a2,a0
[00030ca0] 4eb9 0004 afe0            jsr        Aob_puttext
[00030ca6] 600e                      bra.s      set_ted_17
set_ted_16:
[00030ca8] 43ed f638                 lea.l      -2504(a5),a1
[00030cac] 7007                      moveq.l    #7,d0
[00030cae] 204a                      movea.l    a2,a0
[00030cb0] 4eb9 0004 afe0            jsr        Aob_puttext
set_ted_17:
[00030cb6] 2a8a                      move.l     a2,(a5)
[00030cb8] 204d                      movea.l    a5,a0
set_ted_2:
[00030cba] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00030cbe] 4e75                      rts

edte_th:
[00030cc0] 2f0a                      move.l     a2,-(a7)
[00030cc2] 45f9 0010 1f12            lea.l      ACSblk,a2
[00030cc8] 2052                      movea.l    (a2),a0
[00030cca] 3228 0260                 move.w     608(a0),d1
[00030cce] 48c1                      ext.l      d1
[00030cd0] 2001                      move.l     d1,d0
[00030cd2] d080                      add.l      d0,d0
[00030cd4] d081                      add.l      d1,d0
[00030cd6] e788                      lsl.l      #3,d0
[00030cd8] 2268 025c                 movea.l    604(a0),a1
[00030cdc] 3431 080c                 move.w     12(a1,d0.l),d2
[00030ce0] e14a                      lsl.w      #8,d2
[00030ce2] e042                      asr.w      #8,d2
[00030ce4] 2069 003c                 movea.l    60(a1),a0
[00030ce8] 3142 0016                 move.w     d2,22(a0)
[00030cec] 72ff                      moveq.l    #-1,d1
[00030cee] 7001                      moveq.l    #1,d0
[00030cf0] 2052                      movea.l    (a2),a0
[00030cf2] 2068 0258                 movea.l    600(a0),a0
[00030cf6] 2252                      movea.l    (a2),a1
[00030cf8] 2269 0258                 movea.l    600(a1),a1
[00030cfc] 2269 0066                 movea.l    102(a1),a1
[00030d00] 4e91                      jsr        (a1)
[00030d02] 245f                      movea.l    (a7)+,a2
[00030d04] 4e75                      rts

edte_xtext:
[00030d06] 2f0a                      move.l     a2,-(a7)
[00030d08] 2079 0010 1f12            movea.l    ACSblk,a0
[00030d0e] 2468 0258                 movea.l    600(a0),a2
[00030d12] 4eb9 0004 b286            jsr        Awi_diaend
[00030d18] 206a 0014                 movea.l    20(a2),a0
[00030d1c] 357c 0025 001c            move.w     #$0025,28(a2)
[00030d22] 357c ffff 001e            move.w     #$FFFF,30(a2)
[00030d28] 0068 0080 0398            ori.w      #$0080,920(a0)
[00030d2e] 0268 fff7 0398            andi.w     #$FFF7,920(a0)
[00030d34] 0068 0080 03b0            ori.w      #$0080,944(a0)
[00030d3a] 0268 fff7 03b0            andi.w     #$FFF7,944(a0)
[00030d40] 7026                      moveq.l    #38,d0
[00030d42] 204a                      movea.l    a2,a0
[00030d44] 4eb9 0004 b846            jsr        Awi_obredraw
[00030d4a] 7027                      moveq.l    #39,d0
[00030d4c] 204a                      movea.l    a2,a0
[00030d4e] 4eb9 0004 b846            jsr        Awi_obredraw
[00030d54] 4eb9 0004 b33c            jsr        Awi_diastart
[00030d5a] 245f                      movea.l    (a7)+,a2
[00030d5c] 4e75                      rts

edte_xftext:
[00030d5e] 2f0a                      move.l     a2,-(a7)
[00030d60] 2f0b                      move.l     a3,-(a7)
[00030d62] 2079 0010 1f12            movea.l    ACSblk,a0
[00030d68] 2468 0258                 movea.l    600(a0),a2
[00030d6c] 4eb9 0004 b286            jsr        Awi_diaend
[00030d72] 266a 0014                 movea.l    20(a2),a3
[00030d76] 026b ff7f 0398            andi.w     #$FF7F,920(a3)
[00030d7c] 006b 0008 0398            ori.w      #$0008,920(a3)
[00030d82] 026b ff7f 03b0            andi.w     #$FF7F,944(a3)
[00030d88] 006b 0008 03b0            ori.w      #$0008,944(a3)
[00030d8e] 322b 039a                 move.w     922(a3),d1
[00030d92] 7026                      moveq.l    #38,d0
[00030d94] 204a                      movea.l    a2,a0
[00030d96] 226a 0066                 movea.l    102(a2),a1
[00030d9a] 4e91                      jsr        (a1)
[00030d9c] 322b 03b2                 move.w     946(a3),d1
[00030da0] 7027                      moveq.l    #39,d0
[00030da2] 204a                      movea.l    a2,a0
[00030da4] 226a 0066                 movea.l    102(a2),a1
[00030da8] 4e91                      jsr        (a1)
[00030daa] 4eb9 0004 b33c            jsr        Awi_diastart
[00030db0] 265f                      movea.l    (a7)+,a3
[00030db2] 245f                      movea.l    (a7)+,a2
[00030db4] 4e75                      rts

	.data

TEXT_003:
[000beb24]                           dc.w $4f4b
[000beb26]                           dc.b $00
TEXT_004:
[000beb27]                           dc.b 'Abbruch',0
TEXT_01:
[000beb2f]                           dc.b 'Position:',0
TEXT_02:
[000beb39]                           dc.b '1234',0
TEXT_03:
[000beb3e]                           dc.b 'EDIT:____',0
TEXT_04:
[000beb48]                           dc.b '9999',0
TEXT_05:
[000beb4d]                           dc.b 'Typ:',0
TEXT_06:
[000beb52]                           dc.b 'Modus:',0
TEXT_07:
[000beb59]                           dc.b 'Muster:',0
TEXT_08:
[000beb61]                           dc.b 'Text:',0
TEXT_09:
[000beb67]                           dc.b 'Rand:',0
TEXT_11:
[000beb6d]                           dc.b 'Tmp:',0
TEXT_12:
[000beb72]                           dc.b 'Val:',0
TEXT_13:
[000beb77]                           dc.b 'Rahmen:',0
TEXT_14:
[000beb7f]                           dc.b 'Gr”že:',0
TEXT_15:
[000beb86]                           dc.b 'Farbe:',0
TEXT_17:
[000beb8d]                           dc.b 'Innenfl„che:',0
TYPE0:
[000beb9a]                           dc.b '  Text',0
TYPE1:
[000beba1]                           dc.b '  BoxText',0
TYPE2:
[000bebab]                           dc.b '  F-Text',0
TYPE3:
[000bebb4]                           dc.b '  F-BoxText',0
help_title:
[000bebc0]                           dc.b 'Der TEDINFO-Editor',0
title:
[000bebd3]                           dc.b ' TEDINFOS -',0
[000bebdf]                           dc.b $00
TEDINFO_01:
[000bebe0] 000beb39                  dc.l TEXT_02
[000bebe4] 000beb3e                  dc.l TEXT_03
[000bebe8] 000beb48                  dc.l TEXT_04
[000bebec]                           dc.b $00
[000bebed]                           dc.b $03
[000bebee]                           dc.b $00
[000bebef]                           dc.b $06
[000bebf0]                           dc.b $00
[000bebf1]                           dc.b $02
[000bebf2]                           dc.w $1180
[000bebf4]                           dc.b $00
[000bebf5]                           dc.b $00
[000bebf6]                           dc.w $ffff
[000bebf8]                           dc.b $00
[000bebf9]                           dc.b $05
[000bebfa]                           dc.b $00
[000bebfb]                           dc.b $0a
A_3DBUTTON01:
[000bebfc] 0005a4e2                  dc.l A_3Dbutton
[000bec00]                           dc.w $2011
[000bec02]                           dc.w $9178
[000bec04] 00059318                  dc.l Auo_string
[000bec08]                           dc.b $00
[000bec09]                           dc.b $00
[000bec0a]                           dc.b $00
[000bec0b]                           dc.b $00
[000bec0c]                           dc.b $00
[000bec0d]                           dc.b $00
[000bec0e]                           dc.b $00
[000bec0f]                           dc.b $00
[000bec10]                           dc.b $00
[000bec11]                           dc.b $00
[000bec12]                           dc.b $00
[000bec13]                           dc.b $00
[000bec14]                           dc.b $00
[000bec15]                           dc.b $00
[000bec16]                           dc.b $00
[000bec17]                           dc.b $00
[000bec18]                           dc.b $00
[000bec19]                           dc.b $00
[000bec1a]                           dc.b $00
[000bec1b]                           dc.b $00
A_3DBUTTON02:
[000bec1c] 0005a4e2                  dc.l A_3Dbutton
[000bec20]                           dc.w $29c1
[000bec22]                           dc.w $0178
[000bec24] 00059318                  dc.l Auo_string
[000bec28] 000beb24                  dc.l TEXT_003
[000bec2c]                           dc.b $00
[000bec2d]                           dc.b $00
[000bec2e]                           dc.b $00
[000bec2f]                           dc.b $00
[000bec30]                           dc.b $00
[000bec31]                           dc.b $00
[000bec32]                           dc.b $00
[000bec33]                           dc.b $00
[000bec34]                           dc.b $00
[000bec35]                           dc.b $00
[000bec36]                           dc.b $00
[000bec37]                           dc.b $00
[000bec38]                           dc.b $00
[000bec39]                           dc.b $00
[000bec3a]                           dc.b $00
[000bec3b]                           dc.b $00
A_3DBUTTON03:
[000bec3c] 0005a4e2                  dc.l A_3Dbutton
[000bec40]                           dc.w $29c1
[000bec42]                           dc.w $0178
[000bec44] 00059318                  dc.l Auo_string
[000bec48] 000beb27                  dc.l TEXT_004
[000bec4c]                           dc.b $00
[000bec4d]                           dc.b $00
[000bec4e]                           dc.b $00
[000bec4f]                           dc.b $00
[000bec50]                           dc.b $00
[000bec51]                           dc.b $00
[000bec52]                           dc.b $00
[000bec53]                           dc.b $00
[000bec54]                           dc.b $00
[000bec55]                           dc.b $00
[000bec56]                           dc.b $00
[000bec57]                           dc.b $00
[000bec58]                           dc.b $00
[000bec59]                           dc.b $00
[000bec5a]                           dc.b $00
[000bec5b]                           dc.b $00
A_3DBUTTON04:
[000bec5c] 0005a4e2                  dc.l A_3Dbutton
[000bec60]                           dc.w $09f1
[000bec62]                           dc.w $0178
[000bec64] 00059318                  dc.l Auo_string
[000bec68] 000bebab                  dc.l TYPE2
[000bec6c]                           dc.b $00
[000bec6d]                           dc.b $00
[000bec6e]                           dc.b $00
[000bec6f]                           dc.b $00
[000bec70]                           dc.b $00
[000bec71]                           dc.b $00
[000bec72]                           dc.b $00
[000bec73]                           dc.b $00
[000bec74]                           dc.b $00
[000bec75]                           dc.b $00
[000bec76]                           dc.b $00
[000bec77]                           dc.b $00
[000bec78]                           dc.b $00
[000bec79]                           dc.b $00
[000bec7a]                           dc.b $00
[000bec7b]                           dc.b $00
A_3DBUTTON05:
[000bec7c] 0005a4e2                  dc.l A_3Dbutton
[000bec80]                           dc.w $21f1
[000bec82]                           dc.w $0178
[000bec84] 00059318                  dc.l Auo_string
[000bec88]                           dc.b $00
[000bec89]                           dc.b $00
[000bec8a]                           dc.b $00
[000bec8b]                           dc.b $00
[000bec8c]                           dc.b $00
[000bec8d]                           dc.b $00
[000bec8e]                           dc.b $00
[000bec8f]                           dc.b $00
[000bec90]                           dc.b $00
[000bec91]                           dc.b $00
[000bec92]                           dc.b $00
[000bec93]                           dc.b $00
[000bec94]                           dc.b $00
[000bec95]                           dc.b $00
[000bec96]                           dc.b $00
[000bec97]                           dc.b $00
[000bec98]                           dc.b $00
[000bec99]                           dc.b $00
[000bec9a]                           dc.b $00
[000bec9b]                           dc.b $00
A_3DBUTTON07:
[000bec9c] 0005a4e2                  dc.l A_3Dbutton
[000beca0]                           dc.w $09f1
[000beca2]                           dc.w $0178
[000beca4] 00059318                  dc.l Auo_string
[000beca8] 000beba1                  dc.l TYPE1
[000becac]                           dc.b $00
[000becad]                           dc.b $00
[000becae]                           dc.b $00
[000becaf]                           dc.b $00
[000becb0]                           dc.b $00
[000becb1]                           dc.b $00
[000becb2]                           dc.b $00
[000becb3]                           dc.b $00
[000becb4]                           dc.b $00
[000becb5]                           dc.b $00
[000becb6]                           dc.b $00
[000becb7]                           dc.b $00
[000becb8]                           dc.b $00
[000becb9]                           dc.b $00
[000becba]                           dc.b $00
[000becbb]                           dc.b $00
A_3DBUTTON09:
[000becbc] 0005a4e2                  dc.l A_3Dbutton
[000becc0]                           dc.w $29f1
[000becc2]                           dc.w $0178
[000becc4] 00059318                  dc.l Auo_string
[000becc8]                           dc.b $00
[000becc9]                           dc.b $00
[000becca]                           dc.b $00
[000beccb]                           dc.b $00
[000beccc]                           dc.b $00
[000beccd]                           dc.b $00
[000becce]                           dc.b $00
[000beccf]                           dc.b $00
[000becd0]                           dc.b $00
[000becd1]                           dc.b $00
[000becd2]                           dc.b $00
[000becd3]                           dc.b $00
[000becd4]                           dc.b $00
[000becd5]                           dc.b $00
[000becd6]                           dc.b $00
[000becd7]                           dc.b $00
[000becd8]                           dc.b $00
[000becd9]                           dc.b $00
[000becda]                           dc.b $00
[000becdb]                           dc.b $00
A_3DBUTTON10:
[000becdc] 0005a4e2                  dc.l A_3Dbutton
[000bece0]                           dc.w $09f1
[000bece2]                           dc.w $0178
[000bece4] 00059318                  dc.l Auo_string
[000bece8] 000beb9a                  dc.l TYPE0
[000becec]                           dc.b $00
[000beced]                           dc.b $00
[000becee]                           dc.b $00
[000becef]                           dc.b $00
[000becf0]                           dc.b $00
[000becf1]                           dc.b $00
[000becf2]                           dc.b $00
[000becf3]                           dc.b $00
[000becf4]                           dc.b $00
[000becf5]                           dc.b $00
[000becf6]                           dc.b $00
[000becf7]                           dc.b $00
[000becf8]                           dc.b $00
[000becf9]                           dc.b $00
[000becfa]                           dc.b $00
[000becfb]                           dc.b $00
A_3DBUTTON11:
[000becfc] 0005a4e2                  dc.l A_3Dbutton
[000bed00]                           dc.w $09f1
[000bed02]                           dc.w $0178
[000bed04] 00059318                  dc.l Auo_string
[000bed08] 000bebb4                  dc.l TYPE3
[000bed0c]                           dc.b $00
[000bed0d]                           dc.b $00
[000bed0e]                           dc.b $00
[000bed0f]                           dc.b $00
[000bed10]                           dc.b $00
[000bed11]                           dc.b $00
[000bed12]                           dc.b $00
[000bed13]                           dc.b $00
[000bed14]                           dc.b $00
[000bed15]                           dc.b $00
[000bed16]                           dc.b $00
[000bed17]                           dc.b $00
[000bed18]                           dc.b $00
[000bed19]                           dc.b $00
[000bed1a]                           dc.b $00
[000bed1b]                           dc.b $00
A_3DBUTTON23:
[000bed1c] 0005a4e2                  dc.l A_3Dbutton
[000bed20]                           dc.w $09f1
[000bed22]                           dc.w $0178
[000bed24] 00059318                  dc.l Auo_string
[000bed28]                           dc.b $00
[000bed29]                           dc.b $00
[000bed2a]                           dc.b $00
[000bed2b]                           dc.b $00
[000bed2c]                           dc.b $00
[000bed2d]                           dc.b $00
[000bed2e]                           dc.b $00
[000bed2f]                           dc.b $00
[000bed30]                           dc.b $00
[000bed31]                           dc.b $00
[000bed32]                           dc.b $00
[000bed33]                           dc.b $00
[000bed34]                           dc.b $00
[000bed35]                           dc.b $00
[000bed36]                           dc.b $00
[000bed37]                           dc.b $00
[000bed38]                           dc.b $00
[000bed39]                           dc.b $00
[000bed3a]                           dc.b $00
[000bed3b]                           dc.b $00
A_ARROWS02:
[000bed3c] 0005b212                  dc.l A_arrows
[000bed40]                           dc.w $1301
[000bed42]                           dc.b $00
[000bed43]                           dc.b $01
[000bed44]                           dc.b $00
[000bed45]                           dc.b $00
[000bed46]                           dc.b $00
[000bed47]                           dc.b $00
[000bed48]                           dc.b $00
[000bed49]                           dc.b $00
[000bed4a]                           dc.b $00
[000bed4b]                           dc.b $00
[000bed4c]                           dc.b $00
[000bed4d]                           dc.b $00
[000bed4e]                           dc.b $00
[000bed4f]                           dc.b $00
[000bed50]                           dc.b $00
[000bed51]                           dc.b $00
[000bed52]                           dc.b $00
[000bed53]                           dc.b $00
[000bed54]                           dc.b $00
[000bed55]                           dc.b $00
[000bed56]                           dc.b $00
[000bed57]                           dc.b $00
[000bed58]                           dc.b $00
[000bed59]                           dc.b $00
[000bed5a]                           dc.b $00
[000bed5b]                           dc.b $00
A_BOXED01:
[000bed5c] 0005e9d2                  dc.l A_boxed
[000bed60]                           dc.w $9038
[000bed62]                           dc.w $5012
[000bed64] 0005e010                  dc.l Auo_boxed
[000bed68]                           dc.b $00
[000bed69]                           dc.b $00
[000bed6a]                           dc.b $00
[000bed6b]                           dc.b $00
[000bed6c]                           dc.b $00
[000bed6d]                           dc.b $00
[000bed6e]                           dc.b $00
[000bed6f]                           dc.b $00
[000bed70]                           dc.b $00
[000bed71]                           dc.b $00
[000bed72]                           dc.b $00
[000bed73]                           dc.b $00
[000bed74]                           dc.b $00
[000bed75]                           dc.b $00
[000bed76]                           dc.b $00
[000bed77]                           dc.b $00
[000bed78]                           dc.b $00
[000bed79]                           dc.b $00
[000bed7a]                           dc.b $00
[000bed7b]                           dc.b $00
A_BOXED02:
[000bed7c] 0005e9d2                  dc.l A_boxed
[000bed80]                           dc.w $9000
[000bed82]                           dc.w $5012
[000bed84] 0005e010                  dc.l Auo_boxed
[000bed88]                           dc.b $00
[000bed89]                           dc.b $00
[000bed8a]                           dc.b $00
[000bed8b]                           dc.b $00
[000bed8c]                           dc.b $00
[000bed8d]                           dc.b $00
[000bed8e]                           dc.b $00
[000bed8f]                           dc.b $00
[000bed90]                           dc.b $00
[000bed91]                           dc.b $00
[000bed92]                           dc.b $00
[000bed93]                           dc.b $00
[000bed94]                           dc.b $00
[000bed95]                           dc.b $00
[000bed96]                           dc.b $00
[000bed97]                           dc.b $00
[000bed98]                           dc.b $00
[000bed99]                           dc.b $00
[000bed9a]                           dc.b $00
[000bed9b]                           dc.b $00
A_INNERFRAME01:
[000bed9c] 00059f9c                  dc.l A_innerframe
[000beda0]                           dc.w $1000
[000beda2]                           dc.w $8f19
[000beda4] 00059318                  dc.l Auo_string
[000beda8] 000beb61                  dc.l TEXT_08
[000bedac]                           dc.b $00
[000bedad]                           dc.b $00
[000bedae]                           dc.b $00
[000bedaf]                           dc.b $00
[000bedb0]                           dc.b $00
[000bedb1]                           dc.b $00
[000bedb2]                           dc.b $00
[000bedb3]                           dc.b $00
[000bedb4]                           dc.b $00
[000bedb5]                           dc.b $00
[000bedb6]                           dc.b $00
[000bedb7]                           dc.b $00
[000bedb8]                           dc.b $00
[000bedb9]                           dc.b $00
[000bedba]                           dc.b $00
[000bedbb]                           dc.b $00
A_INNERFRAME02:
[000bedbc] 00059f9c                  dc.l A_innerframe
[000bedc0]                           dc.w $1000
[000bedc2]                           dc.w $8f19
[000bedc4] 00059318                  dc.l Auo_string
[000bedc8] 000beb8d                  dc.l TEXT_17
[000bedcc]                           dc.b $00
[000bedcd]                           dc.b $00
[000bedce]                           dc.b $00
[000bedcf]                           dc.b $00
[000bedd0]                           dc.b $00
[000bedd1]                           dc.b $00
[000bedd2]                           dc.b $00
[000bedd3]                           dc.b $00
[000bedd4]                           dc.b $00
[000bedd5]                           dc.b $00
[000bedd6]                           dc.b $00
[000bedd7]                           dc.b $00
[000bedd8]                           dc.b $00
[000bedd9]                           dc.b $00
[000bedda]                           dc.b $00
[000beddb]                           dc.b $00
A_INNERFRAME04:
[000beddc] 00059f9c                  dc.l A_innerframe
[000bede0]                           dc.w $1000
[000bede2]                           dc.w $8f19
[000bede4] 00059318                  dc.l Auo_string
[000bede8] 000beb77                  dc.l TEXT_13
[000bedec]                           dc.b $00
[000beded]                           dc.b $00
[000bedee]                           dc.b $00
[000bedef]                           dc.b $00
[000bedf0]                           dc.b $00
[000bedf1]                           dc.b $00
[000bedf2]                           dc.b $00
[000bedf3]                           dc.b $00
[000bedf4]                           dc.b $00
[000bedf5]                           dc.b $00
[000bedf6]                           dc.b $00
[000bedf7]                           dc.b $00
[000bedf8]                           dc.b $00
[000bedf9]                           dc.b $00
[000bedfa]                           dc.b $00
[000bedfb]                           dc.b $00
POP_TYPESEL:
[000bedfc]                           dc.w $ffff
[000bedfe]                           dc.b $00
[000bedff]                           dc.b $01
[000bee00]                           dc.b $00
[000bee01]                           dc.b $04
[000bee02]                           dc.b $00
[000bee03]                           dc.b $14
[000bee04]                           dc.b $00
[000bee05]                           dc.b $00
[000bee06]                           dc.b $00
[000bee07]                           dc.b $20
[000bee08]                           dc.b $00
[000bee09]                           dc.b $ff
[000bee0a]                           dc.w $1100
[000bee0c]                           dc.b $00
[000bee0d]                           dc.b $00
[000bee0e]                           dc.b $00
[000bee0f]                           dc.b $00
[000bee10]                           dc.b $00
[000bee11]                           dc.b $0d
[000bee12]                           dc.b $00
[000bee13]                           dc.b $04
_01_POP_TYPESEL:
[000bee14]                           dc.b $00
[000bee15]                           dc.b $02
[000bee16]                           dc.w $ffff
[000bee18]                           dc.w $ffff
[000bee1a]                           dc.b $00
[000bee1b]                           dc.b $18
[000bee1c]                           dc.b $00
[000bee1d]                           dc.b $41
[000bee1e]                           dc.b $00
[000bee1f]                           dc.b $00
[000bee20] 000becdc                  dc.l A_3DBUTTON10
[000bee24]                           dc.b $00
[000bee25]                           dc.b $00
[000bee26]                           dc.b $00
[000bee27]                           dc.b $00
[000bee28]                           dc.b $00
[000bee29]                           dc.b $0d
[000bee2a]                           dc.b $00
[000bee2b]                           dc.b $01
_02_POP_TYPESEL:
[000bee2c]                           dc.b $00
[000bee2d]                           dc.b $03
[000bee2e]                           dc.w $ffff
[000bee30]                           dc.w $ffff
[000bee32]                           dc.b $00
[000bee33]                           dc.b $18
[000bee34]                           dc.b $00
[000bee35]                           dc.b $41
[000bee36]                           dc.b $00
[000bee37]                           dc.b $00
[000bee38] 000bec9c                  dc.l A_3DBUTTON07
[000bee3c]                           dc.b $00
[000bee3d]                           dc.b $00
[000bee3e]                           dc.b $00
[000bee3f]                           dc.b $01
[000bee40]                           dc.b $00
[000bee41]                           dc.b $0d
[000bee42]                           dc.b $00
[000bee43]                           dc.b $01
_03_POP_TYPESEL:
[000bee44]                           dc.b $00
[000bee45]                           dc.b $04
[000bee46]                           dc.w $ffff
[000bee48]                           dc.w $ffff
[000bee4a]                           dc.b $00
[000bee4b]                           dc.b $18
[000bee4c]                           dc.b $00
[000bee4d]                           dc.b $41
[000bee4e]                           dc.b $00
[000bee4f]                           dc.b $00
[000bee50] 000bec5c                  dc.l A_3DBUTTON04
[000bee54]                           dc.b $00
[000bee55]                           dc.b $00
[000bee56]                           dc.b $00
[000bee57]                           dc.b $02
[000bee58]                           dc.b $00
[000bee59]                           dc.b $0d
[000bee5a]                           dc.b $00
[000bee5b]                           dc.b $01
_04_POP_TYPESEL:
[000bee5c]                           dc.b $00
[000bee5d]                           dc.b $00
[000bee5e]                           dc.w $ffff
[000bee60]                           dc.w $ffff
[000bee62]                           dc.b $00
[000bee63]                           dc.b $18
[000bee64]                           dc.b $00
[000bee65]                           dc.b $61
[000bee66]                           dc.b $00
[000bee67]                           dc.b $00
[000bee68] 000becfc                  dc.l A_3DBUTTON11
[000bee6c]                           dc.b $00
[000bee6d]                           dc.b $00
[000bee6e]                           dc.b $00
[000bee6f]                           dc.b $03
[000bee70]                           dc.b $00
[000bee71]                           dc.b $0d
[000bee72]                           dc.b $00
[000bee73]                           dc.b $01
ED_TEDI:
[000bee74]                           dc.w $ffff
[000bee76]                           dc.b $00
[000bee77]                           dc.b $01
[000bee78]                           dc.b $00
[000bee79]                           dc.b $40
[000bee7a]                           dc.b $00
[000bee7b]                           dc.b $18
[000bee7c]                           dc.b $00
[000bee7d]                           dc.b $40
[000bee7e]                           dc.b $00
[000bee7f]                           dc.b $10
[000bee80] 000bec7c                  dc.l A_3DBUTTON05
[000bee84]                           dc.b $00
[000bee85]                           dc.b $00
[000bee86]                           dc.b $00
[000bee87]                           dc.b $00
[000bee88]                           dc.b $00
[000bee89]                           dc.b $43
[000bee8a]                           dc.b $00
[000bee8b]                           dc.b $12
_01_ED_TEDI:
[000bee8c]                           dc.b $00
[000bee8d]                           dc.b $03
[000bee8e]                           dc.b $00
[000bee8f]                           dc.b $02
[000bee90]                           dc.b $00
[000bee91]                           dc.b $02
[000bee92]                           dc.b $00
[000bee93]                           dc.b $18
[000bee94]                           dc.b $00
[000bee95]                           dc.b $00
[000bee96]                           dc.b $00
[000bee97]                           dc.b $10
[000bee98] 000becbc                  dc.l A_3DBUTTON09
[000bee9c]                           dc.b $00
[000bee9d]                           dc.b $00
[000bee9e]                           dc.b $00
[000bee9f]                           dc.b $00
[000beea0]                           dc.b $00
[000beea1]                           dc.b $0e
[000beea2]                           dc.b $00
[000beea3]                           dc.b $04
_02_ED_TEDI:
[000beea4]                           dc.b $00
[000beea5]                           dc.b $01
[000beea6]                           dc.w $ffff
[000beea8]                           dc.w $ffff
[000beeaa]                           dc.b $00
[000beeab]                           dc.b $1e
[000beeac]                           dc.b $00
[000beead]                           dc.b $40
[000beeae]                           dc.b $00
[000beeaf]                           dc.b $00
[000beeb0] 000bebe0                  dc.l TEDINFO_01
[000beeb4]                           dc.b $00
[000beeb5]                           dc.b $01
[000beeb6]                           dc.b $00
[000beeb7]                           dc.b $01
[000beeb8]                           dc.b $00
[000beeb9]                           dc.b $0c
[000beeba]                           dc.b $00
[000beebb]                           dc.b $02
_03_ED_TEDI:
[000beebc]                           dc.b $00
[000beebd]                           dc.b $05
[000beebe]                           dc.b $00
[000beebf]                           dc.b $04
[000beec0]                           dc.b $00
[000beec1]                           dc.b $04
[000beec2]                           dc.b $00
[000beec3]                           dc.b $1c
[000beec4]                           dc.b $00
[000beec5]                           dc.b $40
[000beec6]                           dc.b $00
[000beec7]                           dc.b $00
[000beec8] 000beb4d                  dc.l TEXT_05
[000beecc]                           dc.b $00
[000beecd]                           dc.b $10
[000beece]                           dc.b $00
[000beecf]                           dc.b $01
[000beed0]                           dc.b $00
[000beed1]                           dc.b $05
[000beed2]                           dc.b $00
[000beed3]                           dc.b $01
_04_ED_TEDI:
[000beed4]                           dc.b $00
[000beed5]                           dc.b $03
[000beed6]                           dc.w $ffff
[000beed8]                           dc.w $ffff
[000beeda]                           dc.b $00
[000beedb]                           dc.b $18
[000beedc]                           dc.b $00
[000beedd]                           dc.b $40
[000beede]                           dc.b $00
[000beedf]                           dc.b $00
[000beee0] 000bed3c                  dc.l A_ARROWS02
[000beee4]                           dc.b $00
[000beee5]                           dc.b $00
[000beee6]                           dc.b $00
[000beee7]                           dc.b $00
[000beee8]                           dc.b $00
[000beee9]                           dc.b $01
[000beeea]                           dc.b $00
[000beeeb]                           dc.b $01
_05_ED_TEDI:
[000beeec]                           dc.b $00
[000beeed]                           dc.b $08
[000beeee]                           dc.b $00
[000beeef]                           dc.b $07
[000beef0]                           dc.b $00
[000beef1]                           dc.b $07
[000beef2]                           dc.b $00
[000beef3]                           dc.b $14
[000beef4]                           dc.b $00
[000beef5]                           dc.b $40
[000beef6]                           dc.b $00
[000beef7]                           dc.b $20
[000beef8]                           dc.b $00
[000beef9]                           dc.b $ff
[000beefa]                           dc.w $1101
[000beefc]                           dc.b $00
[000beefd]                           dc.b $15
[000beefe]                           dc.b $00
[000beeff]                           dc.b $01
[000bef00]                           dc.b $00
[000bef01]                           dc.b $0d
[000bef02]                           dc.b $00
[000bef03]                           dc.b $01
_05aED_TEDI:
[000bef04] 00030770                  dc.l edte_type
[000bef08]                           dc.b $00
[000bef09]                           dc.b $00
[000bef0a]                           dc.b $00
[000bef0b]                           dc.b $00
[000bef0c]                           dc.w $8000
[000bef0e]                           dc.w $8854
[000bef10]                           dc.b $00
[000bef11]                           dc.b $00
[000bef12]                           dc.b $00
[000bef13]                           dc.b $00
[000bef14]                           dc.b $00
[000bef15]                           dc.b $00
[000bef16]                           dc.b $00
[000bef17]                           dc.b $00
[000bef18]                           dc.b $00
[000bef19]                           dc.b $00
[000bef1a]                           dc.b $00
[000bef1b]                           dc.b $00
_07_ED_TEDI:
[000bef1c]                           dc.b $00
[000bef1d]                           dc.b $05
[000bef1e]                           dc.w $ffff
[000bef20]                           dc.w $ffff
[000bef22]                           dc.b $00
[000bef23]                           dc.b $18
[000bef24]                           dc.b $00
[000bef25]                           dc.b $00
[000bef26]                           dc.b $00
[000bef27]                           dc.b $00
[000bef28] 000bed1c                  dc.l A_3DBUTTON23
[000bef2c]                           dc.b $00
[000bef2d]                           dc.b $00
[000bef2e]                           dc.b $00
[000bef2f]                           dc.b $00
[000bef30]                           dc.b $00
[000bef31]                           dc.b $0d
[000bef32]                           dc.b $00
[000bef33]                           dc.b $01
_08_ED_TEDI:
[000bef34]                           dc.b $00
[000bef35]                           dc.b $0a
[000bef36]                           dc.w $ffff
[000bef38]                           dc.w $ffff
[000bef3a]                           dc.b $00
[000bef3b]                           dc.b $18
[000bef3c]                           dc.w $4007
[000bef3e]                           dc.b $00
[000bef3f]                           dc.b $10
[000bef40] 000bec1c                  dc.l A_3DBUTTON02
[000bef44]                           dc.b $00
[000bef45]                           dc.b $27
[000bef46]                           dc.b $00
[000bef47]                           dc.b $01
[000bef48]                           dc.b $00
[000bef49]                           dc.b $0c
[000bef4a]                           dc.b $00
[000bef4b]                           dc.b $02
_08aED_TEDI:
[000bef4c] 0003090c                  dc.l edte_ok
[000bef50]                           dc.b $00
[000bef51]                           dc.b $00
[000bef52]                           dc.b $00
[000bef53]                           dc.b $00
[000bef54]                           dc.w $8000
[000bef56]                           dc.w $884f
[000bef58]                           dc.b $00
[000bef59]                           dc.b $00
[000bef5a]                           dc.b $00
[000bef5b]                           dc.b $00
[000bef5c]                           dc.b $00
[000bef5d]                           dc.b $00
[000bef5e]                           dc.b $00
[000bef5f]                           dc.b $00
[000bef60]                           dc.b $00
[000bef61]                           dc.b $00
[000bef62]                           dc.b $00
[000bef63]                           dc.b $00
_10_ED_TEDI:
[000bef64]                           dc.b $00
[000bef65]                           dc.b $0c
[000bef66]                           dc.w $ffff
[000bef68]                           dc.w $ffff
[000bef6a]                           dc.b $00
[000bef6b]                           dc.b $18
[000bef6c]                           dc.w $4005
[000bef6e]                           dc.b $00
[000bef6f]                           dc.b $10
[000bef70] 000bec3c                  dc.l A_3DBUTTON03
[000bef74]                           dc.b $00
[000bef75]                           dc.b $35
[000bef76]                           dc.b $00
[000bef77]                           dc.b $01
[000bef78]                           dc.b $00
[000bef79]                           dc.b $0c
[000bef7a]                           dc.b $00
[000bef7b]                           dc.b $02
_10aED_TEDI:
[000bef7c] 0002d91e                  dc.l ed_abort
[000bef80]                           dc.b $00
[000bef81]                           dc.b $00
[000bef82]                           dc.b $00
[000bef83]                           dc.b $00
[000bef84]                           dc.w $8000
[000bef86]                           dc.w $8841
[000bef88]                           dc.b $00
[000bef89]                           dc.b $00
[000bef8a]                           dc.b $00
[000bef8b]                           dc.b $00
[000bef8c]                           dc.b $00
[000bef8d]                           dc.b $00
[000bef8e]                           dc.b $00
[000bef8f]                           dc.b $00
[000bef90]                           dc.b $00
[000bef91]                           dc.b $00
[000bef92]                           dc.b $00
[000bef93]                           dc.b $00
_12_ED_TEDI:
[000bef94]                           dc.b $00
[000bef95]                           dc.b $2a
[000bef96]                           dc.b $00
[000bef97]                           dc.b $0d
[000bef98]                           dc.b $00
[000bef99]                           dc.b $29
[000bef9a]                           dc.b $00
[000bef9b]                           dc.b $18
[000bef9c]                           dc.b $00
[000bef9d]                           dc.b $40
[000bef9e]                           dc.b $00
[000bef9f]                           dc.b $00
[000befa0] 000bed9c                  dc.l A_INNERFRAME01
[000befa4]                           dc.b $00
[000befa5]                           dc.b $01
[000befa6]                           dc.b $00
[000befa7]                           dc.b $04
[000befa8]                           dc.b $00
[000befa9]                           dc.b $41
[000befaa]                           dc.b $00
[000befab]                           dc.b $09
_13_ED_TEDI:
[000befac]                           dc.b $00
[000befad]                           dc.b $0f
[000befae]                           dc.b $00
[000befaf]                           dc.b $0e
[000befb0]                           dc.b $00
[000befb1]                           dc.b $0e
[000befb2]                           dc.b $00
[000befb3]                           dc.b $1c
[000befb4]                           dc.b $00
[000befb5]                           dc.b $40
[000befb6]                           dc.b $00
[000befb7]                           dc.b $00
[000befb8] 000beb86                  dc.l TEXT_15
[000befbc]                           dc.b $00
[000befbd]                           dc.b $01
[000befbe]                           dc.b $00
[000befbf]                           dc.b $01
[000befc0]                           dc.b $00
[000befc1]                           dc.b $06
[000befc2]                           dc.b $00
[000befc3]                           dc.b $01
_14_ED_TEDI:
[000befc4]                           dc.b $00
[000befc5]                           dc.b $0d
[000befc6]                           dc.w $ffff
[000befc8]                           dc.w $ffff
[000befca]                           dc.b $00
[000befcb]                           dc.b $18
[000befcc]                           dc.b $00
[000befcd]                           dc.b $40
[000befce]                           dc.b $00
[000befcf]                           dc.b $00
[000befd0] 000bed3c                  dc.l A_ARROWS02
[000befd4]                           dc.b $00
[000befd5]                           dc.b $00
[000befd6]                           dc.b $00
[000befd7]                           dc.b $00
[000befd8]                           dc.b $00
[000befd9]                           dc.b $01
[000befda]                           dc.b $00
[000befdb]                           dc.b $01
_15_ED_TEDI:
[000befdc]                           dc.b $00
[000befdd]                           dc.b $13
[000befde]                           dc.b $00
[000befdf]                           dc.b $11
[000befe0]                           dc.b $00
[000befe1]                           dc.b $12
[000befe2]                           dc.b $00
[000befe3]                           dc.b $14
[000befe4]                           dc.b $00
[000befe5]                           dc.b $40
[000befe6]                           dc.b $00
[000befe7]                           dc.b $20
[000befe8]                           dc.b $00
[000befe9]                           dc.b $ff
[000befea]                           dc.w $1101
[000befec]                           dc.b $00
[000befed]                           dc.b $08
[000befee]                           dc.b $00
[000befef]                           dc.b $01
[000beff0]                           dc.b $00
[000beff1]                           dc.b $12
[000beff2]                           dc.b $00
[000beff3]                           dc.b $01
_15aED_TEDI:
[000beff4] 000306d8                  dc.l edte_textcol
[000beff8]                           dc.b $00
[000beff9]                           dc.b $00
[000beffa]                           dc.b $00
[000beffb]                           dc.b $00
[000beffc]                           dc.w $8000
[000beffe]                           dc.w $8846
[000bf000]                           dc.b $00
[000bf001]                           dc.b $00
[000bf002]                           dc.b $00
[000bf003]                           dc.b $00
[000bf004]                           dc.b $00
[000bf005]                           dc.b $00
[000bf006]                           dc.b $00
[000bf007]                           dc.b $00
[000bf008]                           dc.b $00
[000bf009]                           dc.b $00
[000bf00a]                           dc.b $00
[000bf00b]                           dc.b $00
_17_ED_TEDI:
[000bf00c]                           dc.b $00
[000bf00d]                           dc.b $12
[000bf00e]                           dc.w $ffff
[000bf010]                           dc.w $ffff
[000bf012]                           dc.b $00
[000bf013]                           dc.b $14
[000bf014]                           dc.b $00
[000bf015]                           dc.b $00
[000bf016]                           dc.b $00
[000bf017]                           dc.b $00
[000bf018]                           dc.b $00
[000bf019]                           dc.b $01
[000bf01a]                           dc.w $1171
[000bf01c]                           dc.b $00
[000bf01d]                           dc.b $10
[000bf01e]                           dc.b $00
[000bf01f]                           dc.b $00
[000bf020]                           dc.b $00
[000bf021]                           dc.b $02
[000bf022]                           dc.b $00
[000bf023]                           dc.b $01
_18_ED_TEDI:
[000bf024]                           dc.b $00
[000bf025]                           dc.b $0f
[000bf026]                           dc.w $ffff
[000bf028]                           dc.w $ffff
[000bf02a]                           dc.b $00
[000bf02b]                           dc.b $18
[000bf02c]                           dc.b $00
[000bf02d]                           dc.b $00
[000bf02e]                           dc.b $00
[000bf02f]                           dc.b $00
[000bf030] 000bed1c                  dc.l A_3DBUTTON23
[000bf034]                           dc.b $00
[000bf035]                           dc.b $00
[000bf036]                           dc.b $00
[000bf037]                           dc.b $00
[000bf038]                           dc.b $00
[000bf039]                           dc.b $10
[000bf03a]                           dc.b $00
[000bf03b]                           dc.b $01
_19_ED_TEDI:
[000bf03c]                           dc.b $00
[000bf03d]                           dc.b $15
[000bf03e]                           dc.b $00
[000bf03f]                           dc.b $14
[000bf040]                           dc.b $00
[000bf041]                           dc.b $14
[000bf042]                           dc.b $00
[000bf043]                           dc.b $1c
[000bf044]                           dc.b $00
[000bf045]                           dc.b $40
[000bf046]                           dc.b $00
[000bf047]                           dc.b $00
[000bf048] 000beb2f                  dc.l TEXT_01
[000bf04c]                           dc.b $00
[000bf04d]                           dc.b $20
[000bf04e]                           dc.b $00
[000bf04f]                           dc.b $01
[000bf050]                           dc.b $00
[000bf051]                           dc.b $09
[000bf052]                           dc.b $00
[000bf053]                           dc.b $01
_20_ED_TEDI:
[000bf054]                           dc.b $00
[000bf055]                           dc.b $13
[000bf056]                           dc.w $ffff
[000bf058]                           dc.w $ffff
[000bf05a]                           dc.b $00
[000bf05b]                           dc.b $18
[000bf05c]                           dc.b $00
[000bf05d]                           dc.b $40
[000bf05e]                           dc.b $00
[000bf05f]                           dc.b $00
[000bf060] 000bed3c                  dc.l A_ARROWS02
[000bf064]                           dc.b $00
[000bf065]                           dc.b $00
[000bf066]                           dc.b $00
[000bf067]                           dc.b $00
[000bf068]                           dc.b $00
[000bf069]                           dc.b $01
[000bf06a]                           dc.b $00
[000bf06b]                           dc.b $01
_21_ED_TEDI:
[000bf06c]                           dc.b $00
[000bf06d]                           dc.b $18
[000bf06e]                           dc.b $00
[000bf06f]                           dc.b $17
[000bf070]                           dc.b $00
[000bf071]                           dc.b $17
[000bf072]                           dc.b $00
[000bf073]                           dc.b $14
[000bf074]                           dc.b $00
[000bf075]                           dc.b $40
[000bf076]                           dc.b $00
[000bf077]                           dc.b $20
[000bf078]                           dc.b $00
[000bf079]                           dc.b $ff
[000bf07a]                           dc.w $1101
[000bf07c]                           dc.b $00
[000bf07d]                           dc.b $2a
[000bf07e]                           dc.b $00
[000bf07f]                           dc.b $01
[000bf080]                           dc.b $00
[000bf081]                           dc.b $0a
[000bf082]                           dc.b $00
[000bf083]                           dc.b $01
_21aED_TEDI:
[000bf084] 00030442                  dc.l edte_pos
[000bf088]                           dc.b $00
[000bf089]                           dc.b $00
[000bf08a]                           dc.b $00
[000bf08b]                           dc.b $00
[000bf08c]                           dc.w $8000
[000bf08e]                           dc.w $8850
[000bf090]                           dc.b $00
[000bf091]                           dc.b $00
[000bf092]                           dc.b $00
[000bf093]                           dc.b $00
[000bf094]                           dc.b $00
[000bf095]                           dc.b $00
[000bf096]                           dc.b $00
[000bf097]                           dc.b $00
[000bf098]                           dc.b $00
[000bf099]                           dc.b $00
[000bf09a]                           dc.b $00
[000bf09b]                           dc.b $00
_23_ED_TEDI:
[000bf09c]                           dc.b $00
[000bf09d]                           dc.b $15
[000bf09e]                           dc.w $ffff
[000bf0a0]                           dc.w $ffff
[000bf0a2]                           dc.b $00
[000bf0a3]                           dc.b $18
[000bf0a4]                           dc.b $00
[000bf0a5]                           dc.b $00
[000bf0a6]                           dc.b $00
[000bf0a7]                           dc.b $00
[000bf0a8] 000bed1c                  dc.l A_3DBUTTON23
[000bf0ac]                           dc.b $00
[000bf0ad]                           dc.b $00
[000bf0ae]                           dc.b $00
[000bf0af]                           dc.b $00
[000bf0b0]                           dc.b $00
[000bf0b1]                           dc.b $0a
[000bf0b2]                           dc.b $00
[000bf0b3]                           dc.b $01
_24_ED_TEDI:
[000bf0b4]                           dc.b $00
[000bf0b5]                           dc.b $1a
[000bf0b6]                           dc.b $00
[000bf0b7]                           dc.b $19
[000bf0b8]                           dc.b $00
[000bf0b9]                           dc.b $19
[000bf0ba]                           dc.b $00
[000bf0bb]                           dc.b $1c
[000bf0bc]                           dc.b $00
[000bf0bd]                           dc.b $40
[000bf0be]                           dc.b $00
[000bf0bf]                           dc.b $00
[000bf0c0] 000beb7f                  dc.l TEXT_14
[000bf0c4]                           dc.b $00
[000bf0c5]                           dc.b $01
[000bf0c6]                           dc.b $00
[000bf0c7]                           dc.b $03
[000bf0c8]                           dc.b $00
[000bf0c9]                           dc.b $06
[000bf0ca]                           dc.b $00
[000bf0cb]                           dc.b $01
_25_ED_TEDI:
[000bf0cc]                           dc.b $00
[000bf0cd]                           dc.b $18
[000bf0ce]                           dc.w $ffff
[000bf0d0]                           dc.w $ffff
[000bf0d2]                           dc.b $00
[000bf0d3]                           dc.b $18
[000bf0d4]                           dc.b $00
[000bf0d5]                           dc.b $40
[000bf0d6]                           dc.b $00
[000bf0d7]                           dc.b $00
[000bf0d8] 000bed3c                  dc.l A_ARROWS02
[000bf0dc]                           dc.b $00
[000bf0dd]                           dc.b $00
[000bf0de]                           dc.b $00
[000bf0df]                           dc.b $00
[000bf0e0]                           dc.b $00
[000bf0e1]                           dc.b $01
[000bf0e2]                           dc.b $00
[000bf0e3]                           dc.b $01
_26_ED_TEDI:
[000bf0e4]                           dc.b $00
[000bf0e5]                           dc.b $1d
[000bf0e6]                           dc.b $00
[000bf0e7]                           dc.b $1c
[000bf0e8]                           dc.b $00
[000bf0e9]                           dc.b $1c
[000bf0ea]                           dc.b $00
[000bf0eb]                           dc.b $14
[000bf0ec]                           dc.b $00
[000bf0ed]                           dc.b $40
[000bf0ee]                           dc.b $00
[000bf0ef]                           dc.b $20
[000bf0f0]                           dc.b $00
[000bf0f1]                           dc.b $ff
[000bf0f2]                           dc.w $1101
[000bf0f4]                           dc.b $00
[000bf0f5]                           dc.b $08
[000bf0f6]                           dc.b $00
[000bf0f7]                           dc.b $03
[000bf0f8]                           dc.b $00
[000bf0f9]                           dc.b $08
[000bf0fa]                           dc.b $00
[000bf0fb]                           dc.b $01
_26aED_TEDI:
[000bf0fc] 000305c2                  dc.l edte_size
[000bf100]                           dc.b $00
[000bf101]                           dc.b $00
[000bf102]                           dc.b $00
[000bf103]                           dc.b $00
[000bf104]                           dc.w $8000
[000bf106]                           dc.w $8847
[000bf108]                           dc.b $00
[000bf109]                           dc.b $00
[000bf10a]                           dc.b $00
[000bf10b]                           dc.b $00
[000bf10c]                           dc.b $00
[000bf10d]                           dc.b $00
[000bf10e]                           dc.b $00
[000bf10f]                           dc.b $00
[000bf110]                           dc.b $00
[000bf111]                           dc.b $00
[000bf112]                           dc.b $00
[000bf113]                           dc.b $00
_28_ED_TEDI:
[000bf114]                           dc.b $00
[000bf115]                           dc.b $1a
[000bf116]                           dc.w $ffff
[000bf118]                           dc.w $ffff
[000bf11a]                           dc.b $00
[000bf11b]                           dc.b $18
[000bf11c]                           dc.b $00
[000bf11d]                           dc.b $00
[000bf11e]                           dc.b $00
[000bf11f]                           dc.b $00
[000bf120] 000becbc                  dc.l A_3DBUTTON09
[000bf124]                           dc.b $00
[000bf125]                           dc.b $00
[000bf126]                           dc.b $00
[000bf127]                           dc.b $00
[000bf128]                           dc.b $00
[000bf129]                           dc.b $08
[000bf12a]                           dc.b $00
[000bf12b]                           dc.b $01
_29_ED_TEDI:
[000bf12c]                           dc.b $00
[000bf12d]                           dc.b $1e
[000bf12e]                           dc.w $ffff
[000bf130]                           dc.w $ffff
[000bf132]                           dc.b $00
[000bf133]                           dc.b $1c
[000bf134]                           dc.b $00
[000bf135]                           dc.b $40
[000bf136]                           dc.b $00
[000bf137]                           dc.b $00
[000bf138] 000beb52                  dc.l TEXT_06
[000bf13c]                           dc.b $00
[000bf13d]                           dc.b $23
[000bf13e]                           dc.b $00
[000bf13f]                           dc.b $03
[000bf140]                           dc.b $00
[000bf141]                           dc.b $06
[000bf142]                           dc.b $00
[000bf143]                           dc.b $01
_30_ED_TEDI:
[000bf144]                           dc.b $00
[000bf145]                           dc.b $20
[000bf146]                           dc.w $ffff
[000bf148]                           dc.w $ffff
[000bf14a]                           dc.b $00
[000bf14b]                           dc.b $1b
[000bf14c]                           dc.b $00
[000bf14d]                           dc.b $05
[000bf14e]                           dc.b $00
[000bf14f]                           dc.b $00
[000bf150]                           dc.w $43ff
[000bf152]                           dc.w $1121
[000bf154]                           dc.b $00
[000bf155]                           dc.b $2a
[000bf156]                           dc.b $00
[000bf157]                           dc.b $03
[000bf158]                           dc.b $00
[000bf159]                           dc.b $03
[000bf15a]                           dc.b $00
[000bf15b]                           dc.b $01
_30aED_TEDI:
[000bf15c] 0003073c                  dc.l edte_trans
[000bf160]                           dc.b $00
[000bf161]                           dc.b $00
[000bf162]                           dc.b $00
[000bf163]                           dc.b $00
[000bf164]                           dc.w $8000
[000bf166]                           dc.b $00
[000bf167]                           dc.b $00
[000bf168]                           dc.b $00
[000bf169]                           dc.b $00
[000bf16a]                           dc.b $00
[000bf16b]                           dc.b $00
[000bf16c]                           dc.b $00
[000bf16d]                           dc.b $00
[000bf16e]                           dc.b $00
[000bf16f]                           dc.b $00
[000bf170]                           dc.b $00
[000bf171]                           dc.b $00
[000bf172]                           dc.b $00
[000bf173]                           dc.b $00
_32_ED_TEDI:
[000bf174]                           dc.b $00
[000bf175]                           dc.b $22
[000bf176]                           dc.w $ffff
[000bf178]                           dc.w $ffff
[000bf17a]                           dc.b $00
[000bf17b]                           dc.b $1b
[000bf17c]                           dc.b $00
[000bf17d]                           dc.b $05
[000bf17e]                           dc.b $00
[000bf17f]                           dc.b $00
[000bf180]                           dc.w $43ff
[000bf182]                           dc.w $11a1
[000bf184]                           dc.b $00
[000bf185]                           dc.b $2e
[000bf186]                           dc.b $00
[000bf187]                           dc.b $03
[000bf188]                           dc.b $00
[000bf189]                           dc.b $03
[000bf18a]                           dc.b $00
[000bf18b]                           dc.b $01
_32aED_TEDI:
[000bf18c] 0003058e                  dc.l edte_replace
[000bf190]                           dc.b $00
[000bf191]                           dc.b $00
[000bf192]                           dc.b $00
[000bf193]                           dc.b $00
[000bf194]                           dc.w $8000
[000bf196]                           dc.b $00
[000bf197]                           dc.b $00
[000bf198]                           dc.b $00
[000bf199]                           dc.b $00
[000bf19a]                           dc.b $00
[000bf19b]                           dc.b $00
[000bf19c]                           dc.b $00
[000bf19d]                           dc.b $00
[000bf19e]                           dc.b $00
[000bf19f]                           dc.b $00
[000bf1a0]                           dc.b $00
[000bf1a1]                           dc.b $00
[000bf1a2]                           dc.b $00
[000bf1a3]                           dc.b $00
_34_ED_TEDI:
[000bf1a4]                           dc.b $00
[000bf1a5]                           dc.b $23
[000bf1a6]                           dc.w $ffff
[000bf1a8]                           dc.w $ffff
[000bf1aa]                           dc.b $00
[000bf1ab]                           dc.b $1c
[000bf1ac]                           dc.b $00
[000bf1ad]                           dc.b $00
[000bf1ae]                           dc.b $00
[000bf1af]                           dc.b $00
[000bf1b0] 000beb61                  dc.l TEXT_08
[000bf1b4]                           dc.b $00
[000bf1b5]                           dc.b $01
[000bf1b6]                           dc.b $00
[000bf1b7]                           dc.b $05
[000bf1b8]                           dc.b $00
[000bf1b9]                           dc.b $05
[000bf1ba]                           dc.b $00
[000bf1bb]                           dc.b $01
_35_ED_TEDI:
[000bf1bc]                           dc.b $00
[000bf1bd]                           dc.b $28
[000bf1be]                           dc.b $00
[000bf1bf]                           dc.b $24
[000bf1c0]                           dc.b $00
[000bf1c1]                           dc.b $24
[000bf1c2]                           dc.b $00
[000bf1c3]                           dc.b $18
[000bf1c4]                           dc.b $00
[000bf1c5]                           dc.b $40
[000bf1c6]                           dc.b $00
[000bf1c7]                           dc.b $00
[000bf1c8] 000bebfc                  dc.l A_3DBUTTON01
[000bf1cc]                           dc.b $00
[000bf1cd]                           dc.b $07
[000bf1ce]                           dc.b $00
[000bf1cf]                           dc.b $05
[000bf1d0]                           dc.b $00
[000bf1d1]                           dc.b $39
[000bf1d2]                           dc.b $00
[000bf1d3]                           dc.b $03
_36_ED_TEDI:
[000bf1d4]                           dc.b $00
[000bf1d5]                           dc.b $23
[000bf1d6]                           dc.b $00
[000bf1d7]                           dc.b $25
[000bf1d8]                           dc.b $00
[000bf1d9]                           dc.b $27
[000bf1da]                           dc.b $00
[000bf1db]                           dc.b $14
[000bf1dc]                           dc.b $00
[000bf1dd]                           dc.b $40
[000bf1de]                           dc.b $00
[000bf1df]                           dc.b $00
[000bf1e0]                           dc.b $00
[000bf1e1]                           dc.b $ff
[000bf1e2]                           dc.w $0101
[000bf1e4]                           dc.b $00
[000bf1e5]                           dc.b $00
[000bf1e6]                           dc.b $00
[000bf1e7]                           dc.b $00
[000bf1e8]                           dc.b $00
[000bf1e9]                           dc.b $39
[000bf1ea]                           dc.b $00
[000bf1eb]                           dc.b $03
_37_ED_TEDI:
[000bf1ec]                           dc.b $00
[000bf1ed]                           dc.b $26
[000bf1ee]                           dc.w $ffff
[000bf1f0]                           dc.w $ffff
[000bf1f2]                           dc.b $00
[000bf1f3]                           dc.b $18
[000bf1f4]                           dc.b $00
[000bf1f5]                           dc.b $08
[000bf1f6]                           dc.b $00
[000bf1f7]                           dc.b $00
[000bf1f8] 000bed7c                  dc.l A_BOXED02
[000bf1fc]                           dc.b $00
[000bf1fd]                           dc.b $00
[000bf1fe]                           dc.b $00
[000bf1ff]                           dc.b $00
[000bf200]                           dc.b $00
[000bf201]                           dc.b $39
[000bf202]                           dc.b $00
[000bf203]                           dc.b $01
_38_ED_TEDI:
[000bf204]                           dc.b $00
[000bf205]                           dc.b $27
[000bf206]                           dc.w $ffff
[000bf208]                           dc.w $ffff
[000bf20a]                           dc.b $00
[000bf20b]                           dc.b $18
[000bf20c]                           dc.b $00
[000bf20d]                           dc.b $08
[000bf20e]                           dc.b $00
[000bf20f]                           dc.b $00
[000bf210] 000bed7c                  dc.l A_BOXED02
[000bf214]                           dc.b $00
[000bf215]                           dc.b $00
[000bf216]                           dc.b $00
[000bf217]                           dc.b $01
[000bf218]                           dc.b $00
[000bf219]                           dc.b $39
[000bf21a]                           dc.b $00
[000bf21b]                           dc.b $01
_39_ED_TEDI:
[000bf21c]                           dc.b $00
[000bf21d]                           dc.b $24
[000bf21e]                           dc.w $ffff
[000bf220]                           dc.w $ffff
[000bf222]                           dc.b $00
[000bf223]                           dc.b $18
[000bf224]                           dc.b $00
[000bf225]                           dc.b $08
[000bf226]                           dc.b $00
[000bf227]                           dc.b $00
[000bf228] 000bed5c                  dc.l A_BOXED01
[000bf22c]                           dc.b $00
[000bf22d]                           dc.b $00
[000bf22e]                           dc.b $00
[000bf22f]                           dc.b $02
[000bf230]                           dc.b $00
[000bf231]                           dc.b $39
[000bf232]                           dc.b $00
[000bf233]                           dc.b $01
_40_ED_TEDI:
[000bf234]                           dc.b $00
[000bf235]                           dc.b $29
[000bf236]                           dc.w $ffff
[000bf238]                           dc.w $ffff
[000bf23a]                           dc.b $00
[000bf23b]                           dc.b $1c
[000bf23c]                           dc.b $00
[000bf23d]                           dc.b $00
[000bf23e]                           dc.b $00
[000bf23f]                           dc.b $00
[000bf240] 000beb6d                  dc.l TEXT_11
[000bf244]                           dc.b $00
[000bf245]                           dc.b $02
[000bf246]                           dc.b $00
[000bf247]                           dc.b $06
[000bf248]                           dc.b $00
[000bf249]                           dc.b $04
[000bf24a]                           dc.b $00
[000bf24b]                           dc.b $01
_41_ED_TEDI:
[000bf24c]                           dc.b $00
[000bf24d]                           dc.b $0c
[000bf24e]                           dc.w $ffff
[000bf250]                           dc.w $ffff
[000bf252]                           dc.b $00
[000bf253]                           dc.b $1c
[000bf254]                           dc.b $00
[000bf255]                           dc.b $00
[000bf256]                           dc.b $00
[000bf257]                           dc.b $00
[000bf258] 000beb72                  dc.l TEXT_12
[000bf25c]                           dc.b $00
[000bf25d]                           dc.b $02
[000bf25e]                           dc.b $00
[000bf25f]                           dc.b $07
[000bf260]                           dc.b $00
[000bf261]                           dc.b $04
[000bf262]                           dc.b $00
[000bf263]                           dc.b $01
_42_ED_TEDI:
[000bf264]                           dc.b $00
[000bf265]                           dc.b $40
[000bf266]                           dc.b $00
[000bf267]                           dc.b $2b
[000bf268]                           dc.b $00
[000bf269]                           dc.b $3e
[000bf26a]                           dc.b $00
[000bf26b]                           dc.b $18
[000bf26c]                           dc.b $00
[000bf26d]                           dc.b $40
[000bf26e]                           dc.b $00
[000bf26f]                           dc.b $00
[000bf270] 000beddc                  dc.l A_INNERFRAME04
[000bf274]                           dc.b $00
[000bf275]                           dc.b $01
[000bf276]                           dc.b $00
[000bf277]                           dc.b $0d
[000bf278]                           dc.b $00
[000bf279]                           dc.b $20
[000bf27a]                           dc.b $00
[000bf27b]                           dc.b $05
_43_ED_TEDI:
[000bf27c]                           dc.b $00
[000bf27d]                           dc.b $2d
[000bf27e]                           dc.b $00
[000bf27f]                           dc.b $2c
[000bf280]                           dc.b $00
[000bf281]                           dc.b $2c
[000bf282]                           dc.b $00
[000bf283]                           dc.b $1c
[000bf284]                           dc.b $00
[000bf285]                           dc.b $40
[000bf286]                           dc.b $00
[000bf287]                           dc.b $00
[000bf288] 000beb86                  dc.l TEXT_15
[000bf28c]                           dc.b $00
[000bf28d]                           dc.b $01
[000bf28e]                           dc.b $00
[000bf28f]                           dc.b $01
[000bf290]                           dc.b $00
[000bf291]                           dc.b $06
[000bf292]                           dc.b $00
[000bf293]                           dc.b $01
_44_ED_TEDI:
[000bf294]                           dc.b $00
[000bf295]                           dc.b $2b
[000bf296]                           dc.w $ffff
[000bf298]                           dc.w $ffff
[000bf29a]                           dc.b $00
[000bf29b]                           dc.b $18
[000bf29c]                           dc.b $00
[000bf29d]                           dc.b $40
[000bf29e]                           dc.b $00
[000bf29f]                           dc.b $00
[000bf2a0] 000bed3c                  dc.l A_ARROWS02
[000bf2a4]                           dc.b $00
[000bf2a5]                           dc.b $02
[000bf2a6]                           dc.b $00
[000bf2a7]                           dc.b $00
[000bf2a8]                           dc.b $00
[000bf2a9]                           dc.b $01
[000bf2aa]                           dc.b $00
[000bf2ab]                           dc.b $01
_45_ED_TEDI:
[000bf2ac]                           dc.b $00
[000bf2ad]                           dc.b $31
[000bf2ae]                           dc.b $00
[000bf2af]                           dc.b $2f
[000bf2b0]                           dc.b $00
[000bf2b1]                           dc.b $30
[000bf2b2]                           dc.b $00
[000bf2b3]                           dc.b $14
[000bf2b4]                           dc.b $00
[000bf2b5]                           dc.b $40
[000bf2b6]                           dc.b $00
[000bf2b7]                           dc.b $20
[000bf2b8]                           dc.b $00
[000bf2b9]                           dc.b $ff
[000bf2ba]                           dc.w $1101
[000bf2bc]                           dc.b $00
[000bf2bd]                           dc.b $08
[000bf2be]                           dc.b $00
[000bf2bf]                           dc.b $01
[000bf2c0]                           dc.b $00
[000bf2c1]                           dc.b $12
[000bf2c2]                           dc.b $00
[000bf2c3]                           dc.b $01
_45aED_TEDI:
[000bf2c4] 0003028e                  dc.l edte_framecol
[000bf2c8]                           dc.b $00
[000bf2c9]                           dc.b $00
[000bf2ca]                           dc.b $00
[000bf2cb]                           dc.b $00
[000bf2cc]                           dc.w $8000
[000bf2ce]                           dc.w $8852
[000bf2d0]                           dc.b $00
[000bf2d1]                           dc.b $00
[000bf2d2]                           dc.b $00
[000bf2d3]                           dc.b $00
[000bf2d4]                           dc.b $00
[000bf2d5]                           dc.b $00
[000bf2d6]                           dc.b $00
[000bf2d7]                           dc.b $00
[000bf2d8]                           dc.b $00
[000bf2d9]                           dc.b $00
[000bf2da]                           dc.b $00
[000bf2db]                           dc.b $00
_47_ED_TEDI:
[000bf2dc]                           dc.b $00
[000bf2dd]                           dc.b $30
[000bf2de]                           dc.w $ffff
[000bf2e0]                           dc.w $ffff
[000bf2e2]                           dc.b $00
[000bf2e3]                           dc.b $14
[000bf2e4]                           dc.b $00
[000bf2e5]                           dc.b $00
[000bf2e6]                           dc.b $00
[000bf2e7]                           dc.b $00
[000bf2e8]                           dc.b $43
[000bf2e9]                           dc.b $01
[000bf2ea]                           dc.w $1371
[000bf2ec]                           dc.b $00
[000bf2ed]                           dc.b $10
[000bf2ee]                           dc.b $00
[000bf2ef]                           dc.b $00
[000bf2f0]                           dc.b $00
[000bf2f1]                           dc.b $02
[000bf2f2]                           dc.b $00
[000bf2f3]                           dc.b $01
_48_ED_TEDI:
[000bf2f4]                           dc.b $00
[000bf2f5]                           dc.b $2d
[000bf2f6]                           dc.w $ffff
[000bf2f8]                           dc.w $ffff
[000bf2fa]                           dc.b $00
[000bf2fb]                           dc.b $18
[000bf2fc]                           dc.b $00
[000bf2fd]                           dc.b $00
[000bf2fe]                           dc.b $00
[000bf2ff]                           dc.b $00
[000bf300] 000bed1c                  dc.l A_3DBUTTON23
[000bf304]                           dc.b $00
[000bf305]                           dc.b $00
[000bf306]                           dc.b $00
[000bf307]                           dc.b $00
[000bf308]                           dc.b $00
[000bf309]                           dc.b $10
[000bf30a]                           dc.b $00
[000bf30b]                           dc.b $01
_49_ED_TEDI:
[000bf30c]                           dc.b $00
[000bf30d]                           dc.b $32
[000bf30e]                           dc.w $ffff
[000bf310]                           dc.w $ffff
[000bf312]                           dc.b $00
[000bf313]                           dc.b $1c
[000bf314]                           dc.b $00
[000bf315]                           dc.b $40
[000bf316]                           dc.b $00
[000bf317]                           dc.b $00
[000bf318] 000beb67                  dc.l TEXT_09
[000bf31c]                           dc.b $00
[000bf31d]                           dc.b $02
[000bf31e]                           dc.b $00
[000bf31f]                           dc.b $03
[000bf320]                           dc.b $00
[000bf321]                           dc.b $06
[000bf322]                           dc.b $00
[000bf323]                           dc.b $01
_50_ED_TEDI:
[000bf324]                           dc.b $00
[000bf325]                           dc.b $34
[000bf326]                           dc.w $ffff
[000bf328]                           dc.w $ffff
[000bf32a]                           dc.b $00
[000bf32b]                           dc.b $14
[000bf32c]                           dc.b $00
[000bf32d]                           dc.b $05
[000bf32e]                           dc.b $00
[000bf32f]                           dc.b $00
[000bf330]                           dc.b $00
[000bf331]                           dc.b $03
[000bf332]                           dc.w $1111
[000bf334]                           dc.b $00
[000bf335]                           dc.b $08
[000bf336]                           dc.b $00
[000bf337]                           dc.b $03
[000bf338]                           dc.b $00
[000bf339]                           dc.b $02
[000bf33a]                           dc.b $00
[000bf33b]                           dc.b $01
_50aED_TEDI:
[000bf33c] 00030cc0                  dc.l edte_th
[000bf340]                           dc.b $00
[000bf341]                           dc.b $00
[000bf342]                           dc.b $00
[000bf343]                           dc.b $00
[000bf344]                           dc.w $8000
[000bf346]                           dc.b $00
[000bf347]                           dc.b $00
[000bf348]                           dc.b $00
[000bf349]                           dc.b $00
[000bf34a]                           dc.b $00
[000bf34b]                           dc.b $00
[000bf34c]                           dc.b $00
[000bf34d]                           dc.b $00
[000bf34e]                           dc.b $00
[000bf34f]                           dc.b $00
[000bf350]                           dc.b $00
[000bf351]                           dc.b $00
[000bf352]                           dc.b $00
[000bf353]                           dc.b $00
_52_ED_TEDI:
[000bf354]                           dc.b $00
[000bf355]                           dc.b $36
[000bf356]                           dc.w $ffff
[000bf358]                           dc.w $ffff
[000bf35a]                           dc.b $00
[000bf35b]                           dc.b $14
[000bf35c]                           dc.b $00
[000bf35d]                           dc.b $05
[000bf35e]                           dc.b $00
[000bf35f]                           dc.b $00
[000bf360]                           dc.b $00
[000bf361]                           dc.b $02
[000bf362]                           dc.w $1111
[000bf364]                           dc.b $00
[000bf365]                           dc.b $0b
[000bf366]                           dc.b $00
[000bf367]                           dc.b $03
[000bf368]                           dc.b $00
[000bf369]                           dc.b $02
[000bf36a]                           dc.b $00
[000bf36b]                           dc.b $01
_52aED_TEDI:
[000bf36c] 00030cc0                  dc.l edte_th
[000bf370]                           dc.b $00
[000bf371]                           dc.b $00
[000bf372]                           dc.b $00
[000bf373]                           dc.b $00
[000bf374]                           dc.w $8000
[000bf376]                           dc.b $00
[000bf377]                           dc.b $00
[000bf378]                           dc.b $00
[000bf379]                           dc.b $00
[000bf37a]                           dc.b $00
[000bf37b]                           dc.b $00
[000bf37c]                           dc.b $00
[000bf37d]                           dc.b $00
[000bf37e]                           dc.b $00
[000bf37f]                           dc.b $00
[000bf380]                           dc.b $00
[000bf381]                           dc.b $00
[000bf382]                           dc.b $00
[000bf383]                           dc.b $00
_54_ED_TEDI:
[000bf384]                           dc.b $00
[000bf385]                           dc.b $38
[000bf386]                           dc.w $ffff
[000bf388]                           dc.w $ffff
[000bf38a]                           dc.b $00
[000bf38b]                           dc.b $14
[000bf38c]                           dc.b $00
[000bf38d]                           dc.b $05
[000bf38e]                           dc.b $00
[000bf38f]                           dc.b $00
[000bf390]                           dc.b $00
[000bf391]                           dc.b $01
[000bf392]                           dc.w $1111
[000bf394]                           dc.b $00
[000bf395]                           dc.b $0e
[000bf396]                           dc.b $00
[000bf397]                           dc.b $03
[000bf398]                           dc.b $00
[000bf399]                           dc.b $02
[000bf39a]                           dc.b $00
[000bf39b]                           dc.b $01
_54aED_TEDI:
[000bf39c] 00030cc0                  dc.l edte_th
[000bf3a0]                           dc.b $00
[000bf3a1]                           dc.b $00
[000bf3a2]                           dc.b $00
[000bf3a3]                           dc.b $00
[000bf3a4]                           dc.w $8000
[000bf3a6]                           dc.b $00
[000bf3a7]                           dc.b $00
[000bf3a8]                           dc.b $00
[000bf3a9]                           dc.b $00
[000bf3aa]                           dc.b $00
[000bf3ab]                           dc.b $00
[000bf3ac]                           dc.b $00
[000bf3ad]                           dc.b $00
[000bf3ae]                           dc.b $00
[000bf3af]                           dc.b $00
[000bf3b0]                           dc.b $00
[000bf3b1]                           dc.b $00
[000bf3b2]                           dc.b $00
[000bf3b3]                           dc.b $00
_56_ED_TEDI:
[000bf3b4]                           dc.b $00
[000bf3b5]                           dc.b $3a
[000bf3b6]                           dc.w $ffff
[000bf3b8]                           dc.w $ffff
[000bf3ba]                           dc.b $00
[000bf3bb]                           dc.b $14
[000bf3bc]                           dc.b $00
[000bf3bd]                           dc.b $05
[000bf3be]                           dc.b $00
[000bf3bf]                           dc.b $00
[000bf3c0]                           dc.b $00
[000bf3c1]                           dc.b $00
[000bf3c2]                           dc.w $1111
[000bf3c4]                           dc.b $00
[000bf3c5]                           dc.b $11
[000bf3c6]                           dc.b $00
[000bf3c7]                           dc.b $03
[000bf3c8]                           dc.b $00
[000bf3c9]                           dc.b $02
[000bf3ca]                           dc.b $00
[000bf3cb]                           dc.b $01
_56aED_TEDI:
[000bf3cc] 00030cc0                  dc.l edte_th
[000bf3d0]                           dc.b $00
[000bf3d1]                           dc.b $00
[000bf3d2]                           dc.b $00
[000bf3d3]                           dc.b $00
[000bf3d4]                           dc.w $8000
[000bf3d6]                           dc.b $00
[000bf3d7]                           dc.b $00
[000bf3d8]                           dc.b $00
[000bf3d9]                           dc.b $00
[000bf3da]                           dc.b $00
[000bf3db]                           dc.b $00
[000bf3dc]                           dc.b $00
[000bf3dd]                           dc.b $00
[000bf3de]                           dc.b $00
[000bf3df]                           dc.b $00
[000bf3e0]                           dc.b $00
[000bf3e1]                           dc.b $00
[000bf3e2]                           dc.b $00
[000bf3e3]                           dc.b $00
_58_ED_TEDI:
[000bf3e4]                           dc.b $00
[000bf3e5]                           dc.b $3c
[000bf3e6]                           dc.w $ffff
[000bf3e8]                           dc.w $ffff
[000bf3ea]                           dc.b $00
[000bf3eb]                           dc.b $14
[000bf3ec]                           dc.b $00
[000bf3ed]                           dc.b $05
[000bf3ee]                           dc.b $00
[000bf3ef]                           dc.b $00
[000bf3f0]                           dc.b $00
[000bf3f1]                           dc.b $ff
[000bf3f2]                           dc.w $1111
[000bf3f4]                           dc.b $00
[000bf3f5]                           dc.b $14
[000bf3f6]                           dc.b $00
[000bf3f7]                           dc.b $03
[000bf3f8]                           dc.b $00
[000bf3f9]                           dc.b $02
[000bf3fa]                           dc.b $00
[000bf3fb]                           dc.b $01
_58aED_TEDI:
[000bf3fc] 00030cc0                  dc.l edte_th
[000bf400]                           dc.b $00
[000bf401]                           dc.b $00
[000bf402]                           dc.b $00
[000bf403]                           dc.b $00
[000bf404]                           dc.w $8000
[000bf406]                           dc.b $00
[000bf407]                           dc.b $00
[000bf408]                           dc.b $00
[000bf409]                           dc.b $00
[000bf40a]                           dc.b $00
[000bf40b]                           dc.b $00
[000bf40c]                           dc.b $00
[000bf40d]                           dc.b $00
[000bf40e]                           dc.b $00
[000bf40f]                           dc.b $00
[000bf410]                           dc.b $00
[000bf411]                           dc.b $00
[000bf412]                           dc.b $00
[000bf413]                           dc.b $00
_60_ED_TEDI:
[000bf414]                           dc.b $00
[000bf415]                           dc.b $3e
[000bf416]                           dc.w $ffff
[000bf418]                           dc.w $ffff
[000bf41a]                           dc.b $00
[000bf41b]                           dc.b $14
[000bf41c]                           dc.b $00
[000bf41d]                           dc.b $05
[000bf41e]                           dc.b $00
[000bf41f]                           dc.b $00
[000bf420]                           dc.b $00
[000bf421]                           dc.b $fe
[000bf422]                           dc.w $1111
[000bf424]                           dc.b $00
[000bf425]                           dc.b $17
[000bf426]                           dc.b $00
[000bf427]                           dc.b $03
[000bf428]                           dc.b $00
[000bf429]                           dc.b $02
[000bf42a]                           dc.b $00
[000bf42b]                           dc.b $01
_60aED_TEDI:
[000bf42c] 00030cc0                  dc.l edte_th
[000bf430]                           dc.b $00
[000bf431]                           dc.b $00
[000bf432]                           dc.b $00
[000bf433]                           dc.b $00
[000bf434]                           dc.w $8000
[000bf436]                           dc.b $00
[000bf437]                           dc.b $00
[000bf438]                           dc.b $00
[000bf439]                           dc.b $00
[000bf43a]                           dc.b $00
[000bf43b]                           dc.b $00
[000bf43c]                           dc.b $00
[000bf43d]                           dc.b $00
[000bf43e]                           dc.b $00
[000bf43f]                           dc.b $00
[000bf440]                           dc.b $00
[000bf441]                           dc.b $00
[000bf442]                           dc.b $00
[000bf443]                           dc.b $00
_62_ED_TEDI:
[000bf444]                           dc.b $00
[000bf445]                           dc.b $2a
[000bf446]                           dc.w $ffff
[000bf448]                           dc.w $ffff
[000bf44a]                           dc.b $00
[000bf44b]                           dc.b $14
[000bf44c]                           dc.b $00
[000bf44d]                           dc.b $05
[000bf44e]                           dc.b $00
[000bf44f]                           dc.b $00
[000bf450]                           dc.b $00
[000bf451]                           dc.b $fd
[000bf452]                           dc.w $1111
[000bf454]                           dc.b $00
[000bf455]                           dc.b $1a
[000bf456]                           dc.b $00
[000bf457]                           dc.b $03
[000bf458]                           dc.b $00
[000bf459]                           dc.b $02
[000bf45a]                           dc.b $00
[000bf45b]                           dc.b $01
_62aED_TEDI:
[000bf45c] 00030cc0                  dc.l edte_th
[000bf460]                           dc.b $00
[000bf461]                           dc.b $00
[000bf462]                           dc.b $00
[000bf463]                           dc.b $00
[000bf464]                           dc.w $8000
[000bf466]                           dc.b $00
[000bf467]                           dc.b $00
[000bf468]                           dc.b $00
[000bf469]                           dc.b $00
[000bf46a]                           dc.b $00
[000bf46b]                           dc.b $00
[000bf46c]                           dc.b $00
[000bf46d]                           dc.b $00
[000bf46e]                           dc.b $00
[000bf46f]                           dc.b $00
[000bf470]                           dc.b $00
[000bf471]                           dc.b $00
[000bf472]                           dc.b $00
[000bf473]                           dc.b $00
_64_ED_TEDI:
[000bf474]                           dc.b $00
[000bf475]                           dc.b $00
[000bf476]                           dc.b $00
[000bf477]                           dc.b $41
[000bf478]                           dc.b $00
[000bf479]                           dc.b $47
[000bf47a]                           dc.b $00
[000bf47b]                           dc.b $18
[000bf47c]                           dc.b $00
[000bf47d]                           dc.b $00
[000bf47e]                           dc.b $00
[000bf47f]                           dc.b $00
[000bf480] 000bedbc                  dc.l A_INNERFRAME02
[000bf484]                           dc.b $00
[000bf485]                           dc.b $22
[000bf486]                           dc.b $00
[000bf487]                           dc.b $0d
[000bf488]                           dc.b $00
[000bf489]                           dc.b $20
[000bf48a]                           dc.b $00
[000bf48b]                           dc.b $05
_65_ED_TEDI:
[000bf48c]                           dc.b $00
[000bf48d]                           dc.b $43
[000bf48e]                           dc.b $00
[000bf48f]                           dc.b $42
[000bf490]                           dc.b $00
[000bf491]                           dc.b $42
[000bf492]                           dc.b $00
[000bf493]                           dc.b $1c
[000bf494]                           dc.b $00
[000bf495]                           dc.b $40
[000bf496]                           dc.b $00
[000bf497]                           dc.b $00
[000bf498] 000beb59                  dc.l TEXT_07
[000bf49c]                           dc.b $00
[000bf49d]                           dc.b $01
[000bf49e]                           dc.b $00
[000bf49f]                           dc.b $01
[000bf4a0]                           dc.b $00
[000bf4a1]                           dc.b $08
[000bf4a2]                           dc.b $00
[000bf4a3]                           dc.b $01
_66_ED_TEDI:
[000bf4a4]                           dc.b $00
[000bf4a5]                           dc.b $41
[000bf4a6]                           dc.w $ffff
[000bf4a8]                           dc.w $ffff
[000bf4aa]                           dc.b $00
[000bf4ab]                           dc.b $18
[000bf4ac]                           dc.b $00
[000bf4ad]                           dc.b $40
[000bf4ae]                           dc.b $00
[000bf4af]                           dc.b $00
[000bf4b0] 000bed3c                  dc.l A_ARROWS02
[000bf4b4]                           dc.b $00
[000bf4b5]                           dc.b $00
[000bf4b6]                           dc.b $00
[000bf4b7]                           dc.b $00
[000bf4b8]                           dc.b $00
[000bf4b9]                           dc.b $01
[000bf4ba]                           dc.b $00
[000bf4bb]                           dc.b $01
_67_ED_TEDI:
[000bf4bc]                           dc.b $00
[000bf4bd]                           dc.b $45
[000bf4be]                           dc.w $ffff
[000bf4c0]                           dc.w $ffff
[000bf4c2]                           dc.b $00
[000bf4c3]                           dc.b $14
[000bf4c4]                           dc.b $00
[000bf4c5]                           dc.b $40
[000bf4c6]                           dc.b $00
[000bf4c7]                           dc.b $20
[000bf4c8]                           dc.b $00
[000bf4c9]                           dc.b $ff
[000bf4ca]                           dc.w $1101
[000bf4cc]                           dc.b $00
[000bf4cd]                           dc.b $09
[000bf4ce]                           dc.b $00
[000bf4cf]                           dc.b $01
[000bf4d0]                           dc.b $00
[000bf4d1]                           dc.b $12
[000bf4d2]                           dc.b $00
[000bf4d3]                           dc.b $01
_67aED_TEDI:
[000bf4d4] 00030354                  dc.l edte_pattern
[000bf4d8]                           dc.b $00
[000bf4d9]                           dc.b $00
[000bf4da]                           dc.b $00
[000bf4db]                           dc.b $00
[000bf4dc]                           dc.w $8000
[000bf4de]                           dc.w $884d
[000bf4e0]                           dc.b $00
[000bf4e1]                           dc.b $00
[000bf4e2]                           dc.b $00
[000bf4e3]                           dc.b $00
[000bf4e4]                           dc.b $00
[000bf4e5]                           dc.b $00
[000bf4e6]                           dc.b $00
[000bf4e7]                           dc.b $00
[000bf4e8]                           dc.b $00
[000bf4e9]                           dc.b $00
[000bf4ea]                           dc.b $00
[000bf4eb]                           dc.b $00
_69_ED_TEDI:
[000bf4ec]                           dc.b $00
[000bf4ed]                           dc.b $47
[000bf4ee]                           dc.b $00
[000bf4ef]                           dc.b $46
[000bf4f0]                           dc.b $00
[000bf4f1]                           dc.b $46
[000bf4f2]                           dc.b $00
[000bf4f3]                           dc.b $1c
[000bf4f4]                           dc.b $00
[000bf4f5]                           dc.b $40
[000bf4f6]                           dc.b $00
[000bf4f7]                           dc.b $00
[000bf4f8] 000beb86                  dc.l TEXT_15
[000bf4fc]                           dc.b $00
[000bf4fd]                           dc.b $02
[000bf4fe]                           dc.b $00
[000bf4ff]                           dc.b $03
[000bf500]                           dc.b $00
[000bf501]                           dc.b $06
[000bf502]                           dc.b $00
[000bf503]                           dc.b $01
_70_ED_TEDI:
[000bf504]                           dc.b $00
[000bf505]                           dc.b $45
[000bf506]                           dc.w $ffff
[000bf508]                           dc.w $ffff
[000bf50a]                           dc.b $00
[000bf50b]                           dc.b $18
[000bf50c]                           dc.b $00
[000bf50d]                           dc.b $40
[000bf50e]                           dc.b $00
[000bf50f]                           dc.b $00
[000bf510] 000bed3c                  dc.l A_ARROWS02
[000bf514]                           dc.b $00
[000bf515]                           dc.b $03
[000bf516]                           dc.b $00
[000bf517]                           dc.b $00
[000bf518]                           dc.b $00
[000bf519]                           dc.b $01
[000bf51a]                           dc.b $00
[000bf51b]                           dc.b $01
_71_ED_TEDI:
[000bf51c]                           dc.b $00
[000bf51d]                           dc.b $40
[000bf51e]                           dc.b $00
[000bf51f]                           dc.b $49
[000bf520]                           dc.b $00
[000bf521]                           dc.b $4a
[000bf522]                           dc.b $00
[000bf523]                           dc.b $14
[000bf524]                           dc.b $00
[000bf525]                           dc.b $40
[000bf526]                           dc.b $00
[000bf527]                           dc.b $20
[000bf528]                           dc.b $00
[000bf529]                           dc.b $ff
[000bf52a]                           dc.w $1101
[000bf52c]                           dc.b $00
[000bf52d]                           dc.b $09
[000bf52e]                           dc.b $00
[000bf52f]                           dc.b $03
[000bf530]                           dc.b $00
[000bf531]                           dc.b $12
[000bf532]                           dc.b $00
[000bf533]                           dc.b $01
_71aED_TEDI:
[000bf534] 000302f6                  dc.l edte_intercol
[000bf538]                           dc.b $00
[000bf539]                           dc.b $00
[000bf53a]                           dc.b $00
[000bf53b]                           dc.b $00
[000bf53c]                           dc.w $8000
[000bf53e]                           dc.w $8842
[000bf540]                           dc.b $00
[000bf541]                           dc.b $00
[000bf542]                           dc.b $00
[000bf543]                           dc.b $00
[000bf544]                           dc.b $00
[000bf545]                           dc.b $00
[000bf546]                           dc.b $00
[000bf547]                           dc.b $00
[000bf548]                           dc.b $00
[000bf549]                           dc.b $00
[000bf54a]                           dc.b $00
[000bf54b]                           dc.b $00
_73_ED_TEDI:
[000bf54c]                           dc.b $00
[000bf54d]                           dc.b $4a
[000bf54e]                           dc.w $ffff
[000bf550]                           dc.w $ffff
[000bf552]                           dc.b $00
[000bf553]                           dc.b $14
[000bf554]                           dc.b $00
[000bf555]                           dc.b $00
[000bf556]                           dc.b $00
[000bf557]                           dc.b $00
[000bf558]                           dc.b $00
[000bf559]                           dc.b $01
[000bf55a]                           dc.w $1171
[000bf55c]                           dc.b $00
[000bf55d]                           dc.b $10
[000bf55e]                           dc.b $00
[000bf55f]                           dc.b $00
[000bf560]                           dc.b $00
[000bf561]                           dc.b $02
[000bf562]                           dc.b $00
[000bf563]                           dc.b $01
_74_ED_TEDI:
[000bf564]                           dc.b $00
[000bf565]                           dc.b $47
[000bf566]                           dc.w $ffff
[000bf568]                           dc.w $ffff
[000bf56a]                           dc.b $00
[000bf56b]                           dc.b $18
[000bf56c]                           dc.b $00
[000bf56d]                           dc.b $20
[000bf56e]                           dc.b $00
[000bf56f]                           dc.b $00
[000bf570] 000bed1c                  dc.l A_3DBUTTON23
[000bf574]                           dc.b $00
[000bf575]                           dc.b $00
[000bf576]                           dc.b $00
[000bf577]                           dc.b $00
[000bf578]                           dc.b $00
[000bf579]                           dc.b $10
[000bf57a]                           dc.b $00
[000bf57b]                           dc.b $01
sm:
[000bf57c]                           dc.b $00
[000bf57d]                           dc.b $00
[000bf57e]                           dc.b $00
[000bf57f]                           dc.b $00
[000bf580] 0003090c                  dc.l edte_ok
[000bf584] 00049b7c                  dc.l Aob_delete
[000bf588] 000bebd3                  dc.l title
[000bf58c] 000bebc0                  dc.l help_title
[000bf590]                           dc.b $00
[000bf591]                           dc.b $00
[000bf592]                           dc.b $00
[000bf593]                           dc.b $00
[000bf594]                           dc.b $00
[000bf595]                           dc.b $00
