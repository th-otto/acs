
del_alert:
[0003268a] 48e7 003c                 movem.l    a2-a5,-(a7)
[0003268e] 2448                      movea.l    a0,a2
[00032690] 2649                      movea.l    a1,a3
[00032692] 006a 0001 0006            ori.w      #$0001,6(a2)
[00032698] 536b 0036                 subq.w     #1,54(a3)
[0003269c] 302b 0036                 move.w     54(a3),d0
[000326a0] 6e36                      bgt.s      del_alert_1
[000326a2] 286b 0012                 movea.l    18(a3),a4
[000326a6] 220c                      move.l     a4,d1
[000326a8] 670c                      beq.s      del_alert_2
[000326aa] 2a6c 0004                 movea.l    4(a4),a5
[000326ae] 204c                      movea.l    a4,a0
[000326b0] 7002                      moveq.l    #2,d0
[000326b2] 93c9                      suba.l     a1,a1
[000326b4] 4e95                      jsr        (a5)
del_alert_2:
[000326b6] 224b                      movea.l    a3,a1
[000326b8] 206a 0024                 movea.l    36(a2),a0
[000326bc] 4eb9 0003 1b00            jsr        del_entry
[000326c2] 224b                      movea.l    a3,a1
[000326c4] 204a                      movea.l    a2,a0
[000326c6] 4eb9 0001 61d4            jsr        objfree
[000326cc] 224b                      movea.l    a3,a1
[000326ce] 7003                      moveq.l    #3,d0
[000326d0] 204a                      movea.l    a2,a0
[000326d2] 4eb9 0003 271c            jsr        serv_alert
del_alert_1:
[000326d8] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[000326dc] 4e75                      rts

copy_alert:
[000326de] 48e7 0038                 movem.l    a2-a4,-(a7)
[000326e2] 2448                      movea.l    a0,a2
[000326e4] 2649                      movea.l    a1,a3
[000326e6] 006a 0001 0006            ori.w      #$0001,6(a2)
[000326ec] 202b 000a                 move.l     10(a3),d0
[000326f0] 4eb9 0001 6230            jsr        objmalloc
[000326f6] 2848                      movea.l    a0,a4
[000326f8] 200c                      move.l     a4,d0
[000326fa] 6604                      bne.s      copy_alert_1
[000326fc] 91c8                      suba.l     a0,a0
[000326fe] 6016                      bra.s      copy_alert_2
copy_alert_1:
[00032700] 226b 0004                 movea.l    4(a3),a1
[00032704] 206c 0004                 movea.l    4(a4),a0
[00032708] 4eb9 0007 6950            jsr        strcpy
[0003270e] 296b 000e 000e            move.l     14(a3),14(a4)
[00032714] 204c                      movea.l    a4,a0
copy_alert_2:
[00032716] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0003271a] 4e75                      rts

serv_alert:
[0003271c] 48e7 1e1e                 movem.l    d3-d6/a3-a6,-(a7)
[00032720] 4fef ff92                 lea.l      -110(a7),a7
[00032724] 2648                      movea.l    a0,a3
[00032726] 2f49 006a                 move.l     a1,106(a7)
[0003272a] 41f9 000c 1a0e            lea.l      $000C1A0E,a0
[00032730] 43ef 0028                 lea.l      40(a7),a1
[00032734] 720f                      moveq.l    #15,d1
serv_alert_1:
[00032736] 22d8                      move.l     (a0)+,(a1)+
[00032738] 51c9 fffc                 dbf        d1,serv_alert_1
[0003273c] 32d8                      move.w     (a0)+,(a1)+
[0003273e] 3200                      move.w     d0,d1
[00032740] 5341                      subq.w     #1,d1
[00032742] 6710                      beq.s      serv_alert_2
[00032744] 5341                      subq.w     #1,d1
[00032746] 6700 008e                 beq        serv_alert_3
[0003274a] 5341                      subq.w     #1,d1
[0003274c] 6700 01bc                 beq        serv_alert_4
[00032750] 6000 0240                 bra        serv_alert_5
serv_alert_2:
[00032754] 4243                      clr.w      d3
[00032756] 6074                      bra.s      serv_alert_6
serv_alert_7:
[00032758] 206f 006a                 movea.l    106(a7),a0
[0003275c] 2f68 0004 002c            move.l     4(a0),44(a7)
[00032762] 2028 000a                 move.l     10(a0),d0
[00032766] 2f40 0032                 move.l     d0,50(a7)
[0003276a] 2f40 0036                 move.l     d0,54(a7)
[0003276e] 43ef 0028                 lea.l      40(a7),a1
[00032772] 204b                      movea.l    a3,a0
[00032774] 6100 ff68                 bsr        copy_alert
[00032778] 2848                      movea.l    a0,a4
[0003277a] 200c                      move.l     a4,d0
[0003277c] 6700 0214                 beq        serv_alert_5
[00032780] 3f03                      move.w     d3,-(a7)
[00032782] 226f 006c                 movea.l    108(a7),a1
[00032786] 4869 0016                 pea.l      22(a1)
[0003278a] 43f9 000c 1a50            lea.l      $000C1A50,a1
[00032790] 41ec 0016                 lea.l      22(a4),a0
[00032794] 4eb9 0007 5680            jsr        sprintf
[0003279a] 5c4f                      addq.w     #6,a7
[0003279c] 42a7                      clr.l      -(a7)
[0003279e] 486c 0016                 pea.l      22(a4)
[000327a2] 224c                      movea.l    a4,a1
[000327a4] 204b                      movea.l    a3,a0
[000327a6] 4eb9 0001 6448            jsr        objname
[000327ac] 504f                      addq.w     #8,a7
[000327ae] 224c                      movea.l    a4,a1
[000327b0] 3003                      move.w     d3,d0
[000327b2] 48c0                      ext.l      d0
[000327b4] e588                      lsl.l      #2,d0
[000327b6] 41f3 0800                 lea.l      0(a3,d0.l),a0
[000327ba] 2068 0202                 movea.l    514(a0),a0
[000327be] 4eb9 0003 1a94            jsr        add_entry
[000327c4] 5240                      addq.w     #1,d0
[000327c6] 6700 01ca                 beq        serv_alert_5
[000327ca] 5243                      addq.w     #1,d3
serv_alert_6:
[000327cc] b67c 0003                 cmp.w      #$0003,d3
[000327d0] 6d86                      blt.s      serv_alert_7
[000327d2] 6000 01c2                 bra        serv_alert_8
serv_alert_3:
[000327d6] 206b 0024                 movea.l    36(a3),a0
[000327da] 2828 000e                 move.l     14(a0),d4
[000327de] e48c                      lsr.l      #2,d4
[000327e0] 226b 0202                 movea.l    514(a3),a1
[000327e4] 2a29 000e                 move.l     14(a1),d5
[000327e8] e48d                      lsr.l      #2,d5
[000327ea] 2c49                      movea.l    a1,a6
[000327ec] 2f6e 0004 0024            move.l     4(a6),36(a7)
[000327f2] 2f68 0004 0020            move.l     4(a0),32(a7)
[000327f8] 4245                      clr.w      d5
[000327fa] 6014                      bra.s      serv_alert_9
serv_alert_10:
[000327fc] 3005                      move.w     d5,d0
[000327fe] 48c0                      ext.l      d0
[00032800] e588                      lsl.l      #2,d0
[00032802] 206f 0020                 movea.l    32(a7),a0
[00032806] 2270 0800                 movea.l    0(a0,d0.l),a1
[0003280a] 4229 0033                 clr.b      51(a1)
[0003280e] 5245                      addq.w     #1,d5
serv_alert_9:
[00032810] b845                      cmp.w      d5,d4
[00032812] 6ee8                      bgt.s      serv_alert_10
[00032814] 4246                      clr.w      d6
[00032816] 6000 0072                 bra.w      serv_alert_11
serv_alert_19:
[0003281a] 4217                      clr.b      (a7)
[0003281c] 701c                      moveq.l    #28,d0
[0003281e] 3206                      move.w     d6,d1
[00032820] 48c1                      ext.l      d1
[00032822] e589                      lsl.l      #2,d1
[00032824] 206f 0024                 movea.l    36(a7),a0
[00032828] 2270 1800                 movea.l    0(a0,d1.l),a1
[0003282c] 43e9 0016                 lea.l      22(a1),a1
[00032830] 41d7                      lea.l      (a7),a0
[00032832] 4eb9 0007 69da            jsr        strncat
[00032838] 2a48                      movea.l    a0,a5
serv_alert_14:
[0003283a] 7001                      moveq.l    #1,d0
[0003283c] 41d7                      lea.l      (a7),a0
[0003283e] 4eb9 0007 68ce            jsr        strchr
[00032844] 2a48                      movea.l    a0,a5
[00032846] 200d                      move.l     a5,d0
[00032848] 670a                      beq.s      serv_alert_12
[0003284a] 0c2d 0001 0002            cmpi.b     #$01,2(a5)
[00032850] 6602                      bne.s      serv_alert_12
[00032852] 4210                      clr.b      (a0)
serv_alert_12:
[00032854] 200d                      move.l     a5,d0
[00032856] 6704                      beq.s      serv_alert_13
[00032858] 1215                      move.b     (a5),d1
[0003285a] 66de                      bne.s      serv_alert_14
serv_alert_13:
[0003285c] 4243                      clr.w      d3
[0003285e] 6020                      bra.s      serv_alert_15
serv_alert_17:
[00032860] 43d7                      lea.l      (a7),a1
[00032862] 3003                      move.w     d3,d0
[00032864] 48c0                      ext.l      d0
[00032866] e588                      lsl.l      #2,d0
[00032868] 206f 0020                 movea.l    32(a7),a0
[0003286c] 2070 0800                 movea.l    0(a0,d0.l),a0
[00032870] 41e8 0016                 lea.l      22(a0),a0
[00032874] 4eb9 0007 68fe            jsr        strcmp
[0003287a] 4a40                      tst.w      d0
[0003287c] 6706                      beq.s      serv_alert_16
[0003287e] 5243                      addq.w     #1,d3
serv_alert_15:
[00032880] b843                      cmp.w      d3,d4
[00032882] 6edc                      bgt.s      serv_alert_17
serv_alert_16:
[00032884] b843                      cmp.w      d3,d4
[00032886] 6708                      beq.s      serv_alert_18
[00032888] 5246                      addq.w     #1,d6
serv_alert_11:
[0003288a] ba46                      cmp.w      d6,d5
[0003288c] 6e00 ff8c                 bgt.w      serv_alert_19
serv_alert_18:
[00032890] ba46                      cmp.w      d6,d5
[00032892] 6f00 0102                 ble        serv_alert_8
[00032896] 4243                      clr.w      d3
[00032898] 6066                      bra.s      serv_alert_20
serv_alert_21:
[0003289a] 3003                      move.w     d3,d0
[0003289c] 48c0                      ext.l      d0
[0003289e] e588                      lsl.l      #2,d0
[000328a0] 41f3 0800                 lea.l      0(a3,d0.l),a0
[000328a4] 2c68 0202                 movea.l    514(a0),a6
[000328a8] 2f6e 0004 0024            move.l     4(a6),36(a7)
[000328ae] 3206                      move.w     d6,d1
[000328b0] 48c1                      ext.l      d1
[000328b2] e589                      lsl.l      #2,d1
[000328b4] 226f 0024                 movea.l    36(a7),a1
[000328b8] 2a71 1800                 movea.l    0(a1,d1.l),a5
[000328bc] 3f03                      move.w     d3,-(a7)
[000328be] 206f 006c                 movea.l    108(a7),a0
[000328c2] 4868 0016                 pea.l      22(a0)
[000328c6] 43f9 000c 1a50            lea.l      $000C1A50,a1
[000328cc] 41ed 0016                 lea.l      22(a5),a0
[000328d0] 4eb9 0007 5680            jsr        sprintf
[000328d6] 5c4f                      addq.w     #6,a7
[000328d8] 42a7                      clr.l      -(a7)
[000328da] 486d 0016                 pea.l      22(a5)
[000328de] 224d                      movea.l    a5,a1
[000328e0] 204b                      movea.l    a3,a0
[000328e2] 4eb9 0001 6448            jsr        objname
[000328e8] 504f                      addq.w     #8,a7
[000328ea] 224d                      movea.l    a5,a1
[000328ec] 204e                      movea.l    a6,a0
[000328ee] 4eb9 0003 1b00            jsr        del_entry
[000328f4] 224d                      movea.l    a5,a1
[000328f6] 204e                      movea.l    a6,a0
[000328f8] 4eb9 0003 1a94            jsr        add_entry
[000328fe] 5243                      addq.w     #1,d3
serv_alert_20:
[00032900] b67c 0003                 cmp.w      #$0003,d3
[00032904] 6d94                      blt.s      serv_alert_21
[00032906] 6000 008e                 bra        serv_alert_8
serv_alert_4:
[0003290a] 4243                      clr.w      d3
[0003290c] 6000 007a                 bra.w      serv_alert_22
serv_alert_27:
[00032910] 3003                      move.w     d3,d0
[00032912] 48c0                      ext.l      d0
[00032914] e588                      lsl.l      #2,d0
[00032916] 41f3 0800                 lea.l      0(a3,d0.l),a0
[0003291a] 2268 0202                 movea.l    514(a0),a1
[0003291e] 2a29 000e                 move.l     14(a1),d5
[00032922] e48d                      lsr.l      #2,d5
[00032924] 2c49                      movea.l    a1,a6
[00032926] 2f6e 0004 0024            move.l     4(a6),36(a7)
[0003292c] 3f03                      move.w     d3,-(a7)
[0003292e] 2a6f 006c                 movea.l    108(a7),a5
[00032932] 486d 0016                 pea.l      22(a5)
[00032936] 43f9 000c 1a50            lea.l      $000C1A50,a1
[0003293c] 41ef 0006                 lea.l      6(a7),a0
[00032940] 4eb9 0007 5680            jsr        sprintf
[00032946] 5c4f                      addq.w     #6,a7
[00032948] 4246                      clr.w      d6
[0003294a] 6036                      bra.s      serv_alert_23
serv_alert_26:
[0003294c] 3006                      move.w     d6,d0
[0003294e] 48c0                      ext.l      d0
[00032950] e588                      lsl.l      #2,d0
[00032952] 206f 0024                 movea.l    36(a7),a0
[00032956] 2870 0800                 movea.l    0(a0,d0.l),a4
[0003295a] 43ec 0016                 lea.l      22(a4),a1
[0003295e] 41d7                      lea.l      (a7),a0
[00032960] 4eb9 0007 68fe            jsr        strcmp
[00032966] 4a40                      tst.w      d0
[00032968] 6616                      bne.s      serv_alert_24
[0003296a] 224c                      movea.l    a4,a1
[0003296c] 204e                      movea.l    a6,a0
[0003296e] 4eb9 0003 1b00            jsr        del_entry
[00032974] 224c                      movea.l    a4,a1
[00032976] 204b                      movea.l    a3,a0
[00032978] 4eb9 0001 61d4            jsr        objfree
[0003297e] 6006                      bra.s      serv_alert_25
serv_alert_24:
[00032980] 5246                      addq.w     #1,d6
serv_alert_23:
[00032982] ba46                      cmp.w      d6,d5
[00032984] 6ec6                      bgt.s      serv_alert_26
serv_alert_25:
[00032986] 5243                      addq.w     #1,d3
serv_alert_22:
[00032988] b67c 0003                 cmp.w      #$0003,d3
[0003298c] 6d00 ff82                 blt.w      serv_alert_27
[00032990] 6004                      bra.s      serv_alert_8
serv_alert_5:
[00032992] 4240                      clr.w      d0
[00032994] 6002                      bra.s      serv_alert_28
serv_alert_8:
[00032996] 7001                      moveq.l    #1,d0
serv_alert_28:
[00032998] 4fef 006e                 lea.l      110(a7),a7
[0003299c] 4cdf 7878                 movem.l    (a7)+,d3-d6/a3-a6
[000329a0] 4e75                      rts

new_work:
[000329a2] 303c 271e                 move.w     #$271E,d0
[000329a6] 2279 000a 1330            movea.l    $000A1330,a1
[000329ac] 4eb9 0003 24b6            jsr        work_icon
[000329b2] 4e75                      rts

		.data

protoalert:
[000c19a2]                           dc.b $00
[000c19a3]                           dc.b $00
[000c19a4]                           dc.b $00
[000c19a5]                           dc.b $00
[000c19a6] 000c0a24                  dc.l proto_alert
[000c19aa]                           dc.b $00
[000c19ab]                           dc.b $00
[000c19ac]                           dc.b $00
[000c19ad]                           dc.b $00
[000c19ae]                           dc.b $00
[000c19af]                           dc.b $14
[000c19b0]                           dc.b $00
[000c19b1]                           dc.b $00
[000c19b2]                           dc.b $00
[000c19b3]                           dc.b $14
[000c19b4]                           dc.b $00
[000c19b5]                           dc.b $00
[000c19b6]                           dc.b $00
[000c19b7]                           dc.b $00
[000c19b8]                           dc.b 'ALERTBOX_01',0
[000c19c4]                           dc.b $00
[000c19c5]                           dc.b $00
[000c19c6]                           dc.b $00
[000c19c7]                           dc.b $00
[000c19c8]                           dc.b $00
[000c19c9]                           dc.b $00
[000c19ca]                           dc.b $00
[000c19cb]                           dc.b $00
[000c19cc]                           dc.b $00
[000c19cd]                           dc.b $00
[000c19ce]                           dc.b $00
[000c19cf]                           dc.b $00
[000c19d0]                           dc.b $00
[000c19d1]                           dc.b $00
[000c19d2]                           dc.b $00
[000c19d3]                           dc.b $00
[000c19d4]                           dc.b $00
[000c19d5]                           dc.b $00
[000c19d6]                           dc.b $00
[000c19d7]                           dc.b $00
[000c19d8]                           dc.b $00
[000c19d9]                           dc.b $01
[000c19da]                           dc.b $00
[000c19db]                           dc.b $00
[000c19dc]                           dc.b $00
[000c19dd]                           dc.b $00
[000c19de]                           dc.b $00
[000c19df]                           dc.b $00
[000c19e0]                           dc.b $00
[000c19e1]                           dc.b $00
[000c19e2]                           dc.b $00
[000c19e3]                           dc.b $00
list_alert:
[000c19e4]                           dc.b $00
[000c19e5]                           dc.b $00
[000c19e6]                           dc.b $00
[000c19e7]                           dc.b $00
[000c19e8]                           dc.b $00
[000c19e9]                           dc.b $00
[000c19ea]                           dc.b $00
[000c19eb]                           dc.b $00
[000c19ec] 000a12d6                  dc.l WI_ALERT
[000c19f0] 000c0bb8                  dc.l al_list
[000c19f4] 000c0bc9                  dc.l al_name
[000c19f8]                           dc.w $271e
[000c19fa] 000c19a2                  dc.l protoalert
[000c19fe] 000326de                  dc.l copy_alert
[000c1a02] 0003268a                  dc.l del_alert
[000c1a06] 000329a2                  dc.l new_work
[000c1a0a] 0003271c                  dc.l serv_alert
[000c1a0e]                           dc.b $00
[000c1a0f]                           dc.b $00
[000c1a10]                           dc.b $00
[000c1a11]                           dc.b $00
[000c1a12]                           dc.b $00
[000c1a13]                           dc.b $00
[000c1a14]                           dc.b $00
[000c1a15]                           dc.b $00
[000c1a16]                           dc.b $00
[000c1a17]                           dc.b $00
[000c1a18]                           dc.b $00
[000c1a19]                           dc.b $00
[000c1a1a]                           dc.b $00
[000c1a1b]                           dc.b $00
[000c1a1c]                           dc.b $00
[000c1a1d]                           dc.b $00
[000c1a1e]                           dc.b $00
[000c1a1f]                           dc.b $00
[000c1a20]                           dc.b $00
[000c1a21]                           dc.b $00
[000c1a22]                           dc.b $00
[000c1a23]                           dc.b $00
xc1a24:
[000c1a24]                           dc.b '                               ',0
[000c1a44]                           dc.b $00
[000c1a45]                           dc.b $01
[000c1a46]                           dc.b $00
[000c1a47]                           dc.b $00
[000c1a48]                           dc.b $00
[000c1a49]                           dc.b $00
[000c1a4a]                           dc.b $00
[000c1a4b]                           dc.b $00
[000c1a4c]                           dc.b $00
[000c1a4d]                           dc.b $00
[000c1a4e]                           dc.b $00
[000c1a4f]                           dc.b $00
xc1a50:
[000c1a50]                           dc.b '%.28s'
[000c1a55]                           dc.b $01
[000c1a56]                           dc.w $2564
[000c1a58]                           dc.w $0100
		.even
