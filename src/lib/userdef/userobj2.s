
A_pattern:
[0005b032] 48e7 3038                 movem.l    d2-d3/a2-a4,-(a7)
[0005b036] 4fef fff4                 lea.l      -12(a7),a7
[0005b03a] 246f 0024                 movea.l    36(a7),a2
[0005b03e] 47ef 0004                 lea.l      4(a7),a3
[0005b042] 49f9 0010 1f12            lea.l      ACSblk,a4
[0005b048] 302a 0016                 move.w     22(a2),d0
[0005b04c] 6606                      bne.s      A_pattern_1
[0005b04e] 322a 0018                 move.w     24(a2),d1
[0005b052] 6738                      beq.s      A_pattern_2
A_pattern_1:
[0005b054] 36aa 0012                 move.w     18(a2),(a3)
[0005b058] 376a 0014 0002            move.w     20(a2),2(a3)
[0005b05e] 302a 0012                 move.w     18(a2),d0
[0005b062] d06a 0016                 add.w      22(a2),d0
[0005b066] 5340                      subq.w     #1,d0
[0005b068] 3740 0004                 move.w     d0,4(a3)
[0005b06c] 322a 0014                 move.w     20(a2),d1
[0005b070] d26a 0018                 add.w      24(a2),d1
[0005b074] 5341                      subq.w     #1,d1
[0005b076] 3741 0006                 move.w     d1,6(a3)
[0005b07a] 204b                      movea.l    a3,a0
[0005b07c] 2254                      movea.l    (a4),a1
[0005b07e] 3029 0010                 move.w     16(a1),d0
[0005b082] 7201                      moveq.l    #1,d1
[0005b084] 4eb9 0006 3f60            jsr        vs_clip
[0005b08a] 6010                      bra.s      A_pattern_3
A_pattern_2:
[0005b08c] 204b                      movea.l    a3,a0
[0005b08e] 4241                      clr.w      d1
[0005b090] 2254                      movea.l    (a4),a1
[0005b092] 3029 0010                 move.w     16(a1),d0
[0005b096] 4eb9 0006 3f60            jsr        vs_clip
A_pattern_3:
[0005b09c] 36aa 000a                 move.w     10(a2),(a3)
[0005b0a0] 376a 000c 0002            move.w     12(a2),2(a3)
[0005b0a6] 3013                      move.w     (a3),d0
[0005b0a8] d06a 000e                 add.w      14(a2),d0
[0005b0ac] 5340                      subq.w     #1,d0
[0005b0ae] 3740 0004                 move.w     d0,4(a3)
[0005b0b2] 322b 0002                 move.w     2(a3),d1
[0005b0b6] d26a 0010                 add.w      16(a2),d1
[0005b0ba] 5341                      subq.w     #1,d1
[0005b0bc] 3741 0006                 move.w     d1,6(a3)
[0005b0c0] 2eaa 001a                 move.l     26(a2),(a7)
[0005b0c4] 362a 0006                 move.w     6(a2),d3
[0005b0c8] 302a 0008                 move.w     8(a2),d0
[0005b0cc] b143                      eor.w      d0,d3
[0005b0ce] 4a43                      tst.w      d3
[0005b0d0] 6600 00cc                 bne        A_pattern_4
[0005b0d4] 2054                      movea.l    (a4),a0
[0005b0d6] 3028 0010                 move.w     16(a0),d0
[0005b0da] 7201                      moveq.l    #1,d1
[0005b0dc] 4eb9 0006 4da0            jsr        vswr_mode
[0005b0e2] 3017                      move.w     (a7),d0
[0005b0e4] e148                      lsl.w      #8,d0
[0005b0e6] e040                      asr.w      #8,d0
[0005b0e8] c07c 00c0                 and.w      #$00C0,d0
[0005b0ec] 4a40                      tst.w      d0
[0005b0ee] 6708                      beq.s      A_pattern_5
[0005b0f0] 907c 0040                 sub.w      #$0040,d0
[0005b0f4] 6712                      beq.s      A_pattern_6
[0005b0f6] 6036                      bra.s      A_pattern_7
A_pattern_5:
[0005b0f8] 7203                      moveq.l    #3,d1
[0005b0fa] 2054                      movea.l    (a4),a0
[0005b0fc] 3028 0010                 move.w     16(a0),d0
[0005b100] 4eb9 0006 5390            jsr        vsf_interior
[0005b106] 600e                      bra.s      A_pattern_8
A_pattern_6:
[0005b108] 7202                      moveq.l    #2,d1
[0005b10a] 2054                      movea.l    (a4),a0
[0005b10c] 3028 0010                 move.w     16(a0),d0
[0005b110] 4eb9 0006 5390            jsr        vsf_interior
A_pattern_8:
[0005b116] 3217                      move.w     (a7),d1
[0005b118] e149                      lsl.w      #8,d1
[0005b11a] e041                      asr.w      #8,d1
[0005b11c] c27c 001f                 and.w      #$001F,d1
[0005b120] 2054                      movea.l    (a4),a0
[0005b122] 3028 0010                 move.w     16(a0),d0
[0005b126] 4eb9 0006 53e4            jsr        vsf_style
[0005b12c] 6032                      bra.s      A_pattern_9
A_pattern_7:
[0005b12e] 7204                      moveq.l    #4,d1
[0005b130] 2054                      movea.l    (a4),a0
[0005b132] 3028 0010                 move.w     16(a0),d0
[0005b136] 4eb9 0006 5390            jsr        vsf_interior
[0005b13c] 7201                      moveq.l    #1,d1
[0005b13e] 3017                      move.w     (a7),d0
[0005b140] e148                      lsl.w      #8,d0
[0005b142] e040                      asr.w      #8,d0
[0005b144] c07c 001f                 and.w      #$001F,d0
[0005b148] e548                      lsl.w      #2,d0
[0005b14a] 41f9 000d 4d96            lea.l      up,a0
[0005b150] 2070 0000                 movea.l    0(a0,d0.w),a0
[0005b154] 2254                      movea.l    (a4),a1
[0005b156] 3029 0010                 move.w     16(a1),d0
[0005b15a] 4eb9 0006 553e            jsr        vsf_udpat
A_pattern_9:
[0005b160] 720f                      moveq.l    #15,d1
[0005b162] c26f 0002                 and.w      2(a7),d1
[0005b166] 2054                      movea.l    (a4),a0
[0005b168] 3028 0010                 move.w     16(a0),d0
[0005b16c] 4eb9 0006 5438            jsr        vsf_color
[0005b172] 3017                      move.w     (a7),d0
[0005b174] e148                      lsl.w      #8,d0
[0005b176] e040                      asr.w      #8,d0
[0005b178] c07c 0020                 and.w      #$0020,d0
[0005b17c] 6704                      beq.s      A_pattern_10
[0005b17e] 7201                      moveq.l    #1,d1
[0005b180] 6002                      bra.s      A_pattern_11
A_pattern_10:
[0005b182] 4241                      clr.w      d1
A_pattern_11:
[0005b184] 2054                      movea.l    (a4),a0
[0005b186] 3028 0010                 move.w     16(a0),d0
[0005b18a] 4eb9 0006 548c            jsr        vsf_perimeter
[0005b190] 204b                      movea.l    a3,a0
[0005b192] 2254                      movea.l    (a4),a1
[0005b194] 3029 0010                 move.w     16(a1),d0
[0005b198] 4eb9 0006 455e            jsr        v_bar
A_pattern_4:
[0005b19e] 7001                      moveq.l    #1,d0
[0005b1a0] c043                      and.w      d3,d0
[0005b1a2] 6608                      bne.s      A_pattern_12
[0005b1a4] 7201                      moveq.l    #1,d1
[0005b1a6] c26a 0008                 and.w      8(a2),d1
[0005b1aa] 6746                      beq.s      A_pattern_13
A_pattern_12:
[0005b1ac] 7203                      moveq.l    #3,d1
[0005b1ae] 2054                      movea.l    (a4),a0
[0005b1b0] 3028 0010                 move.w     16(a0),d0
[0005b1b4] 4eb9 0006 4da0            jsr        vswr_mode
[0005b1ba] 7201                      moveq.l    #1,d1
[0005b1bc] 2054                      movea.l    (a4),a0
[0005b1be] 3028 0010                 move.w     16(a0),d0
[0005b1c2] 4eb9 0006 5390            jsr        vsf_interior
[0005b1c8] 7201                      moveq.l    #1,d1
[0005b1ca] 2054                      movea.l    (a4),a0
[0005b1cc] 3028 0010                 move.w     16(a0),d0
[0005b1d0] 4eb9 0006 5438            jsr        vsf_color
[0005b1d6] 4241                      clr.w      d1
[0005b1d8] 2054                      movea.l    (a4),a0
[0005b1da] 3028 0010                 move.w     16(a0),d0
[0005b1de] 4eb9 0006 548c            jsr        vsf_perimeter
[0005b1e4] 204b                      movea.l    a3,a0
[0005b1e6] 2254                      movea.l    (a4),a1
[0005b1e8] 3029 0010                 move.w     16(a1),d0
[0005b1ec] 4eb9 0006 455e            jsr        v_bar
A_pattern_13:
[0005b1f2] 204b                      movea.l    a3,a0
[0005b1f4] 4241                      clr.w      d1
[0005b1f6] 2254                      movea.l    (a4),a1
[0005b1f8] 3029 0010                 move.w     16(a1),d0
[0005b1fc] 4eb9 0006 3f60            jsr        vs_clip
[0005b202] 70fe                      moveq.l    #-2,d0
[0005b204] c06a 0008                 and.w      8(a2),d0
[0005b208] 4fef 000c                 lea.l      12(a7),a7
[0005b20c] 4cdf 1c0c                 movem.l    (a7)+,d2-d3/a2-a4
[0005b210] 4e75                      rts

A_arrows:
[0005b212] 48e7 3e2c                 movem.l    d2-d6/a2/a4-a5,-(a7)
[0005b216] 514f                      subq.w     #8,a7
[0005b218] 246f 002c                 movea.l    44(a7),a2
[0005b21c] 49f9 0010 1f12            lea.l      ACSblk,a4
[0005b222] 302a 0016                 move.w     22(a2),d0
[0005b226] 6606                      bne.s      A_arrows_1
[0005b228] 322a 0018                 move.w     24(a2),d1
[0005b22c] 6738                      beq.s      A_arrows_2
A_arrows_1:
[0005b22e] 3eaa 0012                 move.w     18(a2),(a7)
[0005b232] 3f6a 0014 0002            move.w     20(a2),2(a7)
[0005b238] 302a 0012                 move.w     18(a2),d0
[0005b23c] d06a 0016                 add.w      22(a2),d0
[0005b240] 5340                      subq.w     #1,d0
[0005b242] 3f40 0004                 move.w     d0,4(a7)
[0005b246] 322a 0014                 move.w     20(a2),d1
[0005b24a] d26a 0018                 add.w      24(a2),d1
[0005b24e] 5341                      subq.w     #1,d1
[0005b250] 3f41 0006                 move.w     d1,6(a7)
[0005b254] 41d7                      lea.l      (a7),a0
[0005b256] 2254                      movea.l    (a4),a1
[0005b258] 3029 0010                 move.w     16(a1),d0
[0005b25c] 7201                      moveq.l    #1,d1
[0005b25e] 4eb9 0006 3f60            jsr        vs_clip
[0005b264] 6010                      bra.s      A_arrows_3
A_arrows_2:
[0005b266] 41d7                      lea.l      (a7),a0
[0005b268] 4241                      clr.w      d1
[0005b26a] 2254                      movea.l    (a4),a1
[0005b26c] 3029 0010                 move.w     16(a1),d0
[0005b270] 4eb9 0006 3f60            jsr        vs_clip
A_arrows_3:
[0005b276] 4bea 001a                 lea.l      26(a2),a5
[0005b27a] 2015                      move.l     (a5),d0
[0005b27c] 7213                      moveq.l    #19,d1
[0005b27e] e2a0                      asr.l      d1,d0
[0005b280] c0bc 0000 0001            and.l      #$00000001,d0
[0005b286] 6704                      beq.s      A_arrows_4
[0005b288] 7601                      moveq.l    #1,d3
[0005b28a] 6002                      bra.s      A_arrows_5
A_arrows_4:
[0005b28c] 4243                      clr.w      d3
A_arrows_5:
[0005b28e] 302a 0006                 move.w     6(a2),d0
[0005b292] b06a 0008                 cmp.w      8(a2),d0
[0005b296] 6600 0238                 bne        A_arrows_6
[0005b29a] 7201                      moveq.l    #1,d1
[0005b29c] 2054                      movea.l    (a4),a0
[0005b29e] 3028 0010                 move.w     16(a0),d0
[0005b2a2] 4eb9 0006 4da0            jsr        vswr_mode
[0005b2a8] 302a 000e                 move.w     14(a2),d0
[0005b2ac] e240                      asr.w      #1,d0
[0005b2ae] 322a 0010                 move.w     16(a2),d1
[0005b2b2] e241                      asr.w      #1,d1
[0005b2b4] 2054                      movea.l    (a4),a0
[0005b2b6] 3428 0012                 move.w     18(a0),d2
[0005b2ba] e242                      asr.w      #1,d2
[0005b2bc] 3828 0014                 move.w     20(a0),d4
[0005b2c0] e244                      asr.w      #1,d4
[0005b2c2] 3a2a 000a                 move.w     10(a2),d5
[0005b2c6] 3f45 0004                 move.w     d5,4(a7)
[0005b2ca] 3e85                      move.w     d5,(a7)
[0005b2cc] 3a2a 000c                 move.w     12(a2),d5
[0005b2d0] 3f45 0006                 move.w     d5,6(a7)
[0005b2d4] 3f45 0002                 move.w     d5,2(a7)
[0005b2d8] 2a15                      move.l     (a5),d5
[0005b2da] 7c18                      moveq.l    #24,d6
[0005b2dc] eca5                      asr.l      d6,d5
[0005b2de] ca7c 0007                 and.w      #$0007,d5
[0005b2e2] ba7c 0007                 cmp.w      #$0007,d5
[0005b2e6] 625e                      bhi.s      A_arrows_7
[0005b2e8] da45                      add.w      d5,d5
[0005b2ea] 3a3b 5006                 move.w     $0005B2F2(pc,d5.w),d5
[0005b2ee] 4efb 5002                 jmp        $0005B2F2(pc,d5.w)
J48:
[0005b2f2] 0010                      dc.w $0010   ; A_arrows_8-J48
[0005b2f4] 0014                      dc.w $0014   ; A_arrows_9-J48
[0005b2f6] 001c                      dc.w $001c   ; A_arrows_10-J48
[0005b2f8] 0020                      dc.w $0020   ; A_arrows_11-J48
[0005b2fa] 0030                      dc.w $0030   ; A_arrows_12-J48
[0005b2fc] 0038                      dc.w $0038   ; A_arrows_13-J48
[0005b2fe] 0040                      dc.w $0040   ; A_arrows_14-J48
[0005b300] 0048                      dc.w $0048   ; A_arrows_15-J48
A_arrows_8:
[0005b302] d157                      add.w      d0,(a7)
[0005b304] 6002                      bra.s      A_arrows_16
A_arrows_9:
[0005b306] d757                      add.w      d3,(a7)
A_arrows_16:
[0005b308] d76f 0002                 add.w      d3,2(a7)
[0005b30c] 6038                      bra.s      A_arrows_7
A_arrows_10:
[0005b30e] d757                      add.w      d3,(a7)
[0005b310] 6022                      bra.s      A_arrows_17
A_arrows_11:
[0005b312] d757                      add.w      d3,(a7)
[0005b314] 7aff                      moveq.l    #-1,d5
[0005b316] da6a 0010                 add.w      16(a2),d5
[0005b31a] 9a43                      sub.w      d3,d5
[0005b31c] db6f 0002                 add.w      d5,2(a7)
[0005b320] 6024                      bra.s      A_arrows_7
A_arrows_12:
[0005b322] d96f 0002                 add.w      d4,2(a7)
[0005b326] d157                      add.w      d0,(a7)
[0005b328] 601c                      bra.s      A_arrows_7
A_arrows_13:
[0005b32a] d557                      add.w      d2,(a7)
[0005b32c] d96f 0002                 add.w      d4,2(a7)
[0005b330] 6014                      bra.s      A_arrows_7
A_arrows_14:
[0005b332] d557                      add.w      d2,(a7)
A_arrows_17:
[0005b334] d36f 0002                 add.w      d1,2(a7)
[0005b338] 600c                      bra.s      A_arrows_7
A_arrows_15:
[0005b33a] d557                      add.w      d2,(a7)
[0005b33c] 3a2a 0010                 move.w     16(a2),d5
[0005b340] 9a44                      sub.w      d4,d5
[0005b342] db6f 0002                 add.w      d5,2(a7)
A_arrows_7:
[0005b346] 2a15                      move.l     (a5),d5
[0005b348] 7c1c                      moveq.l    #28,d6
[0005b34a] eca5                      asr.l      d6,d5
[0005b34c] ca7c 0007                 and.w      #$0007,d5
[0005b350] ba7c 0007                 cmp.w      #$0007,d5
[0005b354] 6200 0096                 bhi        A_arrows_18
[0005b358] da45                      add.w      d5,d5
[0005b35a] 3a3b 5006                 move.w     $0005B362(pc,d5.w),d5
[0005b35e] 4efb 5002                 jmp        $0005B362(pc,d5.w)
J49:
[0005b362] 0010                      dc.w $0010   ; A_arrows_19-J49
[0005b364] 0016                      dc.w $0016   ; A_arrows_20-J49
[0005b366] 0030                      dc.w $0030   ; A_arrows_21-J49
[0005b368] 003e                      dc.w $003e   ; A_arrows_22-J49
[0005b36a] 0050                      dc.w $0050   ; A_arrows_23-J49
[0005b36c] 0056                      dc.w $0056   ; A_arrows_24-J49
[0005b36e] 006c                      dc.w $006c   ; A_arrows_25-J49
[0005b370] 007c                      dc.w $007c   ; A_arrows_26-J49
A_arrows_19:
[0005b372] d16f 0004                 add.w      d0,4(a7)
[0005b376] 600c                      bra.s      A_arrows_27
A_arrows_20:
[0005b378] 7aff                      moveq.l    #-1,d5
[0005b37a] da6a 000e                 add.w      14(a2),d5
[0005b37e] 9a43                      sub.w      d3,d5
[0005b380] db6f 0004                 add.w      d5,4(a7)
A_arrows_27:
[0005b384] 7aff                      moveq.l    #-1,d5
[0005b386] da6a 0010                 add.w      16(a2),d5
[0005b38a] 9a43                      sub.w      d3,d5
[0005b38c] db6f 0006                 add.w      d5,6(a7)
[0005b390] 605a                      bra.s      A_arrows_18
A_arrows_21:
[0005b392] 7aff                      moveq.l    #-1,d5
[0005b394] da6a 000e                 add.w      14(a2),d5
[0005b398] 9a43                      sub.w      d3,d5
[0005b39a] db6f 0004                 add.w      d5,4(a7)
[0005b39e] 6038                      bra.s      A_arrows_28
A_arrows_22:
[0005b3a0] 7aff                      moveq.l    #-1,d5
[0005b3a2] da6a 000e                 add.w      14(a2),d5
[0005b3a6] 9a43                      sub.w      d3,d5
[0005b3a8] db6f 0004                 add.w      d5,4(a7)
[0005b3ac] d76f 0006                 add.w      d3,6(a7)
[0005b3b0] 603a                      bra.s      A_arrows_18
A_arrows_23:
[0005b3b2] d16f 0004                 add.w      d0,4(a7)
[0005b3b6] 600a                      bra.s      A_arrows_29
A_arrows_24:
[0005b3b8] 302a 000e                 move.w     14(a2),d0
[0005b3bc] 9042                      sub.w      d2,d0
[0005b3be] d16f 0004                 add.w      d0,4(a7)
A_arrows_29:
[0005b3c2] 302a 0010                 move.w     16(a2),d0
[0005b3c6] 9044                      sub.w      d4,d0
[0005b3c8] d16f 0006                 add.w      d0,6(a7)
[0005b3cc] 601e                      bra.s      A_arrows_18
A_arrows_25:
[0005b3ce] 302a 000e                 move.w     14(a2),d0
[0005b3d2] 9042                      sub.w      d2,d0
[0005b3d4] d16f 0004                 add.w      d0,4(a7)
A_arrows_28:
[0005b3d8] d36f 0006                 add.w      d1,6(a7)
[0005b3dc] 600e                      bra.s      A_arrows_18
A_arrows_26:
[0005b3de] 302a 000e                 move.w     14(a2),d0
[0005b3e2] 9042                      sub.w      d2,d0
[0005b3e4] d16f 0004                 add.w      d0,4(a7)
[0005b3e8] d96f 0006                 add.w      d4,6(a7)
A_arrows_18:
[0005b3ec] 4a43                      tst.w      d3
[0005b3ee] 6710                      beq.s      A_arrows_30
[0005b3f0] 7203                      moveq.l    #3,d1
[0005b3f2] 2054                      movea.l    (a4),a0
[0005b3f4] 3028 0010                 move.w     16(a0),d0
[0005b3f8] 4eb9 0006 4e9a            jsr        vsl_width
[0005b3fe] 600e                      bra.s      A_arrows_31
A_arrows_30:
[0005b400] 7201                      moveq.l    #1,d1
[0005b402] 2054                      movea.l    (a4),a0
[0005b404] 3028 0010                 move.w     16(a0),d0
[0005b408] 4eb9 0006 4e9a            jsr        vsl_width
A_arrows_31:
[0005b40e] 2a15                      move.l     (a5),d5
[0005b410] 7010                      moveq.l    #16,d0
[0005b412] e0a5                      asr.l      d0,d5
[0005b414] ca7c 0007                 and.w      #$0007,d5
[0005b418] ba7c 0007                 cmp.w      #$0007,d5
[0005b41c] 6610                      bne.s      A_arrows_32
[0005b41e] 323c 5555                 move.w     #$5555,d1
[0005b422] 2054                      movea.l    (a4),a0
[0005b424] 3028 0010                 move.w     16(a0),d0
[0005b428] 4eb9 0006 4e48            jsr        vsl_udsty
A_arrows_32:
[0005b42e] 3205                      move.w     d5,d1
[0005b430] 2054                      movea.l    (a4),a0
[0005b432] 3028 0010                 move.w     16(a0),d0
[0005b436] 4eb9 0006 4df4            jsr        vsl_type
[0005b43c] 2415                      move.l     (a5),d2
[0005b43e] 7016                      moveq.l    #22,d0
[0005b440] e0a2                      asr.l      d0,d2
[0005b442] c47c 0003                 and.w      #$0003,d2
[0005b446] 2215                      move.l     (a5),d1
[0005b448] 7814                      moveq.l    #20,d4
[0005b44a] e8a1                      asr.l      d4,d1
[0005b44c] c27c 0003                 and.w      #$0003,d1
[0005b450] 2054                      movea.l    (a4),a0
[0005b452] 3028 0010                 move.w     16(a0),d0
[0005b456] 4eb9 0006 4f44            jsr        vsl_ends
[0005b45c] 2015                      move.l     (a5),d0
[0005b45e] c0bc 8000 0000            and.l      #$80000000,d0
[0005b464] 6748                      beq.s      A_arrows_33
[0005b466] 2054                      movea.l    (a4),a0
[0005b468] 2268 023c                 movea.l    572(a0),a1
[0005b46c] 3229 000e                 move.w     14(a1),d1
[0005b470] c27c 0100                 and.w      #$0100,d1
[0005b474] 6638                      bne.s      A_arrows_33
[0005b476] 5257                      addq.w     #1,(a7)
[0005b478] 526f 0004                 addq.w     #1,4(a7)
[0005b47c] 526f 0002                 addq.w     #1,2(a7)
[0005b480] 526f 0006                 addq.w     #1,6(a7)
[0005b484] 3028 0010                 move.w     16(a0),d0
[0005b488] 4241                      clr.w      d1
[0005b48a] 4eb9 0006 4ef0            jsr        vsl_color
[0005b490] 41d7                      lea.l      (a7),a0
[0005b492] 7202                      moveq.l    #2,d1
[0005b494] 2254                      movea.l    (a4),a1
[0005b496] 3029 0010                 move.w     16(a1),d0
[0005b49a] 4eb9 0006 4010            jsr        v_pline
[0005b4a0] 5357                      subq.w     #1,(a7)
[0005b4a2] 536f 0004                 subq.w     #1,4(a7)
[0005b4a6] 536f 0002                 subq.w     #1,2(a7)
[0005b4aa] 536f 0006                 subq.w     #1,6(a7)
A_arrows_33:
[0005b4ae] 720f                      moveq.l    #15,d1
[0005b4b0] c26d 0002                 and.w      2(a5),d1
[0005b4b4] 2054                      movea.l    (a4),a0
[0005b4b6] 3028 0010                 move.w     16(a0),d0
[0005b4ba] 4eb9 0006 4ef0            jsr        vsl_color
[0005b4c0] 41d7                      lea.l      (a7),a0
[0005b4c2] 7202                      moveq.l    #2,d1
[0005b4c4] 2254                      movea.l    (a4),a1
[0005b4c6] 3029 0010                 move.w     16(a1),d0
[0005b4ca] 4eb9 0006 4010            jsr        v_pline
A_arrows_6:
[0005b4d0] 7001                      moveq.l    #1,d0
[0005b4d2] c06a 0006                 and.w      6(a2),d0
[0005b4d6] 660a                      bne.s      A_arrows_34
[0005b4d8] 7201                      moveq.l    #1,d1
[0005b4da] c26a 0008                 and.w      8(a2),d1
[0005b4de] 6700 0086                 beq        A_arrows_35
A_arrows_34:
[0005b4e2] 7001                      moveq.l    #1,d0
[0005b4e4] d06a 0012                 add.w      18(a2),d0
[0005b4e8] 3e80                      move.w     d0,(a7)
[0005b4ea] 7201                      moveq.l    #1,d1
[0005b4ec] d26a 0014                 add.w      20(a2),d1
[0005b4f0] 3f41 0002                 move.w     d1,2(a7)
[0005b4f4] 342a 0012                 move.w     18(a2),d2
[0005b4f8] d46a 0016                 add.w      22(a2),d2
[0005b4fc] 5542                      subq.w     #2,d2
[0005b4fe] 3f42 0004                 move.w     d2,4(a7)
[0005b502] 382a 0014                 move.w     20(a2),d4
[0005b506] d86a 0018                 add.w      24(a2),d4
[0005b50a] 5544                      subq.w     #2,d4
[0005b50c] 3f44 0006                 move.w     d4,6(a7)
[0005b510] 41d7                      lea.l      (a7),a0
[0005b512] 2254                      movea.l    (a4),a1
[0005b514] 3029 0010                 move.w     16(a1),d0
[0005b518] 7201                      moveq.l    #1,d1
[0005b51a] 4eb9 0006 3f60            jsr        vs_clip
[0005b520] 7203                      moveq.l    #3,d1
[0005b522] 2054                      movea.l    (a4),a0
[0005b524] 3028 0010                 move.w     16(a0),d0
[0005b528] 4eb9 0006 4da0            jsr        vswr_mode
[0005b52e] 7201                      moveq.l    #1,d1
[0005b530] 2054                      movea.l    (a4),a0
[0005b532] 3028 0010                 move.w     16(a0),d0
[0005b536] 4eb9 0006 5390            jsr        vsf_interior
[0005b53c] 7201                      moveq.l    #1,d1
[0005b53e] 2054                      movea.l    (a4),a0
[0005b540] 3028 0010                 move.w     16(a0),d0
[0005b544] 4eb9 0006 5438            jsr        vsf_color
[0005b54a] 4241                      clr.w      d1
[0005b54c] 2054                      movea.l    (a4),a0
[0005b54e] 3028 0010                 move.w     16(a0),d0
[0005b552] 4eb9 0006 548c            jsr        vsf_perimeter
[0005b558] 41d7                      lea.l      (a7),a0
[0005b55a] 2254                      movea.l    (a4),a1
[0005b55c] 3029 0010                 move.w     16(a1),d0
[0005b560] 4eb9 0006 455e            jsr        v_bar
A_arrows_35:
[0005b566] 4242                      clr.w      d2
[0005b568] 4241                      clr.w      d1
[0005b56a] 2054                      movea.l    (a4),a0
[0005b56c] 3028 0010                 move.w     16(a0),d0
[0005b570] 4eb9 0006 4f44            jsr        vsl_ends
[0005b576] 41d7                      lea.l      (a7),a0
[0005b578] 4241                      clr.w      d1
[0005b57a] 2254                      movea.l    (a4),a1
[0005b57c] 3029 0010                 move.w     16(a1),d0
[0005b580] 4eb9 0006 3f60            jsr        vs_clip
[0005b586] 4a43                      tst.w      d3
[0005b588] 6f08                      ble.s      A_arrows_36
[0005b58a] 70fe                      moveq.l    #-2,d0
[0005b58c] c06a 0008                 and.w      8(a2),d0
[0005b590] 6006                      bra.s      A_arrows_37
A_arrows_36:
[0005b592] 70f6                      moveq.l    #-10,d0
[0005b594] c06a 0008                 and.w      8(a2),d0
A_arrows_37:
[0005b598] 504f                      addq.w     #8,a7
[0005b59a] 4cdf 347c                 movem.l    (a7)+,d2-d6/a2/a4-a5
[0005b59e] 4e75                      rts

A_select:
[0005b5a0] 48e7 2038                 movem.l    d2/a2-a4,-(a7)
[0005b5a4] 4fef ffe4                 lea.l      -28(a7),a7
[0005b5a8] 246f 0030                 movea.l    48(a7),a2
[0005b5ac] 47ef 0014                 lea.l      20(a7),a3
[0005b5b0] 49f9 0010 1f12            lea.l      ACSblk,a4
[0005b5b6] 302a 0016                 move.w     22(a2),d0
[0005b5ba] 6606                      bne.s      A_select_1
[0005b5bc] 322a 0018                 move.w     24(a2),d1
[0005b5c0] 6738                      beq.s      A_select_2
A_select_1:
[0005b5c2] 36aa 0012                 move.w     18(a2),(a3)
[0005b5c6] 376a 0014 0002            move.w     20(a2),2(a3)
[0005b5cc] 302a 0012                 move.w     18(a2),d0
[0005b5d0] d06a 0016                 add.w      22(a2),d0
[0005b5d4] 5340                      subq.w     #1,d0
[0005b5d6] 3740 0004                 move.w     d0,4(a3)
[0005b5da] 322a 0014                 move.w     20(a2),d1
[0005b5de] d26a 0018                 add.w      24(a2),d1
[0005b5e2] 5341                      subq.w     #1,d1
[0005b5e4] 3741 0006                 move.w     d1,6(a3)
[0005b5e8] 204b                      movea.l    a3,a0
[0005b5ea] 2254                      movea.l    (a4),a1
[0005b5ec] 3029 0010                 move.w     16(a1),d0
[0005b5f0] 7201                      moveq.l    #1,d1
[0005b5f2] 4eb9 0006 3f60            jsr        vs_clip
[0005b5f8] 6010                      bra.s      A_select_3
A_select_2:
[0005b5fa] 204b                      movea.l    a3,a0
[0005b5fc] 4241                      clr.w      d1
[0005b5fe] 2254                      movea.l    (a4),a1
[0005b600] 3029 0010                 move.w     16(a1),d0
[0005b604] 4eb9 0006 3f60            jsr        vs_clip
A_select_3:
[0005b60a] 302a 0006                 move.w     6(a2),d0
[0005b60e] 322a 0008                 move.w     8(a2),d1
[0005b612] b340                      eor.w      d1,d0
[0005b614] 4a40                      tst.w      d0
[0005b616] 6610                      bne.s      A_select_4
[0005b618] 2054                      movea.l    (a4),a0
[0005b61a] 3028 0010                 move.w     16(a0),d0
[0005b61e] 7201                      moveq.l    #1,d1
[0005b620] 4eb9 0006 4da0            jsr        vswr_mode
[0005b626] 600e                      bra.s      A_select_5
A_select_4:
[0005b628] 7203                      moveq.l    #3,d1
[0005b62a] 2054                      movea.l    (a4),a0
[0005b62c] 3028 0010                 move.w     16(a0),d0
[0005b630] 4eb9 0006 4da0            jsr        vswr_mode
A_select_5:
[0005b636] 7001                      moveq.l    #1,d0
[0005b638] c06a 0006                 and.w      6(a2),d0
[0005b63c] 660a                      bne.s      A_select_6
[0005b63e] 7201                      moveq.l    #1,d1
[0005b640] c26a 0008                 and.w      8(a2),d1
[0005b644] 6700 008e                 beq        A_select_7
A_select_6:
[0005b648] 7201                      moveq.l    #1,d1
[0005b64a] 2054                      movea.l    (a4),a0
[0005b64c] 3028 0010                 move.w     16(a0),d0
[0005b650] 4eb9 0006 4e9a            jsr        vsl_width
[0005b656] 7201                      moveq.l    #1,d1
[0005b658] 2054                      movea.l    (a4),a0
[0005b65a] 3028 0010                 move.w     16(a0),d0
[0005b65e] 4eb9 0006 4ef0            jsr        vsl_color
[0005b664] 4242                      clr.w      d2
[0005b666] 4241                      clr.w      d1
[0005b668] 2054                      movea.l    (a4),a0
[0005b66a] 3028 0010                 move.w     16(a0),d0
[0005b66e] 4eb9 0006 4f44            jsr        vsl_ends
[0005b674] 7201                      moveq.l    #1,d1
[0005b676] 2054                      movea.l    (a4),a0
[0005b678] 3028 0010                 move.w     16(a0),d0
[0005b67c] 4eb9 0006 4df4            jsr        vsl_type
[0005b682] 302a 000a                 move.w     10(a2),d0
[0005b686] 3f40 0010                 move.w     d0,16(a7)
[0005b68a] 3f40 000c                 move.w     d0,12(a7)
[0005b68e] 3e80                      move.w     d0,(a7)
[0005b690] 322a 000c                 move.w     12(a2),d1
[0005b694] 3f41 0012                 move.w     d1,18(a7)
[0005b698] 3f41 0006                 move.w     d1,6(a7)
[0005b69c] 3f41 0002                 move.w     d1,2(a7)
[0005b6a0] 302a 000a                 move.w     10(a2),d0
[0005b6a4] d06a 000e                 add.w      14(a2),d0
[0005b6a8] 5340                      subq.w     #1,d0
[0005b6aa] 3f40 0008                 move.w     d0,8(a7)
[0005b6ae] 3f40 0004                 move.w     d0,4(a7)
[0005b6b2] 322a 000c                 move.w     12(a2),d1
[0005b6b6] d26a 0010                 add.w      16(a2),d1
[0005b6ba] 5341                      subq.w     #1,d1
[0005b6bc] 3f41 000e                 move.w     d1,14(a7)
[0005b6c0] 3f41 000a                 move.w     d1,10(a7)
[0005b6c4] 41d7                      lea.l      (a7),a0
[0005b6c6] 2254                      movea.l    (a4),a1
[0005b6c8] 3029 0010                 move.w     16(a1),d0
[0005b6cc] 7205                      moveq.l    #5,d1
[0005b6ce] 4eb9 0006 4010            jsr        v_pline
A_select_7:
[0005b6d4] 204b                      movea.l    a3,a0
[0005b6d6] 4241                      clr.w      d1
[0005b6d8] 2254                      movea.l    (a4),a1
[0005b6da] 3029 0010                 move.w     16(a1),d0
[0005b6de] 4eb9 0006 3f60            jsr        vs_clip
[0005b6e4] 70fe                      moveq.l    #-2,d0
[0005b6e6] c06a 0008                 and.w      8(a2),d0
[0005b6ea] 4fef 001c                 lea.l      28(a7),a7
[0005b6ee] 4cdf 1c04                 movem.l    (a7)+,d2/a2-a4
[0005b6f2] 4e75                      rts

		.data

quer:
[000d4cd6]                           dc.b $00
[000d4cd7]                           dc.b $00
[000d4cd8]                           dc.w $ffff
[000d4cda]                           dc.b $00
[000d4cdb]                           dc.b $00
[000d4cdc]                           dc.w $ffff
[000d4cde]                           dc.b $00
[000d4cdf]                           dc.b $00
[000d4ce0]                           dc.w $ffff
[000d4ce2]                           dc.b $00
[000d4ce3]                           dc.b $00
[000d4ce4]                           dc.w $ffff
[000d4ce6]                           dc.b $00
[000d4ce7]                           dc.b $00
[000d4ce8]                           dc.w $ffff
[000d4cea]                           dc.b $00
[000d4ceb]                           dc.b $00
[000d4cec]                           dc.w $ffff
[000d4cee]                           dc.b $00
[000d4cef]                           dc.b $00
[000d4cf0]                           dc.w $ffff
[000d4cf2]                           dc.b $00
[000d4cf3]                           dc.b $00
[000d4cf4]                           dc.w $ffff
quer2:
[000d4cf6]                           dc.b $00
[000d4cf7]                           dc.b $00
[000d4cf8]                           dc.w $ffff
[000d4cfa]                           dc.b $00
[000d4cfb]                           dc.b $00
[000d4cfc]                           dc.b $00
[000d4cfd]                           dc.b $00
[000d4cfe]                           dc.w $ffff
[000d4d00]                           dc.b $00
[000d4d01]                           dc.b $00
[000d4d02]                           dc.b $00
[000d4d03]                           dc.b $00
[000d4d04]                           dc.w $ffff
[000d4d06]                           dc.b $00
[000d4d07]                           dc.b $00
[000d4d08]                           dc.b $00
[000d4d09]                           dc.b $00
[000d4d0a]                           dc.w $ffff
[000d4d0c]                           dc.b $00
[000d4d0d]                           dc.b $00
[000d4d0e]                           dc.b $00
[000d4d0f]                           dc.b $00
[000d4d10]                           dc.w $ffff
[000d4d12]                           dc.b $00
[000d4d13]                           dc.b $00
[000d4d14]                           dc.b $00
[000d4d15]                           dc.b $00
quer3:
[000d4d16]                           dc.b $00
[000d4d17]                           dc.b $00
[000d4d18]                           dc.b $00
[000d4d19]                           dc.b $00
[000d4d1a]                           dc.w $ffff
[000d4d1c]                           dc.w $ffff
[000d4d1e]                           dc.b $00
[000d4d1f]                           dc.b $00
[000d4d20]                           dc.b $00
[000d4d21]                           dc.b $00
[000d4d22]                           dc.w $ffff
[000d4d24]                           dc.w $ffff
[000d4d26]                           dc.b $00
[000d4d27]                           dc.b $00
[000d4d28]                           dc.b $00
[000d4d29]                           dc.b $00
[000d4d2a]                           dc.w $ffff
[000d4d2c]                           dc.w $ffff
[000d4d2e]                           dc.b $00
[000d4d2f]                           dc.b $00
[000d4d30]                           dc.b $00
[000d4d31]                           dc.b $00
[000d4d32]                           dc.w $ffff
[000d4d34]                           dc.w $ffff
senk:
[000d4d36]                           dc.b 'UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU'
senk2:
[000d4d56]                           dc.b 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'
senk3:
[000d4d76]                           dc.b '33333333333333333333333333333333',0
[000d4d97]                           dc.b $0d
[000d4d98]                           dc.w $4cd6
[000d4d9a] 000d4cd6                  dc.l quer
[000d4d9e] 000d4cf6                  dc.l quer2
[000d4da2] 000d4d16                  dc.l quer3
[000d4da6] 000d4d36                  dc.l senk
[000d4daa] 000d4d56                  dc.l senk2
[000d4dae] 000d4d76                  dc.l senk3
[000d4db2] 000d4cd6                  dc.l quer
[000d4db6] 000d4cd6                  dc.l quer
[000d4dba] 000d4cd6                  dc.l quer
[000d4dbe] 000d4cd6                  dc.l quer
[000d4dc2] 000d4cd6                  dc.l quer
[000d4dc6] 000d4cd6                  dc.l quer
[000d4dca] 000d4cd6                  dc.l quer
[000d4dce] 000d4cd6                  dc.l quer
[000d4dd2] 000d4cd6                  dc.l quer
[000d4dd6] 000d4cd6                  dc.l quer
[000d4dda] 000d4cd6                  dc.l quer
[000d4dde] 000d4cd6                  dc.l quer
[000d4de2] 000d4cd6                  dc.l quer
[000d4de6] 000d4cd6                  dc.l quer
[000d4dea] 000d4cd6                  dc.l quer
[000d4dee] 000d4cd6                  dc.l quer
[000d4df2] 000d4cd6                  dc.l quer
[000d4df6] 000d4cd6                  dc.l quer
[000d4dfa] 000d4cd6                  dc.l quer
[000d4dfe] 000d4cd6                  dc.l quer
[000d4e02] 000d4cd6                  dc.l quer
[000d4e06] 000d4cd6                  dc.l quer
[000d4e0a] 000d4cd6                  dc.l quer
[000d4e0e] 000d4cd6                  dc.l quer
[000d4e12] 000d4cd6                  dc.l quer
