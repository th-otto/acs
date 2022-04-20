
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
[000314da] 4eb9 0004 484c            jsr        Adr_next
[000314e0] 3600                      move.w     d0,d3
[000314e2] 6f60                      ble.s      edao_call_1
[000314e4] 48c0                      ext.l      d0
[000314e6] 2200                      move.l     d0,d1
[000314e8] d281                      add.l      d1,d1
[000314ea] d280                      add.l      d0,d1
[000314ec] e789                      lsl.l      #3,d1
[000314ee] 246d 0014                 movea.l    20(a5),a2
[000314f2] 45f2 1818                 lea.l      24(a2,d1.l),a2
[000314f6] 0c6a 271c 0016            cmpi.w     #$271C,22(a2)
[000314fc] 6646                      bne.s      edao_call_1
[000314fe] 2eaa 000c                 move.l     12(a2),(a7)
[00031502] 4eb9 0004 b286            jsr        Awi_diaend
[00031508] 2257                      movea.l    (a7),a1
[0003150a] 43e9 0016                 lea.l      22(a1),a1
[0003150e] 2079 0010 1f12            movea.l    ACSblk,a0
[00031514] 3028 0260                 move.w     608(a0),d0
[00031518] 204c                      movea.l    a4,a0
[0003151a] 4eb9 0004 afe0            jsr        Aob_puttext
[00031520] 72ff                      moveq.l    #-1,d1
[00031522] 2079 0010 1f12            movea.l    ACSblk,a0
[00031528] 3028 0260                 move.w     608(a0),d0
[0003152c] 226b 0066                 movea.l    102(a3),a1
[00031530] 204b                      movea.l    a3,a0
[00031532] 4e91                      jsr        (a1)
[00031534] 4eb9 0004 b33c            jsr        Awi_diastart
[0003153a] 3003                      move.w     d3,d0
[0003153c] 204d                      movea.l    a5,a0
[0003153e] 4eb9 0004 492a            jsr        Adr_del
edao_call_1:
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
[0003156a] 4eb9 0004 484c            jsr        Adr_next
[00031570] 3600                      move.w     d0,d3
[00031572] 6f4c                      ble.s      edao_dragkey_1
[00031574] 48c0                      ext.l      d0
[00031576] 2200                      move.l     d0,d1
[00031578] d281                      add.l      d1,d1
[0003157a] d280                      add.l      d0,d1
[0003157c] e789                      lsl.l      #3,d1
[0003157e] 206c 0014                 movea.l    20(a4),a0
[00031582] 43f0 1818                 lea.l      24(a0,d1.l),a1
[00031586] 2e89                      move.l     a1,(a7)
[00031588] 0c69 2723 0016            cmpi.w     #$2723,22(a1)
[0003158e] 6630                      bne.s      edao_dragkey_1
[00031590] 204c                      movea.l    a4,a0
[00031592] 3003                      move.w     d3,d0
[00031594] 4eb9 0004 492a            jsr        Adr_del
[0003159a] 2057                      movea.l    (a7),a0
[0003159c] 3f28 0012                 move.w     18(a0),-(a7)
[000315a0] 43f9 000c 08cc            lea.l      $000C08CC,a1
[000315a6] 7014                      moveq.l    #20,d0
[000315a8] 204b                      movea.l    a3,a0
[000315aa] 4eb9 0004 afac            jsr        Aob_printf
[000315b0] 544f                      addq.w     #2,a7
[000315b2] 322b 01ea                 move.w     490(a3),d1
[000315b6] 7014                      moveq.l    #20,d0
[000315b8] 204a                      movea.l    a2,a0
[000315ba] 226a 0066                 movea.l    102(a2),a1
[000315be] 4e91                      jsr        (a1)
edao_dragkey_1:
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
[00031606] 4eb9 0004 b154            jsr        Aob_gettext
[0003160c] 1017                      move.b     (a7),d0
[0003160e] 6728                      beq.s      edao_ok_1
[00031610] 41d7                      lea.l      (a7),a0
[00031612] 4eb9 0007 6bc4            jsr        strupr
[00031618] 41d7                      lea.l      (a7),a0
[0003161a] 4eb9 0003 1908            jsr        key_code
[00031620] 3940 002a                 move.w     d0,42(a4)
[00031624] 4a40                      tst.w      d0
[00031626] 6614                      bne.s      edao_ok_2
[00031628] 43d7                      lea.l      (a7),a1
[0003162a] 41f9 000c 041e            lea.l      ERR_KEYCODE,a0
[00031630] 4eb9 0005 ef8c            jsr        alert_str
[00031636] 6004                      bra.s      edao_ok_2
edao_ok_1:
[00031638] 426c 002a                 clr.w      42(a4)
edao_ok_2:
[0003163c] 486c 0034                 pea.l      52(a4)
[00031640] 43f9 000c 08cc            lea.l      $000C08CC,a1
[00031646] 7014                      moveq.l    #20,d0
[00031648] 204a                      movea.l    a2,a0
[0003164a] 4eb9 0004 b0b2            jsr        Aob_scanf
[00031650] 584f                      addq.w     #4,a7
[00031652] 2014                      move.l     (a4),d0
[00031654] 670a                      beq.s      edao_ok_3
[00031656] 2240                      movea.l    d0,a1
[00031658] 204b                      movea.l    a3,a0
[0003165a] 4eb9 0001 61d4            jsr        objfree
edao_ok_3:
[00031660] 43d7                      lea.l      (a7),a1
[00031662] 7003                      moveq.l    #3,d0
[00031664] 204a                      movea.l    a2,a0
[00031666] 4eb9 0004 b154            jsr        Aob_gettext
[0003166c] 1017                      move.b     (a7),d0
[0003166e] 672a                      beq.s      edao_ok_4
[00031670] 204b                      movea.l    a3,a0
[00031672] 7000                      moveq.l    #0,d0
[00031674] 4eb9 0001 6230            jsr        objmalloc
[0003167a] 2c48                      movea.l    a0,a6
[0003167c] 2888                      move.l     a0,(a4)
[0003167e] 200e                      move.l     a6,d0
[00031680] 671a                      beq.s      edao_ok_5
[00031682] 4879 000c 08cf            pea.l      $000C08CF
[00031688] 486f 0004                 pea.l      4(a7)
[0003168c] 2248                      movea.l    a0,a1
[0003168e] 204b                      movea.l    a3,a0
[00031690] 4eb9 0001 6448            jsr        objname
[00031696] 504f                      addq.w     #8,a7
[00031698] 6002                      bra.s      edao_ok_5
edao_ok_4:
[0003169a] 4294                      clr.l      (a4)
edao_ok_5:
[0003169c] 43d7                      lea.l      (a7),a1
[0003169e] 7012                      moveq.l    #18,d0
[000316a0] 204a                      movea.l    a2,a0
[000316a2] 4eb9 0004 b154            jsr        Aob_gettext
[000316a8] 4857                      pea.l      (a7)
[000316aa] 4240                      clr.w      d0
[000316ac] 43ec 0004                 lea.l      4(a4),a1
[000316b0] 204b                      movea.l    a3,a0
[000316b2] 4eb9 0001 3f82            jsr        mod_ref
[000316b8] 584f                      addq.w     #4,a7
[000316ba] 43d7                      lea.l      (a7),a1
[000316bc] 700c                      moveq.l    #12,d0
[000316be] 204a                      movea.l    a2,a0
[000316c0] 4eb9 0004 b154            jsr        Aob_gettext
[000316c6] 4857                      pea.l      (a7)
[000316c8] 7001                      moveq.l    #1,d0
[000316ca] 43ec 0020                 lea.l      32(a4),a1
[000316ce] 204b                      movea.l    a3,a0
[000316d0] 4eb9 0001 3f82            jsr        mod_ref
[000316d6] 584f                      addq.w     #4,a7
[000316d8] 43d7                      lea.l      (a7),a1
[000316da] 700e                      moveq.l    #14,d0
[000316dc] 204a                      movea.l    a2,a0
[000316de] 4eb9 0004 b154            jsr        Aob_gettext
[000316e4] 4857                      pea.l      (a7)
[000316e6] 7002                      moveq.l    #2,d0
[000316e8] 43ec 0024                 lea.l      36(a4),a1
[000316ec] 204b                      movea.l    a3,a0
[000316ee] 4eb9 0001 3f82            jsr        mod_ref
[000316f4] 584f                      addq.w     #4,a7
[000316f6] 43d7                      lea.l      (a7),a1
[000316f8] 7010                      moveq.l    #16,d0
[000316fa] 204a                      movea.l    a2,a0
[000316fc] 4eb9 0004 b154            jsr        Aob_gettext
[00031702] 4857                      pea.l      (a7)
[00031704] 4240                      clr.w      d0
[00031706] 43ec 002c                 lea.l      44(a4),a1
[0003170a] 204b                      movea.l    a3,a0
[0003170c] 4eb9 0001 3f82            jsr        mod_ref
[00031712] 584f                      addq.w     #4,a7
[00031714] 43d7                      lea.l      (a7),a1
[00031716] 7011                      moveq.l    #17,d0
[00031718] 204a                      movea.l    a2,a0
[0003171a] 4eb9 0004 b154            jsr        Aob_gettext
[00031720] 4857                      pea.l      (a7)
[00031722] 4240                      clr.w      d0
[00031724] 43ec 0030                 lea.l      48(a4),a1
[00031728] 204b                      movea.l    a3,a0
[0003172a] 4eb9 0001 3f82            jsr        mod_ref
[00031730] 584f                      addq.w     #4,a7
[00031732] 4eb9 0002 d91e            jsr        ed_abort
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
[00031758] 47f9 000c 2ade            lea.l      list_reference,a3
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
[00031788] 4bf9 000c 08b4            lea.l      sm,a5
[0003178e] 41ed fd30                 lea.l      -720(a5),a0
[00031792] 4eb9 0004 9a5c            jsr        Aob_create
[00031798] 2448                      movea.l    a0,a2
[0003179a] 200a                      move.l     a2,d0
[0003179c] 6606                      bne.s      set_aeo_1
[0003179e] 91c8                      suba.l     a0,a0
[000317a0] 6000 0146                 bra        set_aeo_2
set_aeo_1:
[000317a4] 47f9 0010 1f12            lea.l      ACSblk,a3
[000317aa] 7003                      moveq.l    #3,d0
[000317ac] 224a                      movea.l    a2,a1
[000317ae] 2053                      movea.l    (a3),a0
[000317b0] 2068 0258                 movea.l    600(a0),a0
[000317b4] 4eb9 0002 f23c            jsr        oe_beself
[000317ba] 7012                      moveq.l    #18,d0
[000317bc] 224a                      movea.l    a2,a1
[000317be] 2053                      movea.l    (a3),a0
[000317c0] 2068 0258                 movea.l    600(a0),a0
[000317c4] 4eb9 0002 f23c            jsr        oe_beself
[000317ca] 700c                      moveq.l    #12,d0
[000317cc] 224a                      movea.l    a2,a1
[000317ce] 2053                      movea.l    (a3),a0
[000317d0] 2068 0258                 movea.l    600(a0),a0
[000317d4] 4eb9 0002 f23c            jsr        oe_beself
[000317da] 700e                      moveq.l    #14,d0
[000317dc] 224a                      movea.l    a2,a1
[000317de] 2053                      movea.l    (a3),a0
[000317e0] 2068 0258                 movea.l    600(a0),a0
[000317e4] 4eb9 0002 f23c            jsr        oe_beself
[000317ea] 7010                      moveq.l    #16,d0
[000317ec] 224a                      movea.l    a2,a1
[000317ee] 2053                      movea.l    (a3),a0
[000317f0] 2068 0258                 movea.l    600(a0),a0
[000317f4] 4eb9 0002 f23c            jsr        oe_beself
[000317fa] 7011                      moveq.l    #17,d0
[000317fc] 224a                      movea.l    a2,a1
[000317fe] 2053                      movea.l    (a3),a0
[00031800] 2068 0258                 movea.l    600(a0),a0
[00031804] 4eb9 0002 f23c            jsr        oe_beself
[0003180a] 7013                      moveq.l    #19,d0
[0003180c] 224a                      movea.l    a2,a1
[0003180e] 2053                      movea.l    (a3),a0
[00031810] 2068 0258                 movea.l    600(a0),a0
[00031814] 4eb9 0002 f23c            jsr        oe_beself
[0003181a] 7014                      moveq.l    #20,d0
[0003181c] 224a                      movea.l    a2,a1
[0003181e] 2053                      movea.l    (a3),a0
[00031820] 2068 0258                 movea.l    600(a0),a0
[00031824] 4eb9 0002 f23c            jsr        oe_beself
[0003182a] 43d7                      lea.l      (a7),a1
[0003182c] 2054                      movea.l    (a4),a0
[0003182e] 4eb9 0001 3fb6            jsr        set_ref
[00031834] 43d7                      lea.l      (a7),a1
[00031836] 7003                      moveq.l    #3,d0
[00031838] 204a                      movea.l    a2,a0
[0003183a] 4eb9 0004 afe0            jsr        Aob_puttext
[00031840] 43d7                      lea.l      (a7),a1
[00031842] 206c 0004                 movea.l    4(a4),a0
[00031846] 4eb9 0001 3fb6            jsr        set_ref
[0003184c] 43d7                      lea.l      (a7),a1
[0003184e] 7012                      moveq.l    #18,d0
[00031850] 204a                      movea.l    a2,a0
[00031852] 4eb9 0004 afe0            jsr        Aob_puttext
[00031858] 43d7                      lea.l      (a7),a1
[0003185a] 206c 0020                 movea.l    32(a4),a0
[0003185e] 4eb9 0001 3fb6            jsr        set_ref
[00031864] 43d7                      lea.l      (a7),a1
[00031866] 700c                      moveq.l    #12,d0
[00031868] 204a                      movea.l    a2,a0
[0003186a] 4eb9 0004 afe0            jsr        Aob_puttext
[00031870] 43d7                      lea.l      (a7),a1
[00031872] 206c 0024                 movea.l    36(a4),a0
[00031876] 4eb9 0001 3fb6            jsr        set_ref
[0003187c] 43d7                      lea.l      (a7),a1
[0003187e] 700e                      moveq.l    #14,d0
[00031880] 204a                      movea.l    a2,a0
[00031882] 4eb9 0004 afe0            jsr        Aob_puttext
[00031888] 43d7                      lea.l      (a7),a1
[0003188a] 206c 002c                 movea.l    44(a4),a0
[0003188e] 4eb9 0001 3fb6            jsr        set_ref
[00031894] 43d7                      lea.l      (a7),a1
[00031896] 7010                      moveq.l    #16,d0
[00031898] 204a                      movea.l    a2,a0
[0003189a] 4eb9 0004 afe0            jsr        Aob_puttext
[000318a0] 43d7                      lea.l      (a7),a1
[000318a2] 206c 0030                 movea.l    48(a4),a0
[000318a6] 4eb9 0001 3fb6            jsr        set_ref
[000318ac] 43d7                      lea.l      (a7),a1
[000318ae] 7011                      moveq.l    #17,d0
[000318b0] 204a                      movea.l    a2,a0
[000318b2] 4eb9 0004 afe0            jsr        Aob_puttext
[000318b8] 302c 002a                 move.w     42(a4),d0
[000318bc] 4eb9 0003 19b0            jsr        key_string
[000318c2] 2248                      movea.l    a0,a1
[000318c4] 7013                      moveq.l    #19,d0
[000318c6] 204a                      movea.l    a2,a0
[000318c8] 4eb9 0004 afe0            jsr        Aob_puttext
[000318ce] 3f2c 0034                 move.w     52(a4),-(a7)
[000318d2] 43f9 000c 08cc            lea.l      $000C08CC,a1
[000318d8] 7014                      moveq.l    #20,d0
[000318da] 204a                      movea.l    a2,a0
[000318dc] 4eb9 0004 afac            jsr        Aob_printf
[000318e2] 544f                      addq.w     #2,a7
[000318e4] 2a8a                      move.l     a2,(a5)
[000318e6] 204d                      movea.l    a5,a0
set_aeo_2:
[000318e8] 4fef 0024                 lea.l      36(a7),a7
[000318ec] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[000318f0] 4e75                      rts

	.data

ERR_KEYCODE:
[000c041e]                           dc.b '[3][ | Unbekannter oder| falscher Tastencode | ',$27,'%s',$27,'][ OK ]',0
TEXT_001:
[000c0459]                           dc.b 'Abbruch',0
TEXT_003:
[000c0461]                           dc.b $4f
[000c0462]                           dc.w $4b00
TEXT_01:
[000c0464]                           dc.b 'Index:',0
TEXT_02:
[000c046b]                           dc.b 'Click:',0
TEXT_03:
[000c0472]                           dc.b 'Drag:',0
TEXT_04:
[000c0478]                           dc.b 'UserP1:',0
TEXT_05:
[000c0480]                           dc.b 'UserP2:',0
TEXT_06:
[000c0488]                           dc.b ' Typ:',0
TEXT_08:
[000c048e]                           dc.b 'Key:',0
TEXT_09:
[000c0493]                           dc.b $00
TEXT_136:
[000c0494]                           dc.b ' Mausindex:',0
help_title:
[000c04a0]                           dc.b 'Der AOBJECT-Editor',0
title:
[000c04b3]                           dc.b ' ERWEITERTE WERTE -',0
[000c04c7]                           dc.b $00
TEDINFO_01:
[000c04c8] 000c048e                  dc.l TEXT_08
[000c04cc] 000c0493                  dc.l TEXT_09
[000c04d0] 000c0493                  dc.l TEXT_09
[000c04d4]                           dc.b $00
[000c04d5]                           dc.b $03
[000c04d6]                           dc.b $00
[000c04d7]                           dc.b $06
[000c04d8]                           dc.b $00
[000c04d9]                           dc.b $01
[000c04da]                           dc.w $1100
[000c04dc]                           dc.b $00
[000c04dd]                           dc.b $00
[000c04de]                           dc.b $00
[000c04df]                           dc.b $00
[000c04e0]                           dc.b $00
[000c04e1]                           dc.b $05
[000c04e2]                           dc.b $00
[000c04e3]                           dc.b $01
A_3DBUTTON01:
[000c04e4] 0005a4e2                  dc.l A_3Dbutton
[000c04e8]                           dc.w $29c1
[000c04ea]                           dc.w $0178
[000c04ec] 00059318                  dc.l Auo_string
[000c04f0] 000c0461                  dc.l TEXT_003
[000c04f4]                           dc.b $00
[000c04f5]                           dc.b $00
[000c04f6]                           dc.b $00
[000c04f7]                           dc.b $00
[000c04f8]                           dc.b $00
[000c04f9]                           dc.b $00
[000c04fa]                           dc.b $00
[000c04fb]                           dc.b $00
[000c04fc]                           dc.b $00
[000c04fd]                           dc.b $00
[000c04fe]                           dc.b $00
[000c04ff]                           dc.b $00
[000c0500]                           dc.b $00
[000c0501]                           dc.b $00
[000c0502]                           dc.b $00
[000c0503]                           dc.b $00
A_3DBUTTON02:
[000c0504] 0005a4e2                  dc.l A_3Dbutton
[000c0508]                           dc.w $21f1
[000c050a]                           dc.w $0178
[000c050c] 00059318                  dc.l Auo_string
[000c0510]                           dc.b $00
[000c0511]                           dc.b $00
[000c0512]                           dc.b $00
[000c0513]                           dc.b $00
[000c0514]                           dc.b $00
[000c0515]                           dc.b $00
[000c0516]                           dc.b $00
[000c0517]                           dc.b $00
[000c0518]                           dc.b $00
[000c0519]                           dc.b $00
[000c051a]                           dc.b $00
[000c051b]                           dc.b $00
[000c051c]                           dc.b $00
[000c051d]                           dc.b $00
[000c051e]                           dc.b $00
[000c051f]                           dc.b $00
[000c0520]                           dc.b $00
[000c0521]                           dc.b $00
[000c0522]                           dc.b $00
[000c0523]                           dc.b $00
A_3DBUTTON03:
[000c0524] 0005a4e2                  dc.l A_3Dbutton
[000c0528]                           dc.w $2011
[000c052a]                           dc.w $9178
[000c052c] 00059318                  dc.l Auo_string
[000c0530]                           dc.b $00
[000c0531]                           dc.b $00
[000c0532]                           dc.b $00
[000c0533]                           dc.b $00
[000c0534]                           dc.b $00
[000c0535]                           dc.b $00
[000c0536]                           dc.b $00
[000c0537]                           dc.b $00
[000c0538]                           dc.b $00
[000c0539]                           dc.b $00
[000c053a]                           dc.b $00
[000c053b]                           dc.b $00
[000c053c]                           dc.b $00
[000c053d]                           dc.b $00
[000c053e]                           dc.b $00
[000c053f]                           dc.b $00
[000c0540]                           dc.b $00
[000c0541]                           dc.b $00
[000c0542]                           dc.b $00
[000c0543]                           dc.b $00
A_3DBUTTON04:
[000c0544] 0005a4e2                  dc.l A_3Dbutton
[000c0548]                           dc.w $29c1
[000c054a]                           dc.w $0178
[000c054c] 00059318                  dc.l Auo_string
[000c0550] 000c0459                  dc.l TEXT_001
[000c0554]                           dc.b $00
[000c0555]                           dc.b $00
[000c0556]                           dc.b $00
[000c0557]                           dc.b $00
[000c0558]                           dc.b $00
[000c0559]                           dc.b $00
[000c055a]                           dc.b $00
[000c055b]                           dc.b $00
[000c055c]                           dc.b $00
[000c055d]                           dc.b $00
[000c055e]                           dc.b $00
[000c055f]                           dc.b $00
[000c0560]                           dc.b $00
[000c0561]                           dc.b $00
[000c0562]                           dc.b $00
[000c0563]                           dc.b $00
A_BOXED01:
[000c0564] 0005e9d2                  dc.l A_boxed
[000c0568]                           dc.w $9000
[000c056a]                           dc.w $2012
[000c056c] 0005e010                  dc.l Auo_boxed
[000c0570]                           dc.b $00
[000c0571]                           dc.b $00
[000c0572]                           dc.b $00
[000c0573]                           dc.b $00
[000c0574]                           dc.b $00
[000c0575]                           dc.b $00
[000c0576]                           dc.b $00
[000c0577]                           dc.b $00
[000c0578]                           dc.b $00
[000c0579]                           dc.b $00
[000c057a]                           dc.b $00
[000c057b]                           dc.b $00
[000c057c]                           dc.b $00
[000c057d]                           dc.b $00
[000c057e]                           dc.b $00
[000c057f]                           dc.b $00
[000c0580]                           dc.b $00
[000c0581]                           dc.b $00
[000c0582]                           dc.b $00
[000c0583]                           dc.b $00
A_BOXED02:
[000c0584] 0005e9d2                  dc.l A_boxed
[000c0588]                           dc.w $9070
[000c058a]                           dc.w $0212
[000c058c] 0005e010                  dc.l Auo_boxed
[000c0590]                           dc.b $00
[000c0591]                           dc.b $00
[000c0592]                           dc.b $00
[000c0593]                           dc.b $00
[000c0594]                           dc.b $00
[000c0595]                           dc.b $00
[000c0596]                           dc.b $00
[000c0597]                           dc.b $00
[000c0598]                           dc.b $00
[000c0599]                           dc.b $00
[000c059a]                           dc.b $00
[000c059b]                           dc.b $00
[000c059c]                           dc.b $00
[000c059d]                           dc.b $00
[000c059e]                           dc.b $00
[000c059f]                           dc.b $00
[000c05a0]                           dc.b $00
[000c05a1]                           dc.b $00
[000c05a2]                           dc.b $00
[000c05a3]                           dc.b $00
A_BOXED03:
[000c05a4] 0005e9d2                  dc.l A_boxed
[000c05a8]                           dc.w $9038
[000c05aa]                           dc.w $2012
[000c05ac] 0005e010                  dc.l Auo_boxed
[000c05b0]                           dc.b $00
[000c05b1]                           dc.b $00
[000c05b2]                           dc.b $00
[000c05b3]                           dc.b $00
[000c05b4]                           dc.b $00
[000c05b5]                           dc.b $00
[000c05b6]                           dc.b $00
[000c05b7]                           dc.b $00
[000c05b8]                           dc.b $00
[000c05b9]                           dc.b $00
[000c05ba]                           dc.b $00
[000c05bb]                           dc.b $00
[000c05bc]                           dc.b $00
[000c05bd]                           dc.b $00
[000c05be]                           dc.b $00
[000c05bf]                           dc.b $00
[000c05c0]                           dc.b $00
[000c05c1]                           dc.b $00
[000c05c2]                           dc.b $00
[000c05c3]                           dc.b $00
A_INNERFRAME01:
[000c05c4] 00059f9c                  dc.l A_innerframe
[000c05c8]                           dc.w $1000
[000c05ca]                           dc.w $8f19
[000c05cc] 00059318                  dc.l Auo_string
[000c05d0]                           dc.b $00
[000c05d1]                           dc.b $00
[000c05d2]                           dc.b $00
[000c05d3]                           dc.b $00
[000c05d4]                           dc.b $00
[000c05d5]                           dc.b $00
[000c05d6]                           dc.b $00
[000c05d7]                           dc.b $00
[000c05d8]                           dc.b $00
[000c05d9]                           dc.b $00
[000c05da]                           dc.b $00
[000c05db]                           dc.b $00
[000c05dc]                           dc.b $00
[000c05dd]                           dc.b $00
[000c05de]                           dc.b $00
[000c05df]                           dc.b $00
[000c05e0]                           dc.b $00
[000c05e1]                           dc.b $00
[000c05e2]                           dc.b $00
[000c05e3]                           dc.b $00
ED_AEO:
[000c05e4]                           dc.w $ffff
[000c05e6]                           dc.b $00
[000c05e7]                           dc.b $01
[000c05e8]                           dc.b $00
[000c05e9]                           dc.b $1c
[000c05ea]                           dc.b $00
[000c05eb]                           dc.b $18
[000c05ec]                           dc.b $00
[000c05ed]                           dc.b $40
[000c05ee]                           dc.b $00
[000c05ef]                           dc.b $10
[000c05f0] 000c0504                  dc.l A_3DBUTTON02
[000c05f4]                           dc.b $00
[000c05f5]                           dc.b $00
[000c05f6]                           dc.b $00
[000c05f7]                           dc.b $00
[000c05f8]                           dc.b $00
[000c05f9]                           dc.b $2c
[000c05fa]                           dc.b $00
[000c05fb]                           dc.b $0f
_01_ED_AEO:
[000c05fc]                           dc.b $00
[000c05fd]                           dc.b $04
[000c05fe]                           dc.b $00
[000c05ff]                           dc.b $02
[000c0600]                           dc.b $00
[000c0601]                           dc.b $03
[000c0602]                           dc.b $00
[000c0603]                           dc.b $18
[000c0604]                           dc.b $00
[000c0605]                           dc.b $40
[000c0606]                           dc.b $00
[000c0607]                           dc.b $00
[000c0608] 000c05c4                  dc.l A_INNERFRAME01
[000c060c]                           dc.b $00
[000c060d]                           dc.b $01
[000c060e]                           dc.b $00
[000c060f]                           dc.b $00
[000c0610]                           dc.b $00
[000c0611]                           dc.b $2a
[000c0612]                           dc.b $00
[000c0613]                           dc.b $03
_02_ED_AEO:
[000c0614]                           dc.b $00
[000c0615]                           dc.b $03
[000c0616]                           dc.w $ffff
[000c0618]                           dc.w $ffff
[000c061a]                           dc.b $00
[000c061b]                           dc.b $1c
[000c061c]                           dc.b $00
[000c061d]                           dc.b $00
[000c061e]                           dc.b $00
[000c061f]                           dc.b $00
[000c0620] 000c0464                  dc.l TEXT_01
[000c0624]                           dc.b $00
[000c0625]                           dc.b $02
[000c0626]                           dc.b $00
[000c0627]                           dc.b $01
[000c0628]                           dc.b $00
[000c0629]                           dc.b $06
[000c062a]                           dc.b $00
[000c062b]                           dc.b $01
_03_ED_AEO:
[000c062c]                           dc.b $00
[000c062d]                           dc.b $01
[000c062e]                           dc.w $ffff
[000c0630]                           dc.w $ffff
[000c0632]                           dc.b $00
[000c0633]                           dc.b $18
[000c0634]                           dc.b $00
[000c0635]                           dc.b $08
[000c0636]                           dc.b $00
[000c0637]                           dc.b $10
[000c0638] 000c05a4                  dc.l A_BOXED03
[000c063c]                           dc.b $00
[000c063d]                           dc.b $09
[000c063e]                           dc.b $00
[000c063f]                           dc.b $01
[000c0640]                           dc.b $00
[000c0641]                           dc.b $20
[000c0642]                           dc.b $00
[000c0643]                           dc.b $01
_04_ED_AEO:
[000c0644]                           dc.b $00
[000c0645]                           dc.b $1a
[000c0646]                           dc.b $00
[000c0647]                           dc.b $05
[000c0648]                           dc.b $00
[000c0649]                           dc.b $18
[000c064a]                           dc.b $00
[000c064b]                           dc.b $18
[000c064c]                           dc.b $00
[000c064d]                           dc.b $40
[000c064e]                           dc.b $00
[000c064f]                           dc.b $00
[000c0650] 000c05c4                  dc.l A_INNERFRAME01
[000c0654]                           dc.b $00
[000c0655]                           dc.b $01
[000c0656]                           dc.b $00
[000c0657]                           dc.b $03
[000c0658]                           dc.b $00
[000c0659]                           dc.b $2a
[000c065a]                           dc.b $00
[000c065b]                           dc.b $09
_05_ED_AEO:
[000c065c]                           dc.b $00
[000c065d]                           dc.b $06
[000c065e]                           dc.w $ffff
[000c0660]                           dc.w $ffff
[000c0662]                           dc.b $00
[000c0663]                           dc.b $1c
[000c0664]                           dc.b $00
[000c0665]                           dc.b $00
[000c0666]                           dc.b $00
[000c0667]                           dc.b $00
[000c0668] 000c0478                  dc.l TEXT_04
[000c066c]                           dc.b $00
[000c066d]                           dc.b $01
[000c066e]                           dc.b $00
[000c066f]                           dc.b $03
[000c0670]                           dc.b $00
[000c0671]                           dc.b $07
[000c0672]                           dc.b $00
[000c0673]                           dc.b $01
_06_ED_AEO:
[000c0674]                           dc.b $00
[000c0675]                           dc.b $07
[000c0676]                           dc.w $ffff
[000c0678]                           dc.w $ffff
[000c067a]                           dc.b $00
[000c067b]                           dc.b $1c
[000c067c]                           dc.b $00
[000c067d]                           dc.b $00
[000c067e]                           dc.b $00
[000c067f]                           dc.b $00
[000c0680] 000c0480                  dc.l TEXT_05
[000c0684]                           dc.b $00
[000c0685]                           dc.b $01
[000c0686]                           dc.b $00
[000c0687]                           dc.b $04
[000c0688]                           dc.b $00
[000c0689]                           dc.b $07
[000c068a]                           dc.b $00
[000c068b]                           dc.b $01
_07_ED_AEO:
[000c068c]                           dc.b $00
[000c068d]                           dc.b $09
[000c068e]                           dc.w $ffff
[000c0690]                           dc.w $ffff
[000c0692]                           dc.b $00
[000c0693]                           dc.b $1c
[000c0694]                           dc.b $00
[000c0695]                           dc.b $05
[000c0696]                           dc.b $00
[000c0697]                           dc.b $00
[000c0698] 000c046b                  dc.l TEXT_02
[000c069c]                           dc.b $00
[000c069d]                           dc.b $02
[000c069e]                           dc.b $00
[000c069f]                           dc.b $01
[000c06a0]                           dc.b $00
[000c06a1]                           dc.b $06
[000c06a2]                           dc.b $00
[000c06a3]                           dc.b $01
_07aED_AEO:
[000c06a4] 00031742                  dc.l edao_list
[000c06a8]                           dc.b $00
[000c06a9]                           dc.b $00
[000c06aa]                           dc.b $00
[000c06ab]                           dc.b $00
[000c06ac]                           dc.w $8000
[000c06ae]                           dc.b $00
[000c06af]                           dc.b $00
[000c06b0]                           dc.b $00
[000c06b1]                           dc.b $00
[000c06b2]                           dc.b $00
[000c06b3]                           dc.b $00
[000c06b4]                           dc.b $00
[000c06b5]                           dc.b $00
[000c06b6]                           dc.b $00
[000c06b7]                           dc.b $00
[000c06b8]                           dc.b $00
[000c06b9]                           dc.b $00
[000c06ba]                           dc.b $00
[000c06bb]                           dc.b $00
_09_ED_AEO:
[000c06bc]                           dc.b $00
[000c06bd]                           dc.b $0b
[000c06be]                           dc.w $ffff
[000c06c0]                           dc.w $ffff
[000c06c2]                           dc.b $00
[000c06c3]                           dc.b $1c
[000c06c4]                           dc.b $00
[000c06c5]                           dc.b $05
[000c06c6]                           dc.b $00
[000c06c7]                           dc.b $00
[000c06c8] 000c0472                  dc.l TEXT_03
[000c06cc]                           dc.b $00
[000c06cd]                           dc.b $03
[000c06ce]                           dc.b $00
[000c06cf]                           dc.b $02
[000c06d0]                           dc.b $00
[000c06d1]                           dc.b $05
[000c06d2]                           dc.b $00
[000c06d3]                           dc.b $01
_09aED_AEO:
[000c06d4] 00031742                  dc.l edao_list
[000c06d8]                           dc.b $00
[000c06d9]                           dc.b $00
[000c06da]                           dc.b $00
[000c06db]                           dc.b $00
[000c06dc]                           dc.w $8000
[000c06de]                           dc.b $00
[000c06df]                           dc.b $00
[000c06e0]                           dc.b $00
[000c06e1]                           dc.b $00
[000c06e2]                           dc.b $00
[000c06e3]                           dc.b $00
[000c06e4]                           dc.b $00
[000c06e5]                           dc.b $00
[000c06e6]                           dc.b $00
[000c06e7]                           dc.b $00
[000c06e8]                           dc.b $00
[000c06e9]                           dc.b $00
[000c06ea]                           dc.b $00
[000c06eb]                           dc.b $00
_11_ED_AEO:
[000c06ec]                           dc.b $00
[000c06ed]                           dc.b $13
[000c06ee]                           dc.b $00
[000c06ef]                           dc.b $0c
[000c06f0]                           dc.b $00
[000c06f1]                           dc.b $12
[000c06f2]                           dc.b $00
[000c06f3]                           dc.b $18
[000c06f4]                           dc.b $00
[000c06f5]                           dc.b $40
[000c06f6]                           dc.b $00
[000c06f7]                           dc.b $00
[000c06f8] 000c0524                  dc.l A_3DBUTTON03
[000c06fc]                           dc.b $00
[000c06fd]                           dc.b $09
[000c06fe]                           dc.b $00
[000c06ff]                           dc.b $01
[000c0700]                           dc.b $00
[000c0701]                           dc.b $20
[000c0702]                           dc.b $00
[000c0703]                           dc.b $05
_12_ED_AEO:
[000c0704]                           dc.b $00
[000c0705]                           dc.b $0e
[000c0706]                           dc.w $ffff
[000c0708]                           dc.w $ffff
[000c070a]                           dc.b $00
[000c070b]                           dc.b $18
[000c070c]                           dc.w $1008
[000c070e]                           dc.b $00
[000c070f]                           dc.b $00
[000c0710] 000c05a4                  dc.l A_BOXED03
[000c0714]                           dc.b $00
[000c0715]                           dc.b $00
[000c0716]                           dc.b $00
[000c0717]                           dc.b $00
[000c0718]                           dc.b $00
[000c0719]                           dc.b $20
[000c071a]                           dc.b $00
[000c071b]                           dc.b $01
_12aED_AEO:
[000c071c]                           dc.b $00
[000c071d]                           dc.b $00
[000c071e]                           dc.b $00
[000c071f]                           dc.b $00
[000c0720] 000314be                  dc.l edao_call
[000c0724]                           dc.w $8000
[000c0726]                           dc.b $00
[000c0727]                           dc.b $00
[000c0728]                           dc.b $00
[000c0729]                           dc.b $00
[000c072a]                           dc.b $00
[000c072b]                           dc.b $00
[000c072c]                           dc.b $00
[000c072d]                           dc.b $00
[000c072e]                           dc.b $00
[000c072f]                           dc.b $00
[000c0730]                           dc.b $00
[000c0731]                           dc.b $00
[000c0732]                           dc.b $00
[000c0733]                           dc.b $00
_14_ED_AEO:
[000c0734]                           dc.b $00
[000c0735]                           dc.b $10
[000c0736]                           dc.w $ffff
[000c0738]                           dc.w $ffff
[000c073a]                           dc.b $00
[000c073b]                           dc.b $18
[000c073c]                           dc.w $1008
[000c073e]                           dc.b $00
[000c073f]                           dc.b $00
[000c0740] 000c05a4                  dc.l A_BOXED03
[000c0744]                           dc.b $00
[000c0745]                           dc.b $00
[000c0746]                           dc.b $00
[000c0747]                           dc.b $01
[000c0748]                           dc.b $00
[000c0749]                           dc.b $20
[000c074a]                           dc.b $00
[000c074b]                           dc.b $01
_14aED_AEO:
[000c074c]                           dc.b $00
[000c074d]                           dc.b $00
[000c074e]                           dc.b $00
[000c074f]                           dc.b $00
[000c0750] 000314be                  dc.l edao_call
[000c0754]                           dc.w $8000
[000c0756]                           dc.b $00
[000c0757]                           dc.b $00
[000c0758]                           dc.b $00
[000c0759]                           dc.b $00
[000c075a]                           dc.b $00
[000c075b]                           dc.b $00
[000c075c]                           dc.b $00
[000c075d]                           dc.b $00
[000c075e]                           dc.b $00
[000c075f]                           dc.b $00
[000c0760]                           dc.b $00
[000c0761]                           dc.b $00
[000c0762]                           dc.b $00
[000c0763]                           dc.b $00
_16_ED_AEO:
[000c0764]                           dc.b $00
[000c0765]                           dc.b $11
[000c0766]                           dc.w $ffff
[000c0768]                           dc.w $ffff
[000c076a]                           dc.b $00
[000c076b]                           dc.b $18
[000c076c]                           dc.b $00
[000c076d]                           dc.b $08
[000c076e]                           dc.b $00
[000c076f]                           dc.b $00
[000c0770] 000c05a4                  dc.l A_BOXED03
[000c0774]                           dc.b $00
[000c0775]                           dc.b $00
[000c0776]                           dc.b $00
[000c0777]                           dc.b $02
[000c0778]                           dc.b $00
[000c0779]                           dc.b $20
[000c077a]                           dc.b $00
[000c077b]                           dc.b $01
_17_ED_AEO:
[000c077c]                           dc.b $00
[000c077d]                           dc.b $12
[000c077e]                           dc.w $ffff
[000c0780]                           dc.w $ffff
[000c0782]                           dc.b $00
[000c0783]                           dc.b $18
[000c0784]                           dc.b $00
[000c0785]                           dc.b $08
[000c0786]                           dc.b $00
[000c0787]                           dc.b $00
[000c0788] 000c05a4                  dc.l A_BOXED03
[000c078c]                           dc.b $00
[000c078d]                           dc.b $00
[000c078e]                           dc.b $00
[000c078f]                           dc.b $03
[000c0790]                           dc.b $00
[000c0791]                           dc.b $20
[000c0792]                           dc.b $00
[000c0793]                           dc.b $01
_18_ED_AEO:
[000c0794]                           dc.b $00
[000c0795]                           dc.b $0b
[000c0796]                           dc.w $ffff
[000c0798]                           dc.w $ffff
[000c079a]                           dc.b $00
[000c079b]                           dc.b $18
[000c079c]                           dc.b $00
[000c079d]                           dc.b $08
[000c079e]                           dc.b $00
[000c079f]                           dc.b $00
[000c07a0] 000c05a4                  dc.l A_BOXED03
[000c07a4]                           dc.b $00
[000c07a5]                           dc.b $00
[000c07a6]                           dc.b $00
[000c07a7]                           dc.b $04
[000c07a8]                           dc.b $00
[000c07a9]                           dc.b $20
[000c07aa]                           dc.b $00
[000c07ab]                           dc.b $01
_19_ED_AEO:
[000c07ac]                           dc.b $00
[000c07ad]                           dc.b $14
[000c07ae]                           dc.w $ffff
[000c07b0]                           dc.w $ffff
[000c07b2]                           dc.b $00
[000c07b3]                           dc.b $18
[000c07b4]                           dc.b $00
[000c07b5]                           dc.b $08
[000c07b6]                           dc.b $00
[000c07b7]                           dc.b $10
[000c07b8] 000c0564                  dc.l A_BOXED01
[000c07bc]                           dc.b $00
[000c07bd]                           dc.b $09
[000c07be]                           dc.b $00
[000c07bf]                           dc.b $07
[000c07c0]                           dc.b $00
[000c07c1]                           dc.b $0a
[000c07c2]                           dc.b $00
[000c07c3]                           dc.b $01
_20_ED_AEO:
[000c07c4]                           dc.b $00
[000c07c5]                           dc.b $16
[000c07c6]                           dc.w $ffff
[000c07c8]                           dc.w $ffff
[000c07ca]                           dc.b $00
[000c07cb]                           dc.b $18
[000c07cc]                           dc.w $1008
[000c07ce]                           dc.b $00
[000c07cf]                           dc.b $10
[000c07d0] 000c0584                  dc.l A_BOXED02
[000c07d4]                           dc.b $00
[000c07d5]                           dc.b $25
[000c07d6]                           dc.b $00
[000c07d7]                           dc.b $07
[000c07d8]                           dc.b $00
[000c07d9]                           dc.b $02
[000c07da]                           dc.b $00
[000c07db]                           dc.b $01
_20aED_AEO:
[000c07dc]                           dc.b $00
[000c07dd]                           dc.b $00
[000c07de]                           dc.b $00
[000c07df]                           dc.b $00
[000c07e0] 0003154c                  dc.l edao_dragkey
[000c07e4]                           dc.w $8000
[000c07e6]                           dc.b $00
[000c07e7]                           dc.b $00
[000c07e8]                           dc.b $00
[000c07e9]                           dc.b $00
[000c07ea]                           dc.b $00
[000c07eb]                           dc.b $00
[000c07ec]                           dc.b $00
[000c07ed]                           dc.b $00
[000c07ee]                           dc.b $00
[000c07ef]                           dc.b $00
[000c07f0]                           dc.b $00
[000c07f1]                           dc.b $00
[000c07f2]                           dc.b $00
[000c07f3]                           dc.b $00
_22_ED_AEO:
[000c07f4]                           dc.b $00
[000c07f5]                           dc.b $17
[000c07f6]                           dc.w $ffff
[000c07f8]                           dc.w $ffff
[000c07fa]                           dc.b $00
[000c07fb]                           dc.b $15
[000c07fc]                           dc.b $00
[000c07fd]                           dc.b $00
[000c07fe]                           dc.b $00
[000c07ff]                           dc.b $00
[000c0800] 000c04c8                  dc.l TEDINFO_01
[000c0804]                           dc.b $00
[000c0805]                           dc.b $02
[000c0806]                           dc.b $00
[000c0807]                           dc.b $07
[000c0808]                           dc.b $00
[000c0809]                           dc.b $06
[000c080a]                           dc.b $00
[000c080b]                           dc.b $01
_23_ED_AEO:
[000c080c]                           dc.b $00
[000c080d]                           dc.b $18
[000c080e]                           dc.w $ffff
[000c0810]                           dc.w $ffff
[000c0812]                           dc.b $00
[000c0813]                           dc.b $1c
[000c0814]                           dc.b $00
[000c0815]                           dc.b $00
[000c0816]                           dc.b $00
[000c0817]                           dc.b $00
[000c0818] 000c0488                  dc.l TEXT_06
[000c081c]                           dc.b $00
[000c081d]                           dc.b $03
[000c081e]                           dc.b $00
[000c081f]                           dc.b $05
[000c0820]                           dc.b $00
[000c0821]                           dc.b $05
[000c0822]                           dc.b $00
[000c0823]                           dc.b $01
_24_ED_AEO:
[000c0824]                           dc.b $00
[000c0825]                           dc.b $04
[000c0826]                           dc.w $ffff
[000c0828]                           dc.w $ffff
[000c082a]                           dc.b $00
[000c082b]                           dc.b $1c
[000c082c]                           dc.b $00
[000c082d]                           dc.b $05
[000c082e]                           dc.b $00
[000c082f]                           dc.b $00
[000c0830] 000c0494                  dc.l TEXT_136
[000c0834]                           dc.b $00
[000c0835]                           dc.b $19
[000c0836]                           dc.b $00
[000c0837]                           dc.b $07
[000c0838]                           dc.b $00
[000c0839]                           dc.b $0b
[000c083a]                           dc.b $00
[000c083b]                           dc.b $01
_24aED_AEO:
[000c083c] 00031492                  dc.l edao_pal
[000c0840]                           dc.b $00
[000c0841]                           dc.b $00
[000c0842]                           dc.b $00
[000c0843]                           dc.b $00
[000c0844]                           dc.w $8000
[000c0846]                           dc.b $00
[000c0847]                           dc.b $00
[000c0848]                           dc.b $00
[000c0849]                           dc.b $00
[000c084a]                           dc.b $00
[000c084b]                           dc.b $00
[000c084c]                           dc.b $00
[000c084d]                           dc.b $00
[000c084e]                           dc.b $00
[000c084f]                           dc.b $00
[000c0850]                           dc.b $00
[000c0851]                           dc.b $00
[000c0852]                           dc.b $00
[000c0853]                           dc.b $00
_26_ED_AEO:
[000c0854]                           dc.b $00
[000c0855]                           dc.b $1c
[000c0856]                           dc.w $ffff
[000c0858]                           dc.w $ffff
[000c085a]                           dc.b $00
[000c085b]                           dc.b $18
[000c085c]                           dc.w $4007
[000c085e]                           dc.b $00
[000c085f]                           dc.b $10
[000c0860] 000c04e4                  dc.l A_3DBUTTON01
[000c0864]                           dc.b $00
[000c0865]                           dc.b $09
[000c0866]                           dc.b $00
[000c0867]                           dc.b $0c
[000c0868]                           dc.b $00
[000c0869]                           dc.b $0c
[000c086a]                           dc.b $00
[000c086b]                           dc.b $02
_26aED_AEO:
[000c086c] 000315c8                  dc.l edao_ok
[000c0870]                           dc.b $00
[000c0871]                           dc.b $00
[000c0872]                           dc.b $00
[000c0873]                           dc.b $00
[000c0874]                           dc.w $8000
[000c0876]                           dc.w $884f
[000c0878]                           dc.b $00
[000c0879]                           dc.b $00
[000c087a]                           dc.b $00
[000c087b]                           dc.b $00
[000c087c]                           dc.b $00
[000c087d]                           dc.b $00
[000c087e]                           dc.b $00
[000c087f]                           dc.b $00
[000c0880]                           dc.b $00
[000c0881]                           dc.b $00
[000c0882]                           dc.b $00
[000c0883]                           dc.b $00
_28_ED_AEO:
[000c0884]                           dc.b $00
[000c0885]                           dc.b $00
[000c0886]                           dc.w $ffff
[000c0888]                           dc.w $ffff
[000c088a]                           dc.b $00
[000c088b]                           dc.b $18
[000c088c]                           dc.w $4005
[000c088e]                           dc.b $00
[000c088f]                           dc.b $10
[000c0890] 000c0544                  dc.l A_3DBUTTON04
[000c0894]                           dc.b $00
[000c0895]                           dc.b $17
[000c0896]                           dc.b $00
[000c0897]                           dc.b $0c
[000c0898]                           dc.b $00
[000c0899]                           dc.b $0c
[000c089a]                           dc.b $00
[000c089b]                           dc.b $02
_28aED_AEO:
[000c089c] 0002d91e                  dc.l ed_abort
[000c08a0]                           dc.b $00
[000c08a1]                           dc.b $00
[000c08a2]                           dc.b $00
[000c08a3]                           dc.b $00
[000c08a4]                           dc.w $8020
[000c08a6]                           dc.w $8841
[000c08a8]                           dc.b $00
[000c08a9]                           dc.b $00
[000c08aa]                           dc.b $00
[000c08ab]                           dc.b $00
[000c08ac]                           dc.b $00
[000c08ad]                           dc.b $00
[000c08ae]                           dc.b $00
[000c08af]                           dc.b $00
[000c08b0]                           dc.b $00
[000c08b1]                           dc.b $00
[000c08b2]                           dc.b $00
[000c08b3]                           dc.b $00
sm:
[000c08b4]                           dc.b $00
[000c08b5]                           dc.b $00
[000c08b6]                           dc.b $00
[000c08b7]                           dc.b $00
[000c08b8] 000315c8                  dc.l edao_ok
[000c08bc] 00049b7c                  dc.l Aob_delete
[000c08c0] 000c04b3                  dc.l title
[000c08c4] 000c04a0                  dc.l help_title
[000c08c8]                           dc.b $00
[000c08c9]                           dc.b $00
[000c08ca]                           dc.b $00
[000c08cb]                           dc.b $00
[000c08cc]                           dc.w $2564
[000c08ce]                           dc.b $00
[000c08cf]                           dc.b 'INDEX NAME',0

