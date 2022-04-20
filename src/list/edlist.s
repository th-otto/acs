find_entry:
[00031a5c] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00031a60] 2649                      movea.l    a1,a3
[00031a62] 2628 000e                 move.l     14(a0),d3
[00031a66] e48b                      lsr.l      #2,d3
[00031a68] 2468 0004                 movea.l    4(a0),a2
[00031a6c] 601a                      bra.s      $00031A88
[00031a6e] 2252                      movea.l    (a2),a1
[00031a70] 43e9 0016                 lea.l      22(a1),a1
[00031a74] 204b                      movea.l    a3,a0
[00031a76] 4eb9 0007 68fe            jsr        $000768FE
[00031a7c] 4a40                      tst.w      d0
[00031a7e] 6604                      bne.s      $00031A84
[00031a80] 2052                      movea.l    (a2),a0
[00031a82] 600a                      bra.s      $00031A8E
[00031a84] 584a                      addq.w     #4,a2
[00031a86] 5343                      subq.w     #1,d3
[00031a88] 4a43                      tst.w      d3
[00031a8a] 6ee2                      bgt.s      $00031A6E
[00031a8c] 91c8                      suba.l     a0,a0
[00031a8e] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00031a92] 4e75                      rts
add_entry:
[00031a94] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00031a98] 2448                      movea.l    a0,a2
[00031a9a] 2849                      movea.l    a1,a4
[00031a9c] 7004                      moveq.l    #4,d0
[00031a9e] 4eb9 0001 62aa            jsr        $000162AA
[00031aa4] 4a40                      tst.w      d0
[00031aa6] 6704                      beq.s      $00031AAC
[00031aa8] 70ff                      moveq.l    #-1,d0
[00031aaa] 604e                      bra.s      $00031AFA
[00031aac] 262a 000e                 move.l     14(a2),d3
[00031ab0] e48b                      lsr.l      #2,d3
[00031ab2] 5343                      subq.w     #1,d3
[00031ab4] 58aa 000e                 addq.l     #4,14(a2)
[00031ab8] 266a 0004                 movea.l    4(a2),a3
[00031abc] 3003                      move.w     d3,d0
[00031abe] 48c0                      ext.l      d0
[00031ac0] e588                      lsl.l      #2,d0
[00031ac2] d7c0                      adda.l     d0,a3
[00031ac4] 6008                      bra.s      $00031ACE
[00031ac6] 2753 0004                 move.l     (a3),4(a3)
[00031aca] 594b                      subq.w     #4,a3
[00031acc] 5343                      subq.w     #1,d3
[00031ace] 4a43                      tst.w      d3
[00031ad0] 6b14                      bmi.s      $00031AE6
[00031ad2] 2253                      movea.l    (a3),a1
[00031ad4] 43e9 0016                 lea.l      22(a1),a1
[00031ad8] 41ec 0016                 lea.l      22(a4),a0
[00031adc] 4eb9 0007 68fe            jsr        $000768FE
[00031ae2] 4a40                      tst.w      d0
[00031ae4] 6be0                      bmi.s      $00031AC6
[00031ae6] 274c 0004                 move.l     a4,4(a3)
[00031aea] 202a 0012                 move.l     18(a2),d0
[00031aee] 6708                      beq.s      $00031AF8
[00031af0] 2040                      movea.l    d0,a0
[00031af2] 0068 0020 0056            ori.w      #$0020,86(a0)
[00031af8] 4240                      clr.w      d0
[00031afa] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00031afe] 4e75                      rts
del_entry:
[00031b00] 2f03                      move.l     d3,-(a7)
[00031b02] 2f0a                      move.l     a2,-(a7)
[00031b04] 2028 000e                 move.l     14(a0),d0
[00031b08] e488                      lsr.l      #2,d0
[00031b0a] 5340                      subq.w     #1,d0
[00031b0c] 2468 0004                 movea.l    4(a0),a2
[00031b10] 4241                      clr.w      d1
[00031b12] 6002                      bra.s      $00031B16
[00031b14] 5241                      addq.w     #1,d1
[00031b16] b041                      cmp.w      d1,d0
[00031b18] 6d0c                      blt.s      $00031B26
[00031b1a] 3401                      move.w     d1,d2
[00031b1c] 48c2                      ext.l      d2
[00031b1e] e58a                      lsl.l      #2,d2
[00031b20] b3f2 2800                 cmpa.l     0(a2,d2.l),a1
[00031b24] 66ee                      bne.s      $00031B14
[00031b26] b041                      cmp.w      d1,d0
[00031b28] 6d2c                      blt.s      $00031B56
[00031b2a] 6014                      bra.s      $00031B40
[00031b2c] 3401                      move.w     d1,d2
[00031b2e] 48c2                      ext.l      d2
[00031b30] e58a                      lsl.l      #2,d2
[00031b32] 3601                      move.w     d1,d3
[00031b34] 48c3                      ext.l      d3
[00031b36] e58b                      lsl.l      #2,d3
[00031b38] 25b2 2804 3800            move.l     4(a2,d2.l),0(a2,d3.l)
[00031b3e] 5241                      addq.w     #1,d1
[00031b40] b041                      cmp.w      d1,d0
[00031b42] 6ee8                      bgt.s      $00031B2C
[00031b44] 59a8 000e                 subq.l     #4,14(a0)
[00031b48] 2028 0012                 move.l     18(a0),d0
[00031b4c] 6708                      beq.s      $00031B56
[00031b4e] 2240                      movea.l    d0,a1
[00031b50] 0069 0020 0056            ori.w      #$0020,86(a1)
[00031b56] 245f                      movea.l    (a7)+,a2
[00031b58] 261f                      move.l     (a7)+,d3
[00031b5a] 4e75                      rts
delete:
[00031b5c] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00031b60] 2448                      movea.l    a0,a2
[00031b62] 2279 0010 1f12            movea.l    ACSblk,a1
[00031b68] b1e9 0240                 cmpa.l     576(a1),a0
[00031b6c] 6654                      bne.s      $00031BC2
[00031b6e] 2650                      movea.l    (a0),a3
[00031b70] 4269 0248                 clr.w      584(a1)
[00031b74] 6042                      bra.s      $00031BB8
[00031b76] 3203                      move.w     d3,d1
[00031b78] 48c1                      ext.l      d1
[00031b7a] 2001                      move.l     d1,d0
[00031b7c] d080                      add.l      d0,d0
[00031b7e] d081                      add.l      d1,d0
[00031b80] e788                      lsl.l      #3,d0
[00031b82] 206a 0014                 movea.l    20(a2),a0
[00031b86] 41f0 0818                 lea.l      24(a0,d0.l),a0
[00031b8a] 2868 000c                 movea.l    12(a0),a4
[00031b8e] 342c 0038                 move.w     56(a4),d2
[00031b92] c47c 0100                 and.w      #$0100,d2
[00031b96] 6720                      beq.s      $00031BB8
[00031b98] 204a                      movea.l    a2,a0
[00031b9a] 3003                      move.w     d3,d0
[00031b9c] 4eb9 0004 492a            jsr        $0004492A
[00031ba2] 026c feff 0038            andi.w     #$FEFF,56(a4)
[00031ba8] 224c                      movea.l    a4,a1
[00031baa] 2053                      movea.l    (a3),a0
[00031bac] 2a6b 001e                 movea.l    30(a3),a5
[00031bb0] 4e95                      jsr        (a5)
[00031bb2] 006a 0020 0056            ori.w      #$0020,86(a2)
[00031bb8] 4eb9 0004 484c            jsr        $0004484C
[00031bbe] 3600                      move.w     d0,d3
[00031bc0] 6eb4                      bgt.s      $00031B76
[00031bc2] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00031bc6] 4e75                      rts
li_changename:
[00031bc8] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00031bcc] 2079 0010 1f12            movea.l    ACSblk,a0
[00031bd2] 4268 0248                 clr.w      584(a0)
[00031bd6] 4eb9 0004 484c            jsr        $0004484C
[00031bdc] 3600                      move.w     d0,d3
[00031bde] 6f00 008c                 ble        $00031C6C
[00031be2] 48c0                      ext.l      d0
[00031be4] 2200                      move.l     d0,d1
[00031be6] d281                      add.l      d1,d1
[00031be8] d280                      add.l      d0,d1
[00031bea] e789                      lsl.l      #3,d1
[00031bec] 2079 0010 1f12            movea.l    ACSblk,a0
[00031bf2] 2268 0258                 movea.l    600(a0),a1
[00031bf6] 2069 0014                 movea.l    20(a1),a0
[00031bfa] 41f0 1818                 lea.l      24(a0,d1.l),a0
[00031bfe] 2651                      movea.l    (a1),a3
[00031c00] 2468 000c                 movea.l    12(a0),a2
[00031c04] 2f2b 0010                 move.l     16(a3),-(a7)
[00031c08] 2053                      movea.l    (a3),a0
[00031c0a] 224a                      movea.l    a2,a1
[00031c0c] 4eb9 0001 46c2            jsr        $000146C2
[00031c12] 584f                      addq.w     #4,a7
[00031c14] 4a40                      tst.w      d0
[00031c16] 6754                      beq.s      $00031C6C
[00031c18] 2f2b 0010                 move.l     16(a3),-(a7)
[00031c1c] 486a 0016                 pea.l      22(a2)
[00031c20] 224a                      movea.l    a2,a1
[00031c22] 2053                      movea.l    (a3),a0
[00031c24] 4eb9 0001 6448            jsr        $00016448
[00031c2a] 504f                      addq.w     #8,a7
[00031c2c] 4eb9 0004 4a26            jsr        $00044A26
[00031c32] 224a                      movea.l    a2,a1
[00031c34] 206b 0004                 movea.l    4(a3),a0
[00031c38] 6100 fec6                 bsr        $00031B00
[00031c3c] 224a                      movea.l    a2,a1
[00031c3e] 206b 0004                 movea.l    4(a3),a0
[00031c42] 6100 fe50                 bsr        $00031A94
[00031c46] 202b 0026                 move.l     38(a3),d0
[00031c4a] 670a                      beq.s      $00031C56
[00031c4c] 224a                      movea.l    a2,a1
[00031c4e] 2053                      movea.l    (a3),a0
[00031c50] 2840                      movea.l    d0,a4
[00031c52] 7002                      moveq.l    #2,d0
[00031c54] 4e94                      jsr        (a4)
[00031c56] 266a 0012                 movea.l    18(a2),a3
[00031c5a] 200b                      move.l     a3,d0
[00031c5c] 670e                      beq.s      $00031C6C
[00031c5e] 93c9                      suba.l     a1,a1
[00031c60] 303c 2710                 move.w     #$2710,d0
[00031c64] 204b                      movea.l    a3,a0
[00031c66] 246b 0004                 movea.l    4(a3),a2
[00031c6a] 4e92                      jsr        (a2)
[00031c6c] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00031c70] 4e75                      rts
li_setfree:
[00031c72] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00031c76] 2079 0010 1f12            movea.l    ACSblk,a0
[00031c7c] 2468 0258                 movea.l    600(a0),a2
[00031c80] 2652                      movea.l    (a2),a3
[00031c82] 4268 0248                 clr.w      584(a0)
[00031c86] 604e                      bra.s      $00031CD6
[00031c88] 3203                      move.w     d3,d1
[00031c8a] 48c1                      ext.l      d1
[00031c8c] 2001                      move.l     d1,d0
[00031c8e] d080                      add.l      d0,d0
[00031c90] d081                      add.l      d1,d0
[00031c92] e788                      lsl.l      #3,d0
[00031c94] 286a 0014                 movea.l    20(a2),a4
[00031c98] 49f4 0818                 lea.l      24(a4,d0.l),a4
[00031c9c] 206a 0014                 movea.l    20(a2),a0
[00031ca0] 0270 ffef 080a            andi.w     #$FFEF,10(a0,d0.l)
[00031ca6] 206c 000c                 movea.l    12(a4),a0
[00031caa] 3428 0038                 move.w     56(a0),d2
[00031cae] c47c 0100                 and.w      #$0100,d2
[00031cb2] 6618                      bne.s      $00031CCC
[00031cb4] 2253                      movea.l    (a3),a1
[00031cb6] 0069 0001 0006            ori.w      #$0001,6(a1)
[00031cbc] 5268 0036                 addq.w     #1,54(a0)
[00031cc0] 0068 0100 0038            ori.w      #$0100,56(a0)
[00031cc6] 006a 0020 0056            ori.w      #$0020,86(a2)
[00031ccc] 3003                      move.w     d3,d0
[00031cce] 204a                      movea.l    a2,a0
[00031cd0] 4eb9 0004 492a            jsr        $0004492A
[00031cd6] 4eb9 0004 484c            jsr        $0004484C
[00031cdc] 3600                      move.w     d0,d3
[00031cde] 6ea8                      bgt.s      $00031C88
[00031ce0] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00031ce4] 4e75                      rts
li_open:
[00031ce6] 2079 0010 1f12            movea.l    ACSblk,a0
[00031cec] 2068 0258                 movea.l    600(a0),a0
[00031cf0] 4eb9 0003 1cf8            jsr        $00031CF8
[00031cf6] 4e75                      rts
li_wopen:
[00031cf8] 3f03                      move.w     d3,-(a7)
[00031cfa] 2f0a                      move.l     a2,-(a7)
[00031cfc] 2448                      movea.l    a0,a2
[00031cfe] 2279 0010 1f12            movea.l    ACSblk,a1
[00031d04] 4269 0248                 clr.w      584(a1)
[00031d08] 6018                      bra.s      $00031D22
[00031d0a] 3003                      move.w     d3,d0
[00031d0c] 204a                      movea.l    a2,a0
[00031d0e] 4eb9 0003 2270            jsr        $00032270
[00031d14] 4a40                      tst.w      d0
[00031d16] 6714                      beq.s      $00031D2C
[00031d18] 3003                      move.w     d3,d0
[00031d1a] 204a                      movea.l    a2,a0
[00031d1c] 4eb9 0004 492a            jsr        $0004492A
[00031d22] 4eb9 0004 484c            jsr        $0004484C
[00031d28] 3600                      move.w     d0,d3
[00031d2a] 6ede                      bgt.s      $00031D0A
[00031d2c] 245f                      movea.l    (a7)+,a2
[00031d2e] 361f                      move.w     (a7)+,d3
[00031d30] 4e75                      rts
li_info:
[00031d32] 2079 0010 1f12            movea.l    ACSblk,a0
[00031d38] 2068 0258                 movea.l    600(a0),a0
[00031d3c] 4eb9 0003 1d44            jsr        $00031D44
[00031d42] 4e75                      rts
li_winfo:
[00031d44] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00031d48] 4fef ffde                 lea.l      -34(a7),a7
[00031d4c] 2f48 001e                 move.l     a0,30(a7)
[00031d50] 2650                      movea.l    (a0),a3
[00031d52] 2279 0010 1f12            movea.l    ACSblk,a1
[00031d58] 3029 0246                 move.w     582(a1),d0
[00031d5c] 6706                      beq.s      $00031D64
[00031d5e] b1e9 0240                 cmpa.l     576(a1),a0
[00031d62] 677c                      beq.s      $00031DE0
[00031d64] 41f9 000c 1734            lea.l      $000C1734,a0
[00031d6a] 2279 000c 173c            movea.l    $000C173C,a1
[00031d70] 4e91                      jsr        (a1)
[00031d72] 2848                      movea.l    a0,a4
[00031d74] 200c                      move.l     a4,d0
[00031d76] 6700 0152                 beq        $00031ECA
[00031d7a] 2253                      movea.l    (a3),a1
[00031d7c] 2269 0008                 movea.l    8(a1),a1
[00031d80] 206c 0014                 movea.l    20(a4),a0
[00031d84] 7007                      moveq.l    #7,d0
[00031d86] 4eb9 0004 afe0            jsr        $0004AFE0
[00031d8c] 226b 0004                 movea.l    4(a3),a1
[00031d90] 43e9 0016                 lea.l      22(a1),a1
[00031d94] 7006                      moveq.l    #6,d0
[00031d96] 206c 0014                 movea.l    20(a4),a0
[00031d9a] 4eb9 0004 afe0            jsr        $0004AFE0
[00031da0] 206b 0004                 movea.l    4(a3),a0
[00031da4] 2028 000e                 move.l     14(a0),d0
[00031da8] e488                      lsr.l      #2,d0
[00031daa] 2f00                      move.l     d0,-(a7)
[00031dac] 43f9 000c 199a            lea.l      $000C199A,a1
[00031db2] 41ef 0004                 lea.l      4(a7),a0
[00031db6] 4eb9 0007 5680            jsr        $00075680
[00031dbc] 584f                      addq.w     #4,a7
[00031dbe] 43d7                      lea.l      (a7),a1
[00031dc0] 7005                      moveq.l    #5,d0
[00031dc2] 206c 0014                 movea.l    20(a4),a0
[00031dc6] 4eb9 0004 afe0            jsr        $0004AFE0
[00031dcc] 204c                      movea.l    a4,a0
[00031dce] 4eb9 0005 1292            jsr        $00051292
[00031dd4] 204c                      movea.l    a4,a0
[00031dd6] 4eb9 0005 0330            jsr        $00050330
[00031ddc] 6000 00ec                 bra        $00031ECA
[00031de0] 2079 0010 1f12            movea.l    ACSblk,a0
[00031de6] 4268 0248                 clr.w      584(a0)
[00031dea] 6000 00d2                 bra        $00031EBE
[00031dee] 3203                      move.w     d3,d1
[00031df0] 48c1                      ext.l      d1
[00031df2] 2001                      move.l     d1,d0
[00031df4] d080                      add.l      d0,d0
[00031df6] d081                      add.l      d1,d0
[00031df8] e788                      lsl.l      #3,d0
[00031dfa] 206f 001e                 movea.l    30(a7),a0
[00031dfe] 2268 0014                 movea.l    20(a0),a1
[00031e02] 41f1 0818                 lea.l      24(a1,d0.l),a0
[00031e06] 2f48 001a                 move.l     a0,26(a7)
[00031e0a] 2468 000c                 movea.l    12(a0),a2
[00031e0e] 41f9 000c 1692            lea.l      $000C1692,a0
[00031e14] 2279 000c 169a            movea.l    $000C169A,a1
[00031e1a] 4e91                      jsr        (a1)
[00031e1c] 2848                      movea.l    a0,a4
[00031e1e] 200c                      move.l     a4,d0
[00031e20] 6700 009c                 beq        $00031EBE
[00031e24] 2253                      movea.l    (a3),a1
[00031e26] 2269 0008                 movea.l    8(a1),a1
[00031e2a] 206c 0014                 movea.l    20(a4),a0
[00031e2e] 7008                      moveq.l    #8,d0
[00031e30] 4eb9 0004 afe0            jsr        $0004AFE0
[00031e36] 226b 0004                 movea.l    4(a3),a1
[00031e3a] 43e9 0016                 lea.l      22(a1),a1
[00031e3e] 7009                      moveq.l    #9,d0
[00031e40] 206c 0014                 movea.l    20(a4),a0
[00031e44] 4eb9 0004 afe0            jsr        $0004AFE0
[00031e4a] 43ea 0016                 lea.l      22(a2),a1
[00031e4e] 700a                      moveq.l    #10,d0
[00031e50] 206c 0014                 movea.l    20(a4),a0
[00031e54] 4eb9 0004 afe0            jsr        $0004AFE0
[00031e5a] 2f2a 000e                 move.l     14(a2),-(a7)
[00031e5e] 43f9 000c 199a            lea.l      $000C199A,a1
[00031e64] 41ef 0004                 lea.l      4(a7),a0
[00031e68] 4eb9 0007 5680            jsr        $00075680
[00031e6e] 584f                      addq.w     #4,a7
[00031e70] 43d7                      lea.l      (a7),a1
[00031e72] 700b                      moveq.l    #11,d0
[00031e74] 206c 0014                 movea.l    20(a4),a0
[00031e78] 4eb9 0004 afe0            jsr        $0004AFE0
[00031e7e] 3f2a 0036                 move.w     54(a2),-(a7)
[00031e82] 43f9 000c 199e            lea.l      $000C199E,a1
[00031e88] 41ef 0002                 lea.l      2(a7),a0
[00031e8c] 4eb9 0007 5680            jsr        $00075680
[00031e92] 544f                      addq.w     #2,a7
[00031e94] 43d7                      lea.l      (a7),a1
[00031e96] 700d                      moveq.l    #13,d0
[00031e98] 206c 0014                 movea.l    20(a4),a0
[00031e9c] 4eb9 0004 afe0            jsr        $0004AFE0
[00031ea2] 204c                      movea.l    a4,a0
[00031ea4] 4eb9 0005 1292            jsr        $00051292
[00031eaa] 204c                      movea.l    a4,a0
[00031eac] 4eb9 0005 0330            jsr        $00050330
[00031eb2] 3003                      move.w     d3,d0
[00031eb4] 206f 001e                 movea.l    30(a7),a0
[00031eb8] 4eb9 0004 492a            jsr        $0004492A
[00031ebe] 4eb9 0004 484c            jsr        $0004484C
[00031ec4] 3600                      move.w     d0,d3
[00031ec6] 6e00 ff26                 bgt        $00031DEE
[00031eca] 4fef 0022                 lea.l      34(a7),a7
[00031ece] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00031ed2] 4e75                      rts
dragged:
[00031ed4] 2079 0010 1f12            movea.l    ACSblk,a0
[00031eda] 2068 0258                 movea.l    600(a0),a0
[00031ede] 4eb9 0003 1f9c            jsr        $00031F9C
[00031ee4] 4e75                      rts
generate:
[00031ee6] 48e7 003c                 movem.l    a2-a5,-(a7)
[00031eea] 594f                      subq.w     #4,a7
[00031eec] 2648                      movea.l    a0,a3
[00031eee] 2449                      movea.l    a1,a2
[00031ef0] 200a                      move.l     a2,d0
[00031ef2] 6768                      beq.s      $00031F5C
[00031ef4] 286b 0004                 movea.l    4(a3),a4
[00031ef8] 3239 0007 78f2            move.w     $000778F2,d1
[00031efe] 6712                      beq.s      $00031F12
[00031f00] 242c 000e                 move.l     14(a4),d2
[00031f04] e48a                      lsr.l      #2,d2
[00031f06] 5542                      subq.w     #2,d2
[00031f08] 6d08                      blt.s      $00031F12
[00031f0a] 4eb9 0001 1146            jsr        $00011146
[00031f10] 604a                      bra.s      $00031F5C
[00031f12] 224a                      movea.l    a2,a1
[00031f14] 2053                      movea.l    (a3),a0
[00031f16] 2a6b 001a                 movea.l    26(a3),a5
[00031f1a] 4e95                      jsr        (a5)
[00031f1c] 2a48                      movea.l    a0,a5
[00031f1e] 200d                      move.l     a5,d0
[00031f20] 6770                      beq.s      $00031F92
[00031f22] 43ea 0016                 lea.l      22(a2),a1
[00031f26] 41ed 0016                 lea.l      22(a5),a0
[00031f2a] 4eb9 0007 6950            jsr        $00076950
[00031f30] 4857                      pea.l      (a7)
[00031f32] 224d                      movea.l    a5,a1
[00031f34] 2053                      movea.l    (a3),a0
[00031f36] 4eb9 0001 6374            jsr        $00016374
[00031f3c] 584f                      addq.w     #4,a7
[00031f3e] 2f2b 0010                 move.l     16(a3),-(a7)
[00031f42] 224d                      movea.l    a5,a1
[00031f44] 2053                      movea.l    (a3),a0
[00031f46] 4eb9 0001 46c2            jsr        $000146C2
[00031f4c] 584f                      addq.w     #4,a7
[00031f4e] 4a40                      tst.w      d0
[00031f50] 660e                      bne.s      $00031F60
[00031f52] 224d                      movea.l    a5,a1
[00031f54] 2053                      movea.l    (a3),a0
[00031f56] 246b 001e                 movea.l    30(a3),a2
[00031f5a] 4e92                      jsr        (a2)
[00031f5c] 91c8                      suba.l     a0,a0
[00031f5e] 6034                      bra.s      $00031F94
[00031f60] 2f2b 0010                 move.l     16(a3),-(a7)
[00031f64] 486d 0016                 pea.l      22(a5)
[00031f68] 224d                      movea.l    a5,a1
[00031f6a] 2053                      movea.l    (a3),a0
[00031f6c] 4eb9 0001 6448            jsr        $00016448
[00031f72] 504f                      addq.w     #8,a7
[00031f74] 224d                      movea.l    a5,a1
[00031f76] 204c                      movea.l    a4,a0
[00031f78] 6100 fb1a                 bsr        $00031A94
[00031f7c] 202b 0026                 move.l     38(a3),d0
[00031f80] 670a                      beq.s      $00031F8C
[00031f82] 224d                      movea.l    a5,a1
[00031f84] 2053                      movea.l    (a3),a0
[00031f86] 2440                      movea.l    d0,a2
[00031f88] 7001                      moveq.l    #1,d0
[00031f8a] 4e92                      jsr        (a2)
[00031f8c] 006d 0100 0038            ori.w      #$0100,56(a5)
[00031f92] 204d                      movea.l    a5,a0
[00031f94] 584f                      addq.w     #4,a7
[00031f96] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00031f9a] 4e75                      rts
drag:
[00031f9c] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00031fa0] 594f                      subq.w     #4,a7
[00031fa2] 2e88                      move.l     a0,(a7)
[00031fa4] 2650                      movea.l    (a0),a3
[00031fa6] 41f9 0010 1f12            lea.l      ACSblk,a0
[00031fac] 2250                      movea.l    (a0),a1
[00031fae] 2869 0240                 movea.l    576(a1),a4
[00031fb2] 4269 0248                 clr.w      584(a1)
[00031fb6] 2250                      movea.l    (a0),a1
[00031fb8] 3629 0246                 move.w     582(a1),d3
[00031fbc] 3003                      move.w     d3,d0
[00031fbe] 48c0                      ext.l      d0
[00031fc0] e588                      lsl.l      #2,d0
[00031fc2] 4eb9 0004 7cc8            jsr        Ax_malloc
[00031fc8] 2a48                      movea.l    a0,a5
[00031fca] 244d                      movea.l    a5,a2
[00031fcc] 200a                      move.l     a2,d0
[00031fce] 6700 0090                 beq        $00032060
[00031fd2] 603a                      bra.s      $0003200E
[00031fd4] 3004                      move.w     d4,d0
[00031fd6] c07c 1000                 and.w      #$1000,d0
[00031fda] 671c                      beq.s      $00031FF8
[00031fdc] 3404                      move.w     d4,d2
[00031fde] c47c 0fff                 and.w      #$0FFF,d2
[00031fe2] 48c2                      ext.l      d2
[00031fe4] 2202                      move.l     d2,d1
[00031fe6] d281                      add.l      d1,d1
[00031fe8] d282                      add.l      d2,d1
[00031fea] e789                      lsl.l      #3,d1
[00031fec] 206c 0018                 movea.l    24(a4),a0
[00031ff0] 43f0 1818                 lea.l      24(a0,d1.l),a1
[00031ff4] 24c9                      move.l     a1,(a2)+
[00031ff6] 6016                      bra.s      $0003200E
[00031ff8] 3204                      move.w     d4,d1
[00031ffa] 48c1                      ext.l      d1
[00031ffc] 2001                      move.l     d1,d0
[00031ffe] d080                      add.l      d0,d0
[00032000] d081                      add.l      d1,d0
[00032002] e788                      lsl.l      #3,d0
[00032004] 206c 0014                 movea.l    20(a4),a0
[00032008] 43f0 0818                 lea.l      24(a0,d0.l),a1
[0003200c] 24c9                      move.l     a1,(a2)+
[0003200e] 4eb9 0004 484c            jsr        $0004484C
[00032014] 3800                      move.w     d0,d4
[00032016] 6ebc                      bgt.s      $00031FD4
[00032018] 4eb9 0004 4a26            jsr        $00044A26
[0003201e] 4244                      clr.w      d4
[00032020] 6032                      bra.s      $00032054
[00032022] 3004                      move.w     d4,d0
[00032024] 48c0                      ext.l      d0
[00032026] e588                      lsl.l      #2,d0
[00032028] 2475 0800                 movea.l    0(a5,d0.l),a2
[0003202c] 0c6a 0002 0016            cmpi.w     #$0002,22(a2)
[00032032] 660a                      bne.s      $0003203E
[00032034] 2057                      movea.l    (a7),a0
[00032036] 4eb9 0003 2068            jsr        $00032068
[0003203c] 6014                      bra.s      $00032052
[0003203e] 302a 0016                 move.w     22(a2),d0
[00032042] b06b 0014                 cmp.w      20(a3),d0
[00032046] 660a                      bne.s      $00032052
[00032048] 226a 000c                 movea.l    12(a2),a1
[0003204c] 204b                      movea.l    a3,a0
[0003204e] 6100 fe96                 bsr        $00031EE6
[00032052] 5244                      addq.w     #1,d4
[00032054] b644                      cmp.w      d4,d3
[00032056] 6eca                      bgt.s      $00032022
[00032058] 204d                      movea.l    a5,a0
[0003205a] 4eb9 0004 7e26            jsr        $00047E26
[00032060] 584f                      addq.w     #4,a7
[00032062] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00032066] 4e75                      rts
li_newwi:
[00032068] 2f0a                      move.l     a2,-(a7)
[0003206a] 2f0b                      move.l     a3,-(a7)
[0003206c] 514f                      subq.w     #8,a7
[0003206e] 2448                      movea.l    a0,a2
[00032070] 2650                      movea.l    (a0),a3
[00032072] 226b 0016                 movea.l    22(a3),a1
[00032076] 204b                      movea.l    a3,a0
[00032078] 6100 fe6c                 bsr        $00031EE6
[0003207c] 2f48 0004                 move.l     a0,4(a7)
[00032080] 2008                      move.l     a0,d0
[00032082] 671a                      beq.s      $0003209E
[00032084] 006a 0004 0054            ori.w      #$0004,84(a2)
[0003208a] 2e93                      move.l     (a3),(a7)
[0003208c] 41d7                      lea.l      (a7),a0
[0003208e] 226b 0008                 movea.l    8(a3),a1
[00032092] 2269 0008                 movea.l    8(a1),a1
[00032096] 4e91                      jsr        (a1)
[00032098] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[0003209e] 504f                      addq.w     #8,a7
[000320a0] 265f                      movea.l    (a7)+,a3
[000320a2] 245f                      movea.l    (a7)+,a2
[000320a4] 4e75                      rts
li_new:
[000320a6] 2079 0010 1f12            movea.l    ACSblk,a0
[000320ac] 2068 0258                 movea.l    600(a0),a0
[000320b0] 6100 ffb6                 bsr.w      $00032068
[000320b4] 4e75                      rts
li_init:
[000320b6] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[000320ba] 2448                      movea.l    a0,a2
[000320bc] 2279 0010 1f12            movea.l    ACSblk,a1
[000320c2] b1e9 0240                 cmpa.l     576(a1),a0
[000320c6] 6606                      bne.s      $000320CE
[000320c8] 4eb9 0004 4a26            jsr        $00044A26
[000320ce] 2652                      movea.l    (a2),a3
[000320d0] 2a6b 0004                 movea.l    4(a3),a5
[000320d4] 4243                      clr.w      d3
[000320d6] 3803                      move.w     d3,d4
[000320d8] 286a 0014                 movea.l    20(a2),a4
[000320dc] 200c                      move.l     a4,d0
[000320de] 6710                      beq.s      $000320F0
[000320e0] 382c 0010                 move.w     16(a4),d4
[000320e4] 362c 0012                 move.w     18(a4),d3
[000320e8] 204c                      movea.l    a4,a0
[000320ea] 4eb9 0004 7e26            jsr        $00047E26
[000320f0] 204d                      movea.l    a5,a0
[000320f2] 226b 0022                 movea.l    34(a3),a1
[000320f6] 4e91                      jsr        (a1)
[000320f8] 2848                      movea.l    a0,a4
[000320fa] 200c                      move.l     a4,d0
[000320fc] 6616                      bne.s      $00032114
[000320fe] 41f9 000c 15d8            lea.l      $000C15D8,a0
[00032104] 4eb9 0004 9a5c            jsr        $00049A5C
[0003210a] 2848                      movea.l    a0,a4
[0003210c] 2548 0014                 move.l     a0,20(a2)
[00032110] 70ff                      moveq.l    #-1,d0
[00032112] 6044                      bra.s      $00032158
[00032114] 4bec 0018                 lea.l      24(a4),a5
[00032118] 2b7c 0003 1ed4 0004       move.l     #$00031ED4,4(a5)
[00032120] 3a2c 0002                 move.w     2(a4),d5
[00032124] 601a                      bra.s      $00032140
[00032126] 3205                      move.w     d5,d1
[00032128] 48c1                      ext.l      d1
[0003212a] 2001                      move.l     d1,d0
[0003212c] d080                      add.l      d0,d0
[0003212e] d081                      add.l      d1,d0
[00032130] e788                      lsl.l      #3,d0
[00032132] 4bf4 0818                 lea.l      24(a4,d0.l),a5
[00032136] 2abc 0003 225a            move.l     #$0003225A,(a5)
[0003213c] 3a34 0800                 move.w     0(a4,d0.l),d5
[00032140] 4a45                      tst.w      d5
[00032142] 6ee2                      bgt.s      $00032126
[00032144] 254c 0014                 move.l     a4,20(a2)
[00032148] 3944 0010                 move.w     d4,16(a4)
[0003214c] 3943 0012                 move.w     d3,18(a4)
[00032150] 006a 0010 0056            ori.w      #$0010,86(a2)
[00032156] 4240                      clr.w      d0
[00032158] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0003215c] 4e75                      rts
li_make:
[0003215e] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032162] 4fef ffb6                 lea.l      -74(a7),a7
[00032166] 2a48                      movea.l    a0,a5
[00032168] 2448                      movea.l    a0,a2
[0003216a] 266a 0004                 movea.l    4(a2),a3
[0003216e] 286b 0012                 movea.l    18(a3),a4
[00032172] 200c                      move.l     a4,d0
[00032174] 670c                      beq.s      $00032182
[00032176] 204c                      movea.l    a4,a0
[00032178] 4eb9 0004 f0ca            jsr        $0004F0CA
[0003217e] 6000 00ce                 bra        $0003224E
[00032182] 702a                      moveq.l    #42,d0
[00032184] 4eb9 0004 7cc8            jsr        Ax_malloc
[0003218a] 2448                      movea.l    a0,a2
[0003218c] 200a                      move.l     a2,d0
[0003218e] 6700 00ba                 beq        $0003224A
[00032192] 702a                      moveq.l    #42,d0
[00032194] 224d                      movea.l    a5,a1
[00032196] 4eb9 0007 6f44            jsr        $00076F44
[0003219c] 4bf9 000c 1878            lea.l      $000C1878,a5
[000321a2] 2b6a 000c 004a            move.l     12(a2),74(a5)
[000321a8] 1f7c 0020 0004            move.b     #$20,4(a7)
[000321ae] 2052                      movea.l    (a2),a0
[000321b0] 2268 0008                 movea.l    8(a0),a1
[000321b4] 41ef 0005                 lea.l      5(a7),a0
[000321b8] 4eb9 0007 6950            jsr        $00076950
[000321be] 41ef 0004                 lea.l      4(a7),a0
[000321c2] 2b48 004e                 move.l     a0,78(a5)
[000321c6] 226a 0008                 movea.l    8(a2),a1
[000321ca] 2b69 005a 005a            move.l     90(a1),90(a5)
[000321d0] 705c                      moveq.l    #92,d0
[000321d2] 2052                      movea.l    (a2),a0
[000321d4] 2068 0008                 movea.l    8(a0),a0
[000321d8] 4eb9 0007 68e2            jsr        $000768E2
[000321de] 2e88                      move.l     a0,(a7)
[000321e0] 6608                      bne.s      $000321EA
[000321e2] 2252                      movea.l    (a2),a1
[000321e4] 2ea9 0008                 move.l     8(a1),(a7)
[000321e8] 6002                      bra.s      $000321EC
[000321ea] 5297                      addq.l     #1,(a7)
[000321ec] 206d 005a                 movea.l    90(a5),a0
[000321f0] 2157 0008                 move.l     (a7),8(a0)
[000321f4] 204d                      movea.l    a5,a0
[000321f6] 4eb9 0004 f41a            jsr        $0004F41A
[000321fc] 2848                      movea.l    a0,a4
[000321fe] 200c                      move.l     a4,d0
[00032200] 660a                      bne.s      $0003220C
[00032202] 204a                      movea.l    a2,a0
[00032204] 4eb9 0004 7e26            jsr        $00047E26
[0003220a] 603e                      bra.s      $0003224A
[0003220c] 2052                      movea.l    (a2),a0
[0003220e] 4868 0168                 pea.l      360(a0)
[00032212] 43eb 003a                 lea.l      58(a3),a1
[00032216] 204c                      movea.l    a4,a0
[00032218] 4eb9 0001 47a8            jsr        $000147A8
[0003221e] 584f                      addq.w     #4,a7
[00032220] 288a                      move.l     a2,(a4)
[00032222] 274c 0012                 move.l     a4,18(a3)
[00032226] 202a 0016                 move.l     22(a2),d0
[0003222a] 660a                      bne.s      $00032236
[0003222c] 206c 005e                 movea.l    94(a4),a0
[00032230] 0068 0008 018a            ori.w      #$0008,394(a0)
[00032236] 204c                      movea.l    a4,a0
[00032238] 226c 000c                 movea.l    12(a4),a1
[0003223c] 4e91                      jsr        (a1)
[0003223e] 4a40                      tst.w      d0
[00032240] 670c                      beq.s      $0003224E
[00032242] 204c                      movea.l    a4,a0
[00032244] 4eb9 0003 244e            jsr        $0003244E
[0003224a] 91c8                      suba.l     a0,a0
[0003224c] 6002                      bra.s      $00032250
[0003224e] 204c                      movea.l    a4,a0
[00032250] 4fef 004a                 lea.l      74(a7),a7
[00032254] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032258] 4e75                      rts
open_it:
[0003225a] 2079 0010 1f12            movea.l    ACSblk,a0
[00032260] 3028 0260                 move.w     608(a0),d0
[00032264] 2068 0258                 movea.l    600(a0),a0
[00032268] 4eb9 0003 2270            jsr        $00032270
[0003226e] 4e75                      rts
open_wi:
[00032270] 2f0a                      move.l     a2,-(a7)
[00032272] 2f0b                      move.l     a3,-(a7)
[00032274] 514f                      subq.w     #8,a7
[00032276] 2448                      movea.l    a0,a2
[00032278] 2650                      movea.l    (a0),a3
[0003227a] 006a 0004 0054            ori.w      #$0004,84(a2)
[00032280] 2e93                      move.l     (a3),(a7)
[00032282] 226b 0004                 movea.l    4(a3),a1
[00032286] 2069 0004                 movea.l    4(a1),a0
[0003228a] 72fe                      moveq.l    #-2,d1
[0003228c] d240                      add.w      d0,d1
[0003228e] e241                      asr.w      #1,d1
[00032290] 48c1                      ext.l      d1
[00032292] e589                      lsl.l      #2,d1
[00032294] 2f70 1800 0004            move.l     0(a0,d1.l),4(a7)
[0003229a] 41d7                      lea.l      (a7),a0
[0003229c] 226b 0008                 movea.l    8(a3),a1
[000322a0] 2269 0008                 movea.l    8(a1),a1
[000322a4] 4e91                      jsr        (a1)
[000322a6] 2008                      move.l     a0,d0
[000322a8] 6704                      beq.s      $000322AE
[000322aa] 7001                      moveq.l    #1,d0
[000322ac] 6002                      bra.s      $000322B0
[000322ae] 4240                      clr.w      d0
[000322b0] 026a fffb 0054            andi.w     #$FFFB,84(a2)
[000322b6] 504f                      addq.w     #8,a7
[000322b8] 265f                      movea.l    (a7)+,a3
[000322ba] 245f                      movea.l    (a7)+,a2
[000322bc] 4e75                      rts
li_service:
[000322be] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[000322c2] 2448                      movea.l    a0,a2
[000322c4] 3800                      move.w     d0,d4
[000322c6] 2a49                      movea.l    a1,a5
[000322c8] 7602                      moveq.l    #2,d3
[000322ca] b07c 000b                 cmp.w      #$000B,d0
[000322ce] 6700 00f8                 beq        $000323C8
[000322d2] 6e14                      bgt.s      $000322E8
[000322d4] 5540                      subq.w     #2,d0
[000322d6] 6726                      beq.s      $000322FE
[000322d8] 5740                      subq.w     #3,d0
[000322da] 674c                      beq.s      $00032328
[000322dc] 5340                      subq.w     #1,d0
[000322de] 6748                      beq.s      $00032328
[000322e0] 5940                      subq.w     #4,d0
[000322e2] 6730                      beq.s      $00032314
[000322e4] 6000 0152                 bra        $00032438
[000322e8] 907c 000f                 sub.w      #$000F,d0
[000322ec] 6730                      beq.s      $0003231E
[000322ee] 5340                      subq.w     #1,d0
[000322f0] 6718                      beq.s      $0003230A
[000322f2] 907c 03dd                 sub.w      #$03DD,d0
[000322f6] 6700 00da                 beq        $000323D2
[000322fa] 6000 013c                 bra        $00032438
[000322fe] 204a                      movea.l    a2,a0
[00032300] 4eb9 0003 244e            jsr        $0003244E
[00032306] 6000 013e                 bra        $00032446
[0003230a] 204a                      movea.l    a2,a0
[0003230c] 6100 fc8e                 bsr        $00031F9C
[00032310] 6000 0134                 bra        $00032446
[00032314] 204a                      movea.l    a2,a0
[00032316] 6100 f9e0                 bsr        $00031CF8
[0003231a] 6000 012a                 bra        $00032446
[0003231e] 204a                      movea.l    a2,a0
[00032320] 6100 fa22                 bsr        $00031D44
[00032324] 6000 0120                 bra        $00032446
[00032328] 206a 005e                 movea.l    94(a2),a0
[0003232c] 0068 0008 027a            ori.w      #$0008,634(a0)
[00032332] 2079 0010 1f12            movea.l    ACSblk,a0
[00032338] 0c68 0001 0246            cmpi.w     #$0001,582(a0)
[0003233e] 6642                      bne.s      $00032382
[00032340] 226a 005e                 movea.l    94(a2),a1
[00032344] 0269 fff7 024a            andi.w     #$FFF7,586(a1)
[0003234a] 2079 0010 1f12            movea.l    ACSblk,a0
[00032350] 2268 0254                 movea.l    596(a0),a1
[00032354] 3211                      move.w     (a1),d1
[00032356] 48c1                      ext.l      d1
[00032358] 2001                      move.l     d1,d0
[0003235a] d080                      add.l      d0,d0
[0003235c] d081                      add.l      d1,d0
[0003235e] e788                      lsl.l      #3,d0
[00032360] 266a 0014                 movea.l    20(a2),a3
[00032364] 47f3 0818                 lea.l      24(a3,d0.l),a3
[00032368] 286b 000c                 movea.l    12(a3),a4
[0003236c] 342c 0038                 move.w     56(a4),d2
[00032370] c47c 0100                 and.w      #$0100,d2
[00032374] 6716                      beq.s      $0003238C
[00032376] 206a 005e                 movea.l    94(a2),a0
[0003237a] 0268 fff7 027a            andi.w     #$FFF7,634(a0)
[00032380] 600a                      bra.s      $0003238C
[00032382] 206a 005e                 movea.l    94(a2),a0
[00032386] 0068 0008 024a            ori.w      #$0008,586(a0)
[0003238c] 2079 0010 1f12            movea.l    ACSblk,a0
[00032392] 3028 0246                 move.w     582(a0),d0
[00032396] 6f18                      ble.s      $000323B0
[00032398] 226a 005e                 movea.l    94(a2),a1
[0003239c] 0269 fff7 01ba            andi.w     #$FFF7,442(a1)
[000323a2] 206a 005e                 movea.l    94(a2),a0
[000323a6] 0268 fff7 021a            andi.w     #$FFF7,538(a0)
[000323ac] 6000 0098                 bra        $00032446
[000323b0] 206a 005e                 movea.l    94(a2),a0
[000323b4] 0068 0008 01ba            ori.w      #$0008,442(a0)
[000323ba] 206a 005e                 movea.l    94(a2),a0
[000323be] 0068 0008 021a            ori.w      #$0008,538(a0)
[000323c4] 6000 0080                 bra        $00032446
[000323c8] 204a                      movea.l    a2,a0
[000323ca] 6100 f790                 bsr        $00031B5C
[000323ce] 6000 0076                 bra.w      $00032446
[000323d2] 2052                      movea.l    (a2),a0
[000323d4] 0c68 271c 0014            cmpi.w     #$271C,20(a0)
[000323da] 666a                      bne.s      $00032446
[000323dc] 604e                      bra.s      $0003242C
[000323de] 7020                      moveq.l    #32,d0
[000323e0] 3403                      move.w     d3,d2
[000323e2] 48c2                      ext.l      d2
[000323e4] 2202                      move.l     d2,d1
[000323e6] d281                      add.l      d1,d1
[000323e8] d282                      add.l      d2,d1
[000323ea] e789                      lsl.l      #3,d1
[000323ec] 206a 0014                 movea.l    20(a2),a0
[000323f0] c070 1808                 and.w      8(a0,d1.l),d0
[000323f4] 6650                      bne.s      $00032446
[000323f6] 3030 1820                 move.w     32(a0,d1.l),d0
[000323fa] c07c 8000                 and.w      #$8000,d0
[000323fe] 672a                      beq.s      $0003242A
[00032400] 2648                      movea.l    a0,a3
[00032402] 47f3 1818                 lea.l      24(a3,d1.l),a3
[00032406] 286b 000c                 movea.l    12(a3),a4
[0003240a] 240c                      move.l     a4,d2
[0003240c] 671c                      beq.s      $0003242A
[0003240e] 202c 0004                 move.l     4(a4),d0
[00032412] 6716                      beq.s      $0003242A
[00032414] 224d                      movea.l    a5,a1
[00032416] 2040                      movea.l    d0,a0
[00032418] 4eb9 0007 6a4c            jsr        $00076A4C
[0003241e] 2008                      move.l     a0,d0
[00032420] 6708                      beq.s      $0003242A
[00032422] 3003                      move.w     d3,d0
[00032424] 204a                      movea.l    a2,a0
[00032426] 6100 fe48                 bsr        $00032270
[0003242a] 5443                      addq.w     #2,d3
[0003242c] 206a 0014                 movea.l    20(a2),a0
[00032430] b668 0004                 cmp.w      4(a0),d3
[00032434] 6da8                      blt.s      $000323DE
[00032436] 600e                      bra.s      $00032446
[00032438] 224d                      movea.l    a5,a1
[0003243a] 3004                      move.w     d4,d0
[0003243c] 204a                      movea.l    a2,a0
[0003243e] 4eb9 0005 1276            jsr        $00051276
[00032444] 6002                      bra.s      $00032448
[00032446] 7001                      moveq.l    #1,d0
[00032448] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0003244c] 4e75                      rts
term:
[0003244e] 2f0a                      move.l     a2,-(a7)
[00032450] 2f0b                      move.l     a3,-(a7)
[00032452] 2448                      movea.l    a0,a2
[00032454] 2650                      movea.l    (a0),a3
[00032456] 226b 0004                 movea.l    4(a3),a1
[0003245a] 42a9 0012                 clr.l      18(a1)
[0003245e] 302a 0056                 move.w     86(a2),d0
[00032462] c07c 0800                 and.w      #$0800,d0
[00032466] 6716                      beq.s      $0003247E
[00032468] 43ea 002c                 lea.l      44(a2),a1
[0003246c] 206b 0004                 movea.l    4(a3),a0
[00032470] 41e8 003a                 lea.l      58(a0),a0
[00032474] 7008                      moveq.l    #8,d0
[00032476] 4eb9 0007 6f44            jsr        $00076F44
[0003247c] 6014                      bra.s      $00032492
[0003247e] 7008                      moveq.l    #8,d0
[00032480] 43ea 0024                 lea.l      36(a2),a1
[00032484] 206b 0004                 movea.l    4(a3),a0
[00032488] 41e8 003a                 lea.l      58(a0),a0
[0003248c] 4eb9 0007 6f44            jsr        $00076F44
[00032492] 204b                      movea.l    a3,a0
[00032494] 4eb9 0004 7e26            jsr        $00047E26
[0003249a] 206a 0014                 movea.l    20(a2),a0
[0003249e] 4eb9 0004 7e26            jsr        $00047E26
[000324a4] 42aa 0014                 clr.l      20(a2)
[000324a8] 204a                      movea.l    a2,a0
[000324aa] 4eb9 0005 0330            jsr        $00050330
[000324b0] 265f                      movea.l    (a7)+,a3
[000324b2] 245f                      movea.l    (a7)+,a2
[000324b4] 4e75                      rts
work_icon:
[000324b6] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[000324ba] 594f                      subq.w     #4,a7
[000324bc] 2e89                      move.l     a1,(a7)
[000324be] 2468 0004                 movea.l    4(a0),a2
[000324c2] 33c0 000c 1998            move.w     d0,$000C1998
[000324c8] 2628 000e                 move.l     14(a0),d3
[000324cc] e48b                      lsr.l      #2,d3
[000324ce] 7201                      moveq.l    #1,d1
[000324d0] d243                      add.w      d3,d1
[000324d2] 48c1                      ext.l      d1
[000324d4] 2001                      move.l     d1,d0
[000324d6] e588                      lsl.l      #2,d0
[000324d8] d081                      add.l      d1,d0
[000324da] e588                      lsl.l      #2,d0
[000324dc] d081                      add.l      d1,d0
[000324de] d080                      add.l      d0,d0
[000324e0] d081                      add.l      d1,d0
[000324e2] d080                      add.l      d0,d0
[000324e4] 4eb9 0004 7cc8            jsr        Ax_malloc
[000324ea] 2648                      movea.l    a0,a3
[000324ec] 200b                      move.l     a3,d0
[000324ee] 6606                      bne.s      $000324F6
[000324f0] 91c8                      suba.l     a0,a0
[000324f2] 6000 00b8                 bra        $000325AC
[000324f6] 7030                      moveq.l    #48,d0
[000324f8] 43f9 000c 193a            lea.l      $000C193A,a1
[000324fe] 204b                      movea.l    a3,a0
[00032500] 4eb9 0007 6f44            jsr        $00076F44
[00032506] 284b                      movea.l    a3,a4
[00032508] 4a43                      tst.w      d3
[0003250a] 6f00 0098                 ble        $000325A4
[0003250e] 3203                      move.w     d3,d1
[00032510] d241                      add.w      d1,d1
[00032512] 48c1                      ext.l      d1
[00032514] 2001                      move.l     d1,d0
[00032516] d080                      add.l      d0,d0
[00032518] d081                      add.l      d1,d0
[0003251a] e788                      lsl.l      #3,d0
[0003251c] 4bf3 0830                 lea.l      48(a3,d0.l),a5
[00032520] 7801                      moveq.l    #1,d4
[00032522] 606a                      bra.s      $0003258E
[00032524] 5244                      addq.w     #1,d4
[00032526] 49ec 0030                 lea.l      48(a4),a4
[0003252a] 7030                      moveq.l    #48,d0
[0003252c] 43f9 000c 196a            lea.l      $000C196A,a1
[00032532] 204c                      movea.l    a4,a0
[00032534] 4eb9 0007 6f44            jsr        $00076F44
[0003253a] 7026                      moveq.l    #38,d0
[0003253c] 2257                      movea.l    (a7),a1
[0003253e] 204d                      movea.l    a5,a0
[00032540] 4eb9 0007 6f44            jsr        $00076F44
[00032546] 3004                      move.w     d4,d0
[00032548] d040                      add.w      d0,d0
[0003254a] 3880                      move.w     d0,(a4)
[0003254c] 294d 000c                 move.l     a5,12(a4)
[00032550] 3204                      move.w     d4,d1
[00032552] 48c1                      ext.l      d1
[00032554] e589                      lsl.l      #2,d1
[00032556] 2072 18f8                 movea.l    -8(a2,d1.l),a0
[0003255a] 2948 0024                 move.l     a0,36(a4)
[0003255e] 3428 0038                 move.w     56(a0),d2
[00032562] c47c 0100                 and.w      #$0100,d2
[00032566] 6606                      bne.s      $0003256E
[00032568] 006c 0010 000a            ori.w      #$0010,10(a4)
[0003256e] 204c                      movea.l    a4,a0
[00032570] 4eb9 0004 a34e            jsr        $0004A34E
[00032576] 3004                      move.w     d4,d0
[00032578] 48c0                      ext.l      d0
[0003257a] e588                      lsl.l      #2,d0
[0003257c] 2072 08f8                 movea.l    -8(a2,d0.l),a0
[00032580] 41e8 0016                 lea.l      22(a0),a0
[00032584] 2b48 0008                 move.l     a0,8(a5)
[00032588] 4bed 0026                 lea.l      38(a5),a5
[0003258c] 5343                      subq.w     #1,d3
[0003258e] 4a43                      tst.w      d3
[00032590] 6e92                      bgt.s      $00032524
[00032592] 377c 0002 0002            move.w     #$0002,2(a3)
[00032598] 70ff                      moveq.l    #-1,d0
[0003259a] d044                      add.w      d4,d0
[0003259c] d040                      add.w      d0,d0
[0003259e] 3740 0004                 move.w     d0,4(a3)
[000325a2] 4254                      clr.w      (a4)
[000325a4] 006c 0020 0020            ori.w      #$0020,32(a4)
[000325aa] 204b                      movea.l    a3,a0
[000325ac] 584f                      addq.w     #4,a7
[000325ae] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[000325b2] 4e75                      rts
li_scope:
[000325b4] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[000325b8] 594f                      subq.w     #4,a7
[000325ba] 2079 0010 1f12            movea.l    ACSblk,a0
[000325c0] 2468 0258                 movea.l    600(a0),a2
[000325c4] 2e92                      move.l     (a2),(a7)
[000325c6] 4268 0248                 clr.w      584(a0)
[000325ca] 6000 00aa                 bra        $00032676
[000325ce] 3203                      move.w     d3,d1
[000325d0] 48c1                      ext.l      d1
[000325d2] 2001                      move.l     d1,d0
[000325d4] d080                      add.l      d0,d0
[000325d6] d081                      add.l      d1,d0
[000325d8] e788                      lsl.l      #3,d0
[000325da] 206a 0014                 movea.l    20(a2),a0
[000325de] 41f0 0818                 lea.l      24(a0,d0.l),a0
[000325e2] 2868 000c                 movea.l    12(a0),a4
[000325e6] 41f9 000c 17d6            lea.l      $000C17D6,a0
[000325ec] 2279 000c 17de            movea.l    $000C17DE,a1
[000325f2] 4e91                      jsr        (a1)
[000325f4] 2648                      movea.l    a0,a3
[000325f6] 200b                      move.l     a3,d0
[000325f8] 6700 007c                 beq.w      $00032676
[000325fc] 322c 0038                 move.w     56(a4),d1
[00032600] c27c 0500                 and.w      #$0500,d1
[00032604] b27c 0100                 cmp.w      #$0100,d1
[00032608] 6616                      bne.s      $00032620
[0003260a] 226b 0014                 movea.l    20(a3),a1
[0003260e] 0269 fffe 003a            andi.w     #$FFFE,58(a1)
[00032614] 226b 0014                 movea.l    20(a3),a1
[00032618] 0069 0001 006a            ori.w      #$0001,106(a1)
[0003261e] 6014                      bra.s      $00032634
[00032620] 206b 0014                 movea.l    20(a3),a0
[00032624] 0068 0001 003a            ori.w      #$0001,58(a0)
[0003262a] 206b 0014                 movea.l    20(a3),a0
[0003262e] 0268 fffe 006a            andi.w     #$FFFE,106(a0)
[00032634] 204b                      movea.l    a3,a0
[00032636] 4eb9 0005 1292            jsr        $00051292
[0003263c] 5d40                      subq.w     #6,d0
[0003263e] 6624                      bne.s      $00032664
[00032640] 7001                      moveq.l    #1,d0
[00032642] 206b 0014                 movea.l    20(a3),a0
[00032646] c068 006a                 and.w      106(a0),d0
[0003264a] 6708                      beq.s      $00032654
[0003264c] 026c fbff 0038            andi.w     #$FBFF,56(a4)
[00032652] 6006                      bra.s      $0003265A
[00032654] 006c 0400 0038            ori.w      #$0400,56(a4)
[0003265a] 2057                      movea.l    (a7),a0
[0003265c] 2250                      movea.l    (a0),a1
[0003265e] 0069 0001 0006            ori.w      #$0001,6(a1)
[00032664] 204b                      movea.l    a3,a0
[00032666] 4eb9 0005 0330            jsr        $00050330
[0003266c] 3003                      move.w     d3,d0
[0003266e] 204a                      movea.l    a2,a0
[00032670] 4eb9 0004 492a            jsr        $0004492A
[00032676] 4eb9 0004 484c            jsr        $0004484C
[0003267c] 3600                      move.w     d0,d3
[0003267e] 6e00 ff4e                 bgt        $000325CE
[00032682] 584f                      addq.w     #4,a7
[00032684] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00032688] 4e75                      rts
