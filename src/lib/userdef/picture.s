
A_picture:
[0005ca2a] 48e7 3f3c                 movem.l    d2-d7/a2-a5,-(a7)
[0005ca2e] 4fef fff0                 lea.l      -16(a7),a7
[0005ca32] 246f 003c                 movea.l    60(a7),a2
[0005ca36] 322a 0004                 move.w     4(a2),d1
[0005ca3a] 48c1                      ext.l      d1
[0005ca3c] 2001                      move.l     d1,d0
[0005ca3e] d080                      add.l      d0,d0
[0005ca40] d081                      add.l      d1,d0
[0005ca42] e788                      lsl.l      #3,d0
[0005ca44] 2052                      movea.l    (a2),a0
[0005ca46] d1c0                      adda.l     d0,a0
[0005ca48] 2068 000c                 movea.l    12(a0),a0
[0005ca4c] 2668 0014                 movea.l    20(a0),a3
[0005ca50] 200b                      move.l     a3,d0
[0005ca52] 6700 02d4                 beq        A_picture_1
[0005ca56] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0005ca5c] 302a 0016                 move.w     22(a2),d0
[0005ca60] 6606                      bne.s      A_picture_2
[0005ca62] 322a 0018                 move.w     24(a2),d1
[0005ca66] 6728                      beq.s      A_picture_3
A_picture_2:
[0005ca68] 3eaa 0012                 move.w     18(a2),(a7)
[0005ca6c] 3f6a 0014 0002            move.w     20(a2),2(a7)
[0005ca72] 302a 0012                 move.w     18(a2),d0
[0005ca76] d06a 0016                 add.w      22(a2),d0
[0005ca7a] 5340                      subq.w     #1,d0
[0005ca7c] 3f40 0004                 move.w     d0,4(a7)
[0005ca80] 322a 0014                 move.w     20(a2),d1
[0005ca84] d26a 0018                 add.w      24(a2),d1
[0005ca88] 5341                      subq.w     #1,d1
[0005ca8a] 3f41 0006                 move.w     d1,6(a7)
[0005ca8e] 6028                      bra.s      A_picture_4
A_picture_3:
[0005ca90] 2055                      movea.l    (a5),a0
[0005ca92] 3ea8 0008                 move.w     8(a0),(a7)
[0005ca96] 3f68 000a 0002            move.w     10(a0),2(a7)
[0005ca9c] 3028 0008                 move.w     8(a0),d0
[0005caa0] d068 000a                 add.w      10(a0),d0
[0005caa4] 5340                      subq.w     #1,d0
[0005caa6] 3f40 0004                 move.w     d0,4(a7)
[0005caaa] 3228 000a                 move.w     10(a0),d1
[0005caae] d268 000c                 add.w      12(a0),d1
[0005cab2] 5341                      subq.w     #1,d1
[0005cab4] 3f41 0006                 move.w     d1,6(a7)
A_picture_4:
[0005cab8] 3017                      move.w     (a7),d0
[0005caba] b06a 000a                 cmp.w      10(a2),d0
[0005cabe] 6c04                      bge.s      A_picture_5
[0005cac0] 3eaa 000a                 move.w     10(a2),(a7)
A_picture_5:
[0005cac4] 302f 0002                 move.w     2(a7),d0
[0005cac8] b06a 000c                 cmp.w      12(a2),d0
[0005cacc] 6c06                      bge.s      A_picture_6
[0005cace] 3f6a 000c 0002            move.w     12(a2),2(a7)
A_picture_6:
[0005cad4] 362a 000a                 move.w     10(a2),d3
[0005cad8] d66a 000e                 add.w      14(a2),d3
[0005cadc] 5343                      subq.w     #1,d3
[0005cade] b66f 0004                 cmp.w      4(a7),d3
[0005cae2] 6c04                      bge.s      A_picture_7
[0005cae4] 3f43 0004                 move.w     d3,4(a7)
A_picture_7:
[0005cae8] 362a 000c                 move.w     12(a2),d3
[0005caec] d66a 0010                 add.w      16(a2),d3
[0005caf0] 5343                      subq.w     #1,d3
[0005caf2] b66f 0006                 cmp.w      6(a7),d3
[0005caf6] 6c04                      bge.s      A_picture_8
[0005caf8] 3f43 0006                 move.w     d3,6(a7)
A_picture_8:
[0005cafc] 3017                      move.w     (a7),d0
[0005cafe] b06f 0004                 cmp.w      4(a7),d0
[0005cb02] 6e00 0224                 bgt        A_picture_1
[0005cb06] 322f 0002                 move.w     2(a7),d1
[0005cb0a] b26f 0006                 cmp.w      6(a7),d1
[0005cb0e] 6e00 0218                 bgt        A_picture_1
[0005cb12] 41d7                      lea.l      (a7),a0
[0005cb14] 2255                      movea.l    (a5),a1
[0005cb16] 3029 0010                 move.w     16(a1),d0
[0005cb1a] 7201                      moveq.l    #1,d1
[0005cb1c] 4eb9 0006 3f60            jsr        vs_clip
[0005cb22] 382b 0004                 move.w     4(a3),d4
[0005cb26] 3a2b 0006                 move.w     6(a3),d5
[0005cb2a] 7002                      moveq.l    #2,d0
[0005cb2c] c0aa 001a                 and.l      26(a2),d0
[0005cb30] 6700 007e                 beq.w      A_picture_9
[0005cb34] 4241                      clr.w      d1
[0005cb36] 3f41 0002                 move.w     d1,2(a7)
[0005cb3a] 3e81                      move.w     d1,(a7)
[0005cb3c] 74ff                      moveq.l    #-1,d2
[0005cb3e] d444                      add.w      d4,d2
[0005cb40] 3f42 0004                 move.w     d2,4(a7)
[0005cb44] 72ff                      moveq.l    #-1,d1
[0005cb46] d245                      add.w      d5,d1
[0005cb48] 3f41 0006                 move.w     d1,6(a7)
[0005cb4c] 3c2a 000c                 move.w     12(a2),d6
[0005cb50] 604e                      bra.s      A_picture_10
A_picture_13:
[0005cb52] 3e2a 000a                 move.w     10(a2),d7
[0005cb56] 603a                      bra.s      A_picture_11
A_picture_12:
[0005cb58] 3f47 0008                 move.w     d7,8(a7)
[0005cb5c] 3f46 000a                 move.w     d6,10(a7)
[0005cb60] 3007                      move.w     d7,d0
[0005cb62] d044                      add.w      d4,d0
[0005cb64] 5340                      subq.w     #1,d0
[0005cb66] 3f40 000c                 move.w     d0,12(a7)
[0005cb6a] 3206                      move.w     d6,d1
[0005cb6c] d245                      add.w      d5,d1
[0005cb6e] 5341                      subq.w     #1,d1
[0005cb70] 3f41 000e                 move.w     d1,14(a7)
[0005cb74] 2055                      movea.l    (a5),a0
[0005cb76] 4868 026a                 pea.l      618(a0)
[0005cb7a] 224b                      movea.l    a3,a1
[0005cb7c] 41ef 0004                 lea.l      4(a7),a0
[0005cb80] 2855                      movea.l    (a5),a4
[0005cb82] 302c 0010                 move.w     16(a4),d0
[0005cb86] 7203                      moveq.l    #3,d1
[0005cb88] 4eb9 0006 65ce            jsr        vro_cpyfm
[0005cb8e] 584f                      addq.w     #4,a7
[0005cb90] de44                      add.w      d4,d7
A_picture_11:
[0005cb92] 302a 000a                 move.w     10(a2),d0
[0005cb96] d06a 000e                 add.w      14(a2),d0
[0005cb9a] be40                      cmp.w      d0,d7
[0005cb9c] 6dba                      blt.s      A_picture_12
[0005cb9e] dc45                      add.w      d5,d6
A_picture_10:
[0005cba0] 302a 000c                 move.w     12(a2),d0
[0005cba4] d06a 0010                 add.w      16(a2),d0
[0005cba8] bc40                      cmp.w      d0,d6
[0005cbaa] 6da6                      blt.s      A_picture_13
[0005cbac] 6000 016a                 bra        A_picture_14
A_picture_9:
[0005cbb0] 202a 001a                 move.l     26(a2),d0
[0005cbb4] c0bc 0010 0000            and.l      #$00100000,d0
[0005cbba] 6752                      beq.s      A_picture_15
[0005cbbc] 2055                      movea.l    (a5),a0
[0005cbbe] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0005cbc4] 6d1c                      blt.s      A_picture_16
[0005cbc6] 7208                      moveq.l    #8,d1
[0005cbc8] 3028 0010                 move.w     16(a0),d0
[0005cbcc] 4eb9 0006 5438            jsr        vsf_color
[0005cbd2] 7201                      moveq.l    #1,d1
[0005cbd4] 2055                      movea.l    (a5),a0
[0005cbd6] 3028 0010                 move.w     16(a0),d0
[0005cbda] 4eb9 0006 5390            jsr        vsf_interior
[0005cbe0] 6070                      bra.s      A_picture_17
A_picture_16:
[0005cbe2] 7201                      moveq.l    #1,d1
[0005cbe4] 2055                      movea.l    (a5),a0
[0005cbe6] 3028 0010                 move.w     16(a0),d0
[0005cbea] 4eb9 0006 5438            jsr        vsf_color
[0005cbf0] 7202                      moveq.l    #2,d1
[0005cbf2] 2055                      movea.l    (a5),a0
[0005cbf4] 3028 0010                 move.w     16(a0),d0
[0005cbf8] 4eb9 0006 5390            jsr        vsf_interior
[0005cbfe] 7204                      moveq.l    #4,d1
[0005cc00] 2055                      movea.l    (a5),a0
[0005cc02] 3028 0010                 move.w     16(a0),d0
[0005cc06] 4eb9 0006 53e4            jsr        vsf_style
[0005cc0c] 6044                      bra.s      A_picture_17
A_picture_15:
[0005cc0e] 222a 001a                 move.l     26(a2),d1
[0005cc12] e881                      asr.l      #4,d1
[0005cc14] c27c 000f                 and.w      #$000F,d1
[0005cc18] 2055                      movea.l    (a5),a0
[0005cc1a] 3028 0010                 move.w     16(a0),d0
[0005cc1e] 4eb9 0006 5438            jsr        vsf_color
[0005cc24] 222a 001a                 move.l     26(a2),d1
[0005cc28] e081                      asr.l      #8,d1
[0005cc2a] c27c 001f                 and.w      #$001F,d1
[0005cc2e] 2055                      movea.l    (a5),a0
[0005cc30] 3028 0010                 move.w     16(a0),d0
[0005cc34] 4eb9 0006 53e4            jsr        vsf_style
[0005cc3a] 222a 001a                 move.l     26(a2),d1
[0005cc3e] 7010                      moveq.l    #16,d0
[0005cc40] e0a1                      asr.l      d0,d1
[0005cc42] c27c 000f                 and.w      #$000F,d1
[0005cc46] 2055                      movea.l    (a5),a0
[0005cc48] 3028 0010                 move.w     16(a0),d0
[0005cc4c] 4eb9 0006 5390            jsr        vsf_interior
A_picture_17:
[0005cc52] 7201                      moveq.l    #1,d1
[0005cc54] 2055                      movea.l    (a5),a0
[0005cc56] 3028 0010                 move.w     16(a0),d0
[0005cc5a] 4eb9 0006 4da0            jsr        vswr_mode
[0005cc60] 4241                      clr.w      d1
[0005cc62] 2055                      movea.l    (a5),a0
[0005cc64] 3028 0010                 move.w     16(a0),d0
[0005cc68] 4eb9 0006 548c            jsr        vsf_perimeter
[0005cc6e] 41d7                      lea.l      (a7),a0
[0005cc70] 2255                      movea.l    (a5),a1
[0005cc72] 3029 0010                 move.w     16(a1),d0
[0005cc76] 4eb9 0006 455e            jsr        v_bar
[0005cc7c] 4240                      clr.w      d0
[0005cc7e] 3f40 0002                 move.w     d0,2(a7)
[0005cc82] 3e80                      move.w     d0,(a7)
[0005cc84] 362a 000e                 move.w     14(a2),d3
[0005cc88] 9644                      sub.w      d4,d3
[0005cc8a] 4a43                      tst.w      d3
[0005cc8c] 6f16                      ble.s      A_picture_18
[0005cc8e] 72ff                      moveq.l    #-1,d1
[0005cc90] d244                      add.w      d4,d1
[0005cc92] 3f41 0004                 move.w     d1,4(a7)
[0005cc96] 3003                      move.w     d3,d0
[0005cc98] e240                      asr.w      #1,d0
[0005cc9a] d06a 000a                 add.w      10(a2),d0
[0005cc9e] 3f40 0008                 move.w     d0,8(a7)
[0005cca2] 6010                      bra.s      A_picture_19
A_picture_18:
[0005cca4] 70ff                      moveq.l    #-1,d0
[0005cca6] d06a 000e                 add.w      14(a2),d0
[0005ccaa] 3f40 0004                 move.w     d0,4(a7)
[0005ccae] 3f6a 000a 0008            move.w     10(a2),8(a7)
A_picture_19:
[0005ccb4] 302f 0008                 move.w     8(a7),d0
[0005ccb8] d06f 0004                 add.w      4(a7),d0
[0005ccbc] 3f40 000c                 move.w     d0,12(a7)
[0005ccc0] 362a 0010                 move.w     16(a2),d3
[0005ccc4] 9645                      sub.w      d5,d3
[0005ccc6] 4a43                      tst.w      d3
[0005ccc8] 6f16                      ble.s      A_picture_20
[0005ccca] 72ff                      moveq.l    #-1,d1
[0005cccc] d245                      add.w      d5,d1
[0005ccce] 3f41 0006                 move.w     d1,6(a7)
[0005ccd2] 3003                      move.w     d3,d0
[0005ccd4] e240                      asr.w      #1,d0
[0005ccd6] d06a 000c                 add.w      12(a2),d0
[0005ccda] 3f40 000a                 move.w     d0,10(a7)
[0005ccde] 6010                      bra.s      A_picture_21
A_picture_20:
[0005cce0] 70ff                      moveq.l    #-1,d0
[0005cce2] d06a 0010                 add.w      16(a2),d0
[0005cce6] 3f40 0006                 move.w     d0,6(a7)
[0005ccea] 3f6a 000c 000a            move.w     12(a2),10(a7)
A_picture_21:
[0005ccf0] 302f 000a                 move.w     10(a7),d0
[0005ccf4] d06f 0006                 add.w      6(a7),d0
[0005ccf8] 3f40 000e                 move.w     d0,14(a7)
[0005ccfc] 2055                      movea.l    (a5),a0
[0005ccfe] 4868 026a                 pea.l      618(a0)
[0005cd02] 224b                      movea.l    a3,a1
[0005cd04] 41ef 0004                 lea.l      4(a7),a0
[0005cd08] 7203                      moveq.l    #3,d1
[0005cd0a] 2855                      movea.l    (a5),a4
[0005cd0c] 302c 0010                 move.w     16(a4),d0
[0005cd10] 4eb9 0006 65ce            jsr        vro_cpyfm
[0005cd16] 584f                      addq.w     #4,a7
A_picture_14:
[0005cd18] 41d7                      lea.l      (a7),a0
[0005cd1a] 4241                      clr.w      d1
[0005cd1c] 2255                      movea.l    (a5),a1
[0005cd1e] 3029 0010                 move.w     16(a1),d0
[0005cd22] 4eb9 0006 3f60            jsr        vs_clip
A_picture_1:
[0005cd28] 70fe                      moveq.l    #-2,d0
[0005cd2a] c06a 0008                 and.w      8(a2),d0
[0005cd2e] 4fef 0010                 lea.l      16(a7),a7
[0005cd32] 4cdf 3cfc                 movem.l    (a7)+,d2-d7/a2-a5
[0005cd36] 4e75                      rts

del_pic:
[0005cd38] 2f0a                      move.l     a2,-(a7)
[0005cd3a] 2f0b                      move.l     a3,-(a7)
[0005cd3c] 2448                      movea.l    a0,a2
[0005cd3e] 7001                      moveq.l    #1,d0
[0005cd40] c0aa 0004                 and.l      4(a2),d0
[0005cd44] 662c                      bne.s      del_pic_1
[0005cd46] 266a 000c                 movea.l    12(a2),a3
[0005cd4a] 220b                      move.l     a3,d1
[0005cd4c] 6724                      beq.s      del_pic_1
[0005cd4e] 226b 0014                 movea.l    20(a3),a1
[0005cd52] b3ea 0014                 cmpa.l     20(a2),a1
[0005cd56] 661a                      bne.s      del_pic_1
[0005cd58] 53ab 0018                 subq.l     #1,24(a3)
[0005cd5c] 6e1e                      bgt.s      del_pic_2
[0005cd5e] 206b 0014                 movea.l    20(a3),a0
[0005cd62] 4eb9 0004 d996            jsr        Abp_delete
[0005cd68] 42ab 0014                 clr.l      20(a3)
[0005cd6c] 42ab 0018                 clr.l      24(a3)
[0005cd70] 600a                      bra.s      del_pic_2
del_pic_1:
[0005cd72] 206a 0014                 movea.l    20(a2),a0
[0005cd76] 4eb9 0004 d996            jsr        Abp_delete
del_pic_2:
[0005cd7c] 42aa 0014                 clr.l      20(a2)
[0005cd80] 265f                      movea.l    (a7)+,a3
[0005cd82] 245f                      movea.l    (a7)+,a2
[0005cd84] 4e75                      rts

make_pic:
[0005cd86] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[0005cd8a] 4fef fff0                 lea.l      -16(a7),a7
[0005cd8e] 2448                      movea.l    a0,a2
[0005cd90] 266a 000c                 movea.l    12(a2),a3
[0005cd94] 322b 0006                 move.w     6(a3),d1
[0005cd98] 302b 0004                 move.w     4(a3),d0
[0005cd9c] 4eb9 0004 d928            jsr        Abp_create
[0005cda2] 2848                      movea.l    a0,a4
[0005cda4] 200c                      move.l     a4,d0
[0005cda6] 677a                      beq.s      make_pic_1
[0005cda8] 302c 0008                 move.w     8(a4),d0
[0005cdac] 48c0                      ext.l      d0
[0005cdae] d080                      add.l      d0,d0
[0005cdb0] 322c 0006                 move.w     6(a4),d1
[0005cdb4] 48c1                      ext.l      d1
[0005cdb6] 4eb9 0007 76f0            jsr        _lmul
[0005cdbc] 2600                      move.l     d0,d3
[0005cdbe] 382b 000c                 move.w     12(a3),d4
[0005cdc2] 3a04                      move.w     d4,d5
[0005cdc4] 2079 0010 1f12            movea.l    ACSblk,a0
[0005cdca] 9a68 001c                 sub.w      28(a0),d5
[0005cdce] 4a45                      tst.w      d5
[0005cdd0] 6b34                      bmi.s      make_pic_2
[0005cdd2] 3768 001c 000c            move.w     28(a0),12(a3)
[0005cdd8] 3005                      move.w     d5,d0
[0005cdda] 48c0                      ext.l      d0
[0005cddc] 2203                      move.l     d3,d1
[0005cdde] 4eb9 0007 76f0            jsr        _lmul
[0005cde4] 41f3 081c                 lea.l      28(a3,d0.l),a0
[0005cde8] 2688                      move.l     a0,(a3)
[0005cdea] 224c                      movea.l    a4,a1
[0005cdec] 2079 0010 1f12            movea.l    ACSblk,a0
[0005cdf2] 3028 0010                 move.w     16(a0),d0
[0005cdf6] 204b                      movea.l    a3,a0
[0005cdf8] 4eb9 0006 66a8            jsr        vr_trnfm
[0005cdfe] 3744 000c                 move.w     d4,12(a3)
[0005ce02] 6000 0100                 bra        make_pic_3
make_pic_2:
[0005ce06] 322b 0006                 move.w     6(a3),d1
[0005ce0a] 302b 0004                 move.w     4(a3),d0
[0005ce0e] 4eb9 0004 d928            jsr        Abp_create
[0005ce14] 2c48                      movea.l    a0,a6
[0005ce16] 200e                      move.l     a6,d0
[0005ce18] 660e                      bne.s      make_pic_4
[0005ce1a] 204c                      movea.l    a4,a0
[0005ce1c] 4eb9 0004 d996            jsr        Abp_delete
make_pic_1:
[0005ce22] 70ff                      moveq.l    #-1,d0
[0005ce24] 6000 00f8                 bra        make_pic_5
make_pic_4:
[0005ce28] b87c 0001                 cmp.w      #$0001,d4
[0005ce2c] 6670                      bne.s      make_pic_6
[0005ce2e] 3d7c 0001 000c            move.w     #$0001,12(a6)
[0005ce34] 41eb 001c                 lea.l      28(a3),a0
[0005ce38] 2688                      move.l     a0,(a3)
[0005ce3a] 224e                      movea.l    a6,a1
[0005ce3c] 2079 0010 1f12            movea.l    ACSblk,a0
[0005ce42] 3028 0010                 move.w     16(a0),d0
[0005ce46] 204b                      movea.l    a3,a0
[0005ce48] 4eb9 0006 66a8            jsr        vr_trnfm
[0005ce4e] 4240                      clr.w      d0
[0005ce50] 3f40 000a                 move.w     d0,10(a7)
[0005ce54] 3f40 0008                 move.w     d0,8(a7)
[0005ce58] 3f40 0002                 move.w     d0,2(a7)
[0005ce5c] 3e80                      move.w     d0,(a7)
[0005ce5e] 72ff                      moveq.l    #-1,d1
[0005ce60] d26e 0004                 add.w      4(a6),d1
[0005ce64] 3f41 000c                 move.w     d1,12(a7)
[0005ce68] 3f41 0004                 move.w     d1,4(a7)
[0005ce6c] 70ff                      moveq.l    #-1,d0
[0005ce6e] d06e 0006                 add.w      6(a6),d0
[0005ce72] 3f40 000e                 move.w     d0,14(a7)
[0005ce76] 3f40 0006                 move.w     d0,6(a7)
[0005ce7a] 4879 000d 4e52            pea.l      color
[0005ce80] 2f0c                      move.l     a4,-(a7)
[0005ce82] 224e                      movea.l    a6,a1
[0005ce84] 41ef 0008                 lea.l      8(a7),a0
[0005ce88] 7201                      moveq.l    #1,d1
[0005ce8a] 2a79 0010 1f12            movea.l    ACSblk,a5
[0005ce90] 302d 0010                 move.w     16(a5),d0
[0005ce94] 4eb9 0006 6632            jsr        vrt_cpyfm
[0005ce9a] 504f                      addq.w     #8,a7
[0005ce9c] 605e                      bra.s      make_pic_7
make_pic_6:
[0005ce9e] 3d7c 0001 000a            move.w     #$0001,10(a6)
[0005cea4] 3004                      move.w     d4,d0
[0005cea6] 48c0                      ext.l      d0
[0005cea8] 2203                      move.l     d3,d1
[0005ceaa] 4eb9 0007 76f0            jsr        _lmul
[0005ceb0] 43eb 001c                 lea.l      28(a3),a1
[0005ceb4] 2056                      movea.l    (a6),a0
[0005ceb6] 4eb9 0007 6f44            jsr        memcpy
[0005cebc] 3005                      move.w     d5,d0
[0005cebe] 4440                      neg.w      d0
[0005cec0] 48c0                      ext.l      d0
[0005cec2] 2203                      move.l     d3,d1
[0005cec4] 4eb9 0007 76f0            jsr        _lmul
[0005ceca] 2200                      move.l     d0,d1
[0005cecc] 2f01                      move.l     d1,-(a7)
[0005cece] 3004                      move.w     d4,d0
[0005ced0] 48c0                      ext.l      d0
[0005ced2] 2203                      move.l     d3,d1
[0005ced4] 4eb9 0007 76f0            jsr        _lmul
[0005ceda] 2056                      movea.l    (a6),a0
[0005cedc] d1c0                      adda.l     d0,a0
[0005cede] 4240                      clr.w      d0
[0005cee0] 221f                      move.l     (a7)+,d1
[0005cee2] 4eb9 0007 712e            jsr        memset
[0005cee8] 224c                      movea.l    a4,a1
[0005ceea] 204e                      movea.l    a6,a0
[0005ceec] 2a79 0010 1f12            movea.l    ACSblk,a5
[0005cef2] 302d 0010                 move.w     16(a5),d0
[0005cef6] 4eb9 0006 66a8            jsr        vr_trnfm
make_pic_7:
[0005cefc] 204e                      movea.l    a6,a0
[0005cefe] 4eb9 0004 d996            jsr        Abp_delete
make_pic_3:
[0005cf04] 254c 0014                 move.l     a4,20(a2)
[0005cf08] 7001                      moveq.l    #1,d0
[0005cf0a] c0aa 0004                 and.l      4(a2),d0
[0005cf0e] 660c                      bne.s      make_pic_8
[0005cf10] 274c 0014                 move.l     a4,20(a3)
[0005cf14] 277c 0000 0001 0018       move.l     #$00000001,24(a3)
make_pic_8:
[0005cf1c] 4240                      clr.w      d0
make_pic_5:
[0005cf1e] 4fef 0010                 lea.l      16(a7),a7
[0005cf22] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[0005cf26] 4e75                      rts

Auo_picture:
[0005cf28] 48e7 0038                 movem.l    a2-a4,-(a7)
[0005cf2c] 594f                      subq.w     #4,a7
[0005cf2e] 2849                      movea.l    a1,a4
[0005cf30] 2468 000c                 movea.l    12(a0),a2
[0005cf34] 3200                      move.w     d0,d1
[0005cf36] b27c 0009                 cmp.w      #$0009,d1
[0005cf3a] 6700 00a0                 beq        Auo_picture_1
[0005cf3e] 6e1a                      bgt.s      Auo_picture_2
[0005cf40] 5341                      subq.w     #1,d1
[0005cf42] 672e                      beq.s      Auo_picture_3
[0005cf44] 5341                      subq.w     #1,d1
[0005cf46] 6700 0082                 beq        Auo_picture_4
[0005cf4a] 5741                      subq.w     #3,d1
[0005cf4c] 6700 00a4                 beq        Auo_picture_5
[0005cf50] 5341                      subq.w     #1,d1
[0005cf52] 6700 009e                 beq        Auo_picture_5
[0005cf56] 6000 00b4                 bra        Auo_picture_6
Auo_picture_2:
[0005cf5a] 927c 0013                 sub.w      #$0013,d1
[0005cf5e] 6700 00b0                 beq        Auo_picture_7
[0005cf62] 5341                      subq.w     #1,d1
[0005cf64] 6700 00aa                 beq        Auo_picture_7
[0005cf68] 927c 01e0                 sub.w      #$01E0,d1
[0005cf6c] 6750                      beq.s      Auo_picture_8
[0005cf6e] 6000 009c                 bra        Auo_picture_6
Auo_picture_3:
[0005cf72] 700a                      moveq.l    #10,d0
[0005cf74] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005cf7a] 2648                      movea.l    a0,a3
[0005cf7c] 200b                      move.l     a3,d0
[0005cf7e] 672a                      beq.s      Auo_picture_9
[0005cf80] 2540 0010                 move.l     d0,16(a2)
[0005cf84] 4290                      clr.l      (a0)
[0005cf86] 2eaa 000c                 move.l     12(a2),(a7)
[0005cf8a] 2217                      move.l     (a7),d1
[0005cf8c] 6700 0082                 beq        Auo_picture_7
[0005cf90] 7401                      moveq.l    #1,d2
[0005cf92] c4aa 0004                 and.l      4(a2),d2
[0005cf96] 6608                      bne.s      Auo_picture_10
[0005cf98] 2241                      movea.l    d1,a1
[0005cf9a] 2029 0014                 move.l     20(a1),d0
[0005cf9e] 6610                      bne.s      Auo_picture_11
Auo_picture_10:
[0005cfa0] 204a                      movea.l    a2,a0
[0005cfa2] 6100 fde2                 bsr        make_pic
[0005cfa6] 5240                      addq.w     #1,d0
[0005cfa8] 6666                      bne.s      Auo_picture_7
Auo_picture_9:
[0005cfaa] 38bc ffff                 move.w     #$FFFF,(a4)
[0005cfae] 6060                      bra.s      Auo_picture_7
Auo_picture_11:
[0005cfb0] 2057                      movea.l    (a7),a0
[0005cfb2] 52a8 0018                 addq.l     #1,24(a0)
[0005cfb6] 2568 0014 0014            move.l     20(a0),20(a2)
[0005cfbc] 6052                      bra.s      Auo_picture_7
Auo_picture_8:
[0005cfbe] 204a                      movea.l    a2,a0
[0005cfc0] 6100 fd76                 bsr        del_pic
[0005cfc4] 254c 0014                 move.l     a4,20(a2)
[0005cfc8] 6046                      bra.s      Auo_picture_7
Auo_picture_4:
[0005cfca] 206a 0010                 movea.l    16(a2),a0
[0005cfce] 4eb9 0004 7e26            jsr        Ax_free
[0005cfd4] 204a                      movea.l    a2,a0
[0005cfd6] 6100 fd60                 bsr        del_pic
[0005cfda] 6034                      bra.s      Auo_picture_7
Auo_picture_1:
[0005cfdc] 264c                      movea.l    a4,a3
[0005cfde] 206a 0010                 movea.l    16(a2),a0
[0005cfe2] 2094                      move.l     (a4),(a0)
[0005cfe4] 216b 0004 0004            move.l     4(a3),4(a0)
[0005cfea] 316b 0008 0008            move.w     8(a3),8(a0)
[0005cff0] 601e                      bra.s      Auo_picture_7
Auo_picture_5:
[0005cff2] 266a 0010                 movea.l    16(a2),a3
[0005cff6] 2853                      movea.l    (a3),a4
[0005cff8] 200c                      move.l     a4,d0
[0005cffa] 6714                      beq.s      Auo_picture_7
[0005cffc] 72ff                      moveq.l    #-1,d1
[0005cffe] 302b 0008                 move.w     8(a3),d0
[0005d002] 204c                      movea.l    a4,a0
[0005d004] 226c 0066                 movea.l    102(a4),a1
[0005d008] 4e91                      jsr        (a1)
[0005d00a] 6004                      bra.s      Auo_picture_7
Auo_picture_6:
[0005d00c] 4240                      clr.w      d0
[0005d00e] 6002                      bra.s      Auo_picture_12
Auo_picture_7:
[0005d010] 7001                      moveq.l    #1,d0
Auo_picture_12:
[0005d012] 584f                      addq.w     #4,a7
[0005d014] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0005d018] 4e75                      rts

		.data

color:
[000d4e52]                           dc.w $0001
[000d4e54]                           dc.w $0000
