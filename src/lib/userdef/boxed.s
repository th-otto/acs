
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
[0005d03e] 6718                      beq.s      boxed_insert_1
[0005d040] 2041                      movea.l    d1,a0
[0005d042] 3428 001c                 move.w     28(a0),d2
[0005d046] b46b 020c                 cmp.w      524(a3),d2
[0005d04a] 660c                      bne.s      boxed_insert_1
[0005d04c] 226b 0210                 movea.l    528(a3),a1
[0005d050] 3611                      move.w     (a1),d3
[0005d052] 206b 0214                 movea.l    532(a3),a0
[0005d056] 3810                      move.w     (a0),d4
boxed_insert_1:
[0005d058] 4a43                      tst.w      d3
[0005d05a] 6a06                      bpl.s      boxed_insert_2
[0005d05c] 4243                      clr.w      d3
[0005d05e] 382b 020e                 move.w     526(a3),d4
boxed_insert_2:
[0005d062] 4a44                      tst.w      d4
[0005d064] 6f0e                      ble.s      boxed_insert_3
[0005d066] 3204                      move.w     d4,d1
[0005d068] 3003                      move.w     d3,d0
[0005d06a] 206f 0106                 movea.l    262(a7),a0
[0005d06e] 4eb9 0005 d9b4            jsr        boxed_delsel
boxed_insert_3:
[0005d074] 382a 0002                 move.w     2(a2),d4
[0005d078] e04c                      lsr.w      #8,d4
[0005d07a] c87c 00ff                 and.w      #$00FF,d4
[0005d07e] 45ef 0004                 lea.l      4(a7),a2
[0005d082] 204c                      movea.l    a4,a0
[0005d084] 4eb9 0007 69b0            jsr        strlen
[0005d08a] 3480                      move.w     d0,(a2)
[0005d08c] 322b 020e                 move.w     526(a3),d1
[0005d090] d240                      add.w      d0,d1
[0005d092] b841                      cmp.w      d1,d4
[0005d094] 6c08                      bge.s      boxed_insert_4
[0005d096] 3404                      move.w     d4,d2
[0005d098] 946b 020e                 sub.w      526(a3),d2
[0005d09c] 3482                      move.w     d2,(a2)
boxed_insert_4:
[0005d09e] 3012                      move.w     (a2),d0
[0005d0a0] 6f00 010a                 ble        boxed_insert_5
[0005d0a4] 4852                      pea.l      (a2)
[0005d0a6] 486f 000a                 pea.l      10(a7)
[0005d0aa] 224c                      movea.l    a4,a1
[0005d0ac] 206f 010e                 movea.l    270(a7),a0
[0005d0b0] 4eb9 0005 d234            jsr        boxed_checktext
[0005d0b6] 504f                      addq.w     #8,a7
[0005d0b8] 4a40                      tst.w      d0
[0005d0ba] 6700 00f0                 beq        boxed_insert_5
[0005d0be] 49f3 3000                 lea.l      0(a3,d3.w),a4
[0005d0c2] 49ec 0100                 lea.l      256(a4),a4
[0005d0c6] 382b 020e                 move.w     526(a3),d4
[0005d0ca] 3003                      move.w     d3,d0
[0005d0cc] d052                      add.w      (a2),d0
[0005d0ce] 9840                      sub.w      d0,d4
[0005d0d0] 5244                      addq.w     #1,d4
[0005d0d2] 4a44                      tst.w      d4
[0005d0d4] 6e1a                      bgt.s      boxed_insert_6
[0005d0d6] 43ef 0006                 lea.l      6(a7),a1
[0005d0da] 204c                      movea.l    a4,a0
[0005d0dc] 4eb9 0007 6950            jsr        strcpy
[0005d0e2] 6020                      bra.s      boxed_insert_7
boxed_insert_8:
[0005d0e4] 3004                      move.w     d4,d0
[0005d0e6] d052                      add.w      (a2),d0
[0005d0e8] 19b4 4000 0000            move.b     0(a4,d4.w),0(a4,d0.w)
[0005d0ee] 5344                      subq.w     #1,d4
boxed_insert_6:
[0005d0f0] 4a44                      tst.w      d4
[0005d0f2] 6af0                      bpl.s      boxed_insert_8
[0005d0f4] 3012                      move.w     (a2),d0
[0005d0f6] 48c0                      ext.l      d0
[0005d0f8] 43ef 0006                 lea.l      6(a7),a1
[0005d0fc] 204c                      movea.l    a4,a0
[0005d0fe] 4eb9 0007 6f44            jsr        memcpy
boxed_insert_7:
[0005d104] 2017                      move.l     (a7),d0
[0005d106] 6770                      beq.s      boxed_insert_9
[0005d108] 322b 020c                 move.w     524(a3),d1
[0005d10c] 2040                      movea.l    d0,a0
[0005d10e] b268 001c                 cmp.w      28(a0),d1
[0005d112] 6664                      bne.s      boxed_insert_9
[0005d114] 226b 0210                 movea.l    528(a3),a1
[0005d118] 3411                      move.w     (a1),d2
[0005d11a] 6b5c                      bmi.s      boxed_insert_9
[0005d11c] 4a45                      tst.w      d5
[0005d11e] 6728                      beq.s      boxed_insert_10
[0005d120] 286b 0214                 movea.l    532(a3),a4
[0005d124] 3892                      move.w     (a2),(a4)
[0005d126] 3012                      move.w     (a2),d0
[0005d128] 48c0                      ext.l      d0
[0005d12a] 226b 0210                 movea.l    528(a3),a1
[0005d12e] 3211                      move.w     (a1),d1
[0005d130] 43f3 1000                 lea.l      0(a3,d1.w),a1
[0005d134] 43e9 0100                 lea.l      256(a1),a1
[0005d138] 204b                      movea.l    a3,a0
[0005d13a] 4eb9 0007 6f44            jsr        memcpy
[0005d140] 3012                      move.w     (a2),d0
[0005d142] 4233 0000                 clr.b      0(a3,d0.w)
[0005d146] 6012                      bra.s      boxed_insert_11
boxed_insert_10:
[0005d148] 43eb 0100                 lea.l      256(a3),a1
[0005d14c] 204b                      movea.l    a3,a0
[0005d14e] 4eb9 0007 6950            jsr        strcpy
[0005d154] 206b 0210                 movea.l    528(a3),a0
[0005d158] 5250                      addq.w     #1,(a0)
boxed_insert_11:
[0005d15a] 3012                      move.w     (a2),d0
[0005d15c] d16b 020e                 add.w      d0,526(a3)
[0005d160] 206f 0106                 movea.l    262(a7),a0
[0005d164] 4eb9 0005 d6c8            jsr        boxed_postcheck
[0005d16a] 70ff                      moveq.l    #-1,d0
[0005d16c] 206f 0106                 movea.l    262(a7),a0
[0005d170] 4eb9 0005 da32            jsr        boxed_viewpos
[0005d176] 601c                      bra.s      boxed_insert_12
boxed_insert_9:
[0005d178] 43eb 0100                 lea.l      256(a3),a1
[0005d17c] 204b                      movea.l    a3,a0
[0005d17e] 4eb9 0007 6950            jsr        strcpy
[0005d184] 3012                      move.w     (a2),d0
[0005d186] d16b 020e                 add.w      d0,526(a3)
[0005d18a] 206f 0106                 movea.l    262(a7),a0
[0005d18e] 4eb9 0005 d6c8            jsr        boxed_postcheck
boxed_insert_12:
[0005d194] 006b 0004 0222            ori.w      #$0004,546(a3)
[0005d19a] 2017                      move.l     (a7),d0
[0005d19c] 670e                      beq.s      boxed_insert_5
[0005d19e] 93c9                      suba.l     a1,a1
[0005d1a0] 2040                      movea.l    d0,a0
[0005d1a2] 2440                      movea.l    d0,a2
[0005d1a4] 246a 0004                 movea.l    4(a2),a2
[0005d1a8] 701a                      moveq.l    #26,d0
[0005d1aa] 4e92                      jsr        (a2)
boxed_insert_5:
[0005d1ac] 4fef 010a                 lea.l      266(a7),a7
[0005d1b0] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[0005d1b4] 4e75                      rts

boxed_within:
[0005d1b6] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0005d1ba] 1800                      move.b     d0,d4
[0005d1bc] 2448                      movea.l    a0,a2
[0005d1be] 2649                      movea.l    a1,a3
[0005d1c0] 4243                      clr.w      d3
[0005d1c2] 4eb9 0007 69b0            jsr        strlen
[0005d1c8] e240                      asr.w      #1,d0
[0005d1ca] 6010                      bra.s      boxed_within_1
boxed_within_4:
[0005d1cc] b832 3000                 cmp.b      0(a2,d3.w),d4
[0005d1d0] 6506                      bcs.s      boxed_within_2
[0005d1d2] b832 3001                 cmp.b      1(a2,d3.w),d4
[0005d1d6] 631c                      bls.s      boxed_within_3
boxed_within_2:
[0005d1d8] 5340                      subq.w     #1,d0
[0005d1da] 5443                      addq.w     #2,d3
boxed_within_1:
[0005d1dc] 4a40                      tst.w      d0
[0005d1de] 6eec                      bgt.s      boxed_within_4
[0005d1e0] 200b                      move.l     a3,d0
[0005d1e2] 6714                      beq.s      boxed_within_5
[0005d1e4] 4240                      clr.w      d0
[0005d1e6] 1004                      move.b     d4,d0
[0005d1e8] 204b                      movea.l    a3,a0
[0005d1ea] 4eb9 0007 68ce            jsr        strchr
[0005d1f0] 2008                      move.l     a0,d0
[0005d1f2] 6704                      beq.s      boxed_within_5
boxed_within_3:
[0005d1f4] 7001                      moveq.l    #1,d0
[0005d1f6] 6002                      bra.s      boxed_within_6
boxed_within_5:
[0005d1f8] 4240                      clr.w      d0
boxed_within_6:
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
[0005d212] 4eb9 0007 68ce            jsr        strchr
[0005d218] 2488                      move.l     a0,(a2)
[0005d21a] 2008                      move.l     a0,d0
[0005d21c] 6710                      beq.s      boxed_findsep_1
[0005d21e] 1003                      move.b     d3,d0
[0005d220] 4880                      ext.w      d0
[0005d222] 5248                      addq.w     #1,a0
[0005d224] 4eb9 0007 68ce            jsr        strchr
[0005d22a] 2548 0004                 move.l     a0,4(a2)
boxed_findsep_1:
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
[0005d260] 6710                      beq.s      boxed_checktext_1
[0005d262] 3228 001c                 move.w     28(a0),d1
[0005d266] b26b 020c                 cmp.w      524(a3),d1
[0005d26a] 6606                      bne.s      boxed_checktext_1
[0005d26c] 206b 0210                 movea.l    528(a3),a0
[0005d270] 3610                      move.w     (a0),d3
boxed_checktext_1:
[0005d272] 4a43                      tst.w      d3
[0005d274] 6a04                      bpl.s      boxed_checktext_2
[0005d276] 362b 020e                 move.w     526(a3),d3
boxed_checktext_2:
[0005d27a] 206f 003a                 movea.l    58(a7),a0
[0005d27e] 3c10                      move.w     (a0),d6
[0005d280] 6f00 03e0                 ble        boxed_checktext_3
[0005d284] 2257                      movea.l    (a7),a1
[0005d286] 3029 0002                 move.w     2(a1),d0
[0005d28a] e648                      lsr.w      #3,d0
[0005d28c] c07c 0001                 and.w      #$0001,d0
[0005d290] 6704                      beq.s      boxed_checktext_4
[0005d292] 7e01                      moveq.l    #1,d7
[0005d294] 6002                      bra.s      boxed_checktext_5
boxed_checktext_4:
[0005d296] 4247                      clr.w      d7
boxed_checktext_5:
[0005d298] 286f 0036                 movea.l    54(a7),a4
[0005d29c] 4244                      clr.w      d4
[0005d29e] 202b 0200                 move.l     512(a3),d0
[0005d2a2] 6726                      beq.s      boxed_checktext_6
[0005d2a4] 6006                      bra.s      boxed_checktext_7
boxed_checktext_9:
[0005d2a6] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d2aa] 5244                      addq.w     #1,d4
boxed_checktext_7:
[0005d2ac] bc44                      cmp.w      d4,d6
[0005d2ae] 6f00 0384                 ble        boxed_checktext_8
[0005d2b2] 4240                      clr.w      d0
[0005d2b4] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d2b8] 206b 0200                 movea.l    512(a3),a0
[0005d2bc] 4eb9 0007 68ce            jsr        strchr
[0005d2c2] 2008                      move.l     a0,d0
[0005d2c4] 66e0                      bne.s      boxed_checktext_9
[0005d2c6] 6000 036c                 bra        boxed_checktext_8
boxed_checktext_6:
[0005d2ca] 45ef 0004                 lea.l      4(a7),a2
[0005d2ce] 2057                      movea.l    (a7),a0
[0005d2d0] 3010                      move.w     (a0),d0
[0005d2d2] e648                      lsr.w      #3,d0
[0005d2d4] c07c 001f                 and.w      #$001F,d0
[0005d2d8] b07c 001a                 cmp.w      #$001A,d0
[0005d2dc] 6200 0356                 bhi        boxed_checktext_8
[0005d2e0] d040                      add.w      d0,d0
[0005d2e2] 303b 0006                 move.w     $0005D2EA(pc,d0.w),d0
[0005d2e6] 4efb 0002                 jmp        $0005D2EA(pc,d0.w)
J53:
[0005d2ea] 0036                      dc.w $0036   ; boxed_checktext_10-J53
[0005d2ec] 0036                      dc.w $0036   ; boxed_checktext_10-J53
[0005d2ee] 0058                      dc.w $0058   ; boxed_checktext_11-J53
[0005d2f0] 0078                      dc.w $0078   ; boxed_checktext_12-J53
[0005d2f2] 00a4                      dc.w $00a4   ; boxed_checktext_13-J53
[0005d2f4] 00d0                      dc.w $00d0   ; boxed_checktext_14-J53
[0005d2f6] 00fc                      dc.w $00fc   ; boxed_checktext_15-J53
[0005d2f8] 012e                      dc.w $012e   ; boxed_checktext_16-J53
[0005d2fa] 0140                      dc.w $0140   ; boxed_checktext_17-J53
[0005d2fc] 014e                      dc.w $014e   ; boxed_checktext_18-J53
[0005d2fe] 0198                      dc.w $0198   ; boxed_checktext_19-J53
[0005d300] 0182                      dc.w $0182   ; boxed_checktext_20-J53
[0005d302] 01cc                      dc.w $01cc   ; boxed_checktext_21-J53
[0005d304] 01b6                      dc.w $01b6   ; boxed_checktext_22-J53
[0005d306] 0200                      dc.w $0200   ; boxed_checktext_23-J53
[0005d308] 01ea                      dc.w $01ea   ; boxed_checktext_24-J53
[0005d30a] 0234                      dc.w $0234   ; boxed_checktext_25-J53
[0005d30c] 021e                      dc.w $021e   ; boxed_checktext_26-J53
[0005d30e] 0272                      dc.w $0272   ; boxed_checktext_27-J53
[0005d310] 025c                      dc.w $025c   ; boxed_checktext_28-J53
[0005d312] 02ce                      dc.w $02ce   ; boxed_checktext_29-J53
[0005d314] 02d0                      dc.w $02d0   ; boxed_checktext_30-J53
[0005d316] 02ce                      dc.w $02ce   ; boxed_checktext_29-J53
[0005d318] 02d0                      dc.w $02d0   ; boxed_checktext_30-J53
[0005d31a] 02d6                      dc.w $02d6   ; boxed_checktext_31-J53
[0005d31c] 02d6                      dc.w $02d6   ; boxed_checktext_31-J53
[0005d31e] 02d6                      dc.w $02d6   ; boxed_checktext_31-J53
boxed_checktext_10:
[0005d320] 3006                      move.w     d6,d0
[0005d322] 9044                      sub.w      d4,d0
[0005d324] 48c0                      ext.l      d0
[0005d326] 43f5 4000                 lea.l      0(a5,d4.w),a1
[0005d32a] 204c                      movea.l    a4,a0
[0005d32c] 4eb9 0007 6a1a            jsr        strncpy
[0005d332] 3006                      move.w     d6,d0
[0005d334] 9044                      sub.w      d4,d0
[0005d336] d8c0                      adda.w     d0,a4
[0005d338] 6000 02fa                 bra        boxed_checktext_8
boxed_checktext_32:
[0005d33c] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d340] 5244                      addq.w     #1,d4
boxed_checktext_11:
[0005d342] bc44                      cmp.w      d4,d6
[0005d344] 6f00 02ee                 ble        boxed_checktext_8
[0005d348] 4240                      clr.w      d0
[0005d34a] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d34e] 41f9 000d 4f8a            lea.l      $000D4F8A,a0
[0005d354] 4eb9 0007 68ce            jsr        strchr
[0005d35a] 2008                      move.l     a0,d0
[0005d35c] 67de                      beq.s      boxed_checktext_32
[0005d35e] 6000 02d4                 bra        boxed_checktext_8
boxed_checktext_12:
[0005d362] 7e01                      moveq.l    #1,d7
[0005d364] 6006                      bra.s      boxed_checktext_33
boxed_checktext_34:
[0005d366] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d36a] 5244                      addq.w     #1,d4
boxed_checktext_33:
[0005d36c] bc44                      cmp.w      d4,d6
[0005d36e] 6f00 02c4                 ble        boxed_checktext_8
[0005d372] 43f9 000d 4f94            lea.l      $000D4F94,a1
[0005d378] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
[0005d37e] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d382] 6100 fe32                 bsr        boxed_within
[0005d386] 4a40                      tst.w      d0
[0005d388] 66dc                      bne.s      boxed_checktext_34
[0005d38a] 6000 02a8                 bra        boxed_checktext_8
boxed_checktext_13:
[0005d38e] 7e01                      moveq.l    #1,d7
[0005d390] 6006                      bra.s      boxed_checktext_35
boxed_checktext_36:
[0005d392] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d396] 5244                      addq.w     #1,d4
boxed_checktext_35:
[0005d398] bc44                      cmp.w      d4,d6
[0005d39a] 6f00 0298                 ble        boxed_checktext_8
[0005d39e] 43f9 000d 4faf            lea.l      $000D4FAF,a1
[0005d3a4] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
[0005d3aa] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d3ae] 6100 fe06                 bsr        boxed_within
[0005d3b2] 4a40                      tst.w      d0
[0005d3b4] 66dc                      bne.s      boxed_checktext_36
[0005d3b6] 6000 027c                 bra        boxed_checktext_8
boxed_checktext_14:
[0005d3ba] 7e01                      moveq.l    #1,d7
[0005d3bc] 6006                      bra.s      boxed_checktext_37
boxed_checktext_38:
[0005d3be] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d3c2] 5244                      addq.w     #1,d4
boxed_checktext_37:
[0005d3c4] bc44                      cmp.w      d4,d6
[0005d3c6] 6f00 026c                 ble        boxed_checktext_8
[0005d3ca] 43f9 000d 4fcc            lea.l      $000D4FCC,a1
[0005d3d0] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
[0005d3d6] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d3da] 6100 fdda                 bsr        boxed_within
[0005d3de] 4a40                      tst.w      d0
[0005d3e0] 66dc                      bne.s      boxed_checktext_38
[0005d3e2] 6000 0250                 bra        boxed_checktext_8
boxed_checktext_15:
[0005d3e6] 7e01                      moveq.l    #1,d7
[0005d3e8] 6006                      bra.s      boxed_checktext_39
boxed_checktext_40:
[0005d3ea] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d3ee] 5244                      addq.w     #1,d4
boxed_checktext_39:
[0005d3f0] bc44                      cmp.w      d4,d6
[0005d3f2] 6f00 0240                 ble        boxed_checktext_8
[0005d3f6] 43f9 000d 4fe9            lea.l      $000D4FE9,a1
[0005d3fc] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
[0005d402] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d406] 6100 fdae                 bsr        boxed_within
[0005d40a] 4a40                      tst.w      d0
[0005d40c] 66dc                      bne.s      boxed_checktext_40
[0005d40e] 6000 0224                 bra        boxed_checktext_8
boxed_checktext_41:
[0005d412] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d416] 5244                      addq.w     #1,d4
boxed_checktext_16:
[0005d418] bc44                      cmp.w      d4,d6
[0005d41a] 6f00 0218                 ble        boxed_checktext_8
[0005d41e] 0c35 0020 4000            cmpi.b     #$20,0(a5,d4.w)
[0005d424] 64ec                      bcc.s      boxed_checktext_41
[0005d426] 6000 020c                 bra        boxed_checktext_8
boxed_checktext_17:
[0005d42a] 3f7c 0001 000c            move.w     #$0001,12(a7)
[0005d430] 6006                      bra.s      boxed_checktext_18
boxed_checktext_44:
[0005d432] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d436] 5244                      addq.w     #1,d4
boxed_checktext_18:
[0005d438] bc44                      cmp.w      d4,d6
[0005d43a] 6f00 01f8                 ble        boxed_checktext_8
[0005d43e] 43f9 000d 500d            lea.l      $000D500D,a1
[0005d444] 2f09                      move.l     a1,-(a7)
[0005d446] 302f 0010                 move.w     16(a7),d0
[0005d44a] 6708                      beq.s      boxed_checktext_42
[0005d44c] 41f9 000d 5008            lea.l      $000D5008,a0
[0005d452] 6006                      bra.s      boxed_checktext_43
boxed_checktext_42:
[0005d454] 41f9 000d 4f8d            lea.l      $000D4F8D,a0
boxed_checktext_43:
[0005d45a] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d45e] 225f                      movea.l    (a7)+,a1
[0005d460] 6100 fd54                 bsr        boxed_within
[0005d464] 4a40                      tst.w      d0
[0005d466] 66ca                      bne.s      boxed_checktext_44
[0005d468] 6000 01ca                 bra        boxed_checktext_8
boxed_checktext_20:
[0005d46c] 4a44                      tst.w      d4
[0005d46e] 6612                      bne.s      boxed_checktext_19
[0005d470] 4a43                      tst.w      d3
[0005d472] 660e                      bne.s      boxed_checktext_19
[0005d474] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d47a] 6606                      bne.s      boxed_checktext_19
boxed_checktext_45:
[0005d47c] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d480] 5244                      addq.w     #1,d4
boxed_checktext_19:
[0005d482] bc44                      cmp.w      d4,d6
[0005d484] 6f00 01ae                 ble        boxed_checktext_8
[0005d488] 93c9                      suba.l     a1,a1
[0005d48a] 41f9 000d 500f            lea.l      $000D500F,a0
[0005d490] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d494] 6100 fd20                 bsr        boxed_within
[0005d498] 4a40                      tst.w      d0
[0005d49a] 66e0                      bne.s      boxed_checktext_45
[0005d49c] 6000 0196                 bra        boxed_checktext_8
boxed_checktext_22:
[0005d4a0] 4a44                      tst.w      d4
[0005d4a2] 6612                      bne.s      boxed_checktext_21
[0005d4a4] 4a43                      tst.w      d3
[0005d4a6] 660e                      bne.s      boxed_checktext_21
[0005d4a8] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d4ae] 6606                      bne.s      boxed_checktext_21
boxed_checktext_46:
[0005d4b0] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d4b4] 5244                      addq.w     #1,d4
boxed_checktext_21:
[0005d4b6] bc44                      cmp.w      d4,d6
[0005d4b8] 6f00 017a                 ble        boxed_checktext_8
[0005d4bc] 93c9                      suba.l     a1,a1
[0005d4be] 41f9 000d 5012            lea.l      $000D5012,a0
[0005d4c4] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d4c8] 6100 fcec                 bsr        boxed_within
[0005d4cc] 4a40                      tst.w      d0
[0005d4ce] 66e0                      bne.s      boxed_checktext_46
[0005d4d0] 6000 0162                 bra        boxed_checktext_8
boxed_checktext_24:
[0005d4d4] 4a44                      tst.w      d4
[0005d4d6] 6612                      bne.s      boxed_checktext_23
[0005d4d8] 4a43                      tst.w      d3
[0005d4da] 660e                      bne.s      boxed_checktext_23
[0005d4dc] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d4e2] 6606                      bne.s      boxed_checktext_23
boxed_checktext_47:
[0005d4e4] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d4e8] 5244                      addq.w     #1,d4
boxed_checktext_23:
[0005d4ea] bc44                      cmp.w      d4,d6
[0005d4ec] 6f00 0146                 ble        boxed_checktext_8
[0005d4f0] 93c9                      suba.l     a1,a1
[0005d4f2] 41f9 000d 4f91            lea.l      $000D4F91,a0
[0005d4f8] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d4fc] 6100 fcb8                 bsr        boxed_within
[0005d500] 4a40                      tst.w      d0
[0005d502] 66e0                      bne.s      boxed_checktext_47
[0005d504] 6000 012e                 bra        boxed_checktext_8
boxed_checktext_26:
[0005d508] 4a44                      tst.w      d4
[0005d50a] 6612                      bne.s      boxed_checktext_25
[0005d50c] 4a43                      tst.w      d3
[0005d50e] 660e                      bne.s      boxed_checktext_25
[0005d510] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d516] 6606                      bne.s      boxed_checktext_25
[0005d518] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d51c] 5244                      addq.w     #1,d4
boxed_checktext_25:
[0005d51e] 7e01                      moveq.l    #1,d7
[0005d520] 6006                      bra.s      boxed_checktext_48
boxed_checktext_49:
[0005d522] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d526] 5244                      addq.w     #1,d4
boxed_checktext_48:
[0005d528] bc44                      cmp.w      d4,d6
[0005d52a] 6f00 0108                 ble        boxed_checktext_8
[0005d52e] 93c9                      suba.l     a1,a1
[0005d530] 41f9 000d 5015            lea.l      $000D5015,a0
[0005d536] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d53a] 6100 fc7a                 bsr        boxed_within
[0005d53e] 4a40                      tst.w      d0
[0005d540] 66e0                      bne.s      boxed_checktext_49
[0005d542] 6000 00f0                 bra        boxed_checktext_8
boxed_checktext_28:
[0005d546] 4a44                      tst.w      d4
[0005d548] 6612                      bne.s      boxed_checktext_27
[0005d54a] 4a43                      tst.w      d3
[0005d54c] 660e                      bne.s      boxed_checktext_27
[0005d54e] 0c35 002d 4000            cmpi.b     #$2D,0(a5,d4.w)
[0005d554] 6606                      bne.s      boxed_checktext_27
[0005d556] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
[0005d55a] 5244                      addq.w     #1,d4
boxed_checktext_27:
[0005d55c] 702e                      moveq.l    #46,d0
[0005d55e] 41eb 0100                 lea.l      256(a3),a0
[0005d562] 4eb9 0007 68ce            jsr        strchr
[0005d568] 2488                      move.l     a0,(a2)
[0005d56a] 702e                      moveq.l    #46,d0
[0005d56c] 204d                      movea.l    a5,a0
[0005d56e] 4eb9 0007 68ce            jsr        strchr
[0005d574] 2548 0004                 move.l     a0,4(a2)
[0005d578] 601c                      bra.s      boxed_checktext_50
boxed_checktext_53:
[0005d57a] 0c35 002e 4000            cmpi.b     #$2E,0(a5,d4.w)
[0005d580] 660e                      bne.s      boxed_checktext_51
[0005d582] 2012                      move.l     (a2),d0
[0005d584] 660e                      bne.s      boxed_checktext_52
[0005d586] 41f5 4000                 lea.l      0(a5,d4.w),a0
[0005d58a] b1ea 0004                 cmpa.l     4(a2),a0
[0005d58e] 6604                      bne.s      boxed_checktext_52
boxed_checktext_51:
[0005d590] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
boxed_checktext_52:
[0005d594] 5244                      addq.w     #1,d4
boxed_checktext_50:
[0005d596] bc44                      cmp.w      d4,d6
[0005d598] 6f00 009a                 ble        boxed_checktext_8
[0005d59c] 43f9 000d 501c            lea.l      $000D501C,a1
[0005d5a2] 41f9 000d 4f91            lea.l      $000D4F91,a0
[0005d5a8] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d5ac] 6100 fc08                 bsr        boxed_within
[0005d5b0] 4a40                      tst.w      d0
[0005d5b2] 66c6                      bne.s      boxed_checktext_53
[0005d5b4] 6000 007e                 bra.w      boxed_checktext_8
boxed_checktext_29:
[0005d5b8] 7a2e                      moveq.l    #46,d5
boxed_checktext_30:
[0005d5ba] 4a05                      tst.b      d5
[0005d5bc] 6602                      bne.s      boxed_checktext_31
[0005d5be] 7a2f                      moveq.l    #47,d5
boxed_checktext_31:
[0005d5c0] 4a05                      tst.b      d5
[0005d5c2] 6602                      bne.s      boxed_checktext_54
[0005d5c4] 7a3a                      moveq.l    #58,d5
boxed_checktext_54:
[0005d5c6] 224a                      movea.l    a2,a1
[0005d5c8] 1005                      move.b     d5,d0
[0005d5ca] 41eb 0100                 lea.l      256(a3),a0
[0005d5ce] 6100 fc30                 bsr        boxed_findsep
[0005d5d2] 605c                      bra.s      boxed_checktext_55
boxed_checktext_62:
[0005d5d4] 4240                      clr.w      d0
[0005d5d6] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d5da] 907c 002e                 sub.w      #$002E,d0
[0005d5de] 670c                      beq.s      boxed_checktext_56
[0005d5e0] 5340                      subq.w     #1,d0
[0005d5e2] 6708                      beq.s      boxed_checktext_56
[0005d5e4] 907c 000b                 sub.w      #$000B,d0
[0005d5e8] 6702                      beq.s      boxed_checktext_56
[0005d5ea] 602a                      bra.s      boxed_checktext_57
boxed_checktext_56:
[0005d5ec] ba35 4000                 cmp.b      0(a5,d4.w),d5
[0005d5f0] 663c                      bne.s      boxed_checktext_58
[0005d5f2] 4240                      clr.w      d0
[0005d5f4] 6018                      bra.s      boxed_checktext_59
boxed_checktext_61:
[0005d5f6] 3200                      move.w     d0,d1
[0005d5f8] e549                      lsl.w      #2,d1
[0005d5fa] 2432 1000                 move.l     0(a2,d1.w),d2
[0005d5fe] 660c                      bne.s      boxed_checktext_60
[0005d600] 41f5 4000                 lea.l      0(a5,d4.w),a0
[0005d604] 2588 1000                 move.l     a0,0(a2,d1.w)
[0005d608] 18c5                      move.b     d5,(a4)+
[0005d60a] 6022                      bra.s      boxed_checktext_58
boxed_checktext_60:
[0005d60c] 5240                      addq.w     #1,d0
boxed_checktext_59:
[0005d60e] b07c 0002                 cmp.w      #$0002,d0
[0005d612] 6de2                      blt.s      boxed_checktext_61
[0005d614] 6018                      bra.s      boxed_checktext_58
boxed_checktext_57:
[0005d616] 93c9                      suba.l     a1,a1
[0005d618] 41f9 000d 4f91            lea.l      $000D4F91,a0
[0005d61e] 1035 4000                 move.b     0(a5,d4.w),d0
[0005d622] 6100 fb92                 bsr        boxed_within
[0005d626] 4a40                      tst.w      d0
[0005d628] 6704                      beq.s      boxed_checktext_58
[0005d62a] 18f5 4000                 move.b     0(a5,d4.w),(a4)+
boxed_checktext_58:
[0005d62e] 5244                      addq.w     #1,d4
boxed_checktext_55:
[0005d630] bc44                      cmp.w      d4,d6
[0005d632] 6ea0                      bgt.s      boxed_checktext_62
boxed_checktext_8:
[0005d634] 4200                      clr.b      d0
[0005d636] 1880                      move.b     d0,(a4)
[0005d638] 206f 0036                 movea.l    54(a7),a0
[0005d63c] 1180 6000                 move.b     d0,0(a0,d6.w)
[0005d640] 4a47                      tst.w      d7
[0005d642] 6706                      beq.s      boxed_checktext_63
[0005d644] 4eb9 0004 3740            jsr        Ast_toupper
boxed_checktext_63:
[0005d64a] 206f 0036                 movea.l    54(a7),a0
[0005d64e] 4eb9 0007 69b0            jsr        strlen
[0005d654] 206f 003a                 movea.l    58(a7),a0
[0005d658] 3080                      move.w     d0,(a0)
[0005d65a] 4a40                      tst.w      d0
[0005d65c] 6f04                      ble.s      boxed_checktext_3
[0005d65e] 7001                      moveq.l    #1,d0
[0005d660] 6002                      bra.s      boxed_checktext_64
boxed_checktext_3:
[0005d662] 4240                      clr.w      d0
boxed_checktext_64:
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
[0005d67e] 6404                      bcc.s      boxed_validate_1
[0005d680] 47ea 0009                 lea.l      9(a2),a3
boxed_validate_1:
[0005d684] 1012                      move.b     (a2),d0
[0005d686] 4880                      ext.w      d0
[0005d688] 4eb9 0007 7212            jsr        isdigit
[0005d68e] 4a40                      tst.w      d0
[0005d690] 661c                      bne.s      boxed_validate_2
[0005d692] 70ff                      moveq.l    #-1,d0
[0005d694] 602c                      bra.s      boxed_validate_3
boxed_validate_5:
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
boxed_validate_2:
[0005d6ae] b7ca                      cmpa.l     a2,a3
[0005d6b0] 630e                      bls.s      boxed_validate_4
[0005d6b2] 1012                      move.b     (a2),d0
[0005d6b4] 4880                      ext.w      d0
[0005d6b6] 4eb9 0007 7212            jsr        isdigit
[0005d6bc] 4a40                      tst.w      d0
[0005d6be] 66d6                      bne.s      boxed_validate_5
boxed_validate_4:
[0005d6c0] 2003                      move.l     d3,d0
boxed_validate_3:
[0005d6c2] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0005d6c6] 4e75                      rts

boxed_postcheck:
[0005d6c8] 48e7 1f3c                 movem.l    d3-d7/a2-a5,-(a7)
[0005d6cc] 4fef fef4                 lea.l      -268(a7),a7
[0005d6d0] 45ef 0004                 lea.l      4(a7),a2
[0005d6d4] 43f9 000d 4e86            lea.l      $000D4E86,a1
[0005d6da] 264a                      movea.l    a2,a3
[0005d6dc] 303c 00ff                 move.w     #$00FF,d0
boxed_postcheck_1:
[0005d6e0] 16d9                      move.b     (a1)+,(a3)+
[0005d6e2] 51c8 fffc                 dbf        d0,boxed_postcheck_1
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
[0005d708] 6222                      bhi.s      boxed_postcheck_2
[0005d70a] d040                      add.w      d0,d0
[0005d70c] 303b 0006                 move.w     $0005D714(pc,d0.w),d0
[0005d710] 4efb 0002                 jmp        $0005D714(pc,d0.w)
J54:
[0005d714] 000e                      dc.w $000e   ; boxed_postcheck_3-J54
[0005d716] 0012                      dc.w $0012   ; boxed_postcheck_4-J54
[0005d718] 000e                      dc.w $000e   ; boxed_postcheck_3-J54
[0005d71a] 0012                      dc.w $0012   ; boxed_postcheck_4-J54
[0005d71c] 0016                      dc.w $0016   ; boxed_postcheck_5-J54
[0005d71e] 0016                      dc.w $0016   ; boxed_postcheck_5-J54
[0005d720] 0016                      dc.w $0016   ; boxed_postcheck_5-J54
boxed_postcheck_3:
[0005d722] 7c2e                      moveq.l    #46,d6
[0005d724] 6006                      bra.s      boxed_postcheck_2
boxed_postcheck_4:
[0005d726] 7c2f                      moveq.l    #47,d6
[0005d728] 6002                      bra.s      boxed_postcheck_2
boxed_postcheck_5:
[0005d72a] 7c3a                      moveq.l    #58,d6
boxed_postcheck_2:
[0005d72c] 49ef 0104                 lea.l      260(a7),a4
[0005d730] 3015                      move.w     (a5),d0
[0005d732] e648                      lsr.w      #3,d0
[0005d734] c07c 001f                 and.w      #$001F,d0
[0005d738] b07c 0014                 cmp.w      #$0014,d0
[0005d73c] 6500 007a                 bcs.w      boxed_postcheck_6
[0005d740] 3215                      move.w     (a5),d1
[0005d742] e649                      lsr.w      #3,d1
[0005d744] c27c 001f                 and.w      #$001F,d1
[0005d748] b27c 001a                 cmp.w      #$001A,d1
[0005d74c] 626a                      bhi.s      boxed_postcheck_6
[0005d74e] 224c                      movea.l    a4,a1
[0005d750] 41eb 0100                 lea.l      256(a3),a0
[0005d754] 1006                      move.b     d6,d0
[0005d756] 6100 faa8                 bsr        boxed_findsep
[0005d75a] 2014                      move.l     (a4),d0
[0005d75c] 6704                      beq.s      boxed_postcheck_7
[0005d75e] 2240                      movea.l    d0,a1
[0005d760] 600c                      bra.s      boxed_postcheck_8
boxed_postcheck_7:
[0005d762] 302b 020e                 move.w     526(a3),d0
[0005d766] 43f3 0000                 lea.l      0(a3,d0.w),a1
[0005d76a] 43e9 0100                 lea.l      256(a1),a1
boxed_postcheck_8:
[0005d76e] 41eb 0100                 lea.l      256(a3),a0
[0005d772] 6100 fefa                 bsr        boxed_validate
[0005d776] 2600                      move.l     d0,d3
[0005d778] 2214                      move.l     (a4),d1
[0005d77a] 673c                      beq.s      boxed_postcheck_6
[0005d77c] 242c 0004                 move.l     4(a4),d2
[0005d780] 6704                      beq.s      boxed_postcheck_9
[0005d782] 2242                      movea.l    d2,a1
[0005d784] 600c                      bra.s      boxed_postcheck_10
boxed_postcheck_9:
[0005d786] 302b 020e                 move.w     526(a3),d0
[0005d78a] 43f3 0000                 lea.l      0(a3,d0.w),a1
[0005d78e] 43e9 0100                 lea.l      256(a1),a1
boxed_postcheck_10:
[0005d792] 2054                      movea.l    (a4),a0
[0005d794] 5248                      addq.w     #1,a0
[0005d796] 6100 fed6                 bsr        boxed_validate
[0005d79a] 2800                      move.l     d0,d4
[0005d79c] 222c 0004                 move.l     4(a4),d1
[0005d7a0] 6716                      beq.s      boxed_postcheck_6
[0005d7a2] 342b 020e                 move.w     526(a3),d2
[0005d7a6] 43f3 2000                 lea.l      0(a3,d2.w),a1
[0005d7aa] 43e9 0100                 lea.l      256(a1),a1
[0005d7ae] 2041                      movea.l    d1,a0
[0005d7b0] 5248                      addq.w     #1,a0
[0005d7b2] 6100 feba                 bsr        boxed_validate
[0005d7b6] 2a00                      move.l     d0,d5
boxed_postcheck_6:
[0005d7b8] 3015                      move.w     (a5),d0
[0005d7ba] e648                      lsr.w      #3,d0
[0005d7bc] c07c 001f                 and.w      #$001F,d0
[0005d7c0] 907c 0014                 sub.w      #$0014,d0
[0005d7c4] b07c 0006                 cmp.w      #$0006,d0
[0005d7c8] 6200 00fe                 bhi        boxed_postcheck_11
[0005d7cc] d040                      add.w      d0,d0
[0005d7ce] 303b 0006                 move.w     $0005D7D6(pc,d0.w),d0
[0005d7d2] 4efb 0002                 jmp        $0005D7D6(pc,d0.w)
J55:
[0005d7d6] 000e                      dc.w $000e   ; boxed_postcheck_12-J55
[0005d7d8] 000e                      dc.w $000e   ; boxed_postcheck_12-J55
[0005d7da] 000e                      dc.w $000e   ; boxed_postcheck_12-J55
[0005d7dc] 000e                      dc.w $000e   ; boxed_postcheck_12-J55
[0005d7de] 00e2                      dc.w $00e2   ; boxed_postcheck_13-J55
[0005d7e0] 00d2                      dc.w $00d2   ; boxed_postcheck_14-J55
[0005d7e2] 00da                      dc.w $00da   ; boxed_postcheck_15-J55
boxed_postcheck_12:
[0005d7e4] 3015                      move.w     (a5),d0
[0005d7e6] e648                      lsr.w      #3,d0
[0005d7e8] c07c 001f                 and.w      #$001F,d0
[0005d7ec] b07c 0016                 cmp.w      #$0016,d0
[0005d7f0] 670e                      beq.s      boxed_postcheck_16
[0005d7f2] 3215                      move.w     (a5),d1
[0005d7f4] e649                      lsr.w      #3,d1
[0005d7f6] c27c 001f                 and.w      #$001F,d1
[0005d7fa] b27c 0017                 cmp.w      #$0017,d1
[0005d7fe] 6606                      bne.s      boxed_postcheck_17
boxed_postcheck_16:
[0005d800] 2e83                      move.l     d3,(a7)
[0005d802] 2604                      move.l     d4,d3
[0005d804] 2817                      move.l     (a7),d4
boxed_postcheck_17:
[0005d806] 700c                      moveq.l    #12,d0
[0005d808] b084                      cmp.l      d4,d0
[0005d80a] 6c02                      bge.s      boxed_postcheck_18
[0005d80c] 2800                      move.l     d0,d4
boxed_postcheck_18:
[0005d80e] 4a84                      tst.l      d4
[0005d810] 6f66                      ble.s      boxed_postcheck_19
[0005d812] 4a85                      tst.l      d5
[0005d814] 6b62                      bmi.s      boxed_postcheck_19
[0005d816] 7002                      moveq.l    #2,d0
[0005d818] b084                      cmp.l      d4,d0
[0005d81a] 6636                      bne.s      boxed_postcheck_20
[0005d81c] 2005                      move.l     d5,d0
[0005d81e] 223c 0000 0190            move.l     #$00000190,d1
[0005d824] 4eb9 0007 77ae            jsr        _lmod
[0005d82a] 4a80                      tst.l      d0
[0005d82c] 671c                      beq.s      boxed_postcheck_21
[0005d82e] 2005                      move.l     d5,d0
[0005d830] 7204                      moveq.l    #4,d1
[0005d832] 4eb9 0007 77ae            jsr        _lmod
[0005d838] 4a80                      tst.l      d0
[0005d83a] 6612                      bne.s      boxed_postcheck_22
[0005d83c] 2005                      move.l     d5,d0
[0005d83e] 7264                      moveq.l    #100,d1
[0005d840] 4eb9 0007 77ae            jsr        _lmod
[0005d846] 4a80                      tst.l      d0
[0005d848] 6704                      beq.s      boxed_postcheck_22
boxed_postcheck_21:
[0005d84a] 7e1d                      moveq.l    #29,d7
[0005d84c] 6002                      bra.s      boxed_postcheck_23
boxed_postcheck_22:
[0005d84e] 7e1c                      moveq.l    #28,d7
boxed_postcheck_23:
[0005d850] 6028                      bra.s      boxed_postcheck_24
boxed_postcheck_20:
[0005d852] 7007                      moveq.l    #7,d0
[0005d854] b084                      cmp.l      d4,d0
[0005d856] 6c06                      bge.s      boxed_postcheck_25
[0005d858] 7ef9                      moveq.l    #-7,d7
[0005d85a] de44                      add.w      d4,d7
[0005d85c] 6002                      bra.s      boxed_postcheck_26
boxed_postcheck_25:
[0005d85e] 3e04                      move.w     d4,d7
boxed_postcheck_26:
[0005d860] 3007                      move.w     d7,d0
[0005d862] 48c0                      ext.l      d0
[0005d864] 81fc 0002                 divs.w     #$0002,d0
[0005d868] 4840                      swap       d0
[0005d86a] 4a40                      tst.w      d0
[0005d86c] 6604                      bne.s      boxed_postcheck_27
[0005d86e] 721e                      moveq.l    #30,d1
[0005d870] 6002                      bra.s      boxed_postcheck_28
boxed_postcheck_27:
[0005d872] 721f                      moveq.l    #31,d1
boxed_postcheck_28:
[0005d874] 3e01                      move.w     d1,d7
[0005d876] 6002                      bra.s      boxed_postcheck_24
boxed_postcheck_19:
[0005d878] 7e1f                      moveq.l    #31,d7
boxed_postcheck_24:
[0005d87a] 3007                      move.w     d7,d0
[0005d87c] 48c0                      ext.l      d0
[0005d87e] b680                      cmp.l      d0,d3
[0005d880] 6f02                      ble.s      boxed_postcheck_29
[0005d882] 2600                      move.l     d0,d3
boxed_postcheck_29:
[0005d884] 3015                      move.w     (a5),d0
[0005d886] e648                      lsr.w      #3,d0
[0005d888] c07c 001f                 and.w      #$001F,d0
[0005d88c] b07c 0016                 cmp.w      #$0016,d0
[0005d890] 670e                      beq.s      boxed_postcheck_30
[0005d892] 3215                      move.w     (a5),d1
[0005d894] e649                      lsr.w      #3,d1
[0005d896] c27c 001f                 and.w      #$001F,d1
[0005d89a] b27c 0017                 cmp.w      #$0017,d1
[0005d89e] 6628                      bne.s      boxed_postcheck_11
boxed_postcheck_30:
[0005d8a0] 2e83                      move.l     d3,(a7)
[0005d8a2] 2604                      move.l     d4,d3
[0005d8a4] 2817                      move.l     (a7),d4
[0005d8a6] 6020                      bra.s      boxed_postcheck_11
boxed_postcheck_14:
[0005d8a8] 700c                      moveq.l    #12,d0
[0005d8aa] b083                      cmp.l      d3,d0
[0005d8ac] 6c02                      bge.s      boxed_postcheck_15
[0005d8ae] 2600                      move.l     d0,d3
boxed_postcheck_15:
[0005d8b0] 7017                      moveq.l    #23,d0
[0005d8b2] b083                      cmp.l      d3,d0
[0005d8b4] 6c02                      bge.s      boxed_postcheck_13
[0005d8b6] 2600                      move.l     d0,d3
boxed_postcheck_13:
[0005d8b8] 703b                      moveq.l    #59,d0
[0005d8ba] b084                      cmp.l      d4,d0
[0005d8bc] 6c02                      bge.s      boxed_postcheck_31
[0005d8be] 2800                      move.l     d0,d4
boxed_postcheck_31:
[0005d8c0] 703b                      moveq.l    #59,d0
[0005d8c2] b085                      cmp.l      d5,d0
[0005d8c4] 6c02                      bge.s      boxed_postcheck_11
[0005d8c6] 2a00                      move.l     d0,d5
boxed_postcheck_11:
[0005d8c8] 3015                      move.w     (a5),d0
[0005d8ca] e648                      lsr.w      #3,d0
[0005d8cc] c07c 001f                 and.w      #$001F,d0
[0005d8d0] b07c 0014                 cmp.w      #$0014,d0
[0005d8d4] 6500 00d4                 bcs        boxed_postcheck_32
[0005d8d8] 3215                      move.w     (a5),d1
[0005d8da] e649                      lsr.w      #3,d1
[0005d8dc] c27c 001f                 and.w      #$001F,d1
[0005d8e0] b27c 001a                 cmp.w      #$001A,d1
[0005d8e4] 6200 00c4                 bhi        boxed_postcheck_32
[0005d8e8] 4247                      clr.w      d7
[0005d8ea] 4bf9 000d 4f8a            lea.l      $000D4F8A,a5
[0005d8f0] 4a83                      tst.l      d3
[0005d8f2] 6b12                      bmi.s      boxed_postcheck_33
[0005d8f4] 2f03                      move.l     d3,-(a7)
[0005d8f6] 43ed 0094                 lea.l      148(a5),a1
[0005d8fa] 204a                      movea.l    a2,a0
[0005d8fc] 4eb9 0007 5680            jsr        sprintf
[0005d902] 584f                      addq.w     #4,a7
[0005d904] 3e00                      move.w     d0,d7
boxed_postcheck_33:
[0005d906] 2014                      move.l     (a4),d0
[0005d908] 6718                      beq.s      boxed_postcheck_34
[0005d90a] 4241                      clr.w      d1
[0005d90c] 1206                      move.b     d6,d1
[0005d90e] 3f01                      move.w     d1,-(a7)
[0005d910] 43ed 0098                 lea.l      152(a5),a1
[0005d914] 41f2 7000                 lea.l      0(a2,d7.w),a0
[0005d918] 4eb9 0007 5680            jsr        sprintf
[0005d91e] 544f                      addq.w     #2,a7
[0005d920] de40                      add.w      d0,d7
boxed_postcheck_34:
[0005d922] 4a84                      tst.l      d4
[0005d924] 6b14                      bmi.s      boxed_postcheck_35
[0005d926] 2f04                      move.l     d4,-(a7)
[0005d928] 43ed 0094                 lea.l      148(a5),a1
[0005d92c] 41f2 7000                 lea.l      0(a2,d7.w),a0
[0005d930] 4eb9 0007 5680            jsr        sprintf
[0005d936] 584f                      addq.w     #4,a7
[0005d938] de40                      add.w      d0,d7
boxed_postcheck_35:
[0005d93a] 202c 0004                 move.l     4(a4),d0
[0005d93e] 6718                      beq.s      boxed_postcheck_36
[0005d940] 4241                      clr.w      d1
[0005d942] 1206                      move.b     d6,d1
[0005d944] 3f01                      move.w     d1,-(a7)
[0005d946] 43ed 0098                 lea.l      152(a5),a1
[0005d94a] 41f2 7000                 lea.l      0(a2,d7.w),a0
[0005d94e] 4eb9 0007 5680            jsr        sprintf
[0005d954] 544f                      addq.w     #2,a7
[0005d956] de40                      add.w      d0,d7
boxed_postcheck_36:
[0005d958] 4a85                      tst.l      d5
[0005d95a] 6b14                      bmi.s      boxed_postcheck_37
[0005d95c] 2f05                      move.l     d5,-(a7)
[0005d95e] 43ed 0094                 lea.l      148(a5),a1
[0005d962] 41f2 7000                 lea.l      0(a2,d7.w),a0
[0005d966] 4eb9 0007 5680            jsr        sprintf
[0005d96c] 584f                      addq.w     #4,a7
[0005d96e] de40                      add.w      d0,d7
boxed_postcheck_37:
[0005d970] 4a47                      tst.w      d7
[0005d972] 6f36                      ble.s      boxed_postcheck_32
[0005d974] 302b 020e                 move.w     526(a3),d0
[0005d978] 9047                      sub.w      d7,d0
[0005d97a] 3e00                      move.w     d0,d7
[0005d97c] 916b 020e                 sub.w      d0,526(a3)
[0005d980] 222b 0210                 move.l     528(a3),d1
[0005d984] 6704                      beq.s      boxed_postcheck_38
[0005d986] 2041                      movea.l    d1,a0
[0005d988] 9150                      sub.w      d0,(a0)
boxed_postcheck_38:
[0005d98a] 202b 0214                 move.l     532(a3),d0
[0005d98e] 670e                      beq.s      boxed_postcheck_39
[0005d990] 2040                      movea.l    d0,a0
[0005d992] 9f50                      sub.w      d7,(a0)
[0005d994] 206b 0214                 movea.l    532(a3),a0
[0005d998] 3010                      move.w     (a0),d0
[0005d99a] 6a02                      bpl.s      boxed_postcheck_39
[0005d99c] 4250                      clr.w      (a0)
boxed_postcheck_39:
[0005d99e] 224a                      movea.l    a2,a1
[0005d9a0] 41eb 0100                 lea.l      256(a3),a0
[0005d9a4] 4eb9 0007 6950            jsr        strcpy
boxed_postcheck_32:
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
[0005d9c6] 6f64                      ble.s      boxed_delsel_1
[0005d9c8] 342a 020e                 move.w     526(a2),d2
[0005d9cc] 6f5e                      ble.s      boxed_delsel_1
[0005d9ce] 4a40                      tst.w      d0
[0005d9d0] 6b5a                      bmi.s      boxed_delsel_1
[0005d9d2] d041                      add.w      d1,d0
[0005d9d4] b042                      cmp.w      d2,d0
[0005d9d6] 6e54                      bgt.s      boxed_delsel_1
[0005d9d8] 47f2 4000                 lea.l      0(a2,d4.w),a3
[0005d9dc] 47eb 0100                 lea.l      256(a3),a3
[0005d9e0] 43f3 1000                 lea.l      0(a3,d1.w),a1
[0005d9e4] 204b                      movea.l    a3,a0
[0005d9e6] 4eb9 0007 6950            jsr        strcpy
[0005d9ec] 976a 020e                 sub.w      d3,526(a2)
[0005d9f0] 202a 0214                 move.l     532(a2),d0
[0005d9f4] 6704                      beq.s      boxed_delsel_2
[0005d9f6] 2040                      movea.l    d0,a0
[0005d9f8] 4250                      clr.w      (a0)
boxed_delsel_2:
[0005d9fa] 202a 0214                 move.l     532(a2),d0
[0005d9fe] 6706                      beq.s      boxed_delsel_3
[0005da00] 206a 0210                 movea.l    528(a2),a0
[0005da04] 3084                      move.w     d4,(a0)
boxed_delsel_3:
[0005da06] 006a 0004 0222            ori.w      #$0004,546(a2)
[0005da0c] 43ea 0100                 lea.l      256(a2),a1
[0005da10] 204a                      movea.l    a2,a0
[0005da12] 4eb9 0007 6950            jsr        strcpy
[0005da18] 266a 0204                 movea.l    516(a2),a3
[0005da1c] 200b                      move.l     a3,d0
[0005da1e] 670c                      beq.s      boxed_delsel_1
[0005da20] 93c9                      suba.l     a1,a1
[0005da22] 204b                      movea.l    a3,a0
[0005da24] 246b 0004                 movea.l    4(a3),a2
[0005da28] 701a                      moveq.l    #26,d0
[0005da2a] 4e92                      jsr        (a2)
boxed_delsel_1:
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
[0005da50] 6706                      beq.s      boxed_viewpos_1
[0005da52] 2668 0018                 movea.l    24(a0),a3
[0005da56] 6004                      bra.s      boxed_viewpos_2
boxed_viewpos_1:
[0005da58] 2668 0014                 movea.l    20(a0),a3
boxed_viewpos_2:
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
[0005da7c] 6a06                      bpl.s      boxed_viewpos_3
[0005da7e] 206a 0210                 movea.l    528(a2),a0
[0005da82] 3210                      move.w     (a0),d1
boxed_viewpos_3:
[0005da84] b26a 020e                 cmp.w      526(a2),d1
[0005da88] 6f04                      ble.s      boxed_viewpos_4
[0005da8a] 322a 020e                 move.w     526(a2),d1
boxed_viewpos_4:
[0005da8e] 4a41                      tst.w      d1
[0005da90] 6f0c                      ble.s      boxed_viewpos_5
[0005da92] 78ff                      moveq.l    #-1,d4
[0005da94] d841                      add.w      d1,d4
[0005da96] b644                      cmp.w      d4,d3
[0005da98] 6f04                      ble.s      boxed_viewpos_5
[0005da9a] 3604                      move.w     d4,d3
[0005da9c] 6012                      bra.s      boxed_viewpos_6
boxed_viewpos_5:
[0005da9e] 3401                      move.w     d1,d2
[0005daa0] 9443                      sub.w      d3,d2
[0005daa2] 9440                      sub.w      d0,d2
[0005daa4] 5242                      addq.w     #1,d2
[0005daa6] 4a42                      tst.w      d2
[0005daa8] 6e04                      bgt.s      boxed_viewpos_7
[0005daaa] b641                      cmp.w      d1,d3
[0005daac] 6f02                      ble.s      boxed_viewpos_6
boxed_viewpos_7:
[0005daae] d642                      add.w      d2,d3
boxed_viewpos_6:
[0005dab0] 3403                      move.w     d3,d2
[0005dab2] d440                      add.w      d0,d2
[0005dab4] 946a 020e                 sub.w      526(a2),d2
[0005dab8] 4a42                      tst.w      d2
[0005daba] 6f02                      ble.s      boxed_viewpos_8
[0005dabc] 9642                      sub.w      d2,d3
boxed_viewpos_8:
[0005dabe] 4a43                      tst.w      d3
[0005dac0] 6a02                      bpl.s      boxed_viewpos_9
[0005dac2] 4243                      clr.w      d3
boxed_viewpos_9:
[0005dac4] b66a 021c                 cmp.w      540(a2),d3
[0005dac8] 6706                      beq.s      boxed_viewpos_10
[0005daca] 006a 0004 0222            ori.w      #$0004,546(a2)
boxed_viewpos_10:
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
[0005db14] 6700 011a                 beq        boxed_charlist_1
[0005db18] 43f9 000d 4e56            lea.l      CHARLIST,a1
[0005db1e] 204d                      movea.l    a5,a0
[0005db20] 7018                      moveq.l    #24,d0
[0005db22] 4eb9 0007 6f44            jsr        memcpy
[0005db28] 3b7c 0001 0002            move.w     #$0001,2(a5)
[0005db2e] 3b7c 0100 0004            move.w     #$0100,4(a5)
[0005db34] 4bed 0018                 lea.l      24(a5),a5
[0005db38] 4243                      clr.w      d3
[0005db3a] 4def 0004                 lea.l      4(a7),a6
[0005db3e] 6000 0086                 bra        boxed_charlist_2
boxed_charlist_5:
[0005db42] 7018                      moveq.l    #24,d0
[0005db44] 43f9 000d 4e6e            lea.l      CHARENTRY,a1
[0005db4a] 204d                      movea.l    a5,a0
[0005db4c] 4eb9 0007 6f44            jsr        memcpy
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
[0005db9a] 6100 f698                 bsr        boxed_checktext
[0005db9e] 504f                      addq.w     #8,a7
[0005dba0] 4a40                      tst.w      d0
[0005dba2] 6704                      beq.s      boxed_charlist_3
[0005dba4] b617                      cmp.b      (a7),d3
[0005dba6] 6718                      beq.s      boxed_charlist_4
boxed_charlist_3:
[0005dba8] 006d 0008 000a            ori.w      #$0008,10(a5)
[0005dbae] 026d f0ff 000e            andi.w     #$F0FF,14(a5)
[0005dbb4] 026d fff0 000e            andi.w     #$FFF0,14(a5)
[0005dbba] 006d 0008 000e            ori.w      #$0008,14(a5)
boxed_charlist_4:
[0005dbc0] 4bed 0018                 lea.l      24(a5),a5
[0005dbc4] 5243                      addq.w     #1,d3
boxed_charlist_2:
[0005dbc6] b67c 0100                 cmp.w      #$0100,d3
[0005dbca] 6d00 ff76                 blt        boxed_charlist_5
[0005dbce] 4bed ffe8                 lea.l      -24(a5),a5
[0005dbd2] 006d 0020 0008            ori.w      #$0020,8(a5)
[0005dbd8] 4255                      clr.w      (a5)
[0005dbda] 204c                      movea.l    a4,a0
[0005dbdc] 4eb9 0004 a25e            jsr        Aob_fix
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
[0005dc06] 4eb9 0004 948a            jsr        Ame_popup
[0005dc0c] 3c80                      move.w     d0,(a6)
[0005dc0e] 5340                      subq.w     #1,d0
[0005dc10] 6f16                      ble.s      boxed_charlist_6
[0005dc12] 122e 0001                 move.b     1(a6),d1
[0005dc16] d23c 00ff                 add.b      #$FF,d1
[0005dc1a] 1481                      move.b     d1,(a2)
[0005dc1c] 224a                      movea.l    a2,a1
[0005dc1e] 206f 0006                 movea.l    6(a7),a0
[0005dc22] 4240                      clr.w      d0
[0005dc24] 6100 f3f4                 bsr        boxed_insert
boxed_charlist_6:
[0005dc28] 204c                      movea.l    a4,a0
[0005dc2a] 4eb9 0004 7e26            jsr        Ax_free
boxed_charlist_1:
[0005dc30] 4fef 000a                 lea.l      10(a7),a7
[0005dc34] 4cdf 7408                 movem.l    (a7)+,d3/a2/a4-a6
[0005dc38] 4e75                      rts

Aus_boxed:
[0005dc3a] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dc40] 3028 0260                 move.w     608(a0),d0
[0005dc44] 2268 025c                 movea.l    604(a0),a1
[0005dc48] 2068 0258                 movea.l    600(a0),a0
[0005dc4c] 4eb9 0005 dc54            jsr        Aus_objboxed
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
[0005dc92] 6600 0372                 bne        Aus_objboxed_1
[0005dc96] 2408                      move.l     a0,d2
[0005dc98] 6700 036c                 beq        Aus_objboxed_1
[0005dc9c] 2228 0008                 move.l     8(a0),d1
[0005dca0] 6700 0364                 beq        Aus_objboxed_1
[0005dca4] 200c                      move.l     a4,d0
[0005dca6] 6700 035e                 beq        Aus_objboxed_1
[0005dcaa] 42a7                      clr.l      -(a7)
[0005dcac] 42a7                      clr.l      -(a7)
[0005dcae] 42a7                      clr.l      -(a7)
[0005dcb0] 486f 000c                 pea.l      12(a7)
[0005dcb4] 4240                      clr.w      d0
[0005dcb6] 720a                      moveq.l    #10,d1
[0005dcb8] 4eb9 0007 14ea            jsr        wind_get
[0005dcbe] 4fef 0010                 lea.l      16(a7),a7
[0005dcc2] 3017                      move.w     (a7),d0
[0005dcc4] 4eb9 0004 e5ea            jsr        Awi_wid
[0005dcca] 3017                      move.w     (a7),d0
[0005dccc] 6f08                      ble.s      Aus_objboxed_2
[0005dcce] 2208                      move.l     a0,d1
[0005dcd0] 6704                      beq.s      Aus_objboxed_2
[0005dcd2] b5c1                      cmpa.l     d1,a2
[0005dcd4] 670c                      beq.s      Aus_objboxed_3
Aus_objboxed_2:
[0005dcd6] 204a                      movea.l    a2,a0
[0005dcd8] 226a 006e                 movea.l    110(a2),a1
[0005dcdc] 4e91                      jsr        (a1)
[0005dcde] 6000 0326                 bra        Aus_objboxed_1
Aus_objboxed_3:
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
[0005dd08] 6f0a                      ble.s      Aus_objboxed_4
[0005dd0a] bc40                      cmp.w      d0,d6
[0005dd0c] 6706                      beq.s      Aus_objboxed_4
[0005dd0e] 4eb9 0004 b286            jsr        Awi_diaend
Aus_objboxed_4:
[0005dd14] 3546 001c                 move.w     d6,28(a2)
[0005dd18] 4eb9 0004 b33c            jsr        Awi_diastart
[0005dd1e] 302a 001c                 move.w     28(a2),d0
[0005dd22] 6b00 02e2                 bmi        Aus_objboxed_1
[0005dd26] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dd2c] 2068 023c                 movea.l    572(a0),a0
[0005dd30] 41e8 0050                 lea.l      80(a0),a0
[0005dd34] 4eb9 0004 9898            jsr        Amo_new
[0005dd3a] 47ef 0016                 lea.l      22(a7),a3
[0005dd3e] 7230                      moveq.l    #48,d1
[0005dd40] 4240                      clr.w      d0
[0005dd42] 204b                      movea.l    a3,a0
[0005dd44] 4eb9 0007 712e            jsr        memset
[0005dd4a] 3006                      move.w     d6,d0
[0005dd4c] c07c 0fff                 and.w      #$0FFF,d0
[0005dd50] 226f 004e                 movea.l    78(a7),a1
[0005dd54] 41eb 0010                 lea.l      16(a3),a0
[0005dd58] 4eb9 0004 a3be            jsr        Aob_offset
[0005dd5e] 302a 0034                 move.w     52(a2),d0
[0005dd62] d16b 0010                 add.w      d0,16(a3)
[0005dd66] 322a 0036                 move.w     54(a2),d1
[0005dd6a] d36b 0012                 add.w      d1,18(a3)
[0005dd6e] 45ef 000a                 lea.l      10(a7),a2
[0005dd72] 4252                      clr.w      (a2)
[0005dd74] 6020                      bra.s      Aus_objboxed_5
Aus_objboxed_6:
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
Aus_objboxed_5:
[0005dd96] 0c52 0006                 cmpi.w     #$0006,(a2)
[0005dd9a] 6dda                      blt.s      Aus_objboxed_6
[0005dd9c] 3c2b 0010                 move.w     16(a3),d6
[0005dda0] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dda6] 3028 0012                 move.w     18(a0),d0
[0005ddaa] d040                      add.w      d0,d0
[0005ddac] 322b 0014                 move.w     20(a3),d1
[0005ddb0] b240                      cmp.w      d0,d1
[0005ddb2] 6f0c                      ble.s      Aus_objboxed_7
[0005ddb4] 3428 0012                 move.w     18(a0),d2
[0005ddb8] d56b 0010                 add.w      d2,16(a3)
[0005ddbc] 916b 0014                 sub.w      d0,20(a3)
Aus_objboxed_7:
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
[0005de56] 6700 0170                 beq        Aus_objboxed_8
[0005de5a] 3f6f 0006 0008            move.w     6(a7),8(a7)
[0005de60] 006c 0010 0222            ori.w      #$0010,546(a4)
[0005de66] 6000 0138                 bra        Aus_objboxed_9
Aus_objboxed_24:
[0005de6a] 3e05                      move.w     d5,d7
Aus_objboxed_25:
[0005de6c] 2f39 000d 99d6            move.l     _globl,-(a7)
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
[0005dec2] 4eb9 0006 af70            jsr        mt_evnt_multi
[0005dec8] 4fef 0032                 lea.l      50(a7),a7
[0005decc] 7202                      moveq.l    #2,d1
[0005dece] c240                      and.w      d0,d1
[0005ded0] 6600 011a                 bne        Aus_objboxed_10
[0005ded4] 7404                      moveq.l    #4,d2
[0005ded6] c440                      and.w      d0,d2
[0005ded8] 6768                      beq.s      Aus_objboxed_11
[0005deda] 302f 0004                 move.w     4(a7),d0
[0005dede] 41eb 0010                 lea.l      16(a3),a0
[0005dee2] 322f 0002                 move.w     2(a7),d1
[0005dee6] 4eb9 0005 ef64            jsr        Aob_within
[0005deec] 4a40                      tst.w      d0
[0005deee] 6704                      beq.s      Aus_objboxed_12
[0005def0] 7a02                      moveq.l    #2,d5
[0005def2] 604e                      bra.s      Aus_objboxed_11
Aus_objboxed_12:
[0005def4] 322f 0002                 move.w     2(a7),d1
[0005def8] 302f 0004                 move.w     4(a7),d0
[0005defc] 41eb 0008                 lea.l      8(a3),a0
[0005df00] 4eb9 0005 ef64            jsr        Aob_within
[0005df06] 4a40                      tst.w      d0
[0005df08] 6704                      beq.s      Aus_objboxed_13
[0005df0a] 7a01                      moveq.l    #1,d5
[0005df0c] 6034                      bra.s      Aus_objboxed_11
Aus_objboxed_13:
[0005df0e] 322f 0002                 move.w     2(a7),d1
[0005df12] 302f 0004                 move.w     4(a7),d0
[0005df16] 204b                      movea.l    a3,a0
[0005df18] 4eb9 0005 ef64            jsr        Aob_within
[0005df1e] 4a40                      tst.w      d0
[0005df20] 6704                      beq.s      Aus_objboxed_14
[0005df22] 4245                      clr.w      d5
[0005df24] 601c                      bra.s      Aus_objboxed_11
Aus_objboxed_14:
[0005df26] 322f 0002                 move.w     2(a7),d1
[0005df2a] 302f 0004                 move.w     4(a7),d0
[0005df2e] 41eb 0018                 lea.l      24(a3),a0
[0005df32] 4eb9 0005 ef64            jsr        Aob_within
[0005df38] 4a40                      tst.w      d0
[0005df3a] 6704                      beq.s      Aus_objboxed_15
[0005df3c] 7a03                      moveq.l    #3,d5
[0005df3e] 6002                      bra.s      Aus_objboxed_11
Aus_objboxed_15:
[0005df40] 7a04                      moveq.l    #4,d5
Aus_objboxed_11:
[0005df42] 867c 0020                 or.w       #$0020,d3
[0005df46] 3005                      move.w     d5,d0
[0005df48] b07c 0004                 cmp.w      #$0004,d0
[0005df4c] 6248                      bhi.s      Aus_objboxed_16
[0005df4e] d040                      add.w      d0,d0
[0005df50] 303b 0006                 move.w     $0005DF58(pc,d0.w),d0
[0005df54] 4efb 0002                 jmp        $0005DF58(pc,d0.w)
J56:
[0005df58] 000a                      dc.w $000a   ; Aus_objboxed_17-J56
[0005df5a] 0010                      dc.w $0010   ; Aus_objboxed_18-J56
[0005df5c] 0016                      dc.w $0016   ; Aus_objboxed_19-J56
[0005df5e] 0030                      dc.w $0030   ; Aus_objboxed_20-J56
[0005df60] 0038                      dc.w $0038   ; Aus_objboxed_21-J56
Aus_objboxed_17:
[0005df62] 536f 0008                 subq.w     #1,8(a7)
[0005df66] 602c                      bra.s      Aus_objboxed_22
Aus_objboxed_18:
[0005df68] 536f 0008                 subq.w     #1,8(a7)
[0005df6c] 601e                      bra.s      Aus_objboxed_23
Aus_objboxed_19:
[0005df6e] 302f 0004                 move.w     4(a7),d0
[0005df72] 9046                      sub.w      d6,d0
[0005df74] 48c0                      ext.l      d0
[0005df76] 81ec 021e                 divs.w     542(a4),d0
[0005df7a] d06c 021c                 add.w      540(a4),d0
[0005df7e] 3f40 0008                 move.w     d0,8(a7)
[0005df82] c67c ffdf                 and.w      #$FFDF,d3
[0005df86] 600e                      bra.s      Aus_objboxed_16
Aus_objboxed_20:
[0005df88] 526f 0008                 addq.w     #1,8(a7)
Aus_objboxed_23:
[0005df8c] 7864                      moveq.l    #100,d4
[0005df8e] 6006                      bra.s      Aus_objboxed_16
Aus_objboxed_21:
[0005df90] 526f 0008                 addq.w     #1,8(a7)
Aus_objboxed_22:
[0005df94] 781e                      moveq.l    #30,d4
Aus_objboxed_16:
[0005df96] 302f 0008                 move.w     8(a7),d0
[0005df9a] 6a04                      bpl.s      Aus_objboxed_9
[0005df9c] 426f 0008                 clr.w      8(a7)
Aus_objboxed_9:
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
Aus_objboxed_8:
[0005dfc8] ba7c 0002                 cmp.w      #$0002,d5
[0005dfcc] 6600 fe9c                 bne        Aus_objboxed_24
[0005dfd0] 302f 0004                 move.w     4(a7),d0
[0005dfd4] 9046                      sub.w      d6,d0
[0005dfd6] 48c0                      ext.l      d0
[0005dfd8] 81ec 021e                 divs.w     542(a4),d0
[0005dfdc] c1ec 021e                 muls.w     542(a4),d0
[0005dfe0] d046                      add.w      d6,d0
[0005dfe2] 3740 0028                 move.w     d0,40(a3)
[0005dfe6] 7e05                      moveq.l    #5,d7
[0005dfe8] 6000 fe82                 bra        Aus_objboxed_25
Aus_objboxed_10:
[0005dfec] 026c ffef 0222            andi.w     #$FFEF,546(a4)
[0005dff2] 2079 0010 1f12            movea.l    ACSblk,a0
[0005dff8] 2068 023c                 movea.l    572(a0),a0
[0005dffc] 41e8 0050                 lea.l      80(a0),a0
[0005e000] 4eb9 0004 9898            jsr        Amo_new
Aus_objboxed_1:
[0005e006] 4fef 0052                 lea.l      82(a7),a7
[0005e00a] 4cdf 3cf8                 movem.l    (a7)+,d3-d7/a2-a5
[0005e00e] 4e75                      rts

Auo_boxed_11:
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
[0005e038] 6706                      beq.s      Auo_boxed_1
[0005e03a] 2f6d 0204 001a            move.l     516(a5),26(a7)
Auo_boxed_1:
[0005e040] 3003                      move.w     d3,d0
[0005e042] b07c 0009                 cmp.w      #$0009,d0
[0005e046] 6700 012a                 beq        Auo_boxed_2
[0005e04a] 6e20                      bgt.s      Auo_boxed_3
[0005e04c] b07c 0006                 cmp.w      #$0006,d0
[0005e050] 6200 03c2                 bhi        Auo_boxed_4
[0005e054] d040                      add.w      d0,d0
[0005e056] 303b 0006                 move.w     $0005E05E(pc,d0.w),d0
[0005e05a] 4efb 0002                 jmp        $0005E05E(pc,d0.w)
J57:
[0005e05e] 03b6                      dc.w $03b6   ; Auo_boxed_4-J57
[0005e060] 003c                      dc.w $003c   ; Auo_boxed_5-J57
[0005e062] 0158                      dc.w $0158   ; Auo_boxed_6-J57
[0005e064] 0192                      dc.w $0192   ; Auo_boxed_7-J57
[0005e066] 016a                      dc.w $016a   ; Auo_boxed_8-J57
[0005e068] 01c0                      dc.w $01c0   ; Auo_boxed_9-J57
[0005e06a] 01ba                      dc.w $01ba   ; Auo_boxed_10-J57
Auo_boxed_3:
[0005e06c] b07c                      dc.w $b07c   ; Auo_boxed_11-J57
[0005e06e] 0014                      dc.w $0014   ; Auo_boxed_12-J57
[0005e070] 6700                      dc.w $6700   ; Auo_boxed_13-J57
Auo_boxed_12:
[0005e072] 0954                      bchg       d4,(a4)
[0005e074] 6e12                      bgt.s      Auo_boxed_14
[0005e076] 907c 0012                 sub.w      #$0012,d0
[0005e07a] 6700 0122                 beq        Auo_boxed_15
[0005e07e] 5340                      subq.w     #1,d0
[0005e080] 6700 0944                 beq        Auo_boxed_16
[0005e084] 6000 038e                 bra        Auo_boxed_4
Auo_boxed_14:
[0005e088] 907c 02c0                 sub.w      #$02C0,d0
[0005e08c] 6700 0366                 beq        Auo_boxed_17
[0005e090] 5340                      subq.w     #1,d0
[0005e092] 6700 0370                 beq        Auo_boxed_18
[0005e096] 6000 037c                 bra        Auo_boxed_4
Auo_boxed_5:
[0005e09a] 206f 001e                 movea.l    30(a7),a0
[0005e09e] 2668 000c                 movea.l    12(a0),a3
[0005e0a2] 203c 0000 0224            move.l     #$00000224,d0
[0005e0a8] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005e0ae] 2a48                      movea.l    a0,a5
[0005e0b0] 206f 001e                 movea.l    30(a7),a0
[0005e0b4] 214d 0010                 move.l     a5,16(a0)
[0005e0b8] 200d                      move.l     a5,d0
[0005e0ba] 6700 0906                 beq        Auo_boxed_19
[0005e0be] 223c 0000 0224            move.l     #$00000224,d1
[0005e0c4] 204d                      movea.l    a5,a0
[0005e0c6] 4240                      clr.w      d0
[0005e0c8] 4eb9 0007 712e            jsr        memset
[0005e0ce] 206f 001e                 movea.l    30(a7),a0
[0005e0d2] 214d 000c                 move.l     a5,12(a0)
[0005e0d6] 2257                      movea.l    (a7),a1
[0005e0d8] 3029 0002                 move.w     2(a1),d0
[0005e0dc] e448                      lsr.w      #2,d0
[0005e0de] c07c 0001                 and.w      #$0001,d0
[0005e0e2] 673c                      beq.s      Auo_boxed_20
[0005e0e4] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e0ea] 3228 0294                 move.w     660(a0),d1
[0005e0ee] 3028 0010                 move.w     16(a0),d0
[0005e0f2] 4eb9 0006 5216            jsr        vst_font
[0005e0f8] 486d 0220                 pea.l      544(a5)
[0005e0fc] 486d 021e                 pea.l      542(a5)
[0005e100] 43ef 0010                 lea.l      16(a7),a1
[0005e104] 41ef 0010                 lea.l      16(a7),a0
[0005e108] 2c79 0010 1f12            movea.l    ACSblk,a6
[0005e10e] 322e 0296                 move.w     662(a6),d1
[0005e112] 302e 0010                 move.w     16(a6),d0
[0005e116] 4eb9 0006 50a0            jsr        vst_height
[0005e11c] 504f                      addq.w     #8,a7
[0005e11e] 603a                      bra.s      Auo_boxed_21
Auo_boxed_20:
[0005e120] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e126] 3228 0290                 move.w     656(a0),d1
[0005e12a] 3028 0010                 move.w     16(a0),d0
[0005e12e] 4eb9 0006 5216            jsr        vst_font
[0005e134] 486d 0220                 pea.l      544(a5)
[0005e138] 486d 021e                 pea.l      542(a5)
[0005e13c] 43ef 0010                 lea.l      16(a7),a1
[0005e140] 41ef 0010                 lea.l      16(a7),a0
[0005e144] 2c79 0010 1f12            movea.l    ACSblk,a6
[0005e14a] 322e 0292                 move.w     658(a6),d1
[0005e14e] 302e 0010                 move.w     16(a6),d0
[0005e152] 4eb9 0006 50a0            jsr        vst_height
[0005e158] 504f                      addq.w     #8,a7
Auo_boxed_21:
[0005e15a] 200b                      move.l     a3,d0
[0005e15c] 670a                      beq.s      Auo_boxed_22
[0005e15e] 224b                      movea.l    a3,a1
[0005e160] 204a                      movea.l    a2,a0
[0005e162] 7001                      moveq.l    #1,d0
[0005e164] 6100 eeb4                 bsr        boxed_insert
Auo_boxed_22:
[0005e168] 3b7c 0004 0222            move.w     #$0004,546(a5)
[0005e16e] 6000 0856                 bra        Auo_boxed_16
Auo_boxed_2:
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
[0005e19a] 6000 082a                 bra        Auo_boxed_16
Auo_boxed_15:
[0005e19e] 286f 0022                 movea.l    34(a7),a4
[0005e1a2] 28ad 0204                 move.l     516(a5),(a4)
[0005e1a6] 296d 0208 0004            move.l     520(a5),4(a4)
[0005e1ac] 396d 020c 0008            move.w     524(a5),8(a4)
[0005e1b2] 6000 0812                 bra        Auo_boxed_16
Auo_boxed_6:
[0005e1b6] 206f 001e                 movea.l    30(a7),a0
[0005e1ba] 2068 0010                 movea.l    16(a0),a0
[0005e1be] 4eb9 0004 7e26            jsr        Ax_free
[0005e1c4] 6000 0800                 bra        Auo_boxed_16
Auo_boxed_8:
[0005e1c8] 202f 001a                 move.l     26(a7),d0
[0005e1cc] 6700 07f4                 beq        Auo_boxed_19
[0005e1d0] 222d 0210                 move.l     528(a5),d1
[0005e1d4] 6700 07ec                 beq        Auo_boxed_19
[0005e1d8] 242d 0214                 move.l     532(a5),d2
[0005e1dc] 6700 07e4                 beq        Auo_boxed_19
[0005e1e0] 2041                      movea.l    d1,a0
[0005e1e2] 4250                      clr.w      (a0)
[0005e1e4] 206d 0214                 movea.l    532(a5),a0
[0005e1e8] 30ad 020e                 move.w     526(a5),(a0)
[0005e1ec] 6000 0216                 bra        Auo_boxed_18
Auo_boxed_7:
[0005e1f0] 202f 001a                 move.l     26(a7),d0
[0005e1f4] 6700 07cc                 beq        Auo_boxed_19
[0005e1f8] 222d 0210                 move.l     528(a5),d1
[0005e1fc] 6700 07c4                 beq        Auo_boxed_19
[0005e200] 242d 0214                 move.l     532(a5),d2
[0005e204] 6700 07bc                 beq        Auo_boxed_19
[0005e208] 206f 001e                 movea.l    30(a7),a0
[0005e20c] 226f 0022                 movea.l    34(a7),a1
[0005e210] 22a8 000c                 move.l     12(a0),(a1)
[0005e214] 6000 07b0                 bra        Auo_boxed_16
Auo_boxed_10:
[0005e218] 006d 0004 0222            ori.w      #$0004,546(a5)
Auo_boxed_9:
[0005e21e] 202f 001a                 move.l     26(a7),d0
[0005e222] 6700 079e                 beq        Auo_boxed_19
[0005e226] 222d 0210                 move.l     528(a5),d1
[0005e22a] 6700 0796                 beq        Auo_boxed_19
[0005e22e] 242d 0214                 move.l     532(a5),d2
[0005e232] 6700 078e                 beq        Auo_boxed_19
[0005e236] 2042                      movea.l    d2,a0
[0005e238] 3810                      move.w     (a0),d4
[0005e23a] 2240                      movea.l    d0,a1
[0005e23c] 3229 001c                 move.w     28(a1),d1
[0005e240] b26d 020c                 cmp.w      524(a5),d1
[0005e244] 6624                      bne.s      Auo_boxed_23
[0005e246] 4a44                      tst.w      d4
[0005e248] 6f20                      ble.s      Auo_boxed_23
[0005e24a] 3004                      move.w     d4,d0
[0005e24c] 48c0                      ext.l      d0
[0005e24e] 286d 0210                 movea.l    528(a5),a4
[0005e252] 3414                      move.w     (a4),d2
[0005e254] 43f5 2000                 lea.l      0(a5,d2.w),a1
[0005e258] 43e9 0100                 lea.l      256(a1),a1
[0005e25c] 204d                      movea.l    a5,a0
[0005e25e] 4eb9 0007 6f44            jsr        memcpy
[0005e264] 4235 4000                 clr.b      0(a5,d4.w)
[0005e268] 600c                      bra.s      Auo_boxed_24
Auo_boxed_23:
[0005e26a] 43ed 0100                 lea.l      256(a5),a1
[0005e26e] 204d                      movea.l    a5,a0
[0005e270] 4eb9 0007 6950            jsr        strcpy
Auo_boxed_24:
[0005e276] 7007                      moveq.l    #7,d0
[0005e278] c06d 0222                 and.w      546(a5),d0
[0005e27c] 6700 0162                 beq        Auo_boxed_25
[0005e280] 322d 020c                 move.w     524(a5),d1
[0005e284] c27c 1000                 and.w      #$1000,d1
[0005e288] 670a                      beq.s      Auo_boxed_26
[0005e28a] 206f 001a                 movea.l    26(a7),a0
[0005e28e] 2868 0018                 movea.l    24(a0),a4
[0005e292] 6008                      bra.s      Auo_boxed_27
Auo_boxed_26:
[0005e294] 206f 001a                 movea.l    26(a7),a0
[0005e298] 2868 0014                 movea.l    20(a0),a4
Auo_boxed_27:
[0005e29c] 3e2a 000a                 move.w     10(a2),d7
[0005e2a0] 3c2a 0008                 move.w     8(a2),d6
[0005e2a4] 026a ffcf 000a            andi.w     #$FFCF,10(a2)
[0005e2aa] 026a bff7 0008            andi.w     #$BFF7,8(a2)
[0005e2b0] 302d 020c                 move.w     524(a5),d0
[0005e2b4] c07c 0fff                 and.w      #$0FFF,d0
[0005e2b8] 224c                      movea.l    a4,a1
[0005e2ba] 41ef 0012                 lea.l      18(a7),a0
[0005e2be] 4eb9 0004 a3be            jsr        Aob_offset
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
[0005e2f8] 6654                      bne.s      Auo_boxed_28
[0005e2fa] 322d 0218                 move.w     536(a5),d1
[0005e2fe] 206d 0210                 movea.l    528(a5),a0
[0005e302] b250                      cmp.w      (a0),d1
[0005e304] 6700 00d4                 beq        Auo_boxed_29
[0005e308] 397c 0001 0004            move.w     #$0001,4(a4)
[0005e30e] 4a41                      tst.w      d1
[0005e310] 6b20                      bmi.s      Auo_boxed_30
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
Auo_boxed_30:
[0005e332] 206d 0210                 movea.l    528(a5),a0
[0005e336] 3010                      move.w     (a0),d0
[0005e338] 6b00 00a0                 bmi        Auo_boxed_29
[0005e33c] 906d 021c                 sub.w      540(a5),d0
[0005e340] c1ed 021e                 muls.w     542(a5),d0
[0005e344] d06f 0012                 add.w      18(a7),d0
[0005e348] 5240                      addq.w     #1,d0
[0005e34a] 3880                      move.w     d0,(a4)
[0005e34c] 6066                      bra.s      Auo_boxed_31
Auo_boxed_28:
[0005e34e] 7007                      moveq.l    #7,d0
[0005e350] c06d 0222                 and.w      546(a5),d0
[0005e354] 5540                      subq.w     #2,d0
[0005e356] 666e                      bne.s      Auo_boxed_32
[0005e358] 322d 0218                 move.w     536(a5),d1
[0005e35c] 206d 0210                 movea.l    528(a5),a0
[0005e360] b250                      cmp.w      (a0),d1
[0005e362] 660c                      bne.s      Auo_boxed_33
[0005e364] 342d 021a                 move.w     538(a5),d2
[0005e368] 226d 0214                 movea.l    532(a5),a1
[0005e36c] b451                      cmp.w      (a1),d2
[0005e36e] 676a                      beq.s      Auo_boxed_29
Auo_boxed_33:
[0005e370] 206d 0210                 movea.l    528(a5),a0
[0005e374] 3010                      move.w     (a0),d0
[0005e376] b06d 0218                 cmp.w      536(a5),d0
[0005e37a] 6c04                      bge.s      Auo_boxed_34
[0005e37c] 3a00                      move.w     d0,d5
[0005e37e] 6004                      bra.s      Auo_boxed_35
Auo_boxed_34:
[0005e380] 3a2d 0218                 move.w     536(a5),d5
Auo_boxed_35:
[0005e384] 206d 0214                 movea.l    532(a5),a0
[0005e388] 3010                      move.w     (a0),d0
[0005e38a] b06d 021a                 cmp.w      538(a5),d0
[0005e38e] 6f04                      ble.s      Auo_boxed_36
[0005e390] 3800                      move.w     d0,d4
[0005e392] 6004                      bra.s      Auo_boxed_37
Auo_boxed_36:
[0005e394] 382d 021a                 move.w     538(a5),d4
Auo_boxed_37:
[0005e398] 3005                      move.w     d5,d0
[0005e39a] 906d 021c                 sub.w      540(a5),d0
[0005e39e] c1ed 021e                 muls.w     542(a5),d0
[0005e3a2] d06f 0012                 add.w      18(a7),d0
[0005e3a6] 3880                      move.w     d0,(a4)
[0005e3a8] 3204                      move.w     d4,d1
[0005e3aa] c3ed 021e                 muls.w     542(a5),d1
[0005e3ae] 5441                      addq.w     #2,d1
[0005e3b0] 3941 0004                 move.w     d1,4(a4)
Auo_boxed_31:
[0005e3b4] 224c                      movea.l    a4,a1
[0005e3b6] 206f 001a                 movea.l    26(a7),a0
[0005e3ba] 2c6f 001a                 movea.l    26(a7),a6
[0005e3be] 2c6e 006a                 movea.l    106(a6),a6
[0005e3c2] 4e96                      jsr        (a6)
[0005e3c4] 6014                      bra.s      Auo_boxed_29
Auo_boxed_32:
[0005e3c6] 72ff                      moveq.l    #-1,d1
[0005e3c8] 302d 020c                 move.w     524(a5),d0
[0005e3cc] 206d 0204                 movea.l    516(a5),a0
[0005e3d0] 226d 0204                 movea.l    516(a5),a1
[0005e3d4] 2269 0066                 movea.l    102(a1),a1
[0005e3d8] 4e91                      jsr        (a1)
Auo_boxed_29:
[0005e3da] 026d fff8 0222            andi.w     #$FFF8,546(a5)
Auo_boxed_25:
[0005e3e0] 206d 0210                 movea.l    528(a5),a0
[0005e3e4] 3b50 0218                 move.w     (a0),536(a5)
[0005e3e8] 206d 0214                 movea.l    532(a5),a0
[0005e3ec] 3b50 021a                 move.w     (a0),538(a5)
[0005e3f0] 6000 05d4                 bra        Auo_boxed_16
Auo_boxed_17:
[0005e3f4] 4240                      clr.w      d0
[0005e3f6] 226f 0022                 movea.l    34(a7),a1
[0005e3fa] 204a                      movea.l    a2,a0
[0005e3fc] 6100 ec1c                 bsr        boxed_insert
[0005e400] 6000 05c4                 bra        Auo_boxed_16
Auo_boxed_18:
[0005e404] 7001                      moveq.l    #1,d0
[0005e406] 226f 0022                 movea.l    34(a7),a1
[0005e40a] 204a                      movea.l    a2,a0
[0005e40c] 6100 ec0c                 bsr        boxed_insert
[0005e410] 6000 05b4                 bra        Auo_boxed_16
Auo_boxed_4:
[0005e414] 206f 001a                 movea.l    26(a7),a0
[0005e418] 3028 001c                 move.w     28(a0),d0
[0005e41c] b06d 020c                 cmp.w      524(a5),d0
[0005e420] 6600 05a0                 bne        Auo_boxed_19
[0005e424] 222d 0210                 move.l     528(a5),d1
[0005e428] 6700 0598                 beq        Auo_boxed_19
[0005e42c] 242d 0214                 move.l     532(a5),d2
[0005e430] 6700 0590                 beq        Auo_boxed_19
[0005e434] 3803                      move.w     d3,d4
[0005e436] b87c 02c4                 cmp.w      #$02C4,d4
[0005e43a] 6700 0450                 beq        Auo_boxed_38
[0005e43e] 6e44                      bgt.s      Auo_boxed_39
[0005e440] b87c 02bd                 cmp.w      #$02BD,d4
[0005e444] 6700 01f2                 beq        Auo_boxed_40
[0005e448] 6e1c                      bgt.s      Auo_boxed_41
[0005e44a] 987c 000e                 sub.w      #$000E,d4
[0005e44e] 675a                      beq.s      Auo_boxed_42
[0005e450] 5344                      subq.w     #1,d4
[0005e452] 6774                      beq.s      Auo_boxed_43
[0005e454] 5544                      subq.w     #2,d4
[0005e456] 6700 0098                 beq        Auo_boxed_44
[0005e45a] 987c 02ab                 sub.w      #$02AB,d4
[0005e45e] 6700 0134                 beq        Auo_boxed_45
[0005e462] 6000 055e                 bra        Auo_boxed_19
Auo_boxed_41:
[0005e466] 987c 02be                 sub.w      #$02BE,d4
[0005e46a] 6700 00ba                 beq        Auo_boxed_46
[0005e46e] 5344                      subq.w     #1,d4
[0005e470] 6700 0156                 beq        Auo_boxed_47
[0005e474] 5744                      subq.w     #3,d4
[0005e476] 6700 01f0                 beq        Auo_boxed_48
[0005e47a] 5344                      subq.w     #1,d4
[0005e47c] 6700 0346                 beq        Auo_boxed_49
[0005e480] 6000 0540                 bra        Auo_boxed_19
Auo_boxed_39:
[0005e484] 987c 02c5                 sub.w      #$02C5,d4
[0005e488] b87c 0007                 cmp.w      #$0007,d4
[0005e48c] 6200 0534                 bhi        Auo_boxed_19
[0005e490] d844                      add.w      d4,d4
[0005e492] 383b 4006                 move.w     $0005E49A(pc,d4.w),d4
[0005e496] 4efb 4002                 jmp        $0005E49A(pc,d4.w)
J58:
[0005e49a] 0358                      dc.w $0358   ; Auo_boxed_50-J58
[0005e49c] 0344                      dc.w $0344   ; Auo_boxed_51-J58
[0005e49e] 04b8                      dc.w $04b8   ; Auo_boxed_52-J58
[0005e4a0] 0426                      dc.w $0426   ; Auo_boxed_53-J58
[0005e4a2] 0412                      dc.w $0412   ; Auo_boxed_54-J58
[0005e4a4] 04e8                      dc.w $04e8   ; Auo_boxed_55-J58
[0005e4a6] 04f8                      dc.w $04f8   ; Auo_boxed_56-J58
[0005e4a8] 0520                      dc.w $0520   ; Auo_boxed_57-J58
Auo_boxed_42:
[0005e4aa] 206d 0214                 movea.l    532(a5),a0
[0005e4ae] 3010                      move.w     (a0),d0
[0005e4b0] 6f08                      ble.s      Auo_boxed_58
[0005e4b2] 006d 0004 0222            ori.w      #$0004,546(a5)
[0005e4b8] 6006                      bra.s      Auo_boxed_59
Auo_boxed_58:
[0005e4ba] 006d 0001 0222            ori.w      #$0001,546(a5)
Auo_boxed_59:
[0005e4c0] 206d 0210                 movea.l    528(a5),a0
[0005e4c4] 4250                      clr.w      (a0)
[0005e4c6] 601e                      bra.s      Auo_boxed_60
Auo_boxed_43:
[0005e4c8] 206d 0214                 movea.l    532(a5),a0
[0005e4cc] 3010                      move.w     (a0),d0
[0005e4ce] 6f08                      ble.s      Auo_boxed_61
[0005e4d0] 006d 0004 0222            ori.w      #$0004,546(a5)
[0005e4d6] 6006                      bra.s      Auo_boxed_62
Auo_boxed_61:
[0005e4d8] 006d 0001 0222            ori.w      #$0001,546(a5)
Auo_boxed_62:
[0005e4de] 206d 0210                 movea.l    528(a5),a0
[0005e4e2] 30ad 020e                 move.w     526(a5),(a0)
Auo_boxed_60:
[0005e4e6] 206d 0214                 movea.l    532(a5),a0
[0005e4ea] 4250                      clr.w      (a0)
[0005e4ec] 6000 015e                 bra        Auo_boxed_63
Auo_boxed_44:
[0005e4f0] 206f 0022                 movea.l    34(a7),a0
[0005e4f4] 226d 0210                 movea.l    528(a5),a1
[0005e4f8] 3290                      move.w     (a0),(a1)
[0005e4fa] 226d 0214                 movea.l    532(a5),a1
[0005e4fe] 3011                      move.w     (a1),d0
[0005e500] 6f08                      ble.s      Auo_boxed_64
[0005e502] 4251                      clr.w      (a1)
[0005e504] 006d 0004 0222            ori.w      #$0004,546(a5)
Auo_boxed_64:
[0005e50a] 206d 0210                 movea.l    528(a5),a0
[0005e50e] 3010                      move.w     (a0),d0
[0005e510] 6b08                      bmi.s      Auo_boxed_65
[0005e512] b06d 020e                 cmp.w      526(a5),d0
[0005e516] 6f00 0118                 ble        Auo_boxed_66
Auo_boxed_65:
[0005e51a] 206d 0210                 movea.l    528(a5),a0
[0005e51e] 30ad 020e                 move.w     526(a5),(a0)
[0005e522] 6000 010c                 bra        Auo_boxed_66
Auo_boxed_46:
[0005e526] 206d 0214                 movea.l    532(a5),a0
[0005e52a] 3010                      move.w     (a0),d0
[0005e52c] 6666                      bne.s      Auo_boxed_45
[0005e52e] 226d 0210                 movea.l    528(a5),a1
[0005e532] 3211                      move.w     (a1),d1
[0005e534] b26d 020e                 cmp.w      526(a5),d1
[0005e538] 6700 048c                 beq        Auo_boxed_16
[0005e53c] 47ed 0100                 lea.l      256(a5),a3
[0005e540] 3c01                      move.w     d1,d6
[0005e542] 6002                      bra.s      Auo_boxed_67
Auo_boxed_69:
[0005e544] 5246                      addq.w     #1,d6
Auo_boxed_67:
[0005e546] bc6d 020e                 cmp.w      526(a5),d6
[0005e54a] 6c1e                      bge.s      Auo_boxed_68
[0005e54c] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e550] 4880                      ext.w      d0
[0005e552] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e558] 41e8 03e6                 lea.l      998(a0),a0
[0005e55c] 4eb9 0007 68ce            jsr        strchr
[0005e562] 2008                      move.l     a0,d0
[0005e564] 67de                      beq.s      Auo_boxed_69
[0005e566] 6002                      bra.s      Auo_boxed_68
Auo_boxed_71:
[0005e568] 5246                      addq.w     #1,d6
Auo_boxed_68:
[0005e56a] bc6d 020e                 cmp.w      526(a5),d6
[0005e56e] 6c1a                      bge.s      Auo_boxed_70
[0005e570] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e574] 4880                      ext.w      d0
[0005e576] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e57c] 41e8 03e6                 lea.l      998(a0),a0
[0005e580] 4eb9 0007 68ce            jsr        strchr
[0005e586] 2008                      move.l     a0,d0
[0005e588] 66de                      bne.s      Auo_boxed_71
Auo_boxed_70:
[0005e58a] 206d 0210                 movea.l    528(a5),a0
[0005e58e] 3086                      move.w     d6,(a0)
[0005e590] 6000 009e                 bra        Auo_boxed_66
Auo_boxed_45:
[0005e594] 206d 0214                 movea.l    532(a5),a0
[0005e598] 3010                      move.w     (a0),d0
[0005e59a] 6f0a                      ble.s      Auo_boxed_72
[0005e59c] 226d 0210                 movea.l    528(a5),a1
[0005e5a0] d151                      add.w      d0,(a1)
[0005e5a2] 6000 009c                 bra        Auo_boxed_73
Auo_boxed_72:
[0005e5a6] 206d 0210                 movea.l    528(a5),a0
[0005e5aa] 3010                      move.w     (a0),d0
[0005e5ac] b06d 020e                 cmp.w      526(a5),d0
[0005e5b0] 6c00 0414                 bge        Auo_boxed_16
[0005e5b4] 5250                      addq.w     #1,(a0)
Auo_boxed_80:
[0005e5b6] 70ff                      moveq.l    #-1,d0
[0005e5b8] 204a                      movea.l    a2,a0
[0005e5ba] 6100 f476                 bsr        boxed_viewpos
[0005e5be] 006d 0001 0222            ori.w      #$0001,546(a5)
[0005e5c4] 6000 0400                 bra        Auo_boxed_16
Auo_boxed_47:
[0005e5c8] 206d 0214                 movea.l    532(a5),a0
[0005e5cc] 3010                      move.w     (a0),d0
[0005e5ce] 6668                      bne.s      Auo_boxed_40
[0005e5d0] 226d 0210                 movea.l    528(a5),a1
[0005e5d4] 3211                      move.w     (a1),d1
[0005e5d6] 6700 03ee                 beq        Auo_boxed_16
[0005e5da] 47ed 0100                 lea.l      256(a5),a3
[0005e5de] 7cff                      moveq.l    #-1,d6
[0005e5e0] dc41                      add.w      d1,d6
[0005e5e2] 6002                      bra.s      Auo_boxed_74
Auo_boxed_76:
[0005e5e4] 5346                      subq.w     #1,d6
Auo_boxed_74:
[0005e5e6] 4a46                      tst.w      d6
[0005e5e8] 6b1e                      bmi.s      Auo_boxed_75
[0005e5ea] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e5ee] 4880                      ext.w      d0
[0005e5f0] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e5f6] 41e8 03e6                 lea.l      998(a0),a0
[0005e5fa] 4eb9 0007 68ce            jsr        strchr
[0005e600] 2008                      move.l     a0,d0
[0005e602] 66e0                      bne.s      Auo_boxed_76
[0005e604] 6002                      bra.s      Auo_boxed_75
Auo_boxed_78:
[0005e606] 5346                      subq.w     #1,d6
Auo_boxed_75:
[0005e608] 4a46                      tst.w      d6
[0005e60a] 6b1a                      bmi.s      Auo_boxed_77
[0005e60c] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e610] 4880                      ext.w      d0
[0005e612] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e618] 41e8 03e6                 lea.l      998(a0),a0
[0005e61c] 4eb9 0007 68ce            jsr        strchr
[0005e622] 2008                      move.l     a0,d0
[0005e624] 67e0                      beq.s      Auo_boxed_78
Auo_boxed_77:
[0005e626] 7001                      moveq.l    #1,d0
[0005e628] d046                      add.w      d6,d0
[0005e62a] 206d 0210                 movea.l    528(a5),a0
[0005e62e] 3080                      move.w     d0,(a0)
Auo_boxed_66:
[0005e630] 006d 0001 0222            ori.w      #$0001,546(a5)
[0005e636] 6014                      bra.s      Auo_boxed_63
Auo_boxed_40:
[0005e638] 206d 0214                 movea.l    532(a5),a0
[0005e63c] 3010                      move.w     (a0),d0
[0005e63e] 6f18                      ble.s      Auo_boxed_79
Auo_boxed_73:
[0005e640] 206d 0214                 movea.l    532(a5),a0
[0005e644] 4250                      clr.w      (a0)
[0005e646] 006d 0004 0222            ori.w      #$0004,546(a5)
Auo_boxed_63:
[0005e64c] 70ff                      moveq.l    #-1,d0
[0005e64e] 204a                      movea.l    a2,a0
[0005e650] 6100 f3e0                 bsr        boxed_viewpos
[0005e654] 6000 0370                 bra        Auo_boxed_16
Auo_boxed_79:
[0005e658] 206d 0210                 movea.l    528(a5),a0
[0005e65c] 3010                      move.w     (a0),d0
[0005e65e] 6f00 0366                 ble        Auo_boxed_16
[0005e662] 5350                      subq.w     #1,(a0)
[0005e664] 6000 ff50                 bra        Auo_boxed_80
Auo_boxed_48:
[0005e668] 286f 0022                 movea.l    34(a7),a4
[0005e66c] 3014                      move.w     (a4),d0
[0005e66e] b06c 0002                 cmp.w      2(a4),d0
[0005e672] 6c08                      bge.s      Auo_boxed_81
[0005e674] 3a00                      move.w     d0,d5
[0005e676] 3e2c 0002                 move.w     2(a4),d7
[0005e67a] 6006                      bra.s      Auo_boxed_82
Auo_boxed_81:
[0005e67c] 3a2c 0002                 move.w     2(a4),d5
[0005e680] 3e14                      move.w     (a4),d7
Auo_boxed_82:
[0005e682] 4a45                      tst.w      d5
[0005e684] 6a06                      bpl.s      Auo_boxed_83
[0005e686] 3e2d 020e                 move.w     526(a5),d7
[0005e68a] 4245                      clr.w      d5
Auo_boxed_83:
[0005e68c] be6d 020e                 cmp.w      526(a5),d7
[0005e690] 6f04                      ble.s      Auo_boxed_84
[0005e692] 3e2d 020e                 move.w     526(a5),d7
Auo_boxed_84:
[0005e696] ba6d 020e                 cmp.w      526(a5),d5
[0005e69a] 6f04                      ble.s      Auo_boxed_85
[0005e69c] 3a2d 020e                 move.w     526(a5),d5
Auo_boxed_85:
[0005e6a0] 7010                      moveq.l    #16,d0
[0005e6a2] c06d 0222                 and.w      546(a5),d0
[0005e6a6] 6700 00e6                 beq        Auo_boxed_86
[0005e6aa] 47ed 0100                 lea.l      256(a5),a3
[0005e6ae] 1033 5000                 move.b     0(a3,d5.w),d0
[0005e6b2] 4880                      ext.w      d0
[0005e6b4] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e6ba] 41e8 03e6                 lea.l      998(a0),a0
[0005e6be] 4eb9 0007 68ce            jsr        strchr
[0005e6c4] 2f48 0004                 move.l     a0,4(a7)
[0005e6c8] 6002                      bra.s      Auo_boxed_87
Auo_boxed_94:
[0005e6ca] 5345                      subq.w     #1,d5
Auo_boxed_87:
[0005e6cc] 4a45                      tst.w      d5
[0005e6ce] 6b4c                      bmi.s      Auo_boxed_88
[0005e6d0] 202f 0004                 move.l     4(a7),d0
[0005e6d4] 6722                      beq.s      Auo_boxed_89
[0005e6d6] 1033 5000                 move.b     0(a3,d5.w),d0
[0005e6da] 4880                      ext.w      d0
[0005e6dc] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e6e2] 41e8 03e6                 lea.l      998(a0),a0
[0005e6e6] 4eb9 0007 68ce            jsr        strchr
[0005e6ec] 2008                      move.l     a0,d0
[0005e6ee] 6704                      beq.s      Auo_boxed_90
[0005e6f0] 7001                      moveq.l    #1,d0
[0005e6f2] 6002                      bra.s      Auo_boxed_91
Auo_boxed_90:
[0005e6f4] 4240                      clr.w      d0
Auo_boxed_91:
[0005e6f6] 6020                      bra.s      Auo_boxed_92
Auo_boxed_89:
[0005e6f8] 1033 5000                 move.b     0(a3,d5.w),d0
[0005e6fc] 4880                      ext.w      d0
[0005e6fe] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e704] 41e8 03e6                 lea.l      998(a0),a0
[0005e708] 4eb9 0007 68ce            jsr        strchr
[0005e70e] 2008                      move.l     a0,d0
[0005e710] 6604                      bne.s      Auo_boxed_93
[0005e712] 7001                      moveq.l    #1,d0
[0005e714] 6002                      bra.s      Auo_boxed_92
Auo_boxed_93:
[0005e716] 4240                      clr.w      d0
Auo_boxed_92:
[0005e718] 4a40                      tst.w      d0
[0005e71a] 66ae                      bne.s      Auo_boxed_94
Auo_boxed_88:
[0005e71c] 5245                      addq.w     #1,d5
[0005e71e] 1033 7000                 move.b     0(a3,d7.w),d0
[0005e722] 4880                      ext.w      d0
[0005e724] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e72a] 41e8 03e6                 lea.l      998(a0),a0
[0005e72e] 4eb9 0007 68ce            jsr        strchr
[0005e734] 2f48 0004                 move.l     a0,4(a7)
[0005e738] 6002                      bra.s      Auo_boxed_95
Auo_boxed_101:
[0005e73a] 5247                      addq.w     #1,d7
Auo_boxed_95:
[0005e73c] be6d 020e                 cmp.w      526(a5),d7
[0005e740] 6c4c                      bge.s      Auo_boxed_86
[0005e742] 202f 0004                 move.l     4(a7),d0
[0005e746] 6722                      beq.s      Auo_boxed_96
[0005e748] 1033 7000                 move.b     0(a3,d7.w),d0
[0005e74c] 4880                      ext.w      d0
[0005e74e] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e754] 41e8 03e6                 lea.l      998(a0),a0
[0005e758] 4eb9 0007 68ce            jsr        strchr
[0005e75e] 2008                      move.l     a0,d0
[0005e760] 6704                      beq.s      Auo_boxed_97
[0005e762] 7001                      moveq.l    #1,d0
[0005e764] 6002                      bra.s      Auo_boxed_98
Auo_boxed_97:
[0005e766] 4240                      clr.w      d0
Auo_boxed_98:
[0005e768] 6020                      bra.s      Auo_boxed_99
Auo_boxed_96:
[0005e76a] 1033 7000                 move.b     0(a3,d7.w),d0
[0005e76e] 4880                      ext.w      d0
[0005e770] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e776] 41e8 03e6                 lea.l      998(a0),a0
[0005e77a] 4eb9 0007 68ce            jsr        strchr
[0005e780] 2008                      move.l     a0,d0
[0005e782] 6604                      bne.s      Auo_boxed_100
[0005e784] 7001                      moveq.l    #1,d0
[0005e786] 6002                      bra.s      Auo_boxed_99
Auo_boxed_100:
[0005e788] 4240                      clr.w      d0
Auo_boxed_99:
[0005e78a] 4a40                      tst.w      d0
[0005e78c] 66ac                      bne.s      Auo_boxed_101
Auo_boxed_86:
[0005e78e] 302c 0002                 move.w     2(a4),d0
[0005e792] 204a                      movea.l    a2,a0
[0005e794] 6100 f29c                 bsr        boxed_viewpos
[0005e798] be45                      cmp.w      d5,d7
[0005e79a] 660e                      bne.s      Auo_boxed_102
[0005e79c] 206d 0210                 movea.l    528(a5),a0
[0005e7a0] 3085                      move.w     d5,(a0)
[0005e7a2] 206d 0214                 movea.l    532(a5),a0
[0005e7a6] 4250                      clr.w      (a0)
[0005e7a8] 6010                      bra.s      Auo_boxed_103
Auo_boxed_102:
[0005e7aa] 206d 0210                 movea.l    528(a5),a0
[0005e7ae] 3085                      move.w     d5,(a0)
[0005e7b0] 3007                      move.w     d7,d0
[0005e7b2] 9045                      sub.w      d5,d0
[0005e7b4] 206d 0214                 movea.l    532(a5),a0
[0005e7b8] 3080                      move.w     d0,(a0)
Auo_boxed_103:
[0005e7ba] 006d 0002 0222            ori.w      #$0002,546(a5)
[0005e7c0] 6000 0204                 bra        Auo_boxed_16
Auo_boxed_49:
[0005e7c4] 286f 0022                 movea.l    34(a7),a4
[0005e7c8] 206d 0210                 movea.l    528(a5),a0
[0005e7cc] 3890                      move.w     (a0),(a4)
[0005e7ce] 3014                      move.w     (a4),d0
[0005e7d0] 206d 0214                 movea.l    532(a5),a0
[0005e7d4] d050                      add.w      (a0),d0
[0005e7d6] 3940 0002                 move.w     d0,2(a4)
[0005e7da] 6000 01ea                 bra        Auo_boxed_16
Auo_boxed_51:
[0005e7de] 206d 0214                 movea.l    532(a5),a0
[0005e7e2] 3010                      move.w     (a0),d0
[0005e7e4] 660c                      bne.s      Auo_boxed_50
[0005e7e6] 226d 0210                 movea.l    528(a5),a1
[0005e7ea] 3091                      move.w     (a1),(a0)
[0005e7ec] 206d 0210                 movea.l    528(a5),a0
[0005e7f0] 4250                      clr.w      (a0)
Auo_boxed_50:
[0005e7f2] 206d 0214                 movea.l    532(a5),a0
[0005e7f6] 3010                      move.w     (a0),d0
[0005e7f8] 6600 0092                 bne        Auo_boxed_38
[0005e7fc] 7cff                      moveq.l    #-1,d6
[0005e7fe] 226d 0210                 movea.l    528(a5),a1
[0005e802] dc51                      add.w      (a1),d6
[0005e804] 47ed 0100                 lea.l      256(a5),a3
[0005e808] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e80c] 4880                      ext.w      d0
[0005e80e] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e814] 41e8 03e6                 lea.l      998(a0),a0
[0005e818] 4eb9 0007 68ce            jsr        strchr
[0005e81e] 2f48 0004                 move.l     a0,4(a7)
[0005e822] 6002                      bra.s      Auo_boxed_104
Auo_boxed_111:
[0005e824] 5346                      subq.w     #1,d6
Auo_boxed_104:
[0005e826] 4a46                      tst.w      d6
[0005e828] 6b4c                      bmi.s      Auo_boxed_105
[0005e82a] 202f 0004                 move.l     4(a7),d0
[0005e82e] 6722                      beq.s      Auo_boxed_106
[0005e830] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e834] 4880                      ext.w      d0
[0005e836] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e83c] 41e8 03e6                 lea.l      998(a0),a0
[0005e840] 4eb9 0007 68ce            jsr        strchr
[0005e846] 2008                      move.l     a0,d0
[0005e848] 6704                      beq.s      Auo_boxed_107
[0005e84a] 7001                      moveq.l    #1,d0
[0005e84c] 6002                      bra.s      Auo_boxed_108
Auo_boxed_107:
[0005e84e] 4240                      clr.w      d0
Auo_boxed_108:
[0005e850] 6020                      bra.s      Auo_boxed_109
Auo_boxed_106:
[0005e852] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e856] 4880                      ext.w      d0
[0005e858] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e85e] 41e8 03e6                 lea.l      998(a0),a0
[0005e862] 4eb9 0007 68ce            jsr        strchr
[0005e868] 2008                      move.l     a0,d0
[0005e86a] 6604                      bne.s      Auo_boxed_110
[0005e86c] 7001                      moveq.l    #1,d0
[0005e86e] 6002                      bra.s      Auo_boxed_109
Auo_boxed_110:
[0005e870] 4240                      clr.w      d0
Auo_boxed_109:
[0005e872] 4a40                      tst.w      d0
[0005e874] 66ae                      bne.s      Auo_boxed_111
Auo_boxed_105:
[0005e876] 5246                      addq.w     #1,d6
[0005e878] 206d 0210                 movea.l    528(a5),a0
[0005e87c] 3010                      move.w     (a0),d0
[0005e87e] 9046                      sub.w      d6,d0
[0005e880] 226d 0214                 movea.l    532(a5),a1
[0005e884] 3280                      move.w     d0,(a1)
[0005e886] 206d 0210                 movea.l    528(a5),a0
[0005e88a] 3086                      move.w     d6,(a0)
Auo_boxed_38:
[0005e88c] 206d 0214                 movea.l    532(a5),a0
[0005e890] 3010                      move.w     (a0),d0
[0005e892] 6600 00d4                 bne        Auo_boxed_112
[0005e896] 226d 0210                 movea.l    528(a5),a1
[0005e89a] 3211                      move.w     (a1),d1
[0005e89c] 6f00 00ca                 ble        Auo_boxed_112
[0005e8a0] 5250                      addq.w     #1,(a0)
[0005e8a2] 206d 0210                 movea.l    528(a5),a0
[0005e8a6] 5350                      subq.w     #1,(a0)
[0005e8a8] 6000 00be                 bra        Auo_boxed_112
Auo_boxed_54:
[0005e8ac] 206d 0214                 movea.l    532(a5),a0
[0005e8b0] 3010                      move.w     (a0),d0
[0005e8b2] 660c                      bne.s      Auo_boxed_53
[0005e8b4] 322d 020e                 move.w     526(a5),d1
[0005e8b8] 226d 0210                 movea.l    528(a5),a1
[0005e8bc] 9251                      sub.w      (a1),d1
[0005e8be] 3081                      move.w     d1,(a0)
Auo_boxed_53:
[0005e8c0] 206d 0214                 movea.l    532(a5),a0
[0005e8c4] 3010                      move.w     (a0),d0
[0005e8c6] 6600 008a                 bne        Auo_boxed_52
[0005e8ca] 226d 0210                 movea.l    528(a5),a1
[0005e8ce] 3c11                      move.w     (a1),d6
[0005e8d0] 47ed 0100                 lea.l      256(a5),a3
[0005e8d4] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e8d8] 4880                      ext.w      d0
[0005e8da] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e8e0] 41e8 03e6                 lea.l      998(a0),a0
[0005e8e4] 4eb9 0007 68ce            jsr        strchr
[0005e8ea] 2f48 0004                 move.l     a0,4(a7)
[0005e8ee] 6002                      bra.s      Auo_boxed_113
Auo_boxed_120:
[0005e8f0] 5246                      addq.w     #1,d6
Auo_boxed_113:
[0005e8f2] bc6d 020e                 cmp.w      526(a5),d6
[0005e8f6] 6c4c                      bge.s      Auo_boxed_114
[0005e8f8] 202f 0004                 move.l     4(a7),d0
[0005e8fc] 6722                      beq.s      Auo_boxed_115
[0005e8fe] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e902] 4880                      ext.w      d0
[0005e904] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e90a] 41e8 03e6                 lea.l      998(a0),a0
[0005e90e] 4eb9 0007 68ce            jsr        strchr
[0005e914] 2008                      move.l     a0,d0
[0005e916] 6704                      beq.s      Auo_boxed_116
[0005e918] 7001                      moveq.l    #1,d0
[0005e91a] 6002                      bra.s      Auo_boxed_117
Auo_boxed_116:
[0005e91c] 4240                      clr.w      d0
Auo_boxed_117:
[0005e91e] 6020                      bra.s      Auo_boxed_118
Auo_boxed_115:
[0005e920] 1033 6000                 move.b     0(a3,d6.w),d0
[0005e924] 4880                      ext.w      d0
[0005e926] 2079 0010 1f12            movea.l    ACSblk,a0
[0005e92c] 41e8 03e6                 lea.l      998(a0),a0
[0005e930] 4eb9 0007 68ce            jsr        strchr
[0005e936] 2008                      move.l     a0,d0
[0005e938] 6604                      bne.s      Auo_boxed_119
[0005e93a] 7001                      moveq.l    #1,d0
[0005e93c] 6002                      bra.s      Auo_boxed_118
Auo_boxed_119:
[0005e93e] 4240                      clr.w      d0
Auo_boxed_118:
[0005e940] 4a40                      tst.w      d0
[0005e942] 66ac                      bne.s      Auo_boxed_120
Auo_boxed_114:
[0005e944] 3006                      move.w     d6,d0
[0005e946] 206d 0210                 movea.l    528(a5),a0
[0005e94a] 9050                      sub.w      (a0),d0
[0005e94c] 226d 0214                 movea.l    532(a5),a1
[0005e950] 3280                      move.w     d0,(a1)
Auo_boxed_52:
[0005e952] 206d 0214                 movea.l    532(a5),a0
[0005e956] 3010                      move.w     (a0),d0
[0005e958] 660e                      bne.s      Auo_boxed_112
[0005e95a] 226d 0210                 movea.l    528(a5),a1
[0005e95e] 3211                      move.w     (a1),d1
[0005e960] b26d 020e                 cmp.w      526(a5),d1
[0005e964] 6c02                      bge.s      Auo_boxed_112
[0005e966] 5250                      addq.w     #1,(a0)
Auo_boxed_112:
[0005e968] 206d 0214                 movea.l    532(a5),a0
[0005e96c] 3010                      move.w     (a0),d0
[0005e96e] 6756                      beq.s      Auo_boxed_16
[0005e970] 3200                      move.w     d0,d1
[0005e972] 226d 0210                 movea.l    528(a5),a1
[0005e976] 3011                      move.w     (a1),d0
[0005e978] 204a                      movea.l    a2,a0
[0005e97a] 6100 f038                 bsr        boxed_delsel
[0005e97e] 6000 fccc                 bra        Auo_boxed_63
Auo_boxed_55:
[0005e982] 322d 020e                 move.w     526(a5),d1
[0005e986] 4240                      clr.w      d0
[0005e988] 204a                      movea.l    a2,a0
[0005e98a] 6100 f028                 bsr        boxed_delsel
[0005e98e] 6000 fcbc                 bra        Auo_boxed_63
Auo_boxed_56:
[0005e992] 202d 0200                 move.l     512(a5),d0
[0005e996] 670c                      beq.s      Auo_boxed_121
[0005e998] 2040                      movea.l    d0,a0
[0005e99a] 4eb9 0004 371c            jsr        Ast_delete
[0005e9a0] 42ad 0200                 clr.l      512(a5)
Auo_boxed_121:
[0005e9a4] 266f 0022                 movea.l    34(a7),a3
[0005e9a8] 200b                      move.l     a3,d0
[0005e9aa] 671a                      beq.s      Auo_boxed_16
[0005e9ac] 204b                      movea.l    a3,a0
[0005e9ae] 4eb9 0004 36d6            jsr        Ast_create
[0005e9b4] 2b48 0200                 move.l     a0,512(a5)
[0005e9b8] 600c                      bra.s      Auo_boxed_16
Auo_boxed_57:
[0005e9ba] 204a                      movea.l    a2,a0
[0005e9bc] 6100 f11c                 bsr        boxed_charlist
[0005e9c0] 6004                      bra.s      Auo_boxed_16
Auo_boxed_19:
[0005e9c2] 4240                      clr.w      d0
[0005e9c4] 6002                      bra.s      Auo_boxed_122
Auo_boxed_16:
[0005e9c6] 7001                      moveq.l    #1,d0
Auo_boxed_122:
[0005e9c8] 4fef 0026                 lea.l      38(a7),a7
[0005e9cc] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0005e9d0] 4e75                      rts
Auo_boxed_13:

A_boxed:
[0005e9d2] 48e7 3f3e                 movem.l    d2-d7/a2-a6,-(a7)
[0005e9d6] 4fef fdc2                 lea.l      -574(a7),a7
[0005e9da] 266f 026e                 movea.l    622(a7),a3
[0005e9de] 42af 0204                 clr.l      516(a7)
[0005e9e2] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0005e9e8] 302b 0016                 move.w     22(a3),d0
[0005e9ec] 6606                      bne.s      A_boxed_1
[0005e9ee] 322b 0018                 move.w     24(a3),d1
[0005e9f2] 673c                      beq.s      A_boxed_2
A_boxed_1:
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
[0005ea28] 4eb9 0006 3f60            jsr        vs_clip
[0005ea2e] 6012                      bra.s      A_boxed_3
A_boxed_2:
[0005ea30] 41ef 0222                 lea.l      546(a7),a0
[0005ea34] 4241                      clr.w      d1
[0005ea36] 2255                      movea.l    (a5),a1
[0005ea38] 3029 0010                 move.w     16(a1),d0
[0005ea3c] 4eb9 0006 3f60            jsr        vs_clip
A_boxed_3:
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
[0005ea78] 6716                      beq.s      A_boxed_4
[0005ea7a] 2242                      movea.l    d2,a1
[0005ea7c] 3029 001c                 move.w     28(a1),d0
[0005ea80] b06c 020c                 cmp.w      524(a4),d0
[0005ea84] 660a                      bne.s      A_boxed_4
[0005ea86] 3629 001e                 move.w     30(a1),d3
[0005ea8a] 382c 021c                 move.w     540(a4),d4
[0005ea8e] 6004                      bra.s      A_boxed_5
A_boxed_4:
[0005ea90] 76ff                      moveq.l    #-1,d3
[0005ea92] 4244                      clr.w      d4
A_boxed_5:
[0005ea94] 3a2b 000e                 move.w     14(a3),d5
[0005ea98] 48c5                      ext.l      d5
[0005ea9a] 8bec 021e                 divs.w     542(a4),d5
[0005ea9e] 206f 0208                 movea.l    520(a7),a0
[0005eaa2] 3028 0002                 move.w     2(a0),d0
[0005eaa6] e048                      lsr.w      #8,d0
[0005eaa8] c07c 00ff                 and.w      #$00FF,d0
[0005eaac] ba40                      cmp.w      d0,d5
[0005eaae] 630a                      bls.s      A_boxed_6
[0005eab0] 3a28 0002                 move.w     2(a0),d5
[0005eab4] e04d                      lsr.w      #8,d5
[0005eab6] ca7c 00ff                 and.w      #$00FF,d5
A_boxed_6:
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
[0005eaf8] 4eb9 0006 4da0            jsr        vswr_mode
[0005eafe] 7201                      moveq.l    #1,d1
[0005eb00] 2055                      movea.l    (a5),a0
[0005eb02] 3028 0010                 move.w     16(a0),d0
[0005eb06] 4eb9 0006 4e9a            jsr        vsl_width
[0005eb0c] 4242                      clr.w      d2
[0005eb0e] 4241                      clr.w      d1
[0005eb10] 2055                      movea.l    (a5),a0
[0005eb12] 3028 0010                 move.w     16(a0),d0
[0005eb16] 4eb9 0006 4f44            jsr        vsl_ends
[0005eb1c] 7201                      moveq.l    #1,d1
[0005eb1e] 2055                      movea.l    (a5),a0
[0005eb20] 3028 0010                 move.w     16(a0),d0
[0005eb24] 4eb9 0006 4df4            jsr        vsl_type
[0005eb2a] 4241                      clr.w      d1
[0005eb2c] 2055                      movea.l    (a5),a0
[0005eb2e] 3028 0010                 move.w     16(a0),d0
[0005eb32] 4eb9 0006 52be            jsr        vst_effects
[0005eb38] 206f 0208                 movea.l    520(a7),a0
[0005eb3c] 3028 0002                 move.w     2(a0),d0
[0005eb40] e448                      lsr.w      #2,d0
[0005eb42] c07c 0001                 and.w      #$0001,d0
[0005eb46] 6734                      beq.s      A_boxed_7
[0005eb48] 2255                      movea.l    (a5),a1
[0005eb4a] 3229 0294                 move.w     660(a1),d1
[0005eb4e] 3029 0010                 move.w     16(a1),d0
[0005eb52] 4eb9 0006 5216            jsr        vst_font
[0005eb58] 486f 0220                 pea.l      544(a7)
[0005eb5c] 486f 0224                 pea.l      548(a7)
[0005eb60] 43ef 0228                 lea.l      552(a7),a1
[0005eb64] 41ef 0228                 lea.l      552(a7),a0
[0005eb68] 2c55                      movea.l    (a5),a6
[0005eb6a] 322e 0296                 move.w     662(a6),d1
[0005eb6e] 302e 0010                 move.w     16(a6),d0
[0005eb72] 4eb9 0006 50a0            jsr        vst_height
[0005eb78] 504f                      addq.w     #8,a7
[0005eb7a] 6032                      bra.s      A_boxed_8
A_boxed_7:
[0005eb7c] 2055                      movea.l    (a5),a0
[0005eb7e] 3228 0290                 move.w     656(a0),d1
[0005eb82] 3028 0010                 move.w     16(a0),d0
[0005eb86] 4eb9 0006 5216            jsr        vst_font
[0005eb8c] 486f 0220                 pea.l      544(a7)
[0005eb90] 486f 0224                 pea.l      548(a7)
[0005eb94] 43ef 0228                 lea.l      552(a7),a1
[0005eb98] 41ef 0228                 lea.l      552(a7),a0
[0005eb9c] 2c55                      movea.l    (a5),a6
[0005eb9e] 322e 0292                 move.w     658(a6),d1
[0005eba2] 302e 0010                 move.w     16(a6),d0
[0005eba6] 4eb9 0006 50a0            jsr        vst_height
[0005ebac] 504f                      addq.w     #8,a7
A_boxed_8:
[0005ebae] 4241                      clr.w      d1
[0005ebb0] 2055                      movea.l    (a5),a0
[0005ebb2] 3028 0010                 move.w     16(a0),d0
[0005ebb6] 4eb9 0006 5390            jsr        vsf_interior
[0005ebbc] 4241                      clr.w      d1
[0005ebbe] 2055                      movea.l    (a5),a0
[0005ebc0] 3028 0010                 move.w     16(a0),d0
[0005ebc4] 4eb9 0006 548c            jsr        vsf_perimeter
[0005ebca] 204a                      movea.l    a2,a0
[0005ebcc] 2255                      movea.l    (a5),a1
[0005ebce] 3029 0010                 move.w     16(a1),d0
[0005ebd2] 4eb9 0006 455e            jsr        v_bar
[0005ebd8] 4def 020c                 lea.l      524(a7),a6
[0005ebdc] 7010                      moveq.l    #16,d0
[0005ebde] 206f 023a                 movea.l    570(a7),a0
[0005ebe2] c068 000a                 and.w      10(a0),d0
[0005ebe6] 6700 00d4                 beq        A_boxed_9
[0005ebea] 226f 0208                 movea.l    520(a7),a1
[0005ebee] 3229 0002                 move.w     2(a1),d1
[0005ebf2] e249                      lsr.w      #1,d1
[0005ebf4] c27c 0001                 and.w      #$0001,d1
[0005ebf8] 6734                      beq.s      A_boxed_10
[0005ebfa] 2055                      movea.l    (a5),a0
[0005ebfc] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0005ec02] 6d2a                      blt.s      A_boxed_10
[0005ec04] 2268 023c                 movea.l    572(a0),a1
[0005ec08] 3429 000e                 move.w     14(a1),d2
[0005ec0c] c47c 0100                 and.w      #$0100,d2
[0005ec10] 661c                      bne.s      A_boxed_10
[0005ec12] 206f 0208                 movea.l    520(a7),a0
[0005ec16] 3e10                      move.w     (a0),d7
[0005ec18] 700c                      moveq.l    #12,d0
[0005ec1a] e06f                      lsr.w      d0,d7
[0005ec1c] ce7c 000f                 and.w      #$000F,d7
[0005ec20] 3210                      move.w     (a0),d1
[0005ec22] e049                      lsr.w      #8,d1
[0005ec24] c27c 000f                 and.w      #$000F,d1
[0005ec28] 3f41 0220                 move.w     d1,544(a7)
[0005ec2c] 6006                      bra.s      A_boxed_11
A_boxed_10:
[0005ec2e] 7e01                      moveq.l    #1,d7
[0005ec30] 3f47 0220                 move.w     d7,544(a7)
A_boxed_11:
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
[0005ec84] 4eb9 0006 4ef0            jsr        vsl_color
[0005ec8a] 41ee 0008                 lea.l      8(a6),a0
[0005ec8e] 7203                      moveq.l    #3,d1
[0005ec90] 2255                      movea.l    (a5),a1
[0005ec92] 3029 0010                 move.w     16(a1),d0
[0005ec96] 4eb9 0006 4010            jsr        v_pline
[0005ec9c] 322f 0220                 move.w     544(a7),d1
[0005eca0] 2055                      movea.l    (a5),a0
[0005eca2] 3028 0010                 move.w     16(a0),d0
[0005eca6] 4eb9 0006 4ef0            jsr        vsl_color
[0005ecac] 204e                      movea.l    a6,a0
[0005ecae] 7203                      moveq.l    #3,d1
[0005ecb0] 2255                      movea.l    (a5),a1
[0005ecb2] 3029 0010                 move.w     16(a1),d0
[0005ecb6] 4eb9 0006 4010            jsr        v_pline
A_boxed_9:
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
[0005ecde] 4eb9 0006 526a            jsr        vst_color
[0005ece4] 43ef 0220                 lea.l      544(a7),a1
[0005ece8] 41ef 0220                 lea.l      544(a7),a0
[0005ecec] 7405                      moveq.l    #5,d2
[0005ecee] 4241                      clr.w      d1
[0005ecf0] 2f09                      move.l     a1,-(a7)
[0005ecf2] 2255                      movea.l    (a5),a1
[0005ecf4] 3029 0010                 move.w     16(a1),d0
[0005ecf8] 225f                      movea.l    (a7)+,a1
[0005ecfa] 4eb9 0006 5312            jsr        vst_alignment
[0005ed00] 302c 020e                 move.w     526(a4),d0
[0005ed04] 6700 008c                 beq        A_boxed_12
[0005ed08] 7201                      moveq.l    #1,d1
[0005ed0a] 206f 0208                 movea.l    520(a7),a0
[0005ed0e] c268 0002                 and.w      2(a0),d1
[0005ed12] 672c                      beq.s      A_boxed_13
[0005ed14] 43ef 0100                 lea.l      256(a7),a1
[0005ed18] 2f49 0200                 move.l     a1,512(a7)
[0005ed1c] 2049                      movea.l    a1,a0
[0005ed1e] 702a                      moveq.l    #42,d0
[0005ed20] 223c 0000 00ff            move.l     #$000000FF,d1
[0005ed26] 4eb9 0007 712e            jsr        memset
[0005ed2c] 4200                      clr.b      d0
[0005ed2e] 1f40 01ff                 move.b     d0,511(a7)
[0005ed32] 322c 020e                 move.w     526(a4),d1
[0005ed36] 41ef 0100                 lea.l      256(a7),a0
[0005ed3a] 1180 1000                 move.b     d0,0(a0,d1.w)
[0005ed3e] 600c                      bra.s      A_boxed_14
A_boxed_13:
[0005ed40] 41f4 4000                 lea.l      0(a4,d4.w),a0
[0005ed44] 41e8 0100                 lea.l      256(a0),a0
[0005ed48] 2f48 0200                 move.l     a0,512(a7)
A_boxed_14:
[0005ed4c] 302c 020e                 move.w     526(a4),d0
[0005ed50] 9044                      sub.w      d4,d0
[0005ed52] ba40                      cmp.w      d0,d5
[0005ed54] 6c0e                      bge.s      A_boxed_15
[0005ed56] 206f 0200                 movea.l    512(a7),a0
[0005ed5a] d0c5                      adda.w     d5,a0
[0005ed5c] 2f48 0204                 move.l     a0,516(a7)
[0005ed60] 1e10                      move.b     (a0),d7
[0005ed62] 4210                      clr.b      (a0)
A_boxed_15:
[0005ed64] 226f 0200                 movea.l    512(a7),a1
[0005ed68] 41d7                      lea.l      (a7),a0
[0005ed6a] 4eb9 0007 6950            jsr        strcpy
[0005ed70] 206f 0200                 movea.l    512(a7),a0
[0005ed74] 342a 0002                 move.w     2(a2),d2
[0005ed78] 322b 000a                 move.w     10(a3),d1
[0005ed7c] 2255                      movea.l    (a5),a1
[0005ed7e] 3029 0010                 move.w     16(a1),d0
[0005ed82] 4eb9 0006 41e0            jsr        v_gtext
[0005ed88] 202f 0204                 move.l     516(a7),d0
[0005ed8c] 6704                      beq.s      A_boxed_12
[0005ed8e] 2040                      movea.l    d0,a0
[0005ed90] 1087                      move.b     d7,(a0)
A_boxed_12:
[0005ed92] 3005                      move.w     d5,d0
[0005ed94] 906c 020e                 sub.w      526(a4),d0
[0005ed98] d044                      add.w      d4,d0
[0005ed9a] 3f40 0220                 move.w     d0,544(a7)
[0005ed9e] 4a40                      tst.w      d0
[0005eda0] 6f3c                      ble.s      A_boxed_16
[0005eda2] 223c 0000 00ff            move.l     #$000000FF,d1
[0005eda8] 41ef 0100                 lea.l      256(a7),a0
[0005edac] 705f                      moveq.l    #95,d0
[0005edae] 4eb9 0007 712e            jsr        memset
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
[0005edd8] 4eb9 0006 41e0            jsr        v_gtext
A_boxed_16:
[0005edde] 7201                      moveq.l    #1,d1
[0005ede0] 2055                      movea.l    (a5),a0
[0005ede2] 3028 0010                 move.w     16(a0),d0
[0005ede6] 4eb9 0006 4ef0            jsr        vsl_color
[0005edec] 7001                      moveq.l    #1,d0
[0005edee] c06b 0008                 and.w      8(a3),d0
[0005edf2] 675a                      beq.s      A_boxed_17
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
[0005ee48] 4eb9 0006 4010            jsr        v_pline
A_boxed_17:
[0005ee4e] 4a43                      tst.w      d3
[0005ee50] 6b00 00b8                 bmi        A_boxed_18
[0005ee54] 7203                      moveq.l    #3,d1
[0005ee56] 2055                      movea.l    (a5),a0
[0005ee58] 3028 0010                 move.w     16(a0),d0
[0005ee5c] 4eb9 0006 4da0            jsr        vswr_mode
[0005ee62] 206c 0214                 movea.l    532(a4),a0
[0005ee66] 3010                      move.w     (a0),d0
[0005ee68] 6f6a                      ble.s      A_boxed_19
[0005ee6a] 7201                      moveq.l    #1,d1
[0005ee6c] 2255                      movea.l    (a5),a1
[0005ee6e] 3029 0010                 move.w     16(a1),d0
[0005ee72] 4eb9 0006 5390            jsr        vsf_interior
[0005ee78] 7201                      moveq.l    #1,d1
[0005ee7a] 2055                      movea.l    (a5),a0
[0005ee7c] 3028 0010                 move.w     16(a0),d0
[0005ee80] 4eb9 0006 5438            jsr        vsf_color
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
[0005eeac] 6c04                      bge.s      A_boxed_20
[0005eeae] 34ab 000a                 move.w     10(a3),(a2)
A_boxed_20:
[0005eeb2] 302b 000a                 move.w     10(a3),d0
[0005eeb6] d046                      add.w      d6,d0
[0005eeb8] 322a 0004                 move.w     4(a2),d1
[0005eebc] b240                      cmp.w      d0,d1
[0005eebe] 6f04                      ble.s      A_boxed_21
[0005eec0] 3540 0004                 move.w     d0,4(a2)
A_boxed_21:
[0005eec4] 204a                      movea.l    a2,a0
[0005eec6] 2255                      movea.l    (a5),a1
[0005eec8] 3029 0010                 move.w     16(a1),d0
[0005eecc] 4eb9 0006 455e            jsr        v_bar
[0005eed2] 6036                      bra.s      A_boxed_18
A_boxed_19:
[0005eed4] 3003                      move.w     d3,d0
[0005eed6] 9044                      sub.w      d4,d0
[0005eed8] c1ec 021e                 muls.w     542(a4),d0
[0005eedc] d06b 000a                 add.w      10(a3),d0
[0005eee0] 3480                      move.w     d0,(a2)
[0005eee2] 3540 0004                 move.w     d0,4(a2)
[0005eee6] 3212                      move.w     (a2),d1
[0005eee8] b26b 000a                 cmp.w      10(a3),d1
[0005eeec] 6d1c                      blt.s      A_boxed_18
[0005eeee] 342b 000a                 move.w     10(a3),d2
[0005eef2] d46b 000e                 add.w      14(a3),d2
[0005eef6] b242                      cmp.w      d2,d1
[0005eef8] 6e10                      bgt.s      A_boxed_18
[0005eefa] 204a                      movea.l    a2,a0
[0005eefc] 2255                      movea.l    (a5),a1
[0005eefe] 3029 0010                 move.w     16(a1),d0
[0005ef02] 7202                      moveq.l    #2,d1
[0005ef04] 4eb9 0006 4010            jsr        v_pline
A_boxed_18:
[0005ef0a] 41ef 0222                 lea.l      546(a7),a0
[0005ef0e] 4241                      clr.w      d1
[0005ef10] 2255                      movea.l    (a5),a1
[0005ef12] 3029 0010                 move.w     16(a1),d0
[0005ef16] 4eb9 0006 3f60            jsr        vs_clip
[0005ef1c] 70ee                      moveq.l    #-18,d0
[0005ef1e] c06b 0008                 and.w      8(a3),d0
[0005ef22] 4fef 023e                 lea.l      574(a7),a7
[0005ef26] 4cdf 7cfc                 movem.l    (a7)+,d2-d7/a2-a6
[0005ef2a] 4e75                      rts

		.data

CHARLIST:
[000d4e56]                           dc.w $ffff
[000d4e58]                           dc.w $ffff
[000d4e5a]                           dc.w $ffff
[000d4e5c]                           dc.b $00
[000d4e5d]                           dc.b $14
[000d4e5e]                           dc.b $00
[000d4e5f]                           dc.b $00
[000d4e60]                           dc.b $00
[000d4e61]                           dc.b $20
[000d4e62]                           dc.b $00
[000d4e63]                           dc.b $ff
[000d4e64]                           dc.w $1100
[000d4e66]                           dc.b $00
[000d4e67]                           dc.b $00
[000d4e68]                           dc.b $00
[000d4e69]                           dc.b $00
[000d4e6a]                           dc.b $00
[000d4e6b]                           dc.b $20
[000d4e6c]                           dc.b $00
[000d4e6d]                           dc.b $10
CHARENTRY:
[000d4e6e]                           dc.w $ffff
[000d4e70]                           dc.w $ffff
[000d4e72]                           dc.w $ffff
[000d4e74]                           dc.b $00
[000d4e75]                           dc.b $1b
[000d4e76]                           dc.b $00
[000d4e77]                           dc.b $05
[000d4e78]                           dc.b $00
[000d4e79]                           dc.b $00
[000d4e7a]                           dc.b $00
[000d4e7b]                           dc.b $00
[000d4e7c]                           dc.w $0170
[000d4e7e]                           dc.b $00
[000d4e7f]                           dc.b $00
[000d4e80]                           dc.b $00
[000d4e81]                           dc.b $00
[000d4e82]                           dc.b $00
[000d4e83]                           dc.b $02
[000d4e84]                           dc.b $00
[000d4e85]                           dc.b $01
[000d4e86]                           dc.b $00
[000d4e87]                           dc.b $00
[000d4e88]                           dc.b $00
[000d4e89]                           dc.b $00
[000d4e8a]                           dc.b $00
[000d4e8b]                           dc.b $00
[000d4e8c]                           dc.b $00
[000d4e8d]                           dc.b $00
[000d4e8e]                           dc.b $00
[000d4e8f]                           dc.b $00
[000d4e90]                           dc.b $00
[000d4e91]                           dc.b $00
[000d4e92]                           dc.b $00
[000d4e93]                           dc.b $00
[000d4e94]                           dc.b $00
[000d4e95]                           dc.b $00
[000d4e96]                           dc.b $00
[000d4e97]                           dc.b $00
[000d4e98]                           dc.b $00
[000d4e99]                           dc.b $00
[000d4e9a]                           dc.b $00
[000d4e9b]                           dc.b $00
[000d4e9c]                           dc.b $00
[000d4e9d]                           dc.b $00
[000d4e9e]                           dc.b $00
[000d4e9f]                           dc.b $00
[000d4ea0]                           dc.b $00
[000d4ea1]                           dc.b $00
[000d4ea2]                           dc.b $00
[000d4ea3]                           dc.b $00
[000d4ea4]                           dc.b $00
[000d4ea5]                           dc.b $00
[000d4ea6]                           dc.b $00
[000d4ea7]                           dc.b $00
[000d4ea8]                           dc.b $00
[000d4ea9]                           dc.b $00
[000d4eaa]                           dc.b $00
[000d4eab]                           dc.b $00
[000d4eac]                           dc.b $00
[000d4ead]                           dc.b $00
[000d4eae]                           dc.b $00
[000d4eaf]                           dc.b $00
[000d4eb0]                           dc.b $00
[000d4eb1]                           dc.b $00
[000d4eb2]                           dc.b $00
[000d4eb3]                           dc.b $00
[000d4eb4]                           dc.b $00
[000d4eb5]                           dc.b $00
[000d4eb6]                           dc.b $00
[000d4eb7]                           dc.b $00
[000d4eb8]                           dc.b $00
[000d4eb9]                           dc.b $00
[000d4eba]                           dc.b $00
[000d4ebb]                           dc.b $00
[000d4ebc]                           dc.b $00
[000d4ebd]                           dc.b $00
[000d4ebe]                           dc.b $00
[000d4ebf]                           dc.b $00
[000d4ec0]                           dc.b $00
[000d4ec1]                           dc.b $00
[000d4ec2]                           dc.b $00
[000d4ec3]                           dc.b $00
[000d4ec4]                           dc.b $00
[000d4ec5]                           dc.b $00
[000d4ec6]                           dc.b $00
[000d4ec7]                           dc.b $00
[000d4ec8]                           dc.b $00
[000d4ec9]                           dc.b $00
[000d4eca]                           dc.b $00
[000d4ecb]                           dc.b $00
[000d4ecc]                           dc.b $00
[000d4ecd]                           dc.b $00
[000d4ece]                           dc.b $00
[000d4ecf]                           dc.b $00
[000d4ed0]                           dc.b $00
[000d4ed1]                           dc.b $00
[000d4ed2]                           dc.b $00
[000d4ed3]                           dc.b $00
[000d4ed4]                           dc.b $00
[000d4ed5]                           dc.b $00
[000d4ed6]                           dc.b $00
[000d4ed7]                           dc.b $00
[000d4ed8]                           dc.b $00
[000d4ed9]                           dc.b $00
[000d4eda]                           dc.b $00
[000d4edb]                           dc.b $00
[000d4edc]                           dc.b $00
[000d4edd]                           dc.b $00
[000d4ede]                           dc.b $00
[000d4edf]                           dc.b $00
[000d4ee0]                           dc.b $00
[000d4ee1]                           dc.b $00
[000d4ee2]                           dc.b $00
[000d4ee3]                           dc.b $00
[000d4ee4]                           dc.b $00
[000d4ee5]                           dc.b $00
[000d4ee6]                           dc.b $00
[000d4ee7]                           dc.b $00
[000d4ee8]                           dc.b $00
[000d4ee9]                           dc.b $00
[000d4eea]                           dc.b $00
[000d4eeb]                           dc.b $00
[000d4eec]                           dc.b $00
[000d4eed]                           dc.b $00
[000d4eee]                           dc.b $00
[000d4eef]                           dc.b $00
[000d4ef0]                           dc.b $00
[000d4ef1]                           dc.b $00
[000d4ef2]                           dc.b $00
[000d4ef3]                           dc.b $00
[000d4ef4]                           dc.b $00
[000d4ef5]                           dc.b $00
[000d4ef6]                           dc.b $00
[000d4ef7]                           dc.b $00
[000d4ef8]                           dc.b $00
[000d4ef9]                           dc.b $00
[000d4efa]                           dc.b $00
[000d4efb]                           dc.b $00
[000d4efc]                           dc.b $00
[000d4efd]                           dc.b $00
[000d4efe]                           dc.b $00
[000d4eff]                           dc.b $00
[000d4f00]                           dc.b $00
[000d4f01]                           dc.b $00
[000d4f02]                           dc.b $00
[000d4f03]                           dc.b $00
[000d4f04]                           dc.b $00
[000d4f05]                           dc.b $00
[000d4f06]                           dc.b $00
[000d4f07]                           dc.b $00
[000d4f08]                           dc.b $00
[000d4f09]                           dc.b $00
[000d4f0a]                           dc.b $00
[000d4f0b]                           dc.b $00
[000d4f0c]                           dc.b $00
[000d4f0d]                           dc.b $00
[000d4f0e]                           dc.b $00
[000d4f0f]                           dc.b $00
[000d4f10]                           dc.b $00
[000d4f11]                           dc.b $00
[000d4f12]                           dc.b $00
[000d4f13]                           dc.b $00
[000d4f14]                           dc.b $00
[000d4f15]                           dc.b $00
[000d4f16]                           dc.b $00
[000d4f17]                           dc.b $00
[000d4f18]                           dc.b $00
[000d4f19]                           dc.b $00
[000d4f1a]                           dc.b $00
[000d4f1b]                           dc.b $00
[000d4f1c]                           dc.b $00
[000d4f1d]                           dc.b $00
[000d4f1e]                           dc.b $00
[000d4f1f]                           dc.b $00
[000d4f20]                           dc.b $00
[000d4f21]                           dc.b $00
[000d4f22]                           dc.b $00
[000d4f23]                           dc.b $00
[000d4f24]                           dc.b $00
[000d4f25]                           dc.b $00
[000d4f26]                           dc.b $00
[000d4f27]                           dc.b $00
[000d4f28]                           dc.b $00
[000d4f29]                           dc.b $00
[000d4f2a]                           dc.b $00
[000d4f2b]                           dc.b $00
[000d4f2c]                           dc.b $00
[000d4f2d]                           dc.b $00
[000d4f2e]                           dc.b $00
[000d4f2f]                           dc.b $00
[000d4f30]                           dc.b $00
[000d4f31]                           dc.b $00
[000d4f32]                           dc.b $00
[000d4f33]                           dc.b $00
[000d4f34]                           dc.b $00
[000d4f35]                           dc.b $00
[000d4f36]                           dc.b $00
[000d4f37]                           dc.b $00
[000d4f38]                           dc.b $00
[000d4f39]                           dc.b $00
[000d4f3a]                           dc.b $00
[000d4f3b]                           dc.b $00
[000d4f3c]                           dc.b $00
[000d4f3d]                           dc.b $00
[000d4f3e]                           dc.b $00
[000d4f3f]                           dc.b $00
[000d4f40]                           dc.b $00
[000d4f41]                           dc.b $00
[000d4f42]                           dc.b $00
[000d4f43]                           dc.b $00
[000d4f44]                           dc.b $00
[000d4f45]                           dc.b $00
[000d4f46]                           dc.b $00
[000d4f47]                           dc.b $00
[000d4f48]                           dc.b $00
[000d4f49]                           dc.b $00
[000d4f4a]                           dc.b $00
[000d4f4b]                           dc.b $00
[000d4f4c]                           dc.b $00
[000d4f4d]                           dc.b $00
[000d4f4e]                           dc.b $00
[000d4f4f]                           dc.b $00
[000d4f50]                           dc.b $00
[000d4f51]                           dc.b $00
[000d4f52]                           dc.b $00
[000d4f53]                           dc.b $00
[000d4f54]                           dc.b $00
[000d4f55]                           dc.b $00
[000d4f56]                           dc.b $00
[000d4f57]                           dc.b $00
[000d4f58]                           dc.b $00
[000d4f59]                           dc.b $00
[000d4f5a]                           dc.b $00
[000d4f5b]                           dc.b $00
[000d4f5c]                           dc.b $00
[000d4f5d]                           dc.b $00
[000d4f5e]                           dc.b $00
[000d4f5f]                           dc.b $00
[000d4f60]                           dc.b $00
[000d4f61]                           dc.b $00
[000d4f62]                           dc.b $00
[000d4f63]                           dc.b $00
[000d4f64]                           dc.b $00
[000d4f65]                           dc.b $00
[000d4f66]                           dc.b $00
[000d4f67]                           dc.b $00
[000d4f68]                           dc.b $00
[000d4f69]                           dc.b $00
[000d4f6a]                           dc.b $00
[000d4f6b]                           dc.b $00
[000d4f6c]                           dc.b $00
[000d4f6d]                           dc.b $00
[000d4f6e]                           dc.b $00
[000d4f6f]                           dc.b $00
[000d4f70]                           dc.b $00
[000d4f71]                           dc.b $00
[000d4f72]                           dc.b $00
[000d4f73]                           dc.b $00
[000d4f74]                           dc.b $00
[000d4f75]                           dc.b $00
[000d4f76]                           dc.b $00
[000d4f77]                           dc.b $00
[000d4f78]                           dc.b $00
[000d4f79]                           dc.b $00
[000d4f7a]                           dc.b $00
[000d4f7b]                           dc.b $00
[000d4f7c]                           dc.b $00
[000d4f7d]                           dc.b $00
[000d4f7e]                           dc.b $00
[000d4f7f]                           dc.b $00
[000d4f80]                           dc.b $00
[000d4f81]                           dc.b $00
[000d4f82]                           dc.b $00
[000d4f83]                           dc.b $00
[000d4f84]                           dc.b $00
[000d4f85]                           dc.b $00
xd4f86:
[000d4f86]                           dc.w $2000
xd4f88:
[000d4f88]                           dc.w $2000
xd4f8a:
[000d4f8a]                           dc.w $3a5c
[000d4f8c]                           dc.b $00
xd4f8d:
[000d4f8d]                           dc.b 'azAZ09',0
xd4f94:
[000d4f94]                           dc.b '._!@#$%^&()+-=~',$27,';",<>|[]{}',0
xd4faf:
[000d4faf]                           dc.b '._!@#$%^&()+-=~',$27,';",<>|[]{}*?',0
xd4fcc:
[000d4fcc]                           dc.b '._!@#$%^&()+-=~',$27,';",<>|[]{}\:',0
xd4fe9:
[000d4fe9]                           dc.b '._!@#$%^&()+-=~',$27,';",<>|[]{}*?\:',0
xd5008:
[000d5008]                           dc.b 'azAZ',0
xd500d:
[000d500d]                           dc.b $20
[000d500e]                           dc.b $00
xd500f:
[000d500f]                           dc.b $30
[000d5010]                           dc.w $3100
xd5012:
[000d5012]                           dc.w $3037
[000d5014]                           dc.b $00
xd5015:
[000d5015]                           dc.b '09afAF',0
xd501c:
[000d501c]                           dc.w $2e00
xd501e:
[000d501e]                           dc.b '%ld',0
xd5022:
[000d5022]                           dc.w $2563
[000d5024]                           dc.b $00
		.even
