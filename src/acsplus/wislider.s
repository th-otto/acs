
A_wislider:
[00035f08] 70f6                      moveq.l    #-10,d0
[00035f0a] 206f 0004                 movea.l    4(a7),a0
[00035f0e] c068 0008                 and.w      8(a0),d0
[00035f12] 4e75                      rts

Auo_wislider_13:
Auo_wislider:
[00035f14] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[00035f18] 594f                      subq.w     #4,a7
[00035f1a] 2849                      movea.l    a1,a4
[00035f1c] 2ea8 000c                 move.l     12(a0),(a7)
[00035f20] 2057                      movea.l    (a7),a0
[00035f22] 2668 000c                 movea.l    12(a0),a3
[00035f26] 3200                      move.w     d0,d1
[00035f28] b27c 000f                 cmp.w      #$000F,d1
[00035f2c] 6700 02b2                 beq        Auo_wislider_1
[00035f30] 6e30                      bgt.s      Auo_wislider_2
[00035f32] b27c 000e                 cmp.w      #$000E,d1
[00035f36] 6200 02b4                 bhi        Auo_wislider_3
[00035f3a] d241                      add.w      d1,d1
[00035f3c] 323b 1006                 move.w     $00035F44(pc,d1.w),d1
[00035f40] 4efb 1002                 jmp        $00035F44(pc,d1.w)
J25:
[00035f44] 02a8                      dc.w $02a8   ; Auo_wislider_3-J25
[00035f46] 008a                      dc.w $008a   ; Auo_wislider_4-J25
[00035f48] 00b8                      dc.w $00b8   ; Auo_wislider_5-J25
[00035f4a] 02a8                      dc.w $02a8   ; Auo_wislider_3-J25
[00035f4c] 02a8                      dc.w $02a8   ; Auo_wislider_3-J25
[00035f4e] 00fc                      dc.w $00fc   ; Auo_wislider_6-J25
[00035f50] 00fc                      dc.w $00fc   ; Auo_wislider_6-J25
[00035f52] 02a8                      dc.w $02a8   ; Auo_wislider_3-J25
[00035f54] 02a8                      dc.w $02a8   ; Auo_wislider_3-J25
[00035f56] 00c4                      dc.w $00c4   ; Auo_wislider_7-J25
Auo_wislider_18:
[00035f58] 026e                      dc.w $026e   ; Auo_wislider_8-J25
[00035f5a] 0278                      dc.w $0278   ; Auo_wislider_9-J25
[00035f5c] 0282                      dc.w $0282   ; Auo_wislider_10-J25
[00035f5e] 028c                      dc.w $028c   ; Auo_wislider_11-J25
[00035f60] 0296                      dc.w $0296   ; Auo_wislider_12-J25
Auo_wislider_2:
[00035f62] b27c                      dc.w $b27c   ; Auo_wislider_13-J25
[00035f64] 0066                      dc.w $0066   ; Auo_wislider_14-J25
[00035f66] 6700                      dc.w $6700   ; Auo_wislider_15-J25
[00035f68] 0238                      dc.w $0238   ; Auo_wislider_16-J25
[00035f6a] 6e2e                      dc.w $6e2e   ; Auo_wislider_17-J25
[00035f6c] b27c                      dc.w $b27c   ; Auo_wislider_13-J25
[00035f6e] 0014                      dc.w $0014   ; Auo_wislider_18-J25
[00035f70] 6700 027e                 beq        Auo_wislider_19
[00035f74] 6e12                      bgt.s      Auo_wislider_20
[00035f76] 927c 0011                 sub.w      #$0011,d1
[00035f7a] 6700 0230                 beq        Auo_wislider_21
[00035f7e] 5541                      subq.w     #2,d1
[00035f80] 6700 026e                 beq        Auo_wislider_19
[00035f84] 6000 0266                 bra        Auo_wislider_3
Auo_wislider_20:
[00035f88] 927c 0064                 sub.w      #$0064,d1
[00035f8c] 6700 0208                 beq        Auo_wislider_22
[00035f90] 5341                      subq.w     #1,d1
[00035f92] 6700 0206                 beq        Auo_wislider_23
[00035f96] 6000 0254                 bra        Auo_wislider_3
[00035f9a] 927c 0067                 sub.w      #$0067,d1
[00035f9e] 6700 01ea                 beq        Auo_wislider_24
[00035fa2] 5541                      subq.w     #2,d1
[00035fa4] 670e                      beq.s      Auo_wislider_25
[00035fa6] 5341                      subq.w     #1,d1
[00035fa8] 6768                      beq.s      Auo_wislider_26
Auo_wislider_14:
[00035faa] 5341                      subq.w     #1,d1
[00035fac] 6700 01f8                 beq        Auo_wislider_27
[00035fb0] 6000 023a                 bra        Auo_wislider_3
Auo_wislider_25:
[00035fb4] 202b 0014                 move.l     20(a3),d0
[00035fb8] 6700 0236                 beq        Auo_wislider_19
[00035fbc] 202b 0008                 move.l     8(a3),d0
[00035fc0] 206b 0018                 movea.l    24(a3),a0
[00035fc4] 226b 0014                 movea.l    20(a3),a1
[00035fc8] 4e91                      jsr        (a1)
[00035fca] 6000 0224                 bra        Auo_wislider_19
Auo_wislider_4:
[00035fce] 701c                      moveq.l    #28,d0
[00035fd0] 4eb9 0004 7cc8            jsr        Ax_malloc
[00035fd6] 2648                      movea.l    a0,a3
[00035fd8] 200b                      move.l     a3,d0
[00035fda] 6718                      beq.s      Auo_wislider_28
[00035fdc] 43f9 000c 2d90            lea.l      proto,a1
[00035fe2] 701c                      moveq.l    #28,d0
[00035fe4] 4eb9 0007 6f44            jsr        memcpy
[00035fea] 2057                      movea.l    (a7),a0
[00035fec] 214b 000c                 move.l     a3,12(a0)
[00035ff0] 6000 01fe                 bra        Auo_wislider_19
Auo_wislider_28:
[00035ff4] 38bc ffff                 move.w     #$FFFF,(a4)
[00035ff8] 6000 01f6                 bra        Auo_wislider_19
Auo_wislider_5:
[00035ffc] 204b                      movea.l    a3,a0
[00035ffe] 4eb9 0004 7e26            jsr        Ax_free
[00036004] 6000 01ea                 bra        Auo_wislider_19
Auo_wislider_7:
[00036008] 204c                      movea.l    a4,a0
[0003600a] 2750 0010                 move.l     (a0),16(a3)
[0003600e] 6000 01e0                 bra        Auo_wislider_19
Auo_wislider_26:
[00036012] 3614                      move.w     (a4),d3
[00036014] 2813                      move.l     (a3),d4
[00036016] 98ab 0004                 sub.l      4(a3),d4
[0003601a] 4a84                      tst.l      d4
[0003601c] 6f00 01bc                 ble        Auo_wislider_12
[00036020] 3003                      move.w     d3,d0
[00036022] 48c0                      ext.l      d0
[00036024] 2204                      move.l     d4,d1
[00036026] 4eb9 0007 76f0            jsr        _lmul
[0003602c] 223c 0000 03e8            move.l     #$000003E8,d1
[00036032] 4eb9 0007 773a            jsr        _ldiv
[00036038] 2740 0008                 move.l     d0,8(a3)
[0003603c] 6000 01b2                 bra        Auo_wislider_19
Auo_wislider_6:
[00036040] 202b 0008                 move.l     8(a3),d0
[00036044] 6a04                      bpl.s      Auo_wislider_29
[00036046] 42ab 0008                 clr.l      8(a3)
Auo_wislider_29:
[0003604a] 2013                      move.l     (a3),d0
[0003604c] 90ab 0004                 sub.l      4(a3),d0
[00036050] b0ab 0008                 cmp.l      8(a3),d0
[00036054] 6c04                      bge.s      Auo_wislider_30
[00036056] 2740 0008                 move.l     d0,8(a3)
Auo_wislider_30:
[0003605a] 246b 0010                 movea.l    16(a3),a2
[0003605e] 3a2a 0020                 move.w     32(a2),d5
[00036062] 7001                      moveq.l    #1,d0
[00036064] 2057                      movea.l    (a7),a0
[00036066] c0a8 0004                 and.l      4(a0),d0
[0003606a] 6700 0090                 beq        Auo_wislider_31
[0003606e] 2813                      move.l     (a3),d4
[00036070] 98ab 0004                 sub.l      4(a3),d4
[00036074] 4a84                      tst.l      d4
[00036076] 6f1c                      ble.s      Auo_wislider_32
[00036078] 222b 0008                 move.l     8(a3),d1
[0003607c] 2001                      move.l     d1,d0
[0003607e] eb88                      lsl.l      #5,d0
[00036080] 9081                      sub.l      d1,d0
[00036082] e588                      lsl.l      #2,d0
[00036084] d081                      add.l      d1,d0
[00036086] e788                      lsl.l      #3,d0
[00036088] 2204                      move.l     d4,d1
[0003608a] 4eb9 0007 773a            jsr        _ldiv
[00036090] 2600                      move.l     d0,d3
[00036092] 6002                      bra.s      Auo_wislider_33
Auo_wislider_32:
[00036094] 4243                      clr.w      d3
Auo_wislider_33:
[00036096] b66a 003e                 cmp.w      62(a2),d3
[0003609a] 671c                      beq.s      Auo_wislider_34
[0003609c] 3543 003e                 move.w     d3,62(a2)
[000360a0] 4a45                      tst.w      d5
[000360a2] 6f14                      ble.s      Auo_wislider_34
[000360a4] 4267                      clr.w      -(a7)
[000360a6] 4267                      clr.w      -(a7)
[000360a8] 4267                      clr.w      -(a7)
[000360aa] 3f03                      move.w     d3,-(a7)
[000360ac] 7209                      moveq.l    #9,d1
[000360ae] 3005                      move.w     d5,d0
[000360b0] 4eb9 0007 1656            jsr        wind_set
[000360b6] 504f                      addq.w     #8,a7
Auo_wislider_34:
[000360b8] 222b 0004                 move.l     4(a3),d1
[000360bc] 2001                      move.l     d1,d0
[000360be] eb88                      lsl.l      #5,d0
[000360c0] 9081                      sub.l      d1,d0
[000360c2] e588                      lsl.l      #2,d0
[000360c4] d081                      add.l      d1,d0
[000360c6] e788                      lsl.l      #3,d0
[000360c8] 2213                      move.l     (a3),d1
[000360ca] 4eb9 0007 773a            jsr        _ldiv
[000360d0] 2600                      move.l     d0,d3
[000360d2] b66a 0042                 cmp.w      66(a2),d3
[000360d6] 6700 0118                 beq        Auo_wislider_19
[000360da] 3543 0042                 move.w     d3,66(a2)
[000360de] 4a45                      tst.w      d5
[000360e0] 6f00 010e                 ble        Auo_wislider_19
[000360e4] 4267                      clr.w      -(a7)
[000360e6] 4267                      clr.w      -(a7)
[000360e8] 4267                      clr.w      -(a7)
[000360ea] 3f03                      move.w     d3,-(a7)
[000360ec] 7210                      moveq.l    #16,d1
[000360ee] 3005                      move.w     d5,d0
[000360f0] 4eb9 0007 1656            jsr        wind_set
[000360f6] 504f                      addq.w     #8,a7
[000360f8] 6000 00f6                 bra        Auo_wislider_19
Auo_wislider_31:
[000360fc] 222b 0004                 move.l     4(a3),d1
[00036100] 2001                      move.l     d1,d0
[00036102] eb88                      lsl.l      #5,d0
[00036104] 9081                      sub.l      d1,d0
[00036106] e588                      lsl.l      #2,d0
[00036108] d081                      add.l      d1,d0
[0003610a] e788                      lsl.l      #3,d0
[0003610c] 2213                      move.l     (a3),d1
[0003610e] 4eb9 0007 773a            jsr        _ldiv
[00036114] 2600                      move.l     d0,d3
[00036116] b66a 0040                 cmp.w      64(a2),d3
[0003611a] 671c                      beq.s      Auo_wislider_35
[0003611c] 3543 0040                 move.w     d3,64(a2)
[00036120] 4a45                      tst.w      d5
[00036122] 6f14                      ble.s      Auo_wislider_35
[00036124] 4267                      clr.w      -(a7)
[00036126] 4267                      clr.w      -(a7)
[00036128] 4267                      clr.w      -(a7)
[0003612a] 3f03                      move.w     d3,-(a7)
[0003612c] 720f                      moveq.l    #15,d1
[0003612e] 3005                      move.w     d5,d0
[00036130] 4eb9 0007 1656            jsr        wind_set
[00036136] 504f                      addq.w     #8,a7
Auo_wislider_35:
[00036138] 2813                      move.l     (a3),d4
[0003613a] 98ab 0004                 sub.l      4(a3),d4
[0003613e] 4a84                      tst.l      d4
[00036140] 6f1c                      ble.s      Auo_wislider_36
[00036142] 222b 0008                 move.l     8(a3),d1
[00036146] 2001                      move.l     d1,d0
[00036148] eb88                      lsl.l      #5,d0
[0003614a] 9081                      sub.l      d1,d0
[0003614c] e588                      lsl.l      #2,d0
[0003614e] d081                      add.l      d1,d0
[00036150] e788                      lsl.l      #3,d0
[00036152] 2204                      move.l     d4,d1
[00036154] 4eb9 0007 773a            jsr        _ldiv
[0003615a] 2600                      move.l     d0,d3
[0003615c] 6002                      bra.s      Auo_wislider_37
Auo_wislider_36:
[0003615e] 4243                      clr.w      d3
Auo_wislider_37:
[00036160] b66a 003c                 cmp.w      60(a2),d3
[00036164] 6700 008a                 beq        Auo_wislider_19
[00036168] 3543 003c                 move.w     d3,60(a2)
[0003616c] 4a45                      tst.w      d5
[0003616e] 6f00 0080                 ble        Auo_wislider_19
[00036172] 4267                      clr.w      -(a7)
[00036174] 4267                      clr.w      -(a7)
[00036176] 4267                      clr.w      -(a7)
[00036178] 3f03                      move.w     d3,-(a7)
[0003617a] 7208                      moveq.l    #8,d1
Auo_wislider_16:
[0003617c] 3005                      move.w     d5,d0
[0003617e] 4eb9 0007 1656            jsr        wind_set
[00036184] 504f                      addq.w     #8,a7
[00036186] 6000 0068                 bra.w      Auo_wislider_19
Auo_wislider_24:
[0003618a] 2754 0014                 move.l     (a4),20(a3)
[0003618e] 276c 0004 0018            move.l     4(a4),24(a3)
[00036194] 605a                      bra.s      Auo_wislider_19
Auo_wislider_22:
[00036196] 2694                      move.l     (a4),(a3)
[00036198] 6056                      bra.s      Auo_wislider_19
Auo_wislider_23:
[0003619a] 2754 0004                 move.l     (a4),4(a3)
[0003619e] 6050                      bra.s      Auo_wislider_19
[000361a0] 2754 000c                 move.l     (a4),12(a3)
[000361a4] 604a                      bra.s      Auo_wislider_19
Auo_wislider_27:
[000361a6] 28ab 0008                 move.l     8(a3),(a4)
[000361aa] 6044                      bra.s      Auo_wislider_19
Auo_wislider_21:
[000361ac] 2754 0008                 move.l     (a4),8(a3)
[000361b0] 603e                      bra.s      Auo_wislider_19
Auo_wislider_8:
[000361b2] 202b 000c                 move.l     12(a3),d0
[000361b6] d1ab 0008                 add.l      d0,8(a3)
[000361ba] 6034                      bra.s      Auo_wislider_19
Auo_wislider_9:
[000361bc] 202b 000c                 move.l     12(a3),d0
[000361c0] 91ab 0008                 sub.l      d0,8(a3)
[000361c4] 602a                      bra.s      Auo_wislider_19
Auo_wislider_10:
[000361c6] 202b 0004                 move.l     4(a3),d0
[000361ca] d1ab 0008                 add.l      d0,8(a3)
[000361ce] 6020                      bra.s      Auo_wislider_19
Auo_wislider_11:
[000361d0] 202b 0004                 move.l     4(a3),d0
[000361d4] 91ab 0008                 sub.l      d0,8(a3)
[000361d8] 6016                      bra.s      Auo_wislider_19
Auo_wislider_12:
[000361da] 42ab 0008                 clr.l      8(a3)
[000361de] 6010                      bra.s      Auo_wislider_19
Auo_wislider_1:
[000361e0] 2013                      move.l     (a3),d0
[000361e2] 90ab 0004                 sub.l      4(a3),d0
[000361e6] 2740 0008                 move.l     d0,8(a3)
[000361ea] 6004                      bra.s      Auo_wislider_19
Auo_wislider_3:
[000361ec] 4240                      clr.w      d0
[000361ee] 6002                      bra.s      Auo_wislider_38
Auo_wislider_19:
[000361f0] 7001                      moveq.l    #1,d0
Auo_wislider_38:
[000361f2] 584f                      addq.w     #4,a7
[000361f4] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[000361f8] 4e75                      rts
Auo_wislider_15:
Auo_wislider_17:

		.data

proto:
[000c2d90]                           dc.b $00
[000c2d91]                           dc.b $00
[000c2d92]                           dc.b $00
[000c2d93]                           dc.b $64
[000c2d94]                           dc.b $00
[000c2d95]                           dc.b $00
[000c2d96]                           dc.b $00
[000c2d97]                           dc.b $0a
[000c2d98]                           dc.b $00
[000c2d99]                           dc.b $00
[000c2d9a]                           dc.b $00
[000c2d9b]                           dc.b $14
[000c2d9c]                           dc.b $00
[000c2d9d]                           dc.b $00
[000c2d9e]                           dc.b $00
[000c2d9f]                           dc.b $01
[000c2da0]                           dc.b $00
[000c2da1]                           dc.b $00
[000c2da2]                           dc.b $00
[000c2da3]                           dc.b $00
[000c2da4]                           dc.b $00
[000c2da5]                           dc.b $00
[000c2da6]                           dc.b $00
[000c2da7]                           dc.b $00
[000c2da8]                           dc.b $00
[000c2da9]                           dc.b $00
[000c2daa]                           dc.b $00
[000c2dab]                           dc.b $00
