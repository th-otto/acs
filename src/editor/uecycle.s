
init_cycle:
[000264c8] 2f0a                      move.l     a2,-(a7)
[000264ca] 2f0b                      move.l     a3,-(a7)
[000264cc] 2448                      movea.l    a0,a2
[000264ce] 43f9 000b 30b0            lea.l      data,a1
[000264d4] 303c 2329                 move.w     #$2329,d0
[000264d8] 266a 0004                 movea.l    4(a2),a3
[000264dc] 4e93                      jsr        (a3)
[000264de] 265f                      movea.l    (a7)+,a3
[000264e0] 245f                      movea.l    (a7)+,a2
[000264e2] 4e75                      rts

minsize:
[000264e4] 2079 0010 1f12            movea.l    ACSblk,a0
[000264ea] 3228 0012                 move.w     18(a0),d1
[000264ee] 3001                      move.w     d1,d0
[000264f0] d040                      add.w      d0,d0
[000264f2] d041                      add.w      d1,d0
[000264f4] d040                      add.w      d0,d0
[000264f6] 3280                      move.w     d0,(a1)
[000264f8] 2079 0010 1f12            movea.l    ACSblk,a0
[000264fe] 226f 0004                 movea.l    4(a7),a1
[00026502] 32a8 0014                 move.w     20(a0),(a1)
[00026506] 4e75                      rts

object_tree:
[00026508] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0002650c] 4fef fff6                 lea.l      -10(a7),a7
[00026510] 2a48                      movea.l    a0,a5
[00026512] 2649                      movea.l    a1,a3
[00026514] 41f9 000b 3100            lea.l      $000B3100,a0
[0002651a] 43ef 0004                 lea.l      4(a7),a1
[0002651e] 12d8                      move.b     (a0)+,(a1)+
[00026520] 12d8                      move.b     (a0)+,(a1)+
[00026522] 41f9 000b 2cea            lea.l      ED_CYCLE,a0
[00026528] 4eb9 0004 9a5c            jsr        Aob_create
[0002652e] 2448                      movea.l    a0,a2
[00026530] 200a                      move.l     a2,d0
[00026532] 6606                      bne.s      object_tree_1
[00026534] 91c8                      suba.l     a0,a0
[00026536] 6000 01cc                 bra        object_tree_2
object_tree_1:
[0002653a] 41ea 0030                 lea.l      48(a2),a0
[0002653e] 7016                      moveq.l    #22,d0
[00026540] c06b 0008                 and.w      8(a3),d0
[00026544] 8168 0008                 or.w       d0,8(a0)
[00026548] 703f                      moveq.l    #63,d0
[0002654a] c06b 000a                 and.w      10(a3),d0
[0002654e] 8168 000a                 or.w       d0,10(a0)
[00026552] 2668 000c                 movea.l    12(a0),a3
[00026556] 49f9 0010 1f12            lea.l      ACSblk,a4
[0002655c] 701b                      moveq.l    #27,d0
[0002655e] 224a                      movea.l    a2,a1
[00026560] 2054                      movea.l    (a4),a0
[00026562] 2068 0258                 movea.l    600(a0),a0
[00026566] 4eb9 0002 f23c            jsr        oe_beself
[0002656c] 7008                      moveq.l    #8,d0
[0002656e] 224a                      movea.l    a2,a1
[00026570] 2054                      movea.l    (a4),a0
[00026572] 2068 0258                 movea.l    600(a0),a0
[00026576] 4eb9 0002 f23c            jsr        oe_beself
[0002657c] 7020                      moveq.l    #32,d0
[0002657e] 224a                      movea.l    a2,a1
[00026580] 2054                      movea.l    (a4),a0
[00026582] 2068 0258                 movea.l    600(a0),a0
[00026586] 4eb9 0002 f23c            jsr        oe_beself
[0002658c] 7022                      moveq.l    #34,d0
[0002658e] 224a                      movea.l    a2,a1
[00026590] 2054                      movea.l    (a4),a0
[00026592] 2068 0258                 movea.l    600(a0),a0
[00026596] 4eb9 0002 f23c            jsr        oe_beself
[0002659c] 4857                      pea.l      (a7)
[0002659e] 43f9 000b 3123            lea.l      $000B3123,a1
[000265a4] 2055                      movea.l    (a5),a0
[000265a6] 4eb9 0007 594a            jsr        sscanf
[000265ac] 584f                      addq.w     #4,a7
[000265ae] 0c97 0001 0000            cmpi.l     #$00010000,(a7)
[000265b4] 6618                      bne.s      object_tree_3
[000265b6] 41f9 000b 26b6            lea.l      A_ADAPTCYC,a0
[000265bc] 7001                      moveq.l    #1,d0
[000265be] 4eb9 0005 17fe            jsr        Awi_alert
[000265c4] 5340                      subq.w     #1,d0
[000265c6] 6606                      bne.s      object_tree_3
[000265c8] 2ebc 0001 0290            move.l     #$00010290,(a7)
object_tree_3:
[000265ce] 2757 0004                 move.l     (a7),4(a3)
[000265d2] 0c6d 0002 0008            cmpi.w     #$0002,8(a5)
[000265d8] 6608                      bne.s      object_tree_4
[000265da] 2f6d 000a 0006            move.l     10(a5),6(a7)
[000265e0] 6008                      bra.s      object_tree_5
object_tree_4:
[000265e2] 2f7c 000b 310f 0006       move.l     #$000B310F,6(a7)
object_tree_5:
[000265ea] 226f 0006                 movea.l    6(a7),a1
[000265ee] 303c 0190                 move.w     #$0190,d0
[000265f2] 41ea 0030                 lea.l      48(a2),a0
[000265f6] 4eb9 0005 c2fa            jsr        Auo_cycle
[000265fc] 2617                      move.l     (a7),d3
[000265fe] e883                      asr.l      #4,d3
[00026600] c67c 000f                 and.w      #$000F,d3
[00026604] 3003                      move.w     d3,d0
[00026606] 48c0                      ext.l      d0
[00026608] e588                      lsl.l      #2,d0
[0002660a] 41f9 000b e270            lea.l      colour_text,a0
[00026610] 2270 0800                 movea.l    0(a0,d0.l),a1
[00026614] 204a                      movea.l    a2,a0
[00026616] 7019                      moveq.l    #25,d0
[00026618] 4eb9 0004 afe0            jsr        Aob_puttext
[0002661e] 3003                      move.w     d3,d0
[00026620] 026a fff0 024e            andi.w     #$FFF0,590(a2)
[00026626] c07c 000f                 and.w      #$000F,d0
[0002662a] 816a 024e                 or.w       d0,590(a2)
[0002662e] 760f                      moveq.l    #15,d3
[00026630] c66f 0002                 and.w      2(a7),d3
[00026634] 3003                      move.w     d3,d0
[00026636] 48c0                      ext.l      d0
[00026638] e588                      lsl.l      #2,d0
[0002663a] 41f9 000b e270            lea.l      colour_text,a0
[00026640] 2270 0800                 movea.l    0(a0,d0.l),a1
[00026644] 204a                      movea.l    a2,a0
[00026646] 7012                      moveq.l    #18,d0
[00026648] 4eb9 0004 afe0            jsr        Aob_puttext
[0002664e] 3003                      move.w     d3,d0
[00026650] 026a fff0 01a6            andi.w     #$FFF0,422(a2)
[00026656] c07c 000f                 and.w      #$000F,d0
[0002665a] 816a 01a6                 or.w       d0,422(a2)
[0002665e] 2017                      move.l     (a7),d0
[00026660] e080                      asr.l      #8,d0
[00026662] 1f40 0004                 move.b     d0,4(a7)
[00026666] 43ef 0004                 lea.l      4(a7),a1
[0002666a] 204a                      movea.l    a2,a0
[0002666c] 701b                      moveq.l    #27,d0
[0002666e] 4eb9 0004 afe0            jsr        Aob_puttext
[00026674] 226f 0006                 movea.l    6(a7),a1
[00026678] 7008                      moveq.l    #8,d0
[0002667a] 204a                      movea.l    a2,a0
[0002667c] 4eb9 0004 afe0            jsr        Aob_puttext
[00026682] 2017                      move.l     (a7),d0
[00026684] c0bc 0001 0000            and.l      #$00010000,d0
[0002668a] 6706                      beq.s      object_tree_6
[0002668c] 006a 0001 00e2            ori.w      #$0001,226(a2)
object_tree_6:
[00026692] 206a 030c                 movea.l    780(a2),a0
[00026696] 2768 000c 0018            move.l     12(a0),24(a3)
[0002669c] 206d 0026                 movea.l    38(a5),a0
[000266a0] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000266a6] 4a40                      tst.w      d0
[000266a8] 6712                      beq.s      object_tree_7
[000266aa] 43f9 000b 310f            lea.l      $000B310F,a1
[000266b0] 7020                      moveq.l    #32,d0
[000266b2] 204a                      movea.l    a2,a0
[000266b4] 4eb9 0004 afe0            jsr        Aob_puttext
[000266ba] 600e                      bra.s      object_tree_8
object_tree_7:
[000266bc] 226d 0026                 movea.l    38(a5),a1
[000266c0] 7020                      moveq.l    #32,d0
[000266c2] 204a                      movea.l    a2,a0
[000266c4] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_8:
[000266ca] 206a 033c                 movea.l    828(a2),a0
[000266ce] 2768 000c 001c            move.l     12(a0),28(a3)
[000266d4] 206d 002a                 movea.l    42(a5),a0
[000266d8] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000266de] 4a40                      tst.w      d0
[000266e0] 6712                      beq.s      object_tree_9
[000266e2] 43f9 000b 310f            lea.l      $000B310F,a1
[000266e8] 7022                      moveq.l    #34,d0
[000266ea] 204a                      movea.l    a2,a0
[000266ec] 4eb9 0004 afe0            jsr        Aob_puttext
[000266f2] 600e                      bra.s      object_tree_10
object_tree_9:
[000266f4] 226d 002a                 movea.l    42(a5),a1
[000266f8] 7022                      moveq.l    #34,d0
[000266fa] 204a                      movea.l    a2,a0
[000266fc] 4eb9 0004 afe0            jsr        Aob_puttext
object_tree_10:
[00026702] 204a                      movea.l    a2,a0
object_tree_2:
[00026704] 4fef 000a                 lea.l      10(a7),a7
[00026708] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0002670c] 4e75                      rts

test_it:
[0002670e] 2f0a                      move.l     a2,-(a7)
[00026710] 2f0b                      move.l     a3,-(a7)
[00026712] 2648                      movea.l    a0,a3
[00026714] 2449                      movea.l    a1,a2
[00026716] 22bc 0005 bd1e            move.l     #A_cycle,(a1)
[0002671c] 486a 0004                 pea.l      4(a2)
[00026720] 43f9 000b 3123            lea.l      $000B3123,a1
[00026726] 2050                      movea.l    (a0),a0
[00026728] 4eb9 0007 594a            jsr        sscanf
[0002672e] 584f                      addq.w     #4,a7
[00026730] 257c 0005 c2fa 0008       move.l     #Auo_cycle,8(a2)
[00026738] 0c6b 0002 0008            cmpi.w     #$0002,8(a3)
[0002673e] 6608                      bne.s      test_it_1
[00026740] 256b 000a 000c            move.l     10(a3),12(a2)
[00026746] 6004                      bra.s      test_it_2
test_it_1:
[00026748] 42aa 000c                 clr.l      12(a2)
test_it_2:
[0002674c] 7000                      moveq.l    #0,d0
[0002674e] 2540 0014                 move.l     d0,20(a2)
[00026752] 2540 0010                 move.l     d0,16(a2)
[00026756] 206b 0026                 movea.l    38(a3),a0
[0002675a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00026760] 4a40                      tst.w      d0
[00026762] 6704                      beq.s      test_it_3
[00026764] 91c8                      suba.l     a0,a0
[00026766] 6004                      bra.s      test_it_4
test_it_3:
[00026768] 206b 0026                 movea.l    38(a3),a0
test_it_4:
[0002676c] 2548 0018                 move.l     a0,24(a2)
[00026770] 206b 002a                 movea.l    42(a3),a0
[00026774] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002677a] 4a40                      tst.w      d0
[0002677c] 6704                      beq.s      test_it_5
[0002677e] 91c8                      suba.l     a0,a0
[00026780] 6004                      bra.s      test_it_6
test_it_5:
[00026782] 206b 002a                 movea.l    42(a3),a0
test_it_6:
[00026786] 2548 001c                 move.l     a0,28(a2)
[0002678a] 265f                      movea.l    (a7)+,a3
[0002678c] 245f                      movea.l    (a7)+,a2
[0002678e] 4e75                      rts

abort:
[00026790] 2079 0010 1f12            movea.l    ACSblk,a0
[00026796] 2268 0258                 movea.l    600(a0),a1
[0002679a] 2069 0014                 movea.l    20(a1),a0
[0002679e] 2068 003c                 movea.l    60(a0),a0
[000267a2] 42a8 0018                 clr.l      24(a0)
[000267a6] 42a8 001c                 clr.l      28(a0)
[000267aa] 2079 000b 30f0            movea.l    $000B30F0,a0
[000267b0] 2050                      movea.l    (a0),a0
[000267b2] 4e90                      jsr        (a0)
[000267b4] 4e75                      rts

ok:
[000267b6] 48e7 003c                 movem.l    a2-a5,-(a7)
[000267ba] 4fef ffce                 lea.l      -50(a7),a7
[000267be] 45f9 0010 1f12            lea.l      ACSblk,a2
[000267c4] 2052                      movea.l    (a2),a0
[000267c6] 2268 0258                 movea.l    600(a0),a1
[000267ca] 2669 0014                 movea.l    20(a1),a3
[000267ce] 2069 0014                 movea.l    20(a1),a0
[000267d2] 2a68 003c                 movea.l    60(a0),a5
[000267d6] 4eb9 0002 697e            jsr        prepair
[000267dc] 49f9 000f f542            lea.l      parm,a4
[000267e2] 2f2d 0004                 move.l     4(a5),-(a7)
[000267e6] 43f9 000b 3123            lea.l      $000B3123,a1
[000267ec] 204c                      movea.l    a4,a0
[000267ee] 4eb9 0007 5680            jsr        sprintf
[000267f4] 584f                      addq.w     #4,a7
[000267f6] 2e8c                      move.l     a4,(a7)
[000267f8] 2f7c 000b 3119 0004       move.l     #$000B3119,4(a7)
[00026800] 43ef 002e                 lea.l      46(a7),a1
[00026804] 7003                      moveq.l    #3,d0
[00026806] 41eb 00c0                 lea.l      192(a3),a0
[0002680a] 4eb9 0005 e010            jsr        Auo_boxed
[00026810] 206f 002e                 movea.l    46(a7),a0
[00026814] 1010                      move.b     (a0),d0
[00026816] 670c                      beq.s      ok_1
[00026818] 3f7c 0002 0008            move.w     #$0002,8(a7)
[0002681e] 2f48 000a                 move.l     a0,10(a7)
[00026822] 6008                      bra.s      ok_2
ok_1:
[00026824] 426f 0008                 clr.w      8(a7)
[00026828] 42af 000a                 clr.l      10(a7)
ok_2:
[0002682c] 42af 000e                 clr.l      14(a7)
[00026830] 4240                      clr.w      d0
[00026832] 3f40 001c                 move.w     d0,28(a7)
[00026836] 3f40 0012                 move.w     d0,18(a7)
[0002683a] 7200                      moveq.l    #0,d1
[0002683c] 2f41 001e                 move.l     d1,30(a7)
[00026840] 2f41 0014                 move.l     d1,20(a7)
[00026844] 7000                      moveq.l    #0,d0
[00026846] 2f40 0022                 move.l     d0,34(a7)
[0002684a] 2f40 0018                 move.l     d0,24(a7)
[0002684e] 43ef 0026                 lea.l      38(a7),a1
[00026852] 41eb 0300                 lea.l      768(a3),a0
[00026856] 7003                      moveq.l    #3,d0
[00026858] 4eb9 0005 e010            jsr        Auo_boxed
[0002685e] 206f 0026                 movea.l    38(a7),a0
[00026862] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00026868] 4a40                      tst.w      d0
[0002686a] 6704                      beq.s      ok_3
[0002686c] 42af 0026                 clr.l      38(a7)
ok_3:
[00026870] 43ef 002a                 lea.l      42(a7),a1
[00026874] 7003                      moveq.l    #3,d0
[00026876] 41eb 0330                 lea.l      816(a3),a0
[0002687a] 4eb9 0005 e010            jsr        Auo_boxed
[00026880] 206f 002a                 movea.l    42(a7),a0
[00026884] 4eb9 0004 3a92            jsr        Ast_isEmpty
[0002688a] 4a40                      tst.w      d0
[0002688c] 6704                      beq.s      ok_4
[0002688e] 42af 002a                 clr.l      42(a7)
ok_4:
[00026892] 2052                      movea.l    (a2),a0
[00026894] 3228 0014                 move.w     20(a0),d1
[00026898] 3428 0012                 move.w     18(a0),d2
[0002689c] 3002                      move.w     d2,d0
[0002689e] d040                      add.w      d0,d0
[000268a0] d042                      add.w      d2,d0
[000268a2] d040                      add.w      d0,d0
[000268a4] 41d7                      lea.l      (a7),a0
[000268a6] 2279 000b 30f0            movea.l    $000B30F0,a1
[000268ac] 2269 0004                 movea.l    4(a1),a1
[000268b0] 4e91                      jsr        (a1)
[000268b2] 6100 fedc                 bsr        abort
[000268b6] 4fef 0032                 lea.l      50(a7),a7
[000268ba] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[000268be] 4e75                      rts

edcyc_outcol:
[000268c0] 2f0a                      move.l     a2,-(a7)
[000268c2] 2079 0010 1f12            movea.l    ACSblk,a0
[000268c8] 2268 025c                 movea.l    604(a0),a1
[000268cc] 2469 003c                 movea.l    60(a1),a2
[000268d0] 584a                      addq.w     #4,a2
[000268d2] 7011                      moveq.l    #17,d0
[000268d4] 3f00                      move.w     d0,-(a7)
[000268d6] 7412                      moveq.l    #18,d2
[000268d8] 720f                      moveq.l    #15,d1
[000268da] 700f                      moveq.l    #15,d0
[000268dc] c06a 0002                 and.w      2(a2),d0
[000268e0] 4eb9 0002 f280            jsr        oe_colsel
[000268e6] 544f                      addq.w     #2,a7
[000268e8] 4a40                      tst.w      d0
[000268ea] 6b2a                      bmi.s      edcyc_outcol_1
[000268ec] 72f0                      moveq.l    #-16,d1
[000268ee] c292                      and.l      (a2),d1
[000268f0] 3400                      move.w     d0,d2
[000268f2] 48c2                      ext.l      d2
[000268f4] 8282                      or.l       d2,d1
[000268f6] 2481                      move.l     d1,(a2)
[000268f8] 7001                      moveq.l    #1,d0
[000268fa] 2079 0010 1f12            movea.l    ACSblk,a0
[00026900] 2068 0258                 movea.l    600(a0),a0
[00026904] 2279 0010 1f12            movea.l    ACSblk,a1
[0002690a] 2469 0258                 movea.l    600(a1),a2
[0002690e] 226a 0066                 movea.l    102(a2),a1
[00026912] 72ff                      moveq.l    #-1,d1
[00026914] 4e91                      jsr        (a1)
edcyc_outcol_1:
[00026916] 245f                      movea.l    (a7)+,a2
[00026918] 4e75                      rts

edcyc_incol:
[0002691a] 3f03                      move.w     d3,-(a7)
[0002691c] 2f0a                      move.l     a2,-(a7)
[0002691e] 2079 0010 1f12            movea.l    ACSblk,a0
[00026924] 2268 025c                 movea.l    604(a0),a1
[00026928] 2469 003c                 movea.l    60(a1),a2
[0002692c] 584a                      addq.w     #4,a2
[0002692e] 7018                      moveq.l    #24,d0
[00026930] 3f00                      move.w     d0,-(a7)
[00026932] 7419                      moveq.l    #25,d2
[00026934] 7216                      moveq.l    #22,d1
[00026936] 2012                      move.l     (a2),d0
[00026938] e880                      asr.l      #4,d0
[0002693a] c07c 000f                 and.w      #$000F,d0
[0002693e] 4eb9 0002 f280            jsr        oe_colsel
[00026944] 544f                      addq.w     #2,a7
[00026946] 3600                      move.w     d0,d3
[00026948] 6b2e                      bmi.s      edcyc_incol_1
[0002694a] 2212                      move.l     (a2),d1
[0002694c] c2bc ffff ff0f            and.l      #$FFFFFF0F,d1
[00026952] e948                      lsl.w      #4,d0
[00026954] 48c0                      ext.l      d0
[00026956] 8280                      or.l       d0,d1
[00026958] 2481                      move.l     d1,(a2)
[0002695a] 2079 0010 1f12            movea.l    ACSblk,a0
[00026960] 2068 0258                 movea.l    600(a0),a0
[00026964] 2279 0010 1f12            movea.l    ACSblk,a1
[0002696a] 2469 0258                 movea.l    600(a1),a2
[0002696e] 226a 0066                 movea.l    102(a2),a1
[00026972] 7001                      moveq.l    #1,d0
[00026974] 72ff                      moveq.l    #-1,d1
[00026976] 4e91                      jsr        (a1)
edcyc_incol_1:
[00026978] 245f                      movea.l    (a7)+,a2
[0002697a] 361f                      move.w     (a7)+,d3
[0002697c] 4e75                      rts

prepair:
[0002697e] 48e7 0038                 movem.l    a2-a4,-(a7)
[00026982] 4fef fff0                 lea.l      -16(a7),a7
[00026986] 45f9 0010 1f12            lea.l      ACSblk,a2
[0002698c] 2052                      movea.l    (a2),a0
[0002698e] 2268 0258                 movea.l    600(a0),a1
[00026992] 2069 0014                 movea.l    20(a1),a0
[00026996] 2668 003c                 movea.l    60(a0),a3
[0002699a] 43ef 000a                 lea.l      10(a7),a1
[0002699e] 701b                      moveq.l    #27,d0
[000269a0] 4eb9 0004 b154            jsr        Aob_gettext
[000269a6] 202b 0004                 move.l     4(a3),d0
[000269aa] c0bc 0000 00ff            and.l      #$000000FF,d0
[000269b0] 122f 000a                 move.b     10(a7),d1
[000269b4] 4881                      ext.w      d1
[000269b6] 48c1                      ext.l      d1
[000269b8] c2bc 0000 00ff            and.l      #$000000FF,d1
[000269be] e189                      lsl.l      #8,d1
[000269c0] d081                      add.l      d1,d0
[000269c2] 2740 0004                 move.l     d0,4(a3)
[000269c6] 7201                      moveq.l    #1,d1
[000269c8] 2052                      movea.l    (a2),a0
[000269ca] 2268 0258                 movea.l    600(a0),a1
[000269ce] 2069 0014                 movea.l    20(a1),a0
[000269d2] c268 00e2                 and.w      226(a0),d1
[000269d6] 6708                      beq.s      prepair_1
[000269d8] 00ab 0001 0000 0004       ori.l      #$00010000,4(a3)
prepair_1:
[000269e0] 43ef 000c                 lea.l      12(a7),a1
[000269e4] 7003                      moveq.l    #3,d0
[000269e6] 2052                      movea.l    (a2),a0
[000269e8] 2068 0258                 movea.l    600(a0),a0
[000269ec] 2068 0014                 movea.l    20(a0),a0
[000269f0] 41e8 00c0                 lea.l      192(a0),a0
[000269f4] 4eb9 0005 e010            jsr        Auo_boxed
[000269fa] 2052                      movea.l    (a2),a0
[000269fc] 2ea8 0258                 move.l     600(a0),(a7)
[00026a00] 2268 0258                 movea.l    600(a0),a1
[00026a04] 2069 0014                 movea.l    20(a1),a0
[00026a08] 41e8 0030                 lea.l      48(a0),a0
[00026a0c] 2f48 0004                 move.l     a0,4(a7)
[00026a10] 3f7c 0002 0008            move.w     #$0002,8(a7)
[00026a16] 43d7                      lea.l      (a7),a1
[00026a18] 7009                      moveq.l    #9,d0
[00026a1a] 286b 0008                 movea.l    8(a3),a4
[00026a1e] 4e94                      jsr        (a4)
[00026a20] 226f 000c                 movea.l    12(a7),a1
[00026a24] 303c 0190                 move.w     #$0190,d0
[00026a28] 2052                      movea.l    (a2),a0
[00026a2a] 2868 0258                 movea.l    600(a0),a4
[00026a2e] 206c 0014                 movea.l    20(a4),a0
[00026a32] 41e8 0030                 lea.l      48(a0),a0
[00026a36] 286b 0008                 movea.l    8(a3),a4
[00026a3a] 4e94                      jsr        (a4)
[00026a3c] 93c9                      suba.l     a1,a1
[00026a3e] 7005                      moveq.l    #5,d0
[00026a40] 2052                      movea.l    (a2),a0
[00026a42] 2868 0258                 movea.l    600(a0),a4
[00026a46] 206c 0014                 movea.l    20(a4),a0
[00026a4a] 41e8 0030                 lea.l      48(a0),a0
[00026a4e] 286b 0008                 movea.l    8(a3),a4
[00026a52] 4e94                      jsr        (a4)
[00026a54] 4fef 0010                 lea.l      16(a7),a7
[00026a58] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00026a5c] 4e75                      rts

	.data
A_ADAPTCYC:
[000b26b6]                           dc.b '[2][ Dies ist wahrscheinlich ein| Objekt nach alter Definition.| Soll es auf den Standardwert| gesetzt werden?][OK| Abbruch ]',0
BUBBLE_01:
[000b2734]                           dc.b 'Die énderungen werden Åbernommen und Åberschreiben die alten Einstellungen.',0
BUBBLE_02:
[000b2780]                           dc.b 'Die énderungen werden verworfen, die alten Einstellungen bleiben erhalten.',0
BUBBLE_03:
[000b27cb]                           dc.b 'Hier kann der String, der fÅr BubbleGEM verwendet werden soll, eingegeben werden.',0
BUBBLE_04:
[000b281d]                           dc.b 'Hier kann der String eingegeben werden, der das aufzurufende Context-Popup beschreibt (siehe in der Dokumentation zu Ame_strpopup).',0
BUBBLE_05:
[000b28a1]                           dc.b 'Hier wird das Zeichen eingegeben, das im Popup auf der rechten Seite beim Anklicken zum nÑchsten Wert blÑttert.',0
BUBBLE_06:
[000b2911]                           dc.b 'Dieser Button stellt das Beispiel-Popup links oben um auf den gerade eingegebenen Text. Damit kînnen Sie Ihr Popup direkt ausprobieren.',0
BUBBLE_07:
[000b2999]                           dc.b 'Durch diese Checkbox kann die 3D-Darstellung ein- und ausgeschaltet werden. Das Ergebnis wird nach Klick auf den Button "Probe" am Beispiel-Popup oben links dargestellt.',0
TEXT_001:
[000b2a43]                           dc.b 'Weiû|Rot|GrÅn|Blau|Gelb|TÅrkis|Lila|Schwarz',0
TEXT_005:
[000b2a6f]                           dc.b $4f
[000b2a70]                           dc.w $4b00
TEXT_008:
[000b2a72]                           dc.b 'Probe',0
TEXT_009:
[000b2a78]                           dc.b 'Abbruch',0
TEXT_01:
[000b2a80]                           dc.b '3D-Modus',0
TEXT_02:
[000b2a89]                           dc.b 'Zyklus-Zeichen:',0
TEXT_05:
[000b2a99]                           dc.b 'Sonstiges',0
TEXT_08:
[000b2aa3]                           dc.b 'BubbleGEM-Text',0
TEXT_09:
[000b2ab2]                           dc.b 'unten:',0
TEXT_10:
[000b2ab9]                           dc.b 'Rahmen:',0
TEXT_16:
[000b2ac1]                           dc.b 'Context-Popup',0
TEXT_19:
[000b2acf]                           dc.b 'oben:',0
TEXT_21:
[000b2ad5]                           dc.b 'links/',0
TEXT_22:
[000b2adc]                           dc.b 'rechts/',0
help_title:
[000b2ae4]                           dc.b 'Der Cycle-Button-Editor',0
title:
[000b2afc]                           dc.b 'CYCLEBUTTON -',0
A_3DBUTTON01:
[000b2b0a] 0005a4e2                  dc.l A_3Dbutton
[000b2b0e]                           dc.w $a9f1
[000b2b10]                           dc.w $01f8
[000b2b12] 00059318                  dc.l Auo_string
[000b2b16]                           dc.b $00
[000b2b17]                           dc.b $00
[000b2b18]                           dc.b $00
[000b2b19]                           dc.b $00
[000b2b1a]                           dc.b $00
[000b2b1b]                           dc.b $00
[000b2b1c]                           dc.b $00
[000b2b1d]                           dc.b $00
[000b2b1e]                           dc.b $00
[000b2b1f]                           dc.b $00
[000b2b20]                           dc.b $00
[000b2b21]                           dc.b $00
[000b2b22]                           dc.b $00
[000b2b23]                           dc.b $00
[000b2b24]                           dc.b $00
[000b2b25]                           dc.b $00
[000b2b26]                           dc.b $00
[000b2b27]                           dc.b $00
[000b2b28]                           dc.b $00
[000b2b29]                           dc.b $00
A_3DBUTTON02:
[000b2b2a] 0005a4e2                  dc.l A_3Dbutton
[000b2b2e]                           dc.w $21f1
[000b2b30]                           dc.w $0178
[000b2b32] 00059318                  dc.l Auo_string
[000b2b36]                           dc.b $00
[000b2b37]                           dc.b $00
[000b2b38]                           dc.b $00
[000b2b39]                           dc.b $00
[000b2b3a]                           dc.b $00
[000b2b3b]                           dc.b $00
[000b2b3c]                           dc.b $00
[000b2b3d]                           dc.b $00
[000b2b3e]                           dc.b $00
[000b2b3f]                           dc.b $00
[000b2b40]                           dc.b $00
[000b2b41]                           dc.b $00
[000b2b42]                           dc.b $00
[000b2b43]                           dc.b $00
[000b2b44]                           dc.b $00
[000b2b45]                           dc.b $00
[000b2b46]                           dc.b $00
[000b2b47]                           dc.b $00
[000b2b48]                           dc.b $00
[000b2b49]                           dc.b $00
A_3DBUTTON03:
[000b2b4a] 0005a4e2                  dc.l A_3Dbutton
[000b2b4e]                           dc.w $29c1
[000b2b50]                           dc.w $0178
[000b2b52] 00059318                  dc.l Auo_string
[000b2b56] 000b2a6f                  dc.l TEXT_005
[000b2b5a]                           dc.b $00
[000b2b5b]                           dc.b $00
[000b2b5c]                           dc.b $00
[000b2b5d]                           dc.b $00
[000b2b5e]                           dc.b $00
[000b2b5f]                           dc.b $00
[000b2b60]                           dc.b $00
[000b2b61]                           dc.b $00
[000b2b62] 000b2734                  dc.l BUBBLE_01
[000b2b66]                           dc.b $00
[000b2b67]                           dc.b $00
[000b2b68]                           dc.b $00
[000b2b69]                           dc.b $00
A_3DBUTTON06:
[000b2b6a] 0005a4e2                  dc.l A_3Dbutton
[000b2b6e]                           dc.w $29c1
[000b2b70]                           dc.w $0178
[000b2b72] 00059318                  dc.l Auo_string
[000b2b76] 000b2a78                  dc.l TEXT_009
[000b2b7a]                           dc.b $00
[000b2b7b]                           dc.b $00
[000b2b7c]                           dc.b $00
[000b2b7d]                           dc.b $00
[000b2b7e]                           dc.b $00
[000b2b7f]                           dc.b $00
[000b2b80]                           dc.b $00
[000b2b81]                           dc.b $00
[000b2b82] 000b2780                  dc.l BUBBLE_02
[000b2b86]                           dc.b $00
[000b2b87]                           dc.b $00
[000b2b88]                           dc.b $00
[000b2b89]                           dc.b $00
A_3DBUTTON07:
[000b2b8a] 0005a4e2                  dc.l A_3Dbutton
[000b2b8e]                           dc.w $29c1
[000b2b90]                           dc.w $0178
[000b2b92] 00059318                  dc.l Auo_string
[000b2b96] 000b2a72                  dc.l TEXT_008
[000b2b9a]                           dc.b $00
[000b2b9b]                           dc.b $00
[000b2b9c]                           dc.b $00
[000b2b9d]                           dc.b $00
[000b2b9e]                           dc.b $00
[000b2b9f]                           dc.b $00
[000b2ba0]                           dc.b $00
[000b2ba1]                           dc.b $00
[000b2ba2] 000b2911                  dc.l BUBBLE_06
[000b2ba6]                           dc.b $00
[000b2ba7]                           dc.b $00
[000b2ba8]                           dc.b $00
[000b2ba9]                           dc.b $00
A_3DBUTTON27:
[000b2baa] 0005a4e2                  dc.l A_3Dbutton
[000b2bae]                           dc.w $09f1
[000b2bb0]                           dc.w $0178
[000b2bb2] 00059318                  dc.l Auo_string
[000b2bb6]                           dc.b $00
[000b2bb7]                           dc.b $00
[000b2bb8]                           dc.b $00
[000b2bb9]                           dc.b $00
[000b2bba]                           dc.b $00
[000b2bbb]                           dc.b $00
[000b2bbc]                           dc.b $00
[000b2bbd]                           dc.b $00
[000b2bbe]                           dc.b $00
[000b2bbf]                           dc.b $00
[000b2bc0]                           dc.b $00
[000b2bc1]                           dc.b $00
[000b2bc2]                           dc.b $00
[000b2bc3]                           dc.b $00
[000b2bc4]                           dc.b $00
[000b2bc5]                           dc.b $00
[000b2bc6]                           dc.b $00
[000b2bc7]                           dc.b $00
[000b2bc8]                           dc.b $00
[000b2bc9]                           dc.b $00
A_ARROWS02:
[000b2bca] 0005b212                  dc.l A_arrows
[000b2bce]                           dc.w $1301
[000b2bd0]                           dc.b $00
[000b2bd1]                           dc.b $01
[000b2bd2]                           dc.b $00
[000b2bd3]                           dc.b $00
[000b2bd4]                           dc.b $00
[000b2bd5]                           dc.b $00
[000b2bd6]                           dc.b $00
[000b2bd7]                           dc.b $00
[000b2bd8]                           dc.b $00
[000b2bd9]                           dc.b $00
[000b2bda]                           dc.b $00
[000b2bdb]                           dc.b $00
[000b2bdc]                           dc.b $00
[000b2bdd]                           dc.b $00
[000b2bde]                           dc.b $00
[000b2bdf]                           dc.b $00
[000b2be0]                           dc.b $00
[000b2be1]                           dc.b $00
[000b2be2]                           dc.b $00
[000b2be3]                           dc.b $00
[000b2be4]                           dc.b $00
[000b2be5]                           dc.b $00
[000b2be6]                           dc.b $00
[000b2be7]                           dc.b $00
[000b2be8]                           dc.b $00
[000b2be9]                           dc.b $00
A_BOXED01:
[000b2bea] 0005e9d2                  dc.l A_boxed
[000b2bee]                           dc.w $9000
[000b2bf0]                           dc.w $0112
[000b2bf2] 0005e010                  dc.l Auo_boxed
[000b2bf6]                           dc.b $00
[000b2bf7]                           dc.b $00
[000b2bf8]                           dc.b $00
[000b2bf9]                           dc.b $00
[000b2bfa]                           dc.b $00
[000b2bfb]                           dc.b $00
[000b2bfc]                           dc.b $00
[000b2bfd]                           dc.b $00
[000b2bfe]                           dc.b $00
[000b2bff]                           dc.b $00
[000b2c00]                           dc.b $00
[000b2c01]                           dc.b $00
[000b2c02] 000b28a1                  dc.l BUBBLE_05
[000b2c06]                           dc.b $00
[000b2c07]                           dc.b $00
[000b2c08]                           dc.b $00
[000b2c09]                           dc.b $00
A_BOXED02:
[000b2c0a] 0005e9d2                  dc.l A_boxed
[000b2c0e]                           dc.w $9000
[000b2c10]                           dc.w $ff12
[000b2c12] 0005e010                  dc.l Auo_boxed
[000b2c16]                           dc.b $00
[000b2c17]                           dc.b $00
[000b2c18]                           dc.b $00
[000b2c19]                           dc.b $00
[000b2c1a]                           dc.b $00
[000b2c1b]                           dc.b $00
[000b2c1c]                           dc.b $00
[000b2c1d]                           dc.b $00
[000b2c1e]                           dc.b $00
[000b2c1f]                           dc.b $00
[000b2c20]                           dc.b $00
[000b2c21]                           dc.b $00
[000b2c22]                           dc.b $00
[000b2c23]                           dc.b $00
[000b2c24]                           dc.b $00
[000b2c25]                           dc.b $00
[000b2c26]                           dc.b $00
[000b2c27]                           dc.b $00
[000b2c28]                           dc.b $00
[000b2c29]                           dc.b $00
A_BOXED04:
[000b2c2a] 0005e9d2                  dc.l A_boxed
[000b2c2e]                           dc.w $9038
[000b2c30]                           dc.w $ff12
[000b2c32] 0005e010                  dc.l Auo_boxed
[000b2c36]                           dc.b $00
[000b2c37]                           dc.b $00
[000b2c38]                           dc.b $00
[000b2c39]                           dc.b $00
[000b2c3a]                           dc.b $00
[000b2c3b]                           dc.b $00
[000b2c3c]                           dc.b $00
[000b2c3d]                           dc.b $00
[000b2c3e]                           dc.b $00
[000b2c3f]                           dc.b $00
[000b2c40]                           dc.b $00
[000b2c41]                           dc.b $00
[000b2c42] 000b27cb                  dc.l BUBBLE_03
[000b2c46]                           dc.b $00
[000b2c47]                           dc.b $00
[000b2c48]                           dc.b $00
[000b2c49]                           dc.b $00
A_BOXED05:
[000b2c4a] 0005e9d2                  dc.l A_boxed
[000b2c4e]                           dc.w $9038
[000b2c50]                           dc.w $ff12
[000b2c52] 0005e010                  dc.l Auo_boxed
[000b2c56]                           dc.b $00
[000b2c57]                           dc.b $00
[000b2c58]                           dc.b $00
[000b2c59]                           dc.b $00
[000b2c5a]                           dc.b $00
[000b2c5b]                           dc.b $00
[000b2c5c]                           dc.b $00
[000b2c5d]                           dc.b $00
[000b2c5e]                           dc.b $00
[000b2c5f]                           dc.b $00
[000b2c60]                           dc.b $00
[000b2c61]                           dc.b $00
[000b2c62] 000b281d                  dc.l BUBBLE_04
[000b2c66]                           dc.b $00
[000b2c67]                           dc.b $00
[000b2c68]                           dc.b $00
[000b2c69]                           dc.b $00
A_CHECKBOX01:
[000b2c6a] 000593fc                  dc.l A_checkbox
[000b2c6e]                           dc.b $00
[000b2c6f]                           dc.b $00
[000b2c70]                           dc.b $00
[000b2c71]                           dc.b $01
[000b2c72] 00059318                  dc.l Auo_string
[000b2c76] 000b2a80                  dc.l TEXT_01
[000b2c7a]                           dc.b $00
[000b2c7b]                           dc.b $00
[000b2c7c]                           dc.b $00
[000b2c7d]                           dc.b $00
[000b2c7e]                           dc.b $00
[000b2c7f]                           dc.b $00
[000b2c80]                           dc.b $00
[000b2c81]                           dc.b $00
[000b2c82] 000b2999                  dc.l BUBBLE_07
[000b2c86]                           dc.b $00
[000b2c87]                           dc.b $00
[000b2c88]                           dc.b $00
[000b2c89]                           dc.b $00
A_INNERFRAME01:
[000b2c8a] 00059f9c                  dc.l A_innerframe
[000b2c8e]                           dc.w $1000
[000b2c90]                           dc.w $8f19
[000b2c92] 00059318                  dc.l Auo_string
[000b2c96] 000b2ab9                  dc.l TEXT_10
[000b2c9a]                           dc.b $00
[000b2c9b]                           dc.b $00
[000b2c9c]                           dc.b $00
[000b2c9d]                           dc.b $00
[000b2c9e]                           dc.b $00
[000b2c9f]                           dc.b $00
[000b2ca0]                           dc.b $00
[000b2ca1]                           dc.b $00
[000b2ca2]                           dc.b $00
[000b2ca3]                           dc.b $00
[000b2ca4]                           dc.b $00
[000b2ca5]                           dc.b $00
[000b2ca6]                           dc.b $00
[000b2ca7]                           dc.b $00
[000b2ca8]                           dc.b $00
[000b2ca9]                           dc.b $00
A_INNERFRAME03:
[000b2caa] 00059f9c                  dc.l A_innerframe
[000b2cae]                           dc.w $1800
[000b2cb0]                           dc.w $8f19
[000b2cb2] 00059318                  dc.l Auo_string
[000b2cb6] 000b2a99                  dc.l TEXT_05
[000b2cba]                           dc.b $00
[000b2cbb]                           dc.b $00
[000b2cbc]                           dc.b $00
[000b2cbd]                           dc.b $00
[000b2cbe]                           dc.b $00
[000b2cbf]                           dc.b $00
[000b2cc0]                           dc.b $00
[000b2cc1]                           dc.b $00
[000b2cc2]                           dc.b $00
[000b2cc3]                           dc.b $00
[000b2cc4]                           dc.b $00
[000b2cc5]                           dc.b $00
[000b2cc6]                           dc.b $00
[000b2cc7]                           dc.b $00
[000b2cc8]                           dc.b $00
[000b2cc9]                           dc.b $00
A_cycle002:
[000b2cca] 0005bd1e                  dc.l A_cycle
[000b2cce]                           dc.b $00
[000b2ccf]                           dc.b $01
[000b2cd0]                           dc.w $0290
[000b2cd2] 0005c2fa                  dc.l Auo_cycle
[000b2cd6] 000b2a43                  dc.l TEXT_001
[000b2cda]                           dc.b $00
[000b2cdb]                           dc.b $00
[000b2cdc]                           dc.b $00
[000b2cdd]                           dc.b $00
[000b2cde]                           dc.b $00
[000b2cdf]                           dc.b $00
[000b2ce0]                           dc.b $00
[000b2ce1]                           dc.b $00
[000b2ce2]                           dc.b $00
[000b2ce3]                           dc.b $00
[000b2ce4]                           dc.b $00
[000b2ce5]                           dc.b $00
[000b2ce6]                           dc.b $00
[000b2ce7]                           dc.b $00
[000b2ce8]                           dc.b $00
[000b2ce9]                           dc.b $00
ED_CYCLE:
[000b2cea]                           dc.w $ffff
[000b2cec]                           dc.b $00
[000b2ced]                           dc.b $01
[000b2cee]                           dc.b $00
[000b2cef]                           dc.b $1e
[000b2cf0]                           dc.b $00
[000b2cf1]                           dc.b $18
[000b2cf2]                           dc.b $00
[000b2cf3]                           dc.b $40
[000b2cf4]                           dc.b $00
[000b2cf5]                           dc.b $10
[000b2cf6] 000b2b2a                  dc.l A_3DBUTTON02
[000b2cfa]                           dc.b $00
[000b2cfb]                           dc.b $00
[000b2cfc]                           dc.b $00
[000b2cfd]                           dc.b $00
[000b2cfe]                           dc.b $00
[000b2cff]                           dc.b $33
[000b2d00]                           dc.b $00
[000b2d01]                           dc.b $13
_01_ED_CYCLE:
[000b2d02]                           dc.b $00
[000b2d03]                           dc.b $04
[000b2d04]                           dc.b $00
[000b2d05]                           dc.b $02
[000b2d06]                           dc.b $00
[000b2d07]                           dc.b $02
[000b2d08]                           dc.b $00
[000b2d09]                           dc.b $18
[000b2d0a]                           dc.b $00
[000b2d0b]                           dc.b $00
[000b2d0c]                           dc.b $00
[000b2d0d]                           dc.b $10
[000b2d0e] 000b2b0a                  dc.l A_3DBUTTON01
[000b2d12]                           dc.b $00
[000b2d13]                           dc.b $00
[000b2d14]                           dc.b $00
[000b2d15]                           dc.b $00
[000b2d16]                           dc.b $00
[000b2d17]                           dc.b $16
[000b2d18]                           dc.b $00
[000b2d19]                           dc.b $03
_02_ED_CYCLE:
[000b2d1a]                           dc.b $00
[000b2d1b]                           dc.b $01
[000b2d1c]                           dc.w $ffff
[000b2d1e]                           dc.w $ffff
[000b2d20]                           dc.b $00
[000b2d21]                           dc.b $18
[000b2d22]                           dc.b $00
[000b2d23]                           dc.b $40
[000b2d24]                           dc.b $00
[000b2d25]                           dc.b $00
[000b2d26] 000b2cca                  dc.l A_cycle002
[000b2d2a]                           dc.b $00
[000b2d2b]                           dc.b $01
[000b2d2c]                           dc.b $00
[000b2d2d]                           dc.b $01
[000b2d2e]                           dc.b $00
[000b2d2f]                           dc.b $14
[000b2d30]                           dc.b $00
[000b2d31]                           dc.b $01
_02aED_CYCLE:
[000b2d32] 0005c8b6                  dc.l Aus_cycle
[000b2d36]                           dc.b $00
[000b2d37]                           dc.b $00
[000b2d38]                           dc.b $00
[000b2d39]                           dc.b $00
[000b2d3a]                           dc.w $8000
[000b2d3c]                           dc.b $00
[000b2d3d]                           dc.b $00
[000b2d3e]                           dc.b $00
[000b2d3f]                           dc.b $00
[000b2d40]                           dc.b $00
[000b2d41]                           dc.b $00
[000b2d42]                           dc.b $00
[000b2d43]                           dc.b $00
[000b2d44]                           dc.b $00
[000b2d45]                           dc.b $00
[000b2d46]                           dc.b $00
[000b2d47]                           dc.b $00
[000b2d48]                           dc.b $00
[000b2d49]                           dc.b $00
_04_ED_CYCLE:
[000b2d4a]                           dc.b $00
[000b2d4b]                           dc.b $06
[000b2d4c]                           dc.w $ffff
[000b2d4e]                           dc.w $ffff
[000b2d50]                           dc.b $00
[000b2d51]                           dc.b $18
[000b2d52]                           dc.w $4007
[000b2d54]                           dc.b $00
[000b2d55]                           dc.b $10
[000b2d56] 000b2b4a                  dc.l A_3DBUTTON03
[000b2d5a]                           dc.b $00
[000b2d5b]                           dc.b $18
[000b2d5c]                           dc.b $00
[000b2d5d]                           dc.b $01
[000b2d5e]                           dc.b $00
[000b2d5f]                           dc.b $0c
[000b2d60]                           dc.b $00
[000b2d61]                           dc.b $02
_04aED_CYCLE:
[000b2d62] 000267b6                  dc.l ok
[000b2d66]                           dc.b $00
[000b2d67]                           dc.b $00
[000b2d68]                           dc.b $00
[000b2d69]                           dc.b $00
[000b2d6a]                           dc.w $8000
[000b2d6c]                           dc.w $884f
[000b2d6e]                           dc.b $00
[000b2d6f]                           dc.b $00
[000b2d70]                           dc.b $00
[000b2d71]                           dc.b $00
[000b2d72]                           dc.b $00
[000b2d73]                           dc.b $00
[000b2d74]                           dc.b $00
[000b2d75]                           dc.b $00
[000b2d76]                           dc.b $00
[000b2d77]                           dc.b $00
[000b2d78]                           dc.b $00
[000b2d79]                           dc.b $00
_06_ED_CYCLE:
[000b2d7a]                           dc.b $00
[000b2d7b]                           dc.b $08
[000b2d7c]                           dc.w $ffff
[000b2d7e]                           dc.w $ffff
[000b2d80]                           dc.b $00
[000b2d81]                           dc.b $18
[000b2d82]                           dc.w $4005
[000b2d84]                           dc.b $00
[000b2d85]                           dc.b $10
[000b2d86] 000b2b6a                  dc.l A_3DBUTTON06
[000b2d8a]                           dc.b $00
[000b2d8b]                           dc.b $26
[000b2d8c]                           dc.b $00
[000b2d8d]                           dc.b $01
[000b2d8e]                           dc.b $00
[000b2d8f]                           dc.b $0c
[000b2d90]                           dc.b $00
[000b2d91]                           dc.b $02
_06aED_CYCLE:
[000b2d92] 00026790                  dc.l abort
[000b2d96]                           dc.b $00
[000b2d97]                           dc.b $00
[000b2d98]                           dc.b $00
[000b2d99]                           dc.b $00
[000b2d9a]                           dc.w $8000
[000b2d9c]                           dc.w $8841
[000b2d9e]                           dc.b $00
[000b2d9f]                           dc.b $00
[000b2da0]                           dc.b $00
[000b2da1]                           dc.b $00
[000b2da2]                           dc.b $00
[000b2da3]                           dc.b $00
[000b2da4]                           dc.b $00
[000b2da5]                           dc.b $00
[000b2da6]                           dc.b $00
[000b2da7]                           dc.b $00
[000b2da8]                           dc.b $00
[000b2da9]                           dc.b $00
_08_ED_CYCLE:
[000b2daa]                           dc.b $00
[000b2dab]                           dc.b $09
[000b2dac]                           dc.w $ffff
[000b2dae]                           dc.w $ffff
[000b2db0]                           dc.b $00
[000b2db1]                           dc.b $18
[000b2db2]                           dc.b $00
[000b2db3]                           dc.b $08
[000b2db4]                           dc.b $00
[000b2db5]                           dc.b $10
[000b2db6] 000b2c0a                  dc.l A_BOXED02
[000b2dba]                           dc.b $00
[000b2dbb]                           dc.b $01
[000b2dbc]                           dc.b $00
[000b2dbd]                           dc.b $04
[000b2dbe]                           dc.b $00
[000b2dbf]                           dc.b $31
[000b2dc0]                           dc.b $00
[000b2dc1]                           dc.b $01
_09_ED_CYCLE:
[000b2dc2]                           dc.b $00
[000b2dc3]                           dc.b $0b
[000b2dc4]                           dc.w $ffff
[000b2dc6]                           dc.w $ffff
[000b2dc8]                           dc.b $00
[000b2dc9]                           dc.b $18
[000b2dca]                           dc.b $00
[000b2dcb]                           dc.b $01
[000b2dcc]                           dc.b $00
[000b2dcd]                           dc.b $00
[000b2dce] 000b2c6a                  dc.l A_CHECKBOX01
[000b2dd2]                           dc.b $00
[000b2dd3]                           dc.b $01
[000b2dd4]                           dc.b $00
[000b2dd5]                           dc.b $06
[000b2dd6]                           dc.b $00
[000b2dd7]                           dc.b $0b
[000b2dd8]                           dc.b $00
[000b2dd9]                           dc.b $01
_09aED_CYCLE:
[000b2dda]                           dc.b $00
[000b2ddb]                           dc.b $00
[000b2ddc]                           dc.b $00
[000b2ddd]                           dc.b $00
[000b2dde]                           dc.b $00
[000b2ddf]                           dc.b $00
[000b2de0]                           dc.b $00
[000b2de1]                           dc.b $00
[000b2de2]                           dc.w $8000
[000b2de4]                           dc.w $8844
[000b2de6]                           dc.b $00
[000b2de7]                           dc.b $00
[000b2de8]                           dc.b $00
[000b2de9]                           dc.b $00
[000b2dea]                           dc.b $00
[000b2deb]                           dc.b $00
[000b2dec]                           dc.b $00
[000b2ded]                           dc.b $00
[000b2dee]                           dc.b $00
[000b2def]                           dc.b $00
[000b2df0]                           dc.b $00
[000b2df1]                           dc.b $00
_11_ED_CYCLE:
[000b2df2]                           dc.b $00
[000b2df3]                           dc.b $1a
[000b2df4]                           dc.b $00
[000b2df5]                           dc.b $0c
[000b2df6]                           dc.b $00
[000b2df7]                           dc.b $16
[000b2df8]                           dc.b $00
[000b2df9]                           dc.b $18
[000b2dfa]                           dc.b $00
[000b2dfb]                           dc.b $40
[000b2dfc]                           dc.b $00
[000b2dfd]                           dc.b $00
[000b2dfe] 000b2c8a                  dc.l A_INNERFRAME01
[000b2e02]                           dc.b $00
[000b2e03]                           dc.b $16
[000b2e04]                           dc.b $00
[000b2e05]                           dc.b $06
[000b2e06]                           dc.b $00
[000b2e07]                           dc.b $1c
[000b2e08]                           dc.b $00
[000b2e09]                           dc.b $06
_12_ED_CYCLE:
[000b2e0a]                           dc.b $00
[000b2e0b]                           dc.b $0e
[000b2e0c]                           dc.b $00
[000b2e0d]                           dc.b $0d
[000b2e0e]                           dc.b $00
[000b2e0f]                           dc.b $0d
[000b2e10]                           dc.b $00
[000b2e11]                           dc.b $1c
[000b2e12]                           dc.b $00
[000b2e13]                           dc.b $40
[000b2e14]                           dc.b $00
[000b2e15]                           dc.b $00
[000b2e16] 000b2ad5                  dc.l TEXT_21
[000b2e1a]                           dc.b $00
[000b2e1b]                           dc.b $02
[000b2e1c]                           dc.b $00
[000b2e1d]                           dc.b $01
[000b2e1e]                           dc.b $00
[000b2e1f]                           dc.b $06
[000b2e20]                           dc.b $00
[000b2e21]                           dc.b $01
_13_ED_CYCLE:
[000b2e22]                           dc.b $00
[000b2e23]                           dc.b $0c
[000b2e24]                           dc.w $ffff
[000b2e26]                           dc.w $ffff
[000b2e28]                           dc.b $00
[000b2e29]                           dc.b $18
[000b2e2a]                           dc.b $00
[000b2e2b]                           dc.b $40
[000b2e2c]                           dc.b $00
[000b2e2d]                           dc.b $00
[000b2e2e] 000b2bca                  dc.l A_ARROWS02
[000b2e32]                           dc.b $00
[000b2e33]                           dc.b $00
[000b2e34]                           dc.b $00
[000b2e35]                           dc.b $00
[000b2e36]                           dc.b $00
[000b2e37]                           dc.b $01
[000b2e38]                           dc.b $00
[000b2e39]                           dc.b $01
_14_ED_CYCLE:
[000b2e3a]                           dc.b $00
[000b2e3b]                           dc.b $0f
[000b2e3c]                           dc.w $ffff
[000b2e3e]                           dc.w $ffff
[000b2e40]                           dc.b $00
[000b2e41]                           dc.b $1c
[000b2e42]                           dc.b $00
[000b2e43]                           dc.b $40
[000b2e44]                           dc.b $00
[000b2e45]                           dc.b $00
[000b2e46] 000b2acf                  dc.l TEXT_19
[000b2e4a]                           dc.b $00
[000b2e4b]                           dc.b $03
[000b2e4c]                           dc.b $00
[000b2e4d]                           dc.b $02
[000b2e4e]                           dc.b $00
[000b2e4f]                           dc.b $05
[000b2e50]                           dc.b $00
[000b2e51]                           dc.b $01
_15_ED_CYCLE:
[000b2e52]                           dc.b $00
[000b2e53]                           dc.b $13
[000b2e54]                           dc.b $00
[000b2e55]                           dc.b $11
[000b2e56]                           dc.b $00
[000b2e57]                           dc.b $12
[000b2e58]                           dc.b $00
[000b2e59]                           dc.b $14
[000b2e5a]                           dc.b $00
[000b2e5b]                           dc.b $40
[000b2e5c]                           dc.b $00
[000b2e5d]                           dc.b $20
[000b2e5e]                           dc.b $00
[000b2e5f]                           dc.b $ff
[000b2e60]                           dc.w $1101
[000b2e62]                           dc.b $00
[000b2e63]                           dc.b $09
[000b2e64]                           dc.b $00
[000b2e65]                           dc.b $02
[000b2e66]                           dc.b $00
[000b2e67]                           dc.b $12
[000b2e68]                           dc.b $00
[000b2e69]                           dc.b $01
_15aED_CYCLE:
[000b2e6a] 000268c0                  dc.l edcyc_outcol
[000b2e6e]                           dc.b $00
[000b2e6f]                           dc.b $00
[000b2e70]                           dc.b $00
[000b2e71]                           dc.b $00
[000b2e72]                           dc.w $8000
[000b2e74]                           dc.w $884c
[000b2e76]                           dc.b $00
[000b2e77]                           dc.b $00
[000b2e78]                           dc.b $00
[000b2e79]                           dc.b $00
[000b2e7a]                           dc.b $00
[000b2e7b]                           dc.b $00
[000b2e7c]                           dc.b $00
[000b2e7d]                           dc.b $00
[000b2e7e]                           dc.b $00
[000b2e7f]                           dc.b $00
[000b2e80]                           dc.b $00
[000b2e81]                           dc.b $00
_17_ED_CYCLE:
[000b2e82]                           dc.b $00
[000b2e83]                           dc.b $12
[000b2e84]                           dc.w $ffff
[000b2e86]                           dc.w $ffff
[000b2e88]                           dc.b $00
[000b2e89]                           dc.b $14
[000b2e8a]                           dc.b $00
[000b2e8b]                           dc.b $00
[000b2e8c]                           dc.b $00
[000b2e8d]                           dc.b $00
[000b2e8e]                           dc.w $4301
[000b2e90]                           dc.w $1371
[000b2e92]                           dc.b $00
[000b2e93]                           dc.b $10
[000b2e94]                           dc.b $00
[000b2e95]                           dc.b $00
[000b2e96]                           dc.b $00
[000b2e97]                           dc.b $02
[000b2e98]                           dc.b $00
[000b2e99]                           dc.b $01
_18_ED_CYCLE:
[000b2e9a]                           dc.b $00
[000b2e9b]                           dc.b $0f
[000b2e9c]                           dc.w $ffff
[000b2e9e]                           dc.w $ffff
[000b2ea0]                           dc.b $00
[000b2ea1]                           dc.b $18
[000b2ea2]                           dc.b $00
[000b2ea3]                           dc.b $00
[000b2ea4]                           dc.b $00
[000b2ea5]                           dc.b $00
[000b2ea6] 000b2baa                  dc.l A_3DBUTTON27
[000b2eaa]                           dc.b $00
[000b2eab]                           dc.b $00
[000b2eac]                           dc.b $00
[000b2ead]                           dc.b $00
[000b2eae]                           dc.b $00
[000b2eaf]                           dc.b $10
[000b2eb0]                           dc.b $00
[000b2eb1]                           dc.b $01
_19_ED_CYCLE:
[000b2eb2]                           dc.b $00
[000b2eb3]                           dc.b $15
[000b2eb4]                           dc.b $00
[000b2eb5]                           dc.b $14
[000b2eb6]                           dc.b $00
[000b2eb7]                           dc.b $14
[000b2eb8]                           dc.b $00
[000b2eb9]                           dc.b $1c
[000b2eba]                           dc.b $00
[000b2ebb]                           dc.b $40
[000b2ebc]                           dc.b $00
[000b2ebd]                           dc.b $00
[000b2ebe] 000b2adc                  dc.l TEXT_22
[000b2ec2]                           dc.b $00
[000b2ec3]                           dc.b $01
[000b2ec4]                           dc.b $00
[000b2ec5]                           dc.b $03
[000b2ec6]                           dc.b $00
[000b2ec7]                           dc.b $07
[000b2ec8]                           dc.b $00
[000b2ec9]                           dc.b $01
_20_ED_CYCLE:
[000b2eca]                           dc.b $00
[000b2ecb]                           dc.b $13
[000b2ecc]                           dc.w $ffff
[000b2ece]                           dc.w $ffff
[000b2ed0]                           dc.b $00
[000b2ed1]                           dc.b $18
[000b2ed2]                           dc.b $00
[000b2ed3]                           dc.b $40
[000b2ed4]                           dc.b $00
[000b2ed5]                           dc.b $00
[000b2ed6] 000b2bca                  dc.l A_ARROWS02
[000b2eda]                           dc.b $00
[000b2edb]                           dc.b $00
[000b2edc]                           dc.b $00
[000b2edd]                           dc.b $00
[000b2ede]                           dc.b $00
[000b2edf]                           dc.b $01
[000b2ee0]                           dc.b $00
[000b2ee1]                           dc.b $01
_21_ED_CYCLE:
[000b2ee2]                           dc.b $00
[000b2ee3]                           dc.b $16
[000b2ee4]                           dc.w $ffff
[000b2ee6]                           dc.w $ffff
[000b2ee8]                           dc.b $00
[000b2ee9]                           dc.b $1c
[000b2eea]                           dc.b $00
[000b2eeb]                           dc.b $40
[000b2eec]                           dc.b $00
[000b2eed]                           dc.b $00
[000b2eee] 000b2ab2                  dc.l TEXT_09
[000b2ef2]                           dc.b $00
[000b2ef3]                           dc.b $02
[000b2ef4]                           dc.b $00
[000b2ef5]                           dc.b $04
[000b2ef6]                           dc.b $00
[000b2ef7]                           dc.b $06
[000b2ef8]                           dc.b $00
[000b2ef9]                           dc.b $01
_22_ED_CYCLE:
[000b2efa]                           dc.b $00
[000b2efb]                           dc.b $0b
[000b2efc]                           dc.b $00
[000b2efd]                           dc.b $18
[000b2efe]                           dc.b $00
[000b2eff]                           dc.b $19
[000b2f00]                           dc.b $00
[000b2f01]                           dc.b $14
[000b2f02]                           dc.b $00
[000b2f03]                           dc.b $40
[000b2f04]                           dc.b $00
[000b2f05]                           dc.b $20
[000b2f06]                           dc.b $00
[000b2f07]                           dc.b $ff
[000b2f08]                           dc.w $1101
[000b2f0a]                           dc.b $00
[000b2f0b]                           dc.b $09
[000b2f0c]                           dc.b $00
[000b2f0d]                           dc.b $04
[000b2f0e]                           dc.b $00
[000b2f0f]                           dc.b $12
[000b2f10]                           dc.b $00
[000b2f11]                           dc.b $01
_22aED_CYCLE:
[000b2f12] 0002691a                  dc.l edcyc_incol
[000b2f16]                           dc.b $00
[000b2f17]                           dc.b $00
[000b2f18]                           dc.b $00
[000b2f19]                           dc.b $00
[000b2f1a]                           dc.w $8000
[000b2f1c]                           dc.w $8852
[000b2f1e]                           dc.b $00
[000b2f1f]                           dc.b $00
[000b2f20]                           dc.b $00
[000b2f21]                           dc.b $00
[000b2f22]                           dc.b $00
[000b2f23]                           dc.b $00
[000b2f24]                           dc.b $00
[000b2f25]                           dc.b $00
[000b2f26]                           dc.b $00
[000b2f27]                           dc.b $00
[000b2f28]                           dc.b $00
[000b2f29]                           dc.b $00
_24_ED_CYCLE:
[000b2f2a]                           dc.b $00
[000b2f2b]                           dc.b $19
[000b2f2c]                           dc.w $ffff
[000b2f2e]                           dc.w $ffff
[000b2f30]                           dc.b $00
[000b2f31]                           dc.b $14
[000b2f32]                           dc.b $00
[000b2f33]                           dc.b $00
[000b2f34]                           dc.b $00
[000b2f35]                           dc.b $00
[000b2f36]                           dc.w $4301
[000b2f38]                           dc.w $1371
[000b2f3a]                           dc.b $00
[000b2f3b]                           dc.b $10
[000b2f3c]                           dc.b $00
[000b2f3d]                           dc.b $00
[000b2f3e]                           dc.b $00
[000b2f3f]                           dc.b $02
[000b2f40]                           dc.b $00
[000b2f41]                           dc.b $01
_25_ED_CYCLE:
[000b2f42]                           dc.b $00
[000b2f43]                           dc.b $16
[000b2f44]                           dc.w $ffff
[000b2f46]                           dc.w $ffff
[000b2f48]                           dc.b $00
[000b2f49]                           dc.b $18
[000b2f4a]                           dc.b $00
[000b2f4b]                           dc.b $00
[000b2f4c]                           dc.b $00
[000b2f4d]                           dc.b $00
[000b2f4e] 000b2baa                  dc.l A_3DBUTTON27
[000b2f52]                           dc.b $00
[000b2f53]                           dc.b $00
[000b2f54]                           dc.b $00
[000b2f55]                           dc.b $00
[000b2f56]                           dc.b $00
[000b2f57]                           dc.b $10
[000b2f58]                           dc.b $00
[000b2f59]                           dc.b $01
_26_ED_CYCLE:
[000b2f5a]                           dc.b $00
[000b2f5b]                           dc.b $1b
[000b2f5c]                           dc.w $ffff
[000b2f5e]                           dc.w $ffff
[000b2f60]                           dc.b $00
[000b2f61]                           dc.b $1c
[000b2f62]                           dc.b $00
[000b2f63]                           dc.b $40
[000b2f64]                           dc.b $00
[000b2f65]                           dc.b $00
[000b2f66] 000b2a89                  dc.l TEXT_02
[000b2f6a]                           dc.b $00
[000b2f6b]                           dc.b $01
[000b2f6c]                           dc.w $0807
[000b2f6e]                           dc.b $00
[000b2f6f]                           dc.b $0f
[000b2f70]                           dc.b $00
[000b2f71]                           dc.b $01
_27_ED_CYCLE:
[000b2f72]                           dc.b $00
[000b2f73]                           dc.b $1c
[000b2f74]                           dc.w $ffff
[000b2f76]                           dc.w $ffff
[000b2f78]                           dc.b $00
[000b2f79]                           dc.b $18
[000b2f7a]                           dc.b $00
[000b2f7b]                           dc.b $08
[000b2f7c]                           dc.b $00
[000b2f7d]                           dc.b $10
[000b2f7e] 000b2bea                  dc.l A_BOXED01
[000b2f82]                           dc.b $00
[000b2f83]                           dc.b $11
[000b2f84]                           dc.w $0807
[000b2f86]                           dc.b $00
[000b2f87]                           dc.b $01
[000b2f88]                           dc.b $00
[000b2f89]                           dc.b $01
_28_ED_CYCLE:
[000b2f8a]                           dc.b $00
[000b2f8b]                           dc.b $1e
[000b2f8c]                           dc.w $ffff
[000b2f8e]                           dc.w $ffff
[000b2f90]                           dc.b $00
[000b2f91]                           dc.b $18
[000b2f92]                           dc.b $00
[000b2f93]                           dc.b $05
[000b2f94]                           dc.b $00
[000b2f95]                           dc.b $10
[000b2f96] 000b2b8a                  dc.l A_3DBUTTON07
[000b2f9a]                           dc.b $00
[000b2f9b]                           dc.b $01
[000b2f9c]                           dc.b $00
[000b2f9d]                           dc.b $09
[000b2f9e]                           dc.b $00
[000b2f9f]                           dc.b $0b
[000b2fa0]                           dc.b $00
[000b2fa1]                           dc.b $02
_28aED_CYCLE:
[000b2fa2] 0002697e                  dc.l prepair
[000b2fa6]                           dc.b $00
[000b2fa7]                           dc.b $00
[000b2fa8]                           dc.b $00
[000b2fa9]                           dc.b $00
[000b2faa]                           dc.w $8000
[000b2fac]                           dc.w $8850
[000b2fae]                           dc.b $00
[000b2faf]                           dc.b $00
[000b2fb0]                           dc.b $00
[000b2fb1]                           dc.b $00
[000b2fb2]                           dc.b $00
[000b2fb3]                           dc.b $00
[000b2fb4]                           dc.b $00
[000b2fb5]                           dc.b $00
[000b2fb6]                           dc.b $00
[000b2fb7]                           dc.b $00
[000b2fb8]                           dc.b $00
[000b2fb9]                           dc.b $00
_30_ED_CYCLE:
[000b2fba]                           dc.b $00
[000b2fbb]                           dc.b $00
[000b2fbc]                           dc.b $00
[000b2fbd]                           dc.b $1f
[000b2fbe]                           dc.b $00
[000b2fbf]                           dc.b $22
[000b2fc0]                           dc.b $00
[000b2fc1]                           dc.b $18
[000b2fc2]                           dc.b $00
[000b2fc3]                           dc.b $40
[000b2fc4]                           dc.b $00
[000b2fc5]                           dc.b $00
[000b2fc6] 000b2caa                  dc.l A_INNERFRAME03
[000b2fca]                           dc.b $00
[000b2fcb]                           dc.b $01
[000b2fcc]                           dc.b $00
[000b2fcd]                           dc.b $0c
[000b2fce]                           dc.b $00
[000b2fcf]                           dc.b $31
[000b2fd0]                           dc.b $00
[000b2fd1]                           dc.b $05
_31_ED_CYCLE:
[000b2fd2]                           dc.b $00
[000b2fd3]                           dc.b $20
[000b2fd4]                           dc.w $ffff
[000b2fd6]                           dc.w $ffff
[000b2fd8]                           dc.b $00
[000b2fd9]                           dc.b $1c
[000b2fda]                           dc.b $00
[000b2fdb]                           dc.b $00
[000b2fdc]                           dc.b $00
[000b2fdd]                           dc.b $00
[000b2fde] 000b2aa3                  dc.l TEXT_08
[000b2fe2]                           dc.b $00
[000b2fe3]                           dc.b $01
[000b2fe4]                           dc.b $00
[000b2fe5]                           dc.b $01
[000b2fe6]                           dc.b $00
[000b2fe7]                           dc.b $0e
[000b2fe8]                           dc.b $00
[000b2fe9]                           dc.b $01
_32_ED_CYCLE:
[000b2fea]                           dc.b $00
[000b2feb]                           dc.b $21
[000b2fec]                           dc.w $ffff
[000b2fee]                           dc.w $ffff
[000b2ff0]                           dc.b $00
[000b2ff1]                           dc.b $18
[000b2ff2]                           dc.b $00
[000b2ff3]                           dc.b $08
[000b2ff4]                           dc.b $00
[000b2ff5]                           dc.b $10
[000b2ff6] 000b2c2a                  dc.l A_BOXED04
[000b2ffa]                           dc.b $00
[000b2ffb]                           dc.b $10
[000b2ffc]                           dc.b $00
[000b2ffd]                           dc.b $01
[000b2ffe]                           dc.b $00
[000b2fff]                           dc.b $20
[000b3000]                           dc.b $00
[000b3001]                           dc.b $01
_33_ED_CYCLE:
[000b3002]                           dc.b $00
[000b3003]                           dc.b $22
[000b3004]                           dc.w $ffff
[000b3006]                           dc.w $ffff
[000b3008]                           dc.b $00
[000b3009]                           dc.b $1c
[000b300a]                           dc.b $00
[000b300b]                           dc.b $00
[000b300c]                           dc.b $00
[000b300d]                           dc.b $00
[000b300e] 000b2ac1                  dc.l TEXT_16
[000b3012]                           dc.b $00
[000b3013]                           dc.b $01
[000b3014]                           dc.b $00
[000b3015]                           dc.b $03
[000b3016]                           dc.b $00
[000b3017]                           dc.b $0d
[000b3018]                           dc.b $00
[000b3019]                           dc.b $01
_34_ED_CYCLE:
[000b301a]                           dc.b $00
[000b301b]                           dc.b $1e
[000b301c]                           dc.w $ffff
[000b301e]                           dc.w $ffff
[000b3020]                           dc.b $00
[000b3021]                           dc.b $18
[000b3022]                           dc.b $00
[000b3023]                           dc.b $28
[000b3024]                           dc.b $00
[000b3025]                           dc.b $10
[000b3026] 000b2c4a                  dc.l A_BOXED05
[000b302a]                           dc.b $00
[000b302b]                           dc.b $10
[000b302c]                           dc.b $00
[000b302d]                           dc.b $03
[000b302e]                           dc.b $00
[000b302f]                           dc.b $20
[000b3030]                           dc.b $00
[000b3031]                           dc.b $01
cycle:
[000b3032] 0005bd1e                  dc.l A_cycle
[000b3036]                           dc.b $00
[000b3037]                           dc.b $01
[000b3038]                           dc.w $0290
[000b303a] 0005c2fa                  dc.l Auo_cycle
[000b303e] 000b3102                  dc.l $000b3102 ; no symbol found
[000b3042]                           dc.b $00
[000b3043]                           dc.b $00
[000b3044]                           dc.b $00
[000b3045]                           dc.b $00
[000b3046]                           dc.b $00
[000b3047]                           dc.b $00
[000b3048]                           dc.b $00
[000b3049]                           dc.b $00
[000b304a]                           dc.b $00
[000b304b]                           dc.b $00
[000b304c]                           dc.b $00
[000b304d]                           dc.b $00
[000b304e]                           dc.b $00
[000b304f]                           dc.b $00
[000b3050]                           dc.b $00
[000b3051]                           dc.b $00
visual:
[000b3052]                           dc.w $ffff
[000b3054]                           dc.w $ffff
[000b3056]                           dc.w $ffff
[000b3058]                           dc.b $00
[000b3059]                           dc.b $18
[000b305a]                           dc.b $00
[000b305b]                           dc.b $00
[000b305c]                           dc.b $00
[000b305d]                           dc.b $30
[000b305e] 000b3032                  dc.l cycle
[000b3062]                           dc.b $00
[000b3063]                           dc.b $00
[000b3064]                           dc.b $00
[000b3065]                           dc.b $00
[000b3066]                           dc.b $00
[000b3067]                           dc.b $0a
[000b3068]                           dc.b $00
[000b3069]                           dc.b $01
logical:
[000b306a]                           dc.w $ffff
[000b306c]                           dc.w $ffff
[000b306e]                           dc.w $ffff
[000b3070]                           dc.b $00
[000b3071]                           dc.b $18
[000b3072]                           dc.b $00
[000b3073]                           dc.b $40
[000b3074]                           dc.b $00
[000b3075]                           dc.b $30
[000b3076]                           dc.b $00
[000b3077]                           dc.b $00
[000b3078]                           dc.b $00
[000b3079]                           dc.b $00
[000b307a]                           dc.b $00
[000b307b]                           dc.b $00
[000b307c]                           dc.b $00
[000b307d]                           dc.b $00
[000b307e]                           dc.b $00
[000b307f]                           dc.b $06
[000b3080]                           dc.b $00
[000b3081]                           dc.b $01
aud:
[000b3082] 000b3110                  dc.l $000b3110 ; no symbol found
[000b3086] 000b3119                  dc.l $000b3119 ; no symbol found
[000b308a]                           dc.b $00
[000b308b]                           dc.b $02
[000b308c] 000b3102                  dc.l $000b3102 ; no symbol found
[000b3090]                           dc.b $00
[000b3091]                           dc.b $00
[000b3092]                           dc.b $00
[000b3093]                           dc.b $00
[000b3094]                           dc.b $00
[000b3095]                           dc.b $00
[000b3096]                           dc.b $00
[000b3097]                           dc.b $00
[000b3098]                           dc.b $00
[000b3099]                           dc.b $00
[000b309a]                           dc.b $00
[000b309b]                           dc.b $00
[000b309c]                           dc.b $00
[000b309d]                           dc.b $00
[000b309e]                           dc.b $00
[000b309f]                           dc.b $00
[000b30a0]                           dc.b $00
[000b30a1]                           dc.b $00
[000b30a2]                           dc.b $00
[000b30a3]                           dc.b $00
[000b30a4]                           dc.b $00
[000b30a5]                           dc.b $00
[000b30a6]                           dc.b $00
[000b30a7]                           dc.b $00
[000b30a8]                           dc.b $00
[000b30a9]                           dc.b $00
[000b30aa]                           dc.b $00
[000b30ab]                           dc.b $00
[000b30ac]                           dc.b $00
[000b30ad]                           dc.b $00
[000b30ae]                           dc.b $00
[000b30af]                           dc.b $00
data:
[000b30b0]                           dc.b 'A_cycle',0
[000b30b8]                           dc.b $00
[000b30b9]                           dc.b $00
[000b30ba]                           dc.b $00
[000b30bb]                           dc.b $00
[000b30bc]                           dc.b $00
[000b30bd]                           dc.b $00
[000b30be]                           dc.b $00
[000b30bf]                           dc.b $00
[000b30c0]                           dc.b $00
[000b30c1]                           dc.b $00
[000b30c2]                           dc.b $00
[000b30c3]                           dc.b $00
[000b30c4]                           dc.b $00
[000b30c5]                           dc.b $00
[000b30c6]                           dc.b $00
[000b30c7]                           dc.b $00
[000b30c8]                           dc.b $00
[000b30c9]                           dc.b $00
[000b30ca]                           dc.b $00
[000b30cb]                           dc.b $00
[000b30cc]                           dc.b $00
[000b30cd]                           dc.b $00
[000b30ce]                           dc.b $00
[000b30cf]                           dc.b $00
[000b30d0] 00026508                  dc.l object_tree
[000b30d4] 0002670e                  dc.l test_it
[000b30d8] 000267b6                  dc.l ok
[000b30dc] 00049b7c                  dc.l Aob_delete
[000b30e0] 000b3052                  dc.l visual
[000b30e4] 000b306a                  dc.l logical
[000b30e8] 000b3082                  dc.l aud
[000b30ec] 000264e4                  dc.l minsize
[000b30f0]                           dc.b $00
[000b30f1]                           dc.b $00
[000b30f2]                           dc.b $00
[000b30f3]                           dc.b $00
[000b30f4] 000b2afc                  dc.l title
[000b30f8] 000b2ae4                  dc.l help_title
[000b30fc]                           dc.b $00
[000b30fd]                           dc.b $00
[000b30fe]                           dc.b $00
[000b30ff]                           dc.b $00
[000b3100]                           dc.w $2000
[000b3102]                           dc.b 'Rot|GrÅn|Blau',0
[000b3110]                           dc.b '0x10290L',0
[000b3119]                           dc.b 'Auo_cycle',0
[000b3123]                           dc.b '0x%lxL',0

	.bss

parm: ds.b 36
