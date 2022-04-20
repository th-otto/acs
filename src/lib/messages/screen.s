Aev_GetMnSelected:
[00054b26] 594f                      subq.w     #4,a7
[00054b28] 2e88                      move.l     a0,(a7)
[00054b2a] 2057                      movea.l    (a7),a0
[00054b2c] 2050                      movea.l    (a0),a0
[00054b2e] 3228 0008                 move.w     8(a0),d1
[00054b32] 2057                      movea.l    (a7),a0
[00054b34] 2050                      movea.l    (a0),a0
[00054b36] 3028 0006                 move.w     6(a0),d0
[00054b3a] 4eb9 0004 9576            jsr        $00049576
[00054b40] 7001                      moveq.l    #1,d0
[00054b42] 584f                      addq.w     #4,a7
[00054b44] 4e75                      rts
Aev_GetWmRedraw:
[00054b46] 2f0a                      move.l     a2,-(a7)
[00054b48] 594f                      subq.w     #4,a7
[00054b4a] 2e88                      move.l     a0,(a7)
[00054b4c] 2257                      movea.l    (a7),a1
[00054b4e] 5849                      addq.w     #4,a1
[00054b50] 2057                      movea.l    (a7),a0
[00054b52] 2068 000c                 movea.l    12(a0),a0
[00054b56] 2457                      movea.l    (a7),a2
[00054b58] 246a 000c                 movea.l    12(a2),a2
[00054b5c] 246a 006a                 movea.l    106(a2),a2
[00054b60] 4e92                      jsr        (a2)
[00054b62] 7001                      moveq.l    #1,d0
[00054b64] 584f                      addq.w     #4,a7
[00054b66] 245f                      movea.l    (a7)+,a2
[00054b68] 4e75                      rts
Aev_GetWmTopped:
[00054b6a] 594f                      subq.w     #4,a7
[00054b6c] 2e88                      move.l     a0,(a7)
[00054b6e] 2057                      movea.l    (a7),a0
[00054b70] 2068 000c                 movea.l    12(a0),a0
[00054b74] 3028 0054                 move.w     84(a0),d0
[00054b78] c07c 0100                 and.w      #$0100,d0
[00054b7c] 675e                      beq.s      $00054BDC
[00054b7e] 2079 0010 1f12            movea.l    ACSblk,a0
[00054b84] 2068 0280                 movea.l    640(a0),a0
[00054b88] 0c50 0400                 cmpi.w     #$0400,(a0)
[00054b8c] 6c4e                      bge.s      $00054BDC
[00054b8e] 0c79 0300 0010 2620       cmpi.w     #$0300,$00102620
[00054b96] 6c44                      bge.s      $00054BDC
[00054b98] 2079 0010 1f12            movea.l    ACSblk,a0
[00054b9e] 3228 0264                 move.w     612(a0),d1
[00054ba2] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ba8] 3028 0262                 move.w     610(a0),d0
[00054bac] 2057                      movea.l    (a7),a0
[00054bae] 2068 000c                 movea.l    12(a0),a0
[00054bb2] 41e8 0034                 lea.l      52(a0),a0
[00054bb6] 4eb9 0005 ef64            jsr        $0005EF64
[00054bbc] 4a40                      tst.w      d0
[00054bbe] 671c                      beq.s      $00054BDC
[00054bc0] 2079 0010 1f12            movea.l    ACSblk,a0
[00054bc6] 3228 02cc                 move.w     716(a0),d1
[00054bca] 2079 0010 1f12            movea.l    ACSblk,a0
[00054bd0] 3028 02ca                 move.w     714(a0),d0
[00054bd4] 4eb9 0004 69f2            jsr        $000469F2
[00054bda] 6012                      bra.s      $00054BEE
[00054bdc] 2057                      movea.l    (a7),a0
[00054bde] 2068 000c                 movea.l    12(a0),a0
[00054be2] 2257                      movea.l    (a7),a1
[00054be4] 2269 000c                 movea.l    12(a1),a1
[00054be8] 2269 006e                 movea.l    110(a1),a1
[00054bec] 4e91                      jsr        (a1)
[00054bee] 7001                      moveq.l    #1,d0
[00054bf0] 584f                      addq.w     #4,a7
[00054bf2] 4e75                      rts
Aev_GetWmClosed:
[00054bf4] 2f0a                      move.l     a2,-(a7)
[00054bf6] 4fef fff4                 lea.l      -12(a7),a7
[00054bfa] 2f48 0008                 move.l     a0,8(a7)
[00054bfe] 4eb9 0004 fbf8            jsr        $0004FBF8
[00054c04] 2f48 0004                 move.l     a0,4(a7)
[00054c08] 206f 0008                 movea.l    8(a7),a0
[00054c0c] 2ea8 000c                 move.l     12(a0),(a7)
[00054c10] 202f 0004                 move.l     4(a7),d0
[00054c14] 6708                      beq.s      $00054C1E
[00054c16] 206f 0004                 movea.l    4(a7),a0
[00054c1a] b1d7                      cmpa.l     (a7),a0
[00054c1c] 663c                      bne.s      $00054C5A
[00054c1e] 4eb9 0004 e608            jsr        $0004E608
[00054c24] 2257                      movea.l    (a7),a1
[00054c26] b3c8                      cmpa.l     a0,a1
[00054c28] 6716                      beq.s      $00054C40
[00054c2a] 7001                      moveq.l    #1,d0
[00054c2c] 2057                      movea.l    (a7),a0
[00054c2e] c068 0054                 and.w      84(a0),d0
[00054c32] 660c                      bne.s      $00054C40
[00054c34] 2057                      movea.l    (a7),a0
[00054c36] 3028 0056                 move.w     86(a0),d0
[00054c3a] c07c 0400                 and.w      #$0400,d0
[00054c3e] 670c                      beq.s      $00054C4C
[00054c40] 2057                      movea.l    (a7),a0
[00054c42] 2257                      movea.l    (a7),a1
[00054c44] 2269 0072                 movea.l    114(a1),a1
[00054c48] 4e91                      jsr        (a1)
[00054c4a] 600e                      bra.s      $00054C5A
[00054c4c] 93c9                      suba.l     a1,a1
[00054c4e] 7002                      moveq.l    #2,d0
[00054c50] 2057                      movea.l    (a7),a0
[00054c52] 2457                      movea.l    (a7),a2
[00054c54] 246a 0004                 movea.l    4(a2),a2
[00054c58] 4e92                      jsr        (a2)
[00054c5a] 7001                      moveq.l    #1,d0
[00054c5c] 4fef 000c                 lea.l      12(a7),a7
[00054c60] 245f                      movea.l    (a7)+,a2
[00054c62] 4e75                      rts
Aev_GetWmFulled:
[00054c64] 594f                      subq.w     #4,a7
[00054c66] 2e88                      move.l     a0,(a7)
[00054c68] 2057                      movea.l    (a7),a0
[00054c6a] 2068 000c                 movea.l    12(a0),a0
[00054c6e] 2257                      movea.l    (a7),a1
[00054c70] 2269 000c                 movea.l    12(a1),a1
[00054c74] 2269 0076                 movea.l    118(a1),a1
[00054c78] 4e91                      jsr        (a1)
[00054c7a] 7001                      moveq.l    #1,d0
[00054c7c] 584f                      addq.w     #4,a7
[00054c7e] 4e75                      rts
Aev_GetWmArrowed:
[00054c80] 514f                      subq.w     #8,a7
[00054c82] 2f48 0004                 move.l     a0,4(a7)
[00054c86] 206f 0004                 movea.l    4(a7),a0
[00054c8a] 2e90                      move.l     (a0),(a7)
[00054c8c] 2057                      movea.l    (a7),a0
[00054c8e] 3028 000a                 move.w     10(a0),d0
[00054c92] 6b20                      bmi.s      $00054CB4
[00054c94] 7201                      moveq.l    #1,d1
[00054c96] 2057                      movea.l    (a7),a0
[00054c98] 3028 0008                 move.w     8(a0),d0
[00054c9c] 206f 0004                 movea.l    4(a7),a0
[00054ca0] 2068 000c                 movea.l    12(a0),a0
[00054ca4] 226f 0004                 movea.l    4(a7),a1
[00054ca8] 2269 000c                 movea.l    12(a1),a1
[00054cac] 2269 007a                 movea.l    122(a1),a1
[00054cb0] 4e91                      jsr        (a1)
[00054cb2] 6050                      bra.s      $00054D04
[00054cb4] 2057                      movea.l    (a7),a0
[00054cb6] 3228 000a                 move.w     10(a0),d1
[00054cba] 4441                      neg.w      d1
[00054cbc] 2057                      movea.l    (a7),a0
[00054cbe] 3028 0008                 move.w     8(a0),d0
[00054cc2] 206f 0004                 movea.l    4(a7),a0
[00054cc6] 2068 000c                 movea.l    12(a0),a0
[00054cca] 226f 0004                 movea.l    4(a7),a1
[00054cce] 2269 000c                 movea.l    12(a1),a1
[00054cd2] 2269 007a                 movea.l    122(a1),a1
[00054cd6] 4e91                      jsr        (a1)
[00054cd8] 2057                      movea.l    (a7),a0
[00054cda] 3028 000e                 move.w     14(a0),d0
[00054cde] 6a24                      bpl.s      $00054D04
[00054ce0] 2057                      movea.l    (a7),a0
[00054ce2] 3228 000e                 move.w     14(a0),d1
[00054ce6] 4441                      neg.w      d1
[00054ce8] 2057                      movea.l    (a7),a0
[00054cea] 3028 000c                 move.w     12(a0),d0
[00054cee] 206f 0004                 movea.l    4(a7),a0
[00054cf2] 2068 000c                 movea.l    12(a0),a0
[00054cf6] 226f 0004                 movea.l    4(a7),a1
[00054cfa] 2269 000c                 movea.l    12(a1),a1
[00054cfe] 2269 007a                 movea.l    122(a1),a1
[00054d02] 4e91                      jsr        (a1)
[00054d04] 7001                      moveq.l    #1,d0
[00054d06] 504f                      addq.w     #8,a7
[00054d08] 4e75                      rts
Aev_GetWmMouseWheel:
[00054d0a] 4fef ffd8                 lea.l      -40(a7),a7
[00054d0e] 2f48 0024                 move.l     a0,36(a7)
[00054d12] 206f 0024                 movea.l    36(a7),a0
[00054d16] 2f50 0020                 move.l     (a0),32(a7)
[00054d1a] 7220                      moveq.l    #32,d1
[00054d1c] 4240                      clr.w      d0
[00054d1e] 41d7                      lea.l      (a7),a0
[00054d20] 4eb9 0007 712e            jsr        $0007712E
[00054d26] 206f 0020                 movea.l    32(a7),a0
[00054d2a] 3ea8 0008                 move.w     8(a0),(a7)
[00054d2e] 206f 0020                 movea.l    32(a7),a0
[00054d32] 3228 000c                 move.w     12(a0),d1
[00054d36] 206f 0020                 movea.l    32(a7),a0
[00054d3a] 3028 000a                 move.w     10(a0),d0
[00054d3e] 43d7                      lea.l      (a7),a1
[00054d40] 206f 0024                 movea.l    36(a7),a0
[00054d44] 2068 000c                 movea.l    12(a0),a0
[00054d48] 4eb9 0004 bfc0            jsr        $0004BFC0
[00054d4e] 4fef 0028                 lea.l      40(a7),a7
[00054d52] 4e75                      rts
Aev_GetWmHSlid:
[00054d54] 594f                      subq.w     #4,a7
[00054d56] 2e88                      move.l     a0,(a7)
[00054d58] 2057                      movea.l    (a7),a0
[00054d5a] 2050                      movea.l    (a0),a0
[00054d5c] 3028 0008                 move.w     8(a0),d0
[00054d60] 2057                      movea.l    (a7),a0
[00054d62] 2068 000c                 movea.l    12(a0),a0
[00054d66] 2257                      movea.l    (a7),a1
[00054d68] 2269 000c                 movea.l    12(a1),a1
[00054d6c] 2269 007e                 movea.l    126(a1),a1
[00054d70] 4e91                      jsr        (a1)
[00054d72] 7001                      moveq.l    #1,d0
[00054d74] 584f                      addq.w     #4,a7
[00054d76] 4e75                      rts
Aev_GetWmVSlid:
[00054d78] 594f                      subq.w     #4,a7
[00054d7a] 2e88                      move.l     a0,(a7)
[00054d7c] 2057                      movea.l    (a7),a0
[00054d7e] 2050                      movea.l    (a0),a0
[00054d80] 3028 0008                 move.w     8(a0),d0
[00054d84] 2057                      movea.l    (a7),a0
[00054d86] 2068 000c                 movea.l    12(a0),a0
[00054d8a] 2257                      movea.l    (a7),a1
[00054d8c] 2269 000c                 movea.l    12(a1),a1
[00054d90] 2269 0082                 movea.l    130(a1),a1
[00054d94] 4e91                      jsr        (a1)
[00054d96] 7001                      moveq.l    #1,d0
[00054d98] 584f                      addq.w     #4,a7
[00054d9a] 4e75                      rts
Aev_GetWmSized:
[00054d9c] 2f0a                      move.l     a2,-(a7)
[00054d9e] 594f                      subq.w     #4,a7
[00054da0] 2e88                      move.l     a0,(a7)
[00054da2] 2257                      movea.l    (a7),a1
[00054da4] 5849                      addq.w     #4,a1
[00054da6] 2057                      movea.l    (a7),a0
[00054da8] 2068 000c                 movea.l    12(a0),a0
[00054dac] 2457                      movea.l    (a7),a2
[00054dae] 246a 000c                 movea.l    12(a2),a2
[00054db2] 246a 0086                 movea.l    134(a2),a2
[00054db6] 4e92                      jsr        (a2)
[00054db8] 7001                      moveq.l    #1,d0
[00054dba] 584f                      addq.w     #4,a7
[00054dbc] 245f                      movea.l    (a7)+,a2
[00054dbe] 4e75                      rts
Aev_GetWmMoved:
[00054dc0] 2f0a                      move.l     a2,-(a7)
[00054dc2] 594f                      subq.w     #4,a7
[00054dc4] 2e88                      move.l     a0,(a7)
[00054dc6] 2257                      movea.l    (a7),a1
[00054dc8] 5849                      addq.w     #4,a1
[00054dca] 2057                      movea.l    (a7),a0
[00054dcc] 2068 000c                 movea.l    12(a0),a0
[00054dd0] 2457                      movea.l    (a7),a2
[00054dd2] 246a 000c                 movea.l    12(a2),a2
[00054dd6] 246a 008a                 movea.l    138(a2),a2
[00054dda] 4e92                      jsr        (a2)
[00054ddc] 7001                      moveq.l    #1,d0
[00054dde] 584f                      addq.w     #4,a7
[00054de0] 245f                      movea.l    (a7)+,a2
[00054de2] 4e75                      rts
Aev_GetWmBottomed:
[00054de4] 594f                      subq.w     #4,a7
[00054de6] 2e88                      move.l     a0,(a7)
[00054de8] 2057                      movea.l    (a7),a0
[00054dea] 2068 000c                 movea.l    12(a0),a0
[00054dee] 4eb9 0004 fbcc            jsr        $0004FBCC
[00054df4] 7001                      moveq.l    #1,d0
[00054df6] 584f                      addq.w     #4,a7
[00054df8] 4e75                      rts
Aev_GetWmOnTop:
[00054dfa] 594f                      subq.w     #4,a7
[00054dfc] 2e88                      move.l     a0,(a7)
[00054dfe] 3039 0010 2620            move.w     $00102620,d0
[00054e04] 6f12                      ble.s      $00054E18
[00054e06] 0c79 0200 0010 2620       cmpi.w     #$0200,$00102620
[00054e0e] 6c08                      bge.s      $00054E18
[00054e10] 2057                      movea.l    (a7),a0
[00054e12] 6100 ffd0                 bsr.w      $00054DE4
[00054e16] 600c                      bra.s      $00054E24
[00054e18] 2057                      movea.l    (a7),a0
[00054e1a] 2068 000c                 movea.l    12(a0),a0
[00054e1e] 4eb9 0004 e482            jsr        $0004E482
[00054e24] 7001                      moveq.l    #1,d0
[00054e26] 584f                      addq.w     #4,a7
[00054e28] 4e75                      rts
Aev_GetWmUnTopped:
[00054e2a] 7001                      moveq.l    #1,d0
[00054e2c] 4e75                      rts
Aev_GetWmToolbar:
[00054e2e] 7001                      moveq.l    #1,d0
[00054e30] 4e75                      rts
Aev_GetWmShaded:
[00054e32] 2f0a                      move.l     a2,-(a7)
[00054e34] 594f                      subq.w     #4,a7
[00054e36] 2e88                      move.l     a0,(a7)
[00054e38] 2057                      movea.l    (a7),a0
[00054e3a] 2068 000c                 movea.l    12(a0),a0
[00054e3e] 0068 2000 0056            ori.w      #$2000,86(a0)
[00054e44] 93c9                      suba.l     a1,a1
[00054e46] 7022                      moveq.l    #34,d0
[00054e48] 2057                      movea.l    (a7),a0
[00054e4a] 2068 000c                 movea.l    12(a0),a0
[00054e4e] 2457                      movea.l    (a7),a2
[00054e50] 246a 000c                 movea.l    12(a2),a2
[00054e54] 246a 0004                 movea.l    4(a2),a2
[00054e58] 4e92                      jsr        (a2)
[00054e5a] 7001                      moveq.l    #1,d0
[00054e5c] 584f                      addq.w     #4,a7
[00054e5e] 245f                      movea.l    (a7)+,a2
[00054e60] 4e75                      rts
Aev_GetWmUnshaded:
[00054e62] 2f0a                      move.l     a2,-(a7)
[00054e64] 514f                      subq.w     #8,a7
[00054e66] 2f48 0004                 move.l     a0,4(a7)
[00054e6a] 206f 0004                 movea.l    4(a7),a0
[00054e6e] 2ea8 000c                 move.l     12(a0),(a7)
[00054e72] 93c9                      suba.l     a1,a1
[00054e74] 7023                      moveq.l    #35,d0
[00054e76] 2057                      movea.l    (a7),a0
[00054e78] 2457                      movea.l    (a7),a2
[00054e7a] 246a 0004                 movea.l    4(a2),a2
[00054e7e] 4e92                      jsr        (a2)
[00054e80] 2057                      movea.l    (a7),a0
[00054e82] 0268 dfff 0056            andi.w     #$DFFF,86(a0)
[00054e88] 2057                      movea.l    (a7),a0
[00054e8a] 41e8 0024                 lea.l      36(a0),a0
[00054e8e] 2257                      movea.l    (a7),a1
[00054e90] 3229 0020                 move.w     32(a1),d1
[00054e94] 2279 0010 1f12            movea.l    ACSblk,a1
[00054e9a] 3011                      move.w     (a1),d0
[00054e9c] 4eb9 0005 5058            jsr        $00055058
[00054ea2] 7001                      moveq.l    #1,d0
[00054ea4] 504f                      addq.w     #8,a7
[00054ea6] 245f                      movea.l    (a7)+,a2
[00054ea8] 4e75                      rts
Aev_GetWmIconify:
[00054eaa] 594f                      subq.w     #4,a7
[00054eac] 2e88                      move.l     a0,(a7)
[00054eae] 4240                      clr.w      d0
[00054eb0] 2057                      movea.l    (a7),a0
[00054eb2] 2068 000c                 movea.l    12(a0),a0
[00054eb6] 2257                      movea.l    (a7),a1
[00054eb8] 2269 000c                 movea.l    12(a1),a1
[00054ebc] 2269 008e                 movea.l    142(a1),a1
[00054ec0] 4e91                      jsr        (a1)
[00054ec2] 7001                      moveq.l    #1,d0
[00054ec4] 584f                      addq.w     #4,a7
[00054ec6] 4e75                      rts
Aev_GetWmAllIconify:
[00054ec8] 594f                      subq.w     #4,a7
[00054eca] 2e88                      move.l     a0,(a7)
[00054ecc] 7001                      moveq.l    #1,d0
[00054ece] 2057                      movea.l    (a7),a0
[00054ed0] 2068 000c                 movea.l    12(a0),a0
[00054ed4] 2257                      movea.l    (a7),a1
[00054ed6] 2269 000c                 movea.l    12(a1),a1
[00054eda] 2269 008e                 movea.l    142(a1),a1
[00054ede] 4e91                      jsr        (a1)
[00054ee0] 7001                      moveq.l    #1,d0
[00054ee2] 584f                      addq.w     #4,a7
[00054ee4] 4e75                      rts
Aev_GetWmUnIconify:
[00054ee6] 594f                      subq.w     #4,a7
[00054ee8] 2e88                      move.l     a0,(a7)
[00054eea] 2057                      movea.l    (a7),a0
[00054eec] 2068 000c                 movea.l    12(a0),a0
[00054ef0] 2257                      movea.l    (a7),a1
[00054ef2] 2269 000c                 movea.l    12(a1),a1
[00054ef6] 2269 0092                 movea.l    146(a1),a1
[00054efa] 4e91                      jsr        (a1)
[00054efc] 7001                      moveq.l    #1,d0
[00054efe] 584f                      addq.w     #4,a7
[00054f00] 4e75                      rts
Aev_GetApTerm:
[00054f02] 4eb9 0004 640a            jsr        $0004640A
[00054f08] 2079 0010 1f12            movea.l    ACSblk,a0
[00054f0e] 317c 0001 027e            move.w     #$0001,638(a0)
[00054f14] 7001                      moveq.l    #1,d0
[00054f16] 4e75                      rts
Aev_GetScChanged:
[00054f18] 91c8                      suba.l     a0,a0
[00054f1a] 701c                      moveq.l    #28,d0
[00054f1c] 4eb9 0004 ef62            jsr        $0004EF62
[00054f22] 7001                      moveq.l    #1,d0
[00054f24] 4e75                      rts
Aev_GetFntChanged:
[00054f26] 4fef ff8e                 lea.l      -114(a7),a7
[00054f2a] 4241                      clr.w      d1
[00054f2c] 2079 0010 1f12            movea.l    ACSblk,a0
[00054f32] 3028 0010                 move.w     16(a0),d0
[00054f36] 4eb9 0006 3f0e            jsr        $00063F0E
[00054f3c] 41d7                      lea.l      (a7),a0
[00054f3e] 4241                      clr.w      d1
[00054f40] 2279 0010 1f12            movea.l    ACSblk,a1
[00054f46] 3029 0010                 move.w     16(a1),d0
[00054f4a] 4eb9 0006 7090            jsr        $00067090
[00054f50] 2079 0010 1f12            movea.l    ACSblk,a0
[00054f56] 316f 0014 0284            move.w     20(a7),644(a0)
[00054f5c] 4241                      clr.w      d1
[00054f5e] 2079 0010 1f12            movea.l    ACSblk,a0
[00054f64] 3028 0010                 move.w     16(a0),d0
[00054f68] 4eb9 0006 3eba            jsr        $00063EBA
[00054f6e] 2079 0010 1f12            movea.l    ACSblk,a0
[00054f74] d168 0284                 add.w      d0,644(a0)
[00054f78] 91c8                      suba.l     a0,a0
[00054f7a] 7032                      moveq.l    #50,d0
[00054f7c] 4eb9 0004 ef62            jsr        $0004EF62
[00054f82] 7001                      moveq.l    #1,d0
[00054f84] 4fef 0072                 lea.l      114(a7),a7
[00054f88] 4e75                      rts
Aev_GetPrnChanged:
[00054f8a] 594f                      subq.w     #4,a7
[00054f8c] 2e88                      move.l     a0,(a7)
[00054f8e] 2057                      movea.l    (a7),a0
[00054f90] 2050                      movea.l    (a0),a0
[00054f92] 5c48                      addq.w     #6,a0
[00054f94] 7033                      moveq.l    #51,d0
[00054f96] 4eb9 0004 ef62            jsr        $0004EF62
[00054f9c] 7001                      moveq.l    #1,d0
[00054f9e] 584f                      addq.w     #4,a7
[00054fa0] 4e75                      rts
Aev_GetColorsChanged:
[00054fa2] 2079 0010 1f12            movea.l    ACSblk,a0
[00054fa8] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00054fae] 6e18                      bgt.s      $00054FC8
[00054fb0] 2079 0010 1f12            movea.l    ACSblk,a0
[00054fb6] 5048                      addq.w     #8,a0
[00054fb8] 72ff                      moveq.l    #-1,d1
[00054fba] 2279 0010 1f12            movea.l    ACSblk,a1
[00054fc0] 3011                      move.w     (a1),d0
[00054fc2] 4eb9 0005 5058            jsr        $00055058
[00054fc8] 7001                      moveq.l    #1,d0
[00054fca] 4e75                      rts
Aev_GetAcClose:
[00054fcc] 594f                      subq.w     #4,a7
[00054fce] 4eb9 0004 e608            jsr        $0004E608
[00054fd4] 2e88                      move.l     a0,(a7)
[00054fd6] 2017                      move.l     (a7),d0
[00054fd8] 6604                      bne.s      $00054FDE
[00054fda] 4240                      clr.w      d0
[00054fdc] 605a                      bra.s      $00055038
[00054fde] 4eb9 0004 e58c            jsr        $0004E58C
[00054fe4] 4eb9 0004 63f4            jsr        $000463F4
[00054fea] 91c8                      suba.l     a0,a0
[00054fec] 7001                      moveq.l    #1,d0
[00054fee] 4eb9 0004 ef62            jsr        $0004EF62
[00054ff4] 2079 0010 1f12            movea.l    ACSblk,a0
[00054ffa] 3028 0238                 move.w     568(a0),d0
[00054ffe] 6636                      bne.s      $00055036
[00055000] 2079 000d 2c54            movea.l    $000D2C54,a0
[00055006] 2279 000d 2c54            movea.l    $000D2C54,a1
[0005500c] 2269 0008                 movea.l    8(a1),a1
[00055010] 4e91                      jsr        (a1)
[00055012] 2079 0010 1f12            movea.l    ACSblk,a0
[00055018] 3028 0236                 move.w     566(a0),d0
[0005501c] 6618                      bne.s      $00055036
[0005501e] 72ff                      moveq.l    #-1,d1
[00055020] 91c8                      suba.l     a0,a0
[00055022] 4240                      clr.w      d0
[00055024] 4eb9 0005 5a66            jsr        $00055A66
[0005502a] 72ff                      moveq.l    #-1,d1
[0005502c] 91c8                      suba.l     a0,a0
[0005502e] 4240                      clr.w      d0
[00055030] 4eb9 0005 6106            jsr        $00056106
[00055036] 7001                      moveq.l    #1,d0
[00055038] 584f                      addq.w     #4,a7
[0005503a] 4e75                      rts
Aev_GetAcOpen:
[0005503c] 594f                      subq.w     #4,a7
[0005503e] 4eb9 0004 e608            jsr        $0004E608
[00055044] 2e88                      move.l     a0,(a7)
[00055046] 2017                      move.l     (a7),d0
[00055048] 6708                      beq.s      $00055052
[0005504a] 2057                      movea.l    (a7),a0
[0005504c] 4eb9 0004 f0ca            jsr        $0004F0CA
[00055052] 7001                      moveq.l    #1,d0
[00055054] 584f                      addq.w     #4,a7
[00055056] 4e75                      rts
Aev_WmRedraw:
[00055058] 4fef ffe6                 lea.l      -26(a7),a7
[0005505c] 3f40 0018                 move.w     d0,24(a7)
[00055060] 3f41 0016                 move.w     d1,22(a7)
[00055064] 2f48 0012                 move.l     a0,18(a7)
[00055068] 3ebc 0014                 move.w     #$0014,(a7)
[0005506c] 2079 0010 1f12            movea.l    ACSblk,a0
[00055072] 3f50 0002                 move.w     (a0),2(a7)
[00055076] 426f 0004                 clr.w      4(a7)
[0005507a] 302f 0016                 move.w     22(a7),d0
[0005507e] 6a04                      bpl.s      $00055084
[00055080] 4240                      clr.w      d0
[00055082] 6004                      bra.s      $00055088
[00055084] 302f 0016                 move.w     22(a7),d0
[00055088] 3f40 0006                 move.w     d0,6(a7)
[0005508c] 206f 0012                 movea.l    18(a7),a0
[00055090] 3f50 0008                 move.w     (a0),8(a7)
[00055094] 206f 0012                 movea.l    18(a7),a0
[00055098] 3f68 0002 000a            move.w     2(a0),10(a7)
[0005509e] 206f 0012                 movea.l    18(a7),a0
[000550a2] 3f68 0004 000c            move.w     4(a0),12(a7)
[000550a8] 206f 0012                 movea.l    18(a7),a0
[000550ac] 3f68 0006 000e            move.w     6(a0),14(a7)
[000550b2] 2279 000d 99d6            movea.l    $000D99D6,a1
[000550b8] 41d7                      lea.l      (a7),a0
[000550ba] 7210                      moveq.l    #16,d1
[000550bc] 302f 0018                 move.w     24(a7),d0
[000550c0] 4eb9 0006 a818            jsr        $0006A818
[000550c6] 3f40 0010                 move.w     d0,16(a7)
[000550ca] 302f 0016                 move.w     22(a7),d0
[000550ce] 6a4e                      bpl.s      $0005511E
[000550d0] 206f 0012                 movea.l    18(a7),a0
[000550d4] 3f28 0006                 move.w     6(a0),-(a7)
[000550d8] 206f 0014                 movea.l    20(a7),a0
[000550dc] 3f28 0004                 move.w     4(a0),-(a7)
[000550e0] 206f 0016                 movea.l    22(a7),a0
[000550e4] 3f28 0002                 move.w     2(a0),-(a7)
[000550e8] 206f 0018                 movea.l    24(a7),a0
[000550ec] 3f10                      move.w     (a0),-(a7)
[000550ee] 206f 001a                 movea.l    26(a7),a0
[000550f2] 3f28 0006                 move.w     6(a0),-(a7)
[000550f6] 206f 001c                 movea.l    28(a7),a0
[000550fa] 3f28 0004                 move.w     4(a0),-(a7)
[000550fe] 2079 000d 99d6            movea.l    $000D99D6,a0
[00055104] 226f 001e                 movea.l    30(a7),a1
[00055108] 3429 0002                 move.w     2(a1),d2
[0005510c] 226f 001e                 movea.l    30(a7),a1
[00055110] 3211                      move.w     (a1),d1
[00055112] 7003                      moveq.l    #3,d0
[00055114] 4eb9 0006 bde4            jsr        $0006BDE4
[0005511a] 4fef 000c                 lea.l      12(a7),a7
[0005511e] 302f 0010                 move.w     16(a7),d0
[00055122] 6704                      beq.s      $00055128
[00055124] 7001                      moveq.l    #1,d0
[00055126] 6002                      bra.s      $0005512A
[00055128] 4240                      clr.w      d0
[0005512a] 4fef 001a                 lea.l      26(a7),a7
[0005512e] 4e75                      rts
