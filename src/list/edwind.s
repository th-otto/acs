
copyref:
[00032af0] 2f0a                      move.l     a2,-(a7)
[00032af2] 2449                      movea.l    a1,a2
[00032af4] 2011                      move.l     (a1),d0
[00032af6] 670a                      beq.s      copyref_1
[00032af8] 2240                      movea.l    d0,a1
[00032afa] 4eb9 0003 4306            jsr        add_ref
[00032b00] 2488                      move.l     a0,(a2)
copyref_1:
[00032b02] 245f                      movea.l    (a7)+,a2
[00032b04] 4e75                      rts

copy_window:
[00032b06] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032b0a] 2648                      movea.l    a0,a3
[00032b0c] 2449                      movea.l    a1,a2
[00032b0e] 202a 000e                 move.l     14(a2),d0
[00032b12] 4eb9 0001 6230            jsr        objmalloc
[00032b18] 2848                      movea.l    a0,a4
[00032b1a] 200c                      move.l     a4,d0
[00032b1c] 6606                      bne.s      copy_window_1
[00032b1e] 91c8                      suba.l     a0,a0
[00032b20] 6000 016a                 bra        copy_window_2
copy_window_1:
[00032b24] 296a 000e 000e            move.l     14(a2),14(a4)
[00032b2a] 2a6c 0004                 movea.l    4(a4),a5
[00032b2e] 202a 000e                 move.l     14(a2),d0
[00032b32] 226a 0004                 movea.l    4(a2),a1
[00032b36] 204d                      movea.l    a5,a0
[00032b38] 4eb9 0007 6f44            jsr        memcpy
[00032b3e] 224d                      movea.l    a5,a1
[00032b40] 204b                      movea.l    a3,a0
[00032b42] 6100 ffac                 bsr.w      copyref
[00032b46] 43ed 000c                 lea.l      12(a5),a1
[00032b4a] 204b                      movea.l    a3,a0
[00032b4c] 6100 ffa2                 bsr.w      copyref
[00032b50] 43ed 0004                 lea.l      4(a5),a1
[00032b54] 204b                      movea.l    a3,a0
[00032b56] 6100 ff98                 bsr.w      copyref
[00032b5a] 43ed 0008                 lea.l      8(a5),a1
[00032b5e] 204b                      movea.l    a3,a0
[00032b60] 6100 ff8e                 bsr.w      copyref
[00032b64] 202d 0014                 move.l     20(a5),d0
[00032b68] 670e                      beq.s      copy_window_3
[00032b6a] 2240                      movea.l    d0,a1
[00032b6c] 204b                      movea.l    a3,a0
[00032b6e] 4eb9 0003 40be            jsr        add_object
[00032b74] 2b48 0014                 move.l     a0,20(a5)
copy_window_3:
[00032b78] 202d 0018                 move.l     24(a5),d0
[00032b7c] 670e                      beq.s      copy_window_4
[00032b7e] 2240                      movea.l    d0,a1
[00032b80] 204b                      movea.l    a3,a0
[00032b82] 4eb9 0003 40be            jsr        add_object
[00032b88] 2b48 0018                 move.l     a0,24(a5)
copy_window_4:
[00032b8c] 226d 004a                 movea.l    74(a5),a1
[00032b90] 204b                      movea.l    a3,a0
[00032b92] 4eb9 0003 461e            jsr        add_string
[00032b98] 2b48 004a                 move.l     a0,74(a5)
[00032b9c] 226d 004e                 movea.l    78(a5),a1
[00032ba0] 204b                      movea.l    a3,a0
[00032ba2] 4eb9 0003 461e            jsr        add_string
[00032ba8] 2b48 004e                 move.l     a0,78(a5)
[00032bac] 202d 005a                 move.l     90(a5),d0
[00032bb0] 670e                      beq.s      copy_window_5
[00032bb2] 2240                      movea.l    d0,a1
[00032bb4] 204b                      movea.l    a3,a0
[00032bb6] 4eb9 0003 2e34            jsr        add_icon
[00032bbc] 2b48 005a                 move.l     a0,90(a5)
copy_window_5:
[00032bc0] 202d 005e                 move.l     94(a5),d0
[00032bc4] 670e                      beq.s      copy_window_6
[00032bc6] 2240                      movea.l    d0,a1
[00032bc8] 204b                      movea.l    a3,a0
[00032bca] 4eb9 0003 3e50            jsr        add_men
[00032bd0] 2b48 005e                 move.l     a0,94(a5)
copy_window_6:
[00032bd4] 43ed 0010                 lea.l      16(a5),a1
[00032bd8] 204b                      movea.l    a3,a0
[00032bda] 6100 ff14                 bsr        copyref
[00032bde] 43ed 0062                 lea.l      98(a5),a1
[00032be2] 204b                      movea.l    a3,a0
[00032be4] 6100 ff0a                 bsr        copyref
[00032be8] 43ed 0066                 lea.l      102(a5),a1
[00032bec] 204b                      movea.l    a3,a0
[00032bee] 6100 ff00                 bsr        copyref
[00032bf2] 43ed 006a                 lea.l      106(a5),a1
[00032bf6] 204b                      movea.l    a3,a0
[00032bf8] 6100 fef6                 bsr        copyref
[00032bfc] 43ed 006e                 lea.l      110(a5),a1
[00032c00] 204b                      movea.l    a3,a0
[00032c02] 6100 feec                 bsr        copyref
[00032c06] 43ed 0072                 lea.l      114(a5),a1
[00032c0a] 204b                      movea.l    a3,a0
[00032c0c] 6100 fee2                 bsr        copyref
[00032c10] 43ed 0076                 lea.l      118(a5),a1
[00032c14] 204b                      movea.l    a3,a0
[00032c16] 6100 fed8                 bsr        copyref
[00032c1a] 43ed 007a                 lea.l      122(a5),a1
[00032c1e] 204b                      movea.l    a3,a0
[00032c20] 6100 fece                 bsr        copyref
[00032c24] 43ed 007e                 lea.l      126(a5),a1
[00032c28] 204b                      movea.l    a3,a0
[00032c2a] 6100 fec4                 bsr        copyref
[00032c2e] 43ed 0082                 lea.l      130(a5),a1
[00032c32] 204b                      movea.l    a3,a0
[00032c34] 6100 feba                 bsr        copyref
[00032c38] 43ed 0086                 lea.l      134(a5),a1
[00032c3c] 204b                      movea.l    a3,a0
[00032c3e] 6100 feb0                 bsr        copyref
[00032c42] 43ed 008a                 lea.l      138(a5),a1
[00032c46] 204b                      movea.l    a3,a0
[00032c48] 6100 fea6                 bsr        copyref
[00032c4c] 43ed 008e                 lea.l      142(a5),a1
[00032c50] 204b                      movea.l    a3,a0
[00032c52] 6100 fe9c                 bsr        copyref
[00032c56] 43ed 0092                 lea.l      146(a5),a1
[00032c5a] 204b                      movea.l    a3,a0
[00032c5c] 6100 fe92                 bsr        copyref
[00032c60] 43ed 0096                 lea.l      150(a5),a1
[00032c64] 204b                      movea.l    a3,a0
[00032c66] 6100 fe88                 bsr        copyref
[00032c6a] 226d 009e                 movea.l    158(a5),a1
[00032c6e] 204b                      movea.l    a3,a0
[00032c70] 4eb9 0003 461e            jsr        add_string
[00032c76] 2b48 009e                 move.l     a0,158(a5)
[00032c7a] 226d 009a                 movea.l    154(a5),a1
[00032c7e] 204b                      movea.l    a3,a0
[00032c80] 4eb9 0003 461e            jsr        add_string
[00032c86] 2b48 009a                 move.l     a0,154(a5)
[00032c8a] 204c                      movea.l    a4,a0
copy_window_2:
[00032c8c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032c90] 4e75                      rts

delref:
[00032c92] 2f0a                      move.l     a2,-(a7)
[00032c94] 2449                      movea.l    a1,a2
[00032c96] 2011                      move.l     (a1),d0
[00032c98] 6708                      beq.s      delref_1
[00032c9a] 2240                      movea.l    d0,a1
[00032c9c] 4eb9 0003 448e            jsr        del_ref
delref_1:
[00032ca2] 245f                      movea.l    (a7)+,a2
[00032ca4] 4e75                      rts

del_window:
[00032ca6] 48e7 003c                 movem.l    a2-a5,-(a7)
[00032caa] 2848                      movea.l    a0,a4
[00032cac] 2449                      movea.l    a1,a2
[00032cae] 536a 0036                 subq.w     #1,54(a2)
[00032cb2] 302a 0036                 move.w     54(a2),d0
[00032cb6] 6e00 0164                 bgt        del_window_1
[00032cba] 266a 0012                 movea.l    18(a2),a3
[00032cbe] 220b                      move.l     a3,d1
[00032cc0] 670c                      beq.s      del_window_2
[00032cc2] 2a6b 0004                 movea.l    4(a3),a5
[00032cc6] 204b                      movea.l    a3,a0
[00032cc8] 7002                      moveq.l    #2,d0
[00032cca] 93c9                      suba.l     a1,a1
[00032ccc] 4e95                      jsr        (a5)
del_window_2:
[00032cce] 266a 0004                 movea.l    4(a2),a3
[00032cd2] 224b                      movea.l    a3,a1
[00032cd4] 204c                      movea.l    a4,a0
[00032cd6] 6100 ffba                 bsr.w      delref
[00032cda] 43eb 000c                 lea.l      12(a3),a1
[00032cde] 204c                      movea.l    a4,a0
[00032ce0] 6100 ffb0                 bsr.w      delref
[00032ce4] 43eb 0004                 lea.l      4(a3),a1
[00032ce8] 204c                      movea.l    a4,a0
[00032cea] 6100 ffa6                 bsr.w      delref
[00032cee] 43eb 0008                 lea.l      8(a3),a1
[00032cf2] 204c                      movea.l    a4,a0
[00032cf4] 6100 ff9c                 bsr.w      delref
[00032cf8] 202b 0014                 move.l     20(a3),d0
[00032cfc] 670a                      beq.s      del_window_3
[00032cfe] 2240                      movea.l    d0,a1
[00032d00] 204c                      movea.l    a4,a0
[00032d02] 4eb9 0003 4182            jsr        del_object
del_window_3:
[00032d08] 202b 0018                 move.l     24(a3),d0
[00032d0c] 670a                      beq.s      del_window_4
[00032d0e] 2240                      movea.l    d0,a1
[00032d10] 204c                      movea.l    a4,a0
[00032d12] 4eb9 0003 4182            jsr        del_object
del_window_4:
[00032d18] 226b 004a                 movea.l    74(a3),a1
[00032d1c] 204c                      movea.l    a4,a0
[00032d1e] 4eb9 0003 47e8            jsr        del_string
[00032d24] 226b 004e                 movea.l    78(a3),a1
[00032d28] 204c                      movea.l    a4,a0
[00032d2a] 4eb9 0003 47e8            jsr        del_string
[00032d30] 202b 005a                 move.l     90(a3),d0
[00032d34] 670a                      beq.s      del_window_5
[00032d36] 2240                      movea.l    d0,a1
[00032d38] 204c                      movea.l    a4,a0
[00032d3a] 4eb9 0003 3220            jsr        del_icon
del_window_5:
[00032d40] 202b 005e                 move.l     94(a3),d0
[00032d44] 670a                      beq.s      del_window_6
[00032d46] 2240                      movea.l    d0,a1
[00032d48] 204c                      movea.l    a4,a0
[00032d4a] 4eb9 0003 3f14            jsr        del_men
del_window_6:
[00032d50] 43eb 0010                 lea.l      16(a3),a1
[00032d54] 204c                      movea.l    a4,a0
[00032d56] 6100 ff3a                 bsr        delref
[00032d5a] 43eb 0062                 lea.l      98(a3),a1
[00032d5e] 204c                      movea.l    a4,a0
[00032d60] 6100 ff30                 bsr        delref
[00032d64] 43eb 0066                 lea.l      102(a3),a1
[00032d68] 204c                      movea.l    a4,a0
[00032d6a] 6100 ff26                 bsr        delref
[00032d6e] 43eb 006a                 lea.l      106(a3),a1
[00032d72] 204c                      movea.l    a4,a0
[00032d74] 6100 ff1c                 bsr        delref
[00032d78] 43eb 006e                 lea.l      110(a3),a1
[00032d7c] 204c                      movea.l    a4,a0
[00032d7e] 6100 ff12                 bsr        delref
[00032d82] 43eb 0072                 lea.l      114(a3),a1
[00032d86] 204c                      movea.l    a4,a0
[00032d88] 6100 ff08                 bsr        delref
[00032d8c] 43eb 0076                 lea.l      118(a3),a1
[00032d90] 204c                      movea.l    a4,a0
[00032d92] 6100 fefe                 bsr        delref
[00032d96] 43eb 007a                 lea.l      122(a3),a1
[00032d9a] 204c                      movea.l    a4,a0
[00032d9c] 6100 fef4                 bsr        delref
[00032da0] 43eb 007e                 lea.l      126(a3),a1
[00032da4] 204c                      movea.l    a4,a0
[00032da6] 6100 feea                 bsr        delref
[00032daa] 43eb 0082                 lea.l      130(a3),a1
[00032dae] 204c                      movea.l    a4,a0
[00032db0] 6100 fee0                 bsr        delref
[00032db4] 43eb 0086                 lea.l      134(a3),a1
[00032db8] 204c                      movea.l    a4,a0
[00032dba] 6100 fed6                 bsr        delref
[00032dbe] 43eb 008a                 lea.l      138(a3),a1
[00032dc2] 204c                      movea.l    a4,a0
[00032dc4] 6100 fecc                 bsr        delref
[00032dc8] 43eb 008e                 lea.l      142(a3),a1
[00032dcc] 204c                      movea.l    a4,a0
[00032dce] 6100 fec2                 bsr        delref
[00032dd2] 43eb 0092                 lea.l      146(a3),a1
[00032dd6] 204c                      movea.l    a4,a0
[00032dd8] 6100 feb8                 bsr        delref
[00032ddc] 43eb 0096                 lea.l      150(a3),a1
[00032de0] 204c                      movea.l    a4,a0
[00032de2] 6100 feae                 bsr        delref
[00032de6] 202b 009e                 move.l     158(a3),d0
[00032dea] 670a                      beq.s      del_window_7
[00032dec] 2240                      movea.l    d0,a1
[00032dee] 204c                      movea.l    a4,a0
[00032df0] 4eb9 0003 47e8            jsr        del_string
del_window_7:
[00032df6] 202b 009a                 move.l     154(a3),d0
[00032dfa] 670a                      beq.s      del_window_8
[00032dfc] 2240                      movea.l    d0,a1
[00032dfe] 204c                      movea.l    a4,a0
[00032e00] 4eb9 0003 47e8            jsr        del_string
del_window_8:
[00032e06] 224a                      movea.l    a2,a1
[00032e08] 206c 0014                 movea.l    20(a4),a0
[00032e0c] 4eb9 0003 1b00            jsr        del_entry
[00032e12] 224a                      movea.l    a2,a1
[00032e14] 204c                      movea.l    a4,a0
[00032e16] 4eb9 0001 61d4            jsr        objfree
del_window_1:
[00032e1c] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00032e20] 4e75                      rts

new_work:
[00032e22] 303c 2717                 move.w     #$2717,d0
[00032e26] 2279 000a b564            movea.l    $000AB564,a1
[00032e2c] 4eb9 0003 24b6            jsr        work_icon
[00032e32] 4e75                      rts

		.data
NameObj:
[000c1b08]                           dc.b $00
[000c1b09]                           dc.b $00
[000c1b0a]                           dc.b $00
[000c1b0b]                           dc.b $00
[000c1b0c] 000c0c94                  dc.l proto_winame
[000c1b10]                           dc.b $00
[000c1b11]                           dc.b $00
[000c1b12]                           dc.b $00
[000c1b13]                           dc.b $00
[000c1b14]                           dc.b $00
[000c1b15]                           dc.b $0a
[000c1b16]                           dc.b $00
[000c1b17]                           dc.b $00
[000c1b18]                           dc.b $00
[000c1b19]                           dc.b $0a
[000c1b1a]                           dc.b $00
[000c1b1b]                           dc.b $00
[000c1b1c]                           dc.b $00
[000c1b1d]                           dc.b $00
[000c1b1e]                           dc.b 'TEXT_01',0
[000c1b26]                           dc.b $00
[000c1b27]                           dc.b $00
[000c1b28]                           dc.b $00
[000c1b29]                           dc.b $00
[000c1b2a]                           dc.b $00
[000c1b2b]                           dc.b $00
[000c1b2c]                           dc.b $00
[000c1b2d]                           dc.b $00
[000c1b2e]                           dc.b $00
[000c1b2f]                           dc.b $00
[000c1b30]                           dc.b $00
[000c1b31]                           dc.b $00
[000c1b32]                           dc.b $00
[000c1b33]                           dc.b $00
[000c1b34]                           dc.b $00
[000c1b35]                           dc.b $00
[000c1b36]                           dc.b $00
[000c1b37]                           dc.b $00
[000c1b38]                           dc.b $00
[000c1b39]                           dc.b $00
[000c1b3a]                           dc.b $00
[000c1b3b]                           dc.b $00
[000c1b3c]                           dc.b $00
[000c1b3d]                           dc.b $00
[000c1b3e]                           dc.b $00
[000c1b3f]                           dc.b $01
[000c1b40]                           dc.b $00
[000c1b41]                           dc.b $00
[000c1b42]                           dc.b $00
[000c1b43]                           dc.b $00
[000c1b44]                           dc.b $00
[000c1b45]                           dc.b $00
[000c1b46]                           dc.b $00
[000c1b47]                           dc.b $00
[000c1b48]                           dc.b $00
[000c1b49]                           dc.b $00
InfoObj:
[000c1b4a]                           dc.b $00
[000c1b4b]                           dc.b $00
[000c1b4c]                           dc.b $00
[000c1b4d]                           dc.b $00
[000c1b4e] 000c0c93                  dc.l proto_wiinfo
[000c1b52]                           dc.b $00
[000c1b53]                           dc.b $00
[000c1b54]                           dc.b $00
[000c1b55]                           dc.b $00
[000c1b56]                           dc.b $00
[000c1b57]                           dc.b $01
[000c1b58]                           dc.b $00
[000c1b59]                           dc.b $00
[000c1b5a]                           dc.b $00
[000c1b5b]                           dc.b $01
[000c1b5c]                           dc.b $00
[000c1b5d]                           dc.b $00
[000c1b5e]                           dc.b $00
[000c1b5f]                           dc.b $00
[000c1b60]                           dc.b 'TEXT_01',0
[000c1b68]                           dc.b $00
[000c1b69]                           dc.b $00
[000c1b6a]                           dc.b $00
[000c1b6b]                           dc.b $00
[000c1b6c]                           dc.b $00
[000c1b6d]                           dc.b $00
[000c1b6e]                           dc.b $00
[000c1b6f]                           dc.b $00
[000c1b70]                           dc.b $00
[000c1b71]                           dc.b $00
[000c1b72]                           dc.b $00
[000c1b73]                           dc.b $00
[000c1b74]                           dc.b $00
[000c1b75]                           dc.b $00
[000c1b76]                           dc.b $00
[000c1b77]                           dc.b $00
[000c1b78]                           dc.b $00
[000c1b79]                           dc.b $00
[000c1b7a]                           dc.b $00
[000c1b7b]                           dc.b $00
[000c1b7c]                           dc.b $00
[000c1b7d]                           dc.b $00
[000c1b7e]                           dc.b $00
[000c1b7f]                           dc.b $00
[000c1b80]                           dc.b $00
[000c1b81]                           dc.b $01
[000c1b82]                           dc.b $00
[000c1b83]                           dc.b $00
[000c1b84]                           dc.b $00
[000c1b85]                           dc.b $00
[000c1b86]                           dc.b $00
[000c1b87]                           dc.b $00
[000c1b88]                           dc.b $00
[000c1b89]                           dc.b $00
[000c1b8a]                           dc.b $00
[000c1b8b]                           dc.b $00
HelpFileObj:
[000c1b8c]                           dc.b $00
[000c1b8d]                           dc.b $00
[000c1b8e]                           dc.b $00
[000c1b8f]                           dc.b $00
[000c1b90] 000c0c91                  dc.l proto_wihelpfile
[000c1b94]                           dc.b $00
[000c1b95]                           dc.b $00
[000c1b96]                           dc.b $00
[000c1b97]                           dc.b $00
[000c1b98]                           dc.b $00
[000c1b99]                           dc.b $01
[000c1b9a]                           dc.b $00
[000c1b9b]                           dc.b $00
[000c1b9c]                           dc.b $00
[000c1b9d]                           dc.b $01
[000c1b9e]                           dc.b $00
[000c1b9f]                           dc.b $00
[000c1ba0]                           dc.b $00
[000c1ba1]                           dc.b $00
[000c1ba2]                           dc.b 'HELPFILE_01',0
[000c1bae]                           dc.b $00
[000c1baf]                           dc.b $00
[000c1bb0]                           dc.b $00
[000c1bb1]                           dc.b $00
[000c1bb2]                           dc.b $00
[000c1bb3]                           dc.b $00
[000c1bb4]                           dc.b $00
[000c1bb5]                           dc.b $00
[000c1bb6]                           dc.b $00
[000c1bb7]                           dc.b $00
[000c1bb8]                           dc.b $00
[000c1bb9]                           dc.b $00
[000c1bba]                           dc.b $00
[000c1bbb]                           dc.b $00
[000c1bbc]                           dc.b $00
[000c1bbd]                           dc.b $00
[000c1bbe]                           dc.b $00
[000c1bbf]                           dc.b $00
[000c1bc0]                           dc.b $00
[000c1bc1]                           dc.b $00
[000c1bc2]                           dc.b $00
[000c1bc3]                           dc.b $01
[000c1bc4]                           dc.b $00
[000c1bc5]                           dc.b $00
[000c1bc6]                           dc.b $00
[000c1bc7]                           dc.b $00
[000c1bc8]                           dc.b $00
[000c1bc9]                           dc.b $00
[000c1bca]                           dc.b $00
[000c1bcb]                           dc.b $00
[000c1bcc]                           dc.b $00
[000c1bcd]                           dc.b $00
HelpTitleObj:
[000c1bce]                           dc.b $00
[000c1bcf]                           dc.b $00
[000c1bd0]                           dc.b $00
[000c1bd1]                           dc.b $00
[000c1bd2] 000c0c92                  dc.l proto_wihelptitle
[000c1bd6]                           dc.b $00
[000c1bd7]                           dc.b $00
[000c1bd8]                           dc.b $00
[000c1bd9]                           dc.b $00
[000c1bda]                           dc.b $00
[000c1bdb]                           dc.b $01
[000c1bdc]                           dc.b $00
[000c1bdd]                           dc.b $00
[000c1bde]                           dc.b $00
[000c1bdf]                           dc.b $01
[000c1be0]                           dc.b $00
[000c1be1]                           dc.b $00
[000c1be2]                           dc.b $00
[000c1be3]                           dc.b $00
[000c1be4]                           dc.b 'STGUIDE_01',0
[000c1bef]                           dc.b $00
[000c1bf0]                           dc.b $00
[000c1bf1]                           dc.b $00
[000c1bf2]                           dc.b $00
[000c1bf3]                           dc.b $00
[000c1bf4]                           dc.b $00
[000c1bf5]                           dc.b $00
[000c1bf6]                           dc.b $00
[000c1bf7]                           dc.b $00
[000c1bf8]                           dc.b $00
[000c1bf9]                           dc.b $00
[000c1bfa]                           dc.b $00
[000c1bfb]                           dc.b $00
[000c1bfc]                           dc.b $00
[000c1bfd]                           dc.b $00
[000c1bfe]                           dc.b $00
[000c1bff]                           dc.b $00
[000c1c00]                           dc.b $00
[000c1c01]                           dc.b $00
[000c1c02]                           dc.b $00
[000c1c03]                           dc.b $00
[000c1c04]                           dc.b $00
[000c1c05]                           dc.b $01
[000c1c06]                           dc.b $00
[000c1c07]                           dc.b $00
[000c1c08]                           dc.b $00
[000c1c09]                           dc.b $00
[000c1c0a]                           dc.b $00
[000c1c0b]                           dc.b $00
[000c1c0c]                           dc.b $00
[000c1c0d]                           dc.b $00
[000c1c0e]                           dc.b $00
[000c1c0f]                           dc.b $00
window_obj:
[000c1c10]                           dc.b $00
[000c1c11]                           dc.b $00
[000c1c12]                           dc.b $00
[000c1c13]                           dc.b $00
[000c1c14]                           dc.b $00
[000c1c15]                           dc.b $00
[000c1c16]                           dc.b $00
[000c1c17]                           dc.b $00
[000c1c18]                           dc.b $00
[000c1c19]                           dc.b $00
[000c1c1a]                           dc.b $00
[000c1c1b]                           dc.b $00
[000c1c1c]                           dc.b $00
[000c1c1d]                           dc.b $00
[000c1c1e]                           dc.b $00
[000c1c1f]                           dc.b $00
[000c1c20]                           dc.b $00
[000c1c21]                           dc.b $00
[000c1c22]                           dc.b $00
[000c1c23]                           dc.b $00
[000c1c24]                           dc.b $00
[000c1c25]                           dc.b $00
[000c1c26]                           dc.b $00
[000c1c27]                           dc.b $00
[000c1c28]                           dc.b $00
[000c1c29]                           dc.b $00
[000c1c2a]                           dc.b $00
[000c1c2b]                           dc.b $00
[000c1c2c]                           dc.b $00
[000c1c2d]                           dc.b $00
[000c1c2e]                           dc.b $00
[000c1c2f]                           dc.b $00
[000c1c30]                           dc.w $ffff
[000c1c32]                           dc.w $6fff
[000c1c34]                           dc.b $00
[000c1c35]                           dc.b $00
[000c1c36]                           dc.b $00
[000c1c37]                           dc.b $00
[000c1c38]                           dc.b $00
[000c1c39]                           dc.b $78
[000c1c3a]                           dc.b $00
[000c1c3b]                           dc.b $32
[000c1c3c]                           dc.b $00
[000c1c3d]                           dc.b $00
[000c1c3e]                           dc.b $00
[000c1c3f]                           dc.b $00
[000c1c40]                           dc.b $00
[000c1c41]                           dc.b $00
[000c1c42]                           dc.b $00
[000c1c43]                           dc.b $00
[000c1c44]                           dc.b $00
[000c1c45]                           dc.b $00
[000c1c46]                           dc.b $00
[000c1c47]                           dc.b $00
[000c1c48]                           dc.b $00
[000c1c49]                           dc.b $00
[000c1c4a]                           dc.b $00
[000c1c4b]                           dc.b $00
[000c1c4c]                           dc.w $ffff
[000c1c4e]                           dc.w $ffff
[000c1c50]                           dc.w $ffff
[000c1c52]                           dc.w $ffff
[000c1c54]                           dc.b $00
[000c1c55]                           dc.b $00
[000c1c56]                           dc.b $00
[000c1c57]                           dc.b $00
[000c1c58]                           dc.w $f8f8
[000c1c5a] 000c1b08                  dc.l NameObj
[000c1c5e] 000c1b4a                  dc.l InfoObj
[000c1c62]                           dc.b $00
[000c1c63]                           dc.b $00
[000c1c64]                           dc.w $0103
[000c1c66]                           dc.b $00
[000c1c67]                           dc.b $00
[000c1c68]                           dc.w $ffff
[000c1c6a]                           dc.b $00
[000c1c6b]                           dc.b $00
[000c1c6c]                           dc.b $00
[000c1c6d]                           dc.b $00
[000c1c6e]                           dc.b $00
[000c1c6f]                           dc.b $00
[000c1c70]                           dc.b $00
[000c1c71]                           dc.b $00
[000c1c72]                           dc.b $00
[000c1c73]                           dc.b $00
[000c1c74]                           dc.b $00
[000c1c75]                           dc.b $00
[000c1c76]                           dc.b $00
[000c1c77]                           dc.b $00
[000c1c78]                           dc.b $00
[000c1c79]                           dc.b $00
[000c1c7a]                           dc.b $00
[000c1c7b]                           dc.b $00
[000c1c7c]                           dc.b $00
[000c1c7d]                           dc.b $00
[000c1c7e]                           dc.b $00
[000c1c7f]                           dc.b $00
[000c1c80]                           dc.b $00
[000c1c81]                           dc.b $00
[000c1c82]                           dc.b $00
[000c1c83]                           dc.b $00
[000c1c84]                           dc.b $00
[000c1c85]                           dc.b $00
[000c1c86]                           dc.b $00
[000c1c87]                           dc.b $00
[000c1c88]                           dc.b $00
[000c1c89]                           dc.b $00
[000c1c8a]                           dc.b $00
[000c1c8b]                           dc.b $00
[000c1c8c]                           dc.b $00
[000c1c8d]                           dc.b $00
[000c1c8e]                           dc.b $00
[000c1c8f]                           dc.b $00
[000c1c90]                           dc.b $00
[000c1c91]                           dc.b $00
[000c1c92]                           dc.b $00
[000c1c93]                           dc.b $00
[000c1c94]                           dc.b $00
[000c1c95]                           dc.b $00
[000c1c96]                           dc.b $00
[000c1c97]                           dc.b $00
[000c1c98]                           dc.b $00
[000c1c99]                           dc.b $00
[000c1c9a]                           dc.b $00
[000c1c9b]                           dc.b $00
[000c1c9c]                           dc.b $00
[000c1c9d]                           dc.b $00
[000c1c9e]                           dc.b $00
[000c1c9f]                           dc.b $00
[000c1ca0]                           dc.b $00
[000c1ca1]                           dc.b $00
[000c1ca2]                           dc.b $00
[000c1ca3]                           dc.b $00
[000c1ca4]                           dc.b $00
[000c1ca5]                           dc.b $00
[000c1ca6]                           dc.b $00
[000c1ca7]                           dc.b $00
[000c1ca8]                           dc.b $00
[000c1ca9]                           dc.b $00
[000c1caa] 000c1b8c                  dc.l HelpFileObj
[000c1cae] 000c1bce                  dc.l HelpTitleObj
protowindow:
[000c1cb2]                           dc.b $00
[000c1cb3]                           dc.b $00
[000c1cb4]                           dc.b $00
[000c1cb5]                           dc.b $00
[000c1cb6] 000c1c10                  dc.l window_obj
[000c1cba]                           dc.b $00
[000c1cbb]                           dc.b $00
[000c1cbc]                           dc.b $00
[000c1cbd]                           dc.b $00
[000c1cbe]                           dc.b $00
[000c1cbf]                           dc.b $a2
[000c1cc0]                           dc.b $00
[000c1cc1]                           dc.b $00
[000c1cc2]                           dc.b $00
[000c1cc3]                           dc.b $a2
[000c1cc4]                           dc.b $00
[000c1cc5]                           dc.b $00
[000c1cc6]                           dc.b $00
[000c1cc7]                           dc.b $00
[000c1cc8]                           dc.b 'WINDOW_01',0
[000c1cd2]                           dc.b $00
[000c1cd3]                           dc.b $00
[000c1cd4]                           dc.b $00
[000c1cd5]                           dc.b $00
[000c1cd6]                           dc.b $00
[000c1cd7]                           dc.b $00
[000c1cd8]                           dc.b $00
[000c1cd9]                           dc.b $00
[000c1cda]                           dc.b $00
[000c1cdb]                           dc.b $00
[000c1cdc]                           dc.b $00
[000c1cdd]                           dc.b $00
[000c1cde]                           dc.b $00
[000c1cdf]                           dc.b $00
[000c1ce0]                           dc.b $00
[000c1ce1]                           dc.b $00
[000c1ce2]                           dc.b $00
[000c1ce3]                           dc.b $00
[000c1ce4]                           dc.b $00
[000c1ce5]                           dc.b $00
[000c1ce6]                           dc.b $00
[000c1ce7]                           dc.b $00
[000c1ce8]                           dc.b $00
[000c1ce9]                           dc.b $01
[000c1cea]                           dc.b $00
[000c1ceb]                           dc.b $00
[000c1cec]                           dc.b $00
[000c1ced]                           dc.b $00
[000c1cee]                           dc.b $00
[000c1cef]                           dc.b $00
[000c1cf0]                           dc.b $00
[000c1cf1]                           dc.b $00
[000c1cf2]                           dc.b $00
[000c1cf3]                           dc.b $00
list_window:
[000c1cf4]                           dc.b $00
[000c1cf5]                           dc.b $00
[000c1cf6]                           dc.b $00
[000c1cf7]                           dc.b $00
[000c1cf8]                           dc.b $00
[000c1cf9]                           dc.b $00
[000c1cfa]                           dc.b $00
[000c1cfb]                           dc.b $00
[000c1cfc] 000ab50a                  dc.l WI_WINDOW
[000c1d00] 000c0d2a                  dc.l wi_list
[000c1d04] 000c0d3a                  dc.l wi_name
[000c1d08]                           dc.w $2717
[000c1d0a] 000c1cb2                  dc.l protowindow
[000c1d0e] 00032b06                  dc.l copy_window
[000c1d12] 00032ca6                  dc.l del_window
[000c1d16] 00032e22                  dc.l new_work
[000c1d1a]                           dc.b $00
[000c1d1b]                           dc.b $00
[000c1d1c]                           dc.b $00
[000c1d1d]                           dc.b $00
