nk_finds:
[00041adc] 0800 000d                 btst       #13,d0
[00041ae0] 6726                      beq.s      $00041B08
[00041ae2] 323c 004a                 move.w     #$004A,d1
[00041ae6] b030 1000                 cmp.b      0(a0,d1.w),d0
[00041aea] 6732                      beq.s      $00041B1E
[00041aec] 323c 004e                 move.w     #$004E,d1
[00041af0] b030 1000                 cmp.b      0(a0,d1.w),d0
[00041af4] 6728                      beq.s      $00041B1E
[00041af6] 323c 0063                 move.w     #$0063,d1
[00041afa] b030 1000                 cmp.b      0(a0,d1.w),d0
[00041afe] 671e                      beq.s      $00041B1E
[00041b00] 5241                      addq.w     #1,d1
[00041b02] b27c 0073                 cmp.w      #$0073,d1
[00041b06] 65f2                      bcs.s      $00041AFA
[00041b08] 323c 0001                 move.w     #$0001,d1
[00041b0c] b030 1000                 cmp.b      0(a0,d1.w),d0
[00041b10] 670c                      beq.s      $00041B1E
[00041b12] 5201                      addq.b     #1,d1
[00041b14] b23c 0078                 cmp.b      #$78,d1
[00041b18] 65f2                      bcs.s      $00041B0C
[00041b1a] 7200                      moveq.l    #0,d1
[00041b1c] 4e75                      rts
.found:
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
[00041b36] 23d8 0010 2646            move.l     (a0)+,$00102646
[00041b3c] 23d8 0010 264a            move.l     (a0)+,$0010264A
[00041b42] 23d0 0010 264e            move.l     (a0),$0010264E
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
[00041b60] 6700 0154                 beq        $00041CB6
[00041b64] c47c 1f00                 and.w      #$1F00,d2
[00041b68] 3602                      move.w     d2,d3
[00041b6a] c67c 0300                 and.w      #$0300,d3
[00041b6e] 6708                      beq.s      $00041B78
[00041b70] 2079 0010 264a            movea.l    $0010264A,a0
[00041b76] 6014                      bra.s      $00041B8C
[00041b78] 0802 000c                 btst       #12,d2
[00041b7c] 6708                      beq.s      $00041B86
[00041b7e] 2079 0010 264e            movea.l    $0010264E,a0
[00041b84] 6006                      bra.s      $00041B8C
[00041b86] 2079 0010 2646            movea.l    $00102646,a0
[00041b8c] b23c 0084                 cmp.b      #$84,d1
[00041b90] 6526                      bcs.s      $00041BB8
[00041b92] 3202                      move.w     d2,d1
[00041b94] c27c 0c00                 and.w      #$0C00,d1
[00041b98] 6708                      beq.s      $00041BA2
[00041b9a] 807c 2000                 or.w       #$2000,d0
[00041b9e] c47c 1300                 and.w      #$1300,d2
[00041ba2] 8042                      or.w       d2,d0
[00041ba4] 807c c000                 or.w       #$C000,d0
[00041ba8] b03c 0020                 cmp.b      #$20,d0
[00041bac] 6400 0100                 bcc        $00041CAE
[00041bb0] 103c 0020                 move.b     #$20,d0
[00041bb4] 6000 00f8                 bra        $00041CAE
[00041bb8] b23c 0078                 cmp.b      #$78,d1
[00041bbc] 6510                      bcs.s      $00041BCE
[00041bbe] 923c 0076                 sub.b      #$76,d1
[00041bc2] 1030 1000                 move.b     0(a0,d1.w),d0
[00041bc6] 847c 0800                 or.w       #$0800,d2
[00041bca] 6000 00aa                 bra        $00041C76
[00041bce] 43f9 000d 33a2            lea.l      $000D33A2,a1
[00041bd4] 3619                      move.w     (a1)+,d3
[00041bd6] 6b0a                      bmi.s      $00041BE2
[00041bd8] b601                      cmp.b      d1,d3
[00041bda] 66f8                      bne.s      $00041BD4
[00041bdc] e04b                      lsr.w      #8,d3
[00041bde] 7000                      moveq.l    #0,d0
[00041be0] 6002                      bra.s      $00041BE4
[00041be2] 7600                      moveq.l    #0,d3
[00041be4] 1830 1000                 move.b     0(a0,d1.w),d4
[00041be8] b03c 0020                 cmp.b      #$20,d0
[00041bec] 6406                      bcc.s      $00041BF4
[00041bee] b004                      cmp.b      d4,d0
[00041bf0] 6702                      beq.s      $00041BF4
[00041bf2] 7000                      moveq.l    #0,d0
[00041bf4] 4a00                      tst.b      d0
[00041bf6] 6708                      beq.s      $00041C00
[00041bf8] b004                      cmp.b      d4,d0
[00041bfa] 6704                      beq.s      $00041C00
[00041bfc] c47c f7ff                 and.w      #$F7FF,d2
[00041c00] 4a00                      tst.b      d0
[00041c02] 6606                      bne.s      $00041C0A
[00041c04] 1003                      move.b     d3,d0
[00041c06] 6602                      bne.s      $00041C0A
[00041c08] 1004                      move.b     d4,d0
[00041c0a] b03c 007f                 cmp.b      #$7F,d0
[00041c0e] 6604                      bne.s      $00041C14
[00041c10] 103c 001f                 move.b     #$1F,d0
[00041c14] b23c 004a                 cmp.b      #$4A,d1
[00041c18] 6712                      beq.s      $00041C2C
[00041c1a] b23c 004e                 cmp.b      #$4E,d1
[00041c1e] 670c                      beq.s      $00041C2C
[00041c20] b23c 0063                 cmp.b      #$63,d1
[00041c24] 650a                      bcs.s      $00041C30
[00041c26] b23c 0072                 cmp.b      #$72,d1
[00041c2a] 6204                      bhi.s      $00041C30
[00041c2c] 847c 2000                 or.w       #$2000,d2
[00041c30] b03c 0020                 cmp.b      #$20,d0
[00041c34] 6412                      bcc.s      $00041C48
[00041c36] 847c 8000                 or.w       #$8000,d2
[00041c3a] b03c 000d                 cmp.b      #$0D,d0
[00041c3e] 6608                      bne.s      $00041C48
[00041c40] 0802 000d                 btst       #13,d2
[00041c44] 6702                      beq.s      $00041C48
[00041c46] 700a                      moveq.l    #10,d0
[00041c48] b23c 0054                 cmp.b      #$54,d1
[00041c4c] 6516                      bcs.s      $00041C64
[00041c4e] b23c 005d                 cmp.b      #$5D,d1
[00041c52] 6210                      bhi.s      $00041C64
[00041c54] 923c 0019                 sub.b      #$19,d1
[00041c58] 3602                      move.w     d2,d3
[00041c5a] c67c 0300                 and.w      #$0300,d3
[00041c5e] 6604                      bne.s      $00041C64
[00041c60] 847c 0300                 or.w       #$0300,d2
[00041c64] b23c 003b                 cmp.b      #$3B,d1
[00041c68] 650c                      bcs.s      $00041C76
[00041c6a] b23c 0044                 cmp.b      #$44,d1
[00041c6e] 6206                      bhi.s      $00041C76
[00041c70] 1001                      move.b     d1,d0
[00041c72] 903c 002b                 sub.b      #$2B,d0
[00041c76] 2079 0010 264a            movea.l    $0010264A,a0
[00041c7c] 1630 1000                 move.b     0(a0,d1.w),d3
[00041c80] 8042                      or.w       d2,d0
[00041c82] 6b06                      bmi.s      $00041C8A
[00041c84] c47c 0c00                 and.w      #$0C00,d2
[00041c88] 660e                      bne.s      $00041C98
[00041c8a] 2079 0010 2646            movea.l    $00102646,a0
[00041c90] b630 1000                 cmp.b      0(a0,d1.w),d3
[00041c94] 6714                      beq.s      $00041CAA
[00041c96] 6016                      bra.s      $00041CAE
[00041c98] 807c 8000                 or.w       #$8000,d0
[00041c9c] 2079 0010 264e            movea.l    $0010264E,a0
[00041ca2] b630 1000                 cmp.b      0(a0,d1.w),d3
[00041ca6] 6606                      bne.s      $00041CAE
[00041ca8] 1003                      move.b     d3,d0
[00041caa] 807c 4000                 or.w       #$4000,d0
[00041cae] 4a40                      tst.w      d0
[00041cb0] 4cdf 0018                 movem.l    (a7)+,d3-d4
[00041cb4] 4e75                      rts
.tos306:
[00041cb6] c47c 1000                 and.w      #$1000,d2
[00041cba] 8042                      or.w       d2,d0
[00041cbc] 4cdf 0018                 movem.l    (a7)+,d3-d4
[00041cc0] 4e75                      rts
nkc_n2to:
[00041cc2] 3200                      move.w     d0,d1
[00041cc4] c27c 8c00                 and.w      #$8C00,d1
[00041cc8] b27c 8000                 cmp.w      #$8000,d1
[00041ccc] 6624                      bne.s      $00041CF2
[00041cce] b03c 0020                 cmp.b      #$20,d0
[00041cd2] 651e                      bcs.s      $00041CF2
[00041cd4] 3200                      move.w     d0,d1
[00041cd6] c0bc 0000 1300            and.l      #$00001300,d0
[00041cdc] 0801 000d                 btst       #13,d1
[00041ce0] 6704                      beq.s      $00041CE6
[00041ce2] 807c 0c00                 or.w       #$0C00,d0
[00041ce6] 803c 00ff                 or.b       #$FF,d0
[00041cea] 4840                      swap       d0
[00041cec] 1001                      move.b     d1,d0
[00041cee] 6000 012a                 bra        $00041E1A
[00041cf2] 3200                      move.w     d0,d1
[00041cf4] c27c 0300                 and.w      #$0300,d1
[00041cf8] 670e                      beq.s      $00041D08
[00041cfa] 43f9 000d 35f0            lea.l      $000D35F0,a1
[00041d00] 2079 0010 264a            movea.l    $0010264A,a0
[00041d06] 601a                      bra.s      $00041D22
[00041d08] 43f9 000d 35d0            lea.l      $000D35D0,a1
[00041d0e] 0800 000c                 btst       #12,d0
[00041d12] 6708                      beq.s      $00041D1C
[00041d14] 2079 0010 264e            movea.l    $0010264E,a0
[00041d1a] 6006                      bra.s      $00041D22
[00041d1c] 2079 0010 2646            movea.l    $00102646,a0
[00041d22] b03c 0020                 cmp.b      #$20,d0
[00041d26] 6534                      bcs.s      $00041D5C
[00041d28] 6100 fdb2                 bsr        $00041ADC
[00041d2c] 665a                      bne.s      $00041D88
[00041d2e] 0800 000f                 btst       #15,d0
[00041d32] 6718                      beq.s      $00041D4C
[00041d34] 2208                      move.l     a0,d1
[00041d36] 41f9 000d 34c6            lea.l      $000D34C6,a0
[00041d3c] 7400                      moveq.l    #0,d2
[00041d3e] 1400                      move.b     d0,d2
[00041d40] 1030 2000                 move.b     0(a0,d2.w),d0
[00041d44] 2041                      movea.l    d1,a0
[00041d46] 6100 fd94                 bsr        $00041ADC
[00041d4a] 663c                      bne.s      $00041D88
[00041d4c] 7200                      moveq.l    #0,d1
[00041d4e] 1200                      move.b     d0,d1
[00041d50] c07c 1f00                 and.w      #$1F00,d0
[00041d54] 4840                      swap       d0
[00041d56] 3001                      move.w     d1,d0
[00041d58] 6000 00c0                 bra        $00041E1A
[00041d5c] 0800 000f                 btst       #15,d0
[00041d60] 6606                      bne.s      $00041D68
[00041d62] c07c 10ff                 and.w      #$10FF,d0
[00041d66] 60e4                      bra.s      $00041D4C
[00041d68] 7200                      moveq.l    #0,d1
[00041d6a] 1200                      move.b     d0,d1
[00041d6c] 3401                      move.w     d1,d2
[00041d6e] 1231 1000                 move.b     0(a1,d1.w),d1
[00041d72] 6606                      bne.s      $00041D7A
[00041d74] 7000                      moveq.l    #0,d0
[00041d76] 6000 00a2                 bra        $00041E1A
[00041d7a] 43f9 000d 35d0            lea.l      $000D35D0,a1
[00041d80] 1431 2000                 move.b     0(a1,d2.w),d2
[00041d84] 1030 2000                 move.b     0(a0,d2.w),d0
[00041d88] 3400                      move.w     d0,d2
[00041d8a] c07c 1f00                 and.w      #$1F00,d0
[00041d8e] 1001                      move.b     d1,d0
[00041d90] 4840                      swap       d0
[00041d92] 4240                      clr.w      d0
[00041d94] 1002                      move.b     d2,d0
[00041d96] 0802 000a                 btst       #10,d2
[00041d9a] 6748                      beq.s      $00041DE4
[00041d9c] b23c 004b                 cmp.b      #$4B,d1
[00041da0] 660a                      bne.s      $00041DAC
[00041da2] d0bc 0028 0000            add.l      #$00280000,d0
[00041da8] 4200                      clr.b      d0
[00041daa] 606e                      bra.s      $00041E1A
[00041dac] b23c 004d                 cmp.b      #$4D,d1
[00041db0] 660a                      bne.s      $00041DBC
[00041db2] d0bc 0027 0000            add.l      #$00270000,d0
[00041db8] 4200                      clr.b      d0
[00041dba] 605e                      bra.s      $00041E1A
[00041dbc] b23c 0047                 cmp.b      #$47,d1
[00041dc0] 6608                      bne.s      $00041DCA
[00041dc2] d0bc 0030 0000            add.l      #$00300000,d0
[00041dc8] 6050                      bra.s      $00041E1A
[00041dca] 41f9 000d 35c6            lea.l      $000D35C6,a0
[00041dd0] 3218                      move.w     (a0)+,d1
[00041dd2] 670a                      beq.s      $00041DDE
[00041dd4] b200                      cmp.b      d0,d1
[00041dd6] 66f8                      bne.s      $00041DD0
[00041dd8] e049                      lsr.w      #8,d1
[00041dda] 1001                      move.b     d1,d0
[00041ddc] 603c                      bra.s      $00041E1A
[00041dde] c03c 001f                 and.b      #$1F,d0
[00041de2] 6036                      bra.s      $00041E1A
[00041de4] 0802 000b                 btst       #11,d2
[00041de8] 6730                      beq.s      $00041E1A
[00041dea] b23c 0002                 cmp.b      #$02,d1
[00041dee] 6510                      bcs.s      $00041E00
[00041df0] b23c 000d                 cmp.b      #$0D,d1
[00041df4] 620a                      bhi.s      $00041E00
[00041df6] d0bc 0076 0000            add.l      #$00760000,d0
[00041dfc] 4200                      clr.b      d0
[00041dfe] 601a                      bra.s      $00041E1A
[00041e00] b03c 0041                 cmp.b      #$41,d0
[00041e04] 6514                      bcs.s      $00041E1A
[00041e06] b03c 007a                 cmp.b      #$7A,d0
[00041e0a] 620e                      bhi.s      $00041E1A
[00041e0c] b03c 005a                 cmp.b      #$5A,d0
[00041e10] 6306                      bls.s      $00041E18
[00041e12] b03c 0061                 cmp.b      #$61,d0
[00041e16] 6502                      bcs.s      $00041E1A
[00041e18] 4200                      clr.b      d0
[00041e1a] 4a80                      tst.l      d0
[00041e1c] 4e75                      rts
nkc_toup:
[00041e1e] 41f9 000d 33c6            lea.l      $000D33C6,a0
[00041e24] c07c 00ff                 and.w      #$00FF,d0
[00041e28] 1030 0000                 move.b     0(a0,d0.w),d0
[00041e2c] 4e75                      rts
nkc_tolo:
[00041e2e] 41f9 000d 34c6            lea.l      $000D34C6,a0
[00041e34] c07c 00ff                 and.w      #$00FF,d0
[00041e38] 1030 0000                 move.b     0(a0,d0.w),d0
[00041e3c] 4e75                      rts
