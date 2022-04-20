boxed_insert:
[0005d01a] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[0005d01e] 4fef fef6                 lea.l      -266(a7),a7
[0005d022] 2f48 0106                 move.l     a0,262(a7)
[0005d026] 2849                      movea.l    a1,a4
[0005d028] 3a00                      move.w     d0,d5
[0005d02a] 76ff                      moveq.l    #-1,d3
[0005d02c] 2068 000c                 movea.l    12(a0),a0
[0005d030] 2668 0010                 movea.l    16(a0),a3
[0005d034] 2eab 0204                 move.l     516(a3),(a7)
[0005d038] 45e8 0004                 lea.l      4(a0),a2
[0005d03c] 2217                      move.l     (a7),d1
[0005d03e] 6718                      beq.s      $0005D058
[0005d040] 2041                      movea.l    d1,a0
[0005d042] 3428 001c                 move.w     28(a0),d2
[0005d046] b46b 020c                 cmp.w      524(a3),d2
[0005d04a] 660c                      bne.s      $0005D058
[0005d04c] 226b 0210                 movea.l    528(a3),a1
[0005d050] 3611                      move.w     (a1),d3
[0005d052] 206b 0214                 movea.l    532(a3),a0
[0005d056] 3810                      move.w     (a0),d4
[0005d058] 4a43                      tst.w      d3
[0005d05a] 6a06                      bpl.s      $0005D062
[0005d05c] 4243                      clr.w      d3
[0005d05e] 382b 020e                 move.w     526(a3),d4
[0005d062] 4a44                      tst.w      d4
[0005d064] 6f0e                      ble.s      $0005D074
[0005d066] 3204                      move.w     d4,d1
[0005d068] 3003                      move.w     d3,d0
[0005d06a] 206f 0106                 movea.l    262(a7),a0
[0005d06e] 4eb9 0005 d9b4            jsr        $0005D9B4
[0005d074] 382a 0002                 move.w     2(a2),d4
[0005d078] e04c                      lsr.w      #8,d4
[0005d07a] c87c 00ff                 and.w      #$00FF,d4
[0005d07e] 45ef 0004                 lea.l      4(a7),a2
[0005d082] 204c                      movea.l    a4,a0
[0005d084] 4eb9 0007 69b0            jsr        $000769B0
[0005d08a] 3480                      move.w     d0,(a2)
[0005d08c] 322b 020e                 move.w     526(a3),d1
[0005d090] d240                      add.w      d0,d1
[0005d092] b841                      cmp.w      d1,d4
[0005d094] 6c08                      bge.s      $0005D09E
[0005d096] 3404                      move.w     d4,d2
[0005d098] 946b 020e                 sub.w      526(a3),d2
[0005d09c] 3482                      move.w     d2,(a2)
[0005d09e] 3012                      move.w     (a2),d0
[0005d0a0] 6f00 010a                 ble        $0005D1AC
[0005d0a4] 4852                      pea.l      (a2)
[0005d0a6] 486f 000a                 pea.l      10(a7)
[0005d0aa] 224c                      movea.l    a4,a1
[0005d0ac] 206f 010e                 movea.l    270(a7),a0
[0005d0b0] 4eb9 0005 d234            jsr        $0005D234
[0005d0b6] 504f                      addq.w     #8,a7
[0005d0b8] 4a40                      tst.w      d0
[0005d0ba] 6700 00f0                 beq        $0005D1AC
[0005d0be] 49f3 3000                 lea.l      0(a3,d3.w),a4
[0005d0c2] 49ec 0100                 lea.l      256(a4),a4
[0005d0c6] 382b 020e                 move.w     526(a3),d4
[0005d0ca] 3003                      move.w     d3,d0
[0005d0cc] d052                      add.w      (a2),d0
[0005d0ce] 9840                      sub.w      d0,d4
[0005d0d0] 5244                      addq.w     #1,d4
[0005d0d2] 4a44                      tst.w      d4
[0005d0d4] 6e1a                      bgt.s      $0005D0F0
[0005d0d6] 43ef 0006                 lea.l      6(a7),a1
[0005d0da] 204c                      movea.l    a4,a0
[0005d0dc] 4eb9 0007 6950            jsr        $00076950
[0005d0e2] 6020                      bra.s      $0005D104
[0005d0e4] 3004                      move.w     d4,d0
[0005d0e6] d052                      add.w      (a2),d0
[0005d0e8] 19b4 4000 0000            move.b     0(a4,d4.w),0(a4,d0.w)
[0005d0ee] 5344                      subq.w     #1,d4
[0005d0f0] 4a44                      tst.w      d4
[0005d0f2] 6af0                      bpl.s      $0005D0E4
[0005d0f4] 3012                      move.w     (a2),d0
[0005d0f6] 48c0                      ext.l      d0
[0005d0f8] 43ef 0006                 lea.l      6(a7),a1
[0005d0fc] 204c                      movea.l    a4,a0
[0005d0fe] 4eb9 0007 6f44            jsr        $00076F44
[0005d104] 2017                      move.l     (a7),d0
[0005d106] 6770                      beq.s      $0005D178
[0005d108] 322b 020c                 move.w     524(a3),d1
[0005d10c] 2040                      movea.l    d0,a0
[0005d10e] b268 001c                 cmp.w      28(a0),d1
[0005d112] 6664                      bne.s      $0005D178
[0005d114] 226b 0210                 movea.l    528(a3),a1
[0005d118] 3411                      move.w     (a1),d2
[0005d11a] 6b5c                      bmi.s      $0005D178
[0005d11c] 4a45                      tst.w      d5
[0005d11e] 6728                      beq.s      $0005D148
[0005d120] 286b 0214                 movea.l    532(a3),a4
[0005d124] 3892                      move.w     (a2),(a4)
[0005d126] 3012                      move.w     (a2),d0
[0005d128] 48c0                      ext.l      d0
[0005d12a] 226b 0210                 movea.l    528(a3),a1
[0005d12e] 3211                      move.w     (a1),d1
[0005d130] 43f3 1000                 lea.l      0(a3,d1.w),a1
[0005d134] 43e9 0100                 lea.l      256(a1),a1
[0005d138] 204b                      movea.l    a3,a0
[0005d13a] 4eb9 0007 6f44            jsr        $00076F44
[0005d140] 3012                      move.w     (a2),d0
[0005d142] 4233 0000                 clr.b      0(a3,d0.w)
[0005d146] 6012                      bra.s      $0005D15A
[0005d148] 43eb 0100                 lea.l      256(a3),a1
[0005d14c] 204b                      movea.l    a3,a0
[0005d14e] 4eb9 0007 6950            jsr        $00076950
[0005d154] 206b 0210                 movea.l    528(a3),a0
[0005d158] 5250                      addq.w     #1,(a0)
[0005d15a] 3012                      move.w     (a2),d0
[0005d15c] d16b 020e                 add.w      d0,526(a3)
[0005d160] 206f 0106                 movea.l    262(a7),a0
[0005d164] 4eb9 0005 d6c8            jsr        $0005D6C8
[0005d16a] 70ff                      moveq.l    #-1,d0
[0005d16c] 206f 0106                 movea.l    262(a7),a0
[0005d170] 4eb9 0005 da32            jsr        $0005DA32
[0005d176] 601c                      bra.s      $0005D194
[0005d178] 43eb 0100                 lea.l      256(a3),a1
[0005d17c] 204b                      movea.l    a3,a0
[0005d17e] 4eb9 0007 6950            jsr        $00076950
[0005d184] 3012                      move.w     (a2),d0
[0005d186] d16b 020e                 add.w      d0,526(a3)
[0005d18a] 206f 0106                 movea.l    262(a7),a0
[0005d18e] 4eb9 0005 d6c8            jsr        $0005D6C8
[0005d194] 006b 0004 0222            ori.w      #$0004,546(a3)
[0005d19a] 2017                      move.l     (a7),d0
[0005d19c] 670e                      beq.s      $0005D1AC
[0005d19e] 93c9                      suba.l     a1,a1
[0005d1a0] 2040                      movea.l    d0,a0
[0005d1a2] 2440                      movea.l    d0,a2
[0005d1a4] 246a 0004                 movea.l    4(a2),a2
[0005d1a8] 701a                      moveq.l    #26,d0
[0005d1aa] 4e92                      jsr        (a2)
[0005d1ac] 4fef 010a                 lea.l      266(a7),a7
[0005d1b0] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0005d1b4] 4e75                      rts
boxed_within:
[0005d1b6] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0005d1ba] 1800                      move.b     d0,d4
[0005d1bc] 2448                      movea.l    a0,a2
[0005d1be] 2649                      movea.l    a1,a3
[0005d1c0] 4243                      clr.w      d3
[0005d1c2] 4eb9 0007 69b0            jsr        $000769B0
[0005d1c8] e240                      asr.w      #1,d0
[0005d1ca] 6010                      bra.s      $0005D1DC
[0005d1cc] b832 3000                 cmp.b      0(a2,d3.w),d4
[0005d1d0] 6506                      bcs.s      $0005D1D8
[0005d1d2] b832 3001                 cmp.b      1(a2,d3.w),d4
[0005d1d6] 631c                      bls.s      $0005D1F4
[0005d1d8] 5340                      subq.w     #1,d0
[0005d1da] 5443                      addq.w     #2,d3
[0005d1dc] 4a40                      tst.w      d0
[0005d1de] 6eec                      bgt.s      $0005D1CC
[0005d1e0] 200b                      move.l     a3,d0
[0005d1e2] 6714                      beq.s      $0005D1F8
[0005d1e4] 4240                      clr.w      d0
[0005d1e6] 1004                      move.b     d4,d0
[0005d1e8] 204b                      movea.l    a3,a0
[0005d1ea] 4eb9 0007 68ce            jsr        $000768CE
[0005d1f0] 2008                      move.l     a0,d0
[0005d1f2] 6704                      beq.s      $0005D1F8
[0005d1f4] 7001                      moveq.l    #1,d0
[0005d1f6] 6002                      bra.s      $0005D1FA
[0005d1f8] 4240                      clr.w      d0
[0005d1fa] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0005d1fe] 4e75                      rts
boxed_findsep:
[0005d200] 3f03                      move.w     d3,-(a7)
[0005d202] 2f0a                      move.l     a2,-(a7)
[0005d204] 1600                      move.b     d0,d3
[0005d206] 2449                      movea.l    a1,a2
[0005d208] 7200                      moveq.l    #0,d1
[0005d20a] 2541 0004                 move.l     d1,4(a2)
[0005d20e] 2281                      move.l     d1,(a1)
[0005d210] 4880                      ext.w      d0
[0005d212] 4eb9 0007 68ce            jsr        $000768CE
[0005d218] 2488                      move.l     a0,(a2)
[0005d21a] 2008                      move.l     a0,d0
[0005d21c] 6710                      beq.s      $0005D22E
[0005d21e] 1003                      move.b     d3,d0
[0005d220] 4880                      ext.w      d0
[0005d222] 5248                      addq.w     #1,a0
[0005d224] 4eb9 0007 68ce            jsr        $000768CE
[0005d22a] 2548 0004                 move.l     a0,4(a2)
[0005d22e] 245f                      movea.l    (a7)+,a2
[0005d230] 361f                      move.w     (a7)+,d3
[0005d232] 4e75                      rts
boxed_checktext:
[0005d234] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0005d238] 4fef fff2                 lea.l      -14(a7),a7
[0005d23c] 2a49                      movea.l    a1,a5
[0005d23e] 76ff                      moveq.l    #-1,d3
[0005d240] 426f 000c                 clr.w      12(a7)
[0005d244] 4205                      clr.b      d5
[0005d246] 226f 0036                 movea.l    54(a7),a1
[0005d24a] 1285                      move.b     d5,(a1)
[0005d24c] 2068 000c                 movea.l    12(a0),a0
[0005d250] 2668 0010                 movea.l    16(a0),a3
[0005d254] 43e8 0004                 lea.l      4(a0),a1
[0005d258] 2e89                      move.l     a1,(a7)
[0005d25a] 206b 0204                 movea.l    516(a3),a0
[0005d25e] 2008                      move.l     a0,d0
[0005d260] 6710                      beq.s      $0005D272
[0005d262] 3228 001c                 move.w     28(a0),d1
[0005d266] b26b 020c                 cmp.w      524(a3),d1
[0005d26a] 6606                      bne.s      $0005D272
[0005d26c] 206b 0210                 movea.l    528(a3),a0
[0005d270] 3610                      move.w     (a0),d3
[0005d272] 4a43                      tst.w      d3
[0005d274] 6a04                      bpl.s      $0005D27A
[0005d276] 362b 020e                 move.w     526(a3),d3
[0005d27a] 206f 003a                 movea.l    58(a7),a0
[0005d27e] 3c10                      move.w     (a0),d6
[0005d280] 6f00 03e0                 ble        $0005D662
[0005d284] 2257                      movea.l    (a7),a1
[0005d286] 3029 0002                 move.w     2(a1),d0
[0005d28a] e648                      lsr.w      #3,d0
[0005d28c] c07c 0001                 and.w      #$0001,d0
[0005d290] 6704                      beq.s      $0005D296
[0005d292] 7e01                      moveq.l    #1,d7
[0005d294] 6002                      bra.s      $0005D298
[0005d296] 4247                      clr.w      d7
[0005d298] 286f 0036                 movea.l    54(a7),a4
[0005d29c] 4244                      clr.w      d4
[0005d29e] 202b 0200                 move.l     512(a3),d0
[0005d2a2] 6726                      beq.s      $0005D2CA
[0005d2a4] 6006                      bra.s      $0005D2AC
[0005d2a6] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d2aa] 5244                      addq.w     #1,d4
[0005d2ac] bc44                      cmp.w      d4,d6
[0005d2ae] 6f00 0384                 ble        $0005D634
[0005d2b2] 4240                      clr.w      d0
[0005d2b4] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d2b8] 206b 0200                 movea.l    512(a3),a0
[0005d2bc] 4eb9 0007 68ce            jsr        $000768CE
[0005d2c2] 2008                      move.l     a0,d0
[0005d2c4] 66e0                      bne.s      $0005D2A6
[0005d2c6] 6000 036c                 bra        $0005D634
[0005d2ca] 45ef 0004                 lea.l      4(a7),a2
[0005d2ce] 2057                      movea.l    (a7),a0
[0005d2d0] 3010                      move.w     (a0),d0
[0005d2d2] e648                      lsr.w      #3,d0
[0005d2d4] c07c 001f                 and.w      #$001F,d0
[0005d2d8] b07c 001a                 cmp.w      #$001A,d0
[0005d2dc] 6200 0356                 bhi        $0005D634
[0005d2e0] d040                      add.w      d0,d0
[0005d2e2] 303b 0006                 move.w     $0005D2EA(pc,d0.w),d0
[0005d2e6] 4efb 0002                 jmp        $0005D2EA(pc,d0.w)
J53:
[0005d2ea] 0036                      dc.w $0036   ; $0005d320-$0005d2ea
[0005d2ec] 0036                      dc.w $0036   ; $0005d320-$0005d2ea
[0005d2ee] 0058                      dc.w $0058   ; $0005d342-$0005d2ea
[0005d2f0] 0078                      dc.w $0078   ; $0005d362-$0005d2ea
[0005d2f2] 00a4                      dc.w $00a4   ; $0005d38e-$0005d2ea
[0005d2f4] 00d0                      dc.w $00d0   ; $0005d3ba-$0005d2ea
[0005d2f6] 00fc                      dc.w $00fc   ; $0005d3e6-$0005d2ea
[0005d2f8] 012e                      dc.w $012e   ; $0005d418-$0005d2ea
[0005d2fa] 0140                      dc.w $0140   ; $0005d42a-$0005d2ea
[0005d2fc] 014e                      dc.w $014e   ; $0005d438-$0005d2ea
[0005d2fe] 0198                      dc.w $0198   ; $0005d482-$0005d2ea
[0005d300] 0182                      dc.w $0182   ; $0005d46c-$0005d2ea
[0005d302] 01cc                      dc.w $01cc   ; $0005d4b6-$0005d2ea
[0005d304] 01b6                      dc.w $01b6   ; $0005d4a0-$0005d2ea
[0005d306] 0200                      dc.w $0200   ; $0005d4ea-$0005d2ea
[0005d308] 01ea                      dc.w $01ea   ; $0005d4d4-$0005d2ea
[0005d30a] 0234                      dc.w $0234   ; $0005d51e-$0005d2ea
[0005d30c] 021e                      dc.w $021e   ; $0005d508-$0005d2ea
[0005d30e] 0272                      dc.w $0272   ; $0005d55c-$0005d2ea
[0005d310] 025c                      dc.w $025c   ; $0005d546-$0005d2ea
[0005d312] 02ce                      dc.w $02ce   ; $0005d5b8-$0005d2ea
[0005d314] 02d0                      dc.w $02d0   ; $0005d5ba-$0005d2ea
[0005d316] 02ce                      dc.w $02ce   ; $0005d5b8-$0005d2ea
[0005d318] 02d0                      dc.w $02d0   ; $0005d5ba-$0005d2ea
[0005d31a] 02d6                      dc.w $02d6   ; $0005d5c0-$0005d2ea
[0005d31c] 02d6                      dc.w $02d6   ; $0005d5c0-$0005d2ea
[0005d31e] 02d6                      dc.w $02d6   ; $0005d5c0-$0005d2ea
[0005d320] 3006                      move.w     d6,d0
[0005d322] 9044                      sub.w      d4,d0
[0005d324] 48c0                      ext.l      d0
[0005d326] 43f5 4000                 lea.l      0(a5,d4.w),a1
[0005d32a] 204c                      movea.l    a4,a0
[0005d32c] 4eb9 0007 6a1a            jsr        $00076A1A
[0005d332] 3006                      move.w     d6,d0
[0005d334] 9044                      sub.w      d4,d0
[0005d336] d8c0                      adda.w     d0,a4
[0005d338] 6000 02fa                 bra        $0005D634
[0005d33c] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d340] 5244                      addq.w     #1,d4
[0005d342] bc44                      cmp.w      d4,d6
[0005d344] 6f00 02ee                 ble        $0005D634
[0005d348] 4240                      clr.w      d0
[0005d34a] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d34e] 41f9 000d 4f8a            lea.l      $000D4F8A,a0
[0005d354] 4eb9 0007 68ce            jsr        $000768CE
[0005d35a] 2008                      move.l     a0,d0
[0005d35c] 67de                      beq.s      $0005D33C
[0005d35e] 6000 02d4                 bra        $0005D634
[0005d362] 7e01                      moveq.l    #1,d7
[0005d364] 6006                      bra.s      $0005D36C
[0005d366] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d36a] 5244                      addq.w     #1,d4
[0005d36c] bc44                      cmp.w      d4,d6
[0005d36e] 6f00 02c4                 ble        $0005D634
[0005d372] 43f9 000d 4f94            lea.l      $000D4F94,a1
[0005d378] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
[0005d37e] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d382] 6100 fe32                 bsr        $0005D1B6
[0005d386] 4a40                      tst.w      d0
[0005d388] 66dc                      bne.s      $0005D366
[0005d38a] 6000 02a8                 bra        $0005D634
[0005d38e] 7e01                      moveq.l    #1,d7
[0005d390] 6006                      bra.s      $0005D398
[0005d392] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d396] 5244                      addq.w     #1,d4
[0005d398] bc44                      cmp.w      d4,d6
[0005d39a] 6f00 0298                 ble        $0005D634
[0005d39e] 43f9 000d 4faf            lea.l      $000D4FAF,a1
[0005d3a4] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
[0005d3aa] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d3ae] 6100 fe06                 bsr        $0005D1B6
[0005d3b2] 4a40                      tst.w      d0
[0005d3b4] 66dc                      bne.s      $0005D392
[0005d3b6] 6000 027c                 bra        $0005D634
[0005d3ba] 7e01                      moveq.l    #1,d7
[0005d3bc] 6006                      bra.s      $0005D3C4
[0005d3be] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d3c2] 5244                      addq.w     #1,d4
[0005d3c4] bc44                      cmp.w      d4,d6
[0005d3c6] 6f00 026c                 ble        $0005D634
[0005d3ca] 43f9 000d 4fcc            lea.l      $000D4FCC,a1
[0005d3d0] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
[0005d3d6] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d3da] 6100 fdda                 bsr        $0005D1B6
[0005d3de] 4a40                      tst.w      d0
[0005d3e0] 66dc                      bne.s      $0005D3BE
[0005d3e2] 6000 0250                 bra        $0005D634
[0005d3e6] 7e01                      moveq.l    #1,d7
[0005d3e8] 6006                      bra.s      $0005D3F0
[0005d3ea] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d3ee] 5244                      addq.w     #1,d4
[0005d3f0] bc44                      cmp.w      d4,d6
[0005d3f2] 6f00 0240                 ble        $0005D634
[0005d3f6] 43f9 000d 4fe9            lea.l      $000D4FE9,a1
[0005d3fc] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
[0005d402] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d406] 6100 fdae                 bsr        $0005D1B6
[0005d40a] 4a40                      tst.w      d0
[0005d40c] 66dc                      bne.s      $0005D3EA
[0005d40e] 6000 0224                 bra        $0005D634
[0005d412] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d416] 5244                      addq.w     #1,d4
[0005d418] bc44                      cmp.w      d4,d6
[0005d41a] 6f00 0218                 ble        $0005D634
[0005d41e] 0c35 0020 4000            cmpi.b     #$20,0(a5,d4.w)
[0005d424] 64ec                      bcc.s      $0005D412
[0005d426] 6000 020c                 bra        $0005D634
[0005d42a] 3f7c 0001 000c            move.w     #$0001,12(a7)
[0005d430] 6006                      bra.s      $0005D438
[0005d432] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d436] 5244                      addq.w     #1,d4
[0005d438] bc44                      cmp.w      d4,d6
[0005d43a] 6f00 01f8                 ble        $0005D634
[0005d43e] 43f9 000d 500d            lea.l      $000D500D,a1
[0005d444] 2f09                      move.l     a1,-(a7)
[0005d446] 302f 0010                 move.w     16(a7),d0
[0005d44a] 6708                      beq.s      $0005D454
[0005d44c] 41f9 000d 5008            lea.l      $000D5008,a0
[0005d452] 6006                      bra.s      $0005D45A
[0005d454] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
[0005d45a] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d45e] 225f                      movea.l    (a7)+,a1
[0005d460] 6100 fd54                 bsr        $0005D1B6
[0005d464] 4a40                      tst.w      d0
[0005d466] 66ca                      bne.s      $0005D432
[0005d468] 6000 01ca                 bra        $0005D634
[0005d46c] 4a44                      tst.w      d4
[0005d46e] 6612                      bne.s      $0005D482
[0005d470] 4a43                      tst.w      d3
[0005d472] 660e                      bne.s      $0005D482
[0005d474] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d47a] 6606                      bne.s      $0005D482
[0005d47c] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d480] 5244                      addq.w     #1,d4
[0005d482] bc44                      cmp.w      d4,d6
[0005d484] 6f00 01ae                 ble        $0005D634
[0005d488] 93c9                      suba.l     a1,a1
[0005d48a] 41f9 000d 500f            lea.l      $000D500F,a0
[0005d490] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d494] 6100 fd20                 bsr        $0005D1B6
[0005d498] 4a40                      tst.w      d0
[0005d49a] 66e0                      bne.s      $0005D47C
[0005d49c] 6000 0196                 bra        $0005D634
[0005d4a0] 4a44                      tst.w      d4
[0005d4a2] 6612                      bne.s      $0005D4B6
[0005d4a4] 4a43                      tst.w      d3
[0005d4a6] 660e                      bne.s      $0005D4B6
[0005d4a8] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d4ae] 6606                      bne.s      $0005D4B6
[0005d4b0] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d4b4] 5244                      addq.w     #1,d4
[0005d4b6] bc44                      cmp.w      d4,d6
[0005d4b8] 6f00 017a                 ble        $0005D634
[0005d4bc] 93c9                      suba.l     a1,a1
[0005d4be] 41f9 000d 5012            lea.l      $000D5012,a0
[0005d4c4] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d4c8] 6100 fcec                 bsr        $0005D1B6
[0005d4cc] 4a40                      tst.w      d0
[0005d4ce] 66e0                      bne.s      $0005D4B0
[0005d4d0] 6000 0162                 bra        $0005D634
[0005d4d4] 4a44                      tst.w      d4
[0005d4d6] 6612                      bne.s      $0005D4EA
[0005d4d8] 4a43                      tst.w      d3
[0005d4da] 660e                      bne.s      $0005D4EA
[0005d4dc] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d4e2] 6606                      bne.s      $0005D4EA
[0005d4e4] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d4e8] 5244                      addq.w     #1,d4
[0005d4ea] bc44                      cmp.w      d4,d6
[0005d4ec] 6f00 0146                 ble        $0005D634
[0005d4f0] 93c9                      suba.l     a1,a1
[0005d4f2] 41f9 000d 4f91            lea.l      $000D4F91,a0
[0005d4f8] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d4fc] 6100 fcb8                 bsr        $0005D1B6
[0005d500] 4a40                      tst.w      d0
[0005d502] 66e0                      bne.s      $0005D4E4
[0005d504] 6000 012e                 bra        $0005D634
[0005d508] 4a44                      tst.w      d4
[0005d50a] 6612                      bne.s      $0005D51E
[0005d50c] 4a43                      tst.w      d3
[0005d50e] 660e                      bne.s      $0005D51E
[0005d510] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d516] 6606                      bne.s      $0005D51E
[0005d518] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d51c] 5244                      addq.w     #1,d4
[0005d51e] 7e01                      moveq.l    #1,d7
[0005d520] 6006                      bra.s      $0005D528
[0005d522] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d526] 5244                      addq.w     #1,d4
[0005d528] bc44                      cmp.w      d4,d6
[0005d52a] 6f00 0108                 ble        $0005D634
[0005d52e] 93c9                      suba.l     a1,a1
[0005d530] 41f9 000d 5015            lea.l      $000D5015,a0
[0005d536] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d53a] 6100 fc7a                 bsr        $0005D1B6
[0005d53e] 4a40                      tst.w      d0
[0005d540] 66e0                      bne.s      $0005D522
[0005d542] 6000 00f0                 bra        $0005D634
[0005d546] 4a44                      tst.w      d4
[0005d548] 6612                      bne.s      $0005D55C
[0005d54a] 4a43                      tst.w      d3
[0005d54c] 660e                      bne.s      $0005D55C
[0005d54e] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d554] 6606                      bne.s      $0005D55C
[0005d556] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d55a] 5244                      addq.w     #1,d4
[0005d55c] 702e                      moveq.l    #46,d0
[0005d55e] 41eb 0100                 lea.l      256(a3),a0
[0005d562] 4eb9 0007 68ce            jsr        $000768CE
[0005d568] 2488                      move.l     a0,(a2)
[0005d56a] 702e                      moveq.l    #46,d0
[0005d56c] 204d                      movea.l    a5,a0
[0005d56e] 4eb9 0007 68ce            jsr        $000768CE
[0005d574] 2548 0004                 move.l     a0,4(a2)
[0005d578] 601c                      bra.s      $0005D596
[0005d57a] 0c35 002e 4000            cmpi.b     #$2E,0(a5,d4.w)
[0005d580] 660e                      bne.s      $0005D590
[0005d582] 2012                      move.l     (a2),d0
[0005d584] 660e                      bne.s      $0005D594
[0005d586] 41f5 4000                 lea.l      0(a5,d4.w),a0
[0005d58a] b1ea 0004                 cmpa.l     4(a2),a0
[0005d58e] 6604                      bne.s      $0005D594
[0005d590] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d594] 5244                      addq.w     #1,d4
[0005d596] bc44                      cmp.w      d4,d6
[0005d598] 6f00 009a                 ble        $0005D634
[0005d59c] 43f9 000d 501c            lea.l      $000D501C,a1
[0005d5a2] 41f9 000d 4f91            lea.l      $000D4F91,a0
[0005d5a8] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d5ac] 6100 fc08                 bsr        $0005D1B6
[0005d5b0] 4a40                      tst.w      d0
[0005d5b2] 66c6                      bne.s      $0005D57A
[0005d5b4] 6000 007e                 bra.w      $0005D634
[0005d5b8] 7a2e                      moveq.l    #46,d5
[0005d5ba] 4a05                      tst.b      d5
[0005d5bc] 6602                      bne.s      $0005D5C0
[0005d5be] 7a2f                      moveq.l    #47,d5
[0005d5c0] 4a05                      tst.b      d5
[0005d5c2] 6602                      bne.s      $0005D5C6
[0005d5c4] 7a3a                      moveq.l    #58,d5
[0005d5c6] 224a                      movea.l    a2,a1
[0005d5c8] 1005                      move.b     d5,d0
[0005d5ca] 41eb 0100                 lea.l      256(a3),a0
[0005d5ce] 6100 fc30                 bsr        $0005D200
[0005d5d2] 605c                      bra.s      $0005D630
[0005d5d4] 4240                      clr.w      d0
[0005d5d6] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d5da] 907c 002e                 sub.w      #$002E,d0
[0005d5de] 670c                      beq.s      $0005D5EC
[0005d5e0] 5340                      subq.w     #1,d0
[0005d5e2] 6708                      beq.s      $0005D5EC
[0005d5e4] 907c 000b                 sub.w      #$000B,d0
[0005d5e8] 6702                      beq.s      $0005D5EC
[0005d5ea] 602a                      bra.s      $0005D616
[0005d5ec] ba35 4000                 cmp.b      0(a5,d4.w),d5
[0005d5f0] 663c                      bne.s      $0005D62E
[0005d5f2] 4240                      clr.w      d0
[0005d5f4] 6018                      bra.s      $0005D60E
[0005d5f6] 3200                      move.w     d0,d1
[0005d5f8] e549                      lsl.w      #2,d1
[0005d5fa] 2432 1000                 move.l     0(a2,d1.w),d2
[0005d5fe] 660c                      bne.s      $0005D60C
[0005d600] 41f5 4000                 lea.l      0(a5,d4.w),a0
[0005d604] 2588 1000                 move.l     a0,0(a2,d1.w)
[0005d608] 18c5                      move.b     d5,(a4)+
[0005d60a] 6022                      bra.s      $0005D62E
[0005d60c] 5240                      addq.w     #1,d0
[0005d60e] b07c 0002                 cmp.w      #$0002,d0
[0005d612] 6de2                      blt.s      $0005D5F6
[0005d614] 6018                      bra.s      $0005D62E
[0005d616] 93c9                      suba.l     a1,a1
[0005d618] 41f9 000d 4f91            lea.l      $000D4F91,a0
[0005d61e] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d622] 6100 fb92                 bsr        $0005D1B6
[0005d626] 4a40                      tst.w      d0
[0005d628] 6704                      beq.s      $0005D62E
[0005d62a] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d62e] 5244                      addq.w     #1,d4
[0005d630] bc44                      cmp.w      d4,d6
[0005d632] 6ea0                      bgt.s      $0005D5D4
[0005d634] 4200                      clr.b      d0
[0005d636] 1880                      move.b     d0,(a4)
[0005d638] 206f 0036                 movea.l    54(a7),a0
[0005d63c] 1180 6000                 move.b     d0,0(a0,d6.w)
[0005d640] 4a47                      tst.w      d7
[0005d642] 6706                      beq.s      $0005D64A
[0005d644] 4eb9 0004 3740            jsr        $00043740
[0005d64a] 206f 0036                 movea.l    54(a7),a0
[0005d64e] 4eb9 0007 69b0            jsr        $000769B0
[0005d654] 206f 003a                 movea.l    58(a7),a0
[0005d658] 3080                      move.w     d0,(a0)
[0005d65a] 4a40                      tst.w      d0
[0005d65c] 6f04                      ble.s      $0005D662
[0005d65e] 7001                      moveq.l    #1,d0
[0005d660] 6002                      bra.s      $0005D664
[0005d662] 4240                      clr.w      d0
[0005d664] 4fef 000e                 lea.l      14(a7),a7
[0005d668] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0005d66c] 4e75                      rts
boxed_validate:
[0005d66e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0005d672] 2448                      movea.l    a0,a2
[0005d674] 2649                      movea.l    a1,a3
[0005d676] 7600                      moveq.l    #0,d3
[0005d678] 41eb fff7                 lea.l      -9(a3),a0
[0005d67c] b5c8                      cmpa.l     a0,a2
[0005d67e] 6404                      bcc.s      $0005D684
[0005d680] 47ea 0009                 lea.l      9(a2),a3
[0005d684] 1012                      move.b     (a2),d0
[0005d686] 4880                      ext.w      d0
[0005d688] 4eb9 0007 7212            jsr        $00077212
[0005d68e] 4a40                      tst.w      d0
[0005d690] 661c                      bne.s      $0005D6AE
[0005d692] 70ff                      moveq.l    #-1,d0
[0005d694] 602c                      bra.s      $0005D6C2
[0005d696] 2003                      move.l     d3,d0
[0005d698] e588                      lsl.l      #2,d0
[0005d69a] d083                      add.l      d3,d0
[0005d69c] d080                      add.l      d0,d0
[0005d69e] 2600                      move.l     d0,d3
[0005d6a0] 1212                      move.b     (a2),d1
[0005d6a2] 4881                      ext.w      d1
[0005d6a4] d27c ffd0                 add.w      #$FFD0,d1
[0005d6a8] 48c1                      ext.l      d1
[0005d6aa] d681                      add.l      d1,d3
[0005d6ac] 524a                      addq.w     #1,a2
[0005d6ae] b7ca                      cmpa.l     a2,a3
[0005d6b0] 630e                      bls.s      $0005D6C0
[0005d6b2] 1012                      move.b     (a2),d0
[0005d6b4] 4880                      ext.w      d0
[0005d6b6] 4eb9 0007 7212            jsr        $00077212
[0005d6bc] 4a40                      tst.w      d0
[0005d6be] 66d6                      bne.s      $0005D696
[0005d6c0] 2003                      move.l     d3,d0
[0005d6c2] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0005d6c6] 4e75                      rts
boxed_postcheck:
[0005d6c8] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0005d6cc] 4fef fef4                 lea.l      -268(a7),a7
[0005d6d0] 45ef 0004                 lea.l      4(a7),a2
[0005d6d4] 43f9 000d 4e86            lea.l      $000D4E86,a1
[0005d6da] 264a                      movea.l    a2,a3
[0005d6dc] 303c 00ff                 move.w     #$00FF,d0
[0005d6e0] 16d9                      move.b     (a1)+,(a3)+
[0005d6e2] 51c8 fffc                 dbf        d0,$0005D6E0
[0005d6e6] 76ff                      moveq.l    #-1,d3
[0005d6e8] 2803                      move.l     d3,d4
[0005d6ea] 2a03                      move.l     d3,d5
[0005d6ec] 2068 000c                 movea.l    12(a0),a0
[0005d6f0] 2668 0010                 movea.l    16(a0),a3
[0005d6f4] 4be8 0004                 lea.l      4(a0),a5
[0005d6f8] 3015                      move.w     (a5),d0
[0005d6fa] e648                      lsr.w      #3,d0
[0005d6fc] c07c 001f                 and.w      #$001F,d0
[0005d700] 907c 0014                 sub.w      #$0014,d0
[0005d704] b07c 0006                 cmp.w      #$0006,d0
[0005d708] 6222                      bhi.s      $0005D72C
[0005d70a] d040                      add.w      d0,d0
[0005d70c] 303b 0006                 move.w     $0005D714(pc,d0.w),d0
[0005d710] 4efb 0002                 jmp        $0005D714(pc,d0.w)
J54:
[0005d714] 000e                      dc.w $000e   ; $0005d722-$0005d714
[0005d716] 0012                      dc.w $0012   ; $0005d726-$0005d714
[0005d718] 000e                      dc.w $000e   ; $0005d722-$0005d714
[0005d71a] 0012                      dc.w $0012   ; $0005d726-$0005d714
[0005d71c] 0016                      dc.w $0016   ; $0005d72a-$0005d714
[0005d71e] 0016                      dc.w $0016   ; $0005d72a-$0005d714
[0005d720] 0016                      dc.w $0016   ; $0005d72a-$0005d714
[0005d722] 7c2e                      moveq.l    #46,d6
[0005d724] 6006                      bra.s      $0005D72C
[0005d726] 7c2f                      moveq.l    #47,d6
[0005d728] 6002                      bra.s      $0005D72C
[0005d72a] 7c3a                      moveq.l    #58,d6
[0005d72c] 49ef 0104                 lea.l      260(a7),a4
[0005d730] 3015                      move.w     (a5),d0
[0005d732] e648                      lsr.w      #3,d0
[0005d734] c07c 001f                 and.w      #$001F,d0
[0005d738] b07c 0014                 cmp.w      #$0014,d0
[0005d73c] 6500 007a                 bcs.w      $0005D7B8
[0005d740] 3215                      move.w     (a5),d1
[0005d742] e649                      lsr.w      #3,d1
[0005d744] c27c 001f                 and.w      #$001F,d1
[0005d748] b27c 001a                 cmp.w      #$001A,d1
[0005d74c] 626a                      bhi.s      $0005D7B8
[0005d74e] 224c                      movea.l    a4,a1
[0005d750] 41eb 0100                 lea.l      256(a3),a0
[0005d754] 1006                      move.b     d6,d0
[0005d756] 6100 faa8                 bsr        $0005D200
[0005d75a] 2014                      move.l     (a4),d0
[0005d75c] 6704                      beq.s      $0005D762
[0005d75e] 2240                      movea.l    d0,a1
[0005d760] 600c                      bra.s      $0005D76E
[0005d762] 302b 020e                 move.w     526(a3),d0
[0005d766] 43f3 0000                 lea.l      0(a3,d0.w),a1
[0005d76a] 43e9 0100                 lea.l      256(a1),a1
[0005d76e] 41eb 0100                 lea.l      256(a3),a0
[0005d772] 6100 fefa                 bsr        $0005D66E
[0005d776] 2600                      move.l     d0,d3
[0005d778] 2214                      move.l     (a4),d1
[0005d77a] 673c                      beq.s      $0005D7B8
[0005d77c] 242c 0004                 move.l     4(a4),d2
[0005d780] 6704                      beq.s      $0005D786
[0005d782] 2242                      movea.l    d2,a1
[0005d784] 600c                      bra.s      $0005D792
[0005d786] 302b 020e                 move.w     526(a3),d0
[0005d78a] 43f3 0000                 lea.l      0(a3,d0.w),a1
[0005d78e] 43e9 0100                 lea.l      256(a1),a1
[0005d792] 2054                      movea.l    (a4),a0
[0005d794] 5248                      addq.w     #1,a0
[0005d796] 6100 fed6                 bsr        $0005D66E
[0005d79a] 2800                      move.l     d0,d4
[0005d79c] 222c 0004                 move.l     4(a4),d1
[0005d7a0] 6716                      beq.s      $0005D7B8
[0005d7a2] 342b 020e                 move.w     526(a3),d2
[0005d7a6] 43f3 2000                 lea.l      0(a3,d2.w),a1
[0005d7aa] 43e9 0100                 lea.l      256(a1),a1
[0005d7ae] 2041                      movea.l    d1,a0
[0005d7b0] 5248                      addq.w     #1,a0
[0005d7b2] 6100 feba                 bsr        $0005D66E
[0005d7b6] 2a00                      move.l     d0,d5
[0005d7b8] 3015                      move.w     (a5),d0
[0005d7ba] e648                      lsr.w      #3,d0
[0005d7bc] c07c 001f                 and.w      #$001F,d0
[0005d7c0] 907c 0014                 sub.w      #$0014,d0
[0005d7c4] b07c 0006                 cmp.w      #$0006,d0
[0005d7c8] 6200 00fe                 bhi        $0005D8C8
[0005d7cc] d040                      add.w      d0,d0
[0005d7ce] 303b 0006                 move.w     $0005D7D6(pc,d0.w),d0
[0005d7d2] 4efb 0002                 jmp        $0005D7D6(pc,d0.w)
J55:
[0005d7d6] 000e                      dc.w $000e   ; $0005d7e4-$0005d7d6
[0005d7d8] 000e                      dc.w $000e   ; $0005d7e4-$0005d7d6
[0005d7da] 000e                      dc.w $000e   ; $0005d7e4-$0005d7d6
[0005d7dc] 000e                      dc.w $000e   ; $0005d7e4-$0005d7d6
[0005d7de] 00e2                      dc.w $00e2   ; $0005d8b8-$0005d7d6
[0005d7e0] 00d2                      dc.w $00d2   ; $0005d8a8-$0005d7d6
[0005d7e2] 00da                      dc.w $00da   ; $0005d8b0-$0005d7d6
[0005d7e4] 3015                      move.w     (a5),d0
[0005d7e6] e648                      lsr.w      #3,d0
[0005d7e8] c07c 001f                 and.w      #$001F,d0
[0005d7ec] b07c 0016                 cmp.w      #$0016,d0
[0005d7f0] 670e                      beq.s      $0005D800
[0005d7f2] 3215                      move.w     (a5),d1
[0005d7f4] e649                      lsr.w      #3,d1
[0005d7f6] c27c 001f                 and.w      #$001F,d1
[0005d7fa] b27c 0017                 cmp.w      #$0017,d1
[0005d7fe] 6606                      bne.s      $0005D806
[0005d800] 2e83                      move.l     d3,(a7)
[0005d802] 2604                      move.l     d4,d3
[0005d804] 2817                      move.l     (a7),d4
[0005d806] 700c                      moveq.l    #12,d0
[0005d808] b084                      cmp.l      d4,d0
[0005d80a] 6c02                      bge.s      $0005D80E
[0005d80c] 2800                      move.l     d0,d4
[0005d80e] 4a84                      tst.l      d4
[0005d810] 6f66                      ble.s      $0005D878
[0005d812] 4a85                      tst.l      d5
[0005d814] 6b62                      bmi.s      $0005D878
[0005d816] 7002                      moveq.l    #2,d0
[0005d818] b084                      cmp.l      d4,d0
[0005d81a] 6636                      bne.s      $0005D852
[0005d81c] 2005                      move.l     d5,d0
[0005d81e] 223c 0000 0190            move.l     #$00000190,d1
[0005d824] 4eb9 0007 77ae            jsr        $000777AE
[0005d82a] 4a80                      tst.l      d0
[0005d82c] 671c                      beq.s      $0005D84A
[0005d82e] 2005                      move.l     d5,d0
[0005d830] 7204                      moveq.l    #4,d1
[0005d832] 4eb9 0007 77ae            jsr        $000777AE
[0005d838] 4a80                      tst.l      d0
[0005d83a] 6612                      bne.s      $0005D84E
[0005d83c] 2005                      move.l     d5,d0
[0005d83e] 7264                      moveq.l    #100,d1
[0005d840] 4eb9 0007 77ae            jsr        $000777AE
[0005d846] 4a80                      tst.l      d0
[0005d848] 6704                      beq.s      $0005D84E
[0005d84a] 7e1d                      moveq.l    #29,d7
[0005d84c] 6002                      bra.s      $0005D850
[0005d84e] 7e1c                      moveq.l    #28,d7
[0005d850] 6028                      bra.s      $0005D87A
[0005d852] 7007                      moveq.l    #7,d0
[0005d854] b084                      cmp.l      d4,d0
[0005d856] 6c06                      bge.s      $0005D85E
[0005d858] 7ef9                      moveq.l    #-7,d7
[0005d85a] de44                      add.w      d4,d7
[0005d85c] 6002                      bra.s      $0005D860
[0005d85e] 3e04                      move.w     d4,d7
[0005d860] 3007                      move.w     d7,d0
[0005d862] 48c0                      ext.l      d0
[0005d864] 81fc 0002                 divs.w     #$0002,d0
[0005d868] 4840                      swap       d0
[0005d86a] 4a40                      tst.w      d0
[0005d86c] 6604                      bne.s      $0005D872
[0005d86e] 721e                      moveq.l    #30,d1
[0005d870] 6002                      bra.s      $0005D874
[0005d872] 721f                      moveq.l    #31,d1
[0005d874] 3e01                      move.w     d1,d7
[0005d876] 6002                      bra.s      $0005D87A
[0005d878] 7e1f                      moveq.l    #31,d7
[0005d87a] 3007                      move.w     d7,d0
[0005d87c] 48c0                      ext.l      d0
[0005d87e] b680                      cmp.l      d0,d3
[0005d880] 6f02                      ble.s      $0005D884
[0005d882] 2600                      move.l     d0,d3
[0005d884] 3015                      move.w     (a5),d0
[0005d886] e648                      lsr.w      #3,d0
[0005d888] c07c 001f                 and.w      #$001F,d0
[0005d88c] b07c 0016                 cmp.w      #$0016,d0
[0005d890] 670e                      beq.s      $0005D8A0
[0005d892] 3215                      move.w     (a5),d1
[0005d894] e649                      lsr.w      #3,d1
[0005d896] c27c 001f                 and.w      #$001F,d1
[0005d89a] b27c 0017                 cmp.w      #$0017,d1
[0005d89e] 6628                      bne.s      $0005D8C8
[0005d8a0] 2e83                      move.l     d3,(a7)
[0005d8a2] 2604                      move.l     d4,d3
[0005d8a4] 2817                      move.l     (a7),d4
[0005d8a6] 6020                      bra.s      $0005D8C8
[0005d8a8] 700c                      moveq.l    #12,d0
[0005d8aa] b083                      cmp.l      d3,d0
[0005d8ac] 6c02                      bge.s      $0005D8B0
[0005d8ae] 2600                      move.l     d0,d3
[0005d8b0] 7017                      moveq.l    #23,d0
[0005d8b2] b083                      cmp.l      d3,d0
[0005d8b4] 6c02                      bge.s      $0005D8B8
[0005d8b6] 2600                      move.l     d0,d3
[0005d8b8] 703b                      moveq.l    #59,d0
[0005d8ba] b084                      cmp.l      d4,d0
[0005d8bc] 6c02                      bge.s      $0005D8C0
[0005d8be] 2800                      move.l     d0,d4
[0005d8c0] 703b                      moveq.l    #59,d0
[0005d8c2] b085                      cmp.l      d5,d0
[0005d8c4] 6c02                      bge.s      $0005D8C8
[0005d8c6] 2a00                      move.l     d0,d5
[0005d8c8] 3015                      move.w     (a5),d0
[0005d8ca] e648                      lsr.w      #3,d0
[0005d8cc] c07c 001f                 and.w      #$001F,d0
[0005d8d0] b07c 0014                 cmp.w      #$0014,d0
[0005d8d4] 6500 00d4                 bcs        $0005D9AA
[0005d8d8] 3215                      move.w     (a5),d1
[0005d8da] e649                      lsr.w      #3,d1
[0005d8dc] c27c 001f                 and.w      #$001F,d1
[0005d8e0] b27c 001a                 cmp.w      #$001A,d1
[0005d8e4] 6200 00c4                 bhi        $0005D9AA
[0005d8e8] 4247                      clr.w      d7
[0005d8ea] 4bf9 000d 4f8a            lea.l      $000D4F8A,a5
[0005d8f0] 4a83                      tst.l      d3
[0005d8f2] 6b12                      bmi.s      $0005D906
[0005d8f4] 2f03                      move.l     d3,-(a7)
[0005d8f6] 43ed 0094                 lea.l      148(a5),a1
[0005d8fa] 204a                      movea.l    a2,a0
[0005d8fc] 4eb9 0007 5680            jsr        $00075680
[0005d902] 584f                      addq.w     #4,a7
[0005d904] 3e00                      move.w     d0,d7
[0005d906] 2014                      move.l     (a4),d0
[0005d908] 6718                      beq.s      $0005D922
[0005d90a] 4241                      clr.w      d1
[0005d90c] 1206                      move.b     d6,d1
[0005d90e] 3f01                      move.w     d1,-(a7)
[0005d910] 43ed 0098                 lea.l      152(a5),a1
[0005d914] 41f2 7000                 lea.l      0(a2,d7.w),a0
[0005d918] 4eb9 0007 5680            jsr        $00075680
[0005d91e] 544f                      addq.w     #2,a7
[0005d920] de40                      add.w      d0,d7
[0005d922] 4a84                      tst.l      d4
[0005d924] 6b14                      bmi.s      $0005D93A
[0005d926] 2f04                      move.l     d4,-(a7)
[0005d928] 43ed 0094                 lea.l      148(a5),a1
[0005d92c] 41f2 7000                 lea.l      0(a2,d7.w),a0
[0005d930] 4eb9 0007 5680            jsr        $00075680
[0005d936] 584f                      addq.w     #4,a7
[0005d938] de40                      add.w      d0,d7
[0005d93a] 202c 0004                 move.l     4(a4),d0
[0005d93e] 6718                      beq.s      $0005D958
[0005d940] 4241                      clr.w      d1
[0005d942] 1206                      move.b     d6,d1
[0005d944] 3f01                      move.w     d1,-(a7)
[0005d946] 43ed 0098                 lea.l      152(a5),a1
[0005d94a] 41f2 7000                 lea.l      0(a2,d7.w),a0
[0005d94e] 4eb9 0007 5680            jsr        $00075680
[0005d954] 544f                      addq.w     #2,a7
[0005d956] de40                      add.w      d0,d7
[0005d958] 4a85                      tst.l      d5
[0005d95a] 6b14                      bmi.s      $0005D970
[0005d95c] 2f05                      move.l     d5,-(a7)
[0005d95e] 43ed 0094                 lea.l      148(a5),a1
[0005d962] 41f2 7000                 lea.l      0(a2,d7.w),a0
[0005d966] 4eb9 0007 5680            jsr        $00075680
[0005d96c] 584f                      addq.w     #4,a7
[0005d96e] de40                      add.w      d0,d7
[0005d970] 4a47                      tst.w      d7
[0005d972] 6f36                      ble.s      $0005D9AA
[0005d974] 302b 020e                 move.w     526(a3),d0
[0005d978] 9047                      sub.w      d7,d0
[0005d97a] 3e00                      move.w     d0,d7
[0005d97c] 916b 020e                 sub.w      d0,526(a3)
[0005d980] 222b 0210                 move.l     528(a3),d1
[0005d984] 6704                      beq.s      $0005D98A
[0005d986] 2041                      movea.l    d1,a0
[0005d988] 9150                      sub.w      d0,(a0)
[0005d98a] 202b 0214                 move.l     532(a3),d0
[0005d98e] 670e                      beq.s      $0005D99E
[0005d990] 2040                      movea.l    d0,a0
[0005d992] 9f50                      sub.w      d7,(a0)
[0005d994] 206b 0214                 movea.l    532(a3),a0
[0005d998] 3010                      move.w     (a0),d0
[0005d99a] 6a02                      bpl.s      $0005D99E
[0005d99c] 4250                      clr.w      (a0)
[0005d99e] 224a                      movea.l    a2,a1
[0005d9a0] 41eb 0100                 lea.l      256(a3),a0
[0005d9a4] 4eb9 0007 6950            jsr        $00076950
[0005d9aa] 4fef 010c                 lea.l      268(a7),a7
[0005d9ae] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0005d9b2] 4e75                      rts
boxed_delsel:
[0005d9b4] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0005d9b8] 3800                      move.w     d0,d4
[0005d9ba] 3601                      move.w     d1,d3
[0005d9bc] 2268 000c                 movea.l    12(a0),a1
[0005d9c0] 2469 0010                 movea.l    16(a1),a2
[0005d9c4] 4a41                      tst.w      d1
[0005d9c6] 6f64                      ble.s      $0005DA2C
[0005d9c8] 342a 020e                 move.w     526(a2),d2
[0005d9cc] 6f5e                      ble.s      $0005DA2C
[0005d9ce] 4a40                      tst.w      d0
[0005d9d0] 6b5a                      bmi.s      $0005DA2C
[0005d9d2] d041                      add.w      d1,d0
[0005d9d4] b042                      cmp.w      d2,d0
[0005d9d6] 6e54                      bgt.s      $0005DA2C
[0005d9d8] 47f2 4000                 lea.l      0(a2,d4.w),a3
[0005d9dc] 47eb 0100                 lea.l      256(a3),a3
[0005d9e0] 43f3 1000                 lea.l      0(a3,d1.w),a1
[0005d9e4] 204b                      movea.l    a3,a0
[0005d9e6] 4eb9 0007 6950            jsr        $00076950
[0005d9ec] 976a 020e                 sub.w      d3,526(a2)
[0005d9f0] 202a 0214                 move.l     532(a2),d0
[0005d9f4] 6704                      beq.s      $0005D9FA
[0005d9f6] 2040                      movea.l    d0,a0
[0005d9f8] 4250                      clr.w      (a0)
[0005d9fa] 202a 0214                 move.l     532(a2),d0
[0005d9fe] 6706                      beq.s      $0005DA06
[0005da00] 206a 0210                 movea.l    528(a2),a0
[0005da04] 3084                      move.w     d4,(a0)
[0005da06] 006a 0004 0222            ori.w      #$0004,546(a2)
[0005da0c] 43ea 0100                 lea.l      256(a2),a1
[0005da10] 204a                      movea.l    a2,a0
[0005da12] 4eb9 0007 6950            jsr        $00076950
[0005da18] 266a 0204                 movea.l    516(a2),a3
[0005da1c] 200b                      move.l     a3,d0
[0005da1e] 670c                      beq.s      $0005DA2C
[0005da20] 93c9                      suba.l     a1,a1
[0005da22] 204b                      movea.l    a3,a0
[0005da24] 246b 0004                 movea.l    4(a3),a2
[0005da28] 701a                      moveq.l    #26,d0
[0005da2a] 4e92                      jsr        (a2)
[0005da2c] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0005da30] 4e75                      rts
boxed_viewpos:
[0005da32] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0005da36] 3800                      move.w     d0,d4
[0005da38] 2268 000c                 movea.l    12(a0),a1
[0005da3c] 2469 0010                 movea.l    16(a1),a2
[0005da40] 362a 021c                 move.w     540(a2),d3
[0005da44] 206a 0204                 movea.l    516(a2),a0
[0005da48] 322a 020c                 move.w     524(a2),d1
[0005da4c] c27c 1000                 and.w      #$1000,d1
[0005da50] 6706                      beq.s      $0005DA58
[0005da52] 2668 0018                 movea.l    24(a0),a3
[0005da56] 6004                      bra.s      $0005DA5C
[0005da58] 2668 0014                 movea.l    20(a0),a3
[0005da5c] 342a 020c                 move.w     524(a2),d2
[0005da60] c47c 0fff                 and.w      #$0FFF,d2
[0005da64] 48c2                      ext.l      d2
[0005da66] 2202                      move.l     d2,d1
[0005da68] d281                      add.l      d1,d1
[0005da6a] d282                      add.l      d2,d1
[0005da6c] e789                      lsl.l      #3,d1
[0005da6e] 3033 1814                 move.w     20(a3,d1.l),d0
[0005da72] 48c0                      ext.l      d0
[0005da74] 81ea 021e                 divs.w     542(a2),d0
[0005da78] 3204                      move.w     d4,d1
[0005da7a] 4a44                      tst.w      d4
[0005da7c] 6a06                      bpl.s      $0005DA84
[0005da7e] 206a 0210                 movea.l    528(a2),a0
[0005da82] 3210                      move.w     (a0),d1
[0005da84] b26a 020e                 cmp.w      526(a2),d1
[0005da88] 6f04                      ble.s      $0005DA8E
[0005da8a] 322a 020e                 move.w     526(a2),d1
[0005da8e] 4a41                      tst.w      d1
[0005da90] 6f0c                      ble.s      $0005DA9E
[0005da92] 78ff                      moveq.l    #-1,d4
[0005da94] d841                      add.w      d1,d4
[0005da96] b644                      cmp.w      d4,d3
[0005da98] 6f04                      ble.s      $0005DA9E
[0005da9a] 3604                      move.w     d4,d3
[0005da9c] 6012                      bra.s      $0005DAB0
[0005da9e] 3401                      move.w     d1,d2
[0005daa0] 9443                      sub.w      d3,d2
[0005daa2] 9440                      sub.w      d0,d2
[0005daa4] 5242                      addq.w     #1,d2
[0005daa6] 4a42                      tst.w      d2
[0005daa8] 6e04                      bgt.s      $0005DAAE
[0005daaa] b641                      cmp.w      d1,d3
[0005daac] 6f02                      ble.s      $0005DAB0
[0005daae] d642                      add.w      d2,d3
[0005dab0] 3403                      move.w     d3,d2
[0005dab2] d440                      add.w      d0,d2
[0005dab4] 946a 020e                 sub.w      526(a2),d2
[0005dab8] 4a42                      tst.w      d2
[0005daba] 6f02                      ble.s      $0005DABE
[0005dabc] 9642                      sub.w      d2,d3
[0005dabe] 4a43                      tst.w      d3
[0005dac0] 6a02                      bpl.s      $0005DAC4
[0005dac2] 4243                      clr.w      d3
[0005dac4] b66a 021c                 cmp.w      540(a2),d3
[0005dac8] 6706                      beq.s      $0005DAD0
[0005daca] 006a 0004 0222            ori.w      #$0004,546(a2)
[0005dad0] 3543 021c                 move.w     d3,540(a2)
[0005dad4] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0005dad8] 4e75                      rts
boxed_charlist:
[0005dada] 48e7 102e                 movem.l    d3/a2/a4-a6,-(a7)
[0005dade] 4fef fff6                 lea.l      -10(a7),a7
[0005dae2] 2f48 0006                 move.l     a0,6(a7)
[0005dae6] 45ef 0002                 lea.l      2(a7),a2
[0005daea] 41f9 000d 4f86            lea.l      $000D4F86,a0
[0005daf0] 224a                      movea.l    a2,a1
[0005daf2] 12d8                      move.b     (a0)+,(a1)+
[0005daf4] 12d8                      move.b     (a0)+,(a1)+
[0005daf6] 41f9 000d 4f88            lea.l      $000D4F88,a0
[0005dafc] 43d7                      lea.l      (a7),a1
[0005dafe] 12d8                      move.b     (a0)+,(a1)+
[0005db00] 12d8                      move.b     (a0)+,(a1)+
[0005db02] 203c 0000 1818            move.l     #$00001818,d0
[0005db08] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005db0e] 2848                      movea.l    a0,a4
[0005db10] 2a4c                      movea.l    a4,a5
[0005db12] 200c                      move.l     a4,d0
[0005db14] 6700 011a                 beq        $0005DC30
[0005db18] 43f9 000d 4e56            lea.l      $000D4E56,a1
[0005db1e] 204d                      movea.l    a5,a0
[0005db20] 7018                      moveq.l    #24,d0
[0005db22] 4eb9 0007 6f44            jsr        $00076F44
[0005db28] 3b7c 0001 0002            move.w     #$0001,2(a5)
[0005db2e] 3b7c 0100 0004            move.w     #$0100,4(a5)
[0005db34] 4bed 0018                 lea.l      24(a5),a5
[0005db38] 4243                      clr.w      d3
[0005db3a] 4def 0004                 lea.l      4(a7),a6
[0005db3e] 6000 0086                 bra        $0005DBC6
[0005db42] 7018                      moveq.l    #24,d0
[0005db44] 43f9 000d 4e6e            lea.l      $000D4E6E,a1
[0005db4a] 204d                      movea.l    a5,a0
[0005db4c] 4eb9 0007 6f44            jsr        $00076F44
[0005db52] 4240                      clr.w      d0
[0005db54] 1003                      move.b     d3,d0
[0005db56] 026d 00ff 000c            andi.w     #$00FF,12(a5)
[0005db5c] c07c 00ff                 and.w      #$00FF,d0
[0005db60] e148                      lsl.w      #8,d0
[0005db62] 816d 000c                 or.w       d0,12(a5)
[0005db66] 7002                      moveq.l    #2,d0
[0005db68] d043                      add.w      d3,d0
[0005db6a] 3a80                      move.w     d0,(a5)
[0005db6c] 3203                      move.w     d3,d1
[0005db6e] 48c1                      ext.l      d1
[0005db70] 83fc 0010                 divs.w     #$0010,d1
[0005db74] 4841                      swap       d1
[0005db76] d241                      add.w      d1,d1
[0005db78] 3b41 0010                 move.w     d1,16(a5)
[0005db7c] 3403                      move.w     d3,d2
[0005db7e] 48c2                      ext.l      d2
[0005db80] 85fc 0010                 divs.w     #$0010,d2
[0005db84] 3b42 0012                 move.w     d2,18(a5)
[0005db88] 1483                      move.b     d3,(a2)
[0005db8a] 3cbc 0001                 move.w     #$0001,(a6)
[0005db8e] 4856                      pea.l      (a6)
[0005db90] 486f 0004                 pea.l      4(a7)
[0005db94] 224a                      movea.l    a2,a1
[0005db96] 206f 000e                 movea.l    14(a7),a0
[0005db9a] 6100 f698                 bsr        $0005D234
[0005db9e] 504f                      addq.w     #8,a7
[0005dba0] 4a40                      tst.w      d0
[0005dba2] 6704                      beq.s      $0005DBA8
[0005dba4] b617                      cmp.b      (a7),d3
[0005dba6] 6718                      beq.s      $0005DBC0
[0005dba8] 006d 0008 000a            ori.w      #$0008,10(a5)
[0005dbae] 026d f0ff 000e            andi.w     #$F0FF,14(a5)
[0005dbb4] 026d fff0 000e            andi.w     #$FFF0,14(a5)
[0005dbba] 006d 0008 000e            ori.w      #$0008,14(a5)
[0005dbc0] 4bed 0018                 lea.l      24(a5),a5
[0005dbc4] 5243                      addq.w     #1,d3
[0005dbc6] b67c 0100                 cmp.w      #$0100,d3
[0005dbca] 6d00 ff76                 blt        $0005DB42
[0005dbce] 4bed ffe8                 lea.l      -24(a5),a5
[0005dbd2] 006d 0020 0008            ori.w      #$0020,8(a5)
[0005dbd8] 4255                      clr.w      (a5)
[0005dbda] 204c                      movea.l    a4,a0
[0005dbdc] 4eb9 0004 a25e            jsr        $0004A25E
[0005dbe2] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dbe8] 3228 0264                 move.w     612(a0),d1
[0005dbec] 302c 0016                 move.w     22(a4),d0
[0005dbf0] e240                      asr.w      #1,d0
[0005dbf2] 9240                      sub.w      d0,d1
[0005dbf4] 3028 0262                 move.w     610(a0),d0
[0005dbf8] 342c 0014                 move.w     20(a4),d2
[0005dbfc] e242                      asr.w      #1,d2
[0005dbfe] 9042                      sub.w      d2,d0
[0005dc00] 224c                      movea.l    a4,a1
[0005dc02] 2068 0258                 movea.l    600(a0),a0
[0005dc06] 4eb9 0004 948a            jsr        $0004948A
[0005dc0c] 3c80                      move.w     d0,(a6)
[0005dc0e] 5340                      subq.w     #1,d0
[0005dc10] 6f16                      ble.s      $0005DC28
[0005dc12] 122e 0001                 move.b     1(a6),d1
[0005dc16] d23c 00ff                 add.b      #$FF,d1
[0005dc1a] 1481                      move.b     d1,(a2)
[0005dc1c] 224a                      movea.l    a2,a1
[0005dc1e] 206f 0006                 movea.l    6(a7),a0
[0005dc22] 4240                      clr.w      d0
[0005dc24] 6100 f3f4                 bsr        $0005D01A
[0005dc28] 204c                      movea.l    a4,a0
[0005dc2a] 4eb9 0004 7e26            jsr        $00047E26
[0005dc30] 4fef 000a                 lea.l      10(a7),a7
[0005dc34] 4cdf 7408                 movem.l    (a7)+,d3/a2/a4-a6
[0005dc38] 4e75                      rts
Aus_boxed:
[0005dc3a] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dc40] 3028 0260                 move.w     608(a0),d0
[0005dc44] 2268 025c                 movea.l    604(a0),a1
[0005dc48] 2068 0258                 movea.l    600(a0),a0
[0005dc4c] 4eb9 0005 dc54            jsr        $0005DC54
[0005dc52] 4e75                      rts
Aus_objboxed:
[0005dc54] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0005dc58] 4fef ffae                 lea.l      -82(a7),a7
[0005dc5c] 2448                      movea.l    a0,a2
[0005dc5e] 2f49 004e                 move.l     a1,78(a7)
[0005dc62] 3c00                      move.w     d0,d6
[0005dc64] 7606                      moveq.l    #6,d3
[0005dc66] 7864                      moveq.l    #100,d4
[0005dc68] 7a02                      moveq.l    #2,d5
[0005dc6a] c07c 0fff                 and.w      #$0FFF,d0
[0005dc6e] 48c0                      ext.l      d0
[0005dc70] 2200                      move.l     d0,d1
[0005dc72] d281                      add.l      d1,d1
[0005dc74] d280                      add.l      d0,d1
[0005dc76] e789                      lsl.l      #3,d1
[0005dc78] d3c1                      adda.l     d1,a1
[0005dc7a] 2f49 004a                 move.l     a1,74(a7)
[0005dc7e] 2f69 000c 0046            move.l     12(a1),70(a7)
[0005dc84] 206f 0046                 movea.l    70(a7),a0
[0005dc88] 2868 0010                 movea.l    16(a0),a4
[0005dc8c] 0c29 0018 0007            cmpi.b     #$18,7(a1)
[0005dc92] 6600 0372                 bne        $0005E006
[0005dc96] 2408                      move.l     a0,d2
[0005dc98] 6700 036c                 beq        $0005E006
[0005dc9c] 2228 0008                 move.l     8(a0),d1
[0005dca0] 6700 0364                 beq        $0005E006
[0005dca4] 200c                      move.l     a4,d0
[0005dca6] 6700 035e                 beq        $0005E006
[0005dcaa] 42a7                      clr.l      -(a7)
[0005dcac] 42a7                      clr.l      -(a7)
[0005dcae] 42a7                      clr.l      -(a7)
[0005dcb0] 486f 000c                 pea.l      12(a7)
[0005dcb4] 4240                      clr.w      d0
[0005dcb6] 720a                      moveq.l    #10,d1
[0005dcb8] 4eb9 0007 14ea            jsr        $000714EA
[0005dcbe] 4fef 0010                 lea.l      16(a7),a7
[0005dcc2] 3017                      move.w     (a7),d0
[0005dcc4] 4eb9 0004 e5ea            jsr        $0004E5EA
[0005dcca] 3017                      move.w     (a7),d0
[0005dccc] 6f08                      ble.s      $0005DCD6
[0005dcce] 2208                      move.l     a0,d1
[0005dcd0] 6704                      beq.s      $0005DCD6
[0005dcd2] b5c1                      cmpa.l     d1,a2
[0005dcd4] 670c                      beq.s      $0005DCE2
[0005dcd6] 204a                      movea.l    a2,a0
[0005dcd8] 226a 006e                 movea.l    110(a2),a1
[0005dcdc] 4e91                      jsr        (a1)
[0005dcde] 6000 0326                 bra        $0005E006
[0005dce2] 2f4a 000c                 move.l     a2,12(a7)
[0005dce6] 2f6f 004a 0010            move.l     74(a7),16(a7)
[0005dcec] 3f46 0014                 move.w     d6,20(a7)
[0005dcf0] 43ef 000c                 lea.l      12(a7),a1
[0005dcf4] 7009                      moveq.l    #9,d0
[0005dcf6] 206f 004a                 movea.l    74(a7),a0
[0005dcfa] 266f 0046                 movea.l    70(a7),a3
[0005dcfe] 266b 0008                 movea.l    8(a3),a3
[0005dd02] 4e93                      jsr        (a3)
[0005dd04] 302a 001c                 move.w     28(a2),d0
[0005dd08] 6f0a                      ble.s      $0005DD14
[0005dd0a] bc40                      cmp.w      d0,d6
[0005dd0c] 6706                      beq.s      $0005DD14
[0005dd0e] 4eb9 0004 b286            jsr        $0004B286
[0005dd14] 3546 001c                 move.w     d6,28(a2)
[0005dd18] 4eb9 0004 b33c            jsr        $0004B33C
[0005dd1e] 302a 001c                 move.w     28(a2),d0
[0005dd22] 6b00 02e2                 bmi        $0005E006
[0005dd26] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dd2c] 2068 023c                 movea.l    572(a0),a0
[0005dd30] 41e8 0050                 lea.l      80(a0),a0
[0005dd34] 4eb9 0004 9898            jsr        $00049898
[0005dd3a] 47ef 0016                 lea.l      22(a7),a3
[0005dd3e] 7230                      moveq.l    #48,d1
[0005dd40] 4240                      clr.w      d0
[0005dd42] 204b                      movea.l    a3,a0
[0005dd44] 4eb9 0007 712e            jsr        $0007712E
[0005dd4a] 3006                      move.w     d6,d0
[0005dd4c] c07c 0fff                 and.w      #$0FFF,d0
[0005dd50] 226f 004e                 movea.l    78(a7),a1
[0005dd54] 41eb 0010                 lea.l      16(a3),a0
[0005dd58] 4eb9 0004 a3be            jsr        $0004A3BE
[0005dd5e] 302a 0034                 move.w     52(a2),d0
[0005dd62] d16b 0010                 add.w      d0,16(a3)
[0005dd66] 322a 0036                 move.w     54(a2),d1
[0005dd6a] d36b 0012                 add.w      d1,18(a3)
[0005dd6e] 45ef 000a                 lea.l      10(a7),a2
[0005dd72] 4252                      clr.w      (a2)
[0005dd74] 6020                      bra.s      $0005DD96
[0005dd76] 3012                      move.w     (a2),d0
[0005dd78] e748                      lsl.w      #3,d0
[0005dd7a] 4273 0002                 clr.w      2(a3,d0.w)
[0005dd7e] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dd84] 3028 000a                 move.w     10(a0),d0
[0005dd88] d068 000e                 add.w      14(a0),d0
[0005dd8c] 3212                      move.w     (a2),d1
[0005dd8e] e749                      lsl.w      #3,d1
[0005dd90] 3780 1006                 move.w     d0,6(a3,d1.w)
[0005dd94] 5252                      addq.w     #1,(a2)
[0005dd96] 0c52 0006                 cmpi.w     #$0006,(a2)
[0005dd9a] 6dda                      blt.s      $0005DD76
[0005dd9c] 3c2b 0010                 move.w     16(a3),d6
[0005dda0] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dda6] 3028 0012                 move.w     18(a0),d0
[0005ddaa] d040                      add.w      d0,d0
[0005ddac] 322b 0014                 move.w     20(a3),d1
[0005ddb0] b240                      cmp.w      d0,d1
[0005ddb2] 6f0c                      ble.s      $0005DDC0
[0005ddb4] 3428 0012                 move.w     18(a0),d2
[0005ddb8] d56b 0010                 add.w      d2,16(a3)
[0005ddbc] 916b 0014                 sub.w      d0,20(a3)
[0005ddc0] 2079 0010 1f12            movea.l    ACSblk,a0
[0005ddc6] 3028 0012                 move.w     18(a0),d0
[0005ddca] d040                      add.w      d0,d0
[0005ddcc] 3740 001c                 move.w     d0,28(a3)
[0005ddd0] 3740 000c                 move.w     d0,12(a3)
[0005ddd4] 322b 0010                 move.w     16(a3),d1
[0005ddd8] 9240                      sub.w      d0,d1
[0005ddda] 3741 0008                 move.w     d1,8(a3)
[0005ddde] 3741 0004                 move.w     d1,4(a3)
[0005dde2] 302b 0010                 move.w     16(a3),d0
[0005dde6] d06b 0014                 add.w      20(a3),d0
[0005ddea] 3740 0018                 move.w     d0,24(a3)
[0005ddee] d06b 001c                 add.w      28(a3),d0
[0005ddf2] 3740 0020                 move.w     d0,32(a3)
[0005ddf6] 3228 000c                 move.w     12(a0),d1
[0005ddfa] 9240                      sub.w      d0,d1
[0005ddfc] 3741 0024                 move.w     d1,36(a3)
[0005de00] 376c 021e 002c            move.w     542(a4),44(a3)
[0005de06] 3f68 0262 0004            move.w     610(a0),4(a7)
[0005de0c] 302f 0004                 move.w     4(a7),d0
[0005de10] 9046                      sub.w      d6,d0
[0005de12] 48c0                      ext.l      d0
[0005de14] 81ec 021e                 divs.w     542(a4),d0
[0005de18] d06c 021c                 add.w      540(a4),d0
[0005de1c] 3f40 0008                 move.w     d0,8(a7)
[0005de20] 3f40 0006                 move.w     d0,6(a7)
[0005de24] 43ef 0006                 lea.l      6(a7),a1
[0005de28] 206f 0046                 movea.l    70(a7),a0
[0005de2c] 2a68 0008                 movea.l    8(a0),a5
[0005de30] 206f 004a                 movea.l    74(a7),a0
[0005de34] 7011                      moveq.l    #17,d0
[0005de36] 4e95                      jsr        (a5)
[0005de38] 93c9                      suba.l     a1,a1
[0005de3a] 7005                      moveq.l    #5,d0
[0005de3c] 206f 004a                 movea.l    74(a7),a0
[0005de40] 2a6f 0046                 movea.l    70(a7),a5
[0005de44] 2a6d 0008                 movea.l    8(a5),a5
[0005de48] 4e95                      jsr        (a5)
[0005de4a] 206f 004a                 movea.l    74(a7),a0
[0005de4e] 3028 000a                 move.w     10(a0),d0
[0005de52] c07c 4000                 and.w      #$4000,d0
[0005de56] 6700 0170                 beq        $0005DFC8
[0005de5a] 3f6f 0006 0008            move.w     6(a7),8(a7)
[0005de60] 006c 0010 0222            ori.w      #$0010,546(a4)
[0005de66] 6000 0138                 bra        $0005DFA0
[0005de6a] 3e05                      move.w     d5,d7
[0005de6c] 2f39 000d 99d6            move.l     $000D99D6,-(a7)
[0005de72] 4852                      pea.l      (a2)
[0005de74] 4852                      pea.l      (a2)
[0005de76] 4852                      pea.l      (a2)
[0005de78] 4852                      pea.l      (a2)
[0005de7a] 486f 0016                 pea.l      22(a7)
[0005de7e] 3004                      move.w     d4,d0
[0005de80] 48c0                      ext.l      d0
[0005de82] 80bc 0000 0000            or.l       #$00000000,d0
[0005de88] 2f00                      move.l     d0,-(a7)
[0005de8a] 4267                      clr.w      -(a7)
[0005de8c] 4267                      clr.w      -(a7)
[0005de8e] 4267                      clr.w      -(a7)
[0005de90] 4267                      clr.w      -(a7)
[0005de92] 4267                      clr.w      -(a7)
[0005de94] 3207                      move.w     d7,d1
[0005de96] e749                      lsl.w      #3,d1
[0005de98] 3f33 1006                 move.w     6(a3,d1.w),-(a7)
[0005de9c] 3f33 1004                 move.w     4(a3,d1.w),-(a7)
[0005dea0] 3f33 1002                 move.w     2(a3,d1.w),-(a7)
[0005dea4] 3f33 1000                 move.w     0(a3,d1.w),-(a7)
[0005dea8] 7401                      moveq.l    #1,d2
[0005deaa] 3f02                      move.w     d2,-(a7)
[0005deac] 4267                      clr.w      -(a7)
[0005deae] 43ef 0036                 lea.l      54(a7),a1
[0005deb2] 91c8                      suba.l     a0,a0
[0005deb4] 2a79 0010 1f12            movea.l    ACSblk,a5
[0005deba] 342d 02ca                 move.w     714(a5),d2
[0005debe] 3003                      move.w     d3,d0
[0005dec0] 7201                      moveq.l    #1,d1
[0005dec2] 4eb9 0006 af70            jsr        $0006AF70
[0005dec8] 4fef 0032                 lea.l      50(a7),a7
[0005decc] 7202                      moveq.l    #2,d1
[0005dece] c240                      and.w      d0,d1
[0005ded0] 6600 011a                 bne        $0005DFEC
[0005ded4] 7404                      moveq.l    #4,d2
[0005ded6] c440                      and.w      d0,d2
[0005ded8] 6768                      beq.s      $0005DF42
[0005deda] 302f 0004                 move.w     4(a7),d0
[0005dede] 41eb 0010                 lea.l      16(a3),a0
[0005dee2] 322f 0002                 move.w     2(a7),d1
[0005dee6] 4eb9 0005 ef64            jsr        $0005EF64
[0005deec] 4a40                      tst.w      d0
[0005deee] 6704                      beq.s      $0005DEF4
[0005def0] 7a02                      moveq.l    #2,d5
[0005def2] 604e                      bra.s      $0005DF42
[0005def4] 322f 0002                 move.w     2(a7),d1
[0005def8] 302f 0004                 move.w     4(a7),d0
[0005defc] 41eb 0008                 lea.l      8(a3),a0
[0005df00] 4eb9 0005 ef64            jsr        $0005EF64
[0005df06] 4a40                      tst.w      d0
[0005df08] 6704                      beq.s      $0005DF0E
[0005df0a] 7a01                      moveq.l    #1,d5
[0005df0c] 6034                      bra.s      $0005DF42
[0005df0e] 322f 0002                 move.w     2(a7),d1
[0005df12] 302f 0004                 move.w     4(a7),d0
[0005df16] 204b                      movea.l    a3,a0
[0005df18] 4eb9 0005 ef64            jsr        $0005EF64
[0005df1e] 4a40                      tst.w      d0
[0005df20] 6704                      beq.s      $0005DF26
[0005df22] 4245                      clr.w      d5
[0005df24] 601c                      bra.s      $0005DF42
[0005df26] 322f 0002                 move.w     2(a7),d1
[0005df2a] 302f 0004                 move.w     4(a7),d0
[0005df2e] 41eb 0018                 lea.l      24(a3),a0
[0005df32] 4eb9 0005 ef64            jsr        $0005EF64
[0005df38] 4a40                      tst.w      d0
[0005df3a] 6704                      beq.s      $0005DF40
[0005df3c] 7a03                      moveq.l    #3,d5
[0005df3e] 6002                      bra.s      $0005DF42
[0005df40] 7a04                      moveq.l    #4,d5
[0005df42] 867c 0020                 or.w       #$0020,d3
[0005df46] 3005                      move.w     d5,d0
[0005df48] b07c 0004                 cmp.w      #$0004,d0
[0005df4c] 6248                      bhi.s      $0005DF96
[0005df4e] d040                      add.w      d0,d0
[0005df50] 303b 0006                 move.w     $0005DF58(pc,d0.w),d0
[0005df54] 4efb 0002                 jmp        $0005DF58(pc,d0.w)
J56:
[0005df58] 000a                      dc.w $000a   ; $0005df62-$0005df58
[0005df5a] 0010                      dc.w $0010   ; $0005df68-$0005df58
[0005df5c] 0016                      dc.w $0016   ; $0005df6e-$0005df58
[0005df5e] 0030                      dc.w $0030   ; $0005df88-$0005df58
[0005df60] 0038                      dc.w $0038   ; $0005df90-$0005df58
[0005df62] 536f 0008                 subq.w     #1,8(a7)
[0005df66] 602c                      bra.s      $0005DF94
[0005df68] 536f 0008                 subq.w     #1,8(a7)
[0005df6c] 601e                      bra.s      $0005DF8C
[0005df6e] 302f 0004                 move.w     4(a7),d0
[0005df72] 9046                      sub.w      d6,d0
[0005df74] 48c0                      ext.l      d0
[0005df76] 81ec 021e                 divs.w     542(a4),d0
[0005df7a] d06c 021c                 add.w      540(a4),d0
[0005df7e] 3f40 0008                 move.w     d0,8(a7)
[0005df82] c67c ffdf                 and.w      #$FFDF,d3
[0005df86] 600e                      bra.s      $0005DF96
[0005df88] 526f 0008                 addq.w     #1,8(a7)
[0005df8c] 7864                      moveq.l    #100,d4
[0005df8e] 6006                      bra.s      $0005DF96
[0005df90] 526f 0008                 addq.w     #1,8(a7)
[0005df94] 781e                      moveq.l    #30,d4
[0005df96] 302f 0008                 move.w     8(a7),d0
[0005df9a] 6a04                      bpl.s      $0005DFA0
[0005df9c] 426f 0008                 clr.w      8(a7)
[0005dfa0] 43ef 0006                 lea.l      6(a7),a1
[0005dfa4] 303c 02c2                 move.w     #$02C2,d0
[0005dfa8] 206f 004a                 movea.l    74(a7),a0
[0005dfac] 2a6f 0046                 movea.l    70(a7),a5
[0005dfb0] 2a6d 0008                 movea.l    8(a5),a5
[0005dfb4] 4e95                      jsr        (a5)
[0005dfb6] 93c9                      suba.l     a1,a1
[0005dfb8] 7005                      moveq.l    #5,d0
[0005dfba] 206f 004a                 movea.l    74(a7),a0
[0005dfbe] 2a6f 0046                 movea.l    70(a7),a5
[0005dfc2] 2a6d 0008                 movea.l    8(a5),a5
[0005dfc6] 4e95                      jsr        (a5)
[0005dfc8] ba7c 0002                 cmp.w      #$0002,d5
[0005dfcc] 6600 fe9c                 bne        $0005DE6A
[0005dfd0] 302f 0004                 move.w     4(a7),d0
[0005dfd4] 9046                      sub.w      d6,d0
[0005dfd6] 48c0                      ext.l      d0
[0005dfd8] 81ec 021e                 divs.w     542(a4),d0
[0005dfdc] c1ec 021e                 muls.w     542(a4),d0
[0005dfe0] d046                      add.w      d6,d0
[0005dfe2] 3740 0028                 move.w     d0,40(a3)
[0005dfe6] 7e05                      moveq.l    #5,d7
[0005dfe8] 6000 fe82                 bra        $0005DE6C
[0005dfec] 026c ffef 0222            andi.w     #$FFEF,546(a4)
[0005dff2] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dff8] 2068 023c                 movea.l    572(a0),a0
[0005dffc] 41e8 0050                 lea.l      80(a0),a0
[0005e000] 4eb9 0004 9898            jsr        $00049898
[0005e006] 4fef 0052                 lea.l      82(a7),a7
[0005e00a] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0005e00e] 4e75                      rts
Auo_boxed:
[0005e010] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0005e014] 4fef ffda                 lea.l      -38(a7),a7
[0005e018] 2448                      movea.l    a0,a2
[0005e01a] 3600                      move.w     d0,d3
[0005e01c] 2f49 0022                 move.l     a1,34(a7)
[0005e020] 2f6a 000c 001e            move.l     12(a2),30(a7)
[0005e026] 206f 001e                 movea.l    30(a7),a0
[0005e02a] 5848                      addq.w     #4,a0
[0005e02c] 2e88                      move.l     a0,(a7)
[0005e02e] 226f 001e                 movea.l    30(a7),a1
[0005e032] 2a69 0010                 movea.l    16(a1),a5
[0005e036] 5340                      subq.w     #1,d0
[0005e038] 6706                      beq.s      $0005E040
[0005e03a] 2f6d 0204 001a            move.l     516(a5),26(a7)
[0005e040] 3003                      move.w     d3,d0
[0005e042] b07c 0009                 cmp.w      #$0009,d0
[0005e046] 6700 012a                 beq        $0005E172
[0005e04a] 6e20                      bgt.s      $0005E06C
[0005e04c] b07c 0006                 cmp.w      #$0006,d0
[0005e050] 6200 03c2                 bhi        $0005E414
[0005e054] d040                      add.w      d0,d0
[0005e056] 303b 0006                 move.w     $0005E05E(pc,d0.w),d0
[0005e05a] 4efb 0002                 jmp        $0005E05E(pc,d0.w)
J57:
[0005e05e] 03b6                      dc.w $03b6   ; $0005e414-$0005e05e
[0005e060] 003c                      dc.w $003c   ; $0005e09a-$0005e05e
[0005e062] 0158                      dc.w $0158   ; $0005e1b6-$0005e05e
[0005e064] 0192                      dc.w $0192   ; $0005e1f0-$0005e05e
[0005e066] 016a                      dc.w $016a   ; $0005e1c8-$0005e05e
[0005e068] 01c0                      dc.w $01c0   ; $0005e21e-$0005e05e
[0005e06a] 01ba                      dc.w $01ba   ; $0005e218-$0005e05e
[0005e06c] b07c                      dc.w $b07c   ; $000590da-$0005e05e
[0005e06e] 0014                      dc.w $0014   ; $0005e072-$0005e05e
[0005e070] 6700                      dc.w $6700   ; $0006475e-$0005e05e
[0005e072] 0954                      bchg       d4,(a4)
[0005e074] 6e12                      bgt.s      $0005E088
[0005e076] 907c 0012                 sub.w      #$0012,d0
[0005e07a] 6700 0122                 beq        $0005E19E
[0005e07e] 5340                      subq.w     #1,d0
[0005e080] 6700 0944                 beq        $0005E9C6
[0005e084] 6000 038e                 bra        $0005E414
[0005e088] 907c 02c0                 sub.w      #$02C0,d0
[0005e08c] 6700 0366                 beq        $0005E3F4
[0005e090] 5340                      subq.w     #1,d0
[0005e092] 6700 0370                 beq        $0005E404
[0005e096] 6000 037c                 bra        $0005E414
[0005e09a] 206f 001e                 movea.l    30(a7),a0
[0005e09e] 2668 000c                 movea.l    12(a0),a3
[0005e0a2] 203c 0000 0224            move.l     #$00000224,d0
[0005e0a8] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005e0ae] 2a48                      movea.l    a0,a5
[0005e0b0] 206f 001e                 movea.l    30(a7),a0
[0005e0b4] 214d 0010                 move.l     a5,16(a0)
[0005e0b8] 200d                      move.l     a5,d0
[0005e0ba] 6700 0906                 beq        $0005E9C2
[0005e0be] 223c 0000 0224            move.l     #$00000224,d1
[0005e0c4] 204d                      movea.l    a5,a0
[0005e0c6] 4240                      clr.w      d0
[0005e0c8] 4eb9 0007 712e            jsr        $0007712E
[0005e0ce] 206f 001e                 movea.l    30(a7),a0
[0005e0d2] 214d 000c                 move.l     a5,12(a0)
[0005e0d6] 2257                      movea.l    (a7),a1
[0005e0d8] 3029 0002                 move.w     2(a1),d0
[0005e0dc] e448                      lsr.w      #2,d0
[0005e0de] c07c 0001                 and.w      #$0001,d0
[0005e0e2] 673c                      beq.s      $0005E120
[0005e0e4] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e0ea] 3228 0294                 move.w     660(a0),d1
[0005e0ee] 3028 0010                 move.w     16(a0),d0
[0005e0f2] 4eb9 0006 5216            jsr        $00065216
[0005e0f8] 486d 0220                 pea.l      544(a5)
[0005e0fc] 486d 021e                 pea.l      542(a5)
[0005e100] 43ef 0010                 lea.l      16(a7),a1
[0005e104] 41ef 0010                 lea.l      16(a7),a0
[0005e108] 2c79 0010 1f12            movea.l    ACSblk,a6
[0005e10e] 322e 0296                 move.w     662(a6),d1
[0005e112] 302e 0010                 move.w     16(a6),d0
[0005e116] 4eb9 0006 50a0            jsr        $000650A0
[0005e11c] 504f                      addq.w     #8,a7
[0005e11e] 603a                      bra.s      $0005E15A
[0005e120] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e126] 3228 0290                 move.w     656(a0),d1
[0005e12a] 3028 0010                 move.w     16(a0),d0
[0005e12e] 4eb9 0006 5216            jsr        $00065216
[0005e134] 486d 0220                 pea.l      544(a5)
[0005e138] 486d 021e                 pea.l      542(a5)
[0005e13c] 43ef 0010                 lea.l      16(a7),a1
[0005e140] 41ef 0010                 lea.l      16(a7),a0
[0005e144] 2c79 0010 1f12            movea.l    ACSblk,a6
[0005e14a] 322e 0292                 move.w     658(a6),d1
[0005e14e] 302e 0010                 move.w     16(a6),d0
[0005e152] 4eb9 0006 50a0            jsr        $000650A0
[0005e158] 504f                      addq.w     #8,a7
[0005e15a] 200b                      move.l     a3,d0
[0005e15c] 670a                      beq.s      $0005E168
[0005e15e] 224b                      movea.l    a3,a1
[0005e160] 204a                      movea.l    a2,a0
[0005e162] 7001                      moveq.l    #1,d0
[0005e164] 6100 eeb4                 bsr        $0005D01A
[0005e168] 3b7c 0004 0222            move.w     #$0004,546(a5)
[0005e16e] 6000 0856                 bra        $0005E9C6
[0005e172] 286f 0022                 movea.l    34(a7),a4
[0005e176] 2b54 0204                 move.l     (a4),516(a5)
[0005e17a] 2b6c 0004 0208            move.l     4(a4),520(a5)
[0005e180] 3b6c 0008 020c            move.w     8(a4),524(a5)
[0005e186] 2054                      movea.l    (a4),a0
[0005e188] 41e8 001e                 lea.l      30(a0),a0
[0005e18c] 2b48 0210                 move.l     a0,528(a5)
[0005e190] 2254                      movea.l    (a4),a1
[0005e192] 43e9 0052                 lea.l      82(a1),a1
[0005e196] 2b49 0214                 move.l     a1,532(a5)
[0005e19a] 6000 082a                 bra        $0005E9C6
[0005e19e] 286f 0022                 movea.l    34(a7),a4
[0005e1a2] 28ad 0204                 move.l     516(a5),(a4)
[0005e1a6] 296d 0208 0004            move.l     520(a5),4(a4)
[0005e1ac] 396d 020c 0008            move.w     524(a5),8(a4)
[0005e1b2] 6000 0812                 bra        $0005E9C6
[0005e1b6] 206f 001e                 movea.l    30(a7),a0
[0005e1ba] 2068 0010                 movea.l    16(a0),a0
[0005e1be] 4eb9 0004 7e26            jsr        $00047E26
[0005e1c4] 6000 0800                 bra        $0005E9C6
[0005e1c8] 202f 001a                 move.l     26(a7),d0
[0005e1cc] 6700 07f4                 beq        $0005E9C2
[0005e1d0] 222d 0210                 move.l     528(a5),d1
[0005e1d4] 6700 07ec                 beq        $0005E9C2
[0005e1d8] 242d 0214                 move.l     532(a5),d2
[0005e1dc] 6700 07e4                 beq        $0005E9C2
[0005e1e0] 2041                      movea.l    d1,a0
[0005e1e2] 4250                      clr.w      (a0)
[0005e1e4] 206d 0214                 movea.l    532(a5),a0
[0005e1e8] 30ad 020e                 move.w     526(a5),(a0)
[0005e1ec] 6000 0216                 bra        $0005E404
[0005e1f0] 202f 001a                 move.l     26(a7),d0
[0005e1f4] 6700 07cc                 beq        $0005E9C2
[0005e1f8] 222d 0210                 move.l     528(a5),d1
[0005e1fc] 6700 07c4                 beq        $0005E9C2
[0005e200] 242d 0214                 move.l     532(a5),d2
[0005e204] 6700 07bc                 beq        $0005E9C2
[0005e208] 206f 001e                 movea.l    30(a7),a0
[0005e20c] 226f 0022                 movea.l    34(a7),a1
[0005e210] 22a8 000c                 move.l     12(a0),(a1)
[0005e214] 6000 07b0                 bra        $0005E9C6
[0005e218] 006d 0004 0222            ori.w      #$0004,546(a5)
[0005e21e] 202f 001a                 move.l     26(a7),d0
[0005e222] 6700 079e                 beq        $0005E9C2
[0005e226] 222d 0210                 move.l     528(a5),d1
[0005e22a] 6700 0796                 beq        $0005E9C2
[0005e22e] 242d 0214                 move.l     532(a5),d2
[0005e232] 6700 078e                 beq        $0005E9C2
[0005e236] 2042                      movea.l    d2,a0
[0005e238] 3810                      move.w     (a0),d4
[0005e23a] 2240                      movea.l    d0,a1
[0005e23c] 3229 001c                 move.w     28(a1),d1
[0005e240] b26d 020c                 cmp.w      524(a5),d1
[0005e244] 6624                      bne.s      $0005E26A
[0005e246] 4a44                      tst.w      d4
[0005e248] 6f20                      ble.s      $0005E26A
[0005e24a] 3004                      move.w     d4,d0
[0005e24c] 48c0                      ext.l      d0
[0005e24e] 286d 0210                 movea.l    528(a5),a4
[0005e252] 3414                      move.w     (a4),d2
[0005e254] 43f5 2000                 lea.l      0(a5,d2.w),a1
[0005e258] 43e9 0100                 lea.l      256(a1),a1
[0005e25c] 204d                      movea.l    a5,a0
[0005e25e] 4eb9 0007 6f44            jsr        $00076F44
[0005e264] 4235 4000                 clr.b      0(a5,d4.w)
[0005e268] 600c                      bra.s      $0005E276
[0005e26a] 43ed 0100                 lea.l      256(a5),a1
[0005e26e] 204d                      movea.l    a5,a0
[0005e270] 4eb9 0007 6950            jsr        $00076950
[0005e276] 7007                      moveq.l    #7,d0
[0005e278] c06d 0222                 and.w      546(a5),d0
[0005e27c] 6700 0162                 beq        $0005E3E0
[0005e280] 322d 020c                 move.w     524(a5),d1
[0005e284] c27c 1000                 and.w      #$1000,d1
[0005e288] 670a                      beq.s      $0005E294
[0005e28a] 206f 001a                 movea.l    26(a7),a0
[0005e28e] 2868 0018                 movea.l    24(a0),a4
[0005e292] 6008                      bra.s      $0005E29C
[0005e294] 206f 001a                 movea.l    26(a7),a0
[0005e298] 2868 0014                 movea.l    20(a0),a4
[0005e29c] 3e2a 000a                 move.w     10(a2),d7
[0005e2a0] 3c2a 0008                 move.w     8(a2),d6
[0005e2a4] 026a ffcf 000a            andi.w     #$FFCF,10(a2)
[0005e2aa] 026a bff7 0008            andi.w     #$BFF7,8(a2)
[0005e2b0] 302d 020c                 move.w     524(a5),d0
[0005e2b4] c07c 0fff                 and.w      #$0FFF,d0
[0005e2b8] 224c                      movea.l    a4,a1
[0005e2ba] 41ef 0012                 lea.l      18(a7),a0
[0005e2be] 4eb9 0004 a3be            jsr        $0004A3BE
[0005e2c4] 3547 000a                 move.w     d7,10(a2)
[0005e2c8] 3546 0008                 move.w     d6,8(a2)
[0005e2cc] 206f 001a                 movea.l    26(a7),a0
[0005e2d0] 3028 0034                 move.w     52(a0),d0
[0005e2d4] d16f 0012                 add.w      d0,18(a7)
[0005e2d8] 3228 0036                 move.w     54(a0),d1
[0005e2dc] d36f 0014                 add.w      d1,20(a7)
[0005e2e0] 49ef 000a                 lea.l      10(a7),a4
[0005e2e4] 396f 0014 0002            move.w     20(a7),2(a4)
[0005e2ea] 396f 0018 0006            move.w     24(a7),6(a4)
[0005e2f0] 7007                      moveq.l    #7,d0
[0005e2f2] c06d 0222                 and.w      546(a5),d0
[0005e2f6] 5340                      subq.w     #1,d0
[0005e2f8] 6654                      bne.s      $0005E34E
[0005e2fa] 322d 0218                 move.w     536(a5),d1
[0005e2fe] 206d 0210                 movea.l    528(a5),a0
[0005e302] b250                      cmp.w      (a0),d1
[0005e304] 6700 00d4                 beq        $0005E3DA
[0005e308] 397c 0001 0004            move.w     #$0001,4(a4)
[0005e30e] 4a41                      tst.w      d1
[0005e310] 6b20                      bmi.s      $0005E332
[0005e312] 926d 021c                 sub.w      540(a5),d1
[0005e316] c3ed 021e                 muls.w     542(a5),d1
[0005e31a] d26f 0012                 add.w      18(a7),d1
[0005e31e] 5241                      addq.w     #1,d1
[0005e320] 3881                      move.w     d1,(a4)
[0005e322] 224c                      movea.l    a4,a1
[0005e324] 2c6f 001a                 movea.l    26(a7),a6
[0005e328] 2c6e 006a                 movea.l    106(a6),a6
[0005e32c] 206f 001a                 movea.l    26(a7),a0
[0005e330] 4e96                      jsr        (a6)
[0005e332] 206d 0210                 movea.l    528(a5),a0
[0005e336] 3010                      move.w     (a0),d0
[0005e338] 6b00 00a0                 bmi        $0005E3DA
[0005e33c] 906d 021c                 sub.w      540(a5),d0
[0005e340] c1ed 021e                 muls.w     542(a5),d0
[0005e344] d06f 0012                 add.w      18(a7),d0
[0005e348] 5240                      addq.w     #1,d0
[0005e34a] 3880                      move.w     d0,(a4)
[0005e34c] 6066                      bra.s      $0005E3B4
[0005e34e] 7007                      moveq.l    #7,d0
[0005e350] c06d 0222                 and.w      546(a5),d0
[0005e354] 5540                      subq.w     #2,d0
[0005e356] 666e                      bne.s      $0005E3C6
[0005e358] 322d 0218                 move.w     536(a5),d1
[0005e35c] 206d 0210                 movea.l    528(a5),a0
[0005e360] b250                      cmp.w      (a0),d1
[0005e362] 660c                      bne.s      $0005E370
[0005e364] 342d 021a                 move.w     538(a5),d2
[0005e368] 226d 0214                 movea.l    532(a5),a1
[0005e36c] b451                      cmp.w      (a1),d2
[0005e36e] 676a                      beq.s      $0005E3DA
[0005e370] 206d 0210                 movea.l    528(a5),a0
[0005e374] 3010                      move.w     (a0),d0
[0005e376] b06d 0218                 cmp.w      536(a5),d0
[0005e37a] 6c04                      bge.s      $0005E380
[0005e37c] 3a00                      move.w     d0,d5
[0005e37e] 6004                      bra.s      $0005E384
[0005e380] 3a2d 0218                 move.w     536(a5),d5
[0005e384] 206d 0214                 movea.l    532(a5),a0
[0005e388] 3010                      move.w     (a0),d0
[0005e38a] b06d 021a                 cmp.w      538(a5),d0
[0005e38e] 6f04                      ble.s      $0005E394
[0005e390] 3800                      move.w     d0,d4
[0005e392] 6004                      bra.s      $0005E398
[0005e394] 382d 021a                 move.w     538(a5),d4
[0005e398] 3005                      move.w     d5,d0
[0005e39a] 906d 021c                 sub.w      540(a5),d0
[0005e39e] c1ed 021e                 muls.w     542(a5),d0
[0005e3a2] d06f 0012                 add.w      18(a7),d0
[0005e3a6] 3880                      move.w     d0,(a4)
[0005e3a8] 3204                      move.w     d4,d1
[0005e3aa] c3ed 021e                 muls.w     542(a5),d1
[0005e3ae] 5441                      addq.w     #2,d1
[0005e3b0] 3941 0004                 move.w     d1,4(a4)
[0005e3b4] 224c                      movea.l    a4,a1
[0005e3b6] 206f 001a                 movea.l    26(a7),a0
[0005e3ba] 2c6f 001a                 movea.l    26(a7),a6
[0005e3be] 2c6e 006a                 movea.l    106(a6),a6
[0005e3c2] 4e96                      jsr        (a6)
[0005e3c4] 6014                      bra.s      $0005E3DA
[0005e3c6] 72ff                      moveq.l    #-1,d1
[0005e3c8] 302d 020c                 move.w     524(a5),d0
[0005e3cc] 206d 0204                 movea.l    516(a5),a0
[0005e3d0] 226d 0204                 movea.l    516(a5),a1
[0005e3d4] 2269 0066                 movea.l    102(a1),a1
[0005e3d8] 4e91                      jsr        (a1)
[0005e3da] 026d fff8 0222            andi.w     #$FFF8,546(a5)
[0005e3e0] 206d 0210                 movea.l    528(a5),a0
[0005e3e4] 3b50 0218                 move.w     (a0),536(a5)
[0005e3e8] 206d 0214                 movea.l    532(a5),a0
[0005e3ec] 3b50 021a                 move.w     (a0),538(a5)
[0005e3f0] 6000 05d4                 bra        $0005E9C6
[0005e3f4] 4240                      clr.w      d0
[0005e3f6] 226f 0022                 movea.l    34(a7),a1
[0005e3fa] 204a                      movea.l    a2,a0
[0005e3fc] 6100 ec1c                 bsr        $0005D01A
[0005e400] 6000 05c4                 bra        $0005E9C6
[0005e404] 7001                      moveq.l    #1,d0
[0005e406] 226f 0022                 movea.l    34(a7),a1
[0005e40a] 204a                      movea.l    a2,a0
[0005e40c] 6100 ec0c                 bsr        $0005D01A
[0005e410] 6000 05b4                 bra        $0005E9C6
[0005e414] 206f 001a                 movea.l    26(a7),a0
[0005e418] 3028 001c                 move.w     28(a0),d0
[0005e41c] b06d 020c                 cmp.w      524(a5),d0
[0005e420] 6600 05a0                 bne        $0005E9C2
[0005e424] 222d 0210                 move.l     528(a5),d1
[0005e428] 6700 0598                 beq        $0005E9C2
[0005e42c] 242d 0214                 move.l     532(a5),d2
[0005e430] 6700 0590                 beq        $0005E9C2
[0005e434] 3803                      move.w     d3,d4
[0005e436] b87c 02c4                 cmp.w      #$02C4,d4
[0005e43a] 6700 0450                 beq        $0005E88C
[0005e43e] 6e44                      bgt.s      $0005E484
[0005e440] b87c 02bd                 cmp.w      #$02BD,d4
[0005e444] 6700 01f2                 beq        $0005E638
[0005e448] 6e1c                      bgt.s      $0005E466
[0005e44a] 987c 000e                 sub.w      #$000E,d4
[0005e44e] 675a                      beq.s      $0005E4AA
[0005e450] 5344                      subq.w     #1,d4
[0005e452] 6774                      beq.s      $0005E4C8
[0005e454] 5544                      subq.w     #2,d4
[0005e456] 6700 0098                 beq        $0005E4F0
[0005e45a] 987c 02ab                 sub.w      #$02AB,d4
[0005e45e] 6700 0134                 beq        $0005E594
[0005e462] 6000 055e                 bra        $0005E9C2
[0005e466] 987c 02be                 sub.w      #$02BE,d4
[0005e46a] 6700 00ba                 beq        $0005E526
[0005e46e] 5344                      subq.w     #1,d4
[0005e470] 6700 0156                 beq        $0005E5C8
[0005e474] 5744                      subq.w     #3,d4
[0005e476] 6700 01f0                 beq        $0005E668
[0005e47a] 5344                      subq.w     #1,d4
[0005e47c] 6700 0346                 beq        $0005E7C4
[0005e480] 6000 0540                 bra        $0005E9C2
[0005e484] 987c 02c5                 sub.w      #$02C5,d4
[0005e488] b87c 0007                 cmp.w      #$0007,d4
[0005e48c] 6200 0534                 bhi        $0005E9C2
[0005e490] d844                      add.w      d4,d4
[0005e492] 383b 4006                 move.w     $0005E49A(pc,d4.w),d4
[0005e496] 4efb 4002                 jmp        $0005E49A(pc,d4.w)
J58:
[0005e49a] 0358                      dc.w $0358   ; $0005e7f2-$0005e49a
[0005e49c] 0344                      dc.w $0344   ; $0005e7de-$0005e49a
[0005e49e] 04b8                      dc.w $04b8   ; $0005e952-$0005e49a
[0005e4a0] 0426                      dc.w $0426   ; $0005e8c0-$0005e49a
[0005e4a2] 0412                      dc.w $0412   ; $0005e8ac-$0005e49a
[0005e4a4] 04e8                      dc.w $04e8   ; $0005e982-$0005e49a
[0005e4a6] 04f8                      dc.w $04f8   ; $0005e992-$0005e49a
[0005e4a8] 0520                      dc.w $0520   ; $0005e9ba-$0005e49a
[0005e4aa] 206d                      dc.w $206d   ; $00060507-$0005e49a
[0005e4ac] 0214                      dc.w $0214   ; $0005e6ae-$0005e49a
[0005e4ae] 3010                      dc.w $3010   ; $000614aa-$0005e49a
[0005e4b0] 6f08                      dc.w $6f08   ; $000653a2-$0005e49a
[0005e4b2] 006d                      dc.w $006d   ; $0005e507-$0005e49a
[0005e4b4] 0004                      dc.w $0004   ; $0005e49e-$0005e49a
[0005e4b6] 0222 6006                 andi.b     #$06,-(a2)
[0005e4ba] 006d 0001 0222            ori.w      #$0001,546(a5)
[0005e4c0] 206d 0210                 movea.l    528(a5),a0
[0005e4c4] 4250                      clr.w      (a0)
[0005e4c6] 601e                      bra.s      $0005E4E6
[0005e4c8] 206d 0214                 movea.l    532(a5),a0
[0005e4cc] 3010                      move.w     (a0),d0
[0005e4ce] 6f08                      ble.s      $0005E4D8
[0005e4d0] 006d 0004 0222            ori.w      #$0004,546(a5)
[0005e4d6] 6006                      bra.s      $0005E4DE
[0005e4d8] 006d 0001 0222            ori.w      #$0001,546(a5)
[0005e4de] 206d 0210                 movea.l    528(a5),a0
[0005e4e2] 30ad 020e                 move.w     526(a5),(a0)
[0005e4e6] 206d 0214                 movea.l    532(a5),a0
[0005e4ea] 4250                      clr.w      (a0)
[0005e4ec] 6000 015e                 bra        $0005E64C
[0005e4f0] 206f 0022                 movea.l    34(a7),a0
[0005e4f4] 226d 0210                 movea.l    528(a5),a1
[0005e4f8] 3290                      move.w     (a0),(a1)
[0005e4fa] 226d 0214                 movea.l    532(a5),a1
[0005e4fe] 3011                      move.w     (a1),d0
[0005e500] 6f08                      ble.s      $0005E50A
[0005e502] 4251                      clr.w      (a1)
[0005e504] 006d 0004 0222            ori.w      #$0004,546(a5)
[0005e50a] 206d 0210                 movea.l    528(a5),a0
[0005e50e] 3010                      move.w     (a0),d0
[0005e510] 6b08                      bmi.s      $0005E51A
[0005e512] b06d 020e                 cmp.w      526(a5),d0
[0005e516] 6f00 0118                 ble        $0005E630
[0005e51a] 206d 0210                 movea.l    528(a5),a0
[0005e51e] 30ad 020e                 move.w     526(a5),(a0)
[0005e522] 6000 010c                 bra        $0005E630
[0005e526] 206d 0214                 movea.l    532(a5),a0
[0005e52a] 3010                      move.w     (a0),d0
[0005e52c] 6666                      bne.s      $0005E594
[0005e52e] 226d 0210                 movea.l    528(a5),a1
[0005e532] 3211                      move.w     (a1),d1
[0005e534] b26d 020e                 cmp.w      526(a5),d1
[0005e538] 6700 048c                 beq        $0005E9C6
[0005e53c] 47ed 0100                 lea.l      256(a5),a3
[0005e540] 3c01                      move.w     d1,d6
[0005e542] 6002                      bra.s      $0005E546
[0005e544] 5246                      addq.w     #1,d6
[0005e546] bc6d 020e                 cmp.w      526(a5),d6
[0005e54a] 6c1e                      bge.s      $0005E56A
[0005e54c] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e550] 4880                      ext.w      d0
[0005e552] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e558] 41e8 03e6                 lea.l      998(a0),a0
[0005e55c] 4eb9 0007 68ce            jsr        $000768CE
[0005e562] 2008                      move.l     a0,d0
[0005e564] 67de                      beq.s      $0005E544
[0005e566] 6002                      bra.s      $0005E56A
[0005e568] 5246                      addq.w     #1,d6
[0005e56a] bc6d 020e                 cmp.w      526(a5),d6
[0005e56e] 6c1a                      bge.s      $0005E58A
[0005e570] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e574] 4880                      ext.w      d0
[0005e576] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e57c] 41e8 03e6                 lea.l      998(a0),a0
[0005e580] 4eb9 0007 68ce            jsr        $000768CE
[0005e586] 2008                      move.l     a0,d0
[0005e588] 66de                      bne.s      $0005E568
[0005e58a] 206d 0210                 movea.l    528(a5),a0
[0005e58e] 3086                      move.w     d6,(a0)
[0005e590] 6000 009e                 bra        $0005E630
[0005e594] 206d 0214                 movea.l    532(a5),a0
[0005e598] 3010                      move.w     (a0),d0
[0005e59a] 6f0a                      ble.s      $0005E5A6
[0005e59c] 226d 0210                 movea.l    528(a5),a1
[0005e5a0] d151                      add.w      d0,(a1)
[0005e5a2] 6000 009c                 bra        $0005E640
[0005e5a6] 206d 0210                 movea.l    528(a5),a0
[0005e5aa] 3010                      move.w     (a0),d0
[0005e5ac] b06d 020e                 cmp.w      526(a5),d0
[0005e5b0] 6c00 0414                 bge        $0005E9C6
[0005e5b4] 5250                      addq.w     #1,(a0)
[0005e5b6] 70ff                      moveq.l    #-1,d0
[0005e5b8] 204a                      movea.l    a2,a0
[0005e5ba] 6100 f476                 bsr        $0005DA32
[0005e5be] 006d 0001 0222            ori.w      #$0001,546(a5)
[0005e5c4] 6000 0400                 bra        $0005E9C6
[0005e5c8] 206d 0214                 movea.l    532(a5),a0
[0005e5cc] 3010                      move.w     (a0),d0
[0005e5ce] 6668                      bne.s      $0005E638
[0005e5d0] 226d 0210                 movea.l    528(a5),a1
[0005e5d4] 3211                      move.w     (a1),d1
[0005e5d6] 6700 03ee                 beq        $0005E9C6
[0005e5da] 47ed 0100                 lea.l      256(a5),a3
[0005e5de] 7cff                      moveq.l    #-1,d6
[0005e5e0] dc41                      add.w      d1,d6
[0005e5e2] 6002                      bra.s      $0005E5E6
[0005e5e4] 5346                      subq.w     #1,d6
[0005e5e6] 4a46                      tst.w      d6
[0005e5e8] 6b1e                      bmi.s      $0005E608
[0005e5ea] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e5ee] 4880                      ext.w      d0
[0005e5f0] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e5f6] 41e8 03e6                 lea.l      998(a0),a0
[0005e5fa] 4eb9 0007 68ce            jsr        $000768CE
[0005e600] 2008                      move.l     a0,d0
[0005e602] 66e0                      bne.s      $0005E5E4
[0005e604] 6002                      bra.s      $0005E608
[0005e606] 5346                      subq.w     #1,d6
[0005e608] 4a46                      tst.w      d6
[0005e60a] 6b1a                      bmi.s      $0005E626
[0005e60c] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e610] 4880                      ext.w      d0
[0005e612] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e618] 41e8 03e6                 lea.l      998(a0),a0
[0005e61c] 4eb9 0007 68ce            jsr        $000768CE
[0005e622] 2008                      move.l     a0,d0
[0005e624] 67e0                      beq.s      $0005E606
[0005e626] 7001                      moveq.l    #1,d0
[0005e628] d046                      add.w      d6,d0
[0005e62a] 206d 0210                 movea.l    528(a5),a0
[0005e62e] 3080                      move.w     d0,(a0)
[0005e630] 006d 0001 0222            ori.w      #$0001,546(a5)
[0005e636] 6014                      bra.s      $0005E64C
[0005e638] 206d 0214                 movea.l    532(a5),a0
[0005e63c] 3010                      move.w     (a0),d0
[0005e63e] 6f18                      ble.s      $0005E658
[0005e640] 206d 0214                 movea.l    532(a5),a0
[0005e644] 4250                      clr.w      (a0)
[0005e646] 006d 0004 0222            ori.w      #$0004,546(a5)
[0005e64c] 70ff                      moveq.l    #-1,d0
[0005e64e] 204a                      movea.l    a2,a0
[0005e650] 6100 f3e0                 bsr        $0005DA32
[0005e654] 6000 0370                 bra        $0005E9C6
[0005e658] 206d 0210                 movea.l    528(a5),a0
[0005e65c] 3010                      move.w     (a0),d0
[0005e65e] 6f00 0366                 ble        $0005E9C6
[0005e662] 5350                      subq.w     #1,(a0)
[0005e664] 6000 ff50                 bra        $0005E5B6
[0005e668] 286f 0022                 movea.l    34(a7),a4
[0005e66c] 3014                      move.w     (a4),d0
[0005e66e] b06c 0002                 cmp.w      2(a4),d0
[0005e672] 6c08                      bge.s      $0005E67C
[0005e674] 3a00                      move.w     d0,d5
[0005e676] 3e2c 0002                 move.w     2(a4),d7
[0005e67a] 6006                      bra.s      $0005E682
[0005e67c] 3a2c 0002                 move.w     2(a4),d5
[0005e680] 3e14                      move.w     (a4),d7
[0005e682] 4a45                      tst.w      d5
[0005e684] 6a06                      bpl.s      $0005E68C
[0005e686] 3e2d 020e                 move.w     526(a5),d7
[0005e68a] 4245                      clr.w      d5
[0005e68c] be6d 020e                 cmp.w      526(a5),d7
[0005e690] 6f04                      ble.s      $0005E696
[0005e692] 3e2d 020e                 move.w     526(a5),d7
[0005e696] ba6d 020e                 cmp.w      526(a5),d5
[0005e69a] 6f04                      ble.s      $0005E6A0
[0005e69c] 3a2d 020e                 move.w     526(a5),d5
[0005e6a0] 7010                      moveq.l    #16,d0
[0005e6a2] c06d 0222                 and.w      546(a5),d0
[0005e6a6] 6700 00e6                 beq        $0005E78E
[0005e6aa] 47ed 0100                 lea.l      256(a5),a3
[0005e6ae] 1033 5000                 move.b     0(a3,d5.w),d0
[0005e6b2] 4880                      ext.w      d0
[0005e6b4] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e6ba] 41e8 03e6                 lea.l      998(a0),a0
[0005e6be] 4eb9 0007 68ce            jsr        $000768CE
[0005e6c4] 2f48 0004                 move.l     a0,4(a7)
[0005e6c8] 6002                      bra.s      $0005E6CC
[0005e6ca] 5345                      subq.w     #1,d5
[0005e6cc] 4a45                      tst.w      d5
[0005e6ce] 6b4c                      bmi.s      $0005E71C
[0005e6d0] 202f 0004                 move.l     4(a7),d0
[0005e6d4] 6722                      beq.s      $0005E6F8
[0005e6d6] 1033 5000                 move.b     0(a3,d5.w),d0
[0005e6da] 4880                      ext.w      d0
[0005e6dc] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e6e2] 41e8 03e6                 lea.l      998(a0),a0
[0005e6e6] 4eb9 0007 68ce            jsr        $000768CE
[0005e6ec] 2008                      move.l     a0,d0
[0005e6ee] 6704                      beq.s      $0005E6F4
[0005e6f0] 7001                      moveq.l    #1,d0
[0005e6f2] 6002                      bra.s      $0005E6F6
[0005e6f4] 4240                      clr.w      d0
[0005e6f6] 6020                      bra.s      $0005E718
[0005e6f8] 1033 5000                 move.b     0(a3,d5.w),d0
[0005e6fc] 4880                      ext.w      d0
[0005e6fe] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e704] 41e8 03e6                 lea.l      998(a0),a0
[0005e708] 4eb9 0007 68ce            jsr        $000768CE
[0005e70e] 2008                      move.l     a0,d0
[0005e710] 6604                      bne.s      $0005E716
[0005e712] 7001                      moveq.l    #1,d0
[0005e714] 6002                      bra.s      $0005E718
[0005e716] 4240                      clr.w      d0
[0005e718] 4a40                      tst.w      d0
[0005e71a] 66ae                      bne.s      $0005E6CA
[0005e71c] 5245                      addq.w     #1,d5
[0005e71e] 1033 7000                 move.b     0(a3,d7.w),d0
[0005e722] 4880                      ext.w      d0
[0005e724] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e72a] 41e8 03e6                 lea.l      998(a0),a0
[0005e72e] 4eb9 0007 68ce            jsr        $000768CE
[0005e734] 2f48 0004                 move.l     a0,4(a7)
[0005e738] 6002                      bra.s      $0005E73C
[0005e73a] 5247                      addq.w     #1,d7
[0005e73c] be6d 020e                 cmp.w      526(a5),d7
[0005e740] 6c4c                      bge.s      $0005E78E
[0005e742] 202f 0004                 move.l     4(a7),d0
[0005e746] 6722                      beq.s      $0005E76A
[0005e748] 1033 7000                 move.b     0(a3,d7.w),d0
[0005e74c] 4880                      ext.w      d0
[0005e74e] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e754] 41e8 03e6                 lea.l      998(a0),a0
[0005e758] 4eb9 0007 68ce            jsr        $000768CE
[0005e75e] 2008                      move.l     a0,d0
[0005e760] 6704                      beq.s      $0005E766
[0005e762] 7001                      moveq.l    #1,d0
[0005e764] 6002                      bra.s      $0005E768
[0005e766] 4240                      clr.w      d0
[0005e768] 6020                      bra.s      $0005E78A
[0005e76a] 1033 7000                 move.b     0(a3,d7.w),d0
[0005e76e] 4880                      ext.w      d0
[0005e770] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e776] 41e8 03e6                 lea.l      998(a0),a0
[0005e77a] 4eb9 0007 68ce            jsr        $000768CE
[0005e780] 2008                      move.l     a0,d0
[0005e782] 6604                      bne.s      $0005E788
[0005e784] 7001                      moveq.l    #1,d0
[0005e786] 6002                      bra.s      $0005E78A
[0005e788] 4240                      clr.w      d0
[0005e78a] 4a40                      tst.w      d0
[0005e78c] 66ac                      bne.s      $0005E73A
[0005e78e] 302c 0002                 move.w     2(a4),d0
[0005e792] 204a                      movea.l    a2,a0
[0005e794] 6100 f29c                 bsr        $0005DA32
[0005e798] be45                      cmp.w      d5,d7
[0005e79a] 660e                      bne.s      $0005E7AA
[0005e79c] 206d 0210                 movea.l    528(a5),a0
[0005e7a0] 3085                      move.w     d5,(a0)
[0005e7a2] 206d 0214                 movea.l    532(a5),a0
[0005e7a6] 4250                      clr.w      (a0)
[0005e7a8] 6010                      bra.s      $0005E7BA
[0005e7aa] 206d 0210                 movea.l    528(a5),a0
[0005e7ae] 3085                      move.w     d5,(a0)
[0005e7b0] 3007                      move.w     d7,d0
[0005e7b2] 9045                      sub.w      d5,d0
[0005e7b4] 206d 0214                 movea.l    532(a5),a0
[0005e7b8] 3080                      move.w     d0,(a0)
[0005e7ba] 006d 0002 0222            ori.w      #$0002,546(a5)
[0005e7c0] 6000 0204                 bra        $0005E9C6
[0005e7c4] 286f 0022                 movea.l    34(a7),a4
[0005e7c8] 206d 0210                 movea.l    528(a5),a0
[0005e7cc] 3890                      move.w     (a0),(a4)
[0005e7ce] 3014                      move.w     (a4),d0
[0005e7d0] 206d 0214                 movea.l    532(a5),a0
[0005e7d4] d050                      add.w      (a0),d0
[0005e7d6] 3940 0002                 move.w     d0,2(a4)
[0005e7da] 6000 01ea                 bra        $0005E9C6
[0005e7de] 206d 0214                 movea.l    532(a5),a0
[0005e7e2] 3010                      move.w     (a0),d0
[0005e7e4] 660c                      bne.s      $0005E7F2
[0005e7e6] 226d 0210                 movea.l    528(a5),a1
[0005e7ea] 3091                      move.w     (a1),(a0)
[0005e7ec] 206d 0210                 movea.l    528(a5),a0
[0005e7f0] 4250                      clr.w      (a0)
[0005e7f2] 206d 0214                 movea.l    532(a5),a0
[0005e7f6] 3010                      move.w     (a0),d0
[0005e7f8] 6600 0092                 bne        $0005E88C
[0005e7fc] 7cff                      moveq.l    #-1,d6
[0005e7fe] 226d 0210                 movea.l    528(a5),a1
[0005e802] dc51                      add.w      (a1),d6
[0005e804] 47ed 0100                 lea.l      256(a5),a3
[0005e808] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e80c] 4880                      ext.w      d0
[0005e80e] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e814] 41e8 03e6                 lea.l      998(a0),a0
[0005e818] 4eb9 0007 68ce            jsr        $000768CE
[0005e81e] 2f48 0004                 move.l     a0,4(a7)
[0005e822] 6002                      bra.s      $0005E826
[0005e824] 5346                      subq.w     #1,d6
[0005e826] 4a46                      tst.w      d6
[0005e828] 6b4c                      bmi.s      $0005E876
[0005e82a] 202f 0004                 move.l     4(a7),d0
[0005e82e] 6722                      beq.s      $0005E852
[0005e830] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e834] 4880                      ext.w      d0
[0005e836] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e83c] 41e8 03e6                 lea.l      998(a0),a0
[0005e840] 4eb9 0007 68ce            jsr        $000768CE
[0005e846] 2008                      move.l     a0,d0
[0005e848] 6704                      beq.s      $0005E84E
[0005e84a] 7001                      moveq.l    #1,d0
[0005e84c] 6002                      bra.s      $0005E850
[0005e84e] 4240                      clr.w      d0
[0005e850] 6020                      bra.s      $0005E872
[0005e852] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e856] 4880                      ext.w      d0
[0005e858] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e85e] 41e8 03e6                 lea.l      998(a0),a0
[0005e862] 4eb9 0007 68ce            jsr        $000768CE
[0005e868] 2008                      move.l     a0,d0
[0005e86a] 6604                      bne.s      $0005E870
[0005e86c] 7001                      moveq.l    #1,d0
[0005e86e] 6002                      bra.s      $0005E872
[0005e870] 4240                      clr.w      d0
[0005e872] 4a40                      tst.w      d0
[0005e874] 66ae                      bne.s      $0005E824
[0005e876] 5246                      addq.w     #1,d6
[0005e878] 206d 0210                 movea.l    528(a5),a0
[0005e87c] 3010                      move.w     (a0),d0
[0005e87e] 9046                      sub.w      d6,d0
[0005e880] 226d 0214                 movea.l    532(a5),a1
[0005e884] 3280                      move.w     d0,(a1)
[0005e886] 206d 0210                 movea.l    528(a5),a0
[0005e88a] 3086                      move.w     d6,(a0)
[0005e88c] 206d 0214                 movea.l    532(a5),a0
[0005e890] 3010                      move.w     (a0),d0
[0005e892] 6600 00d4                 bne        $0005E968
[0005e896] 226d 0210                 movea.l    528(a5),a1
[0005e89a] 3211                      move.w     (a1),d1
[0005e89c] 6f00 00ca                 ble        $0005E968
[0005e8a0] 5250                      addq.w     #1,(a0)
[0005e8a2] 206d 0210                 movea.l    528(a5),a0
[0005e8a6] 5350                      subq.w     #1,(a0)
[0005e8a8] 6000 00be                 bra        $0005E968
[0005e8ac] 206d 0214                 movea.l    532(a5),a0
[0005e8b0] 3010                      move.w     (a0),d0
[0005e8b2] 660c                      bne.s      $0005E8C0
[0005e8b4] 322d 020e                 move.w     526(a5),d1
[0005e8b8] 226d 0210                 movea.l    528(a5),a1
[0005e8bc] 9251                      sub.w      (a1),d1
[0005e8be] 3081                      move.w     d1,(a0)
[0005e8c0] 206d 0214                 movea.l    532(a5),a0
[0005e8c4] 3010                      move.w     (a0),d0
[0005e8c6] 6600 008a                 bne        $0005E952
[0005e8ca] 226d 0210                 movea.l    528(a5),a1
[0005e8ce] 3c11                      move.w     (a1),d6
[0005e8d0] 47ed 0100                 lea.l      256(a5),a3
[0005e8d4] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e8d8] 4880                      ext.w      d0
[0005e8da] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e8e0] 41e8 03e6                 lea.l      998(a0),a0
[0005e8e4] 4eb9 0007 68ce            jsr        $000768CE
[0005e8ea] 2f48 0004                 move.l     a0,4(a7)
[0005e8ee] 6002                      bra.s      $0005E8F2
[0005e8f0] 5246                      addq.w     #1,d6
[0005e8f2] bc6d 020e                 cmp.w      526(a5),d6
[0005e8f6] 6c4c                      bge.s      $0005E944
[0005e8f8] 202f 0004                 move.l     4(a7),d0
[0005e8fc] 6722                      beq.s      $0005E920
[0005e8fe] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e902] 4880                      ext.w      d0
[0005e904] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e90a] 41e8 03e6                 lea.l      998(a0),a0
[0005e90e] 4eb9 0007 68ce            jsr        $000768CE
[0005e914] 2008                      move.l     a0,d0
[0005e916] 6704                      beq.s      $0005E91C
[0005e918] 7001                      moveq.l    #1,d0
[0005e91a] 6002                      bra.s      $0005E91E
[0005e91c] 4240                      clr.w      d0
[0005e91e] 6020                      bra.s      $0005E940
[0005e920] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e924] 4880                      ext.w      d0
[0005e926] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e92c] 41e8 03e6                 lea.l      998(a0),a0
[0005e930] 4eb9 0007 68ce            jsr        $000768CE
[0005e936] 2008                      move.l     a0,d0
[0005e938] 6604                      bne.s      $0005E93E
[0005e93a] 7001                      moveq.l    #1,d0
[0005e93c] 6002                      bra.s      $0005E940
[0005e93e] 4240                      clr.w      d0
[0005e940] 4a40                      tst.w      d0
[0005e942] 66ac                      bne.s      $0005E8F0
[0005e944] 3006                      move.w     d6,d0
[0005e946] 206d 0210                 movea.l    528(a5),a0
[0005e94a] 9050                      sub.w      (a0),d0
[0005e94c] 226d 0214                 movea.l    532(a5),a1
[0005e950] 3280                      move.w     d0,(a1)
[0005e952] 206d 0214                 movea.l    532(a5),a0
[0005e956] 3010                      move.w     (a0),d0
[0005e958] 660e                      bne.s      $0005E968
[0005e95a] 226d 0210                 movea.l    528(a5),a1
[0005e95e] 3211                      move.w     (a1),d1
[0005e960] b26d 020e                 cmp.w      526(a5),d1
[0005e964] 6c02                      bge.s      $0005E968
[0005e966] 5250                      addq.w     #1,(a0)
[0005e968] 206d 0214                 movea.l    532(a5),a0
[0005e96c] 3010                      move.w     (a0),d0
[0005e96e] 6756                      beq.s      $0005E9C6
[0005e970] 3200                      move.w     d0,d1
[0005e972] 226d 0210                 movea.l    528(a5),a1
[0005e976] 3011                      move.w     (a1),d0
[0005e978] 204a                      movea.l    a2,a0
[0005e97a] 6100 f038                 bsr        $0005D9B4
[0005e97e] 6000 fccc                 bra        $0005E64C
[0005e982] 322d 020e                 move.w     526(a5),d1
[0005e986] 4240                      clr.w      d0
[0005e988] 204a                      movea.l    a2,a0
[0005e98a] 6100 f028                 bsr        $0005D9B4
[0005e98e] 6000 fcbc                 bra        $0005E64C
[0005e992] 202d 0200                 move.l     512(a5),d0
[0005e996] 670c                      beq.s      $0005E9A4
[0005e998] 2040                      movea.l    d0,a0
[0005e99a] 4eb9 0004 371c            jsr        $0004371C
[0005e9a0] 42ad 0200                 clr.l      512(a5)
[0005e9a4] 266f 0022                 movea.l    34(a7),a3
[0005e9a8] 200b                      move.l     a3,d0
[0005e9aa] 671a                      beq.s      $0005E9C6
[0005e9ac] 204b                      movea.l    a3,a0
[0005e9ae] 4eb9 0004 36d6            jsr        Ast_create
[0005e9b4] 2b48 0200                 move.l     a0,512(a5)
[0005e9b8] 600c                      bra.s      $0005E9C6
[0005e9ba] 204a                      movea.l    a2,a0
[0005e9bc] 6100 f11c                 bsr        $0005DADA
[0005e9c0] 6004                      bra.s      $0005E9C6
[0005e9c2] 4240                      clr.w      d0
[0005e9c4] 6002                      bra.s      $0005E9C8
[0005e9c6] 7001                      moveq.l    #1,d0
[0005e9c8] 4fef 0026                 lea.l      38(a7),a7
[0005e9cc] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0005e9d0] 4e75                      rts
A_boxed:
[0005e9d2] 48e7 3f3e                 movem.l    d2-d7/a2-a6,-(a7)
[0005e9d6] 4fef fdc2                 lea.l      -574(a7),a7
[0005e9da] 266f 026e                 movea.l    622(a7),a3
[0005e9de] 42af 0204                 clr.l      516(a7)
[0005e9e2] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0005e9e8] 302b 0016                 move.w     22(a3),d0
[0005e9ec] 6606                      bne.s      $0005E9F4
[0005e9ee] 322b 0018                 move.w     24(a3),d1
[0005e9f2] 673c                      beq.s      $0005EA30
[0005e9f4] 3f6b 0012 0222            move.w     18(a3),546(a7)
[0005e9fa] 302f 0222                 move.w     546(a7),d0
[0005e9fe] d06b 0016                 add.w      22(a3),d0
[0005ea02] 5340                      subq.w     #1,d0
[0005ea04] 3f40 0226                 move.w     d0,550(a7)
[0005ea08] 3f6b 0014 0224            move.w     20(a3),548(a7)
[0005ea0e] 302f 0224                 move.w     548(a7),d0
[0005ea12] d06b 0018                 add.w      24(a3),d0
[0005ea16] 5340                      subq.w     #1,d0
[0005ea18] 3f40 0228                 move.w     d0,552(a7)
[0005ea1c] 41ef 0222                 lea.l      546(a7),a0
[0005ea20] 7201                      moveq.l    #1,d1
[0005ea22] 2255                      movea.l    (a5),a1
[0005ea24] 3029 0010                 move.w     16(a1),d0
[0005ea28] 4eb9 0006 3f60            jsr        $00063F60
[0005ea2e] 6012                      bra.s      $0005EA42
[0005ea30] 41ef 0222                 lea.l      546(a7),a0
[0005ea34] 4241                      clr.w      d1
[0005ea36] 2255                      movea.l    (a5),a1
[0005ea38] 3029 0010                 move.w     16(a1),d0
[0005ea3c] 4eb9 0006 3f60            jsr        $00063F60
[0005ea42] 41eb 001a                 lea.l      26(a3),a0
[0005ea46] 2f48 0208                 move.l     a0,520(a7)
[0005ea4a] 322b 0004                 move.w     4(a3),d1
[0005ea4e] 48c1                      ext.l      d1
[0005ea50] 2001                      move.l     d1,d0
[0005ea52] d080                      add.l      d0,d0
[0005ea54] d081                      add.l      d1,d0
[0005ea56] e788                      lsl.l      #3,d0
[0005ea58] 2253                      movea.l    (a3),a1
[0005ea5a] d3c0                      adda.l     d0,a1
[0005ea5c] 2f49 023a                 move.l     a1,570(a7)
[0005ea60] 2f69 000c 0232            move.l     12(a1),562(a7)
[0005ea66] 206f 0232                 movea.l    562(a7),a0
[0005ea6a] 2868 0010                 movea.l    16(a0),a4
[0005ea6e] 2f6c 0204 0236            move.l     516(a4),566(a7)
[0005ea74] 242f 0236                 move.l     566(a7),d2
[0005ea78] 6716                      beq.s      $0005EA90
[0005ea7a] 2242                      movea.l    d2,a1
[0005ea7c] 3029 001c                 move.w     28(a1),d0
[0005ea80] b06c 020c                 cmp.w      524(a4),d0
[0005ea84] 660a                      bne.s      $0005EA90
[0005ea86] 3629 001e                 move.w     30(a1),d3
[0005ea8a] 382c 021c                 move.w     540(a4),d4
[0005ea8e] 6004                      bra.s      $0005EA94
[0005ea90] 76ff                      moveq.l    #-1,d3
[0005ea92] 4244                      clr.w      d4
[0005ea94] 3a2b 000e                 move.w     14(a3),d5
[0005ea98] 48c5                      ext.l      d5
[0005ea9a] 8bec 021e                 divs.w     542(a4),d5
[0005ea9e] 206f 0208                 movea.l    520(a7),a0
[0005eaa2] 3028 0002                 move.w     2(a0),d0
[0005eaa6] e048                      lsr.w      #8,d0
[0005eaa8] c07c 00ff                 and.w      #$00FF,d0
[0005eaac] ba40                      cmp.w      d0,d5
[0005eaae] 630a                      bls.s      $0005EABA
[0005eab0] 3a28 0002                 move.w     2(a0),d5
[0005eab4] e04d                      lsr.w      #8,d5
[0005eab6] ca7c 00ff                 and.w      #$00FF,d5
[0005eaba] 3c05                      move.w     d5,d6
[0005eabc] cdec 021e                 muls.w     542(a4),d6
[0005eac0] 45ef 022a                 lea.l      554(a7),a2
[0005eac4] 70ff                      moveq.l    #-1,d0
[0005eac6] d06b 000a                 add.w      10(a3),d0
[0005eaca] 3480                      move.w     d0,(a2)
[0005eacc] d046                      add.w      d6,d0
[0005eace] 5240                      addq.w     #1,d0
[0005ead0] 3540 0004                 move.w     d0,4(a2)
[0005ead4] 322b 0010                 move.w     16(a3),d1
[0005ead8] 926c 0220                 sub.w      544(a4),d1
[0005eadc] e241                      asr.w      #1,d1
[0005eade] d26b 000c                 add.w      12(a3),d1
[0005eae2] 5341                      subq.w     #1,d1
[0005eae4] 3541 0002                 move.w     d1,2(a2)
[0005eae8] d26c 0220                 add.w      544(a4),d1
[0005eaec] 3541 0006                 move.w     d1,6(a2)
[0005eaf0] 2055                      movea.l    (a5),a0
[0005eaf2] 3028 0010                 move.w     16(a0),d0
[0005eaf6] 7201                      moveq.l    #1,d1
[0005eaf8] 4eb9 0006 4da0            jsr        $00064DA0
[0005eafe] 7201                      moveq.l    #1,d1
[0005eb00] 2055                      movea.l    (a5),a0
[0005eb02] 3028 0010                 move.w     16(a0),d0
[0005eb06] 4eb9 0006 4e9a            jsr        $00064E9A
[0005eb0c] 4242                      clr.w      d2
[0005eb0e] 4241                      clr.w      d1
[0005eb10] 2055                      movea.l    (a5),a0
[0005eb12] 3028 0010                 move.w     16(a0),d0
[0005eb16] 4eb9 0006 4f44            jsr        $00064F44
[0005eb1c] 7201                      moveq.l    #1,d1
[0005eb1e] 2055                      movea.l    (a5),a0
[0005eb20] 3028 0010                 move.w     16(a0),d0
[0005eb24] 4eb9 0006 4df4            jsr        $00064DF4
[0005eb2a] 4241                      clr.w      d1
[0005eb2c] 2055                      movea.l    (a5),a0
[0005eb2e] 3028 0010                 move.w     16(a0),d0
[0005eb32] 4eb9 0006 52be            jsr        $000652BE
[0005eb38] 206f 0208                 movea.l    520(a7),a0
[0005eb3c] 3028 0002                 move.w     2(a0),d0
[0005eb40] e448                      lsr.w      #2,d0
[0005eb42] c07c 0001                 and.w      #$0001,d0
[0005eb46] 6734                      beq.s      $0005EB7C
[0005eb48] 2255                      movea.l    (a5),a1
[0005eb4a] 3229 0294                 move.w     660(a1),d1
[0005eb4e] 3029 0010                 move.w     16(a1),d0
[0005eb52] 4eb9 0006 5216            jsr        $00065216
[0005eb58] 486f 0220                 pea.l      544(a7)
[0005eb5c] 486f 0224                 pea.l      548(a7)
[0005eb60] 43ef 0228                 lea.l      552(a7),a1
[0005eb64] 41ef 0228                 lea.l      552(a7),a0
[0005eb68] 2c55                      movea.l    (a5),a6
[0005eb6a] 322e 0296                 move.w     662(a6),d1
[0005eb6e] 302e 0010                 move.w     16(a6),d0
[0005eb72] 4eb9 0006 50a0            jsr        $000650A0
[0005eb78] 504f                      addq.w     #8,a7
[0005eb7a] 6032                      bra.s      $0005EBAE
[0005eb7c] 2055                      movea.l    (a5),a0
[0005eb7e] 3228 0290                 move.w     656(a0),d1
[0005eb82] 3028 0010                 move.w     16(a0),d0
[0005eb86] 4eb9 0006 5216            jsr        $00065216
[0005eb8c] 486f 0220                 pea.l      544(a7)
[0005eb90] 486f 0224                 pea.l      548(a7)
[0005eb94] 43ef 0228                 lea.l      552(a7),a1
[0005eb98] 41ef 0228                 lea.l      552(a7),a0
[0005eb9c] 2c55                      movea.l    (a5),a6
[0005eb9e] 322e 0292                 move.w     658(a6),d1
[0005eba2] 302e 0010                 move.w     16(a6),d0
[0005eba6] 4eb9 0006 50a0            jsr        $000650A0
[0005ebac] 504f                      addq.w     #8,a7
[0005ebae] 4241                      clr.w      d1
[0005ebb0] 2055                      movea.l    (a5),a0
[0005ebb2] 3028 0010                 move.w     16(a0),d0
[0005ebb6] 4eb9 0006 5390            jsr        $00065390
[0005ebbc] 4241                      clr.w      d1
[0005ebbe] 2055                      movea.l    (a5),a0
[0005ebc0] 3028 0010                 move.w     16(a0),d0
[0005ebc4] 4eb9 0006 548c            jsr        $0006548C
[0005ebca] 204a                      movea.l    a2,a0
[0005ebcc] 2255                      movea.l    (a5),a1
[0005ebce] 3029 0010                 move.w     16(a1),d0
[0005ebd2] 4eb9 0006 455e            jsr        $0006455E
[0005ebd8] 4def 020c                 lea.l      524(a7),a6
[0005ebdc] 7010                      moveq.l    #16,d0
[0005ebde] 206f 023a                 movea.l    570(a7),a0
[0005ebe2] c068 000a                 and.w      10(a0),d0
[0005ebe6] 6700 00d4                 beq        $0005ECBC
[0005ebea] 226f 0208                 movea.l    520(a7),a1
[0005ebee] 3229 0002                 move.w     2(a1),d1
[0005ebf2] e249                      lsr.w      #1,d1
[0005ebf4] c27c 0001                 and.w      #$0001,d1
[0005ebf8] 6734                      beq.s      $0005EC2E
[0005ebfa] 2055                      movea.l    (a5),a0
[0005ebfc] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0005ec02] 6d2a                      blt.s      $0005EC2E
[0005ec04] 2268 023c                 movea.l    572(a0),a1
[0005ec08] 3429 000e                 move.w     14(a1),d2
[0005ec0c] c47c 0100                 and.w      #$0100,d2
[0005ec10] 661c                      bne.s      $0005EC2E
[0005ec12] 206f 0208                 movea.l    520(a7),a0
[0005ec16] 3e10                      move.w     (a0),d7
[0005ec18] 700c                      moveq.l    #12,d0
[0005ec1a] e06f                      lsr.w      d0,d7
[0005ec1c] ce7c 000f                 and.w      #$000F,d7
[0005ec20] 3210                      move.w     (a0),d1
[0005ec22] e049                      lsr.w      #8,d1
[0005ec24] c27c 000f                 and.w      #$000F,d1
[0005ec28] 3f41 0220                 move.w     d1,544(a7)
[0005ec2c] 6006                      bra.s      $0005EC34
[0005ec2e] 7e01                      moveq.l    #1,d7
[0005ec30] 3f47 0220                 move.w     d7,544(a7)
[0005ec34] 7001                      moveq.l    #1,d0
[0005ec36] d06a 0004                 add.w      4(a2),d0
[0005ec3a] 3c80                      move.w     d0,(a6)
[0005ec3c] 3d40 0010                 move.w     d0,16(a6)
[0005ec40] 72ff                      moveq.l    #-1,d1
[0005ec42] d26a 0002                 add.w      2(a2),d1
[0005ec46] 3d41 0002                 move.w     d1,2(a6)
[0005ec4a] 3d41 0012                 move.w     d1,18(a6)
[0005ec4e] 7001                      moveq.l    #1,d0
[0005ec50] d06a 0004                 add.w      4(a2),d0
[0005ec54] 3d40 0004                 move.w     d0,4(a6)
[0005ec58] 7201                      moveq.l    #1,d1
[0005ec5a] d26a 0006                 add.w      6(a2),d1
[0005ec5e] 3d41 0006                 move.w     d1,6(a6)
[0005ec62] 74ff                      moveq.l    #-1,d2
[0005ec64] d452                      add.w      (a2),d2
[0005ec66] 3d42 0008                 move.w     d2,8(a6)
[0005ec6a] 3d41 000a                 move.w     d1,10(a6)
[0005ec6e] 3d42 000c                 move.w     d2,12(a6)
[0005ec72] 70ff                      moveq.l    #-1,d0
[0005ec74] d06a 0002                 add.w      2(a2),d0
[0005ec78] 3d40 000e                 move.w     d0,14(a6)
[0005ec7c] 2055                      movea.l    (a5),a0
[0005ec7e] 3028 0010                 move.w     16(a0),d0
[0005ec82] 3207                      move.w     d7,d1
[0005ec84] 4eb9 0006 4ef0            jsr        $00064EF0
[0005ec8a] 41ee 0008                 lea.l      8(a6),a0
[0005ec8e] 7203                      moveq.l    #3,d1
[0005ec90] 2255                      movea.l    (a5),a1
[0005ec92] 3029 0010                 move.w     16(a1),d0
[0005ec96] 4eb9 0006 4010            jsr        $00064010
[0005ec9c] 322f 0220                 move.w     544(a7),d1
[0005eca0] 2055                      movea.l    (a5),a0
[0005eca2] 3028 0010                 move.w     16(a0),d0
[0005eca6] 4eb9 0006 4ef0            jsr        $00064EF0
[0005ecac] 204e                      movea.l    a6,a0
[0005ecae] 7203                      moveq.l    #3,d1
[0005ecb0] 2255                      movea.l    (a5),a1
[0005ecb2] 3029 0010                 move.w     16(a1),d0
[0005ecb6] 4eb9 0006 4010            jsr        $00064010
[0005ecbc] 5252                      addq.w     #1,(a2)
[0005ecbe] 526a 0002                 addq.w     #1,2(a2)
[0005ecc2] 556a 0004                 subq.w     #2,4(a2)
[0005ecc6] 536a 0006                 subq.w     #1,6(a2)
[0005ecca] 206f 0208                 movea.l    520(a7),a0
[0005ecce] 3228 0002                 move.w     2(a0),d1
[0005ecd2] e849                      lsr.w      #4,d1
[0005ecd4] c27c 000f                 and.w      #$000F,d1
[0005ecd8] 2255                      movea.l    (a5),a1
[0005ecda] 3029 0010                 move.w     16(a1),d0
[0005ecde] 4eb9 0006 526a            jsr        $0006526A
[0005ece4] 43ef 0220                 lea.l      544(a7),a1
[0005ece8] 41ef 0220                 lea.l      544(a7),a0
[0005ecec] 7405                      moveq.l    #5,d2
[0005ecee] 4241                      clr.w      d1
[0005ecf0] 2f09                      move.l     a1,-(a7)
[0005ecf2] 2255                      movea.l    (a5),a1
[0005ecf4] 3029 0010                 move.w     16(a1),d0
[0005ecf8] 225f                      movea.l    (a7)+,a1
[0005ecfa] 4eb9 0006 5312            jsr        $00065312
[0005ed00] 302c 020e                 move.w     526(a4),d0
[0005ed04] 6700 008c                 beq        $0005ED92
[0005ed08] 7201                      moveq.l    #1,d1
[0005ed0a] 206f 0208                 movea.l    520(a7),a0
[0005ed0e] c268 0002                 and.w      2(a0),d1
[0005ed12] 672c                      beq.s      $0005ED40
[0005ed14] 43ef 0100                 lea.l      256(a7),a1
[0005ed18] 2f49 0200                 move.l     a1,512(a7)
[0005ed1c] 2049                      movea.l    a1,a0
[0005ed1e] 702a                      moveq.l    #42,d0
[0005ed20] 223c 0000 00ff            move.l     #$000000FF,d1
[0005ed26] 4eb9 0007 712e            jsr        $0007712E
[0005ed2c] 4200                      clr.b      d0
[0005ed2e] 1f40 01ff                 move.b     d0,511(a7)
[0005ed32] 322c 020e                 move.w     526(a4),d1
[0005ed36] 41ef 0100                 lea.l      256(a7),a0
[0005ed3a] 1180 1000                 move.b     d0,0(a0,d1.w)
[0005ed3e] 600c                      bra.s      $0005ED4C
[0005ed40] 41f4 4000                 lea.l      0(a4,d4.w),a0
[0005ed44] 41e8 0100                 lea.l      256(a0),a0
[0005ed48] 2f48 0200                 move.l     a0,512(a7)
[0005ed4c] 302c 020e                 move.w     526(a4),d0
[0005ed50] 9044                      sub.w      d4,d0
[0005ed52] ba40                      cmp.w      d0,d5
[0005ed54] 6c0e                      bge.s      $0005ED64
[0005ed56] 206f 0200                 movea.l    512(a7),a0
[0005ed5a] d0c5                      adda.w     d5,a0
[0005ed5c] 2f48 0204                 move.l     a0,516(a7)
[0005ed60] 1e10                      move.b     (a0),d7
[0005ed62] 4210                      clr.b      (a0)
[0005ed64] 226f 0200                 movea.l    512(a7),a1
[0005ed68] 41d7                      lea.l      (a7),a0
[0005ed6a] 4eb9 0007 6950            jsr        $00076950
[0005ed70] 206f 0200                 movea.l    512(a7),a0
[0005ed74] 342a 0002                 move.w     2(a2),d2
[0005ed78] 322b 000a                 move.w     10(a3),d1
[0005ed7c] 2255                      movea.l    (a5),a1
[0005ed7e] 3029 0010                 move.w     16(a1),d0
[0005ed82] 4eb9 0006 41e0            jsr        $000641E0
[0005ed88] 202f 0204                 move.l     516(a7),d0
[0005ed8c] 6704                      beq.s      $0005ED92
[0005ed8e] 2040                      movea.l    d0,a0
[0005ed90] 1087                      move.b     d7,(a0)
[0005ed92] 3005                      move.w     d5,d0
[0005ed94] 906c 020e                 sub.w      526(a4),d0
[0005ed98] d044                      add.w      d4,d0
[0005ed9a] 3f40 0220                 move.w     d0,544(a7)
[0005ed9e] 4a40                      tst.w      d0
[0005eda0] 6f3c                      ble.s      $0005EDDE
[0005eda2] 223c 0000 00ff            move.l     #$000000FF,d1
[0005eda8] 41ef 0100                 lea.l      256(a7),a0
[0005edac] 705f                      moveq.l    #95,d0
[0005edae] 4eb9 0007 712e            jsr        $0007712E
[0005edb4] 302f 0220                 move.w     544(a7),d0
[0005edb8] 41ef 0100                 lea.l      256(a7),a0
[0005edbc] 4230 0000                 clr.b      0(a0,d0.w)
[0005edc0] 342a 0002                 move.w     2(a2),d2
[0005edc4] 322c 020e                 move.w     526(a4),d1
[0005edc8] 9244                      sub.w      d4,d1
[0005edca] c3ec 021e                 muls.w     542(a4),d1
[0005edce] d26b 000a                 add.w      10(a3),d1
[0005edd2] 2255                      movea.l    (a5),a1
[0005edd4] 3029 0010                 move.w     16(a1),d0
[0005edd8] 4eb9 0006 41e0            jsr        $000641E0
[0005edde] 7201                      moveq.l    #1,d1
[0005ede0] 2055                      movea.l    (a5),a0
[0005ede2] 3028 0010                 move.w     16(a0),d0
[0005ede6] 4eb9 0006 4ef0            jsr        $00064EF0
[0005edec] 7001                      moveq.l    #1,d0
[0005edee] c06b 0008                 and.w      8(a3),d0
[0005edf2] 675a                      beq.s      $0005EE4E
[0005edf4] 72ff                      moveq.l    #-1,d1
[0005edf6] d26b 000a                 add.w      10(a3),d1
[0005edfa] 3c81                      move.w     d1,(a6)
[0005edfc] 3d41 0010                 move.w     d1,16(a6)
[0005ee00] 3d41 000c                 move.w     d1,12(a6)
[0005ee04] 3416                      move.w     (a6),d2
[0005ee06] d446                      add.w      d6,d2
[0005ee08] 5242                      addq.w     #1,d2
[0005ee0a] 3d42 0008                 move.w     d2,8(a6)
[0005ee0e] 3d42 0004                 move.w     d2,4(a6)
[0005ee12] 322b 0010                 move.w     16(a3),d1
[0005ee16] 926c 0220                 sub.w      544(a4),d1
[0005ee1a] e241                      asr.w      #1,d1
[0005ee1c] d26b 000c                 add.w      12(a3),d1
[0005ee20] 5341                      subq.w     #1,d1
[0005ee22] 3d41 0002                 move.w     d1,2(a6)
[0005ee26] 3d41 0012                 move.w     d1,18(a6)
[0005ee2a] 3d41 0006                 move.w     d1,6(a6)
[0005ee2e] 342e 0002                 move.w     2(a6),d2
[0005ee32] d46c 0220                 add.w      544(a4),d2
[0005ee36] 3d42 000a                 move.w     d2,10(a6)
[0005ee3a] 3d42 000e                 move.w     d2,14(a6)
[0005ee3e] 204e                      movea.l    a6,a0
[0005ee40] 7205                      moveq.l    #5,d1
[0005ee42] 2255                      movea.l    (a5),a1
[0005ee44] 3029 0010                 move.w     16(a1),d0
[0005ee48] 4eb9 0006 4010            jsr        $00064010
[0005ee4e] 4a43                      tst.w      d3
[0005ee50] 6b00 00b8                 bmi        $0005EF0A
[0005ee54] 7203                      moveq.l    #3,d1
[0005ee56] 2055                      movea.l    (a5),a0
[0005ee58] 3028 0010                 move.w     16(a0),d0
[0005ee5c] 4eb9 0006 4da0            jsr        $00064DA0
[0005ee62] 206c 0214                 movea.l    532(a4),a0
[0005ee66] 3010                      move.w     (a0),d0
[0005ee68] 6f6a                      ble.s      $0005EED4
[0005ee6a] 7201                      moveq.l    #1,d1
[0005ee6c] 2255                      movea.l    (a5),a1
[0005ee6e] 3029 0010                 move.w     16(a1),d0
[0005ee72] 4eb9 0006 5390            jsr        $00065390
[0005ee78] 7201                      moveq.l    #1,d1
[0005ee7a] 2055                      movea.l    (a5),a0
[0005ee7c] 3028 0010                 move.w     16(a0),d0
[0005ee80] 4eb9 0006 5438            jsr        $00065438
[0005ee86] 3003                      move.w     d3,d0
[0005ee88] 9044                      sub.w      d4,d0
[0005ee8a] c1ec 021e                 muls.w     542(a4),d0
[0005ee8e] d06b 000a                 add.w      10(a3),d0
[0005ee92] 3480                      move.w     d0,(a2)
[0005ee94] 206c 0214                 movea.l    532(a4),a0
[0005ee98] 3210                      move.w     (a0),d1
[0005ee9a] c3ec 021e                 muls.w     542(a4),d1
[0005ee9e] d240                      add.w      d0,d1
[0005eea0] 5341                      subq.w     #1,d1
[0005eea2] 3541 0004                 move.w     d1,4(a2)
[0005eea6] 3012                      move.w     (a2),d0
[0005eea8] b06b 000a                 cmp.w      10(a3),d0
[0005eeac] 6c04                      bge.s      $0005EEB2
[0005eeae] 34ab 000a                 move.w     10(a3),(a2)
[0005eeb2] 302b 000a                 move.w     10(a3),d0
[0005eeb6] d046                      add.w      d6,d0
[0005eeb8] 322a 0004                 move.w     4(a2),d1
[0005eebc] b240                      cmp.w      d0,d1
[0005eebe] 6f04                      ble.s      $0005EEC4
[0005eec0] 3540 0004                 move.w     d0,4(a2)
[0005eec4] 204a                      movea.l    a2,a0
[0005eec6] 2255                      movea.l    (a5),a1
[0005eec8] 3029 0010                 move.w     16(a1),d0
[0005eecc] 4eb9 0006 455e            jsr        $0006455E
[0005eed2] 6036                      bra.s      $0005EF0A
[0005eed4] 3003                      move.w     d3,d0
[0005eed6] 9044                      sub.w      d4,d0
[0005eed8] c1ec 021e                 muls.w     542(a4),d0
[0005eedc] d06b 000a                 add.w      10(a3),d0
[0005eee0] 3480                      move.w     d0,(a2)
[0005eee2] 3540 0004                 move.w     d0,4(a2)
[0005eee6] 3212                      move.w     (a2),d1
[0005eee8] b26b 000a                 cmp.w      10(a3),d1
[0005eeec] 6d1c                      blt.s      $0005EF0A
[0005eeee] 342b 000a                 move.w     10(a3),d2
[0005eef2] d46b 000e                 add.w      14(a3),d2
[0005eef6] b242                      cmp.w      d2,d1
[0005eef8] 6e10                      bgt.s      $0005EF0A
[0005eefa] 204a                      movea.l    a2,a0
[0005eefc] 2255                      movea.l    (a5),a1
[0005eefe] 3029 0010                 move.w     16(a1),d0
[0005ef02] 7202                      moveq.l    #2,d1
[0005ef04] 4eb9 0006 4010            jsr        $00064010
[0005ef0a] 41ef 0222                 lea.l      546(a7),a0
[0005ef0e] 4241                      clr.w      d1
[0005ef10] 2255                      movea.l    (a5),a1
[0005ef12] 3029 0010                 move.w     16(a1),d0
[0005ef16] 4eb9 0006 3f60            jsr        $00063F60
[0005ef1c] 70ee                      moveq.l    #-18,d0
[0005ef1e] c06b 0008                 and.w      8(a3),d0
[0005ef22] 4fef 023e                 lea.l      574(a7),a7
[0005ef26] 4cdf 7cfc                 movem.l    (a7)+,d2-d7/a2-a6
[0005ef2a] 4e75                      rts
