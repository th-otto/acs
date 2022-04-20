
A_cycle:
[0005bd1e] 48e7 3c3e                 movem.l    d2-d5/a2-a6,-(a7)
[0005bd22] 4fef ffbe                 lea.l      -66(a7),a7
[0005bd26] 246f 006a                 movea.l    106(a7),a2
[0005bd2a] 41f9 000d 4e48            lea.l      $000D4E48,a0
[0005bd30] 43ef 0008                 lea.l      8(a7),a1
[0005bd34] 12d8                      move.b     (a0)+,(a1)+
[0005bd36] 12d8                      move.b     (a0)+,(a1)+
[0005bd38] 47ef 0036                 lea.l      54(a7),a3
[0005bd3c] 49f9 0010 1f12            lea.l      ACSblk,a4
[0005bd42] 302a 0016                 move.w     22(a2),d0
[0005bd46] 6606                      bne.s      A_cycle_1
[0005bd48] 322a 0018                 move.w     24(a2),d1
[0005bd4c] 6738                      beq.s      A_cycle_2
A_cycle_1:
[0005bd4e] 36aa 0012                 move.w     18(a2),(a3)
[0005bd52] 376a 0014 0002            move.w     20(a2),2(a3)
[0005bd58] 302a 0012                 move.w     18(a2),d0
[0005bd5c] d06a 0016                 add.w      22(a2),d0
[0005bd60] 5340                      subq.w     #1,d0
[0005bd62] 3740 0004                 move.w     d0,4(a3)
[0005bd66] 322a 0014                 move.w     20(a2),d1
[0005bd6a] d26a 0018                 add.w      24(a2),d1
[0005bd6e] 5341                      subq.w     #1,d1
[0005bd70] 3741 0006                 move.w     d1,6(a3)
[0005bd74] 204b                      movea.l    a3,a0
[0005bd76] 2254                      movea.l    (a4),a1
[0005bd78] 3029 0010                 move.w     16(a1),d0
[0005bd7c] 7201                      moveq.l    #1,d1
[0005bd7e] 4eb9 0006 3f60            jsr        vs_clip
[0005bd84] 6010                      bra.s      A_cycle_3
A_cycle_2:
[0005bd86] 204b                      movea.l    a3,a0
[0005bd88] 4241                      clr.w      d1
[0005bd8a] 2254                      movea.l    (a4),a1
[0005bd8c] 3029 0010                 move.w     16(a1),d0
[0005bd90] 4eb9 0006 3f60            jsr        vs_clip
A_cycle_3:
[0005bd96] 302a 0008                 move.w     8(a2),d0
[0005bd9a] 322a 0006                 move.w     6(a2),d1
[0005bd9e] b340                      eor.w      d1,d0
[0005bda0] 6600 03e4                 bne        A_cycle_4
[0005bda4] 302a 0004                 move.w     4(a2),d0
[0005bda8] 48c0                      ext.l      d0
[0005bdaa] 2400                      move.l     d0,d2
[0005bdac] d482                      add.l      d2,d2
[0005bdae] d480                      add.l      d0,d2
[0005bdb0] e78a                      lsl.l      #3,d2
[0005bdb2] 2052                      movea.l    (a2),a0
[0005bdb4] d1c2                      adda.l     d2,a0
[0005bdb6] 2f68 000c 0004            move.l     12(a0),4(a7)
[0005bdbc] 226f 0004                 movea.l    4(a7),a1
[0005bdc0] 2ea9 0010                 move.l     16(a1),(a7)
[0005bdc4] 302a 000e                 move.w     14(a2),d0
[0005bdc8] 2054                      movea.l    (a4),a0
[0005bdca] 3228 0012                 move.w     18(a0),d1
[0005bdce] d241                      add.w      d1,d1
[0005bdd0] 9041                      sub.w      d1,d0
[0005bdd2] 5340                      subq.w     #1,d0
[0005bdd4] 4bef 000e                 lea.l      14(a7),a5
[0005bdd8] 322a 000a                 move.w     10(a2),d1
[0005bddc] 3f41 0032                 move.w     d1,50(a7)
[0005bde0] 3f41 0026                 move.w     d1,38(a7)
[0005bde4] 3f41 0022                 move.w     d1,34(a7)
[0005bde8] 3681                      move.w     d1,(a3)
[0005bdea] d240                      add.w      d0,d1
[0005bdec] 3f41 002e                 move.w     d1,46(a7)
[0005bdf0] 3f41 002a                 move.w     d1,42(a7)
[0005bdf4] 5241                      addq.w     #1,d1
[0005bdf6] 3b41 0010                 move.w     d1,16(a5)
[0005bdfa] 3b41 0004                 move.w     d1,4(a5)
[0005bdfe] 3a81                      move.w     d1,(a5)
[0005be00] 2054                      movea.l    (a4),a0
[0005be02] 3428 0012                 move.w     18(a0),d2
[0005be06] d442                      add.w      d2,d2
[0005be08] d242                      add.w      d2,d1
[0005be0a] 3b41 000c                 move.w     d1,12(a5)
[0005be0e] 3b41 0008                 move.w     d1,8(a5)
[0005be12] 3741 0004                 move.w     d1,4(a3)
[0005be16] 302a 000c                 move.w     12(a2),d0
[0005be1a] 3f40 002c                 move.w     d0,44(a7)
[0005be1e] 3b40 000a                 move.w     d0,10(a5)
[0005be22] 3f40 0028                 move.w     d0,40(a7)
[0005be26] 3b40 0006                 move.w     d0,6(a5)
[0005be2a] 3740 0002                 move.w     d0,2(a3)
[0005be2e] d06a 0010                 add.w      16(a2),d0
[0005be32] 3f40 0034                 move.w     d0,52(a7)
[0005be36] 3b40 0012                 move.w     d0,18(a5)
[0005be3a] 3f40 0030                 move.w     d0,48(a7)
[0005be3e] 3b40 000e                 move.w     d0,14(a5)
[0005be42] 3f40 0024                 move.w     d0,36(a7)
[0005be46] 3b40 0002                 move.w     d0,2(a5)
[0005be4a] 3740 0006                 move.w     d0,6(a3)
[0005be4e] 7201                      moveq.l    #1,d1
[0005be50] 3028 0010                 move.w     16(a0),d0
[0005be54] 4eb9 0006 4da0            jsr        vswr_mode
[0005be5a] 7201                      moveq.l    #1,d1
[0005be5c] 2054                      movea.l    (a4),a0
[0005be5e] 3028 0010                 move.w     16(a0),d0
[0005be62] 4eb9 0006 4e9a            jsr        vsl_width
[0005be68] 7201                      moveq.l    #1,d1
[0005be6a] 2054                      movea.l    (a4),a0
[0005be6c] 3028 0010                 move.w     16(a0),d0
[0005be70] 4eb9 0006 4df4            jsr        vsl_type
[0005be76] 4242                      clr.w      d2
[0005be78] 4241                      clr.w      d1
[0005be7a] 2054                      movea.l    (a4),a0
[0005be7c] 3028 0010                 move.w     16(a0),d0
[0005be80] 4eb9 0006 4f44            jsr        vsl_ends
[0005be86] 7201                      moveq.l    #1,d1
[0005be88] 2054                      movea.l    (a4),a0
[0005be8a] 3028 0010                 move.w     16(a0),d0
[0005be8e] 4eb9 0006 5390            jsr        vsf_interior
[0005be94] 7201                      moveq.l    #1,d1
[0005be96] 2054                      movea.l    (a4),a0
[0005be98] 3028 0010                 move.w     16(a0),d0
[0005be9c] 4eb9 0006 548c            jsr        vsf_perimeter
[0005bea2] 206f 0004                 movea.l    4(a7),a0
[0005bea6] 2028 0004                 move.l     4(a0),d0
[0005beaa] c0bc 0001 0000            and.l      #$00010000,d0
[0005beb0] 6700 00b2                 beq        A_cycle_5
[0005beb4] 2254                      movea.l    (a4),a1
[0005beb6] 0c69 0004 001c            cmpi.w     #$0004,28(a1)
[0005bebc] 6d00 00a6                 blt        A_cycle_5
[0005bec0] 2069 023c                 movea.l    572(a1),a0
[0005bec4] 3228 000e                 move.w     14(a0),d1
[0005bec8] c27c 0100                 and.w      #$0100,d1
[0005becc] 6600 0096                 bne        A_cycle_5
[0005bed0] 3029 0010                 move.w     16(a1),d0
[0005bed4] 7208                      moveq.l    #8,d1
[0005bed6] 4eb9 0006 5438            jsr        vsf_color
[0005bedc] 204b                      movea.l    a3,a0
[0005bede] 2254                      movea.l    (a4),a1
[0005bee0] 3029 0010                 move.w     16(a1),d0
[0005bee4] 4eb9 0006 455e            jsr        v_bar
[0005beea] 720f                      moveq.l    #15,d1
[0005beec] 206f 0004                 movea.l    4(a7),a0
[0005bef0] c268 0006                 and.w      6(a0),d1
[0005bef4] 2254                      movea.l    (a4),a1
[0005bef6] 3029 0010                 move.w     16(a1),d0
[0005befa] 4eb9 0006 4ef0            jsr        vsl_color
[0005bf00] 41ef 0022                 lea.l      34(a7),a0
[0005bf04] 7203                      moveq.l    #3,d1
[0005bf06] 2254                      movea.l    (a4),a1
[0005bf08] 3029 0010                 move.w     16(a1),d0
[0005bf0c] 4eb9 0006 4010            jsr        v_pline
[0005bf12] 204d                      movea.l    a5,a0
[0005bf14] 7203                      moveq.l    #3,d1
[0005bf16] 2254                      movea.l    (a4),a1
[0005bf18] 3029 0010                 move.w     16(a1),d0
[0005bf1c] 4eb9 0006 4010            jsr        v_pline
[0005bf22] 206f 0004                 movea.l    4(a7),a0
[0005bf26] 2228 0004                 move.l     4(a0),d1
[0005bf2a] e881                      asr.l      #4,d1
[0005bf2c] c27c 000f                 and.w      #$000F,d1
[0005bf30] 2254                      movea.l    (a4),a1
[0005bf32] 3029 0010                 move.w     16(a1),d0
[0005bf36] 4eb9 0006 4ef0            jsr        vsl_color
[0005bf3c] 41ef 002a                 lea.l      42(a7),a0
[0005bf40] 7203                      moveq.l    #3,d1
[0005bf42] 2254                      movea.l    (a4),a1
[0005bf44] 3029 0010                 move.w     16(a1),d0
[0005bf48] 4eb9 0006 4010            jsr        v_pline
[0005bf4e] 41ed 0008                 lea.l      8(a5),a0
[0005bf52] 7203                      moveq.l    #3,d1
[0005bf54] 2254                      movea.l    (a4),a1
[0005bf56] 3029 0010                 move.w     16(a1),d0
[0005bf5a] 4eb9 0006 4010            jsr        v_pline
[0005bf60] 6000 0082                 bra        A_cycle_6
A_cycle_5:
[0005bf64] 4241                      clr.w      d1
[0005bf66] 2054                      movea.l    (a4),a0
[0005bf68] 3028 0010                 move.w     16(a0),d0
[0005bf6c] 4eb9 0006 5438            jsr        vsf_color
[0005bf72] 204b                      movea.l    a3,a0
[0005bf74] 2254                      movea.l    (a4),a1
[0005bf76] 3029 0010                 move.w     16(a1),d0
[0005bf7a] 4eb9 0006 455e            jsr        v_bar
[0005bf80] 7201                      moveq.l    #1,d1
[0005bf82] 2054                      movea.l    (a4),a0
[0005bf84] 3028 0010                 move.w     16(a0),d0
[0005bf88] 4eb9 0006 4ef0            jsr        vsl_color
[0005bf8e] 41ef 0022                 lea.l      34(a7),a0
[0005bf92] 7203                      moveq.l    #3,d1
[0005bf94] 2254                      movea.l    (a4),a1
[0005bf96] 3029 0010                 move.w     16(a1),d0
[0005bf9a] 4eb9 0006 4010            jsr        v_pline
[0005bfa0] 41ef 002e                 lea.l      46(a7),a0
[0005bfa4] 7202                      moveq.l    #2,d1
[0005bfa6] 2254                      movea.l    (a4),a1
[0005bfa8] 3029 0010                 move.w     16(a1),d0
[0005bfac] 4eb9 0006 4010            jsr        v_pline
[0005bfb2] 342f 002e                 move.w     46(a7),d2
[0005bfb6] 322f 0030                 move.w     48(a7),d1
[0005bfba] 302f 002c                 move.w     44(a7),d0
[0005bfbe] 4eb9 0004 42e2            jsr        dotted_yline
[0005bfc4] 7201                      moveq.l    #1,d1
[0005bfc6] 2054                      movea.l    (a4),a0
[0005bfc8] 3028 0010                 move.w     16(a0),d0
[0005bfcc] 4eb9 0006 4df4            jsr        vsl_type
[0005bfd2] 41ed 0004                 lea.l      4(a5),a0
[0005bfd6] 7204                      moveq.l    #4,d1
[0005bfd8] 2254                      movea.l    (a4),a1
[0005bfda] 3029 0010                 move.w     16(a1),d0
[0005bfde] 4eb9 0006 4010            jsr        v_pline
A_cycle_6:
[0005bfe4] 362a 0010                 move.w     16(a2),d3
[0005bfe8] 2054                      movea.l    (a4),a0
[0005bfea] 9668 0014                 sub.w      20(a0),d3
[0005bfee] e243                      asr.w      #1,d3
[0005bff0] d66a 000c                 add.w      12(a2),d3
[0005bff4] 4241                      clr.w      d1
[0005bff6] 3028 0010                 move.w     16(a0),d0
[0005bffa] 4eb9 0006 51c2            jsr        vst_rotation
[0005c000] 7201                      moveq.l    #1,d1
[0005c002] 2054                      movea.l    (a4),a0
[0005c004] 3028 0010                 move.w     16(a0),d0
[0005c008] 4eb9 0006 526a            jsr        vst_color
[0005c00e] 4bef 000c                 lea.l      12(a7),a5
[0005c012] 224d                      movea.l    a5,a1
[0005c014] 204d                      movea.l    a5,a0
[0005c016] 7405                      moveq.l    #5,d2
[0005c018] 4241                      clr.w      d1
[0005c01a] 2c54                      movea.l    (a4),a6
[0005c01c] 302e 0010                 move.w     16(a6),d0
[0005c020] 4eb9 0006 5312            jsr        vst_alignment
[0005c026] 4241                      clr.w      d1
[0005c028] 2054                      movea.l    (a4),a0
[0005c02a] 3028 0010                 move.w     16(a0),d0
[0005c02e] 4eb9 0006 52be            jsr        vst_effects
[0005c034] 2054                      movea.l    (a4),a0
[0005c036] 3228 0290                 move.w     656(a0),d1
[0005c03a] 3028 0010                 move.w     16(a0),d0
[0005c03e] 4eb9 0006 5216            jsr        vst_font
[0005c044] 4855                      pea.l      (a5)
[0005c046] 486f 000e                 pea.l      14(a7)
[0005c04a] 224d                      movea.l    a5,a1
[0005c04c] 204d                      movea.l    a5,a0
[0005c04e] 2c54                      movea.l    (a4),a6
[0005c050] 322e 0292                 move.w     658(a6),d1
[0005c054] 302e 0010                 move.w     16(a6),d0
[0005c058] 4eb9 0006 50a0            jsr        vst_height
[0005c05e] 504f                      addq.w     #8,a7
[0005c060] 7202                      moveq.l    #2,d1
[0005c062] 2054                      movea.l    (a4),a0
[0005c064] 3028 0010                 move.w     16(a0),d0
[0005c068] 4eb9 0006 4da0            jsr        vswr_mode
[0005c06e] 7201                      moveq.l    #1,d1
[0005c070] 2054                      movea.l    (a4),a0
[0005c072] 3028 0010                 move.w     16(a0),d0
[0005c076] 4eb9 0006 4ef0            jsr        vsl_color
[0005c07c] 3a2a 000a                 move.w     10(a2),d5
[0005c080] da6a 000e                 add.w      14(a2),d5
[0005c084] 2054                      movea.l    (a4),a0
[0005c086] 9a68 0012                 sub.w      18(a0),d5
[0005c08a] 70fe                      moveq.l    #-2,d0
[0005c08c] d068 0012                 add.w      18(a0),d0
[0005c090] e240                      asr.w      #1,d0
[0005c092] 9a40                      sub.w      d0,d5
[0005c094] 5345                      subq.w     #1,d5
[0005c096] 226f 0004                 movea.l    4(a7),a1
[0005c09a] 2829 0004                 move.l     4(a1),d4
[0005c09e] e084                      asr.l      #8,d4
[0005c0a0] 4a04                      tst.b      d4
[0005c0a2] 6704                      beq.s      A_cycle_7
[0005c0a4] 1f44 0008                 move.b     d4,8(a7)
A_cycle_7:
[0005c0a8] 41ef 0008                 lea.l      8(a7),a0
[0005c0ac] 3403                      move.w     d3,d2
[0005c0ae] 3205                      move.w     d5,d1
[0005c0b0] 2254                      movea.l    (a4),a1
[0005c0b2] 3029 0010                 move.w     16(a1),d0
[0005c0b6] 4eb9 0006 41e0            jsr        v_gtext
[0005c0bc] 7020                      moveq.l    #32,d0
[0005c0be] c06a 0008                 and.w      8(a2),d0
[0005c0c2] 6746                      beq.s      A_cycle_8
[0005c0c4] 7201                      moveq.l    #1,d1
[0005c0c6] d26a 000a                 add.w      10(a2),d1
[0005c0ca] 3681                      move.w     d1,(a3)
[0005c0cc] 342a 000c                 move.w     12(a2),d2
[0005c0d0] d46a 0010                 add.w      16(a2),d2
[0005c0d4] 5242                      addq.w     #1,d2
[0005c0d6] 3742 0002                 move.w     d2,2(a3)
[0005c0da] 3742 0006                 move.w     d2,6(a3)
[0005c0de] 3a2a 000a                 move.w     10(a2),d5
[0005c0e2] da6a 000e                 add.w      14(a2),d5
[0005c0e6] 5245                      addq.w     #1,d5
[0005c0e8] 3745 0004                 move.w     d5,4(a3)
[0005c0ec] 3745 0008                 move.w     d5,8(a3)
[0005c0f0] 7401                      moveq.l    #1,d2
[0005c0f2] d46a 000c                 add.w      12(a2),d2
[0005c0f6] 3742 000a                 move.w     d2,10(a3)
[0005c0fa] 204b                      movea.l    a3,a0
[0005c0fc] 2254                      movea.l    (a4),a1
[0005c0fe] 3029 0010                 move.w     16(a1),d0
[0005c102] 7203                      moveq.l    #3,d1
[0005c104] 4eb9 0006 4010            jsr        v_pline
A_cycle_8:
[0005c10a] 2057                      movea.l    (a7),a0
[0005c10c] 2010                      move.l     (a0),d0
[0005c10e] 6776                      beq.s      A_cycle_4
[0005c110] 7202                      moveq.l    #2,d1
[0005c112] 2254                      movea.l    (a4),a1
[0005c114] 3029 0010                 move.w     16(a1),d0
[0005c118] 4eb9 0006 4da0            jsr        vswr_mode
[0005c11e] 3a2a 000e                 move.w     14(a2),d5
[0005c122] 48c5                      ext.l      d5
[0005c124] 2054                      movea.l    (a4),a0
[0005c126] 8be8 0012                 divs.w     18(a0),d5
[0005c12a] 5545                      subq.w     #2,d5
[0005c12c] 4a45                      tst.w      d5
[0005c12e] 6a02                      bpl.s      A_cycle_9
[0005c130] 4245                      clr.w      d5
A_cycle_9:
[0005c132] 3005                      move.w     d5,d0
[0005c134] 48c0                      ext.l      d0
[0005c136] 2f00                      move.l     d0,-(a7)
[0005c138] 206f 0004                 movea.l    4(a7),a0
[0005c13c] 2050                      movea.l    (a0),a0
[0005c13e] 4eb9 0007 69b0            jsr        strlen
[0005c144] 221f                      move.l     (a7)+,d1
[0005c146] b280                      cmp.l      d0,d1
[0005c148] 6424                      bcc.s      A_cycle_10
[0005c14a] 2057                      movea.l    (a7),a0
[0005c14c] 2a50                      movea.l    (a0),a5
[0005c14e] dac5                      adda.w     d5,a5
[0005c150] 1815                      move.b     (a5),d4
[0005c152] 4215                      clr.b      (a5)
[0005c154] 2050                      movea.l    (a0),a0
[0005c156] 3403                      move.w     d3,d2
[0005c158] 7201                      moveq.l    #1,d1
[0005c15a] d26a 000a                 add.w      10(a2),d1
[0005c15e] 2254                      movea.l    (a4),a1
[0005c160] 3029 0010                 move.w     16(a1),d0
[0005c164] 4eb9 0006 41e0            jsr        v_gtext
[0005c16a] 1a84                      move.b     d4,(a5)
[0005c16c] 6018                      bra.s      A_cycle_4
A_cycle_10:
[0005c16e] 2057                      movea.l    (a7),a0
[0005c170] 2050                      movea.l    (a0),a0
[0005c172] 3403                      move.w     d3,d2
[0005c174] 7201                      moveq.l    #1,d1
[0005c176] d26a 000a                 add.w      10(a2),d1
[0005c17a] 2254                      movea.l    (a4),a1
[0005c17c] 3029 0010                 move.w     16(a1),d0
[0005c180] 4eb9 0006 41e0            jsr        v_gtext
A_cycle_4:
[0005c186] 204b                      movea.l    a3,a0
[0005c188] 4241                      clr.w      d1
[0005c18a] 2254                      movea.l    (a4),a1
[0005c18c] 3029 0010                 move.w     16(a1),d0
[0005c190] 4eb9 0006 3f60            jsr        vs_clip
[0005c196] 70ee                      moveq.l    #-18,d0
[0005c198] c06a 0008                 and.w      8(a2),d0
[0005c19c] 4fef 0042                 lea.l      66(a7),a7
[0005c1a0] 4cdf 7c3c                 movem.l    (a7)+,d2-d5/a2-a6
[0005c1a4] 4e75                      rts

set:
[0005c1a6] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0005c1aa] 2448                      movea.l    a0,a2
[0005c1ac] 2649                      movea.l    a1,a3
[0005c1ae] 2050                      movea.l    (a0),a0
[0005c1b0] 4eb9 0004 7d6c            jsr        Ax_ifree
[0005c1b6] 284b                      movea.l    a3,a4
[0005c1b8] 4243                      clr.w      d3
[0005c1ba] 6004                      bra.s      set_1
set_2:
[0005c1bc] 524c                      addq.w     #1,a4
[0005c1be] 5243                      addq.w     #1,d3
set_1:
[0005c1c0] 1014                      move.b     (a4),d0
[0005c1c2] 4880                      ext.w      d0
[0005c1c4] 41f9 000d 4e4b            lea.l      $000D4E4B,a0
[0005c1ca] 4eb9 0007 68ce            jsr        strchr
[0005c1d0] 2008                      move.l     a0,d0
[0005c1d2] 67e8                      beq.s      set_2
[0005c1d4] 7001                      moveq.l    #1,d0
[0005c1d6] d043                      add.w      d3,d0
[0005c1d8] 48c0                      ext.l      d0
[0005c1da] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005c1e0] 2848                      movea.l    a0,a4
[0005c1e2] 4a43                      tst.w      d3
[0005c1e4] 6f0c                      ble.s      set_3
[0005c1e6] 3003                      move.w     d3,d0
[0005c1e8] 48c0                      ext.l      d0
[0005c1ea] 224b                      movea.l    a3,a1
[0005c1ec] 4eb9 0007 6a1a            jsr        strncpy
set_3:
[0005c1f2] 4234 3000                 clr.b      0(a4,d3.w)
[0005c1f6] 248c                      move.l     a4,(a2)
[0005c1f8] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0005c1fc] 4e75                      rts

next_entry:
[0005c1fe] 1010                      move.b     (a0),d0
[0005c200] 671c                      beq.s      next_entry_1
[0005c202] b03c 005d                 cmp.b      #$5D,d0
[0005c206] 6608                      bne.s      next_entry_2
[0005c208] 5248                      addq.w     #1,a0
[0005c20a] 0c10 007c                 cmpi.b     #$7C,(a0)
[0005c20e] 660e                      bne.s      next_entry_1
next_entry_2:
[0005c210] 0c10 007c                 cmpi.b     #$7C,(a0)
[0005c214] 6604                      bne.s      next_entry_3
[0005c216] 5248                      addq.w     #1,a0
[0005c218] 4e75                      rts
next_entry_3:
[0005c21a] 5248                      addq.w     #1,a0
[0005c21c] 60e0                      bra.s      next_entry
next_entry_1:
[0005c21e] 4e75                      rts

next:
[0005c220] 2f0a                      move.l     a2,-(a7)
[0005c222] 2f0b                      move.l     a3,-(a7)
[0005c224] 2448                      movea.l    a0,a2
[0005c226] 206a 0004                 movea.l    4(a2),a0
[0005c22a] 6100 ffd2                 bsr.w      next_entry
[0005c22e] 2648                      movea.l    a0,a3
[0005c230] 1010                      move.b     (a0),d0
[0005c232] 660e                      bne.s      next_1
[0005c234] 266a 0008                 movea.l    8(a2),a3
[0005c238] 6008                      bra.s      next_1
next_2:
[0005c23a] 204b                      movea.l    a3,a0
[0005c23c] 6100 ffc0                 bsr.w      next_entry
[0005c240] 2648                      movea.l    a0,a3
next_1:
[0005c242] 0c13 005b                 cmpi.b     #$5B,(a3)
[0005c246] 67f2                      beq.s      next_2
[0005c248] 254b 0004                 move.l     a3,4(a2)
[0005c24c] 224b                      movea.l    a3,a1
[0005c24e] 204a                      movea.l    a2,a0
[0005c250] 6100 ff54                 bsr        set
[0005c254] 265f                      movea.l    (a7)+,a3
[0005c256] 245f                      movea.l    (a7)+,a2
[0005c258] 4e75                      rts

make_popup:
[0005c25a] 2f0a                      move.l     a2,-(a7)
[0005c25c] 2448                      movea.l    a0,a2
[0005c25e] 4290                      clr.l      (a0)
[0005c260] 257c 000d 4e4a 0004       move.l     #$000D4E4A,4(a2)
[0005c268] 6100 ffb6                 bsr.w      next
[0005c26c] 245f                      movea.l    (a7)+,a2
[0005c26e] 4e75                      rts

cyc_getindex:
[0005c270] 48e7 1838                 movem.l    d3-d4/a2-a4,-(a7)
[0005c274] 2448                      movea.l    a0,a2
[0005c276] 2849                      movea.l    a1,a4
[0005c278] 2050                      movea.l    (a0),a0
[0005c27a] 4eb9 0007 69b0            jsr        strlen
[0005c280] 2600                      move.l     d0,d3
[0005c282] 266a 0008                 movea.l    8(a2),a3
[0005c286] 4244                      clr.w      d4
cyc_getindex_6:
[0005c288] 0c13 005b                 cmpi.b     #$5B,(a3)
[0005c28c] 6724                      beq.s      cyc_getindex_1
[0005c28e] 3003                      move.w     d3,d0
[0005c290] 48c0                      ext.l      d0
[0005c292] 224b                      movea.l    a3,a1
[0005c294] 2052                      movea.l    (a2),a0
[0005c296] 4eb9 0007 69fc            jsr        strncmp
[0005c29c] 4a40                      tst.w      d0
[0005c29e] 6610                      bne.s      cyc_getindex_2
[0005c2a0] 1033 3000                 move.b     0(a3,d3.w),d0
[0005c2a4] 6706                      beq.s      cyc_getindex_3
[0005c2a6] b03c 007c                 cmp.b      #$7C,d0
[0005c2aa] 6604                      bne.s      cyc_getindex_2
cyc_getindex_3:
[0005c2ac] 3884                      move.w     d4,(a4)
[0005c2ae] 601c                      bra.s      cyc_getindex_4
cyc_getindex_2:
[0005c2b0] 5244                      addq.w     #1,d4
cyc_getindex_1:
[0005c2b2] 707c                      moveq.l    #124,d0
[0005c2b4] 204b                      movea.l    a3,a0
[0005c2b6] 4eb9 0007 68ce            jsr        strchr
[0005c2bc] 2648                      movea.l    a0,a3
[0005c2be] 200b                      move.l     a3,d0
[0005c2c0] 6606                      bne.s      cyc_getindex_5
[0005c2c2] 38bc ffff                 move.w     #$FFFF,(a4)
[0005c2c6] 6004                      bra.s      cyc_getindex_4
cyc_getindex_5:
[0005c2c8] 524b                      addq.w     #1,a3
[0005c2ca] 60bc                      bra.s      cyc_getindex_6
cyc_getindex_4:
[0005c2cc] 4cdf 1c18                 movem.l    (a7)+,d3-d4/a2-a4
[0005c2d0] 4e75                      rts

cyc_index:
[0005c2d2] 2f03                      move.l     d3,-(a7)
[0005c2d4] 2f0a                      move.l     a2,-(a7)
[0005c2d6] 2448                      movea.l    a0,a2
[0005c2d8] 7601                      moveq.l    #1,d3
[0005c2da] d651                      add.w      (a1),d3
[0005c2dc] 257c 000d 4e4a 0004       move.l     #$000D4E4A,4(a2)
[0005c2e4] 6006                      bra.s      cyc_index_1
cyc_index_2:
[0005c2e6] 204a                      movea.l    a2,a0
[0005c2e8] 6100 ff36                 bsr        next
cyc_index_1:
[0005c2ec] 3003                      move.w     d3,d0
[0005c2ee] 5343                      subq.w     #1,d3
[0005c2f0] 4a40                      tst.w      d0
[0005c2f2] 6ef2                      bgt.s      cyc_index_2
[0005c2f4] 245f                      movea.l    (a7)+,a2
[0005c2f6] 261f                      move.l     (a7)+,d3
[0005c2f8] 4e75                      rts

Auo_cycle_14:
Auo_cycle_9:
Auo_cycle:
[0005c2fa] 48e7 0038                 movem.l    a2-a4,-(a7)
[0005c2fe] 594f                      subq.w     #4,a7
[0005c300] 2849                      movea.l    a1,a4
[0005c302] 2468 000c                 movea.l    12(a0),a2
[0005c306] 266a 0010                 movea.l    16(a2),a3
[0005c30a] 3200                      move.w     d0,d1
[0005c30c] b27c 0009                 cmp.w      #$0009,d1
[0005c310] 6700 00de                 beq        Auo_cycle_1
[0005c314] 6e20                      bgt.s      Auo_cycle_2
[0005c316] b27c 0006                 cmp.w      #$0006,d1
[0005c31a] 6200 014a                 bhi        Auo_cycle_3
[0005c31e] d241                      add.w      d1,d1
[0005c320] 323b 1006                 move.w     $0005C328(pc,d1.w),d1
[0005c324] 4efb 1002                 jmp        $0005C328(pc,d1.w)
J52:
[0005c328] 013e                      dc.w $013e   ; Auo_cycle_3-J52
[0005c32a] 003c                      dc.w $003c   ; Auo_cycle_4-J52
[0005c32c] 0094                      dc.w $0094   ; Auo_cycle_5-J52
[0005c32e] 00dc                      dc.w $00dc   ; Auo_cycle_6-J52
[0005c330] 00bc                      dc.w $00bc   ; Auo_cycle_7-J52
[0005c332] 00e0                      dc.w $00e0   ; Auo_cycle_8-J52
[0005c334] 00e0                      dc.w $00e0   ; Auo_cycle_8-J52
Auo_cycle_2:
[0005c336] b27c                      dc.w $b27c   ; Auo_cycle_9-J52
[0005c338] 0190                      dc.w $0190   ; Auo_cycle_10-J52
[0005c33a] 6700                      dc.w $6700   ; Auo_cycle_11-J52
[0005c33c] 00fa                      dc.w $00fa   ; Auo_cycle_12-J52
[0005c33e] 6e12                      dc.w $6e12   ; Auo_cycle_13-J52
[0005c340] 927c                      dc.w $927c   ; Auo_cycle_14-J52
[0005c342] 0013 6700                 ori.b      #$00,(a3)
[0005c346] 0124                      btst       d0,-(a4)
[0005c348] 5341                      subq.w     #1,d1
[0005c34a] 6700 011e                 beq        Auo_cycle_15
[0005c34e] 6000 0116                 bra        Auo_cycle_3
[0005c352] 927c 0191                 sub.w      #$0191,d1
[0005c356] 6700 00ca                 beq        Auo_cycle_12
[0005c35a] 5341                      subq.w     #1,d1
[0005c35c] 6700 00ce                 beq        Auo_cycle_16
[0005c360] 6000 0104                 bra        Auo_cycle_3
Auo_cycle_4:
[0005c364] 7016                      moveq.l    #22,d0
[0005c366] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005c36c] 2648                      movea.l    a0,a3
[0005c36e] 200b                      move.l     a3,d0
[0005c370] 6742                      beq.s      Auo_cycle_17
[0005c372] 7216                      moveq.l    #22,d1
[0005c374] 4240                      clr.w      d0
[0005c376] 4eb9 0007 712e            jsr        memset
[0005c37c] 202a 000c                 move.l     12(a2),d0
[0005c380] 670e                      beq.s      Auo_cycle_18
[0005c382] 2040                      movea.l    d0,a0
[0005c384] 4eb9 0004 36d6            jsr        Ast_create
[0005c38a] 2748 0008                 move.l     a0,8(a3)
[0005c38e] 6010                      bra.s      Auo_cycle_19
Auo_cycle_18:
[0005c390] 41f9 000d 4e4a            lea.l      $000D4E4A,a0
[0005c396] 4eb9 0004 36d6            jsr        Ast_create
[0005c39c] 2748 0008                 move.l     a0,8(a3)
Auo_cycle_19:
[0005c3a0] 202b 0008                 move.l     8(a3),d0
[0005c3a4] 670e                      beq.s      Auo_cycle_17
[0005c3a6] 254b 0010                 move.l     a3,16(a2)
Auo_cycle_22:
[0005c3aa] 204b                      movea.l    a3,a0
[0005c3ac] 6100 feac                 bsr        make_popup
[0005c3b0] 6000 00b8                 bra        Auo_cycle_15
Auo_cycle_17:
[0005c3b4] 38bc ffff                 move.w     #$FFFF,(a4)
[0005c3b8] 6000 00b0                 bra        Auo_cycle_15
Auo_cycle_5:
[0005c3bc] 202b 0008                 move.l     8(a3),d0
[0005c3c0] 6708                      beq.s      Auo_cycle_20
[0005c3c2] 2040                      movea.l    d0,a0
[0005c3c4] 4eb9 0004 371c            jsr        Ast_delete
Auo_cycle_20:
[0005c3ca] 2013                      move.l     (a3),d0
[0005c3cc] 6708                      beq.s      Auo_cycle_21
[0005c3ce] 2040                      movea.l    d0,a0
[0005c3d0] 4eb9 0004 7e26            jsr        Ax_free
Auo_cycle_21:
[0005c3d6] 206a 0010                 movea.l    16(a2),a0
[0005c3da] 4eb9 0004 7e26            jsr        Ax_free
[0005c3e0] 6000 0088                 bra        Auo_cycle_15
Auo_cycle_7:
[0005c3e4] 224c                      movea.l    a4,a1
[0005c3e6] 204b                      movea.l    a3,a0
[0005c3e8] 6100 fdbc                 bsr        set
[0005c3ec] 6000 007c                 bra.w      Auo_cycle_15
Auo_cycle_1:
[0005c3f0] 204c                      movea.l    a4,a0
[0005c3f2] 2750 000c                 move.l     (a0),12(a3)
[0005c3f6] 2768 0004 0010            move.l     4(a0),16(a3)
[0005c3fc] 3768 0008 0014            move.w     8(a0),20(a3)
[0005c402] 6066                      bra.s      Auo_cycle_15
Auo_cycle_6:
[0005c404] 2893                      move.l     (a3),(a4)
[0005c406] 6062                      bra.s      Auo_cycle_15
Auo_cycle_8:
[0005c408] 2eab 000c                 move.l     12(a3),(a7)
[0005c40c] 2017                      move.l     (a7),d0
[0005c40e] 675a                      beq.s      Auo_cycle_15
[0005c410] 72ff                      moveq.l    #-1,d1
[0005c412] 302b 0014                 move.w     20(a3),d0
[0005c416] 2057                      movea.l    (a7),a0
[0005c418] 2257                      movea.l    (a7),a1
[0005c41a] 2269 0066                 movea.l    102(a1),a1
[0005c41e] 4e91                      jsr        (a1)
[0005c420] 6048                      bra.s      Auo_cycle_15
Auo_cycle_12:
[0005c422] 224c                      movea.l    a4,a1
[0005c424] 204b                      movea.l    a3,a0
[0005c426] 6100 feaa                 bsr        cyc_index
[0005c42a] 603e                      bra.s      Auo_cycle_15
Auo_cycle_16:
[0005c42c] 224c                      movea.l    a4,a1
[0005c42e] 204b                      movea.l    a3,a0
[0005c430] 6100 fe3e                 bsr        cyc_getindex
[0005c434] 6034                      bra.s      Auo_cycle_15
[0005c436] 206b 0008                 movea.l    8(a3),a0
[0005c43a] 4eb9 0004 7e26            jsr        Ax_free
[0005c440] 204c                      movea.l    a4,a0
[0005c442] 4eb9 0004 36d6            jsr        Ast_create
[0005c448] 2748 0008                 move.l     a0,8(a3)
[0005c44c] 2008                      move.l     a0,d0
[0005c44e] 6600 ff5a                 bne        Auo_cycle_22
[0005c452] 41f9 000d 4e4a            lea.l      $000D4E4A,a0
[0005c458] 4eb9 0004 36d6            jsr        Ast_create
[0005c45e] 2748 0008                 move.l     a0,8(a3)
[0005c462] 6000 ff46                 bra        Auo_cycle_22
Auo_cycle_3:
[0005c466] 4240                      clr.w      d0
[0005c468] 6002                      bra.s      Auo_cycle_23
Auo_cycle_15:
[0005c46a] 7001                      moveq.l    #1,d0
Auo_cycle_23:
[0005c46c] 584f                      addq.w     #4,a7
[0005c46e] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0005c472] 4e75                      rts
Auo_cycle_10:
Auo_cycle_11:
Auo_cycle_13:

count_it:
[0005c474] 2f0a                      move.l     a2,-(a7)
[0005c476] 2f0b                      move.l     a3,-(a7)
[0005c478] 266f 000c                 movea.l    12(a7),a3
[0005c47c] 2448                      movea.l    a0,a2
[0005c47e] 32bc 0001                 move.w     #$0001,(a1)
[0005c482] 601a                      bra.s      count_it_1
count_it_4:
[0005c484] 0c12 007c                 cmpi.b     #$7C,(a2)
[0005c488] 6602                      bne.s      count_it_2
[0005c48a] 5251                      addq.w     #1,(a1)
count_it_2:
[0005c48c] 0c12 005d                 cmpi.b     #$5D,(a2)
[0005c490] 660a                      bne.s      count_it_3
[0005c492] 0c2a 007c 0001            cmpi.b     #$7C,1(a2)
[0005c498] 6702                      beq.s      count_it_3
[0005c49a] 5251                      addq.w     #1,(a1)
count_it_3:
[0005c49c] 524a                      addq.w     #1,a2
count_it_1:
[0005c49e] 1012                      move.b     (a2),d0
[0005c4a0] 66e2                      bne.s      count_it_4
[0005c4a2] 2448                      movea.l    a0,a2
[0005c4a4] 7001                      moveq.l    #1,d0
[0005c4a6] d051                      add.w      (a1),d0
[0005c4a8] 3680                      move.w     d0,(a3)
[0005c4aa] 600a                      bra.s      count_it_5
count_it_7:
[0005c4ac] 0c12 005b                 cmpi.b     #$5B,(a2)
[0005c4b0] 6602                      bne.s      count_it_6
[0005c4b2] 5253                      addq.w     #1,(a3)
count_it_6:
[0005c4b4] 524a                      addq.w     #1,a2
count_it_5:
[0005c4b6] 1012                      move.b     (a2),d0
[0005c4b8] 66f2                      bne.s      count_it_7
[0005c4ba] 265f                      movea.l    (a7)+,a3
[0005c4bc] 245f                      movea.l    (a7)+,a2
[0005c4be] 4e75                      rts

make_panel:
[0005c4c0] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0005c4c4] 4fef fff2                 lea.l      -14(a7),a7
[0005c4c8] 2f48 000a                 move.l     a0,10(a7)
[0005c4cc] 2449                      movea.l    a1,a2
[0005c4ce] 3f40 0008                 move.w     d0,8(a7)
[0005c4d2] 2c6f 003a                 movea.l    58(a7),a6
[0005c4d6] 286f 0042                 movea.l    66(a7),a4
[0005c4da] 3e01                      move.w     d1,d7
[0005c4dc] 3602                      move.w     d2,d3
[0005c4de] 3f51 0002                 move.w     (a1),2(a7)
[0005c4e2] 322f 0002                 move.w     2(a7),d1
[0005c4e6] 48c1                      ext.l      d1
[0005c4e8] 2401                      move.l     d1,d2
[0005c4ea] d482                      add.l      d2,d2
[0005c4ec] d481                      add.l      d1,d2
[0005c4ee] e78a                      lsl.l      #3,d2
[0005c4f0] d1c2                      adda.l     d2,a0
[0005c4f2] 2f48 0004                 move.l     a0,4(a7)
[0005c4f6] 70ff                      moveq.l    #-1,d0
[0005c4f8] d06f 0002                 add.w      2(a7),d0
[0005c4fc] 3080                      move.w     d0,(a0)
[0005c4fe] 7401                      moveq.l    #1,d2
[0005c500] d46f 0002                 add.w      2(a7),d2
[0005c504] 3142 0002                 move.w     d2,2(a0)
[0005c508] 317c 0014 0006            move.w     #$0014,6(a0)
[0005c50e] 317c 0080 0008            move.w     #$0080,8(a0)
[0005c514] 317c 0020 000a            move.w     #$0020,10(a0)
[0005c51a] 217c 00ff 1001 000c       move.l     #$00FF1001,12(a0)
[0005c522] 93c9                      suba.l     a1,a1
[0005c524] 3149 0012                 move.w     a1,18(a0)
[0005c528] 3149 0010                 move.w     a1,16(a0)
[0005c52c] 316f 0008 0014            move.w     8(a7),20(a0)
[0005c532] 4245                      clr.w      d5
[0005c534] 5252                      addq.w     #1,(a2)
[0005c536] 3c05                      move.w     d5,d6
[0005c538] 6000 0168                 bra        make_panel_1
make_panel_21:
[0005c53c] 3e92                      move.w     (a2),(a7)
[0005c53e] 3217                      move.w     (a7),d1
[0005c540] 48c1                      ext.l      d1
[0005c542] 2001                      move.l     d1,d0
[0005c544] d080                      add.l      d0,d0
[0005c546] d081                      add.l      d1,d0
[0005c548] e788                      lsl.l      #3,d0
[0005c54a] 2a6f 000a                 movea.l    10(a7),a5
[0005c54e] dbc0                      adda.l     d0,a5
[0005c550] 5252                      addq.w     #1,(a2)
[0005c552] 2056                      movea.l    (a6),a0
[0005c554] 0c10 005b                 cmpi.b     #$5B,(a0)
[0005c558] 6622                      bne.s      make_panel_2
[0005c55a] 3412                      move.w     (a2),d2
[0005c55c] 3b42 0004                 move.w     d2,4(a5)
[0005c560] 3b42 0002                 move.w     d2,2(a5)
[0005c564] 4a43                      tst.w      d3
[0005c566] 6708                      beq.s      make_panel_3
[0005c568] 3b7c 0018 0006            move.w     #$0018,6(a5)
[0005c56e] 6006                      bra.s      make_panel_4
make_panel_3:
[0005c570] 3b7c 0020 0006            move.w     #$0020,6(a5)
make_panel_4:
[0005c576] 7801                      moveq.l    #1,d4
[0005c578] 5296                      addq.l     #1,(a6)
[0005c57a] 601e                      bra.s      make_panel_5
make_panel_2:
[0005c57c] 70ff                      moveq.l    #-1,d0
[0005c57e] 3b40 0004                 move.w     d0,4(a5)
[0005c582] 3b40 0002                 move.w     d0,2(a5)
[0005c586] 4a43                      tst.w      d3
[0005c588] 6708                      beq.s      make_panel_6
[0005c58a] 3b7c 0018 0006            move.w     #$0018,6(a5)
[0005c590] 6006                      bra.s      make_panel_7
make_panel_6:
[0005c592] 3b7c 001c 0006            move.w     #$001C,6(a5)
make_panel_7:
[0005c598] 4244                      clr.w      d4
make_panel_5:
[0005c59a] 2056                      movea.l    (a6),a0
[0005c59c] b1ef 0046                 cmpa.l     70(a7),a0
[0005c5a0] 6608                      bne.s      make_panel_8
[0005c5a2] 3b7c 0004 000a            move.w     #$0004,10(a5)
[0005c5a8] 6004                      bra.s      make_panel_9
make_panel_8:
[0005c5aa] 426d 000a                 clr.w      10(a5)
make_panel_9:
[0005c5ae] 206f 003e                 movea.l    62(a7),a0
[0005c5b2] 2650                      movea.l    (a0),a3
[0005c5b4] 4a43                      tst.w      d3
[0005c5b6] 6722                      beq.s      make_panel_10
[0005c5b8] 2b54 000c                 move.l     (a4),12(a5)
[0005c5bc] 7020                      moveq.l    #32,d0
[0005c5be] 43f9 000d 4e28            lea.l      a3dproto,a1
[0005c5c4] 2054                      movea.l    (a4),a0
[0005c5c6] 4eb9 0007 6f44            jsr        memcpy
[0005c5cc] 2054                      movea.l    (a4),a0
[0005c5ce] 214b 000c                 move.l     a3,12(a0)
[0005c5d2] 0694 0000 0020            addi.l     #$00000020,(a4)
[0005c5d8] 6004                      bra.s      make_panel_11
make_panel_10:
[0005c5da] 2b4b 000c                 move.l     a3,12(a5)
make_panel_11:
[0005c5de] 3007                      move.w     d7,d0
[0005c5e0] 48c0                      ext.l      d0
[0005c5e2] 206f 003e                 movea.l    62(a7),a0
[0005c5e6] d190                      add.l      d0,(a0)
[0005c5e8] 7220                      moveq.l    #32,d1
[0005c5ea] 1741 0001                 move.b     d1,1(a3)
[0005c5ee] 1681                      move.b     d1,(a3)
[0005c5f0] 544b                      addq.w     #2,a3
[0005c5f2] 70fd                      moveq.l    #-3,d0
[0005c5f4] d047                      add.w      d7,d0
[0005c5f6] 6024                      bra.s      make_panel_12
make_panel_16:
[0005c5f8] 2056                      movea.l    (a6),a0
[0005c5fa] 0c10 005d                 cmpi.b     #$5D,(a0)
[0005c5fe] 660e                      bne.s      make_panel_13
[0005c600] 7c01                      moveq.l    #1,d6
[0005c602] 0c28 007c 0001            cmpi.b     #$7C,1(a0)
[0005c608] 661e                      bne.s      make_panel_14
[0005c60a] 5296                      addq.l     #1,(a6)
[0005c60c] 601a                      bra.s      make_panel_14
make_panel_13:
[0005c60e] 4a40                      tst.w      d0
[0005c610] 6f08                      ble.s      make_panel_15
[0005c612] 2056                      movea.l    (a6),a0
[0005c614] 1690                      move.b     (a0),(a3)
[0005c616] 524b                      addq.w     #1,a3
[0005c618] 5340                      subq.w     #1,d0
make_panel_15:
[0005c61a] 5296                      addq.l     #1,(a6)
make_panel_12:
[0005c61c] 2056                      movea.l    (a6),a0
[0005c61e] 1210                      move.b     (a0),d1
[0005c620] 6706                      beq.s      make_panel_14
[0005c622] b23c 007c                 cmp.b      #$7C,d1
[0005c626] 66d0                      bne.s      make_panel_16
make_panel_14:
[0005c628] 4213                      clr.b      (a3)
[0005c62a] 2056                      movea.l    (a6),a0
[0005c62c] 1010                      move.b     (a0),d0
[0005c62e] 6702                      beq.s      make_panel_17
[0005c630] 5296                      addq.l     #1,(a6)
make_panel_17:
[0005c632] 4a44                      tst.w      d4
[0005c634] 6722                      beq.s      make_panel_18
[0005c636] 2f2f 0046                 move.l     70(a7),-(a7)
[0005c63a] 2f0c                      move.l     a4,-(a7)
[0005c63c] 2f2f 0046                 move.l     70(a7),-(a7)
[0005c640] 2f0e                      move.l     a6,-(a7)
[0005c642] 3403                      move.w     d3,d2
[0005c644] 3207                      move.w     d7,d1
[0005c646] 302f 0018                 move.w     24(a7),d0
[0005c64a] 224a                      movea.l    a2,a1
[0005c64c] 206f 001a                 movea.l    26(a7),a0
[0005c650] 6100 fe6e                 bsr        make_panel
[0005c654] 4fef 0010                 lea.l      16(a7),a7
make_panel_18:
[0005c658] 3b7c 0001 0008            move.w     #$0001,8(a5)
[0005c65e] 3005                      move.w     d5,d0
[0005c660] 2079 0010 1f12            movea.l    ACSblk,a0
[0005c666] c1e8 0014                 muls.w     20(a0),d0
[0005c66a] 3b40 0012                 move.w     d0,18(a5)
[0005c66e] 2079 0010 1f12            movea.l    ACSblk,a0
[0005c674] 3b68 0014 0016            move.w     20(a0),22(a5)
[0005c67a] 426d 0010                 clr.w      16(a5)
[0005c67e] 3b6f 0008 0014            move.w     8(a7),20(a5)
[0005c684] 3a92                      move.w     (a2),(a5)
[0005c686] 5245                      addq.w     #1,d5
[0005c688] 4a46                      tst.w      d6
[0005c68a] 6616                      bne.s      make_panel_1
[0005c68c] 2056                      movea.l    (a6),a0
[0005c68e] 0c10 005d                 cmpi.b     #$5D,(a0)
[0005c692] 660e                      bne.s      make_panel_1
[0005c694] 0c28 007c 0001            cmpi.b     #$7C,1(a0)
[0005c69a] 6602                      bne.s      make_panel_19
[0005c69c] 5296                      addq.l     #1,(a6)
make_panel_19:
[0005c69e] 5296                      addq.l     #1,(a6)
[0005c6a0] 600c                      bra.s      make_panel_20
make_panel_1:
[0005c6a2] 2056                      movea.l    (a6),a0
[0005c6a4] 1010                      move.b     (a0),d0
[0005c6a6] 6706                      beq.s      make_panel_20
[0005c6a8] 4a46                      tst.w      d6
[0005c6aa] 6700 fe90                 beq        make_panel_21
make_panel_20:
[0005c6ae] 3aaf 0002                 move.w     2(a7),(a5)
[0005c6b2] 2079 0010 1f12            movea.l    ACSblk,a0
[0005c6b8] 3028 0014                 move.w     20(a0),d0
[0005c6bc] c1c5                      muls.w     d5,d0
[0005c6be] 226f 0004                 movea.l    4(a7),a1
[0005c6c2] 3340 0016                 move.w     d0,22(a1)
[0005c6c6] 3357 0004                 move.w     (a7),4(a1)
[0005c6ca] 4fef 000e                 lea.l      14(a7),a7
[0005c6ce] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0005c6d2] 4e75                      rts

create_popup:
[0005c6d4] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0005c6d8] 4fef ffee                 lea.l      -18(a7),a7
[0005c6dc] 2648                      movea.l    a0,a3
[0005c6de] 2a49                      movea.l    a1,a5
[0005c6e0] 3600                      move.w     d0,d3
[0005c6e2] 3a01                      move.w     d1,d5
[0005c6e4] 45ef 0010                 lea.l      16(a7),a2
[0005c6e8] 486f 000e                 pea.l      14(a7)
[0005c6ec] 224a                      movea.l    a2,a1
[0005c6ee] 204b                      movea.l    a3,a0
[0005c6f0] 6100 fd82                 bsr        count_it
[0005c6f4] 584f                      addq.w     #4,a7
[0005c6f6] 3803                      move.w     d3,d4
[0005c6f8] 2079 0010 1f12            movea.l    ACSblk,a0
[0005c6fe] d868 0012                 add.w      18(a0),d4
[0005c702] 5344                      subq.w     #1,d4
[0005c704] 48c4                      ext.l      d4
[0005c706] 89e8 0012                 divs.w     18(a0),d4
[0005c70a] 4a44                      tst.w      d4
[0005c70c] 6a02                      bpl.s      create_popup_1
[0005c70e] 4244                      clr.w      d4
create_popup_1:
[0005c710] 5644                      addq.w     #3,d4
[0005c712] 4a45                      tst.w      d5
[0005c714] 6728                      beq.s      create_popup_2
[0005c716] 322f 000e                 move.w     14(a7),d1
[0005c71a] 48c1                      ext.l      d1
[0005c71c] 2001                      move.l     d1,d0
[0005c71e] d080                      add.l      d0,d0
[0005c720] d081                      add.l      d1,d0
[0005c722] e788                      lsl.l      #3,d0
[0005c724] 3412                      move.w     (a2),d2
[0005c726] c5c4                      muls.w     d4,d2
[0005c728] 48c2                      ext.l      d2
[0005c72a] d082                      add.l      d2,d0
[0005c72c] 3212                      move.w     (a2),d1
[0005c72e] 48c1                      ext.l      d1
[0005c730] eb89                      lsl.l      #5,d1
[0005c732] d081                      add.l      d1,d0
[0005c734] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005c73a] 2848                      movea.l    a0,a4
[0005c73c] 601e                      bra.s      create_popup_3
create_popup_2:
[0005c73e] 322f 000e                 move.w     14(a7),d1
[0005c742] 48c1                      ext.l      d1
[0005c744] 2001                      move.l     d1,d0
[0005c746] d080                      add.l      d0,d0
[0005c748] d081                      add.l      d1,d0
[0005c74a] e788                      lsl.l      #3,d0
[0005c74c] 3412                      move.w     (a2),d2
[0005c74e] c5c4                      muls.w     d4,d2
[0005c750] 48c2                      ext.l      d2
[0005c752] d082                      add.l      d2,d0
[0005c754] 4eb9 0004 7cc8            jsr        Ax_malloc
[0005c75a] 2848                      movea.l    a0,a4
create_popup_3:
[0005c75c] 200c                      move.l     a4,d0
[0005c75e] 6604                      bne.s      create_popup_4
[0005c760] 91c8                      suba.l     a0,a0
[0005c762] 606e                      bra.s      create_popup_5
create_popup_4:
[0005c764] 426f 000c                 clr.w      12(a7)
[0005c768] 322f 000e                 move.w     14(a7),d1
[0005c76c] 48c1                      ext.l      d1
[0005c76e] 2001                      move.l     d1,d0
[0005c770] d080                      add.l      d0,d0
[0005c772] d081                      add.l      d1,d0
[0005c774] e788                      lsl.l      #3,d0
[0005c776] 41f4 0800                 lea.l      0(a4,d0.l),a0
[0005c77a] 2f48 0004                 move.l     a0,4(a7)
[0005c77e] 3412                      move.w     (a2),d2
[0005c780] c5c4                      muls.w     d4,d2
[0005c782] d0c2                      adda.w     d2,a0
[0005c784] 2e88                      move.l     a0,(a7)
[0005c786] 2f4b 0008                 move.l     a3,8(a7)
[0005c78a] 2f0d                      move.l     a5,-(a7)
[0005c78c] 486f 0004                 pea.l      4(a7)
[0005c790] 486f 000c                 pea.l      12(a7)
[0005c794] 486f 0014                 pea.l      20(a7)
[0005c798] 43ef 001c                 lea.l      28(a7),a1
[0005c79c] 204c                      movea.l    a4,a0
[0005c79e] 3003                      move.w     d3,d0
[0005c7a0] 3204                      move.w     d4,d1
[0005c7a2] 3405                      move.w     d5,d2
[0005c7a4] 6100 fd1a                 bsr        make_panel
[0005c7a8] 4fef 0010                 lea.l      16(a7),a7
[0005c7ac] 38bc ffff                 move.w     #$FFFF,(a4)
[0005c7b0] 026c ff7f 0008            andi.w     #$FF7F,8(a4)
[0005c7b6] 006c 8000 000a            ori.w      #$8000,10(a4)
[0005c7bc] 322f 000c                 move.w     12(a7),d1
[0005c7c0] 48c1                      ext.l      d1
[0005c7c2] 2001                      move.l     d1,d0
[0005c7c4] d080                      add.l      d0,d0
[0005c7c6] d081                      add.l      d1,d0
[0005c7c8] e788                      lsl.l      #3,d0
[0005c7ca] 0074 0020 08f0            ori.w      #$0020,-16(a4,d0.l)
[0005c7d0] 204c                      movea.l    a4,a0
create_popup_5:
[0005c7d2] 4fef 0012                 lea.l      18(a7),a7
[0005c7d6] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0005c7da] 4e75                      rts

Ame_strpopup:
[0005c7dc] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[0005c7e0] 2848                      movea.l    a0,a4
[0005c7e2] 2449                      movea.l    a1,a2
[0005c7e4] 3800                      move.w     d0,d4
[0005c7e6] 3c01                      move.w     d1,d6
[0005c7e8] 3a02                      move.w     d2,d5
[0005c7ea] 2079 0010 1f12            movea.l    ACSblk,a0
[0005c7f0] 2268 023c                 movea.l    572(a0),a1
[0005c7f4] 3429 000e                 move.w     14(a1),d2
[0005c7f8] c47c 0100                 and.w      #$0100,d2
[0005c7fc] 660c                      bne.s      Ame_strpopup_1
[0005c7fe] 0c68 0004 001c            cmpi.w     #$0004,28(a0)
[0005c804] 6d04                      blt.s      Ame_strpopup_1
[0005c806] 7601                      moveq.l    #1,d3
[0005c808] 6002                      bra.s      Ame_strpopup_2
Ame_strpopup_1:
[0005c80a] 4243                      clr.w      d3
Ame_strpopup_2:
[0005c80c] 3203                      move.w     d3,d1
[0005c80e] 3004                      move.w     d4,d0
[0005c810] 226f 0024                 movea.l    36(a7),a1
[0005c814] 204a                      movea.l    a2,a0
[0005c816] 6100 febc                 bsr        create_popup
[0005c81a] 2648                      movea.l    a0,a3
[0005c81c] 200b                      move.l     a3,d0
[0005c81e] 6700 008e                 beq        Ame_strpopup_3
[0005c822] 3205                      move.w     d5,d1
[0005c824] 224b                      movea.l    a3,a1
[0005c826] 204c                      movea.l    a4,a0
[0005c828] 3006                      move.w     d6,d0
[0005c82a] 4eb9 0004 948a            jsr        Ame_popup
[0005c830] 3c00                      move.w     d0,d6
[0005c832] 4a40                      tst.w      d0
[0005c834] 6b6a                      bmi.s      Ame_strpopup_4
[0005c836] 4a43                      tst.w      d3
[0005c838] 6716                      beq.s      Ame_strpopup_5
[0005c83a] 48c0                      ext.l      d0
[0005c83c] 2200                      move.l     d0,d1
[0005c83e] d281                      add.l      d1,d1
[0005c840] d280                      add.l      d0,d1
[0005c842] e789                      lsl.l      #3,d1
[0005c844] 2073 180c                 movea.l    12(a3,d1.l),a0
[0005c848] 2868 000c                 movea.l    12(a0),a4
[0005c84c] 544c                      addq.w     #2,a4
[0005c84e] 6012                      bra.s      Ame_strpopup_6
Ame_strpopup_5:
[0005c850] 3206                      move.w     d6,d1
[0005c852] 48c1                      ext.l      d1
[0005c854] 2001                      move.l     d1,d0
[0005c856] d080                      add.l      d0,d0
[0005c858] d081                      add.l      d1,d0
[0005c85a] e788                      lsl.l      #3,d0
[0005c85c] 2873 080c                 movea.l    12(a3,d0.l),a4
[0005c860] 544c                      addq.w     #2,a4
Ame_strpopup_6:
[0005c862] 204c                      movea.l    a4,a0
[0005c864] 4eb9 0007 69b0            jsr        strlen
[0005c86a] 2c00                      move.l     d0,d6
[0005c86c] 224c                      movea.l    a4,a1
[0005c86e] 204a                      movea.l    a2,a0
[0005c870] 4eb9 0007 6a4c            jsr        strstr
[0005c876] 2a48                      movea.l    a0,a5
[0005c878] 600e                      bra.s      Ame_strpopup_7
Ame_strpopup_8:
[0005c87a] 224c                      movea.l    a4,a1
[0005c87c] 41ed 0001                 lea.l      1(a5),a0
[0005c880] 4eb9 0007 6a4c            jsr        strstr
[0005c886] 2a48                      movea.l    a0,a5
Ame_strpopup_7:
[0005c888] 1035 6800                 move.b     0(a5,d6.l),d0
[0005c88c] 4880                      ext.w      d0
[0005c88e] 41f9 000d 4e4e            lea.l      $000D4E4E,a0
[0005c894] 4eb9 0007 68ce            jsr        strchr
[0005c89a] 2008                      move.l     a0,d0
[0005c89c] 67dc                      beq.s      Ame_strpopup_8
[0005c89e] 6002                      bra.s      Ame_strpopup_9
Ame_strpopup_4:
[0005c8a0] 9bcd                      suba.l     a5,a5
Ame_strpopup_9:
[0005c8a2] 204b                      movea.l    a3,a0
[0005c8a4] 4eb9 0004 7e26            jsr        Ax_free
[0005c8aa] 204d                      movea.l    a5,a0
[0005c8ac] 6002                      bra.s      Ame_strpopup_10
Ame_strpopup_3:
[0005c8ae] 91c8                      suba.l     a0,a0
Ame_strpopup_10:
[0005c8b0] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[0005c8b4] 4e75                      rts

Aus_cycle:
[0005c8b6] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[0005c8ba] 4fef ffee                 lea.l      -18(a7),a7
[0005c8be] 45f9 0010 1f12            lea.l      ACSblk,a2
[0005c8c4] 2052                      movea.l    (a2),a0
[0005c8c6] 2668 025c                 movea.l    604(a0),a3
[0005c8ca] 3628 0260                 move.w     608(a0),d3
[0005c8ce] 2f39 000d 99d6            move.l     _globl,-(a7)
[0005c8d4] 486f 0004                 pea.l      4(a7)
[0005c8d8] 43ef 000a                 lea.l      10(a7),a1
[0005c8dc] 3003                      move.w     d3,d0
[0005c8de] 204b                      movea.l    a3,a0
[0005c8e0] 4eb9 0006 ba44            jsr        mt_objc_offset
[0005c8e6] 504f                      addq.w     #8,a7
[0005c8e8] 3203                      move.w     d3,d1
[0005c8ea] 48c1                      ext.l      d1
[0005c8ec] 2001                      move.l     d1,d0
[0005c8ee] d080                      add.l      d0,d0
[0005c8f0] d081                      add.l      d1,d0
[0005c8f2] e788                      lsl.l      #3,d0
[0005c8f4] d7c0                      adda.l     d0,a3
[0005c8f6] 286b 000c                 movea.l    12(a3),a4
[0005c8fa] 382b 0014                 move.w     20(a3),d4
[0005c8fe] 2052                      movea.l    (a2),a0
[0005c900] 2268 0258                 movea.l    600(a0),a1
[0005c904] 3429 0034                 move.w     52(a1),d2
[0005c908] d56f 0002                 add.w      d2,2(a7)
[0005c90c] 3a2f 0002                 move.w     2(a7),d5
[0005c910] da44                      add.w      d4,d5
[0005c912] 3005                      move.w     d5,d0
[0005c914] 3228 0012                 move.w     18(a0),d1
[0005c918] d241                      add.w      d1,d1
[0005c91a] 9041                      sub.w      d1,d0
[0005c91c] 2a6c 0010                 movea.l    16(a4),a5
[0005c920] b068 0262                 cmp.w      610(a0),d0
[0005c924] 6e10                      bgt.s      Aus_cycle_1
[0005c926] ba68 0262                 cmp.w      610(a0),d5
[0005c92a] 6f0a                      ble.s      Aus_cycle_1
[0005c92c] 204d                      movea.l    a5,a0
[0005c92e] 6100 f8f0                 bsr        next
[0005c932] 6000 00a8                 bra        Aus_cycle_2
Aus_cycle_1:
[0005c936] 302b 0016                 move.w     22(a3),d0
[0005c93a] 2052                      movea.l    (a2),a0
[0005c93c] 9068 0014                 sub.w      20(a0),d0
[0005c940] e240                      asr.w      #1,d0
[0005c942] 2268 0258                 movea.l    600(a0),a1
[0005c946] d069 0036                 add.w      54(a1),d0
[0005c94a] d157                      add.w      d0,(a7)
[0005c94c] 2268 023c                 movea.l    572(a0),a1
[0005c950] 3a29 000e                 move.w     14(a1),d5
[0005c954] 2239 000d 4e2c            move.l     $000D4E2C,d1
[0005c95a] c2bc f0ff 0fff            and.l      #$F0FF0FFF,d1
[0005c960] 740f                      moveq.l    #15,d2
[0005c962] c4ac 0004                 and.l      4(a4),d2
[0005c966] 700c                      moveq.l    #12,d0
[0005c968] e1aa                      lsl.l      d0,d2
[0005c96a] 8282                      or.l       d2,d1
[0005c96c] 242c 0004                 move.l     4(a4),d2
[0005c970] c4bc 0000 00f0            and.l      #$000000F0,d2
[0005c976] 7014                      moveq.l    #20,d0
[0005c978] e1aa                      lsl.l      d0,d2
[0005c97a] 8282                      or.l       d2,d1
[0005c97c] 23c1 000d 4e2c            move.l     d1,$000D4E2C
[0005c982] 222c 0004                 move.l     4(a4),d1
[0005c986] c2bc 0001 0000            and.l      #$00010000,d1
[0005c98c] 6606                      bne.s      Aus_cycle_3
[0005c98e] 0069 0100 000e            ori.w      #$0100,14(a1)
Aus_cycle_3:
[0005c994] 2f2d 0004                 move.l     4(a5),-(a7)
[0005c998] 342f 0004                 move.w     4(a7),d2
[0005c99c] 322f 0006                 move.w     6(a7),d1
[0005c9a0] 3004                      move.w     d4,d0
[0005c9a2] 226d 0008                 movea.l    8(a5),a1
[0005c9a6] 2052                      movea.l    (a2),a0
[0005c9a8] 2068 0258                 movea.l    600(a0),a0
[0005c9ac] 6100 fe2e                 bsr        Ame_strpopup
[0005c9b0] 584f                      addq.w     #4,a7
[0005c9b2] 2f48 0004                 move.l     a0,4(a7)
[0005c9b6] 2252                      movea.l    (a2),a1
[0005c9b8] 2069 023c                 movea.l    572(a1),a0
[0005c9bc] 3145 000e                 move.w     d5,14(a0)
[0005c9c0] 23fc 09f1 0178 000d 4e2c  move.l     #$09F10178,$000D4E2C
[0005c9ca] 202f 0004                 move.l     4(a7),d0
[0005c9ce] 670c                      beq.s      Aus_cycle_2
[0005c9d0] 2b40 0004                 move.l     d0,4(a5)
[0005c9d4] 2240                      movea.l    d0,a1
[0005c9d6] 204d                      movea.l    a5,a0
[0005c9d8] 6100 f7cc                 bsr        set
Aus_cycle_2:
[0005c9dc] 2052                      movea.l    (a2),a0
[0005c9de] 2f68 0258 0008            move.l     600(a0),8(a7)
[0005c9e4] 2f4b 000c                 move.l     a3,12(a7)
[0005c9e8] 2268 0258                 movea.l    600(a0),a1
[0005c9ec] 2a69 0018                 movea.l    24(a1),a5
[0005c9f0] bbe8 025c                 cmpa.l     604(a0),a5
[0005c9f4] 660c                      bne.s      Aus_cycle_4
[0005c9f6] 3003                      move.w     d3,d0
[0005c9f8] 807c 1000                 or.w       #$1000,d0
[0005c9fc] 3f40 0010                 move.w     d0,16(a7)
[0005ca00] 6004                      bra.s      Aus_cycle_5
Aus_cycle_4:
[0005ca02] 3f43 0010                 move.w     d3,16(a7)
Aus_cycle_5:
[0005ca06] 43ef 0008                 lea.l      8(a7),a1
[0005ca0a] 7009                      moveq.l    #9,d0
[0005ca0c] 204b                      movea.l    a3,a0
[0005ca0e] 246c 0008                 movea.l    8(a4),a2
[0005ca12] 4e92                      jsr        (a2)
[0005ca14] 93c9                      suba.l     a1,a1
[0005ca16] 7005                      moveq.l    #5,d0
[0005ca18] 204b                      movea.l    a3,a0
[0005ca1a] 246c 0008                 movea.l    8(a4),a2
[0005ca1e] 4e92                      jsr        (a2)
[0005ca20] 4fef 0012                 lea.l      18(a7),a7
[0005ca24] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0005ca28] 4e75                      rts

		.data

a3dproto:
[000d4e28] 0005a4e2                  dc.l A_3Dbutton
[000d4e2c]                           dc.w $09f1
[000d4e2e]                           dc.w $0178
[000d4e30] 00059318                  dc.l Auo_string
[000d4e34] 000d4e4a                  dc.l $000d4e4a ; no symbol found
[000d4e38]                           dc.b $00
[000d4e39]                           dc.b $00
[000d4e3a]                           dc.b $00
[000d4e3b]                           dc.b $00
[000d4e3c]                           dc.b $00
[000d4e3d]                           dc.b $00
[000d4e3e]                           dc.b $00
[000d4e3f]                           dc.b $00
[000d4e40]                           dc.b $00
[000d4e41]                           dc.b $00
[000d4e42]                           dc.b $00
[000d4e43]                           dc.b $00
[000d4e44]                           dc.b $00
[000d4e45]                           dc.b $00
[000d4e46]                           dc.b $00
[000d4e47]                           dc.b $00
[000d4e48]                           dc.w $0200
[000d4e4a]                           dc.b $00
[000d4e4b]                           dc.b $7c
[000d4e4c]                           dc.w $5d00
[000d4e4e]                           dc.b '[]|',0
