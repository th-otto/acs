
add_object:
[000340be] 48e7 003c                 movem.l    a2-a5,-(a7)
[000340c2] 2448                      movea.l    a0,a2
[000340c4] 2849                      movea.l    a1,a4
[000340c6] 006a 0001 0006            ori.w      #$0001,6(a2)
[000340cc] 266a 0018                 movea.l    24(a2),a3
[000340d0] 7038                      moveq.l    #56,d0
[000340d2] 204b                      movea.l    a3,a0
[000340d4] 4eb9 0001 62aa            jsr        objextent
[000340da] 4a40                      tst.w      d0
[000340dc] 6610                      bne.s      add_object_1
[000340de] 224c                      movea.l    a4,a1
[000340e0] 204a                      movea.l    a2,a0
[000340e2] 4eb9 0003 411a            jsr        copy_obj
[000340e8] 2a48                      movea.l    a0,a5
[000340ea] 200d                      move.l     a5,d0
[000340ec] 6604                      bne.s      add_object_2
add_object_1:
[000340ee] 91c8                      suba.l     a0,a0
[000340f0] 6022                      bra.s      add_object_3
add_object_2:
[000340f2] 2f39 000c 297e            move.l     $000C297E,-(a7)
[000340f8] 486c 0016                 pea.l      22(a4)
[000340fc] 224d                      movea.l    a5,a1
[000340fe] 204a                      movea.l    a2,a0
[00034100] 4eb9 0001 6448            jsr        objname
[00034106] 504f                      addq.w     #8,a7
[00034108] 224d                      movea.l    a5,a1
[0003410a] 204b                      movea.l    a3,a0
[0003410c] 4eb9 0003 1a94            jsr        add_entry
[00034112] 204d                      movea.l    a5,a0
add_object_3:
[00034114] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00034118] 4e75                      rts

copy_obj:
[0003411a] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0003411e] 2648                      movea.l    a0,a3
[00034120] 2449                      movea.l    a1,a2
[00034122] 202a 000e                 move.l     14(a2),d0
[00034126] 4eb9 0001 6230            jsr        objmalloc
[0003412c] 2848                      movea.l    a0,a4
[0003412e] 200c                      move.l     a4,d0
[00034130] 6604                      bne.s      copy_obj_1
[00034132] 91c8                      suba.l     a0,a0
[00034134] 6046                      bra.s      copy_obj_2
copy_obj_1:
[00034136] 202a 000e                 move.l     14(a2),d0
[0003413a] 7238                      moveq.l    #56,d1
[0003413c] 4eb9 0007 769e            jsr        _uldiv
[00034142] 2600                      move.l     d0,d3
[00034144] 2a6a 0004                 movea.l    4(a2),a5
[00034148] 2c6c 0004                 movea.l    4(a4),a6
[0003414c] 4244                      clr.w      d4
[0003414e] 6020                      bra.s      copy_obj_3
copy_obj_4:
[00034150] 3204                      move.w     d4,d1
[00034152] 48c1                      ext.l      d1
[00034154] 2001                      move.l     d1,d0
[00034156] e788                      lsl.l      #3,d0
[00034158] 9081                      sub.l      d1,d0
[0003415a] e788                      lsl.l      #3,d0
[0003415c] 4875 0800                 pea.l      0(a5,d0.l)
[00034160] 43f6 0800                 lea.l      0(a6,d0.l),a1
[00034164] 204b                      movea.l    a3,a0
[00034166] 4eb9 0002 b5ea            jsr        copy_ob
[0003416c] 584f                      addq.w     #4,a7
[0003416e] 5244                      addq.w     #1,d4
copy_obj_3:
[00034170] b644                      cmp.w      d4,d3
[00034172] 6edc                      bgt.s      copy_obj_4
[00034174] 296a 000e 000e            move.l     14(a2),14(a4)
[0003417a] 204c                      movea.l    a4,a0
copy_obj_2:
[0003417c] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00034180] 4e75                      rts

del_object:
[00034182] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00034186] 2448                      movea.l    a0,a2
[00034188] 2649                      movea.l    a1,a3
[0003418a] 006a 0001 0006            ori.w      #$0001,6(a2)
[00034190] 536b 0036                 subq.w     #1,54(a3)
[00034194] 302b 0036                 move.w     54(a3),d0
[00034198] 6e5e                      bgt.s      del_object_1
[0003419a] 286b 0012                 movea.l    18(a3),a4
[0003419e] 220c                      move.l     a4,d1
[000341a0] 670c                      beq.s      del_object_2
[000341a2] 2a6c 0004                 movea.l    4(a4),a5
[000341a6] 204c                      movea.l    a4,a0
[000341a8] 7002                      moveq.l    #2,d0
[000341aa] 93c9                      suba.l     a1,a1
[000341ac] 4e95                      jsr        (a5)
del_object_2:
[000341ae] 202b 000e                 move.l     14(a3),d0
[000341b2] 7238                      moveq.l    #56,d1
[000341b4] 4eb9 0007 769e            jsr        _uldiv
[000341ba] 2600                      move.l     d0,d3
[000341bc] 286b 0004                 movea.l    4(a3),a4
[000341c0] 4244                      clr.w      d4
[000341c2] 601a                      bra.s      del_object_3
del_object_4:
[000341c4] 3204                      move.w     d4,d1
[000341c6] 48c1                      ext.l      d1
[000341c8] 2001                      move.l     d1,d0
[000341ca] e788                      lsl.l      #3,d0
[000341cc] 9081                      sub.l      d1,d0
[000341ce] e788                      lsl.l      #3,d0
[000341d0] 43f4 0800                 lea.l      0(a4,d0.l),a1
[000341d4] 204a                      movea.l    a2,a0
[000341d6] 4eb9 0002 b8b6            jsr        del_ob
[000341dc] 5244                      addq.w     #1,d4
del_object_3:
[000341de] b644                      cmp.w      d4,d3
[000341e0] 6ee2                      bgt.s      del_object_4
[000341e2] 224b                      movea.l    a3,a1
[000341e4] 206a 0018                 movea.l    24(a2),a0
[000341e8] 4eb9 0003 1b00            jsr        del_entry
[000341ee] 224b                      movea.l    a3,a1
[000341f0] 204a                      movea.l    a2,a0
[000341f2] 4eb9 0001 61d4            jsr        objfree
del_object_1:
[000341f8] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[000341fc] 4e75                      rts

new_work:
[000341fe] 303c 2710                 move.w     #$2710,d0
[00034202] 2279 000b c9d2            movea.l    $000BC9D2,a1
[00034208] 4eb9 0003 24b6            jsr        work_icon
[0003420e] 4e75                      rts

		.data

protoobj:
[000c28f4]                           dc.b $00
[000c28f5]                           dc.b $00
[000c28f6]                           dc.b $00
[000c28f7]                           dc.b $00
[000c28f8]                           dc.b $00
[000c28f9]                           dc.b $00
[000c28fa]                           dc.b $00
[000c28fb]                           dc.b $00
[000c28fc]                           dc.w $ffff
[000c28fe]                           dc.w $ffff
[000c2900]                           dc.w $ffff
[000c2902]                           dc.b $00
[000c2903]                           dc.b $14
[000c2904]                           dc.b $00
[000c2905]                           dc.b $00
[000c2906]                           dc.b $00
[000c2907]                           dc.b $10
[000c2908]                           dc.b $00
[000c2909]                           dc.b $02
[000c290a]                           dc.w $1100
[000c290c]                           dc.b $00
[000c290d]                           dc.b $00
[000c290e]                           dc.b $00
[000c290f]                           dc.b $00
[000c2910]                           dc.b $00
[000c2911]                           dc.b $20
[000c2912]                           dc.b $00
[000c2913]                           dc.b $0c
[000c2914]                           dc.b $00
[000c2915]                           dc.b $00
[000c2916]                           dc.b $00
[000c2917]                           dc.b $00
[000c2918]                           dc.b $00
[000c2919]                           dc.b $00
[000c291a]                           dc.b $00
[000c291b]                           dc.b $00
[000c291c]                           dc.w $8000
[000c291e]                           dc.b $00
[000c291f]                           dc.b $00
[000c2920]                           dc.b $00
[000c2921]                           dc.b $00
[000c2922]                           dc.b $00
[000c2923]                           dc.b $00
[000c2924]                           dc.b $00
[000c2925]                           dc.b $00
[000c2926]                           dc.b $00
[000c2927]                           dc.b $00
[000c2928]                           dc.b $00
[000c2929]                           dc.b $00
[000c292a]                           dc.b $00
[000c292b]                           dc.b $00
protoobject:
[000c292c]                           dc.b $00
[000c292d]                           dc.b $00
[000c292e]                           dc.b $00
[000c292f]                           dc.b $00
[000c2930] 000c28f4                  dc.l protoobj
[000c2934]                           dc.b $00
[000c2935]                           dc.b $00
[000c2936]                           dc.b $00
[000c2937]                           dc.b $00
[000c2938]                           dc.b $00
[000c2939]                           dc.b $38
[000c293a]                           dc.b $00
[000c293b]                           dc.b $00
[000c293c]                           dc.b $00
[000c293d]                           dc.b $38
[000c293e]                           dc.b $00
[000c293f]                           dc.b $00
[000c2940]                           dc.b $00
[000c2941]                           dc.b $00
[000c2942]                           dc.b 'OBJECT_01',0
[000c294c]                           dc.b $00
[000c294d]                           dc.b $00
[000c294e]                           dc.b $00
[000c294f]                           dc.b $00
[000c2950]                           dc.b $00
[000c2951]                           dc.b $00
[000c2952]                           dc.b $00
[000c2953]                           dc.b $00
[000c2954]                           dc.b $00
[000c2955]                           dc.b $00
[000c2956]                           dc.b $00
[000c2957]                           dc.b $00
[000c2958]                           dc.b $00
[000c2959]                           dc.b $00
[000c295a]                           dc.b $00
[000c295b]                           dc.b $00
[000c295c]                           dc.b $00
[000c295d]                           dc.b $00
[000c295e]                           dc.b $00
[000c295f]                           dc.b $00
[000c2960]                           dc.b $00
[000c2961]                           dc.b $00
[000c2962]                           dc.b $00
[000c2963]                           dc.b $01
[000c2964]                           dc.b $00
[000c2965]                           dc.b $00
[000c2966]                           dc.b $00
[000c2967]                           dc.b $00
[000c2968]                           dc.b $00
[000c2969]                           dc.b $00
[000c296a]                           dc.b $00
[000c296b]                           dc.b $00
[000c296c]                           dc.b $00
[000c296d]                           dc.b $00
list_object:
[000c296e]                           dc.b $00
[000c296f]                           dc.b $00
[000c2970]                           dc.b $00
[000c2971]                           dc.b $00
[000c2972]                           dc.b $00
[000c2973]                           dc.b $00
[000c2974]                           dc.b $00
[000c2975]                           dc.b $00
[000c2976] 000bc978                  dc.l WI_OBJECT
[000c297a] 000c0c5f                  dc.l ob_list
[000c297e] 000c0c73                  dc.l ob_name
[000c2982]                           dc.w $2710
[000c2984] 000c292c                  dc.l protoobject
[000c2988] 0003411a                  dc.l copy_obj
[000c298c] 00034182                  dc.l del_object
[000c2990] 000341fe                  dc.l new_work
[000c2994]                           dc.l 0
