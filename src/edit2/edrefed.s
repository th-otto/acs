
editref_abort:
[0001bb22] 2079 0010 1f12            movea.l    ACSblk,a0
[0001bb28] 2068 0258                 movea.l    600(a0),a0
[0001bb2c] 4eb9 0001 be7c            jsr        term
[0001bb32] 4e75                      rts

editref_ok:
[0001bb34] 2079 0010 1f12            movea.l    ACSblk,a0
[0001bb3a] 2068 0258                 movea.l    600(a0),a0
[0001bb3e] 4eb9 0001 bb56            jsr        acc_eref
[0001bb44] 2079 0010 1f12            movea.l    ACSblk,a0
[0001bb4a] 2068 0258                 movea.l    600(a0),a0
[0001bb4e] 4eb9 0001 be7c            jsr        term
[0001bb54] 4e75                      rts

acc_eref:
[0001bb56] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001bb5a] 4fef fff4                 lea.l      -12(a7),a7
[0001bb5e] 2250                      movea.l    (a0),a1
[0001bb60] 2451                      movea.l    (a1),a2
[0001bb62] 006a 0001 0006            ori.w      #$0001,6(a2)
[0001bb68] 2468 0014                 movea.l    20(a0),a2
[0001bb6c] 45ea 0150                 lea.l      336(a2),a2
[0001bb70] 2f4a 0004                 move.l     a2,4(a7)
[0001bb74] 2669 0004                 movea.l    4(a1),a3
[0001bb78] 302b 0038                 move.w     56(a3),d0
[0001bb7c] 3200                      move.w     d0,d1
[0001bb7e] c27c fd00                 and.w      #$FD00,d1
[0001bb82] 343c 00ff                 move.w     #$00FF,d2
[0001bb86] c46a 000e                 and.w      14(a2),d2
[0001bb8a] 8242                      or.w       d2,d1
[0001bb8c] 3741 0038                 move.w     d1,56(a3)
[0001bb90] 7001                      moveq.l    #1,d0
[0001bb92] 2468 0014                 movea.l    20(a0),a2
[0001bb96] c06a 0052                 and.w      82(a2),d0
[0001bb9a] 6706                      beq.s      acc_eref_1
[0001bb9c] 006b 0200 0038            ori.w      #$0200,56(a3)
acc_eref_1:
[0001bba2] 2469 0008                 movea.l    8(a1),a2
[0001bba6] 200a                      move.l     a2,d0
[0001bba8] 6700 007c                 beq.w      acc_eref_2
[0001bbac] 43ef 0008                 lea.l      8(a7),a1
[0001bbb0] 204a                      movea.l    a2,a0
[0001bbb2] 286a 0004                 movea.l    4(a2),a4
[0001bbb6] 303c 00cf                 move.w     #$00CF,d0
[0001bbba] 4e94                      jsr        (a4)
[0001bbbc] 202f 0008                 move.l     8(a7),d0
[0001bbc0] 6f4c                      ble.s      acc_eref_3
[0001bbc2] 7001                      moveq.l    #1,d0
[0001bbc4] d0af 0008                 add.l      8(a7),d0
[0001bbc8] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001bbce] 2e88                      move.l     a0,(a7)
[0001bbd0] 2008                      move.l     a0,d0
[0001bbd2] 6752                      beq.s      acc_eref_2
[0001bbd4] 206b 0004                 movea.l    4(a3),a0
[0001bbd8] 4eb9 0004 7d6c            jsr        Ax_ifree
[0001bbde] 2257                      movea.l    (a7),a1
[0001bbe0] 303c 00ce                 move.w     #$00CE,d0
[0001bbe4] 204a                      movea.l    a2,a0
[0001bbe6] 286a 0004                 movea.l    4(a2),a4
[0001bbea] 4e94                      jsr        (a4)
[0001bbec] 2757 0004                 move.l     (a7),4(a3)
[0001bbf0] 7001                      moveq.l    #1,d0
[0001bbf2] d0af 0008                 add.l      8(a7),d0
[0001bbf6] 2740 000e                 move.l     d0,14(a3)
[0001bbfa] 2740 000a                 move.l     d0,10(a3)
[0001bbfe] 93c9                      suba.l     a1,a1
[0001bc00] 204a                      movea.l    a2,a0
[0001bc02] 286a 0004                 movea.l    4(a2),a4
[0001bc06] 303c 00d3                 move.w     #$00D3,d0
[0001bc0a] 4e94                      jsr        (a4)
[0001bc0c] 6018                      bra.s      acc_eref_2
acc_eref_3:
[0001bc0e] 206b 0004                 movea.l    4(a3),a0
[0001bc12] 4eb9 0004 7d6c            jsr        Ax_ifree
[0001bc18] 42ab 0004                 clr.l      4(a3)
[0001bc1c] 7000                      moveq.l    #0,d0
[0001bc1e] 2740 000e                 move.l     d0,14(a3)
[0001bc22] 2740 000a                 move.l     d0,10(a3)
acc_eref_2:
[0001bc26] 4fef 000c                 lea.l      12(a7),a7
[0001bc2a] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001bc2e] 4e75                      rts

rf_make:
[0001bc30] 48e7 0038                 movem.l    a2-a4,-(a7)
[0001bc34] 594f                      subq.w     #4,a7
[0001bc36] 2e88                      move.l     a0,(a7)
[0001bc38] 2668 0004                 movea.l    4(a0),a3
[0001bc3c] 286b 0012                 movea.l    18(a3),a4
[0001bc40] 200c                      move.l     a4,d0
[0001bc42] 670c                      beq.s      rf_make_1
[0001bc44] 204c                      movea.l    a4,a0
[0001bc46] 4eb9 0004 f0ca            jsr        Awi_show
[0001bc4c] 6000 00a6                 bra        rf_make_2
rf_make_1:
[0001bc50] 700c                      moveq.l    #12,d0
[0001bc52] 4eb9 0004 7cc8            jsr        Ax_malloc
[0001bc58] 2448                      movea.l    a0,a2
[0001bc5a] 200a                      move.l     a2,d0
[0001bc5c] 6700 0092                 beq        rf_make_3
[0001bc60] 2257                      movea.l    (a7),a1
[0001bc62] 2091                      move.l     (a1),(a0)
[0001bc64] 2569 0004 0004            move.l     4(a1),4(a2)
[0001bc6a] 42aa 0008                 clr.l      8(a2)
[0001bc6e] 41eb 0016                 lea.l      22(a3),a0
[0001bc72] 23c8 0009 ea8c            move.l     a0,$0009EA8C
[0001bc78] 2279 0009 ea98            movea.l    $0009EA98,a1
[0001bc7e] 2348 0008                 move.l     a0,8(a1)
[0001bc82] 41f9 0009 ea3e            lea.l      WI_REF,a0
[0001bc88] 4eb9 0004 f41a            jsr        Awi_create
[0001bc8e] 2848                      movea.l    a0,a4
[0001bc90] 200c                      move.l     a4,d0
[0001bc92] 660a                      bne.s      rf_make_4
[0001bc94] 204a                      movea.l    a2,a0
[0001bc96] 4eb9 0004 7e26            jsr        Ax_free
[0001bc9c] 6052                      bra.s      rf_make_3
rf_make_4:
[0001bc9e] 2057                      movea.l    (a7),a0
[0001bca0] 2250                      movea.l    (a0),a1
[0001bca2] 4869 0168                 pea.l      360(a1)
[0001bca6] 43eb 003a                 lea.l      58(a3),a1
[0001bcaa] 204c                      movea.l    a4,a0
[0001bcac] 4eb9 0001 47a8            jsr        wi_pos
[0001bcb2] 584f                      addq.w     #4,a7
[0001bcb4] 288a                      move.l     a2,(a4)
[0001bcb6] 274c 0012                 move.l     a4,18(a3)
[0001bcba] 204c                      movea.l    a4,a0
[0001bcbc] 4eb9 0001 be1e            jsr        set_eref
[0001bcc2] 202b 000e                 move.l     14(a3),d0
[0001bcc6] 6f14                      ble.s      rf_make_5
[0001bcc8] 322b 0038                 move.w     56(a3),d1
[0001bccc] c27c 0200                 and.w      #$0200,d1
[0001bcd0] 660a                      bne.s      rf_make_5
[0001bcd2] 204c                      movea.l    a4,a0
[0001bcd4] 4eb9 0001 bf18            jsr        ref_edit
[0001bcda] 6018                      bra.s      rf_make_2
rf_make_5:
[0001bcdc] 204c                      movea.l    a4,a0
[0001bcde] 226c 000c                 movea.l    12(a4),a1
[0001bce2] 4e91                      jsr        (a1)
[0001bce4] 4a40                      tst.w      d0
[0001bce6] 670c                      beq.s      rf_make_2
[0001bce8] 204c                      movea.l    a4,a0
[0001bcea] 4eb9 0001 be7c            jsr        term
rf_make_3:
[0001bcf0] 91c8                      suba.l     a0,a0
[0001bcf2] 6002                      bra.s      rf_make_6
rf_make_2:
[0001bcf4] 204c                      movea.l    a4,a0
rf_make_6:
[0001bcf6] 584f                      addq.w     #4,a7
[0001bcf8] 4cdf 1c00                 movem.l    (a7)+,a2-a4
[0001bcfc] 4e75                      rts

rf_service:
[0001bcfe] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0001bd02] 2448                      movea.l    a0,a2
[0001bd04] 3600                      move.w     d0,d3
[0001bd06] 2849                      movea.l    a1,a4
[0001bd08] 2650                      movea.l    (a0),a3
[0001bd0a] 5540                      subq.w     #2,d0
[0001bd0c] 6712                      beq.s      rf_service_1
[0001bd0e] 907c 00cf                 sub.w      #$00CF,d0
[0001bd12] 6712                      beq.s      rf_service_2
[0001bd14] 5340                      subq.w     #1,d0
[0001bd16] 6708                      beq.s      rf_service_1
[0001bd18] 907c 263e                 sub.w      #$263E,d0
[0001bd1c] 6712                      beq.s      rf_service_3
[0001bd1e] 601e                      bra.s      rf_service_4
rf_service_1:
[0001bd20] 204a                      movea.l    a2,a0
[0001bd22] 6100 fe32                 bsr        acc_eref
rf_service_2:
[0001bd26] 204a                      movea.l    a2,a0
[0001bd28] 4eb9 0001 be7c            jsr        term
[0001bd2e] 601c                      bra.s      rf_service_5
rf_service_3:
[0001bd30] 226b 0004                 movea.l    4(a3),a1
[0001bd34] 204a                      movea.l    a2,a0
[0001bd36] 4eb9 0001 45a2            jsr        new_name
[0001bd3c] 600e                      bra.s      rf_service_5
rf_service_4:
[0001bd3e] 224c                      movea.l    a4,a1
[0001bd40] 3003                      move.w     d3,d0
[0001bd42] 204a                      movea.l    a2,a0
[0001bd44] 4eb9 0005 1276            jsr        Awi_service
[0001bd4a] 6002                      bra.s      rf_service_6
rf_service_5:
[0001bd4c] 7001                      moveq.l    #1,d0
rf_service_6:
[0001bd4e] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001bd52] 4e75                      rts

set_type:
[0001bd54] 48e7 1038                 movem.l    d3/a2-a4,-(a7)
[0001bd58] 4fef ffce                 lea.l      -50(a7),a7
[0001bd5c] 2848                      movea.l    a0,a4
[0001bd5e] 2449                      movea.l    a1,a2
[0001bd60] 3600                      move.w     d0,d3
[0001bd62] 43d7                      lea.l      (a7),a1
[0001bd64] 204a                      movea.l    a2,a0
[0001bd66] 4eb9 0004 b154            jsr        Aob_gettext
[0001bd6c] 47d7                      lea.l      (a7),a3
[0001bd6e] 6002                      bra.s      set_type_1
set_type_2:
[0001bd70] 524b                      addq.w     #1,a3
set_type_1:
[0001bd72] 0c13 0020                 cmpi.b     #$20,(a3)
[0001bd76] 67f8                      beq.s      set_type_2
[0001bd78] 224b                      movea.l    a3,a1
[0001bd7a] 700d                      moveq.l    #13,d0
[0001bd7c] 204c                      movea.l    a4,a0
[0001bd7e] 4eb9 0004 afe0            jsr        Aob_puttext
[0001bd84] 49ec 0150                 lea.l      336(a4),a4
[0001bd88] 3203                      move.w     d3,d1
[0001bd8a] 48c1                      ext.l      d1
[0001bd8c] 2001                      move.l     d1,d0
[0001bd8e] d080                      add.l      d0,d0
[0001bd90] d081                      add.l      d1,d0
[0001bd92] e788                      lsl.l      #3,d0
[0001bd94] 41f2 0818                 lea.l      24(a2,d0.l),a0
[0001bd98] 2968 000c 000c            move.l     12(a0),12(a4)
[0001bd9e] 4fef 0032                 lea.l      50(a7),a7
[0001bda2] 4cdf 1c08                 movem.l    (a7)+,d3/a2-a4
[0001bda6] 4e75                      rts

editref_choose:
[0001bda8] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0001bdac] 45f9 0009 dd36            lea.l      REF_TYPE,a2
[0001bdb2] 47f9 0010 1f12            lea.l      ACSblk,a3
[0001bdb8] 72ff                      moveq.l    #-1,d1
[0001bdba] 70ff                      moveq.l    #-1,d0
[0001bdbc] 224a                      movea.l    a2,a1
[0001bdbe] 2053                      movea.l    (a3),a0
[0001bdc0] 2068 0258                 movea.l    600(a0),a0
[0001bdc4] 4eb9 0004 948a            jsr        Ame_popup
[0001bdca] 3600                      move.w     d0,d3
[0001bdcc] 4a40                      tst.w      d0
[0001bdce] 6b48                      bmi.s      editref_choose_1
[0001bdd0] 48c0                      ext.l      d0
[0001bdd2] 2200                      move.l     d0,d1
[0001bdd4] d281                      add.l      d1,d1
[0001bdd6] d280                      add.l      d0,d1
[0001bdd8] e789                      lsl.l      #3,d1
[0001bdda] 41f2 1818                 lea.l      24(a2,d1.l),a0
[0001bdde] b67c 0001                 cmp.w      #$0001,d3
[0001bde2] 6710                      beq.s      editref_choose_2
[0001bde4] 3428 0008                 move.w     8(a0),d2
[0001bde8] c47c 8000                 and.w      #$8000,d2
[0001bdec] 672a                      beq.s      editref_choose_1
[0001bdee] 3228 000e                 move.w     14(a0),d1
[0001bdf2] 6724                      beq.s      editref_choose_1
editref_choose_2:
[0001bdf4] 3003                      move.w     d3,d0
[0001bdf6] 224a                      movea.l    a2,a1
[0001bdf8] 2053                      movea.l    (a3),a0
[0001bdfa] 2068 025c                 movea.l    604(a0),a0
[0001bdfe] 6100 ff54                 bsr        set_type
[0001be02] 72ff                      moveq.l    #-1,d1
[0001be04] 700d                      moveq.l    #13,d0
[0001be06] 2053                      movea.l    (a3),a0
[0001be08] 2068 0258                 movea.l    600(a0),a0
[0001be0c] 2253                      movea.l    (a3),a1
[0001be0e] 2469 0258                 movea.l    600(a1),a2
[0001be12] 226a 0066                 movea.l    102(a2),a1
[0001be16] 4e91                      jsr        (a1)
editref_choose_1:
[0001be18] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0001be1c] 4e75                      rts

set_eref:
[0001be1e] 48e7 1030                 movem.l    d3/a2-a3,-(a7)
[0001be22] 2448                      movea.l    a0,a2
[0001be24] 2650                      movea.l    (a0),a3
[0001be26] 226b 0004                 movea.l    4(a3),a1
[0001be2a] 3629 0038                 move.w     56(a1),d3
[0001be2e] c67c 00ff                 and.w      #$00FF,d3
[0001be32] 4a43                      tst.w      d3
[0001be34] 6b08                      bmi.s      set_eref_1
[0001be36] b679 0009 eb2c            cmp.w      cross_type_anz,d3
[0001be3c] 6d02                      blt.s      set_eref_2
set_eref_1:
[0001be3e] 4243                      clr.w      d3
set_eref_2:
[0001be40] 3203                      move.w     d3,d1
[0001be42] d241                      add.w      d1,d1
[0001be44] 41f9 0009 eae0            lea.l      cross_type,a0
[0001be4a] 3030 1000                 move.w     0(a0,d1.w),d0
[0001be4e] 43f9 0009 dd36            lea.l      REF_TYPE,a1
[0001be54] 206a 0014                 movea.l    20(a2),a0
[0001be58] 6100 fefa                 bsr        set_type
[0001be5c] 206a 0014                 movea.l    20(a2),a0
[0001be60] 41e8 0048                 lea.l      72(a0),a0
[0001be64] 226b 0004                 movea.l    4(a3),a1
[0001be68] 3029 0038                 move.w     56(a1),d0
[0001be6c] c07c 0200                 and.w      #$0200,d0
[0001be70] 4eb9 0001 3f6e            jsr        set_flag
[0001be76] 4cdf 0c08                 movem.l    (a7)+,d3/a2-a3
[0001be7a] 4e75                      rts

term:
[0001be7c] 48e7 003c                 movem.l    a2-a5,-(a7)
[0001be80] 2448                      movea.l    a0,a2
[0001be82] 302a 0056                 move.w     86(a2),d0
[0001be86] c07c 0200                 and.w      #$0200,d0
[0001be8a] 6600 0086                 bne        term_1
[0001be8e] 006a 0300 0056            ori.w      #$0300,86(a2)
[0001be94] 2650                      movea.l    (a0),a3
[0001be96] 286b 0008                 movea.l    8(a3),a4
[0001be9a] 200c                      move.l     a4,d0
[0001be9c] 6728                      beq.s      term_2
[0001be9e] 93c9                      suba.l     a1,a1
[0001bea0] 2a6c 0004                 movea.l    4(a4),a5
[0001bea4] 204c                      movea.l    a4,a0
[0001bea6] 303c 00d3                 move.w     #$00D3,d0
[0001beaa] 4e95                      jsr        (a5)
[0001beac] 93c9                      suba.l     a1,a1
[0001beae] 303c 00d0                 move.w     #$00D0,d0
[0001beb2] 204c                      movea.l    a4,a0
[0001beb4] 2a6c 0004                 movea.l    4(a4),a5
[0001beb8] 4e95                      jsr        (a5)
[0001beba] 93c9                      suba.l     a1,a1
[0001bebc] 7002                      moveq.l    #2,d0
[0001bebe] 204c                      movea.l    a4,a0
[0001bec0] 2a6c 0004                 movea.l    4(a4),a5
[0001bec4] 4e95                      jsr        (a5)
term_2:
[0001bec6] 206b 0004                 movea.l    4(a3),a0
[0001beca] 42a8 0012                 clr.l      18(a0)
[0001bece] 302a 0056                 move.w     86(a2),d0
[0001bed2] c07c 0800                 and.w      #$0800,d0
[0001bed6] 6716                      beq.s      term_3
[0001bed8] 43ea 002c                 lea.l      44(a2),a1
[0001bedc] 206b 0004                 movea.l    4(a3),a0
[0001bee0] 41e8 003a                 lea.l      58(a0),a0
[0001bee4] 7008                      moveq.l    #8,d0
[0001bee6] 4eb9 0007 6f44            jsr        memcpy
[0001beec] 6014                      bra.s      term_4
term_3:
[0001beee] 7008                      moveq.l    #8,d0
[0001bef0] 43ea 0024                 lea.l      36(a2),a1
[0001bef4] 206b 0004                 movea.l    4(a3),a0
[0001bef8] 41e8 003a                 lea.l      58(a0),a0
[0001befc] 4eb9 0007 6f44            jsr        memcpy
term_4:
[0001bf02] 204b                      movea.l    a3,a0
[0001bf04] 4eb9 0004 7e26            jsr        Ax_free
[0001bf0a] 204a                      movea.l    a2,a0
[0001bf0c] 4eb9 0005 0330            jsr        Awi_delete
term_1:
[0001bf12] 4cdf 3c00                 movem.l    (a7)+,a2-a5
[0001bf16] 4e75                      rts

ref_edit:
[0001bf18] 48e7 103e                 movem.l    d3/a2-a6,-(a7)
[0001bf1c] 4fef fbb4                 lea.l      -1100(a7),a7
[0001bf20] 2f48 0448                 move.l     a0,1096(a7)
[0001bf24] 2450                      movea.l    (a0),a2
[0001bf26] 266a 0008                 movea.l    8(a2),a3
[0001bf2a] 200b                      move.l     a3,d0
[0001bf2c] 6600 017c                 bne        ref_edit_1
[0001bf30] 286a 0004                 movea.l    4(a2),a4
[0001bf34] 43ec 0016                 lea.l      22(a4),a1
[0001bf38] 2f49 0440                 move.l     a1,1088(a7)
[0001bf3c] 2279 000c 70be            movea.l    $000C70BE,a1
[0001bf42] 91c8                      suba.l     a0,a0
[0001bf44] 4e91                      jsr        (a1)
[0001bf46] 2648                      movea.l    a0,a3
[0001bf48] 2548 0008                 move.l     a0,8(a2)
[0001bf4c] 226f 0448                 movea.l    1096(a7),a1
[0001bf50] 303c 00d0                 move.w     #$00D0,d0
[0001bf54] 2a6b 0004                 movea.l    4(a3),a5
[0001bf58] 204b                      movea.l    a3,a0
[0001bf5a] 4e95                      jsr        (a5)
[0001bf5c] 4bef 0400                 lea.l      1024(a7),a5
[0001bf60] 43f9 000a 070b            lea.l      $000A070B,a1
[0001bf66] 2f09                      move.l     a1,-(a7)
[0001bf68] 43f9 000a 0709            lea.l      $000A0709,a1
[0001bf6e] 204d                      movea.l    a5,a0
[0001bf70] 4eb9 0007 6950            jsr        strcpy
[0001bf76] 226f 0444                 movea.l    1092(a7),a1
[0001bf7a] 4eb9 0007 6886            jsr        strcat
[0001bf80] 225f                      movea.l    (a7)+,a1
[0001bf82] 4eb9 0007 6886            jsr        strcat
[0001bf88] 224d                      movea.l    a5,a1
[0001bf8a] 303c 00cb                 move.w     #$00CB,d0
[0001bf8e] 204b                      movea.l    a3,a0
[0001bf90] 2c6b 0004                 movea.l    4(a3),a6
[0001bf94] 4e96                      jsr        (a6)
[0001bf96] 43f9 000a 070b            lea.l      $000A070B,a1
[0001bf9c] 2f09                      move.l     a1,-(a7)
[0001bf9e] 43f9 000a 0713            lea.l      $000A0713,a1
[0001bfa4] 204d                      movea.l    a5,a0
[0001bfa6] 4eb9 0007 6950            jsr        strcpy
[0001bfac] 226f 0444                 movea.l    1092(a7),a1
[0001bfb0] 4eb9 0007 6886            jsr        strcat
[0001bfb6] 225f                      movea.l    (a7)+,a1
[0001bfb8] 4eb9 0007 6886            jsr        strcat
[0001bfbe] 224d                      movea.l    a5,a1
[0001bfc0] 303c 00cc                 move.w     #$00CC,d0
[0001bfc4] 204b                      movea.l    a3,a0
[0001bfc6] 2c6b 0004                 movea.l    4(a3),a6
[0001bfca] 4e96                      jsr        (a6)
[0001bfcc] 226f 0440                 movea.l    1088(a7),a1
[0001bfd0] 303c 00d5                 move.w     #$00D5,d0
[0001bfd4] 204b                      movea.l    a3,a0
[0001bfd6] 2a6b 0004                 movea.l    4(a3),a5
[0001bfda] 4e95                      jsr        (a5)
[0001bfdc] 43f9 000a 0717            lea.l      $000A0717,a1
[0001bfe2] 303c 00c9                 move.w     #$00C9,d0
[0001bfe6] 204b                      movea.l    a3,a0
[0001bfe8] 2a6b 0004                 movea.l    4(a3),a5
[0001bfec] 4e95                      jsr        (a5)
[0001bfee] 202c 000e                 move.l     14(a4),d0
[0001bff2] 6f14                      ble.s      ref_edit_2
[0001bff4] 226c 0004                 movea.l    4(a4),a1
[0001bff8] 204b                      movea.l    a3,a0
[0001bffa] 2a6b 0004                 movea.l    4(a3),a5
[0001bffe] 303c 00cd                 move.w     #$00CD,d0
[0001c002] 4e95                      jsr        (a5)
[0001c004] 6000 0088                 bra        ref_edit_3
ref_edit_2:
[0001c008] 2052                      movea.l    (a2),a0
[0001c00a] 3028 020e                 move.w     526(a0),d0
[0001c00e] 4a40                      tst.w      d0
[0001c010] 6706                      beq.s      ref_edit_4
[0001c012] 5340                      subq.w     #1,d0
[0001c014] 672a                      beq.s      ref_edit_5
[0001c016] 602e                      bra.s      ref_edit_6
ref_edit_4:
[0001c018] 302c 0038                 move.w     56(a4),d0
[0001c01c] c07c 0500                 and.w      #$0500,d0
[0001c020] b07c 0100                 cmp.w      #$0100,d0
[0001c024] 6712                      beq.s      ref_edit_7
[0001c026] 43f9 000a 0719            lea.l      $000A0719,a1
[0001c02c] 204b                      movea.l    a3,a0
[0001c02e] 246b 0004                 movea.l    4(a3),a2
[0001c032] 303c 00cd                 move.w     #$00CD,d0
[0001c036] 4e92                      jsr        (a2)
ref_edit_7:
[0001c038] 4bf9 0009 ebbe            lea.l      c_type,a5
[0001c03e] 6006                      bra.s      ref_edit_6
ref_edit_5:
[0001c040] 4bf9 0009 eb2e            lea.l      p_type,a5
ref_edit_6:
[0001c046] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c04c] 2268 025c                 movea.l    604(a0),a1
[0001c050] 43e9 0150                 lea.l      336(a1),a1
[0001c054] 2f49 0444                 move.l     a1,1092(a7)
[0001c058] 3629 000e                 move.w     14(a1),d3
[0001c05c] 486c 0016                 pea.l      22(a4)
[0001c060] 486c 0016                 pea.l      22(a4)
[0001c064] 486c 0016                 pea.l      22(a4)
[0001c068] 3003                      move.w     d3,d0
[0001c06a] 48c0                      ext.l      d0
[0001c06c] e588                      lsl.l      #2,d0
[0001c06e] 2275 0800                 movea.l    0(a5,d0.l),a1
[0001c072] 41ef 000c                 lea.l      12(a7),a0
[0001c076] 4eb9 0007 5680            jsr        sprintf
[0001c07c] 4fef 000c                 lea.l      12(a7),a7
[0001c080] 43d7                      lea.l      (a7),a1
[0001c082] 303c 00cd                 move.w     #$00CD,d0
[0001c086] 204b                      movea.l    a3,a0
[0001c088] 246b 0004                 movea.l    4(a3),a2
[0001c08c] 4e92                      jsr        (a2)
ref_edit_3:
[0001c08e] 93c9                      suba.l     a1,a1
[0001c090] 303c 00d4                 move.w     #$00D4,d0
[0001c094] 204b                      movea.l    a3,a0
[0001c096] 246b 0004                 movea.l    4(a3),a2
[0001c09a] 4e92                      jsr        (a2)
[0001c09c] 93c9                      suba.l     a1,a1
[0001c09e] 303c 00d3                 move.w     #$00D3,d0
[0001c0a2] 204b                      movea.l    a3,a0
[0001c0a4] 246b 0004                 movea.l    4(a3),a2
[0001c0a8] 4e92                      jsr        (a2)
ref_edit_1:
[0001c0aa] 204b                      movea.l    a3,a0
[0001c0ac] 4eb9 0004 f0ca            jsr        Awi_show
[0001c0b2] 4fef 044c                 lea.l      1100(a7),a7
[0001c0b6] 4cdf 7c08                 movem.l    (a7)+,d3/a2-a6
[0001c0ba] 4e75                      rts

editref_edit:
[0001c0bc] 2079 0010 1f12            movea.l    ACSblk,a0
[0001c0c2] 2068 0258                 movea.l    600(a0),a0
[0001c0c6] 6100 fe50                 bsr        ref_edit
[0001c0ca] 4e75                      rts

	.data
BUBBLE_01:
[0009d066]                           dc.b 'Die énderungen werden Åbernommen.',0
BUBBLE_02:
[0009d088]                           dc.b 'Die énderungen werden verworfen.',0
BUBBLE_03:
[0009d0a9]                           dc.b 'Der Editor wird aufgerufen, um die Routine zu bearbeiten.',0
BUBBLE_04:
[0009d0e3]                           dc.b 'Die Routine wird extern definiert, also u.U. in einem anderen Modul.',0
BUBBLE_05:
[0009d128]                           dc.b 'In diesem Popup wird der Typ der Routine angegeben.',0
TEXT_002:
[0009d15c]                           dc.b $00
TEXT_003:
[0009d15d]                           dc.b $4f
[0009d15e]                           dc.w $4b00
TEXT_004:
[0009d160]                           dc.b 'Abbruch',0
TEXT_01:
[0009d168]                           dc.b ' Closed',0
TEXT_02:
[0009d170]                           dc.b 'Typ:',0
TEXT_03:
[0009d175]                           dc.b 'GEMScript',0
TEXT_04:
[0009d17f]                           dc.b '  Iconify',0
TEXT_05:
[0009d189]                           dc.b ' Fulled',0
TEXT_06:
[0009d191]                           dc.b ' Arrowed',0
TEXT_07:
[0009d19a]                           dc.b ' Hslid',0
TEXT_08:
[0009d1a1]                           dc.b ' Vslid',0
TEXT_09:
[0009d1a8]                           dc.b ' Moved',0
TEXT_10:
[0009d1af]                           dc.b ' Sized',0
TEXT_11:
[0009d1b6]                           dc.b ' Referenz-Editor ',0
TEXT_12:
[0009d1c8]                           dc.b '  Uniconify',0
TEXT_13:
[0009d1d4]                           dc.b '  GEMScript',0
TEXT_14:
[0009d1e0]                           dc.b 'Edit',0
TEXT_15:
[0009d1e5]                           dc.b 'extern',0
TEXT_16:
[0009d1ec]                           dc.b 'REFERENZ',0
TEXT_17:
[0009d1f5]                           dc.b '  Objekt   '
[0009d200]                           dc.w $0300
TEXT_174:
[0009d202]                           dc.b '  UOservice',0
TEXT_18:
[0009d20e]                           dc.b '  Userdef  '
[0009d219]                           dc.b $03
[0009d21a]                           dc.b $00
TEXT_19:
[0009d21b]                           dc.b '  kein Typ',0
TEXT_20:
[0009d226]                           dc.b '  Fenster  '
[0009d231]                           dc.b $03
[0009d232]                           dc.b $00
TEXT_21:
[0009d233]                           dc.b '  DrawCode',0
TEXT_22:
[0009d23e]                           dc.b '  UO-Service',0
TEXT_23:
[0009d24b]                           dc.b '  Closed',0
TEXT_24:
[0009d254]                           dc.b '  System   '
[0009d25f]                           dc.b $03
[0009d260]                           dc.b $00
TEXT_25:
[0009d261]                           dc.b '  Fulled',0
TEXT_26:
[0009d26a]                           dc.b '  Arrowed',0
TEXT_27:
[0009d274]                           dc.b '  V-Slide',0
TEXT_28:
[0009d27e]                           dc.b '  Change',0
TEXT_29:
[0009d287]                           dc.b '  Moved',0
TEXT_30:
[0009d28f]                           dc.b '  Sized',0
TEXT_31:
[0009d297]                           dc.b '  H-Slide',0
TEXT_32:
[0009d2a1]                           dc.b '  ACSinit',0
TEXT_33:
[0009d2ab]                           dc.b '  ACSmessage',0
TEXT_34:
[0009d2b8]                           dc.b '  ACSkey',0
TEXT_35:
[0009d2c1]                           dc.b '  ACSbutton',0
TEXT_357:
[0009d2cd]                           dc.b '  Drag',0
TEXT_358:
[0009d2d4]                           dc.b '  Keys',0
TEXT_359:
[0009d2db]                           dc.b '  Service',0
TEXT_36:
[0009d2e5]                           dc.b '  ACSGEMScript',0
TEXT_360:
[0009d2f4]                           dc.b '  Create',0
TEXT_364:
[0009d2fd]                           dc.b '  Click',0
TEXT_365:
[0009d305]                           dc.b '  Open',0
TEXT_366:
[0009d30c]                           dc.b '  Topped',0
TEXT_367:
[0009d315]                           dc.b '  Userdef',0
TEXT_37:
[0009d31f]                           dc.b '  ACSinit0',0
TEXT_370:
[0009d32a]                           dc.b '  Init',0
TEXT_371:
[0009d331]                           dc.b '  Changed',0
TEXT_372:
[0009d33b]                           dc.b '  Redraw',0
TEXT_38:
[0009d344]                           dc.b '  ACSterm',0
TEXT_39:
[0009d34e]                           dc.b '  ACSaboutme',0
TEXT_40:
[0009d35b]                           dc.b '  ACSclose',0
TEXT_41:
[0009d366]                           dc.b '  ACSmproto',0
TEXT_42:
[0009d372]                           dc.b '  ACStimer',0
TEXT_43:
[0009d37d]                           dc.b '  ACSmouse',0
TEXT_44:
[0009d388]                           dc.b '  ACSwikey',0
[0009d393]                           dc.b $00
DATAS_05:
[0009d394]                           dc.b $00
[0009d395]                           dc.b $00
[0009d396]                           dc.b $00
[0009d397]                           dc.b $00
[0009d398]                           dc.w $020e
[0009d39a]                           dc.b $00
[0009d39b]                           dc.b $01
[0009d39c]                           dc.b $00
[0009d39d]                           dc.b $00
[0009d39e]                           dc.b $00
[0009d39f]                           dc.b $03
[0009d3a0]                           dc.w $8000
[0009d3a2]                           dc.b $00
[0009d3a3]                           dc.b $06
[0009d3a4]                           dc.w $c000
[0009d3a6]                           dc.b $00
[0009d3a7]                           dc.b $0c
[0009d3a8]                           dc.w $6000
[0009d3aa]                           dc.b $00
[0009d3ab]                           dc.b $18
[0009d3ac]                           dc.w $3000
[0009d3ae]                           dc.b $00
[0009d3af]                           dc.b $31
[0009d3b0]                           dc.w $1800
[0009d3b2]                           dc.b $00
[0009d3b3]                           dc.b $62
[0009d3b4]                           dc.w $8c00
[0009d3b6]                           dc.b $00
[0009d3b7]                           dc.b $c4
[0009d3b8]                           dc.w $4600
[0009d3ba]                           dc.w $0188
[0009d3bc]                           dc.w $2300
[0009d3be]                           dc.w $0310
[0009d3c0]                           dc.w $1180
[0009d3c2]                           dc.w $0790
[0009d3c4]                           dc.w $20c0
[0009d3c6]                           dc.w $0fc8
[0009d3c8]                           dc.w $4860
[0009d3ca]                           dc.w $1f84
[0009d3cc]                           dc.w $9830
[0009d3ce]                           dc.w $3703
[0009d3d0]                           dc.w $3218
[0009d3d2]                           dc.w $6200
[0009d3d4]                           dc.w $640c
[0009d3d6]                           dc.w $c000
[0009d3d8]                           dc.w $c906
[0009d3da]                           dc.w $6200
[0009d3dc]                           dc.w $920c
[0009d3de]                           dc.w $3101
[0009d3e0]                           dc.w $f418
[0009d3e2]                           dc.w $1886
[0009d3e4]                           dc.w $ac04
[0009d3e6]                           dc.w $0c4d
[0009d3e8]                           dc.w $f404
[0009d3ea]                           dc.w $062a
[0009d3ec]                           dc.w $3804
[0009d3ee]                           dc.w $031f
[0009d3f0]                           dc.w $fc04
[0009d3f2]                           dc.w $018b
[0009d3f4]                           dc.w $e804
[0009d3f6]                           dc.b $00
[0009d3f7]                           dc.b $c5
[0009d3f8]                           dc.w $5404
[0009d3fa]                           dc.b $00
[0009d3fb]                           dc.b $63
[0009d3fc]                           dc.w $a804
[0009d3fe]                           dc.b $00
[0009d3ff]                           dc.b $31
[0009d400]                           dc.w $fc04
[0009d402]                           dc.b $00
[0009d403]                           dc.b $18
[0009d404]                           dc.w $0c04
[0009d406]                           dc.b $00
[0009d407]                           dc.b $0c
[0009d408]                           dc.w $1bf8
[0009d40a]                           dc.b $00
[0009d40b]                           dc.b $06
[0009d40c]                           dc.w $3000
[0009d40e]                           dc.b $00
[0009d40f]                           dc.b $03
[0009d410]                           dc.w $6000
[0009d412]                           dc.b $00
[0009d413]                           dc.b $01
[0009d414]                           dc.w $c000
[0009d416]                           dc.b $00
[0009d417]                           dc.b $00
[0009d418]                           dc.w $8000
[0009d41a]                           dc.b $00
[0009d41b]                           dc.b $01
[0009d41c]                           dc.b $00
[0009d41d]                           dc.b $00
[0009d41e]                           dc.b $00
[0009d41f]                           dc.b $03
[0009d420]                           dc.w $8000
[0009d422]                           dc.b $00
[0009d423]                           dc.b $06
[0009d424]                           dc.w $c000
[0009d426]                           dc.b $00
[0009d427]                           dc.b $0c
[0009d428]                           dc.w $6000
[0009d42a]                           dc.b $00
[0009d42b]                           dc.b $18
[0009d42c]                           dc.w $3000
[0009d42e]                           dc.b $00
[0009d42f]                           dc.b $31
[0009d430]                           dc.w $1800
[0009d432]                           dc.b $00
[0009d433]                           dc.b $63
[0009d434]                           dc.w $8c00
[0009d436]                           dc.b $00
[0009d437]                           dc.b $c6
[0009d438]                           dc.w $c600
[0009d43a]                           dc.w $018d
[0009d43c]                           dc.w $6300
[0009d43e]                           dc.w $031a
[0009d440]                           dc.w $b180
[0009d442]                           dc.w $0795
[0009d444]                           dc.w $60c0
[0009d446]                           dc.w $0fca
[0009d448]                           dc.w $c860
[0009d44a]                           dc.w $1f85
[0009d44c]                           dc.w $9830
[0009d44e]                           dc.w $3703
[0009d450]                           dc.w $3218
[0009d452]                           dc.w $6200
[0009d454]                           dc.w $640c
[0009d456]                           dc.w $c000
[0009d458]                           dc.w $c906
[0009d45a]                           dc.w $6200
[0009d45c]                           dc.w $920c
[0009d45e]                           dc.w $3101
[0009d460]                           dc.w $f418
[0009d462]                           dc.w $1886
[0009d464]                           dc.w $ac04
[0009d466]                           dc.w $0c4d
[0009d468]                           dc.w $f404
[0009d46a]                           dc.w $062a
[0009d46c]                           dc.w $3804
[0009d46e]                           dc.w $031f
[0009d470]                           dc.w $fc04
[0009d472]                           dc.w $018b
[0009d474]                           dc.w $e804
[0009d476]                           dc.b $00
[0009d477]                           dc.b $c5
[0009d478]                           dc.w $5404
[0009d47a]                           dc.b $00
[0009d47b]                           dc.b $63
[0009d47c]                           dc.w $a804
[0009d47e]                           dc.b $00
[0009d47f]                           dc.b $31
[0009d480]                           dc.w $fc04
[0009d482]                           dc.b $00
[0009d483]                           dc.b $18
[0009d484]                           dc.w $0c04
[0009d486]                           dc.b $00
[0009d487]                           dc.b $0c
[0009d488]                           dc.w $1bf8
[0009d48a]                           dc.b $00
[0009d48b]                           dc.b $06
[0009d48c]                           dc.w $3000
[0009d48e]                           dc.b $00
[0009d48f]                           dc.b $03
[0009d490]                           dc.w $6000
[0009d492]                           dc.b $00
[0009d493]                           dc.b $01
[0009d494]                           dc.w $c000
[0009d496]                           dc.b $00
[0009d497]                           dc.b $00
[0009d498]                           dc.w $8000
[0009d49a]                           dc.b $00
[0009d49b]                           dc.b $01
[0009d49c]                           dc.b $00
[0009d49d]                           dc.b $00
[0009d49e]                           dc.b $00
[0009d49f]                           dc.b $03
[0009d4a0]                           dc.w $8000
[0009d4a2]                           dc.b $00
[0009d4a3]                           dc.b $06
[0009d4a4]                           dc.w $c000
[0009d4a6]                           dc.b $00
[0009d4a7]                           dc.b $0c
[0009d4a8]                           dc.w $6000
[0009d4aa]                           dc.b $00
[0009d4ab]                           dc.b $18
[0009d4ac]                           dc.w $3000
[0009d4ae]                           dc.b $00
[0009d4af]                           dc.b $31
[0009d4b0]                           dc.w $1800
[0009d4b2]                           dc.b $00
[0009d4b3]                           dc.b $63
[0009d4b4]                           dc.w $8c00
[0009d4b6]                           dc.b $00
[0009d4b7]                           dc.b $c7
[0009d4b8]                           dc.w $c600
[0009d4ba]                           dc.w $018f
[0009d4bc]                           dc.w $e300
[0009d4be]                           dc.w $031f
[0009d4c0]                           dc.w $f180
[0009d4c2]                           dc.w $079f
[0009d4c4]                           dc.w $e0c0
[0009d4c6]                           dc.w $0fcf
[0009d4c8]                           dc.w $c860
[0009d4ca]                           dc.w $1f87
[0009d4cc]                           dc.w $9830
[0009d4ce]                           dc.w $3703
[0009d4d0]                           dc.w $3218
[0009d4d2]                           dc.w $6200
[0009d4d4]                           dc.w $640c
[0009d4d6]                           dc.w $c000
[0009d4d8]                           dc.w $c906
[0009d4da]                           dc.w $6200
[0009d4dc]                           dc.w $920c
[0009d4de]                           dc.w $3101
[0009d4e0]                           dc.w $f418
[0009d4e2]                           dc.w $1886
[0009d4e4]                           dc.w $0ffc
[0009d4e6]                           dc.w $0c4d
[0009d4e8]                           dc.w $e7fc
[0009d4ea]                           dc.w $062a
[0009d4ec]                           dc.w $33fc
[0009d4ee]                           dc.w $031f
[0009d4f0]                           dc.w $fbfc
[0009d4f2]                           dc.w $0189
[0009d4f4]                           dc.w $e3fc
[0009d4f6]                           dc.b $00
[0009d4f7]                           dc.b $c4
[0009d4f8]                           dc.w $03fc
[0009d4fa]                           dc.b $00
[0009d4fb]                           dc.b $63
[0009d4fc]                           dc.w $03fc
[0009d4fe]                           dc.b $00
[0009d4ff]                           dc.b $31
[0009d500]                           dc.w $fffc
[0009d502]                           dc.b $00
[0009d503]                           dc.b $18
[0009d504]                           dc.w $0ffc
[0009d506]                           dc.b $00
[0009d507]                           dc.b $0c
[0009d508]                           dc.w $1bf8
[0009d50a]                           dc.b $00
[0009d50b]                           dc.b $06
[0009d50c]                           dc.w $3000
[0009d50e]                           dc.b $00
[0009d50f]                           dc.b $03
[0009d510]                           dc.w $6000
[0009d512]                           dc.b $00
[0009d513]                           dc.b $01
[0009d514]                           dc.w $c000
[0009d516]                           dc.b $00
[0009d517]                           dc.b $00
[0009d518]                           dc.w $8000
[0009d51a]                           dc.b $00
[0009d51b]                           dc.b $00
[0009d51c]                           dc.b $00
[0009d51d]                           dc.b $00
[0009d51e]                           dc.b $00
[0009d51f]                           dc.b $01
[0009d520]                           dc.b $00
[0009d521]                           dc.b $00
[0009d522]                           dc.b $00
[0009d523]                           dc.b $02
[0009d524]                           dc.w $8000
[0009d526]                           dc.b $00
[0009d527]                           dc.b $04
[0009d528]                           dc.w $4000
[0009d52a]                           dc.b $00
[0009d52b]                           dc.b $08
[0009d52c]                           dc.w $2000
[0009d52e]                           dc.b $00
[0009d52f]                           dc.b $11
[0009d530]                           dc.w $1000
[0009d532]                           dc.b $00
[0009d533]                           dc.b $22
[0009d534]                           dc.w $8800
[0009d536]                           dc.b $00
[0009d537]                           dc.b $44
[0009d538]                           dc.w $4400
[0009d53a]                           dc.b $00
[0009d53b]                           dc.b $88
[0009d53c]                           dc.w $2200
[0009d53e]                           dc.w $0110
[0009d540]                           dc.w $1100
[0009d542]                           dc.w $0390
[0009d544]                           dc.w $2080
[0009d546]                           dc.w $07c8
[0009d548]                           dc.w $4840
[0009d54a]                           dc.w $0f84
[0009d54c]                           dc.w $9820
[0009d54e]                           dc.w $1703
[0009d550]                           dc.w $3210
[0009d552]                           dc.w $2200
[0009d554]                           dc.w $6408
[0009d556]                           dc.w $4000
[0009d558]                           dc.w $c904
[0009d55a]                           dc.w $2200
[0009d55c]                           dc.w $9208
[0009d55e]                           dc.w $1101
[0009d560]                           dc.w $f410
[0009d562]                           dc.w $0886
[0009d564]                           dc.w $0c00
[0009d566]                           dc.w $044d
[0009d568]                           dc.w $e400
[0009d56a]                           dc.w $022a
[0009d56c]                           dc.w $3000
[0009d56e]                           dc.w $011f
[0009d570]                           dc.w $f800
[0009d572]                           dc.b $00
[0009d573]                           dc.b $89
[0009d574]                           dc.w $e000
[0009d576]                           dc.b $00
[0009d577]                           dc.b $44
[0009d578]                           dc.b $00
[0009d579]                           dc.b $00
[0009d57a]                           dc.b $00
[0009d57b]                           dc.b $23
[0009d57c]                           dc.b $00
[0009d57d]                           dc.b $00
[0009d57e]                           dc.b $00
[0009d57f]                           dc.b $11
[0009d580]                           dc.w $fc00
[0009d582]                           dc.b $00
[0009d583]                           dc.b $08
[0009d584]                           dc.w $0800
[0009d586]                           dc.b $00
[0009d587]                           dc.b $04
[0009d588]                           dc.w $1000
[0009d58a]                           dc.b $00
[0009d58b]                           dc.b $02
[0009d58c]                           dc.w $2000
[0009d58e]                           dc.b $00
[0009d58f]                           dc.b $01
[0009d590]                           dc.w $4000
[0009d592]                           dc.b $00
[0009d593]                           dc.b $00
[0009d594]                           dc.w $8000
[0009d596]                           dc.b $00
[0009d597]                           dc.b $00
[0009d598]                           dc.b $00
[0009d599]                           dc.b $00
DATAS_06:
[0009d59a]                           dc.b $00
[0009d59b]                           dc.b $01
[0009d59c]                           dc.b $00
[0009d59d]                           dc.b $00
[0009d59e]                           dc.b $00
[0009d59f]                           dc.b $03
[0009d5a0]                           dc.w $8000
[0009d5a2]                           dc.b $00
[0009d5a3]                           dc.b $07
[0009d5a4]                           dc.w $c000
[0009d5a6]                           dc.b $00
[0009d5a7]                           dc.b $0f
[0009d5a8]                           dc.w $e000
[0009d5aa]                           dc.b $00
[0009d5ab]                           dc.b $1f
[0009d5ac]                           dc.w $f000
[0009d5ae]                           dc.b $00
[0009d5af]                           dc.b $3f
[0009d5b0]                           dc.w $f800
[0009d5b2]                           dc.b $00
[0009d5b3]                           dc.b $7f
[0009d5b4]                           dc.w $fc00
[0009d5b6]                           dc.b $00
[0009d5b7]                           dc.b $ff
[0009d5b8]                           dc.w $fe00
[0009d5ba]                           dc.w $01ff
[0009d5bc]                           dc.w $ff00
[0009d5be]                           dc.w $03ff
[0009d5c0]                           dc.w $ff80
[0009d5c2]                           dc.w $07ff
[0009d5c4]                           dc.w $ffc0
[0009d5c6]                           dc.w $0fff
[0009d5c8]                           dc.w $ffe0
[0009d5ca]                           dc.w $1fff
[0009d5cc]                           dc.w $fff0
[0009d5ce]                           dc.w $3fff
[0009d5d0]                           dc.w $fff8
[0009d5d2]                           dc.w $7fff
[0009d5d4]                           dc.w $fffc
[0009d5d6]                           dc.w $ffff
[0009d5d8]                           dc.w $fffe
[0009d5da]                           dc.w $7fff
[0009d5dc]                           dc.w $fffc
[0009d5de]                           dc.w $3fff
[0009d5e0]                           dc.w $fff8
[0009d5e2]                           dc.w $1fff
[0009d5e4]                           dc.w $fffc
[0009d5e6]                           dc.w $0fff
[0009d5e8]                           dc.w $fffc
[0009d5ea]                           dc.w $07ff
[0009d5ec]                           dc.w $fffc
[0009d5ee]                           dc.w $03ff
[0009d5f0]                           dc.w $fffc
[0009d5f2]                           dc.w $01ff
[0009d5f4]                           dc.w $fffc
[0009d5f6]                           dc.b $00
[0009d5f7]                           dc.b $ff
[0009d5f8]                           dc.w $fffc
[0009d5fa]                           dc.b $00
[0009d5fb]                           dc.b $7f
[0009d5fc]                           dc.w $fffc
[0009d5fe]                           dc.b $00
[0009d5ff]                           dc.b $3f
[0009d600]                           dc.w $fffc
[0009d602]                           dc.b $00
[0009d603]                           dc.b $1f
[0009d604]                           dc.w $fffc
[0009d606]                           dc.b $00
[0009d607]                           dc.b $0f
[0009d608]                           dc.w $fbf8
[0009d60a]                           dc.b $00
[0009d60b]                           dc.b $07
[0009d60c]                           dc.w $f000
[0009d60e]                           dc.b $00
[0009d60f]                           dc.b $03
[0009d610]                           dc.w $e000
[0009d612]                           dc.b $00
[0009d613]                           dc.b $01
[0009d614]                           dc.w $c000
[0009d616]                           dc.b $00
[0009d617]                           dc.b $00
[0009d618]                           dc.w $8000
A_3DBUTTON01:
[0009d61a] 0005a4e2                  dc.l A_3Dbutton
[0009d61e]                           dc.w $09f1
[0009d620]                           dc.w $0178
[0009d622] 00059318                  dc.l Auo_string
[0009d626] 0009d21b                  dc.l TEXT_19
[0009d62a]                           dc.b $00
[0009d62b]                           dc.b $00
[0009d62c]                           dc.b $00
[0009d62d]                           dc.b $00
[0009d62e]                           dc.b $00
[0009d62f]                           dc.b $00
[0009d630]                           dc.b $00
[0009d631]                           dc.b $00
[0009d632]                           dc.b $00
[0009d633]                           dc.b $00
[0009d634]                           dc.b $00
[0009d635]                           dc.b $00
[0009d636]                           dc.b $00
[0009d637]                           dc.b $00
[0009d638]                           dc.b $00
[0009d639]                           dc.b $00
A_3DBUTTON02:
[0009d63a] 0005a4e2                  dc.l A_3Dbutton
[0009d63e]                           dc.w $29c1
[0009d640]                           dc.w $0178
[0009d642] 00059318                  dc.l Auo_string
[0009d646] 0009d1e0                  dc.l TEXT_14
[0009d64a]                           dc.b $00
[0009d64b]                           dc.b $00
[0009d64c]                           dc.b $00
[0009d64d]                           dc.b $00
[0009d64e]                           dc.b $00
[0009d64f]                           dc.b $00
[0009d650]                           dc.b $00
[0009d651]                           dc.b $00
[0009d652] 0009d0a9                  dc.l BUBBLE_03
[0009d656]                           dc.b $00
[0009d657]                           dc.b $00
[0009d658]                           dc.b $00
[0009d659]                           dc.b $00
A_3DBUTTON03:
[0009d65a] 0005a4e2                  dc.l A_3Dbutton
[0009d65e]                           dc.w $29f1
[0009d660]                           dc.w $0178
[0009d662] 00059318                  dc.l Auo_string
[0009d666]                           dc.b $00
[0009d667]                           dc.b $00
[0009d668]                           dc.b $00
[0009d669]                           dc.b $00
[0009d66a]                           dc.b $00
[0009d66b]                           dc.b $00
[0009d66c]                           dc.b $00
[0009d66d]                           dc.b $00
[0009d66e]                           dc.b $00
[0009d66f]                           dc.b $00
[0009d670]                           dc.b $00
[0009d671]                           dc.b $00
[0009d672]                           dc.b $00
[0009d673]                           dc.b $00
[0009d674]                           dc.b $00
[0009d675]                           dc.b $00
[0009d676]                           dc.b $00
[0009d677]                           dc.b $00
[0009d678]                           dc.b $00
[0009d679]                           dc.b $00
A_3DBUTTON04:
[0009d67a] 0005a4e2                  dc.l A_3Dbutton
[0009d67e]                           dc.w $29c1
[0009d680]                           dc.w $0178
[0009d682] 00059318                  dc.l Auo_string
[0009d686] 0009d15d                  dc.l TEXT_003
[0009d68a]                           dc.b $00
[0009d68b]                           dc.b $00
[0009d68c]                           dc.b $00
[0009d68d]                           dc.b $00
[0009d68e]                           dc.b $00
[0009d68f]                           dc.b $00
[0009d690]                           dc.b $00
[0009d691]                           dc.b $00
[0009d692] 0009d066                  dc.l BUBBLE_01
[0009d696]                           dc.b $00
[0009d697]                           dc.b $00
[0009d698]                           dc.b $00
[0009d699]                           dc.b $00
A_3DBUTTON05:
[0009d69a] 0005a4e2                  dc.l A_3Dbutton
[0009d69e]                           dc.w $09f1
[0009d6a0]                           dc.w $0178
[0009d6a2] 00059318                  dc.l Auo_string
[0009d6a6] 0009d20e                  dc.l TEXT_18
[0009d6aa]                           dc.b $00
[0009d6ab]                           dc.b $00
[0009d6ac]                           dc.b $00
[0009d6ad]                           dc.b $00
[0009d6ae]                           dc.b $00
[0009d6af]                           dc.b $00
[0009d6b0]                           dc.b $00
[0009d6b1]                           dc.b $00
[0009d6b2]                           dc.b $00
[0009d6b3]                           dc.b $00
[0009d6b4]                           dc.b $00
[0009d6b5]                           dc.b $00
[0009d6b6]                           dc.b $00
[0009d6b7]                           dc.b $00
[0009d6b8]                           dc.b $00
[0009d6b9]                           dc.b $00
A_3DBUTTON06:
[0009d6ba] 0005a4e2                  dc.l A_3Dbutton
[0009d6be]                           dc.w $09f1
[0009d6c0]                           dc.w $0178
[0009d6c2] 00059318                  dc.l Auo_string
[0009d6c6] 0009d1f5                  dc.l TEXT_17
[0009d6ca]                           dc.b $00
[0009d6cb]                           dc.b $00
[0009d6cc]                           dc.b $00
[0009d6cd]                           dc.b $00
[0009d6ce]                           dc.b $00
[0009d6cf]                           dc.b $00
[0009d6d0]                           dc.b $00
[0009d6d1]                           dc.b $00
[0009d6d2]                           dc.b $00
[0009d6d3]                           dc.b $00
[0009d6d4]                           dc.b $00
[0009d6d5]                           dc.b $00
[0009d6d6]                           dc.b $00
[0009d6d7]                           dc.b $00
[0009d6d8]                           dc.b $00
[0009d6d9]                           dc.b $00
A_3DBUTTON07:
[0009d6da] 0005a4e2                  dc.l A_3Dbutton
[0009d6de]                           dc.w $29c1
[0009d6e0]                           dc.w $0178
[0009d6e2] 00059318                  dc.l Auo_string
[0009d6e6] 0009d160                  dc.l TEXT_004
[0009d6ea]                           dc.b $00
[0009d6eb]                           dc.b $00
[0009d6ec]                           dc.b $00
[0009d6ed]                           dc.b $00
[0009d6ee]                           dc.b $00
[0009d6ef]                           dc.b $00
[0009d6f0]                           dc.b $00
[0009d6f1]                           dc.b $00
[0009d6f2] 0009d088                  dc.l BUBBLE_02
[0009d6f6]                           dc.b $00
[0009d6f7]                           dc.b $00
[0009d6f8]                           dc.b $00
[0009d6f9]                           dc.b $00
A_3DBUTTON08:
[0009d6fa] 0005a4e2                  dc.l A_3Dbutton
[0009d6fe]                           dc.w $09f1
[0009d700]                           dc.w $0178
[0009d702] 00059318                  dc.l Auo_string
[0009d706] 0009d226                  dc.l TEXT_20
[0009d70a]                           dc.b $00
[0009d70b]                           dc.b $00
[0009d70c]                           dc.b $00
[0009d70d]                           dc.b $00
[0009d70e]                           dc.b $00
[0009d70f]                           dc.b $00
[0009d710]                           dc.b $00
[0009d711]                           dc.b $00
[0009d712]                           dc.b $00
[0009d713]                           dc.b $00
[0009d714]                           dc.b $00
[0009d715]                           dc.b $00
[0009d716]                           dc.b $00
[0009d717]                           dc.b $00
[0009d718]                           dc.b $00
[0009d719]                           dc.b $00
A_3DBUTTON09:
[0009d71a] 0005a4e2                  dc.l A_3Dbutton
[0009d71e]                           dc.w $09f1
[0009d720]                           dc.w $0178
[0009d722] 00059318                  dc.l Auo_string
[0009d726] 0009d2cd                  dc.l TEXT_357
[0009d72a]                           dc.b $00
[0009d72b]                           dc.b $00
[0009d72c]                           dc.b $00
[0009d72d]                           dc.b $00
[0009d72e]                           dc.b $00
[0009d72f]                           dc.b $00
[0009d730]                           dc.b $00
[0009d731]                           dc.b $00
[0009d732]                           dc.b $00
[0009d733]                           dc.b $00
[0009d734]                           dc.b $00
[0009d735]                           dc.b $00
[0009d736]                           dc.b $00
[0009d737]                           dc.b $00
[0009d738]                           dc.b $00
[0009d739]                           dc.b $00
A_3DBUTTON10:
[0009d73a] 0005a4e2                  dc.l A_3Dbutton
[0009d73e]                           dc.w $09f1
[0009d740]                           dc.w $0178
[0009d742] 00059318                  dc.l Auo_string
[0009d746] 0009d2fd                  dc.l TEXT_364
[0009d74a]                           dc.b $00
[0009d74b]                           dc.b $00
[0009d74c]                           dc.b $00
[0009d74d]                           dc.b $00
[0009d74e]                           dc.b $00
[0009d74f]                           dc.b $00
[0009d750]                           dc.b $00
[0009d751]                           dc.b $00
[0009d752]                           dc.b $00
[0009d753]                           dc.b $00
[0009d754]                           dc.b $00
[0009d755]                           dc.b $00
[0009d756]                           dc.b $00
[0009d757]                           dc.b $00
[0009d758]                           dc.b $00
[0009d759]                           dc.b $00
A_3DBUTTON11:
[0009d75a] 0005a4e2                  dc.l A_3Dbutton
[0009d75e]                           dc.w $09f1
[0009d760]                           dc.w $0178
[0009d762] 00059318                  dc.l Auo_string
[0009d766] 0009d233                  dc.l TEXT_21
[0009d76a]                           dc.b $00
[0009d76b]                           dc.b $00
[0009d76c]                           dc.b $00
[0009d76d]                           dc.b $00
[0009d76e]                           dc.b $00
[0009d76f]                           dc.b $00
[0009d770]                           dc.b $00
[0009d771]                           dc.b $00
[0009d772]                           dc.b $00
[0009d773]                           dc.b $00
[0009d774]                           dc.b $00
[0009d775]                           dc.b $00
[0009d776]                           dc.b $00
[0009d777]                           dc.b $00
[0009d778]                           dc.b $00
[0009d779]                           dc.b $00
A_3DBUTTON12:
[0009d77a] 0005a4e2                  dc.l A_3Dbutton
[0009d77e]                           dc.w $09f1
[0009d780]                           dc.w $0178
[0009d782] 00059318                  dc.l Auo_string
[0009d786] 0009d23e                  dc.l TEXT_22
[0009d78a]                           dc.b $00
[0009d78b]                           dc.b $00
[0009d78c]                           dc.b $00
[0009d78d]                           dc.b $00
[0009d78e]                           dc.b $00
[0009d78f]                           dc.b $00
[0009d790]                           dc.b $00
[0009d791]                           dc.b $00
[0009d792]                           dc.b $00
[0009d793]                           dc.b $00
[0009d794]                           dc.b $00
[0009d795]                           dc.b $00
[0009d796]                           dc.b $00
[0009d797]                           dc.b $00
[0009d798]                           dc.b $00
[0009d799]                           dc.b $00
A_3DBUTTON13:
[0009d79a] 0005a4e2                  dc.l A_3Dbutton
[0009d79e]                           dc.w $09f1
[0009d7a0]                           dc.w $0178
[0009d7a2] 00059318                  dc.l Auo_string
[0009d7a6] 0009d32a                  dc.l TEXT_370
[0009d7aa]                           dc.b $00
[0009d7ab]                           dc.b $00
[0009d7ac]                           dc.b $00
[0009d7ad]                           dc.b $00
[0009d7ae]                           dc.b $00
[0009d7af]                           dc.b $00
[0009d7b0]                           dc.b $00
[0009d7b1]                           dc.b $00
[0009d7b2]                           dc.b $00
[0009d7b3]                           dc.b $00
[0009d7b4]                           dc.b $00
[0009d7b5]                           dc.b $00
[0009d7b6]                           dc.b $00
[0009d7b7]                           dc.b $00
[0009d7b8]                           dc.b $00
[0009d7b9]                           dc.b $00
A_3DBUTTON14:
[0009d7ba] 0005a4e2                  dc.l A_3Dbutton
[0009d7be]                           dc.w $09f1
[0009d7c0]                           dc.w $0178
[0009d7c2] 00059318                  dc.l Auo_string
[0009d7c6] 0009d305                  dc.l TEXT_365
[0009d7ca]                           dc.b $00
[0009d7cb]                           dc.b $00
[0009d7cc]                           dc.b $00
[0009d7cd]                           dc.b $00
[0009d7ce]                           dc.b $00
[0009d7cf]                           dc.b $00
[0009d7d0]                           dc.b $00
[0009d7d1]                           dc.b $00
[0009d7d2]                           dc.b $00
[0009d7d3]                           dc.b $00
[0009d7d4]                           dc.b $00
[0009d7d5]                           dc.b $00
[0009d7d6]                           dc.b $00
[0009d7d7]                           dc.b $00
[0009d7d8]                           dc.b $00
[0009d7d9]                           dc.b $00
A_3DBUTTON15:
[0009d7da] 0005a4e2                  dc.l A_3Dbutton
[0009d7de]                           dc.w $09f1
[0009d7e0]                           dc.w $0178
[0009d7e2] 00059318                  dc.l Auo_string
[0009d7e6] 0009d2f4                  dc.l TEXT_360
[0009d7ea]                           dc.b $00
[0009d7eb]                           dc.b $00
[0009d7ec]                           dc.b $00
[0009d7ed]                           dc.b $00
[0009d7ee]                           dc.b $00
[0009d7ef]                           dc.b $00
[0009d7f0]                           dc.b $00
[0009d7f1]                           dc.b $00
[0009d7f2]                           dc.b $00
[0009d7f3]                           dc.b $00
[0009d7f4]                           dc.b $00
[0009d7f5]                           dc.b $00
[0009d7f6]                           dc.b $00
[0009d7f7]                           dc.b $00
[0009d7f8]                           dc.b $00
[0009d7f9]                           dc.b $00
A_3DBUTTON16:
[0009d7fa] 0005a4e2                  dc.l A_3Dbutton
[0009d7fe]                           dc.w $09f1
[0009d800]                           dc.w $0178
[0009d802] 00059318                  dc.l Auo_string
[0009d806] 0009d2db                  dc.l TEXT_359
[0009d80a]                           dc.b $00
[0009d80b]                           dc.b $00
[0009d80c]                           dc.b $00
[0009d80d]                           dc.b $00
[0009d80e]                           dc.b $00
[0009d80f]                           dc.b $00
[0009d810]                           dc.b $00
[0009d811]                           dc.b $00
[0009d812]                           dc.b $00
[0009d813]                           dc.b $00
[0009d814]                           dc.b $00
[0009d815]                           dc.b $00
[0009d816]                           dc.b $00
[0009d817]                           dc.b $00
[0009d818]                           dc.b $00
[0009d819]                           dc.b $00
A_3DBUTTON17:
[0009d81a] 0005a4e2                  dc.l A_3Dbutton
[0009d81e]                           dc.w $09f1
[0009d820]                           dc.w $0178
[0009d822] 00059318                  dc.l Auo_string
[0009d826] 0009d2d4                  dc.l TEXT_358
[0009d82a]                           dc.b $00
[0009d82b]                           dc.b $00
[0009d82c]                           dc.b $00
[0009d82d]                           dc.b $00
[0009d82e]                           dc.b $00
[0009d82f]                           dc.b $00
[0009d830]                           dc.b $00
[0009d831]                           dc.b $00
[0009d832]                           dc.b $00
[0009d833]                           dc.b $00
[0009d834]                           dc.b $00
[0009d835]                           dc.b $00
[0009d836]                           dc.b $00
[0009d837]                           dc.b $00
[0009d838]                           dc.b $00
[0009d839]                           dc.b $00
A_3DBUTTON18:
[0009d83a] 0005a4e2                  dc.l A_3Dbutton
[0009d83e]                           dc.w $09f1
[0009d840]                           dc.w $0178
[0009d842] 00059318                  dc.l Auo_string
[0009d846] 0009d17f                  dc.l TEXT_04
[0009d84a]                           dc.b $00
[0009d84b]                           dc.b $00
[0009d84c]                           dc.b $00
[0009d84d]                           dc.b $00
[0009d84e]                           dc.b $00
[0009d84f]                           dc.b $00
[0009d850]                           dc.b $00
[0009d851]                           dc.b $00
[0009d852]                           dc.b $00
[0009d853]                           dc.b $00
[0009d854]                           dc.b $00
[0009d855]                           dc.b $00
[0009d856]                           dc.b $00
[0009d857]                           dc.b $00
[0009d858]                           dc.b $00
[0009d859]                           dc.b $00
A_3DBUTTON19:
[0009d85a] 0005a4e2                  dc.l A_3Dbutton
[0009d85e]                           dc.w $09f1
[0009d860]                           dc.w $0178
[0009d862] 00059318                  dc.l Auo_string
[0009d866] 0009d33b                  dc.l TEXT_372
[0009d86a]                           dc.b $00
[0009d86b]                           dc.b $00
[0009d86c]                           dc.b $00
[0009d86d]                           dc.b $00
[0009d86e]                           dc.b $00
[0009d86f]                           dc.b $00
[0009d870]                           dc.b $00
[0009d871]                           dc.b $00
[0009d872]                           dc.b $00
[0009d873]                           dc.b $00
[0009d874]                           dc.b $00
[0009d875]                           dc.b $00
[0009d876]                           dc.b $00
[0009d877]                           dc.b $00
[0009d878]                           dc.b $00
[0009d879]                           dc.b $00
A_3DBUTTON20:
[0009d87a] 0005a4e2                  dc.l A_3Dbutton
[0009d87e]                           dc.w $09f1
[0009d880]                           dc.w $0178
[0009d882] 00059318                  dc.l Auo_string
[0009d886] 0009d30c                  dc.l TEXT_366
[0009d88a]                           dc.b $00
[0009d88b]                           dc.b $00
[0009d88c]                           dc.b $00
[0009d88d]                           dc.b $00
[0009d88e]                           dc.b $00
[0009d88f]                           dc.b $00
[0009d890]                           dc.b $00
[0009d891]                           dc.b $00
[0009d892]                           dc.b $00
[0009d893]                           dc.b $00
[0009d894]                           dc.b $00
[0009d895]                           dc.b $00
[0009d896]                           dc.b $00
[0009d897]                           dc.b $00
[0009d898]                           dc.b $00
[0009d899]                           dc.b $00
A_3DBUTTON21:
[0009d89a] 0005a4e2                  dc.l A_3Dbutton
[0009d89e]                           dc.w $09f1
[0009d8a0]                           dc.w $0178
[0009d8a2] 00059318                  dc.l Auo_string
[0009d8a6] 0009d24b                  dc.l TEXT_23
[0009d8aa]                           dc.b $00
[0009d8ab]                           dc.b $00
[0009d8ac]                           dc.b $00
[0009d8ad]                           dc.b $00
[0009d8ae]                           dc.b $00
[0009d8af]                           dc.b $00
[0009d8b0]                           dc.b $00
[0009d8b1]                           dc.b $00
[0009d8b2]                           dc.b $00
[0009d8b3]                           dc.b $00
[0009d8b4]                           dc.b $00
[0009d8b5]                           dc.b $00
[0009d8b6]                           dc.b $00
[0009d8b7]                           dc.b $00
[0009d8b8]                           dc.b $00
[0009d8b9]                           dc.b $00
A_3DBUTTON22:
[0009d8ba] 0005a4e2                  dc.l A_3Dbutton
[0009d8be]                           dc.w $09f1
[0009d8c0]                           dc.w $0178
[0009d8c2] 00059318                  dc.l Auo_string
[0009d8c6] 0009d261                  dc.l TEXT_25
[0009d8ca]                           dc.b $00
[0009d8cb]                           dc.b $00
[0009d8cc]                           dc.b $00
[0009d8cd]                           dc.b $00
[0009d8ce]                           dc.b $00
[0009d8cf]                           dc.b $00
[0009d8d0]                           dc.b $00
[0009d8d1]                           dc.b $00
[0009d8d2]                           dc.b $00
[0009d8d3]                           dc.b $00
[0009d8d4]                           dc.b $00
[0009d8d5]                           dc.b $00
[0009d8d6]                           dc.b $00
[0009d8d7]                           dc.b $00
[0009d8d8]                           dc.b $00
[0009d8d9]                           dc.b $00
A_3DBUTTON23:
[0009d8da] 0005a4e2                  dc.l A_3Dbutton
[0009d8de]                           dc.w $09f1
[0009d8e0]                           dc.w $0178
[0009d8e2] 00059318                  dc.l Auo_string
[0009d8e6] 0009d26a                  dc.l TEXT_26
[0009d8ea]                           dc.b $00
[0009d8eb]                           dc.b $00
[0009d8ec]                           dc.b $00
[0009d8ed]                           dc.b $00
[0009d8ee]                           dc.b $00
[0009d8ef]                           dc.b $00
[0009d8f0]                           dc.b $00
[0009d8f1]                           dc.b $00
[0009d8f2]                           dc.b $00
[0009d8f3]                           dc.b $00
[0009d8f4]                           dc.b $00
[0009d8f5]                           dc.b $00
[0009d8f6]                           dc.b $00
[0009d8f7]                           dc.b $00
[0009d8f8]                           dc.b $00
[0009d8f9]                           dc.b $00
A_3DBUTTON24:
[0009d8fa] 0005a4e2                  dc.l A_3Dbutton
[0009d8fe]                           dc.w $09f1
[0009d900]                           dc.w $0178
[0009d902] 00059318                  dc.l Auo_string
[0009d906] 0009d274                  dc.l TEXT_27
[0009d90a]                           dc.b $00
[0009d90b]                           dc.b $00
[0009d90c]                           dc.b $00
[0009d90d]                           dc.b $00
[0009d90e]                           dc.b $00
[0009d90f]                           dc.b $00
[0009d910]                           dc.b $00
[0009d911]                           dc.b $00
[0009d912]                           dc.b $00
[0009d913]                           dc.b $00
[0009d914]                           dc.b $00
[0009d915]                           dc.b $00
[0009d916]                           dc.b $00
[0009d917]                           dc.b $00
[0009d918]                           dc.b $00
[0009d919]                           dc.b $00
A_3DBUTTON25:
[0009d91a] 0005a4e2                  dc.l A_3Dbutton
[0009d91e]                           dc.w $09f1
[0009d920]                           dc.w $0178
[0009d922] 00059318                  dc.l Auo_string
[0009d926] 0009d27e                  dc.l TEXT_28
[0009d92a]                           dc.b $00
[0009d92b]                           dc.b $00
[0009d92c]                           dc.b $00
[0009d92d]                           dc.b $00
[0009d92e]                           dc.b $00
[0009d92f]                           dc.b $00
[0009d930]                           dc.b $00
[0009d931]                           dc.b $00
[0009d932]                           dc.b $00
[0009d933]                           dc.b $00
[0009d934]                           dc.b $00
[0009d935]                           dc.b $00
[0009d936]                           dc.b $00
[0009d937]                           dc.b $00
[0009d938]                           dc.b $00
[0009d939]                           dc.b $00
A_3DBUTTON26:
[0009d93a] 0005a4e2                  dc.l A_3Dbutton
[0009d93e]                           dc.w $09f1
[0009d940]                           dc.w $0178
[0009d942] 00059318                  dc.l Auo_string
[0009d946] 0009d287                  dc.l TEXT_29
[0009d94a]                           dc.b $00
[0009d94b]                           dc.b $00
[0009d94c]                           dc.b $00
[0009d94d]                           dc.b $00
[0009d94e]                           dc.b $00
[0009d94f]                           dc.b $00
[0009d950]                           dc.b $00
[0009d951]                           dc.b $00
[0009d952]                           dc.b $00
[0009d953]                           dc.b $00
[0009d954]                           dc.b $00
[0009d955]                           dc.b $00
[0009d956]                           dc.b $00
[0009d957]                           dc.b $00
[0009d958]                           dc.b $00
[0009d959]                           dc.b $00
A_3DBUTTON27:
[0009d95a] 0005a4e2                  dc.l A_3Dbutton
[0009d95e]                           dc.w $09f1
[0009d960]                           dc.w $0178
[0009d962] 00059318                  dc.l Auo_string
[0009d966] 0009d28f                  dc.l TEXT_30
[0009d96a]                           dc.b $00
[0009d96b]                           dc.b $00
[0009d96c]                           dc.b $00
[0009d96d]                           dc.b $00
[0009d96e]                           dc.b $00
[0009d96f]                           dc.b $00
[0009d970]                           dc.b $00
[0009d971]                           dc.b $00
[0009d972]                           dc.b $00
[0009d973]                           dc.b $00
[0009d974]                           dc.b $00
[0009d975]                           dc.b $00
[0009d976]                           dc.b $00
[0009d977]                           dc.b $00
[0009d978]                           dc.b $00
[0009d979]                           dc.b $00
A_3DBUTTON28:
[0009d97a] 0005a4e2                  dc.l A_3Dbutton
[0009d97e]                           dc.w $09f1
[0009d980]                           dc.w $0178
[0009d982] 00059318                  dc.l Auo_string
[0009d986] 0009d297                  dc.l TEXT_31
[0009d98a]                           dc.b $00
[0009d98b]                           dc.b $00
[0009d98c]                           dc.b $00
[0009d98d]                           dc.b $00
[0009d98e]                           dc.b $00
[0009d98f]                           dc.b $00
[0009d990]                           dc.b $00
[0009d991]                           dc.b $00
[0009d992]                           dc.b $00
[0009d993]                           dc.b $00
[0009d994]                           dc.b $00
[0009d995]                           dc.b $00
[0009d996]                           dc.b $00
[0009d997]                           dc.b $00
[0009d998]                           dc.b $00
[0009d999]                           dc.b $00
A_3DBUTTON29:
[0009d99a] 0005a4e2                  dc.l A_3Dbutton
[0009d99e]                           dc.w $29f1
[0009d9a0]                           dc.w $0178
[0009d9a2] 00059318                  dc.l Auo_string
[0009d9a6]                           dc.b $00
[0009d9a7]                           dc.b $00
[0009d9a8]                           dc.b $00
[0009d9a9]                           dc.b $00
[0009d9aa]                           dc.b $00
[0009d9ab]                           dc.b $00
[0009d9ac]                           dc.b $00
[0009d9ad]                           dc.b $00
[0009d9ae]                           dc.b $00
[0009d9af]                           dc.b $00
[0009d9b0]                           dc.b $00
[0009d9b1]                           dc.b $00
[0009d9b2] 0009d128                  dc.l BUBBLE_05
[0009d9b6]                           dc.b $00
[0009d9b7]                           dc.b $00
[0009d9b8]                           dc.b $00
[0009d9b9]                           dc.b $00
A_3DBUTTON30:
[0009d9ba] 0005a4e2                  dc.l A_3Dbutton
[0009d9be]                           dc.w $09f1
[0009d9c0]                           dc.w $0178
[0009d9c2] 00059318                  dc.l Auo_string
[0009d9c6] 0009d1c8                  dc.l TEXT_12
[0009d9ca]                           dc.b $00
[0009d9cb]                           dc.b $00
[0009d9cc]                           dc.b $00
[0009d9cd]                           dc.b $00
[0009d9ce]                           dc.b $00
[0009d9cf]                           dc.b $00
[0009d9d0]                           dc.b $00
[0009d9d1]                           dc.b $00
[0009d9d2]                           dc.b $00
[0009d9d3]                           dc.b $00
[0009d9d4]                           dc.b $00
[0009d9d5]                           dc.b $00
[0009d9d6]                           dc.b $00
[0009d9d7]                           dc.b $00
[0009d9d8]                           dc.b $00
[0009d9d9]                           dc.b $00
A_3DBUTTON31:
[0009d9da] 0005a4e2                  dc.l A_3Dbutton
[0009d9de]                           dc.w $09f1
[0009d9e0]                           dc.w $0178
[0009d9e2] 00059318                  dc.l Auo_string
[0009d9e6] 0009d1d4                  dc.l TEXT_13
[0009d9ea]                           dc.b $00
[0009d9eb]                           dc.b $00
[0009d9ec]                           dc.b $00
[0009d9ed]                           dc.b $00
[0009d9ee]                           dc.b $00
[0009d9ef]                           dc.b $00
[0009d9f0]                           dc.b $00
[0009d9f1]                           dc.b $00
[0009d9f2]                           dc.b $00
[0009d9f3]                           dc.b $00
[0009d9f4]                           dc.b $00
[0009d9f5]                           dc.b $00
[0009d9f6]                           dc.b $00
[0009d9f7]                           dc.b $00
[0009d9f8]                           dc.b $00
[0009d9f9]                           dc.b $00
A_3DBUTTON32:
[0009d9fa] 0005a4e2                  dc.l A_3Dbutton
[0009d9fe]                           dc.w $09f1
[0009da00]                           dc.w $0178
[0009da02] 00059318                  dc.l Auo_string
[0009da06] 0009d254                  dc.l TEXT_24
[0009da0a]                           dc.b $00
[0009da0b]                           dc.b $00
[0009da0c]                           dc.b $00
[0009da0d]                           dc.b $00
[0009da0e]                           dc.b $00
[0009da0f]                           dc.b $00
[0009da10]                           dc.b $00
[0009da11]                           dc.b $00
[0009da12]                           dc.b $00
[0009da13]                           dc.b $00
[0009da14]                           dc.b $00
[0009da15]                           dc.b $00
[0009da16]                           dc.b $00
[0009da17]                           dc.b $00
[0009da18]                           dc.b $00
[0009da19]                           dc.b $00
A_3DBUTTON33:
[0009da1a] 0005a4e2                  dc.l A_3Dbutton
[0009da1e]                           dc.w $09f1
[0009da20]                           dc.w $0178
[0009da22] 00059318                  dc.l Auo_string
[0009da26] 0009d2a1                  dc.l TEXT_32
[0009da2a]                           dc.b $00
[0009da2b]                           dc.b $00
[0009da2c]                           dc.b $00
[0009da2d]                           dc.b $00
[0009da2e]                           dc.b $00
[0009da2f]                           dc.b $00
[0009da30]                           dc.b $00
[0009da31]                           dc.b $00
[0009da32]                           dc.b $00
[0009da33]                           dc.b $00
[0009da34]                           dc.b $00
[0009da35]                           dc.b $00
[0009da36]                           dc.b $00
[0009da37]                           dc.b $00
[0009da38]                           dc.b $00
[0009da39]                           dc.b $00
A_3DBUTTON34:
[0009da3a] 0005a4e2                  dc.l A_3Dbutton
[0009da3e]                           dc.w $09f1
[0009da40]                           dc.w $0178
[0009da42] 00059318                  dc.l Auo_string
[0009da46] 0009d2ab                  dc.l TEXT_33
[0009da4a]                           dc.b $00
[0009da4b]                           dc.b $00
[0009da4c]                           dc.b $00
[0009da4d]                           dc.b $00
[0009da4e]                           dc.b $00
[0009da4f]                           dc.b $00
[0009da50]                           dc.b $00
[0009da51]                           dc.b $00
[0009da52]                           dc.b $00
[0009da53]                           dc.b $00
[0009da54]                           dc.b $00
[0009da55]                           dc.b $00
[0009da56]                           dc.b $00
[0009da57]                           dc.b $00
[0009da58]                           dc.b $00
[0009da59]                           dc.b $00
A_3DBUTTON35:
[0009da5a] 0005a4e2                  dc.l A_3Dbutton
[0009da5e]                           dc.w $09f1
[0009da60]                           dc.w $0178
[0009da62] 00059318                  dc.l Auo_string
[0009da66] 0009d2b8                  dc.l TEXT_34
[0009da6a]                           dc.b $00
[0009da6b]                           dc.b $00
[0009da6c]                           dc.b $00
[0009da6d]                           dc.b $00
[0009da6e]                           dc.b $00
[0009da6f]                           dc.b $00
[0009da70]                           dc.b $00
[0009da71]                           dc.b $00
[0009da72]                           dc.b $00
[0009da73]                           dc.b $00
[0009da74]                           dc.b $00
[0009da75]                           dc.b $00
[0009da76]                           dc.b $00
[0009da77]                           dc.b $00
[0009da78]                           dc.b $00
[0009da79]                           dc.b $00
A_3DBUTTON36:
[0009da7a] 0005a4e2                  dc.l A_3Dbutton
[0009da7e]                           dc.w $09f1
[0009da80]                           dc.w $0178
[0009da82] 00059318                  dc.l Auo_string
[0009da86] 0009d2c1                  dc.l TEXT_35
[0009da8a]                           dc.b $00
[0009da8b]                           dc.b $00
[0009da8c]                           dc.b $00
[0009da8d]                           dc.b $00
[0009da8e]                           dc.b $00
[0009da8f]                           dc.b $00
[0009da90]                           dc.b $00
[0009da91]                           dc.b $00
[0009da92]                           dc.b $00
[0009da93]                           dc.b $00
[0009da94]                           dc.b $00
[0009da95]                           dc.b $00
[0009da96]                           dc.b $00
[0009da97]                           dc.b $00
[0009da98]                           dc.b $00
[0009da99]                           dc.b $00
A_3DBUTTON37:
[0009da9a] 0005a4e2                  dc.l A_3Dbutton
[0009da9e]                           dc.w $09f1
[0009daa0]                           dc.w $0178
[0009daa2] 00059318                  dc.l Auo_string
[0009daa6] 0009d2e5                  dc.l TEXT_36
[0009daaa]                           dc.b $00
[0009daab]                           dc.b $00
[0009daac]                           dc.b $00
[0009daad]                           dc.b $00
[0009daae]                           dc.b $00
[0009daaf]                           dc.b $00
[0009dab0]                           dc.b $00
[0009dab1]                           dc.b $00
[0009dab2]                           dc.b $00
[0009dab3]                           dc.b $00
[0009dab4]                           dc.b $00
[0009dab5]                           dc.b $00
[0009dab6]                           dc.b $00
[0009dab7]                           dc.b $00
[0009dab8]                           dc.b $00
[0009dab9]                           dc.b $00
A_3DBUTTON38:
[0009daba] 0005a4e2                  dc.l A_3Dbutton
[0009dabe]                           dc.w $09f1
[0009dac0]                           dc.w $0178
[0009dac2] 00059318                  dc.l Auo_string
[0009dac6] 0009d31f                  dc.l TEXT_37
[0009daca]                           dc.b $00
[0009dacb]                           dc.b $00
[0009dacc]                           dc.b $00
[0009dacd]                           dc.b $00
[0009dace]                           dc.b $00
[0009dacf]                           dc.b $00
[0009dad0]                           dc.b $00
[0009dad1]                           dc.b $00
[0009dad2]                           dc.b $00
[0009dad3]                           dc.b $00
[0009dad4]                           dc.b $00
[0009dad5]                           dc.b $00
[0009dad6]                           dc.b $00
[0009dad7]                           dc.b $00
[0009dad8]                           dc.b $00
[0009dad9]                           dc.b $00
A_3DBUTTON39:
[0009dada] 0005a4e2                  dc.l A_3Dbutton
[0009dade]                           dc.w $09f1
[0009dae0]                           dc.w $0178
[0009dae2] 00059318                  dc.l Auo_string
[0009dae6] 0009d344                  dc.l TEXT_38
[0009daea]                           dc.b $00
[0009daeb]                           dc.b $00
[0009daec]                           dc.b $00
[0009daed]                           dc.b $00
[0009daee]                           dc.b $00
[0009daef]                           dc.b $00
[0009daf0]                           dc.b $00
[0009daf1]                           dc.b $00
[0009daf2]                           dc.b $00
[0009daf3]                           dc.b $00
[0009daf4]                           dc.b $00
[0009daf5]                           dc.b $00
[0009daf6]                           dc.b $00
[0009daf7]                           dc.b $00
[0009daf8]                           dc.b $00
[0009daf9]                           dc.b $00
A_3DBUTTON40:
[0009dafa] 0005a4e2                  dc.l A_3Dbutton
[0009dafe]                           dc.w $09f1
[0009db00]                           dc.w $0178
[0009db02] 00059318                  dc.l Auo_string
[0009db06] 0009d34e                  dc.l TEXT_39
[0009db0a]                           dc.b $00
[0009db0b]                           dc.b $00
[0009db0c]                           dc.b $00
[0009db0d]                           dc.b $00
[0009db0e]                           dc.b $00
[0009db0f]                           dc.b $00
[0009db10]                           dc.b $00
[0009db11]                           dc.b $00
[0009db12]                           dc.b $00
[0009db13]                           dc.b $00
[0009db14]                           dc.b $00
[0009db15]                           dc.b $00
[0009db16]                           dc.b $00
[0009db17]                           dc.b $00
[0009db18]                           dc.b $00
[0009db19]                           dc.b $00
A_3DBUTTON41:
[0009db1a] 0005a4e2                  dc.l A_3Dbutton
[0009db1e]                           dc.w $09f1
[0009db20]                           dc.w $0178
[0009db22] 00059318                  dc.l Auo_string
[0009db26] 0009d35b                  dc.l TEXT_40
[0009db2a]                           dc.b $00
[0009db2b]                           dc.b $00
[0009db2c]                           dc.b $00
[0009db2d]                           dc.b $00
[0009db2e]                           dc.b $00
[0009db2f]                           dc.b $00
[0009db30]                           dc.b $00
[0009db31]                           dc.b $00
[0009db32]                           dc.b $00
[0009db33]                           dc.b $00
[0009db34]                           dc.b $00
[0009db35]                           dc.b $00
[0009db36]                           dc.b $00
[0009db37]                           dc.b $00
[0009db38]                           dc.b $00
[0009db39]                           dc.b $00
A_3DBUTTON42:
[0009db3a] 0005a4e2                  dc.l A_3Dbutton
[0009db3e]                           dc.w $09f1
[0009db40]                           dc.w $0178
[0009db42] 00059318                  dc.l Auo_string
[0009db46] 0009d366                  dc.l TEXT_41
[0009db4a]                           dc.b $00
[0009db4b]                           dc.b $00
[0009db4c]                           dc.b $00
[0009db4d]                           dc.b $00
[0009db4e]                           dc.b $00
[0009db4f]                           dc.b $00
[0009db50]                           dc.b $00
[0009db51]                           dc.b $00
[0009db52]                           dc.b $00
[0009db53]                           dc.b $00
[0009db54]                           dc.b $00
[0009db55]                           dc.b $00
[0009db56]                           dc.b $00
[0009db57]                           dc.b $00
[0009db58]                           dc.b $00
[0009db59]                           dc.b $00
A_3DBUTTON43:
[0009db5a] 0005a4e2                  dc.l A_3Dbutton
[0009db5e]                           dc.w $09f1
[0009db60]                           dc.w $0178
[0009db62] 00059318                  dc.l Auo_string
[0009db66] 0009d372                  dc.l TEXT_42
[0009db6a]                           dc.b $00
[0009db6b]                           dc.b $00
[0009db6c]                           dc.b $00
[0009db6d]                           dc.b $00
[0009db6e]                           dc.b $00
[0009db6f]                           dc.b $00
[0009db70]                           dc.b $00
[0009db71]                           dc.b $00
[0009db72]                           dc.b $00
[0009db73]                           dc.b $00
[0009db74]                           dc.b $00
[0009db75]                           dc.b $00
[0009db76]                           dc.b $00
[0009db77]                           dc.b $00
[0009db78]                           dc.b $00
[0009db79]                           dc.b $00
A_3DBUTTON44:
[0009db7a] 0005a4e2                  dc.l A_3Dbutton
[0009db7e]                           dc.w $09f1
[0009db80]                           dc.w $0178
[0009db82] 00059318                  dc.l Auo_string
[0009db86] 0009d37d                  dc.l TEXT_43
[0009db8a]                           dc.b $00
[0009db8b]                           dc.b $00
[0009db8c]                           dc.b $00
[0009db8d]                           dc.b $00
[0009db8e]                           dc.b $00
[0009db8f]                           dc.b $00
[0009db90]                           dc.b $00
[0009db91]                           dc.b $00
[0009db92]                           dc.b $00
[0009db93]                           dc.b $00
[0009db94]                           dc.b $00
[0009db95]                           dc.b $00
[0009db96]                           dc.b $00
[0009db97]                           dc.b $00
[0009db98]                           dc.b $00
[0009db99]                           dc.b $00
A_3DBUTTON45:
[0009db9a] 0005a4e2                  dc.l A_3Dbutton
[0009db9e]                           dc.w $09f1
[0009dba0]                           dc.w $0178
[0009dba2] 00059318                  dc.l Auo_string
[0009dba6] 0009d388                  dc.l TEXT_44
[0009dbaa]                           dc.b $00
[0009dbab]                           dc.b $00
[0009dbac]                           dc.b $00
[0009dbad]                           dc.b $00
[0009dbae]                           dc.b $00
[0009dbaf]                           dc.b $00
[0009dbb0]                           dc.b $00
[0009dbb1]                           dc.b $00
[0009dbb2]                           dc.b $00
[0009dbb3]                           dc.b $00
[0009dbb4]                           dc.b $00
[0009dbb5]                           dc.b $00
[0009dbb6]                           dc.b $00
[0009dbb7]                           dc.b $00
[0009dbb8]                           dc.b $00
[0009dbb9]                           dc.b $00
A_ARROWS02:
[0009dbba] 0005b212                  dc.l A_arrows
[0009dbbe]                           dc.w $1301
[0009dbc0]                           dc.b $00
[0009dbc1]                           dc.b $01
[0009dbc2]                           dc.b $00
[0009dbc3]                           dc.b $00
[0009dbc4]                           dc.b $00
[0009dbc5]                           dc.b $00
[0009dbc6]                           dc.b $00
[0009dbc7]                           dc.b $00
[0009dbc8]                           dc.b $00
[0009dbc9]                           dc.b $00
[0009dbca]                           dc.b $00
[0009dbcb]                           dc.b $00
[0009dbcc]                           dc.b $00
[0009dbcd]                           dc.b $00
[0009dbce]                           dc.b $00
[0009dbcf]                           dc.b $00
[0009dbd0]                           dc.b $00
[0009dbd1]                           dc.b $00
[0009dbd2]                           dc.b $00
[0009dbd3]                           dc.b $00
[0009dbd4]                           dc.b $00
[0009dbd5]                           dc.b $00
[0009dbd6]                           dc.b $00
[0009dbd7]                           dc.b $00
[0009dbd8]                           dc.b $00
[0009dbd9]                           dc.b $00
A_CHECKBOX01:
[0009dbda] 000593fc                  dc.l A_checkbox
[0009dbde]                           dc.b $00
[0009dbdf]                           dc.b $00
[0009dbe0]                           dc.b $00
[0009dbe1]                           dc.b $01
[0009dbe2] 00059318                  dc.l Auo_string
[0009dbe6] 0009d1e5                  dc.l TEXT_15
[0009dbea]                           dc.b $00
[0009dbeb]                           dc.b $00
[0009dbec]                           dc.b $00
[0009dbed]                           dc.b $00
[0009dbee]                           dc.b $00
[0009dbef]                           dc.b $00
[0009dbf0]                           dc.b $00
[0009dbf1]                           dc.b $00
[0009dbf2] 0009d0e3                  dc.l BUBBLE_04
[0009dbf6]                           dc.b $00
[0009dbf7]                           dc.b $00
[0009dbf8]                           dc.b $00
[0009dbf9]                           dc.b $00
_C4_IC_REF:
[0009dbfa]                           dc.b $00
[0009dbfb]                           dc.b $04
[0009dbfc] 0009d39a                  dc.l $0009d39a ; no symbol found
[0009dc00] 0009d59a                  dc.l DATAS_06
[0009dc04]                           dc.b $00
[0009dc05]                           dc.b $00
[0009dc06]                           dc.b $00
[0009dc07]                           dc.b $00
[0009dc08]                           dc.b $00
[0009dc09]                           dc.b $00
[0009dc0a]                           dc.b $00
[0009dc0b]                           dc.b $00
[0009dc0c]                           dc.b $00
[0009dc0d]                           dc.b $00
[0009dc0e]                           dc.b $00
[0009dc0f]                           dc.b $00
_MSK_IC_REF:
[0009dc10]                           dc.b $00
[0009dc11]                           dc.b $00
[0009dc12]                           dc.b $00
[0009dc13]                           dc.b $00
[0009dc14]                           dc.b $00
[0009dc15]                           dc.b $01
[0009dc16]                           dc.b $00
[0009dc17]                           dc.b $00
[0009dc18]                           dc.b $00
[0009dc19]                           dc.b $03
[0009dc1a]                           dc.w $8000
[0009dc1c]                           dc.b $00
[0009dc1d]                           dc.b $07
[0009dc1e]                           dc.w $c000
[0009dc20]                           dc.b $00
[0009dc21]                           dc.b $0f
[0009dc22]                           dc.w $e000
[0009dc24]                           dc.b $00
[0009dc25]                           dc.b $1f
[0009dc26]                           dc.w $f000
[0009dc28]                           dc.b $00
[0009dc29]                           dc.b $3e
[0009dc2a]                           dc.w $f800
[0009dc2c]                           dc.b $00
[0009dc2d]                           dc.b $7d
[0009dc2e]                           dc.w $7c00
[0009dc30]                           dc.b $00
[0009dc31]                           dc.b $fa
[0009dc32]                           dc.w $be00
[0009dc34]                           dc.w $01f5
[0009dc36]                           dc.w $5f00
[0009dc38]                           dc.w $03fa
[0009dc3a]                           dc.w $bf80
[0009dc3c]                           dc.w $07fd
[0009dc3e]                           dc.w $7fc0
[0009dc40]                           dc.w $0ffe
[0009dc42]                           dc.w $ffe0
[0009dc44]                           dc.w $1fff
[0009dc46]                           dc.w $fff0
[0009dc48]                           dc.w $3fff
[0009dc4a]                           dc.w $fff8
[0009dc4c]                           dc.w $7fff
[0009dc4e]                           dc.w $fffc
[0009dc50]                           dc.w $3fff
[0009dc52]                           dc.w $fffe
[0009dc54]                           dc.w $1fff
[0009dc56]                           dc.w $fffc
[0009dc58]                           dc.w $0fff
[0009dc5a]                           dc.w $fffe
[0009dc5c]                           dc.w $07ff
[0009dc5e]                           dc.w $fffe
[0009dc60]                           dc.w $03ff
[0009dc62]                           dc.w $fffe
[0009dc64]                           dc.w $01ff
[0009dc66]                           dc.w $fffe
[0009dc68]                           dc.b $00
[0009dc69]                           dc.b $ff
[0009dc6a]                           dc.w $fffe
[0009dc6c]                           dc.b $00
[0009dc6d]                           dc.b $7f
[0009dc6e]                           dc.w $fffe
[0009dc70]                           dc.b $00
[0009dc71]                           dc.b $3f
[0009dc72]                           dc.w $fffe
[0009dc74]                           dc.b $00
[0009dc75]                           dc.b $1f
[0009dc76]                           dc.w $fffe
[0009dc78]                           dc.b $00
[0009dc79]                           dc.b $0f
[0009dc7a]                           dc.w $fbfe
[0009dc7c]                           dc.b $00
[0009dc7d]                           dc.b $07
[0009dc7e]                           dc.w $f000
[0009dc80]                           dc.b $00
[0009dc81]                           dc.b $03
[0009dc82]                           dc.w $e000
[0009dc84]                           dc.b $00
[0009dc85]                           dc.b $01
[0009dc86]                           dc.w $c000
[0009dc88]                           dc.b $00
[0009dc89]                           dc.b $00
[0009dc8a]                           dc.w $8000
[0009dc8c]                           dc.b $00
[0009dc8d]                           dc.b $00
[0009dc8e]                           dc.b $00
[0009dc8f]                           dc.b $00
_DAT_IC_REF:
[0009dc90]                           dc.b $00
[0009dc91]                           dc.b $00
[0009dc92]                           dc.b $00
[0009dc93]                           dc.b $00
[0009dc94]                           dc.b $00
[0009dc95]                           dc.b $01
[0009dc96]                           dc.b $00
[0009dc97]                           dc.b $00
[0009dc98]                           dc.b $00
[0009dc99]                           dc.b $02
[0009dc9a]                           dc.w $8000
[0009dc9c]                           dc.b $00
[0009dc9d]                           dc.b $04
[0009dc9e]                           dc.w $4000
[0009dca0]                           dc.b $00
[0009dca1]                           dc.b $08
[0009dca2]                           dc.w $2000
[0009dca4]                           dc.b $00
[0009dca5]                           dc.b $11
[0009dca6]                           dc.w $1000
[0009dca8]                           dc.b $00
[0009dca9]                           dc.b $22
[0009dcaa]                           dc.w $8800
[0009dcac]                           dc.b $00
[0009dcad]                           dc.b $45
[0009dcae]                           dc.w $4400
[0009dcb0]                           dc.b $00
[0009dcb1]                           dc.b $8a
[0009dcb2]                           dc.w $a200
[0009dcb4]                           dc.w $0115
[0009dcb6]                           dc.w $5100
[0009dcb8]                           dc.w $039a
[0009dcba]                           dc.w $a080
[0009dcbc]                           dc.w $07cd
[0009dcbe]                           dc.w $4840
[0009dcc0]                           dc.w $0f86
[0009dcc2]                           dc.w $9820
[0009dcc4]                           dc.w $1703
[0009dcc6]                           dc.w $3210
[0009dcc8]                           dc.w $2200
[0009dcca]                           dc.w $6408
[0009dccc]                           dc.w $4000
[0009dcce]                           dc.w $c904
[0009dcd0]                           dc.w $2200
[0009dcd2]                           dc.w $0202
[0009dcd4]                           dc.w $1101
[0009dcd6]                           dc.w $f404
[0009dcd8]                           dc.w $0886
[0009dcda]                           dc.w $0bfe
[0009dcdc]                           dc.w $044d
[0009dcde]                           dc.w $e600
[0009dce0]                           dc.w $022a
[0009dce2]                           dc.w $3200
[0009dce4]                           dc.w $011f
[0009dce6]                           dc.w $fa00
[0009dce8]                           dc.b $00
[0009dce9]                           dc.b $89
[0009dcea]                           dc.w $e200
[0009dcec]                           dc.b $00
[0009dced]                           dc.b $44
[0009dcee]                           dc.w $0200
[0009dcf0]                           dc.b $00
[0009dcf1]                           dc.b $23
[0009dcf2]                           dc.w $0200
[0009dcf4]                           dc.b $00
[0009dcf5]                           dc.b $11
[0009dcf6]                           dc.w $fe00
[0009dcf8]                           dc.b $00
[0009dcf9]                           dc.b $08
[0009dcfa]                           dc.w $0bfe
[0009dcfc]                           dc.b $00
[0009dcfd]                           dc.b $04
[0009dcfe]                           dc.w $1000
[0009dd00]                           dc.b $00
[0009dd01]                           dc.b $02
[0009dd02]                           dc.w $2000
[0009dd04]                           dc.b $00
[0009dd05]                           dc.b $01
[0009dd06]                           dc.w $4000
[0009dd08]                           dc.b $00
[0009dd09]                           dc.b $00
[0009dd0a]                           dc.w $8000
[0009dd0c]                           dc.b $00
[0009dd0d]                           dc.b $00
[0009dd0e]                           dc.b $00
[0009dd0f]                           dc.b $00
IC_REF:
[0009dd10] 0009dc10                  dc.l _MSK_IC_REF
[0009dd14] 0009dc90                  dc.l _DAT_IC_REF
[0009dd18] 0009d1ec                  dc.l TEXT_16
[0009dd1c]                           dc.w $1000
[0009dd1e]                           dc.b $00
[0009dd1f]                           dc.b $00
[0009dd20]                           dc.b $00
[0009dd21]                           dc.b $00
[0009dd22]                           dc.b $00
[0009dd23]                           dc.b $14
[0009dd24]                           dc.b $00
[0009dd25]                           dc.b $00
[0009dd26]                           dc.b $00
[0009dd27]                           dc.b $20
[0009dd28]                           dc.b $00
[0009dd29]                           dc.b $20
[0009dd2a]                           dc.b $00
[0009dd2b]                           dc.b $00
[0009dd2c]                           dc.b $00
[0009dd2d]                           dc.b $20
[0009dd2e]                           dc.b $00
[0009dd2f]                           dc.b $48
[0009dd30]                           dc.b $00
[0009dd31]                           dc.b $08
[0009dd32] 0009dbfa                  dc.l _C4_IC_REF
REF_TYPE:
[0009dd36]                           dc.w $ffff
[0009dd38]                           dc.b $00
[0009dd39]                           dc.b $01
[0009dd3a]                           dc.b $00
[0009dd3b]                           dc.b $56
[0009dd3c]                           dc.b $00
[0009dd3d]                           dc.b $14
[0009dd3e]                           dc.b $00
[0009dd3f]                           dc.b $00
[0009dd40]                           dc.b $00
[0009dd41]                           dc.b $20
[0009dd42]                           dc.b $00
[0009dd43]                           dc.b $ff
[0009dd44]                           dc.w $1100
[0009dd46]                           dc.b $00
[0009dd47]                           dc.b $00
[0009dd48]                           dc.b $00
[0009dd49]                           dc.b $00
[0009dd4a]                           dc.b $00
[0009dd4b]                           dc.b $0d
[0009dd4c]                           dc.b $00
[0009dd4d]                           dc.b $05
_01_REF_TYPE:
[0009dd4e]                           dc.b $00
[0009dd4f]                           dc.b $22
[0009dd50]                           dc.b $00
[0009dd51]                           dc.b $02
[0009dd52]                           dc.b $00
[0009dd53]                           dc.b $20
[0009dd54]                           dc.b $00
[0009dd55]                           dc.b $14
[0009dd56]                           dc.b $00
[0009dd57]                           dc.b $80
[0009dd58]                           dc.b $00
[0009dd59]                           dc.b $20
[0009dd5a]                           dc.b $00
[0009dd5b]                           dc.b $ff
[0009dd5c]                           dc.w $1101
[0009dd5e]                           dc.b $00
[0009dd5f]                           dc.b $00
[0009dd60]                           dc.b $00
[0009dd61]                           dc.b $03
[0009dd62]                           dc.b $00
[0009dd63]                           dc.b $14
[0009dd64]                           dc.b $00
[0009dd65]                           dc.b $08
_02_REF_TYPE:
[0009dd66]                           dc.b $00
[0009dd67]                           dc.b $04
[0009dd68]                           dc.w $ffff
[0009dd6a]                           dc.w $ffff
[0009dd6c]                           dc.b $00
[0009dd6d]                           dc.b $1c
[0009dd6e]                           dc.b $00
[0009dd6f]                           dc.b $01
[0009dd70]                           dc.b $00
[0009dd71]                           dc.b $00
[0009dd72] 0009d305                  dc.l TEXT_365
[0009dd76]                           dc.b $00
[0009dd77]                           dc.b $00
[0009dd78]                           dc.b $00
[0009dd79]                           dc.b $00
[0009dd7a]                           dc.b $00
[0009dd7b]                           dc.b $0a
[0009dd7c]                           dc.b $00
[0009dd7d]                           dc.b $01
_02aREF_TYPE:
[0009dd7e]                           dc.b $00
[0009dd7f]                           dc.b $00
[0009dd80]                           dc.b $00
[0009dd81]                           dc.b $00
[0009dd82]                           dc.b $00
[0009dd83]                           dc.b $00
[0009dd84]                           dc.b $00
[0009dd85]                           dc.b $00
[0009dd86]                           dc.w $8000
[0009dd88]                           dc.b $00
[0009dd89]                           dc.b $00
[0009dd8a]                           dc.b $00
[0009dd8b]                           dc.b $00
[0009dd8c]                           dc.b $00
[0009dd8d]                           dc.b $06
[0009dd8e]                           dc.b $00
[0009dd8f]                           dc.b $00
[0009dd90]                           dc.b $00
[0009dd91]                           dc.b $00
[0009dd92]                           dc.b $00
[0009dd93]                           dc.b $00
[0009dd94]                           dc.b $00
[0009dd95]                           dc.b $00
_04_REF_TYPE:
[0009dd96]                           dc.b $00
[0009dd97]                           dc.b $06
[0009dd98]                           dc.w $ffff
[0009dd9a]                           dc.w $ffff
[0009dd9c]                           dc.b $00
[0009dd9d]                           dc.b $1c
[0009dd9e]                           dc.b $00
[0009dd9f]                           dc.b $01
[0009dda0]                           dc.b $00
[0009dda1]                           dc.b $00
[0009dda2] 0009d168                  dc.l TEXT_01
[0009dda6]                           dc.b $00
[0009dda7]                           dc.b $0a
[0009dda8]                           dc.b $00
[0009dda9]                           dc.b $00
[0009ddaa]                           dc.b $00
[0009ddab]                           dc.b $0a
[0009ddac]                           dc.b $00
[0009ddad]                           dc.b $01
_04aREF_TYPE:
[0009ddae]                           dc.b $00
[0009ddaf]                           dc.b $00
[0009ddb0]                           dc.b $00
[0009ddb1]                           dc.b $00
[0009ddb2]                           dc.b $00
[0009ddb3]                           dc.b $00
[0009ddb4]                           dc.b $00
[0009ddb5]                           dc.b $00
[0009ddb6]                           dc.w $8000
[0009ddb8]                           dc.b $00
[0009ddb9]                           dc.b $00
[0009ddba]                           dc.b $00
[0009ddbb]                           dc.b $00
[0009ddbc]                           dc.b $00
[0009ddbd]                           dc.b $0e
[0009ddbe]                           dc.b $00
[0009ddbf]                           dc.b $00
[0009ddc0]                           dc.b $00
[0009ddc1]                           dc.b $00
[0009ddc2]                           dc.b $00
[0009ddc3]                           dc.b $00
[0009ddc4]                           dc.b $00
[0009ddc5]                           dc.b $00
_06_REF_TYPE:
[0009ddc6]                           dc.b $00
[0009ddc7]                           dc.b $08
[0009ddc8]                           dc.w $ffff
[0009ddca]                           dc.w $ffff
[0009ddcc]                           dc.b $00
[0009ddcd]                           dc.b $1c
[0009ddce]                           dc.b $00
[0009ddcf]                           dc.b $01
[0009ddd0]                           dc.b $00
[0009ddd1]                           dc.b $00
[0009ddd2] 0009d2f4                  dc.l TEXT_360
[0009ddd6]                           dc.b $00
[0009ddd7]                           dc.b $00
[0009ddd8]                           dc.b $00
[0009ddd9]                           dc.b $01
[0009ddda]                           dc.b $00
[0009dddb]                           dc.b $0a
[0009dddc]                           dc.b $00
[0009dddd]                           dc.b $01
_06aREF_TYPE:
[0009ddde]                           dc.b $00
[0009dddf]                           dc.b $00
[0009dde0]                           dc.b $00
[0009dde1]                           dc.b $00
[0009dde2]                           dc.b $00
[0009dde3]                           dc.b $00
[0009dde4]                           dc.b $00
[0009dde5]                           dc.b $00
[0009dde6]                           dc.w $8000
[0009dde8]                           dc.b $00
[0009dde9]                           dc.b $00
[0009ddea]                           dc.b $00
[0009ddeb]                           dc.b $00
[0009ddec]                           dc.b $00
[0009dded]                           dc.b $07
[0009ddee]                           dc.b $00
[0009ddef]                           dc.b $00
[0009ddf0]                           dc.b $00
[0009ddf1]                           dc.b $00
[0009ddf2]                           dc.b $00
[0009ddf3]                           dc.b $00
[0009ddf4]                           dc.b $00
[0009ddf5]                           dc.b $00
_08_REF_TYPE:
[0009ddf6]                           dc.b $00
[0009ddf7]                           dc.b $0a
[0009ddf8]                           dc.w $ffff
[0009ddfa]                           dc.w $ffff
[0009ddfc]                           dc.b $00
[0009ddfd]                           dc.b $1c
[0009ddfe]                           dc.b $00
[0009ddff]                           dc.b $01
[0009de00]                           dc.b $00
[0009de01]                           dc.b $00
[0009de02] 0009d189                  dc.l TEXT_05
[0009de06]                           dc.b $00
[0009de07]                           dc.b $0a
[0009de08]                           dc.b $00
[0009de09]                           dc.b $01
[0009de0a]                           dc.b $00
[0009de0b]                           dc.b $0a
[0009de0c]                           dc.b $00
[0009de0d]                           dc.b $01
_08aREF_TYPE:
[0009de0e]                           dc.b $00
[0009de0f]                           dc.b $00
[0009de10]                           dc.b $00
[0009de11]                           dc.b $00
[0009de12]                           dc.b $00
[0009de13]                           dc.b $00
[0009de14]                           dc.b $00
[0009de15]                           dc.b $00
[0009de16]                           dc.w $8000
[0009de18]                           dc.b $00
[0009de19]                           dc.b $00
[0009de1a]                           dc.b $00
[0009de1b]                           dc.b $00
[0009de1c]                           dc.b $00
[0009de1d]                           dc.b $14
[0009de1e]                           dc.b $00
[0009de1f]                           dc.b $00
[0009de20]                           dc.b $00
[0009de21]                           dc.b $00
[0009de22]                           dc.b $00
[0009de23]                           dc.b $00
[0009de24]                           dc.b $00
[0009de25]                           dc.b $00
_10_REF_TYPE:
[0009de26]                           dc.b $00
[0009de27]                           dc.b $0c
[0009de28]                           dc.w $ffff
[0009de2a]                           dc.w $ffff
[0009de2c]                           dc.b $00
[0009de2d]                           dc.b $1c
[0009de2e]                           dc.b $00
[0009de2f]                           dc.b $01
[0009de30]                           dc.b $00
[0009de31]                           dc.b $00
[0009de32] 0009d2db                  dc.l TEXT_359
[0009de36]                           dc.b $00
[0009de37]                           dc.b $00
[0009de38]                           dc.b $00
[0009de39]                           dc.b $02
[0009de3a]                           dc.b $00
[0009de3b]                           dc.b $0a
[0009de3c]                           dc.b $00
[0009de3d]                           dc.b $01
_10aREF_TYPE:
[0009de3e]                           dc.b $00
[0009de3f]                           dc.b $00
[0009de40]                           dc.b $00
[0009de41]                           dc.b $00
[0009de42]                           dc.b $00
[0009de43]                           dc.b $00
[0009de44]                           dc.b $00
[0009de45]                           dc.b $00
[0009de46]                           dc.w $8000
[0009de48]                           dc.b $00
[0009de49]                           dc.b $00
[0009de4a]                           dc.b $00
[0009de4b]                           dc.b $00
[0009de4c]                           dc.b $00
[0009de4d]                           dc.b $15
[0009de4e]                           dc.b $00
[0009de4f]                           dc.b $00
[0009de50]                           dc.b $00
[0009de51]                           dc.b $00
[0009de52]                           dc.b $00
[0009de53]                           dc.b $00
[0009de54]                           dc.b $00
[0009de55]                           dc.b $00
_12_REF_TYPE:
[0009de56]                           dc.b $00
[0009de57]                           dc.b $0e
[0009de58]                           dc.w $ffff
[0009de5a]                           dc.w $ffff
[0009de5c]                           dc.b $00
[0009de5d]                           dc.b $1c
[0009de5e]                           dc.b $00
[0009de5f]                           dc.b $01
[0009de60]                           dc.b $00
[0009de61]                           dc.b $00
[0009de62] 0009d191                  dc.l TEXT_06
[0009de66]                           dc.b $00
[0009de67]                           dc.b $0a
[0009de68]                           dc.b $00
[0009de69]                           dc.b $02
[0009de6a]                           dc.b $00
[0009de6b]                           dc.b $0a
[0009de6c]                           dc.b $00
[0009de6d]                           dc.b $01
_12aREF_TYPE:
[0009de6e]                           dc.b $00
[0009de6f]                           dc.b $00
[0009de70]                           dc.b $00
[0009de71]                           dc.b $00
[0009de72]                           dc.b $00
[0009de73]                           dc.b $00
[0009de74]                           dc.b $00
[0009de75]                           dc.b $00
[0009de76]                           dc.w $8000
[0009de78]                           dc.b $00
[0009de79]                           dc.b $00
[0009de7a]                           dc.b $00
[0009de7b]                           dc.b $00
[0009de7c]                           dc.b $00
[0009de7d]                           dc.b $0f
[0009de7e]                           dc.b $00
[0009de7f]                           dc.b $00
[0009de80]                           dc.b $00
[0009de81]                           dc.b $00
[0009de82]                           dc.b $00
[0009de83]                           dc.b $00
[0009de84]                           dc.b $00
[0009de85]                           dc.b $00
_14_REF_TYPE:
[0009de86]                           dc.b $00
[0009de87]                           dc.b $10
[0009de88]                           dc.w $ffff
[0009de8a]                           dc.w $ffff
[0009de8c]                           dc.b $00
[0009de8d]                           dc.b $1c
[0009de8e]                           dc.b $00
[0009de8f]                           dc.b $01
[0009de90]                           dc.b $00
[0009de91]                           dc.b $00
[0009de92] 0009d32a                  dc.l TEXT_370
[0009de96]                           dc.b $00
[0009de97]                           dc.b $00
[0009de98]                           dc.b $00
[0009de99]                           dc.b $03
[0009de9a]                           dc.b $00
[0009de9b]                           dc.b $0a
[0009de9c]                           dc.b $00
[0009de9d]                           dc.b $01
_14aREF_TYPE:
[0009de9e]                           dc.b $00
[0009de9f]                           dc.b $00
[0009dea0]                           dc.b $00
[0009dea1]                           dc.b $00
[0009dea2]                           dc.b $00
[0009dea3]                           dc.b $00
[0009dea4]                           dc.b $00
[0009dea5]                           dc.b $00
[0009dea6]                           dc.w $8000
[0009dea8]                           dc.b $00
[0009dea9]                           dc.b $00
[0009deaa]                           dc.b $00
[0009deab]                           dc.b $00
[0009deac]                           dc.b $00
[0009dead]                           dc.b $08
[0009deae]                           dc.b $00
[0009deaf]                           dc.b $00
[0009deb0]                           dc.b $00
[0009deb1]                           dc.b $00
[0009deb2]                           dc.b $00
[0009deb3]                           dc.b $00
[0009deb4]                           dc.b $00
[0009deb5]                           dc.b $00
_16_REF_TYPE:
[0009deb6]                           dc.b $00
[0009deb7]                           dc.b $12
[0009deb8]                           dc.w $ffff
[0009deba]                           dc.w $ffff
[0009debc]                           dc.b $00
[0009debd]                           dc.b $1c
[0009debe]                           dc.b $00
[0009debf]                           dc.b $01
[0009dec0]                           dc.b $00
[0009dec1]                           dc.b $00
[0009dec2] 0009d19a                  dc.l TEXT_07
[0009dec6]                           dc.b $00
[0009dec7]                           dc.b $0a
[0009dec8]                           dc.b $00
[0009dec9]                           dc.b $03
[0009deca]                           dc.b $00
[0009decb]                           dc.b $0a
[0009decc]                           dc.b $00
[0009decd]                           dc.b $01
_16aREF_TYPE:
[0009dece]                           dc.b $00
[0009decf]                           dc.b $00
[0009ded0]                           dc.b $00
[0009ded1]                           dc.b $00
[0009ded2]                           dc.b $00
[0009ded3]                           dc.b $00
[0009ded4]                           dc.b $00
[0009ded5]                           dc.b $00
[0009ded6]                           dc.w $8000
[0009ded8]                           dc.b $00
[0009ded9]                           dc.b $00
[0009deda]                           dc.b $00
[0009dedb]                           dc.b $00
[0009dedc]                           dc.b $00
[0009dedd]                           dc.b $10
[0009dede]                           dc.b $00
[0009dedf]                           dc.b $00
[0009dee0]                           dc.b $00
[0009dee1]                           dc.b $00
[0009dee2]                           dc.b $00
[0009dee3]                           dc.b $00
[0009dee4]                           dc.b $00
[0009dee5]                           dc.b $00
_18_REF_TYPE:
[0009dee6]                           dc.b $00
[0009dee7]                           dc.b $14
[0009dee8]                           dc.w $ffff
[0009deea]                           dc.w $ffff
[0009deec]                           dc.b $00
[0009deed]                           dc.b $1c
[0009deee]                           dc.b $00
[0009deef]                           dc.b $01
[0009def0]                           dc.b $00
[0009def1]                           dc.b $00
[0009def2] 0009d2d4                  dc.l TEXT_358
[0009def6]                           dc.b $00
[0009def7]                           dc.b $00
[0009def8]                           dc.b $00
[0009def9]                           dc.b $04
[0009defa]                           dc.b $00
[0009defb]                           dc.b $0a
[0009defc]                           dc.b $00
[0009defd]                           dc.b $01
_18aREF_TYPE:
[0009defe]                           dc.b $00
[0009deff]                           dc.b $00
[0009df00]                           dc.b $00
[0009df01]                           dc.b $00
[0009df02]                           dc.b $00
[0009df03]                           dc.b $00
[0009df04]                           dc.b $00
[0009df05]                           dc.b $00
[0009df06]                           dc.w $8000
[0009df08]                           dc.b $00
[0009df09]                           dc.b $00
[0009df0a]                           dc.b $00
[0009df0b]                           dc.b $00
[0009df0c]                           dc.b $00
[0009df0d]                           dc.b $09
[0009df0e]                           dc.b $00
[0009df0f]                           dc.b $00
[0009df10]                           dc.b $00
[0009df11]                           dc.b $00
[0009df12]                           dc.b $00
[0009df13]                           dc.b $00
[0009df14]                           dc.b $00
[0009df15]                           dc.b $00
_20_REF_TYPE:
[0009df16]                           dc.b $00
[0009df17]                           dc.b $16
[0009df18]                           dc.w $ffff
[0009df1a]                           dc.w $ffff
[0009df1c]                           dc.b $00
[0009df1d]                           dc.b $1c
[0009df1e]                           dc.b $00
[0009df1f]                           dc.b $01
[0009df20]                           dc.b $00
[0009df21]                           dc.b $00
[0009df22] 0009d1a1                  dc.l TEXT_08
[0009df26]                           dc.b $00
[0009df27]                           dc.b $0a
[0009df28]                           dc.b $00
[0009df29]                           dc.b $04
[0009df2a]                           dc.b $00
[0009df2b]                           dc.b $0a
[0009df2c]                           dc.b $00
[0009df2d]                           dc.b $01
_20aREF_TYPE:
[0009df2e]                           dc.b $00
[0009df2f]                           dc.b $00
[0009df30]                           dc.b $00
[0009df31]                           dc.b $00
[0009df32]                           dc.b $00
[0009df33]                           dc.b $00
[0009df34]                           dc.b $00
[0009df35]                           dc.b $00
[0009df36]                           dc.w $8000
[0009df38]                           dc.b $00
[0009df39]                           dc.b $00
[0009df3a]                           dc.b $00
[0009df3b]                           dc.b $00
[0009df3c]                           dc.b $00
[0009df3d]                           dc.b $11
[0009df3e]                           dc.b $00
[0009df3f]                           dc.b $00
[0009df40]                           dc.b $00
[0009df41]                           dc.b $00
[0009df42]                           dc.b $00
[0009df43]                           dc.b $00
[0009df44]                           dc.b $00
[0009df45]                           dc.b $00
_22_REF_TYPE:
[0009df46]                           dc.b $00
[0009df47]                           dc.b $18
[0009df48]                           dc.w $ffff
[0009df4a]                           dc.w $ffff
[0009df4c]                           dc.b $00
[0009df4d]                           dc.b $1c
[0009df4e]                           dc.b $00
[0009df4f]                           dc.b $01
[0009df50]                           dc.b $00
[0009df51]                           dc.b $00
[0009df52] 0009d331                  dc.l TEXT_371
[0009df56]                           dc.b $00
[0009df57]                           dc.b $00
[0009df58]                           dc.b $00
[0009df59]                           dc.b $05
[0009df5a]                           dc.b $00
[0009df5b]                           dc.b $0a
[0009df5c]                           dc.b $00
[0009df5d]                           dc.b $01
_22aREF_TYPE:
[0009df5e]                           dc.b $00
[0009df5f]                           dc.b $00
[0009df60]                           dc.b $00
[0009df61]                           dc.b $00
[0009df62]                           dc.b $00
[0009df63]                           dc.b $00
[0009df64]                           dc.b $00
[0009df65]                           dc.b $00
[0009df66]                           dc.w $8000
[0009df68]                           dc.b $00
[0009df69]                           dc.b $00
[0009df6a]                           dc.b $00
[0009df6b]                           dc.b $00
[0009df6c]                           dc.b $00
[0009df6d]                           dc.b $0a
[0009df6e]                           dc.b $00
[0009df6f]                           dc.b $00
[0009df70]                           dc.b $00
[0009df71]                           dc.b $00
[0009df72]                           dc.b $00
[0009df73]                           dc.b $00
[0009df74]                           dc.b $00
[0009df75]                           dc.b $00
_24_REF_TYPE:
[0009df76]                           dc.b $00
[0009df77]                           dc.b $1a
[0009df78]                           dc.w $ffff
[0009df7a]                           dc.w $ffff
[0009df7c]                           dc.b $00
[0009df7d]                           dc.b $1c
[0009df7e]                           dc.b $00
[0009df7f]                           dc.b $01
[0009df80]                           dc.b $00
[0009df81]                           dc.b $00
[0009df82] 0009d1a8                  dc.l TEXT_09
[0009df86]                           dc.b $00
[0009df87]                           dc.b $0a
[0009df88]                           dc.b $00
[0009df89]                           dc.b $05
[0009df8a]                           dc.b $00
[0009df8b]                           dc.b $0a
[0009df8c]                           dc.b $00
[0009df8d]                           dc.b $01
_24aREF_TYPE:
[0009df8e]                           dc.b $00
[0009df8f]                           dc.b $00
[0009df90]                           dc.b $00
[0009df91]                           dc.b $00
[0009df92]                           dc.b $00
[0009df93]                           dc.b $00
[0009df94]                           dc.b $00
[0009df95]                           dc.b $00
[0009df96]                           dc.w $8000
[0009df98]                           dc.b $00
[0009df99]                           dc.b $00
[0009df9a]                           dc.b $00
[0009df9b]                           dc.b $00
[0009df9c]                           dc.b $00
[0009df9d]                           dc.b $12
[0009df9e]                           dc.b $00
[0009df9f]                           dc.b $00
[0009dfa0]                           dc.b $00
[0009dfa1]                           dc.b $00
[0009dfa2]                           dc.b $00
[0009dfa3]                           dc.b $00
[0009dfa4]                           dc.b $00
[0009dfa5]                           dc.b $00
_26_REF_TYPE:
[0009dfa6]                           dc.b $00
[0009dfa7]                           dc.b $1c
[0009dfa8]                           dc.w $ffff
[0009dfaa]                           dc.w $ffff
[0009dfac]                           dc.b $00
[0009dfad]                           dc.b $1c
[0009dfae]                           dc.b $00
[0009dfaf]                           dc.b $01
[0009dfb0]                           dc.b $00
[0009dfb1]                           dc.b $00
[0009dfb2] 0009d33b                  dc.l TEXT_372
[0009dfb6]                           dc.b $00
[0009dfb7]                           dc.b $00
[0009dfb8]                           dc.b $00
[0009dfb9]                           dc.b $06
[0009dfba]                           dc.b $00
[0009dfbb]                           dc.b $0a
[0009dfbc]                           dc.b $00
[0009dfbd]                           dc.b $01
_26aREF_TYPE:
[0009dfbe]                           dc.b $00
[0009dfbf]                           dc.b $00
[0009dfc0]                           dc.b $00
[0009dfc1]                           dc.b $00
[0009dfc2]                           dc.b $00
[0009dfc3]                           dc.b $00
[0009dfc4]                           dc.b $00
[0009dfc5]                           dc.b $00
[0009dfc6]                           dc.w $8000
[0009dfc8]                           dc.b $00
[0009dfc9]                           dc.b $00
[0009dfca]                           dc.b $00
[0009dfcb]                           dc.b $00
[0009dfcc]                           dc.b $00
[0009dfcd]                           dc.b $0b
[0009dfce]                           dc.b $00
[0009dfcf]                           dc.b $00
[0009dfd0]                           dc.b $00
[0009dfd1]                           dc.b $00
[0009dfd2]                           dc.b $00
[0009dfd3]                           dc.b $00
[0009dfd4]                           dc.b $00
[0009dfd5]                           dc.b $00
_28_REF_TYPE:
[0009dfd6]                           dc.b $00
[0009dfd7]                           dc.b $1e
[0009dfd8]                           dc.w $ffff
[0009dfda]                           dc.w $ffff
[0009dfdc]                           dc.b $00
[0009dfdd]                           dc.b $1c
[0009dfde]                           dc.b $00
[0009dfdf]                           dc.b $01
[0009dfe0]                           dc.b $00
[0009dfe1]                           dc.b $00
[0009dfe2] 0009d1af                  dc.l TEXT_10
[0009dfe6]                           dc.b $00
[0009dfe7]                           dc.b $0a
[0009dfe8]                           dc.b $00
[0009dfe9]                           dc.b $06
[0009dfea]                           dc.b $00
[0009dfeb]                           dc.b $0a
[0009dfec]                           dc.b $00
[0009dfed]                           dc.b $01
_28aREF_TYPE:
[0009dfee]                           dc.b $00
[0009dfef]                           dc.b $00
[0009dff0]                           dc.b $00
[0009dff1]                           dc.b $00
[0009dff2]                           dc.b $00
[0009dff3]                           dc.b $00
[0009dff4]                           dc.b $00
[0009dff5]                           dc.b $00
[0009dff6]                           dc.w $8000
[0009dff8]                           dc.b $00
[0009dff9]                           dc.b $00
[0009dffa]                           dc.b $00
[0009dffb]                           dc.b $00
[0009dffc]                           dc.b $00
[0009dffd]                           dc.b $13
[0009dffe]                           dc.b $00
[0009dfff]                           dc.b $00
[0009e000]                           dc.b $00
[0009e001]                           dc.b $00
[0009e002]                           dc.b $00
[0009e003]                           dc.b $00
[0009e004]                           dc.b $00
[0009e005]                           dc.b $00
_30_REF_TYPE:
[0009e006]                           dc.b $00
[0009e007]                           dc.b $20
[0009e008]                           dc.w $ffff
[0009e00a]                           dc.w $ffff
[0009e00c]                           dc.b $00
[0009e00d]                           dc.b $1c
[0009e00e]                           dc.b $00
[0009e00f]                           dc.b $01
[0009e010]                           dc.b $00
[0009e011]                           dc.b $00
[0009e012] 0009d30c                  dc.l TEXT_366
[0009e016]                           dc.b $00
[0009e017]                           dc.b $00
[0009e018]                           dc.b $00
[0009e019]                           dc.b $07
[0009e01a]                           dc.b $00
[0009e01b]                           dc.b $0a
[0009e01c]                           dc.b $00
[0009e01d]                           dc.b $01
_30aREF_TYPE:
[0009e01e]                           dc.b $00
[0009e01f]                           dc.b $00
[0009e020]                           dc.b $00
[0009e021]                           dc.b $00
[0009e022]                           dc.b $00
[0009e023]                           dc.b $00
[0009e024]                           dc.b $00
[0009e025]                           dc.b $00
[0009e026]                           dc.w $8000
[0009e028]                           dc.b $00
[0009e029]                           dc.b $00
[0009e02a]                           dc.b $00
[0009e02b]                           dc.b $00
[0009e02c]                           dc.b $00
[0009e02d]                           dc.b $0c
[0009e02e]                           dc.b $00
[0009e02f]                           dc.b $00
[0009e030]                           dc.b $00
[0009e031]                           dc.b $00
[0009e032]                           dc.b $00
[0009e033]                           dc.b $00
[0009e034]                           dc.b $00
[0009e035]                           dc.b $00
_32_REF_TYPE:
[0009e036]                           dc.b $00
[0009e037]                           dc.b $01
[0009e038]                           dc.w $ffff
[0009e03a]                           dc.w $ffff
[0009e03c]                           dc.b $00
[0009e03d]                           dc.b $1c
[0009e03e]                           dc.b $00
[0009e03f]                           dc.b $00
[0009e040]                           dc.b $00
[0009e041]                           dc.b $00
[0009e042] 0009d175                  dc.l TEXT_03
[0009e046]                           dc.b $00
[0009e047]                           dc.b $0b
[0009e048]                           dc.b $00
[0009e049]                           dc.b $07
[0009e04a]                           dc.b $00
[0009e04b]                           dc.b $09
[0009e04c]                           dc.b $00
[0009e04d]                           dc.b $01
_32aREF_TYPE:
[0009e04e]                           dc.b $00
[0009e04f]                           dc.b $00
[0009e050]                           dc.b $00
[0009e051]                           dc.b $00
[0009e052]                           dc.b $00
[0009e053]                           dc.b $00
[0009e054]                           dc.b $00
[0009e055]                           dc.b $00
[0009e056]                           dc.w $8000
[0009e058]                           dc.b $00
[0009e059]                           dc.b $00
[0009e05a]                           dc.b $00
[0009e05b]                           dc.b $00
[0009e05c]                           dc.b $00
[0009e05d]                           dc.b $18
[0009e05e]                           dc.b $00
[0009e05f]                           dc.b $00
[0009e060]                           dc.b $00
[0009e061]                           dc.b $00
[0009e062]                           dc.b $00
[0009e063]                           dc.b $00
[0009e064]                           dc.b $00
[0009e065]                           dc.b $00
_34_REF_TYPE:
[0009e066]                           dc.b $00
[0009e067]                           dc.b $2c
[0009e068]                           dc.b $00
[0009e069]                           dc.b $23
[0009e06a]                           dc.b $00
[0009e06b]                           dc.b $25
[0009e06c]                           dc.b $00
[0009e06d]                           dc.b $14
[0009e06e]                           dc.b $00
[0009e06f]                           dc.b $80
[0009e070]                           dc.b $00
[0009e071]                           dc.b $20
[0009e072]                           dc.b $00
[0009e073]                           dc.b $ff
[0009e074]                           dc.w $1101
[0009e076]                           dc.b $00
[0009e077]                           dc.b $00
[0009e078]                           dc.b $00
[0009e079]                           dc.b $01
[0009e07a]                           dc.b $00
[0009e07b]                           dc.b $09
[0009e07c]                           dc.b $00
[0009e07d]                           dc.b $02
_35_REF_TYPE:
[0009e07e]                           dc.b $00
[0009e07f]                           dc.b $25
[0009e080]                           dc.w $ffff
[0009e082]                           dc.w $ffff
[0009e084]                           dc.b $00
[0009e085]                           dc.b $1c
[0009e086]                           dc.b $00
[0009e087]                           dc.b $01
[0009e088]                           dc.b $00
[0009e089]                           dc.b $00
[0009e08a] 0009d2fd                  dc.l TEXT_364
[0009e08e]                           dc.b $00
[0009e08f]                           dc.b $00
[0009e090]                           dc.b $00
[0009e091]                           dc.b $00
[0009e092]                           dc.b $00
[0009e093]                           dc.b $09
[0009e094]                           dc.b $00
[0009e095]                           dc.b $01
_35aREF_TYPE:
[0009e096]                           dc.b $00
[0009e097]                           dc.b $00
[0009e098]                           dc.b $00
[0009e099]                           dc.b $00
[0009e09a]                           dc.b $00
[0009e09b]                           dc.b $00
[0009e09c]                           dc.b $00
[0009e09d]                           dc.b $00
[0009e09e]                           dc.w $8000
[0009e0a0]                           dc.b $00
[0009e0a1]                           dc.b $00
[0009e0a2]                           dc.b $00
[0009e0a3]                           dc.b $00
[0009e0a4]                           dc.b $00
[0009e0a5]                           dc.b $01
[0009e0a6]                           dc.b $00
[0009e0a7]                           dc.b $00
[0009e0a8]                           dc.b $00
[0009e0a9]                           dc.b $00
[0009e0aa]                           dc.b $00
[0009e0ab]                           dc.b $00
[0009e0ac]                           dc.b $00
[0009e0ad]                           dc.b $00
_37_REF_TYPE:
[0009e0ae]                           dc.b $00
[0009e0af]                           dc.b $22
[0009e0b0]                           dc.b $00
[0009e0b1]                           dc.b $27
[0009e0b2]                           dc.b $00
[0009e0b3]                           dc.b $27
[0009e0b4]                           dc.b $00
[0009e0b5]                           dc.b $1c
[0009e0b6]                           dc.b $00
[0009e0b7]                           dc.b $01
[0009e0b8]                           dc.b $00
[0009e0b9]                           dc.b $00
[0009e0ba] 0009d2cd                  dc.l TEXT_357
[0009e0be]                           dc.b $00
[0009e0bf]                           dc.b $00
[0009e0c0]                           dc.b $00
[0009e0c1]                           dc.b $01
[0009e0c2]                           dc.b $00
[0009e0c3]                           dc.b $09
[0009e0c4]                           dc.b $00
[0009e0c5]                           dc.b $01
_37aREF_TYPE:
[0009e0c6]                           dc.b $00
[0009e0c7]                           dc.b $00
[0009e0c8]                           dc.b $00
[0009e0c9]                           dc.b $00
[0009e0ca]                           dc.b $00
[0009e0cb]                           dc.b $00
[0009e0cc]                           dc.b $00
[0009e0cd]                           dc.b $00
[0009e0ce]                           dc.w $8000
[0009e0d0]                           dc.b $00
[0009e0d1]                           dc.b $00
[0009e0d2]                           dc.b $00
[0009e0d3]                           dc.b $00
[0009e0d4]                           dc.b $00
[0009e0d5]                           dc.b $02
[0009e0d6]                           dc.b $00
[0009e0d7]                           dc.b $00
[0009e0d8]                           dc.b $00
[0009e0d9]                           dc.b $00
[0009e0da]                           dc.b $00
[0009e0db]                           dc.b $00
[0009e0dc]                           dc.b $00
[0009e0dd]                           dc.b $00
_39_REF_TYPE:
[0009e0de]                           dc.b $00
[0009e0df]                           dc.b $25
[0009e0e0]                           dc.b $00
[0009e0e1]                           dc.b $28
[0009e0e2]                           dc.b $00
[0009e0e3]                           dc.b $2a
[0009e0e4]                           dc.b $00
[0009e0e5]                           dc.b $14
[0009e0e6]                           dc.b $00
[0009e0e7]                           dc.b $80
[0009e0e8]                           dc.b $00
[0009e0e9]                           dc.b $20
[0009e0ea]                           dc.b $00
[0009e0eb]                           dc.b $ff
[0009e0ec]                           dc.w $1101
[0009e0ee]                           dc.b $00
[0009e0ef]                           dc.b $00
[0009e0f0]                           dc.b $00
[0009e0f1]                           dc.b $00
[0009e0f2]                           dc.b $00
[0009e0f3]                           dc.b $0d
[0009e0f4]                           dc.b $00
[0009e0f5]                           dc.b $02
_40_REF_TYPE:
[0009e0f6]                           dc.b $00
[0009e0f7]                           dc.b $2a
[0009e0f8]                           dc.w $ffff
[0009e0fa]                           dc.w $ffff
[0009e0fc]                           dc.b $00
[0009e0fd]                           dc.b $1c
[0009e0fe]                           dc.b $00
[0009e0ff]                           dc.b $01
[0009e100]                           dc.b $00
[0009e101]                           dc.b $00
[0009e102] 0009d315                  dc.l TEXT_367
[0009e106]                           dc.b $00
[0009e107]                           dc.b $00
[0009e108]                           dc.b $00
[0009e109]                           dc.b $00
[0009e10a]                           dc.b $00
[0009e10b]                           dc.b $0d
[0009e10c]                           dc.b $00
[0009e10d]                           dc.b $01
_40aREF_TYPE:
[0009e10e]                           dc.b $00
[0009e10f]                           dc.b $00
[0009e110]                           dc.b $00
[0009e111]                           dc.b $00
[0009e112]                           dc.b $00
[0009e113]                           dc.b $00
[0009e114]                           dc.b $00
[0009e115]                           dc.b $00
[0009e116]                           dc.w $8000
[0009e118]                           dc.b $00
[0009e119]                           dc.b $00
[0009e11a]                           dc.b $00
[0009e11b]                           dc.b $00
[0009e11c]                           dc.b $00
[0009e11d]                           dc.b $03
[0009e11e]                           dc.b $00
[0009e11f]                           dc.b $00
[0009e120]                           dc.b $00
[0009e121]                           dc.b $00
[0009e122]                           dc.b $00
[0009e123]                           dc.b $00
[0009e124]                           dc.b $00
[0009e125]                           dc.b $00
_42_REF_TYPE:
[0009e126]                           dc.b $00
[0009e127]                           dc.b $27
[0009e128]                           dc.w $ffff
[0009e12a]                           dc.w $ffff
[0009e12c]                           dc.b $00
[0009e12d]                           dc.b $1c
[0009e12e]                           dc.b $00
[0009e12f]                           dc.b $01
[0009e130]                           dc.b $00
[0009e131]                           dc.b $00
[0009e132] 0009d202                  dc.l TEXT_174
[0009e136]                           dc.b $00
[0009e137]                           dc.b $00
[0009e138]                           dc.b $00
[0009e139]                           dc.b $01
[0009e13a]                           dc.b $00
[0009e13b]                           dc.b $0d
[0009e13c]                           dc.b $00
[0009e13d]                           dc.b $01
_42aREF_TYPE:
[0009e13e]                           dc.b $00
[0009e13f]                           dc.b $00
[0009e140]                           dc.b $00
[0009e141]                           dc.b $00
[0009e142]                           dc.b $00
[0009e143]                           dc.b $00
[0009e144]                           dc.b $00
[0009e145]                           dc.b $00
[0009e146]                           dc.w $8000
[0009e148]                           dc.b $00
[0009e149]                           dc.b $00
[0009e14a]                           dc.b $00
[0009e14b]                           dc.b $00
[0009e14c]                           dc.b $00
[0009e14d]                           dc.b $04
[0009e14e]                           dc.b $00
[0009e14f]                           dc.b $00
[0009e150]                           dc.b $00
[0009e151]                           dc.b $00
[0009e152]                           dc.b $00
[0009e153]                           dc.b $00
[0009e154]                           dc.b $00
[0009e155]                           dc.b $00
_44_REF_TYPE:
[0009e156]                           dc.b $00
[0009e157]                           dc.b $2e
[0009e158]                           dc.w $ffff
[0009e15a]                           dc.w $ffff
[0009e15c]                           dc.b $00
[0009e15d]                           dc.b $18
[0009e15e]                           dc.b $00
[0009e15f]                           dc.b $41
[0009e160]                           dc.b $00
[0009e161]                           dc.b $00
[0009e162] 0009d61a                  dc.l A_3DBUTTON01
[0009e166]                           dc.b $00
[0009e167]                           dc.b $00
[0009e168]                           dc.b $00
[0009e169]                           dc.b $00
[0009e16a]                           dc.b $00
[0009e16b]                           dc.b $0d
[0009e16c]                           dc.b $00
[0009e16d]                           dc.b $01
_44aREF_TYPE:
[0009e16e]                           dc.b $00
[0009e16f]                           dc.b $00
[0009e170]                           dc.b $00
[0009e171]                           dc.b $00
[0009e172]                           dc.b $00
[0009e173]                           dc.b $00
[0009e174]                           dc.b $00
[0009e175]                           dc.b $00
[0009e176]                           dc.w $8000
[0009e178]                           dc.b $00
[0009e179]                           dc.b $00
[0009e17a]                           dc.b $00
[0009e17b]                           dc.b $00
[0009e17c]                           dc.b $00
[0009e17d]                           dc.b $00
[0009e17e]                           dc.b $00
[0009e17f]                           dc.b $00
[0009e180]                           dc.b $00
[0009e181]                           dc.b $00
[0009e182]                           dc.b $00
[0009e183]                           dc.b $00
[0009e184]                           dc.b $00
[0009e185]                           dc.b $00
_46_REF_TYPE:
[0009e186]                           dc.b $00
[0009e187]                           dc.b $34
[0009e188]                           dc.b $00
[0009e189]                           dc.b $2f
[0009e18a]                           dc.b $00
[0009e18b]                           dc.b $2f
[0009e18c]                           dc.b $00
[0009e18d]                           dc.b $18
[0009e18e]                           dc.b $00
[0009e18f]                           dc.b $41
[0009e190]                           dc.b $00
[0009e191]                           dc.b $00
[0009e192] 0009d6ba                  dc.l A_3DBUTTON06
[0009e196]                           dc.b $00
[0009e197]                           dc.b $00
[0009e198]                           dc.b $00
[0009e199]                           dc.b $01
[0009e19a]                           dc.b $00
[0009e19b]                           dc.b $0d
[0009e19c]                           dc.b $00
[0009e19d]                           dc.b $01
_47_REF_TYPE:
[0009e19e]                           dc.b $00
[0009e19f]                           dc.b $2e
[0009e1a0]                           dc.b $00
[0009e1a1]                           dc.b $30
[0009e1a2]                           dc.b $00
[0009e1a3]                           dc.b $32
[0009e1a4]                           dc.b $00
[0009e1a5]                           dc.b $14
[0009e1a6]                           dc.b $00
[0009e1a7]                           dc.b $80
[0009e1a8]                           dc.b $00
[0009e1a9]                           dc.b $20
[0009e1aa]                           dc.b $00
[0009e1ab]                           dc.b $ff
[0009e1ac]                           dc.w $1101
[0009e1ae]                           dc.b $00
[0009e1af]                           dc.b $00
[0009e1b0]                           dc.b $00
[0009e1b1]                           dc.b $00
[0009e1b2]                           dc.b $00
[0009e1b3]                           dc.b $09
[0009e1b4]                           dc.b $00
[0009e1b5]                           dc.b $02
_48_REF_TYPE:
[0009e1b6]                           dc.b $00
[0009e1b7]                           dc.b $32
[0009e1b8]                           dc.w $ffff
[0009e1ba]                           dc.w $ffff
[0009e1bc]                           dc.b $00
[0009e1bd]                           dc.b $18
[0009e1be]                           dc.b $00
[0009e1bf]                           dc.b $41
[0009e1c0]                           dc.b $00
[0009e1c1]                           dc.b $00
[0009e1c2] 0009d73a                  dc.l A_3DBUTTON10
[0009e1c6]                           dc.b $00
[0009e1c7]                           dc.b $00
[0009e1c8]                           dc.b $00
[0009e1c9]                           dc.b $00
[0009e1ca]                           dc.b $00
[0009e1cb]                           dc.b $09
[0009e1cc]                           dc.b $00
[0009e1cd]                           dc.b $01
_48aREF_TYPE:
[0009e1ce]                           dc.b $00
[0009e1cf]                           dc.b $00
[0009e1d0]                           dc.b $00
[0009e1d1]                           dc.b $00
[0009e1d2]                           dc.b $00
[0009e1d3]                           dc.b $00
[0009e1d4]                           dc.b $00
[0009e1d5]                           dc.b $00
[0009e1d6]                           dc.w $8000
[0009e1d8]                           dc.b $00
[0009e1d9]                           dc.b $00
[0009e1da]                           dc.b $00
[0009e1db]                           dc.b $00
[0009e1dc]                           dc.b $00
[0009e1dd]                           dc.b $01
[0009e1de]                           dc.b $00
[0009e1df]                           dc.b $00
[0009e1e0]                           dc.b $00
[0009e1e1]                           dc.b $00
[0009e1e2]                           dc.b $00
[0009e1e3]                           dc.b $00
[0009e1e4]                           dc.b $00
[0009e1e5]                           dc.b $00
_50_REF_TYPE:
[0009e1e6]                           dc.b $00
[0009e1e7]                           dc.b $2f
[0009e1e8]                           dc.w $ffff
[0009e1ea]                           dc.w $ffff
[0009e1ec]                           dc.b $00
[0009e1ed]                           dc.b $18
[0009e1ee]                           dc.b $00
[0009e1ef]                           dc.b $41
[0009e1f0]                           dc.b $00
[0009e1f1]                           dc.b $00
[0009e1f2] 0009d71a                  dc.l A_3DBUTTON09
[0009e1f6]                           dc.b $00
[0009e1f7]                           dc.b $00
[0009e1f8]                           dc.b $00
[0009e1f9]                           dc.b $01
[0009e1fa]                           dc.b $00
[0009e1fb]                           dc.b $09
[0009e1fc]                           dc.b $00
[0009e1fd]                           dc.b $01
_50aREF_TYPE:
[0009e1fe]                           dc.b $00
[0009e1ff]                           dc.b $00
[0009e200]                           dc.b $00
[0009e201]                           dc.b $00
[0009e202]                           dc.b $00
[0009e203]                           dc.b $00
[0009e204]                           dc.b $00
[0009e205]                           dc.b $00
[0009e206]                           dc.w $8000
[0009e208]                           dc.b $00
[0009e209]                           dc.b $00
[0009e20a]                           dc.b $00
[0009e20b]                           dc.b $00
[0009e20c]                           dc.b $00
[0009e20d]                           dc.b $02
[0009e20e]                           dc.b $00
[0009e20f]                           dc.b $00
[0009e210]                           dc.b $00
[0009e211]                           dc.b $00
[0009e212]                           dc.b $00
[0009e213]                           dc.b $00
[0009e214]                           dc.b $00
[0009e215]                           dc.b $00
_52_REF_TYPE:
[0009e216]                           dc.b $00
[0009e217]                           dc.b $50
[0009e218]                           dc.b $00
[0009e219]                           dc.b $35
[0009e21a]                           dc.b $00
[0009e21b]                           dc.b $35
[0009e21c]                           dc.b $00
[0009e21d]                           dc.b $18
[0009e21e]                           dc.b $00
[0009e21f]                           dc.b $41
[0009e220]                           dc.b $00
[0009e221]                           dc.b $00
[0009e222] 0009d9fa                  dc.l A_3DBUTTON32
[0009e226]                           dc.b $00
[0009e227]                           dc.b $00
[0009e228]                           dc.b $00
[0009e229]                           dc.b $04
[0009e22a]                           dc.b $00
[0009e22b]                           dc.b $0d
[0009e22c]                           dc.b $00
[0009e22d]                           dc.b $01
_53_REF_TYPE:
[0009e22e]                           dc.b $00
[0009e22f]                           dc.b $34
[0009e230]                           dc.b $00
[0009e231]                           dc.b $36
[0009e232]                           dc.b $00
[0009e233]                           dc.b $4e
[0009e234]                           dc.b $00
[0009e235]                           dc.b $14
[0009e236]                           dc.b $00
[0009e237]                           dc.b $80
[0009e238]                           dc.b $00
[0009e239]                           dc.b $20
[0009e23a]                           dc.b $00
[0009e23b]                           dc.b $ff
[0009e23c]                           dc.w $1101
[0009e23e]                           dc.b $00
[0009e23f]                           dc.b $00
[0009e240]                           dc.b $00
[0009e241]                           dc.b $00
[0009e242]                           dc.b $00
[0009e243]                           dc.b $0f
[0009e244]                           dc.b $00
[0009e245]                           dc.b $0d
_54_REF_TYPE:
[0009e246]                           dc.b $00
[0009e247]                           dc.b $38
[0009e248]                           dc.w $ffff
[0009e24a]                           dc.w $ffff
[0009e24c]                           dc.b $00
[0009e24d]                           dc.b $18
[0009e24e]                           dc.b $00
[0009e24f]                           dc.b $41
[0009e250]                           dc.b $00
[0009e251]                           dc.b $00
[0009e252] 0009daba                  dc.l A_3DBUTTON38
[0009e256]                           dc.b $00
[0009e257]                           dc.b $00
[0009e258]                           dc.b $00
[0009e259]                           dc.b $00
[0009e25a]                           dc.b $00
[0009e25b]                           dc.b $0f
[0009e25c]                           dc.b $00
[0009e25d]                           dc.b $01
_54aREF_TYPE:
[0009e25e]                           dc.b $00
[0009e25f]                           dc.b $00
[0009e260]                           dc.b $00
[0009e261]                           dc.b $00
[0009e262]                           dc.b $00
[0009e263]                           dc.b $00
[0009e264]                           dc.b $00
[0009e265]                           dc.b $00
[0009e266]                           dc.w $8000
[0009e268]                           dc.b $00
[0009e269]                           dc.b $00
[0009e26a]                           dc.b $00
[0009e26b]                           dc.b $00
[0009e26c]                           dc.b $00
[0009e26d]                           dc.b $19
[0009e26e]                           dc.b $00
[0009e26f]                           dc.b $00
[0009e270]                           dc.b $00
[0009e271]                           dc.b $00
[0009e272]                           dc.b $00
[0009e273]                           dc.b $00
[0009e274]                           dc.b $00
[0009e275]                           dc.b $00
_56_REF_TYPE:
[0009e276]                           dc.b $00
[0009e277]                           dc.b $3a
[0009e278]                           dc.w $ffff
[0009e27a]                           dc.w $ffff
[0009e27c]                           dc.b $00
[0009e27d]                           dc.b $18
[0009e27e]                           dc.b $00
[0009e27f]                           dc.b $41
[0009e280]                           dc.b $00
[0009e281]                           dc.b $00
[0009e282] 0009da1a                  dc.l A_3DBUTTON33
[0009e286]                           dc.b $00
[0009e287]                           dc.b $00
[0009e288]                           dc.b $00
[0009e289]                           dc.b $01
[0009e28a]                           dc.b $00
[0009e28b]                           dc.b $0f
[0009e28c]                           dc.b $00
[0009e28d]                           dc.b $01
_56aREF_TYPE:
[0009e28e]                           dc.b $00
[0009e28f]                           dc.b $00
[0009e290]                           dc.b $00
[0009e291]                           dc.b $00
[0009e292]                           dc.b $00
[0009e293]                           dc.b $00
[0009e294]                           dc.b $00
[0009e295]                           dc.b $00
[0009e296]                           dc.w $8000
[0009e298]                           dc.b $00
[0009e299]                           dc.b $00
[0009e29a]                           dc.b $00
[0009e29b]                           dc.b $00
[0009e29c]                           dc.b $00
[0009e29d]                           dc.b $1a
[0009e29e]                           dc.b $00
[0009e29f]                           dc.b $00
[0009e2a0]                           dc.b $00
[0009e2a1]                           dc.b $00
[0009e2a2]                           dc.b $00
[0009e2a3]                           dc.b $00
[0009e2a4]                           dc.b $00
[0009e2a5]                           dc.b $00
_58_REF_TYPE:
[0009e2a6]                           dc.b $00
[0009e2a7]                           dc.b $3c
[0009e2a8]                           dc.w $ffff
[0009e2aa]                           dc.w $ffff
[0009e2ac]                           dc.b $00
[0009e2ad]                           dc.b $18
[0009e2ae]                           dc.b $00
[0009e2af]                           dc.b $41
[0009e2b0]                           dc.b $00
[0009e2b1]                           dc.b $00
[0009e2b2] 0009dada                  dc.l A_3DBUTTON39
[0009e2b6]                           dc.b $00
[0009e2b7]                           dc.b $00
[0009e2b8]                           dc.b $00
[0009e2b9]                           dc.b $02
[0009e2ba]                           dc.b $00
[0009e2bb]                           dc.b $0f
[0009e2bc]                           dc.b $00
[0009e2bd]                           dc.b $01
_58aREF_TYPE:
[0009e2be]                           dc.b $00
[0009e2bf]                           dc.b $00
[0009e2c0]                           dc.b $00
[0009e2c1]                           dc.b $00
[0009e2c2]                           dc.b $00
[0009e2c3]                           dc.b $00
[0009e2c4]                           dc.b $00
[0009e2c5]                           dc.b $00
[0009e2c6]                           dc.w $8000
[0009e2c8]                           dc.b $00
[0009e2c9]                           dc.b $00
[0009e2ca]                           dc.b $00
[0009e2cb]                           dc.b $00
[0009e2cc]                           dc.b $00
[0009e2cd]                           dc.b $1b
[0009e2ce]                           dc.b $00
[0009e2cf]                           dc.b $00
[0009e2d0]                           dc.b $00
[0009e2d1]                           dc.b $00
[0009e2d2]                           dc.b $00
[0009e2d3]                           dc.b $00
[0009e2d4]                           dc.b $00
[0009e2d5]                           dc.b $00
_60_REF_TYPE:
[0009e2d6]                           dc.b $00
[0009e2d7]                           dc.b $3e
[0009e2d8]                           dc.w $ffff
[0009e2da]                           dc.w $ffff
[0009e2dc]                           dc.b $00
[0009e2dd]                           dc.b $18
[0009e2de]                           dc.b $00
[0009e2df]                           dc.b $41
[0009e2e0]                           dc.b $00
[0009e2e1]                           dc.b $00
[0009e2e2] 0009dafa                  dc.l A_3DBUTTON40
[0009e2e6]                           dc.b $00
[0009e2e7]                           dc.b $00
[0009e2e8]                           dc.b $00
[0009e2e9]                           dc.b $03
[0009e2ea]                           dc.b $00
[0009e2eb]                           dc.b $0f
[0009e2ec]                           dc.b $00
[0009e2ed]                           dc.b $01
_60aREF_TYPE:
[0009e2ee]                           dc.b $00
[0009e2ef]                           dc.b $00
[0009e2f0]                           dc.b $00
[0009e2f1]                           dc.b $00
[0009e2f2]                           dc.b $00
[0009e2f3]                           dc.b $00
[0009e2f4]                           dc.b $00
[0009e2f5]                           dc.b $00
[0009e2f6]                           dc.w $8000
[0009e2f8]                           dc.b $00
[0009e2f9]                           dc.b $00
[0009e2fa]                           dc.b $00
[0009e2fb]                           dc.b $00
[0009e2fc]                           dc.b $00
[0009e2fd]                           dc.b $1c
[0009e2fe]                           dc.b $00
[0009e2ff]                           dc.b $00
[0009e300]                           dc.b $00
[0009e301]                           dc.b $00
[0009e302]                           dc.b $00
[0009e303]                           dc.b $00
[0009e304]                           dc.b $00
[0009e305]                           dc.b $00
_62_REF_TYPE:
[0009e306]                           dc.b $00
[0009e307]                           dc.b $40
[0009e308]                           dc.w $ffff
[0009e30a]                           dc.w $ffff
[0009e30c]                           dc.b $00
[0009e30d]                           dc.b $18
[0009e30e]                           dc.b $00
[0009e30f]                           dc.b $41
[0009e310]                           dc.b $00
[0009e311]                           dc.b $00
[0009e312] 0009db1a                  dc.l A_3DBUTTON41
[0009e316]                           dc.b $00
[0009e317]                           dc.b $00
[0009e318]                           dc.b $00
[0009e319]                           dc.b $04
[0009e31a]                           dc.b $00
[0009e31b]                           dc.b $0f
[0009e31c]                           dc.b $00
[0009e31d]                           dc.b $01
_62aREF_TYPE:
[0009e31e]                           dc.b $00
[0009e31f]                           dc.b $00
[0009e320]                           dc.b $00
[0009e321]                           dc.b $00
[0009e322]                           dc.b $00
[0009e323]                           dc.b $00
[0009e324]                           dc.b $00
[0009e325]                           dc.b $00
[0009e326]                           dc.w $8000
[0009e328]                           dc.b $00
[0009e329]                           dc.b $00
[0009e32a]                           dc.b $00
[0009e32b]                           dc.b $00
[0009e32c]                           dc.b $00
[0009e32d]                           dc.b $1d
[0009e32e]                           dc.b $00
[0009e32f]                           dc.b $00
[0009e330]                           dc.b $00
[0009e331]                           dc.b $00
[0009e332]                           dc.b $00
[0009e333]                           dc.b $00
[0009e334]                           dc.b $00
[0009e335]                           dc.b $00
_64_REF_TYPE:
[0009e336]                           dc.b $00
[0009e337]                           dc.b $42
[0009e338]                           dc.w $ffff
[0009e33a]                           dc.w $ffff
[0009e33c]                           dc.b $00
[0009e33d]                           dc.b $18
[0009e33e]                           dc.b $00
[0009e33f]                           dc.b $41
[0009e340]                           dc.b $00
[0009e341]                           dc.b $00
[0009e342] 0009da3a                  dc.l A_3DBUTTON34
[0009e346]                           dc.b $00
[0009e347]                           dc.b $00
[0009e348]                           dc.b $00
[0009e349]                           dc.b $05
[0009e34a]                           dc.b $00
[0009e34b]                           dc.b $0f
[0009e34c]                           dc.b $00
[0009e34d]                           dc.b $01
_64aREF_TYPE:
[0009e34e]                           dc.b $00
[0009e34f]                           dc.b $00
[0009e350]                           dc.b $00
[0009e351]                           dc.b $00
[0009e352]                           dc.b $00
[0009e353]                           dc.b $00
[0009e354]                           dc.b $00
[0009e355]                           dc.b $00
[0009e356]                           dc.w $8000
[0009e358]                           dc.b $00
[0009e359]                           dc.b $00
[0009e35a]                           dc.b $00
[0009e35b]                           dc.b $00
[0009e35c]                           dc.b $00
[0009e35d]                           dc.b $1e
[0009e35e]                           dc.b $00
[0009e35f]                           dc.b $00
[0009e360]                           dc.b $00
[0009e361]                           dc.b $00
[0009e362]                           dc.b $00
[0009e363]                           dc.b $00
[0009e364]                           dc.b $00
[0009e365]                           dc.b $00
_66_REF_TYPE:
[0009e366]                           dc.b $00
[0009e367]                           dc.b $44
[0009e368]                           dc.w $ffff
[0009e36a]                           dc.w $ffff
[0009e36c]                           dc.b $00
[0009e36d]                           dc.b $18
[0009e36e]                           dc.b $00
[0009e36f]                           dc.b $41
[0009e370]                           dc.b $00
[0009e371]                           dc.b $00
[0009e372] 0009db3a                  dc.l A_3DBUTTON42
[0009e376]                           dc.b $00
[0009e377]                           dc.b $00
[0009e378]                           dc.b $00
[0009e379]                           dc.b $06
[0009e37a]                           dc.b $00
[0009e37b]                           dc.b $0f
[0009e37c]                           dc.b $00
[0009e37d]                           dc.b $01
_66aREF_TYPE:
[0009e37e]                           dc.b $00
[0009e37f]                           dc.b $00
[0009e380]                           dc.b $00
[0009e381]                           dc.b $00
[0009e382]                           dc.b $00
[0009e383]                           dc.b $00
[0009e384]                           dc.b $00
[0009e385]                           dc.b $00
[0009e386]                           dc.w $8000
[0009e388]                           dc.b $00
[0009e389]                           dc.b $00
[0009e38a]                           dc.b $00
[0009e38b]                           dc.b $00
[0009e38c]                           dc.b $00
[0009e38d]                           dc.b $1f
[0009e38e]                           dc.b $00
[0009e38f]                           dc.b $00
[0009e390]                           dc.b $00
[0009e391]                           dc.b $00
[0009e392]                           dc.b $00
[0009e393]                           dc.b $00
[0009e394]                           dc.b $00
[0009e395]                           dc.b $00
_68_REF_TYPE:
[0009e396]                           dc.b $00
[0009e397]                           dc.b $46
[0009e398]                           dc.w $ffff
[0009e39a]                           dc.w $ffff
[0009e39c]                           dc.b $00
[0009e39d]                           dc.b $18
[0009e39e]                           dc.b $00
[0009e39f]                           dc.b $41
[0009e3a0]                           dc.b $00
[0009e3a1]                           dc.b $00
[0009e3a2] 0009db5a                  dc.l A_3DBUTTON43
[0009e3a6]                           dc.b $00
[0009e3a7]                           dc.b $00
[0009e3a8]                           dc.b $00
[0009e3a9]                           dc.b $07
[0009e3aa]                           dc.b $00
[0009e3ab]                           dc.b $0f
[0009e3ac]                           dc.b $00
[0009e3ad]                           dc.b $01
_68aREF_TYPE:
[0009e3ae]                           dc.b $00
[0009e3af]                           dc.b $00
[0009e3b0]                           dc.b $00
[0009e3b1]                           dc.b $00
[0009e3b2]                           dc.b $00
[0009e3b3]                           dc.b $00
[0009e3b4]                           dc.b $00
[0009e3b5]                           dc.b $00
[0009e3b6]                           dc.w $8000
[0009e3b8]                           dc.b $00
[0009e3b9]                           dc.b $00
[0009e3ba]                           dc.b $00
[0009e3bb]                           dc.b $00
[0009e3bc]                           dc.b $00
[0009e3bd]                           dc.b $20
[0009e3be]                           dc.b $00
[0009e3bf]                           dc.b $00
[0009e3c0]                           dc.b $00
[0009e3c1]                           dc.b $00
[0009e3c2]                           dc.b $00
[0009e3c3]                           dc.b $00
[0009e3c4]                           dc.b $00
[0009e3c5]                           dc.b $00
_70_REF_TYPE:
[0009e3c6]                           dc.b $00
[0009e3c7]                           dc.b $48
[0009e3c8]                           dc.w $ffff
[0009e3ca]                           dc.w $ffff
[0009e3cc]                           dc.b $00
[0009e3cd]                           dc.b $18
[0009e3ce]                           dc.b $00
[0009e3cf]                           dc.b $41
[0009e3d0]                           dc.b $00
[0009e3d1]                           dc.b $00
[0009e3d2] 0009da5a                  dc.l A_3DBUTTON35
[0009e3d6]                           dc.b $00
[0009e3d7]                           dc.b $00
[0009e3d8]                           dc.b $00
[0009e3d9]                           dc.b $08
[0009e3da]                           dc.b $00
[0009e3db]                           dc.b $0f
[0009e3dc]                           dc.b $00
[0009e3dd]                           dc.b $01
_70aREF_TYPE:
[0009e3de]                           dc.b $00
[0009e3df]                           dc.b $00
[0009e3e0]                           dc.b $00
[0009e3e1]                           dc.b $00
[0009e3e2]                           dc.b $00
[0009e3e3]                           dc.b $00
[0009e3e4]                           dc.b $00
[0009e3e5]                           dc.b $00
[0009e3e6]                           dc.w $8000
[0009e3e8]                           dc.b $00
[0009e3e9]                           dc.b $00
[0009e3ea]                           dc.b $00
[0009e3eb]                           dc.b $00
[0009e3ec]                           dc.b $00
[0009e3ed]                           dc.b $21
[0009e3ee]                           dc.b $00
[0009e3ef]                           dc.b $00
[0009e3f0]                           dc.b $00
[0009e3f1]                           dc.b $00
[0009e3f2]                           dc.b $00
[0009e3f3]                           dc.b $00
[0009e3f4]                           dc.b $00
[0009e3f5]                           dc.b $00
_72_REF_TYPE:
[0009e3f6]                           dc.b $00
[0009e3f7]                           dc.b $4a
[0009e3f8]                           dc.w $ffff
[0009e3fa]                           dc.w $ffff
[0009e3fc]                           dc.b $00
[0009e3fd]                           dc.b $18
[0009e3fe]                           dc.b $00
[0009e3ff]                           dc.b $41
[0009e400]                           dc.b $00
[0009e401]                           dc.b $00
[0009e402] 0009da7a                  dc.l A_3DBUTTON36
[0009e406]                           dc.b $00
[0009e407]                           dc.b $00
[0009e408]                           dc.b $00
[0009e409]                           dc.b $09
[0009e40a]                           dc.b $00
[0009e40b]                           dc.b $0f
[0009e40c]                           dc.b $00
[0009e40d]                           dc.b $01
_72aREF_TYPE:
[0009e40e]                           dc.b $00
[0009e40f]                           dc.b $00
[0009e410]                           dc.b $00
[0009e411]                           dc.b $00
[0009e412]                           dc.b $00
[0009e413]                           dc.b $00
[0009e414]                           dc.b $00
[0009e415]                           dc.b $00
[0009e416]                           dc.w $8000
[0009e418]                           dc.b $00
[0009e419]                           dc.b $00
[0009e41a]                           dc.b $00
[0009e41b]                           dc.b $00
[0009e41c]                           dc.b $00
[0009e41d]                           dc.b $22
[0009e41e]                           dc.b $00
[0009e41f]                           dc.b $00
[0009e420]                           dc.b $00
[0009e421]                           dc.b $00
[0009e422]                           dc.b $00
[0009e423]                           dc.b $00
[0009e424]                           dc.b $00
[0009e425]                           dc.b $00
_74_REF_TYPE:
[0009e426]                           dc.b $00
[0009e427]                           dc.b $4c
[0009e428]                           dc.w $ffff
[0009e42a]                           dc.w $ffff
[0009e42c]                           dc.b $00
[0009e42d]                           dc.b $18
[0009e42e]                           dc.b $00
[0009e42f]                           dc.b $41
[0009e430]                           dc.b $00
[0009e431]                           dc.b $00
[0009e432] 0009db7a                  dc.l A_3DBUTTON44
[0009e436]                           dc.b $00
[0009e437]                           dc.b $00
[0009e438]                           dc.b $00
[0009e439]                           dc.b $0a
[0009e43a]                           dc.b $00
[0009e43b]                           dc.b $0f
[0009e43c]                           dc.b $00
[0009e43d]                           dc.b $01
_74aREF_TYPE:
[0009e43e]                           dc.b $00
[0009e43f]                           dc.b $00
[0009e440]                           dc.b $00
[0009e441]                           dc.b $00
[0009e442]                           dc.b $00
[0009e443]                           dc.b $00
[0009e444]                           dc.b $00
[0009e445]                           dc.b $00
[0009e446]                           dc.w $8000
[0009e448]                           dc.b $00
[0009e449]                           dc.b $00
[0009e44a]                           dc.b $00
[0009e44b]                           dc.b $00
[0009e44c]                           dc.b $00
[0009e44d]                           dc.b $23
[0009e44e]                           dc.b $00
[0009e44f]                           dc.b $00
[0009e450]                           dc.b $00
[0009e451]                           dc.b $00
[0009e452]                           dc.b $00
[0009e453]                           dc.b $00
[0009e454]                           dc.b $00
[0009e455]                           dc.b $00
_76_REF_TYPE:
[0009e456]                           dc.b $00
[0009e457]                           dc.b $4e
[0009e458]                           dc.w $ffff
[0009e45a]                           dc.w $ffff
[0009e45c]                           dc.b $00
[0009e45d]                           dc.b $18
[0009e45e]                           dc.b $00
[0009e45f]                           dc.b $41
[0009e460]                           dc.b $00
[0009e461]                           dc.b $00
[0009e462] 0009db9a                  dc.l A_3DBUTTON45
[0009e466]                           dc.b $00
[0009e467]                           dc.b $00
[0009e468]                           dc.b $00
[0009e469]                           dc.b $0b
[0009e46a]                           dc.b $00
[0009e46b]                           dc.b $0f
[0009e46c]                           dc.b $00
[0009e46d]                           dc.b $01
_76aREF_TYPE:
[0009e46e]                           dc.b $00
[0009e46f]                           dc.b $00
[0009e470]                           dc.b $00
[0009e471]                           dc.b $00
[0009e472]                           dc.b $00
[0009e473]                           dc.b $00
[0009e474]                           dc.b $00
[0009e475]                           dc.b $00
[0009e476]                           dc.w $8000
[0009e478]                           dc.b $00
[0009e479]                           dc.b $00
[0009e47a]                           dc.b $00
[0009e47b]                           dc.b $00
[0009e47c]                           dc.b $00
[0009e47d]                           dc.b $24
[0009e47e]                           dc.b $00
[0009e47f]                           dc.b $00
[0009e480]                           dc.b $00
[0009e481]                           dc.b $00
[0009e482]                           dc.b $00
[0009e483]                           dc.b $00
[0009e484]                           dc.b $00
[0009e485]                           dc.b $00
_78_REF_TYPE:
[0009e486]                           dc.b $00
[0009e487]                           dc.b $35
[0009e488]                           dc.w $ffff
[0009e48a]                           dc.w $ffff
[0009e48c]                           dc.b $00
[0009e48d]                           dc.b $18
[0009e48e]                           dc.b $00
[0009e48f]                           dc.b $41
[0009e490]                           dc.b $00
[0009e491]                           dc.b $00
[0009e492] 0009da9a                  dc.l A_3DBUTTON37
[0009e496]                           dc.b $00
[0009e497]                           dc.b $00
[0009e498]                           dc.b $00
[0009e499]                           dc.b $0c
[0009e49a]                           dc.b $00
[0009e49b]                           dc.b $0f
[0009e49c]                           dc.b $00
[0009e49d]                           dc.b $01
_78aREF_TYPE:
[0009e49e]                           dc.b $00
[0009e49f]                           dc.b $00
[0009e4a0]                           dc.b $00
[0009e4a1]                           dc.b $00
[0009e4a2]                           dc.b $00
[0009e4a3]                           dc.b $00
[0009e4a4]                           dc.b $00
[0009e4a5]                           dc.b $00
[0009e4a6]                           dc.w $8000
[0009e4a8]                           dc.b $00
[0009e4a9]                           dc.b $00
[0009e4aa]                           dc.b $00
[0009e4ab]                           dc.b $00
[0009e4ac]                           dc.b $00
[0009e4ad]                           dc.b $25
[0009e4ae]                           dc.b $00
[0009e4af]                           dc.b $00
[0009e4b0]                           dc.b $00
[0009e4b1]                           dc.b $00
[0009e4b2]                           dc.b $00
[0009e4b3]                           dc.b $00
[0009e4b4]                           dc.b $00
[0009e4b5]                           dc.b $00
_80_REF_TYPE:
[0009e4b6]                           dc.b $00
[0009e4b7]                           dc.b $56
[0009e4b8]                           dc.b $00
[0009e4b9]                           dc.b $51
[0009e4ba]                           dc.b $00
[0009e4bb]                           dc.b $51
[0009e4bc]                           dc.b $00
[0009e4bd]                           dc.b $18
[0009e4be]                           dc.b $00
[0009e4bf]                           dc.b $41
[0009e4c0]                           dc.b $00
[0009e4c1]                           dc.b $00
[0009e4c2] 0009d69a                  dc.l A_3DBUTTON05
[0009e4c6]                           dc.b $00
[0009e4c7]                           dc.b $00
[0009e4c8]                           dc.b $00
[0009e4c9]                           dc.b $02
[0009e4ca]                           dc.b $00
[0009e4cb]                           dc.b $0d
[0009e4cc]                           dc.b $00
[0009e4cd]                           dc.b $01
_81_REF_TYPE:
[0009e4ce]                           dc.b $00
[0009e4cf]                           dc.b $50
[0009e4d0]                           dc.b $00
[0009e4d1]                           dc.b $52
[0009e4d2]                           dc.b $00
[0009e4d3]                           dc.b $54
[0009e4d4]                           dc.b $00
[0009e4d5]                           dc.b $14
[0009e4d6]                           dc.b $00
[0009e4d7]                           dc.b $80
[0009e4d8]                           dc.b $00
[0009e4d9]                           dc.b $20
[0009e4da]                           dc.b $00
[0009e4db]                           dc.b $ff
[0009e4dc]                           dc.w $1101
[0009e4de]                           dc.b $00
[0009e4df]                           dc.b $00
[0009e4e0]                           dc.b $00
[0009e4e1]                           dc.b $00
[0009e4e2]                           dc.b $00
[0009e4e3]                           dc.b $0e
[0009e4e4]                           dc.b $00
[0009e4e5]                           dc.b $02
_82_REF_TYPE:
[0009e4e6]                           dc.b $00
[0009e4e7]                           dc.b $54
[0009e4e8]                           dc.w $ffff
[0009e4ea]                           dc.w $ffff
[0009e4ec]                           dc.b $00
[0009e4ed]                           dc.b $18
[0009e4ee]                           dc.b $00
[0009e4ef]                           dc.b $05
[0009e4f0]                           dc.b $00
[0009e4f1]                           dc.b $00
[0009e4f2] 0009d75a                  dc.l A_3DBUTTON11
[0009e4f6]                           dc.b $00
[0009e4f7]                           dc.b $00
[0009e4f8]                           dc.b $00
[0009e4f9]                           dc.b $00
[0009e4fa]                           dc.b $00
[0009e4fb]                           dc.b $0e
[0009e4fc]                           dc.b $00
[0009e4fd]                           dc.b $01
_82aREF_TYPE:
[0009e4fe]                           dc.b $00
[0009e4ff]                           dc.b $00
[0009e500]                           dc.b $00
[0009e501]                           dc.b $00
[0009e502]                           dc.b $00
[0009e503]                           dc.b $00
[0009e504]                           dc.b $00
[0009e505]                           dc.b $00
[0009e506]                           dc.w $8000
[0009e508]                           dc.b $00
[0009e509]                           dc.b $00
[0009e50a]                           dc.b $00
[0009e50b]                           dc.b $00
[0009e50c]                           dc.b $00
[0009e50d]                           dc.b $03
[0009e50e]                           dc.b $00
[0009e50f]                           dc.b $00
[0009e510]                           dc.b $00
[0009e511]                           dc.b $00
[0009e512]                           dc.b $00
[0009e513]                           dc.b $00
[0009e514]                           dc.b $00
[0009e515]                           dc.b $00
_84_REF_TYPE:
[0009e516]                           dc.b $00
[0009e517]                           dc.b $51
[0009e518]                           dc.w $ffff
[0009e51a]                           dc.w $ffff
[0009e51c]                           dc.b $00
[0009e51d]                           dc.b $18
[0009e51e]                           dc.b $00
[0009e51f]                           dc.b $05
[0009e520]                           dc.b $00
[0009e521]                           dc.b $00
[0009e522] 0009d77a                  dc.l A_3DBUTTON12
[0009e526]                           dc.b $00
[0009e527]                           dc.b $00
[0009e528]                           dc.b $00
[0009e529]                           dc.b $01
[0009e52a]                           dc.b $00
[0009e52b]                           dc.b $0e
[0009e52c]                           dc.b $00
[0009e52d]                           dc.b $01
_84aREF_TYPE:
[0009e52e]                           dc.b $00
[0009e52f]                           dc.b $00
[0009e530]                           dc.b $00
[0009e531]                           dc.b $00
[0009e532]                           dc.b $00
[0009e533]                           dc.b $00
[0009e534]                           dc.b $00
[0009e535]                           dc.b $00
[0009e536]                           dc.w $8000
[0009e538]                           dc.b $00
[0009e539]                           dc.b $00
[0009e53a]                           dc.b $00
[0009e53b]                           dc.b $00
[0009e53c]                           dc.b $00
[0009e53d]                           dc.b $04
[0009e53e]                           dc.b $00
[0009e53f]                           dc.b $00
[0009e540]                           dc.b $00
[0009e541]                           dc.b $00
[0009e542]                           dc.b $00
[0009e543]                           dc.b $00
[0009e544]                           dc.b $00
[0009e545]                           dc.b $00
_86_REF_TYPE:
[0009e546]                           dc.b $00
[0009e547]                           dc.b $00
[0009e548]                           dc.b $00
[0009e549]                           dc.b $57
[0009e54a]                           dc.b $00
[0009e54b]                           dc.b $57
[0009e54c]                           dc.b $00
[0009e54d]                           dc.b $18
[0009e54e]                           dc.b $00
[0009e54f]                           dc.b $41
[0009e550]                           dc.b $00
[0009e551]                           dc.b $00
[0009e552] 0009d6fa                  dc.l A_3DBUTTON08
[0009e556]                           dc.b $00
[0009e557]                           dc.b $00
[0009e558]                           dc.b $00
[0009e559]                           dc.b $03
[0009e55a]                           dc.b $00
[0009e55b]                           dc.b $0d
[0009e55c]                           dc.b $00
[0009e55d]                           dc.b $01
_87_REF_TYPE:
[0009e55e]                           dc.b $00
[0009e55f]                           dc.b $56
[0009e560]                           dc.b $00
[0009e561]                           dc.b $58
[0009e562]                           dc.b $00
[0009e563]                           dc.b $7a
[0009e564]                           dc.b $00
[0009e565]                           dc.b $14
[0009e566]                           dc.b $00
[0009e567]                           dc.b $80
[0009e568]                           dc.b $00
[0009e569]                           dc.b $20
[0009e56a]                           dc.b $00
[0009e56b]                           dc.b $ff
[0009e56c]                           dc.w $1101
[0009e56e]                           dc.b $00
[0009e56f]                           dc.b $00
[0009e570]                           dc.b $00
[0009e571]                           dc.b $00
[0009e572]                           dc.b $00
[0009e573]                           dc.b $0c
[0009e574]                           dc.b $00
[0009e575]                           dc.b $12
_88_REF_TYPE:
[0009e576]                           dc.b $00
[0009e577]                           dc.b $5a
[0009e578]                           dc.w $ffff
[0009e57a]                           dc.w $ffff
[0009e57c]                           dc.b $00
[0009e57d]                           dc.b $18
[0009e57e]                           dc.b $00
[0009e57f]                           dc.b $41
[0009e580]                           dc.b $00
[0009e581]                           dc.b $00
[0009e582] 0009d7ba                  dc.l A_3DBUTTON14
[0009e586]                           dc.b $00
[0009e587]                           dc.b $00
[0009e588]                           dc.b $00
[0009e589]                           dc.b $00
[0009e58a]                           dc.b $00
[0009e58b]                           dc.b $0c
[0009e58c]                           dc.b $00
[0009e58d]                           dc.b $01
_88aREF_TYPE:
[0009e58e]                           dc.b $00
[0009e58f]                           dc.b $00
[0009e590]                           dc.b $00
[0009e591]                           dc.b $00
[0009e592]                           dc.b $00
[0009e593]                           dc.b $00
[0009e594]                           dc.b $00
[0009e595]                           dc.b $00
[0009e596]                           dc.w $8000
[0009e598]                           dc.b $00
[0009e599]                           dc.b $00
[0009e59a]                           dc.b $00
[0009e59b]                           dc.b $00
[0009e59c]                           dc.b $00
[0009e59d]                           dc.b $06
[0009e59e]                           dc.b $00
[0009e59f]                           dc.b $00
[0009e5a0]                           dc.b $00
[0009e5a1]                           dc.b $00
[0009e5a2]                           dc.b $00
[0009e5a3]                           dc.b $00
[0009e5a4]                           dc.b $00
[0009e5a5]                           dc.b $00
_90_REF_TYPE:
[0009e5a6]                           dc.b $00
[0009e5a7]                           dc.b $5c
[0009e5a8]                           dc.w $ffff
[0009e5aa]                           dc.w $ffff
[0009e5ac]                           dc.b $00
[0009e5ad]                           dc.b $18
[0009e5ae]                           dc.b $00
[0009e5af]                           dc.b $41
[0009e5b0]                           dc.b $00
[0009e5b1]                           dc.b $00
[0009e5b2] 0009d7da                  dc.l A_3DBUTTON15
[0009e5b6]                           dc.b $00
[0009e5b7]                           dc.b $00
[0009e5b8]                           dc.b $00
[0009e5b9]                           dc.b $01
[0009e5ba]                           dc.b $00
[0009e5bb]                           dc.b $0c
[0009e5bc]                           dc.b $00
[0009e5bd]                           dc.b $01
_90aREF_TYPE:
[0009e5be]                           dc.b $00
[0009e5bf]                           dc.b $00
[0009e5c0]                           dc.b $00
[0009e5c1]                           dc.b $00
[0009e5c2]                           dc.b $00
[0009e5c3]                           dc.b $00
[0009e5c4]                           dc.b $00
[0009e5c5]                           dc.b $00
[0009e5c6]                           dc.w $8000
[0009e5c8]                           dc.b $00
[0009e5c9]                           dc.b $00
[0009e5ca]                           dc.b $00
[0009e5cb]                           dc.b $00
[0009e5cc]                           dc.b $00
[0009e5cd]                           dc.b $07
[0009e5ce]                           dc.b $00
[0009e5cf]                           dc.b $00
[0009e5d0]                           dc.b $00
[0009e5d1]                           dc.b $00
[0009e5d2]                           dc.b $00
[0009e5d3]                           dc.b $00
[0009e5d4]                           dc.b $00
[0009e5d5]                           dc.b $00
_92_REF_TYPE:
[0009e5d6]                           dc.b $00
[0009e5d7]                           dc.b $5e
[0009e5d8]                           dc.w $ffff
[0009e5da]                           dc.w $ffff
[0009e5dc]                           dc.b $00
[0009e5dd]                           dc.b $18
[0009e5de]                           dc.b $00
[0009e5df]                           dc.b $41
[0009e5e0]                           dc.b $00
[0009e5e1]                           dc.b $00
[0009e5e2] 0009d7fa                  dc.l A_3DBUTTON16
[0009e5e6]                           dc.b $00
[0009e5e7]                           dc.b $00
[0009e5e8]                           dc.b $00
[0009e5e9]                           dc.b $02
[0009e5ea]                           dc.b $00
[0009e5eb]                           dc.b $0c
[0009e5ec]                           dc.b $00
[0009e5ed]                           dc.b $01
_92aREF_TYPE:
[0009e5ee]                           dc.b $00
[0009e5ef]                           dc.b $00
[0009e5f0]                           dc.b $00
[0009e5f1]                           dc.b $00
[0009e5f2]                           dc.b $00
[0009e5f3]                           dc.b $00
[0009e5f4]                           dc.b $00
[0009e5f5]                           dc.b $00
[0009e5f6]                           dc.w $8000
[0009e5f8]                           dc.b $00
[0009e5f9]                           dc.b $00
[0009e5fa]                           dc.b $00
[0009e5fb]                           dc.b $00
[0009e5fc]                           dc.b $00
[0009e5fd]                           dc.b $15
[0009e5fe]                           dc.b $00
[0009e5ff]                           dc.b $00
[0009e600]                           dc.b $00
[0009e601]                           dc.b $00
[0009e602]                           dc.b $00
[0009e603]                           dc.b $00
[0009e604]                           dc.b $00
[0009e605]                           dc.b $00
_94_REF_TYPE:
[0009e606]                           dc.b $00
[0009e607]                           dc.b $60
[0009e608]                           dc.w $ffff
[0009e60a]                           dc.w $ffff
[0009e60c]                           dc.b $00
[0009e60d]                           dc.b $18
[0009e60e]                           dc.b $00
[0009e60f]                           dc.b $41
[0009e610]                           dc.b $00
[0009e611]                           dc.b $00
[0009e612] 0009d79a                  dc.l A_3DBUTTON13
[0009e616]                           dc.b $00
[0009e617]                           dc.b $00
[0009e618]                           dc.b $00
[0009e619]                           dc.b $03
[0009e61a]                           dc.b $00
[0009e61b]                           dc.b $0c
[0009e61c]                           dc.b $00
[0009e61d]                           dc.b $01
_94aREF_TYPE:
[0009e61e]                           dc.b $00
[0009e61f]                           dc.b $00
[0009e620]                           dc.b $00
[0009e621]                           dc.b $00
[0009e622]                           dc.b $00
[0009e623]                           dc.b $00
[0009e624]                           dc.b $00
[0009e625]                           dc.b $00
[0009e626]                           dc.w $8000
[0009e628]                           dc.b $00
[0009e629]                           dc.b $00
[0009e62a]                           dc.b $00
[0009e62b]                           dc.b $00
[0009e62c]                           dc.b $00
[0009e62d]                           dc.b $08
[0009e62e]                           dc.b $00
[0009e62f]                           dc.b $00
[0009e630]                           dc.b $00
[0009e631]                           dc.b $00
[0009e632]                           dc.b $00
[0009e633]                           dc.b $00
[0009e634]                           dc.b $00
[0009e635]                           dc.b $00
_96_REF_TYPE:
[0009e636]                           dc.b $00
[0009e637]                           dc.b $62
[0009e638]                           dc.w $ffff
[0009e63a]                           dc.w $ffff
[0009e63c]                           dc.b $00
[0009e63d]                           dc.b $18
[0009e63e]                           dc.b $00
[0009e63f]                           dc.b $41
[0009e640]                           dc.b $00
[0009e641]                           dc.b $00
[0009e642] 0009d81a                  dc.l A_3DBUTTON17
[0009e646]                           dc.b $00
[0009e647]                           dc.b $00
[0009e648]                           dc.b $00
[0009e649]                           dc.b $04
[0009e64a]                           dc.b $00
[0009e64b]                           dc.b $0c
[0009e64c]                           dc.b $00
[0009e64d]                           dc.b $01
_96aREF_TYPE:
[0009e64e]                           dc.b $00
[0009e64f]                           dc.b $00
[0009e650]                           dc.b $00
[0009e651]                           dc.b $00
[0009e652]                           dc.b $00
[0009e653]                           dc.b $00
[0009e654]                           dc.b $00
[0009e655]                           dc.b $00
[0009e656]                           dc.w $8000
[0009e658]                           dc.b $00
[0009e659]                           dc.b $00
[0009e65a]                           dc.b $00
[0009e65b]                           dc.b $00
[0009e65c]                           dc.b $00
[0009e65d]                           dc.b $09
[0009e65e]                           dc.b $00
[0009e65f]                           dc.b $00
[0009e660]                           dc.b $00
[0009e661]                           dc.b $00
[0009e662]                           dc.b $00
[0009e663]                           dc.b $00
[0009e664]                           dc.b $00
[0009e665]                           dc.b $00
_98_REF_TYPE:
[0009e666]                           dc.b $00
[0009e667]                           dc.b $64
[0009e668]                           dc.w $ffff
[0009e66a]                           dc.w $ffff
[0009e66c]                           dc.b $00
[0009e66d]                           dc.b $18
[0009e66e]                           dc.b $00
[0009e66f]                           dc.b $41
[0009e670]                           dc.b $00
[0009e671]                           dc.b $00
[0009e672] 0009d91a                  dc.l A_3DBUTTON25
[0009e676]                           dc.b $00
[0009e677]                           dc.b $00
[0009e678]                           dc.b $00
[0009e679]                           dc.b $05
[0009e67a]                           dc.b $00
[0009e67b]                           dc.b $0c
[0009e67c]                           dc.b $00
[0009e67d]                           dc.b $01
_98aREF_TYPE:
[0009e67e]                           dc.b $00
[0009e67f]                           dc.b $00
[0009e680]                           dc.b $00
[0009e681]                           dc.b $00
[0009e682]                           dc.b $00
[0009e683]                           dc.b $00
[0009e684]                           dc.b $00
[0009e685]                           dc.b $00
[0009e686]                           dc.w $8000
[0009e688]                           dc.b $00
[0009e689]                           dc.b $00
[0009e68a]                           dc.b $00
[0009e68b]                           dc.b $00
[0009e68c]                           dc.b $00
[0009e68d]                           dc.b $0a
[0009e68e]                           dc.b $00
[0009e68f]                           dc.b $00
[0009e690]                           dc.b $00
[0009e691]                           dc.b $00
[0009e692]                           dc.b $00
[0009e693]                           dc.b $00
[0009e694]                           dc.b $00
[0009e695]                           dc.b $00
_100_REF_TYPE:
[0009e696]                           dc.b $00
[0009e697]                           dc.b $66
[0009e698]                           dc.w $ffff
[0009e69a]                           dc.w $ffff
[0009e69c]                           dc.b $00
[0009e69d]                           dc.b $18
[0009e69e]                           dc.b $00
[0009e69f]                           dc.b $41
[0009e6a0]                           dc.b $00
[0009e6a1]                           dc.b $00
[0009e6a2] 0009d85a                  dc.l A_3DBUTTON19
[0009e6a6]                           dc.b $00
[0009e6a7]                           dc.b $00
[0009e6a8]                           dc.b $00
[0009e6a9]                           dc.b $06
[0009e6aa]                           dc.b $00
[0009e6ab]                           dc.b $0c
[0009e6ac]                           dc.b $00
[0009e6ad]                           dc.b $01
_100aREF_TYPE:
[0009e6ae]                           dc.b $00
[0009e6af]                           dc.b $00
[0009e6b0]                           dc.b $00
[0009e6b1]                           dc.b $00
[0009e6b2]                           dc.b $00
[0009e6b3]                           dc.b $00
[0009e6b4]                           dc.b $00
[0009e6b5]                           dc.b $00
[0009e6b6]                           dc.w $8000
[0009e6b8]                           dc.b $00
[0009e6b9]                           dc.b $00
[0009e6ba]                           dc.b $00
[0009e6bb]                           dc.b $00
[0009e6bc]                           dc.b $00
[0009e6bd]                           dc.b $0b
[0009e6be]                           dc.b $00
[0009e6bf]                           dc.b $00
[0009e6c0]                           dc.b $00
[0009e6c1]                           dc.b $00
[0009e6c2]                           dc.b $00
[0009e6c3]                           dc.b $00
[0009e6c4]                           dc.b $00
[0009e6c5]                           dc.b $00
_102_REF_TYPE:
[0009e6c6]                           dc.b $00
[0009e6c7]                           dc.b $68
[0009e6c8]                           dc.w $ffff
[0009e6ca]                           dc.w $ffff
[0009e6cc]                           dc.b $00
[0009e6cd]                           dc.b $18
[0009e6ce]                           dc.b $00
[0009e6cf]                           dc.b $41
[0009e6d0]                           dc.b $00
[0009e6d1]                           dc.b $00
[0009e6d2] 0009d87a                  dc.l A_3DBUTTON20
[0009e6d6]                           dc.b $00
[0009e6d7]                           dc.b $00
[0009e6d8]                           dc.b $00
[0009e6d9]                           dc.b $07
[0009e6da]                           dc.b $00
[0009e6db]                           dc.b $0c
[0009e6dc]                           dc.b $00
[0009e6dd]                           dc.b $01
_102aREF_TYPE:
[0009e6de]                           dc.b $00
[0009e6df]                           dc.b $00
[0009e6e0]                           dc.b $00
[0009e6e1]                           dc.b $00
[0009e6e2]                           dc.b $00
[0009e6e3]                           dc.b $00
[0009e6e4]                           dc.b $00
[0009e6e5]                           dc.b $00
[0009e6e6]                           dc.w $8000
[0009e6e8]                           dc.b $00
[0009e6e9]                           dc.b $00
[0009e6ea]                           dc.b $00
[0009e6eb]                           dc.b $00
[0009e6ec]                           dc.b $00
[0009e6ed]                           dc.b $0c
[0009e6ee]                           dc.b $00
[0009e6ef]                           dc.b $00
[0009e6f0]                           dc.b $00
[0009e6f1]                           dc.b $00
[0009e6f2]                           dc.b $00
[0009e6f3]                           dc.b $00
[0009e6f4]                           dc.b $00
[0009e6f5]                           dc.b $00
_104_REF_TYPE:
[0009e6f6]                           dc.b $00
[0009e6f7]                           dc.b $6a
[0009e6f8]                           dc.w $ffff
[0009e6fa]                           dc.w $ffff
[0009e6fc]                           dc.b $00
[0009e6fd]                           dc.b $18
[0009e6fe]                           dc.b $00
[0009e6ff]                           dc.b $41
[0009e700]                           dc.b $00
[0009e701]                           dc.b $00
[0009e702] 0009d89a                  dc.l A_3DBUTTON21
[0009e706]                           dc.b $00
[0009e707]                           dc.b $00
[0009e708]                           dc.b $00
[0009e709]                           dc.b $08
[0009e70a]                           dc.b $00
[0009e70b]                           dc.b $0c
[0009e70c]                           dc.b $00
[0009e70d]                           dc.b $01
_104aREF_TYPE:
[0009e70e]                           dc.b $00
[0009e70f]                           dc.b $00
[0009e710]                           dc.b $00
[0009e711]                           dc.b $00
[0009e712]                           dc.b $00
[0009e713]                           dc.b $00
[0009e714]                           dc.b $00
[0009e715]                           dc.b $00
[0009e716]                           dc.w $8000
[0009e718]                           dc.b $00
[0009e719]                           dc.b $00
[0009e71a]                           dc.b $00
[0009e71b]                           dc.b $00
[0009e71c]                           dc.b $00
[0009e71d]                           dc.b $0e
[0009e71e]                           dc.b $00
[0009e71f]                           dc.b $00
[0009e720]                           dc.b $00
[0009e721]                           dc.b $00
[0009e722]                           dc.b $00
[0009e723]                           dc.b $00
[0009e724]                           dc.b $00
[0009e725]                           dc.b $00
_106_REF_TYPE:
[0009e726]                           dc.b $00
[0009e727]                           dc.b $6c
[0009e728]                           dc.w $ffff
[0009e72a]                           dc.w $ffff
[0009e72c]                           dc.b $00
[0009e72d]                           dc.b $18
[0009e72e]                           dc.b $00
[0009e72f]                           dc.b $41
[0009e730]                           dc.b $00
[0009e731]                           dc.b $00
[0009e732] 0009d8ba                  dc.l A_3DBUTTON22
[0009e736]                           dc.b $00
[0009e737]                           dc.b $00
[0009e738]                           dc.b $00
[0009e739]                           dc.b $09
[0009e73a]                           dc.b $00
[0009e73b]                           dc.b $0c
[0009e73c]                           dc.b $00
[0009e73d]                           dc.b $01
_106aREF_TYPE:
[0009e73e]                           dc.b $00
[0009e73f]                           dc.b $00
[0009e740]                           dc.b $00
[0009e741]                           dc.b $00
[0009e742]                           dc.b $00
[0009e743]                           dc.b $00
[0009e744]                           dc.b $00
[0009e745]                           dc.b $00
[0009e746]                           dc.w $8000
[0009e748]                           dc.b $00
[0009e749]                           dc.b $00
[0009e74a]                           dc.b $00
[0009e74b]                           dc.b $00
[0009e74c]                           dc.b $00
[0009e74d]                           dc.b $14
[0009e74e]                           dc.b $00
[0009e74f]                           dc.b $00
[0009e750]                           dc.b $00
[0009e751]                           dc.b $00
[0009e752]                           dc.b $00
[0009e753]                           dc.b $00
[0009e754]                           dc.b $00
[0009e755]                           dc.b $00
_108_REF_TYPE:
[0009e756]                           dc.b $00
[0009e757]                           dc.b $6e
[0009e758]                           dc.w $ffff
[0009e75a]                           dc.w $ffff
[0009e75c]                           dc.b $00
[0009e75d]                           dc.b $18
[0009e75e]                           dc.b $00
[0009e75f]                           dc.b $41
[0009e760]                           dc.b $00
[0009e761]                           dc.b $00
[0009e762] 0009d8da                  dc.l A_3DBUTTON23
[0009e766]                           dc.b $00
[0009e767]                           dc.b $00
[0009e768]                           dc.b $00
[0009e769]                           dc.b $0a
[0009e76a]                           dc.b $00
[0009e76b]                           dc.b $0c
[0009e76c]                           dc.b $00
[0009e76d]                           dc.b $01
_108aREF_TYPE:
[0009e76e]                           dc.b $00
[0009e76f]                           dc.b $00
[0009e770]                           dc.b $00
[0009e771]                           dc.b $00
[0009e772]                           dc.b $00
[0009e773]                           dc.b $00
[0009e774]                           dc.b $00
[0009e775]                           dc.b $00
[0009e776]                           dc.w $8000
[0009e778]                           dc.b $00
[0009e779]                           dc.b $00
[0009e77a]                           dc.b $00
[0009e77b]                           dc.b $00
[0009e77c]                           dc.b $00
[0009e77d]                           dc.b $0f
[0009e77e]                           dc.b $00
[0009e77f]                           dc.b $00
[0009e780]                           dc.b $00
[0009e781]                           dc.b $00
[0009e782]                           dc.b $00
[0009e783]                           dc.b $00
[0009e784]                           dc.b $00
[0009e785]                           dc.b $00
_110_REF_TYPE:
[0009e786]                           dc.b $00
[0009e787]                           dc.b $70
[0009e788]                           dc.w $ffff
[0009e78a]                           dc.w $ffff
[0009e78c]                           dc.b $00
[0009e78d]                           dc.b $18
[0009e78e]                           dc.b $00
[0009e78f]                           dc.b $41
[0009e790]                           dc.b $00
[0009e791]                           dc.b $00
[0009e792] 0009d97a                  dc.l A_3DBUTTON28
[0009e796]                           dc.b $00
[0009e797]                           dc.b $00
[0009e798]                           dc.b $00
[0009e799]                           dc.b $0b
[0009e79a]                           dc.b $00
[0009e79b]                           dc.b $0c
[0009e79c]                           dc.b $00
[0009e79d]                           dc.b $01
_110aREF_TYPE:
[0009e79e]                           dc.b $00
[0009e79f]                           dc.b $00
[0009e7a0]                           dc.b $00
[0009e7a1]                           dc.b $00
[0009e7a2]                           dc.b $00
[0009e7a3]                           dc.b $00
[0009e7a4]                           dc.b $00
[0009e7a5]                           dc.b $00
[0009e7a6]                           dc.w $8000
[0009e7a8]                           dc.b $00
[0009e7a9]                           dc.b $00
[0009e7aa]                           dc.b $00
[0009e7ab]                           dc.b $00
[0009e7ac]                           dc.b $00
[0009e7ad]                           dc.b $10
[0009e7ae]                           dc.b $00
[0009e7af]                           dc.b $00
[0009e7b0]                           dc.b $00
[0009e7b1]                           dc.b $00
[0009e7b2]                           dc.b $00
[0009e7b3]                           dc.b $00
[0009e7b4]                           dc.b $00
[0009e7b5]                           dc.b $00
_112_REF_TYPE:
[0009e7b6]                           dc.b $00
[0009e7b7]                           dc.b $72
[0009e7b8]                           dc.w $ffff
[0009e7ba]                           dc.w $ffff
[0009e7bc]                           dc.b $00
[0009e7bd]                           dc.b $18
[0009e7be]                           dc.b $00
[0009e7bf]                           dc.b $41
[0009e7c0]                           dc.b $00
[0009e7c1]                           dc.b $00
[0009e7c2] 0009d8fa                  dc.l A_3DBUTTON24
[0009e7c6]                           dc.b $00
[0009e7c7]                           dc.b $00
[0009e7c8]                           dc.b $00
[0009e7c9]                           dc.b $0c
[0009e7ca]                           dc.b $00
[0009e7cb]                           dc.b $0c
[0009e7cc]                           dc.b $00
[0009e7cd]                           dc.b $01
_112aREF_TYPE:
[0009e7ce]                           dc.b $00
[0009e7cf]                           dc.b $00
[0009e7d0]                           dc.b $00
[0009e7d1]                           dc.b $00
[0009e7d2]                           dc.b $00
[0009e7d3]                           dc.b $00
[0009e7d4]                           dc.b $00
[0009e7d5]                           dc.b $00
[0009e7d6]                           dc.w $8000
[0009e7d8]                           dc.b $00
[0009e7d9]                           dc.b $00
[0009e7da]                           dc.b $00
[0009e7db]                           dc.b $00
[0009e7dc]                           dc.b $00
[0009e7dd]                           dc.b $11
[0009e7de]                           dc.b $00
[0009e7df]                           dc.b $00
[0009e7e0]                           dc.b $00
[0009e7e1]                           dc.b $00
[0009e7e2]                           dc.b $00
[0009e7e3]                           dc.b $00
[0009e7e4]                           dc.b $00
[0009e7e5]                           dc.b $00
_114_REF_TYPE:
[0009e7e6]                           dc.b $00
[0009e7e7]                           dc.b $74
[0009e7e8]                           dc.w $ffff
[0009e7ea]                           dc.w $ffff
[0009e7ec]                           dc.b $00
[0009e7ed]                           dc.b $18
[0009e7ee]                           dc.b $00
[0009e7ef]                           dc.b $41
[0009e7f0]                           dc.b $00
[0009e7f1]                           dc.b $00
[0009e7f2] 0009d93a                  dc.l A_3DBUTTON26
[0009e7f6]                           dc.b $00
[0009e7f7]                           dc.b $00
[0009e7f8]                           dc.b $00
[0009e7f9]                           dc.b $0d
[0009e7fa]                           dc.b $00
[0009e7fb]                           dc.b $0c
[0009e7fc]                           dc.b $00
[0009e7fd]                           dc.b $01
_114aREF_TYPE:
[0009e7fe]                           dc.b $00
[0009e7ff]                           dc.b $00
[0009e800]                           dc.b $00
[0009e801]                           dc.b $00
[0009e802]                           dc.b $00
[0009e803]                           dc.b $00
[0009e804]                           dc.b $00
[0009e805]                           dc.b $00
[0009e806]                           dc.w $8000
[0009e808]                           dc.b $00
[0009e809]                           dc.b $00
[0009e80a]                           dc.b $00
[0009e80b]                           dc.b $00
[0009e80c]                           dc.b $00
[0009e80d]                           dc.b $12
[0009e80e]                           dc.b $00
[0009e80f]                           dc.b $00
[0009e810]                           dc.b $00
[0009e811]                           dc.b $00
[0009e812]                           dc.b $00
[0009e813]                           dc.b $00
[0009e814]                           dc.b $00
[0009e815]                           dc.b $00
_116_REF_TYPE:
[0009e816]                           dc.b $00
[0009e817]                           dc.b $76
[0009e818]                           dc.w $ffff
[0009e81a]                           dc.w $ffff
[0009e81c]                           dc.b $00
[0009e81d]                           dc.b $18
[0009e81e]                           dc.b $00
[0009e81f]                           dc.b $41
[0009e820]                           dc.b $00
[0009e821]                           dc.b $00
[0009e822] 0009d95a                  dc.l A_3DBUTTON27
[0009e826]                           dc.b $00
[0009e827]                           dc.b $00
[0009e828]                           dc.b $00
[0009e829]                           dc.b $0e
[0009e82a]                           dc.b $00
[0009e82b]                           dc.b $0c
[0009e82c]                           dc.b $00
[0009e82d]                           dc.b $01
_116aREF_TYPE:
[0009e82e]                           dc.b $00
[0009e82f]                           dc.b $00
[0009e830]                           dc.b $00
[0009e831]                           dc.b $00
[0009e832]                           dc.b $00
[0009e833]                           dc.b $00
[0009e834]                           dc.b $00
[0009e835]                           dc.b $00
[0009e836]                           dc.w $8000
[0009e838]                           dc.b $00
[0009e839]                           dc.b $00
[0009e83a]                           dc.b $00
[0009e83b]                           dc.b $00
[0009e83c]                           dc.b $00
[0009e83d]                           dc.b $13
[0009e83e]                           dc.b $00
[0009e83f]                           dc.b $00
[0009e840]                           dc.b $00
[0009e841]                           dc.b $00
[0009e842]                           dc.b $00
[0009e843]                           dc.b $00
[0009e844]                           dc.b $00
[0009e845]                           dc.b $00
_118_REF_TYPE:
[0009e846]                           dc.b $00
[0009e847]                           dc.b $78
[0009e848]                           dc.w $ffff
[0009e84a]                           dc.w $ffff
[0009e84c]                           dc.b $00
[0009e84d]                           dc.b $18
[0009e84e]                           dc.b $00
[0009e84f]                           dc.b $41
[0009e850]                           dc.b $00
[0009e851]                           dc.b $00
[0009e852] 0009d83a                  dc.l A_3DBUTTON18
[0009e856]                           dc.b $00
[0009e857]                           dc.b $00
[0009e858]                           dc.b $00
[0009e859]                           dc.b $0f
[0009e85a]                           dc.b $00
[0009e85b]                           dc.b $0c
[0009e85c]                           dc.b $00
[0009e85d]                           dc.b $01
_118aREF_TYPE:
[0009e85e]                           dc.b $00
[0009e85f]                           dc.b $00
[0009e860]                           dc.b $00
[0009e861]                           dc.b $00
[0009e862]                           dc.b $00
[0009e863]                           dc.b $00
[0009e864]                           dc.b $00
[0009e865]                           dc.b $00
[0009e866]                           dc.w $8000
[0009e868]                           dc.b $00
[0009e869]                           dc.b $00
[0009e86a]                           dc.b $00
[0009e86b]                           dc.b $00
[0009e86c]                           dc.b $00
[0009e86d]                           dc.b $16
[0009e86e]                           dc.b $00
[0009e86f]                           dc.b $00
[0009e870]                           dc.b $00
[0009e871]                           dc.b $00
[0009e872]                           dc.b $00
[0009e873]                           dc.b $00
[0009e874]                           dc.b $00
[0009e875]                           dc.b $00
_120_REF_TYPE:
[0009e876]                           dc.b $00
[0009e877]                           dc.b $7a
[0009e878]                           dc.w $ffff
[0009e87a]                           dc.w $ffff
[0009e87c]                           dc.b $00
[0009e87d]                           dc.b $18
[0009e87e]                           dc.b $00
[0009e87f]                           dc.b $41
[0009e880]                           dc.b $00
[0009e881]                           dc.b $00
[0009e882] 0009d9ba                  dc.l A_3DBUTTON30
[0009e886]                           dc.b $00
[0009e887]                           dc.b $00
[0009e888]                           dc.b $00
[0009e889]                           dc.b $10
[0009e88a]                           dc.b $00
[0009e88b]                           dc.b $0c
[0009e88c]                           dc.b $00
[0009e88d]                           dc.b $01
_120aREF_TYPE:
[0009e88e]                           dc.b $00
[0009e88f]                           dc.b $00
[0009e890]                           dc.b $00
[0009e891]                           dc.b $00
[0009e892]                           dc.b $00
[0009e893]                           dc.b $00
[0009e894]                           dc.b $00
[0009e895]                           dc.b $00
[0009e896]                           dc.w $8000
[0009e898]                           dc.b $00
[0009e899]                           dc.b $00
[0009e89a]                           dc.b $00
[0009e89b]                           dc.b $00
[0009e89c]                           dc.b $00
[0009e89d]                           dc.b $17
[0009e89e]                           dc.b $00
[0009e89f]                           dc.b $00
[0009e8a0]                           dc.b $00
[0009e8a1]                           dc.b $00
[0009e8a2]                           dc.b $00
[0009e8a3]                           dc.b $00
[0009e8a4]                           dc.b $00
[0009e8a5]                           dc.b $00
_122_REF_TYPE:
[0009e8a6]                           dc.b $00
[0009e8a7]                           dc.b $57
[0009e8a8]                           dc.w $ffff
[0009e8aa]                           dc.w $ffff
[0009e8ac]                           dc.b $00
[0009e8ad]                           dc.b $18
[0009e8ae]                           dc.b $00
[0009e8af]                           dc.b $41
[0009e8b0]                           dc.b $00
[0009e8b1]                           dc.b $00
[0009e8b2] 0009d9da                  dc.l A_3DBUTTON31
[0009e8b6]                           dc.b $00
[0009e8b7]                           dc.b $00
[0009e8b8]                           dc.b $00
[0009e8b9]                           dc.b $11
[0009e8ba]                           dc.b $00
[0009e8bb]                           dc.b $0c
[0009e8bc]                           dc.b $00
[0009e8bd]                           dc.b $01
_122aREF_TYPE:
[0009e8be]                           dc.b $00
[0009e8bf]                           dc.b $00
[0009e8c0]                           dc.b $00
[0009e8c1]                           dc.b $00
[0009e8c2]                           dc.b $00
[0009e8c3]                           dc.b $00
[0009e8c4]                           dc.b $00
[0009e8c5]                           dc.b $00
[0009e8c6]                           dc.w $8020
[0009e8c8]                           dc.b $00
[0009e8c9]                           dc.b $00
[0009e8ca]                           dc.b $00
[0009e8cb]                           dc.b $00
[0009e8cc]                           dc.b $00
[0009e8cd]                           dc.b $18
[0009e8ce]                           dc.b $00
[0009e8cf]                           dc.b $00
[0009e8d0]                           dc.b $00
[0009e8d1]                           dc.b $00
[0009e8d2]                           dc.b $00
[0009e8d3]                           dc.b $00
[0009e8d4]                           dc.b $00
[0009e8d5]                           dc.b $00
EDIT_REF:
[0009e8d6]                           dc.w $ffff
[0009e8d8]                           dc.b $00
[0009e8d9]                           dc.b $01
[0009e8da]                           dc.b $00
[0009e8db]                           dc.b $0b
[0009e8dc]                           dc.b $00
[0009e8dd]                           dc.b $18
[0009e8de]                           dc.b $00
[0009e8df]                           dc.b $40
[0009e8e0]                           dc.b $00
[0009e8e1]                           dc.b $10
[0009e8e2] 0009d65a                  dc.l A_3DBUTTON03
[0009e8e6]                           dc.b $00
[0009e8e7]                           dc.b $00
[0009e8e8]                           dc.b $00
[0009e8e9]                           dc.b $00
[0009e8ea]                           dc.b $00
[0009e8eb]                           dc.b $26
[0009e8ec]                           dc.b $00
[0009e8ed]                           dc.b $06
_01_EDIT_REF:
[0009e8ee]                           dc.b $00
[0009e8ef]                           dc.b $03
[0009e8f0]                           dc.b $00
[0009e8f1]                           dc.b $02
[0009e8f2]                           dc.b $00
[0009e8f3]                           dc.b $02
[0009e8f4]                           dc.b $00
[0009e8f5]                           dc.b $1c
[0009e8f6]                           dc.b $00
[0009e8f7]                           dc.b $40
[0009e8f8]                           dc.b $00
[0009e8f9]                           dc.b $00
[0009e8fa] 0009d170                  dc.l TEXT_02
[0009e8fe]                           dc.b $00
[0009e8ff]                           dc.b $02
[0009e900]                           dc.b $00
[0009e901]                           dc.b $01
[0009e902]                           dc.b $00
[0009e903]                           dc.b $05
[0009e904]                           dc.b $00
[0009e905]                           dc.b $01
_02_EDIT_REF:
[0009e906]                           dc.b $00
[0009e907]                           dc.b $01
[0009e908]                           dc.w $ffff
[0009e90a]                           dc.w $ffff
[0009e90c]                           dc.b $00
[0009e90d]                           dc.b $18
[0009e90e]                           dc.b $00
[0009e90f]                           dc.b $40
[0009e910]                           dc.b $00
[0009e911]                           dc.b $00
[0009e912] 0009dbba                  dc.l A_ARROWS02
[0009e916]                           dc.b $00
[0009e917]                           dc.b $00
[0009e918]                           dc.b $00
[0009e919]                           dc.b $00
[0009e91a]                           dc.b $00
[0009e91b]                           dc.b $01
[0009e91c]                           dc.b $00
[0009e91d]                           dc.b $01
_03_EDIT_REF:
[0009e91e]                           dc.b $00
[0009e91f]                           dc.b $05
[0009e920]                           dc.w $ffff
[0009e922]                           dc.w $ffff
[0009e924]                           dc.b $00
[0009e925]                           dc.b $18
[0009e926]                           dc.b $00
[0009e927]                           dc.b $01
[0009e928]                           dc.b $00
[0009e929]                           dc.b $01
[0009e92a] 0009dbda                  dc.l A_CHECKBOX01
[0009e92e]                           dc.b $00
[0009e92f]                           dc.b $1a
[0009e930]                           dc.b $00
[0009e931]                           dc.b $01
[0009e932]                           dc.b $00
[0009e933]                           dc.b $09
[0009e934]                           dc.b $00
[0009e935]                           dc.b $01
_03aEDIT_REF:
[0009e936]                           dc.b $00
[0009e937]                           dc.b $00
[0009e938]                           dc.b $00
[0009e939]                           dc.b $00
[0009e93a]                           dc.b $00
[0009e93b]                           dc.b $00
[0009e93c]                           dc.b $00
[0009e93d]                           dc.b $00
[0009e93e]                           dc.w $8000
[0009e940]                           dc.w $8858
[0009e942]                           dc.b $00
[0009e943]                           dc.b $00
[0009e944]                           dc.b $00
[0009e945]                           dc.b $00
[0009e946]                           dc.b $00
[0009e947]                           dc.b $00
[0009e948]                           dc.b $00
[0009e949]                           dc.b $00
[0009e94a]                           dc.b $00
[0009e94b]                           dc.b $00
[0009e94c]                           dc.b $00
[0009e94d]                           dc.b $00
_05_EDIT_REF:
[0009e94e]                           dc.b $00
[0009e94f]                           dc.b $07
[0009e950]                           dc.w $ffff
[0009e952]                           dc.w $ffff
[0009e954]                           dc.b $00
[0009e955]                           dc.b $18
[0009e956]                           dc.b $00
[0009e957]                           dc.b $05
[0009e958]                           dc.b $00
[0009e959]                           dc.b $10
[0009e95a] 0009d63a                  dc.l A_3DBUTTON02
[0009e95e]                           dc.b $00
[0009e95f]                           dc.b $02
[0009e960]                           dc.b $00
[0009e961]                           dc.b $03
[0009e962]                           dc.b $00
[0009e963]                           dc.b $0a
[0009e964]                           dc.b $00
[0009e965]                           dc.b $02
_05aEDIT_REF:
[0009e966] 0001c0bc                  dc.l editref_edit
[0009e96a]                           dc.b $00
[0009e96b]                           dc.b $00
[0009e96c]                           dc.b $00
[0009e96d]                           dc.b $00
[0009e96e]                           dc.w $8000
[0009e970]                           dc.w $8845
[0009e972]                           dc.b $00
[0009e973]                           dc.b $00
[0009e974]                           dc.b $00
[0009e975]                           dc.b $00
[0009e976]                           dc.b $00
[0009e977]                           dc.b $00
[0009e978]                           dc.b $00
[0009e979]                           dc.b $00
[0009e97a]                           dc.b $00
[0009e97b]                           dc.b $00
[0009e97c]                           dc.b $00
[0009e97d]                           dc.b $00
_07_EDIT_REF:
[0009e97e]                           dc.b $00
[0009e97f]                           dc.b $09
[0009e980]                           dc.w $ffff
[0009e982]                           dc.w $ffff
[0009e984]                           dc.b $00
[0009e985]                           dc.b $18
[0009e986]                           dc.w $4007
[0009e988]                           dc.b $00
[0009e989]                           dc.b $10
[0009e98a] 0009d67a                  dc.l A_3DBUTTON04
[0009e98e]                           dc.b $00
[0009e98f]                           dc.b $0e
[0009e990]                           dc.b $00
[0009e991]                           dc.b $03
[0009e992]                           dc.b $00
[0009e993]                           dc.b $0a
[0009e994]                           dc.b $00
[0009e995]                           dc.b $02
_07aEDIT_REF:
[0009e996] 0001bb34                  dc.l editref_ok
[0009e99a]                           dc.b $00
[0009e99b]                           dc.b $00
[0009e99c]                           dc.b $00
[0009e99d]                           dc.b $00
[0009e99e]                           dc.w $8000
[0009e9a0]                           dc.w $884f
[0009e9a2]                           dc.b $00
[0009e9a3]                           dc.b $00
[0009e9a4]                           dc.b $00
[0009e9a5]                           dc.b $00
[0009e9a6]                           dc.b $00
[0009e9a7]                           dc.b $00
[0009e9a8]                           dc.b $00
[0009e9a9]                           dc.b $00
[0009e9aa]                           dc.b $00
[0009e9ab]                           dc.b $00
[0009e9ac]                           dc.b $00
[0009e9ad]                           dc.b $00
_09_EDIT_REF:
[0009e9ae]                           dc.b $00
[0009e9af]                           dc.b $0b
[0009e9b0]                           dc.w $ffff
[0009e9b2]                           dc.w $ffff
[0009e9b4]                           dc.b $00
[0009e9b5]                           dc.b $18
[0009e9b6]                           dc.w $4005
[0009e9b8]                           dc.b $00
[0009e9b9]                           dc.b $10
[0009e9ba] 0009d6da                  dc.l A_3DBUTTON07
[0009e9be]                           dc.b $00
[0009e9bf]                           dc.b $1a
[0009e9c0]                           dc.b $00
[0009e9c1]                           dc.b $03
[0009e9c2]                           dc.b $00
[0009e9c3]                           dc.b $0a
[0009e9c4]                           dc.b $00
[0009e9c5]                           dc.b $02
_09aEDIT_REF:
[0009e9c6] 0001bb22                  dc.l editref_abort
[0009e9ca]                           dc.b $00
[0009e9cb]                           dc.b $00
[0009e9cc]                           dc.b $00
[0009e9cd]                           dc.b $00
[0009e9ce]                           dc.w $8000
[0009e9d0]                           dc.w $8841
[0009e9d2]                           dc.b $00
[0009e9d3]                           dc.b $00
[0009e9d4]                           dc.b $00
[0009e9d5]                           dc.b $00
[0009e9d6]                           dc.b $00
[0009e9d7]                           dc.b $00
[0009e9d8]                           dc.b $00
[0009e9d9]                           dc.b $00
[0009e9da]                           dc.b $00
[0009e9db]                           dc.b $00
[0009e9dc]                           dc.b $00
[0009e9dd]                           dc.b $00
_11_EDIT_REF:
[0009e9de]                           dc.b $00
[0009e9df]                           dc.b $00
[0009e9e0]                           dc.b $00
[0009e9e1]                           dc.b $0d
[0009e9e2]                           dc.b $00
[0009e9e3]                           dc.b $0d
[0009e9e4]                           dc.b $00
[0009e9e5]                           dc.b $14
[0009e9e6]                           dc.b $00
[0009e9e7]                           dc.b $40
[0009e9e8]                           dc.b $00
[0009e9e9]                           dc.b $20
[0009e9ea]                           dc.b $00
[0009e9eb]                           dc.b $ff
[0009e9ec]                           dc.w $1101
[0009e9ee]                           dc.b $00
[0009e9ef]                           dc.b $08
[0009e9f0]                           dc.b $00
[0009e9f1]                           dc.b $01
[0009e9f2]                           dc.b $00
[0009e9f3]                           dc.b $0e
[0009e9f4]                           dc.b $00
[0009e9f5]                           dc.b $01
_11aEDIT_REF:
[0009e9f6] 0001bda8                  dc.l editref_choose
[0009e9fa]                           dc.b $00
[0009e9fb]                           dc.b $00
[0009e9fc]                           dc.b $00
[0009e9fd]                           dc.b $00
[0009e9fe]                           dc.w $8000
[0009ea00]                           dc.w $8854
[0009ea02]                           dc.b $00
[0009ea03]                           dc.b $00
[0009ea04]                           dc.b $00
[0009ea05]                           dc.b $00
[0009ea06]                           dc.b $00
[0009ea07]                           dc.b $00
[0009ea08]                           dc.b $00
[0009ea09]                           dc.b $00
[0009ea0a]                           dc.b $00
[0009ea0b]                           dc.b $00
[0009ea0c]                           dc.b $00
[0009ea0d]                           dc.b $00
_13_EDIT_REF:
[0009ea0e]                           dc.b $00
[0009ea0f]                           dc.b $0b
[0009ea10]                           dc.w $ffff
[0009ea12]                           dc.w $ffff
[0009ea14]                           dc.b $00
[0009ea15]                           dc.b $18
[0009ea16]                           dc.b $00
[0009ea17]                           dc.b $00
[0009ea18]                           dc.b $00
[0009ea19]                           dc.b $00
[0009ea1a] 0009d99a                  dc.l A_3DBUTTON29
[0009ea1e]                           dc.b $00
[0009ea1f]                           dc.b $00
[0009ea20]                           dc.b $00
[0009ea21]                           dc.b $00
[0009ea22]                           dc.b $00
[0009ea23]                           dc.b $0e
[0009ea24]                           dc.b $00
[0009ea25]                           dc.b $01
_13aEDIT_REF:
[0009ea26]                           dc.b $00
[0009ea27]                           dc.b $00
[0009ea28]                           dc.b $00
[0009ea29]                           dc.b $00
[0009ea2a]                           dc.b $00
[0009ea2b]                           dc.b $00
[0009ea2c]                           dc.b $00
[0009ea2d]                           dc.b $00
[0009ea2e]                           dc.w $8020
[0009ea30]                           dc.b $00
[0009ea31]                           dc.b $00
[0009ea32]                           dc.b $00
[0009ea33]                           dc.b $00
[0009ea34]                           dc.b $00
[0009ea35]                           dc.b $00
[0009ea36]                           dc.b $00
[0009ea37]                           dc.b $00
[0009ea38]                           dc.b $00
[0009ea39]                           dc.b $00
[0009ea3a]                           dc.b $00
[0009ea3b]                           dc.b $00
[0009ea3c]                           dc.b $00
[0009ea3d]                           dc.b $00
WI_REF:
[0009ea3e]                           dc.b $00
[0009ea3f]                           dc.b $00
[0009ea40]                           dc.b $00
[0009ea41]                           dc.b $00
[0009ea42] 0001bcfe                  dc.l rf_service
[0009ea46] 0001bc30                  dc.l rf_make
[0009ea4a] 0004f69e                  dc.l Awi_open
[0009ea4e] 0004e610                  dc.l Awi_init
[0009ea52] 0009e8d6                  dc.l EDIT_REF
[0009ea56]                           dc.b $00
[0009ea57]                           dc.b $00
[0009ea58]                           dc.b $00
[0009ea59]                           dc.b $00
[0009ea5a]                           dc.b $00
[0009ea5b]                           dc.b $00
[0009ea5c]                           dc.b $00
[0009ea5d]                           dc.b $00
[0009ea5e]                           dc.w $ffff
[0009ea60]                           dc.w $601f
[0009ea62]                           dc.b $00
[0009ea63]                           dc.b $00
[0009ea64]                           dc.b $00
[0009ea65]                           dc.b $00
[0009ea66]                           dc.b $00
[0009ea67]                           dc.b $63
[0009ea68]                           dc.b $00
[0009ea69]                           dc.b $63
[0009ea6a]                           dc.b $00
[0009ea6b]                           dc.b $00
[0009ea6c]                           dc.b $00
[0009ea6d]                           dc.b $00
[0009ea6e]                           dc.b $00
[0009ea6f]                           dc.b $00
[0009ea70]                           dc.b $00
[0009ea71]                           dc.b $00
[0009ea72]                           dc.b $00
[0009ea73]                           dc.b $00
[0009ea74]                           dc.b $00
[0009ea75]                           dc.b $00
[0009ea76]                           dc.b $00
[0009ea77]                           dc.b $00
[0009ea78]                           dc.b $00
[0009ea79]                           dc.b $00
[0009ea7a]                           dc.w $ffff
[0009ea7c]                           dc.w $ffff
[0009ea7e]                           dc.w $ffff
[0009ea80]                           dc.w $ffff
[0009ea82]                           dc.b $00
[0009ea83]                           dc.b $00
[0009ea84]                           dc.b $00
[0009ea85]                           dc.b $00
[0009ea86]                           dc.w $fcf8
[0009ea88] 0009d1b6                  dc.l TEXT_11
[0009ea8c] 0009d15c                  dc.l TEXT_002
[0009ea90]                           dc.w $2710
[0009ea92]                           dc.w $0100
[0009ea94]                           dc.b $00
[0009ea95]                           dc.b $00
[0009ea96]                           dc.w $ffff
[0009ea98] 0009dd10                  dc.l IC_REF
[0009ea9c]                           dc.b $00
[0009ea9d]                           dc.b $00
[0009ea9e]                           dc.b $00
[0009ea9f]                           dc.b $00
[0009eaa0] 0005ef2c                  dc.l Awi_keys
[0009eaa4] 0004b600                  dc.l Awi_obchange
[0009eaa8] 0004b8cc                  dc.l Awi_redraw
[0009eaac] 00050454                  dc.l Awi_topped
[0009eab0] 0005013e                  dc.l Awi_closed
[0009eab4] 00050496                  dc.l Awi_fulled
[0009eab8] 0004bcc8                  dc.l Awi_arrowed
[0009eabc] 0004beea                  dc.l Awi_hslid
[0009eac0] 0004bf56                  dc.l Awi_vslid
[0009eac4] 000506ca                  dc.l Awi_sized
[0009eac8] 000507bc                  dc.l Awi_moved
[0009eacc] 00050f9c                  dc.l Awi_iconify
[0009ead0] 0005117c                  dc.l Awi_uniconify
[0009ead4] 00052328                  dc.l Awi_gemscript
[0009ead8]                           dc.b $00
[0009ead9]                           dc.b $00
[0009eada]                           dc.b $00
[0009eadb]                           dc.b $00
[0009eadc]                           dc.b $00
[0009eadd]                           dc.b $00
[0009eade]                           dc.b $00
[0009eadf]                           dc.b $00
cross_type:
[0009eae0]                           dc.b $00
[0009eae1]                           dc.b $2c
[0009eae2]                           dc.b $00
[0009eae3]                           dc.b $30
[0009eae4]                           dc.b $00
[0009eae5]                           dc.b $32
[0009eae6]                           dc.b $00
[0009eae7]                           dc.b $52
[0009eae8]                           dc.b $00
[0009eae9]                           dc.b $54
[0009eaea]                           dc.b $00
[0009eaeb]                           dc.b $2c
[0009eaec]                           dc.b $00
[0009eaed]                           dc.b $58
[0009eaee]                           dc.b $00
[0009eaef]                           dc.b $5a
[0009eaf0]                           dc.b $00
[0009eaf1]                           dc.b $5e
[0009eaf2]                           dc.b $00
[0009eaf3]                           dc.b $60
[0009eaf4]                           dc.b $00
[0009eaf5]                           dc.b $62
[0009eaf6]                           dc.b $00
[0009eaf7]                           dc.b $64
[0009eaf8]                           dc.b $00
[0009eaf9]                           dc.b $66
[0009eafa]                           dc.b $00
[0009eafb]                           dc.b $2c
[0009eafc]                           dc.b $00
[0009eafd]                           dc.b $68
[0009eafe]                           dc.b $00
[0009eaff]                           dc.b $6c
[0009eb00]                           dc.b $00
[0009eb01]                           dc.b $6e
[0009eb02]                           dc.b $00
[0009eb03]                           dc.b $70
[0009eb04]                           dc.b $00
[0009eb05]                           dc.b $72
[0009eb06]                           dc.b $00
[0009eb07]                           dc.b $74
[0009eb08]                           dc.b $00
[0009eb09]                           dc.b $6a
[0009eb0a]                           dc.b $00
[0009eb0b]                           dc.b $5c
[0009eb0c]                           dc.b $00
[0009eb0d]                           dc.b $76
[0009eb0e]                           dc.b $00
[0009eb0f]                           dc.b $78
[0009eb10]                           dc.b $00
[0009eb11]                           dc.b $7a
[0009eb12]                           dc.b $00
[0009eb13]                           dc.b $36
[0009eb14]                           dc.b $00
[0009eb15]                           dc.b $38
[0009eb16]                           dc.b $00
[0009eb17]                           dc.b $3a
[0009eb18]                           dc.b $00
[0009eb19]                           dc.b $3c
[0009eb1a]                           dc.b $00
[0009eb1b]                           dc.b $3e
[0009eb1c]                           dc.b $00
[0009eb1d]                           dc.b $40
[0009eb1e]                           dc.b $00
[0009eb1f]                           dc.b $42
[0009eb20]                           dc.b $00
[0009eb21]                           dc.b $44
[0009eb22]                           dc.b $00
[0009eb23]                           dc.b $46
[0009eb24]                           dc.b $00
[0009eb25]                           dc.b $48
[0009eb26]                           dc.b $00
[0009eb27]                           dc.b $4a
[0009eb28]                           dc.b $00
[0009eb29]                           dc.b $4c
[0009eb2a]                           dc.b $00
[0009eb2b]                           dc.b $4e
cross_type_anz:
[0009eb2c]                           dc.b $00
[0009eb2d]                           dc.b $26
p_type:
[0009eb2e] 0009ec56                  dc.l $0009ec56 ; no symbol found
[0009eb32] 0009ec91                  dc.l $0009ec91 ; no symbol found
[0009eb36] 0009ecc3                  dc.l $0009ecc3 ; no symbol found
[0009eb3a] 0009ecf4                  dc.l $0009ecf4 ; no symbol found
[0009eb3e] 0009ed74                  dc.l $0009ed74 ; no symbol found
[0009eb42] 0009ec56                  dc.l $0009ec56 ; no symbol found
[0009eb46] 0009edf5                  dc.l $0009edf5 ; no symbol found
[0009eb4a] 0009ee52                  dc.l $0009ee52 ; no symbol found
[0009eb4e] 0009eee3                  dc.l $0009eee3 ; no symbol found
[0009eb52] 0009ef40                  dc.l $0009ef40 ; no symbol found
[0009eb56] 0009efcb                  dc.l $0009efcb ; no symbol found
[0009eb5a] 0009f02e                  dc.l $0009f02e ; no symbol found
[0009eb5e] 0009f089                  dc.l $0009f089 ; no symbol found
[0009eb62] 0009ec56                  dc.l $0009ec56 ; no symbol found
[0009eb66] 0009f0d4                  dc.l $0009f0d4 ; no symbol found
[0009eb6a] 0009f11f                  dc.l $0009f11f ; no symbol found
[0009eb6e] 0009f23c                  dc.l $0009f23c ; no symbol found
[0009eb72] 0009f295                  dc.l $0009f295 ; no symbol found
[0009eb76] 0009f2ee                  dc.l $0009f2ee ; no symbol found
[0009eb7a] 0009f349                  dc.l $0009f349 ; no symbol found
[0009eb7e] 0009f3a4                  dc.l $0009f3a4 ; no symbol found
[0009eb82] 0009f3ee                  dc.l $0009f3ee ; no symbol found
[0009eb86] 0009f567                  dc.l $0009f567 ; no symbol found
[0009eb8a] 0009f5d8                  dc.l $0009f5d8 ; no symbol found
[0009eb8e] 0009f68b                  dc.l $0009f68b ; no symbol found
[0009eb92] 0009f6cf                  dc.l $0009f6cf ; no symbol found
[0009eb96] 0009f705                  dc.l $0009f705 ; no symbol found
[0009eb9a] 0009f737                  dc.l $0009f737 ; no symbol found
[0009eb9e] 0009f769                  dc.l $0009f769 ; no symbol found
[0009eba2] 0009f7bf                  dc.l $0009f7bf ; no symbol found
[0009eba6] 0009f814                  dc.l $0009f814 ; no symbol found
[0009ebaa] 0009f846                  dc.l $0009f846 ; no symbol found
[0009ebae] 0009f891                  dc.l $0009f891 ; no symbol found
[0009ebb2] 0009f8e2                  dc.l $0009f8e2 ; no symbol found
[0009ebb6] 0009f913                  dc.l $0009f913 ; no symbol found
[0009ebba] 0009f965                  dc.l $0009f965 ; no symbol found
c_type:
[0009ebbe] 0009fa02                  dc.l $0009fa02 ; no symbol found
[0009ebc2] 0009fa3b                  dc.l $0009fa3b ; no symbol found
[0009ebc6] 0009fa6b                  dc.l $0009fa6b ; no symbol found
[0009ebca] 0009fa9a                  dc.l $0009fa9a ; no symbol found
[0009ebce] 0009faf8                  dc.l $0009faf8 ; no symbol found
[0009ebd2] 0009fb64                  dc.l $0009fb64 ; no symbol found
[0009ebd6] 0009fb9d                  dc.l $0009fb9d ; no symbol found
[0009ebda] 0009fbe7                  dc.l $0009fbe7 ; no symbol found
[0009ebde] 0009fc7e                  dc.l $0009fc7e ; no symbol found
[0009ebe2] 0009fcc9                  dc.l $0009fcc9 ; no symbol found
[0009ebe6] 0009fd44                  dc.l $0009fd44 ; no symbol found
[0009ebea] 0009fda0                  dc.l $0009fda0 ; no symbol found
[0009ebee] 0009fdee                  dc.l $0009fdee ; no symbol found
[0009ebf2] 0009fa02                  dc.l $0009fa02 ; no symbol found
[0009ebf6] 0009fe2f                  dc.l $0009fe2f ; no symbol found
[0009ebfa] 0009fe70                  dc.l $0009fe70 ; no symbol found
[0009ebfe] 0009ffe3                  dc.l $0009ffe3 ; no symbol found
[0009ec02] 000a002f                  dc.l $000a002f ; no symbol found
[0009ec06] 000a007b                  dc.l $000a007b ; no symbol found
[0009ec0a] 000a00c8                  dc.l $000a00c8 ; no symbol found
[0009ec0e] 000a0115                  dc.l $000a0115 ; no symbol found
[0009ec12] 000a0156                  dc.l $000a0156 ; no symbol found
[0009ec16] 000a0245                  dc.l $000a0245 ; no symbol found
[0009ec1a] 000a02b2                  dc.l $000a02b2 ; no symbol found
[0009ec1e] 000a0313                  dc.l $000a0313 ; no symbol found
[0009ec22] 000a03b4                  dc.l $000a03b4 ; no symbol found
[0009ec26] 000a03b4                  dc.l $000a03b4 ; no symbol found
[0009ec2a] 000a03f8                  dc.l $000a03f8 ; no symbol found
[0009ec2e] 000a0433                  dc.l $000a0433 ; no symbol found
[0009ec32] 000a046a                  dc.l $000a046a ; no symbol found
[0009ec36] 000a04a1                  dc.l $000a04a1 ; no symbol found
[0009ec3a] 000a04e4                  dc.l $000a04e4 ; no symbol found
[0009ec3e] 000a0526                  dc.l $000a0526 ; no symbol found
[0009ec42] 000a055d                  dc.l $000a055d ; no symbol found
[0009ec46] 000a05a6                  dc.l $000a05a6 ; no symbol found
[0009ec4a] 000a05f6                  dc.l $000a05f6 ; no symbol found
[0009ec4e] 000a062c                  dc.l $000a062c ; no symbol found
[0009ec52] 000a067c                  dc.l $000a067c ; no symbol found
[0009ec56]                           dc.b 'Procedure %s;',$0d,$0a,'{ Unkown type of routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009ec91]                           dc.b 'Procedure %s;',$0d,$0a,'{ Click routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009ecc3]                           dc.b 'Procedure %s;',$0d,$0a,'{ Drag routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009ecf4]                           dc.b 'Function %s (dummy1, dummy2: Pointer; pb: PARMBLKPtr): Integer;',$0d,$0a,'{ USERDEF routine }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := pb^.pb_currstate;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009ed74]                           dc.b 'Function %s (entry: ACSOBJECTPtr; task: Integer; in_out: Pointer): Boolean;',$0d,$0a,'{ USERDEF service }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := FALSE;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009edf5]                           dc.b 'Function %s (wind: AwindowPtr): Integer;',$0d,$0a,'{ wind.open routine }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := OK;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009ee52]                           dc.b 'Function %s (para: Pointer): AwindowPtr;',$0d,$0a,'{ wind.create routine }',$0d,$0a,$09,'Var wi: AwindowPtr;',$0d,$0a,'Begin',$0d,$0a,$0d,$0a,$09,'wi := Awi_create (@..);',$0d,$0a,$09,'%s := wi;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009eee3]                           dc.b 'Function %s (wind: AwindowPtr): Integer;',$0d,$0a,'{ wind.init routine }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := OK;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009ef40]                           dc.b 'Function %s (wind: AwindowPtr; kstate, key: Integer): Integer;',$0d,$0a,'{ wind.keys routine }',$0d,$0a,'Begin',$0d,$0a,$09,'%s := Awi_keys (wi, kstate, key);',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009efcb]                           dc.b 'Procedure %s (wind: AwindowPtr; obnr, state: Integer);',$0d,$0a,'{ wind.obchange routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f02e]                           dc.b 'Procedure %s (wind: AwindowPtr; area: AxywhPtr);',$0d,$0a,'{ wind.redraw routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f089]                           dc.b 'Procedure %s (wind: AwindowPtr);',$0d,$0a,'{ wind.topped routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f0d4]                           dc.b 'Procedure %s (wind: AwindowPtr);',$0d,$0a,'{ wind.closed routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f11f]                           dc.b 'Procedure %s (wind: AwindowPtr; which, amount: Integer);',$0d,$0a,'{ wind.arrowed routine }',$0d,$0a,'Begin',$0d,$0a,$09,'Case (which) of',$0d,$0a,$09,'WA_UPLINE:',$0d,$0a,$09,'{ };',$0d,$0a,$09,'WA_DNLINE:',$0d,$0a,$09,'{ };',$0d,$0a,$09,'WA_UPPAGE:',$0d,$0a,$09,'{ };',$0d,$0a,$09,'WA_DNPAGE:',$0d,$0a,$09,'{ };',$0d,$0a,$09,'WA_LFPAGE:',$0d,$0a,$09,'{ };',$0d,$0a,$09,'WA_RTPAGE:',$0d,$0a,$09,'{ };',$0d,$0a,$09,'WA_LFLINE:',$0d,$0a,$09,'{ };',$0d,$0a,$09,'WA_RTLINE:',$0d,$0a,$09,'{ };',$0d,$0a,$09,'End;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f23c]                           dc.b 'Procedure %s( wind: AwindowPtr; pos: Integer );',$0d,$0a,'{ wind.hslid routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f295]                           dc.b 'Procedure %s( wind: AwindowPtr; pos: Integer );',$0d,$0a,'{ wind.vslid routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f2ee]                           dc.b 'Procedure %s( wind: AwindowPtr; area: AxywhPtr );',$0d,$0a,'{ wind.moved routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f349]                           dc.b 'Procedure %s( wind: AwindowPtr; area: AxywhPtr );',$0d,$0a,'{ wind.sized routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f3a4]                           dc.b 'Procedure %s( wind: AwindowPtr );',$0d,$0a,'{ wi.fulled routine }',$0d,$0a,'Begin',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f3ee]                           dc.b 'Function %s( wind: AwindowPtr; task: Integer; in_out: Pointer): Boolean;',$0d,$0a,'{ wi.service routine }',$0d,$0a,'Begin',$0d,$0a,$09,'case (task) of ',$0d,$0a,$09,'AS_TERM:',$0d,$0a,$09,$09,'Awi_delete (wind);',$0d,$0a,$09,'Else Begin',$0d,$0a,$09,$09,'%s := Awi_service(wind, task, in_out);',$0d,$0a,$09,$09,'Exit;',$0d,$0a,$09,'End;',$0d,$0a,$09,'%s := TRUE;',$0d,$0a,'End;',$0d,$0a,$0d,$0a,'{ Window-Iconify-Routine }',$0d,$0a,'Function %s( wi: AwindowPtr; all: Integer ) : Integer;',$0d,$0a,'Begin',$0d,$0a,$09,'%s:=Awi_iconify(wi, all);',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f567]                           dc.b '{ Window-Uniconify-Routine }',$0d,$0a,'Function %s( wi: AwindowPtr ) : Integer;',$0d,$0a,'Begin',$0d,$0a,$09,'%s:=Awi_uniconify(wi);',$0d,$0a,'End;',$0d,$0a,$0d,$0a,0
[0009f5d8]                           dc.b '{ Window-GEMScript-Routine }',$0d,$0a,'Function %s( wi: AwindowPtr; anz: Integer; cmd: Pointer; antwort: A_GSAntwortPtr ) : Integer',$0d,$0a,'{',$0d,$0a,$09,'return Awi_gemscript(wi, anz, cmd, antwort);',$0d,$0a,'}',$0d,$0a,$0d,$0a,'{ System-Init-Routine }',$0d,$0a,'Function %s : Integer;',$0d,$0a,'{',$0d,$0a,$09,'%s:=OK;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f6cf]                           dc.b '{ System-Terminier-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f705]                           dc.b '{ System-About-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f737]                           dc.b '{ System-Close-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f769]                           dc.b '{ System-Message-Routine }',$0d,$0a,'Procedure %s( message: array [0..7] of Integer;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f7bf]                           dc.b '{ System-Message-Filter }',$0d,$0a,'Procedure %s( message: array [0..7] of Integer;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f814]                           dc.b '{ System-Timer-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f846]                           dc.b '{ System-Key-Filter }',$0d,$0a,'Procedure %s( Var kstate, key: Integer );',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f891]                           dc.b '{ System-Button-Filter }',$0d,$0a,'Procedure %s( Var button, kreturn: Integer )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f8e2]                           dc.b '{ System-Maus-Routine }',$0d,$0a,'Procedure %s;',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f913]                           dc.b '{ System-Window-Key-Filter }',$0d,$0a,'Procedure %s( Var kstate, key: Integer );',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009f965]                           dc.b '{ System-GEMScript-Routine }',$0d,$0a,'Function %s( anz: Integer; cmd: Pointer; antwort: A_GSAntwortPtr ) : Integer;',$0d,$0a,'{',$0d,$0a,$09,'%s:=ACSGEMScript(anz, cmd, antwort);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fa02]                           dc.b $09,'/* Unkown type of routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fa3b]                           dc.b $09,'/* Click routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fa6b]                           dc.b $09,'/* Drag routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fa9a]                           dc.b $09,'/* USERDEF Draw-Routine */',$0d,$0a,'INT16 CDECL %s( PARMBLK *pb )',$0d,$0a,'{',$09,'return pb->pb_currstate;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009faf8]                           dc.b $09,'/* USERDEF Service-Routine */',$0d,$0a,'INT16 %s( OBJECT *entry, INT16 task, void *in_out )',$0d,$0a,'{',$09,'return FALSE;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fb64]                           dc.b $09,'/* Unkown type of routine */void %s( void )',$0d,$0a,$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fb9d]                           dc.b $09,'/* Window-Open-Routine*/',$0d,$0a,'INT16 %s( Awindow *wind )',$0d,$0a,'{',$09,'return OK;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fbe7]                           dc.b $09,'/* Window-Create-Routine */',$0d,$0a,'Awindow *%s( void *para )',$0d,$0a,'{',$09,'Awindow',$09,'*wi;',$0d,$0a,$0d,$0a,$09,'wi=Awi_create(&..);',$0d,$0a,'if( wi== NULL )',$0d,$0a,$09,$09,'return NULL;',$0d,$0a,$0d,$0a,$09,'return wi;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fc7e]                           dc.b $09,'/* Window-Init-Routine */',$0d,$0a,'INT16 %s( Awindow *wind )',$0d,$0a,'{',$09,'return OK;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fcc9]                           dc.b $09,'/* Window-Keys-Routine */',$0d,$0a,'INT16 %s( Awindow *wind, INT16 kstate, INT16 key )',$0d,$0a,'{',$09,'return Awi_keys(wi, kstate, key);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fd44]                           dc.b $09,'/* Window-Obchange-Routine */',$0d,$0a,'void %s( Awindow *wind, INT16 obnr, INT16 state )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fda0]                           dc.b $09,'/* Window-Redraw-Routine */',$0d,$0a,'void %s( Awindow *wind, Axywh *area )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fdee]                           dc.b $09,'/* Window-Topped-Routine */',$0d,$0a,'void %s( Awindow *wind )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fe2f]                           dc.b $09,'/* Window-Closed-Routine */',$0d,$0a,'void %s( Awindow *wind )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009fe70]                           dc.b $09,'/* Window-Arrowed-Routine */',$0d,$0a,'void %s( Awindow *wind, INT16 which, INT16 amount )',$0d,$0a,'{',$0d,$0a,$09,'switch(which)',$0d,$0a,$09,'{',$0d,$0a,$09,$09,'case WA_UPLINE:',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$0d,$0a,$09,$09,'case WA_DNLINE:',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$0d,$0a,$09,$09,'case WA_UPPAGE:',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$0d,$0a,$09,$09,'case WA_DNPAGE:',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$0d,$0a,$09,$09,'case WA_LFPAGE:',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$0d,$0a,$09,$09,'case WA_RTPAGE:',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$0d,$0a,$09,$09,'case WA_LFLINE:',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$0d,$0a,$09,$09,'case WA_RTLINE:',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$09,'}',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[0009ffe3]                           dc.b $09,'/* Window-HSlide-Routine */',$0d,$0a,'void %s( Awindow *wind, INT16 pos )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a002f]                           dc.b $09,'/* Window-VSlide-Routine */',$0d,$0a,'void %s( Awindow *wind, INT16 pos )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a007b]                           dc.b $09,'/* Window-Moved-Routine */',$0d,$0a,'void %s( Awindow *wind, Axywh *area )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a00c8]                           dc.b $09,'/* Window-Sized-Routine */',$0d,$0a,'void %s( Awindow *wind, Axywh *area )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a0115]                           dc.b $09,'/* Window-Fulled-Routine */',$0d,$0a,'void %s( Awindow *wind )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a0156]                           dc.b $09,'/* Window-Service-Routine */',$0d,$0a,'INT16 %s( Awindow *wind, INT16 task, void *in_out )',$0d,$0a,'{',$0d,$0a,$09,'switch(task)',$0d,$0a,$09,'{',$0d,$0a,$09,$09,'case AS_TERM:',$0d,$0a,$09,$09,$09,'Awi_delete(wind);',$0d,$0a,$09,$09,$09,'break;',$0d,$0a,$0d,$0a,$09,$09,'default:',$0d,$0a,$09,$09,$09,'return Awi_service(wind, task, in_out);',$0d,$0a,$09,'}',$0d,$0a,$09,'return TRUE;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a0245]                           dc.b $09,'/* Window-Iconify-Routine */',$0d,$0a,'INT16 %s( Awindow *wind, INT16 all )',$0d,$0a,'{',$0d,$0a,$09,'return Awi_iconify(wi, all);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a02b2]                           dc.b $09,'/* Window-Uniconify-Routine */',$0d,$0a,'INT16 %s( Awindow *wind )',$0d,$0a,'{',$0d,$0a,$09,'return Awi_uniconify(wi);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a0313]                           dc.b $09,'/* Window-GEMScript-Routine */',$0d,$0a,'INT16 %s( Awindow *wind, INT16 anz, char **cmd, A_GSAntwort *antwort )',$0d,$0a,'{',$0d,$0a,$09,'return Awi_gemscript(wi, anz, cmd, antwort);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a03b4]                           dc.b $09,'/* System-Init-Routine */',$0d,$0a,'INT16 %s( void )',$0d,$0a,'{',$0d,$0a,$09,'return OK;',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a03f8]                           dc.b $09,'/* System-Terminier-Routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a0433]                           dc.b $09,'/* System-About-Routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a046a]                           dc.b $09,'/* System-Close-Routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a04a1]                           dc.b $09,'/* System-Message-Routine */',$0d,$0a,'void %s( INT16 *message )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a04e4]                           dc.b $09,'/* System-Message-Filter */',$0d,$0a,'void %s( INT16 *message )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a0526]                           dc.b $09,'/* System-Timer-Routine */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a055d]                           dc.b $09,'/* System-Key-Filter */',$0d,$0a,'void %s( INT16 *kstate, INT16 *key )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a05a6]                           dc.b $09,'/* System-Button-Filter */',$0d,$0a,'void %s( INT16 *button, INT16 *kreturn )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a05f6]                           dc.b $09,'/* System-Mouse-Filter */',$0d,$0a,'void %s( void )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a062c]                           dc.b $09,'/* System-Window-Key-Filter */',$0d,$0a,'void %s( INT16 *kstate, INT16 *key )',$0d,$0a,'{',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a067c]                           dc.b $09,'/* System-GEMScript-Routine */',$0d,$0a,'INT16 %s( INT16 anz, char **cmd, A_GSAntwort *antwort )',$0d,$0a,'{',$0d,$0a,$09,'return ACSGEMScript(anz, cmd, antwort);',$0d,$0a,'}',$0d,$0a,$0d,$0a,0
[000a0709]                           dc.b $20
[000a070a]                           dc.b $00
[000a070b]                           dc.b ' (REF) ',0
[000a0713]                           dc.b ' * ',0
[000a0717]                           dc.b $43
[000a0718]                           dc.b $00
[000a0719]                           dc.b 'static ',0
	.even
