Ast_create:
[000436d6] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[000436da] 2448                      movea.l    a0,a2
[000436dc] 200a                      move.l     a2,d0
[000436de] 6730                      beq.s      $00043710
[000436e0] 1210                      move.b     (a0),d1
[000436e2] 672c                      beq.s      $00043710
[000436e4] 4eb9 0007 69b0            jsr        $000769B0
[000436ea] 2600                      move.l     d0,d3
[000436ec] 5283                      addq.l     #1,d3
[000436ee] 2003                      move.l     d3,d0
[000436f0] 4eb9 0004 7cc8            jsr        Ax_malloc
[000436f6] 2648                      movea.l    a0,a3
[000436f8] 200b                      move.l     a3,d0
[000436fa] 6604                      bne.s      $00043700
[000436fc] 91c8                      suba.l     a0,a0
[000436fe] 6016                      bra.s      $00043716
[00043700] 2003                      move.l     d3,d0
[00043702] 224a                      movea.l    a2,a1
[00043704] 204b                      movea.l    a3,a0
[00043706] 4eb9 0007 6f44            jsr        $00076F44
[0004370c] 204b                      movea.l    a3,a0
[0004370e] 6006                      bra.s      $00043716
[00043710] 41f9 000d 3660            lea.l      $000D3660,a0
[00043716] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0004371a] 4e75                      rts
Ast_delete:
[0004371c] b1fc 000d 3660            cmpa.l     #$000D3660,a0
[00043722] 6706                      beq.s      $0004372A
[00043724] 4eb9 0004 7e26            jsr        $00047E26
[0004372a] 4e75                      rts
Ach_toupper:
[0004372c] 4880                      ext.w      d0
[0004372e] 4eb9 0004 1e1e            jsr        $00041E1E
[00043734] 4e75                      rts
Ach_tolower:
[00043736] 4880                      ext.w      d0
[00043738] 4eb9 0004 1e2e            jsr        $00041E2E
[0004373e] 4e75                      rts
Ast_toupper:
[00043740] 2f0a                      move.l     a2,-(a7)
[00043742] 2f0b                      move.l     a3,-(a7)
[00043744] 2448                      movea.l    a0,a2
[00043746] 200a                      move.l     a2,d0
[00043748] 6606                      bne.s      $00043750
[0004374a] 45f9 000d 3660            lea.l      $000D3660,a2
[00043750] 200a                      move.l     a2,d0
[00043752] 6716                      beq.s      $0004376A
[00043754] 264a                      movea.l    a2,a3
[00043756] 600e                      bra.s      $00043766
[00043758] 1013                      move.b     (a3),d0
[0004375a] 4880                      ext.w      d0
[0004375c] 4eb9 0004 1e1e            jsr        $00041E1E
[00043762] 1680                      move.b     d0,(a3)
[00043764] 524b                      addq.w     #1,a3
[00043766] 1013                      move.b     (a3),d0
[00043768] 66ee                      bne.s      $00043758
[0004376a] 204a                      movea.l    a2,a0
[0004376c] 265f                      movea.l    (a7)+,a3
[0004376e] 245f                      movea.l    (a7)+,a2
[00043770] 4e75                      rts
Ast_tolower:
[00043772] 2f0a                      move.l     a2,-(a7)
[00043774] 2f0b                      move.l     a3,-(a7)
[00043776] 2448                      movea.l    a0,a2
[00043778] 200a                      move.l     a2,d0
[0004377a] 6606                      bne.s      $00043782
[0004377c] 45f9 000d 3660            lea.l      $000D3660,a2
[00043782] 200a                      move.l     a2,d0
[00043784] 6716                      beq.s      $0004379C
[00043786] 264a                      movea.l    a2,a3
[00043788] 600e                      bra.s      $00043798
[0004378a] 1013                      move.b     (a3),d0
[0004378c] 4880                      ext.w      d0
[0004378e] 4eb9 0004 1e2e            jsr        $00041E2E
[00043794] 1680                      move.b     d0,(a3)
[00043796] 524b                      addq.w     #1,a3
[00043798] 1013                      move.b     (a3),d0
[0004379a] 66ee                      bne.s      $0004378A
[0004379c] 204a                      movea.l    a2,a0
[0004379e] 265f                      movea.l    (a7)+,a3
[000437a0] 245f                      movea.l    (a7)+,a2
[000437a2] 4e75                      rts
Ast_ltrim:
[000437a4] 2f0a                      move.l     a2,-(a7)
[000437a6] 2f0b                      move.l     a3,-(a7)
[000437a8] 2448                      movea.l    a0,a2
[000437aa] 200a                      move.l     a2,d0
[000437ac] 6606                      bne.s      $000437B4
[000437ae] 45f9 000d 3660            lea.l      $000D3660,a2
[000437b4] 264a                      movea.l    a2,a3
[000437b6] 6002                      bra.s      $000437BA
[000437b8] 524b                      addq.w     #1,a3
[000437ba] 1013                      move.b     (a3),d0
[000437bc] 670a                      beq.s      $000437C8
[000437be] 4eb9 0004 3a74            jsr        $00043A74
[000437c4] 4a40                      tst.w      d0
[000437c6] 66f0                      bne.s      $000437B8
[000437c8] 1013                      move.b     (a3),d0
[000437ca] 6714                      beq.s      $000437E0
[000437cc] b5cb                      cmpa.l     a3,a2
[000437ce] 6410                      bcc.s      $000437E0
[000437d0] 204a                      movea.l    a2,a0
[000437d2] 6006                      bra.s      $000437DA
[000437d4] 1093                      move.b     (a3),(a0)
[000437d6] 524b                      addq.w     #1,a3
[000437d8] 5248                      addq.w     #1,a0
[000437da] 1013                      move.b     (a3),d0
[000437dc] 66f6                      bne.s      $000437D4
[000437de] 4210                      clr.b      (a0)
[000437e0] 204a                      movea.l    a2,a0
[000437e2] 265f                      movea.l    (a7)+,a3
[000437e4] 245f                      movea.l    (a7)+,a2
[000437e6] 4e75                      rts
Ast_rtrim:
[000437e8] 2f0a                      move.l     a2,-(a7)
[000437ea] 2f0b                      move.l     a3,-(a7)
[000437ec] 2448                      movea.l    a0,a2
[000437ee] 200a                      move.l     a2,d0
[000437f0] 6606                      bne.s      $000437F8
[000437f2] 45f9 000d 3660            lea.l      $000D3660,a2
[000437f8] 264a                      movea.l    a2,a3
[000437fa] 6002                      bra.s      $000437FE
[000437fc] 524b                      addq.w     #1,a3
[000437fe] 1013                      move.b     (a3),d0
[00043800] 66fa                      bne.s      $000437FC
[00043802] 534b                      subq.w     #1,a3
[00043804] b5cb                      cmpa.l     a3,a2
[00043806] 640c                      bcc.s      $00043814
[00043808] 1013                      move.b     (a3),d0
[0004380a] 4eb9 0004 3a74            jsr        $00043A74
[00043810] 4a40                      tst.w      d0
[00043812] 66ee                      bne.s      $00043802
[00043814] b5cb                      cmpa.l     a3,a2
[00043816] 6218                      bhi.s      $00043830
[00043818] 1013                      move.b     (a3),d0
[0004381a] 6710                      beq.s      $0004382C
[0004381c] 4eb9 0004 3a74            jsr        $00043A74
[00043822] 4a40                      tst.w      d0
[00043824] 6606                      bne.s      $0004382C
[00043826] 524b                      addq.w     #1,a3
[00043828] 4213                      clr.b      (a3)
[0004382a] 6006                      bra.s      $00043832
[0004382c] 4213                      clr.b      (a3)
[0004382e] 6002                      bra.s      $00043832
[00043830] 4212                      clr.b      (a2)
[00043832] 204a                      movea.l    a2,a0
[00043834] 265f                      movea.l    (a7)+,a3
[00043836] 245f                      movea.l    (a7)+,a2
[00043838] 4e75                      rts
Ast_alltrim:
[0004383a] 2f0a                      move.l     a2,-(a7)
[0004383c] 2448                      movea.l    a0,a2
[0004383e] 200a                      move.l     a2,d0
[00043840] 670a                      beq.s      $0004384C
[00043842] 6100 ff60                 bsr        $000437A4
[00043846] 6100 ffa0                 bsr.w      $000437E8
[0004384a] 6006                      bra.s      $00043852
[0004384c] 41f9 000d 3660            lea.l      $000D3660,a0
[00043852] 245f                      movea.l    (a7)+,a2
[00043854] 4e75                      rts
Ast_cmp:
[00043856] 2f0a                      move.l     a2,-(a7)
[00043858] 2f0b                      move.l     a3,-(a7)
[0004385a] 45f9 000d 3660            lea.l      $000D3660,a2
[00043860] 2008                      move.l     a0,d0
[00043862] 6602                      bne.s      $00043866
[00043864] 204a                      movea.l    a2,a0
[00043866] 2009                      move.l     a1,d0
[00043868] 6602                      bne.s      $0004386C
[0004386a] 224a                      movea.l    a2,a1
[0004386c] 2648                      movea.l    a0,a3
[0004386e] 2449                      movea.l    a1,a2
[00043870] 6016                      bra.s      $00043888
[00043872] 1013                      move.b     (a3),d0
[00043874] b012                      cmp.b      (a2),d0
[00043876] 670c                      beq.s      $00043884
[00043878] b012                      cmp.b      (a2),d0
[0004387a] 6f04                      ble.s      $00043880
[0004387c] 7001                      moveq.l    #1,d0
[0004387e] 6002                      bra.s      $00043882
[00043880] 70ff                      moveq.l    #-1,d0
[00043882] 6022                      bra.s      $000438A6
[00043884] 524b                      addq.w     #1,a3
[00043886] 524a                      addq.w     #1,a2
[00043888] 1013                      move.b     (a3),d0
[0004388a] 6704                      beq.s      $00043890
[0004388c] 1212                      move.b     (a2),d1
[0004388e] 66e2                      bne.s      $00043872
[00043890] 1013                      move.b     (a3),d0
[00043892] b012                      cmp.b      (a2),d0
[00043894] 6f04                      ble.s      $0004389A
[00043896] 7001                      moveq.l    #1,d0
[00043898] 600c                      bra.s      $000438A6
[0004389a] 1013                      move.b     (a3),d0
[0004389c] b012                      cmp.b      (a2),d0
[0004389e] 6c04                      bge.s      $000438A4
[000438a0] 70ff                      moveq.l    #-1,d0
[000438a2] 6002                      bra.s      $000438A6
[000438a4] 4240                      clr.w      d0
[000438a6] 265f                      movea.l    (a7)+,a3
[000438a8] 245f                      movea.l    (a7)+,a2
[000438aa] 4e75                      rts
Ast_icmp:
[000438ac] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000438b0] 45f9 000d 3660            lea.l      $000D3660,a2
[000438b6] 2008                      move.l     a0,d0
[000438b8] 6602                      bne.s      $000438BC
[000438ba] 204a                      movea.l    a2,a0
[000438bc] 2009                      move.l     a1,d0
[000438be] 6602                      bne.s      $000438C2
[000438c0] 224a                      movea.l    a2,a1
[000438c2] 2848                      movea.l    a0,a4
[000438c4] 2649                      movea.l    a1,a3
[000438c6] 602c                      bra.s      $000438F4
[000438c8] 1014                      move.b     (a4),d0
[000438ca] 4880                      ext.w      d0
[000438cc] 4eb9 0004 1e1e            jsr        $00041E1E
[000438d2] 3600                      move.w     d0,d3
[000438d4] 1013                      move.b     (a3),d0
[000438d6] 4880                      ext.w      d0
[000438d8] 4eb9 0004 1e1e            jsr        $00041E1E
[000438de] b003                      cmp.b      d3,d0
[000438e0] 670e                      beq.s      $000438F0
[000438e2] b003                      cmp.b      d3,d0
[000438e4] 6c04                      bge.s      $000438EA
[000438e6] 7201                      moveq.l    #1,d1
[000438e8] 6002                      bra.s      $000438EC
[000438ea] 72ff                      moveq.l    #-1,d1
[000438ec] 3001                      move.w     d1,d0
[000438ee] 6022                      bra.s      $00043912
[000438f0] 524c                      addq.w     #1,a4
[000438f2] 524b                      addq.w     #1,a3
[000438f4] 1014                      move.b     (a4),d0
[000438f6] 6704                      beq.s      $000438FC
[000438f8] 1213                      move.b     (a3),d1
[000438fa] 66cc                      bne.s      $000438C8
[000438fc] 1014                      move.b     (a4),d0
[000438fe] b013                      cmp.b      (a3),d0
[00043900] 6f04                      ble.s      $00043906
[00043902] 7001                      moveq.l    #1,d0
[00043904] 600c                      bra.s      $00043912
[00043906] 1014                      move.b     (a4),d0
[00043908] b013                      cmp.b      (a3),d0
[0004390a] 6c04                      bge.s      $00043910
[0004390c] 70ff                      moveq.l    #-1,d0
[0004390e] 6002                      bra.s      $00043912
[00043910] 4240                      clr.w      d0
[00043912] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00043916] 4e75                      rts
Ast_ncmp:
[00043918] 2f0a                      move.l     a2,-(a7)
[0004391a] 2f0b                      move.l     a3,-(a7)
[0004391c] 45f9 000d 3660            lea.l      $000D3660,a2
[00043922] 2208                      move.l     a0,d1
[00043924] 6602                      bne.s      $00043928
[00043926] 204a                      movea.l    a2,a0
[00043928] 2209                      move.l     a1,d1
[0004392a] 6602                      bne.s      $0004392E
[0004392c] 224a                      movea.l    a2,a1
[0004392e] 4241                      clr.w      d1
[00043930] 2648                      movea.l    a0,a3
[00043932] 2449                      movea.l    a1,a2
[00043934] 6018                      bra.s      $0004394E
[00043936] 1413                      move.b     (a3),d2
[00043938] b412                      cmp.b      (a2),d2
[0004393a] 670c                      beq.s      $00043948
[0004393c] b412                      cmp.b      (a2),d2
[0004393e] 6f04                      ble.s      $00043944
[00043940] 7001                      moveq.l    #1,d0
[00043942] 6002                      bra.s      $00043946
[00043944] 70ff                      moveq.l    #-1,d0
[00043946] 6032                      bra.s      $0004397A
[00043948] 524b                      addq.w     #1,a3
[0004394a] 524a                      addq.w     #1,a2
[0004394c] 5241                      addq.w     #1,d1
[0004394e] 1413                      move.b     (a3),d2
[00043950] 6708                      beq.s      $0004395A
[00043952] 1412                      move.b     (a2),d2
[00043954] 6704                      beq.s      $0004395A
[00043956] b041                      cmp.w      d1,d0
[00043958] 6edc                      bgt.s      $00043936
[0004395a] b041                      cmp.w      d1,d0
[0004395c] 6e04                      bgt.s      $00043962
[0004395e] 4242                      clr.w      d2
[00043960] 6016                      bra.s      $00043978
[00043962] 1413                      move.b     (a3),d2
[00043964] b412                      cmp.b      (a2),d2
[00043966] 6f04                      ble.s      $0004396C
[00043968] 7401                      moveq.l    #1,d2
[0004396a] 600c                      bra.s      $00043978
[0004396c] 1413                      move.b     (a3),d2
[0004396e] b412                      cmp.b      (a2),d2
[00043970] 6c04                      bge.s      $00043976
[00043972] 74ff                      moveq.l    #-1,d2
[00043974] 6002                      bra.s      $00043978
[00043976] 4242                      clr.w      d2
[00043978] 3002                      move.w     d2,d0
[0004397a] 265f                      movea.l    (a7)+,a3
[0004397c] 245f                      movea.l    (a7)+,a2
[0004397e] 4e75                      rts
Ast_incmp:
[00043980] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[00043984] 3a00                      move.w     d0,d5
[00043986] 45f9 000d 3660            lea.l      $000D3660,a2
[0004398c] 2008                      move.l     a0,d0
[0004398e] 6602                      bne.s      $00043992
[00043990] 204a                      movea.l    a2,a0
[00043992] 2009                      move.l     a1,d0
[00043994] 6602                      bne.s      $00043998
[00043996] 224a                      movea.l    a2,a1
[00043998] 4243                      clr.w      d3
[0004399a] 2848                      movea.l    a0,a4
[0004399c] 2649                      movea.l    a1,a3
[0004399e] 602e                      bra.s      $000439CE
[000439a0] 1014                      move.b     (a4),d0
[000439a2] 4880                      ext.w      d0
[000439a4] 4eb9 0004 1e1e            jsr        $00041E1E
[000439aa] 3800                      move.w     d0,d4
[000439ac] 1013                      move.b     (a3),d0
[000439ae] 4880                      ext.w      d0
[000439b0] 4eb9 0004 1e1e            jsr        $00041E1E
[000439b6] b004                      cmp.b      d4,d0
[000439b8] 670e                      beq.s      $000439C8
[000439ba] b004                      cmp.b      d4,d0
[000439bc] 6c04                      bge.s      $000439C2
[000439be] 7201                      moveq.l    #1,d1
[000439c0] 6002                      bra.s      $000439C4
[000439c2] 72ff                      moveq.l    #-1,d1
[000439c4] 3001                      move.w     d1,d0
[000439c6] 6030                      bra.s      $000439F8
[000439c8] 524c                      addq.w     #1,a4
[000439ca] 524b                      addq.w     #1,a3
[000439cc] 5243                      addq.w     #1,d3
[000439ce] 1014                      move.b     (a4),d0
[000439d0] 6708                      beq.s      $000439DA
[000439d2] 1213                      move.b     (a3),d1
[000439d4] 6704                      beq.s      $000439DA
[000439d6] ba43                      cmp.w      d3,d5
[000439d8] 6ec6                      bgt.s      $000439A0
[000439da] ba43                      cmp.w      d3,d5
[000439dc] 6e04                      bgt.s      $000439E2
[000439de] 4240                      clr.w      d0
[000439e0] 6016                      bra.s      $000439F8
[000439e2] 1014                      move.b     (a4),d0
[000439e4] b013                      cmp.b      (a3),d0
[000439e6] 6f04                      ble.s      $000439EC
[000439e8] 7001                      moveq.l    #1,d0
[000439ea] 600c                      bra.s      $000439F8
[000439ec] 1014                      move.b     (a4),d0
[000439ee] b013                      cmp.b      (a3),d0
[000439f0] 6c04                      bge.s      $000439F6
[000439f2] 70ff                      moveq.l    #-1,d0
[000439f4] 6002                      bra.s      $000439F8
[000439f6] 4240                      clr.w      d0
[000439f8] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[000439fc] 4e75                      rts
Ast_istr:
[000439fe] 48e7 1e38                 movem.l    d3-d6/a2-a4,-(a7)
[00043a02] 2448                      movea.l    a0,a2
[00043a04] 2649                      movea.l    a1,a3
[00043a06] 41f9 000d 3660            lea.l      $000D3660,a0
[00043a0c] 200a                      move.l     a2,d0
[00043a0e] 6602                      bne.s      $00043A12
[00043a10] 2448                      movea.l    a0,a2
[00043a12] 200b                      move.l     a3,d0
[00043a14] 6602                      bne.s      $00043A18
[00043a16] 2648                      movea.l    a0,a3
[00043a18] 204b                      movea.l    a3,a0
[00043a1a] 4eb9 0007 69b0            jsr        $000769B0
[00043a20] 2600                      move.l     d0,d3
[00043a22] 204a                      movea.l    a2,a0
[00043a24] 4eb9 0007 69b0            jsr        $000769B0
[00043a2a] 2800                      move.l     d0,d4
[00043a2c] 204b                      movea.l    a3,a0
[00043a2e] 4eb9 0007 69b0            jsr        $000769B0
[00043a34] 9840                      sub.w      d0,d4
[00043a36] 5244                      addq.w     #1,d4
[00043a38] 284a                      movea.l    a2,a4
[00043a3a] 4246                      clr.w      d6
[00043a3c] 3a06                      move.w     d6,d5
[00043a3e] 6018                      bra.s      $00043A58
[00043a40] 3003                      move.w     d3,d0
[00043a42] 224b                      movea.l    a3,a1
[00043a44] 204c                      movea.l    a4,a0
[00043a46] 6100 ff38                 bsr        $00043980
[00043a4a] 4a40                      tst.w      d0
[00043a4c] 6604                      bne.s      $00043A52
[00043a4e] 7c01                      moveq.l    #1,d6
[00043a50] 6002                      bra.s      $00043A54
[00043a52] 4246                      clr.w      d6
[00043a54] 524c                      addq.w     #1,a4
[00043a56] 5245                      addq.w     #1,d5
[00043a58] 4a46                      tst.w      d6
[00043a5a] 6608                      bne.s      $00043A64
[00043a5c] b845                      cmp.w      d5,d4
[00043a5e] 6f04                      ble.s      $00043A64
[00043a60] 1014                      move.b     (a4),d0
[00043a62] 66dc                      bne.s      $00043A40
[00043a64] 4a46                      tst.w      d6
[00043a66] 6704                      beq.s      $00043A6C
[00043a68] 204c                      movea.l    a4,a0
[00043a6a] 6002                      bra.s      $00043A6E
[00043a6c] 91c8                      suba.l     a0,a0
[00043a6e] 4cdf 1c78                 movem.l    (a7)+,d3-d6/a2-a4
[00043a72] 4e75                      rts
Ach_isWhite:
[00043a74] 4a00                      tst.b      d0
[00043a76] 6716                      beq.s      $00043A8E
[00043a78] 4880                      ext.w      d0
[00043a7a] 41f9 000d 3666            lea.l      $000D3666,a0
[00043a80] 4eb9 0007 68ce            jsr        $000768CE
[00043a86] 2008                      move.l     a0,d0
[00043a88] 6704                      beq.s      $00043A8E
[00043a8a] 7001                      moveq.l    #1,d0
[00043a8c] 4e75                      rts
[00043a8e] 4240                      clr.w      d0
[00043a90] 4e75                      rts
Ast_isEmpty:
[00043a92] 2f0a                      move.l     a2,-(a7)
[00043a94] 2448                      movea.l    a0,a2
[00043a96] 6002                      bra.s      $00043A9A
[00043a98] 524a                      addq.w     #1,a2
[00043a9a] 200a                      move.l     a2,d0
[00043a9c] 670e                      beq.s      $00043AAC
[00043a9e] 1212                      move.b     (a2),d1
[00043aa0] 670a                      beq.s      $00043AAC
[00043aa2] 1001                      move.b     d1,d0
[00043aa4] 6100 ffce                 bsr.w      $00043A74
[00043aa8] 4a40                      tst.w      d0
[00043aaa] 66ec                      bne.s      $00043A98
[00043aac] 200a                      move.l     a2,d0
[00043aae] 670e                      beq.s      $00043ABE
[00043ab0] 1212                      move.b     (a2),d1
[00043ab2] 670a                      beq.s      $00043ABE
[00043ab4] 1001                      move.b     d1,d0
[00043ab6] 6100 ffbc                 bsr.w      $00043A74
[00043aba] 4a40                      tst.w      d0
[00043abc] 6704                      beq.s      $00043AC2
[00043abe] 7001                      moveq.l    #1,d0
[00043ac0] 6002                      bra.s      $00043AC4
[00043ac2] 4240                      clr.w      d0
[00043ac4] 245f                      movea.l    (a7)+,a2
[00043ac6] 4e75                      rts
Ast_add:
[00043ac8] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[00043acc] 3c00                      move.w     d0,d6
[00043ace] 2648                      movea.l    a0,a3
[00043ad0] 95ca                      suba.l     a2,a2
[00043ad2] 76ff                      moveq.l    #-1,d3
[00043ad4] 220b                      move.l     a3,d1
[00043ad6] 660a                      bne.s      $00043AE2
[00043ad8] 41f9 000d 3660            lea.l      $000D3660,a0
[00043ade] 6000 0078                 bra.w      $00043B58
[00043ae2] 49ef 0024                 lea.l      36(a7),a4
[00043ae6] 4213                      clr.b      (a3)
[00043ae8] 4244                      clr.w      d4
[00043aea] 6056                      bra.s      $00043B42
[00043aec] 2a5c                      movea.l    (a4)+,a5
[00043aee] 200d                      move.l     a5,d0
[00043af0] 674e                      beq.s      $00043B40
[00043af2] 1215                      move.b     (a5),d1
[00043af4] 674a                      beq.s      $00043B40
[00043af6] 204d                      movea.l    a5,a0
[00043af8] 4eb9 0007 69b0            jsr        $000769B0
[00043afe] 2a00                      move.l     d0,d5
[00043b00] b685                      cmp.l      d5,d3
[00043b02] 6c22                      bge.s      $00043B26
[00043b04] 200a                      move.l     a2,d0
[00043b06] 6708                      beq.s      $00043B10
[00043b08] 204a                      movea.l    a2,a0
[00043b0a] 4eb9 0004 7e26            jsr        $00047E26
[00043b10] 7001                      moveq.l    #1,d0
[00043b12] d085                      add.l      d5,d0
[00043b14] 4eb9 0004 7cc8            jsr        Ax_malloc
[00043b1a] 2448                      movea.l    a0,a2
[00043b1c] 2605                      move.l     d5,d3
[00043b1e] 200a                      move.l     a2,d0
[00043b20] 6604                      bne.s      $00043B26
[00043b22] 204b                      movea.l    a3,a0
[00043b24] 6032                      bra.s      $00043B58
[00043b26] 224d                      movea.l    a5,a1
[00043b28] 204a                      movea.l    a2,a0
[00043b2a] 4eb9 0007 6950            jsr        $00076950
[00043b30] 204a                      movea.l    a2,a0
[00043b32] 6100 fd06                 bsr        $0004383A
[00043b36] 224a                      movea.l    a2,a1
[00043b38] 204b                      movea.l    a3,a0
[00043b3a] 4eb9 0007 6886            jsr        $00076886
[00043b40] 5244                      addq.w     #1,d4
[00043b42] bc44                      cmp.w      d4,d6
[00043b44] 6ea6                      bgt.s      $00043AEC
[00043b46] 200a                      move.l     a2,d0
[00043b48] 6708                      beq.s      $00043B52
[00043b4a] 204a                      movea.l    a2,a0
[00043b4c] 4eb9 0004 7e26            jsr        $00047E26
[00043b52] 204b                      movea.l    a3,a0
[00043b54] 6100 fce4                 bsr        $0004383A
[00043b58] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[00043b5c] 4e75                      rts
Ast_adl:
[00043b5e] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[00043b62] 2448                      movea.l    a0,a2
[00043b64] 2800                      move.l     d0,d4
[00043b66] 4eb9 0007 69b0            jsr        $000769B0
[00043b6c] 2600                      move.l     d0,d3
[00043b6e] 200a                      move.l     a2,d0
[00043b70] 6604                      bne.s      $00043B76
[00043b72] 91c8                      suba.l     a0,a0
[00043b74] 601a                      bra.s      $00043B90
[00043b76] b883                      cmp.l      d3,d4
[00043b78] 6f10                      ble.s      $00043B8A
[00043b7a] 2204                      move.l     d4,d1
[00043b7c] 9283                      sub.l      d3,d1
[00043b7e] 7020                      moveq.l    #32,d0
[00043b80] 41f2 3800                 lea.l      0(a2,d3.l),a0
[00043b84] 4eb9 0007 712e            jsr        $0007712E
[00043b8a] 4232 4800                 clr.b      0(a2,d4.l)
[00043b8e] 204a                      movea.l    a2,a0
[00043b90] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00043b94] 4e75                      rts
Ast_adr:
[00043b96] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[00043b9a] 2448                      movea.l    a0,a2
[00043b9c] 2800                      move.l     d0,d4
[00043b9e] 4eb9 0007 69b0            jsr        $000769B0
[00043ba4] 2600                      move.l     d0,d3
[00043ba6] 200a                      move.l     a2,d0
[00043ba8] 6604                      bne.s      $00043BAE
[00043baa] 91c8                      suba.l     a0,a0
[00043bac] 602a                      bra.s      $00043BD8
[00043bae] b883                      cmp.l      d3,d4
[00043bb0] 6f20                      ble.s      $00043BD2
[00043bb2] 2003                      move.l     d3,d0
[00043bb4] 224a                      movea.l    a2,a1
[00043bb6] 2204                      move.l     d4,d1
[00043bb8] 9283                      sub.l      d3,d1
[00043bba] 41f2 1800                 lea.l      0(a2,d1.l),a0
[00043bbe] 4eb9 0007 6f44            jsr        $00076F44
[00043bc4] 2204                      move.l     d4,d1
[00043bc6] 9283                      sub.l      d3,d1
[00043bc8] 7020                      moveq.l    #32,d0
[00043bca] 204a                      movea.l    a2,a0
[00043bcc] 4eb9 0007 712e            jsr        $0007712E
[00043bd2] 4232 4800                 clr.b      0(a2,d4.l)
[00043bd6] 204a                      movea.l    a2,a0
[00043bd8] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00043bdc] 4e75                      rts
Ast_adc:
Ast_filter:
[00043bde] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[00043be2] 2448                      movea.l    a0,a2
[00043be4] 2600                      move.l     d0,d3
[00043be6] 220a                      move.l     a2,d1
[00043be8] 6604                      bne.s      $00043BEE
[00043bea] 91c8                      suba.l     a0,a0
[00043bec] 6030                      bra.s      $00043C1E
[00043bee] 204a                      movea.l    a2,a0
[00043bf0] 4eb9 0007 69b0            jsr        $000769B0
[00043bf6] 2803                      move.l     d3,d4
[00043bf8] 9880                      sub.l      d0,d4
[00043bfa] 4a84                      tst.l      d4
[00043bfc] 6f1a                      ble.s      $00043C18
[00043bfe] 2004                      move.l     d4,d0
[00043c00] e280                      asr.l      #1,d0
[00043c02] 204a                      movea.l    a2,a0
[00043c04] 6100 ff58                 bsr        $00043B5E
[00043c08] 2004                      move.l     d4,d0
[00043c0a] e280                      asr.l      #1,d0
[00043c0c] 7201                      moveq.l    #1,d1
[00043c0e] c284                      and.l      d4,d1
[00043c10] d081                      add.l      d1,d0
[00043c12] 204a                      movea.l    a2,a0
[00043c14] 6100 ff80                 bsr.w      $00043B96
[00043c18] 4232 3800                 clr.b      0(a2,d3.l)
[00043c1c] 204a                      movea.l    a2,a0
[00043c1e] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[00043c22] 4e75                      rts
Ast_filter:
[00043c24] 48e7 003e                 movem.l    a2-a6,-(a7)
[00043c28] 2448                      movea.l    a0,a2
[00043c2a] 2649                      movea.l    a1,a3
[00043c2c] 286f 0018                 movea.l    24(a7),a4
[00043c30] 200a                      move.l     a2,d0
[00043c32] 6708                      beq.s      $00043C3C
[00043c34] 220b                      move.l     a3,d1
[00043c36] 6608                      bne.s      $00043C40
[00043c38] 240c                      move.l     a4,d2
[00043c3a] 6604                      bne.s      $00043C40
[00043c3c] 91c8                      suba.l     a0,a0
[00043c3e] 6052                      bra.s      $00043C92
[00043c40] 2a4a                      movea.l    a2,a5
[00043c42] 2c4d                      movea.l    a5,a6
[00043c44] 6040                      bra.s      $00043C86
[00043c46] 524e                      addq.w     #1,a6
[00043c48] 200b                      move.l     a3,d0
[00043c4a] 6718                      beq.s      $00043C64
[00043c4c] 1216                      move.b     (a6),d1
[00043c4e] 6714                      beq.s      $00043C64
[00043c50] 1001                      move.b     d1,d0
[00043c52] 4880                      ext.w      d0
[00043c54] 204b                      movea.l    a3,a0
[00043c56] 4eb9 0007 68ce            jsr        $000768CE
[00043c5c] 2008                      move.l     a0,d0
[00043c5e] 66e6                      bne.s      $00043C46
[00043c60] 6002                      bra.s      $00043C64
[00043c62] 524e                      addq.w     #1,a6
[00043c64] 200c                      move.l     a4,d0
[00043c66] 6714                      beq.s      $00043C7C
[00043c68] 1216                      move.b     (a6),d1
[00043c6a] 6710                      beq.s      $00043C7C
[00043c6c] 1001                      move.b     d1,d0
[00043c6e] 4880                      ext.w      d0
[00043c70] 204c                      movea.l    a4,a0
[00043c72] 4eb9 0007 68ce            jsr        $000768CE
[00043c78] 2008                      move.l     a0,d0
[00043c7a] 67e6                      beq.s      $00043C62
[00043c7c] bbce                      cmpa.l     a6,a5
[00043c7e] 6702                      beq.s      $00043C82
[00043c80] 1a96                      move.b     (a6),(a5)
[00043c82] 524e                      addq.w     #1,a6
[00043c84] 524d                      addq.w     #1,a5
[00043c86] 1016                      move.b     (a6),d0
[00043c88] 6704                      beq.s      $00043C8E
[00043c8a] 1215                      move.b     (a5),d1
[00043c8c] 66ba                      bne.s      $00043C48
[00043c8e] 4215                      clr.b      (a5)
[00043c90] 204a                      movea.l    a2,a0
[00043c92] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[00043c96] 4e75                      rts
Ast_count:
[00043c98] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00043c9c] 2649                      movea.l    a1,a3
[00043c9e] 2008                      move.l     a0,d0
[00043ca0] 6606                      bne.s      $00043CA8
[00043ca2] 41f9 000d 3660            lea.l      $000D3660,a0
[00043ca8] 7600                      moveq.l    #0,d3
[00043caa] 2448                      movea.l    a0,a2
[00043cac] 6014                      bra.s      $00043CC2
[00043cae] 1012                      move.b     (a2),d0
[00043cb0] 4880                      ext.w      d0
[00043cb2] 204b                      movea.l    a3,a0
[00043cb4] 4eb9 0007 68ce            jsr        $000768CE
[00043cba] 2008                      move.l     a0,d0
[00043cbc] 6702                      beq.s      $00043CC0
[00043cbe] 5283                      addq.l     #1,d3
[00043cc0] 524a                      addq.w     #1,a2
[00043cc2] 1012                      move.b     (a2),d0
[00043cc4] 66e8                      bne.s      $00043CAE
[00043cc6] 2003                      move.l     d3,d0
[00043cc8] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00043ccc] 4e75                      rts
strfsearchafterwc:
[00043cce] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00043cd2] 2848                      movea.l    a0,a4
[00043cd4] 2449                      movea.l    a1,a2
[00043cd6] 2a6f 001c                 movea.l    28(a7),a5
[00043cda] 266f 0020                 movea.l    32(a7),a3
[00043cde] 2051                      movea.l    (a1),a0
[00043ce0] 1010                      move.b     (a0),d0
[00043ce2] 4880                      ext.w      d0
[00043ce4] 204b                      movea.l    a3,a0
[00043ce6] 4eb9 0007 68ce            jsr        $000768CE
[00043cec] 2008                      move.l     a0,d0
[00043cee] 670a                      beq.s      $00043CFA
[00043cf0] 5292                      addq.l     #1,(a2)
[00043cf2] 5294                      addq.l     #1,(a4)
[00043cf4] 6000 0070                 bra.w      $00043D66
[00043cf8] 5292                      addq.l     #1,(a2)
[00043cfa] 2052                      movea.l    (a2),a0
[00043cfc] 1010                      move.b     (a0),d0
[00043cfe] 670e                      beq.s      $00043D0E
[00043d00] 4880                      ext.w      d0
[00043d02] 204d                      movea.l    a5,a0
[00043d04] 4eb9 0007 68ce            jsr        $000768CE
[00043d0a] 2008                      move.l     a0,d0
[00043d0c] 66ea                      bne.s      $00043CF8
[00043d0e] 2052                      movea.l    (a2),a0
[00043d10] 1010                      move.b     (a0),d0
[00043d12] 660c                      bne.s      $00043D20
[00043d14] 6002                      bra.s      $00043D18
[00043d16] 5294                      addq.l     #1,(a4)
[00043d18] 2054                      movea.l    (a4),a0
[00043d1a] 1010                      move.b     (a0),d0
[00043d1c] 66f8                      bne.s      $00043D16
[00043d1e] 6046                      bra.s      $00043D66
[00043d20] 224d                      movea.l    a5,a1
[00043d22] 2052                      movea.l    (a2),a0
[00043d24] 4eb9 0007 6996            jsr        $00076996
[00043d2a] 2600                      move.l     d0,d3
[00043d2c] 224b                      movea.l    a3,a1
[00043d2e] 2052                      movea.l    (a2),a0
[00043d30] 4eb9 0007 6996            jsr        $00076996
[00043d36] b083                      cmp.l      d3,d0
[00043d38] 6304                      bls.s      $00043D3E
[00043d3a] 2203                      move.l     d3,d1
[00043d3c] 6002                      bra.s      $00043D40
[00043d3e] 2200                      move.l     d0,d1
[00043d40] 2601                      move.l     d1,d3
[00043d42] 2a52                      movea.l    (a2),a5
[00043d44] dbc1                      adda.l     d1,a5
[00043d46] 1815                      move.b     (a5),d4
[00043d48] 4215                      clr.b      (a5)
[00043d4a] 2252                      movea.l    (a2),a1
[00043d4c] 2054                      movea.l    (a4),a0
[00043d4e] 4eb9 0007 6a4c            jsr        $00076A4C
[00043d54] 1a84                      move.b     d4,(a5)
[00043d56] 248d                      move.l     a5,(a2)
[00043d58] 2008                      move.l     a0,d0
[00043d5a] 6604                      bne.s      $00043D60
[00043d5c] 4240                      clr.w      d0
[00043d5e] 6008                      bra.s      $00043D68
[00043d60] 2054                      movea.l    (a4),a0
[00043d62] d1c3                      adda.l     d3,a0
[00043d64] 2888                      move.l     a0,(a4)
[00043d66] 7001                      moveq.l    #1,d0
[00043d68] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00043d6c] 4e75                      rts
Ast_fcmp:
[00043d6e] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00043d72] 4fef ffd8                 lea.l      -40(a7),a7
[00043d76] 2f48 0024                 move.l     a0,36(a7)
[00043d7a] 2f49 0020                 move.l     a1,32(a7)
[00043d7e] 45ef 001e                 lea.l      30(a7),a2
[00043d82] 41f9 000d 3661            lea.l      $000D3661,a0
[00043d88] 224a                      movea.l    a2,a1
[00043d8a] 12d8                      move.b     (a0)+,(a1)+
[00043d8c] 12d8                      move.b     (a0)+,(a1)+
[00043d8e] 47ef 001c                 lea.l      28(a7),a3
[00043d92] 41f9 000d 3663            lea.l      $000D3663,a0
[00043d98] 224b                      movea.l    a3,a1
[00043d9a] 12d8                      move.b     (a0)+,(a1)+
[00043d9c] 12d8                      move.b     (a0)+,(a1)+
[00043d9e] 49ef 0004                 lea.l      4(a7),a4
[00043da2] 4bef 0010                 lea.l      16(a7),a5
[00043da6] 206f 0024                 movea.l    36(a7),a0
[00043daa] 6100 fce6                 bsr        $00043A92
[00043dae] 4a40                      tst.w      d0
[00043db0] 6600 01a6                 bne        $00043F58
[00043db4] 206f 0020                 movea.l    32(a7),a0
[00043db8] 6100 fcd8                 bsr        $00043A92
[00043dbc] 4a40                      tst.w      d0
[00043dbe] 6600 0198                 bne        $00043F58
[00043dc2] 206f 0024                 movea.l    36(a7),a0
[00043dc6] 4eb9 0007 69b0            jsr        $000769B0
[00043dcc] 2600                      move.l     d0,d3
[00043dce] 206f 0020                 movea.l    32(a7),a0
[00043dd2] 4eb9 0007 69b0            jsr        $000769B0
[00043dd8] 2800                      move.l     d0,d4
[00043dda] 224a                      movea.l    a2,a1
[00043ddc] 206f 0024                 movea.l    36(a7),a0
[00043de0] 4eb9 0007 6996            jsr        $00076996
[00043de6] b680                      cmp.l      d0,d3
[00043de8] 6704                      beq.s      $00043DEE
[00043dea] 7001                      moveq.l    #1,d0
[00043dec] 6002                      bra.s      $00043DF0
[00043dee] 4240                      clr.w      d0
[00043df0] 3f40 0018                 move.w     d0,24(a7)
[00043df4] 224a                      movea.l    a2,a1
[00043df6] 206f 0020                 movea.l    32(a7),a0
[00043dfa] 4eb9 0007 6996            jsr        $00076996
[00043e00] b880                      cmp.l      d0,d4
[00043e02] 6704                      beq.s      $00043E08
[00043e04] 7001                      moveq.l    #1,d0
[00043e06] 6002                      bra.s      $00043E0A
[00043e08] 4240                      clr.w      d0
[00043e0a] 3f40 001a                 move.w     d0,26(a7)
[00043e0e] 224b                      movea.l    a3,a1
[00043e10] 206f 0024                 movea.l    36(a7),a0
[00043e14] 4eb9 0007 6996            jsr        $00076996
[00043e1a] b680                      cmp.l      d0,d3
[00043e1c] 6704                      beq.s      $00043E22
[00043e1e] 7001                      moveq.l    #1,d0
[00043e20] 6002                      bra.s      $00043E24
[00043e22] 4240                      clr.w      d0
[00043e24] 3f40 0014                 move.w     d0,20(a7)
[00043e28] 224b                      movea.l    a3,a1
[00043e2a] 206f 0020                 movea.l    32(a7),a0
[00043e2e] 4eb9 0007 6996            jsr        $00076996
[00043e34] b880                      cmp.l      d0,d4
[00043e36] 6704                      beq.s      $00043E3C
[00043e38] 7001                      moveq.l    #1,d0
[00043e3a] 6002                      bra.s      $00043E3E
[00043e3c] 4240                      clr.w      d0
[00043e3e] 3f40 0016                 move.w     d0,22(a7)
[00043e42] 322f 001a                 move.w     26(a7),d1
[00043e46] 6600 0110                 bne        $00043F58
[00043e4a] 4a40                      tst.w      d0
[00043e4c] 6600 010a                 bne        $00043F58
[00043e50] 28af 0024                 move.l     36(a7),(a4)
[00043e54] 2eaf 0020                 move.l     32(a7),(a7)
[00043e58] 6000 0102                 bra        $00043F5C
[00043e5c] 2054                      movea.l    (a4),a0
[00043e5e] 1010                      move.b     (a0),d0
[00043e60] 4880                      ext.w      d0
[00043e62] 204a                      movea.l    a2,a0
[00043e64] 4eb9 0007 68ce            jsr        $000768CE
[00043e6a] 2008                      move.l     a0,d0
[00043e6c] 6704                      beq.s      $00043E72
[00043e6e] 7001                      moveq.l    #1,d0
[00043e70] 6002                      bra.s      $00043E74
[00043e72] 4240                      clr.w      d0
[00043e74] 3f40 000c                 move.w     d0,12(a7)
[00043e78] 2057                      movea.l    (a7),a0
[00043e7a] 1010                      move.b     (a0),d0
[00043e7c] 4880                      ext.w      d0
[00043e7e] 204a                      movea.l    a2,a0
[00043e80] 4eb9 0007 68ce            jsr        $000768CE
[00043e86] 2008                      move.l     a0,d0
[00043e88] 6704                      beq.s      $00043E8E
[00043e8a] 7001                      moveq.l    #1,d0
[00043e8c] 6002                      bra.s      $00043E90
[00043e8e] 4240                      clr.w      d0
[00043e90] 3f40 000e                 move.w     d0,14(a7)
[00043e94] 2054                      movea.l    (a4),a0
[00043e96] 1010                      move.b     (a0),d0
[00043e98] 4880                      ext.w      d0
[00043e9a] 204b                      movea.l    a3,a0
[00043e9c] 4eb9 0007 68ce            jsr        $000768CE
[00043ea2] 2008                      move.l     a0,d0
[00043ea4] 6704                      beq.s      $00043EAA
[00043ea6] 7001                      moveq.l    #1,d0
[00043ea8] 6002                      bra.s      $00043EAC
[00043eaa] 4240                      clr.w      d0
[00043eac] 3f40 0008                 move.w     d0,8(a7)
[00043eb0] 2057                      movea.l    (a7),a0
[00043eb2] 1010                      move.b     (a0),d0
[00043eb4] 4880                      ext.w      d0
[00043eb6] 204b                      movea.l    a3,a0
[00043eb8] 4eb9 0007 68ce            jsr        $000768CE
[00043ebe] 2008                      move.l     a0,d0
[00043ec0] 6704                      beq.s      $00043EC6
[00043ec2] 7001                      moveq.l    #1,d0
[00043ec4] 6002                      bra.s      $00043EC8
[00043ec6] 4240                      clr.w      d0
[00043ec8] 3f40 000a                 move.w     d0,10(a7)
[00043ecc] 322f 000c                 move.w     12(a7),d1
[00043ed0] 6606                      bne.s      $00043ED8
[00043ed2] 342f 0008                 move.w     8(a7),d2
[00043ed6] 6704                      beq.s      $00043EDC
[00043ed8] 7001                      moveq.l    #1,d0
[00043eda] 6002                      bra.s      $00043EDE
[00043edc] 4240                      clr.w      d0
[00043ede] 3a80                      move.w     d0,(a5)
[00043ee0] 322f 000e                 move.w     14(a7),d1
[00043ee4] 6606                      bne.s      $00043EEC
[00043ee6] 342f 000a                 move.w     10(a7),d2
[00043eea] 6704                      beq.s      $00043EF0
[00043eec] 7001                      moveq.l    #1,d0
[00043eee] 6002                      bra.s      $00043EF2
[00043ef0] 4240                      clr.w      d0
[00043ef2] 3b40 0002                 move.w     d0,2(a5)
[00043ef6] 3215                      move.w     (a5),d1
[00043ef8] 6610                      bne.s      $00043F0A
[00043efa] 4a40                      tst.w      d0
[00043efc] 660c                      bne.s      $00043F0A
[00043efe] 2054                      movea.l    (a4),a0
[00043f00] 1410                      move.b     (a0),d2
[00043f02] 2257                      movea.l    (a7),a1
[00043f04] b411                      cmp.b      (a1),d2
[00043f06] 6650                      bne.s      $00043F58
[00043f08] 600c                      bra.s      $00043F16
[00043f0a] 302f 0008                 move.w     8(a7),d0
[00043f0e] 670c                      beq.s      $00043F1C
[00043f10] 322f 000a                 move.w     10(a7),d1
[00043f14] 6706                      beq.s      $00043F1C
[00043f16] 5294                      addq.l     #1,(a4)
[00043f18] 5297                      addq.l     #1,(a7)
[00043f1a] 6040                      bra.s      $00043F5C
[00043f1c] 3015                      move.w     (a5),d0
[00043f1e] 671a                      beq.s      $00043F3A
[00043f20] 322d 0002                 move.w     2(a5),d1
[00043f24] 6614                      bne.s      $00043F3A
[00043f26] 4853                      pea.l      (a3)
[00043f28] 4852                      pea.l      (a2)
[00043f2a] 224c                      movea.l    a4,a1
[00043f2c] 41ef 0008                 lea.l      8(a7),a0
[00043f30] 6100 fd9c                 bsr        $00043CCE
[00043f34] 504f                      addq.w     #8,a7
[00043f36] 4a40                      tst.w      d0
[00043f38] 671e                      beq.s      $00043F58
[00043f3a] 302d 0002                 move.w     2(a5),d0
[00043f3e] 671c                      beq.s      $00043F5C
[00043f40] 3215                      move.w     (a5),d1
[00043f42] 6618                      bne.s      $00043F5C
[00043f44] 4853                      pea.l      (a3)
[00043f46] 4852                      pea.l      (a2)
[00043f48] 43ef 0008                 lea.l      8(a7),a1
[00043f4c] 204c                      movea.l    a4,a0
[00043f4e] 6100 fd7e                 bsr        $00043CCE
[00043f52] 504f                      addq.w     #8,a7
[00043f54] 4a40                      tst.w      d0
[00043f56] 6604                      bne.s      $00043F5C
[00043f58] 4240                      clr.w      d0
[00043f5a] 601e                      bra.s      $00043F7A
[00043f5c] 2054                      movea.l    (a4),a0
[00043f5e] 1010                      move.b     (a0),d0
[00043f60] 6708                      beq.s      $00043F6A
[00043f62] 2257                      movea.l    (a7),a1
[00043f64] 1211                      move.b     (a1),d1
[00043f66] 6600 fef4                 bne        $00043E5C
[00043f6a] 2054                      movea.l    (a4),a0
[00043f6c] 1010                      move.b     (a0),d0
[00043f6e] 2257                      movea.l    (a7),a1
[00043f70] b011                      cmp.b      (a1),d0
[00043f72] 6604                      bne.s      $00043F78
[00043f74] 7001                      moveq.l    #1,d0
[00043f76] 6002                      bra.s      $00043F7A
[00043f78] 4240                      clr.w      d0
[00043f7a] 4fef 0028                 lea.l      40(a7),a7
[00043f7e] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00043f82] 4e75                      rts
Ast_countASCIZZ:
[00043f84] 3f03                      move.w     d3,-(a7)
[00043f86] 2f0a                      move.l     a2,-(a7)
[00043f88] 2448                      movea.l    a0,a2
[00043f8a] 4243                      clr.w      d3
[00043f8c] 5243                      addq.w     #1,d3
[00043f8e] 204a                      movea.l    a2,a0
[00043f90] 4eb9 0007 69b0            jsr        $000769B0
[00043f96] 5280                      addq.l     #1,d0
[00043f98] d5c0                      adda.l     d0,a2
[00043f9a] 1012                      move.b     (a2),d0
[00043f9c] 66ee                      bne.s      $00043F8C
[00043f9e] 3003                      move.w     d3,d0
[00043fa0] 245f                      movea.l    (a7)+,a2
[00043fa2] 361f                      move.w     (a7)+,d3
[00043fa4] 4e75                      rts
Ast_splitASCIIZZ:
[00043fa6] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00043faa] 2448                      movea.l    a0,a2
[00043fac] 2a49                      movea.l    a1,a5
[00043fae] 266f 0018                 movea.l    24(a7),a3
[00043fb2] 6100 ffd0                 bsr.w      $00043F84
[00043fb6] 3680                      move.w     d0,(a3)
[00043fb8] 48c0                      ext.l      d0
[00043fba] e588                      lsl.l      #2,d0
[00043fbc] 4eb9 0004 7cc8            jsr        Ax_malloc
[00043fc2] 2848                      movea.l    a0,a4
[00043fc4] 2a88                      move.l     a0,(a5)
[00043fc6] 200c                      move.l     a4,d0
[00043fc8] 6604                      bne.s      $00043FCE
[00043fca] 4240                      clr.w      d0
[00043fcc] 6024                      bra.s      $00043FF2
[00043fce] 2a4a                      movea.l    a2,a5
[00043fd0] 4243                      clr.w      d3
[00043fd2] 6018                      bra.s      $00043FEC
[00043fd4] 204d                      movea.l    a5,a0
[00043fd6] 6100 f6fe                 bsr        Ast_create
[00043fda] 2888                      move.l     a0,(a4)
[00043fdc] 204d                      movea.l    a5,a0
[00043fde] 4eb9 0007 69b0            jsr        $000769B0
[00043fe4] 5280                      addq.l     #1,d0
[00043fe6] dbc0                      adda.l     d0,a5
[00043fe8] 5243                      addq.w     #1,d3
[00043fea] 584c                      addq.w     #4,a4
[00043fec] b653                      cmp.w      (a3),d3
[00043fee] 6de4                      blt.s      $00043FD4
[00043ff0] 7001                      moveq.l    #1,d0
[00043ff2] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00043ff6] 4e75                      rts
Ast_mergeASCIIZZ:
[00043ff8] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[00043ffc] 2448                      movea.l    a0,a2
[00043ffe] 3a00                      move.w     d0,d5
[00044000] 3c01                      move.w     d1,d6
[00044002] 7802                      moveq.l    #2,d4
[00044004] 4243                      clr.w      d3
[00044006] 47f9 000d 3666            lea.l      $000D3666,a3
[0004400c] 606e                      bra.s      $0004407C
[0004400e] 3003                      move.w     d3,d0
[00044010] 48c0                      ext.l      d0
[00044012] e588                      lsl.l      #2,d0
[00044014] 2232 0800                 move.l     0(a2,d0.l),d1
[00044018] 6760                      beq.s      $0004407A
[0004401a] 2041                      movea.l    d1,a0
[0004401c] 1410                      move.b     (a0),d2
[0004401e] 6758                      beq.s      $00044078
[00044020] 1002                      move.b     d2,d0
[00044022] 4880                      ext.w      d0
[00044024] 41eb 0005                 lea.l      5(a3),a0
[00044028] 4eb9 0007 68ce            jsr        $000768CE
[0004402e] 2008                      move.l     a0,d0
[00044030] 6616                      bne.s      $00044048
[00044032] 3003                      move.w     d3,d0
[00044034] 48c0                      ext.l      d0
[00044036] e588                      lsl.l      #2,d0
[00044038] 2072 0800                 movea.l    0(a2,d0.l),a0
[0004403c] 4eb9 0007 69b0            jsr        $000769B0
[00044042] 5280                      addq.l     #1,d0
[00044044] d880                      add.l      d0,d4
[00044046] 6032                      bra.s      $0004407A
[00044048] 3003                      move.w     d3,d0
[0004404a] 48c0                      ext.l      d0
[0004404c] e588                      lsl.l      #2,d0
[0004404e] 2072 0800                 movea.l    0(a2,d0.l),a0
[00044052] 1210                      move.b     (a0),d1
[00044054] 4881                      ext.w      d1
[00044056] 5341                      subq.w     #1,d1
[00044058] 6706                      beq.s      $00044060
[0004405a] 5341                      subq.w     #1,d1
[0004405c] 6702                      beq.s      $00044060
[0004405e] 6018                      bra.s      $00044078
[00044060] 3003                      move.w     d3,d0
[00044062] 48c0                      ext.l      d0
[00044064] e588                      lsl.l      #2,d0
[00044066] 2072 0800                 movea.l    0(a2,d0.l),a0
[0004406a] 4eb9 0007 69b0            jsr        $000769B0
[00044070] d080                      add.l      d0,d0
[00044072] 5480                      addq.l     #2,d0
[00044074] d880                      add.l      d0,d4
[00044076] 6002                      bra.s      $0004407A
[00044078] 5484                      addq.l     #2,d4
[0004407a] 5243                      addq.w     #1,d3
[0004407c] ba43                      cmp.w      d3,d5
[0004407e] 6e00 ff8e                 bgt.w      $0004400E
[00044082] 4a46                      tst.w      d6
[00044084] 670c                      beq.s      $00044092
[00044086] 2004                      move.l     d4,d0
[00044088] 4eb9 0004 7f44            jsr        $00047F44
[0004408e] 2848                      movea.l    a0,a4
[00044090] 600a                      bra.s      $0004409C
[00044092] 2004                      move.l     d4,d0
[00044094] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004409a] 2848                      movea.l    a0,a4
[0004409c] 200c                      move.l     a4,d0
[0004409e] 6606                      bne.s      $000440A6
[000440a0] 91c8                      suba.l     a0,a0
[000440a2] 6000 00e0                 bra        $00044184
[000440a6] 2204                      move.l     d4,d1
[000440a8] 4240                      clr.w      d0
[000440aa] 204c                      movea.l    a4,a0
[000440ac] 4eb9 0007 712e            jsr        $0007712E
[000440b2] 4243                      clr.w      d3
[000440b4] 2a4c                      movea.l    a4,a5
[000440b6] 6000 00c4                 bra        $0004417C
[000440ba] 3003                      move.w     d3,d0
[000440bc] 48c0                      ext.l      d0
[000440be] e588                      lsl.l      #2,d0
[000440c0] 2232 0800                 move.l     0(a2,d0.l),d1
[000440c4] 6700 00a8                 beq        $0004416E
[000440c8] 2041                      movea.l    d1,a0
[000440ca] 1410                      move.b     (a0),d2
[000440cc] 6610                      bne.s      $000440DE
[000440ce] 43eb 000c                 lea.l      12(a3),a1
[000440d2] 204d                      movea.l    a5,a0
[000440d4] 4eb9 0007 6950            jsr        $00076950
[000440da] 6000 0092                 bra        $0004416E
[000440de] 3203                      move.w     d3,d1
[000440e0] 48c1                      ext.l      d1
[000440e2] e589                      lsl.l      #2,d1
[000440e4] 2072 1800                 movea.l    0(a2,d1.l),a0
[000440e8] 1010                      move.b     (a0),d0
[000440ea] 4880                      ext.w      d0
[000440ec] 41eb 0005                 lea.l      5(a3),a0
[000440f0] 4eb9 0007 68ce            jsr        $000768CE
[000440f6] 2008                      move.l     a0,d0
[000440f8] 6614                      bne.s      $0004410E
[000440fa] 3003                      move.w     d3,d0
[000440fc] 48c0                      ext.l      d0
[000440fe] e588                      lsl.l      #2,d0
[00044100] 2272 0800                 movea.l    0(a2,d0.l),a1
[00044104] 204d                      movea.l    a5,a0
[00044106] 4eb9 0007 6950            jsr        $00076950
[0004410c] 6060                      bra.s      $0004416E
[0004410e] 3003                      move.w     d3,d0
[00044110] 48c0                      ext.l      d0
[00044112] e588                      lsl.l      #2,d0
[00044114] 2072 0800                 movea.l    0(a2,d0.l),a0
[00044118] 1210                      move.b     (a0),d1
[0004411a] 4881                      ext.w      d1
[0004411c] 5341                      subq.w     #1,d1
[0004411e] 6706                      beq.s      $00044126
[00044120] 5341                      subq.w     #1,d1
[00044122] 6702                      beq.s      $00044126
[00044124] 6048                      bra.s      $0004416E
[00044126] 1afc 0002                 move.b     #$02,(a5)+
[0004412a] 3003                      move.w     d3,d0
[0004412c] 48c0                      ext.l      d0
[0004412e] e588                      lsl.l      #2,d0
[00044130] 2072 0800                 movea.l    0(a2,d0.l),a0
[00044134] 6034                      bra.s      $0004416A
[00044136] 1010                      move.b     (a0),d0
[00044138] 4880                      ext.w      d0
[0004413a] e840                      asr.w      #4,d0
[0004413c] b03c 0009                 cmp.b      #$09,d0
[00044140] 6f08                      ble.s      $0004414A
[00044142] 7230                      moveq.l    #48,d1
[00044144] d200                      add.b      d0,d1
[00044146] 1ac1                      move.b     d1,(a5)+
[00044148] 6006                      bra.s      $00044150
[0004414a] 7241                      moveq.l    #65,d1
[0004414c] d200                      add.b      d0,d1
[0004414e] 1ac1                      move.b     d1,(a5)+
[00044150] 700f                      moveq.l    #15,d0
[00044152] c010                      and.b      (a0),d0
[00044154] b03c 0009                 cmp.b      #$09,d0
[00044158] 6f08                      ble.s      $00044162
[0004415a] 7230                      moveq.l    #48,d1
[0004415c] d200                      add.b      d0,d1
[0004415e] 1ac1                      move.b     d1,(a5)+
[00044160] 6006                      bra.s      $00044168
[00044162] 7241                      moveq.l    #65,d1
[00044164] d200                      add.b      d0,d1
[00044166] 1ac1                      move.b     d1,(a5)+
[00044168] 5248                      addq.w     #1,a0
[0004416a] 1010                      move.b     (a0),d0
[0004416c] 66c8                      bne.s      $00044136
[0004416e] 5243                      addq.w     #1,d3
[00044170] 204d                      movea.l    a5,a0
[00044172] 4eb9 0007 69b0            jsr        $000769B0
[00044178] 5280                      addq.l     #1,d0
[0004417a] dbc0                      adda.l     d0,a5
[0004417c] ba43                      cmp.w      d3,d5
[0004417e] 6e00 ff3a                 bgt        $000440BA
[00044182] 204c                      movea.l    a4,a0
[00044184] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[00044188] 4e75                      rts
Ast_deleteAry:
[0004418a] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004418e] 2448                      movea.l    a0,a2
[00044190] 3800                      move.w     d0,d4
[00044192] 4243                      clr.w      d3
[00044194] 2648                      movea.l    a0,a3
[00044196] 600a                      bra.s      $000441A2
[00044198] 2053                      movea.l    (a3),a0
[0004419a] 6100 f580                 bsr        $0004371C
[0004419e] 5243                      addq.w     #1,d3
[000441a0] 584b                      addq.w     #4,a3
[000441a2] b843                      cmp.w      d3,d4
[000441a4] 6ef2                      bgt.s      $00044198
[000441a6] 204a                      movea.l    a2,a0
[000441a8] 4eb9 0004 7e26            jsr        $00047E26
[000441ae] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[000441b2] 4e75                      rts
Ast_copy:
[000441b4] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[000441b8] 2448                      movea.l    a0,a2
[000441ba] 3800                      move.w     d0,d4
[000441bc] 220a                      move.l     a2,d1
[000441be] 6606                      bne.s      $000441C6
[000441c0] 45f9 000d 3660            lea.l      $000D3660,a2
[000441c6] 204a                      movea.l    a2,a0
[000441c8] 4eb9 0007 69b0            jsr        $000769B0
[000441ce] 2600                      move.l     d0,d3
[000441d0] 4a44                      tst.w      d4
[000441d2] 670e                      beq.s      $000441E2
[000441d4] 7001                      moveq.l    #1,d0
[000441d6] d083                      add.l      d3,d0
[000441d8] 4eb9 0004 7f44            jsr        $00047F44
[000441de] 2648                      movea.l    a0,a3
[000441e0] 600c                      bra.s      $000441EE
[000441e2] 7001                      moveq.l    #1,d0
[000441e4] d083                      add.l      d3,d0
[000441e6] 4eb9 0004 7cc8            jsr        Ax_malloc
[000441ec] 2648                      movea.l    a0,a3
[000441ee] 200b                      move.l     a3,d0
[000441f0] 6604                      bne.s      $000441F6
[000441f2] 91c8                      suba.l     a0,a0
[000441f4] 6016                      bra.s      $0004420C
[000441f6] 200a                      move.l     a2,d0
[000441f8] 6608                      bne.s      $00044202
[000441fa] 43f9 000d 366a            lea.l      $000D366A,a1
[00044200] 6002                      bra.s      $00044204
[00044202] 224a                      movea.l    a2,a1
[00044204] 204b                      movea.l    a3,a0
[00044206] 4eb9 0007 6950            jsr        $00076950
[0004420c] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[00044210] 4e75                      rts
Ast_reverse:
[00044212] 2f0a                      move.l     a2,-(a7)
[00044214] 2f0b                      move.l     a3,-(a7)
[00044216] 2009                      move.l     a1,d0
[00044218] 6606                      bne.s      $00044220
[0004421a] 43f9 000d 3660            lea.l      $000D3660,a1
[00044220] 2449                      movea.l    a1,a2
[00044222] 6002                      bra.s      $00044226
[00044224] 524a                      addq.w     #1,a2
[00044226] 1012                      move.b     (a2),d0
[00044228] 66fa                      bne.s      $00044224
[0004422a] 2648                      movea.l    a0,a3
[0004422c] 534a                      subq.w     #1,a2
[0004422e] 6006                      bra.s      $00044236
[00044230] 1692                      move.b     (a2),(a3)
[00044232] 534a                      subq.w     #1,a2
[00044234] 524b                      addq.w     #1,a3
[00044236] b3ca                      cmpa.l     a2,a1
[00044238] 63f6                      bls.s      $00044230
[0004423a] 4213                      clr.b      (a3)
[0004423c] 265f                      movea.l    (a7)+,a3
[0004423e] 245f                      movea.l    (a7)+,a2
[00044240] 4e75                      rts
