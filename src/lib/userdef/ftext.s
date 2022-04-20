A_ftext:
[0005b6f4] 48e7 3f3e                 movem.l    d2-d7/a2-a6,-(a7)
[0005b6f8] 4fef ffbe                 lea.l      -66(a7),a7
[0005b6fc] 42af 0014                 clr.l      20(a7)
[0005b700] 206f 0072                 movea.l    114(a7),a0
[0005b704] 3228 0004                 move.w     4(a0),d1
[0005b708] 48c1                      ext.l      d1
[0005b70a] 2001                      move.l     d1,d0
[0005b70c] d080                      add.l      d0,d0
[0005b70e] d081                      add.l      d1,d0
[0005b710] e788                      lsl.l      #3,d0
[0005b712] 2250                      movea.l    (a0),a1
[0005b714] d3c0                      adda.l     d0,a1
[0005b716] 2f49 001e                 move.l     a1,30(a7)
[0005b71a] 2669 000c                 movea.l    12(a1),a3
[0005b71e] 262b 0004                 move.l     4(a3),d3
[0005b722] 7010                      moveq.l    #16,d0
[0005b724] e0a3                      asr.l      d0,d3
[0005b726] 2a6b 000c                 movea.l    12(a3),a5
[0005b72a] 204d                      movea.l    a5,a0
[0005b72c] 4eb9 0007 69b0            jsr        $000769B0
[0005b732] 49f5 0000                 lea.l      0(a5,d0.w),a4
[0005b736] 2c6b 0010                 movea.l    16(a3),a6
[0005b73a] 282b 0004                 move.l     4(a3),d4
[0005b73e] e084                      asr.l      #8,d4
[0005b740] c87c 003f                 and.w      #$003F,d4
[0005b744] 202b 0004                 move.l     4(a3),d0
[0005b748] 720e                      moveq.l    #14,d1
[0005b74a] e2a0                      asr.l      d1,d0
[0005b74c] c07c 0003                 and.w      #$0003,d0
[0005b750] 3f40 0022                 move.w     d0,34(a7)
[0005b754] 206f 0072                 movea.l    114(a7),a0
[0005b758] 3428 000c                 move.w     12(a0),d2
[0005b75c] d468 0010                 add.w      16(a0),d2
[0005b760] 5342                      subq.w     #1,d2
[0005b762] 3f42 001a                 move.w     d2,26(a7)
[0005b766] 3028 0016                 move.w     22(a0),d0
[0005b76a] 662c                      bne.s      $0005B798
[0005b76c] 3228 0018                 move.w     24(a0),d1
[0005b770] 6626                      bne.s      $0005B798
[0005b772] 2279 0010 1f12            movea.l    ACSblk,a1
[0005b778] 3f69 0008 003a            move.w     8(a1),58(a7)
[0005b77e] 3f69 000a 003c            move.w     10(a1),60(a7)
[0005b784] 3f69 000c 003e            move.w     12(a1),62(a7)
[0005b78a] 3429 000a                 move.w     10(a1),d2
[0005b78e] d469 000e                 add.w      14(a1),d2
[0005b792] 3f42 0040                 move.w     d2,64(a7)
[0005b796] 601c                      bra.s      $0005B7B4
[0005b798] 206f 0072                 movea.l    114(a7),a0
[0005b79c] 3f68 0012 003a            move.w     18(a0),58(a7)
[0005b7a2] 3f68 0014 003c            move.w     20(a0),60(a7)
[0005b7a8] 3f68 0016 003e            move.w     22(a0),62(a7)
[0005b7ae] 3f68 0018 0040            move.w     24(a0),64(a7)
[0005b7b4] 70ff                      moveq.l    #-1,d0
[0005b7b6] d06f 003a                 add.w      58(a7),d0
[0005b7ba] d16f 003e                 add.w      d0,62(a7)
[0005b7be] 70ff                      moveq.l    #-1,d0
[0005b7c0] d06f 003c                 add.w      60(a7),d0
[0005b7c4] d16f 0040                 add.w      d0,64(a7)
[0005b7c8] 302f 0040                 move.w     64(a7),d0
[0005b7cc] b06f 001a                 cmp.w      26(a7),d0
[0005b7d0] 6f06                      ble.s      $0005B7D8
[0005b7d2] 3f6f 001a 0040            move.w     26(a7),64(a7)
[0005b7d8] 302f 0040                 move.w     64(a7),d0
[0005b7dc] b06f 003c                 cmp.w      60(a7),d0
[0005b7e0] 6d00 02ee                 blt        $0005BAD0
[0005b7e4] 41ef 003a                 lea.l      58(a7),a0
[0005b7e8] 7201                      moveq.l    #1,d1
[0005b7ea] 2279 0010 1f12            movea.l    ACSblk,a1
[0005b7f0] 3029 0010                 move.w     16(a1),d0
[0005b7f4] 4eb9 0006 3f60            jsr        $00063F60
[0005b7fa] 7202                      moveq.l    #2,d1
[0005b7fc] 2079 0010 1f12            movea.l    ACSblk,a0
[0005b802] 3028 0010                 move.w     16(a0),d0
[0005b806] 4eb9 0006 4da0            jsr        $00064DA0
[0005b80c] 3203                      move.w     d3,d1
[0005b80e] 2079 0010 1f12            movea.l    ACSblk,a0
[0005b814] 3028 0010                 move.w     16(a0),d0
[0005b818] 4eb9 0006 5216            jsr        $00065216
[0005b81e] 4241                      clr.w      d1
[0005b820] 2079 0010 1f12            movea.l    ACSblk,a0
[0005b826] 3028 0010                 move.w     16(a0),d0
[0005b82a] 4eb9 0006 51c2            jsr        $000651C2
[0005b830] 3204                      move.w     d4,d1
[0005b832] 2079 0010 1f12            movea.l    ACSblk,a0
[0005b838] 3028 0010                 move.w     16(a0),d0
[0005b83c] 4eb9 0006 52be            jsr        $000652BE
[0005b842] 206f 0072                 movea.l    114(a7),a0
[0005b846] 3c28 000c                 move.w     12(a0),d6
[0005b84a] 302b 0006                 move.w     6(a3),d0
[0005b84e] c07c 00ff                 and.w      #$00FF,d0
[0005b852] 3f40 0028                 move.w     d0,40(a7)
[0005b856] 660c                      bne.s      $0005B864
[0005b858] 2279 0010 1f12            movea.l    ACSblk,a1
[0005b85e] 3f69 0018 0028            move.w     24(a1),40(a7)
[0005b864] 47ef 0026                 lea.l      38(a7),a3
[0005b868] 45ef 0024                 lea.l      36(a7),a2
[0005b86c] 486f 0028                 pea.l      40(a7)
[0005b870] 4853                      pea.l      (a3)
[0005b872] 224a                      movea.l    a2,a1
[0005b874] 204a                      movea.l    a2,a0
[0005b876] 322f 0030                 move.w     48(a7),d1
[0005b87a] 2f09                      move.l     a1,-(a7)
[0005b87c] 2279 0010 1f12            movea.l    ACSblk,a1
[0005b882] 3029 0010                 move.w     16(a1),d0
[0005b886] 225f                      movea.l    (a7)+,a1
[0005b888] 4eb9 0006 50a0            jsr        $000650A0
[0005b88e] 504f                      addq.w     #8,a7
[0005b890] 3216                      move.w     (a6),d1
[0005b892] 2079 0010 1f12            movea.l    ACSblk,a0
[0005b898] 3028 0010                 move.w     16(a0),d0
[0005b89c] 4eb9 0006 526a            jsr        $0006526A
[0005b8a2] 4def 002a                 lea.l      42(a7),a6
[0005b8a6] 4856                      pea.l      (a6)
[0005b8a8] 4852                      pea.l      (a2)
[0005b8aa] 486f 0038                 pea.l      56(a7)
[0005b8ae] 224a                      movea.l    a2,a1
[0005b8b0] 204a                      movea.l    a2,a0
[0005b8b2] 2f09                      move.l     a1,-(a7)
[0005b8b4] 2279 0010 1f12            movea.l    ACSblk,a1
[0005b8ba] 3029 0010                 move.w     16(a1),d0
[0005b8be] 225f                      movea.l    (a7)+,a1
[0005b8c0] 4eb9 0006 770e            jsr        $0006770E
[0005b8c6] 4fef 000c                 lea.l      12(a7),a7
[0005b8ca] 3016                      move.w     (a6),d0
[0005b8cc] d153                      add.w      d0,(a3)
[0005b8ce] d16f 0028                 add.w      d0,40(a7)
[0005b8d2] 206f 0072                 movea.l    114(a7),a0
[0005b8d6] 3e28 000a                 move.w     10(a0),d7
[0005b8da] 3f68 000e 0018            move.w     14(a0),24(a7)
[0005b8e0] 322f 0022                 move.w     34(a7),d1
[0005b8e4] 4a41                      tst.w      d1
[0005b8e6] 6716                      beq.s      $0005B8FE
[0005b8e8] 5341                      subq.w     #1,d1
[0005b8ea] 670c                      beq.s      $0005B8F8
[0005b8ec] 5341                      subq.w     #1,d1
[0005b8ee] 673a                      beq.s      $0005B92A
[0005b8f0] 5341                      subq.w     #1,d1
[0005b8f2] 676a                      beq.s      $0005B95E
[0005b8f4] 6000 0084                 bra        $0005B97A
[0005b8f8] de6e 0002                 add.w      2(a6),d7
[0005b8fc] 6060                      bra.s      $0005B95E
[0005b8fe] 206f 0072                 movea.l    114(a7),a0
[0005b902] 3028 000e                 move.w     14(a0),d0
[0005b906] e240                      asr.w      #1,d0
[0005b908] 5240                      addq.w     #1,d0
[0005b90a] de40                      add.w      d0,d7
[0005b90c] 224a                      movea.l    a2,a1
[0005b90e] 204a                      movea.l    a2,a0
[0005b910] 7405                      moveq.l    #5,d2
[0005b912] 7201                      moveq.l    #1,d1
[0005b914] 2f09                      move.l     a1,-(a7)
[0005b916] 2279 0010 1f12            movea.l    ACSblk,a1
[0005b91c] 3029 0010                 move.w     16(a1),d0
[0005b920] 225f                      movea.l    (a7)+,a1
[0005b922] 4eb9 0006 5312            jsr        $00065312
[0005b928] 6050                      bra.s      $0005B97A
[0005b92a] 206f 0072                 movea.l    114(a7),a0
[0005b92e] 3028 000e                 move.w     14(a0),d0
[0005b932] 906e 0004                 sub.w      4(a6),d0
[0005b936] de40                      add.w      d0,d7
[0005b938] 7210                      moveq.l    #16,d1
[0005b93a] c244                      and.w      d4,d1
[0005b93c] 6702                      beq.s      $0005B940
[0005b93e] 5547                      subq.w     #2,d7
[0005b940] 224a                      movea.l    a2,a1
[0005b942] 204a                      movea.l    a2,a0
[0005b944] 7405                      moveq.l    #5,d2
[0005b946] 7202                      moveq.l    #2,d1
[0005b948] 2f09                      move.l     a1,-(a7)
[0005b94a] 2279 0010 1f12            movea.l    ACSblk,a1
[0005b950] 3029 0010                 move.w     16(a1),d0
[0005b954] 225f                      movea.l    (a7)+,a1
[0005b956] 4eb9 0006 5312            jsr        $00065312
[0005b95c] 601c                      bra.s      $0005B97A
[0005b95e] 224a                      movea.l    a2,a1
[0005b960] 204a                      movea.l    a2,a0
[0005b962] 7405                      moveq.l    #5,d2
[0005b964] 4241                      clr.w      d1
[0005b966] 2f09                      move.l     a1,-(a7)
[0005b968] 2279 0010 1f12            movea.l    ACSblk,a1
[0005b96e] 3029 0010                 move.w     16(a1),d0
[0005b972] 225f                      movea.l    (a7)+,a1
[0005b974] 4eb9 0006 5312            jsr        $00065312
[0005b97a] 382f 0018                 move.w     24(a7),d4
[0005b97e] 986e 0002                 sub.w      2(a6),d4
[0005b982] 986e 0004                 sub.w      4(a6),d4
[0005b986] 3013                      move.w     (a3),d0
[0005b988] 6e04                      bgt.s      $0005B98E
[0005b98a] 36bc 0001                 move.w     #$0001,(a3)
[0005b98e] 3004                      move.w     d4,d0
[0005b990] 48c0                      ext.l      d0
[0005b992] 81d3                      divs.w     (a3),d0
[0005b994] 3f40 001c                 move.w     d0,28(a7)
[0005b998] 5340                      subq.w     #1,d0
[0005b99a] 6d00 0134                 blt        $0005BAD0
[0005b99e] 2c4d                      movea.l    a5,a6
[0005b9a0] 707c                      moveq.l    #124,d0
[0005b9a2] 204e                      movea.l    a6,a0
[0005b9a4] 4eb9 0007 68ce            jsr        $000768CE
[0005b9aa] 2448                      movea.l    a0,a2
[0005b9ac] 302f 001c                 move.w     28(a7),d0
[0005b9b0] 47f6 0000                 lea.l      0(a6,d0.w),a3
[0005b9b4] 220a                      move.l     a2,d1
[0005b9b6] 6712                      beq.s      $0005B9CA
[0005b9b8] b7c1                      cmpa.l     d1,a3
[0005b9ba] 630e                      bls.s      $0005B9CA
[0005b9bc] 264a                      movea.l    a2,a3
[0005b9be] 43ea 0001                 lea.l      1(a2),a1
[0005b9c2] 2f49 0014                 move.l     a1,20(a7)
[0005b9c6] 6000 007c                 bra.w      $0005BA44
[0005b9ca] b7cc                      cmpa.l     a4,a3
[0005b9cc] 643e                      bcc.s      $0005BA0C
[0005b9ce] 4243                      clr.w      d3
[0005b9d0] 200a                      move.l     a2,d0
[0005b9d2] 6704                      beq.s      $0005B9D8
[0005b9d4] b08b                      cmp.l      a3,d0
[0005b9d6] 6334                      bls.s      $0005BA0C
[0005b9d8] 1a13                      move.b     (a3),d5
[0005b9da] 4213                      clr.b      (a3)
[0005b9dc] 43d7                      lea.l      (a7),a1
[0005b9de] 204e                      movea.l    a6,a0
[0005b9e0] 2a79 0010 1f12            movea.l    ACSblk,a5
[0005b9e6] 302d 0010                 move.w     16(a5),d0
[0005b9ea] 4eb9 0006 732e            jsr        $0006732E
[0005b9f0] 1685                      move.b     d5,(a3)
[0005b9f2] 302f 0004                 move.w     4(a7),d0
[0005b9f6] 9057                      sub.w      (a7),d0
[0005b9f8] b840                      cmp.w      d0,d4
[0005b9fa] 6c08                      bge.s      $0005BA04
[0005b9fc] 534b                      subq.w     #1,a3
[0005b9fe] 4a43                      tst.w      d3
[0005ba00] 660a                      bne.s      $0005BA0C
[0005ba02] 6004                      bra.s      $0005BA08
[0005ba04] 524b                      addq.w     #1,a3
[0005ba06] 7601                      moveq.l    #1,d3
[0005ba08] b9cb                      cmpa.l     a3,a4
[0005ba0a] 64c4                      bcc.s      $0005B9D0
[0005ba0c] b7ca                      cmpa.l     a2,a3
[0005ba0e] 6720                      beq.s      $0005BA30
[0005ba10] b9cb                      cmpa.l     a3,a4
[0005ba12] 631c                      bls.s      $0005BA30
[0005ba14] 2f4b 0010                 move.l     a3,16(a7)
[0005ba18] 6002                      bra.s      $0005BA1C
[0005ba1a] 534b                      subq.w     #1,a3
[0005ba1c] 0c2b 0020 ffff            cmpi.b     #$20,-1(a3)
[0005ba22] 6704                      beq.s      $0005BA28
[0005ba24] bdcb                      cmpa.l     a3,a6
[0005ba26] 65f2                      bcs.s      $0005BA1A
[0005ba28] bdcb                      cmpa.l     a3,a6
[0005ba2a] 6604                      bne.s      $0005BA30
[0005ba2c] 266f 0010                 movea.l    16(a7),a3
[0005ba30] 2f4b 0014                 move.l     a3,20(a7)
[0005ba34] 200a                      move.l     a2,d0
[0005ba36] 670c                      beq.s      $0005BA44
[0005ba38] b7c0                      cmpa.l     d0,a3
[0005ba3a] 6608                      bne.s      $0005BA44
[0005ba3c] 52af 0014                 addq.l     #1,20(a7)
[0005ba40] 6002                      bra.s      $0005BA44
[0005ba42] 524e                      addq.w     #1,a6
[0005ba44] 0c16 0020                 cmpi.b     #$20,(a6)
[0005ba48] 6608                      bne.s      $0005BA52
[0005ba4a] b7ce                      cmpa.l     a6,a3
[0005ba4c] 62f4                      bhi.s      $0005BA42
[0005ba4e] 6002                      bra.s      $0005BA52
[0005ba50] 534b                      subq.w     #1,a3
[0005ba52] 0c2b 0020 ffff            cmpi.b     #$20,-1(a3)
[0005ba58] 6604                      bne.s      $0005BA5E
[0005ba5a] bdcb                      cmpa.l     a3,a6
[0005ba5c] 65f2                      bcs.s      $0005BA50
[0005ba5e] 1a13                      move.b     (a3),d5
[0005ba60] 4213                      clr.b      (a3)
[0005ba62] 0c6f 0003 0022            cmpi.w     #$0003,34(a7)
[0005ba68] 6624                      bne.s      $0005BA8E
[0005ba6a] 4267                      clr.w      -(a7)
[0005ba6c] 7001                      moveq.l    #1,d0
[0005ba6e] 3f00                      move.w     d0,-(a7)
[0005ba70] 3f2f 001c                 move.w     28(a7),-(a7)
[0005ba74] 204e                      movea.l    a6,a0
[0005ba76] 3406                      move.w     d6,d2
[0005ba78] 3207                      move.w     d7,d1
[0005ba7a] 2279 0010 1f12            movea.l    ACSblk,a1
[0005ba80] 3029 0010                 move.w     16(a1),d0
[0005ba84] 4eb9 0006 48f8            jsr        $000648F8
[0005ba8a] 5c4f                      addq.w     #6,a7
[0005ba8c] 6016                      bra.s      $0005BAA4
[0005ba8e] 204e                      movea.l    a6,a0
[0005ba90] 3406                      move.w     d6,d2
[0005ba92] 3207                      move.w     d7,d1
[0005ba94] 2279 0010 1f12            movea.l    ACSblk,a1
[0005ba9a] 3029 0010                 move.w     16(a1),d0
[0005ba9e] 4eb9 0006 41e0            jsr        $000641E0
[0005baa4] 1685                      move.b     d5,(a3)
[0005baa6] 2c6f 0014                 movea.l    20(a7),a6
[0005baaa] dc6f 0028                 add.w      40(a7),d6
[0005baae] bc6f 001a                 cmp.w      26(a7),d6
[0005bab2] 6c06                      bge.s      $0005BABA
[0005bab4] b9ce                      cmpa.l     a6,a4
[0005bab6] 6200 fee8                 bhi        $0005B9A0
[0005baba] 41ef 003a                 lea.l      58(a7),a0
[0005babe] 4241                      clr.w      d1
[0005bac0] 2279 0010 1f12            movea.l    ACSblk,a1
[0005bac6] 3029 0010                 move.w     16(a1),d0
[0005baca] 4eb9 0006 3f60            jsr        $00063F60
[0005bad0] 70fe                      moveq.l    #-2,d0
[0005bad2] 206f 0072                 movea.l    114(a7),a0
[0005bad6] c068 0008                 and.w      8(a0),d0
[0005bada] 4fef 0042                 lea.l      66(a7),a7
[0005bade] 4cdf 7cfc                 movem.l    (a7)+,d2-d7/a2-a6
[0005bae2] 4e75                      rts
Auo_ftext:
[0005bae4] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0005bae8] 594f                      subq.w     #4,a7
[0005baea] 2e89                      move.l     a1,(a7)
[0005baec] 2468 000c                 movea.l    12(a0),a2
[0005baf0] 266a 0010                 movea.l    16(a2),a3
[0005baf4] 3200                      move.w     d0,d1
[0005baf6] b27c 0014                 cmp.w      #$0014,d1
[0005bafa] 6700 0218                 beq        $0005BD14
[0005bafe] 6e3a                      bgt.s      $0005BB3A
[0005bb00] b27c 0013                 cmp.w      #$0013,d1
[0005bb04] 6200 020a                 bhi        $0005BD10
[0005bb08] d241                      add.w      d1,d1
[0005bb0a] 323b 1006                 move.w     $0005BB12(pc,d1.w),d1
[0005bb0e] 4efb 1002                 jmp        $0005BB12(pc,d1.w)
J50:
[0005bb12] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb14] 004e                      dc.w $004e   ; $0005bb60-$0005bb12
[0005bb16] 009c                      dc.w $009c   ; $0005bbae-$0005bb12
[0005bb18] 010e                      dc.w $010e   ; $0005bc20-$0005bb12
[0005bb1a] 00de                      dc.w $00de   ; $0005bbf0-$0005bb12
[0005bb1c] 0118                      dc.w $0118   ; $0005bc2a-$0005bb12
[0005bb1e] 0118                      dc.w $0118   ; $0005bc2a-$0005bb12
[0005bb20] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb22] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb24] 00b2                      dc.w $00b2   ; $0005bbc4-$0005bb12
[0005bb26] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb28] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb2a] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb2c] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb2e] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb30] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb32] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb34] 01fe                      dc.w $01fe   ; $0005bd10-$0005bb12
[0005bb36] 00c8                      dc.w $00c8   ; $0005bbda-$0005bb12
[0005bb38] 0202                      dc.w $0202   ; $0005bd14-$0005bb12
[0005bb3a] 927c                      dc.w $927c   ; $00054d8e-$0005bb12
[0005bb3c] 012c                      dc.w $012c   ; $0005bc3e-$0005bb12
[0005bb3e] b27c                      dc.w $b27c   ; $00056d8e-$0005bb12
[0005bb40] 0007                      dc.w $0007   ; $0005bb19-$0005bb12
[0005bb42] 6200 01cc                 bhi        $0005BD10
[0005bb46] d241                      add.w      d1,d1
[0005bb48] 323b 1006                 move.w     $0005BB50(pc,d1.w),d1
[0005bb4c] 4efb 1002                 jmp        $0005BB50(pc,d1.w)
J51:
[0005bb50] 00f6                      dc.w $00f6   ; $0005bc46-$0005bb50
[0005bb52] 0116                      dc.w $0116   ; $0005bc66-$0005bb50
[0005bb54] 013e                      dc.w $013e   ; $0005bc8e-$0005bb50
[0005bb56] 0146                      dc.w $0146   ; $0005bc96-$0005bb50
[0005bb58] 0168                      dc.w $0168   ; $0005bcb8-$0005bb50
[0005bb5a] 017e                      dc.w $017e   ; $0005bcce-$0005bb50
[0005bb5c] 0194                      dc.w $0194   ; $0005bce4-$0005bb50
[0005bb5e] 01aa                      dc.w $01aa   ; $0005bcfa-$0005bb50
[0005bb60] 202a                      dc.w $202a   ; $0005db7a-$0005bb50
[0005bb62] 000c                      dc.w $000c   ; $0005bb5c-$0005bb50
[0005bb64] 670c                      beq.s      $0005BB72
[0005bb66] 2040                      movea.l    d0,a0
[0005bb68] 4eb9 0004 36d6            jsr        Ast_create
[0005bb6e] 2548 000c                 move.l     a0,12(a2)
[0005bb72] 202a 000c                 move.l     12(a2),d0
[0005bb76] 6610                      bne.s      $0005BB88
[0005bb78] 41f9 000d 4e26            lea.l      $000D4E26,a0
[0005bb7e] 4eb9 0004 36d6            jsr        Ast_create
[0005bb84] 2548 000c                 move.l     a0,12(a2)
[0005bb88] 7010                      moveq.l    #16,d0
[0005bb8a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005bb90] 2648                      movea.l    a0,a3
[0005bb92] 200b                      move.l     a3,d0
[0005bb94] 6700 017a                 beq        $0005BD10
[0005bb98] 7010                      moveq.l    #16,d0
[0005bb9a] 43f9 000d 4e16            lea.l      $000D4E16,a1
[0005bba0] 4eb9 0007 6f44            jsr        $00076F44
[0005bba6] 254b 0010                 move.l     a3,16(a2)
[0005bbaa] 6000 0168                 bra        $0005BD14
[0005bbae] 206a 000c                 movea.l    12(a2),a0
[0005bbb2] 4eb9 0004 371c            jsr        $0004371C
[0005bbb8] 204b                      movea.l    a3,a0
[0005bbba] 4eb9 0004 7e26            jsr        $00047E26
[0005bbc0] 6000 0152                 bra        $0005BD14
[0005bbc4] 2857                      movea.l    (a7),a4
[0005bbc6] 2754 0006                 move.l     (a4),6(a3)
[0005bbca] 276c 0004 000a            move.l     4(a4),10(a3)
[0005bbd0] 376c 0008 000e            move.w     8(a4),14(a3)
[0005bbd6] 6000 013c                 bra        $0005BD14
[0005bbda] 2857                      movea.l    (a7),a4
[0005bbdc] 28ab 0006                 move.l     6(a3),(a4)
[0005bbe0] 296b 000a 0004            move.l     10(a3),4(a4)
[0005bbe6] 396b 000e 0008            move.w     14(a3),8(a4)
[0005bbec] 6000 0126                 bra        $0005BD14
[0005bbf0] 206a 000c                 movea.l    12(a2),a0
[0005bbf4] 4eb9 0004 371c            jsr        $0004371C
[0005bbfa] 2057                      movea.l    (a7),a0
[0005bbfc] 4eb9 0004 36d6            jsr        Ast_create
[0005bc02] 2548 000c                 move.l     a0,12(a2)
[0005bc06] 2008                      move.l     a0,d0
[0005bc08] 6600 010a                 bne        $0005BD14
[0005bc0c] 41f9 000d 4e26            lea.l      $000D4E26,a0
[0005bc12] 4eb9 0004 36d6            jsr        Ast_create
[0005bc18] 2548 000c                 move.l     a0,12(a2)
[0005bc1c] 6000 00f6                 bra        $0005BD14
[0005bc20] 2057                      movea.l    (a7),a0
[0005bc22] 20aa 000c                 move.l     12(a2),(a0)
[0005bc26] 6000 00ec                 bra        $0005BD14
[0005bc2a] 286b 0006                 movea.l    6(a3),a4
[0005bc2e] 200c                      move.l     a4,d0
[0005bc30] 6700 00e2                 beq        $0005BD14
[0005bc34] 72ff                      moveq.l    #-1,d1
[0005bc36] 302b 000e                 move.w     14(a3),d0
[0005bc3a] 204c                      movea.l    a4,a0
[0005bc3c] 226c 0066                 movea.l    102(a4),a1
[0005bc40] 4e91                      jsr        (a1)
[0005bc42] 6000 00d0                 bra        $0005BD14
[0005bc46] 2057                      movea.l    (a7),a0
[0005bc48] 3610                      move.w     (a0),d3
[0005bc4a] 48c3                      ext.l      d3
[0005bc4c] 202a 0004                 move.l     4(a2),d0
[0005bc50] c0bc 0000 ffff            and.l      #$0000FFFF,d0
[0005bc56] 2203                      move.l     d3,d1
[0005bc58] 7410                      moveq.l    #16,d2
[0005bc5a] e5a9                      lsl.l      d2,d1
[0005bc5c] 8081                      or.l       d1,d0
[0005bc5e] 2540 0004                 move.l     d0,4(a2)
[0005bc62] 6000 00b0                 bra        $0005BD14
[0005bc66] 2057                      movea.l    (a7),a0
[0005bc68] 3610                      move.w     (a0),d3
[0005bc6a] 48c3                      ext.l      d3
[0005bc6c] b6bc 0000 00ff            cmp.l      #$000000FF,d3
[0005bc72] 6f06                      ble.s      $0005BC7A
[0005bc74] 263c 0000 00ff            move.l     #$000000FF,d3
[0005bc7a] 202a 0004                 move.l     4(a2),d0
[0005bc7e] c0bc ffff ff00            and.l      #$FFFFFF00,d0
[0005bc84] 8083                      or.l       d3,d0
[0005bc86] 2540 0004                 move.l     d0,4(a2)
[0005bc8a] 6000 0088                 bra        $0005BD14
[0005bc8e] 2057                      movea.l    (a7),a0
[0005bc90] 3690                      move.w     (a0),(a3)
[0005bc92] 6000 0080                 bra        $0005BD14
[0005bc96] 2057                      movea.l    (a7),a0
[0005bc98] 3610                      move.w     (a0),d3
[0005bc9a] 48c3                      ext.l      d3
[0005bc9c] c6bc 0000 003f            and.l      #$0000003F,d3
[0005bca2] 202a 0004                 move.l     4(a2),d0
[0005bca6] c0bc ffff c0ff            and.l      #$FFFFC0FF,d0
[0005bcac] 2203                      move.l     d3,d1
[0005bcae] e189                      lsl.l      #8,d1
[0005bcb0] 8081                      or.l       d1,d0
[0005bcb2] 2540 0004                 move.l     d0,4(a2)
[0005bcb6] 605c                      bra.s      $0005BD14
[0005bcb8] 202a 0004                 move.l     4(a2),d0
[0005bcbc] c0bc ffff 3fff            and.l      #$FFFF3FFF,d0
[0005bcc2] 80bc 0000 4000            or.l       #$00004000,d0
[0005bcc8] 2540 0004                 move.l     d0,4(a2)
[0005bccc] 6046                      bra.s      $0005BD14
[0005bcce] 202a 0004                 move.l     4(a2),d0
[0005bcd2] c0bc ffff 3fff            and.l      #$FFFF3FFF,d0
[0005bcd8] 80bc ffff 8000            or.l       #$FFFF8000,d0
[0005bcde] 2540 0004                 move.l     d0,4(a2)
[0005bce2] 6030                      bra.s      $0005BD14
[0005bce4] 202a 0004                 move.l     4(a2),d0
[0005bce8] c0bc ffff 3fff            and.l      #$FFFF3FFF,d0
[0005bcee] 80bc 0000 0000            or.l       #$00000000,d0
[0005bcf4] 2540 0004                 move.l     d0,4(a2)
[0005bcf8] 601a                      bra.s      $0005BD14
[0005bcfa] 202a 0004                 move.l     4(a2),d0
[0005bcfe] c0bc ffff 3fff            and.l      #$FFFF3FFF,d0
[0005bd04] 80bc ffff c000            or.l       #$FFFFC000,d0
[0005bd0a] 2540 0004                 move.l     d0,4(a2)
[0005bd0e] 6004                      bra.s      $0005BD14
[0005bd10] 4240                      clr.w      d0
[0005bd12] 6002                      bra.s      $0005BD16
[0005bd14] 7001                      moveq.l    #1,d0
[0005bd16] 584f                      addq.w     #4,a7
[0005bd18] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0005bd1c] 4e75                      rts
