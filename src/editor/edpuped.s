pu_init:
[00024b4e] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[00024b52] 2448                      movea.l    a0,a2
[00024b54] 4eb9 0002 aada            jsr        $0002AADA
[00024b5a] 4a40                      tst.w      d0
[00024b5c] 6704                      beq.s      $00024B62
[00024b5e] 70ff                      moveq.l    #-1,d0
[00024b60] 6066                      bra.s      $00024BC8
[00024b62] 266a 0014                 movea.l    20(a2),a3
[00024b66] 284b                      movea.l    a3,a4
[00024b68] 2a52                      movea.l    (a2),a5
[00024b6a] 2c6d 0004                 movea.l    4(a5),a6
[00024b6e] 202e 000e                 move.l     14(a6),d0
[00024b72] 7238                      moveq.l    #56,d1
[00024b74] 4eb9 0007 769e            jsr        $0007769E
[00024b7a] 2600                      move.l     d0,d3
[00024b7c] 2079 0010 1f12            movea.l    ACSblk,a0
[00024b82] 3768 000c 0014            move.w     12(a0),20(a3)
[00024b88] 2079 0010 1f12            movea.l    ACSblk,a0
[00024b8e] 3768 000e 0016            move.w     14(a0),22(a3)
[00024b94] 4244                      clr.w      d4
[00024b96] 601e                      bra.s      $00024BB6
[00024b98] 3a04                      move.w     d4,d5
[00024b9a] da45                      add.w      d5,d5
[00024b9c] da44                      add.w      d4,d5
[00024b9e] 5645                      addq.w     #3,d5
[00024ba0] 3205                      move.w     d5,d1
[00024ba2] 48c1                      ext.l      d1
[00024ba4] 2001                      move.l     d1,d0
[00024ba6] d080                      add.l      d0,d0
[00024ba8] d081                      add.l      d1,d0
[00024baa] e788                      lsl.l      #3,d0
[00024bac] 29bc 0002 4dbe 0800       move.l     #$00024DBE,0(a4,d0.l)
[00024bb4] 5244                      addq.w     #1,d4
[00024bb6] b644                      cmp.w      d4,d3
[00024bb8] 6ede                      bgt.s      $00024B98
[00024bba] 302d 0018                 move.w     24(a5),d0
[00024bbe] 204a                      movea.l    a2,a0
[00024bc0] 4eb9 0002 4f68            jsr        $00024F68
[00024bc6] 4240                      clr.w      d0
[00024bc8] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[00024bcc] 4e75                      rts
pu_make:
[00024bce] 48e7 0038                 movem.l    a2-a4,-(a7)
[00024bd2] 594f                      subq.w     #4,a7
[00024bd4] 2e88                      move.l     a0,(a7)
[00024bd6] 2668 0004                 movea.l    4(a0),a3
[00024bda] 286b 0012                 movea.l    18(a3),a4
[00024bde] 200c                      move.l     a4,d0
[00024be0] 670c                      beq.s      $00024BEE
[00024be2] 204c                      movea.l    a4,a0
[00024be4] 4eb9 0004 f0ca            jsr        $0004F0CA
[00024bea] 6000 0086                 bra        $00024C72
[00024bee] 7032                      moveq.l    #50,d0
[00024bf0] 4eb9 0004 7cc8            jsr        Ax_malloc
[00024bf6] 2448                      movea.l    a0,a2
[00024bf8] 200a                      move.l     a2,d0
[00024bfa] 6772                      beq.s      $00024C6E
[00024bfc] 2257                      movea.l    (a7),a1
[00024bfe] 2091                      move.l     (a1),(a0)
[00024c00] 254b 0004                 move.l     a3,4(a2)
[00024c04] 357c 0001 0008            move.w     #$0001,8(a2)
[00024c0a] 357c 0002 0018            move.w     #$0002,24(a2)
[00024c10] 426a 000a                 clr.w      10(a2)
[00024c14] 42aa 001e                 clr.l      30(a2)
[00024c18] 43eb 0016                 lea.l      22(a3),a1
[00024c1c] 23c9 000b ca68            move.l     a1,$000BCA68
[00024c22] 2079 000b ca74            movea.l    $000BCA74,a0
[00024c28] 2149 0008                 move.l     a1,8(a0)
[00024c2c] 41f9 000b ca1a            lea.l      $000BCA1A,a0
[00024c32] 4eb9 0004 f41a            jsr        $0004F41A
[00024c38] 2848                      movea.l    a0,a4
[00024c3a] 200c                      move.l     a4,d0
[00024c3c] 6730                      beq.s      $00024C6E
[00024c3e] 2257                      movea.l    (a7),a1
[00024c40] 2051                      movea.l    (a1),a0
[00024c42] 4868 0168                 pea.l      360(a0)
[00024c46] 43eb 003a                 lea.l      58(a3),a1
[00024c4a] 204c                      movea.l    a4,a0
[00024c4c] 4eb9 0001 47a8            jsr        $000147A8
[00024c52] 584f                      addq.w     #4,a7
[00024c54] 288a                      move.l     a2,(a4)
[00024c56] 274c 0012                 move.l     a4,18(a3)
[00024c5a] 204c                      movea.l    a4,a0
[00024c5c] 226c 000c                 movea.l    12(a4),a1
[00024c60] 4e91                      jsr        (a1)
[00024c62] 4a40                      tst.w      d0
[00024c64] 670c                      beq.s      $00024C72
[00024c66] 204c                      movea.l    a4,a0
[00024c68] 4eb9 0002 af6a            jsr        $0002AF6A
[00024c6e] 91c8                      suba.l     a0,a0
[00024c70] 6002                      bra.s      $00024C74
[00024c72] 204c                      movea.l    a4,a0
[00024c74] 584f                      addq.w     #4,a7
[00024c76] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00024c7a] 4e75                      rts
new_menu:
[00024c7c] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[00024c80] 2448                      movea.l    a0,a2
[00024c82] 3800                      move.w     d0,d4
[00024c84] 2050                      movea.l    (a0),a0
[00024c86] 2650                      movea.l    (a0),a3
[00024c88] 2868 0004                 movea.l    4(a0),a4
[00024c8c] 4879 000a f22c            pea.l      $000AF22C
[00024c92] 224c                      movea.l    a4,a1
[00024c94] 204b                      movea.l    a3,a0
[00024c96] 4240                      clr.w      d0
[00024c98] 4eb9 0002 b77e            jsr        $0002B77E
[00024c9e] 584f                      addq.w     #4,a7
[00024ca0] 3600                      move.w     d0,d3
[00024ca2] 72fe                      moveq.l    #-2,d1
[00024ca4] d244                      add.w      d4,d1
[00024ca6] 48c1                      ext.l      d1
[00024ca8] 83fc 0003                 divs.w     #$0003,d1
[00024cac] 3801                      move.w     d1,d4
[00024cae] 286c 0004                 movea.l    4(a4),a4
[00024cb2] 48c1                      ext.l      d1
[00024cb4] 2401                      move.l     d1,d2
[00024cb6] e78a                      lsl.l      #3,d2
[00024cb8] 9481                      sub.l      d1,d2
[00024cba] e78a                      lsl.l      #3,d2
[00024cbc] 3980 280c                 move.w     d0,12(a4,d2.l)
[00024cc0] 3980 280a                 move.w     d0,10(a4,d2.l)
[00024cc4] 3203                      move.w     d3,d1
[00024cc6] 48c1                      ext.l      d1
[00024cc8] 2001                      move.l     d1,d0
[00024cca] e788                      lsl.l      #3,d0
[00024ccc] 9081                      sub.l      d1,d0
[00024cce] e788                      lsl.l      #3,d0
[00024cd0] 3984 0808                 move.w     d4,8(a4,d0.l)
[00024cd4] 204a                      movea.l    a2,a0
[00024cd6] 226a 0010                 movea.l    16(a2),a1
[00024cda] 4e91                      jsr        (a1)
[00024cdc] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[00024ce0] 4e75                      rts
open_menu:
[00024ce2] 48e7 1c38                 movem.l    d3-d5/a2-a4,-(a7)
[00024ce6] 2079 0010 1f12            movea.l    ACSblk,a0
[00024cec] 3628 0260                 move.w     608(a0),d3
[00024cf0] 2468 0258                 movea.l    600(a0),a2
[00024cf4] 266a 0014                 movea.l    20(a2),a3
[00024cf8] 3203                      move.w     d3,d1
[00024cfa] 48c1                      ext.l      d1
[00024cfc] 2001                      move.l     d1,d0
[00024cfe] d080                      add.l      d0,d0
[00024d00] d081                      add.l      d1,d0
[00024d02] e788                      lsl.l      #3,d0
[00024d04] 3833 0802                 move.w     2(a3,d0.l),d4
[00024d08] 4eb9 0004 4a26            jsr        $00044A26
[00024d0e] 2852                      movea.l    (a2),a4
[00024d10] 3a2c 0018                 move.w     24(a4),d5
[00024d14] 4a44                      tst.w      d4
[00024d16] 6a26                      bpl.s      $00024D3E
[00024d18] 4eb9 0004 ad60            jsr        $0004AD60
[00024d1e] 41f9 000b 8518            lea.l      $000B8518,a0
[00024d24] 7001                      moveq.l    #1,d0
[00024d26] 4eb9 0005 17fe            jsr        $000517FE
[00024d2c] 5540                      subq.w     #2,d0
[00024d2e] 6700 0088                 beq        $00024DB8
[00024d32] 3003                      move.w     d3,d0
[00024d34] 204a                      movea.l    a2,a0
[00024d36] 6100 ff44                 bsr        $00024C7C
[00024d3a] 266a 0014                 movea.l    20(a2),a3
[00024d3e] 7201                      moveq.l    #1,d1
[00024d40] 3403                      move.w     d3,d2
[00024d42] 48c2                      ext.l      d2
[00024d44] 2002                      move.l     d2,d0
[00024d46] d080                      add.l      d0,d0
[00024d48] d082                      add.l      d2,d0
[00024d4a] e788                      lsl.l      #3,d0
[00024d4c] 8273 08f2                 or.w       -14(a3,d0.l),d1
[00024d50] 70ff                      moveq.l    #-1,d0
[00024d52] d043                      add.w      d3,d0
[00024d54] 204a                      movea.l    a2,a0
[00024d56] 226a 0066                 movea.l    102(a2),a1
[00024d5a] 4e91                      jsr        (a1)
[00024d5c] 7801                      moveq.l    #1,d4
[00024d5e] 3203                      move.w     d3,d1
[00024d60] 48c1                      ext.l      d1
[00024d62] 2001                      move.l     d1,d0
[00024d64] d080                      add.l      d0,d0
[00024d66] d081                      add.l      d1,d0
[00024d68] e788                      lsl.l      #3,d0
[00024d6a] d873 0802                 add.w      2(a3,d0.l),d4
[00024d6e] 3944 0018                 move.w     d4,24(a4)
[00024d72] 74fe                      moveq.l    #-2,d2
[00024d74] d444                      add.w      d4,d2
[00024d76] 48c2                      ext.l      d2
[00024d78] 85fc 0003                 divs.w     #$0003,d2
[00024d7c] 3942 000a                 move.w     d2,10(a4)
[00024d80] 3005                      move.w     d5,d0
[00024d82] 48c0                      ext.l      d0
[00024d84] 2600                      move.l     d0,d3
[00024d86] d683                      add.l      d3,d3
[00024d88] d680                      add.l      d0,d3
[00024d8a] e78b                      lsl.l      #3,d3
[00024d8c] 0273 e7ff 3808            andi.w     #$E7FF,8(a3,d3.l)
[00024d92] 3204                      move.w     d4,d1
[00024d94] 48c1                      ext.l      d1
[00024d96] 2a01                      move.l     d1,d5
[00024d98] da85                      add.l      d5,d5
[00024d9a] da81                      add.l      d1,d5
[00024d9c] e78d                      lsl.l      #3,d5
[00024d9e] 0073 1800 5808            ori.w      #$1800,8(a3,d5.l)
[00024da4] 204a                      movea.l    a2,a0
[00024da6] 3004                      move.w     d4,d0
[00024da8] 4eb9 0002 4f68            jsr        $00024F68
[00024dae] 3004                      move.w     d4,d0
[00024db0] 204a                      movea.l    a2,a0
[00024db2] 4eb9 0004 b846            jsr        $0004B846
[00024db8] 4cdf 1c38                 movem.l    (a7)+,d3-d5/a2-a4
[00024dbc] 4e75                      rts
pup_edit:
[00024dbe] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00024dc2] 4fef fff0                 lea.l      -16(a7),a7
[00024dc6] 2079 0010 1f12            movea.l    ACSblk,a0
[00024dcc] 2468 0258                 movea.l    600(a0),a2
[00024dd0] 266a 0014                 movea.l    20(a2),a3
[00024dd4] 3828 0260                 move.w     608(a0),d4
[00024dd8] 2852                      movea.l    (a2),a4
[00024dda] 362c 0018                 move.w     24(a4),d3
[00024dde] 70ff                      moveq.l    #-1,d0
[00024de0] d043                      add.w      d3,d0
[00024de2] 224b                      movea.l    a3,a1
[00024de4] 41d7                      lea.l      (a7),a0
[00024de6] 4eb9 0004 a3be            jsr        $0004A3BE
[00024dec] 70ff                      moveq.l    #-1,d0
[00024dee] d044                      add.w      d4,d0
[00024df0] 224b                      movea.l    a3,a1
[00024df2] 41ef 0008                 lea.l      8(a7),a0
[00024df6] 4eb9 0004 a3be            jsr        $0004A3BE
[00024dfc] 43ef 0008                 lea.l      8(a7),a1
[00024e00] 41d7                      lea.l      (a7),a0
[00024e02] 4eb9 0005 f94a            jsr        $0005F94A
[00024e08] 302f 0004                 move.w     4(a7),d0
[00024e0c] 6752                      beq.s      $00024E60
[00024e0e] 2079 0010 1f12            movea.l    ACSblk,a0
[00024e14] 0c68 0002 02ca            cmpi.w     #$0002,714(a0)
[00024e1a] 6616                      bne.s      $00024E32
[00024e1c] 204b                      movea.l    a3,a0
[00024e1e] 3004                      move.w     d4,d0
[00024e20] 4eb9 0004 af6c            jsr        $0004AF6C
[00024e26] b640                      cmp.w      d0,d3
[00024e28] 6608                      bne.s      $00024E32
[00024e2a] 6100 feb6                 bsr        $00024CE2
[00024e2e] 6000 012e                 bra        $00024F5E
[00024e32] 3204                      move.w     d4,d1
[00024e34] 48c1                      ext.l      d1
[00024e36] 2001                      move.l     d1,d0
[00024e38] d080                      add.l      d0,d0
[00024e3a] d081                      add.l      d1,d0
[00024e3c] e788                      lsl.l      #3,d0
[00024e3e] 0073 0040 080a            ori.w      #$0040,10(a3,d0.l)
[00024e44] 4eb9 0002 c55a            jsr        $0002C55A
[00024e4a] 3204                      move.w     d4,d1
[00024e4c] 48c1                      ext.l      d1
[00024e4e] 2001                      move.l     d1,d0
[00024e50] d080                      add.l      d0,d0
[00024e52] d081                      add.l      d1,d0
[00024e54] e788                      lsl.l      #3,d0
[00024e56] 0273 ffbf 080a            andi.w     #$FFBF,10(a3,d0.l)
[00024e5c] 6000 0100                 bra        $00024F5E
[00024e60] 4eb9 0004 4a26            jsr        $00044A26
[00024e66] 3203                      move.w     d3,d1
[00024e68] 48c1                      ext.l      d1
[00024e6a] 2001                      move.l     d1,d0
[00024e6c] d080                      add.l      d0,d0
[00024e6e] d081                      add.l      d1,d0
[00024e70] e788                      lsl.l      #3,d0
[00024e72] 0273 e7ff 0808            andi.w     #$E7FF,8(a3,d0.l)
[00024e78] 204a                      movea.l    a2,a0
[00024e7a] 3003                      move.w     d3,d0
[00024e7c] 4eb9 0002 d8e6            jsr        $0002D8E6
[00024e82] 7801                      moveq.l    #1,d4
[00024e84] d86b 0002                 add.w      2(a3),d4
[00024e88] 6014                      bra.s      $00024E9E
[00024e8a] 7001                      moveq.l    #1,d0
[00024e8c] 3404                      move.w     d4,d2
[00024e8e] 48c2                      ext.l      d2
[00024e90] 2202                      move.l     d2,d1
[00024e92] d281                      add.l      d1,d1
[00024e94] d282                      add.l      d2,d1
[00024e96] e789                      lsl.l      #3,d1
[00024e98] d073 1800                 add.w      0(a3,d1.l),d0
[00024e9c] 3800                      move.w     d0,d4
[00024e9e] 7001                      moveq.l    #1,d0
[00024ea0] 3404                      move.w     d4,d2
[00024ea2] 48c2                      ext.l      d2
[00024ea4] 2202                      move.l     d2,d1
[00024ea6] d281                      add.l      d1,d1
[00024ea8] d282                      add.l      d2,d1
[00024eaa] e789                      lsl.l      #3,d1
[00024eac] d073 1800                 add.w      0(a3,d1.l),d0
[00024eb0] b640                      cmp.w      d0,d3
[00024eb2] 66d6                      bne.s      $00024E8A
[00024eb4] 4273 1800                 clr.w      0(a3,d1.l)
[00024eb8] 3744 0004                 move.w     d4,4(a3)
[00024ebc] 206c 0004                 movea.l    4(a4),a0
[00024ec0] 2a68 0004                 movea.l    4(a0),a5
[00024ec4] 78fe                      moveq.l    #-2,d4
[00024ec6] d843                      add.w      d3,d4
[00024ec8] 48c4                      ext.l      d4
[00024eca] 89fc 0003                 divs.w     #$0003,d4
[00024ece] 48c4                      ext.l      d4
[00024ed0] 2004                      move.l     d4,d0
[00024ed2] e788                      lsl.l      #3,d0
[00024ed4] 9084                      sub.l      d4,d0
[00024ed6] e788                      lsl.l      #3,d0
[00024ed8] dbc0                      adda.l     d0,a5
[00024eda] 342d 0008                 move.w     8(a5),d2
[00024ede] 3802                      move.w     d2,d4
[00024ee0] d844                      add.w      d4,d4
[00024ee2] d842                      add.w      d2,d4
[00024ee4] 5444                      addq.w     #2,d4
[00024ee6] 72ff                      moveq.l    #-1,d1
[00024ee8] d243                      add.w      d3,d1
[00024eea] 3404                      move.w     d4,d2
[00024eec] 48c2                      ext.l      d2
[00024eee] 2002                      move.l     d2,d0
[00024ef0] d080                      add.l      d0,d0
[00024ef2] d082                      add.l      d2,d0
[00024ef4] e788                      lsl.l      #3,d0
[00024ef6] 3781 0802                 move.w     d1,2(a3,d0.l)
[00024efa] 3783 0804                 move.w     d3,4(a3,d0.l)
[00024efe] 3403                      move.w     d3,d2
[00024f00] 48c2                      ext.l      d2
[00024f02] 2202                      move.l     d2,d1
[00024f04] d281                      add.l      d1,d1
[00024f06] d282                      add.l      d2,d1
[00024f08] e789                      lsl.l      #3,d1
[00024f0a] 3784 1800                 move.w     d4,0(a3,d1.l)
[00024f0e] 3233 08f0                 move.w     -16(a3,d0.l),d1
[00024f12] c27c fffe                 and.w      #$FFFE,d1
[00024f16] 70ff                      moveq.l    #-1,d0
[00024f18] d044                      add.w      d4,d0
[00024f1a] 204a                      movea.l    a2,a0
[00024f1c] 226a 0066                 movea.l    102(a2),a1
[00024f20] 4e91                      jsr        (a1)
[00024f22] 3004                      move.w     d4,d0
[00024f24] 204b                      movea.l    a3,a0
[00024f26] 4eb9 0004 af6c            jsr        $0004AF6C
[00024f2c] 3600                      move.w     d0,d3
[00024f2e] 3940 0018                 move.w     d0,24(a4)
[00024f32] 4a43                      tst.w      d3
[00024f34] 6b10                      bmi.s      $00024F46
[00024f36] 72fe                      moveq.l    #-2,d1
[00024f38] d243                      add.w      d3,d1
[00024f3a] 48c1                      ext.l      d1
[00024f3c] 83fc 0003                 divs.w     #$0003,d1
[00024f40] 3941 000a                 move.w     d1,10(a4)
[00024f44] 6006                      bra.s      $00024F4C
[00024f46] 397c ffff 000a            move.w     #$FFFF,10(a4)
[00024f4c] 3203                      move.w     d3,d1
[00024f4e] 48c1                      ext.l      d1
[00024f50] 2001                      move.l     d1,d0
[00024f52] d080                      add.l      d0,d0
[00024f54] d081                      add.l      d1,d0
[00024f56] e788                      lsl.l      #3,d0
[00024f58] 0073 1800 0808            ori.w      #$1800,8(a3,d0.l)
[00024f5e] 4fef 0010                 lea.l      16(a7),a7
[00024f62] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[00024f66] 4e75                      rts
set_menu:
[00024f68] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[00024f6c] 2448                      movea.l    a0,a2
[00024f6e] 3600                      move.w     d0,d3
[00024f70] 266a 0014                 movea.l    20(a2),a3
[00024f74] 204b                      movea.l    a3,a0
[00024f76] 4eb9 0004 af6c            jsr        $0004AF6C
[00024f7c] 3800                      move.w     d0,d4
[00024f7e] 5340                      subq.w     #1,d0
[00024f80] 6d00 00b6                 blt        $00025038
[00024f84] 72ff                      moveq.l    #-1,d1
[00024f86] 3004                      move.w     d4,d0
[00024f88] 48c0                      ext.l      d0
[00024f8a] 2400                      move.l     d0,d2
[00024f8c] d482                      add.l      d2,d2
[00024f8e] d480                      add.l      d0,d2
[00024f90] e78a                      lsl.l      #3,d2
[00024f92] 3781 2804                 move.w     d1,4(a3,d2.l)
[00024f96] 3781 2802                 move.w     d1,2(a3,d2.l)
[00024f9a] 0073 0001 28f2            ori.w      #$0001,-14(a3,d2.l)
[00024fa0] 3003                      move.w     d3,d0
[00024fa2] 48c0                      ext.l      d0
[00024fa4] 2200                      move.l     d0,d1
[00024fa6] d281                      add.l      d1,d1
[00024fa8] d280                      add.l      d0,d1
[00024faa] e789                      lsl.l      #3,d1
[00024fac] 0273 ff7f 1808            andi.w     #$FF7F,8(a3,d1.l)
[00024fb2] 0273 ff7f 18f0            andi.w     #$FF7F,-16(a3,d1.l)
[00024fb8] 204b                      movea.l    a3,a0
[00024fba] 3004                      move.w     d4,d0
[00024fbc] 4eb9 0004 af6c            jsr        $0004AF6C
[00024fc2] 3800                      move.w     d0,d4
[00024fc4] 204a                      movea.l    a2,a0
[00024fc6] 6100 ffa0                 bsr.w      $00024F68
[00024fca] 382b 0004                 move.w     4(a3),d4
[00024fce] 302b 002a                 move.w     42(a3),d0
[00024fd2] 3403                      move.w     d3,d2
[00024fd4] 48c2                      ext.l      d2
[00024fd6] 2202                      move.l     d2,d1
[00024fd8] d281                      add.l      d1,d1
[00024fda] d282                      add.l      d2,d1
[00024fdc] e789                      lsl.l      #3,d1
[00024fde] 3780 1812                 move.w     d0,18(a3,d1.l)
[00024fe2] 3780 18fa                 move.w     d0,-6(a3,d1.l)
[00024fe6] 3404                      move.w     d4,d2
[00024fe8] 48c2                      ext.l      d2
[00024fea] 2002                      move.l     d2,d0
[00024fec] d080                      add.l      d0,d0
[00024fee] d082                      add.l      d2,d0
[00024ff0] e788                      lsl.l      #3,d0
[00024ff2] 3233 0810                 move.w     16(a3,d0.l),d1
[00024ff6] d273 0814                 add.w      20(a3,d0.l),d1
[00024ffa] 2079 0010 1f12            movea.l    ACSblk,a0
[00025000] 3428 0012                 move.w     18(a0),d2
[00025004] d442                      add.w      d2,d2
[00025006] d242                      add.w      d2,d1
[00025008] 3403                      move.w     d3,d2
[0002500a] 48c2                      ext.l      d2
[0002500c] 2002                      move.l     d2,d0
[0002500e] d080                      add.l      d0,d0
[00025010] d082                      add.l      d2,d0
[00025012] e788                      lsl.l      #3,d0
[00025014] 3781 0810                 move.w     d1,16(a3,d0.l)
[00025018] 3781 08f8                 move.w     d1,-8(a3,d0.l)
[0002501c] 4273 0800                 clr.w      0(a3,d0.l)
[00025020] 72ff                      moveq.l    #-1,d1
[00025022] d243                      add.w      d3,d1
[00025024] 3004                      move.w     d4,d0
[00025026] 48c0                      ext.l      d0
[00025028] 2400                      move.l     d0,d2
[0002502a] d482                      add.l      d2,d2
[0002502c] d480                      add.l      d0,d2
[0002502e] e78a                      lsl.l      #3,d2
[00025030] 3781 2800                 move.w     d1,0(a3,d2.l)
[00025034] 3743 0004                 move.w     d3,4(a3)
[00025038] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0002503c] 4e75                      rts
