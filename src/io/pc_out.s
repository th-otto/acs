
info_start:
[00017ec6] 48e7 0038                 movem.l    a2-a4,-(a7)
[00017eca] 2848                      movea.l    a0,a4
[00017ecc] 4eb9 0004 6d70            jsr        Aev_mess
[00017ed2] 45f9 000f b43c            lea.l      work,a2
[00017ed8] 47f9 000f b430            lea.l      info_xywh,a3
[00017ede] 41f9 0009 ba26            lea.l      OUTPUT_INFO,a0
[00017ee4] 4eb9 0004 9a5c            jsr        Aob_create
[00017eea] 2488                      move.l     a0,(a2)
[00017eec] 2008                      move.l     a0,d0
[00017eee] 6700 0094                 beq        info_start_1
[00017ef2] 4eb9 0004 a25e            jsr        Aob_fix
[00017ef8] 2f39 000d 99d6            move.l     _globl,-(a7)
[00017efe] 486b 0006                 pea.l      6(a3)
[00017f02] 486b 0004                 pea.l      4(a3)
[00017f06] 486b 0002                 pea.l      2(a3)
[00017f0a] 224b                      movea.l    a3,a1
[00017f0c] 2052                      movea.l    (a2),a0
[00017f0e] 4eb9 0006 bf48            jsr        mt_form_center
[00017f14] 4fef 0010                 lea.l      16(a7),a7
[00017f18] 5353                      subq.w     #1,(a3)
[00017f1a] 536b 0002                 subq.w     #1,2(a3)
[00017f1e] 546b 0004                 addq.w     #2,4(a3)
[00017f22] 546b 0006                 addq.w     #2,6(a3)
[00017f26] 204b                      movea.l    a3,a0
[00017f28] 4eb9 0004 a548            jsr        Aob_save
[00017f2e] 2748 0008                 move.l     a0,8(a3)
[00017f32] 701f                      moveq.l    #31,d0
[00017f34] 224c                      movea.l    a4,a1
[00017f36] 2052                      movea.l    (a2),a0
[00017f38] 2068 00cc                 movea.l    204(a0),a0
[00017f3c] 2050                      movea.l    (a0),a0
[00017f3e] 4eb9 0007 6a1a            jsr        strncpy
[00017f44] 2052                      movea.l    (a2),a0
[00017f46] 2268 009c                 movea.l    156(a0),a1
[00017f4a] 2851                      movea.l    (a1),a4
[00017f4c] 4214                      clr.b      (a4)
[00017f4e] 2052                      movea.l    (a2),a0
[00017f50] 2268 00fc                 movea.l    252(a0),a1
[00017f54] 2851                      movea.l    (a1),a4
[00017f56] 4214                      clr.b      (a4)
[00017f58] 2052                      movea.l    (a2),a0
[00017f5a] 2268 012c                 movea.l    300(a0),a1
[00017f5e] 2851                      movea.l    (a1),a4
[00017f60] 4214                      clr.b      (a4)
[00017f62] 3f2b 0006                 move.w     6(a3),-(a7)
[00017f66] 3f2b 0004                 move.w     4(a3),-(a7)
[00017f6a] 3f2b 0002                 move.w     2(a3),-(a7)
[00017f6e] 2279 000d 99d6            movea.l    _globl,a1
[00017f74] 3413                      move.w     (a3),d2
[00017f76] 720a                      moveq.l    #10,d1
[00017f78] 4240                      clr.w      d0
[00017f7a] 2052                      movea.l    (a2),a0
[00017f7c] 4eb9 0006 b93c            jsr        mt_objc_draw
[00017f82] 5c4f                      addq.w     #6,a7
info_start_1:
[00017f84] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[00017f88] 4e75                      rts

info_end:
[00017f8a] 2079 000f b43c            movea.l    work,a0
[00017f90] 4eb9 0004 9b7c            jsr        Aob_delete
[00017f96] 43f9 000f b430            lea.l      info_xywh,a1
[00017f9c] 2079 000f b438            movea.l    info_bp,a0
[00017fa2] 4eb9 0004 a64c            jsr        Aob_restore
[00017fa8] 4e75                      rts

info_title:
[00017faa] 2f0a                      move.l     a2,-(a7)
[00017fac] 2f0b                      move.l     a3,-(a7)
[00017fae] 2448                      movea.l    a0,a2
[00017fb0] 47f9 000f b430            lea.l      info_xywh,a3
[00017fb6] 202b 000c                 move.l     12(a3),d0
[00017fba] 674c                      beq.s      info_title_1
[00017fbc] 224a                      movea.l    a2,a1
[00017fbe] 2040                      movea.l    d0,a0
[00017fc0] 2068 009c                 movea.l    156(a0),a0
[00017fc4] 2050                      movea.l    (a0),a0
[00017fc6] 4eb9 0007 6950            jsr        strcpy
[00017fcc] 3f2b 0006                 move.w     6(a3),-(a7)
[00017fd0] 3f2b 0004                 move.w     4(a3),-(a7)
[00017fd4] 3f2b 0002                 move.w     2(a3),-(a7)
[00017fd8] 2279 000d 99d6            movea.l    _globl,a1
[00017fde] 3413                      move.w     (a3),d2
[00017fe0] 7201                      moveq.l    #1,d1
[00017fe2] 7006                      moveq.l    #6,d0
[00017fe4] 206b 000c                 movea.l    12(a3),a0
[00017fe8] 4eb9 0006 b93c            jsr        mt_objc_draw
[00017fee] 5c4f                      addq.w     #6,a7
[00017ff0] 41f9 0009 9190            lea.l      $00099190,a0
[00017ff6] 4eb9 0001 800e            jsr        info_list
[00017ffc] 41f9 0009 9190            lea.l      $00099190,a0
[00018002] 4eb9 0001 8066            jsr        info_obj
info_title_1:
[00018008] 265f                      movea.l    (a7)+,a3
[0001800a] 245f                      movea.l    (a7)+,a2
[0001800c] 4e75                      rts

info_list:
[0001800e] 2f0a                      move.l     a2,-(a7)
[00018010] 2f0b                      move.l     a3,-(a7)
[00018012] 2448                      movea.l    a0,a2
[00018014] 47f9 000f b430            lea.l      info_xywh,a3
[0001801a] 202b 000c                 move.l     12(a3),d0
[0001801e] 6740                      beq.s      info_list_1
[00018020] 224a                      movea.l    a2,a1
[00018022] 2040                      movea.l    d0,a0
[00018024] 2068 00fc                 movea.l    252(a0),a0
[00018028] 2050                      movea.l    (a0),a0
[0001802a] 4eb9 0007 6950            jsr        strcpy
[00018030] 3f2b 0006                 move.w     6(a3),-(a7)
[00018034] 3f2b 0004                 move.w     4(a3),-(a7)
[00018038] 3f2b 0002                 move.w     2(a3),-(a7)
[0001803c] 2279 000d 99d6            movea.l    _globl,a1
[00018042] 3413                      move.w     (a3),d2
[00018044] 7201                      moveq.l    #1,d1
[00018046] 700a                      moveq.l    #10,d0
[00018048] 206b 000c                 movea.l    12(a3),a0
[0001804c] 4eb9 0006 b93c            jsr        mt_objc_draw
[00018052] 5c4f                      addq.w     #6,a7
[00018054] 41f9 0009 9190            lea.l      $00099190,a0
[0001805a] 4eb9 0001 8066            jsr        info_obj
info_list_1:
[00018060] 265f                      movea.l    (a7)+,a3
[00018062] 245f                      movea.l    (a7)+,a2
[00018064] 4e75                      rts

info_obj:
[00018066] 2f0a                      move.l     a2,-(a7)
[00018068] 2f0b                      move.l     a3,-(a7)
[0001806a] 2448                      movea.l    a0,a2
[0001806c] 47f9 000f b430            lea.l      info_xywh,a3
[00018072] 202b 000c                 move.l     12(a3),d0
[00018076] 6734                      beq.s      info_obj_1
[00018078] 224a                      movea.l    a2,a1
[0001807a] 2040                      movea.l    d0,a0
[0001807c] 2068 012c                 movea.l    300(a0),a0
[00018080] 2050                      movea.l    (a0),a0
[00018082] 4eb9 0007 6950            jsr        strcpy
[00018088] 3f2b 0006                 move.w     6(a3),-(a7)
[0001808c] 3f2b 0004                 move.w     4(a3),-(a7)
[00018090] 3f2b 0002                 move.w     2(a3),-(a7)
[00018094] 2279 000d 99d6            movea.l    _globl,a1
[0001809a] 3413                      move.w     (a3),d2
[0001809c] 7201                      moveq.l    #1,d1
[0001809e] 700c                      moveq.l    #12,d0
[000180a0] 206b 000c                 movea.l    12(a3),a0
[000180a4] 4eb9 0006 b93c            jsr        mt_objc_draw
[000180aa] 5c4f                      addq.w     #6,a7
info_obj_1:
[000180ac] 265f                      movea.l    (a7)+,a3
[000180ae] 245f                      movea.l    (a7)+,a2
[000180b0] 4e75                      rts

out_label:
[000180b2] 48e7 0038                 movem.l    a2-a4,-(a7)
[000180b6] 2448                      movea.l    a0,a2
[000180b8] 2849                      movea.l    a1,a4
[000180ba] 200a                      move.l     a2,d0
[000180bc] 6724                      beq.s      out_label_1
[000180be] 47f9 000f b02a            lea.l      iostring,a3
[000180c4] 486a 0016                 pea.l      22(a2)
[000180c8] 43f9 0009 9191            lea.l      $00099191,a1
[000180ce] 204b                      movea.l    a3,a0
[000180d0] 4eb9 0007 5680            jsr        sprintf
[000180d6] 584f                      addq.w     #4,a7
[000180d8] 204b                      movea.l    a3,a0
[000180da] 4eb9 0001 65f6            jsr        save_string
[000180e0] 6008                      bra.s      out_label_2
out_label_1:
[000180e2] 204c                      movea.l    a4,a0
[000180e4] 4eb9 0001 65f6            jsr        save_string
out_label_2:
[000180ea] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[000180ee] 4e75                      rts

out_label2:
[000180f0] 48e7 0038                 movem.l    a2-a4,-(a7)
[000180f4] 2448                      movea.l    a0,a2
[000180f6] 2849                      movea.l    a1,a4
[000180f8] 200a                      move.l     a2,d0
[000180fa] 6724                      beq.s      out_label2_1
[000180fc] 47f9 000f b02a            lea.l      iostring,a3
[00018102] 486a 0016                 pea.l      22(a2)
[00018106] 43f9 0009 9197            lea.l      $00099197,a1
[0001810c] 204b                      movea.l    a3,a0
[0001810e] 4eb9 0007 5680            jsr        sprintf
[00018114] 584f                      addq.w     #4,a7
[00018116] 204b                      movea.l    a3,a0
[00018118] 4eb9 0001 65f6            jsr        save_string
[0001811e] 6008                      bra.s      out_label2_2
out_label2_1:
[00018120] 204c                      movea.l    a4,a0
[00018122] 4eb9 0001 65f6            jsr        save_string
out_label2_2:
[00018128] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001812c] 4e75                      rts

out_label3:
[0001812e] 48e7 0038                 movem.l    a2-a4,-(a7)
[00018132] 2448                      movea.l    a0,a2
[00018134] 2849                      movea.l    a1,a4
[00018136] 200a                      move.l     a2,d0
[00018138] 6724                      beq.s      out_label3_1
[0001813a] 47f9 000f b02a            lea.l      iostring,a3
[00018140] 486a 0016                 pea.l      22(a2)
[00018144] 43f9 0009 919e            lea.l      $0009919E,a1
[0001814a] 204b                      movea.l    a3,a0
[0001814c] 4eb9 0007 5680            jsr        sprintf
[00018152] 584f                      addq.w     #4,a7
[00018154] 204b                      movea.l    a3,a0
[00018156] 4eb9 0001 65f6            jsr        save_string
[0001815c] 6008                      bra.s      out_label3_2
out_label3_1:
[0001815e] 204c                      movea.l    a4,a0
[00018160] 4eb9 0001 65f6            jsr        save_string
out_label3_2:
[00018166] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001816a] 4e75                      rts

out_acs:
[0001816c] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[00018170] 4fef ffdc                 lea.l      -36(a7),a7
[00018174] 2448                      movea.l    a0,a2
[00018176] 302a 0006                 move.w     6(a2),d0
[0001817a] c07c 8000                 and.w      #$8000,d0
[0001817e] 6600 03d2                 bne        out_acs_1
[00018182] 47f9 0009 9190            lea.l      $00099190,a3
[00018188] 41eb 0018                 lea.l      24(a3),a0
[0001818c] 4eb9 0001 65f6            jsr        save_string
[00018192] 41eb 002e                 lea.l      46(a3),a0
[00018196] 4eb9 0001 65f6            jsr        save_string
[0001819c] 49f9 000f b02a            lea.l      iostring,a4
[000181a2] 486a 005c                 pea.l      92(a2)
[000181a6] 7040                      moveq.l    #64,d0
[000181a8] 806a 005a                 or.w       90(a2),d0
[000181ac] 3f00                      move.w     d0,-(a7)
[000181ae] 3f2a 0058                 move.w     88(a2),-(a7)
[000181b2] 3f2a 0056                 move.w     86(a2),-(a7)
[000181b6] 3f3c 012c                 move.w     #$012C,-(a7)
[000181ba] 486b 0064                 pea.l      100(a3)
[000181be] 43eb 0035                 lea.l      53(a3),a1
[000181c2] 204c                      movea.l    a4,a0
[000181c4] 4eb9 0007 5680            jsr        sprintf
[000181ca] 4fef 0010                 lea.l      16(a7),a7
[000181ce] 204c                      movea.l    a4,a0
[000181d0] 4eb9 0001 65f6            jsr        save_string
[000181d6] 43eb 006c                 lea.l      108(a3),a1
[000181da] 206a 007c                 movea.l    124(a2),a0
[000181de] 6100 ff10                 bsr        out_label2
[000181e2] 41eb 0076                 lea.l      118(a3),a0
[000181e6] 4eb9 0001 65f6            jsr        save_string
[000181ec] 43eb 0079                 lea.l      121(a3),a1
[000181f0] 206a 0080                 movea.l    128(a2),a0
[000181f4] 6100 fefa                 bsr        out_label2
[000181f8] 41eb 007e                 lea.l      126(a3),a0
[000181fc] 4eb9 0001 65f6            jsr        save_string
[00018202] 4bea 0084                 lea.l      132(a2),a5
[00018206] 4243                      clr.w      d3
[00018208] 6048                      bra.s      out_acs_2
out_acs_6:
[0001820a] 4a43                      tst.w      d3
[0001820c] 670a                      beq.s      out_acs_3
[0001820e] 41eb 0087                 lea.l      135(a3),a0
[00018212] 4eb9 0001 65f6            jsr        save_string
out_acs_3:
[00018218] 0c55 00ff                 cmpi.w     #$00FF,(a5)
[0001821c] 6712                      beq.s      out_acs_4
[0001821e] 3f15                      move.w     (a5),-(a7)
[00018220] 43eb 008b                 lea.l      139(a3),a1
[00018224] 204c                      movea.l    a4,a0
[00018226] 4eb9 0007 5680            jsr        sprintf
[0001822c] 544f                      addq.w     #2,a7
[0001822e] 6016                      bra.s      out_acs_5
out_acs_4:
[00018230] 206d 0002                 movea.l    2(a5),a0
[00018234] 4868 0016                 pea.l      22(a0)
[00018238] 43eb 009a                 lea.l      154(a3),a1
[0001823c] 204c                      movea.l    a4,a0
[0001823e] 4eb9 0007 5680            jsr        sprintf
[00018244] 584f                      addq.w     #4,a7
out_acs_5:
[00018246] 204c                      movea.l    a4,a0
[00018248] 4eb9 0001 65f6            jsr        save_string
[0001824e] 5c4d                      addq.w     #6,a5
[00018250] 5243                      addq.w     #1,d3
out_acs_2:
[00018252] b67c 0020                 cmp.w      #$0020,d3
[00018256] 6db2                      blt.s      out_acs_6
[00018258] 41eb 00a8                 lea.l      168(a3),a0
[0001825c] 4eb9 0001 65f6            jsr        save_string
[00018262] 4243                      clr.w      d3
[00018264] 6000 008e                 bra        out_acs_7
out_acs_11:
[00018268] 3f03                      move.w     d3,-(a7)
[0001826a] 43eb 00b1                 lea.l      177(a3),a1
[0001826e] 41ef 0002                 lea.l      2(a7),a0
[00018272] 4eb9 0007 5680            jsr        sprintf
[00018278] 544f                      addq.w     #2,a7
[0001827a] 43d7                      lea.l      (a7),a1
[0001827c] 206a 0034                 movea.l    52(a2),a0
[00018280] 4eb9 0003 1a5c            jsr        find_entry
[00018286] 2c48                      movea.l    a0,a6
[00018288] 200e                      move.l     a6,d0
[0001828a] 6632                      bne.s      out_acs_8
[0001828c] 43d7                      lea.l      (a7),a1
[0001828e] 206a 0024                 movea.l    36(a2),a0
[00018292] 4eb9 0003 1a5c            jsr        find_entry
[00018298] 2c48                      movea.l    a0,a6
[0001829a] 200e                      move.l     a6,d0
[0001829c] 6620                      bne.s      out_acs_8
[0001829e] 3003                      move.w     d3,d0
[000182a0] 48c0                      ext.l      d0
[000182a2] e588                      lsl.l      #2,d0
[000182a4] 43f9 0007 e8e6            lea.l      mlmess,a1
[000182aa] 2f31 0800                 move.l     0(a1,d0.l),-(a7)
[000182ae] 43eb 00bb                 lea.l      187(a3),a1
[000182b2] 204c                      movea.l    a4,a0
[000182b4] 4eb9 0007 5680            jsr        sprintf
[000182ba] 584f                      addq.w     #4,a7
[000182bc] 6012                      bra.s      out_acs_9
out_acs_8:
[000182be] 2f2e 0004                 move.l     4(a6),-(a7)
[000182c2] 43eb 00bb                 lea.l      187(a3),a1
[000182c6] 204c                      movea.l    a4,a0
[000182c8] 4eb9 0007 5680            jsr        sprintf
[000182ce] 584f                      addq.w     #4,a7
out_acs_9:
[000182d0] 204c                      movea.l    a4,a0
[000182d2] 4eb9 0001 65f6            jsr        save_string
[000182d8] b67c 0021                 cmp.w      #$0021,d3
[000182dc] 6c0a                      bge.s      out_acs_10
[000182de] 41eb 00c2                 lea.l      194(a3),a0
[000182e2] 4eb9 0001 65f6            jsr        save_string
out_acs_10:
[000182e8] 41eb 0032                 lea.l      50(a3),a0
[000182ec] 4eb9 0001 65f6            jsr        save_string
[000182f2] 5243                      addq.w     #1,d3
out_acs_7:
[000182f4] b67c 0022                 cmp.w      #$0022,d3
[000182f8] 6d00 ff6e                 blt        out_acs_11
[000182fc] 41eb 00c4                 lea.l      196(a3),a0
[00018300] 4eb9 0001 65f6            jsr        save_string
[00018306] 41eb 00ca                 lea.l      202(a3),a0
[0001830a] 4eb9 0001 65f6            jsr        save_string
[00018310] 41eb 00e3                 lea.l      227(a3),a0
[00018314] 4eb9 0001 65f6            jsr        save_string
[0001831a] 41eb 00ec                 lea.l      236(a3),a0
[0001831e] 4eb9 0001 65f6            jsr        save_string
[00018324] 224b                      movea.l    a3,a1
[00018326] 206a 0214                 movea.l    532(a2),a0
[0001832a] 6100 fd86                 bsr        out_label
[0001832e] 41eb 00ef                 lea.l      239(a3),a0
[00018332] 4eb9 0001 65f6            jsr        save_string
[00018338] 43eb 00f4                 lea.l      244(a3),a1
[0001833c] 206a 0218                 movea.l    536(a2),a0
[00018340] 6100 fd70                 bsr        out_label
[00018344] 41eb 00f7                 lea.l      247(a3),a0
[00018348] 4eb9 0001 65f6            jsr        save_string
[0001834e] 43eb 0079                 lea.l      121(a3),a1
[00018352] 206a 021c                 movea.l    540(a2),a0
[00018356] 6100 fd5a                 bsr        out_label
[0001835a] 41eb 0076                 lea.l      118(a3),a0
[0001835e] 4eb9 0001 65f6            jsr        save_string
[00018364] 302a 0220                 move.w     544(a2),d0
[00018368] 6706                      beq.s      out_acs_12
[0001836a] 41eb 00fb                 lea.l      251(a3),a0
[0001836e] 6004                      bra.s      out_acs_13
out_acs_12:
[00018370] 41eb 0102                 lea.l      258(a3),a0
out_acs_13:
[00018374] 4eb9 0001 65f6            jsr        save_string
[0001837a] 302a 0222                 move.w     546(a2),d0
[0001837e] 6706                      beq.s      out_acs_14
[00018380] 41eb 00fb                 lea.l      251(a3),a0
[00018384] 6004                      bra.s      out_acs_15
out_acs_14:
[00018386] 41eb 0102                 lea.l      258(a3),a0
out_acs_15:
[0001838a] 4eb9 0001 65f6            jsr        save_string
[00018390] 0c6a 0004 0224            cmpi.w     #$0004,548(a2)
[00018396] 6f14                      ble.s      out_acs_16
[00018398] 3f2a 0224                 move.w     548(a2),-(a7)
[0001839c] 43eb 010a                 lea.l      266(a3),a1
[000183a0] 204c                      movea.l    a4,a0
[000183a2] 4eb9 0007 5680            jsr        sprintf
[000183a8] 544f                      addq.w     #2,a7
[000183aa] 600c                      bra.s      out_acs_17
out_acs_16:
[000183ac] 43eb 0113                 lea.l      275(a3),a1
[000183b0] 204c                      movea.l    a4,a0
[000183b2] 4eb9 0007 6950            jsr        strcpy
out_acs_17:
[000183b8] 204c                      movea.l    a4,a0
[000183ba] 4eb9 0001 65f6            jsr        save_string
[000183c0] 41eb 00c0                 lea.l      192(a3),a0
[000183c4] 4eb9 0001 65f6            jsr        save_string
[000183ca] 43eb 006d                 lea.l      109(a3),a1
[000183ce] 206a 0226                 movea.l    550(a2),a0
[000183d2] 6100 fcde                 bsr        out_label
[000183d6] 41eb 005d                 lea.l      93(a3),a0
[000183da] 4eb9 0001 65f6            jsr        save_string
[000183e0] 43eb 0079                 lea.l      121(a3),a1
[000183e4] 206a 022a                 movea.l    554(a2),a0
[000183e8] 6100 fcc8                 bsr        out_label
[000183ec] 41eb 0076                 lea.l      118(a3),a0
[000183f0] 4eb9 0001 65f6            jsr        save_string
[000183f6] 43eb 0079                 lea.l      121(a3),a1
[000183fa] 206a 022e                 movea.l    558(a2),a0
[000183fe] 6100 fcb2                 bsr        out_label
[00018402] 41eb 0076                 lea.l      118(a3),a0
[00018406] 4eb9 0001 65f6            jsr        save_string
[0001840c] 43eb 0079                 lea.l      121(a3),a1
[00018410] 206a 0232                 movea.l    562(a2),a0
[00018414] 6100 fc9c                 bsr        out_label
[00018418] 41eb 0076                 lea.l      118(a3),a0
[0001841c] 4eb9 0001 65f6            jsr        save_string
[00018422] 43eb 0079                 lea.l      121(a3),a1
[00018426] 206a 0236                 movea.l    566(a2),a0
[0001842a] 6100 fc86                 bsr        out_label
[0001842e] 41eb 0076                 lea.l      118(a3),a0
[00018432] 4eb9 0001 65f6            jsr        save_string
[00018438] 43eb 0079                 lea.l      121(a3),a1
[0001843c] 206a 023a                 movea.l    570(a2),a0
[00018440] 6100 fc70                 bsr        out_label
[00018444] 41eb 011b                 lea.l      283(a3),a0
[00018448] 4eb9 0001 65f6            jsr        save_string
[0001844e] 43eb 0079                 lea.l      121(a3),a1
[00018452] 206a 023e                 movea.l    574(a2),a0
[00018456] 6100 fc5a                 bsr        out_label
[0001845a] 41eb 0076                 lea.l      118(a3),a0
[0001845e] 4eb9 0001 65f6            jsr        save_string
[00018464] 43eb 0079                 lea.l      121(a3),a1
[00018468] 206a 0242                 movea.l    578(a2),a0
[0001846c] 6100 fc44                 bsr        out_label
[00018470] 41eb 0076                 lea.l      118(a3),a0
[00018474] 4eb9 0001 65f6            jsr        save_string
[0001847a] 43eb 0079                 lea.l      121(a3),a1
[0001847e] 206a 0246                 movea.l    582(a2),a0
[00018482] 6100 fc2e                 bsr        out_label
[00018486] 41eb 0076                 lea.l      118(a3),a0
[0001848a] 4eb9 0001 65f6            jsr        save_string
[00018490] 43eb 0079                 lea.l      121(a3),a1
[00018494] 206a 024a                 movea.l    586(a2),a0
[00018498] 6100 fc18                 bsr        out_label
[0001849c] 41eb 0076                 lea.l      118(a3),a0
[000184a0] 4eb9 0001 65f6            jsr        save_string
[000184a6] 43eb 0079                 lea.l      121(a3),a1
[000184aa] 206a 024e                 movea.l    590(a2),a0
[000184ae] 6100 fc02                 bsr        out_label
[000184b2] 41eb 0076                 lea.l      118(a3),a0
[000184b6] 4eb9 0001 65f6            jsr        save_string
[000184bc] 3f2a 0252                 move.w     594(a2),-(a7)
[000184c0] 43eb 0122                 lea.l      290(a3),a1
[000184c4] 204c                      movea.l    a4,a0
[000184c6] 4eb9 0007 5680            jsr        sprintf
[000184cc] 544f                      addq.w     #2,a7
[000184ce] 204c                      movea.l    a4,a0
[000184d0] 4eb9 0001 65f6            jsr        save_string
[000184d6] 302a 0254                 move.w     596(a2),d0
[000184da] 6f20                      ble.s      out_acs_18
[000184dc] 3200                      move.w     d0,d1
[000184de] d241                      add.w      d1,d1
[000184e0] d240                      add.w      d0,d1
[000184e2] 41f9 0009 9166            lea.l      xacc_types,a0
[000184e8] 4870 1000                 pea.l      0(a0,d1.w)
[000184ec] 43eb 0127                 lea.l      295(a3),a1
[000184f0] 204c                      movea.l    a4,a0
[000184f2] 4eb9 0007 5680            jsr        sprintf
[000184f8] 584f                      addq.w     #4,a7
[000184fa] 600c                      bra.s      out_acs_19
out_acs_18:
[000184fc] 43eb 012e                 lea.l      302(a3),a1
[00018500] 204c                      movea.l    a4,a0
[00018502] 4eb9 0007 6950            jsr        strcpy
out_acs_19:
[00018508] 204c                      movea.l    a4,a0
[0001850a] 4eb9 0001 65f6            jsr        save_string
[00018510] 43eb 0079                 lea.l      121(a3),a1
[00018514] 206a 0256                 movea.l    598(a2),a0
[00018518] 6100 fb98                 bsr        out_label
[0001851c] 41eb 0076                 lea.l      118(a3),a0
[00018520] 4eb9 0001 65f6            jsr        save_string
[00018526] 43eb 0079                 lea.l      121(a3),a1
[0001852a] 206a 025a                 movea.l    602(a2),a0
[0001852e] 6100 fb82                 bsr        out_label
[00018532] 41eb 0076                 lea.l      118(a3),a0
[00018536] 4eb9 0001 65f6            jsr        save_string
[0001853c] 43eb 0132                 lea.l      306(a3),a1
[00018540] 206a 025e                 movea.l    606(a2),a0
[00018544] 6100 fb6c                 bsr        out_label
[00018548] 41eb 013a                 lea.l      314(a3),a0
[0001854c] 4eb9 0001 65f6            jsr        save_string
out_acs_1:
[00018552] 4fef 0024                 lea.l      36(a7),a7
[00018556] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0001855a] 4e75                      rts

out_cicon:
[0001855c] 48e7 103c                 movem.l    d3/a2-a5,-(a7)
[00018560] 2648                      movea.l    a0,a3
[00018562] 2449                      movea.l    a1,a2
[00018564] 3600                      move.w     d0,d3
[00018566] 49f9 0009 9190            lea.l      $00099190,a4
[0001856c] 4bf9 000f b02a            lea.l      iostring,a5
[00018572] 3f12                      move.w     (a2),-(a7)
[00018574] 2f0b                      move.l     a3,-(a7)
[00018576] 3f12                      move.w     (a2),-(a7)
[00018578] 43ec 0142                 lea.l      322(a4),a1
[0001857c] 204d                      movea.l    a5,a0
[0001857e] 4eb9 0007 5680            jsr        sprintf
[00018584] 504f                      addq.w     #8,a7
[00018586] 204d                      movea.l    a5,a0
[00018588] 4eb9 0001 65f6            jsr        save_string
[0001858e] 43ec 0079                 lea.l      121(a4),a1
[00018592] 206a 0002                 movea.l    2(a2),a0
[00018596] 6100 fb96                 bsr        out_label3
[0001859a] 41ec 005e                 lea.l      94(a4),a0
[0001859e] 4eb9 0001 65f6            jsr        save_string
[000185a4] 43ec 0079                 lea.l      121(a4),a1
[000185a8] 206a 0006                 movea.l    6(a2),a0
[000185ac] 6100 fb04                 bsr        out_label
[000185b0] 41ec 005e                 lea.l      94(a4),a0
[000185b4] 4eb9 0001 65f6            jsr        save_string
[000185ba] 43ec 0079                 lea.l      121(a4),a1
[000185be] 206a 000a                 movea.l    10(a2),a0
[000185c2] 6100 fb6a                 bsr        out_label3
[000185c6] 41ec 005e                 lea.l      94(a4),a0
[000185ca] 4eb9 0001 65f6            jsr        save_string
[000185d0] 43ec 0079                 lea.l      121(a4),a1
[000185d4] 206a 000e                 movea.l    14(a2),a0
[000185d8] 6100 fad8                 bsr        out_label
[000185dc] 4a43                      tst.w      d3
[000185de] 671c                      beq.s      out_cicon_1
[000185e0] 2f0b                      move.l     a3,-(a7)
[000185e2] 3f03                      move.w     d3,-(a7)
[000185e4] 43ec 0167                 lea.l      359(a4),a1
[000185e8] 204d                      movea.l    a5,a0
[000185ea] 4eb9 0007 5680            jsr        sprintf
[000185f0] 5c4f                      addq.w     #6,a7
[000185f2] 204d                      movea.l    a5,a0
[000185f4] 4eb9 0001 65f6            jsr        save_string
[000185fa] 600a                      bra.s      out_cicon_2
out_cicon_1:
[000185fc] 41ec 017a                 lea.l      378(a4),a0
[00018600] 4eb9 0001 65f6            jsr        save_string
out_cicon_2:
[00018606] 4cdf 3c08                 movem.l    (a7)+,d3/a2-a5
[0001860a] 4e75                      rts

out_icon:
[0001860c] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00018610] 514f                      subq.w     #8,a7
[00018612] 2f48 0004                 move.l     a0,4(a7)
[00018616] 2628 000e                 move.l     14(a0),d3
[0001861a] e48b                      lsr.l      #2,d3
[0001861c] 4a43                      tst.w      d3
[0001861e] 6f00 01fc                 ble        out_icon_1
[00018622] 41e8 0016                 lea.l      22(a0),a0
[00018626] 6100 f9e6                 bsr        info_list
[0001862a] 206f 0004                 movea.l    4(a7),a0
[0001862e] 2ea8 0004                 move.l     4(a0),(a7)
[00018632] 47f9 0009 9190            lea.l      $00099190,a3
[00018638] 41eb 0188                 lea.l      392(a3),a0
[0001863c] 4eb9 0001 65f6            jsr        save_string
[00018642] 4244                      clr.w      d4
[00018644] 45f9 000f b02a            lea.l      iostring,a2
[0001864a] 6000 01ca                 bra        out_icon_2
out_icon_15:
[0001864e] 3004                      move.w     d4,d0
[00018650] 48c0                      ext.l      d0
[00018652] e588                      lsl.l      #2,d0
[00018654] 2057                      movea.l    (a7),a0
[00018656] 2870 0800                 movea.l    0(a0,d0.l),a4
[0001865a] 41ec 0016                 lea.l      22(a4),a0
[0001865e] 6100 fa06                 bsr        info_obj
[00018662] 2a6c 0004                 movea.l    4(a4),a5
[00018666] 2c6c 0004                 movea.l    4(a4),a6
[0001866a] 4245                      clr.w      d5
[0001866c] 302e 003c                 move.w     60(a6),d0
[00018670] 6710                      beq.s      out_icon_3
[00018672] 43ee 003c                 lea.l      60(a6),a1
[00018676] 41ec 0016                 lea.l      22(a4),a0
[0001867a] 3005                      move.w     d5,d0
[0001867c] 6100 fede                 bsr        out_cicon
[00018680] 7a08                      moveq.l    #8,d5
out_icon_3:
[00018682] 302e 0026                 move.w     38(a6),d0
[00018686] 6710                      beq.s      out_icon_4
[00018688] 43ee 0026                 lea.l      38(a6),a1
[0001868c] 41ec 0016                 lea.l      22(a4),a0
[00018690] 3005                      move.w     d5,d0
[00018692] 6100 fec8                 bsr        out_cicon
[00018696] 7a04                      moveq.l    #4,d5
out_icon_4:
[00018698] 7c0f                      moveq.l    #15,d6
[0001869a] dc6d 0016                 add.w      22(a5),d6
[0001869e] e846                      asr.w      #4,d6
[000186a0] cded 0018                 muls.w     24(a5),d6
[000186a4] 5346                      subq.w     #1,d6
[000186a6] 2015                      move.l     (a5),d0
[000186a8] 4df5 0800                 lea.l      0(a5,d0.l),a6
[000186ac] 486c 0016                 pea.l      22(a4)
[000186b0] 43eb 019e                 lea.l      414(a3),a1
[000186b4] 204a                      movea.l    a2,a0
[000186b6] 4eb9 0007 5680            jsr        sprintf
[000186bc] 584f                      addq.w     #4,a7
[000186be] 204a                      movea.l    a2,a0
[000186c0] 4eb9 0001 65f6            jsr        save_string
[000186c6] 4247                      clr.w      d7
[000186c8] 602c                      bra.s      out_icon_5
out_icon_7:
[000186ca] 3f1e                      move.w     (a6)+,-(a7)
[000186cc] 43eb 01bf                 lea.l      447(a3),a1
[000186d0] 204a                      movea.l    a2,a0
[000186d2] 4eb9 0007 5680            jsr        sprintf
[000186d8] 544f                      addq.w     #2,a7
[000186da] 204a                      movea.l    a2,a0
[000186dc] 4eb9 0001 65f6            jsr        save_string
[000186e2] 7007                      moveq.l    #7,d0
[000186e4] c047                      and.w      d7,d0
[000186e6] 5f40                      subq.w     #7,d0
[000186e8] 660a                      bne.s      out_icon_6
[000186ea] 41eb 005f                 lea.l      95(a3),a0
[000186ee] 4eb9 0001 65f6            jsr        save_string
out_icon_6:
[000186f4] 5247                      addq.w     #1,d7
out_icon_5:
[000186f6] bc47                      cmp.w      d7,d6
[000186f8] 6ed0                      bgt.s      out_icon_7
[000186fa] 486c 0016                 pea.l      22(a4)
[000186fe] 3f1e                      move.w     (a6)+,-(a7)
[00018700] 43eb 01c7                 lea.l      455(a3),a1
[00018704] 204a                      movea.l    a2,a0
[00018706] 4eb9 0007 5680            jsr        sprintf
[0001870c] 5c4f                      addq.w     #6,a7
[0001870e] 204a                      movea.l    a2,a0
[00018710] 4eb9 0001 65f6            jsr        save_string
[00018716] 4247                      clr.w      d7
[00018718] 602c                      bra.s      out_icon_8
out_icon_10:
[0001871a] 3f1e                      move.w     (a6)+,-(a7)
[0001871c] 43eb 01bf                 lea.l      447(a3),a1
[00018720] 204a                      movea.l    a2,a0
[00018722] 4eb9 0007 5680            jsr        sprintf
[00018728] 544f                      addq.w     #2,a7
[0001872a] 204a                      movea.l    a2,a0
[0001872c] 4eb9 0001 65f6            jsr        save_string
[00018732] 7007                      moveq.l    #7,d0
[00018734] c047                      and.w      d7,d0
[00018736] 5f40                      subq.w     #7,d0
[00018738] 660a                      bne.s      out_icon_9
[0001873a] 41eb 005f                 lea.l      95(a3),a0
[0001873e] 4eb9 0001 65f6            jsr        save_string
out_icon_9:
[00018744] 5247                      addq.w     #1,d7
out_icon_8:
[00018746] bc47                      cmp.w      d7,d6
[00018748] 6ed0                      bgt.s      out_icon_10
[0001874a] 3f1e                      move.w     (a6)+,-(a7)
[0001874c] 43eb 01f1                 lea.l      497(a3),a1
[00018750] 204a                      movea.l    a2,a0
[00018752] 4eb9 0007 5680            jsr        sprintf
[00018758] 544f                      addq.w     #2,a7
[0001875a] 204a                      movea.l    a2,a0
[0001875c] 4eb9 0001 65f6            jsr        save_string
[00018762] 302c 0038                 move.w     56(a4),d0
[00018766] c07c 0500                 and.w      #$0500,d0
[0001876a] b07c 0100                 cmp.w      #$0100,d0
[0001876e] 660c                      bne.s      out_icon_11
[00018770] 41eb 01fb                 lea.l      507(a3),a0
[00018774] 4eb9 0001 65f6            jsr        save_string
[0001877a] 600a                      bra.s      out_icon_12
out_icon_11:
[0001877c] 41eb 0203                 lea.l      515(a3),a0
[00018780] 4eb9 0001 65f6            jsr        save_string
out_icon_12:
[00018786] 3f2d 0020                 move.w     32(a5),-(a7)
[0001878a] 3f2d 001e                 move.w     30(a5),-(a7)
[0001878e] 3f2d 001c                 move.w     28(a5),-(a7)
[00018792] 3f2d 001a                 move.w     26(a5),-(a7)
[00018796] 3f2d 0018                 move.w     24(a5),-(a7)
[0001879a] 3f2d 0016                 move.w     22(a5),-(a7)
[0001879e] 3f2d 0014                 move.w     20(a5),-(a7)
[000187a2] 3f2d 0012                 move.w     18(a5),-(a7)
[000187a6] 3f2d 0010                 move.w     16(a5),-(a7)
[000187aa] 3f2d 000e                 move.w     14(a5),-(a7)
[000187ae] 3f2d 000c                 move.w     12(a5),-(a7)
[000187b2] 206d 0008                 movea.l    8(a5),a0
[000187b6] 4868 0016                 pea.l      22(a0)
[000187ba] 486c 0016                 pea.l      22(a4)
[000187be] 486c 0016                 pea.l      22(a4)
[000187c2] 486c 0016                 pea.l      22(a4)
[000187c6] 43eb 020b                 lea.l      523(a3),a1
[000187ca] 204a                      movea.l    a2,a0
[000187cc] 4eb9 0007 5680            jsr        sprintf
[000187d2] 4fef 0026                 lea.l      38(a7),a7
[000187d6] 204a                      movea.l    a2,a0
[000187d8] 4eb9 0001 65f6            jsr        save_string
[000187de] 4a45                      tst.w      d5
[000187e0] 671e                      beq.s      out_icon_13
[000187e2] 486c 0016                 pea.l      22(a4)
[000187e6] 3f05                      move.w     d5,-(a7)
[000187e8] 43eb 0275                 lea.l      629(a3),a1
[000187ec] 204a                      movea.l    a2,a0
[000187ee] 4eb9 0007 5680            jsr        sprintf
[000187f4] 5c4f                      addq.w     #6,a7
[000187f6] 204a                      movea.l    a2,a0
[000187f8] 4eb9 0001 65f6            jsr        save_string
[000187fe] 600a                      bra.s      out_icon_14
out_icon_13:
[00018800] 41eb 0079                 lea.l      121(a3),a0
[00018804] 4eb9 0001 65f6            jsr        save_string
out_icon_14:
[0001880a] 41eb 027f                 lea.l      639(a3),a0
[0001880e] 4eb9 0001 65f6            jsr        save_string
[00018814] 5244                      addq.w     #1,d4
out_icon_2:
[00018816] b644                      cmp.w      d4,d3
[00018818] 6e00 fe34                 bgt        out_icon_15
out_icon_1:
[0001881c] 504f                      addq.w     #8,a7
[0001881e] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00018822] 4e75                      rts

out_mouse:
[00018824] 48e7 1c3e                 movem.l    d3-d5/a2-a6,-(a7)
[00018828] 2448                      movea.l    a0,a2
[0001882a] 262a 000e                 move.l     14(a2),d3
[0001882e] e48b                      lsr.l      #2,d3
[00018830] 4a43                      tst.w      d3
[00018832] 6f00 0132                 ble        out_mouse_1
[00018836] 41ea 0016                 lea.l      22(a2),a0
[0001883a] 6100 f7d2                 bsr        info_list
[0001883e] 246a 0004                 movea.l    4(a2),a2
[00018842] 47f9 0009 9190            lea.l      $00099190,a3
[00018848] 41eb 0286                 lea.l      646(a3),a0
[0001884c] 4eb9 0001 65f6            jsr        save_string
[00018852] 4244                      clr.w      d4
[00018854] 4bf9 000f b02a            lea.l      iostring,a5
[0001885a] 6000 0104                 bra        out_mouse_2
out_mouse_11:
[0001885e] 3004                      move.w     d4,d0
[00018860] 48c0                      ext.l      d0
[00018862] e588                      lsl.l      #2,d0
[00018864] 2872 0800                 movea.l    0(a2,d0.l),a4
[00018868] 41ec 0016                 lea.l      22(a4),a0
[0001886c] 6100 f7f8                 bsr        info_obj
[00018870] 2c6c 0004                 movea.l    4(a4),a6
[00018874] 302c 0038                 move.w     56(a4),d0
[00018878] c07c 0500                 and.w      #$0500,d0
[0001887c] b07c 0100                 cmp.w      #$0100,d0
[00018880] 660c                      bne.s      out_mouse_3
[00018882] 41eb 01fb                 lea.l      507(a3),a0
[00018886] 4eb9 0001 65f6            jsr        save_string
[0001888c] 600a                      bra.s      out_mouse_4
out_mouse_3:
[0001888e] 41eb 0203                 lea.l      515(a3),a0
[00018892] 4eb9 0001 65f6            jsr        save_string
out_mouse_4:
[00018898] 3f2e 0008                 move.w     8(a6),-(a7)
[0001889c] 3f2e 0006                 move.w     6(a6),-(a7)
[000188a0] 3f2e 0004                 move.w     4(a6),-(a7)
[000188a4] 3f2e 0002                 move.w     2(a6),-(a7)
[000188a8] 3f16                      move.w     (a6),-(a7)
[000188aa] 486c 0016                 pea.l      22(a4)
[000188ae] 43eb 02a1                 lea.l      673(a3),a1
[000188b2] 204d                      movea.l    a5,a0
[000188b4] 4eb9 0007 5680            jsr        sprintf
[000188ba] 4fef 000e                 lea.l      14(a7),a7
[000188be] 204d                      movea.l    a5,a0
[000188c0] 4eb9 0001 65f6            jsr        save_string
[000188c6] 4dee 000a                 lea.l      10(a6),a6
[000188ca] 7a0f                      moveq.l    #15,d5
[000188cc] 602a                      bra.s      out_mouse_5
out_mouse_7:
[000188ce] 3f1e                      move.w     (a6)+,-(a7)
[000188d0] 43eb 01bf                 lea.l      447(a3),a1
[000188d4] 204d                      movea.l    a5,a0
[000188d6] 4eb9 0007 5680            jsr        sprintf
[000188dc] 544f                      addq.w     #2,a7
[000188de] 204d                      movea.l    a5,a0
[000188e0] 4eb9 0001 65f6            jsr        save_string
[000188e6] ba7c 0008                 cmp.w      #$0008,d5
[000188ea] 660a                      bne.s      out_mouse_6
[000188ec] 41eb 02d4                 lea.l      724(a3),a0
[000188f0] 4eb9 0001 65f6            jsr        save_string
out_mouse_6:
[000188f6] 5345                      subq.w     #1,d5
out_mouse_5:
[000188f8] 4a45                      tst.w      d5
[000188fa] 6ed2                      bgt.s      out_mouse_7
[000188fc] 3f1e                      move.w     (a6)+,-(a7)
[000188fe] 43eb 02db                 lea.l      731(a3),a1
[00018902] 204d                      movea.l    a5,a0
[00018904] 4eb9 0007 5680            jsr        sprintf
[0001890a] 544f                      addq.w     #2,a7
[0001890c] 204d                      movea.l    a5,a0
[0001890e] 4eb9 0001 65f6            jsr        save_string
[00018914] 7a0f                      moveq.l    #15,d5
[00018916] 602a                      bra.s      out_mouse_8
out_mouse_10:
[00018918] 3f1e                      move.w     (a6)+,-(a7)
[0001891a] 43eb 01bf                 lea.l      447(a3),a1
[0001891e] 204d                      movea.l    a5,a0
[00018920] 4eb9 0007 5680            jsr        sprintf
[00018926] 544f                      addq.w     #2,a7
[00018928] 204d                      movea.l    a5,a0
[0001892a] 4eb9 0001 65f6            jsr        save_string
[00018930] ba7c 0008                 cmp.w      #$0008,d5
[00018934] 660a                      bne.s      out_mouse_9
[00018936] 41eb 02d4                 lea.l      724(a3),a0
[0001893a] 4eb9 0001 65f6            jsr        save_string
out_mouse_9:
[00018940] 5345                      subq.w     #1,d5
out_mouse_8:
[00018942] 4a45                      tst.w      d5
[00018944] 6ed2                      bgt.s      out_mouse_10
[00018946] 3f1e                      move.w     (a6)+,-(a7)
[00018948] 43eb 02f4                 lea.l      756(a3),a1
[0001894c] 204d                      movea.l    a5,a0
[0001894e] 4eb9 0007 5680            jsr        sprintf
[00018954] 544f                      addq.w     #2,a7
[00018956] 204d                      movea.l    a5,a0
[00018958] 4eb9 0001 65f6            jsr        save_string
[0001895e] 5244                      addq.w     #1,d4
out_mouse_2:
[00018960] b644                      cmp.w      d4,d3
[00018962] 6e00 fefa                 bgt        out_mouse_11
out_mouse_1:
[00018966] 4cdf 7c38                 movem.l    (a7)+,d3-d5/a2-a6
[0001896a] 4e75                      rts

out_image:
[0001896c] 48e7 1e3e                 movem.l    d3-d6/a2-a6,-(a7)
[00018970] 514f                      subq.w     #8,a7
[00018972] 2f48 0004                 move.l     a0,4(a7)
[00018976] 2628 000e                 move.l     14(a0),d3
[0001897a] e48b                      lsr.l      #2,d3
[0001897c] 4a43                      tst.w      d3
[0001897e] 6f00 011e                 ble        out_image_1
[00018982] 41e8 0016                 lea.l      22(a0),a0
[00018986] 6100 f686                 bsr        info_list
[0001898a] 206f 0004                 movea.l    4(a7),a0
[0001898e] 2ea8 0004                 move.l     4(a0),(a7)
[00018992] 47f9 0009 9190            lea.l      $00099190,a3
[00018998] 41eb 030c                 lea.l      780(a3),a0
[0001899c] 4eb9 0001 65f6            jsr        save_string
[000189a2] 4244                      clr.w      d4
[000189a4] 45f9 000f b02a            lea.l      iostring,a2
[000189aa] 6000 00ec                 bra        out_image_2
out_image_8:
[000189ae] 3004                      move.w     d4,d0
[000189b0] 48c0                      ext.l      d0
[000189b2] e588                      lsl.l      #2,d0
[000189b4] 2057                      movea.l    (a7),a0
[000189b6] 2870 0800                 movea.l    0(a0,d0.l),a4
[000189ba] 41ec 0016                 lea.l      22(a4),a0
[000189be] 6100 f6a6                 bsr        info_obj
[000189c2] 2a6c 0004                 movea.l    4(a4),a5
[000189c6] 3a2d 0004                 move.w     4(a5),d5
[000189ca] e245                      asr.w      #1,d5
[000189cc] cbed 0006                 muls.w     6(a5),d5
[000189d0] 5345                      subq.w     #1,d5
[000189d2] 2015                      move.l     (a5),d0
[000189d4] 4df5 0800                 lea.l      0(a5,d0.l),a6
[000189d8] 486c 0016                 pea.l      22(a4)
[000189dc] 43eb 0323                 lea.l      803(a3),a1
[000189e0] 204a                      movea.l    a2,a0
[000189e2] 4eb9 0007 5680            jsr        sprintf
[000189e8] 584f                      addq.w     #4,a7
[000189ea] 204a                      movea.l    a2,a0
[000189ec] 4eb9 0001 65f6            jsr        save_string
[000189f2] 4246                      clr.w      d6
[000189f4] 602c                      bra.s      out_image_3
out_image_5:
[000189f6] 3f1e                      move.w     (a6)+,-(a7)
[000189f8] 43eb 01bf                 lea.l      447(a3),a1
[000189fc] 204a                      movea.l    a2,a0
[000189fe] 4eb9 0007 5680            jsr        sprintf
[00018a04] 544f                      addq.w     #2,a7
[00018a06] 204a                      movea.l    a2,a0
[00018a08] 4eb9 0001 65f6            jsr        save_string
[00018a0e] 7007                      moveq.l    #7,d0
[00018a10] c046                      and.w      d6,d0
[00018a12] 5f40                      subq.w     #7,d0
[00018a14] 660a                      bne.s      out_image_4
[00018a16] 41eb 005f                 lea.l      95(a3),a0
[00018a1a] 4eb9 0001 65f6            jsr        save_string
out_image_4:
[00018a20] 5246                      addq.w     #1,d6
out_image_3:
[00018a22] ba46                      cmp.w      d6,d5
[00018a24] 6ed0                      bgt.s      out_image_5
[00018a26] 3f1e                      move.w     (a6)+,-(a7)
[00018a28] 43eb 0346                 lea.l      838(a3),a1
[00018a2c] 204a                      movea.l    a2,a0
[00018a2e] 4eb9 0007 5680            jsr        sprintf
[00018a34] 544f                      addq.w     #2,a7
[00018a36] 204a                      movea.l    a2,a0
[00018a38] 4eb9 0001 65f6            jsr        save_string
[00018a3e] 302c 0038                 move.w     56(a4),d0
[00018a42] c07c 0500                 and.w      #$0500,d0
[00018a46] b07c 0100                 cmp.w      #$0100,d0
[00018a4a] 660c                      bne.s      out_image_6
[00018a4c] 41eb 01fb                 lea.l      507(a3),a0
[00018a50] 4eb9 0001 65f6            jsr        save_string
[00018a56] 600a                      bra.s      out_image_7
out_image_6:
[00018a58] 41eb 0203                 lea.l      515(a3),a0
[00018a5c] 4eb9 0001 65f6            jsr        save_string
out_image_7:
[00018a62] 3f2d 000c                 move.w     12(a5),-(a7)
[00018a66] 3f2d 000a                 move.w     10(a5),-(a7)
[00018a6a] 3f2d 0008                 move.w     8(a5),-(a7)
[00018a6e] 3f2d 0006                 move.w     6(a5),-(a7)
[00018a72] 3f2d 0004                 move.w     4(a5),-(a7)
[00018a76] 486c 0016                 pea.l      22(a4)
[00018a7a] 486c 0016                 pea.l      22(a4)
[00018a7e] 43eb 0353                 lea.l      851(a3),a1
[00018a82] 204a                      movea.l    a2,a0
[00018a84] 4eb9 0007 5680            jsr        sprintf
[00018a8a] 4fef 0012                 lea.l      18(a7),a7
[00018a8e] 204a                      movea.l    a2,a0
[00018a90] 4eb9 0001 65f6            jsr        save_string
[00018a96] 5244                      addq.w     #1,d4
out_image_2:
[00018a98] b644                      cmp.w      d4,d3
[00018a9a] 6e00 ff12                 bgt        out_image_8
out_image_1:
[00018a9e] 504f                      addq.w     #8,a7
[00018aa0] 4cdf 7c78                 movem.l    (a7)+,d3-d6/a2-a6
[00018aa4] 4e75                      rts

out_obj:
[00018aa6] 48e7 1f3e                 movem.l    d3-d7/a2-a6,-(a7)
[00018aaa] 4fef ffc0                 lea.l      -64(a7),a7
[00018aae] 2f48 003c                 move.l     a0,60(a7)
[00018ab2] 2f49 0038                 move.l     a1,56(a7)
[00018ab6] 45f9 000f b442            lea.l      $000FB442,a2
[00018abc] 2628 000e                 move.l     14(a0),d3
[00018ac0] e48b                      lsr.l      #2,d3
[00018ac2] 4a43                      tst.w      d3
[00018ac4] 6f00 0390                 ble        out_obj_1
[00018ac8] 41e8 0016                 lea.l      22(a0),a0
[00018acc] 6100 f540                 bsr        info_list
[00018ad0] 206f 0038                 movea.l    56(a7),a0
[00018ad4] 4eb9 0001 65f6            jsr        save_string
[00018ada] 33fc ffff 000f b440       move.w     #$FFFF,mapX
[00018ae2] 206f 003c                 movea.l    60(a7),a0
[00018ae6] 2f68 0004 0034            move.l     4(a0),52(a7)
[00018aec] 4244                      clr.w      d4
[00018aee] 4df9 0009 9190            lea.l      $00099190,a6
[00018af4] 47f9 000f b02a            lea.l      iostring,a3
[00018afa] 49ef 0018                 lea.l      24(a7),a4
[00018afe] 6000 0350                 bra        out_obj_2
out_obj_22:
[00018b02] 3004                      move.w     d4,d0
[00018b04] 48c0                      ext.l      d0
[00018b06] e588                      lsl.l      #2,d0
[00018b08] 206f 0034                 movea.l    52(a7),a0
[00018b0c] 2f70 0800 0030            move.l     0(a0,d0.l),48(a7)
[00018b12] 206f 0030                 movea.l    48(a7),a0
[00018b16] 41e8 0016                 lea.l      22(a0),a0
[00018b1a] 6100 f54a                 bsr        info_obj
[00018b1e] 206f 0030                 movea.l    48(a7),a0
[00018b22] 2028 000e                 move.l     14(a0),d0
[00018b26] 7238                      moveq.l    #56,d1
[00018b28] 4eb9 0007 769e            jsr        _uldiv
[00018b2e] 2a00                      move.l     d0,d5
[00018b30] 206f 0030                 movea.l    48(a7),a0
[00018b34] 2a68 0004                 movea.l    4(a0),a5
[00018b38] 4246                      clr.w      d6
[00018b3a] 3486                      move.w     d6,(a2)
[00018b3c] 4247                      clr.w      d7
[00018b3e] 6000 0076                 bra.w      out_obj_3
out_obj_7:
[00018b42] 206f 0030                 movea.l    48(a7),a0
[00018b46] 3028 0038                 move.w     56(a0),d0
[00018b4a] c07c 0500                 and.w      #$0500,d0
[00018b4e] b07c 0100                 cmp.w      #$0100,d0
[00018b52] 6722                      beq.s      out_obj_4
[00018b54] 2215                      move.l     (a5),d1
[00018b56] 671e                      beq.s      out_obj_4
[00018b58] 3f06                      move.w     d6,-(a7)
[00018b5a] 2241                      movea.l    d1,a1
[00018b5c] 4869 0016                 pea.l      22(a1)
[00018b60] 43ee 038b                 lea.l      907(a6),a1
[00018b64] 204b                      movea.l    a3,a0
[00018b66] 4eb9 0007 5680            jsr        sprintf
[00018b6c] 5c4f                      addq.w     #6,a7
[00018b6e] 204b                      movea.l    a3,a0
[00018b70] 4eb9 0001 65f6            jsr        save_string
out_obj_4:
[00018b76] 202d 0020                 move.l     32(a5),d0
[00018b7a] 6628                      bne.s      out_obj_5
[00018b7c] 222d 0024                 move.l     36(a5),d1
[00018b80] 6622                      bne.s      out_obj_5
[00018b82] 242d 002c                 move.l     44(a5),d2
[00018b86] 661c                      bne.s      out_obj_5
[00018b88] 202d 0030                 move.l     48(a5),d0
[00018b8c] 6616                      bne.s      out_obj_5
[00018b8e] 222d 0004                 move.l     4(a5),d1
[00018b92] 6610                      bne.s      out_obj_5
[00018b94] 342d 002a                 move.w     42(a5),d2
[00018b98] 660a                      bne.s      out_obj_5
[00018b9a] 302d 0034                 move.w     52(a5),d0
[00018b9e] 6604                      bne.s      out_obj_5
[00018ba0] 5246                      addq.w     #1,d6
[00018ba2] 6002                      bra.s      out_obj_6
out_obj_5:
[00018ba4] 5446                      addq.w     #2,d6
out_obj_6:
[00018ba6] 4bed 0038                 lea.l      56(a5),a5
[00018baa] 5247                      addq.w     #1,d7
[00018bac] 3007                      move.w     d7,d0
[00018bae] 48c0                      ext.l      d0
[00018bb0] d080                      add.l      d0,d0
[00018bb2] 3586 0800                 move.w     d6,0(a2,d0.l)
out_obj_3:
[00018bb6] ba47                      cmp.w      d7,d5
[00018bb8] 6e00 ff88                 bgt.w      out_obj_7
[00018bbc] 206f 0030                 movea.l    48(a7),a0
[00018bc0] 2a68 0004                 movea.l    4(a0),a5
[00018bc4] 4247                      clr.w      d7
[00018bc6] 6000 0276                 bra        out_obj_8
out_obj_21:
[00018bca] 7018                      moveq.l    #24,d0
[00018bcc] 43ed 0008                 lea.l      8(a5),a1
[00018bd0] 204c                      movea.l    a4,a0
[00018bd2] 4eb9 0007 6f44            jsr        memcpy
[00018bd8] 7018                      moveq.l    #24,d0
[00018bda] 43ed 0020                 lea.l      32(a5),a1
[00018bde] 41d7                      lea.l      (a7),a0
[00018be0] 4eb9 0007 6f44            jsr        memcpy
[00018be6] 3014                      move.w     (a4),d0
[00018be8] 48c0                      ext.l      d0
[00018bea] d080                      add.l      d0,d0
[00018bec] 38b2 0800                 move.w     0(a2,d0.l),(a4)
[00018bf0] 302c 0002                 move.w     2(a4),d0
[00018bf4] 48c0                      ext.l      d0
[00018bf6] d080                      add.l      d0,d0
[00018bf8] 3972 0800 0002            move.w     0(a2,d0.l),2(a4)
[00018bfe] 302c 0004                 move.w     4(a4),d0
[00018c02] 48c0                      ext.l      d0
[00018c04] d080                      add.l      d0,d0
[00018c06] 3972 0800 0004            move.w     0(a2,d0.l),4(a4)
[00018c0c] 70ff                      moveq.l    #-1,d0
[00018c0e] d045                      add.w      d5,d0
[00018c10] be40                      cmp.w      d0,d7
[00018c12] 6622                      bne.s      out_obj_9
[00018c14] 3207                      move.w     d7,d1
[00018c16] 48c1                      ext.l      d1
[00018c18] d281                      add.l      d1,d1
[00018c1a] 3432 1802                 move.w     2(a2,d1.l),d2
[00018c1e] 7c02                      moveq.l    #2,d6
[00018c20] dc72 1800                 add.w      0(a2,d1.l),d6
[00018c24] b446                      cmp.w      d6,d2
[00018c26] 6608                      bne.s      out_obj_10
[00018c28] 006f 0020 0008            ori.w      #$0020,8(a7)
[00018c2e] 6006                      bra.s      out_obj_9
out_obj_10:
[00018c30] 006c 0020 0008            ori.w      #$0020,8(a4)
out_obj_9:
[00018c36] 4a47                      tst.w      d7
[00018c38] 6640                      bne.s      out_obj_11
[00018c3a] 206f 0030                 movea.l    48(a7),a0
[00018c3e] 3028 0038                 move.w     56(a0),d0
[00018c42] c07c 0500                 and.w      #$0500,d0
[00018c46] b07c 0100                 cmp.w      #$0100,d0
[00018c4a] 660c                      bne.s      out_obj_12
[00018c4c] 41ee 01fb                 lea.l      507(a6),a0
[00018c50] 4eb9 0001 65f6            jsr        save_string
[00018c56] 600a                      bra.s      out_obj_13
out_obj_12:
[00018c58] 41ee 0203                 lea.l      515(a6),a0
[00018c5c] 4eb9 0001 65f6            jsr        save_string
out_obj_13:
[00018c62] 206f 0030                 movea.l    48(a7),a0
[00018c66] 4868 0016                 pea.l      22(a0)
[00018c6a] 43ee 03a1                 lea.l      929(a6),a1
[00018c6e] 204b                      movea.l    a3,a0
[00018c70] 4eb9 0007 5680            jsr        sprintf
[00018c76] 584f                      addq.w     #4,a7
[00018c78] 6020                      bra.s      out_obj_14
out_obj_11:
[00018c7a] 206f 0030                 movea.l    48(a7),a0
[00018c7e] 4868 0016                 pea.l      22(a0)
[00018c82] 3007                      move.w     d7,d0
[00018c84] 48c0                      ext.l      d0
[00018c86] d080                      add.l      d0,d0
[00018c88] 3f32 0800                 move.w     0(a2,d0.l),-(a7)
[00018c8c] 43ee 03b3                 lea.l      947(a6),a1
[00018c90] 204b                      movea.l    a3,a0
[00018c92] 4eb9 0007 5680            jsr        sprintf
[00018c98] 5c4f                      addq.w     #6,a7
out_obj_14:
[00018c9a] 204b                      movea.l    a3,a0
[00018c9c] 4eb9 0001 65f6            jsr        save_string
[00018ca2] 3f2c 000a                 move.w     10(a4),-(a7)
[00018ca6] 3f2c 0008                 move.w     8(a4),-(a7)
[00018caa] 3f2c 0006                 move.w     6(a4),-(a7)
[00018cae] 3f2c 0004                 move.w     4(a4),-(a7)
[00018cb2] 3f2c 0002                 move.w     2(a4),-(a7)
[00018cb6] 3f14                      move.w     (a4),-(a7)
[00018cb8] 43ee 03ce                 lea.l      974(a6),a1
[00018cbc] 204b                      movea.l    a3,a0
[00018cbe] 4eb9 0007 5680            jsr        sprintf
[00018cc4] 4fef 000c                 lea.l      12(a7),a7
[00018cc8] 204b                      movea.l    a3,a0
[00018cca] 4eb9 0001 65f6            jsr        save_string
[00018cd0] 0c2c 0014 0007            cmpi.b     #$14,7(a4)
[00018cd6] 6710                      beq.s      out_obj_15
[00018cd8] 0c2c 0019 0007            cmpi.b     #$19,7(a4)
[00018cde] 6708                      beq.s      out_obj_15
[00018ce0] 0c2c 001b 0007            cmpi.b     #$1B,7(a4)
[00018ce6] 6614                      bne.s      out_obj_16
out_obj_15:
[00018ce8] 2f2c 000c                 move.l     12(a4),-(a7)
[00018cec] 43ee 03f4                 lea.l      1012(a6),a1
[00018cf0] 204b                      movea.l    a3,a0
[00018cf2] 4eb9 0007 5680            jsr        sprintf
[00018cf8] 584f                      addq.w     #4,a7
[00018cfa] 6046                      bra.s      out_obj_17
out_obj_16:
[00018cfc] 0c2c 0020 0007            cmpi.b     #$20,7(a4)
[00018d02] 6710                      beq.s      out_obj_18
[00018d04] 0c2c 001c 0007            cmpi.b     #$1C,7(a4)
[00018d0a] 6708                      beq.s      out_obj_18
[00018d0c] 0c2c 001a 0007            cmpi.b     #$1A,7(a4)
[00018d12] 6618                      bne.s      out_obj_19
out_obj_18:
[00018d14] 206c 000c                 movea.l    12(a4),a0
[00018d18] 4868 0016                 pea.l      22(a0)
[00018d1c] 43ee 0402                 lea.l      1026(a6),a1
[00018d20] 204b                      movea.l    a3,a0
[00018d22] 4eb9 0007 5680            jsr        sprintf
[00018d28] 584f                      addq.w     #4,a7
[00018d2a] 6016                      bra.s      out_obj_17
out_obj_19:
[00018d2c] 206c 000c                 movea.l    12(a4),a0
[00018d30] 4868 0016                 pea.l      22(a0)
[00018d34] 43ee 040f                 lea.l      1039(a6),a1
[00018d38] 204b                      movea.l    a3,a0
[00018d3a] 4eb9 0007 5680            jsr        sprintf
[00018d40] 584f                      addq.w     #4,a7
out_obj_17:
[00018d42] 204b                      movea.l    a3,a0
[00018d44] 4eb9 0001 65f6            jsr        save_string
[00018d4a] 3f2c 0016                 move.w     22(a4),-(a7)
[00018d4e] 3f2c 0014                 move.w     20(a4),-(a7)
[00018d52] 3f2c 0012                 move.w     18(a4),-(a7)
[00018d56] 3f2c 0010                 move.w     16(a4),-(a7)
[00018d5a] 43ee 041d                 lea.l      1053(a6),a1
[00018d5e] 204b                      movea.l    a3,a0
[00018d60] 4eb9 0007 5680            jsr        sprintf
[00018d66] 504f                      addq.w     #8,a7
[00018d68] 204b                      movea.l    a3,a0
[00018d6a] 4eb9 0001 65f6            jsr        save_string
[00018d70] 3007                      move.w     d7,d0
[00018d72] 48c0                      ext.l      d0
[00018d74] d080                      add.l      d0,d0
[00018d76] 3232 0802                 move.w     2(a2,d0.l),d1
[00018d7a] 7402                      moveq.l    #2,d2
[00018d7c] d472 0800                 add.w      0(a2,d0.l),d2
[00018d80] b242                      cmp.w      d2,d1
[00018d82] 6600 00b4                 bne        out_obj_20
[00018d86] 206f 0030                 movea.l    48(a7),a0
[00018d8a] 4868 0016                 pea.l      22(a0)
[00018d8e] 3f32 0800                 move.w     0(a2,d0.l),-(a7)
[00018d92] 43ee 0438                 lea.l      1080(a6),a1
[00018d96] 204b                      movea.l    a3,a0
[00018d98] 4eb9 0007 5680            jsr        sprintf
[00018d9e] 5c4f                      addq.w     #6,a7
[00018da0] 204b                      movea.l    a3,a0
[00018da2] 4eb9 0001 65f6            jsr        save_string
[00018da8] 43ee 0457                 lea.l      1111(a6),a1
[00018dac] 2057                      movea.l    (a7),a0
[00018dae] 6100 f302                 bsr        out_label
[00018db2] 41ee 0076                 lea.l      118(a6),a0
[00018db6] 4eb9 0001 65f6            jsr        save_string
[00018dbc] 43ee 0457                 lea.l      1111(a6),a1
[00018dc0] 206f 0004                 movea.l    4(a7),a0
[00018dc4] 6100 f2ec                 bsr        out_label
[00018dc8] 3f2f 000a                 move.w     10(a7),-(a7)
[00018dcc] 3f2f 000a                 move.w     10(a7),-(a7)
[00018dd0] 43ee 03e5                 lea.l      997(a6),a1
[00018dd4] 204b                      movea.l    a3,a0
[00018dd6] 4eb9 0007 5680            jsr        sprintf
[00018ddc] 584f                      addq.w     #4,a7
[00018dde] 204b                      movea.l    a3,a0
[00018de0] 4eb9 0001 65f6            jsr        save_string
[00018de6] 43ee 045f                 lea.l      1119(a6),a1
[00018dea] 206f 000c                 movea.l    12(a7),a0
[00018dee] 6100 f2c2                 bsr        out_label
[00018df2] 41ee 0076                 lea.l      118(a6),a0
[00018df6] 4eb9 0001 65f6            jsr        save_string
[00018dfc] 43ee 045f                 lea.l      1119(a6),a1
[00018e00] 206f 0010                 movea.l    16(a7),a0
[00018e04] 6100 f2ac                 bsr        out_label
[00018e08] 3f2f 0014                 move.w     20(a7),-(a7)
[00018e0c] 43ee 03eb                 lea.l      1003(a6),a1
[00018e10] 204b                      movea.l    a3,a0
[00018e12] 4eb9 0007 5680            jsr        sprintf
[00018e18] 544f                      addq.w     #2,a7
[00018e1a] 204b                      movea.l    a3,a0
[00018e1c] 4eb9 0001 65f6            jsr        save_string
[00018e22] 43ee 0468                 lea.l      1128(a6),a1
[00018e26] 206d 0004                 movea.l    4(a5),a0
[00018e2a] 6100 f286                 bsr        out_label
[00018e2e] 41ee 00c5                 lea.l      197(a6),a0
[00018e32] 4eb9 0001 65f6            jsr        save_string
out_obj_20:
[00018e38] 4bed 0038                 lea.l      56(a5),a5
[00018e3c] 5247                      addq.w     #1,d7
out_obj_8:
[00018e3e] ba47                      cmp.w      d7,d5
[00018e40] 6e00 fd88                 bgt        out_obj_21
[00018e44] 41ee 0032                 lea.l      50(a6),a0
[00018e48] 4eb9 0001 65f6            jsr        save_string
[00018e4e] 5244                      addq.w     #1,d4
out_obj_2:
[00018e50] b644                      cmp.w      d4,d3
[00018e52] 6e00 fcae                 bgt        out_obj_22
out_obj_1:
[00018e56] 4fef 0040                 lea.l      64(a7),a7
[00018e5a] 4cdf 7cf8                 movem.l    (a7)+,d3-d7/a2-a6
[00018e5e] 4e75                      rts

out_data:
[00018e60] 48e7 1e3c                 movem.l    d3-d6/a2-a5,-(a7)
[00018e64] 2448                      movea.l    a0,a2
[00018e66] 262a 000e                 move.l     14(a2),d3
[00018e6a] e48b                      lsr.l      #2,d3
[00018e6c] 4a43                      tst.w      d3
[00018e6e] 6f00 00e2                 ble        out_data_1
[00018e72] 41ea 0016                 lea.l      22(a2),a0
[00018e76] 6100 f196                 bsr        info_list
[00018e7a] 246a 0004                 movea.l    4(a2),a2
[00018e7e] 47f9 0009 9190            lea.l      $00099190,a3
[00018e84] 41eb 046f                 lea.l      1135(a3),a0
[00018e88] 4eb9 0001 65f6            jsr        save_string
[00018e8e] 4244                      clr.w      d4
[00018e90] 49f9 000f b02a            lea.l      iostring,a4
[00018e96] 6000 00b4                 bra        out_data_2
out_data_9:
[00018e9a] 3004                      move.w     d4,d0
[00018e9c] 48c0                      ext.l      d0
[00018e9e] e588                      lsl.l      #2,d0
[00018ea0] 2a72 0800                 movea.l    0(a2,d0.l),a5
[00018ea4] 41ed 0016                 lea.l      22(a5),a0
[00018ea8] 6100 f1bc                 bsr        info_obj
[00018eac] 7aff                      moveq.l    #-1,d5
[00018eae] daad 000e                 add.l      14(a5),d5
[00018eb2] e285                      asr.l      #1,d5
[00018eb4] 4a85                      tst.l      d5
[00018eb6] 6f00 0092                 ble        out_data_3
[00018eba] 302d 0038                 move.w     56(a5),d0
[00018ebe] c07c 0500                 and.w      #$0500,d0
[00018ec2] b07c 0100                 cmp.w      #$0100,d0
[00018ec6] 660c                      bne.s      out_data_4
[00018ec8] 41eb 01fb                 lea.l      507(a3),a0
[00018ecc] 4eb9 0001 65f6            jsr        save_string
[00018ed2] 600a                      bra.s      out_data_5
out_data_4:
[00018ed4] 41eb 0203                 lea.l      515(a3),a0
[00018ed8] 4eb9 0001 65f6            jsr        save_string
out_data_5:
[00018ede] 486d 0016                 pea.l      22(a5)
[00018ee2] 43eb 0485                 lea.l      1157(a3),a1
[00018ee6] 204c                      movea.l    a4,a0
[00018ee8] 4eb9 0007 5680            jsr        sprintf
[00018eee] 584f                      addq.w     #4,a7
[00018ef0] 204c                      movea.l    a4,a0
[00018ef2] 4eb9 0001 65f6            jsr        save_string
[00018ef8] 2a6d 0004                 movea.l    4(a5),a5
[00018efc] 7c00                      moveq.l    #0,d6
[00018efe] 602e                      bra.s      out_data_6
out_data_8:
[00018f00] 3f1d                      move.w     (a5)+,-(a7)
[00018f02] 43eb 01bf                 lea.l      447(a3),a1
[00018f06] 204c                      movea.l    a4,a0
[00018f08] 4eb9 0007 5680            jsr        sprintf
[00018f0e] 544f                      addq.w     #2,a7
[00018f10] 204c                      movea.l    a4,a0
[00018f12] 4eb9 0001 65f6            jsr        save_string
[00018f18] 7007                      moveq.l    #7,d0
[00018f1a] c086                      and.l      d6,d0
[00018f1c] 7207                      moveq.l    #7,d1
[00018f1e] b280                      cmp.l      d0,d1
[00018f20] 660a                      bne.s      out_data_7
[00018f22] 41eb 0499                 lea.l      1177(a3),a0
[00018f26] 4eb9 0001 65f6            jsr        save_string
out_data_7:
[00018f2c] 5286                      addq.l     #1,d6
out_data_6:
[00018f2e] ba86                      cmp.l      d6,d5
[00018f30] 6ece                      bgt.s      out_data_8
[00018f32] 3f1d                      move.w     (a5)+,-(a7)
[00018f34] 43eb 049f                 lea.l      1183(a3),a1
[00018f38] 204c                      movea.l    a4,a0
[00018f3a] 4eb9 0007 5680            jsr        sprintf
[00018f40] 544f                      addq.w     #2,a7
[00018f42] 204c                      movea.l    a4,a0
[00018f44] 4eb9 0001 65f6            jsr        save_string
out_data_3:
[00018f4a] 5244                      addq.w     #1,d4
out_data_2:
[00018f4c] b644                      cmp.w      d4,d3
[00018f4e] 6e00 ff4a                 bgt        out_data_9
out_data_1:
[00018f52] 4cdf 3c78                 movem.l    (a7)+,d3-d6/a2-a5
[00018f56] 4e75                      rts

out_string:
[00018f58] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[00018f5c] 514f                      subq.w     #8,a7
[00018f5e] 2448                      movea.l    a0,a2
[00018f60] 2f49 0004                 move.l     a1,4(a7)
[00018f64] 266f 0028                 movea.l    40(a7),a3
[00018f68] 262a 000e                 move.l     14(a2),d3
[00018f6c] e48b                      lsr.l      #2,d3
[00018f6e] 4a43                      tst.w      d3
[00018f70] 6f00 01a8                 ble        out_string_1
[00018f74] 41ea 0016                 lea.l      22(a2),a0
[00018f78] 6100 f094                 bsr        info_list
[00018f7c] 246a 0004                 movea.l    4(a2),a2
[00018f80] 204b                      movea.l    a3,a0
[00018f82] 4eb9 0004 3a92            jsr        Ast_isEmpty
[00018f88] 4a40                      tst.w      d0
[00018f8a] 6608                      bne.s      out_string_2
[00018f8c] 204b                      movea.l    a3,a0
[00018f8e] 4eb9 0001 65f6            jsr        save_string
out_string_2:
[00018f94] 422f 0001                 clr.b      1(a7)
[00018f98] 4244                      clr.w      d4
[00018f9a] 4df9 0009 9190            lea.l      $00099190,a6
[00018fa0] 6000 0172                 bra        out_string_3
out_string_23:
[00018fa4] 3004                      move.w     d4,d0
[00018fa6] 48c0                      ext.l      d0
[00018fa8] e588                      lsl.l      #2,d0
[00018faa] 2872 0800                 movea.l    0(a2,d0.l),a4
[00018fae] 206f 0004                 movea.l    4(a7),a0
[00018fb2] 2268 0004                 movea.l    4(a0),a1
[00018fb6] 2a71 0800                 movea.l    0(a1,d0.l),a5
[00018fba] 43ee 04ae                 lea.l      1198(a6),a1
[00018fbe] 41ed 0016                 lea.l      22(a5),a0
[00018fc2] 7004                      moveq.l    #4,d0
[00018fc4] 4eb9 0007 69fc            jsr        strncmp
[00018fca] 4a40                      tst.w      d0
[00018fcc] 6700 0144                 beq        out_string_4
[00018fd0] 41ed 0016                 lea.l      22(a5),a0
[00018fd4] 6100 f090                 bsr        info_obj
[00018fd8] 302d 0038                 move.w     56(a5),d0
[00018fdc] c07c 0500                 and.w      #$0500,d0
[00018fe0] b07c 0100                 cmp.w      #$0100,d0
[00018fe4] 660c                      bne.s      out_string_5
[00018fe6] 41ee 01fb                 lea.l      507(a6),a0
[00018fea] 4eb9 0001 65f6            jsr        save_string
[00018ff0] 600a                      bra.s      out_string_6
out_string_5:
[00018ff2] 41ee 0203                 lea.l      515(a6),a0
[00018ff6] 4eb9 0001 65f6            jsr        save_string
out_string_6:
[00018ffc] 41ee 04b3                 lea.l      1203(a6),a0
[00019000] 4eb9 0001 65f6            jsr        save_string
[00019006] 422f 0001                 clr.b      1(a7)
[0001900a] 4bec 0016                 lea.l      22(a4),a5
[0001900e] 600c                      bra.s      out_string_7
out_string_8:
[00019010] 1e95                      move.b     (a5),(a7)
[00019012] 41d7                      lea.l      (a7),a0
[00019014] 4eb9 0001 65f6            jsr        save_string
[0001901a] 524d                      addq.w     #1,a5
out_string_7:
[0001901c] 0c15 0020                 cmpi.b     #$20,(a5)
[00019020] 6cee                      bge.s      out_string_8
[00019022] 41ee 04b9                 lea.l      1209(a6),a0
[00019026] 4eb9 0001 65f6            jsr        save_string
[0001902c] 2a6c 0004                 movea.l    4(a4),a5
[00019030] 6000 00d0                 bra        out_string_9
out_string_22:
[00019034] 1015                      move.b     (a5),d0
[00019036] 4880                      ext.w      d0
[00019038] b07c 000b                 cmp.w      #$000B,d0
[0001903c] 6760                      beq.s      out_string_10
[0001903e] 6e16                      bgt.s      out_string_11
[00019040] 5f40                      subq.w     #7,d0
[00019042] 6700 0076                 beq.w      out_string_12
[00019046] 5340                      subq.w     #1,d0
[00019048] 6762                      beq.s      out_string_13
[0001904a] 5340                      subq.w     #1,d0
[0001904c] 6742                      beq.s      out_string_14
[0001904e] 5340                      subq.w     #1,d0
[00019050] 6720                      beq.s      out_string_15
[00019052] 6000 009e                 bra        out_string_16
out_string_11:
[00019056] 907c 000c                 sub.w      #$000C,d0
[0001905a] 676c                      beq.s      out_string_17
[0001905c] 5340                      subq.w     #1,d0
[0001905e] 6722                      beq.s      out_string_18
[00019060] 907c 0015                 sub.w      #$0015,d0
[00019064] 6770                      beq.s      out_string_19
[00019066] 907c 003a                 sub.w      #$003A,d0
[0001906a] 6700 0078                 beq.w      out_string_20
[0001906e] 6000 0082                 bra        out_string_16
out_string_15:
[00019072] 43ee 04c1                 lea.l      1217(a6),a1
[00019076] 41d7                      lea.l      (a7),a0
[00019078] 4eb9 0007 6950            jsr        strcpy
[0001907e] 6000 0078                 bra.w      out_string_21
out_string_18:
[00019082] 43ee 04c4                 lea.l      1220(a6),a1
[00019086] 41d7                      lea.l      (a7),a0
[00019088] 4eb9 0007 6950            jsr        strcpy
[0001908e] 6068                      bra.s      out_string_21
out_string_14:
[00019090] 43ee 04c7                 lea.l      1223(a6),a1
[00019094] 41d7                      lea.l      (a7),a0
[00019096] 4eb9 0007 6950            jsr        strcpy
[0001909c] 605a                      bra.s      out_string_21
out_string_10:
[0001909e] 43ee 04ca                 lea.l      1226(a6),a1
[000190a2] 41d7                      lea.l      (a7),a0
[000190a4] 4eb9 0007 6950            jsr        strcpy
[000190aa] 604c                      bra.s      out_string_21
out_string_13:
[000190ac] 43ee 04cd                 lea.l      1229(a6),a1
[000190b0] 41d7                      lea.l      (a7),a0
[000190b2] 4eb9 0007 6950            jsr        strcpy
[000190b8] 603e                      bra.s      out_string_21
out_string_12:
[000190ba] 43ee 04d0                 lea.l      1232(a6),a1
[000190be] 41d7                      lea.l      (a7),a0
[000190c0] 4eb9 0007 6950            jsr        strcpy
[000190c6] 6030                      bra.s      out_string_21
out_string_17:
[000190c8] 43ee 04d3                 lea.l      1235(a6),a1
[000190cc] 41d7                      lea.l      (a7),a0
[000190ce] 4eb9 0007 6950            jsr        strcpy
[000190d4] 6022                      bra.s      out_string_21
out_string_19:
[000190d6] 43ee 04d6                 lea.l      1238(a6),a1
[000190da] 41d7                      lea.l      (a7),a0
[000190dc] 4eb9 0007 6950            jsr        strcpy
[000190e2] 6014                      bra.s      out_string_21
out_string_20:
[000190e4] 43ee 04d9                 lea.l      1241(a6),a1
[000190e8] 41d7                      lea.l      (a7),a0
[000190ea] 4eb9 0007 6950            jsr        strcpy
[000190f0] 6006                      bra.s      out_string_21
out_string_16:
[000190f2] 1e95                      move.b     (a5),(a7)
[000190f4] 422f 0001                 clr.b      1(a7)
out_string_21:
[000190f8] 41d7                      lea.l      (a7),a0
[000190fa] 4eb9 0001 65f6            jsr        save_string
[00019100] 524d                      addq.w     #1,a5
out_string_9:
[00019102] 1015                      move.b     (a5),d0
[00019104] 6600 ff2e                 bne        out_string_22
[00019108] 41ee 04dc                 lea.l      1244(a6),a0
[0001910c] 4eb9 0001 65f6            jsr        save_string
out_string_4:
[00019112] 5244                      addq.w     #1,d4
out_string_3:
[00019114] b644                      cmp.w      d4,d3
[00019116] 6e00 fe8c                 bgt        out_string_23
out_string_1:
[0001911a] 504f                      addq.w     #8,a7
[0001911c] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[00019120] 4e75                      rts

out_tedi:
[00019122] 48e7 183c                 movem.l    d3-d4/a2-a5,-(a7)
[00019126] 2448                      movea.l    a0,a2
[00019128] 262a 000e                 move.l     14(a2),d3
[0001912c] e48b                      lsr.l      #2,d3
[0001912e] 4a43                      tst.w      d3
[00019130] 6f00 009a                 ble        out_tedi_1
[00019134] 41ea 0016                 lea.l      22(a2),a0
[00019138] 6100 eed4                 bsr        info_list
[0001913c] 246a 0004                 movea.l    4(a2),a2
[00019140] 41f9 0009 9671            lea.l      $00099671,a0
[00019146] 4eb9 0001 65f6            jsr        save_string
[0001914c] 4244                      clr.w      d4
[0001914e] 4bf9 000f b02a            lea.l      iostring,a5
[00019154] 6072                      bra.s      out_tedi_2
out_tedi_3:
[00019156] 3004                      move.w     d4,d0
[00019158] 48c0                      ext.l      d0
[0001915a] e588                      lsl.l      #2,d0
[0001915c] 2672 0800                 movea.l    0(a2,d0.l),a3
[00019160] 41eb 0016                 lea.l      22(a3),a0
[00019164] 6100 ef00                 bsr        info_obj
[00019168] 286b 0004                 movea.l    4(a3),a4
[0001916c] 206c 0004                 movea.l    4(a4),a0
[00019170] 2f28 000e                 move.l     14(a0),-(a7)
[00019174] 2254                      movea.l    (a4),a1
[00019176] 2f29 000e                 move.l     14(a1),-(a7)
[0001917a] 3f2c 0016                 move.w     22(a4),-(a7)
[0001917e] 3f2c 0014                 move.w     20(a4),-(a7)
[00019182] 3f2c 0012                 move.w     18(a4),-(a7)
[00019186] 3f2c 0010                 move.w     16(a4),-(a7)
[0001918a] 3f2c 000e                 move.w     14(a4),-(a7)
[0001918e] 3f2c 000c                 move.w     12(a4),-(a7)
[00019192] 206c 0008                 movea.l    8(a4),a0
[00019196] 4868 0016                 pea.l      22(a0)
[0001919a] 226c 0004                 movea.l    4(a4),a1
[0001919e] 4869 0016                 pea.l      22(a1)
[000191a2] 2054                      movea.l    (a4),a0
[000191a4] 4868 0016                 pea.l      22(a0)
[000191a8] 486b 0016                 pea.l      22(a3)
[000191ac] 43f9 0009 968a            lea.l      $0009968A,a1
[000191b2] 204d                      movea.l    a5,a0
[000191b4] 4eb9 0007 5680            jsr        sprintf
[000191ba] 4fef 0024                 lea.l      36(a7),a7
[000191be] 204d                      movea.l    a5,a0
[000191c0] 4eb9 0001 65f6            jsr        save_string
[000191c6] 5244                      addq.w     #1,d4
out_tedi_2:
[000191c8] b644                      cmp.w      d4,d3
[000191ca] 6e8a                      bgt.s      out_tedi_3
out_tedi_1:
[000191cc] 4cdf 3c18                 movem.l    (a7)+,d3-d4/a2-a5
[000191d0] 4e75                      rts

out_user:
[000191d2] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[000191d6] 2448                      movea.l    a0,a2
[000191d8] 262a 000e                 move.l     14(a2),d3
[000191dc] e48b                      lsr.l      #2,d3
[000191de] 4a43                      tst.w      d3
[000191e0] 6f00 0102                 ble        out_user_1
[000191e4] 41ea 0016                 lea.l      22(a2),a0
[000191e8] 6100 ee24                 bsr        info_list
[000191ec] 246a 0004                 movea.l    4(a2),a2
[000191f0] 47f9 0009 9190            lea.l      $00099190,a3
[000191f6] 41eb 0544                 lea.l      1348(a3),a0
[000191fa] 4eb9 0001 65f6            jsr        save_string
[00019200] 4244                      clr.w      d4
[00019202] 4df9 000f b02a            lea.l      iostring,a6
[00019208] 6000 00d4                 bra        out_user_2
out_user_3:
[0001920c] 3004                      move.w     d4,d0
[0001920e] 48c0                      ext.l      d0
[00019210] e588                      lsl.l      #2,d0
[00019212] 2872 0800                 movea.l    0(a2,d0.l),a4
[00019216] 41ec 0016                 lea.l      22(a4),a0
[0001921a] 6100 ee4a                 bsr        info_obj
[0001921e] 2a6c 0004                 movea.l    4(a4),a5
[00019222] 2055                      movea.l    (a5),a0
[00019224] 4868 0016                 pea.l      22(a0)
[00019228] 486c 0016                 pea.l      22(a4)
[0001922c] 43eb 055d                 lea.l      1373(a3),a1
[00019230] 204e                      movea.l    a6,a0
[00019232] 4eb9 0007 5680            jsr        sprintf
[00019238] 504f                      addq.w     #8,a7
[0001923a] 204e                      movea.l    a6,a0
[0001923c] 4eb9 0001 65f6            jsr        save_string
[00019242] 43eb 057b                 lea.l      1403(a3),a1
[00019246] 206d 0004                 movea.l    4(a5),a0
[0001924a] 6100 ee66                 bsr        out_label
[0001924e] 41eb 0076                 lea.l      118(a3),a0
[00019252] 4eb9 0001 65f6            jsr        save_string
[00019258] 43eb 0079                 lea.l      121(a3),a1
[0001925c] 206d 0008                 movea.l    8(a5),a0
[00019260] 6100 ee50                 bsr        out_label
[00019264] 41eb 0076                 lea.l      118(a3),a0
[00019268] 4eb9 0001 65f6            jsr        save_string
[0001926e] 43eb 0079                 lea.l      121(a3),a1
[00019272] 206d 000c                 movea.l    12(a5),a0
[00019276] 6100 ee3a                 bsr        out_label
[0001927a] 41eb 0076                 lea.l      118(a3),a0
[0001927e] 4eb9 0001 65f6            jsr        save_string
[00019284] 43eb 0079                 lea.l      121(a3),a1
[00019288] 206d 0010                 movea.l    16(a5),a0
[0001928c] 6100 ee24                 bsr        out_label
[00019290] 41eb 0076                 lea.l      118(a3),a0
[00019294] 4eb9 0001 65f6            jsr        save_string
[0001929a] 43eb 0079                 lea.l      121(a3),a1
[0001929e] 206d 0014                 movea.l    20(a5),a0
[000192a2] 6100 ee0e                 bsr        out_label
[000192a6] 41eb 0076                 lea.l      118(a3),a0
[000192aa] 4eb9 0001 65f6            jsr        save_string
[000192b0] 43eb 0079                 lea.l      121(a3),a1
[000192b4] 206d 0018                 movea.l    24(a5),a0
[000192b8] 6100 edf8                 bsr        out_label
[000192bc] 41eb 0076                 lea.l      118(a3),a0
[000192c0] 4eb9 0001 65f6            jsr        save_string
[000192c6] 43eb 0079                 lea.l      121(a3),a1
[000192ca] 206d 001c                 movea.l    28(a5),a0
[000192ce] 6100 ede2                 bsr        out_label
[000192d2] 41eb 00c5                 lea.l      197(a3),a0
[000192d6] 4eb9 0001 65f6            jsr        save_string
[000192dc] 5244                      addq.w     #1,d4
out_user_2:
[000192de] b644                      cmp.w      d4,d3
[000192e0] 6e00 ff2a                 bgt        out_user_3
out_user_1:
[000192e4] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[000192e8] 4e75                      rts

out_window:
[000192ea] 48e7 183e                 movem.l    d3-d4/a2-a6,-(a7)
[000192ee] 2448                      movea.l    a0,a2
[000192f0] 262a 000e                 move.l     14(a2),d3
[000192f4] e48b                      lsr.l      #2,d3
[000192f6] 4a43                      tst.w      d3
[000192f8] 6f00 0320                 ble        out_window_1
[000192fc] 41ea 0016                 lea.l      22(a2),a0
[00019300] 6100 ed0c                 bsr        info_list
[00019304] 246a 0004                 movea.l    4(a2),a2
[00019308] 47f9 0009 9190            lea.l      $00099190,a3
[0001930e] 41eb 057e                 lea.l      1406(a3),a0
[00019312] 4eb9 0001 65f6            jsr        save_string
[00019318] 4244                      clr.w      d4
[0001931a] 4df9 000f b02a            lea.l      iostring,a6
[00019320] 6000 02f2                 bra        out_window_2
out_window_3:
[00019324] 3004                      move.w     d4,d0
[00019326] 48c0                      ext.l      d0
[00019328] e588                      lsl.l      #2,d0
[0001932a] 2872 0800                 movea.l    0(a2,d0.l),a4
[0001932e] 41ec 0016                 lea.l      22(a4),a0
[00019332] 6100 ed32                 bsr        info_obj
[00019336] 2a6c 0004                 movea.l    4(a4),a5
[0001933a] 486c 0016                 pea.l      22(a4)
[0001933e] 43eb 0596                 lea.l      1430(a3),a1
[00019342] 204e                      movea.l    a6,a0
[00019344] 4eb9 0007 5680            jsr        sprintf
[0001934a] 584f                      addq.w     #4,a7
[0001934c] 204e                      movea.l    a6,a0
[0001934e] 4eb9 0001 65f6            jsr        save_string
[00019354] 43eb 0079                 lea.l      121(a3),a1
[00019358] 2055                      movea.l    (a5),a0
[0001935a] 6100 ed56                 bsr        out_label
[0001935e] 41eb 005e                 lea.l      94(a3),a0
[00019362] 4eb9 0001 65f6            jsr        save_string
[00019368] 43eb 05ae                 lea.l      1454(a3),a1
[0001936c] 206d 0004                 movea.l    4(a5),a0
[00019370] 6100 ed40                 bsr        out_label
[00019374] 41eb 005e                 lea.l      94(a3),a0
[00019378] 4eb9 0001 65f6            jsr        save_string
[0001937e] 43eb 05ba                 lea.l      1466(a3),a1
[00019382] 206d 0008                 movea.l    8(a5),a0
[00019386] 6100 ed2a                 bsr        out_label
[0001938a] 41eb 005e                 lea.l      94(a3),a0
[0001938e] 4eb9 0001 65f6            jsr        save_string
[00019394] 43eb 05c9                 lea.l      1481(a3),a1
[00019398] 206d 000c                 movea.l    12(a5),a0
[0001939c] 6100 ed14                 bsr        out_label
[000193a0] 41eb 005e                 lea.l      94(a3),a0
[000193a4] 4eb9 0001 65f6            jsr        save_string
[000193aa] 43eb 05d2                 lea.l      1490(a3),a1
[000193ae] 206d 0010                 movea.l    16(a5),a0
[000193b2] 6100 ecfe                 bsr        out_label
[000193b6] 41eb 005e                 lea.l      94(a3),a0
[000193ba] 4eb9 0001 65f6            jsr        save_string
[000193c0] 43eb 0079                 lea.l      121(a3),a1
[000193c4] 206d 0014                 movea.l    20(a5),a0
[000193c8] 6100 ed26                 bsr        out_label2
[000193cc] 41eb 0076                 lea.l      118(a3),a0
[000193d0] 4eb9 0001 65f6            jsr        save_string
[000193d6] 43eb 0079                 lea.l      121(a3),a1
[000193da] 206d 0018                 movea.l    24(a5),a0
[000193de] 6100 ed10                 bsr        out_label2
[000193e2] 41eb 05db                 lea.l      1499(a3),a0
[000193e6] 4eb9 0001 65f6            jsr        save_string
[000193ec] 3f2d 002a                 move.w     42(a5),-(a7)
[000193f0] 3f2d 0028                 move.w     40(a5),-(a7)
[000193f4] 3f2d 0026                 move.w     38(a5),-(a7)
[000193f8] 3f2d 0024                 move.w     36(a5),-(a7)
[000193fc] 3f2d 0022                 move.w     34(a5),-(a7)
[00019400] 43eb 05eb                 lea.l      1515(a3),a1
[00019404] 204e                      movea.l    a6,a0
[00019406] 4eb9 0007 5680            jsr        sprintf
[0001940c] 4fef 000a                 lea.l      10(a7),a7
[00019410] 204e                      movea.l    a6,a0
[00019412] 4eb9 0001 65f6            jsr        save_string
[00019418] 41eb 060b                 lea.l      1547(a3),a0
[0001941c] 4eb9 0001 65f6            jsr        save_string
[00019422] 3f2d 0048                 move.w     72(a5),-(a7)
[00019426] 43eb 0643                 lea.l      1603(a3),a1
[0001942a] 204e                      movea.l    a6,a0
[0001942c] 4eb9 0007 5680            jsr        sprintf
[00019432] 544f                      addq.w     #2,a7
[00019434] 204e                      movea.l    a6,a0
[00019436] 4eb9 0001 65f6            jsr        save_string
[0001943c] 43eb 0079                 lea.l      121(a3),a1
[00019440] 206d 004a                 movea.l    74(a5),a0
[00019444] 6100 ec6c                 bsr        out_label
[00019448] 41eb 005e                 lea.l      94(a3),a0
[0001944c] 4eb9 0001 65f6            jsr        save_string
[00019452] 43eb 0079                 lea.l      121(a3),a1
[00019456] 206d 004e                 movea.l    78(a5),a0
[0001945a] 6100 ec56                 bsr        out_label
[0001945e] 41eb 005e                 lea.l      94(a3),a0
[00019462] 4eb9 0001 65f6            jsr        save_string
[00019468] 3f2d 0054                 move.w     84(a5),-(a7)
[0001946c] 3f2d 0052                 move.w     82(a5),-(a7)
[00019470] 43eb 064d                 lea.l      1613(a3),a1
[00019474] 204e                      movea.l    a6,a0
[00019476] 4eb9 0007 5680            jsr        sprintf
[0001947c] 584f                      addq.w     #4,a7
[0001947e] 204e                      movea.l    a6,a0
[00019480] 4eb9 0001 65f6            jsr        save_string
[00019486] 43eb 0079                 lea.l      121(a3),a1
[0001948a] 206d 005a                 movea.l    90(a5),a0
[0001948e] 6100 ec60                 bsr        out_label2
[00019492] 41eb 005e                 lea.l      94(a3),a0
[00019496] 4eb9 0001 65f6            jsr        save_string
[0001949c] 43eb 0079                 lea.l      121(a3),a1
[000194a0] 206d 005e                 movea.l    94(a5),a0
[000194a4] 6100 ec4a                 bsr        out_label2
[000194a8] 41eb 005e                 lea.l      94(a3),a0
[000194ac] 4eb9 0001 65f6            jsr        save_string
[000194b2] 43eb 0663                 lea.l      1635(a3),a1
[000194b6] 206d 0062                 movea.l    98(a5),a0
[000194ba] 6100 ebf6                 bsr        out_label
[000194be] 41eb 005e                 lea.l      94(a3),a0
[000194c2] 4eb9 0001 65f6            jsr        save_string
[000194c8] 43eb 066c                 lea.l      1644(a3),a1
[000194cc] 206d 0066                 movea.l    102(a5),a0
[000194d0] 6100 ebe0                 bsr        out_label
[000194d4] 41eb 005e                 lea.l      94(a3),a0
[000194d8] 4eb9 0001 65f6            jsr        save_string
[000194de] 43eb 0679                 lea.l      1657(a3),a1
[000194e2] 206d 006a                 movea.l    106(a5),a0
[000194e6] 6100 ebca                 bsr        out_label
[000194ea] 41eb 005e                 lea.l      94(a3),a0
[000194ee] 4eb9 0001 65f6            jsr        save_string
[000194f4] 43eb 0684                 lea.l      1668(a3),a1
[000194f8] 206d 006e                 movea.l    110(a5),a0
[000194fc] 6100 ebb4                 bsr        out_label
[00019500] 41eb 005e                 lea.l      94(a3),a0
[00019504] 4eb9 0001 65f6            jsr        save_string
[0001950a] 43eb 068f                 lea.l      1679(a3),a1
[0001950e] 206d 0072                 movea.l    114(a5),a0
[00019512] 6100 eb9e                 bsr        out_label
[00019516] 41eb 005e                 lea.l      94(a3),a0
[0001951a] 4eb9 0001 65f6            jsr        save_string
[00019520] 43eb 069a                 lea.l      1690(a3),a1
[00019524] 206d 0076                 movea.l    118(a5),a0
[00019528] 6100 eb88                 bsr        out_label
[0001952c] 41eb 005e                 lea.l      94(a3),a0
[00019530] 4eb9 0001 65f6            jsr        save_string
[00019536] 43eb 06a5                 lea.l      1701(a3),a1
[0001953a] 206d 007a                 movea.l    122(a5),a0
[0001953e] 6100 eb72                 bsr        out_label
[00019542] 41eb 005e                 lea.l      94(a3),a0
[00019546] 4eb9 0001 65f6            jsr        save_string
[0001954c] 43eb 06b1                 lea.l      1713(a3),a1
[00019550] 206d 007e                 movea.l    126(a5),a0
[00019554] 6100 eb5c                 bsr        out_label
[00019558] 41eb 005e                 lea.l      94(a3),a0
[0001955c] 4eb9 0001 65f6            jsr        save_string
[00019562] 43eb 06bb                 lea.l      1723(a3),a1
[00019566] 206d 0082                 movea.l    130(a5),a0
[0001956a] 6100 eb46                 bsr        out_label
[0001956e] 41eb 005e                 lea.l      94(a3),a0
[00019572] 4eb9 0001 65f6            jsr        save_string
[00019578] 43eb 06c5                 lea.l      1733(a3),a1
[0001957c] 206d 0086                 movea.l    134(a5),a0
[00019580] 6100 eb30                 bsr        out_label
[00019584] 41eb 005e                 lea.l      94(a3),a0
[00019588] 4eb9 0001 65f6            jsr        save_string
[0001958e] 43eb 06cf                 lea.l      1743(a3),a1
[00019592] 206d 008a                 movea.l    138(a5),a0
[00019596] 6100 eb1a                 bsr        out_label
[0001959a] 41eb 005e                 lea.l      94(a3),a0
[0001959e] 4eb9 0001 65f6            jsr        save_string
[000195a4] 43eb 06d9                 lea.l      1753(a3),a1
[000195a8] 206d 008e                 movea.l    142(a5),a0
[000195ac] 6100 eb04                 bsr        out_label
[000195b0] 41eb 005e                 lea.l      94(a3),a0
[000195b4] 4eb9 0001 65f6            jsr        save_string
[000195ba] 43eb 06e5                 lea.l      1765(a3),a1
[000195be] 206d 0092                 movea.l    146(a5),a0
[000195c2] 6100 eaee                 bsr        out_label
[000195c6] 41eb 005e                 lea.l      94(a3),a0
[000195ca] 4eb9 0001 65f6            jsr        save_string
[000195d0] 43eb 06f3                 lea.l      1779(a3),a1
[000195d4] 206d 0096                 movea.l    150(a5),a0
[000195d8] 6100 ead8                 bsr        out_label
[000195dc] 41eb 005e                 lea.l      94(a3),a0
[000195e0] 4eb9 0001 65f6            jsr        save_string
[000195e6] 43eb 0079                 lea.l      121(a3),a1
[000195ea] 206d 009a                 movea.l    154(a5),a0
[000195ee] 6100 eac2                 bsr        out_label
[000195f2] 41eb 005e                 lea.l      94(a3),a0
[000195f6] 4eb9 0001 65f6            jsr        save_string
[000195fc] 43eb 0079                 lea.l      121(a3),a1
[00019600] 206d 009e                 movea.l    158(a5),a0
[00019604] 6100 eaac                 bsr        out_label
[00019608] 41eb 0701                 lea.l      1793(a3),a0
[0001960c] 4eb9 0001 65f6            jsr        save_string
[00019612] 5244                      addq.w     #1,d4
out_window_2:
[00019614] b644                      cmp.w      d4,d3
[00019616] 6e00 fd0c                 bgt        out_window_3
out_window_1:
[0001961a] 4cdf 7c18                 movem.l    (a7)+,d3-d4/a2-a6
[0001961e] 4e75                      rts

out_refs:
[00019620] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00019624] 2068 003c                 movea.l    60(a0),a0
[00019628] 2628 000e                 move.l     14(a0),d3
[0001962c] e48b                      lsr.l      #2,d3
[0001962e] 4a43                      tst.w      d3
[00019630] 6f00 0082                 ble        out_refs_1
[00019634] 2468 0004                 movea.l    4(a0),a2
[00019638] 47f9 0009 9190            lea.l      $00099190,a3
[0001963e] 41eb 070d                 lea.l      1805(a3),a0
[00019642] 4eb9 0001 65f6            jsr        save_string
[00019648] 4244                      clr.w      d4
[0001964a] 4bf9 000f b02a            lea.l      iostring,a5
[00019650] 605e                      bra.s      out_refs_2
out_refs_5:
[00019652] 3004                      move.w     d4,d0
[00019654] 48c0                      ext.l      d0
[00019656] e588                      lsl.l      #2,d0
[00019658] 2872 0800                 movea.l    0(a2,d0.l),a4
[0001965c] 41ec 0016                 lea.l      22(a4),a0
[00019660] 6100 ea04                 bsr        info_obj
[00019664] 3a2c 0038                 move.w     56(a4),d5
[00019668] 202c 000e                 move.l     14(a4),d0
[0001966c] 6f0c                      ble.s      out_refs_3
[0001966e] 206c 0004                 movea.l    4(a4),a0
[00019672] 4eb9 0001 65f6            jsr        save_string
[00019678] 602a                      bra.s      out_refs_4
out_refs_3:
[0001967a] 3005                      move.w     d5,d0
[0001967c] c07c 00ff                 and.w      #$00FF,d0
[00019680] 6722                      beq.s      out_refs_4
[00019682] 3205                      move.w     d5,d1
[00019684] c27c 0200                 and.w      #$0200,d1
[00019688] 661a                      bne.s      out_refs_4
[0001968a] 486c 0016                 pea.l      22(a4)
[0001968e] 43eb 072d                 lea.l      1837(a3),a1
[00019692] 204d                      movea.l    a5,a0
[00019694] 4eb9 0007 5680            jsr        sprintf
[0001969a] 584f                      addq.w     #4,a7
[0001969c] 204d                      movea.l    a5,a0
[0001969e] 4eb9 0001 65f6            jsr        save_string
out_refs_4:
[000196a4] 41eb 0032                 lea.l      50(a3),a0
[000196a8] 4eb9 0001 65f6            jsr        save_string
[000196ae] 5244                      addq.w     #1,d4
out_refs_2:
[000196b0] b644                      cmp.w      d4,d3
[000196b2] 6e9e                      bgt.s      out_refs_5
out_refs_1:
[000196b4] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[000196b8] 4e75                      rts

out_declproto:
[000196ba] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[000196be] 2648                      movea.l    a0,a3
[000196c0] 246b 003c                 movea.l    60(a3),a2
[000196c4] 262a 000e                 move.l     14(a2),d3
[000196c8] e48b                      lsr.l      #2,d3
[000196ca] 4a43                      tst.w      d3
[000196cc] 6f00 028a                 ble        out_declproto_1
[000196d0] 206b 003c                 movea.l    60(a3),a0
[000196d4] 41e8 0016                 lea.l      22(a0),a0
[000196d8] 6100 e934                 bsr        info_list
[000196dc] 246a 0004                 movea.l    4(a2),a2
[000196e0] 47f9 0009 9190            lea.l      $00099190,a3
[000196e6] 41eb 0752                 lea.l      1874(a3),a0
[000196ea] 4eb9 0001 65f6            jsr        save_string
[000196f0] 4244                      clr.w      d4
[000196f2] 4bf9 000f b02a            lea.l      iostring,a5
[000196f8] 6000 024e                 bra        out_declproto_2
out_declproto_27:
[000196fc] 3004                      move.w     d4,d0
[000196fe] 48c0                      ext.l      d0
[00019700] e588                      lsl.l      #2,d0
[00019702] 2872 0800                 movea.l    0(a2,d0.l),a4
[00019706] 3a2c 0038                 move.w     56(a4),d5
[0001970a] 3205                      move.w     d5,d1
[0001970c] c27c 0700                 and.w      #$0700,d1
[00019710] 6708                      beq.s      out_declproto_3
[00019712] b27c 0500                 cmp.w      #$0500,d1
[00019716] 6600 022e                 bne        out_declproto_4
out_declproto_3:
[0001971a] 41ec 0016                 lea.l      22(a4),a0
[0001971e] 6100 e946                 bsr        info_obj
[00019722] 3005                      move.w     d5,d0
[00019724] c07c 00ff                 and.w      #$00FF,d0
[00019728] b07c 0025                 cmp.w      #$0025,d0
[0001972c] 6200 01f6                 bhi        out_declproto_5
[00019730] d040                      add.w      d0,d0
[00019732] 303b 0006                 move.w     $0001973A(pc,d0.w),d0
[00019736] 4efb 0002                 jmp        $0001973A(pc,d0.w)
J5:
[0001973a] 0154                      dc.w $0154   ; out_declproto_6-J5
[0001973c] 004c                      dc.w $004c   ; out_declproto_7-J5
[0001973e] 004c                      dc.w $004c   ; out_declproto_7-J5
[00019740] 0062                      dc.w $0062   ; out_declproto_8-J5
[00019742] 0078                      dc.w $0078   ; out_declproto_9-J5
[00019744] 01ea                      dc.w $01ea   ; out_declproto_5-J5
[00019746] 008e                      dc.w $008e   ; out_declproto_10-J5
[00019748] 00a4                      dc.w $00a4   ; out_declproto_11-J5
[0001974a] 008e                      dc.w $008e   ; out_declproto_10-J5
[0001974c] 00ba                      dc.w $00ba   ; out_declproto_12-J5
[0001974e] 00d0                      dc.w $00d0   ; out_declproto_13-J5
[00019750] 00e6                      dc.w $00e6   ; out_declproto_14-J5
[00019752] 00fc                      dc.w $00fc   ; out_declproto_15-J5
[00019754] 01ea                      dc.w $01ea   ; out_declproto_5-J5
[00019756] 00fc                      dc.w $00fc   ; out_declproto_15-J5
[00019758] 0112                      dc.w $0112   ; out_declproto_16-J5
[0001975a] 0128                      dc.w $0128   ; out_declproto_17-J5
[0001975c] 0128                      dc.w $0128   ; out_declproto_17-J5
[0001975e] 00e6                      dc.w $00e6   ; out_declproto_14-J5
[00019760] 00e6                      dc.w $00e6   ; out_declproto_14-J5
[00019762] 00fc                      dc.w $00fc   ; out_declproto_15-J5
[00019764] 013e                      dc.w $013e   ; out_declproto_18-J5
[00019766] 015a                      dc.w $015a   ; out_declproto_19-J5
[00019768] 008e                      dc.w $008e   ; out_declproto_10-J5
[0001976a] 0170                      dc.w $0170   ; out_declproto_20-J5
[0001976c] 0186                      dc.w $0186   ; out_declproto_21-J5
[0001976e] 0186                      dc.w $0186   ; out_declproto_21-J5
[00019770] 004c                      dc.w $004c   ; out_declproto_7-J5
[00019772] 004c                      dc.w $004c   ; out_declproto_7-J5
[00019774] 004c                      dc.w $004c   ; out_declproto_7-J5
[00019776] 019a                      dc.w $019a   ; out_declproto_22-J5
[00019778] 019a                      dc.w $019a   ; out_declproto_22-J5
[0001977a] 004c                      dc.w $004c   ; out_declproto_7-J5
[0001977c] 01c2                      dc.w $01c2   ; out_declproto_23-J5
[0001977e] 01ae                      dc.w $01ae   ; out_declproto_24-J5
[00019780] 004c                      dc.w $004c   ; out_declproto_7-J5
[00019782] 01c2                      dc.w $01c2   ; out_declproto_23-J5
[00019784] 01d6                      dc.w $01d6   ; out_declproto_25-J5
out_declproto_7:
[00019786] 486c 0016                 pea.l      22(a4)
[0001978a] 43eb 0774                 lea.l      1908(a3),a1
[0001978e] 204d                      movea.l    a5,a0
[00019790] 4eb9 0007 5680            jsr        sprintf
[00019796] 584f                      addq.w     #4,a7
[00019798] 6000 01a4                 bra        out_declproto_26
out_declproto_8:
[0001979c] 486c 0016                 pea.l      22(a4)
[000197a0] 43eb 078e                 lea.l      1934(a3),a1
[000197a4] 204d                      movea.l    a5,a0
[000197a6] 4eb9 0007 5680            jsr        sprintf
[000197ac] 584f                      addq.w     #4,a7
[000197ae] 6000 018e                 bra        out_declproto_26
out_declproto_9:
[000197b2] 486c 0016                 pea.l      22(a4)
[000197b6] 43eb 07b6                 lea.l      1974(a3),a1
[000197ba] 204d                      movea.l    a5,a0
[000197bc] 4eb9 0007 5680            jsr        sprintf
[000197c2] 584f                      addq.w     #4,a7
[000197c4] 6000 0178                 bra        out_declproto_26
out_declproto_10:
[000197c8] 486c 0016                 pea.l      22(a4)
[000197cc] 43eb 07f4                 lea.l      2036(a3),a1
[000197d0] 204d                      movea.l    a5,a0
[000197d2] 4eb9 0007 5680            jsr        sprintf
[000197d8] 584f                      addq.w     #4,a7
[000197da] 6000 0162                 bra        out_declproto_26
out_declproto_11:
[000197de] 486c 0016                 pea.l      22(a4)
[000197e2] 43eb 0818                 lea.l      2072(a3),a1
[000197e6] 204d                      movea.l    a5,a0
[000197e8] 4eb9 0007 5680            jsr        sprintf
[000197ee] 584f                      addq.w     #4,a7
[000197f0] 6000 014c                 bra        out_declproto_26
out_declproto_12:
[000197f4] 486c 0016                 pea.l      22(a4)
[000197f8] 43eb 083c                 lea.l      2108(a3),a1
[000197fc] 204d                      movea.l    a5,a0
[000197fe] 4eb9 0007 5680            jsr        sprintf
[00019804] 584f                      addq.w     #4,a7
[00019806] 6000 0136                 bra        out_declproto_26
out_declproto_13:
[0001980a] 486c 0016                 pea.l      22(a4)
[0001980e] 43eb 0879                 lea.l      2169(a3),a1
[00019812] 204d                      movea.l    a5,a0
[00019814] 4eb9 0007 5680            jsr        sprintf
[0001981a] 584f                      addq.w     #4,a7
[0001981c] 6000 0120                 bra        out_declproto_26
out_declproto_14:
[00019820] 486c 0016                 pea.l      22(a4)
[00019824] 43eb 08b5                 lea.l      2229(a3),a1
[00019828] 204d                      movea.l    a5,a0
[0001982a] 4eb9 0007 5680            jsr        sprintf
[00019830] 584f                      addq.w     #4,a7
[00019832] 6000 010a                 bra        out_declproto_26
out_declproto_15:
[00019836] 486c 0016                 pea.l      22(a4)
[0001983a] 43eb 08e5                 lea.l      2277(a3),a1
[0001983e] 204d                      movea.l    a5,a0
[00019840] 4eb9 0007 5680            jsr        sprintf
[00019846] 584f                      addq.w     #4,a7
[00019848] 6000 00f4                 bra        out_declproto_26
out_declproto_16:
[0001984c] 486c 0016                 pea.l      22(a4)
[00019850] 43eb 0908                 lea.l      2312(a3),a1
[00019854] 204d                      movea.l    a5,a0
[00019856] 4eb9 0007 5680            jsr        sprintf
[0001985c] 584f                      addq.w     #4,a7
[0001985e] 6000 00de                 bra        out_declproto_26
out_declproto_17:
[00019862] 486c 0016                 pea.l      22(a4)
[00019866] 43eb 0944                 lea.l      2372(a3),a1
[0001986a] 204d                      movea.l    a5,a0
[0001986c] 4eb9 0007 5680            jsr        sprintf
[00019872] 584f                      addq.w     #4,a7
[00019874] 6000 00c8                 bra        out_declproto_26
out_declproto_18:
[00019878] 486c 0016                 pea.l      22(a4)
[0001987c] 43eb 0972                 lea.l      2418(a3),a1
[00019880] 204d                      movea.l    a5,a0
[00019882] 4eb9 0007 5680            jsr        sprintf
[00019888] 584f                      addq.w     #4,a7
[0001988a] 6000 00b2                 bra        out_declproto_26
out_declproto_6:
[0001988e] 4215                      clr.b      (a5)
[00019890] 6000 00ac                 bra        out_declproto_26
out_declproto_19:
[00019894] 486c 0016                 pea.l      22(a4)
[00019898] 43eb 09b0                 lea.l      2480(a3),a1
[0001989c] 204d                      movea.l    a5,a0
[0001989e] 4eb9 0007 5680            jsr        sprintf
[000198a4] 584f                      addq.w     #4,a7
[000198a6] 6000 0096                 bra        out_declproto_26
out_declproto_20:
[000198aa] 486c 0016                 pea.l      22(a4)
[000198ae] 43eb 09df                 lea.l      2527(a3),a1
[000198b2] 204d                      movea.l    a5,a0
[000198b4] 4eb9 0007 5680            jsr        sprintf
[000198ba] 584f                      addq.w     #4,a7
[000198bc] 6000 0080                 bra        out_declproto_26
out_declproto_21:
[000198c0] 486c 0016                 pea.l      22(a4)
[000198c4] 43eb 0a31                 lea.l      2609(a3),a1
[000198c8] 204d                      movea.l    a5,a0
[000198ca] 4eb9 0007 5680            jsr        sprintf
[000198d0] 584f                      addq.w     #4,a7
[000198d2] 606a                      bra.s      out_declproto_26
out_declproto_22:
[000198d4] 486c 0016                 pea.l      22(a4)
[000198d8] 43eb 0a4c                 lea.l      2636(a3),a1
[000198dc] 204d                      movea.l    a5,a0
[000198de] 4eb9 0007 5680            jsr        sprintf
[000198e4] 584f                      addq.w     #4,a7
[000198e6] 6056                      bra.s      out_declproto_26
out_declproto_24:
[000198e8] 486c 0016                 pea.l      22(a4)
[000198ec] 43eb 0a71                 lea.l      2673(a3),a1
[000198f0] 204d                      movea.l    a5,a0
[000198f2] 4eb9 0007 5680            jsr        sprintf
[000198f8] 584f                      addq.w     #4,a7
[000198fa] 6042                      bra.s      out_declproto_26
out_declproto_23:
[000198fc] 486c 0016                 pea.l      22(a4)
[00019900] 43eb 0aa4                 lea.l      2724(a3),a1
[00019904] 204d                      movea.l    a5,a0
[00019906] 4eb9 0007 5680            jsr        sprintf
[0001990c] 584f                      addq.w     #4,a7
[0001990e] 602e                      bra.s      out_declproto_26
out_declproto_25:
[00019910] 486c 0016                 pea.l      22(a4)
[00019914] 43eb 0ad3                 lea.l      2771(a3),a1
[00019918] 204d                      movea.l    a5,a0
[0001991a] 4eb9 0007 5680            jsr        sprintf
[00019920] 584f                      addq.w     #4,a7
[00019922] 601a                      bra.s      out_declproto_26
out_declproto_5:
[00019924] 3005                      move.w     d5,d0
[00019926] c07c 00ff                 and.w      #$00FF,d0
[0001992a] 3f00                      move.w     d0,-(a7)
[0001992c] 486c 0016                 pea.l      22(a4)
[00019930] 43eb 0b15                 lea.l      2837(a3),a1
[00019934] 204d                      movea.l    a5,a0
[00019936] 4eb9 0007 5680            jsr        sprintf
[0001993c] 5c4f                      addq.w     #6,a7
out_declproto_26:
[0001993e] 204d                      movea.l    a5,a0
[00019940] 4eb9 0001 65f6            jsr        save_string
out_declproto_4:
[00019946] 5244                      addq.w     #1,d4
out_declproto_2:
[00019948] b644                      cmp.w      d4,d3
[0001994a] 6e00 fdb0                 bgt        out_declproto_27
[0001994e] 41eb 0199                 lea.l      409(a3),a0
[00019952] 4eb9 0001 65f6            jsr        save_string
out_declproto_1:
[00019958] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[0001995c] 4e75                      rts

pc_output:
[0001995e] 48e7 1c3c                 movem.l    d3-d5/a2-a5,-(a7)
[00019962] 4fef ff78                 lea.l      -136(a7),a7
[00019966] 2448                      movea.l    a0,a2
[00019968] 705c                      moveq.l    #92,d0
[0001996a] 206a 0008                 movea.l    8(a2),a0
[0001996e] 4eb9 0007 68e2            jsr        strrchr
[00019974] 5248                      addq.w     #1,a0
[00019976] 2e88                      move.l     a0,(a7)
[00019978] 49ef 0004                 lea.l      4(a7),a4
[0001997c] 226a 0008                 movea.l    8(a2),a1
[00019980] 204c                      movea.l    a4,a0
[00019982] 4eb9 0007 6950            jsr        strcpy
[00019988] 702e                      moveq.l    #46,d0
[0001998a] 204c                      movea.l    a4,a0
[0001998c] 4eb9 0007 68e2            jsr        strrchr
[00019992] 2648                      movea.l    a0,a3
[00019994] 4bf9 0009 9190            lea.l      $00099190,a5
[0001999a] 43ed 0b2b                 lea.l      2859(a5),a1
[0001999e] 204b                      movea.l    a3,a0
[000199a0] 4eb9 0007 6950            jsr        strcpy
[000199a6] 4240                      clr.w      d0
[000199a8] 204c                      movea.l    a4,a0
[000199aa] 4eb9 0007 29be            jsr        Fcreate
[000199b0] 2600                      move.l     d0,d3
[000199b2] 4a80                      tst.l      d0
[000199b4] 6a14                      bpl.s      pc_output_1
[000199b6] 2057                      movea.l    (a7),a0
[000199b8] 2279 0010 1f12            movea.l    ACSblk,a1
[000199be] 2269 03d6                 movea.l    982(a1),a1
[000199c2] 7009                      moveq.l    #9,d0
[000199c4] 4e91                      jsr        (a1)
[000199c6] 6000 030a                 bra        pc_output_2
pc_output_1:
[000199ca] 204c                      movea.l    a4,a0
[000199cc] 6100 e4f8                 bsr        info_start
[000199d0] 41ed 0b2f                 lea.l      2863(a5),a0
[000199d4] 6100 e5d4                 bsr        info_title
[000199d8] 3003                      move.w     d3,d0
[000199da] 4eb9 0001 653e            jsr        set_handle
[000199e0] 4eb9 0007 5162            jsr        setjmp
[000199e6] 4a40                      tst.w      d0
[000199e8] 6714                      beq.s      pc_output_3
[000199ea] 91c8                      suba.l     a0,a0
[000199ec] 700a                      moveq.l    #10,d0
[000199ee] 2279 0010 1f12            movea.l    ACSblk,a1
[000199f4] 2269 03d6                 movea.l    982(a1),a1
[000199f8] 4e91                      jsr        (a1)
[000199fa] 6000 02ca                 bra        pc_output_4
pc_output_3:
[000199fe] 91c8                      suba.l     a0,a0
[00019a00] 4eb9 0007 539e            jsr        time
[00019a06] 2f40 0084                 move.l     d0,132(a7)
[00019a0a] 47f9 000f b02a            lea.l      iostring,a3
[00019a10] 2f2a 0008                 move.l     8(a2),-(a7)
[00019a14] 41ef 0088                 lea.l      136(a7),a0
[00019a18] 4eb9 0007 531e            jsr        ctime
[00019a1e] 2f08                      move.l     a0,-(a7)
[00019a20] 43f9 0009 82c6            lea.l      pc_welcome,a1
[00019a26] 204b                      movea.l    a3,a0
[00019a28] 4eb9 0007 5680            jsr        sprintf
[00019a2e] 504f                      addq.w     #8,a7
[00019a30] 204b                      movea.l    a3,a0
[00019a32] 4eb9 0001 65f6            jsr        save_string
[00019a38] 41ed 0b3b                 lea.l      2875(a5),a0
[00019a3c] 4eb9 0001 65f6            jsr        save_string
[00019a42] 4244                      clr.w      d4
[00019a44] 603c                      bra.s      pc_output_5
pc_output_8:
[00019a46] 7a01                      moveq.l    #1,d5
[00019a48] da44                      add.w      d4,d5
[00019a4a] 602e                      bra.s      pc_output_6
pc_output_7:
[00019a4c] 7001                      moveq.l    #1,d0
[00019a4e] d045                      add.w      d5,d0
[00019a50] 3f00                      move.w     d0,-(a7)
[00019a52] 7201                      moveq.l    #1,d1
[00019a54] d244                      add.w      d4,d1
[00019a56] 3f01                      move.w     d1,-(a7)
[00019a58] 43ed 0b54                 lea.l      2900(a5),a1
[00019a5c] 204b                      movea.l    a3,a0
[00019a5e] 4eb9 0007 5680            jsr        sprintf
[00019a64] 584f                      addq.w     #4,a7
[00019a66] 204b                      movea.l    a3,a0
[00019a68] 4eb9 0001 65f6            jsr        save_string
[00019a6e] 41ed 0b85                 lea.l      2949(a5),a0
[00019a72] 4eb9 0001 65f6            jsr        save_string
[00019a78] 5245                      addq.w     #1,d5
pc_output_6:
[00019a7a] ba7c 0003                 cmp.w      #$0003,d5
[00019a7e] 6fcc                      ble.s      pc_output_7
[00019a80] 5244                      addq.w     #1,d4
pc_output_5:
[00019a82] b87c 0003                 cmp.w      #$0003,d4
[00019a86] 6fbe                      ble.s      pc_output_8
[00019a88] 41ed 0032                 lea.l      50(a5),a0
[00019a8c] 4eb9 0001 65f6            jsr        save_string
[00019a92] 41ed 0bc0                 lea.l      3008(a5),a0
[00019a96] 4eb9 0001 65f6            jsr        save_string
[00019a9c] 4245                      clr.w      d5
[00019a9e] 6038                      bra.s      pc_output_9
pc_output_12:
[00019aa0] 4a45                      tst.w      d5
[00019aa2] 6616                      bne.s      pc_output_10
[00019aa4] 7001                      moveq.l    #1,d0
[00019aa6] d045                      add.w      d5,d0
[00019aa8] 3f00                      move.w     d0,-(a7)
[00019aaa] 43ed 0bc5                 lea.l      3013(a5),a1
[00019aae] 204b                      movea.l    a3,a0
[00019ab0] 4eb9 0007 5680            jsr        sprintf
[00019ab6] 544f                      addq.w     #2,a7
[00019ab8] 6014                      bra.s      pc_output_11
pc_output_10:
[00019aba] 7001                      moveq.l    #1,d0
[00019abc] d045                      add.w      d5,d0
[00019abe] 3f00                      move.w     d0,-(a7)
[00019ac0] 43ed 0bda                 lea.l      3034(a5),a1
[00019ac4] 204b                      movea.l    a3,a0
[00019ac6] 4eb9 0007 5680            jsr        sprintf
[00019acc] 544f                      addq.w     #2,a7
pc_output_11:
[00019ace] 204b                      movea.l    a3,a0
[00019ad0] 4eb9 0001 65f6            jsr        save_string
[00019ad6] 5245                      addq.w     #1,d5
pc_output_9:
[00019ad8] ba7c 0003                 cmp.w      #$0003,d5
[00019adc] 6fc2                      ble.s      pc_output_12
[00019ade] 7001                      moveq.l    #1,d0
[00019ae0] d06a 01f4                 add.w      500(a2),d0
[00019ae4] 3f00                      move.w     d0,-(a7)
[00019ae6] 43ed 0bf3                 lea.l      3059(a5),a1
[00019aea] 204b                      movea.l    a3,a0
[00019aec] 4eb9 0007 5680            jsr        sprintf
[00019af2] 544f                      addq.w     #2,a7
[00019af4] 204b                      movea.l    a3,a0
[00019af6] 4eb9 0001 65f6            jsr        save_string
[00019afc] 204a                      movea.l    a2,a0
[00019afe] 6100 fbba                 bsr        out_declproto
[00019b02] 41ed 0c13                 lea.l      3091(a5),a0
[00019b06] 4eb9 0001 65f6            jsr        save_string
[00019b0c] 41ed 0c2f                 lea.l      3119(a5),a0
[00019b10] 4eb9 0001 65f6            jsr        save_string
[00019b16] 4245                      clr.w      d5
[00019b18] 6000 007c                 bra.w      pc_output_13
pc_output_18:
[00019b1c] ba6a 01f4                 cmp.w      500(a2),d5
[00019b20] 6c1c                      bge.s      pc_output_14
[00019b22] 42a7                      clr.l      -(a7)
[00019b24] 226a 0024                 movea.l    36(a2),a1
[00019b28] 3005                      move.w     d5,d0
[00019b2a] 48c0                      ext.l      d0
[00019b2c] e588                      lsl.l      #2,d0
[00019b2e] 41f2 0800                 lea.l      0(a2,d0.l),a0
[00019b32] 2068 0202                 movea.l    514(a0),a0
[00019b36] 6100 f420                 bsr        out_string
[00019b3a] 584f                      addq.w     #4,a7
[00019b3c] 6032                      bra.s      pc_output_15
pc_output_14:
[00019b3e] ba6a 01f4                 cmp.w      500(a2),d5
[00019b42] 6612                      bne.s      pc_output_16
[00019b44] 42a7                      clr.l      -(a7)
[00019b46] 226a 0024                 movea.l    36(a2),a1
[00019b4a] 206a 0024                 movea.l    36(a2),a0
[00019b4e] 6100 f408                 bsr        out_string
[00019b52] 584f                      addq.w     #4,a7
[00019b54] 601a                      bra.s      pc_output_15
pc_output_16:
[00019b56] 42a7                      clr.l      -(a7)
[00019b58] 226a 0024                 movea.l    36(a2),a1
[00019b5c] 3005                      move.w     d5,d0
[00019b5e] 48c0                      ext.l      d0
[00019b60] e588                      lsl.l      #2,d0
[00019b62] 41f2 0800                 lea.l      0(a2,d0.l),a0
[00019b66] 2068 01fe                 movea.l    510(a0),a0
[00019b6a] 6100 f3ec                 bsr        out_string
[00019b6e] 584f                      addq.w     #4,a7
pc_output_15:
[00019b70] ba7c 0003                 cmp.w      #$0003,d5
[00019b74] 6c1e                      bge.s      pc_output_17
[00019b76] 7002                      moveq.l    #2,d0
[00019b78] d045                      add.w      d5,d0
[00019b7a] 3f00                      move.w     d0,-(a7)
[00019b7c] 3f00                      move.w     d0,-(a7)
[00019b7e] 43ed 0c68                 lea.l      3176(a5),a1
[00019b82] 204b                      movea.l    a3,a0
[00019b84] 4eb9 0007 5680            jsr        sprintf
[00019b8a] 584f                      addq.w     #4,a7
[00019b8c] 204b                      movea.l    a3,a0
[00019b8e] 4eb9 0001 65f6            jsr        save_string
pc_output_17:
[00019b94] 5245                      addq.w     #1,d5
pc_output_13:
[00019b96] ba7c 0003                 cmp.w      #$0003,d5
[00019b9a] 6f00 ff80                 ble.w      pc_output_18
[00019b9e] 41ed 0ca5                 lea.l      3237(a5),a0
[00019ba2] 4eb9 0001 65f6            jsr        save_string
[00019ba8] 41ed 0ce5                 lea.l      3301(a5),a0
[00019bac] 4eb9 0001 65f6            jsr        save_string
[00019bb2] 41ed 0cfd                 lea.l      3325(a5),a0
[00019bb6] 4eb9 0001 65f6            jsr        save_string
[00019bbc] 4245                      clr.w      d5
[00019bbe] 6000 007c                 bra.w      pc_output_19
pc_output_24:
[00019bc2] ba6a 01f4                 cmp.w      500(a2),d5
[00019bc6] 6c1c                      bge.s      pc_output_20
[00019bc8] 42a7                      clr.l      -(a7)
[00019bca] 226a 0034                 movea.l    52(a2),a1
[00019bce] 3005                      move.w     d5,d0
[00019bd0] 48c0                      ext.l      d0
[00019bd2] e588                      lsl.l      #2,d0
[00019bd4] 41f2 0800                 lea.l      0(a2,d0.l),a0
[00019bd8] 2068 01f6                 movea.l    502(a0),a0
[00019bdc] 6100 f37a                 bsr        out_string
[00019be0] 584f                      addq.w     #4,a7
[00019be2] 6032                      bra.s      pc_output_21
pc_output_20:
[00019be4] ba6a 01f4                 cmp.w      500(a2),d5
[00019be8] 6612                      bne.s      pc_output_22
[00019bea] 42a7                      clr.l      -(a7)
[00019bec] 226a 0034                 movea.l    52(a2),a1
[00019bf0] 206a 0034                 movea.l    52(a2),a0
[00019bf4] 6100 f362                 bsr        out_string
[00019bf8] 584f                      addq.w     #4,a7
[00019bfa] 601a                      bra.s      pc_output_21
pc_output_22:
[00019bfc] 42a7                      clr.l      -(a7)
[00019bfe] 226a 0034                 movea.l    52(a2),a1
[00019c02] 3005                      move.w     d5,d0
[00019c04] 48c0                      ext.l      d0
[00019c06] e588                      lsl.l      #2,d0
[00019c08] 41f2 0800                 lea.l      0(a2,d0.l),a0
[00019c0c] 2068 01f2                 movea.l    498(a0),a0
[00019c10] 6100 f346                 bsr        out_string
[00019c14] 584f                      addq.w     #4,a7
pc_output_21:
[00019c16] ba7c 0003                 cmp.w      #$0003,d5
[00019c1a] 6c1e                      bge.s      pc_output_23
[00019c1c] 7002                      moveq.l    #2,d0
[00019c1e] d045                      add.w      d5,d0
[00019c20] 3f00                      move.w     d0,-(a7)
[00019c22] 3f00                      move.w     d0,-(a7)
[00019c24] 43ed 0d38                 lea.l      3384(a5),a1
[00019c28] 204b                      movea.l    a3,a0
[00019c2a] 4eb9 0007 5680            jsr        sprintf
[00019c30] 584f                      addq.w     #4,a7
[00019c32] 204b                      movea.l    a3,a0
[00019c34] 4eb9 0001 65f6            jsr        save_string
pc_output_23:
[00019c3a] 5245                      addq.w     #1,d5
pc_output_19:
[00019c3c] ba7c 0003                 cmp.w      #$0003,d5
[00019c40] 6f00 ff80                 ble.w      pc_output_24
[00019c44] 41ed 0ca5                 lea.l      3237(a5),a0
[00019c48] 4eb9 0001 65f6            jsr        save_string
[00019c4e] 206a 0044                 movea.l    68(a2),a0
[00019c52] 6100 f20c                 bsr        out_data
[00019c56] 206a 0028                 movea.l    40(a2),a0
[00019c5a] 6100 f4c6                 bsr        out_tedi
[00019c5e] 206a 0038                 movea.l    56(a2),a0
[00019c62] 6100 f56e                 bsr        out_user
[00019c66] 206a 002c                 movea.l    44(a2),a0
[00019c6a] 6100 e9a0                 bsr        out_icon
[00019c6e] 206a 0030                 movea.l    48(a2),a0
[00019c72] 6100 ecf8                 bsr        out_image
[00019c76] 43ed 0d76                 lea.l      3446(a5),a1
[00019c7a] 206a 001c                 movea.l    28(a2),a0
[00019c7e] 6100 ee26                 bsr        out_obj
[00019c82] 43ed 0d91                 lea.l      3473(a5),a1
[00019c86] 206a 0020                 movea.l    32(a2),a0
[00019c8a] 6100 ee1a                 bsr        out_obj
[00019c8e] 43ed 0dad                 lea.l      3501(a5),a1
[00019c92] 206a 0018                 movea.l    24(a2),a0
[00019c96] 6100 ee0e                 bsr        out_obj
[00019c9a] 206a 0014                 movea.l    20(a2),a0
[00019c9e] 6100 f64a                 bsr        out_window
[00019ca2] 206a 0040                 movea.l    64(a2),a0
[00019ca6] 6100 eb7c                 bsr        out_mouse
[00019caa] 204a                      movea.l    a2,a0
[00019cac] 6100 e4be                 bsr        out_acs
[00019cb0] 302a 0006                 move.w     6(a2),d0
[00019cb4] c07c 2000                 and.w      #$2000,d0
[00019cb8] 6706                      beq.s      pc_output_25
[00019cba] 204a                      movea.l    a2,a0
[00019cbc] 6100 f962                 bsr        out_refs
pc_output_25:
[00019cc0] 4eb9 0001 660a            jsr        close_buf
pc_output_4:
[00019cc6] 6100 e2c2                 bsr        info_end
[00019cca] 3003                      move.w     d3,d0
[00019ccc] 4eb9 0007 29ae            jsr        Fclose
pc_output_2:
[00019cd2] 4fef 0088                 lea.l      136(a7),a7
[00019cd6] 4cdf 3c38                 movem.l    (a7)+,d3-d5/a2-a5
[00019cda] 4e75                      rts

	.data

xacc_types:
[00099166]                           dc.b $00
[00099167]                           dc.b $00
[00099168]                           dc.b $00
[00099169]                           dc.b $57
[0009916a]                           dc.w $5000
[0009916c]                           dc.w $4454
[0009916e]                           dc.b $00
[0009916f]                           dc.b $45
[00099170]                           dc.w $4400
[00099172]                           dc.w $4442
[00099174]                           dc.b $00
[00099175]                           dc.b $53
[00099176]                           dc.w $5300
[00099178]                           dc.w $5247
[0009917a]                           dc.b $00
[0009917b]                           dc.b $56
[0009917c]                           dc.w $4700
[0009917e]                           dc.w $4747
[00099180]                           dc.b $00
[00099181]                           dc.b $4d
[00099182]                           dc.w $5500
[00099184]                           dc.w $4344
[00099186]                           dc.b $00
[00099187]                           dc.b $44
[00099188]                           dc.w $4300
[0009918a]                           dc.w $4454
[0009918c]                           dc.b $00
[0009918d]                           dc.b $50
[0009918e]                           dc.w $4500
[00099190]                           dc.b $00
[00099191]                           dc.b '%-12s',0
[00099197]                           dc.b '&%-12s',0
[0009919e]                           dc.b '&%-12s[3]',0
[000991a8]                           dc.b $0d,$0a,$0d,$0a,'Adescr ACSdescr =',0
[000991be]                           dc.b $0d,$0a,$09,'{',$0d,$0a,0
[000991c5]                           dc.b $09,$09,'"%s", %d,',$0d,$0a,$09,$09,'%2d, %2d,',$0d,$0a,$09,$09,'%#4x,',$0d,$0a,$09,$09,'"%s",',$0d,$0a,$09,$09,0
[000991f4]                           dc.b 'ACS3.00',0
[000991fc]                           dc.b '&PUR_DESK',0
[00099206]                           dc.w $2c20
[00099208]                           dc.b $00
[00099209]                           dc.b 'NULL',0
[0009920e]                           dc.b ',',$0d,$0a,$09,$09,'{',$0d,$0a,0
[00099217]                           dc.b ',',$0d,$0a,0
[0009921b]                           dc.b $09,$09,$09,'{%3d, NULL}',0
[0009922a]                           dc.b $09,$09,$09,'{255, &%s}',0
[00099238]                           dc.b $0d,$0a,$09,$09,'},',$0d,$0a,0
[00099241]                           dc.b 'ACS(%02d)',0
[0009924b]                           dc.b $09,$09,'"%s"',0
[00099252]                           dc.w $2c00
[00099254]                           dc.b $09,'};',$0d,$0a,0
[0009925a]                           dc.b $0d,$0a,$0d,$0a,' Aconfig ACSconfig =',0
[00099273]                           dc.b $0d,$0a,$09,'{',$0d,$0a,$09,$09,0
[0009927c]                           dc.w $7b22
[0009927e]                           dc.b $00
[0009927f]                           dc.b '", "',0
[00099284]                           dc.w $253b
[00099286]                           dc.b $00
[00099287]                           dc.b '", ',0
[0009928b]                           dc.b 'TRUE, ',0
[00099292]                           dc.b 'FALSE, ',0
[0009929a]                           dc.b '%i},',$0d,$0a,$09,$09,0
[000992a3]                           dc.b '4},',$0d,$0a,$09,$09,0
[000992ab]                           dc.b ', ',$0d,$0a,$09,$09,0
[000992b2]                           dc.b '%i, ',0
[000992b7]                           dc.b $27,'%s',$27,', ',0
[000992be]                           dc.b '0, ',0
[000992c2]                           dc.b 'ACSinit',0
[000992ca]                           dc.b $0d,$0a,$09,'};',$0d,$0a,0
[000992d2]                           dc.b 'static CICON _C%d_%-s = {',$0d,$0a,$09,$09,'%d,',$0d,$0a,$09,$09,0
[000992f7]                           dc.b ',',$0d,$0a,$09,$09,'&_C%d_%-s};',$0d,$0a,0
[0009930a]                           dc.b ',',$0d,$0a,$09,$09,'NULL};',$0d,$0a,0
[00099318]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ICONS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[0009932e]                           dc.b 'static int16 _MSK_%-s [] = {',$0d,$0a,$09,$09,0
[0009934f]                           dc.b '%#06x, ',0
[00099357]                           dc.b '%#06x};',$0d,$0a,'static int16 _DAT_%-s [] = {',$0d,$0a,$09,$09,0
[00099381]                           dc.b '%#06x};',$0d,$0a,0
[0009938b]                           dc.b '       ',0
[00099393]                           dc.b 'static ',0
[0009939b]                           dc.b 'CICONBLK %-s = {{',$0d,$0a,$09,$09,'_MSK_%-s, _DAT_%-s, %-s,',$0d,$0a,$09,$09,'%#6x, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d},',0
[00099405]                           dc.b '&_C%d_%-s',0
[0009940f]                           dc.b '};',$0d,$0a,$0d,$0a,0
[00099416]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'MOUSEFORMS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099431]                           dc.b 'MFORM %-s =',$0d,$0a,$09,$09,'{',$0d,$0a,$09,$09,$09,'%2d, %2d, %2d, %2d, %2d,',$0d,$0a,$09,$09,$09,'{',$0d,$0a,$09,$09,$09,$09,0
[0009946b]                           dc.b '%#06x',$0d,$0a,$09,$09,$09,'},',$0d,$0a,$09,$09,$09,'{',$0d,$0a,$09,$09,$09,$09,0
[00099484]                           dc.b '%#06x',$0d,$0a,$09,$09,$09,'}',$0d,$0a,$09,$09,'};',$0d,$0a,$0d,$0a,$0d,$0a,0
[0009949c]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'IMAGES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[000994b3]                           dc.b 'static int16 _IMG_%-s [] =',$0d,$0a,$09,'{',$0d,$0a,$09,$09,0
[000994d6]                           dc.b '%#06x',$0d,$0a,$09,'};',$0d,$0a,0
[000994e3]                           dc.b 'BITBLK %-s = {_IMG_%-s, %2d, %2d, %2d, %2d, %#04x};',$0d,$0a,$0d,$0a,0
[0009951b]                           dc.b '#define %-14s (%3d)',$0d,$0a,0
[00099531]                           dc.b 'OBJECT  %-12s    ',0
[00099543]                           dc.b 'static OBJECT  _%02d_%-12s',0
[0009955e]                           dc.b ' = { %2d, %2d, %2d, %2d, %#6x, %#6x, ',0
[00099584]                           dc.b ' %#010lxL',$09,$09,$09,$09,0
[00099592]                           dc.b '(long) %-12s',0
[0009959f]                           dc.b '(long) &%-12s',0
[000995ad]                           dc.b ' , %2d, %2d, %2d, %2d };',$0d,$0a,0
[000995c8]                           dc.b 'static AOBJECT _%02da%-12s = {',0
[000995e7]                           dc.b 'NULL',$09,$09,' ',0
[000995ef]                           dc.b 'NULL',$09,$09,$09,$09,0
[000995f8]                           dc.b '0',$09,$09,$09,$09,$09,0
[000995ff]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'DATAS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099615]                           dc.b 'int16 %-12s [] =',$0d,$0a,$09,'{',$0d,$0a,$09,$09,$09,0
[0009962f]                           dc.b '%#06x',$0d,$0a,$09,'};',$0d,$0a,$0d,$0a,0
[0009963e]                           dc.b 'ACS(',0
[00099643]                           dc.b 'char ',0
[00099649]                           dc.b ' [] = "',0
[00099651]                           dc.b $5c
[00099652]                           dc.w $6e00
[00099654]                           dc.w $5c72
[00099656]                           dc.b $00
[00099657]                           dc.b $5c
[00099658]                           dc.w $7400
[0009965a]                           dc.w $5c76
[0009965c]                           dc.b $00
[0009965d]                           dc.b $5c
[0009965e]                           dc.w $6200
[00099660]                           dc.w $5c61
[00099662]                           dc.b $00
[00099663]                           dc.b $5c
[00099664]                           dc.w $6600
[00099666]                           dc.w $5c22
[00099668]                           dc.b $00
[00099669]                           dc.b $5c
[0009966a]                           dc.w $5c00
[0009966c]                           dc.b '";',$0d,$0a,0
[00099671]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'TEDINFOS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[0009968a]                           dc.b 'static TEDINFO %-12s = {%s, %s, %s, %d, %d, %d, %#x, %d, %d, %ld, %ld};',$0d,$0a,0
[000996d4]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'AUSERBLK',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[000996ed]                           dc.b 'static AUSERBLK %-12s = {%s, ',0
[0009970b]                           dc.b $30
[0009970c]                           dc.w $4c00
[0009970e]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'WINDOWS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099726]                           dc.b 'Awindow %-12s =',$0d,$0a,$09,'{',$0d,$0a,$09,$09,0
[0009973e]                           dc.b 'Awi_service',0
[0009974a]                           dc.b 'Awi_selfcreate',0
[00099759]                           dc.b 'Awi_open',0
[00099762]                           dc.b 'Awi_init',0
[0009976b]                           dc.b ', 0, 0, -1,',$0d,$0a,$09,$09,0
[0009977b]                           dc.b '%#6x, {%2i, %2i, %2i, %2i},',$0d,$0a,$09,$09,0
[0009979b]                           dc.b '{0, 0, 0, 0}, {0, 0, 0, 0}, {-1, -1, -1, -1}, 0, 0,',$0d,$0a,$09,$09,0
[000997d3]                           dc.b '%#6x,',$0d,$0a,$09,$09,0
[000997dd]                           dc.b '%4d, %#6x, 0, -1,',$0d,$0a,$09,$09,0
[000997f3]                           dc.b 'Awi_keys',0
[000997fc]                           dc.b 'Awi_obchange',0
[00099809]                           dc.b 'Awi_redraw',0
[00099814]                           dc.b 'Awi_topped',0
[0009981f]                           dc.b 'Awi_closed',0
[0009982a]                           dc.b 'Awi_fulled',0
[00099835]                           dc.b 'Awi_arrowed',0
[00099841]                           dc.b 'Awi_hslid',0
[0009984b]                           dc.b 'Awi_vslid',0
[00099855]                           dc.b 'Awi_sized',0
[0009985f]                           dc.b 'Awi_moved',0
[00099869]                           dc.b 'Awi_iconify',0
[00099875]                           dc.b 'Awi_uniconify',0
[00099883]                           dc.b 'Awi_gemscript',0
[00099891]                           dc.b $0d,$0a,$09,'};',$0d,$0a,$0d,$0a,$0d,$0a,0
[0009989d]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ANSI-C Routines',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[000998bd]                           dc.b '/* ',$27,'%s',$27,' Not yet defined by user */',$0d,$0a,0
[000998e2]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ANSI-C Prototypes',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099904]                           dc.b 'static void %s( void );',$0d,$0a,0
[0009991e]                           dc.b 'static int16 CDECL %s( PARMBLK* pb );',$0d,$0a,0
[00099946]                           dc.b 'static int16 %s( OBJECT *entry, int16 task, void *in_out );',$0d,$0a,0
[00099984]                           dc.b 'static int16 %s( Awindow* wind );',$0d,$0a,0
[000999a8]                           dc.b 'static Awindow *%s( void *para );',$0d,$0a,0
[000999cc]                           dc.b 'static int16 %s( Awindow *wind, int16 kstate, int16 key );',$0d,$0a,0
[00099a09]                           dc.b 'static void %s( Awindow *wind, int16 obnr, int16 state );',$0d,$0a,0
[00099a45]                           dc.b 'static void %s( Awindow *wind, Axywh *area );',$0d,$0a,0
[00099a75]                           dc.b 'static void %s( Awindow *wind );',$0d,$0a,0
[00099a98]                           dc.b 'static void %s( Awindow *wind, int16 pos, int16 amount );',$0d,$0a,0
[00099ad4]                           dc.b 'static void %s( Awindow *wind, int16 pos );',$0d,$0a,0
[00099b02]                           dc.b 'static int16 %s( Awindow *wind, int16 task, void *in_out );',$0d,$0a,0
[00099b40]                           dc.b 'static int16 %s( Awindow *wind, int16 all );',$0d,$0a,0
[00099b6f]                           dc.b 'static int16 %s( Awindow *wind, int16 anz, char **cmds, A_GSAntwort *antwort );',$0d,$0a,0
[00099bc1]                           dc.b 'static int16 %s( void );',$0d,$0a,0
[00099bdc]                           dc.b 'static int16 %s( int16 *message );',$0d,$0a,0
[00099c01]                           dc.b 'static void %s( int16 *button, int16 *kreturn );',$0d,$0a,0
[00099c34]                           dc.b 'static void %s( int16 *kstate, int16 *key );',$0d,$0a,0
[00099c63]                           dc.b 'static int16 %s( int16 anz, char **cmd, A_GSAntwort *antwort );',$0d,$0a,0
[00099ca5]                           dc.b '/* %s Type %d ?? */',$0d,$0a,0
[00099cbb]                           dc.b '.AH',0
[00099cbf]                           dc.b 'ANSI C Code',0
[00099ccb]                           dc.b $0d,$0a,'/*',$09,$09,'GUI-LANGUAGE',$09,$09,'*/',$0d,$0a,0
[00099ce4]                           dc.b '#if defined(ACS_LANG%d) && defined(ACS_LANG%d)',$0d,$0a,0
[00099d15]                           dc.b $09,'#error "More than one language macros defined!"',$0d,$0a,'#endif',$0d,$0a,0
[00099d50]                           dc.b '#if ',0
[00099d55]                           dc.b '!defined(ACS_LANG%d)',0
[00099d6a]                           dc.b ' && !defined(ACS_LANG%d)',0
[00099d83]                           dc.b $0d,$0a,$09,'#define ACS_LANG%d',$0d,$0a,'#endif',$0d,$0a,0
[00099da3]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'ALERT BOXES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099dbf]                           dc.b $0d,$0a,'#if defined(ACS_LANG1)',$09,$09,$09,'/*',$09,$09,'Alerts: ACS_LANG1',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099df8]                           dc.b $0d,$0a,'#elif defined(ACS_LANG%d)',$09,$09,$09,'/*',$09,$09,'Alerts: ACS_LANG%d',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099e35]                           dc.b $0d,$0a,'#else',$0d,$0a,$0d,$0a,$09,'#error "Wrong Language Macro defined"',$0d,$0a,$0d,$0a,'#endif',$0d,$0a,$0d,$0a,0
[00099e75]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'STRINGS',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099e8d]                           dc.b $0d,$0a,'#if defined(ACS_LANG1)',$09,$09,$09,$09,'/*',$09,$09,'Strings: ACS_LANG1',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099ec8]                           dc.b $0d,$0a,'#elif defined(ACS_LANG%d)',$09,$09,$09,'/*',$09,$09,'Strings: ACS_LANG%d',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099f06]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'MENU TREES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099f21]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'POPUP TREES',$09,$09,'*/',$0d,$0a,$0d,$0a,0
[00099f3d]                           dc.b $0d,$0a,$0d,$0a,'/*',$09,$09,'OBJECT TREES',$09,$09,'*/',$0d,$0a,$0d,$0a,0


	.bss

info_xywh: ds.w 4
info_bp: ds.l 1
work: ds.l 1
mapX: ds.w 1000
