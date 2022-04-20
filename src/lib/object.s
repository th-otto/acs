
Aob_create:
[00049a5c] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00049a60] 5d4f                      subq.w     #6,a7
[00049a62] 2448                      movea.l    a0,a2
[00049a64] 7600                      moveq.l    #0,d3
[00049a66] 7001                      moveq.l    #1,d0
[00049a68] 4eb9 0004 9c40            jsr        Aob_count
[00049a6e] 48c0                      ext.l      d0
[00049a70] 2600                      move.l     d0,d3
[00049a72] d683                      add.l      d3,d3
[00049a74] d680                      add.l      d0,d3
[00049a76] e78b                      lsl.l      #3,d3
[00049a78] 2003                      move.l     d3,d0
[00049a7a] 4eb9 0004 7cc8            jsr        Ax_malloc
[00049a80] 2f48 0002                 move.l     a0,2(a7)
[00049a84] 6700 00d6                 beq        Aob_create_1
[00049a88] 2003                      move.l     d3,d0
[00049a8a] 224a                      movea.l    a2,a1
[00049a8c] 4eb9 0007 6f44            jsr        memcpy
[00049a92] 4257                      clr.w      (a7)
[00049a94] 286f 0002                 movea.l    2(a7),a4
[00049a98] 2a4c                      movea.l    a4,a5
Aob_create_11:
[00049a9a] 302c 0008                 move.w     8(a4),d0
[00049a9e] c07c 8000                 and.w      #$8000,d0
[00049aa2] 6600 00bc                 bne        Aob_create_2
[00049aa6] 322c 000a                 move.w     10(a4),d1
[00049aaa] c27c 2000                 and.w      #$2000,d1
[00049aae] 6600 00b0                 bne        Aob_create_2
[00049ab2] 142c 0007                 move.b     7(a4),d2
[00049ab6] 4882                      ext.w      d2
[00049ab8] 947c 0015                 sub.w      #$0015,d2
[00049abc] b47c 000c                 cmp.w      #$000C,d2
[00049ac0] 6200 0096                 bhi        Aob_create_3
[00049ac4] d442                      add.w      d2,d2
[00049ac6] 343b 2006                 move.w     $00049ACE(pc,d2.w),d2
[00049aca] 4efb 2002                 jmp        $00049ACE(pc,d2.w)
J35:
[00049ace] 001a                      dc.w $001a   ; Aob_create_4-J35
[00049ad0] 001a                      dc.w $001a   ; Aob_create_4-J35
[00049ad2] 0056                      dc.w $0056   ; Aob_create_5-J35
[00049ad4] 002c                      dc.w $002c   ; Aob_create_6-J35
[00049ad6] 008a                      dc.w $008a   ; Aob_create_3-J35
[00049ad8] 007a                      dc.w $007a   ; Aob_create_7-J35
[00049ada] 008a                      dc.w $008a   ; Aob_create_3-J35
[00049adc] 007a                      dc.w $007a   ; Aob_create_7-J35
[00049ade] 001a                      dc.w $001a   ; Aob_create_4-J35
[00049ae0] 001a                      dc.w $001a   ; Aob_create_4-J35
[00049ae2] 0068                      dc.w $0068   ; Aob_create_8-J35
[00049ae4] 007a                      dc.w $007a   ; Aob_create_7-J35
[00049ae6] 0068                      dc.w $0068   ; Aob_create_8-J35
Aob_create_4:
[00049ae8] 206c 000c                 movea.l    12(a4),a0
[00049aec] 4eb9 0004 a146            jsr        Ate_create
[00049af2] 2a48                      movea.l    a0,a5
[00049af4] 2948 000c                 move.l     a0,12(a4)
[00049af8] 605e                      bra.s      Aob_create_3
Aob_create_6:
[00049afa] 206c 000c                 movea.l    12(a4),a0
[00049afe] 4eb9 0004 a1f0            jsr        Aus_create
[00049b04] 2448                      movea.l    a0,a2
[00049b06] 2a4a                      movea.l    a2,a5
[00049b08] 294d 000c                 move.l     a5,12(a4)
[00049b0c] 202a 0008                 move.l     8(a2),d0
[00049b10] 670a                      beq.s      Aob_create_9
[00049b12] 43d7                      lea.l      (a7),a1
[00049b14] 2640                      movea.l    d0,a3
[00049b16] 204c                      movea.l    a4,a0
[00049b18] 7001                      moveq.l    #1,d0
[00049b1a] 4e93                      jsr        (a3)
Aob_create_9:
[00049b1c] 0c57 ffff                 cmpi.w     #$FFFF,(a7)
[00049b20] 6636                      bne.s      Aob_create_3
[00049b22] 6038                      bra.s      Aob_create_1
Aob_create_5:
[00049b24] 206c 000c                 movea.l    12(a4),a0
[00049b28] 4eb9 0004 a110            jsr        Aim_create
[00049b2e] 2a48                      movea.l    a0,a5
[00049b30] 2948 000c                 move.l     a0,12(a4)
[00049b34] 6022                      bra.s      Aob_create_3
Aob_create_8:
[00049b36] 206c 000c                 movea.l    12(a4),a0
[00049b3a] 4eb9 0004 9e38            jsr        Aic_create
[00049b40] 2a48                      movea.l    a0,a5
[00049b42] 2948 000c                 move.l     a0,12(a4)
[00049b46] 6010                      bra.s      Aob_create_3
Aob_create_7:
[00049b48] 206c 000c                 movea.l    12(a4),a0
[00049b4c] 4eb9 0004 36d6            jsr        Ast_create
[00049b52] 2a48                      movea.l    a0,a5
[00049b54] 2948 000c                 move.l     a0,12(a4)
Aob_create_3:
[00049b58] 200d                      move.l     a5,d0
[00049b5a] 6604                      bne.s      Aob_create_2
Aob_create_1:
[00049b5c] 91c8                      suba.l     a0,a0
[00049b5e] 6014                      bra.s      Aob_create_10
Aob_create_2:
[00049b60] 7020                      moveq.l    #32,d0
[00049b62] 204c                      movea.l    a4,a0
[00049b64] 49ec 0018                 lea.l      24(a4),a4
[00049b68] c068 0008                 and.w      8(a0),d0
[00049b6c] 6700 ff2c                 beq        Aob_create_11
[00049b70] 206f 0002                 movea.l    2(a7),a0
Aob_create_10:
[00049b74] 5c4f                      addq.w     #6,a7
[00049b76] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[00049b7a] 4e75                      rts

Aob_delete:
[00049b7c] 48e7 003c                 movem.l    a2-a5,-(a7)
[00049b80] 2448                      movea.l    a0,a2
[00049b82] 200a                      move.l     a2,d0
[00049b84] 6700 00b4                 beq        Aob_delete_1
[00049b88] 264a                      movea.l    a2,a3
Aob_delete_9:
[00049b8a] 302b 0008                 move.w     8(a3),d0
[00049b8e] c07c 8000                 and.w      #$8000,d0
[00049b92] 6600 008e                 bne        Aob_delete_2
[00049b96] 322b 000a                 move.w     10(a3),d1
[00049b9a] c27c 2000                 and.w      #$2000,d1
[00049b9e] 6600 0082                 bne        Aob_delete_2
[00049ba2] 142b 0007                 move.b     7(a3),d2
[00049ba6] 4882                      ext.w      d2
[00049ba8] 947c 0015                 sub.w      #$0015,d2
[00049bac] b47c 000c                 cmp.w      #$000C,d2
[00049bb0] 6270                      bhi.s      Aob_delete_2
[00049bb2] d442                      add.w      d2,d2
[00049bb4] 343b 2006                 move.w     $00049BBC(pc,d2.w),d2
[00049bb8] 4efb 2002                 jmp        $00049BBC(pc,d2.w)
J36:
[00049bbc] 001a                      dc.w $001a   ; Aob_delete_3-J36
[00049bbe] 001a                      dc.w $001a   ; Aob_delete_3-J36
[00049bc0] 0050                      dc.w $0050   ; Aob_delete_4-J36
[00049bc2] 0026                      dc.w $0026   ; Aob_delete_5-J36
[00049bc4] 0066                      dc.w $0066   ; Aob_delete_2-J36
[00049bc6] 0044                      dc.w $0044   ; Aob_delete_6-J36
[00049bc8] 0066                      dc.w $0066   ; Aob_delete_2-J36
[00049bca] 0044                      dc.w $0044   ; Aob_delete_6-J36
[00049bcc] 001a                      dc.w $001a   ; Aob_delete_3-J36
[00049bce] 001a                      dc.w $001a   ; Aob_delete_3-J36
[00049bd0] 005c                      dc.w $005c   ; Aob_delete_7-J36
[00049bd2] 0044                      dc.w $0044   ; Aob_delete_6-J36
[00049bd4] 005c                      dc.w $005c   ; Aob_delete_7-J36
Aob_delete_3:
[00049bd6] 206b 000c                 movea.l    12(a3),a0
[00049bda] 4eb9 0004 a1be            jsr        Ate_delete
[00049be0] 6040                      bra.s      Aob_delete_2
Aob_delete_5:
[00049be2] 286b 000c                 movea.l    12(a3),a4
[00049be6] 202c 0008                 move.l     8(a4),d0
[00049bea] 670a                      beq.s      Aob_delete_8
[00049bec] 93c9                      suba.l     a1,a1
[00049bee] 204b                      movea.l    a3,a0
[00049bf0] 2a40                      movea.l    d0,a5
[00049bf2] 7002                      moveq.l    #2,d0
[00049bf4] 4e95                      jsr        (a5)
Aob_delete_8:
[00049bf6] 204c                      movea.l    a4,a0
[00049bf8] 4eb9 0004 a238            jsr        Aus_delete
[00049bfe] 6022                      bra.s      Aob_delete_2
Aob_delete_6:
[00049c00] 206b 000c                 movea.l    12(a3),a0
[00049c04] 4eb9 0004 371c            jsr        Ast_delete
[00049c0a] 6016                      bra.s      Aob_delete_2
Aob_delete_4:
[00049c0c] 206b 000c                 movea.l    12(a3),a0
[00049c10] 4eb9 0004 a13c            jsr        Aim_delete
[00049c16] 600a                      bra.s      Aob_delete_2
Aob_delete_7:
[00049c18] 206b 000c                 movea.l    12(a3),a0
[00049c1c] 4eb9 0004 a094            jsr        Aic_delete
Aob_delete_2:
[00049c22] 7020                      moveq.l    #32,d0
[00049c24] 204b                      movea.l    a3,a0
[00049c26] 47eb 0018                 lea.l      24(a3),a3
[00049c2a] c068 0008                 and.w      8(a0),d0
[00049c2e] 6700 ff5a                 beq        Aob_delete_9
[00049c32] 204a                      movea.l    a2,a0
[00049c34] 4eb9 0004 7e26            jsr        Ax_free
Aob_delete_1:
[00049c3a] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[00049c3e] 4e75                      rts

Aob_count:
[00049c40] 7201                      moveq.l    #1,d1
[00049c42] 2248                      movea.l    a0,a1
[00049c44] 6014                      bra.s      Aob_count_1
Aob_count_4:
[00049c46] 4a40                      tst.w      d0
[00049c48] 660a                      bne.s      Aob_count_2
[00049c4a] 3429 0008                 move.w     8(a1),d2
[00049c4e] c47c 8000                 and.w      #$8000,d2
[00049c52] 6602                      bne.s      Aob_count_3
Aob_count_2:
[00049c54] 5241                      addq.w     #1,d1
Aob_count_3:
[00049c56] 43e9 0018                 lea.l      24(a1),a1
Aob_count_1:
[00049c5a] 7420                      moveq.l    #32,d2
[00049c5c] c469 0008                 and.w      8(a1),d2
[00049c60] 67e4                      beq.s      Aob_count_4
[00049c62] 5241                      addq.w     #1,d1
[00049c64] 3001                      move.w     d1,d0
[00049c66] 4e75                      rts

convert:
[00049c68] 48e7 1f3a                 movem.l    d3-d7/a2-a4/a6,-(a7)
[00049c6c] 4fef fff0                 lea.l      -16(a7),a7
[00049c70] 2648                      movea.l    a0,a3
[00049c72] 2849                      movea.l    a1,a4
[00049c74] 2279 0010 1f12            movea.l    ACSblk,a1
[00049c7a] 2069 023c                 movea.l    572(a1),a0
[00049c7e] 3028 000e                 move.w     14(a0),d0
[00049c82] c07c 0800                 and.w      #$0800,d0
[00049c86] 671e                      beq.s      convert_1
[00049c88] 302b 0008                 move.w     8(a3),d0
[00049c8c] c1eb 0006                 muls.w     6(a3),d0
[00049c90] d040                      add.w      d0,d0
[00049c92] c1e9 001c                 muls.w     28(a1),d0
[00049c96] 48c0                      ext.l      d0
[00049c98] 2253                      movea.l    (a3),a1
[00049c9a] 2054                      movea.l    (a4),a0
[00049c9c] 4eb9 0007 6f44            jsr        memcpy
[00049ca2] 6000 018a                 bra        convert_2
convert_1:
[00049ca6] 2079 0010 1f12            movea.l    ACSblk,a0
[00049cac] 7001                      moveq.l    #1,d0
[00049cae] 2279 0010 1f12            movea.l    ACSblk,a1
[00049cb4] 1229 001d                 move.b     29(a1),d1
[00049cb8] e368                      lsl.w      d1,d0
[00049cba] b068 001a                 cmp.w      26(a0),d0
[00049cbe] 6700 015a                 beq        convert_3
[00049cc2] 362b 0008                 move.w     8(a3),d3
[00049cc6] c7eb 0006                 muls.w     6(a3),d3
[00049cca] 48c3                      ext.l      d3
[00049ccc] 4242                      clr.w      d2
[00049cce] 3f42 0006                 move.w     d2,6(a7)
[00049cd2] 3f42 0004                 move.w     d2,4(a7)
[00049cd6] 3f42 0002                 move.w     d2,2(a7)
[00049cda] 3e82                      move.w     d2,(a7)
[00049cdc] 4244                      clr.w      d4
[00049cde] 6000 0130                 bra        convert_4
convert_18:
[00049ce2] 3f44 000e                 move.w     d4,14(a7)
[00049ce6] 3f44 000a                 move.w     d4,10(a7)
[00049cea] 3a04                      move.w     d4,d5
[00049cec] cbeb 0008                 muls.w     8(a3),d5
[00049cf0] 48c5                      ext.l      d5
[00049cf2] 4246                      clr.w      d6
[00049cf4] 6000 0110                 bra        convert_5
convert_17:
[00049cf8] 3006                      move.w     d6,d0
[00049cfa] e840                      asr.w      #4,d0
[00049cfc] 48c0                      ext.l      d0
[00049cfe] d085                      add.l      d5,d0
[00049d00] 2200                      move.l     d0,d1
[00049d02] d281                      add.l      d1,d1
[00049d04] 2c6f 0038                 movea.l    56(a7),a6
[00049d08] ddc1                      adda.l     d1,a6
[00049d0a] 2453                      movea.l    (a3),a2
[00049d0c] d5c1                      adda.l     d1,a2
[00049d0e] 3f46 000c                 move.w     d6,12(a7)
[00049d12] 3f46 0008                 move.w     d6,8(a7)
[00049d16] 203c 0000 8000            move.l     #$00008000,d0
[00049d1c] 740f                      moveq.l    #15,d2
[00049d1e] c406                      and.b      d6,d2
[00049d20] e4a0                      asr.l      d2,d0
[00049d22] 3216                      move.w     (a6),d1
[00049d24] c240                      and.w      d0,d1
[00049d26] 6700 009e                 beq        convert_6
[00049d2a] 4247                      clr.w      d7
[00049d2c] 3412                      move.w     (a2),d2
[00049d2e] c440                      and.w      d0,d2
[00049d30] 6702                      beq.s      convert_7
[00049d32] 5247                      addq.w     #1,d7
convert_7:
[00049d34] 2203                      move.l     d3,d1
[00049d36] d281                      add.l      d1,d1
[00049d38] d5c1                      adda.l     d1,a2
[00049d3a] 3412                      move.w     (a2),d2
[00049d3c] c440                      and.w      d0,d2
[00049d3e] 6702                      beq.s      convert_8
[00049d40] 5447                      addq.w     #2,d7
convert_8:
[00049d42] 2203                      move.l     d3,d1
[00049d44] d281                      add.l      d1,d1
[00049d46] d5c1                      adda.l     d1,a2
[00049d48] 3412                      move.w     (a2),d2
[00049d4a] c440                      and.w      d0,d2
[00049d4c] 6702                      beq.s      convert_9
[00049d4e] 5847                      addq.w     #4,d7
convert_9:
[00049d50] 2203                      move.l     d3,d1
[00049d52] d281                      add.l      d1,d1
[00049d54] d5c1                      adda.l     d1,a2
[00049d56] 3412                      move.w     (a2),d2
[00049d58] c440                      and.w      d0,d2
[00049d5a] 6702                      beq.s      convert_10
[00049d5c] 5047                      addq.w     #8,d7
convert_10:
[00049d5e] 2203                      move.l     d3,d1
[00049d60] d281                      add.l      d1,d1
[00049d62] d5c1                      adda.l     d1,a2
[00049d64] 3412                      move.w     (a2),d2
[00049d66] c440                      and.w      d0,d2
[00049d68] 6704                      beq.s      convert_11
[00049d6a] de7c 0010                 add.w      #$0010,d7
convert_11:
[00049d6e] 2203                      move.l     d3,d1
[00049d70] d281                      add.l      d1,d1
[00049d72] d5c1                      adda.l     d1,a2
[00049d74] 3412                      move.w     (a2),d2
[00049d76] c440                      and.w      d0,d2
[00049d78] 6704                      beq.s      convert_12
[00049d7a] de7c 0020                 add.w      #$0020,d7
convert_12:
[00049d7e] 2203                      move.l     d3,d1
[00049d80] d281                      add.l      d1,d1
[00049d82] d5c1                      adda.l     d1,a2
[00049d84] 3412                      move.w     (a2),d2
[00049d86] c440                      and.w      d0,d2
[00049d88] 6704                      beq.s      convert_13
[00049d8a] de7c 0040                 add.w      #$0040,d7
convert_13:
[00049d8e] 2203                      move.l     d3,d1
[00049d90] d281                      add.l      d1,d1
[00049d92] d5c1                      adda.l     d1,a2
[00049d94] 3412                      move.w     (a2),d2
[00049d96] c440                      and.w      d0,d2
[00049d98] 6704                      beq.s      convert_14
[00049d9a] de7c 0080                 add.w      #$0080,d7
convert_14:
[00049d9e] 2079 0010 1f12            movea.l    ACSblk,a0
[00049da4] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00049daa] 6c04                      bge.s      convert_15
[00049dac] ce7c 000f                 and.w      #$000F,d7
convert_15:
[00049db0] be7c 0010                 cmp.w      #$0010,d7
[00049db4] 6c1c                      bge.s      convert_16
[00049db6] 3007                      move.w     d7,d0
[00049db8] d040                      add.w      d0,d0
[00049dba] 41f9 000d 3d0a            lea.l      map,a0
[00049dc0] 3e30 0000                 move.w     0(a0,d0.w),d7
[00049dc4] 600c                      bra.s      convert_16
convert_6:
[00049dc6] 7eff                      moveq.l    #-1,d7
[00049dc8] 2079 0010 1f12            movea.l    ACSblk,a0
[00049dce] de68 001a                 add.w      26(a0),d7
convert_16:
[00049dd2] 33c7 0010 6b90            move.w     d7,col
[00049dd8] 33c7 0010 6b92            move.w     d7,$00106B92
[00049dde] 4879 0010 6b90            pea.l      col
[00049de4] 2f0c                      move.l     a4,-(a7)
[00049de6] 43f9 000d 3d2c            lea.l      punkt,a1
[00049dec] 41ef 0008                 lea.l      8(a7),a0
[00049df0] 7201                      moveq.l    #1,d1
[00049df2] 2479 0010 1f12            movea.l    ACSblk,a2
[00049df8] 302a 0010                 move.w     16(a2),d0
[00049dfc] 4eb9 0006 6632            jsr        vrt_cpyfm
[00049e02] 504f                      addq.w     #8,a7
[00049e04] 5246                      addq.w     #1,d6
convert_5:
[00049e06] bc6c 0004                 cmp.w      4(a4),d6
[00049e0a] 6d00 feec                 blt        convert_17
[00049e0e] 5244                      addq.w     #1,d4
convert_4:
[00049e10] b86c 0006                 cmp.w      6(a4),d4
[00049e14] 6d00 fecc                 blt        convert_18
[00049e18] 6014                      bra.s      convert_2
convert_3:
[00049e1a] 224c                      movea.l    a4,a1
[00049e1c] 204b                      movea.l    a3,a0
[00049e1e] 2479 0010 1f12            movea.l    ACSblk,a2
[00049e24] 302a 0010                 move.w     16(a2),d0
[00049e28] 4eb9 0006 66a8            jsr        vr_trnfm
convert_2:
[00049e2e] 4fef 0010                 lea.l      16(a7),a7
[00049e32] 4cdf 5cf8                 movem.l    (a7)+,d3-d7/a2-a4/a6
[00049e36] 4e75                      rts

Aic_create:
[00049e38] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[00049e3c] 4fef ffd4                 lea.l      -44(a7),a7
[00049e40] 2648                      movea.l    a0,a3
[00049e42] 7026                      moveq.l    #38,d0
[00049e44] 4eb9 0004 7cc8            jsr        Ax_malloc
[00049e4a] 2448                      movea.l    a0,a2
[00049e4c] 200a                      move.l     a2,d0
[00049e4e] 6726                      beq.s      Aic_create_1
[00049e50] 224b                      movea.l    a3,a1
[00049e52] 7026                      moveq.l    #38,d0
[00049e54] 4eb9 0007 6f44            jsr        memcpy
[00049e5a] 206b 0008                 movea.l    8(a3),a0
[00049e5e] 4eb9 0004 36d6            jsr        Ast_create
[00049e64] 2548 0008                 move.l     a0,8(a2)
[00049e68] 2008                      move.l     a0,d0
[00049e6a] 6610                      bne.s      Aic_create_2
[00049e6c] 204a                      movea.l    a2,a0
[00049e6e] 7026                      moveq.l    #38,d0
[00049e70] 4eb9 0004 8140            jsr        Ax_recycle
Aic_create_1:
[00049e76] 91c8                      suba.l     a0,a0
[00049e78] 6000 0210                 bra        Aic_create_3
Aic_create_2:
[00049e7c] 97cb                      suba.l     a3,a3
[00049e7e] 2c6a 0022                 movea.l    34(a2),a6
[00049e82] 200e                      move.l     a6,d0
[00049e84] 6700 01fe                 beq        Aic_create_4
[00049e88] 2079 0010 1f12            movea.l    ACSblk,a0
[00049e8e] 2268 0280                 movea.l    640(a0),a1
[00049e92] 0c51 0330                 cmpi.w     #$0330,(a1)
[00049e96] 6f06                      ble.s      Aic_create_5
[00049e98] 0c51 0350                 cmpi.w     #$0350,(a1)
[00049e9c] 6d2e                      blt.s      Aic_create_6
Aic_create_5:
[00049e9e] 4bef 002a                 lea.l      42(a7),a5
[00049ea2] 2f39 000d 99d6            move.l     _globl,-(a7)
[00049ea8] 4855                      pea.l      (a5)
[00049eaa] 486f 0030                 pea.l      48(a7)
[00049eae] 224d                      movea.l    a5,a1
[00049eb0] 204d                      movea.l    a5,a0
[00049eb2] 7002                      moveq.l    #2,d0
[00049eb4] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[00049eba] 4fef 000c                 lea.l      12(a7),a7
[00049ebe] 4a40                      tst.w      d0
[00049ec0] 6700 01c2                 beq        Aic_create_4
[00049ec4] 302f 0028                 move.w     40(a7),d0
[00049ec8] 6700 01ba                 beq        Aic_create_4
Aic_create_6:
[00049ecc] 760f                      moveq.l    #15,d3
[00049ece] d66a 0016                 add.w      22(a2),d3
[00049ed2] c67c fff0                 and.w      #$FFF0,d3
[00049ed6] 3a03                      move.w     d3,d5
[00049ed8] cbea 0018                 muls.w     24(a2),d5
[00049edc] e645                      asr.w      #3,d5
[00049ede] 48c5                      ext.l      d5
[00049ee0] 264e                      movea.l    a6,a3
[00049ee2] 202b 0012                 move.l     18(a3),d0
[00049ee6] 6712                      beq.s      Aic_create_7
[00049ee8] 2040                      movea.l    d0,a0
[00049eea] 3210                      move.w     (a0),d1
[00049eec] 2279 0010 1f12            movea.l    ACSblk,a1
[00049ef2] b269 001c                 cmp.w      28(a1),d1
[00049ef6] 6e02                      bgt.s      Aic_create_7
[00049ef8] 2640                      movea.l    d0,a3
Aic_create_7:
[00049efa] 254b 0022                 move.l     a3,34(a2)
[00049efe] 42ab 0012                 clr.l      18(a3)
[00049f02] 2079 0010 1f12            movea.l    ACSblk,a0
[00049f08] 3028 001c                 move.w     28(a0),d0
[00049f0c] b053                      cmp.w      (a3),d0
[00049f0e] 6d00 0174                 blt        Aic_create_4
[00049f12] 2a6b 0002                 movea.l    2(a3),a5
[00049f16] 5d4d                      subq.w     #6,a5
[00049f18] 3215                      move.w     (a5),d1
[00049f1a] 6f24                      ble.s      Aic_create_8
[00049f1c] 5255                      addq.w     #1,(a5)
[00049f1e] 41ed 0006                 lea.l      6(a5),a0
[00049f22] 2748 0002                 move.l     a0,2(a3)
[00049f26] 2a6b 000a                 movea.l    10(a3),a5
[00049f2a] 200d                      move.l     a5,d0
[00049f2c] 6700 015a                 beq        Aic_create_9
[00049f30] 5d4d                      subq.w     #6,a5
[00049f32] 5255                      addq.w     #1,(a5)
[00049f34] 41ed 0006                 lea.l      6(a5),a0
[00049f38] 2748 000a                 move.l     a0,10(a3)
[00049f3c] 6000 014a                 bra        Aic_create_9
Aic_create_8:
[00049f40] 2005                      move.l     d5,d0
[00049f42] 2079 0010 1f12            movea.l    ACSblk,a0
[00049f48] 3228 001c                 move.w     28(a0),d1
[00049f4c] 48c1                      ext.l      d1
[00049f4e] 4eb9 0007 76f0            jsr        _lmul
[00049f54] 2800                      move.l     d0,d4
[00049f56] 5c84                      addq.l     #6,d4
[00049f58] 2005                      move.l     d5,d0
[00049f5a] 3213                      move.w     (a3),d1
[00049f5c] 48c1                      ext.l      d1
[00049f5e] 4eb9 0007 76f0            jsr        _lmul
[00049f64] 2a00                      move.l     d0,d5
[00049f66] 2079 0010 1f12            movea.l    ACSblk,a0
[00049f6c] 36a8 001c                 move.w     28(a0),(a3)
[00049f70] 426f 000a                 clr.w      10(a7)
[00049f74] 49ef 0014                 lea.l      20(a7),a4
[00049f78] 397c 0001 000a            move.w     #$0001,10(a4)
[00049f7e] 3943 0004                 move.w     d3,4(a4)
[00049f82] 3f43 0004                 move.w     d3,4(a7)
[00049f86] 302a 0018                 move.w     24(a2),d0
[00049f8a] 3940 0006                 move.w     d0,6(a4)
[00049f8e] 3f40 0006                 move.w     d0,6(a7)
[00049f92] 3203                      move.w     d3,d1
[00049f94] e841                      asr.w      #4,d1
[00049f96] 3941 0008                 move.w     d1,8(a4)
[00049f9a] 3f41 0008                 move.w     d1,8(a7)
[00049f9e] 2079 0010 1f12            movea.l    ACSblk,a0
[00049fa4] 3028 001c                 move.w     28(a0),d0
[00049fa8] 3940 000c                 move.w     d0,12(a4)
[00049fac] 3f40 000c                 move.w     d0,12(a7)
[00049fb0] 4241                      clr.w      d1
[00049fb2] 3941 0012                 move.w     d1,18(a4)
[00049fb6] 3941 0010                 move.w     d1,16(a4)
[00049fba] 3941 000e                 move.w     d1,14(a4)
[00049fbe] 3f41 0012                 move.w     d1,18(a7)
[00049fc2] 3f41 0010                 move.w     d1,16(a7)
[00049fc6] 3f41 000e                 move.w     d1,14(a7)
[00049fca] 2004                      move.l     d4,d0
[00049fcc] 4eb9 0004 7cc8            jsr        Ax_malloc
[00049fd2] 2a48                      movea.l    a0,a5
[00049fd4] 200d                      move.l     a5,d0
[00049fd6] 6700 00ac                 beq        Aic_create_4
[00049fda] 2880                      move.l     d0,(a4)
[00049fdc] 2204                      move.l     d4,d1
[00049fde] 2040                      movea.l    d0,a0
[00049fe0] 4240                      clr.w      d0
[00049fe2] 4eb9 0007 712e            jsr        memset
[00049fe8] 2005                      move.l     d5,d0
[00049fea] 226b 0002                 movea.l    2(a3),a1
[00049fee] 2054                      movea.l    (a4),a0
[00049ff0] 4eb9 0007 6f44            jsr        memcpy
[00049ff6] 2004                      move.l     d4,d0
[00049ff8] 4eb9 0004 7cc8            jsr        Ax_malloc
[00049ffe] 2a48                      movea.l    a0,a5
[0004a000] 200d                      move.l     a5,d0
[0004a002] 6700 0080                 beq        Aic_create_4
[0004a006] 43ed 0006                 lea.l      6(a5),a1
[0004a00a] 2e89                      move.l     a1,(a7)
[0004a00c] 30bc 0001                 move.w     #$0001,(a0)
[0004a010] 2b6b 0002 0002            move.l     2(a3),2(a5)
[0004a016] 2f2b 0006                 move.l     6(a3),-(a7)
[0004a01a] 43ef 0004                 lea.l      4(a7),a1
[0004a01e] 204c                      movea.l    a4,a0
[0004a020] 6100 fc46                 bsr        convert
[0004a024] 584f                      addq.w     #4,a7
[0004a026] 2757 0002                 move.l     (a7),2(a3)
[0004a02a] 202b 000a                 move.l     10(a3),d0
[0004a02e] 674a                      beq.s      Aic_create_10
[0004a030] 2004                      move.l     d4,d0
[0004a032] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004a038] 2a48                      movea.l    a0,a5
[0004a03a] 200d                      move.l     a5,d0
[0004a03c] 660a                      bne.s      Aic_create_11
[0004a03e] 42ab 000a                 clr.l      10(a3)
[0004a042] 42ab 000e                 clr.l      14(a3)
[0004a046] 6032                      bra.s      Aic_create_10
Aic_create_11:
[0004a048] 2005                      move.l     d5,d0
[0004a04a] 226b 000a                 movea.l    10(a3),a1
[0004a04e] 2054                      movea.l    (a4),a0
[0004a050] 4eb9 0007 6f44            jsr        memcpy
[0004a056] 41ed 0006                 lea.l      6(a5),a0
[0004a05a] 2e88                      move.l     a0,(a7)
[0004a05c] 3abc 0001                 move.w     #$0001,(a5)
[0004a060] 2b6b 000a 0002            move.l     10(a3),2(a5)
[0004a066] 2f2b 000e                 move.l     14(a3),-(a7)
[0004a06a] 43ef 0004                 lea.l      4(a7),a1
[0004a06e] 204c                      movea.l    a4,a0
[0004a070] 6100 fbf6                 bsr        convert
[0004a074] 584f                      addq.w     #4,a7
[0004a076] 2757 000a                 move.l     (a7),10(a3)
Aic_create_10:
[0004a07a] 2054                      movea.l    (a4),a0
[0004a07c] 4eb9 0004 7d6c            jsr        Ax_ifree
[0004a082] 6004                      bra.s      Aic_create_9
Aic_create_4:
[0004a084] 42aa 0022                 clr.l      34(a2)
Aic_create_9:
[0004a088] 204a                      movea.l    a2,a0
Aic_create_3:
[0004a08a] 4fef 002c                 lea.l      44(a7),a7
[0004a08e] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[0004a092] 4e75                      rts

Aic_delete:
[0004a094] 48e7 0038                 movem.l    a2-a4,-(a7)
[0004a098] 2448                      movea.l    a0,a2
[0004a09a] 200a                      move.l     a2,d0
[0004a09c] 676c                      beq.s      Aic_delete_1
[0004a09e] 2279 0010 1f12            movea.l    ACSblk,a1
[0004a0a4] 2069 023c                 movea.l    572(a1),a0
[0004a0a8] 3228 000e                 move.w     14(a0),d1
[0004a0ac] c27c 0800                 and.w      #$0800,d1
[0004a0b0] 6658                      bne.s      Aic_delete_1
[0004a0b2] 266a 0022                 movea.l    34(a2),a3
[0004a0b6] 240b                      move.l     a3,d2
[0004a0b8] 673c                      beq.s      Aic_delete_2
[0004a0ba] 286b 0002                 movea.l    2(a3),a4
[0004a0be] 5d4c                      subq.w     #6,a4
[0004a0c0] 5354                      subq.w     #1,(a4)
[0004a0c2] 0c54 0001                 cmpi.w     #$0001,(a4)
[0004a0c6] 6c0e                      bge.s      Aic_delete_3
[0004a0c8] 276c 0002 0002            move.l     2(a4),2(a3)
[0004a0ce] 204c                      movea.l    a4,a0
[0004a0d0] 4eb9 0004 7d6c            jsr        Ax_ifree
Aic_delete_3:
[0004a0d6] 286b 000a                 movea.l    10(a3),a4
[0004a0da] 200c                      move.l     a4,d0
[0004a0dc] 6718                      beq.s      Aic_delete_2
[0004a0de] 5d4c                      subq.w     #6,a4
[0004a0e0] 5354                      subq.w     #1,(a4)
[0004a0e2] 0c54 0001                 cmpi.w     #$0001,(a4)
[0004a0e6] 6c0e                      bge.s      Aic_delete_2
[0004a0e8] 276c 0002 000a            move.l     2(a4),10(a3)
[0004a0ee] 204c                      movea.l    a4,a0
[0004a0f0] 4eb9 0004 7d6c            jsr        Ax_ifree
Aic_delete_2:
[0004a0f6] 206a 0008                 movea.l    8(a2),a0
[0004a0fa] 4eb9 0004 371c            jsr        Ast_delete
[0004a100] 7026                      moveq.l    #38,d0
[0004a102] 204a                      movea.l    a2,a0
[0004a104] 4eb9 0004 8140            jsr        Ax_recycle
Aic_delete_1:
[0004a10a] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0004a10e] 4e75                      rts

Aim_create:
[0004a110] 2f0a                      move.l     a2,-(a7)
[0004a112] 2f0b                      move.l     a3,-(a7)
[0004a114] 2648                      movea.l    a0,a3
[0004a116] 700e                      moveq.l    #14,d0
[0004a118] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004a11e] 2448                      movea.l    a0,a2
[0004a120] 200a                      move.l     a2,d0
[0004a122] 6604                      bne.s      Aim_create_1
[0004a124] 91c8                      suba.l     a0,a0
[0004a126] 600e                      bra.s      Aim_create_2
Aim_create_1:
[0004a128] 700e                      moveq.l    #14,d0
[0004a12a] 224b                      movea.l    a3,a1
[0004a12c] 204a                      movea.l    a2,a0
[0004a12e] 4eb9 0007 6f44            jsr        memcpy
[0004a134] 204a                      movea.l    a2,a0
Aim_create_2:
[0004a136] 265f                      movea.l    (a7)+,a3
[0004a138] 245f                      movea.l    (a7)+,a2
[0004a13a] 4e75                      rts

Aim_delete:
[0004a13c] 700e                      moveq.l    #14,d0
[0004a13e] 4eb9 0004 8140            jsr        Ax_recycle
[0004a144] 4e75                      rts

Ate_create:
[0004a146] 2f0a                      move.l     a2,-(a7)
[0004a148] 2f0b                      move.l     a3,-(a7)
[0004a14a] 2648                      movea.l    a0,a3
[0004a14c] 701c                      moveq.l    #28,d0
[0004a14e] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004a154] 2448                      movea.l    a0,a2
[0004a156] 200a                      move.l     a2,d0
[0004a158] 6758                      beq.s      Ate_create_1
[0004a15a] 701c                      moveq.l    #28,d0
[0004a15c] 224b                      movea.l    a3,a1
[0004a15e] 4eb9 0007 6f44            jsr        memcpy
[0004a164] 2053                      movea.l    (a3),a0
[0004a166] 4eb9 0004 36d6            jsr        Ast_create
[0004a16c] 2488                      move.l     a0,(a2)
[0004a16e] 206b 0004                 movea.l    4(a3),a0
[0004a172] 4eb9 0004 36d6            jsr        Ast_create
[0004a178] 2548 0004                 move.l     a0,4(a2)
[0004a17c] 206b 0008                 movea.l    8(a3),a0
[0004a180] 4eb9 0004 36d6            jsr        Ast_create
[0004a186] 2548 0008                 move.l     a0,8(a2)
[0004a18a] 2012                      move.l     (a2),d0
[0004a18c] 670a                      beq.s      Ate_create_2
[0004a18e] 222a 0004                 move.l     4(a2),d1
[0004a192] 6704                      beq.s      Ate_create_2
[0004a194] 2408                      move.l     a0,d2
[0004a196] 661e                      bne.s      Ate_create_3
Ate_create_2:
[0004a198] 2052                      movea.l    (a2),a0
[0004a19a] 4eb9 0004 7e26            jsr        Ax_free
[0004a1a0] 206a 0004                 movea.l    4(a2),a0
[0004a1a4] 4eb9 0004 7e26            jsr        Ax_free
[0004a1aa] 204a                      movea.l    a2,a0
[0004a1ac] 4eb9 0004 7e26            jsr        Ax_free
Ate_create_1:
[0004a1b2] 91c8                      suba.l     a0,a0
[0004a1b4] 6002                      bra.s      Ate_create_4
Ate_create_3:
[0004a1b6] 204a                      movea.l    a2,a0
Ate_create_4:
[0004a1b8] 265f                      movea.l    (a7)+,a3
[0004a1ba] 245f                      movea.l    (a7)+,a2
[0004a1bc] 4e75                      rts

Ate_delete:
[0004a1be] 2f0a                      move.l     a2,-(a7)
[0004a1c0] 2448                      movea.l    a0,a2
[0004a1c2] 200a                      move.l     a2,d0
[0004a1c4] 6726                      beq.s      Ate_delete_1
[0004a1c6] 206a 0008                 movea.l    8(a2),a0
[0004a1ca] 4eb9 0004 371c            jsr        Ast_delete
[0004a1d0] 206a 0004                 movea.l    4(a2),a0
[0004a1d4] 4eb9 0004 371c            jsr        Ast_delete
[0004a1da] 2052                      movea.l    (a2),a0
[0004a1dc] 4eb9 0004 371c            jsr        Ast_delete
[0004a1e2] 701c                      moveq.l    #28,d0
[0004a1e4] 204a                      movea.l    a2,a0
[0004a1e6] 4eb9 0004 8140            jsr        Ax_recycle
Ate_delete_1:
[0004a1ec] 245f                      movea.l    (a7)+,a2
[0004a1ee] 4e75                      rts

Aus_create:
[0004a1f0] 2f0a                      move.l     a2,-(a7)
[0004a1f2] 2f0b                      move.l     a3,-(a7)
[0004a1f4] 2648                      movea.l    a0,a3
[0004a1f6] 7020                      moveq.l    #32,d0
[0004a1f8] 4eb9 0004 7cc8            jsr        Ax_malloc
[0004a1fe] 2448                      movea.l    a0,a2
[0004a200] 200a                      move.l     a2,d0
[0004a202] 6604                      bne.s      Aus_create_1
[0004a204] 91c8                      suba.l     a0,a0
[0004a206] 602a                      bra.s      Aus_create_2
Aus_create_1:
[0004a208] 7020                      moveq.l    #32,d0
[0004a20a] 224b                      movea.l    a3,a1
[0004a20c] 204a                      movea.l    a2,a0
[0004a20e] 4eb9 0007 6f44            jsr        memcpy
[0004a214] 206b 0018                 movea.l    24(a3),a0
[0004a218] 4eb9 0004 36d6            jsr        Ast_create
[0004a21e] 2548 0018                 move.l     a0,24(a2)
[0004a222] 206b 001c                 movea.l    28(a3),a0
[0004a226] 4eb9 0004 36d6            jsr        Ast_create
[0004a22c] 2548 001c                 move.l     a0,28(a2)
[0004a230] 204a                      movea.l    a2,a0
Aus_create_2:
[0004a232] 265f                      movea.l    (a7)+,a3
[0004a234] 245f                      movea.l    (a7)+,a2
[0004a236] 4e75                      rts

Aus_delete:
[0004a238] 2f0a                      move.l     a2,-(a7)
[0004a23a] 2448                      movea.l    a0,a2
[0004a23c] 206a 001c                 movea.l    28(a2),a0
[0004a240] 4eb9 0004 371c            jsr        Ast_delete
[0004a246] 206a 0018                 movea.l    24(a2),a0
[0004a24a] 4eb9 0004 371c            jsr        Ast_delete
[0004a250] 7020                      moveq.l    #32,d0
[0004a252] 204a                      movea.l    a2,a0
[0004a254] 4eb9 0004 8140            jsr        Ax_recycle
[0004a25a] 245f                      movea.l    (a7)+,a2
[0004a25c] 4e75                      rts

Aob_fix:
[0004a25e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0004a262] 2448                      movea.l    a0,a2
[0004a264] 302a 000a                 move.w     10(a2),d0
[0004a268] c07c 8000                 and.w      #$8000,d0
[0004a26c] 6600 00da                 bne        Aob_fix_1
[0004a270] 006a 8000 000a            ori.w      #$8000,10(a2)
Aob_fix_11:
[0004a276] 47f9 000d 99d6            lea.l      _globl,a3
[0004a27c] 302a 0008                 move.w     8(a2),d0
[0004a280] c07c 8000                 and.w      #$8000,d0
[0004a284] 6600 00b2                 bne        Aob_fix_2
[0004a288] 122a 0007                 move.b     7(a2),d1
[0004a28c] 4881                      ext.w      d1
[0004a28e] 927c 0017                 sub.w      #$0017,d1
[0004a292] 6766                      beq.s      Aob_fix_3
[0004a294] 5141                      subq.w     #8,d1
[0004a296] 6708                      beq.s      Aob_fix_4
[0004a298] 5541                      subq.w     #2,d1
[0004a29a] 670c                      beq.s      Aob_fix_5
[0004a29c] 6000 008e                 bra        Aob_fix_6
Aob_fix_4:
[0004a2a0] 204a                      movea.l    a2,a0
[0004a2a2] 4eb9 0004 a34e            jsr        Aob_icon
Aob_fix_5:
[0004a2a8] 2253                      movea.l    (a3),a1
[0004a2aa] 4240                      clr.w      d0
[0004a2ac] 204a                      movea.l    a2,a0
[0004a2ae] 4eb9 0006 d908            jsr        mt_rsrc_obfix
[0004a2b4] 206a 000c                 movea.l    12(a2),a0
[0004a2b8] 3628 0012                 move.w     18(a0),d3
[0004a2bc] d668 0016                 add.w      22(a0),d3
[0004a2c0] 3028 001a                 move.w     26(a0),d0
[0004a2c4] d068 001e                 add.w      30(a0),d0
[0004a2c8] b640                      cmp.w      d0,d3
[0004a2ca] 6c02                      bge.s      Aob_fix_7
[0004a2cc] 3600                      move.w     d0,d3
Aob_fix_7:
[0004a2ce] b66a 0014                 cmp.w      20(a2),d3
[0004a2d2] 6f04                      ble.s      Aob_fix_8
[0004a2d4] 3543 0014                 move.w     d3,20(a2)
Aob_fix_8:
[0004a2d8] 3628 0014                 move.w     20(a0),d3
[0004a2dc] d668 0018                 add.w      24(a0),d3
[0004a2e0] 3028 001c                 move.w     28(a0),d0
[0004a2e4] d068 0020                 add.w      32(a0),d0
[0004a2e8] b640                      cmp.w      d0,d3
[0004a2ea] 6c02                      bge.s      Aob_fix_9
[0004a2ec] 3600                      move.w     d0,d3
Aob_fix_9:
[0004a2ee] b66a 0016                 cmp.w      22(a2),d3
[0004a2f2] 6f44                      ble.s      Aob_fix_2
[0004a2f4] 3543 0016                 move.w     d3,22(a2)
[0004a2f8] 603e                      bra.s      Aob_fix_2
Aob_fix_3:
[0004a2fa] 2253                      movea.l    (a3),a1
[0004a2fc] 4240                      clr.w      d0
[0004a2fe] 204a                      movea.l    a2,a0
[0004a300] 4eb9 0006 d908            jsr        mt_rsrc_obfix
[0004a306] 206a 000c                 movea.l    12(a2),a0
[0004a30a] 3628 0004                 move.w     4(a0),d3
[0004a30e] e74b                      lsl.w      #3,d3
[0004a310] b66a 0014                 cmp.w      20(a2),d3
[0004a314] 6f04                      ble.s      Aob_fix_10
[0004a316] 3543 0014                 move.w     d3,20(a2)
Aob_fix_10:
[0004a31a] 302a 0016                 move.w     22(a2),d0
[0004a31e] b068 0006                 cmp.w      6(a0),d0
[0004a322] 6c14                      bge.s      Aob_fix_2
[0004a324] 3568 0006 0016            move.w     6(a0),22(a2)
[0004a32a] 600c                      bra.s      Aob_fix_2
Aob_fix_6:
[0004a32c] 2253                      movea.l    (a3),a1
[0004a32e] 4240                      clr.w      d0
[0004a330] 204a                      movea.l    a2,a0
[0004a332] 4eb9 0006 d908            jsr        mt_rsrc_obfix
Aob_fix_2:
[0004a338] 7020                      moveq.l    #32,d0
[0004a33a] 204a                      movea.l    a2,a0
[0004a33c] 45ea 0018                 lea.l      24(a2),a2
[0004a340] c068 0008                 and.w      8(a0),d0
[0004a344] 6700 ff30                 beq        Aob_fix_11
Aob_fix_1:
[0004a348] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0004a34c] 4e75                      rts

Aob_icon:
[0004a34e] 2f0a                      move.l     a2,-(a7)
[0004a350] 2f0b                      move.l     a3,-(a7)
[0004a352] 594f                      subq.w     #4,a7
[0004a354] 2448                      movea.l    a0,a2
[0004a356] 206a 000c                 movea.l    12(a2),a0
[0004a35a] 43f9 0010 1f12            lea.l      ACSblk,a1
[0004a360] 2651                      movea.l    (a1),a3
[0004a362] 0c6b 0001 001c            cmpi.w     #$0001,28(a3)
[0004a368] 6f46                      ble.s      Aob_icon_1
[0004a36a] 2028 0022                 move.l     34(a0),d0
[0004a36e] 6740                      beq.s      Aob_icon_1
[0004a370] 206b 0280                 movea.l    640(a3),a0
[0004a374] 0c50 0330                 cmpi.w     #$0330,(a0)
[0004a378] 6f06                      ble.s      Aob_icon_2
[0004a37a] 0c50 0350                 cmpi.w     #$0350,(a0)
[0004a37e] 6d28                      blt.s      Aob_icon_3
Aob_icon_2:
[0004a380] 47ef 0002                 lea.l      2(a7),a3
[0004a384] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004a38a] 4853                      pea.l      (a3)
[0004a38c] 486f 0008                 pea.l      8(a7)
[0004a390] 224b                      movea.l    a3,a1
[0004a392] 204b                      movea.l    a3,a0
[0004a394] 7002                      moveq.l    #2,d0
[0004a396] 4eb9 0006 aad2            jsr        mt_appl_getinfo
[0004a39c] 4fef 000c                 lea.l      12(a7),a7
[0004a3a0] 4a40                      tst.w      d0
[0004a3a2] 670c                      beq.s      Aob_icon_1
[0004a3a4] 3017                      move.w     (a7),d0
[0004a3a6] 6708                      beq.s      Aob_icon_1
Aob_icon_3:
[0004a3a8] 357c 0021 0006            move.w     #$0021,6(a2)
[0004a3ae] 6006                      bra.s      Aob_icon_4
Aob_icon_1:
[0004a3b0] 357c 001f 0006            move.w     #$001F,6(a2)
Aob_icon_4:
[0004a3b6] 584f                      addq.w     #4,a7
[0004a3b8] 265f                      movea.l    (a7)+,a3
[0004a3ba] 245f                      movea.l    (a7)+,a2
[0004a3bc] 4e75                      rts

Aob_offset:
[0004a3be] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0004a3c2] 2648                      movea.l    a0,a3
[0004a3c4] 2449                      movea.l    a1,a2
[0004a3c6] 3600                      move.w     d0,d3
[0004a3c8] 48c0                      ext.l      d0
[0004a3ca] 2200                      move.l     d0,d1
[0004a3cc] d281                      add.l      d1,d1
[0004a3ce] d280                      add.l      d0,d1
[0004a3d0] e789                      lsl.l      #3,d1
[0004a3d2] 41f2 1800                 lea.l      0(a2,d1.l),a0
[0004a3d6] 4240                      clr.w      d0
[0004a3d8] 1428 0007                 move.b     7(a0),d2
[0004a3dc] 4882                      ext.w      d2
[0004a3de] 947c 0014                 sub.w      #$0014,d2
[0004a3e2] b47c 000a                 cmp.w      #$000A,d2
[0004a3e6] 6200 00b0                 bhi        Aob_offset_1
[0004a3ea] d442                      add.w      d2,d2
[0004a3ec] 343b 2006                 move.w     $0004A3F4(pc,d2.w),d2
[0004a3f0] 4efb 2002                 jmp        $0004A3F4(pc,d2.w)
J37:
[0004a3f4] 0016                      dc.w $0016   ; Aob_offset_2-J37
[0004a3f6] 0026                      dc.w $0026   ; Aob_offset_3-J37
[0004a3f8] 0026                      dc.w $0026   ; Aob_offset_3-J37
[0004a3fa] 00a4                      dc.w $00a4   ; Aob_offset_1-J37
[0004a3fc] 004e                      dc.w $004e   ; Aob_offset_4-J37
[0004a3fe] 0016                      dc.w $0016   ; Aob_offset_2-J37
[0004a400] 0034                      dc.w $0034   ; Aob_offset_5-J37
[0004a402] 0016                      dc.w $0016   ; Aob_offset_2-J37
[0004a404] 00a4                      dc.w $00a4   ; Aob_offset_1-J37
[0004a406] 0026                      dc.w $0026   ; Aob_offset_3-J37
[0004a408] 0026                      dc.w $0026   ; Aob_offset_3-J37
Aob_offset_2:
[0004a40a] 2028 000c                 move.l     12(a0),d0
[0004a40e] 7210                      moveq.l    #16,d1
[0004a410] e2a0                      asr.l      d1,d0
[0004a412] 4880                      ext.w      d0
[0004a414] 4440                      neg.w      d0
[0004a416] 6000 0080                 bra        Aob_offset_1
Aob_offset_3:
[0004a41a] 2268 000c                 movea.l    12(a0),a1
[0004a41e] 3029 0016                 move.w     22(a1),d0
[0004a422] 4440                      neg.w      d0
[0004a424] 6000 0072                 bra.w      Aob_offset_1
Aob_offset_5:
[0004a428] 7001                      moveq.l    #1,d0
[0004a42a] 7204                      moveq.l    #4,d1
[0004a42c] c268 0008                 and.w      8(a0),d1
[0004a430] 6702                      beq.s      Aob_offset_6
[0004a432] 7002                      moveq.l    #2,d0
Aob_offset_6:
[0004a434] 3228 0008                 move.w     8(a0),d1
[0004a438] c27c 4002                 and.w      #$4002,d1
[0004a43c] 675a                      beq.s      Aob_offset_1
[0004a43e] 7003                      moveq.l    #3,d0
[0004a440] 6056                      bra.s      Aob_offset_1
Aob_offset_4:
[0004a442] 2268 000c                 movea.l    12(a0),a1
[0004a446] 2851                      movea.l    (a1),a4
[0004a448] b9fc 0005 a4e2            cmpa.l     #A_3Dbutton,a4
[0004a44e] 6646                      bne.s      Aob_offset_7
[0004a450] 2029 0004                 move.l     4(a1),d0
[0004a454] 7214                      moveq.l    #20,d1
[0004a456] e2a0                      asr.l      d1,d0
[0004a458] c07c 000f                 and.w      #$000F,d0
[0004a45c] b07c 0007                 cmp.w      #$0007,d0
[0004a460] 6f04                      ble.s      Aob_offset_8
[0004a462] d07c fff0                 add.w      #$FFF0,d0
Aob_offset_8:
[0004a466] 2229 0004                 move.l     4(a1),d1
[0004a46a] 7410                      moveq.l    #16,d2
[0004a46c] e4a1                      asr.l      d2,d1
[0004a46e] c27c 000f                 and.w      #$000F,d1
[0004a472] 4a41                      tst.w      d1
[0004a474] 6f0c                      ble.s      Aob_offset_9
[0004a476] 3428 0008                 move.w     8(a0),d2
[0004a47a] c47c 4002                 and.w      #$4002,d2
[0004a47e] 6702                      beq.s      Aob_offset_9
[0004a480] 5241                      addq.w     #1,d1
Aob_offset_9:
[0004a482] 7405                      moveq.l    #5,d2
[0004a484] c468 0008                 and.w      8(a0),d2
[0004a488] 5b42                      subq.w     #5,d2
[0004a48a] 6602                      bne.s      Aob_offset_10
[0004a48c] 5241                      addq.w     #1,d1
Aob_offset_10:
[0004a48e] 3401                      move.w     d1,d2
[0004a490] d440                      add.w      d0,d2
[0004a492] 3002                      move.w     d2,d0
[0004a494] 6002                      bra.s      Aob_offset_1
Aob_offset_7:
[0004a496] 7001                      moveq.l    #1,d0
Aob_offset_1:
[0004a498] 4a40                      tst.w      d0
[0004a49a] 6a02                      bpl.s      Aob_offset_11
[0004a49c] 4240                      clr.w      d0
Aob_offset_11:
[0004a49e] 7210                      moveq.l    #16,d1
[0004a4a0] c268 000a                 and.w      10(a0),d1
[0004a4a4] 6708                      beq.s      Aob_offset_12
[0004a4a6] b07c 0003                 cmp.w      #$0003,d0
[0004a4aa] 6c02                      bge.s      Aob_offset_12
[0004a4ac] 7003                      moveq.l    #3,d0
Aob_offset_12:
[0004a4ae] 3228 0008                 move.w     8(a0),d1
[0004a4b2] c27c 4008                 and.w      #$4008,d1
[0004a4b6] 6708                      beq.s      Aob_offset_13
[0004a4b8] b07c 0003                 cmp.w      #$0003,d0
[0004a4bc] 6c02                      bge.s      Aob_offset_13
[0004a4be] 7003                      moveq.l    #3,d0
Aob_offset_13:
[0004a4c0] 4241                      clr.w      d1
[0004a4c2] 7420                      moveq.l    #32,d2
[0004a4c4] c468 000a                 and.w      10(a0),d2
[0004a4c8] 6710                      beq.s      Aob_offset_14
[0004a4ca] 4a40                      tst.w      d0
[0004a4cc] 6f06                      ble.s      Aob_offset_15
[0004a4ce] 3200                      move.w     d0,d1
[0004a4d0] d241                      add.w      d1,d1
[0004a4d2] 6006                      bra.s      Aob_offset_14
Aob_offset_15:
[0004a4d4] 3200                      move.w     d0,d1
[0004a4d6] 4441                      neg.w      d1
[0004a4d8] d241                      add.w      d1,d1
Aob_offset_14:
[0004a4da] 3428 0010                 move.w     16(a0),d2
[0004a4de] 9440                      sub.w      d0,d2
[0004a4e0] 3682                      move.w     d2,(a3)
[0004a4e2] 3428 0012                 move.w     18(a0),d2
[0004a4e6] 9440                      sub.w      d0,d2
[0004a4e8] 3742 0002                 move.w     d2,2(a3)
[0004a4ec] 3400                      move.w     d0,d2
[0004a4ee] d442                      add.w      d2,d2
[0004a4f0] d468 0014                 add.w      20(a0),d2
[0004a4f4] d441                      add.w      d1,d2
[0004a4f6] 3742 0004                 move.w     d2,4(a3)
[0004a4fa] 3400                      move.w     d0,d2
[0004a4fc] d442                      add.w      d2,d2
[0004a4fe] d468 0016                 add.w      22(a0),d2
[0004a502] d441                      add.w      d1,d2
[0004a504] 3742 0006                 move.w     d2,6(a3)
Aob_offset_17:
[0004a508] 3803                      move.w     d3,d4
[0004a50a] 3204                      move.w     d4,d1
[0004a50c] 48c1                      ext.l      d1
[0004a50e] 2001                      move.l     d1,d0
[0004a510] d080                      add.l      d0,d0
[0004a512] d081                      add.l      d1,d0
[0004a514] e788                      lsl.l      #3,d0
[0004a516] 3632 0800                 move.w     0(a2,d0.l),d3
[0004a51a] b67c ffff                 cmp.w      #$FFFF,d3
[0004a51e] 6722                      beq.s      Aob_offset_16
[0004a520] 3003                      move.w     d3,d0
[0004a522] 48c0                      ext.l      d0
[0004a524] 2400                      move.l     d0,d2
[0004a526] d482                      add.l      d2,d2
[0004a528] d480                      add.l      d0,d2
[0004a52a] e78a                      lsl.l      #3,d2
[0004a52c] b872 2804                 cmp.w      4(a2,d2.l),d4
[0004a530] 66d6                      bne.s      Aob_offset_17
[0004a532] 3832 2810                 move.w     16(a2,d2.l),d4
[0004a536] d953                      add.w      d4,(a3)
[0004a538] 3832 2812                 move.w     18(a2,d2.l),d4
[0004a53c] d96b 0002                 add.w      d4,2(a3)
[0004a540] 60c6                      bra.s      Aob_offset_17
Aob_offset_16:
[0004a542] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0004a546] 4e75                      rts

Aob_save:
[0004a548] 48e7 0034                 movem.l    a2-a3/a5,-(a7)
[0004a54c] 4fef fff0                 lea.l      -16(a7),a7
[0004a550] 2448                      movea.l    a0,a2
[0004a552] 3010                      move.w     (a0),d0
[0004a554] 6a06                      bpl.s      Aob_save_1
[0004a556] 916a 0004                 sub.w      d0,4(a2)
[0004a55a] 4250                      clr.w      (a0)
Aob_save_1:
[0004a55c] 302a 0002                 move.w     2(a2),d0
[0004a560] 6a08                      bpl.s      Aob_save_2
[0004a562] 916a 0006                 sub.w      d0,6(a2)
[0004a566] 426a 0002                 clr.w      2(a2)
Aob_save_2:
[0004a56a] 47f9 0010 1f12            lea.l      ACSblk,a3
[0004a570] 3012                      move.w     (a2),d0
[0004a572] d06a 0004                 add.w      4(a2),d0
[0004a576] 2053                      movea.l    (a3),a0
[0004a578] 9068 000c                 sub.w      12(a0),d0
[0004a57c] 4a40                      tst.w      d0
[0004a57e] 6f04                      ble.s      Aob_save_3
[0004a580] 916a 0004                 sub.w      d0,4(a2)
Aob_save_3:
[0004a584] 302a 0002                 move.w     2(a2),d0
[0004a588] d06a 0006                 add.w      6(a2),d0
[0004a58c] 2053                      movea.l    (a3),a0
[0004a58e] 9068 000a                 sub.w      10(a0),d0
[0004a592] 9068 000e                 sub.w      14(a0),d0
[0004a596] 4a40                      tst.w      d0
[0004a598] 6f04                      ble.s      Aob_save_4
[0004a59a] 916a 0006                 sub.w      d0,6(a2)
Aob_save_4:
[0004a59e] 303c fff8                 move.w     #$FFF8,d0
[0004a5a2] c052                      and.w      (a2),d0
[0004a5a4] 3e80                      move.w     d0,(a7)
[0004a5a6] 3f6a 0002 0002            move.w     2(a2),2(a7)
[0004a5ac] 3212                      move.w     (a2),d1
[0004a5ae] d26a 0004                 add.w      4(a2),d1
[0004a5b2] 827c 0007                 or.w       #$0007,d1
[0004a5b6] 3f41 0004                 move.w     d1,4(a7)
[0004a5ba] 342a 0002                 move.w     2(a2),d2
[0004a5be] d46a 0006                 add.w      6(a2),d2
[0004a5c2] 5342                      subq.w     #1,d2
[0004a5c4] 3f42 0006                 move.w     d2,6(a7)
[0004a5c8] 322a 0006                 move.w     6(a2),d1
[0004a5cc] 302f 0004                 move.w     4(a7),d0
[0004a5d0] 9057                      sub.w      (a7),d0
[0004a5d2] 5240                      addq.w     #1,d0
[0004a5d4] 4eb9 0004 d928            jsr        Abp_create
[0004a5da] 2a48                      movea.l    a0,a5
[0004a5dc] 200d                      move.l     a5,d0
[0004a5de] 6604                      bne.s      Aob_save_5
[0004a5e0] 91c8                      suba.l     a0,a0
[0004a5e2] 605e                      bra.s      Aob_save_6
Aob_save_5:
[0004a5e4] 426f 0008                 clr.w      8(a7)
[0004a5e8] 426f 000a                 clr.w      10(a7)
[0004a5ec] 302f 0004                 move.w     4(a7),d0
[0004a5f0] 9057                      sub.w      (a7),d0
[0004a5f2] 3f40 000c                 move.w     d0,12(a7)
[0004a5f6] 72ff                      moveq.l    #-1,d1
[0004a5f8] d26a 0006                 add.w      6(a2),d1
[0004a5fc] 3f41 000e                 move.w     d1,14(a7)
[0004a600] 2279 000d 99d6            movea.l    _globl,a1
[0004a606] 91c8                      suba.l     a0,a0
[0004a608] 303c 0100                 move.w     #$0100,d0
[0004a60c] 4eb9 0006 c914            jsr        mt_graf_mouse
[0004a612] 2f0d                      move.l     a5,-(a7)
[0004a614] 2253                      movea.l    (a3),a1
[0004a616] 43e9 026a                 lea.l      618(a1),a1
[0004a61a] 41ef 0004                 lea.l      4(a7),a0
[0004a61e] 7203                      moveq.l    #3,d1
[0004a620] 2453                      movea.l    (a3),a2
[0004a622] 302a 0010                 move.w     16(a2),d0
[0004a626] 4eb9 0006 65ce            jsr        vro_cpyfm
[0004a62c] 584f                      addq.w     #4,a7
[0004a62e] 2279 000d 99d6            movea.l    _globl,a1
[0004a634] 91c8                      suba.l     a0,a0
[0004a636] 303c 0101                 move.w     #$0101,d0
[0004a63a] 4eb9 0006 c914            jsr        mt_graf_mouse
[0004a640] 204d                      movea.l    a5,a0
Aob_save_6:
[0004a642] 4fef 0010                 lea.l      16(a7),a7
[0004a646] 4cdf 2c00                 movem.l    (a7)+,a2-a3/a5
[0004a64a] 4e75                      rts

Aob_restore:
[0004a64c] 48e7 001c                 movem.l    a3-a5,-(a7)
[0004a650] 4fef fff0                 lea.l      -16(a7),a7
[0004a654] 2648                      movea.l    a0,a3
[0004a656] 2849                      movea.l    a1,a4
[0004a658] 43f9 000d 3d40            lea.l      $000D3D40,a1
[0004a65e] 41d7                      lea.l      (a7),a0
[0004a660] 700f                      moveq.l    #15,d0
Aob_restore_1:
[0004a662] 10d9                      move.b     (a1)+,(a0)+
[0004a664] 51c8 fffc                 dbf        d0,Aob_restore_1
[0004a668] 4bf9 0010 1f12            lea.l      ACSblk,a5
[0004a66e] 200b                      move.l     a3,d0
[0004a670] 6618                      bne.s      Aob_restore_2
[0004a672] 204c                      movea.l    a4,a0
[0004a674] 72ff                      moveq.l    #-1,d1
[0004a676] 2255                      movea.l    (a5),a1
[0004a678] 3011                      move.w     (a1),d0
[0004a67a] 4eb9 0005 5058            jsr        Aev_WmRedraw
[0004a680] 4eb9 0004 6d70            jsr        Aev_mess
[0004a686] 6000 00a2                 bra        Aob_restore_3
Aob_restore_2:
[0004a68a] 303c fff8                 move.w     #$FFF8,d0
[0004a68e] c054                      and.w      (a4),d0
[0004a690] 3f40 0008                 move.w     d0,8(a7)
[0004a694] 3f6c 0002 000a            move.w     2(a4),10(a7)
[0004a69a] 3214                      move.w     (a4),d1
[0004a69c] d26c 0004                 add.w      4(a4),d1
[0004a6a0] 827c 0007                 or.w       #$0007,d1
[0004a6a4] 3f41 000c                 move.w     d1,12(a7)
[0004a6a8] 342c 0002                 move.w     2(a4),d2
[0004a6ac] d46c 0006                 add.w      6(a4),d2
[0004a6b0] 5342                      subq.w     #1,d2
[0004a6b2] 3f42 000e                 move.w     d2,14(a7)
[0004a6b6] 4257                      clr.w      (a7)
[0004a6b8] 426f 0002                 clr.w      2(a7)
[0004a6bc] 306f 000c                 movea.w    12(a7),a0
[0004a6c0] 90ef 0008                 suba.w     8(a7),a0
[0004a6c4] 3f48 0004                 move.w     a0,4(a7)
[0004a6c8] 70ff                      moveq.l    #-1,d0
[0004a6ca] d06c 0006                 add.w      6(a4),d0
[0004a6ce] 3f40 0006                 move.w     d0,6(a7)
[0004a6d2] 41d7                      lea.l      (a7),a0
[0004a6d4] 2255                      movea.l    (a5),a1
[0004a6d6] 3029 0010                 move.w     16(a1),d0
[0004a6da] 4241                      clr.w      d1
[0004a6dc] 4eb9 0006 3f60            jsr        vs_clip
[0004a6e2] 2279 000d 99d6            movea.l    _globl,a1
[0004a6e8] 91c8                      suba.l     a0,a0
[0004a6ea] 303c 0100                 move.w     #$0100,d0
[0004a6ee] 4eb9 0006 c914            jsr        mt_graf_mouse
[0004a6f4] 2055                      movea.l    (a5),a0
[0004a6f6] 4868 026a                 pea.l      618(a0)
[0004a6fa] 224b                      movea.l    a3,a1
[0004a6fc] 41ef 0004                 lea.l      4(a7),a0
[0004a700] 7203                      moveq.l    #3,d1
[0004a702] 2855                      movea.l    (a5),a4
[0004a704] 302c 0010                 move.w     16(a4),d0
[0004a708] 4eb9 0006 65ce            jsr        vro_cpyfm
[0004a70e] 584f                      addq.w     #4,a7
[0004a710] 2279 000d 99d6            movea.l    _globl,a1
[0004a716] 91c8                      suba.l     a0,a0
[0004a718] 303c 0101                 move.w     #$0101,d0
[0004a71c] 4eb9 0006 c914            jsr        mt_graf_mouse
[0004a722] 204b                      movea.l    a3,a0
[0004a724] 4eb9 0004 d996            jsr        Abp_delete
Aob_restore_3:
[0004a72a] 4fef 0010                 lea.l      16(a7),a7
[0004a72e] 4cdf 3800                 movem.l    (a7)+,a3-a5
[0004a732] 4e75                      rts

Aob_tobkey:
[0004a734] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004a738] 2448                      movea.l    a0,a2
[0004a73a] 3600                      move.w     d0,d3
[0004a73c] 3801                      move.w     d1,d4
[0004a73e] 266a 0018                 movea.l    24(a2),a3
[0004a742] 240b                      move.l     a3,d2
[0004a744] 674c                      beq.s      Aob_tobkey_1
[0004a746] 342a 0056                 move.w     86(a2),d2
[0004a74a] c47c 0800                 and.w      #$0800,d2
[0004a74e] 6642                      bne.s      Aob_tobkey_1
[0004a750] 204b                      movea.l    a3,a0
[0004a752] 4eb9 0004 adcc            jsr        Aob_key
[0004a758] 3600                      move.w     d0,d3
[0004a75a] 4a40                      tst.w      d0
[0004a75c] 6b34                      bmi.s      Aob_tobkey_1
[0004a75e] 48c0                      ext.l      d0
[0004a760] 2200                      move.l     d0,d1
[0004a762] d281                      add.l      d1,d1
[0004a764] d280                      add.l      d0,d1
[0004a766] e789                      lsl.l      #3,d1
[0004a768] 3433 1808                 move.w     8(a3,d1.l),d2
[0004a76c] c47c 2000                 and.w      #$2000,d2
[0004a770] 6704                      beq.s      Aob_tobkey_2
[0004a772] 7801                      moveq.l    #1,d4
[0004a774] 6002                      bra.s      Aob_tobkey_3
Aob_tobkey_2:
[0004a776] 4244                      clr.w      d4
Aob_tobkey_3:
[0004a778] 3204                      move.w     d4,d1
[0004a77a] 3003                      move.w     d3,d0
[0004a77c] 224b                      movea.l    a3,a1
[0004a77e] 204a                      movea.l    a2,a0
[0004a780] 4eb9 0004 a962            jsr        Aob_select
[0004a786] 4a40                      tst.w      d0
[0004a788] 6f08                      ble.s      Aob_tobkey_1
[0004a78a] 3003                      move.w     d3,d0
[0004a78c] 807c 1000                 or.w       #$1000,d0
[0004a790] 6002                      bra.s      Aob_tobkey_4
Aob_tobkey_1:
[0004a792] 70ff                      moveq.l    #-1,d0
Aob_tobkey_4:
[0004a794] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0004a798] 4e75                      rts

Aob_wobkey:
[0004a79a] 48e7 1830                 movem.l    d3-d4/a2-a3,-(a7)
[0004a79e] 2448                      movea.l    a0,a2
[0004a7a0] 3600                      move.w     d0,d3
[0004a7a2] 3801                      move.w     d1,d4
[0004a7a4] 266a 0014                 movea.l    20(a2),a3
[0004a7a8] 240b                      move.l     a3,d2
[0004a7aa] 674a                      beq.s      Aob_wobkey_1
[0004a7ac] 302a 0056                 move.w     86(a2),d0
[0004a7b0] c07c 0800                 and.w      #$0800,d0
[0004a7b4] 6640                      bne.s      Aob_wobkey_1
[0004a7b6] 204b                      movea.l    a3,a0
[0004a7b8] 3003                      move.w     d3,d0
[0004a7ba] 4eb9 0004 adcc            jsr        Aob_key
[0004a7c0] 3600                      move.w     d0,d3
[0004a7c2] 4a40                      tst.w      d0
[0004a7c4] 6b30                      bmi.s      Aob_wobkey_1
[0004a7c6] 48c0                      ext.l      d0
[0004a7c8] 2200                      move.l     d0,d1
[0004a7ca] d281                      add.l      d1,d1
[0004a7cc] d280                      add.l      d0,d1
[0004a7ce] e789                      lsl.l      #3,d1
[0004a7d0] 3433 1808                 move.w     8(a3,d1.l),d2
[0004a7d4] c47c 2000                 and.w      #$2000,d2
[0004a7d8] 6704                      beq.s      Aob_wobkey_2
[0004a7da] 7801                      moveq.l    #1,d4
[0004a7dc] 6002                      bra.s      Aob_wobkey_3
Aob_wobkey_2:
[0004a7de] 4244                      clr.w      d4
Aob_wobkey_3:
[0004a7e0] 3204                      move.w     d4,d1
[0004a7e2] 3003                      move.w     d3,d0
[0004a7e4] 224b                      movea.l    a3,a1
[0004a7e6] 204a                      movea.l    a2,a0
[0004a7e8] 4eb9 0004 a962            jsr        Aob_select
[0004a7ee] 4a40                      tst.w      d0
[0004a7f0] 6704                      beq.s      Aob_wobkey_1
[0004a7f2] 3003                      move.w     d3,d0
[0004a7f4] 6002                      bra.s      Aob_wobkey_4
Aob_wobkey_1:
[0004a7f6] 70ff                      moveq.l    #-1,d0
Aob_wobkey_4:
[0004a7f8] 4cdf 0c18                 movem.l    (a7)+,d3-d4/a2-a3
[0004a7fc] 4e75                      rts

Aob_execute:
[0004a7fe] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0004a802] 2a48                      movea.l    a0,a5
[0004a804] 2449                      movea.l    a1,a2
[0004a806] 3600                      move.w     d0,d3
[0004a808] 3800                      move.w     d0,d4
[0004a80a] 4a40                      tst.w      d0
[0004a80c] 6b00 00b4                 bmi        Aob_execute_1
[0004a810] 48c0                      ext.l      d0
[0004a812] 2200                      move.l     d0,d1
[0004a814] d281                      add.l      d1,d1
[0004a816] d280                      add.l      d0,d1
[0004a818] e789                      lsl.l      #3,d1
[0004a81a] 47f2 1800                 lea.l      0(a2,d1.l),a3
[0004a81e] 49eb 0018                 lea.l      24(a3),a4
[0004a822] b3ed 0018                 cmpa.l     24(a5),a1
[0004a826] 6604                      bne.s      Aob_execute_2
[0004a828] 887c 1000                 or.w       #$1000,d4
Aob_execute_2:
[0004a82c] 7040                      moveq.l    #64,d0
[0004a82e] c06b 0008                 and.w      8(a3),d0
[0004a832] 6714                      beq.s      Aob_execute_3
[0004a834] 2214                      move.l     (a4),d1
[0004a836] 670a                      beq.s      Aob_execute_4
[0004a838] 342c 0008                 move.w     8(a4),d2
[0004a83c] c47c 8000                 and.w      #$8000,d2
[0004a840] 6606                      bne.s      Aob_execute_3
Aob_execute_4:
[0004a842] 4240                      clr.w      d0
[0004a844] 6000 00b8                 bra        Aob_execute_5
Aob_execute_3:
[0004a848] 7005                      moveq.l    #5,d0
[0004a84a] c06b 0008                 and.w      8(a3),d0
[0004a84e] 5b40                      subq.w     #5,d0
[0004a850] 6612                      bne.s      Aob_execute_6
[0004a852] 7201                      moveq.l    #1,d1
[0004a854] c26b 000a                 and.w      10(a3),d1
[0004a858] 660a                      bne.s      Aob_execute_6
[0004a85a] 204d                      movea.l    a5,a0
[0004a85c] 3004                      move.w     d4,d0
[0004a85e] 4eb9 0004 487c            jsr        Adr_add
Aob_execute_6:
[0004a864] 7020                      moveq.l    #32,d0
[0004a866] c06b 0008                 and.w      8(a3),d0
[0004a86a] 665a                      bne.s      Aob_execute_7
[0004a86c] 322c 0008                 move.w     8(a4),d1
[0004a870] c27c 8000                 and.w      #$8000,d1
[0004a874] 6750                      beq.s      Aob_execute_7
[0004a876] 2414                      move.l     (a4),d2
[0004a878] 674c                      beq.s      Aob_execute_7
[0004a87a] 2079 0010 1f12            movea.l    ACSblk,a0
[0004a880] 214d 0258                 move.l     a5,600(a0)
[0004a884] 2079 0010 1f12            movea.l    ACSblk,a0
[0004a88a] 214a 025c                 move.l     a2,604(a0)
[0004a88e] 2079 0010 1f12            movea.l    ACSblk,a0
[0004a894] 3143 0260                 move.w     d3,608(a0)
[0004a898] 7040                      moveq.l    #64,d0
[0004a89a] c06b 0008                 and.w      8(a3),d0
[0004a89e] 6706                      beq.s      Aob_execute_8
[0004a8a0] 2054                      movea.l    (a4),a0
[0004a8a2] 4e90                      jsr        (a0)
[0004a8a4] 6010                      bra.s      Aob_execute_9
Aob_execute_8:
[0004a8a6] 4eb9 0004 9902            jsr        Amo_busy
[0004a8ac] 2054                      movea.l    (a4),a0
[0004a8ae] 4e90                      jsr        (a0)
[0004a8b0] 4eb9 0004 9940            jsr        Amo_unbusy
Aob_execute_9:
[0004a8b6] b5ed 0014                 cmpa.l     20(a5),a2
[0004a8ba] 670a                      beq.s      Aob_execute_7
[0004a8bc] b5ed 0018                 cmpa.l     24(a5),a2
[0004a8c0] 6704                      beq.s      Aob_execute_7
Aob_execute_1:
[0004a8c2] 70ff                      moveq.l    #-1,d0
[0004a8c4] 6038                      bra.s      Aob_execute_5
Aob_execute_7:
[0004a8c6] 7005                      moveq.l    #5,d0
[0004a8c8] c06b 0008                 and.w      8(a3),d0
[0004a8cc] 5b40                      subq.w     #5,d0
[0004a8ce] 662c                      bne.s      Aob_execute_10
[0004a8d0] 7201                      moveq.l    #1,d1
[0004a8d2] c26b 000a                 and.w      10(a3),d1
[0004a8d6] 6724                      beq.s      Aob_execute_10
[0004a8d8] 204d                      movea.l    a5,a0
[0004a8da] 3004                      move.w     d4,d0
[0004a8dc] 4eb9 0004 492a            jsr        Adr_del
[0004a8e2] 7001                      moveq.l    #1,d0
[0004a8e4] c06b 000a                 and.w      10(a3),d0
[0004a8e8] 6712                      beq.s      Aob_execute_10
[0004a8ea] 322b 000a                 move.w     10(a3),d1
[0004a8ee] c27c fffe                 and.w      #$FFFE,d1
[0004a8f2] 204d                      movea.l    a5,a0
[0004a8f4] 226d 0066                 movea.l    102(a5),a1
[0004a8f8] 3004                      move.w     d4,d0
[0004a8fa] 4e91                      jsr        (a1)
Aob_execute_10:
[0004a8fc] 7001                      moveq.l    #1,d0
Aob_execute_5:
[0004a8fe] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0004a902] 4e75                      rts

Aob_alias:
[0004a904] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0004a908] 45f9 0010 1f12            lea.l      ACSblk,a2
[0004a90e] 2052                      movea.l    (a2),a0
[0004a910] 2668 0258                 movea.l    600(a0),a3
[0004a914] 2868 025c                 movea.l    604(a0),a4
[0004a918] 3628 0260                 move.w     608(a0),d3
[0004a91c] 3203                      move.w     d3,d1
[0004a91e] 48c1                      ext.l      d1
[0004a920] 2001                      move.l     d1,d0
[0004a922] d080                      add.l      d0,d0
[0004a924] d081                      add.l      d1,d0
[0004a926] e788                      lsl.l      #3,d0
[0004a928] 4bf4 0818                 lea.l      24(a4,d0.l),a5
[0004a92c] 3434 080a                 move.w     10(a4,d0.l),d2
[0004a930] c47c 4000                 and.w      #$4000,d2
[0004a934] 6704                      beq.s      Aob_alias_1
[0004a936] 7201                      moveq.l    #1,d1
[0004a938] 6002                      bra.s      Aob_alias_2
Aob_alias_1:
[0004a93a] 4241                      clr.w      d1
Aob_alias_2:
[0004a93c] 302d 000e                 move.w     14(a5),d0
[0004a940] 224c                      movea.l    a4,a1
[0004a942] 204b                      movea.l    a3,a0
[0004a944] 4eb9 0004 a962            jsr        Aob_select
[0004a94a] 2052                      movea.l    (a2),a0
[0004a94c] 214b 0258                 move.l     a3,600(a0)
[0004a950] 2052                      movea.l    (a2),a0
[0004a952] 214c 025c                 move.l     a4,604(a0)
[0004a956] 2052                      movea.l    (a2),a0
[0004a958] 3143 0260                 move.w     d3,608(a0)
[0004a95c] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004a960] 4e75                      rts

Aob_select:
[0004a962] 48e7 1f38                 movem.l    d3-d7/a2-a4,-(a7)
[0004a966] 554f                      subq.w     #2,a7
[0004a968] 2448                      movea.l    a0,a2
[0004a96a] 2649                      movea.l    a1,a3
[0004a96c] 3800                      move.w     d0,d4
[0004a96e] 3e81                      move.w     d1,(a7)
[0004a970] 4243                      clr.w      d3
[0004a972] b3ea 0014                 cmpa.l     20(a2),a1
[0004a976] 6604                      bne.s      Aob_select_1
[0004a978] 3a00                      move.w     d0,d5
[0004a97a] 6006                      bra.s      Aob_select_2
Aob_select_1:
[0004a97c] 3a3c 1000                 move.w     #$1000,d5
[0004a980] 8a44                      or.w       d4,d5
Aob_select_2:
[0004a982] 3204                      move.w     d4,d1
[0004a984] 48c1                      ext.l      d1
[0004a986] 2001                      move.l     d1,d0
[0004a988] d080                      add.l      d0,d0
[0004a98a] d081                      add.l      d1,d0
[0004a98c] e788                      lsl.l      #3,d0
[0004a98e] 49f3 0800                 lea.l      0(a3,d0.l),a4
[0004a992] 343c 0080                 move.w     #$0080,d2
[0004a996] c46c 0008                 and.w      8(a4),d2
[0004a99a] 6608                      bne.s      Aob_select_3
[0004a99c] 7008                      moveq.l    #8,d0
[0004a99e] c06c 000a                 and.w      10(a4),d0
[0004a9a2] 6706                      beq.s      Aob_select_4
Aob_select_3:
[0004a9a4] 4240                      clr.w      d0
[0004a9a6] 6000 01ae                 bra        Aob_select_5
Aob_select_4:
[0004a9aa] 3017                      move.w     (a7),d0
[0004a9ac] 6708                      beq.s      Aob_select_6
[0004a9ae] 006c 4000 000a            ori.w      #$4000,10(a4)
[0004a9b4] 6006                      bra.s      Aob_select_7
Aob_select_6:
[0004a9b6] 026c bfff 000a            andi.w     #$BFFF,10(a4)
Aob_select_7:
[0004a9bc] 302c 0008                 move.w     8(a4),d0
[0004a9c0] c07c 204d                 and.w      #$204D,d0
[0004a9c4] 5140                      subq.w     #8,d0
[0004a9c6] 662e                      bne.s      Aob_select_8
[0004a9c8] 0c2c 0018 0007            cmpi.b     #$18,7(a4)
[0004a9ce] 6626                      bne.s      Aob_select_8
[0004a9d0] b86a 001c                 cmp.w      28(a2),d4
[0004a9d4] 6712                      beq.s      Aob_select_9
[0004a9d6] 3204                      move.w     d4,d1
[0004a9d8] 302a 001c                 move.w     28(a2),d0
[0004a9dc] 204a                      movea.l    a2,a0
[0004a9de] 4eb9 0004 c668            jsr        Awi_focuschg
[0004a9e4] 5340                      subq.w     #1,d0
[0004a9e6] 660c                      bne.s      Aob_select_10
Aob_select_9:
[0004a9e8] 3004                      move.w     d4,d0
[0004a9ea] 224b                      movea.l    a3,a1
[0004a9ec] 204a                      movea.l    a2,a0
[0004a9ee] 4eb9 0005 dc54            jsr        Aus_objboxed
Aob_select_10:
[0004a9f4] 4243                      clr.w      d3
Aob_select_8:
[0004a9f6] 302c 0008                 move.w     8(a4),d0
[0004a9fa] c07c 2000                 and.w      #$2000,d0
[0004a9fe] 6744                      beq.s      Aob_select_11
[0004aa00] 3217                      move.w     (a7),d1
[0004aa02] 671c                      beq.s      Aob_select_12
[0004aa04] 7404                      moveq.l    #4,d2
[0004aa06] c46c 0008                 and.w      8(a4),d2
[0004aa0a] 6714                      beq.s      Aob_select_12
[0004aa0c] 4eb9 0004 4a26            jsr        Adr_unselect
Aob_select_21:
[0004aa12] 3004                      move.w     d4,d0
[0004aa14] 224b                      movea.l    a3,a1
[0004aa16] 204a                      movea.l    a2,a0
[0004aa18] 6100 fde4                 bsr        Aob_execute
[0004aa1c] 6000 0132                 bra        Aob_select_13
Aob_select_12:
[0004aa20] 7001                      moveq.l    #1,d0
[0004aa22] c06c 000a                 and.w      10(a4),d0
[0004aa26] 670e                      beq.s      Aob_select_14
[0004aa28] 204a                      movea.l    a2,a0
[0004aa2a] 3005                      move.w     d5,d0
[0004aa2c] 4eb9 0004 492a            jsr        Adr_del
[0004aa32] 6000 011c                 bra        Aob_select_13
Aob_select_14:
[0004aa36] 3005                      move.w     d5,d0
[0004aa38] 204a                      movea.l    a2,a0
[0004aa3a] 4eb9 0004 487c            jsr        Adr_add
[0004aa40] 6000 010e                 bra        Aob_select_13
Aob_select_11:
[0004aa44] 302c 0008                 move.w     8(a4),d0
[0004aa48] 807c ffee                 or.w       #$FFEE,d0
[0004aa4c] b07c ffff                 cmp.w      #$FFFF,d0
[0004aa50] 6600 00a8                 bne        Aob_select_15
[0004aa54] 7201                      moveq.l    #1,d1
[0004aa56] c26c 000a                 and.w      10(a4),d1
[0004aa5a] 6600 009c                 bne        Aob_select_16
[0004aa5e] 204b                      movea.l    a3,a0
[0004aa60] 3004                      move.w     d4,d0
[0004aa62] 4eb9 0004 af6c            jsr        Aob_up
[0004aa68] 3e00                      move.w     d0,d7
[0004aa6a] 48c0                      ext.l      d0
[0004aa6c] 2200                      move.l     d0,d1
[0004aa6e] d281                      add.l      d1,d1
[0004aa70] d280                      add.l      d0,d1
[0004aa72] e789                      lsl.l      #3,d1
[0004aa74] 3c33 1802                 move.w     2(a3,d1.l),d6
[0004aa78] 606a                      bra.s      Aob_select_17
Aob_select_20:
[0004aa7a] 7010                      moveq.l    #16,d0
[0004aa7c] 3406                      move.w     d6,d2
[0004aa7e] 48c2                      ext.l      d2
[0004aa80] 2202                      move.l     d2,d1
[0004aa82] d281                      add.l      d1,d1
[0004aa84] d282                      add.l      d2,d1
[0004aa86] e789                      lsl.l      #3,d1
[0004aa88] c073 1808                 and.w      8(a3,d1.l),d0
[0004aa8c] 6746                      beq.s      Aob_select_18
[0004aa8e] 7001                      moveq.l    #1,d0
[0004aa90] c073 180a                 and.w      10(a3,d1.l),d0
[0004aa94] 673e                      beq.s      Aob_select_18
[0004aa96] 3405                      move.w     d5,d2
[0004aa98] c47c 1000                 and.w      #$1000,d2
[0004aa9c] 6718                      beq.s      Aob_select_19
[0004aa9e] 3233 180a                 move.w     10(a3,d1.l),d1
[0004aaa2] c27c fffe                 and.w      #$FFFE,d1
[0004aaa6] 3006                      move.w     d6,d0
[0004aaa8] 807c 1000                 or.w       #$1000,d0
[0004aaac] 204a                      movea.l    a2,a0
[0004aaae] 226a 0066                 movea.l    102(a2),a1
[0004aab2] 4e91                      jsr        (a1)
[0004aab4] 601e                      bra.s      Aob_select_18
Aob_select_19:
[0004aab6] 3406                      move.w     d6,d2
[0004aab8] 48c2                      ext.l      d2
[0004aaba] 2002                      move.l     d2,d0
[0004aabc] d080                      add.l      d0,d0
[0004aabe] d082                      add.l      d2,d0
[0004aac0] e788                      lsl.l      #3,d0
[0004aac2] 3233 080a                 move.w     10(a3,d0.l),d1
[0004aac6] c27c fffe                 and.w      #$FFFE,d1
[0004aaca] 204a                      movea.l    a2,a0
[0004aacc] 226a 0066                 movea.l    102(a2),a1
[0004aad0] 3006                      move.w     d6,d0
[0004aad2] 4e91                      jsr        (a1)
Aob_select_18:
[0004aad4] 3206                      move.w     d6,d1
[0004aad6] 48c1                      ext.l      d1
[0004aad8] 2001                      move.l     d1,d0
[0004aada] d080                      add.l      d0,d0
[0004aadc] d081                      add.l      d1,d0
[0004aade] e788                      lsl.l      #3,d0
[0004aae0] 3c33 0800                 move.w     0(a3,d0.l),d6
Aob_select_17:
[0004aae4] be46                      cmp.w      d6,d7
[0004aae6] 6692                      bne.s      Aob_select_20
[0004aae8] 7201                      moveq.l    #1,d1
[0004aaea] 826c 000a                 or.w       10(a4),d1
[0004aaee] 3005                      move.w     d5,d0
[0004aaf0] 204a                      movea.l    a2,a0
[0004aaf2] 226a 0066                 movea.l    102(a2),a1
[0004aaf6] 4e91                      jsr        (a1)
Aob_select_16:
[0004aaf8] 7601                      moveq.l    #1,d3
Aob_select_15:
[0004aafa] 7005                      moveq.l    #5,d0
[0004aafc] c06c 0008                 and.w      8(a4),d0
[0004ab00] 5b40                      subq.w     #5,d0
[0004ab02] 6700 ff0e                 beq        Aob_select_21
[0004ab06] 7211                      moveq.l    #17,d1
[0004ab08] c26c 0008                 and.w      8(a4),d1
[0004ab0c] 5341                      subq.w     #1,d1
[0004ab0e] 6614                      bne.s      Aob_select_22
[0004ab10] 7201                      moveq.l    #1,d1
[0004ab12] 342c 000a                 move.w     10(a4),d2
[0004ab16] b541                      eor.w      d2,d1
[0004ab18] 204a                      movea.l    a2,a0
[0004ab1a] 226a 0066                 movea.l    102(a2),a1
[0004ab1e] 3005                      move.w     d5,d0
[0004ab20] 4e91                      jsr        (a1)
[0004ab22] 7601                      moveq.l    #1,d3
Aob_select_22:
[0004ab24] 7040                      moveq.l    #64,d0
[0004ab26] c06c 0008                 and.w      8(a4),d0
[0004ab2a] 6728                      beq.s      Aob_select_23
[0004ab2c] 224b                      movea.l    a3,a1
[0004ab2e] 204a                      movea.l    a2,a0
[0004ab30] 3004                      move.w     d4,d0
[0004ab32] 6100 fcca                 bsr        Aob_execute
[0004ab36] 4a40                      tst.w      d0
[0004ab38] 6616                      bne.s      Aob_select_13
[0004ab3a] 3017                      move.w     (a7),d0
[0004ab3c] 6712                      beq.s      Aob_select_13
[0004ab3e] 322a 0054                 move.w     84(a2),d1
[0004ab42] c27c 0100                 and.w      #$0100,d1
[0004ab46] 6708                      beq.s      Aob_select_13
[0004ab48] 204a                      movea.l    a2,a0
[0004ab4a] 226a 006e                 movea.l    110(a2),a1
[0004ab4e] 4e91                      jsr        (a1)
Aob_select_13:
[0004ab50] 7001                      moveq.l    #1,d0
[0004ab52] 6002                      bra.s      Aob_select_5
Aob_select_23:
[0004ab54] 3003                      move.w     d3,d0
Aob_select_5:
[0004ab56] 544f                      addq.w     #2,a7
[0004ab58] 4cdf 1cf8                 movem.l    (a7)+,d3-d7/a2-a4
[0004ab5c] 4e75                      rts

Aob_watch:
[0004ab5e] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[0004ab62] 4fef ffea                 lea.l      -22(a7),a7
[0004ab66] 2448                      movea.l    a0,a2
[0004ab68] 3600                      move.w     d0,d3
[0004ab6a] c07c 1000                 and.w      #$1000,d0
[0004ab6e] 670c                      beq.s      Aob_watch_1
[0004ab70] 266a 0018                 movea.l    24(a2),a3
[0004ab74] 3803                      move.w     d3,d4
[0004ab76] c87c 0fff                 and.w      #$0FFF,d4
[0004ab7a] 6006                      bra.s      Aob_watch_2
Aob_watch_1:
[0004ab7c] 266a 0014                 movea.l    20(a2),a3
[0004ab80] 3803                      move.w     d3,d4
Aob_watch_2:
[0004ab82] 4bef 000c                 lea.l      12(a7),a5
[0004ab86] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004ab8c] 486d 0002                 pea.l      2(a5)
[0004ab90] 224d                      movea.l    a5,a1
[0004ab92] 3004                      move.w     d4,d0
[0004ab94] 204b                      movea.l    a3,a0
[0004ab96] 4eb9 0006 ba44            jsr        mt_objc_offset
[0004ab9c] 504f                      addq.w     #8,a7
[0004ab9e] 302a 0034                 move.w     52(a2),d0
[0004aba2] d155                      add.w      d0,(a5)
[0004aba4] 322a 0036                 move.w     54(a2),d1
[0004aba8] d36d 0002                 add.w      d1,2(a5)
[0004abac] 3004                      move.w     d4,d0
[0004abae] 48c0                      ext.l      d0
[0004abb0] 2400                      move.l     d0,d2
[0004abb2] d482                      add.l      d2,d2
[0004abb4] d480                      add.l      d0,d2
[0004abb6] e78a                      lsl.l      #3,d2
[0004abb8] 3b73 2814 0004            move.w     20(a3,d2.l),4(a5)
[0004abbe] 3b73 2816 0006            move.w     22(a3,d2.l),6(a5)
[0004abc4] 3a33 2806                 move.w     6(a3,d2.l),d5
[0004abc8] ca7c 00ff                 and.w      #$00FF,d5
[0004abcc] ba7c 001f                 cmp.w      #$001F,d5
[0004abd0] 6706                      beq.s      Aob_watch_3
[0004abd2] ba7c 0021                 cmp.w      #$0021,d5
[0004abd6] 6650                      bne.s      Aob_watch_4
Aob_watch_3:
[0004abd8] 3204                      move.w     d4,d1
[0004abda] 48c1                      ext.l      d1
[0004abdc] 2001                      move.l     d1,d0
[0004abde] d080                      add.l      d0,d0
[0004abe0] d081                      add.l      d1,d0
[0004abe2] e788                      lsl.l      #3,d0
[0004abe4] 2eb3 080c                 move.l     12(a3,d0.l),(a7)
[0004abe8] 3415                      move.w     (a5),d2
[0004abea] 2057                      movea.l    (a7),a0
[0004abec] d468 001a                 add.w      26(a0),d2
[0004abf0] 3f42 0004                 move.w     d2,4(a7)
[0004abf4] 3a2d 0002                 move.w     2(a5),d5
[0004abf8] da68 001c                 add.w      28(a0),d5
[0004abfc] 3f45 0006                 move.w     d5,6(a7)
[0004ac00] 3f68 001e 0008            move.w     30(a0),8(a7)
[0004ac06] 3f68 0020 000a            move.w     32(a0),10(a7)
[0004ac0c] 3028 0012                 move.w     18(a0),d0
[0004ac10] d155                      add.w      d0,(a5)
[0004ac12] 3428 0014                 move.w     20(a0),d2
[0004ac16] d56d 0002                 add.w      d2,2(a5)
[0004ac1a] 3b68 0016 0004            move.w     22(a0),4(a5)
[0004ac20] 3b68 0018 0006            move.w     24(a0),6(a5)
[0004ac26] 600e                      bra.s      Aob_watch_5
Aob_watch_4:
[0004ac28] 7008                      moveq.l    #8,d0
[0004ac2a] 224d                      movea.l    a5,a1
[0004ac2c] 41ef 0004                 lea.l      4(a7),a0
[0004ac30] 4eb9 0007 6f44            jsr        memcpy
Aob_watch_5:
[0004ac36] 7201                      moveq.l    #1,d1
[0004ac38] 3404                      move.w     d4,d2
[0004ac3a] 48c2                      ext.l      d2
[0004ac3c] 2002                      move.l     d2,d0
[0004ac3e] d080                      add.l      d0,d0
[0004ac40] d082                      add.l      d2,d0
[0004ac42] e788                      lsl.l      #3,d0
[0004ac44] 8273 080a                 or.w       10(a3,d0.l),d1
[0004ac48] 204a                      movea.l    a2,a0
[0004ac4a] 226a 0066                 movea.l    102(a2),a1
[0004ac4e] 3003                      move.w     d3,d0
[0004ac50] 4e91                      jsr        (a1)
[0004ac52] 7a01                      moveq.l    #1,d5
[0004ac54] 49f9 0010 1f12            lea.l      ACSblk,a4
[0004ac5a] 4240                      clr.w      d0
[0004ac5c] 2054                      movea.l    (a4),a0
[0004ac5e] 3140 0264                 move.w     d0,612(a0)
[0004ac62] 2054                      movea.l    (a4),a0
[0004ac64] 3140 0262                 move.w     d0,610(a0)
Aob_watch_9:
[0004ac68] 7003                      moveq.l    #3,d0
[0004ac6a] 4eb9 0005 1e1c            jsr        Awi_update
[0004ac70] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004ac76] 486f 0018                 pea.l      24(a7)
[0004ac7a] 486f 001c                 pea.l      28(a7)
[0004ac7e] 486f 0020                 pea.l      32(a7)
[0004ac82] 486f 0024                 pea.l      36(a7)
[0004ac86] 2054                      movea.l    (a4),a0
[0004ac88] 4868 0264                 pea.l      612(a0)
[0004ac8c] 42a7                      clr.l      -(a7)
[0004ac8e] 4267                      clr.w      -(a7)
[0004ac90] 4267                      clr.w      -(a7)
[0004ac92] 4267                      clr.w      -(a7)
[0004ac94] 4267                      clr.w      -(a7)
[0004ac96] 4267                      clr.w      -(a7)
[0004ac98] 7001                      moveq.l    #1,d0
[0004ac9a] 3f00                      move.w     d0,-(a7)
[0004ac9c] 3f00                      move.w     d0,-(a7)
[0004ac9e] 3f28 0264                 move.w     612(a0),-(a7)
[0004aca2] 3f28 0262                 move.w     610(a0),-(a7)
[0004aca6] 3f00                      move.w     d0,-(a7)
[0004aca8] 4267                      clr.w      -(a7)
[0004acaa] 2248                      movea.l    a0,a1
[0004acac] 43e9 0262                 lea.l      610(a1),a1
[0004acb0] 7403                      moveq.l    #3,d2
[0004acb2] 3200                      move.w     d0,d1
[0004acb4] 7006                      moveq.l    #6,d0
[0004acb6] 91c8                      suba.l     a0,a0
[0004acb8] 4eb9 0006 af70            jsr        mt_evnt_multi
[0004acbe] 4fef 0032                 lea.l      50(a7),a7
[0004acc2] 3c00                      move.w     d0,d6
[0004acc4] 7002                      moveq.l    #2,d0
[0004acc6] 4eb9 0005 1e1c            jsr        Awi_update
[0004accc] 7002                      moveq.l    #2,d0
[0004acce] c046                      and.w      d6,d0
[0004acd0] 6600 0082                 bne        Aob_watch_6
[0004acd4] 2054                      movea.l    (a4),a0
[0004acd6] 3228 0264                 move.w     612(a0),d1
[0004acda] 3028 0262                 move.w     610(a0),d0
[0004acde] 204d                      movea.l    a5,a0
[0004ace0] 4eb9 0005 ef64            jsr        Aob_within
[0004ace6] 4a40                      tst.w      d0
[0004ace8] 6618                      bne.s      Aob_watch_7
[0004acea] 2054                      movea.l    (a4),a0
[0004acec] 3228 0264                 move.w     612(a0),d1
[0004acf0] 3028 0262                 move.w     610(a0),d0
[0004acf4] 41ef 0004                 lea.l      4(a7),a0
[0004acf8] 4eb9 0005 ef64            jsr        Aob_within
[0004acfe] 4a40                      tst.w      d0
[0004ad00] 6728                      beq.s      Aob_watch_8
Aob_watch_7:
[0004ad02] 4a45                      tst.w      d5
[0004ad04] 6600 ff62                 bne        Aob_watch_9
[0004ad08] 7a01                      moveq.l    #1,d5
[0004ad0a] 7201                      moveq.l    #1,d1
[0004ad0c] 3404                      move.w     d4,d2
[0004ad0e] 48c2                      ext.l      d2
[0004ad10] 2002                      move.l     d2,d0
[0004ad12] d080                      add.l      d0,d0
[0004ad14] d082                      add.l      d2,d0
[0004ad16] e788                      lsl.l      #3,d0
[0004ad18] 8273 080a                 or.w       10(a3,d0.l),d1
[0004ad1c] 204a                      movea.l    a2,a0
[0004ad1e] 226a 0066                 movea.l    102(a2),a1
[0004ad22] 3003                      move.w     d3,d0
[0004ad24] 4e91                      jsr        (a1)
[0004ad26] 6000 ff40                 bra        Aob_watch_9
Aob_watch_8:
[0004ad2a] 4a45                      tst.w      d5
[0004ad2c] 6700 ff3a                 beq        Aob_watch_9
[0004ad30] 4245                      clr.w      d5
[0004ad32] 3404                      move.w     d4,d2
[0004ad34] 48c2                      ext.l      d2
[0004ad36] 2002                      move.l     d2,d0
[0004ad38] d080                      add.l      d0,d0
[0004ad3a] d082                      add.l      d2,d0
[0004ad3c] e788                      lsl.l      #3,d0
[0004ad3e] 3233 080a                 move.w     10(a3,d0.l),d1
[0004ad42] c27c fffe                 and.w      #$FFFE,d1
[0004ad46] 204a                      movea.l    a2,a0
[0004ad48] 226a 0066                 movea.l    102(a2),a1
[0004ad4c] 3003                      move.w     d3,d0
[0004ad4e] 4e91                      jsr        (a1)
[0004ad50] 6000 ff16                 bra        Aob_watch_9
Aob_watch_6:
[0004ad54] 3005                      move.w     d5,d0
[0004ad56] 4fef 0016                 lea.l      22(a7),a7
[0004ad5a] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[0004ad5e] 4e75                      rts

Aev_release:
[0004ad60] 3f03                      move.w     d3,-(a7)
[0004ad62] 554f                      subq.w     #2,a7
Aev_release_1:
[0004ad64] 7003                      moveq.l    #3,d0
[0004ad66] 4eb9 0005 1e1c            jsr        Awi_update
[0004ad6c] 2f39 000d 99d6            move.l     _globl,-(a7)
[0004ad72] 486f 0004                 pea.l      4(a7)
[0004ad76] 486f 0008                 pea.l      8(a7)
[0004ad7a] 486f 000c                 pea.l      12(a7)
[0004ad7e] 486f 0010                 pea.l      16(a7)
[0004ad82] 486f 0014                 pea.l      20(a7)
[0004ad86] 700a                      moveq.l    #10,d0
[0004ad88] 2f00                      move.l     d0,-(a7)
[0004ad8a] 4267                      clr.w      -(a7)
[0004ad8c] 4267                      clr.w      -(a7)
[0004ad8e] 4267                      clr.w      -(a7)
[0004ad90] 4267                      clr.w      -(a7)
[0004ad92] 4267                      clr.w      -(a7)
[0004ad94] 4267                      clr.w      -(a7)
[0004ad96] 4267                      clr.w      -(a7)
[0004ad98] 4267                      clr.w      -(a7)
[0004ad9a] 4267                      clr.w      -(a7)
[0004ad9c] 4267                      clr.w      -(a7)
[0004ad9e] 4267                      clr.w      -(a7)
[0004ada0] 43ef 0032                 lea.l      50(a7),a1
[0004ada4] 91c8                      suba.l     a0,a0
[0004ada6] 7403                      moveq.l    #3,d2
[0004ada8] 7201                      moveq.l    #1,d1
[0004adaa] 7022                      moveq.l    #34,d0
[0004adac] 4eb9 0006 af70            jsr        mt_evnt_multi
[0004adb2] 4fef 0032                 lea.l      50(a7),a7
[0004adb6] 3600                      move.w     d0,d3
[0004adb8] 7002                      moveq.l    #2,d0
[0004adba] 4eb9 0005 1e1c            jsr        Awi_update
[0004adc0] 7002                      moveq.l    #2,d0
[0004adc2] c043                      and.w      d3,d0
[0004adc4] 679e                      beq.s      Aev_release_1
[0004adc6] 544f                      addq.w     #2,a7
[0004adc8] 361f                      move.w     (a7)+,d3
[0004adca] 4e75                      rts

Aob_key:
[0004adcc] 48e7 1e20                 movem.l    d3-d6/a2,-(a7)
[0004add0] 2448                      movea.l    a0,a2
[0004add2] 3601                      move.w     d1,d3
[0004add4] 1003                      move.b     d3,d0
[0004add6] 4880                      ext.w      d0
[0004add8] 4eb9 0007 7220            jsr        isprint
[0004adde] 4a40                      tst.w      d0
[0004ade0] 6716                      beq.s      Aob_key_1
[0004ade2] 70ff                      moveq.l    #-1,d0
[0004ade4] c003                      and.b      d3,d0
[0004ade6] 4eb9 0004 372c            jsr        Ach_toupper
[0004adec] 4880                      ext.w      d0
[0004adee] 3203                      move.w     d3,d1
[0004adf0] c27c ff00                 and.w      #$FF00,d1
[0004adf4] 8041                      or.w       d1,d0
[0004adf6] 3600                      move.w     d0,d3
Aob_key_1:
[0004adf8] 3003                      move.w     d3,d0
[0004adfa] c07c 1300                 and.w      #$1300,d0
[0004adfe] 670c                      beq.s      Aob_key_2
[0004ae00] 3203                      move.w     d3,d1
[0004ae02] 827c 0300                 or.w       #$0300,d1
[0004ae06] c27c efff                 and.w      #$EFFF,d1
[0004ae0a] 3601                      move.w     d1,d3
Aob_key_2:
[0004ae0c] c67c 9fff                 and.w      #$9FFF,d3
[0004ae10] 4244                      clr.w      d4
Aob_key_12:
[0004ae12] 4a44                      tst.w      d4
[0004ae14] 6a04                      bpl.s      Aob_key_3
[0004ae16] 4245                      clr.w      d5
[0004ae18] 602a                      bra.s      Aob_key_4
Aob_key_3:
[0004ae1a] 303c 0080                 move.w     #$0080,d0
[0004ae1e] 3404                      move.w     d4,d2
[0004ae20] 48c2                      ext.l      d2
[0004ae22] 2202                      move.l     d2,d1
[0004ae24] d281                      add.l      d1,d1
[0004ae26] d282                      add.l      d2,d1
[0004ae28] e789                      lsl.l      #3,d1
[0004ae2a] c072 1808                 and.w      8(a2,d1.l),d0
[0004ae2e] 6704                      beq.s      Aob_key_5
[0004ae30] 7aff                      moveq.l    #-1,d5
[0004ae32] 6010                      bra.s      Aob_key_4
Aob_key_5:
[0004ae34] 3204                      move.w     d4,d1
[0004ae36] 48c1                      ext.l      d1
[0004ae38] 2001                      move.l     d1,d0
[0004ae3a] d080                      add.l      d0,d0
[0004ae3c] d081                      add.l      d1,d0
[0004ae3e] e788                      lsl.l      #3,d0
[0004ae40] 3a32 0802                 move.w     2(a2,d0.l),d5
Aob_key_4:
[0004ae44] 4a45                      tst.w      d5
[0004ae46] 6a3a                      bpl.s      Aob_key_6
[0004ae48] 3204                      move.w     d4,d1
[0004ae4a] 48c1                      ext.l      d1
[0004ae4c] 2001                      move.l     d1,d0
[0004ae4e] d080                      add.l      d0,d0
[0004ae50] d081                      add.l      d1,d0
[0004ae52] e788                      lsl.l      #3,d0
[0004ae54] 3a32 0800                 move.w     0(a2,d0.l),d5
[0004ae58] 6012                      bra.s      Aob_key_7
Aob_key_8:
[0004ae5a] 3805                      move.w     d5,d4
[0004ae5c] 3205                      move.w     d5,d1
[0004ae5e] 48c1                      ext.l      d1
[0004ae60] 2001                      move.l     d1,d0
[0004ae62] d080                      add.l      d0,d0
[0004ae64] d081                      add.l      d1,d0
[0004ae66] e788                      lsl.l      #3,d0
[0004ae68] 3a32 0800                 move.w     0(a2,d0.l),d5
Aob_key_7:
[0004ae6c] 4a45                      tst.w      d5
[0004ae6e] 6b12                      bmi.s      Aob_key_6
[0004ae70] 3205                      move.w     d5,d1
[0004ae72] 48c1                      ext.l      d1
[0004ae74] 2001                      move.l     d1,d0
[0004ae76] d080                      add.l      d0,d0
[0004ae78] d081                      add.l      d1,d0
[0004ae7a] e788                      lsl.l      #3,d0
[0004ae7c] b872 0804                 cmp.w      4(a2,d0.l),d4
[0004ae80] 67d8                      beq.s      Aob_key_8
Aob_key_6:
[0004ae82] 4a45                      tst.w      d5
[0004ae84] 6b34                      bmi.s      Aob_key_9
[0004ae86] 3205                      move.w     d5,d1
[0004ae88] 48c1                      ext.l      d1
[0004ae8a] 2001                      move.l     d1,d0
[0004ae8c] d080                      add.l      d0,d0
[0004ae8e] d081                      add.l      d1,d0
[0004ae90] e788                      lsl.l      #3,d0
[0004ae92] 3432 0820                 move.w     32(a2,d0.l),d2
[0004ae96] c47c 8000                 and.w      #$8000,d2
[0004ae9a] 6722                      beq.s      Aob_key_10
[0004ae9c] 7008                      moveq.l    #8,d0
[0004ae9e] 3405                      move.w     d5,d2
[0004aea0] 48c2                      ext.l      d2
[0004aea2] 2202                      move.l     d2,d1
[0004aea4] d281                      add.l      d1,d1
[0004aea6] d282                      add.l      d2,d1
[0004aea8] e789                      lsl.l      #3,d1
[0004aeaa] c072 180a                 and.w      10(a2,d1.l),d0
[0004aeae] 660e                      bne.s      Aob_key_10
[0004aeb0] 3c32 1822                 move.w     34(a2,d1.l),d6
[0004aeb4] 6708                      beq.s      Aob_key_10
[0004aeb6] b646                      cmp.w      d6,d3
[0004aeb8] 6604                      bne.s      Aob_key_10
Aob_key_9:
[0004aeba] 3005                      move.w     d5,d0
[0004aebc] 6006                      bra.s      Aob_key_11
Aob_key_10:
[0004aebe] 3805                      move.w     d5,d4
[0004aec0] 6000 ff50                 bra        Aob_key_12
Aob_key_11:
[0004aec4] 4cdf 0478                 movem.l    (a7)+,d3-d6/a2
[0004aec8] 4e75                      rts

Aob_findflag:
[0004aeca] 48e7 1c20                 movem.l    d3-d5/a2,-(a7)
[0004aece] 2448                      movea.l    a0,a2
[0004aed0] 3600                      move.w     d0,d3
[0004aed2] 3a01                      move.w     d1,d5
Aob_findflag_10:
[0004aed4] 4a43                      tst.w      d3
[0004aed6] 6a04                      bpl.s      Aob_findflag_1
[0004aed8] 4244                      clr.w      d4
[0004aeda] 602a                      bra.s      Aob_findflag_2
Aob_findflag_1:
[0004aedc] 303c 0080                 move.w     #$0080,d0
[0004aee0] 3403                      move.w     d3,d2
[0004aee2] 48c2                      ext.l      d2
[0004aee4] 2202                      move.l     d2,d1
[0004aee6] d281                      add.l      d1,d1
[0004aee8] d282                      add.l      d2,d1
[0004aeea] e789                      lsl.l      #3,d1
[0004aeec] c072 1808                 and.w      8(a2,d1.l),d0
[0004aef0] 6704                      beq.s      Aob_findflag_3
[0004aef2] 78ff                      moveq.l    #-1,d4
[0004aef4] 6010                      bra.s      Aob_findflag_2
Aob_findflag_3:
[0004aef6] 3203                      move.w     d3,d1
[0004aef8] 48c1                      ext.l      d1
[0004aefa] 2001                      move.l     d1,d0
[0004aefc] d080                      add.l      d0,d0
[0004aefe] d081                      add.l      d1,d0
[0004af00] e788                      lsl.l      #3,d0
[0004af02] 3832 0802                 move.w     2(a2,d0.l),d4
Aob_findflag_2:
[0004af06] 4a44                      tst.w      d4
[0004af08] 6a3a                      bpl.s      Aob_findflag_4
[0004af0a] 3203                      move.w     d3,d1
[0004af0c] 48c1                      ext.l      d1
[0004af0e] 2001                      move.l     d1,d0
[0004af10] d080                      add.l      d0,d0
[0004af12] d081                      add.l      d1,d0
[0004af14] e788                      lsl.l      #3,d0
[0004af16] 3832 0800                 move.w     0(a2,d0.l),d4
[0004af1a] 6012                      bra.s      Aob_findflag_5
Aob_findflag_6:
[0004af1c] 3604                      move.w     d4,d3
[0004af1e] 3204                      move.w     d4,d1
[0004af20] 48c1                      ext.l      d1
[0004af22] 2001                      move.l     d1,d0
[0004af24] d080                      add.l      d0,d0
[0004af26] d081                      add.l      d1,d0
[0004af28] e788                      lsl.l      #3,d0
[0004af2a] 3832 0800                 move.w     0(a2,d0.l),d4
Aob_findflag_5:
[0004af2e] 4a44                      tst.w      d4
[0004af30] 6b12                      bmi.s      Aob_findflag_4
[0004af32] 3204                      move.w     d4,d1
[0004af34] 48c1                      ext.l      d1
[0004af36] 2001                      move.l     d1,d0
[0004af38] d080                      add.l      d0,d0
[0004af3a] d081                      add.l      d1,d0
[0004af3c] e788                      lsl.l      #3,d0
[0004af3e] b672 0804                 cmp.w      4(a2,d0.l),d3
[0004af42] 67d8                      beq.s      Aob_findflag_6
Aob_findflag_4:
[0004af44] 4a44                      tst.w      d4
[0004af46] 6b14                      bmi.s      Aob_findflag_7
[0004af48] 3204                      move.w     d4,d1
[0004af4a] 48c1                      ext.l      d1
[0004af4c] 2001                      move.l     d1,d0
[0004af4e] d080                      add.l      d0,d0
[0004af50] d081                      add.l      d1,d0
[0004af52] e788                      lsl.l      #3,d0
[0004af54] 3432 0808                 move.w     8(a2,d0.l),d2
[0004af58] c445                      and.w      d5,d2
[0004af5a] 6704                      beq.s      Aob_findflag_8
Aob_findflag_7:
[0004af5c] 3004                      move.w     d4,d0
[0004af5e] 6006                      bra.s      Aob_findflag_9
Aob_findflag_8:
[0004af60] 3604                      move.w     d4,d3
[0004af62] 6000 ff70                 bra        Aob_findflag_10
Aob_findflag_9:
[0004af66] 4cdf 0438                 movem.l    (a7)+,d3-d5/a2
[0004af6a] 4e75                      rts

Aob_up:
[0004af6c] 48e7 1820                 movem.l    d3-d4/a2,-(a7)
[0004af70] 2448                      movea.l    a0,a2
[0004af72] 3600                      move.w     d0,d3
Aob_up_4:
[0004af74] 3203                      move.w     d3,d1
[0004af76] 48c1                      ext.l      d1
[0004af78] 2001                      move.l     d1,d0
[0004af7a] d080                      add.l      d0,d0
[0004af7c] d081                      add.l      d1,d0
[0004af7e] e788                      lsl.l      #3,d0
[0004af80] 3832 0800                 move.w     0(a2,d0.l),d4
[0004af84] 4a44                      tst.w      d4
[0004af86] 6a04                      bpl.s      Aob_up_1
[0004af88] 70ff                      moveq.l    #-1,d0
[0004af8a] 601a                      bra.s      Aob_up_2
Aob_up_1:
[0004af8c] 3204                      move.w     d4,d1
[0004af8e] 48c1                      ext.l      d1
[0004af90] 2001                      move.l     d1,d0
[0004af92] d080                      add.l      d0,d0
[0004af94] d081                      add.l      d1,d0
[0004af96] e788                      lsl.l      #3,d0
[0004af98] b672 0804                 cmp.w      4(a2,d0.l),d3
[0004af9c] 6604                      bne.s      Aob_up_3
[0004af9e] 3004                      move.w     d4,d0
[0004afa0] 6004                      bra.s      Aob_up_2
Aob_up_3:
[0004afa2] 3604                      move.w     d4,d3
[0004afa4] 60ce                      bra.s      Aob_up_4
Aob_up_2:
[0004afa6] 4cdf 0418                 movem.l    (a7)+,d3-d4/a2
[0004afaa] 4e75                      rts

Aob_printf:
[0004afac] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0004afb0] 2a48                      movea.l    a0,a5
[0004afb2] 3600                      move.w     d0,d3
[0004afb4] 2649                      movea.l    a1,a3
[0004afb6] 45ef 0018                 lea.l      24(a7),a2
[0004afba] 49f9 0010 6790            lea.l      ob_inout,a4
[0004afc0] 2f0a                      move.l     a2,-(a7)
[0004afc2] 224b                      movea.l    a3,a1
[0004afc4] 204c                      movea.l    a4,a0
[0004afc6] 4eb9 0007 56b2            jsr        vsprintf
[0004afcc] 584f                      addq.w     #4,a7
[0004afce] 224c                      movea.l    a4,a1
[0004afd0] 3003                      move.w     d3,d0
[0004afd2] 204d                      movea.l    a5,a0
[0004afd4] 4eb9 0004 afe0            jsr        Aob_puttext
[0004afda] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004afde] 4e75                      rts

Aob_puttext:
[0004afe0] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0004afe4] 2448                      movea.l    a0,a2
[0004afe6] 3600                      move.w     d0,d3
[0004afe8] 2649                      movea.l    a1,a3
[0004afea] 48c0                      ext.l      d0
[0004afec] 2200                      move.l     d0,d1
[0004afee] d281                      add.l      d1,d1
[0004aff0] d280                      add.l      d0,d1
[0004aff2] e789                      lsl.l      #3,d1
[0004aff4] 1432 1807                 move.b     7(a2,d1.l),d2
[0004aff8] 4882                      ext.w      d2
[0004affa] 947c 0015                 sub.w      #$0015,d2
[0004affe] b47c 000c                 cmp.w      #$000C,d2
[0004b002] 6200 00a8                 bhi        Aob_puttext_1
[0004b006] d442                      add.w      d2,d2
[0004b008] 343b 2006                 move.w     $0004B010(pc,d2.w),d2
[0004b00c] 4efb 2002                 jmp        $0004B010(pc,d2.w)
J38:
[0004b010] 001a                      dc.w $001a   ; Aob_puttext_2-J38
[0004b012] 001a                      dc.w $001a   ; Aob_puttext_2-J38
[0004b014] 009c                      dc.w $009c   ; Aob_puttext_1-J38
[0004b016] 007e                      dc.w $007e   ; Aob_puttext_3-J38
[0004b018] 009c                      dc.w $009c   ; Aob_puttext_1-J38
[0004b01a] 0046                      dc.w $0046   ; Aob_puttext_4-J38
[0004b01c] 009c                      dc.w $009c   ; Aob_puttext_1-J38
[0004b01e] 0046                      dc.w $0046   ; Aob_puttext_4-J38
[0004b020] 001a                      dc.w $001a   ; Aob_puttext_2-J38
[0004b022] 001a                      dc.w $001a   ; Aob_puttext_2-J38
[0004b024] 0060                      dc.w $0060   ; Aob_puttext_5-J38
[0004b026] 0046                      dc.w $0046   ; Aob_puttext_4-J38
[0004b028] 0060                      dc.w $0060   ; Aob_puttext_5-J38
Aob_puttext_2:
[0004b02a] 3203                      move.w     d3,d1
[0004b02c] 48c1                      ext.l      d1
[0004b02e] 2001                      move.l     d1,d0
[0004b030] d080                      add.l      d0,d0
[0004b032] d081                      add.l      d1,d0
[0004b034] e788                      lsl.l      #3,d0
[0004b036] 2872 080c                 movea.l    12(a2,d0.l),a4
[0004b03a] 302c 0018                 move.w     24(a4),d0
[0004b03e] 48c0                      ext.l      d0
[0004b040] 224b                      movea.l    a3,a1
[0004b042] 2054                      movea.l    (a4),a0
[0004b044] 4eb9 0007 6a1a            jsr        strncpy
[0004b04a] 302c 0018                 move.w     24(a4),d0
[0004b04e] 2054                      movea.l    (a4),a0
[0004b050] 4230 00ff                 clr.b      -1(a0,d0.w)
[0004b054] 6056                      bra.s      Aob_puttext_1
Aob_puttext_4:
[0004b056] 224b                      movea.l    a3,a1
[0004b058] 3203                      move.w     d3,d1
[0004b05a] 48c1                      ext.l      d1
[0004b05c] 2001                      move.l     d1,d0
[0004b05e] d080                      add.l      d0,d0
[0004b060] d081                      add.l      d1,d0
[0004b062] e788                      lsl.l      #3,d0
[0004b064] 2072 080c                 movea.l    12(a2,d0.l),a0
[0004b068] 4eb9 0007 6950            jsr        strcpy
[0004b06e] 603c                      bra.s      Aob_puttext_1
Aob_puttext_5:
[0004b070] 224b                      movea.l    a3,a1
[0004b072] 3203                      move.w     d3,d1
[0004b074] 48c1                      ext.l      d1
[0004b076] 2001                      move.l     d1,d0
[0004b078] d080                      add.l      d0,d0
[0004b07a] d081                      add.l      d1,d0
[0004b07c] e788                      lsl.l      #3,d0
[0004b07e] 2072 080c                 movea.l    12(a2,d0.l),a0
[0004b082] 2068 0008                 movea.l    8(a0),a0
[0004b086] 4eb9 0007 6950            jsr        strcpy
[0004b08c] 601e                      bra.s      Aob_puttext_1
Aob_puttext_3:
[0004b08e] 3203                      move.w     d3,d1
[0004b090] 48c1                      ext.l      d1
[0004b092] 2001                      move.l     d1,d0
[0004b094] d080                      add.l      d0,d0
[0004b096] d081                      add.l      d1,d0
[0004b098] e788                      lsl.l      #3,d0
[0004b09a] 2872 080c                 movea.l    12(a2,d0.l),a4
[0004b09e] 224b                      movea.l    a3,a1
[0004b0a0] 41f2 0800                 lea.l      0(a2,d0.l),a0
[0004b0a4] 2a6c 0008                 movea.l    8(a4),a5
[0004b0a8] 7004                      moveq.l    #4,d0
[0004b0aa] 4e95                      jsr        (a5)
Aob_puttext_1:
[0004b0ac] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0004b0b0] 4e75                      rts

Aob_scanf:
[0004b0b2] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0004b0b6] 2848                      movea.l    a0,a4
[0004b0b8] 3600                      move.w     d0,d3
[0004b0ba] 2649                      movea.l    a1,a3
[0004b0bc] 45f9 0010 6790            lea.l      ob_inout,a2
[0004b0c2] 224a                      movea.l    a2,a1
[0004b0c4] 3003                      move.w     d3,d0
[0004b0c6] 204c                      movea.l    a4,a0
[0004b0c8] 4eb9 0004 b154            jsr        Aob_gettext
[0004b0ce] 3600                      move.w     d0,d3
[0004b0d0] 220b                      move.l     a3,d1
[0004b0d2] 6700 0078                 beq.w      Aob_scanf_1
[0004b0d6] 1412                      move.b     (a2),d2
[0004b0d8] 6660                      bne.s      Aob_scanf_2
[0004b0da] 204b                      movea.l    a3,a0
[0004b0dc] 7025                      moveq.l    #37,d0
[0004b0de] 4eb9 0007 68ce            jsr        strchr
[0004b0e4] 2848                      movea.l    a0,a4
[0004b0e6] 200c                      move.l     a4,d0
[0004b0e8] 6750                      beq.s      Aob_scanf_2
Aob_scanf_3:
[0004b0ea] 524c                      addq.w     #1,a4
[0004b0ec] 1014                      move.b     (a4),d0
[0004b0ee] 4880                      ext.w      d0
[0004b0f0] 4eb9 0007 7212            jsr        isdigit
[0004b0f6] 4a40                      tst.w      d0
[0004b0f8] 66f0                      bne.s      Aob_scanf_3
[0004b0fa] 0c14 0068                 cmpi.b     #$68,(a4)
[0004b0fe] 670c                      beq.s      Aob_scanf_4
[0004b100] 0c14 006c                 cmpi.b     #$6C,(a4)
[0004b104] 6706                      beq.s      Aob_scanf_4
[0004b106] 0c14 004c                 cmpi.b     #$4C,(a4)
[0004b10a] 6602                      bne.s      Aob_scanf_5
Aob_scanf_4:
[0004b10c] 524c                      addq.w     #1,a4
Aob_scanf_5:
[0004b10e] 0c14 0064                 cmpi.b     #$64,(a4)
[0004b112] 6718                      beq.s      Aob_scanf_6
[0004b114] 0c14 006f                 cmpi.b     #$6F,(a4)
[0004b118] 6712                      beq.s      Aob_scanf_6
[0004b11a] 0c14 0069                 cmpi.b     #$69,(a4)
[0004b11e] 670c                      beq.s      Aob_scanf_6
[0004b120] 0c14 0075                 cmpi.b     #$75,(a4)
[0004b124] 6706                      beq.s      Aob_scanf_6
[0004b126] 0c14 0078                 cmpi.b     #$78,(a4)
[0004b12a] 660e                      bne.s      Aob_scanf_2
Aob_scanf_6:
[0004b12c] 43f9 000d 3d50            lea.l      $000D3D50,a1
[0004b132] 204a                      movea.l    a2,a0
[0004b134] 4eb9 0007 6950            jsr        strcpy
Aob_scanf_2:
[0004b13a] 49ef 0014                 lea.l      20(a7),a4
[0004b13e] 2f0c                      move.l     a4,-(a7)
[0004b140] 224b                      movea.l    a3,a1
[0004b142] 204a                      movea.l    a2,a0
[0004b144] 4eb9 0007 5980            jsr        vsscanf
[0004b14a] 584f                      addq.w     #4,a7
Aob_scanf_1:
[0004b14c] 3003                      move.w     d3,d0
[0004b14e] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0004b152] 4e75                      rts

Aob_gettext:
[0004b154] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[0004b158] 594f                      subq.w     #4,a7
[0004b15a] 2648                      movea.l    a0,a3
[0004b15c] 3800                      move.w     d0,d4
[0004b15e] 2849                      movea.l    a1,a4
[0004b160] 76ff                      moveq.l    #-1,d3
[0004b162] 4297                      clr.l      (a7)
[0004b164] 48c0                      ext.l      d0
[0004b166] 2200                      move.l     d0,d1
[0004b168] d281                      add.l      d1,d1
[0004b16a] d280                      add.l      d0,d1
[0004b16c] e789                      lsl.l      #3,d1
[0004b16e] 1433 1807                 move.b     7(a3,d1.l),d2
[0004b172] 4882                      ext.w      d2
[0004b174] 947c 0015                 sub.w      #$0015,d2
[0004b178] b47c 000c                 cmp.w      #$000C,d2
[0004b17c] 6200 00fe                 bhi        Aob_gettext_1
[0004b180] d442                      add.w      d2,d2
[0004b182] 343b 2006                 move.w     $0004B18A(pc,d2.w),d2
[0004b186] 4efb 2002                 jmp        $0004B18A(pc,d2.w)
J39:
[0004b18a] 001a                      dc.w $001a   ; Aob_gettext_2-J39
[0004b18c] 001a                      dc.w $001a   ; Aob_gettext_2-J39
[0004b18e] 00f2                      dc.w $00f2   ; Aob_gettext_1-J39
[0004b190] 00b8                      dc.w $00b8   ; Aob_gettext_3-J39
[0004b192] 00f2                      dc.w $00f2   ; Aob_gettext_1-J39
[0004b194] 0082                      dc.w $0082   ; Aob_gettext_4-J39
[0004b196] 00f2                      dc.w $00f2   ; Aob_gettext_1-J39
[0004b198] 0082                      dc.w $0082   ; Aob_gettext_4-J39
[0004b19a] 001a                      dc.w $001a   ; Aob_gettext_2-J39
[0004b19c] 001a                      dc.w $001a   ; Aob_gettext_2-J39
[0004b19e] 0042                      dc.w $0042   ; Aob_gettext_5-J39
[0004b1a0] 0082                      dc.w $0082   ; Aob_gettext_4-J39
[0004b1a2] 0042                      dc.w $0042   ; Aob_gettext_5-J39
Aob_gettext_2:
[0004b1a4] 3204                      move.w     d4,d1
[0004b1a6] 48c1                      ext.l      d1
[0004b1a8] 2001                      move.l     d1,d0
[0004b1aa] d080                      add.l      d0,d0
[0004b1ac] d081                      add.l      d1,d0
[0004b1ae] e788                      lsl.l      #3,d0
[0004b1b0] 2073 080c                 movea.l    12(a3,d0.l),a0
[0004b1b4] 3628 0018                 move.w     24(a0),d3
[0004b1b8] 240c                      move.l     a4,d2
[0004b1ba] 6700 00c0                 beq        Aob_gettext_1
[0004b1be] 2250                      movea.l    (a0),a1
[0004b1c0] 204c                      movea.l    a4,a0
[0004b1c2] 4eb9 0007 6950            jsr        strcpy
[0004b1c8] 6000 00b2                 bra        Aob_gettext_1
Aob_gettext_5:
[0004b1cc] 3204                      move.w     d4,d1
[0004b1ce] 48c1                      ext.l      d1
[0004b1d0] 2001                      move.l     d1,d0
[0004b1d2] d080                      add.l      d0,d0
[0004b1d4] d081                      add.l      d1,d0
[0004b1d6] e788                      lsl.l      #3,d0
[0004b1d8] 2073 080c                 movea.l    12(a3,d0.l),a0
[0004b1dc] 2068 0008                 movea.l    8(a0),a0
[0004b1e0] 4eb9 0007 69b0            jsr        strlen
[0004b1e6] 2600                      move.l     d0,d3
[0004b1e8] 200c                      move.l     a4,d0
[0004b1ea] 6700 0090                 beq        Aob_gettext_1
[0004b1ee] 3404                      move.w     d4,d2
[0004b1f0] 48c2                      ext.l      d2
[0004b1f2] 2202                      move.l     d2,d1
[0004b1f4] d281                      add.l      d1,d1
[0004b1f6] d282                      add.l      d2,d1
[0004b1f8] e789                      lsl.l      #3,d1
[0004b1fa] 2073 180c                 movea.l    12(a3,d1.l),a0
[0004b1fe] 2268 0008                 movea.l    8(a0),a1
[0004b202] 204c                      movea.l    a4,a0
[0004b204] 4eb9 0007 6950            jsr        strcpy
[0004b20a] 6070                      bra.s      Aob_gettext_1
Aob_gettext_4:
[0004b20c] 3204                      move.w     d4,d1
[0004b20e] 48c1                      ext.l      d1
[0004b210] 2001                      move.l     d1,d0
[0004b212] d080                      add.l      d0,d0
[0004b214] d081                      add.l      d1,d0
[0004b216] e788                      lsl.l      #3,d0
[0004b218] 2073 080c                 movea.l    12(a3,d0.l),a0
[0004b21c] 4eb9 0007 69b0            jsr        strlen
[0004b222] 2600                      move.l     d0,d3
[0004b224] 200c                      move.l     a4,d0
[0004b226] 6754                      beq.s      Aob_gettext_1
[0004b228] 3404                      move.w     d4,d2
[0004b22a] 48c2                      ext.l      d2
[0004b22c] 2202                      move.l     d2,d1
[0004b22e] d281                      add.l      d1,d1
[0004b230] d282                      add.l      d2,d1
[0004b232] e789                      lsl.l      #3,d1
[0004b234] 2273 180c                 movea.l    12(a3,d1.l),a1
[0004b238] 204c                      movea.l    a4,a0
[0004b23a] 4eb9 0007 6950            jsr        strcpy
[0004b240] 603a                      bra.s      Aob_gettext_1
Aob_gettext_3:
[0004b242] 3204                      move.w     d4,d1
[0004b244] 48c1                      ext.l      d1
[0004b246] 2001                      move.l     d1,d0
[0004b248] d080                      add.l      d0,d0
[0004b24a] d081                      add.l      d1,d0
[0004b24c] e788                      lsl.l      #3,d0
[0004b24e] 2a73 080c                 movea.l    12(a3,d0.l),a5
[0004b252] 43d7                      lea.l      (a7),a1
[0004b254] 41f3 0800                 lea.l      0(a3,d0.l),a0
[0004b258] 246d 0008                 movea.l    8(a5),a2
[0004b25c] 7003                      moveq.l    #3,d0
[0004b25e] 4e92                      jsr        (a2)
[0004b260] 2017                      move.l     (a7),d0
[0004b262] 6718                      beq.s      Aob_gettext_1
[0004b264] 2040                      movea.l    d0,a0
[0004b266] 4eb9 0007 69b0            jsr        strlen
[0004b26c] 2600                      move.l     d0,d3
[0004b26e] 200c                      move.l     a4,d0
[0004b270] 670a                      beq.s      Aob_gettext_1
[0004b272] 2257                      movea.l    (a7),a1
[0004b274] 204c                      movea.l    a4,a0
[0004b276] 4eb9 0007 6950            jsr        strcpy
Aob_gettext_1:
[0004b27c] 3003                      move.w     d3,d0
[0004b27e] 584f                      addq.w     #4,a7
[0004b280] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[0004b284] 4e75                      rts

		.data

map:
[000d3d0a]                           dc.b $00
[000d3d0b]                           dc.b $00
[000d3d0c]                           dc.b $00
[000d3d0d]                           dc.b $02
[000d3d0e]                           dc.b $00
[000d3d0f]                           dc.b $03
[000d3d10]                           dc.b $00
[000d3d11]                           dc.b $06
[000d3d12]                           dc.b $00
[000d3d13]                           dc.b $04
[000d3d14]                           dc.b $00
[000d3d15]                           dc.b $07
[000d3d16]                           dc.b $00
[000d3d17]                           dc.b $05
[000d3d18]                           dc.b $00
[000d3d19]                           dc.b $08
[000d3d1a]                           dc.b $00
[000d3d1b]                           dc.b $09
[000d3d1c]                           dc.b $00
[000d3d1d]                           dc.b $0a
[000d3d1e]                           dc.b $00
[000d3d1f]                           dc.b $0b
[000d3d20]                           dc.b $00
[000d3d21]                           dc.b $0e
[000d3d22]                           dc.b $00
[000d3d23]                           dc.b $0c
[000d3d24]                           dc.b $00
[000d3d25]                           dc.b $0f
[000d3d26]                           dc.b $00
[000d3d27]                           dc.b $0d
[000d3d28]                           dc.b $00
[000d3d29]                           dc.b $01
xff:
[000d3d2a]                           dc.w $ffff
punkt:
[000d3d2c] 000d3d2a                  dc.l xff
[000d3d30]                           dc.b $00
[000d3d31]                           dc.b $01
[000d3d32]                           dc.b $00
[000d3d33]                           dc.b $01
[000d3d34]                           dc.b $00
[000d3d35]                           dc.b $01
[000d3d36]                           dc.b $00
[000d3d37]                           dc.b $00
[000d3d38]                           dc.b $00
[000d3d39]                           dc.b $01
[000d3d3a]                           dc.b $00
[000d3d3b]                           dc.b $00
[000d3d3c]                           dc.b $00
[000d3d3d]                           dc.b $00
[000d3d3e]                           dc.b $00
[000d3d3f]                           dc.b $00
[000d3d40]                           dc.b $00
[000d3d41]                           dc.b $00
[000d3d42]                           dc.b $00
[000d3d43]                           dc.b $00
[000d3d44]                           dc.b $00
[000d3d45]                           dc.b $00
[000d3d46]                           dc.b $00
[000d3d47]                           dc.b $00
[000d3d48]                           dc.b $00
[000d3d49]                           dc.b $00
[000d3d4a]                           dc.b $00
[000d3d4b]                           dc.b $00
[000d3d4c]                           dc.b $00
[000d3d4d]                           dc.b $00
[000d3d4e]                           dc.b $00
[000d3d4f]                           dc.b $00
[000d3d50]                           dc.b '0 0 0 0 0 0 0 0 0 0',0
		.even
