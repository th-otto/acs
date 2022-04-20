INbackplan:
[0004d8d4] 3039 000d 3d8c            move.w     $000D3D8C,d0
[0004d8da] 5279 000d 3d8c            addq.w     #1,$000D3D8C
[0004d8e0] 4a40                      tst.w      d0
[0004d8e2] 6642                      bne.s      $0004D926
[0004d8e4] 4eb9 0007 2880            jsr        $00072880
[0004d8ea] 23c8 0010 6b94            move.l     a0,$00106B94
[0004d8f0] 4eb9 0004 19d4            jsr        $000419D4
[0004d8f6] 41f9 0010 2626            lea.l      $00102626,a0
[0004d8fc] 2250                      movea.l    (a0),a1
[0004d8fe] 33e9 038c 0010 6b9c       move.w     908(a1),$00106B9C
[0004d906] 33e9 00da 0010 6b98       move.w     218(a1),$00106B98
[0004d90e] 33e9 00dc 0010 6b9a       move.w     220(a1),$00106B9A
[0004d916] 33e9 038a 0010 6b9e       move.w     906(a1),$00106B9E
[0004d91e] 33e9 0382 0010 6ba0       move.w     898(a1),$00106BA0
[0004d926] 4e75                      rts
Abp_create:
[0004d928] 48e7 1e20                 movem.l    d3-d6/a2,-(a7)
[0004d92c] 3600                      move.w     d0,d3
[0004d92e] 3a01                      move.w     d1,d5
[0004d930] 780f                      moveq.l    #15,d4
[0004d932] d840                      add.w      d0,d4
[0004d934] e844                      asr.w      #4,d4
[0004d936] 3001                      move.w     d1,d0
[0004d938] 2079 0010 1f12            movea.l    ACSblk,a0
[0004d93e] c1e8 001c                 muls.w     28(a0),d0
[0004d942] 48c0                      ext.l      d0
[0004d944] d080                      add.l      d0,d0
[0004d946] 3204                      move.w     d4,d1
[0004d948] 48c1                      ext.l      d1
[0004d94a] 4eb9 0007 76f0            jsr        $000776F0
[0004d950] 2c00                      move.l     d0,d6
[0004d952] dcbc 0000 0014            add.l      #$00000014,d6
[0004d958] 2006                      move.l     d6,d0
[0004d95a] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004d960] 2448                      movea.l    a0,a2
[0004d962] 200a                      move.l     a2,d0
[0004d964] 6728                      beq.s      $0004D98E
[0004d966] 2206                      move.l     d6,d1
[0004d968] 4240                      clr.w      d0
[0004d96a] 4eb9 0007 712e            jsr        $0007712E
[0004d970] 41ea 0014                 lea.l      20(a2),a0
[0004d974] 2488                      move.l     a0,(a2)
[0004d976] 3543 0004                 move.w     d3,4(a2)
[0004d97a] 3545 0006                 move.w     d5,6(a2)
[0004d97e] 3544 0008                 move.w     d4,8(a2)
[0004d982] 2279 0010 1f12            movea.l    ACSblk,a1
[0004d988] 3569 001c 000c            move.w     28(a1),12(a2)
[0004d98e] 204a                      movea.l    a2,a0
[0004d990] 4cdf 0478                 movem.l    (a7)+,d3-d6/a2
[0004d994] 4e75                      rts
Abp_delete:
[0004d996] 7014                      moveq.l    #20,d0
[0004d998] 4eb9 0004 8140            jsr        $00048140
[0004d99e] 4e75                      rts
ret:
[0004d9a0] 4e75                      rts
Abp_start:
[0004d9a2] 2f0a                      move.l     a2,-(a7)
[0004d9a4] 2f0b                      move.l     a3,-(a7)
[0004d9a6] 2448                      movea.l    a0,a2
[0004d9a8] 47f9 000d 3d8e            lea.l      $000D3D8E,a3
[0004d9ae] 302b fffe                 move.w     -2(a3),d0
[0004d9b2] 6604                      bne.s      $0004D9B8
[0004d9b4] 6100 ff1e                 bsr        $0004D8D4
[0004d9b8] 4eb9 0004 9970            jsr        $00049970
[0004d9be] 4eb9 0007 2870            jsr        $00072870
[0004d9c4] 23c8 0010 6ba2            move.l     a0,$00106BA2
[0004d9ca] 23e8 0010 0010 6ba6       move.l     16(a0),$00106BA6
[0004d9d2] 217c 0004 d9a0 0010       move.l     #$0004D9A0,16(a0)
[0004d9da] 70ff                      moveq.l    #-1,d0
[0004d9dc] 227c ffff ffff            movea.l    #$FFFFFFFF,a1
[0004d9e2] 2052                      movea.l    (a2),a0
[0004d9e4] 4eb9 0007 2890            jsr        $00072890
[0004d9ea] 41f9 0010 2626            lea.l      $00102626,a0
[0004d9f0] 302a 0008                 move.w     8(a2),d0
[0004d9f4] d040                      add.w      d0,d0
[0004d9f6] c1ea 000c                 muls.w     12(a2),d0
[0004d9fa] 2250                      movea.l    (a0),a1
[0004d9fc] 3340 038c                 move.w     d0,908(a1)
[0004da00] 2279 0010 2622            movea.l    $00102622,a1
[0004da06] 3340 0002                 move.w     d0,2(a1)
[0004da0a] 2250                      movea.l    (a0),a1
[0004da0c] 336a 0006 038a            move.w     6(a2),906(a1)
[0004da12] 2250                      movea.l    (a0),a1
[0004da14] 336a 0004 0382            move.w     4(a2),898(a1)
[0004da1a] 70ff                      moveq.l    #-1,d0
[0004da1c] d06a 0004                 add.w      4(a2),d0
[0004da20] 2250                      movea.l    (a0),a1
[0004da22] 3340 00da                 move.w     d0,218(a1)
[0004da26] 3740 0004                 move.w     d0,4(a3)
[0004da2a] 72ff                      moveq.l    #-1,d1
[0004da2c] d26a 0006                 add.w      6(a2),d1
[0004da30] 2250                      movea.l    (a0),a1
[0004da32] 3341 00dc                 move.w     d1,220(a1)
[0004da36] 3741 0006                 move.w     d1,6(a3)
[0004da3a] 204b                      movea.l    a3,a0
[0004da3c] 2279 0010 1f12            movea.l    ACSblk,a1
[0004da42] 3029 0010                 move.w     16(a1),d0
[0004da46] 7201                      moveq.l    #1,d1
[0004da48] 4eb9 0006 3f60            jsr        $00063F60
[0004da4e] 265f                      movea.l    (a7)+,a3
[0004da50] 245f                      movea.l    (a7)+,a2
[0004da52] 4e75                      rts
Abp_end:
[0004da54] 2f0a                      move.l     a2,-(a7)
[0004da56] 2f0b                      move.l     a3,-(a7)
[0004da58] 45f9 0010 6b9c            lea.l      $00106B9C,a2
[0004da5e] 41f9 0010 2626            lea.l      $00102626,a0
[0004da64] 3012                      move.w     (a2),d0
[0004da66] 2279 0010 2622            movea.l    $00102622,a1
[0004da6c] 3340 0002                 move.w     d0,2(a1)
[0004da70] 2250                      movea.l    (a0),a1
[0004da72] 3340 038c                 move.w     d0,908(a1)
[0004da76] 2250                      movea.l    (a0),a1
[0004da78] 336a 0002 038a            move.w     2(a2),906(a1)
[0004da7e] 2250                      movea.l    (a0),a1
[0004da80] 336a 0004 0382            move.w     4(a2),898(a1)
[0004da86] 47f9 000d 3d8e            lea.l      $000D3D8E,a3
[0004da8c] 302a fffc                 move.w     -4(a2),d0
[0004da90] 2250                      movea.l    (a0),a1
[0004da92] 3340 00da                 move.w     d0,218(a1)
[0004da96] 3740 0004                 move.w     d0,4(a3)
[0004da9a] 322a fffe                 move.w     -2(a2),d1
[0004da9e] 2250                      movea.l    (a0),a1
[0004daa0] 3341 00dc                 move.w     d1,220(a1)
[0004daa4] 3741 0006                 move.w     d1,6(a3)
[0004daa8] 70ff                      moveq.l    #-1,d0
[0004daaa] 227c ffff ffff            movea.l    #$FFFFFFFF,a1
[0004dab0] 206a fff8                 movea.l    -8(a2),a0
[0004dab4] 4eb9 0007 2890            jsr        $00072890
[0004daba] 206a 0006                 movea.l    6(a2),a0
[0004dabe] 216a 000a 0010            move.l     10(a2),16(a0)
[0004dac4] 204b                      movea.l    a3,a0
[0004dac6] 7201                      moveq.l    #1,d1
[0004dac8] 2279 0010 1f12            movea.l    ACSblk,a1
[0004dace] 3029 0010                 move.w     16(a1),d0
[0004dad2] 4eb9 0006 3f60            jsr        $00063F60
[0004dad8] 4eb9 0004 9994            jsr        $00049994
[0004dade] 265f                      movea.l    (a7)+,a3
[0004dae0] 245f                      movea.l    (a7)+,a2
[0004dae2] 4e75                      rts
Abp_mfdb2img:
[0004dae4] 48e7 003e                 movem.l    a2-a6,-(a7)
[0004dae8] 2448                      movea.l    a0,a2
[0004daea] 2a49                      movea.l    a1,a5
[0004daec] 286f 0018                 movea.l    24(a7),a4
[0004daf0] 322a 0006                 move.w     6(a2),d1
[0004daf4] 302a 0004                 move.w     4(a2),d0
[0004daf8] 6100 fe2e                 bsr        $0004D928
[0004dafc] 2648                      movea.l    a0,a3
[0004dafe] 200b                      move.l     a3,d0
[0004db00] 6700 0084                 beq        $0004DB86
[0004db04] 377c 0001 000a            move.w     #$0001,10(a3)
[0004db0a] 322a 000a                 move.w     10(a2),d1
[0004db0e] 6720                      beq.s      $0004DB30
[0004db10] 302b 0008                 move.w     8(a3),d0
[0004db14] d040                      add.w      d0,d0
[0004db16] c1eb 0006                 muls.w     6(a3),d0
[0004db1a] c1eb 000c                 muls.w     12(a3),d0
[0004db1e] 48c0                      ext.l      d0
[0004db20] d0bc 0000 0014            add.l      #$00000014,d0
[0004db26] 224a                      movea.l    a2,a1
[0004db28] 4eb9 0007 6f44            jsr        $00076F44
[0004db2e] 6014                      bra.s      $0004DB44
[0004db30] 224b                      movea.l    a3,a1
[0004db32] 204a                      movea.l    a2,a0
[0004db34] 2c79 0010 1f12            movea.l    ACSblk,a6
[0004db3a] 302e 0010                 move.w     16(a6),d0
[0004db3e] 4eb9 0006 66a8            jsr        $000666A8
[0004db44] 93c9                      suba.l     a1,a1
[0004db46] 204b                      movea.l    a3,a0
[0004db48] 4eb9 0004 dc24            jsr        $0004DC24
[0004db4e] 2880                      move.l     d0,(a4)
[0004db50] 204b                      movea.l    a3,a0
[0004db52] 6100 fe42                 bsr        $0004D996
[0004db56] 200d                      move.l     a5,d0
[0004db58] 6700 00c2                 beq        $0004DC1C
[0004db5c] 7010                      moveq.l    #16,d0
[0004db5e] d094                      add.l      (a4),d0
[0004db60] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004db66] 2a88                      move.l     a0,(a5)
[0004db68] 2008                      move.l     a0,d0
[0004db6a] 671a                      beq.s      $0004DB86
[0004db6c] 322a 0006                 move.w     6(a2),d1
[0004db70] 302a 0004                 move.w     4(a2),d0
[0004db74] 6100 fdb2                 bsr        $0004D928
[0004db78] 2648                      movea.l    a0,a3
[0004db7a] 200b                      move.l     a3,d0
[0004db7c] 660e                      bne.s      $0004DB8C
[0004db7e] 2055                      movea.l    (a5),a0
[0004db80] 4eb9 0004 7d6c            jsr        $00047D6C
[0004db86] 70ff                      moveq.l    #-1,d0
[0004db88] 6000 0094                 bra        $0004DC1E
[0004db8c] 377c 0001 000a            move.w     #$0001,10(a3)
[0004db92] 302a 000a                 move.w     10(a2),d0
[0004db96] 6722                      beq.s      $0004DBBA
[0004db98] 302b 0008                 move.w     8(a3),d0
[0004db9c] d040                      add.w      d0,d0
[0004db9e] c1eb 0006                 muls.w     6(a3),d0
[0004dba2] c1eb 000c                 muls.w     12(a3),d0
[0004dba6] 48c0                      ext.l      d0
[0004dba8] d0bc 0000 0014            add.l      #$00000014,d0
[0004dbae] 224a                      movea.l    a2,a1
[0004dbb0] 204b                      movea.l    a3,a0
[0004dbb2] 4eb9 0007 6f44            jsr        $00076F44
[0004dbb8] 6014                      bra.s      $0004DBCE
[0004dbba] 224b                      movea.l    a3,a1
[0004dbbc] 204a                      movea.l    a2,a0
[0004dbbe] 2879 0010 1f12            movea.l    ACSblk,a4
[0004dbc4] 302c 0010                 move.w     16(a4),d0
[0004dbc8] 4eb9 0006 66a8            jsr        $000666A8
[0004dbce] 2255                      movea.l    (a5),a1
[0004dbd0] 204b                      movea.l    a3,a0
[0004dbd2] 4eb9 0004 dc24            jsr        $0004DC24
[0004dbd8] 2055                      movea.l    (a5),a0
[0004dbda] 30bc 0001                 move.w     #$0001,(a0)
[0004dbde] 2055                      movea.l    (a5),a0
[0004dbe0] 317c 0008 0002            move.w     #$0008,2(a0)
[0004dbe6] 2055                      movea.l    (a5),a0
[0004dbe8] 316b 000c 0004            move.w     12(a3),4(a0)
[0004dbee] 2055                      movea.l    (a5),a0
[0004dbf0] 317c 0002 0006            move.w     #$0002,6(a0)
[0004dbf6] 303c 01f4                 move.w     #$01F4,d0
[0004dbfa] 2055                      movea.l    (a5),a0
[0004dbfc] 3140 000a                 move.w     d0,10(a0)
[0004dc00] 2055                      movea.l    (a5),a0
[0004dc02] 3140 0008                 move.w     d0,8(a0)
[0004dc06] 2055                      movea.l    (a5),a0
[0004dc08] 316b 0004 000c            move.w     4(a3),12(a0)
[0004dc0e] 2055                      movea.l    (a5),a0
[0004dc10] 316b 0006 000e            move.w     6(a3),14(a0)
[0004dc16] 204b                      movea.l    a3,a0
[0004dc18] 6100 fd7c                 bsr        $0004D996
[0004dc1c] 4240                      clr.w      d0
[0004dc1e] 4cdf 7c00                 movem.l    (a7)+,a2-a6
[0004dc22] 4e75                      rts
compress_image:
[0004dc24] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0004dc28] 4fef ff74                 lea.l      -140(a7),a7
[0004dc2c] 2648                      movea.l    a0,a3
[0004dc2e] 2009                      move.l     a1,d0
[0004dc30] 6604                      bne.s      $0004DC36
[0004dc32] 95ca                      suba.l     a2,a2
[0004dc34] 6004                      bra.s      $0004DC3A
[0004dc36] 45e9 0010                 lea.l      16(a1),a2
[0004dc3a] 7007                      moveq.l    #7,d0
[0004dc3c] d06b 0004                 add.w      4(a3),d0
[0004dc40] e640                      asr.w      #3,d0
[0004dc42] 3f40 0086                 move.w     d0,134(a7)
[0004dc46] 3f6b 0008 0088            move.w     8(a3),136(a7)
[0004dc4c] 302f 0088                 move.w     136(a7),d0
[0004dc50] d040                      add.w      d0,d0
[0004dc52] 48c0                      ext.l      d0
[0004dc54] 322b 0006                 move.w     6(a3),d1
[0004dc58] 48c1                      ext.l      d1
[0004dc5a] 4eb9 0007 76f0            jsr        $000776F0
[0004dc60] 2e80                      move.l     d0,(a7)
[0004dc62] 2853                      movea.l    (a3),a4
[0004dc64] 4205                      clr.b      d5
[0004dc66] 4bef 0004                 lea.l      4(a7),a5
[0004dc6a] 601e                      bra.s      $0004DC8A
[0004dc6c] 4240                      clr.w      d0
[0004dc6e] 1005                      move.b     d5,d0
[0004dc70] 48c0                      ext.l      d0
[0004dc72] 2217                      move.l     (a7),d1
[0004dc74] 4eb9 0007 76f0            jsr        $000776F0
[0004dc7a] 41f4 0800                 lea.l      0(a4,d0.l),a0
[0004dc7e] 4241                      clr.w      d1
[0004dc80] 1205                      move.b     d5,d1
[0004dc82] e549                      lsl.w      #2,d1
[0004dc84] 2b88 1000                 move.l     a0,0(a5,d1.w)
[0004dc88] 5205                      addq.b     #1,d5
[0004dc8a] 4240                      clr.w      d0
[0004dc8c] 1005                      move.b     d5,d0
[0004dc8e] b06b 000c                 cmp.w      12(a3),d0
[0004dc92] 6dd8                      blt.s      $0004DC6C
[0004dc94] 7a00                      moveq.l    #0,d5
[0004dc96] 3f6b 0006 008a            move.w     6(a3),138(a7)
[0004dc9c] 6000 01a4                 bra        $0004DE42
[0004dca0] 322f 0086                 move.w     134(a7),d1
[0004dca4] 302b 000c                 move.w     12(a3),d0
[0004dca8] 204d                      movea.l    a5,a0
[0004dcaa] 4eb9 0004 de56            jsr        $0004DE56
[0004dcb0] 1f40 0084                 move.b     d0,132(a7)
[0004dcb4] 5300                      subq.b     #1,d0
[0004dcb6] 6324                      bls.s      $0004DCDC
[0004dcb8] 4241                      clr.w      d1
[0004dcba] 122f 0084                 move.b     132(a7),d1
[0004dcbe] b26f 008a                 cmp.w      138(a7),d1
[0004dcc2] 6f06                      ble.s      $0004DCCA
[0004dcc4] 1f6f 008b 0084            move.b     139(a7),132(a7)
[0004dcca] 5885                      addq.l     #4,d5
[0004dccc] 200a                      move.l     a2,d0
[0004dcce] 670c                      beq.s      $0004DCDC
[0004dcd0] 421a                      clr.b      (a2)+
[0004dcd2] 421a                      clr.b      (a2)+
[0004dcd4] 14fc ffff                 move.b     #$FF,(a2)+
[0004dcd8] 14ef 0084                 move.b     132(a7),(a2)+
[0004dcdc] 4244                      clr.w      d4
[0004dcde] 6000 0150                 bra        $0004DE30
[0004dce2] 302f 0086                 move.w     134(a7),d0
[0004dce6] 3204                      move.w     d4,d1
[0004dce8] e549                      lsl.w      #2,d1
[0004dcea] 2875 1000                 movea.l    0(a5,d1.w),a4
[0004dcee] 6000 011c                 bra        $0004DE0C
[0004dcf2] 4203                      clr.b      d3
[0004dcf4] 1214                      move.b     (a4),d1
[0004dcf6] 6622                      bne.s      $0004DD1A
[0004dcf8] 5340                      subq.w     #1,d0
[0004dcfa] 5203                      addq.b     #1,d3
[0004dcfc] 524c                      addq.w     #1,a4
[0004dcfe] 1214                      move.b     (a4),d1
[0004dd00] 660a                      bne.s      $0004DD0C
[0004dd02] b63c 007f                 cmp.b      #$7F,d3
[0004dd06] 6404                      bcc.s      $0004DD0C
[0004dd08] 4a40                      tst.w      d0
[0004dd0a] 6eec                      bgt.s      $0004DCF8
[0004dd0c] 5285                      addq.l     #1,d5
[0004dd0e] 220a                      move.l     a2,d1
[0004dd10] 6700 00fa                 beq        $0004DE0C
[0004dd14] 14c3                      move.b     d3,(a2)+
[0004dd16] 6000 00f4                 bra        $0004DE0C
[0004dd1a] 0c14 00ff                 cmpi.b     #$FF,(a4)
[0004dd1e] 6628                      bne.s      $0004DD48
[0004dd20] 5340                      subq.w     #1,d0
[0004dd22] 5203                      addq.b     #1,d3
[0004dd24] 524c                      addq.w     #1,a4
[0004dd26] 0c14 00ff                 cmpi.b     #$FF,(a4)
[0004dd2a] 660a                      bne.s      $0004DD36
[0004dd2c] b63c 007f                 cmp.b      #$7F,d3
[0004dd30] 6404                      bcc.s      $0004DD36
[0004dd32] 4a40                      tst.w      d0
[0004dd34] 6eea                      bgt.s      $0004DD20
[0004dd36] 5285                      addq.l     #1,d5
[0004dd38] 220a                      move.l     a2,d1
[0004dd3a] 6700 00d0                 beq        $0004DE0C
[0004dd3e] 7480                      moveq.l    #-128,d2
[0004dd40] 8403                      or.b       d3,d2
[0004dd42] 14c2                      move.b     d2,(a2)+
[0004dd44] 6000 00c6                 bra        $0004DE0C
[0004dd48] 1c14                      move.b     (a4),d6
[0004dd4a] 1e2c 0001                 move.b     1(a4),d7
[0004dd4e] b07c 0003                 cmp.w      #$0003,d0
[0004dd52] 6f42                      ble.s      $0004DD96
[0004dd54] bc2c 0002                 cmp.b      2(a4),d6
[0004dd58] 663c                      bne.s      $0004DD96
[0004dd5a] be2c 0003                 cmp.b      3(a4),d7
[0004dd5e] 6636                      bne.s      $0004DD96
[0004dd60] 7601                      moveq.l    #1,d3
[0004dd62] 544c                      addq.w     #2,a4
[0004dd64] 5540                      subq.w     #2,d0
[0004dd66] 5540                      subq.w     #2,d0
[0004dd68] 5203                      addq.b     #1,d3
[0004dd6a] 544c                      addq.w     #2,a4
[0004dd6c] bc14                      cmp.b      (a4),d6
[0004dd6e] 6612                      bne.s      $0004DD82
[0004dd70] be2c 0001                 cmp.b      1(a4),d7
[0004dd74] 660c                      bne.s      $0004DD82
[0004dd76] b63c 00fe                 cmp.b      #$FE,d3
[0004dd7a] 6406                      bcc.s      $0004DD82
[0004dd7c] b07c 0001                 cmp.w      #$0001,d0
[0004dd80] 6ee4                      bgt.s      $0004DD66
[0004dd82] 5885                      addq.l     #4,d5
[0004dd84] 220a                      move.l     a2,d1
[0004dd86] 6700 0084                 beq        $0004DE0C
[0004dd8a] 421a                      clr.b      (a2)+
[0004dd8c] 14c3                      move.b     d3,(a2)+
[0004dd8e] 14c6                      move.b     d6,(a2)+
[0004dd90] 14c7                      move.b     d7,(a2)+
[0004dd92] 6000 0078                 bra.w      $0004DE0C
[0004dd96] 224c                      movea.l    a4,a1
[0004dd98] 5340                      subq.w     #1,d0
[0004dd9a] 5203                      addq.b     #1,d3
[0004dd9c] 524c                      addq.w     #1,a4
[0004dd9e] 4a40                      tst.w      d0
[0004dda0] 674a                      beq.s      $0004DDEC
[0004dda2] b63c 00ff                 cmp.b      #$FF,d3
[0004dda6] 6744                      beq.s      $0004DDEC
[0004dda8] b07c 0002                 cmp.w      #$0002,d0
[0004ddac] 6fea                      ble.s      $0004DD98
[0004ddae] 1214                      move.b     (a4),d1
[0004ddb0] 660c                      bne.s      $0004DDBE
[0004ddb2] 142c 0001                 move.b     1(a4),d2
[0004ddb6] 6606                      bne.s      $0004DDBE
[0004ddb8] 122c 0002                 move.b     2(a4),d1
[0004ddbc] 672e                      beq.s      $0004DDEC
[0004ddbe] 0c14 00ff                 cmpi.b     #$FF,(a4)
[0004ddc2] 6610                      bne.s      $0004DDD4
[0004ddc4] 0c2c 00ff 0001            cmpi.b     #$FF,1(a4)
[0004ddca] 6608                      bne.s      $0004DDD4
[0004ddcc] 0c2c 00ff 0002            cmpi.b     #$FF,2(a4)
[0004ddd2] 6718                      beq.s      $0004DDEC
[0004ddd4] b07c 0004                 cmp.w      #$0004,d0
[0004ddd8] 6fbe                      ble.s      $0004DD98
[0004ddda] 1c14                      move.b     (a4),d6
[0004dddc] 1e2c 0001                 move.b     1(a4),d7
[0004dde0] bc2c 0002                 cmp.b      2(a4),d6
[0004dde4] 66b2                      bne.s      $0004DD98
[0004dde6] be2c 0003                 cmp.b      3(a4),d7
[0004ddea] 66ac                      bne.s      $0004DD98
[0004ddec] 4241                      clr.w      d1
[0004ddee] 1203                      move.b     d3,d1
[0004ddf0] 5441                      addq.w     #2,d1
[0004ddf2] 48c1                      ext.l      d1
[0004ddf4] da81                      add.l      d1,d5
[0004ddf6] 240a                      move.l     a2,d2
[0004ddf8] 6712                      beq.s      $0004DE0C
[0004ddfa] 14fc ff80                 move.b     #$80,(a2)+
[0004ddfe] 14c3                      move.b     d3,(a2)+
[0004de00] 6002                      bra.s      $0004DE04
[0004de02] 14d9                      move.b     (a1)+,(a2)+
[0004de04] 1203                      move.b     d3,d1
[0004de06] 5303                      subq.b     #1,d3
[0004de08] 4a01                      tst.b      d1
[0004de0a] 66f6                      bne.s      $0004DE02
[0004de0c] 4a40                      tst.w      d0
[0004de0e] 6e00 fee2                 bgt        $0004DCF2
[0004de12] 7000                      moveq.l    #0,d0
[0004de14] 102f 0084                 move.b     132(a7),d0
[0004de18] 322f 0088                 move.w     136(a7),d1
[0004de1c] 48c1                      ext.l      d1
[0004de1e] 4eb9 0007 76f0            jsr        $000776F0
[0004de24] d080                      add.l      d0,d0
[0004de26] 3204                      move.w     d4,d1
[0004de28] e549                      lsl.w      #2,d1
[0004de2a] d1b5 1000                 add.l      d0,0(a5,d1.w)
[0004de2e] 5244                      addq.w     #1,d4
[0004de30] b86b 000c                 cmp.w      12(a3),d4
[0004de34] 6d00 feac                 blt        $0004DCE2
[0004de38] 4240                      clr.w      d0
[0004de3a] 102f 0084                 move.b     132(a7),d0
[0004de3e] 916f 008a                 sub.w      d0,138(a7)
[0004de42] 302f 008a                 move.w     138(a7),d0
[0004de46] 6e00 fe58                 bgt        $0004DCA0
[0004de4a] 2005                      move.l     d5,d0
[0004de4c] 4fef 008c                 lea.l      140(a7),a7
[0004de50] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0004de54] 4e75                      rts
vreplic:
[0004de56] 48e7 1e30                 movem.l    d3-d6/a2-a3,-(a7)
[0004de5a] 4fef ff80                 lea.l      -128(a7),a7
[0004de5e] 3401                      move.w     d1,d2
[0004de60] 7601                      moveq.l    #1,d3
[0004de62] c641                      and.w      d1,d3
[0004de64] 6702                      beq.s      $0004DE68
[0004de66] 5242                      addq.w     #1,d2
[0004de68] 7601                      moveq.l    #1,d3
[0004de6a] 78ff                      moveq.l    #-1,d4
[0004de6c] d840                      add.w      d0,d4
[0004de6e] 6016                      bra.s      $0004DE86
[0004de70] 3a04                      move.w     d4,d5
[0004de72] 48c5                      ext.l      d5
[0004de74] e58d                      lsl.l      #2,d5
[0004de76] 2270 5800                 movea.l    0(a0,d5.l),a1
[0004de7a] d2c2                      adda.w     d2,a1
[0004de7c] 3a04                      move.w     d4,d5
[0004de7e] e54d                      lsl.w      #2,d5
[0004de80] 2f89 5000                 move.l     a1,0(a7,d5.w)
[0004de84] 5344                      subq.w     #1,d4
[0004de86] 4a44                      tst.w      d4
[0004de88] 6ae6                      bpl.s      $0004DE70
[0004de8a] 603e                      bra.s      $0004DECA
[0004de8c] 78ff                      moveq.l    #-1,d4
[0004de8e] d840                      add.w      d0,d4
[0004de90] 6032                      bra.s      $0004DEC4
[0004de92] 3a04                      move.w     d4,d5
[0004de94] 48c5                      ext.l      d5
[0004de96] e58d                      lsl.l      #2,d5
[0004de98] 2470 5800                 movea.l    0(a0,d5.l),a2
[0004de9c] 3a04                      move.w     d4,d5
[0004de9e] e54d                      lsl.w      #2,d5
[0004dea0] 2677 5000                 movea.l    0(a7,d5.w),a3
[0004dea4] 7aff                      moveq.l    #-1,d5
[0004dea6] da41                      add.w      d1,d5
[0004dea8] 6008                      bra.s      $0004DEB2
[0004deaa] 1c1a                      move.b     (a2)+,d6
[0004deac] bc1b                      cmp.b      (a3)+,d6
[0004deae] 6620                      bne.s      $0004DED0
[0004deb0] 5345                      subq.w     #1,d5
[0004deb2] 4a45                      tst.w      d5
[0004deb4] 6af4                      bpl.s      $0004DEAA
[0004deb6] 3a02                      move.w     d2,d5
[0004deb8] 48c5                      ext.l      d5
[0004deba] 3c04                      move.w     d4,d6
[0004debc] e54e                      lsl.w      #2,d6
[0004debe] dbb7 6000                 add.l      d5,0(a7,d6.w)
[0004dec2] 5344                      subq.w     #1,d4
[0004dec4] 4a44                      tst.w      d4
[0004dec6] 6aca                      bpl.s      $0004DE92
[0004dec8] 5203                      addq.b     #1,d3
[0004deca] b63c 00ff                 cmp.b      #$FF,d3
[0004dece] 65bc                      bcs.s      $0004DE8C
[0004ded0] 1003                      move.b     d3,d0
[0004ded2] 4fef 0080                 lea.l      128(a7),a7
[0004ded6] 4cdf 0c78                 movem.l    (a7)+,d3-d6/a2-a3
[0004deda] 4e75                      rts
Abp_img2mfdb:
[0004dedc] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[0004dee0] 4fef ffdc                 lea.l      -36(a7),a7
[0004dee4] 2448                      movea.l    a0,a2
[0004dee6] 2649                      movea.l    a1,a3
[0004dee8] 3a00                      move.w     d0,d5
[0004deea] 49ef 0010                 lea.l      16(a7),a4
[0004deee] 322a 000e                 move.w     14(a2),d1
[0004def2] 302a 000c                 move.w     12(a2),d0
[0004def6] 6100 fa30                 bsr        $0004D928
[0004defa] 2688                      move.l     a0,(a3)
[0004defc] 6700 0086                 beq        $0004DF84
[0004df00] 396a 000c 0004            move.w     12(a2),4(a4)
[0004df06] 396a 000e 0006            move.w     14(a2),6(a4)
[0004df0c] 700f                      moveq.l    #15,d0
[0004df0e] d06a 000c                 add.w      12(a2),d0
[0004df12] c07c fff0                 and.w      #$FFF0,d0
[0004df16] e848                      lsr.w      #4,d0
[0004df18] 3940 0008                 move.w     d0,8(a4)
[0004df1c] 397c 0001 000a            move.w     #$0001,10(a4)
[0004df22] 2279 0010 1f12            movea.l    ACSblk,a1
[0004df28] 3969 001c 000c            move.w     28(a1),12(a4)
[0004df2e] 3229 001c                 move.w     28(a1),d1
[0004df32] b26a 0004                 cmp.w      4(a2),d1
[0004df36] 6f04                      ble.s      $0004DF3C
[0004df38] 3601                      move.w     d1,d3
[0004df3a] 6004                      bra.s      $0004DF40
[0004df3c] 362a 0004                 move.w     4(a2),d3
[0004df40] 4240                      clr.w      d0
[0004df42] 3940 0012                 move.w     d0,18(a4)
[0004df46] 3940 0010                 move.w     d0,16(a4)
[0004df4a] 3940 000e                 move.w     d0,14(a4)
[0004df4e] 302c 0008                 move.w     8(a4),d0
[0004df52] 48c0                      ext.l      d0
[0004df54] 322c 0006                 move.w     6(a4),d1
[0004df58] 48c1                      ext.l      d1
[0004df5a] 4eb9 0007 76f0            jsr        $000776F0
[0004df60] 2800                      move.l     d0,d4
[0004df62] d884                      add.l      d4,d4
[0004df64] 2004                      move.l     d4,d0
[0004df66] 3203                      move.w     d3,d1
[0004df68] 48c1                      ext.l      d1
[0004df6a] 4eb9 0007 76f0            jsr        $000776F0
[0004df70] 5280                      addq.l     #1,d0
[0004df72] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004df78] 2c48                      movea.l    a0,a6
[0004df7a] 200e                      move.l     a6,d0
[0004df7c] 660c                      bne.s      $0004DF8A
[0004df7e] 2053                      movea.l    (a3),a0
[0004df80] 6100 fa14                 bsr        $0004D996
[0004df84] 70ff                      moveq.l    #-1,d0
[0004df86] 6000 012e                 bra        $0004E0B6
[0004df8a] 288e                      move.l     a6,(a4)
[0004df8c] 302a 0002                 move.w     2(a2),d0
[0004df90] 48c0                      ext.l      d0
[0004df92] d080                      add.l      d0,d0
[0004df94] 4bf2 0800                 lea.l      0(a2,d0.l),a5
[0004df98] 2004                      move.l     d4,d0
[0004df9a] 3203                      move.w     d3,d1
[0004df9c] 48c1                      ext.l      d1
[0004df9e] 4eb9 0007 76f0            jsr        $000776F0
[0004dfa4] 4876 0800                 pea.l      0(a6,d0.l)
[0004dfa8] 2f0e                      move.l     a6,-(a7)
[0004dfaa] 224d                      movea.l    a5,a1
[0004dfac] 204a                      movea.l    a2,a0
[0004dfae] 4eb9 0004 e0c0            jsr        $0004E0C0
[0004dfb4] 504f                      addq.w     #8,a7
[0004dfb6] 4a45                      tst.w      d5
[0004dfb8] 6700 00d2                 beq        $0004E08C
[0004dfbc] 2079 0010 1f12            movea.l    ACSblk,a0
[0004dfc2] 3a28 001c                 move.w     28(a0),d5
[0004dfc6] 9a6a 0004                 sub.w      4(a2),d5
[0004dfca] 4a45                      tst.w      d5
[0004dfcc] 6f00 00a2                 ble        $0004E070
[0004dfd0] 0c6a 0001 0004            cmpi.w     #$0001,4(a2)
[0004dfd6] 666c                      bne.s      $0004E044
[0004dfd8] 397c 0001 000c            move.w     #$0001,12(a4)
[0004dfde] 224c                      movea.l    a4,a1
[0004dfe0] 204c                      movea.l    a4,a0
[0004dfe2] 2a79 0010 1f12            movea.l    ACSblk,a5
[0004dfe8] 302d 0010                 move.w     16(a5),d0
[0004dfec] 4eb9 0006 66a8            jsr        $000666A8
[0004dff2] 4240                      clr.w      d0
[0004dff4] 3f40 000a                 move.w     d0,10(a7)
[0004dff8] 3f40 0008                 move.w     d0,8(a7)
[0004dffc] 3f40 0002                 move.w     d0,2(a7)
[0004e000] 3e80                      move.w     d0,(a7)
[0004e002] 72ff                      moveq.l    #-1,d1
[0004e004] 2053                      movea.l    (a3),a0
[0004e006] d268 0004                 add.w      4(a0),d1
[0004e00a] 3f41 000c                 move.w     d1,12(a7)
[0004e00e] 3f41 0004                 move.w     d1,4(a7)
[0004e012] 70ff                      moveq.l    #-1,d0
[0004e014] d068 0006                 add.w      6(a0),d0
[0004e018] 3f40 000e                 move.w     d0,14(a7)
[0004e01c] 3f40 0006                 move.w     d0,6(a7)
[0004e020] 4879 000d 3d96            pea.l      $000D3D96
[0004e026] 2f08                      move.l     a0,-(a7)
[0004e028] 224c                      movea.l    a4,a1
[0004e02a] 41ef 0008                 lea.l      8(a7),a0
[0004e02e] 7201                      moveq.l    #1,d1
[0004e030] 2a79 0010 1f12            movea.l    ACSblk,a5
[0004e036] 302d 0010                 move.w     16(a5),d0
[0004e03a] 4eb9 0006 6632            jsr        $00066632
[0004e040] 504f                      addq.w     #8,a7
[0004e042] 6040                      bra.s      $0004E084
[0004e044] 3005                      move.w     d5,d0
[0004e046] 48c0                      ext.l      d0
[0004e048] 2204                      move.l     d4,d1
[0004e04a] 4eb9 0007 76f0            jsr        $000776F0
[0004e050] 2200                      move.l     d0,d1
[0004e052] 2f01                      move.l     d1,-(a7)
[0004e054] 302a 0004                 move.w     4(a2),d0
[0004e058] 48c0                      ext.l      d0
[0004e05a] 2204                      move.l     d4,d1
[0004e05c] 4eb9 0007 76f0            jsr        $000776F0
[0004e062] 41f6 0800                 lea.l      0(a6,d0.l),a0
[0004e066] 4240                      clr.w      d0
[0004e068] 221f                      move.l     (a7)+,d1
[0004e06a] 4eb9 0007 712e            jsr        $0007712E
[0004e070] 2253                      movea.l    (a3),a1
[0004e072] 204c                      movea.l    a4,a0
[0004e074] 2479 0010 1f12            movea.l    ACSblk,a2
[0004e07a] 302a 0010                 move.w     16(a2),d0
[0004e07e] 4eb9 0006 66a8            jsr        $000666A8
[0004e084] 2053                      movea.l    (a3),a0
[0004e086] 4268 000a                 clr.w      10(a0)
[0004e08a] 6020                      bra.s      $0004E0AC
[0004e08c] 2004                      move.l     d4,d0
[0004e08e] 3203                      move.w     d3,d1
[0004e090] 48c1                      ext.l      d1
[0004e092] 4eb9 0007 76f0            jsr        $000776F0
[0004e098] 224e                      movea.l    a6,a1
[0004e09a] 2053                      movea.l    (a3),a0
[0004e09c] 2050                      movea.l    (a0),a0
[0004e09e] 4eb9 0007 6f44            jsr        $00076F44
[0004e0a4] 2053                      movea.l    (a3),a0
[0004e0a6] 317c 0001 000a            move.w     #$0001,10(a0)
[0004e0ac] 204e                      movea.l    a6,a0
[0004e0ae] 4eb9 0004 7d6c            jsr        $00047D6C
[0004e0b4] 4240                      clr.w      d0
[0004e0b6] 4fef 0024                 lea.l      36(a7),a7
[0004e0ba] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[0004e0be] 4e75                      rts
uncompress_image:
[0004e0c0] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0004e0c4] 4fef ff76                 lea.l      -138(a7),a7
[0004e0c8] 2448                      movea.l    a0,a2
[0004e0ca] 2649                      movea.l    a1,a3
[0004e0cc] 286f 00b2                 movea.l    178(a7),a4
[0004e0d0] 7607                      moveq.l    #7,d3
[0004e0d2] d66a 000c                 add.w      12(a2),d3
[0004e0d6] e643                      asr.w      #3,d3
[0004e0d8] 7001                      moveq.l    #1,d0
[0004e0da] d043                      add.w      d3,d0
[0004e0dc] c07c fffe                 and.w      #$FFFE,d0
[0004e0e0] 3f40 0084                 move.w     d0,132(a7)
[0004e0e4] 48c0                      ext.l      d0
[0004e0e6] 322a 000e                 move.w     14(a2),d1
[0004e0ea] 48c1                      ext.l      d1
[0004e0ec] 4eb9 0007 76f0            jsr        $000776F0
[0004e0f2] 2e80                      move.l     d0,(a7)
[0004e0f4] 4204                      clr.b      d4
[0004e0f6] 601e                      bra.s      $0004E116
[0004e0f8] 4240                      clr.w      d0
[0004e0fa] 1004                      move.b     d4,d0
[0004e0fc] 48c0                      ext.l      d0
[0004e0fe] 2217                      move.l     (a7),d1
[0004e100] 4eb9 0007 76f0            jsr        $000776F0
[0004e106] 41f4 0800                 lea.l      0(a4,d0.l),a0
[0004e10a] 4241                      clr.w      d1
[0004e10c] 1204                      move.b     d4,d1
[0004e10e] e549                      lsl.w      #2,d1
[0004e110] 2f88 1004                 move.l     a0,4(a7,d1.w)
[0004e114] 5204                      addq.b     #1,d4
[0004e116] 4240                      clr.w      d0
[0004e118] 1004                      move.b     d4,d0
[0004e11a] b06a 0004                 cmp.w      4(a2),d0
[0004e11e] 6dd8                      blt.s      $0004E0F8
[0004e120] 3f6a 000e 0086            move.w     14(a2),134(a7)
[0004e126] 6000 010c                 bra        $0004E234
[0004e12a] 4206                      clr.b      d6
[0004e12c] 426f 0088                 clr.w      136(a7)
[0004e130] 6000 00ea                 bra        $0004E21C
[0004e134] 3a03                      move.w     d3,d5
[0004e136] 302f 0088                 move.w     136(a7),d0
[0004e13a] e548                      lsl.w      #2,d0
[0004e13c] 2877 0004                 movea.l    4(a7,d0.w),a4
[0004e140] 2a4c                      movea.l    a4,a5
[0004e142] b9ef 00b6                 cmpa.l     182(a7),a4
[0004e146] 6500 0096                 bcs        $0004E1DE
[0004e14a] 91c8                      suba.l     a0,a0
[0004e14c] 2279 0010 1f12            movea.l    ACSblk,a1
[0004e152] 2269 03d6                 movea.l    982(a1),a1
[0004e156] 7015                      moveq.l    #21,d0
[0004e158] 4e91                      jsr        (a1)
[0004e15a] 6000 00e0                 bra        $0004E23C
[0004e15e] 4240                      clr.w      d0
[0004e160] 101b                      move.b     (a3)+,d0
[0004e162] 4a40                      tst.w      d0
[0004e164] 6708                      beq.s      $0004E16E
[0004e166] 907c 0080                 sub.w      #$0080,d0
[0004e16a] 673e                      beq.s      $0004E1AA
[0004e16c] 604c                      bra.s      $0004E1BA
[0004e16e] 181b                      move.b     (a3)+,d4
[0004e170] 4a04                      tst.b      d4
[0004e172] 662c                      bne.s      $0004E1A0
[0004e174] 0c13 00ff                 cmpi.b     #$FF,(a3)
[0004e178] 6602                      bne.s      $0004E17C
[0004e17a] 524b                      addq.w     #1,a3
[0004e17c] 1c1b                      move.b     (a3)+,d6
[0004e17e] dc3c 00ff                 add.b      #$FF,d6
[0004e182] 605a                      bra.s      $0004E1DE
[0004e184] 4200                      clr.b      d0
[0004e186] 600c                      bra.s      $0004E194
[0004e188] 7200                      moveq.l    #0,d1
[0004e18a] 1200                      move.b     d0,d1
[0004e18c] 18f3 1800                 move.b     0(a3,d1.l),(a4)+
[0004e190] 5345                      subq.w     #1,d5
[0004e192] 5200                      addq.b     #1,d0
[0004e194] 4241                      clr.w      d1
[0004e196] 1200                      move.b     d0,d1
[0004e198] b26a 0006                 cmp.w      6(a2),d1
[0004e19c] 6dea                      blt.s      $0004E188
[0004e19e] 5304                      subq.b     #1,d4
[0004e1a0] 4a04                      tst.b      d4
[0004e1a2] 66e0                      bne.s      $0004E184
[0004e1a4] d6ea 0006                 adda.w     6(a2),a3
[0004e1a8] 6034                      bra.s      $0004E1DE
[0004e1aa] 181b                      move.b     (a3)+,d4
[0004e1ac] 6006                      bra.s      $0004E1B4
[0004e1ae] 18db                      move.b     (a3)+,(a4)+
[0004e1b0] 5345                      subq.w     #1,d5
[0004e1b2] 5304                      subq.b     #1,d4
[0004e1b4] 4a04                      tst.b      d4
[0004e1b6] 66f6                      bne.s      $0004E1AE
[0004e1b8] 6024                      bra.s      $0004E1DE
[0004e1ba] 182b ffff                 move.b     -1(a3),d4
[0004e1be] 103c 0080                 move.b     #$80,d0
[0004e1c2] c004                      and.b      d4,d0
[0004e1c4] 670a                      beq.s      $0004E1D0
[0004e1c6] 1e3c 00ff                 move.b     #$FF,d7
[0004e1ca] c83c 007f                 and.b      #$7F,d4
[0004e1ce] 600a                      bra.s      $0004E1DA
[0004e1d0] 4207                      clr.b      d7
[0004e1d2] 6006                      bra.s      $0004E1DA
[0004e1d4] 18c7                      move.b     d7,(a4)+
[0004e1d6] 5345                      subq.w     #1,d5
[0004e1d8] 5304                      subq.b     #1,d4
[0004e1da] 4a04                      tst.b      d4
[0004e1dc] 66f6                      bne.s      $0004E1D4
[0004e1de] 4a45                      tst.w      d5
[0004e1e0] 6e00 ff7c                 bgt        $0004E15E
[0004e1e4] 7001                      moveq.l    #1,d0
[0004e1e6] c043                      and.w      d3,d0
[0004e1e8] 6702                      beq.s      $0004E1EC
[0004e1ea] 421c                      clr.b      (a4)+
[0004e1ec] 4204                      clr.b      d4
[0004e1ee] 601a                      bra.s      $0004E20A
[0004e1f0] 3003                      move.w     d3,d0
[0004e1f2] 48c0                      ext.l      d0
[0004e1f4] 224d                      movea.l    a5,a1
[0004e1f6] 204c                      movea.l    a4,a0
[0004e1f8] 4eb9 0007 6f44            jsr        $00076F44
[0004e1fe] d8c3                      adda.w     d3,a4
[0004e200] 7001                      moveq.l    #1,d0
[0004e202] c043                      and.w      d3,d0
[0004e204] 6702                      beq.s      $0004E208
[0004e206] 421c                      clr.b      (a4)+
[0004e208] 5204                      addq.b     #1,d4
[0004e20a] bc04                      cmp.b      d4,d6
[0004e20c] 62e2                      bhi.s      $0004E1F0
[0004e20e] 302f 0088                 move.w     136(a7),d0
[0004e212] e548                      lsl.w      #2,d0
[0004e214] 2f8c 0004                 move.l     a4,4(a7,d0.w)
[0004e218] 526f 0088                 addq.w     #1,136(a7)
[0004e21c] 302f 0088                 move.w     136(a7),d0
[0004e220] b06a 0004                 cmp.w      4(a2),d0
[0004e224] 6d00 ff0e                 blt        $0004E134
[0004e228] 4241                      clr.w      d1
[0004e22a] 1206                      move.b     d6,d1
[0004e22c] 936f 0086                 sub.w      d1,134(a7)
[0004e230] 536f 0086                 subq.w     #1,134(a7)
[0004e234] 302f 0086                 move.w     134(a7),d0
[0004e238] 6e00 fef0                 bgt        $0004E12A
[0004e23c] 4fef 008a                 lea.l      138(a7),a7
[0004e240] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0004e244] 4e75                      rts
