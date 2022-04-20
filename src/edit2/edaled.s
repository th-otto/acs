
edal_try:
[0001c0cc] 4fef ff00                 lea.l      -256(a7),a7
[0001c0d0] 43d7                      lea.l      (a7),a1
[0001c0d2] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c0d8] 2068 0258                 movea.l    600(a0),a0
[0001c0dc] 4eb9 0001 c190            jsr        get_alert
[0001c0e2] 7004                      moveq.l    #4,d0
[0001c0e4] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c0ea] c068 0266                 and.w      614(a0),d0
[0001c0ee] 6712                      beq.s      edal_try_1
[0001c0f0] 2279 000d 99d6            movea.l    _globl,a1
[0001c0f6] 41d7                      lea.l      (a7),a0
[0001c0f8] 7001                      moveq.l    #1,d0
[0001c0fa] 4eb9 0006 be76            jsr        mt_form_alert
[0001c100] 600a                      bra.s      edal_try_2
edal_try_1:
[0001c102] 41d7                      lea.l      (a7),a0
[0001c104] 7001                      moveq.l    #1,d0
[0001c106] 4eb9 0005 17fe            jsr        Awi_alert
edal_try_2:
[0001c10c] 4fef 0100                 lea.l      256(a7),a7
[0001c110] 4e75                      rts

edal_newim:
[0001c112] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0001c116] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c11c] 2468 0258                 movea.l    600(a0),a2
[0001c120] 47f9 000a 1096            lea.l      NEW_IMAGE,a3
[0001c126] 72ff                      moveq.l    #-1,d1
[0001c128] 70ff                      moveq.l    #-1,d0
[0001c12a] 224b                      movea.l    a3,a1
[0001c12c] 204a                      movea.l    a2,a0
[0001c12e] 4eb9 0004 948a            jsr        Ame_popup
[0001c134] 3600                      move.w     d0,d3
[0001c136] 6b1e                      bmi.s      edal_newim_1
[0001c138] 48c0                      ext.l      d0
[0001c13a] 2200                      move.l     d0,d1
[0001c13c] d281                      add.l      d1,d1
[0001c13e] d280                      add.l      d0,d1
[0001c140] e789                      lsl.l      #3,d1
[0001c142] 206a 0014                 movea.l    20(a2),a0
[0001c146] 2173 180c 003c            move.l     12(a3,d1.l),60(a0)
[0001c14c] 204a                      movea.l    a2,a0
[0001c14e] 7002                      moveq.l    #2,d0
[0001c150] 4eb9 0004 b846            jsr        Awi_obredraw
edal_newim_1:
[0001c156] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0001c15a] 4e75                      rts

edal_ok:
[0001c15c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c162] 2068 0258                 movea.l    600(a0),a0
[0001c166] 4eb9 0001 c356            jsr        acc_alert
[0001c16c] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c172] 2068 0258                 movea.l    600(a0),a0
[0001c176] 4eb9 0001 c6ac            jsr        term
[0001c17c] 4e75                      rts

edal_abort:
[0001c17e] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c184] 2068 0258                 movea.l    600(a0),a0
[0001c188] 4eb9 0001 c6ac            jsr        term
[0001c18e] 4e75                      rts

get_alert:
[0001c190] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001c194] 594f                      subq.w     #4,a7
[0001c196] 2849                      movea.l    a1,a4
[0001c198] 2468 0014                 movea.l    20(a0),a2
[0001c19c] 47f9 000a 1378            lea.l      $000A1378,a3
[0001c1a2] 224b                      movea.l    a3,a1
[0001c1a4] 204c                      movea.l    a4,a0
[0001c1a6] 4eb9 0007 6950            jsr        strcpy
[0001c1ac] 41f9 000a 0ee2            lea.l      IM_NONE,a0
[0001c1b2] 226a 003c                 movea.l    60(a2),a1
[0001c1b6] b3c8                      cmpa.l     a0,a1
[0001c1b8] 6606                      bne.s      get_alert_1
[0001c1ba] 197c 0030 0001            move.b     #$30,1(a4)
get_alert_1:
[0001c1c0] 226a 003c                 movea.l    60(a2),a1
[0001c1c4] b3fc 000a 0e54            cmpa.l     #IM_EXCLAM,a1
[0001c1ca] 6606                      bne.s      get_alert_2
[0001c1cc] 197c 0031 0001            move.b     #$31,1(a4)
get_alert_2:
[0001c1d2] 226a 003c                 movea.l    60(a2),a1
[0001c1d6] b3fc 000a 0f70            cmpa.l     #IM_QUEST,a1
[0001c1dc] 6606                      bne.s      get_alert_3
[0001c1de] 197c 0032 0001            move.b     #$32,1(a4)
get_alert_3:
[0001c1e4] 226a 003c                 movea.l    60(a2),a1
[0001c1e8] b3fc 000a 0ffe            cmpa.l     #IM_STOP,a1
[0001c1ee] 6606                      bne.s      get_alert_4
[0001c1f0] 197c 0033 0001            move.b     #$33,1(a4)
get_alert_4:
[0001c1f6] 226a 003c                 movea.l    60(a2),a1
[0001c1fa] b3fc 000a 1088            cmpa.l     #IM_TIME,a1
[0001c200] 6606                      bne.s      get_alert_5
[0001c202] 197c 0034 0001            move.b     #$34,1(a4)
get_alert_5:
[0001c208] 584c                      addq.w     #4,a4
[0001c20a] 43d7                      lea.l      (a7),a1
[0001c20c] 7003                      moveq.l    #3,d0
[0001c20e] 41ea 0060                 lea.l      96(a2),a0
[0001c212] 4eb9 0005 e010            jsr        Auo_boxed
[0001c218] 2057                      movea.l    (a7),a0
[0001c21a] 1010                      move.b     (a0),d0
[0001c21c] 670a                      beq.s      get_alert_6
[0001c21e] 2248                      movea.l    a0,a1
[0001c220] 204c                      movea.l    a4,a0
[0001c222] 4eb9 0007 6886            jsr        strcat
get_alert_6:
[0001c228] 43d7                      lea.l      (a7),a1
[0001c22a] 7003                      moveq.l    #3,d0
[0001c22c] 41ea 0078                 lea.l      120(a2),a0
[0001c230] 4eb9 0005 e010            jsr        Auo_boxed
[0001c236] 2057                      movea.l    (a7),a0
[0001c238] 1010                      move.b     (a0),d0
[0001c23a] 6714                      beq.s      get_alert_7
[0001c23c] 43eb 0005                 lea.l      5(a3),a1
[0001c240] 204c                      movea.l    a4,a0
[0001c242] 4eb9 0007 6886            jsr        strcat
[0001c248] 2257                      movea.l    (a7),a1
[0001c24a] 4eb9 0007 6886            jsr        strcat
get_alert_7:
[0001c250] 43d7                      lea.l      (a7),a1
[0001c252] 7003                      moveq.l    #3,d0
[0001c254] 41ea 0090                 lea.l      144(a2),a0
[0001c258] 4eb9 0005 e010            jsr        Auo_boxed
[0001c25e] 2057                      movea.l    (a7),a0
[0001c260] 1010                      move.b     (a0),d0
[0001c262] 6714                      beq.s      get_alert_8
[0001c264] 43eb 0005                 lea.l      5(a3),a1
[0001c268] 204c                      movea.l    a4,a0
[0001c26a] 4eb9 0007 6886            jsr        strcat
[0001c270] 2257                      movea.l    (a7),a1
[0001c272] 4eb9 0007 6886            jsr        strcat
get_alert_8:
[0001c278] 43d7                      lea.l      (a7),a1
[0001c27a] 7003                      moveq.l    #3,d0
[0001c27c] 41ea 00a8                 lea.l      168(a2),a0
[0001c280] 4eb9 0005 e010            jsr        Auo_boxed
[0001c286] 2057                      movea.l    (a7),a0
[0001c288] 1010                      move.b     (a0),d0
[0001c28a] 6714                      beq.s      get_alert_9
[0001c28c] 43eb 0005                 lea.l      5(a3),a1
[0001c290] 204c                      movea.l    a4,a0
[0001c292] 4eb9 0007 6886            jsr        strcat
[0001c298] 2257                      movea.l    (a7),a1
[0001c29a] 4eb9 0007 6886            jsr        strcat
get_alert_9:
[0001c2a0] 43d7                      lea.l      (a7),a1
[0001c2a2] 7003                      moveq.l    #3,d0
[0001c2a4] 41ea 00c0                 lea.l      192(a2),a0
[0001c2a8] 4eb9 0005 e010            jsr        Auo_boxed
[0001c2ae] 2057                      movea.l    (a7),a0
[0001c2b0] 1010                      move.b     (a0),d0
[0001c2b2] 6714                      beq.s      get_alert_10
[0001c2b4] 43eb 0005                 lea.l      5(a3),a1
[0001c2b8] 204c                      movea.l    a4,a0
[0001c2ba] 4eb9 0007 6886            jsr        strcat
[0001c2c0] 2257                      movea.l    (a7),a1
[0001c2c2] 4eb9 0007 6886            jsr        strcat
get_alert_10:
[0001c2c8] 43eb 0002                 lea.l      2(a3),a1
[0001c2cc] 204c                      movea.l    a4,a0
[0001c2ce] 4eb9 0007 6886            jsr        strcat
[0001c2d4] 43d7                      lea.l      (a7),a1
[0001c2d6] 7003                      moveq.l    #3,d0
[0001c2d8] 41ea 00d8                 lea.l      216(a2),a0
[0001c2dc] 4eb9 0005 e010            jsr        Auo_boxed
[0001c2e2] 2057                      movea.l    (a7),a0
[0001c2e4] 1010                      move.b     (a0),d0
[0001c2e6] 670a                      beq.s      get_alert_11
[0001c2e8] 2248                      movea.l    a0,a1
[0001c2ea] 204c                      movea.l    a4,a0
[0001c2ec] 4eb9 0007 6886            jsr        strcat
get_alert_11:
[0001c2f2] 43d7                      lea.l      (a7),a1
[0001c2f4] 7003                      moveq.l    #3,d0
[0001c2f6] 41ea 00f0                 lea.l      240(a2),a0
[0001c2fa] 4eb9 0005 e010            jsr        Auo_boxed
[0001c300] 2057                      movea.l    (a7),a0
[0001c302] 1010                      move.b     (a0),d0
[0001c304] 6714                      beq.s      get_alert_12
[0001c306] 43eb 0005                 lea.l      5(a3),a1
[0001c30a] 204c                      movea.l    a4,a0
[0001c30c] 4eb9 0007 6886            jsr        strcat
[0001c312] 2257                      movea.l    (a7),a1
[0001c314] 4eb9 0007 6886            jsr        strcat
get_alert_12:
[0001c31a] 43d7                      lea.l      (a7),a1
[0001c31c] 7003                      moveq.l    #3,d0
[0001c31e] 41ea 0108                 lea.l      264(a2),a0
[0001c322] 4eb9 0005 e010            jsr        Auo_boxed
[0001c328] 2057                      movea.l    (a7),a0
[0001c32a] 1010                      move.b     (a0),d0
[0001c32c] 6714                      beq.s      get_alert_13
[0001c32e] 43eb 0005                 lea.l      5(a3),a1
[0001c332] 204c                      movea.l    a4,a0
[0001c334] 4eb9 0007 6886            jsr        strcat
[0001c33a] 2257                      movea.l    (a7),a1
[0001c33c] 4eb9 0007 6886            jsr        strcat
get_alert_13:
[0001c342] 43eb 0007                 lea.l      7(a3),a1
[0001c346] 204c                      movea.l    a4,a0
[0001c348] 4eb9 0007 6886            jsr        strcat
[0001c34e] 584f                      addq.w     #4,a7
[0001c350] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001c354] 4e75                      rts

acc_alert:
[0001c356] 48e7 1028                 movem.l    d3/a2/a4,-(a7)
[0001c35a] 4fef ff00                 lea.l      -256(a7),a7
[0001c35e] 2848                      movea.l    a0,a4
[0001c360] 2450                      movea.l    (a0),a2
[0001c362] 2252                      movea.l    (a2),a1
[0001c364] 0069 0001 0006            ori.w      #$0001,6(a1)
[0001c36a] 43d7                      lea.l      (a7),a1
[0001c36c] 6100 fe22                 bsr        get_alert
[0001c370] 41d7                      lea.l      (a7),a0
[0001c372] 4eb9 0007 69b0            jsr        strlen
[0001c378] 2600                      move.l     d0,d3
[0001c37a] 5283                      addq.l     #1,d3
[0001c37c] 2003                      move.l     d3,d0
[0001c37e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001c384] 2848                      movea.l    a0,a4
[0001c386] 200c                      move.l     a4,d0
[0001c388] 672e                      beq.s      acc_alert_1
[0001c38a] 43d7                      lea.l      (a7),a1
[0001c38c] 4eb9 0007 6950            jsr        strcpy
[0001c392] 206a 0004                 movea.l    4(a2),a0
[0001c396] 2068 0004                 movea.l    4(a0),a0
[0001c39a] 4eb9 0004 7e26            jsr        Ax_free
[0001c3a0] 206a 0004                 movea.l    4(a2),a0
[0001c3a4] 214c 0004                 move.l     a4,4(a0)
[0001c3a8] 206a 0004                 movea.l    4(a2),a0
[0001c3ac] 2143 000a                 move.l     d3,10(a0)
[0001c3b0] 206a 0004                 movea.l    4(a2),a0
[0001c3b4] 2143 000e                 move.l     d3,14(a0)
acc_alert_1:
[0001c3b8] 4fef 0100                 lea.l      256(a7),a7
[0001c3bc] 4cdf 1408                 movem.l    (a7)+,d3/a2/a4
[0001c3c0] 4e75                      rts

al_make:
[0001c3c2] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001c3c6] 594f                      subq.w     #4,a7
[0001c3c8] 2448                      movea.l    a0,a2
[0001c3ca] 266a 0004                 movea.l    4(a2),a3
[0001c3ce] 286b 0012                 movea.l    18(a3),a4
[0001c3d2] 200c                      move.l     a4,d0
[0001c3d4] 670a                      beq.s      al_make_1
[0001c3d6] 204c                      movea.l    a4,a0
[0001c3d8] 4eb9 0004 f0ca            jsr        Awi_show
[0001c3de] 6074                      bra.s      al_make_2
al_make_1:
[0001c3e0] 7008                      moveq.l    #8,d0
[0001c3e2] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001c3e8] 2e88                      move.l     a0,(a7)
[0001c3ea] 6764                      beq.s      al_make_3
[0001c3ec] 7008                      moveq.l    #8,d0
[0001c3ee] 224a                      movea.l    a2,a1
[0001c3f0] 4eb9 0007 6f44            jsr        memcpy
[0001c3f6] 41eb 0016                 lea.l      22(a3),a0
[0001c3fa] 23c8 000a 1324            move.l     a0,$000A1324
[0001c400] 2279 000a 1330            movea.l    $000A1330,a1
[0001c406] 2348 0008                 move.l     a0,8(a1)
[0001c40a] 41f9 000a 12d6            lea.l      WI_ALERT,a0
[0001c410] 4eb9 0004 f41a            jsr        Awi_create
[0001c416] 2848                      movea.l    a0,a4
[0001c418] 200c                      move.l     a4,d0
[0001c41a] 6734                      beq.s      al_make_3
[0001c41c] 2252                      movea.l    (a2),a1
[0001c41e] 4869 0168                 pea.l      360(a1)
[0001c422] 43eb 003a                 lea.l      58(a3),a1
[0001c426] 4eb9 0001 47a8            jsr        wi_pos
[0001c42c] 584f                      addq.w     #4,a7
[0001c42e] 2897                      move.l     (a7),(a4)
[0001c430] 274c 0012                 move.l     a4,18(a3)
[0001c434] 204c                      movea.l    a4,a0
[0001c436] 4eb9 0001 c4e2            jsr        set_alert
[0001c43c] 204c                      movea.l    a4,a0
[0001c43e] 226c 000c                 movea.l    12(a4),a1
[0001c442] 4e91                      jsr        (a1)
[0001c444] 4a40                      tst.w      d0
[0001c446] 670c                      beq.s      al_make_2
[0001c448] 204c                      movea.l    a4,a0
[0001c44a] 4eb9 0001 c6ac            jsr        term
al_make_3:
[0001c450] 91c8                      suba.l     a0,a0
[0001c452] 6002                      bra.s      al_make_4
al_make_2:
[0001c454] 204c                      movea.l    a4,a0
al_make_4:
[0001c456] 584f                      addq.w     #4,a7
[0001c458] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001c45c] 4e75                      rts

al_service:
[0001c45e] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0001c462] 2448                      movea.l    a0,a2
[0001c464] 3600                      move.w     d0,d3
[0001c466] 2849                      movea.l    a1,a4
[0001c468] 2650                      movea.l    (a0),a3
[0001c46a] 5540                      subq.w     #2,d0
[0001c46c] 6708                      beq.s      al_service_1
[0001c46e] 907c 270e                 sub.w      #$270E,d0
[0001c472] 6712                      beq.s      al_service_2
[0001c474] 601e                      bra.s      al_service_3
al_service_1:
[0001c476] 204a                      movea.l    a2,a0
[0001c478] 6100 fedc                 bsr        acc_alert
[0001c47c] 204a                      movea.l    a2,a0
[0001c47e] 4eb9 0001 c6ac            jsr        term
[0001c484] 601c                      bra.s      al_service_4
al_service_2:
[0001c486] 226b 0004                 movea.l    4(a3),a1
[0001c48a] 204a                      movea.l    a2,a0
[0001c48c] 4eb9 0001 45a2            jsr        new_name
[0001c492] 600e                      bra.s      al_service_4
al_service_3:
[0001c494] 224c                      movea.l    a4,a1
[0001c496] 3003                      move.w     d3,d0
[0001c498] 204a                      movea.l    a2,a0
[0001c49a] 4eb9 0005 1276            jsr        Awi_service
[0001c4a0] 6002                      bra.s      al_service_5
al_service_4:
[0001c4a2] 7001                      moveq.l    #1,d0
al_service_5:
[0001c4a4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001c4a8] 4e75                      rts

find_brk:
[0001c4aa] 5348                      subq.w     #1,a0
find_brk_2:
[0001c4ac] 5248                      addq.w     #1,a0
[0001c4ae] 1010                      move.b     (a0),d0
[0001c4b0] 670c                      beq.s      find_brk_1
[0001c4b2] b03c 007c                 cmp.b      #$7C,d0
[0001c4b6] 6706                      beq.s      find_brk_1
[0001c4b8] b03c 005d                 cmp.b      #$5D,d0
[0001c4bc] 66ee                      bne.s      find_brk_2
find_brk_1:
[0001c4be] 1010                      move.b     (a0),d0
[0001c4c0] 670e                      beq.s      find_brk_3
[0001c4c2] b03c 005d                 cmp.b      #$5D,d0
[0001c4c6] 6608                      bne.s      find_brk_3
[0001c4c8] 0c28 005b ffff            cmpi.b     #$5B,-1(a0)
[0001c4ce] 67dc                      beq.s      find_brk_2
find_brk_3:
[0001c4d0] 0c10 007c                 cmpi.b     #$7C,(a0)
[0001c4d4] 6604                      bne.s      find_brk_4
[0001c4d6] 7001                      moveq.l    #1,d0
[0001c4d8] 6002                      bra.s      find_brk_5
find_brk_4:
[0001c4da] 4240                      clr.w      d0
find_brk_5:
[0001c4dc] 3280                      move.w     d0,(a1)
[0001c4de] 4210                      clr.b      (a0)
[0001c4e0] 4e75                      rts

set_alert:
[0001c4e2] 48e7 003c                 movem.l    a2-a5,-(a7)
[0001c4e6] 4fef fefe                 lea.l      -258(a7),a7
[0001c4ea] 2848                      movea.l    a0,a4
[0001c4ec] 2650                      movea.l    (a0),a3
[0001c4ee] 246c 0014                 movea.l    20(a4),a2
[0001c4f2] 226b 0004                 movea.l    4(a3),a1
[0001c4f6] 2269 0004                 movea.l    4(a1),a1
[0001c4fa] 41ef 0002                 lea.l      2(a7),a0
[0001c4fe] 4eb9 0007 6950            jsr        strcpy
[0001c504] 41f9 000a 0ee2            lea.l      IM_NONE,a0
[0001c50a] 102f 0003                 move.b     3(a7),d0
[0001c50e] 4880                      ext.w      d0
[0001c510] 907c 0030                 sub.w      #$0030,d0
[0001c514] b07c 0004                 cmp.w      #$0004,d0
[0001c518] 6240                      bhi.s      set_alert_1
[0001c51a] d040                      add.w      d0,d0
[0001c51c] 303b 0006                 move.w     $0001C524(pc,d0.w),d0
[0001c520] 4efb 0002                 jmp        $0001C524(pc,d0.w)
J8:
[0001c524] 000a                      dc.w $000a   ; set_alert_2-J8
[0001c526] 0010                      dc.w $0010   ; set_alert_3-J8
[0001c528] 001a                      dc.w $001a   ; set_alert_4-J8
[0001c52a] 0024                      dc.w $0024   ; set_alert_5-J8
[0001c52c] 002e                      dc.w $002e   ; set_alert_6-J8
set_alert_2:
[0001c52e] 2548 003c                 move.l     a0,60(a2)
[0001c532] 6026                      bra.s      set_alert_1
set_alert_3:
[0001c534] 257c 000a 0e54 003c       move.l     #IM_EXCLAM,60(a2)
[0001c53c] 601c                      bra.s      set_alert_1
set_alert_4:
[0001c53e] 257c 000a 0f70 003c       move.l     #IM_QUEST,60(a2)
[0001c546] 6012                      bra.s      set_alert_1
set_alert_5:
[0001c548] 257c 000a 0ffe 003c       move.l     #IM_STOP,60(a2)
[0001c550] 6008                      bra.s      set_alert_1
set_alert_6:
[0001c552] 257c 000a 1088 003c       move.l     #IM_TIME,60(a2)
set_alert_1:
[0001c55a] 7004                      moveq.l    #4,d0
[0001c55c] 224a                      movea.l    a2,a1
[0001c55e] 204c                      movea.l    a4,a0
[0001c560] 4eb9 0002 f23c            jsr        oe_beself
[0001c566] 7005                      moveq.l    #5,d0
[0001c568] 224a                      movea.l    a2,a1
[0001c56a] 204c                      movea.l    a4,a0
[0001c56c] 4eb9 0002 f23c            jsr        oe_beself
[0001c572] 7006                      moveq.l    #6,d0
[0001c574] 224a                      movea.l    a2,a1
[0001c576] 204c                      movea.l    a4,a0
[0001c578] 4eb9 0002 f23c            jsr        oe_beself
[0001c57e] 7007                      moveq.l    #7,d0
[0001c580] 224a                      movea.l    a2,a1
[0001c582] 204c                      movea.l    a4,a0
[0001c584] 4eb9 0002 f23c            jsr        oe_beself
[0001c58a] 7008                      moveq.l    #8,d0
[0001c58c] 224a                      movea.l    a2,a1
[0001c58e] 204c                      movea.l    a4,a0
[0001c590] 4eb9 0002 f23c            jsr        oe_beself
[0001c596] 7009                      moveq.l    #9,d0
[0001c598] 224a                      movea.l    a2,a1
[0001c59a] 204c                      movea.l    a4,a0
[0001c59c] 4eb9 0002 f23c            jsr        oe_beself
[0001c5a2] 700a                      moveq.l    #10,d0
[0001c5a4] 224a                      movea.l    a2,a1
[0001c5a6] 204c                      movea.l    a4,a0
[0001c5a8] 4eb9 0002 f23c            jsr        oe_beself
[0001c5ae] 700b                      moveq.l    #11,d0
[0001c5b0] 224a                      movea.l    a2,a1
[0001c5b2] 204c                      movea.l    a4,a0
[0001c5b4] 4eb9 0002 f23c            jsr        oe_beself
[0001c5ba] 47ef 0006                 lea.l      6(a7),a3
[0001c5be] 43d7                      lea.l      (a7),a1
[0001c5c0] 204b                      movea.l    a3,a0
[0001c5c2] 6100 fee6                 bsr        find_brk
[0001c5c6] 2a48                      movea.l    a0,a5
[0001c5c8] 224b                      movea.l    a3,a1
[0001c5ca] 7004                      moveq.l    #4,d0
[0001c5cc] 204a                      movea.l    a2,a0
[0001c5ce] 4eb9 0004 afe0            jsr        Aob_puttext
[0001c5d4] 3017                      move.w     (a7),d0
[0001c5d6] 6774                      beq.s      set_alert_7
[0001c5d8] 47ed 0001                 lea.l      1(a5),a3
[0001c5dc] 43d7                      lea.l      (a7),a1
[0001c5de] 204b                      movea.l    a3,a0
[0001c5e0] 6100 fec8                 bsr        find_brk
[0001c5e4] 2a48                      movea.l    a0,a5
[0001c5e6] 224b                      movea.l    a3,a1
[0001c5e8] 7005                      moveq.l    #5,d0
[0001c5ea] 204a                      movea.l    a2,a0
[0001c5ec] 4eb9 0004 afe0            jsr        Aob_puttext
[0001c5f2] 3017                      move.w     (a7),d0
[0001c5f4] 6756                      beq.s      set_alert_7
[0001c5f6] 47ed 0001                 lea.l      1(a5),a3
[0001c5fa] 43d7                      lea.l      (a7),a1
[0001c5fc] 204b                      movea.l    a3,a0
[0001c5fe] 6100 feaa                 bsr        find_brk
[0001c602] 2a48                      movea.l    a0,a5
[0001c604] 224b                      movea.l    a3,a1
[0001c606] 7006                      moveq.l    #6,d0
[0001c608] 204a                      movea.l    a2,a0
[0001c60a] 4eb9 0004 afe0            jsr        Aob_puttext
[0001c610] 3017                      move.w     (a7),d0
[0001c612] 6738                      beq.s      set_alert_7
[0001c614] 47ed 0001                 lea.l      1(a5),a3
[0001c618] 43d7                      lea.l      (a7),a1
[0001c61a] 204b                      movea.l    a3,a0
[0001c61c] 6100 fe8c                 bsr        find_brk
[0001c620] 2a48                      movea.l    a0,a5
[0001c622] 224b                      movea.l    a3,a1
[0001c624] 7007                      moveq.l    #7,d0
[0001c626] 204a                      movea.l    a2,a0
[0001c628] 4eb9 0004 afe0            jsr        Aob_puttext
[0001c62e] 3017                      move.w     (a7),d0
[0001c630] 671a                      beq.s      set_alert_7
[0001c632] 47ed 0001                 lea.l      1(a5),a3
[0001c636] 43d7                      lea.l      (a7),a1
[0001c638] 204b                      movea.l    a3,a0
[0001c63a] 6100 fe6e                 bsr        find_brk
[0001c63e] 2a48                      movea.l    a0,a5
[0001c640] 224b                      movea.l    a3,a1
[0001c642] 7008                      moveq.l    #8,d0
[0001c644] 204a                      movea.l    a2,a0
[0001c646] 4eb9 0004 afe0            jsr        Aob_puttext
set_alert_7:
[0001c64c] 47ed 0002                 lea.l      2(a5),a3
[0001c650] 43d7                      lea.l      (a7),a1
[0001c652] 204b                      movea.l    a3,a0
[0001c654] 6100 fe54                 bsr        find_brk
[0001c658] 2a48                      movea.l    a0,a5
[0001c65a] 224b                      movea.l    a3,a1
[0001c65c] 7009                      moveq.l    #9,d0
[0001c65e] 204a                      movea.l    a2,a0
[0001c660] 4eb9 0004 afe0            jsr        Aob_puttext
[0001c666] 3017                      move.w     (a7),d0
[0001c668] 6738                      beq.s      set_alert_8
[0001c66a] 47ed 0001                 lea.l      1(a5),a3
[0001c66e] 43d7                      lea.l      (a7),a1
[0001c670] 204b                      movea.l    a3,a0
[0001c672] 6100 fe36                 bsr        find_brk
[0001c676] 2a48                      movea.l    a0,a5
[0001c678] 224b                      movea.l    a3,a1
[0001c67a] 700a                      moveq.l    #10,d0
[0001c67c] 204a                      movea.l    a2,a0
[0001c67e] 4eb9 0004 afe0            jsr        Aob_puttext
[0001c684] 3017                      move.w     (a7),d0
[0001c686] 671a                      beq.s      set_alert_8
[0001c688] 47ed 0001                 lea.l      1(a5),a3
[0001c68c] 43d7                      lea.l      (a7),a1
[0001c68e] 204b                      movea.l    a3,a0
[0001c690] 6100 fe18                 bsr        find_brk
[0001c694] 2a48                      movea.l    a0,a5
[0001c696] 224b                      movea.l    a3,a1
[0001c698] 700b                      moveq.l    #11,d0
[0001c69a] 204a                      movea.l    a2,a0
[0001c69c] 4eb9 0004 afe0            jsr        Aob_puttext
set_alert_8:
[0001c6a2] 4fef 0102                 lea.l      258(a7),a7
[0001c6a6] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0001c6aa] 4e75                      rts

term:
[0001c6ac] 2f0a                      move.l     a2,-(a7)
[0001c6ae] 2f0b                      move.l     a3,-(a7)
[0001c6b0] 2448                      movea.l    a0,a2
[0001c6b2] 2650                      movea.l    (a0),a3
[0001c6b4] 226b 0004                 movea.l    4(a3),a1
[0001c6b8] 42a9 0012                 clr.l      18(a1)
[0001c6bc] 302a 0056                 move.w     86(a2),d0
[0001c6c0] c07c 0800                 and.w      #$0800,d0
[0001c6c4] 6716                      beq.s      term_1
[0001c6c6] 43ea 002c                 lea.l      44(a2),a1
[0001c6ca] 206b 0004                 movea.l    4(a3),a0
[0001c6ce] 41e8 003a                 lea.l      58(a0),a0
[0001c6d2] 7008                      moveq.l    #8,d0
[0001c6d4] 4eb9 0007 6f44            jsr        memcpy
[0001c6da] 6014                      bra.s      term_2
term_1:
[0001c6dc] 7008                      moveq.l    #8,d0
[0001c6de] 43ea 0024                 lea.l      36(a2),a1
[0001c6e2] 206b 0004                 movea.l    4(a3),a0
[0001c6e6] 41e8 003a                 lea.l      58(a0),a0
[0001c6ea] 4eb9 0007 6f44            jsr        memcpy
term_2:
[0001c6f0] 204b                      movea.l    a3,a0
[0001c6f2] 4eb9 0004 7e26            jsr        Ax_free
[0001c6f8] 204a                      movea.l    a2,a0
[0001c6fa] 4eb9 0005 0330            jsr        Awi_delete
[0001c700] 265f                      movea.l    (a7)+,a3
[0001c702] 245f                      movea.l    (a7)+,a2
[0001c704] 4e75                      rts
