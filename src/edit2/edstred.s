editstr_abort:
[00021a64] 2079 0010 1f12            movea.l    ACSblk,a0
[00021a6a] 2068 0258                 movea.l    600(a0),a0
[00021a6e] 4eb9 0002 1c96            jsr        $00021C96
[00021a74] 4e75                      rts
editstr_ok:
[00021a76] 2079 0010 1f12            movea.l    ACSblk,a0
[00021a7c] 2068 0258                 movea.l    600(a0),a0
[00021a80] 4eb9 0002 1a98            jsr        $00021A98
[00021a86] 2079 0010 1f12            movea.l    ACSblk,a0
[00021a8c] 2068 0258                 movea.l    600(a0),a0
[00021a90] 4eb9 0002 1c96            jsr        $00021C96
[00021a96] 4e75                      rts
acc_string:
[00021a98] 48e7 0038                 movem.l    a2-a4,-(a7)
[00021a9c] 4fef fdf8                 lea.l      -520(a7),a7
[00021aa0] 2450                      movea.l    (a0),a2
[00021aa2] 2252                      movea.l    (a2),a1
[00021aa4] 0069 0001 0006            ori.w      #$0001,6(a1)
[00021aaa] 2668 0014                 movea.l    20(a0),a3
[00021aae] 43d7                      lea.l      (a7),a1
[00021ab0] 7003                      moveq.l    #3,d0
[00021ab2] 41eb 0048                 lea.l      72(a3),a0
[00021ab6] 4eb9 0005 e010            jsr        $0005E010
[00021abc] 43ef 0004                 lea.l      4(a7),a1
[00021ac0] 7003                      moveq.l    #3,d0
[00021ac2] 41eb 0060                 lea.l      96(a3),a0
[00021ac6] 4eb9 0005 e010            jsr        $0005E010
[00021acc] 2257                      movea.l    (a7),a1
[00021ace] 41ef 0008                 lea.l      8(a7),a0
[00021ad2] 4eb9 0007 6950            jsr        $00076950
[00021ad8] 226f 0004                 movea.l    4(a7),a1
[00021adc] 4eb9 0007 6886            jsr        $00076886
[00021ae2] 41ef 0008                 lea.l      8(a7),a0
[00021ae6] 4eb9 0004 36d6            jsr        Ast_create
[00021aec] 2848                      movea.l    a0,a4
[00021aee] 200c                      move.l     a4,d0
[00021af0] 6744                      beq.s      $00021B36
[00021af2] 226a 0004                 movea.l    4(a2),a1
[00021af6] 2069 0004                 movea.l    4(a1),a0
[00021afa] 4eb9 0004 7e26            jsr        $00047E26
[00021b00] 206a 0004                 movea.l    4(a2),a0
[00021b04] 214c 0004                 move.l     a4,4(a0)
[00021b08] 204c                      movea.l    a4,a0
[00021b0a] 4eb9 0007 69b0            jsr        $000769B0
[00021b10] 5280                      addq.l     #1,d0
[00021b12] 206a 0004                 movea.l    4(a2),a0
[00021b16] 2140 000a                 move.l     d0,10(a0)
[00021b1a] 206a 0004                 movea.l    4(a2),a0
[00021b1e] 2140 000e                 move.l     d0,14(a0)
[00021b22] 2052                      movea.l    (a2),a0
[00021b24] 2268 0034                 movea.l    52(a0),a1
[00021b28] 2069 0012                 movea.l    18(a1),a0
[00021b2c] 2208                      move.l     a0,d1
[00021b2e] 6706                      beq.s      $00021B36
[00021b30] 0068 0020 0056            ori.w      #$0020,86(a0)
[00021b36] 4fef 0208                 lea.l      520(a7),a7
[00021b3a] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00021b3e] 4e75                      rts
st_make:
[00021b40] 48e7 0038                 movem.l    a2-a4,-(a7)
[00021b44] 594f                      subq.w     #4,a7
[00021b46] 2448                      movea.l    a0,a2
[00021b48] 266a 0004                 movea.l    4(a2),a3
[00021b4c] 286b 0012                 movea.l    18(a3),a4
[00021b50] 200c                      move.l     a4,d0
[00021b52] 670a                      beq.s      $00021B5E
[00021b54] 204c                      movea.l    a4,a0
[00021b56] 4eb9 0004 f0ca            jsr        $0004F0CA
[00021b5c] 6072                      bra.s      $00021BD0
[00021b5e] 7008                      moveq.l    #8,d0
[00021b60] 4eb9 0004 7cc8            jsr        Ax_malloc
[00021b66] 2e88                      move.l     a0,(a7)
[00021b68] 6762                      beq.s      $00021BCC
[00021b6a] 2092                      move.l     (a2),(a0)
[00021b6c] 216a 0004 0004            move.l     4(a2),4(a0)
[00021b72] 43eb 0016                 lea.l      22(a3),a1
[00021b76] 23c9 000a 793e            move.l     a1,$000A793E
[00021b7c] 2079 000a 794a            movea.l    $000A794A,a0
[00021b82] 2149 0008                 move.l     a1,8(a0)
[00021b86] 41f9 000a 78f0            lea.l      $000A78F0,a0
[00021b8c] 4eb9 0004 f41a            jsr        $0004F41A
[00021b92] 2848                      movea.l    a0,a4
[00021b94] 200c                      move.l     a4,d0
[00021b96] 6734                      beq.s      $00021BCC
[00021b98] 2252                      movea.l    (a2),a1
[00021b9a] 4869 0168                 pea.l      360(a1)
[00021b9e] 43eb 003a                 lea.l      58(a3),a1
[00021ba2] 4eb9 0001 47a8            jsr        $000147A8
[00021ba8] 584f                      addq.w     #4,a7
[00021baa] 2897                      move.l     (a7),(a4)
[00021bac] 274c 0012                 move.l     a4,18(a3)
[00021bb0] 204c                      movea.l    a4,a0
[00021bb2] 4eb9 0002 1c26            jsr        $00021C26
[00021bb8] 204c                      movea.l    a4,a0
[00021bba] 226c 000c                 movea.l    12(a4),a1
[00021bbe] 4e91                      jsr        (a1)
[00021bc0] 4a40                      tst.w      d0
[00021bc2] 670c                      beq.s      $00021BD0
[00021bc4] 204c                      movea.l    a4,a0
[00021bc6] 4eb9 0002 1c96            jsr        $00021C96
[00021bcc] 91c8                      suba.l     a0,a0
[00021bce] 6002                      bra.s      $00021BD2
[00021bd0] 204c                      movea.l    a4,a0
[00021bd2] 584f                      addq.w     #4,a7
[00021bd4] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00021bd8] 4e75                      rts
st_service:
[00021bda] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00021bde] 2448                      movea.l    a0,a2
[00021be0] 3600                      move.w     d0,d3
[00021be2] 2849                      movea.l    a1,a4
[00021be4] 2650                      movea.l    (a0),a3
[00021be6] 5540                      subq.w     #2,d0
[00021be8] 6708                      beq.s      $00021BF2
[00021bea] 907c 270e                 sub.w      #$270E,d0
[00021bee] 6712                      beq.s      $00021C02
[00021bf0] 601e                      bra.s      $00021C10
[00021bf2] 204a                      movea.l    a2,a0
[00021bf4] 6100 fea2                 bsr        $00021A98
[00021bf8] 204a                      movea.l    a2,a0
[00021bfa] 4eb9 0002 1c96            jsr        $00021C96
[00021c00] 601c                      bra.s      $00021C1E
[00021c02] 226b 0004                 movea.l    4(a3),a1
[00021c06] 204a                      movea.l    a2,a0
[00021c08] 4eb9 0001 45a2            jsr        $000145A2
[00021c0e] 600e                      bra.s      $00021C1E
[00021c10] 224c                      movea.l    a4,a1
[00021c12] 3003                      move.w     d3,d0
[00021c14] 204a                      movea.l    a2,a0
[00021c16] 4eb9 0005 1276            jsr        $00051276
[00021c1c] 6002                      bra.s      $00021C20
[00021c1e] 7001                      moveq.l    #1,d0
[00021c20] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00021c24] 4e75                      rts
set_string:
[00021c26] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[00021c2a] 4fef ff00                 lea.l      -256(a7),a7
[00021c2e] 2250                      movea.l    (a0),a1
[00021c30] 2468 0014                 movea.l    20(a0),a2
[00021c34] 2069 0004                 movea.l    4(a1),a0
[00021c38] 2668 0004                 movea.l    4(a0),a3
[00021c3c] 204b                      movea.l    a3,a0
[00021c3e] 4eb9 0007 69b0            jsr        $000769B0
[00021c44] 2600                      move.l     d0,d3
[00021c46] b67c 00ff                 cmp.w      #$00FF,d3
[00021c4a] 6f1c                      ble.s      $00021C68
[00021c4c] 203c 0000 00ff            move.l     #$000000FF,d0
[00021c52] 43eb 00ff                 lea.l      255(a3),a1
[00021c56] 41d7                      lea.l      (a7),a0
[00021c58] 4eb9 0007 6a1a            jsr        $00076A1A
[00021c5e] 422f 00ff                 clr.b      255(a7)
[00021c62] 363c 00ff                 move.w     #$00FF,d3
[00021c66] 6002                      bra.s      $00021C6A
[00021c68] 4217                      clr.b      (a7)
[00021c6a] 2f0b                      move.l     a3,-(a7)
[00021c6c] 3f03                      move.w     d3,-(a7)
[00021c6e] 43f9 000a 7992            lea.l      $000A7992,a1
[00021c74] 7003                      moveq.l    #3,d0
[00021c76] 204a                      movea.l    a2,a0
[00021c78] 4eb9 0004 afac            jsr        $0004AFAC
[00021c7e] 5c4f                      addq.w     #6,a7
[00021c80] 43d7                      lea.l      (a7),a1
[00021c82] 7004                      moveq.l    #4,d0
[00021c84] 204a                      movea.l    a2,a0
[00021c86] 4eb9 0004 afe0            jsr        $0004AFE0
[00021c8c] 4fef 0100                 lea.l      256(a7),a7
[00021c90] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[00021c94] 4e75                      rts
term:
[00021c96] 2f0a                      move.l     a2,-(a7)
[00021c98] 2f0b                      move.l     a3,-(a7)
[00021c9a] 2448                      movea.l    a0,a2
[00021c9c] 006a 0100 0056            ori.w      #$0100,86(a2)
[00021ca2] 2650                      movea.l    (a0),a3
[00021ca4] 226b 0004                 movea.l    4(a3),a1
[00021ca8] 42a9 0012                 clr.l      18(a1)
[00021cac] 302a 0056                 move.w     86(a2),d0
[00021cb0] c07c 0800                 and.w      #$0800,d0
[00021cb4] 6716                      beq.s      $00021CCC
[00021cb6] 43ea 002c                 lea.l      44(a2),a1
[00021cba] 206b 0004                 movea.l    4(a3),a0
[00021cbe] 41e8 003a                 lea.l      58(a0),a0
[00021cc2] 7008                      moveq.l    #8,d0
[00021cc4] 4eb9 0007 6f44            jsr        $00076F44
[00021cca] 6014                      bra.s      $00021CE0
[00021ccc] 7008                      moveq.l    #8,d0
[00021cce] 43ea 0024                 lea.l      36(a2),a1
[00021cd2] 206b 0004                 movea.l    4(a3),a0
[00021cd6] 41e8 003a                 lea.l      58(a0),a0
[00021cda] 4eb9 0007 6f44            jsr        $00076F44
[00021ce0] 204b                      movea.l    a3,a0
[00021ce2] 4eb9 0004 7e26            jsr        $00047E26
[00021ce8] 204a                      movea.l    a2,a0
[00021cea] 4eb9 0005 013e            jsr        $0005013E
[00021cf0] 204a                      movea.l    a2,a0
[00021cf2] 4eb9 0005 0330            jsr        $00050330
[00021cf8] 265f                      movea.l    (a7)+,a3
[00021cfa] 245f                      movea.l    (a7)+,a2
[00021cfc] 4e75                      rts
