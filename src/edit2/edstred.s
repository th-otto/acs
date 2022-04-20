
editstr_abort:
[00021a64] 2079 0010 1f12            movea.l    ACSblk,a0
[00021a6a] 2068 0258                 movea.l    600(a0),a0
[00021a6e] 4eb9 0002 1c96            jsr        term
[00021a74] 4e75                      rts

editstr_ok:
[00021a76] 2079 0010 1f12            movea.l    ACSblk,a0
[00021a7c] 2068 0258                 movea.l    600(a0),a0
[00021a80] 4eb9 0002 1a98            jsr        acc_string
[00021a86] 2079 0010 1f12            movea.l    ACSblk,a0
[00021a8c] 2068 0258                 movea.l    600(a0),a0
[00021a90] 4eb9 0002 1c96            jsr        term
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
[00021ab6] 4eb9 0005 e010            jsr        Auo_boxed
[00021abc] 43ef 0004                 lea.l      4(a7),a1
[00021ac0] 7003                      moveq.l    #3,d0
[00021ac2] 41eb 0060                 lea.l      96(a3),a0
[00021ac6] 4eb9 0005 e010            jsr        Auo_boxed
[00021acc] 2257                      movea.l    (a7),a1
[00021ace] 41ef 0008                 lea.l      8(a7),a0
[00021ad2] 4eb9 0007 6950            jsr        strcpy
[00021ad8] 226f 0004                 movea.l    4(a7),a1
[00021adc] 4eb9 0007 6886            jsr        strcat
[00021ae2] 41ef 0008                 lea.l      8(a7),a0
[00021ae6] 4eb9 0004 36d6            jsr        Ast_create
[00021aec] 2848                      movea.l    a0,a4
[00021aee] 200c                      move.l     a4,d0
[00021af0] 6744                      beq.s      acc_string_1
[00021af2] 226a 0004                 movea.l    4(a2),a1
[00021af6] 2069 0004                 movea.l    4(a1),a0
[00021afa] 4eb9 0004 7e26            jsr        Ax_free
[00021b00] 206a 0004                 movea.l    4(a2),a0
[00021b04] 214c 0004                 move.l     a4,4(a0)
[00021b08] 204c                      movea.l    a4,a0
[00021b0a] 4eb9 0007 69b0            jsr        strlen
[00021b10] 5280                      addq.l     #1,d0
[00021b12] 206a 0004                 movea.l    4(a2),a0
[00021b16] 2140 000a                 move.l     d0,10(a0)
[00021b1a] 206a 0004                 movea.l    4(a2),a0
[00021b1e] 2140 000e                 move.l     d0,14(a0)
[00021b22] 2052                      movea.l    (a2),a0
[00021b24] 2268 0034                 movea.l    52(a0),a1
[00021b28] 2069 0012                 movea.l    18(a1),a0
[00021b2c] 2208                      move.l     a0,d1
[00021b2e] 6706                      beq.s      acc_string_1
[00021b30] 0068 0020 0056            ori.w      #$0020,86(a0)
acc_string_1:
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
[00021b52] 670a                      beq.s      st_make_1
[00021b54] 204c                      movea.l    a4,a0
[00021b56] 4eb9 0004 f0ca            jsr        Awi_show
[00021b5c] 6072                      bra.s      st_make_2
st_make_1:
[00021b5e] 7008                      moveq.l    #8,d0
[00021b60] 4eb9 0004 7cc8            jsr        Ax_malloc
[00021b66] 2e88                      move.l     a0,(a7)
[00021b68] 6762                      beq.s      st_make_3
[00021b6a] 2092                      move.l     (a2),(a0)
[00021b6c] 216a 0004 0004            move.l     4(a2),4(a0)
[00021b72] 43eb 0016                 lea.l      22(a3),a1
[00021b76] 23c9 000a 793e            move.l     a1,$000A793E
[00021b7c] 2079 000a 794a            movea.l    $000A794A,a0
[00021b82] 2149 0008                 move.l     a1,8(a0)
[00021b86] 41f9 000a 78f0            lea.l      WI_STRING,a0
[00021b8c] 4eb9 0004 f41a            jsr        Awi_create
[00021b92] 2848                      movea.l    a0,a4
[00021b94] 200c                      move.l     a4,d0
[00021b96] 6734                      beq.s      st_make_3
[00021b98] 2252                      movea.l    (a2),a1
[00021b9a] 4869 0168                 pea.l      360(a1)
[00021b9e] 43eb 003a                 lea.l      58(a3),a1
[00021ba2] 4eb9 0001 47a8            jsr        wi_pos
[00021ba8] 584f                      addq.w     #4,a7
[00021baa] 2897                      move.l     (a7),(a4)
[00021bac] 274c 0012                 move.l     a4,18(a3)
[00021bb0] 204c                      movea.l    a4,a0
[00021bb2] 4eb9 0002 1c26            jsr        set_string
[00021bb8] 204c                      movea.l    a4,a0
[00021bba] 226c 000c                 movea.l    12(a4),a1
[00021bbe] 4e91                      jsr        (a1)
[00021bc0] 4a40                      tst.w      d0
[00021bc2] 670c                      beq.s      st_make_2
[00021bc4] 204c                      movea.l    a4,a0
[00021bc6] 4eb9 0002 1c96            jsr        term
st_make_3:
[00021bcc] 91c8                      suba.l     a0,a0
[00021bce] 6002                      bra.s      st_make_4
st_make_2:
[00021bd0] 204c                      movea.l    a4,a0
st_make_4:
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
[00021be8] 6708                      beq.s      st_service_1
[00021bea] 907c 270e                 sub.w      #$270E,d0
[00021bee] 6712                      beq.s      st_service_2
[00021bf0] 601e                      bra.s      st_service_3
st_service_1:
[00021bf2] 204a                      movea.l    a2,a0
[00021bf4] 6100 fea2                 bsr        acc_string
[00021bf8] 204a                      movea.l    a2,a0
[00021bfa] 4eb9 0002 1c96            jsr        term
[00021c00] 601c                      bra.s      st_service_4
st_service_2:
[00021c02] 226b 0004                 movea.l    4(a3),a1
[00021c06] 204a                      movea.l    a2,a0
[00021c08] 4eb9 0001 45a2            jsr        new_name
[00021c0e] 600e                      bra.s      st_service_4
st_service_3:
[00021c10] 224c                      movea.l    a4,a1
[00021c12] 3003                      move.w     d3,d0
[00021c14] 204a                      movea.l    a2,a0
[00021c16] 4eb9 0005 1276            jsr        Awi_service
[00021c1c] 6002                      bra.s      st_service_5
st_service_4:
[00021c1e] 7001                      moveq.l    #1,d0
st_service_5:
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
[00021c3e] 4eb9 0007 69b0            jsr        strlen
[00021c44] 2600                      move.l     d0,d3
[00021c46] b67c 00ff                 cmp.w      #$00FF,d3
[00021c4a] 6f1c                      ble.s      set_string_1
[00021c4c] 203c 0000 00ff            move.l     #$000000FF,d0
[00021c52] 43eb 00ff                 lea.l      255(a3),a1
[00021c56] 41d7                      lea.l      (a7),a0
[00021c58] 4eb9 0007 6a1a            jsr        strncpy
[00021c5e] 422f 00ff                 clr.b      255(a7)
[00021c62] 363c 00ff                 move.w     #$00FF,d3
[00021c66] 6002                      bra.s      set_string_2
set_string_1:
[00021c68] 4217                      clr.b      (a7)
set_string_2:
[00021c6a] 2f0b                      move.l     a3,-(a7)
[00021c6c] 3f03                      move.w     d3,-(a7)
[00021c6e] 43f9 000a 7992            lea.l      $000A7992,a1
[00021c74] 7003                      moveq.l    #3,d0
[00021c76] 204a                      movea.l    a2,a0
[00021c78] 4eb9 0004 afac            jsr        Aob_printf
[00021c7e] 5c4f                      addq.w     #6,a7
[00021c80] 43d7                      lea.l      (a7),a1
[00021c82] 7004                      moveq.l    #4,d0
[00021c84] 204a                      movea.l    a2,a0
[00021c86] 4eb9 0004 afe0            jsr        Aob_puttext
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
[00021cb4] 6716                      beq.s      term_1
[00021cb6] 43ea 002c                 lea.l      44(a2),a1
[00021cba] 206b 0004                 movea.l    4(a3),a0
[00021cbe] 41e8 003a                 lea.l      58(a0),a0
[00021cc2] 7008                      moveq.l    #8,d0
[00021cc4] 4eb9 0007 6f44            jsr        memcpy
[00021cca] 6014                      bra.s      term_2
term_1:
[00021ccc] 7008                      moveq.l    #8,d0
[00021cce] 43ea 0024                 lea.l      36(a2),a1
[00021cd2] 206b 0004                 movea.l    4(a3),a0
[00021cd6] 41e8 003a                 lea.l      58(a0),a0
[00021cda] 4eb9 0007 6f44            jsr        memcpy
term_2:
[00021ce0] 204b                      movea.l    a3,a0
[00021ce2] 4eb9 0004 7e26            jsr        Ax_free
[00021ce8] 204a                      movea.l    a2,a0
[00021cea] 4eb9 0005 013e            jsr        Awi_closed
[00021cf0] 204a                      movea.l    a2,a0
[00021cf2] 4eb9 0005 0330            jsr        Awi_delete
[00021cf8] 265f                      movea.l    (a7)+,a3
[00021cfa] 245f                      movea.l    (a7)+,a2
[00021cfc] 4e75                      rts

	.data

TEXT_002:
[000a75d6]                           dc.b $00
TEXT_003:
[000a75d7]                           dc.b $4f
[000a75d8]                           dc.w $4b00
TEXT_004:
[000a75da]                           dc.b 'Abbruch',0
TEXT_01:
[000a75e2]                           dc.b ' Text-Editor ',0
TEXT_12:
[000a75f0]                           dc.b 'TEXT',0
[000a75f5]                           dc.b $00
A_3DBUTTON01:
[000a75f6] 0005a4e2                  dc.l A_3Dbutton
[000a75fa]                           dc.w $29c1
[000a75fc]                           dc.w $0178
[000a75fe] 00059318                  dc.l Auo_string
[000a7602] 000a75da                  dc.l TEXT_004
[000a7606]                           dc.b $00
[000a7607]                           dc.b $00
[000a7608]                           dc.b $00
[000a7609]                           dc.b $00
[000a760a]                           dc.b $00
[000a760b]                           dc.b $00
[000a760c]                           dc.b $00
[000a760d]                           dc.b $00
[000a760e]                           dc.b $00
[000a760f]                           dc.b $00
[000a7610]                           dc.b $00
[000a7611]                           dc.b $00
[000a7612]                           dc.b $00
[000a7613]                           dc.b $00
[000a7614]                           dc.b $00
[000a7615]                           dc.b $00
A_3DBUTTON02:
[000a7616] 0005a4e2                  dc.l A_3Dbutton
[000a761a]                           dc.w $21f1
[000a761c]                           dc.w $01f8
[000a761e] 00059318                  dc.l Auo_string
[000a7622]                           dc.b $00
[000a7623]                           dc.b $00
[000a7624]                           dc.b $00
[000a7625]                           dc.b $00
[000a7626]                           dc.b $00
[000a7627]                           dc.b $00
[000a7628]                           dc.b $00
[000a7629]                           dc.b $00
[000a762a]                           dc.b $00
[000a762b]                           dc.b $00
[000a762c]                           dc.b $00
[000a762d]                           dc.b $00
[000a762e]                           dc.b $00
[000a762f]                           dc.b $00
[000a7630]                           dc.b $00
[000a7631]                           dc.b $00
[000a7632]                           dc.b $00
[000a7633]                           dc.b $00
[000a7634]                           dc.b $00
[000a7635]                           dc.b $00
A_3DBUTTON03:
[000a7636] 0005a4e2                  dc.l A_3Dbutton
[000a763a]                           dc.w $2011
[000a763c]                           dc.w $9178
[000a763e] 00059318                  dc.l Auo_string
[000a7642]                           dc.b $00
[000a7643]                           dc.b $00
[000a7644]                           dc.b $00
[000a7645]                           dc.b $00
[000a7646]                           dc.b $00
[000a7647]                           dc.b $00
[000a7648]                           dc.b $00
[000a7649]                           dc.b $00
[000a764a]                           dc.b $00
[000a764b]                           dc.b $00
[000a764c]                           dc.b $00
[000a764d]                           dc.b $00
[000a764e]                           dc.b $00
[000a764f]                           dc.b $00
[000a7650]                           dc.b $00
[000a7651]                           dc.b $00
[000a7652]                           dc.b $00
[000a7653]                           dc.b $00
[000a7654]                           dc.b $00
[000a7655]                           dc.b $00
A_3DBUTTON05:
[000a7656] 0005a4e2                  dc.l A_3Dbutton
[000a765a]                           dc.w $29c1
[000a765c]                           dc.w $0178
[000a765e] 00059318                  dc.l Auo_string
[000a7662] 000a75d7                  dc.l TEXT_003
[000a7666]                           dc.b $00
[000a7667]                           dc.b $00
[000a7668]                           dc.b $00
[000a7669]                           dc.b $00
[000a766a]                           dc.b $00
[000a766b]                           dc.b $00
[000a766c]                           dc.b $00
[000a766d]                           dc.b $00
[000a766e]                           dc.b $00
[000a766f]                           dc.b $00
[000a7670]                           dc.b $00
[000a7671]                           dc.b $00
[000a7672]                           dc.b $00
[000a7673]                           dc.b $00
[000a7674]                           dc.b $00
[000a7675]                           dc.b $00
A_BOXED01:
[000a7676] 0005e9d2                  dc.l A_boxed
[000a767a]                           dc.w $9000
[000a767c]                           dc.w $ff12
[000a767e] 0005e010                  dc.l Auo_boxed
[000a7682]                           dc.b $00
[000a7683]                           dc.b $00
[000a7684]                           dc.b $00
[000a7685]                           dc.b $00
[000a7686]                           dc.b $00
[000a7687]                           dc.b $00
[000a7688]                           dc.b $00
[000a7689]                           dc.b $00
[000a768a]                           dc.b $00
[000a768b]                           dc.b $00
[000a768c]                           dc.b $00
[000a768d]                           dc.b $00
[000a768e]                           dc.b $00
[000a768f]                           dc.b $00
[000a7690]                           dc.b $00
[000a7691]                           dc.b $00
[000a7692]                           dc.b $00
[000a7693]                           dc.b $00
[000a7694]                           dc.b $00
[000a7695]                           dc.b $00
_MSK_IC_STRING:
[000a7696]                           dc.b $00
[000a7697]                           dc.b $00
[000a7698]                           dc.b $00
[000a7699]                           dc.b $00
[000a769a]                           dc.b $00
[000a769b]                           dc.b $00
[000a769c]                           dc.b $00
[000a769d]                           dc.b $00
[000a769e]                           dc.b $00
[000a769f]                           dc.b $00
[000a76a0]                           dc.b $00
[000a76a1]                           dc.b $00
[000a76a2]                           dc.b $00
[000a76a3]                           dc.b $00
[000a76a4]                           dc.b $00
[000a76a5]                           dc.b $00
[000a76a6]                           dc.b $00
[000a76a7]                           dc.b $00
[000a76a8]                           dc.b $00
[000a76a9]                           dc.b $00
[000a76aa]                           dc.b $00
[000a76ab]                           dc.b $00
[000a76ac]                           dc.b $00
[000a76ad]                           dc.b $00
[000a76ae]                           dc.b $00
[000a76af]                           dc.b $00
[000a76b0]                           dc.b $00
[000a76b1]                           dc.b $00
[000a76b2]                           dc.b $00
[000a76b3]                           dc.b $00
[000a76b4]                           dc.b $00
[000a76b5]                           dc.b $00
[000a76b6]                           dc.b $00
[000a76b7]                           dc.b $00
[000a76b8]                           dc.b $00
[000a76b9]                           dc.b $00
[000a76ba]                           dc.b $00
[000a76bb]                           dc.b $00
[000a76bc]                           dc.b $00
[000a76bd]                           dc.b $00
[000a76be]                           dc.b $00
[000a76bf]                           dc.b $00
[000a76c0]                           dc.b $00
[000a76c1]                           dc.b $00
[000a76c2]                           dc.b $00
[000a76c3]                           dc.b $00
[000a76c4]                           dc.b $00
[000a76c5]                           dc.b $00
[000a76c6]                           dc.b $00
[000a76c7]                           dc.b $00
[000a76c8]                           dc.b $00
[000a76c9]                           dc.b $00
[000a76ca]                           dc.b $00
[000a76cb]                           dc.b $00
[000a76cc]                           dc.b $00
[000a76cd]                           dc.b $00
[000a76ce]                           dc.b $00
[000a76cf]                           dc.b $00
[000a76d0]                           dc.b $00
[000a76d1]                           dc.b $00
[000a76d2]                           dc.w $1ffb
[000a76d4]                           dc.w $fb81
[000a76d6]                           dc.w $dff8
[000a76d8]                           dc.w $1ffb
[000a76da]                           dc.w $fb81
[000a76dc]                           dc.w $dff8
[000a76de]                           dc.w $118b
[000a76e0]                           dc.w $09c3
[000a76e2]                           dc.w $9188
[000a76e4]                           dc.w $0183
[000a76e6]                           dc.b $00
[000a76e7]                           dc.b $e7
[000a76e8]                           dc.w $0180
[000a76ea]                           dc.w $0183
[000a76ec]                           dc.w $207e
[000a76ee]                           dc.w $0180
[000a76f0]                           dc.w $0183
[000a76f2]                           dc.w $e03c
[000a76f4]                           dc.w $0180
[000a76f6]                           dc.w $0183
[000a76f8]                           dc.w $e03c
[000a76fa]                           dc.w $0180
[000a76fc]                           dc.w $0183
[000a76fe]                           dc.w $207e
[000a7700]                           dc.w $0180
[000a7702]                           dc.w $0183
[000a7704]                           dc.b $00
[000a7705]                           dc.b $e7
[000a7706]                           dc.w $0180
[000a7708]                           dc.w $0183
[000a770a]                           dc.w $09c3
[000a770c]                           dc.w $8180
[000a770e]                           dc.w $03c3
[000a7710]                           dc.w $fb81
[000a7712]                           dc.w $c3c0
[000a7714]                           dc.w $07e3
[000a7716]                           dc.w $fb81
[000a7718]                           dc.w $c7e0
[000a771a]                           dc.b $00
[000a771b]                           dc.b $00
[000a771c]                           dc.b $00
[000a771d]                           dc.b $00
[000a771e]                           dc.b $00
[000a771f]                           dc.b $00
[000a7720]                           dc.b $00
[000a7721]                           dc.b $00
[000a7722]                           dc.b $00
[000a7723]                           dc.b $00
[000a7724]                           dc.b $00
[000a7725]                           dc.b $00
[000a7726]                           dc.b $00
[000a7727]                           dc.b $00
[000a7728]                           dc.b $00
[000a7729]                           dc.b $00
[000a772a]                           dc.b $00
[000a772b]                           dc.b $00
[000a772c]                           dc.b $00
[000a772d]                           dc.b $00
[000a772e]                           dc.b $00
[000a772f]                           dc.b $00
[000a7730]                           dc.b $00
[000a7731]                           dc.b $00
[000a7732]                           dc.b $00
[000a7733]                           dc.b $00
[000a7734]                           dc.b $00
[000a7735]                           dc.b $00
[000a7736]                           dc.b $00
[000a7737]                           dc.b $00
[000a7738]                           dc.b $00
[000a7739]                           dc.b $00
[000a773a]                           dc.b $00
[000a773b]                           dc.b $00
[000a773c]                           dc.b $00
[000a773d]                           dc.b $00
[000a773e]                           dc.b $00
[000a773f]                           dc.b $00
[000a7740]                           dc.b $00
[000a7741]                           dc.b $00
[000a7742]                           dc.b $00
[000a7743]                           dc.b $00
_DAT_IC_STRING:
[000a7744]                           dc.b $00
[000a7745]                           dc.b $00
[000a7746]                           dc.b $00
[000a7747]                           dc.b $00
[000a7748]                           dc.b $00
[000a7749]                           dc.b $00
[000a774a]                           dc.b $00
[000a774b]                           dc.b $00
[000a774c]                           dc.b $00
[000a774d]                           dc.b $00
[000a774e]                           dc.b $00
[000a774f]                           dc.b $00
[000a7750]                           dc.b $00
[000a7751]                           dc.b $00
[000a7752]                           dc.b $00
[000a7753]                           dc.b $00
[000a7754]                           dc.b $00
[000a7755]                           dc.b $00
[000a7756]                           dc.b $00
[000a7757]                           dc.b $00
[000a7758]                           dc.b $00
[000a7759]                           dc.b $00
[000a775a]                           dc.b $00
[000a775b]                           dc.b $00
[000a775c]                           dc.b $00
[000a775d]                           dc.b $00
[000a775e]                           dc.b $00
[000a775f]                           dc.b $00
[000a7760]                           dc.b $00
[000a7761]                           dc.b $00
[000a7762]                           dc.b $00
[000a7763]                           dc.b $00
[000a7764]                           dc.b $00
[000a7765]                           dc.b $00
[000a7766]                           dc.b $00
[000a7767]                           dc.b $00
[000a7768]                           dc.b $00
[000a7769]                           dc.b $00
[000a776a]                           dc.b $00
[000a776b]                           dc.b $00
[000a776c]                           dc.b $00
[000a776d]                           dc.b $00
[000a776e]                           dc.b $00
[000a776f]                           dc.b $00
[000a7770]                           dc.b $00
[000a7771]                           dc.b $00
[000a7772]                           dc.b $00
[000a7773]                           dc.b $00
[000a7774]                           dc.b $00
[000a7775]                           dc.b $00
[000a7776]                           dc.b $00
[000a7777]                           dc.b $00
[000a7778]                           dc.b $00
[000a7779]                           dc.b $00
[000a777a]                           dc.b $00
[000a777b]                           dc.b $00
[000a777c]                           dc.b $00
[000a777d]                           dc.b $00
[000a777e]                           dc.b $00
[000a777f]                           dc.b $00
[000a7780]                           dc.w $1ffb
[000a7782]                           dc.w $fb81
[000a7784]                           dc.w $dff8
[000a7786]                           dc.w $1ffb
[000a7788]                           dc.w $fb81
[000a778a]                           dc.w $dff8
[000a778c]                           dc.w $118b
[000a778e]                           dc.w $09c3
[000a7790]                           dc.w $9188
[000a7792]                           dc.w $0183
[000a7794]                           dc.b $00
[000a7795]                           dc.b $e7
[000a7796]                           dc.w $0180
[000a7798]                           dc.w $0183
[000a779a]                           dc.w $207e
[000a779c]                           dc.w $0180
[000a779e]                           dc.w $0183
[000a77a0]                           dc.w $e03c
[000a77a2]                           dc.w $0180
[000a77a4]                           dc.w $0183
[000a77a6]                           dc.w $e03c
[000a77a8]                           dc.w $0180
[000a77aa]                           dc.w $0183
[000a77ac]                           dc.w $207e
[000a77ae]                           dc.w $0180
[000a77b0]                           dc.w $0183
[000a77b2]                           dc.b $00
[000a77b3]                           dc.b $e7
[000a77b4]                           dc.w $0180
[000a77b6]                           dc.w $0183
[000a77b8]                           dc.w $09c3
[000a77ba]                           dc.w $8180
[000a77bc]                           dc.w $03c3
[000a77be]                           dc.w $fb81
[000a77c0]                           dc.w $c3c0
[000a77c2]                           dc.w $07e3
[000a77c4]                           dc.w $fb81
[000a77c6]                           dc.w $c7e0
[000a77c8]                           dc.b $00
[000a77c9]                           dc.b $00
[000a77ca]                           dc.b $00
[000a77cb]                           dc.b $00
[000a77cc]                           dc.b $00
[000a77cd]                           dc.b $00
[000a77ce]                           dc.b $00
[000a77cf]                           dc.b $00
[000a77d0]                           dc.b $00
[000a77d1]                           dc.b $00
[000a77d2]                           dc.b $00
[000a77d3]                           dc.b $00
[000a77d4]                           dc.b $00
[000a77d5]                           dc.b $00
[000a77d6]                           dc.b $00
[000a77d7]                           dc.b $00
[000a77d8]                           dc.b $00
[000a77d9]                           dc.b $00
[000a77da]                           dc.b $00
[000a77db]                           dc.b $00
[000a77dc]                           dc.b $00
[000a77dd]                           dc.b $00
[000a77de]                           dc.b $00
[000a77df]                           dc.b $00
[000a77e0]                           dc.b $00
[000a77e1]                           dc.b $00
[000a77e2]                           dc.b $00
[000a77e3]                           dc.b $00
[000a77e4]                           dc.b $00
[000a77e5]                           dc.b $00
[000a77e6]                           dc.b $00
[000a77e7]                           dc.b $00
[000a77e8]                           dc.b $00
[000a77e9]                           dc.b $00
[000a77ea]                           dc.b $00
[000a77eb]                           dc.b $00
[000a77ec]                           dc.b $00
[000a77ed]                           dc.b $00
[000a77ee]                           dc.b $00
[000a77ef]                           dc.b $00
[000a77f0]                           dc.b $00
[000a77f1]                           dc.b $00
IC_STRING:
[000a77f2] 000a7696                  dc.l _MSK_IC_STRING
[000a77f6] 000a7744                  dc.l _DAT_IC_STRING
[000a77fa] 000a75f0                  dc.l TEXT_12
[000a77fe]                           dc.w $1000
[000a7800]                           dc.b $00
[000a7801]                           dc.b $00
[000a7802]                           dc.b $00
[000a7803]                           dc.b $00
[000a7804]                           dc.b $00
[000a7805]                           dc.b $0c
[000a7806]                           dc.b $00
[000a7807]                           dc.b $00
[000a7808]                           dc.b $00
[000a7809]                           dc.b $30
[000a780a]                           dc.b $00
[000a780b]                           dc.b $1d
[000a780c]                           dc.b $00
[000a780d]                           dc.b $00
[000a780e]                           dc.b $00
[000a780f]                           dc.b $20
[000a7810]                           dc.b $00
[000a7811]                           dc.b $48
[000a7812]                           dc.b $00
[000a7813]                           dc.b $08
[000a7814]                           dc.b $00
[000a7815]                           dc.b $00
[000a7816]                           dc.b $00
[000a7817]                           dc.b $00
EDIT_STRING:
[000a7818]                           dc.w $ffff
[000a781a]                           dc.b $00
[000a781b]                           dc.b $01
[000a781c]                           dc.b $00
[000a781d]                           dc.b $07
[000a781e]                           dc.b $00
[000a781f]                           dc.b $18
[000a7820]                           dc.b $00
[000a7821]                           dc.b $40
[000a7822]                           dc.b $00
[000a7823]                           dc.b $10
[000a7824] 000a7616                  dc.l A_3DBUTTON02
[000a7828]                           dc.b $00
[000a7829]                           dc.b $00
[000a782a]                           dc.b $00
[000a782b]                           dc.b $00
[000a782c]                           dc.b $00
[000a782d]                           dc.b $34
[000a782e]                           dc.b $00
[000a782f]                           dc.b $07
_01_EDIT_STRING:
[000a7830]                           dc.b $00
[000a7831]                           dc.b $05
[000a7832]                           dc.b $00
[000a7833]                           dc.b $02
[000a7834]                           dc.b $00
[000a7835]                           dc.b $02
[000a7836]                           dc.b $00
[000a7837]                           dc.b $18
[000a7838]                           dc.b $00
[000a7839]                           dc.b $40
[000a783a]                           dc.b $00
[000a783b]                           dc.b $00
[000a783c] 000a7636                  dc.l A_3DBUTTON03
[000a7840]                           dc.b $00
[000a7841]                           dc.b $01
[000a7842]                           dc.b $00
[000a7843]                           dc.b $01
[000a7844]                           dc.b $00
[000a7845]                           dc.b $32
[000a7846]                           dc.b $00
[000a7847]                           dc.b $02
_02_EDIT_STRING:
[000a7848]                           dc.b $00
[000a7849]                           dc.b $01
[000a784a]                           dc.b $00
[000a784b]                           dc.b $03
[000a784c]                           dc.b $00
[000a784d]                           dc.b $04
[000a784e]                           dc.b $00
[000a784f]                           dc.b $14
[000a7850]                           dc.b $00
[000a7851]                           dc.b $40
[000a7852]                           dc.b $00
[000a7853]                           dc.b $00
[000a7854]                           dc.b $00
[000a7855]                           dc.b $ff
[000a7856]                           dc.w $0101
[000a7858]                           dc.b $00
[000a7859]                           dc.b $00
[000a785a]                           dc.b $00
[000a785b]                           dc.b $00
[000a785c]                           dc.b $00
[000a785d]                           dc.b $32
[000a785e]                           dc.b $00
[000a785f]                           dc.b $02
_03_EDIT_STRING:
[000a7860]                           dc.b $00
[000a7861]                           dc.b $04
[000a7862]                           dc.w $ffff
[000a7864]                           dc.w $ffff
[000a7866]                           dc.b $00
[000a7867]                           dc.b $18
[000a7868]                           dc.b $00
[000a7869]                           dc.b $08
[000a786a]                           dc.b $00
[000a786b]                           dc.b $00
[000a786c] 000a7676                  dc.l A_BOXED01
[000a7870]                           dc.b $00
[000a7871]                           dc.b $00
[000a7872]                           dc.b $00
[000a7873]                           dc.b $00
[000a7874]                           dc.b $00
[000a7875]                           dc.b $32
[000a7876]                           dc.b $00
[000a7877]                           dc.b $01
_04_EDIT_STRING:
[000a7878]                           dc.b $00
[000a7879]                           dc.b $02
[000a787a]                           dc.w $ffff
[000a787c]                           dc.w $ffff
[000a787e]                           dc.b $00
[000a787f]                           dc.b $18
[000a7880]                           dc.b $00
[000a7881]                           dc.b $08
[000a7882]                           dc.b $00
[000a7883]                           dc.b $00
[000a7884] 000a7676                  dc.l A_BOXED01
[000a7888]                           dc.b $00
[000a7889]                           dc.b $00
[000a788a]                           dc.b $00
[000a788b]                           dc.b $01
[000a788c]                           dc.b $00
[000a788d]                           dc.b $32
[000a788e]                           dc.b $00
[000a788f]                           dc.b $01
_05_EDIT_STRING:
[000a7890]                           dc.b $00
[000a7891]                           dc.b $07
[000a7892]                           dc.w $ffff
[000a7894]                           dc.w $ffff
[000a7896]                           dc.b $00
[000a7897]                           dc.b $18
[000a7898]                           dc.w $4007
[000a789a]                           dc.b $00
[000a789b]                           dc.b $10
[000a789c] 000a7656                  dc.l A_3DBUTTON05
[000a78a0]                           dc.b $00
[000a78a1]                           dc.b $0d
[000a78a2]                           dc.b $00
[000a78a3]                           dc.b $04
[000a78a4]                           dc.b $00
[000a78a5]                           dc.b $0c
[000a78a6]                           dc.b $00
[000a78a7]                           dc.b $02
_05aEDIT_STRING:
[000a78a8] 00021a76                  dc.l editstr_ok
[000a78ac]                           dc.b $00
[000a78ad]                           dc.b $00
[000a78ae]                           dc.b $00
[000a78af]                           dc.b $00
[000a78b0]                           dc.w $8000
[000a78b2]                           dc.w $884f
[000a78b4]                           dc.b $00
[000a78b5]                           dc.b $00
[000a78b6]                           dc.b $00
[000a78b7]                           dc.b $00
[000a78b8]                           dc.b $00
[000a78b9]                           dc.b $00
[000a78ba]                           dc.b $00
[000a78bb]                           dc.b $00
[000a78bc]                           dc.b $00
[000a78bd]                           dc.b $00
[000a78be]                           dc.b $00
[000a78bf]                           dc.b $00
_07_EDIT_STRING:
[000a78c0]                           dc.b $00
[000a78c1]                           dc.b $00
[000a78c2]                           dc.w $ffff
[000a78c4]                           dc.w $ffff
[000a78c6]                           dc.b $00
[000a78c7]                           dc.b $18
[000a78c8]                           dc.w $4005
[000a78ca]                           dc.b $00
[000a78cb]                           dc.b $10
[000a78cc] 000a75f6                  dc.l A_3DBUTTON01
[000a78d0]                           dc.b $00
[000a78d1]                           dc.b $1d
[000a78d2]                           dc.b $00
[000a78d3]                           dc.b $04
[000a78d4]                           dc.b $00
[000a78d5]                           dc.b $0c
[000a78d6]                           dc.b $00
[000a78d7]                           dc.b $02
_07aEDIT_STRING:
[000a78d8] 00021a64                  dc.l editstr_abort
[000a78dc]                           dc.b $00
[000a78dd]                           dc.b $00
[000a78de]                           dc.b $00
[000a78df]                           dc.b $00
[000a78e0]                           dc.w $8020
[000a78e2]                           dc.w $8841
[000a78e4]                           dc.b $00
[000a78e5]                           dc.b $00
[000a78e6]                           dc.b $00
[000a78e7]                           dc.b $00
[000a78e8]                           dc.b $00
[000a78e9]                           dc.b $00
[000a78ea]                           dc.b $00
[000a78eb]                           dc.b $00
[000a78ec]                           dc.b $00
[000a78ed]                           dc.b $00
[000a78ee]                           dc.b $00
[000a78ef]                           dc.b $00
WI_STRING:
[000a78f0]                           dc.b $00
[000a78f1]                           dc.b $00
[000a78f2]                           dc.b $00
[000a78f3]                           dc.b $00
[000a78f4] 00021bda                  dc.l st_service
[000a78f8] 00021b40                  dc.l st_make
[000a78fc] 0004f69e                  dc.l Awi_open
[000a7900] 0004e610                  dc.l Awi_init
[000a7904] 000a7818                  dc.l EDIT_STRING
[000a7908]                           dc.b $00
[000a7909]                           dc.b $00
[000a790a]                           dc.b $00
[000a790b]                           dc.b $00
[000a790c]                           dc.b $00
[000a790d]                           dc.b $00
[000a790e]                           dc.b $00
[000a790f]                           dc.b $00
[000a7910]                           dc.w $ffff
[000a7912]                           dc.w $601f
[000a7914]                           dc.b $00
[000a7915]                           dc.b $00
[000a7916]                           dc.b $00
[000a7917]                           dc.b $00
[000a7918]                           dc.b $00
[000a7919]                           dc.b $63
[000a791a]                           dc.b $00
[000a791b]                           dc.b $63
[000a791c]                           dc.b $00
[000a791d]                           dc.b $00
[000a791e]                           dc.b $00
[000a791f]                           dc.b $00
[000a7920]                           dc.b $00
[000a7921]                           dc.b $00
[000a7922]                           dc.b $00
[000a7923]                           dc.b $00
[000a7924]                           dc.b $00
[000a7925]                           dc.b $00
[000a7926]                           dc.b $00
[000a7927]                           dc.b $00
[000a7928]                           dc.b $00
[000a7929]                           dc.b $00
[000a792a]                           dc.b $00
[000a792b]                           dc.b $00
[000a792c]                           dc.w $ffff
[000a792e]                           dc.w $ffff
[000a7930]                           dc.w $ffff
[000a7932]                           dc.w $ffff
[000a7934]                           dc.b $00
[000a7935]                           dc.b $00
[000a7936]                           dc.b $00
[000a7937]                           dc.b $00
[000a7938]                           dc.w $fcf8
[000a793a] 000a75e2                  dc.l TEXT_01
[000a793e] 000a75d6                  dc.l TEXT_002
[000a7942]                           dc.w $2710
[000a7944]                           dc.w $0100
[000a7946]                           dc.b $00
[000a7947]                           dc.b $00
[000a7948]                           dc.w $ffff
[000a794a] 000a77f2                  dc.l IC_STRING
[000a794e]                           dc.b $00
[000a794f]                           dc.b $00
[000a7950]                           dc.b $00
[000a7951]                           dc.b $00
[000a7952] 0005ef2c                  dc.l Awi_keys
[000a7956] 0004b600                  dc.l Awi_obchange
[000a795a] 0004b8cc                  dc.l Awi_redraw
[000a795e] 00050454                  dc.l Awi_topped
[000a7962] 0005013e                  dc.l Awi_closed
[000a7966] 00050496                  dc.l Awi_fulled
[000a796a] 0004bcc8                  dc.l Awi_arrowed
[000a796e] 0004beea                  dc.l Awi_hslid
[000a7972] 0004bf56                  dc.l Awi_vslid
[000a7976] 000506ca                  dc.l Awi_sized
[000a797a] 000507bc                  dc.l Awi_moved
[000a797e] 00050f9c                  dc.l Awi_iconify
[000a7982] 0005117c                  dc.l Awi_uniconify
[000a7986] 00052328                  dc.l Awi_gemscript
[000a798a]                           dc.b $00
[000a798b]                           dc.b $00
[000a798c]                           dc.b $00
[000a798d]                           dc.b $00
[000a798e]                           dc.b $00
[000a798f]                           dc.b $00
[000a7990]                           dc.b $00
[000a7991]                           dc.b $00
[000a7992]                           dc.b '%-*s',0
	.even
