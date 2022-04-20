
copy_ob:
[0002b5ea] 48e7 003e                 movem.l    a2-a6,-(a7)
[0002b5ee] 594f                      subq.w     #4,a7
[0002b5f0] 2648                      movea.l    a0,a3
[0002b5f2] 2a49                      movea.l    a1,a5
[0002b5f4] 286f 001c                 movea.l    28(a7),a4
[0002b5f8] 45f9 000b cd58            lea.l      xbcd58,a2
[0002b5fe] 006b 0001 0006            ori.w      #$0001,6(a3)
[0002b604] 7038                      moveq.l    #56,d0
[0002b606] 2049                      movea.l    a1,a0
[0002b608] 224c                      movea.l    a4,a1
[0002b60a] 4eb9 0007 6f44            jsr        memcpy
[0002b610] 3039 0007 824e            move.w     copyindex,d0
[0002b616] 676a                      beq.s      copy_ob_1
[0002b618] 2214                      move.l     (a4),d1
[0002b61a] 6766                      beq.s      copy_ob_1
[0002b61c] 204b                      movea.l    a3,a0
[0002b61e] 7000                      moveq.l    #0,d0
[0002b620] 4eb9 0001 6230            jsr        objmalloc
[0002b626] 2c48                      movea.l    a0,a6
[0002b628] 2a88                      move.l     a0,(a5)
[0002b62a] 200e                      move.l     a6,d0
[0002b62c] 6756                      beq.s      copy_ob_2
[0002b62e] 2254                      movea.l    (a4),a1
[0002b630] 43e9 0016                 lea.l      22(a1),a1
[0002b634] 41ee 0016                 lea.l      22(a6),a0
[0002b638] 4eb9 0007 6950            jsr        strcpy
[0002b63e] 4857                      pea.l      (a7)
[0002b640] 224e                      movea.l    a6,a1
[0002b642] 204b                      movea.l    a3,a0
[0002b644] 4eb9 0001 6374            jsr        uniquename
[0002b64a] 584f                      addq.w     #4,a7
[0002b64c] 5240                      addq.w     #1,d0
[0002b64e] 661e                      bne.s      copy_ob_3
[0002b650] 2f0a                      move.l     a2,-(a7)
[0002b652] 224e                      movea.l    a6,a1
[0002b654] 204b                      movea.l    a3,a0
[0002b656] 4eb9 0001 46c2            jsr        new2label
[0002b65c] 584f                      addq.w     #4,a7
[0002b65e] 4a40                      tst.w      d0
[0002b660] 660c                      bne.s      copy_ob_3
[0002b662] 224e                      movea.l    a6,a1
[0002b664] 204b                      movea.l    a3,a0
[0002b666] 4eb9 0001 61d4            jsr        objfree
[0002b66c] 6014                      bra.s      copy_ob_1
copy_ob_3:
[0002b66e] 2f0a                      move.l     a2,-(a7)
[0002b670] 486e 0016                 pea.l      22(a6)
[0002b674] 224e                      movea.l    a6,a1
[0002b676] 204b                      movea.l    a3,a0
[0002b678] 4eb9 0001 6448            jsr        objname
[0002b67e] 504f                      addq.w     #8,a7
[0002b680] 6002                      bra.s      copy_ob_2
copy_ob_1:
[0002b682] 4295                      clr.l      (a5)
copy_ob_2:
[0002b684] 202c 0004                 move.l     4(a4),d0
[0002b688] 670e                      beq.s      copy_ob_4
[0002b68a] 2240                      movea.l    d0,a1
[0002b68c] 204b                      movea.l    a3,a0
[0002b68e] 4eb9 0003 4306            jsr        add_ref
[0002b694] 2b48 0004                 move.l     a0,4(a5)
copy_ob_4:
[0002b698] 202c 0020                 move.l     32(a4),d0
[0002b69c] 670e                      beq.s      copy_ob_5
[0002b69e] 2240                      movea.l    d0,a1
[0002b6a0] 204b                      movea.l    a3,a0
[0002b6a2] 4eb9 0003 4306            jsr        add_ref
[0002b6a8] 2b48 0020                 move.l     a0,32(a5)
copy_ob_5:
[0002b6ac] 202c 0024                 move.l     36(a4),d0
[0002b6b0] 670e                      beq.s      copy_ob_6
[0002b6b2] 2240                      movea.l    d0,a1
[0002b6b4] 204b                      movea.l    a3,a0
[0002b6b6] 4eb9 0003 4306            jsr        add_ref
[0002b6bc] 2b48 0024                 move.l     a0,36(a5)
copy_ob_6:
[0002b6c0] 202c 002c                 move.l     44(a4),d0
[0002b6c4] 670e                      beq.s      copy_ob_7
[0002b6c6] 2240                      movea.l    d0,a1
[0002b6c8] 204b                      movea.l    a3,a0
[0002b6ca] 4eb9 0003 4306            jsr        add_ref
[0002b6d0] 2b48 002c                 move.l     a0,44(a5)
copy_ob_7:
[0002b6d4] 202c 0030                 move.l     48(a4),d0
[0002b6d8] 670e                      beq.s      copy_ob_8
[0002b6da] 2240                      movea.l    d0,a1
[0002b6dc] 204b                      movea.l    a3,a0
[0002b6de] 4eb9 0003 4306            jsr        add_ref
[0002b6e4] 2b48 0030                 move.l     a0,48(a5)
copy_ob_8:
[0002b6e8] 102c 000f                 move.b     15(a4),d0
[0002b6ec] 4880                      ext.w      d0
[0002b6ee] 907c 0015                 sub.w      #$0015,d0
[0002b6f2] b07c 000c                 cmp.w      #$000C,d0
[0002b6f6] 6200 007e                 bhi.w      copy_ob_9
[0002b6fa] d040                      add.w      d0,d0
[0002b6fc] 303b 0006                 move.w     $0002B704(pc,d0.w),d0
[0002b700] 4efb 0002                 jmp        $0002B704(pc,d0.w)
J19:
[0002b704] 001a                      dc.w $001a   ; copy_ob_10-J19
[0002b706] 001a                      dc.w $001a   ; copy_ob_10-J19
[0002b708] 002c                      dc.w $002c   ; copy_ob_11-J19
[0002b70a] 003e                      dc.w $003e   ; copy_ob_12-J19
[0002b70c] 0072                      dc.w $0072   ; copy_ob_9-J19
[0002b70e] 0050                      dc.w $0050   ; copy_ob_13-J19
[0002b710] 0072                      dc.w $0072   ; copy_ob_9-J19
[0002b712] 0050                      dc.w $0050   ; copy_ob_13-J19
[0002b714] 001a                      dc.w $001a   ; copy_ob_10-J19
[0002b716] 001a                      dc.w $001a   ; copy_ob_10-J19
[0002b718] 0062                      dc.w $0062   ; copy_ob_14-J19
[0002b71a] 0050                      dc.w $0050   ; copy_ob_13-J19
[0002b71c] 0062                      dc.w $0062   ; copy_ob_14-J19
copy_ob_10:
[0002b71e] 226c 0014                 movea.l    20(a4),a1
[0002b722] 204b                      movea.l    a3,a0
[0002b724] 4eb9 0003 4c54            jsr        add_tedinfo
[0002b72a] 2b48 0014                 move.l     a0,20(a5)
[0002b72e] 6046                      bra.s      copy_ob_9
copy_ob_11:
[0002b730] 226c 0014                 movea.l    20(a4),a1
[0002b734] 204b                      movea.l    a3,a0
[0002b736] 4eb9 0003 32fa            jsr        add_image
[0002b73c] 2b48 0014                 move.l     a0,20(a5)
[0002b740] 6034                      bra.s      copy_ob_9
copy_ob_12:
[0002b742] 226c 0014                 movea.l    20(a4),a1
[0002b746] 204b                      movea.l    a3,a0
[0002b748] 4eb9 0003 360c            jsr        add_user
[0002b74e] 2b48 0014                 move.l     a0,20(a5)
[0002b752] 6022                      bra.s      copy_ob_9
copy_ob_13:
[0002b754] 226c 0014                 movea.l    20(a4),a1
[0002b758] 204b                      movea.l    a3,a0
[0002b75a] 4eb9 0003 461e            jsr        add_string
[0002b760] 2b48 0014                 move.l     a0,20(a5)
[0002b764] 6010                      bra.s      copy_ob_9
copy_ob_14:
[0002b766] 226c 0014                 movea.l    20(a4),a1
[0002b76a] 204b                      movea.l    a3,a0
[0002b76c] 4eb9 0003 2e34            jsr        add_icon
[0002b772] 2b48 0014                 move.l     a0,20(a5)
copy_ob_9:
[0002b776] 584f                      addq.w     #4,a7
[0002b778] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[0002b77c] 4e75                      rts

copysub_ob:
[0002b77e] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0002b782] 554f                      subq.w     #2,a7
[0002b784] 2c48                      movea.l    a0,a6
[0002b786] 2449                      movea.l    a1,a2
[0002b788] 286f 002e                 movea.l    46(a7),a4
[0002b78c] 3e80                      move.w     d0,(a7)
[0002b78e] 2049                      movea.l    a1,a0
[0002b790] 7038                      moveq.l    #56,d0
[0002b792] 4eb9 0001 62aa            jsr        objextent
[0002b798] 4a40                      tst.w      d0
[0002b79a] 6600 00a2                 bne        copysub_ob_1
[0002b79e] 202a 000e                 move.l     14(a2),d0
[0002b7a2] 7238                      moveq.l    #56,d1
[0002b7a4] 4eb9 0007 769e            jsr        _uldiv
[0002b7aa] 2600                      move.l     d0,d3
[0002b7ac] 06aa 0000 0038 000e       addi.l     #$00000038,14(a2)
[0002b7b4] 266a 0004                 movea.l    4(a2),a3
[0002b7b8] 2a6c 0004                 movea.l    4(a4),a5
[0002b7bc] 3217                      move.w     (a7),d1
[0002b7be] 48c1                      ext.l      d1
[0002b7c0] 2001                      move.l     d1,d0
[0002b7c2] e788                      lsl.l      #3,d0
[0002b7c4] 9081                      sub.l      d1,d0
[0002b7c6] e788                      lsl.l      #3,d0
[0002b7c8] 4875 0800                 pea.l      0(a5,d0.l)
[0002b7cc] 3003                      move.w     d3,d0
[0002b7ce] 48c0                      ext.l      d0
[0002b7d0] 2400                      move.l     d0,d2
[0002b7d2] e78a                      lsl.l      #3,d2
[0002b7d4] 9480                      sub.l      d0,d2
[0002b7d6] e78a                      lsl.l      #3,d2
[0002b7d8] 43f3 2800                 lea.l      0(a3,d2.l),a1
[0002b7dc] 204e                      movea.l    a6,a0
[0002b7de] 6100 fe0a                 bsr        copy_ob
[0002b7e2] 584f                      addq.w     #4,a7
[0002b7e4] 3217                      move.w     (a7),d1
[0002b7e6] 48c1                      ext.l      d1
[0002b7e8] 2001                      move.l     d1,d0
[0002b7ea] e788                      lsl.l      #3,d0
[0002b7ec] 9081                      sub.l      d1,d0
[0002b7ee] e788                      lsl.l      #3,d0
[0002b7f0] 3a35 080a                 move.w     10(a5,d0.l),d5
[0002b7f4] 4a45                      tst.w      d5
[0002b7f6] 6b00 009e                 bmi        copysub_ob_2
[0002b7fa] 2f0c                      move.l     a4,-(a7)
[0002b7fc] 224a                      movea.l    a2,a1
[0002b7fe] 204e                      movea.l    a6,a0
[0002b800] 3005                      move.w     d5,d0
[0002b802] 6100 ff7a                 bsr        copysub_ob
[0002b806] 584f                      addq.w     #4,a7
[0002b808] 3c00                      move.w     d0,d6
[0002b80a] 4a40                      tst.w      d0
[0002b80c] 6b30                      bmi.s      copysub_ob_1
[0002b80e] 3e06                      move.w     d6,d7
[0002b810] 266a 0004                 movea.l    4(a2),a3
[0002b814] 2a6c 0004                 movea.l    4(a4),a5
[0002b818] 6042                      bra.s      copysub_ob_3
copysub_ob_6:
[0002b81a] 3205                      move.w     d5,d1
[0002b81c] 48c1                      ext.l      d1
[0002b81e] 2001                      move.l     d1,d0
[0002b820] e788                      lsl.l      #3,d0
[0002b822] 9081                      sub.l      d1,d0
[0002b824] e788                      lsl.l      #3,d0
[0002b826] 3a35 0808                 move.w     8(a5,d0.l),d5
[0002b82a] 2f0c                      move.l     a4,-(a7)
[0002b82c] 3005                      move.w     d5,d0
[0002b82e] 224a                      movea.l    a2,a1
[0002b830] 204e                      movea.l    a6,a0
[0002b832] 6100 ff4a                 bsr        copysub_ob
[0002b836] 584f                      addq.w     #4,a7
[0002b838] 3800                      move.w     d0,d4
[0002b83a] 4a40                      tst.w      d0
[0002b83c] 6a04                      bpl.s      copysub_ob_4
copysub_ob_1:
[0002b83e] 70ff                      moveq.l    #-1,d0
[0002b840] 606c                      bra.s      copysub_ob_5
copysub_ob_4:
[0002b842] 2a6c 0004                 movea.l    4(a4),a5
[0002b846] 266a 0004                 movea.l    4(a2),a3
[0002b84a] 3207                      move.w     d7,d1
[0002b84c] 48c1                      ext.l      d1
[0002b84e] 2001                      move.l     d1,d0
[0002b850] e788                      lsl.l      #3,d0
[0002b852] 9081                      sub.l      d1,d0
[0002b854] e788                      lsl.l      #3,d0
[0002b856] 3784 0808                 move.w     d4,8(a3,d0.l)
[0002b85a] 3e04                      move.w     d4,d7
copysub_ob_3:
[0002b85c] 3205                      move.w     d5,d1
[0002b85e] 48c1                      ext.l      d1
[0002b860] 2001                      move.l     d1,d0
[0002b862] e788                      lsl.l      #3,d0
[0002b864] 9081                      sub.l      d1,d0
[0002b866] e788                      lsl.l      #3,d0
[0002b868] 3417                      move.w     (a7),d2
[0002b86a] b475 0808                 cmp.w      8(a5,d0.l),d2
[0002b86e] 66aa                      bne.s      copysub_ob_6
[0002b870] 3a07                      move.w     d7,d5
[0002b872] 48c5                      ext.l      d5
[0002b874] 2805                      move.l     d5,d4
[0002b876] e78c                      lsl.l      #3,d4
[0002b878] 9885                      sub.l      d5,d4
[0002b87a] e78c                      lsl.l      #3,d4
[0002b87c] 3783 4808                 move.w     d3,8(a3,d4.l)
[0002b880] 3203                      move.w     d3,d1
[0002b882] 48c1                      ext.l      d1
[0002b884] 2001                      move.l     d1,d0
[0002b886] e788                      lsl.l      #3,d0
[0002b888] 9081                      sub.l      d1,d0
[0002b88a] e788                      lsl.l      #3,d0
[0002b88c] 3786 080a                 move.w     d6,10(a3,d0.l)
[0002b890] 3787 080c                 move.w     d7,12(a3,d0.l)
[0002b894] 6016                      bra.s      copysub_ob_7
copysub_ob_2:
[0002b896] 70ff                      moveq.l    #-1,d0
[0002b898] 3403                      move.w     d3,d2
[0002b89a] 48c2                      ext.l      d2
[0002b89c] 2202                      move.l     d2,d1
[0002b89e] e789                      lsl.l      #3,d1
[0002b8a0] 9282                      sub.l      d2,d1
[0002b8a2] e789                      lsl.l      #3,d1
[0002b8a4] 3780 180c                 move.w     d0,12(a3,d1.l)
[0002b8a8] 3780 180a                 move.w     d0,10(a3,d1.l)
copysub_ob_7:
[0002b8ac] 3003                      move.w     d3,d0
copysub_ob_5:
[0002b8ae] 544f                      addq.w     #2,a7
[0002b8b0] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0002b8b4] 4e75                      rts

del_ob:
[0002b8b6] 2f0a                      move.l     a2,-(a7)
[0002b8b8] 2f0b                      move.l     a3,-(a7)
[0002b8ba] 2448                      movea.l    a0,a2
[0002b8bc] 2649                      movea.l    a1,a3
[0002b8be] 2011                      move.l     (a1),d0
[0002b8c0] 6708                      beq.s      del_ob_1
[0002b8c2] 2240                      movea.l    d0,a1
[0002b8c4] 4eb9 0001 61d4            jsr        objfree
del_ob_1:
[0002b8ca] 202b 0004                 move.l     4(a3),d0
[0002b8ce] 670a                      beq.s      del_ob_2
[0002b8d0] 2240                      movea.l    d0,a1
[0002b8d2] 204a                      movea.l    a2,a0
[0002b8d4] 4eb9 0003 448e            jsr        del_ref
del_ob_2:
[0002b8da] 202b 0020                 move.l     32(a3),d0
[0002b8de] 670a                      beq.s      del_ob_3
[0002b8e0] 2240                      movea.l    d0,a1
[0002b8e2] 204a                      movea.l    a2,a0
[0002b8e4] 4eb9 0003 448e            jsr        del_ref
del_ob_3:
[0002b8ea] 202b 0024                 move.l     36(a3),d0
[0002b8ee] 670a                      beq.s      del_ob_4
[0002b8f0] 2240                      movea.l    d0,a1
[0002b8f2] 204a                      movea.l    a2,a0
[0002b8f4] 4eb9 0003 448e            jsr        del_ref
del_ob_4:
[0002b8fa] 202b 002c                 move.l     44(a3),d0
[0002b8fe] 670a                      beq.s      del_ob_5
[0002b900] 2240                      movea.l    d0,a1
[0002b902] 204a                      movea.l    a2,a0
[0002b904] 4eb9 0003 448e            jsr        del_ref
del_ob_5:
[0002b90a] 202b 0030                 move.l     48(a3),d0
[0002b90e] 670a                      beq.s      del_ob_6
[0002b910] 2240                      movea.l    d0,a1
[0002b912] 204a                      movea.l    a2,a0
[0002b914] 4eb9 0003 448e            jsr        del_ref
del_ob_6:
[0002b91a] 504b                      addq.w     #8,a3
[0002b91c] 102b 0007                 move.b     7(a3),d0
[0002b920] 4880                      ext.w      d0
[0002b922] 907c 0015                 sub.w      #$0015,d0
[0002b926] b07c 000c                 cmp.w      #$000C,d0
[0002b92a] 6268                      bhi.s      del_ob_7
[0002b92c] d040                      add.w      d0,d0
[0002b92e] 303b 0006                 move.w     $0002B936(pc,d0.w),d0
[0002b932] 4efb 0002                 jmp        $0002B936(pc,d0.w)
J20:
[0002b936] 001a                      dc.w $001a   ; del_ob_8-J20
[0002b938] 001a                      dc.w $001a   ; del_ob_8-J20
[0002b93a] 0028                      dc.w $0028   ; del_ob_9-J20
[0002b93c] 0036                      dc.w $0036   ; del_ob_10-J20
[0002b93e] 005e                      dc.w $005e   ; del_ob_7-J20
[0002b940] 0044                      dc.w $0044   ; del_ob_11-J20
[0002b942] 005e                      dc.w $005e   ; del_ob_7-J20
[0002b944] 0044                      dc.w $0044   ; del_ob_11-J20
[0002b946] 001a                      dc.w $001a   ; del_ob_8-J20
[0002b948] 001a                      dc.w $001a   ; del_ob_8-J20
[0002b94a] 0052                      dc.w $0052   ; del_ob_12-J20
[0002b94c] 0044                      dc.w $0044   ; del_ob_11-J20
[0002b94e] 0052                      dc.w $0052   ; del_ob_12-J20
del_ob_8:
[0002b950] 226b 000c                 movea.l    12(a3),a1
[0002b954] 204a                      movea.l    a2,a0
[0002b956] 4eb9 0003 4d66            jsr        del_tedinfo
[0002b95c] 6036                      bra.s      del_ob_7
del_ob_9:
[0002b95e] 226b 000c                 movea.l    12(a3),a1
[0002b962] 204a                      movea.l    a2,a0
[0002b964] 4eb9 0003 343a            jsr        del_image
[0002b96a] 6028                      bra.s      del_ob_7
del_ob_10:
[0002b96c] 226b 000c                 movea.l    12(a3),a1
[0002b970] 204a                      movea.l    a2,a0
[0002b972] 4eb9 0003 3764            jsr        del_user
[0002b978] 601a                      bra.s      del_ob_7
del_ob_11:
[0002b97a] 226b 000c                 movea.l    12(a3),a1
[0002b97e] 204a                      movea.l    a2,a0
[0002b980] 4eb9 0003 47e8            jsr        del_string
[0002b986] 600c                      bra.s      del_ob_7
del_ob_12:
[0002b988] 226b 000c                 movea.l    12(a3),a1
[0002b98c] 204a                      movea.l    a2,a0
[0002b98e] 4eb9 0003 3220            jsr        del_icon
del_ob_7:
[0002b994] 377c ffff 0006            move.w     #$FFFF,6(a3)
[0002b99a] 006a 0001 0006            ori.w      #$0001,6(a2)
[0002b9a0] 265f                      movea.l    (a7)+,a3
[0002b9a2] 245f                      movea.l    (a7)+,a2
[0002b9a4] 4e75                      rts

delsub_ob:
[0002b9a6] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0002b9aa] 2848                      movea.l    a0,a4
[0002b9ac] 2449                      movea.l    a1,a2
[0002b9ae] 3600                      move.w     d0,d3
[0002b9b0] 266a 0004                 movea.l    4(a2),a3
[0002b9b4] 48c0                      ext.l      d0
[0002b9b6] 2200                      move.l     d0,d1
[0002b9b8] e789                      lsl.l      #3,d1
[0002b9ba] 9280                      sub.l      d0,d1
[0002b9bc] e789                      lsl.l      #3,d1
[0002b9be] 3833 180a                 move.w     10(a3,d1.l),d4
[0002b9c2] 4a44                      tst.w      d4
[0002b9c4] 6b1e                      bmi.s      delsub_ob_1
delsub_ob_2:
[0002b9c6] 3004                      move.w     d4,d0
[0002b9c8] 224a                      movea.l    a2,a1
[0002b9ca] 204c                      movea.l    a4,a0
[0002b9cc] 6100 ffd8                 bsr.w      delsub_ob
[0002b9d0] 3204                      move.w     d4,d1
[0002b9d2] 48c1                      ext.l      d1
[0002b9d4] 2001                      move.l     d1,d0
[0002b9d6] e788                      lsl.l      #3,d0
[0002b9d8] 9081                      sub.l      d1,d0
[0002b9da] e788                      lsl.l      #3,d0
[0002b9dc] 3833 0808                 move.w     8(a3,d0.l),d4
[0002b9e0] b644                      cmp.w      d4,d3
[0002b9e2] 66e2                      bne.s      delsub_ob_2
delsub_ob_1:
[0002b9e4] 3203                      move.w     d3,d1
[0002b9e6] 48c1                      ext.l      d1
[0002b9e8] 2001                      move.l     d1,d0
[0002b9ea] e788                      lsl.l      #3,d0
[0002b9ec] 9081                      sub.l      d1,d0
[0002b9ee] e788                      lsl.l      #3,d0
[0002b9f0] 43f3 0800                 lea.l      0(a3,d0.l),a1
[0002b9f4] 204c                      movea.l    a4,a0
[0002b9f6] 6100 febe                 bsr        del_ob
[0002b9fa] 3003                      move.w     d3,d0
[0002b9fc] 204b                      movea.l    a3,a0
[0002b9fe] 4eb9 0002 bbf8            jsr        unlink_ob
[0002ba04] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0002ba08] 4e75                      rts

free_ob:
[0002ba0a] 48e7 1e20                 movem.l    d3-d6/a2,-(a7)
[0002ba0e] 2448                      movea.l    a0,a2
[0002ba10] 3600                      move.w     d0,d3
[0002ba12] 4a40                      tst.w      d0
[0002ba14] 6700 00a2                 beq        free_ob_1
[0002ba18] 3c00                      move.w     d0,d6
[0002ba1a] 3406                      move.w     d6,d2
[0002ba1c] 48c2                      ext.l      d2
[0002ba1e] 2202                      move.l     d2,d1
[0002ba20] e789                      lsl.l      #3,d1
[0002ba22] 9282                      sub.l      d2,d1
[0002ba24] e789                      lsl.l      #3,d1
[0002ba26] 3832 1808                 move.w     8(a2,d1.l),d4
[0002ba2a] 3a04                      move.w     d4,d5
[0002ba2c] 6012                      bra.s      free_ob_2
free_ob_3:
[0002ba2e] 3c04                      move.w     d4,d6
[0002ba30] 3206                      move.w     d6,d1
[0002ba32] 48c1                      ext.l      d1
[0002ba34] 2001                      move.l     d1,d0
[0002ba36] e788                      lsl.l      #3,d0
[0002ba38] 9081                      sub.l      d1,d0
[0002ba3a] e788                      lsl.l      #3,d0
[0002ba3c] 3832 0808                 move.w     8(a2,d0.l),d4
free_ob_2:
[0002ba40] 3204                      move.w     d4,d1
[0002ba42] 48c1                      ext.l      d1
[0002ba44] 2001                      move.l     d1,d0
[0002ba46] e788                      lsl.l      #3,d0
[0002ba48] 9081                      sub.l      d1,d0
[0002ba4a] e788                      lsl.l      #3,d0
[0002ba4c] bc72 080c                 cmp.w      12(a2,d0.l),d6
[0002ba50] 66dc                      bne.s      free_ob_3
[0002ba52] 3c32 080a                 move.w     10(a2,d0.l),d6
[0002ba56] b646                      cmp.w      d6,d3
[0002ba58] 6632                      bne.s      free_ob_4
[0002ba5a] b845                      cmp.w      d5,d4
[0002ba5c] 660c                      bne.s      free_ob_5
[0002ba5e] 74ff                      moveq.l    #-1,d2
[0002ba60] 3582 080c                 move.w     d2,12(a2,d0.l)
[0002ba64] 3582 080a                 move.w     d2,10(a2,d0.l)
[0002ba68] 604e                      bra.s      free_ob_1
free_ob_5:
[0002ba6a] 3204                      move.w     d4,d1
[0002ba6c] 48c1                      ext.l      d1
[0002ba6e] 2001                      move.l     d1,d0
[0002ba70] e788                      lsl.l      #3,d0
[0002ba72] 9081                      sub.l      d1,d0
[0002ba74] e788                      lsl.l      #3,d0
[0002ba76] 3585 080a                 move.w     d5,10(a2,d0.l)
[0002ba7a] 603c                      bra.s      free_ob_1
free_ob_6:
[0002ba7c] 3206                      move.w     d6,d1
[0002ba7e] 48c1                      ext.l      d1
[0002ba80] 2001                      move.l     d1,d0
[0002ba82] e788                      lsl.l      #3,d0
[0002ba84] 9081                      sub.l      d1,d0
[0002ba86] e788                      lsl.l      #3,d0
[0002ba88] 3c32 0808                 move.w     8(a2,d0.l),d6
free_ob_4:
[0002ba8c] 3206                      move.w     d6,d1
[0002ba8e] 48c1                      ext.l      d1
[0002ba90] 2001                      move.l     d1,d0
[0002ba92] e788                      lsl.l      #3,d0
[0002ba94] 9081                      sub.l      d1,d0
[0002ba96] e788                      lsl.l      #3,d0
[0002ba98] b672 0808                 cmp.w      8(a2,d0.l),d3
[0002ba9c] 66de                      bne.s      free_ob_6
[0002ba9e] 3585 0808                 move.w     d5,8(a2,d0.l)
[0002baa2] 3a04                      move.w     d4,d5
[0002baa4] 48c5                      ext.l      d5
[0002baa6] 2405                      move.l     d5,d2
[0002baa8] e78a                      lsl.l      #3,d2
[0002baaa] 9485                      sub.l      d5,d2
[0002baac] e78a                      lsl.l      #3,d2
[0002baae] b672 280c                 cmp.w      12(a2,d2.l),d3
[0002bab2] 6604                      bne.s      free_ob_1
[0002bab4] 3586 280c                 move.w     d6,12(a2,d2.l)
free_ob_1:
[0002bab8] 4cdf 0478                 movem.l    (a7)+,d3-d6/a2
[0002babc] 4e75                      rts

moveto_ob:
[0002babe] 48e7 1e20                 movem.l    d3-d6/a2,-(a7)
[0002bac2] 2448                      movea.l    a0,a2
[0002bac4] 3800                      move.w     d0,d4
[0002bac6] 3601                      move.w     d1,d3
[0002bac8] b240                      cmp.w      d0,d1
[0002baca] 6700 00be                 beq        moveto_ob_1
[0002bace] 48c0                      ext.l      d0
[0002bad0] 2400                      move.l     d0,d2
[0002bad2] e78a                      lsl.l      #3,d2
[0002bad4] 9480                      sub.l      d0,d2
[0002bad6] e78a                      lsl.l      #3,d2
[0002bad8] 43f2 2800                 lea.l      0(a2,d2.l),a1
[0002badc] 3403                      move.w     d3,d2
[0002bade] 48c2                      ext.l      d2
[0002bae0] 2202                      move.l     d2,d1
[0002bae2] e789                      lsl.l      #3,d1
[0002bae4] 9282                      sub.l      d2,d1
[0002bae6] e789                      lsl.l      #3,d1
[0002bae8] 41f2 1800                 lea.l      0(a2,d1.l),a0
[0002baec] 7038                      moveq.l    #56,d0
[0002baee] 4eb9 0007 6f44            jsr        memcpy
[0002baf4] 3204                      move.w     d4,d1
[0002baf6] 48c1                      ext.l      d1
[0002baf8] 2001                      move.l     d1,d0
[0002bafa] e788                      lsl.l      #3,d0
[0002bafc] 9081                      sub.l      d1,d0
[0002bafe] e788                      lsl.l      #3,d0
[0002bb00] 3c32 080c                 move.w     12(a2,d0.l),d6
[0002bb04] 4a46                      tst.w      d6
[0002bb06] 6b10                      bmi.s      moveto_ob_2
[0002bb08] 3006                      move.w     d6,d0
[0002bb0a] 48c0                      ext.l      d0
[0002bb0c] 2400                      move.l     d0,d2
[0002bb0e] e78a                      lsl.l      #3,d2
[0002bb10] 9480                      sub.l      d0,d2
[0002bb12] e78a                      lsl.l      #3,d2
[0002bb14] 3583 2808                 move.w     d3,8(a2,d2.l)
moveto_ob_2:
[0002bb18] 3c04                      move.w     d4,d6
[0002bb1a] 6002                      bra.s      moveto_ob_3
moveto_ob_4:
[0002bb1c] 3c05                      move.w     d5,d6
moveto_ob_3:
[0002bb1e] 3206                      move.w     d6,d1
[0002bb20] 48c1                      ext.l      d1
[0002bb22] 2001                      move.l     d1,d0
[0002bb24] e788                      lsl.l      #3,d0
[0002bb26] 9081                      sub.l      d1,d0
[0002bb28] e788                      lsl.l      #3,d0
[0002bb2a] 3a32 0808                 move.w     8(a2,d0.l),d5
[0002bb2e] 3005                      move.w     d5,d0
[0002bb30] 48c0                      ext.l      d0
[0002bb32] 2400                      move.l     d0,d2
[0002bb34] e78a                      lsl.l      #3,d2
[0002bb36] 9480                      sub.l      d0,d2
[0002bb38] e78a                      lsl.l      #3,d2
[0002bb3a] bc72 280c                 cmp.w      12(a2,d2.l),d6
[0002bb3e] 66dc                      bne.s      moveto_ob_4
[0002bb40] b872 280c                 cmp.w      12(a2,d2.l),d4
[0002bb44] 6604                      bne.s      moveto_ob_5
[0002bb46] 3583 280c                 move.w     d3,12(a2,d2.l)
moveto_ob_5:
[0002bb4a] 3205                      move.w     d5,d1
[0002bb4c] 48c1                      ext.l      d1
[0002bb4e] 2001                      move.l     d1,d0
[0002bb50] e788                      lsl.l      #3,d0
[0002bb52] 9081                      sub.l      d1,d0
[0002bb54] e788                      lsl.l      #3,d0
[0002bb56] 3c32 080a                 move.w     10(a2,d0.l),d6
[0002bb5a] b846                      cmp.w      d6,d4
[0002bb5c] 6616                      bne.s      moveto_ob_6
[0002bb5e] 3583 080a                 move.w     d3,10(a2,d0.l)
[0002bb62] 6026                      bra.s      moveto_ob_1
moveto_ob_7:
[0002bb64] 3206                      move.w     d6,d1
[0002bb66] 48c1                      ext.l      d1
[0002bb68] 2001                      move.l     d1,d0
[0002bb6a] e788                      lsl.l      #3,d0
[0002bb6c] 9081                      sub.l      d1,d0
[0002bb6e] e788                      lsl.l      #3,d0
[0002bb70] 3c32 0808                 move.w     8(a2,d0.l),d6
moveto_ob_6:
[0002bb74] 3206                      move.w     d6,d1
[0002bb76] 48c1                      ext.l      d1
[0002bb78] 2001                      move.l     d1,d0
[0002bb7a] e788                      lsl.l      #3,d0
[0002bb7c] 9081                      sub.l      d1,d0
[0002bb7e] e788                      lsl.l      #3,d0
[0002bb80] b872 0808                 cmp.w      8(a2,d0.l),d4
[0002bb84] 66de                      bne.s      moveto_ob_7
[0002bb86] 3583 0808                 move.w     d3,8(a2,d0.l)
moveto_ob_1:
[0002bb8a] 4cdf 0478                 movem.l    (a7)+,d3-d6/a2
[0002bb8e] 4e75                      rts

pack_ob:
[0002bb90] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0002bb94] 2448                      movea.l    a0,a2
[0002bb96] 266a 0004                 movea.l    4(a2),a3
[0002bb9a] 202a 000e                 move.l     14(a2),d0
[0002bb9e] 7238                      moveq.l    #56,d1
[0002bba0] 4eb9 0007 769e            jsr        _uldiv
[0002bba6] 2600                      move.l     d0,d3
[0002bba8] 4244                      clr.w      d4
[0002bbaa] 6042                      bra.s      pack_ob_1
pack_ob_5:
[0002bbac] 3204                      move.w     d4,d1
[0002bbae] 48c1                      ext.l      d1
[0002bbb0] 2001                      move.l     d1,d0
[0002bbb2] e788                      lsl.l      #3,d0
[0002bbb4] 9081                      sub.l      d1,d0
[0002bbb6] e788                      lsl.l      #3,d0
[0002bbb8] 0c73 ffff 080e            cmpi.w     #$FFFF,14(a3,d0.l)
[0002bbbe] 662c                      bne.s      pack_ob_2
pack_ob_4:
[0002bbc0] 5343                      subq.w     #1,d3
[0002bbc2] 04aa 0000 0038 000e       subi.l     #$00000038,14(a2)
[0002bbca] b644                      cmp.w      d4,d3
[0002bbcc] 6f24                      ble.s      pack_ob_3
[0002bbce] 3203                      move.w     d3,d1
[0002bbd0] 48c1                      ext.l      d1
[0002bbd2] 2001                      move.l     d1,d0
[0002bbd4] e788                      lsl.l      #3,d0
[0002bbd6] 9081                      sub.l      d1,d0
[0002bbd8] e788                      lsl.l      #3,d0
[0002bbda] 0c73 ffff 080e            cmpi.w     #$FFFF,14(a3,d0.l)
[0002bbe0] 67de                      beq.s      pack_ob_4
[0002bbe2] 204b                      movea.l    a3,a0
[0002bbe4] 3003                      move.w     d3,d0
[0002bbe6] 3204                      move.w     d4,d1
[0002bbe8] 6100 fed4                 bsr        moveto_ob
pack_ob_2:
[0002bbec] 5244                      addq.w     #1,d4
pack_ob_1:
[0002bbee] b644                      cmp.w      d4,d3
[0002bbf0] 6eba                      bgt.s      pack_ob_5
pack_ob_3:
[0002bbf2] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0002bbf6] 4e75                      rts

unlink_ob:
[0002bbf8] 48e7 1f20                 movem.l    d3-d7/a2,-(a7)
[0002bbfc] 2448                      movea.l    a0,a2
[0002bbfe] 3600                      move.w     d0,d3
[0002bc00] 48c0                      ext.l      d0
[0002bc02] 2200                      move.l     d0,d1
[0002bc04] e789                      lsl.l      #3,d1
[0002bc06] 9280                      sub.l      d0,d1
[0002bc08] e789                      lsl.l      #3,d1
[0002bc0a] 3832 180a                 move.w     10(a2,d1.l),d4
[0002bc0e] 4a43                      tst.w      d3
[0002bc10] 6660                      bne.s      unlink_ob_1
[0002bc12] 4a44                      tst.w      d4
[0002bc14] 6f00 0142                 ble        unlink_ob_2
[0002bc18] b86a 000c                 cmp.w      12(a2),d4
[0002bc1c] 6600 013a                 bne        unlink_ob_2
[0002bc20] 3204                      move.w     d4,d1
[0002bc22] 48c1                      ext.l      d1
[0002bc24] 2401                      move.l     d1,d2
[0002bc26] e78a                      lsl.l      #3,d2
[0002bc28] 9481                      sub.l      d1,d2
[0002bc2a] e78a                      lsl.l      #3,d2
[0002bc2c] 43f2 2800                 lea.l      0(a2,d2.l),a1
[0002bc30] 7038                      moveq.l    #56,d0
[0002bc32] 4eb9 0007 6f44            jsr        memcpy
[0002bc38] 3204                      move.w     d4,d1
[0002bc3a] 48c1                      ext.l      d1
[0002bc3c] 2001                      move.l     d1,d0
[0002bc3e] e788                      lsl.l      #3,d0
[0002bc40] 9081                      sub.l      d1,d0
[0002bc42] e788                      lsl.l      #3,d0
[0002bc44] 35bc ffff 080e            move.w     #$FFFF,14(a2,d0.l)
[0002bc4a] 357c ffff 0008            move.w     #$FFFF,8(a2)
[0002bc50] 426a 0018                 clr.w      24(a2)
[0002bc54] 426a 001a                 clr.w      26(a2)
[0002bc58] 342a 000c                 move.w     12(a2),d2
[0002bc5c] 6f00 00fa                 ble        unlink_ob_2
[0002bc60] 48c2                      ext.l      d2
[0002bc62] 2002                      move.l     d2,d0
[0002bc64] e788                      lsl.l      #3,d0
[0002bc66] 9082                      sub.l      d2,d0
[0002bc68] e788                      lsl.l      #3,d0
[0002bc6a] 4272 0808                 clr.w      8(a2,d0.l)
[0002bc6e] 6000 00e8                 bra        unlink_ob_2
unlink_ob_1:
[0002bc72] 4a44                      tst.w      d4
[0002bc74] 6a0c                      bpl.s      unlink_ob_3
[0002bc76] 3003                      move.w     d3,d0
[0002bc78] 204a                      movea.l    a2,a0
[0002bc7a] 6100 fd8e                 bsr        free_ob
[0002bc7e] 6000 00d8                 bra        unlink_ob_2
unlink_ob_3:
[0002bc82] 3203                      move.w     d3,d1
[0002bc84] 48c1                      ext.l      d1
[0002bc86] 2001                      move.l     d1,d0
[0002bc88] e788                      lsl.l      #3,d0
[0002bc8a] 9081                      sub.l      d1,d0
[0002bc8c] e788                      lsl.l      #3,d0
[0002bc8e] 3c32 0818                 move.w     24(a2,d0.l),d6
[0002bc92] 3e32 081a                 move.w     26(a2,d0.l),d7
[0002bc96] 3a04                      move.w     d4,d5
unlink_ob_4:
[0002bc98] 3205                      move.w     d5,d1
[0002bc9a] 48c1                      ext.l      d1
[0002bc9c] 2001                      move.l     d1,d0
[0002bc9e] e788                      lsl.l      #3,d0
[0002bca0] 9081                      sub.l      d1,d0
[0002bca2] e788                      lsl.l      #3,d0
[0002bca4] dd72 0818                 add.w      d6,24(a2,d0.l)
[0002bca8] df72 081a                 add.w      d7,26(a2,d0.l)
[0002bcac] 3a32 0808                 move.w     8(a2,d0.l),d5
[0002bcb0] b645                      cmp.w      d5,d3
[0002bcb2] 66e4                      bne.s      unlink_ob_4
[0002bcb4] 3e03                      move.w     d3,d7
[0002bcb6] 3207                      move.w     d7,d1
[0002bcb8] 48c1                      ext.l      d1
[0002bcba] 2001                      move.l     d1,d0
[0002bcbc] e788                      lsl.l      #3,d0
[0002bcbe] 9081                      sub.l      d1,d0
[0002bcc0] e788                      lsl.l      #3,d0
[0002bcc2] 3c32 0808                 move.w     8(a2,d0.l),d6
[0002bcc6] 3a06                      move.w     d6,d5
[0002bcc8] 6012                      bra.s      unlink_ob_5
unlink_ob_6:
[0002bcca] 3e06                      move.w     d6,d7
[0002bccc] 3207                      move.w     d7,d1
[0002bcce] 48c1                      ext.l      d1
[0002bcd0] 2001                      move.l     d1,d0
[0002bcd2] e788                      lsl.l      #3,d0
[0002bcd4] 9081                      sub.l      d1,d0
[0002bcd6] e788                      lsl.l      #3,d0
[0002bcd8] 3c32 0808                 move.w     8(a2,d0.l),d6
unlink_ob_5:
[0002bcdc] 3206                      move.w     d6,d1
[0002bcde] 48c1                      ext.l      d1
[0002bce0] 2001                      move.l     d1,d0
[0002bce2] e788                      lsl.l      #3,d0
[0002bce4] 9081                      sub.l      d1,d0
[0002bce6] e788                      lsl.l      #3,d0
[0002bce8] be72 080c                 cmp.w      12(a2,d0.l),d7
[0002bcec] 66dc                      bne.s      unlink_ob_6
[0002bcee] 3e32 080a                 move.w     10(a2,d0.l),d7
[0002bcf2] b647                      cmp.w      d7,d3
[0002bcf4] 6616                      bne.s      unlink_ob_7
[0002bcf6] 3584 080a                 move.w     d4,10(a2,d0.l)
[0002bcfa] 6026                      bra.s      unlink_ob_8
unlink_ob_9:
[0002bcfc] 3207                      move.w     d7,d1
[0002bcfe] 48c1                      ext.l      d1
[0002bd00] 2001                      move.l     d1,d0
[0002bd02] e788                      lsl.l      #3,d0
[0002bd04] 9081                      sub.l      d1,d0
[0002bd06] e788                      lsl.l      #3,d0
[0002bd08] 3e32 0808                 move.w     8(a2,d0.l),d7
unlink_ob_7:
[0002bd0c] 3207                      move.w     d7,d1
[0002bd0e] 48c1                      ext.l      d1
[0002bd10] 2001                      move.l     d1,d0
[0002bd12] e788                      lsl.l      #3,d0
[0002bd14] 9081                      sub.l      d1,d0
[0002bd16] e788                      lsl.l      #3,d0
[0002bd18] b672 0808                 cmp.w      8(a2,d0.l),d3
[0002bd1c] 66de                      bne.s      unlink_ob_9
[0002bd1e] 3584 0808                 move.w     d4,8(a2,d0.l)
unlink_ob_8:
[0002bd22] 3203                      move.w     d3,d1
[0002bd24] 48c1                      ext.l      d1
[0002bd26] 2001                      move.l     d1,d0
[0002bd28] e788                      lsl.l      #3,d0
[0002bd2a] 9081                      sub.l      d1,d0
[0002bd2c] e788                      lsl.l      #3,d0
[0002bd2e] 3e32 080c                 move.w     12(a2,d0.l),d7
[0002bd32] 3807                      move.w     d7,d4
[0002bd34] 48c4                      ext.l      d4
[0002bd36] 2404                      move.l     d4,d2
[0002bd38] e78a                      lsl.l      #3,d2
[0002bd3a] 9484                      sub.l      d4,d2
[0002bd3c] e78a                      lsl.l      #3,d2
[0002bd3e] 3585 2808                 move.w     d5,8(a2,d2.l)
[0002bd42] bc45                      cmp.w      d5,d6
[0002bd44] 6612                      bne.s      unlink_ob_2
[0002bd46] 3e06                      move.w     d6,d7
[0002bd48] 48c7                      ext.l      d7
[0002bd4a] 2a07                      move.l     d7,d5
[0002bd4c] e78d                      lsl.l      #3,d5
[0002bd4e] 9a87                      sub.l      d7,d5
[0002bd50] e78d                      lsl.l      #3,d5
[0002bd52] 35b2 080c 580c            move.w     12(a2,d0.l),12(a2,d5.l)
unlink_ob_2:
[0002bd58] 4cdf 04f8                 movem.l    (a7)+,d3-d7/a2
[0002bd5c] 4e75                      rts

rob:
[0002bd5e] 48e7 1e3e                 movem.l    d3-d6/a2-a6,-(a7)
[0002bd62] 2448                      movea.l    a0,a2
[0002bd64] 3600                      move.w     d0,d3
[0002bd66] 3801                      move.w     d1,d4
[0002bd68] 3c02                      move.w     d2,d6
[0002bd6a] 2849                      movea.l    a1,a4
[0002bd6c] 48c0                      ext.l      d0
[0002bd6e] 2200                      move.l     d0,d1
[0002bd70] e789                      lsl.l      #3,d1
[0002bd72] 9280                      sub.l      d0,d1
[0002bd74] e789                      lsl.l      #3,d1
[0002bd76] 47f2 1800                 lea.l      0(a2,d1.l),a3
[0002bd7a] 342b 0012                 move.w     18(a3),d2
[0002bd7e] c47c 0f00                 and.w      #$0F00,d2
[0002bd82] 6700 014c                 beq        rob_1
[0002bd86] 3a03                      move.w     d3,d5
[0002bd88] da45                      add.w      d5,d5
[0002bd8a] da43                      add.w      d3,d5
[0002bd8c] 5245                      addq.w     #1,d5
[0002bd8e] 3005                      move.w     d5,d0
[0002bd90] 48c0                      ext.l      d0
[0002bd92] 2200                      move.l     d0,d1
[0002bd94] d281                      add.l      d1,d1
[0002bd96] d280                      add.l      d0,d1
[0002bd98] e789                      lsl.l      #3,d1
[0002bd9a] 4bf4 1800                 lea.l      0(a4,d1.l),a5
[0002bd9e] 4ded 0018                 lea.l      24(a5),a6
[0002bda2] 342b 0012                 move.w     18(a3),d2
[0002bda6] c47c 0200                 and.w      #$0200,d2
[0002bdaa] 674c                      beq.s      rob_2
[0002bdac] 302b 0018                 move.w     24(a3),d0
[0002bdb0] 4eb9 0002 bfbe            jsr        pixel_x
[0002bdb6] d044                      add.w      d4,d0
[0002bdb8] 4eb9 0002 bf2a            jsr        char_x
[0002bdbe] 3a00                      move.w     d0,d5
[0002bdc0] 3740 0018                 move.w     d0,24(a3)
[0002bdc4] 3005                      move.w     d5,d0
[0002bdc6] 4eb9 0002 bfbe            jsr        pixel_x
[0002bdcc] 3b40 0010                 move.w     d0,16(a5)
[0002bdd0] 3d40 0010                 move.w     d0,16(a6)
[0002bdd4] 322b 0012                 move.w     18(a3),d1
[0002bdd8] c27c 0100                 and.w      #$0100,d1
[0002bddc] 664c                      bne.s      rob_3
[0002bdde] 302b 001c                 move.w     28(a3),d0
[0002bde2] 4eb9 0002 bfbe            jsr        pixel_x
[0002bde8] 9044                      sub.w      d4,d0
[0002bdea] 4eb9 0002 bf2a            jsr        char_x
[0002bdf0] 3a00                      move.w     d0,d5
[0002bdf2] 3740 001c                 move.w     d0,28(a3)
[0002bdf6] 6022                      bra.s      rob_4
rob_2:
[0002bdf8] 302b 0012                 move.w     18(a3),d0
[0002bdfc] c07c 0100                 and.w      #$0100,d0
[0002be00] 6728                      beq.s      rob_3
[0002be02] 302b 001c                 move.w     28(a3),d0
[0002be06] 4eb9 0002 bfbe            jsr        pixel_x
[0002be0c] d044                      add.w      d4,d0
[0002be0e] 4eb9 0002 bf2a            jsr        char_x
[0002be14] 3a00                      move.w     d0,d5
[0002be16] 3740 001c                 move.w     d0,28(a3)
rob_4:
[0002be1a] 3005                      move.w     d5,d0
[0002be1c] 4eb9 0002 bfbe            jsr        pixel_x
[0002be22] 3b40 0014                 move.w     d0,20(a5)
[0002be26] 3d40 0014                 move.w     d0,20(a6)
rob_3:
[0002be2a] 302b 0012                 move.w     18(a3),d0
[0002be2e] c07c 0800                 and.w      #$0800,d0
[0002be32] 674c                      beq.s      rob_5
[0002be34] 302b 001a                 move.w     26(a3),d0
[0002be38] 4eb9 0002 bfe6            jsr        pixel_y
[0002be3e] d046                      add.w      d6,d0
[0002be40] 4eb9 0002 bf74            jsr        char_y
[0002be46] 3a00                      move.w     d0,d5
[0002be48] 3740 001a                 move.w     d0,26(a3)
[0002be4c] 3005                      move.w     d5,d0
[0002be4e] 4eb9 0002 bfe6            jsr        pixel_y
[0002be54] 3b40 0012                 move.w     d0,18(a5)
[0002be58] 3d40 0012                 move.w     d0,18(a6)
[0002be5c] 322b 0012                 move.w     18(a3),d1
[0002be60] c27c 0400                 and.w      #$0400,d1
[0002be64] 664c                      bne.s      rob_6
[0002be66] 302b 001e                 move.w     30(a3),d0
[0002be6a] 4eb9 0002 bfe6            jsr        pixel_y
[0002be70] 9046                      sub.w      d6,d0
[0002be72] 4eb9 0002 bf74            jsr        char_y
[0002be78] 3a00                      move.w     d0,d5
[0002be7a] 3740 001e                 move.w     d0,30(a3)
[0002be7e] 6022                      bra.s      rob_7
rob_5:
[0002be80] 302b 0012                 move.w     18(a3),d0
[0002be84] c07c 0400                 and.w      #$0400,d0
[0002be88] 6728                      beq.s      rob_6
[0002be8a] 302b 001e                 move.w     30(a3),d0
[0002be8e] 4eb9 0002 bfe6            jsr        pixel_y
[0002be94] d046                      add.w      d6,d0
[0002be96] 4eb9 0002 bf74            jsr        char_y
[0002be9c] 3a00                      move.w     d0,d5
[0002be9e] 3740 001e                 move.w     d0,30(a3)
rob_7:
[0002bea2] 3005                      move.w     d5,d0
[0002bea4] 4eb9 0002 bfe6            jsr        pixel_y
[0002beaa] 3b40 0016                 move.w     d0,22(a5)
[0002beae] 3d40 0016                 move.w     d0,22(a6)
rob_6:
[0002beb2] 302b 0012                 move.w     18(a3),d0
[0002beb6] c07c 0f00                 and.w      #$0F00,d0
[0002beba] b07c 0f00                 cmp.w      #$0F00,d0
[0002bebe] 6710                      beq.s      rob_1
[0002bec0] 224c                      movea.l    a4,a1
[0002bec2] 3406                      move.w     d6,d2
[0002bec4] 3204                      move.w     d4,d1
[0002bec6] 204a                      movea.l    a2,a0
[0002bec8] 3003                      move.w     d3,d0
[0002beca] 4eb9 0002 bed6            jsr        resize_ob
rob_1:
[0002bed0] 4cdf 7c78                 movem.l    (a7)+,d3-d6/a2-a6
[0002bed4] 4e75                      rts

resize_ob:
[0002bed6] 48e7 1e30                 movem.l    d3-d6/a2-a3,-(a7)
[0002beda] 2448                      movea.l    a0,a2
[0002bedc] 3600                      move.w     d0,d3
[0002bede] 3a01                      move.w     d1,d5
[0002bee0] 3c02                      move.w     d2,d6
[0002bee2] 2649                      movea.l    a1,a3
[0002bee4] 3203                      move.w     d3,d1
[0002bee6] 48c1                      ext.l      d1
[0002bee8] 2001                      move.l     d1,d0
[0002beea] e788                      lsl.l      #3,d0
[0002beec] 9081                      sub.l      d1,d0
[0002beee] e788                      lsl.l      #3,d0
[0002bef0] 3832 080a                 move.w     10(a2,d0.l),d4
[0002bef4] 4a44                      tst.w      d4
[0002bef6] 6b2c                      bmi.s      resize_ob_1
[0002bef8] 4a45                      tst.w      d5
[0002befa] 6624                      bne.s      resize_ob_2
[0002befc] 4a42                      tst.w      d2
[0002befe] 6724                      beq.s      resize_ob_1
[0002bf00] 601e                      bra.s      resize_ob_2
resize_ob_3:
[0002bf02] 224b                      movea.l    a3,a1
[0002bf04] 3406                      move.w     d6,d2
[0002bf06] 3205                      move.w     d5,d1
[0002bf08] 3004                      move.w     d4,d0
[0002bf0a] 204a                      movea.l    a2,a0
[0002bf0c] 6100 fe50                 bsr        rob
[0002bf10] 3204                      move.w     d4,d1
[0002bf12] 48c1                      ext.l      d1
[0002bf14] 2001                      move.l     d1,d0
[0002bf16] e788                      lsl.l      #3,d0
[0002bf18] 9081                      sub.l      d1,d0
[0002bf1a] e788                      lsl.l      #3,d0
[0002bf1c] 3832 0808                 move.w     8(a2,d0.l),d4
resize_ob_2:
[0002bf20] b644                      cmp.w      d4,d3
[0002bf22] 66de                      bne.s      resize_ob_3
resize_ob_1:
[0002bf24] 4cdf 0c78                 movem.l    (a7)+,d3-d6/a2-a3
[0002bf28] 4e75                      rts

	.data

xbcd58:                           dc.b 'INDEX NAME',0
	.even
