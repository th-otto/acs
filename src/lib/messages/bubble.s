
Aev_InitBubble:
[00056ab6] 554f                      subq.w     #2,a7
[00056ab8] 7008                      moveq.l    #8,d0
[00056aba] c079 0009 bfd2            and.w      $0009BFD2,d0
[00056ac0] 6706                      beq.s      Aev_InitBubble_1
[00056ac2] 4eb9 0005 6b34            jsr        FindBubbleGEM
Aev_InitBubble_1:
[00056ac8] 4eb9 0005 6b02            jsr        CreateBubbleString
[00056ace] 3e80                      move.w     d0,(a7)
[00056ad0] 4279 000d 4b22            clr.w      phase
[00056ad6] 3017                      move.w     (a7),d0
[00056ad8] 544f                      addq.w     #2,a7
[00056ada] 4e75                      rts

Aev_ExitBubble:
[00056adc] 33fc 0001 000d 4b22       move.w     #$0001,phase
[00056ae4] 2039 000d 4b1e            move.l     bubble_string,d0
[00056aea] 670c                      beq.s      Aev_ExitBubble_1
[00056aec] 2079 000d 4b1e            movea.l    bubble_string,a0
[00056af2] 4eb9 0004 7fa6            jsr        Ax_glfree
Aev_ExitBubble_1:
[00056af8] 42b9 000d 4b1e            clr.l      bubble_string
[00056afe] 7001                      moveq.l    #1,d0
[00056b00] 4e75                      rts

CreateBubbleString:
[00056b02] 2039 000d 4b1e            move.l     bubble_string,d0
[00056b08] 6626                      bne.s      CreateBubbleString_1
[00056b0a] 203c 0000 0100            move.l     #$00000100,d0
[00056b10] 4eb9 0004 7f44            jsr        Ax_glmalloc
[00056b16] 23c8 000d 4b1e            move.l     a0,bubble_string
[00056b1c] 2039 000d 4b1e            move.l     bubble_string,d0
[00056b22] 6604                      bne.s      CreateBubbleString_2
[00056b24] 4240                      clr.w      d0
[00056b26] 4e75                      rts
CreateBubbleString_2:
[00056b28] 2079 000d 4b1e            movea.l    bubble_string,a0
[00056b2e] 4210                      clr.b      (a0)
CreateBubbleString_1:
[00056b30] 7001                      moveq.l    #1,d0
[00056b32] 4e75                      rts

FindBubbleGEM:
[00056b34] 514f                      subq.w     #8,a7
[00056b36] 2279 000d 99d6            movea.l    _globl,a1
[00056b3c] 41f9 000d 4b24            lea.l      $000D4B24,a0
[00056b42] 4eb9 0006 a886            jsr        mt_appl_find
[00056b48] 3f40 0006                 move.w     d0,6(a7)
[00056b4c] 302f 0006                 move.w     6(a7),d0
[00056b50] 6a00 0088                 bpl        FindBubbleGEM_1
[00056b54] 2079 0010 1f12            movea.l    ACSblk,a0
[00056b5a] 3028 0238                 move.w     568(a0),d0
[00056b5e] 6700 007a                 beq.w      FindBubbleGEM_1
[00056b62] 41f9 000d 4b2d            lea.l      $000D4B2D,a0
[00056b68] 4eb9 0005 2908            jsr        Ash_getenv
[00056b6e] 2e88                      move.l     a0,(a7)
[00056b70] 2017                      move.l     (a7),d0
[00056b72] 6766                      beq.s      FindBubbleGEM_1
[00056b74] 2057                      movea.l    (a7),a0
[00056b76] 1010                      move.b     (a0),d0
[00056b78] 6760                      beq.s      FindBubbleGEM_1
[00056b7a] 2079 0010 1f12            movea.l    ACSblk,a0
[00056b80] 2f28 028c                 move.l     652(a0),-(a7)
[00056b84] 43f9 000d 4b37            lea.l      $000D4B37,a1
[00056b8a] 206f 0004                 movea.l    4(a7),a0
[00056b8e] 4eb9 0004 e614            jsr        Ash_prog
[00056b94] 584f                      addq.w     #4,a7
[00056b96] 426f 0004                 clr.w      4(a7)
[00056b9a] 6028                      bra.s      FindBubbleGEM_2
FindBubbleGEM_3:
[00056b9c] 2079 000d 99d6            movea.l    _globl,a0
[00056ba2] 7064                      moveq.l    #100,d0
[00056ba4] 4eb9 0006 af04            jsr        mt_evnt_timer
[00056baa] 2279 000d 99d6            movea.l    _globl,a1
[00056bb0] 41f9 000d 4b38            lea.l      $000D4B38,a0
[00056bb6] 4eb9 0006 a886            jsr        mt_appl_find
[00056bbc] 3f40 0006                 move.w     d0,6(a7)
[00056bc0] 526f 0004                 addq.w     #1,4(a7)
FindBubbleGEM_2:
[00056bc4] 3039 000d 4b22            move.w     phase,d0
[00056bca] 660e                      bne.s      FindBubbleGEM_1
[00056bcc] 302f 0006                 move.w     6(a7),d0
[00056bd0] 6a08                      bpl.s      FindBubbleGEM_1
[00056bd2] 0c6f 001e 0004            cmpi.w     #$001E,4(a7)
[00056bd8] 6dc2                      blt.s      FindBubbleGEM_3
FindBubbleGEM_1:
[00056bda] 302f 0006                 move.w     6(a7),d0
[00056bde] 504f                      addq.w     #8,a7
[00056be0] 4e75                      rts

Aev_GetAckBubbleGEM:
[00056be2] 514f                      subq.w     #8,a7
[00056be4] 2f48 0004                 move.l     a0,4(a7)
[00056be8] 206f 0004                 movea.l    4(a7),a0
[00056bec] 2e90                      move.l     (a0),(a7)
[00056bee] 2057                      movea.l    (a7),a0
[00056bf0] 2f08                      move.l     a0,-(a7)
[00056bf2] 6100 ff40                 bsr        FindBubbleGEM
[00056bf6] 205f                      movea.l    (a7)+,a0
[00056bf8] b068 0002                 cmp.w      2(a0),d0
[00056bfc] 6622                      bne.s      Aev_GetAckBubbleGEM_1
[00056bfe] 6100 ff02                 bsr        CreateBubbleString
[00056c02] 4a40                      tst.w      d0
[00056c04] 6716                      beq.s      Aev_GetAckBubbleGEM_2
[00056c06] 2057                      movea.l    (a7),a0
[00056c08] 2068 0006                 movea.l    6(a0),a0
[00056c0c] b1f9 000d 4b1e            cmpa.l     bubble_string,a0
[00056c12] 6608                      bne.s      Aev_GetAckBubbleGEM_2
[00056c14] 2079 000d 4b1e            movea.l    bubble_string,a0
[00056c1a] 4210                      clr.b      (a0)
Aev_GetAckBubbleGEM_2:
[00056c1c] 7001                      moveq.l    #1,d0
[00056c1e] 6002                      bra.s      Aev_GetAckBubbleGEM_3
Aev_GetAckBubbleGEM_1:
[00056c20] 4240                      clr.w      d0
Aev_GetAckBubbleGEM_3:
[00056c22] 504f                      addq.w     #8,a7
[00056c24] 4e75                      rts

Aev_GetRequestBubbleGE:
[00056c26] 594f                      subq.w     #4,a7
[00056c28] 2e88                      move.l     a0,(a7)
[00056c2a] 2057                      movea.l    (a7),a0
[00056c2c] 3228 0006                 move.w     6(a0),d1
[00056c30] 2057                      movea.l    (a7),a0
[00056c32] 3028 0004                 move.w     4(a0),d0
[00056c36] 2057                      movea.l    (a7),a0
[00056c38] 2068 000c                 movea.l    12(a0),a0
[00056c3c] 4eb9 0005 20dc            jsr        Awi_bubblegem
[00056c42] 584f                      addq.w     #4,a7
[00056c44] 4e75                      rts

Aev_ShowBubbleGEM:
[00056c46] 4fef ffe2                 lea.l      -30(a7),a7
[00056c4a] 2f48 001a                 move.l     a0,26(a7)
[00056c4e] 3f40 0018                 move.w     d0,24(a7)
[00056c52] 3f41 0016                 move.w     d1,22(a7)
[00056c56] 206f 001a                 movea.l    26(a7),a0
[00056c5a] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00056c60] 4a40                      tst.w      d0
[00056c62] 6706                      beq.s      Aev_ShowBubbleGEM_1
[00056c64] 7001                      moveq.l    #1,d0
[00056c66] 6000 00f6                 bra        Aev_ShowBubbleGEM_2
Aev_ShowBubbleGEM_1:
[00056c6a] 6100 fec8                 bsr        FindBubbleGEM
[00056c6e] 3f40 0014                 move.w     d0,20(a7)
[00056c72] 302f 0014                 move.w     20(a7),d0
[00056c76] 6b00 00e4                 bmi        Aev_ShowBubbleGEM_3
[00056c7a] 2079 0010 1f12            movea.l    ACSblk,a0
[00056c80] 302f 0014                 move.w     20(a7),d0
[00056c84] b050                      cmp.w      (a0),d0
[00056c86] 6700 00d4                 beq        Aev_ShowBubbleGEM_3
[00056c8a] 6100 fe76                 bsr        CreateBubbleString
[00056c8e] 4a40                      tst.w      d0
[00056c90] 6606                      bne.s      Aev_ShowBubbleGEM_4
[00056c92] 4240                      clr.w      d0
[00056c94] 6000 00c8                 bra        Aev_ShowBubbleGEM_2
Aev_ShowBubbleGEM_4:
[00056c98] 206f 001a                 movea.l    26(a7),a0
[00056c9c] 4eb9 0007 69b0            jsr        strlen
[00056ca2] 2f40 0010                 move.l     d0,16(a7)
[00056ca6] 0caf 0000 00ff 0010       cmpi.l     #$000000FF,16(a7)
[00056cae] 6f08                      ble.s      Aev_ShowBubbleGEM_5
[00056cb0] 2f7c 0000 00ff 0010       move.l     #$000000FF,16(a7)
Aev_ShowBubbleGEM_5:
[00056cb8] 302f 0012                 move.w     18(a7),d0
[00056cbc] 48c0                      ext.l      d0
[00056cbe] 226f 001a                 movea.l    26(a7),a1
[00056cc2] 2079 000d 4b1e            movea.l    bubble_string,a0
[00056cc8] 4eb9 0007 6a1a            jsr        strncpy
[00056cce] 302f 0012                 move.w     18(a7),d0
[00056cd2] 2079 000d 4b1e            movea.l    bubble_string,a0
[00056cd8] 4230 0000                 clr.b      0(a0,d0.w)
[00056cdc] 3ebc babb                 move.w     #$BABB,(a7)
[00056ce0] 2079 0010 1f12            movea.l    ACSblk,a0
[00056ce6] 3f50 0002                 move.w     (a0),2(a7)
[00056cea] 426f 0004                 clr.w      4(a7)
[00056cee] 302f 0018                 move.w     24(a7),d0
[00056cf2] 6b06                      bmi.s      Aev_ShowBubbleGEM_6
[00056cf4] 302f 0018                 move.w     24(a7),d0
[00056cf8] 600a                      bra.s      Aev_ShowBubbleGEM_7
Aev_ShowBubbleGEM_6:
[00056cfa] 2079 0010 1f12            movea.l    ACSblk,a0
[00056d00] 3028 0262                 move.w     610(a0),d0
Aev_ShowBubbleGEM_7:
[00056d04] 3f40 0006                 move.w     d0,6(a7)
[00056d08] 302f 0016                 move.w     22(a7),d0
[00056d0c] 6b06                      bmi.s      Aev_ShowBubbleGEM_8
[00056d0e] 302f 0016                 move.w     22(a7),d0
[00056d12] 600a                      bra.s      Aev_ShowBubbleGEM_9
Aev_ShowBubbleGEM_8:
[00056d14] 2079 0010 1f12            movea.l    ACSblk,a0
[00056d1a] 3028 0264                 move.w     612(a0),d0
Aev_ShowBubbleGEM_9:
[00056d1e] 3f40 0008                 move.w     d0,8(a7)
[00056d22] 4eb9 0005 f57c            jsr        A_isModDia
[00056d28] 4a40                      tst.w      d0
[00056d2a] 6704                      beq.s      Aev_ShowBubbleGEM_10
[00056d2c] 7001                      moveq.l    #1,d0
[00056d2e] 6002                      bra.s      Aev_ShowBubbleGEM_11
Aev_ShowBubbleGEM_10:
[00056d30] 4240                      clr.w      d0
Aev_ShowBubbleGEM_11:
[00056d32] 3f40 000e                 move.w     d0,14(a7)
[00056d36] 2f79 000d 4b1e 000a       move.l     bubble_string,10(a7)
[00056d3e] 74ff                      moveq.l    #-1,d2
[00056d40] 93c9                      suba.l     a1,a1
[00056d42] 41d7                      lea.l      (a7),a0
[00056d44] 7204                      moveq.l    #4,d1
[00056d46] 302f 0014                 move.w     20(a7),d0
[00056d4a] 4eb9 0005 3dfa            jsr        Aev_SendMsg
[00056d50] 4a40                      tst.w      d0
[00056d52] 6704                      beq.s      Aev_ShowBubbleGEM_12
[00056d54] 7001                      moveq.l    #1,d0
[00056d56] 6002                      bra.s      Aev_ShowBubbleGEM_13
Aev_ShowBubbleGEM_12:
[00056d58] 4240                      clr.w      d0
Aev_ShowBubbleGEM_13:
[00056d5a] 6002                      bra.s      Aev_ShowBubbleGEM_2
Aev_ShowBubbleGEM_3:
[00056d5c] 4240                      clr.w      d0
Aev_ShowBubbleGEM_2:
[00056d5e] 4fef 001e                 lea.l      30(a7),a7
[00056d62] 4e75                      rts

		.data

bubble_string:
[000d4b1e]                           dc.b $00
[000d4b1f]                           dc.b $00
[000d4b20]                           dc.b $00
[000d4b21]                           dc.b $00
phase:
[000d4b22]                           dc.w $ffff
[000d4b24]                           dc.b 'BUBBLE  ',0
[000d4b2d]                           dc.b 'BUBBLEGEM',0
[000d4b37]                           dc.b $00
[000d4b38]                           dc.b 'BUBBLE  ',0
		.even
