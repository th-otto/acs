
INuserobj:
[00058ab4] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00058ab8] 47f9 000d 4cb0            lea.l      icn_tmp,a3
[00058abe] 302b ffda                 move.w     -38(a3),d0
[00058ac2] 526b ffda                 addq.w     #1,-38(a3)
[00058ac6] 4a40                      tst.w      d0
[00058ac8] 6600 045a                 bne        INuserobj_1
[00058acc] 45f9 0010 1f12            lea.l      ACSblk,a2
[00058ad2] 2052                      movea.l    (a2),a0
[00058ad4] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[00058ada] 6d00 0448                 blt        INuserobj_1
[00058ade] 3628 001c                 move.w     28(a0),d3
[00058ae2] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00058ae8] 6f06                      ble.s      INuserobj_2
[00058aea] 317c 0004 001c            move.w     #$0004,28(a0)
INuserobj_2:
[00058af0] 7210                      moveq.l    #16,d1
[00058af2] 7010                      moveq.l    #16,d0
[00058af4] 4eb9 0004 d928            jsr        Abp_create
[00058afa] 2748 fffc                 move.l     a0,-4(a3)
[00058afe] 6700 0138                 beq        INuserobj_3
[00058b02] 7210                      moveq.l    #16,d1
[00058b04] 7010                      moveq.l    #16,d0
[00058b06] 4eb9 0004 d928            jsr        Abp_create
[00058b0c] 2748 ffdc                 move.l     a0,-36(a3)
[00058b10] 6700 0082                 beq        INuserobj_4
[00058b14] 7210                      moveq.l    #16,d1
[00058b16] 7010                      moveq.l    #16,d0
[00058b18] 4eb9 0004 d928            jsr        Abp_create
[00058b1e] 2748 ffe0                 move.l     a0,-32(a3)
[00058b22] 6770                      beq.s      INuserobj_4
[00058b24] 7210                      moveq.l    #16,d1
[00058b26] 7010                      moveq.l    #16,d0
[00058b28] 4eb9 0004 d928            jsr        Abp_create
[00058b2e] 2748 ffec                 move.l     a0,-20(a3)
[00058b32] 6760                      beq.s      INuserobj_4
[00058b34] 7210                      moveq.l    #16,d1
[00058b36] 7010                      moveq.l    #16,d0
[00058b38] 4eb9 0004 d928            jsr        Abp_create
[00058b3e] 2748 fff0                 move.l     a0,-16(a3)
[00058b42] 6750                      beq.s      INuserobj_4
[00058b44] 7210                      moveq.l    #16,d1
[00058b46] 7010                      moveq.l    #16,d0
[00058b48] 4eb9 0004 d928            jsr        Abp_create
[00058b4e] 2748 ffe4                 move.l     a0,-28(a3)
[00058b52] 6740                      beq.s      INuserobj_4
[00058b54] 7210                      moveq.l    #16,d1
[00058b56] 7010                      moveq.l    #16,d0
[00058b58] 4eb9 0004 d928            jsr        Abp_create
[00058b5e] 2748 ffe8                 move.l     a0,-24(a3)
[00058b62] 6730                      beq.s      INuserobj_4
[00058b64] 7210                      moveq.l    #16,d1
[00058b66] 7010                      moveq.l    #16,d0
[00058b68] 4eb9 0004 d928            jsr        Abp_create
[00058b6e] 2748 fff4                 move.l     a0,-12(a3)
[00058b72] 6720                      beq.s      INuserobj_4
[00058b74] 7210                      moveq.l    #16,d1
[00058b76] 7010                      moveq.l    #16,d0
[00058b78] 4eb9 0004 d928            jsr        Abp_create
[00058b7e] 2748 fff8                 move.l     a0,-8(a3)
[00058b82] 6710                      beq.s      INuserobj_4
[00058b84] 7210                      moveq.l    #16,d1
[00058b86] 7010                      moveq.l    #16,d0
[00058b88] 4eb9 0004 d928            jsr        Abp_create
[00058b8e] 2688                      move.l     a0,(a3)
[00058b90] 6600 00ac                 bne        INuserobj_5
INuserobj_4:
[00058b94] 2052                      movea.l    (a2),a0
[00058b96] 3143 001c                 move.w     d3,28(a0)
[00058b9a] 206b fffc                 movea.l    -4(a3),a0
[00058b9e] 4eb9 0004 d996            jsr        Abp_delete
[00058ba4] 42ab fffc                 clr.l      -4(a3)
[00058ba8] 202b fff0                 move.l     -16(a3),d0
[00058bac] 670c                      beq.s      INuserobj_6
[00058bae] 2040                      movea.l    d0,a0
[00058bb0] 4eb9 0004 d996            jsr        Abp_delete
[00058bb6] 42ab fff0                 clr.l      -16(a3)
INuserobj_6:
[00058bba] 202b ffec                 move.l     -20(a3),d0
[00058bbe] 670c                      beq.s      INuserobj_7
[00058bc0] 2040                      movea.l    d0,a0
[00058bc2] 4eb9 0004 d996            jsr        Abp_delete
[00058bc8] 42ab ffec                 clr.l      -20(a3)
INuserobj_7:
[00058bcc] 202b ffe0                 move.l     -32(a3),d0
[00058bd0] 670c                      beq.s      INuserobj_8
[00058bd2] 2040                      movea.l    d0,a0
[00058bd4] 4eb9 0004 d996            jsr        Abp_delete
[00058bda] 42ab ffe0                 clr.l      -32(a3)
INuserobj_8:
[00058bde] 202b ffdc                 move.l     -36(a3),d0
[00058be2] 670c                      beq.s      INuserobj_9
[00058be4] 2040                      movea.l    d0,a0
[00058be6] 4eb9 0004 d996            jsr        Abp_delete
[00058bec] 42ab ffdc                 clr.l      -36(a3)
INuserobj_9:
[00058bf0] 202b fff8                 move.l     -8(a3),d0
[00058bf4] 670c                      beq.s      INuserobj_10
[00058bf6] 2040                      movea.l    d0,a0
[00058bf8] 4eb9 0004 d996            jsr        Abp_delete
[00058bfe] 42ab fff8                 clr.l      -8(a3)
INuserobj_10:
[00058c02] 202b fff4                 move.l     -12(a3),d0
[00058c06] 670c                      beq.s      INuserobj_11
[00058c08] 2040                      movea.l    d0,a0
[00058c0a] 4eb9 0004 d996            jsr        Abp_delete
[00058c10] 42ab fff4                 clr.l      -12(a3)
INuserobj_11:
[00058c14] 202b ffe8                 move.l     -24(a3),d0
[00058c18] 670c                      beq.s      INuserobj_12
[00058c1a] 2040                      movea.l    d0,a0
[00058c1c] 4eb9 0004 d996            jsr        Abp_delete
[00058c22] 42ab ffe8                 clr.l      -24(a3)
INuserobj_12:
[00058c26] 202b ffe4                 move.l     -28(a3),d0
[00058c2a] 670c                      beq.s      INuserobj_3
[00058c2c] 2040                      movea.l    d0,a0
[00058c2e] 4eb9 0004 d996            jsr        Abp_delete
[00058c34] 42ab ffe4                 clr.l      -28(a3)
INuserobj_3:
[00058c38] 70ff                      moveq.l    #-1,d0
[00058c3a] 6000 02ea                 bra        INuserobj_13
INuserobj_5:
[00058c3e] 2052                      movea.l    (a2),a0
[00058c40] 3143 001c                 move.w     d3,28(a0)
[00058c44] 49f9 000d 114a            lea.l      _CHK_3D_S,a4
[00058c4a] 2052                      movea.l    (a2),a0
[00058c4c] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00058c52] 6f1a                      ble.s      INuserobj_14
[00058c54] 4240                      clr.w      d0
[00058c56] 6010                      bra.s      INuserobj_15
INuserobj_16:
[00058c58] 3200                      move.w     d0,d1
[00058c5a] 48c1                      ext.l      d1
[00058c5c] d281                      add.l      d1,d1
[00058c5e] 2054                      movea.l    (a4),a0
[00058c60] 0a70 ffff 1800            eori.w     #$FFFF,0(a0,d1.l)
[00058c66] 5240                      addq.w     #1,d0
INuserobj_15:
[00058c68] b07c fff0                 cmp.w      #$FFF0,d0
[00058c6c] 6dea                      blt.s      INuserobj_16
INuserobj_14:
[00058c6e] 2052                      movea.l    (a2),a0
[00058c70] 3228 001c                 move.w     28(a0),d1
[00058c74] 48c1                      ext.l      d1
[00058c76] eb89                      lsl.l      #5,d1
[00058c78] 4240                      clr.w      d0
[00058c7a] 2253                      movea.l    (a3),a1
[00058c7c] 2051                      movea.l    (a1),a0
[00058c7e] 4eb9 0007 712e            jsr        memset
[00058c84] 203c 0000 0080            move.l     #$00000080,d0
[00058c8a] 206c 0022                 movea.l    34(a4),a0
[00058c8e] 2268 0002                 movea.l    2(a0),a1
[00058c92] 2053                      movea.l    (a3),a0
[00058c94] 2050                      movea.l    (a0),a0
[00058c96] 4eb9 0007 6f44            jsr        memcpy
[00058c9c] 2053                      movea.l    (a3),a0
[00058c9e] 317c 0001 000a            move.w     #$0001,10(a0)
[00058ca4] 226b ffdc                 movea.l    -36(a3),a1
[00058ca8] 2053                      movea.l    (a3),a0
[00058caa] 2852                      movea.l    (a2),a4
[00058cac] 302c 0010                 move.w     16(a4),d0
[00058cb0] 4eb9 0006 66a8            jsr        vr_trnfm
[00058cb6] 49f9 000d 11dc            lea.l      _CHK_3D_U,a4
[00058cbc] 2052                      movea.l    (a2),a0
[00058cbe] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00058cc4] 6f1a                      ble.s      INuserobj_17
[00058cc6] 4240                      clr.w      d0
[00058cc8] 6010                      bra.s      INuserobj_18
INuserobj_19:
[00058cca] 3200                      move.w     d0,d1
[00058ccc] 48c1                      ext.l      d1
[00058cce] d281                      add.l      d1,d1
[00058cd0] 2054                      movea.l    (a4),a0
[00058cd2] 0a70 ffff 1800            eori.w     #$FFFF,0(a0,d1.l)
[00058cd8] 5240                      addq.w     #1,d0
INuserobj_18:
[00058cda] b07c fff0                 cmp.w      #$FFF0,d0
[00058cde] 6dea                      blt.s      INuserobj_19
INuserobj_17:
[00058ce0] 2052                      movea.l    (a2),a0
[00058ce2] 3228 001c                 move.w     28(a0),d1
[00058ce6] 48c1                      ext.l      d1
[00058ce8] eb89                      lsl.l      #5,d1
[00058cea] 4240                      clr.w      d0
[00058cec] 2253                      movea.l    (a3),a1
[00058cee] 2051                      movea.l    (a1),a0
[00058cf0] 4eb9 0007 712e            jsr        memset
[00058cf6] 203c 0000 0080            move.l     #$00000080,d0
[00058cfc] 206c 0022                 movea.l    34(a4),a0
[00058d00] 2268 0002                 movea.l    2(a0),a1
[00058d04] 2053                      movea.l    (a3),a0
[00058d06] 2050                      movea.l    (a0),a0
[00058d08] 4eb9 0007 6f44            jsr        memcpy
[00058d0e] 2053                      movea.l    (a3),a0
[00058d10] 317c 0001 000a            move.w     #$0001,10(a0)
[00058d16] 226b ffe0                 movea.l    -32(a3),a1
[00058d1a] 2053                      movea.l    (a3),a0
[00058d1c] 2852                      movea.l    (a2),a4
[00058d1e] 302c 0010                 move.w     16(a4),d0
[00058d22] 4eb9 0006 66a8            jsr        vr_trnfm
[00058d28] 49f9 000d 1026            lea.l      _CHK_3D_DS,a4
[00058d2e] 2052                      movea.l    (a2),a0
[00058d30] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00058d36] 6f1a                      ble.s      INuserobj_20
[00058d38] 4240                      clr.w      d0
[00058d3a] 6010                      bra.s      INuserobj_21
INuserobj_22:
[00058d3c] 3200                      move.w     d0,d1
[00058d3e] 48c1                      ext.l      d1
[00058d40] d281                      add.l      d1,d1
[00058d42] 2054                      movea.l    (a4),a0
[00058d44] 0a70 ffff 1800            eori.w     #$FFFF,0(a0,d1.l)
[00058d4a] 5240                      addq.w     #1,d0
INuserobj_21:
[00058d4c] b07c fff0                 cmp.w      #$FFF0,d0
[00058d50] 6dea                      blt.s      INuserobj_22
INuserobj_20:
[00058d52] 2052                      movea.l    (a2),a0
[00058d54] 3228 001c                 move.w     28(a0),d1
[00058d58] 48c1                      ext.l      d1
[00058d5a] eb89                      lsl.l      #5,d1
[00058d5c] 4240                      clr.w      d0
[00058d5e] 2253                      movea.l    (a3),a1
[00058d60] 2051                      movea.l    (a1),a0
[00058d62] 4eb9 0007 712e            jsr        memset
[00058d68] 203c 0000 0080            move.l     #$00000080,d0
[00058d6e] 206c 0022                 movea.l    34(a4),a0
[00058d72] 2268 0002                 movea.l    2(a0),a1
[00058d76] 2053                      movea.l    (a3),a0
[00058d78] 2050                      movea.l    (a0),a0
[00058d7a] 4eb9 0007 6f44            jsr        memcpy
[00058d80] 2053                      movea.l    (a3),a0
[00058d82] 317c 0001 000a            move.w     #$0001,10(a0)
[00058d88] 226b ffe4                 movea.l    -28(a3),a1
[00058d8c] 2053                      movea.l    (a3),a0
[00058d8e] 2852                      movea.l    (a2),a4
[00058d90] 302c 0010                 move.w     16(a4),d0
[00058d94] 4eb9 0006 66a8            jsr        vr_trnfm
[00058d9a] 49f9 000d 10b8            lea.l      _CHK_3D_DU,a4
[00058da0] 2052                      movea.l    (a2),a0
[00058da2] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00058da8] 6f1a                      ble.s      INuserobj_23
[00058daa] 4240                      clr.w      d0
[00058dac] 6010                      bra.s      INuserobj_24
INuserobj_25:
[00058dae] 3200                      move.w     d0,d1
[00058db0] 48c1                      ext.l      d1
[00058db2] d281                      add.l      d1,d1
[00058db4] 2054                      movea.l    (a4),a0
[00058db6] 0a70 ffff 1800            eori.w     #$FFFF,0(a0,d1.l)
[00058dbc] 5240                      addq.w     #1,d0
INuserobj_24:
[00058dbe] b07c fff0                 cmp.w      #$FFF0,d0
[00058dc2] 6dea                      blt.s      INuserobj_25
INuserobj_23:
[00058dc4] 2052                      movea.l    (a2),a0
[00058dc6] 3228 001c                 move.w     28(a0),d1
[00058dca] 48c1                      ext.l      d1
[00058dcc] eb89                      lsl.l      #5,d1
[00058dce] 4240                      clr.w      d0
[00058dd0] 2253                      movea.l    (a3),a1
[00058dd2] 2051                      movea.l    (a1),a0
[00058dd4] 4eb9 0007 712e            jsr        memset
[00058dda] 203c 0000 0080            move.l     #$00000080,d0
[00058de0] 206c 0022                 movea.l    34(a4),a0
[00058de4] 2268 0002                 movea.l    2(a0),a1
[00058de8] 2053                      movea.l    (a3),a0
[00058dea] 2050                      movea.l    (a0),a0
[00058dec] 4eb9 0007 6f44            jsr        memcpy
[00058df2] 2053                      movea.l    (a3),a0
[00058df4] 317c 0001 000a            move.w     #$0001,10(a0)
[00058dfa] 226b ffe8                 movea.l    -24(a3),a1
[00058dfe] 2053                      movea.l    (a3),a0
[00058e00] 2852                      movea.l    (a2),a4
[00058e02] 302c 0010                 move.w     16(a4),d0
[00058e06] 4eb9 0006 66a8            jsr        vr_trnfm
[00058e0c] 2052                      movea.l    (a2),a0
[00058e0e] 3228 001c                 move.w     28(a0),d1
[00058e12] 48c1                      ext.l      d1
[00058e14] eb89                      lsl.l      #5,d1
[00058e16] 4240                      clr.w      d0
[00058e18] 2253                      movea.l    (a3),a1
[00058e1a] 2051                      movea.l    (a1),a0
[00058e1c] 4eb9 0007 712e            jsr        memset
[00058e22] 203c 0000 0080            move.l     #$00000080,d0
[00058e28] 2079 000d 23da            movea.l    $000D23DA,a0
[00058e2e] 2268 0002                 movea.l    2(a0),a1
[00058e32] 2853                      movea.l    (a3),a4
[00058e34] 2054                      movea.l    (a4),a0
[00058e36] 4eb9 0007 6f44            jsr        memcpy
[00058e3c] 2053                      movea.l    (a3),a0
[00058e3e] 317c 0001 000a            move.w     #$0001,10(a0)
[00058e44] 226b ffec                 movea.l    -20(a3),a1
[00058e48] 2053                      movea.l    (a3),a0
[00058e4a] 2852                      movea.l    (a2),a4
[00058e4c] 302c 0010                 move.w     16(a4),d0
[00058e50] 4eb9 0006 66a8            jsr        vr_trnfm
[00058e56] 2052                      movea.l    (a2),a0
[00058e58] 3228 001c                 move.w     28(a0),d1
[00058e5c] 48c1                      ext.l      d1
[00058e5e] eb89                      lsl.l      #5,d1
[00058e60] 4240                      clr.w      d0
[00058e62] 2253                      movea.l    (a3),a1
[00058e64] 2051                      movea.l    (a1),a0
[00058e66] 4eb9 0007 712e            jsr        memset
[00058e6c] 203c 0000 0080            move.l     #$00000080,d0
[00058e72] 2079 000d 246c            movea.l    $000D246C,a0
[00058e78] 2268 0002                 movea.l    2(a0),a1
[00058e7c] 2853                      movea.l    (a3),a4
[00058e7e] 2054                      movea.l    (a4),a0
[00058e80] 4eb9 0007 6f44            jsr        memcpy
[00058e86] 226b fff0                 movea.l    -16(a3),a1
[00058e8a] 2053                      movea.l    (a3),a0
[00058e8c] 2852                      movea.l    (a2),a4
[00058e8e] 302c 0010                 move.w     16(a4),d0
[00058e92] 4eb9 0006 66a8            jsr        vr_trnfm
[00058e98] 2052                      movea.l    (a2),a0
[00058e9a] 3228 001c                 move.w     28(a0),d1
[00058e9e] 48c1                      ext.l      d1
[00058ea0] eb89                      lsl.l      #5,d1
[00058ea2] 4240                      clr.w      d0
[00058ea4] 2253                      movea.l    (a3),a1
[00058ea6] 2051                      movea.l    (a1),a0
[00058ea8] 4eb9 0007 712e            jsr        memset
[00058eae] 203c 0000 0080            move.l     #$00000080,d0
[00058eb4] 2079 000d 22b6            movea.l    $000D22B6,a0
[00058eba] 2268 0002                 movea.l    2(a0),a1
[00058ebe] 2853                      movea.l    (a3),a4
[00058ec0] 2054                      movea.l    (a4),a0
[00058ec2] 4eb9 0007 6f44            jsr        memcpy
[00058ec8] 226b fff4                 movea.l    -12(a3),a1
[00058ecc] 2053                      movea.l    (a3),a0
[00058ece] 2852                      movea.l    (a2),a4
[00058ed0] 302c 0010                 move.w     16(a4),d0
[00058ed4] 4eb9 0006 66a8            jsr        vr_trnfm
[00058eda] 2052                      movea.l    (a2),a0
[00058edc] 3228 001c                 move.w     28(a0),d1
[00058ee0] 48c1                      ext.l      d1
[00058ee2] eb89                      lsl.l      #5,d1
[00058ee4] 4240                      clr.w      d0
[00058ee6] 2253                      movea.l    (a3),a1
[00058ee8] 2051                      movea.l    (a1),a0
[00058eea] 4eb9 0007 712e            jsr        memset
[00058ef0] 203c 0000 0080            move.l     #$00000080,d0
[00058ef6] 2079 000d 2348            movea.l    $000D2348,a0
[00058efc] 2268 0002                 movea.l    2(a0),a1
[00058f00] 2853                      movea.l    (a3),a4
[00058f02] 2054                      movea.l    (a4),a0
[00058f04] 4eb9 0007 6f44            jsr        memcpy
[00058f0a] 226b fff8                 movea.l    -8(a3),a1
[00058f0e] 2053                      movea.l    (a3),a0
[00058f10] 2852                      movea.l    (a2),a4
[00058f12] 302c 0010                 move.w     16(a4),d0
[00058f16] 4eb9 0006 66a8            jsr        vr_trnfm
[00058f1c] 2053                      movea.l    (a3),a0
[00058f1e] 4eb9 0004 d996            jsr        Abp_delete
INuserobj_1:
[00058f24] 4240                      clr.w      d0
INuserobj_13:
[00058f26] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00058f2a] 4e75                      rts

TRuserobj:
[00058f2c] 2f0a                      move.l     a2,-(a7)
[00058f2e] 45f9 000d 4ca0            lea.l      icn_rad_un,a2
[00058f34] 536a ffea                 subq.w     #1,-22(a2)
[00058f38] 6600 008c                 bne        TRuserobj_1
[00058f3c] 2079 0010 1f12            movea.l    ACSblk,a0
[00058f42] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[00058f48] 6d7c                      blt.s      TRuserobj_1
[00058f4a] 2012                      move.l     (a2),d0
[00058f4c] 6778                      beq.s      TRuserobj_1
[00058f4e] 2040                      movea.l    d0,a0
[00058f50] 4eb9 0004 d996            jsr        Abp_delete
[00058f56] 206a fffc                 movea.l    -4(a2),a0
[00058f5a] 4eb9 0004 d996            jsr        Abp_delete
[00058f60] 206a fff0                 movea.l    -16(a2),a0
[00058f64] 4eb9 0004 d996            jsr        Abp_delete
[00058f6a] 206a ffec                 movea.l    -20(a2),a0
[00058f6e] 4eb9 0004 d996            jsr        Abp_delete
[00058f74] 206a 0008                 movea.l    8(a2),a0
[00058f78] 4eb9 0004 d996            jsr        Abp_delete
[00058f7e] 206a 0004                 movea.l    4(a2),a0
[00058f82] 4eb9 0004 d996            jsr        Abp_delete
[00058f88] 206a fff8                 movea.l    -8(a2),a0
[00058f8c] 4eb9 0004 d996            jsr        Abp_delete
[00058f92] 206a fff4                 movea.l    -12(a2),a0
[00058f96] 4eb9 0004 d996            jsr        Abp_delete
[00058f9c] 206a 000c                 movea.l    12(a2),a0
[00058fa0] 4eb9 0004 d996            jsr        Abp_delete
[00058fa6] 7000                      moveq.l    #0,d0
[00058fa8] 2540 fff4                 move.l     d0,-12(a2)
[00058fac] 2540 ffec                 move.l     d0,-20(a2)
[00058fb0] 2540 fff8                 move.l     d0,-8(a2)
[00058fb4] 2540 fff0                 move.l     d0,-16(a2)
[00058fb8] 2540 0008                 move.l     d0,8(a2)
[00058fbc] 2480                      move.l     d0,(a2)
[00058fbe] 2540 0004                 move.l     d0,4(a2)
[00058fc2] 2540 fffc                 move.l     d0,-4(a2)
TRuserobj_1:
[00058fc6] 245f                      movea.l    (a7)+,a2
[00058fc8] 4e75                      rts

g_string:
[00058fca] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00058fce] 4fef ffec                 lea.l      -20(a7),a7
[00058fd2] 3f40 0012                 move.w     d0,18(a7)
[00058fd6] 3e01                      move.w     d1,d7
[00058fd8] 2448                      movea.l    a0,a2
[00058fda] 3a02                      move.w     d2,d5
[00058fdc] 302f 0040                 move.w     64(a7),d0
[00058fe0] 4a40                      tst.w      d0
[00058fe2] 6704                      beq.s      g_string_1
[00058fe4] 7402                      moveq.l    #2,d2
[00058fe6] 6002                      bra.s      g_string_2
g_string_1:
[00058fe8] 4242                      clr.w      d2
g_string_2:
[00058fea] 3e82                      move.w     d2,(a7)
[00058fec] 4a40                      tst.w      d0
[00058fee] 6704                      beq.s      g_string_3
[00058ff0] 7802                      moveq.l    #2,d4
[00058ff2] 6002                      bra.s      g_string_4
g_string_3:
[00058ff4] 4244                      clr.w      d4
g_string_4:
[00058ff6] 3005                      move.w     d5,d0
[00058ff8] c07c 0800                 and.w      #$0800,d0
[00058ffc] 6704                      beq.s      g_string_5
[00058ffe] 887c 0008                 or.w       #$0008,d4
g_string_5:
[00059002] 3005                      move.w     d5,d0
[00059004] c07c 0400                 and.w      #$0400,d0
[00059008] 6704                      beq.s      g_string_6
[0005900a] 887c 0010                 or.w       #$0010,d4
g_string_6:
[0005900e] 3005                      move.w     d5,d0
[00059010] c07c 0300                 and.w      #$0300,d0
[00059014] 6704                      beq.s      g_string_7
[00059016] 887c 0001                 or.w       #$0001,d4
g_string_7:
[0005901a] 3005                      move.w     d5,d0
[0005901c] c07c 0c00                 and.w      #$0C00,d0
[00059020] 6704                      beq.s      g_string_8
[00059022] ca7c 7fff                 and.w      #$7FFF,d5
g_string_8:
[00059026] 4203                      clr.b      d3
[00059028] 1c03                      move.b     d3,d6
[0005902a] 4a45                      tst.w      d5
[0005902c] 671c                      beq.s      g_string_9
[0005902e] 3005                      move.w     d5,d0
[00059030] c07c 8000                 and.w      #$8000,d0
[00059034] 6614                      bne.s      g_string_9
[00059036] 1005                      move.b     d5,d0
[00059038] 4eb9 0004 3736            jsr        Ach_tolower
[0005903e] 1c00                      move.b     d0,d6
[00059040] 1005                      move.b     d5,d0
[00059042] 4eb9 0004 372c            jsr        Ach_toupper
[00059048] 1600                      move.b     d0,d3
g_string_9:
[0005904a] 1006                      move.b     d6,d0
[0005904c] 4880                      ext.w      d0
[0005904e] 204a                      movea.l    a2,a0
[00059050] 4eb9 0007 68ce            jsr        strchr
[00059056] 2648                      movea.l    a0,a3
[00059058] 1003                      move.b     d3,d0
[0005905a] 4880                      ext.w      d0
[0005905c] 204a                      movea.l    a2,a0
[0005905e] 4eb9 0007 68ce            jsr        strchr
[00059064] 200b                      move.l     a3,d0
[00059066] 6708                      beq.s      g_string_10
[00059068] 2208                      move.l     a0,d1
[0005906a] 6706                      beq.s      g_string_11
[0005906c] b280                      cmp.l      d0,d1
[0005906e] 6402                      bcc.s      g_string_11
g_string_10:
[00059070] 2648                      movea.l    a0,a3
g_string_11:
[00059072] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00059078] 204b                      movea.l    a3,a0
[0005907a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00059080] 4a40                      tst.w      d0
[00059082] 6600 00c6                 bne        g_string_12
[00059086] 13d3 000d 4cb4            move.b     (a3),save
[0005908c] 4213                      clr.b      (a3)
[0005908e] 49ef 0002                 lea.l      2(a7),a4
[00059092] 1012                      move.b     (a2),d0
[00059094] 673a                      beq.s      g_string_13
[00059096] 3217                      move.w     (a7),d1
[00059098] 2055                      movea.l    (a5),a0
[0005909a] 3028 0010                 move.w     16(a0),d0
[0005909e] 4eb9 0006 52be            jsr        vst_effects
[000590a4] 224c                      movea.l    a4,a1
[000590a6] 204a                      movea.l    a2,a0
[000590a8] 2c55                      movea.l    (a5),a6
[000590aa] 302e 0010                 move.w     16(a6),d0
[000590ae] 4eb9 0006 732e            jsr        vqt_extent
[000590b4] 3c2c 0004                 move.w     4(a4),d6
[000590b8] 9c54                      sub.w      (a4),d6
[000590ba] 204a                      movea.l    a2,a0
[000590bc] 3407                      move.w     d7,d2
[000590be] 322f 0012                 move.w     18(a7),d1
[000590c2] 2255                      movea.l    (a5),a1
[000590c4] 3029 0010                 move.w     16(a1),d0
[000590c8] 4eb9 0006 41e0            jsr        v_gtext
[000590ce] 6002                      bra.s      g_string_14
g_string_13:
[000590d0] 4246                      clr.w      d6
g_string_14:
[000590d2] 3204                      move.w     d4,d1
[000590d4] 2055                      movea.l    (a5),a0
[000590d6] 3028 0010                 move.w     16(a0),d0
[000590da] 4eb9 0006 52be            jsr        vst_effects
[000590e0] 224c                      movea.l    a4,a1
[000590e2] 41f9 000d 4cb4            lea.l      save,a0
[000590e8] 2c55                      movea.l    (a5),a6
[000590ea] 302e 0010                 move.w     16(a6),d0
[000590ee] 4eb9 0006 732e            jsr        vqt_extent
[000590f4] 362c 0004                 move.w     4(a4),d3
[000590f8] 9654                      sub.w      (a4),d3
[000590fa] 41f9 000d 4cb4            lea.l      save,a0
[00059100] 3407                      move.w     d7,d2
[00059102] 322f 0012                 move.w     18(a7),d1
[00059106] d246                      add.w      d6,d1
[00059108] 2255                      movea.l    (a5),a1
[0005910a] 3029 0010                 move.w     16(a1),d0
[0005910e] 4eb9 0006 41e0            jsr        v_gtext
[00059114] 102b 0001                 move.b     1(a3),d0
[00059118] 6728                      beq.s      g_string_15
[0005911a] 3217                      move.w     (a7),d1
[0005911c] 2055                      movea.l    (a5),a0
[0005911e] 3028 0010                 move.w     16(a0),d0
[00059122] 4eb9 0006 52be            jsr        vst_effects
[00059128] 41eb 0001                 lea.l      1(a3),a0
[0005912c] 3407                      move.w     d7,d2
[0005912e] 322f 0012                 move.w     18(a7),d1
[00059132] d246                      add.w      d6,d1
[00059134] d243                      add.w      d3,d1
[00059136] 2255                      movea.l    (a5),a1
[00059138] 3029 0010                 move.w     16(a1),d0
[0005913c] 4eb9 0006 41e0            jsr        v_gtext
g_string_15:
[00059142] 16b9 000d 4cb4            move.b     save,(a3)
[00059148] 602e                      bra.s      g_string_16
g_string_12:
[0005914a] 204a                      movea.l    a2,a0
[0005914c] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00059152] 4a40                      tst.w      d0
[00059154] 6622                      bne.s      g_string_16
[00059156] 3217                      move.w     (a7),d1
[00059158] 2055                      movea.l    (a5),a0
[0005915a] 3028 0010                 move.w     16(a0),d0
[0005915e] 4eb9 0006 52be            jsr        vst_effects
[00059164] 204a                      movea.l    a2,a0
[00059166] 3407                      move.w     d7,d2
[00059168] 322f 0012                 move.w     18(a7),d1
[0005916c] 2255                      movea.l    (a5),a1
[0005916e] 3029 0010                 move.w     16(a1),d0
[00059172] 4eb9 0006 41e0            jsr        v_gtext
g_string_16:
[00059178] 4fef 0014                 lea.l      20(a7),a7
[0005917c] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00059180] 4e75                      rts

g_stringLen:
[00059182] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00059186] 4fef ffec                 lea.l      -20(a7),a7
[0005918a] 2448                      movea.l    a0,a2
[0005918c] 3800                      move.w     d0,d4
[0005918e] 4243                      clr.w      d3
[00059190] 3f43 0002                 move.w     d3,2(a7)
[00059194] 3a03                      move.w     d3,d5
[00059196] 4a41                      tst.w      d1
[00059198] 6704                      beq.s      g_stringLen_1
[0005919a] 7c02                      moveq.l    #2,d6
[0005919c] 6002                      bra.s      g_stringLen_2
g_stringLen_1:
[0005919e] 4246                      clr.w      d6
g_stringLen_2:
[000591a0] 4a41                      tst.w      d1
[000591a2] 6704                      beq.s      g_stringLen_3
[000591a4] 7e02                      moveq.l    #2,d7
[000591a6] 6002                      bra.s      g_stringLen_4
g_stringLen_3:
[000591a8] 4247                      clr.w      d7
g_stringLen_4:
[000591aa] 3004                      move.w     d4,d0
[000591ac] c07c 0800                 and.w      #$0800,d0
[000591b0] 6704                      beq.s      g_stringLen_5
[000591b2] 8e7c 0008                 or.w       #$0008,d7
g_stringLen_5:
[000591b6] 3004                      move.w     d4,d0
[000591b8] c07c 0400                 and.w      #$0400,d0
[000591bc] 6704                      beq.s      g_stringLen_6
[000591be] 8e7c 0010                 or.w       #$0010,d7
g_stringLen_6:
[000591c2] 3004                      move.w     d4,d0
[000591c4] c07c 0300                 and.w      #$0300,d0
[000591c8] 6704                      beq.s      g_stringLen_7
[000591ca] 8e7c 0001                 or.w       #$0001,d7
g_stringLen_7:
[000591ce] 3004                      move.w     d4,d0
[000591d0] c07c 0c00                 and.w      #$0C00,d0
[000591d4] 6704                      beq.s      g_stringLen_8
[000591d6] c87c 7fff                 and.w      #$7FFF,d4
g_stringLen_8:
[000591da] 4200                      clr.b      d0
[000591dc] 1e80                      move.b     d0,(a7)
[000591de] 1f40 0001                 move.b     d0,1(a7)
[000591e2] 4a44                      tst.w      d4
[000591e4] 671e                      beq.s      g_stringLen_9
[000591e6] 3204                      move.w     d4,d1
[000591e8] c27c 8000                 and.w      #$8000,d1
[000591ec] 6616                      bne.s      g_stringLen_9
[000591ee] 1004                      move.b     d4,d0
[000591f0] 4eb9 0004 3736            jsr        Ach_tolower
[000591f6] 1f40 0001                 move.b     d0,1(a7)
[000591fa] 1004                      move.b     d4,d0
[000591fc] 4eb9 0004 372c            jsr        Ach_toupper
[00059202] 1e80                      move.b     d0,(a7)
g_stringLen_9:
[00059204] 102f 0001                 move.b     1(a7),d0
[00059208] 4880                      ext.w      d0
[0005920a] 204a                      movea.l    a2,a0
[0005920c] 4eb9 0007 68ce            jsr        strchr
[00059212] 2648                      movea.l    a0,a3
[00059214] 1017                      move.b     (a7),d0
[00059216] 4880                      ext.w      d0
[00059218] 204a                      movea.l    a2,a0
[0005921a] 4eb9 0007 68ce            jsr        strchr
[00059220] 200b                      move.l     a3,d0
[00059222] 6708                      beq.s      g_stringLen_10
[00059224] 2208                      move.l     a0,d1
[00059226] 6706                      beq.s      g_stringLen_11
[00059228] b280                      cmp.l      d0,d1
[0005922a] 6402                      bcc.s      g_stringLen_11
g_stringLen_10:
[0005922c] 2648                      movea.l    a0,a3
g_stringLen_11:
[0005922e] 4bf9 0010 1f12            lea.l      ACSblk,a5
[00059234] 49ef 0004                 lea.l      4(a7),a4
[00059238] 204b                      movea.l    a3,a0
[0005923a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00059240] 4a40                      tst.w      d0
[00059242] 6600 0092                 bne        g_stringLen_12
[00059246] 13d3 000d 4cb6            move.b     (a3),save
[0005924c] 4213                      clr.b      (a3)
[0005924e] 1012                      move.b     (a2),d0
[00059250] 6724                      beq.s      g_stringLen_13
[00059252] 3206                      move.w     d6,d1
[00059254] 2055                      movea.l    (a5),a0
[00059256] 3028 0010                 move.w     16(a0),d0
[0005925a] 4eb9 0006 52be            jsr        vst_effects
[00059260] 224c                      movea.l    a4,a1
[00059262] 204a                      movea.l    a2,a0
[00059264] 2c55                      movea.l    (a5),a6
[00059266] 302e 0010                 move.w     16(a6),d0
[0005926a] 4eb9 0006 732e            jsr        vqt_extent
[00059270] 362c 0004                 move.w     4(a4),d3
[00059274] 9654                      sub.w      (a4),d3
g_stringLen_13:
[00059276] 3207                      move.w     d7,d1
[00059278] 2055                      movea.l    (a5),a0
[0005927a] 3028 0010                 move.w     16(a0),d0
[0005927e] 4eb9 0006 52be            jsr        vst_effects
[00059284] 224c                      movea.l    a4,a1
[00059286] 41f9 000d 4cb6            lea.l      save,a0
[0005928c] 2c55                      movea.l    (a5),a6
[0005928e] 302e 0010                 move.w     16(a6),d0
[00059292] 4eb9 0006 732e            jsr        vqt_extent
[00059298] 302c 0004                 move.w     4(a4),d0
[0005929c] 9054                      sub.w      (a4),d0
[0005929e] 3f40 0002                 move.w     d0,2(a7)
[000592a2] 122b 0001                 move.b     1(a3),d1
[000592a6] 6726                      beq.s      g_stringLen_14
[000592a8] 2055                      movea.l    (a5),a0
[000592aa] 3028 0010                 move.w     16(a0),d0
[000592ae] 3206                      move.w     d6,d1
[000592b0] 4eb9 0006 52be            jsr        vst_effects
[000592b6] 224c                      movea.l    a4,a1
[000592b8] 41eb 0001                 lea.l      1(a3),a0
[000592bc] 2c55                      movea.l    (a5),a6
[000592be] 302e 0010                 move.w     16(a6),d0
[000592c2] 4eb9 0006 732e            jsr        vqt_extent
[000592c8] 3a2c 0004                 move.w     4(a4),d5
[000592cc] 9a54                      sub.w      (a4),d5
g_stringLen_14:
[000592ce] 16b9 000d 4cb6            move.b     save,(a3)
[000592d4] 6030                      bra.s      g_stringLen_15
g_stringLen_12:
[000592d6] 204a                      movea.l    a2,a0
[000592d8] 4eb9 0004 3a92            jsr        Ast_isEmpty
[000592de] 4a40                      tst.w      d0
[000592e0] 6624                      bne.s      g_stringLen_15
[000592e2] 3206                      move.w     d6,d1
[000592e4] 2055                      movea.l    (a5),a0
[000592e6] 3028 0010                 move.w     16(a0),d0
[000592ea] 4eb9 0006 52be            jsr        vst_effects
[000592f0] 224c                      movea.l    a4,a1
[000592f2] 204a                      movea.l    a2,a0
[000592f4] 2655                      movea.l    (a5),a3
[000592f6] 302b 0010                 move.w     16(a3),d0
[000592fa] 4eb9 0006 732e            jsr        vqt_extent
[00059300] 362c 0004                 move.w     4(a4),d3
[00059304] 9654                      sub.w      (a4),d3
g_stringLen_15:
[00059306] 3003                      move.w     d3,d0
[00059308] d06f 0002                 add.w      2(a7),d0
[0005930c] d045                      add.w      d5,d0
[0005930e] 4fef 0014                 lea.l      20(a7),a7
[00059312] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00059316] 4e75                      rts

Auo_string:
[00059318] 2f0a                      move.l     a2,-(a7)
[0005931a] 2f0b                      move.l     a3,-(a7)
[0005931c] 2649                      movea.l    a1,a3
[0005931e] 2468 000c                 movea.l    12(a0),a2
[00059322] 3200                      move.w     d0,d1
[00059324] b27c 0014                 cmp.w      #$0014,d1
[00059328] 6200 00b4                 bhi        Auo_string_1
[0005932c] d241                      add.w      d1,d1
[0005932e] 323b 1006                 move.w     $00059336(pc,d1.w),d1
[00059332] 4efb 1002                 jmp        $00059336(pc,d1.w)
J46:
[00059336] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[00059338] 002a                      dc.w $002a   ; Auo_string_2-J46
[0005933a] 0066                      dc.w $0066   ; Auo_string_3-J46
[0005933c] 008a                      dc.w $008a   ; Auo_string_4-J46
[0005933e] 0072                      dc.w $0072   ; Auo_string_5-J46
[00059340] 0090                      dc.w $0090   ; Auo_string_6-J46
[00059342] 0090                      dc.w $0090   ; Auo_string_6-J46
[00059344] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[00059346] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[00059348] 0054                      dc.w $0054   ; Auo_string_7-J46
[0005934a] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[0005934c] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[0005934e] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[00059350] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[00059352] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[00059354] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[00059356] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[00059358] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[0005935a] 00a8                      dc.w $00a8   ; Auo_string_1-J46
[0005935c] 00ac                      dc.w $00ac   ; Auo_string_8-J46
[0005935e] 00ac                      dc.w $00ac   ; Auo_string_8-J46
Auo_string_2:
[00059360] 202a 000c                 move.l     12(a2),d0
[00059364] 670c                      beq.s      Auo_string_9
[00059366] 2040                      movea.l    d0,a0
[00059368] 4eb9 0004 36d6            jsr        Ast_create
[0005936e] 2548 000c                 move.l     a0,12(a2)
Auo_string_9:
[00059372] 202a 000c                 move.l     12(a2),d0
[00059376] 666a                      bne.s      Auo_string_8
[00059378] 41f9 000d 4cd4            lea.l      $000D4CD4,a0
[0005937e] 4eb9 0004 36d6            jsr        Ast_create
[00059384] 2548 000c                 move.l     a0,12(a2)
[00059388] 6058                      bra.s      Auo_string_8
Auo_string_7:
[0005938a] 204b                      movea.l    a3,a0
[0005938c] 2550 0010                 move.l     (a0),16(a2)
[00059390] 3028 0008                 move.w     8(a0),d0
[00059394] 48c0                      ext.l      d0
[00059396] 2540 0014                 move.l     d0,20(a2)
[0005939a] 6046                      bra.s      Auo_string_8
Auo_string_3:
[0005939c] 206a 000c                 movea.l    12(a2),a0
[000593a0] 4eb9 0004 371c            jsr        Ast_delete
[000593a6] 603a                      bra.s      Auo_string_8
Auo_string_5:
[000593a8] 206a 000c                 movea.l    12(a2),a0
[000593ac] 4eb9 0004 371c            jsr        Ast_delete
[000593b2] 204b                      movea.l    a3,a0
[000593b4] 4eb9 0004 36d6            jsr        Ast_create
[000593ba] 2548 000c                 move.l     a0,12(a2)
[000593be] 60b2                      bra.s      Auo_string_9
Auo_string_4:
[000593c0] 26aa 000c                 move.l     12(a2),(a3)
[000593c4] 601c                      bra.s      Auo_string_8
Auo_string_6:
[000593c6] 266a 0010                 movea.l    16(a2),a3
[000593ca] 200b                      move.l     a3,d0
[000593cc] 6714                      beq.s      Auo_string_8
[000593ce] 72ff                      moveq.l    #-1,d1
[000593d0] 302a 0016                 move.w     22(a2),d0
[000593d4] 204b                      movea.l    a3,a0
[000593d6] 226b 0066                 movea.l    102(a3),a1
[000593da] 4e91                      jsr        (a1)
[000593dc] 6004                      bra.s      Auo_string_8
Auo_string_1:
[000593de] 4240                      clr.w      d0
[000593e0] 6002                      bra.s      Auo_string_10
Auo_string_8:
[000593e2] 7001                      moveq.l    #1,d0
Auo_string_10:
[000593e4] 265f                      movea.l    (a7)+,a3
[000593e6] 245f                      movea.l    (a7)+,a2
[000593e8] 4e75                      rts

A_radiobutton:
[000593ea] 2f02                      move.l     d2,-(a7)
[000593ec] 2f2f 0008                 move.l     8(a7),-(a7)
[000593f0] 4eb9 0005 93fc            jsr        A_checkbox
[000593f6] 584f                      addq.w     #4,a7
[000593f8] 241f                      move.l     (a7)+,d2
[000593fa] 4e75                      rts

A_checkbox:
[000593fc] 48e7 3f3c                 movem.l    d2-d7/a2-a5,-(a7)
[00059400] 4fef ffc8                 lea.l      -56(a7),a7
[00059404] 246f 0064                 movea.l    100(a7),a2
[00059408] 49f9 0010 1f12            lea.l      ACSblk,a4
[0005940e] 302a 0016                 move.w     22(a2),d0
[00059412] 6606                      bne.s      A_checkbox_1
[00059414] 322a 0018                 move.w     24(a2),d1
[00059418] 673c                      beq.s      A_checkbox_2
A_checkbox_1:
[0005941a] 3f6a 0012 0014            move.w     18(a2),20(a7)
[00059420] 3f6a 0014 0016            move.w     20(a2),22(a7)
[00059426] 302a 0012                 move.w     18(a2),d0
[0005942a] d06a 0016                 add.w      22(a2),d0
[0005942e] 5340                      subq.w     #1,d0
[00059430] 3f40 0018                 move.w     d0,24(a7)
[00059434] 322a 0014                 move.w     20(a2),d1
[00059438] d26a 0018                 add.w      24(a2),d1
[0005943c] 5341                      subq.w     #1,d1
[0005943e] 3f41 001a                 move.w     d1,26(a7)
[00059442] 41ef 0014                 lea.l      20(a7),a0
[00059446] 2254                      movea.l    (a4),a1
[00059448] 3029 0010                 move.w     16(a1),d0
[0005944c] 7201                      moveq.l    #1,d1
[0005944e] 4eb9 0006 3f60            jsr        vs_clip
[00059454] 6012                      bra.s      A_checkbox_3
A_checkbox_2:
[00059456] 41ef 0014                 lea.l      20(a7),a0
[0005945a] 4241                      clr.w      d1
[0005945c] 2254                      movea.l    (a4),a1
[0005945e] 3029 0010                 move.w     16(a1),d0
[00059462] 4eb9 0006 3f60            jsr        vs_clip
A_checkbox_3:
[00059468] 322a 0004                 move.w     4(a2),d1
[0005946c] 48c1                      ext.l      d1
[0005946e] 2001                      move.l     d1,d0
[00059470] d080                      add.l      d0,d0
[00059472] d081                      add.l      d1,d0
[00059474] e788                      lsl.l      #3,d0
[00059476] 2052                      movea.l    (a2),a0
[00059478] d1c0                      adda.l     d0,a0
[0005947a] 43e8 0018                 lea.l      24(a0),a1
[0005947e] 7420                      moveq.l    #32,d2
[00059480] c468 0008                 and.w      8(a0),d2
[00059484] 6610                      bne.s      A_checkbox_4
[00059486] 3029 0008                 move.w     8(a1),d0
[0005948a] c07c 8000                 and.w      #$8000,d0
[0005948e] 6706                      beq.s      A_checkbox_4
[00059490] 3629 000a                 move.w     10(a1),d3
[00059494] 6002                      bra.s      A_checkbox_5
A_checkbox_4:
[00059496] 4243                      clr.w      d3
A_checkbox_5:
[00059498] 2268 000c                 movea.l    12(a0),a1
[0005949c] 2ea9 000c                 move.l     12(a1),(a7)
[000594a0] 2017                      move.l     (a7),d0
[000594a2] 670e                      beq.s      A_checkbox_6
[000594a4] 2040                      movea.l    d0,a0
[000594a6] 4eb9 0007 69b0            jsr        strlen
[000594ac] 3f40 0006                 move.w     d0,6(a7)
[000594b0] 6004                      bra.s      A_checkbox_7
A_checkbox_6:
[000594b2] 426f 0006                 clr.w      6(a7)
A_checkbox_7:
[000594b6] 302a 0006                 move.w     6(a2),d0
[000594ba] 322a 0008                 move.w     8(a2),d1
[000594be] b340                      eor.w      d1,d0
[000594c0] 3f40 000e                 move.w     d0,14(a7)
[000594c4] 342f 0006                 move.w     6(a7),d2
[000594c8] 6f00 0182                 ble        A_checkbox_8
[000594cc] 302a 0010                 move.w     16(a2),d0
[000594d0] 2054                      movea.l    (a4),a0
[000594d2] 9068 0014                 sub.w      20(a0),d0
[000594d6] e240                      asr.w      #1,d0
[000594d8] d06a 000c                 add.w      12(a2),d0
[000594dc] 3f40 0010                 move.w     d0,16(a7)
[000594e0] 322f 000e                 move.w     14(a7),d1
[000594e4] 6600 0142                 bne        A_checkbox_9
[000594e8] 3028 0010                 move.w     16(a0),d0
[000594ec] 7202                      moveq.l    #2,d1
[000594ee] 4eb9 0006 4da0            jsr        vswr_mode
[000594f4] 4241                      clr.w      d1
[000594f6] 2054                      movea.l    (a4),a0
[000594f8] 3028 0010                 move.w     16(a0),d0
[000594fc] 4eb9 0006 51c2            jsr        vst_rotation
[00059502] 7201                      moveq.l    #1,d1
[00059504] 2054                      movea.l    (a4),a0
[00059506] 3028 0010                 move.w     16(a0),d0
[0005950a] 4eb9 0006 526a            jsr        vst_color
[00059510] 43ef 000c                 lea.l      12(a7),a1
[00059514] 41ef 000c                 lea.l      12(a7),a0
[00059518] 7405                      moveq.l    #5,d2
[0005951a] 4241                      clr.w      d1
[0005951c] 2654                      movea.l    (a4),a3
[0005951e] 302b 0010                 move.w     16(a3),d0
[00059522] 4eb9 0006 5312            jsr        vst_alignment
[00059528] 2054                      movea.l    (a4),a0
[0005952a] 3228 0290                 move.w     656(a0),d1
[0005952e] 3028 0010                 move.w     16(a0),d0
[00059532] 4eb9 0006 5216            jsr        vst_font
[00059538] 486f 000c                 pea.l      12(a7)
[0005953c] 486f 0010                 pea.l      16(a7)
[00059540] 43ef 0014                 lea.l      20(a7),a1
[00059544] 41ef 0014                 lea.l      20(a7),a0
[00059548] 2654                      movea.l    (a4),a3
[0005954a] 322b 0292                 move.w     658(a3),d1
[0005954e] 302b 0010                 move.w     16(a3),d0
[00059552] 4eb9 0006 50a0            jsr        vst_height
[00059558] 504f                      addq.w     #8,a7
[0005955a] 7008                      moveq.l    #8,d0
[0005955c] c06a 0008                 and.w      8(a2),d0
[00059560] 671c                      beq.s      A_checkbox_10
[00059562] 2054                      movea.l    (a4),a0
[00059564] 2268 023c                 movea.l    572(a0),a1
[00059568] 3229 000e                 move.w     14(a1),d1
[0005956c] c27c 0100                 and.w      #$0100,d1
[00059570] 6608                      bne.s      A_checkbox_11
[00059572] 0c68 0002 001c            cmpi.w     #$0002,28(a0)
[00059578] 6f04                      ble.s      A_checkbox_10
A_checkbox_11:
[0005957a] 7201                      moveq.l    #1,d1
[0005957c] 6002                      bra.s      A_checkbox_12
A_checkbox_10:
[0005957e] 4241                      clr.w      d1
A_checkbox_12:
[00059580] 3003                      move.w     d3,d0
[00059582] 2057                      movea.l    (a7),a0
[00059584] 6100 fbfc                 bsr        g_stringLen
[00059588] 3800                      move.w     d0,d4
[0005958a] 7208                      moveq.l    #8,d1
[0005958c] c26a 0008                 and.w      8(a2),d1
[00059590] 6754                      beq.s      A_checkbox_13
[00059592] 4267                      clr.w      -(a7)
[00059594] 3403                      move.w     d3,d2
[00059596] 206f 0002                 movea.l    2(a7),a0
[0005959a] 302a 000a                 move.w     10(a2),d0
[0005959e] d06a 000e                 add.w      14(a2),d0
[000595a2] 9044                      sub.w      d4,d0
[000595a4] 322f 0012                 move.w     18(a7),d1
[000595a8] 6100 fa20                 bsr        g_string
[000595ac] 544f                      addq.w     #2,a7
[000595ae] 7203                      moveq.l    #3,d1
[000595b0] 2054                      movea.l    (a4),a0
[000595b2] 3028 0010                 move.w     16(a0),d0
[000595b6] 4eb9 0006 4da0            jsr        vswr_mode
[000595bc] 4267                      clr.w      -(a7)
[000595be] 3403                      move.w     d3,d2
[000595c0] 206f 0002                 movea.l    2(a7),a0
[000595c4] 322f 0012                 move.w     18(a7),d1
[000595c8] 302a 000a                 move.w     10(a2),d0
[000595cc] d06a 000e                 add.w      14(a2),d0
[000595d0] 9044                      sub.w      d4,d0
[000595d2] 6100 f9f6                 bsr        g_string
[000595d6] 544f                      addq.w     #2,a7
[000595d8] 7202                      moveq.l    #2,d1
[000595da] 2054                      movea.l    (a4),a0
[000595dc] 3028 0010                 move.w     16(a0),d0
[000595e0] 4eb9 0006 4da0            jsr        vswr_mode
A_checkbox_13:
[000595e6] 7008                      moveq.l    #8,d0
[000595e8] c06a 0008                 and.w      8(a2),d0
[000595ec] 671c                      beq.s      A_checkbox_14
[000595ee] 2054                      movea.l    (a4),a0
[000595f0] 2268 023c                 movea.l    572(a0),a1
[000595f4] 3229 000e                 move.w     14(a1),d1
[000595f8] c27c 0100                 and.w      #$0100,d1
[000595fc] 6608                      bne.s      A_checkbox_15
[000595fe] 0c68 0002 001c            cmpi.w     #$0002,28(a0)
[00059604] 6f04                      ble.s      A_checkbox_14
A_checkbox_15:
[00059606] 7001                      moveq.l    #1,d0
[00059608] 6002                      bra.s      A_checkbox_16
A_checkbox_14:
[0005960a] 4240                      clr.w      d0
A_checkbox_16:
[0005960c] 3f00                      move.w     d0,-(a7)
[0005960e] 3403                      move.w     d3,d2
[00059610] 206f 0002                 movea.l    2(a7),a0
[00059614] 322f 0012                 move.w     18(a7),d1
[00059618] 302a 000a                 move.w     10(a2),d0
[0005961c] d06a 000e                 add.w      14(a2),d0
[00059620] 9044                      sub.w      d4,d0
[00059622] 6100 f9a6                 bsr        g_string
[00059626] 544f                      addq.w     #2,a7
A_checkbox_9:
[00059628] 2054                      movea.l    (a4),a0
[0005962a] 3028 0014                 move.w     20(a0),d0
[0005962e] c1e8 0004                 muls.w     4(a0),d0
[00059632] 48c0                      ext.l      d0
[00059634] 81e8 0006                 divs.w     6(a0),d0
[00059638] 3f40 0004                 move.w     d0,4(a7)
[0005963c] 3e28 0014                 move.w     20(a0),d7
[00059640] e240                      asr.w      #1,d0
[00059642] d06a 000a                 add.w      10(a2),d0
[00059646] 3f40 0012                 move.w     d0,18(a7)
[0005964a] 6016                      bra.s      A_checkbox_17
A_checkbox_8:
[0005964c] 3f6a 000e 0004            move.w     14(a2),4(a7)
[00059652] 3e2a 0010                 move.w     16(a2),d7
[00059656] 3f6a 000a 0012            move.w     10(a2),18(a7)
[0005965c] 3f6a 000c 0010            move.w     12(a2),16(a7)
A_checkbox_17:
[00059662] be7c 0010                 cmp.w      #$0010,d7
[00059666] 6608                      bne.s      A_checkbox_18
[00059668] 0c6f 0010 0004            cmpi.w     #$0010,4(a7)
[0005966e] 671a                      beq.s      A_checkbox_19
A_checkbox_18:
[00059670] 2054                      movea.l    (a4),a0
[00059672] be68 0014                 cmp.w      20(a0),d7
[00059676] 6600 0384                 bne        A_checkbox_20
[0005967a] 302f 0006                 move.w     6(a7),d0
[0005967e] 6f00 037c                 ble        A_checkbox_20
[00059682] be7c 000f                 cmp.w      #$000F,d7
[00059686] 6d00 0374                 blt        A_checkbox_20
A_checkbox_19:
[0005968a] 42b9 0010 75f0            clr.l      act
[00059690] 47f9 000d 4cb8            lea.l      rad,a3
[00059696] 7010                      moveq.l    #16,d0
[00059698] 342a 0004                 move.w     4(a2),d2
[0005969c] 48c2                      ext.l      d2
[0005969e] 2202                      move.l     d2,d1
[000596a0] d281                      add.l      d1,d1
[000596a2] d282                      add.l      d2,d1
[000596a4] e789                      lsl.l      #3,d1
[000596a6] 2052                      movea.l    (a2),a0
[000596a8] c070 1808                 and.w      8(a0,d1.l),d0
[000596ac] 6700 0106                 beq        A_checkbox_21
[000596b0] 2254                      movea.l    (a4),a1
[000596b2] 2069 023c                 movea.l    572(a1),a0
[000596b6] 3628 000e                 move.w     14(a0),d3
[000596ba] c67c 0100                 and.w      #$0100,d3
[000596be] 6608                      bne.s      A_checkbox_22
[000596c0] 7801                      moveq.l    #1,d4
[000596c2] c8aa 001a                 and.l      26(a2),d4
[000596c6] 6648                      bne.s      A_checkbox_23
A_checkbox_22:
[000596c8] 7001                      moveq.l    #1,d0
[000596ca] c06a 0008                 and.w      8(a2),d0
[000596ce] 6720                      beq.s      A_checkbox_24
[000596d0] 7208                      moveq.l    #8,d1
[000596d2] c26a 0008                 and.w      8(a2),d1
[000596d6] 670c                      beq.s      A_checkbox_25
[000596d8] 2f7c 000d 20d0 0008       move.l     #_RD_1D_DS,8(a7)
[000596e0] 6000 01c8                 bra        A_checkbox_26
A_checkbox_25:
[000596e4] 2f7c 000d 219c 0008       move.l     #_RD_1D_S,8(a7)
[000596ec] 6000 01bc                 bra        A_checkbox_26
A_checkbox_24:
[000596f0] 7008                      moveq.l    #8,d0
[000596f2] c06a 0008                 and.w      8(a2),d0
[000596f6] 670c                      beq.s      A_checkbox_27
[000596f8] 2f7c 000d 2136 0008       move.l     #_RD_1D_DU,8(a7)
[00059700] 6000 01a8                 bra        A_checkbox_26
A_checkbox_27:
[00059704] 2f7c 000d 2202 0008       move.l     #_RD_1D_U,8(a7)
[0005970c] 6000 019c                 bra        A_checkbox_26
A_checkbox_23:
[00059710] 7001                      moveq.l    #1,d0
[00059712] c06a 0008                 and.w      8(a2),d0
[00059716] 674c                      beq.s      A_checkbox_28
[00059718] 7208                      moveq.l    #8,d1
[0005971a] c26a 0008                 and.w      8(a2),d1
[0005971e] 6722                      beq.s      A_checkbox_29
[00059720] 2054                      movea.l    (a4),a0
[00059722] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[00059728] 6d0c                      blt.s      A_checkbox_30
[0005972a] 242b ffec                 move.l     -20(a3),d2
[0005972e] 6706                      beq.s      A_checkbox_30
[00059730] 23c2 0010 75f0            move.l     d2,act
A_checkbox_30:
[00059736] 2f7c 000d 2294 0008       move.l     #_RD_3D_DS,8(a7)
[0005973e] 6000 016a                 bra        A_checkbox_26
A_checkbox_29:
[00059742] 2054                      movea.l    (a4),a0
[00059744] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0005974a] 6d0c                      blt.s      A_checkbox_31
[0005974c] 202b ffe4                 move.l     -28(a3),d0
[00059750] 6706                      beq.s      A_checkbox_31
[00059752] 23c0 0010 75f0            move.l     d0,act
A_checkbox_31:
[00059758] 2f7c 000d 23b8 0008       move.l     #_RD_3D_S,8(a7)
[00059760] 6000 0148                 bra        A_checkbox_26
A_checkbox_28:
[00059764] 7008                      moveq.l    #8,d0
[00059766] c06a 0008                 and.w      8(a2),d0
[0005976a] 6724                      beq.s      A_checkbox_32
[0005976c] 2054                      movea.l    (a4),a0
[0005976e] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[00059774] 6d0e                      blt.s      A_checkbox_33
[00059776] 222b ffec                 move.l     -20(a3),d1
[0005977a] 6708                      beq.s      A_checkbox_33
[0005977c] 23eb fff0 0010 75f0       move.l     -16(a3),act
A_checkbox_33:
[00059784] 2f7c 000d 2326 0008       move.l     #_RD_3D_DU,8(a7)
[0005978c] 6000 011c                 bra        A_checkbox_26
A_checkbox_32:
[00059790] 2054                      movea.l    (a4),a0
[00059792] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[00059798] 6d0e                      blt.s      A_checkbox_34
[0005979a] 202b ffe4                 move.l     -28(a3),d0
[0005979e] 6708                      beq.s      A_checkbox_34
[000597a0] 23eb ffe8 0010 75f0       move.l     -24(a3),act
A_checkbox_34:
[000597a8] 2f7c 000d 244a 0008       move.l     #_RD_3D_U,8(a7)
[000597b0] 6000 00f8                 bra        A_checkbox_26
A_checkbox_21:
[000597b4] 2054                      movea.l    (a4),a0
[000597b6] 2268 023c                 movea.l    572(a0),a1
[000597ba] 3029 000e                 move.w     14(a1),d0
[000597be] c07c 0100                 and.w      #$0100,d0
[000597c2] 6608                      bne.s      A_checkbox_35
[000597c4] 7201                      moveq.l    #1,d1
[000597c6] c2aa 001a                 and.l      26(a2),d1
[000597ca] 6648                      bne.s      A_checkbox_36
A_checkbox_35:
[000597cc] 7001                      moveq.l    #1,d0
[000597ce] c06a 0008                 and.w      8(a2),d0
[000597d2] 6720                      beq.s      A_checkbox_37
[000597d4] 7208                      moveq.l    #8,d1
[000597d6] c26a 0008                 and.w      8(a2),d1
[000597da] 670c                      beq.s      A_checkbox_38
[000597dc] 2f7c 000d 0e62 0008       move.l     #_CHK_1D_DS,8(a7)
[000597e4] 6000 00c4                 bra        A_checkbox_26
A_checkbox_38:
[000597e8] 2f7c 000d 0f2e 0008       move.l     #_CHK_1D_S,8(a7)
[000597f0] 6000 00b8                 bra        A_checkbox_26
A_checkbox_37:
[000597f4] 7008                      moveq.l    #8,d0
[000597f6] c06a 0008                 and.w      8(a2),d0
[000597fa] 670c                      beq.s      A_checkbox_39
[000597fc] 2f7c 000d 0ec8 0008       move.l     #_CHK_1D_DU,8(a7)
[00059804] 6000 00a4                 bra        A_checkbox_26
A_checkbox_39:
[00059808] 2f7c 000d 0f94 0008       move.l     #_CHK_1D_U,8(a7)
[00059810] 6000 0098                 bra        A_checkbox_26
A_checkbox_36:
[00059814] 7001                      moveq.l    #1,d0
[00059816] c06a 0008                 and.w      8(a2),d0
[0005981a] 6748                      beq.s      A_checkbox_40
[0005981c] 7208                      moveq.l    #8,d1
[0005981e] c26a 0008                 and.w      8(a2),d1
[00059822] 6720                      beq.s      A_checkbox_41
[00059824] 2054                      movea.l    (a4),a0
[00059826] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0005982c] 6d0c                      blt.s      A_checkbox_42
[0005982e] 242b ffdc                 move.l     -36(a3),d2
[00059832] 6706                      beq.s      A_checkbox_42
[00059834] 23c2 0010 75f0            move.l     d2,act
A_checkbox_42:
[0005983a] 2f7c 000d 1026 0008       move.l     #_CHK_3D_DS,8(a7)
[00059842] 6066                      bra.s      A_checkbox_26
A_checkbox_41:
[00059844] 2054                      movea.l    (a4),a0
[00059846] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0005984c] 6d0c                      blt.s      A_checkbox_43
[0005984e] 202b ffd4                 move.l     -44(a3),d0
[00059852] 6706                      beq.s      A_checkbox_43
[00059854] 23c0 0010 75f0            move.l     d0,act
A_checkbox_43:
[0005985a] 2f7c 000d 114a 0008       move.l     #_CHK_3D_S,8(a7)
[00059862] 6046                      bra.s      A_checkbox_26
A_checkbox_40:
[00059864] 7008                      moveq.l    #8,d0
[00059866] c06a 0008                 and.w      8(a2),d0
[0005986a] 6720                      beq.s      A_checkbox_44
[0005986c] 2054                      movea.l    (a4),a0
[0005986e] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[00059874] 6d0c                      blt.s      A_checkbox_45
[00059876] 222b ffe0                 move.l     -32(a3),d1
[0005987a] 6706                      beq.s      A_checkbox_45
[0005987c] 23c1 0010 75f0            move.l     d1,act
A_checkbox_45:
[00059882] 2f7c 000d 10b8 0008       move.l     #_CHK_3D_DU,8(a7)
[0005988a] 601e                      bra.s      A_checkbox_26
A_checkbox_44:
[0005988c] 2054                      movea.l    (a4),a0
[0005988e] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[00059894] 6d0c                      blt.s      A_checkbox_46
[00059896] 202b ffd8                 move.l     -40(a3),d0
[0005989a] 6706                      beq.s      A_checkbox_46
[0005989c] 23c0 0010 75f0            move.l     d0,act
A_checkbox_46:
[000598a2] 2f7c 000d 11dc 0008       move.l     #_CHK_3D_U,8(a7)
A_checkbox_26:
[000598aa] 426f 001c                 clr.w      28(a7)
[000598ae] 426f 001e                 clr.w      30(a7)
[000598b2] 3f7c 000f 0020            move.w     #$000F,32(a7)
[000598b8] 3f7c 000f 0022            move.w     #$000F,34(a7)
[000598be] 3f6a 000a 0024            move.w     10(a2),36(a7)
[000598c4] 302a 0010                 move.w     16(a2),d0
[000598c8] e240                      asr.w      #1,d0
[000598ca] d06a 000c                 add.w      12(a2),d0
[000598ce] 5140                      subq.w     #8,d0
[000598d0] 3f40 0026                 move.w     d0,38(a7)
[000598d4] 720f                      moveq.l    #15,d1
[000598d6] d26f 0024                 add.w      36(a7),d1
[000598da] 3f41 0028                 move.w     d1,40(a7)
[000598de] 740f                      moveq.l    #15,d2
[000598e0] d46f 0026                 add.w      38(a7),d2
[000598e4] 3f42 002a                 move.w     d2,42(a7)
[000598e8] 206f 0008                 movea.l    8(a7),a0
[000598ec] 2690                      move.l     (a0),(a3)
[000598ee] 4241                      clr.w      d1
[000598f0] 3741 0012                 move.w     d1,18(a3)
[000598f4] 3741 0010                 move.w     d1,16(a3)
[000598f8] 3741 000e                 move.w     d1,14(a3)
[000598fc] 2254                      movea.l    (a4),a1
[000598fe] 0c69 0008 001c            cmpi.w     #$0008,28(a1)
[00059904] 6e20                      bgt.s      A_checkbox_47
[00059906] 486b 0018                 pea.l      24(a3)
[0005990a] 4869 026a                 pea.l      618(a1)
[0005990e] 224b                      movea.l    a3,a1
[00059910] 41ef 0024                 lea.l      36(a7),a0
[00059914] 2a54                      movea.l    (a4),a5
[00059916] 302d 0010                 move.w     16(a5),d0
[0005991a] 7202                      moveq.l    #2,d1
[0005991c] 4eb9 0006 6632            jsr        vrt_cpyfm
[00059922] 504f                      addq.w     #8,a7
[00059924] 6048                      bra.s      A_checkbox_48
A_checkbox_47:
[00059926] 7201                      moveq.l    #1,d1
[00059928] 2054                      movea.l    (a4),a0
[0005992a] 3028 0010                 move.w     16(a0),d0
[0005992e] 4eb9 0006 4da0            jsr        vswr_mode
[00059934] 7201                      moveq.l    #1,d1
[00059936] 2054                      movea.l    (a4),a0
[00059938] 3028 0010                 move.w     16(a0),d0
[0005993c] 4eb9 0006 5390            jsr        vsf_interior
[00059942] 7201                      moveq.l    #1,d1
[00059944] 2054                      movea.l    (a4),a0
[00059946] 3028 0010                 move.w     16(a0),d0
[0005994a] 4eb9 0006 548c            jsr        vsf_perimeter
[00059950] 4241                      clr.w      d1
[00059952] 2054                      movea.l    (a4),a0
[00059954] 3028 0010                 move.w     16(a0),d0
[00059958] 4eb9 0006 5438            jsr        vsf_color
[0005995e] 41ef 0024                 lea.l      36(a7),a0
[00059962] 2254                      movea.l    (a4),a1
[00059964] 3029 0010                 move.w     16(a1),d0
[00059968] 4eb9 0006 455e            jsr        v_bar
A_checkbox_48:
[0005996e] 2039 0010 75f0            move.l     act,d0
[00059974] 670a                      beq.s      A_checkbox_49
[00059976] 2054                      movea.l    (a4),a0
[00059978] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[0005997e] 6f2c                      ble.s      A_checkbox_50
A_checkbox_49:
[00059980] 206f 0008                 movea.l    8(a7),a0
[00059984] 26a8 0004                 move.l     4(a0),(a3)
[00059988] 486b 0014                 pea.l      20(a3)
[0005998c] 2254                      movea.l    (a4),a1
[0005998e] 4869 026a                 pea.l      618(a1)
[00059992] 224b                      movea.l    a3,a1
[00059994] 41ef 0024                 lea.l      36(a7),a0
[00059998] 7202                      moveq.l    #2,d1
[0005999a] 2a54                      movea.l    (a4),a5
[0005999c] 302d 0010                 move.w     16(a5),d0
[000599a0] 4eb9 0006 6632            jsr        vrt_cpyfm
[000599a6] 504f                      addq.w     #8,a7
[000599a8] 6000 05d0                 bra        A_checkbox_51
A_checkbox_50:
[000599ac] 2054                      movea.l    (a4),a0
[000599ae] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[000599b4] 6e22                      bgt.s      A_checkbox_52
[000599b6] 4868 026a                 pea.l      618(a0)
[000599ba] 2279 0010 75f0            movea.l    act,a1
[000599c0] 41ef 0020                 lea.l      32(a7),a0
[000599c4] 7207                      moveq.l    #7,d1
[000599c6] 2654                      movea.l    (a4),a3
[000599c8] 302b 0010                 move.w     16(a3),d0
[000599cc] 4eb9 0006 65ce            jsr        vro_cpyfm
[000599d2] 584f                      addq.w     #4,a7
[000599d4] 6000 05a4                 bra        A_checkbox_51
A_checkbox_52:
[000599d8] 2054                      movea.l    (a4),a0
[000599da] 4868 026a                 pea.l      618(a0)
[000599de] 2279 0010 75f0            movea.l    act,a1
[000599e4] 41ef 0020                 lea.l      32(a7),a0
[000599e8] 7203                      moveq.l    #3,d1
[000599ea] 2654                      movea.l    (a4),a3
[000599ec] 302b 0010                 move.w     16(a3),d0
[000599f0] 4eb9 0006 65ce            jsr        vro_cpyfm
[000599f6] 584f                      addq.w     #4,a7
[000599f8] 6000 0580                 bra        A_checkbox_51
A_checkbox_20:
[000599fc] 47ef 0030                 lea.l      48(a7),a3
[00059a00] 7008                      moveq.l    #8,d0
[00059a02] c06a 0008                 and.w      8(a2),d0
[00059a06] 6700 01f8                 beq        A_checkbox_53
[00059a0a] 7201                      moveq.l    #1,d1
[00059a0c] 2054                      movea.l    (a4),a0
[00059a0e] 3028 0010                 move.w     16(a0),d0
[00059a12] 4eb9 0006 4da0            jsr        vswr_mode
[00059a18] 7202                      moveq.l    #2,d1
[00059a1a] 2054                      movea.l    (a4),a0
[00059a1c] 3028 0010                 move.w     16(a0),d0
[00059a20] 4eb9 0006 5390            jsr        vsf_interior
[00059a26] 7204                      moveq.l    #4,d1
[00059a28] 2054                      movea.l    (a4),a0
[00059a2a] 3028 0010                 move.w     16(a0),d0
[00059a2e] 4eb9 0006 53e4            jsr        vsf_style
[00059a34] 7201                      moveq.l    #1,d1
[00059a36] 2054                      movea.l    (a4),a0
[00059a38] 3028 0010                 move.w     16(a0),d0
[00059a3c] 4eb9 0006 548c            jsr        vsf_perimeter
[00059a42] 7201                      moveq.l    #1,d1
[00059a44] 2054                      movea.l    (a4),a0
[00059a46] 3028 0010                 move.w     16(a0),d0
[00059a4a] 4eb9 0006 5438            jsr        vsf_color
[00059a50] 7010                      moveq.l    #16,d0
[00059a52] 342a 0004                 move.w     4(a2),d2
[00059a56] 48c2                      ext.l      d2
[00059a58] 2202                      move.l     d2,d1
[00059a5a] d281                      add.l      d1,d1
[00059a5c] d282                      add.l      d2,d1
[00059a5e] e789                      lsl.l      #3,d1
[00059a60] 2052                      movea.l    (a2),a0
[00059a62] c070 1808                 and.w      8(a0,d1.l),d0
[00059a66] 6700 0094                 beq        A_checkbox_54
[00059a6a] 78fe                      moveq.l    #-2,d4
[00059a6c] d86f 0004                 add.w      4(a7),d4
[00059a70] e244                      asr.w      #1,d4
[00059a72] b87c 0004                 cmp.w      #$0004,d4
[00059a76] 6c02                      bge.s      A_checkbox_55
[00059a78] 7804                      moveq.l    #4,d4
A_checkbox_55:
[00059a7a] 76fe                      moveq.l    #-2,d3
[00059a7c] d647                      add.w      d7,d3
[00059a7e] e243                      asr.w      #1,d3
[00059a80] b67c 0004                 cmp.w      #$0004,d3
[00059a84] 6c02                      bge.s      A_checkbox_56
[00059a86] 7604                      moveq.l    #4,d3
A_checkbox_56:
[00059a88] 302f 0006                 move.w     6(a7),d0
[00059a8c] 660a                      bne.s      A_checkbox_57
[00059a8e] 322f 0004                 move.w     4(a7),d1
[00059a92] e241                      asr.w      #1,d1
[00059a94] d36f 0012                 add.w      d1,18(a7)
A_checkbox_57:
[00059a98] 3007                      move.w     d7,d0
[00059a9a] e240                      asr.w      #1,d0
[00059a9c] d16f 0010                 add.w      d0,16(a7)
[00059aa0] be7c 0010                 cmp.w      #$0010,d7
[00059aa4] 6608                      bne.s      A_checkbox_58
[00059aa6] 0c6f 0010 0004            cmpi.w     #$0010,4(a7)
[00059aac] 6714                      beq.s      A_checkbox_59
A_checkbox_58:
[00059aae] 2054                      movea.l    (a4),a0
[00059ab0] be68 0014                 cmp.w      20(a0),d7
[00059ab4] 6624                      bne.s      A_checkbox_60
[00059ab6] 302f 0006                 move.w     6(a7),d0
[00059aba] 6f1e                      ble.s      A_checkbox_60
[00059abc] be7c 000f                 cmp.w      #$000F,d7
[00059ac0] 6d18                      blt.s      A_checkbox_60
A_checkbox_59:
[00059ac2] 2054                      movea.l    (a4),a0
[00059ac4] 2268 023c                 movea.l    572(a0),a1
[00059ac8] 3029 000e                 move.w     14(a1),d0
[00059acc] c07c 0100                 and.w      #$0100,d0
[00059ad0] 6608                      bne.s      A_checkbox_60
[00059ad2] 7201                      moveq.l    #1,d1
[00059ad4] c2aa 001a                 and.l      26(a2),d1
[00059ad8] 6604                      bne.s      A_checkbox_61
A_checkbox_60:
[00059ada] 5544                      subq.w     #2,d4
[00059adc] 5543                      subq.w     #2,d3
A_checkbox_61:
[00059ade] 3f03                      move.w     d3,-(a7)
[00059ae0] 3f04                      move.w     d4,-(a7)
[00059ae2] 342f 0014                 move.w     20(a7),d2
[00059ae6] 322f 0016                 move.w     22(a7),d1
[00059aea] 2054                      movea.l    (a4),a0
[00059aec] 3028 0010                 move.w     16(a0),d0
[00059af0] 4eb9 0006 4714            jsr        v_ellipse
[00059af6] 584f                      addq.w     #4,a7
[00059af8] 6000 0480                 bra        A_checkbox_51
A_checkbox_54:
[00059afc] 302f 0006                 move.w     6(a7),d0
[00059b00] 6f5a                      ble.s      A_checkbox_62
[00059b02] 7afe                      moveq.l    #-2,d5
[00059b04] 2054                      movea.l    (a4),a0
[00059b06] da68 0014                 add.w      20(a0),d5
[00059b0a] ba7c 0008                 cmp.w      #$0008,d5
[00059b0e] 6c02                      bge.s      A_checkbox_63
[00059b10] 7a08                      moveq.l    #8,d5
A_checkbox_63:
[00059b12] 2054                      movea.l    (a4),a0
[00059b14] 3c28 0014                 move.w     20(a0),d6
[00059b18] cde8 0004                 muls.w     4(a0),d6
[00059b1c] 48c6                      ext.l      d6
[00059b1e] 8de8 0006                 divs.w     6(a0),d6
[00059b22] 5946                      subq.w     #4,d6
[00059b24] bc7c 0008                 cmp.w      #$0008,d6
[00059b28] 6c02                      bge.s      A_checkbox_64
[00059b2a] 7c08                      moveq.l    #8,d6
A_checkbox_64:
[00059b2c] 7002                      moveq.l    #2,d0
[00059b2e] d06a 000a                 add.w      10(a2),d0
[00059b32] 3680                      move.w     d0,(a3)
[00059b34] 322a 0010                 move.w     16(a2),d1
[00059b38] 2054                      movea.l    (a4),a0
[00059b3a] 9268 0014                 sub.w      20(a0),d1
[00059b3e] e241                      asr.w      #1,d1
[00059b40] d26a 000c                 add.w      12(a2),d1
[00059b44] 3741 0002                 move.w     d1,2(a3)
[00059b48] 3413                      move.w     (a3),d2
[00059b4a] d446                      add.w      d6,d2
[00059b4c] 3742 0004                 move.w     d2,4(a3)
[00059b50] 302b 0002                 move.w     2(a3),d0
[00059b54] d045                      add.w      d5,d0
[00059b56] 3740 0006                 move.w     d0,6(a3)
[00059b5a] 6050                      bra.s      A_checkbox_65
A_checkbox_62:
[00059b5c] 7afe                      moveq.l    #-2,d5
[00059b5e] da6a 0010                 add.w      16(a2),d5
[00059b62] ba7c 0008                 cmp.w      #$0008,d5
[00059b66] 6c02                      bge.s      A_checkbox_66
[00059b68] 7a08                      moveq.l    #8,d5
A_checkbox_66:
[00059b6a] 7cfe                      moveq.l    #-2,d6
[00059b6c] dc6a 000e                 add.w      14(a2),d6
[00059b70] bc7c 0008                 cmp.w      #$0008,d6
[00059b74] 6c02                      bge.s      A_checkbox_67
[00059b76] 7c08                      moveq.l    #8,d6
A_checkbox_67:
[00059b78] 302a 000e                 move.w     14(a2),d0
[00059b7c] 9046                      sub.w      d6,d0
[00059b7e] e240                      asr.w      #1,d0
[00059b80] d06a 000a                 add.w      10(a2),d0
[00059b84] 3680                      move.w     d0,(a3)
[00059b86] 322a 0010                 move.w     16(a2),d1
[00059b8a] 9245                      sub.w      d5,d1
[00059b8c] e241                      asr.w      #1,d1
[00059b8e] d26a 000c                 add.w      12(a2),d1
[00059b92] 3741 0002                 move.w     d1,2(a3)
[00059b96] 3413                      move.w     (a3),d2
[00059b98] d446                      add.w      d6,d2
[00059b9a] 5542                      subq.w     #2,d2
[00059b9c] 3742 0004                 move.w     d2,4(a3)
[00059ba0] 302b 0002                 move.w     2(a3),d0
[00059ba4] d045                      add.w      d5,d0
[00059ba6] 5540                      subq.w     #2,d0
[00059ba8] 3740 0006                 move.w     d0,6(a3)
A_checkbox_65:
[00059bac] be7c 0010                 cmp.w      #$0010,d7
[00059bb0] 6608                      bne.s      A_checkbox_68
[00059bb2] 0c6f 0010 0004            cmpi.w     #$0010,4(a7)
[00059bb8] 6714                      beq.s      A_checkbox_69
A_checkbox_68:
[00059bba] 2054                      movea.l    (a4),a0
[00059bbc] be68 0014                 cmp.w      20(a0),d7
[00059bc0] 662c                      bne.s      A_checkbox_70
[00059bc2] 302f 0006                 move.w     6(a7),d0
[00059bc6] 6f26                      ble.s      A_checkbox_70
[00059bc8] be7c 000f                 cmp.w      #$000F,d7
[00059bcc] 6d20                      blt.s      A_checkbox_70
A_checkbox_69:
[00059bce] 2054                      movea.l    (a4),a0
[00059bd0] 2268 023c                 movea.l    572(a0),a1
[00059bd4] 3029 000e                 move.w     14(a1),d0
[00059bd8] c07c 0100                 and.w      #$0100,d0
[00059bdc] 6610                      bne.s      A_checkbox_70
[00059bde] 7201                      moveq.l    #1,d1
[00059be0] c2aa 001a                 and.l      26(a2),d1
[00059be4] 6708                      beq.s      A_checkbox_70
[00059be6] 546b 0004                 addq.w     #2,4(a3)
[00059bea] 546b 0006                 addq.w     #2,6(a3)
A_checkbox_70:
[00059bee] 204b                      movea.l    a3,a0
[00059bf0] 2254                      movea.l    (a4),a1
[00059bf2] 3029 0010                 move.w     16(a1),d0
[00059bf6] 4eb9 0006 455e            jsr        v_bar
[00059bfc] 6000 037c                 bra        A_checkbox_51
A_checkbox_53:
[00059c00] 7010                      moveq.l    #16,d0
[00059c02] 342a 0004                 move.w     4(a2),d2
[00059c06] 48c2                      ext.l      d2
[00059c08] 2202                      move.l     d2,d1
[00059c0a] d281                      add.l      d1,d1
[00059c0c] d282                      add.l      d2,d1
[00059c0e] e789                      lsl.l      #3,d1
[00059c10] 2052                      movea.l    (a2),a0
[00059c12] c070 1808                 and.w      8(a0,d1.l),d0
[00059c16] 6700 012a                 beq        A_checkbox_71
[00059c1a] 78fc                      moveq.l    #-4,d4
[00059c1c] d86f 0004                 add.w      4(a7),d4
[00059c20] e244                      asr.w      #1,d4
[00059c22] b87c 0004                 cmp.w      #$0004,d4
[00059c26] 6c02                      bge.s      A_checkbox_72
[00059c28] 7804                      moveq.l    #4,d4
A_checkbox_72:
[00059c2a] 76fc                      moveq.l    #-4,d3
[00059c2c] d647                      add.w      d7,d3
[00059c2e] e243                      asr.w      #1,d3
[00059c30] b67c 0004                 cmp.w      #$0004,d3
[00059c34] 6c02                      bge.s      A_checkbox_73
[00059c36] 7604                      moveq.l    #4,d3
A_checkbox_73:
[00059c38] 302f 0006                 move.w     6(a7),d0
[00059c3c] 660a                      bne.s      A_checkbox_74
[00059c3e] 322f 0004                 move.w     4(a7),d1
[00059c42] e241                      asr.w      #1,d1
[00059c44] d36f 0012                 add.w      d1,18(a7)
A_checkbox_74:
[00059c48] 3007                      move.w     d7,d0
[00059c4a] e240                      asr.w      #1,d0
[00059c4c] d16f 0010                 add.w      d0,16(a7)
[00059c50] 322f 000e                 move.w     14(a7),d1
[00059c54] 6708                      beq.s      A_checkbox_75
[00059c56] 7401                      moveq.l    #1,d2
[00059c58] c46a 0008                 and.w      8(a2),d2
[00059c5c] 6672                      bne.s      A_checkbox_76
A_checkbox_75:
[00059c5e] 7201                      moveq.l    #1,d1
[00059c60] 2054                      movea.l    (a4),a0
[00059c62] 3028 0010                 move.w     16(a0),d0
[00059c66] 4eb9 0006 4da0            jsr        vswr_mode
[00059c6c] 4241                      clr.w      d1
[00059c6e] 2054                      movea.l    (a4),a0
[00059c70] 3028 0010                 move.w     16(a0),d0
[00059c74] 4eb9 0006 5390            jsr        vsf_interior
[00059c7a] 7201                      moveq.l    #1,d1
[00059c7c] 2054                      movea.l    (a4),a0
[00059c7e] 3028 0010                 move.w     16(a0),d0
[00059c82] 4eb9 0006 548c            jsr        vsf_perimeter
[00059c88] 7201                      moveq.l    #1,d1
[00059c8a] 2054                      movea.l    (a4),a0
[00059c8c] 3028 0010                 move.w     16(a0),d0
[00059c90] 4eb9 0006 5438            jsr        vsf_color
[00059c96] 2054                      movea.l    (a4),a0
[00059c98] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00059c9e] 6f16                      ble.s      A_checkbox_77
[00059ca0] 7001                      moveq.l    #1,d0
[00059ca2] 4eb9 0004 19b4            jsr        Avdi_getRGB
[00059ca8] 7201                      moveq.l    #1,d1
[00059caa] 2254                      movea.l    (a4),a1
[00059cac] 3029 0010                 move.w     16(a1),d0
[00059cb0] 4eb9 0006 4d2e            jsr        vs_color
A_checkbox_77:
[00059cb6] 3f03                      move.w     d3,-(a7)
[00059cb8] 3f04                      move.w     d4,-(a7)
[00059cba] 342f 0014                 move.w     20(a7),d2
[00059cbe] 322f 0016                 move.w     22(a7),d1
[00059cc2] 2054                      movea.l    (a4),a0
[00059cc4] 3028 0010                 move.w     16(a0),d0
[00059cc8] 4eb9 0006 4714            jsr        v_ellipse
[00059cce] 584f                      addq.w     #4,a7
A_checkbox_76:
[00059cd0] 7001                      moveq.l    #1,d0
[00059cd2] c06a 0008                 and.w      8(a2),d0
[00059cd6] 6700 02a2                 beq        A_checkbox_51
[00059cda] 7203                      moveq.l    #3,d1
[00059cdc] 2054                      movea.l    (a4),a0
[00059cde] 3028 0010                 move.w     16(a0),d0
[00059ce2] 4eb9 0006 4da0            jsr        vswr_mode
[00059ce8] 7201                      moveq.l    #1,d1
[00059cea] 2054                      movea.l    (a4),a0
[00059cec] 3028 0010                 move.w     16(a0),d0
[00059cf0] 4eb9 0006 5390            jsr        vsf_interior
[00059cf6] 4241                      clr.w      d1
[00059cf8] 2054                      movea.l    (a4),a0
[00059cfa] 3028 0010                 move.w     16(a0),d0
[00059cfe] 4eb9 0006 548c            jsr        vsf_perimeter
[00059d04] 70fd                      moveq.l    #-3,d0
[00059d06] d043                      add.w      d3,d0
[00059d08] 5540                      subq.w     #2,d0
[00059d0a] 6f06                      ble.s      A_checkbox_78
[00059d0c] 72fd                      moveq.l    #-3,d1
[00059d0e] d243                      add.w      d3,d1
[00059d10] 6002                      bra.s      A_checkbox_79
A_checkbox_78:
[00059d12] 7202                      moveq.l    #2,d1
A_checkbox_79:
[00059d14] 3f01                      move.w     d1,-(a7)
[00059d16] 70fd                      moveq.l    #-3,d0
[00059d18] d044                      add.w      d4,d0
[00059d1a] 5540                      subq.w     #2,d0
[00059d1c] 6f06                      ble.s      A_checkbox_80
[00059d1e] 72fd                      moveq.l    #-3,d1
[00059d20] d244                      add.w      d4,d1
[00059d22] 6002                      bra.s      A_checkbox_81
A_checkbox_80:
[00059d24] 7202                      moveq.l    #2,d1
A_checkbox_81:
[00059d26] 3f01                      move.w     d1,-(a7)
[00059d28] 342f 0014                 move.w     20(a7),d2
[00059d2c] 322f 0016                 move.w     22(a7),d1
[00059d30] 2054                      movea.l    (a4),a0
[00059d32] 3028 0010                 move.w     16(a0),d0
[00059d36] 4eb9 0006 4714            jsr        v_ellipse
[00059d3c] 584f                      addq.w     #4,a7
[00059d3e] 6000 023a                 bra        A_checkbox_51
A_checkbox_71:
[00059d42] 7201                      moveq.l    #1,d1
[00059d44] 2054                      movea.l    (a4),a0
[00059d46] 3028 0010                 move.w     16(a0),d0
[00059d4a] 4eb9 0006 4df4            jsr        vsl_type
[00059d50] 7201                      moveq.l    #1,d1
[00059d52] 2054                      movea.l    (a4),a0
[00059d54] 3028 0010                 move.w     16(a0),d0
[00059d58] 4eb9 0006 4e9a            jsr        vsl_width
[00059d5e] 7201                      moveq.l    #1,d1
[00059d60] 2054                      movea.l    (a4),a0
[00059d62] 3028 0010                 move.w     16(a0),d0
[00059d66] 4eb9 0006 4ef0            jsr        vsl_color
[00059d6c] 2054                      movea.l    (a4),a0
[00059d6e] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00059d74] 6f16                      ble.s      A_checkbox_82
[00059d76] 7001                      moveq.l    #1,d0
[00059d78] 4eb9 0004 19b4            jsr        Avdi_getRGB
[00059d7e] 7201                      moveq.l    #1,d1
[00059d80] 2254                      movea.l    (a4),a1
[00059d82] 3029 0010                 move.w     16(a1),d0
[00059d86] 4eb9 0006 4d2e            jsr        vs_color
A_checkbox_82:
[00059d8c] 4242                      clr.w      d2
[00059d8e] 4241                      clr.w      d1
[00059d90] 2054                      movea.l    (a4),a0
[00059d92] 3028 0010                 move.w     16(a0),d0
[00059d96] 4eb9 0006 4f44            jsr        vsl_ends
[00059d9c] 302f 0006                 move.w     6(a7),d0
[00059da0] 6f56                      ble.s      A_checkbox_83
[00059da2] 7afc                      moveq.l    #-4,d5
[00059da4] 2054                      movea.l    (a4),a0
[00059da6] da68 0014                 add.w      20(a0),d5
[00059daa] ba7c 0008                 cmp.w      #$0008,d5
[00059dae] 6c02                      bge.s      A_checkbox_84
[00059db0] 7a08                      moveq.l    #8,d5
A_checkbox_84:
[00059db2] 2054                      movea.l    (a4),a0
[00059db4] 3c28 0014                 move.w     20(a0),d6
[00059db8] cde8 0004                 muls.w     4(a0),d6
[00059dbc] 48c6                      ext.l      d6
[00059dbe] 8de8 0006                 divs.w     6(a0),d6
[00059dc2] 5946                      subq.w     #4,d6
[00059dc4] bc7c 0008                 cmp.w      #$0008,d6
[00059dc8] 6c02                      bge.s      A_checkbox_85
[00059dca] 7c08                      moveq.l    #8,d6
A_checkbox_85:
[00059dcc] 7002                      moveq.l    #2,d0
[00059dce] d06a 000a                 add.w      10(a2),d0
[00059dd2] 3680                      move.w     d0,(a3)
[00059dd4] 322a 0010                 move.w     16(a2),d1
[00059dd8] 9245                      sub.w      d5,d1
[00059dda] e241                      asr.w      #1,d1
[00059ddc] d26a 000c                 add.w      12(a2),d1
[00059de0] 3741 0002                 move.w     d1,2(a3)
[00059de4] 3413                      move.w     (a3),d2
[00059de6] d446                      add.w      d6,d2
[00059de8] 3742 0004                 move.w     d2,4(a3)
[00059dec] 362b 0002                 move.w     2(a3),d3
[00059df0] d645                      add.w      d5,d3
[00059df2] 3743 0006                 move.w     d3,6(a3)
[00059df6] 6050                      bra.s      A_checkbox_86
A_checkbox_83:
[00059df8] 7afe                      moveq.l    #-2,d5
[00059dfa] da6a 0010                 add.w      16(a2),d5
[00059dfe] ba7c 0008                 cmp.w      #$0008,d5
[00059e02] 6c02                      bge.s      A_checkbox_87
[00059e04] 7a08                      moveq.l    #8,d5
A_checkbox_87:
[00059e06] 7cfe                      moveq.l    #-2,d6
[00059e08] dc6a 000e                 add.w      14(a2),d6
[00059e0c] bc7c 0008                 cmp.w      #$0008,d6
[00059e10] 6c02                      bge.s      A_checkbox_88
[00059e12] 7c08                      moveq.l    #8,d6
A_checkbox_88:
[00059e14] 302a 000e                 move.w     14(a2),d0
[00059e18] 9046                      sub.w      d6,d0
[00059e1a] e240                      asr.w      #1,d0
[00059e1c] d06a 000a                 add.w      10(a2),d0
[00059e20] 3680                      move.w     d0,(a3)
[00059e22] 322a 0010                 move.w     16(a2),d1
[00059e26] 9245                      sub.w      d5,d1
[00059e28] e241                      asr.w      #1,d1
[00059e2a] d26a 000c                 add.w      12(a2),d1
[00059e2e] 3741 0002                 move.w     d1,2(a3)
[00059e32] 3413                      move.w     (a3),d2
[00059e34] d446                      add.w      d6,d2
[00059e36] 5542                      subq.w     #2,d2
[00059e38] 3742 0004                 move.w     d2,4(a3)
[00059e3c] 362b 0002                 move.w     2(a3),d3
[00059e40] d645                      add.w      d5,d3
[00059e42] 5543                      subq.w     #2,d3
[00059e44] 3743 0006                 move.w     d3,6(a3)
A_checkbox_86:
[00059e48] 302f 000e                 move.w     14(a7),d0
[00059e4c] 6708                      beq.s      A_checkbox_89
[00059e4e] 7201                      moveq.l    #1,d1
[00059e50] c26a 0008                 and.w      8(a2),d1
[00059e54] 6666                      bne.s      A_checkbox_90
A_checkbox_89:
[00059e56] 7201                      moveq.l    #1,d1
[00059e58] 2054                      movea.l    (a4),a0
[00059e5a] 3028 0010                 move.w     16(a0),d0
[00059e5e] 4eb9 0006 4da0            jsr        vswr_mode
[00059e64] 4241                      clr.w      d1
[00059e66] 2054                      movea.l    (a4),a0
[00059e68] 3028 0010                 move.w     16(a0),d0
[00059e6c] 4eb9 0006 5390            jsr        vsf_interior
[00059e72] 7201                      moveq.l    #1,d1
[00059e74] 2054                      movea.l    (a4),a0
[00059e76] 3028 0010                 move.w     16(a0),d0
[00059e7a] 4eb9 0006 548c            jsr        vsf_perimeter
[00059e80] 7201                      moveq.l    #1,d1
[00059e82] 2054                      movea.l    (a4),a0
[00059e84] 3028 0010                 move.w     16(a0),d0
[00059e88] 4eb9 0006 5438            jsr        vsf_color
[00059e8e] 2054                      movea.l    (a4),a0
[00059e90] 0c68 0008 001c            cmpi.w     #$0008,28(a0)
[00059e96] 6f16                      ble.s      A_checkbox_91
[00059e98] 7001                      moveq.l    #1,d0
[00059e9a] 4eb9 0004 19b4            jsr        Avdi_getRGB
[00059ea0] 7201                      moveq.l    #1,d1
[00059ea2] 2254                      movea.l    (a4),a1
[00059ea4] 3029 0010                 move.w     16(a1),d0
[00059ea8] 4eb9 0006 4d2e            jsr        vs_color
A_checkbox_91:
[00059eae] 204b                      movea.l    a3,a0
[00059eb0] 2254                      movea.l    (a4),a1
[00059eb2] 3029 0010                 move.w     16(a1),d0
[00059eb6] 4eb9 0006 455e            jsr        v_bar
A_checkbox_90:
[00059ebc] 7001                      moveq.l    #1,d0
[00059ebe] c06a 0008                 and.w      8(a2),d0
[00059ec2] 6700 00b6                 beq        A_checkbox_51
[00059ec6] 7203                      moveq.l    #3,d1
[00059ec8] 2054                      movea.l    (a4),a0
[00059eca] 3028 0010                 move.w     16(a0),d0
[00059ece] 4eb9 0006 4da0            jsr        vswr_mode
[00059ed4] 7201                      moveq.l    #1,d1
[00059ed6] 2054                      movea.l    (a4),a0
[00059ed8] 3028 0010                 move.w     16(a0),d0
[00059edc] 4eb9 0006 4da0            jsr        vswr_mode
[00059ee2] 204b                      movea.l    a3,a0
[00059ee4] 7202                      moveq.l    #2,d1
[00059ee6] 2254                      movea.l    (a4),a1
[00059ee8] 3029 0010                 move.w     16(a1),d0
[00059eec] 4eb9 0006 4010            jsr        v_pline
[00059ef2] 3f53 000c                 move.w     (a3),12(a7)
[00059ef6] 36ab 0004                 move.w     4(a3),(a3)
[00059efa] 376f 000c 0004            move.w     12(a7),4(a3)
[00059f00] 204b                      movea.l    a3,a0
[00059f02] 7202                      moveq.l    #2,d1
[00059f04] 2254                      movea.l    (a4),a1
[00059f06] 3029 0010                 move.w     16(a1),d0
[00059f0a] 4eb9 0006 4010            jsr        v_pline
[00059f10] 3013                      move.w     (a3),d0
[00059f12] d06b 0004                 add.w      4(a3),d0
[00059f16] 3f40 000c                 move.w     d0,12(a7)
[00059f1a] 7201                      moveq.l    #1,d1
[00059f1c] c240                      and.w      d0,d1
[00059f1e] 670e                      beq.s      A_checkbox_92
[00059f20] e240                      asr.w      #1,d0
[00059f22] 3680                      move.w     d0,(a3)
[00059f24] 7401                      moveq.l    #1,d2
[00059f26] d440                      add.w      d0,d2
[00059f28] 3742 0004                 move.w     d2,4(a3)
[00059f2c] 600c                      bra.s      A_checkbox_93
A_checkbox_92:
[00059f2e] 302f 000c                 move.w     12(a7),d0
[00059f32] e240                      asr.w      #1,d0
[00059f34] 3740 0004                 move.w     d0,4(a3)
[00059f38] 3680                      move.w     d0,(a3)
A_checkbox_93:
[00059f3a] 302b 0002                 move.w     2(a3),d0
[00059f3e] d06b 0006                 add.w      6(a3),d0
[00059f42] 3f40 000c                 move.w     d0,12(a7)
[00059f46] 7201                      moveq.l    #1,d1
[00059f48] c240                      and.w      d0,d1
[00059f4a] 6710                      beq.s      A_checkbox_94
[00059f4c] e240                      asr.w      #1,d0
[00059f4e] 3740 0002                 move.w     d0,2(a3)
[00059f52] 7401                      moveq.l    #1,d2
[00059f54] d440                      add.w      d0,d2
[00059f56] 3742 0006                 move.w     d2,6(a3)
[00059f5a] 600e                      bra.s      A_checkbox_95
A_checkbox_94:
[00059f5c] 302f 000c                 move.w     12(a7),d0
[00059f60] e240                      asr.w      #1,d0
[00059f62] 3740 0006                 move.w     d0,6(a3)
[00059f66] 3740 0002                 move.w     d0,2(a3)
A_checkbox_95:
[00059f6a] 204b                      movea.l    a3,a0
[00059f6c] 7202                      moveq.l    #2,d1
[00059f6e] 2254                      movea.l    (a4),a1
[00059f70] 3029 0010                 move.w     16(a1),d0
[00059f74] 4eb9 0006 4010            jsr        v_pline
A_checkbox_51:
[00059f7a] 41ef 0014                 lea.l      20(a7),a0
[00059f7e] 4241                      clr.w      d1
[00059f80] 2254                      movea.l    (a4),a1
[00059f82] 3029 0010                 move.w     16(a1),d0
[00059f86] 4eb9 0006 3f60            jsr        vs_clip
[00059f8c] 70f6                      moveq.l    #-10,d0
[00059f8e] c06a 0008                 and.w      8(a2),d0
[00059f92] 4fef 0038                 lea.l      56(a7),a7
[00059f96] 4cdf 3cfc                 movem.l    (a7)+,d2-d7/a2-a5
[00059f9a] 4e75                      rts

A_innerframe:
[00059f9c] 48e7 3f3e                 movem.l    d2-d7/a2-a6,-(a7)
[00059fa0] 4fef ffbe                 lea.l      -66(a7),a7
[00059fa4] 246f 0072                 movea.l    114(a7),a2
[00059fa8] 4243                      clr.w      d3
[00059faa] 47ef 003a                 lea.l      58(a7),a3
[00059fae] 49f9 0010 1f12            lea.l      ACSblk,a4
[00059fb4] 302a 0016                 move.w     22(a2),d0
[00059fb8] 6606                      bne.s      A_innerframe_1
[00059fba] 322a 0018                 move.w     24(a2),d1
[00059fbe] 6738                      beq.s      A_innerframe_2
A_innerframe_1:
[00059fc0] 36aa 0012                 move.w     18(a2),(a3)
[00059fc4] 376a 0014 0002            move.w     20(a2),2(a3)
[00059fca] 302a 0012                 move.w     18(a2),d0
[00059fce] d06a 0016                 add.w      22(a2),d0
[00059fd2] 5340                      subq.w     #1,d0
[00059fd4] 3740 0004                 move.w     d0,4(a3)
[00059fd8] 322a 0014                 move.w     20(a2),d1
[00059fdc] d26a 0018                 add.w      24(a2),d1
[00059fe0] 5341                      subq.w     #1,d1
[00059fe2] 3741 0006                 move.w     d1,6(a3)
[00059fe6] 204b                      movea.l    a3,a0
[00059fe8] 2254                      movea.l    (a4),a1
[00059fea] 3029 0010                 move.w     16(a1),d0
[00059fee] 7201                      moveq.l    #1,d1
[00059ff0] 4eb9 0006 3f60            jsr        vs_clip
[00059ff6] 6010                      bra.s      A_innerframe_3
A_innerframe_2:
[00059ff8] 204b                      movea.l    a3,a0
[00059ffa] 4241                      clr.w      d1
[00059ffc] 2254                      movea.l    (a4),a1
[00059ffe] 3029 0010                 move.w     16(a1),d0
[0005a002] 4eb9 0006 3f60            jsr        vs_clip
A_innerframe_3:
[0005a008] 2054                      movea.l    (a4),a0
[0005a00a] 3028 0012                 move.w     18(a0),d0
[0005a00e] e240                      asr.w      #1,d0
[0005a010] d06a 000a                 add.w      10(a2),d0
[0005a014] 3680                      move.w     d0,(a3)
[0005a016] 3228 0014                 move.w     20(a0),d1
[0005a01a] e241                      asr.w      #1,d1
[0005a01c] d26a 000c                 add.w      12(a2),d1
[0005a020] 3741 0002                 move.w     d1,2(a3)
[0005a024] 3413                      move.w     (a3),d2
[0005a026] d46a 000e                 add.w      14(a2),d2
[0005a02a] 5342                      subq.w     #1,d2
[0005a02c] 9468 0012                 sub.w      18(a0),d2
[0005a030] 3742 0004                 move.w     d2,4(a3)
[0005a034] 302b 0002                 move.w     2(a3),d0
[0005a038] d06a 0010                 add.w      16(a2),d0
[0005a03c] 5340                      subq.w     #1,d0
[0005a03e] 9068 0014                 sub.w      20(a0),d0
[0005a042] 3740 0006                 move.w     d0,6(a3)
[0005a046] 43ea 001a                 lea.l      26(a2),a1
[0005a04a] 2e89                      move.l     a1,(a7)
[0005a04c] 382a 0006                 move.w     6(a2),d4
[0005a050] 342a 0008                 move.w     8(a2),d2
[0005a054] b544                      eor.w      d2,d4
[0005a056] 4a44                      tst.w      d4
[0005a058] 6600 0406                 bne        A_innerframe_4
[0005a05c] 3028 0010                 move.w     16(a0),d0
[0005a060] 7201                      moveq.l    #1,d1
[0005a062] 4eb9 0006 4da0            jsr        vswr_mode
[0005a068] 7201                      moveq.l    #1,d1
[0005a06a] 2054                      movea.l    (a4),a0
[0005a06c] 3028 0010                 move.w     16(a0),d0
[0005a070] 4eb9 0006 4df4            jsr        vsl_type
[0005a076] 7201                      moveq.l    #1,d1
[0005a078] 2054                      movea.l    (a4),a0
[0005a07a] 3028 0010                 move.w     16(a0),d0
[0005a07e] 4eb9 0006 4e9a            jsr        vsl_width
[0005a084] 4242                      clr.w      d2
[0005a086] 4241                      clr.w      d1
[0005a088] 2054                      movea.l    (a4),a0
[0005a08a] 3028 0010                 move.w     16(a0),d0
[0005a08e] 4eb9 0006 4f44            jsr        vsl_ends
[0005a094] 4def 0026                 lea.l      38(a7),a6
[0005a098] 70ff                      moveq.l    #-1,d0
[0005a09a] d053                      add.w      (a3),d0
[0005a09c] 3d40 0010                 move.w     d0,16(a6)
[0005a0a0] 3d40 000c                 move.w     d0,12(a6)
[0005a0a4] 3c80                      move.w     d0,(a6)
[0005a0a6] 72ff                      moveq.l    #-1,d1
[0005a0a8] d26b 0002                 add.w      2(a3),d1
[0005a0ac] 3d41 0012                 move.w     d1,18(a6)
[0005a0b0] 3d41 0006                 move.w     d1,6(a6)
[0005a0b4] 3d41 0002                 move.w     d1,2(a6)
[0005a0b8] 7002                      moveq.l    #2,d0
[0005a0ba] d06b 0004                 add.w      4(a3),d0
[0005a0be] 3d40 0008                 move.w     d0,8(a6)
[0005a0c2] 3d40 0004                 move.w     d0,4(a6)
[0005a0c6] 7202                      moveq.l    #2,d1
[0005a0c8] d26b 0006                 add.w      6(a3),d1
[0005a0cc] 3d41 000e                 move.w     d1,14(a6)
[0005a0d0] 3d41 000a                 move.w     d1,10(a6)
[0005a0d4] 2054                      movea.l    (a4),a0
[0005a0d6] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0005a0dc] 6d28                      blt.s      A_innerframe_5
[0005a0de] 2257                      movea.l    (a7),a1
[0005a0e0] 2c11                      move.l     (a1),d6
[0005a0e2] 7010                      moveq.l    #16,d0
[0005a0e4] e0a6                      asr.l      d0,d6
[0005a0e6] cc7c 000f                 and.w      #$000F,d6
[0005a0ea] 3028 0010                 move.w     16(a0),d0
[0005a0ee] 3206                      move.w     d6,d1
[0005a0f0] 4eb9 0006 4ef0            jsr        vsl_color
[0005a0f6] 204e                      movea.l    a6,a0
[0005a0f8] 7205                      moveq.l    #5,d1
[0005a0fa] 2254                      movea.l    (a4),a1
[0005a0fc] 3029 0010                 move.w     16(a1),d0
[0005a100] 4eb9 0006 4010            jsr        v_pline
A_innerframe_5:
[0005a106] 4bef 0014                 lea.l      20(a7),a5
[0005a10a] 4255                      clr.w      (a5)
[0005a10c] 600a                      bra.s      A_innerframe_6
A_innerframe_7:
[0005a10e] 3015                      move.w     (a5),d0
[0005a110] d040                      add.w      d0,d0
[0005a112] 5376 0000                 subq.w     #1,0(a6,d0.w)
[0005a116] 5255                      addq.w     #1,(a5)
A_innerframe_6:
[0005a118] 0c55 000a                 cmpi.w     #$000A,(a5)
[0005a11c] 6df0                      blt.s      A_innerframe_7
[0005a11e] 7c0f                      moveq.l    #15,d6
[0005a120] 2057                      movea.l    (a7),a0
[0005a122] cc68 0002                 and.w      2(a0),d6
[0005a126] 3206                      move.w     d6,d1
[0005a128] 2254                      movea.l    (a4),a1
[0005a12a] 3029 0010                 move.w     16(a1),d0
[0005a12e] 4eb9 0006 4ef0            jsr        vsl_color
[0005a134] 204e                      movea.l    a6,a0
[0005a136] 7205                      moveq.l    #5,d1
[0005a138] 2254                      movea.l    (a4),a1
[0005a13a] 3029 0010                 move.w     16(a1),d0
[0005a13e] 4eb9 0006 4010            jsr        v_pline
[0005a144] 2057                      movea.l    (a7),a0
[0005a146] 2c10                      move.l     (a0),d6
[0005a148] 700c                      moveq.l    #12,d0
[0005a14a] e0a6                      asr.l      d0,d6
[0005a14c] cc7c 000f                 and.w      #$000F,d6
[0005a150] 2a10                      move.l     (a0),d5
[0005a152] 7209                      moveq.l    #9,d1
[0005a154] e2a5                      asr.l      d1,d5
[0005a156] ca7c 0007                 and.w      #$0007,d5
[0005a15a] bc7c 0008                 cmp.w      #$0008,d6
[0005a15e] 6620                      bne.s      A_innerframe_8
[0005a160] ba7c 0007                 cmp.w      #$0007,d5
[0005a164] 661a                      bne.s      A_innerframe_8
[0005a166] 2254                      movea.l    (a4),a1
[0005a168] 0c69 0004 001c            cmpi.w     #$0004,28(a1)
[0005a16e] 6c10                      bge.s      A_innerframe_8
[0005a170] 7a70                      moveq.l    #112,d5
[0005a172] ca69 02b4                 and.w      692(a1),d5
[0005a176] e845                      asr.w      #4,d5
[0005a178] 7c0f                      moveq.l    #15,d6
[0005a17a] cc69 02b4                 and.w      692(a1),d6
[0005a17e] 7601                      moveq.l    #1,d3
A_innerframe_8:
[0005a180] 2054                      movea.l    (a4),a0
[0005a182] 2268 023c                 movea.l    572(a0),a1
[0005a186] 3029 000e                 move.w     14(a1),d0
[0005a18a] c07c 0100                 and.w      #$0100,d0
[0005a18e] 6704                      beq.s      A_innerframe_9
[0005a190] 4246                      clr.w      d6
[0005a192] 3a06                      move.w     d6,d5
A_innerframe_9:
[0005a194] 4a45                      tst.w      d5
[0005a196] 6610                      bne.s      A_innerframe_10
[0005a198] 4241                      clr.w      d1
[0005a19a] 2054                      movea.l    (a4),a0
[0005a19c] 3028 0010                 move.w     16(a0),d0
[0005a1a0] 4eb9 0006 5390            jsr        vsf_interior
[0005a1a6] 6032                      bra.s      A_innerframe_11
A_innerframe_10:
[0005a1a8] ba7c 0007                 cmp.w      #$0007,d5
[0005a1ac] 6610                      bne.s      A_innerframe_12
[0005a1ae] 7201                      moveq.l    #1,d1
[0005a1b0] 2054                      movea.l    (a4),a0
[0005a1b2] 3028 0010                 move.w     16(a0),d0
[0005a1b6] 4eb9 0006 5390            jsr        vsf_interior
[0005a1bc] 601c                      bra.s      A_innerframe_11
A_innerframe_12:
[0005a1be] 7202                      moveq.l    #2,d1
[0005a1c0] 2054                      movea.l    (a4),a0
[0005a1c2] 3028 0010                 move.w     16(a0),d0
[0005a1c6] 4eb9 0006 5390            jsr        vsf_interior
[0005a1cc] 3205                      move.w     d5,d1
[0005a1ce] 2054                      movea.l    (a4),a0
[0005a1d0] 3028 0010                 move.w     16(a0),d0
[0005a1d4] 4eb9 0006 53e4            jsr        vsf_style
A_innerframe_11:
[0005a1da] 3206                      move.w     d6,d1
[0005a1dc] 2054                      movea.l    (a4),a0
[0005a1de] 3028 0010                 move.w     16(a0),d0
[0005a1e2] 4eb9 0006 5438            jsr        vsf_color
[0005a1e8] 4241                      clr.w      d1
[0005a1ea] 2054                      movea.l    (a4),a0
[0005a1ec] 3028 0010                 move.w     16(a0),d0
[0005a1f0] 4eb9 0006 548c            jsr        vsf_perimeter
[0005a1f6] 204b                      movea.l    a3,a0
[0005a1f8] 2254                      movea.l    (a4),a1
[0005a1fa] 3029 0010                 move.w     16(a1),d0
[0005a1fe] 4eb9 0006 455e            jsr        v_bar
[0005a204] 322a 0004                 move.w     4(a2),d1
[0005a208] 48c1                      ext.l      d1
[0005a20a] 2001                      move.l     d1,d0
[0005a20c] d080                      add.l      d0,d0
[0005a20e] d081                      add.l      d1,d0
[0005a210] e788                      lsl.l      #3,d0
[0005a212] 2c52                      movea.l    (a2),a6
[0005a214] ddc0                      adda.l     d0,a6
[0005a216] 2f6e 000c 000c            move.l     12(a6),12(a7)
[0005a21c] 206f 000c                 movea.l    12(a7),a0
[0005a220] 2f68 000c 0004            move.l     12(a0),4(a7)
[0005a226] 242f 0004                 move.l     4(a7),d2
[0005a22a] 6700 0234                 beq        A_innerframe_4
[0005a22e] 2042                      movea.l    d2,a0
[0005a230] 4eb9 0007 69b0            jsr        strlen
[0005a236] 4a40                      tst.w      d0
[0005a238] 6f00 0226                 ble        A_innerframe_4
[0005a23c] 41ee 0018                 lea.l      24(a6),a0
[0005a240] 2f48 0008                 move.l     a0,8(a7)
[0005a244] 7020                      moveq.l    #32,d0
[0005a246] c06e 0008                 and.w      8(a6),d0
[0005a24a] 6610                      bne.s      A_innerframe_13
[0005a24c] 3228 0008                 move.w     8(a0),d1
[0005a250] c27c 8000                 and.w      #$8000,d1
[0005a254] 6706                      beq.s      A_innerframe_13
[0005a256] 3a28 000a                 move.w     10(a0),d5
[0005a25a] 6002                      bra.s      A_innerframe_14
A_innerframe_13:
[0005a25c] 4245                      clr.w      d5
A_innerframe_14:
[0005a25e] 4241                      clr.w      d1
[0005a260] 2054                      movea.l    (a4),a0
[0005a262] 3028 0010                 move.w     16(a0),d0
[0005a266] 4eb9 0006 51c2            jsr        vst_rotation
[0005a26c] 4241                      clr.w      d1
[0005a26e] 2054                      movea.l    (a4),a0
[0005a270] 3028 0010                 move.w     16(a0),d0
[0005a274] 4eb9 0006 52be            jsr        vst_effects
[0005a27a] 2057                      movea.l    (a7),a0
[0005a27c] 2c10                      move.l     (a0),d6
[0005a27e] e886                      asr.l      #4,d6
[0005a280] cc7c 000f                 and.w      #$000F,d6
[0005a284] 3206                      move.w     d6,d1
[0005a286] 2254                      movea.l    (a4),a1
[0005a288] 3029 0010                 move.w     16(a1),d0
[0005a28c] 4eb9 0006 526a            jsr        vst_color
[0005a292] 224d                      movea.l    a5,a1
[0005a294] 204d                      movea.l    a5,a0
[0005a296] 7405                      moveq.l    #5,d2
[0005a298] 4241                      clr.w      d1
[0005a29a] 2c54                      movea.l    (a4),a6
[0005a29c] 302e 0010                 move.w     16(a6),d0
[0005a2a0] 4eb9 0006 5312            jsr        vst_alignment
[0005a2a6] 4def 0010                 lea.l      16(a7),a6
[0005a2aa] 2057                      movea.l    (a7),a0
[0005a2ac] 2010                      move.l     (a0),d0
[0005a2ae] c0bc 0800 0000            and.l      #$08000000,d0
[0005a2b4] 673e                      beq.s      A_innerframe_15
[0005a2b6] 2254                      movea.l    (a4),a1
[0005a2b8] 3229 0294                 move.w     660(a1),d1
[0005a2bc] 3029 0010                 move.w     16(a1),d0
[0005a2c0] 4eb9 0006 5216            jsr        vst_font
[0005a2c6] 486f 0012                 pea.l      18(a7)
[0005a2ca] 4856                      pea.l      (a6)
[0005a2cc] 224d                      movea.l    a5,a1
[0005a2ce] 204d                      movea.l    a5,a0
[0005a2d0] 2f09                      move.l     a1,-(a7)
[0005a2d2] 2254                      movea.l    (a4),a1
[0005a2d4] 3229 0296                 move.w     662(a1),d1
[0005a2d8] 3029 0010                 move.w     16(a1),d0
[0005a2dc] 225f                      movea.l    (a7)+,a1
[0005a2de] 4eb9 0006 50a0            jsr        vst_height
[0005a2e4] 504f                      addq.w     #8,a7
[0005a2e6] 2054                      movea.l    (a4),a0
[0005a2e8] 3c28 0014                 move.w     20(a0),d6
[0005a2ec] 9c6f 0012                 sub.w      18(a7),d6
[0005a2f0] e246                      asr.w      #1,d6
[0005a2f2] 6032                      bra.s      A_innerframe_16
A_innerframe_15:
[0005a2f4] 2054                      movea.l    (a4),a0
[0005a2f6] 3228 0290                 move.w     656(a0),d1
[0005a2fa] 3028 0010                 move.w     16(a0),d0
[0005a2fe] 4eb9 0006 5216            jsr        vst_font
[0005a304] 4246                      clr.w      d6
[0005a306] 486f 0012                 pea.l      18(a7)
[0005a30a] 4856                      pea.l      (a6)
[0005a30c] 224d                      movea.l    a5,a1
[0005a30e] 204d                      movea.l    a5,a0
[0005a310] 2f09                      move.l     a1,-(a7)
[0005a312] 2254                      movea.l    (a4),a1
[0005a314] 3229 0292                 move.w     658(a1),d1
[0005a318] 3029 0010                 move.w     16(a1),d0
[0005a31c] 225f                      movea.l    (a7)+,a1
[0005a31e] 4eb9 0006 50a0            jsr        vst_height
[0005a324] 504f                      addq.w     #8,a7
A_innerframe_16:
[0005a326] 4bef 0016                 lea.l      22(a7),a5
[0005a32a] 224d                      movea.l    a5,a1
[0005a32c] 206f 0004                 movea.l    4(a7),a0
[0005a330] 2f09                      move.l     a1,-(a7)
[0005a332] 2254                      movea.l    (a4),a1
[0005a334] 3029 0010                 move.w     16(a1),d0
[0005a338] 225f                      movea.l    (a7)+,a1
[0005a33a] 4eb9 0006 732e            jsr        vqt_extent
[0005a340] 302d 0004                 move.w     4(a5),d0
[0005a344] 9055                      sub.w      (a5),d0
[0005a346] 5240                      addq.w     #1,d0
[0005a348] 3c80                      move.w     d0,(a6)
[0005a34a] 2057                      movea.l    (a7),a0
[0005a34c] 2210                      move.l     (a0),d1
[0005a34e] 7418                      moveq.l    #24,d2
[0005a350] e4a1                      asr.l      d2,d1
[0005a352] c27c 0007                 and.w      #$0007,d1
[0005a356] b27c 0006                 cmp.w      #$0006,d1
[0005a35a] 6274                      bhi.s      A_innerframe_17
[0005a35c] d241                      add.w      d1,d1
[0005a35e] 323b 1006                 move.w     $0005A366(pc,d1.w),d1
[0005a362] 4efb 1002                 jmp        $0005A366(pc,d1.w)
J47:
[0005a366] 006a                      dc.w $006a   ; A_innerframe_17-J47
[0005a368] 000e                      dc.w $000e   ; A_innerframe_18-J47
[0005a36a] 001c                      dc.w $001c   ; A_innerframe_19-J47
[0005a36c] 006a                      dc.w $006a   ; A_innerframe_17-J47
[0005a36e] 002e                      dc.w $002e   ; A_innerframe_20-J47
[0005a370] 003a                      dc.w $003a   ; A_innerframe_21-J47
[0005a372] 0048                      dc.w $0048   ; A_innerframe_22-J47
A_innerframe_18:
[0005a374] 3e2a 000e                 move.w     14(a2),d7
[0005a378] 9e56                      sub.w      (a6),d7
[0005a37a] e247                      asr.w      #1,d7
[0005a37c] de6a 000a                 add.w      10(a2),d7
[0005a380] 6058                      bra.s      A_innerframe_23
A_innerframe_19:
[0005a382] 3e2a 000a                 move.w     10(a2),d7
[0005a386] de6a 000e                 add.w      14(a2),d7
[0005a38a] 9e56                      sub.w      (a6),d7
[0005a38c] 2054                      movea.l    (a4),a0
[0005a38e] 9e68 0012                 sub.w      18(a0),d7
[0005a392] 6046                      bra.s      A_innerframe_23
A_innerframe_20:
[0005a394] 3e2a 000a                 move.w     10(a2),d7
[0005a398] 2054                      movea.l    (a4),a0
[0005a39a] de68 0012                 add.w      18(a0),d7
[0005a39e] 601e                      bra.s      A_innerframe_24
A_innerframe_21:
[0005a3a0] 3e2a 000e                 move.w     14(a2),d7
[0005a3a4] 9e56                      sub.w      (a6),d7
[0005a3a6] e247                      asr.w      #1,d7
[0005a3a8] de6a 000a                 add.w      10(a2),d7
[0005a3ac] 6010                      bra.s      A_innerframe_24
A_innerframe_22:
[0005a3ae] 3e2a 000a                 move.w     10(a2),d7
[0005a3b2] de6a 000e                 add.w      14(a2),d7
[0005a3b6] 9e56                      sub.w      (a6),d7
[0005a3b8] 2054                      movea.l    (a4),a0
[0005a3ba] 9e68 0012                 sub.w      18(a0),d7
A_innerframe_24:
[0005a3be] 302a 000c                 move.w     12(a2),d0
[0005a3c2] d06a 0010                 add.w      16(a2),d0
[0005a3c6] 2054                      movea.l    (a4),a0
[0005a3c8] 9068 0014                 sub.w      20(a0),d0
[0005a3cc] dc40                      add.w      d0,d6
[0005a3ce] 600e                      bra.s      A_innerframe_25
A_innerframe_17:
[0005a3d0] 3e2a 000a                 move.w     10(a2),d7
[0005a3d4] 2054                      movea.l    (a4),a0
[0005a3d6] de68 0012                 add.w      18(a0),d7
A_innerframe_23:
[0005a3da] dc6a 000c                 add.w      12(a2),d6
A_innerframe_25:
[0005a3de] 3007                      move.w     d7,d0
[0005a3e0] d06d 0008                 add.w      8(a5),d0
[0005a3e4] 9055                      sub.w      (a5),d0
[0005a3e6] 3b40 0004                 move.w     d0,4(a5)
[0005a3ea] 3206                      move.w     d6,d1
[0005a3ec] d26d 000a                 add.w      10(a5),d1
[0005a3f0] d26d 0002                 add.w      2(a5),d1
[0005a3f4] 5341                      subq.w     #1,d1
[0005a3f6] 3b41 0006                 move.w     d1,6(a5)
[0005a3fa] 70fe                      moveq.l    #-2,d0
[0005a3fc] d047                      add.w      d7,d0
[0005a3fe] 3a80                      move.w     d0,(a5)
[0005a400] 3b46 0002                 move.w     d6,2(a5)
[0005a404] 204d                      movea.l    a5,a0
[0005a406] 2254                      movea.l    (a4),a1
[0005a408] 3029 0010                 move.w     16(a1),d0
[0005a40c] 4eb9 0006 455e            jsr        v_bar
[0005a412] 2057                      movea.l    (a7),a0
[0005a414] 2010                      move.l     (a0),d0
[0005a416] 721c                      moveq.l    #28,d1
[0005a418] e2a0                      asr.l      d1,d0
[0005a41a] c0bc 0000 0001            and.l      #$00000001,d0
[0005a420] 671e                      beq.s      A_innerframe_26
[0005a422] 4a43                      tst.w      d3
[0005a424] 671a                      beq.s      A_innerframe_26
[0005a426] 343c 0080                 move.w     #$0080,d2
[0005a42a] 2254                      movea.l    (a4),a1
[0005a42c] c469 02b4                 and.w      692(a1),d2
[0005a430] 670e                      beq.s      A_innerframe_26
[0005a432] 3029 0010                 move.w     16(a1),d0
[0005a436] 7201                      moveq.l    #1,d1
[0005a438] 4eb9 0006 4da0            jsr        vswr_mode
[0005a43e] 600e                      bra.s      A_innerframe_27
A_innerframe_26:
[0005a440] 7202                      moveq.l    #2,d1
[0005a442] 2054                      movea.l    (a4),a0
[0005a444] 3028 0010                 move.w     16(a0),d0
[0005a448] 4eb9 0006 4da0            jsr        vswr_mode
A_innerframe_27:
[0005a44e] 4267                      clr.w      -(a7)
[0005a450] 3405                      move.w     d5,d2
[0005a452] 206f 0006                 movea.l    6(a7),a0
[0005a456] 3206                      move.w     d6,d1
[0005a458] 3007                      move.w     d7,d0
[0005a45a] 6100 eb6e                 bsr        g_string
[0005a45e] 544f                      addq.w     #2,a7
A_innerframe_4:
[0005a460] 7001                      moveq.l    #1,d0
[0005a462] c044                      and.w      d4,d0
[0005a464] 6608                      bne.s      A_innerframe_28
[0005a466] 7201                      moveq.l    #1,d1
[0005a468] c26a 0008                 and.w      8(a2),d1
[0005a46c] 6754                      beq.s      A_innerframe_29
A_innerframe_28:
[0005a46e] 5253                      addq.w     #1,(a3)
[0005a470] 526b 0002                 addq.w     #1,2(a3)
[0005a474] 536b 0004                 subq.w     #1,4(a3)
[0005a478] 536b 0006                 subq.w     #1,6(a3)
[0005a47c] 7203                      moveq.l    #3,d1
[0005a47e] 2054                      movea.l    (a4),a0
[0005a480] 3028 0010                 move.w     16(a0),d0
[0005a484] 4eb9 0006 4da0            jsr        vswr_mode
[0005a48a] 7201                      moveq.l    #1,d1
[0005a48c] 2054                      movea.l    (a4),a0
[0005a48e] 3028 0010                 move.w     16(a0),d0
[0005a492] 4eb9 0006 5390            jsr        vsf_interior
[0005a498] 7201                      moveq.l    #1,d1
[0005a49a] 2054                      movea.l    (a4),a0
[0005a49c] 3028 0010                 move.w     16(a0),d0
[0005a4a0] 4eb9 0006 5438            jsr        vsf_color
[0005a4a6] 4241                      clr.w      d1
[0005a4a8] 2054                      movea.l    (a4),a0
[0005a4aa] 3028 0010                 move.w     16(a0),d0
[0005a4ae] 4eb9 0006 548c            jsr        vsf_perimeter
[0005a4b4] 204b                      movea.l    a3,a0
[0005a4b6] 2254                      movea.l    (a4),a1
[0005a4b8] 3029 0010                 move.w     16(a1),d0
[0005a4bc] 4eb9 0006 455e            jsr        v_bar
A_innerframe_29:
[0005a4c2] 204b                      movea.l    a3,a0
[0005a4c4] 4241                      clr.w      d1
[0005a4c6] 2254                      movea.l    (a4),a1
[0005a4c8] 3029 0010                 move.w     16(a1),d0
[0005a4cc] 4eb9 0006 3f60            jsr        vs_clip
[0005a4d2] 70f6                      moveq.l    #-10,d0
[0005a4d4] c06a 0008                 and.w      8(a2),d0
[0005a4d8] 4fef 0042                 lea.l      66(a7),a7
[0005a4dc] 4cdf 7cfc                 movem.l    (a7)+,d2-d7/a2-a6
[0005a4e0] 4e75                      rts

A_3Dbutton:
[0005a4e2] 48e7 3f3e                 movem.l    d2-d7/a2-a6,-(a7)
[0005a4e6] 4fef ffb8                 lea.l      -72(a7),a7
[0005a4ea] 246f 0078                 movea.l    120(a7),a2
[0005a4ee] 47ef 003c                 lea.l      60(a7),a3
[0005a4f2] 49f9 0010 1f12            lea.l      ACSblk,a4
[0005a4f8] 302a 0016                 move.w     22(a2),d0
[0005a4fc] 6606                      bne.s      A_3Dbutton_1
[0005a4fe] 322a 0018                 move.w     24(a2),d1
[0005a502] 674c                      beq.s      A_3Dbutton_2
A_3Dbutton_1:
[0005a504] 36aa 0012                 move.w     18(a2),(a3)
[0005a508] 376a 0014 0002            move.w     20(a2),2(a3)
[0005a50e] 302a 0016                 move.w     22(a2),d0
[0005a512] 670a                      beq.s      A_3Dbutton_3
[0005a514] 322a 0012                 move.w     18(a2),d1
[0005a518] d240                      add.w      d0,d1
[0005a51a] 5341                      subq.w     #1,d1
[0005a51c] 6004                      bra.s      A_3Dbutton_4
A_3Dbutton_3:
[0005a51e] 322a 0012                 move.w     18(a2),d1
A_3Dbutton_4:
[0005a522] 3741 0004                 move.w     d1,4(a3)
[0005a526] 302a 0018                 move.w     24(a2),d0
[0005a52a] 670a                      beq.s      A_3Dbutton_5
[0005a52c] 322a 0014                 move.w     20(a2),d1
[0005a530] d240                      add.w      d0,d1
[0005a532] 5341                      subq.w     #1,d1
[0005a534] 6004                      bra.s      A_3Dbutton_6
A_3Dbutton_5:
[0005a536] 322a 0014                 move.w     20(a2),d1
A_3Dbutton_6:
[0005a53a] 3741 0006                 move.w     d1,6(a3)
[0005a53e] 204b                      movea.l    a3,a0
[0005a540] 2254                      movea.l    (a4),a1
[0005a542] 3029 0010                 move.w     16(a1),d0
[0005a546] 7201                      moveq.l    #1,d1
[0005a548] 4eb9 0006 3f60            jsr        vs_clip
[0005a54e] 6010                      bra.s      A_3Dbutton_7
A_3Dbutton_2:
[0005a550] 204b                      movea.l    a3,a0
[0005a552] 4241                      clr.w      d1
[0005a554] 2254                      movea.l    (a4),a1
[0005a556] 3029 0010                 move.w     16(a1),d0
[0005a55a] 4eb9 0006 3f60            jsr        vs_clip
A_3Dbutton_7:
[0005a560] 322a 0004                 move.w     4(a2),d1
[0005a564] 48c1                      ext.l      d1
[0005a566] 2001                      move.l     d1,d0
[0005a568] d080                      add.l      d0,d0
[0005a56a] d081                      add.l      d1,d0
[0005a56c] e788                      lsl.l      #3,d0
[0005a56e] 2052                      movea.l    (a2),a0
[0005a570] d1c0                      adda.l     d0,a0
[0005a572] 2f48 0004                 move.l     a0,4(a7)
[0005a576] 41e8 0018                 lea.l      24(a0),a0
[0005a57a] 7420                      moveq.l    #32,d2
[0005a57c] 226f 0004                 movea.l    4(a7),a1
[0005a580] c469 0008                 and.w      8(a1),d2
[0005a584] 6612                      bne.s      A_3Dbutton_8
[0005a586] 3028 0008                 move.w     8(a0),d0
[0005a58a] c07c 8000                 and.w      #$8000,d0
[0005a58e] 6708                      beq.s      A_3Dbutton_8
[0005a590] 3f68 000a 0010            move.w     10(a0),16(a7)
[0005a596] 6004                      bra.s      A_3Dbutton_9
A_3Dbutton_8:
[0005a598] 426f 0010                 clr.w      16(a7)
A_3Dbutton_9:
[0005a59c] 206f 0004                 movea.l    4(a7),a0
[0005a5a0] 2068 000c                 movea.l    12(a0),a0
[0005a5a4] 2ea8 000c                 move.l     12(a0),(a7)
[0005a5a8] 6604                      bne.s      A_3Dbutton_10
[0005a5aa] 4244                      clr.w      d4
[0005a5ac] 600a                      bra.s      A_3Dbutton_11
A_3Dbutton_10:
[0005a5ae] 2057                      movea.l    (a7),a0
[0005a5b0] 4eb9 0007 69b0            jsr        strlen
[0005a5b6] 2800                      move.l     d0,d4
A_3Dbutton_11:
[0005a5b8] 2f6a 001a 0044            move.l     26(a2),68(a7)
[0005a5be] 202f 0044                 move.l     68(a7),d0
[0005a5c2] 7214                      moveq.l    #20,d1
[0005a5c4] e2a0                      asr.l      d1,d0
[0005a5c6] c07c 000f                 and.w      #$000F,d0
[0005a5ca] b07c 0007                 cmp.w      #$0007,d0
[0005a5ce] 6f04                      ble.s      A_3Dbutton_12
[0005a5d0] d07c fff0                 add.w      #$FFF0,d0
A_3Dbutton_12:
[0005a5d4] 322f 0044                 move.w     68(a7),d1
[0005a5d8] e149                      lsl.w      #8,d1
[0005a5da] e041                      asr.w      #8,d1
[0005a5dc] c27c 000f                 and.w      #$000F,d1
[0005a5e0] 3f41 000e                 move.w     d1,14(a7)
[0005a5e4] 4a41                      tst.w      d1
[0005a5e6] 6f10                      ble.s      A_3Dbutton_13
[0005a5e8] 7402                      moveq.l    #2,d2
[0005a5ea] 206f 0004                 movea.l    4(a7),a0
[0005a5ee] c468 0008                 and.w      8(a0),d2
[0005a5f2] 6704                      beq.s      A_3Dbutton_13
[0005a5f4] 526f 000e                 addq.w     #1,14(a7)
A_3Dbutton_13:
[0005a5f8] 720f                      moveq.l    #15,d1
[0005a5fa] c26f 0046                 and.w      70(a7),d1
[0005a5fe] 5141                      subq.w     #8,d1
[0005a600] 661c                      bne.s      A_3Dbutton_14
[0005a602] 342f 0046                 move.w     70(a7),d2
[0005a606] e84a                      lsr.w      #4,d2
[0005a608] c47c 0007                 and.w      #$0007,d2
[0005a60c] 5f42                      subq.w     #7,d2
[0005a60e] 660e                      bne.s      A_3Dbutton_14
[0005a610] 2054                      movea.l    (a4),a0
[0005a612] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0005a618] 6c04                      bge.s      A_3Dbutton_14
[0005a61a] 7201                      moveq.l    #1,d1
[0005a61c] 6002                      bra.s      A_3Dbutton_15
A_3Dbutton_14:
[0005a61e] 4241                      clr.w      d1
A_3Dbutton_15:
[0005a620] 3f41 000a                 move.w     d1,10(a7)
[0005a624] 2054                      movea.l    (a4),a0
[0005a626] 3c28 02b4                 move.w     692(a0),d6
[0005a62a] 2268 023c                 movea.l    572(a0),a1
[0005a62e] 3e29 000e                 move.w     14(a1),d7
[0005a632] ce7c 0100                 and.w      #$0100,d7
[0005a636] 4a47                      tst.w      d7
[0005a638] 6718                      beq.s      A_3Dbutton_16
[0005a63a] 0c6f 0001 000e            cmpi.w     #$0001,14(a7)
[0005a640] 6f10                      ble.s      A_3Dbutton_16
[0005a642] 7444                      moveq.l    #68,d2
[0005a644] 206f 0004                 movea.l    4(a7),a0
[0005a648] c468 0008                 and.w      8(a0),d2
[0005a64c] 6604                      bne.s      A_3Dbutton_16
[0005a64e] 7201                      moveq.l    #1,d1
[0005a650] 6002                      bra.s      A_3Dbutton_17
A_3Dbutton_16:
[0005a652] 4241                      clr.w      d1
A_3Dbutton_17:
[0005a654] 3f41 0008                 move.w     d1,8(a7)
[0005a658] 4a41                      tst.w      d1
[0005a65a] 6706                      beq.s      A_3Dbutton_18
[0005a65c] 5540                      subq.w     #2,d0
[0005a65e] 546f 000e                 addq.w     #2,14(a7)
A_3Dbutton_18:
[0005a662] 322a 000a                 move.w     10(a2),d1
[0005a666] 9240                      sub.w      d0,d1
[0005a668] 3681                      move.w     d1,(a3)
[0005a66a] 342a 000c                 move.w     12(a2),d2
[0005a66e] 9440                      sub.w      d0,d2
[0005a670] 3742 0002                 move.w     d2,2(a3)
[0005a674] 322a 000a                 move.w     10(a2),d1
[0005a678] d26a 000e                 add.w      14(a2),d1
[0005a67c] d240                      add.w      d0,d1
[0005a67e] 5341                      subq.w     #1,d1
[0005a680] 3741 0004                 move.w     d1,4(a3)
[0005a684] 342a 000c                 move.w     12(a2),d2
[0005a688] d46a 0010                 add.w      16(a2),d2
[0005a68c] d440                      add.w      d0,d2
[0005a68e] 5342                      subq.w     #1,d2
[0005a690] 3742 0006                 move.w     d2,6(a3)
[0005a694] 302b 0004                 move.w     4(a3),d0
[0005a698] b053                      cmp.w      (a3),d0
[0005a69a] 6c04                      bge.s      A_3Dbutton_19
[0005a69c] 3753 0004                 move.w     (a3),4(a3)
A_3Dbutton_19:
[0005a6a0] 302b 0006                 move.w     6(a3),d0
[0005a6a4] b06b 0002                 cmp.w      2(a3),d0
[0005a6a8] 6c06                      bge.s      A_3Dbutton_20
[0005a6aa] 376b 0002 0006            move.w     2(a3),6(a3)
A_3Dbutton_20:
[0005a6b0] 302a 0008                 move.w     8(a2),d0
[0005a6b4] 322a 0006                 move.w     6(a2),d1
[0005a6b8] b340                      eor.w      d1,d0
[0005a6ba] 3f40 0012                 move.w     d0,18(a7)
[0005a6be] 4a40                      tst.w      d0
[0005a6c0] 6600 024a                 bne        A_3Dbutton_21
[0005a6c4] 242f 0044                 move.l     68(a7),d2
[0005a6c8] c4bc 8000 0000            and.l      #$80000000,d2
[0005a6ce] 6600 00a8                 bne        A_3Dbutton_22
[0005a6d2] 2054                      movea.l    (a4),a0
[0005a6d4] 3028 0010                 move.w     16(a0),d0
[0005a6d8] 7201                      moveq.l    #1,d1
[0005a6da] 4eb9 0006 4da0            jsr        vswr_mode
[0005a6e0] 302f 000a                 move.w     10(a7),d0
[0005a6e4] 670c                      beq.s      A_3Dbutton_23
[0005a6e6] 7670                      moveq.l    #112,d3
[0005a6e8] c646                      and.w      d6,d3
[0005a6ea] e843                      asr.w      #4,d3
[0005a6ec] 7a0f                      moveq.l    #15,d5
[0005a6ee] ca46                      and.w      d6,d5
[0005a6f0] 6010                      bra.s      A_3Dbutton_24
A_3Dbutton_23:
[0005a6f2] 362f 0046                 move.w     70(a7),d3
[0005a6f6] e84b                      lsr.w      #4,d3
[0005a6f8] c67c 0007                 and.w      #$0007,d3
[0005a6fc] 7a0f                      moveq.l    #15,d5
[0005a6fe] ca6f 0046                 and.w      70(a7),d5
A_3Dbutton_24:
[0005a702] 4a47                      tst.w      d7
[0005a704] 6702                      beq.s      A_3Dbutton_25
[0005a706] 4243                      clr.w      d3
A_3Dbutton_25:
[0005a708] 4a43                      tst.w      d3
[0005a70a] 6610                      bne.s      A_3Dbutton_26
[0005a70c] 4241                      clr.w      d1
[0005a70e] 2054                      movea.l    (a4),a0
[0005a710] 3028 0010                 move.w     16(a0),d0
[0005a714] 4eb9 0006 5390            jsr        vsf_interior
[0005a71a] 6032                      bra.s      A_3Dbutton_27
A_3Dbutton_26:
[0005a71c] b67c 0007                 cmp.w      #$0007,d3
[0005a720] 6610                      bne.s      A_3Dbutton_28
[0005a722] 7201                      moveq.l    #1,d1
[0005a724] 2054                      movea.l    (a4),a0
[0005a726] 3028 0010                 move.w     16(a0),d0
[0005a72a] 4eb9 0006 5390            jsr        vsf_interior
[0005a730] 601c                      bra.s      A_3Dbutton_27
A_3Dbutton_28:
[0005a732] 7202                      moveq.l    #2,d1
[0005a734] 2054                      movea.l    (a4),a0
[0005a736] 3028 0010                 move.w     16(a0),d0
[0005a73a] 4eb9 0006 5390            jsr        vsf_interior
[0005a740] 3203                      move.w     d3,d1
[0005a742] 2054                      movea.l    (a4),a0
[0005a744] 3028 0010                 move.w     16(a0),d0
[0005a748] 4eb9 0006 53e4            jsr        vsf_style
A_3Dbutton_27:
[0005a74e] 3205                      move.w     d5,d1
[0005a750] 2054                      movea.l    (a4),a0
[0005a752] 3028 0010                 move.w     16(a0),d0
[0005a756] 4eb9 0006 5438            jsr        vsf_color
[0005a75c] 4241                      clr.w      d1
[0005a75e] 2054                      movea.l    (a4),a0
[0005a760] 3028 0010                 move.w     16(a0),d0
[0005a764] 4eb9 0006 548c            jsr        vsf_perimeter
[0005a76a] 204b                      movea.l    a3,a0
[0005a76c] 2254                      movea.l    (a4),a1
[0005a76e] 3029 0010                 move.w     16(a1),d0
[0005a772] 4eb9 0006 455e            jsr        v_bar
A_3Dbutton_22:
[0005a778] 4a44                      tst.w      d4
[0005a77a] 6f00 0190                 ble        A_3Dbutton_21
[0005a77e] 3a2f 0046                 move.w     70(a7),d5
[0005a782] ee4d                      lsr.w      #7,d5
[0005a784] ca7c 0001                 and.w      #$0001,d5
[0005a788] 302f 000a                 move.w     10(a7),d0
[0005a78c] 6720                      beq.s      A_3Dbutton_29
[0005a78e] 4a45                      tst.w      d5
[0005a790] 6608                      bne.s      A_3Dbutton_30
[0005a792] 3a3c 0080                 move.w     #$0080,d5
[0005a796] ca46                      and.w      d6,d5
[0005a798] ee45                      asr.w      #7,d5
A_3Dbutton_30:
[0005a79a] 4a45                      tst.w      d5
[0005a79c] 6610                      bne.s      A_3Dbutton_29
[0005a79e] 3006                      move.w     d6,d0
[0005a7a0] c07c 0100                 and.w      #$0100,d0
[0005a7a4] 6708                      beq.s      A_3Dbutton_29
[0005a7a6] 2057                      movea.l    (a7),a0
[0005a7a8] 4eb9 0004 3740            jsr        Ast_toupper
A_3Dbutton_29:
[0005a7ae] 4a45                      tst.w      d5
[0005a7b0] 6710                      beq.s      A_3Dbutton_31
[0005a7b2] 7201                      moveq.l    #1,d1
[0005a7b4] 2054                      movea.l    (a4),a0
[0005a7b6] 3028 0010                 move.w     16(a0),d0
[0005a7ba] 4eb9 0006 4da0            jsr        vswr_mode
[0005a7c0] 600e                      bra.s      A_3Dbutton_32
A_3Dbutton_31:
[0005a7c2] 7202                      moveq.l    #2,d1
[0005a7c4] 2054                      movea.l    (a4),a0
[0005a7c6] 3028 0010                 move.w     16(a0),d0
[0005a7ca] 4eb9 0006 4da0            jsr        vswr_mode
A_3Dbutton_32:
[0005a7d0] 43ef 0014                 lea.l      20(a7),a1
[0005a7d4] 41ef 0014                 lea.l      20(a7),a0
[0005a7d8] 7405                      moveq.l    #5,d2
[0005a7da] 4241                      clr.w      d1
[0005a7dc] 2a54                      movea.l    (a4),a5
[0005a7de] 302d 0010                 move.w     16(a5),d0
[0005a7e2] 4eb9 0006 5312            jsr        vst_alignment
[0005a7e8] 4241                      clr.w      d1
[0005a7ea] 2054                      movea.l    (a4),a0
[0005a7ec] 3028 0010                 move.w     16(a0),d0
[0005a7f0] 4eb9 0006 51c2            jsr        vst_rotation
[0005a7f6] 4241                      clr.w      d1
[0005a7f8] 2054                      movea.l    (a4),a0
[0005a7fa] 3028 0010                 move.w     16(a0),d0
[0005a7fe] 4eb9 0006 52be            jsr        vst_effects
[0005a804] 322f 0046                 move.w     70(a7),d1
[0005a808] e049                      lsr.w      #8,d1
[0005a80a] c27c 000f                 and.w      #$000F,d1
[0005a80e] 2054                      movea.l    (a4),a0
[0005a810] 3028 0010                 move.w     16(a0),d0
[0005a814] 4eb9 0006 526a            jsr        vst_color
[0005a81a] 4bef 0016                 lea.l      22(a7),a5
[0005a81e] 202f 0044                 move.l     68(a7),d0
[0005a822] c0bc 4000 0000            and.l      #$40000000,d0
[0005a828] 6744                      beq.s      A_3Dbutton_33
[0005a82a] 322f 000a                 move.w     10(a7),d1
[0005a82e] 670c                      beq.s      A_3Dbutton_34
[0005a830] 2054                      movea.l    (a4),a0
[0005a832] 3428 02b4                 move.w     692(a0),d2
[0005a836] c47c 0100                 and.w      #$0100,d2
[0005a83a] 6632                      bne.s      A_3Dbutton_33
A_3Dbutton_34:
[0005a83c] 2054                      movea.l    (a4),a0
[0005a83e] 3228 0294                 move.w     660(a0),d1
[0005a842] 3028 0010                 move.w     16(a0),d0
[0005a846] 4eb9 0006 5216            jsr        vst_font
[0005a84c] 486f 000c                 pea.l      12(a7)
[0005a850] 4855                      pea.l      (a5)
[0005a852] 43ef 001c                 lea.l      28(a7),a1
[0005a856] 41ef 001c                 lea.l      28(a7),a0
[0005a85a] 2c54                      movea.l    (a4),a6
[0005a85c] 322e 0296                 move.w     662(a6),d1
[0005a860] 302e 0010                 move.w     16(a6),d0
[0005a864] 4eb9 0006 50a0            jsr        vst_height
[0005a86a] 504f                      addq.w     #8,a7
[0005a86c] 6030                      bra.s      A_3Dbutton_35
A_3Dbutton_33:
[0005a86e] 2054                      movea.l    (a4),a0
[0005a870] 3228 0290                 move.w     656(a0),d1
[0005a874] 3028 0010                 move.w     16(a0),d0
[0005a878] 4eb9 0006 5216            jsr        vst_font
[0005a87e] 486f 000c                 pea.l      12(a7)
[0005a882] 4855                      pea.l      (a5)
[0005a884] 43ef 001c                 lea.l      28(a7),a1
[0005a888] 41ef 001c                 lea.l      28(a7),a0
[0005a88c] 2c54                      movea.l    (a4),a6
[0005a88e] 322e 0292                 move.w     658(a6),d1
[0005a892] 302e 0010                 move.w     16(a6),d0
[0005a896] 4eb9 0006 50a0            jsr        vst_height
[0005a89c] 504f                      addq.w     #8,a7
A_3Dbutton_35:
[0005a89e] 43ef 0018                 lea.l      24(a7),a1
[0005a8a2] 2057                      movea.l    (a7),a0
[0005a8a4] 2c54                      movea.l    (a4),a6
[0005a8a6] 302e 0010                 move.w     16(a6),d0
[0005a8aa] 4eb9 0006 732e            jsr        vqt_extent
[0005a8b0] 302f 001c                 move.w     28(a7),d0
[0005a8b4] 906f 0018                 sub.w      24(a7),d0
[0005a8b8] 3a80                      move.w     d0,(a5)
[0005a8ba] 3a2a 0010                 move.w     16(a2),d5
[0005a8be] 9a6f 000c                 sub.w      12(a7),d5
[0005a8c2] e245                      asr.w      #1,d5
[0005a8c4] da6a 000c                 add.w      12(a2),d5
[0005a8c8] 222f 0044                 move.l     68(a7),d1
[0005a8cc] 741c                      moveq.l    #28,d2
[0005a8ce] e4a1                      asr.l      d2,d1
[0005a8d0] c27c 0003                 and.w      #$0003,d1
[0005a8d4] 4a41                      tst.w      d1
[0005a8d6] 6706                      beq.s      A_3Dbutton_36
[0005a8d8] 5341                      subq.w     #1,d1
[0005a8da] 6706                      beq.s      A_3Dbutton_37
[0005a8dc] 600e                      bra.s      A_3Dbutton_38
A_3Dbutton_36:
[0005a8de] 3613                      move.w     (a3),d3
[0005a8e0] 6016                      bra.s      A_3Dbutton_39
A_3Dbutton_37:
[0005a8e2] 362b 0004                 move.w     4(a3),d3
[0005a8e6] 9655                      sub.w      (a5),d3
[0005a8e8] 5243                      addq.w     #1,d3
[0005a8ea] 600c                      bra.s      A_3Dbutton_39
A_3Dbutton_38:
[0005a8ec] 3613                      move.w     (a3),d3
[0005a8ee] d66b 0004                 add.w      4(a3),d3
[0005a8f2] 9655                      sub.w      (a5),d3
[0005a8f4] e243                      asr.w      #1,d3
[0005a8f6] 5243                      addq.w     #1,d3
A_3Dbutton_39:
[0005a8f8] 4267                      clr.w      -(a7)
[0005a8fa] 342f 0012                 move.w     18(a7),d2
[0005a8fe] 206f 0002                 movea.l    2(a7),a0
[0005a902] 3205                      move.w     d5,d1
[0005a904] 3003                      move.w     d3,d0
[0005a906] 6100 e6c2                 bsr        g_string
[0005a90a] 544f                      addq.w     #2,a7
A_3Dbutton_21:
[0005a90c] 4a47                      tst.w      d7
[0005a90e] 6706                      beq.s      A_3Dbutton_40
[0005a910] 7601                      moveq.l    #1,d3
[0005a912] 3a03                      move.w     d3,d5
[0005a914] 601a                      bra.s      A_3Dbutton_41
A_3Dbutton_40:
[0005a916] 3a2f 0046                 move.w     70(a7),d5
[0005a91a] 700c                      moveq.l    #12,d0
[0005a91c] e06d                      lsr.w      d0,d5
[0005a91e] ca7c 000f                 and.w      #$000F,d5
[0005a922] 362f 0044                 move.w     68(a7),d3
[0005a926] e04b                      lsr.w      #8,d3
[0005a928] c67c 00ff                 and.w      #$00FF,d3
[0005a92c] c67c 000f                 and.w      #$000F,d3
A_3Dbutton_41:
[0005a930] 302f 000e                 move.w     14(a7),d0
[0005a934] 6700 0374                 beq        A_3Dbutton_42
[0005a938] 322f 0012                 move.w     18(a7),d1
[0005a93c] 6706                      beq.s      A_3Dbutton_43
[0005a93e] b645                      cmp.w      d5,d3
[0005a940] 6700 0368                 beq        A_3Dbutton_42
A_3Dbutton_43:
[0005a944] 3e2f 000e                 move.w     14(a7),d7
[0005a948] 4a47                      tst.w      d7
[0005a94a] 6a02                      bpl.s      A_3Dbutton_44
[0005a94c] 4447                      neg.w      d7
A_3Dbutton_44:
[0005a94e] 7201                      moveq.l    #1,d1
[0005a950] 2054                      movea.l    (a4),a0
[0005a952] 3028 0010                 move.w     16(a0),d0
[0005a956] 4eb9 0006 4da0            jsr        vswr_mode
[0005a95c] 7201                      moveq.l    #1,d1
[0005a95e] 2054                      movea.l    (a4),a0
[0005a960] 3028 0010                 move.w     16(a0),d0
[0005a964] 4eb9 0006 4e9a            jsr        vsl_width
[0005a96a] 4242                      clr.w      d2
[0005a96c] 4241                      clr.w      d1
[0005a96e] 2054                      movea.l    (a4),a0
[0005a970] 3028 0010                 move.w     16(a0),d0
[0005a974] 4eb9 0006 4f44            jsr        vsl_ends
[0005a97a] 7001                      moveq.l    #1,d0
[0005a97c] c06a 0008                 and.w      8(a2),d0
[0005a980] 6730                      beq.s      A_3Dbutton_45
[0005a982] 322f 000a                 move.w     10(a7),d1
[0005a986] 671a                      beq.s      A_3Dbutton_46
[0005a988] 3406                      move.w     d6,d2
[0005a98a] c47c 0400                 and.w      #$0400,d2
[0005a98e] 6706                      beq.s      A_3Dbutton_47
[0005a990] b67c 0009                 cmp.w      #$0009,d3
[0005a994] 673c                      beq.s      A_3Dbutton_48
A_3Dbutton_47:
[0005a996] 3006                      move.w     d6,d0
[0005a998] c07c 0200                 and.w      #$0200,d0
[0005a99c] 6704                      beq.s      A_3Dbutton_46
[0005a99e] 4a43                      tst.w      d3
[0005a9a0] 6730                      beq.s      A_3Dbutton_48
A_3Dbutton_46:
[0005a9a2] 3203                      move.w     d3,d1
[0005a9a4] 2054                      movea.l    (a4),a0
[0005a9a6] 3028 0010                 move.w     16(a0),d0
[0005a9aa] 4eb9 0006 4ef0            jsr        vsl_color
[0005a9b0] 604e                      bra.s      A_3Dbutton_49
A_3Dbutton_45:
[0005a9b2] 302f 000a                 move.w     10(a7),d0
[0005a9b6] 673a                      beq.s      A_3Dbutton_50
[0005a9b8] 3206                      move.w     d6,d1
[0005a9ba] c27c 0400                 and.w      #$0400,d1
[0005a9be] 6706                      beq.s      A_3Dbutton_51
[0005a9c0] ba7c 0009                 cmp.w      #$0009,d5
[0005a9c4] 670c                      beq.s      A_3Dbutton_48
A_3Dbutton_51:
[0005a9c6] 3006                      move.w     d6,d0
[0005a9c8] c07c 0200                 and.w      #$0200,d0
[0005a9cc] 6724                      beq.s      A_3Dbutton_50
[0005a9ce] 4a45                      tst.w      d5
[0005a9d0] 6620                      bne.s      A_3Dbutton_50
A_3Dbutton_48:
[0005a9d2] 7201                      moveq.l    #1,d1
[0005a9d4] 2054                      movea.l    (a4),a0
[0005a9d6] 3028 0010                 move.w     16(a0),d0
[0005a9da] 4eb9 0006 4ef0            jsr        vsl_color
[0005a9e0] 7207                      moveq.l    #7,d1
[0005a9e2] 2054                      movea.l    (a4),a0
[0005a9e4] 3028 0010                 move.w     16(a0),d0
[0005a9e8] 4eb9 0006 4df4            jsr        vsl_type
[0005a9ee] 7801                      moveq.l    #1,d4
[0005a9f0] 601e                      bra.s      A_3Dbutton_52
A_3Dbutton_50:
[0005a9f2] 3205                      move.w     d5,d1
[0005a9f4] 2054                      movea.l    (a4),a0
[0005a9f6] 3028 0010                 move.w     16(a0),d0
[0005a9fa] 4eb9 0006 4ef0            jsr        vsl_color
A_3Dbutton_49:
[0005aa00] 7201                      moveq.l    #1,d1
[0005aa02] 2054                      movea.l    (a4),a0
[0005aa04] 3028 0010                 move.w     16(a0),d0
[0005aa08] 4eb9 0006 4df4            jsr        vsl_type
[0005aa0e] 4244                      clr.w      d4
A_3Dbutton_52:
[0005aa10] 4bef 0028                 lea.l      40(a7),a5
[0005aa14] 3013                      move.w     (a3),d0
[0005aa16] 3b40 0004                 move.w     d0,4(a5)
[0005aa1a] 3a80                      move.w     d0,(a5)
[0005aa1c] 3b6b 0006 0002            move.w     6(a3),2(a5)
[0005aa22] 302b 0002                 move.w     2(a3),d0
[0005aa26] 3b40 000a                 move.w     d0,10(a5)
[0005aa2a] 3b40 0006                 move.w     d0,6(a5)
[0005aa2e] 3b6b 0004 0008            move.w     4(a3),8(a5)
[0005aa34] 6000 0092                 bra        A_3Dbutton_53
A_3Dbutton_57:
[0005aa38] 302f 0008                 move.w     8(a7),d0
[0005aa3c] 6714                      beq.s      A_3Dbutton_54
[0005aa3e] be7c 0002                 cmp.w      #$0002,d7
[0005aa42] 6c0e                      bge.s      A_3Dbutton_54
[0005aa44] 4241                      clr.w      d1
[0005aa46] 2054                      movea.l    (a4),a0
[0005aa48] 3028 0010                 move.w     16(a0),d0
[0005aa4c] 4eb9 0006 4ef0            jsr        vsl_color
A_3Dbutton_54:
[0005aa52] 5355                      subq.w     #1,(a5)
[0005aa54] 526d 0002                 addq.w     #1,2(a5)
[0005aa58] 536d 0004                 subq.w     #1,4(a5)
[0005aa5c] 536d 0006                 subq.w     #1,6(a5)
[0005aa60] 526d 0008                 addq.w     #1,8(a5)
[0005aa64] 536d 000a                 subq.w     #1,10(a5)
[0005aa68] 4a44                      tst.w      d4
[0005aa6a] 674c                      beq.s      A_3Dbutton_55
[0005aa6c] 323c 5555                 move.w     #$5555,d1
[0005aa70] 2054                      movea.l    (a4),a0
[0005aa72] 3028 0010                 move.w     16(a0),d0
[0005aa76] 4eb9 0006 4e48            jsr        vsl_udsty
[0005aa7c] 204d                      movea.l    a5,a0
[0005aa7e] 7202                      moveq.l    #2,d1
[0005aa80] 2254                      movea.l    (a4),a1
[0005aa82] 3029 0010                 move.w     16(a1),d0
[0005aa86] 4eb9 0006 4010            jsr        v_pline
[0005aa8c] 7001                      moveq.l    #1,d0
[0005aa8e] c06d 0004                 and.w      4(a5),d0
[0005aa92] 6610                      bne.s      A_3Dbutton_56
[0005aa94] 323c aaaa                 move.w     #$AAAA,d1
[0005aa98] 2054                      movea.l    (a4),a0
[0005aa9a] 3028 0010                 move.w     16(a0),d0
[0005aa9e] 4eb9 0006 4e48            jsr        vsl_udsty
A_3Dbutton_56:
[0005aaa4] 41ed 0004                 lea.l      4(a5),a0
[0005aaa8] 7202                      moveq.l    #2,d1
[0005aaaa] 2254                      movea.l    (a4),a1
[0005aaac] 3029 0010                 move.w     16(a1),d0
[0005aab0] 4eb9 0006 4010            jsr        v_pline
[0005aab6] 6010                      bra.s      A_3Dbutton_53
A_3Dbutton_55:
[0005aab8] 204d                      movea.l    a5,a0
[0005aaba] 7203                      moveq.l    #3,d1
[0005aabc] 2254                      movea.l    (a4),a1
[0005aabe] 3029 0010                 move.w     16(a1),d0
[0005aac2] 4eb9 0006 4010            jsr        v_pline
A_3Dbutton_53:
[0005aac8] 3007                      move.w     d7,d0
[0005aaca] 5347                      subq.w     #1,d7
[0005aacc] 4a40                      tst.w      d0
[0005aace] 6600 ff68                 bne        A_3Dbutton_57
[0005aad2] 3e2f 000e                 move.w     14(a7),d7
[0005aad6] 4a47                      tst.w      d7
[0005aad8] 6a02                      bpl.s      A_3Dbutton_58
[0005aada] 4447                      neg.w      d7
A_3Dbutton_58:
[0005aadc] 7001                      moveq.l    #1,d0
[0005aade] c06a 0008                 and.w      8(a2),d0
[0005aae2] 6730                      beq.s      A_3Dbutton_59
[0005aae4] 322f 000a                 move.w     10(a7),d1
[0005aae8] 671a                      beq.s      A_3Dbutton_60
[0005aaea] 3406                      move.w     d6,d2
[0005aaec] c47c 0400                 and.w      #$0400,d2
[0005aaf0] 6706                      beq.s      A_3Dbutton_61
[0005aaf2] ba7c 0009                 cmp.w      #$0009,d5
[0005aaf6] 673c                      beq.s      A_3Dbutton_62
A_3Dbutton_61:
[0005aaf8] 3006                      move.w     d6,d0
[0005aafa] c07c 0200                 and.w      #$0200,d0
[0005aafe] 6704                      beq.s      A_3Dbutton_60
[0005ab00] 4a45                      tst.w      d5
[0005ab02] 6730                      beq.s      A_3Dbutton_62
A_3Dbutton_60:
[0005ab04] 3205                      move.w     d5,d1
[0005ab06] 2054                      movea.l    (a4),a0
[0005ab08] 3028 0010                 move.w     16(a0),d0
[0005ab0c] 4eb9 0006 4ef0            jsr        vsl_color
[0005ab12] 604e                      bra.s      A_3Dbutton_63
A_3Dbutton_59:
[0005ab14] 302f 000a                 move.w     10(a7),d0
[0005ab18] 673a                      beq.s      A_3Dbutton_64
[0005ab1a] 3206                      move.w     d6,d1
[0005ab1c] c27c 0400                 and.w      #$0400,d1
[0005ab20] 6706                      beq.s      A_3Dbutton_65
[0005ab22] b67c 0009                 cmp.w      #$0009,d3
[0005ab26] 670c                      beq.s      A_3Dbutton_62
A_3Dbutton_65:
[0005ab28] 3006                      move.w     d6,d0
[0005ab2a] c07c 0200                 and.w      #$0200,d0
[0005ab2e] 6724                      beq.s      A_3Dbutton_64
[0005ab30] 4a43                      tst.w      d3
[0005ab32] 6620                      bne.s      A_3Dbutton_64
A_3Dbutton_62:
[0005ab34] 7201                      moveq.l    #1,d1
[0005ab36] 2054                      movea.l    (a4),a0
[0005ab38] 3028 0010                 move.w     16(a0),d0
[0005ab3c] 4eb9 0006 4ef0            jsr        vsl_color
[0005ab42] 7207                      moveq.l    #7,d1
[0005ab44] 2054                      movea.l    (a4),a0
[0005ab46] 3028 0010                 move.w     16(a0),d0
[0005ab4a] 4eb9 0006 4df4            jsr        vsl_type
[0005ab50] 7801                      moveq.l    #1,d4
[0005ab52] 601e                      bra.s      A_3Dbutton_66
A_3Dbutton_64:
[0005ab54] 3203                      move.w     d3,d1
[0005ab56] 2054                      movea.l    (a4),a0
[0005ab58] 3028 0010                 move.w     16(a0),d0
[0005ab5c] 4eb9 0006 4ef0            jsr        vsl_color
A_3Dbutton_63:
[0005ab62] 7201                      moveq.l    #1,d1
[0005ab64] 2054                      movea.l    (a4),a0
[0005ab66] 3028 0010                 move.w     16(a0),d0
[0005ab6a] 4eb9 0006 4df4            jsr        vsl_type
[0005ab70] 4244                      clr.w      d4
A_3Dbutton_66:
[0005ab72] 3a93                      move.w     (a3),(a5)
[0005ab74] 302b 0006                 move.w     6(a3),d0
[0005ab78] 3b40 0002                 move.w     d0,2(a5)
[0005ab7c] 3b40 0006                 move.w     d0,6(a5)
[0005ab80] 3b6b 0002 000a            move.w     2(a3),10(a5)
[0005ab86] 302b 0004                 move.w     4(a3),d0
[0005ab8a] 3b40 0008                 move.w     d0,8(a5)
[0005ab8e] 3b40 0004                 move.w     d0,4(a5)
[0005ab92] 6000 0092                 bra        A_3Dbutton_67
A_3Dbutton_71:
[0005ab96] 302f 0008                 move.w     8(a7),d0
[0005ab9a] 6714                      beq.s      A_3Dbutton_68
[0005ab9c] be7c 0002                 cmp.w      #$0002,d7
[0005aba0] 6c0e                      bge.s      A_3Dbutton_68
[0005aba2] 4241                      clr.w      d1
[0005aba4] 2054                      movea.l    (a4),a0
[0005aba6] 3028 0010                 move.w     16(a0),d0
[0005abaa] 4eb9 0006 4ef0            jsr        vsl_color
A_3Dbutton_68:
[0005abb0] 5355                      subq.w     #1,(a5)
[0005abb2] 526d 0002                 addq.w     #1,2(a5)
[0005abb6] 526d 0004                 addq.w     #1,4(a5)
[0005abba] 526d 0006                 addq.w     #1,6(a5)
[0005abbe] 526d 0008                 addq.w     #1,8(a5)
[0005abc2] 536d 000a                 subq.w     #1,10(a5)
[0005abc6] 4a44                      tst.w      d4
[0005abc8] 674c                      beq.s      A_3Dbutton_69
[0005abca] 323c 5555                 move.w     #$5555,d1
[0005abce] 2054                      movea.l    (a4),a0
[0005abd0] 3028 0010                 move.w     16(a0),d0
[0005abd4] 4eb9 0006 4e48            jsr        vsl_udsty
[0005abda] 41ed 0004                 lea.l      4(a5),a0
[0005abde] 7202                      moveq.l    #2,d1
[0005abe0] 2254                      movea.l    (a4),a1
[0005abe2] 3029 0010                 move.w     16(a1),d0
[0005abe6] 4eb9 0006 4010            jsr        v_pline
[0005abec] 7001                      moveq.l    #1,d0
[0005abee] c06d 0004                 and.w      4(a5),d0
[0005abf2] 6710                      beq.s      A_3Dbutton_70
[0005abf4] 323c aaaa                 move.w     #$AAAA,d1
[0005abf8] 2054                      movea.l    (a4),a0
[0005abfa] 3028 0010                 move.w     16(a0),d0
[0005abfe] 4eb9 0006 4e48            jsr        vsl_udsty
A_3Dbutton_70:
[0005ac04] 204d                      movea.l    a5,a0
[0005ac06] 7202                      moveq.l    #2,d1
[0005ac08] 2254                      movea.l    (a4),a1
[0005ac0a] 3029 0010                 move.w     16(a1),d0
[0005ac0e] 4eb9 0006 4010            jsr        v_pline
[0005ac14] 6010                      bra.s      A_3Dbutton_67
A_3Dbutton_69:
[0005ac16] 204d                      movea.l    a5,a0
[0005ac18] 7203                      moveq.l    #3,d1
[0005ac1a] 2254                      movea.l    (a4),a1
[0005ac1c] 3029 0010                 move.w     16(a1),d0
[0005ac20] 4eb9 0006 4010            jsr        v_pline
A_3Dbutton_67:
[0005ac26] 3007                      move.w     d7,d0
[0005ac28] 5347                      subq.w     #1,d7
[0005ac2a] 4a40                      tst.w      d0
[0005ac2c] 6600 ff68                 bne        A_3Dbutton_71
[0005ac30] 7005                      moveq.l    #5,d0
[0005ac32] 206f 0004                 movea.l    4(a7),a0
[0005ac36] c068 0008                 and.w      8(a0),d0
[0005ac3a] 5b40                      subq.w     #5,d0
[0005ac3c] 666c                      bne.s      A_3Dbutton_42
[0005ac3e] 7220                      moveq.l    #32,d1
[0005ac40] c268 000a                 and.w      10(a0),d1
[0005ac44] 6664                      bne.s      A_3Dbutton_42
[0005ac46] 2254                      movea.l    (a4),a1
[0005ac48] 3029 0010                 move.w     16(a1),d0
[0005ac4c] 7201                      moveq.l    #1,d1
[0005ac4e] 4eb9 0006 4df4            jsr        vsl_type
[0005ac54] 322f 0046                 move.w     70(a7),d1
[0005ac58] e049                      lsr.w      #8,d1
[0005ac5a] c27c 000f                 and.w      #$000F,d1
[0005ac5e] 2054                      movea.l    (a4),a0
[0005ac60] 3028 0010                 move.w     16(a0),d0
[0005ac64] 4eb9 0006 4ef0            jsr        vsl_color
[0005ac6a] 5355                      subq.w     #1,(a5)
[0005ac6c] 526d 0002                 addq.w     #1,2(a5)
[0005ac70] 526d 0004                 addq.w     #1,4(a5)
[0005ac74] 526d 0006                 addq.w     #1,6(a5)
[0005ac78] 526d 0008                 addq.w     #1,8(a5)
[0005ac7c] 536d 000a                 subq.w     #1,10(a5)
[0005ac80] 204d                      movea.l    a5,a0
[0005ac82] 7203                      moveq.l    #3,d1
[0005ac84] 2254                      movea.l    (a4),a1
[0005ac86] 3029 0010                 move.w     16(a1),d0
[0005ac8a] 4eb9 0006 4010            jsr        v_pline
[0005ac90] 3b55 0004                 move.w     (a5),4(a5)
[0005ac94] 3b6d 000a 0006            move.w     10(a5),6(a5)
[0005ac9a] 204d                      movea.l    a5,a0
[0005ac9c] 7203                      moveq.l    #3,d1
[0005ac9e] 2254                      movea.l    (a4),a1
[0005aca0] 3029 0010                 move.w     16(a1),d0
[0005aca4] 4eb9 0006 4010            jsr        v_pline
A_3Dbutton_42:
[0005acaa] 302f 000e                 move.w     14(a7),d0
[0005acae] 6704                      beq.s      A_3Dbutton_72
[0005acb0] b645                      cmp.w      d5,d3
[0005acb2] 6656                      bne.s      A_3Dbutton_73
A_3Dbutton_72:
[0005acb4] 7001                      moveq.l    #1,d0
[0005acb6] c06f 0012                 and.w      18(a7),d0
[0005acba] 6608                      bne.s      A_3Dbutton_74
[0005acbc] 7201                      moveq.l    #1,d1
[0005acbe] c26a 0008                 and.w      8(a2),d1
[0005acc2] 6746                      beq.s      A_3Dbutton_73
A_3Dbutton_74:
[0005acc4] 7203                      moveq.l    #3,d1
[0005acc6] 2054                      movea.l    (a4),a0
[0005acc8] 3028 0010                 move.w     16(a0),d0
[0005accc] 4eb9 0006 4da0            jsr        vswr_mode
[0005acd2] 7201                      moveq.l    #1,d1
[0005acd4] 2054                      movea.l    (a4),a0
[0005acd6] 3028 0010                 move.w     16(a0),d0
[0005acda] 4eb9 0006 5390            jsr        vsf_interior
[0005ace0] 7201                      moveq.l    #1,d1
[0005ace2] 2054                      movea.l    (a4),a0
[0005ace4] 3028 0010                 move.w     16(a0),d0
[0005ace8] 4eb9 0006 5438            jsr        vsf_color
[0005acee] 4241                      clr.w      d1
[0005acf0] 2054                      movea.l    (a4),a0
[0005acf2] 3028 0010                 move.w     16(a0),d0
[0005acf6] 4eb9 0006 548c            jsr        vsf_perimeter
[0005acfc] 204b                      movea.l    a3,a0
[0005acfe] 2254                      movea.l    (a4),a1
[0005ad00] 3029 0010                 move.w     16(a1),d0
[0005ad04] 4eb9 0006 455e            jsr        v_bar
A_3Dbutton_73:
[0005ad0a] 7008                      moveq.l    #8,d0
[0005ad0c] c06f 0012                 and.w      18(a7),d0
[0005ad10] 6608                      bne.s      A_3Dbutton_75
[0005ad12] 7208                      moveq.l    #8,d1
[0005ad14] c26a 0008                 and.w      8(a2),d1
[0005ad18] 6754                      beq.s      A_3Dbutton_76
A_3Dbutton_75:
[0005ad1a] 7204                      moveq.l    #4,d1
[0005ad1c] 2054                      movea.l    (a4),a0
[0005ad1e] 3028 0010                 move.w     16(a0),d0
[0005ad22] 4eb9 0006 4da0            jsr        vswr_mode
[0005ad28] 7202                      moveq.l    #2,d1
[0005ad2a] 2054                      movea.l    (a4),a0
[0005ad2c] 3028 0010                 move.w     16(a0),d0
[0005ad30] 4eb9 0006 5390            jsr        vsf_interior
[0005ad36] 7204                      moveq.l    #4,d1
[0005ad38] 2054                      movea.l    (a4),a0
[0005ad3a] 3028 0010                 move.w     16(a0),d0
[0005ad3e] 4eb9 0006 53e4            jsr        vsf_style
[0005ad44] 4241                      clr.w      d1
[0005ad46] 2054                      movea.l    (a4),a0
[0005ad48] 3028 0010                 move.w     16(a0),d0
[0005ad4c] 4eb9 0006 5438            jsr        vsf_color
[0005ad52] 4241                      clr.w      d1
[0005ad54] 2054                      movea.l    (a4),a0
[0005ad56] 3028 0010                 move.w     16(a0),d0
[0005ad5a] 4eb9 0006 548c            jsr        vsf_perimeter
[0005ad60] 204b                      movea.l    a3,a0
[0005ad62] 2254                      movea.l    (a4),a1
[0005ad64] 3029 0010                 move.w     16(a1),d0
[0005ad68] 4eb9 0006 455e            jsr        v_bar
A_3Dbutton_76:
[0005ad6e] 204b                      movea.l    a3,a0
[0005ad70] 4241                      clr.w      d1
[0005ad72] 2254                      movea.l    (a4),a1
[0005ad74] 3029 0010                 move.w     16(a1),d0
[0005ad78] 4eb9 0006 3f60            jsr        vs_clip
[0005ad7e] 70e6                      moveq.l    #-26,d0
[0005ad80] c06a 0008                 and.w      8(a2),d0
[0005ad84] 4fef 0048                 lea.l      72(a7),a7
[0005ad88] 4cdf 7cfc                 movem.l    (a7)+,d2-d7/a2-a6
[0005ad8c] 4e75                      rts

A_title:
[0005ad8e] 48e7 3c3e                 movem.l    d2-d5/a2-a6,-(a7)
[0005ad92] 4fef ffe2                 lea.l      -30(a7),a7
[0005ad96] 246f 0046                 movea.l    70(a7),a2
[0005ad9a] 49f9 0010 1f12            lea.l      ACSblk,a4
[0005ada0] 302a 0016                 move.w     22(a2),d0
[0005ada4] 6606                      bne.s      A_title_1
[0005ada6] 322a 0018                 move.w     24(a2),d1
[0005adaa] 673c                      beq.s      A_title_2
A_title_1:
[0005adac] 3f6a 0012 0016            move.w     18(a2),22(a7)
[0005adb2] 3f6a 0014 0018            move.w     20(a2),24(a7)
[0005adb8] 302a 0012                 move.w     18(a2),d0
[0005adbc] d06a 0016                 add.w      22(a2),d0
[0005adc0] 5340                      subq.w     #1,d0
[0005adc2] 3f40 001a                 move.w     d0,26(a7)
[0005adc6] 322a 0014                 move.w     20(a2),d1
[0005adca] d26a 0018                 add.w      24(a2),d1
[0005adce] 5341                      subq.w     #1,d1
[0005add0] 3f41 001c                 move.w     d1,28(a7)
[0005add4] 41ef 0016                 lea.l      22(a7),a0
[0005add8] 2254                      movea.l    (a4),a1
[0005adda] 3029 0010                 move.w     16(a1),d0
[0005adde] 7201                      moveq.l    #1,d1
[0005ade0] 4eb9 0006 3f60            jsr        vs_clip
[0005ade6] 6012                      bra.s      A_title_3
A_title_2:
[0005ade8] 41ef 0016                 lea.l      22(a7),a0
[0005adec] 4241                      clr.w      d1
[0005adee] 2254                      movea.l    (a4),a1
[0005adf0] 3029 0010                 move.w     16(a1),d0
[0005adf4] 4eb9 0006 3f60            jsr        vs_clip
A_title_3:
[0005adfa] 302a 0006                 move.w     6(a2),d0
[0005adfe] 322a 0008                 move.w     8(a2),d1
[0005ae02] b340                      eor.w      d1,d0
[0005ae04] 4a40                      tst.w      d0
[0005ae06] 6600 0208                 bne        A_title_4
[0005ae0a] 302a 0004                 move.w     4(a2),d0
[0005ae0e] 48c0                      ext.l      d0
[0005ae10] 2400                      move.l     d0,d2
[0005ae12] d482                      add.l      d2,d2
[0005ae14] d480                      add.l      d0,d2
[0005ae16] e78a                      lsl.l      #3,d2
[0005ae18] 2652                      movea.l    (a2),a3
[0005ae1a] d7c2                      adda.l     d2,a3
[0005ae1c] 206b 000c                 movea.l    12(a3),a0
[0005ae20] 2a68 000c                 movea.l    12(a0),a5
[0005ae24] 220d                      move.l     a5,d1
[0005ae26] 6700 016a                 beq        A_title_5
[0005ae2a] 204d                      movea.l    a5,a0
[0005ae2c] 4eb9 0007 69b0            jsr        strlen
[0005ae32] 4a40                      tst.w      d0
[0005ae34] 6f00 015c                 ble        A_title_5
[0005ae38] 41eb 0018                 lea.l      24(a3),a0
[0005ae3c] 7020                      moveq.l    #32,d0
[0005ae3e] c06b 0008                 and.w      8(a3),d0
[0005ae42] 6610                      bne.s      A_title_6
[0005ae44] 3228 0008                 move.w     8(a0),d1
[0005ae48] c27c 8000                 and.w      #$8000,d1
[0005ae4c] 6706                      beq.s      A_title_6
[0005ae4e] 3628 000a                 move.w     10(a0),d3
[0005ae52] 6002                      bra.s      A_title_7
A_title_6:
[0005ae54] 4243                      clr.w      d3
A_title_7:
[0005ae56] 7008                      moveq.l    #8,d0
[0005ae58] c0aa 001a                 and.l      26(a2),d0
[0005ae5c] 6710                      beq.s      A_title_8
[0005ae5e] 7201                      moveq.l    #1,d1
[0005ae60] 2054                      movea.l    (a4),a0
[0005ae62] 3028 0010                 move.w     16(a0),d0
[0005ae66] 4eb9 0006 4da0            jsr        vswr_mode
[0005ae6c] 600e                      bra.s      A_title_9
A_title_8:
[0005ae6e] 7202                      moveq.l    #2,d1
[0005ae70] 2054                      movea.l    (a4),a0
[0005ae72] 3028 0010                 move.w     16(a0),d0
[0005ae76] 4eb9 0006 4da0            jsr        vswr_mode
A_title_9:
[0005ae7c] 4241                      clr.w      d1
[0005ae7e] 2054                      movea.l    (a4),a0
[0005ae80] 3028 0010                 move.w     16(a0),d0
[0005ae84] 4eb9 0006 51c2            jsr        vst_rotation
[0005ae8a] 4241                      clr.w      d1
[0005ae8c] 2054                      movea.l    (a4),a0
[0005ae8e] 3028 0010                 move.w     16(a0),d0
[0005ae92] 4eb9 0006 52be            jsr        vst_effects
[0005ae98] 7201                      moveq.l    #1,d1
[0005ae9a] 2054                      movea.l    (a4),a0
[0005ae9c] 3028 0010                 move.w     16(a0),d0
[0005aea0] 4eb9 0006 526a            jsr        vst_color
[0005aea6] 47ef 0004                 lea.l      4(a7),a3
[0005aeaa] 224b                      movea.l    a3,a1
[0005aeac] 204b                      movea.l    a3,a0
[0005aeae] 7405                      moveq.l    #5,d2
[0005aeb0] 4241                      clr.w      d1
[0005aeb2] 2c54                      movea.l    (a4),a6
[0005aeb4] 302e 0010                 move.w     16(a6),d0
[0005aeb8] 4eb9 0006 5312            jsr        vst_alignment
[0005aebe] 7004                      moveq.l    #4,d0
[0005aec0] c0aa 001a                 and.l      26(a2),d0
[0005aec4] 673a                      beq.s      A_title_10
[0005aec6] 2054                      movea.l    (a4),a0
[0005aec8] 3228 0294                 move.w     660(a0),d1
[0005aecc] 3028 0010                 move.w     16(a0),d0
[0005aed0] 4eb9 0006 5216            jsr        vst_font
[0005aed6] 486f 0002                 pea.l      2(a7)
[0005aeda] 486f 0004                 pea.l      4(a7)
[0005aede] 224b                      movea.l    a3,a1
[0005aee0] 204b                      movea.l    a3,a0
[0005aee2] 2c54                      movea.l    (a4),a6
[0005aee4] 322e 0296                 move.w     662(a6),d1
[0005aee8] 302e 0010                 move.w     16(a6),d0
[0005aeec] 4eb9 0006 50a0            jsr        vst_height
[0005aef2] 504f                      addq.w     #8,a7
[0005aef4] 2054                      movea.l    (a4),a0
[0005aef6] 3828 0014                 move.w     20(a0),d4
[0005aefa] 986f 0002                 sub.w      2(a7),d4
[0005aefe] 6030                      bra.s      A_title_11
A_title_10:
[0005af00] 2054                      movea.l    (a4),a0
[0005af02] 3228 0290                 move.w     656(a0),d1
[0005af06] 3028 0010                 move.w     16(a0),d0
[0005af0a] 4eb9 0006 5216            jsr        vst_font
[0005af10] 486f 0002                 pea.l      2(a7)
[0005af14] 486f 0004                 pea.l      4(a7)
[0005af18] 224b                      movea.l    a3,a1
[0005af1a] 204b                      movea.l    a3,a0
[0005af1c] 2c54                      movea.l    (a4),a6
[0005af1e] 322e 0292                 move.w     658(a6),d1
[0005af22] 302e 0010                 move.w     16(a6),d0
[0005af26] 4eb9 0006 50a0            jsr        vst_height
[0005af2c] 504f                      addq.w     #8,a7
[0005af2e] 4244                      clr.w      d4
A_title_11:
[0005af30] 43ef 0006                 lea.l      6(a7),a1
[0005af34] 204d                      movea.l    a5,a0
[0005af36] 2654                      movea.l    (a4),a3
[0005af38] 302b 0010                 move.w     16(a3),d0
[0005af3c] 4eb9 0006 732e            jsr        vqt_extent
[0005af42] 302f 000a                 move.w     10(a7),d0
[0005af46] 906f 0006                 sub.w      6(a7),d0
[0005af4a] 5240                      addq.w     #1,d0
[0005af4c] 3e80                      move.w     d0,(a7)
[0005af4e] 7203                      moveq.l    #3,d1
[0005af50] c26a 001c                 and.w      28(a2),d1
[0005af54] 5341                      subq.w     #1,d1
[0005af56] 6706                      beq.s      A_title_12
[0005af58] 5341                      subq.w     #1,d1
[0005af5a] 6710                      beq.s      A_title_13
[0005af5c] 601c                      bra.s      A_title_14
A_title_12:
[0005af5e] 3a2a 000e                 move.w     14(a2),d5
[0005af62] 9a57                      sub.w      (a7),d5
[0005af64] e245                      asr.w      #1,d5
[0005af66] da6a 000a                 add.w      10(a2),d5
[0005af6a] 6012                      bra.s      A_title_15
A_title_13:
[0005af6c] 3a2a 000a                 move.w     10(a2),d5
[0005af70] da6a 000e                 add.w      14(a2),d5
[0005af74] 9a57                      sub.w      (a7),d5
[0005af76] 5245                      addq.w     #1,d5
[0005af78] 6004                      bra.s      A_title_15
A_title_14:
[0005af7a] 3a2a 000a                 move.w     10(a2),d5
A_title_15:
[0005af7e] 4267                      clr.w      -(a7)
[0005af80] 3403                      move.w     d3,d2
[0005af82] 204d                      movea.l    a5,a0
[0005af84] 322a 000c                 move.w     12(a2),d1
[0005af88] d244                      add.w      d4,d1
[0005af8a] 3005                      move.w     d5,d0
[0005af8c] 6100 e03c                 bsr        g_string
[0005af90] 544f                      addq.w     #2,a7
A_title_5:
[0005af92] 7201                      moveq.l    #1,d1
[0005af94] 2054                      movea.l    (a4),a0
[0005af96] 3028 0010                 move.w     16(a0),d0
[0005af9a] 4eb9 0006 4da0            jsr        vswr_mode
[0005afa0] 7201                      moveq.l    #1,d1
[0005afa2] 2054                      movea.l    (a4),a0
[0005afa4] 3028 0010                 move.w     16(a0),d0
[0005afa8] 4eb9 0006 4df4            jsr        vsl_type
[0005afae] 7201                      moveq.l    #1,d1
[0005afb0] 2054                      movea.l    (a4),a0
[0005afb2] 3028 0010                 move.w     16(a0),d0
[0005afb6] 4eb9 0006 4e9a            jsr        vsl_width
[0005afbc] 7201                      moveq.l    #1,d1
[0005afbe] 2054                      movea.l    (a4),a0
[0005afc0] 3028 0010                 move.w     16(a0),d0
[0005afc4] 4eb9 0006 4ef0            jsr        vsl_color
[0005afca] 4242                      clr.w      d2
[0005afcc] 4241                      clr.w      d1
[0005afce] 2054                      movea.l    (a4),a0
[0005afd0] 3028 0010                 move.w     16(a0),d0
[0005afd4] 4eb9 0006 4f44            jsr        vsl_ends
[0005afda] 3f6a 000a 0006            move.w     10(a2),6(a7)
[0005afe0] 302a 000a                 move.w     10(a2),d0
[0005afe4] d06a 000e                 add.w      14(a2),d0
[0005afe8] 5340                      subq.w     #1,d0
[0005afea] 3f40 000a                 move.w     d0,10(a7)
[0005afee] 322a 000c                 move.w     12(a2),d1
[0005aff2] d26a 0010                 add.w      16(a2),d1
[0005aff6] 3f41 000c                 move.w     d1,12(a7)
[0005affa] 3f41 0008                 move.w     d1,8(a7)
[0005affe] 41ef 0006                 lea.l      6(a7),a0
[0005b002] 2254                      movea.l    (a4),a1
[0005b004] 3029 0010                 move.w     16(a1),d0
[0005b008] 7202                      moveq.l    #2,d1
[0005b00a] 4eb9 0006 4010            jsr        v_pline
A_title_4:
[0005b010] 41ef 0016                 lea.l      22(a7),a0
[0005b014] 4241                      clr.w      d1
[0005b016] 2254                      movea.l    (a4),a1
[0005b018] 3029 0010                 move.w     16(a1),d0
[0005b01c] 4eb9 0006 3f60            jsr        vs_clip
[0005b022] 70f7                      moveq.l    #-9,d0
[0005b024] c06a 0008                 and.w      8(a2),d0
[0005b028] 4fef 001e                 lea.l      30(a7),a7
[0005b02c] 4cdf 7c3c                 movem.l    (a7)+,d2-d5/a2-a6
[0005b030] 4e75                      rts

		.data

icn_count:
[000d4c8a]                           dc.b $00
[000d4c8b]                           dc.b $00
icn_chk_sel:
[000d4c8c]                           dc.b $00
[000d4c8d]                           dc.b $00
[000d4c8e]                           dc.b $00
[000d4c8f]                           dc.b $00
icn_chk_un:
[000d4c90]                           dc.b $00
[000d4c91]                           dc.b $00
[000d4c92]                           dc.b $00
[000d4c93]                           dc.b $00
icn_chk_dissel:
[000d4c94]                           dc.b $00
[000d4c95]                           dc.b $00
[000d4c96]                           dc.b $00
[000d4c97]                           dc.b $00
icn_chk_disun:
[000d4c98]                           dc.b $00
[000d4c99]                           dc.b $00
[000d4c9a]                           dc.b $00
[000d4c9b]                           dc.b $00
icn_rad_sel:
[000d4c9c]                           dc.b $00
[000d4c9d]                           dc.b $00
[000d4c9e]                           dc.b $00
[000d4c9f]                           dc.b $00
icn_rad_un:
[000d4ca0]                           dc.b $00
[000d4ca1]                           dc.b $00
[000d4ca2]                           dc.b $00
[000d4ca3]                           dc.b $00
icn_rad_dissel:
[000d4ca4]                           dc.b $00
[000d4ca5]                           dc.b $00
[000d4ca6]                           dc.b $00
[000d4ca7]                           dc.b $00
icn_rad_disun:
[000d4ca8]                           dc.b $00
[000d4ca9]                           dc.b $00
[000d4caa]                           dc.b $00
[000d4cab]                           dc.b $00
icn_mask:
[000d4cac]                           dc.b $00
[000d4cad]                           dc.b $00
[000d4cae]                           dc.b $00
[000d4caf]                           dc.b $00
icn_tmp:
[000d4cb0]                           dc.b $00
[000d4cb1]                           dc.b $00
[000d4cb2]                           dc.b $00
[000d4cb3]                           dc.b $00
save:
[000d4cb4]                           dc.w $2000
save:
[000d4cb6]                           dc.w $2000
rad:
[000d4cb8]                           dc.b $00
[000d4cb9]                           dc.b $00
[000d4cba]                           dc.b $00
[000d4cbb]                           dc.b $00
[000d4cbc]                           dc.b $00
[000d4cbd]                           dc.b $10
[000d4cbe]                           dc.b $00
[000d4cbf]                           dc.b $10
[000d4cc0]                           dc.b $00
[000d4cc1]                           dc.b $01
[000d4cc2]                           dc.b $00
[000d4cc3]                           dc.b $01
[000d4cc4]                           dc.b $00
[000d4cc5]                           dc.b $01
[000d4cc6]                           dc.b $00
[000d4cc7]                           dc.b $00
[000d4cc8]                           dc.b $00
[000d4cc9]                           dc.b $00
[000d4cca]                           dc.b $00
[000d4ccb]                           dc.b $00
col:
[000d4ccc]                           dc.b $00
[000d4ccd]                           dc.b $01
[000d4cce]                           dc.b $00
[000d4ccf]                           dc.b $00
col2:
[000d4cd0]                           dc.b $00
[000d4cd1]                           dc.b $00
[000d4cd2]                           dc.b $00
[000d4cd3]                           dc.b $01
[000d4cd4]                           dc.b $00
[000d4cd5]                           dc.b $00
