
call_click:
[0004844a] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0004844e] 2848                      movea.l    a0,a4
[00048450] 2449                      movea.l    a1,a2
[00048452] 3600                      move.w     d0,d3
[00048454] 48c0                      ext.l      d0
[00048456] 2200                      move.l     d0,d1
[00048458] d281                      add.l      d1,d1
[0004845a] d280                      add.l      d0,d1
[0004845c] e789                      lsl.l      #3,d1
[0004845e] 41f2 1800                 lea.l      0(a2,d1.l),a0
[00048462] 7420                      moveq.l    #32,d2
[00048464] c468 0008                 and.w      8(a0),d2
[00048468] 6636                      bne.s      call_click_1
[0004846a] 7208                      moveq.l    #8,d1
[0004846c] c268 000a                 and.w      10(a0),d1
[00048470] 662e                      bne.s      call_click_1
[00048472] 47e8 0018                 lea.l      24(a0),a3
[00048476] 302b 0008                 move.w     8(a3),d0
[0004847a] c07c 8000                 and.w      #$8000,d0
[0004847e] 6720                      beq.s      call_click_1
[00048480] 2413                      move.l     (a3),d2
[00048482] 671c                      beq.s      call_click_1
[00048484] 41f9 0010 1f12            lea.l      ACSblk,a0
[0004848a] 2250                      movea.l    (a0),a1
[0004848c] 234c 0258                 move.l     a4,600(a1)
[00048490] 2250                      movea.l    (a0),a1
[00048492] 234a 025c                 move.l     a2,604(a1)
[00048496] 2250                      movea.l    (a0),a1
[00048498] 3343 0260                 move.w     d3,608(a1)
[0004849c] 2053                      movea.l    (a3),a0
[0004849e] 4e90                      jsr        (a0)
call_click_1:
[000484a0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000484a4] 4e75                      rts

Ame_titmenu:
[000484a6] 48e7 1c20                 movem.l    d3-d5/a2,-(a7)
[000484aa] 2448                      movea.l    a0,a2
[000484ac] 3a00                      move.w     d0,d5
[000484ae] 302a 0002                 move.w     2(a2),d0
[000484b2] 48c0                      ext.l      d0
[000484b4] 2400                      move.l     d0,d2
[000484b6] d482                      add.l      d2,d2
[000484b8] d480                      add.l      d0,d2
[000484ba] e78a                      lsl.l      #3,d2
[000484bc] 3432 2802                 move.w     2(a2,d2.l),d2
[000484c0] 48c2                      ext.l      d2
[000484c2] 2202                      move.l     d2,d1
[000484c4] d281                      add.l      d1,d1
[000484c6] d282                      add.l      d2,d1
[000484c8] e789                      lsl.l      #3,d1
[000484ca] 3632 1802                 move.w     2(a2,d1.l),d3
[000484ce] 302a 0004                 move.w     4(a2),d0
[000484d2] 48c0                      ext.l      d0
[000484d4] 2200                      move.l     d0,d1
[000484d6] d281                      add.l      d1,d1
[000484d8] d280                      add.l      d0,d1
[000484da] e789                      lsl.l      #3,d1
[000484dc] 3832 1802                 move.w     2(a2,d1.l),d4
[000484e0] 6020                      bra.s      Ame_titmenu_1
Ame_titmenu_2:
[000484e2] 3203                      move.w     d3,d1
[000484e4] 48c1                      ext.l      d1
[000484e6] 2001                      move.l     d1,d0
[000484e8] d080                      add.l      d0,d0
[000484ea] d081                      add.l      d1,d0
[000484ec] e788                      lsl.l      #3,d0
[000484ee] 3632 0800                 move.w     0(a2,d0.l),d3
[000484f2] 3204                      move.w     d4,d1
[000484f4] 48c1                      ext.l      d1
[000484f6] 2001                      move.l     d1,d0
[000484f8] d080                      add.l      d0,d0
[000484fa] d081                      add.l      d1,d0
[000484fc] e788                      lsl.l      #3,d0
[000484fe] 3832 0800                 move.w     0(a2,d0.l),d4
Ame_titmenu_1:
[00048502] b645                      cmp.w      d5,d3
[00048504] 66dc                      bne.s      Ame_titmenu_2
[00048506] 3004                      move.w     d4,d0
[00048508] 4cdf 0438                 movem.l    (a7)+,d3-d5/a2
[0004850c] 4e75                      rts

Ame_tnormal:
[0004850e] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00048512] 514f                      subq.w     #8,a7
[00048514] 2648                      movea.l    a0,a3
[00048516] 2449                      movea.l    a1,a2
[00048518] 3600                      move.w     d0,d3
[0004851a] 3801                      move.w     d1,d4
[0004851c] b3eb 005e                 cmpa.l     94(a3),a1
[00048520] 6632                      bne.s      Ame_tnormal_1
[00048522] 41d7                      lea.l      (a7),a0
[00048524] 4eb9 0004 a3be            jsr        Aob_offset
[0004852a] 3203                      move.w     d3,d1
[0004852c] 48c1                      ext.l      d1
[0004852e] 2001                      move.l     d1,d0
[00048530] d080                      add.l      d0,d0
[00048532] d081                      add.l      d1,d0
[00048534] e788                      lsl.l      #3,d0
[00048536] d5c0                      adda.l     d0,a2
[00048538] 4a44                      tst.w      d4
[0004853a] 6708                      beq.s      Ame_tnormal_2
[0004853c] 006a 0001 000a            ori.w      #$0001,10(a2)
[00048542] 6006                      bra.s      Ame_tnormal_3
Ame_tnormal_2:
[00048544] 026a fffe 000a            andi.w     #$FFFE,10(a2)
Ame_tnormal_3:
[0004854a] 43d7                      lea.l      (a7),a1
[0004854c] 204b                      movea.l    a3,a0
[0004854e] 246b 006a                 movea.l    106(a3),a2
[00048552] 4e92                      jsr        (a2)
Ame_tnormal_1:
[00048554] 504f                      addq.w     #8,a7
[00048556] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0004855a] 4e75                      rts

Ame_menu:
[0004855c] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00048560] 4fef ffde                 lea.l      -34(a7),a7
[00048564] 2a48                      movea.l    a0,a5
[00048566] 2849                      movea.l    a1,a4
[00048568] 3f40 0020                 move.w     d0,32(a7)
[0004856c] 45ef 000c                 lea.l      12(a7),a2
[00048570] 41f9 000d 3cf2            lea.l      $000D3CF2,a0
[00048576] 224a                      movea.l    a2,a1
[00048578] 22d8                      move.l     (a0)+,(a1)+
[0004857a] 22d8                      move.l     (a0)+,(a1)+
[0004857c] 302f 0020                 move.w     32(a7),d0
[00048580] 204c                      movea.l    a4,a0
[00048582] 6100 ff22                 bsr        Ame_titmenu
[00048586] 3600                      move.w     d0,d3
[00048588] 7201                      moveq.l    #1,d1
[0004858a] 224c                      movea.l    a4,a1
[0004858c] 204d                      movea.l    a5,a0
[0004858e] 302f 0020                 move.w     32(a7),d0
[00048592] 6100 ff7a                 bsr        Ame_tnormal
[00048596] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004859c] 486f 0004                 pea.l      4(a7)
[000485a0] 486f 000c                 pea.l      12(a7)
[000485a4] 43ef 0012                 lea.l      18(a7),a1
[000485a8] 41ef 0014                 lea.l      20(a7),a0
[000485ac] 4eb9 0006 c978            jsr        mt_graf_mkstate
[000485b2] 4fef 000c                 lea.l      12(a7),a7
[000485b6] 7001                      moveq.l    #1,d0
[000485b8] 322f 0004                 move.w     4(a7),d1
[000485bc] b340                      eor.w      d1,d0
[000485be] c07c 0001                 and.w      #$0001,d0
[000485c2] 3f40 0004                 move.w     d0,4(a7)
[000485c6] 43ef 0020                 lea.l      32(a7),a1
[000485ca] 204d                      movea.l    a5,a0
[000485cc] 266d 0004                 movea.l    4(a5),a3
[000485d0] 701f                      moveq.l    #31,d0
[000485d2] 4e93                      jsr        (a3)
Ame_menu_11:
[000485d4] 47ef 000a                 lea.l      10(a7),a3
[000485d8] 78ff                      moveq.l    #-1,d4
[000485da] 4245                      clr.w      d5
[000485dc] 3203                      move.w     d3,d1
[000485de] 48c1                      ext.l      d1
[000485e0] 2001                      move.l     d1,d0
[000485e2] d080                      add.l      d0,d0
[000485e4] d081                      add.l      d1,d0
[000485e6] e788                      lsl.l      #3,d0
[000485e8] 3f74 0810 0002            move.w     16(a4,d0.l),2(a7)
[000485ee] 3e34 0812                 move.w     18(a4,d0.l),d7
[000485f2] 224c                      movea.l    a4,a1
[000485f4] 41ef 0014                 lea.l      20(a7),a0
[000485f8] 3003                      move.w     d3,d0
[000485fa] 4eb9 0004 a3be            jsr        Aob_offset
[00048600] 302f 0014                 move.w     20(a7),d0
[00048604] 6a14                      bpl.s      Ame_menu_1
[00048606] 3403                      move.w     d3,d2
[00048608] 48c2                      ext.l      d2
[0004860a] 2202                      move.l     d2,d1
[0004860c] d281                      add.l      d1,d1
[0004860e] d282                      add.l      d2,d1
[00048610] e789                      lsl.l      #3,d1
[00048612] 9174 1810                 sub.w      d0,16(a4,d1.l)
[00048616] 426f 0014                 clr.w      20(a7)
Ame_menu_1:
[0004861a] 302f 0016                 move.w     22(a7),d0
[0004861e] 6a14                      bpl.s      Ame_menu_2
[00048620] 3403                      move.w     d3,d2
[00048622] 48c2                      ext.l      d2
[00048624] 2202                      move.l     d2,d1
[00048626] d281                      add.l      d1,d1
[00048628] d282                      add.l      d2,d1
[0004862a] e789                      lsl.l      #3,d1
[0004862c] 9174 1812                 sub.w      d0,18(a4,d1.l)
[00048630] 426f 0016                 clr.w      22(a7)
Ame_menu_2:
[00048634] 3c2f 0014                 move.w     20(a7),d6
[00048638] dc6f 0018                 add.w      24(a7),d6
[0004863c] 2079 0010 1f12            movea.l    ACSblk,a0
[00048642] 9c68 0008                 sub.w      8(a0),d6
[00048646] 9c68 000c                 sub.w      12(a0),d6
[0004864a] 4a46                      tst.w      d6
[0004864c] 6f14                      ble.s      Ame_menu_3
[0004864e] 3203                      move.w     d3,d1
[00048650] 48c1                      ext.l      d1
[00048652] 2001                      move.l     d1,d0
[00048654] d080                      add.l      d0,d0
[00048656] d081                      add.l      d1,d0
[00048658] e788                      lsl.l      #3,d0
[0004865a] 9d74 0810                 sub.w      d6,16(a4,d0.l)
[0004865e] 9d6f 0014                 sub.w      d6,20(a7)
Ame_menu_3:
[00048662] 3c2f 0016                 move.w     22(a7),d6
[00048666] dc6f 001a                 add.w      26(a7),d6
[0004866a] 2079 0010 1f12            movea.l    ACSblk,a0
[00048670] 9c68 000a                 sub.w      10(a0),d6
[00048674] 9c68 000e                 sub.w      14(a0),d6
[00048678] 4a46                      tst.w      d6
[0004867a] 6f14                      ble.s      Ame_menu_4
[0004867c] 3203                      move.w     d3,d1
[0004867e] 48c1                      ext.l      d1
[00048680] 2001                      move.l     d1,d0
[00048682] d080                      add.l      d0,d0
[00048684] d081                      add.l      d1,d0
[00048686] e788                      lsl.l      #3,d0
[00048688] 9d74 0812                 sub.w      d6,18(a4,d0.l)
[0004868c] 9d6f 0016                 sub.w      d6,22(a7)
Ame_menu_4:
[00048690] 41ef 0014                 lea.l      20(a7),a0
[00048694] 4eb9 0004 a548            jsr        Aob_save
[0004869a] 2f48 001c                 move.l     a0,28(a7)
[0004869e] 3f2f 001a                 move.w     26(a7),-(a7)
[000486a2] 3f2f 001a                 move.w     26(a7),-(a7)
[000486a6] 3f2f 001a                 move.w     26(a7),-(a7)
[000486aa] 2279 000d 99d6            movea.l    _globl,a1
[000486b0] 342f 001a                 move.w     26(a7),d2
[000486b4] 7206                      moveq.l    #6,d1
[000486b6] 3003                      move.w     d3,d0
[000486b8] 204c                      movea.l    a4,a0
[000486ba] 4eb9 0006 b93c            jsr        mt_objc_draw
[000486c0] 5c4f                      addq.w     #6,a7
Ame_menu_12:
[000486c2] 7003                      moveq.l    #3,d0
[000486c4] 4eb9 0005 1e1c            jsr        Awi_update
[000486ca] 2f39 000d 99d6            move.l     _globl,-(a7)
[000486d0] 486f 0004                 pea.l      4(a7)
[000486d4] 486f 0008                 pea.l      8(a7)
[000486d8] 486f 000c                 pea.l      12(a7)
[000486dc] 486f 0010                 pea.l      16(a7)
[000486e0] 486f 001a                 pea.l      26(a7)
[000486e4] 42a7                      clr.l      -(a7)
[000486e6] 4267                      clr.w      -(a7)
[000486e8] 4267                      clr.w      -(a7)
[000486ea] 4267                      clr.w      -(a7)
[000486ec] 4267                      clr.w      -(a7)
[000486ee] 4267                      clr.w      -(a7)
[000486f0] 7001                      moveq.l    #1,d0
[000486f2] 3f00                      move.w     d0,-(a7)
[000486f4] 3f00                      move.w     d0,-(a7)
[000486f6] 3f2f 0030                 move.w     48(a7),-(a7)
[000486fa] 3f2f 0034                 move.w     52(a7),-(a7)
[000486fe] 3f00                      move.w     d0,-(a7)
[00048700] 3f2f 0034                 move.w     52(a7),-(a7)
[00048704] 43ef 003a                 lea.l      58(a7),a1
[00048708] 91c8                      suba.l     a0,a0
[0004870a] 3400                      move.w     d0,d2
[0004870c] 3200                      move.w     d0,d1
[0004870e] 7006                      moveq.l    #6,d0
[00048710] 4eb9 0006 af70            jsr        mt_evnt_multi
[00048716] 4fef 0032                 lea.l      50(a7),a7
[0004871a] 3c00                      move.w     d0,d6
[0004871c] 7002                      moveq.l    #2,d0
[0004871e] 4eb9 0005 1e1c            jsr        Awi_update
[00048724] 3f2f 0006                 move.w     6(a7),-(a7)
[00048728] 342f 000a                 move.w     10(a7),d2
[0004872c] 7201                      moveq.l    #1,d1
[0004872e] 3003                      move.w     d3,d0
[00048730] 204c                      movea.l    a4,a0
[00048732] 4eb9 0004 5468            jsr        Adr_find
[00048738] 544f                      addq.w     #2,a7
[0004873a] 3680                      move.w     d0,(a3)
[0004873c] b640                      cmp.w      d0,d3
[0004873e] 6604                      bne.s      Ame_menu_5
[00048740] 36bc ffff                 move.w     #$FFFF,(a3)
Ame_menu_5:
[00048744] b853                      cmp.w      (a3),d4
[00048746] 6700 00f4                 beq        Ame_menu_6
[0004874a] 2279 000d 99d6            movea.l    _globl,a1
[00048750] 91c8                      suba.l     a0,a0
[00048752] 303c 0100                 move.w     #$0100,d0
[00048756] 4eb9 0006 c914            jsr        mt_graf_mouse
[0004875c] 4a45                      tst.w      d5
[0004875e] 6744                      beq.s      Ame_menu_7
[00048760] 3204                      move.w     d4,d1
[00048762] 48c1                      ext.l      d1
[00048764] 2001                      move.l     d1,d0
[00048766] d080                      add.l      d0,d0
[00048768] d081                      add.l      d1,d0
[0004876a] e788                      lsl.l      #3,d0
[0004876c] 0074 0001 080a            ori.w      #$0001,10(a4,d0.l)
[00048772] 7401                      moveq.l    #1,d2
[00048774] 3f02                      move.w     d2,-(a7)
[00048776] 3234 080a                 move.w     10(a4,d0.l),d1
[0004877a] c27c fffe                 and.w      #$FFFE,d1
[0004877e] 3f01                      move.w     d1,-(a7)
[00048780] 3f2a 0006                 move.w     6(a2),-(a7)
[00048784] 3f2a 0004                 move.w     4(a2),-(a7)
[00048788] 3f2a 0002                 move.w     2(a2),-(a7)
[0004878c] 2279 000d 99d6            movea.l    _globl,a1
[00048792] 204c                      movea.l    a4,a0
[00048794] 3004                      move.w     d4,d0
[00048796] 4241                      clr.w      d1
[00048798] 3412                      move.w     (a2),d2
[0004879a] 4eb9 0006 bc5c            jsr        mt_objc_change
[000487a0] 4fef 000a                 lea.l      10(a7),a7
Ame_menu_7:
[000487a4] 3013                      move.w     (a3),d0
[000487a6] 6b00 007e                 bmi.w      Ame_menu_8
[000487aa] 7208                      moveq.l    #8,d1
[000487ac] 48c0                      ext.l      d0
[000487ae] 2400                      move.l     d0,d2
[000487b0] d482                      add.l      d2,d2
[000487b2] d480                      add.l      d0,d2
[000487b4] e78a                      lsl.l      #3,d2
[000487b6] c274 280a                 and.w      10(a4,d2.l),d1
[000487ba] 666a                      bne.s      Ame_menu_8
[000487bc] 224c                      movea.l    a4,a1
[000487be] 204a                      movea.l    a2,a0
[000487c0] 3013                      move.w     (a3),d0
[000487c2] 4eb9 0004 a3be            jsr        Aob_offset
[000487c8] 7001                      moveq.l    #1,d0
[000487ca] 3f00                      move.w     d0,-(a7)
[000487cc] 7201                      moveq.l    #1,d1
[000487ce] 3013                      move.w     (a3),d0
[000487d0] 48c0                      ext.l      d0
[000487d2] 2400                      move.l     d0,d2
[000487d4] d482                      add.l      d2,d2
[000487d6] d480                      add.l      d0,d2
[000487d8] e78a                      lsl.l      #3,d2
[000487da] 8274 280a                 or.w       10(a4,d2.l),d1
[000487de] 3f01                      move.w     d1,-(a7)
[000487e0] 3f2a 0006                 move.w     6(a2),-(a7)
[000487e4] 3f2a 0004                 move.w     4(a2),-(a7)
[000487e8] 3f2a 0002                 move.w     2(a2),-(a7)
[000487ec] 2279 000d 99d6            movea.l    _globl,a1
[000487f2] 204c                      movea.l    a4,a0
[000487f4] 3013                      move.w     (a3),d0
[000487f6] 4241                      clr.w      d1
[000487f8] 3412                      move.w     (a2),d2
[000487fa] 4eb9 0006 bc5c            jsr        mt_objc_change
[00048800] 4fef 000a                 lea.l      10(a7),a7
[00048804] 3213                      move.w     (a3),d1
[00048806] 48c1                      ext.l      d1
[00048808] 2001                      move.l     d1,d0
[0004880a] d080                      add.l      d0,d0
[0004880c] d081                      add.l      d1,d0
[0004880e] e788                      lsl.l      #3,d0
[00048810] 0274 fffe 080a            andi.w     #$FFFE,10(a4,d0.l)
[00048816] 7a01                      moveq.l    #1,d5
[00048818] 224b                      movea.l    a3,a1
[0004881a] 7020                      moveq.l    #32,d0
[0004881c] 204d                      movea.l    a5,a0
[0004881e] 2c6d 0004                 movea.l    4(a5),a6
[00048822] 4e96                      jsr        (a6)
[00048824] 6002                      bra.s      Ame_menu_9
Ame_menu_8:
[00048826] 4245                      clr.w      d5
Ame_menu_9:
[00048828] 2279 000d 99d6            movea.l    _globl,a1
[0004882e] 91c8                      suba.l     a0,a0
[00048830] 303c 0101                 move.w     #$0101,d0
[00048834] 4eb9 0006 c914            jsr        mt_graf_mouse
[0004883a] 3813                      move.w     (a3),d4
Ame_menu_6:
[0004883c] 3013                      move.w     (a3),d0
[0004883e] 6a00 00ce                 bpl        Ame_menu_10
[00048842] 3f2f 0006                 move.w     6(a7),-(a7)
[00048846] 342f 000a                 move.w     10(a7),d2
[0004884a] 7208                      moveq.l    #8,d1
[0004884c] 302c 0002                 move.w     2(a4),d0
[00048850] 204c                      movea.l    a4,a0
[00048852] 4eb9 0004 5468            jsr        Adr_find
[00048858] 544f                      addq.w     #2,a7
[0004885a] 3680                      move.w     d0,(a3)
[0004885c] 4a40                      tst.w      d0
[0004885e] 6b00 00ae                 bmi        Ame_menu_10
[00048862] 2f39 000d 99d6            move.l     _globl,-(a7)
[00048868] 486f 0004                 pea.l      4(a7)
[0004886c] 486f 000c                 pea.l      12(a7)
[00048870] 43ef 0012                 lea.l      18(a7),a1
[00048874] 41ef 0014                 lea.l      20(a7),a0
[00048878] 4eb9 0006 c978            jsr        mt_graf_mkstate
[0004887e] 4fef 000c                 lea.l      12(a7),a7
[00048882] 7001                      moveq.l    #1,d0
[00048884] 322f 0004                 move.w     4(a7),d1
[00048888] b340                      eor.w      d1,d0
[0004888a] c07c 0001                 and.w      #$0001,d0
[0004888e] 3f40 0004                 move.w     d0,4(a7)
[00048892] 3213                      move.w     (a3),d1
[00048894] b26f 0020                 cmp.w      32(a7),d1
[00048898] 6774                      beq.s      Ame_menu_10
[0004889a] 48c1                      ext.l      d1
[0004889c] 2401                      move.l     d1,d2
[0004889e] d482                      add.l      d2,d2
[000488a0] d481                      add.l      d1,d2
[000488a2] e78a                      lsl.l      #3,d2
[000488a4] 0c34 0020 2807            cmpi.b     #$20,7(a4,d2.l)
[000488aa] 6662                      bne.s      Ame_menu_10
[000488ac] 43ef 0014                 lea.l      20(a7),a1
[000488b0] 206f 001c                 movea.l    28(a7),a0
[000488b4] 4eb9 0004 a64c            jsr        Aob_restore
[000488ba] 3203                      move.w     d3,d1
[000488bc] 48c1                      ext.l      d1
[000488be] 2001                      move.l     d1,d0
[000488c0] d080                      add.l      d0,d0
[000488c2] d081                      add.l      d1,d0
[000488c4] e788                      lsl.l      #3,d0
[000488c6] 39af 0002 0810            move.w     2(a7),16(a4,d0.l)
[000488cc] 3987 0812                 move.w     d7,18(a4,d0.l)
[000488d0] 224c                      movea.l    a4,a1
[000488d2] 204d                      movea.l    a5,a0
[000488d4] 302f 0020                 move.w     32(a7),d0
[000488d8] 4241                      clr.w      d1
[000488da] 6100 fc32                 bsr        Ame_tnormal
[000488de] 3f53 0020                 move.w     (a3),32(a7)
[000488e2] 302f 0020                 move.w     32(a7),d0
[000488e6] 204c                      movea.l    a4,a0
[000488e8] 6100 fbbc                 bsr        Ame_titmenu
[000488ec] 3600                      move.w     d0,d3
[000488ee] 7201                      moveq.l    #1,d1
[000488f0] 224c                      movea.l    a4,a1
[000488f2] 204d                      movea.l    a5,a0
[000488f4] 302f 0020                 move.w     32(a7),d0
[000488f8] 6100 fc14                 bsr        Ame_tnormal
[000488fc] 43ef 0020                 lea.l      32(a7),a1
[00048900] 7020                      moveq.l    #32,d0
[00048902] 204d                      movea.l    a5,a0
[00048904] 2c6d 0004                 movea.l    4(a5),a6
[00048908] 4e96                      jsr        (a6)
[0004890a] 6000 fcc8                 bra        Ame_menu_11
Ame_menu_10:
[0004890e] 3013                      move.w     (a3),d0
[00048910] b06f 0020                 cmp.w      32(a7),d0
[00048914] 6700 fdac                 beq        Ame_menu_12
[00048918] 7202                      moveq.l    #2,d1
[0004891a] c246                      and.w      d6,d1
[0004891c] 6700 fda4                 beq        Ame_menu_12
[00048920] 43ef 0014                 lea.l      20(a7),a1
[00048924] 206f 001c                 movea.l    28(a7),a0
[00048928] 4eb9 0004 a64c            jsr        Aob_restore
[0004892e] 3203                      move.w     d3,d1
[00048930] 48c1                      ext.l      d1
[00048932] 2001                      move.l     d1,d0
[00048934] d080                      add.l      d0,d0
[00048936] d081                      add.l      d1,d0
[00048938] e788                      lsl.l      #3,d0
[0004893a] 39af 0002 0810            move.w     2(a7),16(a4,d0.l)
[00048940] 3987 0812                 move.w     d7,18(a4,d0.l)
[00048944] 4eb9 0004 ad60            jsr        Aev_release
[0004894a] 3013                      move.w     (a3),d0
[0004894c] 6f36                      ble.s      Ame_menu_13
[0004894e] b06c 0002                 cmp.w      2(a4),d0
[00048952] 6730                      beq.s      Ame_menu_13
[00048954] b06c 0004                 cmp.w      4(a4),d0
[00048958] 672a                      beq.s      Ame_menu_13
[0004895a] 342c 0002                 move.w     2(a4),d2
[0004895e] 48c2                      ext.l      d2
[00048960] 2202                      move.l     d2,d1
[00048962] d281                      add.l      d1,d1
[00048964] d282                      add.l      d2,d1
[00048966] e789                      lsl.l      #3,d1
[00048968] b074 1802                 cmp.w      2(a4,d1.l),d0
[0004896c] 6716                      beq.s      Ame_menu_13
[0004896e] 4eb9 0004 9902            jsr        Amo_busy
[00048974] 3013                      move.w     (a3),d0
[00048976] 224c                      movea.l    a4,a1
[00048978] 204d                      movea.l    a5,a0
[0004897a] 6100 face                 bsr        call_click
[0004897e] 4eb9 0004 9940            jsr        Amo_unbusy
Ame_menu_13:
[00048984] 4241                      clr.w      d1
[00048986] 302f 0020                 move.w     32(a7),d0
[0004898a] 224c                      movea.l    a4,a1
[0004898c] 204d                      movea.l    a5,a0
[0004898e] 6100 fb7e                 bsr        Ame_tnormal
[00048992] 93c9                      suba.l     a1,a1
[00048994] 7021                      moveq.l    #33,d0
[00048996] 204d                      movea.l    a5,a0
[00048998] 246d 0004                 movea.l    4(a5),a2
[0004899c] 4e92                      jsr        (a2)
[0004899e] 4fef 0022                 lea.l      34(a7),a7
[000489a2] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[000489a6] 4e75                      rts

Ame_submenu:
[000489a8] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[000489ac] 4fef ffc6                 lea.l      -58(a7),a7
[000489b0] 2848                      movea.l    a0,a4
[000489b2] 3f40 0038                 move.w     d0,56(a7)
[000489b6] 43f9 000d 3cfa            lea.l      $000D3CFA,a1
[000489bc] 41ef 0024                 lea.l      36(a7),a0
[000489c0] 20d9                      move.l     (a1)+,(a0)+
[000489c2] 20d9                      move.l     (a1)+,(a0)+
[000489c4] 3f7c 0001 0004            move.w     #$0001,4(a7)
[000489ca] 47ef 001a                 lea.l      26(a7),a3
[000489ce] 36bc ffff                 move.w     #$FFFF,(a3)
[000489d2] 426f 0012                 clr.w      18(a7)
[000489d6] 322f 0038                 move.w     56(a7),d1
[000489da] 48c1                      ext.l      d1
[000489dc] 2001                      move.l     d1,d0
[000489de] d080                      add.l      d0,d0
[000489e0] d081                      add.l      d1,d0
[000489e2] e788                      lsl.l      #3,d0
[000489e4] 3c34 0802                 move.w     2(a4,d0.l),d6
[000489e8] 4a46                      tst.w      d6
[000489ea] 6b76                      bmi.s      Ame_submenu_1
[000489ec] 6010                      bra.s      Ame_submenu_2
Ame_submenu_4:
[000489ee] 3206                      move.w     d6,d1
[000489f0] 48c1                      ext.l      d1
[000489f2] 2001                      move.l     d1,d0
[000489f4] d080                      add.l      d0,d0
[000489f6] d081                      add.l      d1,d0
[000489f8] e788                      lsl.l      #3,d0
[000489fa] 3c34 0800                 move.w     0(a4,d0.l),d6
Ame_submenu_2:
[000489fe] bc6f 0038                 cmp.w      56(a7),d6
[00048a02] 6714                      beq.s      Ame_submenu_3
[00048a04] 7004                      moveq.l    #4,d0
[00048a06] 3406                      move.w     d6,d2
[00048a08] 48c2                      ext.l      d2
[00048a0a] 2202                      move.l     d2,d1
[00048a0c] d281                      add.l      d1,d1
[00048a0e] d282                      add.l      d2,d1
[00048a10] e789                      lsl.l      #3,d1
[00048a12] c074 180a                 and.w      10(a4,d1.l),d0
[00048a16] 67d6                      beq.s      Ame_submenu_4
Ame_submenu_3:
[00048a18] bc6f 0038                 cmp.w      56(a7),d6
[00048a1c] 6744                      beq.s      Ame_submenu_1
[00048a1e] 3206                      move.w     d6,d1
[00048a20] 48c1                      ext.l      d1
[00048a22] 2001                      move.l     d1,d0
[00048a24] d080                      add.l      d0,d0
[00048a26] d081                      add.l      d1,d0
[00048a28] e788                      lsl.l      #3,d0
[00048a2a] 3434 0810                 move.w     16(a4,d0.l),d2
[00048a2e] 322f 0038                 move.w     56(a7),d1
[00048a32] 48c1                      ext.l      d1
[00048a34] 2001                      move.l     d1,d0
[00048a36] d080                      add.l      d0,d0
[00048a38] d081                      add.l      d1,d0
[00048a3a] e788                      lsl.l      #3,d0
[00048a3c] 9574 0810                 sub.w      d2,16(a4,d0.l)
[00048a40] 3006                      move.w     d6,d0
[00048a42] 48c0                      ext.l      d0
[00048a44] 2400                      move.l     d0,d2
[00048a46] d482                      add.l      d2,d2
[00048a48] d480                      add.l      d0,d2
[00048a4a] e78a                      lsl.l      #3,d2
[00048a4c] 3234 2812                 move.w     18(a4,d2.l),d1
[00048a50] 302f 0038                 move.w     56(a7),d0
[00048a54] 48c0                      ext.l      d0
[00048a56] 2400                      move.l     d0,d2
[00048a58] d482                      add.l      d2,d2
[00048a5a] d480                      add.l      d0,d2
[00048a5c] e78a                      lsl.l      #3,d2
[00048a5e] 9374 2812                 sub.w      d1,18(a4,d2.l)
Ame_submenu_1:
[00048a62] 302f 0038                 move.w     56(a7),d0
[00048a66] 224c                      movea.l    a4,a1
[00048a68] 41ef 002c                 lea.l      44(a7),a0
[00048a6c] 4eb9 0004 a3be            jsr        Aob_offset
[00048a72] 2079 0010 1f12            movea.l    ACSblk,a0
[00048a78] 302f 002c                 move.w     44(a7),d0
[00048a7c] b068 0008                 cmp.w      8(a0),d0
[00048a80] 6c20                      bge.s      Ame_submenu_5
[00048a82] 342f 0038                 move.w     56(a7),d2
[00048a86] 48c2                      ext.l      d2
[00048a88] 2202                      move.l     d2,d1
[00048a8a] d281                      add.l      d1,d1
[00048a8c] d282                      add.l      d2,d1
[00048a8e] e789                      lsl.l      #3,d1
[00048a90] 39a8 0008 1810            move.w     8(a0),16(a4,d1.l)
[00048a96] 2079 0010 1f12            movea.l    ACSblk,a0
[00048a9c] 3f68 0008 002c            move.w     8(a0),44(a7)
Ame_submenu_5:
[00048aa2] 2079 0010 1f12            movea.l    ACSblk,a0
[00048aa8] 302f 002e                 move.w     46(a7),d0
[00048aac] b068 000a                 cmp.w      10(a0),d0
[00048ab0] 6c20                      bge.s      Ame_submenu_6
[00048ab2] 342f 0038                 move.w     56(a7),d2
[00048ab6] 48c2                      ext.l      d2
[00048ab8] 2202                      move.l     d2,d1
[00048aba] d281                      add.l      d1,d1
[00048abc] d282                      add.l      d2,d1
[00048abe] e789                      lsl.l      #3,d1
[00048ac0] 39a8 000a 1812            move.w     10(a0),18(a4,d1.l)
[00048ac6] 2079 0010 1f12            movea.l    ACSblk,a0
[00048acc] 3f68 000a 002e            move.w     10(a0),46(a7)
Ame_submenu_6:
[00048ad2] 302f 002c                 move.w     44(a7),d0
[00048ad6] d06f 0030                 add.w      48(a7),d0
[00048ada] 2079 0010 1f12            movea.l    ACSblk,a0
[00048ae0] 9068 0008                 sub.w      8(a0),d0
[00048ae4] 9068 000c                 sub.w      12(a0),d0
[00048ae8] 3f40 0002                 move.w     d0,2(a7)
[00048aec] 4a40                      tst.w      d0
[00048aee] 6f16                      ble.s      Ame_submenu_7
[00048af0] 342f 0038                 move.w     56(a7),d2
[00048af4] 48c2                      ext.l      d2
[00048af6] 2202                      move.l     d2,d1
[00048af8] d281                      add.l      d1,d1
[00048afa] d282                      add.l      d2,d1
[00048afc] e789                      lsl.l      #3,d1
[00048afe] 9174 1810                 sub.w      d0,16(a4,d1.l)
[00048b02] 916f 002c                 sub.w      d0,44(a7)
Ame_submenu_7:
[00048b06] 302f 002e                 move.w     46(a7),d0
[00048b0a] d06f 0032                 add.w      50(a7),d0
[00048b0e] 2079 0010 1f12            movea.l    ACSblk,a0
[00048b14] 9068 000a                 sub.w      10(a0),d0
[00048b18] 9068 000e                 sub.w      14(a0),d0
[00048b1c] 3f40 0002                 move.w     d0,2(a7)
[00048b20] 4a40                      tst.w      d0
[00048b22] 6f16                      ble.s      Ame_submenu_8
[00048b24] 342f 0038                 move.w     56(a7),d2
[00048b28] 48c2                      ext.l      d2
[00048b2a] 2202                      move.l     d2,d1
[00048b2c] d281                      add.l      d1,d1
[00048b2e] d282                      add.l      d2,d1
[00048b30] e789                      lsl.l      #3,d1
[00048b32] 9174 1812                 sub.w      d0,18(a4,d1.l)
[00048b36] 916f 002e                 sub.w      d0,46(a7)
Ame_submenu_8:
[00048b3a] 41ef 002c                 lea.l      44(a7),a0
[00048b3e] 4eb9 0004 a548            jsr        Aob_save
[00048b44] 2f48 0034                 move.l     a0,52(a7)
[00048b48] 4eb9 0004 9970            jsr        Amo_hide
[00048b4e] 3f2f 0032                 move.w     50(a7),-(a7)
[00048b52] 3f2f 0032                 move.w     50(a7),-(a7)
[00048b56] 3f2f 0032                 move.w     50(a7),-(a7)
[00048b5a] 2279 000d 99d6            movea.l    _globl,a1
[00048b60] 342f 0032                 move.w     50(a7),d2
[00048b64] 7206                      moveq.l    #6,d1
[00048b66] 302f 003e                 move.w     62(a7),d0
[00048b6a] 204c                      movea.l    a4,a0
[00048b6c] 4eb9 0006 b93c            jsr        mt_objc_draw
[00048b72] 5c4f                      addq.w     #6,a7
[00048b74] 4eb9 0004 9994            jsr        Amo_show
[00048b7a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00048b80] 486f 0004                 pea.l      4(a7)
[00048b84] 486f 0010                 pea.l      16(a7)
[00048b88] 43ef 0018                 lea.l      24(a7),a1
[00048b8c] 41ef 001a                 lea.l      26(a7),a0
[00048b90] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00048b96] 4fef 000c                 lea.l      12(a7),a7
[00048b9a] 526f 000e                 addq.w     #1,14(a7)
[00048b9e] 45ef 0016                 lea.l      22(a7),a2
[00048ba2] 7001                      moveq.l    #1,d0
[00048ba4] c06f 0008                 and.w      8(a7),d0
[00048ba8] 670a                      beq.s      Ame_submenu_9
[00048baa] 3f7c 0001 0006            move.w     #$0001,6(a7)
[00048bb0] 6000 08b6                 bra        Ame_submenu_10
Ame_submenu_9:
[00048bb4] 426f 0006                 clr.w      6(a7)
[00048bb8] 6000 08ae                 bra        Ame_submenu_10
Ame_submenu_72:
[00048bbc] 7003                      moveq.l    #3,d0
[00048bbe] 4eb9 0005 1e1c            jsr        Awi_update
[00048bc4] 2f39 000d 99d6            move.l     _globl,-(a7)
[00048bca] 486f 0004                 pea.l      4(a7)
[00048bce] 486f 0012                 pea.l      18(a7)
[00048bd2] 486f 0014                 pea.l      20(a7)
[00048bd6] 486f 0010                 pea.l      16(a7)
[00048bda] 486f 0020                 pea.l      32(a7)
[00048bde] 42a7                      clr.l      -(a7)
[00048be0] 4267                      clr.w      -(a7)
[00048be2] 4267                      clr.w      -(a7)
[00048be4] 4267                      clr.w      -(a7)
[00048be6] 4267                      clr.w      -(a7)
[00048be8] 4267                      clr.w      -(a7)
[00048bea] 7001                      moveq.l    #1,d0
[00048bec] 3f00                      move.w     d0,-(a7)
[00048bee] 3f00                      move.w     d0,-(a7)
[00048bf0] 3f2f 0036                 move.w     54(a7),-(a7)
[00048bf4] 3f2f 003a                 move.w     58(a7),-(a7)
[00048bf8] 3f00                      move.w     d0,-(a7)
[00048bfa] 3f2f 0036                 move.w     54(a7),-(a7)
[00048bfe] 43ef 0040                 lea.l      64(a7),a1
[00048c02] 91c8                      suba.l     a0,a0
[00048c04] 3400                      move.w     d0,d2
[00048c06] 2a79 0010 1f12            movea.l    ACSblk,a5
[00048c0c] 322d 02d0                 move.w     720(a5),d1
[00048c10] 7007                      moveq.l    #7,d0
[00048c12] 4eb9 0006 af70            jsr        mt_evnt_multi
[00048c18] 4fef 0032                 lea.l      50(a7),a7
[00048c1c] 3f40 0010                 move.w     d0,16(a7)
[00048c20] 7002                      moveq.l    #2,d0
[00048c22] 4eb9 0005 1e1c            jsr        Awi_update
[00048c28] 7001                      moveq.l    #1,d0
[00048c2a] c06f 0010                 and.w      16(a7),d0
[00048c2e] 6700 056e                 beq        Ame_submenu_11
[00048c32] 322f 0008                 move.w     8(a7),d1
[00048c36] 302f 000a                 move.w     10(a7),d0
[00048c3a] 4eb9 0004 1e3e            jsr        nkc_gemks2n
[00048c40] 3f40 000a                 move.w     d0,10(a7)
[00048c44] 7cfe                      moveq.l    #-2,d6
[00048c46] 322f 000a                 move.w     10(a7),d1
[00048c4a] c27c 8000                 and.w      #$8000,d1
[00048c4e] 6700 054e                 beq        Ame_submenu_11
[00048c52] 142f 000b                 move.b     11(a7),d2
[00048c56] 4882                      ext.w      d2
[00048c58] b47c 001b                 cmp.w      #$001B,d2
[00048c5c] 6200 0526                 bhi        Ame_submenu_12
[00048c60] d442                      add.w      d2,d2
[00048c62] 343b 2006                 move.w     $00048C6A(pc,d2.w),d2
[00048c66] 4efb 2002                 jmp        $00048C6A(pc,d2.w)
J34:
[00048c6a] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c6c] 018c                      dc.w $018c   ; Ame_submenu_13-J34
[00048c6e] 018c                      dc.w $018c   ; Ame_submenu_13-J34
[00048c70] 018c                      dc.w $018c   ; Ame_submenu_13-J34
[00048c72] 018c                      dc.w $018c   ; Ame_submenu_13-J34
[00048c74] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c76] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c78] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c7a] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c7c] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c7e] 003e                      dc.w $003e   ; Ame_submenu_14-J34
[00048c80] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c82] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c84] 003e                      dc.w $003e   ; Ame_submenu_14-J34
[00048c86] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c88] 0140                      dc.w $0140   ; Ame_submenu_15-J34
[00048c8a] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c8c] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c8e] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c90] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c92] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c94] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c96] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c98] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c9a] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c9c] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048c9e] 051a                      dc.w $051a   ; Ame_submenu_12-J34
[00048ca0] 0038                      dc.w $0038   ; Ame_submenu_16-J34
Ame_submenu_16:
[00048ca2] 7cff                      moveq.l    #-1,d6
[00048ca4] 6000 0148                 bra        Ame_submenu_17
Ame_submenu_14:
[00048ca8] 3013                      move.w     (a3),d0
[00048caa] 6b00 04f2                 bmi        Ame_submenu_11
[00048cae] 322f 0012                 move.w     18(a7),d1
[00048cb2] 6700 00ea                 beq        Ame_submenu_18
[00048cb6] 48c0                      ext.l      d0
[00048cb8] 2400                      move.l     d0,d2
[00048cba] d482                      add.l      d2,d2
[00048cbc] d480                      add.l      d0,d2
[00048cbe] e78a                      lsl.l      #3,d2
[00048cc0] 3234 2802                 move.w     2(a4,d2.l),d1
[00048cc4] 6f00 00d8                 ble        Ame_submenu_18
[00048cc8] 3f41 0018                 move.w     d1,24(a7)
[00048ccc] 4a41                      tst.w      d1
[00048cce] 6b00 04ce                 bmi        Ame_submenu_11
[00048cd2] b274 2804                 cmp.w      4(a4,d2.l),d1
[00048cd6] 6600 04c6                 bne        Ame_submenu_11
[00048cda] 7001                      moveq.l    #1,d0
[00048cdc] d06f 0026                 add.w      38(a7),d0
[00048ce0] 3f00                      move.w     d0,-(a7)
[00048ce2] 342f 0026                 move.w     38(a7),d2
[00048ce6] d46f 002a                 add.w      42(a7),d2
[00048cea] 5542                      subq.w     #2,d2
[00048cec] 204c                      movea.l    a4,a0
[00048cee] 302f 003a                 move.w     58(a7),d0
[00048cf2] 7201                      moveq.l    #1,d1
[00048cf4] 4eb9 0004 5468            jsr        Adr_find
[00048cfa] 544f                      addq.w     #2,a7
[00048cfc] 3213                      move.w     (a3),d1
[00048cfe] b240                      cmp.w      d0,d1
[00048d00] 6600 049c                 bne        Ame_submenu_11
[00048d04] 342f 0018                 move.w     24(a7),d2
[00048d08] 48c2                      ext.l      d2
[00048d0a] 2002                      move.l     d2,d0
[00048d0c] d080                      add.l      d0,d0
[00048d0e] d082                      add.l      d2,d0
[00048d10] e788                      lsl.l      #3,d0
[00048d12] 0274 ff7f 0808            andi.w     #$FF7F,8(a4,d0.l)
[00048d18] 3013                      move.w     (a3),d0
[00048d1a] 48c0                      ext.l      d0
[00048d1c] 2200                      move.l     d0,d1
[00048d1e] d281                      add.l      d1,d1
[00048d20] d280                      add.l      d0,d1
[00048d22] e789                      lsl.l      #3,d1
[00048d24] 3434 1814                 move.w     20(a4,d1.l),d2
[00048d28] e242                      asr.w      #1,d2
[00048d2a] 302f 0018                 move.w     24(a7),d0
[00048d2e] 48c0                      ext.l      d0
[00048d30] 2200                      move.l     d0,d1
[00048d32] d281                      add.l      d1,d1
[00048d34] d280                      add.l      d0,d1
[00048d36] e789                      lsl.l      #3,d1
[00048d38] 3982 1810                 move.w     d2,16(a4,d1.l)
[00048d3c] 4274 1812                 clr.w      18(a4,d1.l)
[00048d40] 204c                      movea.l    a4,a0
[00048d42] 302f 0018                 move.w     24(a7),d0
[00048d46] 6100 fc60                 bsr        Ame_submenu
[00048d4a] 3480                      move.w     d0,(a2)
[00048d4c] 342f 0018                 move.w     24(a7),d2
[00048d50] 48c2                      ext.l      d2
[00048d52] 2202                      move.l     d2,d1
[00048d54] d281                      add.l      d1,d1
[00048d56] d282                      add.l      d2,d1
[00048d58] e789                      lsl.l      #3,d1
[00048d5a] 0074 0080 1808            ori.w      #$0080,8(a4,d1.l)
[00048d60] 3012                      move.w     (a2),d0
[00048d62] 6b3c                      bmi.s      Ame_submenu_19
[00048d64] 306f 0038                 movea.w    56(a7),a0
[00048d68] b0c0                      cmpa.w     d0,a0
[00048d6a] 6710                      beq.s      Ame_submenu_20
[00048d6c] 204c                      movea.l    a4,a0
[00048d6e] 4eb9 0004 af6c            jsr        Aob_up
[00048d74] 322f 0038                 move.w     56(a7),d1
[00048d78] b240                      cmp.w      d0,d1
[00048d7a] 6624                      bne.s      Ame_submenu_19
Ame_submenu_20:
[00048d7c] 224a                      movea.l    a2,a1
[00048d7e] 7018                      moveq.l    #24,d0
[00048d80] 2079 0010 1f12            movea.l    ACSblk,a0
[00048d86] 2068 0258                 movea.l    600(a0),a0
[00048d8a] 2a79 0010 1f12            movea.l    ACSblk,a5
[00048d90] 2a6d 0258                 movea.l    600(a5),a5
[00048d94] 2a6d 0004                 movea.l    4(a5),a5
[00048d98] 4e95                      jsr        (a5)
[00048d9a] 6000 0402                 bra        Ame_submenu_11
Ame_submenu_18:
[00048d9e] 3493                      move.w     (a3),(a2)
Ame_submenu_19:
[00048da0] 426f 0004                 clr.w      4(a7)
[00048da4] 7cfe                      moveq.l    #-2,d6
[00048da6] 6000 03f6                 bra        Ame_submenu_11
Ame_submenu_15:
[00048daa] 302f 0038                 move.w     56(a7),d0
[00048dae] 673e                      beq.s      Ame_submenu_17
[00048db0] 48c0                      ext.l      d0
[00048db2] 2200                      move.l     d0,d1
[00048db4] d281                      add.l      d1,d1
[00048db6] d280                      add.l      d0,d1
[00048db8] e789                      lsl.l      #3,d1
[00048dba] 3434 1800                 move.w     0(a4,d1.l),d2
[00048dbe] 6f2e                      ble.s      Ame_submenu_17
[00048dc0] 3f42 0014                 move.w     d2,20(a7)
[00048dc4] 3482                      move.w     d2,(a2)
[00048dc6] 224c                      movea.l    a4,a1
[00048dc8] 41ef 0024                 lea.l      36(a7),a0
[00048dcc] 302f 0014                 move.w     20(a7),d0
[00048dd0] 4eb9 0004 a3be            jsr        Aob_offset
[00048dd6] 7001                      moveq.l    #1,d0
[00048dd8] d06f 0024                 add.w      36(a7),d0
[00048ddc] 3f40 000e                 move.w     d0,14(a7)
[00048de0] 7201                      moveq.l    #1,d1
[00048de2] d26f 0026                 add.w      38(a7),d1
[00048de6] 3f41 000c                 move.w     d1,12(a7)
[00048dea] 6000 03ae                 bra        Ame_submenu_21
Ame_submenu_17:
[00048dee] 34bc ffff                 move.w     #$FFFF,(a2)
[00048df2] 6000 03a6                 bra        Ame_submenu_21
Ame_submenu_13:
[00048df6] 3013                      move.w     (a3),d0
[00048df8] 6a00 011a                 bpl        Ame_submenu_22
[00048dfc] 0c2f 0003 000b            cmpi.b     #$03,11(a7)
[00048e02] 6708                      beq.s      Ame_submenu_23
[00048e04] 0c2f 0002 000b            cmpi.b     #$02,11(a7)
[00048e0a] 6606                      bne.s      Ame_submenu_24
Ame_submenu_23:
[00048e0c] 363c 7fff                 move.w     #$7FFF,d3
[00048e10] 3e03                      move.w     d3,d7
Ame_submenu_24:
[00048e12] 0c2f 0004 000b            cmpi.b     #$04,11(a7)
[00048e18] 6708                      beq.s      Ame_submenu_25
[00048e1a] 0c2f 0001 000b            cmpi.b     #$01,11(a7)
[00048e20] 6604                      bne.s      Ame_submenu_26
Ame_submenu_25:
[00048e22] 4243                      clr.w      d3
[00048e24] 3e03                      move.w     d3,d7
Ame_submenu_26:
[00048e26] 3eaf 0038                 move.w     56(a7),(a7)
[00048e2a] 6010                      bra.s      Ame_submenu_27
Ame_submenu_29:
[00048e2c] 3217                      move.w     (a7),d1
[00048e2e] 48c1                      ext.l      d1
[00048e30] 2001                      move.l     d1,d0
[00048e32] d080                      add.l      d0,d0
[00048e34] d081                      add.l      d1,d0
[00048e36] e788                      lsl.l      #3,d0
[00048e38] 3eb4 0802                 move.w     2(a4,d0.l),(a7)
Ame_submenu_27:
[00048e3c] 3217                      move.w     (a7),d1
[00048e3e] 48c1                      ext.l      d1
[00048e40] 2001                      move.l     d1,d0
[00048e42] d080                      add.l      d0,d0
[00048e44] d081                      add.l      d1,d0
[00048e46] e788                      lsl.l      #3,d0
[00048e48] 3434 0802                 move.w     2(a4,d0.l),d2
[00048e4c] 6b14                      bmi.s      Ame_submenu_28
[00048e4e] 303c 0080                 move.w     #$0080,d0
[00048e52] 48c2                      ext.l      d2
[00048e54] 2202                      move.l     d2,d1
[00048e56] d281                      add.l      d1,d1
[00048e58] d282                      add.l      d2,d1
[00048e5a] e789                      lsl.l      #3,d1
[00048e5c] c074 1808                 and.w      8(a4,d1.l),d0
[00048e60] 67ca                      beq.s      Ame_submenu_29
Ame_submenu_28:
[00048e62] 3017                      move.w     (a7),d0
[00048e64] 204c                      movea.l    a4,a0
[00048e66] 4eb9 0004 af6c            jsr        Aob_up
[00048e6c] 3f40 0014                 move.w     d0,20(a7)
[00048e70] 7cfe                      moveq.l    #-2,d6
[00048e72] 6000 0092                 bra        Ame_submenu_30
Ame_submenu_35:
[00048e76] 102f 000b                 move.b     11(a7),d0
[00048e7a] 4880                      ext.w      d0
[00048e7c] 5340                      subq.w     #1,d0
[00048e7e] 6738                      beq.s      Ame_submenu_31
[00048e80] 5340                      subq.w     #1,d0
[00048e82] 670a                      beq.s      Ame_submenu_32
[00048e84] 5340                      subq.w     #1,d0
[00048e86] 6706                      beq.s      Ame_submenu_32
[00048e88] 5340                      subq.w     #1,d0
[00048e8a] 672c                      beq.s      Ame_submenu_31
[00048e8c] 6068                      bra.s      Ame_submenu_33
Ame_submenu_32:
[00048e8e] 7008                      moveq.l    #8,d0
[00048e90] 3417                      move.w     (a7),d2
[00048e92] 48c2                      ext.l      d2
[00048e94] 2202                      move.l     d2,d1
[00048e96] d281                      add.l      d1,d1
[00048e98] d282                      add.l      d2,d1
[00048e9a] e789                      lsl.l      #3,d1
[00048e9c] c074 180a                 and.w      10(a4,d1.l),d0
[00048ea0] 6654                      bne.s      Ame_submenu_33
[00048ea2] 7041                      moveq.l    #65,d0
[00048ea4] c074 1808                 and.w      8(a4,d1.l),d0
[00048ea8] 674c                      beq.s      Ame_submenu_33
[00048eaa] b674 1812                 cmp.w      18(a4,d1.l),d3
[00048eae] 6f46                      ble.s      Ame_submenu_33
[00048eb0] be74 1810                 cmp.w      16(a4,d1.l),d7
[00048eb4] 6f40                      ble.s      Ame_submenu_33
[00048eb6] 6028                      bra.s      Ame_submenu_34
Ame_submenu_31:
[00048eb8] 7008                      moveq.l    #8,d0
[00048eba] 3417                      move.w     (a7),d2
[00048ebc] 48c2                      ext.l      d2
[00048ebe] 2202                      move.l     d2,d1
[00048ec0] d281                      add.l      d1,d1
[00048ec2] d282                      add.l      d2,d1
[00048ec4] e789                      lsl.l      #3,d1
[00048ec6] c074 180a                 and.w      10(a4,d1.l),d0
[00048eca] 662a                      bne.s      Ame_submenu_33
[00048ecc] 7041                      moveq.l    #65,d0
[00048ece] c074 1808                 and.w      8(a4,d1.l),d0
[00048ed2] 6722                      beq.s      Ame_submenu_33
[00048ed4] b674 1812                 cmp.w      18(a4,d1.l),d3
[00048ed8] 6e1c                      bgt.s      Ame_submenu_33
[00048eda] be74 1810                 cmp.w      16(a4,d1.l),d7
[00048ede] 6e16                      bgt.s      Ame_submenu_33
Ame_submenu_34:
[00048ee0] 3217                      move.w     (a7),d1
[00048ee2] 48c1                      ext.l      d1
[00048ee4] 2001                      move.l     d1,d0
[00048ee6] d080                      add.l      d0,d0
[00048ee8] d081                      add.l      d1,d0
[00048eea] e788                      lsl.l      #3,d0
[00048eec] 3634 0812                 move.w     18(a4,d0.l),d3
[00048ef0] 3e34 0810                 move.w     16(a4,d0.l),d7
[00048ef4] 3c17                      move.w     (a7),d6
Ame_submenu_33:
[00048ef6] 3217                      move.w     (a7),d1
[00048ef8] 48c1                      ext.l      d1
[00048efa] 2001                      move.l     d1,d0
[00048efc] d080                      add.l      d0,d0
[00048efe] d081                      add.l      d1,d0
[00048f00] e788                      lsl.l      #3,d0
[00048f02] 3eb4 0800                 move.w     0(a4,d0.l),(a7)
Ame_submenu_30:
[00048f06] 3017                      move.w     (a7),d0
[00048f08] b06f 0014                 cmp.w      20(a7),d0
[00048f0c] 6600 ff68                 bne        Ame_submenu_35
[00048f10] 6000 028c                 bra        Ame_submenu_11
Ame_submenu_22:
[00048f14] 363c 7fff                 move.w     #$7FFF,d3
[00048f18] 3e03                      move.w     d3,d7
[00048f1a] 3013                      move.w     (a3),d0
[00048f1c] 204c                      movea.l    a4,a0
[00048f1e] 4eb9 0004 af6c            jsr        Aob_up
[00048f24] 3f40 0014                 move.w     d0,20(a7)
[00048f28] 3413                      move.w     (a3),d2
[00048f2a] 48c2                      ext.l      d2
[00048f2c] 2202                      move.l     d2,d1
[00048f2e] d281                      add.l      d1,d1
[00048f30] d282                      add.l      d2,d1
[00048f32] e789                      lsl.l      #3,d1
[00048f34] 3034 1800                 move.w     0(a4,d1.l),d0
[00048f38] b06f 0014                 cmp.w      20(a7),d0
[00048f3c] 6614                      bne.s      Ame_submenu_36
[00048f3e] 342f 0014                 move.w     20(a7),d2
[00048f42] 48c2                      ext.l      d2
[00048f44] 2202                      move.l     d2,d1
[00048f46] d281                      add.l      d1,d1
[00048f48] d282                      add.l      d2,d1
[00048f4a] e789                      lsl.l      #3,d1
[00048f4c] 3eb4 1802                 move.w     2(a4,d1.l),(a7)
[00048f50] 6010                      bra.s      Ame_submenu_37
Ame_submenu_36:
[00048f52] 3213                      move.w     (a3),d1
[00048f54] 48c1                      ext.l      d1
[00048f56] 2001                      move.l     d1,d0
[00048f58] d080                      add.l      d0,d0
[00048f5a] d081                      add.l      d1,d0
[00048f5c] e788                      lsl.l      #3,d0
[00048f5e] 3eb4 0800                 move.w     0(a4,d0.l),(a7)
Ame_submenu_37:
[00048f62] 7cfe                      moveq.l    #-2,d6
[00048f64] 6000 0214                 bra        Ame_submenu_38
Ame_submenu_59:
[00048f68] 3217                      move.w     (a7),d1
[00048f6a] 48c1                      ext.l      d1
[00048f6c] 2001                      move.l     d1,d0
[00048f6e] d080                      add.l      d0,d0
[00048f70] d081                      add.l      d1,d0
[00048f72] e788                      lsl.l      #3,d0
[00048f74] 3a34 0810                 move.w     16(a4,d0.l),d5
[00048f78] 3013                      move.w     (a3),d0
[00048f7a] 48c0                      ext.l      d0
[00048f7c] 2400                      move.l     d0,d2
[00048f7e] d482                      add.l      d2,d2
[00048f80] d480                      add.l      d0,d2
[00048f82] e78a                      lsl.l      #3,d2
[00048f84] 9a74 2810                 sub.w      16(a4,d2.l),d5
[00048f88] 4a45                      tst.w      d5
[00048f8a] 6a02                      bpl.s      Ame_submenu_39
[00048f8c] 4445                      neg.w      d5
Ame_submenu_39:
[00048f8e] 3217                      move.w     (a7),d1
[00048f90] 48c1                      ext.l      d1
[00048f92] 2001                      move.l     d1,d0
[00048f94] d080                      add.l      d0,d0
[00048f96] d081                      add.l      d1,d0
[00048f98] e788                      lsl.l      #3,d0
[00048f9a] 3834 0812                 move.w     18(a4,d0.l),d4
[00048f9e] 3013                      move.w     (a3),d0
[00048fa0] 48c0                      ext.l      d0
[00048fa2] 2400                      move.l     d0,d2
[00048fa4] d482                      add.l      d2,d2
[00048fa6] d480                      add.l      d0,d2
[00048fa8] e78a                      lsl.l      #3,d2
[00048faa] 9874 2812                 sub.w      18(a4,d2.l),d4
[00048fae] 4a44                      tst.w      d4
[00048fb0] 6a02                      bpl.s      Ame_submenu_40
[00048fb2] 4444                      neg.w      d4
Ame_submenu_40:
[00048fb4] 7008                      moveq.l    #8,d0
[00048fb6] 3417                      move.w     (a7),d2
[00048fb8] 48c2                      ext.l      d2
[00048fba] 2202                      move.l     d2,d1
[00048fbc] d281                      add.l      d1,d1
[00048fbe] d282                      add.l      d2,d1
[00048fc0] e789                      lsl.l      #3,d1
[00048fc2] c074 180a                 and.w      10(a4,d1.l),d0
[00048fc6] 6600 0178                 bne        Ame_submenu_41
[00048fca] 7041                      moveq.l    #65,d0
[00048fcc] c074 1808                 and.w      8(a4,d1.l),d0
[00048fd0] 6700 016e                 beq        Ame_submenu_41
[00048fd4] 142f 000b                 move.b     11(a7),d2
[00048fd8] 4882                      ext.w      d2
[00048fda] 5342                      subq.w     #1,d2
[00048fdc] 6700 0110                 beq        Ame_submenu_42
[00048fe0] 5342                      subq.w     #1,d2
[00048fe2] 6700 0070                 beq.w      Ame_submenu_43
[00048fe6] 5342                      subq.w     #1,d2
[00048fe8] 670a                      beq.s      Ame_submenu_44
[00048fea] 5342                      subq.w     #1,d2
[00048fec] 6700 00be                 beq        Ame_submenu_45
[00048ff0] 6000 014e                 bra        Ame_submenu_41
Ame_submenu_44:
[00048ff4] 3217                      move.w     (a7),d1
[00048ff6] 48c1                      ext.l      d1
[00048ff8] 2001                      move.l     d1,d0
[00048ffa] d080                      add.l      d0,d0
[00048ffc] d081                      add.l      d1,d0
[00048ffe] e788                      lsl.l      #3,d0
[00049000] 3434 0810                 move.w     16(a4,d0.l),d2
[00049004] 3213                      move.w     (a3),d1
[00049006] 48c1                      ext.l      d1
[00049008] 2001                      move.l     d1,d0
[0004900a] d080                      add.l      d0,d0
[0004900c] d081                      add.l      d1,d0
[0004900e] e788                      lsl.l      #3,d0
[00049010] b474 0810                 cmp.w      16(a4,d0.l),d2
[00049014] 6f00 012a                 ble        Ame_submenu_41
[00049018] 4a43                      tst.w      d3
[0004901a] 6608                      bne.s      Ame_submenu_46
[0004901c] 4a44                      tst.w      d4
[0004901e] 6604                      bne.s      Ame_submenu_46
[00049020] be45                      cmp.w      d5,d7
[00049022] 6e26                      bgt.s      Ame_submenu_47
Ame_submenu_46:
[00049024] 4a44                      tst.w      d4
[00049026] 6604                      bne.s      Ame_submenu_48
[00049028] 4a43                      tst.w      d3
[0004902a] 661e                      bne.s      Ame_submenu_47
Ame_submenu_48:
[0004902c] 4a43                      tst.w      d3
[0004902e] 6708                      beq.s      Ame_submenu_49
[00049030] be45                      cmp.w      d5,d7
[00049032] 6f04                      ble.s      Ame_submenu_49
[00049034] b644                      cmp.w      d4,d3
[00049036] 6c12                      bge.s      Ame_submenu_47
Ame_submenu_49:
[00049038] 4a43                      tst.w      d3
[0004903a] 6700 0104                 beq        Ame_submenu_41
[0004903e] be45                      cmp.w      d5,d7
[00049040] 6d00 00fe                 blt        Ame_submenu_41
[00049044] b644                      cmp.w      d4,d3
[00049046] 6f00 00f8                 ble        Ame_submenu_41
Ame_submenu_47:
[0004904a] 3604                      move.w     d4,d3
[0004904c] 3e05                      move.w     d5,d7
[0004904e] 3c17                      move.w     (a7),d6
[00049050] 6000 00ee                 bra        Ame_submenu_41
Ame_submenu_43:
[00049054] 3217                      move.w     (a7),d1
[00049056] 48c1                      ext.l      d1
[00049058] 2001                      move.l     d1,d0
[0004905a] d080                      add.l      d0,d0
[0004905c] d081                      add.l      d1,d0
[0004905e] e788                      lsl.l      #3,d0
[00049060] 3434 0812                 move.w     18(a4,d0.l),d2
[00049064] 3213                      move.w     (a3),d1
[00049066] 48c1                      ext.l      d1
[00049068] 2001                      move.l     d1,d0
[0004906a] d080                      add.l      d0,d0
[0004906c] d081                      add.l      d1,d0
[0004906e] e788                      lsl.l      #3,d0
[00049070] b474 0812                 cmp.w      18(a4,d0.l),d2
[00049074] 6f00 00ca                 ble        Ame_submenu_41
[00049078] 4a47                      tst.w      d7
[0004907a] 6608                      bne.s      Ame_submenu_50
[0004907c] 4a44                      tst.w      d4
[0004907e] 6604                      bne.s      Ame_submenu_50
[00049080] b644                      cmp.w      d4,d3
[00049082] 6ec6                      bgt.s      Ame_submenu_47
Ame_submenu_50:
[00049084] 4a47                      tst.w      d7
[00049086] 6704                      beq.s      Ame_submenu_51
[00049088] 4a45                      tst.w      d5
[0004908a] 67be                      beq.s      Ame_submenu_47
Ame_submenu_51:
[0004908c] 4a47                      tst.w      d7
[0004908e] 6708                      beq.s      Ame_submenu_52
[00049090] b644                      cmp.w      d4,d3
[00049092] 6f04                      ble.s      Ame_submenu_52
[00049094] be45                      cmp.w      d5,d7
[00049096] 6cb2                      bge.s      Ame_submenu_47
Ame_submenu_52:
[00049098] 4a47                      tst.w      d7
[0004909a] 6700 00a4                 beq        Ame_submenu_41
[0004909e] b644                      cmp.w      d4,d3
[000490a0] 6d00 009e                 blt        Ame_submenu_41
Ame_submenu_57:
[000490a4] be45                      cmp.w      d5,d7
[000490a6] 6f00 0098                 ble        Ame_submenu_41
[000490aa] 609e                      bra.s      Ame_submenu_47
Ame_submenu_45:
[000490ac] 3217                      move.w     (a7),d1
[000490ae] 48c1                      ext.l      d1
[000490b0] 2001                      move.l     d1,d0
[000490b2] d080                      add.l      d0,d0
[000490b4] d081                      add.l      d1,d0
[000490b6] e788                      lsl.l      #3,d0
[000490b8] 3434 0810                 move.w     16(a4,d0.l),d2
[000490bc] 3213                      move.w     (a3),d1
[000490be] 48c1                      ext.l      d1
[000490c0] 2001                      move.l     d1,d0
[000490c2] d080                      add.l      d0,d0
[000490c4] d081                      add.l      d1,d0
[000490c6] e788                      lsl.l      #3,d0
[000490c8] b474 0810                 cmp.w      16(a4,d0.l),d2
[000490cc] 6c00 0072                 bge.w      Ame_submenu_41
[000490d0] 4a43                      tst.w      d3
[000490d2] 660a                      bne.s      Ame_submenu_53
[000490d4] 4a44                      tst.w      d4
[000490d6] 6606                      bne.s      Ame_submenu_53
[000490d8] be45                      cmp.w      d5,d7
[000490da] 6e00 ff6e                 bgt        Ame_submenu_47
Ame_submenu_53:
[000490de] 4a43                      tst.w      d3
[000490e0] 6700 ff4a                 beq        Ame_submenu_48
[000490e4] 4a44                      tst.w      d4
[000490e6] 6700 ff62                 beq        Ame_submenu_47
[000490ea] 6000 ff40                 bra        Ame_submenu_48
Ame_submenu_42:
[000490ee] 3217                      move.w     (a7),d1
[000490f0] 48c1                      ext.l      d1
[000490f2] 2001                      move.l     d1,d0
[000490f4] d080                      add.l      d0,d0
[000490f6] d081                      add.l      d1,d0
[000490f8] e788                      lsl.l      #3,d0
[000490fa] 3434 0812                 move.w     18(a4,d0.l),d2
[000490fe] 3213                      move.w     (a3),d1
[00049100] 48c1                      ext.l      d1
[00049102] 2001                      move.l     d1,d0
[00049104] d080                      add.l      d0,d0
[00049106] d081                      add.l      d1,d0
[00049108] e788                      lsl.l      #3,d0
[0004910a] b474 0812                 cmp.w      18(a4,d0.l),d2
[0004910e] 6c30                      bge.s      Ame_submenu_41
[00049110] 4a47                      tst.w      d7
[00049112] 660a                      bne.s      Ame_submenu_54
[00049114] 4a45                      tst.w      d5
[00049116] 6606                      bne.s      Ame_submenu_54
[00049118] b644                      cmp.w      d4,d3
[0004911a] 6e00 ff2e                 bgt        Ame_submenu_47
Ame_submenu_54:
[0004911e] 4a47                      tst.w      d7
[00049120] 6706                      beq.s      Ame_submenu_55
[00049122] 4a45                      tst.w      d5
[00049124] 6700 ff24                 beq        Ame_submenu_47
Ame_submenu_55:
[00049128] 4a47                      tst.w      d7
[0004912a] 670a                      beq.s      Ame_submenu_56
[0004912c] b644                      cmp.w      d4,d3
[0004912e] 6f06                      ble.s      Ame_submenu_56
[00049130] be45                      cmp.w      d5,d7
[00049132] 6c00 ff16                 bge        Ame_submenu_47
Ame_submenu_56:
[00049136] 4a47                      tst.w      d7
[00049138] 6706                      beq.s      Ame_submenu_41
[0004913a] b644                      cmp.w      d4,d3
[0004913c] 6c00 ff66                 bge        Ame_submenu_57
Ame_submenu_41:
[00049140] 3217                      move.w     (a7),d1
[00049142] 48c1                      ext.l      d1
[00049144] 2001                      move.l     d1,d0
[00049146] d080                      add.l      d0,d0
[00049148] d081                      add.l      d1,d0
[0004914a] e788                      lsl.l      #3,d0
[0004914c] 3434 0800                 move.w     0(a4,d0.l),d2
[00049150] b46f 0014                 cmp.w      20(a7),d2
[00049154] 6614                      bne.s      Ame_submenu_58
[00049156] 3a2f 0014                 move.w     20(a7),d5
[0004915a] 48c5                      ext.l      d5
[0004915c] 2805                      move.l     d5,d4
[0004915e] d884                      add.l      d4,d4
[00049160] d885                      add.l      d5,d4
[00049162] e78c                      lsl.l      #3,d4
[00049164] 3eb4 4802                 move.w     2(a4,d4.l),(a7)
[00049168] 6010                      bra.s      Ame_submenu_38
Ame_submenu_58:
[0004916a] 3217                      move.w     (a7),d1
[0004916c] 48c1                      ext.l      d1
[0004916e] 2001                      move.l     d1,d0
[00049170] d080                      add.l      d0,d0
[00049172] d081                      add.l      d1,d0
[00049174] e788                      lsl.l      #3,d0
[00049176] 3eb4 0800                 move.w     0(a4,d0.l),(a7)
Ame_submenu_38:
[0004917a] 3017                      move.w     (a7),d0
[0004917c] b053                      cmp.w      (a3),d0
[0004917e] 6600 fde8                 bne        Ame_submenu_59
[00049182] 601a                      bra.s      Ame_submenu_11
Ame_submenu_12:
[00049184] 322f 000a                 move.w     10(a7),d1
[00049188] 302f 0008                 move.w     8(a7),d0
[0004918c] 204c                      movea.l    a4,a0
[0004918e] 4eb9 0004 adcc            jsr        Aob_key
[00049194] 3480                      move.w     d0,(a2)
[00049196] 4a40                      tst.w      d0
[00049198] 6f04                      ble.s      Ame_submenu_11
Ame_submenu_21:
[0004919a] 426f 0004                 clr.w      4(a7)
Ame_submenu_11:
[0004919e] 7004                      moveq.l    #4,d0
[000491a0] c06f 0010                 and.w      16(a7),d0
[000491a4] 671a                      beq.s      Ame_submenu_60
[000491a6] 3f2f 000c                 move.w     12(a7),-(a7)
[000491aa] 342f 0010                 move.w     16(a7),d2
[000491ae] 7208                      moveq.l    #8,d1
[000491b0] 204c                      movea.l    a4,a0
[000491b2] 302f 003a                 move.w     58(a7),d0
[000491b6] 4eb9 0004 5468            jsr        Adr_find
[000491bc] 544f                      addq.w     #2,a7
[000491be] 3c00                      move.w     d0,d6
Ame_submenu_60:
[000491c0] bc53                      cmp.w      (a3),d6
[000491c2] 6700 0130                 beq        Ame_submenu_61
[000491c6] bc7c fffe                 cmp.w      #$FFFE,d6
[000491ca] 6700 0128                 beq        Ame_submenu_61
[000491ce] 302f 0012                 move.w     18(a7),d0
[000491d2] 675e                      beq.s      Ame_submenu_62
[000491d4] 3413                      move.w     (a3),d2
[000491d6] 48c2                      ext.l      d2
[000491d8] 2202                      move.l     d2,d1
[000491da] d281                      add.l      d1,d1
[000491dc] d282                      add.l      d2,d1
[000491de] e789                      lsl.l      #3,d1
[000491e0] 0074 0001 180a            ori.w      #$0001,10(a4,d1.l)
[000491e6] 4eb9 0004 9970            jsr        Amo_hide
[000491ec] 7001                      moveq.l    #1,d0
[000491ee] 3f00                      move.w     d0,-(a7)
[000491f0] 3413                      move.w     (a3),d2
[000491f2] 48c2                      ext.l      d2
[000491f4] 2202                      move.l     d2,d1
[000491f6] d281                      add.l      d1,d1
[000491f8] d282                      add.l      d2,d1
[000491fa] e789                      lsl.l      #3,d1
[000491fc] 3834 180a                 move.w     10(a4,d1.l),d4
[00049200] c87c fffe                 and.w      #$FFFE,d4
[00049204] 3f04                      move.w     d4,-(a7)
[00049206] 3f2f 002e                 move.w     46(a7),-(a7)
[0004920a] 3f2f 002e                 move.w     46(a7),-(a7)
[0004920e] 3f2f 002e                 move.w     46(a7),-(a7)
[00049212] 2279 000d 99d6            movea.l    _globl,a1
[00049218] 204c                      movea.l    a4,a0
[0004921a] 3013                      move.w     (a3),d0
[0004921c] 4241                      clr.w      d1
[0004921e] 342f 002e                 move.w     46(a7),d2
[00049222] 4eb9 0006 bc5c            jsr        mt_objc_change
[00049228] 4fef 000a                 lea.l      10(a7),a7
[0004922c] 4eb9 0004 9994            jsr        Amo_show
Ame_submenu_62:
[00049232] 4a46                      tst.w      d6
[00049234] 6b00 0098                 bmi        Ame_submenu_63
[00049238] bc6f 0038                 cmp.w      56(a7),d6
[0004923c] 6700 0090                 beq        Ame_submenu_63
[00049240] 7008                      moveq.l    #8,d0
[00049242] 3406                      move.w     d6,d2
[00049244] 48c2                      ext.l      d2
[00049246] 2202                      move.l     d2,d1
[00049248] d281                      add.l      d1,d1
[0004924a] d282                      add.l      d2,d1
[0004924c] e789                      lsl.l      #3,d1
[0004924e] c074 180a                 and.w      10(a4,d1.l),d0
[00049252] 667a                      bne.s      Ame_submenu_63
[00049254] 7841                      moveq.l    #65,d4
[00049256] c874 1808                 and.w      8(a4,d1.l),d4
[0004925a] 6772                      beq.s      Ame_submenu_63
[0004925c] 224c                      movea.l    a4,a1
[0004925e] 41ef 0024                 lea.l      36(a7),a0
[00049262] 3006                      move.w     d6,d0
[00049264] 4eb9 0004 a3be            jsr        Aob_offset
[0004926a] 4eb9 0004 9970            jsr        Amo_hide
[00049270] 7001                      moveq.l    #1,d0
[00049272] 3f00                      move.w     d0,-(a7)
[00049274] 7201                      moveq.l    #1,d1
[00049276] 3806                      move.w     d6,d4
[00049278] 48c4                      ext.l      d4
[0004927a] 2404                      move.l     d4,d2
[0004927c] d482                      add.l      d2,d2
[0004927e] d484                      add.l      d4,d2
[00049280] e78a                      lsl.l      #3,d2
[00049282] 8274 280a                 or.w       10(a4,d2.l),d1
[00049286] 3f01                      move.w     d1,-(a7)
[00049288] 3f2f 002e                 move.w     46(a7),-(a7)
[0004928c] 3f2f 002e                 move.w     46(a7),-(a7)
[00049290] 3f2f 002e                 move.w     46(a7),-(a7)
[00049294] 2279 000d 99d6            movea.l    _globl,a1
[0004929a] 204c                      movea.l    a4,a0
[0004929c] 3006                      move.w     d6,d0
[0004929e] 4241                      clr.w      d1
[000492a0] 342f 002e                 move.w     46(a7),d2
[000492a4] 4eb9 0006 bc5c            jsr        mt_objc_change
[000492aa] 4fef 000a                 lea.l      10(a7),a7
[000492ae] 4eb9 0004 9994            jsr        Amo_show
[000492b4] 3206                      move.w     d6,d1
[000492b6] 48c1                      ext.l      d1
[000492b8] 2001                      move.l     d1,d0
[000492ba] d080                      add.l      d0,d0
[000492bc] d081                      add.l      d1,d0
[000492be] e788                      lsl.l      #3,d0
[000492c0] 0274 fffe 080a            andi.w     #$FFFE,10(a4,d0.l)
[000492c6] 3f7c 0001 0012            move.w     #$0001,18(a7)
[000492cc] 6006                      bra.s      Ame_submenu_64
Ame_submenu_63:
[000492ce] 7cff                      moveq.l    #-1,d6
[000492d0] 426f 0012                 clr.w      18(a7)
Ame_submenu_64:
[000492d4] 3686                      move.w     d6,(a3)
[000492d6] 224b                      movea.l    a3,a1
[000492d8] 7018                      moveq.l    #24,d0
[000492da] 2079 0010 1f12            movea.l    ACSblk,a0
[000492e0] 2068 0258                 movea.l    600(a0),a0
[000492e4] 2a79 0010 1f12            movea.l    ACSblk,a5
[000492ea] 2a6d 0258                 movea.l    600(a5),a5
[000492ee] 2a6d 0004                 movea.l    4(a5),a5
[000492f2] 4e95                      jsr        (a5)
Ame_submenu_61:
[000492f4] 302f 0012                 move.w     18(a7),d0
[000492f8] 6700 00ce                 beq        Ame_submenu_65
[000492fc] 3406                      move.w     d6,d2
[000492fe] 48c2                      ext.l      d2
[00049300] 2202                      move.l     d2,d1
[00049302] d281                      add.l      d1,d1
[00049304] d282                      add.l      d2,d1
[00049306] e789                      lsl.l      #3,d1
[00049308] 3834 1802                 move.w     2(a4,d1.l),d4
[0004930c] 6f00 00ba                 ble        Ame_submenu_65
[00049310] 3834 1814                 move.w     20(a4,d1.l),d4
[00049314] e244                      asr.w      #1,d4
[00049316] 3f74 1802 0018            move.w     2(a4,d1.l),24(a7)
[0004931c] 3a2f 0018                 move.w     24(a7),d5
[00049320] 6b00 00a6                 bmi        Ame_submenu_65
[00049324] ba74 1804                 cmp.w      4(a4,d1.l),d5
[00049328] 6600 009e                 bne        Ame_submenu_65
[0004932c] 3f2f 000c                 move.w     12(a7),-(a7)
[00049330] 342f 0010                 move.w     16(a7),d2
[00049334] 9444                      sub.w      d4,d2
[00049336] 204c                      movea.l    a4,a0
[00049338] 302f 003a                 move.w     58(a7),d0
[0004933c] 7201                      moveq.l    #1,d1
[0004933e] 4eb9 0004 5468            jsr        Adr_find
[00049344] 544f                      addq.w     #2,a7
[00049346] bc40                      cmp.w      d0,d6
[00049348] 6600 007e                 bne.w      Ame_submenu_65
[0004934c] 322f 0018                 move.w     24(a7),d1
[00049350] 48c1                      ext.l      d1
[00049352] 2001                      move.l     d1,d0
[00049354] d080                      add.l      d0,d0
[00049356] d081                      add.l      d1,d0
[00049358] e788                      lsl.l      #3,d0
[0004935a] 0274 ff7f 0808            andi.w     #$FF7F,8(a4,d0.l)
[00049360] 3984 0810                 move.w     d4,16(a4,d0.l)
[00049364] 4274 0812                 clr.w      18(a4,d0.l)
[00049368] 204c                      movea.l    a4,a0
[0004936a] 302f 0018                 move.w     24(a7),d0
[0004936e] 6100 f638                 bsr        Ame_submenu
[00049372] 3480                      move.w     d0,(a2)
[00049374] 342f 0018                 move.w     24(a7),d2
[00049378] 48c2                      ext.l      d2
[0004937a] 2202                      move.l     d2,d1
[0004937c] d281                      add.l      d1,d1
[0004937e] d282                      add.l      d2,d1
[00049380] e789                      lsl.l      #3,d1
[00049382] 0074 0080 1808            ori.w      #$0080,8(a4,d1.l)
[00049388] 3012                      move.w     (a2),d0
[0004938a] 6b18                      bmi.s      Ame_submenu_66
[0004938c] 382f 0038                 move.w     56(a7),d4
[00049390] b840                      cmp.w      d0,d4
[00049392] 6716                      beq.s      Ame_submenu_67
[00049394] 204c                      movea.l    a4,a0
[00049396] 4eb9 0004 af6c            jsr        Aob_up
[0004939c] 322f 0038                 move.w     56(a7),d1
[000493a0] b240                      cmp.w      d0,d1
[000493a2] 6706                      beq.s      Ame_submenu_67
Ame_submenu_66:
[000493a4] 426f 0004                 clr.w      4(a7)
[000493a8] 601e                      bra.s      Ame_submenu_65
Ame_submenu_67:
[000493aa] 224a                      movea.l    a2,a1
[000493ac] 7018                      moveq.l    #24,d0
[000493ae] 2079 0010 1f12            movea.l    ACSblk,a0
[000493b4] 2068 0258                 movea.l    600(a0),a0
[000493b8] 2a79 0010 1f12            movea.l    ACSblk,a5
[000493be] 2a6d 0258                 movea.l    600(a5),a5
[000493c2] 2a6d 0004                 movea.l    4(a5),a5
[000493c6] 4e95                      jsr        (a5)
Ame_submenu_65:
[000493c8] 302f 0038                 move.w     56(a7),d0
[000493cc] 224c                      movea.l    a4,a1
[000493ce] 41ef 001c                 lea.l      28(a7),a0
[000493d2] 4eb9 0004 a3be            jsr        Aob_offset
[000493d8] bc7c ffff                 cmp.w      #$FFFF,d6
[000493dc] 6600 007c                 bne.w      Ame_submenu_68
[000493e0] 322f 000c                 move.w     12(a7),d1
[000493e4] 302f 000e                 move.w     14(a7),d0
[000493e8] 41ef 001c                 lea.l      28(a7),a0
[000493ec] 4eb9 0005 ef64            jsr        Aob_within
[000493f2] 4a40                      tst.w      d0
[000493f4] 6664                      bne.s      Ame_submenu_68
[000493f6] 322f 0038                 move.w     56(a7),d1
[000493fa] 48c1                      ext.l      d1
[000493fc] 2001                      move.l     d1,d0
[000493fe] d080                      add.l      d0,d0
[00049400] d081                      add.l      d1,d0
[00049402] e788                      lsl.l      #3,d0
[00049404] 3f74 0800 0014            move.w     0(a4,d0.l),20(a7)
[0004940a] 603a                      bra.s      Ame_submenu_69
Ame_submenu_71:
[0004940c] 302f 0014                 move.w     20(a7),d0
[00049410] 204c                      movea.l    a4,a0
[00049412] 4eb9 0004 af6c            jsr        Aob_up
[00049418] 3800                      move.w     d0,d4
[0004941a] 3f2f 000c                 move.w     12(a7),-(a7)
[0004941e] 342f 0010                 move.w     16(a7),d2
[00049422] 7201                      moveq.l    #1,d1
[00049424] 204c                      movea.l    a4,a0
[00049426] 4eb9 0004 5468            jsr        Adr_find
[0004942c] 544f                      addq.w     #2,a7
[0004942e] 3480                      move.w     d0,(a2)
[00049430] 4a40                      tst.w      d0
[00049432] 6a18                      bpl.s      Ame_submenu_70
[00049434] 3404                      move.w     d4,d2
[00049436] 48c2                      ext.l      d2
[00049438] 2202                      move.l     d2,d1
[0004943a] d281                      add.l      d1,d1
[0004943c] d282                      add.l      d2,d1
[0004943e] e789                      lsl.l      #3,d1
[00049440] 3f74 1800 0014            move.w     0(a4,d1.l),20(a7)
Ame_submenu_69:
[00049446] 302f 0014                 move.w     20(a7),d0
[0004944a] 6ac0                      bpl.s      Ame_submenu_71
Ame_submenu_70:
[0004944c] 302f 0014                 move.w     20(a7),d0
[00049450] 6f08                      ble.s      Ame_submenu_68
[00049452] 3212                      move.w     (a2),d1
[00049454] 6b04                      bmi.s      Ame_submenu_68
[00049456] 426f 0004                 clr.w      4(a7)
Ame_submenu_68:
[0004945a] 7002                      moveq.l    #2,d0
[0004945c] c06f 0010                 and.w      16(a7),d0
[00049460] 6706                      beq.s      Ame_submenu_10
[00049462] 3486                      move.w     d6,(a2)
[00049464] 426f 0004                 clr.w      4(a7)
Ame_submenu_10:
[00049468] 302f 0004                 move.w     4(a7),d0
[0004946c] 6600 f74e                 bne        Ame_submenu_72
[00049470] 43ef 002c                 lea.l      44(a7),a1
[00049474] 206f 0034                 movea.l    52(a7),a0
[00049478] 4eb9 0004 a64c            jsr        Aob_restore
[0004947e] 3012                      move.w     (a2),d0
[00049480] 4fef 003a                 lea.l      58(a7),a7
[00049484] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00049488] 4e75                      rts

Ame_popup:
[0004948a] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0004948e] 4fef ffe2                 lea.l      -30(a7),a7
[00049492] 2848                      movea.l    a0,a4
[00049494] 2449                      movea.l    a1,a2
[00049496] 3f40 001c                 move.w     d0,28(a7)
[0004949a] 3f41 001a                 move.w     d1,26(a7)
[0004949e] 41d7                      lea.l      (a7),a0
[000494a0] 4eb9 0005 f4e8            jsr        Act_save
[000494a6] 204a                      movea.l    a2,a0
[000494a8] 4eb9 0004 a25e            jsr        Aob_fix
[000494ae] 47f9 0010 1f12            lea.l      ACSblk,a3
[000494b4] 302f 001c                 move.w     28(a7),d0
[000494b8] 6a3c                      bpl.s      Ame_popup_1
[000494ba] 322f 001a                 move.w     26(a7),d1
[000494be] 6a36                      bpl.s      Ame_popup_1
[000494c0] 2f39 000d 99d6            move.l     _globl,-(a7)
[000494c6] 486f 001c                 pea.l      28(a7)
[000494ca] 486f 0020                 pea.l      32(a7)
[000494ce] 43ef 0026                 lea.l      38(a7),a1
[000494d2] 41ef 0028                 lea.l      40(a7),a0
[000494d6] 4eb9 0006 c978            jsr        mt_graf_mkstate
[000494dc] 4fef 000c                 lea.l      12(a7),a7
[000494e0] 2053                      movea.l    (a3),a0
[000494e2] 3028 0012                 move.w     18(a0),d0
[000494e6] e240                      asr.w      #1,d0
[000494e8] 916f 001c                 sub.w      d0,28(a7)
[000494ec] 3228 0014                 move.w     20(a0),d1
[000494f0] e241                      asr.w      #1,d1
[000494f2] 936f 001a                 sub.w      d1,26(a7)
Ame_popup_1:
[000494f6] 356f 001c 0010            move.w     28(a7),16(a2)
[000494fc] 356f 001a 0012            move.w     26(a7),18(a2)
[00049502] 2253                      movea.l    (a3),a1
[00049504] 43e9 0260                 lea.l      608(a1),a1
[00049508] 7017                      moveq.l    #23,d0
[0004950a] 2053                      movea.l    (a3),a0
[0004950c] 2068 0258                 movea.l    600(a0),a0
[00049510] 2a53                      movea.l    (a3),a5
[00049512] 2a6d 0258                 movea.l    600(a5),a5
[00049516] 2a6d 0004                 movea.l    4(a5),a5
[0004951a] 4e95                      jsr        (a5)
[0004951c] 4240                      clr.w      d0
[0004951e] 204a                      movea.l    a2,a0
[00049520] 6100 f486                 bsr        Ame_submenu
[00049524] 3600                      move.w     d0,d3
[00049526] 93c9                      suba.l     a1,a1
[00049528] 2053                      movea.l    (a3),a0
[0004952a] 2068 0258                 movea.l    600(a0),a0
[0004952e] 2a53                      movea.l    (a3),a5
[00049530] 2a6d 0258                 movea.l    600(a5),a5
[00049534] 2a6d 0004                 movea.l    4(a5),a5
[00049538] 7019                      moveq.l    #25,d0
[0004953a] 4e95                      jsr        (a5)
[0004953c] 4eb9 0004 ad60            jsr        Aev_release
[00049542] 4a43                      tst.w      d3
[00049544] 6f16                      ble.s      Ame_popup_2
[00049546] 4eb9 0004 9902            jsr        Amo_busy
[0004954c] 3003                      move.w     d3,d0
[0004954e] 224a                      movea.l    a2,a1
[00049550] 204c                      movea.l    a4,a0
[00049552] 6100 eef6                 bsr        call_click
[00049556] 4eb9 0004 9940            jsr        Amo_unbusy
Ame_popup_2:
[0004955c] 4a43                      tst.w      d3
[0004955e] 6602                      bne.s      Ame_popup_3
[00049560] 76ff                      moveq.l    #-1,d3
Ame_popup_3:
[00049562] 41d7                      lea.l      (a7),a0
[00049564] 4eb9 0005 f532            jsr        Act_restore
[0004956a] 3003                      move.w     d3,d0
[0004956c] 4fef 001e                 lea.l      30(a7),a7
[00049570] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00049574] 4e75                      rts

Ame_root:
[00049576] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004957a] 3600                      move.w     d0,d3
[0004957c] 3801                      move.w     d1,d4
[0004957e] 4eb9 0004 e608            jsr        Awi_root
[00049584] 2448                      movea.l    a0,a2
[00049586] 266a 005e                 movea.l    94(a2),a3
[0004958a] 4eb9 0004 9902            jsr        Amo_busy
[00049590] b67c 0003                 cmp.w      #$0003,d3
[00049594] 660e                      bne.s      Ame_root_1
[00049596] 2079 0010 1f12            movea.l    ACSblk,a0
[0004959c] 2068 029c                 movea.l    668(a0),a0
[000495a0] 4e90                      jsr        (a0)
[000495a2] 600a                      bra.s      Ame_root_2
Ame_root_1:
[000495a4] 3004                      move.w     d4,d0
[000495a6] 224b                      movea.l    a3,a1
[000495a8] 204a                      movea.l    a2,a0
[000495aa] 6100 ee9e                 bsr        call_click
Ame_root_2:
[000495ae] 4eb9 0004 9940            jsr        Amo_unbusy
[000495b4] 2279 000d 99d6            movea.l    _globl,a1
[000495ba] 7201                      moveq.l    #1,d1
[000495bc] 3003                      move.w     d3,d0
[000495be] 204b                      movea.l    a3,a0
[000495c0] 4eb9 0006 b4a2            jsr        mt_menu_tnormal
[000495c6] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[000495ca] 4e75                      rts

Ame_drop:
[000495cc] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[000495d0] 514f                      subq.w     #8,a7
[000495d2] 2448                      movea.l    a0,a2
[000495d4] 3a00                      move.w     d0,d5
[000495d6] 3601                      move.w     d1,d3
[000495d8] 266a 005e                 movea.l    94(a2),a3
[000495dc] 240b                      move.l     a3,d2
[000495de] 6766                      beq.s      Ame_drop_1
[000495e0] 3eab 0010                 move.w     16(a3),(a7)
[000495e4] 3f6b 0012 0002            move.w     18(a3),2(a7)
[000495ea] 342b 0014                 move.w     20(a3),d2
[000495ee] b46a 0038                 cmp.w      56(a2),d2
[000495f2] 6c02                      bge.s      Ame_drop_2
[000495f4] 6004                      bra.s      Ame_drop_3
Ame_drop_2:
[000495f6] 342a 0038                 move.w     56(a2),d2
Ame_drop_3:
[000495fa] 3f42 0004                 move.w     d2,4(a7)
[000495fe] 3f6b 0016 0006            move.w     22(a3),6(a7)
[00049604] 3203                      move.w     d3,d1
[00049606] 3005                      move.w     d5,d0
[00049608] 41d7                      lea.l      (a7),a0
[0004960a] 4eb9 0005 ef64            jsr        Aob_within
[00049610] 4a40                      tst.w      d0
[00049612] 6732                      beq.s      Ame_drop_1
[00049614] 322b 0002                 move.w     2(a3),d1
[00049618] 48c1                      ext.l      d1
[0004961a] 2001                      move.l     d1,d0
[0004961c] d080                      add.l      d0,d0
[0004961e] d081                      add.l      d1,d0
[00049620] e788                      lsl.l      #3,d0
[00049622] 3833 0802                 move.w     2(a3,d0.l),d4
[00049626] 3f03                      move.w     d3,-(a7)
[00049628] 3405                      move.w     d5,d2
[0004962a] 204b                      movea.l    a3,a0
[0004962c] 3004                      move.w     d4,d0
[0004962e] 7201                      moveq.l    #1,d1
[00049630] 4eb9 0004 5468            jsr        Adr_find
[00049636] 544f                      addq.w     #2,a7
[00049638] 3a00                      move.w     d0,d5
[0004963a] b840                      cmp.w      d0,d4
[0004963c] 6c08                      bge.s      Ame_drop_1
[0004963e] 224b                      movea.l    a3,a1
[00049640] 204a                      movea.l    a2,a0
[00049642] 6100 ef18                 bsr        Ame_menu
Ame_drop_1:
[00049646] 504f                      addq.w     #8,a7
[00049648] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[0004964c] 4e75                      rts

Ame_key:
[0004964e] 48e7 1f30                 movem.l    d3-d7/a2-a3,-(a7)
[00049652] 594f                      subq.w     #4,a7
[00049654] 2448                      movea.l    a0,a2
[00049656] 3600                      move.w     d0,d3
[00049658] 3f41 0002                 move.w     d1,2(a7)
[0004965c] 266a 005e                 movea.l    94(a2),a3
[00049660] 240b                      move.l     a3,d2
[00049662] 6700 0084                 beq        Ame_key_1
[00049666] 204b                      movea.l    a3,a0
[00049668] 4eb9 0004 adcc            jsr        Aob_key
[0004966e] 3800                      move.w     d0,d4
[00049670] 4a40                      tst.w      d0
[00049672] 6b74                      bmi.s      Ame_key_1
[00049674] 342b 0002                 move.w     2(a3),d2
[00049678] 48c2                      ext.l      d2
[0004967a] 2202                      move.l     d2,d1
[0004967c] d281                      add.l      d1,d1
[0004967e] d282                      add.l      d2,d1
[00049680] e789                      lsl.l      #3,d1
[00049682] 3eb3 1802                 move.w     2(a3,d1.l),(a7)
[00049686] 3217                      move.w     (a7),d1
[00049688] 48c1                      ext.l      d1
[0004968a] 2001                      move.l     d1,d0
[0004968c] d080                      add.l      d0,d0
[0004968e] d081                      add.l      d1,d0
[00049690] e788                      lsl.l      #3,d0
[00049692] 3c33 0802                 move.w     2(a3,d0.l),d6
[00049696] 302b 0004                 move.w     4(a3),d0
[0004969a] 48c0                      ext.l      d0
[0004969c] 2400                      move.l     d0,d2
[0004969e] d482                      add.l      d2,d2
[000496a0] d480                      add.l      d0,d2
[000496a2] e78a                      lsl.l      #3,d2
[000496a4] 3e33 2802                 move.w     2(a3,d2.l),d7
[000496a8] 3604                      move.w     d4,d3
Ame_key_2:
[000496aa] 3a03                      move.w     d3,d5
[000496ac] 3005                      move.w     d5,d0
[000496ae] 204b                      movea.l    a3,a0
[000496b0] 4eb9 0004 af6c            jsr        Aob_up
[000496b6] 3600                      move.w     d0,d3
[000496b8] 4a40                      tst.w      d0
[000496ba] 6b2c                      bmi.s      Ame_key_1
[000496bc] b06b 0004                 cmp.w      4(a3),d0
[000496c0] 66e8                      bne.s      Ame_key_2
[000496c2] 6028                      bra.s      Ame_key_3
Ame_key_5:
[000496c4] 3206                      move.w     d6,d1
[000496c6] 48c1                      ext.l      d1
[000496c8] 2001                      move.l     d1,d0
[000496ca] d080                      add.l      d0,d0
[000496cc] d081                      add.l      d1,d0
[000496ce] e788                      lsl.l      #3,d0
[000496d0] 3c33 0800                 move.w     0(a3,d0.l),d6
[000496d4] 3207                      move.w     d7,d1
[000496d6] 48c1                      ext.l      d1
[000496d8] 2001                      move.l     d1,d0
[000496da] d080                      add.l      d0,d0
[000496dc] d081                      add.l      d1,d0
[000496de] e788                      lsl.l      #3,d0
[000496e0] 3e33 0800                 move.w     0(a3,d0.l),d7
[000496e4] bc57                      cmp.w      (a7),d6
[000496e6] 6604                      bne.s      Ame_key_3
Ame_key_1:
[000496e8] 70ff                      moveq.l    #-1,d0
[000496ea] 606a                      bra.s      Ame_key_4
Ame_key_3:
[000496ec] ba47                      cmp.w      d7,d5
[000496ee] 66d4                      bne.s      Ame_key_5
[000496f0] 4eb9 0004 9902            jsr        Amo_busy
[000496f6] 302a 0020                 move.w     32(a2),d0
[000496fa] 6630                      bne.s      Ame_key_6
[000496fc] 2279 000d 99d6            movea.l    _globl,a1
[00049702] 4241                      clr.w      d1
[00049704] 204b                      movea.l    a3,a0
[00049706] 3006                      move.w     d6,d0
[00049708] 4eb9 0006 b4a2            jsr        mt_menu_tnormal
[0004970e] 3004                      move.w     d4,d0
[00049710] 224b                      movea.l    a3,a1
[00049712] 204a                      movea.l    a2,a0
[00049714] 6100 ed34                 bsr        call_click
[00049718] 2279 000d 99d6            movea.l    _globl,a1
[0004971e] 7201                      moveq.l    #1,d1
[00049720] 3006                      move.w     d6,d0
[00049722] 204b                      movea.l    a3,a0
[00049724] 4eb9 0006 b4a2            jsr        mt_menu_tnormal
[0004972a] 6022                      bra.s      Ame_key_7
Ame_key_6:
[0004972c] 7201                      moveq.l    #1,d1
[0004972e] 3006                      move.w     d6,d0
[00049730] 224b                      movea.l    a3,a1
[00049732] 204a                      movea.l    a2,a0
[00049734] 6100 edd8                 bsr        Ame_tnormal
[00049738] 3004                      move.w     d4,d0
[0004973a] 224b                      movea.l    a3,a1
[0004973c] 204a                      movea.l    a2,a0
[0004973e] 6100 ed0a                 bsr        call_click
[00049742] 4241                      clr.w      d1
[00049744] 3006                      move.w     d6,d0
[00049746] 224b                      movea.l    a3,a1
[00049748] 204a                      movea.l    a2,a0
[0004974a] 6100 edc2                 bsr        Ame_tnormal
Ame_key_7:
[0004974e] 4eb9 0004 9940            jsr        Amo_unbusy
[00049754] 3004                      move.w     d4,d0
Ame_key_4:
[00049756] 584f                      addq.w     #4,a7
[00049758] 4cdf 0cf8                 movem.l    (a7)+,d3-d7/a2-a3
[0004975c] 4e75                      rts

Ame_namefix:
[0004975e] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[00049762] 594f                      subq.w     #4,a7
[00049764] 2448                      movea.l    a0,a2
[00049766] 4257                      clr.w      (a7)
[00049768] 382a 0002                 move.w     2(a2),d4
[0004976c] 47f9 0010 1f12            lea.l      ACSblk,a3
[00049772] 2053                      movea.l    (a3),a0
[00049774] 3204                      move.w     d4,d1
[00049776] 48c1                      ext.l      d1
[00049778] 2001                      move.l     d1,d0
[0004977a] d080                      add.l      d0,d0
[0004977c] d081                      add.l      d1,d0
[0004977e] e788                      lsl.l      #3,d0
[00049780] 35a8 000c 0814            move.w     12(a0),20(a2,d0.l)
[00049786] 3832 0802                 move.w     2(a2,d0.l),d4
[0004978a] 3204                      move.w     d4,d1
[0004978c] 48c1                      ext.l      d1
[0004978e] 2001                      move.l     d1,d0
[00049790] d080                      add.l      d0,d0
[00049792] d081                      add.l      d1,d0
[00049794] e788                      lsl.l      #3,d0
[00049796] 3a32 0802                 move.w     2(a2,d0.l),d5
[0004979a] 3c2a 0004                 move.w     4(a2),d6
[0004979e] 3006                      move.w     d6,d0
[000497a0] 48c0                      ext.l      d0
[000497a2] 2400                      move.l     d0,d2
[000497a4] d482                      add.l      d2,d2
[000497a6] d480                      add.l      d0,d2
[000497a8] e78a                      lsl.l      #3,d2
[000497aa] 3c32 2802                 move.w     2(a2,d2.l),d6
[000497ae] 3405                      move.w     d5,d2
[000497b0] 48c2                      ext.l      d2
[000497b2] 2002                      move.l     d2,d0
[000497b4] d080                      add.l      d0,d0
[000497b6] d082                      add.l      d2,d0
[000497b8] e788                      lsl.l      #3,d0
[000497ba] 3e32 0810                 move.w     16(a2,d0.l),d7
[000497be] 3006                      move.w     d6,d0
[000497c0] 48c0                      ext.l      d0
[000497c2] 2200                      move.l     d0,d1
[000497c4] d281                      add.l      d1,d1
[000497c6] d280                      add.l      d0,d1
[000497c8] e789                      lsl.l      #3,d1
[000497ca] 3f72 1810 0002            move.w     16(a2,d1.l),2(a7)
Ame_namefix_7:
[000497d0] 3205                      move.w     d5,d1
[000497d2] 48c1                      ext.l      d1
[000497d4] 2001                      move.l     d1,d0
[000497d6] d080                      add.l      d0,d0
[000497d8] d081                      add.l      d1,d0
[000497da] e788                      lsl.l      #3,d0
[000497dc] 2872 080c                 movea.l    12(a2,d0.l),a4
[000497e0] 204c                      movea.l    a4,a0
[000497e2] 4eb9 0007 69b0            jsr        strlen
[000497e8] 2600                      move.l     d0,d3
[000497ea] 41f4 30ff                 lea.l      -1(a4,d3.w),a0
[000497ee] 6004                      bra.s      Ame_namefix_1
Ame_namefix_3:
[000497f0] 5343                      subq.w     #1,d3
[000497f2] 5348                      subq.w     #1,a0
Ame_namefix_1:
[000497f4] 4a43                      tst.w      d3
[000497f6] 6f0c                      ble.s      Ame_namefix_2
[000497f8] 0c10 0020                 cmpi.b     #$20,(a0)
[000497fc] 67f2                      beq.s      Ame_namefix_3
[000497fe] 6004                      bra.s      Ame_namefix_2
Ame_namefix_5:
[00049800] 5343                      subq.w     #1,d3
[00049802] 524c                      addq.w     #1,a4
Ame_namefix_2:
[00049804] 4a43                      tst.w      d3
[00049806] 6f06                      ble.s      Ame_namefix_4
[00049808] 0c14 0020                 cmpi.b     #$20,(a4)
[0004980c] 67f2                      beq.s      Ame_namefix_5
Ame_namefix_4:
[0004980e] 7002                      moveq.l    #2,d0
[00049810] d043                      add.w      d3,d0
[00049812] 2053                      movea.l    (a3),a0
[00049814] c1e8 0012                 muls.w     18(a0),d0
[00049818] 3405                      move.w     d5,d2
[0004981a] 48c2                      ext.l      d2
[0004981c] 2202                      move.l     d2,d1
[0004981e] d281                      add.l      d1,d1
[00049820] d282                      add.l      d2,d1
[00049822] e789                      lsl.l      #3,d1
[00049824] 3580 1814                 move.w     d0,20(a2,d1.l)
[00049828] 3600                      move.w     d0,d3
[0004982a] d157                      add.w      d0,(a7)
[0004982c] 3587 1810                 move.w     d7,16(a2,d1.l)
[00049830] 3006                      move.w     d6,d0
[00049832] 48c0                      ext.l      d0
[00049834] 2400                      move.l     d0,d2
[00049836] d482                      add.l      d2,d2
[00049838] d480                      add.l      d0,d2
[0004983a] e78a                      lsl.l      #3,d2
[0004983c] 35af 0002 2810            move.w     2(a7),16(a2,d2.l)
[00049842] de43                      add.w      d3,d7
[00049844] d76f 0002                 add.w      d3,2(a7)
[00049848] 3a32 1800                 move.w     0(a2,d1.l),d5
[0004984c] b845                      cmp.w      d5,d4
[0004984e] 6708                      beq.s      Ame_namefix_6
[00049850] 3c32 2800                 move.w     0(a2,d2.l),d6
[00049854] 6000 ff7a                 bra        Ame_namefix_7
Ame_namefix_6:
[00049858] 3204                      move.w     d4,d1
[0004985a] 48c1                      ext.l      d1
[0004985c] 2001                      move.l     d1,d0
[0004985e] d080                      add.l      d0,d0
[00049860] d081                      add.l      d1,d0
[00049862] e788                      lsl.l      #3,d0
[00049864] 3597 0814                 move.w     (a7),20(a2,d0.l)
[00049868] 584f                      addq.w     #4,a7
[0004986a] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[0004986e] 4e75                      rts

		.data

[000d3cf2]                           dc.w $0000
[000d3cf4]                           dc.w $0000
[000d3cf6]                           dc.w $0000
[000d3cf8]                           dc.w $0000
[000d3cfa]                           dc.w $0000
[000d3cfc]                           dc.w $0000
[000d3cfe]                           dc.w $0000
[000d3d00]                           dc.w $0000
