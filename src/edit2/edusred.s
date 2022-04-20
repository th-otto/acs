
editus_ok:
[00021698] 2079 0010 1f12            movea.l    ACSblk,a0
[0002169e] 2068 0258                 movea.l    600(a0),a0
[000216a2] 4eb9 0002 1854            jsr        term
[000216a8] 4e75                      rts

user_make:
[000216aa] 48e7 0038                 movem.l    a2-a4,-(a7)
[000216ae] 594f                      subq.w     #4,a7
[000216b0] 2e88                      move.l     a0,(a7)
[000216b2] 97cb                      suba.l     a3,a3
[000216b4] 2868 0004                 movea.l    4(a0),a4
[000216b8] 246c 0012                 movea.l    18(a4),a2
[000216bc] 200a                      move.l     a2,d0
[000216be] 670c                      beq.s      user_make_1
[000216c0] 204a                      movea.l    a2,a0
[000216c2] 4eb9 0004 f0ca            jsr        Awi_show
[000216c8] 6000 007c                 bra.w      user_make_2
user_make_1:
[000216cc] 7008                      moveq.l    #8,d0
[000216ce] 4eb9 0004 7cc8            jsr        Ax_malloc
[000216d4] 2648                      movea.l    a0,a3
[000216d6] 200b                      move.l     a3,d0
[000216d8] 6768                      beq.s      user_make_3
[000216da] 2257                      movea.l    (a7),a1
[000216dc] 2091                      move.l     (a1),(a0)
[000216de] 2769 0004 0004            move.l     4(a1),4(a3)
[000216e4] 41ec 0016                 lea.l      22(a4),a0
[000216e8] 23c8 000a 6e00            move.l     a0,$000A6E00
[000216ee] 2279 000a 6e0c            movea.l    $000A6E0C,a1
[000216f4] 2348 0008                 move.l     a0,8(a1)
[000216f8] 41f9 000a 6db2            lea.l      WI_USER,a0
[000216fe] 4eb9 0004 f41a            jsr        Awi_create
[00021704] 2448                      movea.l    a0,a2
[00021706] 200a                      move.l     a2,d0
[00021708] 6738                      beq.s      user_make_3
[0002170a] 2257                      movea.l    (a7),a1
[0002170c] 2051                      movea.l    (a1),a0
[0002170e] 4868 0168                 pea.l      360(a0)
[00021712] 43ec 003a                 lea.l      58(a4),a1
[00021716] 204a                      movea.l    a2,a0
[00021718] 4eb9 0001 47a8            jsr        wi_pos
[0002171e] 584f                      addq.w     #4,a7
[00021720] 248b                      move.l     a3,(a2)
[00021722] 294a 0012                 move.l     a2,18(a4)
[00021726] 204a                      movea.l    a2,a0
[00021728] 4eb9 0002 1796            jsr        set_user
[0002172e] 204a                      movea.l    a2,a0
[00021730] 226a 000c                 movea.l    12(a2),a1
[00021734] 4e91                      jsr        (a1)
[00021736] 4a40                      tst.w      d0
[00021738] 670c                      beq.s      user_make_2
[0002173a] 204a                      movea.l    a2,a0
[0002173c] 4eb9 0002 1854            jsr        term
user_make_3:
[00021742] 91c8                      suba.l     a0,a0
[00021744] 6002                      bra.s      user_make_4
user_make_2:
[00021746] 204a                      movea.l    a2,a0
user_make_4:
[00021748] 584f                      addq.w     #4,a7
[0002174a] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0002174e] 4e75                      rts

user_service:
[00021750] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00021754] 2448                      movea.l    a0,a2
[00021756] 3600                      move.w     d0,d3
[00021758] 2849                      movea.l    a1,a4
[0002175a] 2650                      movea.l    (a0),a3
[0002175c] 5540                      subq.w     #2,d0
[0002175e] 6708                      beq.s      user_service_1
[00021760] 907c 270e                 sub.w      #$270E,d0
[00021764] 670c                      beq.s      user_service_2
[00021766] 6018                      bra.s      user_service_3
user_service_1:
[00021768] 204a                      movea.l    a2,a0
[0002176a] 4eb9 0002 1854            jsr        term
[00021770] 601c                      bra.s      user_service_4
user_service_2:
[00021772] 226b 0004                 movea.l    4(a3),a1
[00021776] 204a                      movea.l    a2,a0
[00021778] 4eb9 0001 45a2            jsr        new_name
[0002177e] 600e                      bra.s      user_service_4
user_service_3:
[00021780] 224c                      movea.l    a4,a1
[00021782] 3003                      move.w     d3,d0
[00021784] 204a                      movea.l    a2,a0
[00021786] 4eb9 0005 1276            jsr        Awi_service
[0002178c] 6002                      bra.s      user_service_5
user_service_4:
[0002178e] 7001                      moveq.l    #1,d0
user_service_5:
[00021790] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00021794] 4e75                      rts

set_user:
[00021796] 48e7 0038                 movem.l    a2-a4,-(a7)
[0002179a] 594f                      subq.w     #4,a7
[0002179c] 2250                      movea.l    (a0),a1
[0002179e] 2ea8 0014                 move.l     20(a0),(a7)
[000217a2] 2069 0004                 movea.l    4(a1),a0
[000217a6] 2668 0004                 movea.l    4(a0),a3
[000217aa] 2253                      movea.l    (a3),a1
[000217ac] 43e9 0016                 lea.l      22(a1),a1
[000217b0] 7008                      moveq.l    #8,d0
[000217b2] 2057                      movea.l    (a7),a0
[000217b4] 4eb9 0004 afe0            jsr        Aob_puttext
[000217ba] 226b 0004                 movea.l    4(a3),a1
[000217be] 43e9 0016                 lea.l      22(a1),a1
[000217c2] 7009                      moveq.l    #9,d0
[000217c4] 2057                      movea.l    (a7),a0
[000217c6] 4eb9 0004 afe0            jsr        Aob_puttext
[000217cc] 286b 0008                 movea.l    8(a3),a4
[000217d0] 200c                      move.l     a4,d0
[000217d2] 6706                      beq.s      set_user_1
[000217d4] 45ec 0016                 lea.l      22(a4),a2
[000217d8] 6006                      bra.s      set_user_2
set_user_1:
[000217da] 45f9 000a 6e54            lea.l      $000A6E54,a2
set_user_2:
[000217e0] 224a                      movea.l    a2,a1
[000217e2] 700a                      moveq.l    #10,d0
[000217e4] 2057                      movea.l    (a7),a0
[000217e6] 4eb9 0004 afe0            jsr        Aob_puttext
[000217ec] 286b 000c                 movea.l    12(a3),a4
[000217f0] 200c                      move.l     a4,d0
[000217f2] 6706                      beq.s      set_user_3
[000217f4] 45ec 0016                 lea.l      22(a4),a2
[000217f8] 6006                      bra.s      set_user_4
set_user_3:
[000217fa] 45f9 000a 6e54            lea.l      $000A6E54,a2
set_user_4:
[00021800] 224a                      movea.l    a2,a1
[00021802] 700b                      moveq.l    #11,d0
[00021804] 2057                      movea.l    (a7),a0
[00021806] 4eb9 0004 afe0            jsr        Aob_puttext
[0002180c] 286b 0010                 movea.l    16(a3),a4
[00021810] 200c                      move.l     a4,d0
[00021812] 6706                      beq.s      set_user_5
[00021814] 45ec 0016                 lea.l      22(a4),a2
[00021818] 6006                      bra.s      set_user_6
set_user_5:
[0002181a] 45f9 000a 6e54            lea.l      $000A6E54,a2
set_user_6:
[00021820] 224a                      movea.l    a2,a1
[00021822] 700c                      moveq.l    #12,d0
[00021824] 2057                      movea.l    (a7),a0
[00021826] 4eb9 0004 afe0            jsr        Aob_puttext
[0002182c] 286b 0014                 movea.l    20(a3),a4
[00021830] 200c                      move.l     a4,d0
[00021832] 6706                      beq.s      set_user_7
[00021834] 45ec 0016                 lea.l      22(a4),a2
[00021838] 6006                      bra.s      set_user_8
set_user_7:
[0002183a] 45f9 000a 6e54            lea.l      $000A6E54,a2
set_user_8:
[00021840] 224a                      movea.l    a2,a1
[00021842] 700d                      moveq.l    #13,d0
[00021844] 2057                      movea.l    (a7),a0
[00021846] 4eb9 0004 afe0            jsr        Aob_puttext
[0002184c] 584f                      addq.w     #4,a7
[0002184e] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00021852] 4e75                      rts

term:
[00021854] 2f0a                      move.l     a2,-(a7)
[00021856] 2f0b                      move.l     a3,-(a7)
[00021858] 2448                      movea.l    a0,a2
[0002185a] 006a 0100 0056            ori.w      #$0100,86(a2)
[00021860] 2650                      movea.l    (a0),a3
[00021862] 226b 0004                 movea.l    4(a3),a1
[00021866] 42a9 0012                 clr.l      18(a1)
[0002186a] 302a 0056                 move.w     86(a2),d0
[0002186e] c07c 0800                 and.w      #$0800,d0
[00021872] 6716                      beq.s      term_1
[00021874] 43ea 002c                 lea.l      44(a2),a1
[00021878] 206b 0004                 movea.l    4(a3),a0
[0002187c] 41e8 003a                 lea.l      58(a0),a0
[00021880] 7008                      moveq.l    #8,d0
[00021882] 4eb9 0007 6f44            jsr        memcpy
[00021888] 6014                      bra.s      term_2
term_1:
[0002188a] 7008                      moveq.l    #8,d0
[0002188c] 43ea 0024                 lea.l      36(a2),a1
[00021890] 206b 0004                 movea.l    4(a3),a0
[00021894] 41e8 003a                 lea.l      58(a0),a0
[00021898] 4eb9 0007 6f44            jsr        memcpy
term_2:
[0002189e] 204b                      movea.l    a3,a0
[000218a0] 4eb9 0004 7e26            jsr        Ax_free
[000218a6] 204a                      movea.l    a2,a0
[000218a8] 4eb9 0005 013e            jsr        Awi_closed
[000218ae] 204a                      movea.l    a2,a0
[000218b0] 4eb9 0005 0330            jsr        Awi_delete
[000218b6] 265f                      movea.l    (a7)+,a3
[000218b8] 245f                      movea.l    (a7)+,a2
[000218ba] 4e75                      rts

	.data

TEXT_002:
[000a6536]                           dc.b $00
TEXT_006:
[000a6537]                           dc.b '1234567890123456789012345678901',0
TEXT_01:
[000a6557]                           dc.b 'Code:',0
TEXT_011:
[000a655d]                           dc.b $4f
[000a655e]                           dc.w $4b00
TEXT_02:
[000a6560]                           dc.b 'Parm:',0
TEXT_03:
[000a6566]                           dc.b 'Serv:',0
TEXT_04:
[000a656c]                           dc.b 'Ptr1:',0
TEXT_05:
[000a6572]                           dc.b 'Ptr2:',0
TEXT_06:
[000a6578]                           dc.b 'Ptr3:',0
TEXT_07:
[000a657e]                           dc.b ' Userblk-Editor ',0
TEXT_10:
[000a658f]                           dc.b 'USER-BLOCK',0
DATAS_25:
[000a659a]                           dc.b $00
[000a659b]                           dc.b $00
[000a659c]                           dc.b $00
[000a659d]                           dc.b $00
[000a659e]                           dc.w $02f0
[000a65a0]                           dc.b $00
[000a65a1]                           dc.b $00
[000a65a2]                           dc.b $00
[000a65a3]                           dc.b $00
[000a65a4]                           dc.b $00
[000a65a5]                           dc.b $00
[000a65a6]                           dc.b $00
[000a65a7]                           dc.b $00
[000a65a8]                           dc.b $00
[000a65a9]                           dc.b $00
[000a65aa]                           dc.b $00
[000a65ab]                           dc.b $00
[000a65ac]                           dc.b $00
[000a65ad]                           dc.b $00
[000a65ae]                           dc.b $00
[000a65af]                           dc.b $00
[000a65b0]                           dc.b $00
[000a65b1]                           dc.b $00
[000a65b2]                           dc.b $00
[000a65b3]                           dc.b $00
[000a65b4]                           dc.b $00
[000a65b5]                           dc.b $00
[000a65b6]                           dc.b $00
[000a65b7]                           dc.b $00
[000a65b8]                           dc.b $00
[000a65b9]                           dc.b $00
[000a65ba]                           dc.w $0ffe
[000a65bc]                           dc.b $00
[000a65bd]                           dc.b $00
[000a65be]                           dc.w $03e0
[000a65c0]                           dc.w $0803
[000a65c2]                           dc.b $00
[000a65c3]                           dc.b $00
[000a65c4]                           dc.w $03e0
[000a65c6]                           dc.w $fbfb
[000a65c8]                           dc.w $ffe0
[000a65ca]                           dc.w $03e0
[000a65cc]                           dc.w $f803
[000a65ce]                           dc.w $ffe0
[000a65d0]                           dc.w $03e0
[000a65d2]                           dc.w $ffff
[000a65d4]                           dc.w $ffe0
[000a65d6]                           dc.w $03e0
[000a65d8]                           dc.w $ffff
[000a65da]                           dc.w $ffe0
[000a65dc]                           dc.b $00
[000a65dd]                           dc.b $00
[000a65de]                           dc.w $ffff
[000a65e0]                           dc.w $ffe0
[000a65e2]                           dc.b $00
[000a65e3]                           dc.b $00
[000a65e4]                           dc.w $ffff
[000a65e6]                           dc.w $ffe0
[000a65e8]                           dc.b $00
[000a65e9]                           dc.b $00
[000a65ea]                           dc.w $ffff
[000a65ec]                           dc.w $ffe0
[000a65ee]                           dc.b $00
[000a65ef]                           dc.b $00
[000a65f0]                           dc.w $ffff
[000a65f2]                           dc.w $ffe0
[000a65f4]                           dc.b $00
[000a65f5]                           dc.b $00
[000a65f6]                           dc.w $ffff
[000a65f8]                           dc.w $ffe0
[000a65fa]                           dc.w $01c0
[000a65fc]                           dc.w $ffff
[000a65fe]                           dc.w $ffe0
[000a6600]                           dc.w $03e0
[000a6602]                           dc.w $ffff
[000a6604]                           dc.w $ffe0
[000a6606]                           dc.w $03e0
[000a6608]                           dc.w $ffff
[000a660a]                           dc.w $ffe0
[000a660c]                           dc.w $03e0
[000a660e]                           dc.w $ffff
[000a6610]                           dc.w $ffe0
[000a6612]                           dc.w $01c0
[000a6614]                           dc.b $00
[000a6615]                           dc.b $00
[000a6616]                           dc.b $00
[000a6617]                           dc.b $00
[000a6618]                           dc.b $00
[000a6619]                           dc.b $00
[000a661a]                           dc.w $0402
[000a661c]                           dc.b $00
[000a661d]                           dc.b $00
[000a661e]                           dc.b $00
[000a661f]                           dc.b $00
[000a6620]                           dc.w $0703
[000a6622]                           dc.w $8000
[000a6624]                           dc.b $00
[000a6625]                           dc.b $00
[000a6626]                           dc.w $0402
[000a6628]                           dc.b $00
[000a6629]                           dc.b $00
[000a662a]                           dc.b $00
[000a662b]                           dc.b $00
[000a662c]                           dc.w $0402
[000a662e]                           dc.b $00
[000a662f]                           dc.b $00
[000a6630]                           dc.b $00
[000a6631]                           dc.b $00
[000a6632]                           dc.w $743a
[000a6634]                           dc.b $00
[000a6635]                           dc.b $00
[000a6636]                           dc.b $00
[000a6637]                           dc.b $00
[000a6638]                           dc.w $f87c
[000a663a]                           dc.b $00
[000a663b]                           dc.b $00
[000a663c]                           dc.b $00
[000a663d]                           dc.b $00
[000a663e]                           dc.w $7038
[000a6640]                           dc.b $00
[000a6641]                           dc.b $00
[000a6642]                           dc.b $00
[000a6643]                           dc.b $00
[000a6644]                           dc.b $00
[000a6645]                           dc.b $00
[000a6646]                           dc.b $00
[000a6647]                           dc.b $00
[000a6648]                           dc.b $00
[000a6649]                           dc.b $00
[000a664a]                           dc.b $00
[000a664b]                           dc.b $00
[000a664c]                           dc.b $00
[000a664d]                           dc.b $00
[000a664e]                           dc.b $00
[000a664f]                           dc.b $00
[000a6650]                           dc.b $00
[000a6651]                           dc.b $00
[000a6652]                           dc.b $00
[000a6653]                           dc.b $00
[000a6654]                           dc.b $00
[000a6655]                           dc.b $00
[000a6656]                           dc.b $00
[000a6657]                           dc.b $00
[000a6658]                           dc.b $00
[000a6659]                           dc.b $00
[000a665a]                           dc.b $00
[000a665b]                           dc.b $00
[000a665c]                           dc.b $00
[000a665d]                           dc.b $00
[000a665e]                           dc.b $00
[000a665f]                           dc.b $00
[000a6660]                           dc.b $00
[000a6661]                           dc.b $00
[000a6662]                           dc.b $00
[000a6663]                           dc.b $00
[000a6664]                           dc.b $00
[000a6665]                           dc.b $00
[000a6666]                           dc.b $00
[000a6667]                           dc.b $00
[000a6668]                           dc.b $00
[000a6669]                           dc.b $00
[000a666a]                           dc.b $00
[000a666b]                           dc.b $00
[000a666c]                           dc.b $00
[000a666d]                           dc.b $00
[000a666e]                           dc.b $00
[000a666f]                           dc.b $00
[000a6670]                           dc.b $00
[000a6671]                           dc.b $00
[000a6672]                           dc.b $00
[000a6673]                           dc.b $00
[000a6674]                           dc.w $0ffe
[000a6676]                           dc.b $00
[000a6677]                           dc.b $00
[000a6678]                           dc.w $03e0
[000a667a]                           dc.w $0803
[000a667c]                           dc.b $00
[000a667d]                           dc.b $00
[000a667e]                           dc.w $03e0
[000a6680]                           dc.w $fbfb
[000a6682]                           dc.w $ffe0
[000a6684]                           dc.w $03e0
[000a6686]                           dc.w $f803
[000a6688]                           dc.w $ffe0
[000a668a]                           dc.w $03e0
[000a668c]                           dc.w $ffff
[000a668e]                           dc.w $ffe0
[000a6690]                           dc.w $03e0
[000a6692]                           dc.w $ffff
[000a6694]                           dc.w $ffe0
[000a6696]                           dc.b $00
[000a6697]                           dc.b $00
[000a6698]                           dc.w $ffff
[000a669a]                           dc.w $ffe0
[000a669c]                           dc.b $00
[000a669d]                           dc.b $00
[000a669e]                           dc.w $ffff
[000a66a0]                           dc.w $ffe0
[000a66a2]                           dc.b $00
[000a66a3]                           dc.b $00
[000a66a4]                           dc.w $ffff
[000a66a6]                           dc.w $ffe0
[000a66a8]                           dc.b $00
[000a66a9]                           dc.b $00
[000a66aa]                           dc.w $ffff
[000a66ac]                           dc.w $ffe0
[000a66ae]                           dc.b $00
[000a66af]                           dc.b $00
[000a66b0]                           dc.w $ffff
[000a66b2]                           dc.w $ffe0
[000a66b4]                           dc.w $01c0
[000a66b6]                           dc.w $ffff
[000a66b8]                           dc.w $ffe0
[000a66ba]                           dc.w $03e0
[000a66bc]                           dc.w $ffff
[000a66be]                           dc.w $ffe0
[000a66c0]                           dc.w $03e0
[000a66c2]                           dc.w $ffff
[000a66c4]                           dc.w $ffe0
[000a66c6]                           dc.w $03e0
[000a66c8]                           dc.w $ffff
[000a66ca]                           dc.w $ffe0
[000a66cc]                           dc.w $01c0
[000a66ce]                           dc.b $00
[000a66cf]                           dc.b $00
[000a66d0]                           dc.b $00
[000a66d1]                           dc.b $00
[000a66d2]                           dc.b $00
[000a66d3]                           dc.b $00
[000a66d4]                           dc.w $0402
[000a66d6]                           dc.b $00
[000a66d7]                           dc.b $00
[000a66d8]                           dc.b $00
[000a66d9]                           dc.b $00
[000a66da]                           dc.w $0703
[000a66dc]                           dc.w $8000
[000a66de]                           dc.b $00
[000a66df]                           dc.b $00
[000a66e0]                           dc.w $0402
[000a66e2]                           dc.b $00
[000a66e3]                           dc.b $00
[000a66e4]                           dc.b $00
[000a66e5]                           dc.b $00
[000a66e6]                           dc.w $0402
[000a66e8]                           dc.b $00
[000a66e9]                           dc.b $00
[000a66ea]                           dc.b $00
[000a66eb]                           dc.b $00
[000a66ec]                           dc.w $743a
[000a66ee]                           dc.b $00
[000a66ef]                           dc.b $00
[000a66f0]                           dc.b $00
[000a66f1]                           dc.b $00
[000a66f2]                           dc.w $f87c
[000a66f4]                           dc.b $00
[000a66f5]                           dc.b $00
[000a66f6]                           dc.b $00
[000a66f7]                           dc.b $00
[000a66f8]                           dc.w $7038
[000a66fa]                           dc.b $00
[000a66fb]                           dc.b $00
[000a66fc]                           dc.b $00
[000a66fd]                           dc.b $00
[000a66fe]                           dc.b $00
[000a66ff]                           dc.b $00
[000a6700]                           dc.b $00
[000a6701]                           dc.b $00
[000a6702]                           dc.b $00
[000a6703]                           dc.b $00
[000a6704]                           dc.b $00
[000a6705]                           dc.b $00
[000a6706]                           dc.b $00
[000a6707]                           dc.b $00
[000a6708]                           dc.b $00
[000a6709]                           dc.b $00
[000a670a]                           dc.b $00
[000a670b]                           dc.b $00
[000a670c]                           dc.b $00
[000a670d]                           dc.b $00
[000a670e]                           dc.b $00
[000a670f]                           dc.b $00
[000a6710]                           dc.b $00
[000a6711]                           dc.b $00
[000a6712]                           dc.b $00
[000a6713]                           dc.b $00
[000a6714]                           dc.b $00
[000a6715]                           dc.b $00
[000a6716]                           dc.b $00
[000a6717]                           dc.b $00
[000a6718]                           dc.b $00
[000a6719]                           dc.b $00
[000a671a]                           dc.b $00
[000a671b]                           dc.b $00
[000a671c]                           dc.b $00
[000a671d]                           dc.b $00
[000a671e]                           dc.b $00
[000a671f]                           dc.b $00
[000a6720]                           dc.b $00
[000a6721]                           dc.b $00
[000a6722]                           dc.b $00
[000a6723]                           dc.b $00
[000a6724]                           dc.b $00
[000a6725]                           dc.b $00
[000a6726]                           dc.b $00
[000a6727]                           dc.b $00
[000a6728]                           dc.b $00
[000a6729]                           dc.b $00
[000a672a]                           dc.b $00
[000a672b]                           dc.b $00
[000a672c]                           dc.b $00
[000a672d]                           dc.b $00
[000a672e]                           dc.w $0ffe
[000a6730]                           dc.b $00
[000a6731]                           dc.b $00
[000a6732]                           dc.w $03e0
[000a6734]                           dc.w $0803
[000a6736]                           dc.b $00
[000a6737]                           dc.b $00
[000a6738]                           dc.w $03e0
[000a673a]                           dc.w $fbfb
[000a673c]                           dc.w $ffe0
[000a673e]                           dc.w $03e0
[000a6740]                           dc.w $f803
[000a6742]                           dc.w $ffe0
[000a6744]                           dc.w $03e0
[000a6746]                           dc.w $ffff
[000a6748]                           dc.w $ffe0
[000a674a]                           dc.w $03e0
[000a674c]                           dc.w $ffff
[000a674e]                           dc.w $ffe0
[000a6750]                           dc.b $00
[000a6751]                           dc.b $00
[000a6752]                           dc.w $ffff
[000a6754]                           dc.w $ffe0
[000a6756]                           dc.b $00
[000a6757]                           dc.b $00
[000a6758]                           dc.w $ffff
[000a675a]                           dc.w $ffe0
[000a675c]                           dc.b $00
[000a675d]                           dc.b $00
[000a675e]                           dc.w $ffff
[000a6760]                           dc.w $ffe0
[000a6762]                           dc.b $00
[000a6763]                           dc.b $00
[000a6764]                           dc.w $ffff
[000a6766]                           dc.w $ffe0
[000a6768]                           dc.b $00
[000a6769]                           dc.b $00
[000a676a]                           dc.w $ffff
[000a676c]                           dc.w $ffe0
[000a676e]                           dc.w $01c0
[000a6770]                           dc.w $ffff
[000a6772]                           dc.w $ffe0
[000a6774]                           dc.w $03e0
[000a6776]                           dc.w $ffff
[000a6778]                           dc.w $ffe0
[000a677a]                           dc.w $03e0
[000a677c]                           dc.w $ffff
[000a677e]                           dc.w $ffe0
[000a6780]                           dc.w $03e0
[000a6782]                           dc.w $ffff
[000a6784]                           dc.w $ffe0
[000a6786]                           dc.w $01c0
[000a6788]                           dc.b $00
[000a6789]                           dc.b $00
[000a678a]                           dc.b $00
[000a678b]                           dc.b $00
[000a678c]                           dc.b $00
[000a678d]                           dc.b $00
[000a678e]                           dc.w $0402
[000a6790]                           dc.b $00
[000a6791]                           dc.b $00
[000a6792]                           dc.b $00
[000a6793]                           dc.b $00
[000a6794]                           dc.w $0703
[000a6796]                           dc.w $8000
[000a6798]                           dc.b $00
[000a6799]                           dc.b $00
[000a679a]                           dc.w $0402
[000a679c]                           dc.b $00
[000a679d]                           dc.b $00
[000a679e]                           dc.b $00
[000a679f]                           dc.b $00
[000a67a0]                           dc.w $0402
[000a67a2]                           dc.b $00
[000a67a3]                           dc.b $00
[000a67a4]                           dc.b $00
[000a67a5]                           dc.b $00
[000a67a6]                           dc.w $743a
[000a67a8]                           dc.b $00
[000a67a9]                           dc.b $00
[000a67aa]                           dc.b $00
[000a67ab]                           dc.b $00
[000a67ac]                           dc.w $f87c
[000a67ae]                           dc.b $00
[000a67af]                           dc.b $00
[000a67b0]                           dc.b $00
[000a67b1]                           dc.b $00
[000a67b2]                           dc.w $7038
[000a67b4]                           dc.b $00
[000a67b5]                           dc.b $00
[000a67b6]                           dc.b $00
[000a67b7]                           dc.b $00
[000a67b8]                           dc.b $00
[000a67b9]                           dc.b $00
[000a67ba]                           dc.b $00
[000a67bb]                           dc.b $00
[000a67bc]                           dc.b $00
[000a67bd]                           dc.b $00
[000a67be]                           dc.b $00
[000a67bf]                           dc.b $00
[000a67c0]                           dc.b $00
[000a67c1]                           dc.b $00
[000a67c2]                           dc.b $00
[000a67c3]                           dc.b $00
[000a67c4]                           dc.b $00
[000a67c5]                           dc.b $00
[000a67c6]                           dc.b $00
[000a67c7]                           dc.b $00
[000a67c8]                           dc.b $00
[000a67c9]                           dc.b $00
[000a67ca]                           dc.b $00
[000a67cb]                           dc.b $00
[000a67cc]                           dc.b $00
[000a67cd]                           dc.b $00
[000a67ce]                           dc.b $00
[000a67cf]                           dc.b $00
[000a67d0]                           dc.b $00
[000a67d1]                           dc.b $00
[000a67d2]                           dc.b $00
[000a67d3]                           dc.b $00
[000a67d4]                           dc.b $00
[000a67d5]                           dc.b $00
[000a67d6]                           dc.b $00
[000a67d7]                           dc.b $00
[000a67d8]                           dc.b $00
[000a67d9]                           dc.b $00
[000a67da]                           dc.b $00
[000a67db]                           dc.b $00
[000a67dc]                           dc.b $00
[000a67dd]                           dc.b $00
[000a67de]                           dc.b $00
[000a67df]                           dc.b $00
[000a67e0]                           dc.b $00
[000a67e1]                           dc.b $00
[000a67e2]                           dc.b $00
[000a67e3]                           dc.b $00
[000a67e4]                           dc.b $00
[000a67e5]                           dc.b $00
[000a67e6]                           dc.w $07f0
[000a67e8]                           dc.w $0ffe
[000a67ea]                           dc.b $00
[000a67eb]                           dc.b $00
[000a67ec]                           dc.w $0410
[000a67ee]                           dc.w $0803
[000a67f0]                           dc.b $00
[000a67f1]                           dc.b $00
[000a67f2]                           dc.w $0550
[000a67f4]                           dc.w $fbfb
[000a67f6]                           dc.w $ffe0
[000a67f8]                           dc.w $0490
[000a67fa]                           dc.w $8803
[000a67fc]                           dc.b $00
[000a67fd]                           dc.b $20
[000a67fe]                           dc.w $0550
[000a6800]                           dc.w $8fff
[000a6802]                           dc.b $00
[000a6803]                           dc.b $20
[000a6804]                           dc.w $0410
[000a6806]                           dc.w $87ff
[000a6808]                           dc.b $00
[000a6809]                           dc.b $20
[000a680a]                           dc.w $07f0
[000a680c]                           dc.w $8000
[000a680e]                           dc.b $00
[000a680f]                           dc.b $20
[000a6810]                           dc.b $00
[000a6811]                           dc.b $00
[000a6812]                           dc.w $8000
[000a6814]                           dc.b $00
[000a6815]                           dc.b $20
[000a6816]                           dc.b $00
[000a6817]                           dc.b $00
[000a6818]                           dc.w $8000
[000a681a]                           dc.b $00
[000a681b]                           dc.b $20
[000a681c]                           dc.b $00
[000a681d]                           dc.b $00
[000a681e]                           dc.w $8000
[000a6820]                           dc.b $00
[000a6821]                           dc.b $20
[000a6822]                           dc.w $01c0
[000a6824]                           dc.w $8000
[000a6826]                           dc.b $00
[000a6827]                           dc.b $20
[000a6828]                           dc.w $0220
[000a682a]                           dc.w $8000
[000a682c]                           dc.b $00
[000a682d]                           dc.b $20
[000a682e]                           dc.w $0490
[000a6830]                           dc.w $8000
[000a6832]                           dc.b $00
[000a6833]                           dc.b $20
[000a6834]                           dc.w $05d0
[000a6836]                           dc.w $8000
[000a6838]                           dc.b $00
[000a6839]                           dc.b $20
[000a683a]                           dc.w $0490
[000a683c]                           dc.w $ffff
[000a683e]                           dc.w $ffe0
[000a6840]                           dc.w $0220
[000a6842]                           dc.b $00
[000a6843]                           dc.b $00
[000a6844]                           dc.b $00
[000a6845]                           dc.b $00
[000a6846]                           dc.w $01c0
[000a6848]                           dc.w $0402
[000a684a]                           dc.b $00
[000a684b]                           dc.b $00
[000a684c]                           dc.b $00
[000a684d]                           dc.b $00
[000a684e]                           dc.w $0703
[000a6850]                           dc.w $8000
[000a6852]                           dc.b $00
[000a6853]                           dc.b $00
[000a6854]                           dc.w $0402
[000a6856]                           dc.b $00
[000a6857]                           dc.b $00
[000a6858]                           dc.b $00
[000a6859]                           dc.b $00
[000a685a]                           dc.w $0402
[000a685c]                           dc.b $00
[000a685d]                           dc.b $00
[000a685e]                           dc.b $00
[000a685f]                           dc.b $00
[000a6860]                           dc.w $743a
[000a6862]                           dc.b $00
[000a6863]                           dc.b $00
[000a6864]                           dc.b $00
[000a6865]                           dc.b $00
[000a6866]                           dc.w $f87c
[000a6868]                           dc.b $00
[000a6869]                           dc.b $00
[000a686a]                           dc.b $00
[000a686b]                           dc.b $00
[000a686c]                           dc.w $7038
[000a686e]                           dc.b $00
[000a686f]                           dc.b $00
[000a6870]                           dc.b $00
[000a6871]                           dc.b $00
[000a6872]                           dc.b $00
[000a6873]                           dc.b $00
[000a6874]                           dc.b $00
[000a6875]                           dc.b $00
[000a6876]                           dc.b $00
[000a6877]                           dc.b $00
[000a6878]                           dc.b $00
[000a6879]                           dc.b $00
[000a687a]                           dc.b $00
[000a687b]                           dc.b $00
[000a687c]                           dc.b $00
[000a687d]                           dc.b $00
[000a687e]                           dc.b $00
[000a687f]                           dc.b $00
[000a6880]                           dc.b $00
[000a6881]                           dc.b $00
[000a6882]                           dc.b $00
[000a6883]                           dc.b $00
[000a6884]                           dc.b $00
[000a6885]                           dc.b $00
[000a6886]                           dc.b $00
[000a6887]                           dc.b $00
DATAS_26:
[000a6888]                           dc.b $00
[000a6889]                           dc.b $00
[000a688a]                           dc.b $00
[000a688b]                           dc.b $00
[000a688c]                           dc.b $00
[000a688d]                           dc.b $00
[000a688e]                           dc.b $00
[000a688f]                           dc.b $00
[000a6890]                           dc.b $00
[000a6891]                           dc.b $00
[000a6892]                           dc.b $00
[000a6893]                           dc.b $00
[000a6894]                           dc.b $00
[000a6895]                           dc.b $00
[000a6896]                           dc.b $00
[000a6897]                           dc.b $00
[000a6898]                           dc.b $00
[000a6899]                           dc.b $00
[000a689a]                           dc.b $00
[000a689b]                           dc.b $00
[000a689c]                           dc.b $00
[000a689d]                           dc.b $00
[000a689e]                           dc.b $00
[000a689f]                           dc.b $00
[000a68a0]                           dc.w $07f0
[000a68a2]                           dc.w $0ffe
[000a68a4]                           dc.b $00
[000a68a5]                           dc.b $00
[000a68a6]                           dc.w $07f0
[000a68a8]                           dc.w $0fff
[000a68aa]                           dc.b $00
[000a68ab]                           dc.b $00
[000a68ac]                           dc.w $07f0
[000a68ae]                           dc.w $ffff
[000a68b0]                           dc.w $ffe0
[000a68b2]                           dc.w $07f0
[000a68b4]                           dc.w $ffff
[000a68b6]                           dc.w $ffe0
[000a68b8]                           dc.w $07f0
[000a68ba]                           dc.w $ffff
[000a68bc]                           dc.w $ffe0
[000a68be]                           dc.w $07f0
[000a68c0]                           dc.w $ffff
[000a68c2]                           dc.w $ffe0
[000a68c4]                           dc.w $07f0
[000a68c6]                           dc.w $ffff
[000a68c8]                           dc.w $ffe0
[000a68ca]                           dc.b $00
[000a68cb]                           dc.b $00
[000a68cc]                           dc.w $ffff
[000a68ce]                           dc.w $ffe0
[000a68d0]                           dc.b $00
[000a68d1]                           dc.b $00
[000a68d2]                           dc.w $ffff
[000a68d4]                           dc.w $ffe0
[000a68d6]                           dc.b $00
[000a68d7]                           dc.b $00
[000a68d8]                           dc.w $ffff
[000a68da]                           dc.w $ffe0
[000a68dc]                           dc.w $01c0
[000a68de]                           dc.w $ffff
[000a68e0]                           dc.w $ffe0
[000a68e2]                           dc.w $03e0
[000a68e4]                           dc.w $ffff
[000a68e6]                           dc.w $ffe0
[000a68e8]                           dc.w $07f0
[000a68ea]                           dc.w $ffff
[000a68ec]                           dc.w $ffe0
[000a68ee]                           dc.w $07f0
[000a68f0]                           dc.w $ffff
[000a68f2]                           dc.w $ffe0
[000a68f4]                           dc.w $07f0
[000a68f6]                           dc.w $ffff
[000a68f8]                           dc.w $ffe0
[000a68fa]                           dc.w $03e0
[000a68fc]                           dc.w $0402
[000a68fe]                           dc.b $00
[000a68ff]                           dc.b $00
[000a6900]                           dc.w $01c0
[000a6902]                           dc.w $0f07
[000a6904]                           dc.w $8000
[000a6906]                           dc.b $00
[000a6907]                           dc.b $00
[000a6908]                           dc.w $0f87
[000a690a]                           dc.w $c000
[000a690c]                           dc.b $00
[000a690d]                           dc.b $00
[000a690e]                           dc.w $0f07
[000a6910]                           dc.w $8000
[000a6912]                           dc.b $00
[000a6913]                           dc.b $00
[000a6914]                           dc.w $7e3f
[000a6916]                           dc.b $00
[000a6917]                           dc.b $00
[000a6918]                           dc.b $00
[000a6919]                           dc.b $00
[000a691a]                           dc.w $fe7f
[000a691c]                           dc.b $00
[000a691d]                           dc.b $00
[000a691e]                           dc.b $00
[000a691f]                           dc.b $01
[000a6920]                           dc.w $fcfe
[000a6922]                           dc.b $00
[000a6923]                           dc.b $00
[000a6924]                           dc.b $00
[000a6925]                           dc.b $00
[000a6926]                           dc.w $f87c
[000a6928]                           dc.b $00
[000a6929]                           dc.b $00
[000a692a]                           dc.b $00
[000a692b]                           dc.b $00
[000a692c]                           dc.w $7038
[000a692e]                           dc.b $00
[000a692f]                           dc.b $00
[000a6930]                           dc.b $00
[000a6931]                           dc.b $00
[000a6932]                           dc.b $00
[000a6933]                           dc.b $00
[000a6934]                           dc.b $00
[000a6935]                           dc.b $00
[000a6936]                           dc.b $00
[000a6937]                           dc.b $00
[000a6938]                           dc.b $00
[000a6939]                           dc.b $00
[000a693a]                           dc.b $00
[000a693b]                           dc.b $00
[000a693c]                           dc.b $00
[000a693d]                           dc.b $00
[000a693e]                           dc.b $00
[000a693f]                           dc.b $00
[000a6940]                           dc.b $00
[000a6941]                           dc.b $00
TEDINFO_01:
[000a6942] 000a6557                  dc.l TEXT_01
[000a6946] 000a6536                  dc.l TEXT_002
[000a694a] 000a6536                  dc.l TEXT_002
[000a694e]                           dc.b $00
[000a694f]                           dc.b $03
[000a6950]                           dc.b $00
[000a6951]                           dc.b $06
[000a6952]                           dc.b $00
[000a6953]                           dc.b $02
[000a6954]                           dc.w $1100
[000a6956]                           dc.b $00
[000a6957]                           dc.b $00
[000a6958]                           dc.w $ffff
[000a695a]                           dc.b $00
[000a695b]                           dc.b $06
[000a695c]                           dc.b $00
[000a695d]                           dc.b $01
TEDINFO_02:
[000a695e] 000a6560                  dc.l TEXT_02
[000a6962] 000a6536                  dc.l TEXT_002
[000a6966] 000a6536                  dc.l TEXT_002
[000a696a]                           dc.b $00
[000a696b]                           dc.b $03
[000a696c]                           dc.b $00
[000a696d]                           dc.b $06
[000a696e]                           dc.b $00
[000a696f]                           dc.b $02
[000a6970]                           dc.w $1100
[000a6972]                           dc.b $00
[000a6973]                           dc.b $00
[000a6974]                           dc.w $ffff
[000a6976]                           dc.b $00
[000a6977]                           dc.b $06
[000a6978]                           dc.b $00
[000a6979]                           dc.b $01
TEDINFO_03:
[000a697a] 000a6566                  dc.l TEXT_03
[000a697e] 000a6536                  dc.l TEXT_002
[000a6982] 000a6536                  dc.l TEXT_002
[000a6986]                           dc.b $00
[000a6987]                           dc.b $03
[000a6988]                           dc.b $00
[000a6989]                           dc.b $06
[000a698a]                           dc.b $00
[000a698b]                           dc.b $02
[000a698c]                           dc.w $1100
[000a698e]                           dc.b $00
[000a698f]                           dc.b $00
[000a6990]                           dc.w $ffff
[000a6992]                           dc.b $00
[000a6993]                           dc.b $06
[000a6994]                           dc.b $00
[000a6995]                           dc.b $01
TEDINFO_04:
[000a6996] 000a656c                  dc.l TEXT_04
[000a699a] 000a6536                  dc.l TEXT_002
[000a699e] 000a6536                  dc.l TEXT_002
[000a69a2]                           dc.b $00
[000a69a3]                           dc.b $03
[000a69a4]                           dc.b $00
[000a69a5]                           dc.b $06
[000a69a6]                           dc.b $00
[000a69a7]                           dc.b $02
[000a69a8]                           dc.w $1100
[000a69aa]                           dc.b $00
[000a69ab]                           dc.b $00
[000a69ac]                           dc.w $ffff
[000a69ae]                           dc.b $00
[000a69af]                           dc.b $06
[000a69b0]                           dc.b $00
[000a69b1]                           dc.b $01
TEDINFO_05:
[000a69b2] 000a6572                  dc.l TEXT_05
[000a69b6] 000a6536                  dc.l TEXT_002
[000a69ba] 000a6536                  dc.l TEXT_002
[000a69be]                           dc.b $00
[000a69bf]                           dc.b $03
[000a69c0]                           dc.b $00
[000a69c1]                           dc.b $06
[000a69c2]                           dc.b $00
[000a69c3]                           dc.b $02
[000a69c4]                           dc.w $1100
[000a69c6]                           dc.b $00
[000a69c7]                           dc.b $00
[000a69c8]                           dc.w $ffff
[000a69ca]                           dc.b $00
[000a69cb]                           dc.b $06
[000a69cc]                           dc.b $00
[000a69cd]                           dc.b $01
TEDINFO_06:
[000a69ce] 000a6578                  dc.l TEXT_06
[000a69d2] 000a6536                  dc.l TEXT_002
[000a69d6] 000a6536                  dc.l TEXT_002
[000a69da]                           dc.b $00
[000a69db]                           dc.b $03
[000a69dc]                           dc.b $00
[000a69dd]                           dc.b $06
[000a69de]                           dc.b $00
[000a69df]                           dc.b $02
[000a69e0]                           dc.w $1100
[000a69e2]                           dc.b $00
[000a69e3]                           dc.b $00
[000a69e4]                           dc.w $ffff
[000a69e6]                           dc.b $00
[000a69e7]                           dc.b $06
[000a69e8]                           dc.b $00
[000a69e9]                           dc.b $01
TEDI_007:
[000a69ea] 000a6537                  dc.l TEXT_006
[000a69ee] 000a6536                  dc.l TEXT_002
[000a69f2] 000a6536                  dc.l TEXT_002
[000a69f6]                           dc.b $00
[000a69f7]                           dc.b $03
[000a69f8]                           dc.b $00
[000a69f9]                           dc.b $06
[000a69fa]                           dc.b $00
[000a69fb]                           dc.b $00
[000a69fc]                           dc.w $1100
[000a69fe]                           dc.b $00
[000a69ff]                           dc.b $00
[000a6a00]                           dc.b $00
[000a6a01]                           dc.b $00
[000a6a02]                           dc.b $00
[000a6a03]                           dc.b $20
[000a6a04]                           dc.b $00
[000a6a05]                           dc.b $01
TEDI_008:
[000a6a06] 000a6537                  dc.l TEXT_006
[000a6a0a] 000a6536                  dc.l TEXT_002
[000a6a0e] 000a6536                  dc.l TEXT_002
[000a6a12]                           dc.b $00
[000a6a13]                           dc.b $03
[000a6a14]                           dc.b $00
[000a6a15]                           dc.b $06
[000a6a16]                           dc.b $00
[000a6a17]                           dc.b $00
[000a6a18]                           dc.w $1180
[000a6a1a]                           dc.b $00
[000a6a1b]                           dc.b $00
[000a6a1c]                           dc.b $00
[000a6a1d]                           dc.b $00
[000a6a1e]                           dc.b $00
[000a6a1f]                           dc.b $20
[000a6a20]                           dc.b $00
[000a6a21]                           dc.b $01
A_3DBUTTON02:
[000a6a22] 0005a4e2                  dc.l A_3Dbutton
[000a6a26]                           dc.w $21f1
[000a6a28]                           dc.w $01f8
[000a6a2a] 00059318                  dc.l Auo_string
[000a6a2e]                           dc.b $00
[000a6a2f]                           dc.b $00
[000a6a30]                           dc.b $00
[000a6a31]                           dc.b $00
[000a6a32]                           dc.b $00
[000a6a33]                           dc.b $00
[000a6a34]                           dc.b $00
[000a6a35]                           dc.b $00
[000a6a36]                           dc.b $00
[000a6a37]                           dc.b $00
[000a6a38]                           dc.b $00
[000a6a39]                           dc.b $00
[000a6a3a]                           dc.b $00
[000a6a3b]                           dc.b $00
[000a6a3c]                           dc.b $00
[000a6a3d]                           dc.b $00
[000a6a3e]                           dc.b $00
[000a6a3f]                           dc.b $00
[000a6a40]                           dc.b $00
[000a6a41]                           dc.b $00
A_3DBUTTON04:
[000a6a42] 0005a4e2                  dc.l A_3Dbutton
[000a6a46]                           dc.w $29c1
[000a6a48]                           dc.w $0178
[000a6a4a] 00059318                  dc.l Auo_string
[000a6a4e] 000a655d                  dc.l TEXT_011
[000a6a52]                           dc.b $00
[000a6a53]                           dc.b $00
[000a6a54]                           dc.b $00
[000a6a55]                           dc.b $00
[000a6a56]                           dc.b $00
[000a6a57]                           dc.b $00
[000a6a58]                           dc.b $00
[000a6a59]                           dc.b $00
[000a6a5a]                           dc.b $00
[000a6a5b]                           dc.b $00
[000a6a5c]                           dc.b $00
[000a6a5d]                           dc.b $00
[000a6a5e]                           dc.b $00
[000a6a5f]                           dc.b $00
[000a6a60]                           dc.b $00
[000a6a61]                           dc.b $00
A_INNERFRAME02:
[000a6a62] 00059f9c                  dc.l A_innerframe
[000a6a66]                           dc.w $1000
[000a6a68]                           dc.w $8f19
[000a6a6a] 00059318                  dc.l Auo_string
[000a6a6e]                           dc.b $00
[000a6a6f]                           dc.b $00
[000a6a70]                           dc.b $00
[000a6a71]                           dc.b $00
[000a6a72]                           dc.b $00
[000a6a73]                           dc.b $00
[000a6a74]                           dc.b $00
[000a6a75]                           dc.b $00
[000a6a76]                           dc.b $00
[000a6a77]                           dc.b $00
[000a6a78]                           dc.b $00
[000a6a79]                           dc.b $00
[000a6a7a]                           dc.b $00
[000a6a7b]                           dc.b $00
[000a6a7c]                           dc.b $00
[000a6a7d]                           dc.b $00
[000a6a7e]                           dc.b $00
[000a6a7f]                           dc.b $00
[000a6a80]                           dc.b $00
[000a6a81]                           dc.b $00
_C4_IC_USER:
[000a6a82]                           dc.b $00
[000a6a83]                           dc.b $04
[000a6a84] 000a65a0                  dc.l DATAS_25+6
[000a6a88] 000a6888                  dc.l DATAS_26
[000a6a8c]                           dc.b $00
[000a6a8d]                           dc.b $00
[000a6a8e]                           dc.b $00
[000a6a8f]                           dc.b $00
[000a6a90]                           dc.b $00
[000a6a91]                           dc.b $00
[000a6a92]                           dc.b $00
[000a6a93]                           dc.b $00
[000a6a94]                           dc.b $00
[000a6a95]                           dc.b $00
[000a6a96]                           dc.b $00
[000a6a97]                           dc.b $00
_MSK_IC_USER:
[000a6a98]                           dc.b $00
[000a6a99]                           dc.b $00
[000a6a9a]                           dc.b $00
[000a6a9b]                           dc.b $00
[000a6a9c]                           dc.b $00
[000a6a9d]                           dc.b $00
[000a6a9e]                           dc.b $00
[000a6a9f]                           dc.b $00
[000a6aa0]                           dc.b $00
[000a6aa1]                           dc.b $00
[000a6aa2]                           dc.b $00
[000a6aa3]                           dc.b $00
[000a6aa4]                           dc.b $00
[000a6aa5]                           dc.b $00
[000a6aa6]                           dc.b $00
[000a6aa7]                           dc.b $00
[000a6aa8]                           dc.b $00
[000a6aa9]                           dc.b $00
[000a6aaa]                           dc.b $00
[000a6aab]                           dc.b $00
[000a6aac]                           dc.b $00
[000a6aad]                           dc.b $00
[000a6aae]                           dc.b $00
[000a6aaf]                           dc.b $00
[000a6ab0]                           dc.w $07f0
[000a6ab2]                           dc.w $0ffe
[000a6ab4]                           dc.b $00
[000a6ab5]                           dc.b $00
[000a6ab6]                           dc.w $07f0
[000a6ab8]                           dc.w $0fff
[000a6aba]                           dc.b $00
[000a6abb]                           dc.b $00
[000a6abc]                           dc.w $07f0
[000a6abe]                           dc.w $ffff
[000a6ac0]                           dc.w $ffe0
[000a6ac2]                           dc.w $07f0
[000a6ac4]                           dc.w $ffff
[000a6ac6]                           dc.w $ffe0
[000a6ac8]                           dc.w $07f0
[000a6aca]                           dc.w $ffff
[000a6acc]                           dc.w $ffe0
[000a6ace]                           dc.w $07f0
[000a6ad0]                           dc.w $ffff
[000a6ad2]                           dc.w $ffe0
[000a6ad4]                           dc.w $07f0
[000a6ad6]                           dc.w $ffff
[000a6ad8]                           dc.w $ffe0
[000a6ada]                           dc.b $00
[000a6adb]                           dc.b $00
[000a6adc]                           dc.w $ffff
[000a6ade]                           dc.w $ffe0
[000a6ae0]                           dc.b $00
[000a6ae1]                           dc.b $00
[000a6ae2]                           dc.w $ffff
[000a6ae4]                           dc.w $ffe0
[000a6ae6]                           dc.b $00
[000a6ae7]                           dc.b $00
[000a6ae8]                           dc.w $ffff
[000a6aea]                           dc.w $ffe0
[000a6aec]                           dc.w $01c0
[000a6aee]                           dc.w $ffff
[000a6af0]                           dc.w $ffe0
[000a6af2]                           dc.w $03e0
[000a6af4]                           dc.w $ffff
[000a6af6]                           dc.w $ffe0
[000a6af8]                           dc.w $07f0
[000a6afa]                           dc.w $ffff
[000a6afc]                           dc.w $ffe0
[000a6afe]                           dc.w $07f0
[000a6b00]                           dc.w $ffff
[000a6b02]                           dc.w $ffe0
[000a6b04]                           dc.w $07f0
[000a6b06]                           dc.w $ffff
[000a6b08]                           dc.w $ffe0
[000a6b0a]                           dc.w $03e0
[000a6b0c]                           dc.w $0402
[000a6b0e]                           dc.b $00
[000a6b0f]                           dc.b $00
[000a6b10]                           dc.w $01c0
[000a6b12]                           dc.w $0f07
[000a6b14]                           dc.w $8000
[000a6b16]                           dc.b $00
[000a6b17]                           dc.b $00
[000a6b18]                           dc.w $0f87
[000a6b1a]                           dc.w $c000
[000a6b1c]                           dc.b $00
[000a6b1d]                           dc.b $00
[000a6b1e]                           dc.w $0f07
[000a6b20]                           dc.w $8000
[000a6b22]                           dc.b $00
[000a6b23]                           dc.b $00
[000a6b24]                           dc.w $7e3f
[000a6b26]                           dc.b $00
[000a6b27]                           dc.b $00
[000a6b28]                           dc.b $00
[000a6b29]                           dc.b $00
[000a6b2a]                           dc.w $fe7f
[000a6b2c]                           dc.b $00
[000a6b2d]                           dc.b $00
[000a6b2e]                           dc.b $00
[000a6b2f]                           dc.b $01
[000a6b30]                           dc.w $fcfe
[000a6b32]                           dc.b $00
[000a6b33]                           dc.b $00
[000a6b34]                           dc.b $00
[000a6b35]                           dc.b $00
[000a6b36]                           dc.w $f87c
[000a6b38]                           dc.b $00
[000a6b39]                           dc.b $00
[000a6b3a]                           dc.b $00
[000a6b3b]                           dc.b $00
[000a6b3c]                           dc.w $7038
[000a6b3e]                           dc.b $00
[000a6b3f]                           dc.b $00
[000a6b40]                           dc.b $00
[000a6b41]                           dc.b $00
[000a6b42]                           dc.b $00
[000a6b43]                           dc.b $00
[000a6b44]                           dc.b $00
[000a6b45]                           dc.b $00
[000a6b46]                           dc.b $00
[000a6b47]                           dc.b $00
[000a6b48]                           dc.b $00
[000a6b49]                           dc.b $00
[000a6b4a]                           dc.b $00
[000a6b4b]                           dc.b $00
[000a6b4c]                           dc.b $00
[000a6b4d]                           dc.b $00
[000a6b4e]                           dc.b $00
[000a6b4f]                           dc.b $00
[000a6b50]                           dc.b $00
[000a6b51]                           dc.b $00
_DAT_IC_USER:
[000a6b52]                           dc.b $00
[000a6b53]                           dc.b $00
[000a6b54]                           dc.b $00
[000a6b55]                           dc.b $00
[000a6b56]                           dc.b $00
[000a6b57]                           dc.b $00
[000a6b58]                           dc.b $00
[000a6b59]                           dc.b $00
[000a6b5a]                           dc.b $00
[000a6b5b]                           dc.b $00
[000a6b5c]                           dc.b $00
[000a6b5d]                           dc.b $00
[000a6b5e]                           dc.b $00
[000a6b5f]                           dc.b $00
[000a6b60]                           dc.b $00
[000a6b61]                           dc.b $00
[000a6b62]                           dc.b $00
[000a6b63]                           dc.b $00
[000a6b64]                           dc.b $00
[000a6b65]                           dc.b $00
[000a6b66]                           dc.b $00
[000a6b67]                           dc.b $00
[000a6b68]                           dc.b $00
[000a6b69]                           dc.b $00
[000a6b6a]                           dc.w $07f0
[000a6b6c]                           dc.w $0ffe
[000a6b6e]                           dc.b $00
[000a6b6f]                           dc.b $00
[000a6b70]                           dc.w $0630
[000a6b72]                           dc.w $0803
[000a6b74]                           dc.b $00
[000a6b75]                           dc.b $00
[000a6b76]                           dc.w $0550
[000a6b78]                           dc.w $fbfb
[000a6b7a]                           dc.w $ffe0
[000a6b7c]                           dc.w $0490
[000a6b7e]                           dc.w $8803
[000a6b80]                           dc.b $00
[000a6b81]                           dc.b $20
[000a6b82]                           dc.w $0550
[000a6b84]                           dc.w $8fff
[000a6b86]                           dc.b $00
[000a6b87]                           dc.b $20
[000a6b88]                           dc.w $0630
[000a6b8a]                           dc.w $87ff
[000a6b8c]                           dc.b $00
[000a6b8d]                           dc.b $20
[000a6b8e]                           dc.w $07f0
[000a6b90]                           dc.w $8000
[000a6b92]                           dc.b $00
[000a6b93]                           dc.b $20
[000a6b94]                           dc.b $00
[000a6b95]                           dc.b $00
[000a6b96]                           dc.w $8000
[000a6b98]                           dc.b $00
[000a6b99]                           dc.b $20
[000a6b9a]                           dc.b $00
[000a6b9b]                           dc.b $00
[000a6b9c]                           dc.w $8000
[000a6b9e]                           dc.b $00
[000a6b9f]                           dc.b $20
[000a6ba0]                           dc.b $00
[000a6ba1]                           dc.b $00
[000a6ba2]                           dc.w $8000
[000a6ba4]                           dc.b $00
[000a6ba5]                           dc.b $20
[000a6ba6]                           dc.w $01c0
[000a6ba8]                           dc.w $8000
[000a6baa]                           dc.b $00
[000a6bab]                           dc.b $20
[000a6bac]                           dc.w $0220
[000a6bae]                           dc.w $8000
[000a6bb0]                           dc.b $00
[000a6bb1]                           dc.b $20
[000a6bb2]                           dc.w $0490
[000a6bb4]                           dc.w $8000
[000a6bb6]                           dc.b $00
[000a6bb7]                           dc.b $20
[000a6bb8]                           dc.w $05d0
[000a6bba]                           dc.w $8000
[000a6bbc]                           dc.b $00
[000a6bbd]                           dc.b $20
[000a6bbe]                           dc.w $0490
[000a6bc0]                           dc.w $ffff
[000a6bc2]                           dc.w $ffe0
[000a6bc4]                           dc.w $0220
[000a6bc6]                           dc.b $00
[000a6bc7]                           dc.b $00
[000a6bc8]                           dc.b $00
[000a6bc9]                           dc.b $00
[000a6bca]                           dc.w $01c0
[000a6bcc]                           dc.w $0402
[000a6bce]                           dc.b $00
[000a6bcf]                           dc.b $00
[000a6bd0]                           dc.b $00
[000a6bd1]                           dc.b $00
[000a6bd2]                           dc.w $0703
[000a6bd4]                           dc.w $8000
[000a6bd6]                           dc.b $00
[000a6bd7]                           dc.b $00
[000a6bd8]                           dc.w $0402
[000a6bda]                           dc.b $00
[000a6bdb]                           dc.b $00
[000a6bdc]                           dc.b $00
[000a6bdd]                           dc.b $00
[000a6bde]                           dc.w $0402
[000a6be0]                           dc.b $00
[000a6be1]                           dc.b $00
[000a6be2]                           dc.b $00
[000a6be3]                           dc.b $00
[000a6be4]                           dc.w $743a
[000a6be6]                           dc.b $00
[000a6be7]                           dc.b $00
[000a6be8]                           dc.b $00
[000a6be9]                           dc.b $00
[000a6bea]                           dc.w $f87c
[000a6bec]                           dc.b $00
[000a6bed]                           dc.b $00
[000a6bee]                           dc.b $00
[000a6bef]                           dc.b $00
[000a6bf0]                           dc.w $7038
[000a6bf2]                           dc.b $00
[000a6bf3]                           dc.b $00
[000a6bf4]                           dc.b $00
[000a6bf5]                           dc.b $00
[000a6bf6]                           dc.b $00
[000a6bf7]                           dc.b $00
[000a6bf8]                           dc.b $00
[000a6bf9]                           dc.b $00
[000a6bfa]                           dc.b $00
[000a6bfb]                           dc.b $00
[000a6bfc]                           dc.b $00
[000a6bfd]                           dc.b $00
[000a6bfe]                           dc.b $00
[000a6bff]                           dc.b $00
[000a6c00]                           dc.b $00
[000a6c01]                           dc.b $00
[000a6c02]                           dc.b $00
[000a6c03]                           dc.b $00
[000a6c04]                           dc.b $00
[000a6c05]                           dc.b $00
[000a6c06]                           dc.b $00
[000a6c07]                           dc.b $00
[000a6c08]                           dc.b $00
[000a6c09]                           dc.b $00
[000a6c0a]                           dc.b $00
[000a6c0b]                           dc.b $00
IC_USER:
[000a6c0c] 000a6a98                  dc.l _MSK_IC_USER
[000a6c10] 000a6b52                  dc.l _DAT_IC_USER
[000a6c14] 000a658f                  dc.l TEXT_10
[000a6c18]                           dc.w $1000
[000a6c1a]                           dc.b $00
[000a6c1b]                           dc.b $00
[000a6c1c]                           dc.b $00
[000a6c1d]                           dc.b $00
[000a6c1e]                           dc.b $00
[000a6c1f]                           dc.b $0c
[000a6c20]                           dc.b $00
[000a6c21]                           dc.b $00
[000a6c22]                           dc.b $00
[000a6c23]                           dc.b $30
[000a6c24]                           dc.b $00
[000a6c25]                           dc.b $1f
[000a6c26]                           dc.b $00
[000a6c27]                           dc.b $00
[000a6c28]                           dc.b $00
[000a6c29]                           dc.b $20
[000a6c2a]                           dc.b $00
[000a6c2b]                           dc.b $48
[000a6c2c]                           dc.b $00
[000a6c2d]                           dc.b $08
[000a6c2e] 000a6a82                  dc.l _C4_IC_USER
EDIT_USER:
[000a6c32]                           dc.w $ffff
[000a6c34]                           dc.b $00
[000a6c35]                           dc.b $01
[000a6c36]                           dc.b $00
[000a6c37]                           dc.b $0e
[000a6c38]                           dc.b $00
[000a6c39]                           dc.b $18
[000a6c3a]                           dc.b $00
[000a6c3b]                           dc.b $40
[000a6c3c]                           dc.b $00
[000a6c3d]                           dc.b $10
[000a6c3e] 000a6a22                  dc.l A_3DBUTTON02
[000a6c42]                           dc.b $00
[000a6c43]                           dc.b $00
[000a6c44]                           dc.b $00
[000a6c45]                           dc.b $00
[000a6c46]                           dc.b $00
[000a6c47]                           dc.b $28
[000a6c48]                           dc.b $00
[000a6c49]                           dc.b $0b
_01_EDIT_USER:
[000a6c4a]                           dc.b $00
[000a6c4b]                           dc.b $0e
[000a6c4c]                           dc.b $00
[000a6c4d]                           dc.b $02
[000a6c4e]                           dc.b $00
[000a6c4f]                           dc.b $0d
[000a6c50]                           dc.b $00
[000a6c51]                           dc.b $18
[000a6c52]                           dc.b $00
[000a6c53]                           dc.b $40
[000a6c54]                           dc.b $00
[000a6c55]                           dc.b $00
[000a6c56] 000a6a62                  dc.l A_INNERFRAME02
[000a6c5a]                           dc.b $00
[000a6c5b]                           dc.b $01
[000a6c5c]                           dc.b $00
[000a6c5d]                           dc.b $00
[000a6c5e]                           dc.b $00
[000a6c5f]                           dc.b $26
[000a6c60]                           dc.b $00
[000a6c61]                           dc.b $08
_02_EDIT_USER:
[000a6c62]                           dc.b $00
[000a6c63]                           dc.b $03
[000a6c64]                           dc.w $ffff
[000a6c66]                           dc.w $ffff
[000a6c68]                           dc.b $00
[000a6c69]                           dc.b $15
[000a6c6a]                           dc.b $00
[000a6c6b]                           dc.b $00
[000a6c6c]                           dc.b $00
[000a6c6d]                           dc.b $00
[000a6c6e] 000a6942                  dc.l TEDINFO_01
[000a6c72]                           dc.b $00
[000a6c73]                           dc.b $01
[000a6c74]                           dc.b $00
[000a6c75]                           dc.b $01
[000a6c76]                           dc.b $00
[000a6c77]                           dc.b $05
[000a6c78]                           dc.b $00
[000a6c79]                           dc.b $01
_03_EDIT_USER:
[000a6c7a]                           dc.b $00
[000a6c7b]                           dc.b $04
[000a6c7c]                           dc.w $ffff
[000a6c7e]                           dc.w $ffff
[000a6c80]                           dc.b $00
[000a6c81]                           dc.b $15
[000a6c82]                           dc.b $00
[000a6c83]                           dc.b $00
[000a6c84]                           dc.b $00
[000a6c85]                           dc.b $00
[000a6c86] 000a695e                  dc.l TEDINFO_02
[000a6c8a]                           dc.b $00
[000a6c8b]                           dc.b $01
[000a6c8c]                           dc.b $00
[000a6c8d]                           dc.b $02
[000a6c8e]                           dc.b $00
[000a6c8f]                           dc.b $05
[000a6c90]                           dc.b $00
[000a6c91]                           dc.b $01
_04_EDIT_USER:
[000a6c92]                           dc.b $00
[000a6c93]                           dc.b $05
[000a6c94]                           dc.w $ffff
[000a6c96]                           dc.w $ffff
[000a6c98]                           dc.b $00
[000a6c99]                           dc.b $15
[000a6c9a]                           dc.b $00
[000a6c9b]                           dc.b $00
[000a6c9c]                           dc.b $00
[000a6c9d]                           dc.b $00
[000a6c9e] 000a697a                  dc.l TEDINFO_03
[000a6ca2]                           dc.b $00
[000a6ca3]                           dc.b $01
[000a6ca4]                           dc.b $00
[000a6ca5]                           dc.b $03
[000a6ca6]                           dc.b $00
[000a6ca7]                           dc.b $05
[000a6ca8]                           dc.b $00
[000a6ca9]                           dc.b $01
_05_EDIT_USER:
[000a6caa]                           dc.b $00
[000a6cab]                           dc.b $06
[000a6cac]                           dc.w $ffff
[000a6cae]                           dc.w $ffff
[000a6cb0]                           dc.b $00
[000a6cb1]                           dc.b $15
[000a6cb2]                           dc.b $00
[000a6cb3]                           dc.b $00
[000a6cb4]                           dc.b $00
[000a6cb5]                           dc.b $00
[000a6cb6] 000a6996                  dc.l TEDINFO_04
[000a6cba]                           dc.b $00
[000a6cbb]                           dc.b $01
[000a6cbc]                           dc.b $00
[000a6cbd]                           dc.b $04
[000a6cbe]                           dc.b $00
[000a6cbf]                           dc.b $05
[000a6cc0]                           dc.b $00
[000a6cc1]                           dc.b $01
_06_EDIT_USER:
[000a6cc2]                           dc.b $00
[000a6cc3]                           dc.b $07
[000a6cc4]                           dc.w $ffff
[000a6cc6]                           dc.w $ffff
[000a6cc8]                           dc.b $00
[000a6cc9]                           dc.b $15
[000a6cca]                           dc.b $00
[000a6ccb]                           dc.b $00
[000a6ccc]                           dc.b $00
[000a6ccd]                           dc.b $00
[000a6cce] 000a69b2                  dc.l TEDINFO_05
[000a6cd2]                           dc.b $00
[000a6cd3]                           dc.b $01
[000a6cd4]                           dc.b $00
[000a6cd5]                           dc.b $05
[000a6cd6]                           dc.b $00
[000a6cd7]                           dc.b $05
[000a6cd8]                           dc.b $00
[000a6cd9]                           dc.b $01
_07_EDIT_USER:
[000a6cda]                           dc.b $00
[000a6cdb]                           dc.b $08
[000a6cdc]                           dc.w $ffff
[000a6cde]                           dc.w $ffff
[000a6ce0]                           dc.b $00
[000a6ce1]                           dc.b $15
[000a6ce2]                           dc.b $00
[000a6ce3]                           dc.b $00
[000a6ce4]                           dc.b $00
[000a6ce5]                           dc.b $00
[000a6ce6] 000a69ce                  dc.l TEDINFO_06
[000a6cea]                           dc.b $00
[000a6ceb]                           dc.b $01
[000a6cec]                           dc.b $00
[000a6ced]                           dc.b $06
[000a6cee]                           dc.b $00
[000a6cef]                           dc.b $05
[000a6cf0]                           dc.b $00
[000a6cf1]                           dc.b $01
_08_EDIT_USER:
[000a6cf2]                           dc.b $00
[000a6cf3]                           dc.b $09
[000a6cf4]                           dc.w $ffff
[000a6cf6]                           dc.w $ffff
[000a6cf8]                           dc.b $00
[000a6cf9]                           dc.b $16
[000a6cfa]                           dc.b $00
[000a6cfb]                           dc.b $00
[000a6cfc]                           dc.b $00
[000a6cfd]                           dc.b $00
[000a6cfe] 000a6a06                  dc.l TEDI_008
[000a6d02]                           dc.b $00
[000a6d03]                           dc.b $06
[000a6d04]                           dc.b $00
[000a6d05]                           dc.b $01
[000a6d06]                           dc.b $00
[000a6d07]                           dc.b $1f
[000a6d08]                           dc.b $00
[000a6d09]                           dc.b $01
_09_EDIT_USER:
[000a6d0a]                           dc.b $00
[000a6d0b]                           dc.b $0a
[000a6d0c]                           dc.w $ffff
[000a6d0e]                           dc.w $ffff
[000a6d10]                           dc.b $00
[000a6d11]                           dc.b $16
[000a6d12]                           dc.b $00
[000a6d13]                           dc.b $00
[000a6d14]                           dc.b $00
[000a6d15]                           dc.b $00
[000a6d16] 000a6a06                  dc.l TEDI_008
[000a6d1a]                           dc.b $00
[000a6d1b]                           dc.b $06
[000a6d1c]                           dc.b $00
[000a6d1d]                           dc.b $02
[000a6d1e]                           dc.b $00
[000a6d1f]                           dc.b $1f
[000a6d20]                           dc.b $00
[000a6d21]                           dc.b $01
_10_EDIT_USER:
[000a6d22]                           dc.b $00
[000a6d23]                           dc.b $0b
[000a6d24]                           dc.w $ffff
[000a6d26]                           dc.w $ffff
[000a6d28]                           dc.b $00
[000a6d29]                           dc.b $16
[000a6d2a]                           dc.b $00
[000a6d2b]                           dc.b $00
[000a6d2c]                           dc.b $00
[000a6d2d]                           dc.b $00
[000a6d2e] 000a6a06                  dc.l TEDI_008
[000a6d32]                           dc.b $00
[000a6d33]                           dc.b $06
[000a6d34]                           dc.b $00
[000a6d35]                           dc.b $03
[000a6d36]                           dc.b $00
[000a6d37]                           dc.b $1f
[000a6d38]                           dc.b $00
[000a6d39]                           dc.b $01
_11_EDIT_USER:
[000a6d3a]                           dc.b $00
[000a6d3b]                           dc.b $0c
[000a6d3c]                           dc.w $ffff
[000a6d3e]                           dc.w $ffff
[000a6d40]                           dc.b $00
[000a6d41]                           dc.b $16
[000a6d42]                           dc.b $00
[000a6d43]                           dc.b $00
[000a6d44]                           dc.b $00
[000a6d45]                           dc.b $00
[000a6d46] 000a6a06                  dc.l TEDI_008
[000a6d4a]                           dc.b $00
[000a6d4b]                           dc.b $06
[000a6d4c]                           dc.b $00
[000a6d4d]                           dc.b $04
[000a6d4e]                           dc.b $00
[000a6d4f]                           dc.b $1f
[000a6d50]                           dc.b $00
[000a6d51]                           dc.b $01
_12_EDIT_USER:
[000a6d52]                           dc.b $00
[000a6d53]                           dc.b $0d
[000a6d54]                           dc.w $ffff
[000a6d56]                           dc.w $ffff
[000a6d58]                           dc.b $00
[000a6d59]                           dc.b $16
[000a6d5a]                           dc.b $00
[000a6d5b]                           dc.b $00
[000a6d5c]                           dc.b $00
[000a6d5d]                           dc.b $00
[000a6d5e] 000a69ea                  dc.l TEDI_007
[000a6d62]                           dc.b $00
[000a6d63]                           dc.b $06
[000a6d64]                           dc.b $00
[000a6d65]                           dc.b $05
[000a6d66]                           dc.b $00
[000a6d67]                           dc.b $1f
[000a6d68]                           dc.b $00
[000a6d69]                           dc.b $01
_13_EDIT_USER:
[000a6d6a]                           dc.b $00
[000a6d6b]                           dc.b $01
[000a6d6c]                           dc.w $ffff
[000a6d6e]                           dc.w $ffff
[000a6d70]                           dc.b $00
[000a6d71]                           dc.b $16
[000a6d72]                           dc.b $00
[000a6d73]                           dc.b $00
[000a6d74]                           dc.b $00
[000a6d75]                           dc.b $00
[000a6d76] 000a6a06                  dc.l TEDI_008
[000a6d7a]                           dc.b $00
[000a6d7b]                           dc.b $06
[000a6d7c]                           dc.b $00
[000a6d7d]                           dc.b $06
[000a6d7e]                           dc.b $00
[000a6d7f]                           dc.b $1f
[000a6d80]                           dc.b $00
[000a6d81]                           dc.b $01
_14_EDIT_USER:
[000a6d82]                           dc.b $00
[000a6d83]                           dc.b $00
[000a6d84]                           dc.w $ffff
[000a6d86]                           dc.w $ffff
[000a6d88]                           dc.b $00
[000a6d89]                           dc.b $18
[000a6d8a]                           dc.w $4007
[000a6d8c]                           dc.b $00
[000a6d8d]                           dc.b $10
[000a6d8e] 000a6a42                  dc.l A_3DBUTTON04
[000a6d92]                           dc.b $00
[000a6d93]                           dc.b $0e
[000a6d94]                           dc.b $00
[000a6d95]                           dc.b $08
[000a6d96]                           dc.b $00
[000a6d97]                           dc.b $0c
[000a6d98]                           dc.b $00
[000a6d99]                           dc.b $02
_14aEDIT_USER:
[000a6d9a] 00021698                  dc.l editus_ok
[000a6d9e]                           dc.b $00
[000a6d9f]                           dc.b $00
[000a6da0]                           dc.b $00
[000a6da1]                           dc.b $00
[000a6da2]                           dc.w $8020
[000a6da4]                           dc.w $884f
[000a6da6]                           dc.b $00
[000a6da7]                           dc.b $00
[000a6da8]                           dc.b $00
[000a6da9]                           dc.b $00
[000a6daa]                           dc.b $00
[000a6dab]                           dc.b $00
[000a6dac]                           dc.b $00
[000a6dad]                           dc.b $00
[000a6dae]                           dc.b $00
[000a6daf]                           dc.b $00
[000a6db0]                           dc.b $00
[000a6db1]                           dc.b $00
WI_USER:
[000a6db2]                           dc.b $00
[000a6db3]                           dc.b $00
[000a6db4]                           dc.b $00
[000a6db5]                           dc.b $00
[000a6db6] 00021750                  dc.l user_service
[000a6dba] 000216aa                  dc.l user_make
[000a6dbe] 0004f69e                  dc.l Awi_open
[000a6dc2] 0004e610                  dc.l Awi_init
[000a6dc6] 000a6c32                  dc.l EDIT_USER
[000a6dca]                           dc.b $00
[000a6dcb]                           dc.b $00
[000a6dcc]                           dc.b $00
[000a6dcd]                           dc.b $00
[000a6dce]                           dc.b $00
[000a6dcf]                           dc.b $00
[000a6dd0]                           dc.b $00
[000a6dd1]                           dc.b $00
[000a6dd2]                           dc.w $ffff
[000a6dd4]                           dc.w $601f
[000a6dd6]                           dc.b $00
[000a6dd7]                           dc.b $00
[000a6dd8]                           dc.b $00
[000a6dd9]                           dc.b $00
[000a6dda]                           dc.b $00
[000a6ddb]                           dc.b $a0
[000a6ddc]                           dc.b $00
[000a6ddd]                           dc.b $32
[000a6dde]                           dc.b $00
[000a6ddf]                           dc.b $00
[000a6de0]                           dc.b $00
[000a6de1]                           dc.b $00
[000a6de2]                           dc.b $00
[000a6de3]                           dc.b $00
[000a6de4]                           dc.b $00
[000a6de5]                           dc.b $00
[000a6de6]                           dc.b $00
[000a6de7]                           dc.b $00
[000a6de8]                           dc.b $00
[000a6de9]                           dc.b $00
[000a6dea]                           dc.b $00
[000a6deb]                           dc.b $00
[000a6dec]                           dc.b $00
[000a6ded]                           dc.b $00
[000a6dee]                           dc.w $ffff
[000a6df0]                           dc.w $ffff
[000a6df2]                           dc.w $ffff
[000a6df4]                           dc.w $ffff
[000a6df6]                           dc.b $00
[000a6df7]                           dc.b $00
[000a6df8]                           dc.b $00
[000a6df9]                           dc.b $00
[000a6dfa]                           dc.w $fcf8
[000a6dfc] 000a657e                  dc.l TEXT_07
[000a6e00] 000a6536                  dc.l TEXT_002
[000a6e04]                           dc.w $2710
[000a6e06]                           dc.w $0103
[000a6e08]                           dc.b $00
[000a6e09]                           dc.b $00
[000a6e0a]                           dc.w $ffff
[000a6e0c] 000a6c0c                  dc.l IC_USER
[000a6e10]                           dc.b $00
[000a6e11]                           dc.b $00
[000a6e12]                           dc.b $00
[000a6e13]                           dc.b $00
[000a6e14] 0005ef2c                  dc.l Awi_keys
[000a6e18] 0004b600                  dc.l Awi_obchange
[000a6e1c] 0004b8cc                  dc.l Awi_redraw
[000a6e20] 00050454                  dc.l Awi_topped
[000a6e24] 0005013e                  dc.l Awi_closed
[000a6e28] 00050496                  dc.l Awi_fulled
[000a6e2c] 0004bcc8                  dc.l Awi_arrowed
[000a6e30] 0004beea                  dc.l Awi_hslid
[000a6e34] 0004bf56                  dc.l Awi_vslid
[000a6e38] 000506ca                  dc.l Awi_sized
[000a6e3c] 000507bc                  dc.l Awi_moved
[000a6e40] 00050f9c                  dc.l Awi_iconify
[000a6e44] 0005117c                  dc.l Awi_uniconify
[000a6e48] 00052328                  dc.l Awi_gemscript
[000a6e4c]                           dc.b $00
[000a6e4d]                           dc.b $00
[000a6e4e]                           dc.b $00
[000a6e4f]                           dc.b $00
[000a6e50]                           dc.b $00
[000a6e51]                           dc.b $00
[000a6e52]                           dc.b $00
[000a6e53]                           dc.b $00
[000a6e54]                           dc.b '- NULL -',0
	.even
