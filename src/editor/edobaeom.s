edao_pal:
[00031492] 2f0a                      move.l     a2,-(a7)
[00031494] 2f0b                      move.l     a3,-(a7)
[00031496] 2079 0010 1f12            movea.l    ACSblk,a0
[0003149c] 2468 0258                 movea.l    600(a0),a2
[000314a0] 006a 0004 0054            ori.w      #$0004,84(a2)
[000314a6] 2652                      movea.l    (a2),a3
[000314a8] 2053                      movea.l    (a3),a0
[000314aa] 2279 0007 aee8            movea.l    $0007AEE8,a1
[000314b0] 4e91                      jsr        (a1)
[000314b2] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[000314b8] 265f                      movea.l    (a7)+,a3
[000314ba] 245f                      movea.l    (a7)+,a2
[000314bc] 4e75                      rts
edao_call:
[000314be] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[000314c2] 594f                      subq.w     #4,a7
[000314c4] 2079 0010 1f12            movea.l    ACSblk,a0
[000314ca] 2668 0258                 movea.l    600(a0),a3
[000314ce] 286b 0014                 movea.l    20(a3),a4
[000314d2] 2a68 0240                 movea.l    576(a0),a5
[000314d6] 4268 0248                 clr.w      584(a0)
[000314da] 4eb9 0004 484c            jsr        $0004484C
[000314e0] 3600                      move.w     d0,d3
[000314e2] 6f60                      ble.s      $00031544
[000314e4] 48c0                      ext.l      d0
[000314e6] 2200                      move.l     d0,d1
[000314e8] d281                      add.l      d1,d1
[000314ea] d280                      add.l      d0,d1
[000314ec] e789                      lsl.l      #3,d1
[000314ee] 246d 0014                 movea.l    20(a5),a2
[000314f2] 45f2 1818                 lea.l      24(a2,d1.l),a2
[000314f6] 0c6a 271c 0016            cmpi.w     #$271C,22(a2)
[000314fc] 6646                      bne.s      $00031544
[000314fe] 2eaa 000c                 move.l     12(a2),(a7)
[00031502] 4eb9 0004 b286            jsr        $0004B286
[00031508] 2257                      movea.l    (a7),a1
[0003150a] 43e9 0016                 lea.l      22(a1),a1
[0003150e] 2079 0010 1f12            movea.l    ACSblk,a0
[00031514] 3028 0260                 move.w     608(a0),d0
[00031518] 204c                      movea.l    a4,a0
[0003151a] 4eb9 0004 afe0            jsr        $0004AFE0
[00031520] 72ff                      moveq.l    #-1,d1
[00031522] 2079 0010 1f12            movea.l    ACSblk,a0
[00031528] 3028 0260                 move.w     608(a0),d0
[0003152c] 226b 0066                 movea.l    102(a3),a1
[00031530] 204b                      movea.l    a3,a0
[00031532] 4e91                      jsr        (a1)
[00031534] 4eb9 0004 b33c            jsr        $0004B33C
[0003153a] 3003                      move.w     d3,d0
[0003153c] 204d                      movea.l    a5,a0
[0003153e] 4eb9 0004 492a            jsr        $0004492A
[00031544] 584f                      addq.w     #4,a7
[00031546] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0003154a] 4e75                      rts
edao_dragkey:
[0003154c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00031550] 594f                      subq.w     #4,a7
[00031552] 41f9 0010 1f12            lea.l      ACSblk,a0
[00031558] 2250                      movea.l    (a0),a1
[0003155a] 2469 0258                 movea.l    600(a1),a2
[0003155e] 266a 0014                 movea.l    20(a2),a3
[00031562] 2869 0240                 movea.l    576(a1),a4
[00031566] 4269 0248                 clr.w      584(a1)
[0003156a] 4eb9 0004 484c            jsr        $0004484C
[00031570] 3600                      move.w     d0,d3
[00031572] 6f4c                      ble.s      $000315C0
[00031574] 48c0                      ext.l      d0
[00031576] 2200                      move.l     d0,d1
[00031578] d281                      add.l      d1,d1
[0003157a] d280                      add.l      d0,d1
[0003157c] e789                      lsl.l      #3,d1
[0003157e] 206c 0014                 movea.l    20(a4),a0
[00031582] 43f0 1818                 lea.l      24(a0,d1.l),a1
[00031586] 2e89                      move.l     a1,(a7)
[00031588] 0c69 2723 0016            cmpi.w     #$2723,22(a1)
[0003158e] 6630                      bne.s      $000315C0
[00031590] 204c                      movea.l    a4,a0
[00031592] 3003                      move.w     d3,d0
[00031594] 4eb9 0004 492a            jsr        $0004492A
[0003159a] 2057                      movea.l    (a7),a0
[0003159c] 3f28 0012                 move.w     18(a0),-(a7)
[000315a0] 43f9 000c 08cc            lea.l      $000C08CC,a1
[000315a6] 7014                      moveq.l    #20,d0
[000315a8] 204b                      movea.l    a3,a0
[000315aa] 4eb9 0004 afac            jsr        $0004AFAC
[000315b0] 544f                      addq.w     #2,a7
[000315b2] 322b 01ea                 move.w     490(a3),d1
[000315b6] 7014                      moveq.l    #20,d0
[000315b8] 204a                      movea.l    a2,a0
[000315ba] 226a 0066                 movea.l    102(a2),a1
[000315be] 4e91                      jsr        (a1)
[000315c0] 584f                      addq.w     #4,a7
[000315c2] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[000315c6] 4e75                      rts
edao_ok:
[000315c8] 48e7 003e                 movem.l    a2-a6,-(a7)
[000315cc] 4fef ffdc                 lea.l      -36(a7),a7
[000315d0] 2079 0010 1f12            movea.l    ACSblk,a0
[000315d6] 2268 0258                 movea.l    600(a0),a1
[000315da] 2a51                      movea.l    (a1),a5
[000315dc] 2469 0014                 movea.l    20(a1),a2
[000315e0] 2655                      movea.l    (a5),a3
[000315e2] 006b 0001 0006            ori.w      #$0001,6(a3)
[000315e8] 206d 0004                 movea.l    4(a5),a0
[000315ec] 2868 0004                 movea.l    4(a0),a4
[000315f0] 322d 000a                 move.w     10(a5),d1
[000315f4] 48c1                      ext.l      d1
[000315f6] 2001                      move.l     d1,d0
[000315f8] e788                      lsl.l      #3,d0
[000315fa] 9081                      sub.l      d1,d0
[000315fc] e788                      lsl.l      #3,d0
[000315fe] d9c0                      adda.l     d0,a4
[00031600] 43d7                      lea.l      (a7),a1
[00031602] 204a                      movea.l    a2,a0
[00031604] 7013                      moveq.l    #19,d0
[00031606] 4eb9 0004 b154            jsr        $0004B154
[0003160c] 1017                      move.b     (a7),d0
[0003160e] 6728                      beq.s      $00031638
[00031610] 41d7                      lea.l      (a7),a0
[00031612] 4eb9 0007 6bc4            jsr        $00076BC4
[00031618] 41d7                      lea.l      (a7),a0
[0003161a] 4eb9 0003 1908            jsr        $00031908
[00031620] 3940 002a                 move.w     d0,42(a4)
[00031624] 4a40                      tst.w      d0
[00031626] 6614                      bne.s      $0003163C
[00031628] 43d7                      lea.l      (a7),a1
[0003162a] 41f9 000c 041e            lea.l      $000C041E,a0
[00031630] 4eb9 0005 ef8c            jsr        $0005EF8C
[00031636] 6004                      bra.s      $0003163C
[00031638] 426c 002a                 clr.w      42(a4)
[0003163c] 486c 0034                 pea.l      52(a4)
[00031640] 43f9 000c 08cc            lea.l      $000C08CC,a1
[00031646] 7014                      moveq.l    #20,d0
[00031648] 204a                      movea.l    a2,a0
[0003164a] 4eb9 0004 b0b2            jsr        $0004B0B2
[00031650] 584f                      addq.w     #4,a7
[00031652] 2014                      move.l     (a4),d0
[00031654] 670a                      beq.s      $00031660
[00031656] 2240                      movea.l    d0,a1
[00031658] 204b                      movea.l    a3,a0
[0003165a] 4eb9 0001 61d4            jsr        $000161D4
[00031660] 43d7                      lea.l      (a7),a1
[00031662] 7003                      moveq.l    #3,d0
[00031664] 204a                      movea.l    a2,a0
[00031666] 4eb9 0004 b154            jsr        $0004B154
[0003166c] 1017                      move.b     (a7),d0
[0003166e] 672a                      beq.s      $0003169A
[00031670] 204b                      movea.l    a3,a0
[00031672] 7000                      moveq.l    #0,d0
[00031674] 4eb9 0001 6230            jsr        $00016230
[0003167a] 2c48                      movea.l    a0,a6
[0003167c] 2888                      move.l     a0,(a4)
[0003167e] 200e                      move.l     a6,d0
[00031680] 671a                      beq.s      $0003169C
[00031682] 4879 000c 08cf            pea.l      $000C08CF
[00031688] 486f 0004                 pea.l      4(a7)
[0003168c] 2248                      movea.l    a0,a1
[0003168e] 204b                      movea.l    a3,a0
[00031690] 4eb9 0001 6448            jsr        $00016448
[00031696] 504f                      addq.w     #8,a7
[00031698] 6002                      bra.s      $0003169C
[0003169a] 4294                      clr.l      (a4)
[0003169c] 43d7                      lea.l      (a7),a1
[0003169e] 7012                      moveq.l    #18,d0
[000316a0] 204a                      movea.l    a2,a0
[000316a2] 4eb9 0004 b154            jsr        $0004B154
[000316a8] 4857                      pea.l      (a7)
[000316aa] 4240                      clr.w      d0
[000316ac] 43ec 0004                 lea.l      4(a4),a1
[000316b0] 204b                      movea.l    a3,a0
[000316b2] 4eb9 0001 3f82            jsr        $00013F82
[000316b8] 584f                      addq.w     #4,a7
[000316ba] 43d7                      lea.l      (a7),a1
[000316bc] 700c                      moveq.l    #12,d0
[000316be] 204a                      movea.l    a2,a0
[000316c0] 4eb9 0004 b154            jsr        $0004B154
[000316c6] 4857                      pea.l      (a7)
[000316c8] 7001                      moveq.l    #1,d0
[000316ca] 43ec 0020                 lea.l      32(a4),a1
[000316ce] 204b                      movea.l    a3,a0
[000316d0] 4eb9 0001 3f82            jsr        $00013F82
[000316d6] 584f                      addq.w     #4,a7
[000316d8] 43d7                      lea.l      (a7),a1
[000316da] 700e                      moveq.l    #14,d0
[000316dc] 204a                      movea.l    a2,a0
[000316de] 4eb9 0004 b154            jsr        $0004B154
[000316e4] 4857                      pea.l      (a7)
[000316e6] 7002                      moveq.l    #2,d0
[000316e8] 43ec 0024                 lea.l      36(a4),a1
[000316ec] 204b                      movea.l    a3,a0
[000316ee] 4eb9 0001 3f82            jsr        $00013F82
[000316f4] 584f                      addq.w     #4,a7
[000316f6] 43d7                      lea.l      (a7),a1
[000316f8] 7010                      moveq.l    #16,d0
[000316fa] 204a                      movea.l    a2,a0
[000316fc] 4eb9 0004 b154            jsr        $0004B154
[00031702] 4857                      pea.l      (a7)
[00031704] 4240                      clr.w      d0
[00031706] 43ec 002c                 lea.l      44(a4),a1
[0003170a] 204b                      movea.l    a3,a0
[0003170c] 4eb9 0001 3f82            jsr        $00013F82
[00031712] 584f                      addq.w     #4,a7
[00031714] 43d7                      lea.l      (a7),a1
[00031716] 7011                      moveq.l    #17,d0
[00031718] 204a                      movea.l    a2,a0
[0003171a] 4eb9 0004 b154            jsr        $0004B154
[00031720] 4857                      pea.l      (a7)
[00031722] 4240                      clr.w      d0
[00031724] 43ec 0030                 lea.l      48(a4),a1
[00031728] 204b                      movea.l    a3,a0
[0003172a] 4eb9 0001 3f82            jsr        $00013F82
[00031730] 584f                      addq.w     #4,a7
[00031732] 4eb9 0002 d91e            jsr        $0002D91E
[00031738] 4fef 0024                 lea.l      36(a7),a7
[0003173c] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00031740] 4e75                      rts
edao_list:
[00031742] 2f0a                      move.l     a2,-(a7)
[00031744] 2f0b                      move.l     a3,-(a7)
[00031746] 2079 0010 1f12            movea.l    ACSblk,a0
[0003174c] 2468 0258                 movea.l    600(a0),a2
[00031750] 2052                      movea.l    (a2),a0
[00031752] 006a 0004 0054            ori.w      #$0004,84(a2)
[00031758] 47f9 000c 2ade            lea.l      $000C2ADE,a3
[0003175e] 2690                      move.l     (a0),(a3)
[00031760] 2250                      movea.l    (a0),a1
[00031762] 2769 003c 0004            move.l     60(a1),4(a3)
[00031768] 204b                      movea.l    a3,a0
[0003176a] 2279 000c 1880            movea.l    $000C1880,a1
[00031770] 4e91                      jsr        (a1)
[00031772] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[00031778] 265f                      movea.l    (a7)+,a3
[0003177a] 245f                      movea.l    (a7)+,a2
[0003177c] 4e75                      rts
set_aeo:
[0003177e] 48e7 003c                 movem.l    a2-a5,-(a7)
[00031782] 4fef ffdc                 lea.l      -36(a7),a7
[00031786] 2848                      movea.l    a0,a4
[00031788] 4bf9 000c 08b4            lea.l      $000C08B4,a5
[0003178e] 41ed fd30                 lea.l      -720(a5),a0
[00031792] 4eb9 0004 9a5c            jsr        $00049A5C
[00031798] 2448                      movea.l    a0,a2
[0003179a] 200a                      move.l     a2,d0
[0003179c] 6606                      bne.s      $000317A4
[0003179e] 91c8                      suba.l     a0,a0
[000317a0] 6000 0146                 bra        $000318E8
[000317a4] 47f9 0010 1f12            lea.l      ACSblk,a3
[000317aa] 7003                      moveq.l    #3,d0
[000317ac] 224a                      movea.l    a2,a1
[000317ae] 2053                      movea.l    (a3),a0
[000317b0] 2068 0258                 movea.l    600(a0),a0
[000317b4] 4eb9 0002 f23c            jsr        $0002F23C
[000317ba] 7012                      moveq.l    #18,d0
[000317bc] 224a                      movea.l    a2,a1
[000317be] 2053                      movea.l    (a3),a0
[000317c0] 2068 0258                 movea.l    600(a0),a0
[000317c4] 4eb9 0002 f23c            jsr        $0002F23C
[000317ca] 700c                      moveq.l    #12,d0
[000317cc] 224a                      movea.l    a2,a1
[000317ce] 2053                      movea.l    (a3),a0
[000317d0] 2068 0258                 movea.l    600(a0),a0
[000317d4] 4eb9 0002 f23c            jsr        $0002F23C
[000317da] 700e                      moveq.l    #14,d0
[000317dc] 224a                      movea.l    a2,a1
[000317de] 2053                      movea.l    (a3),a0
[000317e0] 2068 0258                 movea.l    600(a0),a0
[000317e4] 4eb9 0002 f23c            jsr        $0002F23C
[000317ea] 7010                      moveq.l    #16,d0
[000317ec] 224a                      movea.l    a2,a1
[000317ee] 2053                      movea.l    (a3),a0
[000317f0] 2068 0258                 movea.l    600(a0),a0
[000317f4] 4eb9 0002 f23c            jsr        $0002F23C
[000317fa] 7011                      moveq.l    #17,d0
[000317fc] 224a                      movea.l    a2,a1
[000317fe] 2053                      movea.l    (a3),a0
[00031800] 2068 0258                 movea.l    600(a0),a0
[00031804] 4eb9 0002 f23c            jsr        $0002F23C
[0003180a] 7013                      moveq.l    #19,d0
[0003180c] 224a                      movea.l    a2,a1
[0003180e] 2053                      movea.l    (a3),a0
[00031810] 2068 0258                 movea.l    600(a0),a0
[00031814] 4eb9 0002 f23c            jsr        $0002F23C
[0003181a] 7014                      moveq.l    #20,d0
[0003181c] 224a                      movea.l    a2,a1
[0003181e] 2053                      movea.l    (a3),a0
[00031820] 2068 0258                 movea.l    600(a0),a0
[00031824] 4eb9 0002 f23c            jsr        $0002F23C
[0003182a] 43d7                      lea.l      (a7),a1
[0003182c] 2054                      movea.l    (a4),a0
[0003182e] 4eb9 0001 3fb6            jsr        $00013FB6
[00031834] 43d7                      lea.l      (a7),a1
[00031836] 7003                      moveq.l    #3,d0
[00031838] 204a                      movea.l    a2,a0
[0003183a] 4eb9 0004 afe0            jsr        $0004AFE0
[00031840] 43d7                      lea.l      (a7),a1
[00031842] 206c 0004                 movea.l    4(a4),a0
[00031846] 4eb9 0001 3fb6            jsr        $00013FB6
[0003184c] 43d7                      lea.l      (a7),a1
[0003184e] 7012                      moveq.l    #18,d0
[00031850] 204a                      movea.l    a2,a0
[00031852] 4eb9 0004 afe0            jsr        $0004AFE0
[00031858] 43d7                      lea.l      (a7),a1
[0003185a] 206c 0020                 movea.l    32(a4),a0
[0003185e] 4eb9 0001 3fb6            jsr        $00013FB6
[00031864] 43d7                      lea.l      (a7),a1
[00031866] 700c                      moveq.l    #12,d0
[00031868] 204a                      movea.l    a2,a0
[0003186a] 4eb9 0004 afe0            jsr        $0004AFE0
[00031870] 43d7                      lea.l      (a7),a1
[00031872] 206c 0024                 movea.l    36(a4),a0
[00031876] 4eb9 0001 3fb6            jsr        $00013FB6
[0003187c] 43d7                      lea.l      (a7),a1
[0003187e] 700e                      moveq.l    #14,d0
[00031880] 204a                      movea.l    a2,a0
[00031882] 4eb9 0004 afe0            jsr        $0004AFE0
[00031888] 43d7                      lea.l      (a7),a1
[0003188a] 206c 002c                 movea.l    44(a4),a0
[0003188e] 4eb9 0001 3fb6            jsr        $00013FB6
[00031894] 43d7                      lea.l      (a7),a1
[00031896] 7010                      moveq.l    #16,d0
[00031898] 204a                      movea.l    a2,a0
[0003189a] 4eb9 0004 afe0            jsr        $0004AFE0
[000318a0] 43d7                      lea.l      (a7),a1
[000318a2] 206c 0030                 movea.l    48(a4),a0
[000318a6] 4eb9 0001 3fb6            jsr        $00013FB6
[000318ac] 43d7                      lea.l      (a7),a1
[000318ae] 7011                      moveq.l    #17,d0
[000318b0] 204a                      movea.l    a2,a0
[000318b2] 4eb9 0004 afe0            jsr        $0004AFE0
[000318b8] 302c 002a                 move.w     42(a4),d0
[000318bc] 4eb9 0003 19b0            jsr        $000319B0
[000318c2] 2248                      movea.l    a0,a1
[000318c4] 7013                      moveq.l    #19,d0
[000318c6] 204a                      movea.l    a2,a0
[000318c8] 4eb9 0004 afe0            jsr        $0004AFE0
[000318ce] 3f2c 0034                 move.w     52(a4),-(a7)
[000318d2] 43f9 000c 08cc            lea.l      $000C08CC,a1
[000318d8] 7014                      moveq.l    #20,d0
[000318da] 204a                      movea.l    a2,a0
[000318dc] 4eb9 0004 afac            jsr        $0004AFAC
[000318e2] 544f                      addq.w     #2,a7
[000318e4] 2a8a                      move.l     a2,(a5)
[000318e6] 204d                      movea.l    a5,a0
[000318e8] 4fef 0024                 lea.l      36(a7),a7
[000318ec] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[000318f0] 4e75                      rts
