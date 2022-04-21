
noop:
[00063314] 4e75                      rts

Aus_create23x:
[00063316] 2f0a                      move.l     a2,-(a7)
[00063318] 2f0b                      move.l     a3,-(a7)
[0006331a] 2648                      movea.l    a0,a3
[0006331c] 7020                      moveq.l    #32,d0
[0006331e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00063324] 2448                      movea.l    a0,a2
[00063326] 200a                      move.l     a2,d0
[00063328] 6604                      bne.s      Aus_create23x_1
[0006332a] 91c8                      suba.l     a0,a0
[0006332c] 6022                      bra.s      Aus_create23x_2
Aus_create23x_1:
[0006332e] 7018                      moveq.l    #24,d0
[00063330] 224b                      movea.l    a3,a1
[00063332] 204a                      movea.l    a2,a0
[00063334] 4eb9 0007 6f44            jsr        memcpy
[0006333a] 41f9 000d 7a44            lea.l      $000D7A44,a0
[00063340] 4eb9 0004 36d6            jsr        Ast_create
[00063346] 2548 001c                 move.l     a0,28(a2)
[0006334a] 2548 0018                 move.l     a0,24(a2)
[0006334e] 204a                      movea.l    a2,a0
Aus_create23x_2:
[00063350] 265f                      movea.l    (a7)+,a3
[00063352] 245f                      movea.l    (a7)+,a2
[00063354] 4e75                      rts

Aob_create23x:
[00063356] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0006335a] 554f                      subq.w     #2,a7
[0006335c] 2848                      movea.l    a0,a4
[0006335e] 7600                      moveq.l    #0,d3
[00063360] 2448                      movea.l    a0,a2
Aob_create23x_1:
[00063362] d6bc 0000 0018            add.l      #$00000018,d3
[00063368] 7020                      moveq.l    #32,d0
[0006336a] 204a                      movea.l    a2,a0
[0006336c] 45ea 0018                 lea.l      24(a2),a2
[00063370] c068 0008                 and.w      8(a0),d0
[00063374] 67ec                      beq.s      Aob_create23x_1
[00063376] 2003                      move.l     d3,d0
[00063378] 4eb9 0004 7cc8            jsr        Ax_malloc
[0006337e] 2648                      movea.l    a0,a3
[00063380] 200b                      move.l     a3,d0
[00063382] 6700 00d2                 beq        Aob_create23x_2
[00063386] 224c                      movea.l    a4,a1
[00063388] 2003                      move.l     d3,d0
[0006338a] 4eb9 0007 6f44            jsr        memcpy
[00063390] 4257                      clr.w      (a7)
[00063392] 244b                      movea.l    a3,a2
[00063394] 2a4a                      movea.l    a2,a5
Aob_create23x_12:
[00063396] 302a 0008                 move.w     8(a2),d0
[0006339a] c07c 8000                 and.w      #$8000,d0
[0006339e] 6600 00ba                 bne        Aob_create23x_3
[000633a2] 322a 000a                 move.w     10(a2),d1
[000633a6] c27c 2000                 and.w      #$2000,d1
[000633aa] 6600 00ae                 bne        Aob_create23x_3
[000633ae] 142a 0007                 move.b     7(a2),d2
[000633b2] 4882                      ext.w      d2
[000633b4] 947c 0015                 sub.w      #$0015,d2
[000633b8] b47c 000c                 cmp.w      #$000C,d2
[000633bc] 6200 0094                 bhi        Aob_create23x_4
[000633c0] d442                      add.w      d2,d2
[000633c2] 343b 2006                 move.w     $000633CA(pc,d2.w),d2
[000633c6] 4efb 2002                 jmp        $000633CA(pc,d2.w)
J60:
[000633ca] 001a                      dc.w $001a   ; Aob_create23x_5-J60
[000633cc] 001a                      dc.w $001a   ; Aob_create23x_5-J60
[000633ce] 0054                      dc.w $0054   ; Aob_create23x_6-J60
[000633d0] 002c                      dc.w $002c   ; Aob_create23x_7-J60
[000633d2] 0088                      dc.w $0088   ; Aob_create23x_4-J60
[000633d4] 0078                      dc.w $0078   ; Aob_create23x_8-J60
[000633d6] 0088                      dc.w $0088   ; Aob_create23x_4-J60
[000633d8] 0078                      dc.w $0078   ; Aob_create23x_8-J60
[000633da] 001a                      dc.w $001a   ; Aob_create23x_5-J60
[000633dc] 001a                      dc.w $001a   ; Aob_create23x_5-J60
[000633de] 0066                      dc.w $0066   ; Aob_create23x_9-J60
[000633e0] 0078                      dc.w $0078   ; Aob_create23x_8-J60
[000633e2] 0066                      dc.w $0066   ; Aob_create23x_9-J60
Aob_create23x_5:
[000633e4] 206a 000c                 movea.l    12(a2),a0
[000633e8] 4eb9 0004 a146            jsr        Ate_create
[000633ee] 2a48                      movea.l    a0,a5
[000633f0] 2548 000c                 move.l     a0,12(a2)
[000633f4] 605c                      bra.s      Aob_create23x_4
Aob_create23x_7:
[000633f6] 206a 000c                 movea.l    12(a2),a0
[000633fa] 6100 ff1a                 bsr        Aus_create23x
[000633fe] 2848                      movea.l    a0,a4
[00063400] 2a4c                      movea.l    a4,a5
[00063402] 254d 000c                 move.l     a5,12(a2)
[00063406] 202c 0008                 move.l     8(a4),d0
[0006340a] 670a                      beq.s      Aob_create23x_10
[0006340c] 43d7                      lea.l      (a7),a1
[0006340e] 2c40                      movea.l    d0,a6
[00063410] 204a                      movea.l    a2,a0
[00063412] 7001                      moveq.l    #1,d0
[00063414] 4e96                      jsr        (a6)
Aob_create23x_10:
[00063416] 0c57 ffff                 cmpi.w     #$FFFF,(a7)
[0006341a] 6636                      bne.s      Aob_create23x_4
[0006341c] 6038                      bra.s      Aob_create23x_2
Aob_create23x_6:
[0006341e] 206a 000c                 movea.l    12(a2),a0
[00063422] 4eb9 0004 a110            jsr        Aim_create
[00063428] 2a48                      movea.l    a0,a5
[0006342a] 2548 000c                 move.l     a0,12(a2)
[0006342e] 6022                      bra.s      Aob_create23x_4
Aob_create23x_9:
[00063430] 206a 000c                 movea.l    12(a2),a0
[00063434] 4eb9 0004 9e38            jsr        Aic_create
[0006343a] 2a48                      movea.l    a0,a5
[0006343c] 2548 000c                 move.l     a0,12(a2)
[00063440] 6010                      bra.s      Aob_create23x_4
Aob_create23x_8:
[00063442] 206a 000c                 movea.l    12(a2),a0
[00063446] 4eb9 0004 36d6            jsr        Ast_create
[0006344c] 2a48                      movea.l    a0,a5
[0006344e] 2548 000c                 move.l     a0,12(a2)
Aob_create23x_4:
[00063452] 200d                      move.l     a5,d0
[00063454] 6604                      bne.s      Aob_create23x_3
Aob_create23x_2:
[00063456] 91c8                      suba.l     a0,a0
[00063458] 6012                      bra.s      Aob_create23x_11
Aob_create23x_3:
[0006345a] 7020                      moveq.l    #32,d0
[0006345c] 204a                      movea.l    a2,a0
[0006345e] 45ea 0018                 lea.l      24(a2),a2
[00063462] c068 0008                 and.w      8(a0),d0
[00063466] 6700 ff2e                 beq        Aob_create23x_12
[0006346a] 204b                      movea.l    a3,a0
Aob_create23x_11:
[0006346c] 544f                      addq.w     #2,a7
[0006346e] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[00063472] 4e75                      rts

Awi_create23x:
[00063474] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[00063478] 2648                      movea.l    a0,a3
[0006347a] 203c 0000 00a2            move.l     #$000000A2,d0
[00063480] 4eb9 0004 7cc8            jsr        Ax_malloc
[00063486] 2448                      movea.l    a0,a2
[00063488] 203c 0000 008e            move.l     #$0000008E,d0
[0006348e] 224b                      movea.l    a3,a1
[00063490] 4eb9 0007 6f44            jsr        memcpy
[00063496] 257c 0005 0f9c 008e       move.l     #Awi_iconify,142(a2)
[0006349e] 257c 0005 117c 0092       move.l     #Awi_uniconify,146(a2)
[000634a6] 257c 0005 2328 0096       move.l     #Awi_gemscript,150(a2)
[000634ae] 41f9 000d 7a44            lea.l      $000D7A44,a0
[000634b4] 4eb9 0004 36d6            jsr        Ast_create
[000634ba] 2548 009e                 move.l     a0,158(a2)
[000634be] 2548 009a                 move.l     a0,154(a2)
[000634c2] 202a 0014                 move.l     20(a2),d0
[000634c6] 6716                      beq.s      Awi_create23x_1
[000634c8] 2040                      movea.l    d0,a0
[000634ca] 6100 fe8a                 bsr        Aob_create23x
[000634ce] 2548 0014                 move.l     a0,20(a2)
[000634d2] 2008                      move.l     a0,d0
[000634d4] 6700 007a                 beq.w      Awi_create23x_2
[000634d8] 4eb9 0004 a25e            jsr        Aob_fix
Awi_create23x_1:
[000634de] 202a 0018                 move.l     24(a2),d0
[000634e2] 6714                      beq.s      Awi_create23x_3
[000634e4] 2040                      movea.l    d0,a0
[000634e6] 6100 fe6e                 bsr        Aob_create23x
[000634ea] 2548 0018                 move.l     a0,24(a2)
[000634ee] 2008                      move.l     a0,d0
[000634f0] 6754                      beq.s      Awi_create23x_4
[000634f2] 4eb9 0004 a25e            jsr        Aob_fix
Awi_create23x_3:
[000634f8] 202a 005e                 move.l     94(a2),d0
[000634fc] 671e                      beq.s      Awi_create23x_5
[000634fe] 2040                      movea.l    d0,a0
[00063500] 6100 fe54                 bsr        Aob_create23x
[00063504] 2548 005e                 move.l     a0,94(a2)
[00063508] 2008                      move.l     a0,d0
[0006350a] 6730                      beq.s      Awi_create23x_6
[0006350c] 4eb9 0004 a25e            jsr        Aob_fix
[00063512] 206a 005e                 movea.l    94(a2),a0
[00063516] 4eb9 0004 975e            jsr        Ame_namefix
Awi_create23x_5:
[0006351c] 202a 005a                 move.l     90(a2),d0
[00063520] 673a                      beq.s      Awi_create23x_7
[00063522] 2040                      movea.l    d0,a0
[00063524] 4eb9 0004 9e38            jsr        Aic_create
[0006352a] 2548 005a                 move.l     a0,90(a2)
[0006352e] 2008                      move.l     a0,d0
[00063530] 662a                      bne.s      Awi_create23x_7
[00063532] 206a 005e                 movea.l    94(a2),a0
[00063536] 4eb9 0004 9b7c            jsr        Aob_delete
Awi_create23x_6:
[0006353c] 206a 0018                 movea.l    24(a2),a0
[00063540] 4eb9 0004 9b7c            jsr        Aob_delete
Awi_create23x_4:
[00063546] 206a 0014                 movea.l    20(a2),a0
[0006354a] 4eb9 0004 9b7c            jsr        Aob_delete
Awi_create23x_2:
[00063550] 204a                      movea.l    a2,a0
[00063552] 4eb9 0004 7e26            jsr        Ax_free
[00063558] 6000 00f0                 bra        Awi_create23x_8
Awi_create23x_7:
[0006355c] 204a                      movea.l    a2,a0
[0006355e] 4eb9 0004 b5cc            jsr        Awi_uoself
[00063564] 202a 004a                 move.l     74(a2),d0
[00063568] 670c                      beq.s      Awi_create23x_9
[0006356a] 2040                      movea.l    d0,a0
[0006356c] 4eb9 0004 36d6            jsr        Ast_create
[00063572] 2548 004a                 move.l     a0,74(a2)
Awi_create23x_9:
[00063576] 202a 004e                 move.l     78(a2),d0
[0006357a] 670c                      beq.s      Awi_create23x_10
[0006357c] 2040                      movea.l    d0,a0
[0006357e] 4eb9 0004 36d6            jsr        Ast_create
[00063584] 2548 004e                 move.l     a0,78(a2)
Awi_create23x_10:
[00063588] 357c 0004 0056            move.w     #$0004,86(a2)
[0006358e] 357c ffff 0058            move.w     #$FFFF,88(a2)
[00063594] 357c ffff 001c            move.w     #$FFFF,28(a2)
[0006359a] 426a 0052                 clr.w      82(a2)
[0006359e] 4243                      clr.w      d3
[000635a0] 47f9 0010 6fea            lea.l      _ACSv_winds,a3
[000635a6] 4bf9 000d 3dc8            lea.l      Aroot_wi,a5
[000635ac] 49f9 0010 1f12            lea.l      ACSblk,a4
[000635b2] 6000 007a                 bra.w      Awi_create23x_11
Awi_create23x_16:
[000635b6] 3003                      move.w     d3,d0
[000635b8] e548                      lsl.w      #2,d0
[000635ba] 2233 0000                 move.l     0(a3,d0.w),d1
[000635be] 666c                      bne.s      Awi_create23x_12
[000635c0] b679 0010 75ee            cmp.w      _Wmax_wi,d3
[000635c6] 6f06                      ble.s      Awi_create23x_13
[000635c8] 33c3 0010 75ee            move.w     d3,_Wmax_wi
Awi_create23x_13:
[000635ce] 3003                      move.w     d3,d0
[000635d0] e548                      lsl.w      #2,d0
[000635d2] 278a 0000                 move.l     a2,0(a3,d0.w)
[000635d6] 2215                      move.l     (a5),d1
[000635d8] 6716                      beq.s      Awi_create23x_14
[000635da] 7401                      moveq.l    #1,d2
[000635dc] c46a 0054                 and.w      84(a2),d2
[000635e0] 670e                      beq.s      Awi_create23x_14
[000635e2] 224a                      movea.l    a2,a1
[000635e4] 2041                      movea.l    d1,a0
[000635e6] 2c41                      movea.l    d1,a6
[000635e8] 2c6e 0004                 movea.l    4(a6),a6
[000635ec] 7064                      moveq.l    #100,d0
[000635ee] 4e96                      jsr        (a6)
Awi_create23x_14:
[000635f0] 302a 0024                 move.w     36(a2),d0
[000635f4] 2054                      movea.l    (a4),a0
[000635f6] c1e8 0012                 muls.w     18(a0),d0
[000635fa] 3540 0024                 move.w     d0,36(a2)
[000635fe] 322a 0026                 move.w     38(a2),d1
[00063602] 2054                      movea.l    (a4),a0
[00063604] c3e8 0014                 muls.w     20(a0),d1
[00063608] 3541 0026                 move.w     d1,38(a2)
[0006360c] 302a 0028                 move.w     40(a2),d0
[00063610] 2054                      movea.l    (a4),a0
[00063612] c1e8 0012                 muls.w     18(a0),d0
[00063616] 3540 0028                 move.w     d0,40(a2)
[0006361a] 322a 002a                 move.w     42(a2),d1
[0006361e] 2054                      movea.l    (a4),a0
[00063620] c3e8 0014                 muls.w     20(a0),d1
[00063624] 3541 002a                 move.w     d1,42(a2)
[00063628] 204a                      movea.l    a2,a0
[0006362a] 6020                      bra.s      Awi_create23x_15
Awi_create23x_12:
[0006362c] 5243                      addq.w     #1,d3
Awi_create23x_11:
[0006362e] b67c 0100                 cmp.w      #$0100,d3
[00063632] 6d00 ff82                 blt.w      Awi_create23x_16
[00063636] 2279 000d 99d6            movea.l    _globl,a1
[0006363c] 41f9 000c 97b8            lea.l      _A_ERR_WISLOT,a0
[00063642] 7001                      moveq.l    #1,d0
[00063644] 4eb9 0006 be76            jsr        mt_form_alert
Awi_create23x_8:
[0006364a] 91c8                      suba.l     a0,a0
Awi_create23x_15:
[0006364c] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[00063650] 4e75                      rts

Awi_arrowed23x:
[00063652] 7201                      moveq.l    #1,d1
[00063654] 4eb9 0004 bcc8            jsr        Awi_arrowed
[0006365a] 4e75                      rts

Af_first230:
[0006365c] 93c9                      suba.l     a1,a1
[0006365e] 4eb9 0004 798a            jsr        Af_first
[00063664] 4e75                      rts

Af_next230:
[00063666] 91c8                      suba.l     a0,a0
[00063668] 4eb9 0004 79c8            jsr        Af_next
[0006366e] 4e75                      rts

	.data

xd7a44:
[000d7a44]                           dc.b $00
[000d7a45]                           dc.b $00
