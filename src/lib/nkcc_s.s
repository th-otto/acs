
nk_finds:
[00041adc] 0800 000d                 btst       #13,d0
[00041ae0] 6726                      beq.s      nk_finds_1
[00041ae2] 323c 004a                 move.w     #$004A,d1
[00041ae6] b030 1000                 cmp.b      0(a0,d1.w),d0
[00041aea] 6732                      beq.s      nk_finds_2
[00041aec] 323c 004e                 move.w     #$004E,d1
[00041af0] b030 1000                 cmp.b      0(a0,d1.w),d0
[00041af4] 6728                      beq.s      nk_finds_2
[00041af6] 323c 0063                 move.w     #$0063,d1
nk_finds_3:
[00041afa] b030 1000                 cmp.b      0(a0,d1.w),d0
[00041afe] 671e                      beq.s      nk_finds_2
[00041b00] 5241                      addq.w     #1,d1
[00041b02] b27c 0073                 cmp.w      #$0073,d1
[00041b06] 65f2                      bcs.s      nk_finds_3
nk_finds_1:
[00041b08] 323c 0001                 move.w     #$0001,d1
nk_finds_4:
[00041b0c] b030 1000                 cmp.b      0(a0,d1.w),d0
[00041b10] 670c                      beq.s      nk_finds_2
[00041b12] 5201                      addq.b     #1,d1
[00041b14] b23c 0078                 cmp.b      #$78,d1
[00041b18] 65f2                      bcs.s      nk_finds_4
[00041b1a] 7200                      moveq.l    #0,d1
[00041b1c] 4e75                      rts
nk_finds_2:
[00041b1e] 4a41                      tst.w      d1
[00041b20] 4e75                      rts

nkc_init:
[00041b22] 70ff                      moveq.l    #-1,d0
[00041b24] 2f00                      move.l     d0,-(a7)
[00041b26] 2f00                      move.l     d0,-(a7)
[00041b28] 2f00                      move.l     d0,-(a7)
[00041b2a] 3f3c 0010                 move.w     #$0010,-(a7) ; Keytbl
[00041b2e] 4e4e                      trap       #14
[00041b30] 4fef 000e                 lea.l      14(a7),a7
[00041b34] 2040                      movea.l    d0,a0
[00041b36] 23d8 0010 2646            move.l     (a0)+,pkey_uns
[00041b3c] 23d8 0010 264a            move.l     (a0)+,pkey_shi
[00041b42] 23d0 0010 264e            move.l     (a0),pkey_cap
[00041b48] 303c 0294                 move.w     #$0294,d0
[00041b4c] 4e75                      rts

nkc_tos2:
[00041b4e] 48e7 1800                 movem.l    d3-d4,-(a7)
[00041b52] 2200                      move.l     d0,d1
[00041b54] 4841                      swap       d1
[00041b56] 3401                      move.w     d1,d2
[00041b58] 363c 00ff                 move.w     #$00FF,d3
[00041b5c] c043                      and.w      d3,d0
[00041b5e] c243                      and.w      d3,d1
[00041b60] 6700 0154                 beq        nkc_tos2_1
[00041b64] c47c 1f00                 and.w      #$1F00,d2
[00041b68] 3602                      move.w     d2,d3
[00041b6a] c67c 0300                 and.w      #$0300,d3
[00041b6e] 6708                      beq.s      nkc_tos2_2
[00041b70] 2079 0010 264a            movea.l    pkey_shi,a0
[00041b76] 6014                      bra.s      nkc_tos2_3
nkc_tos2_2:
[00041b78] 0802 000c                 btst       #12,d2
[00041b7c] 6708                      beq.s      nkc_tos2_4
[00041b7e] 2079 0010 264e            movea.l    pkey_cap,a0
[00041b84] 6006                      bra.s      nkc_tos2_3
nkc_tos2_4:
[00041b86] 2079 0010 2646            movea.l    pkey_uns,a0
nkc_tos2_3:
[00041b8c] b23c 0084                 cmp.b      #$84,d1
[00041b90] 6526                      bcs.s      nkc_tos2_5
[00041b92] 3202                      move.w     d2,d1
[00041b94] c27c 0c00                 and.w      #$0C00,d1
[00041b98] 6708                      beq.s      nkc_tos2_6
[00041b9a] 807c 2000                 or.w       #$2000,d0
[00041b9e] c47c 1300                 and.w      #$1300,d2
nkc_tos2_6:
[00041ba2] 8042                      or.w       d2,d0
[00041ba4] 807c c000                 or.w       #$C000,d0
[00041ba8] b03c 0020                 cmp.b      #$20,d0
[00041bac] 6400 0100                 bcc        nkc_tos2_7
[00041bb0] 103c 0020                 move.b     #$20,d0
[00041bb4] 6000 00f8                 bra        nkc_tos2_7
nkc_tos2_5:
[00041bb8] b23c 0078                 cmp.b      #$78,d1
[00041bbc] 6510                      bcs.s      nkc_tos2_8
[00041bbe] 923c 0076                 sub.b      #$76,d1
[00041bc2] 1030 1000                 move.b     0(a0,d1.w),d0
[00041bc6] 847c 0800                 or.w       #$0800,d2
[00041bca] 6000 00aa                 bra        nkc_tos2_9
nkc_tos2_8:
[00041bce] 43f9 000d 33a2            lea.l      xscantab,a1
nkc_tos2_11:
[00041bd4] 3619                      move.w     (a1)+,d3
[00041bd6] 6b0a                      bmi.s      nkc_tos2_10
[00041bd8] b601                      cmp.b      d1,d3
[00041bda] 66f8                      bne.s      nkc_tos2_11
[00041bdc] e04b                      lsr.w      #8,d3
[00041bde] 7000                      moveq.l    #0,d0
[00041be0] 6002                      bra.s      nkc_tos2_12
nkc_tos2_10:
[00041be2] 7600                      moveq.l    #0,d3
nkc_tos2_12:
[00041be4] 1830 1000                 move.b     0(a0,d1.w),d4
[00041be8] b03c 0020                 cmp.b      #$20,d0
[00041bec] 6406                      bcc.s      nkc_tos2_13
[00041bee] b004                      cmp.b      d4,d0
[00041bf0] 6702                      beq.s      nkc_tos2_13
[00041bf2] 7000                      moveq.l    #0,d0
nkc_tos2_13:
[00041bf4] 4a00                      tst.b      d0
[00041bf6] 6708                      beq.s      nkc_tos2_14
[00041bf8] b004                      cmp.b      d4,d0
[00041bfa] 6704                      beq.s      nkc_tos2_14
[00041bfc] c47c f7ff                 and.w      #$F7FF,d2
nkc_tos2_14:
[00041c00] 4a00                      tst.b      d0
[00041c02] 6606                      bne.s      nkc_tos2_15
[00041c04] 1003                      move.b     d3,d0
[00041c06] 6602                      bne.s      nkc_tos2_15
[00041c08] 1004                      move.b     d4,d0
nkc_tos2_15:
[00041c0a] b03c 007f                 cmp.b      #$7F,d0
[00041c0e] 6604                      bne.s      nkc_tos2_16
[00041c10] 103c 001f                 move.b     #$1F,d0
nkc_tos2_16:
[00041c14] b23c 004a                 cmp.b      #$4A,d1
[00041c18] 6712                      beq.s      nkc_tos2_17
[00041c1a] b23c 004e                 cmp.b      #$4E,d1
[00041c1e] 670c                      beq.s      nkc_tos2_17
[00041c20] b23c 0063                 cmp.b      #$63,d1
[00041c24] 650a                      bcs.s      nkc_tos2_18
[00041c26] b23c 0072                 cmp.b      #$72,d1
[00041c2a] 6204                      bhi.s      nkc_tos2_18
nkc_tos2_17:
[00041c2c] 847c 2000                 or.w       #$2000,d2
nkc_tos2_18:
[00041c30] b03c 0020                 cmp.b      #$20,d0
[00041c34] 6412                      bcc.s      nkc_tos2_19
[00041c36] 847c 8000                 or.w       #$8000,d2
[00041c3a] b03c 000d                 cmp.b      #$0D,d0
[00041c3e] 6608                      bne.s      nkc_tos2_19
[00041c40] 0802 000d                 btst       #13,d2
[00041c44] 6702                      beq.s      nkc_tos2_19
[00041c46] 700a                      moveq.l    #10,d0
nkc_tos2_19:
[00041c48] b23c 0054                 cmp.b      #$54,d1
[00041c4c] 6516                      bcs.s      nkc_tos2_20
[00041c4e] b23c 005d                 cmp.b      #$5D,d1
[00041c52] 6210                      bhi.s      nkc_tos2_20
[00041c54] 923c 0019                 sub.b      #$19,d1
[00041c58] 3602                      move.w     d2,d3
[00041c5a] c67c 0300                 and.w      #$0300,d3
[00041c5e] 6604                      bne.s      nkc_tos2_20
[00041c60] 847c 0300                 or.w       #$0300,d2
nkc_tos2_20:
[00041c64] b23c 003b                 cmp.b      #$3B,d1
[00041c68] 650c                      bcs.s      nkc_tos2_9
[00041c6a] b23c 0044                 cmp.b      #$44,d1
[00041c6e] 6206                      bhi.s      nkc_tos2_9
[00041c70] 1001                      move.b     d1,d0
[00041c72] 903c 002b                 sub.b      #$2B,d0
nkc_tos2_9:
[00041c76] 2079 0010 264a            movea.l    pkey_shi,a0
[00041c7c] 1630 1000                 move.b     0(a0,d1.w),d3
[00041c80] 8042                      or.w       d2,d0
[00041c82] 6b06                      bmi.s      nkc_tos2_21
[00041c84] c47c 0c00                 and.w      #$0C00,d2
[00041c88] 660e                      bne.s      nkc_tos2_22
nkc_tos2_21:
[00041c8a] 2079 0010 2646            movea.l    pkey_uns,a0
[00041c90] b630 1000                 cmp.b      0(a0,d1.w),d3
[00041c94] 6714                      beq.s      nkc_tos2_23
[00041c96] 6016                      bra.s      nkc_tos2_7
nkc_tos2_22:
[00041c98] 807c 8000                 or.w       #$8000,d0
[00041c9c] 2079 0010 264e            movea.l    pkey_cap,a0
[00041ca2] b630 1000                 cmp.b      0(a0,d1.w),d3
[00041ca6] 6606                      bne.s      nkc_tos2_7
[00041ca8] 1003                      move.b     d3,d0
nkc_tos2_23:
[00041caa] 807c 4000                 or.w       #$4000,d0
nkc_tos2_7:
[00041cae] 4a40                      tst.w      d0
[00041cb0] 4cdf 0018                 movem.l    (a7)+,d3-d4
[00041cb4] 4e75                      rts
nkc_tos2_1:
[00041cb6] c47c 1000                 and.w      #$1000,d2
[00041cba] 8042                      or.w       d2,d0
[00041cbc] 4cdf 0018                 movem.l    (a7)+,d3-d4
[00041cc0] 4e75                      rts

nkc_n2to:
[00041cc2] 3200                      move.w     d0,d1
[00041cc4] c27c 8c00                 and.w      #$8C00,d1
[00041cc8] b27c 8000                 cmp.w      #$8000,d1
[00041ccc] 6624                      bne.s      nkc_n2to_1
[00041cce] b03c 0020                 cmp.b      #$20,d0
[00041cd2] 651e                      bcs.s      nkc_n2to_1
[00041cd4] 3200                      move.w     d0,d1
[00041cd6] c0bc 0000 1300            and.l      #$00001300,d0
[00041cdc] 0801 000d                 btst       #13,d1
[00041ce0] 6704                      beq.s      nkc_n2to_2
[00041ce2] 807c 0c00                 or.w       #$0C00,d0
nkc_n2to_2:
[00041ce6] 803c 00ff                 or.b       #$FF,d0
[00041cea] 4840                      swap       d0
[00041cec] 1001                      move.b     d1,d0
[00041cee] 6000 012a                 bra        nkc_n2to_3
nkc_n2to_1:
[00041cf2] 3200                      move.w     d0,d1
[00041cf4] c27c 0300                 and.w      #$0300,d1
[00041cf8] 670e                      beq.s      nkc_n2to_4
[00041cfa] 43f9 000d 35f0            lea.l      n_to_sca,a1
[00041d00] 2079 0010 264a            movea.l    pkey_shi,a0
[00041d06] 601a                      bra.s      nkc_n2to_5
nkc_n2to_4:
[00041d08] 43f9 000d 35d0            lea.l      n_to_sca,a1
[00041d0e] 0800 000c                 btst       #12,d0
[00041d12] 6708                      beq.s      nkc_n2to_6
[00041d14] 2079 0010 264e            movea.l    pkey_cap,a0
[00041d1a] 6006                      bra.s      nkc_n2to_5
nkc_n2to_6:
[00041d1c] 2079 0010 2646            movea.l    pkey_uns,a0
nkc_n2to_5:
[00041d22] b03c 0020                 cmp.b      #$20,d0
[00041d26] 6534                      bcs.s      nkc_n2to_7
[00041d28] 6100 fdb2                 bsr        nk_finds
[00041d2c] 665a                      bne.s      nkc_n2to_8
[00041d2e] 0800 000f                 btst       #15,d0
[00041d32] 6718                      beq.s      nkc_n2to_9
[00041d34] 2208                      move.l     a0,d1
[00041d36] 41f9 000d 34c6            lea.l      tolower,a0
[00041d3c] 7400                      moveq.l    #0,d2
[00041d3e] 1400                      move.b     d0,d2
[00041d40] 1030 2000                 move.b     0(a0,d2.w),d0
[00041d44] 2041                      movea.l    d1,a0
[00041d46] 6100 fd94                 bsr        nk_finds
[00041d4a] 663c                      bne.s      nkc_n2to_8
nkc_n2to_9:
[00041d4c] 7200                      moveq.l    #0,d1
[00041d4e] 1200                      move.b     d0,d1
[00041d50] c07c 1f00                 and.w      #$1F00,d0
[00041d54] 4840                      swap       d0
[00041d56] 3001                      move.w     d1,d0
[00041d58] 6000 00c0                 bra        nkc_n2to_3
nkc_n2to_7:
[00041d5c] 0800 000f                 btst       #15,d0
[00041d60] 6606                      bne.s      nkc_n2to_10
[00041d62] c07c 10ff                 and.w      #$10FF,d0
[00041d66] 60e4                      bra.s      nkc_n2to_9
nkc_n2to_10:
[00041d68] 7200                      moveq.l    #0,d1
[00041d6a] 1200                      move.b     d0,d1
[00041d6c] 3401                      move.w     d1,d2
[00041d6e] 1231 1000                 move.b     0(a1,d1.w),d1
[00041d72] 6606                      bne.s      nkc_n2to_11
[00041d74] 7000                      moveq.l    #0,d0
[00041d76] 6000 00a2                 bra        nkc_n2to_3
nkc_n2to_11:
[00041d7a] 43f9 000d 35d0            lea.l      n_to_sca,a1
[00041d80] 1431 2000                 move.b     0(a1,d2.w),d2
[00041d84] 1030 2000                 move.b     0(a0,d2.w),d0
nkc_n2to_8:
[00041d88] 3400                      move.w     d0,d2
[00041d8a] c07c 1f00                 and.w      #$1F00,d0
[00041d8e] 1001                      move.b     d1,d0
[00041d90] 4840                      swap       d0
[00041d92] 4240                      clr.w      d0
[00041d94] 1002                      move.b     d2,d0
[00041d96] 0802 000a                 btst       #10,d2
[00041d9a] 6748                      beq.s      nkc_n2to_12
[00041d9c] b23c 004b                 cmp.b      #$4B,d1
[00041da0] 660a                      bne.s      nkc_n2to_13
[00041da2] d0bc 0028 0000            add.l      #$00280000,d0
[00041da8] 4200                      clr.b      d0
[00041daa] 606e                      bra.s      nkc_n2to_3
nkc_n2to_13:
[00041dac] b23c 004d                 cmp.b      #$4D,d1
[00041db0] 660a                      bne.s      nkc_n2to_14
[00041db2] d0bc 0027 0000            add.l      #$00270000,d0
[00041db8] 4200                      clr.b      d0
[00041dba] 605e                      bra.s      nkc_n2to_3
nkc_n2to_14:
[00041dbc] b23c 0047                 cmp.b      #$47,d1
[00041dc0] 6608                      bne.s      nkc_n2to_15
[00041dc2] d0bc 0030 0000            add.l      #$00300000,d0
[00041dc8] 6050                      bra.s      nkc_n2to_3
nkc_n2to_15:
[00041dca] 41f9 000d 35c6            lea.l      asc_tran,a0
nkc_n2to_17:
[00041dd0] 3218                      move.w     (a0)+,d1
[00041dd2] 670a                      beq.s      nkc_n2to_16
[00041dd4] b200                      cmp.b      d0,d1
[00041dd6] 66f8                      bne.s      nkc_n2to_17
[00041dd8] e049                      lsr.w      #8,d1
[00041dda] 1001                      move.b     d1,d0
[00041ddc] 603c                      bra.s      nkc_n2to_3
nkc_n2to_16:
[00041dde] c03c 001f                 and.b      #$1F,d0
[00041de2] 6036                      bra.s      nkc_n2to_3
nkc_n2to_12:
[00041de4] 0802 000b                 btst       #11,d2
[00041de8] 6730                      beq.s      nkc_n2to_3
[00041dea] b23c 0002                 cmp.b      #$02,d1
[00041dee] 6510                      bcs.s      nkc_n2to_18
[00041df0] b23c 000d                 cmp.b      #$0D,d1
[00041df4] 620a                      bhi.s      nkc_n2to_18
[00041df6] d0bc 0076 0000            add.l      #$00760000,d0
[00041dfc] 4200                      clr.b      d0
[00041dfe] 601a                      bra.s      nkc_n2to_3
nkc_n2to_18:
[00041e00] b03c 0041                 cmp.b      #$41,d0
[00041e04] 6514                      bcs.s      nkc_n2to_3
[00041e06] b03c 007a                 cmp.b      #$7A,d0
[00041e0a] 620e                      bhi.s      nkc_n2to_3
[00041e0c] b03c 005a                 cmp.b      #$5A,d0
[00041e10] 6306                      bls.s      nkc_n2to_19
[00041e12] b03c 0061                 cmp.b      #$61,d0
[00041e16] 6502                      bcs.s      nkc_n2to_3
nkc_n2to_19:
[00041e18] 4200                      clr.b      d0
nkc_n2to_3:
[00041e1a] 4a80                      tst.l      d0
[00041e1c] 4e75                      rts

nkc_toupper:
[00041e1e] 41f9 000d 33c6            lea.l      toupper,a0
[00041e24] c07c 00ff                 and.w      #$00FF,d0
[00041e28] 1030 0000                 move.b     0(a0,d0.w),d0
[00041e2c] 4e75                      rts

nkc_tolower:
[00041e2e] 41f9 000d 34c6            lea.l      tolower,a0
[00041e34] c07c 00ff                 and.w      #$00FF,d0
[00041e38] 1030 0000                 move.b     0(a0,d0.w),d0
[00041e3c] 4e75                      rts

		.data


xscantab:
[000d33a2]                           dc.w $0148
[000d33a4]                           dc.w $0250
[000d33a6]                           dc.w $044b
[000d33a8]                           dc.w $0473
[000d33aa]                           dc.w $034d
[000d33ac]                           dc.w $0374
[000d33ae]                           dc.w $0549
[000d33b0]                           dc.w $0651
[000d33b2]                           dc.w $074f
[000d33b4]                           dc.w $0b52
[000d33b6]                           dc.w $0c47
[000d33b8]                           dc.w $0c77
[000d33ba]                           dc.w $0e62
[000d33bc]                           dc.w $0f61
[000d33be]                           dc.w $1a45
[000d33c0]                           dc.w $1c46
[000d33c2]                           dc.w $1d37
[000d33c4]                           dc.w $ffff
toupper:
[000d33c6]                           dc.b $00
[000d33c7]                           dc.b $01
[000d33c8]                           dc.w $0203
[000d33ca]                           dc.w $0405
[000d33cc]                           dc.w $0607
[000d33ce]                           dc.w $0809
[000d33d0]                           dc.w $0a0b
[000d33d2]                           dc.w $0c0d
[000d33d4]                           dc.w $0e0f
[000d33d6]                           dc.w $1011
[000d33d8]                           dc.w $1213
[000d33da]                           dc.w $1415
[000d33dc]                           dc.w $1617
[000d33de]                           dc.w $1819
[000d33e0]                           dc.w $1a1b
[000d33e2]                           dc.w $1c1d
[000d33e4]                           dc.w $1e1f
[000d33e6]                           dc.b ' !"#$%&',$27,'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~'
[000d3445]                           dc.b $7f
[000d3446]                           dc.w $809a
[000d3448]                           dc.w $9083
[000d344a]                           dc.w $8eb6
[000d344c]                           dc.w $8f80
[000d344e]                           dc.w $8889
[000d3450]                           dc.w $8a8b
[000d3452]                           dc.w $8c8d
[000d3454]                           dc.w $8e8f
[000d3456]                           dc.w $9092
[000d3458]                           dc.w $9293
[000d345a]                           dc.w $9995
[000d345c]                           dc.w $9697
[000d345e]                           dc.w $9899
[000d3460]                           dc.w $9a9b
[000d3462]                           dc.w $9c9d
[000d3464]                           dc.w $9e9f
[000d3466]                           dc.w $a0a1
[000d3468]                           dc.w $a2a3
[000d346a]                           dc.w $a5a5
[000d346c]                           dc.w $a6a7
[000d346e]                           dc.w $a8a9
[000d3470]                           dc.w $aaab
[000d3472]                           dc.w $acad
[000d3474]                           dc.w $aeaf
[000d3476]                           dc.w $b7b8
[000d3478]                           dc.w $b2b2
[000d347a]                           dc.w $b5b5
[000d347c]                           dc.w $b6b7
[000d347e]                           dc.w $b8b9
[000d3480]                           dc.w $babb
[000d3482]                           dc.w $bcbd
[000d3484]                           dc.w $bebf
[000d3486]                           dc.w $c0c1
[000d3488]                           dc.w $c2c3
[000d348a]                           dc.w $c4c5
[000d348c]                           dc.w $c6c7
[000d348e]                           dc.w $c8c9
[000d3490]                           dc.w $cacb
[000d3492]                           dc.w $cccd
[000d3494]                           dc.w $cecf
[000d3496]                           dc.w $d0d1
[000d3498]                           dc.w $d2d3
[000d349a]                           dc.w $d4d5
[000d349c]                           dc.w $d6d7
[000d349e]                           dc.w $d8d9
[000d34a0]                           dc.w $dadb
[000d34a2]                           dc.w $dcdd
[000d34a4]                           dc.w $dedf
[000d34a6]                           dc.w $e0e1
[000d34a8]                           dc.w $e2e3
[000d34aa]                           dc.w $e4e5
[000d34ac]                           dc.w $e6e7
[000d34ae]                           dc.w $e8e9
[000d34b0]                           dc.w $eaeb
[000d34b2]                           dc.w $eced
[000d34b4]                           dc.w $eeef
[000d34b6]                           dc.w $f0f1
[000d34b8]                           dc.w $f2f3
[000d34ba]                           dc.w $f4f5
[000d34bc]                           dc.w $f6f7
[000d34be]                           dc.w $f8f9
[000d34c0]                           dc.w $fafb
[000d34c2]                           dc.w $fcfd
[000d34c4]                           dc.w $feff
tolower:
[000d34c6]                           dc.b $00
[000d34c7]                           dc.b $01
[000d34c8]                           dc.w $0203
[000d34ca]                           dc.w $0405
[000d34cc]                           dc.w $0607
[000d34ce]                           dc.w $0809
[000d34d0]                           dc.w $0a0b
[000d34d2]                           dc.w $0c0d
[000d34d4]                           dc.w $0e0f
[000d34d6]                           dc.w $1011
[000d34d8]                           dc.w $1213
[000d34da]                           dc.w $1415
[000d34dc]                           dc.w $1617
[000d34de]                           dc.w $1819
[000d34e0]                           dc.w $1a1b
[000d34e2]                           dc.w $1c1d
[000d34e4]                           dc.w $1e1f
[000d34e6]                           dc.b ' !"#$%&',$27,'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\]^_`abcdefghijklmnopqrstuvwxyz{|}~'
[000d3545]                           dc.b $7f
[000d3546]                           dc.w $8781
[000d3548]                           dc.w $8283
[000d354a]                           dc.w $8485
[000d354c]                           dc.w $8687
[000d354e]                           dc.w $8889
[000d3550]                           dc.w $8a8b
[000d3552]                           dc.w $8c8d
[000d3554]                           dc.w $8486
[000d3556]                           dc.w $8291
[000d3558]                           dc.w $9193
[000d355a]                           dc.w $9495
[000d355c]                           dc.w $9697
[000d355e]                           dc.w $9894
[000d3560]                           dc.w $819b
[000d3562]                           dc.w $9c9d
[000d3564]                           dc.w $9e9f
[000d3566]                           dc.w $a0a1
[000d3568]                           dc.w $a2a3
[000d356a]                           dc.w $a4a4
[000d356c]                           dc.w $a6a7
[000d356e]                           dc.w $a8a9
[000d3570]                           dc.w $aaab
[000d3572]                           dc.w $acad
[000d3574]                           dc.w $aeaf
[000d3576]                           dc.w $b0b1
[000d3578]                           dc.w $b3b3
[000d357a]                           dc.w $b4b4
[000d357c]                           dc.w $85b0
[000d357e]                           dc.w $b1b9
[000d3580]                           dc.w $babb
[000d3582]                           dc.w $bcbd
[000d3584]                           dc.w $bebf
[000d3586]                           dc.w $c0c1
[000d3588]                           dc.w $c2c3
[000d358a]                           dc.w $c4c5
[000d358c]                           dc.w $c6c7
[000d358e]                           dc.w $c8c9
[000d3590]                           dc.w $cacb
[000d3592]                           dc.w $cccd
[000d3594]                           dc.w $cecf
[000d3596]                           dc.w $d0d1
[000d3598]                           dc.w $d2d3
[000d359a]                           dc.w $d4d5
[000d359c]                           dc.w $d6d7
[000d359e]                           dc.w $d8d9
[000d35a0]                           dc.w $dadb
[000d35a2]                           dc.w $dcdd
[000d35a4]                           dc.w $dedf
[000d35a6]                           dc.w $e0e1
[000d35a8]                           dc.w $e2e3
[000d35aa]                           dc.w $e4e5
[000d35ac]                           dc.w $e6e7
[000d35ae]                           dc.w $e8e9
[000d35b0]                           dc.w $eaeb
[000d35b2]                           dc.w $eced
[000d35b4]                           dc.w $eeef
[000d35b6]                           dc.w $f0f1
[000d35b8]                           dc.w $f2f3
[000d35ba]                           dc.w $f4f5
[000d35bc]                           dc.w $f6f7
[000d35be]                           dc.w $f8f9
[000d35c0]                           dc.w $fafb
[000d35c2]                           dc.w $fcfd
[000d35c4]                           dc.w $feff
asc_tran:
[000d35c6]                           dc.b $00
[000d35c7]                           dc.b $32
[000d35c8]                           dc.w $1e36
[000d35ca]                           dc.w $1f2d
[000d35cc]                           dc.w $0a0d
[000d35ce]                           dc.b $00
[000d35cf]                           dc.b $00
n_to_sca:
[000d35d0]                           dc.b $00
[000d35d1]                           dc.b 'HPMKIQO'
[000d35d8]                           dc.w $0e0f
[000d35da]                           dc.w $7252
[000d35dc]                           dc.w $471c
[000d35de]                           dc.b 'ba;<=>?@ABCDE'
[000d35eb]                           dc.b $01
[000d35ec]                           dc.w $4637
[000d35ee]                           dc.b $00
[000d35ef]                           dc.b $53
n_to_sca:
[000d35f0]                           dc.b $00
[000d35f1]                           dc.b 'HPMKIQO'
[000d35f8]                           dc.w $0e0f
[000d35fa]                           dc.w $7252
[000d35fc]                           dc.w $471c
[000d35fe]                           dc.b 'baTUVWXYZ[\]E'
[000d360b]                           dc.b $01
[000d360c]                           dc.w $4637
[000d360e]                           dc.b $00
[000d360f]                           dc.b $53
pshift:
[000d3610]                           dc.b $00
[000d3611]                           dc.b $00
[000d3612]                           dc.b $00
[000d3613]                           dc.b $00

	.bss

pkey_uns: ds.l 1
pkey_shi: ds.l 1
pkey_cap: ds.l 1
