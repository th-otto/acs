
edoic_new:
[0002fcac] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0002fcb0] 594f                      subq.w     #4,a7
[0002fcb2] 41f9 0010 1f12            lea.l      ACSblk,a0
[0002fcb8] 2250                      movea.l    (a0),a1
[0002fcba] 2469 0258                 movea.l    600(a1),a2
[0002fcbe] 266a 0014                 movea.l    20(a2),a3
[0002fcc2] 2869 0240                 movea.l    576(a1),a4
[0002fcc6] 4269 0248                 clr.w      584(a1)
[0002fcca] 4eb9 0004 484c            jsr        Adr_next
[0002fcd0] 3600                      move.w     d0,d3
[0002fcd2] 6f44                      ble.s      edoic_new_1
[0002fcd4] 48c0                      ext.l      d0
[0002fcd6] 2200                      move.l     d0,d1
[0002fcd8] d281                      add.l      d1,d1
[0002fcda] d280                      add.l      d0,d1
[0002fcdc] e789                      lsl.l      #3,d1
[0002fcde] 206c 0014                 movea.l    20(a4),a0
[0002fce2] 41f0 1818                 lea.l      24(a0,d1.l),a0
[0002fce6] 0c68 2720 0016            cmpi.w     #$2720,22(a0)
[0002fcec] 662a                      bne.s      edoic_new_1
[0002fcee] 2ea8 000c                 move.l     12(a0),(a7)
[0002fcf2] 2257                      movea.l    (a7),a1
[0002fcf4] 43e9 0016                 lea.l      22(a1),a1
[0002fcf8] 204b                      movea.l    a3,a0
[0002fcfa] 7002                      moveq.l    #2,d0
[0002fcfc] 4eb9 0004 afe0            jsr        Aob_puttext
[0002fd02] 72ff                      moveq.l    #-1,d1
[0002fd04] 7002                      moveq.l    #2,d0
[0002fd06] 204a                      movea.l    a2,a0
[0002fd08] 226a 0066                 movea.l    102(a2),a1
[0002fd0c] 4e91                      jsr        (a1)
[0002fd0e] 3003                      move.w     d3,d0
[0002fd10] 204c                      movea.l    a4,a0
[0002fd12] 4eb9 0004 492a            jsr        Adr_del
edoic_new_1:
[0002fd18] 584f                      addq.w     #4,a7
[0002fd1a] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0002fd1e] 4e75                      rts

edoic_edit:
[0002fd20] 2f0a                      move.l     a2,-(a7)
[0002fd22] 2f0b                      move.l     a3,-(a7)
[0002fd24] 514f                      subq.w     #8,a7
[0002fd26] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fd2c] 2468 0258                 movea.l    600(a0),a2
[0002fd30] 2652                      movea.l    (a2),a3
[0002fd32] 226a 0014                 movea.l    20(a2),a1
[0002fd36] 2069 003c                 movea.l    60(a1),a0
[0002fd3a] 2250                      movea.l    (a0),a1
[0002fd3c] 2053                      movea.l    (a3),a0
[0002fd3e] 2068 002c                 movea.l    44(a0),a0
[0002fd42] 4eb9 0003 1a5c            jsr        find_entry
[0002fd48] 2008                      move.l     a0,d0
[0002fd4a] 671c                      beq.s      edoic_edit_1
[0002fd4c] 006a 0004 0054            ori.w      #$0004,84(a2)
[0002fd52] 2e93                      move.l     (a3),(a7)
[0002fd54] 2f40 0004                 move.l     d0,4(a7)
[0002fd58] 41d7                      lea.l      (a7),a0
[0002fd5a] 2279 000a 488a            movea.l    $000A488A,a1
[0002fd60] 4e91                      jsr        (a1)
[0002fd62] 026a fffb 0054            andi.w     #$FFFB,84(a2)
edoic_edit_1:
[0002fd68] 504f                      addq.w     #8,a7
[0002fd6a] 265f                      movea.l    (a7)+,a3
[0002fd6c] 245f                      movea.l    (a7)+,a2
[0002fd6e] 4e75                      rts

edoic_ok:
[0002fd70] 48e7 003c                 movem.l    a2-a5,-(a7)
[0002fd74] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fd7a] 2868 0258                 movea.l    600(a0),a4
[0002fd7e] 2a54                      movea.l    (a4),a5
[0002fd80] 2455                      movea.l    (a5),a2
[0002fd82] 006a 0001 0006            ori.w      #$0001,6(a2)
[0002fd88] 206d 0004                 movea.l    4(a5),a0
[0002fd8c] 2668 0004                 movea.l    4(a0),a3
[0002fd90] 322d 000a                 move.w     10(a5),d1
[0002fd94] 48c1                      ext.l      d1
[0002fd96] 2001                      move.l     d1,d0
[0002fd98] e788                      lsl.l      #3,d0
[0002fd9a] 9081                      sub.l      d1,d0
[0002fd9c] e788                      lsl.l      #3,d0
[0002fd9e] d7c0                      adda.l     d0,a3
[0002fda0] 226c 0014                 movea.l    20(a4),a1
[0002fda4] 2a69 003c                 movea.l    60(a1),a5
[0002fda8] 2a55                      movea.l    (a5),a5
[0002fdaa] 206a 002c                 movea.l    44(a2),a0
[0002fdae] 224d                      movea.l    a5,a1
[0002fdb0] 4eb9 0003 1a5c            jsr        find_entry
[0002fdb6] 2848                      movea.l    a0,a4
[0002fdb8] 200c                      move.l     a4,d0
[0002fdba] 6610                      bne.s      edoic_ok_1
[0002fdbc] 224d                      movea.l    a5,a1
[0002fdbe] 41f9 000b e2ca            lea.l      ERR_IC_DEL,a0
[0002fdc4] 4eb9 0005 ef8c            jsr        alert_str
[0002fdca] 6020                      bra.s      edoic_ok_2
edoic_ok_1:
[0002fdcc] 2a6b 0014                 movea.l    20(a3),a5
[0002fdd0] bbcc                      cmpa.l     a4,a5
[0002fdd2] 6712                      beq.s      edoic_ok_3
[0002fdd4] 526c 0036                 addq.w     #1,54(a4)
[0002fdd8] 274c 0014                 move.l     a4,20(a3)
[0002fddc] 224d                      movea.l    a5,a1
[0002fdde] 204a                      movea.l    a2,a0
[0002fde0] 4eb9 0003 3220            jsr        del_icon
edoic_ok_3:
[0002fde6] 4eb9 0002 d91e            jsr        ed_abort
edoic_ok_2:
[0002fdec] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0002fdf0] 4e75                      rts

set_icon:
[0002fdf2] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002fdf6] 2648                      movea.l    a0,a3
[0002fdf8] 49f9 000b e522            lea.l      sm,a4
[0002fdfe] 41ec ff10                 lea.l      -240(a4),a0
[0002fe02] 4eb9 0004 9a5c            jsr        Aob_create
[0002fe08] 2448                      movea.l    a0,a2
[0002fe0a] 200a                      move.l     a2,d0
[0002fe0c] 6604                      bne.s      set_icon_1
[0002fe0e] 91c8                      suba.l     a0,a0
[0002fe10] 6016                      bra.s      set_icon_2
set_icon_1:
[0002fe12] 266b 0014                 movea.l    20(a3),a3
[0002fe16] 43eb 0016                 lea.l      22(a3),a1
[0002fe1a] 7002                      moveq.l    #2,d0
[0002fe1c] 204a                      movea.l    a2,a0
[0002fe1e] 4eb9 0004 afe0            jsr        Aob_puttext
[0002fe24] 288a                      move.l     a2,(a4)
[0002fe26] 204c                      movea.l    a4,a0
set_icon_2:
[0002fe28] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002fe2c] 4e75                      rts

edoic_list:
[0002fe2e] 2f0a                      move.l     a2,-(a7)
[0002fe30] 2f0b                      move.l     a3,-(a7)
[0002fe32] 2079 0010 1f12            movea.l    ACSblk,a0
[0002fe38] 2468 0258                 movea.l    600(a0),a2
[0002fe3c] 2052                      movea.l    (a2),a0
[0002fe3e] 006a 0004 0054            ori.w      #$0004,84(a2)
[0002fe44] 47f9 000c 1f14            lea.l      list_icon,a3
[0002fe4a] 2690                      move.l     (a0),(a3)
[0002fe4c] 2250                      movea.l    (a0),a1
[0002fe4e] 2769 002c 0004            move.l     44(a1),4(a3)
[0002fe54] 204b                      movea.l    a3,a0
[0002fe56] 2279 000c 1880            movea.l    $000C1880,a1
[0002fe5c] 4e91                      jsr        (a1)
[0002fe5e] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[0002fe64] 265f                      movea.l    (a7)+,a3
[0002fe66] 245f                      movea.l    (a7)+,a2
[0002fe68] 4e75                      rts

	.data

ERR_IC_DEL:
[000be2ca]                           dc.b '[3][ Die Ikone| ',$27,'%s',$27,' | ist nicht (mehr) Teil | dieser Datei][ OK ]',0
TEXT_001:
[000be30d]                           dc.b 'Abbruch',0
TEXT_002:
[000be315]                           dc.b $00
TEXT_003:
[000be316]                           dc.w $4f4b
[000be318]                           dc.b $00
TEXT_004:
[000be319]                           dc.b 'Edit',0
TEXT_005:
[000be31e]                           dc.b '1234567890123456789012345678901',0
TEXT_02:
[000be33e]                           dc.b 'Ikone (aus Liste ablegen):',0
help_title:
[000be359]                           dc.b 'Die Icon-Zuordnung',0
title:
[000be36c]                           dc.b ' ICONS -',0
[000be375]                           dc.b $00
TEDI_001:
[000be376] 000be31e                  dc.l TEXT_005
[000be37a] 000be315                  dc.l TEXT_002
[000be37e] 000be315                  dc.l TEXT_002
[000be382]                           dc.b $00
[000be383]                           dc.b $03
[000be384]                           dc.b $00
[000be385]                           dc.b $06
[000be386]                           dc.b $00
[000be387]                           dc.b $02
[000be388]                           dc.w $1180
[000be38a]                           dc.b $00
[000be38b]                           dc.b $00
[000be38c]                           dc.b $00
[000be38d]                           dc.b $00
[000be38e]                           dc.b $00
[000be38f]                           dc.b $20
[000be390]                           dc.b $00
[000be391]                           dc.b $01
A_3DBUTTON01:
[000be392] 0005a4e2                  dc.l A_3Dbutton
[000be396]                           dc.w $29c1
[000be398]                           dc.w $0178
[000be39a] 00059318                  dc.l Auo_string
[000be39e] 000be319                  dc.l TEXT_004
[000be3a2]                           dc.b $00
[000be3a3]                           dc.b $00
[000be3a4]                           dc.b $00
[000be3a5]                           dc.b $00
[000be3a6]                           dc.b $00
[000be3a7]                           dc.b $00
[000be3a8]                           dc.b $00
[000be3a9]                           dc.b $00
[000be3aa]                           dc.b $00
[000be3ab]                           dc.b $00
[000be3ac]                           dc.b $00
[000be3ad]                           dc.b $00
[000be3ae]                           dc.b $00
[000be3af]                           dc.b $00
[000be3b0]                           dc.b $00
[000be3b1]                           dc.b $00
A_3DBUTTON02:
[000be3b2] 0005a4e2                  dc.l A_3Dbutton
[000be3b6]                           dc.w $21f1
[000be3b8]                           dc.w $0178
[000be3ba] 00059318                  dc.l Auo_string
[000be3be]                           dc.b $00
[000be3bf]                           dc.b $00
[000be3c0]                           dc.b $00
[000be3c1]                           dc.b $00
[000be3c2]                           dc.b $00
[000be3c3]                           dc.b $00
[000be3c4]                           dc.b $00
[000be3c5]                           dc.b $00
[000be3c6]                           dc.b $00
[000be3c7]                           dc.b $00
[000be3c8]                           dc.b $00
[000be3c9]                           dc.b $00
[000be3ca]                           dc.b $00
[000be3cb]                           dc.b $00
[000be3cc]                           dc.b $00
[000be3cd]                           dc.b $00
[000be3ce]                           dc.b $00
[000be3cf]                           dc.b $00
[000be3d0]                           dc.b $00
[000be3d1]                           dc.b $00
A_3DBUTTON05:
[000be3d2] 0005a4e2                  dc.l A_3Dbutton
[000be3d6]                           dc.w $29c1
[000be3d8]                           dc.w $0178
[000be3da] 00059318                  dc.l Auo_string
[000be3de] 000be30d                  dc.l TEXT_001
[000be3e2]                           dc.b $00
[000be3e3]                           dc.b $00
[000be3e4]                           dc.b $00
[000be3e5]                           dc.b $00
[000be3e6]                           dc.b $00
[000be3e7]                           dc.b $00
[000be3e8]                           dc.b $00
[000be3e9]                           dc.b $00
[000be3ea]                           dc.b $00
[000be3eb]                           dc.b $00
[000be3ec]                           dc.b $00
[000be3ed]                           dc.b $00
[000be3ee]                           dc.b $00
[000be3ef]                           dc.b $00
[000be3f0]                           dc.b $00
[000be3f1]                           dc.b $00
A_3DBUTTON06:
[000be3f2] 0005a4e2                  dc.l A_3Dbutton
[000be3f6]                           dc.w $29c1
[000be3f8]                           dc.w $0178
[000be3fa] 00059318                  dc.l Auo_string
[000be3fe] 000be316                  dc.l TEXT_003
[000be402]                           dc.b $00
[000be403]                           dc.b $00
[000be404]                           dc.b $00
[000be405]                           dc.b $00
[000be406]                           dc.b $00
[000be407]                           dc.b $00
[000be408]                           dc.b $00
[000be409]                           dc.b $00
[000be40a]                           dc.b $00
[000be40b]                           dc.b $00
[000be40c]                           dc.b $00
[000be40d]                           dc.b $00
[000be40e]                           dc.b $00
[000be40f]                           dc.b $00
[000be410]                           dc.b $00
[000be411]                           dc.b $00
A_INNERFRAME01:
[000be412] 00059f9c                  dc.l A_innerframe
[000be416]                           dc.w $1800
[000be418]                           dc.w $8f19
[000be41a] 00059318                  dc.l Auo_string
[000be41e] 000be33e                  dc.l TEXT_02
[000be422]                           dc.b $00
[000be423]                           dc.b $00
[000be424]                           dc.b $00
[000be425]                           dc.b $00
[000be426]                           dc.b $00
[000be427]                           dc.b $00
[000be428]                           dc.b $00
[000be429]                           dc.b $00
[000be42a]                           dc.b $00
[000be42b]                           dc.b $00
[000be42c]                           dc.b $00
[000be42d]                           dc.b $00
[000be42e]                           dc.b $00
[000be42f]                           dc.b $00
[000be430]                           dc.b $00
[000be431]                           dc.b $00
ED_ICON:
[000be432]                           dc.w $ffff
[000be434]                           dc.b $00
[000be435]                           dc.b $01
[000be436]                           dc.b $00
[000be437]                           dc.b $08
[000be438]                           dc.b $00
[000be439]                           dc.b $18
[000be43a]                           dc.b $00
[000be43b]                           dc.b $40
[000be43c]                           dc.b $00
[000be43d]                           dc.b $10
[000be43e] 000be3b2                  dc.l A_3DBUTTON02
[000be442]                           dc.b $00
[000be443]                           dc.b $00
[000be444]                           dc.b $00
[000be445]                           dc.b $00
[000be446]                           dc.b $00
[000be447]                           dc.b $24
[000be448]                           dc.b $00
[000be449]                           dc.b $06
_01_ED_ICON:
[000be44a]                           dc.b $00
[000be44b]                           dc.b $04
[000be44c]                           dc.b $00
[000be44d]                           dc.b $02
[000be44e]                           dc.b $00
[000be44f]                           dc.b $02
[000be450]                           dc.b $00
[000be451]                           dc.b $18
[000be452]                           dc.b $00
[000be453]                           dc.b $40
[000be454]                           dc.b $00
[000be455]                           dc.b $00
[000be456] 000be412                  dc.l A_INNERFRAME01
[000be45a]                           dc.b $00
[000be45b]                           dc.b $01
[000be45c]                           dc.b $00
[000be45d]                           dc.b $00
[000be45e]                           dc.b $00
[000be45f]                           dc.b $22
[000be460]                           dc.b $00
[000be461]                           dc.b $03
_02_ED_ICON:
[000be462]                           dc.b $00
[000be463]                           dc.b $01
[000be464]                           dc.w $ffff
[000be466]                           dc.w $ffff
[000be468]                           dc.b $00
[000be469]                           dc.b $16
[000be46a]                           dc.w $1005
[000be46c]                           dc.b $00
[000be46d]                           dc.b $00
[000be46e] 000be376                  dc.l TEDI_001
[000be472]                           dc.b $00
[000be473]                           dc.b $01
[000be474]                           dc.b $00
[000be475]                           dc.b $01
[000be476]                           dc.b $00
[000be477]                           dc.b $20
[000be478]                           dc.b $00
[000be479]                           dc.b $01
_02aED_ICON:
[000be47a] 0002fe2e                  dc.l edoic_list
[000be47e] 0002fcac                  dc.l edoic_new
[000be482]                           dc.w $8000
[000be484]                           dc.b $00
[000be485]                           dc.b $00
[000be486]                           dc.b $00
[000be487]                           dc.b $00
[000be488]                           dc.b $00
[000be489]                           dc.b $00
[000be48a]                           dc.b $00
[000be48b]                           dc.b $00
[000be48c]                           dc.b $00
[000be48d]                           dc.b $00
[000be48e]                           dc.b $00
[000be48f]                           dc.b $00
[000be490]                           dc.b $00
[000be491]                           dc.b $00
_04_ED_ICON:
[000be492]                           dc.b $00
[000be493]                           dc.b $06
[000be494]                           dc.w $ffff
[000be496]                           dc.w $ffff
[000be498]                           dc.b $00
[000be499]                           dc.b $18
[000be49a]                           dc.w $4007
[000be49c]                           dc.b $00
[000be49d]                           dc.b $10
[000be49e] 000be3f2                  dc.l A_3DBUTTON06
[000be4a2]                           dc.b $00
[000be4a3]                           dc.b $01
[000be4a4]                           dc.b $00
[000be4a5]                           dc.b $03
[000be4a6]                           dc.b $00
[000be4a7]                           dc.b $0a
[000be4a8]                           dc.b $00
[000be4a9]                           dc.b $02
_04aED_ICON:
[000be4aa] 0002fd70                  dc.l edoic_ok
[000be4ae]                           dc.b $00
[000be4af]                           dc.b $00
[000be4b0]                           dc.b $00
[000be4b1]                           dc.b $00
[000be4b2]                           dc.w $8000
[000be4b4]                           dc.w $884f
[000be4b6]                           dc.b $00
[000be4b7]                           dc.b $00
[000be4b8]                           dc.b $00
[000be4b9]                           dc.b $00
[000be4ba]                           dc.b $00
[000be4bb]                           dc.b $00
[000be4bc]                           dc.b $00
[000be4bd]                           dc.b $00
[000be4be]                           dc.b $00
[000be4bf]                           dc.b $00
[000be4c0]                           dc.b $00
[000be4c1]                           dc.b $00
_06_ED_ICON:
[000be4c2]                           dc.b $00
[000be4c3]                           dc.b $08
[000be4c4]                           dc.w $ffff
[000be4c6]                           dc.w $ffff
[000be4c8]                           dc.b $00
[000be4c9]                           dc.b $18
[000be4ca]                           dc.w $4005
[000be4cc]                           dc.b $00
[000be4cd]                           dc.b $10
[000be4ce] 000be3d2                  dc.l A_3DBUTTON05
[000be4d2]                           dc.b $00
[000be4d3]                           dc.b $0d
[000be4d4]                           dc.b $00
[000be4d5]                           dc.b $03
[000be4d6]                           dc.b $00
[000be4d7]                           dc.b $0a
[000be4d8]                           dc.b $00
[000be4d9]                           dc.b $02
_06aED_ICON:
[000be4da] 0002d91e                  dc.l ed_abort
[000be4de]                           dc.b $00
[000be4df]                           dc.b $00
[000be4e0]                           dc.b $00
[000be4e1]                           dc.b $00
[000be4e2]                           dc.w $8000
[000be4e4]                           dc.w $8841
[000be4e6]                           dc.b $00
[000be4e7]                           dc.b $00
[000be4e8]                           dc.b $00
[000be4e9]                           dc.b $00
[000be4ea]                           dc.b $00
[000be4eb]                           dc.b $00
[000be4ec]                           dc.b $00
[000be4ed]                           dc.b $00
[000be4ee]                           dc.b $00
[000be4ef]                           dc.b $00
[000be4f0]                           dc.b $00
[000be4f1]                           dc.b $00
_08_ED_ICON:
[000be4f2]                           dc.b $00
[000be4f3]                           dc.b $00
[000be4f4]                           dc.w $ffff
[000be4f6]                           dc.w $ffff
[000be4f8]                           dc.b $00
[000be4f9]                           dc.b $18
[000be4fa]                           dc.w $4005
[000be4fc]                           dc.b $00
[000be4fd]                           dc.b $10
[000be4fe] 000be392                  dc.l A_3DBUTTON01
[000be502]                           dc.b $00
[000be503]                           dc.b $19
[000be504]                           dc.b $00
[000be505]                           dc.b $03
[000be506]                           dc.b $00
[000be507]                           dc.b $0a
[000be508]                           dc.b $00
[000be509]                           dc.b $02
_08aED_ICON:
[000be50a] 0002fd20                  dc.l edoic_edit
[000be50e]                           dc.b $00
[000be50f]                           dc.b $00
[000be510]                           dc.b $00
[000be511]                           dc.b $00
[000be512]                           dc.w $8020
[000be514]                           dc.w $8845
[000be516]                           dc.b $00
[000be517]                           dc.b $00
[000be518]                           dc.b $00
[000be519]                           dc.b $00
[000be51a]                           dc.b $00
[000be51b]                           dc.b $00
[000be51c]                           dc.b $00
[000be51d]                           dc.b $00
[000be51e]                           dc.b $00
[000be51f]                           dc.b $00
[000be520]                           dc.b $00
[000be521]                           dc.b $00
sm:
[000be522]                           dc.b $00
[000be523]                           dc.b $00
[000be524]                           dc.b $00
[000be525]                           dc.b $00
[000be526] 0002fd70                  dc.l edoic_ok
[000be52a] 00049b7c                  dc.l Aob_delete
[000be52e] 000be36c                  dc.l title
[000be532] 000be359                  dc.l help_title
[000be536]                           dc.b $00
[000be537]                           dc.b $00
[000be538]                           dc.b $00
[000be539]                           dc.b $00
