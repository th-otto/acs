prot_texte:
[00014b90] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[00014b94] 554f                      subq.w     #2,a7
[00014b96] 2448                      movea.l    a0,a2
[00014b98] 2649                      movea.l    a1,a3
[00014b9a] 262a 000e                 move.l     14(a2),d3
[00014b9e] e48b                      lsr.l      #2,d3
[00014ba0] 4a43                      tst.w      d3
[00014ba2] 6f00 00bc                 ble        $00014C60
[00014ba6] 41ea 0016                 lea.l      22(a2),a0
[00014baa] 4eb9 0001 800e            jsr        $0001800E
[00014bb0] 246a 0004                 movea.l    4(a2),a2
[00014bb4] 204b                      movea.l    a3,a0
[00014bb6] 4eb9 0001 65f6            jsr        $000165F6
[00014bbc] 422f 0001                 clr.b      1(a7)
[00014bc0] 4244                      clr.w      d4
[00014bc2] 49f9 0009 7ecc            lea.l      $00097ECC,a4
[00014bc8] 6000 0086                 bra        $00014C50
[00014bcc] 3004                      move.w     d4,d0
[00014bce] 48c0                      ext.l      d0
[00014bd0] e588                      lsl.l      #2,d0
[00014bd2] 2c72 0800                 movea.l    0(a2,d0.l),a6
[00014bd6] 41ee 0016                 lea.l      22(a6),a0
[00014bda] 4eb9 0001 8066            jsr        $00018066
[00014be0] 486e 0016                 pea.l      22(a6)
[00014be4] 224c                      movea.l    a4,a1
[00014be6] 41f9 000f b02a            lea.l      $000FB02A,a0
[00014bec] 4eb9 0007 5680            jsr        $00075680
[00014bf2] 584f                      addq.w     #4,a7
[00014bf4] 41f9 000f b02a            lea.l      $000FB02A,a0
[00014bfa] 4eb9 0001 65f6            jsr        $000165F6
[00014c00] 2c6e 0004                 movea.l    4(a6),a6
[00014c04] 6024                      bra.s      $00014C2A
[00014c06] 1e95                      move.b     (a5),(a7)
[00014c08] 4215                      clr.b      (a5)
[00014c0a] 204e                      movea.l    a6,a0
[00014c0c] 4eb9 0001 65f6            jsr        $000165F6
[00014c12] 41ec 0008                 lea.l      8(a4),a0
[00014c16] 4eb9 0001 65f6            jsr        $000165F6
[00014c1c] 41d7                      lea.l      (a7),a0
[00014c1e] 4eb9 0001 65f6            jsr        $000165F6
[00014c24] 1a97                      move.b     (a7),(a5)
[00014c26] 4ded 0001                 lea.l      1(a5),a6
[00014c2a] 43ec 0007                 lea.l      7(a4),a1
[00014c2e] 204e                      movea.l    a6,a0
[00014c30] 4eb9 0007 6a34            jsr        $00076A34
[00014c36] 2a48                      movea.l    a0,a5
[00014c38] 200d                      move.l     a5,d0
[00014c3a] 66ca                      bne.s      $00014C06
[00014c3c] 204e                      movea.l    a6,a0
[00014c3e] 4eb9 0001 65f6            jsr        $000165F6
[00014c44] 41ec 000a                 lea.l      10(a4),a0
[00014c48] 4eb9 0001 65f6            jsr        $000165F6
[00014c4e] 5244                      addq.w     #1,d4
[00014c50] b644                      cmp.w      d4,d3
[00014c52] 6e00 ff78                 bgt        $00014BCC
[00014c56] 41ec 000e                 lea.l      14(a4),a0
[00014c5a] 4eb9 0001 65f6            jsr        $000165F6
[00014c60] 544f                      addq.w     #2,a7
[00014c62] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00014c66] 4e75                      rts
prot_clickdrag:
[00014c68] 48e7 1e3e                 movem.l    d3-d6/a2-a6,-(a7)
[00014c6c] 4fef fee8                 lea.l      -280(a7),a7
[00014c70] 2f48 0114                 move.l     a0,276(a7)
[00014c74] 2628 000e                 move.l     14(a0),d3
[00014c78] e48b                      lsr.l      #2,d3
[00014c7a] 4a43                      tst.w      d3
[00014c7c] 6f00 01d2                 ble        $00014E50
[00014c80] 41e8 0016                 lea.l      22(a0),a0
[00014c84] 4eb9 0001 800e            jsr        $0001800E
[00014c8a] 206f 0114                 movea.l    276(a7),a0
[00014c8e] 41e8 0016                 lea.l      22(a0),a0
[00014c92] 4eb9 0001 65f6            jsr        $000165F6
[00014c98] 41f9 0009 7edf            lea.l      $00097EDF,a0
[00014c9e] 4eb9 0001 65f6            jsr        $000165F6
[00014ca4] 206f 0114                 movea.l    276(a7),a0
[00014ca8] 2f68 0004 0110            move.l     4(a0),272(a7)
[00014cae] 4244                      clr.w      d4
[00014cb0] 6000 018c                 bra        $00014E3E
[00014cb4] 3004                      move.w     d4,d0
[00014cb6] 48c0                      ext.l      d0
[00014cb8] e588                      lsl.l      #2,d0
[00014cba] 206f 0110                 movea.l    272(a7),a0
[00014cbe] 2c70 0800                 movea.l    0(a0,d0.l),a6
[00014cc2] 41ee 0016                 lea.l      22(a6),a0
[00014cc6] 4eb9 0001 8066            jsr        $00018066
[00014ccc] 4217                      clr.b      (a7)
[00014cce] 302e 0038                 move.w     56(a6),d0
[00014cd2] c07c 0100                 and.w      #$0100,d0
[00014cd6] 670e                      beq.s      $00014CE6
[00014cd8] 43f9 0009 7efa            lea.l      $00097EFA,a1
[00014cde] 41d7                      lea.l      (a7),a0
[00014ce0] 4eb9 0007 6886            jsr        $00076886
[00014ce6] 302e 0038                 move.w     56(a6),d0
[00014cea] c07c 0200                 and.w      #$0200,d0
[00014cee] 670e                      beq.s      $00014CFE
[00014cf0] 43f9 0009 7f00            lea.l      $00097F00,a1
[00014cf6] 41d7                      lea.l      (a7),a0
[00014cf8] 4eb9 0007 6886            jsr        $00076886
[00014cfe] 302e 0038                 move.w     56(a6),d0
[00014d02] c07c 0400                 and.w      #$0400,d0
[00014d06] 671a                      beq.s      $00014D22
[00014d08] 322e 0038                 move.w     56(a6),d1
[00014d0c] c27c 0100                 and.w      #$0100,d1
[00014d10] 6710                      beq.s      $00014D22
[00014d12] 43f9 0009 7f08            lea.l      $00097F08,a1
[00014d18] 41d7                      lea.l      (a7),a0
[00014d1a] 4eb9 0007 6886            jsr        $00076886
[00014d20] 600e                      bra.s      $00014D30
[00014d22] 43f9 0009 7f0e            lea.l      $00097F0E,a1
[00014d28] 41d7                      lea.l      (a7),a0
[00014d2a] 4eb9 0007 6886            jsr        $00076886
[00014d30] 4857                      pea.l      (a7)
[00014d32] 3f2e 0036                 move.w     54(a6),-(a7)
[00014d36] 486e 0016                 pea.l      22(a6)
[00014d3a] 43f9 0009 7f15            lea.l      $00097F15,a1
[00014d40] 41f9 000f b02a            lea.l      $000FB02A,a0
[00014d46] 4eb9 0007 5680            jsr        $00075680
[00014d4c] 4fef 000a                 lea.l      10(a7),a7
[00014d50] 41f9 000f b02a            lea.l      $000FB02A,a0
[00014d56] 4eb9 0001 65f6            jsr        $000165F6
[00014d5c] 202e 000e                 move.l     14(a6),d0
[00014d60] 7238                      moveq.l    #56,d1
[00014d62] 4eb9 0007 769e            jsr        $0007769E
[00014d68] 2a00                      move.l     d0,d5
[00014d6a] 2c6e 0004                 movea.l    4(a6),a6
[00014d6e] 4246                      clr.w      d6
[00014d70] 6000 00b8                 bra        $00014E2A
[00014d74] 47f9 0009 7ed2            lea.l      $00097ED2,a3
[00014d7a] 284b                      movea.l    a3,a4
[00014d7c] 244c                      movea.l    a4,a2
[00014d7e] 422f 0100                 clr.b      256(a7)
[00014d82] 2016                      move.l     (a6),d0
[00014d84] 6706                      beq.s      $00014D8C
[00014d86] 2440                      movea.l    d0,a2
[00014d88] 45ea 0016                 lea.l      22(a2),a2
[00014d8c] 202e 0020                 move.l     32(a6),d0
[00014d90] 6706                      beq.s      $00014D98
[00014d92] 2840                      movea.l    d0,a4
[00014d94] 49ec 0016                 lea.l      22(a4),a4
[00014d98] 202e 0024                 move.l     36(a6),d0
[00014d9c] 6706                      beq.s      $00014DA4
[00014d9e] 2640                      movea.l    d0,a3
[00014da0] 47eb 0016                 lea.l      22(a3),a3
[00014da4] 302e 002a                 move.w     42(a6),d0
[00014da8] 673c                      beq.s      $00014DE6
[00014daa] 4eb9 0003 19b0            jsr        $000319B0
[00014db0] 2a48                      movea.l    a0,a5
[00014db2] 224d                      movea.l    a5,a1
[00014db4] 41ef 0100                 lea.l      256(a7),a0
[00014db8] 4eb9 0007 6950            jsr        $00076950
[00014dbe] 2a48                      movea.l    a0,a5
[00014dc0] 6020                      bra.s      $00014DE2
[00014dc2] 0c15 0007                 cmpi.b     #$07,(a5)
[00014dc6] 6604                      bne.s      $00014DCC
[00014dc8] 1abc 0061                 move.b     #$61,(a5)
[00014dcc] 0c15 005e                 cmpi.b     #$5E,(a5)
[00014dd0] 6604                      bne.s      $00014DD6
[00014dd2] 1abc 0063                 move.b     #$63,(a5)
[00014dd6] 0c15 0001                 cmpi.b     #$01,(a5)
[00014dda] 6604                      bne.s      $00014DE0
[00014ddc] 1abc 0073                 move.b     #$73,(a5)
[00014de0] 524d                      addq.w     #1,a5
[00014de2] 1015                      move.b     (a5),d0
[00014de4] 66dc                      bne.s      $00014DC2
[00014de6] 1012                      move.b     (a2),d0
[00014de8] 660e                      bne.s      $00014DF8
[00014dea] 122f 0100                 move.b     256(a7),d1
[00014dee] 6608                      bne.s      $00014DF8
[00014df0] 1414                      move.b     (a4),d2
[00014df2] 6604                      bne.s      $00014DF8
[00014df4] 1013                      move.b     (a3),d0
[00014df6] 672c                      beq.s      $00014E24
[00014df8] 2f0a                      move.l     a2,-(a7)
[00014dfa] 2f0b                      move.l     a3,-(a7)
[00014dfc] 2f0c                      move.l     a4,-(a7)
[00014dfe] 486f 010c                 pea.l      268(a7)
[00014e02] 43f9 0009 7fea            lea.l      $00097FEA,a1
[00014e08] 41f9 000f b02a            lea.l      $000FB02A,a0
[00014e0e] 4eb9 0007 5680            jsr        $00075680
[00014e14] 4fef 0010                 lea.l      16(a7),a7
[00014e18] 41f9 000f b02a            lea.l      $000FB02A,a0
[00014e1e] 4eb9 0001 65f6            jsr        $000165F6
[00014e24] 4dee 0038                 lea.l      56(a6),a6
[00014e28] 5246                      addq.w     #1,d6
[00014e2a] ba46                      cmp.w      d6,d5
[00014e2c] 6e00 ff46                 bgt        $00014D74
[00014e30] 41f9 0009 7ed7            lea.l      $00097ED7,a0
[00014e36] 4eb9 0001 65f6            jsr        $000165F6
[00014e3c] 5244                      addq.w     #1,d4
[00014e3e] b644                      cmp.w      d4,d3
[00014e40] 6e00 fe72                 bgt        $00014CB4
[00014e44] 41f9 0009 7eda            lea.l      $00097EDA,a0
[00014e4a] 4eb9 0001 65f6            jsr        $000165F6
[00014e50] 4fef 0118                 lea.l      280(a7),a7
[00014e54] 4cdf 7c78                 movem.l    (a7)+,d3-d6/a2-a6
[00014e58] 4e75                      rts
prot_labellist:
[00014e5a] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00014e5e] 2648                      movea.l    a0,a3
[00014e60] 45f9 0009 7ecc            lea.l      $00097ECC,a2
[00014e66] 41ea 0137                 lea.l      311(a2),a0
[00014e6a] 4eb9 0001 800e            jsr        $0001800E
[00014e70] 41ea 0137                 lea.l      311(a2),a0
[00014e74] 4eb9 0001 8066            jsr        $00018066
[00014e7a] 41ea 013b                 lea.l      315(a2),a0
[00014e7e] 4eb9 0001 65f6            jsr        $000165F6
[00014e84] 7600                      moveq.l    #0,d3
[00014e86] 2803                      move.l     d3,d4
[00014e88] 266b 0010                 movea.l    16(a3),a3
[00014e8c] 49f9 000f b02a            lea.l      $000FB02A,a4
[00014e92] 6048                      bra.s      $00014EDC
[00014e94] 7001                      moveq.l    #1,d0
[00014e96] c084                      and.l      d4,d0
[00014e98] 670c                      beq.s      $00014EA6
[00014e9a] 41ea 0032                 lea.l      50(a2),a0
[00014e9e] 4eb9 0001 65f6            jsr        $000165F6
[00014ea4] 600a                      bra.s      $00014EB0
[00014ea6] 41ea 000b                 lea.l      11(a2),a0
[00014eaa] 4eb9 0001 65f6            jsr        $000165F6
[00014eb0] 2f2b 000e                 move.l     14(a3),-(a7)
[00014eb4] 3f2b 0036                 move.w     54(a3),-(a7)
[00014eb8] 486b 0016                 pea.l      22(a3)
[00014ebc] 43ea 0216                 lea.l      534(a2),a1
[00014ec0] 204c                      movea.l    a4,a0
[00014ec2] 4eb9 0007 5680            jsr        $00075680
[00014ec8] 4fef 000a                 lea.l      10(a7),a7
[00014ecc] 204c                      movea.l    a4,a0
[00014ece] 4eb9 0001 65f6            jsr        $000165F6
[00014ed4] d6ab 000e                 add.l      14(a3),d3
[00014ed8] 5284                      addq.l     #1,d4
[00014eda] 2653                      movea.l    (a3),a3
[00014edc] 200b                      move.l     a3,d0
[00014ede] 66b4                      bne.s      $00014E94
[00014ee0] 41ea 0226                 lea.l      550(a2),a0
[00014ee4] 4eb9 0001 65f6            jsr        $000165F6
[00014eea] 2f03                      move.l     d3,-(a7)
[00014eec] 2f04                      move.l     d4,-(a7)
[00014eee] 43ea 0282                 lea.l      642(a2),a1
[00014ef2] 204c                      movea.l    a4,a0
[00014ef4] 4eb9 0007 5680            jsr        $00075680
[00014efa] 504f                      addq.w     #8,a7
[00014efc] 204c                      movea.l    a4,a0
[00014efe] 4eb9 0001 65f6            jsr        $000165F6
[00014f04] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00014f08] 4e75                      rts
protocol:
[00014f0a] 48e7 102c                 movem.l    d3/a2/a4-a5,-(a7)
[00014f0e] 4fef ff7c                 lea.l      -132(a7),a7
[00014f12] 2448                      movea.l    a0,a2
[00014f14] 226a 0008                 movea.l    8(a2),a1
[00014f18] 41d7                      lea.l      (a7),a0
[00014f1a] 4eb9 0007 6950            jsr        $00076950
[00014f20] 702e                      moveq.l    #46,d0
[00014f22] 41d7                      lea.l      (a7),a0
[00014f24] 4eb9 0007 68e2            jsr        $000768E2
[00014f2a] 2a48                      movea.l    a0,a5
[00014f2c] 49f9 0009 7ecc            lea.l      $00097ECC,a4
[00014f32] 43ec 02b1                 lea.l      689(a4),a1
[00014f36] 204d                      movea.l    a5,a0
[00014f38] 4eb9 0007 6950            jsr        $00076950
[00014f3e] 4240                      clr.w      d0
[00014f40] 41d7                      lea.l      (a7),a0
[00014f42] 4eb9 0007 29be            jsr        $000729BE
[00014f48] 2600                      move.l     d0,d3
[00014f4a] 4a80                      tst.l      d0
[00014f4c] 6a20                      bpl.s      $00014F6E
[00014f4e] 206a 0008                 movea.l    8(a2),a0
[00014f52] 705c                      moveq.l    #92,d0
[00014f54] 4eb9 0007 68e2            jsr        $000768E2
[00014f5a] 5248                      addq.w     #1,a0
[00014f5c] 7009                      moveq.l    #9,d0
[00014f5e] 2279 0010 1f12            movea.l    ACSblk,a1
[00014f64] 2269 03d6                 movea.l    982(a1),a1
[00014f68] 4e91                      jsr        (a1)
[00014f6a] 6000 00be                 bra        $0001502A
[00014f6e] 4215                      clr.b      (a5)
[00014f70] 41d7                      lea.l      (a7),a0
[00014f72] 4eb9 0001 7ec6            jsr        $00017EC6
[00014f78] 41ec 02b6                 lea.l      694(a4),a0
[00014f7c] 4eb9 0001 7faa            jsr        $00017FAA
[00014f82] 3003                      move.w     d3,d0
[00014f84] 4eb9 0001 653e            jsr        $0001653E
[00014f8a] 4eb9 0007 5162            jsr        $00075162
[00014f90] 4a40                      tst.w      d0
[00014f92] 6712                      beq.s      $00014FA6
[00014f94] 91c8                      suba.l     a0,a0
[00014f96] 700a                      moveq.l    #10,d0
[00014f98] 2279 0010 1f12            movea.l    ACSblk,a1
[00014f9e] 2269 03d6                 movea.l    982(a1),a1
[00014fa2] 4e91                      jsr        (a1)
[00014fa4] 6076                      bra.s      $0001501C
[00014fa6] 91c8                      suba.l     a0,a0
[00014fa8] 4eb9 0007 539e            jsr        $0007539E
[00014fae] 2f40 0080                 move.l     d0,128(a7)
[00014fb2] 4bf9 000f b02a            lea.l      $000FB02A,a5
[00014fb8] 2f2a 0008                 move.l     8(a2),-(a7)
[00014fbc] 41ef 0084                 lea.l      132(a7),a0
[00014fc0] 4eb9 0007 531e            jsr        $0007531E
[00014fc6] 2f08                      move.l     a0,-(a7)
[00014fc8] 43f9 0009 82c6            lea.l      $000982C6,a1
[00014fce] 204d                      movea.l    a5,a0
[00014fd0] 4eb9 0007 5680            jsr        $00075680
[00014fd6] 504f                      addq.w     #8,a7
[00014fd8] 204d                      movea.l    a5,a0
[00014fda] 4eb9 0001 65f6            jsr        $000165F6
[00014fe0] 206a 001c                 movea.l    28(a2),a0
[00014fe4] 6100 fc82                 bsr        $00014C68
[00014fe8] 206a 0020                 movea.l    32(a2),a0
[00014fec] 6100 fc7a                 bsr        $00014C68
[00014ff0] 206a 0018                 movea.l    24(a2),a0
[00014ff4] 6100 fc72                 bsr        $00014C68
[00014ff8] 43ec 02c0                 lea.l      704(a4),a1
[00014ffc] 206a 0034                 movea.l    52(a2),a0
[00015000] 6100 fb8e                 bsr        $00014B90
[00015004] 43ec 02d5                 lea.l      725(a4),a1
[00015008] 206a 0024                 movea.l    36(a2),a0
[0001500c] 6100 fb82                 bsr        $00014B90
[00015010] 204a                      movea.l    a2,a0
[00015012] 6100 fe46                 bsr        $00014E5A
[00015016] 4eb9 0001 660a            jsr        $0001660A
[0001501c] 4eb9 0001 7f8a            jsr        $00017F8A
[00015022] 3003                      move.w     d3,d0
[00015024] 4eb9 0007 29ae            jsr        $000729AE
[0001502a] 4fef 0084                 lea.l      132(a7),a7
[0001502e] 4cdf 3408                 movem.l    (a7)+,d3/a2/a4-a5
[00015032] 4e75                      rts
