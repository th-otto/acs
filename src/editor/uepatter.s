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
[00027428] 4eb9 0002 f280            jsr        $0002F280
[0002742e] 544f                      addq.w     #2,a7
[00027430] 3600                      move.w     d0,d3
[00027432] 6b28                      bmi.s      $0002745C
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
[000274f8] 43f9 000b 5094            lea.l      $000B5094,a1
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
[00027532] 41f9 000b 46b6            lea.l      $000B46B6,a0
[00027538] 4eb9 0004 9a5c            jsr        $00049A5C
[0002753e] 2448                      movea.l    a0,a2
[00027540] 200a                      move.l     a2,d0
[00027542] 6700 0080                 beq        $000275C4
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
[0002756c] 4eb9 0007 594a            jsr        $0007594A
[00027572] 584f                      addq.w     #4,a7
[00027574] 2757 0004                 move.l     (a7),4(a3)
[00027578] 2017                      move.l     (a7),d0
[0002757a] c0bc 0020 0000            and.l      #$00200000,d0
[00027580] 6706                      beq.s      $00027588
[00027582] 006a 0001 00b2            ori.w      #$0001,178(a2)
[00027588] 700f                      moveq.l    #15,d0
[0002758a] c06f 0002                 and.w      2(a7),d0
[0002758e] 48c0                      ext.l      d0
[00027590] e588                      lsl.l      #2,d0
[00027592] 41f9 000b e270            lea.l      $000BE270,a0
[00027598] 2270 0800                 movea.l    0(a0,d0.l),a1
[0002759c] 204a                      movea.l    a2,a0
[0002759e] 700e                      moveq.l    #14,d0
[000275a0] 4eb9 0004 afe0            jsr        $0004AFE0
[000275a6] 700f                      moveq.l    #15,d0
[000275a8] c06f 0002                 and.w      2(a7),d0
[000275ac] 026a fff0 0146            andi.w     #$FFF0,326(a2)
[000275b2] c07c 000f                 and.w      #$000F,d0
[000275b6] 816a 0146                 or.w       d0,326(a2)
[000275ba] 7000                      moveq.l    #0,d0
[000275bc] 2740 001c                 move.l     d0,28(a3)
[000275c0] 2740 0018                 move.l     d0,24(a3)
[000275c4] 204a                      movea.l    a2,a0
[000275c6] 584f                      addq.w     #4,a7
[000275c8] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[000275cc] 4e75                      rts
test_it:
[000275ce] 2f0a                      move.l     a2,-(a7)
[000275d0] 2449                      movea.l    a1,a2
[000275d2] 22bc 0005 b032            move.l     #$0005B032,(a1)
[000275d8] 486a 0004                 pea.l      4(a2)
[000275dc] 43f9 000b 50ee            lea.l      $000B50EE,a1
[000275e2] 2050                      movea.l    (a0),a0
[000275e4] 4eb9 0007 594a            jsr        $0007594A
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
[00027630] 45f9 000f f586            lea.l      $000FF586,a2
[00027636] 2f2b 0004                 move.l     4(a3),-(a7)
[0002763a] 43f9 000b 50ee            lea.l      $000B50EE,a1
[00027640] 204a                      movea.l    a2,a0
[00027642] 4eb9 0007 5680            jsr        $00075680
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
[000276a2] 6100 ff66                 bsr        $0002760A
[000276a6] 4fef 002e                 lea.l      46(a7),a7
[000276aa] 265f                      movea.l    (a7)+,a3
[000276ac] 245f                      movea.l    (a7)+,a2
[000276ae] 4e75                      rts
