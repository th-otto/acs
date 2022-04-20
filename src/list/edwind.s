copyref:
[00032af0] 2f0a                      move.l     a2,-(a7)
[00032af2] 2449                      movea.l    a1,a2
[00032af4] 2011                      move.l     (a1),d0
[00032af6] 670a                      beq.s      $00032B02
[00032af8] 2240                      movea.l    d0,a1
[00032afa] 4eb9 0003 4306            jsr        $00034306
[00032b00] 2488                      move.l     a0,(a2)
[00032b02] 245f                      movea.l    (a7)+,a2
[00032b04] 4e75                      rts
copy_window:
[00032b06] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032b0a] 2648                      movea.l    a0,a3
[00032b0c] 2449                      movea.l    a1,a2
[00032b0e] 202a 000e                 move.l     14(a2),d0
[00032b12] 4eb9 0001 6230            jsr        $00016230
[00032b18] 2848                      movea.l    a0,a4
[00032b1a] 200c                      move.l     a4,d0
[00032b1c] 6606                      bne.s      $00032B24
[00032b1e] 91c8                      suba.l     a0,a0
[00032b20] 6000 016a                 bra        $00032C8C
[00032b24] 296a 000e 000e            move.l     14(a2),14(a4)
[00032b2a] 2a6c 0004                 movea.l    4(a4),a5
[00032b2e] 202a 000e                 move.l     14(a2),d0
[00032b32] 226a 0004                 movea.l    4(a2),a1
[00032b36] 204d                      movea.l    a5,a0
[00032b38] 4eb9 0007 6f44            jsr        $00076F44
[00032b3e] 224d                      movea.l    a5,a1
[00032b40] 204b                      movea.l    a3,a0
[00032b42] 6100 ffac                 bsr.w      $00032AF0
[00032b46] 43ed 000c                 lea.l      12(a5),a1
[00032b4a] 204b                      movea.l    a3,a0
[00032b4c] 6100 ffa2                 bsr.w      $00032AF0
[00032b50] 43ed 0004                 lea.l      4(a5),a1
[00032b54] 204b                      movea.l    a3,a0
[00032b56] 6100 ff98                 bsr.w      $00032AF0
[00032b5a] 43ed 0008                 lea.l      8(a5),a1
[00032b5e] 204b                      movea.l    a3,a0
[00032b60] 6100 ff8e                 bsr.w      $00032AF0
[00032b64] 202d 0014                 move.l     20(a5),d0
[00032b68] 670e                      beq.s      $00032B78
[00032b6a] 2240                      movea.l    d0,a1
[00032b6c] 204b                      movea.l    a3,a0
[00032b6e] 4eb9 0003 40be            jsr        $000340BE
[00032b74] 2b48 0014                 move.l     a0,20(a5)
[00032b78] 202d 0018                 move.l     24(a5),d0
[00032b7c] 670e                      beq.s      $00032B8C
[00032b7e] 2240                      movea.l    d0,a1
[00032b80] 204b                      movea.l    a3,a0
[00032b82] 4eb9 0003 40be            jsr        $000340BE
[00032b88] 2b48 0018                 move.l     a0,24(a5)
[00032b8c] 226d 004a                 movea.l    74(a5),a1
[00032b90] 204b                      movea.l    a3,a0
[00032b92] 4eb9 0003 461e            jsr        $0003461E
[00032b98] 2b48 004a                 move.l     a0,74(a5)
[00032b9c] 226d 004e                 movea.l    78(a5),a1
[00032ba0] 204b                      movea.l    a3,a0
[00032ba2] 4eb9 0003 461e            jsr        $0003461E
[00032ba8] 2b48 004e                 move.l     a0,78(a5)
[00032bac] 202d 005a                 move.l     90(a5),d0
[00032bb0] 670e                      beq.s      $00032BC0
[00032bb2] 2240                      movea.l    d0,a1
[00032bb4] 204b                      movea.l    a3,a0
[00032bb6] 4eb9 0003 2e34            jsr        $00032E34
[00032bbc] 2b48 005a                 move.l     a0,90(a5)
[00032bc0] 202d 005e                 move.l     94(a5),d0
[00032bc4] 670e                      beq.s      $00032BD4
[00032bc6] 2240                      movea.l    d0,a1
[00032bc8] 204b                      movea.l    a3,a0
[00032bca] 4eb9 0003 3e50            jsr        $00033E50
[00032bd0] 2b48 005e                 move.l     a0,94(a5)
[00032bd4] 43ed 0010                 lea.l      16(a5),a1
[00032bd8] 204b                      movea.l    a3,a0
[00032bda] 6100 ff14                 bsr        $00032AF0
[00032bde] 43ed 0062                 lea.l      98(a5),a1
[00032be2] 204b                      movea.l    a3,a0
[00032be4] 6100 ff0a                 bsr        $00032AF0
[00032be8] 43ed 0066                 lea.l      102(a5),a1
[00032bec] 204b                      movea.l    a3,a0
[00032bee] 6100 ff00                 bsr        $00032AF0
[00032bf2] 43ed 006a                 lea.l      106(a5),a1
[00032bf6] 204b                      movea.l    a3,a0
[00032bf8] 6100 fef6                 bsr        $00032AF0
[00032bfc] 43ed 006e                 lea.l      110(a5),a1
[00032c00] 204b                      movea.l    a3,a0
[00032c02] 6100 feec                 bsr        $00032AF0
[00032c06] 43ed 0072                 lea.l      114(a5),a1
[00032c0a] 204b                      movea.l    a3,a0
[00032c0c] 6100 fee2                 bsr        $00032AF0
[00032c10] 43ed 0076                 lea.l      118(a5),a1
[00032c14] 204b                      movea.l    a3,a0
[00032c16] 6100 fed8                 bsr        $00032AF0
[00032c1a] 43ed 007a                 lea.l      122(a5),a1
[00032c1e] 204b                      movea.l    a3,a0
[00032c20] 6100 fece                 bsr        $00032AF0
[00032c24] 43ed 007e                 lea.l      126(a5),a1
[00032c28] 204b                      movea.l    a3,a0
[00032c2a] 6100 fec4                 bsr        $00032AF0
[00032c2e] 43ed 0082                 lea.l      130(a5),a1
[00032c32] 204b                      movea.l    a3,a0
[00032c34] 6100 feba                 bsr        $00032AF0
[00032c38] 43ed 0086                 lea.l      134(a5),a1
[00032c3c] 204b                      movea.l    a3,a0
[00032c3e] 6100 feb0                 bsr        $00032AF0
[00032c42] 43ed 008a                 lea.l      138(a5),a1
[00032c46] 204b                      movea.l    a3,a0
[00032c48] 6100 fea6                 bsr        $00032AF0
[00032c4c] 43ed 008e                 lea.l      142(a5),a1
[00032c50] 204b                      movea.l    a3,a0
[00032c52] 6100 fe9c                 bsr        $00032AF0
[00032c56] 43ed 0092                 lea.l      146(a5),a1
[00032c5a] 204b                      movea.l    a3,a0
[00032c5c] 6100 fe92                 bsr        $00032AF0
[00032c60] 43ed 0096                 lea.l      150(a5),a1
[00032c64] 204b                      movea.l    a3,a0
[00032c66] 6100 fe88                 bsr        $00032AF0
[00032c6a] 226d 009e                 movea.l    158(a5),a1
[00032c6e] 204b                      movea.l    a3,a0
[00032c70] 4eb9 0003 461e            jsr        $0003461E
[00032c76] 2b48 009e                 move.l     a0,158(a5)
[00032c7a] 226d 009a                 movea.l    154(a5),a1
[00032c7e] 204b                      movea.l    a3,a0
[00032c80] 4eb9 0003 461e            jsr        $0003461E
[00032c86] 2b48 009a                 move.l     a0,154(a5)
[00032c8a] 204c                      movea.l    a4,a0
[00032c8c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032c90] 4e75                      rts
delref:
[00032c92] 2f0a                      move.l     a2,-(a7)
[00032c94] 2449                      movea.l    a1,a2
[00032c96] 2011                      move.l     (a1),d0
[00032c98] 6708                      beq.s      $00032CA2
[00032c9a] 2240                      movea.l    d0,a1
[00032c9c] 4eb9 0003 448e            jsr        $0003448E
[00032ca2] 245f                      movea.l    (a7)+,a2
[00032ca4] 4e75                      rts
del_window:
[00032ca6] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032caa] 2848                      movea.l    a0,a4
[00032cac] 2449                      movea.l    a1,a2
[00032cae] 536a 0036                 subq.w     #1,54(a2)
[00032cb2] 302a 0036                 move.w     54(a2),d0
[00032cb6] 6e00 0164                 bgt        $00032E1C
[00032cba] 266a 0012                 movea.l    18(a2),a3
[00032cbe] 220b                      move.l     a3,d1
[00032cc0] 670c                      beq.s      $00032CCE
[00032cc2] 2a6b 0004                 movea.l    4(a3),a5
[00032cc6] 204b                      movea.l    a3,a0
[00032cc8] 7002                      moveq.l    #2,d0
[00032cca] 93c9                      suba.l     a1,a1
[00032ccc] 4e95                      jsr        (a5)
[00032cce] 266a 0004                 movea.l    4(a2),a3
[00032cd2] 224b                      movea.l    a3,a1
[00032cd4] 204c                      movea.l    a4,a0
[00032cd6] 6100 ffba                 bsr.w      $00032C92
[00032cda] 43eb 000c                 lea.l      12(a3),a1
[00032cde] 204c                      movea.l    a4,a0
[00032ce0] 6100 ffb0                 bsr.w      $00032C92
[00032ce4] 43eb 0004                 lea.l      4(a3),a1
[00032ce8] 204c                      movea.l    a4,a0
[00032cea] 6100 ffa6                 bsr.w      $00032C92
[00032cee] 43eb 0008                 lea.l      8(a3),a1
[00032cf2] 204c                      movea.l    a4,a0
[00032cf4] 6100 ff9c                 bsr.w      $00032C92
[00032cf8] 202b 0014                 move.l     20(a3),d0
[00032cfc] 670a                      beq.s      $00032D08
[00032cfe] 2240                      movea.l    d0,a1
[00032d00] 204c                      movea.l    a4,a0
[00032d02] 4eb9 0003 4182            jsr        $00034182
[00032d08] 202b 0018                 move.l     24(a3),d0
[00032d0c] 670a                      beq.s      $00032D18
[00032d0e] 2240                      movea.l    d0,a1
[00032d10] 204c                      movea.l    a4,a0
[00032d12] 4eb9 0003 4182            jsr        $00034182
[00032d18] 226b 004a                 movea.l    74(a3),a1
[00032d1c] 204c                      movea.l    a4,a0
[00032d1e] 4eb9 0003 47e8            jsr        $000347E8
[00032d24] 226b 004e                 movea.l    78(a3),a1
[00032d28] 204c                      movea.l    a4,a0
[00032d2a] 4eb9 0003 47e8            jsr        $000347E8
[00032d30] 202b 005a                 move.l     90(a3),d0
[00032d34] 670a                      beq.s      $00032D40
[00032d36] 2240                      movea.l    d0,a1
[00032d38] 204c                      movea.l    a4,a0
[00032d3a] 4eb9 0003 3220            jsr        $00033220
[00032d40] 202b 005e                 move.l     94(a3),d0
[00032d44] 670a                      beq.s      $00032D50
[00032d46] 2240                      movea.l    d0,a1
[00032d48] 204c                      movea.l    a4,a0
[00032d4a] 4eb9 0003 3f14            jsr        $00033F14
[00032d50] 43eb 0010                 lea.l      16(a3),a1
[00032d54] 204c                      movea.l    a4,a0
[00032d56] 6100 ff3a                 bsr        $00032C92
[00032d5a] 43eb 0062                 lea.l      98(a3),a1
[00032d5e] 204c                      movea.l    a4,a0
[00032d60] 6100 ff30                 bsr        $00032C92
[00032d64] 43eb 0066                 lea.l      102(a3),a1
[00032d68] 204c                      movea.l    a4,a0
[00032d6a] 6100 ff26                 bsr        $00032C92
[00032d6e] 43eb 006a                 lea.l      106(a3),a1
[00032d72] 204c                      movea.l    a4,a0
[00032d74] 6100 ff1c                 bsr        $00032C92
[00032d78] 43eb 006e                 lea.l      110(a3),a1
[00032d7c] 204c                      movea.l    a4,a0
[00032d7e] 6100 ff12                 bsr        $00032C92
[00032d82] 43eb 0072                 lea.l      114(a3),a1
[00032d86] 204c                      movea.l    a4,a0
[00032d88] 6100 ff08                 bsr        $00032C92
[00032d8c] 43eb 0076                 lea.l      118(a3),a1
[00032d90] 204c                      movea.l    a4,a0
[00032d92] 6100 fefe                 bsr        $00032C92
[00032d96] 43eb 007a                 lea.l      122(a3),a1
[00032d9a] 204c                      movea.l    a4,a0
[00032d9c] 6100 fef4                 bsr        $00032C92
[00032da0] 43eb 007e                 lea.l      126(a3),a1
[00032da4] 204c                      movea.l    a4,a0
[00032da6] 6100 feea                 bsr        $00032C92
[00032daa] 43eb 0082                 lea.l      130(a3),a1
[00032dae] 204c                      movea.l    a4,a0
[00032db0] 6100 fee0                 bsr        $00032C92
[00032db4] 43eb 0086                 lea.l      134(a3),a1
[00032db8] 204c                      movea.l    a4,a0
[00032dba] 6100 fed6                 bsr        $00032C92
[00032dbe] 43eb 008a                 lea.l      138(a3),a1
[00032dc2] 204c                      movea.l    a4,a0
[00032dc4] 6100 fecc                 bsr        $00032C92
[00032dc8] 43eb 008e                 lea.l      142(a3),a1
[00032dcc] 204c                      movea.l    a4,a0
[00032dce] 6100 fec2                 bsr        $00032C92
[00032dd2] 43eb 0092                 lea.l      146(a3),a1
[00032dd6] 204c                      movea.l    a4,a0
[00032dd8] 6100 feb8                 bsr        $00032C92
[00032ddc] 43eb 0096                 lea.l      150(a3),a1
[00032de0] 204c                      movea.l    a4,a0
[00032de2] 6100 feae                 bsr        $00032C92
[00032de6] 202b 009e                 move.l     158(a3),d0
[00032dea] 670a                      beq.s      $00032DF6
[00032dec] 2240                      movea.l    d0,a1
[00032dee] 204c                      movea.l    a4,a0
[00032df0] 4eb9 0003 47e8            jsr        $000347E8
[00032df6] 202b 009a                 move.l     154(a3),d0
[00032dfa] 670a                      beq.s      $00032E06
[00032dfc] 2240                      movea.l    d0,a1
[00032dfe] 204c                      movea.l    a4,a0
[00032e00] 4eb9 0003 47e8            jsr        $000347E8
[00032e06] 224a                      movea.l    a2,a1
[00032e08] 206c 0014                 movea.l    20(a4),a0
[00032e0c] 4eb9 0003 1b00            jsr        $00031B00
[00032e12] 224a                      movea.l    a2,a1
[00032e14] 204c                      movea.l    a4,a0
[00032e16] 4eb9 0001 61d4            jsr        $000161D4
[00032e1c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032e20] 4e75                      rts
new_work:
[00032e22] 303c 2717                 move.w     #$2717,d0
[00032e26] 2279 000a b564            movea.l    $000AB564,a1
[00032e2c] 4eb9 0003 24b6            jsr        $000324B6
[00032e32] 4e75                      rts
