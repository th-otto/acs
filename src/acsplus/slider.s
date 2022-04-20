
dr_3dbut:
[00034eac] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00034eb0] 4fef fff4                 lea.l      -12(a7),a7
[00034eb4] 2648                      movea.l    a0,a3
[00034eb6] 3600                      move.w     d0,d3
[00034eb8] 45f9 0010 1f12            lea.l      ACSblk,a2
[00034ebe] 2052                      movea.l    (a2),a0
[00034ec0] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[00034ec6] 6d30                      blt.s      dr_3dbut_1
[00034ec8] 4a43                      tst.w      d3
[00034eca] 670e                      beq.s      dr_3dbut_2
[00034ecc] 7208                      moveq.l    #8,d1
[00034ece] 3028 0010                 move.w     16(a0),d0
[00034ed2] 4eb9 0006 5438            jsr        vsf_color
[00034ed8] 600e                      bra.s      dr_3dbut_3
dr_3dbut_2:
[00034eda] 7209                      moveq.l    #9,d1
[00034edc] 2052                      movea.l    (a2),a0
[00034ede] 3028 0010                 move.w     16(a0),d0
[00034ee2] 4eb9 0006 5438            jsr        vsf_color
dr_3dbut_3:
[00034ee8] 7201                      moveq.l    #1,d1
[00034eea] 2052                      movea.l    (a2),a0
[00034eec] 3028 0010                 move.w     16(a0),d0
[00034ef0] 4eb9 0006 5390            jsr        vsf_interior
[00034ef6] 6022                      bra.s      dr_3dbut_4
dr_3dbut_1:
[00034ef8] 4a43                      tst.w      d3
[00034efa] 6710                      beq.s      dr_3dbut_5
[00034efc] 4241                      clr.w      d1
[00034efe] 2052                      movea.l    (a2),a0
[00034f00] 3028 0010                 move.w     16(a0),d0
[00034f04] 4eb9 0006 5438            jsr        vsf_color
[00034f0a] 600e                      bra.s      dr_3dbut_4
dr_3dbut_5:
[00034f0c] 7201                      moveq.l    #1,d1
[00034f0e] 2052                      movea.l    (a2),a0
[00034f10] 3028 0010                 move.w     16(a0),d0
[00034f14] 4eb9 0006 5438            jsr        vsf_color
dr_3dbut_4:
[00034f1a] 204b                      movea.l    a3,a0
[00034f1c] 2252                      movea.l    (a2),a1
[00034f1e] 3029 0010                 move.w     16(a1),d0
[00034f22] 4eb9 0006 455e            jsr        v_bar
[00034f28] 3013                      move.w     (a3),d0
[00034f2a] 3f40 0004                 move.w     d0,4(a7)
[00034f2e] 3e80                      move.w     d0,(a7)
[00034f30] 3f6b 0006 0002            move.w     6(a3),2(a7)
[00034f36] 302b 0002                 move.w     2(a3),d0
[00034f3a] 3f40 000a                 move.w     d0,10(a7)
[00034f3e] 3f40 0006                 move.w     d0,6(a7)
[00034f42] 3f6b 0004 0008            move.w     4(a3),8(a7)
[00034f48] 7201                      moveq.l    #1,d1
[00034f4a] 2052                      movea.l    (a2),a0
[00034f4c] 3028 0010                 move.w     16(a0),d0
[00034f50] 4eb9 0006 4ef0            jsr        vsl_color
[00034f56] 41d7                      lea.l      (a7),a0
[00034f58] 7203                      moveq.l    #3,d1
[00034f5a] 2252                      movea.l    (a2),a1
[00034f5c] 3029 0010                 move.w     16(a1),d0
[00034f60] 4eb9 0006 4010            jsr        v_pline
[00034f66] 3f6b 0004 0004            move.w     4(a3),4(a7)
[00034f6c] 3f6b 0006 0006            move.w     6(a3),6(a7)
[00034f72] 41d7                      lea.l      (a7),a0
[00034f74] 7203                      moveq.l    #3,d1
[00034f76] 2252                      movea.l    (a2),a1
[00034f78] 3029 0010                 move.w     16(a1),d0
[00034f7c] 4eb9 0006 4010            jsr        v_pline
[00034f82] 4a43                      tst.w      d3
[00034f84] 6778                      beq.s      dr_3dbut_6
[00034f86] 7001                      moveq.l    #1,d0
[00034f88] d053                      add.w      (a3),d0
[00034f8a] 3f40 0004                 move.w     d0,4(a7)
[00034f8e] 7201                      moveq.l    #1,d1
[00034f90] d26b 0002                 add.w      2(a3),d1
[00034f94] 3f41 0006                 move.w     d1,6(a7)
[00034f98] 5257                      addq.w     #1,(a7)
[00034f9a] 536f 0002                 subq.w     #1,2(a7)
[00034f9e] 536f 0008                 subq.w     #1,8(a7)
[00034fa2] 526f 000a                 addq.w     #1,10(a7)
[00034fa6] 2052                      movea.l    (a2),a0
[00034fa8] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[00034fae] 6d1c                      blt.s      dr_3dbut_7
[00034fb0] 3028 0010                 move.w     16(a0),d0
[00034fb4] 4241                      clr.w      d1
[00034fb6] 4eb9 0006 4ef0            jsr        vsl_color
[00034fbc] 41d7                      lea.l      (a7),a0
[00034fbe] 7203                      moveq.l    #3,d1
[00034fc0] 2252                      movea.l    (a2),a1
[00034fc2] 3029 0010                 move.w     16(a1),d0
[00034fc6] 4eb9 0006 4010            jsr        v_pline
dr_3dbut_7:
[00034fcc] 70ff                      moveq.l    #-1,d0
[00034fce] d06b 0004                 add.w      4(a3),d0
[00034fd2] 3f40 0004                 move.w     d0,4(a7)
[00034fd6] 72ff                      moveq.l    #-1,d1
[00034fd8] d26b 0006                 add.w      6(a3),d1
[00034fdc] 3f41 0006                 move.w     d1,6(a7)
[00034fe0] 2052                      movea.l    (a2),a0
[00034fe2] 3028 0010                 move.w     16(a0),d0
[00034fe6] 7209                      moveq.l    #9,d1
[00034fe8] 4eb9 0006 4ef0            jsr        vsl_color
[00034fee] 41d7                      lea.l      (a7),a0
[00034ff0] 7203                      moveq.l    #3,d1
[00034ff2] 2252                      movea.l    (a2),a1
[00034ff4] 3029 0010                 move.w     16(a1),d0
[00034ff8] 4eb9 0006 4010            jsr        v_pline
dr_3dbut_6:
[00034ffe] 4fef 000c                 lea.l      12(a7),a7
[00035002] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00035006] 4e75                      rts

A_slider:
[00035008] 48e7 3f3e                 movem.l    d2-d7/a2-a6,-(a7)
[0003500c] 4fef ffe0                 lea.l      -32(a7),a7
[00035010] 246f 0050                 movea.l    80(a7),a2
[00035014] 322a 0004                 move.w     4(a2),d1
[00035018] 48c1                      ext.l      d1
[0003501a] 2001                      move.l     d1,d0
[0003501c] d080                      add.l      d0,d0
[0003501e] d081                      add.l      d1,d0
[00035020] e788                      lsl.l      #3,d0
[00035022] 2052                      movea.l    (a2),a0
[00035024] d1c0                      adda.l     d0,a0
[00035026] 2f48 001c                 move.l     a0,28(a7)
[0003502a] 2f68 000c 0018            move.l     12(a0),24(a7)
[00035030] 226f 0018                 movea.l    24(a7),a1
[00035034] 2a69 000c                 movea.l    12(a1),a5
[00035038] 7001                      moveq.l    #1,d0
[0003503a] c06d 0026                 and.w      38(a5),d0
[0003503e] 6614                      bne.s      A_slider_1
[00035040] 3228 0014                 move.w     20(a0),d1
[00035044] b26d 0046                 cmp.w      70(a5),d1
[00035048] 660a                      bne.s      A_slider_1
[0003504a] 3028 0016                 move.w     22(a0),d0
[0003504e] b06d 0048                 cmp.w      72(a5),d0
[00035052] 670a                      beq.s      A_slider_2
A_slider_1:
[00035054] 206f 001c                 movea.l    28(a7),a0
[00035058] 4eb9 0003 57c6            jsr        sl_calc
A_slider_2:
[0003505e] 7002                      moveq.l    #2,d0
[00035060] c06d 0026                 and.w      38(a5),d0
[00035064] 6604                      bne.s      A_slider_3
[00035066] 7601                      moveq.l    #1,d3
[00035068] 6002                      bra.s      A_slider_4
A_slider_3:
[0003506a] 4243                      clr.w      d3
A_slider_4:
[0003506c] 7001                      moveq.l    #1,d0
[0003506e] 206f 0018                 movea.l    24(a7),a0
[00035072] c0a8 0004                 and.l      4(a0),d0
[00035076] 6604                      bne.s      A_slider_5
[00035078] 7801                      moveq.l    #1,d4
[0003507a] 6002                      bra.s      A_slider_6
A_slider_5:
[0003507c] 4244                      clr.w      d4
A_slider_6:
[0003507e] 4df9 0010 1f12            lea.l      ACSblk,a6
[00035084] 7002                      moveq.l    #2,d0
[00035086] 206f 0018                 movea.l    24(a7),a0
[0003508a] c0a8 0004                 and.l      4(a0),d0
[0003508e] 7202                      moveq.l    #2,d1
[00035090] b280                      cmp.l      d0,d1
[00035092] 6614                      bne.s      A_slider_7
[00035094] 2256                      movea.l    (a6),a1
[00035096] 2069 023c                 movea.l    572(a1),a0
[0003509a] 3428 000e                 move.w     14(a0),d2
[0003509e] c47c 0100                 and.w      #$0100,d2
[000350a2] 6604                      bne.s      A_slider_7
[000350a4] 7a01                      moveq.l    #1,d5
[000350a6] 6002                      bra.s      A_slider_8
A_slider_7:
[000350a8] 4245                      clr.w      d5
A_slider_8:
[000350aa] 47ef 0004                 lea.l      4(a7),a3
[000350ae] 376a 0016 0004            move.w     22(a2),4(a3)
[000350b4] 376a 0018 0006            move.w     24(a2),6(a3)
[000350ba] 302b 0004                 move.w     4(a3),d0
[000350be] 6606                      bne.s      A_slider_9
[000350c0] 322b 0006                 move.w     6(a3),d1
[000350c4] 672c                      beq.s      A_slider_10
A_slider_9:
[000350c6] 36aa 0012                 move.w     18(a2),(a3)
[000350ca] 376a 0014 0002            move.w     20(a2),2(a3)
[000350d0] 70ff                      moveq.l    #-1,d0
[000350d2] d053                      add.w      (a3),d0
[000350d4] d16b 0004                 add.w      d0,4(a3)
[000350d8] 70ff                      moveq.l    #-1,d0
[000350da] d06b 0002                 add.w      2(a3),d0
[000350de] d16b 0006                 add.w      d0,6(a3)
[000350e2] 204b                      movea.l    a3,a0
[000350e4] 7201                      moveq.l    #1,d1
[000350e6] 2256                      movea.l    (a6),a1
[000350e8] 3029 0010                 move.w     16(a1),d0
[000350ec] 4eb9 0006 3f60            jsr        vs_clip
A_slider_10:
[000350f2] 2056                      movea.l    (a6),a0
[000350f4] 3228 0290                 move.w     656(a0),d1
[000350f8] 3028 0010                 move.w     16(a0),d0
[000350fc] 4eb9 0006 5216            jsr        vst_font
[00035102] 7201                      moveq.l    #1,d1
[00035104] 2056                      movea.l    (a6),a0
[00035106] 3028 0010                 move.w     16(a0),d0
[0003510a] 4eb9 0006 526a            jsr        vst_color
[00035110] 4241                      clr.w      d1
[00035112] 2056                      movea.l    (a6),a0
[00035114] 3028 0010                 move.w     16(a0),d0
[00035118] 4eb9 0006 51c2            jsr        vst_rotation
[0003511e] 49ef 0002                 lea.l      2(a7),a4
[00035122] 224c                      movea.l    a4,a1
[00035124] 204c                      movea.l    a4,a0
[00035126] 7405                      moveq.l    #5,d2
[00035128] 4241                      clr.w      d1
[0003512a] 2f09                      move.l     a1,-(a7)
[0003512c] 2256                      movea.l    (a6),a1
[0003512e] 3029 0010                 move.w     16(a1),d0
[00035132] 225f                      movea.l    (a7)+,a1
[00035134] 4eb9 0006 5312            jsr        vst_alignment
[0003513a] 4854                      pea.l      (a4)
[0003513c] 4854                      pea.l      (a4)
[0003513e] 224c                      movea.l    a4,a1
[00035140] 204c                      movea.l    a4,a0
[00035142] 2f09                      move.l     a1,-(a7)
[00035144] 2256                      movea.l    (a6),a1
[00035146] 3229 0292                 move.w     658(a1),d1
[0003514a] 3029 0010                 move.w     16(a1),d0
[0003514e] 225f                      movea.l    (a7)+,a1
[00035150] 4eb9 0006 50a0            jsr        vst_height
[00035156] 504f                      addq.w     #8,a7
[00035158] 7201                      moveq.l    #1,d1
[0003515a] 2056                      movea.l    (a6),a0
[0003515c] 3028 0010                 move.w     16(a0),d0
[00035160] 4eb9 0006 4e9a            jsr        vsl_width
[00035166] 49ef 000c                 lea.l      12(a7),a4
[0003516a] 4a44                      tst.w      d4
[0003516c] 6730                      beq.s      A_slider_11
[0003516e] 2056                      movea.l    (a6),a0
[00035170] 3c28 0012                 move.w     18(a0),d6
[00035174] dc46                      add.w      d6,d6
[00035176] 302a 0010                 move.w     16(a2),d0
[0003517a] 9068 0014                 sub.w      20(a0),d0
[0003517e] e240                      asr.w      #1,d0
[00035180] d06a 000c                 add.w      12(a2),d0
[00035184] 3e80                      move.w     d0,(a7)
[00035186] 322a 000c                 move.w     12(a2),d1
[0003518a] 3941 0002                 move.w     d1,2(a4)
[0003518e] 3941 0006                 move.w     d1,6(a4)
[00035192] 74ff                      moveq.l    #-1,d2
[00035194] d46a 0010                 add.w      16(a2),d2
[00035198] d56c 0006                 add.w      d2,6(a4)
[0003519c] 602a                      bra.s      A_slider_12
A_slider_11:
[0003519e] 2056                      movea.l    (a6),a0
[000351a0] 3c28 0014                 move.w     20(a0),d6
[000351a4] 302a 000e                 move.w     14(a2),d0
[000351a8] 9068 0012                 sub.w      18(a0),d0
[000351ac] e240                      asr.w      #1,d0
[000351ae] d06a 000a                 add.w      10(a2),d0
[000351b2] 3e80                      move.w     d0,(a7)
[000351b4] 322a 000a                 move.w     10(a2),d1
[000351b8] 3881                      move.w     d1,(a4)
[000351ba] 3941 0004                 move.w     d1,4(a4)
[000351be] 74ff                      moveq.l    #-1,d2
[000351c0] d46a 000e                 add.w      14(a2),d2
[000351c4] d56c 0004                 add.w      d2,4(a4)
A_slider_12:
[000351c8] 7201                      moveq.l    #1,d1
[000351ca] 2056                      movea.l    (a6),a0
[000351cc] 3028 0010                 move.w     16(a0),d0
[000351d0] 4eb9 0006 4df4            jsr        vsl_type
[000351d6] 4a43                      tst.w      d3
[000351d8] 660a                      bne.s      A_slider_13
[000351da] 7004                      moveq.l    #4,d0
[000351dc] c06d 0026                 and.w      38(a5),d0
[000351e0] 6700 00fa                 beq        A_slider_14
A_slider_13:
[000351e4] 4a44                      tst.w      d4
[000351e6] 6710                      beq.s      A_slider_15
[000351e8] 302a 000a                 move.w     10(a2),d0
[000351ec] 3880                      move.w     d0,(a4)
[000351ee] 3940 0004                 move.w     d0,4(a4)
[000351f2] dd6c 0004                 add.w      d6,4(a4)
[000351f6] 6010                      bra.s      A_slider_16
A_slider_15:
[000351f8] 302a 000c                 move.w     12(a2),d0
[000351fc] 3940 0002                 move.w     d0,2(a4)
[00035200] 3940 0006                 move.w     d0,6(a4)
[00035204] dd6c 0006                 add.w      d6,6(a4)
A_slider_16:
[00035208] 7201                      moveq.l    #1,d1
[0003520a] 2056                      movea.l    (a6),a0
[0003520c] 3028 0010                 move.w     16(a0),d0
[00035210] 4eb9 0006 4da0            jsr        vswr_mode
[00035216] 7201                      moveq.l    #1,d1
[00035218] 2056                      movea.l    (a6),a0
[0003521a] 3028 0010                 move.w     16(a0),d0
[0003521e] 4eb9 0006 548c            jsr        vsf_perimeter
[00035224] 4241                      clr.w      d1
[00035226] 2056                      movea.l    (a6),a0
[00035228] 3028 0010                 move.w     16(a0),d0
[0003522c] 4eb9 0006 5390            jsr        vsf_interior
[00035232] 7201                      moveq.l    #1,d1
[00035234] 2056                      movea.l    (a6),a0
[00035236] 3028 0010                 move.w     16(a0),d0
[0003523a] 4eb9 0006 5438            jsr        vsf_color
[00035240] 4a45                      tst.w      d5
[00035242] 671c                      beq.s      A_slider_17
[00035244] 202d 0008                 move.l     8(a5),d0
[00035248] 670c                      beq.s      A_slider_18
[0003524a] 7208                      moveq.l    #8,d1
[0003524c] c26a 0008                 and.w      8(a2),d1
[00035250] 6604                      bne.s      A_slider_18
[00035252] 7001                      moveq.l    #1,d0
[00035254] 6002                      bra.s      A_slider_19
A_slider_18:
[00035256] 4240                      clr.w      d0
A_slider_19:
[00035258] 204c                      movea.l    a4,a0
[0003525a] 6100 fc50                 bsr        dr_3dbut
[0003525e] 600e                      bra.s      A_slider_20
A_slider_17:
[00035260] 204c                      movea.l    a4,a0
[00035262] 2256                      movea.l    (a6),a1
[00035264] 3029 0010                 move.w     16(a1),d0
[00035268] 4eb9 0006 455e            jsr        v_bar
A_slider_20:
[0003526e] 7202                      moveq.l    #2,d1
[00035270] 2056                      movea.l    (a6),a0
[00035272] 3028 0010                 move.w     16(a0),d0
[00035276] 4eb9 0006 4da0            jsr        vswr_mode
[0003527c] 202d 0008                 move.l     8(a5),d0
[00035280] 6610                      bne.s      A_slider_21
[00035282] 7202                      moveq.l    #2,d1
[00035284] 2056                      movea.l    (a6),a0
[00035286] 3028 0010                 move.w     16(a0),d0
[0003528a] 4eb9 0006 52be            jsr        vst_effects
[00035290] 600e                      bra.s      A_slider_22
A_slider_21:
[00035292] 4241                      clr.w      d1
[00035294] 2056                      movea.l    (a6),a0
[00035296] 3028 0010                 move.w     16(a0),d0
[0003529a] 4eb9 0006 52be            jsr        vst_effects
A_slider_22:
[000352a0] 4a44                      tst.w      d4
[000352a2] 6720                      beq.s      A_slider_23
[000352a4] 41f9 000c 2d84            lea.l      $000C2D84,a0
[000352aa] 3417                      move.w     (a7),d2
[000352ac] 2256                      movea.l    (a6),a1
[000352ae] 3229 0012                 move.w     18(a1),d1
[000352b2] e241                      asr.w      #1,d1
[000352b4] d254                      add.w      (a4),d1
[000352b6] 5241                      addq.w     #1,d1
[000352b8] 3029 0010                 move.w     16(a1),d0
[000352bc] 4eb9 0006 41e0            jsr        v_gtext
[000352c2] 6018                      bra.s      A_slider_14
A_slider_23:
[000352c4] 41f9 000c 2d86            lea.l      $000C2D86,a0
[000352ca] 342c 0002                 move.w     2(a4),d2
[000352ce] 3217                      move.w     (a7),d1
[000352d0] 2256                      movea.l    (a6),a1
[000352d2] 3029 0010                 move.w     16(a1),d0
[000352d6] 4eb9 0006 41e0            jsr        v_gtext
A_slider_14:
[000352dc] 4a43                      tst.w      d3
[000352de] 660a                      bne.s      A_slider_24
[000352e0] 7008                      moveq.l    #8,d0
[000352e2] c06d 0026                 and.w      38(a5),d0
[000352e6] 6700 0110                 beq        A_slider_25
A_slider_24:
[000352ea] 4a44                      tst.w      d4
[000352ec] 6714                      beq.s      A_slider_26
[000352ee] 302a 000a                 move.w     10(a2),d0
[000352f2] d06a 000e                 add.w      14(a2),d0
[000352f6] 5340                      subq.w     #1,d0
[000352f8] 3880                      move.w     d0,(a4)
[000352fa] 3940 0004                 move.w     d0,4(a4)
[000352fe] 9d54                      sub.w      d6,(a4)
[00035300] 6016                      bra.s      A_slider_27
A_slider_26:
[00035302] 302a 000c                 move.w     12(a2),d0
[00035306] d06a 0010                 add.w      16(a2),d0
[0003530a] 5340                      subq.w     #1,d0
[0003530c] 3940 0002                 move.w     d0,2(a4)
[00035310] 3940 0006                 move.w     d0,6(a4)
[00035314] 9d6c 0002                 sub.w      d6,2(a4)
A_slider_27:
[00035318] 7201                      moveq.l    #1,d1
[0003531a] 2056                      movea.l    (a6),a0
[0003531c] 3028 0010                 move.w     16(a0),d0
[00035320] 4eb9 0006 4da0            jsr        vswr_mode
[00035326] 7201                      moveq.l    #1,d1
[00035328] 2056                      movea.l    (a6),a0
[0003532a] 3028 0010                 move.w     16(a0),d0
[0003532e] 4eb9 0006 548c            jsr        vsf_perimeter
[00035334] 4241                      clr.w      d1
[00035336] 2056                      movea.l    (a6),a0
[00035338] 3028 0010                 move.w     16(a0),d0
[0003533c] 4eb9 0006 5390            jsr        vsf_interior
[00035342] 7201                      moveq.l    #1,d1
[00035344] 2056                      movea.l    (a6),a0
[00035346] 3028 0010                 move.w     16(a0),d0
[0003534a] 4eb9 0006 5438            jsr        vsf_color
[00035350] 4a45                      tst.w      d5
[00035352] 6722                      beq.s      A_slider_28
[00035354] 202d 0008                 move.l     8(a5),d0
[00035358] d0ad 0004                 add.l      4(a5),d0
[0003535c] b095                      cmp.l      (a5),d0
[0003535e] 670c                      beq.s      A_slider_29
[00035360] 7208                      moveq.l    #8,d1
[00035362] c26a 0008                 and.w      8(a2),d1
[00035366] 6604                      bne.s      A_slider_29
[00035368] 7001                      moveq.l    #1,d0
[0003536a] 6002                      bra.s      A_slider_30
A_slider_29:
[0003536c] 4240                      clr.w      d0
A_slider_30:
[0003536e] 204c                      movea.l    a4,a0
[00035370] 6100 fb3a                 bsr        dr_3dbut
[00035374] 600e                      bra.s      A_slider_31
A_slider_28:
[00035376] 204c                      movea.l    a4,a0
[00035378] 2256                      movea.l    (a6),a1
[0003537a] 3029 0010                 move.w     16(a1),d0
[0003537e] 4eb9 0006 455e            jsr        v_bar
A_slider_31:
[00035384] 7202                      moveq.l    #2,d1
[00035386] 2056                      movea.l    (a6),a0
[00035388] 3028 0010                 move.w     16(a0),d0
[0003538c] 4eb9 0006 4da0            jsr        vswr_mode
[00035392] 202d 0008                 move.l     8(a5),d0
[00035396] d0ad 0004                 add.l      4(a5),d0
[0003539a] b095                      cmp.l      (a5),d0
[0003539c] 6610                      bne.s      A_slider_32
[0003539e] 7202                      moveq.l    #2,d1
[000353a0] 2056                      movea.l    (a6),a0
[000353a2] 3028 0010                 move.w     16(a0),d0
[000353a6] 4eb9 0006 52be            jsr        vst_effects
[000353ac] 600e                      bra.s      A_slider_33
A_slider_32:
[000353ae] 4241                      clr.w      d1
[000353b0] 2056                      movea.l    (a6),a0
[000353b2] 3028 0010                 move.w     16(a0),d0
[000353b6] 4eb9 0006 52be            jsr        vst_effects
A_slider_33:
[000353bc] 4a44                      tst.w      d4
[000353be] 6720                      beq.s      A_slider_34
[000353c0] 41f9 000c 2d88            lea.l      $000C2D88,a0
[000353c6] 3417                      move.w     (a7),d2
[000353c8] 2256                      movea.l    (a6),a1
[000353ca] 3229 0012                 move.w     18(a1),d1
[000353ce] e241                      asr.w      #1,d1
[000353d0] d254                      add.w      (a4),d1
[000353d2] 5241                      addq.w     #1,d1
[000353d4] 3029 0010                 move.w     16(a1),d0
[000353d8] 4eb9 0006 41e0            jsr        v_gtext
[000353de] 6018                      bra.s      A_slider_25
A_slider_34:
[000353e0] 41f9 000c 2d8a            lea.l      $000C2D8A,a0
[000353e6] 342c 0002                 move.w     2(a4),d2
[000353ea] 3217                      move.w     (a7),d1
[000353ec] 2256                      movea.l    (a6),a1
[000353ee] 3029 0010                 move.w     16(a1),d0
[000353f2] 4eb9 0006 41e0            jsr        v_gtext
A_slider_25:
[000353f8] 7201                      moveq.l    #1,d1
[000353fa] 2056                      movea.l    (a6),a0
[000353fc] 3028 0010                 move.w     16(a0),d0
[00035400] 4eb9 0006 4da0            jsr        vswr_mode
[00035406] 7201                      moveq.l    #1,d1
[00035408] 2056                      movea.l    (a6),a0
[0003540a] 3028 0010                 move.w     16(a0),d0
[0003540e] 4eb9 0006 548c            jsr        vsf_perimeter
[00035414] 7202                      moveq.l    #2,d1
[00035416] 2056                      movea.l    (a6),a0
[00035418] 3028 0010                 move.w     16(a0),d0
[0003541c] 4eb9 0006 5390            jsr        vsf_interior
[00035422] 7201                      moveq.l    #1,d1
[00035424] 2056                      movea.l    (a6),a0
[00035426] 3028 0010                 move.w     16(a0),d0
[0003542a] 4eb9 0006 53e4            jsr        vsf_style
[00035430] 7201                      moveq.l    #1,d1
[00035432] 2056                      movea.l    (a6),a0
[00035434] 3028 0010                 move.w     16(a0),d0
[00035438] 4eb9 0006 5438            jsr        vsf_color
[0003543e] 7004                      moveq.l    #4,d0
[00035440] 206f 0018                 movea.l    24(a7),a0
[00035444] c0a8 0004                 and.l      4(a0),d0
[00035448] 6600 00b0                 bne        A_slider_35
[0003544c] 322d 0028                 move.w     40(a5),d1
[00035450] 6700 00a8                 beq        A_slider_35
[00035454] 4a43                      tst.w      d3
[00035456] 660a                      bne.s      A_slider_36
[00035458] 7410                      moveq.l    #16,d2
[0003545a] c46d 0026                 and.w      38(a5),d2
[0003545e] 6700 009a                 beq        A_slider_35
A_slider_36:
[00035462] 4a44                      tst.w      d4
[00035464] 6716                      beq.s      A_slider_37
[00035466] 3e2a 000a                 move.w     10(a2),d7
[0003546a] de46                      add.w      d6,d7
[0003546c] 3887                      move.w     d7,(a4)
[0003546e] 3947 0004                 move.w     d7,4(a4)
[00035472] 302d 0028                 move.w     40(a5),d0
[00035476] d16c 0004                 add.w      d0,4(a4)
[0003547a] 6016                      bra.s      A_slider_38
A_slider_37:
[0003547c] 3e2a 000c                 move.w     12(a2),d7
[00035480] de46                      add.w      d6,d7
[00035482] 3947 0002                 move.w     d7,2(a4)
[00035486] 3947 0006                 move.w     d7,6(a4)
[0003548a] 302d 0028                 move.w     40(a5),d0
[0003548e] d16c 0006                 add.w      d0,6(a4)
A_slider_38:
[00035492] de6d 002e                 add.w      46(a5),d7
[00035496] 4a43                      tst.w      d3
[00035498] 664e                      bne.s      A_slider_39
[0003549a] 4a44                      tst.w      d4
[0003549c] 672a                      beq.s      A_slider_40
[0003549e] be6b 0004                 cmp.w      4(a3),d7
[000354a2] 6e56                      bgt.s      A_slider_35
[000354a4] be53                      cmp.w      (a3),d7
[000354a6] 6f02                      ble.s      A_slider_41
[000354a8] 3687                      move.w     d7,(a3)
A_slider_41:
[000354aa] 204b                      movea.l    a3,a0
[000354ac] 7201                      moveq.l    #1,d1
[000354ae] 2256                      movea.l    (a6),a1
[000354b0] 3029 0010                 move.w     16(a1),d0
[000354b4] 4eb9 0006 3f60            jsr        vs_clip
[000354ba] 4a45                      tst.w      d5
[000354bc] 672e                      beq.s      A_slider_42
A_slider_44:
[000354be] 4240                      clr.w      d0
[000354c0] 204c                      movea.l    a4,a0
[000354c2] 6100 f9e8                 bsr        dr_3dbut
[000354c6] 6032                      bra.s      A_slider_35
A_slider_40:
[000354c8] be6b 0006                 cmp.w      6(a3),d7
[000354cc] 6e2c                      bgt.s      A_slider_35
[000354ce] be6b 0002                 cmp.w      2(a3),d7
[000354d2] 6f04                      ble.s      A_slider_43
[000354d4] 3747 0002                 move.w     d7,2(a3)
A_slider_43:
[000354d8] 204b                      movea.l    a3,a0
[000354da] 7201                      moveq.l    #1,d1
[000354dc] 2256                      movea.l    (a6),a1
[000354de] 3029 0010                 move.w     16(a1),d0
[000354e2] 4eb9 0006 3f60            jsr        vs_clip
A_slider_39:
[000354e8] 4a45                      tst.w      d5
[000354ea] 66d2                      bne.s      A_slider_44
A_slider_42:
[000354ec] 204c                      movea.l    a4,a0
[000354ee] 2256                      movea.l    (a6),a1
[000354f0] 3029 0010                 move.w     16(a1),d0
[000354f4] 4eb9 0006 455e            jsr        v_bar
A_slider_35:
[000354fa] 7004                      moveq.l    #4,d0
[000354fc] 206f 0018                 movea.l    24(a7),a0
[00035500] c0a8 0004                 and.l      4(a0),d0
[00035504] 6600 00bc                 bne        A_slider_45
[00035508] 322d 002c                 move.w     44(a5),d1
[0003550c] 6700 00b4                 beq        A_slider_45
[00035510] 4a43                      tst.w      d3
[00035512] 660a                      bne.s      A_slider_46
[00035514] 7420                      moveq.l    #32,d2
[00035516] c46d 0026                 and.w      38(a5),d2
[0003551a] 6700 00a6                 beq        A_slider_45
A_slider_46:
[0003551e] 4a44                      tst.w      d4
[00035520] 671a                      beq.s      A_slider_47
[00035522] 3e2a 000a                 move.w     10(a2),d7
[00035526] de6a 000e                 add.w      14(a2),d7
[0003552a] 9e46                      sub.w      d6,d7
[0003552c] 5347                      subq.w     #1,d7
[0003552e] 3887                      move.w     d7,(a4)
[00035530] 3947 0004                 move.w     d7,4(a4)
[00035534] 302d 002c                 move.w     44(a5),d0
[00035538] 9154                      sub.w      d0,(a4)
[0003553a] 601c                      bra.s      A_slider_48
A_slider_47:
[0003553c] 3e2a 000c                 move.w     12(a2),d7
[00035540] de6a 0010                 add.w      16(a2),d7
[00035544] 9e46                      sub.w      d6,d7
[00035546] 5347                      subq.w     #1,d7
[00035548] 3947 0002                 move.w     d7,2(a4)
[0003554c] 3947 0006                 move.w     d7,6(a4)
[00035550] 302d 002c                 move.w     44(a5),d0
[00035554] 916c 0002                 sub.w      d0,2(a4)
A_slider_48:
[00035558] 9e6d 0030                 sub.w      48(a5),d7
[0003555c] 4a43                      tst.w      d3
[0003555e] 6650                      bne.s      A_slider_49
[00035560] 4a44                      tst.w      d4
[00035562] 672c                      beq.s      A_slider_50
[00035564] be53                      cmp.w      (a3),d7
[00035566] 6d5a                      blt.s      A_slider_45
[00035568] be6b 0004                 cmp.w      4(a3),d7
[0003556c] 6c04                      bge.s      A_slider_51
[0003556e] 3747 0004                 move.w     d7,4(a3)
A_slider_51:
[00035572] 204b                      movea.l    a3,a0
[00035574] 7201                      moveq.l    #1,d1
[00035576] 2256                      movea.l    (a6),a1
[00035578] 3029 0010                 move.w     16(a1),d0
[0003557c] 4eb9 0006 3f60            jsr        vs_clip
[00035582] 4a45                      tst.w      d5
[00035584] 672e                      beq.s      A_slider_52
A_slider_54:
[00035586] 4240                      clr.w      d0
[00035588] 204c                      movea.l    a4,a0
[0003558a] 6100 f920                 bsr        dr_3dbut
[0003558e] 6032                      bra.s      A_slider_45
A_slider_50:
[00035590] be6b 0002                 cmp.w      2(a3),d7
[00035594] 6d2c                      blt.s      A_slider_45
[00035596] be6b 0006                 cmp.w      6(a3),d7
[0003559a] 6c04                      bge.s      A_slider_53
[0003559c] 3747 0006                 move.w     d7,6(a3)
A_slider_53:
[000355a0] 204b                      movea.l    a3,a0
[000355a2] 7201                      moveq.l    #1,d1
[000355a4] 2256                      movea.l    (a6),a1
[000355a6] 3029 0010                 move.w     16(a1),d0
[000355aa] 4eb9 0006 3f60            jsr        vs_clip
A_slider_49:
[000355b0] 4a45                      tst.w      d5
[000355b2] 66d2                      bne.s      A_slider_54
A_slider_52:
[000355b4] 204c                      movea.l    a4,a0
[000355b6] 2256                      movea.l    (a6),a1
[000355b8] 3029 0010                 move.w     16(a1),d0
[000355bc] 4eb9 0006 455e            jsr        v_bar
A_slider_45:
[000355c2] 7004                      moveq.l    #4,d0
[000355c4] 206f 0018                 movea.l    24(a7),a0
[000355c8] c0a8 0004                 and.l      4(a0),d0
[000355cc] 6600 013a                 bne        A_slider_55
[000355d0] 4a44                      tst.w      d4
[000355d2] 671c                      beq.s      A_slider_56
[000355d4] 322a 000a                 move.w     10(a2),d1
[000355d8] d246                      add.w      d6,d1
[000355da] d26d 0028                 add.w      40(a5),d1
[000355de] 3881                      move.w     d1,(a4)
[000355e0] 3941 0004                 move.w     d1,4(a4)
[000355e4] 74ff                      moveq.l    #-1,d2
[000355e6] d46d 002a                 add.w      42(a5),d2
[000355ea] d56c 0004                 add.w      d2,4(a4)
[000355ee] 601c                      bra.s      A_slider_57
A_slider_56:
[000355f0] 302a 000c                 move.w     12(a2),d0
[000355f4] d046                      add.w      d6,d0
[000355f6] d06d 0028                 add.w      40(a5),d0
[000355fa] 3940 0002                 move.w     d0,2(a4)
[000355fe] 3940 0006                 move.w     d0,6(a4)
[00035602] 72ff                      moveq.l    #-1,d1
[00035604] d26d 002a                 add.w      42(a5),d1
[00035608] d36c 0006                 add.w      d1,6(a4)
A_slider_57:
[0003560c] 7201                      moveq.l    #1,d1
[0003560e] 2056                      movea.l    (a6),a0
[00035610] 3028 0010                 move.w     16(a0),d0
[00035614] 4eb9 0006 548c            jsr        vsf_perimeter
[0003561a] 4241                      clr.w      d1
[0003561c] 2056                      movea.l    (a6),a0
[0003561e] 3028 0010                 move.w     16(a0),d0
[00035622] 4eb9 0006 5390            jsr        vsf_interior
[00035628] 7201                      moveq.l    #1,d1
[0003562a] 2056                      movea.l    (a6),a0
[0003562c] 3028 0010                 move.w     16(a0),d0
[00035630] 4eb9 0006 5438            jsr        vsf_color
[00035636] 4a45                      tst.w      d5
[00035638] 671e                      beq.s      A_slider_58
[0003563a] 7008                      moveq.l    #8,d0
[0003563c] c06a 0008                 and.w      8(a2),d0
[00035640] 660c                      bne.s      A_slider_59
[00035642] 222d 0004                 move.l     4(a5),d1
[00035646] b295                      cmp.l      (a5),d1
[00035648] 6704                      beq.s      A_slider_59
[0003564a] 7001                      moveq.l    #1,d0
[0003564c] 6002                      bra.s      A_slider_60
A_slider_59:
[0003564e] 4240                      clr.w      d0
A_slider_60:
[00035650] 204c                      movea.l    a4,a0
[00035652] 6100 f858                 bsr        dr_3dbut
[00035656] 600e                      bra.s      A_slider_61
A_slider_58:
[00035658] 204c                      movea.l    a4,a0
[0003565a] 2256                      movea.l    (a6),a1
[0003565c] 3029 0010                 move.w     16(a1),d0
[00035660] 4eb9 0006 455e            jsr        v_bar
A_slider_61:
[00035666] 102d 0012                 move.b     18(a5),d0
[0003566a] 6700 009c                 beq        A_slider_55
[0003566e] 7202                      moveq.l    #2,d1
[00035670] 2056                      movea.l    (a6),a0
[00035672] 3028 0010                 move.w     16(a0),d0
[00035676] 4eb9 0006 4da0            jsr        vswr_mode
[0003567c] 4241                      clr.w      d1
[0003567e] 2056                      movea.l    (a6),a0
[00035680] 3028 0010                 move.w     16(a0),d0
[00035684] 4eb9 0006 52be            jsr        vst_effects
[0003568a] 4a44                      tst.w      d4
[0003568c] 6738                      beq.s      A_slider_62
[0003568e] 41ed 0012                 lea.l      18(a5),a0
[00035692] 4eb9 0007 69b0            jsr        strlen
[00035698] 2056                      movea.l    (a6),a0
[0003569a] 3228 0012                 move.w     18(a0),d1
[0003569e] 48c1                      ext.l      d1
[000356a0] 4eb9 0007 7676            jsr        _ulmul
[000356a6] 3e2d 002a                 move.w     42(a5),d7
[000356aa] 9e40                      sub.w      d0,d7
[000356ac] e247                      asr.w      #1,d7
[000356ae] 41ed 0012                 lea.l      18(a5),a0
[000356b2] 3417                      move.w     (a7),d2
[000356b4] 3214                      move.w     (a4),d1
[000356b6] d247                      add.w      d7,d1
[000356b8] 2256                      movea.l    (a6),a1
[000356ba] 3029 0010                 move.w     16(a1),d0
[000356be] 4eb9 0006 41e0            jsr        v_gtext
[000356c4] 6042                      bra.s      A_slider_55
A_slider_62:
[000356c6] 41ed 0012                 lea.l      18(a5),a0
[000356ca] 4eb9 0007 69b0            jsr        strlen
[000356d0] 2056                      movea.l    (a6),a0
[000356d2] 3228 0012                 move.w     18(a0),d1
[000356d6] 48c1                      ext.l      d1
[000356d8] 4eb9 0007 7676            jsr        _ulmul
[000356de] 3e2a 000e                 move.w     14(a2),d7
[000356e2] 9e40                      sub.w      d0,d7
[000356e4] e247                      asr.w      #1,d7
[000356e6] 41ed 0012                 lea.l      18(a5),a0
[000356ea] 342d 002a                 move.w     42(a5),d2
[000356ee] 2256                      movea.l    (a6),a1
[000356f0] 9469 0014                 sub.w      20(a1),d2
[000356f4] e242                      asr.w      #1,d2
[000356f6] d46c 0002                 add.w      2(a4),d2
[000356fa] 3214                      move.w     (a4),d1
[000356fc] d247                      add.w      d7,d1
[000356fe] 3029 0010                 move.w     16(a1),d0
[00035702] 4eb9 0006 41e0            jsr        v_gtext
A_slider_55:
[00035708] 4a43                      tst.w      d3
[0003570a] 6700 009a                 beq        A_slider_63
[0003570e] 7020                      moveq.l    #32,d0
[00035710] 206f 001c                 movea.l    28(a7),a0
[00035714] c068 000a                 and.w      10(a0),d0
[00035718] 6700 008c                 beq        A_slider_63
[0003571c] 7201                      moveq.l    #1,d1
[0003571e] d26a 000a                 add.w      10(a2),d1
[00035722] 3881                      move.w     d1,(a4)
[00035724] 7401                      moveq.l    #1,d2
[00035726] d46a 000c                 add.w      12(a2),d2
[0003572a] 3942 000a                 move.w     d2,10(a4)
[0003572e] 362a 000c                 move.w     12(a2),d3
[00035732] d66a 0010                 add.w      16(a2),d3
[00035736] 3943 0002                 move.w     d3,2(a4)
[0003573a] 3943 0006                 move.w     d3,6(a4)
[0003573e] 382a 000a                 move.w     10(a2),d4
[00035742] d86a 000e                 add.w      14(a2),d4
[00035746] 3944 0004                 move.w     d4,4(a4)
[0003574a] 3944 0008                 move.w     d4,8(a4)
[0003574e] 2256                      movea.l    (a6),a1
[00035750] 3029 0010                 move.w     16(a1),d0
[00035754] 7201                      moveq.l    #1,d1
[00035756] 4eb9 0006 4da0            jsr        vswr_mode
[0003575c] 7201                      moveq.l    #1,d1
[0003575e] 2056                      movea.l    (a6),a0
[00035760] 3028 0010                 move.w     16(a0),d0
[00035764] 4eb9 0006 4ef0            jsr        vsl_color
[0003576a] 4242                      clr.w      d2
[0003576c] 4241                      clr.w      d1
[0003576e] 2056                      movea.l    (a6),a0
[00035770] 3028 0010                 move.w     16(a0),d0
[00035774] 4eb9 0006 4f44            jsr        vsl_ends
[0003577a] 7201                      moveq.l    #1,d1
[0003577c] 2056                      movea.l    (a6),a0
[0003577e] 3028 0010                 move.w     16(a0),d0
[00035782] 4eb9 0006 4e9a            jsr        vsl_width
[00035788] 7201                      moveq.l    #1,d1
[0003578a] 2056                      movea.l    (a6),a0
[0003578c] 3028 0010                 move.w     16(a0),d0
[00035790] 4eb9 0006 4df4            jsr        vsl_type
[00035796] 204c                      movea.l    a4,a0
[00035798] 7203                      moveq.l    #3,d1
[0003579a] 2256                      movea.l    (a6),a1
[0003579c] 3029 0010                 move.w     16(a1),d0
[000357a0] 4eb9 0006 4010            jsr        v_pline
A_slider_63:
[000357a6] 204b                      movea.l    a3,a0
[000357a8] 4241                      clr.w      d1
[000357aa] 2256                      movea.l    (a6),a1
[000357ac] 3029 0010                 move.w     16(a1),d0
[000357b0] 4eb9 0006 3f60            jsr        vs_clip
[000357b6] 70f6                      moveq.l    #-10,d0
[000357b8] c06a 0008                 and.w      8(a2),d0
[000357bc] 4fef 0020                 lea.l      32(a7),a7
[000357c0] 4cdf 7cfc                 movem.l    (a7)+,d2-d7/a2-a6
[000357c4] 4e75                      rts

sl_calc:
[000357c6] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[000357ca] 2448                      movea.l    a0,a2
[000357cc] 206a 000c                 movea.l    12(a2),a0
[000357d0] 2668 000c                 movea.l    12(a0),a3
[000357d4] 43f9 0010 1f12            lea.l      ACSblk,a1
[000357da] 7001                      moveq.l    #1,d0
[000357dc] c0a8 0004                 and.l      4(a0),d0
[000357e0] 6716                      beq.s      sl_calc_1
[000357e2] 2051                      movea.l    (a1),a0
[000357e4] 3628 0014                 move.w     20(a0),d3
[000357e8] 382a 0016                 move.w     22(a2),d4
[000357ec] 3228 0014                 move.w     20(a0),d1
[000357f0] d241                      add.w      d1,d1
[000357f2] 9841                      sub.w      d1,d4
[000357f4] 3a04                      move.w     d4,d5
[000357f6] 6018                      bra.s      sl_calc_2
sl_calc_1:
[000357f8] 2051                      movea.l    (a1),a0
[000357fa] 3628 0012                 move.w     18(a0),d3
[000357fe] c7eb 0010                 muls.w     16(a3),d3
[00035802] 382a 0014                 move.w     20(a2),d4
[00035806] 3028 0012                 move.w     18(a0),d0
[0003580a] e548                      lsl.w      #2,d0
[0003580c] 9840                      sub.w      d0,d4
[0003580e] 3a04                      move.w     d4,d5
sl_calc_2:
[00035810] 202b 0004                 move.l     4(a3),d0
[00035814] 3204                      move.w     d4,d1
[00035816] 48c1                      ext.l      d1
[00035818] 4eb9 0007 76f0            jsr        _lmul
[0003581e] 2213                      move.l     (a3),d1
[00035820] 4eb9 0007 773a            jsr        _ldiv
[00035826] 3740 002a                 move.w     d0,42(a3)
[0003582a] b640                      cmp.w      d0,d3
[0003582c] 6f0c                      ble.s      sl_calc_3
[0003582e] 3a04                      move.w     d4,d5
[00035830] da40                      add.w      d0,d5
[00035832] 9a43                      sub.w      d3,d5
[00035834] 5345                      subq.w     #1,d5
[00035836] 3743 002a                 move.w     d3,42(a3)
sl_calc_3:
[0003583a] 202b 0008                 move.l     8(a3),d0
[0003583e] 3205                      move.w     d5,d1
[00035840] 48c1                      ext.l      d1
[00035842] 4eb9 0007 76f0            jsr        _lmul
[00035848] 2213                      move.l     (a3),d1
[0003584a] e281                      asr.l      #1,d1
[0003584c] d081                      add.l      d1,d0
[0003584e] 2213                      move.l     (a3),d1
[00035850] 4eb9 0007 773a            jsr        _ldiv
[00035856] 3740 0028                 move.w     d0,40(a3)
[0003585a] 3204                      move.w     d4,d1
[0003585c] 926b 002a                 sub.w      42(a3),d1
[00035860] 9240                      sub.w      d0,d1
[00035862] 3741 002c                 move.w     d1,44(a3)
[00035866] 4a41                      tst.w      d1
[00035868] 6b0c                      bmi.s      sl_calc_4
[0003586a] 202b 0008                 move.l     8(a3),d0
[0003586e] d0ab 0004                 add.l      4(a3),d0
[00035872] b093                      cmp.l      (a3),d0
[00035874] 660c                      bne.s      sl_calc_5
sl_calc_4:
[00035876] 302b 002c                 move.w     44(a3),d0
[0003587a] d16b 0028                 add.w      d0,40(a3)
[0003587e] 426b 002c                 clr.w      44(a3)
sl_calc_5:
[00035882] 376a 0014 0046            move.w     20(a2),70(a3)
[00035888] 376a 0016 0048            move.w     22(a2),72(a3)
[0003588e] 026b fffe 0026            andi.w     #$FFFE,38(a3)
[00035894] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00035898] 4e75                      rts

Auo_slider_16:
Auo_slider:
[0003589a] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0003589e] 594f                      subq.w     #4,a7
[000358a0] 2e88                      move.l     a0,(a7)
[000358a2] 2849                      movea.l    a1,a4
[000358a4] 2468 000c                 movea.l    12(a0),a2
[000358a8] 266a 000c                 movea.l    12(a2),a3
[000358ac] 3200                      move.w     d0,d1
[000358ae] b27c 000f                 cmp.w      #$000F,d1
[000358b2] 6700 02ec                 beq        Auo_slider_1
[000358b6] 6e30                      bgt.s      Auo_slider_2
[000358b8] b27c 000e                 cmp.w      #$000E,d1
[000358bc] 6200 032e                 bhi        Auo_slider_3
[000358c0] d241                      add.w      d1,d1
[000358c2] 323b 1006                 move.w     $000358CA(pc,d1.w),d1
[000358c6] 4efb 1002                 jmp        $000358CA(pc,d1.w)
J23:
[000358ca] 0322                      dc.w $0322   ; Auo_slider_3-J23
[000358cc] 007a                      dc.w $007a   ; Auo_slider_4-J23
[000358ce] 00a6                      dc.w $00a6   ; Auo_slider_5-J23
[000358d0] 00cc                      dc.w $00cc   ; Auo_slider_6-J23
[000358d2] 00b2                      dc.w $00b2   ; Auo_slider_7-J23
[000358d4] 0108                      dc.w $0108   ; Auo_slider_8-J23
[000358d6] 0102                      dc.w $0102   ; Auo_slider_9-J23
[000358d8] 0322                      dc.w $0322   ; Auo_slider_3-J23
[000358da] 0322                      dc.w $0322   ; Auo_slider_3-J23
[000358dc] 00d6                      dc.w $00d6   ; Auo_slider_10-J23
[000358de] 023c                      dc.w $023c   ; Auo_slider_11-J23
[000358e0] 0262                      dc.w $0262   ; Auo_slider_12-J23
[000358e2] 0288                      dc.w $0288   ; Auo_slider_13-J23
[000358e4] 02ae                      dc.w $02ae   ; Auo_slider_14-J23
[000358e6] 02d0                      dc.w $02d0   ; Auo_slider_15-J23
Auo_slider_2:
[000358e8] b27c                      dc.w $b27c   ; Auo_slider_16-J23
[000358ea] 0065 6700                 ori.w      #$6700,-(a5)
[000358ee] 01f8 6e30                 bset       d0,($00006E30).w
[000358f2] b27c 0013                 cmp.w      #$0013,d1
[000358f6] 6700 02f8                 beq        Auo_slider_17
[000358fa] 6e12                      bgt.s      Auo_slider_18
[000358fc] 927c 0011                 sub.w      #$0011,d1
[00035900] 6700 01fc                 beq        Auo_slider_19
[00035904] 5341                      subq.w     #1,d1
[00035906] 6700 00ae                 beq        Auo_slider_20
[0003590a] 6000 02e0                 bra        Auo_slider_3
Auo_slider_18:
[0003590e] 927c 0014                 sub.w      #$0014,d1
[00035912] 6700 02dc                 beq        Auo_slider_17
[00035916] 927c 0050                 sub.w      #$0050,d1
[0003591a] 6700 01c4                 beq        Auo_slider_21
[0003591e] 6000 02cc                 bra        Auo_slider_3
[00035922] 927c 0066                 sub.w      #$0066,d1
[00035926] b27c 0005                 cmp.w      #$0005,d1
[0003592a] 6200 02c0                 bhi        Auo_slider_3
[0003592e] d241                      add.w      d1,d1
[00035930] 323b 1006                 move.w     $00035938(pc,d1.w),d1
[00035934] 4efb 1002                 jmp        $00035938(pc,d1.w)
J24:
[00035938] 01be                      dc.w $01be   ; Auo_slider_22-J24
[0003593a] 0192                      dc.w $0192   ; Auo_slider_23-J24
[0003593c] 01b6                      dc.w $01b6   ; Auo_slider_24-J24
[0003593e] 0274                      dc.w $0274   ; Auo_slider_25-J24
[00035940] 02b4                      dc.w $02b4   ; Auo_slider_3-J24
[00035942] 01a0                      dc.w $01a0   ; Auo_slider_26-J24
Auo_slider_4:
[00035944] 704a                      dc.w $704a   ; Auo_slider_27-J24
[00035946] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003594c] 2648                      movea.l    a0,a3
[0003594e] 200b                      move.l     a3,d0
[00035950] 6716                      beq.s      Auo_slider_28
[00035952] 43f9 000c 2d3a            lea.l      proto,a1
[00035958] 704a                      moveq.l    #74,d0
[0003595a] 4eb9 0007 6f44            jsr        memcpy
[00035960] 254b 000c                 move.l     a3,12(a2)
[00035964] 6000 028a                 bra        Auo_slider_17
Auo_slider_28:
[00035968] 38bc ffff                 move.w     #$FFFF,(a4)
[0003596c] 6000 0282                 bra        Auo_slider_17
Auo_slider_5:
[00035970] 204b                      movea.l    a3,a0
[00035972] 4eb9 0004 7e26            jsr        Ax_free
[00035978] 6000 0276                 bra        Auo_slider_17
Auo_slider_7:
[0003597c] 700b                      moveq.l    #11,d0
[0003597e] 224c                      movea.l    a4,a1
[00035980] 41eb 0012                 lea.l      18(a3),a0
[00035984] 4eb9 0007 6a1a            jsr        strncpy
Auo_slider_51:
[0003598a] 302b 0010                 move.w     16(a3),d0
[0003598e] 4233 0012                 clr.b      18(a3,d0.w)
[00035992] 6000 025c                 bra        Auo_slider_17
Auo_slider_6:
[00035996] 41eb 0012                 lea.l      18(a3),a0
[0003599a] 2888                      move.l     a0,(a4)
[0003599c] 6000 0252                 bra        Auo_slider_17
Auo_slider_10:
[000359a0] 2a4c                      movea.l    a4,a5
[000359a2] 2755 003c                 move.l     (a5),60(a3)
[000359a6] 276d 0004 0040            move.l     4(a5),64(a3)
[000359ac] 376d 0008 0044            move.w     8(a5),68(a3)
[000359b2] 6000 023c                 bra        Auo_slider_17
Auo_slider_20:
[000359b6] 2a4c                      movea.l    a4,a5
[000359b8] 2aab 003c                 move.l     60(a3),(a5)
[000359bc] 2b6b 0040 0004            move.l     64(a3),4(a5)
[000359c2] 3b6b 0044 0008            move.w     68(a3),8(a5)
[000359c8] 6000 0226                 bra        Auo_slider_17
Auo_slider_9:
[000359cc] 006b 0040 0026            ori.w      #$0040,38(a3)
Auo_slider_8:
[000359d2] 246b 003c                 movea.l    60(a3),a2
[000359d6] 200a                      move.l     a2,d0
[000359d8] 6700 0216                 beq        Auo_slider_17
[000359dc] 222b 0008                 move.l     8(a3),d1
[000359e0] 6a04                      bpl.s      Auo_slider_29
[000359e2] 42ab 0008                 clr.l      8(a3)
Auo_slider_29:
[000359e6] 2613                      move.l     (a3),d3
[000359e8] 96ab 0004                 sub.l      4(a3),d3
[000359ec] b6ab 0008                 cmp.l      8(a3),d3
[000359f0] 6c04                      bge.s      Auo_slider_30
[000359f2] 2743 0008                 move.l     d3,8(a3)
Auo_slider_30:
[000359f6] 2057                      movea.l    (a7),a0
[000359f8] 6100 fdcc                 bsr        sl_calc
[000359fc] 202b 0034                 move.l     52(a3),d0
[00035a00] 6604                      bne.s      Auo_slider_31
[00035a02] 7201                      moveq.l    #1,d1
[00035a04] 6002                      bra.s      Auo_slider_32
Auo_slider_31:
[00035a06] 4241                      clr.w      d1
Auo_slider_32:
[00035a08] 3f01                      move.w     d1,-(a7)
[00035a0a] 202b 0008                 move.l     8(a3),d0
[00035a0e] 6604                      bne.s      Auo_slider_33
[00035a10] 7401                      moveq.l    #1,d2
[00035a12] 6002                      bra.s      Auo_slider_34
Auo_slider_33:
[00035a14] 4242                      clr.w      d2
Auo_slider_34:
[00035a16] 301f                      move.w     (a7)+,d0
[00035a18] b540                      eor.w      d2,d0
[00035a1a] 6706                      beq.s      Auo_slider_35
[00035a1c] 006b 0004 0026            ori.w      #$0004,38(a3)
Auo_slider_35:
[00035a22] 202b 0034                 move.l     52(a3),d0
[00035a26] b0ab 0038                 cmp.l      56(a3),d0
[00035a2a] 6604                      bne.s      Auo_slider_36
[00035a2c] 7201                      moveq.l    #1,d1
[00035a2e] 6002                      bra.s      Auo_slider_37
Auo_slider_36:
[00035a30] 4241                      clr.w      d1
Auo_slider_37:
[00035a32] 3f01                      move.w     d1,-(a7)
[00035a34] b6ab 0008                 cmp.l      8(a3),d3
[00035a38] 6604                      bne.s      Auo_slider_38
[00035a3a] 7001                      moveq.l    #1,d0
[00035a3c] 6002                      bra.s      Auo_slider_39
Auo_slider_38:
[00035a3e] 4240                      clr.w      d0
Auo_slider_39:
[00035a40] 321f                      move.w     (a7)+,d1
[00035a42] b141                      eor.w      d0,d1
[00035a44] 6706                      beq.s      Auo_slider_40
[00035a46] 006b 0008 0026            ori.w      #$0008,38(a3)
Auo_slider_40:
[00035a4c] 302b 002e                 move.w     46(a3),d0
[00035a50] b06b 0028                 cmp.w      40(a3),d0
[00035a54] 6c06                      bge.s      Auo_slider_41
[00035a56] 006b 0010 0026            ori.w      #$0010,38(a3)
Auo_slider_41:
[00035a5c] 302b 0030                 move.w     48(a3),d0
[00035a60] b06b 002c                 cmp.w      44(a3),d0
[00035a64] 6c06                      bge.s      Auo_slider_42
[00035a66] 006b 0020 0026            ori.w      #$0020,38(a3)
Auo_slider_42:
[00035a6c] 302b 0032                 move.w     50(a3),d0
[00035a70] b06b 002a                 cmp.w      42(a3),d0
[00035a74] 6706                      beq.s      Auo_slider_43
[00035a76] 006b 0080 0026            ori.w      #$0080,38(a3)
Auo_slider_43:
[00035a7c] 302b 0026                 move.w     38(a3),d0
[00035a80] c07c 00fc                 and.w      #$00FC,d0
[00035a84] 6700 016a                 beq        Auo_slider_17
[00035a88] 7240                      moveq.l    #64,d1
[00035a8a] c26b 0026                 and.w      38(a3),d1
[00035a8e] 6606                      bne.s      Auo_slider_44
[00035a90] 006b 0002 0026            ori.w      #$0002,38(a3)
Auo_slider_44:
[00035a96] 72ff                      moveq.l    #-1,d1
[00035a98] 302b 0044                 move.w     68(a3),d0
[00035a9c] 204a                      movea.l    a2,a0
[00035a9e] 226a 0066                 movea.l    102(a2),a1
[00035aa2] 4e91                      jsr        (a1)
[00035aa4] 376b 0028 002e            move.w     40(a3),46(a3)
[00035aaa] 376b 002c 0030            move.w     44(a3),48(a3)
[00035ab0] 276b 0008 0034            move.l     8(a3),52(a3)
[00035ab6] 376b 002a 0032            move.w     42(a3),50(a3)
[00035abc] 2743 0038                 move.l     d3,56(a3)
[00035ac0] 026b ff01 0026            andi.w     #$FF01,38(a3)
[00035ac6] 6000 0128                 bra        Auo_slider_17
Auo_slider_23:
[00035aca] 2754 001e                 move.l     (a4),30(a3)
[00035ace] 276c 0004 0022            move.l     4(a4),34(a3)
[00035ad4] 6000 011a                 bra        Auo_slider_17
Auo_slider_26:
[00035ad8] 28ab 0008                 move.l     8(a3),(a4)
[00035adc] 6000 0112                 bra        Auo_slider_17
Auo_slider_21:
[00035ae0] 2694                      move.l     (a4),(a3)
[00035ae2] 6000 010c                 bra        Auo_slider_17
[00035ae6] 2754 0004                 move.l     (a4),4(a3)
[00035aea] 6000 0104                 bra        Auo_slider_17
Auo_slider_24:
[00035aee] 3754 0010                 move.w     (a4),16(a3)
[00035af2] 6000 00fc                 bra        Auo_slider_17
Auo_slider_22:
[00035af6] 2754 000c                 move.l     (a4),12(a3)
[00035afa] 6000 00f4                 bra        Auo_slider_17
Auo_slider_19:
[00035afe] 2754 0008                 move.l     (a4),8(a3)
[00035b02] 6000 00ec                 bra        Auo_slider_17
Auo_slider_11:
[00035b06] 200c                      move.l     a4,d0
[00035b08] 660c                      bne.s      Auo_slider_45
[00035b0a] 222b 000c                 move.l     12(a3),d1
[00035b0e] d3ab 0008                 add.l      d1,8(a3)
[00035b12] 6000 00dc                 bra        Auo_slider_17
Auo_slider_45:
[00035b16] 202b 000c                 move.l     12(a3),d0
[00035b1a] 3214                      move.w     (a4),d1
[00035b1c] 48c1                      ext.l      d1
[00035b1e] 4eb9 0007 76f0            jsr        _lmul
[00035b24] d1ab 0008                 add.l      d0,8(a3)
[00035b28] 6000 00c6                 bra        Auo_slider_17
Auo_slider_12:
[00035b2c] 200c                      move.l     a4,d0
[00035b2e] 660c                      bne.s      Auo_slider_46
[00035b30] 222b 000c                 move.l     12(a3),d1
[00035b34] 93ab 0008                 sub.l      d1,8(a3)
[00035b38] 6000 00b6                 bra        Auo_slider_17
Auo_slider_46:
[00035b3c] 202b 000c                 move.l     12(a3),d0
[00035b40] 3214                      move.w     (a4),d1
[00035b42] 48c1                      ext.l      d1
[00035b44] 4eb9 0007 76f0            jsr        _lmul
[00035b4a] 91ab 0008                 sub.l      d0,8(a3)
[00035b4e] 6000 00a0                 bra        Auo_slider_17
Auo_slider_13:
[00035b52] 200c                      move.l     a4,d0
[00035b54] 660c                      bne.s      Auo_slider_47
[00035b56] 222b 0004                 move.l     4(a3),d1
[00035b5a] d3ab 0008                 add.l      d1,8(a3)
[00035b5e] 6000 0090                 bra        Auo_slider_17
Auo_slider_47:
[00035b62] 202b 0004                 move.l     4(a3),d0
[00035b66] 3214                      move.w     (a4),d1
[00035b68] 48c1                      ext.l      d1
[00035b6a] 4eb9 0007 76f0            jsr        _lmul
[00035b70] d1ab 0008                 add.l      d0,8(a3)
[00035b74] 6000 007a                 bra.w      Auo_slider_17
Auo_slider_14:
[00035b78] 200c                      move.l     a4,d0
[00035b7a] 660a                      bne.s      Auo_slider_48
[00035b7c] 222b 0004                 move.l     4(a3),d1
[00035b80] 93ab 0008                 sub.l      d1,8(a3)
[00035b84] 606a                      bra.s      Auo_slider_17
Auo_slider_48:
[00035b86] 202b 0004                 move.l     4(a3),d0
[00035b8a] 3214                      move.w     (a4),d1
[00035b8c] 48c1                      ext.l      d1
[00035b8e] 4eb9 0007 76f0            jsr        _lmul
[00035b94] 91ab 0008                 sub.l      d0,8(a3)
[00035b98] 6056                      bra.s      Auo_slider_17
Auo_slider_15:
[00035b9a] 42ab 0008                 clr.l      8(a3)
[00035b9e] 6050                      bra.s      Auo_slider_17
Auo_slider_1:
[00035ba0] 2013                      move.l     (a3),d0
[00035ba2] 90ab 0004                 sub.l      4(a3),d0
[00035ba6] 2740 0008                 move.l     d0,8(a3)
[00035baa] 6044                      bra.s      Auo_slider_17
Auo_slider_25:
[00035bac] 202b 001e                 move.l     30(a3),d0
[00035bb0] 673e                      beq.s      Auo_slider_17
[00035bb2] 222b 0008                 move.l     8(a3),d1
[00035bb6] 6a04                      bpl.s      Auo_slider_49
[00035bb8] 42ab 0008                 clr.l      8(a3)
Auo_slider_49:
[00035bbc] 2613                      move.l     (a3),d3
[00035bbe] 96ab 0004                 sub.l      4(a3),d3
[00035bc2] b6ab 0008                 cmp.l      8(a3),d3
[00035bc6] 6c04                      bge.s      Auo_slider_50
[00035bc8] 2743 0008                 move.l     d3,8(a3)
Auo_slider_50:
[00035bcc] 202b 0008                 move.l     8(a3),d0
[00035bd0] 206b 0022                 movea.l    34(a3),a0
[00035bd4] 226b 001e                 movea.l    30(a3),a1
[00035bd8] 4e91                      jsr        (a1)
[00035bda] 2248                      movea.l    a0,a1
[00035bdc] 41eb 0012                 lea.l      18(a3),a0
[00035be0] 700b                      moveq.l    #11,d0
[00035be2] 4eb9 0007 6a1a            jsr        strncpy
[00035be8] 6000 fda0                 bra        Auo_slider_51
Auo_slider_3:
[00035bec] 4240                      clr.w      d0
[00035bee] 6002                      bra.s      Auo_slider_52
Auo_slider_17:
[00035bf0] 7001                      moveq.l    #1,d0
Auo_slider_52:
[00035bf2] 584f                      addq.w     #4,a7
[00035bf4] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00035bf8] 4e75                      rts
Auo_slider_27:

printval:
[00035bfa] 2f03                      move.l     d3,-(a7)
[00035bfc] 2f0a                      move.l     a2,-(a7)
[00035bfe] 2600                      move.l     d0,d3
[00035c00] 45f9 000f f8f6            lea.l      text,a2
[00035c06] 2f03                      move.l     d3,-(a7)
[00035c08] 43f9 000c 2d8c            lea.l      $000C2D8C,a1
[00035c0e] 204a                      movea.l    a2,a0
[00035c10] 4eb9 0007 5680            jsr        sprintf
[00035c16] 584f                      addq.w     #4,a7
[00035c18] 204a                      movea.l    a2,a0
[00035c1a] 245f                      movea.l    (a7)+,a2
[00035c1c] 261f                      move.l     (a7)+,d3
[00035c1e] 4e75                      rts

sl_bar:
[00035c20] 48e7 1c30                 movem.l    d3-d5/a2-a3,-(a7)
[00035c24] 3a00                      move.w     d0,d5
[00035c26] 2268 000c                 movea.l    12(a0),a1
[00035c2a] 2469 000c                 movea.l    12(a1),a2
[00035c2e] 47f9 0010 1f12            lea.l      ACSblk,a3
[00035c34] 7001                      moveq.l    #1,d0
[00035c36] c0a9 0004                 and.l      4(a1),d0
[00035c3a] 6714                      beq.s      sl_bar_1
[00035c3c] 2253                      movea.l    (a3),a1
[00035c3e] 3629 0014                 move.w     20(a1),d3
[00035c42] 3828 0016                 move.w     22(a0),d4
[00035c46] 3229 0014                 move.w     20(a1),d1
[00035c4a] d241                      add.w      d1,d1
[00035c4c] 9841                      sub.w      d1,d4
[00035c4e] 6016                      bra.s      sl_bar_2
sl_bar_1:
[00035c50] 2253                      movea.l    (a3),a1
[00035c52] 3629 0012                 move.w     18(a1),d3
[00035c56] c7ea 0010                 muls.w     16(a2),d3
[00035c5a] 3828 0014                 move.w     20(a0),d4
[00035c5e] 3029 0012                 move.w     18(a1),d0
[00035c62] e548                      lsl.w      #2,d0
[00035c64] 9840                      sub.w      d0,d4
sl_bar_2:
[00035c66] 202a 0004                 move.l     4(a2),d0
[00035c6a] 3204                      move.w     d4,d1
[00035c6c] 48c1                      ext.l      d1
[00035c6e] 4eb9 0007 76f0            jsr        _lmul
[00035c74] 2212                      move.l     (a2),d1
[00035c76] 4eb9 0007 773a            jsr        _ldiv
[00035c7c] b640                      cmp.w      d0,d3
[00035c7e] 6f06                      ble.s      sl_bar_3
[00035c80] 3200                      move.w     d0,d1
[00035c82] 9243                      sub.w      d3,d1
[00035c84] d841                      add.w      d1,d4
sl_bar_3:
[00035c86] 4a45                      tst.w      d5
[00035c88] 6a02                      bpl.s      sl_bar_4
[00035c8a] 4245                      clr.w      d5
sl_bar_4:
[00035c8c] b845                      cmp.w      d5,d4
[00035c8e] 6c02                      bge.s      sl_bar_5
[00035c90] 3a04                      move.w     d4,d5
sl_bar_5:
[00035c92] 2012                      move.l     (a2),d0
[00035c94] 3205                      move.w     d5,d1
[00035c96] 48c1                      ext.l      d1
[00035c98] 4eb9 0007 76f0            jsr        _lmul
[00035c9e] 3204                      move.w     d4,d1
[00035ca0] e241                      asr.w      #1,d1
[00035ca2] 48c1                      ext.l      d1
[00035ca4] d081                      add.l      d1,d0
[00035ca6] 3204                      move.w     d4,d1
[00035ca8] 48c1                      ext.l      d1
[00035caa] 4eb9 0007 773a            jsr        _ldiv
[00035cb0] 4cdf 0c38                 movem.l    (a7)+,d3-d5/a2-a3
[00035cb4] 4e75                      rts

Aus_slider:
[00035cb6] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00035cba] 4fef ffe6                 lea.l      -26(a7),a7
[00035cbe] 2079 0010 1f12            movea.l    ACSblk,a0
[00035cc4] 3228 0260                 move.w     608(a0),d1
[00035cc8] 48c1                      ext.l      d1
[00035cca] 2001                      move.l     d1,d0
[00035ccc] d080                      add.l      d0,d0
[00035cce] d081                      add.l      d1,d0
[00035cd0] e788                      lsl.l      #3,d0
[00035cd2] 2668 025c                 movea.l    604(a0),a3
[00035cd6] d7c0                      adda.l     d0,a3
[00035cd8] 2f68 0258 0010            move.l     600(a0),16(a7)
[00035cde] 2f4b 0014                 move.l     a3,20(a7)
[00035ce2] 2268 0258                 movea.l    600(a0),a1
[00035ce6] 2069 0018                 movea.l    24(a1),a0
[00035cea] 2279 0010 1f12            movea.l    ACSblk,a1
[00035cf0] b1e9 025c                 cmpa.l     604(a1),a0
[00035cf4] 660e                      bne.s      Aus_slider_1
[00035cf6] 343c 1000                 move.w     #$1000,d2
[00035cfa] 8469 0260                 or.w       608(a1),d2
[00035cfe] 3f42 0018                 move.w     d2,24(a7)
[00035d02] 600c                      bra.s      Aus_slider_2
Aus_slider_1:
[00035d04] 2079 0010 1f12            movea.l    ACSblk,a0
[00035d0a] 3f68 0260 0018            move.w     608(a0),24(a7)
Aus_slider_2:
[00035d10] 43ef 0010                 lea.l      16(a7),a1
[00035d14] 7009                      moveq.l    #9,d0
[00035d16] 204b                      movea.l    a3,a0
[00035d18] 6100 fb80                 bsr        Auo_slider
[00035d1c] 2f6b 000c 000c            move.l     12(a3),12(a7)
[00035d22] 206f 000c                 movea.l    12(a7),a0
[00035d26] 2a68 000c                 movea.l    12(a0),a5
[00035d2a] 7001                      moveq.l    #1,d0
[00035d2c] c06d 0026                 and.w      38(a5),d0
[00035d30] 6706                      beq.s      Aus_slider_3
[00035d32] 204b                      movea.l    a3,a0
[00035d34] 6100 fa90                 bsr        sl_calc
Aus_slider_3:
[00035d38] 4def 0008                 lea.l      8(a7),a6
[00035d3c] 49ef 000a                 lea.l      10(a7),a4
[00035d40] 2f39 000d 99d6            move.l     _globl,-(a7)
[00035d46] 4856                      pea.l      (a6)
[00035d48] 224c                      movea.l    a4,a1
[00035d4a] 2079 0010 1f12            movea.l    ACSblk,a0
[00035d50] 3028 0260                 move.w     608(a0),d0
[00035d54] 2068 025c                 movea.l    604(a0),a0
[00035d58] 4eb9 0006 ba44            jsr        mt_objc_offset
[00035d5e] 504f                      addq.w     #8,a7
[00035d60] 7001                      moveq.l    #1,d0
[00035d62] 206f 000c                 movea.l    12(a7),a0
[00035d66] c0a8 0004                 and.l      4(a0),d0
[00035d6a] 6704                      beq.s      Aus_slider_4
[00035d6c] 7601                      moveq.l    #1,d3
[00035d6e] 6002                      bra.s      Aus_slider_5
Aus_slider_4:
[00035d70] 4243                      clr.w      d3
Aus_slider_5:
[00035d72] 4a43                      tst.w      d3
[00035d74] 671e                      beq.s      Aus_slider_6
[00035d76] 2079 0010 1f12            movea.l    ACSblk,a0
[00035d7c] 3028 0014                 move.w     20(a0),d0
[00035d80] 2268 0258                 movea.l    600(a0),a1
[00035d84] 3829 0036                 move.w     54(a1),d4
[00035d88] d856                      add.w      (a6),d4
[00035d8a] 3228 0264                 move.w     612(a0),d1
[00035d8e] 9244                      sub.w      d4,d1
[00035d90] 3881                      move.w     d1,(a4)
[00035d92] 601e                      bra.s      Aus_slider_7
Aus_slider_6:
[00035d94] 2079 0010 1f12            movea.l    ACSblk,a0
[00035d9a] 3028 0012                 move.w     18(a0),d0
[00035d9e] d040                      add.w      d0,d0
[00035da0] 2268 0258                 movea.l    600(a0),a1
[00035da4] 3829 0034                 move.w     52(a1),d4
[00035da8] d854                      add.w      (a4),d4
[00035daa] 3228 0262                 move.w     610(a0),d1
[00035dae] 9244                      sub.w      d4,d1
[00035db0] 3881                      move.w     d1,(a4)
Aus_slider_7:
[00035db2] 7a01                      moveq.l    #1,d5
[00035db4] 3214                      move.w     (a4),d1
[00035db6] 6b00 0146                 bmi        Aus_slider_8
[00035dba] 45ef 0006                 lea.l      6(a7),a2
[00035dbe] 9154                      sub.w      d0,(a4)
[00035dc0] 6a16                      bpl.s      Aus_slider_9
[00035dc2] 322b 000a                 move.w     10(a3),d1
[00035dc6] c27c 4000                 and.w      #$4000,d1
[00035dca] 6706                      beq.s      Aus_slider_10
[00035dcc] 7c0e                      moveq.l    #14,d6
[00035dce] 6000 00da                 bra        Aus_slider_11
Aus_slider_10:
[00035dd2] 7c0b                      moveq.l    #11,d6
[00035dd4] 6000 00da                 bra        Aus_slider_12
Aus_slider_9:
[00035dd8] 322d 0028                 move.w     40(a5),d1
[00035ddc] 9354                      sub.w      d1,(a4)
[00035dde] 6a14                      bpl.s      Aus_slider_13
[00035de0] 7404                      moveq.l    #4,d2
[00035de2] 206f 000c                 movea.l    12(a7),a0
[00035de6] c4a8 0004                 and.l      4(a0),d2
[00035dea] 6600 0112                 bne        Aus_slider_8
[00035dee] 7c0d                      moveq.l    #13,d6
[00035df0] 6000 00be                 bra        Aus_slider_12
Aus_slider_13:
[00035df4] 322d 002a                 move.w     42(a5),d1
[00035df8] 9354                      sub.w      d1,(a4)
[00035dfa] 6a00 008a                 bpl        Aus_slider_14
[00035dfe] 3414                      move.w     (a4),d2
[00035e00] d441                      add.w      d1,d2
[00035e02] d440                      add.w      d0,d2
[00035e04] d842                      add.w      d2,d4
[00035e06] 4a43                      tst.w      d3
[00035e08] 670c                      beq.s      Aus_slider_15
[00035e0a] 2079 0010 1f12            movea.l    ACSblk,a0
[00035e10] 38a8 0264                 move.w     612(a0),(a4)
[00035e14] 600a                      bra.s      Aus_slider_16
Aus_slider_15:
[00035e16] 2079 0010 1f12            movea.l    ACSblk,a0
[00035e1c] 38a8 0262                 move.w     610(a0),(a4)
Aus_slider_16:
[00035e20] 3014                      move.w     (a4),d0
[00035e22] 9044                      sub.w      d4,d0
[00035e24] 204b                      movea.l    a3,a0
[00035e26] 6100 fdf8                 bsr        sl_bar
[00035e2a] 2e80                      move.l     d0,(a7)
[00035e2c] b0ad 0008                 cmp.l      8(a5),d0
[00035e30] 671e                      beq.s      Aus_slider_17
[00035e32] 43d7                      lea.l      (a7),a1
[00035e34] 204b                      movea.l    a3,a0
[00035e36] 7011                      moveq.l    #17,d0
[00035e38] 6100 fa60                 bsr        Auo_slider
[00035e3c] 93c9                      suba.l     a1,a1
[00035e3e] 7069                      moveq.l    #105,d0
[00035e40] 204b                      movea.l    a3,a0
[00035e42] 6100 fa56                 bsr        Auo_slider
[00035e46] 93c9                      suba.l     a1,a1
[00035e48] 7005                      moveq.l    #5,d0
[00035e4a] 204b                      movea.l    a3,a0
[00035e4c] 6100 fa4c                 bsr        Auo_slider
Aus_slider_17:
[00035e50] 3e14                      move.w     (a4),d7
[00035e52] 2f39 000d 99d6            move.l     _globl,-(a7)
[00035e58] 486f 0008                 pea.l      8(a7)
[00035e5c] 4852                      pea.l      (a2)
[00035e5e] 224e                      movea.l    a6,a1
[00035e60] 204c                      movea.l    a4,a0
[00035e62] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00035e68] 4fef 000c                 lea.l      12(a7),a7
[00035e6c] 4a43                      tst.w      d3
[00035e6e] 6702                      beq.s      Aus_slider_18
[00035e70] 3896                      move.w     (a6),(a4)
Aus_slider_18:
[00035e72] be54                      cmp.w      (a4),d7
[00035e74] 6606                      bne.s      Aus_slider_19
[00035e76] 7001                      moveq.l    #1,d0
[00035e78] c052                      and.w      (a2),d0
[00035e7a] 66d4                      bne.s      Aus_slider_17
Aus_slider_19:
[00035e7c] 7001                      moveq.l    #1,d0
[00035e7e] c052                      and.w      (a2),d0
[00035e80] 669e                      bne.s      Aus_slider_16
[00035e82] 6000 007a                 bra.w      Aus_slider_8
Aus_slider_14:
[00035e86] 302d 002c                 move.w     44(a5),d0
[00035e8a] 9154                      sub.w      d0,(a4)
[00035e8c] 6a10                      bpl.s      Aus_slider_20
[00035e8e] 7204                      moveq.l    #4,d1
[00035e90] 206f 000c                 movea.l    12(a7),a0
[00035e94] c2a8 0004                 and.l      4(a0),d1
[00035e98] 6664                      bne.s      Aus_slider_8
[00035e9a] 7c0c                      moveq.l    #12,d6
[00035e9c] 6012                      bra.s      Aus_slider_12
Aus_slider_20:
[00035e9e] 302b 000a                 move.w     10(a3),d0
[00035ea2] c07c 4000                 and.w      #$4000,d0
[00035ea6] 6706                      beq.s      Aus_slider_21
[00035ea8] 7c0f                      moveq.l    #15,d6
Aus_slider_11:
[00035eaa] 4245                      clr.w      d5
[00035eac] 6002                      bra.s      Aus_slider_12
Aus_slider_21:
[00035eae] 7c0a                      moveq.l    #10,d6
Aus_slider_12:
[00035eb0] 2ead 0008                 move.l     8(a5),(a7)
[00035eb4] 93c9                      suba.l     a1,a1
[00035eb6] 3006                      move.w     d6,d0
[00035eb8] 204b                      movea.l    a3,a0
[00035eba] 6100 f9de                 bsr        Auo_slider
[00035ebe] 2017                      move.l     (a7),d0
[00035ec0] b0ad 0008                 cmp.l      8(a5),d0
[00035ec4] 670a                      beq.s      Aus_slider_22
[00035ec6] 93c9                      suba.l     a1,a1
[00035ec8] 204b                      movea.l    a3,a0
[00035eca] 7069                      moveq.l    #105,d0
[00035ecc] 6100 f9cc                 bsr        Auo_slider
Aus_slider_22:
[00035ed0] 93c9                      suba.l     a1,a1
[00035ed2] 7005                      moveq.l    #5,d0
[00035ed4] 204b                      movea.l    a3,a0
[00035ed6] 6100 f9c2                 bsr        Auo_slider
[00035eda] 4a45                      tst.w      d5
[00035edc] 6720                      beq.s      Aus_slider_8
[00035ede] 2f39 000d 99d6            move.l     _globl,-(a7)
[00035ee4] 486f 0008                 pea.l      8(a7)
[00035ee8] 4852                      pea.l      (a2)
[00035eea] 224e                      movea.l    a6,a1
[00035eec] 204c                      movea.l    a4,a0
[00035eee] 4eb9 0006 c978            jsr        mt_graf_mkstate
[00035ef4] 4fef 000c                 lea.l      12(a7),a7
[00035ef8] 7001                      moveq.l    #1,d0
[00035efa] c052                      and.w      (a2),d0
[00035efc] 66b2                      bne.s      Aus_slider_12
Aus_slider_8:
[00035efe] 4fef 001a                 lea.l      26(a7),a7
[00035f02] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00035f06] 4e75                      rts

		.data
proto:
[000c2d3a]                           dc.b $00
[000c2d3b]                           dc.b $00
[000c2d3c]                           dc.b $00
[000c2d3d]                           dc.b $14
[000c2d3e]                           dc.b $00
[000c2d3f]                           dc.b $00
[000c2d40]                           dc.b $00
[000c2d41]                           dc.b $04
[000c2d42]                           dc.b $00
[000c2d43]                           dc.b $00
[000c2d44]                           dc.b $00
[000c2d45]                           dc.b $03
[000c2d46]                           dc.b $00
[000c2d47]                           dc.b $00
[000c2d48]                           dc.b $00
[000c2d49]                           dc.b $01
[000c2d4a]                           dc.b $00
[000c2d4b]                           dc.b $02
[000c2d4c]                           dc.w $3300
[000c2d4e]                           dc.b $00
[000c2d4f]                           dc.b $00
[000c2d50]                           dc.b $00
[000c2d51]                           dc.b $00
[000c2d52]                           dc.b $00
[000c2d53]                           dc.b $00
[000c2d54]                           dc.b $00
[000c2d55]                           dc.b $00
[000c2d56]                           dc.b $00
[000c2d57]                           dc.b $00
[000c2d58] 00035bfa                  dc.l printval
[000c2d5c]                           dc.b $00
[000c2d5d]                           dc.b $00
[000c2d5e]                           dc.b $00
[000c2d5f]                           dc.b $00
[000c2d60]                           dc.b $00
[000c2d61]                           dc.b $01
[000c2d62]                           dc.b $00
[000c2d63]                           dc.b $00
[000c2d64]                           dc.b $00
[000c2d65]                           dc.b $00
[000c2d66]                           dc.b $00
[000c2d67]                           dc.b $00
[000c2d68]                           dc.b $00
[000c2d69]                           dc.b $00
[000c2d6a]                           dc.b $00
[000c2d6b]                           dc.b $00
[000c2d6c]                           dc.b $00
[000c2d6d]                           dc.b $00
[000c2d6e]                           dc.b $00
[000c2d6f]                           dc.b $00
[000c2d70]                           dc.b $00
[000c2d71]                           dc.b $00
[000c2d72]                           dc.b $00
[000c2d73]                           dc.b $00
[000c2d74]                           dc.b $00
[000c2d75]                           dc.b $00
[000c2d76]                           dc.b $00
[000c2d77]                           dc.b $00
[000c2d78]                           dc.b $00
[000c2d79]                           dc.b $00
[000c2d7a]                           dc.b $00
[000c2d7b]                           dc.b $00
[000c2d7c]                           dc.b $00
[000c2d7d]                           dc.b $00
[000c2d7e]                           dc.b $00
[000c2d7f]                           dc.b $00
[000c2d80]                           dc.b $00
[000c2d81]                           dc.b $00
[000c2d82]                           dc.b $00
[000c2d83]                           dc.b $00
[000c2d84]                           dc.w $0400
[000c2d86]                           dc.w $0100
[000c2d88]                           dc.w $0300
[000c2d8a]                           dc.w $0200
[000c2d8c]                           dc.b '%ld',0
		.even

	.bss

text: ds.b 12
