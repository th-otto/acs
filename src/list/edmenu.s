
add_men:
[00033e50] 48e7 003c                 movem.l    a2-a5,-(a7)
[00033e54] 2448                      movea.l    a0,a2
[00033e56] 2849                      movea.l    a1,a4
[00033e58] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033e5e] 266a 001c                 movea.l    28(a2),a3
[00033e62] 7038                      moveq.l    #56,d0
[00033e64] 204b                      movea.l    a3,a0
[00033e66] 4eb9 0001 62aa            jsr        objextent
[00033e6c] 4a40                      tst.w      d0
[00033e6e] 6610                      bne.s      add_men_1
[00033e70] 224c                      movea.l    a4,a1
[00033e72] 204a                      movea.l    a2,a0
[00033e74] 4eb9 0003 3eac            jsr        copy_men
[00033e7a] 2a48                      movea.l    a0,a5
[00033e7c] 200d                      move.l     a5,d0
[00033e7e] 6604                      bne.s      add_men_2
add_men_1:
[00033e80] 91c8                      suba.l     a0,a0
[00033e82] 6022                      bra.s      add_men_3
add_men_2:
[00033e84] 2f39 000c 2824            move.l     $000C2824,-(a7)
[00033e8a] 486c 0016                 pea.l      22(a4)
[00033e8e] 224d                      movea.l    a5,a1
[00033e90] 204a                      movea.l    a2,a0
[00033e92] 4eb9 0001 6448            jsr        objname
[00033e98] 504f                      addq.w     #8,a7
[00033e9a] 224d                      movea.l    a5,a1
[00033e9c] 204b                      movea.l    a3,a0
[00033e9e] 4eb9 0003 1a94            jsr        add_entry
[00033ea4] 204d                      movea.l    a5,a0
add_men_3:
[00033ea6] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00033eaa] 4e75                      rts

copy_men:
[00033eac] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[00033eb0] 2648                      movea.l    a0,a3
[00033eb2] 2449                      movea.l    a1,a2
[00033eb4] 202a 000e                 move.l     14(a2),d0
[00033eb8] 4eb9 0001 6230            jsr        objmalloc
[00033ebe] 2848                      movea.l    a0,a4
[00033ec0] 200c                      move.l     a4,d0
[00033ec2] 6604                      bne.s      copy_men_1
[00033ec4] 91c8                      suba.l     a0,a0
[00033ec6] 6046                      bra.s      copy_men_2
copy_men_1:
[00033ec8] 202a 000e                 move.l     14(a2),d0
[00033ecc] 7238                      moveq.l    #56,d1
[00033ece] 4eb9 0007 769e            jsr        _uldiv
[00033ed4] 2600                      move.l     d0,d3
[00033ed6] 2a6a 0004                 movea.l    4(a2),a5
[00033eda] 2c6c 0004                 movea.l    4(a4),a6
[00033ede] 4244                      clr.w      d4
[00033ee0] 6020                      bra.s      copy_men_3
copy_men_4:
[00033ee2] 3204                      move.w     d4,d1
[00033ee4] 48c1                      ext.l      d1
[00033ee6] 2001                      move.l     d1,d0
[00033ee8] e788                      lsl.l      #3,d0
[00033eea] 9081                      sub.l      d1,d0
[00033eec] e788                      lsl.l      #3,d0
[00033eee] 4875 0800                 pea.l      0(a5,d0.l)
[00033ef2] 43f6 0800                 lea.l      0(a6,d0.l),a1
[00033ef6] 204b                      movea.l    a3,a0
[00033ef8] 4eb9 0002 b5ea            jsr        copy_ob
[00033efe] 584f                      addq.w     #4,a7
[00033f00] 5244                      addq.w     #1,d4
copy_men_3:
[00033f02] b644                      cmp.w      d4,d3
[00033f04] 6edc                      bgt.s      copy_men_4
[00033f06] 296a 000e 000e            move.l     14(a2),14(a4)
[00033f0c] 204c                      movea.l    a4,a0
copy_men_2:
[00033f0e] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00033f12] 4e75                      rts

del_men:
[00033f14] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00033f18] 2448                      movea.l    a0,a2
[00033f1a] 2649                      movea.l    a1,a3
[00033f1c] 006a 0001 0006            ori.w      #$0001,6(a2)
[00033f22] 536b 0036                 subq.w     #1,54(a3)
[00033f26] 302b 0036                 move.w     54(a3),d0
[00033f2a] 6e5e                      bgt.s      del_men_1
[00033f2c] 286b 0012                 movea.l    18(a3),a4
[00033f30] 220c                      move.l     a4,d1
[00033f32] 670c                      beq.s      del_men_2
[00033f34] 2a6c 0004                 movea.l    4(a4),a5
[00033f38] 204c                      movea.l    a4,a0
[00033f3a] 7002                      moveq.l    #2,d0
[00033f3c] 93c9                      suba.l     a1,a1
[00033f3e] 4e95                      jsr        (a5)
del_men_2:
[00033f40] 202b 000e                 move.l     14(a3),d0
[00033f44] 7238                      moveq.l    #56,d1
[00033f46] 4eb9 0007 769e            jsr        _uldiv
[00033f4c] 2600                      move.l     d0,d3
[00033f4e] 286b 0004                 movea.l    4(a3),a4
[00033f52] 4244                      clr.w      d4
[00033f54] 601a                      bra.s      del_men_3
del_men_4:
[00033f56] 3204                      move.w     d4,d1
[00033f58] 48c1                      ext.l      d1
[00033f5a] 2001                      move.l     d1,d0
[00033f5c] e788                      lsl.l      #3,d0
[00033f5e] 9081                      sub.l      d1,d0
[00033f60] e788                      lsl.l      #3,d0
[00033f62] 43f4 0800                 lea.l      0(a4,d0.l),a1
[00033f66] 204a                      movea.l    a2,a0
[00033f68] 4eb9 0002 b8b6            jsr        del_ob
[00033f6e] 5244                      addq.w     #1,d4
del_men_3:
[00033f70] b644                      cmp.w      d4,d3
[00033f72] 6ee2                      bgt.s      del_men_4
[00033f74] 224b                      movea.l    a3,a1
[00033f76] 206a 001c                 movea.l    28(a2),a0
[00033f7a] 4eb9 0003 1b00            jsr        del_entry
[00033f80] 224b                      movea.l    a3,a1
[00033f82] 204a                      movea.l    a2,a0
[00033f84] 4eb9 0001 61d4            jsr        objfree
del_men_1:
[00033f8a] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00033f8e] 4e75                      rts

new_work:
[00033f90] 303c 2711                 move.w     #$2711,d0
[00033f94] 2279 000b c930            movea.l    $000BC930,a1
[00033f9a] 4eb9 0003 24b6            jsr        work_icon
[00033fa0] 4e75                      rts

		.data

aboutme:
[000c23e4]                           dc.b $00
[000c23e5]                           dc.b $00
[000c23e6]                           dc.b $00
[000c23e7]                           dc.b $00
[000c23e8] 000c0a38                  dc.l ABOUT
[000c23ec]                           dc.b $00
[000c23ed]                           dc.b $00
[000c23ee]                           dc.b $00
[000c23ef]                           dc.b $00
[000c23f0]                           dc.b $00
[000c23f1]                           dc.b $10
[000c23f2]                           dc.b $00
[000c23f3]                           dc.b $00
[000c23f4]                           dc.b $00
[000c23f5]                           dc.b $10
[000c23f6]                           dc.b $00
[000c23f7]                           dc.b $00
[000c23f8]                           dc.b $00
[000c23f9]                           dc.b $00
[000c23fa]                           dc.b 'TEXT_01',0
[000c2402]                           dc.b $00
[000c2403]                           dc.b $00
[000c2404]                           dc.b $00
[000c2405]                           dc.b $00
[000c2406]                           dc.b $00
[000c2407]                           dc.b $00
[000c2408]                           dc.b $00
[000c2409]                           dc.b $00
[000c240a]                           dc.b $00
[000c240b]                           dc.b $00
[000c240c]                           dc.b $00
[000c240d]                           dc.b $00
[000c240e]                           dc.b $00
[000c240f]                           dc.b $00
[000c2410]                           dc.b $00
[000c2411]                           dc.b $00
[000c2412]                           dc.b $00
[000c2413]                           dc.b $00
[000c2414]                           dc.b $00
[000c2415]                           dc.b $00
[000c2416]                           dc.b $00
[000c2417]                           dc.b $00
[000c2418]                           dc.b $00
[000c2419]                           dc.b $00
[000c241a]                           dc.b $00
[000c241b]                           dc.b $01
[000c241c]                           dc.b $00
[000c241d]                           dc.b $00
[000c241e]                           dc.b $00
[000c241f]                           dc.b $00
[000c2420]                           dc.b $00
[000c2421]                           dc.b $00
[000c2422]                           dc.b $00
[000c2423]                           dc.b $00
[000c2424]                           dc.b $00
[000c2425]                           dc.b $00
sep:
[000c2426]                           dc.b '--------------------',0
[000c243b]                           dc.b $00
separator:
[000c243c]                           dc.b $00
[000c243d]                           dc.b $00
[000c243e]                           dc.b $00
[000c243f]                           dc.b $00
[000c2440] 000c2426                  dc.l sep
[000c2444]                           dc.b $00
[000c2445]                           dc.b $00
[000c2446]                           dc.b $00
[000c2447]                           dc.b $00
[000c2448]                           dc.b $00
[000c2449]                           dc.b $15
[000c244a]                           dc.b $00
[000c244b]                           dc.b $00
[000c244c]                           dc.b $00
[000c244d]                           dc.b $15
[000c244e]                           dc.b $00
[000c244f]                           dc.b $00
[000c2450]                           dc.b $00
[000c2451]                           dc.b $00
[000c2452]                           dc.b 'TEXT_01',0
[000c245a]                           dc.b $00
[000c245b]                           dc.b $00
[000c245c]                           dc.b $00
[000c245d]                           dc.b $00
[000c245e]                           dc.b $00
[000c245f]                           dc.b $00
[000c2460]                           dc.b $00
[000c2461]                           dc.b $00
[000c2462]                           dc.b $00
[000c2463]                           dc.b $00
[000c2464]                           dc.b $00
[000c2465]                           dc.b $00
[000c2466]                           dc.b $00
[000c2467]                           dc.b $00
[000c2468]                           dc.b $00
[000c2469]                           dc.b $00
[000c246a]                           dc.b $00
[000c246b]                           dc.b $00
[000c246c]                           dc.b $00
[000c246d]                           dc.b $00
[000c246e]                           dc.b $00
[000c246f]                           dc.b $00
[000c2470]                           dc.b $00
[000c2471]                           dc.b $00
[000c2472]                           dc.b $00
[000c2473]                           dc.b $01
[000c2474]                           dc.b $00
[000c2475]                           dc.b $00
[000c2476]                           dc.b $00
[000c2477]                           dc.b $00
[000c2478]                           dc.b $00
[000c2479]                           dc.b $00
[000c247a]                           dc.b $00
[000c247b]                           dc.b $00
[000c247c]                           dc.b $00
[000c247d]                           dc.b $00
dummy:
[000c247e]                           dc.b $00
[000c247f]                           dc.b $00
anystr:
[000c2480]                           dc.b $00
[000c2481]                           dc.b $00
[000c2482]                           dc.b $00
[000c2483]                           dc.b $00
[000c2484] 000c247e                  dc.l dummy
[000c2488]                           dc.b $00
[000c2489]                           dc.b $00
[000c248a]                           dc.b $00
[000c248b]                           dc.b $00
[000c248c]                           dc.b $00
[000c248d]                           dc.b $01
[000c248e]                           dc.b $00
[000c248f]                           dc.b $00
[000c2490]                           dc.b $00
[000c2491]                           dc.b $01
[000c2492]                           dc.b $00
[000c2493]                           dc.b $00
[000c2494]                           dc.b $00
[000c2495]                           dc.b $00
[000c2496]                           dc.b 'NULL_STRING',0
[000c24a2]                           dc.b $00
[000c24a3]                           dc.b $00
[000c24a4]                           dc.b $00
[000c24a5]                           dc.b $00
[000c24a6]                           dc.b $00
[000c24a7]                           dc.b $00
[000c24a8]                           dc.b $00
[000c24a9]                           dc.b $00
[000c24aa]                           dc.b $00
[000c24ab]                           dc.b $00
[000c24ac]                           dc.b $00
[000c24ad]                           dc.b $00
[000c24ae]                           dc.b $00
[000c24af]                           dc.b $00
[000c24b0]                           dc.b $00
[000c24b1]                           dc.b $00
[000c24b2]                           dc.b $00
[000c24b3]                           dc.b $00
[000c24b4]                           dc.b $00
[000c24b5]                           dc.b $00
[000c24b6]                           dc.b $00
[000c24b7]                           dc.b $01
[000c24b8]                           dc.b $00
[000c24b9]                           dc.b $00
[000c24ba]                           dc.b $00
[000c24bb]                           dc.b $00
[000c24bc]                           dc.b $00
[000c24bd]                           dc.b $00
[000c24be]                           dc.b $00
[000c24bf]                           dc.b $00
[000c24c0]                           dc.b $00
[000c24c1]                           dc.b $00
protomen:
[000c24c2]                           dc.b $00
[000c24c3]                           dc.b $00
[000c24c4]                           dc.b $00
[000c24c5]                           dc.b $00
[000c24c6]                           dc.b $00
[000c24c7]                           dc.b $00
[000c24c8]                           dc.b $00
[000c24c9]                           dc.b $00
[000c24ca]                           dc.w $ffff
[000c24cc]                           dc.b $00
[000c24cd]                           dc.b $01
[000c24ce]                           dc.b $00
[000c24cf]                           dc.b $04
[000c24d0]                           dc.b $00
[000c24d1]                           dc.b $19
[000c24d2]                           dc.b $00
[000c24d3]                           dc.b $00
[000c24d4]                           dc.b $00
[000c24d5]                           dc.b $00
[000c24d6]                           dc.b $00
[000c24d7]                           dc.b $00
[000c24d8]                           dc.b $00
[000c24d9]                           dc.b $00
[000c24da]                           dc.b $00
[000c24db]                           dc.b $00
[000c24dc]                           dc.b $00
[000c24dd]                           dc.b $00
[000c24de]                           dc.b $00
[000c24df]                           dc.b $5a
[000c24e0]                           dc.b $00
[000c24e1]                           dc.b $19
[000c24e2]                           dc.b $00
[000c24e3]                           dc.b $00
[000c24e4]                           dc.b $00
[000c24e5]                           dc.b $00
[000c24e6]                           dc.b $00
[000c24e7]                           dc.b $00
[000c24e8]                           dc.b $00
[000c24e9]                           dc.b $00
[000c24ea]                           dc.w $8000
[000c24ec]                           dc.b $00
[000c24ed]                           dc.b $00
[000c24ee]                           dc.b $00
[000c24ef]                           dc.b $00
[000c24f0]                           dc.b $00
[000c24f1]                           dc.b $00
[000c24f2]                           dc.b $00
[000c24f3]                           dc.b $00
[000c24f4]                           dc.b $00
[000c24f5]                           dc.b $00
[000c24f6]                           dc.b $00
[000c24f7]                           dc.b $00
[000c24f8]                           dc.b $00
[000c24f9]                           dc.b $00
[000c24fa]                           dc.b $00
[000c24fb]                           dc.b $00
[000c24fc]                           dc.b $00
[000c24fd]                           dc.b $00
[000c24fe]                           dc.b $00
[000c24ff]                           dc.b $00
[000c2500]                           dc.b $00
[000c2501]                           dc.b $00
[000c2502]                           dc.b $00
[000c2503]                           dc.b $04
[000c2504]                           dc.b $00
[000c2505]                           dc.b $02
[000c2506]                           dc.b $00
[000c2507]                           dc.b $02
[000c2508]                           dc.b $00
[000c2509]                           dc.b $14
[000c250a]                           dc.b $00
[000c250b]                           dc.b $00
[000c250c]                           dc.b $00
[000c250d]                           dc.b $00
[000c250e]                           dc.b $00
[000c250f]                           dc.b $00
[000c2510]                           dc.w $1100
[000c2512]                           dc.b $00
[000c2513]                           dc.b $00
[000c2514]                           dc.b $00
[000c2515]                           dc.b $00
[000c2516]                           dc.b $00
[000c2517]                           dc.b $5a
[000c2518]                           dc.w $0201
[000c251a]                           dc.b $00
[000c251b]                           dc.b $00
[000c251c]                           dc.b $00
[000c251d]                           dc.b $00
[000c251e]                           dc.b $00
[000c251f]                           dc.b $00
[000c2520]                           dc.b $00
[000c2521]                           dc.b $00
[000c2522]                           dc.w $8000
[000c2524]                           dc.b $00
[000c2525]                           dc.b $00
[000c2526]                           dc.b $00
[000c2527]                           dc.b $00
[000c2528]                           dc.b $00
[000c2529]                           dc.b $00
[000c252a]                           dc.b $00
[000c252b]                           dc.b $00
[000c252c]                           dc.b $00
[000c252d]                           dc.b $00
[000c252e]                           dc.b $00
[000c252f]                           dc.b $00
[000c2530]                           dc.b $00
[000c2531]                           dc.b $00
[000c2532]                           dc.b $00
[000c2533]                           dc.b $00
[000c2534]                           dc.b $00
[000c2535]                           dc.b $00
[000c2536]                           dc.b $00
[000c2537]                           dc.b $00
[000c2538]                           dc.b $00
[000c2539]                           dc.b $00
[000c253a]                           dc.b $00
[000c253b]                           dc.b $01
[000c253c]                           dc.b $00
[000c253d]                           dc.b $03
[000c253e]                           dc.b $00
[000c253f]                           dc.b $03
[000c2540]                           dc.b $00
[000c2541]                           dc.b $19
[000c2542]                           dc.b $00
[000c2543]                           dc.b $00
[000c2544]                           dc.b $00
[000c2545]                           dc.b $00
[000c2546]                           dc.b $00
[000c2547]                           dc.b $00
[000c2548]                           dc.b $00
[000c2549]                           dc.b $00
[000c254a]                           dc.b $00
[000c254b]                           dc.b $02
[000c254c]                           dc.b $00
[000c254d]                           dc.b $00
[000c254e]                           dc.b $00
[000c254f]                           dc.b $06
[000c2550]                           dc.w $0301
[000c2552]                           dc.b $00
[000c2553]                           dc.b $00
[000c2554]                           dc.b $00
[000c2555]                           dc.b $00
[000c2556]                           dc.b $00
[000c2557]                           dc.b $00
[000c2558]                           dc.b $00
[000c2559]                           dc.b $00
[000c255a]                           dc.w $8000
[000c255c]                           dc.b $00
[000c255d]                           dc.b $00
[000c255e]                           dc.b $00
[000c255f]                           dc.b $00
[000c2560]                           dc.b $00
[000c2561]                           dc.b $00
[000c2562]                           dc.b $00
[000c2563]                           dc.b $00
[000c2564]                           dc.b $00
[000c2565]                           dc.b $00
[000c2566]                           dc.b $00
[000c2567]                           dc.b $00
[000c2568]                           dc.b $00
[000c2569]                           dc.b $00
[000c256a]                           dc.b $00
[000c256b]                           dc.b $00
[000c256c]                           dc.b $00
[000c256d]                           dc.b $00
[000c256e]                           dc.b $00
[000c256f]                           dc.b $00
[000c2570]                           dc.b $00
[000c2571]                           dc.b $00
[000c2572]                           dc.b $00
[000c2573]                           dc.b $02
[000c2574]                           dc.w $ffff
[000c2576]                           dc.w $ffff
[000c2578]                           dc.b $00
[000c2579]                           dc.b $20
[000c257a]                           dc.b $00
[000c257b]                           dc.b $00
[000c257c]                           dc.b $00
[000c257d]                           dc.b $00
[000c257e] 000c2480                  dc.l anystr
[000c2582]                           dc.b $00
[000c2583]                           dc.b $00
[000c2584]                           dc.b $00
[000c2585]                           dc.b $00
[000c2586]                           dc.b $00
[000c2587]                           dc.b $06
[000c2588]                           dc.w $0301
[000c258a]                           dc.b $00
[000c258b]                           dc.b $00
[000c258c]                           dc.b $00
[000c258d]                           dc.b $00
[000c258e]                           dc.b $00
[000c258f]                           dc.b $00
[000c2590]                           dc.b $00
[000c2591]                           dc.b $00
[000c2592]                           dc.w $8000
[000c2594]                           dc.b $00
[000c2595]                           dc.b $00
[000c2596]                           dc.b $00
[000c2597]                           dc.b $00
[000c2598]                           dc.b $00
[000c2599]                           dc.b $00
[000c259a]                           dc.b $00
[000c259b]                           dc.b $00
[000c259c]                           dc.b $00
[000c259d]                           dc.b $00
[000c259e]                           dc.b $00
[000c259f]                           dc.b $00
[000c25a0]                           dc.b $00
[000c25a1]                           dc.b $00
[000c25a2]                           dc.b $00
[000c25a3]                           dc.b $00
[000c25a4]                           dc.b $00
[000c25a5]                           dc.b $00
[000c25a6]                           dc.b $00
[000c25a7]                           dc.b $00
[000c25a8]                           dc.b $00
[000c25a9]                           dc.b $00
[000c25aa]                           dc.b $00
[000c25ab]                           dc.b $00
[000c25ac]                           dc.b $00
[000c25ad]                           dc.b $05
[000c25ae]                           dc.b $00
[000c25af]                           dc.b $05
[000c25b0]                           dc.b $00
[000c25b1]                           dc.b $19
[000c25b2]                           dc.b $00
[000c25b3]                           dc.b $00
[000c25b4]                           dc.b $00
[000c25b5]                           dc.b $00
[000c25b6]                           dc.b $00
[000c25b7]                           dc.b $00
[000c25b8]                           dc.b $00
[000c25b9]                           dc.b $00
[000c25ba]                           dc.b $00
[000c25bb]                           dc.b $00
[000c25bc]                           dc.w $0301
[000c25be]                           dc.b $00
[000c25bf]                           dc.b $50
[000c25c0]                           dc.b $00
[000c25c1]                           dc.b $13
[000c25c2]                           dc.b $00
[000c25c3]                           dc.b $00
[000c25c4]                           dc.b $00
[000c25c5]                           dc.b $00
[000c25c6]                           dc.b $00
[000c25c7]                           dc.b $00
[000c25c8]                           dc.b $00
[000c25c9]                           dc.b $00
[000c25ca]                           dc.w $8000
[000c25cc]                           dc.b $00
[000c25cd]                           dc.b $00
[000c25ce]                           dc.b $00
[000c25cf]                           dc.b $00
[000c25d0]                           dc.b $00
[000c25d1]                           dc.b $00
[000c25d2]                           dc.b $00
[000c25d3]                           dc.b $00
[000c25d4]                           dc.b $00
[000c25d5]                           dc.b $00
[000c25d6]                           dc.b $00
[000c25d7]                           dc.b $00
[000c25d8]                           dc.b $00
[000c25d9]                           dc.b $00
[000c25da]                           dc.b $00
[000c25db]                           dc.b $00
[000c25dc]                           dc.b $00
[000c25dd]                           dc.b $00
[000c25de]                           dc.b $00
[000c25df]                           dc.b $00
[000c25e0]                           dc.b $00
[000c25e1]                           dc.b $00
[000c25e2]                           dc.b $00
[000c25e3]                           dc.b $04
[000c25e4]                           dc.b $00
[000c25e5]                           dc.b $06
[000c25e6]                           dc.b $00
[000c25e7]                           dc.b $0d
[000c25e8]                           dc.b $00
[000c25e9]                           dc.b $14
[000c25ea]                           dc.b $00
[000c25eb]                           dc.b $00
[000c25ec]                           dc.b $00
[000c25ed]                           dc.b $00
[000c25ee]                           dc.b $00
[000c25ef]                           dc.b $ff
[000c25f0]                           dc.w $1100
[000c25f2]                           dc.b $00
[000c25f3]                           dc.b $02
[000c25f4]                           dc.b $00
[000c25f5]                           dc.b $00
[000c25f6]                           dc.b $00
[000c25f7]                           dc.b $14
[000c25f8]                           dc.b $00
[000c25f9]                           dc.b $08
[000c25fa]                           dc.b $00
[000c25fb]                           dc.b $00
[000c25fc]                           dc.b $00
[000c25fd]                           dc.b $00
[000c25fe]                           dc.b $00
[000c25ff]                           dc.b $00
[000c2600]                           dc.b $00
[000c2601]                           dc.b $00
[000c2602]                           dc.w $8000
[000c2604]                           dc.b $00
[000c2605]                           dc.b $00
[000c2606]                           dc.b $00
[000c2607]                           dc.b $00
[000c2608]                           dc.b $00
[000c2609]                           dc.b $00
[000c260a]                           dc.b $00
[000c260b]                           dc.b $00
[000c260c]                           dc.b $00
[000c260d]                           dc.b $00
[000c260e]                           dc.b $00
[000c260f]                           dc.b $00
[000c2610]                           dc.b $00
[000c2611]                           dc.b $00
[000c2612]                           dc.b $00
[000c2613]                           dc.b $00
[000c2614]                           dc.b $00
[000c2615]                           dc.b $00
[000c2616]                           dc.b $00
[000c2617]                           dc.b $00
[000c2618]                           dc.b $00
[000c2619]                           dc.b $00
[000c261a]                           dc.b $00
[000c261b]                           dc.b $07
[000c261c]                           dc.w $ffff
[000c261e]                           dc.w $ffff
[000c2620]                           dc.b $00
[000c2621]                           dc.b $1c
[000c2622]                           dc.b $00
[000c2623]                           dc.b $00
[000c2624]                           dc.w $2000
[000c2626] 000c23e4                  dc.l aboutme
[000c262a]                           dc.b $00
[000c262b]                           dc.b $00
[000c262c]                           dc.b $00
[000c262d]                           dc.b $00
[000c262e]                           dc.b $00
[000c262f]                           dc.b $14
[000c2630]                           dc.b $00
[000c2631]                           dc.b $01
[000c2632]                           dc.b $00
[000c2633]                           dc.b $00
[000c2634]                           dc.b $00
[000c2635]                           dc.b $00
[000c2636]                           dc.b $00
[000c2637]                           dc.b $00
[000c2638]                           dc.b $00
[000c2639]                           dc.b $00
[000c263a]                           dc.w $8000
[000c263c]                           dc.b $00
[000c263d]                           dc.b $00
[000c263e]                           dc.b $00
[000c263f]                           dc.b $00
[000c2640]                           dc.b $00
[000c2641]                           dc.b $00
[000c2642]                           dc.b $00
[000c2643]                           dc.b $00
[000c2644]                           dc.b $00
[000c2645]                           dc.b $00
[000c2646]                           dc.b $00
[000c2647]                           dc.b $00
[000c2648]                           dc.b $00
[000c2649]                           dc.b $00
[000c264a]                           dc.b $00
[000c264b]                           dc.b $00
[000c264c]                           dc.b $00
[000c264d]                           dc.b $00
[000c264e]                           dc.b $00
[000c264f]                           dc.b $00
[000c2650]                           dc.b $00
[000c2651]                           dc.b $00
[000c2652]                           dc.b $00
[000c2653]                           dc.b $08
[000c2654]                           dc.w $ffff
[000c2656]                           dc.w $ffff
[000c2658]                           dc.b $00
[000c2659]                           dc.b $1c
[000c265a]                           dc.b $00
[000c265b]                           dc.b $00
[000c265c]                           dc.w $2008
[000c265e] 000c243c                  dc.l separator
[000c2662]                           dc.b $00
[000c2663]                           dc.b $00
[000c2664]                           dc.b $00
[000c2665]                           dc.b $01
[000c2666]                           dc.b $00
[000c2667]                           dc.b $14
[000c2668]                           dc.b $00
[000c2669]                           dc.b $01
[000c266a]                           dc.b $00
[000c266b]                           dc.b $00
[000c266c]                           dc.b $00
[000c266d]                           dc.b $00
[000c266e]                           dc.b $00
[000c266f]                           dc.b $00
[000c2670]                           dc.b $00
[000c2671]                           dc.b $00
[000c2672]                           dc.w $8000
[000c2674]                           dc.b $00
[000c2675]                           dc.b $00
[000c2676]                           dc.b $00
[000c2677]                           dc.b $00
[000c2678]                           dc.b $00
[000c2679]                           dc.b $00
[000c267a]                           dc.b $00
[000c267b]                           dc.b $00
[000c267c]                           dc.b $00
[000c267d]                           dc.b $00
[000c267e]                           dc.b $00
[000c267f]                           dc.b $00
[000c2680]                           dc.b $00
[000c2681]                           dc.b $00
[000c2682]                           dc.b $00
[000c2683]                           dc.b $00
[000c2684]                           dc.b $00
[000c2685]                           dc.b $00
[000c2686]                           dc.b $00
[000c2687]                           dc.b $00
[000c2688]                           dc.b $00
[000c2689]                           dc.b $00
[000c268a]                           dc.b $00
[000c268b]                           dc.b $09
[000c268c]                           dc.w $ffff
[000c268e]                           dc.w $ffff
[000c2690]                           dc.b $00
[000c2691]                           dc.b $1c
[000c2692]                           dc.b $00
[000c2693]                           dc.b $00
[000c2694]                           dc.w $2000
[000c2696] 000c2480                  dc.l anystr
[000c269a]                           dc.b $00
[000c269b]                           dc.b $00
[000c269c]                           dc.b $00
[000c269d]                           dc.b $02
[000c269e]                           dc.b $00
[000c269f]                           dc.b $14
[000c26a0]                           dc.b $00
[000c26a1]                           dc.b $01
[000c26a2]                           dc.b $00
[000c26a3]                           dc.b $00
[000c26a4]                           dc.b $00
[000c26a5]                           dc.b $00
[000c26a6]                           dc.b $00
[000c26a7]                           dc.b $00
[000c26a8]                           dc.b $00
[000c26a9]                           dc.b $00
[000c26aa]                           dc.w $8000
[000c26ac]                           dc.b $00
[000c26ad]                           dc.b $00
[000c26ae]                           dc.b $00
[000c26af]                           dc.b $00
[000c26b0]                           dc.b $00
[000c26b1]                           dc.b $00
[000c26b2]                           dc.b $00
[000c26b3]                           dc.b $00
[000c26b4]                           dc.b $00
[000c26b5]                           dc.b $00
[000c26b6]                           dc.b $00
[000c26b7]                           dc.b $00
[000c26b8]                           dc.b $00
[000c26b9]                           dc.b $00
[000c26ba]                           dc.b $00
[000c26bb]                           dc.b $00
[000c26bc]                           dc.b $00
[000c26bd]                           dc.b $00
[000c26be]                           dc.b $00
[000c26bf]                           dc.b $00
[000c26c0]                           dc.b $00
[000c26c1]                           dc.b $00
[000c26c2]                           dc.b $00
[000c26c3]                           dc.b $0a
[000c26c4]                           dc.w $ffff
[000c26c6]                           dc.w $ffff
[000c26c8]                           dc.b $00
[000c26c9]                           dc.b $1c
[000c26ca]                           dc.b $00
[000c26cb]                           dc.b $00
[000c26cc]                           dc.w $2000
[000c26ce] 000c2480                  dc.l anystr
[000c26d2]                           dc.b $00
[000c26d3]                           dc.b $00
[000c26d4]                           dc.b $00
[000c26d5]                           dc.b $03
[000c26d6]                           dc.b $00
[000c26d7]                           dc.b $14
[000c26d8]                           dc.b $00
[000c26d9]                           dc.b $01
[000c26da]                           dc.b $00
[000c26db]                           dc.b $00
[000c26dc]                           dc.b $00
[000c26dd]                           dc.b $00
[000c26de]                           dc.b $00
[000c26df]                           dc.b $00
[000c26e0]                           dc.b $00
[000c26e1]                           dc.b $00
[000c26e2]                           dc.w $8000
[000c26e4]                           dc.b $00
[000c26e5]                           dc.b $00
[000c26e6]                           dc.b $00
[000c26e7]                           dc.b $00
[000c26e8]                           dc.b $00
[000c26e9]                           dc.b $00
[000c26ea]                           dc.b $00
[000c26eb]                           dc.b $00
[000c26ec]                           dc.b $00
[000c26ed]                           dc.b $00
[000c26ee]                           dc.b $00
[000c26ef]                           dc.b $00
[000c26f0]                           dc.b $00
[000c26f1]                           dc.b $00
[000c26f2]                           dc.b $00
[000c26f3]                           dc.b $00
[000c26f4]                           dc.b $00
[000c26f5]                           dc.b $00
[000c26f6]                           dc.b $00
[000c26f7]                           dc.b $00
[000c26f8]                           dc.b $00
[000c26f9]                           dc.b $00
[000c26fa]                           dc.b $00
[000c26fb]                           dc.b $0b
[000c26fc]                           dc.w $ffff
[000c26fe]                           dc.w $ffff
[000c2700]                           dc.b $00
[000c2701]                           dc.b $1c
[000c2702]                           dc.b $00
[000c2703]                           dc.b $00
[000c2704]                           dc.w $2000
[000c2706] 000c2480                  dc.l anystr
[000c270a]                           dc.b $00
[000c270b]                           dc.b $00
[000c270c]                           dc.b $00
[000c270d]                           dc.b $04
[000c270e]                           dc.b $00
[000c270f]                           dc.b $14
[000c2710]                           dc.b $00
[000c2711]                           dc.b $01
[000c2712]                           dc.b $00
[000c2713]                           dc.b $00
[000c2714]                           dc.b $00
[000c2715]                           dc.b $00
[000c2716]                           dc.b $00
[000c2717]                           dc.b $00
[000c2718]                           dc.b $00
[000c2719]                           dc.b $00
[000c271a]                           dc.w $8000
[000c271c]                           dc.b $00
[000c271d]                           dc.b $00
[000c271e]                           dc.b $00
[000c271f]                           dc.b $00
[000c2720]                           dc.b $00
[000c2721]                           dc.b $00
[000c2722]                           dc.b $00
[000c2723]                           dc.b $00
[000c2724]                           dc.b $00
[000c2725]                           dc.b $00
[000c2726]                           dc.b $00
[000c2727]                           dc.b $00
[000c2728]                           dc.b $00
[000c2729]                           dc.b $00
[000c272a]                           dc.b $00
[000c272b]                           dc.b $00
[000c272c]                           dc.b $00
[000c272d]                           dc.b $00
[000c272e]                           dc.b $00
[000c272f]                           dc.b $00
[000c2730]                           dc.b $00
[000c2731]                           dc.b $00
[000c2732]                           dc.b $00
[000c2733]                           dc.b $0c
[000c2734]                           dc.w $ffff
[000c2736]                           dc.w $ffff
[000c2738]                           dc.b $00
[000c2739]                           dc.b $1c
[000c273a]                           dc.b $00
[000c273b]                           dc.b $00
[000c273c]                           dc.w $2000
[000c273e] 000c2480                  dc.l anystr
[000c2742]                           dc.b $00
[000c2743]                           dc.b $00
[000c2744]                           dc.b $00
[000c2745]                           dc.b $05
[000c2746]                           dc.b $00
[000c2747]                           dc.b $14
[000c2748]                           dc.b $00
[000c2749]                           dc.b $01
[000c274a]                           dc.b $00
[000c274b]                           dc.b $00
[000c274c]                           dc.b $00
[000c274d]                           dc.b $00
[000c274e]                           dc.b $00
[000c274f]                           dc.b $00
[000c2750]                           dc.b $00
[000c2751]                           dc.b $00
[000c2752]                           dc.w $8000
[000c2754]                           dc.b $00
[000c2755]                           dc.b $00
[000c2756]                           dc.b $00
[000c2757]                           dc.b $00
[000c2758]                           dc.b $00
[000c2759]                           dc.b $00
[000c275a]                           dc.b $00
[000c275b]                           dc.b $00
[000c275c]                           dc.b $00
[000c275d]                           dc.b $00
[000c275e]                           dc.b $00
[000c275f]                           dc.b $00
[000c2760]                           dc.b $00
[000c2761]                           dc.b $00
[000c2762]                           dc.b $00
[000c2763]                           dc.b $00
[000c2764]                           dc.b $00
[000c2765]                           dc.b $00
[000c2766]                           dc.b $00
[000c2767]                           dc.b $00
[000c2768]                           dc.b $00
[000c2769]                           dc.b $00
[000c276a]                           dc.b $00
[000c276b]                           dc.b $0d
[000c276c]                           dc.w $ffff
[000c276e]                           dc.w $ffff
[000c2770]                           dc.b $00
[000c2771]                           dc.b $1c
[000c2772]                           dc.b $00
[000c2773]                           dc.b $00
[000c2774]                           dc.w $2000
[000c2776] 000c2480                  dc.l anystr
[000c277a]                           dc.b $00
[000c277b]                           dc.b $00
[000c277c]                           dc.b $00
[000c277d]                           dc.b $06
[000c277e]                           dc.b $00
[000c277f]                           dc.b $14
[000c2780]                           dc.b $00
[000c2781]                           dc.b $01
[000c2782]                           dc.b $00
[000c2783]                           dc.b $00
[000c2784]                           dc.b $00
[000c2785]                           dc.b $00
[000c2786]                           dc.b $00
[000c2787]                           dc.b $00
[000c2788]                           dc.b $00
[000c2789]                           dc.b $00
[000c278a]                           dc.w $8000
[000c278c]                           dc.b $00
[000c278d]                           dc.b $00
[000c278e]                           dc.b $00
[000c278f]                           dc.b $00
[000c2790]                           dc.b $00
[000c2791]                           dc.b $00
[000c2792]                           dc.b $00
[000c2793]                           dc.b $00
[000c2794]                           dc.b $00
[000c2795]                           dc.b $00
[000c2796]                           dc.b $00
[000c2797]                           dc.b $00
[000c2798]                           dc.b $00
[000c2799]                           dc.b $00
[000c279a]                           dc.b $00
[000c279b]                           dc.b $00
[000c279c]                           dc.b $00
[000c279d]                           dc.b $00
[000c279e]                           dc.b $00
[000c279f]                           dc.b $00
[000c27a0]                           dc.b $00
[000c27a1]                           dc.b $00
[000c27a2]                           dc.b $00
[000c27a3]                           dc.b $05
[000c27a4]                           dc.w $ffff
[000c27a6]                           dc.w $ffff
[000c27a8]                           dc.b $00
[000c27a9]                           dc.b $1c
[000c27aa]                           dc.b $00
[000c27ab]                           dc.b $00
[000c27ac]                           dc.w $2000
[000c27ae] 000c2480                  dc.l anystr
[000c27b2]                           dc.b $00
[000c27b3]                           dc.b $00
[000c27b4]                           dc.b $00
[000c27b5]                           dc.b $07
[000c27b6]                           dc.b $00
[000c27b7]                           dc.b $14
[000c27b8]                           dc.b $00
[000c27b9]                           dc.b $01
[000c27ba]                           dc.b $00
[000c27bb]                           dc.b $00
[000c27bc]                           dc.b $00
[000c27bd]                           dc.b $00
[000c27be]                           dc.b $00
[000c27bf]                           dc.b $00
[000c27c0]                           dc.b $00
[000c27c1]                           dc.b $00
[000c27c2]                           dc.w $8000
[000c27c4]                           dc.b $00
[000c27c5]                           dc.b $00
[000c27c6]                           dc.b $00
[000c27c7]                           dc.b $00
[000c27c8]                           dc.b $00
[000c27c9]                           dc.b $00
[000c27ca]                           dc.b $00
[000c27cb]                           dc.b $00
[000c27cc]                           dc.b $00
[000c27cd]                           dc.b $00
[000c27ce]                           dc.b $00
[000c27cf]                           dc.b $00
[000c27d0]                           dc.b $00
[000c27d1]                           dc.b $00
protomenu:
[000c27d2]                           dc.b $00
[000c27d3]                           dc.b $00
[000c27d4]                           dc.b $00
[000c27d5]                           dc.b $00
[000c27d6] 000c24c2                  dc.l protomen
[000c27da]                           dc.b $00
[000c27db]                           dc.b $00
[000c27dc]                           dc.b $00
[000c27dd]                           dc.b $00
[000c27de]                           dc.w $0310
[000c27e0]                           dc.b $00
[000c27e1]                           dc.b $00
[000c27e2]                           dc.w $0310
[000c27e4]                           dc.b $00
[000c27e5]                           dc.b $00
[000c27e6]                           dc.b $00
[000c27e7]                           dc.b $00
[000c27e8]                           dc.b 'MENU_01',0
[000c27f0]                           dc.b $00
[000c27f1]                           dc.b $00
[000c27f2]                           dc.b $00
[000c27f3]                           dc.b $00
[000c27f4]                           dc.b $00
[000c27f5]                           dc.b $00
[000c27f6]                           dc.b $00
[000c27f7]                           dc.b $00
[000c27f8]                           dc.b $00
[000c27f9]                           dc.b $00
[000c27fa]                           dc.b $00
[000c27fb]                           dc.b $00
[000c27fc]                           dc.b $00
[000c27fd]                           dc.b $00
[000c27fe]                           dc.b $00
[000c27ff]                           dc.b $00
[000c2800]                           dc.b $00
[000c2801]                           dc.b $00
[000c2802]                           dc.b $00
[000c2803]                           dc.b $00
[000c2804]                           dc.b $00
[000c2805]                           dc.b $00
[000c2806]                           dc.b $00
[000c2807]                           dc.b $00
[000c2808]                           dc.b $00
[000c2809]                           dc.b $01
[000c280a]                           dc.b $00
[000c280b]                           dc.b $00
[000c280c]                           dc.b $00
[000c280d]                           dc.b $00
[000c280e]                           dc.b $00
[000c280f]                           dc.b $00
[000c2810]                           dc.b $00
[000c2811]                           dc.b $00
[000c2812]                           dc.b $00
[000c2813]                           dc.b $00
list_menu:
[000c2814]                           dc.b $00
[000c2815]                           dc.b $00
[000c2816]                           dc.b $00
[000c2817]                           dc.b $00
[000c2818]                           dc.b $00
[000c2819]                           dc.b $00
[000c281a]                           dc.b $00
[000c281b]                           dc.b $00
[000c281c] 000bc8d6                  dc.l WI_MENU
[000c2820] 000c0c27                  dc.l me_list
[000c2824] 000c0c34                  dc.l me_name
[000c2828]                           dc.w $2711
[000c282a] 000c27d2                  dc.l protomenu
[000c282e] 00033eac                  dc.l copy_men
[000c2832] 00033f14                  dc.l del_men
[000c2836] 00033f90                  dc.l new_work
[000c283a]                           dc.l 0
