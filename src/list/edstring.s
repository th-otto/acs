add_string:
[0003461e] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[00034622] 594f                      subq.w     #4,a7
[00034624] 2648                      movea.l    a0,a3
[00034626] 2449                      movea.l    a1,a2
[00034628] 200a                      move.l     a2,d0
[0003462a] 6700 0114                 beq        $00034740
[0003462e] 222a 0004                 move.l     4(a2),d1
[00034632] 6700 010c                 beq        $00034740
[00034636] 006b 0001 0006            ori.w      #$0001,6(a3)
[0003463c] 2eab 0034                 move.l     52(a3),(a7)
[00034640] 2257                      movea.l    (a7),a1
[00034642] 2a69 0004                 movea.l    4(a1),a5
[00034646] 7206                      moveq.l    #6,d1
[00034648] 2079 0010 1f12            movea.l    ACSblk,a0
[0003464e] c268 0266                 and.w      614(a0),d1
[00034652] 5d41                      subq.w     #6,d1
[00034654] 6700 00b6                 beq        $0003470C
[00034658] 2629 000e                 move.l     14(a1),d3
[0003465c] e48b                      lsr.l      #2,d3
[0003465e] 4244                      clr.w      d4
[00034660] 6000 00a4                 bra        $00034706
[00034664] 3004                      move.w     d4,d0
[00034666] 48c0                      ext.l      d0
[00034668] e588                      lsl.l      #2,d0
[0003466a] 2c75 0800                 movea.l    0(a5,d0.l),a6
[0003466e] 226a 0004                 movea.l    4(a2),a1
[00034672] 206e 0004                 movea.l    4(a6),a0
[00034676] 4eb9 0007 68fe            jsr        $000768FE
[0003467c] 4a40                      tst.w      d0
[0003467e] 6600 0084                 bne        $00034704
[00034682] 4245                      clr.w      d5
[00034684] 6030                      bra.s      $000346B6
[00034686] 3005                      move.w     d5,d0
[00034688] 48c0                      ext.l      d0
[0003468a] e588                      lsl.l      #2,d0
[0003468c] 41f3 0800                 lea.l      0(a3,d0.l),a0
[00034690] 2268 01f6                 movea.l    502(a0),a1
[00034694] 2869 0004                 movea.l    4(a1),a4
[00034698] 226e 0004                 movea.l    4(a6),a1
[0003469c] 3204                      move.w     d4,d1
[0003469e] 48c1                      ext.l      d1
[000346a0] e589                      lsl.l      #2,d1
[000346a2] 2074 1800                 movea.l    0(a4,d1.l),a0
[000346a6] 2068 0004                 movea.l    4(a0),a0
[000346aa] 4eb9 0007 68fe            jsr        $000768FE
[000346b0] 4a40                      tst.w      d0
[000346b2] 6608                      bne.s      $000346BC
[000346b4] 5245                      addq.w     #1,d5
[000346b6] ba7c 0003                 cmp.w      #$0003,d5
[000346ba] 6dca                      blt.s      $00034686
[000346bc] ba7c 0003                 cmp.w      #$0003,d5
[000346c0] 673c                      beq.s      $000346FE
[000346c2] 4245                      clr.w      d5
[000346c4] 602c                      bra.s      $000346F2
[000346c6] 3005                      move.w     d5,d0
[000346c8] 48c0                      ext.l      d0
[000346ca] e588                      lsl.l      #2,d0
[000346cc] 41f3 0800                 lea.l      0(a3,d0.l),a0
[000346d0] 2268 01f6                 movea.l    502(a0),a1
[000346d4] 2869 0004                 movea.l    4(a1),a4
[000346d8] 3204                      move.w     d4,d1
[000346da] 48c1                      ext.l      d1
[000346dc] e589                      lsl.l      #2,d1
[000346de] 2074 1800                 movea.l    0(a4,d1.l),a0
[000346e2] 2068 0004                 movea.l    4(a0),a0
[000346e6] 4eb9 0007 69b0            jsr        $000769B0
[000346ec] 4a80                      tst.l      d0
[000346ee] 6608                      bne.s      $000346F8
[000346f0] 5245                      addq.w     #1,d5
[000346f2] ba7c 0003                 cmp.w      #$0003,d5
[000346f6] 6dce                      blt.s      $000346C6
[000346f8] ba7c 0003                 cmp.w      #$0003,d5
[000346fc] 6606                      bne.s      $00034704
[000346fe] 526e 0036                 addq.w     #1,54(a6)
[00034702] 604c                      bra.s      $00034750
[00034704] 5244                      addq.w     #1,d4
[00034706] b644                      cmp.w      d4,d3
[00034708] 6e00 ff5a                 bgt        $00034664
[0003470c] 224a                      movea.l    a2,a1
[0003470e] 204b                      movea.l    a3,a0
[00034710] 4eb9 0003 4af6            jsr        $00034AF6
[00034716] 2c48                      movea.l    a0,a6
[00034718] 200e                      move.l     a6,d0
[0003471a] 6724                      beq.s      $00034740
[0003471c] 2f39 000c 2bfc            move.l     $000C2BFC,-(a7)
[00034722] 486a 0016                 pea.l      22(a2)
[00034726] 224e                      movea.l    a6,a1
[00034728] 204b                      movea.l    a3,a0
[0003472a] 4eb9 0001 6448            jsr        $00016448
[00034730] 504f                      addq.w     #8,a7
[00034732] 224e                      movea.l    a6,a1
[00034734] 2057                      movea.l    (a7),a0
[00034736] 4eb9 0003 1a94            jsr        $00031A94
[0003473c] 5240                      addq.w     #1,d0
[0003473e] 6604                      bne.s      $00034744
[00034740] 91c8                      suba.l     a0,a0
[00034742] 600e                      bra.s      $00034752
[00034744] 224e                      movea.l    a6,a1
[00034746] 7001                      moveq.l    #1,d0
[00034748] 204b                      movea.l    a3,a0
[0003474a] 4eb9 0003 486e            jsr        $0003486E
[00034750] 204e                      movea.l    a6,a0
[00034752] 584f                      addq.w     #4,a7
[00034754] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[00034758] 4e75                      rts
change_string:
[0003475a] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003475e] 2648                      movea.l    a0,a3
[00034760] 2449                      movea.l    a1,a2
[00034762] 286f 0018                 movea.l    24(a7),a4
[00034766] 200a                      move.l     a2,d0
[00034768] 6604                      bne.s      $0003476E
[0003476a] 91c8                      suba.l     a0,a0
[0003476c] 6074                      bra.s      $000347E2
[0003476e] 006b 0001 0006            ori.w      #$0001,6(a3)
[00034774] 204c                      movea.l    a4,a0
[00034776] 4eb9 0007 69b0            jsr        $000769B0
[0003477c] 2600                      move.l     d0,d3
[0003477e] 5243                      addq.w     #1,d3
[00034780] 3003                      move.w     d3,d0
[00034782] 48c0                      ext.l      d0
[00034784] b0aa 000a                 cmp.l      10(a2),d0
[00034788] 6e16                      bgt.s      $000347A0
[0003478a] 224c                      movea.l    a4,a1
[0003478c] 206a 0004                 movea.l    4(a2),a0
[00034790] 4eb9 0007 6950            jsr        $00076950
[00034796] 3003                      move.w     d3,d0
[00034798] 48c0                      ext.l      d0
[0003479a] 2540 000e                 move.l     d0,14(a2)
[0003479e] 602e                      bra.s      $000347CE
[000347a0] 2a6a 0004                 movea.l    4(a2),a5
[000347a4] 204c                      movea.l    a4,a0
[000347a6] 4eb9 0004 36d6            jsr        Ast_create
[000347ac] 2548 0004                 move.l     a0,4(a2)
[000347b0] 2008                      move.l     a0,d0
[000347b2] 6606                      bne.s      $000347BA
[000347b4] 254d 0004                 move.l     a5,4(a2)
[000347b8] 6014                      bra.s      $000347CE
[000347ba] 204d                      movea.l    a5,a0
[000347bc] 4eb9 0004 7e26            jsr        $00047E26
[000347c2] 3003                      move.w     d3,d0
[000347c4] 48c0                      ext.l      d0
[000347c6] 2540 000a                 move.l     d0,10(a2)
[000347ca] 2540 000e                 move.l     d0,14(a2)
[000347ce] 206b 0034                 movea.l    52(a3),a0
[000347d2] 2028 0012                 move.l     18(a0),d0
[000347d6] 6708                      beq.s      $000347E0
[000347d8] 2240                      movea.l    d0,a1
[000347da] 0069 0020 0056            ori.w      #$0020,86(a1)
[000347e0] 204a                      movea.l    a2,a0
[000347e2] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[000347e6] 4e75                      rts
del_string:
[000347e8] 48e7 003c                 movem.l    a2-a5,-(a7)
[000347ec] 2448                      movea.l    a0,a2
[000347ee] 2649                      movea.l    a1,a3
[000347f0] 006a 0001 0006            ori.w      #$0001,6(a2)
[000347f6] 536b 0036                 subq.w     #1,54(a3)
[000347fa] 302b 0036                 move.w     54(a3),d0
[000347fe] 6e36                      bgt.s      $00034836
[00034800] 286b 0012                 movea.l    18(a3),a4
[00034804] 220c                      move.l     a4,d1
[00034806] 670c                      beq.s      $00034814
[00034808] 2a6c 0004                 movea.l    4(a4),a5
[0003480c] 204c                      movea.l    a4,a0
[0003480e] 7002                      moveq.l    #2,d0
[00034810] 93c9                      suba.l     a1,a1
[00034812] 4e95                      jsr        (a5)
[00034814] 224b                      movea.l    a3,a1
[00034816] 206a 0034                 movea.l    52(a2),a0
[0003481a] 4eb9 0003 1b00            jsr        $00031B00
[00034820] 224b                      movea.l    a3,a1
[00034822] 204a                      movea.l    a2,a0
[00034824] 4eb9 0001 61d4            jsr        $000161D4
[0003482a] 224b                      movea.l    a3,a1
[0003482c] 7003                      moveq.l    #3,d0
[0003482e] 204a                      movea.l    a2,a0
[00034830] 4eb9 0003 486e            jsr        $0003486E
[00034836] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0003483a] 4e75                      rts
dup_string:
[0003483c] 48e7 0038                 movem.l    a2-a4,-(a7)
[00034840] 2848                      movea.l    a0,a4
[00034842] 2449                      movea.l    a1,a2
[00034844] 47f9 000c 2c16            lea.l      $000C2C16,a3
[0003484a] 274a 0004                 move.l     a2,4(a3)
[0003484e] 204a                      movea.l    a2,a0
[00034850] 4eb9 0007 69b0            jsr        $000769B0
[00034856] 5280                      addq.l     #1,d0
[00034858] 2740 000a                 move.l     d0,10(a3)
[0003485c] 2740 000e                 move.l     d0,14(a3)
[00034860] 224b                      movea.l    a3,a1
[00034862] 204c                      movea.l    a4,a0
[00034864] 6100 fdb8                 bsr        $0003461E
[00034868] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003486c] 4e75                      rts
serv_str:
[0003486e] 48e7 1e1e                 movem.l    d3-d6/a3-a6,-(a7)
[00034872] 4fef ff92                 lea.l      -110(a7),a7
[00034876] 2648                      movea.l    a0,a3
[00034878] 2f49 006a                 move.l     a1,106(a7)
[0003487c] 41f9 000c 2c58            lea.l      $000C2C58,a0
[00034882] 43ef 0028                 lea.l      40(a7),a1
[00034886] 720f                      moveq.l    #15,d1
[00034888] 22d8                      move.l     (a0)+,(a1)+
[0003488a] 51c9 fffc                 dbf        d1,$00034888
[0003488e] 32d8                      move.w     (a0)+,(a1)+
[00034890] 3200                      move.w     d0,d1
[00034892] 5341                      subq.w     #1,d1
[00034894] 6710                      beq.s      $000348A6
[00034896] 5341                      subq.w     #1,d1
[00034898] 6700 0090                 beq        $0003492A
[0003489c] 5341                      subq.w     #1,d1
[0003489e] 6700 01be                 beq        $00034A5E
[000348a2] 6000 0242                 bra        $00034AE6
[000348a6] 4243                      clr.w      d3
[000348a8] 6076                      bra.s      $00034920
[000348aa] 206f 006a                 movea.l    106(a7),a0
[000348ae] 2f68 0004 002c            move.l     4(a0),44(a7)
[000348b4] 2028 000a                 move.l     10(a0),d0
[000348b8] 2f40 0032                 move.l     d0,50(a7)
[000348bc] 2f40 0036                 move.l     d0,54(a7)
[000348c0] 43ef 0028                 lea.l      40(a7),a1
[000348c4] 204b                      movea.l    a3,a0
[000348c6] 4eb9 0003 4af6            jsr        $00034AF6
[000348cc] 2848                      movea.l    a0,a4
[000348ce] 200c                      move.l     a4,d0
[000348d0] 6700 0214                 beq        $00034AE6
[000348d4] 3f03                      move.w     d3,-(a7)
[000348d6] 226f 006c                 movea.l    108(a7),a1
[000348da] 4869 0016                 pea.l      22(a1)
[000348de] 43f9 000c 2c9a            lea.l      $000C2C9A,a1
[000348e4] 41ec 0016                 lea.l      22(a4),a0
[000348e8] 4eb9 0007 5680            jsr        $00075680
[000348ee] 5c4f                      addq.w     #6,a7
[000348f0] 42a7                      clr.l      -(a7)
[000348f2] 486c 0016                 pea.l      22(a4)
[000348f6] 224c                      movea.l    a4,a1
[000348f8] 204b                      movea.l    a3,a0
[000348fa] 4eb9 0001 6448            jsr        $00016448
[00034900] 504f                      addq.w     #8,a7
[00034902] 224c                      movea.l    a4,a1
[00034904] 3003                      move.w     d3,d0
[00034906] 48c0                      ext.l      d0
[00034908] e588                      lsl.l      #2,d0
[0003490a] 41f3 0800                 lea.l      0(a3,d0.l),a0
[0003490e] 2068 01f6                 movea.l    502(a0),a0
[00034912] 4eb9 0003 1a94            jsr        $00031A94
[00034918] 5240                      addq.w     #1,d0
[0003491a] 6700 01ca                 beq        $00034AE6
[0003491e] 5243                      addq.w     #1,d3
[00034920] b67c 0003                 cmp.w      #$0003,d3
[00034924] 6d84                      blt.s      $000348AA
[00034926] 6000 01c2                 bra        $00034AEA
[0003492a] 206b 0034                 movea.l    52(a3),a0
[0003492e] 2828 000e                 move.l     14(a0),d4
[00034932] e48c                      lsr.l      #2,d4
[00034934] 226b 01f6                 movea.l    502(a3),a1
[00034938] 2a29 000e                 move.l     14(a1),d5
[0003493c] e48d                      lsr.l      #2,d5
[0003493e] 2c49                      movea.l    a1,a6
[00034940] 2f6e 0004 0024            move.l     4(a6),36(a7)
[00034946] 2f68 0004 0020            move.l     4(a0),32(a7)
[0003494c] 4245                      clr.w      d5
[0003494e] 6014                      bra.s      $00034964
[00034950] 3005                      move.w     d5,d0
[00034952] 48c0                      ext.l      d0
[00034954] e588                      lsl.l      #2,d0
[00034956] 206f 0020                 movea.l    32(a7),a0
[0003495a] 2270 0800                 movea.l    0(a0,d0.l),a1
[0003495e] 4229 0033                 clr.b      51(a1)
[00034962] 5245                      addq.w     #1,d5
[00034964] b845                      cmp.w      d5,d4
[00034966] 6ee8                      bgt.s      $00034950
[00034968] 4246                      clr.w      d6
[0003496a] 6000 0072                 bra.w      $000349DE
[0003496e] 4217                      clr.b      (a7)
[00034970] 701c                      moveq.l    #28,d0
[00034972] 3206                      move.w     d6,d1
[00034974] 48c1                      ext.l      d1
[00034976] e589                      lsl.l      #2,d1
[00034978] 206f 0024                 movea.l    36(a7),a0
[0003497c] 2270 1800                 movea.l    0(a0,d1.l),a1
[00034980] 43e9 0016                 lea.l      22(a1),a1
[00034984] 41d7                      lea.l      (a7),a0
[00034986] 4eb9 0007 69da            jsr        $000769DA
[0003498c] 2a48                      movea.l    a0,a5
[0003498e] 7001                      moveq.l    #1,d0
[00034990] 41d7                      lea.l      (a7),a0
[00034992] 4eb9 0007 68ce            jsr        $000768CE
[00034998] 2a48                      movea.l    a0,a5
[0003499a] 200d                      move.l     a5,d0
[0003499c] 670a                      beq.s      $000349A8
[0003499e] 0c2d 0001 0002            cmpi.b     #$01,2(a5)
[000349a4] 6602                      bne.s      $000349A8
[000349a6] 4210                      clr.b      (a0)
[000349a8] 200d                      move.l     a5,d0
[000349aa] 6704                      beq.s      $000349B0
[000349ac] 1215                      move.b     (a5),d1
[000349ae] 66de                      bne.s      $0003498E
[000349b0] 4243                      clr.w      d3
[000349b2] 6020                      bra.s      $000349D4
[000349b4] 43d7                      lea.l      (a7),a1
[000349b6] 3003                      move.w     d3,d0
[000349b8] 48c0                      ext.l      d0
[000349ba] e588                      lsl.l      #2,d0
[000349bc] 206f 0020                 movea.l    32(a7),a0
[000349c0] 2070 0800                 movea.l    0(a0,d0.l),a0
[000349c4] 41e8 0016                 lea.l      22(a0),a0
[000349c8] 4eb9 0007 68fe            jsr        $000768FE
[000349ce] 4a40                      tst.w      d0
[000349d0] 6706                      beq.s      $000349D8
[000349d2] 5243                      addq.w     #1,d3
[000349d4] b843                      cmp.w      d3,d4
[000349d6] 6edc                      bgt.s      $000349B4
[000349d8] b843                      cmp.w      d3,d4
[000349da] 6708                      beq.s      $000349E4
[000349dc] 5246                      addq.w     #1,d6
[000349de] ba46                      cmp.w      d6,d5
[000349e0] 6e00 ff8c                 bgt.w      $0003496E
[000349e4] ba46                      cmp.w      d6,d5
[000349e6] 6f00 0102                 ble        $00034AEA
[000349ea] 4243                      clr.w      d3
[000349ec] 6066                      bra.s      $00034A54
[000349ee] 3003                      move.w     d3,d0
[000349f0] 48c0                      ext.l      d0
[000349f2] e588                      lsl.l      #2,d0
[000349f4] 41f3 0800                 lea.l      0(a3,d0.l),a0
[000349f8] 2c68 01f6                 movea.l    502(a0),a6
[000349fc] 2f6e 0004 0024            move.l     4(a6),36(a7)
[00034a02] 3206                      move.w     d6,d1
[00034a04] 48c1                      ext.l      d1
[00034a06] e589                      lsl.l      #2,d1
[00034a08] 226f 0024                 movea.l    36(a7),a1
[00034a0c] 2a71 1800                 movea.l    0(a1,d1.l),a5
[00034a10] 3f03                      move.w     d3,-(a7)
[00034a12] 206f 006c                 movea.l    108(a7),a0
[00034a16] 4868 0016                 pea.l      22(a0)
[00034a1a] 43f9 000c 2c9a            lea.l      $000C2C9A,a1
[00034a20] 41ed 0016                 lea.l      22(a5),a0
[00034a24] 4eb9 0007 5680            jsr        $00075680
[00034a2a] 5c4f                      addq.w     #6,a7
[00034a2c] 42a7                      clr.l      -(a7)
[00034a2e] 486d 0016                 pea.l      22(a5)
[00034a32] 224d                      movea.l    a5,a1
[00034a34] 204b                      movea.l    a3,a0
[00034a36] 4eb9 0001 6448            jsr        $00016448
[00034a3c] 504f                      addq.w     #8,a7
[00034a3e] 224d                      movea.l    a5,a1
[00034a40] 204e                      movea.l    a6,a0
[00034a42] 4eb9 0003 1b00            jsr        $00031B00
[00034a48] 224d                      movea.l    a5,a1
[00034a4a] 204e                      movea.l    a6,a0
[00034a4c] 4eb9 0003 1a94            jsr        $00031A94
[00034a52] 5243                      addq.w     #1,d3
[00034a54] b67c 0003                 cmp.w      #$0003,d3
[00034a58] 6d94                      blt.s      $000349EE
[00034a5a] 6000 008e                 bra        $00034AEA
[00034a5e] 4243                      clr.w      d3
[00034a60] 6000 007a                 bra.w      $00034ADC
[00034a64] 3003                      move.w     d3,d0
[00034a66] 48c0                      ext.l      d0
[00034a68] e588                      lsl.l      #2,d0
[00034a6a] 41f3 0800                 lea.l      0(a3,d0.l),a0
[00034a6e] 2268 01f6                 movea.l    502(a0),a1
[00034a72] 2a29 000e                 move.l     14(a1),d5
[00034a76] e48d                      lsr.l      #2,d5
[00034a78] 2c49                      movea.l    a1,a6
[00034a7a] 2f6e 0004 0024            move.l     4(a6),36(a7)
[00034a80] 3f03                      move.w     d3,-(a7)
[00034a82] 2a6f 006c                 movea.l    108(a7),a5
[00034a86] 486d 0016                 pea.l      22(a5)
[00034a8a] 43f9 000c 2c9a            lea.l      $000C2C9A,a1
[00034a90] 41ef 0006                 lea.l      6(a7),a0
[00034a94] 4eb9 0007 5680            jsr        $00075680
[00034a9a] 5c4f                      addq.w     #6,a7
[00034a9c] 4246                      clr.w      d6
[00034a9e] 6036                      bra.s      $00034AD6
[00034aa0] 3006                      move.w     d6,d0
[00034aa2] 48c0                      ext.l      d0
[00034aa4] e588                      lsl.l      #2,d0
[00034aa6] 206f 0024                 movea.l    36(a7),a0
[00034aaa] 2870 0800                 movea.l    0(a0,d0.l),a4
[00034aae] 43ec 0016                 lea.l      22(a4),a1
[00034ab2] 41d7                      lea.l      (a7),a0
[00034ab4] 4eb9 0007 68fe            jsr        $000768FE
[00034aba] 4a40                      tst.w      d0
[00034abc] 6616                      bne.s      $00034AD4
[00034abe] 224c                      movea.l    a4,a1
[00034ac0] 204e                      movea.l    a6,a0
[00034ac2] 4eb9 0003 1b00            jsr        $00031B00
[00034ac8] 224c                      movea.l    a4,a1
[00034aca] 204b                      movea.l    a3,a0
[00034acc] 4eb9 0001 61d4            jsr        $000161D4
[00034ad2] 6006                      bra.s      $00034ADA
[00034ad4] 5246                      addq.w     #1,d6
[00034ad6] ba46                      cmp.w      d6,d5
[00034ad8] 6ec6                      bgt.s      $00034AA0
[00034ada] 5243                      addq.w     #1,d3
[00034adc] b67c 0003                 cmp.w      #$0003,d3
[00034ae0] 6d00 ff82                 blt.w      $00034A64
[00034ae4] 6004                      bra.s      $00034AEA
[00034ae6] 4240                      clr.w      d0
[00034ae8] 6002                      bra.s      $00034AEC
[00034aea] 7001                      moveq.l    #1,d0
[00034aec] 4fef 006e                 lea.l      110(a7),a7
[00034af0] 4cdf 7878                 movem.l    (a7)+,d3-d6/a3-a6
[00034af4] 4e75                      rts
copy_str:
[00034af6] 2f0a                      move.l     a2,-(a7)
[00034af8] 2f0b                      move.l     a3,-(a7)
[00034afa] 2648                      movea.l    a0,a3
[00034afc] 2449                      movea.l    a1,a2
[00034afe] 006b 0001 0006            ori.w      #$0001,6(a3)
[00034b04] 202a 000a                 move.l     10(a2),d0
[00034b08] 4eb9 0001 6230            jsr        $00016230
[00034b0e] 2648                      movea.l    a0,a3
[00034b10] 200b                      move.l     a3,d0
[00034b12] 6604                      bne.s      $00034B18
[00034b14] 91c8                      suba.l     a0,a0
[00034b16] 601c                      bra.s      $00034B34
[00034b18] 226a 0004                 movea.l    4(a2),a1
[00034b1c] 206b 0004                 movea.l    4(a3),a0
[00034b20] 4eb9 0007 6950            jsr        $00076950
[00034b26] 202a 000e                 move.l     14(a2),d0
[00034b2a] 2740 000e                 move.l     d0,14(a3)
[00034b2e] 2740 000a                 move.l     d0,10(a3)
[00034b32] 204b                      movea.l    a3,a0
[00034b34] 265f                      movea.l    (a7)+,a3
[00034b36] 245f                      movea.l    (a7)+,a2
[00034b38] 4e75                      rts
new_work:
[00034b3a] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00034b3e] 594f                      subq.w     #4,a7
[00034b40] 2ea8 0004                 move.l     4(a0),(a7)
[00034b44] 2628 000e                 move.l     14(a0),d3
[00034b48] e48b                      lsr.l      #2,d3
[00034b4a] 3203                      move.w     d3,d1
[00034b4c] 48c1                      ext.l      d1
[00034b4e] 2001                      move.l     d1,d0
[00034b50] d080                      add.l      d0,d0
[00034b52] d081                      add.l      d1,d0
[00034b54] e988                      lsl.l      #4,d0
[00034b56] 9081                      sub.l      d1,d0
[00034b58] d080                      add.l      d0,d0
[00034b5a] d0bc 0000 0030            add.l      #$00000030,d0
[00034b60] 4eb9 0004 7cc8            jsr        Ax_malloc
[00034b66] 2648                      movea.l    a0,a3
[00034b68] 200b                      move.l     a3,d0
[00034b6a] 6606                      bne.s      $00034B72
[00034b6c] 91c8                      suba.l     a0,a0
[00034b6e] 6000 00dc                 bra        $00034C4C
[00034b72] 7030                      moveq.l    #48,d0
[00034b74] 43f9 000c 2b4a            lea.l      $000C2B4A,a1
[00034b7a] 204b                      movea.l    a3,a0
[00034b7c] 4eb9 0007 6f44            jsr        $00076F44
[00034b82] 49eb 0030                 lea.l      48(a3),a4
[00034b86] 4a43                      tst.w      d3
[00034b88] 6f00 00b8                 ble        $00034C42
[00034b8c] 3203                      move.w     d3,d1
[00034b8e] d241                      add.w      d1,d1
[00034b90] 48c1                      ext.l      d1
[00034b92] 2001                      move.l     d1,d0
[00034b94] d080                      add.l      d0,d0
[00034b96] d081                      add.l      d1,d0
[00034b98] e788                      lsl.l      #3,d0
[00034b9a] 4bf3 0830                 lea.l      48(a3,d0.l),a5
[00034b9e] 4244                      clr.w      d4
[00034ba0] 607c                      bra.s      $00034C1E
[00034ba2] 7030                      moveq.l    #48,d0
[00034ba4] 43f9 000c 2b7a            lea.l      $000C2B7A,a1
[00034baa] 204c                      movea.l    a4,a0
[00034bac] 4eb9 0007 6f44            jsr        $00076F44
[00034bb2] 3004                      move.w     d4,d0
[00034bb4] d040                      add.w      d0,d0
[00034bb6] 5840                      addq.w     #4,d0
[00034bb8] 3880                      move.w     d0,(a4)
[00034bba] 294d 000c                 move.l     a5,12(a4)
[00034bbe] 3204                      move.w     d4,d1
[00034bc0] 48c1                      ext.l      d1
[00034bc2] e589                      lsl.l      #2,d1
[00034bc4] 2057                      movea.l    (a7),a0
[00034bc6] 2470 1800                 movea.l    0(a0,d1.l),a2
[00034bca] 342a 0038                 move.w     56(a2),d2
[00034bce] c47c 0100                 and.w      #$0100,d2
[00034bd2] 6606                      bne.s      $00034BDA
[00034bd4] 006c 0010 000a            ori.w      #$0010,10(a4)
[00034bda] 294a 0024                 move.l     a2,36(a4)
[00034bde] 700c                      moveq.l    #12,d0
[00034be0] 43ea 0016                 lea.l      22(a2),a1
[00034be4] 204d                      movea.l    a5,a0
[00034be6] 4eb9 0007 6a1a            jsr        $00076A1A
[00034bec] 43f9 000c 2ca4            lea.l      $000C2CA4,a1
[00034bf2] 204d                      movea.l    a5,a0
[00034bf4] 4eb9 0007 6886            jsr        $00076886
[00034bfa] 1b7c 0020 000c            move.b     #$20,12(a5)
[00034c00] 7020                      moveq.l    #32,d0
[00034c02] 226a 0004                 movea.l    4(a2),a1
[00034c06] 41ed 000d                 lea.l      13(a5),a0
[00034c0a] 4eb9 0007 6a1a            jsr        $00076A1A
[00034c10] 422d 002d                 clr.b      45(a5)
[00034c14] 4bed 002e                 lea.l      46(a5),a5
[00034c18] 49ec 0030                 lea.l      48(a4),a4
[00034c1c] 5244                      addq.w     #1,d4
[00034c1e] b644                      cmp.w      d4,d3
[00034c20] 6e00 ff80                 bgt.w      $00034BA2
[00034c24] 3003                      move.w     d3,d0
[00034c26] d040                      add.w      d0,d0
[00034c28] 3740 0004                 move.w     d0,4(a3)
[00034c2c] 377c 0002 0002            move.w     #$0002,2(a3)
[00034c32] 026b ffdf 0020            andi.w     #$FFDF,32(a3)
[00034c38] 426c ffd0                 clr.w      -48(a4)
[00034c3c] 006c 0020 fff0            ori.w      #$0020,-16(a4)
[00034c42] 204b                      movea.l    a3,a0
[00034c44] 4eb9 0004 a25e            jsr        $0004A25E
[00034c4a] 204b                      movea.l    a3,a0
[00034c4c] 584f                      addq.w     #4,a7
[00034c4e] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00034c52] 4e75                      rts
