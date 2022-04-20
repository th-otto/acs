
edoim_new:
[0002fe6a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002fe6e] 594f                      subq.w     #4,a7
[0002fe70] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002fe76] 2250                      movea.l    (a0),a1
[0002fe78] 2469 0258                 movea.l    600(a1),a2
[0002fe7c] 266a 0014                 movea.l    20(a2),a3
[0002fe80] 2869 0240                 movea.l    576(a1),a4
[0002fe84] 4269 0248                 clr.w      584(a1)
[0002fe88] 4eb9 0004 484c            jsr        Adr_next
[0002fe8e] 3600                      move.w     d0,d3
[0002fe90] 6f50                      ble.s      edoim_new_1
[0002fe92] 48c0                      ext.l      d0
[0002fe94] 2200                      move.l     d0,d1
[0002fe96] d281                      add.l      d1,d1
[0002fe98] d280                      add.l      d0,d1
[0002fe9a] e789                      lsl.l      #3,d1
[0002fe9c] 206c 0014                 movea.l    20(a4),a0
[0002fea0] 41f0 1818                 lea.l      24(a0,d1.l),a0
[0002fea4] 0c68 2721 0016            cmpi.w     #$2721,22(a0)
[0002feaa] 6636                      bne.s      edoim_new_1
[0002feac] 2ea8 000c                 move.l     12(a0),(a7)
[0002feb0] 4eb9 0004 b286            jsr        Awi_diaend
[0002feb6] 2257                      movea.l    (a7),a1
[0002feb8] 43e9 0016                 lea.l      22(a1),a1
[0002febc] 7002                      moveq.l    #2,d0
[0002febe] 204b                      movea.l    a3,a0
[0002fec0] 4eb9 0004 afe0            jsr        Aob_puttext
[0002fec6] 72ff                      moveq.l    #-1,d1
[0002fec8] 7002                      moveq.l    #2,d0
[0002feca] 204a                      movea.l    a2,a0
[0002fecc] 226a 0066                 movea.l    102(a2),a1
[0002fed0] 4e91                      jsr        (a1)
[0002fed2] 4eb9 0004 b33c            jsr        Awi_diastart
[0002fed8] 3003                      move.w     d3,d0
[0002feda] 204c                      movea.l    a4,a0
[0002fedc] 4eb9 0004 492a            jsr        Adr_del
edoim_new_1:
[0002fee2] 584f                      addq.w     #4,a7
[0002fee4] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002fee8] 4e75                      rts

edoim_edit:
[0002feea] 2f0a                      move.l     a2,-(a7)
[0002feec] 2f0b                      move.l     a3,-(a7)
[0002feee] 514f                      subq.w     #8,a7
[0002fef0] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fef6] 2468 0258                 movea.l    600(a0),a2
[0002fefa] 2652                      movea.l    (a2),a3
[0002fefc] 226a 0014                 movea.l    20(a2),a1
[0002ff00] 2069 003c                 movea.l    60(a1),a0
[0002ff04] 2250                      movea.l    (a0),a1
[0002ff06] 2053                      movea.l    (a3),a0
[0002ff08] 2068 0030                 movea.l    48(a0),a0
[0002ff0c] 4eb9 0003 1a5c            jsr        find_entry
[0002ff12] 2008                      move.l     a0,d0
[0002ff14] 671c                      beq.s      edoim_edit_1
[0002ff16] 006a 0004 0054            ori.w      #$0004,84(a2)
[0002ff1c] 2e93                      move.l     (a3),(a7)
[0002ff1e] 2f40 0004                 move.l     d0,4(a7)
[0002ff22] 41d7                      lea.l      (a7),a0
[0002ff24] 2279 000a 5902            movea.l    $000A5902,a1
[0002ff2a] 4e91                      jsr        (a1)
[0002ff2c] 026a fffb 0054            andi.w     #$FFFB,84(a2)
edoim_edit_1:
[0002ff32] 504f                      addq.w     #8,a7
[0002ff34] 265f                      movea.l    (a7)+,a3
[0002ff36] 245f                      movea.l    (a7)+,a2
[0002ff38] 4e75                      rts

edoim_ok:
[0002ff3a] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002ff3e] 2079 0010 1f12            movea.l    ACSblk,a0
[0002ff44] 2868 0258                 movea.l    600(a0),a4
[0002ff48] 2a54                      movea.l    (a4),a5
[0002ff4a] 2455                      movea.l    (a5),a2
[0002ff4c] 006a 0001 0006            ori.w      #$0001,6(a2)
[0002ff52] 206d 0004                 movea.l    4(a5),a0
[0002ff56] 2668 0004                 movea.l    4(a0),a3
[0002ff5a] 322d 000a                 move.w     10(a5),d1
[0002ff5e] 48c1                      ext.l      d1
[0002ff60] 2001                      move.l     d1,d0
[0002ff62] e788                      lsl.l      #3,d0
[0002ff64] 9081                      sub.l      d1,d0
[0002ff66] e788                      lsl.l      #3,d0
[0002ff68] d7c0                      adda.l     d0,a3
[0002ff6a] 226c 0014                 movea.l    20(a4),a1
[0002ff6e] 2a69 003c                 movea.l    60(a1),a5
[0002ff72] 2a55                      movea.l    (a5),a5
[0002ff74] 206a 0030                 movea.l    48(a2),a0
[0002ff78] 224d                      movea.l    a5,a1
[0002ff7a] 4eb9 0003 1a5c            jsr        find_entry
[0002ff80] 2848                      movea.l    a0,a4
[0002ff82] 200c                      move.l     a4,d0
[0002ff84] 6610                      bne.s      edoim_ok_1
[0002ff86] 224d                      movea.l    a5,a1
[0002ff88] 41f9 000b e53a            lea.l      ERR_IM_DEL,a0
[0002ff8e] 4eb9 0005 ef8c            jsr        alert_str
[0002ff94] 6020                      bra.s      edoim_ok_2
edoim_ok_1:
[0002ff96] 2a6b 0014                 movea.l    20(a3),a5
[0002ff9a] bbcc                      cmpa.l     a4,a5
[0002ff9c] 6712                      beq.s      edoim_ok_3
[0002ff9e] 526c 0036                 addq.w     #1,54(a4)
[0002ffa2] 274c 0014                 move.l     a4,20(a3)
[0002ffa6] 224d                      movea.l    a5,a1
[0002ffa8] 204a                      movea.l    a2,a0
[0002ffaa] 4eb9 0003 343a            jsr        del_image
edoim_ok_3:
[0002ffb0] 4eb9 0002 d91e            jsr        ed_abort
edoim_ok_2:
[0002ffb6] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002ffba] 4e75                      rts

set_image:
[0002ffbc] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002ffc0] 2648                      movea.l    a0,a3
[0002ffc2] 49f9 000b e792            lea.l      sm,a4
[0002ffc8] 41ec ff10                 lea.l      -240(a4),a0
[0002ffcc] 4eb9 0004 9a5c            jsr        Aob_create
[0002ffd2] 2448                      movea.l    a0,a2
[0002ffd4] 200a                      move.l     a2,d0
[0002ffd6] 6604                      bne.s      set_image_1
[0002ffd8] 91c8                      suba.l     a0,a0
[0002ffda] 6016                      bra.s      set_image_2
set_image_1:
[0002ffdc] 266b 0014                 movea.l    20(a3),a3
[0002ffe0] 43eb 0016                 lea.l      22(a3),a1
[0002ffe4] 7002                      moveq.l    #2,d0
[0002ffe6] 204a                      movea.l    a2,a0
[0002ffe8] 4eb9 0004 afe0            jsr        Aob_puttext
[0002ffee] 288a                      move.l     a2,(a4)
[0002fff0] 204c                      movea.l    a4,a0
set_image_2:
[0002fff2] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002fff6] 4e75                      rts

edoim_list:
[0002fff8] 2f0a                      move.l     a2,-(a7)
[0002fffa] 2f0b                      move.l     a3,-(a7)
[0002fffc] 2079 0010 1f12            movea.l    ACSblk,a0
[00030002] 2468 0258                 movea.l    600(a0),a2
[00030006] 2052                      movea.l    (a2),a0
[00030008] 006a 0004 0054            ori.w      #$0004,84(a2)
[0003000e] 47f9 000c 20b8            lea.l      list_image,a3
[00030014] 2690                      move.l     (a0),(a3)
[00030016] 2250                      movea.l    (a0),a1
[00030018] 2769 0030 0004            move.l     48(a1),4(a3)
[0003001e] 204b                      movea.l    a3,a0
[00030020] 2279 000c 1880            movea.l    $000C1880,a1
[00030026] 4e91                      jsr        (a1)
[00030028] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[0003002e] 265f                      movea.l    (a7)+,a3
[00030030] 245f                      movea.l    (a7)+,a2
[00030032] 4e75                      rts

	.data

ERR_IM_DEL:
[000be53a]                           dc.b '[3][ Das Bild| ',$27,'%s',$27,' | ist nicht (mehr) Teil | dieser Datei][ OK ]',0
TEXT_001:
[000be57c]                           dc.b 'Abbruch',0
TEXT_002:
[000be584]                           dc.b $00
TEXT_003:
[000be585]                           dc.b $4f
[000be586]                           dc.w $4b00
TEXT_004:
[000be588]                           dc.b 'Edit',0
TEXT_005:
[000be58d]                           dc.b '1234567890123456789012345678901',0
TEXT_03:
[000be5ad]                           dc.b 'Bild (aus Liste ablegen):',0
help_title:
[000be5c7]                           dc.b 'Die Graphik-Zuordnung',0
title:
[000be5dd]                           dc.b ' BILD -',0
[000be5e5]                           dc.b $00
TEDI_001:
[000be5e6] 000be58d                  dc.l TEXT_005
[000be5ea] 000be584                  dc.l TEXT_002
[000be5ee] 000be584                  dc.l TEXT_002
[000be5f2]                           dc.b $00
[000be5f3]                           dc.b $03
[000be5f4]                           dc.b $00
[000be5f5]                           dc.b $06
[000be5f6]                           dc.b $00
[000be5f7]                           dc.b $02
[000be5f8]                           dc.w $1180
[000be5fa]                           dc.b $00
[000be5fb]                           dc.b $00
[000be5fc]                           dc.b $00
[000be5fd]                           dc.b $00
[000be5fe]                           dc.b $00
[000be5ff]                           dc.b $20
[000be600]                           dc.b $00
[000be601]                           dc.b $01
A_3DBUTTON01:
[000be602] 0005a4e2                  dc.l A_3Dbutton
[000be606]                           dc.w $29c1
[000be608]                           dc.w $0178
[000be60a] 00059318                  dc.l Auo_string
[000be60e] 000be588                  dc.l TEXT_004
[000be612]                           dc.b $00
[000be613]                           dc.b $00
[000be614]                           dc.b $00
[000be615]                           dc.b $00
[000be616]                           dc.b $00
[000be617]                           dc.b $00
[000be618]                           dc.b $00
[000be619]                           dc.b $00
[000be61a]                           dc.b $00
[000be61b]                           dc.b $00
[000be61c]                           dc.b $00
[000be61d]                           dc.b $00
[000be61e]                           dc.b $00
[000be61f]                           dc.b $00
[000be620]                           dc.b $00
[000be621]                           dc.b $00
A_3DBUTTON02:
[000be622] 0005a4e2                  dc.l A_3Dbutton
[000be626]                           dc.w $21f1
[000be628]                           dc.w $0178
[000be62a] 00059318                  dc.l Auo_string
[000be62e]                           dc.b $00
[000be62f]                           dc.b $00
[000be630]                           dc.b $00
[000be631]                           dc.b $00
[000be632]                           dc.b $00
[000be633]                           dc.b $00
[000be634]                           dc.b $00
[000be635]                           dc.b $00
[000be636]                           dc.b $00
[000be637]                           dc.b $00
[000be638]                           dc.b $00
[000be639]                           dc.b $00
[000be63a]                           dc.b $00
[000be63b]                           dc.b $00
[000be63c]                           dc.b $00
[000be63d]                           dc.b $00
[000be63e]                           dc.b $00
[000be63f]                           dc.b $00
[000be640]                           dc.b $00
[000be641]                           dc.b $00
A_3DBUTTON03:
[000be642] 0005a4e2                  dc.l A_3Dbutton
[000be646]                           dc.w $29c1
[000be648]                           dc.w $0178
[000be64a] 00059318                  dc.l Auo_string
[000be64e] 000be57c                  dc.l TEXT_001
[000be652]                           dc.b $00
[000be653]                           dc.b $00
[000be654]                           dc.b $00
[000be655]                           dc.b $00
[000be656]                           dc.b $00
[000be657]                           dc.b $00
[000be658]                           dc.b $00
[000be659]                           dc.b $00
[000be65a]                           dc.b $00
[000be65b]                           dc.b $00
[000be65c]                           dc.b $00
[000be65d]                           dc.b $00
[000be65e]                           dc.b $00
[000be65f]                           dc.b $00
[000be660]                           dc.b $00
[000be661]                           dc.b $00
A_3DBUTTON04:
[000be662] 0005a4e2                  dc.l A_3Dbutton
[000be666]                           dc.w $29c1
[000be668]                           dc.w $0178
[000be66a] 00059318                  dc.l Auo_string
[000be66e] 000be585                  dc.l TEXT_003
[000be672]                           dc.b $00
[000be673]                           dc.b $00
[000be674]                           dc.b $00
[000be675]                           dc.b $00
[000be676]                           dc.b $00
[000be677]                           dc.b $00
[000be678]                           dc.b $00
[000be679]                           dc.b $00
[000be67a]                           dc.b $00
[000be67b]                           dc.b $00
[000be67c]                           dc.b $00
[000be67d]                           dc.b $00
[000be67e]                           dc.b $00
[000be67f]                           dc.b $00
[000be680]                           dc.b $00
[000be681]                           dc.b $00
A_INNERFRAME02:
[000be682] 00059f9c                  dc.l A_innerframe
[000be686]                           dc.w $1800
[000be688]                           dc.w $8f19
[000be68a] 00059318                  dc.l Auo_string
[000be68e] 000be5ad                  dc.l TEXT_03
[000be692]                           dc.b $00
[000be693]                           dc.b $00
[000be694]                           dc.b $00
[000be695]                           dc.b $00
[000be696]                           dc.b $00
[000be697]                           dc.b $00
[000be698]                           dc.b $00
[000be699]                           dc.b $00
[000be69a]                           dc.b $00
[000be69b]                           dc.b $00
[000be69c]                           dc.b $00
[000be69d]                           dc.b $00
[000be69e]                           dc.b $00
[000be69f]                           dc.b $00
[000be6a0]                           dc.b $00
[000be6a1]                           dc.b $00
ED_IMAGE:
[000be6a2]                           dc.w $ffff
[000be6a4]                           dc.b $00
[000be6a5]                           dc.b $01
[000be6a6]                           dc.b $00
[000be6a7]                           dc.b $08
[000be6a8]                           dc.b $00
[000be6a9]                           dc.b $18
[000be6aa]                           dc.b $00
[000be6ab]                           dc.b $40
[000be6ac]                           dc.b $00
[000be6ad]                           dc.b $10
[000be6ae] 000be622                  dc.l A_3DBUTTON02
[000be6b2]                           dc.b $00
[000be6b3]                           dc.b $00
[000be6b4]                           dc.b $00
[000be6b5]                           dc.b $00
[000be6b6]                           dc.b $00
[000be6b7]                           dc.b $24
[000be6b8]                           dc.b $00
[000be6b9]                           dc.b $06
_01_ED_IMAGE:
[000be6ba]                           dc.b $00
[000be6bb]                           dc.b $04
[000be6bc]                           dc.b $00
[000be6bd]                           dc.b $02
[000be6be]                           dc.b $00
[000be6bf]                           dc.b $02
[000be6c0]                           dc.b $00
[000be6c1]                           dc.b $18
[000be6c2]                           dc.b $00
[000be6c3]                           dc.b $40
[000be6c4]                           dc.b $00
[000be6c5]                           dc.b $00
[000be6c6] 000be682                  dc.l A_INNERFRAME02
[000be6ca]                           dc.b $00
[000be6cb]                           dc.b $01
[000be6cc]                           dc.b $00
[000be6cd]                           dc.b $00
[000be6ce]                           dc.b $00
[000be6cf]                           dc.b $22
[000be6d0]                           dc.b $00
[000be6d1]                           dc.b $03
_02_ED_IMAGE:
[000be6d2]                           dc.b $00
[000be6d3]                           dc.b $01
[000be6d4]                           dc.w $ffff
[000be6d6]                           dc.w $ffff
[000be6d8]                           dc.b $00
[000be6d9]                           dc.b $16
[000be6da]                           dc.w $1005
[000be6dc]                           dc.b $00
[000be6dd]                           dc.b $00
[000be6de] 000be5e6                  dc.l TEDI_001
[000be6e2]                           dc.b $00
[000be6e3]                           dc.b $01
[000be6e4]                           dc.b $00
[000be6e5]                           dc.b $01
[000be6e6]                           dc.b $00
[000be6e7]                           dc.b $20
[000be6e8]                           dc.b $00
[000be6e9]                           dc.b $01
_02aED_IMAGE:
[000be6ea] 0002fff8                  dc.l edoim_list
[000be6ee] 0002fe6a                  dc.l edoim_new
[000be6f2]                           dc.w $8000
[000be6f4]                           dc.b $00
[000be6f5]                           dc.b $00
[000be6f6]                           dc.b $00
[000be6f7]                           dc.b $00
[000be6f8]                           dc.b $00
[000be6f9]                           dc.b $00
[000be6fa]                           dc.b $00
[000be6fb]                           dc.b $00
[000be6fc]                           dc.b $00
[000be6fd]                           dc.b $00
[000be6fe]                           dc.b $00
[000be6ff]                           dc.b $00
[000be700]                           dc.b $00
[000be701]                           dc.b $00
_04_ED_IMAGE:
[000be702]                           dc.b $00
[000be703]                           dc.b $06
[000be704]                           dc.w $ffff
[000be706]                           dc.w $ffff
[000be708]                           dc.b $00
[000be709]                           dc.b $18
[000be70a]                           dc.w $4007
[000be70c]                           dc.b $00
[000be70d]                           dc.b $10
[000be70e] 000be662                  dc.l A_3DBUTTON04
[000be712]                           dc.b $00
[000be713]                           dc.b $01
[000be714]                           dc.b $00
[000be715]                           dc.b $03
[000be716]                           dc.b $00
[000be717]                           dc.b $0a
[000be718]                           dc.b $00
[000be719]                           dc.b $02
_04aED_IMAGE:
[000be71a] 0002ff3a                  dc.l edoim_ok
[000be71e]                           dc.b $00
[000be71f]                           dc.b $00
[000be720]                           dc.b $00
[000be721]                           dc.b $00
[000be722]                           dc.w $8000
[000be724]                           dc.w $884f
[000be726]                           dc.b $00
[000be727]                           dc.b $00
[000be728]                           dc.b $00
[000be729]                           dc.b $00
[000be72a]                           dc.b $00
[000be72b]                           dc.b $00
[000be72c]                           dc.b $00
[000be72d]                           dc.b $00
[000be72e]                           dc.b $00
[000be72f]                           dc.b $00
[000be730]                           dc.b $00
[000be731]                           dc.b $00
_06_ED_IMAGE:
[000be732]                           dc.b $00
[000be733]                           dc.b $08
[000be734]                           dc.w $ffff
[000be736]                           dc.w $ffff
[000be738]                           dc.b $00
[000be739]                           dc.b $18
[000be73a]                           dc.w $4005
[000be73c]                           dc.b $00
[000be73d]                           dc.b $10
[000be73e] 000be642                  dc.l A_3DBUTTON03
[000be742]                           dc.b $00
[000be743]                           dc.b $0d
[000be744]                           dc.b $00
[000be745]                           dc.b $03
[000be746]                           dc.b $00
[000be747]                           dc.b $0a
[000be748]                           dc.b $00
[000be749]                           dc.b $02
_06aED_IMAGE:
[000be74a] 0002d91e                  dc.l ed_abort
[000be74e]                           dc.b $00
[000be74f]                           dc.b $00
[000be750]                           dc.b $00
[000be751]                           dc.b $00
[000be752]                           dc.w $8000
[000be754]                           dc.w $8841
[000be756]                           dc.b $00
[000be757]                           dc.b $00
[000be758]                           dc.b $00
[000be759]                           dc.b $00
[000be75a]                           dc.b $00
[000be75b]                           dc.b $00
[000be75c]                           dc.b $00
[000be75d]                           dc.b $00
[000be75e]                           dc.b $00
[000be75f]                           dc.b $00
[000be760]                           dc.b $00
[000be761]                           dc.b $00
_08_ED_IMAGE:
[000be762]                           dc.b $00
[000be763]                           dc.b $00
[000be764]                           dc.w $ffff
[000be766]                           dc.w $ffff
[000be768]                           dc.b $00
[000be769]                           dc.b $18
[000be76a]                           dc.w $4005
[000be76c]                           dc.b $00
[000be76d]                           dc.b $10
[000be76e] 000be602                  dc.l A_3DBUTTON01
[000be772]                           dc.b $00
[000be773]                           dc.b $19
[000be774]                           dc.b $00
[000be775]                           dc.b $03
[000be776]                           dc.b $00
[000be777]                           dc.b $0a
[000be778]                           dc.b $00
[000be779]                           dc.b $02
_08aED_IMAGE:
[000be77a] 0002feea                  dc.l edoim_edit
[000be77e]                           dc.b $00
[000be77f]                           dc.b $00
[000be780]                           dc.b $00
[000be781]                           dc.b $00
[000be782]                           dc.w $8020
[000be784]                           dc.w $8845
[000be786]                           dc.b $00
[000be787]                           dc.b $00
[000be788]                           dc.b $00
[000be789]                           dc.b $00
[000be78a]                           dc.b $00
[000be78b]                           dc.b $00
[000be78c]                           dc.b $00
[000be78d]                           dc.b $00
[000be78e]                           dc.b $00
[000be78f]                           dc.b $00
[000be790]                           dc.b $00
[000be791]                           dc.b $00
sm:
[000be792]                           dc.b $00
[000be793]                           dc.b $00
[000be794]                           dc.b $00
[000be795]                           dc.b $00
[000be796] 0002ff3a                  dc.l edoim_ok
[000be79a] 00049b7c                  dc.l Aob_delete
[000be79e] 000be5dd                  dc.l title
[000be7a2] 000be5c7                  dc.l help_title
[000be7a6]                           dc.b $00
[000be7a7]                           dc.b $00
[000be7a8]                           dc.b $00
[000be7a9]                           dc.b $00
