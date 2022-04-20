
Ash_error:
[000526c2] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[000526c6] 4fef ff80                 lea.l      -128(a7),a7
[000526ca] 3800                      move.w     d0,d4
[000526cc] 2848                      movea.l    a0,a4
[000526ce] 76fe                      moveq.l    #-2,d3
[000526d0] 95ca                      suba.l     a2,a2
[000526d2] 47f9 0010 1f12            lea.l      ACSblk,a3
[000526d8] 3004                      move.w     d4,d0
[000526da] b07c 0012                 cmp.w      #$0012,d0
[000526de] 6200 01c8                 bhi        Ash_error_1
[000526e2] d040                      add.w      d0,d0
[000526e4] 303b 0006                 move.w     $000526EC(pc,d0.w),d0
[000526e8] 4efb 0002                 jmp        $000526EC(pc,d0.w)
J45:
[000526ec] 01bc                      dc.w $01bc   ; Ash_error_1-J45
[000526ee] 01bc                      dc.w $01bc   ; Ash_error_1-J45
[000526f0] 0026                      dc.w $0026   ; Ash_error_2-J45
[000526f2] 0034                      dc.w $0034   ; Ash_error_3-J45
[000526f4] 0042                      dc.w $0042   ; Ash_error_4-J45
[000526f6] 0050                      dc.w $0050   ; Ash_error_5-J45
[000526f8] 005e                      dc.w $005e   ; Ash_error_6-J45
[000526fa] 006c                      dc.w $006c   ; Ash_error_7-J45
[000526fc] 007a                      dc.w $007a   ; Ash_error_8-J45
[000526fe] 009a                      dc.w $009a   ; Ash_error_9-J45
[00052700] 00ba                      dc.w $00ba   ; Ash_error_10-J45
[00052702] 00da                      dc.w $00da   ; Ash_error_11-J45
[00052704] 00fa                      dc.w $00fa   ; Ash_error_12-J45
[00052706] 00fa                      dc.w $00fa   ; Ash_error_12-J45
[00052708] 00fa                      dc.w $00fa   ; Ash_error_12-J45
[0005270a] 00fa                      dc.w $00fa   ; Ash_error_12-J45
[0005270c] 01a2                      dc.w $01a2   ; Ash_error_13-J45
[0005270e] 01ae                      dc.w $01ae   ; Ash_error_14-J45
[00052710] 01ae                      dc.w $01ae   ; Ash_error_14-J45
Ash_error_2:
[00052712] 2053                      movea.l    (a3),a0
[00052714] 2268 023c                 movea.l    572(a0),a1
[00052718] 2469 0124                 movea.l    292(a1),a2
[0005271c] 6000 0186                 bra        Ash_error_15
Ash_error_3:
[00052720] 2053                      movea.l    (a3),a0
[00052722] 2268 023c                 movea.l    572(a0),a1
[00052726] 2469 014c                 movea.l    332(a1),a2
[0005272a] 6000 0178                 bra        Ash_error_15
Ash_error_4:
[0005272e] 2053                      movea.l    (a3),a0
[00052730] 2268 023c                 movea.l    572(a0),a1
[00052734] 2469 010c                 movea.l    268(a1),a2
[00052738] 6000 016a                 bra        Ash_error_15
Ash_error_5:
[0005273c] 2053                      movea.l    (a3),a0
[0005273e] 2268 023c                 movea.l    572(a0),a1
[00052742] 2469 0154                 movea.l    340(a1),a2
[00052746] 6000 015c                 bra        Ash_error_15
Ash_error_6:
[0005274a] 2053                      movea.l    (a3),a0
[0005274c] 2268 023c                 movea.l    572(a0),a1
[00052750] 2469 0140                 movea.l    320(a1),a2
[00052754] 6000 014e                 bra        Ash_error_15
Ash_error_7:
[00052758] 2053                      movea.l    (a3),a0
[0005275a] 2268 023c                 movea.l    572(a0),a1
[0005275e] 2469 0120                 movea.l    288(a1),a2
[00052762] 6000 0140                 bra        Ash_error_15
Ash_error_8:
[00052766] 200c                      move.l     a4,d0
[00052768] 670e                      beq.s      Ash_error_16
[0005276a] 2053                      movea.l    (a3),a0
[0005276c] 2268 023c                 movea.l    572(a0),a1
[00052770] 2469 0148                 movea.l    328(a1),a2
[00052774] 6000 014c                 bra        Ash_error_17
Ash_error_16:
[00052778] 2053                      movea.l    (a3),a0
[0005277a] 2268 023c                 movea.l    572(a0),a1
[0005277e] 2469 0144                 movea.l    324(a1),a2
[00052782] 6000 013e                 bra        Ash_error_17
Ash_error_9:
[00052786] 200c                      move.l     a4,d0
[00052788] 670e                      beq.s      Ash_error_18
[0005278a] 2053                      movea.l    (a3),a0
[0005278c] 2268 023c                 movea.l    572(a0),a1
[00052790] 2469 0108                 movea.l    264(a1),a2
[00052794] 6000 012c                 bra        Ash_error_17
Ash_error_18:
[00052798] 2053                      movea.l    (a3),a0
[0005279a] 2268 023c                 movea.l    572(a0),a1
[0005279e] 2469 0104                 movea.l    260(a1),a2
[000527a2] 6000 011e                 bra        Ash_error_17
Ash_error_10:
[000527a6] 200c                      move.l     a4,d0
[000527a8] 670e                      beq.s      Ash_error_19
[000527aa] 2053                      movea.l    (a3),a0
[000527ac] 2268 023c                 movea.l    572(a0),a1
[000527b0] 2469 016c                 movea.l    364(a1),a2
[000527b4] 6000 010c                 bra        Ash_error_17
Ash_error_19:
[000527b8] 2053                      movea.l    (a3),a0
[000527ba] 2268 023c                 movea.l    572(a0),a1
[000527be] 2469 0168                 movea.l    360(a1),a2
[000527c2] 6000 00fe                 bra        Ash_error_17
Ash_error_11:
[000527c6] 200c                      move.l     a4,d0
[000527c8] 670e                      beq.s      Ash_error_20
[000527ca] 2053                      movea.l    (a3),a0
[000527cc] 2268 023c                 movea.l    572(a0),a1
[000527d0] 2469 015c                 movea.l    348(a1),a2
[000527d4] 6000 00ec                 bra        Ash_error_17
Ash_error_20:
[000527d8] 2053                      movea.l    (a3),a0
[000527da] 2268 023c                 movea.l    572(a0),a1
[000527de] 2469 0158                 movea.l    344(a1),a2
[000527e2] 6000 00de                 bra        Ash_error_17
Ash_error_12:
[000527e6] 200c                      move.l     a4,d0
[000527e8] 675c                      beq.s      Ash_error_21
[000527ea] 1214                      move.b     (a4),d1
[000527ec] 6758                      beq.s      Ash_error_21
[000527ee] 224c                      movea.l    a4,a1
[000527f0] 41d7                      lea.l      (a7),a0
[000527f2] 4eb9 0004 71de            jsr        Af_2name
[000527f8] 1010                      move.b     (a0),d0
[000527fa] 674a                      beq.s      Ash_error_21
[000527fc] 3004                      move.w     d4,d0
[000527fe] 907c 000c                 sub.w      #$000C,d0
[00052802] 670e                      beq.s      Ash_error_22
[00052804] 5340                      subq.w     #1,d0
[00052806] 6716                      beq.s      Ash_error_23
[00052808] 5340                      subq.w     #1,d0
[0005280a] 671e                      beq.s      Ash_error_24
[0005280c] 5340                      subq.w     #1,d0
[0005280e] 6726                      beq.s      Ash_error_25
[00052810] 602e                      bra.s      Ash_error_26
Ash_error_22:
[00052812] 2053                      movea.l    (a3),a0
[00052814] 2268 023c                 movea.l    572(a0),a1
[00052818] 2469 012c                 movea.l    300(a1),a2
[0005281c] 6022                      bra.s      Ash_error_26
Ash_error_23:
[0005281e] 2053                      movea.l    (a3),a0
[00052820] 2268 023c                 movea.l    572(a0),a1
[00052824] 2469 0134                 movea.l    308(a1),a2
[00052828] 6016                      bra.s      Ash_error_26
Ash_error_24:
[0005282a] 2053                      movea.l    (a3),a0
[0005282c] 2268 023c                 movea.l    572(a0),a1
[00052830] 2469 0164                 movea.l    356(a1),a2
[00052834] 600a                      bra.s      Ash_error_26
Ash_error_25:
[00052836] 2053                      movea.l    (a3),a0
[00052838] 2268 023c                 movea.l    572(a0),a1
[0005283c] 2469 013c                 movea.l    316(a1),a2
Ash_error_26:
[00052840] 49d7                      lea.l      (a7),a4
[00052842] 6000 007e                 bra.w      Ash_error_17
Ash_error_21:
[00052846] 99cc                      suba.l     a4,a4
[00052848] 3004                      move.w     d4,d0
[0005284a] 907c 000c                 sub.w      #$000C,d0
[0005284e] 670e                      beq.s      Ash_error_27
[00052850] 5340                      subq.w     #1,d0
[00052852] 6716                      beq.s      Ash_error_28
[00052854] 5340                      subq.w     #1,d0
[00052856] 671e                      beq.s      Ash_error_29
[00052858] 5340                      subq.w     #1,d0
[0005285a] 6726                      beq.s      Ash_error_30
[0005285c] 6064                      bra.s      Ash_error_17
Ash_error_27:
[0005285e] 2053                      movea.l    (a3),a0
[00052860] 2268 023c                 movea.l    572(a0),a1
[00052864] 2469 0128                 movea.l    296(a1),a2
[00052868] 6058                      bra.s      Ash_error_17
Ash_error_28:
[0005286a] 2053                      movea.l    (a3),a0
[0005286c] 2268 023c                 movea.l    572(a0),a1
[00052870] 2469 0130                 movea.l    304(a1),a2
[00052874] 604c                      bra.s      Ash_error_17
Ash_error_29:
[00052876] 2053                      movea.l    (a3),a0
[00052878] 2268 023c                 movea.l    572(a0),a1
[0005287c] 2469 0160                 movea.l    352(a1),a2
[00052880] 6040                      bra.s      Ash_error_17
Ash_error_30:
[00052882] 2053                      movea.l    (a3),a0
[00052884] 2268 023c                 movea.l    572(a0),a1
[00052888] 2469 0138                 movea.l    312(a1),a2
[0005288c] 6034                      bra.s      Ash_error_17
Ash_error_13:
[0005288e] 2053                      movea.l    (a3),a0
[00052890] 2268 023c                 movea.l    572(a0),a1
[00052894] 2469 0150                 movea.l    336(a1),a2
[00052898] 600a                      bra.s      Ash_error_15
Ash_error_14:
[0005289a] 2053                      movea.l    (a3),a0
[0005289c] 2268 023c                 movea.l    572(a0),a1
[000528a0] 2469 0100                 movea.l    256(a1),a2
Ash_error_15:
[000528a4] 99cc                      suba.l     a4,a4
[000528a6] 601a                      bra.s      Ash_error_17
Ash_error_1:
[000528a8] 200c                      move.l     a4,d0
[000528aa] 670c                      beq.s      Ash_error_31
[000528ac] 2053                      movea.l    (a3),a0
[000528ae] 2268 023c                 movea.l    572(a0),a1
[000528b2] 2469 00fc                 movea.l    252(a1),a2
[000528b6] 600a                      bra.s      Ash_error_17
Ash_error_31:
[000528b8] 2053                      movea.l    (a3),a0
[000528ba] 2268 023c                 movea.l    572(a0),a1
[000528be] 2469 00f8                 movea.l    248(a1),a2
Ash_error_17:
[000528c2] 200a                      move.l     a2,d0
[000528c4] 671e                      beq.s      Ash_error_32
[000528c6] 220c                      move.l     a4,d1
[000528c8] 670e                      beq.s      Ash_error_33
[000528ca] 224c                      movea.l    a4,a1
[000528cc] 204a                      movea.l    a2,a0
[000528ce] 4eb9 0005 ef8c            jsr        alert_str
[000528d4] 3600                      move.w     d0,d3
[000528d6] 600c                      bra.s      Ash_error_32
Ash_error_33:
[000528d8] 204a                      movea.l    a2,a0
[000528da] 7001                      moveq.l    #1,d0
[000528dc] 4eb9 0005 17fe            jsr        Awi_alert
[000528e2] 3600                      move.w     d0,d3
Ash_error_32:
[000528e4] b67c ffff                 cmp.w      #$FFFF,d3
[000528e8] 6c14                      bge.s      Ash_error_34
[000528ea] 2279 000d 99d6            movea.l    _globl,a1
[000528f0] 41f9 000d 4076            lea.l      $000D4076,a0
[000528f6] 7001                      moveq.l    #1,d0
[000528f8] 4eb9 0006 be76            jsr        mt_form_alert
Ash_error_34:
[000528fe] 4fef 0080                 lea.l      128(a7),a7
[00052902] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00052906] 4e75                      rts

Ash_getenv:
[00052908] 2f0a                      move.l     a2,-(a7)
[0005290a] 2f0b                      move.l     a3,-(a7)
[0005290c] 2279 0010 1f12            movea.l    ACSblk,a1
[00052912] 2269 028c                 movea.l    652(a1),a1
[00052916] 2009                      move.l     a1,d0
[00052918] 672e                      beq.s      Ash_getenv_1
[0005291a] 2451                      movea.l    (a1),a2
[0005291c] 6022                      bra.s      Ash_getenv_2
Ash_getenv_7:
[0005291e] 2648                      movea.l    a0,a3
[00052920] 6010                      bra.s      Ash_getenv_3
Ash_getenv_6:
[00052922] 0c12 003d                 cmpi.b     #$3D,(a2)
[00052926] 660a                      bne.s      Ash_getenv_3
[00052928] 1013                      move.b     (a3),d0
[0005292a] 6606                      bne.s      Ash_getenv_3
[0005292c] 524a                      addq.w     #1,a2
[0005292e] 204a                      movea.l    a2,a0
[00052930] 6018                      bra.s      Ash_getenv_4
Ash_getenv_3:
[00052932] 1012                      move.b     (a2),d0
[00052934] 6706                      beq.s      Ash_getenv_5
[00052936] 101a                      move.b     (a2)+,d0
[00052938] b01b                      cmp.b      (a3)+,d0
[0005293a] 67e6                      beq.s      Ash_getenv_6
Ash_getenv_5:
[0005293c] 5849                      addq.w     #4,a1
[0005293e] 2451                      movea.l    (a1),a2
Ash_getenv_2:
[00052940] 200a                      move.l     a2,d0
[00052942] 6704                      beq.s      Ash_getenv_1
[00052944] 1212                      move.b     (a2),d1
[00052946] 66d6                      bne.s      Ash_getenv_7
Ash_getenv_1:
[00052948] 91c8                      suba.l     a0,a0
Ash_getenv_4:
[0005294a] 265f                      movea.l    (a7)+,a3
[0005294c] 245f                      movea.l    (a7)+,a2
[0005294e] 4e75                      rts


	.data

xe0fda:
		dc.b '[| Internal errors! | Take care! |][  OK  ]',0
	.even
