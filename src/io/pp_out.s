
p_string:
[00019cdc] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[00019ce0] 514f                      subq.w     #8,a7
[00019ce2] 2648                      movea.l    a0,a3
[00019ce4] 1600                      move.b     d0,d3
[00019ce6] 43f9 0009 9f5a            lea.l      $00099F5A,a1
[00019cec] 41d7                      lea.l      (a7),a0
[00019cee] 10d9                      move.b     (a1)+,(a0)+
[00019cf0] 10d9                      move.b     (a1)+,(a0)+
[00019cf2] 10d9                      move.b     (a1)+,(a0)+
[00019cf4] 10d9                      move.b     (a1)+,(a0)+
[00019cf6] 45f9 0009 9f7e            lea.l      $00099F7E,a2
[00019cfc] 204a                      movea.l    a2,a0
[00019cfe] 4eb9 0001 65f6            jsr        save_string
[00019d04] 49ef 0004                 lea.l      4(a7),a4
[00019d08] 6000 009c                 bra        p_string_1
p_string_6:
[00019d0c] 1013                      move.b     (a3),d0
[00019d0e] 4880                      ext.w      d0
[00019d10] 5f40                      subq.w     #7,d0
[00019d12] b07c 0020                 cmp.w      #$0020,d0
[00019d16] 6270                      bhi.s      p_string_2
[00019d18] d040                      add.w      d0,d0
[00019d1a] 303b 0006                 move.w     $00019D22(pc,d0.w),d0
[00019d1e] 4efb 0002                 jmp        $00019D22(pc,d0.w)
J6:
[00019d22] 0042                      dc.w $0042   ; p_string_3-J6
[00019d24] 0042                      dc.w $0042   ; p_string_3-J6
[00019d26] 0042                      dc.w $0042   ; p_string_3-J6
[00019d28] 0042                      dc.w $0042   ; p_string_3-J6
[00019d2a] 0042                      dc.w $0042   ; p_string_3-J6
[00019d2c] 0042                      dc.w $0042   ; p_string_3-J6
[00019d2e] 0042                      dc.w $0042   ; p_string_3-J6
[00019d30] 0066                      dc.w $0066   ; p_string_2-J6
[00019d32] 0066                      dc.w $0066   ; p_string_2-J6
[00019d34] 0066                      dc.w $0066   ; p_string_2-J6
[00019d36] 0066                      dc.w $0066   ; p_string_2-J6
[00019d38] 0066                      dc.w $0066   ; p_string_2-J6
[00019d3a] 0066                      dc.w $0066   ; p_string_2-J6
[00019d3c] 0066                      dc.w $0066   ; p_string_2-J6
[00019d3e] 0066                      dc.w $0066   ; p_string_2-J6
[00019d40] 0066                      dc.w $0066   ; p_string_2-J6
[00019d42] 0066                      dc.w $0066   ; p_string_2-J6
[00019d44] 0066                      dc.w $0066   ; p_string_2-J6
[00019d46] 0066                      dc.w $0066   ; p_string_2-J6
[00019d48] 0066                      dc.w $0066   ; p_string_2-J6
[00019d4a] 0066                      dc.w $0066   ; p_string_2-J6
[00019d4c] 0066                      dc.w $0066   ; p_string_2-J6
[00019d4e] 0066                      dc.w $0066   ; p_string_2-J6
[00019d50] 0066                      dc.w $0066   ; p_string_2-J6
[00019d52] 0066                      dc.w $0066   ; p_string_2-J6
[00019d54] 0066                      dc.w $0066   ; p_string_2-J6
[00019d56] 0066                      dc.w $0066   ; p_string_2-J6
[00019d58] 0066                      dc.w $0066   ; p_string_2-J6
[00019d5a] 0066                      dc.w $0066   ; p_string_2-J6
[00019d5c] 0066                      dc.w $0066   ; p_string_2-J6
[00019d5e] 0066                      dc.w $0066   ; p_string_2-J6
[00019d60] 0066                      dc.w $0066   ; p_string_2-J6
[00019d62] 0058                      dc.w $0058   ; p_string_4-J6
p_string_3:
[00019d64] 1013                      move.b     (a3),d0
[00019d66] 4880                      ext.w      d0
[00019d68] 3f00                      move.w     d0,-(a7)
[00019d6a] 43ea 0002                 lea.l      2(a2),a1
[00019d6e] 204c                      movea.l    a4,a0
[00019d70] 4eb9 0007 5680            jsr        sprintf
[00019d76] 544f                      addq.w     #2,a7
[00019d78] 6022                      bra.s      p_string_5
p_string_4:
[00019d7a] 43ea 0008                 lea.l      8(a2),a1
[00019d7e] 204c                      movea.l    a4,a0
[00019d80] 4eb9 0007 6950            jsr        strcpy
[00019d86] 6014                      bra.s      p_string_5
p_string_2:
[00019d88] 1013                      move.b     (a3),d0
[00019d8a] 4880                      ext.w      d0
[00019d8c] 3f00                      move.w     d0,-(a7)
[00019d8e] 43ea 000b                 lea.l      11(a2),a1
[00019d92] 204c                      movea.l    a4,a0
[00019d94] 4eb9 0007 5680            jsr        sprintf
[00019d9a] 544f                      addq.w     #2,a7
p_string_5:
[00019d9c] 204c                      movea.l    a4,a0
[00019d9e] 4eb9 0001 65f6            jsr        save_string
[00019da4] 524b                      addq.w     #1,a3
p_string_1:
[00019da6] 1013                      move.b     (a3),d0
[00019da8] 6600 ff62                 bne        p_string_6
[00019dac] 41ea 000e                 lea.l      14(a2),a0
[00019db0] 4eb9 0001 65f6            jsr        save_string
[00019db6] 1e83                      move.b     d3,(a7)
[00019db8] 41d7                      lea.l      (a7),a0
[00019dba] 4eb9 0001 65f6            jsr        save_string
[00019dc0] 504f                      addq.w     #8,a7
[00019dc2] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[00019dc6] 4e75                      rts

out_label:
[00019dc8] 48e7 0038                 movem.l    a2-a4,-(a7)
[00019dcc] 2448                      movea.l    a0,a2
[00019dce] 2849                      movea.l    a1,a4
[00019dd0] 200a                      move.l     a2,d0
[00019dd2] 6724                      beq.s      out_label_1
[00019dd4] 47f9 000f b02a            lea.l      iostring,a3
[00019dda] 486a 0016                 pea.l      22(a2)
[00019dde] 43f9 0009 9f90            lea.l      $00099F90,a1
[00019de4] 204b                      movea.l    a3,a0
[00019de6] 4eb9 0007 5680            jsr        sprintf
[00019dec] 584f                      addq.w     #4,a7
[00019dee] 204b                      movea.l    a3,a0
[00019df0] 4eb9 0001 65f6            jsr        save_string
[00019df6] 6008                      bra.s      out_label_2
out_label_1:
[00019df8] 204c                      movea.l    a4,a0
[00019dfa] 4eb9 0001 65f6            jsr        save_string
out_label_2:
[00019e00] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00019e04] 4e75                      rts

out_label2:
[00019e06] 48e7 0038                 movem.l    a2-a4,-(a7)
[00019e0a] 2448                      movea.l    a0,a2
[00019e0c] 2849                      movea.l    a1,a4
[00019e0e] 200a                      move.l     a2,d0
[00019e10] 6724                      beq.s      out_label2_1
[00019e12] 47f9 000f b02a            lea.l      iostring,a3
[00019e18] 486a 0016                 pea.l      22(a2)
[00019e1c] 43f9 0009 9f93            lea.l      $00099F93,a1
[00019e22] 204b                      movea.l    a3,a0
[00019e24] 4eb9 0007 5680            jsr        sprintf
[00019e2a] 584f                      addq.w     #4,a7
[00019e2c] 204b                      movea.l    a3,a0
[00019e2e] 4eb9 0001 65f6            jsr        save_string
[00019e34] 6008                      bra.s      out_label2_2
out_label2_1:
[00019e36] 204c                      movea.l    a4,a0
[00019e38] 4eb9 0001 65f6            jsr        save_string
out_label2_2:
[00019e3e] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00019e42] 4e75                      rts

out_label3:
[00019e44] 48e7 0038                 movem.l    a2-a4,-(a7)
[00019e48] 2448                      movea.l    a0,a2
[00019e4a] 2849                      movea.l    a1,a4
[00019e4c] 200a                      move.l     a2,d0
[00019e4e] 6724                      beq.s      out_label3_1
[00019e50] 47f9 000f b02a            lea.l      iostring,a3
[00019e56] 486a 0016                 pea.l      22(a2)
[00019e5a] 43f9 0009 9f97            lea.l      $00099F97,a1
[00019e60] 204b                      movea.l    a3,a0
[00019e62] 4eb9 0007 5680            jsr        sprintf
[00019e68] 584f                      addq.w     #4,a7
[00019e6a] 204b                      movea.l    a3,a0
[00019e6c] 4eb9 0001 65f6            jsr        save_string
[00019e72] 6008                      bra.s      out_label3_2
out_label3_1:
[00019e74] 204c                      movea.l    a4,a0
[00019e76] 4eb9 0001 65f6            jsr        save_string
out_label3_2:
[00019e7c] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00019e80] 4e75                      rts

out_refs:
[00019e82] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00019e86] 2068 003c                 movea.l    60(a0),a0
[00019e8a] 2628 000e                 move.l     14(a0),d3
[00019e8e] e48b                      lsr.l      #2,d3
[00019e90] 4a43                      tst.w      d3
[00019e92] 6f00 0080                 ble        out_refs_1
[00019e96] 2468 0004                 movea.l    4(a0),a2
[00019e9a] 47f9 0009 9f7e            lea.l      $00099F7E,a3
[00019ea0] 41eb 0023                 lea.l      35(a3),a0
[00019ea4] 4eb9 0001 65f6            jsr        save_string
[00019eaa] 4244                      clr.w      d4
[00019eac] 4bf9 000f b02a            lea.l      iostring,a5
[00019eb2] 605c                      bra.s      out_refs_2
out_refs_6:
[00019eb4] 3004                      move.w     d4,d0
[00019eb6] 48c0                      ext.l      d0
[00019eb8] e588                      lsl.l      #2,d0
[00019eba] 2872 0800                 movea.l    0(a2,d0.l),a4
[00019ebe] 41ec 0016                 lea.l      22(a4),a0
[00019ec2] 4eb9 0001 8066            jsr        info_obj
[00019ec8] 3a2c 0038                 move.w     56(a4),d5
[00019ecc] 202c 000e                 move.l     14(a4),d0
[00019ed0] 670c                      beq.s      out_refs_3
[00019ed2] 206c 0004                 movea.l    4(a4),a0
[00019ed6] 4eb9 0001 65f6            jsr        save_string
[00019edc] 6026                      bra.s      out_refs_4
out_refs_3:
[00019ede] 4a05                      tst.b      d5
[00019ee0] 672c                      beq.s      out_refs_5
[00019ee2] 3005                      move.w     d5,d0
[00019ee4] c07c 0200                 and.w      #$0200,d0
[00019ee8] 6624                      bne.s      out_refs_5
[00019eea] 486c 0016                 pea.l      22(a4)
[00019eee] 43eb 0051                 lea.l      81(a3),a1
[00019ef2] 204d                      movea.l    a5,a0
[00019ef4] 4eb9 0007 5680            jsr        sprintf
[00019efa] 584f                      addq.w     #4,a7
[00019efc] 204d                      movea.l    a5,a0
[00019efe] 4eb9 0001 65f6            jsr        save_string
out_refs_4:
[00019f04] 41eb 004e                 lea.l      78(a3),a0
[00019f08] 4eb9 0001 65f6            jsr        save_string
out_refs_5:
[00019f0e] 5244                      addq.w     #1,d4
out_refs_2:
[00019f10] b644                      cmp.w      d4,d3
[00019f12] 6ea0                      bgt.s      out_refs_6
out_refs_1:
[00019f14] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[00019f18] 4e75                      rts

out_declproto:
[00019f1a] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00019f1e] 2648                      movea.l    a0,a3
[00019f20] 246b 003c                 movea.l    60(a3),a2
[00019f24] 262a 000e                 move.l     14(a2),d3
[00019f28] e48b                      lsr.l      #2,d3
[00019f2a] 4a43                      tst.w      d3
[00019f2c] 6f00 01ee                 ble        out_declproto_1
[00019f30] 206b 003c                 movea.l    60(a3),a0
[00019f34] 41e8 0016                 lea.l      22(a0),a0
[00019f38] 4eb9 0001 800e            jsr        info_list
[00019f3e] 246a 0004                 movea.l    4(a2),a2
[00019f42] 47f9 0009 9f7e            lea.l      $00099F7E,a3
[00019f48] 41eb 0076                 lea.l      118(a3),a0
[00019f4c] 4eb9 0001 65f6            jsr        save_string
[00019f52] 4244                      clr.w      d4
[00019f54] 4bf9 000f b02a            lea.l      iostring,a5
[00019f5a] 6000 01b0                 bra        out_declproto_2
out_declproto_21:
[00019f5e] 3004                      move.w     d4,d0
[00019f60] 48c0                      ext.l      d0
[00019f62] e588                      lsl.l      #2,d0
[00019f64] 2872 0800                 movea.l    0(a2,d0.l),a4
[00019f68] 3a2c 0038                 move.w     56(a4),d5
[00019f6c] 3205                      move.w     d5,d1
[00019f6e] c27c 0700                 and.w      #$0700,d1
[00019f72] 6708                      beq.s      out_declproto_3
[00019f74] b27c 0500                 cmp.w      #$0500,d1
[00019f78] 6600 0190                 bne        out_declproto_4
out_declproto_3:
[00019f7c] 41ec 0016                 lea.l      22(a4),a0
[00019f80] 4eb9 0001 8066            jsr        info_obj
[00019f86] 3005                      move.w     d5,d0
[00019f88] c07c 00ff                 and.w      #$00FF,d0
[00019f8c] b07c 0018                 cmp.w      #$0018,d0
[00019f90] 6200 0156                 bhi        out_declproto_5
[00019f94] d040                      add.w      d0,d0
[00019f96] 303b 0006                 move.w     $00019F9E(pc,d0.w),d0
[00019f9a] 4efb 0002                 jmp        $00019F9E(pc,d0.w)
J7:
[00019f9e] 011e                      dc.w $011e   ; out_declproto_6-J7
[00019fa0] 0032                      dc.w $0032   ; out_declproto_7-J7
[00019fa2] 0032                      dc.w $0032   ; out_declproto_7-J7
[00019fa4] 0048                      dc.w $0048   ; out_declproto_8-J7
[00019fa6] 005e                      dc.w $005e   ; out_declproto_9-J7
[00019fa8] 014a                      dc.w $014a   ; out_declproto_5-J7
[00019faa] 0074                      dc.w $0074   ; out_declproto_10-J7
[00019fac] 008a                      dc.w $008a   ; out_declproto_11-J7
[00019fae] 0074                      dc.w $0074   ; out_declproto_10-J7
[00019fb0] 00a0                      dc.w $00a0   ; out_declproto_12-J7
[00019fb2] 00b6                      dc.w $00b6   ; out_declproto_13-J7
[00019fb4] 00cc                      dc.w $00cc   ; out_declproto_14-J7
[00019fb6] 00e2                      dc.w $00e2   ; out_declproto_15-J7
[00019fb8] 014a                      dc.w $014a   ; out_declproto_5-J7
[00019fba] 00e2                      dc.w $00e2   ; out_declproto_15-J7
[00019fbc] 00f6                      dc.w $00f6   ; out_declproto_16-J7
[00019fbe] 00f6                      dc.w $00f6   ; out_declproto_16-J7
[00019fc0] 00f6                      dc.w $00f6   ; out_declproto_16-J7
[00019fc2] 00cc                      dc.w $00cc   ; out_declproto_14-J7
[00019fc4] 00cc                      dc.w $00cc   ; out_declproto_14-J7
[00019fc6] 00e2                      dc.w $00e2   ; out_declproto_15-J7
[00019fc8] 010a                      dc.w $010a   ; out_declproto_17-J7
[00019fca] 0122                      dc.w $0122   ; out_declproto_18-J7
[00019fcc] 0074                      dc.w $0074   ; out_declproto_10-J7
[00019fce] 0136                      dc.w $0136   ; out_declproto_19-J7
out_declproto_7:
[00019fd0] 486c 0016                 pea.l      22(a4)
[00019fd4] 43eb 0098                 lea.l      152(a3),a1
[00019fd8] 204d                      movea.l    a5,a0
[00019fda] 4eb9 0007 5680            jsr        sprintf
[00019fe0] 584f                      addq.w     #4,a7
[00019fe2] 6000 011e                 bra        out_declproto_20
out_declproto_8:
[00019fe6] 486c 0016                 pea.l      22(a4)
[00019fea] 43eb 00a8                 lea.l      168(a3),a1
[00019fee] 204d                      movea.l    a5,a0
[00019ff0] 4eb9 0007 5680            jsr        sprintf
[00019ff6] 584f                      addq.w     #4,a7
[00019ff8] 6000 0108                 bra        out_declproto_20
out_declproto_9:
[00019ffc] 486c 0016                 pea.l      22(a4)
[0001a000] 43eb 00ec                 lea.l      236(a3),a1
[0001a004] 204d                      movea.l    a5,a0
[0001a006] 4eb9 0007 5680            jsr        sprintf
[0001a00c] 584f                      addq.w     #4,a7
[0001a00e] 6000 00f2                 bra        out_declproto_20
out_declproto_10:
[0001a012] 486c 0016                 pea.l      22(a4)
[0001a016] 43eb 013c                 lea.l      316(a3),a1
[0001a01a] 204d                      movea.l    a5,a0
[0001a01c] 4eb9 0007 5680            jsr        sprintf
[0001a022] 584f                      addq.w     #4,a7
[0001a024] 6000 00dc                 bra        out_declproto_20
out_declproto_11:
[0001a028] 486c 0016                 pea.l      22(a4)
[0001a02c] 43eb 0167                 lea.l      359(a3),a1
[0001a030] 204d                      movea.l    a5,a0
[0001a032] 4eb9 0007 5680            jsr        sprintf
[0001a038] 584f                      addq.w     #4,a7
[0001a03a] 6000 00c6                 bra        out_declproto_20
out_declproto_12:
[0001a03e] 486c 0016                 pea.l      22(a4)
[0001a042] 43eb 0194                 lea.l      404(a3),a1
[0001a046] 204d                      movea.l    a5,a0
[0001a048] 4eb9 0007 5680            jsr        sprintf
[0001a04e] 584f                      addq.w     #4,a7
[0001a050] 6000 00b0                 bra        out_declproto_20
out_declproto_13:
[0001a054] 486c 0016                 pea.l      22(a4)
[0001a058] 43eb 01d5                 lea.l      469(a3),a1
[0001a05c] 204d                      movea.l    a5,a0
[0001a05e] 4eb9 0007 5680            jsr        sprintf
[0001a064] 584f                      addq.w     #4,a7
[0001a066] 6000 009a                 bra        out_declproto_20
out_declproto_14:
[0001a06a] 486c 0016                 pea.l      22(a4)
[0001a06e] 43eb 020d                 lea.l      525(a3),a1
[0001a072] 204d                      movea.l    a5,a0
[0001a074] 4eb9 0007 5680            jsr        sprintf
[0001a07a] 584f                      addq.w     #4,a7
[0001a07c] 6000 0084                 bra        out_declproto_20
out_declproto_15:
[0001a080] 486c 0016                 pea.l      22(a4)
[0001a084] 43eb 023f                 lea.l      575(a3),a1
[0001a088] 204d                      movea.l    a5,a0
[0001a08a] 4eb9 0007 5680            jsr        sprintf
[0001a090] 584f                      addq.w     #4,a7
[0001a092] 606e                      bra.s      out_declproto_20
out_declproto_16:
[0001a094] 486c 0016                 pea.l      22(a4)
[0001a098] 43eb 0261                 lea.l      609(a3),a1
[0001a09c] 204d                      movea.l    a5,a0
[0001a09e] 4eb9 0007 5680            jsr        sprintf
[0001a0a4] 584f                      addq.w     #4,a7
[0001a0a6] 605a                      bra.s      out_declproto_20
out_declproto_17:
[0001a0a8] 486c 0016                 pea.l      22(a4)
[0001a0ac] 43eb 0291                 lea.l      657(a3),a1
[0001a0b0] 204d                      movea.l    a5,a0
[0001a0b2] 4eb9 0007 5680            jsr        sprintf
[0001a0b8] 584f                      addq.w     #4,a7
[0001a0ba] 6046                      bra.s      out_declproto_20
out_declproto_6:
[0001a0bc] 4215                      clr.b      (a5)
[0001a0be] 6042                      bra.s      out_declproto_20
out_declproto_18:
[0001a0c0] 486c 0016                 pea.l      22(a4)
[0001a0c4] 43eb 02dc                 lea.l      732(a3),a1
[0001a0c8] 204d                      movea.l    a5,a0
[0001a0ca] 4eb9 0007 5680            jsr        sprintf
[0001a0d0] 584f                      addq.w     #4,a7
[0001a0d2] 602e                      bra.s      out_declproto_20
out_declproto_19:
[0001a0d4] 486c 0016                 pea.l      22(a4)
[0001a0d8] 43eb 0315                 lea.l      789(a3),a1
[0001a0dc] 204d                      movea.l    a5,a0
[0001a0de] 4eb9 0007 5680            jsr        sprintf
[0001a0e4] 584f                      addq.w     #4,a7
[0001a0e6] 601a                      bra.s      out_declproto_20
out_declproto_5:
[0001a0e8] 3005                      move.w     d5,d0
[0001a0ea] c07c 00ff                 and.w      #$00FF,d0
[0001a0ee] 3f00                      move.w     d0,-(a7)
[0001a0f0] 486c 0016                 pea.l      22(a4)
[0001a0f4] 43eb 0375                 lea.l      885(a3),a1
[0001a0f8] 204d                      movea.l    a5,a0
[0001a0fa] 4eb9 0007 5680            jsr        sprintf
[0001a100] 5c4f                      addq.w     #6,a7
out_declproto_20:
[0001a102] 204d                      movea.l    a5,a0
[0001a104] 4eb9 0001 65f6            jsr        save_string
out_declproto_4:
[0001a10a] 5244                      addq.w     #1,d4
out_declproto_2:
[0001a10c] b644                      cmp.w      d4,d3
[0001a10e] 6e00 fe4e                 bgt        out_declproto_21
[0001a112] 41eb 004c                 lea.l      76(a3),a0
[0001a116] 4eb9 0001 65f6            jsr        save_string
out_declproto_1:
[0001a11c] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0001a120] 4e75                      rts

out_acs:
[0001a122] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[0001a126] 4fef ffbc                 lea.l      -68(a7),a7
[0001a12a] 2448                      movea.l    a0,a2
[0001a12c] 43f9 0009 9f5e            lea.l      $00099F5E,a1
[0001a132] 41d7                      lea.l      (a7),a0
[0001a134] 701f                      moveq.l    #31,d0
out_acs_1:
[0001a136] 10d9                      move.b     (a1)+,(a0)+
[0001a138] 51c8 fffc                 dbf        d0,out_acs_1
[0001a13c] 302a 0006                 move.w     6(a2),d0
[0001a140] c07c 8000                 and.w      #$8000,d0
[0001a144] 6600 0372                 bne        out_acs_2
[0001a148] 47f9 0009 9f7e            lea.l      $00099F7E,a3
[0001a14e] 41eb 038b                 lea.l      907(a3),a0
[0001a152] 4eb9 0001 65f6            jsr        save_string
[0001a158] 49f9 000f b02a            lea.l      iostring,a4
[0001a15e] 3f2a 005a                 move.w     90(a2),-(a7)
[0001a162] 3f2a 0058                 move.w     88(a2),-(a7)
[0001a166] 3f2a 0056                 move.w     86(a2),-(a7)
[0001a16a] 3f3c 012c                 move.w     #$012C,-(a7)
[0001a16e] 486b 03f5                 pea.l      1013(a3)
[0001a172] 43eb 03a9                 lea.l      937(a3),a1
[0001a176] 204c                      movea.l    a4,a0
[0001a178] 4eb9 0007 5680            jsr        sprintf
[0001a17e] 4fef 000c                 lea.l      12(a7),a7
[0001a182] 204c                      movea.l    a4,a0
[0001a184] 4eb9 0001 65f6            jsr        save_string
[0001a18a] 4bea 005c                 lea.l      92(a2),a5
[0001a18e] 701f                      moveq.l    #31,d0
[0001a190] 224d                      movea.l    a5,a1
[0001a192] 41d7                      lea.l      (a7),a0
[0001a194] 4eb9 0007 6a1a            jsr        strncpy
[0001a19a] 422f 001f                 clr.b      31(a7)
[0001a19e] 703b                      moveq.l    #59,d0
[0001a1a0] 41d7                      lea.l      (a7),a0
[0001a1a2] 6100 fb38                 bsr        p_string
[0001a1a6] 41eb 03fd                 lea.l      1021(a3),a0
[0001a1aa] 4eb9 0001 65f6            jsr        save_string
[0001a1b0] 43eb 0406                 lea.l      1030(a3),a1
[0001a1b4] 206a 007c                 movea.l    124(a2),a0
[0001a1b8] 6100 fc4c                 bsr        out_label2
[0001a1bc] 41eb 040a                 lea.l      1034(a3),a0
[0001a1c0] 4eb9 0001 65f6            jsr        save_string
[0001a1c6] 43eb 0406                 lea.l      1030(a3),a1
[0001a1ca] 206a 0080                 movea.l    128(a2),a0
[0001a1ce] 6100 fc36                 bsr        out_label2
[0001a1d2] 41eb 0412                 lea.l      1042(a3),a0
[0001a1d6] 4eb9 0001 65f6            jsr        save_string
[0001a1dc] 4bea 0084                 lea.l      132(a2),a5
[0001a1e0] 4243                      clr.w      d3
[0001a1e2] 6048                      bra.s      out_acs_3
out_acs_7:
[0001a1e4] 4a43                      tst.w      d3
[0001a1e6] 670a                      beq.s      out_acs_4
[0001a1e8] 41eb 0422                 lea.l      1058(a3),a0
[0001a1ec] 4eb9 0001 65f6            jsr        save_string
out_acs_4:
[0001a1f2] 0c55 00ff                 cmpi.w     #$00FF,(a5)
[0001a1f6] 6618                      bne.s      out_acs_5
[0001a1f8] 206d 0002                 movea.l    2(a5),a0
[0001a1fc] 4868 0016                 pea.l      22(a0)
[0001a200] 43eb 0426                 lea.l      1062(a3),a1
[0001a204] 204c                      movea.l    a4,a0
[0001a206] 4eb9 0007 5680            jsr        sprintf
[0001a20c] 584f                      addq.w     #4,a7
[0001a20e] 6010                      bra.s      out_acs_6
out_acs_5:
[0001a210] 3f15                      move.w     (a5),-(a7)
[0001a212] 43eb 0442                 lea.l      1090(a3),a1
[0001a216] 204c                      movea.l    a4,a0
[0001a218] 4eb9 0007 5680            jsr        sprintf
[0001a21e] 544f                      addq.w     #2,a7
out_acs_6:
[0001a220] 204c                      movea.l    a4,a0
[0001a222] 4eb9 0001 65f6            jsr        save_string
[0001a228] 5c4d                      addq.w     #6,a5
[0001a22a] 5243                      addq.w     #1,d3
out_acs_3:
[0001a22c] b67c 0020                 cmp.w      #$0020,d3
[0001a230] 6db2                      blt.s      out_acs_7
[0001a232] 41eb 045e                 lea.l      1118(a3),a0
[0001a236] 4eb9 0001 65f6            jsr        save_string
[0001a23c] 4243                      clr.w      d3
[0001a23e] 4bef 0020                 lea.l      32(a7),a5
[0001a242] 606e                      bra.s      out_acs_8
out_acs_13:
[0001a244] 41eb 0472                 lea.l      1138(a3),a0
[0001a248] 4eb9 0001 65f6            jsr        save_string
[0001a24e] b67c 0021                 cmp.w      #$0021,d3
[0001a252] 6c04                      bge.s      out_acs_9
[0001a254] 782c                      moveq.l    #44,d4
[0001a256] 6002                      bra.s      out_acs_10
out_acs_9:
[0001a258] 4204                      clr.b      d4
out_acs_10:
[0001a25a] 3f03                      move.w     d3,-(a7)
[0001a25c] 43eb 0477                 lea.l      1143(a3),a1
[0001a260] 204d                      movea.l    a5,a0
[0001a262] 4eb9 0007 5680            jsr        sprintf
[0001a268] 544f                      addq.w     #2,a7
[0001a26a] 224d                      movea.l    a5,a1
[0001a26c] 206a 0034                 movea.l    52(a2),a0
[0001a270] 4eb9 0003 1a5c            jsr        find_entry
[0001a276] 2c48                      movea.l    a0,a6
[0001a278] 200e                      move.l     a6,d0
[0001a27a] 662a                      bne.s      out_acs_11
[0001a27c] 224d                      movea.l    a5,a1
[0001a27e] 206a 0024                 movea.l    36(a2),a0
[0001a282] 4eb9 0003 1a5c            jsr        find_entry
[0001a288] 2c48                      movea.l    a0,a6
[0001a28a] 200e                      move.l     a6,d0
[0001a28c] 6618                      bne.s      out_acs_11
[0001a28e] 1004                      move.b     d4,d0
[0001a290] 3203                      move.w     d3,d1
[0001a292] 48c1                      ext.l      d1
[0001a294] e589                      lsl.l      #2,d1
[0001a296] 43f9 0007 e8e6            lea.l      mlmess,a1
[0001a29c] 2071 1800                 movea.l    0(a1,d1.l),a0
[0001a2a0] 6100 fa3a                 bsr        p_string
[0001a2a4] 600a                      bra.s      out_acs_12
out_acs_11:
[0001a2a6] 1004                      move.b     d4,d0
[0001a2a8] 206e 0004                 movea.l    4(a6),a0
[0001a2ac] 6100 fa2e                 bsr        p_string
out_acs_12:
[0001a2b0] 5243                      addq.w     #1,d3
out_acs_8:
[0001a2b2] b67c 0022                 cmp.w      #$0022,d3
[0001a2b6] 6d8c                      blt.s      out_acs_13
[0001a2b8] 41eb 0481                 lea.l      1153(a3),a0
[0001a2bc] 4eb9 0001 65f6            jsr        save_string
[0001a2c2] 41eb 048e                 lea.l      1166(a3),a0
[0001a2c6] 4eb9 0001 65f6            jsr        save_string
[0001a2cc] 41eb 04b0                 lea.l      1200(a3),a0
[0001a2d0] 4eb9 0001 65f6            jsr        save_string
[0001a2d6] 43eb 0001                 lea.l      1(a3),a1
[0001a2da] 206a 0214                 movea.l    532(a2),a0
[0001a2de] 6100 fae8                 bsr        out_label
[0001a2e2] 41eb 04cc                 lea.l      1228(a3),a0
[0001a2e6] 4eb9 0001 65f6            jsr        save_string
[0001a2ec] 43eb 04da                 lea.l      1242(a3),a1
[0001a2f0] 206a 0218                 movea.l    536(a2),a0
[0001a2f4] 6100 fad2                 bsr        out_label
[0001a2f8] 41eb 04dd                 lea.l      1245(a3),a0
[0001a2fc] 4eb9 0001 65f6            jsr        save_string
[0001a302] 43eb 0406                 lea.l      1030(a3),a1
[0001a306] 206a 021c                 movea.l    540(a2),a0
[0001a30a] 6100 fabc                 bsr        out_label
[0001a30e] 41eb 04ee                 lea.l      1262(a3),a0
[0001a312] 4eb9 0001 65f6            jsr        save_string
[0001a318] 302a 0220                 move.w     544(a2),d0
[0001a31c] 6706                      beq.s      out_acs_14
[0001a31e] 41eb 0504                 lea.l      1284(a3),a0
[0001a322] 6004                      bra.s      out_acs_15
out_acs_14:
[0001a324] 41eb 0509                 lea.l      1289(a3),a0
out_acs_15:
[0001a328] 4eb9 0001 65f6            jsr        save_string
[0001a32e] 41eb 050f                 lea.l      1295(a3),a0
[0001a332] 4eb9 0001 65f6            jsr        save_string
[0001a338] 302a 0222                 move.w     546(a2),d0
[0001a33c] 6706                      beq.s      out_acs_16
[0001a33e] 41eb 0504                 lea.l      1284(a3),a0
[0001a342] 6004                      bra.s      out_acs_17
out_acs_16:
[0001a344] 41eb 0509                 lea.l      1289(a3),a0
out_acs_17:
[0001a348] 4eb9 0001 65f6            jsr        save_string
[0001a34e] 41eb 0521                 lea.l      1313(a3),a0
[0001a352] 4eb9 0001 65f6            jsr        save_string
[0001a358] 3f2a 0224                 move.w     548(a2),-(a7)
[0001a35c] 43eb 0535                 lea.l      1333(a3),a1
[0001a360] 204c                      movea.l    a4,a0
[0001a362] 4eb9 0007 5680            jsr        sprintf
[0001a368] 544f                      addq.w     #2,a7
[0001a36a] 204c                      movea.l    a4,a0
[0001a36c] 4eb9 0001 65f6            jsr        save_string
[0001a372] 41eb 0542                 lea.l      1346(a3),a0
[0001a376] 4eb9 0001 65f6            jsr        save_string
[0001a37c] 43eb 054e                 lea.l      1358(a3),a1
[0001a380] 206a 0226                 movea.l    550(a2),a0
[0001a384] 6100 fa42                 bsr        out_label
[0001a388] 41eb 0557                 lea.l      1367(a3),a0
[0001a38c] 4eb9 0001 65f6            jsr        save_string
[0001a392] 43eb 0406                 lea.l      1030(a3),a1
[0001a396] 206a 022a                 movea.l    554(a2),a0
[0001a39a] 6100 fa2c                 bsr        out_label
[0001a39e] 41eb 0564                 lea.l      1380(a3),a0
[0001a3a2] 4eb9 0001 65f6            jsr        save_string
[0001a3a8] 43eb 0406                 lea.l      1030(a3),a1
[0001a3ac] 206a 022e                 movea.l    558(a2),a0
[0001a3b0] 6100 fa16                 bsr        out_label
[0001a3b4] 41eb 0573                 lea.l      1395(a3),a0
[0001a3b8] 4eb9 0001 65f6            jsr        save_string
[0001a3be] 43eb 0406                 lea.l      1030(a3),a1
[0001a3c2] 206a 0232                 movea.l    562(a2),a0
[0001a3c6] 6100 fa00                 bsr        out_label
[0001a3ca] 41eb 0580                 lea.l      1408(a3),a0
[0001a3ce] 4eb9 0001 65f6            jsr        save_string
[0001a3d4] 43eb 0406                 lea.l      1030(a3),a1
[0001a3d8] 206a 0236                 movea.l    566(a2),a0
[0001a3dc] 6100 f9ea                 bsr        out_label
[0001a3e0] 41eb 0592                 lea.l      1426(a3),a0
[0001a3e4] 4eb9 0001 65f6            jsr        save_string
[0001a3ea] 43eb 0406                 lea.l      1030(a3),a1
[0001a3ee] 206a 023a                 movea.l    570(a2),a0
[0001a3f2] 6100 f9d4                 bsr        out_label
[0001a3f6] 41eb 05a0                 lea.l      1440(a3),a0
[0001a3fa] 4eb9 0001 65f6            jsr        save_string
[0001a400] 43eb 0406                 lea.l      1030(a3),a1
[0001a404] 206a 023e                 movea.l    574(a2),a0
[0001a408] 6100 f9be                 bsr        out_label
[0001a40c] 41eb 05ad                 lea.l      1453(a3),a0
[0001a410] 4eb9 0001 65f6            jsr        save_string
[0001a416] 43eb 0406                 lea.l      1030(a3),a1
[0001a41a] 206a 0242                 movea.l    578(a2),a0
[0001a41e] 6100 f9a8                 bsr        out_label
[0001a422] 41eb 05b8                 lea.l      1464(a3),a0
[0001a426] 4eb9 0001 65f6            jsr        save_string
[0001a42c] 43eb 0406                 lea.l      1030(a3),a1
[0001a430] 206a 0246                 movea.l    582(a2),a0
[0001a434] 6100 f992                 bsr        out_label
[0001a438] 41eb 05c9                 lea.l      1481(a3),a0
[0001a43c] 4eb9 0001 65f6            jsr        save_string
[0001a442] 43eb 0406                 lea.l      1030(a3),a1
[0001a446] 206a 024a                 movea.l    586(a2),a0
[0001a44a] 6100 f97c                 bsr        out_label
[0001a44e] 41eb 05d6                 lea.l      1494(a3),a0
[0001a452] 4eb9 0001 65f6            jsr        save_string
[0001a458] 43eb 0406                 lea.l      1030(a3),a1
[0001a45c] 206a 024e                 movea.l    590(a2),a0
[0001a460] 6100 f966                 bsr        out_label
[0001a464] 41eb 05e3                 lea.l      1507(a3),a0
[0001a468] 4eb9 0001 65f6            jsr        save_string
[0001a46e] 3f2a 0252                 move.w     594(a2),-(a7)
[0001a472] 43eb 05f4                 lea.l      1524(a3),a1
[0001a476] 204c                      movea.l    a4,a0
[0001a478] 4eb9 0007 5680            jsr        sprintf
[0001a47e] 544f                      addq.w     #2,a7
[0001a480] 204c                      movea.l    a4,a0
[0001a482] 4eb9 0001 65f6            jsr        save_string
[0001a488] 3f2a 0254                 move.w     596(a2),-(a7)
[0001a48c] 43eb 0603                 lea.l      1539(a3),a1
[0001a490] 204c                      movea.l    a4,a0
[0001a492] 4eb9 0007 5680            jsr        sprintf
[0001a498] 544f                      addq.w     #2,a7
[0001a49a] 204c                      movea.l    a4,a0
[0001a49c] 4eb9 0001 65f6            jsr        save_string
[0001a4a2] 43eb 0406                 lea.l      1030(a3),a1
[0001a4a6] 206a 0256                 movea.l    598(a2),a0
[0001a4aa] 6100 f91c                 bsr        out_label
[0001a4ae] 41eb 0486                 lea.l      1158(a3),a0
[0001a4b2] 4eb9 0001 65f6            jsr        save_string
out_acs_2:
[0001a4b8] 4fef 0044                 lea.l      68(a7),a7
[0001a4bc] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0001a4c0] 4e75                      rts

out_cicon:
[0001a4c2] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[0001a4c6] 2648                      movea.l    a0,a3
[0001a4c8] 2449                      movea.l    a1,a2
[0001a4ca] 3600                      move.w     d0,d3
[0001a4cc] 49f9 0009 9f7e            lea.l      $00099F7E,a4
[0001a4d2] 4bf9 000f b02a            lea.l      iostring,a5
[0001a4d8] 3f12                      move.w     (a2),-(a7)
[0001a4da] 2f0b                      move.l     a3,-(a7)
[0001a4dc] 3f12                      move.w     (a2),-(a7)
[0001a4de] 43ec 0616                 lea.l      1558(a4),a1
[0001a4e2] 204d                      movea.l    a5,a0
[0001a4e4] 4eb9 0007 5680            jsr        sprintf
[0001a4ea] 504f                      addq.w     #8,a7
[0001a4ec] 204d                      movea.l    a5,a0
[0001a4ee] 4eb9 0001 65f6            jsr        save_string
[0001a4f4] 43ec 0406                 lea.l      1030(a4),a1
[0001a4f8] 206a 0002                 movea.l    2(a2),a0
[0001a4fc] 6100 f946                 bsr        out_label3
[0001a500] 41ec 064e                 lea.l      1614(a4),a0
[0001a504] 4eb9 0001 65f6            jsr        save_string
[0001a50a] 43ec 0406                 lea.l      1030(a4),a1
[0001a50e] 206a 0006                 movea.l    6(a2),a0
[0001a512] 6100 f8f2                 bsr        out_label2
[0001a516] 41ec 065e                 lea.l      1630(a4),a0
[0001a51a] 4eb9 0001 65f6            jsr        save_string
[0001a520] 43ec 0406                 lea.l      1030(a4),a1
[0001a524] 206a 000a                 movea.l    10(a2),a0
[0001a528] 6100 f91a                 bsr        out_label3
[0001a52c] 41ec 066e                 lea.l      1646(a4),a0
[0001a530] 4eb9 0001 65f6            jsr        save_string
[0001a536] 43ec 0406                 lea.l      1030(a4),a1
[0001a53a] 206a 000e                 movea.l    14(a2),a0
[0001a53e] 6100 f8c6                 bsr        out_label2
[0001a542] 4a43                      tst.w      d3
[0001a544] 671c                      beq.s      out_cicon_1
[0001a546] 2f0b                      move.l     a3,-(a7)
[0001a548] 3f03                      move.w     d3,-(a7)
[0001a54a] 43ec 067e                 lea.l      1662(a4),a1
[0001a54e] 204d                      movea.l    a5,a0
[0001a550] 4eb9 0007 5680            jsr        sprintf
[0001a556] 5c4f                      addq.w     #6,a7
[0001a558] 204d                      movea.l    a5,a0
[0001a55a] 4eb9 0001 65f6            jsr        save_string
[0001a560] 600a                      bra.s      out_cicon_2
out_cicon_1:
[0001a562] 41ec 069b                 lea.l      1691(a4),a0
[0001a566] 4eb9 0001 65f6            jsr        save_string
out_cicon_2:
[0001a56c] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0001a570] 4e75                      rts

out_icon:
[0001a572] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0001a576] 514f                      subq.w     #8,a7
[0001a578] 2f48 0004                 move.l     a0,4(a7)
[0001a57c] 2628 000e                 move.l     14(a0),d3
[0001a580] e48b                      lsr.l      #2,d3
[0001a582] 4a43                      tst.w      d3
[0001a584] 6f00 01e0                 ble        out_icon_1
[0001a588] 41e8 0016                 lea.l      22(a0),a0
[0001a58c] 4eb9 0001 800e            jsr        info_list
[0001a592] 206f 0004                 movea.l    4(a7),a0
[0001a596] 2ea8 0004                 move.l     4(a0),(a7)
[0001a59a] 47f9 0009 9f7e            lea.l      $00099F7E,a3
[0001a5a0] 41eb 06b2                 lea.l      1714(a3),a0
[0001a5a4] 4eb9 0001 65f6            jsr        save_string
[0001a5aa] 4244                      clr.w      d4
[0001a5ac] 45f9 000f b02a            lea.l      iostring,a2
[0001a5b2] 6000 01ac                 bra        out_icon_2
out_icon_13:
[0001a5b6] 3004                      move.w     d4,d0
[0001a5b8] 48c0                      ext.l      d0
[0001a5ba] e588                      lsl.l      #2,d0
[0001a5bc] 2057                      movea.l    (a7),a0
[0001a5be] 2870 0800                 movea.l    0(a0,d0.l),a4
[0001a5c2] 41ec 0016                 lea.l      22(a4),a0
[0001a5c6] 4eb9 0001 8066            jsr        info_obj
[0001a5cc] 2a6c 0004                 movea.l    4(a4),a5
[0001a5d0] 2c6c 0004                 movea.l    4(a4),a6
[0001a5d4] 4245                      clr.w      d5
[0001a5d6] 302e 003c                 move.w     60(a6),d0
[0001a5da] 6710                      beq.s      out_icon_3
[0001a5dc] 43ee 003c                 lea.l      60(a6),a1
[0001a5e0] 41ec 0016                 lea.l      22(a4),a0
[0001a5e4] 3005                      move.w     d5,d0
[0001a5e6] 6100 feda                 bsr        out_cicon
[0001a5ea] 7a08                      moveq.l    #8,d5
out_icon_3:
[0001a5ec] 302e 0026                 move.w     38(a6),d0
[0001a5f0] 6710                      beq.s      out_icon_4
[0001a5f2] 43ee 0026                 lea.l      38(a6),a1
[0001a5f6] 41ec 0016                 lea.l      22(a4),a0
[0001a5fa] 3005                      move.w     d5,d0
[0001a5fc] 6100 fec4                 bsr        out_cicon
[0001a600] 7a04                      moveq.l    #4,d5
out_icon_4:
[0001a602] 7c0f                      moveq.l    #15,d6
[0001a604] dc6d 0016                 add.w      22(a5),d6
[0001a608] e846                      asr.w      #4,d6
[0001a60a] cded 0018                 muls.w     24(a5),d6
[0001a60e] 5346                      subq.w     #1,d6
[0001a610] 2015                      move.l     (a5),d0
[0001a612] 4df5 0800                 lea.l      0(a5,d0.l),a6
[0001a616] 3f06                      move.w     d6,-(a7)
[0001a618] 486c 0016                 pea.l      22(a4)
[0001a61c] 43eb 06c8                 lea.l      1736(a3),a1
[0001a620] 204a                      movea.l    a2,a0
[0001a622] 4eb9 0007 5680            jsr        sprintf
[0001a628] 5c4f                      addq.w     #6,a7
[0001a62a] 204a                      movea.l    a2,a0
[0001a62c] 4eb9 0001 65f6            jsr        save_string
[0001a632] 4247                      clr.w      d7
[0001a634] 602c                      bra.s      out_icon_5
out_icon_7:
[0001a636] 3f1e                      move.w     (a6)+,-(a7)
[0001a638] 43eb 06f3                 lea.l      1779(a3),a1
[0001a63c] 204a                      movea.l    a2,a0
[0001a63e] 4eb9 0007 5680            jsr        sprintf
[0001a644] 544f                      addq.w     #2,a7
[0001a646] 204a                      movea.l    a2,a0
[0001a648] 4eb9 0001 65f6            jsr        save_string
[0001a64e] 7007                      moveq.l    #7,d0
[0001a650] c047                      and.w      d7,d0
[0001a652] 5f40                      subq.w     #7,d0
[0001a654] 660a                      bne.s      out_icon_6
[0001a656] 41eb 04ab                 lea.l      1195(a3),a0
[0001a65a] 4eb9 0001 65f6            jsr        save_string
out_icon_6:
[0001a660] 5247                      addq.w     #1,d7
out_icon_5:
[0001a662] bc47                      cmp.w      d7,d6
[0001a664] 6ed0                      bgt.s      out_icon_7
[0001a666] 3f06                      move.w     d6,-(a7)
[0001a668] 486c 0016                 pea.l      22(a4)
[0001a66c] 3f1e                      move.w     (a6)+,-(a7)
[0001a66e] 43eb 06fb                 lea.l      1787(a3),a1
[0001a672] 204a                      movea.l    a2,a0
[0001a674] 4eb9 0007 5680            jsr        sprintf
[0001a67a] 504f                      addq.w     #8,a7
[0001a67c] 204a                      movea.l    a2,a0
[0001a67e] 4eb9 0001 65f6            jsr        save_string
[0001a684] 4247                      clr.w      d7
[0001a686] 602c                      bra.s      out_icon_8
out_icon_10:
[0001a688] 3f1e                      move.w     (a6)+,-(a7)
[0001a68a] 43eb 06f3                 lea.l      1779(a3),a1
[0001a68e] 204a                      movea.l    a2,a0
[0001a690] 4eb9 0007 5680            jsr        sprintf
[0001a696] 544f                      addq.w     #2,a7
[0001a698] 204a                      movea.l    a2,a0
[0001a69a] 4eb9 0001 65f6            jsr        save_string
[0001a6a0] 7007                      moveq.l    #7,d0
[0001a6a2] c047                      and.w      d7,d0
[0001a6a4] 5f40                      subq.w     #7,d0
[0001a6a6] 660a                      bne.s      out_icon_9
[0001a6a8] 41eb 04ab                 lea.l      1195(a3),a0
[0001a6ac] 4eb9 0001 65f6            jsr        save_string
out_icon_9:
[0001a6b2] 5247                      addq.w     #1,d7
out_icon_8:
[0001a6b4] bc47                      cmp.w      d7,d6
[0001a6b6] 6ed0                      bgt.s      out_icon_10
[0001a6b8] 3f1e                      move.w     (a6)+,-(a7)
[0001a6ba] 43eb 0732                 lea.l      1842(a3),a1
[0001a6be] 204a                      movea.l    a2,a0
[0001a6c0] 4eb9 0007 5680            jsr        sprintf
[0001a6c6] 544f                      addq.w     #2,a7
[0001a6c8] 204a                      movea.l    a2,a0
[0001a6ca] 4eb9 0001 65f6            jsr        save_string
[0001a6d0] 3f2d 0020                 move.w     32(a5),-(a7)
[0001a6d4] 3f2d 001e                 move.w     30(a5),-(a7)
[0001a6d8] 3f2d 001c                 move.w     28(a5),-(a7)
[0001a6dc] 3f2d 001a                 move.w     26(a5),-(a7)
[0001a6e0] 3f2d 0018                 move.w     24(a5),-(a7)
[0001a6e4] 3f2d 0016                 move.w     22(a5),-(a7)
[0001a6e8] 3f2d 0014                 move.w     20(a5),-(a7)
[0001a6ec] 3f2d 0012                 move.w     18(a5),-(a7)
[0001a6f0] 3f2d 0010                 move.w     16(a5),-(a7)
[0001a6f4] 3f2d 000e                 move.w     14(a5),-(a7)
[0001a6f8] 3f2d 000c                 move.w     12(a5),-(a7)
[0001a6fc] 206d 0008                 movea.l    8(a5),a0
[0001a700] 4868 0016                 pea.l      22(a0)
[0001a704] 486c 0016                 pea.l      22(a4)
[0001a708] 486c 0016                 pea.l      22(a4)
[0001a70c] 486c 0016                 pea.l      22(a4)
[0001a710] 43eb 073f                 lea.l      1855(a3),a1
[0001a714] 204a                      movea.l    a2,a0
[0001a716] 4eb9 0007 5680            jsr        sprintf
[0001a71c] 4fef 0026                 lea.l      38(a7),a7
[0001a720] 204a                      movea.l    a2,a0
[0001a722] 4eb9 0001 65f6            jsr        save_string
[0001a728] 4a45                      tst.w      d5
[0001a72a] 671e                      beq.s      out_icon_11
[0001a72c] 486c 0016                 pea.l      22(a4)
[0001a730] 3f05                      move.w     d5,-(a7)
[0001a732] 43eb 0866                 lea.l      2150(a3),a1
[0001a736] 204a                      movea.l    a2,a0
[0001a738] 4eb9 0007 5680            jsr        sprintf
[0001a73e] 5c4f                      addq.w     #6,a7
[0001a740] 204a                      movea.l    a2,a0
[0001a742] 4eb9 0001 65f6            jsr        save_string
[0001a748] 600a                      bra.s      out_icon_12
out_icon_11:
[0001a74a] 41eb 0406                 lea.l      1030(a3),a0
[0001a74e] 4eb9 0001 65f6            jsr        save_string
out_icon_12:
[0001a754] 41eb 0870                 lea.l      2160(a3),a0
[0001a758] 4eb9 0001 65f6            jsr        save_string
[0001a75e] 5244                      addq.w     #1,d4
out_icon_2:
[0001a760] b644                      cmp.w      d4,d3
[0001a762] 6e00 fe52                 bgt        out_icon_13
out_icon_1:
[0001a766] 504f                      addq.w     #8,a7
[0001a768] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0001a76c] 4e75                      rts

out_mouse:
[0001a76e] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[0001a772] 2448                      movea.l    a0,a2
[0001a774] 262a 000e                 move.l     14(a2),d3
[0001a778] e48b                      lsr.l      #2,d3
[0001a77a] 4a43                      tst.w      d3
[0001a77c] 6f00 0112                 ble        out_mouse_1
[0001a780] 41ea 0016                 lea.l      22(a2),a0
[0001a784] 4eb9 0001 800e            jsr        info_list
[0001a78a] 246a 0004                 movea.l    4(a2),a2
[0001a78e] 47f9 0009 9f7e            lea.l      $00099F7E,a3
[0001a794] 41eb 087a                 lea.l      2170(a3),a0
[0001a798] 4eb9 0001 65f6            jsr        save_string
[0001a79e] 4244                      clr.w      d4
[0001a7a0] 4bf9 000f b02a            lea.l      iostring,a5
[0001a7a6] 6000 00e2                 bra        out_mouse_2
out_mouse_9:
[0001a7aa] 3004                      move.w     d4,d0
[0001a7ac] 48c0                      ext.l      d0
[0001a7ae] e588                      lsl.l      #2,d0
[0001a7b0] 2872 0800                 movea.l    0(a2,d0.l),a4
[0001a7b4] 41ec 0016                 lea.l      22(a4),a0
[0001a7b8] 4eb9 0001 8066            jsr        info_obj
[0001a7be] 2c6c 0004                 movea.l    4(a4),a6
[0001a7c2] 3f2e 0008                 move.w     8(a6),-(a7)
[0001a7c6] 3f2e 0006                 move.w     6(a6),-(a7)
[0001a7ca] 3f2e 0004                 move.w     4(a6),-(a7)
[0001a7ce] 3f2e 0002                 move.w     2(a6),-(a7)
[0001a7d2] 3f16                      move.w     (a6),-(a7)
[0001a7d4] 486c 0016                 pea.l      22(a4)
[0001a7d8] 43eb 0891                 lea.l      2193(a3),a1
[0001a7dc] 204d                      movea.l    a5,a0
[0001a7de] 4eb9 0007 5680            jsr        sprintf
[0001a7e4] 4fef 000e                 lea.l      14(a7),a7
[0001a7e8] 204d                      movea.l    a5,a0
[0001a7ea] 4eb9 0001 65f6            jsr        save_string
[0001a7f0] 4dee 000a                 lea.l      10(a6),a6
[0001a7f4] 7a0f                      moveq.l    #15,d5
[0001a7f6] 602a                      bra.s      out_mouse_3
out_mouse_5:
[0001a7f8] 3f1e                      move.w     (a6)+,-(a7)
[0001a7fa] 43eb 0901                 lea.l      2305(a3),a1
[0001a7fe] 204d                      movea.l    a5,a0
[0001a800] 4eb9 0007 5680            jsr        sprintf
[0001a806] 544f                      addq.w     #2,a7
[0001a808] 204d                      movea.l    a5,a0
[0001a80a] 4eb9 0001 65f6            jsr        save_string
[0001a810] ba7c 0008                 cmp.w      #$0008,d5
[0001a814] 660a                      bne.s      out_mouse_4
[0001a816] 41eb 08fb                 lea.l      2299(a3),a0
[0001a81a] 4eb9 0001 65f6            jsr        save_string
out_mouse_4:
[0001a820] 5345                      subq.w     #1,d5
out_mouse_3:
[0001a822] 4a45                      tst.w      d5
[0001a824] 6ed2                      bgt.s      out_mouse_5
[0001a826] 3f1e                      move.w     (a6)+,-(a7)
[0001a828] 43eb 0906                 lea.l      2310(a3),a1
[0001a82c] 204d                      movea.l    a5,a0
[0001a82e] 4eb9 0007 5680            jsr        sprintf
[0001a834] 544f                      addq.w     #2,a7
[0001a836] 204d                      movea.l    a5,a0
[0001a838] 4eb9 0001 65f6            jsr        save_string
[0001a83e] 7a0f                      moveq.l    #15,d5
[0001a840] 602a                      bra.s      out_mouse_6
out_mouse_8:
[0001a842] 3f1e                      move.w     (a6)+,-(a7)
[0001a844] 43eb 0901                 lea.l      2305(a3),a1
[0001a848] 204d                      movea.l    a5,a0
[0001a84a] 4eb9 0007 5680            jsr        sprintf
[0001a850] 544f                      addq.w     #2,a7
[0001a852] 204d                      movea.l    a5,a0
[0001a854] 4eb9 0001 65f6            jsr        save_string
[0001a85a] ba7c 0008                 cmp.w      #$0008,d5
[0001a85e] 660a                      bne.s      out_mouse_7
[0001a860] 41eb 08fb                 lea.l      2299(a3),a0
[0001a864] 4eb9 0001 65f6            jsr        save_string
out_mouse_7:
[0001a86a] 5345                      subq.w     #1,d5
out_mouse_6:
[0001a86c] 4a45                      tst.w      d5
[0001a86e] 6ed2                      bgt.s      out_mouse_8
[0001a870] 3f1e                      move.w     (a6)+,-(a7)
[0001a872] 43eb 0925                 lea.l      2341(a3),a1
[0001a876] 204d                      movea.l    a5,a0
[0001a878] 4eb9 0007 5680            jsr        sprintf
[0001a87e] 544f                      addq.w     #2,a7
[0001a880] 204d                      movea.l    a5,a0
[0001a882] 4eb9 0001 65f6            jsr        save_string
[0001a888] 5244                      addq.w     #1,d4
out_mouse_2:
[0001a88a] b644                      cmp.w      d4,d3
[0001a88c] 6e00 ff1c                 bgt        out_mouse_9
out_mouse_1:
[0001a890] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[0001a894] 4e75                      rts

out_image:
[0001a896] 48e7 1e3e                 movem.l    d3-d6/a2-a6,-(a7)
[0001a89a] 514f                      subq.w     #8,a7
[0001a89c] 2f48 0004                 move.l     a0,4(a7)
[0001a8a0] 2628 000e                 move.l     14(a0),d3
[0001a8a4] e48b                      lsr.l      #2,d3
[0001a8a6] 4a43                      tst.w      d3
[0001a8a8] 6f00 0100                 ble        out_image_1
[0001a8ac] 41e8 0016                 lea.l      22(a0),a0
[0001a8b0] 4eb9 0001 800e            jsr        info_list
[0001a8b6] 206f 0004                 movea.l    4(a7),a0
[0001a8ba] 2ea8 0004                 move.l     4(a0),(a7)
[0001a8be] 47f9 0009 9f7e            lea.l      $00099F7E,a3
[0001a8c4] 41eb 0936                 lea.l      2358(a3),a0
[0001a8c8] 4eb9 0001 65f6            jsr        save_string
[0001a8ce] 4244                      clr.w      d4
[0001a8d0] 45f9 000f b02a            lea.l      iostring,a2
[0001a8d6] 6000 00cc                 bra        out_image_2
out_image_6:
[0001a8da] 3004                      move.w     d4,d0
[0001a8dc] 48c0                      ext.l      d0
[0001a8de] e588                      lsl.l      #2,d0
[0001a8e0] 2057                      movea.l    (a7),a0
[0001a8e2] 2870 0800                 movea.l    0(a0,d0.l),a4
[0001a8e6] 41ec 0016                 lea.l      22(a4),a0
[0001a8ea] 4eb9 0001 8066            jsr        info_obj
[0001a8f0] 2a6c 0004                 movea.l    4(a4),a5
[0001a8f4] 3a2d 0004                 move.w     4(a5),d5
[0001a8f8] e245                      asr.w      #1,d5
[0001a8fa] cbed 0006                 muls.w     6(a5),d5
[0001a8fe] 5345                      subq.w     #1,d5
[0001a900] 2015                      move.l     (a5),d0
[0001a902] 4df5 0800                 lea.l      0(a5,d0.l),a6
[0001a906] 3f05                      move.w     d5,-(a7)
[0001a908] 486c 0016                 pea.l      22(a4)
[0001a90c] 43eb 094d                 lea.l      2381(a3),a1
[0001a910] 204a                      movea.l    a2,a0
[0001a912] 4eb9 0007 5680            jsr        sprintf
[0001a918] 5c4f                      addq.w     #6,a7
[0001a91a] 204a                      movea.l    a2,a0
[0001a91c] 4eb9 0001 65f6            jsr        save_string
[0001a922] 4246                      clr.w      d6
[0001a924] 602c                      bra.s      out_image_3
out_image_5:
[0001a926] 3f1e                      move.w     (a6)+,-(a7)
[0001a928] 43eb 06f3                 lea.l      1779(a3),a1
[0001a92c] 204a                      movea.l    a2,a0
[0001a92e] 4eb9 0007 5680            jsr        sprintf
[0001a934] 544f                      addq.w     #2,a7
[0001a936] 204a                      movea.l    a2,a0
[0001a938] 4eb9 0001 65f6            jsr        save_string
[0001a93e] 7007                      moveq.l    #7,d0
[0001a940] c046                      and.w      d6,d0
[0001a942] 5f40                      subq.w     #7,d0
[0001a944] 660a                      bne.s      out_image_4
[0001a946] 41eb 08fb                 lea.l      2299(a3),a0
[0001a94a] 4eb9 0001 65f6            jsr        save_string
out_image_4:
[0001a950] 5246                      addq.w     #1,d6
out_image_3:
[0001a952] ba46                      cmp.w      d6,d5
[0001a954] 6ed0                      bgt.s      out_image_5
[0001a956] 3f1e                      move.w     (a6)+,-(a7)
[0001a958] 43eb 0979                 lea.l      2425(a3),a1
[0001a95c] 204a                      movea.l    a2,a0
[0001a95e] 4eb9 0007 5680            jsr        sprintf
[0001a964] 544f                      addq.w     #2,a7
[0001a966] 204a                      movea.l    a2,a0
[0001a968] 4eb9 0001 65f6            jsr        save_string
[0001a96e] 3f2d 000c                 move.w     12(a5),-(a7)
[0001a972] 3f2d 000a                 move.w     10(a5),-(a7)
[0001a976] 3f2d 0008                 move.w     8(a5),-(a7)
[0001a97a] 3f2d 0006                 move.w     6(a5),-(a7)
[0001a97e] 3f2d 0004                 move.w     4(a5),-(a7)
[0001a982] 486c 0016                 pea.l      22(a4)
[0001a986] 486c 0016                 pea.l      22(a4)
[0001a98a] 43eb 0988                 lea.l      2440(a3),a1
[0001a98e] 204a                      movea.l    a2,a0
[0001a990] 4eb9 0007 5680            jsr        sprintf
[0001a996] 4fef 0012                 lea.l      18(a7),a7
[0001a99a] 204a                      movea.l    a2,a0
[0001a99c] 4eb9 0001 65f6            jsr        save_string
[0001a9a2] 5244                      addq.w     #1,d4
out_image_2:
[0001a9a4] b644                      cmp.w      d4,d3
[0001a9a6] 6e00 ff32                 bgt        out_image_6
out_image_1:
[0001a9aa] 504f                      addq.w     #8,a7
[0001a9ac] 4cdf 7c78                 movem.l    (a7)+,d3-d6/a2-a6
[0001a9b0] 4e75                      rts

out_obj:
[0001a9b2] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[0001a9b6] 4fef ffbc                 lea.l      -68(a7),a7
[0001a9ba] 2f48 0040                 move.l     a0,64(a7)
[0001a9be] 2f49 003c                 move.l     a1,60(a7)
[0001a9c2] 45f9 000f bc12            lea.l      $000FBC12,a2
[0001a9c8] 2628 000e                 move.l     14(a0),d3
[0001a9cc] e48b                      lsr.l      #2,d3
[0001a9ce] 4a43                      tst.w      d3
[0001a9d0] 6f00 0382                 ble        out_obj_1
[0001a9d4] 41e8 0016                 lea.l      22(a0),a0
[0001a9d8] 4eb9 0001 800e            jsr        info_list
[0001a9de] 206f 003c                 movea.l    60(a7),a0
[0001a9e2] 4eb9 0001 65f6            jsr        save_string
[0001a9e8] 33fc ffff 000f bc10       move.w     #$FFFF,mapX
[0001a9f0] 206f 0040                 movea.l    64(a7),a0
[0001a9f4] 2f68 0004 0038            move.l     4(a0),56(a7)
[0001a9fa] 4244                      clr.w      d4
[0001a9fc] 4df9 0009 9f7e            lea.l      $00099F7E,a6
[0001aa02] 47f9 000f b02a            lea.l      iostring,a3
[0001aa08] 49ef 001c                 lea.l      28(a7),a4
[0001aa0c] 6000 0340                 bra        out_obj_2
out_obj_23:
[0001aa10] 3004                      move.w     d4,d0
[0001aa12] 48c0                      ext.l      d0
[0001aa14] e588                      lsl.l      #2,d0
[0001aa16] 206f 0038                 movea.l    56(a7),a0
[0001aa1a] 2f70 0800 0034            move.l     0(a0,d0.l),52(a7)
[0001aa20] 206f 0034                 movea.l    52(a7),a0
[0001aa24] 41e8 0016                 lea.l      22(a0),a0
[0001aa28] 4eb9 0001 8066            jsr        info_obj
[0001aa2e] 206f 0034                 movea.l    52(a7),a0
[0001aa32] 2028 000e                 move.l     14(a0),d0
[0001aa36] 7238                      moveq.l    #56,d1
[0001aa38] 4eb9 0007 769e            jsr        _uldiv
[0001aa3e] 2a00                      move.l     d0,d5
[0001aa40] 206f 0034                 movea.l    52(a7),a0
[0001aa44] 2a68 0004                 movea.l    4(a0),a5
[0001aa48] 4246                      clr.w      d6
[0001aa4a] 3486                      move.w     d6,(a2)
[0001aa4c] 4247                      clr.w      d7
[0001aa4e] 6062                      bra.s      out_obj_3
out_obj_7:
[0001aa50] 2015                      move.l     (a5),d0
[0001aa52] 671e                      beq.s      out_obj_4
[0001aa54] 3f06                      move.w     d6,-(a7)
[0001aa56] 2040                      movea.l    d0,a0
[0001aa58] 4868 0016                 pea.l      22(a0)
[0001aa5c] 43ee 09f9                 lea.l      2553(a6),a1
[0001aa60] 204b                      movea.l    a3,a0
[0001aa62] 4eb9 0007 5680            jsr        sprintf
[0001aa68] 5c4f                      addq.w     #6,a7
[0001aa6a] 204b                      movea.l    a3,a0
[0001aa6c] 4eb9 0001 65f6            jsr        save_string
out_obj_4:
[0001aa72] 202d 0020                 move.l     32(a5),d0
[0001aa76] 6628                      bne.s      out_obj_5
[0001aa78] 222d 0024                 move.l     36(a5),d1
[0001aa7c] 6622                      bne.s      out_obj_5
[0001aa7e] 242d 002c                 move.l     44(a5),d2
[0001aa82] 661c                      bne.s      out_obj_5
[0001aa84] 202d 0030                 move.l     48(a5),d0
[0001aa88] 6616                      bne.s      out_obj_5
[0001aa8a] 222d 0004                 move.l     4(a5),d1
[0001aa8e] 6610                      bne.s      out_obj_5
[0001aa90] 342d 002a                 move.w     42(a5),d2
[0001aa94] 660a                      bne.s      out_obj_5
[0001aa96] 302d 0034                 move.w     52(a5),d0
[0001aa9a] 6604                      bne.s      out_obj_5
[0001aa9c] 5246                      addq.w     #1,d6
[0001aa9e] 6002                      bra.s      out_obj_6
out_obj_5:
[0001aaa0] 5446                      addq.w     #2,d6
out_obj_6:
[0001aaa2] 4bed 0038                 lea.l      56(a5),a5
[0001aaa6] 5247                      addq.w     #1,d7
[0001aaa8] 3007                      move.w     d7,d0
[0001aaaa] 48c0                      ext.l      d0
[0001aaac] d080                      add.l      d0,d0
[0001aaae] 3586 0800                 move.w     d6,0(a2,d0.l)
out_obj_3:
[0001aab2] ba47                      cmp.w      d7,d5
[0001aab4] 6e9a                      bgt.s      out_obj_7
[0001aab6] 70ff                      moveq.l    #-1,d0
[0001aab8] d046                      add.w      d6,d0
[0001aaba] 3f00                      move.w     d0,-(a7)
[0001aabc] 206f 0036                 movea.l    54(a7),a0
[0001aac0] 4868 0016                 pea.l      22(a0)
[0001aac4] 43ee 0a04                 lea.l      2564(a6),a1
[0001aac8] 204b                      movea.l    a3,a0
[0001aaca] 4eb9 0007 5680            jsr        sprintf
[0001aad0] 5c4f                      addq.w     #6,a7
[0001aad2] 204b                      movea.l    a3,a0
[0001aad4] 4eb9 0001 65f6            jsr        save_string
[0001aada] 206f 0034                 movea.l    52(a7),a0
[0001aade] 2a68 0004                 movea.l    4(a0),a5
[0001aae2] 4247                      clr.w      d7
[0001aae4] 6000 0256                 bra        out_obj_8
out_obj_22:
[0001aae8] 7018                      moveq.l    #24,d0
[0001aaea] 43ed 0008                 lea.l      8(a5),a1
[0001aaee] 204c                      movea.l    a4,a0
[0001aaf0] 4eb9 0007 6f44            jsr        memcpy
[0001aaf6] 7018                      moveq.l    #24,d0
[0001aaf8] 43ed 0020                 lea.l      32(a5),a1
[0001aafc] 41ef 0004                 lea.l      4(a7),a0
[0001ab00] 4eb9 0007 6f44            jsr        memcpy
[0001ab06] 3014                      move.w     (a4),d0
[0001ab08] 48c0                      ext.l      d0
[0001ab0a] d080                      add.l      d0,d0
[0001ab0c] 38b2 0800                 move.w     0(a2,d0.l),(a4)
[0001ab10] 302c 0002                 move.w     2(a4),d0
[0001ab14] 48c0                      ext.l      d0
[0001ab16] d080                      add.l      d0,d0
[0001ab18] 3972 0800 0002            move.w     0(a2,d0.l),2(a4)
[0001ab1e] 302c 0004                 move.w     4(a4),d0
[0001ab22] 48c0                      ext.l      d0
[0001ab24] d080                      add.l      d0,d0
[0001ab26] 3972 0800 0004            move.w     0(a2,d0.l),4(a4)
[0001ab2c] 70ff                      moveq.l    #-1,d0
[0001ab2e] d045                      add.w      d5,d0
[0001ab30] be40                      cmp.w      d0,d7
[0001ab32] 6622                      bne.s      out_obj_9
[0001ab34] 3207                      move.w     d7,d1
[0001ab36] 48c1                      ext.l      d1
[0001ab38] d281                      add.l      d1,d1
[0001ab3a] 3432 1802                 move.w     2(a2,d1.l),d2
[0001ab3e] 7c02                      moveq.l    #2,d6
[0001ab40] dc72 1800                 add.w      0(a2,d1.l),d6
[0001ab44] b446                      cmp.w      d6,d2
[0001ab46] 6608                      bne.s      out_obj_10
[0001ab48] 006f 0020 000c            ori.w      #$0020,12(a7)
[0001ab4e] 6006                      bra.s      out_obj_9
out_obj_10:
[0001ab50] 006c 0020 0008            ori.w      #$0020,8(a4)
out_obj_9:
[0001ab56] 3f2c 000a                 move.w     10(a4),-(a7)
[0001ab5a] 3f2c 0008                 move.w     8(a4),-(a7)
[0001ab5e] 3f2c 0006                 move.w     6(a4),-(a7)
[0001ab62] 3f2c 0004                 move.w     4(a4),-(a7)
[0001ab66] 3f2c 0002                 move.w     2(a4),-(a7)
[0001ab6a] 3f14                      move.w     (a4),-(a7)
[0001ab6c] 43ee 0a30                 lea.l      2608(a6),a1
[0001ab70] 204b                      movea.l    a3,a0
[0001ab72] 4eb9 0007 5680            jsr        sprintf
[0001ab78] 4fef 000c                 lea.l      12(a7),a7
[0001ab7c] 204b                      movea.l    a3,a0
[0001ab7e] 4eb9 0001 65f6            jsr        save_string
[0001ab84] 0c2c 0014 0007            cmpi.b     #$14,7(a4)
[0001ab8a] 6710                      beq.s      out_obj_11
[0001ab8c] 0c2c 0019 0007            cmpi.b     #$19,7(a4)
[0001ab92] 6708                      beq.s      out_obj_11
[0001ab94] 0c2c 001b 0007            cmpi.b     #$1B,7(a4)
[0001ab9a] 6614                      bne.s      out_obj_12
out_obj_11:
[0001ab9c] 2f2c 000c                 move.l     12(a4),-(a7)
[0001aba0] 43ee 0a91                 lea.l      2705(a6),a1
[0001aba4] 204b                      movea.l    a3,a0
[0001aba6] 4eb9 0007 5680            jsr        sprintf
[0001abac] 584f                      addq.w     #4,a7
[0001abae] 6016                      bra.s      out_obj_13
out_obj_12:
[0001abb0] 206c 000c                 movea.l    12(a4),a0
[0001abb4] 4868 0016                 pea.l      22(a0)
[0001abb8] 43ee 0aab                 lea.l      2731(a6),a1
[0001abbc] 204b                      movea.l    a3,a0
[0001abbe] 4eb9 0007 5680            jsr        sprintf
[0001abc4] 584f                      addq.w     #4,a7
out_obj_13:
[0001abc6] 204b                      movea.l    a3,a0
[0001abc8] 4eb9 0001 65f6            jsr        save_string
[0001abce] 3f2c 0016                 move.w     22(a4),-(a7)
[0001abd2] 3f2c 0014                 move.w     20(a4),-(a7)
[0001abd6] 3f2c 0012                 move.w     18(a4),-(a7)
[0001abda] 3f2c 0010                 move.w     16(a4),-(a7)
[0001abde] 43ee 0ac8                 lea.l      2760(a6),a1
[0001abe2] 204b                      movea.l    a3,a0
[0001abe4] 4eb9 0007 5680            jsr        sprintf
[0001abea] 504f                      addq.w     #8,a7
[0001abec] 204b                      movea.l    a3,a0
[0001abee] 4eb9 0001 65f6            jsr        save_string
[0001abf4] 7020                      moveq.l    #32,d0
[0001abf6] c06c 0008                 and.w      8(a4),d0
[0001abfa] 670c                      beq.s      out_obj_14
[0001abfc] 41ee 0984                 lea.l      2436(a6),a0
[0001ac00] 4eb9 0001 65f6            jsr        save_string
[0001ac06] 600a                      bra.s      out_obj_15
out_obj_14:
[0001ac08] 41ee 0afe                 lea.l      2814(a6),a0
[0001ac0c] 4eb9 0001 65f6            jsr        save_string
out_obj_15:
[0001ac12] 3007                      move.w     d7,d0
[0001ac14] 48c0                      ext.l      d0
[0001ac16] d080                      add.l      d0,d0
[0001ac18] 3232 0802                 move.w     2(a2,d0.l),d1
[0001ac1c] 7402                      moveq.l    #2,d2
[0001ac1e] d472 0800                 add.w      0(a2,d0.l),d2
[0001ac22] b242                      cmp.w      d2,d1
[0001ac24] 6600 0110                 bne        out_obj_16
[0001ac28] 2c2d 0004                 move.l     4(a5),d6
[0001ac2c] 670a                      beq.s      out_obj_17
[0001ac2e] 2046                      movea.l    d6,a0
[0001ac30] 41e8 0016                 lea.l      22(a0),a0
[0001ac34] 2e88                      move.l     a0,(a7)
[0001ac36] 6006                      bra.s      out_obj_18
out_obj_17:
[0001ac38] 2ebc 0009 9f8e            move.l     #$00099F8E,(a7)
out_obj_18:
[0001ac3e] 206f 0034                 movea.l    52(a7),a0
[0001ac42] 4868 0016                 pea.l      22(a0)
[0001ac46] 3007                      move.w     d7,d0
[0001ac48] 48c0                      ext.l      d0
[0001ac4a] d080                      add.l      d0,d0
[0001ac4c] 3f32 0800                 move.w     0(a2,d0.l),-(a7)
[0001ac50] 43ee 0b04                 lea.l      2820(a6),a1
[0001ac54] 204b                      movea.l    a3,a0
[0001ac56] 4eb9 0007 5680            jsr        sprintf
[0001ac5c] 5c4f                      addq.w     #6,a7
[0001ac5e] 204b                      movea.l    a3,a0
[0001ac60] 4eb9 0001 65f6            jsr        save_string
[0001ac66] 202f 0004                 move.l     4(a7),d0
[0001ac6a] 6720                      beq.s      out_obj_19
[0001ac6c] 41ee 0b0c                 lea.l      2828(a6),a0
[0001ac70] 4eb9 0001 65f6            jsr        save_string
[0001ac76] 43ee 0406                 lea.l      1030(a6),a1
[0001ac7a] 206f 0004                 movea.l    4(a7),a0
[0001ac7e] 6100 f148                 bsr        out_label
[0001ac82] 41ee 0b14                 lea.l      2836(a6),a0
[0001ac86] 4eb9 0001 65f6            jsr        save_string
out_obj_19:
[0001ac8c] 202f 0008                 move.l     8(a7),d0
[0001ac90] 6720                      beq.s      out_obj_20
[0001ac92] 41ee 0b17                 lea.l      2839(a6),a0
[0001ac96] 4eb9 0001 65f6            jsr        save_string
[0001ac9c] 43ee 0406                 lea.l      1030(a6),a1
[0001aca0] 206f 0008                 movea.l    8(a7),a0
[0001aca4] 6100 f122                 bsr        out_label
[0001aca8] 41ee 0b14                 lea.l      2836(a6),a0
[0001acac] 4eb9 0001 65f6            jsr        save_string
out_obj_20:
[0001acb2] 3f2f 000e                 move.w     14(a7),-(a7)
[0001acb6] 3f2f 000e                 move.w     14(a7),-(a7)
[0001acba] 43ee 0b1e                 lea.l      2846(a6),a1
[0001acbe] 204b                      movea.l    a3,a0
[0001acc0] 4eb9 0007 5680            jsr        sprintf
[0001acc6] 584f                      addq.w     #4,a7
[0001acc8] 204b                      movea.l    a3,a0
[0001acca] 4eb9 0001 65f6            jsr        save_string
[0001acd0] 41ee 0b3b                 lea.l      2875(a6),a0
[0001acd4] 4eb9 0001 65f6            jsr        save_string
[0001acda] 43ee 0406                 lea.l      1030(a6),a1
[0001acde] 206f 0010                 movea.l    16(a7),a0
[0001ace2] 6100 f122                 bsr        out_label2
[0001ace6] 41ee 0b44                 lea.l      2884(a6),a0
[0001acea] 4eb9 0001 65f6            jsr        save_string
[0001acf0] 43ee 0406                 lea.l      1030(a6),a1
[0001acf4] 206f 0014                 movea.l    20(a7),a0
[0001acf8] 6100 f10c                 bsr        out_label2
[0001acfc] 2f17                      move.l     (a7),-(a7)
[0001acfe] 3f2f 001c                 move.w     28(a7),-(a7)
[0001ad02] 43ee 0b4e                 lea.l      2894(a6),a1
[0001ad06] 204b                      movea.l    a3,a0
[0001ad08] 4eb9 0007 5680            jsr        sprintf
[0001ad0e] 5c4f                      addq.w     #6,a7
[0001ad10] 204b                      movea.l    a3,a0
[0001ad12] 4eb9 0001 65f6            jsr        save_string
[0001ad18] 7020                      moveq.l    #32,d0
[0001ad1a] c06f 000c                 and.w      12(a7),d0
[0001ad1e] 670c                      beq.s      out_obj_21
[0001ad20] 41ee 0984                 lea.l      2436(a6),a0
[0001ad24] 4eb9 0001 65f6            jsr        save_string
[0001ad2a] 600a                      bra.s      out_obj_16
out_obj_21:
[0001ad2c] 41ee 0afe                 lea.l      2814(a6),a0
[0001ad30] 4eb9 0001 65f6            jsr        save_string
out_obj_16:
[0001ad36] 4bed 0038                 lea.l      56(a5),a5
[0001ad3a] 5247                      addq.w     #1,d7
out_obj_8:
[0001ad3c] ba47                      cmp.w      d7,d5
[0001ad3e] 6e00 fda8                 bgt        out_obj_22
[0001ad42] 41ee 0208                 lea.l      520(a6),a0
[0001ad46] 4eb9 0001 65f6            jsr        save_string
[0001ad4c] 5244                      addq.w     #1,d4
out_obj_2:
[0001ad4e] b644                      cmp.w      d4,d3
[0001ad50] 6e00 fcbe                 bgt        out_obj_23
out_obj_1:
[0001ad54] 4fef 0044                 lea.l      68(a7),a7
[0001ad58] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[0001ad5c] 4e75                      rts

	.data

[00099f5a]                           dc.b ';',$0d,$0a,0
[00099f5e]                           dc.b '                                ',$27,0
[00099f80]                           dc.b $27,'#%i',$27,0
[00099f86]                           dc.w $2727
[00099f88]                           dc.b $00
[00099f89]                           dc.b $25
[00099f8a]                           dc.w $6300
[00099f8c]                           dc.b $27,'#0',0
[00099f90]                           dc.w $2573
[00099f92]                           dc.b $00
[00099f93]                           dc.b '@%s',0
[00099f97]                           dc.b '@%-12s[3]',0
[00099fa1]                           dc.b $0d,$0a,'IMPLEMENTATION',$0d,$0a,$0d,$0a,'(*',$09,'Pascal Routines',$09,'*)',$0d,$0a,$0d,$0a,0
[00099fcf]                           dc.b '(* ',$27,'%s',$27,' Not yet defined by user *)',$0d,$0a,0
[00099ff4]                           dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'Pascal Prototypes',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009a016]                           dc.b 'Procedure %s;',$0d,$0a,0
[0009a026]                           dc.b 'Function %s( dummy1, dummy2: Pointer; pb: PARMBLKPtr ) : Integer;',$0d,$0a,0
[0009a06a]                           dc.b 'Function %s( entry: ACSOBJECTPtr; task: Integer; in_out: Pointer ) : Boolean;',$0d,$0a,0
[0009a0ba]                           dc.b 'Function %s( wi: AwindowPtr ) : Integer;',$0d,$0a,0
[0009a0e5]                           dc.b 'Function %s( para: Pointer ) : AwindowPtr;',$0d,$0a,0
[0009a112]                           dc.b 'Function %s( wi: AwindowPtr; kstate, key: Integer ) : Integer;',$0d,$0a,0
[0009a153]                           dc.b 'Procedure %s( wi: AwindowPtr; obnr, state: Integer );',$0d,$0a,0
[0009a18b]                           dc.b 'Procedure %s( wi: AwindowPtr; area: AxywhPtr );',$0d,$0a,0
[0009a1bd]                           dc.b 'Procedure %s( wi: AwindowPtr );',$0d,$0a,0
[0009a1df]                           dc.b 'Procedure %s( wi: AwindowPtr; pos: Integer );',$0d,$0a,0
[0009a20f]                           dc.b 'Function %s( wi: AwindowPtr; task: Integer; in_out: Pointer ) : Boolean;',$0d,$0a,0
[0009a25a]                           dc.b 'Function %s( wi: AwindowPtr; all: Integer ) : Integer;',$0d,$0a,0
[0009a293]                           dc.b 'Function %s( wi: AwindowPtr; anz: Integer; cmd: Pointer; antwort: A_GSAntwortPtr ) : Integer;',$0d,$0a,0
[0009a2f3]                           dc.b '(* %s Type %d ?? *)',$0d,$0a,0
[0009a309]                           dc.b $0d,$0a,$0d,$0a,'ACSdescr: Adescr = ',$0d,$0a,$09,'(',$0d,$0a,0
[0009a327]                           dc.b $09,$09,'magic: ',$27,'%s',$27,'#0; version: %d; dx: %2d; dy: %2d; flags: $%04x;',$0d,$0a,' ',$09,$09,'acc_reg: ',0
[0009a373]                           dc.b 'ACS3.00',0
[0009a37b]                           dc.b $09,$09,'root: ',0
[0009a384]                           dc.b 'NIL',0
[0009a388]                           dc.b '; acc: ',0
[0009a390]                           dc.b ';',$0d,$0a,$09,$09,'mouse: (',$0d,$0a,0
[0009a3a0]                           dc.b ',',$0d,$0a,0
[0009a3a4]                           dc.b $09,$09,$09,'(number: 255; form: @%s)',0
[0009a3c0]                           dc.b $09,$09,$09,'(number: %3d; form: NIL)',0
[0009a3dc]                           dc.b $0d,$0a,$09,$09,');',$0d,$0a,$09,$09,'mess: (',$0d,$0a,0
[0009a3f0]                           dc.b $09,$09,$09,$09,0
[0009a3f5]                           dc.b 'ACS(%02d)',0
[0009a3ff]                           dc.b $0d,$0a,$09,$09,')',$0d,$0a,$09,');',$0d,$0a,0
[0009a40c]                           dc.b $0d,$0a,$0d,$0a,'ACSconfig: Aconfig = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
[0009a42e]                           dc.b 'CfgInfo: (',$0d,$0a,$09,$09,$09,'dateiname: ',$27,0
[0009a44a]                           dc.b $27,'; comment: ',$27,0
[0009a458]                           dc.w $253b
[0009a45a]                           dc.b $00
[0009a45b]                           dc.b $27,'; env_praefix: ',0
[0009a46c]                           dc.b '; ',$0d,$0a,$09,$09,$09,'casesensitiv: ',0
[0009a482]                           dc.b 'TRUE',0
[0009a487]                           dc.b 'FALSE',0
[0009a48d]                           dc.b '; file_sensitiv: ',0
[0009a49f]                           dc.b ';',$0d,$0a,$09,$09,$09,'file_buffer: ',0
[0009a4b3]                           dc.b '%i',$0d,$0a,$09,$09,');',$0d,$0a,$09,$09,0
[0009a4c0]                           dc.b 'BaseName: ',$27,0
[0009a4cc]                           dc.b 'PUR_DESK',0
[0009a4d5]                           dc.b $27,'; ACSterm: ',0
[0009a4e2]                           dc.b '; ACSaboutme: ',0
[0009a4f1]                           dc.b '; ACSclose: ',0
[0009a4fe]                           dc.b ';',$0d,$0a,$09,$09,'ACSmessage: ',0
[0009a510]                           dc.b '; ACSmproto: ',0
[0009a51e]                           dc.b '; ACStimer: ',0
[0009a52b]                           dc.b '; ACSkey: ',0
[0009a536]                           dc.b ';',$0d,$0a,$09,$09,'ACSbutton: ',0
[0009a547]                           dc.b '; ACSmouse: ',0
[0009a554]                           dc.b '; ACSwikey: ',0
[0009a561]                           dc.b ';',$0d,$0a,$09,$09,'init_prot: ',0
[0009a572]                           dc.b '%i; XAccType: ',0
[0009a581]                           dc.b '%i; ACSGEMScript: ',0
[0009a594]                           dc.b '_C%d_%-s: CICON = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,'num_planes: %d;',$0d,$0a,$09,$09,'col_data: ',0
[0009a5cc]                           dc.b ';',$0d,$0a,$09,$09,'col_mask: ',0
[0009a5dc]                           dc.b ';',$0d,$0a,$09,$09,'sel_data: ',0
[0009a5ec]                           dc.b ';',$0d,$0a,$09,$09,'sel_mask: ',0
[0009a5fc]                           dc.b ';',$0d,$0a,$09,$09,'next_res: @_C%d_%-s);',$0d,$0a,0
[0009a619]                           dc.b ';',$0d,$0a,$09,$09,'next_res: NIL);',$0d,$0a,0
[0009a630]                           dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'ICONS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009a646]                           dc.b '_MSK_%-s: array [0..%d] of WORD = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
[0009a671]                           dc.b '$%04x, ',0
[0009a679]                           dc.b '$%04x',$0d,$0a,$09,');',$0d,$0a,'_DAT_%-s: array [0..%d] of WORD = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
[0009a6b0]                           dc.b '$%04x',$0d,$0a,$09,');',$0d,$0a,0
[0009a6bd]                           dc.b '%-s: CICONBLK = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,'monoblk: ',$0d,$0a,$09,$09,'(',$0d,$0a,$09,$09,$09,'ib_pmask: @_MSK_%s; ib_pdata: @_DAT_%s; ib_ptext: @%s;',$0d,$0a,$09,$09,$09,'ib_char: $%04x; ib_xchar: %2d; ib_ychar: %2d;',$0d,$0a,$09,$09,$09,'ib_xicon: %2d; ib_yicon: %2d; ib_wicon: %2d; ib_hicon: %2d;',$0d,$0a,$09,$09,$09,'ib_xtext: %2d; ib_ytext: %2d; ib_wtext: %2d; ib_htext: %2d',$0d,$0a,$09,$09,');',$0d,$0a,$09,$09,'mainlist: ',0
[0009a7e4]                           dc.b '@_C%d_%-s',0
[0009a7ee]                           dc.b $0d,$0a,$09,');',$0d,$0a,$0d,$0a,0
[0009a7f8]                           dc.b $0d,$0a,'(*',$09,$09,'MOUSEFORMS',$09,$09,'*)',$0d,$0a,0
[0009a80f]                           dc.b '%-s: MFORM = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,'mf_xhot: %2d; mf_yhot: %2d; mf_nplanes: %2d; mf_fg: %2d; mf_bg: %2d;',$0d,$0a,$09,$09,'mf_mask:',$0d,$0a,$09,$09,'(',$0d,$0a,$09,$09,$09,0
[0009a87f]                           dc.b '%d, ',0
[0009a884]                           dc.b '%d',$0d,$0a,$09,$09,');',$0d,$0a,$09,$09,'mf_data:',$0d,$0a,$09,$09,'(',$0d,$0a,$09,$09,$09,0
[0009a8a3]                           dc.b '%d',$0d,$0a,$09,$09,')',$0d,$0a,$09,');',$0d,$0a,$0d,$0a,0
[0009a8b4]                           dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'IMAGES',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009a8cb]                           dc.b '_IMG_%-s: array [0..%d] of WORD = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,$09,0
[0009a8f7]                           dc.b '$%04x',$0d,$0a,$09,$09,');',$0d,$0a,$09,0
[0009a906]                           dc.b '%-s: BITBLK = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,'bi_pdata: @_IMG_%s;',$0d,$0a,$09,$09,'bi_wb: %2d; bi_hl: %2d; bi_x: %2d; bi_y: %2d; bi_color: %d',$0d,$0a,$09,');',$0d,$0a,$0d,$0a,0
[0009a977]                           dc.b '%s = %d;',$0d,$0a,0
[0009a982]                           dc.b '%s : Array [0 ..%d] of ACSOBJECT = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
[0009a9ae]                           dc.b '(aes: (ob_next: %2d; ob_head: %2d; ob_tail: %2d; ob_type: %2d; ob_flags: $%04x; ob_state: $%04x;',0
[0009aa0f]                           dc.b 'ob_spec: (index: $%08lx);',0
[0009aa29]                           dc.b 'ob_spec: (free_string: @%s);',0
[0009aa46]                           dc.b 'ob_x: %2d; ob_y: %2d; ob_width: %2d; ob_height: %2d))',0
[0009aa7c]                           dc.b ',',$0d,$0a,$09,$09,0
[0009aa82]                           dc.b '(acs: (',0
[0009aa8a]                           dc.b 'click: ',0
[0009aa92]                           dc.w $3b20
[0009aa94]                           dc.b $00
[0009aa95]                           dc.b 'drag: ',0
[0009aa9c]                           dc.b 'ob_flags: $%04x; key: $%04x;',0
[0009aab9]                           dc.b 'userp1: ',0
[0009aac2]                           dc.b ';userp2: ',0
[0009aacc]                           dc.b '; mo_index: %d; aob_type: %s))',0
[0009aaeb]                           dc.b 'ACS(',0
[0009aaf0]                           dc.b '%s: packed array [1..%ld] of char = ',0
[0009ab15]                           dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'TEDINFOS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009ab2e]                           dc.b '%s: TEDINFO = ',$0d,$0a,$09,'(',$0d,$0a,$09,$09,'te_ptext: @%s; te_ptmplt: @%s; te_pvalid: @%s;',$0d,$0a,$09,$09,'te_font: %d; te_just: %d; te_color: $%04x; te_thickness: %d; te_txtlen: %ld; te_tmplen: %ld',$0d,$0a,$09,');',$0d,$0a,0
[0009abd9]                           dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'AUSERBLK',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009abf2]                           dc.b '%s: AUSERBLK = (ub_code: %s; ub_parm: ',0
[0009ac19]                           dc.b '$%s',0
[0009ac1d]                           dc.b '; ub_serv: ',0
[0009ac29]                           dc.b '; ub_ptr1: ',0
[0009ac35]                           dc.b '; ub_ptr2: ',0
[0009ac41]                           dc.b '; ub_ptr3: ',0
[0009ac4d]                           dc.b '; bubble: ',0
[0009ac58]                           dc.b '; context: ',0
[0009ac64]                           dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'DATAS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009ac7a]                           dc.b '%-s: array [0..%ld] of WORD =',$0d,$0a,$09,'(',$0d,$0a,$09,$09,0
[0009aca0]                           dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'WINDOWS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009acb8]                           dc.b '%s: Awindow = ',$0d,$0a,$09,'(',$0d,$0a,0
[0009accd]                           dc.b $09,$09,'user: ',0
[0009acd6]                           dc.b ';',$0d,$0a,$09,$09,'service: ',0
[0009ace5]                           dc.b 'Awi_service',0
[0009acf1]                           dc.b ';',$0d,$0a,$09,$09,'create: ',0
[0009acff]                           dc.b 'Awi_selfcreate',0
[0009ad0e]                           dc.b ';',$0d,$0a,$09,$09,'open: ',0
[0009ad1a]                           dc.b 'Awi_open',0
[0009ad23]                           dc.b ';',$0d,$0a,$09,$09,'init: ',0
[0009ad2f]                           dc.b 'Awi_init',0
[0009ad38]                           dc.b ';',$0d,$0a,$09,$09,'work: ',0
[0009ad44]                           dc.b ';',$0d,$0a,$09,$09,'toolbar: ',0
[0009ad53]                           dc.b ';',$0d,$0a,$09,$09,'ob_edit: -1; ob_col: -1; wi_id: -1;',0
[0009ad7c]                           dc.b $0d,$0a,$09,$09,'wi_kind: $%04x; wi_act: (x: %2i; y: %2i; w: %2i; h: %2i);',0
[0009adba]                           dc.b $0d,$0a,$09,$09,'wi_slider: (x: -1; y: -1; w: -1; h: -1);',0
[0009ade7]                           dc.b $0d,$0a,$09,$09,'snap_mask: $%04x;',0
[0009adfd]                           dc.b $0d,$0a,$09,$09,'name: ',0
[0009ae08]                           dc.b '; info: ',0
[0009ae11]                           dc.b ';',$0d,$0a,$09,$09,'ob_len: $%04x; kind: $%04x; icon : -1',0
[0009ae3c]                           dc.b ';',$0d,$0a,$09,$09,'iconblk: ',0
[0009ae4b]                           dc.b ';',$0d,$0a,$09,$09,'menu: ',0
[0009ae57]                           dc.b ';',$0d,$0a,$09,$09,'keys: ',0
[0009ae63]                           dc.b 'Awi_keys',0
[0009ae6c]                           dc.b ';',$0d,$0a,$09,$09,'obchange: ',0
[0009ae7c]                           dc.b 'Awi_obchange',0
[0009ae89]                           dc.b ';',$0d,$0a,$09,$09,'redraw: ',0
[0009ae97]                           dc.b 'Awi_redraw',0
[0009aea2]                           dc.b ';',$0d,$0a,$09,$09,'topped: ',0
[0009aeb0]                           dc.b 'Awi_topped',0
[0009aebb]                           dc.b ';',$0d,$0a,$09,$09,'closed: ',0
[0009aec9]                           dc.b 'Awi_closed',0
[0009aed4]                           dc.b ';',$0d,$0a,$09,$09,'fulled: ',0
[0009aee2]                           dc.b 'Awi_fulled',0
[0009aeed]                           dc.b ';',$0d,$0a,$09,$09,'arrowed: ',0
[0009aefc]                           dc.b 'Awi_arrowed',0
[0009af08]                           dc.b ';',$0d,$0a,$09,$09,'hslid: ',0
[0009af15]                           dc.b 'Awi_hslid',0
[0009af1f]                           dc.b ';',$0d,$0a,$09,$09,'vslid: ',0
[0009af2c]                           dc.b 'Awi_vslid',0
[0009af36]                           dc.b ';',$0d,$0a,$09,$09,'sized: ',0
[0009af43]                           dc.b 'Awi_sized',0
[0009af4d]                           dc.b ';',$0d,$0a,$09,$09,'moved: ',0
[0009af5a]                           dc.b 'Awi_moved',0
[0009af64]                           dc.w $2e49
[0009af66]                           dc.b $00
[0009af67]                           dc.b 'Pure PASCAL Code',0
[0009af78]                           dc.b $0d,$0a,'(*',$09,$09,'Platform & GUI-Language',$09,$09,'*)',$0d,$0a,0
[0009af9c]                           dc.b '(*$DEFINE ACS_ATARI*)',$0d,$0a,0
[0009afb4]                           dc.b $0d,$0a,'(*',$09,$09,'GUI-LANGUAGE',$09,$09,'*)',$0d,$0a,0
[0009afcd]                           dc.b '(*$IFDEF ACS_LANG%d*)(*$IFDEF ACS_LANG%d*)',$0d,$0a,0
[0009affa]                           dc.b $09,'(*$ERROR "More than one language macros defined!"*)',$0d,$0a,'(*$ENDIF*)(*$ENDIF*)',$0d,$0a,0
[0009b047]                           dc.b '(*$IFNDEF ACS_LANG%d*)',0
[0009b05e]                           dc.b $0d,$0a,$09,'(*$DEFINE ACS_LANG%d*)',$0d,$0a,0
[0009b07a]                           dc.b '(*$ENDIF*)',0
[0009b085]                           dc.b 'Const',$0d,$0a,0
[0009b08d]                           dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'ALERT BOXES',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009b0a9]                           dc.b $0d,$0a,'(*$IFDEF ACS_LANG1*)',$09,$09,$09,'(*',$09,$09,'Alerts: ACS_LANG1',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009b0e0]                           dc.b $0d,$0a,'(*$ELSE*)(*$IFDEF ACS_LANG%d*)',$09,$09,$09,'(*',$09,$09,'Alerts: ACS_LANG%d',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009b122]                           dc.b $0d,$0a,'(*$ELSE*)',$0d,$0a,$0d,$0a,$09,'(*$ERROR "Wrong Language Macro defined"*)',$0d,$0a,0
[0009b15e]                           dc.b $0d,$0a,'(*$ENDIF*)',$0d,$0a,0
[0009b16d]                           dc.b $0d,$0a,$0d,$0a,'(*',$09,$09,'STRINGS',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009b185]                           dc.b $0d,$0a,'(*$IFDEF ACS_LANG1 *)',$09,$09,$09,$09,$09,'(*',$09,$09,'Strings: ACS_LANG1',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009b1c0]                           dc.b $0d,$0a,'(*$ELSE*)(*$IFDEF ACS_LANG%d*)',$09,$09,$09,'(*',$09,$09,'Strings: ACS_LANG%d',$09,$09,'*)',$0d,$0a,$0d,$0a,0
[0009b203]                           dc.b $0d,$0a,'(*',$09,$09,'MENU TREES',$09,$09,'*)',$0d,$0a,0
[0009b21a]                           dc.b $0d,$0a,'(*',$09,$09,'POPUP TREES',$09,$09,'*)',$0d,$0a,0
[0009b232]                           dc.b $0d,$0a,'(*',$09,$09,'OBJECT TREES',$09,$09,'*)',$0d,$0a,0
[0009b24b]                           dc.b $00

	.bss

mapX: ds.w 1000
