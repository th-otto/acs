
edpa_col:
[00027406] 3f03                      move.w     d3,-(a7)
[00027408] 2f0a                      move.l     a2,-(a7)
[0002740a] 2079 0010 1f12            movea.l    ACSblk,a0
[00027410] 2268 025c                 movea.l    604(a0),a1
[00027414] 2469 003c                 movea.l    60(a1),a2
[00027418] 584a                      addq.w     #4,a2
[0002741a] 700d                      moveq.l    #13,d0
[0002741c] 3f00                      move.w     d0,-(a7)
[0002741e] 740e                      moveq.l    #14,d2
[00027420] 720b                      moveq.l    #11,d1
[00027422] 700f                      moveq.l    #15,d0
[00027424] c06a 0002                 and.w      2(a2),d0
[00027428] 4eb9 0002 f280            jsr        oe_colsel
[0002742e] 544f                      addq.w     #2,a7
[00027430] 3600                      move.w     d0,d3
[00027432] 6b28                      bmi.s      edpa_col_1
[00027434] 72f0                      moveq.l    #-16,d1
[00027436] c292                      and.l      (a2),d1
[00027438] 48c0                      ext.l      d0
[0002743a] 8280                      or.l       d0,d1
[0002743c] 2481                      move.l     d1,(a2)
[0002743e] 2079 0010 1f12            movea.l    ACSblk,a0
[00027444] 2068 0258                 movea.l    600(a0),a0
[00027448] 2279 0010 1f12            movea.l    ACSblk,a1
[0002744e] 2469 0258                 movea.l    600(a1),a2
[00027452] 226a 0066                 movea.l    102(a2),a1
[00027456] 7001                      moveq.l    #1,d0
[00027458] 72ff                      moveq.l    #-1,d1
[0002745a] 4e91                      jsr        (a1)
edpa_col_1:
[0002745c] 245f                      movea.l    (a7)+,a2
[0002745e] 361f                      move.w     (a7)+,d3
[00027460] 4e75                      rts

edpa_frame:
[00027462] 2079 0010 1f12            movea.l    ACSblk,a0
[00027468] 2268 025c                 movea.l    604(a0),a1
[0002746c] 2069 003c                 movea.l    60(a1),a0
[00027470] 0aa8 0020 0000 0004       eori.l     #$00200000,4(a0)
[00027478] 72ff                      moveq.l    #-1,d1
[0002747a] 7002                      moveq.l    #2,d0
[0002747c] 2079 0010 1f12            movea.l    ACSblk,a0
[00027482] 2068 0258                 movea.l    600(a0),a0
[00027486] 2279 0010 1f12            movea.l    ACSblk,a1
[0002748c] 2269 0258                 movea.l    600(a1),a1
[00027490] 2269 0066                 movea.l    102(a1),a1
[00027494] 4e91                      jsr        (a1)
[00027496] 4e75                      rts

edpa_pattern:
[00027498] 2f0a                      move.l     a2,-(a7)
[0002749a] 2f0b                      move.l     a3,-(a7)
[0002749c] 45f9 0010 1f12            lea.l      ACSblk,a2
[000274a2] 2052                      movea.l    (a2),a0
[000274a4] 2268 025c                 movea.l    604(a0),a1
[000274a8] 2669 003c                 movea.l    60(a1),a3
[000274ac] 584b                      addq.w     #4,a3
[000274ae] 3228 0260                 move.w     608(a0),d1
[000274b2] 48c1                      ext.l      d1
[000274b4] 2001                      move.l     d1,d0
[000274b6] d080                      add.l      d0,d0
[000274b8] d081                      add.l      d1,d0
[000274ba] e788                      lsl.l      #3,d0
[000274bc] 2071 080c                 movea.l    12(a1,d0.l),a0
[000274c0] 243c 00df 0000            move.l     #$00DF0000,d2
[000274c6] c4a8 0004                 and.l      4(a0),d2
[000274ca] 2013                      move.l     (a3),d0
[000274cc] c0bc ff20 ffff            and.l      #$FF20FFFF,d0
[000274d2] 8480                      or.l       d0,d2
[000274d4] 2682                      move.l     d2,(a3)
[000274d6] 72ff                      moveq.l    #-1,d1
[000274d8] 7002                      moveq.l    #2,d0
[000274da] 2052                      movea.l    (a2),a0
[000274dc] 2068 0258                 movea.l    600(a0),a0
[000274e0] 2252                      movea.l    (a2),a1
[000274e2] 2669 0258                 movea.l    600(a1),a3
[000274e6] 226b 0066                 movea.l    102(a3),a1
[000274ea] 4e91                      jsr        (a1)
[000274ec] 265f                      movea.l    (a7)+,a3
[000274ee] 245f                      movea.l    (a7)+,a2
[000274f0] 4e75                      rts

init_pattern:
[000274f2] 2f0a                      move.l     a2,-(a7)
[000274f4] 2f0b                      move.l     a3,-(a7)
[000274f6] 2448                      movea.l    a0,a2
[000274f8] 43f9 000b 5094            lea.l      data,a1
[000274fe] 303c 2329                 move.w     #$2329,d0
[00027502] 266a 0004                 movea.l    4(a2),a3
[00027506] 4e93                      jsr        (a3)
[00027508] 265f                      movea.l    (a7)+,a3
[0002750a] 245f                      movea.l    (a7)+,a2
[0002750c] 4e75                      rts

minsize:
[0002750e] 2079 0010 1f12            movea.l    ACSblk,a0
[00027514] 32a8 0012                 move.w     18(a0),(a1)
[00027518] 2079 0010 1f12            movea.l    ACSblk,a0
[0002751e] 226f 0004                 movea.l    4(a7),a1
[00027522] 32a8 0014                 move.w     20(a0),(a1)
[00027526] 4e75                      rts

object_tree:
[00027528] 48e7 0034                 movem.l    a2-a3/a5,-(a7)
[0002752c] 594f                      subq.w     #4,a7
[0002752e] 2a48                      movea.l    a0,a5
[00027530] 2649                      movea.l    a1,a3
[00027532] 41f9 000b 46b6            lea.l      ED_PATTERN,a0
[00027538] 4eb9 0004 9a5c            jsr        Aob_create
[0002753e] 2448                      movea.l    a0,a2
[00027540] 200a                      move.l     a2,d0
[00027542] 6700 0080                 beq        object_tree_1
[00027546] 41ea 0030                 lea.l      48(a2),a0
[0002754a] 7216                      moveq.l    #22,d1
[0002754c] c26b 0008                 and.w      8(a3),d1
[00027550] 8368 0008                 or.w       d1,8(a0)
[00027554] 723f                      moveq.l    #63,d1
[00027556] c26b 000a                 and.w      10(a3),d1
[0002755a] 8368 000a                 or.w       d1,10(a0)
[0002755e] 2668 000c                 movea.l    12(a0),a3
[00027562] 4857                      pea.l      (a7)
[00027564] 43f9 000b 50ee            lea.l      $000B50EE,a1
[0002756a] 2055                      movea.l    (a5),a0
[0002756c] 4eb9 0007 594a            jsr        sscanf
[00027572] 584f                      addq.w     #4,a7
[00027574] 2757 0004                 move.l     (a7),4(a3)
[00027578] 2017                      move.l     (a7),d0
[0002757a] c0bc 0020 0000            and.l      #$00200000,d0
[00027580] 6706                      beq.s      object_tree_2
[00027582] 006a 0001 00b2            ori.w      #$0001,178(a2)
object_tree_2:
[00027588] 700f                      moveq.l    #15,d0
[0002758a] c06f 0002                 and.w      2(a7),d0
[0002758e] 48c0                      ext.l      d0
[00027590] e588                      lsl.l      #2,d0
[00027592] 41f9 000b e270            lea.l      colour_text,a0
[00027598] 2270 0800                 movea.l    0(a0,d0.l),a1
[0002759c] 204a                      movea.l    a2,a0
[0002759e] 700e                      moveq.l    #14,d0
[000275a0] 4eb9 0004 afe0            jsr        Aob_puttext
[000275a6] 700f                      moveq.l    #15,d0
[000275a8] c06f 0002                 and.w      2(a7),d0
[000275ac] 026a fff0 0146            andi.w     #$FFF0,326(a2)
[000275b2] c07c 000f                 and.w      #$000F,d0
[000275b6] 816a 0146                 or.w       d0,326(a2)
[000275ba] 7000                      moveq.l    #0,d0
[000275bc] 2740 001c                 move.l     d0,28(a3)
[000275c0] 2740 0018                 move.l     d0,24(a3)
object_tree_1:
[000275c4] 204a                      movea.l    a2,a0
[000275c6] 584f                      addq.w     #4,a7
[000275c8] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[000275cc] 4e75                      rts

test_it:
[000275ce] 2f0a                      move.l     a2,-(a7)
[000275d0] 2449                      movea.l    a1,a2
[000275d2] 22bc 0005 b032            move.l     #A_pattern,(a1)
[000275d8] 486a 0004                 pea.l      4(a2)
[000275dc] 43f9 000b 50ee            lea.l      $000B50EE,a1
[000275e2] 2050                      movea.l    (a0),a0
[000275e4] 4eb9 0007 594a            jsr        sscanf
[000275ea] 584f                      addq.w     #4,a7
[000275ec] 42aa 0008                 clr.l      8(a2)
[000275f0] 7000                      moveq.l    #0,d0
[000275f2] 2540 0014                 move.l     d0,20(a2)
[000275f6] 2540 0010                 move.l     d0,16(a2)
[000275fa] 2540 000c                 move.l     d0,12(a2)
[000275fe] 42aa 0018                 clr.l      24(a2)
[00027602] 42aa 001c                 clr.l      28(a2)
[00027606] 245f                      movea.l    (a7)+,a2
[00027608] 4e75                      rts

abort:
[0002760a] 2079 000b 50d4            movea.l    $000B50D4,a0
[00027610] 2050                      movea.l    (a0),a0
[00027612] 4e90                      jsr        (a0)
[00027614] 4e75                      rts

ok:
[00027616] 2f0a                      move.l     a2,-(a7)
[00027618] 2f0b                      move.l     a3,-(a7)
[0002761a] 4fef ffd2                 lea.l      -46(a7),a7
[0002761e] 2079 0010 1f12            movea.l    ACSblk,a0
[00027624] 2268 0258                 movea.l    600(a0),a1
[00027628] 2069 0014                 movea.l    20(a1),a0
[0002762c] 2668 003c                 movea.l    60(a0),a3
[00027630] 45f9 000f f586            lea.l      parm,a2
[00027636] 2f2b 0004                 move.l     4(a3),-(a7)
[0002763a] 43f9 000b 50ee            lea.l      $000B50EE,a1
[00027640] 204a                      movea.l    a2,a0
[00027642] 4eb9 0007 5680            jsr        sprintf
[00027648] 584f                      addq.w     #4,a7
[0002764a] 2e8a                      move.l     a2,(a7)
[0002764c] 2f7c 000b 50ed 0004       move.l     #$000B50ED,4(a7)
[00027654] 4240                      clr.w      d0
[00027656] 3f40 001c                 move.w     d0,28(a7)
[0002765a] 3f40 0012                 move.w     d0,18(a7)
[0002765e] 3f40 0008                 move.w     d0,8(a7)
[00027662] 7200                      moveq.l    #0,d1
[00027664] 2f41 001e                 move.l     d1,30(a7)
[00027668] 2f41 0014                 move.l     d1,20(a7)
[0002766c] 2f41 000a                 move.l     d1,10(a7)
[00027670] 7000                      moveq.l    #0,d0
[00027672] 2f40 0022                 move.l     d0,34(a7)
[00027676] 2f40 0018                 move.l     d0,24(a7)
[0002767a] 2f40 000e                 move.l     d0,14(a7)
[0002767e] 42af 0026                 clr.l      38(a7)
[00027682] 42af 002a                 clr.l      42(a7)
[00027686] 2079 0010 1f12            movea.l    ACSblk,a0
[0002768c] 3228 0014                 move.w     20(a0),d1
[00027690] 3028 0012                 move.w     18(a0),d0
[00027694] 41d7                      lea.l      (a7),a0
[00027696] 2279 000b 50d4            movea.l    $000B50D4,a1
[0002769c] 2269 0004                 movea.l    4(a1),a1
[000276a0] 4e91                      jsr        (a1)
[000276a2] 6100 ff66                 bsr        abort
[000276a6] 4fef 002e                 lea.l      46(a7),a7
[000276aa] 265f                      movea.l    (a7)+,a3
[000276ac] 245f                      movea.l    (a7)+,a2
[000276ae] 4e75                      rts

	.data

BUBBLE_01:
[000b3f80]                           dc.b 'Die énderungen werden Åbernommen und Åberschreiben die alten Einstellungen.',0
BUBBLE_02:
[000b3fcc]                           dc.b 'Die énderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
TEXT_005:
[000b4017]                           dc.b $4f
[000b4018]                           dc.w $4b00
TEXT_009:
[000b401a]                           dc.b 'Abbruch',0
TEXT_02:
[000b4022]                           dc.b 'Rahmen',0
TEXT_03:
[000b4029]                           dc.b 'Muster:',0
TEXT_11:
[000b4031]                           dc.b 'Farbe:',0
help_title:
[000b4038]                           dc.b 'Der Pattern-Editor',0
title:
[000b404b]                           dc.b 'PATTERN -',0
[000b4055]                           dc.b $00
A_3DBUTTON01:
[000b4056] 0005a4e2                  dc.l A_3Dbutton
[000b405a]                           dc.w $29c1
[000b405c]                           dc.w $0178
[000b405e] 00059318                  dc.l Auo_string
[000b4062] 000b4017                  dc.l TEXT_005
[000b4066]                           dc.b $00
[000b4067]                           dc.b $00
[000b4068]                           dc.b $00
[000b4069]                           dc.b $00
[000b406a]                           dc.b $00
[000b406b]                           dc.b $00
[000b406c]                           dc.b $00
[000b406d]                           dc.b $00
[000b406e] 000b3f80                  dc.l BUBBLE_01
[000b4072]                           dc.b $00
[000b4073]                           dc.b $00
[000b4074]                           dc.b $00
[000b4075]                           dc.b $00
A_3DBUTTON04:
[000b4076] 0005a4e2                  dc.l A_3Dbutton
[000b407a]                           dc.w $29c1
[000b407c]                           dc.w $0178
[000b407e] 00059318                  dc.l Auo_string
[000b4082] 000b401a                  dc.l TEXT_009
[000b4086]                           dc.b $00
[000b4087]                           dc.b $00
[000b4088]                           dc.b $00
[000b4089]                           dc.b $00
[000b408a]                           dc.b $00
[000b408b]                           dc.b $00
[000b408c]                           dc.b $00
[000b408d]                           dc.b $00
[000b408e] 000b3fcc                  dc.l BUBBLE_02
[000b4092]                           dc.b $00
[000b4093]                           dc.b $00
[000b4094]                           dc.b $00
[000b4095]                           dc.b $00
A_3DBUTTON06:
[000b4096] 0005a4e2                  dc.l A_3Dbutton
[000b409a]                           dc.w $21f1
[000b409c]                           dc.w $01f8
[000b409e] 00059318                  dc.l Auo_string
[000b40a2]                           dc.b $00
[000b40a3]                           dc.b $00
[000b40a4]                           dc.b $00
[000b40a5]                           dc.b $00
[000b40a6]                           dc.b $00
[000b40a7]                           dc.b $00
[000b40a8]                           dc.b $00
[000b40a9]                           dc.b $00
[000b40aa]                           dc.b $00
[000b40ab]                           dc.b $00
[000b40ac]                           dc.b $00
[000b40ad]                           dc.b $00
[000b40ae]                           dc.b $00
[000b40af]                           dc.b $00
[000b40b0]                           dc.b $00
[000b40b1]                           dc.b $00
[000b40b2]                           dc.b $00
[000b40b3]                           dc.b $00
[000b40b4]                           dc.b $00
[000b40b5]                           dc.b $00
A_3DBUTTON07:
[000b40b6] 0005a4e2                  dc.l A_3Dbutton
[000b40ba]                           dc.w $29f1
[000b40bc]                           dc.w $01f8
[000b40be] 00059318                  dc.l Auo_string
[000b40c2]                           dc.b $00
[000b40c3]                           dc.b $00
[000b40c4]                           dc.b $00
[000b40c5]                           dc.b $00
[000b40c6]                           dc.b $00
[000b40c7]                           dc.b $00
[000b40c8]                           dc.b $00
[000b40c9]                           dc.b $00
[000b40ca]                           dc.b $00
[000b40cb]                           dc.b $00
[000b40cc]                           dc.b $00
[000b40cd]                           dc.b $00
[000b40ce]                           dc.b $00
[000b40cf]                           dc.b $00
[000b40d0]                           dc.b $00
[000b40d1]                           dc.b $00
[000b40d2]                           dc.b $00
[000b40d3]                           dc.b $00
[000b40d4]                           dc.b $00
[000b40d5]                           dc.b $00
A_3DBUTTON27:
[000b40d6] 0005a4e2                  dc.l A_3Dbutton
[000b40da]                           dc.w $09f1
[000b40dc]                           dc.w $0178
[000b40de] 00059318                  dc.l Auo_string
[000b40e2]                           dc.b $00
[000b40e3]                           dc.b $00
[000b40e4]                           dc.b $00
[000b40e5]                           dc.b $00
[000b40e6]                           dc.b $00
[000b40e7]                           dc.b $00
[000b40e8]                           dc.b $00
[000b40e9]                           dc.b $00
[000b40ea]                           dc.b $00
[000b40eb]                           dc.b $00
[000b40ec]                           dc.b $00
[000b40ed]                           dc.b $00
[000b40ee]                           dc.b $00
[000b40ef]                           dc.b $00
[000b40f0]                           dc.b $00
[000b40f1]                           dc.b $00
[000b40f2]                           dc.b $00
[000b40f3]                           dc.b $00
[000b40f4]                           dc.b $00
[000b40f5]                           dc.b $00
A_ARROWS02:
[000b40f6] 0005b212                  dc.l A_arrows
[000b40fa]                           dc.w $1301
[000b40fc]                           dc.b $00
[000b40fd]                           dc.b $01
[000b40fe]                           dc.b $00
[000b40ff]                           dc.b $00
[000b4100]                           dc.b $00
[000b4101]                           dc.b $00
[000b4102]                           dc.b $00
[000b4103]                           dc.b $00
[000b4104]                           dc.b $00
[000b4105]                           dc.b $00
[000b4106]                           dc.b $00
[000b4107]                           dc.b $00
[000b4108]                           dc.b $00
[000b4109]                           dc.b $00
[000b410a]                           dc.b $00
[000b410b]                           dc.b $00
[000b410c]                           dc.b $00
[000b410d]                           dc.b $00
[000b410e]                           dc.b $00
[000b410f]                           dc.b $00
[000b4110]                           dc.b $00
[000b4111]                           dc.b $00
[000b4112]                           dc.b $00
[000b4113]                           dc.b $00
[000b4114]                           dc.b $00
[000b4115]                           dc.b $00
A_CHECKBOX02:
[000b4116] 000593fc                  dc.l A_checkbox
[000b411a]                           dc.b $00
[000b411b]                           dc.b $00
[000b411c]                           dc.b $00
[000b411d]                           dc.b $01
[000b411e] 00059318                  dc.l Auo_string
[000b4122] 000b4022                  dc.l TEXT_02
[000b4126]                           dc.b $00
[000b4127]                           dc.b $00
[000b4128]                           dc.b $00
[000b4129]                           dc.b $00
[000b412a]                           dc.b $00
[000b412b]                           dc.b $00
[000b412c]                           dc.b $00
[000b412d]                           dc.b $00
[000b412e]                           dc.b $00
[000b412f]                           dc.b $00
[000b4130]                           dc.b $00
[000b4131]                           dc.b $00
[000b4132]                           dc.b $00
[000b4133]                           dc.b $00
[000b4134]                           dc.b $00
[000b4135]                           dc.b $00
A_INNERFRAME02:
[000b4136] 00059f9c                  dc.l A_innerframe
[000b413a]                           dc.w $1800
[000b413c]                           dc.w $8f19
[000b413e] 00059318                  dc.l Auo_string
[000b4142] 000b4029                  dc.l TEXT_03
[000b4146]                           dc.b $00
[000b4147]                           dc.b $00
[000b4148]                           dc.b $00
[000b4149]                           dc.b $00
[000b414a]                           dc.b $00
[000b414b]                           dc.b $00
[000b414c]                           dc.b $00
[000b414d]                           dc.b $00
[000b414e]                           dc.b $00
[000b414f]                           dc.b $00
[000b4150]                           dc.b $00
[000b4151]                           dc.b $00
[000b4152]                           dc.b $00
[000b4153]                           dc.b $00
[000b4154]                           dc.b $00
[000b4155]                           dc.b $00
A_pattern001:
[000b4156] 0005b032                  dc.l A_pattern
[000b415a]                           dc.b $00
[000b415b]                           dc.b $50
[000b415c]                           dc.b $00
[000b415d]                           dc.b $01
[000b415e]                           dc.b $00
[000b415f]                           dc.b $00
[000b4160]                           dc.b $00
[000b4161]                           dc.b $00
[000b4162]                           dc.b $00
[000b4163]                           dc.b $00
[000b4164]                           dc.b $00
[000b4165]                           dc.b $00
[000b4166]                           dc.b $00
[000b4167]                           dc.b $00
[000b4168]                           dc.b $00
[000b4169]                           dc.b $00
[000b416a]                           dc.b $00
[000b416b]                           dc.b $00
[000b416c]                           dc.b $00
[000b416d]                           dc.b $00
[000b416e]                           dc.b $00
[000b416f]                           dc.b $00
[000b4170]                           dc.b $00
[000b4171]                           dc.b $00
[000b4172]                           dc.b $00
[000b4173]                           dc.b $00
[000b4174]                           dc.b $00
[000b4175]                           dc.b $00
USER_007:
[000b4176] 0005b032                  dc.l A_pattern
[000b417a]                           dc.b $00
[000b417b]                           dc.b $21
[000b417c]                           dc.b $00
[000b417d]                           dc.b $01
[000b417e]                           dc.b $00
[000b417f]                           dc.b $00
[000b4180]                           dc.b $00
[000b4181]                           dc.b $00
[000b4182]                           dc.b $00
[000b4183]                           dc.b $00
[000b4184]                           dc.b $00
[000b4185]                           dc.b $00
[000b4186]                           dc.b $00
[000b4187]                           dc.b $00
[000b4188]                           dc.b $00
[000b4189]                           dc.b $00
[000b418a]                           dc.b $00
[000b418b]                           dc.b $00
[000b418c]                           dc.b $00
[000b418d]                           dc.b $00
[000b418e]                           dc.b $00
[000b418f]                           dc.b $00
[000b4190]                           dc.b $00
[000b4191]                           dc.b $00
[000b4192]                           dc.b $00
[000b4193]                           dc.b $00
[000b4194]                           dc.b $00
[000b4195]                           dc.b $00
USER_009:
[000b4196] 0005b032                  dc.l A_pattern
[000b419a]                           dc.b $00
[000b419b]                           dc.b $23
[000b419c]                           dc.b $00
[000b419d]                           dc.b $01
[000b419e]                           dc.b $00
[000b419f]                           dc.b $00
[000b41a0]                           dc.b $00
[000b41a1]                           dc.b $00
[000b41a2]                           dc.b $00
[000b41a3]                           dc.b $00
[000b41a4]                           dc.b $00
[000b41a5]                           dc.b $00
[000b41a6]                           dc.b $00
[000b41a7]                           dc.b $00
[000b41a8]                           dc.b $00
[000b41a9]                           dc.b $00
[000b41aa]                           dc.b $00
[000b41ab]                           dc.b $00
[000b41ac]                           dc.b $00
[000b41ad]                           dc.b $00
[000b41ae]                           dc.b $00
[000b41af]                           dc.b $00
[000b41b0]                           dc.b $00
[000b41b1]                           dc.b $00
[000b41b2]                           dc.b $00
[000b41b3]                           dc.b $00
[000b41b4]                           dc.b $00
[000b41b5]                           dc.b $00
USER_012:
[000b41b6] 0005b032                  dc.l A_pattern
[000b41ba]                           dc.b $00
[000b41bb]                           dc.b $22
[000b41bc]                           dc.b $00
[000b41bd]                           dc.b $01
[000b41be]                           dc.b $00
[000b41bf]                           dc.b $00
[000b41c0]                           dc.b $00
[000b41c1]                           dc.b $00
[000b41c2]                           dc.b $00
[000b41c3]                           dc.b $00
[000b41c4]                           dc.b $00
[000b41c5]                           dc.b $00
[000b41c6]                           dc.b $00
[000b41c7]                           dc.b $00
[000b41c8]                           dc.b $00
[000b41c9]                           dc.b $00
[000b41ca]                           dc.b $00
[000b41cb]                           dc.b $00
[000b41cc]                           dc.b $00
[000b41cd]                           dc.b $00
[000b41ce]                           dc.b $00
[000b41cf]                           dc.b $00
[000b41d0]                           dc.b $00
[000b41d1]                           dc.b $00
[000b41d2]                           dc.b $00
[000b41d3]                           dc.b $00
[000b41d4]                           dc.b $00
[000b41d5]                           dc.b $00
USER_013:
[000b41d6] 0005b032                  dc.l A_pattern
[000b41da]                           dc.b $00
[000b41db]                           dc.b $24
[000b41dc]                           dc.b $00
[000b41dd]                           dc.b $01
[000b41de]                           dc.b $00
[000b41df]                           dc.b $00
[000b41e0]                           dc.b $00
[000b41e1]                           dc.b $00
[000b41e2]                           dc.b $00
[000b41e3]                           dc.b $00
[000b41e4]                           dc.b $00
[000b41e5]                           dc.b $00
[000b41e6]                           dc.b $00
[000b41e7]                           dc.b $00
[000b41e8]                           dc.b $00
[000b41e9]                           dc.b $00
[000b41ea]                           dc.b $00
[000b41eb]                           dc.b $00
[000b41ec]                           dc.b $00
[000b41ed]                           dc.b $00
[000b41ee]                           dc.b $00
[000b41ef]                           dc.b $00
[000b41f0]                           dc.b $00
[000b41f1]                           dc.b $00
[000b41f2]                           dc.b $00
[000b41f3]                           dc.b $00
[000b41f4]                           dc.b $00
[000b41f5]                           dc.b $00
USER_014:
[000b41f6] 0005b032                  dc.l A_pattern
[000b41fa]                           dc.b $00
[000b41fb]                           dc.b $25
[000b41fc]                           dc.b $00
[000b41fd]                           dc.b $01
[000b41fe]                           dc.b $00
[000b41ff]                           dc.b $00
[000b4200]                           dc.b $00
[000b4201]                           dc.b $00
[000b4202]                           dc.b $00
[000b4203]                           dc.b $00
[000b4204]                           dc.b $00
[000b4205]                           dc.b $00
[000b4206]                           dc.b $00
[000b4207]                           dc.b $00
[000b4208]                           dc.b $00
[000b4209]                           dc.b $00
[000b420a]                           dc.b $00
[000b420b]                           dc.b $00
[000b420c]                           dc.b $00
[000b420d]                           dc.b $00
[000b420e]                           dc.b $00
[000b420f]                           dc.b $00
[000b4210]                           dc.b $00
[000b4211]                           dc.b $00
[000b4212]                           dc.b $00
[000b4213]                           dc.b $00
[000b4214]                           dc.b $00
[000b4215]                           dc.b $00
USER_015:
[000b4216] 0005b032                  dc.l A_pattern
[000b421a]                           dc.b $00
[000b421b]                           dc.b $26
[000b421c]                           dc.b $00
[000b421d]                           dc.b $01
[000b421e]                           dc.b $00
[000b421f]                           dc.b $00
[000b4220]                           dc.b $00
[000b4221]                           dc.b $00
[000b4222]                           dc.b $00
[000b4223]                           dc.b $00
[000b4224]                           dc.b $00
[000b4225]                           dc.b $00
[000b4226]                           dc.b $00
[000b4227]                           dc.b $00
[000b4228]                           dc.b $00
[000b4229]                           dc.b $00
[000b422a]                           dc.b $00
[000b422b]                           dc.b $00
[000b422c]                           dc.b $00
[000b422d]                           dc.b $00
[000b422e]                           dc.b $00
[000b422f]                           dc.b $00
[000b4230]                           dc.b $00
[000b4231]                           dc.b $00
[000b4232]                           dc.b $00
[000b4233]                           dc.b $00
[000b4234]                           dc.b $00
[000b4235]                           dc.b $00
USER_016:
[000b4236] 0005b032                  dc.l A_pattern
[000b423a]                           dc.b $00
[000b423b]                           dc.b $27
[000b423c]                           dc.b $00
[000b423d]                           dc.b $01
[000b423e]                           dc.b $00
[000b423f]                           dc.b $00
[000b4240]                           dc.b $00
[000b4241]                           dc.b $00
[000b4242]                           dc.b $00
[000b4243]                           dc.b $00
[000b4244]                           dc.b $00
[000b4245]                           dc.b $00
[000b4246]                           dc.b $00
[000b4247]                           dc.b $00
[000b4248]                           dc.b $00
[000b4249]                           dc.b $00
[000b424a]                           dc.b $00
[000b424b]                           dc.b $00
[000b424c]                           dc.b $00
[000b424d]                           dc.b $00
[000b424e]                           dc.b $00
[000b424f]                           dc.b $00
[000b4250]                           dc.b $00
[000b4251]                           dc.b $00
[000b4252]                           dc.b $00
[000b4253]                           dc.b $00
[000b4254]                           dc.b $00
[000b4255]                           dc.b $00
USER_017:
[000b4256] 0005b032                  dc.l A_pattern
[000b425a]                           dc.b $00
[000b425b]                           dc.b $28
[000b425c]                           dc.b $00
[000b425d]                           dc.b $01
[000b425e]                           dc.b $00
[000b425f]                           dc.b $00
[000b4260]                           dc.b $00
[000b4261]                           dc.b $00
[000b4262]                           dc.b $00
[000b4263]                           dc.b $00
[000b4264]                           dc.b $00
[000b4265]                           dc.b $00
[000b4266]                           dc.b $00
[000b4267]                           dc.b $00
[000b4268]                           dc.b $00
[000b4269]                           dc.b $00
[000b426a]                           dc.b $00
[000b426b]                           dc.b $00
[000b426c]                           dc.b $00
[000b426d]                           dc.b $00
[000b426e]                           dc.b $00
[000b426f]                           dc.b $00
[000b4270]                           dc.b $00
[000b4271]                           dc.b $00
[000b4272]                           dc.b $00
[000b4273]                           dc.b $00
[000b4274]                           dc.b $00
[000b4275]                           dc.b $00
USER_018:
[000b4276] 0005b032                  dc.l A_pattern
[000b427a]                           dc.b $00
[000b427b]                           dc.b $29
[000b427c]                           dc.b $00
[000b427d]                           dc.b $01
[000b427e]                           dc.b $00
[000b427f]                           dc.b $00
[000b4280]                           dc.b $00
[000b4281]                           dc.b $00
[000b4282]                           dc.b $00
[000b4283]                           dc.b $00
[000b4284]                           dc.b $00
[000b4285]                           dc.b $00
[000b4286]                           dc.b $00
[000b4287]                           dc.b $00
[000b4288]                           dc.b $00
[000b4289]                           dc.b $00
[000b428a]                           dc.b $00
[000b428b]                           dc.b $00
[000b428c]                           dc.b $00
[000b428d]                           dc.b $00
[000b428e]                           dc.b $00
[000b428f]                           dc.b $00
[000b4290]                           dc.b $00
[000b4291]                           dc.b $00
[000b4292]                           dc.b $00
[000b4293]                           dc.b $00
[000b4294]                           dc.b $00
[000b4295]                           dc.b $00
USER_019:
[000b4296] 0005b032                  dc.l A_pattern
[000b429a]                           dc.b $00
[000b429b]                           dc.b $2a
[000b429c]                           dc.b $00
[000b429d]                           dc.b $01
[000b429e]                           dc.b $00
[000b429f]                           dc.b $00
[000b42a0]                           dc.b $00
[000b42a1]                           dc.b $00
[000b42a2]                           dc.b $00
[000b42a3]                           dc.b $00
[000b42a4]                           dc.b $00
[000b42a5]                           dc.b $00
[000b42a6]                           dc.b $00
[000b42a7]                           dc.b $00
[000b42a8]                           dc.b $00
[000b42a9]                           dc.b $00
[000b42aa]                           dc.b $00
[000b42ab]                           dc.b $00
[000b42ac]                           dc.b $00
[000b42ad]                           dc.b $00
[000b42ae]                           dc.b $00
[000b42af]                           dc.b $00
[000b42b0]                           dc.b $00
[000b42b1]                           dc.b $00
[000b42b2]                           dc.b $00
[000b42b3]                           dc.b $00
[000b42b4]                           dc.b $00
[000b42b5]                           dc.b $00
USER_020:
[000b42b6] 0005b032                  dc.l A_pattern
[000b42ba]                           dc.b $00
[000b42bb]                           dc.b $2b
[000b42bc]                           dc.b $00
[000b42bd]                           dc.b $01
[000b42be]                           dc.b $00
[000b42bf]                           dc.b $00
[000b42c0]                           dc.b $00
[000b42c1]                           dc.b $00
[000b42c2]                           dc.b $00
[000b42c3]                           dc.b $00
[000b42c4]                           dc.b $00
[000b42c5]                           dc.b $00
[000b42c6]                           dc.b $00
[000b42c7]                           dc.b $00
[000b42c8]                           dc.b $00
[000b42c9]                           dc.b $00
[000b42ca]                           dc.b $00
[000b42cb]                           dc.b $00
[000b42cc]                           dc.b $00
[000b42cd]                           dc.b $00
[000b42ce]                           dc.b $00
[000b42cf]                           dc.b $00
[000b42d0]                           dc.b $00
[000b42d1]                           dc.b $00
[000b42d2]                           dc.b $00
[000b42d3]                           dc.b $00
[000b42d4]                           dc.b $00
[000b42d5]                           dc.b $00
USER_021:
[000b42d6] 0005b032                  dc.l A_pattern
[000b42da]                           dc.b $00
[000b42db]                           dc.b $2c
[000b42dc]                           dc.b $00
[000b42dd]                           dc.b $01
[000b42de]                           dc.b $00
[000b42df]                           dc.b $00
[000b42e0]                           dc.b $00
[000b42e1]                           dc.b $00
[000b42e2]                           dc.b $00
[000b42e3]                           dc.b $00
[000b42e4]                           dc.b $00
[000b42e5]                           dc.b $00
[000b42e6]                           dc.b $00
[000b42e7]                           dc.b $00
[000b42e8]                           dc.b $00
[000b42e9]                           dc.b $00
[000b42ea]                           dc.b $00
[000b42eb]                           dc.b $00
[000b42ec]                           dc.b $00
[000b42ed]                           dc.b $00
[000b42ee]                           dc.b $00
[000b42ef]                           dc.b $00
[000b42f0]                           dc.b $00
[000b42f1]                           dc.b $00
[000b42f2]                           dc.b $00
[000b42f3]                           dc.b $00
[000b42f4]                           dc.b $00
[000b42f5]                           dc.b $00
USER_022:
[000b42f6] 0005b032                  dc.l A_pattern
[000b42fa]                           dc.b $00
[000b42fb]                           dc.b $61
[000b42fc]                           dc.b $00
[000b42fd]                           dc.b $01
[000b42fe]                           dc.b $00
[000b42ff]                           dc.b $00
[000b4300]                           dc.b $00
[000b4301]                           dc.b $00
[000b4302]                           dc.b $00
[000b4303]                           dc.b $00
[000b4304]                           dc.b $00
[000b4305]                           dc.b $00
[000b4306]                           dc.b $00
[000b4307]                           dc.b $00
[000b4308]                           dc.b $00
[000b4309]                           dc.b $00
[000b430a]                           dc.b $00
[000b430b]                           dc.b $00
[000b430c]                           dc.b $00
[000b430d]                           dc.b $00
[000b430e]                           dc.b $00
[000b430f]                           dc.b $00
[000b4310]                           dc.b $00
[000b4311]                           dc.b $00
[000b4312]                           dc.b $00
[000b4313]                           dc.b $00
[000b4314]                           dc.b $00
[000b4315]                           dc.b $00
USER_023:
[000b4316] 0005b032                  dc.l A_pattern
[000b431a]                           dc.b $00
[000b431b]                           dc.b $62
[000b431c]                           dc.b $00
[000b431d]                           dc.b $01
[000b431e]                           dc.b $00
[000b431f]                           dc.b $00
[000b4320]                           dc.b $00
[000b4321]                           dc.b $00
[000b4322]                           dc.b $00
[000b4323]                           dc.b $00
[000b4324]                           dc.b $00
[000b4325]                           dc.b $00
[000b4326]                           dc.b $00
[000b4327]                           dc.b $00
[000b4328]                           dc.b $00
[000b4329]                           dc.b $00
[000b432a]                           dc.b $00
[000b432b]                           dc.b $00
[000b432c]                           dc.b $00
[000b432d]                           dc.b $00
[000b432e]                           dc.b $00
[000b432f]                           dc.b $00
[000b4330]                           dc.b $00
[000b4331]                           dc.b $00
[000b4332]                           dc.b $00
[000b4333]                           dc.b $00
[000b4334]                           dc.b $00
[000b4335]                           dc.b $00
USER_024:
[000b4336] 0005b032                  dc.l A_pattern
[000b433a]                           dc.b $00
[000b433b]                           dc.b $63
[000b433c]                           dc.b $00
[000b433d]                           dc.b $01
[000b433e]                           dc.b $00
[000b433f]                           dc.b $00
[000b4340]                           dc.b $00
[000b4341]                           dc.b $00
[000b4342]                           dc.b $00
[000b4343]                           dc.b $00
[000b4344]                           dc.b $00
[000b4345]                           dc.b $00
[000b4346]                           dc.b $00
[000b4347]                           dc.b $00
[000b4348]                           dc.b $00
[000b4349]                           dc.b $00
[000b434a]                           dc.b $00
[000b434b]                           dc.b $00
[000b434c]                           dc.b $00
[000b434d]                           dc.b $00
[000b434e]                           dc.b $00
[000b434f]                           dc.b $00
[000b4350]                           dc.b $00
[000b4351]                           dc.b $00
[000b4352]                           dc.b $00
[000b4353]                           dc.b $00
[000b4354]                           dc.b $00
[000b4355]                           dc.b $00
USER_025:
[000b4356] 0005b032                  dc.l A_pattern
[000b435a]                           dc.b $00
[000b435b]                           dc.b $64
[000b435c]                           dc.b $00
[000b435d]                           dc.b $01
[000b435e]                           dc.b $00
[000b435f]                           dc.b $00
[000b4360]                           dc.b $00
[000b4361]                           dc.b $00
[000b4362]                           dc.b $00
[000b4363]                           dc.b $00
[000b4364]                           dc.b $00
[000b4365]                           dc.b $00
[000b4366]                           dc.b $00
[000b4367]                           dc.b $00
[000b4368]                           dc.b $00
[000b4369]                           dc.b $00
[000b436a]                           dc.b $00
[000b436b]                           dc.b $00
[000b436c]                           dc.b $00
[000b436d]                           dc.b $00
[000b436e]                           dc.b $00
[000b436f]                           dc.b $00
[000b4370]                           dc.b $00
[000b4371]                           dc.b $00
[000b4372]                           dc.b $00
[000b4373]                           dc.b $00
[000b4374]                           dc.b $00
[000b4375]                           dc.b $00
USER_026:
[000b4376] 0005b032                  dc.l A_pattern
[000b437a]                           dc.b $00
[000b437b]                           dc.b $65
[000b437c]                           dc.b $00
[000b437d]                           dc.b $01
[000b437e]                           dc.b $00
[000b437f]                           dc.b $00
[000b4380]                           dc.b $00
[000b4381]                           dc.b $00
[000b4382]                           dc.b $00
[000b4383]                           dc.b $00
[000b4384]                           dc.b $00
[000b4385]                           dc.b $00
[000b4386]                           dc.b $00
[000b4387]                           dc.b $00
[000b4388]                           dc.b $00
[000b4389]                           dc.b $00
[000b438a]                           dc.b $00
[000b438b]                           dc.b $00
[000b438c]                           dc.b $00
[000b438d]                           dc.b $00
[000b438e]                           dc.b $00
[000b438f]                           dc.b $00
[000b4390]                           dc.b $00
[000b4391]                           dc.b $00
[000b4392]                           dc.b $00
[000b4393]                           dc.b $00
[000b4394]                           dc.b $00
[000b4395]                           dc.b $00
USER_027:
[000b4396] 0005b032                  dc.l A_pattern
[000b439a]                           dc.b $00
[000b439b]                           dc.b $66
[000b439c]                           dc.b $00
[000b439d]                           dc.b $01
[000b439e]                           dc.b $00
[000b439f]                           dc.b $00
[000b43a0]                           dc.b $00
[000b43a1]                           dc.b $00
[000b43a2]                           dc.b $00
[000b43a3]                           dc.b $00
[000b43a4]                           dc.b $00
[000b43a5]                           dc.b $00
[000b43a6]                           dc.b $00
[000b43a7]                           dc.b $00
[000b43a8]                           dc.b $00
[000b43a9]                           dc.b $00
[000b43aa]                           dc.b $00
[000b43ab]                           dc.b $00
[000b43ac]                           dc.b $00
[000b43ad]                           dc.b $00
[000b43ae]                           dc.b $00
[000b43af]                           dc.b $00
[000b43b0]                           dc.b $00
[000b43b1]                           dc.b $00
[000b43b2]                           dc.b $00
[000b43b3]                           dc.b $00
[000b43b4]                           dc.b $00
[000b43b5]                           dc.b $00
USER_028:
[000b43b6] 0005b032                  dc.l A_pattern
[000b43ba]                           dc.b $00
[000b43bb]                           dc.b $67
[000b43bc]                           dc.b $00
[000b43bd]                           dc.b $01
[000b43be]                           dc.b $00
[000b43bf]                           dc.b $00
[000b43c0]                           dc.b $00
[000b43c1]                           dc.b $00
[000b43c2]                           dc.b $00
[000b43c3]                           dc.b $00
[000b43c4]                           dc.b $00
[000b43c5]                           dc.b $00
[000b43c6]                           dc.b $00
[000b43c7]                           dc.b $00
[000b43c8]                           dc.b $00
[000b43c9]                           dc.b $00
[000b43ca]                           dc.b $00
[000b43cb]                           dc.b $00
[000b43cc]                           dc.b $00
[000b43cd]                           dc.b $00
[000b43ce]                           dc.b $00
[000b43cf]                           dc.b $00
[000b43d0]                           dc.b $00
[000b43d1]                           dc.b $00
[000b43d2]                           dc.b $00
[000b43d3]                           dc.b $00
[000b43d4]                           dc.b $00
[000b43d5]                           dc.b $00
USER_029:
[000b43d6] 0005b032                  dc.l A_pattern
[000b43da]                           dc.b $00
[000b43db]                           dc.b $68
[000b43dc]                           dc.b $00
[000b43dd]                           dc.b $01
[000b43de]                           dc.b $00
[000b43df]                           dc.b $00
[000b43e0]                           dc.b $00
[000b43e1]                           dc.b $00
[000b43e2]                           dc.b $00
[000b43e3]                           dc.b $00
[000b43e4]                           dc.b $00
[000b43e5]                           dc.b $00
[000b43e6]                           dc.b $00
[000b43e7]                           dc.b $00
[000b43e8]                           dc.b $00
[000b43e9]                           dc.b $00
[000b43ea]                           dc.b $00
[000b43eb]                           dc.b $00
[000b43ec]                           dc.b $00
[000b43ed]                           dc.b $00
[000b43ee]                           dc.b $00
[000b43ef]                           dc.b $00
[000b43f0]                           dc.b $00
[000b43f1]                           dc.b $00
[000b43f2]                           dc.b $00
[000b43f3]                           dc.b $00
[000b43f4]                           dc.b $00
[000b43f5]                           dc.b $00
USER_030:
[000b43f6] 0005b032                  dc.l A_pattern
[000b43fa]                           dc.b $00
[000b43fb]                           dc.b $69
[000b43fc]                           dc.b $00
[000b43fd]                           dc.b $01
[000b43fe]                           dc.b $00
[000b43ff]                           dc.b $00
[000b4400]                           dc.b $00
[000b4401]                           dc.b $00
[000b4402]                           dc.b $00
[000b4403]                           dc.b $00
[000b4404]                           dc.b $00
[000b4405]                           dc.b $00
[000b4406]                           dc.b $00
[000b4407]                           dc.b $00
[000b4408]                           dc.b $00
[000b4409]                           dc.b $00
[000b440a]                           dc.b $00
[000b440b]                           dc.b $00
[000b440c]                           dc.b $00
[000b440d]                           dc.b $00
[000b440e]                           dc.b $00
[000b440f]                           dc.b $00
[000b4410]                           dc.b $00
[000b4411]                           dc.b $00
[000b4412]                           dc.b $00
[000b4413]                           dc.b $00
[000b4414]                           dc.b $00
[000b4415]                           dc.b $00
USER_031:
[000b4416] 0005b032                  dc.l A_pattern
[000b441a]                           dc.b $00
[000b441b]                           dc.b $6b
[000b441c]                           dc.b $00
[000b441d]                           dc.b $01
[000b441e]                           dc.b $00
[000b441f]                           dc.b $00
[000b4420]                           dc.b $00
[000b4421]                           dc.b $00
[000b4422]                           dc.b $00
[000b4423]                           dc.b $00
[000b4424]                           dc.b $00
[000b4425]                           dc.b $00
[000b4426]                           dc.b $00
[000b4427]                           dc.b $00
[000b4428]                           dc.b $00
[000b4429]                           dc.b $00
[000b442a]                           dc.b $00
[000b442b]                           dc.b $00
[000b442c]                           dc.b $00
[000b442d]                           dc.b $00
[000b442e]                           dc.b $00
[000b442f]                           dc.b $00
[000b4430]                           dc.b $00
[000b4431]                           dc.b $00
[000b4432]                           dc.b $00
[000b4433]                           dc.b $00
[000b4434]                           dc.b $00
[000b4435]                           dc.b $00
USER_032:
[000b4436] 0005b032                  dc.l A_pattern
[000b443a]                           dc.b $00
[000b443b]                           dc.b $6a
[000b443c]                           dc.b $00
[000b443d]                           dc.b $01
[000b443e]                           dc.b $00
[000b443f]                           dc.b $00
[000b4440]                           dc.b $00
[000b4441]                           dc.b $00
[000b4442]                           dc.b $00
[000b4443]                           dc.b $00
[000b4444]                           dc.b $00
[000b4445]                           dc.b $00
[000b4446]                           dc.b $00
[000b4447]                           dc.b $00
[000b4448]                           dc.b $00
[000b4449]                           dc.b $00
[000b444a]                           dc.b $00
[000b444b]                           dc.b $00
[000b444c]                           dc.b $00
[000b444d]                           dc.b $00
[000b444e]                           dc.b $00
[000b444f]                           dc.b $00
[000b4450]                           dc.b $00
[000b4451]                           dc.b $00
[000b4452]                           dc.b $00
[000b4453]                           dc.b $00
[000b4454]                           dc.b $00
[000b4455]                           dc.b $00
USER_033:
[000b4456] 0005b032                  dc.l A_pattern
[000b445a]                           dc.b $00
[000b445b]                           dc.b $6c
[000b445c]                           dc.b $00
[000b445d]                           dc.b $01
[000b445e]                           dc.b $00
[000b445f]                           dc.b $00
[000b4460]                           dc.b $00
[000b4461]                           dc.b $00
[000b4462]                           dc.b $00
[000b4463]                           dc.b $00
[000b4464]                           dc.b $00
[000b4465]                           dc.b $00
[000b4466]                           dc.b $00
[000b4467]                           dc.b $00
[000b4468]                           dc.b $00
[000b4469]                           dc.b $00
[000b446a]                           dc.b $00
[000b446b]                           dc.b $00
[000b446c]                           dc.b $00
[000b446d]                           dc.b $00
[000b446e]                           dc.b $00
[000b446f]                           dc.b $00
[000b4470]                           dc.b $00
[000b4471]                           dc.b $00
[000b4472]                           dc.b $00
[000b4473]                           dc.b $00
[000b4474]                           dc.b $00
[000b4475]                           dc.b $00
USER_034:
[000b4476] 0005b032                  dc.l A_pattern
[000b447a]                           dc.b $00
[000b447b]                           dc.b $6d
[000b447c]                           dc.b $00
[000b447d]                           dc.b $01
[000b447e]                           dc.b $00
[000b447f]                           dc.b $00
[000b4480]                           dc.b $00
[000b4481]                           dc.b $00
[000b4482]                           dc.b $00
[000b4483]                           dc.b $00
[000b4484]                           dc.b $00
[000b4485]                           dc.b $00
[000b4486]                           dc.b $00
[000b4487]                           dc.b $00
[000b4488]                           dc.b $00
[000b4489]                           dc.b $00
[000b448a]                           dc.b $00
[000b448b]                           dc.b $00
[000b448c]                           dc.b $00
[000b448d]                           dc.b $00
[000b448e]                           dc.b $00
[000b448f]                           dc.b $00
[000b4490]                           dc.b $00
[000b4491]                           dc.b $00
[000b4492]                           dc.b $00
[000b4493]                           dc.b $00
[000b4494]                           dc.b $00
[000b4495]                           dc.b $00
USER_035:
[000b4496] 0005b032                  dc.l A_pattern
[000b449a]                           dc.b $00
[000b449b]                           dc.b $6e
[000b449c]                           dc.b $00
[000b449d]                           dc.b $01
[000b449e]                           dc.b $00
[000b449f]                           dc.b $00
[000b44a0]                           dc.b $00
[000b44a1]                           dc.b $00
[000b44a2]                           dc.b $00
[000b44a3]                           dc.b $00
[000b44a4]                           dc.b $00
[000b44a5]                           dc.b $00
[000b44a6]                           dc.b $00
[000b44a7]                           dc.b $00
[000b44a8]                           dc.b $00
[000b44a9]                           dc.b $00
[000b44aa]                           dc.b $00
[000b44ab]                           dc.b $00
[000b44ac]                           dc.b $00
[000b44ad]                           dc.b $00
[000b44ae]                           dc.b $00
[000b44af]                           dc.b $00
[000b44b0]                           dc.b $00
[000b44b1]                           dc.b $00
[000b44b2]                           dc.b $00
[000b44b3]                           dc.b $00
[000b44b4]                           dc.b $00
[000b44b5]                           dc.b $00
USER_036:
[000b44b6] 0005b032                  dc.l A_pattern
[000b44ba]                           dc.b $00
[000b44bb]                           dc.b $6f
[000b44bc]                           dc.b $00
[000b44bd]                           dc.b $01
[000b44be]                           dc.b $00
[000b44bf]                           dc.b $00
[000b44c0]                           dc.b $00
[000b44c1]                           dc.b $00
[000b44c2]                           dc.b $00
[000b44c3]                           dc.b $00
[000b44c4]                           dc.b $00
[000b44c5]                           dc.b $00
[000b44c6]                           dc.b $00
[000b44c7]                           dc.b $00
[000b44c8]                           dc.b $00
[000b44c9]                           dc.b $00
[000b44ca]                           dc.b $00
[000b44cb]                           dc.b $00
[000b44cc]                           dc.b $00
[000b44cd]                           dc.b $00
[000b44ce]                           dc.b $00
[000b44cf]                           dc.b $00
[000b44d0]                           dc.b $00
[000b44d1]                           dc.b $00
[000b44d2]                           dc.b $00
[000b44d3]                           dc.b $00
[000b44d4]                           dc.b $00
[000b44d5]                           dc.b $00
USER_037:
[000b44d6] 0005b032                  dc.l A_pattern
[000b44da]                           dc.b $00
[000b44db]                           dc.b $70
[000b44dc]                           dc.b $00
[000b44dd]                           dc.b $01
[000b44de]                           dc.b $00
[000b44df]                           dc.b $00
[000b44e0]                           dc.b $00
[000b44e1]                           dc.b $00
[000b44e2]                           dc.b $00
[000b44e3]                           dc.b $00
[000b44e4]                           dc.b $00
[000b44e5]                           dc.b $00
[000b44e6]                           dc.b $00
[000b44e7]                           dc.b $00
[000b44e8]                           dc.b $00
[000b44e9]                           dc.b $00
[000b44ea]                           dc.b $00
[000b44eb]                           dc.b $00
[000b44ec]                           dc.b $00
[000b44ed]                           dc.b $00
[000b44ee]                           dc.b $00
[000b44ef]                           dc.b $00
[000b44f0]                           dc.b $00
[000b44f1]                           dc.b $00
[000b44f2]                           dc.b $00
[000b44f3]                           dc.b $00
[000b44f4]                           dc.b $00
[000b44f5]                           dc.b $00
USER_038:
[000b44f6] 0005b032                  dc.l A_pattern
[000b44fa]                           dc.b $00
[000b44fb]                           dc.b $71
[000b44fc]                           dc.b $00
[000b44fd]                           dc.b $01
[000b44fe]                           dc.b $00
[000b44ff]                           dc.b $00
[000b4500]                           dc.b $00
[000b4501]                           dc.b $00
[000b4502]                           dc.b $00
[000b4503]                           dc.b $00
[000b4504]                           dc.b $00
[000b4505]                           dc.b $00
[000b4506]                           dc.b $00
[000b4507]                           dc.b $00
[000b4508]                           dc.b $00
[000b4509]                           dc.b $00
[000b450a]                           dc.b $00
[000b450b]                           dc.b $00
[000b450c]                           dc.b $00
[000b450d]                           dc.b $00
[000b450e]                           dc.b $00
[000b450f]                           dc.b $00
[000b4510]                           dc.b $00
[000b4511]                           dc.b $00
[000b4512]                           dc.b $00
[000b4513]                           dc.b $00
[000b4514]                           dc.b $00
[000b4515]                           dc.b $00
USER_039:
[000b4516] 0005b032                  dc.l A_pattern
[000b451a]                           dc.b $00
[000b451b]                           dc.b $72
[000b451c]                           dc.b $00
[000b451d]                           dc.b $01
[000b451e]                           dc.b $00
[000b451f]                           dc.b $00
[000b4520]                           dc.b $00
[000b4521]                           dc.b $00
[000b4522]                           dc.b $00
[000b4523]                           dc.b $00
[000b4524]                           dc.b $00
[000b4525]                           dc.b $00
[000b4526]                           dc.b $00
[000b4527]                           dc.b $00
[000b4528]                           dc.b $00
[000b4529]                           dc.b $00
[000b452a]                           dc.b $00
[000b452b]                           dc.b $00
[000b452c]                           dc.b $00
[000b452d]                           dc.b $00
[000b452e]                           dc.b $00
[000b452f]                           dc.b $00
[000b4530]                           dc.b $00
[000b4531]                           dc.b $00
[000b4532]                           dc.b $00
[000b4533]                           dc.b $00
[000b4534]                           dc.b $00
[000b4535]                           dc.b $00
USER_040:
[000b4536] 0005b032                  dc.l A_pattern
[000b453a]                           dc.b $00
[000b453b]                           dc.b $73
[000b453c]                           dc.b $00
[000b453d]                           dc.b $01
[000b453e]                           dc.b $00
[000b453f]                           dc.b $00
[000b4540]                           dc.b $00
[000b4541]                           dc.b $00
[000b4542]                           dc.b $00
[000b4543]                           dc.b $00
[000b4544]                           dc.b $00
[000b4545]                           dc.b $00
[000b4546]                           dc.b $00
[000b4547]                           dc.b $00
[000b4548]                           dc.b $00
[000b4549]                           dc.b $00
[000b454a]                           dc.b $00
[000b454b]                           dc.b $00
[000b454c]                           dc.b $00
[000b454d]                           dc.b $00
[000b454e]                           dc.b $00
[000b454f]                           dc.b $00
[000b4550]                           dc.b $00
[000b4551]                           dc.b $00
[000b4552]                           dc.b $00
[000b4553]                           dc.b $00
[000b4554]                           dc.b $00
[000b4555]                           dc.b $00
USER_041:
[000b4556] 0005b032                  dc.l A_pattern
[000b455a]                           dc.b $00
[000b455b]                           dc.b $74
[000b455c]                           dc.b $00
[000b455d]                           dc.b $01
[000b455e]                           dc.b $00
[000b455f]                           dc.b $00
[000b4560]                           dc.b $00
[000b4561]                           dc.b $00
[000b4562]                           dc.b $00
[000b4563]                           dc.b $00
[000b4564]                           dc.b $00
[000b4565]                           dc.b $00
[000b4566]                           dc.b $00
[000b4567]                           dc.b $00
[000b4568]                           dc.b $00
[000b4569]                           dc.b $00
[000b456a]                           dc.b $00
[000b456b]                           dc.b $00
[000b456c]                           dc.b $00
[000b456d]                           dc.b $00
[000b456e]                           dc.b $00
[000b456f]                           dc.b $00
[000b4570]                           dc.b $00
[000b4571]                           dc.b $00
[000b4572]                           dc.b $00
[000b4573]                           dc.b $00
[000b4574]                           dc.b $00
[000b4575]                           dc.b $00
USER_042:
[000b4576] 0005b032                  dc.l A_pattern
[000b457a]                           dc.b $00
[000b457b]                           dc.b $75
[000b457c]                           dc.b $00
[000b457d]                           dc.b $01
[000b457e]                           dc.b $00
[000b457f]                           dc.b $00
[000b4580]                           dc.b $00
[000b4581]                           dc.b $00
[000b4582]                           dc.b $00
[000b4583]                           dc.b $00
[000b4584]                           dc.b $00
[000b4585]                           dc.b $00
[000b4586]                           dc.b $00
[000b4587]                           dc.b $00
[000b4588]                           dc.b $00
[000b4589]                           dc.b $00
[000b458a]                           dc.b $00
[000b458b]                           dc.b $00
[000b458c]                           dc.b $00
[000b458d]                           dc.b $00
[000b458e]                           dc.b $00
[000b458f]                           dc.b $00
[000b4590]                           dc.b $00
[000b4591]                           dc.b $00
[000b4592]                           dc.b $00
[000b4593]                           dc.b $00
[000b4594]                           dc.b $00
[000b4595]                           dc.b $00
USER_043:
[000b4596] 0005b032                  dc.l A_pattern
[000b459a]                           dc.b $00
[000b459b]                           dc.b $76
[000b459c]                           dc.b $00
[000b459d]                           dc.b $01
[000b459e]                           dc.b $00
[000b459f]                           dc.b $00
[000b45a0]                           dc.b $00
[000b45a1]                           dc.b $00
[000b45a2]                           dc.b $00
[000b45a3]                           dc.b $00
[000b45a4]                           dc.b $00
[000b45a5]                           dc.b $00
[000b45a6]                           dc.b $00
[000b45a7]                           dc.b $00
[000b45a8]                           dc.b $00
[000b45a9]                           dc.b $00
[000b45aa]                           dc.b $00
[000b45ab]                           dc.b $00
[000b45ac]                           dc.b $00
[000b45ad]                           dc.b $00
[000b45ae]                           dc.b $00
[000b45af]                           dc.b $00
[000b45b0]                           dc.b $00
[000b45b1]                           dc.b $00
[000b45b2]                           dc.b $00
[000b45b3]                           dc.b $00
[000b45b4]                           dc.b $00
[000b45b5]                           dc.b $00
USER_044:
[000b45b6] 0005b032                  dc.l A_pattern
[000b45ba]                           dc.b $00
[000b45bb]                           dc.b $77
[000b45bc]                           dc.b $00
[000b45bd]                           dc.b $01
[000b45be]                           dc.b $00
[000b45bf]                           dc.b $00
[000b45c0]                           dc.b $00
[000b45c1]                           dc.b $00
[000b45c2]                           dc.b $00
[000b45c3]                           dc.b $00
[000b45c4]                           dc.b $00
[000b45c5]                           dc.b $00
[000b45c6]                           dc.b $00
[000b45c7]                           dc.b $00
[000b45c8]                           dc.b $00
[000b45c9]                           dc.b $00
[000b45ca]                           dc.b $00
[000b45cb]                           dc.b $00
[000b45cc]                           dc.b $00
[000b45cd]                           dc.b $00
[000b45ce]                           dc.b $00
[000b45cf]                           dc.b $00
[000b45d0]                           dc.b $00
[000b45d1]                           dc.b $00
[000b45d2]                           dc.b $00
[000b45d3]                           dc.b $00
[000b45d4]                           dc.b $00
[000b45d5]                           dc.b $00
USER_045:
[000b45d6] 0005b032                  dc.l A_pattern
[000b45da]                           dc.b $00
[000b45db]                           dc.b $78
[000b45dc]                           dc.b $00
[000b45dd]                           dc.b $01
[000b45de]                           dc.b $00
[000b45df]                           dc.b $00
[000b45e0]                           dc.b $00
[000b45e1]                           dc.b $00
[000b45e2]                           dc.b $00
[000b45e3]                           dc.b $00
[000b45e4]                           dc.b $00
[000b45e5]                           dc.b $00
[000b45e6]                           dc.b $00
[000b45e7]                           dc.b $00
[000b45e8]                           dc.b $00
[000b45e9]                           dc.b $00
[000b45ea]                           dc.b $00
[000b45eb]                           dc.b $00
[000b45ec]                           dc.b $00
[000b45ed]                           dc.b $00
[000b45ee]                           dc.b $00
[000b45ef]                           dc.b $00
[000b45f0]                           dc.b $00
[000b45f1]                           dc.b $00
[000b45f2]                           dc.b $00
[000b45f3]                           dc.b $00
[000b45f4]                           dc.b $00
[000b45f5]                           dc.b $00
USER_046:
[000b45f6] 0005b032                  dc.l A_pattern
[000b45fa]                           dc.b $00
[000b45fb]                           dc.b $a1
[000b45fc]                           dc.b $00
[000b45fd]                           dc.b $01
[000b45fe]                           dc.b $00
[000b45ff]                           dc.b $00
[000b4600]                           dc.b $00
[000b4601]                           dc.b $00
[000b4602]                           dc.b $00
[000b4603]                           dc.b $00
[000b4604]                           dc.b $00
[000b4605]                           dc.b $00
[000b4606]                           dc.b $00
[000b4607]                           dc.b $00
[000b4608]                           dc.b $00
[000b4609]                           dc.b $00
[000b460a]                           dc.b $00
[000b460b]                           dc.b $00
[000b460c]                           dc.b $00
[000b460d]                           dc.b $00
[000b460e]                           dc.b $00
[000b460f]                           dc.b $00
[000b4610]                           dc.b $00
[000b4611]                           dc.b $00
[000b4612]                           dc.b $00
[000b4613]                           dc.b $00
[000b4614]                           dc.b $00
[000b4615]                           dc.b $00
USER_047:
[000b4616] 0005b032                  dc.l A_pattern
[000b461a]                           dc.b $00
[000b461b]                           dc.b $a2
[000b461c]                           dc.b $00
[000b461d]                           dc.b $01
[000b461e]                           dc.b $00
[000b461f]                           dc.b $00
[000b4620]                           dc.b $00
[000b4621]                           dc.b $00
[000b4622]                           dc.b $00
[000b4623]                           dc.b $00
[000b4624]                           dc.b $00
[000b4625]                           dc.b $00
[000b4626]                           dc.b $00
[000b4627]                           dc.b $00
[000b4628]                           dc.b $00
[000b4629]                           dc.b $00
[000b462a]                           dc.b $00
[000b462b]                           dc.b $00
[000b462c]                           dc.b $00
[000b462d]                           dc.b $00
[000b462e]                           dc.b $00
[000b462f]                           dc.b $00
[000b4630]                           dc.b $00
[000b4631]                           dc.b $00
[000b4632]                           dc.b $00
[000b4633]                           dc.b $00
[000b4634]                           dc.b $00
[000b4635]                           dc.b $00
USER_048:
[000b4636] 0005b032                  dc.l A_pattern
[000b463a]                           dc.b $00
[000b463b]                           dc.b $a3
[000b463c]                           dc.b $00
[000b463d]                           dc.b $01
[000b463e]                           dc.b $00
[000b463f]                           dc.b $00
[000b4640]                           dc.b $00
[000b4641]                           dc.b $00
[000b4642]                           dc.b $00
[000b4643]                           dc.b $00
[000b4644]                           dc.b $00
[000b4645]                           dc.b $00
[000b4646]                           dc.b $00
[000b4647]                           dc.b $00
[000b4648]                           dc.b $00
[000b4649]                           dc.b $00
[000b464a]                           dc.b $00
[000b464b]                           dc.b $00
[000b464c]                           dc.b $00
[000b464d]                           dc.b $00
[000b464e]                           dc.b $00
[000b464f]                           dc.b $00
[000b4650]                           dc.b $00
[000b4651]                           dc.b $00
[000b4652]                           dc.b $00
[000b4653]                           dc.b $00
[000b4654]                           dc.b $00
[000b4655]                           dc.b $00
USER_049:
[000b4656] 0005b032                  dc.l A_pattern
[000b465a]                           dc.b $00
[000b465b]                           dc.b $a4
[000b465c]                           dc.b $00
[000b465d]                           dc.b $01
[000b465e]                           dc.b $00
[000b465f]                           dc.b $00
[000b4660]                           dc.b $00
[000b4661]                           dc.b $00
[000b4662]                           dc.b $00
[000b4663]                           dc.b $00
[000b4664]                           dc.b $00
[000b4665]                           dc.b $00
[000b4666]                           dc.b $00
[000b4667]                           dc.b $00
[000b4668]                           dc.b $00
[000b4669]                           dc.b $00
[000b466a]                           dc.b $00
[000b466b]                           dc.b $00
[000b466c]                           dc.b $00
[000b466d]                           dc.b $00
[000b466e]                           dc.b $00
[000b466f]                           dc.b $00
[000b4670]                           dc.b $00
[000b4671]                           dc.b $00
[000b4672]                           dc.b $00
[000b4673]                           dc.b $00
[000b4674]                           dc.b $00
[000b4675]                           dc.b $00
USER_050:
[000b4676] 0005b032                  dc.l A_pattern
[000b467a]                           dc.b $00
[000b467b]                           dc.b $a5
[000b467c]                           dc.b $00
[000b467d]                           dc.b $01
[000b467e]                           dc.b $00
[000b467f]                           dc.b $00
[000b4680]                           dc.b $00
[000b4681]                           dc.b $00
[000b4682]                           dc.b $00
[000b4683]                           dc.b $00
[000b4684]                           dc.b $00
[000b4685]                           dc.b $00
[000b4686]                           dc.b $00
[000b4687]                           dc.b $00
[000b4688]                           dc.b $00
[000b4689]                           dc.b $00
[000b468a]                           dc.b $00
[000b468b]                           dc.b $00
[000b468c]                           dc.b $00
[000b468d]                           dc.b $00
[000b468e]                           dc.b $00
[000b468f]                           dc.b $00
[000b4690]                           dc.b $00
[000b4691]                           dc.b $00
[000b4692]                           dc.b $00
[000b4693]                           dc.b $00
[000b4694]                           dc.b $00
[000b4695]                           dc.b $00
USER_051:
[000b4696] 0005b032                  dc.l A_pattern
[000b469a]                           dc.b $00
[000b469b]                           dc.b $a6
[000b469c]                           dc.b $00
[000b469d]                           dc.b $01
[000b469e]                           dc.b $00
[000b469f]                           dc.b $00
[000b46a0]                           dc.b $00
[000b46a1]                           dc.b $00
[000b46a2]                           dc.b $00
[000b46a3]                           dc.b $00
[000b46a4]                           dc.b $00
[000b46a5]                           dc.b $00
[000b46a6]                           dc.b $00
[000b46a7]                           dc.b $00
[000b46a8]                           dc.b $00
[000b46a9]                           dc.b $00
[000b46aa]                           dc.b $00
[000b46ab]                           dc.b $00
[000b46ac]                           dc.b $00
[000b46ad]                           dc.b $00
[000b46ae]                           dc.b $00
[000b46af]                           dc.b $00
[000b46b0]                           dc.b $00
[000b46b1]                           dc.b $00
[000b46b2]                           dc.b $00
[000b46b3]                           dc.b $00
[000b46b4]                           dc.b $00
[000b46b5]                           dc.b $00
ED_PATTERN:
[000b46b6]                           dc.w $ffff
[000b46b8]                           dc.b $00
[000b46b9]                           dc.b $01
[000b46ba]                           dc.b $00
[000b46bb]                           dc.b $0f
[000b46bc]                           dc.b $00
[000b46bd]                           dc.b $18
[000b46be]                           dc.b $00
[000b46bf]                           dc.b $40
[000b46c0]                           dc.b $00
[000b46c1]                           dc.b $10
[000b46c2] 000b4096                  dc.l A_3DBUTTON06
[000b46c6]                           dc.b $00
[000b46c7]                           dc.b $00
[000b46c8]                           dc.b $00
[000b46c9]                           dc.b $00
[000b46ca]                           dc.b $00
[000b46cb]                           dc.b $2e
[000b46cc]                           dc.b $00
[000b46cd]                           dc.b $0a
_01_ED_PATTERN:
[000b46ce]                           dc.b $00
[000b46cf]                           dc.b $03
[000b46d0]                           dc.b $00
[000b46d1]                           dc.b $02
[000b46d2]                           dc.b $00
[000b46d3]                           dc.b $02
[000b46d4]                           dc.b $00
[000b46d5]                           dc.b $18
[000b46d6]                           dc.b $00
[000b46d7]                           dc.b $40
[000b46d8]                           dc.b $00
[000b46d9]                           dc.b $10
[000b46da] 000b40b6                  dc.l A_3DBUTTON07
[000b46de]                           dc.b $00
[000b46df]                           dc.b $00
[000b46e0]                           dc.b $00
[000b46e1]                           dc.b $00
[000b46e2]                           dc.b $00
[000b46e3]                           dc.b $0a
[000b46e4]                           dc.b $00
[000b46e5]                           dc.b $03
_02_ED_PATTERN:
[000b46e6]                           dc.b $00
[000b46e7]                           dc.b $01
[000b46e8]                           dc.w $ffff
[000b46ea]                           dc.w $ffff
[000b46ec]                           dc.b $00
[000b46ed]                           dc.b $18
[000b46ee]                           dc.b $00
[000b46ef]                           dc.b $00
[000b46f0]                           dc.b $00
[000b46f1]                           dc.b $00
[000b46f2] 000b4156                  dc.l A_pattern001
[000b46f6]                           dc.b $00
[000b46f7]                           dc.b $01
[000b46f8]                           dc.b $00
[000b46f9]                           dc.b $01
[000b46fa]                           dc.b $00
[000b46fb]                           dc.b $08
[000b46fc]                           dc.b $00
[000b46fd]                           dc.b $01
_03_ED_PATTERN:
[000b46fe]                           dc.b $00
[000b46ff]                           dc.b $05
[000b4700]                           dc.w $ffff
[000b4702]                           dc.w $ffff
[000b4704]                           dc.b $00
[000b4705]                           dc.b $18
[000b4706]                           dc.w $4007
[000b4708]                           dc.b $00
[000b4709]                           dc.b $10
[000b470a] 000b4056                  dc.l A_3DBUTTON01
[000b470e]                           dc.b $00
[000b470f]                           dc.b $13
[000b4710]                           dc.b $00
[000b4711]                           dc.b $01
[000b4712]                           dc.b $00
[000b4713]                           dc.b $0c
[000b4714]                           dc.b $00
[000b4715]                           dc.b $02
_03aED_PATTERN:
[000b4716] 00027616                  dc.l ok
[000b471a]                           dc.b $00
[000b471b]                           dc.b $00
[000b471c]                           dc.b $00
[000b471d]                           dc.b $00
[000b471e]                           dc.w $8000
[000b4720]                           dc.w $884f
[000b4722]                           dc.b $00
[000b4723]                           dc.b $00
[000b4724]                           dc.b $00
[000b4725]                           dc.b $00
[000b4726]                           dc.b $00
[000b4727]                           dc.b $00
[000b4728]                           dc.b $00
[000b4729]                           dc.b $00
[000b472a]                           dc.b $00
[000b472b]                           dc.b $00
[000b472c]                           dc.b $00
[000b472d]                           dc.b $00
_05_ED_PATTERN:
[000b472e]                           dc.b $00
[000b472f]                           dc.b $07
[000b4730]                           dc.w $ffff
[000b4732]                           dc.w $ffff
[000b4734]                           dc.b $00
[000b4735]                           dc.b $18
[000b4736]                           dc.w $4005
[000b4738]                           dc.b $00
[000b4739]                           dc.b $10
[000b473a] 000b4076                  dc.l A_3DBUTTON04
[000b473e]                           dc.b $00
[000b473f]                           dc.b $21
[000b4740]                           dc.b $00
[000b4741]                           dc.b $01
[000b4742]                           dc.b $00
[000b4743]                           dc.b $0c
[000b4744]                           dc.b $00
[000b4745]                           dc.b $02
_05aED_PATTERN:
[000b4746] 0002760a                  dc.l abort
[000b474a]                           dc.b $00
[000b474b]                           dc.b $00
[000b474c]                           dc.b $00
[000b474d]                           dc.b $00
[000b474e]                           dc.w $8000
[000b4750]                           dc.w $8841
[000b4752]                           dc.b $00
[000b4753]                           dc.b $00
[000b4754]                           dc.b $00
[000b4755]                           dc.b $00
[000b4756]                           dc.b $00
[000b4757]                           dc.b $00
[000b4758]                           dc.b $00
[000b4759]                           dc.b $00
[000b475a]                           dc.b $00
[000b475b]                           dc.b $00
[000b475c]                           dc.b $00
[000b475d]                           dc.b $00
_07_ED_PATTERN:
[000b475e]                           dc.b $00
[000b475f]                           dc.b $09
[000b4760]                           dc.w $ffff
[000b4762]                           dc.w $ffff
[000b4764]                           dc.b $00
[000b4765]                           dc.b $18
[000b4766]                           dc.b $00
[000b4767]                           dc.b $41
[000b4768]                           dc.b $00
[000b4769]                           dc.b $00
[000b476a] 000b4116                  dc.l A_CHECKBOX02
[000b476e]                           dc.b $00
[000b476f]                           dc.b $02
[000b4770]                           dc.b $00
[000b4771]                           dc.b $04
[000b4772]                           dc.b $00
[000b4773]                           dc.b $09
[000b4774]                           dc.b $00
[000b4775]                           dc.b $01
_07aED_PATTERN:
[000b4776] 00027462                  dc.l edpa_frame
[000b477a]                           dc.b $00
[000b477b]                           dc.b $00
[000b477c]                           dc.b $00
[000b477d]                           dc.b $00
[000b477e]                           dc.w $8000
[000b4780]                           dc.w $8852
[000b4782]                           dc.b $00
[000b4783]                           dc.b $00
[000b4784]                           dc.b $00
[000b4785]                           dc.b $00
[000b4786]                           dc.b $00
[000b4787]                           dc.b $00
[000b4788]                           dc.b $00
[000b4789]                           dc.b $00
[000b478a]                           dc.b $00
[000b478b]                           dc.b $00
[000b478c]                           dc.b $00
[000b478d]                           dc.b $00
_09_ED_PATTERN:
[000b478e]                           dc.b $00
[000b478f]                           dc.b $0b
[000b4790]                           dc.b $00
[000b4791]                           dc.b $0a
[000b4792]                           dc.b $00
[000b4793]                           dc.b $0a
[000b4794]                           dc.b $00
[000b4795]                           dc.b $1c
[000b4796]                           dc.b $00
[000b4797]                           dc.b $40
[000b4798]                           dc.b $00
[000b4799]                           dc.b $00
[000b479a] 000b4031                  dc.l TEXT_11
[000b479e]                           dc.b $00
[000b479f]                           dc.b $10
[000b47a0]                           dc.b $00
[000b47a1]                           dc.b $04
[000b47a2]                           dc.b $00
[000b47a3]                           dc.b $06
[000b47a4]                           dc.b $00
[000b47a5]                           dc.b $01
_10_ED_PATTERN:
[000b47a6]                           dc.b $00
[000b47a7]                           dc.b $09
[000b47a8]                           dc.w $ffff
[000b47aa]                           dc.w $ffff
[000b47ac]                           dc.b $00
[000b47ad]                           dc.b $18
[000b47ae]                           dc.b $00
[000b47af]                           dc.b $40
[000b47b0]                           dc.b $00
[000b47b1]                           dc.b $00
[000b47b2] 000b40f6                  dc.l A_ARROWS02
[000b47b6]                           dc.b $00
[000b47b7]                           dc.b $00
[000b47b8]                           dc.b $00
[000b47b9]                           dc.b $00
[000b47ba]                           dc.b $00
[000b47bb]                           dc.b $01
[000b47bc]                           dc.b $00
[000b47bd]                           dc.b $01
_11_ED_PATTERN:
[000b47be]                           dc.b $00
[000b47bf]                           dc.b $0f
[000b47c0]                           dc.b $00
[000b47c1]                           dc.b $0d
[000b47c2]                           dc.b $00
[000b47c3]                           dc.b $0e
[000b47c4]                           dc.b $00
[000b47c5]                           dc.b $14
[000b47c6]                           dc.b $00
[000b47c7]                           dc.b $40
[000b47c8]                           dc.b $00
[000b47c9]                           dc.b $20
[000b47ca]                           dc.b $00
[000b47cb]                           dc.b $ff
[000b47cc]                           dc.w $1101
[000b47ce]                           dc.b $00
[000b47cf]                           dc.b $17
[000b47d0]                           dc.b $00
[000b47d1]                           dc.b $04
[000b47d2]                           dc.b $00
[000b47d3]                           dc.b $12
[000b47d4]                           dc.b $00
[000b47d5]                           dc.b $01
_11aED_PATTERN:
[000b47d6] 00027406                  dc.l edpa_col
[000b47da]                           dc.b $00
[000b47db]                           dc.b $00
[000b47dc]                           dc.b $00
[000b47dd]                           dc.b $00
[000b47de]                           dc.w $8000
[000b47e0]                           dc.w $8846
[000b47e2]                           dc.b $00
[000b47e3]                           dc.b $00
[000b47e4]                           dc.b $00
[000b47e5]                           dc.b $00
[000b47e6]                           dc.b $00
[000b47e7]                           dc.b $00
[000b47e8]                           dc.b $00
[000b47e9]                           dc.b $00
[000b47ea]                           dc.b $00
[000b47eb]                           dc.b $00
[000b47ec]                           dc.b $00
[000b47ed]                           dc.b $00
_13_ED_PATTERN:
[000b47ee]                           dc.b $00
[000b47ef]                           dc.b $0e
[000b47f0]                           dc.w $ffff
[000b47f2]                           dc.w $ffff
[000b47f4]                           dc.b $00
[000b47f5]                           dc.b $14
[000b47f6]                           dc.b $00
[000b47f7]                           dc.b $00
[000b47f8]                           dc.b $00
[000b47f9]                           dc.b $00
[000b47fa]                           dc.b $00
[000b47fb]                           dc.b $01
[000b47fc]                           dc.w $1171
[000b47fe]                           dc.b $00
[000b47ff]                           dc.b $10
[000b4800]                           dc.b $00
[000b4801]                           dc.b $00
[000b4802]                           dc.b $00
[000b4803]                           dc.b $02
[000b4804]                           dc.b $00
[000b4805]                           dc.b $01
_14_ED_PATTERN:
[000b4806]                           dc.b $00
[000b4807]                           dc.b $0b
[000b4808]                           dc.w $ffff
[000b480a]                           dc.w $ffff
[000b480c]                           dc.b $00
[000b480d]                           dc.b $18
[000b480e]                           dc.b $00
[000b480f]                           dc.b $00
[000b4810]                           dc.b $00
[000b4811]                           dc.b $00
[000b4812] 000b40d6                  dc.l A_3DBUTTON27
[000b4816]                           dc.b $00
[000b4817]                           dc.b $00
[000b4818]                           dc.b $00
[000b4819]                           dc.b $00
[000b481a]                           dc.b $00
[000b481b]                           dc.b $10
[000b481c]                           dc.b $00
[000b481d]                           dc.b $01
_15_ED_PATTERN:
[000b481e]                           dc.b $00
[000b481f]                           dc.b $00
[000b4820]                           dc.b $00
[000b4821]                           dc.b $10
[000b4822]                           dc.b $00
[000b4823]                           dc.b $62
[000b4824]                           dc.b $00
[000b4825]                           dc.b $18
[000b4826]                           dc.b $00
[000b4827]                           dc.b $40
[000b4828]                           dc.b $00
[000b4829]                           dc.b $00
[000b482a] 000b4136                  dc.l A_INNERFRAME02
[000b482e]                           dc.b $00
[000b482f]                           dc.b $01
[000b4830]                           dc.b $00
[000b4831]                           dc.b $05
[000b4832]                           dc.b $00
[000b4833]                           dc.b $2c
[000b4834]                           dc.b $00
[000b4835]                           dc.b $05
_16_ED_PATTERN:
[000b4836]                           dc.b $00
[000b4837]                           dc.b $12
[000b4838]                           dc.w $ffff
[000b483a]                           dc.w $ffff
[000b483c]                           dc.b $00
[000b483d]                           dc.b $18
[000b483e]                           dc.b $00
[000b483f]                           dc.b $05
[000b4840]                           dc.b $00
[000b4841]                           dc.b $00
[000b4842] 000b4176                  dc.l USER_007
[000b4846]                           dc.b $00
[000b4847]                           dc.b $01
[000b4848]                           dc.b $00
[000b4849]                           dc.b $01
[000b484a]                           dc.b $00
[000b484b]                           dc.b $03
[000b484c]                           dc.b $00
[000b484d]                           dc.b $01
_16aED_PATTERN:
[000b484e] 00027498                  dc.l edpa_pattern
[000b4852]                           dc.b $00
[000b4853]                           dc.b $00
[000b4854]                           dc.b $00
[000b4855]                           dc.b $00
[000b4856]                           dc.w $8000
[000b4858]                           dc.b $00
[000b4859]                           dc.b $00
[000b485a]                           dc.b $00
[000b485b]                           dc.b $00
[000b485c]                           dc.b $00
[000b485d]                           dc.b $00
[000b485e]                           dc.b $00
[000b485f]                           dc.b $00
[000b4860]                           dc.b $00
[000b4861]                           dc.b $00
[000b4862]                           dc.b $00
[000b4863]                           dc.b $00
[000b4864]                           dc.b $00
[000b4865]                           dc.b $00
_18_ED_PATTERN:
[000b4866]                           dc.b $00
[000b4867]                           dc.b $14
[000b4868]                           dc.w $ffff
[000b486a]                           dc.w $ffff
[000b486c]                           dc.b $00
[000b486d]                           dc.b $18
[000b486e]                           dc.b $00
[000b486f]                           dc.b $05
[000b4870]                           dc.b $00
[000b4871]                           dc.b $00
[000b4872] 000b41b6                  dc.l USER_012
[000b4876]                           dc.b $00
[000b4877]                           dc.b $01
[000b4878]                           dc.b $00
[000b4879]                           dc.b $02
[000b487a]                           dc.b $00
[000b487b]                           dc.b $03
[000b487c]                           dc.b $00
[000b487d]                           dc.b $01
_18aED_PATTERN:
[000b487e] 00027498                  dc.l edpa_pattern
[000b4882]                           dc.b $00
[000b4883]                           dc.b $00
[000b4884]                           dc.b $00
[000b4885]                           dc.b $00
[000b4886]                           dc.w $8000
[000b4888]                           dc.b $00
[000b4889]                           dc.b $00
[000b488a]                           dc.b $00
[000b488b]                           dc.b $00
[000b488c]                           dc.b $00
[000b488d]                           dc.b $00
[000b488e]                           dc.b $00
[000b488f]                           dc.b $00
[000b4890]                           dc.b $00
[000b4891]                           dc.b $00
[000b4892]                           dc.b $00
[000b4893]                           dc.b $00
[000b4894]                           dc.b $00
[000b4895]                           dc.b $00
_20_ED_PATTERN:
[000b4896]                           dc.b $00
[000b4897]                           dc.b $16
[000b4898]                           dc.w $ffff
[000b489a]                           dc.w $ffff
[000b489c]                           dc.b $00
[000b489d]                           dc.b $18
[000b489e]                           dc.b $00
[000b489f]                           dc.b $05
[000b48a0]                           dc.b $00
[000b48a1]                           dc.b $00
[000b48a2] 000b4196                  dc.l USER_009
[000b48a6]                           dc.b $00
[000b48a7]                           dc.b $01
[000b48a8]                           dc.b $00
[000b48a9]                           dc.b $03
[000b48aa]                           dc.b $00
[000b48ab]                           dc.b $03
[000b48ac]                           dc.b $00
[000b48ad]                           dc.b $01
_20aED_PATTERN:
[000b48ae] 00027498                  dc.l edpa_pattern
[000b48b2]                           dc.b $00
[000b48b3]                           dc.b $00
[000b48b4]                           dc.b $00
[000b48b5]                           dc.b $00
[000b48b6]                           dc.w $8000
[000b48b8]                           dc.b $00
[000b48b9]                           dc.b $00
[000b48ba]                           dc.b $00
[000b48bb]                           dc.b $00
[000b48bc]                           dc.b $00
[000b48bd]                           dc.b $00
[000b48be]                           dc.b $00
[000b48bf]                           dc.b $00
[000b48c0]                           dc.b $00
[000b48c1]                           dc.b $00
[000b48c2]                           dc.b $00
[000b48c3]                           dc.b $00
[000b48c4]                           dc.b $00
[000b48c5]                           dc.b $00
_22_ED_PATTERN:
[000b48c6]                           dc.b $00
[000b48c7]                           dc.b $18
[000b48c8]                           dc.w $ffff
[000b48ca]                           dc.w $ffff
[000b48cc]                           dc.b $00
[000b48cd]                           dc.b $18
[000b48ce]                           dc.b $00
[000b48cf]                           dc.b $05
[000b48d0]                           dc.b $00
[000b48d1]                           dc.b $00
[000b48d2] 000b41d6                  dc.l USER_013
[000b48d6]                           dc.b $00
[000b48d7]                           dc.b $04
[000b48d8]                           dc.b $00
[000b48d9]                           dc.b $01
[000b48da]                           dc.b $00
[000b48db]                           dc.b $03
[000b48dc]                           dc.b $00
[000b48dd]                           dc.b $01
_22aED_PATTERN:
[000b48de] 00027498                  dc.l edpa_pattern
[000b48e2]                           dc.b $00
[000b48e3]                           dc.b $00
[000b48e4]                           dc.b $00
[000b48e5]                           dc.b $00
[000b48e6]                           dc.w $8000
[000b48e8]                           dc.b $00
[000b48e9]                           dc.b $00
[000b48ea]                           dc.b $00
[000b48eb]                           dc.b $00
[000b48ec]                           dc.b $00
[000b48ed]                           dc.b $00
[000b48ee]                           dc.b $00
[000b48ef]                           dc.b $00
[000b48f0]                           dc.b $00
[000b48f1]                           dc.b $00
[000b48f2]                           dc.b $00
[000b48f3]                           dc.b $00
[000b48f4]                           dc.b $00
[000b48f5]                           dc.b $00
_24_ED_PATTERN:
[000b48f6]                           dc.b $00
[000b48f7]                           dc.b $1a
[000b48f8]                           dc.w $ffff
[000b48fa]                           dc.w $ffff
[000b48fc]                           dc.b $00
[000b48fd]                           dc.b $18
[000b48fe]                           dc.b $00
[000b48ff]                           dc.b $05
[000b4900]                           dc.b $00
[000b4901]                           dc.b $00
[000b4902] 000b41f6                  dc.l USER_014
[000b4906]                           dc.b $00
[000b4907]                           dc.b $04
[000b4908]                           dc.b $00
[000b4909]                           dc.b $02
[000b490a]                           dc.b $00
[000b490b]                           dc.b $03
[000b490c]                           dc.b $00
[000b490d]                           dc.b $01
_24aED_PATTERN:
[000b490e] 00027498                  dc.l edpa_pattern
[000b4912]                           dc.b $00
[000b4913]                           dc.b $00
[000b4914]                           dc.b $00
[000b4915]                           dc.b $00
[000b4916]                           dc.w $8000
[000b4918]                           dc.b $00
[000b4919]                           dc.b $00
[000b491a]                           dc.b $00
[000b491b]                           dc.b $00
[000b491c]                           dc.b $00
[000b491d]                           dc.b $00
[000b491e]                           dc.b $00
[000b491f]                           dc.b $00
[000b4920]                           dc.b $00
[000b4921]                           dc.b $00
[000b4922]                           dc.b $00
[000b4923]                           dc.b $00
[000b4924]                           dc.b $00
[000b4925]                           dc.b $00
_26_ED_PATTERN:
[000b4926]                           dc.b $00
[000b4927]                           dc.b $1c
[000b4928]                           dc.w $ffff
[000b492a]                           dc.w $ffff
[000b492c]                           dc.b $00
[000b492d]                           dc.b $18
[000b492e]                           dc.b $00
[000b492f]                           dc.b $05
[000b4930]                           dc.b $00
[000b4931]                           dc.b $00
[000b4932] 000b4216                  dc.l USER_015
[000b4936]                           dc.b $00
[000b4937]                           dc.b $04
[000b4938]                           dc.b $00
[000b4939]                           dc.b $03
[000b493a]                           dc.b $00
[000b493b]                           dc.b $03
[000b493c]                           dc.b $00
[000b493d]                           dc.b $01
_26aED_PATTERN:
[000b493e] 00027498                  dc.l edpa_pattern
[000b4942]                           dc.b $00
[000b4943]                           dc.b $00
[000b4944]                           dc.b $00
[000b4945]                           dc.b $00
[000b4946]                           dc.w $8000
[000b4948]                           dc.b $00
[000b4949]                           dc.b $00
[000b494a]                           dc.b $00
[000b494b]                           dc.b $00
[000b494c]                           dc.b $00
[000b494d]                           dc.b $00
[000b494e]                           dc.b $00
[000b494f]                           dc.b $00
[000b4950]                           dc.b $00
[000b4951]                           dc.b $00
[000b4952]                           dc.b $00
[000b4953]                           dc.b $00
[000b4954]                           dc.b $00
[000b4955]                           dc.b $00
_28_ED_PATTERN:
[000b4956]                           dc.b $00
[000b4957]                           dc.b $1e
[000b4958]                           dc.w $ffff
[000b495a]                           dc.w $ffff
[000b495c]                           dc.b $00
[000b495d]                           dc.b $18
[000b495e]                           dc.b $00
[000b495f]                           dc.b $05
[000b4960]                           dc.b $00
[000b4961]                           dc.b $00
[000b4962] 000b4296                  dc.l USER_019
[000b4966]                           dc.b $00
[000b4967]                           dc.b $0a
[000b4968]                           dc.b $00
[000b4969]                           dc.b $01
[000b496a]                           dc.b $00
[000b496b]                           dc.b $03
[000b496c]                           dc.b $00
[000b496d]                           dc.b $01
_28aED_PATTERN:
[000b496e] 00027498                  dc.l edpa_pattern
[000b4972]                           dc.b $00
[000b4973]                           dc.b $00
[000b4974]                           dc.b $00
[000b4975]                           dc.b $00
[000b4976]                           dc.w $8000
[000b4978]                           dc.b $00
[000b4979]                           dc.b $00
[000b497a]                           dc.b $00
[000b497b]                           dc.b $00
[000b497c]                           dc.b $00
[000b497d]                           dc.b $00
[000b497e]                           dc.b $00
[000b497f]                           dc.b $00
[000b4980]                           dc.b $00
[000b4981]                           dc.b $00
[000b4982]                           dc.b $00
[000b4983]                           dc.b $00
[000b4984]                           dc.b $00
[000b4985]                           dc.b $00
_30_ED_PATTERN:
[000b4986]                           dc.b $00
[000b4987]                           dc.b $20
[000b4988]                           dc.w $ffff
[000b498a]                           dc.w $ffff
[000b498c]                           dc.b $00
[000b498d]                           dc.b $18
[000b498e]                           dc.b $00
[000b498f]                           dc.b $05
[000b4990]                           dc.b $00
[000b4991]                           dc.b $00
[000b4992] 000b42b6                  dc.l USER_020
[000b4996]                           dc.b $00
[000b4997]                           dc.b $0a
[000b4998]                           dc.b $00
[000b4999]                           dc.b $02
[000b499a]                           dc.b $00
[000b499b]                           dc.b $03
[000b499c]                           dc.b $00
[000b499d]                           dc.b $01
_30aED_PATTERN:
[000b499e] 00027498                  dc.l edpa_pattern
[000b49a2]                           dc.b $00
[000b49a3]                           dc.b $00
[000b49a4]                           dc.b $00
[000b49a5]                           dc.b $00
[000b49a6]                           dc.w $8000
[000b49a8]                           dc.b $00
[000b49a9]                           dc.b $00
[000b49aa]                           dc.b $00
[000b49ab]                           dc.b $00
[000b49ac]                           dc.b $00
[000b49ad]                           dc.b $00
[000b49ae]                           dc.b $00
[000b49af]                           dc.b $00
[000b49b0]                           dc.b $00
[000b49b1]                           dc.b $00
[000b49b2]                           dc.b $00
[000b49b3]                           dc.b $00
[000b49b4]                           dc.b $00
[000b49b5]                           dc.b $00
_32_ED_PATTERN:
[000b49b6]                           dc.b $00
[000b49b7]                           dc.b $22
[000b49b8]                           dc.w $ffff
[000b49ba]                           dc.w $ffff
[000b49bc]                           dc.b $00
[000b49bd]                           dc.b $18
[000b49be]                           dc.b $00
[000b49bf]                           dc.b $05
[000b49c0]                           dc.b $00
[000b49c1]                           dc.b $00
[000b49c2] 000b42d6                  dc.l USER_021
[000b49c6]                           dc.b $00
[000b49c7]                           dc.b $0a
[000b49c8]                           dc.b $00
[000b49c9]                           dc.b $03
[000b49ca]                           dc.b $00
[000b49cb]                           dc.b $03
[000b49cc]                           dc.b $00
[000b49cd]                           dc.b $01
_32aED_PATTERN:
[000b49ce] 00027498                  dc.l edpa_pattern
[000b49d2]                           dc.b $00
[000b49d3]                           dc.b $00
[000b49d4]                           dc.b $00
[000b49d5]                           dc.b $00
[000b49d6]                           dc.w $8000
[000b49d8]                           dc.b $00
[000b49d9]                           dc.b $00
[000b49da]                           dc.b $00
[000b49db]                           dc.b $00
[000b49dc]                           dc.b $00
[000b49dd]                           dc.b $00
[000b49de]                           dc.b $00
[000b49df]                           dc.b $00
[000b49e0]                           dc.b $00
[000b49e1]                           dc.b $00
[000b49e2]                           dc.b $00
[000b49e3]                           dc.b $00
[000b49e4]                           dc.b $00
[000b49e5]                           dc.b $00
_34_ED_PATTERN:
[000b49e6]                           dc.b $00
[000b49e7]                           dc.b $24
[000b49e8]                           dc.w $ffff
[000b49ea]                           dc.w $ffff
[000b49ec]                           dc.b $00
[000b49ed]                           dc.b $18
[000b49ee]                           dc.b $00
[000b49ef]                           dc.b $05
[000b49f0]                           dc.b $00
[000b49f1]                           dc.b $00
[000b49f2] 000b4256                  dc.l USER_017
[000b49f6]                           dc.b $00
[000b49f7]                           dc.b $07
[000b49f8]                           dc.b $00
[000b49f9]                           dc.b $02
[000b49fa]                           dc.b $00
[000b49fb]                           dc.b $03
[000b49fc]                           dc.b $00
[000b49fd]                           dc.b $01
_34aED_PATTERN:
[000b49fe] 00027498                  dc.l edpa_pattern
[000b4a02]                           dc.b $00
[000b4a03]                           dc.b $00
[000b4a04]                           dc.b $00
[000b4a05]                           dc.b $00
[000b4a06]                           dc.w $8000
[000b4a08]                           dc.b $00
[000b4a09]                           dc.b $00
[000b4a0a]                           dc.b $00
[000b4a0b]                           dc.b $00
[000b4a0c]                           dc.b $00
[000b4a0d]                           dc.b $00
[000b4a0e]                           dc.b $00
[000b4a0f]                           dc.b $00
[000b4a10]                           dc.b $00
[000b4a11]                           dc.b $00
[000b4a12]                           dc.b $00
[000b4a13]                           dc.b $00
[000b4a14]                           dc.b $00
[000b4a15]                           dc.b $00
_36_ED_PATTERN:
[000b4a16]                           dc.b $00
[000b4a17]                           dc.b $26
[000b4a18]                           dc.w $ffff
[000b4a1a]                           dc.w $ffff
[000b4a1c]                           dc.b $00
[000b4a1d]                           dc.b $18
[000b4a1e]                           dc.b $00
[000b4a1f]                           dc.b $05
[000b4a20]                           dc.b $00
[000b4a21]                           dc.b $00
[000b4a22] 000b4276                  dc.l USER_018
[000b4a26]                           dc.b $00
[000b4a27]                           dc.b $07
[000b4a28]                           dc.b $00
[000b4a29]                           dc.b $03
[000b4a2a]                           dc.b $00
[000b4a2b]                           dc.b $03
[000b4a2c]                           dc.b $00
[000b4a2d]                           dc.b $01
_36aED_PATTERN:
[000b4a2e] 00027498                  dc.l edpa_pattern
[000b4a32]                           dc.b $00
[000b4a33]                           dc.b $00
[000b4a34]                           dc.b $00
[000b4a35]                           dc.b $00
[000b4a36]                           dc.w $8000
[000b4a38]                           dc.b $00
[000b4a39]                           dc.b $00
[000b4a3a]                           dc.b $00
[000b4a3b]                           dc.b $00
[000b4a3c]                           dc.b $00
[000b4a3d]                           dc.b $00
[000b4a3e]                           dc.b $00
[000b4a3f]                           dc.b $00
[000b4a40]                           dc.b $00
[000b4a41]                           dc.b $00
[000b4a42]                           dc.b $00
[000b4a43]                           dc.b $00
[000b4a44]                           dc.b $00
[000b4a45]                           dc.b $00
_38_ED_PATTERN:
[000b4a46]                           dc.b $00
[000b4a47]                           dc.b $28
[000b4a48]                           dc.w $ffff
[000b4a4a]                           dc.w $ffff
[000b4a4c]                           dc.b $00
[000b4a4d]                           dc.b $18
[000b4a4e]                           dc.b $00
[000b4a4f]                           dc.b $05
[000b4a50]                           dc.b $00
[000b4a51]                           dc.b $00
[000b4a52] 000b4236                  dc.l USER_016
[000b4a56]                           dc.b $00
[000b4a57]                           dc.b $07
[000b4a58]                           dc.b $00
[000b4a59]                           dc.b $01
[000b4a5a]                           dc.b $00
[000b4a5b]                           dc.b $03
[000b4a5c]                           dc.b $00
[000b4a5d]                           dc.b $01
_38aED_PATTERN:
[000b4a5e] 00027498                  dc.l edpa_pattern
[000b4a62]                           dc.b $00
[000b4a63]                           dc.b $00
[000b4a64]                           dc.b $00
[000b4a65]                           dc.b $00
[000b4a66]                           dc.w $8000
[000b4a68]                           dc.b $00
[000b4a69]                           dc.b $00
[000b4a6a]                           dc.b $00
[000b4a6b]                           dc.b $00
[000b4a6c]                           dc.b $00
[000b4a6d]                           dc.b $00
[000b4a6e]                           dc.b $00
[000b4a6f]                           dc.b $00
[000b4a70]                           dc.b $00
[000b4a71]                           dc.b $00
[000b4a72]                           dc.b $00
[000b4a73]                           dc.b $00
[000b4a74]                           dc.b $00
[000b4a75]                           dc.b $00
_40_ED_PATTERN:
[000b4a76]                           dc.b $00
[000b4a77]                           dc.b $2a
[000b4a78]                           dc.w $ffff
[000b4a7a]                           dc.w $ffff
[000b4a7c]                           dc.b $00
[000b4a7d]                           dc.b $18
[000b4a7e]                           dc.b $00
[000b4a7f]                           dc.b $05
[000b4a80]                           dc.b $00
[000b4a81]                           dc.b $00
[000b4a82] 000b4356                  dc.l USER_025
[000b4a86]                           dc.b $00
[000b4a87]                           dc.b $10
[000b4a88]                           dc.b $00
[000b4a89]                           dc.b $01
[000b4a8a]                           dc.b $00
[000b4a8b]                           dc.b $03
[000b4a8c]                           dc.b $00
[000b4a8d]                           dc.b $01
_40aED_PATTERN:
[000b4a8e] 00027498                  dc.l edpa_pattern
[000b4a92]                           dc.b $00
[000b4a93]                           dc.b $00
[000b4a94]                           dc.b $00
[000b4a95]                           dc.b $00
[000b4a96]                           dc.w $8000
[000b4a98]                           dc.b $00
[000b4a99]                           dc.b $00
[000b4a9a]                           dc.b $00
[000b4a9b]                           dc.b $00
[000b4a9c]                           dc.b $00
[000b4a9d]                           dc.b $00
[000b4a9e]                           dc.b $00
[000b4a9f]                           dc.b $00
[000b4aa0]                           dc.b $00
[000b4aa1]                           dc.b $00
[000b4aa2]                           dc.b $00
[000b4aa3]                           dc.b $00
[000b4aa4]                           dc.b $00
[000b4aa5]                           dc.b $00
_42_ED_PATTERN:
[000b4aa6]                           dc.b $00
[000b4aa7]                           dc.b $2c
[000b4aa8]                           dc.w $ffff
[000b4aaa]                           dc.b $ff
[000b4aab]                           dc.b $ff
[000b4aac]                           dc.b $00
[000b4aad]                           dc.b $18
[000b4aae]                           dc.b $00
[000b4aaf]                           dc.b $05
[000b4ab0]                           dc.b $00
[000b4ab1]                           dc.b $00
[000b4ab2] 000b4376                  dc.l USER_026
[000b4ab6]                           dc.b $00
[000b4ab7]                           dc.b $10
[000b4ab8]                           dc.b $00
[000b4ab9]                           dc.b $02
[000b4aba]                           dc.b $00
[000b4abb]                           dc.b $03
[000b4abc]                           dc.b $00
[000b4abd]                           dc.b $01
_42aED_PATTERN:
[000b4abe] 00027498                  dc.l edpa_pattern
[000b4ac2]                           dc.b $00
[000b4ac3]                           dc.b $00
[000b4ac4]                           dc.b $00
[000b4ac5]                           dc.b $00
[000b4ac6]                           dc.w $8000
[000b4ac8]                           dc.b $00
[000b4ac9]                           dc.b $00
[000b4aca]                           dc.b $00
[000b4acb]                           dc.b $00
[000b4acc]                           dc.b $00
[000b4acd]                           dc.b $00
[000b4ace]                           dc.b $00
[000b4acf]                           dc.b $00
[000b4ad0]                           dc.b $00
[000b4ad1]                           dc.b $00
[000b4ad2]                           dc.b $00
[000b4ad3]                           dc.b $00
[000b4ad4]                           dc.b $00
[000b4ad5]                           dc.b $00
_44_ED_PATTERN:
[000b4ad6]                           dc.b $00
[000b4ad7]                           dc.b $2e
[000b4ad8]                           dc.w $ffff
[000b4ada]                           dc.w $ffff
[000b4adc]                           dc.b $00
[000b4add]                           dc.b $18
[000b4ade]                           dc.b $00
[000b4adf]                           dc.b $05
[000b4ae0]                           dc.b $00
[000b4ae1]                           dc.b $00
[000b4ae2] 000b4396                  dc.l USER_027
[000b4ae6]                           dc.b $00
[000b4ae7]                           dc.b $10
[000b4ae8]                           dc.b $00
[000b4ae9]                           dc.b $03
[000b4aea]                           dc.b $00
[000b4aeb]                           dc.b $03
[000b4aec]                           dc.b $00
[000b4aed]                           dc.b $01
_44aED_PATTERN:
[000b4aee] 00027498                  dc.l edpa_pattern
[000b4af2]                           dc.b $00
[000b4af3]                           dc.b $00
[000b4af4]                           dc.b $00
[000b4af5]                           dc.b $00
[000b4af6]                           dc.w $8000
[000b4af8]                           dc.b $00
[000b4af9]                           dc.b $00
[000b4afa]                           dc.b $00
[000b4afb]                           dc.b $00
[000b4afc]                           dc.b $00
[000b4afd]                           dc.b $00
[000b4afe]                           dc.b $00
[000b4aff]                           dc.b $00
[000b4b00]                           dc.b $00
[000b4b01]                           dc.b $00
[000b4b02]                           dc.b $00
[000b4b03]                           dc.b $00
[000b4b04]                           dc.b $00
[000b4b05]                           dc.b $00
_46_ED_PATTERN:
[000b4b06]                           dc.b $00
[000b4b07]                           dc.b $30
[000b4b08]                           dc.w $ffff
[000b4b0a]                           dc.w $ffff
[000b4b0c]                           dc.b $00
[000b4b0d]                           dc.b $18
[000b4b0e]                           dc.b $00
[000b4b0f]                           dc.b $05
[000b4b10]                           dc.b $00
[000b4b11]                           dc.b $00
[000b4b12] 000b4336                  dc.l USER_024
[000b4b16]                           dc.b $00
[000b4b17]                           dc.b $0d
[000b4b18]                           dc.b $00
[000b4b19]                           dc.b $03
[000b4b1a]                           dc.b $00
[000b4b1b]                           dc.b $03
[000b4b1c]                           dc.b $00
[000b4b1d]                           dc.b $01
_46aED_PATTERN:
[000b4b1e] 00027498                  dc.l edpa_pattern
[000b4b22]                           dc.b $00
[000b4b23]                           dc.b $00
[000b4b24]                           dc.b $00
[000b4b25]                           dc.b $00
[000b4b26]                           dc.w $8000
[000b4b28]                           dc.b $00
[000b4b29]                           dc.b $00
[000b4b2a]                           dc.b $00
[000b4b2b]                           dc.b $00
[000b4b2c]                           dc.b $00
[000b4b2d]                           dc.b $00
[000b4b2e]                           dc.b $00
[000b4b2f]                           dc.b $00
[000b4b30]                           dc.b $00
[000b4b31]                           dc.b $00
[000b4b32]                           dc.b $00
[000b4b33]                           dc.b $00
[000b4b34]                           dc.b $00
[000b4b35]                           dc.b $00
_48_ED_PATTERN:
[000b4b36]                           dc.b $00
[000b4b37]                           dc.b $32
[000b4b38]                           dc.w $ffff
[000b4b3a]                           dc.w $ffff
[000b4b3c]                           dc.b $00
[000b4b3d]                           dc.b $18
[000b4b3e]                           dc.b $00
[000b4b3f]                           dc.b $05
[000b4b40]                           dc.b $00
[000b4b41]                           dc.b $00
[000b4b42] 000b42f6                  dc.l USER_022
[000b4b46]                           dc.b $00
[000b4b47]                           dc.b $0d
[000b4b48]                           dc.b $00
[000b4b49]                           dc.b $01
[000b4b4a]                           dc.b $00
[000b4b4b]                           dc.b $03
[000b4b4c]                           dc.b $00
[000b4b4d]                           dc.b $01
_48aED_PATTERN:
[000b4b4e] 00027498                  dc.l edpa_pattern
[000b4b52]                           dc.b $00
[000b4b53]                           dc.b $00
[000b4b54]                           dc.b $00
[000b4b55]                           dc.b $00
[000b4b56]                           dc.w $8000
[000b4b58]                           dc.b $00
[000b4b59]                           dc.b $00
[000b4b5a]                           dc.b $00
[000b4b5b]                           dc.b $00
[000b4b5c]                           dc.b $00
[000b4b5d]                           dc.b $00
[000b4b5e]                           dc.b $00
[000b4b5f]                           dc.b $00
[000b4b60]                           dc.b $00
[000b4b61]                           dc.b $00
[000b4b62]                           dc.b $00
[000b4b63]                           dc.b $00
[000b4b64]                           dc.b $00
[000b4b65]                           dc.b $00
_50_ED_PATTERN:
[000b4b66]                           dc.b $00
[000b4b67]                           dc.b $34
[000b4b68]                           dc.w $ffff
[000b4b6a]                           dc.w $ffff
[000b4b6c]                           dc.b $00
[000b4b6d]                           dc.b $18
[000b4b6e]                           dc.b $00
[000b4b6f]                           dc.b $05
[000b4b70]                           dc.b $00
[000b4b71]                           dc.b $00
[000b4b72] 000b4316                  dc.l USER_023
[000b4b76]                           dc.b $00
[000b4b77]                           dc.b $0d
[000b4b78]                           dc.b $00
[000b4b79]                           dc.b $02
[000b4b7a]                           dc.b $00
[000b4b7b]                           dc.b $03
[000b4b7c]                           dc.b $00
[000b4b7d]                           dc.b $01
_50aED_PATTERN:
[000b4b7e] 00027498                  dc.l edpa_pattern
[000b4b82]                           dc.b $00
[000b4b83]                           dc.b $00
[000b4b84]                           dc.b $00
[000b4b85]                           dc.b $00
[000b4b86]                           dc.w $8000
[000b4b88]                           dc.b $00
[000b4b89]                           dc.b $00
[000b4b8a]                           dc.b $00
[000b4b8b]                           dc.b $00
[000b4b8c]                           dc.b $00
[000b4b8d]                           dc.b $00
[000b4b8e]                           dc.b $00
[000b4b8f]                           dc.b $00
[000b4b90]                           dc.b $00
[000b4b91]                           dc.b $00
[000b4b92]                           dc.b $00
[000b4b93]                           dc.b $00
[000b4b94]                           dc.b $00
[000b4b95]                           dc.b $00
_52_ED_PATTERN:
[000b4b96]                           dc.b $00
[000b4b97]                           dc.b $36
[000b4b98]                           dc.w $ffff
[000b4b9a]                           dc.w $ffff
[000b4b9c]                           dc.b $00
[000b4b9d]                           dc.b $18
[000b4b9e]                           dc.b $00
[000b4b9f]                           dc.b $05
[000b4ba0]                           dc.b $00
[000b4ba1]                           dc.b $00
[000b4ba2] 000b4416                  dc.l USER_031
[000b4ba6]                           dc.b $00
[000b4ba7]                           dc.b $16
[000b4ba8]                           dc.b $00
[000b4ba9]                           dc.b $01
[000b4baa]                           dc.b $00
[000b4bab]                           dc.b $03
[000b4bac]                           dc.b $00
[000b4bad]                           dc.b $01
_52aED_PATTERN:
[000b4bae] 00027498                  dc.l edpa_pattern
[000b4bb2]                           dc.b $00
[000b4bb3]                           dc.b $00
[000b4bb4]                           dc.b $00
[000b4bb5]                           dc.b $00
[000b4bb6]                           dc.w $8000
[000b4bb8]                           dc.b $00
[000b4bb9]                           dc.b $00
[000b4bba]                           dc.b $00
[000b4bbb]                           dc.b $00
[000b4bbc]                           dc.b $00
[000b4bbd]                           dc.b $00
[000b4bbe]                           dc.b $00
[000b4bbf]                           dc.b $00
[000b4bc0]                           dc.b $00
[000b4bc1]                           dc.b $00
[000b4bc2]                           dc.b $00
[000b4bc3]                           dc.b $00
[000b4bc4]                           dc.b $00
[000b4bc5]                           dc.b $00
_54_ED_PATTERN:
[000b4bc6]                           dc.b $00
[000b4bc7]                           dc.b $38
[000b4bc8]                           dc.w $ffff
[000b4bca]                           dc.w $ffff
[000b4bcc]                           dc.b $00
[000b4bcd]                           dc.b $18
[000b4bce]                           dc.b $00
[000b4bcf]                           dc.b $05
[000b4bd0]                           dc.b $00
[000b4bd1]                           dc.b $00
[000b4bd2] 000b4436                  dc.l USER_032
[000b4bd6]                           dc.b $00
[000b4bd7]                           dc.b $16
[000b4bd8]                           dc.b $00
[000b4bd9]                           dc.b $02
[000b4bda]                           dc.b $00
[000b4bdb]                           dc.b $03
[000b4bdc]                           dc.b $00
[000b4bdd]                           dc.b $01
_54aED_PATTERN:
[000b4bde] 00027498                  dc.l edpa_pattern
[000b4be2]                           dc.b $00
[000b4be3]                           dc.b $00
[000b4be4]                           dc.b $00
[000b4be5]                           dc.b $00
[000b4be6]                           dc.w $8000
[000b4be8]                           dc.b $00
[000b4be9]                           dc.b $00
[000b4bea]                           dc.b $00
[000b4beb]                           dc.b $00
[000b4bec]                           dc.b $00
[000b4bed]                           dc.b $00
[000b4bee]                           dc.b $00
[000b4bef]                           dc.b $00
[000b4bf0]                           dc.b $00
[000b4bf1]                           dc.b $00
[000b4bf2]                           dc.b $00
[000b4bf3]                           dc.b $00
[000b4bf4]                           dc.b $00
[000b4bf5]                           dc.b $00
_56_ED_PATTERN:
[000b4bf6]                           dc.b $00
[000b4bf7]                           dc.b $3a
[000b4bf8]                           dc.w $ffff
[000b4bfa]                           dc.w $ffff
[000b4bfc]                           dc.b $00
[000b4bfd]                           dc.b $18
[000b4bfe]                           dc.b $00
[000b4bff]                           dc.b $05
[000b4c00]                           dc.b $00
[000b4c01]                           dc.b $00
[000b4c02] 000b4456                  dc.l USER_033
[000b4c06]                           dc.b $00
[000b4c07]                           dc.b $16
[000b4c08]                           dc.b $00
[000b4c09]                           dc.b $03
[000b4c0a]                           dc.b $00
[000b4c0b]                           dc.b $03
[000b4c0c]                           dc.b $00
[000b4c0d]                           dc.b $01
_56aED_PATTERN:
[000b4c0e] 00027498                  dc.l edpa_pattern
[000b4c12]                           dc.b $00
[000b4c13]                           dc.b $00
[000b4c14]                           dc.b $00
[000b4c15]                           dc.b $00
[000b4c16]                           dc.w $8000
[000b4c18]                           dc.b $00
[000b4c19]                           dc.b $00
[000b4c1a]                           dc.b $00
[000b4c1b]                           dc.b $00
[000b4c1c]                           dc.b $00
[000b4c1d]                           dc.b $00
[000b4c1e]                           dc.b $00
[000b4c1f]                           dc.b $00
[000b4c20]                           dc.b $00
[000b4c21]                           dc.b $00
[000b4c22]                           dc.b $00
[000b4c23]                           dc.b $00
[000b4c24]                           dc.b $00
[000b4c25]                           dc.b $00
_58_ED_PATTERN:
[000b4c26]                           dc.b $00
[000b4c27]                           dc.b $3c
[000b4c28]                           dc.w $ffff
[000b4c2a]                           dc.w $ffff
[000b4c2c]                           dc.b $00
[000b4c2d]                           dc.b $18
[000b4c2e]                           dc.b $00
[000b4c2f]                           dc.b $05
[000b4c30]                           dc.b $00
[000b4c31]                           dc.b $00
[000b4c32] 000b43b6                  dc.l USER_028
[000b4c36]                           dc.b $00
[000b4c37]                           dc.b $13
[000b4c38]                           dc.b $00
[000b4c39]                           dc.b $01
[000b4c3a]                           dc.b $00
[000b4c3b]                           dc.b $03
[000b4c3c]                           dc.b $00
[000b4c3d]                           dc.b $01
_58aED_PATTERN:
[000b4c3e] 00027498                  dc.l edpa_pattern
[000b4c42]                           dc.b $00
[000b4c43]                           dc.b $00
[000b4c44]                           dc.b $00
[000b4c45]                           dc.b $00
[000b4c46]                           dc.w $8000
[000b4c48]                           dc.b $00
[000b4c49]                           dc.b $00
[000b4c4a]                           dc.b $00
[000b4c4b]                           dc.b $00
[000b4c4c]                           dc.b $00
[000b4c4d]                           dc.b $00
[000b4c4e]                           dc.b $00
[000b4c4f]                           dc.b $00
[000b4c50]                           dc.b $00
[000b4c51]                           dc.b $00
[000b4c52]                           dc.b $00
[000b4c53]                           dc.b $00
[000b4c54]                           dc.b $00
[000b4c55]                           dc.b $00
_60_ED_PATTERN:
[000b4c56]                           dc.b $00
[000b4c57]                           dc.b $3e
[000b4c58]                           dc.w $ffff
[000b4c5a]                           dc.w $ffff
[000b4c5c]                           dc.b $00
[000b4c5d]                           dc.b $18
[000b4c5e]                           dc.b $00
[000b4c5f]                           dc.b $05
[000b4c60]                           dc.b $00
[000b4c61]                           dc.b $00
[000b4c62] 000b43d6                  dc.l USER_029
[000b4c66]                           dc.b $00
[000b4c67]                           dc.b $13
[000b4c68]                           dc.b $00
[000b4c69]                           dc.b $02
[000b4c6a]                           dc.b $00
[000b4c6b]                           dc.b $03
[000b4c6c]                           dc.b $00
[000b4c6d]                           dc.b $01
_60aED_PATTERN:
[000b4c6e] 00027498                  dc.l edpa_pattern
[000b4c72]                           dc.b $00
[000b4c73]                           dc.b $00
[000b4c74]                           dc.b $00
[000b4c75]                           dc.b $00
[000b4c76]                           dc.w $8000
[000b4c78]                           dc.b $00
[000b4c79]                           dc.b $00
[000b4c7a]                           dc.b $00
[000b4c7b]                           dc.b $00
[000b4c7c]                           dc.b $00
[000b4c7d]                           dc.b $00
[000b4c7e]                           dc.b $00
[000b4c7f]                           dc.b $00
[000b4c80]                           dc.b $00
[000b4c81]                           dc.b $00
[000b4c82]                           dc.b $00
[000b4c83]                           dc.b $00
[000b4c84]                           dc.b $00
[000b4c85]                           dc.b $00
_62_ED_PATTERN:
[000b4c86]                           dc.b $00
[000b4c87]                           dc.b $40
[000b4c88]                           dc.w $ffff
[000b4c8a]                           dc.w $ffff
[000b4c8c]                           dc.b $00
[000b4c8d]                           dc.b $18
[000b4c8e]                           dc.b $00
[000b4c8f]                           dc.b $05
[000b4c90]                           dc.b $00
[000b4c91]                           dc.b $00
[000b4c92] 000b43f6                  dc.l USER_030
[000b4c96]                           dc.b $00
[000b4c97]                           dc.b $13
[000b4c98]                           dc.b $00
[000b4c99]                           dc.b $03
[000b4c9a]                           dc.b $00
[000b4c9b]                           dc.b $03
[000b4c9c]                           dc.b $00
[000b4c9d]                           dc.b $01
_62aED_PATTERN:
[000b4c9e] 00027498                  dc.l edpa_pattern
[000b4ca2]                           dc.b $00
[000b4ca3]                           dc.b $00
[000b4ca4]                           dc.b $00
[000b4ca5]                           dc.b $00
[000b4ca6]                           dc.w $8000
[000b4ca8]                           dc.b $00
[000b4ca9]                           dc.b $00
[000b4caa]                           dc.b $00
[000b4cab]                           dc.b $00
[000b4cac]                           dc.b $00
[000b4cad]                           dc.b $00
[000b4cae]                           dc.b $00
[000b4caf]                           dc.b $00
[000b4cb0]                           dc.b $00
[000b4cb1]                           dc.b $00
[000b4cb2]                           dc.b $00
[000b4cb3]                           dc.b $00
[000b4cb4]                           dc.b $00
[000b4cb5]                           dc.b $00
_64_ED_PATTERN:
[000b4cb6]                           dc.b $00
[000b4cb7]                           dc.b $42
[000b4cb8]                           dc.w $ffff
[000b4cba]                           dc.w $ffff
[000b4cbc]                           dc.b $00
[000b4cbd]                           dc.b $18
[000b4cbe]                           dc.b $00
[000b4cbf]                           dc.b $05
[000b4cc0]                           dc.b $00
[000b4cc1]                           dc.b $00
[000b4cc2] 000b4476                  dc.l USER_034
[000b4cc6]                           dc.b $00
[000b4cc7]                           dc.b $19
[000b4cc8]                           dc.b $00
[000b4cc9]                           dc.b $01
[000b4cca]                           dc.b $00
[000b4ccb]                           dc.b $03
[000b4ccc]                           dc.b $00
[000b4ccd]                           dc.b $01
_64aED_PATTERN:
[000b4cce] 00027498                  dc.l edpa_pattern
[000b4cd2]                           dc.b $00
[000b4cd3]                           dc.b $00
[000b4cd4]                           dc.b $00
[000b4cd5]                           dc.b $00
[000b4cd6]                           dc.w $8000
[000b4cd8]                           dc.b $00
[000b4cd9]                           dc.b $00
[000b4cda]                           dc.b $00
[000b4cdb]                           dc.b $00
[000b4cdc]                           dc.b $00
[000b4cdd]                           dc.b $00
[000b4cde]                           dc.b $00
[000b4cdf]                           dc.b $00
[000b4ce0]                           dc.b $00
[000b4ce1]                           dc.b $00
[000b4ce2]                           dc.b $00
[000b4ce3]                           dc.b $00
[000b4ce4]                           dc.b $00
[000b4ce5]                           dc.b $00
_66_ED_PATTERN:
[000b4ce6]                           dc.b $00
[000b4ce7]                           dc.b $44
[000b4ce8]                           dc.w $ffff
[000b4cea]                           dc.w $ffff
[000b4cec]                           dc.b $00
[000b4ced]                           dc.b $18
[000b4cee]                           dc.b $00
[000b4cef]                           dc.b $05
[000b4cf0]                           dc.b $00
[000b4cf1]                           dc.b $00
[000b4cf2] 000b4496                  dc.l USER_035
[000b4cf6]                           dc.b $00
[000b4cf7]                           dc.b $19
[000b4cf8]                           dc.b $00
[000b4cf9]                           dc.b $02
[000b4cfa]                           dc.b $00
[000b4cfb]                           dc.b $03
[000b4cfc]                           dc.b $00
[000b4cfd]                           dc.b $01
_66aED_PATTERN:
[000b4cfe] 00027498                  dc.l edpa_pattern
[000b4d02]                           dc.b $00
[000b4d03]                           dc.b $00
[000b4d04]                           dc.b $00
[000b4d05]                           dc.b $00
[000b4d06]                           dc.w $8000
[000b4d08]                           dc.b $00
[000b4d09]                           dc.b $00
[000b4d0a]                           dc.b $00
[000b4d0b]                           dc.b $00
[000b4d0c]                           dc.b $00
[000b4d0d]                           dc.b $00
[000b4d0e]                           dc.b $00
[000b4d0f]                           dc.b $00
[000b4d10]                           dc.b $00
[000b4d11]                           dc.b $00
[000b4d12]                           dc.b $00
[000b4d13]                           dc.b $00
[000b4d14]                           dc.b $00
[000b4d15]                           dc.b $00
_68_ED_PATTERN:
[000b4d16]                           dc.b $00
[000b4d17]                           dc.b $46
[000b4d18]                           dc.w $ffff
[000b4d1a]                           dc.w $ffff
[000b4d1c]                           dc.b $00
[000b4d1d]                           dc.b $18
[000b4d1e]                           dc.b $00
[000b4d1f]                           dc.b $05
[000b4d20]                           dc.b $00
[000b4d21]                           dc.b $00
[000b4d22] 000b44b6                  dc.l USER_036
[000b4d26]                           dc.b $00
[000b4d27]                           dc.b $19
[000b4d28]                           dc.b $00
[000b4d29]                           dc.b $03
[000b4d2a]                           dc.b $00
[000b4d2b]                           dc.b $03
[000b4d2c]                           dc.b $00
[000b4d2d]                           dc.b $01
_68aED_PATTERN:
[000b4d2e] 00027498                  dc.l edpa_pattern
[000b4d32]                           dc.b $00
[000b4d33]                           dc.b $00
[000b4d34]                           dc.b $00
[000b4d35]                           dc.b $00
[000b4d36]                           dc.w $8000
[000b4d38]                           dc.b $00
[000b4d39]                           dc.b $00
[000b4d3a]                           dc.b $00
[000b4d3b]                           dc.b $00
[000b4d3c]                           dc.b $00
[000b4d3d]                           dc.b $00
[000b4d3e]                           dc.b $00
[000b4d3f]                           dc.b $00
[000b4d40]                           dc.b $00
[000b4d41]                           dc.b $00
[000b4d42]                           dc.b $00
[000b4d43]                           dc.b $00
[000b4d44]                           dc.b $00
[000b4d45]                           dc.b $00
_70_ED_PATTERN:
[000b4d46]                           dc.b $00
[000b4d47]                           dc.b $48
[000b4d48]                           dc.w $ffff
[000b4d4a]                           dc.w $ffff
[000b4d4c]                           dc.b $00
[000b4d4d]                           dc.b $18
[000b4d4e]                           dc.b $00
[000b4d4f]                           dc.b $05
[000b4d50]                           dc.b $00
[000b4d51]                           dc.b $00
[000b4d52] 000b4536                  dc.l USER_040
[000b4d56]                           dc.b $00
[000b4d57]                           dc.b $1f
[000b4d58]                           dc.b $00
[000b4d59]                           dc.b $01
[000b4d5a]                           dc.b $00
[000b4d5b]                           dc.b $03
[000b4d5c]                           dc.b $00
[000b4d5d]                           dc.b $01
_70aED_PATTERN:
[000b4d5e] 00027498                  dc.l edpa_pattern
[000b4d62]                           dc.b $00
[000b4d63]                           dc.b $00
[000b4d64]                           dc.b $00
[000b4d65]                           dc.b $00
[000b4d66]                           dc.w $8000
[000b4d68]                           dc.b $00
[000b4d69]                           dc.b $00
[000b4d6a]                           dc.b $00
[000b4d6b]                           dc.b $00
[000b4d6c]                           dc.b $00
[000b4d6d]                           dc.b $00
[000b4d6e]                           dc.b $00
[000b4d6f]                           dc.b $00
[000b4d70]                           dc.b $00
[000b4d71]                           dc.b $00
[000b4d72]                           dc.b $00
[000b4d73]                           dc.b $00
[000b4d74]                           dc.b $00
[000b4d75]                           dc.b $00
_72_ED_PATTERN:
[000b4d76]                           dc.b $00
[000b4d77]                           dc.b $4a
[000b4d78]                           dc.w $ffff
[000b4d7a]                           dc.w $ffff
[000b4d7c]                           dc.b $00
[000b4d7d]                           dc.b $18
[000b4d7e]                           dc.b $00
[000b4d7f]                           dc.b $05
[000b4d80]                           dc.b $00
[000b4d81]                           dc.b $00
[000b4d82] 000b4556                  dc.l USER_041
[000b4d86]                           dc.b $00
[000b4d87]                           dc.b $1f
[000b4d88]                           dc.b $00
[000b4d89]                           dc.b $02
[000b4d8a]                           dc.b $00
[000b4d8b]                           dc.b $03
[000b4d8c]                           dc.b $00
[000b4d8d]                           dc.b $01
_72aED_PATTERN:
[000b4d8e] 00027498                  dc.l edpa_pattern
[000b4d92]                           dc.b $00
[000b4d93]                           dc.b $00
[000b4d94]                           dc.b $00
[000b4d95]                           dc.b $00
[000b4d96]                           dc.w $8000
[000b4d98]                           dc.b $00
[000b4d99]                           dc.b $00
[000b4d9a]                           dc.b $00
[000b4d9b]                           dc.b $00
[000b4d9c]                           dc.b $00
[000b4d9d]                           dc.b $00
[000b4d9e]                           dc.b $00
[000b4d9f]                           dc.b $00
[000b4da0]                           dc.b $00
[000b4da1]                           dc.b $00
[000b4da2]                           dc.b $00
[000b4da3]                           dc.b $00
[000b4da4]                           dc.b $00
[000b4da5]                           dc.b $00
_74_ED_PATTERN:
[000b4da6]                           dc.b $00
[000b4da7]                           dc.b $4c
[000b4da8]                           dc.w $ffff
[000b4daa]                           dc.w $ffff
[000b4dac]                           dc.b $00
[000b4dad]                           dc.b $18
[000b4dae]                           dc.b $00
[000b4daf]                           dc.b $05
[000b4db0]                           dc.b $00
[000b4db1]                           dc.b $00
[000b4db2] 000b4576                  dc.l USER_042
[000b4db6]                           dc.b $00
[000b4db7]                           dc.b $1f
[000b4db8]                           dc.b $00
[000b4db9]                           dc.b $03
[000b4dba]                           dc.b $00
[000b4dbb]                           dc.b $03
[000b4dbc]                           dc.b $00
[000b4dbd]                           dc.b $01
_74aED_PATTERN:
[000b4dbe] 00027498                  dc.l edpa_pattern
[000b4dc2]                           dc.b $00
[000b4dc3]                           dc.b $00
[000b4dc4]                           dc.b $00
[000b4dc5]                           dc.b $00
[000b4dc6]                           dc.w $8000
[000b4dc8]                           dc.b $00
[000b4dc9]                           dc.b $00
[000b4dca]                           dc.b $00
[000b4dcb]                           dc.b $00
[000b4dcc]                           dc.b $00
[000b4dcd]                           dc.b $00
[000b4dce]                           dc.b $00
[000b4dcf]                           dc.b $00
[000b4dd0]                           dc.b $00
[000b4dd1]                           dc.b $00
[000b4dd2]                           dc.b $00
[000b4dd3]                           dc.b $00
[000b4dd4]                           dc.b $00
[000b4dd5]                           dc.b $00
_76_ED_PATTERN:
[000b4dd6]                           dc.b $00
[000b4dd7]                           dc.b $4e
[000b4dd8]                           dc.w $ffff
[000b4dda]                           dc.w $ffff
[000b4ddc]                           dc.b $00
[000b4ddd]                           dc.b $18
[000b4dde]                           dc.b $00
[000b4ddf]                           dc.b $05
[000b4de0]                           dc.b $00
[000b4de1]                           dc.b $00
[000b4de2] 000b44f6                  dc.l USER_038
[000b4de6]                           dc.b $00
[000b4de7]                           dc.b $1c
[000b4de8]                           dc.b $00
[000b4de9]                           dc.b $02
[000b4dea]                           dc.b $00
[000b4deb]                           dc.b $03
[000b4dec]                           dc.b $00
[000b4ded]                           dc.b $01
_76aED_PATTERN:
[000b4dee] 00027498                  dc.l edpa_pattern
[000b4df2]                           dc.b $00
[000b4df3]                           dc.b $00
[000b4df4]                           dc.b $00
[000b4df5]                           dc.b $00
[000b4df6]                           dc.w $8000
[000b4df8]                           dc.b $00
[000b4df9]                           dc.b $00
[000b4dfa]                           dc.b $00
[000b4dfb]                           dc.b $00
[000b4dfc]                           dc.b $00
[000b4dfd]                           dc.b $00
[000b4dfe]                           dc.b $00
[000b4dff]                           dc.b $00
[000b4e00]                           dc.b $00
[000b4e01]                           dc.b $00
[000b4e02]                           dc.b $00
[000b4e03]                           dc.b $00
[000b4e04]                           dc.b $00
[000b4e05]                           dc.b $00
_78_ED_PATTERN:
[000b4e06]                           dc.b $00
[000b4e07]                           dc.b $50
[000b4e08]                           dc.w $ffff
[000b4e0a]                           dc.w $ffff
[000b4e0c]                           dc.b $00
[000b4e0d]                           dc.b $18
[000b4e0e]                           dc.b $00
[000b4e0f]                           dc.b $05
[000b4e10]                           dc.b $00
[000b4e11]                           dc.b $00
[000b4e12] 000b4516                  dc.l USER_039
[000b4e16]                           dc.b $00
[000b4e17]                           dc.b $1c
[000b4e18]                           dc.b $00
[000b4e19]                           dc.b $03
[000b4e1a]                           dc.b $00
[000b4e1b]                           dc.b $03
[000b4e1c]                           dc.b $00
[000b4e1d]                           dc.b $01
_78aED_PATTERN:
[000b4e1e] 00027498                  dc.l edpa_pattern
[000b4e22]                           dc.b $00
[000b4e23]                           dc.b $00
[000b4e24]                           dc.b $00
[000b4e25]                           dc.b $00
[000b4e26]                           dc.w $8000
[000b4e28]                           dc.b $00
[000b4e29]                           dc.b $00
[000b4e2a]                           dc.b $00
[000b4e2b]                           dc.b $00
[000b4e2c]                           dc.b $00
[000b4e2d]                           dc.b $00
[000b4e2e]                           dc.b $00
[000b4e2f]                           dc.b $00
[000b4e30]                           dc.b $00
[000b4e31]                           dc.b $00
[000b4e32]                           dc.b $00
[000b4e33]                           dc.b $00
[000b4e34]                           dc.b $00
[000b4e35]                           dc.b $00
_80_ED_PATTERN:
[000b4e36]                           dc.b $00
[000b4e37]                           dc.b $52
[000b4e38]                           dc.w $ffff
[000b4e3a]                           dc.w $ffff
[000b4e3c]                           dc.b $00
[000b4e3d]                           dc.b $18
[000b4e3e]                           dc.b $00
[000b4e3f]                           dc.b $05
[000b4e40]                           dc.b $00
[000b4e41]                           dc.b $00
[000b4e42] 000b44d6                  dc.l USER_037
[000b4e46]                           dc.b $00
[000b4e47]                           dc.b $1c
[000b4e48]                           dc.b $00
[000b4e49]                           dc.b $01
[000b4e4a]                           dc.b $00
[000b4e4b]                           dc.b $03
[000b4e4c]                           dc.b $00
[000b4e4d]                           dc.b $01
_80aED_PATTERN:
[000b4e4e] 00027498                  dc.l edpa_pattern
[000b4e52]                           dc.b $00
[000b4e53]                           dc.b $00
[000b4e54]                           dc.b $00
[000b4e55]                           dc.b $00
[000b4e56]                           dc.w $8000
[000b4e58]                           dc.b $00
[000b4e59]                           dc.b $00
[000b4e5a]                           dc.b $00
[000b4e5b]                           dc.b $00
[000b4e5c]                           dc.b $00
[000b4e5d]                           dc.b $00
[000b4e5e]                           dc.b $00
[000b4e5f]                           dc.b $00
[000b4e60]                           dc.b $00
[000b4e61]                           dc.b $00
[000b4e62]                           dc.b $00
[000b4e63]                           dc.b $00
[000b4e64]                           dc.b $00
[000b4e65]                           dc.b $00
_82_ED_PATTERN:
[000b4e66]                           dc.b $00
[000b4e67]                           dc.b $54
[000b4e68]                           dc.w $ffff
[000b4e6a]                           dc.w $ffff
[000b4e6c]                           dc.b $00
[000b4e6d]                           dc.b $18
[000b4e6e]                           dc.b $00
[000b4e6f]                           dc.b $05
[000b4e70]                           dc.b $00
[000b4e71]                           dc.b $00
[000b4e72] 000b45f6                  dc.l USER_046
[000b4e76]                           dc.b $00
[000b4e77]                           dc.b $25
[000b4e78]                           dc.b $00
[000b4e79]                           dc.b $01
[000b4e7a]                           dc.b $00
[000b4e7b]                           dc.b $03
[000b4e7c]                           dc.b $00
[000b4e7d]                           dc.b $01
_82aED_PATTERN:
[000b4e7e] 00027498                  dc.l edpa_pattern
[000b4e82]                           dc.b $00
[000b4e83]                           dc.b $00
[000b4e84]                           dc.b $00
[000b4e85]                           dc.b $00
[000b4e86]                           dc.w $8000
[000b4e88]                           dc.b $00
[000b4e89]                           dc.b $00
[000b4e8a]                           dc.b $00
[000b4e8b]                           dc.b $00
[000b4e8c]                           dc.b $00
[000b4e8d]                           dc.b $00
[000b4e8e]                           dc.b $00
[000b4e8f]                           dc.b $00
[000b4e90]                           dc.b $00
[000b4e91]                           dc.b $00
[000b4e92]                           dc.b $00
[000b4e93]                           dc.b $00
[000b4e94]                           dc.b $00
[000b4e95]                           dc.b $00
_84_ED_PATTERN:
[000b4e96]                           dc.b $00
[000b4e97]                           dc.b $56
[000b4e98]                           dc.w $ffff
[000b4e9a]                           dc.w $ffff
[000b4e9c]                           dc.b $00
[000b4e9d]                           dc.b $18
[000b4e9e]                           dc.b $00
[000b4e9f]                           dc.b $05
[000b4ea0]                           dc.b $00
[000b4ea1]                           dc.b $00
[000b4ea2] 000b4616                  dc.l USER_047
[000b4ea6]                           dc.b $00
[000b4ea7]                           dc.b $25
[000b4ea8]                           dc.b $00
[000b4ea9]                           dc.b $02
[000b4eaa]                           dc.b $00
[000b4eab]                           dc.b $03
[000b4eac]                           dc.b $00
[000b4ead]                           dc.b $01
_84aED_PATTERN:
[000b4eae] 00027498                  dc.l edpa_pattern
[000b4eb2]                           dc.b $00
[000b4eb3]                           dc.b $00
[000b4eb4]                           dc.b $00
[000b4eb5]                           dc.b $00
[000b4eb6]                           dc.w $8000
[000b4eb8]                           dc.b $00
[000b4eb9]                           dc.b $00
[000b4eba]                           dc.b $00
[000b4ebb]                           dc.b $00
[000b4ebc]                           dc.b $00
[000b4ebd]                           dc.b $00
[000b4ebe]                           dc.b $00
[000b4ebf]                           dc.b $00
[000b4ec0]                           dc.b $00
[000b4ec1]                           dc.b $00
[000b4ec2]                           dc.b $00
[000b4ec3]                           dc.b $00
[000b4ec4]                           dc.b $00
[000b4ec5]                           dc.b $00
_86_ED_PATTERN:
[000b4ec6]                           dc.b $00
[000b4ec7]                           dc.b $58
[000b4ec8]                           dc.w $ffff
[000b4eca]                           dc.w $ffff
[000b4ecc]                           dc.b $00
[000b4ecd]                           dc.b $18
[000b4ece]                           dc.b $00
[000b4ecf]                           dc.b $05
[000b4ed0]                           dc.b $00
[000b4ed1]                           dc.b $00
[000b4ed2] 000b4636                  dc.l USER_048
[000b4ed6]                           dc.b $00
[000b4ed7]                           dc.b $25
[000b4ed8]                           dc.b $00
[000b4ed9]                           dc.b $03
[000b4eda]                           dc.b $00
[000b4edb]                           dc.b $03
[000b4edc]                           dc.b $00
[000b4edd]                           dc.b $01
_86aED_PATTERN:
[000b4ede] 00027498                  dc.l edpa_pattern
[000b4ee2]                           dc.b $00
[000b4ee3]                           dc.b $00
[000b4ee4]                           dc.b $00
[000b4ee5]                           dc.b $00
[000b4ee6]                           dc.w $8000
[000b4ee8]                           dc.b $00
[000b4ee9]                           dc.b $00
[000b4eea]                           dc.b $00
[000b4eeb]                           dc.b $00
[000b4eec]                           dc.b $00
[000b4eed]                           dc.b $00
[000b4eee]                           dc.b $00
[000b4eef]                           dc.b $00
[000b4ef0]                           dc.b $00
[000b4ef1]                           dc.b $00
[000b4ef2]                           dc.b $00
[000b4ef3]                           dc.b $00
[000b4ef4]                           dc.b $00
[000b4ef5]                           dc.b $00
_88_ED_PATTERN:
[000b4ef6]                           dc.b $00
[000b4ef7]                           dc.b $5a
[000b4ef8]                           dc.w $ffff
[000b4efa]                           dc.w $ffff
[000b4efc]                           dc.b $00
[000b4efd]                           dc.b $18
[000b4efe]                           dc.b $00
[000b4eff]                           dc.b $05
[000b4f00]                           dc.b $00
[000b4f01]                           dc.b $00
[000b4f02] 000b45d6                  dc.l USER_045
[000b4f06]                           dc.b $00
[000b4f07]                           dc.b $22
[000b4f08]                           dc.b $00
[000b4f09]                           dc.b $03
[000b4f0a]                           dc.b $00
[000b4f0b]                           dc.b $03
[000b4f0c]                           dc.b $00
[000b4f0d]                           dc.b $01
_88aED_PATTERN:
[000b4f0e] 00027498                  dc.l edpa_pattern
[000b4f12]                           dc.b $00
[000b4f13]                           dc.b $00
[000b4f14]                           dc.b $00
[000b4f15]                           dc.b $00
[000b4f16]                           dc.w $8000
[000b4f18]                           dc.b $00
[000b4f19]                           dc.b $00
[000b4f1a]                           dc.b $00
[000b4f1b]                           dc.b $00
[000b4f1c]                           dc.b $00
[000b4f1d]                           dc.b $00
[000b4f1e]                           dc.b $00
[000b4f1f]                           dc.b $00
[000b4f20]                           dc.b $00
[000b4f21]                           dc.b $00
[000b4f22]                           dc.b $00
[000b4f23]                           dc.b $00
[000b4f24]                           dc.b $00
[000b4f25]                           dc.b $00
_90_ED_PATTERN:
[000b4f26]                           dc.b $00
[000b4f27]                           dc.b $5c
[000b4f28]                           dc.w $ffff
[000b4f2a]                           dc.w $ffff
[000b4f2c]                           dc.b $00
[000b4f2d]                           dc.b $18
[000b4f2e]                           dc.b $00
[000b4f2f]                           dc.b $05
[000b4f30]                           dc.b $00
[000b4f31]                           dc.b $00
[000b4f32] 000b4596                  dc.l USER_043
[000b4f36]                           dc.b $00
[000b4f37]                           dc.b $22
[000b4f38]                           dc.b $00
[000b4f39]                           dc.b $01
[000b4f3a]                           dc.b $00
[000b4f3b]                           dc.b $03
[000b4f3c]                           dc.b $00
[000b4f3d]                           dc.b $01
_90aED_PATTERN:
[000b4f3e] 00027498                  dc.l edpa_pattern
[000b4f42]                           dc.b $00
[000b4f43]                           dc.b $00
[000b4f44]                           dc.b $00
[000b4f45]                           dc.b $00
[000b4f46]                           dc.w $8000
[000b4f48]                           dc.b $00
[000b4f49]                           dc.b $00
[000b4f4a]                           dc.b $00
[000b4f4b]                           dc.b $00
[000b4f4c]                           dc.b $00
[000b4f4d]                           dc.b $00
[000b4f4e]                           dc.b $00
[000b4f4f]                           dc.b $00
[000b4f50]                           dc.b $00
[000b4f51]                           dc.b $00
[000b4f52]                           dc.b $00
[000b4f53]                           dc.b $00
[000b4f54]                           dc.b $00
[000b4f55]                           dc.b $00
_92_ED_PATTERN:
[000b4f56]                           dc.b $00
[000b4f57]                           dc.b $5e
[000b4f58]                           dc.w $ffff
[000b4f5a]                           dc.w $ffff
[000b4f5c]                           dc.b $00
[000b4f5d]                           dc.b $18
[000b4f5e]                           dc.b $00
[000b4f5f]                           dc.b $05
[000b4f60]                           dc.b $00
[000b4f61]                           dc.b $00
[000b4f62] 000b45b6                  dc.l USER_044
[000b4f66]                           dc.b $00
[000b4f67]                           dc.b $22
[000b4f68]                           dc.b $00
[000b4f69]                           dc.b $02
[000b4f6a]                           dc.b $00
[000b4f6b]                           dc.b $03
[000b4f6c]                           dc.b $00
[000b4f6d]                           dc.b $01
_92aED_PATTERN:
[000b4f6e] 00027498                  dc.l edpa_pattern
[000b4f72]                           dc.b $00
[000b4f73]                           dc.b $00
[000b4f74]                           dc.b $00
[000b4f75]                           dc.b $00
[000b4f76]                           dc.w $8000
[000b4f78]                           dc.b $00
[000b4f79]                           dc.b $00
[000b4f7a]                           dc.b $00
[000b4f7b]                           dc.b $00
[000b4f7c]                           dc.b $00
[000b4f7d]                           dc.b $00
[000b4f7e]                           dc.b $00
[000b4f7f]                           dc.b $00
[000b4f80]                           dc.b $00
[000b4f81]                           dc.b $00
[000b4f82]                           dc.b $00
[000b4f83]                           dc.b $00
[000b4f84]                           dc.b $00
[000b4f85]                           dc.b $00
_94_ED_PATTERN:
[000b4f86]                           dc.b $00
[000b4f87]                           dc.b $60
[000b4f88]                           dc.w $ffff
[000b4f8a]                           dc.w $ffff
[000b4f8c]                           dc.b $00
[000b4f8d]                           dc.b $18
[000b4f8e]                           dc.b $00
[000b4f8f]                           dc.b $05
[000b4f90]                           dc.b $00
[000b4f91]                           dc.b $00
[000b4f92] 000b4656                  dc.l USER_049
[000b4f96]                           dc.b $00
[000b4f97]                           dc.b $28
[000b4f98]                           dc.b $00
[000b4f99]                           dc.b $01
[000b4f9a]                           dc.b $00
[000b4f9b]                           dc.b $03
[000b4f9c]                           dc.b $00
[000b4f9d]                           dc.b $01
_94aED_PATTERN:
[000b4f9e] 00027498                  dc.l edpa_pattern
[000b4fa2]                           dc.b $00
[000b4fa3]                           dc.b $00
[000b4fa4]                           dc.b $00
[000b4fa5]                           dc.b $00
[000b4fa6]                           dc.w $8000
[000b4fa8]                           dc.b $00
[000b4fa9]                           dc.b $00
[000b4faa]                           dc.b $00
[000b4fab]                           dc.b $00
[000b4fac]                           dc.b $00
[000b4fad]                           dc.b $00
[000b4fae]                           dc.b $00
[000b4faf]                           dc.b $00
[000b4fb0]                           dc.b $00
[000b4fb1]                           dc.b $00
[000b4fb2]                           dc.b $00
[000b4fb3]                           dc.b $00
[000b4fb4]                           dc.b $00
[000b4fb5]                           dc.b $00
_96_ED_PATTERN:
[000b4fb6]                           dc.b $00
[000b4fb7]                           dc.b $62
[000b4fb8]                           dc.w $ffff
[000b4fba]                           dc.w $ffff
[000b4fbc]                           dc.b $00
[000b4fbd]                           dc.b $18
[000b4fbe]                           dc.b $00
[000b4fbf]                           dc.b $05
[000b4fc0]                           dc.b $00
[000b4fc1]                           dc.b $00
[000b4fc2] 000b4676                  dc.l USER_050
[000b4fc6]                           dc.b $00
[000b4fc7]                           dc.b $28
[000b4fc8]                           dc.b $00
[000b4fc9]                           dc.b $02
[000b4fca]                           dc.b $00
[000b4fcb]                           dc.b $03
[000b4fcc]                           dc.b $00
[000b4fcd]                           dc.b $01
_96aED_PATTERN:
[000b4fce] 00027498                  dc.l edpa_pattern
[000b4fd2]                           dc.b $00
[000b4fd3]                           dc.b $00
[000b4fd4]                           dc.b $00
[000b4fd5]                           dc.b $00
[000b4fd6]                           dc.w $8000
[000b4fd8]                           dc.b $00
[000b4fd9]                           dc.b $00
[000b4fda]                           dc.b $00
[000b4fdb]                           dc.b $00
[000b4fdc]                           dc.b $00
[000b4fdd]                           dc.b $00
[000b4fde]                           dc.b $00
[000b4fdf]                           dc.b $00
[000b4fe0]                           dc.b $00
[000b4fe1]                           dc.b $00
[000b4fe2]                           dc.b $00
[000b4fe3]                           dc.b $00
[000b4fe4]                           dc.b $00
[000b4fe5]                           dc.b $00
_98_ED_PATTERN:
[000b4fe6]                           dc.b $00
[000b4fe7]                           dc.b $0f
[000b4fe8]                           dc.w $ffff
[000b4fea]                           dc.w $ffff
[000b4fec]                           dc.b $00
[000b4fed]                           dc.b $18
[000b4fee]                           dc.b $00
[000b4fef]                           dc.b $05
[000b4ff0]                           dc.b $00
[000b4ff1]                           dc.b $00
[000b4ff2] 000b4696                  dc.l USER_051
[000b4ff6]                           dc.b $00
[000b4ff7]                           dc.b $28
[000b4ff8]                           dc.b $00
[000b4ff9]                           dc.b $03
[000b4ffa]                           dc.b $00
[000b4ffb]                           dc.b $03
[000b4ffc]                           dc.b $00
[000b4ffd]                           dc.b $01
_98aED_PATTERN:
[000b4ffe] 00027498                  dc.l edpa_pattern
[000b5002]                           dc.b $00
[000b5003]                           dc.b $00
[000b5004]                           dc.b $00
[000b5005]                           dc.b $00
[000b5006]                           dc.w $8020
[000b5008]                           dc.b $00
[000b5009]                           dc.b $00
[000b500a]                           dc.b $00
[000b500b]                           dc.b $00
[000b500c]                           dc.b $00
[000b500d]                           dc.b $00
[000b500e]                           dc.b $00
[000b500f]                           dc.b $00
[000b5010]                           dc.b $00
[000b5011]                           dc.b $00
[000b5012]                           dc.b $00
[000b5013]                           dc.b $00
[000b5014]                           dc.b $00
[000b5015]                           dc.b $00
pattern:
[000b5016] 0005b032                  dc.l A_pattern
[000b501a]                           dc.b $00
[000b501b]                           dc.b $23
[000b501c]                           dc.b $00
[000b501d]                           dc.b $01
[000b501e]                           dc.b $00
[000b501f]                           dc.b $00
[000b5020]                           dc.b $00
[000b5021]                           dc.b $00
[000b5022]                           dc.b $00
[000b5023]                           dc.b $00
[000b5024]                           dc.b $00
[000b5025]                           dc.b $00
[000b5026]                           dc.b $00
[000b5027]                           dc.b $00
[000b5028]                           dc.b $00
[000b5029]                           dc.b $00
[000b502a]                           dc.b $00
[000b502b]                           dc.b $00
[000b502c]                           dc.b $00
[000b502d]                           dc.b $00
[000b502e]                           dc.b $00
[000b502f]                           dc.b $00
[000b5030]                           dc.b $00
[000b5031]                           dc.b $00
[000b5032]                           dc.b $00
[000b5033]                           dc.b $00
[000b5034]                           dc.b $00
[000b5035]                           dc.b $00
visual:
[000b5036]                           dc.w $ffff
[000b5038]                           dc.w $ffff
[000b503a]                           dc.w $ffff
[000b503c]                           dc.b $00
[000b503d]                           dc.b $18
[000b503e]                           dc.b $00
[000b503f]                           dc.b $00
[000b5040]                           dc.b $00
[000b5041]                           dc.b $00
[000b5042] 000b5016                  dc.l pattern
[000b5046]                           dc.b $00
[000b5047]                           dc.b $00
[000b5048]                           dc.b $00
[000b5049]                           dc.b $00
[000b504a]                           dc.b $00
[000b504b]                           dc.b $0a
[000b504c]                           dc.b $00
[000b504d]                           dc.b $02
logical:
[000b504e]                           dc.w $ffff
[000b5050]                           dc.w $ffff
[000b5052]                           dc.w $ffff
[000b5054]                           dc.b $00
[000b5055]                           dc.b $18
[000b5056]                           dc.b $00
[000b5057]                           dc.b $40
[000b5058]                           dc.b $00
[000b5059]                           dc.b $00
[000b505a]                           dc.b $00
[000b505b]                           dc.b $00
[000b505c]                           dc.b $00
[000b505d]                           dc.b $00
[000b505e]                           dc.b $00
[000b505f]                           dc.b $00
[000b5060]                           dc.b $00
[000b5061]                           dc.b $00
[000b5062]                           dc.b $00
[000b5063]                           dc.b $03
[000b5064]                           dc.b $00
[000b5065]                           dc.b $01
aud:
[000b5066] 000b50e4                  dc.l $000b50e4 ; no symbol found
[000b506a]                           dc.b $00
[000b506b]                           dc.b $00
[000b506c]                           dc.b $00
[000b506d]                           dc.b $00
[000b506e]                           dc.b $00
[000b506f]                           dc.b $00
[000b5070]                           dc.b $00
[000b5071]                           dc.b $00
[000b5072]                           dc.b $00
[000b5073]                           dc.b $00
[000b5074]                           dc.b $00
[000b5075]                           dc.b $00
[000b5076]                           dc.b $00
[000b5077]                           dc.b $00
[000b5078]                           dc.b $00
[000b5079]                           dc.b $00
[000b507a]                           dc.b $00
[000b507b]                           dc.b $00
[000b507c]                           dc.b $00
[000b507d]                           dc.b $00
[000b507e]                           dc.b $00
[000b507f]                           dc.b $00
[000b5080]                           dc.b $00
[000b5081]                           dc.b $00
[000b5082]                           dc.b $00
[000b5083]                           dc.b $00
[000b5084]                           dc.b $00
[000b5085]                           dc.b $00
[000b5086]                           dc.b $00
[000b5087]                           dc.b $00
[000b5088]                           dc.b $00
[000b5089]                           dc.b $00
[000b508a]                           dc.b $00
[000b508b]                           dc.b $00
[000b508c]                           dc.b $00
[000b508d]                           dc.b $00
[000b508e]                           dc.b $00
[000b508f]                           dc.b $00
[000b5090]                           dc.b $00
[000b5091]                           dc.b $00
[000b5092]                           dc.b $00
[000b5093]                           dc.b $00
data:
[000b5094]                           dc.b 'A_pattern',0
[000b509e]                           dc.b $00
[000b509f]                           dc.b $00
[000b50a0]                           dc.b $00
[000b50a1]                           dc.b $00
[000b50a2]                           dc.b $00
[000b50a3]                           dc.b $00
[000b50a4]                           dc.b $00
[000b50a5]                           dc.b $00
[000b50a6]                           dc.b $00
[000b50a7]                           dc.b $00
[000b50a8]                           dc.b $00
[000b50a9]                           dc.b $00
[000b50aa]                           dc.b $00
[000b50ab]                           dc.b $00
[000b50ac]                           dc.b $00
[000b50ad]                           dc.b $00
[000b50ae]                           dc.b $00
[000b50af]                           dc.b $00
[000b50b0]                           dc.b $00
[000b50b1]                           dc.b $00
[000b50b2]                           dc.b $00
[000b50b3]                           dc.b $00
[000b50b4] 00027528                  dc.l object_tree
[000b50b8] 000275ce                  dc.l test_it
[000b50bc] 00027616                  dc.l ok
[000b50c0] 00049b7c                  dc.l Aob_delete
[000b50c4] 000b5036                  dc.l visual
[000b50c8] 000b504e                  dc.l logical
[000b50cc] 000b5066                  dc.l aud
[000b50d0] 0002750e                  dc.l minsize
[000b50d4]                           dc.b $00
[000b50d5]                           dc.b $00
[000b50d6]                           dc.b $00
[000b50d7]                           dc.b $00
[000b50d8] 000b404b                  dc.l title
[000b50dc] 000b4038                  dc.l help_title
[000b50e0]                           dc.b $00
[000b50e1]                           dc.b $00
[000b50e2]                           dc.b $00
[000b50e3]                           dc.b $00
[000b50e4]                           dc.b '0x230001L',0
[000b50ee]                           dc.b '0x%lxL',0
	.even

	.bss

parm: ds.b 32
