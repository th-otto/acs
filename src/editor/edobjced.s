
ob_make:
[0002385c] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00023860] 4fef ffb4                 lea.l      -76(a7),a7
[00023864] 2848                      movea.l    a0,a4
[00023866] 2f6c 0004 0048            move.l     4(a4),72(a7)
[0002386c] 226f 0048                 movea.l    72(a7),a1
[00023870] 2f69 0012 0040            move.l     18(a1),64(a7)
[00023876] 202f 0040                 move.l     64(a7),d0
[0002387a] 670c                      beq.s      ob_make_1
[0002387c] 2040                      movea.l    d0,a0
[0002387e] 4eb9 0004 f0ca            jsr        Awi_show
[00023884] 6000 025a                 bra        ob_make_2
ob_make_1:
[00023888] 7032                      moveq.l    #50,d0
[0002388a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00023890] 2f48 0044                 move.l     a0,68(a7)
[00023894] 2008                      move.l     a0,d0
[00023896] 6700 0244                 beq        ob_make_3
[0002389a] 2094                      move.l     (a4),(a0)
[0002389c] 216c 0004 0004            move.l     4(a4),4(a0)
[000238a2] 317c 0001 0008            move.w     #$0001,8(a0)
[000238a8] 317c 0002 0018            move.w     #$0002,24(a0)
[000238ae] 4268 000a                 clr.w      10(a0)
[000238b2] 42a8 001e                 clr.l      30(a0)
[000238b6] 47f9 000b c978            lea.l      WI_OBJECT,a3
[000238bc] 206f 0048                 movea.l    72(a7),a0
[000238c0] 41e8 0016                 lea.l      22(a0),a0
[000238c4] 2748 004e                 move.l     a0,78(a3)
[000238c8] 226b 005a                 movea.l    90(a3),a1
[000238cc] 2348 0008                 move.l     a0,8(a1)
[000238d0] 204b                      movea.l    a3,a0
[000238d2] 4eb9 0004 f41a            jsr        Awi_create
[000238d8] 2f48 0040                 move.l     a0,64(a7)
[000238dc] 2008                      move.l     a0,d0
[000238de] 660e                      bne.s      ob_make_4
[000238e0] 206f 0044                 movea.l    68(a7),a0
[000238e4] 4eb9 0004 7e26            jsr        Ax_free
[000238ea] 6000 01f0                 bra        ob_make_3
ob_make_4:
[000238ee] 2054                      movea.l    (a4),a0
[000238f0] 4868 0168                 pea.l      360(a0)
[000238f4] 226f 004c                 movea.l    76(a7),a1
[000238f8] 43e9 003a                 lea.l      58(a1),a1
[000238fc] 206f 0044                 movea.l    68(a7),a0
[00023900] 4eb9 0001 47a8            jsr        wi_pos
[00023906] 584f                      addq.w     #4,a7
[00023908] 206f 0040                 movea.l    64(a7),a0
[0002390c] 20af 0044                 move.l     68(a7),(a0)
[00023910] 226f 0048                 movea.l    72(a7),a1
[00023914] 2348 0012                 move.l     a0,18(a1)
[00023918] 203c 0000 02ba            move.l     #$000002BA,d0
[0002391e] 4eb9 0004 7cc8            jsr        Ax_malloc
[00023924] 2e88                      move.l     a0,(a7)
[00023926] 2008                      move.l     a0,d0
[00023928] 6700 01b2                 beq        ob_make_3
[0002392c] 41e8 001f                 lea.l      31(a0),a0
[00023930] 2f48 0004                 move.l     a0,4(a7)
[00023934] 41e8 001f                 lea.l      31(a0),a0
[00023938] 2f48 0008                 move.l     a0,8(a7)
[0002393c] 41e8 001f                 lea.l      31(a0),a0
[00023940] 2f48 000c                 move.l     a0,12(a7)
[00023944] 41e8 001f                 lea.l      31(a0),a0
[00023948] 2f48 0010                 move.l     a0,16(a7)
[0002394c] 41e8 001f                 lea.l      31(a0),a0
[00023950] 2f48 0014                 move.l     a0,20(a7)
[00023954] 41e8 001f                 lea.l      31(a0),a0
[00023958] 2f48 0018                 move.l     a0,24(a7)
[0002395c] 41e8 0100                 lea.l      256(a0),a0
[00023960] 2f48 001c                 move.l     a0,28(a7)
[00023964] 43f9 000a f14c            lea.l      $000AF14C,a1
[0002396a] 2057                      movea.l    (a7),a0
[0002396c] 4eb9 0007 6950            jsr        strcpy
[00023972] 2f57 0020                 move.l     (a7),32(a7)
[00023976] 2f6f 0004 0024            move.l     4(a7),36(a7)
[0002397c] 2f6f 0008 0028            move.l     8(a7),40(a7)
[00023982] 2f6f 000c 002c            move.l     12(a7),44(a7)
[00023988] 2f6f 0010 0030            move.l     16(a7),48(a7)
[0002398e] 2f6f 0014 0034            move.l     20(a7),52(a7)
[00023994] 206f 0040                 movea.l    64(a7),a0
[00023998] 2f50 003c                 move.l     (a0),60(a7)
[0002399c] 226f 003c                 movea.l    60(a7),a1
[000239a0] 2869 0004                 movea.l    4(a1),a4
[000239a4] 2f6c 0004 0038            move.l     4(a4),56(a7)
[000239aa] 202c 000e                 move.l     14(a4),d0
[000239ae] 7238                      moveq.l    #56,d1
[000239b0] 4eb9 0007 769e            jsr        _uldiv
[000239b6] 2600                      move.l     d0,d3
[000239b8] 6000 00f2                 bra        ob_make_5
ob_make_12:
[000239bc] 202f 0038                 move.l     56(a7),d0
[000239c0] 6700 00e0                 beq        ob_make_6
[000239c4] 2040                      movea.l    d0,a0
[000239c6] 0c28 0018 000f            cmpi.b     #$18,15(a0)
[000239cc] 6600 00d4                 bne        ob_make_6
[000239d0] 2868 0014                 movea.l    20(a0),a4
[000239d4] 220c                      move.l     a4,d1
[000239d6] 6700 00ca                 beq        ob_make_6
[000239da] 246c 0004                 movea.l    4(a4),a2
[000239de] 220a                      move.l     a2,d1
[000239e0] 6700 00c0                 beq        ob_make_6
[000239e4] 43f9 000a f157            lea.l      $000AF157,a1
[000239ea] 2052                      movea.l    (a2),a0
[000239ec] 41e8 0016                 lea.l      22(a0),a0
[000239f0] 4eb9 0007 68fe            jsr        strcmp
[000239f6] 4a40                      tst.w      d0
[000239f8] 6600 00a8                 bne        ob_make_6
[000239fc] 226f 0004                 movea.l    4(a7),a1
[00023a00] 206a 0004                 movea.l    4(a2),a0
[00023a04] 4eb9 0001 3fb6            jsr        set_ref
[00023a0a] 226f 0008                 movea.l    8(a7),a1
[00023a0e] 206a 0008                 movea.l    8(a2),a0
[00023a12] 4eb9 0001 3fb6            jsr        set_ref
[00023a18] 226f 000c                 movea.l    12(a7),a1
[00023a1c] 206a 000c                 movea.l    12(a2),a0
[00023a20] 4eb9 0001 3fb6            jsr        set_ref
[00023a26] 226f 0010                 movea.l    16(a7),a1
[00023a2a] 206a 0010                 movea.l    16(a2),a0
[00023a2e] 4eb9 0001 3fb6            jsr        set_ref
[00023a34] 226f 0014                 movea.l    20(a7),a1
[00023a38] 206a 0014                 movea.l    20(a2),a0
[00023a3c] 4eb9 0001 3fb6            jsr        set_ref
[00023a42] 202a 0018                 move.l     24(a2),d0
[00023a46] 6608                      bne.s      ob_make_7
[00023a48] 206f 0018                 movea.l    24(a7),a0
[00023a4c] 4210                      clr.b      (a0)
[00023a4e] 6012                      bra.s      ob_make_8
ob_make_7:
[00023a50] 206a 0018                 movea.l    24(a2),a0
[00023a54] 2268 0004                 movea.l    4(a0),a1
[00023a58] 206f 0018                 movea.l    24(a7),a0
[00023a5c] 4eb9 0007 6950            jsr        strcpy
ob_make_8:
[00023a62] 202a 001c                 move.l     28(a2),d0
[00023a66] 6608                      bne.s      ob_make_9
[00023a68] 206f 001c                 movea.l    28(a7),a0
[00023a6c] 4210                      clr.b      (a0)
[00023a6e] 6012                      bra.s      ob_make_10
ob_make_9:
[00023a70] 206a 001c                 movea.l    28(a2),a0
[00023a74] 2268 0004                 movea.l    4(a0),a1
[00023a78] 206f 001c                 movea.l    28(a7),a0
[00023a7c] 4eb9 0007 6950            jsr        strcpy
ob_make_10:
[00023a82] 486f 0020                 pea.l      32(a7)
[00023a86] 224c                      movea.l    a4,a1
[00023a88] 206f 0040                 movea.l    64(a7),a0
[00023a8c] 2050                      movea.l    (a0),a0
[00023a8e] 4eb9 0003 39be            jsr        change_user
[00023a94] 584f                      addq.w     #4,a7
[00023a96] 2008                      move.l     a0,d0
[00023a98] 6708                      beq.s      ob_make_6
[00023a9a] 226f 0038                 movea.l    56(a7),a1
[00023a9e] 2340 0014                 move.l     d0,20(a1)
ob_make_6:
[00023aa2] 06af 0000 0038 0038       addi.l     #$00000038,56(a7)
[00023aaa] 5343                      subq.w     #1,d3
ob_make_5:
[00023aac] 202f 0038                 move.l     56(a7),d0
[00023ab0] 6706                      beq.s      ob_make_11
[00023ab2] 4a43                      tst.w      d3
[00023ab4] 6600 ff06                 bne        ob_make_12
ob_make_11:
[00023ab8] 41d7                      lea.l      (a7),a0
[00023aba] 4eb9 0004 7e26            jsr        Ax_free
[00023ac0] 206f 0040                 movea.l    64(a7),a0
[00023ac4] 226f 0040                 movea.l    64(a7),a1
[00023ac8] 2269 000c                 movea.l    12(a1),a1
[00023acc] 4e91                      jsr        (a1)
[00023ace] 4a40                      tst.w      d0
[00023ad0] 670e                      beq.s      ob_make_2
[00023ad2] 206f 0040                 movea.l    64(a7),a0
[00023ad6] 4eb9 0002 af6a            jsr        ed_term
ob_make_3:
[00023adc] 91c8                      suba.l     a0,a0
[00023ade] 6004                      bra.s      ob_make_13
ob_make_2:
[00023ae0] 206f 0040                 movea.l    64(a7),a0
ob_make_13:
[00023ae4] 4fef 004c                 lea.l      76(a7),a7
[00023ae8] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00023aec] 4e75                      rts

	.data
[000af14c]                           dc.b 'A_checkbox',0
[000af157]                           dc.b 'A_radiobutton',0
	.even
