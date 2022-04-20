
dotted_xline:
[00044242] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[00044246] 514f                      subq.w     #8,a7
[00044248] 3800                      move.w     d0,d4
[0004424a] 3a01                      move.w     d1,d5
[0004424c] 3602                      move.w     d2,d3
[0004424e] 45f9 0010 1f12            lea.l      ACSblk,a2
[00044254] 2052                      movea.l    (a2),a0
[00044256] b668 000a                 cmp.w      10(a0),d3
[0004425a] 6f00 007e                 ble.w      dotted_xline_1
[0004425e] 47f9 0010 4652            lea.l      pattern,a3
[00044264] 7001                      moveq.l    #1,d0
[00044266] c043                      and.w      d3,d0
[00044268] 671c                      beq.s      dotted_xline_2
[0004426a] 0c53 aaaa                 cmpi.w     #$AAAA,(a3)
[0004426e] 6730                      beq.s      dotted_xline_3
[00044270] 36bc aaaa                 move.w     #$AAAA,(a3)
[00044274] 323c aaaa                 move.w     #$AAAA,d1
[00044278] 2052                      movea.l    (a2),a0
[0004427a] 3028 0010                 move.w     16(a0),d0
[0004427e] 4eb9 0006 4e48            jsr        vsl_udsty
[00044284] 601a                      bra.s      dotted_xline_3
dotted_xline_2:
[00044286] 0c53 5555                 cmpi.w     #$5555,(a3)
[0004428a] 6714                      beq.s      dotted_xline_3
[0004428c] 36bc 5555                 move.w     #$5555,(a3)
[00044290] 323c 5555                 move.w     #$5555,d1
[00044294] 2052                      movea.l    (a2),a0
[00044296] 3028 0010                 move.w     16(a0),d0
[0004429a] 4eb9 0006 4e48            jsr        vsl_udsty
dotted_xline_3:
[000442a0] 3e84                      move.w     d4,(a7)
[000442a2] 3f45 0004                 move.w     d5,4(a7)
[000442a6] 3f43 0006                 move.w     d3,6(a7)
[000442aa] 3f43 0002                 move.w     d3,2(a7)
[000442ae] 7207                      moveq.l    #7,d1
[000442b0] 2052                      movea.l    (a2),a0
[000442b2] 3028 0010                 move.w     16(a0),d0
[000442b6] 4eb9 0006 4df4            jsr        vsl_type
[000442bc] 7201                      moveq.l    #1,d1
[000442be] 2052                      movea.l    (a2),a0
[000442c0] 3028 0010                 move.w     16(a0),d0
[000442c4] 4eb9 0006 4e9a            jsr        vsl_width
[000442ca] 41d7                      lea.l      (a7),a0
[000442cc] 7202                      moveq.l    #2,d1
[000442ce] 2252                      movea.l    (a2),a1
[000442d0] 3029 0010                 move.w     16(a1),d0
[000442d4] 4eb9 0006 4010            jsr        v_pline
dotted_xline_1:
[000442da] 504f                      addq.w     #8,a7
[000442dc] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[000442e0] 4e75                      rts

dotted_yline:
[000442e2] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[000442e6] 514f                      subq.w     #8,a7
[000442e8] 3800                      move.w     d0,d4
[000442ea] 3a01                      move.w     d1,d5
[000442ec] 3602                      move.w     d2,d3
[000442ee] 45f9 0010 1f12            lea.l      ACSblk,a2
[000442f4] 2052                      movea.l    (a2),a0
[000442f6] b668 0008                 cmp.w      8(a0),d3
[000442fa] 6f00 0082                 ble        dotted_yline_1
[000442fe] 47f9 0010 4652            lea.l      pattern,a3
[00044304] 3004                      move.w     d4,d0
[00044306] b740                      eor.w      d3,d0
[00044308] c07c 0001                 and.w      #$0001,d0
[0004430c] 671c                      beq.s      dotted_yline_2
[0004430e] 0c53 aaaa                 cmpi.w     #$AAAA,(a3)
[00044312] 6730                      beq.s      dotted_yline_3
[00044314] 36bc aaaa                 move.w     #$AAAA,(a3)
[00044318] 323c aaaa                 move.w     #$AAAA,d1
[0004431c] 2052                      movea.l    (a2),a0
[0004431e] 3028 0010                 move.w     16(a0),d0
[00044322] 4eb9 0006 4e48            jsr        vsl_udsty
[00044328] 601a                      bra.s      dotted_yline_3
dotted_yline_2:
[0004432a] 0c53 5555                 cmpi.w     #$5555,(a3)
[0004432e] 6714                      beq.s      dotted_yline_3
[00044330] 36bc 5555                 move.w     #$5555,(a3)
[00044334] 323c 5555                 move.w     #$5555,d1
[00044338] 2052                      movea.l    (a2),a0
[0004433a] 3028 0010                 move.w     16(a0),d0
[0004433e] 4eb9 0006 4e48            jsr        vsl_udsty
dotted_yline_3:
[00044344] 3f44 0002                 move.w     d4,2(a7)
[00044348] 3f45 0006                 move.w     d5,6(a7)
[0004434c] 3f43 0004                 move.w     d3,4(a7)
[00044350] 3e83                      move.w     d3,(a7)
[00044352] 7207                      moveq.l    #7,d1
[00044354] 2052                      movea.l    (a2),a0
[00044356] 3028 0010                 move.w     16(a0),d0
[0004435a] 4eb9 0006 4df4            jsr        vsl_type
[00044360] 7201                      moveq.l    #1,d1
[00044362] 2052                      movea.l    (a2),a0
[00044364] 3028 0010                 move.w     16(a0),d0
[00044368] 4eb9 0006 4e9a            jsr        vsl_width
[0004436e] 41d7                      lea.l      (a7),a0
[00044370] 7202                      moveq.l    #2,d1
[00044372] 2252                      movea.l    (a2),a1
[00044374] 3029 0010                 move.w     16(a1),d0
[00044378] 4eb9 0006 4010            jsr        v_pline
dotted_yline_1:
[0004437e] 504f                      addq.w     #8,a7
[00044380] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00044384] 4e75                      rts

xline2:
[00044386] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[0004438a] 514f                      subq.w     #8,a7
[0004438c] 3800                      move.w     d0,d4
[0004438e] 3a01                      move.w     d1,d5
[00044390] 3602                      move.w     d2,d3
[00044392] 45f9 0010 1f12            lea.l      ACSblk,a2
[00044398] 2052                      movea.l    (a2),a0
[0004439a] b668 000a                 cmp.w      10(a0),d3
[0004439e] 6f00 007e                 ble.w      xline2_1
[000443a2] 47f9 0010 4652            lea.l      pattern,a3
[000443a8] 7001                      moveq.l    #1,d0
[000443aa] c043                      and.w      d3,d0
[000443ac] 671c                      beq.s      xline2_2
[000443ae] 0c53 5555                 cmpi.w     #$5555,(a3)
[000443b2] 6730                      beq.s      xline2_3
[000443b4] 36bc 5555                 move.w     #$5555,(a3)
[000443b8] 323c 5555                 move.w     #$5555,d1
[000443bc] 2052                      movea.l    (a2),a0
[000443be] 3028 0010                 move.w     16(a0),d0
[000443c2] 4eb9 0006 4e48            jsr        vsl_udsty
[000443c8] 601a                      bra.s      xline2_3
xline2_2:
[000443ca] 0c53 aaaa                 cmpi.w     #$AAAA,(a3)
[000443ce] 6714                      beq.s      xline2_3
[000443d0] 36bc aaaa                 move.w     #$AAAA,(a3)
[000443d4] 323c aaaa                 move.w     #$AAAA,d1
[000443d8] 2052                      movea.l    (a2),a0
[000443da] 3028 0010                 move.w     16(a0),d0
[000443de] 4eb9 0006 4e48            jsr        vsl_udsty
xline2_3:
[000443e4] 3e84                      move.w     d4,(a7)
[000443e6] 3f45 0004                 move.w     d5,4(a7)
[000443ea] 3f43 0006                 move.w     d3,6(a7)
[000443ee] 3f43 0002                 move.w     d3,2(a7)
[000443f2] 7207                      moveq.l    #7,d1
[000443f4] 2052                      movea.l    (a2),a0
[000443f6] 3028 0010                 move.w     16(a0),d0
[000443fa] 4eb9 0006 4df4            jsr        vsl_type
[00044400] 7201                      moveq.l    #1,d1
[00044402] 2052                      movea.l    (a2),a0
[00044404] 3028 0010                 move.w     16(a0),d0
[00044408] 4eb9 0006 4e9a            jsr        vsl_width
[0004440e] 41d7                      lea.l      (a7),a0
[00044410] 7202                      moveq.l    #2,d1
[00044412] 2252                      movea.l    (a2),a1
[00044414] 3029 0010                 move.w     16(a1),d0
[00044418] 4eb9 0006 4010            jsr        v_pline
xline2_1:
[0004441e] 504f                      addq.w     #8,a7
[00044420] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00044424] 4e75                      rts

yline2:
[00044426] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[0004442a] 514f                      subq.w     #8,a7
[0004442c] 3800                      move.w     d0,d4
[0004442e] 3a01                      move.w     d1,d5
[00044430] 3602                      move.w     d2,d3
[00044432] 45f9 0010 1f12            lea.l      ACSblk,a2
[00044438] 2052                      movea.l    (a2),a0
[0004443a] b668 0008                 cmp.w      8(a0),d3
[0004443e] 6f00 0082                 ble        yline2_1
[00044442] 47f9 0010 4652            lea.l      pattern,a3
[00044448] 3004                      move.w     d4,d0
[0004444a] b740                      eor.w      d3,d0
[0004444c] c07c 0001                 and.w      #$0001,d0
[00044450] 671c                      beq.s      yline2_2
[00044452] 0c53 5555                 cmpi.w     #$5555,(a3)
[00044456] 6730                      beq.s      yline2_3
[00044458] 36bc 5555                 move.w     #$5555,(a3)
[0004445c] 323c 5555                 move.w     #$5555,d1
[00044460] 2052                      movea.l    (a2),a0
[00044462] 3028 0010                 move.w     16(a0),d0
[00044466] 4eb9 0006 4e48            jsr        vsl_udsty
[0004446c] 601a                      bra.s      yline2_3
yline2_2:
[0004446e] 0c53 aaaa                 cmpi.w     #$AAAA,(a3)
[00044472] 6714                      beq.s      yline2_3
[00044474] 36bc aaaa                 move.w     #$AAAA,(a3)
[00044478] 323c aaaa                 move.w     #$AAAA,d1
[0004447c] 2052                      movea.l    (a2),a0
[0004447e] 3028 0010                 move.w     16(a0),d0
[00044482] 4eb9 0006 4e48            jsr        vsl_udsty
yline2_3:
[00044488] 3f44 0002                 move.w     d4,2(a7)
[0004448c] 3f45 0006                 move.w     d5,6(a7)
[00044490] 3f43 0004                 move.w     d3,4(a7)
[00044494] 3e83                      move.w     d3,(a7)
[00044496] 7207                      moveq.l    #7,d1
[00044498] 2052                      movea.l    (a2),a0
[0004449a] 3028 0010                 move.w     16(a0),d0
[0004449e] 4eb9 0006 4df4            jsr        vsl_type
[000444a4] 7201                      moveq.l    #1,d1
[000444a6] 2052                      movea.l    (a2),a0
[000444a8] 3028 0010                 move.w     16(a0),d0
[000444ac] 4eb9 0006 4e9a            jsr        vsl_width
[000444b2] 41d7                      lea.l      (a7),a0
[000444b4] 7202                      moveq.l    #2,d1
[000444b6] 2252                      movea.l    (a2),a1
[000444b8] 3029 0010                 move.w     16(a1),d0
[000444bc] 4eb9 0006 4010            jsr        v_pline
yline2_1:
[000444c2] 504f                      addq.w     #8,a7
[000444c4] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[000444c8] 4e75                      rts

drag_set:
[000444ca] 48e7 1834                 movem.l    d3-d4/a2-a3/a5,-(a7)
[000444ce] 594f                      subq.w     #4,a7
[000444d0] 4243                      clr.w      d3
[000444d2] 4bef 0002                 lea.l      2(a7),a5
[000444d6] 45f9 0010 4654            lea.l      drags,a2
[000444dc] 6000 014e                 bra        drag_set_1
drag_set_8:
[000444e0] b67c 0200                 cmp.w      #$0200,d3
[000444e4] 6c00 0154                 bge        drag_set_2
[000444e8] 3003                      move.w     d3,d0
[000444ea] 48c0                      ext.l      d0
[000444ec] d080                      add.l      d0,d0
[000444ee] 2079 0010 1f12            movea.l    ACSblk,a0
[000444f4] 2268 0254                 movea.l    596(a0),a1
[000444f8] 3831 0800                 move.w     0(a1,d0.l),d4
[000444fc] 3204                      move.w     d4,d1
[000444fe] c27c 1000                 and.w      #$1000,d1
[00044502] 670e                      beq.s      drag_set_3
[00044504] 2268 0240                 movea.l    576(a0),a1
[00044508] 2669 0018                 movea.l    24(a1),a3
[0004450c] c87c 0fff                 and.w      #$0FFF,d4
[00044510] 600e                      bra.s      drag_set_4
drag_set_3:
[00044512] 2079 0010 1f12            movea.l    ACSblk,a0
[00044518] 2268 0240                 movea.l    576(a0),a1
[0004451c] 2669 0014                 movea.l    20(a1),a3
drag_set_4:
[00044520] 2f39 000d 99d6            move.l     _globl,-(a7)
[00044526] 486f 0004                 pea.l      4(a7)
[0004452a] 224d                      movea.l    a5,a1
[0004452c] 3004                      move.w     d4,d0
[0004452e] 204b                      movea.l    a3,a0
[00044530] 4eb9 0006 ba44            jsr        mt_objc_offset
[00044536] 504f                      addq.w     #8,a7
[00044538] 2079 0010 1f12            movea.l    ACSblk,a0
[0004453e] 2268 0240                 movea.l    576(a0),a1
[00044542] 3029 0034                 move.w     52(a1),d0
[00044546] d155                      add.w      d0,(a5)
[00044548] 3229 0036                 move.w     54(a1),d1
[0004454c] d357                      add.w      d1,(a7)
[0004454e] 3004                      move.w     d4,d0
[00044550] 48c0                      ext.l      d0
[00044552] 2400                      move.l     d0,d2
[00044554] d482                      add.l      d2,d2
[00044556] d480                      add.l      d0,d2
[00044558] e78a                      lsl.l      #3,d2
[0004455a] 3033 2806                 move.w     6(a3,d2.l),d0
[0004455e] c07c 00ff                 and.w      #$00FF,d0
[00044562] b07c 001f                 cmp.w      #$001F,d0
[00044566] 6706                      beq.s      drag_set_5
[00044568] b07c 0021                 cmp.w      #$0021,d0
[0004456c] 6674                      bne.s      drag_set_6
drag_set_5:
[0004456e] 3204                      move.w     d4,d1
[00044570] 48c1                      ext.l      d1
[00044572] 2001                      move.l     d1,d0
[00044574] d080                      add.l      d0,d0
[00044576] d081                      add.l      d1,d0
[00044578] e788                      lsl.l      #3,d0
[0004457a] 2073 080c                 movea.l    12(a3,d0.l),a0
[0004457e] 3415                      move.w     (a5),d2
[00044580] d468 001a                 add.w      26(a0),d2
[00044584] 3003                      move.w     d3,d0
[00044586] e948                      lsl.w      #4,d0
[00044588] 3582 0000                 move.w     d2,0(a2,d0.w)
[0004458c] 3215                      move.w     (a5),d1
[0004458e] d268 0012                 add.w      18(a0),d1
[00044592] 3581 0004                 move.w     d1,4(a2,d0.w)
[00044596] 3415                      move.w     (a5),d2
[00044598] d468 0012                 add.w      18(a0),d2
[0004459c] d468 0016                 add.w      22(a0),d2
[000445a0] 5342                      subq.w     #1,d2
[000445a2] 3582 0008                 move.w     d2,8(a2,d0.w)
[000445a6] 3215                      move.w     (a5),d1
[000445a8] d268 001a                 add.w      26(a0),d1
[000445ac] d268 001e                 add.w      30(a0),d1
[000445b0] 5341                      subq.w     #1,d1
[000445b2] 3581 000c                 move.w     d1,12(a2,d0.w)
[000445b6] 3417                      move.w     (a7),d2
[000445b8] d468 0014                 add.w      20(a0),d2
[000445bc] 3582 0002                 move.w     d2,2(a2,d0.w)
[000445c0] 3217                      move.w     (a7),d1
[000445c2] d268 001c                 add.w      28(a0),d1
[000445c6] 3581 0006                 move.w     d1,6(a2,d0.w)
[000445ca] 3417                      move.w     (a7),d2
[000445cc] d468 001c                 add.w      28(a0),d2
[000445d0] d468 0020                 add.w      32(a0),d2
[000445d4] 5342                      subq.w     #1,d2
[000445d6] 3582 000a                 move.w     d2,10(a2,d0.w)
[000445da] 35bc 0001 000e            move.w     #$0001,14(a2,d0.w)
[000445e0] 6048                      bra.s      drag_set_7
drag_set_6:
[000445e2] 3003                      move.w     d3,d0
[000445e4] e948                      lsl.w      #4,d0
[000445e6] 3595 0000                 move.w     (a5),0(a2,d0.w)
[000445ea] 3597 0002                 move.w     (a7),2(a2,d0.w)
[000445ee] 3215                      move.w     (a5),d1
[000445f0] 3004                      move.w     d4,d0
[000445f2] 48c0                      ext.l      d0
[000445f4] 2400                      move.l     d0,d2
[000445f6] d482                      add.l      d2,d2
[000445f8] d480                      add.l      d0,d2
[000445fa] e78a                      lsl.l      #3,d2
[000445fc] d273 2814                 add.w      20(a3,d2.l),d1
[00044600] 5341                      subq.w     #1,d1
[00044602] 3403                      move.w     d3,d2
[00044604] e94a                      lsl.w      #4,d2
[00044606] 3581 2004                 move.w     d1,4(a2,d2.w)
[0004460a] 3217                      move.w     (a7),d1
[0004460c] 3404                      move.w     d4,d2
[0004460e] 48c2                      ext.l      d2
[00044610] 2002                      move.l     d2,d0
[00044612] d080                      add.l      d0,d0
[00044614] d082                      add.l      d2,d0
[00044616] e788                      lsl.l      #3,d0
[00044618] d273 0816                 add.w      22(a3,d0.l),d1
[0004461c] 5341                      subq.w     #1,d1
[0004461e] 3003                      move.w     d3,d0
[00044620] e948                      lsl.w      #4,d0
[00044622] 3581 0006                 move.w     d1,6(a2,d0.w)
[00044626] 4272 000e                 clr.w      14(a2,d0.w)
drag_set_7:
[0004462a] 5243                      addq.w     #1,d3
drag_set_1:
[0004462c] 2079 0010 1f12            movea.l    ACSblk,a0
[00044632] b668 0246                 cmp.w      582(a0),d3
[00044636] 6d00 fea8                 blt        drag_set_8
drag_set_2:
[0004463a] 584f                      addq.w     #4,a7
[0004463c] 4cdf 2c18                 movem.l    (a7)+,d3-d4/a2-a3/a5
[00044640] 4e75                      rts

drag_draw:
[00044642] 48e7 1f28                 movem.l    d3-d7/a2/a4,-(a7)
[00044646] 4fef ffee                 lea.l      -18(a7),a7
[0004464a] 3f40 0010                 move.w     d0,16(a7)
[0004464e] 3f41 000e                 move.w     d1,14(a7)
[00044652] 45f9 0010 1f12            lea.l      ACSblk,a2
[00044658] 7203                      moveq.l    #3,d1
[0004465a] 2052                      movea.l    (a2),a0
[0004465c] 3028 0010                 move.w     16(a0),d0
[00044660] 4eb9 0006 4da0            jsr        vswr_mode
[00044666] 4242                      clr.w      d2
[00044668] 4241                      clr.w      d1
[0004466a] 2052                      movea.l    (a2),a0
[0004466c] 3028 0010                 move.w     16(a0),d0
[00044670] 4eb9 0006 4f44            jsr        vsl_ends
[00044676] 2052                      movea.l    (a2),a0
[00044678] 3ea8 0008                 move.w     8(a0),(a7)
[0004467c] 3f68 000a 0002            move.w     10(a0),2(a7)
[00044682] 3028 0008                 move.w     8(a0),d0
[00044686] d068 000c                 add.w      12(a0),d0
[0004468a] 5340                      subq.w     #1,d0
[0004468c] 3f40 0004                 move.w     d0,4(a7)
[00044690] 3228 000a                 move.w     10(a0),d1
[00044694] d268 000e                 add.w      14(a0),d1
[00044698] 5341                      subq.w     #1,d1
[0004469a] 3f41 0006                 move.w     d1,6(a7)
[0004469e] 41d7                      lea.l      (a7),a0
[000446a0] 2252                      movea.l    (a2),a1
[000446a2] 3029 0010                 move.w     16(a1),d0
[000446a6] 7201                      moveq.l    #1,d1
[000446a8] 4eb9 0006 3f60            jsr        vs_clip
[000446ae] 2279 000d 99d6            movea.l    _globl,a1
[000446b4] 91c8                      suba.l     a0,a0
[000446b6] 303c 0100                 move.w     #$0100,d0
[000446ba] 4eb9 0006 c914            jsr        mt_graf_mouse
[000446c0] 49f9 0010 4654            lea.l      drags,a4
[000446c6] 4243                      clr.w      d3
[000446c8] 3943 fffe                 move.w     d3,-2(a4)
[000446cc] 6000 0138                 bra        drag_draw_1
drag_draw_8:
[000446d0] b67c 0200                 cmp.w      #$0200,d3
[000446d4] 6c00 013a                 bge        drag_draw_2
[000446d8] 3003                      move.w     d3,d0
[000446da] e948                      lsl.w      #4,d0
[000446dc] 0c74 0001 000e            cmpi.w     #$0001,14(a4,d0.w)
[000446e2] 6600 00c6                 bne        drag_draw_3
[000446e6] 3a2f 0010                 move.w     16(a7),d5
[000446ea] da74 0000                 add.w      0(a4,d0.w),d5
[000446ee] 3c2f 0010                 move.w     16(a7),d6
[000446f2] dc74 0004                 add.w      4(a4,d0.w),d6
[000446f6] 322f 0010                 move.w     16(a7),d1
[000446fa] d274 0008                 add.w      8(a4,d0.w),d1
[000446fe] 3f41 000c                 move.w     d1,12(a7)
[00044702] 342f 0010                 move.w     16(a7),d2
[00044706] d474 000c                 add.w      12(a4,d0.w),d2
[0004470a] 3f42 0008                 move.w     d2,8(a7)
[0004470e] 3e2f 000e                 move.w     14(a7),d7
[00044712] de74 0002                 add.w      2(a4,d0.w),d7
[00044716] 382f 000e                 move.w     14(a7),d4
[0004471a] d874 0006                 add.w      6(a4,d0.w),d4
[0004471e] 322f 000e                 move.w     14(a7),d1
[00044722] d274 000a                 add.w      10(a4,d0.w),d1
[00044726] 3f41 000a                 move.w     d1,10(a7)
[0004472a] 2052                      movea.l    (a2),a0
[0004472c] be68 000a                 cmp.w      10(a0),d7
[00044730] 6c06                      bge.s      drag_draw_4
[00044732] 7efe                      moveq.l    #-2,d7
[00044734] de68 000a                 add.w      10(a0),d7
drag_draw_4:
[00044738] 2052                      movea.l    (a2),a0
[0004473a] b868 000a                 cmp.w      10(a0),d4
[0004473e] 6c06                      bge.s      drag_draw_5
[00044740] 78fe                      moveq.l    #-2,d4
[00044742] d868 000a                 add.w      10(a0),d4
drag_draw_5:
[00044746] 3407                      move.w     d7,d2
[00044748] 322f 000c                 move.w     12(a7),d1
[0004474c] 3006                      move.w     d6,d0
[0004474e] 6100 faf2                 bsr        dotted_xline
[00044752] 3404                      move.w     d4,d2
[00044754] 3206                      move.w     d6,d1
[00044756] 3005                      move.w     d5,d0
[00044758] 6100 fae8                 bsr        dotted_xline
[0004475c] 3404                      move.w     d4,d2
[0004475e] 322f 0008                 move.w     8(a7),d1
[00044762] 302f 000c                 move.w     12(a7),d0
[00044766] 6100 fada                 bsr        dotted_xline
[0004476a] 342f 000a                 move.w     10(a7),d2
[0004476e] 322f 0008                 move.w     8(a7),d1
[00044772] 3005                      move.w     d5,d0
[00044774] 6100 facc                 bsr        dotted_xline
[00044778] 3405                      move.w     d5,d2
[0004477a] 322f 000a                 move.w     10(a7),d1
[0004477e] 3004                      move.w     d4,d0
[00044780] 6100 fb60                 bsr        dotted_yline
[00044784] 3406                      move.w     d6,d2
[00044786] 3204                      move.w     d4,d1
[00044788] 3007                      move.w     d7,d0
[0004478a] 6100 fb56                 bsr        dotted_yline
[0004478e] 342f 000c                 move.w     12(a7),d2
[00044792] 3204                      move.w     d4,d1
[00044794] 3007                      move.w     d7,d0
[00044796] 6100 fb4a                 bsr        dotted_yline
[0004479a] 342f 0008                 move.w     8(a7),d2
[0004479e] 322f 000a                 move.w     10(a7),d1
[000447a2] 3004                      move.w     d4,d0
[000447a4] 6100 fb3c                 bsr        dotted_yline
[000447a8] 605a                      bra.s      drag_draw_6
drag_draw_3:
[000447aa] 3a2f 0010                 move.w     16(a7),d5
[000447ae] 3003                      move.w     d3,d0
[000447b0] e948                      lsl.w      #4,d0
[000447b2] da74 0000                 add.w      0(a4,d0.w),d5
[000447b6] 3c2f 0010                 move.w     16(a7),d6
[000447ba] dc74 0004                 add.w      4(a4,d0.w),d6
[000447be] 3e2f 000e                 move.w     14(a7),d7
[000447c2] de74 0002                 add.w      2(a4,d0.w),d7
[000447c6] 382f 000e                 move.w     14(a7),d4
[000447ca] d874 0006                 add.w      6(a4,d0.w),d4
[000447ce] 2052                      movea.l    (a2),a0
[000447d0] be68 000a                 cmp.w      10(a0),d7
[000447d4] 6c06                      bge.s      drag_draw_7
[000447d6] 7efe                      moveq.l    #-2,d7
[000447d8] de68 000a                 add.w      10(a0),d7
drag_draw_7:
[000447dc] 3407                      move.w     d7,d2
[000447de] 3206                      move.w     d6,d1
[000447e0] 3005                      move.w     d5,d0
[000447e2] 6100 fa5e                 bsr        dotted_xline
[000447e6] 3404                      move.w     d4,d2
[000447e8] 3206                      move.w     d6,d1
[000447ea] 3005                      move.w     d5,d0
[000447ec] 6100 fa54                 bsr        dotted_xline
[000447f0] 3405                      move.w     d5,d2
[000447f2] 3204                      move.w     d4,d1
[000447f4] 3007                      move.w     d7,d0
[000447f6] 6100 faea                 bsr        dotted_yline
[000447fa] 3406                      move.w     d6,d2
[000447fc] 3204                      move.w     d4,d1
[000447fe] 3007                      move.w     d7,d0
[00044800] 6100 fae0                 bsr        dotted_yline
drag_draw_6:
[00044804] 5243                      addq.w     #1,d3
drag_draw_1:
[00044806] 2052                      movea.l    (a2),a0
[00044808] b668 0246                 cmp.w      582(a0),d3
[0004480c] 6d00 fec2                 blt        drag_draw_8
drag_draw_2:
[00044810] 2279 000d 99d6            movea.l    _globl,a1
[00044816] 91c8                      suba.l     a0,a0
[00044818] 303c 0101                 move.w     #$0101,d0
[0004481c] 4eb9 0006 c914            jsr        mt_graf_mouse
[00044822] 41d7                      lea.l      (a7),a0
[00044824] 4241                      clr.w      d1
[00044826] 2252                      movea.l    (a2),a1
[00044828] 3029 0010                 move.w     16(a1),d0
[0004482c] 4eb9 0006 3f60            jsr        vs_clip
[00044832] 426c fffe                 clr.w      -2(a4)
[00044836] 4fef 0012                 lea.l      18(a7),a7
[0004483a] 4cdf 14f8                 movem.l    (a7)+,d3-d7/a2/a4
[0004483e] 4e75                      rts

Adr_start:
[00044840] 2079 0010 1f12            movea.l    ACSblk,a0
[00044846] 4268 0248                 clr.w      584(a0)
[0004484a] 4e75                      rts

Adr_next:
[0004484c] 41f9 0010 1f12            lea.l      ACSblk,a0
[00044852] 2250                      movea.l    (a0),a1
[00044854] 3029 0248                 move.w     584(a1),d0
[00044858] b069 0246                 cmp.w      582(a1),d0
[0004485c] 6d04                      blt.s      Adr_next_1
[0004485e] 70ff                      moveq.l    #-1,d0
[00044860] 4e75                      rts
Adr_next_1:
[00044862] 2250                      movea.l    (a0),a1
[00044864] 3029 0248                 move.w     584(a1),d0
[00044868] 5269 0248                 addq.w     #1,584(a1)
[0004486c] 48c0                      ext.l      d0
[0004486e] d080                      add.l      d0,d0
[00044870] 2250                      movea.l    (a0),a1
[00044872] 2269 0254                 movea.l    596(a1),a1
[00044876] 3031 0800                 move.w     0(a1,d0.l),d0
[0004487a] 4e75                      rts

Adr_add:
[0004487c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00044880] 554f                      subq.w     #2,a7
[00044882] 2448                      movea.l    a0,a2
[00044884] 3600                      move.w     d0,d3
[00044886] 47f9 0010 1f12            lea.l      ACSblk,a3
[0004488c] 2053                      movea.l    (a3),a0
[0004488e] b5e8 0240                 cmpa.l     576(a0),a2
[00044892] 670c                      beq.s      Adr_add_1
[00044894] 4eb9 0004 4a26            jsr        Adr_unselect
[0004489a] 2053                      movea.l    (a3),a0
[0004489c] 214a 0240                 move.l     a2,576(a0)
Adr_add_1:
[000448a0] 3003                      move.w     d3,d0
[000448a2] c07c 1000                 and.w      #$1000,d0
[000448a6] 6706                      beq.s      Adr_add_2
[000448a8] 286a 0018                 movea.l    24(a2),a4
[000448ac] 6004                      bra.s      Adr_add_3
Adr_add_2:
[000448ae] 286a 0014                 movea.l    20(a2),a4
Adr_add_3:
[000448b2] 4240                      clr.w      d0
[000448b4] 6014                      bra.s      Adr_add_4
Adr_add_6:
[000448b6] 3200                      move.w     d0,d1
[000448b8] 48c1                      ext.l      d1
[000448ba] d281                      add.l      d1,d1
[000448bc] 2053                      movea.l    (a3),a0
[000448be] 2268 0254                 movea.l    596(a0),a1
[000448c2] b671 1800                 cmp.w      0(a1,d1.l),d3
[000448c6] 675a                      beq.s      Adr_add_5
[000448c8] 5240                      addq.w     #1,d0
Adr_add_4:
[000448ca] 2053                      movea.l    (a3),a0
[000448cc] b068 0246                 cmp.w      582(a0),d0
[000448d0] 6de4                      blt.s      Adr_add_6
[000448d2] 3028 0246                 move.w     582(a0),d0
[000448d6] b068 0244                 cmp.w      580(a0),d0
[000448da] 6c46                      bge.s      Adr_add_5
[000448dc] 7201                      moveq.l    #1,d1
[000448de] 3003                      move.w     d3,d0
[000448e0] c07c 0fff                 and.w      #$0FFF,d0
[000448e4] 48c0                      ext.l      d0
[000448e6] 2400                      move.l     d0,d2
[000448e8] d482                      add.l      d2,d2
[000448ea] d480                      add.l      d0,d2
[000448ec] e78a                      lsl.l      #3,d2
[000448ee] 8274 280a                 or.w       10(a4,d2.l),d1
[000448f2] 226a 0066                 movea.l    102(a2),a1
[000448f6] 204a                      movea.l    a2,a0
[000448f8] 3003                      move.w     d3,d0
[000448fa] 4e91                      jsr        (a1)
[000448fc] 2053                      movea.l    (a3),a0
[000448fe] 3028 0246                 move.w     582(a0),d0
[00044902] 5268 0246                 addq.w     #1,582(a0)
[00044906] 48c0                      ext.l      d0
[00044908] d080                      add.l      d0,d0
[0004490a] 2053                      movea.l    (a3),a0
[0004490c] 2268 0254                 movea.l    596(a0),a1
[00044910] 3383 0800                 move.w     d3,0(a1,d0.l)
[00044914] 3e83                      move.w     d3,(a7)
[00044916] 43d7                      lea.l      (a7),a1
[00044918] 7005                      moveq.l    #5,d0
[0004491a] 204a                      movea.l    a2,a0
[0004491c] 266a 0004                 movea.l    4(a2),a3
[00044920] 4e93                      jsr        (a3)
Adr_add_5:
[00044922] 544f                      addq.w     #2,a7
[00044924] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00044928] 4e75                      rts

Adr_del:
[0004492a] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0004492e] 5d4f                      subq.w     #6,a7
[00044930] 2448                      movea.l    a0,a2
[00044932] 3600                      move.w     d0,d3
[00044934] 47f9 0010 1f12            lea.l      ACSblk,a3
[0004493a] 2053                      movea.l    (a3),a0
[0004493c] b5e8 0240                 cmpa.l     576(a0),a2
[00044940] 6600 00dc                 bne        Adr_del_1
[00044944] 3003                      move.w     d3,d0
[00044946] c07c 1000                 and.w      #$1000,d0
[0004494a] 6706                      beq.s      Adr_del_2
[0004494c] 2eaa 0018                 move.l     24(a2),(a7)
[00044950] 6004                      bra.s      Adr_del_3
Adr_del_2:
[00044952] 2eaa 0014                 move.l     20(a2),(a7)
Adr_del_3:
[00044956] 2053                      movea.l    (a3),a0
[00044958] 3828 0246                 move.w     582(a0),d4
[0004495c] 2a68 0254                 movea.l    596(a0),a5
[00044960] 6000 00aa                 bra        Adr_del_4
Adr_del_9:
[00044964] b655                      cmp.w      (a5),d3
[00044966] 6600 00a0                 bne        Adr_del_5
[0004496a] 3403                      move.w     d3,d2
[0004496c] c47c 0fff                 and.w      #$0FFF,d2
[00044970] 48c2                      ext.l      d2
[00044972] 2002                      move.l     d2,d0
[00044974] d080                      add.l      d0,d0
[00044976] d082                      add.l      d2,d0
[00044978] e788                      lsl.l      #3,d0
[0004497a] 2057                      movea.l    (a7),a0
[0004497c] 3230 080a                 move.w     10(a0,d0.l),d1
[00044980] c27c fffe                 and.w      #$FFFE,d1
[00044984] 226a 0066                 movea.l    102(a2),a1
[00044988] 204a                      movea.l    a2,a0
[0004498a] 3003                      move.w     d3,d0
[0004498c] 4e91                      jsr        (a1)
[0004498e] 2053                      movea.l    (a3),a0
[00044990] 3028 0246                 move.w     582(a0),d0
[00044994] 9044                      sub.w      d4,d0
[00044996] b068 0248                 cmp.w      584(a0),d0
[0004499a] 6c04                      bge.s      Adr_del_6
[0004499c] 5368 0248                 subq.w     #1,584(a0)
Adr_del_6:
[000449a0] 2053                      movea.l    (a3),a0
[000449a2] 5368 0246                 subq.w     #1,582(a0)
[000449a6] 3004                      move.w     d4,d0
[000449a8] e948                      lsl.w      #4,d0
[000449aa] 49f9 0010 4654            lea.l      drags,a4
[000449b0] d8c0                      adda.w     d0,a4
[000449b2] 5344                      subq.w     #1,d4
[000449b4] 603a                      bra.s      Adr_del_7
Adr_del_8:
[000449b6] 38ac 0010                 move.w     16(a4),(a4)
[000449ba] 396c 0012 0002            move.w     18(a4),2(a4)
[000449c0] 396c 0014 0004            move.w     20(a4),4(a4)
[000449c6] 396c 0016 0006            move.w     22(a4),6(a4)
[000449cc] 396c 0018 0008            move.w     24(a4),8(a4)
[000449d2] 396c 001a 000a            move.w     26(a4),10(a4)
[000449d8] 396c 001c 000c            move.w     28(a4),12(a4)
[000449de] 396c 001e 000e            move.w     30(a4),14(a4)
[000449e4] 3aad 0002                 move.w     2(a5),(a5)
[000449e8] 5344                      subq.w     #1,d4
[000449ea] 49ec fff0                 lea.l      -16(a4),a4
[000449ee] 544d                      addq.w     #2,a5
Adr_del_7:
[000449f0] 4a44                      tst.w      d4
[000449f2] 6ec2                      bgt.s      Adr_del_8
[000449f4] 3f43 0004                 move.w     d3,4(a7)
[000449f8] 43ef 0004                 lea.l      4(a7),a1
[000449fc] 7006                      moveq.l    #6,d0
[000449fe] 204a                      movea.l    a2,a0
[00044a00] 286a 0004                 movea.l    4(a2),a4
[00044a04] 4e94                      jsr        (a4)
[00044a06] 6016                      bra.s      Adr_del_1
Adr_del_5:
[00044a08] 5344                      subq.w     #1,d4
[00044a0a] 544d                      addq.w     #2,a5
Adr_del_4:
[00044a0c] 4a44                      tst.w      d4
[00044a0e] 6e00 ff54                 bgt        Adr_del_9
[00044a12] 2053                      movea.l    (a3),a0
[00044a14] 3028 0246                 move.w     582(a0),d0
[00044a18] 6604                      bne.s      Adr_del_1
[00044a1a] 42a8 0240                 clr.l      576(a0)
Adr_del_1:
[00044a1e] 5c4f                      addq.w     #6,a7
[00044a20] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00044a24] 4e75                      rts

Adr_unselect:
[00044a26] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00044a2a] 45f9 0010 1f12            lea.l      ACSblk,a2
[00044a30] 2052                      movea.l    (a2),a0
[00044a32] 3028 0246                 move.w     582(a0),d0
[00044a36] 6f00 008c                 ble        Adr_unselect_1
[00044a3a] 2668 0240                 movea.l    576(a0),a3
[00044a3e] 4243                      clr.w      d3
[00044a40] 6064                      bra.s      Adr_unselect_2
Adr_unselect_5:
[00044a42] 3003                      move.w     d3,d0
[00044a44] 48c0                      ext.l      d0
[00044a46] d080                      add.l      d0,d0
[00044a48] 2052                      movea.l    (a2),a0
[00044a4a] 2268 0254                 movea.l    596(a0),a1
[00044a4e] 3831 0800                 move.w     0(a1,d0.l),d4
[00044a52] 3204                      move.w     d4,d1
[00044a54] c27c 1000                 and.w      #$1000,d1
[00044a58] 6728                      beq.s      Adr_unselect_3
[00044a5a] 3004                      move.w     d4,d0
[00044a5c] c07c 0fff                 and.w      #$0FFF,d0
[00044a60] 48c0                      ext.l      d0
[00044a62] 2400                      move.l     d0,d2
[00044a64] d482                      add.l      d2,d2
[00044a66] d480                      add.l      d0,d2
[00044a68] e78a                      lsl.l      #3,d2
[00044a6a] 206b 0018                 movea.l    24(a3),a0
[00044a6e] 3230 280a                 move.w     10(a0,d2.l),d1
[00044a72] c27c fffe                 and.w      #$FFFE,d1
[00044a76] 226b 0066                 movea.l    102(a3),a1
[00044a7a] 204b                      movea.l    a3,a0
[00044a7c] 3004                      move.w     d4,d0
[00044a7e] 4e91                      jsr        (a1)
[00044a80] 6022                      bra.s      Adr_unselect_4
Adr_unselect_3:
[00044a82] 3404                      move.w     d4,d2
[00044a84] 48c2                      ext.l      d2
[00044a86] 2002                      move.l     d2,d0
[00044a88] d080                      add.l      d0,d0
[00044a8a] d082                      add.l      d2,d0
[00044a8c] e788                      lsl.l      #3,d0
[00044a8e] 206b 0014                 movea.l    20(a3),a0
[00044a92] 3230 080a                 move.w     10(a0,d0.l),d1
[00044a96] c27c fffe                 and.w      #$FFFE,d1
[00044a9a] 226b 0066                 movea.l    102(a3),a1
[00044a9e] 204b                      movea.l    a3,a0
[00044aa0] 3004                      move.w     d4,d0
[00044aa2] 4e91                      jsr        (a1)
Adr_unselect_4:
[00044aa4] 5243                      addq.w     #1,d3
Adr_unselect_2:
[00044aa6] 2052                      movea.l    (a2),a0
[00044aa8] b668 0246                 cmp.w      582(a0),d3
[00044aac] 6d94                      blt.s      Adr_unselect_5
[00044aae] 4268 0246                 clr.w      582(a0)
[00044ab2] 2052                      movea.l    (a2),a0
[00044ab4] 42a8 0240                 clr.l      576(a0)
[00044ab8] 93c9                      suba.l     a1,a1
[00044aba] 7006                      moveq.l    #6,d0
[00044abc] 204b                      movea.l    a3,a0
[00044abe] 246b 0004                 movea.l    4(a3),a2
[00044ac2] 4e92                      jsr        (a2)
Adr_unselect_1:
[00044ac4] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00044ac8] 4e75                      rts

rect_find:
[00044aca] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[00044ace] 4fef ffee                 lea.l      -18(a7),a7
[00044ad2] 2a48                      movea.l    a0,a5
[00044ad4] 2f49 000e                 move.l     a1,14(a7)
[00044ad8] 3f40 000c                 move.w     d0,12(a7)
[00044adc] 3f41 000a                 move.w     d1,10(a7)
[00044ae0] 3f42 0008                 move.w     d2,8(a7)
[00044ae4] 286f 003a                 movea.l    58(a7),a4
[00044ae8] 246f 003e                 movea.l    62(a7),a2
[00044aec] 48c0                      ext.l      d0
[00044aee] 2400                      move.l     d0,d2
[00044af0] d482                      add.l      d2,d2
[00044af2] d480                      add.l      d0,d2
[00044af4] e78a                      lsl.l      #3,d2
[00044af6] 3831 2802                 move.w     2(a1,d2.l),d4
[00044afa] 6b00 01d0                 bmi        rect_find_1
[00044afe] 6000 01c4                 bra        rect_find_2
rect_find_16:
[00044b02] 3204                      move.w     d4,d1
[00044b04] 48c1                      ext.l      d1
[00044b06] 2001                      move.l     d1,d0
[00044b08] d080                      add.l      d0,d0
[00044b0a] d081                      add.l      d1,d0
[00044b0c] e788                      lsl.l      #3,d0
[00044b0e] 266f 000e                 movea.l    14(a7),a3
[00044b12] d7c0                      adda.l     d0,a3
[00044b14] 3c2f 000a                 move.w     10(a7),d6
[00044b18] dc6b 0010                 add.w      16(a3),d6
[00044b1c] 3006                      move.w     d6,d0
[00044b1e] d06b 0014                 add.w      20(a3),d0
[00044b22] 5340                      subq.w     #1,d0
[00044b24] 362f 0008                 move.w     8(a7),d3
[00044b28] d66b 0012                 add.w      18(a3),d3
[00044b2c] 3a03                      move.w     d3,d5
[00044b2e] da6b 0016                 add.w      22(a3),d5
[00044b32] 5345                      subq.w     #1,d5
[00044b34] 3e2b 0006                 move.w     6(a3),d7
[00044b38] ce7c 00ff                 and.w      #$00FF,d7
[00044b3c] be7c 001f                 cmp.w      #$001F,d7
[00044b40] 6706                      beq.s      rect_find_3
[00044b42] be7c 0021                 cmp.w      #$0021,d7
[00044b46] 6650                      bne.s      rect_find_4
rect_find_3:
[00044b48] 206b 000c                 movea.l    12(a3),a0
[00044b4c] dc68 0012                 add.w      18(a0),d6
[00044b50] 3006                      move.w     d6,d0
[00044b52] d068 0016                 add.w      22(a0),d0
[00044b56] 5340                      subq.w     #1,d0
[00044b58] d668 0014                 add.w      20(a0),d3
[00044b5c] 3a03                      move.w     d3,d5
[00044b5e] da68 0018                 add.w      24(a0),d5
[00044b62] 5345                      subq.w     #1,d5
[00044b64] 322f 000a                 move.w     10(a7),d1
[00044b68] d26b 0010                 add.w      16(a3),d1
[00044b6c] d268 001a                 add.w      26(a0),d1
[00044b70] 3f41 0006                 move.w     d1,6(a7)
[00044b74] d268 001e                 add.w      30(a0),d1
[00044b78] 5341                      subq.w     #1,d1
[00044b7a] 3f41 0004                 move.w     d1,4(a7)
[00044b7e] 342f 0008                 move.w     8(a7),d2
[00044b82] d46b 0012                 add.w      18(a3),d2
[00044b86] d468 001c                 add.w      28(a0),d2
[00044b8a] 3f42 0002                 move.w     d2,2(a7)
[00044b8e] d468 0020                 add.w      32(a0),d2
[00044b92] 5342                      subq.w     #1,d2
[00044b94] 3e82                      move.w     d2,(a7)
[00044b96] 6010                      bra.s      rect_find_5
rect_find_4:
[00044b98] 72ff                      moveq.l    #-1,d1
[00044b9a] 3e81                      move.w     d1,(a7)
[00044b9c] 3f41 0002                 move.w     d1,2(a7)
[00044ba0] 3f41 0004                 move.w     d1,4(a7)
[00044ba4] 3f41 0006                 move.w     d1,6(a7)
rect_find_5:
[00044ba8] ba6c 0002                 cmp.w      2(a4),d5
[00044bac] 6d1e                      blt.s      rect_find_6
[00044bae] 322c 0002                 move.w     2(a4),d1
[00044bb2] d26c 0006                 add.w      6(a4),d1
[00044bb6] 5341                      subq.w     #1,d1
[00044bb8] b641                      cmp.w      d1,d3
[00044bba] 6e10                      bgt.s      rect_find_6
[00044bbc] b054                      cmp.w      (a4),d0
[00044bbe] 6d0c                      blt.s      rect_find_6
[00044bc0] 3014                      move.w     (a4),d0
[00044bc2] d06c 0004                 add.w      4(a4),d0
[00044bc6] 5340                      subq.w     #1,d0
[00044bc8] bc40                      cmp.w      d0,d6
[00044bca] 6f32                      ble.s      rect_find_7
rect_find_6:
[00044bcc] 3017                      move.w     (a7),d0
[00044bce] b06c 0002                 cmp.w      2(a4),d0
[00044bd2] 6d6e                      blt.s      rect_find_8
[00044bd4] 322c 0002                 move.w     2(a4),d1
[00044bd8] d26c 0006                 add.w      6(a4),d1
[00044bdc] 5341                      subq.w     #1,d1
[00044bde] 342f 0002                 move.w     2(a7),d2
[00044be2] b441                      cmp.w      d1,d2
[00044be4] 6e5c                      bgt.s      rect_find_8
[00044be6] 3a2f 0004                 move.w     4(a7),d5
[00044bea] ba54                      cmp.w      (a4),d5
[00044bec] 6d54                      blt.s      rect_find_8
[00044bee] 3014                      move.w     (a4),d0
[00044bf0] d06c 0004                 add.w      4(a4),d0
[00044bf4] 5340                      subq.w     #1,d0
[00044bf6] 306f 0006                 movea.w    6(a7),a0
[00044bfa] b0c0                      cmpa.w     d0,a0
[00044bfc] 6e44                      bgt.s      rect_find_8
rect_find_7:
[00044bfe] 302b 0008                 move.w     8(a3),d0
[00044c02] c07c 2000                 and.w      #$2000,d0
[00044c06] 6700 009a                 beq        rect_find_9
[00044c0a] 323c 0080                 move.w     #$0080,d1
[00044c0e] c26b 0008                 and.w      8(a3),d1
[00044c12] 6600 008e                 bne        rect_find_9
[00044c16] 7408                      moveq.l    #8,d2
[00044c18] c46b 000a                 and.w      10(a3),d2
[00044c1c] 6600 0084                 bne        rect_find_9
[00044c20] 206f 000e                 movea.l    14(a7),a0
[00044c24] b1ed 0014                 cmpa.l     20(a5),a0
[00044c28] 660a                      bne.s      rect_find_10
[00044c2a] 204d                      movea.l    a5,a0
[00044c2c] 3004                      move.w     d4,d0
[00044c2e] 6100 fc4c                 bsr        Adr_add
[00044c32] 606e                      bra.s      rect_find_9
rect_find_10:
[00044c34] 3004                      move.w     d4,d0
[00044c36] 807c 1000                 or.w       #$1000,d0
[00044c3a] 204d                      movea.l    a5,a0
[00044c3c] 6100 fc3e                 bsr        Adr_add
[00044c40] 6060                      bra.s      rect_find_9
rect_find_8:
[00044c42] 7001                      moveq.l    #1,d0
[00044c44] 3404                      move.w     d4,d2
[00044c46] 48c2                      ext.l      d2
[00044c48] 2202                      move.l     d2,d1
[00044c4a] d281                      add.l      d1,d1
[00044c4c] d282                      add.l      d2,d1
[00044c4e] e789                      lsl.l      #3,d1
[00044c50] 206f 000e                 movea.l    14(a7),a0
[00044c54] c070 180a                 and.w      10(a0,d1.l),d0
[00044c58] 6748                      beq.s      rect_find_9
[00044c5a] 2a2a 0014                 move.l     20(a2),d5
[00044c5e] 6722                      beq.s      rect_find_11
[00044c60] 4247                      clr.w      d7
[00044c62] 6018                      bra.s      rect_find_12
rect_find_13:
[00044c64] 3007                      move.w     d7,d0
[00044c66] 48c0                      ext.l      d0
[00044c68] d080                      add.l      d0,d0
[00044c6a] 206a 0014                 movea.l    20(a2),a0
[00044c6e] 3230 0800                 move.w     0(a0,d0.l),d1
[00044c72] c27c 0fff                 and.w      #$0FFF,d1
[00044c76] b841                      cmp.w      d1,d4
[00044c78] 6728                      beq.s      rect_find_9
[00044c7a] 5247                      addq.w     #1,d7
rect_find_12:
[00044c7c] be6a 0006                 cmp.w      6(a2),d7
[00044c80] 6de2                      blt.s      rect_find_13
rect_find_11:
[00044c82] 206f 000e                 movea.l    14(a7),a0
[00044c86] b1ed 0014                 cmpa.l     20(a5),a0
[00044c8a] 660a                      bne.s      rect_find_14
[00044c8c] 3004                      move.w     d4,d0
[00044c8e] 204d                      movea.l    a5,a0
[00044c90] 6100 fc98                 bsr        Adr_del
[00044c94] 600c                      bra.s      rect_find_9
rect_find_14:
[00044c96] 3004                      move.w     d4,d0
[00044c98] 807c 1000                 or.w       #$1000,d0
[00044c9c] 204d                      movea.l    a5,a0
[00044c9e] 6100 fc8a                 bsr        Adr_del
rect_find_9:
[00044ca2] 303c 0080                 move.w     #$0080,d0
[00044ca6] c06b 0008                 and.w      8(a3),d0
[00044caa] 6616                      bne.s      rect_find_15
[00044cac] 2f0a                      move.l     a2,-(a7)
[00044cae] 2f0c                      move.l     a4,-(a7)
[00044cb0] 3403                      move.w     d3,d2
[00044cb2] 3206                      move.w     d6,d1
[00044cb4] 226f 0016                 movea.l    22(a7),a1
[00044cb8] 204d                      movea.l    a5,a0
[00044cba] 3004                      move.w     d4,d0
[00044cbc] 6100 fe0c                 bsr        rect_find
[00044cc0] 504f                      addq.w     #8,a7
rect_find_15:
[00044cc2] 3813                      move.w     (a3),d4
rect_find_2:
[00044cc4] b86f 000c                 cmp.w      12(a7),d4
[00044cc8] 6600 fe38                 bne        rect_find_16
rect_find_1:
[00044ccc] 4fef 0012                 lea.l      18(a7),a7
[00044cd0] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[00044cd4] 4e75                      rts

Adr_box:
[00044cd6] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00044cda] 4fef ffbe                 lea.l      -66(a7),a7
[00044cde] 3800                      move.w     d0,d4
[00044ce0] 3a01                      move.w     d1,d5
[00044ce2] 426f 0024                 clr.w      36(a7)
[00044ce6] 2079 000d 99d6            movea.l    _globl,a0
[00044cec] 4eb9 0006 d54c            jsr        mt_wind_find
[00044cf2] 4eb9 0004 e5ea            jsr        Awi_wid
[00044cf8] 2448                      movea.l    a0,a2
[00044cfa] 200a                      move.l     a2,d0
[00044cfc] 6700 0620                 beq        Adr_box_1
[00044d00] 47f9 0010 1f12            lea.l      ACSblk,a3
[00044d06] 7003                      moveq.l    #3,d0
[00044d08] 2053                      movea.l    (a3),a0
[00044d0a] c068 0266                 and.w      614(a0),d0
[00044d0e] 660e                      bne.s      Adr_box_2
[00044d10] 6100 fd14                 bsr        Adr_unselect
[00044d14] 42af 0014                 clr.l      20(a7)
[00044d18] 426f 0028                 clr.w      40(a7)
[00044d1c] 6050                      bra.s      Adr_box_3
Adr_box_2:
[00044d1e] 2053                      movea.l    (a3),a0
[00044d20] 3028 0244                 move.w     580(a0),d0
[00044d24] 48c0                      ext.l      d0
[00044d26] d080                      add.l      d0,d0
[00044d28] 4eb9 0004 7cc8            jsr        Ax_malloc
[00044d2e] 2f48 0014                 move.l     a0,20(a7)
[00044d32] 6700 05ea                 beq        Adr_box_1
[00044d36] 2253                      movea.l    (a3),a1
[00044d38] 3229 0244                 move.w     580(a1),d1
[00044d3c] 48c1                      ext.l      d1
[00044d3e] d281                      add.l      d1,d1
[00044d40] 4240                      clr.w      d0
[00044d42] 4eb9 0007 712e            jsr        memset
[00044d48] 2053                      movea.l    (a3),a0
[00044d4a] 3028 0246                 move.w     582(a0),d0
[00044d4e] 48c0                      ext.l      d0
[00044d50] d080                      add.l      d0,d0
[00044d52] 2268 0254                 movea.l    596(a0),a1
[00044d56] 206f 0014                 movea.l    20(a7),a0
[00044d5a] 4eb9 0007 6f44            jsr        memcpy
[00044d60] 2053                      movea.l    (a3),a0
[00044d62] 3028 0246                 move.w     582(a0),d0
[00044d66] 3f40 0006                 move.w     d0,6(a7)
[00044d6a] 3f40 0028                 move.w     d0,40(a7)
Adr_box_3:
[00044d6e] 2053                      movea.l    (a3),a0
[00044d70] 214a 0240                 move.l     a2,576(a0)
[00044d74] 3f6a 0034 002a            move.w     52(a2),42(a7)
[00044d7a] 3f6a 0036 002c            move.w     54(a2),44(a7)
[00044d80] 3f6a 0038 002e            move.w     56(a2),46(a7)
[00044d86] 3f6a 003a 0030            move.w     58(a2),48(a7)
[00044d8c] 202a 0018                 move.l     24(a2),d0
[00044d90] 6706                      beq.s      Adr_box_4
[00044d92] ba6a 0036                 cmp.w      54(a2),d5
[00044d96] 6d06                      blt.s      Adr_box_5
Adr_box_4:
[00044d98] 426f 0026                 clr.w      38(a7)
[00044d9c] 6018                      bra.s      Adr_box_6
Adr_box_5:
[00044d9e] 3f7c 0001 0026            move.w     #$0001,38(a7)
[00044da4] 206a 0018                 movea.l    24(a2),a0
[00044da8] 3028 0012                 move.w     18(a0),d0
[00044dac] d16f 002c                 add.w      d0,44(a7)
[00044db0] 3f68 0016 0030            move.w     22(a0),48(a7)
Adr_box_6:
[00044db6] 4bef 003a                 lea.l      58(a7),a5
[00044dba] 49ef 0032                 lea.l      50(a7),a4
[00044dbe] 3c04                      move.w     d4,d6
[00044dc0] 3f46 0020                 move.w     d6,32(a7)
[00044dc4] 3a86                      move.w     d6,(a5)
[00044dc6] 3886                      move.w     d6,(a4)
[00044dc8] 3805                      move.w     d5,d4
[00044dca] 3f44 001e                 move.w     d4,30(a7)
[00044dce] 3b44 0002                 move.w     d4,2(a5)
[00044dd2] 3944 0002                 move.w     d4,2(a4)
[00044dd6] 4240                      clr.w      d0
[00044dd8] 3b40 0006                 move.w     d0,6(a5)
[00044ddc] 3940 0006                 move.w     d0,6(a4)
[00044de0] 3b40 0004                 move.w     d0,4(a5)
[00044de4] 3940 0004                 move.w     d0,4(a4)
[00044de8] 93c9                      suba.l     a1,a1
[00044dea] 204a                      movea.l    a2,a0
[00044dec] 2c6a 0004                 movea.l    4(a2),a6
[00044df0] 7014                      moveq.l    #20,d0
[00044df2] 4e96                      jsr        (a6)
[00044df4] 2053                      movea.l    (a3),a0
[00044df6] 2068 023c                 movea.l    572(a0),a0
[00044dfa] 41e8 0044                 lea.l      68(a0),a0
[00044dfe] 4eb9 0004 9898            jsr        Amo_new
[00044e04] 7003                      moveq.l    #3,d0
[00044e06] 4eb9 0005 1e1c            jsr        Awi_update
Adr_box_38:
[00044e0c] 4eb9 0004 9970            jsr        Amo_hide
[00044e12] 7203                      moveq.l    #3,d1
[00044e14] 2053                      movea.l    (a3),a0
[00044e16] 3028 0010                 move.w     16(a0),d0
[00044e1a] 4eb9 0006 4da0            jsr        vswr_mode
[00044e20] 342d 0002                 move.w     2(a5),d2
[00044e24] 3a15                      move.w     (a5),d5
[00044e26] da6d 0004                 add.w      4(a5),d5
[00044e2a] 5345                      subq.w     #1,d5
[00044e2c] 3205                      move.w     d5,d1
[00044e2e] 3015                      move.w     (a5),d0
[00044e30] 6100 f410                 bsr        dotted_xline
[00044e34] ba55                      cmp.w      (a5),d5
[00044e36] 6714                      beq.s      Adr_box_7
[00044e38] 3e2d 0002                 move.w     2(a5),d7
[00044e3c] de6d 0006                 add.w      6(a5),d7
[00044e40] 5347                      subq.w     #1,d7
[00044e42] 3407                      move.w     d7,d2
[00044e44] 3205                      move.w     d5,d1
[00044e46] 3015                      move.w     (a5),d0
[00044e48] 6100 f3f8                 bsr        dotted_xline
Adr_box_7:
[00044e4c] 3415                      move.w     (a5),d2
[00044e4e] 3207                      move.w     d7,d1
[00044e50] 302d 0002                 move.w     2(a5),d0
[00044e54] 6100 f48c                 bsr        dotted_yline
[00044e58] be6d 0002                 cmp.w      2(a5),d7
[00044e5c] 670c                      beq.s      Adr_box_8
[00044e5e] 3405                      move.w     d5,d2
[00044e60] 3207                      move.w     d7,d1
[00044e62] 302d 0002                 move.w     2(a5),d0
[00044e66] 6100 f47a                 bsr        dotted_yline
Adr_box_8:
[00044e6a] 4eb9 0004 9994            jsr        Amo_show
Adr_box_10:
[00044e70] 486f 0018                 pea.l      24(a7)
[00044e74] 43ef 001e                 lea.l      30(a7),a1
[00044e78] 41ef 0020                 lea.l      32(a7),a0
[00044e7c] 2c53                      movea.l    (a3),a6
[00044e7e] 302e 0010                 move.w     16(a6),d0
[00044e82] 4eb9 0006 6eaa            jsr        vq_mouse
[00044e88] 584f                      addq.w     #4,a7
[00044e8a] 302f 0024                 move.w     36(a7),d0
[00044e8e] 6612                      bne.s      Adr_box_9
[00044e90] 322f 001c                 move.w     28(a7),d1
[00044e94] 670c                      beq.s      Adr_box_9
[00044e96] bc6f 001a                 cmp.w      26(a7),d6
[00044e9a] 6606                      bne.s      Adr_box_9
[00044e9c] b86f 0018                 cmp.w      24(a7),d4
[00044ea0] 67ce                      beq.s      Adr_box_10
Adr_box_9:
[00044ea2] 4eb9 0004 9970            jsr        Amo_hide
[00044ea8] 7203                      moveq.l    #3,d1
[00044eaa] 2053                      movea.l    (a3),a0
[00044eac] 3028 0010                 move.w     16(a0),d0
[00044eb0] 4eb9 0006 4da0            jsr        vswr_mode
[00044eb6] 342d 0002                 move.w     2(a5),d2
[00044eba] 3205                      move.w     d5,d1
[00044ebc] 3015                      move.w     (a5),d0
[00044ebe] 6100 f382                 bsr        dotted_xline
[00044ec2] ba55                      cmp.w      (a5),d5
[00044ec4] 6712                      beq.s      Adr_box_11
[00044ec6] 342d 0002                 move.w     2(a5),d2
[00044eca] d46d 0006                 add.w      6(a5),d2
[00044ece] 5342                      subq.w     #1,d2
[00044ed0] 3205                      move.w     d5,d1
[00044ed2] 3015                      move.w     (a5),d0
[00044ed4] 6100 f36c                 bsr        dotted_xline
Adr_box_11:
[00044ed8] 3415                      move.w     (a5),d2
[00044eda] 3207                      move.w     d7,d1
[00044edc] 302d 0002                 move.w     2(a5),d0
[00044ee0] 6100 f400                 bsr        dotted_yline
[00044ee4] be6d 0002                 cmp.w      2(a5),d7
[00044ee8] 670c                      beq.s      Adr_box_12
[00044eea] 3405                      move.w     d5,d2
[00044eec] 3207                      move.w     d7,d1
[00044eee] 302d 0002                 move.w     2(a5),d0
[00044ef2] 6100 f3ee                 bsr        dotted_yline
Adr_box_12:
[00044ef6] 4eb9 0004 9994            jsr        Amo_show
[00044efc] 302f 001c                 move.w     28(a7),d0
[00044f00] 6700 03e2                 beq        Adr_box_13
[00044f04] 3c2f 001a                 move.w     26(a7),d6
[00044f08] 322f 0020                 move.w     32(a7),d1
[00044f0c] b246                      cmp.w      d6,d1
[00044f0e] 6c02                      bge.s      Adr_box_14
[00044f10] 6006                      bra.s      Adr_box_15
Adr_box_14:
[00044f12] 3c2f 001a                 move.w     26(a7),d6
[00044f16] 3206                      move.w     d6,d1
Adr_box_15:
[00044f18] 3881                      move.w     d1,(a4)
[00044f1a] 382f 0018                 move.w     24(a7),d4
[00044f1e] 302f 001e                 move.w     30(a7),d0
[00044f22] b044                      cmp.w      d4,d0
[00044f24] 6c02                      bge.s      Adr_box_16
[00044f26] 6006                      bra.s      Adr_box_17
Adr_box_16:
[00044f28] 382f 0018                 move.w     24(a7),d4
[00044f2c] 3004                      move.w     d4,d0
Adr_box_17:
[00044f2e] 3940 0002                 move.w     d0,2(a4)
[00044f32] 3206                      move.w     d6,d1
[00044f34] 926f 0020                 sub.w      32(a7),d1
[00044f38] 3941 0004                 move.w     d1,4(a4)
[00044f3c] 6a06                      bpl.s      Adr_box_18
[00044f3e] 4441                      neg.w      d1
[00044f40] 3941 0004                 move.w     d1,4(a4)
Adr_box_18:
[00044f44] 526c 0004                 addq.w     #1,4(a4)
[00044f48] 3004                      move.w     d4,d0
[00044f4a] 906f 001e                 sub.w      30(a7),d0
[00044f4e] 3940 0006                 move.w     d0,6(a4)
[00044f52] 6a06                      bpl.s      Adr_box_19
[00044f54] 4440                      neg.w      d0
[00044f56] 3940 0006                 move.w     d0,6(a4)
Adr_box_19:
[00044f5a] 526c 0006                 addq.w     #1,6(a4)
[00044f5e] 426f 0024                 clr.w      36(a7)
[00044f62] 302f 0026                 move.w     38(a7),d0
[00044f66] 6600 02f0                 bne        Adr_box_20
[00044f6a] 362a 0034                 move.w     52(a2),d3
[00044f6e] 322a 003c                 move.w     60(a2),d1
[00044f72] 6f00 00be                 ble        Adr_box_21
[00044f76] b646                      cmp.w      d6,d3
[00044f78] 6f00 00b8                 ble        Adr_box_21
[00044f7c] 342a 0022                 move.w     34(a2),d2
[00044f80] c47c 0a00                 and.w      #$0A00,d2
[00044f84] 6700 00ac                 beq        Adr_box_21
[00044f88] 206a 0014                 movea.l    20(a2),a0
[00044f8c] 3f68 0010 0022            move.w     16(a0),34(a7)
[00044f92] 3a03                      move.w     d3,d5
[00044f94] 9a46                      sub.w      d6,d5
[00044f96] 5245                      addq.w     #1,d5
[00044f98] 48c5                      ext.l      d5
[00044f9a] 2005                      move.l     d5,d0
[00044f9c] eb88                      lsl.l      #5,d0
[00044f9e] 9085                      sub.l      d5,d0
[00044fa0] e588                      lsl.l      #2,d0
[00044fa2] d085                      add.l      d5,d0
[00044fa4] e788                      lsl.l      #3,d0
[00044fa6] 322a 0040                 move.w     64(a2),d1
[00044faa] 48c1                      ext.l      d1
[00044fac] 4eb9 0007 773a            jsr        _ldiv
[00044fb2] 322a 003c                 move.w     60(a2),d1
[00044fb6] 9240                      sub.w      d0,d1
[00044fb8] 5341                      subq.w     #1,d1
[00044fba] 6c04                      bge.s      Adr_box_22
[00044fbc] 7a01                      moveq.l    #1,d5
[00044fbe] 6026                      bra.s      Adr_box_23
Adr_box_22:
[00044fc0] 3203                      move.w     d3,d1
[00044fc2] 9246                      sub.w      d6,d1
[00044fc4] 5241                      addq.w     #1,d1
[00044fc6] 48c1                      ext.l      d1
[00044fc8] 2001                      move.l     d1,d0
[00044fca] eb88                      lsl.l      #5,d0
[00044fcc] 9081                      sub.l      d1,d0
[00044fce] e588                      lsl.l      #2,d0
[00044fd0] d081                      add.l      d1,d0
[00044fd2] e788                      lsl.l      #3,d0
[00044fd4] 322a 0040                 move.w     64(a2),d1
[00044fd8] 48c1                      ext.l      d1
[00044fda] 4eb9 0007 773a            jsr        _ldiv
[00044fe0] 3a2a 003c                 move.w     60(a2),d5
[00044fe4] 9a40                      sub.w      d0,d5
Adr_box_23:
[00044fe6] 302a 003c                 move.w     60(a2),d0
[00044fea] 9045                      sub.w      d5,d0
[00044fec] 322a 0048                 move.w     72(a2),d1
[00044ff0] 4641                      not.w      d1
[00044ff2] c27c 00ff                 and.w      #$00FF,d1
[00044ff6] 5241                      addq.w     #1,d1
[00044ff8] b041                      cmp.w      d1,d0
[00044ffa] 6c0e                      bge.s      Adr_box_24
[00044ffc] 204a                      movea.l    a2,a0
[00044ffe] 226a 007a                 movea.l    122(a2),a1
[00045002] 7006                      moveq.l    #6,d0
[00045004] 7201                      moveq.l    #1,d1
[00045006] 4e91                      jsr        (a1)
[00045008] 600a                      bra.s      Adr_box_25
Adr_box_24:
[0004500a] 3005                      move.w     d5,d0
[0004500c] 204a                      movea.l    a2,a0
[0004500e] 226a 007e                 movea.l    126(a2),a1
[00045012] 4e91                      jsr        (a1)
Adr_box_25:
[00045014] 3e2f 0022                 move.w     34(a7),d7
[00045018] 4447                      neg.w      d7
[0004501a] 206a 0014                 movea.l    20(a2),a0
[0004501e] de68 0010                 add.w      16(a0),d7
[00045022] df6c 0004                 add.w      d7,4(a4)
[00045026] 9f54                      sub.w      d7,(a4)
[00045028] df6f 0020                 add.w      d7,32(a7)
[0004502c] 3f7c 0001 0024            move.w     #$0001,36(a7)
Adr_box_21:
[00045032] 362a 0036                 move.w     54(a2),d3
[00045036] 302a 003e                 move.w     62(a2),d0
[0004503a] 6f00 00c2                 ble        Adr_box_26
[0004503e] b644                      cmp.w      d4,d3
[00045040] 6f00 00bc                 ble        Adr_box_26
[00045044] 322a 0022                 move.w     34(a2),d1
[00045048] c27c 0140                 and.w      #$0140,d1
[0004504c] 6700 00b0                 beq        Adr_box_26
[00045050] 206a 0014                 movea.l    20(a2),a0
[00045054] 3f68 0012 0022            move.w     18(a0),34(a7)
[0004505a] 3403                      move.w     d3,d2
[0004505c] 9444                      sub.w      d4,d2
[0004505e] 5242                      addq.w     #1,d2
[00045060] 48c2                      ext.l      d2
[00045062] 2002                      move.l     d2,d0
[00045064] eb88                      lsl.l      #5,d0
[00045066] 9082                      sub.l      d2,d0
[00045068] e588                      lsl.l      #2,d0
[0004506a] d082                      add.l      d2,d0
[0004506c] e788                      lsl.l      #3,d0
[0004506e] 322a 0042                 move.w     66(a2),d1
[00045072] 48c1                      ext.l      d1
[00045074] 4eb9 0007 773a            jsr        _ldiv
[0004507a] 322a 003e                 move.w     62(a2),d1
[0004507e] 9240                      sub.w      d0,d1
[00045080] 5341                      subq.w     #1,d1
[00045082] 6c04                      bge.s      Adr_box_27
[00045084] 7a01                      moveq.l    #1,d5
[00045086] 6026                      bra.s      Adr_box_28
Adr_box_27:
[00045088] 3203                      move.w     d3,d1
[0004508a] 9244                      sub.w      d4,d1
[0004508c] 5241                      addq.w     #1,d1
[0004508e] 48c1                      ext.l      d1
[00045090] 2001                      move.l     d1,d0
[00045092] eb88                      lsl.l      #5,d0
[00045094] 9081                      sub.l      d1,d0
[00045096] e588                      lsl.l      #2,d0
[00045098] d081                      add.l      d1,d0
[0004509a] e788                      lsl.l      #3,d0
[0004509c] 322a 0042                 move.w     66(a2),d1
[000450a0] 48c1                      ext.l      d1
[000450a2] 4eb9 0007 773a            jsr        _ldiv
[000450a8] 3a2a 003e                 move.w     62(a2),d5
[000450ac] 9a40                      sub.w      d0,d5
Adr_box_28:
[000450ae] 302a 003e                 move.w     62(a2),d0
[000450b2] 9045                      sub.w      d5,d0
[000450b4] 322a 0048                 move.w     72(a2),d1
[000450b8] 4641                      not.w      d1
[000450ba] e041                      asr.w      #8,d1
[000450bc] c27c 00ff                 and.w      #$00FF,d1
[000450c0] 5241                      addq.w     #1,d1
[000450c2] b041                      cmp.w      d1,d0
[000450c4] 6c0e                      bge.s      Adr_box_29
[000450c6] 204a                      movea.l    a2,a0
[000450c8] 226a 007a                 movea.l    122(a2),a1
[000450cc] 7002                      moveq.l    #2,d0
[000450ce] 7201                      moveq.l    #1,d1
[000450d0] 4e91                      jsr        (a1)
[000450d2] 600a                      bra.s      Adr_box_30
Adr_box_29:
[000450d4] 3005                      move.w     d5,d0
[000450d6] 204a                      movea.l    a2,a0
[000450d8] 226a 0082                 movea.l    130(a2),a1
[000450dc] 4e91                      jsr        (a1)
Adr_box_30:
[000450de] 3e2f 0022                 move.w     34(a7),d7
[000450e2] 4447                      neg.w      d7
[000450e4] 206a 0014                 movea.l    20(a2),a0
[000450e8] de68 0012                 add.w      18(a0),d7
[000450ec] df6c 0006                 add.w      d7,6(a4)
[000450f0] 9f6c 0002                 sub.w      d7,2(a4)
[000450f4] df6f 001e                 add.w      d7,30(a7)
[000450f8] 3f7c 0001 0024            move.w     #$0001,36(a7)
Adr_box_26:
[000450fe] 362a 0034                 move.w     52(a2),d3
[00045102] d66a 0038                 add.w      56(a2),d3
[00045106] 5343                      subq.w     #1,d3
[00045108] 0c6a 03e8 003c            cmpi.w     #$03E8,60(a2)
[0004510e] 6c00 009a                 bge        Adr_box_31
[00045112] bc43                      cmp.w      d3,d6
[00045114] 6f00 0094                 ble        Adr_box_31
[00045118] 302a 0022                 move.w     34(a2),d0
[0004511c] c07c 0c00                 and.w      #$0C00,d0
[00045120] 6700 0088                 beq        Adr_box_31
[00045124] 206a 0014                 movea.l    20(a2),a0
[00045128] 3f68 0010 0022            move.w     16(a0),34(a7)
[0004512e] 3206                      move.w     d6,d1
[00045130] 9243                      sub.w      d3,d1
[00045132] 5241                      addq.w     #1,d1
[00045134] 48c1                      ext.l      d1
[00045136] 2001                      move.l     d1,d0
[00045138] eb88                      lsl.l      #5,d0
[0004513a] 9081                      sub.l      d1,d0
[0004513c] e588                      lsl.l      #2,d0
[0004513e] d081                      add.l      d1,d0
[00045140] e788                      lsl.l      #3,d0
[00045142] 322a 0040                 move.w     64(a2),d1
[00045146] 48c1                      ext.l      d1
[00045148] 4eb9 0007 773a            jsr        _ldiv
[0004514e] d06a 003c                 add.w      60(a2),d0
[00045152] b07c 03e8                 cmp.w      #$03E8,d0
[00045156] 6f06                      ble.s      Adr_box_32
[00045158] 3a3c 03e8                 move.w     #$03E8,d5
[0004515c] 6026                      bra.s      Adr_box_33
Adr_box_32:
[0004515e] 3206                      move.w     d6,d1
[00045160] 9243                      sub.w      d3,d1
[00045162] 5241                      addq.w     #1,d1
[00045164] 48c1                      ext.l      d1
[00045166] 2001                      move.l     d1,d0
[00045168] eb88                      lsl.l      #5,d0
[0004516a] 9081                      sub.l      d1,d0
[0004516c] e588                      lsl.l      #2,d0
[0004516e] d081                      add.l      d1,d0
[00045170] e788                      lsl.l      #3,d0
[00045172] 322a 0040                 move.w     64(a2),d1
[00045176] 48c1                      ext.l      d1
[00045178] 4eb9 0007 773a            jsr        _ldiv
[0004517e] 2a00                      move.l     d0,d5
[00045180] da6a 003c                 add.w      60(a2),d5
Adr_box_33:
[00045184] 3005                      move.w     d5,d0
[00045186] 204a                      movea.l    a2,a0
[00045188] 226a 007e                 movea.l    126(a2),a1
[0004518c] 4e91                      jsr        (a1)
[0004518e] 3e2f 0022                 move.w     34(a7),d7
[00045192] 206a 0014                 movea.l    20(a2),a0
[00045196] 9e68 0010                 sub.w      16(a0),d7
[0004519a] 9f54                      sub.w      d7,(a4)
[0004519c] df6c 0004                 add.w      d7,4(a4)
[000451a0] 9f6f 0020                 sub.w      d7,32(a7)
[000451a4] 3f7c 0001 0024            move.w     #$0001,36(a7)
Adr_box_31:
[000451aa] 362a 0036                 move.w     54(a2),d3
[000451ae] d66a 003a                 add.w      58(a2),d3
[000451b2] 5343                      subq.w     #1,d3
[000451b4] 0c6a 03e8 003e            cmpi.w     #$03E8,62(a2)
[000451ba] 6c00 009c                 bge        Adr_box_20
[000451be] b843                      cmp.w      d3,d4
[000451c0] 6f00 0096                 ble        Adr_box_20
[000451c4] 302a 0022                 move.w     34(a2),d0
[000451c8] c07c 0180                 and.w      #$0180,d0
[000451cc] 6700 008a                 beq        Adr_box_20
[000451d0] 206a 0014                 movea.l    20(a2),a0
[000451d4] 3f68 0012 0022            move.w     18(a0),34(a7)
[000451da] 3204                      move.w     d4,d1
[000451dc] 9243                      sub.w      d3,d1
[000451de] 5241                      addq.w     #1,d1
[000451e0] 48c1                      ext.l      d1
[000451e2] 2001                      move.l     d1,d0
[000451e4] eb88                      lsl.l      #5,d0
[000451e6] 9081                      sub.l      d1,d0
[000451e8] e588                      lsl.l      #2,d0
[000451ea] d081                      add.l      d1,d0
[000451ec] e788                      lsl.l      #3,d0
[000451ee] 322a 0042                 move.w     66(a2),d1
[000451f2] 48c1                      ext.l      d1
[000451f4] 4eb9 0007 773a            jsr        _ldiv
[000451fa] d06a 003e                 add.w      62(a2),d0
[000451fe] b07c 03e8                 cmp.w      #$03E8,d0
[00045202] 6f06                      ble.s      Adr_box_34
[00045204] 3a3c 03e8                 move.w     #$03E8,d5
[00045208] 6026                      bra.s      Adr_box_35
Adr_box_34:
[0004520a] 3204                      move.w     d4,d1
[0004520c] 9243                      sub.w      d3,d1
[0004520e] 5241                      addq.w     #1,d1
[00045210] 48c1                      ext.l      d1
[00045212] 2001                      move.l     d1,d0
[00045214] eb88                      lsl.l      #5,d0
[00045216] 9081                      sub.l      d1,d0
[00045218] e588                      lsl.l      #2,d0
[0004521a] d081                      add.l      d1,d0
[0004521c] e788                      lsl.l      #3,d0
[0004521e] 322a 0042                 move.w     66(a2),d1
[00045222] 48c1                      ext.l      d1
[00045224] 4eb9 0007 773a            jsr        _ldiv
[0004522a] 2a00                      move.l     d0,d5
[0004522c] da6a 003e                 add.w      62(a2),d5
Adr_box_35:
[00045230] 3005                      move.w     d5,d0
[00045232] 204a                      movea.l    a2,a0
[00045234] 226a 0082                 movea.l    130(a2),a1
[00045238] 4e91                      jsr        (a1)
[0004523a] 3e2f 0022                 move.w     34(a7),d7
[0004523e] 206a 0014                 movea.l    20(a2),a0
[00045242] 9e68 0012                 sub.w      18(a0),d7
[00045246] 9f6c 0002                 sub.w      d7,2(a4)
[0004524a] df6c 0006                 add.w      d7,6(a4)
[0004524e] 9f6f 001e                 sub.w      d7,30(a7)
[00045252] 3f7c 0001 0024            move.w     #$0001,36(a7)
Adr_box_20:
[00045258] 3a94                      move.w     (a4),(a5)
[0004525a] 3b6c 0002 0002            move.w     2(a4),2(a5)
[00045260] 3b6c 0004 0004            move.w     4(a4),4(a5)
[00045266] 3b6c 0006 0006            move.w     6(a4),6(a5)
[0004526c] 43ef 002a                 lea.l      42(a7),a1
[00045270] 204d                      movea.l    a5,a0
[00045272] 4eb9 0005 f94a            jsr        intersect
[00045278] 302f 0026                 move.w     38(a7),d0
[0004527c] 6722                      beq.s      Adr_box_36
[0004527e] 4857                      pea.l      (a7)
[00045280] 4854                      pea.l      (a4)
[00045282] 342a 0036                 move.w     54(a2),d2
[00045286] 206a 0018                 movea.l    24(a2),a0
[0004528a] d468 0012                 add.w      18(a0),d2
[0004528e] 322a 0034                 move.w     52(a2),d1
[00045292] 2248                      movea.l    a0,a1
[00045294] 204a                      movea.l    a2,a0
[00045296] 4240                      clr.w      d0
[00045298] 6100 f830                 bsr        rect_find
[0004529c] 504f                      addq.w     #8,a7
[0004529e] 6024                      bra.s      Adr_box_37
Adr_box_36:
[000452a0] 4857                      pea.l      (a7)
[000452a2] 4854                      pea.l      (a4)
[000452a4] 342a 0036                 move.w     54(a2),d2
[000452a8] 206a 0014                 movea.l    20(a2),a0
[000452ac] d468 0012                 add.w      18(a0),d2
[000452b0] 322a 0034                 move.w     52(a2),d1
[000452b4] d268 0010                 add.w      16(a0),d1
[000452b8] 4240                      clr.w      d0
[000452ba] 2248                      movea.l    a0,a1
[000452bc] 204a                      movea.l    a2,a0
[000452be] 6100 f80a                 bsr        rect_find
[000452c2] 504f                      addq.w     #8,a7
Adr_box_37:
[000452c4] 2053                      movea.l    (a3),a0
[000452c6] 302f 0028                 move.w     40(a7),d0
[000452ca] b068 0246                 cmp.w      582(a0),d0
[000452ce] 6714                      beq.s      Adr_box_13
[000452d0] 93c9                      suba.l     a1,a1
[000452d2] 2c6a 0004                 movea.l    4(a2),a6
[000452d6] 204a                      movea.l    a2,a0
[000452d8] 7015                      moveq.l    #21,d0
[000452da] 4e96                      jsr        (a6)
[000452dc] 2053                      movea.l    (a3),a0
[000452de] 3f68 0246 0028            move.w     582(a0),40(a7)
Adr_box_13:
[000452e4] 302f 001c                 move.w     28(a7),d0
[000452e8] 6600 fb22                 bne        Adr_box_38
[000452ec] 7002                      moveq.l    #2,d0
[000452ee] 4eb9 0005 1e1c            jsr        Awi_update
[000452f4] 93c9                      suba.l     a1,a1
[000452f6] 7016                      moveq.l    #22,d0
[000452f8] 204a                      movea.l    a2,a0
[000452fa] 286a 0004                 movea.l    4(a2),a4
[000452fe] 4e94                      jsr        (a4)
[00045300] 202f 0014                 move.l     20(a7),d0
[00045304] 6708                      beq.s      Adr_box_39
[00045306] 2040                      movea.l    d0,a0
[00045308] 4eb9 0004 7d6c            jsr        Ax_ifree
Adr_box_39:
[0004530e] 2053                      movea.l    (a3),a0
[00045310] 2068 023c                 movea.l    572(a0),a0
[00045314] 41e8 0038                 lea.l      56(a0),a0
[00045318] 4eb9 0004 9898            jsr        Amo_new
Adr_box_1:
[0004531e] 4fef 0042                 lea.l      66(a7),a7
[00045322] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00045326] 4e75                      rts

Adr_find0:
[00045328] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[0004532c] 4fef ffee                 lea.l      -18(a7),a7
[00045330] 2448                      movea.l    a0,a2
[00045332] 3600                      move.w     d0,d3
[00045334] 3f41 0010                 move.w     d1,16(a7)
[00045338] 3c02                      move.w     d2,d6
[0004533a] 3e2f 0036                 move.w     54(a7),d7
[0004533e] 48c0                      ext.l      d0
[00045340] 2400                      move.l     d0,d2
[00045342] d482                      add.l      d2,d2
[00045344] d480                      add.l      d0,d2
[00045346] e78a                      lsl.l      #3,d2
[00045348] 47f2 2800                 lea.l      0(a2,d2.l),a3
[0004534c] 323c 0080                 move.w     #$0080,d1
[00045350] c26b 0008                 and.w      8(a3),d1
[00045354] 6600 00b4                 bne        Adr_find0_1
[00045358] 7408                      moveq.l    #8,d2
[0004535a] c46b 000a                 and.w      10(a3),d2
[0004535e] 6600 00aa                 bne        Adr_find0_1
[00045362] 49ef 0008                 lea.l      8(a7),a4
[00045366] 302b 0006                 move.w     6(a3),d0
[0004536a] c07c 00ff                 and.w      #$00FF,d0
[0004536e] b07c 001f                 cmp.w      #$001F,d0
[00045372] 6706                      beq.s      Adr_find0_2
[00045374] b07c 0021                 cmp.w      #$0021,d0
[00045378] 666a                      bne.s      Adr_find0_3
Adr_find0_2:
[0004537a] 206b 000c                 movea.l    12(a3),a0
[0004537e] 302b 0010                 move.w     16(a3),d0
[00045382] d068 0012                 add.w      18(a0),d0
[00045386] 3880                      move.w     d0,(a4)
[00045388] 322b 0012                 move.w     18(a3),d1
[0004538c] d268 0014                 add.w      20(a0),d1
[00045390] 3941 0002                 move.w     d1,2(a4)
[00045394] 3968 0016 0004            move.w     22(a0),4(a4)
[0004539a] 3968 0018 0006            move.w     24(a0),6(a4)
[000453a0] 342b 0010                 move.w     16(a3),d2
[000453a4] d468 001a                 add.w      26(a0),d2
[000453a8] 3e82                      move.w     d2,(a7)
[000453aa] 302b 0012                 move.w     18(a3),d0
[000453ae] d068 001c                 add.w      28(a0),d0
[000453b2] 3f40 0002                 move.w     d0,2(a7)
[000453b6] 3f68 001e 0004            move.w     30(a0),4(a7)
[000453bc] 3f68 0020 0006            move.w     32(a0),6(a7)
[000453c2] 204c                      movea.l    a4,a0
[000453c4] 3006                      move.w     d6,d0
[000453c6] 3207                      move.w     d7,d1
[000453c8] 4eb9 0005 ef64            jsr        Aob_within
[000453ce] 4a40                      tst.w      d0
[000453d0] 663c                      bne.s      Adr_find0_4
[000453d2] 3207                      move.w     d7,d1
[000453d4] 3006                      move.w     d6,d0
[000453d6] 41d7                      lea.l      (a7),a0
[000453d8] 4eb9 0005 ef64            jsr        Aob_within
[000453de] 4a40                      tst.w      d0
[000453e0] 662c                      bne.s      Adr_find0_4
[000453e2] 6026                      bra.s      Adr_find0_1
Adr_find0_3:
[000453e4] 38ab 0010                 move.w     16(a3),(a4)
[000453e8] 396b 0012 0002            move.w     18(a3),2(a4)
[000453ee] 396b 0014 0004            move.w     20(a3),4(a4)
[000453f4] 396b 0016 0006            move.w     22(a3),6(a4)
[000453fa] 3207                      move.w     d7,d1
[000453fc] 3006                      move.w     d6,d0
[000453fe] 204c                      movea.l    a4,a0
[00045400] 4eb9 0005 ef64            jsr        Aob_within
[00045406] 4a40                      tst.w      d0
[00045408] 6604                      bne.s      Adr_find0_4
Adr_find0_1:
[0004540a] 70ff                      moveq.l    #-1,d0
[0004540c] 6050                      bra.s      Adr_find0_5
Adr_find0_4:
[0004540e] 382b 0002                 move.w     2(a3),d4
[00045412] 4a44                      tst.w      d4
[00045414] 6b46                      bmi.s      Adr_find0_6
[00045416] 302f 0010                 move.w     16(a7),d0
[0004541a] 6f40                      ble.s      Adr_find0_6
[0004541c] 9c6b 0010                 sub.w      16(a3),d6
[00045420] 9e6b 0012                 sub.w      18(a3),d7
[00045424] 7aff                      moveq.l    #-1,d5
Adr_find0_8:
[00045426] 3f07                      move.w     d7,-(a7)
[00045428] 3406                      move.w     d6,d2
[0004542a] 72ff                      moveq.l    #-1,d1
[0004542c] d26f 0012                 add.w      18(a7),d1
[00045430] 3004                      move.w     d4,d0
[00045432] 204a                      movea.l    a2,a0
[00045434] 6100 fef2                 bsr        Adr_find0
[00045438] 544f                      addq.w     #2,a7
[0004543a] 4a40                      tst.w      d0
[0004543c] 6b02                      bmi.s      Adr_find0_7
[0004543e] 3a00                      move.w     d0,d5
Adr_find0_7:
[00045440] 3204                      move.w     d4,d1
[00045442] 48c1                      ext.l      d1
[00045444] 2001                      move.l     d1,d0
[00045446] d080                      add.l      d0,d0
[00045448] d081                      add.l      d1,d0
[0004544a] e788                      lsl.l      #3,d0
[0004544c] 3832 0800                 move.w     0(a2,d0.l),d4
[00045450] b644                      cmp.w      d4,d3
[00045452] 66d2                      bne.s      Adr_find0_8
[00045454] 4a45                      tst.w      d5
[00045456] 6b04                      bmi.s      Adr_find0_6
[00045458] 3005                      move.w     d5,d0
[0004545a] 6002                      bra.s      Adr_find0_5
Adr_find0_6:
[0004545c] 3003                      move.w     d3,d0
Adr_find0_5:
[0004545e] 4fef 0012                 lea.l      18(a7),a7
[00045462] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[00045466] 4e75                      rts

Adr_find:
[00045468] 48e7 1f20                 movem.l    d3-d7/a2,-(a7)
[0004546c] 594f                      subq.w     #4,a7
[0004546e] 2448                      movea.l    a0,a2
[00045470] 3600                      move.w     d0,d3
[00045472] 3c01                      move.w     d1,d6
[00045474] 3a02                      move.w     d2,d5
[00045476] 382f 0020                 move.w     32(a7),d4
[0004547a] 4a40                      tst.w      d0
[0004547c] 660c                      bne.s      Adr_find_1
[0004547e] 3f04                      move.w     d4,-(a7)
[00045480] 4240                      clr.w      d0
[00045482] 6100 fea4                 bsr        Adr_find0
[00045486] 544f                      addq.w     #2,a7
[00045488] 603c                      bra.s      Adr_find_2
Adr_find_1:
[0004548a] 3003                      move.w     d3,d0
[0004548c] 204a                      movea.l    a2,a0
[0004548e] 4eb9 0004 af6c            jsr        Aob_up
[00045494] 3e00                      move.w     d0,d7
[00045496] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004549c] 486f 0004                 pea.l      4(a7)
[000454a0] 43ef 000a                 lea.l      10(a7),a1
[000454a4] 204a                      movea.l    a2,a0
[000454a6] 4eb9 0006 ba44            jsr        mt_objc_offset
[000454ac] 504f                      addq.w     #8,a7
[000454ae] 3004                      move.w     d4,d0
[000454b0] 9057                      sub.w      (a7),d0
[000454b2] 3f00                      move.w     d0,-(a7)
[000454b4] 3405                      move.w     d5,d2
[000454b6] 946f 0004                 sub.w      4(a7),d2
[000454ba] 3206                      move.w     d6,d1
[000454bc] 204a                      movea.l    a2,a0
[000454be] 3003                      move.w     d3,d0
[000454c0] 6100 fe66                 bsr        Adr_find0
[000454c4] 544f                      addq.w     #2,a7
Adr_find_2:
[000454c6] 584f                      addq.w     #4,a7
[000454c8] 4cdf 04f8                 movem.l    (a7)+,d3-d7/a2
[000454cc] 4e75                      rts

addDD2Popup:
[000454ce] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[000454d2] 2648                      movea.l    a0,a3
[000454d4] 2449                      movea.l    a1,a2
[000454d6] 7002                      moveq.l    #2,d0
[000454d8] c0aa 0002                 and.l      2(a2),d0
[000454dc] 6746                      beq.s      addDD2Popup_1
[000454de] 206a 0008                 movea.l    8(a2),a0
[000454e2] 4eb9 0007 69b0            jsr        strlen
[000454e8] 2600                      move.l     d0,d3
[000454ea] 4a83                      tst.l      d3
[000454ec] 6f36                      ble.s      addDD2Popup_1
[000454ee] 2053                      movea.l    (a3),a0
[000454f0] 4eb9 0007 69b0            jsr        strlen
[000454f6] d083                      add.l      d3,d0
[000454f8] b0bc 0000 0100            cmp.l      #$00000100,d0
[000454fe] 6424                      bcc.s      addDD2Popup_1
[00045500] 226a 0008                 movea.l    8(a2),a1
[00045504] 2053                      movea.l    (a3),a0
[00045506] 4eb9 0007 6886            jsr        strcat
[0004550c] 43f9 000d 3798            lea.l      $000D3798,a1
[00045512] 2053                      movea.l    (a3),a0
[00045514] 4eb9 0007 6886            jsr        strcat
[0004551a] b6ab 0004                 cmp.l      4(a3),d3
[0004551e] 6f04                      ble.s      addDD2Popup_1
[00045520] 2743 0004                 move.l     d3,4(a3)
addDD2Popup_1:
[00045524] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00045528] 4e75                      rts

DDCmpName:
[0004552a] 2f0a                      move.l     a2,-(a7)
[0004552c] 2f0b                      move.l     a3,-(a7)
[0004552e] 2648                      movea.l    a0,a3
[00045530] 2449                      movea.l    a1,a2
[00045532] 206a 0008                 movea.l    8(a2),a0
[00045536] 4eb9 0007 69b0            jsr        strlen
[0004553c] 2f00                      move.l     d0,-(a7)
[0004553e] 204b                      movea.l    a3,a0
[00045540] 4eb9 0007 69b0            jsr        strlen
[00045546] b09f                      cmp.l      (a7)+,d0
[00045548] 640a                      bcc.s      DDCmpName_1
[0004554a] 204b                      movea.l    a3,a0
[0004554c] 4eb9 0007 69b0            jsr        strlen
[00045552] 600a                      bra.s      DDCmpName_2
DDCmpName_1:
[00045554] 206a 0008                 movea.l    8(a2),a0
[00045558] 4eb9 0007 69b0            jsr        strlen
DDCmpName_2:
[0004555e] 226a 0008                 movea.l    8(a2),a1
[00045562] 204b                      movea.l    a3,a0
[00045564] 4eb9 0007 69fc            jsr        strncmp
[0004556a] 4a40                      tst.w      d0
[0004556c] 6604                      bne.s      DDCmpName_3
[0004556e] 7001                      moveq.l    #1,d0
[00045570] 6002                      bra.s      DDCmpName_4
DDCmpName_3:
[00045572] 4240                      clr.w      d0
DDCmpName_4:
[00045574] 265f                      movea.l    (a7)+,a3
[00045576] 245f                      movea.l    (a7)+,a2
[00045578] 4e75                      rts

Adr_drag:
[0004557a] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0004557e] 4fef fe0a                 lea.l      -502(a7),a7
[00045582] 3f40 0162                 move.w     d0,354(a7)
[00045586] 3f41 0160                 move.w     d1,352(a7)
[0004558a] 41f9 000d 3674            lea.l      $000D3674,a0
[00045590] 43ef 005c                 lea.l      92(a7),a1
[00045594] 343c 00ff                 move.w     #$00FF,d2
Adr_drag_1:
[00045598] 12d8                      move.b     (a0)+,(a1)+
[0004559a] 51ca fffc                 dbf        d2,Adr_drag_1
[0004559e] 42af 002a                 clr.l      42(a7)
[000455a2] 2079 0010 1f12            movea.l    ACSblk,a0
[000455a8] 3428 0246                 move.w     582(a0),d2
[000455ac] 6f00 0e3c                 ble        Adr_drag_2
[000455b0] 2668 0240                 movea.l    576(a0),a3
[000455b4] 3ebc 0001                 move.w     #$0001,(a7)
[000455b8] 3f7c 0001 0002            move.w     #$0001,2(a7)
[000455be] 3f68 0008 0004            move.w     8(a0),4(a7)
[000455c4] 3228 0008                 move.w     8(a0),d1
[000455c8] d268 000c                 add.w      12(a0),d1
[000455cc] 5341                      subq.w     #1,d1
[000455ce] 3f41 0006                 move.w     d1,6(a7)
[000455d2] 3f68 000a 0008            move.w     10(a0),8(a7)
[000455d8] 3028 000a                 move.w     10(a0),d0
[000455dc] d068 000c                 add.w      12(a0),d0
[000455e0] 5340                      subq.w     #1,d0
[000455e2] 3f40 000a                 move.w     d0,10(a7)
[000455e6] 327c 0003                 movea.w    #$0003,a1
[000455ea] 3f49 000c                 move.w     a1,12(a7)
[000455ee] 3f49 000e                 move.w     a1,14(a7)
[000455f2] 3f49 0010                 move.w     a1,16(a7)
[000455f6] 3f49 0012                 move.w     a1,18(a7)
[000455fa] 3f49 0014                 move.w     a1,20(a7)
[000455fe] 3f49 0016                 move.w     a1,22(a7)
[00045602] 3f49 0018                 move.w     a1,24(a7)
[00045606] 3f49 001a                 move.w     a1,26(a7)
[0004560a] 43d7                      lea.l      (a7),a1
[0004560c] 246b 0004                 movea.l    4(a3),a2
[00045610] 204b                      movea.l    a3,a0
[00045612] 7012                      moveq.l    #18,d0
[00045614] 4e92                      jsr        (a2)
[00045616] 6100 eeb2                 bsr        drag_set
[0004561a] 42af 0026                 clr.l      38(a7)
[0004561e] 302f 0162                 move.w     354(a7),d0
[00045622] 48c0                      ext.l      d0
[00045624] 81d7                      divs.w     (a7),d0
[00045626] 4840                      swap       d0
[00045628] 3f40 0020                 move.w     d0,32(a7)
[0004562c] 322f 0160                 move.w     352(a7),d1
[00045630] 48c1                      ext.l      d1
[00045632] 83ef 0002                 divs.w     2(a7),d1
[00045636] 4841                      swap       d1
[00045638] 3f41 001e                 move.w     d1,30(a7)
[0004563c] 3f6f 0162 0042            move.w     354(a7),66(a7)
[00045642] 4bef 0040                 lea.l      64(a7),a5
[00045646] 3aaf 0160                 move.w     352(a7),(a5)
[0004564a] 2079 0010 1f12            movea.l    ACSblk,a0
[00045650] 3e28 0266                 move.w     614(a0),d7
[00045654] 7003                      moveq.l    #3,d0
[00045656] c047                      and.w      d7,d0
[00045658] 6704                      beq.s      Adr_drag_3
[0004565a] 8e7c 0003                 or.w       #$0003,d7
Adr_drag_3:
[0004565e] e247                      asr.w      #1,d7
[00045660] 3007                      move.w     d7,d0
[00045662] d040                      add.w      d0,d0
[00045664] 3f77 000c 001c            move.w     12(a7,d0.w),28(a7)
[0004566a] 342f 001c                 move.w     28(a7),d2
[0004566e] 48c2                      ext.l      d2
[00045670] 2202                      move.l     d2,d1
[00045672] d281                      add.l      d1,d1
[00045674] d282                      add.l      d2,d1
[00045676] d281                      add.l      d1,d1
[00045678] 2079 0010 1f12            movea.l    ACSblk,a0
[0004567e] 2068 023c                 movea.l    572(a0),a0
[00045682] 41f0 1838                 lea.l      56(a0,d1.l),a0
[00045686] 4eb9 0004 9898            jsr        Amo_new
[0004568c] 7aff                      moveq.l    #-1,d5
Adr_drag_35:
[0004568e] 302f 0042                 move.w     66(a7),d0
[00045692] 906f 0162                 sub.w      354(a7),d0
[00045696] 3f40 003e                 move.w     d0,62(a7)
[0004569a] 3215                      move.w     (a5),d1
[0004569c] 926f 0160                 sub.w      352(a7),d1
[000456a0] 3f41 003c                 move.w     d1,60(a7)
[000456a4] 6100 ef9c                 bsr        drag_draw
Adr_drag_11:
[000456a8] 362f 0042                 move.w     66(a7),d3
[000456ac] 3815                      move.w     (a5),d4
[000456ae] 2f39 000d 99d6            move.l     _globl,-(a7)
[000456b4] 486f 003e                 pea.l      62(a7)
[000456b8] 486f 003a                 pea.l      58(a7)
[000456bc] 224d                      movea.l    a5,a1
[000456be] 41ef 004e                 lea.l      78(a7),a0
[000456c2] 4eb9 0006 c978            jsr        mt_graf_mkstate
[000456c8] 4fef 000c                 lea.l      12(a7),a7
[000456cc] 3e2f 003a                 move.w     58(a7),d7
[000456d0] 7003                      moveq.l    #3,d0
[000456d2] c047                      and.w      d7,d0
[000456d4] 6704                      beq.s      Adr_drag_4
[000456d6] 8e7c 0003                 or.w       #$0003,d7
Adr_drag_4:
[000456da] e247                      asr.w      #1,d7
[000456dc] 3007                      move.w     d7,d0
[000456de] d040                      add.w      d0,d0
[000456e0] 322f 001c                 move.w     28(a7),d1
[000456e4] b277 000c                 cmp.w      12(a7,d0.w),d1
[000456e8] 6728                      beq.s      Adr_drag_5
[000456ea] 3f77 000c 001c            move.w     12(a7,d0.w),28(a7)
[000456f0] 342f 001c                 move.w     28(a7),d2
[000456f4] 48c2                      ext.l      d2
[000456f6] 2202                      move.l     d2,d1
[000456f8] d281                      add.l      d1,d1
[000456fa] d282                      add.l      d2,d1
[000456fc] d281                      add.l      d1,d1
[000456fe] 2079 0010 1f12            movea.l    ACSblk,a0
[00045704] 2068 023c                 movea.l    572(a0),a0
[00045708] 41f0 1838                 lea.l      56(a0,d1.l),a0
[0004570c] 4eb9 0004 9898            jsr        Amo_new
Adr_drag_5:
[00045712] 3017                      move.w     (a7),d0
[00045714] e240                      asr.w      #1,d0
[00045716] d16f 0042                 add.w      d0,66(a7)
[0004571a] 322f 0002                 move.w     2(a7),d1
[0004571e] e241                      asr.w      #1,d1
[00045720] d355                      add.w      d1,(a5)
[00045722] 342f 0042                 move.w     66(a7),d2
[00045726] b46f 0004                 cmp.w      4(a7),d2
[0004572a] 6c06                      bge.s      Adr_drag_6
[0004572c] 3f6f 0004 0042            move.w     4(a7),66(a7)
Adr_drag_6:
[00045732] 302f 0042                 move.w     66(a7),d0
[00045736] b06f 0006                 cmp.w      6(a7),d0
[0004573a] 6f06                      ble.s      Adr_drag_7
[0004573c] 3f6f 0006 0042            move.w     6(a7),66(a7)
Adr_drag_7:
[00045742] 3015                      move.w     (a5),d0
[00045744] b06f 0008                 cmp.w      8(a7),d0
[00045748] 6c04                      bge.s      Adr_drag_8
[0004574a] 3aaf 0008                 move.w     8(a7),(a5)
Adr_drag_8:
[0004574e] 3015                      move.w     (a5),d0
[00045750] b06f 000a                 cmp.w      10(a7),d0
[00045754] 6f04                      ble.s      Adr_drag_9
[00045756] 3aaf 000a                 move.w     10(a7),(a5)
Adr_drag_9:
[0004575a] 302f 0042                 move.w     66(a7),d0
[0004575e] 906f 0020                 sub.w      32(a7),d0
[00045762] 48c0                      ext.l      d0
[00045764] 81d7                      divs.w     (a7),d0
[00045766] 4840                      swap       d0
[00045768] 916f 0042                 sub.w      d0,66(a7)
[0004576c] 3015                      move.w     (a5),d0
[0004576e] 906f 001e                 sub.w      30(a7),d0
[00045772] 48c0                      ext.l      d0
[00045774] 81ef 0002                 divs.w     2(a7),d0
[00045778] 4840                      swap       d0
[0004577a] 9155                      sub.w      d0,(a5)
[0004577c] 302f 0032                 move.w     50(a7),d0
[00045780] 670c                      beq.s      Adr_drag_10
[00045782] b66f 0042                 cmp.w      66(a7),d3
[00045786] 6606                      bne.s      Adr_drag_10
[00045788] b855                      cmp.w      (a5),d4
[0004578a] 6700 ff1c                 beq        Adr_drag_11
Adr_drag_10:
[0004578e] 322f 003c                 move.w     60(a7),d1
[00045792] 302f 003e                 move.w     62(a7),d0
[00045796] 6100 eeaa                 bsr        drag_draw
[0004579a] 2079 000d 99d6            movea.l    _globl,a0
[000457a0] 3215                      move.w     (a5),d1
[000457a2] 302f 0042                 move.w     66(a7),d0
[000457a6] 4eb9 0006 d54c            jsr        mt_wind_find
[000457ac] 3f40 0036                 move.w     d0,54(a7)
[000457b0] 4eb9 0004 e5ea            jsr        Awi_wid
[000457b6] 2648                      movea.l    a0,a3
[000457b8] 200b                      move.l     a3,d0
[000457ba] 6604                      bne.s      Adr_drag_12
[000457bc] 7801                      moveq.l    #1,d4
[000457be] 6002                      bra.s      Adr_drag_13
Adr_drag_12:
[000457c0] 4244                      clr.w      d4
Adr_drag_13:
[000457c2] 200b                      move.l     a3,d0
[000457c4] 6700 010a                 beq        Adr_drag_14
[000457c8] 222b 0014                 move.l     20(a3),d1
[000457cc] 6608                      bne.s      Adr_drag_15
[000457ce] 242b 0018                 move.l     24(a3),d2
[000457d2] 6700 00fc                 beq        Adr_drag_14
Adr_drag_15:
[000457d6] 3015                      move.w     (a5),d0
[000457d8] 906b 0036                 sub.w      54(a3),d0
[000457dc] 3f00                      move.w     d0,-(a7)
[000457de] 342f 0044                 move.w     68(a7),d2
[000457e2] 946b 0034                 sub.w      52(a3),d2
[000457e6] 7208                      moveq.l    #8,d1
[000457e8] 206b 0014                 movea.l    20(a3),a0
[000457ec] 4240                      clr.w      d0
[000457ee] 6100 fc78                 bsr        Adr_find
[000457f2] 544f                      addq.w     #2,a7
[000457f4] 3c00                      move.w     d0,d6
[000457f6] 4a40                      tst.w      d0
[000457f8] 6a00 00ce                 bpl        Adr_drag_16
[000457fc] 222b 0018                 move.l     24(a3),d1
[00045800] 6700 00c6                 beq        Adr_drag_16
[00045804] 3415                      move.w     (a5),d2
[00045806] 946b 0036                 sub.w      54(a3),d2
[0004580a] 3f02                      move.w     d2,-(a7)
[0004580c] 342f 0044                 move.w     68(a7),d2
[00045810] 946b 0034                 sub.w      52(a3),d2
[00045814] 2041                      movea.l    d1,a0
[00045816] 4240                      clr.w      d0
[00045818] 7208                      moveq.l    #8,d1
[0004581a] 6100 fc4c                 bsr        Adr_find
[0004581e] 544f                      addq.w     #2,a7
[00045820] 3c00                      move.w     d0,d6
[00045822] 4a40                      tst.w      d0
[00045824] 6b00 00a2                 bmi        Adr_drag_16
[00045828] 8c7c 1000                 or.w       #$1000,d6
[0004582c] 6000 009a                 bra        Adr_drag_16
Adr_drag_24:
[00045830] b7ef 0026                 cmpa.l     38(a7),a3
[00045834] 6606                      bne.s      Adr_drag_17
[00045836] ba46                      cmp.w      d6,d5
[00045838] 6700 0098                 beq        Adr_drag_18
Adr_drag_17:
[0004583c] 3006                      move.w     d6,d0
[0004583e] c07c 1000                 and.w      #$1000,d0
[00045842] 6718                      beq.s      Adr_drag_19
[00045844] 3406                      move.w     d6,d2
[00045846] c47c 0fff                 and.w      #$0FFF,d2
[0004584a] 48c2                      ext.l      d2
[0004584c] 2202                      move.l     d2,d1
[0004584e] d281                      add.l      d1,d1
[00045850] d282                      add.l      d2,d1
[00045852] e789                      lsl.l      #3,d1
[00045854] 246b 0018                 movea.l    24(a3),a2
[00045858] d5c1                      adda.l     d1,a2
[0004585a] 6012                      bra.s      Adr_drag_20
Adr_drag_19:
[0004585c] 3206                      move.w     d6,d1
[0004585e] 48c1                      ext.l      d1
[00045860] 2001                      move.l     d1,d0
[00045862] d080                      add.l      d0,d0
[00045864] d081                      add.l      d1,d0
[00045866] e788                      lsl.l      #3,d0
[00045868] 246b 0014                 movea.l    20(a3),a2
[0004586c] d5c0                      adda.l     d0,a2
Adr_drag_20:
[0004586e] 302a 0008                 move.w     8(a2),d0
[00045872] c07c 1000                 and.w      #$1000,d0
[00045876] 665a                      bne.s      Adr_drag_18
[00045878] 0c2a 0018 0007            cmpi.b     #$18,7(a2)
[0004587e] 6608                      bne.s      Adr_drag_21
[00045880] 7208                      moveq.l    #8,d1
[00045882] c26a 0008                 and.w      8(a2),d1
[00045886] 664a                      bne.s      Adr_drag_18
Adr_drag_21:
[00045888] 302a 0008                 move.w     8(a2),d0
[0004588c] c07c 2000                 and.w      #$2000,d0
[00045890] 6708                      beq.s      Adr_drag_22
[00045892] 7201                      moveq.l    #1,d1
[00045894] c26a 000a                 and.w      10(a2),d1
[00045898] 6636                      bne.s      Adr_drag_14
Adr_drag_22:
[0004589a] 3006                      move.w     d6,d0
[0004589c] c07c 1000                 and.w      #$1000,d0
[000458a0] 6718                      beq.s      Adr_drag_23
[000458a2] 3006                      move.w     d6,d0
[000458a4] c07c 0fff                 and.w      #$0FFF,d0
[000458a8] 206b 0018                 movea.l    24(a3),a0
[000458ac] 4eb9 0004 af6c            jsr        Aob_up
[000458b2] 807c 1000                 or.w       #$1000,d0
[000458b6] 3c00                      move.w     d0,d6
[000458b8] 600e                      bra.s      Adr_drag_16
Adr_drag_23:
[000458ba] 3006                      move.w     d6,d0
[000458bc] 206b 0014                 movea.l    20(a3),a0
[000458c0] 4eb9 0004 af6c            jsr        Aob_up
[000458c6] 3c00                      move.w     d0,d6
Adr_drag_16:
[000458c8] 4a46                      tst.w      d6
[000458ca] 6a00 ff64                 bpl        Adr_drag_24
[000458ce] 6002                      bra.s      Adr_drag_18
Adr_drag_14:
[000458d0] 7cff                      moveq.l    #-1,d6
Adr_drag_18:
[000458d2] ba46                      cmp.w      d6,d5
[000458d4] 6608                      bne.s      Adr_drag_25
[000458d6] b7ef 0026                 cmpa.l     38(a7),a3
[000458da] 6700 00f2                 beq        Adr_drag_26
Adr_drag_25:
[000458de] 4a45                      tst.w      d5
[000458e0] 6b5c                      bmi.s      Adr_drag_27
[000458e2] 3005                      move.w     d5,d0
[000458e4] c07c 1000                 and.w      #$1000,d0
[000458e8] 671c                      beq.s      Adr_drag_28
[000458ea] 3405                      move.w     d5,d2
[000458ec] c47c 0fff                 and.w      #$0FFF,d2
[000458f0] 48c2                      ext.l      d2
[000458f2] 2202                      move.l     d2,d1
[000458f4] d281                      add.l      d1,d1
[000458f6] d282                      add.l      d2,d1
[000458f8] e789                      lsl.l      #3,d1
[000458fa] 206f 0026                 movea.l    38(a7),a0
[000458fe] 2468 0018                 movea.l    24(a0),a2
[00045902] d5c1                      adda.l     d1,a2
[00045904] 6016                      bra.s      Adr_drag_29
Adr_drag_28:
[00045906] 3205                      move.w     d5,d1
[00045908] 48c1                      ext.l      d1
[0004590a] 2001                      move.l     d1,d0
[0004590c] d080                      add.l      d0,d0
[0004590e] d081                      add.l      d1,d0
[00045910] e788                      lsl.l      #3,d0
[00045912] 206f 0026                 movea.l    38(a7),a0
[00045916] 2468 0014                 movea.l    20(a0),a2
[0004591a] d5c0                      adda.l     d0,a2
Adr_drag_29:
[0004591c] 302a 0008                 move.w     8(a2),d0
[00045920] c07c 0800                 and.w      #$0800,d0
[00045924] 6618                      bne.s      Adr_drag_27
[00045926] 322a 000a                 move.w     10(a2),d1
[0004592a] c27c fffe                 and.w      #$FFFE,d1
[0004592e] 206f 0026                 movea.l    38(a7),a0
[00045932] 226f 0026                 movea.l    38(a7),a1
[00045936] 2269 0066                 movea.l    102(a1),a1
[0004593a] 3005                      move.w     d5,d0
[0004593c] 4e91                      jsr        (a1)
Adr_drag_27:
[0004593e] 7aff                      moveq.l    #-1,d5
[00045940] 4a46                      tst.w      d6
[00045942] 6b00 008a                 bmi        Adr_drag_26
[00045946] 3006                      move.w     d6,d0
[00045948] c07c 1000                 and.w      #$1000,d0
[0004594c] 6718                      beq.s      Adr_drag_30
[0004594e] 3406                      move.w     d6,d2
[00045950] c47c 0fff                 and.w      #$0FFF,d2
[00045954] 48c2                      ext.l      d2
[00045956] 2202                      move.l     d2,d1
[00045958] d281                      add.l      d1,d1
[0004595a] d282                      add.l      d2,d1
[0004595c] e789                      lsl.l      #3,d1
[0004595e] 246b 0018                 movea.l    24(a3),a2
[00045962] d5c1                      adda.l     d1,a2
[00045964] 6012                      bra.s      Adr_drag_31
Adr_drag_30:
[00045966] 3206                      move.w     d6,d1
[00045968] 48c1                      ext.l      d1
[0004596a] 2001                      move.l     d1,d0
[0004596c] d080                      add.l      d0,d0
[0004596e] d081                      add.l      d1,d0
[00045970] e788                      lsl.l      #3,d0
[00045972] 246b 0014                 movea.l    20(a3),a2
[00045976] d5c0                      adda.l     d0,a2
Adr_drag_31:
[00045978] 302a 0008                 move.w     8(a2),d0
[0004597c] c07c 2000                 and.w      #$2000,d0
[00045980] 6708                      beq.s      Adr_drag_32
[00045982] 7201                      moveq.l    #1,d1
[00045984] c26a 000a                 and.w      10(a2),d1
[00045988] 663c                      bne.s      Adr_drag_33
Adr_drag_32:
[0004598a] 302a 0008                 move.w     8(a2),d0
[0004598e] c07c 0800                 and.w      #$0800,d0
[00045992] 6634                      bne.s      Adr_drag_34
[00045994] 3f46 002e                 move.w     d6,46(a7)
[00045998] 3f7c 0001 0030            move.w     #$0001,48(a7)
[0004599e] 43ef 002e                 lea.l      46(a7),a1
[000459a2] 204b                      movea.l    a3,a0
[000459a4] 286b 0004                 movea.l    4(a3),a4
[000459a8] 7009                      moveq.l    #9,d0
[000459aa] 4e94                      jsr        (a4)
[000459ac] 0c6f 0001 0030            cmpi.w     #$0001,48(a7)
[000459b2] 6612                      bne.s      Adr_drag_33
[000459b4] 7201                      moveq.l    #1,d1
[000459b6] 826a 000a                 or.w       10(a2),d1
[000459ba] 3006                      move.w     d6,d0
[000459bc] 204b                      movea.l    a3,a0
[000459be] 226b 0066                 movea.l    102(a3),a1
[000459c2] 4e91                      jsr        (a1)
[000459c4] 6002                      bra.s      Adr_drag_34
Adr_drag_33:
[000459c6] 7cff                      moveq.l    #-1,d6
Adr_drag_34:
[000459c8] 2f4b 0026                 move.l     a3,38(a7)
[000459cc] 3a06                      move.w     d6,d5
Adr_drag_26:
[000459ce] 302f 0032                 move.w     50(a7),d0
[000459d2] 6600 fcba                 bne        Adr_drag_35
[000459d6] 2079 0010 1f12            movea.l    ACSblk,a0
[000459dc] 2068 023c                 movea.l    572(a0),a0
[000459e0] 41e8 0038                 lea.l      56(a0),a0
[000459e4] 4eb9 0004 9898            jsr        Amo_new
[000459ea] 2079 0010 1f12            movea.l    ACSblk,a0
[000459f0] 317c 0001 024a            move.w     #$0001,586(a0)
[000459f6] 4a45                      tst.w      d5
[000459f8] 6b00 0234                 bmi        Adr_drag_36
[000459fc] 3005                      move.w     d5,d0
[000459fe] c07c 1000                 and.w      #$1000,d0
[00045a02] 670c                      beq.s      Adr_drag_37
[00045a04] 206f 0026                 movea.l    38(a7),a0
[00045a08] 2f68 0018 0022            move.l     24(a0),34(a7)
[00045a0e] 600a                      bra.s      Adr_drag_38
Adr_drag_37:
[00045a10] 206f 0026                 movea.l    38(a7),a0
[00045a14] 2f68 0014 0022            move.l     20(a0),34(a7)
Adr_drag_38:
[00045a1a] 3205                      move.w     d5,d1
[00045a1c] c27c 0fff                 and.w      #$0FFF,d1
[00045a20] 48c1                      ext.l      d1
[00045a22] 2001                      move.l     d1,d0
[00045a24] d080                      add.l      d0,d0
[00045a26] d081                      add.l      d1,d0
[00045a28] e788                      lsl.l      #3,d0
[00045a2a] 246f 0022                 movea.l    34(a7),a2
[00045a2e] 45f2 0818                 lea.l      24(a2,d0.l),a2
[00045a32] 342a 0008                 move.w     8(a2),d2
[00045a36] c47c 8000                 and.w      #$8000,d2
[00045a3a] 6700 00ae                 beq        Adr_drag_39
[00045a3e] 2e2a 0004                 move.l     4(a2),d7
[00045a42] 6700 00a6                 beq        Adr_drag_39
[00045a46] 2079 0010 1f12            movea.l    ACSblk,a0
[00045a4c] 316f 0162 024c            move.w     354(a7),588(a0)
[00045a52] 2079 0010 1f12            movea.l    ACSblk,a0
[00045a58] 316f 0160 024e            move.w     352(a7),590(a0)
[00045a5e] 2079 0010 1f12            movea.l    ACSblk,a0
[00045a64] 316f 003e 0250            move.w     62(a7),592(a0)
[00045a6a] 2079 0010 1f12            movea.l    ACSblk,a0
[00045a70] 316f 003c 0252            move.w     60(a7),594(a0)
[00045a76] 41ef 0044                 lea.l      68(a7),a0
[00045a7a] 4eb9 0005 f4e8            jsr        Act_save
[00045a80] 2079 0010 1f12            movea.l    ACSblk,a0
[00045a86] 316f 0042 0262            move.w     66(a7),610(a0)
[00045a8c] 2079 0010 1f12            movea.l    ACSblk,a0
[00045a92] 3155 0264                 move.w     (a5),612(a0)
[00045a96] 2079 0010 1f12            movea.l    ACSblk,a0
[00045a9c] 316f 003a 0266            move.w     58(a7),614(a0)
[00045aa2] 2079 0010 1f12            movea.l    ACSblk,a0
[00045aa8] 216f 0026 0258            move.l     38(a7),600(a0)
[00045aae] 2079 0010 1f12            movea.l    ACSblk,a0
[00045ab4] 216f 0022 025c            move.l     34(a7),604(a0)
[00045aba] 3005                      move.w     d5,d0
[00045abc] c07c 0fff                 and.w      #$0FFF,d0
[00045ac0] 2079 0010 1f12            movea.l    ACSblk,a0
[00045ac6] 3140 0260                 move.w     d0,608(a0)
[00045aca] 4eb9 0004 9902            jsr        Amo_busy
[00045ad0] 206a 0004                 movea.l    4(a2),a0
[00045ad4] 4e90                      jsr        (a0)
[00045ad6] 4eb9 0004 9940            jsr        Amo_unbusy
[00045adc] 41ef 0044                 lea.l      68(a7),a0
[00045ae0] 4eb9 0005 f532            jsr        Act_restore
[00045ae6] 6000 00ca                 bra        Adr_drag_40
Adr_drag_39:
[00045aea] 3205                      move.w     d5,d1
[00045aec] c27c 0fff                 and.w      #$0FFF,d1
[00045af0] 48c1                      ext.l      d1
[00045af2] 2001                      move.l     d1,d0
[00045af4] d080                      add.l      d0,d0
[00045af6] d081                      add.l      d1,d0
[00045af8] e788                      lsl.l      #3,d0
[00045afa] 206f 0022                 movea.l    34(a7),a0
[00045afe] 2f70 080c 002a            move.l     12(a0,d0.l),42(a7)
[00045b04] 226f 002a                 movea.l    42(a7),a1
[00045b08] 2429 0008                 move.l     8(a1),d2
[00045b0c] 6700 00a0                 beq        Adr_drag_41
[00045b10] 6100 ed2e                 bsr        Adr_start
[00045b14] 6100 ed36                 bsr        Adr_next
[00045b18] 3c00                      move.w     d0,d6
[00045b1a] 6f00 0092                 ble        Adr_drag_41
[00045b1e] c07c 1000                 and.w      #$1000,d0
[00045b22] 6724                      beq.s      Adr_drag_42
[00045b24] 3406                      move.w     d6,d2
[00045b26] c47c 0fff                 and.w      #$0FFF,d2
[00045b2a] 48c2                      ext.l      d2
[00045b2c] 2202                      move.l     d2,d1
[00045b2e] d281                      add.l      d1,d1
[00045b30] d282                      add.l      d2,d1
[00045b32] e789                      lsl.l      #3,d1
[00045b34] 2079 0010 1f12            movea.l    ACSblk,a0
[00045b3a] 2268 0240                 movea.l    576(a0),a1
[00045b3e] 2469 0018                 movea.l    24(a1),a2
[00045b42] 45f2 1818                 lea.l      24(a2,d1.l),a2
[00045b46] 601e                      bra.s      Adr_drag_43
Adr_drag_42:
[00045b48] 3206                      move.w     d6,d1
[00045b4a] 48c1                      ext.l      d1
[00045b4c] 2001                      move.l     d1,d0
[00045b4e] d080                      add.l      d0,d0
[00045b50] d081                      add.l      d1,d0
[00045b52] e788                      lsl.l      #3,d0
[00045b54] 2079 0010 1f12            movea.l    ACSblk,a0
[00045b5a] 2268 0240                 movea.l    576(a0),a1
[00045b5e] 2469 0014                 movea.l    20(a1),a2
[00045b62] 45f2 0818                 lea.l      24(a2,d0.l),a2
Adr_drag_43:
[00045b66] 302a 0016                 move.w     22(a2),d0
[00045b6a] 907c 000b                 sub.w      #$000B,d0
[00045b6e] 670e                      beq.s      Adr_drag_44
[00045b70] 907c 0009                 sub.w      #$0009,d0
[00045b74] 6708                      beq.s      Adr_drag_44
[00045b76] 907c 000b                 sub.w      #$000B,d0
[00045b7a] 6702                      beq.s      Adr_drag_44
[00045b7c] 6030                      bra.s      Adr_drag_41
Adr_drag_44:
[00045b7e] 202a 000c                 move.l     12(a2),d0
[00045b82] 672a                      beq.s      Adr_drag_41
[00045b84] 2240                      movea.l    d0,a1
[00045b86] 3405                      move.w     d5,d2
[00045b88] c47c 0fff                 and.w      #$0FFF,d2
[00045b8c] 48c2                      ext.l      d2
[00045b8e] 2202                      move.l     d2,d1
[00045b90] d281                      add.l      d1,d1
[00045b92] d282                      add.l      d2,d1
[00045b94] e789                      lsl.l      #3,d1
[00045b96] 206f 0022                 movea.l    34(a7),a0
[00045b9a] d1c1                      adda.l     d1,a0
[00045b9c] 286f 002a                 movea.l    42(a7),a4
[00045ba0] 286c 0008                 movea.l    8(a4),a4
[00045ba4] 303c 02c1                 move.w     #$02C1,d0
[00045ba8] 4e94                      jsr        (a4)
[00045baa] 4a40                      tst.w      d0
[00045bac] 6604                      bne.s      Adr_drag_40
Adr_drag_41:
[00045bae] 42af 002a                 clr.l      42(a7)
Adr_drag_40:
[00045bb2] 206f 0026                 movea.l    38(a7),a0
[00045bb6] 226f 0022                 movea.l    34(a7),a1
[00045bba] b3e8 0014                 cmpa.l     20(a0),a1
[00045bbe] 6706                      beq.s      Adr_drag_45
[00045bc0] b3e8 0018                 cmpa.l     24(a0),a1
[00045bc4] 6636                      bne.s      Adr_drag_46
Adr_drag_45:
[00045bc6] 3205                      move.w     d5,d1
[00045bc8] c27c 0fff                 and.w      #$0FFF,d1
[00045bcc] 48c1                      ext.l      d1
[00045bce] 2001                      move.l     d1,d0
[00045bd0] d080                      add.l      d0,d0
[00045bd2] d081                      add.l      d1,d0
[00045bd4] e788                      lsl.l      #3,d0
[00045bd6] 206f 0022                 movea.l    34(a7),a0
[00045bda] 3430 0808                 move.w     8(a0,d0.l),d2
[00045bde] c47c 0800                 and.w      #$0800,d2
[00045be2] 6618                      bne.s      Adr_drag_46
[00045be4] 3230 080a                 move.w     10(a0,d0.l),d1
[00045be8] c27c fffe                 and.w      #$FFFE,d1
[00045bec] 226f 0026                 movea.l    38(a7),a1
[00045bf0] 2269 0066                 movea.l    102(a1),a1
[00045bf4] 206f 0026                 movea.l    38(a7),a0
[00045bf8] 3005                      move.w     d5,d0
[00045bfa] 4e91                      jsr        (a1)
Adr_drag_46:
[00045bfc] 202f 002a                 move.l     42(a7),d0
[00045c00] 6722                      beq.s      Adr_drag_47
[00045c02] 93c9                      suba.l     a1,a1
[00045c04] 3405                      move.w     d5,d2
[00045c06] c47c 0fff                 and.w      #$0FFF,d2
[00045c0a] 48c2                      ext.l      d2
[00045c0c] 2202                      move.l     d2,d1
[00045c0e] d281                      add.l      d1,d1
[00045c10] d282                      add.l      d2,d1
[00045c12] e789                      lsl.l      #3,d1
[00045c14] 206f 0022                 movea.l    34(a7),a0
[00045c18] d1c1                      adda.l     d1,a0
[00045c1a] 2840                      movea.l    d0,a4
[00045c1c] 286c 0008                 movea.l    8(a4),a4
[00045c20] 7005                      moveq.l    #5,d0
[00045c22] 4e94                      jsr        (a4)
Adr_drag_47:
[00045c24] 4eb9 0004 ad60            jsr        Aev_release
[00045c2a] 6000 06f4                 bra        Adr_drag_48
Adr_drag_36:
[00045c2e] 4a44                      tst.w      d4
[00045c30] 6700 06ee                 beq        Adr_drag_48
[00045c34] 3f7c ffff 0034            move.w     #$FFFF,52(a7)
[00045c3a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00045c40] 42a7                      clr.l      -(a7)
[00045c42] 42a7                      clr.l      -(a7)
[00045c44] 93c9                      suba.l     a1,a1
[00045c46] 41ef 0044                 lea.l      68(a7),a0
[00045c4a] 700b                      moveq.l    #11,d0
[00045c4c] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[00045c52] 4fef 000c                 lea.l      12(a7),a7
[00045c56] 4a40                      tst.w      d0
[00045c58] 672c                      beq.s      Adr_drag_49
[00045c5a] 7010                      moveq.l    #16,d0
[00045c5c] c06f 0038                 and.w      56(a7),d0
[00045c60] 6724                      beq.s      Adr_drag_49
[00045c62] 42a7                      clr.l      -(a7)
[00045c64] 42a7                      clr.l      -(a7)
[00045c66] 42a7                      clr.l      -(a7)
[00045c68] 486f 0040                 pea.l      64(a7)
[00045c6c] 7214                      moveq.l    #20,d1
[00045c6e] 302f 0046                 move.w     70(a7),d0
[00045c72] 4eb9 0007 14ea            jsr        wind_get
[00045c78] 4fef 0010                 lea.l      16(a7),a7
[00045c7c] 4a40                      tst.w      d0
[00045c7e] 6606                      bne.s      Adr_drag_49
[00045c80] 3f7c ffff 0034            move.w     #$FFFF,52(a7)
Adr_drag_49:
[00045c86] 302f 0034                 move.w     52(a7),d0
[00045c8a] 6a00 00a2                 bpl        Adr_drag_50
[00045c8e] 4243                      clr.w      d3
[00045c90] 3f43 0038                 move.w     d3,56(a7)
[00045c94] 422f 005c                 clr.b      92(a7)
[00045c98] 41ef 005c                 lea.l      92(a7),a0
[00045c9c] 2f48 0164                 move.l     a0,356(a7)
[00045ca0] 42af 0168                 clr.l      360(a7)
[00045ca4] 487a f828                 pea.l      addDD2Popup(pc)
[00045ca8] 42a7                      clr.l      -(a7)
[00045caa] 43ef 016c                 lea.l      364(a7),a1
[00045cae] 2879 000d 2c54            movea.l    ListOfApps,a4
[00045cb4] 286c 0040                 movea.l    64(a4),a4
[00045cb8] 2079 000d 2c54            movea.l    ListOfApps,a0
[00045cbe] 4e94                      jsr        (a4)
[00045cc0] 504f                      addq.w     #8,a7
[00045cc2] 3f6f 016a 0038            move.w     362(a7),56(a7)
[00045cc8] 41ef 005c                 lea.l      92(a7),a0
[00045ccc] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00045cd2] 4a40                      tst.w      d0
[00045cd4] 6658                      bne.s      Adr_drag_50
[00045cd6] 41ef 005c                 lea.l      92(a7),a0
[00045cda] 4eb9 0007 69b0            jsr        strlen
[00045ce0] 4237 005b                 clr.b      91(a7,d0.w)
[00045ce4] 49ef 005c                 lea.l      92(a7),a4
[00045ce8] 2f0c                      move.l     a4,-(a7)
[00045cea] 74ff                      moveq.l    #-1,d2
[00045cec] 72ff                      moveq.l    #-1,d1
[00045cee] 7003                      moveq.l    #3,d0
[00045cf0] d06f 003c                 add.w      60(a7),d0
[00045cf4] 2079 0010 1f12            movea.l    ACSblk,a0
[00045cfa] c1e8 0012                 muls.w     18(a0),d0
[00045cfe] 224c                      movea.l    a4,a1
[00045d00] 2068 0258                 movea.l    600(a0),a0
[00045d04] 4eb9 0005 c7dc            jsr        Ame_strpopup
[00045d0a] 584f                      addq.w     #4,a7
[00045d0c] 2848                      movea.l    a0,a4
[00045d0e] 200c                      move.l     a4,d0
[00045d10] 671c                      beq.s      Adr_drag_50
[00045d12] 487a f816                 pea.l      DDCmpName(pc)
[00045d16] 224c                      movea.l    a4,a1
[00045d18] 2079 000d 2c54            movea.l    ListOfApps,a0
[00045d1e] 2c68 0020                 movea.l    32(a0),a6
[00045d22] 4e96                      jsr        (a6)
[00045d24] 584f                      addq.w     #4,a7
[00045d26] 2f48 015c                 move.l     a0,348(a7)
[00045d2a] 3f50 0034                 move.w     (a0),52(a7)
Adr_drag_50:
[00045d2e] 302f 0034                 move.w     52(a7),d0
[00045d32] 6b00 05d4                 bmi        Adr_drag_51
[00045d36] 49ef 01e6                 lea.l      486(a7),a4
[00045d3a] 41f9 000d 3774            lea.l      $000D3774,a0
[00045d40] 224c                      movea.l    a4,a1
[00045d42] 700f                      moveq.l    #15,d0
Adr_drag_52:
[00045d44] 12d8                      move.b     (a0)+,(a1)+
[00045d46] 51c8 fffc                 dbf        d0,Adr_drag_52
[00045d4a] 42af 01e0                 clr.l      480(a7)
[00045d4e] 41f9 000d 3784            lea.l      $000D3784,a0
[00045d54] 43ef 01ca                 lea.l      458(a7),a1
[00045d58] 7013                      moveq.l    #19,d0
Adr_drag_53:
[00045d5a] 12d8                      move.b     (a0)+,(a1)+
[00045d5c] 51c8 fffc                 dbf        d0,Adr_drag_53
[00045d60] 42af 019c                 clr.l      412(a7)
[00045d64] 42af 0198                 clr.l      408(a7)
[00045d68] 4eb9 0007 2902            jsr        Dgetdrv
[00045d6e] 4eb9 0007 2978            jsr        Dsetdrv
[00045d74] c0bc 0010 0000            and.l      #$00100000,d0
[00045d7a] 6700 02a2                 beq        Adr_drag_54
[00045d7e] 43ef 0164                 lea.l      356(a7),a1
[00045d82] 41f9 000d 379a            lea.l      $000D379A,a0
[00045d88] 4240                      clr.w      d0
[00045d8a] 4eb9 0007 2aa4            jsr        Fxattr
[00045d90] 4a80                      tst.l      d0
[00045d92] 6600 028a                 bne        Adr_drag_54
Adr_drag_57:
[00045d96] 522f 01dc                 addq.b     #1,476(a7)
[00045d9a] 0c2f 005a 01dc            cmpi.b     #$5A,476(a7)
[00045da0] 6f12                      ble.s      Adr_drag_55
[00045da2] 522f 01db                 addq.b     #1,475(a7)
[00045da6] 0c2f 005a 01db            cmpi.b     #$5A,475(a7)
[00045dac] 6e18                      bgt.s      Adr_drag_56
[00045dae] 1f7c 0041 01dc            move.b     #$41,476(a7)
Adr_drag_55:
[00045db4] 7002                      moveq.l    #2,d0
[00045db6] 41ef 01ca                 lea.l      458(a7),a0
[00045dba] 4eb9 0007 29be            jsr        Fcreate
[00045dc0] 2800                      move.l     d0,d4
[00045dc2] 4a80                      tst.l      d0
[00045dc4] 6bd0                      bmi.s      Adr_drag_57
Adr_drag_56:
[00045dc6] 4a84                      tst.l      d4
[00045dc8] 6b00 0556                 bmi        Adr_drag_48
[00045dcc] 4240                      clr.w      d0
[00045dce] 4eb9 0005 1e1c            jsr        Awi_update
[00045dd4] 38bc 003f                 move.w     #$003F,(a4)
[00045dd8] 2079 0010 1f12            movea.l    ACSblk,a0
[00045dde] 3950 0002                 move.w     (a0),2(a4)
[00045de2] 396f 0036 0006            move.w     54(a7),6(a4)
[00045de8] 396f 0042 0008            move.w     66(a7),8(a4)
[00045dee] 3955 000a                 move.w     (a5),10(a4)
[00045df2] 396f 003a 000c            move.w     58(a7),12(a4)
[00045df8] 102f 01db                 move.b     475(a7),d0
[00045dfc] 4880                      ext.w      d0
[00045dfe] e148                      lsl.w      #8,d0
[00045e00] 122f 01dc                 move.b     476(a7),d1
[00045e04] 4881                      ext.w      d1
[00045e06] 8041                      or.w       d1,d0
[00045e08] 3940 000e                 move.w     d0,14(a4)
[00045e0c] 2279 000d 99d6            movea.l    _globl,a1
[00045e12] 204c                      movea.l    a4,a0
[00045e14] 302f 0034                 move.w     52(a7),d0
[00045e18] 7210                      moveq.l    #16,d1
[00045e1a] 4eb9 0006 a818            jsr        mt_appl_write
[00045e20] 4a40                      tst.w      d0
[00045e22] 6700 01e6                 beq        Adr_drag_58
[00045e26] 7001                      moveq.l    #1,d0
[00045e28] e9a8                      lsl.l      d4,d0
[00045e2a] 2f40 01a0                 move.l     d0,416(a7)
[00045e2e] 42a7                      clr.l      -(a7)
[00045e30] 93c9                      suba.l     a1,a1
[00045e32] 41ef 01a4                 lea.l      420(a7),a0
[00045e36] 303c 0bb8                 move.w     #$0BB8,d0
[00045e3a] 4eb9 0007 2a44            jsr        Fselect
[00045e40] 584f                      addq.w     #4,a7
[00045e42] 4a40                      tst.w      d0
[00045e44] 6700 01c4                 beq        Adr_drag_58
[00045e48] 202f 01a0                 move.l     416(a7),d0
[00045e4c] 6700 01bc                 beq        Adr_drag_58
[00045e50] 41ef 01de                 lea.l      478(a7),a0
[00045e54] 7201                      moveq.l    #1,d1
[00045e56] 3004                      move.w     d4,d0
[00045e58] 4eb9 0007 2a02            jsr        Fread
[00045e5e] 7201                      moveq.l    #1,d1
[00045e60] b280                      cmp.l      d0,d1
[00045e62] 6600 01a6                 bne        Adr_drag_58
[00045e66] 102f 01de                 move.b     478(a7),d0
[00045e6a] 6600 019e                 bne        Adr_drag_58
[00045e6e] 41ef 01a8                 lea.l      424(a7),a0
[00045e72] 3004                      move.w     d4,d0
[00045e74] 7220                      moveq.l    #32,d1
[00045e76] 4eb9 0007 2a02            jsr        Fread
[00045e7c] 7220                      moveq.l    #32,d1
[00045e7e] b280                      cmp.l      d0,d1
[00045e80] 6600 0188                 bne        Adr_drag_58
[00045e84] 207c 0000 0001            movea.l    #$00000001,a0
[00045e8a] 700d                      moveq.l    #13,d0
[00045e8c] 4eb9 0007 2b30            jsr        Psignal
[00045e92] 2a00                      move.l     d0,d5
[00045e94] 6100 e9aa                 bsr        Adr_start
[00045e98] 6100 e9b2                 bsr        Adr_next
[00045e9c] 3c00                      move.w     d0,d6
[00045e9e] 6f00 0160                 ble        Adr_drag_59
[00045ea2] c07c 1000                 and.w      #$1000,d0
[00045ea6] 6724                      beq.s      Adr_drag_60
[00045ea8] 3406                      move.w     d6,d2
[00045eaa] c47c 0fff                 and.w      #$0FFF,d2
[00045eae] 48c2                      ext.l      d2
[00045eb0] 2202                      move.l     d2,d1
[00045eb2] d281                      add.l      d1,d1
[00045eb4] d282                      add.l      d2,d1
[00045eb6] e789                      lsl.l      #3,d1
[00045eb8] 2079 0010 1f12            movea.l    ACSblk,a0
[00045ebe] 2268 0240                 movea.l    576(a0),a1
[00045ec2] 2469 0018                 movea.l    24(a1),a2
[00045ec6] 45f2 1818                 lea.l      24(a2,d1.l),a2
[00045eca] 601e                      bra.s      Adr_drag_61
Adr_drag_60:
[00045ecc] 3206                      move.w     d6,d1
[00045ece] 48c1                      ext.l      d1
[00045ed0] 2001                      move.l     d1,d0
[00045ed2] d080                      add.l      d0,d0
[00045ed4] d081                      add.l      d1,d0
[00045ed6] e788                      lsl.l      #3,d0
[00045ed8] 2079 0010 1f12            movea.l    ACSblk,a0
[00045ede] 2268 0240                 movea.l    576(a0),a1
[00045ee2] 2469 0014                 movea.l    20(a1),a2
[00045ee6] 45f2 0818                 lea.l      24(a2,d0.l),a2
Adr_drag_61:
[00045eea] 302a 0016                 move.w     22(a2),d0
[00045eee] 907c 000b                 sub.w      #$000B,d0
[00045ef2] 6710                      beq.s      Adr_drag_62
[00045ef4] 907c 0009                 sub.w      #$0009,d0
[00045ef8] 671c                      beq.s      Adr_drag_63
[00045efa] 907c 000b                 sub.w      #$000B,d0
[00045efe] 6704                      beq.s      Adr_drag_62
[00045f00] 6000 00e2                 bra        Adr_drag_64
Adr_drag_62:
[00045f04] 43f9 000d 37a2            lea.l      $000D37A2,a1
[00045f0a] 41ef 01a8                 lea.l      424(a7),a0
[00045f0e] 4eb9 0007 6950            jsr        strcpy
[00045f14] 6010                      bra.s      Adr_drag_65
Adr_drag_63:
[00045f16] 43f9 000d 37ad            lea.l      $000D37AD,a1
[00045f1c] 41ef 01a8                 lea.l      424(a7),a0
[00045f20] 4eb9 0007 6950            jsr        strcpy
Adr_drag_65:
[00045f26] 3f7c 000a 01e4            move.w     #$000A,484(a7)
[00045f2c] 206a 000c                 movea.l    12(a2),a0
[00045f30] 4eb9 0007 69b0            jsr        strlen
[00045f36] 2f40 01a4                 move.l     d0,420(a7)
[00045f3a] 7218                      moveq.l    #24,d1
[00045f3c] e2a0                      asr.l      d1,d0
[00045f3e] c03c ffff                 and.b      #$FF,d0
[00045f42] 1f40 01ac                 move.b     d0,428(a7)
[00045f46] 242f 01a4                 move.l     420(a7),d2
[00045f4a] 7e10                      moveq.l    #16,d7
[00045f4c] eea2                      asr.l      d7,d2
[00045f4e] c43c ffff                 and.b      #$FF,d2
[00045f52] 1f42 01ad                 move.b     d2,429(a7)
[00045f56] 202f 01a4                 move.l     420(a7),d0
[00045f5a] e080                      asr.l      #8,d0
[00045f5c] c03c ffff                 and.b      #$FF,d0
[00045f60] 1f40 01ae                 move.b     d0,430(a7)
[00045f64] 72ff                      moveq.l    #-1,d1
[00045f66] c22f 01a7                 and.b      423(a7),d1
[00045f6a] 1f41 01af                 move.b     d1,431(a7)
[00045f6e] 41ef 01e4                 lea.l      484(a7),a0
[00045f72] 3004                      move.w     d4,d0
[00045f74] 7202                      moveq.l    #2,d1
[00045f76] 4eb9 0007 2a8e            jsr        Fwrite
[00045f7c] 7202                      moveq.l    #2,d1
[00045f7e] b280                      cmp.l      d0,d1
[00045f80] 6600 007e                 bne.w      Adr_drag_59
[00045f84] 41ef 01a8                 lea.l      424(a7),a0
[00045f88] 3004                      move.w     d4,d0
[00045f8a] 720a                      moveq.l    #10,d1
[00045f8c] 4eb9 0007 2a8e            jsr        Fwrite
[00045f92] 720a                      moveq.l    #10,d1
[00045f94] b280                      cmp.l      d0,d1
[00045f96] 6668                      bne.s      Adr_drag_59
[00045f98] 2079 000d 99d6            movea.l    _globl,a0
[00045f9e] 700a                      moveq.l    #10,d0
[00045fa0] 4eb9 0006 af04            jsr        mt_evnt_timer
[00045fa6] 4a40                      tst.w      d0
[00045fa8] 6756                      beq.s      Adr_drag_59
[00045faa] 41ef 01de                 lea.l      478(a7),a0
[00045fae] 7201                      moveq.l    #1,d1
[00045fb0] 3004                      move.w     d4,d0
[00045fb2] 4eb9 0007 2a02            jsr        Fread
[00045fb8] 7201                      moveq.l    #1,d1
[00045fba] b280                      cmp.l      d0,d1
[00045fbc] 6642                      bne.s      Adr_drag_59
[00045fbe] 102f 01de                 move.b     478(a7),d0
[00045fc2] 663c                      bne.s      Adr_drag_59
[00045fc4] 206a 000c                 movea.l    12(a2),a0
[00045fc8] 2f08                      move.l     a0,-(a7)
[00045fca] 4eb9 0007 69b0            jsr        strlen
[00045fd0] 2200                      move.l     d0,d1
[00045fd2] 3004                      move.w     d4,d0
[00045fd4] 205f                      movea.l    (a7)+,a0
[00045fd6] 4eb9 0007 2a8e            jsr        Fwrite
[00045fdc] 222f 01a4                 move.l     420(a7),d1
[00045fe0] b280                      cmp.l      d0,d1
[00045fe2] 671c                      beq.s      Adr_drag_59
Adr_drag_64:
[00045fe4] 2045                      movea.l    d5,a0
[00045fe6] 700d                      moveq.l    #13,d0
[00045fe8] 4eb9 0007 2b30            jsr        Psignal
[00045fee] 3004                      move.w     d4,d0
[00045ff0] 4eb9 0007 29ae            jsr        Fclose
[00045ff6] 7001                      moveq.l    #1,d0
[00045ff8] 4eb9 0005 1e1c            jsr        Awi_update
[00045ffe] 601e                      bra.s      Adr_drag_54
Adr_drag_59:
[00046000] 2045                      movea.l    d5,a0
[00046002] 700d                      moveq.l    #13,d0
[00046004] 4eb9 0007 2b30            jsr        Psignal
Adr_drag_58:
[0004600a] 7001                      moveq.l    #1,d0
[0004600c] 4eb9 0005 1e1c            jsr        Awi_update
[00046012] 3004                      move.w     d4,d0
[00046014] 4eb9 0007 29ae            jsr        Fclose
[0004601a] 6000 0304                 bra        Adr_drag_48
Adr_drag_54:
[0004601e] 6100 e820                 bsr        Adr_start
[00046022] 6100 e828                 bsr        Adr_next
[00046026] 3c00                      move.w     d0,d6
[00046028] 6f00 02f6                 ble        Adr_drag_48
[0004602c] c07c 1000                 and.w      #$1000,d0
[00046030] 6724                      beq.s      Adr_drag_66
[00046032] 3406                      move.w     d6,d2
[00046034] c47c 0fff                 and.w      #$0FFF,d2
[00046038] 48c2                      ext.l      d2
[0004603a] 2202                      move.l     d2,d1
[0004603c] d281                      add.l      d1,d1
[0004603e] d282                      add.l      d2,d1
[00046040] e789                      lsl.l      #3,d1
[00046042] 2079 0010 1f12            movea.l    ACSblk,a0
[00046048] 2268 0240                 movea.l    576(a0),a1
[0004604c] 2469 0018                 movea.l    24(a1),a2
[00046050] 45f2 1818                 lea.l      24(a2,d1.l),a2
[00046054] 601e                      bra.s      Adr_drag_67
Adr_drag_66:
[00046056] 3206                      move.w     d6,d1
[00046058] 48c1                      ext.l      d1
[0004605a] 2001                      move.l     d1,d0
[0004605c] d080                      add.l      d0,d0
[0004605e] d081                      add.l      d1,d0
[00046060] e788                      lsl.l      #3,d0
[00046062] 2079 0010 1f12            movea.l    ACSblk,a0
[00046068] 2268 0240                 movea.l    576(a0),a1
[0004606c] 2469 0014                 movea.l    20(a1),a2
[00046070] 45f2 0818                 lea.l      24(a2,d0.l),a2
Adr_drag_67:
[00046074] 302a 0016                 move.w     22(a2),d0
[00046078] 907c 000a                 sub.w      #$000A,d0
[0004607c] 6700 012a                 beq        Adr_drag_68
[00046080] 5340                      subq.w     #1,d0
[00046082] 6710                      beq.s      Adr_drag_69
[00046084] 907c 0009                 sub.w      #$0009,d0
[00046088] 670a                      beq.s      Adr_drag_69
[0004608a] 907c 000b                 sub.w      #$000B,d0
[0004608e] 6704                      beq.s      Adr_drag_69
[00046090] 6000 026a                 bra        Adr_drag_70
Adr_drag_69:
[00046094] 206a 000c                 movea.l    12(a2),a0
[00046098] 4eb9 0007 69b0            jsr        strlen
[0004609e] 5280                      addq.l     #1,d0
[000460a0] 4eb9 0004 7f44            jsr        Ax_glmalloc
[000460a6] 2f48 01e0                 move.l     a0,480(a7)
[000460aa] 2008                      move.l     a0,d0
[000460ac] 6700 024e                 beq        Adr_drag_70
[000460b0] 226a 000c                 movea.l    12(a2),a1
[000460b4] 4eb9 0007 6950            jsr        strcpy
[000460ba] 7210                      moveq.l    #16,d1
[000460bc] 4240                      clr.w      d0
[000460be] 204c                      movea.l    a4,a0
[000460c0] 4eb9 0007 712e            jsr        memset
[000460c6] 38bc 0501                 move.w     #$0501,(a4)
[000460ca] 202f 01e0                 move.l     480(a7),d0
[000460ce] 7210                      moveq.l    #16,d1
[000460d0] e2a0                      asr.l      d1,d0
[000460d2] 3940 0008                 move.w     d0,8(a4)
[000460d6] 396f 01e2 000a            move.w     482(a7),10(a4)
[000460dc] 4240                      clr.w      d0
[000460de] 4eb9 0005 1e1c            jsr        Awi_update
[000460e4] 4eb9 0004 6d70            jsr        Aev_mess
[000460ea] 2279 000d 99d6            movea.l    _globl,a1
[000460f0] 204c                      movea.l    a4,a0
[000460f2] 7210                      moveq.l    #16,d1
[000460f4] 302f 0034                 move.w     52(a7),d0
[000460f8] 4eb9 0006 a818            jsr        mt_appl_write
[000460fe] 7210                      moveq.l    #16,d1
[00046100] 4240                      clr.w      d0
[00046102] 204c                      movea.l    a4,a0
[00046104] 4eb9 0007 712e            jsr        memset
[0004610a] 2f39 000d 99d6            move.l     _globl,-(a7)
[00046110] 486f 01e8                 pea.l      488(a7)
[00046114] 486f 01ec                 pea.l      492(a7)
[00046118] 486f 01f0                 pea.l      496(a7)
[0004611c] 486f 01f4                 pea.l      500(a7)
[00046120] 486f 01f8                 pea.l      504(a7)
[00046124] 4878 07d0                 pea.l      ($000007D0).w
[00046128] 4267                      clr.w      -(a7)
[0004612a] 4267                      clr.w      -(a7)
[0004612c] 4267                      clr.w      -(a7)
[0004612e] 4267                      clr.w      -(a7)
[00046130] 4267                      clr.w      -(a7)
[00046132] 4267                      clr.w      -(a7)
[00046134] 4267                      clr.w      -(a7)
[00046136] 4267                      clr.w      -(a7)
[00046138] 4267                      clr.w      -(a7)
[0004613a] 4267                      clr.w      -(a7)
[0004613c] 4267                      clr.w      -(a7)
[0004613e] 43ef 0216                 lea.l      534(a7),a1
[00046142] 204c                      movea.l    a4,a0
[00046144] 4242                      clr.w      d2
[00046146] 4241                      clr.w      d1
[00046148] 7030                      moveq.l    #48,d0
[0004614a] 4eb9 0006 af70            jsr        mt_evnt_multi
[00046150] 4fef 0032                 lea.l      50(a7),a7
[00046154] 3a00                      move.w     d0,d5
[00046156] 7210                      moveq.l    #16,d1
[00046158] c240                      and.w      d0,d1
[0004615a] 6736                      beq.s      Adr_drag_71
[0004615c] 0c54 0500                 cmpi.w     #$0500,(a4)
[00046160] 671a                      beq.s      Adr_drag_72
[00046162] 2279 000d 99d6            movea.l    _globl,a1
[00046168] 204c                      movea.l    a4,a0
[0004616a] 2c79 0010 1f12            movea.l    ACSblk,a6
[00046170] 3016                      move.w     (a6),d0
[00046172] 7210                      moveq.l    #16,d1
[00046174] 4eb9 0006 a818            jsr        mt_appl_write
[0004617a] 6016                      bra.s      Adr_drag_71
Adr_drag_72:
[0004617c] 302c 0006                 move.w     6(a4),d0
[00046180] 6710                      beq.s      Adr_drag_71
[00046182] 2079 0010 1f12            movea.l    ACSblk,a0
[00046188] 2068 0240                 movea.l    576(a0),a0
[0004618c] 3006                      move.w     d6,d0
[0004618e] 6100 e79a                 bsr        Adr_del
Adr_drag_71:
[00046192] 7001                      moveq.l    #1,d0
[00046194] 4eb9 0005 1e1c            jsr        Awi_update
[0004619a] 206f 01e0                 movea.l    480(a7),a0
[0004619e] 4eb9 0004 7fa6            jsr        Ax_glfree
[000461a4] 6000 0156                 bra        Adr_drag_70
Adr_drag_68:
[000461a8] 486f 01a4                 pea.l      420(a7)
[000461ac] 43ef 01a0                 lea.l      416(a7),a1
[000461b0] 206a 000c                 movea.l    12(a2),a0
[000461b4] 4eb9 0004 dae4            jsr        Abp_mfdb2img
[000461ba] 584f                      addq.w     #4,a7
[000461bc] 4a40                      tst.w      d0
[000461be] 6600 013c                 bne        Adr_drag_70
[000461c2] 206f 019c                 movea.l    412(a7),a0
[000461c6] 3028 0002                 move.w     2(a0),d0
[000461ca] d040                      add.w      d0,d0
[000461cc] 48c0                      ext.l      d0
[000461ce] d1af 01a4                 add.l      d0,420(a7)
[000461d2] 202f 01a4                 move.l     420(a7),d0
[000461d6] 4eb9 0004 7f44            jsr        Ax_glmalloc
[000461dc] 2f48 0198                 move.l     a0,408(a7)
[000461e0] 6700 0110                 beq        Adr_drag_73
[000461e4] 202f 01a4                 move.l     420(a7),d0
[000461e8] 226f 019c                 movea.l    412(a7),a1
[000461ec] 4eb9 0007 6f44            jsr        memcpy
[000461f2] 7210                      moveq.l    #16,d1
[000461f4] 4240                      clr.w      d0
[000461f6] 204c                      movea.l    a4,a0
[000461f8] 4eb9 0007 712e            jsr        memset
[000461fe] 38bc 0504                 move.w     #$0504,(a4)
[00046202] 397c 0001 0006            move.w     #$0001,6(a4)
[00046208] 202f 0198                 move.l     408(a7),d0
[0004620c] 7210                      moveq.l    #16,d1
[0004620e] e2a0                      asr.l      d1,d0
[00046210] 3940 0008                 move.w     d0,8(a4)
[00046214] 396f 019a 000a            move.w     410(a7),10(a4)
[0004621a] 242f 01a4                 move.l     420(a7),d2
[0004621e] e2a2                      asr.l      d1,d2
[00046220] 3942 000c                 move.w     d2,12(a4)
[00046224] 396f 01a6 000e            move.w     422(a7),14(a4)
[0004622a] 4240                      clr.w      d0
[0004622c] 4eb9 0005 1e1c            jsr        Awi_update
[00046232] 4eb9 0004 6d70            jsr        Aev_mess
[00046238] 2279 000d 99d6            movea.l    _globl,a1
[0004623e] 204c                      movea.l    a4,a0
[00046240] 7210                      moveq.l    #16,d1
[00046242] 302f 0034                 move.w     52(a7),d0
[00046246] 4eb9 0006 a818            jsr        mt_appl_write
[0004624c] 7210                      moveq.l    #16,d1
[0004624e] 4240                      clr.w      d0
[00046250] 204c                      movea.l    a4,a0
[00046252] 4eb9 0007 712e            jsr        memset
[00046258] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004625e] 486f 01e8                 pea.l      488(a7)
[00046262] 486f 01ec                 pea.l      492(a7)
[00046266] 486f 01f0                 pea.l      496(a7)
[0004626a] 486f 01f4                 pea.l      500(a7)
[0004626e] 486f 01f8                 pea.l      504(a7)
[00046272] 4878 0bb8                 pea.l      ($00000BB8).w
[00046276] 4267                      clr.w      -(a7)
[00046278] 4267                      clr.w      -(a7)
[0004627a] 4267                      clr.w      -(a7)
[0004627c] 4267                      clr.w      -(a7)
[0004627e] 4267                      clr.w      -(a7)
[00046280] 4267                      clr.w      -(a7)
[00046282] 4267                      clr.w      -(a7)
[00046284] 4267                      clr.w      -(a7)
[00046286] 4267                      clr.w      -(a7)
[00046288] 4267                      clr.w      -(a7)
[0004628a] 4267                      clr.w      -(a7)
[0004628c] 43ef 0216                 lea.l      534(a7),a1
[00046290] 204c                      movea.l    a4,a0
[00046292] 4242                      clr.w      d2
[00046294] 4241                      clr.w      d1
[00046296] 7030                      moveq.l    #48,d0
[00046298] 4eb9 0006 af70            jsr        mt_evnt_multi
[0004629e] 4fef 0032                 lea.l      50(a7),a7
[000462a2] 3a00                      move.w     d0,d5
[000462a4] 7210                      moveq.l    #16,d1
[000462a6] c240                      and.w      d0,d1
[000462a8] 6736                      beq.s      Adr_drag_74
[000462aa] 0c54 0500                 cmpi.w     #$0500,(a4)
[000462ae] 671a                      beq.s      Adr_drag_75
[000462b0] 2279 000d 99d6            movea.l    _globl,a1
[000462b6] 204c                      movea.l    a4,a0
[000462b8] 2479 0010 1f12            movea.l    ACSblk,a2
[000462be] 3012                      move.w     (a2),d0
[000462c0] 7210                      moveq.l    #16,d1
[000462c2] 4eb9 0006 a818            jsr        mt_appl_write
[000462c8] 6016                      bra.s      Adr_drag_74
Adr_drag_75:
[000462ca] 302c 0006                 move.w     6(a4),d0
[000462ce] 6710                      beq.s      Adr_drag_74
[000462d0] 2079 0010 1f12            movea.l    ACSblk,a0
[000462d6] 2068 0240                 movea.l    576(a0),a0
[000462da] 3006                      move.w     d6,d0
[000462dc] 6100 e64c                 bsr        Adr_del
Adr_drag_74:
[000462e0] 7001                      moveq.l    #1,d0
[000462e2] 4eb9 0005 1e1c            jsr        Awi_update
[000462e8] 206f 0198                 movea.l    408(a7),a0
[000462ec] 4eb9 0004 7fa6            jsr        Ax_glfree
Adr_drag_73:
[000462f2] 206f 019c                 movea.l    412(a7),a0
[000462f6] 4eb9 0004 7e26            jsr        Ax_free
Adr_drag_70:
[000462fc] 2079 0010 1f12            movea.l    ACSblk,a0
[00046302] 4268 024a                 clr.w      586(a0)
[00046306] 6018                      bra.s      Adr_drag_48
Adr_drag_51:
[00046308] 2079 0010 1f12            movea.l    ACSblk,a0
[0004630e] 2668 0240                 movea.l    576(a0),a3
[00046312] 43ef 0036                 lea.l      54(a7),a1
[00046316] 7013                      moveq.l    #19,d0
[00046318] 246b 0004                 movea.l    4(a3),a2
[0004631c] 204b                      movea.l    a3,a0
[0004631e] 4e92                      jsr        (a2)
Adr_drag_48:
[00046320] 2079 0010 1f12            movea.l    ACSblk,a0
[00046326] 3028 024a                 move.w     586(a0),d0
[0004632a] 6700 00be                 beq        Adr_drag_2
[0004632e] 3228 0246                 move.w     582(a0),d1
[00046332] 6700 00b6                 beq        Adr_drag_2
[00046336] 7402                      moveq.l    #2,d2
[00046338] 2268 023c                 movea.l    572(a0),a1
[0004633c] c469 000e                 and.w      14(a1),d2
[00046340] 6700 00a8                 beq        Adr_drag_2
[00046344] 382f 003e                 move.w     62(a7),d4
[00046348] 6f04                      ble.s      Adr_drag_76
[0004634a] 3004                      move.w     d4,d0
[0004634c] 6006                      bra.s      Adr_drag_77
Adr_drag_76:
[0004634e] 302f 003e                 move.w     62(a7),d0
[00046352] 4440                      neg.w      d0
Adr_drag_77:
[00046354] 3f00                      move.w     d0,-(a7)
[00046356] 302f 003e                 move.w     62(a7),d0
[0004635a] 6f02                      ble.s      Adr_drag_78
[0004635c] 6006                      bra.s      Adr_drag_79
Adr_drag_78:
[0004635e] 302f 003e                 move.w     62(a7),d0
[00046362] 4440                      neg.w      d0
Adr_drag_79:
[00046364] d05f                      add.w      (a7)+,d0
[00046366] ea40                      asr.w      #5,d0
[00046368] 4245                      clr.w      d5
[0004636a] 600c                      bra.s      Adr_drag_80
Adr_drag_81:
[0004636c] 3200                      move.w     d0,d1
[0004636e] e241                      asr.w      #1,d1
[00046370] d240                      add.w      d0,d1
[00046372] e441                      asr.w      #2,d1
[00046374] 3001                      move.w     d1,d0
[00046376] 5245                      addq.w     #1,d5
Adr_drag_80:
[00046378] 4a40                      tst.w      d0
[0004637a] 66f0                      bne.s      Adr_drag_81
[0004637c] 4a45                      tst.w      d5
[0004637e] 6710                      beq.s      Adr_drag_82
[00046380] 2079 0010 1f12            movea.l    ACSblk,a0
[00046386] 0c68 0008 0246            cmpi.w     #$0008,582(a0)
[0004638c] 6f02                      ble.s      Adr_drag_82
[0004638e] 5345                      subq.w     #1,d5
Adr_drag_82:
[00046390] 4a45                      tst.w      d5
[00046392] 6710                      beq.s      Adr_drag_83
[00046394] 2079 0010 1f12            movea.l    ACSblk,a0
[0004639a] 0c68 0014 0246            cmpi.w     #$0014,582(a0)
[000463a0] 6f02                      ble.s      Adr_drag_83
[000463a2] 5345                      subq.w     #1,d5
Adr_drag_83:
[000463a4] 426f 0038                 clr.w      56(a7)
[000463a8] 6034                      bra.s      Adr_drag_84
Adr_drag_87:
[000463aa] 4240                      clr.w      d0
[000463ac] 3a80                      move.w     d0,(a5)
[000463ae] 3f40 0042                 move.w     d0,66(a7)
[000463b2] 7601                      moveq.l    #1,d3
[000463b4] eb6b                      lsl.w      d5,d3
[000463b6] 6022                      bra.s      Adr_drag_85
Adr_drag_86:
[000463b8] 302f 003e                 move.w     62(a7),d0
[000463bc] d16f 0042                 add.w      d0,66(a7)
[000463c0] 322f 003c                 move.w     60(a7),d1
[000463c4] d355                      add.w      d1,(a5)
[000463c6] 3415                      move.w     (a5),d2
[000463c8] ea62                      asr.w      d5,d2
[000463ca] 9242                      sub.w      d2,d1
[000463cc] 382f 0042                 move.w     66(a7),d4
[000463d0] ea64                      asr.w      d5,d4
[000463d2] 9044                      sub.w      d4,d0
[000463d4] 6100 e26c                 bsr        drag_draw
[000463d8] 5343                      subq.w     #1,d3
Adr_drag_85:
[000463da] 4a43                      tst.w      d3
[000463dc] 6eda                      bgt.s      Adr_drag_86
Adr_drag_84:
[000463de] 302f 0038                 move.w     56(a7),d0
[000463e2] 526f 0038                 addq.w     #1,56(a7)
[000463e6] 5540                      subq.w     #2,d0
[000463e8] 6dc0                      blt.s      Adr_drag_87
Adr_drag_2:
[000463ea] 4fef 01f6                 lea.l      502(a7),a7
[000463ee] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[000463f2] 4e75                      rts

		.data

[000d3674]                           dc.b $00
[000d3675]                           dc.b $00
[000d3676]                           dc.b $00
[000d3677]                           dc.b $00
[000d3678]                           dc.b $00
[000d3679]                           dc.b $00
[000d367a]                           dc.b $00
[000d367b]                           dc.b $00
[000d367c]                           dc.b $00
[000d367d]                           dc.b $00
[000d367e]                           dc.b $00
[000d367f]                           dc.b $00
[000d3680]                           dc.b $00
[000d3681]                           dc.b $00
[000d3682]                           dc.b $00
[000d3683]                           dc.b $00
[000d3684]                           dc.b $00
[000d3685]                           dc.b $00
[000d3686]                           dc.b $00
[000d3687]                           dc.b $00
[000d3688]                           dc.b $00
[000d3689]                           dc.b $00
[000d368a]                           dc.b $00
[000d368b]                           dc.b $00
[000d368c]                           dc.b $00
[000d368d]                           dc.b $00
[000d368e]                           dc.b $00
[000d368f]                           dc.b $00
[000d3690]                           dc.b $00
[000d3691]                           dc.b $00
[000d3692]                           dc.b $00
[000d3693]                           dc.b $00
[000d3694]                           dc.b $00
[000d3695]                           dc.b $00
[000d3696]                           dc.b $00
[000d3697]                           dc.b $00
[000d3698]                           dc.b $00
[000d3699]                           dc.b $00
[000d369a]                           dc.b $00
[000d369b]                           dc.b $00
[000d369c]                           dc.b $00
[000d369d]                           dc.b $00
[000d369e]                           dc.b $00
[000d369f]                           dc.b $00
[000d36a0]                           dc.b $00
[000d36a1]                           dc.b $00
[000d36a2]                           dc.b $00
[000d36a3]                           dc.b $00
[000d36a4]                           dc.b $00
[000d36a5]                           dc.b $00
[000d36a6]                           dc.b $00
[000d36a7]                           dc.b $00
[000d36a8]                           dc.b $00
[000d36a9]                           dc.b $00
[000d36aa]                           dc.b $00
[000d36ab]                           dc.b $00
[000d36ac]                           dc.b $00
[000d36ad]                           dc.b $00
[000d36ae]                           dc.b $00
[000d36af]                           dc.b $00
[000d36b0]                           dc.b $00
[000d36b1]                           dc.b $00
[000d36b2]                           dc.b $00
[000d36b3]                           dc.b $00
[000d36b4]                           dc.b $00
[000d36b5]                           dc.b $00
[000d36b6]                           dc.b $00
[000d36b7]                           dc.b $00
[000d36b8]                           dc.b $00
[000d36b9]                           dc.b $00
[000d36ba]                           dc.b $00
[000d36bb]                           dc.b $00
[000d36bc]                           dc.b $00
[000d36bd]                           dc.b $00
[000d36be]                           dc.b $00
[000d36bf]                           dc.b $00
[000d36c0]                           dc.b $00
[000d36c1]                           dc.b $00
[000d36c2]                           dc.b $00
[000d36c3]                           dc.b $00
[000d36c4]                           dc.b $00
[000d36c5]                           dc.b $00
[000d36c6]                           dc.b $00
[000d36c7]                           dc.b $00
[000d36c8]                           dc.b $00
[000d36c9]                           dc.b $00
[000d36ca]                           dc.b $00
[000d36cb]                           dc.b $00
[000d36cc]                           dc.b $00
[000d36cd]                           dc.b $00
[000d36ce]                           dc.b $00
[000d36cf]                           dc.b $00
[000d36d0]                           dc.b $00
[000d36d1]                           dc.b $00
[000d36d2]                           dc.b $00
[000d36d3]                           dc.b $00
[000d36d4]                           dc.b $00
[000d36d5]                           dc.b $00
[000d36d6]                           dc.b $00
[000d36d7]                           dc.b $00
[000d36d8]                           dc.b $00
[000d36d9]                           dc.b $00
[000d36da]                           dc.b $00
[000d36db]                           dc.b $00
[000d36dc]                           dc.b $00
[000d36dd]                           dc.b $00
[000d36de]                           dc.b $00
[000d36df]                           dc.b $00
[000d36e0]                           dc.b $00
[000d36e1]                           dc.b $00
[000d36e2]                           dc.b $00
[000d36e3]                           dc.b $00
[000d36e4]                           dc.b $00
[000d36e5]                           dc.b $00
[000d36e6]                           dc.b $00
[000d36e7]                           dc.b $00
[000d36e8]                           dc.b $00
[000d36e9]                           dc.b $00
[000d36ea]                           dc.b $00
[000d36eb]                           dc.b $00
[000d36ec]                           dc.b $00
[000d36ed]                           dc.b $00
[000d36ee]                           dc.b $00
[000d36ef]                           dc.b $00
[000d36f0]                           dc.b $00
[000d36f1]                           dc.b $00
[000d36f2]                           dc.b $00
[000d36f3]                           dc.b $00
[000d36f4]                           dc.b $00
[000d36f5]                           dc.b $00
[000d36f6]                           dc.b $00
[000d36f7]                           dc.b $00
[000d36f8]                           dc.b $00
[000d36f9]                           dc.b $00
[000d36fa]                           dc.b $00
[000d36fb]                           dc.b $00
[000d36fc]                           dc.b $00
[000d36fd]                           dc.b $00
[000d36fe]                           dc.b $00
[000d36ff]                           dc.b $00
[000d3700]                           dc.b $00
[000d3701]                           dc.b $00
[000d3702]                           dc.b $00
[000d3703]                           dc.b $00
[000d3704]                           dc.b $00
[000d3705]                           dc.b $00
[000d3706]                           dc.b $00
[000d3707]                           dc.b $00
[000d3708]                           dc.b $00
[000d3709]                           dc.b $00
[000d370a]                           dc.b $00
[000d370b]                           dc.b $00
[000d370c]                           dc.b $00
[000d370d]                           dc.b $00
[000d370e]                           dc.b $00
[000d370f]                           dc.b $00
[000d3710]                           dc.b $00
[000d3711]                           dc.b $00
[000d3712]                           dc.b $00
[000d3713]                           dc.b $00
[000d3714]                           dc.b $00
[000d3715]                           dc.b $00
[000d3716]                           dc.b $00
[000d3717]                           dc.b $00
[000d3718]                           dc.b $00
[000d3719]                           dc.b $00
[000d371a]                           dc.b $00
[000d371b]                           dc.b $00
[000d371c]                           dc.b $00
[000d371d]                           dc.b $00
[000d371e]                           dc.b $00
[000d371f]                           dc.b $00
[000d3720]                           dc.b $00
[000d3721]                           dc.b $00
[000d3722]                           dc.b $00
[000d3723]                           dc.b $00
[000d3724]                           dc.b $00
[000d3725]                           dc.b $00
[000d3726]                           dc.b $00
[000d3727]                           dc.b $00
[000d3728]                           dc.b $00
[000d3729]                           dc.b $00
[000d372a]                           dc.b $00
[000d372b]                           dc.b $00
[000d372c]                           dc.b $00
[000d372d]                           dc.b $00
[000d372e]                           dc.b $00
[000d372f]                           dc.b $00
[000d3730]                           dc.b $00
[000d3731]                           dc.b $00
[000d3732]                           dc.b $00
[000d3733]                           dc.b $00
[000d3734]                           dc.b $00
[000d3735]                           dc.b $00
[000d3736]                           dc.b $00
[000d3737]                           dc.b $00
[000d3738]                           dc.b $00
[000d3739]                           dc.b $00
[000d373a]                           dc.b $00
[000d373b]                           dc.b $00
[000d373c]                           dc.b $00
[000d373d]                           dc.b $00
[000d373e]                           dc.b $00
[000d373f]                           dc.b $00
[000d3740]                           dc.b $00
[000d3741]                           dc.b $00
[000d3742]                           dc.b $00
[000d3743]                           dc.b $00
[000d3744]                           dc.b $00
[000d3745]                           dc.b $00
[000d3746]                           dc.b $00
[000d3747]                           dc.b $00
[000d3748]                           dc.b $00
[000d3749]                           dc.b $00
[000d374a]                           dc.b $00
[000d374b]                           dc.b $00
[000d374c]                           dc.b $00
[000d374d]                           dc.b $00
[000d374e]                           dc.b $00
[000d374f]                           dc.b $00
[000d3750]                           dc.b $00
[000d3751]                           dc.b $00
[000d3752]                           dc.b $00
[000d3753]                           dc.b $00
[000d3754]                           dc.b $00
[000d3755]                           dc.b $00
[000d3756]                           dc.b $00
[000d3757]                           dc.b $00
[000d3758]                           dc.b $00
[000d3759]                           dc.b $00
[000d375a]                           dc.b $00
[000d375b]                           dc.b $00
[000d375c]                           dc.b $00
[000d375d]                           dc.b $00
[000d375e]                           dc.b $00
[000d375f]                           dc.b $00
[000d3760]                           dc.b $00
[000d3761]                           dc.b $00
[000d3762]                           dc.b $00
[000d3763]                           dc.b $00
[000d3764]                           dc.b $00
[000d3765]                           dc.b $00
[000d3766]                           dc.b $00
[000d3767]                           dc.b $00
[000d3768]                           dc.b $00
[000d3769]                           dc.b $00
[000d376a]                           dc.b $00
[000d376b]                           dc.b $00
[000d376c]                           dc.b $00
[000d376d]                           dc.b $00
[000d376e]                           dc.b $00
[000d376f]                           dc.b $00
[000d3770]                           dc.b $00
[000d3771]                           dc.b $00
[000d3772]                           dc.b $00
[000d3773]                           dc.b $00
[000d3774]                           dc.b $00
[000d3775]                           dc.b $00
[000d3776]                           dc.b $00
[000d3777]                           dc.b $00
[000d3778]                           dc.b $00
[000d3779]                           dc.b $00
[000d377a]                           dc.b $00
[000d377b]                           dc.b $00
[000d377c]                           dc.b $00
[000d377d]                           dc.b $00
[000d377e]                           dc.b $00
[000d377f]                           dc.b $00
[000d3780]                           dc.b $00
[000d3781]                           dc.b $00
[000d3782]                           dc.b $00
[000d3783]                           dc.b $00
[000d3784]                           dc.b 'U:\PIPE\DRAGDROP.AA',0
[000d3798]                           dc.w $7c00
[000d379a]                           dc.b 'U:\PIPE',0
[000d37a2]                           dc.b '.TXT    ',0
[000d37ab]                           dc.b $00
[000d37ac]                           dc.b $00
[000d37ad]                           dc.b 'ARGS    ',0
[000d37b6]                           dc.b $00
[000d37b7]                           dc.b $00

	.bss

pattern: ds.w 1
drags: ds.b 8192
